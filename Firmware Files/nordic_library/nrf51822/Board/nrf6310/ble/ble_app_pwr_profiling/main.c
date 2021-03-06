/* Copyright (c) 2012 Nordic Semiconductor. All Rights Reserved.
 *
 * The information contained herein is property of Nordic Semiconductor ASA.
 * Terms and conditions of usage are described in detail in NORDIC
 * SEMICONDUCTOR STANDARD SOFTWARE LICENSE AGREEMENT.
 *
 * Licensees are granted free, non-transferable use of the information. NO
 * WARRANTY of ANY KIND is provided. This heading must NOT be removed from
 * the file.
 *
 */

/** @file
 *
 * @defgroup ble_sdk_app_pwr_mgmt_main main.c
 * @{
 * @ingroup ble_sdk_app_pwr_mgmt
 * @brief Power profiling sample application main file.
 *
 * This file contains the source code for a sample application to demonstrate/measure the power
 * consumption by the nRF51822 chip while sending notifications for a given duration and while
 * advertising in non-connectable mode for a given duration. The values of macros that begin 
 * with APP_CFG_ prefix can be changed to alter the power consumption of the application.
 *
 * @ref srvlib_conn_params module.
 */

#include <stdint.h>
#include <string.h>
#include "nordic_common.h"
#include "nrf.h"
#include "app_error.h"
#include "nrf51_bitfields.h"
#include "nrf_gpio.h"
#include "ble.h"
#include "ble_hci.h"  
#include "ble_srv_common.h"
#include "ble_advdata.h"
#include "ble_nrf6310_pins.h"
#include "ble_sensorsim.h"
#include "ble_stack_handler.h"
#include "app_timer.h"
#include "ble_error_log.h"


// User-modifiable configuration parameters.
//      The following values shall be altered when doing power profiling.

#define APP_CFG_NON_CONN_ADV_TIMEOUT  30                                            /**< Time for which the device must be advertising in non-connectable mode (in seconds). */
#define APP_CFG_CHAR_NOTIF_TIMEOUT    5000                                          /**< Time for which the device must continue to send notifications once connected to master (in milli seconds). */
#define APP_CFG_ADV_DATA_LEN          31                                            /**< Required length of the complete advertisement packet. This should be atleast 8 in order to accommodate flag field and other mandatory fields and one byte of manufacturer specific data. */
#define APP_CFG_CONNECTION_INTERVAL   20                                            /**< Connection interval used by the master (in milli seconds). This application will be sending one notification per connection interval. A repeating timer will be started with timeout value equal to this value and one notification will be sent everytime this timer expires. */
#define APP_CFG_CHAR_LEN              20                                            /**< Size of the characteristic value being notified (in bytes). */

// Fixed configuration parameters:
//      The following parameters are not meant to be changed while using this application for power
//      profiling.

#define NOTIF_BUTTON_PIN_NO           NRF6310_BUTTON_0                              /**< Button used for initializing the application in connectable mode. */
#define NON_CONN_ADV_BUTTON_PIN_NO    NRF6310_BUTTON_1                              /**< Button used for initializing the application in non-connectable mode. */

#define DEVICE_NAME                   "Nordic_Power_Mgmt"                           /**< Name of device. Will be included in the advertising data. */

#define APP_TIMER_PRESCALER           0                                             /**< Value of the RTC1 PRESCALER register. */
#define APP_TIMER_MAX_TIMERS          2                                             /**< Maximum number of simultaneously created timers. */
#define APP_TIMER_OP_QUEUE_SIZE       4                                             /**< Size of timer operation queues. */

#define CHAR_NOTIF_TIMEOUT_IN_TKS     APP_TIMER_TICKS(APP_CFG_CHAR_NOTIF_TIMEOUT,\
                                                      APP_TIMER_PRESCALER)          /**< Time for which the device must continue to send notifications once connected to master (in ticks). */

#define CONNECTABLE_ADV_INTERVAL      0x0020                                        /**< The advertising interval for connectable advertisement(in units of 0.625 ms. The value mentioned here corresponds to 25 ms. This value can vary between 0x0020 and 0x4000 (which correspond to 20ms to 10.24s). */
#define NON_CONNECTABLE_ADV_INTERVAL  0x00A0                                        /**< The advertising interval for non-connectable advertisement (in units of 0.625 ms. The value mentioned here corresponds to 25 ms. This value can vary between 0x00A0 and 0x4000 in 0.625 ms (which correspond to 100ms to 10.24s). */
#define CONNECTABLE_ADV_TIMEOUT       30                                            /**< Time for which the device must be advertising in connectable mode (in seconds). */

#define SECOND_10_MS_UNITS            100                                           /**< Definition of 1 second, when 1 unit is 10 ms. */
#define SLAVE_LATENCY                 0                                             /**< Slave latency. */
#define CONN_SUP_TIMEOUT              (4 * SECOND_10_MS_UNITS)                      /**< Connection supervisory timeout (4 seconds), Supervision Timeout uses 10 ms units. */

#define ADV_ENCODED_AD_TYPE_LEN       1                                             /**< Length of encoded ad type in advertisement data. */
#define ADV_ENCODED_AD_TYPE_LEN_LEN   1                                             /**< Length of the 'length field' of each ad type in advertisement data. */
#define ADV_FLAGS_LEN                 1                                             /**< Length of flags field that will be placed in advertisement data. */
#define ADV_ENCODED_FLAGS_LEN         (ADV_ENCODED_AD_TYPE_LEN +       \
                                       ADV_ENCODED_AD_TYPE_LEN_LEN +   \
                                       ADV_FLAGS_LEN)                               /**< Length of flags field in advertisement packet. (1 byte for encoded ad type plus 1 byte for length of flags plus the length of the flags itself). */
#define ADV_ENCODED_COMPANY_ID_LEN    2                                             /**< Length of the encoded Company Identifier in the Manufacturer Specific Data part of the advertisement data. */
#define ADV_ADDL_MANUF_DATA_LEN       (                                \
                                       APP_CFG_ADV_DATA_LEN -          \
                                       (                               \
                                        ADV_ENCODED_FLAGS_LEN +        \
                                        (                              \
                                         ADV_ENCODED_AD_TYPE_LEN +     \
                                         ADV_ENCODED_AD_TYPE_LEN_LEN + \
                                         ADV_ENCODED_COMPANY_ID_LEN    \
                                        )                              \
                                       )                               \
                                      )                                             /**< Length of Manufacturer Specific Data field that will be placed on the air during advertisement. This is computed based on the value of APP_CFG_ADV_DATA_LEN (required advertisement data length). */

#if APP_CFG_ADV_DATA_LEN > BLE_GAP_ADV_MAX_SIZE
    #error "The required advertisement data size (APP_CFG_ADV_DATA_LEN) is greater than the value allowed by stack (BLE_GAP_ADV_MAX_SIZE). Reduce the value of APP_CFG_ADV_DATA_LEN and recompile."
#endif 

// Check whether the maximum characteristic length + opcode length (1) + handle length (2) is not
// greater than default MTU size.
#if (APP_CFG_CHAR_LEN + 1 + 2) > BLE_L2CAP_MTU_DEF
    #error "The APP_CFG_CHAR_LEN is too large for the maximum MTU size."
#endif 

#if ADV_ADDL_MANUF_DATA_LEN < 1
    #error "The required length of additional manufacturer specific data computed based on the user configured values is computed to be less than 1. Consider increasing the value of APP_CFG_ADV_DATA_LEN."
#endif

#define COMPANY_IDENTIFIER            0x0059                                        /**< Company identifier for Nordic Semiconductor ASA as per www.bluetooth.org. */

#define LOCAL_SERVICE_UUID            0x1523                                        /**< Proprietary UUID for local service. */
#define LOCAL_CHAR_UUID               0x1524                                        /**< Proprietary UUID for local characteristic. */
#define LOCAL_VENDOR_UUID_INDEX       0                                             /**< Index of the 128-bit UUID base List (the structure m_base_uuid128) to be used for the UUIDs. */

#define DEAD_BEEF                     0xDEADBEEF                                    /**< Value used as error code on stack dump, can be used to identify stack location on stack unwind. */

/**@brief 128-bit UUID base List. */
static const ble_uuid128_t m_base_uuid128 =
{
   {
       0x23, 0xD1, 0xBC, 0xEA, 0x5F, 0x78, 0x23, 0x15,
       0xDE, 0xEF, 0x12, 0x12, 0x00, 0x00, 0x00, 0x00
   }
};

static ble_gap_adv_params_t     m_adv_params;                                       /**< Parameters to be passed to the stack when starting advertising. */
static uint8_t                  m_char_value[APP_CFG_CHAR_LEN];                     /**< Value of the characteristic that will be sent as a notification to the master. */
static uint8_t                  m_addl_adv_manuf_data[ADV_ADDL_MANUF_DATA_LEN];     /**< Value of the additional manufacturer specific data that will be placed in air (initialized to all zeros). */
static ble_gatts_char_handles_t m_char_handles;                                     /**< Handles of local characteristic (as provided by the BLE stack).*/
static uint16_t                 m_conn_handle = BLE_CONN_HANDLE_INVALID;            /**< Handle of the current connection (as provided by the BLE stack, is BLE_CONN_HANDLE_INVALID if not in a connection).*/
static uint16_t                 m_service_handle;                                   /**< Handle of local service (as provided by the BLE stack).*/
static bool                     m_is_notifying_enabled = false;                     /**< Variable to indicate whether the notification is enabled by the peer.*/
static app_timer_id_t           m_conn_int_timer_id;                                /**< Connection interval timer. */
static app_timer_id_t           m_notif_timer_id;                                   /**< Notification timer. */


/**@brief Error handler function, which is called when an error has occurred. 
 *
 * @param[in] error_code  Error code supplied to the handler.
 * @param[in] line_num    Line number where the handler is called.
 * @param[in] p_file_name Pointer to the file name. 
 */
void app_error_handler(uint32_t error_code, uint32_t line_num, const uint8_t * p_file_name)
{
    // Copying parameters to static variables because parameters are not accessible in debugger.
    static volatile uint8_t  s_file_name[128];
    static volatile uint16_t s_line_num;
    static volatile uint32_t s_error_code;    
        
    strcpy((char *)s_file_name, (const char *)p_file_name);
    s_line_num   = line_num;
    s_error_code = error_code;
    UNUSED_VARIABLE(s_file_name);
    UNUSED_VARIABLE(s_line_num);
    UNUSED_VARIABLE(s_error_code);    
    
    nrf_gpio_pin_set(ASSERT_LED_PIN_NO);

    (void) ble_error_log_write(DEAD_BEEF, p_file_name, line_num);

    for (;;)
    {
        // Loop forever. On assert, the system can only recover on reset.
    }
}


/**@brief Assert macro callback function.
 *
 * @details This function will be called if the ASSERT macro fails.
 *
 * @param[in]   line_num   Line number of the failing ASSERT call.
 * @param[in]   file_name  File name of the failing ASSERT call.
 */
void assert_nrf_callback(uint16_t line_num, const uint8_t * file_name)
{
    // Copying parameters to static variables because parameters are not accessible in debugger
    static volatile uint8_t  s_file_name[128];
    static volatile uint16_t s_line_num;

    strcpy((char *)s_file_name, (const char *)file_name);
    s_line_num = line_num;
    UNUSED_VARIABLE(s_file_name);
    UNUSED_VARIABLE(s_line_num);
    
    (void) ble_error_log_write(DEAD_BEEF, file_name, line_num);

    for (;;)
    {
        // Loop forever. On assert, the system can only recover on reset
    }
}


/**@brief Characteristic notification function.
 *
 * @details Sends one characterstic value notification to peer if connected to it and the
 *          notification is enabled.
 */
static void char_notify(void)
{
    uint32_t err_code;
    uint16_t len = APP_CFG_CHAR_LEN;

    // Send value if connected and notifying
    if ((m_conn_handle != BLE_CONN_HANDLE_INVALID) && m_is_notifying_enabled)
    {
        ble_gatts_hvx_params_t hvx_params;

        memset(&hvx_params, 0, sizeof(hvx_params));
        len = sizeof(uint8_t);

        hvx_params.handle   = m_char_handles.value_handle;
        hvx_params.type     = BLE_GATT_HVX_NOTIFICATION;
        hvx_params.offset   = 0;
        hvx_params.p_len    = &len;
        hvx_params.p_data   = m_char_value;

        err_code = sd_ble_gatts_hvx(m_conn_handle, &hvx_params);
        if (
            (err_code != NRF_SUCCESS)
            &&
            (err_code != NRF_ERROR_INVALID_STATE)
            &&
            (err_code != BLE_ERROR_NO_TX_BUFFERS)
            &&
            (err_code != BLE_ERROR_GATTS_SYS_ATTR_MISSING)
        )
        {
            APP_ERROR_HANDLER(err_code);
        }
    }
}


/**@brief GAP initialization.
 *
 * @details This function shall be used to setup all the necessary GAP (Generic Access Profile)
 *          parameters of the device. It also sets the permissions.
 *
 */
static void gap_params_init(void)
{
    uint32_t                err_code;
    ble_gap_conn_params_t   gap_conn_params;
    ble_gap_conn_sec_mode_t sec_mode;

    BLE_GAP_CONN_SEC_MODE_SET_OPEN(&sec_mode);
    
    err_code = sd_ble_gap_device_name_set(&sec_mode, DEVICE_NAME, strlen(DEVICE_NAME));
    APP_ERROR_CHECK(err_code);
    
    memset(&gap_conn_params, 0, sizeof(gap_conn_params));

    // Set GAP Peripheral Preferred Connection Parameters (converting connection interval from
    // milliseconds to required unit of 1.25ms).
    gap_conn_params.min_conn_interval = (4 * APP_CFG_CONNECTION_INTERVAL) / 5;
    gap_conn_params.max_conn_interval = (4 * APP_CFG_CONNECTION_INTERVAL) / 5;
    gap_conn_params.slave_latency     = SLAVE_LATENCY;
    gap_conn_params.conn_sup_timeout  = CONN_SUP_TIMEOUT;

    err_code = sd_ble_gap_ppcp_set(&gap_conn_params);
    APP_ERROR_CHECK(err_code);
}


/**@brief Connectable advertisement parameters init function.
 *
 * @details This function initializes the advertisement parameters to values that will put 
 *          the application in connectable mode.
 *
 */
static void connectable_adv_init(void)
{
    // Initialise advertising parameters (used when starting advertising)
    memset(&m_adv_params, 0, sizeof(m_adv_params));
    
    m_adv_params.type        = BLE_GAP_ADV_TYPE_ADV_IND ;
    m_adv_params.p_peer_addr = NULL;                               // Undirected advertisement
    m_adv_params.fp          = BLE_GAP_ADV_FP_ANY;
    m_adv_params.interval    = CONNECTABLE_ADV_INTERVAL;
    m_adv_params.timeout     = CONNECTABLE_ADV_TIMEOUT;
}


/**@brief Non-Connectable advertisement parameters init function.
 *
 * @details This function initializes the advertisement parameters to values that will put 
 *          the application in non-connectable mode.
 *
 */
static void non_connectable_adv_init(void)
{
    // Initialise advertising parameters (used when starting advertising)
    memset(&m_adv_params, 0, sizeof(m_adv_params));

    m_adv_params.type        = BLE_GAP_ADV_TYPE_ADV_NONCONN_IND;
    m_adv_params.p_peer_addr = NULL;                               // Undirected advertisement
    m_adv_params.fp          = BLE_GAP_ADV_FP_ANY;
    m_adv_params.interval    = NON_CONNECTABLE_ADV_INTERVAL;
    m_adv_params.timeout     = APP_CFG_NON_CONN_ADV_TIMEOUT;
}


/**@brief Advertisement paccket init function.
 *
 * @details This function initializes the data that is to be placed in an advertisement packet in 
 *          both connectable and non-connectable modes.
 *
 */
static void advertising_data_init(void)
{
    uint32_t                   err_code;
    ble_advdata_t              advdata;
    ble_advdata_manuf_data_t   manuf_data;
    uint8_t                    flags = BLE_GAP_ADV_FLAGS_LE_ONLY_LIMITED_DISC_MODE;

    APP_ERROR_CHECK_BOOL(sizeof(flags) == ADV_FLAGS_LEN);  // Assert that these two values of the same.

    // Build and set advertising data
    memset(&advdata, 0, sizeof(advdata));

    manuf_data.company_identifier = COMPANY_IDENTIFIER;
    manuf_data.data.size          = ADV_ADDL_MANUF_DATA_LEN;
    manuf_data.data.p_data        = m_addl_adv_manuf_data;
    advdata.flags.size            = sizeof(flags);
    advdata.flags.p_data          = &flags;
    advdata.p_manuf_specific_data = &manuf_data;

    err_code = ble_advdata_set(&advdata, NULL);
    APP_ERROR_CHECK(err_code);
}


/**@brief Characteristic add function.
 *
 * @details This function adds the characteristic to the local db.
 *
 */
static void char_add(void)
{
    uint32_t            err_code;
    ble_gatts_char_md_t char_md;
    ble_gatts_attr_md_t cccd_md;
    ble_gatts_attr_t    attr_char_value;
    ble_uuid_t          char_uuid;
    ble_gatts_attr_md_t attr_md;

    memset(&cccd_md, 0, sizeof(cccd_md));

    cccd_md.vloc = BLE_GATTS_VLOC_STACK;
    BLE_GAP_CONN_SEC_MODE_SET_OPEN(&cccd_md.read_perm);
    BLE_GAP_CONN_SEC_MODE_SET_OPEN(&cccd_md.write_perm);

    memset(&char_md, 0, sizeof(char_md));

    char_md.char_props.read   = 1;
    char_md.char_props.notify = 1;
    char_md.p_char_user_desc       = NULL;
    char_md.p_char_pf              = NULL;
    char_md.p_user_desc_md         = NULL;
    char_md.p_cccd_md              = &cccd_md;
    char_md.p_sccd_md              = NULL;

    char_uuid.type = BLE_UUID_TYPE_VENDOR_BEGIN + LOCAL_VENDOR_UUID_INDEX;  // Position of the Vender specific ID base in m_base_uuid128.
    char_uuid.uuid = LOCAL_CHAR_UUID;

    memset(&attr_md, 0, sizeof(attr_md));

    BLE_GAP_CONN_SEC_MODE_SET_OPEN(&attr_md.read_perm);
    BLE_GAP_CONN_SEC_MODE_SET_NO_ACCESS(&attr_md.write_perm);

    attr_md.vloc       = BLE_GATTS_VLOC_STACK;
    attr_md.rd_auth    = 0;
    attr_md.wr_auth    = 0;
    attr_md.vlen       = 0;

    memset(&attr_char_value, 0, sizeof(attr_char_value));

    attr_char_value.p_uuid       = &char_uuid;
    attr_char_value.p_attr_md    = &attr_md;
    attr_char_value.init_len     = APP_CFG_CHAR_LEN;
    attr_char_value.init_offs    = 0;
    attr_char_value.max_len      = APP_CFG_CHAR_LEN;
    attr_char_value.p_value      = m_char_value;

    err_code = sd_ble_gatts_characteristic_add(m_service_handle,
                                            &char_md,
                                            &attr_char_value,
                                            &m_char_handles);
    APP_ERROR_CHECK(err_code);
}


/**@brief Service add function.
 *
 * @details This function adds the service and the characteristic within it to the local db.
 *
 */
static void service_add(void)
{
    ble_uuid_t  service_uuid;
    uint32_t    err_code;

    service_uuid.type = BLE_UUID_TYPE_VENDOR_BEGIN + LOCAL_VENDOR_UUID_INDEX;  // Position of the Vender specific ID base in m_base_uuid128.
    service_uuid.uuid = LOCAL_SERVICE_UUID;

    err_code = sd_ble_uuid_vs_add(&m_base_uuid128, &service_uuid.type);
    APP_ERROR_CHECK(err_code);
    

    err_code = sd_ble_gatts_service_add(BLE_GATTS_SRVC_TYPE_PRIMARY, &service_uuid, &m_service_handle);
    APP_ERROR_CHECK(err_code);

    // Add characteristics
    char_add();
}


/**@brief Notification timeout handler.
 *
 * @details This function will be called when the notification timer expires. This will stop the
 *          timer for connection interval and disconnect from the peer.
 *
 * @param[in]   p_context   Pointer used for passing some arbitrary information (context) from the
 *                          app_start_timer() call to the timeout handler.
 */
static void notif_timeout_handler(void * p_context)
{
    uint32_t err_code;
    
    UNUSED_PARAMETER(p_context);

    // Stop all notifications (by stopping the timer for connection interval that triggers 
    // notifications and disconnecting from peer)
    err_code = app_timer_stop(m_conn_int_timer_id); 
    APP_ERROR_CHECK(err_code);

    err_code = sd_ble_gap_disconnect(m_conn_handle, BLE_HCI_REMOTE_USER_TERMINATED_CONNECTION);
    APP_ERROR_CHECK(err_code);
}


/**@brief Connection interval timeout handler.
 *
 * @details This function will be called when the connection interval timer expires. This will
 *          trigger another characteristic notification to the peer.
 *
 * @param[in]   p_context   Pointer used for passing some arbitrary information (context) from the
 *                          app_start_timer() call to the timeout handler.
 */
static void connection_interval_timeout_handler(void * p_context)
{
    UNUSED_PARAMETER(p_context);

    // Into next connection interval. Send one notification.
    char_notify();
}


/**@brief Start application timers.
 *
 * @details This function will be start two timers - one for the time duration for which 
 *          notifications have to be sent to the peer and another for the interval between two 
 *          notifications (which is also the connection interval).
 */
static void application_timers_start(void)
{
    uint32_t err_code;

    // Start connection interval timer.     
    err_code = app_timer_start(m_conn_int_timer_id,
                               APP_TIMER_TICKS(APP_CFG_CONNECTION_INTERVAL, APP_TIMER_PRESCALER),
                               NULL);
    APP_ERROR_CHECK(err_code);

    // Start characteristic notification timer.
    err_code = app_timer_start(m_notif_timer_id, CHAR_NOTIF_TIMEOUT_IN_TKS, NULL);
    APP_ERROR_CHECK(err_code);
}


/**@brief Stop application timers.
 */
static void application_timers_stop(void)
{
    uint32_t err_code;
    
    err_code = app_timer_stop(m_notif_timer_id);
    APP_ERROR_CHECK(err_code);
    err_code = app_timer_stop(m_conn_int_timer_id);
    APP_ERROR_CHECK(err_code);
}


/**@brief Start advertising.
 */
static void advertising_start(void)
{
    uint32_t err_code;
    
    err_code = sd_ble_gap_adv_start(&m_adv_params);
    APP_ERROR_CHECK(err_code);
}


/**@brief Timer initialization.
 *
* @details Initializes the timer module.
*/
static void timers_init(void)
{
    uint32_t err_code;

    // Initialize timer module
    APP_TIMER_INIT(APP_TIMER_PRESCALER, APP_TIMER_MAX_TIMERS, APP_TIMER_OP_QUEUE_SIZE, false);

    // Create timers
    err_code = app_timer_create(&m_conn_int_timer_id,
                                APP_TIMER_MODE_REPEATED,
                                connection_interval_timeout_handler);
    APP_ERROR_CHECK(err_code);

    err_code = app_timer_create(&m_notif_timer_id,
                                APP_TIMER_MODE_SINGLE_SHOT,
                                notif_timeout_handler);
    APP_ERROR_CHECK(err_code);
}


/**@brief Funtion that evaluates the value written in CCCD 
 *
 * @details This shall be called when there is a write event received from the stack. This 
 *          function will evaluate whether or not the peer has enabled notifications and
 *          start/stop notifications accordingly.
 *
 * @param[in]   p_ble_evt   Bluetooth stack event.
 */
static void on_write(ble_evt_t * p_ble_evt)
{
    ble_gatts_evt_write_t * p_evt_write = &p_ble_evt->evt.gatts_evt.params.write;

    if (
       (p_evt_write->handle == m_char_handles.cccd_handle)
       &&
       (p_evt_write->len == 2)
    )
    {
        // CCCD written. Start notifications
        m_is_notifying_enabled = ble_srv_is_notification_enabled(p_evt_write->data);

        if (m_is_notifying_enabled)
        {
            application_timers_start();
            char_notify();
        }
        else
        {
            application_timers_stop();
        }
    }
}


/**@brief Application's BLE Stack event handler.
 *
 * @param[in]   p_ble_evt   Bluetooth stack event.
 */
static void on_ble_evt(ble_evt_t * p_ble_evt)
{
    uint32_t err_code = NRF_SUCCESS;
    
    switch (p_ble_evt->header.evt_id)
    {
        case BLE_GAP_EVT_CONNECTED:
            m_conn_handle = p_ble_evt->evt.gap_evt.conn_handle;
            break;
            
        case BLE_GAP_EVT_DISCONNECTED:
            m_conn_handle = BLE_CONN_HANDLE_INVALID;
            
            application_timers_stop();
            
            // Go to system-off mode            
            err_code = sd_power_system_off();
            break;

        case BLE_GATTS_EVT_SYS_ATTR_MISSING:
            err_code = sd_ble_gatts_sys_attr_set(m_conn_handle, NULL, 0);
            break;

        case BLE_GAP_EVT_TIMEOUT:
            if (p_ble_evt->evt.gap_evt.params.timeout.src == BLE_GAP_TIMEOUT_SRC_ADVERTISEMENT)
            { 
                // Go to system-off mode (this function will not return; wakeup will cause a reset)
                err_code = sd_power_system_off(); 
            }
            break;
            
        case BLE_GATTS_EVT_WRITE:
            on_write(p_ble_evt);
            break;

        default:
            break;
    }
    
    APP_ERROR_CHECK(err_code);
}


/**@brief Dispatches a BLE stack event to all modules with a BLE stack event handler.
 *
 * @details This function is called from the BLE Stack event interrupt handler after a BLE stack
 *          event has been received.
 *
 * @param[in]   p_ble_evt   Bluetooth stack event.
 */
static void ble_evt_dispatch(ble_evt_t * p_ble_evt)
{
    on_ble_evt(p_ble_evt);
}


/**@brief BLE stack initialization.
 *
 * @details Initializes the SoftDevice and the BLE event interrupt.
 */
static void ble_stack_init(void)
{
    BLE_STACK_HANDLER_INIT(NRF_CLOCK_LFCLKSRC_XTAL_20_PPM,
                           BLE_L2CAP_MTU_DEF,
                           ble_evt_dispatch,
                           false);
}


/**@brief Use the GPIO module to configure the required buttons.
 */
static void buttons_init(void)
{
    GPIO_WAKEUP_BUTTON_CONFIG(NOTIF_BUTTON_PIN_NO);
    GPIO_WAKEUP_BUTTON_CONFIG(NON_CONN_ADV_BUTTON_PIN_NO);
}


/**@brief Power manager.
 */
static void power_manage(void)
{
    uint32_t err_code = sd_app_event_wait();
    APP_ERROR_CHECK(err_code);
}


/**@brief Application main function.
 */
int main(void)
{
    bool is_notification_mode    = false;
    bool is_non_connectable_mode = false;

    buttons_init();

    // Check button states
    // Notification Start button
    if (nrf_gpio_pin_read(NOTIF_BUTTON_PIN_NO) == 0)    
    {
        is_notification_mode = true;
    }
    // Non-connectable advertisement start button
    else if (nrf_gpio_pin_read(NON_CONN_ADV_BUTTON_PIN_NO) == 0)
    {
        is_non_connectable_mode = true;
    }

    // Initialize soft device
    ble_stack_init();

    if (!is_notification_mode && !is_non_connectable_mode)
    {
        uint32_t err_code;

        // The startup was not because of button presses. This is the first start. 
        // Go into System-Off mode. Button presses will wake the chip up.
        err_code = sd_power_system_off();  
        APP_ERROR_CHECK(err_code);
    }
    
    // If we reach this point, the application was woken up by pressing one of the two configured
    // buttons.

    timers_init();
    gap_params_init();

    if (is_notification_mode)
    {
        // Notification button is pressed. Start connectable advertisement.
        connectable_adv_init();
        service_add();
    }
    else
    {
        non_connectable_adv_init();
    }
    
    advertising_data_init();
    advertising_start();

    // Enter main loop
    for (;;)
    {
        power_manage();
    }
}

/** 
 * @}
 */
