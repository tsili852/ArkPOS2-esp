#include <string.h>
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "freertos/event_groups.h"

#include "esp_log.h"
#include "esp_event_loop.h"
#include "esp_system.h"
#include "esp_sleep.h"
#include "esp_wifi.h"
#include "esp_blufi_api.h"
#include "esp_bt_defs.h"
#include "esp_gap_ble_api.h"
#include "esp_bt_main.h"
#include "esp_bt_device.h"
#include "esp32/ulp.h"

#include "soc/rtc_cntl_reg.h"
#include "soc/sens_reg.h"
#include "soc/rtc.h"

#include "nvs_flash.h"
#include "nvs.h"

#include "bt.h"

#include "driver/gpio.h"
#include "driver/touch_pad.h"
#include "driver/adc.h"
#include "driver/rtc_io.h"

#include "wifi_sta.h"
#include "iap_https.h"
#include "main.h"
#include "blufi_example.h"

#define TAG "main"
#define LED_GPIO_T1 22
#define LED_GPIO_T2 23
#define LED_GPIO_T3 26
#define LED_GPIO_T4 21

#define TOUCH_1 0 
#define TOUCH_2 3
#define TOUCH_3 5
#define TOUCH_4 7

#define BLUFI_DEVICE_NAME "ESP_ARKPOS"
#define WIFI_LIST_NUM 10

static const char *server_root_ca_public_key_pem = OTA_SERVER_ROOT_CA_PEM;
static const char *peer_public_key_pem = OTA_PEER_PEM;

static RTC_DATA_ATTR struct timeval sleep_enter_time;

static wifi_sta_init_struct_t wifi_params;

// Static because the scope of this object is the usage of the iap_https module.
static iap_https_config_t ota_config;

static uint8_t example_service_uuid128[32] = {
    /* LSB <--------------------------------------------------------------------------------> MSB */
    //first uuid, 16bit, [12],[13] is the value
    0xfb, 0x34, 0x9b, 0x5f, 0x80, 0x00, 0x00, 0x80, 0x00, 0x10, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
};

//static uint8_t test_manufacturer[TEST_MANUFACTURER_DATA_LEN] =  {0x12, 0x23, 0x45, 0x56};
static esp_ble_adv_data_t example_adv_data = {
    .set_scan_rsp = false,
    .include_name = true,
    .include_txpower = true,
    .min_interval = 0x100,
    .max_interval = 0x100,
    .appearance = 0x00,
    .manufacturer_len = 0,
    .p_manufacturer_data =  NULL,
    .service_data_len = 0,
    .p_service_data = NULL,
    .service_uuid_len = 16,
    .p_service_uuid = example_service_uuid128,
    .flag = 0x6,
};

static esp_ble_adv_params_t example_adv_params = {
    .adv_int_min        = 0x100,
    .adv_int_max        = 0x100,
    .adv_type           = ADV_TYPE_IND,
    .own_addr_type      = BLE_ADDR_TYPE_PUBLIC,
    //.peer_addr            =
    //.peer_addr_type       =
    .channel_map        = ADV_CHNL_ALL,
    .adv_filter_policy = ADV_FILTER_ALLOW_SCAN_ANY_CON_ANY,
};

static wifi_config_t sta_config;
static wifi_config_t ap_config;

/* FreeRTOS event group to signal when we are connected & ready to make a request */
static EventGroupHandle_t wifi_event_group;

/* The event group allows multiple bits for each event,
   but we only care about one event - are we connected
   to the AP with an IP? */
const int CONNECTED_BIT = BIT0;

/* store the station info for send back to phone */
static bool gl_sta_connected = false;
static uint8_t gl_sta_bssid[6];
static uint8_t gl_sta_ssid[32];
static int gl_sta_ssid_len;

/* connect infor*/
static uint8_t server_if;
static uint16_t conn_id;

static void init_wifi();
static void init_led();
static void check_for_updates();
static void touch_pad_events();
static void calibrate_touch_pads();
static void read_thresh_from_nvs();
static void evaluate_touched_pads(int touch_counter);
static void init_ota();
static void ble_process();
static esp_err_t app_event_handler(void *ctx, system_event_t *event);
static void example_event_callback(esp_blufi_cb_event_t event, esp_blufi_cb_param_t *param);

//Blufi routines
static void initialise_wifi();

int32_t touch1_thresh;
int32_t touch2_thresh;
int32_t touch3_thresh;
int32_t touch4_thresh;
nvs_handle my_handle;

static void example_gap_event_handler(esp_gap_ble_cb_event_t event, esp_ble_gap_cb_param_t *param)
{
    switch (event) {
    case ESP_GAP_BLE_ADV_DATA_SET_COMPLETE_EVT:
        esp_ble_gap_start_advertising(&example_adv_params);
        break;
    default:
        break;
    }
}

static esp_blufi_callbacks_t example_callbacks = {
    .event_cb = example_event_callback,
    .negotiate_data_handler = blufi_dh_negotiate_data_handler,
    .encrypt_func = blufi_aes_encrypt,
    .decrypt_func = blufi_aes_decrypt,
    .checksum_func = blufi_crc_checksum,
};

void app_main()
{
    esp_err_t err_nvs = nvs_flash_init();
    if (err_nvs == ESP_ERR_NVS_NO_FREE_PAGES) {
        // NVS partition was truncated and needs to be erased        
        ESP_ERROR_CHECK(nvs_flash_erase());
        // Retry nvs_flash_init
        err_nvs = nvs_flash_init();
    }
    ESP_ERROR_CHECK(err_nvs);

    ESP_LOGI(TAG,"Opening NVS...");

    err_nvs = nvs_open("storage", NVS_READWRITE, &my_handle);
    if (err_nvs != ESP_OK)
    {
        ESP_LOGE(TAG, "Error (%d) opening NVS handle!", err_nvs);
    }
    else
    {
        ESP_LOGI(TAG, "NVS Opened");
        read_thresh_from_nvs();        
    }

    ble_process();

    struct timeval now;
    gettimeofday(&now, NULL);
    int sleep_time_ms = (now.tv_sec - sleep_enter_time.tv_sec) * 1000 + (now.tv_usec - sleep_enter_time.tv_usec) / 1000;

    switch (esp_sleep_get_wakeup_cause())
    {
        case ESP_SLEEP_WAKEUP_TIMER: {
            printf("Wake up for update check. Time in DS: %dms\n", sleep_time_ms);
            // Check for updates
            check_for_updates();
            break;

        }
        case ESP_SLEEP_WAKEUP_TOUCHPAD: {
            printf("Wake up from touch pad on T%d\n", esp_sleep_get_touchpad_wakeup_status());
            
            touch_pad_init();
            
            // Read value from touch_pad 1
            
            uint16_t touch_1_val = 0;
            uint16_t touch_1_threshold = 0;
            
            touch_pad_read(0, &touch_1_val);

            touch_pad_get_thresh(TOUCH_1, &touch_1_threshold);
        
            printf("T1:%d with Trh: %d\n", touch_1_val, touch_1_threshold);

            // Read value from touch_pad 2

            uint16_t touch_2_val = 0;        
            uint16_t touch_2_threshold = 0;
            touch_pad_read(TOUCH_2, &touch_2_val);

            touch_pad_get_thresh(TOUCH_2, &touch_2_threshold);
        
            printf("T2:%d with Trh: %d\n", touch_2_val, touch_2_threshold);

            // Read value from touch_pad 3

            uint16_t touch_3_val = 0;        
            uint16_t touch_3_threshold = 0;
            touch_pad_read(TOUCH_3, &touch_3_val);

            touch_pad_get_thresh(TOUCH_3, &touch_3_threshold);
        
            printf("T3:%d with Trh: %d\n", touch_3_val, touch_3_threshold);

            // Read value from touch_pad 4

            uint16_t touch_4_val = 0;        
            uint16_t touch_4_threshold = 0;
            touch_pad_read(TOUCH_4, &touch_4_val);

            touch_pad_get_thresh(TOUCH_4, &touch_4_threshold);
        
            printf("T4:%d with Trh: %d\n", touch_4_val, touch_4_threshold);

            uint16_t touch_1_thresh_activate = touch_1_threshold - 2000;
            uint16_t touch_2_thresh_activate = touch_2_threshold - 2000;
            uint16_t touch_3_thresh_activate = touch_3_threshold - 2000;
            uint16_t touch_4_thresh_activate = touch_4_threshold - 2000;

            int touch_counter = 0;
            if (touch_1_val <= touch_1_thresh_activate)
            {
                touch_counter++;
                ESP_LOGI(TAG,"T1: %d:%d", touch_1_val, touch_1_thresh_activate);
                gpio_pad_select_gpio(LED_GPIO_T1);
                gpio_set_direction(LED_GPIO_T1, GPIO_MODE_OUTPUT);
                gpio_set_level(LED_GPIO_T1, 1);
            }
            if (touch_2_val <= touch_2_thresh_activate)
            {
                touch_counter++;
                ESP_LOGI(TAG,"T2: %d:%d", touch_2_val, touch_2_thresh_activate);
                gpio_pad_select_gpio(LED_GPIO_T2);
                gpio_set_direction(LED_GPIO_T2, GPIO_MODE_OUTPUT);
                gpio_set_level(LED_GPIO_T2, 1);
            }
            if (touch_3_val <= touch_3_thresh_activate)
            {
                touch_counter++;
                ESP_LOGI(TAG,"T3: %d:%d", touch_3_val, touch_3_thresh_activate);
                gpio_pad_select_gpio(LED_GPIO_T3);
                gpio_set_direction(LED_GPIO_T3, GPIO_MODE_OUTPUT);
                gpio_set_level(LED_GPIO_T3, 1);
            }
            if (touch_4_val <= touch_4_thresh_activate)
            {
                touch_counter++;
                ESP_LOGI(TAG,"T4: %d:%d", touch_4_val, touch_4_thresh_activate);
                gpio_pad_select_gpio(LED_GPIO_T4);
                gpio_set_direction(LED_GPIO_T4, GPIO_MODE_OUTPUT);
                gpio_set_level(LED_GPIO_T4, 1);
            }

            evaluate_touched_pads(touch_counter);

            vTaskDelay(500 / portTICK_PERIOD_MS);

            break;
        }
        case ESP_SLEEP_WAKEUP_UNDEFINED: {
            printf("Not a deep sleep reset\n");
            break;
        }
        case ESP_SLEEP_WAKEUP_EXT0: {
            printf("Wake up from EXT0\n");
            break;
        }
        case ESP_SLEEP_WAKEUP_EXT1: {
            printf("Wake up from EXT1\n");
            break;
        }
        case ESP_SLEEP_WAKEUP_ULP: {
            printf("Wake up from ULP\n");
            break;
        }
    }

    ESP_LOGI(TAG, "---------- Intialization started ----------");
    ESP_LOGI(TAG, "---------- Software version: %2d -----------", SOFTWARE_VERSION);

    // Initialize everyting and go to Deep Sleep

    const long long wakeup_time_sec = 43200; // 12 Hours
    // const long long wakeup_time_sec = 10; // 10 seconds ONLY FOR TEST
    printf("Wake up timer set to %lld seconds.\n", wakeup_time_sec);
    esp_sleep_enable_timer_wakeup(wakeup_time_sec * 1000000);
    
    touch_pad_init();
    touch_pad_filter_start(10);
    touch_pad_set_meas_time(0x1000, 0xffff);
    touch_pad_set_voltage(TOUCH_HVOLT_2V4, TOUCH_LVOLT_0V8, TOUCH_HVOLT_ATTEN_1V5);

    calibrate_touch_pads();

    printf("Touch pad wake up configured\n");
    esp_sleep_enable_touchpad_wakeup();
    
    init_led();

    printf("Entering Deep Sleep\n");
    gettimeofday(&sleep_enter_time, NULL);

    nvs_close(my_handle);

    // esp_deep_sleep_start();
}

static void ble_process()
{
    initialise_wifi();

    esp_err_t ret;

    esp_bt_controller_config_t bt_cfg = BT_CONTROLLER_INIT_CONFIG_DEFAULT();
     ret = esp_bt_controller_init(&bt_cfg);
    if (ret)
    {
        ESP_LOGE(TAG, "Bt controller initialization failed");
    }

    ret = esp_bt_controller_enable(ESP_BT_MODE_BTDM);
    if (ret)
    {
        ESP_LOGE(TAG, "Bt controller enable failed");
        return;
    }

    ret = esp_bluedroid_init();
    if (ret)
    {
        ESP_LOGE(TAG, "Bluedroid initialization failed");
        return;
    }

    ret = esp_bluedroid_enable();
    if (ret)
    {
        ESP_LOGE(TAG, "Bluedroid enable failed");
        return;
    }

    int bt_dev_addr = esp_bt_dev_get_address();

    ESP_LOGI(TAG, "BD Addr: %d", bt_dev_addr);
    ESP_LOGI(TAG, "Blufi version: %04x", esp_blufi_get_version());

    blufi_security_init();
    esp_ble_gap_register_callback(example_gap_event_handler);

    esp_blufi_register_callbacks(&example_callbacks);
    esp_blufi_profile_init();
}

static void read_thresh_from_nvs()
{
    esp_err_t err_nvs = nvs_get_i32(my_handle, "t1_thresh", &touch1_thresh);
    switch (err_nvs) {
        case ESP_OK:
            ESP_LOGI(TAG, "Threshold for T1: %d", touch1_thresh);
            break;
        case ESP_ERR_NVS_NOT_FOUND:
            ESP_LOGW(TAG, "The value for T1 is not initialized yet!");
            break;
        case ESP_ERR_NVS_INVALID_HANDLE:
            ESP_LOGW(TAG,"Invalid handle!");
            break;
        case ESP_ERR_NVS_INVALID_NAME:
            ESP_LOGW(TAG,"Invalid name!");
            break;
        case ESP_ERR_NVS_INVALID_LENGTH:
            ESP_LOGW(TAG,"Invalid length!");
            break;
        default :
            ESP_LOGE(TAG,"Error (%d) reading!", err_nvs);
    }

    err_nvs = nvs_get_i32(my_handle, "t2_thresh", &touch2_thresh);
    switch (err_nvs) {
        case ESP_OK:
            ESP_LOGI(TAG, "Threshold for T2: %d", touch2_thresh);
            break;
        case ESP_ERR_NVS_NOT_FOUND:
            ESP_LOGW(TAG, "The value for T2 is not initialized yet!");
            break;
        case ESP_ERR_NVS_INVALID_HANDLE:
            ESP_LOGW(TAG,"Invalid handle!");
            break;
        case ESP_ERR_NVS_INVALID_NAME:
            ESP_LOGW(TAG,"Invalid name!");
            break;
        case ESP_ERR_NVS_INVALID_LENGTH:
            ESP_LOGW(TAG,"Invalid length!");
            break;
        default :
            ESP_LOGE(TAG,"Error (%d) reading!", err_nvs);
    }
    
    err_nvs = nvs_get_i32(my_handle, "t3_thresh", &touch3_thresh);
    switch (err_nvs) {
        case ESP_OK:
            ESP_LOGI(TAG, "Threshold for T3: %d", touch3_thresh);
            break;
        case ESP_ERR_NVS_NOT_FOUND:
            ESP_LOGW(TAG, "The value for T3 is not initialized yet!");
            break;
        case ESP_ERR_NVS_INVALID_HANDLE:
            ESP_LOGW(TAG,"Invalid handle!");
            break;
        case ESP_ERR_NVS_INVALID_NAME:
            ESP_LOGW(TAG,"Invalid name!");
            break;
        case ESP_ERR_NVS_INVALID_LENGTH:
            ESP_LOGW(TAG,"Invalid length!");
            break;
        default :
            ESP_LOGE(TAG,"Error (%d) reading!", err_nvs);
    }

    err_nvs = nvs_get_i32(my_handle, "t4_thresh", &touch4_thresh);
    switch (err_nvs) {
        case ESP_OK:
            ESP_LOGI(TAG, "Threshold for T4: %d", touch4_thresh);
            break;
        case ESP_ERR_NVS_NOT_FOUND:
            ESP_LOGW(TAG, "The value for T4 is not initialized yet!");
            break;
        case ESP_ERR_NVS_INVALID_HANDLE:
            ESP_LOGW(TAG,"Invalid handle!");
            break;
        case ESP_ERR_NVS_INVALID_NAME:
            ESP_LOGW(TAG,"Invalid name!");
            break;
        case ESP_ERR_NVS_INVALID_LENGTH:
            ESP_LOGW(TAG,"Invalid length!");
            break;
        default :
            ESP_LOGE(TAG,"Error (%d) reading!", err_nvs);
    }
}

static void evaluate_touched_pads(int touch_counter) {
    if (touch_counter == 0)
    {
        ESP_LOGI(TAG, "No buttons touched");
    }
    else if (touch_counter == 1)
    {
        ESP_LOGI(TAG, "One button touched");
    }
    else if (touch_counter == 2)
    {
        ESP_LOGI(TAG, "Two buttons touched");
    }
    else
    {
        ESP_LOGI(TAG, "More than two buttons touched");
    }
    vTaskDelay(1000 / portTICK_PERIOD_MS);
}

static void check_for_updates() {

    // Configure the application event handler.
    // The handler is centrally implemented in this module.
    // From here, we delegate the event handling to the responsible modules.
    
    esp_event_loop_init(&app_event_handler, NULL);

    init_wifi();

    xEventGroupWaitBits(wifi_sta_get_event_group(), WIFI_STA_EVENT_GROUP_CONNECTED_FLAG, pdFALSE, pdFALSE, portMAX_DELAY);

    init_ota();

    if (!wifi_sta_is_connected())
    {
        ESP_LOGE(TAG, "Wifi was not connected. Please reboot the device\n");
        //TODO Add the Blufi example here
    }

    if (iap_https_has_update())
    {
        ESP_LOGI(TAG, "We need to update");
        iap_https_download_image();
    }
    else
    {
        ESP_LOGI(TAG, "Firmaware is up-to-date");
    }
}

static void touch_pad_events() {
    uint16_t touch_1_val = 0;
    uint16_t touch_2_val = 0;
    uint16_t touch_3_val = 0;
    uint16_t touch_4_val = 0;

    uint16_t touch_1_threshold = 0;
    uint16_t touch_2_threshold = 0;
    uint16_t touch_3_threshold = 0;
    uint16_t touch_4_threshold = 0;

    touch_pad_init();
    
    touch_pad_read(TOUCH_1, &touch_1_val);    
    touch_pad_read(TOUCH_2, &touch_2_val);
    touch_pad_read(TOUCH_3, &touch_3_val);
    touch_pad_read(TOUCH_4, &touch_4_val);

    touch_pad_get_thresh(TOUCH_1, &touch_1_threshold);
    touch_pad_get_thresh(TOUCH_2, &touch_2_threshold);
    touch_pad_get_thresh(TOUCH_3, &touch_3_threshold);
    touch_pad_get_thresh(TOUCH_4, &touch_4_threshold);

    printf("T0:%d with Trh: %d\n", touch_1_val, touch_1_threshold);
    printf("T3:%d with Trh: %d\n", touch_2_val, touch_2_threshold);
    printf("T5:%d with Trh: %d\n", touch_3_val, touch_3_threshold);
    printf("T7:%d with Trh: %d\n", touch_4_val, touch_4_threshold);
}

static void init_led() {
    ESP_LOGI(TAG, "Initialize LEDs\n")

    gpio_pad_select_gpio(LED_GPIO_T1);
    gpio_set_direction(LED_GPIO_T1, GPIO_MODE_OUTPUT);
    gpio_set_level(LED_GPIO_T1, 0);

    gpio_pad_select_gpio(LED_GPIO_T2);
    gpio_set_direction(LED_GPIO_T2, GPIO_MODE_OUTPUT);
    gpio_set_level(LED_GPIO_T2, 0);

    gpio_pad_select_gpio(LED_GPIO_T3);
    gpio_set_direction(LED_GPIO_T3, GPIO_MODE_OUTPUT);
    gpio_set_level(LED_GPIO_T3, 0);

    gpio_pad_select_gpio(LED_GPIO_T4);
    gpio_set_direction(LED_GPIO_T4, GPIO_MODE_OUTPUT);
    gpio_set_level(LED_GPIO_T4, 0);
}

static void calibrate_touch_pads() {

    if (touch1_thresh > 0)
    {
        touch_pad_config(TOUCH_1, touch1_thresh);
        printf("Touch pad %d threshold set to: %d\n", TOUCH_1, touch1_thresh);
    }
    else
    {
        touch_pad_config(TOUCH_1, 0);

        // Initializes all touch pads properly
        vTaskDelay(100 / portTICK_PERIOD_MS);

        int avg = 0;
        const size_t calibration_count = 128;
        for (int i = 0; i < calibration_count; i++)
        {
            uint16_t val;
            touch_pad_read(TOUCH_1, &val);
            avg += val;
        }
        avg /= calibration_count;
        if (avg < 300)
        {
            printf("Touch pad %d is too low: %d \n"
                    "Cannot use it for wake up\n", TOUCH_1, avg);
            touch_pad_config(TOUCH_1, 0);
        }
        else
        {
            int threshold = avg - 1000;
            printf("Touch pad %d threshold set to: %d\n", TOUCH_1, threshold);
            touch_pad_config(TOUCH_1, threshold);

            touch1_thresh = threshold;
            esp_err_t err_nvs_write = nvs_set_i32(my_handle, "t1_thresh", touch1_thresh);
            if (err_nvs_write != ESP_OK)
            {
                switch (err_nvs_write) {
                    case ESP_ERR_NVS_INVALID_HANDLE:
                        ESP_LOGE(TAG,"Invalid handle!");
                        break;
                    case ESP_ERR_NVS_READ_ONLY:
                        ESP_LOGE(TAG,"Read only!");
                        break;
                    case ESP_ERR_NVS_INVALID_NAME:
                        ESP_LOGE(TAG,"Invalid name!");
                        break;
                    case ESP_ERR_NVS_NOT_ENOUGH_SPACE:
                        ESP_LOGE(TAG,"Not enough space!");
                        break;
                    case ESP_ERR_NVS_INVALID_LENGTH:
                        ESP_LOGE(TAG,"Invalid length!");
                        break;
                    case ESP_ERR_NVS_KEY_TOO_LONG:
                        ESP_LOGE(TAG,"Key too long");
                        break;
                    case ESP_ERR_NVS_REMOVE_FAILED: 
                        ESP_LOGE(TAG, "Flash write failed");
                        break;
                    default :
                        ESP_LOGE(TAG,"Error (%d) writing!", err_nvs_write);
                }
            }
            else
            {
                ESP_LOGI(TAG, "Updated touch 1 threshold in NVS");
            }

        }
    }

    if (touch2_thresh > 0)
    {
        touch_pad_config(TOUCH_2, touch2_thresh);
        printf("Touch pad %d threshold set to: %d\n", TOUCH_2, touch2_thresh);
    }
    else
    {
        touch_pad_config(TOUCH_2, 0);

        // Initializes all touch pads properly
        vTaskDelay(100 / portTICK_PERIOD_MS);

        int avg = 0;
        const size_t calibration_count = 128;
        for (int i = 0; i < calibration_count; i++)
        {
            uint16_t val;
            touch_pad_read(TOUCH_2, &val);
            avg += val;
        }
        avg /= calibration_count;
        if (avg < 300)
        {
            printf("Touch pad %d is too low: %d \n"
                    "Cannot use it for wake up\n", TOUCH_2, avg);
            touch_pad_config(TOUCH_2, 0);
        }
        else
        {
            int threshold = avg - 1000;
            printf("Touch pad %d threshold set to: %d\n", TOUCH_2, threshold);
            touch_pad_config(TOUCH_2, threshold);

            touch2_thresh = threshold;
            esp_err_t err_nvs_write = nvs_set_i32(my_handle, "t2_thresh", touch2_thresh);
            if (err_nvs_write != ESP_OK)
            {
                switch (err_nvs_write) {
                    case ESP_ERR_NVS_INVALID_HANDLE:
                        ESP_LOGE(TAG,"Invalid handle!");
                        break;
                    case ESP_ERR_NVS_READ_ONLY:
                        ESP_LOGE(TAG,"Read only!");
                        break;
                    case ESP_ERR_NVS_INVALID_NAME:
                        ESP_LOGE(TAG,"Invalid name!");
                        break;
                    case ESP_ERR_NVS_NOT_ENOUGH_SPACE:
                        ESP_LOGE(TAG,"Not enough space!");
                        break;
                    case ESP_ERR_NVS_INVALID_LENGTH:
                        ESP_LOGE(TAG,"Invalid length!");
                        break;
                    case ESP_ERR_NVS_KEY_TOO_LONG:
                        ESP_LOGE(TAG,"Key too long");
                        break;
                    case ESP_ERR_NVS_REMOVE_FAILED: 
                        ESP_LOGE(TAG, "Flash write failed");
                        break;
                    default :
                        ESP_LOGE(TAG,"Error (%d) writing!", err_nvs_write);
                }
            }
            else
            {
                ESP_LOGI(TAG, "Updated touch 2 threshold in NVS");
            }
        }
    }

    if (touch3_thresh > 0)
    {
        touch_pad_config(TOUCH_3, touch3_thresh);
        printf("Touch pad %d threshold set to: %d\n", TOUCH_3, touch3_thresh);
    }
    else
    {
        touch_pad_config(TOUCH_3, 0);

        // Initializes all touch pads properly
        vTaskDelay(100 / portTICK_PERIOD_MS);

        int avg = 0;
        const size_t calibration_count = 128;
        for (int i = 0; i < calibration_count; i++)
        {
            uint16_t val;
            touch_pad_read(TOUCH_3, &val);
            avg += val;
        }
        avg /= calibration_count;
        if (avg < 300)
        {
            printf("Touch pad %d is too low: %d \n"
                    "Cannot use it for wake up\n", TOUCH_3, avg);
            touch_pad_config(TOUCH_3, 0);
        }
        else
        {
            int threshold = avg - 1000;
            printf("Touch pad %d threshold set to: %d\n", TOUCH_3, threshold);
            touch_pad_config(TOUCH_3, threshold);

            touch3_thresh = threshold;
            esp_err_t err_nvs_write = nvs_set_i32(my_handle, "t3_thresh", touch3_thresh);
            if (err_nvs_write != ESP_OK)
            {
                switch (err_nvs_write) {
                    case ESP_ERR_NVS_INVALID_HANDLE:
                        ESP_LOGE(TAG,"Invalid handle!");
                        break;
                    case ESP_ERR_NVS_READ_ONLY:
                        ESP_LOGE(TAG,"Read only!");
                        break;
                    case ESP_ERR_NVS_INVALID_NAME:
                        ESP_LOGE(TAG,"Invalid name!");
                        break;
                    case ESP_ERR_NVS_NOT_ENOUGH_SPACE:
                        ESP_LOGE(TAG,"Not enough space!");
                        break;
                    case ESP_ERR_NVS_INVALID_LENGTH:
                        ESP_LOGE(TAG,"Invalid length!");
                        break;
                    case ESP_ERR_NVS_KEY_TOO_LONG:
                        ESP_LOGE(TAG,"Key too long");
                        break;
                    case ESP_ERR_NVS_REMOVE_FAILED: 
                        ESP_LOGE(TAG, "Flash write failed");
                        break;
                    default :
                        ESP_LOGE(TAG,"Error (%d) writing!", err_nvs_write);
                }
            }
            else
            {
                ESP_LOGI(TAG, "Updated touch 3 threshold in NVS");
            }
        }
    }

    if (touch4_thresh > 0)
    {
        touch_pad_config(TOUCH_4, touch4_thresh);
        printf("Touch pad %d threshold set to: %d\n", TOUCH_4, touch4_thresh);
    }
    else
    {
        touch_pad_config(TOUCH_4, 0);

        // Initializes all touch pads properly
        vTaskDelay(100 / portTICK_PERIOD_MS);

        int avg = 0;
        const size_t calibration_count = 128;
        for (int i = 0; i < calibration_count; i++)
        {
            uint16_t val;
            touch_pad_read(TOUCH_4, &val);
            avg += val;
        }
        avg /= calibration_count;
        if (avg < 300)
        {
            printf("Touch pad %d is too low: %d \n"
                    "Cannot use it for wake up\n", TOUCH_4, avg);
            touch_pad_config(TOUCH_4, 0);
        }
        else
        {
            int threshold = avg - 1000;
            printf("Touch pad %d threshold set to: %d\n", TOUCH_4, threshold);
            touch_pad_config(TOUCH_4, threshold);

            touch4_thresh = threshold;
            esp_err_t err_nvs_write = nvs_set_i32(my_handle, "t4_thresh", touch4_thresh);
            if (err_nvs_write != ESP_OK)
            {
                switch (err_nvs_write) {
                    case ESP_ERR_NVS_INVALID_HANDLE:
                        ESP_LOGE(TAG,"Invalid handle!");
                        break;
                    case ESP_ERR_NVS_READ_ONLY:
                        ESP_LOGE(TAG,"Read only!");
                        break;
                    case ESP_ERR_NVS_INVALID_NAME:
                        ESP_LOGE(TAG,"Invalid name!");
                        break;
                    case ESP_ERR_NVS_NOT_ENOUGH_SPACE:
                        ESP_LOGE(TAG,"Not enough space!");
                        break;
                    case ESP_ERR_NVS_INVALID_LENGTH:
                        ESP_LOGE(TAG,"Invalid length!");
                        break;
                    case ESP_ERR_NVS_KEY_TOO_LONG:
                        ESP_LOGE(TAG,"Key too long");
                        break;
                    case ESP_ERR_NVS_REMOVE_FAILED: 
                        ESP_LOGE(TAG, "Flash write failed");
                        break;
                    default :
                        ESP_LOGE(TAG,"Error (%d) writing!", err_nvs_write);
                }
            }
            else
            {
                ESP_LOGI(TAG, "Updated touch 4 threshold in NVS");
            }
        }
    }

    ESP_LOGI(TAG,"Committing updates in NVS ...");
    esp_err_t err_nvs_write = nvs_commit(my_handle);
    printf((err_nvs_write != ESP_OK) ? "Failed to commit NVS!\n" : "Done commiting NVS\n");

    // for (size_t j = 0; j < 8; j++)
    // {
    //     if (j == 0 || j == 3 || j == 5 || j == 7)
    //     {
    //         touch_pad_config(j, 0);

    //         // Initializes all touch pads properly
    //         vTaskDelay(100 / portTICK_PERIOD_MS);

    //         int avg = 0;
    //         const size_t calibration_count = 128;
    //         for (int i = 0; i < calibration_count; i++)
    //         {
    //             uint16_t val;
    //             touch_pad_read(j, &val);
    //             avg += val;
    //         }
    //         avg /= calibration_count;
    //         if (avg < 300)
    //         {
    //             printf("Touch pad %d is too low: %d \n"
    //                     "Cannot use it for wake up\n", j, avg);
    //             touch_pad_config(j, 0);
    //         }
    //         else
    //         {
    //             int threshold = avg - 2000;
    //             printf("Touch pad %d threshold set to: %d\n", j, threshold);
    //             touch_pad_config(j, threshold);
    //         }
    //     }
    // }
}

static void init_wifi()
{
    ESP_LOGI(TAG, "Initialize WIFI network connection.");
    ESP_LOGI(TAG, "SSID: %s, Password: %s", WIFI_NETWORK_SSID, WIFI_NETWORK_PASSWORD);
    
    wifi_params.network_ssid = WIFI_NETWORK_SSID;
    wifi_params.network_password = WIFI_NETWORK_PASSWORD;
    
    wifi_sta_init(&wifi_params);
}

static void init_ota()
{
    ESP_LOGI(TAG, "Initialising OTA firmware updating.");
    
    ota_config.current_software_version = SOFTWARE_VERSION;
    ota_config.server_host_name = OTA_SERVER_HOST_NAME;
    ota_config.server_port = "8883";
    strncpy(ota_config.server_metadata_path, OTA_SERVER_METADATA_PATH, sizeof(ota_config.server_metadata_path) / sizeof(char));
    bzero(ota_config.server_firmware_path, sizeof(ota_config.server_firmware_path) / sizeof(char));
    ota_config.server_root_ca_public_key_pem = server_root_ca_public_key_pem;
    ota_config.peer_public_key_pem = peer_public_key_pem;
    ota_config.polling_interval_s = OTA_POLLING_INTERVAL_S;
    ota_config.auto_reboot = OTA_AUTO_REBOOT;
    
    iap_https_init(&ota_config);
    
    // Immediately check if there's a new firmware image available.
    iap_https_check_now();
}

static esp_err_t app_event_handler(void *ctx, system_event_t *event)
{
    esp_err_t result = ESP_OK;
    int handled = 0;
    
    ESP_LOGI(TAG, "app_event_handler: event: %d", event->event_id);

    // Let the wifi_sta module handle all WIFI STA events.
    
    result = wifi_sta_handle_event(ctx, event, &handled);
    if (ESP_OK != result || handled) {
        return result;
    }
    
    // TODO - handle other events
    
    ESP_LOGW(TAG, "app_event_handler: unhandled event: %d", event->event_id);
    return ESP_OK;
}

static esp_err_t example_net_event_handler(void *ctx, system_event_t *event) 
{
    wifi_mode_t mode;
    
    switch (event->event_id)
    {
    case SYSTEM_EVENT_STA_START:
        esp_wifi_connect();
        break;
    case SYSTEM_EVENT_STA_GOT_IP: {
        esp_blufi_extra_info_t info;

        xEventGroupSetBits(wifi_event_group, CONNECTED_BIT);
        esp_wifi_get_mode(&mode);

        memset(&info, 0, sizeof(esp_blufi_extra_info_t));
        memcpy(info.sta_bssid, gl_sta_bssid, 6);
        info.sta_bssid_set = true;
        info.sta_ssid = gl_sta_ssid;
        info.sta_ssid_len = gl_sta_ssid_len;
        esp_blufi_send_wifi_conn_report(mode, ESP_BLUFI_STA_CONN_SUCCESS, 0, &info);
        break;
        case SYSTEM_EVENT_STA_CONNECTED:
        gl_sta_connected = true;
        memcpy(gl_sta_bssid, event->event_info.connected.bssid, 6);
        memcpy(gl_sta_ssid, event->event_info.connected.ssid, event->event_info.connected.ssid_len);
        gl_sta_ssid_len = event->event_info.connected.ssid_len;
        break; 
    case SYSTEM_EVENT_STA_DISCONNECTED:
        /* This is a workaround as ESP32 WiFi libs don't currently
           auto-reassociate. */
        gl_sta_connected = false;
        memset(gl_sta_ssid, 0, 32);
        memset(gl_sta_bssid, 0, 6);
        gl_sta_ssid_len = 0;
        esp_wifi_connect();
        xEventGroupClearBits(wifi_event_group, CONNECTED_BIT);
        break;
    case SYSTEM_EVENT_AP_START:
        esp_wifi_get_mode(&mode);

        /* TODO: get config or information of softap, then set to report extra_info */
        if (gl_sta_connected) {  
            esp_blufi_send_wifi_conn_report(mode, ESP_BLUFI_STA_CONN_SUCCESS, 0, NULL);
        } else {
            esp_blufi_send_wifi_conn_report(mode, ESP_BLUFI_STA_CONN_FAIL, 0, NULL);
        }
        break;
    }
    default:
        break;
    }
    return ESP_OK;
}

static void initialise_wifi()
{
    tcpip_adapter_init();
    wifi_event_group = xEventGroupCreate();
    ESP_ERROR_CHECK( esp_event_loop_init(example_net_event_handler, NULL) );
    wifi_init_config_t cfg = WIFI_INIT_CONFIG_DEFAULT();
    ESP_ERROR_CHECK( esp_wifi_init(&cfg) );
    ESP_ERROR_CHECK( esp_wifi_set_storage(WIFI_STORAGE_RAM) );
    ESP_ERROR_CHECK( esp_wifi_set_mode(WIFI_MODE_STA) );
    ESP_ERROR_CHECK( esp_wifi_start() );
}


static void example_event_callback(esp_blufi_cb_event_t event, esp_blufi_cb_param_t *param)
{
    /* actually, should post to blufi_task handle the procedure,
     * now, as a example, we do it more simply */
    switch (event) {
    case ESP_BLUFI_EVENT_INIT_FINISH:
        BLUFI_INFO("BLUFI init finish\n");

        esp_ble_gap_set_device_name(BLUFI_DEVICE_NAME);
        esp_ble_gap_config_adv_data(&example_adv_data);
        break;
    case ESP_BLUFI_EVENT_DEINIT_FINISH:
        BLUFI_INFO("BLUFI deinit finish\n");
        break;
    case ESP_BLUFI_EVENT_BLE_CONNECT:
        BLUFI_INFO("BLUFI ble connect\n");
        server_if=param->connect.server_if;
        conn_id=param->connect.conn_id;
        esp_ble_gap_stop_advertising();
        blufi_security_deinit();
        blufi_security_init();
        break;
    case ESP_BLUFI_EVENT_BLE_DISCONNECT:
        BLUFI_INFO("BLUFI ble disconnect\n");
        esp_ble_gap_start_advertising(&example_adv_params);
        break;
    case ESP_BLUFI_EVENT_SET_WIFI_OPMODE:
        BLUFI_INFO("BLUFI Set WIFI opmode %d\n", param->wifi_mode.op_mode);
        ESP_ERROR_CHECK( esp_wifi_set_mode(param->wifi_mode.op_mode) );
        break;
    case ESP_BLUFI_EVENT_REQ_CONNECT_TO_AP:
        BLUFI_INFO("BLUFI requset wifi connect to AP\n");
        esp_wifi_connect();
        break;
    case ESP_BLUFI_EVENT_REQ_DISCONNECT_FROM_AP:
        BLUFI_INFO("BLUFI requset wifi disconnect from AP\n");
        esp_wifi_disconnect();
        break;
    case ESP_BLUFI_EVENT_GET_WIFI_STATUS: {
        wifi_mode_t mode;
        esp_blufi_extra_info_t info;

        esp_wifi_get_mode(&mode);

        if (gl_sta_connected ) {  
            memset(&info, 0, sizeof(esp_blufi_extra_info_t));
            memcpy(info.sta_bssid, gl_sta_bssid, 6);
            info.sta_bssid_set = true;
            info.sta_ssid = gl_sta_ssid;
            info.sta_ssid_len = gl_sta_ssid_len;
            esp_blufi_send_wifi_conn_report(mode, ESP_BLUFI_STA_CONN_SUCCESS, 0, &info);
        } else {
            esp_blufi_send_wifi_conn_report(mode, ESP_BLUFI_STA_CONN_FAIL, 0, NULL);
        }
        BLUFI_INFO("BLUFI get wifi status from AP\n");

        break;
    }
    case ESP_BLUFI_EVENT_RECV_SLAVE_DISCONNECT_BLE:
        BLUFI_INFO("blufi close a gatt connection");
        esp_blufi_close(server_if,conn_id);
        break;
    case ESP_BLUFI_EVENT_DEAUTHENTICATE_STA:
        /* TODO */
        break;
	case ESP_BLUFI_EVENT_RECV_STA_BSSID:
        memcpy(sta_config.sta.bssid, param->sta_bssid.bssid, 6);
        sta_config.sta.bssid_set = 1;
        esp_wifi_set_config(WIFI_IF_STA, &sta_config);
        BLUFI_INFO("Recv STA BSSID %s\n", sta_config.sta.ssid);
        break;
	case ESP_BLUFI_EVENT_RECV_STA_SSID:
        strncpy((char *)sta_config.sta.ssid, (char *)param->sta_ssid.ssid, param->sta_ssid.ssid_len);
        sta_config.sta.ssid[param->sta_ssid.ssid_len] = '\0';
        esp_wifi_set_config(WIFI_IF_STA, &sta_config);
        BLUFI_INFO("Recv STA SSID %s\n", sta_config.sta.ssid);
        break;
	case ESP_BLUFI_EVENT_RECV_STA_PASSWD:
        strncpy((char *)sta_config.sta.password, (char *)param->sta_passwd.passwd, param->sta_passwd.passwd_len);
        sta_config.sta.password[param->sta_passwd.passwd_len] = '\0';
        esp_wifi_set_config(WIFI_IF_STA, &sta_config);
        BLUFI_INFO("Recv STA PASSWORD %s\n", sta_config.sta.password);
        break;
	case ESP_BLUFI_EVENT_RECV_SOFTAP_SSID:
        strncpy((char *)ap_config.ap.ssid, (char *)param->softap_ssid.ssid, param->softap_ssid.ssid_len);
        ap_config.ap.ssid_len = param->softap_ssid.ssid_len;
        esp_wifi_set_config(WIFI_IF_AP, &ap_config);
        BLUFI_INFO("Recv SOFTAP SSID %s, ssid len %d\n", ap_config.ap.ssid, ap_config.ap.ssid_len);
        break;
	case ESP_BLUFI_EVENT_RECV_SOFTAP_PASSWD:
        strncpy((char *)ap_config.ap.password, (char *)param->softap_passwd.passwd, param->softap_passwd.passwd_len);
        esp_wifi_set_config(WIFI_IF_AP, &ap_config);
        BLUFI_INFO("Recv SOFTAP PASSWORD %s\n", ap_config.ap.password);
        break;
	case ESP_BLUFI_EVENT_RECV_SOFTAP_MAX_CONN_NUM:
        if (param->softap_max_conn_num.max_conn_num > 4) {
            return;
        }
        ap_config.ap.max_connection = param->softap_max_conn_num.max_conn_num;
        esp_wifi_set_config(WIFI_IF_AP, &ap_config);
        BLUFI_INFO("Recv SOFTAP MAX CONN NUM %d\n", ap_config.ap.max_connection);
        break;
	case ESP_BLUFI_EVENT_RECV_SOFTAP_AUTH_MODE:
        if (param->softap_auth_mode.auth_mode >= WIFI_AUTH_MAX) {
            return;
        }
        ap_config.ap.authmode = param->softap_auth_mode.auth_mode;
        esp_wifi_set_config(WIFI_IF_AP, &ap_config);
        BLUFI_INFO("Recv SOFTAP AUTH MODE %d\n", ap_config.ap.authmode);
        break;
	case ESP_BLUFI_EVENT_RECV_SOFTAP_CHANNEL:
        if (param->softap_channel.channel > 13) {
            return;
        }
        ap_config.ap.channel = param->softap_channel.channel;
        esp_wifi_set_config(WIFI_IF_AP, &ap_config);
        BLUFI_INFO("Recv SOFTAP CHANNEL %d\n", ap_config.ap.channel);
        break;
	case ESP_BLUFI_EVENT_RECV_USERNAME:
        /* Not handle currently */
        break;
	case ESP_BLUFI_EVENT_RECV_CA_CERT:
        /* Not handle currently */
        break;
	case ESP_BLUFI_EVENT_RECV_CLIENT_CERT:
        /* Not handle currently */
        break;
	case ESP_BLUFI_EVENT_RECV_SERVER_CERT:
        /* Not handle currently */
        break;
	case ESP_BLUFI_EVENT_RECV_CLIENT_PRIV_KEY:
        /* Not handle currently */
        break;;
	case ESP_BLUFI_EVENT_RECV_SERVER_PRIV_KEY:
        /* Not handle currently */
        break;
    default:
        break;
    }
}

