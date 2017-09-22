#include <string.h>
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "freertos/event_groups.h"

#include "esp_log.h"
#include "esp_event_loop.h"
#include "esp_system.h"
#include "esp_sleep.h"
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
#define LED_GPIO_T8 35

static const char *server_root_ca_public_key_pem = OTA_SERVER_ROOT_CA_PEM;
static const char *peer_public_key_pem = OTA_PEER_PEM;

static RTC_DATA_ATTR struct timeval sleep_enter_time;

static wifi_sta_init_struct_t wifi_params;

// Static because the scope of this object is the usage of the iap_https module.
static iap_https_config_t ota_config;

static void init_wifi();
static void init_led();
static void calibrate_touch_pad(touch_pad_t pad);
static void init_ota();
static esp_err_t app_event_handler(void *ctx, system_event_t *event);


void app_main()
{

    struct timeval now;
    gettimeofday(&now, NULL);
    int sleep_time_ms = (now.tv_sec - sleep_enter_time.tv_sec) * 1000 + (now.tv_usec - sleep_enter_time.tv_usec) / 1000;

    switch (esp_sleep_get_wakeup_cause())
    {
        case ESP_SLEEP_WAKEUP_TIMER: {
            printf("Wake up from timer. Time in DS: %dms\n", sleep_time_ms);
            // TODO Implement the HTTPS OTA
        }
        case ESP_SLEEP_WAKEUP_TOUCHPAD: {
            printf("Wake up from touch pad on T%d\n", esp_sleep_get_touchpad_wakeup_status());
            // TODO Implement the touch events
        }
        case ESP_SLEEP_WAKEUP_UNDEFINED:
        default:
            printf("Not a deep sleep reset\n");
    }

    ESP_LOGI(TAG, "---------- Intialization started ----------");
    ESP_LOGI(TAG, "---------- Software version: %2d -----------", SOFTWARE_VERSION);

    esp_err_t err_nvs = nvs_flash_init();
    if (err_nvs == ESP_ERR_NVS_NO_FREE_PAGES) {
        // NVS partition was truncated and needs to be erased        
        ESP_ERROR_CHECK(nvs_flash_erase());
        // Retry nvs_flash_init
        err_nvs = nvs_flash_init();
    }
    ESP_ERROR_CHECK(err_nvs);

    // Configure the application event handler.
    // The handler is centrally implemented in this module.
    // From here, we delegate the event handling to the responsible modules.
    
    // esp_event_loop_init(&app_event_handler, NULL);

    // Initialize everyting and go to Deep Sleep

    init_wifi();
    
    if (!wifi_sta_is_connected())
    {
        ESP_LOGE(TAG, "Wifi was not connected. Please reboot the device\n");
    }

    const long long wakeup_time_sec = 43200; // 12 Hours
    printf("Wake up timer set to %lld seconds.\n", wakeup_time_sec);
    esp_sleep_enable_timer_wakeup(wakeup_time_sec * 1000000);
    
    touch_pad_init();
    touch_pad_filter_start(10);
    touch_pad_set_meas_time(0x1000, 0xffff);
    touch_pad_set_voltage(TOUCH_HVOLT_2V4, TOUCH_LVOLT_0V8, TOUCH_HVOLT_ATTEN_1V5);

    calibrate_touch_pad(TOUCH_PAD_NUM0);
    calibrate_touch_pad(TOUCH_PAD_NUM3);
    calibrate_touch_pad(TOUCH_PAD_NUM5);
    calibrate_touch_pad(TOUCH_PAD_NUM8);

    printf("Touch pad wake up configured\n");
    esp_sleep_enable_touchpad_wakeup();
    
    init_led();

    printf("Entering Deep Sleep\n");
    gettimeofday(&sleep_enter_time, NULL);
    esp_deep_sleep_start();
    
    // Configure the over-the-air update module. This module periodically checks
    // for firmware updates by polling a web server. If an update is available,
    // the module downloads and installs it.
    
    // init_ota();


    // This application doesn't actually do anything useful.
    // It just lets an LED blink. You may need to adapt this for your own module
    // (GPIO5 is the blue LED on the "ESP32 Thing" module.)

    // while (1) {
        
    //     int nofFlashes = 1;
    //     if (wifi_sta_is_connected()) {
    //         nofFlashes += 1;
    //     }
    //     if (iap_https_update_in_progress()) {
    //         nofFlashes += 2; // results in 3 (not connected) or 4 (connected) flashes
    //     }
        
    //     // for (int i = 0; i < nofFlashes; i++) {
    //     //     gpio_set_level(GPIO_NUM_22, 1);
    //     //     vTaskDelay(150 / portTICK_PERIOD_MS);
    //     //     gpio_set_level(GPIO_NUM_22, 0);
    //     //     vTaskDelay(150 / portTICK_PERIOD_MS);
    //     // }
        
    //     // If the application could only re-boot at certain points, you could
    //     // manually query iap_https_new_firmware_installed and manually trigger
    //     // the re-boot. What we do in this example is to let the firmware updater
    //     // re-boot automatically after installing the update (see init_ota below).
    //     //
    //     // if (iap_https_new_firmware_installed()) {
    //     //     ESP_LOGI(TAG, "New firmware has been installed - rebooting...");
    //     //     esp_restart();
    //     // }
        
    //     vTaskDelay(500 / portTICK_PERIOD_MS);
    // }
    
    // Should never arrive here.
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

static void calibrate_touch_pad(touch_pad_t pad) {
    touch_pad_config(pad, 1000);

    int avg = 0;
    const size_t calibration_count = 128;
    for (int i = 0; i < calibration_count; i++)
    {
        uint16_t val;
        touch_pad_read(pad, &val);
        avg += val;
    }
    avg /= calibration_count;
    if (avg < 300)
    {
        printf("Touch pad %d is too low: %d \n"
               "Cannot use it for wake up\n", pad, avg);
        touch_pad_config(pad, 0);
    }
    else
    {
        int threshold = avg - 100;
        printf("Touch pad %d threshold set to: %d\n", pad, threshold);
        touch_pad_config(pad, threshold);
    }
}

static void init_wifi()
{
    ESP_LOGI(TAG, "Initialize WIFI network connection.");
    
    wifi_params.network_ssid = WIFI_NETWORK_SSID;
    wifi_params.network_password = WIFI_NETWORK_PASSWORD;
    
    wifi_sta_init(&wifi_params);
}

// static void init_ota()
// {
//     ESP_LOGI(TAG, "Initialising OTA firmware updating.");
    
//     ota_config.current_software_version = SOFTWARE_VERSION;
//     ota_config.server_host_name = OTA_SERVER_HOST_NAME;
//     ota_config.server_port = "8883";
//     strncpy(ota_config.server_metadata_path, OTA_SERVER_METADATA_PATH, sizeof(ota_config.server_metadata_path) / sizeof(char));
//     bzero(ota_config.server_firmware_path, sizeof(ota_config.server_firmware_path) / sizeof(char));
//     ota_config.server_root_ca_public_key_pem = server_root_ca_public_key_pem;
//     ota_config.peer_public_key_pem = peer_public_key_pem;
//     ota_config.polling_interval_s = OTA_POLLING_INTERVAL_S;
//     ota_config.auto_reboot = OTA_AUTO_REBOOT;
    
//     iap_https_init(&ota_config);
    
//     // Immediately check if there's a new firmware image available.
//     iap_https_check_now();
// }

// static esp_err_t app_event_handler(void *ctx, system_event_t *event)
// {
//     esp_err_t result = ESP_OK;
//     int handled = 0;
    
//     ESP_LOGI(TAG, "app_event_handler: event: %d", event->event_id);

//     // Let the wifi_sta module handle all WIFI STA events.
    
//     result = wifi_sta_handle_event(ctx, event, &handled);
//     if (ESP_OK != result || handled) {
//         return result;
//     }
    
//     // TODO - handle other events
    
//     ESP_LOGW(TAG, "app_event_handler: unhandled event: %d", event->event_id);
//     return ESP_OK;
// }
