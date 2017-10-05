#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "freertos/event_groups.h"

#include "esp_log.h"
#include "esp_event_loop.h"
#include "esp_system.h"
#include "esp_sleep.h"
#include "esp_wifi.h"
#include "esp_bt_defs.h"
#include "esp_gap_ble_api.h"
#include "esp_gatts_api.h"
#include "esp_gatt_common_api.h"
#include "esp_bt_main.h"
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

#define TAG "main"
#define LED_GPIO_T1 22
#define LED_GPIO_T2 23
#define LED_GPIO_T3 26
#define LED_GPIO_T4 21

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
static void read_mode_from_nvs();
static void read_table_number_from_nvs();
static void read_ota_update_remaining_time();
static void update_ota_update_time(int update_time);
static void evaluate_touched_pads(int touch_counter);
static void init_ota();
static void ble_process();
static void send_https_packet();
static esp_err_t app_event_handler(void *ctx, system_event_t *event);
static void gatts_event_handler(esp_gatts_cb_event_t event, esp_gatt_if_t gatts_if, esp_ble_gatts_cb_param_t *param);
static void gap_event_handler(esp_gap_ble_cb_event_t event, esp_ble_gap_cb_param_t *param);

static void gatts_profile_a_event_handler(esp_gatts_cb_event_t event, esp_gatt_if_t gatts_if, esp_ble_gatts_cb_param_t *param);
static void gatts_profile_b_event_handler(esp_gatts_cb_event_t event, esp_gatt_if_t gatts_if, esp_ble_gatts_cb_param_t *param);

#define GATTS_TAG "ArkPos2_GATTS"
#define GATTS_SERVICE_UUID_TEST_A   0x00FF
#define GATTS_CHAR_UUID_TEST_A      0xFF01
#define GATTS_DESCR_UUID_TEST_A     0x3333
#define GATTS_NUM_HANDLE_TEST_A     4

#define GATTS_SERVICE_UUID_TEST_B   0x00EE
#define GATTS_CHAR_UUID_TEST_B      0xEE01
#define GATTS_DESCR_UUID_TEST_B     0x2222
#define GATTS_NUM_HANDLE_TEST_B     4

#define TEST_DEVICE_NAME            "ArkPos2_GATTS"
#define TEST_MANUFACTURER_DATA_LEN  17

#define GATTS_DEMO_CHAR_VAL_LEN_MAX 0x40

#define PREPARE_BUF_MAX_SIZE 1024

uint8_t char1_str[] = {0x11,0x22,0x33};
esp_gatt_char_prop_t a_property = 0;
esp_gatt_char_prop_t b_property = 0;

esp_attr_value_t gatts_demo_char1_val =
{
    .attr_max_len = GATTS_DEMO_CHAR_VAL_LEN_MAX,
    .attr_len     = sizeof(char1_str),
    .attr_value   = char1_str,
};

static uint8_t adv_config_done = 0;

#define adv_config_flag      (1 << 0)
#define scan_rsp_config_flag (1 << 1)

#ifdef CONFIG_SET_RAW_ADV_DATA
static uint8_t raw_adv_data[] = {
        0x02, 0x01, 0x06,
        0x02, 0x0a, 0xeb, 0x03, 0x03, 0xab, 0xcd
};
static uint8_t raw_scan_rsp_data[] = {
        0x0f, 0x09, 0x45, 0x53, 0x50, 0x5f, 0x47, 0x41, 0x54, 0x54, 0x53, 0x5f, 0x44,
        0x45, 0x4d, 0x4f
};
#else

static uint8_t adv_service_uuid128[32] = {
    /* LSB <--------------------------------------------------------------------------------> MSB */
    //first uuid, 16bit, [12],[13] is the value
    0xfb, 0x34, 0x9b, 0x5f, 0x80, 0x00, 0x00, 0x80, 0x00, 0x10, 0x00, 0x00, 0xEE, 0x00, 0x00, 0x00,
    //second uuid, 32bit, [12], [13], [14], [15] is the value
    0xfb, 0x34, 0x9b, 0x5f, 0x80, 0x00, 0x00, 0x80, 0x00, 0x10, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,
};

// The length of adv data must be less than 31 bytes
//static uint8_t test_manufacturer[TEST_MANUFACTURER_DATA_LEN] =  {0x12, 0x23, 0x45, 0x56};
//adv data
static esp_ble_adv_data_t adv_data = {
    .set_scan_rsp = false,
    .include_name = true,
    .include_txpower = true,
    .min_interval = 0x20,
    .max_interval = 0x40,
    .appearance = 0x00,
    .manufacturer_len = 0, //TEST_MANUFACTURER_DATA_LEN,
    .p_manufacturer_data =  NULL, //&test_manufacturer[0],
    .service_data_len = 0,
    .p_service_data = NULL,
    .service_uuid_len = 32,
    .p_service_uuid = adv_service_uuid128,
    .flag = (ESP_BLE_ADV_FLAG_GEN_DISC | ESP_BLE_ADV_FLAG_BREDR_NOT_SPT),
};
// scan response data
static esp_ble_adv_data_t scan_rsp_data = {
    .set_scan_rsp = true,
    .include_name = true,
    .include_txpower = true,
    .min_interval = 0x20,
    .max_interval = 0x40,
    .appearance = 0x00,
    .manufacturer_len = 0, //TEST_MANUFACTURER_DATA_LEN,
    .p_manufacturer_data =  NULL, //&test_manufacturer[0],
    .service_data_len = 0,
    .p_service_data = NULL,
    .service_uuid_len = 32,
    .p_service_uuid = adv_service_uuid128,
    .flag = (ESP_BLE_ADV_FLAG_GEN_DISC | ESP_BLE_ADV_FLAG_BREDR_NOT_SPT),
};

#endif /* CONFIG_SET_RAW_ADV_DATA */

static esp_ble_adv_params_t adv_params = {
    .adv_int_min        = 0x20,
    .adv_int_max        = 0x40,
    .adv_type           = ADV_TYPE_IND,
    .own_addr_type      = BLE_ADDR_TYPE_PUBLIC,
    .channel_map        = ADV_CHNL_ALL,
    .adv_filter_policy = ADV_FILTER_ALLOW_SCAN_ANY_CON_ANY,
};

#define PROFILE_NUM 2
#define PROFILE_A_APP_ID 0
#define PROFILE_B_APP_ID 1

struct gatts_profile_inst {
    esp_gatts_cb_t gatts_cb;
    uint16_t gatts_if;
    uint16_t app_id;
    uint16_t conn_id;
    uint16_t service_handle;
    esp_gatt_srvc_id_t service_id;
    uint16_t char_handle;
    esp_bt_uuid_t char_uuid;
    esp_gatt_perm_t perm;
    esp_gatt_char_prop_t property;
    uint16_t descr_handle;
    esp_bt_uuid_t descr_uuid;
};

/* One gatt-based profile one app_id and one gatts_if, this array will store the gatts_if returned by ESP_GATTS_REG_EVT */
static struct gatts_profile_inst gl_profile_tab[PROFILE_NUM] = {
    [PROFILE_A_APP_ID] = {
        .gatts_cb = gatts_profile_a_event_handler,
        .gatts_if = ESP_GATT_IF_NONE,       /* Not get the gatt_if, so initial is ESP_GATT_IF_NONE */
    },
    [PROFILE_B_APP_ID] = {
        .gatts_cb = gatts_profile_b_event_handler,                   /* This demo does not implement, similar as profile A */
        .gatts_if = ESP_GATT_IF_NONE,       /* Not get the gatt_if, so initial is ESP_GATT_IF_NONE */
    },
};

typedef struct {
    uint8_t                 *prepare_buf;
    int                     prepare_len;
} prepare_type_env_t;

static prepare_type_env_t a_prepare_write_env;
static prepare_type_env_t b_prepare_write_env;

void example_write_event_env(esp_gatt_if_t gatts_if, prepare_type_env_t *prepare_write_env, esp_ble_gatts_cb_param_t *param);
void example_exec_write_event_env(prepare_type_env_t *prepare_write_env, esp_ble_gatts_cb_param_t *param);

static http_request_t http_touch_test_request;

int32_t touch1_thresh;
int32_t touch2_thresh;
int32_t touch3_thresh;
int32_t touch4_thresh;
nvs_handle my_handle;

int table_number = 0;
/*
------ Mode -----------
0 => not initialized
1 => normal
2 => configuration mode
*/
int mode = 1;

/*
----- Remaining Time --
The time until the next OTA update check wake up
Initially set to 43200 seconds = 12 Hours
*/
int ota_update_remaining_time = 43200;

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
        read_mode_from_nvs();
        read_table_number_from_nvs();
        read_ota_update_remaining_time();
    }

    if (mode == 2)
    {
        ESP_LOGW(TAG, "Entering Configuration State");
        ESP_LOGW(TAG, "Please connect to the module");
        ble_process();
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
            update_ota_update_time(ota_update_remaining_time);
            break;

        }
        case ESP_SLEEP_WAKEUP_TOUCHPAD: {
            printf("Wake up from touch pad on T%d\n", esp_sleep_get_touchpad_wakeup_status());
            printf("Time sleeping: %dms\n", sleep_time_ms);
            ota_update_remaining_time = 43200 - (sleep_time_ms / 1000);
            printf("Time until update check: %ds\n", ota_update_remaining_time);
            update_ota_update_time(ota_update_remaining_time);

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

    const long long wakeup_time_sec = ota_update_remaining_time;
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

    gettimeofday(&sleep_enter_time, NULL);

    printf("Closing the NVS handle for the thresholds\n");
    nvs_close(my_handle);

    if (mode == 1)
    {
        ESP_LOGI(TAG, "Table number: %d", table_number);
        ESP_LOGI(TAG, "Entering Deep Sleep");
        esp_deep_sleep_start();
    }
}

static void ble_process()
{
    esp_err_t ret;

        // Initialize NVS.
        ret = nvs_flash_init();
        if (ret == ESP_ERR_NVS_NO_FREE_PAGES) {
            ESP_ERROR_CHECK(nvs_flash_erase());
            ret = nvs_flash_init();
        }
        ESP_ERROR_CHECK( ret );

        esp_bt_controller_config_t bt_cfg = BT_CONTROLLER_INIT_CONFIG_DEFAULT();
        ret = esp_bt_controller_init(&bt_cfg);
        if (ret) {
            ESP_LOGE(GATTS_TAG, "%s initialize controller failed\n", __func__);
            return;
        }

        ret = esp_bt_controller_enable(ESP_BT_MODE_BTDM);
        if (ret) {
            ESP_LOGE(GATTS_TAG, "%s enable controller failed\n", __func__);
            return;
        }
        ret = esp_bluedroid_init();
        if (ret) {
            ESP_LOGE(GATTS_TAG, "%s init bluetooth failed\n", __func__);
            return;
        }
        ret = esp_bluedroid_enable();
        if (ret) {
            ESP_LOGE(GATTS_TAG, "%s enable bluetooth failed\n", __func__);
            return;
        }

        ret = esp_ble_gatts_register_callback(gatts_event_handler);
        if (ret){
            ESP_LOGE(GATTS_TAG, "gatts register error, error code = %x", ret);
            return;
        }
        ret = esp_ble_gap_register_callback(gap_event_handler);
        if (ret){
            ESP_LOGE(GATTS_TAG, "gap register error, error code = %x", ret);
            return;
        }
        ret = esp_ble_gatts_app_register(PROFILE_A_APP_ID);
        if (ret){
            ESP_LOGE(GATTS_TAG, "gatts app register error, error code = %x", ret);
            return;
        }
        ret = esp_ble_gatts_app_register(PROFILE_B_APP_ID);
        if (ret){
            ESP_LOGE(GATTS_TAG, "gatts app register error, error code = %x", ret);
            return;
        }
        esp_err_t local_mtu_ret = esp_ble_gatt_set_local_mtu(500);
        if (local_mtu_ret){
            ESP_LOGE(GATTS_TAG, "set local  MTU failed, error code = %x", local_mtu_ret);
        }
}

static void read_ota_update_remaining_time() {
  esp_err_t err_tn_nvs = nvs_get_i32(my_handle, "update_time", &ota_update_remaining_time);
  switch (err_tn_nvs) {
    case ESP_OK:
      ESP_LOGI(TAG, "Remaining time until OTA check: %d", ota_update_remaining_time);
      break;
    case ESP_ERR_NVS_NOT_FOUND:
          ESP_LOGW(TAG, "Update time not yet specified");
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
        ESP_LOGE(TAG,"Error (%d) reading update time!", err_tn_nvs);
  }
}

static void update_ota_update_time(int update_time)
{
    esp_err_t err_nvs = nvs_open("storage", NVS_READWRITE, &my_handle);
    if (err_nvs != ESP_OK)
    {
        ESP_LOGE(TAG, "Error (%d) opening NVS handle!", err_nvs);
    }
    else
    {
        ESP_LOGI(TAG, "NVS Opened for update time");
    }

    ESP_LOGW(TAG,"Setting update time to: %d", update_time);

    esp_err_t err_nvs_write = nvs_set_i32(my_handle, "update_time", update_time);
    switch (err_nvs_write) {
        case ESP_OK:
            ESP_LOGI(TAG,"Time to wake up updated");
            break;
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
            ESP_LOGE(TAG,"Error (%d) writing update time!", err_nvs_write);
    }

    err_nvs_write = nvs_commit(my_handle);
    printf((err_nvs_write != ESP_OK) ? "Failed to commit NVS for update time!\n" : "Updated wake up time in NVS\n");

    ESP_LOGI(TAG, "Closing the NVS handle the mode");
    nvs_close(my_handle);
}

static void read_mode_from_nvs()
{
    esp_err_t err_tn_nvs = nvs_get_i32(my_handle,"mode", &mode);
    switch (err_tn_nvs) {
      case ESP_OK:
        if (mode == 1) {
          ESP_LOGI(TAG,"Mode => Normal");
        }
        else
        {
          ESP_LOGI(TAG,"Mode => Configuration");
        }
      case ESP_ERR_NVS_NOT_FOUND:
            ESP_LOGW(TAG, "Mode not yet specified");
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
          ESP_LOGE(TAG,"Error (%d) reading mode!", err_tn_nvs);
    }
}

static void read_table_number_from_nvs()
{
    esp_err_t err_tn_nvs = nvs_get_i32(my_handle, "table_number", &table_number);
    switch (err_tn_nvs) {
        case ESP_OK:
            ESP_LOGI(TAG, "Table No: %d", table_number);
            break;
        case ESP_ERR_NVS_NOT_FOUND:
            ESP_LOGW(TAG, "Table number not yet specified");
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
            ESP_LOGE(TAG,"Error (%d) reading!", err_tn_nvs);
    }
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

        send_https_packet();
    }
    else if (touch_counter == 2)
    {
        ESP_LOGI(TAG, "Two buttons touched");

        ESP_LOGW(TAG, "Restarting in Configuration mode");

        for (size_t i = 0; i < 1000; i++) {
          gpio_pad_select_gpio(LED_GPIO_T1);
          gpio_set_direction(LED_GPIO_T1, GPIO_MODE_OUTPUT);
          gpio_set_level(LED_GPIO_T1, 0);

          gpio_pad_select_gpio(LED_GPIO_T2);
          gpio_set_direction(LED_GPIO_T2, GPIO_MODE_OUTPUT);
          gpio_set_level(LED_GPIO_T2, 0);

          vTaskDelay(200 / portTICK_PERIOD_MS);

          gpio_pad_select_gpio(LED_GPIO_T1);
          gpio_set_direction(LED_GPIO_T1, GPIO_MODE_OUTPUT);
          gpio_set_level(LED_GPIO_T1, 1);

          gpio_pad_select_gpio(LED_GPIO_T2);
          gpio_set_direction(LED_GPIO_T2, GPIO_MODE_OUTPUT);
          gpio_set_level(LED_GPIO_T2, 1);
        }

        mode = 2;

        esp_err_t err_nvs_write = nvs_set_i32(my_handle, "mode", mode);
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
                    ESP_LOGE(TAG,"Error (%d) writing mode!", err_nvs_write);
            }
        }
        else
        {
            ESP_LOGI(TAG,"Committing updates in NVS for mode ...");
            esp_err_t err_nvs_write = nvs_commit(my_handle);
            printf((err_nvs_write != ESP_OK) ? "Failed to commit NVS for mode!\n" : "Updated mode in NVS\n");

            ESP_LOGI(TAG, "Closing the NVS handle for the mode");
            nvs_close(my_handle);
            esp_restart();
        }

    }
    else
    {
        ESP_LOGI(TAG, "More than two buttons touched");
    }
    vTaskDelay(1000 / portTICK_PERIOD_MS);
}

static void send_https_packet()
{
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

static void gap_event_handler(esp_gap_ble_cb_event_t event, esp_ble_gap_cb_param_t *param)
{
    switch (event) {
#ifdef CONFIG_SET_RAW_ADV_DATA
    case ESP_GAP_BLE_ADV_DATA_RAW_SET_COMPLETE_EVT:
        adv_config_done &= (~adv_config_flag);
        if (adv_config_done==0){
            esp_ble_gap_start_advertising(&adv_params);
        }
        break;
    case ESP_GAP_BLE_SCAN_RSP_DATA_RAW_SET_COMPLETE_EVT:
        adv_config_done &= (~scan_rsp_config_flag);
        if (adv_config_done==0){
            esp_ble_gap_start_advertising(&adv_params);
        }
        break;
#else
    case ESP_GAP_BLE_ADV_DATA_SET_COMPLETE_EVT:
        adv_config_done &= (~adv_config_flag);
        if (adv_config_done == 0){
            esp_ble_gap_start_advertising(&adv_params);
        }
        break;
    case ESP_GAP_BLE_SCAN_RSP_DATA_SET_COMPLETE_EVT:
        adv_config_done &= (~scan_rsp_config_flag);
        if (adv_config_done == 0){
            esp_ble_gap_start_advertising(&adv_params);
        }
        break;
#endif
    case ESP_GAP_BLE_ADV_START_COMPLETE_EVT:
        //advertising start complete event to indicate advertising start successfully or failed
        if (param->adv_start_cmpl.status != ESP_BT_STATUS_SUCCESS) {
            ESP_LOGE(GATTS_TAG, "Advertising start failed\n");
        }
        break;
    case ESP_GAP_BLE_ADV_STOP_COMPLETE_EVT:
        if (param->adv_stop_cmpl.status != ESP_BT_STATUS_SUCCESS) {
            ESP_LOGE(GATTS_TAG, "Advertising stop failed\n");
        }
        else {
            ESP_LOGI(GATTS_TAG, "Stop adv successfully\n");
        }
        break;
    case ESP_GAP_BLE_UPDATE_CONN_PARAMS_EVT:
         ESP_LOGI(GATTS_TAG, "update connetion params status = %d, min_int = %d, max_int = %d,conn_int = %d,latency = %d, timeout = %d",
                  param->update_conn_params.status,
                  param->update_conn_params.min_int,
                  param->update_conn_params.max_int,
                  param->update_conn_params.conn_int,
                  param->update_conn_params.latency,
                  param->update_conn_params.timeout);
        break;
    default:
        break;
    }
}

void example_write_event_env(esp_gatt_if_t gatts_if, prepare_type_env_t *prepare_write_env, esp_ble_gatts_cb_param_t *param){
    esp_gatt_status_t status = ESP_GATT_OK;
    if (param->write.need_rsp){
        if (param->write.is_prep){
            if (prepare_write_env->prepare_buf == NULL) {
                prepare_write_env->prepare_buf = (uint8_t *)malloc(PREPARE_BUF_MAX_SIZE*sizeof(uint8_t));
                prepare_write_env->prepare_len = 0;
                if (prepare_write_env->prepare_buf == NULL) {
                    ESP_LOGE(GATTS_TAG, "Gatt_server prep no mem\n");
                    status = ESP_GATT_NO_RESOURCES;
                }
            } else {
                if(param->write.offset > PREPARE_BUF_MAX_SIZE) {
                    status = ESP_GATT_INVALID_OFFSET;
                } else if ((param->write.offset + param->write.len) > PREPARE_BUF_MAX_SIZE) {
                    status = ESP_GATT_INVALID_ATTR_LEN;
                }
            }

            esp_gatt_rsp_t *gatt_rsp = (esp_gatt_rsp_t *)malloc(sizeof(esp_gatt_rsp_t));
            gatt_rsp->attr_value.len = param->write.len;
            gatt_rsp->attr_value.handle = param->write.handle;
            gatt_rsp->attr_value.offset = param->write.offset;
            gatt_rsp->attr_value.auth_req = ESP_GATT_AUTH_REQ_NONE;
            memcpy(gatt_rsp->attr_value.value, param->write.value, param->write.len);
            esp_err_t response_err = esp_ble_gatts_send_response(gatts_if, param->write.conn_id, param->write.trans_id, status, gatt_rsp);
            if (response_err != ESP_OK){
               ESP_LOGE(GATTS_TAG, "Send response error\n");
            }
            free(gatt_rsp);
            if (status != ESP_GATT_OK){
                return;
            }
            memcpy(prepare_write_env->prepare_buf + param->write.offset,
                   param->write.value,
                   param->write.len);
            prepare_write_env->prepare_len += param->write.len;

        }else{
            esp_ble_gatts_send_response(gatts_if, param->write.conn_id, param->write.trans_id, status, NULL);
        }
    }
}

void example_exec_write_event_env(prepare_type_env_t *prepare_write_env, esp_ble_gatts_cb_param_t *param){
    if (param->exec_write.exec_write_flag == ESP_GATT_PREP_WRITE_EXEC){
        esp_log_buffer_hex(GATTS_TAG, prepare_write_env->prepare_buf, prepare_write_env->prepare_len);
    }else{
        ESP_LOGI(GATTS_TAG,"ESP_GATT_PREP_WRITE_CANCEL");
    }
    if (prepare_write_env->prepare_buf) {
        free(prepare_write_env->prepare_buf);
        prepare_write_env->prepare_buf = NULL;
    }
    prepare_write_env->prepare_len = 0;
}

static void gatts_profile_a_event_handler(esp_gatts_cb_event_t event, esp_gatt_if_t gatts_if, esp_ble_gatts_cb_param_t *param) {
    switch (event) {
    case ESP_GATTS_REG_EVT:
        ESP_LOGI(GATTS_TAG, "REGISTER_APP_EVT, status %d, app_id %d\n", param->reg.status, param->reg.app_id);
        gl_profile_tab[PROFILE_A_APP_ID].service_id.is_primary = true;
        gl_profile_tab[PROFILE_A_APP_ID].service_id.id.inst_id = 0x00;
        gl_profile_tab[PROFILE_A_APP_ID].service_id.id.uuid.len = ESP_UUID_LEN_16;
        gl_profile_tab[PROFILE_A_APP_ID].service_id.id.uuid.uuid.uuid16 = GATTS_SERVICE_UUID_TEST_A;

        esp_ble_gap_set_device_name(TEST_DEVICE_NAME);
#ifdef CONFIG_SET_RAW_ADV_DATA
        esp_err_t raw_adv_ret = esp_ble_gap_config_adv_data_raw(raw_adv_data, sizeof(raw_adv_data));
        if (raw_adv_ret){
            ESP_LOGE(GATTS_TAG, "config raw adv data failed, error code = %x ", raw_adv_ret);
        }
        adv_config_done |= adv_config_flag;
        esp_err_t raw_scan_ret = esp_ble_gap_config_scan_rsp_data_raw(raw_scan_rsp_data, sizeof(raw_scan_rsp_data));
        if (raw_scan_ret){
            ESP_LOGE(GATTS_TAG, "config raw scan rsp data failed, error code = %x", raw_scan_ret);
        }
        adv_config_done |= scan_rsp_config_flag;
#else
        //config adv data
        esp_err_t ret = esp_ble_gap_config_adv_data(&adv_data);
        if (ret){
            ESP_LOGE(GATTS_TAG, "config adv data failed, error code = %x", ret);
        }
        adv_config_done |= adv_config_flag;
        //config scan response data
        ret = esp_ble_gap_config_adv_data(&scan_rsp_data);
        if (ret){
            ESP_LOGE(GATTS_TAG, "config scan response data failed, error code = %x", ret);
        }
        adv_config_done |= scan_rsp_config_flag;

#endif
        esp_ble_gatts_create_service(gatts_if, &gl_profile_tab[PROFILE_A_APP_ID].service_id, GATTS_NUM_HANDLE_TEST_A);
        break;
    case ESP_GATTS_READ_EVT: {
        ESP_LOGI(GATTS_TAG, "GATT_READ_EVT, conn_id %d, trans_id %d, handle %d\n", param->read.conn_id, param->read.trans_id, param->read.handle);
        esp_gatt_rsp_t rsp;
        memset(&rsp, 0, sizeof(esp_gatt_rsp_t));
        rsp.attr_value.handle = param->read.handle;
        rsp.attr_value.len = 4;
        rsp.attr_value.value[0] = 0xde;
        rsp.attr_value.value[1] = 0xed;
        rsp.attr_value.value[2] = 0xbe;
        rsp.attr_value.value[3] = 0xef;
        esp_ble_gatts_send_response(gatts_if, param->read.conn_id, param->read.trans_id,
                                    ESP_GATT_OK, &rsp);
        break;
    }
    case ESP_GATTS_WRITE_EVT: {
        ESP_LOGI(GATTS_TAG, "GATT_WRITE_EVT, conn_id %d, trans_id %d, handle %d", param->write.conn_id, param->write.trans_id, param->write.handle);
        if (!param->write.is_prep){
            ESP_LOGI(GATTS_TAG, "GATT_WRITE_EVT, value len %d, value :", param->write.len);
            // esp_log_buffer_hex(GATTS_TAG, param->write.value, param->write.len);
            esp_log_buffer_char(GATTS_TAG, param->write.value, param->write.len);

            if (param->write.len > 3)
            {

                char incoming_message[256];
                strcpy(incoming_message, (char*) param->write.value);

                printf("Incoming message: %s\n", incoming_message);

                char msg_tag[256];
                strncpy(msg_tag, incoming_message, 3);

                char substr_inc[256];
                strncpy(substr_inc, incoming_message+3, param->write.len);
                printf("table number: %s\n", substr_inc);

                if (strcmp(incoming_message,"change_mode") == 0) {

                  esp_err_t err_nvs = nvs_open("storage", NVS_READWRITE, &my_handle);
                  if (err_nvs != ESP_OK)
                  {
                      ESP_LOGE(TAG, "Error (%d) opening NVS handle!", err_nvs);
                  }
                  else
                  {
                      ESP_LOGI(TAG, "NVS Opened for table number");
                  }

                  ESP_LOGW(TAG,"Entering normal mode");
                  mode = 1;

                  esp_err_t err_nvs_write = nvs_set_i32(my_handle, "mode", mode);
                  switch (err_nvs_write) {
                      case ESP_OK:
                          ESP_LOGI(TAG,"Mode written");
                          break;
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
                          ESP_LOGE(TAG,"Error (%d) writing mode!", err_nvs_write);
                  }

                  ESP_LOGW(TAG,"Changing mode");
                  err_nvs_write = nvs_commit(my_handle);
                  printf((err_nvs_write != ESP_OK) ? "Failed to commit NVS for mode!\n" : "Updated mode in NVS\n");

                  ESP_LOGI(TAG, "Closing the NVS handle the mode");
                  nvs_close(my_handle);
                  esp_restart();

                }

                if (strcmp(msg_tag,"tn:") == 0)
                {
                    printf("Table number tag\n");
                }

                table_number = atoi(substr_inc);
                if (table_number == 0)
                {
                    printf("Not a number!!\n");
                }
                else
                {
                    esp_err_t err_nvs = nvs_open("storage", NVS_READWRITE, &my_handle);
                    if (err_nvs != ESP_OK)
                    {
                        ESP_LOGE(TAG, "Error (%d) opening NVS handle!", err_nvs);
                    }
                    else
                    {
                        ESP_LOGI(TAG, "NVS Opened for table number");
                    }

                    esp_err_t err_nvs_write = nvs_set_i32(my_handle, "table_number", table_number);

                    switch (err_nvs_write) {
                        case ESP_OK:
                            ESP_LOGI(TAG,"Table number written");
                            break;
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

                    ESP_LOGI(TAG,"Committing updates in NVS for table number ...");
                    err_nvs_write = nvs_commit(my_handle);
                    printf((err_nvs_write != ESP_OK) ? "Failed to commit NVS for table number!\n" : "Updated table number in NVS\n");

                    ESP_LOGI(TAG, "Closing the NVS handle for configuration");
                    nvs_close(my_handle);
                    ESP_LOGW(TAG, "Send 'change_mode' to go to normal mode");

                }
            }

            if (gl_profile_tab[PROFILE_A_APP_ID].descr_handle == param->write.handle && param->write.len == 2){
                uint16_t descr_value = param->write.value[1]<<8 | param->write.value[0];
                if (descr_value == 0x0001){
                    if (a_property & ESP_GATT_CHAR_PROP_BIT_NOTIFY){
                        ESP_LOGI(GATTS_TAG, "notify enable");
                        uint8_t notify_data[15];
                        for (int i = 0; i < sizeof(notify_data); ++i)
                        {
                            notify_data[i] = i%0xff;
                        }
                        //the size of notify_data[] need less than MTU size
                        esp_ble_gatts_send_indicate(gatts_if, param->write.conn_id, gl_profile_tab[PROFILE_A_APP_ID].char_handle,
                                                sizeof(notify_data), notify_data, false);
                    }
                }else if (descr_value == 0x0002){
                    if (a_property & ESP_GATT_CHAR_PROP_BIT_INDICATE){
                        ESP_LOGI(GATTS_TAG, "indicate enable");
                        uint8_t indicate_data[15];
                        for (int i = 0; i < sizeof(indicate_data); ++i)
                        {
                            indicate_data[i] = i%0xff;
                        }
                        //the size of indicate_data[] need less than MTU size
                        esp_ble_gatts_send_indicate(gatts_if, param->write.conn_id, gl_profile_tab[PROFILE_A_APP_ID].char_handle,
                                                sizeof(indicate_data), indicate_data, true);
                    }
                }
                else if (descr_value == 0x0000){
                    ESP_LOGI(GATTS_TAG, "notify/indicate disable ");
                }else{
                    ESP_LOGE(GATTS_TAG, "unknown descr value");
                    esp_log_buffer_hex(GATTS_TAG, param->write.value, param->write.len);
                }

            }
        }
        example_write_event_env(gatts_if, &a_prepare_write_env, param);
        break;
    }
    case ESP_GATTS_EXEC_WRITE_EVT:
        ESP_LOGI(GATTS_TAG,"ESP_GATTS_EXEC_WRITE_EVT");
        esp_ble_gatts_send_response(gatts_if, param->write.conn_id, param->write.trans_id, ESP_GATT_OK, NULL);
        example_exec_write_event_env(&a_prepare_write_env, param);
        break;
    case ESP_GATTS_MTU_EVT:
        ESP_LOGI(GATTS_TAG, "ESP_GATTS_MTU_EVT, MTU %d", param->mtu.mtu);
        break;
    case ESP_GATTS_CONF_EVT:
    case ESP_GATTS_UNREG_EVT:
        break;
    case ESP_GATTS_CREATE_EVT:
        ESP_LOGI(GATTS_TAG, "CREATE_SERVICE_EVT, status %d,  service_handle %d\n", param->create.status, param->create.service_handle);
        gl_profile_tab[PROFILE_A_APP_ID].service_handle = param->create.service_handle;
        gl_profile_tab[PROFILE_A_APP_ID].char_uuid.len = ESP_UUID_LEN_16;
        gl_profile_tab[PROFILE_A_APP_ID].char_uuid.uuid.uuid16 = GATTS_CHAR_UUID_TEST_A;

        esp_ble_gatts_start_service(gl_profile_tab[PROFILE_A_APP_ID].service_handle);
        a_property = ESP_GATT_CHAR_PROP_BIT_READ | ESP_GATT_CHAR_PROP_BIT_WRITE | ESP_GATT_CHAR_PROP_BIT_NOTIFY;
        esp_err_t add_char_ret = esp_ble_gatts_add_char(gl_profile_tab[PROFILE_A_APP_ID].service_handle, &gl_profile_tab[PROFILE_A_APP_ID].char_uuid,
                                                        ESP_GATT_PERM_READ | ESP_GATT_PERM_WRITE,
                                                        a_property,
                                                        &gatts_demo_char1_val, NULL);
        if (add_char_ret){
            ESP_LOGE(GATTS_TAG, "add char failed, error code =%x",add_char_ret);
        }
        break;
    case ESP_GATTS_ADD_INCL_SRVC_EVT:
        break;
    case ESP_GATTS_ADD_CHAR_EVT: {
        uint16_t length = 0;
        const uint8_t *prf_char;

        ESP_LOGI(GATTS_TAG, "ADD_CHAR_EVT, status %d,  attr_handle %d, service_handle %d\n",
                param->add_char.status, param->add_char.attr_handle, param->add_char.service_handle);
        gl_profile_tab[PROFILE_A_APP_ID].char_handle = param->add_char.attr_handle;
        gl_profile_tab[PROFILE_A_APP_ID].descr_uuid.len = ESP_UUID_LEN_16;
        gl_profile_tab[PROFILE_A_APP_ID].descr_uuid.uuid.uuid16 = ESP_GATT_UUID_CHAR_CLIENT_CONFIG;
        esp_err_t get_attr_ret = esp_ble_gatts_get_attr_value(param->add_char.attr_handle,  &length, &prf_char);
        if (get_attr_ret == ESP_FAIL){
            ESP_LOGE(GATTS_TAG, "ILLEGAL HANDLE");
        }

        ESP_LOGI(GATTS_TAG, "the gatts demo char length = %x\n", length);
        for(int i = 0; i < length; i++){
            ESP_LOGI(GATTS_TAG, "prf_char[%x] =%x\n",i,prf_char[i]);
        }
        esp_err_t add_descr_ret = esp_ble_gatts_add_char_descr(gl_profile_tab[PROFILE_A_APP_ID].service_handle, &gl_profile_tab[PROFILE_A_APP_ID].descr_uuid,
                                                                ESP_GATT_PERM_READ | ESP_GATT_PERM_WRITE, NULL, NULL);
        if (add_descr_ret){
            ESP_LOGE(GATTS_TAG, "add char descr failed, error code =%x", add_descr_ret);
        }
        break;
    }
    case ESP_GATTS_ADD_CHAR_DESCR_EVT:
        gl_profile_tab[PROFILE_A_APP_ID].descr_handle = param->add_char.attr_handle;
        ESP_LOGI(GATTS_TAG, "ADD_DESCR_EVT, status %d, attr_handle %d, service_handle %d\n",
                 param->add_char.status, param->add_char.attr_handle, param->add_char.service_handle);
        break;
    case ESP_GATTS_DELETE_EVT:
        break;
    case ESP_GATTS_START_EVT:
        ESP_LOGI(GATTS_TAG, "SERVICE_START_EVT, status %d, service_handle %d\n",
                 param->start.status, param->start.service_handle);
        break;
    case ESP_GATTS_STOP_EVT:
        break;
    case ESP_GATTS_CONNECT_EVT: {
        esp_ble_conn_update_params_t conn_params = {0};
        memcpy(conn_params.bda, param->connect.remote_bda, sizeof(esp_bd_addr_t));
        /* For the IOS system, please reference the apple official documents about the ble connection parameters restrictions. */
        conn_params.latency = 0;
        conn_params.max_int = 0x20;    // max_int = 0x20*1.25ms = 40ms
        conn_params.min_int = 0x10;    // min_int = 0x10*1.25ms = 20ms
        conn_params.timeout = 400;    // timeout = 400*10ms = 4000ms
        ESP_LOGI(GATTS_TAG, "ESP_GATTS_CONNECT_EVT, conn_id %d, remote %02x:%02x:%02x:%02x:%02x:%02x:, is_conn %d",
                 param->connect.conn_id,
                 param->connect.remote_bda[0], param->connect.remote_bda[1], param->connect.remote_bda[2],
                 param->connect.remote_bda[3], param->connect.remote_bda[4], param->connect.remote_bda[5],
                 param->connect.is_connected);
        gl_profile_tab[PROFILE_A_APP_ID].conn_id = param->connect.conn_id;
        //start sent the update connection parameters to the peer device.
        esp_ble_gap_update_conn_params(&conn_params);
        break;
    }
    case ESP_GATTS_DISCONNECT_EVT:
        ESP_LOGI(GATTS_TAG, "ESP_GATTS_DISCONNECT_EVT");
        esp_ble_gap_start_advertising(&adv_params);
        break;
    case ESP_GATTS_OPEN_EVT:
    case ESP_GATTS_CANCEL_OPEN_EVT:
    case ESP_GATTS_CLOSE_EVT:
    case ESP_GATTS_LISTEN_EVT:
    case ESP_GATTS_CONGEST_EVT:
    default:
        break;
    }
}

static void gatts_profile_b_event_handler(esp_gatts_cb_event_t event, esp_gatt_if_t gatts_if, esp_ble_gatts_cb_param_t *param) {
    switch (event) {
    case ESP_GATTS_REG_EVT:
        ESP_LOGI(GATTS_TAG, "REGISTER_APP_EVT, status %d, app_id %d\n", param->reg.status, param->reg.app_id);
        gl_profile_tab[PROFILE_B_APP_ID].service_id.is_primary = true;
        gl_profile_tab[PROFILE_B_APP_ID].service_id.id.inst_id = 0x00;
        gl_profile_tab[PROFILE_B_APP_ID].service_id.id.uuid.len = ESP_UUID_LEN_16;
        gl_profile_tab[PROFILE_B_APP_ID].service_id.id.uuid.uuid.uuid16 = GATTS_SERVICE_UUID_TEST_B;

        esp_ble_gatts_create_service(gatts_if, &gl_profile_tab[PROFILE_B_APP_ID].service_id, GATTS_NUM_HANDLE_TEST_B);
        break;
    case ESP_GATTS_READ_EVT: {
        ESP_LOGI(GATTS_TAG, "GATT_READ_EVT, conn_id %d, trans_id %d, handle %d\n", param->read.conn_id, param->read.trans_id, param->read.handle);
        esp_gatt_rsp_t rsp;
        memset(&rsp, 0, sizeof(esp_gatt_rsp_t));
        rsp.attr_value.handle = param->read.handle;
        rsp.attr_value.len = 4;
        rsp.attr_value.value[0] = 0xde;
        rsp.attr_value.value[1] = 0xed;
        rsp.attr_value.value[2] = 0xbe;
        rsp.attr_value.value[3] = 0xef;
        esp_ble_gatts_send_response(gatts_if, param->read.conn_id, param->read.trans_id,
                                    ESP_GATT_OK, &rsp);
        break;
    }
    case ESP_GATTS_WRITE_EVT: {
        ESP_LOGI(GATTS_TAG, "GATT_WRITE_EVT 2, conn_id %d, trans_id %d, handle %d\n", param->write.conn_id, param->write.trans_id, param->write.handle);
        if (!param->write.is_prep){
            ESP_LOGI(GATTS_TAG, "GATT_WRITE_EVT 2, value len %d, value :", param->write.len);
            esp_log_buffer_hex(GATTS_TAG, param->write.value, param->write.len);
            if (gl_profile_tab[PROFILE_B_APP_ID].descr_handle == param->write.handle && param->write.len == 2){
                uint16_t descr_value= param->write.value[1]<<8 | param->write.value[0];
                if (descr_value == 0x0001){
                    if (b_property & ESP_GATT_CHAR_PROP_BIT_NOTIFY){
                        ESP_LOGI(GATTS_TAG, "notify enable");
                        uint8_t notify_data[15];
                        for (int i = 0; i < sizeof(notify_data); ++i)
                        {
                            notify_data[i] = i%0xff;
                        }
                        //the size of notify_data[] need less than MTU size
                        esp_ble_gatts_send_indicate(gatts_if, param->write.conn_id, gl_profile_tab[PROFILE_B_APP_ID].char_handle,
                                                sizeof(notify_data), notify_data, false);
                    }
                }else if (descr_value == 0x0002){
                    if (b_property & ESP_GATT_CHAR_PROP_BIT_INDICATE){
                        ESP_LOGI(GATTS_TAG, "indicate enable");
                        uint8_t indicate_data[15];
                        for (int i = 0; i < sizeof(indicate_data); ++i)
                        {
                            indicate_data[i] = i%0xff;
                        }
                        //the size of indicate_data[] need less than MTU size
                        esp_ble_gatts_send_indicate(gatts_if, param->write.conn_id, gl_profile_tab[PROFILE_B_APP_ID].char_handle,
                                                sizeof(indicate_data), indicate_data, true);
                    }
                }
                else if (descr_value == 0x0000){
                    ESP_LOGI(GATTS_TAG, "notify/indicate disable ");
                }else{
                    ESP_LOGE(GATTS_TAG, "unknown value");
                }

            }
        }
        example_write_event_env(gatts_if, &b_prepare_write_env, param);
        break;
    }
    case ESP_GATTS_EXEC_WRITE_EVT:
        ESP_LOGI(GATTS_TAG,"ESP_GATTS_EXEC_WRITE_EVT");
        esp_ble_gatts_send_response(gatts_if, param->write.conn_id, param->write.trans_id, ESP_GATT_OK, NULL);
        example_exec_write_event_env(&b_prepare_write_env, param);
        break;
    case ESP_GATTS_MTU_EVT:
        ESP_LOGI(GATTS_TAG, "ESP_GATTS_MTU_EVT, MTU %d", param->mtu.mtu);
        break;
    case ESP_GATTS_CONF_EVT:
    case ESP_GATTS_UNREG_EVT:
        break;
    case ESP_GATTS_CREATE_EVT:
        ESP_LOGI(GATTS_TAG, "CREATE_SERVICE_EVT, status %d,  service_handle %d\n", param->create.status, param->create.service_handle);
        gl_profile_tab[PROFILE_B_APP_ID].service_handle = param->create.service_handle;
        gl_profile_tab[PROFILE_B_APP_ID].char_uuid.len = ESP_UUID_LEN_16;
        gl_profile_tab[PROFILE_B_APP_ID].char_uuid.uuid.uuid16 = GATTS_CHAR_UUID_TEST_B;

        esp_ble_gatts_start_service(gl_profile_tab[PROFILE_B_APP_ID].service_handle);
        b_property = ESP_GATT_CHAR_PROP_BIT_READ | ESP_GATT_CHAR_PROP_BIT_WRITE | ESP_GATT_CHAR_PROP_BIT_NOTIFY;
        esp_err_t add_char_ret =esp_ble_gatts_add_char( gl_profile_tab[PROFILE_B_APP_ID].service_handle, &gl_profile_tab[PROFILE_B_APP_ID].char_uuid,
                                                        ESP_GATT_PERM_READ | ESP_GATT_PERM_WRITE,
                                                        b_property,
                                                        NULL, NULL);
        if (add_char_ret){
            ESP_LOGE(GATTS_TAG, "add char failed, error code =%x",add_char_ret);
        }
        break;
    case ESP_GATTS_ADD_INCL_SRVC_EVT:
        break;
    case ESP_GATTS_ADD_CHAR_EVT:
        ESP_LOGI(GATTS_TAG, "ADD_CHAR_EVT, status %d,  attr_handle %d, service_handle %d\n",
                 param->add_char.status, param->add_char.attr_handle, param->add_char.service_handle);

        gl_profile_tab[PROFILE_B_APP_ID].char_handle = param->add_char.attr_handle;
        gl_profile_tab[PROFILE_B_APP_ID].descr_uuid.len = ESP_UUID_LEN_16;
        gl_profile_tab[PROFILE_B_APP_ID].descr_uuid.uuid.uuid16 = ESP_GATT_UUID_CHAR_CLIENT_CONFIG;
        esp_ble_gatts_add_char_descr(gl_profile_tab[PROFILE_B_APP_ID].service_handle, &gl_profile_tab[PROFILE_B_APP_ID].descr_uuid,
                                     ESP_GATT_PERM_READ | ESP_GATT_PERM_WRITE,
                                     NULL, NULL);
        break;
    case ESP_GATTS_ADD_CHAR_DESCR_EVT:
        gl_profile_tab[PROFILE_B_APP_ID].descr_handle = param->add_char.attr_handle;
        ESP_LOGI(GATTS_TAG, "ADD_DESCR_EVT, status %d, attr_handle %d, service_handle %d\n",
                 param->add_char.status, param->add_char.attr_handle, param->add_char.service_handle);
        break;
    case ESP_GATTS_DELETE_EVT:
        break;
    case ESP_GATTS_START_EVT:
        ESP_LOGI(GATTS_TAG, "SERVICE_START_EVT, status %d, service_handle %d\n",
                 param->start.status, param->start.service_handle);
        break;
    case ESP_GATTS_STOP_EVT:
        break;
    case ESP_GATTS_CONNECT_EVT:
        ESP_LOGI(GATTS_TAG, "CONNECT_EVT, conn_id %d, remote %02x:%02x:%02x:%02x:%02x:%02x:, is_conn %d",
                 param->connect.conn_id,
                 param->connect.remote_bda[0], param->connect.remote_bda[1], param->connect.remote_bda[2],
                 param->connect.remote_bda[3], param->connect.remote_bda[4], param->connect.remote_bda[5],
                 param->connect.is_connected);
        gl_profile_tab[PROFILE_B_APP_ID].conn_id = param->connect.conn_id;
        break;
    case ESP_GATTS_DISCONNECT_EVT:
    case ESP_GATTS_OPEN_EVT:
    case ESP_GATTS_CANCEL_OPEN_EVT:
    case ESP_GATTS_CLOSE_EVT:
    case ESP_GATTS_LISTEN_EVT:
    case ESP_GATTS_CONGEST_EVT:
    default:
        break;
    }
}

static void gatts_event_handler(esp_gatts_cb_event_t event, esp_gatt_if_t gatts_if, esp_ble_gatts_cb_param_t *param)
{
    /* If event is register event, store the gatts_if for each profile */
    if (event == ESP_GATTS_REG_EVT) {
        if (param->reg.status == ESP_GATT_OK) {
            gl_profile_tab[param->reg.app_id].gatts_if = gatts_if;
        } else {
            ESP_LOGI(GATTS_TAG, "Reg app failed, app_id %04x, status %d\n",
                    param->reg.app_id,
                    param->reg.status);
            return;
        }
    }

    /* If the gatts_if equal to profile A, call profile A cb handler,
     * so here call each profile's callback */
    do {
        int idx;
        for (idx = 0; idx < PROFILE_NUM; idx++) {
            if (gatts_if == ESP_GATT_IF_NONE || /* ESP_GATT_IF_NONE, not specify a certain gatt_if, need to call every profile cb function */
                    gatts_if == gl_profile_tab[idx].gatts_if) {
                if (gl_profile_tab[idx].gatts_cb) {
                    gl_profile_tab[idx].gatts_cb(event, gatts_if, param);
                }
            }
        }
    } while (0);
}
