#include <string.h>
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "freertos/event_groups.h"

#include "esp_log.h"
#include "esp_event_loop.h"
#include "esp_system.h"
#include "esp_sleep.h"
#include "esp_wifi.h"
#include "esp32/ulp.h"

#include "soc/rtc_cntl_reg.h"
#include "soc/sens_reg.h"
#include "soc/rtc.h"

#include "nvs_flash.h"
#include "nvs.h"

#include "driver/gpio.h"
#include "driver/touch_pad.h"
#include "driver/adc.h"
#include "driver/rtc_io.h"

#include "wifi_sta.h"
#include "iap_https.h"
#include "main.h"

#define TAG "main"
#define LED_GPIO_T0 22
#define LED_GPIO_T3 23
#define LED_GPIO_T5 26
#define LED_GPIO_T8 21

#define TOUCH_1 0 
#define TOUCH_2 3
#define TOUCH_3 5
#define TOUCH_4 7

static const char *server_root_ca_public_key_pem = OTA_SERVER_ROOT_CA_PEM;
static const char *peer_public_key_pem = OTA_PEER_PEM;

static RTC_DATA_ATTR struct timeval sleep_enter_time;

static wifi_sta_init_struct_t wifi_params;

// Static because the scope of this object is the usage of the iap_https module.
static iap_https_config_t ota_config;

static void init_wifi();
static void init_led();
static void check_for_updates();
static void touch_pad_events();
static void calibrate_touch_pads();
static void read_thresh_from_nvs();
static void init_ota();
static esp_err_t app_event_handler(void *ctx, system_event_t *event);

int32_t touch1_thresh;
int32_t touch2_thresh;
int32_t touch3_thresh;
int32_t touch4_thresh;
nvs_handle my_handle;

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
            
            // Read value from touch_pad 0

            // touch_pad_config(0, 1000);
            uint16_t touch_1_val = 0;
            uint16_t touch_1_threshold = 0;
            
            touch_pad_read(0, &touch_1_val);

            touch_pad_get_thresh(TOUCH_1, &touch_1_threshold);
        
            printf("T0:%d with Trh: %d\n", touch_1_val, touch_1_threshold);

            // Read value from touch_pad 5

            uint16_t touch_2_val = 0;        
            uint16_t touch_2_threshold = 0;
            touch_pad_read(TOUCH_2, &touch_2_val);

            touch_pad_get_thresh(TOUCH_2, &touch_2_threshold);
        
            printf("T3:%d with Trh: %d\n", touch_2_val, touch_2_threshold);

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

    esp_deep_sleep_start();
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

    gpio_pad_select_gpio(LED_GPIO_T0);
    gpio_set_direction(LED_GPIO_T0, GPIO_MODE_OUTPUT);
    gpio_set_level(LED_GPIO_T0, 0);

    gpio_pad_select_gpio(LED_GPIO_T3);
    gpio_set_direction(LED_GPIO_T3, GPIO_MODE_OUTPUT);
    gpio_set_level(LED_GPIO_T3, 0);

    gpio_pad_select_gpio(LED_GPIO_T5);
    gpio_set_direction(LED_GPIO_T5, GPIO_MODE_OUTPUT);
    gpio_set_level(LED_GPIO_T5, 0);

    gpio_pad_select_gpio(LED_GPIO_T8);
    gpio_set_direction(LED_GPIO_T8, GPIO_MODE_OUTPUT);
    gpio_set_level(LED_GPIO_T8, 0);
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
