# 1 "C:/esp/esp-idf/components/bootloader_support/src/bootloader_random.c"
# 1 "C:\\esp\\ArkPOS2-esp\\build\\bootloader\\bootloader_support//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "C:/esp/esp-idf/components/bootloader_support/src/bootloader_random.c"
# 14 "C:/esp/esp-idf/components/bootloader_support/src/bootloader_random.c"
# 1 "C:/esp/esp-idf/components/bootloader_support/include_priv/bootloader_random.h" 1
# 15 "C:/esp/esp-idf/components/bootloader_support/include_priv/bootloader_random.h"
       

# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 149 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 3 4

# 149 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 3 4
typedef int ptrdiff_t;
# 216 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 3 4
typedef unsigned int size_t;
# 328 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 3 4
typedef short unsigned int wchar_t;
# 18 "C:/esp/esp-idf/components/bootloader_support/include_priv/bootloader_random.h" 2
# 33 "C:/esp/esp-idf/components/bootloader_support/include_priv/bootloader_random.h"

# 33 "C:/esp/esp-idf/components/bootloader_support/include_priv/bootloader_random.h"
void bootloader_random_enable(void);







void bootloader_random_disable(void);







void bootloader_fill_random(void *buffer, size_t length);
# 15 "C:/esp/esp-idf/components/bootloader_support/src/bootloader_random.c" 2
# 1 "C:/esp/esp-idf/components/soc/esp32/include/soc/cpu.h" 1
# 18 "C:/esp/esp-idf/components/soc/esp32/include/soc/cpu.h"
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stdint.h" 1 3 4
# 9 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stdint.h" 3 4
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\stdint.h" 1 3 4
# 12 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\stdint.h" 3 4
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\machine\\_default_types.h" 1 3 4
# 11 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\machine\\_default_types.h" 3 4
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\sys\\features.h" 1 3 4
# 12 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\machine\\_default_types.h" 2 3 4






# 17 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\machine\\_default_types.h" 3 4
typedef signed char __int8_t ;
typedef unsigned char __uint8_t ;


typedef signed short __int16_t;
typedef unsigned short __uint16_t;


typedef signed int __int32_t;
typedef unsigned int __uint32_t;


typedef signed long long __int64_t;
typedef unsigned long long __uint64_t;


typedef __int8_t __int_least8_t;
typedef __uint8_t __uint_least8_t;


typedef __int16_t __int_least16_t;
typedef __uint16_t __uint_least16_t;


typedef __int32_t __int_least32_t;
typedef __uint32_t __uint_least32_t;


typedef __int64_t __int_least64_t;
typedef __uint64_t __uint_least64_t;


typedef int __intptr_t;
typedef unsigned int __uintptr_t;
# 13 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\stdint.h" 2 3 4
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\sys\\_intsup.h" 1 3 4
# 14 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\stdint.h" 2 3 4






typedef __int8_t int8_t ;
typedef __uint8_t uint8_t ;




typedef __int_least8_t int_least8_t;
typedef __uint_least8_t uint_least8_t;




typedef __int16_t int16_t ;
typedef __uint16_t uint16_t ;




typedef __int_least16_t int_least16_t;
typedef __uint_least16_t uint_least16_t;




typedef __int32_t int32_t ;
typedef __uint32_t uint32_t ;




typedef __int_least32_t int_least32_t;
typedef __uint_least32_t uint_least32_t;




typedef __int64_t int64_t ;
typedef __uint64_t uint64_t ;




typedef __int_least64_t int_least64_t;
typedef __uint_least64_t uint_least64_t;
# 74 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\stdint.h" 3 4
  typedef int int_fast8_t;
  typedef unsigned int uint_fast8_t;
# 84 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\stdint.h" 3 4
  typedef int int_fast16_t;
  typedef unsigned int uint_fast16_t;
# 94 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\stdint.h" 3 4
  typedef int int_fast32_t;
  typedef unsigned int uint_fast32_t;
# 104 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\stdint.h" 3 4
  typedef long long int int_fast64_t;
  typedef long long unsigned int uint_fast64_t;
# 153 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\stdint.h" 3 4
  typedef long long int intmax_t;
# 162 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\stdint.h" 3 4
  typedef long long unsigned int uintmax_t;






typedef __intptr_t intptr_t;
typedef __uintptr_t uintptr_t;
# 10 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stdint.h" 2 3 4
# 19 "C:/esp/esp-idf/components/soc/esp32/include/soc/cpu.h" 2
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stdbool.h" 1 3 4
# 20 "C:/esp/esp-idf/components/soc/esp32/include/soc/cpu.h" 2
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 21 "C:/esp/esp-idf/components/soc/esp32/include/soc/cpu.h" 2
# 1 "C:/esp/esp-idf/components/esp32/include/xtensa/corebits.h" 1
# 22 "C:/esp/esp-idf/components/soc/esp32/include/soc/cpu.h" 2
# 32 "C:/esp/esp-idf/components/soc/esp32/include/soc/cpu.h"

# 32 "C:/esp/esp-idf/components/soc/esp32/include/soc/cpu.h"
static inline void *get_sp()
{
    void *sp;
    asm volatile ("mov %0, sp;" : "=r" (sp));
    return sp;
}





static inline void cpu_write_dtlb(uint32_t vpn, unsigned attr)
{
    asm volatile ("wdtlb  %1, %0; dsync\n" :: "r" (vpn), "r" (attr));
}


static inline void cpu_write_itlb(unsigned vpn, unsigned attr)
{
    asm volatile ("witlb  %1, %0; isync\n" :: "r" (vpn), "r" (attr));
}
# 65 "C:/esp/esp-idf/components/soc/esp32/include/soc/cpu.h"
static inline void cpu_configure_region_protection()
{
    const uint32_t pages_to_protect[] = {0x00000000, 0x80000000, 0xa0000000, 0xc0000000, 0xe0000000};
    for (int i = 0; i < sizeof(pages_to_protect)/sizeof(pages_to_protect[0]); ++i) {
        cpu_write_dtlb(pages_to_protect[i], 0xf);
        cpu_write_itlb(pages_to_protect[i], 0xf);
    }
    cpu_write_dtlb(0x20000000, 0);
    cpu_write_itlb(0x20000000, 0);
}





void esp_cpu_stall(int cpu_id);





void esp_cpu_unstall(int cpu_id);
# 95 "C:/esp/esp-idf/components/soc/esp32/include/soc/cpu.h"

# 95 "C:/esp/esp-idf/components/soc/esp32/include/soc/cpu.h" 3 4
_Bool 
# 95 "C:/esp/esp-idf/components/soc/esp32/include/soc/cpu.h"
    esp_cpu_in_ocd_debug_mode();
# 16 "C:/esp/esp-idf/components/bootloader_support/src/bootloader_random.c" 2
# 1 "C:/esp/esp-idf/components/soc/esp32/include/soc/wdev_reg.h" 1
# 15 "C:/esp/esp-idf/components/soc/esp32/include/soc/wdev_reg.h"
       

# 1 "C:/esp/esp-idf/components/soc/esp32/include/soc/soc.h" 1
# 20 "C:/esp/esp-idf/components/soc/esp32/include/soc/soc.h"
# 1 "C:/esp/esp-idf/components/esp32/include/esp_assert.h" 1
# 17 "C:/esp/esp-idf/components/esp32/include/esp_assert.h"
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\assert.h" 1 3
# 9 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\assert.h" 3
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\_ansi.h" 1 3
# 15 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\_ansi.h" 3
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\newlib.h" 1 3
# 16 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\_ansi.h" 2 3
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\sys\\config.h" 1 3



# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\machine\\ieeefp.h" 1 3
# 5 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\sys\\config.h" 2 3
# 189 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\sys\\config.h" 3
# 1 "C:/esp/esp-idf/components/esp32/include/xtensa/config/core-isa.h" 1 3
# 190 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\sys\\config.h" 2 3
# 17 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\_ansi.h" 2 3
# 10 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\assert.h" 2 3
# 39 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\assert.h" 3

# 39 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\assert.h" 3
void __assert (const char *, int, const char *) __attribute__ ((__noreturn__))
                                 ;
void __assert_func (const char *, int, const char *, const char *) __attribute__ ((__noreturn__))
                                 ;
# 18 "C:/esp/esp-idf/components/esp32/include/esp_assert.h" 2
# 21 "C:/esp/esp-idf/components/soc/esp32/include/soc/soc.h" 2
# 18 "C:/esp/esp-idf/components/soc/esp32/include/soc/wdev_reg.h" 2
# 17 "C:/esp/esp-idf/components/bootloader_support/src/bootloader_random.c" 2
# 1 "C:/esp/esp-idf/components/soc/esp32/include/soc/rtc_cntl_reg.h" 1
# 18 "C:/esp/esp-idf/components/bootloader_support/src/bootloader_random.c" 2
# 1 "C:/esp/esp-idf/components/soc/esp32/include/soc/sens_reg.h" 1
# 19 "C:/esp/esp-idf/components/bootloader_support/src/bootloader_random.c" 2
# 1 "C:/esp/esp-idf/components/soc/esp32/include/soc/syscon_reg.h" 1
# 20 "C:/esp/esp-idf/components/bootloader_support/src/bootloader_random.c" 2
# 1 "C:/esp/esp-idf/components/soc/esp32/include/soc/dport_reg.h" 1
# 20 "C:/esp/esp-idf/components/soc/esp32/include/soc/dport_reg.h"
# 1 "C:/esp/esp-idf/components/soc/esp32/include/soc/dport_access.h" 1
# 19 "C:/esp/esp-idf/components/soc/esp32/include/soc/dport_access.h"
# 1 "C:/esp/esp-idf/components/esp32/include/esp_attr.h" 1
# 20 "C:/esp/esp-idf/components/soc/esp32/include/soc/dport_access.h" 2
# 1 "C:/esp/esp-idf/components/esp32/include/esp_dport_access.h" 1
# 15 "C:/esp/esp-idf/components/esp32/include/esp_dport_access.h"
# 1 "c:\\esp\\arkpos2-esp\\build\\include\\sdkconfig.h" 1
# 16 "C:/esp/esp-idf/components/esp32/include/esp_dport_access.h" 2
# 24 "C:/esp/esp-idf/components/esp32/include/esp_dport_access.h"

# 24 "C:/esp/esp-idf/components/esp32/include/esp_dport_access.h"
void esp_dport_access_stall_other_cpu_start(void);
void esp_dport_access_stall_other_cpu_end(void);
void esp_dport_access_int_init(void);
void esp_dport_access_int_pause(void);
void esp_dport_access_int_resume(void);



void esp_dport_access_int_abort(void);
# 21 "C:/esp/esp-idf/components/soc/esp32/include/soc/dport_access.h" 2
# 43 "C:/esp/esp-idf/components/soc/esp32/include/soc/dport_access.h"
static inline uint32_t __attribute__((section(".iram1"))) DPORT_REG_READ(uint32_t reg)
{
    uint32_t val;

    ;
    val = (*(volatile uint32_t *)(reg));
    ;

    return val;
}
# 97 "C:/esp/esp-idf/components/soc/esp32/include/soc/dport_access.h"
static inline uint32_t __attribute__((section(".iram1"))) DPORT_READ_PERI_REG(uint32_t addr)
{
    uint32_t val;

    ;
    val = (*((volatile uint32_t *)(addr)));
    ;

    return val;
}
# 21 "C:/esp/esp-idf/components/soc/esp32/include/soc/dport_reg.h" 2
# 21 "C:/esp/esp-idf/components/bootloader_support/src/bootloader_random.c" 2
# 1 "C:/esp/esp-idf/components/soc/esp32/include/soc/i2s_reg.h" 1
# 22 "C:/esp/esp-idf/components/bootloader_support/src/bootloader_random.c" 2
# 1 "C:/esp/esp-idf/components/log/include/esp_log.h" 1
# 19 "C:/esp/esp-idf/components/log/include/esp_log.h"
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stdarg.h" 1 3 4
# 40 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stdarg.h" 3 4

# 40 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 98 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stdarg.h" 3 4
typedef __gnuc_va_list va_list;
# 20 "C:/esp/esp-idf/components/log/include/esp_log.h" 2
# 1 "c:\\esp\\arkpos2-esp\\build\\include\\sdkconfig.h" 1
# 21 "C:/esp/esp-idf/components/log/include/esp_log.h" 2
# 1 "C:/esp/esp-idf/components/esp32/include/rom/ets_sys.h" 1
# 21 "C:/esp/esp-idf/components/esp32/include/rom/ets_sys.h"
# 1 "C:/esp/esp-idf/components/soc/esp32/include/soc/soc.h" 1
# 22 "C:/esp/esp-idf/components/esp32/include/rom/ets_sys.h" 2
# 54 "C:/esp/esp-idf/components/esp32/include/rom/ets_sys.h"

# 54 "C:/esp/esp-idf/components/esp32/include/rom/ets_sys.h"
typedef enum {
    ETS_OK = 0,
    ETS_FAILED = 1
} ETS_STATUS;

typedef uint32_t ETSSignal;
typedef uint32_t ETSParam;

typedef struct ETSEventTag ETSEvent;

struct ETSEventTag {
    ETSSignal sig;
    ETSParam par;
};

typedef void (*ETSTask)(ETSEvent *e);
typedef void (* ets_idle_cb_t)(void *arg);
# 79 "C:/esp/esp-idf/components/esp32/include/rom/ets_sys.h"
void ets_run(void);
# 90 "C:/esp/esp-idf/components/esp32/include/rom/ets_sys.h"
void ets_set_idle_cb(ets_idle_cb_t func, void *arg);
# 105 "C:/esp/esp-idf/components/esp32/include/rom/ets_sys.h"
void ets_task(ETSTask task, uint8_t prio, ETSEvent *queue, uint8_t qlen);
# 119 "C:/esp/esp-idf/components/esp32/include/rom/ets_sys.h"
ETS_STATUS ets_post(uint8_t prio, ETSSignal sig, ETSParam par);
# 133 "C:/esp/esp-idf/components/esp32/include/rom/ets_sys.h"
extern const char *const exc_cause_table[40];
# 143 "C:/esp/esp-idf/components/esp32/include/rom/ets_sys.h"
void ets_set_user_start(uint32_t start);
# 153 "C:/esp/esp-idf/components/esp32/include/rom/ets_sys.h"
void ets_set_startup_callback(uint32_t callback);
# 163 "C:/esp/esp-idf/components/esp32/include/rom/ets_sys.h"
void ets_set_appcpu_boot_addr(uint32_t start);
# 179 "C:/esp/esp-idf/components/esp32/include/rom/ets_sys.h"
ETS_STATUS ets_unpack_flash_code_legacy(uint32_t pos, uint32_t *entry_addr, 
# 179 "C:/esp/esp-idf/components/esp32/include/rom/ets_sys.h" 3 4
                                                                           _Bool 
# 179 "C:/esp/esp-idf/components/esp32/include/rom/ets_sys.h"
                                                                                jump, 
# 179 "C:/esp/esp-idf/components/esp32/include/rom/ets_sys.h" 3 4
                                                                                      _Bool 
# 179 "C:/esp/esp-idf/components/esp32/include/rom/ets_sys.h"
                                                                                           config);
# 197 "C:/esp/esp-idf/components/esp32/include/rom/ets_sys.h"
ETS_STATUS ets_unpack_flash_code(uint32_t pos, uint32_t *entry_addr, 
# 197 "C:/esp/esp-idf/components/esp32/include/rom/ets_sys.h" 3 4
                                                                    _Bool 
# 197 "C:/esp/esp-idf/components/esp32/include/rom/ets_sys.h"
                                                                         jump, 
# 197 "C:/esp/esp-idf/components/esp32/include/rom/ets_sys.h" 3 4
                                                                               _Bool 
# 197 "C:/esp/esp-idf/components/esp32/include/rom/ets_sys.h"
                                                                                    sb_need_check, 
# 197 "C:/esp/esp-idf/components/esp32/include/rom/ets_sys.h" 3 4
                                                                                                   _Bool 
# 197 "C:/esp/esp-idf/components/esp32/include/rom/ets_sys.h"
                                                                                                        config);
# 222 "C:/esp/esp-idf/components/esp32/include/rom/ets_sys.h"
int ets_printf(const char *fmt, ...);
# 232 "C:/esp/esp-idf/components/esp32/include/rom/ets_sys.h"
void ets_write_char_uart(char c);
# 242 "C:/esp/esp-idf/components/esp32/include/rom/ets_sys.h"
void ets_install_putc1(void (*p)(char c));
# 252 "C:/esp/esp-idf/components/esp32/include/rom/ets_sys.h"
void ets_install_putc2(void (*p)(char c));
# 262 "C:/esp/esp-idf/components/esp32/include/rom/ets_sys.h"
void ets_install_uart_printf(void);
# 284 "C:/esp/esp-idf/components/esp32/include/rom/ets_sys.h"
typedef void ETSTimerFunc(void *timer_arg);

typedef struct _ETSTIMER_ {
    struct _ETSTIMER_ *timer_next;
    uint32_t timer_expire;
    uint32_t timer_period;
    ETSTimerFunc *timer_func;
    void *timer_arg;
} ETSTimer;
# 302 "C:/esp/esp-idf/components/esp32/include/rom/ets_sys.h"
void ets_timer_init(void);
# 316 "C:/esp/esp-idf/components/esp32/include/rom/ets_sys.h"
void ets_timer_arm(ETSTimer *timer, uint32_t tmout, 
# 316 "C:/esp/esp-idf/components/esp32/include/rom/ets_sys.h" 3 4
                                                   _Bool 
# 316 "C:/esp/esp-idf/components/esp32/include/rom/ets_sys.h"
                                                        repeat);
# 330 "C:/esp/esp-idf/components/esp32/include/rom/ets_sys.h"
void ets_timer_arm_us(ETSTimer *ptimer, uint32_t us, 
# 330 "C:/esp/esp-idf/components/esp32/include/rom/ets_sys.h" 3 4
                                                    _Bool 
# 330 "C:/esp/esp-idf/components/esp32/include/rom/ets_sys.h"
                                                         repeat);
# 340 "C:/esp/esp-idf/components/esp32/include/rom/ets_sys.h"
void ets_timer_disarm(ETSTimer *timer);
# 354 "C:/esp/esp-idf/components/esp32/include/rom/ets_sys.h"
void ets_timer_setfn(ETSTimer *ptimer, ETSTimerFunc *pfunction, void *parg);
# 364 "C:/esp/esp-idf/components/esp32/include/rom/ets_sys.h"
void ets_timer_done(ETSTimer *ptimer);
# 374 "C:/esp/esp-idf/components/esp32/include/rom/ets_sys.h"
void ets_delay_us(uint32_t us);
# 384 "C:/esp/esp-idf/components/esp32/include/rom/ets_sys.h"
void ets_update_cpu_frequency(uint32_t ticks_per_us);
# 396 "C:/esp/esp-idf/components/esp32/include/rom/ets_sys.h"
void ets_update_cpu_frequency_rom(uint32_t ticks_per_us);
# 406 "C:/esp/esp-idf/components/esp32/include/rom/ets_sys.h"
uint32_t ets_get_cpu_frequency(void);
# 415 "C:/esp/esp-idf/components/esp32/include/rom/ets_sys.h"
uint32_t ets_get_xtal_scale(void);
# 428 "C:/esp/esp-idf/components/esp32/include/rom/ets_sys.h"
uint32_t ets_get_detected_xtal_freq(void);
# 442 "C:/esp/esp-idf/components/esp32/include/rom/ets_sys.h"
typedef void (* ets_isr_t)(void *);
# 457 "C:/esp/esp-idf/components/esp32/include/rom/ets_sys.h"
void ets_isr_attach(int i, ets_isr_t func, void *arg);
# 468 "C:/esp/esp-idf/components/esp32/include/rom/ets_sys.h"
void ets_isr_mask(uint32_t mask);
# 479 "C:/esp/esp-idf/components/esp32/include/rom/ets_sys.h"
void ets_isr_unmask(uint32_t unmask);
# 490 "C:/esp/esp-idf/components/esp32/include/rom/ets_sys.h"
void ets_intr_lock(void);
# 501 "C:/esp/esp-idf/components/esp32/include/rom/ets_sys.h"
void ets_intr_unlock(void);
# 512 "C:/esp/esp-idf/components/esp32/include/rom/ets_sys.h"
void ets_waiti0(void);
# 530 "C:/esp/esp-idf/components/esp32/include/rom/ets_sys.h"
void intr_matrix_set(int cpu_no, uint32_t model_num, uint32_t intr_num);
# 620 "C:/esp/esp-idf/components/esp32/include/rom/ets_sys.h"
typedef enum {
    OK = 0,
    FAIL,
    PENDING,
    BUSY,
    CANCEL,
} STATUS;
# 22 "C:/esp/esp-idf/components/log/include/esp_log.h" 2
# 31 "C:/esp/esp-idf/components/log/include/esp_log.h"
typedef enum {
    ESP_LOG_NONE,
    ESP_LOG_ERROR,
    ESP_LOG_WARN,
    ESP_LOG_INFO,
    ESP_LOG_DEBUG,
    ESP_LOG_VERBOSE
} esp_log_level_t;

typedef int (*vprintf_like_t)(const char *, va_list);
# 52 "C:/esp/esp-idf/components/log/include/esp_log.h"
void esp_log_level_set(const char* tag, esp_log_level_t level);
# 62 "C:/esp/esp-idf/components/log/include/esp_log.h"
void esp_log_set_vprintf(vprintf_like_t func);
# 76 "C:/esp/esp-idf/components/log/include/esp_log.h"
uint32_t esp_log_timestamp(void);
# 86 "C:/esp/esp-idf/components/log/include/esp_log.h"
uint32_t esp_log_early_timestamp(void);
# 96 "C:/esp/esp-idf/components/log/include/esp_log.h"
void esp_log_write(esp_log_level_t level, const char* tag, const char* format, ...) __attribute__ ((format (printf, 3, 4)));

# 1 "C:/esp/esp-idf/components/log/include/esp_log_internal.h" 1
# 19 "C:/esp/esp-idf/components/log/include/esp_log_internal.h"
void esp_log_buffer_hex_internal(const char *tag, const void *buffer, uint16_t buff_len, esp_log_level_t level);
void esp_log_buffer_char_internal(const char *tag, const void *buffer, uint16_t buff_len, esp_log_level_t level);
void esp_log_buffer_hexdump_internal( const char *tag, const void *buffer, uint16_t buff_len, esp_log_level_t log_level);
# 99 "C:/esp/esp-idf/components/log/include/esp_log.h" 2
# 23 "C:/esp/esp-idf/components/bootloader_support/src/bootloader_random.c" 2





const char *TAG = "boot_rng";

void bootloader_fill_random(void *buffer, size_t length)
{
    uint8_t *buffer_bytes = (uint8_t *)buffer;
    uint32_t random;

    uint32_t start, now;


    for (int i = 0; i < length; i++) {
        if (i == 0 || i % 4 == 0) {
# 48 "C:/esp/esp-idf/components/bootloader_support/src/bootloader_random.c"
            random = ({ ; (*(volatile uint32_t *)(0x60035144)); });
            asm volatile ("rsr %0, " "CCOUNT" : "=r" (start));;
            do {
                random ^= ({ ; (*(volatile uint32_t *)(0x60035144)); });
                asm volatile ("rsr %0, " "CCOUNT" : "=r" (now));;
            } while(now - start < 80*32*2);



        }

        buffer_bytes[i] = random >> ((i % 4) * 8);
    }
}

void bootloader_random_enable(void)
{



    (*((volatile uint32_t *)((((0x3ff00000 + 0x0CC)))))) = (uint32_t)(((DPORT_READ_PERI_REG((0x3ff00000 + 0x0CC))|((1UL << (15))))));







    ({ ; (({ ; (*((volatile uint32_t *)(((0x3ff48000 + 0xa8))))) = (uint32_t)((({ ; (*((volatile uint32_t *)((0x3ff48000 + 0xa8)))); })&(~((0x00000003)<<(30))))|(((2) & 0x00000003)<<(30))); })); });
    ({ ; ({ ; (*((volatile uint32_t *)(((0x3ff48000 + 0xa8))))) = (uint32_t)((({ ; (*((volatile uint32_t *)((0x3ff48000 + 0xa8)))); })|(((1UL << (29)))))); }); });
    ({ ; ({ ; (*((volatile uint32_t *)(((0x3ff48800 + 0x002c))))) = (uint32_t)((({ ; (*((volatile uint32_t *)((0x3ff48800 + 0x002c)))); })|(((1UL << (4)))))); }); });

    (*((volatile uint32_t *)((((0x3ff00000 + 0x0C0)))))) = (uint32_t)(((DPORT_READ_PERI_REG((0x3ff00000 + 0x0C0))|(((1UL << (4)))))));
    ({ ; ({ ; (*((volatile uint32_t *)(((0x3ff48800 + 0x002c))))) = (uint32_t)((({ ; (*((volatile uint32_t *)((0x3ff48800 + 0x002c)))); })&(~(((1UL << (8))))))); }); });
    ({ ; ({ ; (*((volatile uint32_t *)(((0x3ff48800 + 0x002c))))) = (uint32_t)((({ ; (*((volatile uint32_t *)((0x3ff48800 + 0x002c)))); })&(~(((1UL << (9))))))); }); });




    ({ ; (*((volatile uint32_t *)((0x3ff66000 + 0x2C)))) = (uint32_t)(0xADADADAD); });
    ({ ; (*((volatile uint32_t *)((0x3ff66000 + 0x30)))) = (uint32_t)(0xADADADAD); });
    ({ ; (*((volatile uint32_t *)((0x3ff66000 + 0x34)))) = (uint32_t)(0xADADADAD); });
    ({ ; (*((volatile uint32_t *)((0x3ff66000 + 0x38)))) = (uint32_t)(0xADADADAD); });

    ({ ; (({ ; (*((volatile uint32_t *)(((0x3ff48800 + 0x000c))))) = (uint32_t)((({ ; (*((volatile uint32_t *)((0x3ff48800 + 0x000c)))); })&(~((0x00000003)<<(18))))|(((3) & 0x00000003)<<(18))); })); });
    ({ ; ({ ; (*((volatile uint32_t *)(((0x3ff48800 + 0x0000))))) = (uint32_t)((({ ; (*((volatile uint32_t *)((0x3ff48800 + 0x0000)))); })|(((1UL << (27)))))); }); });
    ({ ; ({ ; (*((volatile uint32_t *)(((0x3ff48800 + 0x0090))))) = (uint32_t)((({ ; (*((volatile uint32_t *)((0x3ff48800 + 0x0090)))); })|(((1UL << (28)))))); }); });
    ({ ; ({ ; (*((volatile uint32_t *)(((0x3ff66000 + 0x10))))) = (uint32_t)((({ ; (*((volatile uint32_t *)((0x3ff66000 + 0x10)))); })|(((1UL << (2)))))); }); });
    ({ ; (({ ; (*((volatile uint32_t *)(((0x3ff66000 + 0x10))))) = (uint32_t)((({ ; (*((volatile uint32_t *)((0x3ff66000 + 0x10)))); })&(~((0x000000FF)<<(7))))|(((4) & 0x000000FF)<<(7))); })); });

    ({ ; (({ ; (*((volatile uint32_t *)(((0x3ff66000 + 0x18))))) = (uint32_t)((({ ; (*((volatile uint32_t *)((0x3ff66000 + 0x18)))); })&(~((0x000000FF)<<(0))))|(((8) & 0x000000FF)<<(0))); })); });
    ({ ; (({ ; (*((volatile uint32_t *)(((0x3ff66000 + 0x18))))) = (uint32_t)((({ ; (*((volatile uint32_t *)((0x3ff66000 + 0x18)))); })&(~((0x000000FF)<<(16))))|(((10) & 0x000000FF)<<(16))); })); });
    ({ ; (({ ; (*((volatile uint32_t *)(((0x3ff66000 + 0x10))))) = (uint32_t)((({ ; (*((volatile uint32_t *)((0x3ff66000 + 0x10)))); })&(~((0x00000003)<<(3))))|(((0) & 0x00000003)<<(3))); })); });
    ({ ; ({ ; (*((volatile uint32_t *)(((0x3ff66000 + 0x10))))) = (uint32_t)((({ ; (*((volatile uint32_t *)((0x3ff66000 + 0x10)))); })|(((1UL << (5)))))); }); });
    ({ ; ({ ; (*((volatile uint32_t *)(((0x3ff66000 + 0x10))))) = (uint32_t)((({ ; (*((volatile uint32_t *)((0x3ff66000 + 0x10)))); })&(~(((1UL << (25))))))); }); });

    ({ ; (({ ; (*((volatile uint32_t *)(((( 0x3ff4F000 + ((0)*0x1E000)) + 0x00b0))))) = (uint32_t)((({ ; (*((volatile uint32_t *)((( 0x3ff4F000 + ((0)*0x1E000)) + 0x00b0)))); })&(~((0x0000003F)<<(6))))|(((20) & 0x0000003F)<<(6))); })); });

    ({ ; ({ ; (*((volatile uint32_t *)(((0x3ff66000 + 0x10))))) = (uint32_t)((({ ; (*((volatile uint32_t *)((0x3ff66000 + 0x10)))); })|(((1UL << (26)))))); }); });

    ({ ; ({ ; (*((volatile uint32_t *)(((( 0x3ff4F000 + ((0)*0x1E000)) + 0x00a8))))) = (uint32_t)((({ ; (*((volatile uint32_t *)((( 0x3ff4F000 + ((0)*0x1E000)) + 0x00a8)))); })&(~(((1UL << (0))))))); }); });
    ({ ; ({ ; (*((volatile uint32_t *)(((( 0x3ff4F000 + ((0)*0x1E000)) + 0x00a8))))) = (uint32_t)((({ ; (*((volatile uint32_t *)((( 0x3ff4F000 + ((0)*0x1E000)) + 0x00a8)))); })|(((1UL << (5)))))); }); });
    ({ ; ({ ; (*((volatile uint32_t *)(((( 0x3ff4F000 + ((0)*0x1E000)) + 0x00a8))))) = (uint32_t)((({ ; (*((volatile uint32_t *)((( 0x3ff4F000 + ((0)*0x1E000)) + 0x00a8)))); })|(((1UL << (4)))))); }); });
    ({ ; ({ ; (*((volatile uint32_t *)(((( 0x3ff4F000 + ((0)*0x1E000)) + 0x00a8))))) = (uint32_t)((({ ; (*((volatile uint32_t *)((( 0x3ff4F000 + ((0)*0x1E000)) + 0x00a8)))); })|(((1UL << (3)))))); }); });
    ({ ; ({ ; (*((volatile uint32_t *)(((( 0x3ff4F000 + ((0)*0x1E000)) + 0x0008))))) = (uint32_t)((({ ; (*((volatile uint32_t *)((( 0x3ff4F000 + ((0)*0x1E000)) + 0x0008)))); })|(((1UL << (5)))))); }); });
}

void bootloader_random_disable(void)
{

    (*((volatile uint32_t *)((((0x3ff00000 + 0x0C0)))))) = (uint32_t)(((DPORT_READ_PERI_REG((0x3ff00000 + 0x0C0))&(~(((1UL << (4))))))));




    ({ ; ({ ; (*((volatile uint32_t *)(((( 0x3ff4F000 + ((0)*0x1E000)) + 0x00a8))))) = (uint32_t)((({ ; (*((volatile uint32_t *)((( 0x3ff4F000 + ((0)*0x1E000)) + 0x00a8)))); })&(~(((1UL << (0))))))); }); });
    ({ ; ({ ; (*((volatile uint32_t *)(((( 0x3ff4F000 + ((0)*0x1E000)) + 0x00a8))))) = (uint32_t)((({ ; (*((volatile uint32_t *)((( 0x3ff4F000 + ((0)*0x1E000)) + 0x00a8)))); })&(~(((1UL << (5))))))); }); });
    ({ ; ({ ; (*((volatile uint32_t *)(((( 0x3ff4F000 + ((0)*0x1E000)) + 0x00a8))))) = (uint32_t)((({ ; (*((volatile uint32_t *)((( 0x3ff4F000 + ((0)*0x1E000)) + 0x00a8)))); })&(~(((1UL << (3))))))); }); });
    ({ ; ({ ; (*((volatile uint32_t *)(((( 0x3ff4F000 + ((0)*0x1E000)) + 0x00a8))))) = (uint32_t)((({ ; (*((volatile uint32_t *)((( 0x3ff4F000 + ((0)*0x1E000)) + 0x00a8)))); })&(~(((1UL << (4))))))); }); });
    ({ ; ({ ; (*((volatile uint32_t *)(((( 0x3ff4F000 + ((0)*0x1E000)) + 0x0008))))) = (uint32_t)((({ ; (*((volatile uint32_t *)((( 0x3ff4F000 + ((0)*0x1E000)) + 0x0008)))); })&(~(((1UL << (5))))))); }); });


    ({ ; ({ ; (*((volatile uint32_t *)(((0x3ff48800 + 0x0000))))) = (uint32_t)((({ ; (*((volatile uint32_t *)((0x3ff48800 + 0x0000)))); })&(~(((1UL << (27))))))); }); });
    ({ ; ({ ; (*((volatile uint32_t *)(((0x3ff48800 + 0x0090))))) = (uint32_t)((({ ; (*((volatile uint32_t *)((0x3ff48800 + 0x0090)))); })&(~(((1UL << (28))))))); }); });


    ({ ; ({ ; (*((volatile uint32_t *)(((0x3ff48800 + 0x002c))))) = (uint32_t)((({ ; (*((volatile uint32_t *)((0x3ff48800 + 0x002c)))); })&(~(((1UL << (4))))))); }); });
    ({ ; ({ ; (*((volatile uint32_t *)(((0x3ff66000 + 0x10))))) = (uint32_t)((({ ; (*((volatile uint32_t *)((0x3ff66000 + 0x10)))); })&(~(((1UL << (2))) | ((1UL << (5))) | ((1UL << (26))))))); }); })
                                                                            ;
    ({ ; (({ ; (*((volatile uint32_t *)(((0x3ff48800 + 0x000c))))) = (uint32_t)((({ ; (*((volatile uint32_t *)((0x3ff48800 + 0x000c)))); })&(~((0x00000003)<<(18))))|(((0) & 0x00000003)<<(18))); })); });
    ({ ; (({ ; (*((volatile uint32_t *)(((0x3ff66000 + 0x18))))) = (uint32_t)((({ ; (*((volatile uint32_t *)((0x3ff66000 + 0x18)))); })&(~((0x000000FF)<<(16))))|(((8) & 0x000000FF)<<(16))); })); });


    (*((volatile uint32_t *)((((0x3ff00000 + 0x0C4)))))) = (uint32_t)(((DPORT_READ_PERI_REG((0x3ff00000 + 0x0C4))|(((1UL << (4)))))));
    (*((volatile uint32_t *)((((0x3ff00000 + 0x0C4)))))) = (uint32_t)(((DPORT_READ_PERI_REG((0x3ff00000 + 0x0C4))&(~(((1UL << (4))))))));


    ({ ; ({ ; (*((volatile uint32_t *)(((0x3ff48000 + 0xa8))))) = (uint32_t)((({ ; (*((volatile uint32_t *)((0x3ff48000 + 0xa8)))); })&(~(((1UL << (29))))))); }); });
    ({ ; (({ ; (*((volatile uint32_t *)(((0x3ff48000 + 0xa8))))) = (uint32_t)((({ ; (*((volatile uint32_t *)((0x3ff48000 + 0xa8)))); })&(~((0x00000003)<<(30))))|(((0) & 0x00000003)<<(30))); })); });
}
