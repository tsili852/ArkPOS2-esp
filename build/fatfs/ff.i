# 1 "C:/esp/esp-idf/components/fatfs/src/ff.c"
# 1 "C:\\esp\\ArkPOS2-esp\\build\\fatfs//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "C:/esp/esp-idf/components/fatfs/src/ff.c"
# 22 "C:/esp/esp-idf/components/fatfs/src/ff.c"
# 1 "C:/esp/esp-idf/components/fatfs/src/ff.h" 1
# 28 "C:/esp/esp-idf/components/fatfs/src/ff.h"
# 1 "C:/esp/esp-idf/components/fatfs/src/integer.h" 1
# 18 "C:/esp/esp-idf/components/fatfs/src/integer.h"
typedef int INT;
typedef unsigned int UINT;


typedef unsigned char BYTE;


typedef short SHORT;
typedef unsigned short WORD;
typedef unsigned short WCHAR;


typedef long LONG;
typedef unsigned long DWORD;


typedef unsigned long long QWORD;
# 29 "C:/esp/esp-idf/components/fatfs/src/ff.h" 2
# 1 "C:/esp/esp-idf/components/fatfs/src/ffconf.h" 1
# 1 "C:/esp/ArkPOS2-esp/build/include/sdkconfig.h" 1
# 2 "C:/esp/esp-idf/components/fatfs/src/ffconf.h" 2
# 273 "C:/esp/esp-idf/components/fatfs/src/ffconf.h"
# 1 "C:/esp/esp-idf/components/freertos/include/freertos/FreeRTOS.h" 1
# 76 "C:/esp/esp-idf/components/freertos/include/freertos/FreeRTOS.h"
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 149 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 3 4

# 149 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 3 4
typedef int ptrdiff_t;
# 216 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 3 4
typedef unsigned int size_t;
# 328 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 3 4
typedef short unsigned int wchar_t;
# 77 "C:/esp/esp-idf/components/freertos/include/freertos/FreeRTOS.h" 2
# 1 "C:/esp/esp-idf/components/newlib/include/sys/reent.h" 1
# 13 "C:/esp/esp-idf/components/newlib/include/sys/reent.h"
# 1 "C:/esp/esp-idf/components/newlib/include/_ansi.h" 1
# 15 "C:/esp/esp-idf/components/newlib/include/_ansi.h"
# 1 "C:/esp/esp-idf/components/newlib/include/newlib.h" 1
# 16 "C:/esp/esp-idf/components/newlib/include/_ansi.h" 2
# 1 "C:/esp/esp-idf/components/newlib/include/sys/config.h" 1



# 1 "C:/esp/esp-idf/components/newlib/include/machine/ieeefp.h" 1
# 5 "C:/esp/esp-idf/components/newlib/include/sys/config.h" 2
# 1 "C:/esp/esp-idf/components/newlib/include/sys/features.h" 1
# 6 "C:/esp/esp-idf/components/newlib/include/sys/config.h" 2
# 189 "C:/esp/esp-idf/components/newlib/include/sys/config.h"
# 1 "C:/esp/esp-idf/components/esp32/include/xtensa/config/core-isa.h" 1
# 190 "C:/esp/esp-idf/components/newlib/include/sys/config.h" 2
# 17 "C:/esp/esp-idf/components/newlib/include/_ansi.h" 2
# 14 "C:/esp/esp-idf/components/newlib/include/sys/reent.h" 2
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 15 "C:/esp/esp-idf/components/newlib/include/sys/reent.h" 2
# 1 "C:/esp/esp-idf/components/newlib/include/sys/_types.h" 1
# 12 "C:/esp/esp-idf/components/newlib/include/sys/_types.h"
# 1 "C:/esp/esp-idf/components/newlib/include/machine/_types.h" 1






# 1 "C:/esp/esp-idf/components/newlib/include/machine/_default_types.h" 1
# 17 "C:/esp/esp-idf/components/newlib/include/machine/_default_types.h"

# 17 "C:/esp/esp-idf/components/newlib/include/machine/_default_types.h"
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
# 8 "C:/esp/esp-idf/components/newlib/include/machine/_types.h" 2
# 13 "C:/esp/esp-idf/components/newlib/include/sys/_types.h" 2
# 1 "C:/esp/esp-idf/components/newlib/include/sys/lock.h" 1
# 11 "C:/esp/esp-idf/components/newlib/include/sys/lock.h"
typedef int _lock_t;
typedef _lock_t _LOCK_RECURSIVE_T;
typedef _lock_t _LOCK_T;
# 28 "C:/esp/esp-idf/components/newlib/include/sys/lock.h"
void _lock_init(_lock_t *lock);
void _lock_init_recursive(_lock_t *lock);
void _lock_close(_lock_t *lock);
void _lock_close_recursive(_lock_t *lock);
void _lock_acquire(_lock_t *lock);
void _lock_acquire_recursive(_lock_t *lock);
int _lock_try_acquire(_lock_t *lock);
int _lock_try_acquire_recursive(_lock_t *lock);
void _lock_release(_lock_t *lock);
void _lock_release_recursive(_lock_t *lock);
# 14 "C:/esp/esp-idf/components/newlib/include/sys/_types.h" 2


typedef long _off_t;



typedef short __dev_t;



typedef unsigned short __uid_t;


typedef unsigned short __gid_t;



__extension__ typedef long long _off64_t;







typedef long _fpos_t;
# 55 "C:/esp/esp-idf/components/newlib/include/sys/_types.h"
typedef signed int _ssize_t;
# 67 "C:/esp/esp-idf/components/newlib/include/sys/_types.h"
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 357 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 3 4

# 357 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 3 4
typedef unsigned int wint_t;
# 68 "C:/esp/esp-idf/components/newlib/include/sys/_types.h" 2




# 71 "C:/esp/esp-idf/components/newlib/include/sys/_types.h"
typedef struct
{
  int __count;
  union
  {
    wint_t __wch;
    unsigned char __wchb[4];
  } __value;
} _mbstate_t;



typedef _LOCK_RECURSIVE_T _flock_t;




typedef void *_iconv_t;
# 16 "C:/esp/esp-idf/components/newlib/include/sys/reent.h" 2






typedef unsigned long __ULong;
# 38 "C:/esp/esp-idf/components/newlib/include/sys/reent.h"
struct _reent;






struct _Bigint
{
  struct _Bigint *_next;
  int _k, _maxwds, _sign, _wds;
  __ULong _x[1];
};


struct __tm
{
  int __tm_sec;
  int __tm_min;
  int __tm_hour;
  int __tm_mday;
  int __tm_mon;
  int __tm_year;
  int __tm_wday;
  int __tm_yday;
  int __tm_isdst;
};







struct _on_exit_args {
 void * _fnargs[32];
 void * _dso_handle[32];

 __ULong _fntypes;


 __ULong _is_cxa;
};


struct _atexit {
 struct _atexit *_next;
 int _ind;
 void (*_fns[32])(void);
        struct _on_exit_args * _on_exit_args_ptr;
};
# 115 "C:/esp/esp-idf/components/newlib/include/sys/reent.h"
struct __sbuf {
 unsigned char *_base;
 int _size;
};
# 151 "C:/esp/esp-idf/components/newlib/include/sys/reent.h"
struct __sFILE_fake {
  unsigned char *_p;
  int _r;
  int _w;
  short _flags;
  short _file;
  struct __sbuf _bf;
  int _lbfsize;

  struct _reent *_data;
};




extern void __sinit (struct _reent *);
# 179 "C:/esp/esp-idf/components/newlib/include/sys/reent.h"
struct __sFILE {
  unsigned char *_p;
  int _r;
  int _w;
  short _flags;
  short _file;
  struct __sbuf _bf;
  int _lbfsize;


  struct _reent *_data;



  void * _cookie;

  int (* _read) (struct _reent *, void *, char *, int)
                                          ;
  int (* _write) (struct _reent *, void *, const char *, int)

                                   ;
  _fpos_t (* _seek) (struct _reent *, void *, _fpos_t, int);
  int (* _close) (struct _reent *, void *);


  struct __sbuf _ub;
  unsigned char *_up;
  int _ur;


  unsigned char _ubuf[3];
  unsigned char _nbuf[1];


  struct __sbuf _lb;


  int _blksize;
  _off_t _offset;






  _flock_t _lock;

  _mbstate_t _mbstate;
  int _flags2;
};
# 285 "C:/esp/esp-idf/components/newlib/include/sys/reent.h"
typedef struct __sFILE __FILE;



struct _glue
{
  struct _glue *_next;
  int _niobs;
  __FILE *_iobs;
};
# 317 "C:/esp/esp-idf/components/newlib/include/sys/reent.h"
struct _rand48 {
  unsigned short _seed[3];
  unsigned short _mult[3];
  unsigned short _add;


  __extension__ unsigned long long _rand_next;

};
# 342 "C:/esp/esp-idf/components/newlib/include/sys/reent.h"
struct _mprec
{

  struct _Bigint *_result;
  int _result_k;
  struct _Bigint *_p5s;
  struct _Bigint **_freelist;
};


struct _misc_reent
{

  char *_strtok_last;
  _mbstate_t _mblen_state;
  _mbstate_t _wctomb_state;
  _mbstate_t _mbtowc_state;
  char _l64a_buf[8];
  int _getdate_err;
  _mbstate_t _mbrlen_state;
  _mbstate_t _mbrtowc_state;
  _mbstate_t _mbsrtowcs_state;
  _mbstate_t _wcrtomb_state;
  _mbstate_t _wcsrtombs_state;
};



struct _reent
{


  int _errno;




  __FILE *_stdin, *_stdout, *_stderr;

  int _inc;

  char *_emergency;

  int __sdidinit;

  int _current_category;
  const char *_current_locale;

  struct _mprec *_mp;

  void (* __cleanup) (struct _reent *);

  int _gamma_signgam;


  int _cvtlen;
  char *_cvtbuf;

  struct _rand48 *_r48;
  struct __tm *_localtime_buf;
  char *_asctime_buf;


  void (**(_sig_func))(int);



  struct _atexit *_atexit;
  struct _atexit _atexit0;


  struct _glue __sglue;
  __FILE *__sf;
  struct _misc_reent *_misc;
  char *_signal_buf;
};

extern const struct __sFILE_fake __sf_fake_stdin;
extern const struct __sFILE_fake __sf_fake_stdout;
extern const struct __sFILE_fake __sf_fake_stderr;
# 766 "C:/esp/esp-idf/components/newlib/include/sys/reent.h"
extern struct _reent *_global_impure_ptr ;

void _reclaim_reent (struct _reent *);





  struct _reent * __getreent (void);
# 78 "C:/esp/esp-idf/components/freertos/include/freertos/FreeRTOS.h" 2
# 92 "C:/esp/esp-idf/components/freertos/include/freertos/FreeRTOS.h"
# 1 "C:/esp/esp-idf/components/newlib/include/stdint.h" 1
# 13 "C:/esp/esp-idf/components/newlib/include/stdint.h"
# 1 "C:/esp/esp-idf/components/newlib/include/sys/_intsup.h" 1
# 14 "C:/esp/esp-idf/components/newlib/include/stdint.h" 2






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
# 74 "C:/esp/esp-idf/components/newlib/include/stdint.h"
  typedef int int_fast8_t;
  typedef unsigned int uint_fast8_t;
# 84 "C:/esp/esp-idf/components/newlib/include/stdint.h"
  typedef int int_fast16_t;
  typedef unsigned int uint_fast16_t;
# 94 "C:/esp/esp-idf/components/newlib/include/stdint.h"
  typedef int int_fast32_t;
  typedef unsigned int uint_fast32_t;
# 104 "C:/esp/esp-idf/components/newlib/include/stdint.h"
  typedef long long int int_fast64_t;
  typedef long long unsigned int uint_fast64_t;
# 153 "C:/esp/esp-idf/components/newlib/include/stdint.h"
  typedef long long int intmax_t;
# 162 "C:/esp/esp-idf/components/newlib/include/stdint.h"
  typedef long long unsigned int uintmax_t;






typedef __intptr_t intptr_t;
typedef __uintptr_t uintptr_t;
# 93 "C:/esp/esp-idf/components/freertos/include/freertos/FreeRTOS.h" 2






# 1 "C:/esp/esp-idf/components/freertos/include/freertos/FreeRTOSConfig.h" 1
# 73 "C:/esp/esp-idf/components/freertos/include/freertos/FreeRTOSConfig.h"
# 1 "C:/esp/ArkPOS2-esp/build/include/sdkconfig.h" 1
# 74 "C:/esp/esp-idf/components/freertos/include/freertos/FreeRTOSConfig.h" 2
# 102 "C:/esp/esp-idf/components/freertos/include/freertos/FreeRTOSConfig.h"
# 1 "C:/esp/esp-idf/components/freertos/include/freertos/xtensa_config.h" 1
# 40 "C:/esp/esp-idf/components/freertos/include/freertos/xtensa_config.h"
# 1 "C:/esp/esp-idf/components/esp32/include/xtensa/hal.h" 1
# 148 "C:/esp/esp-idf/components/esp32/include/xtensa/hal.h"
extern const unsigned int Xthal_rev_no;







extern void xthal_save_extra(void *base);
extern void xthal_restore_extra(void *base);

extern void xthal_save_cpregs(void *base, int);
extern void xthal_restore_cpregs(void *base, int);

extern void xthal_save_cp0(void *base);
extern void xthal_save_cp1(void *base);
extern void xthal_save_cp2(void *base);
extern void xthal_save_cp3(void *base);
extern void xthal_save_cp4(void *base);
extern void xthal_save_cp5(void *base);
extern void xthal_save_cp6(void *base);
extern void xthal_save_cp7(void *base);
extern void xthal_restore_cp0(void *base);
extern void xthal_restore_cp1(void *base);
extern void xthal_restore_cp2(void *base);
extern void xthal_restore_cp3(void *base);
extern void xthal_restore_cp4(void *base);
extern void xthal_restore_cp5(void *base);
extern void xthal_restore_cp6(void *base);
extern void xthal_restore_cp7(void *base);

extern void* Xthal_cpregs_save_fn[8];
extern void* Xthal_cpregs_restore_fn[8];

extern void* Xthal_cpregs_save_nw_fn[8];
extern void* Xthal_cpregs_restore_nw_fn[8];





extern const unsigned int Xthal_extra_size;
extern const unsigned int Xthal_extra_align;
extern const unsigned int Xthal_cpregs_size[8];
extern const unsigned int Xthal_cpregs_align[8];
extern const unsigned int Xthal_all_extra_size;
extern const unsigned int Xthal_all_extra_align;

extern const char * const Xthal_cp_names[8];







extern void xthal_init_mem_extra(void *);

extern void xthal_init_mem_cp(void *, int);


extern const unsigned int Xthal_num_coprocessors;


extern const unsigned char Xthal_cp_num;

extern const unsigned char Xthal_cp_max;



extern const unsigned int Xthal_cp_mask;
# 237 "C:/esp/esp-idf/components/esp32/include/xtensa/hal.h"
extern const unsigned int Xthal_num_aregs;
extern const unsigned char Xthal_num_aregs_log2;







extern const unsigned char Xthal_icache_linewidth;
extern const unsigned char Xthal_dcache_linewidth;

extern const unsigned short Xthal_icache_linesize;
extern const unsigned short Xthal_dcache_linesize;


extern const unsigned int Xthal_icache_size;
extern const unsigned int Xthal_dcache_size;

extern const unsigned char Xthal_dcache_is_writeback;



extern void xthal_icache_region_invalidate( void *addr, unsigned size );
extern void xthal_dcache_region_invalidate( void *addr, unsigned size );

extern void xthal_icache_line_invalidate(void *addr);
extern void xthal_dcache_line_invalidate(void *addr);


extern void xthal_dcache_region_writeback( void *addr, unsigned size );

extern void xthal_dcache_line_writeback(void *addr);


extern void xthal_dcache_region_writeback_inv( void *addr, unsigned size );

extern void xthal_dcache_line_writeback_inv(void *addr);

extern void xthal_icache_sync( void );

extern void xthal_dcache_sync( void );



extern unsigned int xthal_icache_get_ways(void);

extern void xthal_icache_set_ways(unsigned int ways);

extern unsigned int xthal_dcache_get_ways(void);

extern void xthal_dcache_set_ways(unsigned int ways);


extern void xthal_cache_coherence_on( void );
extern void xthal_cache_coherence_off( void );

extern void xthal_cache_coherence_optin( void );
extern void xthal_cache_coherence_optout( void );
# 339 "C:/esp/esp-idf/components/esp32/include/xtensa/hal.h"
extern int xthal_get_cache_prefetch( void );
extern int xthal_set_cache_prefetch( int );
extern int xthal_set_cache_prefetch_long( unsigned long long );
# 352 "C:/esp/esp-idf/components/esp32/include/xtensa/hal.h"
extern const int Xthal_debug_configured;


extern unsigned int xthal_set_soft_break(void *addr);
extern void xthal_remove_soft_break(void *addr, unsigned int);
# 374 "C:/esp/esp-idf/components/esp32/include/xtensa/hal.h"
extern int xthal_disassemble( unsigned char *instr_buf, void *tgt_addr,
         char *buffer, unsigned buflen, unsigned options );



extern int xthal_disassemble_size( unsigned char *instr_buf );






extern void* xthal_memcpy(void *dst, const void *src, unsigned len);
extern void* xthal_bcopy(const void *src, void *dst, unsigned len);






extern int xthal_compare_and_set( int *addr, int test_val, int compare_val );
# 403 "C:/esp/esp-idf/components/esp32/include/xtensa/hal.h"
extern const unsigned int Xthal_release_major;
extern const unsigned int Xthal_release_minor;
extern const char * const Xthal_release_name;
extern const char * const Xthal_release_internal;

extern const unsigned char Xthal_memory_order;
extern const unsigned char Xthal_have_windowed;
extern const unsigned char Xthal_have_density;
extern const unsigned char Xthal_have_booleans;
extern const unsigned char Xthal_have_loops;
extern const unsigned char Xthal_have_nsa;
extern const unsigned char Xthal_have_minmax;
extern const unsigned char Xthal_have_sext;
extern const unsigned char Xthal_have_clamps;
extern const unsigned char Xthal_have_mac16;
extern const unsigned char Xthal_have_mul16;
extern const unsigned char Xthal_have_fp;
extern const unsigned char Xthal_have_speculation;
extern const unsigned char Xthal_have_threadptr;

extern const unsigned char Xthal_have_pif;
extern const unsigned short Xthal_num_writebuffer_entries;

extern const unsigned int Xthal_build_unique_id;

extern const unsigned int Xthal_hw_configid0;
extern const unsigned int Xthal_hw_configid1;
extern const unsigned int Xthal_hw_release_major;
extern const unsigned int Xthal_hw_release_minor;
extern const char * const Xthal_hw_release_name;
extern const char * const Xthal_hw_release_internal;


extern void xthal_clear_regcached_code( void );
# 653 "C:/esp/esp-idf/components/esp32/include/xtensa/hal.h"
extern void xthal_window_spill( void );







extern void xthal_validate_cp(int);
extern void xthal_invalidate_cp(int);


extern void xthal_set_cpenable(unsigned);
extern unsigned xthal_get_cpenable(void);







extern const unsigned char Xthal_num_intlevels;

extern const unsigned char Xthal_num_interrupts;

extern const unsigned char Xthal_excm_level;


extern const unsigned int Xthal_intlevel_mask[16];

extern const unsigned int Xthal_intlevel_andbelow_mask[16];


extern const unsigned char Xthal_intlevel[32];


extern const unsigned char Xthal_inttype[32];


extern const unsigned int Xthal_inttype_mask[8];


extern const int Xthal_timer_interrupt[4];


extern unsigned xthal_get_intenable( void );
extern void xthal_set_intenable( unsigned );
extern unsigned xthal_get_interrupt( void );

extern void xthal_set_intset( unsigned );
extern void xthal_set_intclear( unsigned );







extern const int Xthal_num_ibreak;
extern const int Xthal_num_dbreak;







extern const unsigned char Xthal_have_ccount;
extern const unsigned char Xthal_num_ccompare;


extern unsigned xthal_get_ccount(void);


extern void xthal_set_ccompare(int, unsigned);
extern unsigned xthal_get_ccompare(int);






extern const unsigned char Xthal_have_prid;
extern const unsigned char Xthal_have_exceptions;
extern const unsigned char Xthal_xea_version;
extern const unsigned char Xthal_have_interrupts;
extern const unsigned char Xthal_have_highlevel_interrupts;
extern const unsigned char Xthal_have_nmi;

extern unsigned xthal_get_prid( void );







extern unsigned xthal_vpri_to_intlevel(unsigned vpri);
extern unsigned xthal_intlevel_to_vpri(unsigned intlevel);


extern unsigned xthal_int_enable(unsigned);
extern unsigned xthal_int_disable(unsigned);


extern int xthal_set_int_vpri(int intnum, int vpri);
extern int xthal_get_int_vpri(int intnum);


extern void xthal_set_vpri_locklevel(unsigned intlevel);
extern unsigned xthal_get_vpri_locklevel(void);


extern unsigned xthal_set_vpri(unsigned vpri);
extern unsigned xthal_get_vpri(void);
extern unsigned xthal_set_vpri_intlevel(unsigned intlevel);
extern unsigned xthal_set_vpri_lock(void);






typedef void (XtHalVoidFunc)(void);


extern unsigned Xthal_tram_pending;
# 789 "C:/esp/esp-idf/components/esp32/include/xtensa/hal.h"
extern unsigned Xthal_tram_enabled;


extern unsigned Xthal_tram_sync;


extern unsigned xthal_tram_pending_to_service( void );
extern void xthal_tram_done( unsigned serviced_mask );
extern int xthal_tram_set_sync( int intnum, int sync );
extern XtHalVoidFunc* xthal_set_tram_trigger_func( XtHalVoidFunc *trigger_fn );






extern const unsigned char Xthal_num_instrom;
extern const unsigned char Xthal_num_instram;
extern const unsigned char Xthal_num_datarom;
extern const unsigned char Xthal_num_dataram;
extern const unsigned char Xthal_num_xlmi;



extern const unsigned int Xthal_instrom_vaddr[];
extern const unsigned int Xthal_instrom_paddr[];
extern const unsigned int Xthal_instrom_size [];
extern const unsigned int Xthal_instram_vaddr[];
extern const unsigned int Xthal_instram_paddr[];
extern const unsigned int Xthal_instram_size [];
extern const unsigned int Xthal_datarom_vaddr[];
extern const unsigned int Xthal_datarom_paddr[];
extern const unsigned int Xthal_datarom_size [];
extern const unsigned int Xthal_dataram_vaddr[];
extern const unsigned int Xthal_dataram_paddr[];
extern const unsigned int Xthal_dataram_size [];
extern const unsigned int Xthal_xlmi_vaddr[];
extern const unsigned int Xthal_xlmi_paddr[];
extern const unsigned int Xthal_xlmi_size [];







extern const unsigned char Xthal_icache_setwidth;
extern const unsigned char Xthal_dcache_setwidth;

extern const unsigned int Xthal_icache_ways;
extern const unsigned int Xthal_dcache_ways;

extern const unsigned char Xthal_icache_line_lockable;
extern const unsigned char Xthal_dcache_line_lockable;


extern unsigned xthal_get_cacheattr( void );
extern unsigned xthal_get_icacheattr( void );
extern unsigned xthal_get_dcacheattr( void );
extern void xthal_set_cacheattr( unsigned );
extern void xthal_set_icacheattr( unsigned );
extern void xthal_set_dcacheattr( unsigned );

extern int xthal_set_region_attribute( void *addr, unsigned size,
         unsigned cattr, unsigned flags );
# 862 "C:/esp/esp-idf/components/esp32/include/xtensa/hal.h"
extern void xthal_icache_enable( void );
extern void xthal_dcache_enable( void );

extern void xthal_icache_disable( void );
extern void xthal_dcache_disable( void );


extern void xthal_icache_all_invalidate( void );
extern void xthal_dcache_all_invalidate( void );

extern void xthal_dcache_all_writeback( void );

extern void xthal_dcache_all_writeback_inv( void );

extern void xthal_icache_region_lock( void *addr, unsigned size );
extern void xthal_dcache_region_lock( void *addr, unsigned size );

extern void xthal_icache_line_lock(void *addr);
extern void xthal_dcache_line_lock(void *addr);


extern void xthal_icache_all_unlock( void );
extern void xthal_dcache_all_unlock( void );
extern void xthal_icache_region_unlock( void *addr, unsigned size );
extern void xthal_dcache_region_unlock( void *addr, unsigned size );

extern void xthal_icache_line_unlock(void *addr);
extern void xthal_dcache_line_unlock(void *addr);
# 899 "C:/esp/esp-idf/components/esp32/include/xtensa/hal.h"
extern void xthal_memep_inject_error(void *addr, int size, int flags);







extern const unsigned char Xthal_have_spanning_way;
extern const unsigned char Xthal_have_identity_map;
extern const unsigned char Xthal_have_mimic_cacheattr;
extern const unsigned char Xthal_have_xlt_cacheattr;
extern const unsigned char Xthal_have_cacheattr;
extern const unsigned char Xthal_have_tlbs;

extern const unsigned char Xthal_mmu_asid_bits;
extern const unsigned char Xthal_mmu_asid_kernel;
extern const unsigned char Xthal_mmu_rings;
extern const unsigned char Xthal_mmu_ring_bits;
extern const unsigned char Xthal_mmu_sr_bits;
extern const unsigned char Xthal_mmu_ca_bits;
extern const unsigned int Xthal_mmu_max_pte_page_size;
extern const unsigned int Xthal_mmu_min_pte_page_size;

extern const unsigned char Xthal_itlb_way_bits;
extern const unsigned char Xthal_itlb_ways;
extern const unsigned char Xthal_itlb_arf_ways;
extern const unsigned char Xthal_dtlb_way_bits;
extern const unsigned char Xthal_dtlb_ways;
extern const unsigned char Xthal_dtlb_arf_ways;



extern int xthal_static_v2p( unsigned vaddr, unsigned *paddrp );
extern int xthal_static_p2v( unsigned paddr, unsigned *vaddrp, unsigned cached );
# 948 "C:/esp/esp-idf/components/esp32/include/xtensa/hal.h"
extern int xthal_set_region_translation(void* vaddr, void* paddr, unsigned size, unsigned cache_atr, unsigned flags);
extern int xthal_v2p(void*, void**, unsigned*, unsigned*);
extern int xthal_invalidate_region(void* addr);
extern int xthal_set_region_translation_raw(void *vaddr, void *paddr, unsigned cattr);
# 41 "C:/esp/esp-idf/components/freertos/include/freertos/xtensa_config.h" 2
# 1 "C:/esp/esp-idf/components/esp32/include/xtensa/config/core.h" 1
# 42 "C:/esp/esp-idf/components/esp32/include/xtensa/config/core.h"
# 1 "C:/esp/esp-idf/components/esp32/include/xtensa/xtensa-versions.h" 1
# 43 "C:/esp/esp-idf/components/esp32/include/xtensa/config/core.h" 2
# 51 "C:/esp/esp-idf/components/esp32/include/xtensa/config/core.h"
# 1 "C:/esp/esp-idf/components/esp32/include/xtensa/config/core-matmap.h" 1
# 52 "C:/esp/esp-idf/components/esp32/include/xtensa/config/core.h" 2
# 1 "C:/esp/esp-idf/components/esp32/include/xtensa/config/tie.h" 1
# 53 "C:/esp/esp-idf/components/esp32/include/xtensa/config/core.h" 2
# 1279 "C:/esp/esp-idf/components/esp32/include/xtensa/config/core.h"
extern const unsigned char Xthal_cp_id_FPU;
extern const unsigned int Xthal_cp_mask_FPU;


extern const unsigned char Xthal_cp_id_XCHAL_CP1_IDENT;
extern const unsigned int Xthal_cp_mask_XCHAL_CP1_IDENT;


extern const unsigned char Xthal_cp_id_XCHAL_CP2_IDENT;
extern const unsigned int Xthal_cp_mask_XCHAL_CP2_IDENT;


extern const unsigned char Xthal_cp_id_XCHAL_CP3_IDENT;
extern const unsigned int Xthal_cp_mask_XCHAL_CP3_IDENT;


extern const unsigned char Xthal_cp_id_XCHAL_CP4_IDENT;
extern const unsigned int Xthal_cp_mask_XCHAL_CP4_IDENT;


extern const unsigned char Xthal_cp_id_XCHAL_CP5_IDENT;
extern const unsigned int Xthal_cp_mask_XCHAL_CP5_IDENT;


extern const unsigned char Xthal_cp_id_XCHAL_CP6_IDENT;
extern const unsigned int Xthal_cp_mask_XCHAL_CP6_IDENT;


extern const unsigned char Xthal_cp_id_XCHAL_CP7_IDENT;
extern const unsigned int Xthal_cp_mask_XCHAL_CP7_IDENT;
# 42 "C:/esp/esp-idf/components/freertos/include/freertos/xtensa_config.h" 2
# 1 "C:/esp/esp-idf/components/esp32/include/xtensa/config/system.h" 1
# 43 "C:/esp/esp-idf/components/freertos/include/freertos/xtensa_config.h" 2

# 1 "C:/esp/esp-idf/components/freertos/include/freertos/xtensa_context.h" 1
# 45 "C:/esp/esp-idf/components/freertos/include/freertos/xtensa_context.h"
# 1 "C:/esp/esp-idf/components/esp32/include/xtensa/corebits.h" 1
# 46 "C:/esp/esp-idf/components/freertos/include/freertos/xtensa_context.h" 2

# 1 "C:/esp/esp-idf/components/esp32/include/xtensa/xtruntime-frames.h" 1
# 56 "C:/esp/esp-idf/components/esp32/include/xtensa/xtruntime-frames.h"
typedef struct {
long pc;
long ps;
long areg[4];
long sar;

long lcount;
long lbeg;
long lend;


long acclo;
long acchi;
long mr[4];

} KernelFrame;
# 80 "C:/esp/esp-idf/components/esp32/include/xtensa/xtruntime-frames.h"
typedef struct {
long pc;
long ps;
long sar;
long vpri;



long a2;
long a3;
long a4;
long a5;
# 104 "C:/esp/esp-idf/components/esp32/include/xtensa/xtruntime-frames.h"
long exccause;

long lcount;
long lbeg;
long lend;


long acclo;
long acchi;
long mr[4];
# 123 "C:/esp/esp-idf/components/esp32/include/xtensa/xtruntime-frames.h"
long pad[((3 + 1*1 + 1*2 + 0*1) & 3)];


} UserFrame;
# 48 "C:/esp/esp-idf/components/freertos/include/freertos/xtensa_context.h" 2
# 103 "C:/esp/esp-idf/components/freertos/include/freertos/xtensa_context.h"
typedef struct {
long exit;
long pc;
long ps;
long a0;
long a1;
long a2;
long a3;
long a4;
long a5;
long a6;
long a7;
long a8;
long a9;
long a10;
long a11;
long a12;
long a13;
long a14;
long a15;
long sar;
long exccause;
long excvaddr;

long lbeg;
long lend;
long lcount;



long tmp0;
long tmp1;
long tmp2;
# 145 "C:/esp/esp-idf/components/freertos/include/freertos/xtensa_context.h"
} XtExcFrame;
# 202 "C:/esp/esp-idf/components/freertos/include/freertos/xtensa_context.h"
typedef struct {
# 213 "C:/esp/esp-idf/components/freertos/include/freertos/xtensa_context.h"
long exit;
long pc;
long ps;
long next;
long a0;
long a1;
long a2;
long a3;

} XtSolFrame;
# 45 "C:/esp/esp-idf/components/freertos/include/freertos/xtensa_config.h" 2
# 103 "C:/esp/esp-idf/components/freertos/include/freertos/FreeRTOSConfig.h" 2




# 1 "C:/esp/esp-idf/components/newlib/include/stdlib.h" 1
# 10 "C:/esp/esp-idf/components/newlib/include/stdlib.h"
# 1 "C:/esp/esp-idf/components/newlib/include/machine/ieeefp.h" 1
# 11 "C:/esp/esp-idf/components/newlib/include/stdlib.h" 2
# 1 "C:/esp/esp-idf/components/newlib/include/_ansi.h" 1
# 12 "C:/esp/esp-idf/components/newlib/include/stdlib.h" 2




# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 17 "C:/esp/esp-idf/components/newlib/include/stdlib.h" 2


# 1 "C:/esp/esp-idf/components/newlib/include/sys/cdefs.h" 1
# 45 "C:/esp/esp-idf/components/newlib/include/sys/cdefs.h"
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 46 "C:/esp/esp-idf/components/newlib/include/sys/cdefs.h" 2
# 20 "C:/esp/esp-idf/components/newlib/include/stdlib.h" 2
# 1 "C:/esp/esp-idf/components/newlib/include/machine/stdlib.h" 1
# 21 "C:/esp/esp-idf/components/newlib/include/stdlib.h" 2

# 1 "C:/esp/esp-idf/components/newlib/include/alloca.h" 1
# 23 "C:/esp/esp-idf/components/newlib/include/stdlib.h" 2








typedef struct
{
  int quot;
  int rem;
} div_t;

typedef struct
{
  long quot;
  long rem;
} ldiv_t;




typedef struct
{
  long long int quot;
  long long int rem;
} lldiv_t;




typedef int (*__compar_fn_t) (const void *, const void *);
# 67 "C:/esp/esp-idf/components/newlib/include/stdlib.h"
int __locale_mb_cur_max (void);



void abort (void) __attribute__ ((__noreturn__));
int abs (int);
int atexit (void (*__func)(void));
double atof (const char *__nptr);

float atoff (const char *__nptr);

int atoi (const char *__nptr);
int _atoi_r (struct _reent *, const char *__nptr);
long atol (const char *__nptr);
long _atol_r (struct _reent *, const char *__nptr);
void * bsearch (const void * __key, const void * __base, size_t __nmemb, size_t __size, __compar_fn_t _compar)



                                ;
void * calloc (size_t __nmemb, size_t __size) ;
div_t div (int __numer, int __denom);
void exit (int __status) __attribute__ ((__noreturn__));
void free (void *) ;
char * getenv (const char *__string);
char * _getenv_r (struct _reent *, const char *__string);
char * _findenv (const char *, int *);
char * _findenv_r (struct _reent *, const char *, int *);

extern char *suboptarg;
int getsubopt (char **, char * const *, char **);

long labs (long);
ldiv_t ldiv (long __numer, long __denom);
void * malloc (size_t __size) ;
int mblen (const char *, size_t);
int _mblen_r (struct _reent *, const char *, size_t, _mbstate_t *);
int mbtowc (wchar_t *restrict, const char *restrict, size_t);
int _mbtowc_r (struct _reent *, wchar_t *restrict, const char *restrict, size_t, _mbstate_t *);
int wctomb (char *, wchar_t);
int _wctomb_r (struct _reent *, char *, wchar_t, _mbstate_t *);
size_t mbstowcs (wchar_t *restrict, const char *restrict, size_t);
size_t _mbstowcs_r (struct _reent *, wchar_t *restrict, const char *restrict, size_t, _mbstate_t *);
size_t wcstombs (char *restrict, const wchar_t *restrict, size_t);
size_t _wcstombs_r (struct _reent *, char *restrict, const wchar_t *restrict, size_t, _mbstate_t *);


char * mkdtemp (char *);
int mkostemp (char *, int);
int mkostemps (char *, int, int);
int mkstemp (char *);
int mkstemps (char *, int);

char * mktemp (char *);




char * _mkdtemp_r (struct _reent *, char *);
int _mkostemp_r (struct _reent *, char *, int);
int _mkostemps_r (struct _reent *, char *, int, int);
int _mkstemp_r (struct _reent *, char *);
int _mkstemps_r (struct _reent *, char *, int);

char * _mktemp_r (struct _reent *, char *);




void qsort (void * __base, size_t __nmemb, size_t __size, __compar_fn_t _compar);
int rand (void);
void * realloc (void * __r, size_t __size) ;

void * reallocf (void * __r, size_t __size);
char * realpath (const char *restrict path, char *restrict resolved_path);

void srand (unsigned __seed);
double strtod (const char *restrict __n, char **restrict __end_PTR);
double _strtod_r (struct _reent *,const char *restrict __n, char **restrict __end_PTR);



float strtof (const char *restrict __n, char **restrict __end_PTR);







long strtol (const char *restrict __n, char **restrict __end_PTR, int __base);
long _strtol_r (struct _reent *,const char *restrict __n, char **restrict __end_PTR, int __base);
unsigned long strtoul (const char *restrict __n, char **restrict __end_PTR, int __base);
unsigned long _strtoul_r (struct _reent *,const char *restrict __n, char **restrict __end_PTR, int __base);

int system (const char *__string);


long a64l (const char *__input);
char * l64a (long __input);
char * _l64a_r (struct _reent *,long __input);
int on_exit (void (*__func)(int, void *),void * __arg);




void _Exit (int __status) __attribute__ ((__noreturn__));


int putenv (char *__string);
int _putenv_r (struct _reent *, char *__string);
void * _reallocf_r (struct _reent *, void *, size_t);
int setenv (const char *__string, const char *__value, int __overwrite);
int _setenv_r (struct _reent *, const char *__string, const char *__value, int __overwrite);

char * gcvt (double,int,char *);
char * gcvtf (float,int,char *);
char * fcvt (double,int,int *,int *);
char * fcvtf (float,int,int *,int *);
char * ecvt (double,int,int *,int *);
char * ecvtbuf (double, int, int*, int*, char *);
char * fcvtbuf (double, int, int*, int*, char *);
char * ecvtf (float,int,int *,int *);
char * dtoa (double, int, int, int *, int*, char**);

char * __itoa (int, char *, int);
char * __utoa (unsigned, char *, int);

char * itoa (int, char *, int);
char * utoa (unsigned, char *, int);
int rand_r (unsigned *__seed);

double drand48 (void);
double _drand48_r (struct _reent *);
double erand48 (unsigned short [3]);
double _erand48_r (struct _reent *, unsigned short [3]);
long jrand48 (unsigned short [3]);
long _jrand48_r (struct _reent *, unsigned short [3]);
void lcong48 (unsigned short [7]);
void _lcong48_r (struct _reent *, unsigned short [7]);
long lrand48 (void);
long _lrand48_r (struct _reent *);
long mrand48 (void);
long _mrand48_r (struct _reent *);
long nrand48 (unsigned short [3]);
long _nrand48_r (struct _reent *, unsigned short [3]);
unsigned short *
       seed48 (unsigned short [3]);
unsigned short *
       _seed48_r (struct _reent *, unsigned short [3]);
void srand48 (long);
void _srand48_r (struct _reent *, long);




long long atoll (const char *__nptr);


long long _atoll_r (struct _reent *, const char *__nptr);




long long llabs (long long);
lldiv_t lldiv (long long __numer, long long __denom);
long long strtoll (const char *restrict __n, char **restrict __end_PTR, int __base);


long long _strtoll_r (struct _reent *, const char *restrict __n, char **restrict __end_PTR, int __base);




unsigned long long strtoull (const char *restrict __n, char **restrict __end_PTR, int __base);


unsigned long long _strtoull_r (struct _reent *, const char *restrict __n, char **restrict __end_PTR, int __base);


void cfree (void *);
int unsetenv (const char *__string);
int _unsetenv_r (struct _reent *, const char *__string);
# 258 "C:/esp/esp-idf/components/newlib/include/stdlib.h"
char * _dtoa_r (struct _reent *, double, int, int, int *, int*, char**);

void * _malloc_r (struct _reent *, size_t) ;
void * _calloc_r (struct _reent *, size_t, size_t) ;
void _free_r (struct _reent *, void *) ;
void * _realloc_r (struct _reent *, void *, size_t) ;
void _mstats_r (struct _reent *, char *);

int _system_r (struct _reent *, const char *);

void __eprintf (const char *, const char *, unsigned int, const char *);
# 291 "C:/esp/esp-idf/components/newlib/include/stdlib.h"
extern long double strtold (const char *restrict, char **restrict);




# 108 "C:/esp/esp-idf/components/freertos/include/freertos/FreeRTOSConfig.h" 2
# 1 "C:/esp/esp-idf/components/esp32/include/rom/ets_sys.h" 1
# 19 "C:/esp/esp-idf/components/esp32/include/rom/ets_sys.h"
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stdbool.h" 1 3 4
# 20 "C:/esp/esp-idf/components/esp32/include/rom/ets_sys.h" 2

# 1 "C:/esp/esp-idf/components/soc/esp32/include/soc/soc.h" 1
# 20 "C:/esp/esp-idf/components/soc/esp32/include/soc/soc.h"
# 1 "C:/esp/esp-idf/components/esp32/include/esp_assert.h" 1
# 17 "C:/esp/esp-idf/components/esp32/include/esp_assert.h"
# 1 "C:/esp/esp-idf/components/newlib/platform_include/assert.h" 1
# 19 "C:/esp/esp-idf/components/newlib/platform_include/assert.h"
       
# 1 "C:/esp/ArkPOS2-esp/build/include/sdkconfig.h" 1
# 21 "C:/esp/esp-idf/components/newlib/platform_include/assert.h" 2


# 1 "C:/esp/esp-idf/components/newlib/include/assert.h" 1
# 39 "C:/esp/esp-idf/components/newlib/include/assert.h"
void __assert (const char *, int, const char *) __attribute__ ((__noreturn__))
                                 ;
void __assert_func (const char *, int, const char *, const char *) __attribute__ ((__noreturn__))
                                 ;
# 24 "C:/esp/esp-idf/components/newlib/platform_include/assert.h" 2
# 18 "C:/esp/esp-idf/components/esp32/include/esp_assert.h" 2
# 21 "C:/esp/esp-idf/components/soc/esp32/include/soc/soc.h" 2
# 22 "C:/esp/esp-idf/components/esp32/include/rom/ets_sys.h" 2
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
# 109 "C:/esp/esp-idf/components/freertos/include/freertos/FreeRTOSConfig.h" 2
# 100 "C:/esp/esp-idf/components/freertos/include/freertos/FreeRTOS.h" 2


# 1 "C:/esp/esp-idf/components/freertos/include/freertos/projdefs.h" 1
# 77 "C:/esp/esp-idf/components/freertos/include/freertos/projdefs.h"
typedef void (*TaskFunction_t)( void * );
# 103 "C:/esp/esp-idf/components/freertos/include/freertos/FreeRTOS.h" 2


# 1 "C:/esp/esp-idf/components/freertos/include/freertos/portable.h" 1
# 87 "C:/esp/esp-idf/components/freertos/include/freertos/portable.h"
# 1 "C:/esp/esp-idf/components/freertos/include/freertos/deprecated_definitions.h" 1
# 88 "C:/esp/esp-idf/components/freertos/include/freertos/portable.h" 2






# 1 "C:/esp/esp-idf/components/freertos/include/freertos/portmacro.h" 1
# 77 "C:/esp/esp-idf/components/freertos/include/freertos/portmacro.h"
# 1 "C:/esp/esp-idf/components/esp32/include/xtensa/tie/xt_core.h" 1
# 78 "C:/esp/esp-idf/components/freertos/include/freertos/portmacro.h" 2



# 1 "C:/esp/esp-idf/components/esp32/include/xtensa/xtruntime.h" 1
# 30 "C:/esp/esp-idf/components/esp32/include/xtensa/xtruntime.h"
# 1 "C:/esp/esp-idf/components/esp32/include/xtensa/config/specreg.h" 1
# 31 "C:/esp/esp-idf/components/esp32/include/xtensa/xtruntime.h" 2
# 1 "C:/esp/esp-idf/components/esp32/include/xtensa/xtruntime-core-state.h" 1
# 44 "C:/esp/esp-idf/components/esp32/include/xtensa/xtruntime-core-state.h"
typedef struct {
long signature;
long restore_label;
long aftersave_label;
long areg[64];

long caller_regs[16];
long caller_regs_saved;





long windowbase;
long windowstart;

long sar;

long epc1;
long ps;
long excsave1;

long depc;



long epc[6 + 1 - 1];
long eps[6 + 1 - 1];
long excsave[6 + 1 - 1];


long lcount;
long lbeg;
long lend;





long vecbase;


long atomctl;





long memctl;


long ccount;
long ccompare[3];


long intenable;
long interrupt;


long icount;
long icountlevel;
long debugcause;


long dbreakc[2];
long dbreaka[2];


long ibreaka[2];
long ibreakenable;



long misc[4];
# 131 "C:/esp/esp-idf/components/esp32/include/xtensa/xtruntime-core-state.h"
long cpenable;




long tlbs[8*2];
# 163 "C:/esp/esp-idf/components/esp32/include/xtensa/xtruntime-core-state.h"
char ncp[48] __attribute__((aligned(4)));

char cp0[72] __attribute__((aligned(4)));
char cp1[0] __attribute__((aligned(1)));
char cp2[0] __attribute__((aligned(1)));
char cp3[0] __attribute__((aligned(1)));
char cp4[0] __attribute__((aligned(1)));
char cp5[0] __attribute__((aligned(1)));
char cp6[0] __attribute__((aligned(1)));
char cp7[0] __attribute__((aligned(1)));
# 183 "C:/esp/esp-idf/components/esp32/include/xtensa/xtruntime-core-state.h"
} XtosCoreState;
# 32 "C:/esp/esp-idf/components/esp32/include/xtensa/xtruntime.h" 2
# 61 "C:/esp/esp-idf/components/esp32/include/xtensa/xtruntime.h"
typedef void (_xtos_handler_func)();

typedef _xtos_handler_func *_xtos_handler;
# 151 "C:/esp/esp-idf/components/esp32/include/xtensa/xtruntime.h"
extern unsigned int _xtos_ints_off( unsigned int mask );
extern unsigned int _xtos_ints_on( unsigned int mask );
extern unsigned _xtos_set_intlevel( int intlevel );
extern unsigned _xtos_set_min_intlevel( int intlevel );
extern unsigned _xtos_restore_intlevel( unsigned restoreval );
extern unsigned _xtos_restore_just_intlevel( unsigned restoreval );
extern _xtos_handler _xtos_set_interrupt_handler( int n, _xtos_handler f );
extern _xtos_handler _xtos_set_interrupt_handler_arg( int n, _xtos_handler f, void *arg );
extern _xtos_handler _xtos_set_exception_handler( int n, _xtos_handler f );

extern void _xtos_memep_initrams( void );
extern void _xtos_memep_enable( int flags );



extern void _xtos_dispatch_level1_interrupts( void );


extern void _xtos_dispatch_level2_interrupts( void );


extern void _xtos_dispatch_level3_interrupts( void );


extern void _xtos_dispatch_level4_interrupts( void );


extern void _xtos_dispatch_level5_interrupts( void );


extern void _xtos_dispatch_level6_interrupts( void );



extern unsigned int _xtos_read_ints( void );
extern void _xtos_clear_ints( unsigned int mask );



extern int _xtos_core_shutoff(unsigned flags);
extern int _xtos_core_save(unsigned flags, XtosCoreState *savearea, void *code);
extern void _xtos_core_restore(unsigned retvalue, XtosCoreState *savearea);
# 202 "C:/esp/esp-idf/components/esp32/include/xtensa/xtruntime.h"
extern void _xtos_timer_0_delta( int cycles );


extern void _xtos_timer_1_delta( int cycles );


extern void _xtos_timer_2_delta( int cycles );
# 82 "C:/esp/esp-idf/components/freertos/include/freertos/portmacro.h" 2
# 1 "C:/esp/esp-idf/components/esp32/include/esp_crosscore_int.h" 1
# 27 "C:/esp/esp-idf/components/esp32/include/esp_crosscore_int.h"
void esp_crosscore_int_init();
# 40 "C:/esp/esp-idf/components/esp32/include/esp_crosscore_int.h"
void esp_crosscore_int_send_yield(int coreId);
# 83 "C:/esp/esp-idf/components/freertos/include/freertos/portmacro.h" 2
# 107 "C:/esp/esp-idf/components/freertos/include/freertos/portmacro.h"
typedef uint8_t StackType_t;
typedef int BaseType_t;
typedef unsigned int UBaseType_t;





 typedef uint32_t TickType_t;





# 1 "C:/esp/esp-idf/components/freertos/include/freertos/portbenchmark.h" 1
# 122 "C:/esp/esp-idf/components/freertos/include/freertos/portmacro.h" 2

# 1 "C:/esp/ArkPOS2-esp/build/include/sdkconfig.h" 1
# 124 "C:/esp/esp-idf/components/freertos/include/freertos/portmacro.h" 2
# 1 "C:/esp/esp-idf/components/esp32/include/esp_attr.h" 1
# 125 "C:/esp/esp-idf/components/freertos/include/freertos/portmacro.h" 2




typedef struct {
 uint32_t owner;
 uint32_t count;




} portMUX_TYPE;
# 174 "C:/esp/esp-idf/components/freertos/include/freertos/portmacro.h"
void vPortAssertIfInISR();
# 202 "C:/esp/esp-idf/components/freertos/include/freertos/portmacro.h"
void vPortCPUInitializeMutex(portMUX_TYPE *mux);
# 216 "C:/esp/esp-idf/components/freertos/include/freertos/portmacro.h"
void vTaskExitCritical( portMUX_TYPE *mux );
void vTaskEnterCritical( portMUX_TYPE *mux );
void vPortCPUAcquireMutex(portMUX_TYPE *mux);
# 228 "C:/esp/esp-idf/components/freertos/include/freertos/portmacro.h"

# 228 "C:/esp/esp-idf/components/freertos/include/freertos/portmacro.h" 3 4
_Bool 
# 228 "C:/esp/esp-idf/components/freertos/include/freertos/portmacro.h"
    vPortCPUAcquireMutexTimeout(portMUX_TYPE *mux, int timeout_cycles);
void vPortCPUReleaseMutex(portMUX_TYPE *mux);
# 241 "C:/esp/esp-idf/components/freertos/include/freertos/portmacro.h"
static inline unsigned portENTER_CRITICAL_NESTED() { unsigned state = ({ unsigned __tmp; __asm__ __volatile__( "rsil	%0, " "3" "\n" : "=a" (__tmp) : : "memory" ); __tmp;}); ; return state; }
# 258 "C:/esp/esp-idf/components/freertos/include/freertos/portmacro.h"
static inline void uxPortCompareSet(volatile uint32_t *addr, uint32_t compare, uint32_t *set) {
    __asm__ __volatile__ (
        "WSR 	    %2,SCOMPARE1 \n"
        "S32C1I     %0, %1, 0	 \n"
        :"=r"(*set)
        :"r"(addr), "r"(compare), "0"(*set)
        );
}
# 281 "C:/esp/esp-idf/components/freertos/include/freertos/portmacro.h"
void vPortYield( void );
void _frxt_setup_switch( void );



static inline uint32_t xPortGetCoreID();
# 307 "C:/esp/esp-idf/components/freertos/include/freertos/portmacro.h"
typedef struct {

 volatile StackType_t* coproc_area;
# 324 "C:/esp/esp-idf/components/freertos/include/freertos/portmacro.h"
} xMPU_SETTINGS;
# 336 "C:/esp/esp-idf/components/freertos/include/freertos/portmacro.h"
void _xt_coproc_release(volatile void * coproc_sa_base);
# 95 "C:/esp/esp-idf/components/freertos/include/freertos/portable.h" 2
# 125 "C:/esp/esp-idf/components/freertos/include/freertos/portable.h"
# 1 "C:/esp/esp-idf/components/freertos/include/freertos/mpu_wrappers.h" 1
# 126 "C:/esp/esp-idf/components/freertos/include/freertos/portable.h" 2
# 1 "C:/esp/esp-idf/components/esp32/include/esp_system.h" 1
# 20 "C:/esp/esp-idf/components/esp32/include/esp_system.h"
# 1 "C:/esp/esp-idf/components/esp32/include/esp_err.h" 1
# 14 "C:/esp/esp-idf/components/esp32/include/esp_err.h"
       


# 1 "C:/esp/esp-idf/components/newlib/include/stdio.h" 1
# 36 "C:/esp/esp-idf/components/newlib/include/stdio.h"
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 37 "C:/esp/esp-idf/components/newlib/include/stdio.h" 2


# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stdarg.h" 1 3 4
# 40 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stdarg.h" 3 4

# 40 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 40 "C:/esp/esp-idf/components/newlib/include/stdio.h" 2
# 48 "C:/esp/esp-idf/components/newlib/include/stdio.h"
# 1 "C:/esp/esp-idf/components/newlib/include/sys/types.h" 1
# 69 "C:/esp/esp-idf/components/newlib/include/sys/types.h"
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 70 "C:/esp/esp-idf/components/newlib/include/sys/types.h" 2
# 1 "C:/esp/esp-idf/components/newlib/include/machine/types.h" 1
# 19 "C:/esp/esp-idf/components/newlib/include/machine/types.h"

# 19 "C:/esp/esp-idf/components/newlib/include/machine/types.h"
typedef long int __off_t;
typedef int __pid_t;

__extension__ typedef long long int __loff_t;
# 71 "C:/esp/esp-idf/components/newlib/include/sys/types.h" 2
# 93 "C:/esp/esp-idf/components/newlib/include/sys/types.h"
typedef unsigned char u_char;



typedef unsigned short u_short;



typedef unsigned int u_int;



typedef unsigned long u_long;





typedef unsigned short ushort;
typedef unsigned int uint;
typedef unsigned long ulong;



typedef unsigned long clock_t;




typedef long time_t;







struct timespec {
  time_t tv_sec;
  long tv_nsec;
};


struct itimerspec {
  struct timespec it_interval;
  struct timespec it_value;
};


typedef long daddr_t;



typedef char * caddr_t;
# 155 "C:/esp/esp-idf/components/newlib/include/sys/types.h"
typedef unsigned short ino_t;
# 184 "C:/esp/esp-idf/components/newlib/include/sys/types.h"
typedef _off_t off_t;
typedef __dev_t dev_t;
typedef __uid_t uid_t;
typedef __gid_t gid_t;





typedef int pid_t;







typedef long key_t;

typedef _ssize_t ssize_t;
# 217 "C:/esp/esp-idf/components/newlib/include/sys/types.h"
typedef unsigned int mode_t __attribute__ ((__mode__ (__SI__)));




typedef unsigned short nlink_t;
# 244 "C:/esp/esp-idf/components/newlib/include/sys/types.h"
typedef long fd_mask;







typedef struct _types_fd_set {
 fd_mask fds_bits[(((64)+(((sizeof (fd_mask) * 8))-1))/((sizeof (fd_mask) * 8)))];
} _types_fd_set;
# 275 "C:/esp/esp-idf/components/newlib/include/sys/types.h"
typedef unsigned long clockid_t;




typedef unsigned long timer_t;



typedef unsigned long useconds_t;
typedef long suseconds_t;
# 299 "C:/esp/esp-idf/components/newlib/include/sys/types.h"
# 1 "C:/esp/esp-idf/components/newlib/include/sys/sched.h" 1
# 46 "C:/esp/esp-idf/components/newlib/include/sys/sched.h"
struct sched_param {
  int sched_priority;
# 59 "C:/esp/esp-idf/components/newlib/include/sys/sched.h"
};

int sched_yield( void );
# 300 "C:/esp/esp-idf/components/newlib/include/sys/types.h" 2
# 308 "C:/esp/esp-idf/components/newlib/include/sys/types.h"
typedef __uint32_t pthread_t;
# 341 "C:/esp/esp-idf/components/newlib/include/sys/types.h"
typedef struct {
  int is_initialized;
  void *stackaddr;
  int stacksize;
  int contentionscope;
  int inheritsched;
  int schedpolicy;
  struct sched_param schedparam;
# 357 "C:/esp/esp-idf/components/newlib/include/sys/types.h"
  int detachstate;





} pthread_attr_t;
# 442 "C:/esp/esp-idf/components/newlib/include/sys/types.h"
typedef __uint32_t pthread_mutex_t;

typedef struct {
  int is_initialized;
# 454 "C:/esp/esp-idf/components/newlib/include/sys/types.h"
  int type;

  int recursive;
} pthread_mutexattr_t;




typedef __uint32_t pthread_cond_t;

typedef struct {
  int is_initialized;



} pthread_condattr_t;



typedef __uint32_t pthread_key_t;

typedef struct {
  int is_initialized;
  int init_executed;
} pthread_once_t;
# 49 "C:/esp/esp-idf/components/newlib/include/stdio.h" 2



typedef __FILE FILE;




typedef _fpos_t fpos_t;





# 1 "C:/esp/esp-idf/components/newlib/include/sys/stdio.h" 1
# 64 "C:/esp/esp-idf/components/newlib/include/stdio.h" 2
# 164 "C:/esp/esp-idf/components/newlib/include/stdio.h"
FILE * tmpfile (void);
char * tmpnam (char *);

char * tempnam (const char *, const char *);

int fclose (FILE *);
int fflush (FILE *);
FILE * freopen (const char *restrict, const char *restrict, FILE *restrict);
void setbuf (FILE *restrict, char *restrict);
int setvbuf (FILE *restrict, char *restrict, int, size_t);
int fprintf (FILE *restrict, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int fscanf (FILE *restrict, const char *restrict, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
int printf (const char *restrict, ...) __attribute__ ((__format__ (__printf__, 1, 2)))
                                                            ;
int scanf (const char *restrict, ...) __attribute__ ((__format__ (__scanf__, 1, 2)))
                                                           ;
int sscanf (const char *restrict, const char *restrict, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
int vfprintf (FILE *restrict, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int vprintf (const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 1, 0)))
                                                            ;
int vsprintf (char *restrict, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int fgetc (FILE *);
char * fgets (char *restrict, int, FILE *restrict);
int fputc (int, FILE *);
int fputs (const char *restrict, FILE *restrict);
int getc (FILE *);
int getchar (void);
char * gets (char *);
int putc (int, FILE *);
int putchar (int);
int puts (const char *);
int ungetc (int, FILE *);
size_t fread (void * restrict, size_t _size, size_t _n, FILE *restrict);
size_t fwrite (const void * restrict , size_t _size, size_t _n, FILE *);



int fgetpos (FILE *restrict, fpos_t *restrict);

int fseek (FILE *, long, int);



int fsetpos (FILE *, const fpos_t *);

long ftell ( FILE *);
void rewind (FILE *);
void clearerr (FILE *);
int feof (FILE *);
int ferror (FILE *);
void perror (const char *);

FILE * fopen (const char *restrict _name, const char *restrict _type);
int sprintf (char *restrict, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int remove (const char *);
int rename (const char *, const char *);
# 235 "C:/esp/esp-idf/components/newlib/include/stdio.h"
int fseeko (FILE *, off_t, int);
off_t ftello ( FILE *);







int asiprintf (char **, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
char * asniprintf (char *, size_t *, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
char * asnprintf (char *restrict, size_t *restrict, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int asprintf (char **restrict, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;

int diprintf (int, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;

int fiprintf (FILE *, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int fiscanf (FILE *, const char *, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
int iprintf (const char *, ...) __attribute__ ((__format__ (__printf__, 1, 2)))
                                                            ;
int iscanf (const char *, ...) __attribute__ ((__format__ (__scanf__, 1, 2)))
                                                           ;
int siprintf (char *, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int siscanf (const char *, const char *, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
int snprintf (char *restrict, size_t, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int sniprintf (char *, size_t, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int vasiprintf (char **, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
char * vasniprintf (char *, size_t *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
char * vasnprintf (char *, size_t *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int vasprintf (char **, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int vdiprintf (int, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int vfiprintf (FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int vfiscanf (FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
int vfscanf (FILE *restrict, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
int viprintf (const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 1, 0)))
                                                            ;
int viscanf (const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 1, 0)))
                                                           ;
int vscanf (const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 1, 0)))
                                                           ;
int vsiprintf (char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int vsiscanf (const char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
int vsniprintf (char *, size_t, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int vsnprintf (char *restrict, size_t, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int vsscanf (const char *restrict, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
# 313 "C:/esp/esp-idf/components/newlib/include/stdio.h"
FILE * fdopen (int, const char *);

int fileno (FILE *);
int getw (FILE *);
int pclose (FILE *);
FILE * popen (const char *, const char *);
int putw (int, FILE *);
void setbuffer (FILE *, char *, int);
int setlinebuf (FILE *);
int getc_unlocked (FILE *);
int getchar_unlocked (void);
void flockfile (FILE *);
int ftrylockfile (FILE *);
void funlockfile (FILE *);
int putc_unlocked (int, FILE *);
int putchar_unlocked (int);
# 338 "C:/esp/esp-idf/components/newlib/include/stdio.h"
int dprintf (int, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;

FILE * fmemopen (void *restrict, size_t, const char *restrict);


FILE * open_memstream (char **, size_t *);

int renameat (int, const char *, int, const char *);

int vdprintf (int, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;







int _asiprintf_r (struct _reent *, char **, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
char * _asniprintf_r (struct _reent *, char *, size_t *, const char *, ...) __attribute__ ((__format__ (__printf__, 4, 5)))
                                                            ;
char * _asnprintf_r (struct _reent *, char *restrict, size_t *restrict, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 4, 5)))
                                                            ;
int _asprintf_r (struct _reent *, char **restrict, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _diprintf_r (struct _reent *, int, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _dprintf_r (struct _reent *, int, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _fclose_r (struct _reent *, FILE *);
int _fcloseall_r (struct _reent *);
FILE * _fdopen_r (struct _reent *, int, const char *);
int _fflush_r (struct _reent *, FILE *);
int _fgetc_r (struct _reent *, FILE *);
int _fgetc_unlocked_r (struct _reent *, FILE *);
char * _fgets_r (struct _reent *, char *restrict, int, FILE *restrict);
char * _fgets_unlocked_r (struct _reent *, char *restrict, int, FILE *restrict);




int _fgetpos_r (struct _reent *, FILE *, fpos_t *);
int _fsetpos_r (struct _reent *, FILE *, const fpos_t *);

int _fiprintf_r (struct _reent *, FILE *, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _fiscanf_r (struct _reent *, FILE *, const char *, ...) __attribute__ ((__format__ (__scanf__, 3, 4)))
                                                           ;
FILE * _fmemopen_r (struct _reent *, void *restrict, size_t, const char *restrict);
FILE * _fopen_r (struct _reent *, const char *restrict, const char *restrict);
FILE * _freopen_r (struct _reent *, const char *restrict, const char *restrict, FILE *restrict);
int _fprintf_r (struct _reent *, FILE *restrict, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _fpurge_r (struct _reent *, FILE *);
int _fputc_r (struct _reent *, int, FILE *);
int _fputc_unlocked_r (struct _reent *, int, FILE *);
int _fputs_r (struct _reent *, const char *restrict, FILE *restrict);
int _fputs_unlocked_r (struct _reent *, const char *restrict, FILE *restrict);
size_t _fread_r (struct _reent *, void * restrict, size_t _size, size_t _n, FILE *restrict);
size_t _fread_unlocked_r (struct _reent *, void * restrict, size_t _size, size_t _n, FILE *restrict);
int _fscanf_r (struct _reent *, FILE *restrict, const char *restrict, ...) __attribute__ ((__format__ (__scanf__, 3, 4)))
                                                           ;
int _fseek_r (struct _reent *, FILE *, long, int);
int _fseeko_r (struct _reent *, FILE *, _off_t, int);
long _ftell_r (struct _reent *, FILE *);
_off_t _ftello_r (struct _reent *, FILE *);
void _rewind_r (struct _reent *, FILE *);
size_t _fwrite_r (struct _reent *, const void * restrict, size_t _size, size_t _n, FILE *restrict);
size_t _fwrite_unlocked_r (struct _reent *, const void * restrict, size_t _size, size_t _n, FILE *restrict);
int _getc_r (struct _reent *, FILE *);
int _getc_unlocked_r (struct _reent *, FILE *);
int _getchar_r (struct _reent *);
int _getchar_unlocked_r (struct _reent *);
char * _gets_r (struct _reent *, char *);
int _iprintf_r (struct _reent *, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int _iscanf_r (struct _reent *, const char *, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
FILE * _open_memstream_r (struct _reent *, char **, size_t *);
void _perror_r (struct _reent *, const char *);
int _printf_r (struct _reent *, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int _putc_r (struct _reent *, int, FILE *);
int _putc_unlocked_r (struct _reent *, int, FILE *);
int _putchar_unlocked_r (struct _reent *, int);
int _putchar_r (struct _reent *, int);
int _puts_r (struct _reent *, const char *);
int _remove_r (struct _reent *, const char *);
int _rename_r (struct _reent *, const char *_old, const char *_new)
                                          ;
int _scanf_r (struct _reent *, const char *restrict, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
int _siprintf_r (struct _reent *, char *, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _siscanf_r (struct _reent *, const char *, const char *, ...) __attribute__ ((__format__ (__scanf__, 3, 4)))
                                                           ;
int _sniprintf_r (struct _reent *, char *, size_t, const char *, ...) __attribute__ ((__format__ (__printf__, 4, 5)))
                                                            ;
int _snprintf_r (struct _reent *, char *restrict, size_t, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 4, 5)))
                                                            ;
int _sprintf_r (struct _reent *, char *restrict, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _sscanf_r (struct _reent *, const char *restrict, const char *restrict, ...) __attribute__ ((__format__ (__scanf__, 3, 4)))
                                                           ;
char * _tempnam_r (struct _reent *, const char *, const char *);
FILE * _tmpfile_r (struct _reent *);
char * _tmpnam_r (struct _reent *, char *);
int _ungetc_r (struct _reent *, int, FILE *);
int _vasiprintf_r (struct _reent *, char **, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
char * _vasniprintf_r (struct _reent*, char *, size_t *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 4, 0)))
                                                            ;
char * _vasnprintf_r (struct _reent*, char *, size_t *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 4, 0)))
                                                            ;
int _vasprintf_r (struct _reent *, char **, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vdiprintf_r (struct _reent *, int, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vdprintf_r (struct _reent *, int, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vfiprintf_r (struct _reent *, FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vfiscanf_r (struct _reent *, FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 3, 0)))
                                                           ;
int _vfprintf_r (struct _reent *, FILE *restrict, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vfscanf_r (struct _reent *, FILE *restrict, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 3, 0)))
                                                           ;
int _viprintf_r (struct _reent *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int _viscanf_r (struct _reent *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
int _vprintf_r (struct _reent *, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int _vscanf_r (struct _reent *, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
int _vsiprintf_r (struct _reent *, char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vsiscanf_r (struct _reent *, const char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 3, 0)))
                                                           ;
int _vsniprintf_r (struct _reent *, char *, size_t, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 4, 0)))
                                                            ;
int _vsnprintf_r (struct _reent *, char *restrict, size_t, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 4, 0)))
                                                            ;
int _vsprintf_r (struct _reent *, char *restrict, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vsscanf_r (struct _reent *, const char *restrict, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 3, 0)))
                                                           ;



int fpurge (FILE *);
ssize_t __getdelim (char **, size_t *, int, FILE *);
ssize_t __getline (char **, size_t *, FILE *);


void clearerr_unlocked (FILE *);
int feof_unlocked (FILE *);
int ferror_unlocked (FILE *);
int fileno_unlocked (FILE *);
int fflush_unlocked (FILE *);
int fgetc_unlocked (FILE *);
int fputc_unlocked (int, FILE *);
size_t fread_unlocked (void * restrict, size_t _size, size_t _n, FILE *restrict);
size_t fwrite_unlocked (const void * restrict , size_t _size, size_t _n, FILE *);
# 538 "C:/esp/esp-idf/components/newlib/include/stdio.h"
int __srget_r (struct _reent *, FILE *);
int __swbuf_r (struct _reent *, int, FILE *);
# 562 "C:/esp/esp-idf/components/newlib/include/stdio.h"
FILE *funopen (const void * __cookie, int (*__readfn)(void * __cookie, char *__buf, int __n), int (*__writefn)(void * __cookie, const char *__buf, int __n), fpos_t (*__seekfn)(void * __cookie, fpos_t __off, int __whence), int (*__closefn)(void * __cookie))





                                   ;
FILE *_funopen_r (struct _reent *, const void * __cookie, int (*__readfn)(void * __cookie, char *__buf, int __n), int (*__writefn)(void * __cookie, const char *__buf, int __n), fpos_t (*__seekfn)(void * __cookie, fpos_t __off, int __whence), int (*__closefn)(void * __cookie))





                                   ;







typedef ssize_t cookie_read_function_t(void *__cookie, char *__buf, size_t __n);
typedef ssize_t cookie_write_function_t(void *__cookie, const char *__buf,
     size_t __n);




typedef int cookie_seek_function_t(void *__cookie, off_t *__off, int __whence);

typedef int cookie_close_function_t(void *__cookie);
typedef struct
{


  cookie_read_function_t *read;
  cookie_write_function_t *write;
  cookie_seek_function_t *seek;
  cookie_close_function_t *close;
} cookie_io_functions_t;
FILE *fopencookie (void *__cookie, const char *__mode, cookie_io_functions_t __functions)
                                                         ;
FILE *_fopencookie_r (struct _reent *, void *__cookie, const char *__mode, cookie_io_functions_t __functions)
                                                         ;
# 725 "C:/esp/esp-idf/components/newlib/include/stdio.h"

# 18 "C:/esp/esp-idf/components/esp32/include/esp_err.h" 2






typedef int32_t esp_err_t;
# 45 "C:/esp/esp-idf/components/esp32/include/esp_err.h"
void _esp_error_check_failed(esp_err_t rc, const char *file, int line, const char *function, const char *expression) __attribute__((noreturn));
# 21 "C:/esp/esp-idf/components/esp32/include/esp_system.h" 2
# 1 "C:/esp/esp-idf/components/esp32/include/esp_sleep.h" 1
# 15 "C:/esp/esp-idf/components/esp32/include/esp_sleep.h"
       



# 1 "C:/esp/esp-idf/components/driver/include/driver/gpio.h" 1
# 18 "C:/esp/esp-idf/components/driver/include/driver/gpio.h"
# 1 "C:/esp/esp-idf/components/esp32/include/esp_types.h" 1
# 23 "C:/esp/esp-idf/components/esp32/include/esp_types.h"
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 24 "C:/esp/esp-idf/components/esp32/include/esp_types.h" 2
# 19 "C:/esp/esp-idf/components/driver/include/driver/gpio.h" 2
# 1 "C:/esp/esp-idf/components/soc/esp32/include/soc/gpio_reg.h" 1
# 17 "C:/esp/esp-idf/components/soc/esp32/include/soc/gpio_reg.h"
# 1 "C:/esp/esp-idf/components/soc/esp32/include/soc/soc.h" 1
# 18 "C:/esp/esp-idf/components/soc/esp32/include/soc/gpio_reg.h" 2
# 20 "C:/esp/esp-idf/components/driver/include/driver/gpio.h" 2
# 1 "C:/esp/esp-idf/components/soc/esp32/include/soc/gpio_struct.h" 1
# 21 "C:/esp/esp-idf/components/soc/esp32/include/soc/gpio_struct.h"
typedef volatile struct {
    uint32_t bt_select;
    uint32_t out;
    uint32_t out_w1ts;
    uint32_t out_w1tc;
    union {
        struct {
            uint32_t data: 8;
            uint32_t reserved8: 24;
        };
        uint32_t val;
    } out1;
    union {
        struct {
            uint32_t data: 8;
            uint32_t reserved8: 24;
        };
        uint32_t val;
    } out1_w1ts;
    union {
        struct {
            uint32_t data: 8;
            uint32_t reserved8: 24;
        };
        uint32_t val;
    } out1_w1tc;
    union {
        struct {
            uint32_t sel: 8;
            uint32_t reserved8: 24;
        };
        uint32_t val;
    } sdio_select;
    uint32_t enable;
    uint32_t enable_w1ts;
    uint32_t enable_w1tc;
    union {
        struct {
            uint32_t data: 8;
            uint32_t reserved8: 24;
        };
        uint32_t val;
    } enable1;
    union {
        struct {
            uint32_t data: 8;
            uint32_t reserved8: 24;
        };
        uint32_t val;
    } enable1_w1ts;
    union {
        struct {
            uint32_t data: 8;
            uint32_t reserved8: 24;
        };
        uint32_t val;
    } enable1_w1tc;
    union {
        struct {
            uint32_t strapping: 16;
            uint32_t reserved16:16;
        };
        uint32_t val;
    } strap;
    uint32_t in;
    union {
        struct {
            uint32_t data: 8;
            uint32_t reserved8: 24;
        };
        uint32_t val;
    } in1;
    uint32_t status;
    uint32_t status_w1ts;
    uint32_t status_w1tc;
    union {
        struct {
            uint32_t intr_st: 8;
            uint32_t reserved8: 24;
        };
        uint32_t val;
    } status1;
    union {
        struct {
            uint32_t intr_st: 8;
            uint32_t reserved8: 24;
        };
        uint32_t val;
    } status1_w1ts;
    union {
        struct {
            uint32_t intr_st: 8;
            uint32_t reserved8: 24;
        };
        uint32_t val;
    } status1_w1tc;
    uint32_t reserved_5c;
    uint32_t acpu_int;
    uint32_t acpu_nmi_int;
    uint32_t pcpu_int;
    uint32_t pcpu_nmi_int;
    uint32_t cpusdio_int;
    union {
        struct {
            uint32_t intr: 8;
            uint32_t reserved8: 24;
        };
        uint32_t val;
    } acpu_int1;
    union {
        struct {
            uint32_t intr: 8;
            uint32_t reserved8: 24;
        };
        uint32_t val;
    } acpu_nmi_int1;
    union {
        struct {
            uint32_t intr: 8;
            uint32_t reserved8: 24;
        };
        uint32_t val;
    } pcpu_int1;
    union {
        struct {
            uint32_t intr: 8;
            uint32_t reserved8: 24;
        };
        uint32_t val;
    } pcpu_nmi_int1;
    union {
        struct {
            uint32_t intr: 8;
            uint32_t reserved8: 24;
        };
        uint32_t val;
    } cpusdio_int1;
    union {
        struct {
            uint32_t reserved0: 2;
            uint32_t pad_driver: 1;
            uint32_t reserved3: 4;
            uint32_t int_type: 3;
            uint32_t wakeup_enable: 1;
            uint32_t config: 2;
            uint32_t int_ena: 5;
            uint32_t reserved18: 14;
        };
        uint32_t val;
    } pin[40];
    union {
        struct {
            uint32_t rtc_max: 10;
            uint32_t reserved10: 21;
            uint32_t start: 1;
        };
        uint32_t val;
    } cali_conf;
    union {
        struct {
            uint32_t value_sync2: 20;
            uint32_t reserved20: 10;
            uint32_t rdy_real: 1;
            uint32_t rdy_sync2: 1;
        };
        uint32_t val;
    } cali_data;
    union {
        struct {
            uint32_t func_sel: 6;
            uint32_t sig_in_inv: 1;
            uint32_t sig_in_sel: 1;
            uint32_t reserved8: 24;
        };
        uint32_t val;
    } func_in_sel_cfg[256];
    union {
        struct {
            uint32_t func_sel: 9;
            uint32_t inv_sel: 1;
            uint32_t oen_sel: 1;
            uint32_t oen_inv_sel: 1;
            uint32_t reserved12: 20;
        };
        uint32_t val;
    } func_out_sel_cfg[40];
} gpio_dev_t;
extern gpio_dev_t GPIO;
# 21 "C:/esp/esp-idf/components/driver/include/driver/gpio.h" 2
# 1 "C:/esp/esp-idf/components/soc/esp32/include/soc/rtc_io_reg.h" 1
# 22 "C:/esp/esp-idf/components/driver/include/driver/gpio.h" 2
# 1 "C:/esp/esp-idf/components/soc/esp32/include/soc/io_mux_reg.h" 1
# 94 "C:/esp/esp-idf/components/soc/esp32/include/soc/io_mux_reg.h"
static inline void __attribute__ ((deprecated)) PIN_PULLUP_DIS(uint32_t PIN_NAME)
{
    ({ ; (*(volatile uint32_t*)(PIN_NAME) &= ~(((1UL << (8))))); });
}

static inline void __attribute__ ((deprecated)) PIN_PULLUP_EN(uint32_t PIN_NAME)
{
    ({ ; (*(volatile uint32_t*)(PIN_NAME) |= (((1UL << (8))))); });
}

static inline void __attribute__ ((deprecated)) PIN_PULLDWN_DIS(uint32_t PIN_NAME)
{
    ({ ; (*(volatile uint32_t*)(PIN_NAME) &= ~(((1UL << (7))))); });
}

static inline void __attribute__ ((deprecated)) PIN_PULLDWN_EN(uint32_t PIN_NAME)
{
    ({ ; (*(volatile uint32_t*)(PIN_NAME) |= (((1UL << (7))))); });
}
# 23 "C:/esp/esp-idf/components/driver/include/driver/gpio.h" 2
# 1 "C:/esp/esp-idf/components/soc/esp32/include/soc/gpio_sig_map.h" 1
# 24 "C:/esp/esp-idf/components/driver/include/driver/gpio.h" 2
# 1 "C:/esp/esp-idf/components/esp32/include/rom/gpio.h" 1
# 48 "C:/esp/esp-idf/components/esp32/include/rom/gpio.h"
typedef enum {
    GPIO_PIN_INTR_DISABLE = 0,
    GPIO_PIN_INTR_POSEDGE = 1,
    GPIO_PIN_INTR_NEGEDGE = 2,
    GPIO_PIN_INTR_ANYEDGE = 3,
    GPIO_PIN_INTR_LOLEVEL = 4,
    GPIO_PIN_INTR_HILEVEL = 5
} GPIO_INT_TYPE;
# 64 "C:/esp/esp-idf/components/esp32/include/rom/gpio.h"
typedef void (* gpio_intr_handler_fn_t)(uint32_t intr_mask, 
# 64 "C:/esp/esp-idf/components/esp32/include/rom/gpio.h" 3 4
                                                           _Bool 
# 64 "C:/esp/esp-idf/components/esp32/include/rom/gpio.h"
                                                                high, void *arg);
# 75 "C:/esp/esp-idf/components/esp32/include/rom/gpio.h"
void gpio_init(void);
# 92 "C:/esp/esp-idf/components/esp32/include/rom/gpio.h"
void gpio_output_set(uint32_t set_mask, uint32_t clear_mask, uint32_t enable_mask, uint32_t disable_mask);
# 109 "C:/esp/esp-idf/components/esp32/include/rom/gpio.h"
void gpio_output_set_high(uint32_t set_mask, uint32_t clear_mask, uint32_t enable_mask, uint32_t disable_mask);
# 118 "C:/esp/esp-idf/components/esp32/include/rom/gpio.h"
uint32_t gpio_input_get(void);
# 127 "C:/esp/esp-idf/components/esp32/include/rom/gpio.h"
uint32_t gpio_input_get_high(void);
# 140 "C:/esp/esp-idf/components/esp32/include/rom/gpio.h"
void gpio_intr_handler_register(gpio_intr_handler_fn_t fn, void *arg);
# 150 "C:/esp/esp-idf/components/esp32/include/rom/gpio.h"
uint32_t gpio_intr_pending(void);
# 160 "C:/esp/esp-idf/components/esp32/include/rom/gpio.h"
uint32_t gpio_intr_pending_high(void);
# 170 "C:/esp/esp-idf/components/esp32/include/rom/gpio.h"
void gpio_intr_ack(uint32_t ack_mask);
# 180 "C:/esp/esp-idf/components/esp32/include/rom/gpio.h"
void gpio_intr_ack_high(uint32_t ack_mask);
# 192 "C:/esp/esp-idf/components/esp32/include/rom/gpio.h"
void gpio_pin_wakeup_enable(uint32_t i, GPIO_INT_TYPE intr_state);
# 202 "C:/esp/esp-idf/components/esp32/include/rom/gpio.h"
void gpio_pin_wakeup_disable(void);
# 218 "C:/esp/esp-idf/components/esp32/include/rom/gpio.h"
void gpio_matrix_in(uint32_t gpio, uint32_t signal_idx, 
# 218 "C:/esp/esp-idf/components/esp32/include/rom/gpio.h" 3 4
                                                       _Bool 
# 218 "C:/esp/esp-idf/components/esp32/include/rom/gpio.h"
                                                            inv);
# 234 "C:/esp/esp-idf/components/esp32/include/rom/gpio.h"
void gpio_matrix_out(uint32_t gpio, uint32_t signal_idx, 
# 234 "C:/esp/esp-idf/components/esp32/include/rom/gpio.h" 3 4
                                                        _Bool 
# 234 "C:/esp/esp-idf/components/esp32/include/rom/gpio.h"
                                                             out_inv, 
# 234 "C:/esp/esp-idf/components/esp32/include/rom/gpio.h" 3 4
                                                                      _Bool 
# 234 "C:/esp/esp-idf/components/esp32/include/rom/gpio.h"
                                                                           oen_inv);
# 243 "C:/esp/esp-idf/components/esp32/include/rom/gpio.h"
void gpio_pad_select_gpio(uint8_t gpio_num);
# 254 "C:/esp/esp-idf/components/esp32/include/rom/gpio.h"
void gpio_pad_set_drv(uint8_t gpio_num, uint8_t drv);
# 263 "C:/esp/esp-idf/components/esp32/include/rom/gpio.h"
void gpio_pad_pullup(uint8_t gpio_num);
# 272 "C:/esp/esp-idf/components/esp32/include/rom/gpio.h"
void gpio_pad_pulldown(uint8_t gpio_num);
# 281 "C:/esp/esp-idf/components/esp32/include/rom/gpio.h"
void gpio_pad_unhold(uint8_t gpio_num);
# 290 "C:/esp/esp-idf/components/esp32/include/rom/gpio.h"
void gpio_pad_hold(uint8_t gpio_num);
# 25 "C:/esp/esp-idf/components/driver/include/driver/gpio.h" 2

# 1 "C:/esp/esp-idf/components/esp32/include/esp_intr_alloc.h" 1
# 83 "C:/esp/esp-idf/components/esp32/include/esp_intr_alloc.h"
typedef void (*intr_handler_t)(void *arg);


typedef struct intr_handle_data_t intr_handle_data_t;
typedef intr_handle_data_t* intr_handle_t ;
# 104 "C:/esp/esp-idf/components/esp32/include/esp_intr_alloc.h"
esp_err_t esp_intr_mark_shared(int intno, int cpu, 
# 104 "C:/esp/esp-idf/components/esp32/include/esp_intr_alloc.h" 3 4
                                                  _Bool 
# 104 "C:/esp/esp-idf/components/esp32/include/esp_intr_alloc.h"
                                                       is_in_iram);
# 118 "C:/esp/esp-idf/components/esp32/include/esp_intr_alloc.h"
esp_err_t esp_intr_reserve(int intno, int cpu);
# 153 "C:/esp/esp-idf/components/esp32/include/esp_intr_alloc.h"
esp_err_t esp_intr_alloc(int source, int flags, intr_handler_t handler, void *arg, intr_handle_t *ret_handle);
# 191 "C:/esp/esp-idf/components/esp32/include/esp_intr_alloc.h"
esp_err_t esp_intr_alloc_intrstatus(int source, int flags, uint32_t intrstatusreg, uint32_t intrstatusmask, intr_handler_t handler, void *arg, intr_handle_t *ret_handle);
# 211 "C:/esp/esp-idf/components/esp32/include/esp_intr_alloc.h"
esp_err_t esp_intr_free(intr_handle_t handle);
# 221 "C:/esp/esp-idf/components/esp32/include/esp_intr_alloc.h"
int esp_intr_get_cpu(intr_handle_t handle);
# 230 "C:/esp/esp-idf/components/esp32/include/esp_intr_alloc.h"
int esp_intr_get_intno(intr_handle_t handle);
# 248 "C:/esp/esp-idf/components/esp32/include/esp_intr_alloc.h"
esp_err_t esp_intr_disable(intr_handle_t handle);
# 261 "C:/esp/esp-idf/components/esp32/include/esp_intr_alloc.h"
esp_err_t esp_intr_enable(intr_handle_t handle);





void esp_intr_noniram_disable();





void esp_intr_noniram_enable();
# 27 "C:/esp/esp-idf/components/driver/include/driver/gpio.h" 2
# 125 "C:/esp/esp-idf/components/driver/include/driver/gpio.h"
extern const uint32_t GPIO_PIN_MUX_REG[40];



typedef enum {
    GPIO_NUM_0 = 0,
    GPIO_NUM_1 = 1,
    GPIO_NUM_2 = 2,





    GPIO_NUM_3 = 3,
    GPIO_NUM_4 = 4,
    GPIO_NUM_5 = 5,
    GPIO_NUM_6 = 6,
    GPIO_NUM_7 = 7,
    GPIO_NUM_8 = 8,
    GPIO_NUM_9 = 9,
    GPIO_NUM_10 = 10,
    GPIO_NUM_11 = 11,
    GPIO_NUM_12 = 12,
    GPIO_NUM_13 = 13,
    GPIO_NUM_14 = 14,
    GPIO_NUM_15 = 15,
    GPIO_NUM_16 = 16,
    GPIO_NUM_17 = 17,
    GPIO_NUM_18 = 18,
    GPIO_NUM_19 = 19,

    GPIO_NUM_21 = 21,
    GPIO_NUM_22 = 22,
    GPIO_NUM_23 = 23,

    GPIO_NUM_25 = 25,
    GPIO_NUM_26 = 26,
    GPIO_NUM_27 = 27,

    GPIO_NUM_32 = 32,
    GPIO_NUM_33 = 33,
    GPIO_NUM_34 = 34,
    GPIO_NUM_35 = 35,
    GPIO_NUM_36 = 36,
    GPIO_NUM_37 = 37,
    GPIO_NUM_38 = 38,
    GPIO_NUM_39 = 39,
    GPIO_NUM_MAX = 40,

} gpio_num_t;

typedef enum {
    GPIO_INTR_DISABLE = 0,
    GPIO_INTR_POSEDGE = 1,
    GPIO_INTR_NEGEDGE = 2,
    GPIO_INTR_ANYEDGE = 3,
    GPIO_INTR_LOW_LEVEL = 4,
    GPIO_INTR_HIGH_LEVEL = 5,
    GPIO_INTR_MAX,
} gpio_int_type_t;

typedef enum {
    GPIO_MODE_INPUT = (0x00000001),
    GPIO_MODE_OUTPUT = (0x00000002),
    GPIO_MODE_OUTPUT_OD = (((0x00000002))|((0x00000004))),
    GPIO_MODE_INPUT_OUTPUT_OD = (((0x00000001))|((0x00000002))|((0x00000004))),
    GPIO_MODE_INPUT_OUTPUT = (((0x00000001))|((0x00000002))),
} gpio_mode_t;

typedef enum {
    GPIO_PULLUP_DISABLE = 0x0,
    GPIO_PULLUP_ENABLE = 0x1,
} gpio_pullup_t;

typedef enum {
    GPIO_PULLDOWN_DISABLE = 0x0,
    GPIO_PULLDOWN_ENABLE = 0x1,
} gpio_pulldown_t;




typedef struct {
    uint64_t pin_bit_mask;
    gpio_mode_t mode;
    gpio_pullup_t pull_up_en;
    gpio_pulldown_t pull_down_en;
    gpio_int_type_t intr_type;
} gpio_config_t;

typedef enum {
    GPIO_PULLUP_ONLY,
    GPIO_PULLDOWN_ONLY,
    GPIO_PULLUP_PULLDOWN,
    GPIO_FLOATING,
} gpio_pull_mode_t;

typedef enum {
    GPIO_DRIVE_CAP_0 = 0,
    GPIO_DRIVE_CAP_1 = 1,
    GPIO_DRIVE_CAP_2 = 2,
    GPIO_DRIVE_CAP_DEFAULT = 2,
    GPIO_DRIVE_CAP_3 = 3,
    GPIO_DRIVE_CAP_MAX,
} gpio_drive_cap_t;

typedef void (*gpio_isr_t)(void*);
typedef intr_handle_t gpio_isr_handle_t;
# 246 "C:/esp/esp-idf/components/driver/include/driver/gpio.h"
esp_err_t gpio_config(const gpio_config_t *pGPIOConfig);
# 260 "C:/esp/esp-idf/components/driver/include/driver/gpio.h"
esp_err_t gpio_set_intr_type(gpio_num_t gpio_num, gpio_int_type_t intr_type);
# 272 "C:/esp/esp-idf/components/driver/include/driver/gpio.h"
esp_err_t gpio_intr_enable(gpio_num_t gpio_num);
# 284 "C:/esp/esp-idf/components/driver/include/driver/gpio.h"
esp_err_t gpio_intr_disable(gpio_num_t gpio_num);
# 297 "C:/esp/esp-idf/components/driver/include/driver/gpio.h"
esp_err_t gpio_set_level(gpio_num_t gpio_num, uint32_t level);
# 309 "C:/esp/esp-idf/components/driver/include/driver/gpio.h"
int gpio_get_level(gpio_num_t gpio_num);
# 324 "C:/esp/esp-idf/components/driver/include/driver/gpio.h"
esp_err_t gpio_set_direction(gpio_num_t gpio_num, gpio_mode_t mode);
# 339 "C:/esp/esp-idf/components/driver/include/driver/gpio.h"
esp_err_t gpio_set_pull_mode(gpio_num_t gpio_num, gpio_pull_mode_t pull);
# 352 "C:/esp/esp-idf/components/driver/include/driver/gpio.h"
esp_err_t gpio_wakeup_enable(gpio_num_t gpio_num, gpio_int_type_t intr_type);
# 363 "C:/esp/esp-idf/components/driver/include/driver/gpio.h"
esp_err_t gpio_wakeup_disable(gpio_num_t gpio_num);
# 388 "C:/esp/esp-idf/components/driver/include/driver/gpio.h"
esp_err_t gpio_isr_register(void (*fn)(void*), void * arg, int intr_alloc_flags, gpio_isr_handle_t *handle);
# 399 "C:/esp/esp-idf/components/driver/include/driver/gpio.h"
esp_err_t gpio_pullup_en(gpio_num_t gpio_num);
# 410 "C:/esp/esp-idf/components/driver/include/driver/gpio.h"
esp_err_t gpio_pullup_dis(gpio_num_t gpio_num);
# 421 "C:/esp/esp-idf/components/driver/include/driver/gpio.h"
esp_err_t gpio_pulldown_en(gpio_num_t gpio_num);
# 432 "C:/esp/esp-idf/components/driver/include/driver/gpio.h"
esp_err_t gpio_pulldown_dis(gpio_num_t gpio_num);
# 447 "C:/esp/esp-idf/components/driver/include/driver/gpio.h"
esp_err_t gpio_install_isr_service(int intr_alloc_flags);




void gpio_uninstall_isr_service();
# 478 "C:/esp/esp-idf/components/driver/include/driver/gpio.h"
esp_err_t gpio_isr_handler_add(gpio_num_t gpio_num, gpio_isr_t isr_handler, void* args);
# 490 "C:/esp/esp-idf/components/driver/include/driver/gpio.h"
esp_err_t gpio_isr_handler_remove(gpio_num_t gpio_num);
# 502 "C:/esp/esp-idf/components/driver/include/driver/gpio.h"
esp_err_t gpio_set_drive_capability(gpio_num_t gpio_num, gpio_drive_cap_t strength);
# 514 "C:/esp/esp-idf/components/driver/include/driver/gpio.h"
esp_err_t gpio_get_drive_capability(gpio_num_t gpio_num, gpio_drive_cap_t* strength);
# 20 "C:/esp/esp-idf/components/esp32/include/esp_sleep.h" 2
# 1 "C:/esp/esp-idf/components/driver/include/driver/touch_pad.h" 1
# 20 "C:/esp/esp-idf/components/driver/include/driver/touch_pad.h"
# 1 "C:/esp/esp-idf/components/esp32/include/esp_intr.h" 1
# 18 "C:/esp/esp-idf/components/esp32/include/esp_intr.h"
# 1 "C:/esp/esp-idf/components/esp32/include/rom/ets_sys.h" 1
# 19 "C:/esp/esp-idf/components/esp32/include/esp_intr.h" 2
# 1 "C:/esp/esp-idf/components/freertos/include/freertos/xtensa_api.h" 1
# 37 "C:/esp/esp-idf/components/freertos/include/freertos/xtensa_api.h"
typedef void (*xt_handler)(void *);


typedef void (*xt_exc_handler)(XtExcFrame *);
# 60 "C:/esp/esp-idf/components/freertos/include/freertos/xtensa_api.h"
extern xt_exc_handler xt_set_exception_handler(int n, xt_exc_handler f);
# 73 "C:/esp/esp-idf/components/freertos/include/freertos/xtensa_api.h"
extern xt_handler xt_set_interrupt_handler(int n, xt_handler f, void * arg);
# 84 "C:/esp/esp-idf/components/freertos/include/freertos/xtensa_api.h"
extern void xt_ints_on(unsigned int mask);
# 95 "C:/esp/esp-idf/components/freertos/include/freertos/xtensa_api.h"
extern void xt_ints_off(unsigned int mask);







static inline void xt_set_intset(unsigned int arg)
{
    xthal_set_intset(arg);
}
# 115 "C:/esp/esp-idf/components/freertos/include/freertos/xtensa_api.h"
static inline void xt_set_intclear(unsigned int arg)
{
    xthal_set_intclear(arg);
}
# 127 "C:/esp/esp-idf/components/freertos/include/freertos/xtensa_api.h"
extern void * xt_get_interrupt_handler_arg(int n);
# 20 "C:/esp/esp-idf/components/esp32/include/esp_intr.h" 2
# 21 "C:/esp/esp-idf/components/driver/include/driver/touch_pad.h" 2


# 1 "C:/esp/esp-idf/components/soc/esp32/include/soc/touch_channel.h" 1
# 24 "C:/esp/esp-idf/components/driver/include/driver/touch_pad.h" 2

typedef enum {
    TOUCH_PAD_NUM0 = 0,
    TOUCH_PAD_NUM1,
    TOUCH_PAD_NUM2,
    TOUCH_PAD_NUM3,
    TOUCH_PAD_NUM4,
    TOUCH_PAD_NUM5,
    TOUCH_PAD_NUM6,
    TOUCH_PAD_NUM7,
    TOUCH_PAD_NUM8,
    TOUCH_PAD_NUM9,
    TOUCH_PAD_MAX,
} touch_pad_t;

typedef enum {
    TOUCH_HVOLT_KEEP = -1,
    TOUCH_HVOLT_2V4 = 0,
    TOUCH_HVOLT_2V5,
    TOUCH_HVOLT_2V6,
    TOUCH_HVOLT_2V7,
    TOUCH_HVOLT_MAX,
} touch_high_volt_t;

typedef enum {
    TOUCH_LVOLT_KEEP = -1,
    TOUCH_LVOLT_0V5 = 0,
    TOUCH_LVOLT_0V6,
    TOUCH_LVOLT_0V7,
    TOUCH_LVOLT_0V8,
    TOUCH_LVOLT_MAX,
} touch_low_volt_t;

typedef enum {
    TOUCH_HVOLT_ATTEN_KEEP = -1,
    TOUCH_HVOLT_ATTEN_1V5 = 0,
    TOUCH_HVOLT_ATTEN_1V,
    TOUCH_HVOLT_ATTEN_0V5,
    TOUCH_HVOLT_ATTEN_0V,
    TOUCH_HVOLT_ATTEN_MAX,
} touch_volt_atten_t;

typedef enum {
    TOUCH_PAD_SLOPE_0 = 0,
    TOUCH_PAD_SLOPE_1 = 1,
    TOUCH_PAD_SLOPE_2 = 2,
    TOUCH_PAD_SLOPE_3 = 3,
    TOUCH_PAD_SLOPE_4 = 4,
    TOUCH_PAD_SLOPE_5 = 5,
    TOUCH_PAD_SLOPE_6 = 6,
    TOUCH_PAD_SLOPE_7 = 7,
    TOUCH_PAD_SLOPE_MAX,
} touch_cnt_slope_t;

typedef enum {
    TOUCH_TRIGGER_BELOW = 0,
    TOUCH_TRIGGER_ABOVE = 1,
    TOUCH_TRIGGER_MAX,
} touch_trigger_mode_t;

typedef enum {
    TOUCH_TRIGGER_SOURCE_BOTH = 0,
    TOUCH_TRIGGER_SOURCE_SET1 = 1,
    TOUCH_TRIGGER_SOURCE_MAX,
} touch_trigger_src_t;

typedef enum {
    TOUCH_PAD_TIE_OPT_LOW = 0,
    TOUCH_PAD_TIE_OPT_HIGH = 1,
    TOUCH_PAD_TIE_OPT_MAX,
} touch_tie_opt_t;

typedef enum {
    TOUCH_FSM_MODE_TIMER = 0,
    TOUCH_FSM_MODE_SW,
    TOUCH_FSM_MODE_MAX,
} touch_fsm_mode_t;


typedef intr_handle_t touch_isr_handle_t;
# 118 "C:/esp/esp-idf/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_init();







esp_err_t touch_pad_deinit();
# 137 "C:/esp/esp-idf/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_config(touch_pad_t touch_num, uint16_t threshold);
# 153 "C:/esp/esp-idf/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_read(touch_pad_t touch_num, uint16_t * touch_value);
# 167 "C:/esp/esp-idf/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_read_filtered(touch_pad_t touch_num, uint16_t *touch_value);
# 181 "C:/esp/esp-idf/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_isr_handler_register(void(*fn)(void *), void *arg, int unused, intr_handle_t *handle_unused) __attribute__ ((deprecated));
# 192 "C:/esp/esp-idf/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_isr_register(intr_handler_t fn, void* arg);
# 203 "C:/esp/esp-idf/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_isr_deregister(void(*fn)(void *), void *arg);
# 216 "C:/esp/esp-idf/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_set_meas_time(uint16_t sleep_cycle, uint16_t meas_cycle);
# 225 "C:/esp/esp-idf/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_get_meas_time(uint16_t *sleep_cycle, uint16_t *meas_cycle);
# 240 "C:/esp/esp-idf/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_set_voltage(touch_high_volt_t refh, touch_low_volt_t refl, touch_volt_atten_t atten);
# 250 "C:/esp/esp-idf/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_get_voltage(touch_high_volt_t *refh, touch_low_volt_t *refl, touch_volt_atten_t *atten);
# 265 "C:/esp/esp-idf/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_set_cnt_mode(touch_pad_t touch_num, touch_cnt_slope_t slope, touch_tie_opt_t opt);
# 276 "C:/esp/esp-idf/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_get_cnt_mode(touch_pad_t touch_num, touch_cnt_slope_t *slope, touch_tie_opt_t *opt);
# 285 "C:/esp/esp-idf/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_io_init(touch_pad_t touch_num);
# 295 "C:/esp/esp-idf/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_set_fsm_mode(touch_fsm_mode_t mode);







esp_err_t touch_pad_get_fsm_mode(touch_fsm_mode_t *mode);






esp_err_t touch_pad_sw_start();
# 320 "C:/esp/esp-idf/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_set_thresh(touch_pad_t touch_num, uint16_t threshold);
# 330 "C:/esp/esp-idf/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_get_thresh(touch_pad_t touch_num, uint16_t *threshold);
# 341 "C:/esp/esp-idf/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_set_trigger_mode(touch_trigger_mode_t mode);







esp_err_t touch_pad_get_trigger_mode(touch_trigger_mode_t *mode);
# 361 "C:/esp/esp-idf/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_set_trigger_source(touch_trigger_src_t src);







esp_err_t touch_pad_get_trigger_source(touch_trigger_src_t *src);
# 383 "C:/esp/esp-idf/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_set_group_mask(uint16_t set1_mask, uint16_t set2_mask, uint16_t en_mask);
# 393 "C:/esp/esp-idf/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_get_group_mask(uint16_t *set1_mask, uint16_t *set2_mask, uint16_t *en_mask);
# 407 "C:/esp/esp-idf/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_clear_group_mask(uint16_t set1_mask, uint16_t set2_mask, uint16_t en_mask);






esp_err_t touch_pad_clear_status();






uint32_t touch_pad_get_status();






esp_err_t touch_pad_intr_enable();






esp_err_t touch_pad_intr_disable();
# 446 "C:/esp/esp-idf/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_set_filter_period(uint32_t new_period_ms);
# 457 "C:/esp/esp-idf/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_get_filter_period(uint32_t* p_period_ms);
# 478 "C:/esp/esp-idf/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_filter_start(uint32_t filter_period_ms);
# 487 "C:/esp/esp-idf/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_filter_stop();
# 496 "C:/esp/esp-idf/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_filter_delete();
# 21 "C:/esp/esp-idf/components/esp32/include/esp_sleep.h" 2
# 29 "C:/esp/esp-idf/components/esp32/include/esp_sleep.h"
typedef enum {
    ESP_EXT1_WAKEUP_ALL_LOW = 0,
    ESP_EXT1_WAKEUP_ANY_HIGH = 1
} esp_sleep_ext1_wakeup_mode_t;




typedef enum {
    ESP_PD_DOMAIN_RTC_PERIPH,
    ESP_PD_DOMAIN_RTC_SLOW_MEM,
    ESP_PD_DOMAIN_RTC_FAST_MEM,
    ESP_PD_DOMAIN_MAX
} esp_sleep_pd_domain_t;




typedef enum {
    ESP_PD_OPTION_OFF,
    ESP_PD_OPTION_ON,
    ESP_PD_OPTION_AUTO
} esp_sleep_pd_option_t;




typedef enum {
    ESP_SLEEP_WAKEUP_UNDEFINED,
    ESP_SLEEP_WAKEUP_EXT0,
    ESP_SLEEP_WAKEUP_EXT1,
    ESP_SLEEP_WAKEUP_TIMER,
    ESP_SLEEP_WAKEUP_TOUCHPAD,
    ESP_SLEEP_WAKEUP_ULP,
} esp_sleep_wakeup_cause_t;
# 76 "C:/esp/esp-idf/components/esp32/include/esp_sleep.h"
esp_err_t esp_sleep_enable_ulp_wakeup();
# 85 "C:/esp/esp-idf/components/esp32/include/esp_sleep.h"
esp_err_t esp_sleep_enable_timer_wakeup(uint64_t time_in_us);
# 99 "C:/esp/esp-idf/components/esp32/include/esp_sleep.h"
esp_err_t esp_sleep_enable_touchpad_wakeup();
# 108 "C:/esp/esp-idf/components/esp32/include/esp_sleep.h"
touch_pad_t esp_sleep_get_touchpad_wakeup_status();
# 134 "C:/esp/esp-idf/components/esp32/include/esp_sleep.h"
esp_err_t esp_sleep_enable_ext0_wakeup(gpio_num_t gpio_num, int level);
# 166 "C:/esp/esp-idf/components/esp32/include/esp_sleep.h"
esp_err_t esp_sleep_enable_ext1_wakeup(uint64_t mask, esp_sleep_ext1_wakeup_mode_t mode);
# 176 "C:/esp/esp-idf/components/esp32/include/esp_sleep.h"
uint64_t esp_sleep_get_ext1_wakeup_status();
# 189 "C:/esp/esp-idf/components/esp32/include/esp_sleep.h"
esp_err_t esp_sleep_pd_config(esp_sleep_pd_domain_t domain,
                                   esp_sleep_pd_option_t option);






void esp_deep_sleep_start() __attribute__((noreturn));
# 206 "C:/esp/esp-idf/components/esp32/include/esp_sleep.h"
esp_err_t esp_light_sleep_start();
# 230 "C:/esp/esp-idf/components/esp32/include/esp_sleep.h"
void esp_deep_sleep(uint64_t time_in_us) __attribute__((noreturn));
# 240 "C:/esp/esp-idf/components/esp32/include/esp_sleep.h"
void system_deep_sleep(uint64_t time_in_us) __attribute__((noreturn, deprecated));







esp_sleep_wakeup_cause_t esp_sleep_get_wakeup_cause();
# 263 "C:/esp/esp-idf/components/esp32/include/esp_sleep.h"
void esp_wake_deep_sleep(void);





typedef void (*esp_deep_sleep_wake_stub_fn_t)(void);
# 282 "C:/esp/esp-idf/components/esp32/include/esp_sleep.h"
void esp_set_deep_sleep_wake_stub(esp_deep_sleep_wake_stub_fn_t new_stub);






esp_deep_sleep_wake_stub_fn_t esp_get_deep_sleep_wake_stub(void);






void esp_default_wake_deep_sleep(void);
# 22 "C:/esp/esp-idf/components/esp32/include/esp_system.h" 2





typedef enum {
    ESP_MAC_WIFI_STA,
    ESP_MAC_WIFI_SOFTAP,
    ESP_MAC_BT,
    ESP_MAC_ETH,
} esp_mac_type_t;
# 42 "C:/esp/esp-idf/components/esp32/include/esp_system.h"
void system_init(void) __attribute__ ((deprecated));







void system_restore(void) __attribute__ ((deprecated));

typedef void (*shutdown_handler_t)(void);






esp_err_t esp_register_shutdown_handler(shutdown_handler_t handle);
# 69 "C:/esp/esp-idf/components/esp32/include/esp_system.h"
void esp_restart(void) __attribute__ ((noreturn));
# 80 "C:/esp/esp-idf/components/esp32/include/esp_system.h"
void esp_restart_noos() __attribute__ ((noreturn));







void system_restart(void) __attribute__ ((deprecated, noreturn));







uint32_t system_get_time(void) __attribute__ ((deprecated));
# 106 "C:/esp/esp-idf/components/esp32/include/esp_system.h"
uint32_t esp_get_free_heap_size(void);
# 116 "C:/esp/esp-idf/components/esp32/include/esp_system.h"
uint32_t system_get_free_heap_size(void) __attribute__ ((deprecated));






uint32_t esp_get_minimum_free_heap_size( void );
# 138 "C:/esp/esp-idf/components/esp32/include/esp_system.h"
uint32_t esp_random(void);
# 153 "C:/esp/esp-idf/components/esp32/include/esp_system.h"
esp_err_t esp_base_mac_addr_set(uint8_t *mac);
# 163 "C:/esp/esp-idf/components/esp32/include/esp_system.h"
esp_err_t esp_base_mac_addr_get(uint8_t *mac);
# 179 "C:/esp/esp-idf/components/esp32/include/esp_system.h"
esp_err_t esp_efuse_mac_get_custom(uint8_t *mac);
# 188 "C:/esp/esp-idf/components/esp32/include/esp_system.h"
esp_err_t esp_efuse_mac_get_default(uint8_t *mac);
# 200 "C:/esp/esp-idf/components/esp32/include/esp_system.h"
esp_err_t esp_efuse_read_mac(uint8_t *mac) __attribute__ ((deprecated));
# 211 "C:/esp/esp-idf/components/esp32/include/esp_system.h"
esp_err_t system_efuse_read_mac(uint8_t *mac) __attribute__ ((deprecated));
# 225 "C:/esp/esp-idf/components/esp32/include/esp_system.h"
esp_err_t esp_read_mac(uint8_t* mac, esp_mac_type_t type);
# 241 "C:/esp/esp-idf/components/esp32/include/esp_system.h"
esp_err_t esp_derive_local_mac(uint8_t* local_mac, const uint8_t* universal_mac);
# 250 "C:/esp/esp-idf/components/esp32/include/esp_system.h"
const char* system_get_sdk_version(void) __attribute__ ((deprecated));






const char* esp_get_idf_version(void);





typedef enum {
    CHIP_ESP32 = 1,
} esp_chip_model_t;
# 278 "C:/esp/esp-idf/components/esp32/include/esp_system.h"
typedef struct {
    esp_chip_model_t model;
    uint32_t features;
    uint8_t cores;
    uint8_t revision;
} esp_chip_info_t;





void esp_chip_info(esp_chip_info_t* out_info);
# 127 "C:/esp/esp-idf/components/freertos/include/freertos/portable.h" 2
# 135 "C:/esp/esp-idf/components/freertos/include/freertos/portable.h"
 StackType_t *pxPortInitialiseStack( StackType_t *pxTopOfStack, TaskFunction_t pxCode, void *pvParameters, BaseType_t xRunPrivileged ) ;
# 156 "C:/esp/esp-idf/components/freertos/include/freertos/portable.h"
BaseType_t xPortStartScheduler( void ) ;






void vPortEndScheduler( void ) ;







void vPortYieldOtherCore( BaseType_t coreid) ;






void vPortSetStackWatchpoint( void* pxStackStart );





BaseType_t xPortInIsrContext();
# 194 "C:/esp/esp-idf/components/freertos/include/freertos/portable.h"
 struct xMEMORY_REGION;
 void vPortStoreTaskMPUSettings( xMPU_SETTINGS *xMPUSettings, const struct xMEMORY_REGION * const xRegions, StackType_t *pxBottomOfStack, uint32_t usStackDepth ) ;
 void vPortReleaseTaskMPUSettings( xMPU_SETTINGS *xMPUSettings );



static inline uint32_t __attribute__((section(".iram1"))) xPortGetCoreID() {
    int id;
    asm (
        "rsr.prid %0\n"
        " extui %0,%0,13,1"
        :"=r"(id));
    return id;
}


uint32_t xPortGetTickRateHz(void);
# 106 "C:/esp/esp-idf/components/freertos/include/freertos/FreeRTOS.h" 2
# 851 "C:/esp/esp-idf/components/freertos/include/freertos/FreeRTOS.h"
struct xSTATIC_LIST_ITEM
{
 TickType_t xDummy1;
 void *pvDummy2[ 4 ];
};
typedef struct xSTATIC_LIST_ITEM StaticListItem_t;


struct xSTATIC_MINI_LIST_ITEM
{
 TickType_t xDummy1;
 void *pvDummy2[ 2 ];
};
typedef struct xSTATIC_MINI_LIST_ITEM StaticMiniListItem_t;


typedef struct xSTATIC_LIST
{
 UBaseType_t uxDummy1;
 void *pvDummy2;
 StaticMiniListItem_t xDummy3;
} StaticList_t;
# 887 "C:/esp/esp-idf/components/freertos/include/freertos/FreeRTOS.h"
typedef struct xSTATIC_TCB
{
 void *pxDummy1;

  xMPU_SETTINGS xDummy2;

 StaticListItem_t xDummy3[ 2 ];
 UBaseType_t uxDummy5;
 void *pxDummy6;
 uint8_t ucDummy7[ ( 16 ) ];
    UBaseType_t uxDummyCoreId;

  void *pxDummy8;


  UBaseType_t uxDummy9;
        uint32_t OldInterruptState;





  UBaseType_t uxDummy12[ 2 ];





  void *pvDummy15[ 1 ];

  void *pvDummyLocalStorageCallBack[ 1 ];






  struct _reent xDummy17;


  uint32_t ulDummy18;
  uint32_t ucDummy19;



  uint8_t uxDummy20;


} StaticTask_t;
# 951 "C:/esp/esp-idf/components/freertos/include/freertos/FreeRTOS.h"
typedef struct xSTATIC_QUEUE
{
 void *pvDummy1[ 3 ];

 union
 {
  void *pvDummy2;
  UBaseType_t uxDummy2;
 } u;

 StaticList_t xDummy3[ 2 ];
 UBaseType_t uxDummy4[ 3 ];






  void *pvDummy7;







 struct {
  volatile uint32_t ucDummy10;
  uint32_t ucDummy11;




 } sDummy1;

} StaticQueue_t;
typedef StaticQueue_t StaticSemaphore_t;
# 274 "C:/esp/esp-idf/components/fatfs/src/ffconf.h" 2
# 1 "C:/esp/esp-idf/components/freertos/include/freertos/semphr.h" 1
# 77 "C:/esp/esp-idf/components/freertos/include/freertos/semphr.h"
# 1 "C:/esp/esp-idf/components/freertos/include/freertos/queue.h" 1
# 88 "C:/esp/esp-idf/components/freertos/include/freertos/queue.h"
typedef void * QueueHandle_t;






typedef void * QueueSetHandle_t;






typedef void * QueueSetMemberHandle_t;
# 680 "C:/esp/esp-idf/components/freertos/include/freertos/queue.h"
BaseType_t xQueueGenericSend( QueueHandle_t xQueue, const void * const pvItemToQueue, TickType_t xTicksToWait, const BaseType_t xCopyPosition ) ;
# 809 "C:/esp/esp-idf/components/freertos/include/freertos/queue.h"
BaseType_t xQueuePeekFromISR( QueueHandle_t xQueue, void * const pvBuffer ) ;
# 1001 "C:/esp/esp-idf/components/freertos/include/freertos/queue.h"
BaseType_t xQueueGenericReceive( QueueHandle_t xQueue, void * const pvBuffer, TickType_t xTicksToWait, const BaseType_t xJustPeek ) ;
# 1016 "C:/esp/esp-idf/components/freertos/include/freertos/queue.h"
UBaseType_t uxQueueMessagesWaiting( const QueueHandle_t xQueue ) ;
# 1033 "C:/esp/esp-idf/components/freertos/include/freertos/queue.h"
UBaseType_t uxQueueSpacesAvailable( const QueueHandle_t xQueue ) ;
# 1047 "C:/esp/esp-idf/components/freertos/include/freertos/queue.h"
void vQueueDelete( QueueHandle_t xQueue ) ;
# 1428 "C:/esp/esp-idf/components/freertos/include/freertos/queue.h"
BaseType_t xQueueGenericSendFromISR( QueueHandle_t xQueue, const void * const pvItemToQueue, BaseType_t * const pxHigherPriorityTaskWoken, const BaseType_t xCopyPosition ) ;
BaseType_t xQueueGiveFromISR( QueueHandle_t xQueue, BaseType_t * const pxHigherPriorityTaskWoken ) ;
# 1518 "C:/esp/esp-idf/components/freertos/include/freertos/queue.h"
BaseType_t xQueueReceiveFromISR( QueueHandle_t xQueue, void * const pvBuffer, BaseType_t * const pxHigherPriorityTaskWoken ) ;





BaseType_t xQueueIsQueueEmptyFromISR( const QueueHandle_t xQueue ) ;
BaseType_t xQueueIsQueueFullFromISR( const QueueHandle_t xQueue ) ;
UBaseType_t uxQueueMessagesWaitingFromISR( const QueueHandle_t xQueue ) ;
# 1543 "C:/esp/esp-idf/components/freertos/include/freertos/queue.h"
BaseType_t xQueueAltGenericSend( QueueHandle_t xQueue, const void * const pvItemToQueue, TickType_t xTicksToWait, BaseType_t xCopyPosition );
BaseType_t xQueueAltGenericReceive( QueueHandle_t xQueue, void * const pvBuffer, TickType_t xTicksToWait, BaseType_t xJustPeeking );
# 1559 "C:/esp/esp-idf/components/freertos/include/freertos/queue.h"
BaseType_t xQueueCRSendFromISR( QueueHandle_t xQueue, const void *pvItemToQueue, BaseType_t xCoRoutinePreviouslyWoken );
BaseType_t xQueueCRReceiveFromISR( QueueHandle_t xQueue, void *pvBuffer, BaseType_t *pxTaskWoken );
BaseType_t xQueueCRSend( QueueHandle_t xQueue, const void *pvItemToQueue, TickType_t xTicksToWait );
BaseType_t xQueueCRReceive( QueueHandle_t xQueue, void *pvBuffer, TickType_t xTicksToWait );






QueueHandle_t xQueueCreateMutex( const uint8_t ucQueueType ) ;
QueueHandle_t xQueueCreateMutexStatic( const uint8_t ucQueueType, StaticQueue_t *pxStaticQueue ) ;
QueueHandle_t xQueueCreateCountingSemaphore( const UBaseType_t uxMaxCount, const UBaseType_t uxInitialCount ) ;
QueueHandle_t xQueueCreateCountingSemaphoreStatic( const UBaseType_t uxMaxCount, const UBaseType_t uxInitialCount, StaticQueue_t *pxStaticQueue ) ;
void* xQueueGetMutexHolder( QueueHandle_t xSemaphore ) ;





BaseType_t xQueueTakeMutexRecursive( QueueHandle_t xMutex, TickType_t xTicksToWait ) ;
BaseType_t xQueueGiveMutexRecursive( QueueHandle_t pxMutex ) ;
# 1636 "C:/esp/esp-idf/components/freertos/include/freertos/queue.h"
 QueueHandle_t xQueueGenericCreate( const UBaseType_t uxQueueLength, const UBaseType_t uxItemSize, const uint8_t ucQueueType ) ;
# 1696 "C:/esp/esp-idf/components/freertos/include/freertos/queue.h"
QueueSetHandle_t xQueueCreateSet( const UBaseType_t uxEventQueueLength ) ;
# 1720 "C:/esp/esp-idf/components/freertos/include/freertos/queue.h"
BaseType_t xQueueAddToSet( QueueSetMemberHandle_t xQueueOrSemaphore, QueueSetHandle_t xQueueSet ) ;
# 1739 "C:/esp/esp-idf/components/freertos/include/freertos/queue.h"
BaseType_t xQueueRemoveFromSet( QueueSetMemberHandle_t xQueueOrSemaphore, QueueSetHandle_t xQueueSet ) ;
# 1775 "C:/esp/esp-idf/components/freertos/include/freertos/queue.h"
QueueSetMemberHandle_t xQueueSelectFromSet( QueueSetHandle_t xQueueSet, const TickType_t xTicksToWait ) ;




QueueSetMemberHandle_t xQueueSelectFromSetFromISR( QueueSetHandle_t xQueueSet ) ;


void vQueueWaitForMessageRestricted( QueueHandle_t xQueue, TickType_t xTicksToWait ) ;
BaseType_t xQueueGenericReset( QueueHandle_t xQueue, BaseType_t xNewQueue ) ;
void vQueueSetQueueNumber( QueueHandle_t xQueue, UBaseType_t uxQueueNumber ) ;
UBaseType_t uxQueueGetQueueNumber( QueueHandle_t xQueue ) ;
uint8_t ucQueueGetQueueType( QueueHandle_t xQueue ) ;
# 78 "C:/esp/esp-idf/components/freertos/include/freertos/semphr.h" 2

typedef QueueHandle_t SemaphoreHandle_t;
# 275 "C:/esp/esp-idf/components/fatfs/src/ffconf.h" 2
# 30 "C:/esp/esp-idf/components/fatfs/src/ff.h" 2
# 43 "C:/esp/esp-idf/components/fatfs/src/ff.h"
typedef struct {
 BYTE pd;
 BYTE pt;
} PARTITION;
extern PARTITION VolToPart[];
# 72 "C:/esp/esp-idf/components/fatfs/src/ff.h"
typedef char TCHAR;
# 88 "C:/esp/esp-idf/components/fatfs/src/ff.h"
typedef DWORD FSIZE_t;






typedef struct {
 BYTE fs_type;
 BYTE drv;
 BYTE n_fats;
 BYTE wflag;
 BYTE fsi_flag;
 WORD id;
 WORD n_rootdir;
 WORD csize;

 WORD ssize;
# 114 "C:/esp/esp-idf/components/fatfs/src/ff.h"
 SemaphoreHandle_t sobj;


 DWORD last_clst;
 DWORD free_clst;
# 128 "C:/esp/esp-idf/components/fatfs/src/ff.h"
 DWORD n_fatent;
 DWORD fsize;
 DWORD volbase;
 DWORD fatbase;
 DWORD dirbase;
 DWORD database;
 DWORD winsect;
 BYTE win[4096];
} FATFS;





typedef struct {
 FATFS* fs;
 WORD id;
 BYTE attr;
 BYTE stat;
 DWORD sclust;
 FSIZE_t objsize;
# 158 "C:/esp/esp-idf/components/fatfs/src/ff.h"
} _FDID;





typedef struct {
 _FDID obj;
 BYTE flag;
 BYTE err;
 FSIZE_t fptr;
 DWORD clust;
 DWORD sect;

 DWORD dir_sect;
 BYTE* dir_ptr;





 BYTE buf[4096];

} FIL;





typedef struct {
 _FDID obj;
 DWORD dptr;
 DWORD clust;
 DWORD sect;
 BYTE* dir;
 BYTE fn[12];






} DIR;





typedef struct {
 FSIZE_t fsize;
 WORD fdate;
 WORD ftime;
 BYTE fattrib;




 TCHAR fname[13];

} FILINFO;





typedef enum {
 FR_OK = 0,
 FR_DISK_ERR,
 FR_INT_ERR,
 FR_NOT_READY,
 FR_NO_FILE,
 FR_NO_PATH,
 FR_INVALID_NAME,
 FR_DENIED,
 FR_EXIST,
 FR_INVALID_OBJECT,
 FR_WRITE_PROTECTED,
 FR_INVALID_DRIVE,
 FR_NOT_ENABLED,
 FR_NO_FILESYSTEM,
 FR_MKFS_ABORTED,
 FR_TIMEOUT,
 FR_LOCKED,
 FR_NOT_ENOUGH_CORE,
 FR_TOO_MANY_OPEN_FILES,
 FR_INVALID_PARAMETER
} FRESULT;






FRESULT f_open (FIL* fp, const TCHAR* path, BYTE mode);
FRESULT f_close (FIL* fp);
FRESULT f_read (FIL* fp, void* buff, UINT btr, UINT* br);
FRESULT f_write (FIL* fp, const void* buff, UINT btw, UINT* bw);
FRESULT f_lseek (FIL* fp, FSIZE_t ofs);
FRESULT f_truncate (FIL* fp);
FRESULT f_sync (FIL* fp);
FRESULT f_opendir (DIR* dp, const TCHAR* path);
FRESULT f_closedir (DIR* dp);
FRESULT f_readdir (DIR* dp, FILINFO* fno);
FRESULT f_findfirst (DIR* dp, FILINFO* fno, const TCHAR* path, const TCHAR* pattern);
FRESULT f_findnext (DIR* dp, FILINFO* fno);
FRESULT f_mkdir (const TCHAR* path);
FRESULT f_unlink (const TCHAR* path);
FRESULT f_rename (const TCHAR* path_old, const TCHAR* path_new);
FRESULT f_stat (const TCHAR* path, FILINFO* fno);
FRESULT f_chmod (const TCHAR* path, BYTE attr, BYTE mask);
FRESULT f_utime (const TCHAR* path, const FILINFO* fno);
FRESULT f_chdir (const TCHAR* path);
FRESULT f_chdrive (const TCHAR* path);
FRESULT f_getcwd (TCHAR* buff, UINT len);
FRESULT f_getfree (const TCHAR* path, DWORD* nclst, FATFS** fatfs);
FRESULT f_getlabel (const TCHAR* path, TCHAR* label, DWORD* vsn);
FRESULT f_setlabel (const TCHAR* label);
FRESULT f_forward (FIL* fp, UINT(*func)(const BYTE*,UINT), UINT btf, UINT* bf);
FRESULT f_expand (FIL* fp, FSIZE_t szf, BYTE opt);
FRESULT f_mount (FATFS* fs, const TCHAR* path, BYTE opt);
FRESULT f_mkfs (const TCHAR* path, BYTE opt, DWORD au, void* work, UINT len);
FRESULT f_fdisk (BYTE pdrv, const DWORD* szt, void* work);
int f_putc (TCHAR c, FIL* fp);
int f_puts (const TCHAR* str, FIL* cp);
int f_printf (FIL* fp, const TCHAR* str, ...);
TCHAR* f_gets (TCHAR* buff, int len, FIL* fp);
# 304 "C:/esp/esp-idf/components/fatfs/src/ff.h"
DWORD get_fattime (void);
# 319 "C:/esp/esp-idf/components/fatfs/src/ff.h"
int ff_cre_syncobj (BYTE vol, SemaphoreHandle_t* sobj);
int ff_req_grant (SemaphoreHandle_t sobj);
void ff_rel_grant (SemaphoreHandle_t sobj);
int ff_del_syncobj (SemaphoreHandle_t sobj);
# 23 "C:/esp/esp-idf/components/fatfs/src/ff.c" 2
# 1 "C:/esp/esp-idf/components/fatfs/src/diskio.h" 1
# 13 "C:/esp/esp-idf/components/fatfs/src/diskio.h"
# 1 "C:/esp/esp-idf/components/sdmmc/include/sdmmc_cmd.h" 1
# 15 "C:/esp/esp-idf/components/sdmmc/include/sdmmc_cmd.h"
       



# 1 "C:/esp/esp-idf/components/driver/include/driver/sdmmc_types.h" 1
# 22 "C:/esp/esp-idf/components/driver/include/driver/sdmmc_types.h"
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 23 "C:/esp/esp-idf/components/driver/include/driver/sdmmc_types.h" 2





typedef struct {
    int csd_ver;
    int mmc_ver;
    int capacity;
    int sector_size;
    int read_block_len;
    int card_command_class;
    int tr_speed;
} sdmmc_csd_t;




typedef struct {
    int mfg_id;
    int oem_id;
    char name[8];
    int revision;
    int serial;
    int date;
} sdmmc_cid_t;




typedef struct {
    int sd_spec;
    int bus_width;
} sdmmc_scr_t;




typedef uint32_t sdmmc_response_t[4];




typedef struct {
    uint32_t data[512 / 8 / sizeof(uint32_t)];
} sdmmc_switch_func_rsp_t;




typedef struct {
        uint32_t opcode;
        uint32_t arg;
        sdmmc_response_t response;
        void* data;
        size_t datalen;
        size_t blklen;
        int flags;
# 104 "C:/esp/esp-idf/components/driver/include/driver/sdmmc_types.h"
        esp_err_t error;
} sdmmc_command_t;







typedef struct {
    uint32_t flags;




    int slot;
    int max_freq_khz;



    float io_voltage;
    esp_err_t (*init)(void);
    esp_err_t (*set_bus_width)(int slot, size_t width);
    esp_err_t (*set_card_clk)(int slot, uint32_t freq_khz);
    esp_err_t (*do_transaction)(int slot, sdmmc_command_t* cmdinfo);
    esp_err_t (*deinit)(void);
} sdmmc_host_t;




typedef struct {
    sdmmc_host_t host;
    uint32_t ocr;
    sdmmc_cid_t cid;
    sdmmc_csd_t csd;
    sdmmc_scr_t scr;
    uint16_t rca;
} sdmmc_card_t;
# 20 "C:/esp/esp-idf/components/sdmmc/include/sdmmc_cmd.h" 2
# 37 "C:/esp/esp-idf/components/sdmmc/include/sdmmc_cmd.h"
esp_err_t sdmmc_card_init(const sdmmc_host_t* host,
        sdmmc_card_t* out_card);






void sdmmc_card_print_info(FILE* stream, const sdmmc_card_t* card);
# 58 "C:/esp/esp-idf/components/sdmmc/include/sdmmc_cmd.h"
esp_err_t sdmmc_write_sectors(sdmmc_card_t* card, const void* src,
        size_t start_sector, size_t sector_count);
# 72 "C:/esp/esp-idf/components/sdmmc/include/sdmmc_cmd.h"
esp_err_t sdmmc_read_sectors(sdmmc_card_t* card, void* dst,
        size_t start_sector, size_t sector_count);
# 14 "C:/esp/esp-idf/components/fatfs/src/diskio.h" 2
# 1 "C:/esp/esp-idf/components/driver/include/driver/sdmmc_host.h" 1
# 15 "C:/esp/esp-idf/components/driver/include/driver/sdmmc_host.h"
       


# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 19 "C:/esp/esp-idf/components/driver/include/driver/sdmmc_host.h" 2

# 1 "C:/esp/esp-idf/components/driver/include/driver/sdmmc_types.h" 1
# 21 "C:/esp/esp-idf/components/driver/include/driver/sdmmc_host.h" 2
# 50 "C:/esp/esp-idf/components/driver/include/driver/sdmmc_host.h"
typedef struct {
    gpio_num_t gpio_cd;
    gpio_num_t gpio_wp;
    uint8_t width;
} sdmmc_slot_config_t;
# 79 "C:/esp/esp-idf/components/driver/include/driver/sdmmc_host.h"
esp_err_t sdmmc_host_init();
# 99 "C:/esp/esp-idf/components/driver/include/driver/sdmmc_host.h"
esp_err_t sdmmc_host_init_slot(int slot, const sdmmc_slot_config_t* slot_config);
# 115 "C:/esp/esp-idf/components/driver/include/driver/sdmmc_host.h"
esp_err_t sdmmc_host_set_bus_width(int slot, size_t width);
# 132 "C:/esp/esp-idf/components/driver/include/driver/sdmmc_host.h"
esp_err_t sdmmc_host_set_card_clk(int slot, uint32_t freq_khz);
# 157 "C:/esp/esp-idf/components/driver/include/driver/sdmmc_host.h"
esp_err_t sdmmc_host_do_transaction(int slot, sdmmc_command_t* cmdinfo);
# 168 "C:/esp/esp-idf/components/driver/include/driver/sdmmc_host.h"
esp_err_t sdmmc_host_deinit();
# 15 "C:/esp/esp-idf/components/fatfs/src/diskio.h" 2


typedef BYTE DSTATUS;


typedef enum {
 RES_OK = 0,
 RES_ERROR,
 RES_WRPRT,
 RES_NOTRDY,
 RES_PARERR
} DRESULT;
# 41 "C:/esp/esp-idf/components/fatfs/src/diskio.h"
DSTATUS ff_disk_initialize (BYTE pdrv);
DSTATUS ff_disk_status (BYTE pdrv);
DRESULT ff_disk_read (BYTE pdrv, BYTE* buff, DWORD sector, UINT count);
DRESULT ff_disk_write (BYTE pdrv, const BYTE* buff, DWORD sector, UINT count);
DRESULT ff_disk_ioctl (BYTE pdrv, BYTE cmd, void* buff);






typedef struct {
    DSTATUS (*init) (BYTE pdrv);
    DSTATUS (*status) (BYTE pdrv);
    DRESULT (*read) (BYTE pdrv, BYTE* buff, DWORD sector, UINT count);
    DRESULT (*write) (BYTE pdrv, const BYTE* buff, DWORD sector, UINT count);
    DRESULT (*ioctl) (BYTE pdrv, BYTE cmd, void* buff);
} ff_diskio_impl_t;
# 70 "C:/esp/esp-idf/components/fatfs/src/diskio.h"
void ff_diskio_register(BYTE pdrv, const ff_diskio_impl_t* discio_impl);
# 80 "C:/esp/esp-idf/components/fatfs/src/diskio.h"
void ff_diskio_register_sdmmc(BYTE pdrv, sdmmc_card_t* card);
# 90 "C:/esp/esp-idf/components/fatfs/src/diskio.h"
esp_err_t ff_diskio_get_drive(BYTE* out_pdrv);
# 24 "C:/esp/esp-idf/components/fatfs/src/ff.c" 2
# 526 "C:/esp/esp-idf/components/fatfs/src/ff.c"
static FATFS *FatFs[2];
static WORD Fsid;
# 602 "C:/esp/esp-idf/components/fatfs/src/ff.c"
static
WORD ld_word (const BYTE* ptr)
{
 WORD rv;

 rv = ptr[1];
 rv = rv << 8 | ptr[0];
 return rv;
}

static
DWORD ld_dword (const BYTE* ptr)
{
 DWORD rv;

 rv = ptr[3];
 rv = rv << 8 | ptr[2];
 rv = rv << 8 | ptr[1];
 rv = rv << 8 | ptr[0];
 return rv;
}
# 643 "C:/esp/esp-idf/components/fatfs/src/ff.c"
static
void st_word (BYTE* ptr, WORD val)
{
 *ptr++ = (BYTE)val; val >>= 8;
 *ptr++ = (BYTE)val;
}

static
void st_dword (BYTE* ptr, DWORD val)
{
 *ptr++ = (BYTE)val; val >>= 8;
 *ptr++ = (BYTE)val; val >>= 8;
 *ptr++ = (BYTE)val; val >>= 8;
 *ptr++ = (BYTE)val;
}
# 682 "C:/esp/esp-idf/components/fatfs/src/ff.c"
static
void mem_cpy (void* dst, const void* src, UINT cnt) {
 BYTE *d = (BYTE*)dst;
 const BYTE *s = (const BYTE*)src;

 if (cnt) {
  do *d++ = *s++; while (--cnt);
 }
}


static
void mem_set (void* dst, int val, UINT cnt) {
 BYTE *d = (BYTE*)dst;

 do *d++ = (BYTE)val; while (--cnt);
}


static
int mem_cmp (const void* dst, const void* src, UINT cnt) {
 const BYTE *d = (const BYTE *)dst, *s = (const BYTE *)src;
 int r = 0;

 do {
  r = *d++ - *s++;
 } while (--cnt && r == 0);

 return r;
}


static
int chk_chr (const char* str, int chr) {
 while (*str && *str != chr) str++;
 return *str;
}
# 727 "C:/esp/esp-idf/components/fatfs/src/ff.c"
static
int lock_fs (
 FATFS* fs
)
{
 return ff_req_grant(fs->sobj);
}


static
void unlock_fs (
 FATFS* fs,
 FRESULT res
)
{
 if (fs && res != FR_NOT_ENABLED && res != FR_INVALID_DRIVE && res != FR_TIMEOUT) {
  ff_rel_grant(fs->sobj);
 }
}
# 868 "C:/esp/esp-idf/components/fatfs/src/ff.c"
static
FRESULT sync_window (
 FATFS* fs
)
{
 DWORD wsect;
 UINT nf;
 FRESULT res = FR_OK;


 if (fs->wflag) {
  wsect = fs->winsect;
  if (ff_disk_write(fs->drv, fs->win, wsect, 1) != RES_OK) {
   res = FR_DISK_ERR;
  } else {
   fs->wflag = 0;
   if (wsect - fs->fatbase < fs->fsize) {
    for (nf = fs->n_fats; nf >= 2; nf--) {
     wsect += fs->fsize;
     ff_disk_write(fs->drv, fs->win, wsect, 1);
    }
   }
  }
 }
 return res;
}



static
FRESULT move_window (
 FATFS* fs,
 DWORD sector
)
{
 FRESULT res = FR_OK;


 if (sector != fs->winsect) {

  res = sync_window(fs);

  if (res == FR_OK) {
   if (ff_disk_read(fs->drv, fs->win, sector, 1) != RES_OK) {
    sector = 0xFFFFFFFF;
    res = FR_DISK_ERR;
   }
   fs->winsect = sector;
  }
 }
 return res;
}
# 929 "C:/esp/esp-idf/components/fatfs/src/ff.c"
static
FRESULT sync_fs (
 FATFS* fs
)
{
 FRESULT res;


 res = sync_window(fs);
 if (res == FR_OK) {

  if (fs->fs_type == 3 && fs->fsi_flag == 1) {

   mem_set(fs->win, 0, ((fs)->ssize));
   st_word(fs->win + 510, 0xAA55);
   st_dword(fs->win + 0, 0x41615252);
   st_dword(fs->win + 484, 0x61417272);
   st_dword(fs->win + 488, fs->free_clst);
   st_dword(fs->win + 492, fs->last_clst);

   fs->winsect = fs->volbase + 1;
   ff_disk_write(fs->drv, fs->win, fs->winsect, 1);
   fs->fsi_flag = 0;
  }

  if (ff_disk_ioctl(fs->drv, 0, 0) != RES_OK) res = FR_DISK_ERR;
 }

 return res;
}
# 968 "C:/esp/esp-idf/components/fatfs/src/ff.c"
static
DWORD clust2sect (
 FATFS* fs,
 DWORD clst
)
{
 clst -= 2;
 if (clst >= fs->n_fatent - 2) return 0;
 return clst * fs->csize + fs->database;
}
# 986 "C:/esp/esp-idf/components/fatfs/src/ff.c"
static
DWORD get_fat (
 _FDID* obj,
 DWORD clst
)
{
 UINT wc, bc;
 DWORD val;
 FATFS *fs = obj->fs;


 if (clst < 2 || clst >= fs->n_fatent) {
  val = 1;

 } else {
  val = 0xFFFFFFFF;

  switch (fs->fs_type) {
  case 1 :
   bc = (UINT)clst; bc += bc / 2;
   if (move_window(fs, fs->fatbase + (bc / ((fs)->ssize))) != FR_OK) break;
   wc = fs->win[bc++ % ((fs)->ssize)];
   if (move_window(fs, fs->fatbase + (bc / ((fs)->ssize))) != FR_OK) break;
   wc |= fs->win[bc % ((fs)->ssize)] << 8;
   val = (clst & 1) ? (wc >> 4) : (wc & 0xFFF);
   break;

  case 2 :
   if (move_window(fs, fs->fatbase + (clst / (((fs)->ssize) / 2))) != FR_OK) break;
   val = ld_word(fs->win + clst * 2 % ((fs)->ssize));
   break;

  case 3 :
   if (move_window(fs, fs->fatbase + (clst / (((fs)->ssize) / 4))) != FR_OK) break;
   val = ld_dword(fs->win + clst * 4 % ((fs)->ssize)) & 0x0FFFFFFF;
   break;
# 1046 "C:/esp/esp-idf/components/fatfs/src/ff.c"
  default:
   val = 1;
  }
 }

 return val;
}
# 1062 "C:/esp/esp-idf/components/fatfs/src/ff.c"
static
FRESULT put_fat (
 FATFS* fs,
 DWORD clst,
 DWORD val
)
{
 UINT bc;
 BYTE *p;
 FRESULT res = FR_INT_ERR;


 if (clst >= 2 && clst < fs->n_fatent) {
  switch (fs->fs_type) {
  case 1 :
   bc = (UINT)clst; bc += bc / 2;
   res = move_window(fs, fs->fatbase + (bc / ((fs)->ssize)));
   if (res != FR_OK) break;
   p = fs->win + bc++ % ((fs)->ssize);
   *p = (clst & 1) ? ((*p & 0x0F) | ((BYTE)val << 4)) : (BYTE)val;
   fs->wflag = 1;
   res = move_window(fs, fs->fatbase + (bc / ((fs)->ssize)));
   if (res != FR_OK) break;
   p = fs->win + bc % ((fs)->ssize);
   *p = (clst & 1) ? (BYTE)(val >> 4) : ((*p & 0xF0) | ((BYTE)(val >> 8) & 0x0F));
   fs->wflag = 1;
   break;

  case 2 :
   res = move_window(fs, fs->fatbase + (clst / (((fs)->ssize) / 2)));
   if (res != FR_OK) break;
   st_word(fs->win + clst * 2 % ((fs)->ssize), (WORD)val);
   fs->wflag = 1;
   break;

  case 3 :



   res = move_window(fs, fs->fatbase + (clst / (((fs)->ssize) / 4)));
   if (res != FR_OK) break;
   if (!0 || fs->fs_type != 4) {
    val = (val & 0x0FFFFFFF) | (ld_dword(fs->win + clst * 4 % ((fs)->ssize)) & 0xF0000000);
   }
   st_dword(fs->win + clst * 4 % ((fs)->ssize), val);
   fs->wflag = 1;
   break;
  }
 }
 return res;
}
# 1232 "C:/esp/esp-idf/components/fatfs/src/ff.c"
static
FRESULT remove_chain (
 _FDID* obj,
 DWORD clst,
 DWORD pclst
)
{
 FRESULT res = FR_OK;
 DWORD nxt;
 FATFS *fs = obj->fs;







 if (clst < 2 || clst >= fs->n_fatent) return FR_INT_ERR;


 if (pclst && (!0 || fs->fs_type != 4 || obj->stat != 2)) {
  res = put_fat(fs, pclst, 0xFFFFFFFF);
  if (res != FR_OK) return res;
 }


 do {
  nxt = get_fat(obj, clst);
  if (nxt == 0) break;
  if (nxt == 1) return FR_INT_ERR;
  if (nxt == 0xFFFFFFFF) return FR_DISK_ERR;
  if (!0 || fs->fs_type != 4) {
   res = put_fat(fs, clst, 0);
   if (res != FR_OK) return res;
  }
  if (fs->free_clst < fs->n_fatent - 2) {
   fs->free_clst++;
   fs->fsi_flag |= 1;
  }
# 1289 "C:/esp/esp-idf/components/fatfs/src/ff.c"
  clst = nxt;
 } while (clst < fs->n_fatent);
# 1303 "C:/esp/esp-idf/components/fatfs/src/ff.c"
 return FR_OK;
}







static
DWORD create_chain (
 _FDID* obj,
 DWORD clst
)
{
 DWORD cs, ncl, scl;
 FRESULT res;
 FATFS *fs = obj->fs;


 if (clst == 0) {
  scl = fs->last_clst;
  if (scl == 0 || scl >= fs->n_fatent) scl = 1;
 }
 else {
  cs = get_fat(obj, clst);
  if (cs < 2) return 1;
  if (cs == 0xFFFFFFFF) return cs;
  if (cs < fs->n_fatent) return cs;
  scl = clst;
 }
# 1352 "C:/esp/esp-idf/components/fatfs/src/ff.c"
 {
  ncl = scl;
  for (;;) {
   ncl++;
   if (ncl >= fs->n_fatent) {
    ncl = 2;
    if (ncl > scl) return 0;
   }
   cs = get_fat(obj, ncl);
   if (cs == 0) break;
   if (cs == 1 || cs == 0xFFFFFFFF) return cs;
   if (ncl == scl) return 0;
  }
 }

 if (0 && fs->fs_type == 4 && obj->stat == 2) {
  res = FR_OK;
 } else {
  res = put_fat(fs, ncl, 0xFFFFFFFF);
  if (res == FR_OK && clst) {
   res = put_fat(fs, clst, ncl);
  }
 }

 if (res == FR_OK) {
  fs->last_clst = ncl;
  if (fs->free_clst < fs->n_fatent - 2) fs->free_clst--;
  fs->fsi_flag |= 1;
 } else {
  ncl = (res == FR_DISK_ERR) ? 0xFFFFFFFF : 1;
 }

 return ncl;
}
# 1427 "C:/esp/esp-idf/components/fatfs/src/ff.c"
static
FRESULT dir_sdi (
 DIR* dp,
 DWORD ofs
)
{
 DWORD csz, clst;
 FATFS *fs = dp->obj.fs;


 if (ofs >= (DWORD)((0 && fs->fs_type == 4) ? 0x10000000 : 0x200000) || ofs % 32) {
  return FR_INT_ERR;
 }
 dp->dptr = ofs;
 clst = dp->obj.sclust;
 if (clst == 0 && fs->fs_type >= 3) {
  clst = fs->dirbase;
  if (0) dp->obj.stat = 0;
 }

 if (clst == 0) {
  if (ofs / 32 >= fs->n_rootdir) return FR_INT_ERR;
  dp->sect = fs->dirbase;

 } else {
  csz = (DWORD)fs->csize * ((fs)->ssize);
  while (ofs >= csz) {
   clst = get_fat(&dp->obj, clst);
   if (clst == 0xFFFFFFFF) return FR_DISK_ERR;
   if (clst < 2 || clst >= fs->n_fatent) return FR_INT_ERR;
   ofs -= csz;
  }
  dp->sect = clust2sect(fs, clst);
 }
 dp->clust = clst;
 if (!dp->sect) return FR_INT_ERR;
 dp->sect += ofs / ((fs)->ssize);
 dp->dir = fs->win + (ofs % ((fs)->ssize));

 return FR_OK;
}
# 1476 "C:/esp/esp-idf/components/fatfs/src/ff.c"
static
FRESULT dir_next (
 DIR* dp,
 int stretch
)
{
 DWORD ofs, clst;
 FATFS *fs = dp->obj.fs;

 UINT n;


 ofs = dp->dptr + 32;
 if (!dp->sect || ofs >= (DWORD)((0 && fs->fs_type == 4) ? 0x10000000 : 0x200000)) return FR_NO_FILE;

 if (ofs % ((fs)->ssize) == 0) {
  dp->sect++;

  if (!dp->clust) {
   if (ofs / 32 >= fs->n_rootdir) {
    dp->sect = 0; return FR_NO_FILE;
   }
  }
  else {
   if ((ofs / ((fs)->ssize) & (fs->csize - 1)) == 0) {
    clst = get_fat(&dp->obj, dp->clust);
    if (clst <= 1) return FR_INT_ERR;
    if (clst == 0xFFFFFFFF) return FR_DISK_ERR;
    if (clst >= fs->n_fatent) {

     if (!stretch) {
      dp->sect = 0; return FR_NO_FILE;
     }
     clst = create_chain(&dp->obj, dp->clust);
     if (clst == 0) return FR_DENIED;
     if (clst == 1) return FR_INT_ERR;
     if (clst == 0xFFFFFFFF) return FR_DISK_ERR;

     if (0) dp->obj.stat |= 4;
     if (sync_window(fs) != FR_OK) return FR_DISK_ERR;
     mem_set(fs->win, 0, ((fs)->ssize));
     for (n = 0, fs->winsect = clust2sect(fs, clst); n < fs->csize; n++, fs->winsect++) {
      fs->wflag = 1;
      if (sync_window(fs) != FR_OK) return FR_DISK_ERR;
     }
     fs->winsect -= n;




    }
    dp->clust = clst;
    dp->sect = clust2sect(fs, clst);
   }
  }
 }
 dp->dptr = ofs;
 dp->dir = fs->win + ofs % ((fs)->ssize);

 return FR_OK;
}
# 1546 "C:/esp/esp-idf/components/fatfs/src/ff.c"
static
FRESULT dir_alloc (
 DIR* dp,
 UINT nent
)
{
 FRESULT res;
 UINT n;
 FATFS *fs = dp->obj.fs;


 res = dir_sdi(dp, 0);
 if (res == FR_OK) {
  n = 0;
  do {
   res = move_window(fs, dp->sect);
   if (res != FR_OK) break;



   if (dp->dir[0] == 0xE5 || dp->dir[0] == 0) {

    if (++n == nent) break;
   } else {
    n = 0;
   }
   res = dir_next(dp, 1);
  } while (res == FR_OK);
 }

 if (res == FR_NO_FILE) res = FR_DENIED;
 return res;
}
# 1589 "C:/esp/esp-idf/components/fatfs/src/ff.c"
static
DWORD ld_clust (
 FATFS* fs,
 const BYTE* dir
)
{
 DWORD cl;

 cl = ld_word(dir + 26);
 if (fs->fs_type == 3) {
  cl |= (DWORD)ld_word(dir + 20) << 16;
 }

 return cl;
}



static
void st_clust (
 FATFS* fs,
 BYTE* dir,
 DWORD cl
)
{
 st_word(dir + 26, (WORD)cl);
 if (fs->fs_type == 3) {
  st_word(dir + 20, (WORD)(cl >> 16));
 }
}
# 2089 "C:/esp/esp-idf/components/fatfs/src/ff.c"
static
FRESULT dir_read (
 DIR* dp,
 int vol
)
{
 FRESULT res = FR_NO_FILE;
 FATFS *fs = dp->obj.fs;
 BYTE a, c;




 while (dp->sect) {
  res = move_window(fs, dp->sect);
  if (res != FR_OK) break;
  c = dp->dir[0];
  if (c == 0) { res = FR_NO_FILE; break; }
# 2123 "C:/esp/esp-idf/components/fatfs/src/ff.c"
  {
   dp->obj.attr = a = dp->dir[11] & 0x3F;
# 2145 "C:/esp/esp-idf/components/fatfs/src/ff.c"
   if (c != 0xE5 && c != '.' && a != 0x0F && (int)((a & ~0x20) == 0x08) == vol) {
    break;
   }

  }
  res = dir_next(dp, 0);
  if (res != FR_OK) break;
 }

 if (res != FR_OK) dp->sect = 0;
 return res;
}
# 2166 "C:/esp/esp-idf/components/fatfs/src/ff.c"
static
FRESULT dir_find (
 DIR* dp
)
{
 FRESULT res;
 FATFS *fs = dp->obj.fs;
 BYTE c;




 res = dir_sdi(dp, 0);
 if (res != FR_OK) return res;
# 2201 "C:/esp/esp-idf/components/fatfs/src/ff.c"
 do {
  res = move_window(fs, dp->sect);
  if (res != FR_OK) break;
  c = dp->dir[0];
  if (c == 0) { res = FR_NO_FILE; break; }
# 2228 "C:/esp/esp-idf/components/fatfs/src/ff.c"
  dp->obj.attr = dp->dir[11] & 0x3F;
  if (!(dp->dir[11] & 0x08) && !mem_cmp(dp->dir, dp->fn, 11)) break;

  res = dir_next(dp, 0);
 } while (res == FR_OK);

 return res;
}
# 2245 "C:/esp/esp-idf/components/fatfs/src/ff.c"
static
FRESULT dir_register (
 DIR* dp
)
{
 FRESULT res;
 FATFS *fs = dp->obj.fs;
# 2319 "C:/esp/esp-idf/components/fatfs/src/ff.c"
 res = dir_alloc(dp, 1);




 if (res == FR_OK) {
  res = move_window(fs, dp->sect);
  if (res == FR_OK) {
   mem_set(dp->dir, 0, 32);
   mem_cpy(dp->dir + 0, dp->fn, 11);



   fs->wflag = 1;
  }
 }

 return res;
}
# 2348 "C:/esp/esp-idf/components/fatfs/src/ff.c"
static
FRESULT dir_remove (
 DIR* dp
)
{
 FRESULT res;
 FATFS *fs = dp->obj.fs;
# 2377 "C:/esp/esp-idf/components/fatfs/src/ff.c"
 res = move_window(fs, dp->sect);
 if (res == FR_OK) {
  dp->dir[0] = 0xE5;
  fs->wflag = 1;
 }


 return res;
}
# 2396 "C:/esp/esp-idf/components/fatfs/src/ff.c"
static
void get_fileinfo (
 DIR* dp,
 FILINFO* fno
)
{
 UINT i, j;
 TCHAR c;
 DWORD tm;






 fno->fname[0] = 0;
 if (!dp->sect) return;
# 2472 "C:/esp/esp-idf/components/fatfs/src/ff.c"
 i = j = 0;
 while (i < 11) {
  c = (TCHAR)dp->dir[i++];
  if (c == ' ') continue;
  if (c == 0x05) c = (TCHAR)0xE5;
  if (i == 9) fno->fname[j++] = '.';
  fno->fname[j++] = c;
 }
 fno->fname[j] = 0;


 fno->fattrib = dp->dir[11];
 fno->fsize = ld_dword(dp->dir + 28);
 tm = ld_dword(dp->dir + 22);
 fno->ftime = (WORD)tm; fno->fdate = (WORD)(tm >> 16);
}
# 2570 "C:/esp/esp-idf/components/fatfs/src/ff.c"
static
FRESULT create_name (
 DIR* dp,
 const TCHAR** path
)
{
# 2695 "C:/esp/esp-idf/components/fatfs/src/ff.c"
 BYTE c, d, *sfn;
 UINT ni, si, i;
 const char *p;


 p = *path; sfn = dp->fn;
 mem_set(sfn, ' ', 11);
 si = i = 0; ni = 8;
# 2716 "C:/esp/esp-idf/components/fatfs/src/ff.c"
 for (;;) {
  c = (BYTE)p[si++];
  if (c <= ' ') break;
  if (c == '/' || c == '\\') {
   while (p[si] == '/' || p[si] == '\\') si++;
   break;
  }
  if (c == '.' || i >= ni) {
   if (ni == 11 || c != '.') return FR_INVALID_NAME;
   i = 8; ni = 11;
   continue;
  }
  if (c >= 0x80) {




   return FR_INVALID_NAME;


  }
  if (0) {
   d = (BYTE)p[si++];
   if (!0 || i >= ni - 1) return FR_INVALID_NAME;
   sfn[i++] = c;
   sfn[i++] = d;
  } else {
   if (chk_chr("\"*+,:;<=>\?[]|\x7F", c)) return FR_INVALID_NAME;
   if ((((c)>='a')&&((c)<='z'))) c -= 0x20;
   sfn[i++] = c;
  }
 }
 *path = p + si;
 if (i == 0) return FR_INVALID_NAME;

 if (sfn[0] == 0xE5) sfn[0] = 0x05;
 sfn[11] = (c <= ' ') ? 0x04 : 0;

 return FR_OK;

}
# 2765 "C:/esp/esp-idf/components/fatfs/src/ff.c"
static
FRESULT follow_path (
 DIR* dp,
 const TCHAR* path
)
{
 FRESULT res;
 BYTE ns;
 _FDID *obj = &dp->obj;
 FATFS *fs = obj->fs;







 {
  while (*path == '/' || *path == '\\') path++;
  obj->sclust = 0;
 }
# 2800 "C:/esp/esp-idf/components/fatfs/src/ff.c"
 if ((UINT)*path < ' ') {
  dp->fn[11] = 0x80;
  res = dir_sdi(dp, 0);

 } else {
  for (;;) {
   res = create_name(dp, &path);
   if (res != FR_OK) break;
   res = dir_find(dp);
   ns = dp->fn[11];
   if (res != FR_OK) {
    if (res == FR_NO_FILE) {
     if (0 && (ns & 0x20)) {
      if (!(ns & 0x04)) continue;
      dp->fn[11] = 0x80;
      res = FR_OK;
     } else {
      if (!(ns & 0x04)) res = FR_NO_PATH;
     }
    }
    break;
   }
   if (ns & 0x04) break;

   if (!(obj->attr & 0x10)) {
    res = FR_NO_PATH; break;
   }
# 2837 "C:/esp/esp-idf/components/fatfs/src/ff.c"
   {
    obj->sclust = ld_clust(fs, fs->win + dp->dptr % ((fs)->ssize));
   }
  }
 }

 return res;
}
# 2853 "C:/esp/esp-idf/components/fatfs/src/ff.c"
static
int get_ldnumber (
 const TCHAR** path
)
{
 const TCHAR *tp, *tt;
 UINT i;
 int vol = -1;
# 2869 "C:/esp/esp-idf/components/fatfs/src/ff.c"
 if (*path) {
  for (tt = *path; (UINT)*tt >= (0 ? ' ' : '!') && *tt != ':'; tt++) ;
  if (*tt == ':') {
   tp = *path;
   i = *tp++ - '0';
   if (i < 10 && tp == tt) {
    if (i < 2) {
     vol = (int)i;
     *path = ++tt;
    }
   }
# 2896 "C:/esp/esp-idf/components/fatfs/src/ff.c"
   return vol;
  }



  vol = 0;

 }
 return vol;
}
# 2914 "C:/esp/esp-idf/components/fatfs/src/ff.c"
static
BYTE check_fs (
 FATFS* fs,
 DWORD sect
)
{
 fs->wflag = 0; fs->winsect = 0xFFFFFFFF;
 if (move_window(fs, sect) != FR_OK) return 4;

 if (ld_word(fs->win + 510) != 0xAA55) return 3;

 if (fs->win[0] == 0xE9 || (fs->win[0] == 0xEB && fs->win[0 + 2] == 0x90)) {
  if ((ld_dword(fs->win + 54) & 0xFFFFFF) == 0x544146) return 0;
  if (ld_dword(fs->win + 82) == 0x33544146) return 0;
 }



 return 2;
}
# 2942 "C:/esp/esp-idf/components/fatfs/src/ff.c"
static
FRESULT find_volume (
 const TCHAR** path,
 FATFS** rfs,
 BYTE mode
)
{
 BYTE fmt, *pt;
 int vol;
 DSTATUS stat;
 DWORD bsect, fasize, tsect, sysect, nclst, szbfat, br[4];
 WORD nrsv;
 FATFS *fs;
 UINT i;



 *rfs = 0;
 vol = get_ldnumber(path);
 if (vol < 0) return FR_INVALID_DRIVE;


 fs = FatFs[vol];
 if (!fs) return FR_NOT_ENABLED;

 { if (!lock_fs(fs)) return FR_TIMEOUT; };
 *rfs = fs;

 mode &= (BYTE)~0x01;
 if (fs->fs_type) {
  stat = ff_disk_status(fs->drv);
  if (!(stat & 0x01)) {
   if (!0 && mode && (stat & 0x04)) {
    return FR_WRITE_PROTECTED;
   }
   return FR_OK;
  }
 }




 fs->fs_type = 0;
 fs->drv = (VolToPart[vol].pd);
 stat = ff_disk_initialize(fs->drv);
 if (stat & 0x01) {
  return FR_NOT_READY;
 }
 if (!0 && mode && (stat & 0x04)) {
  return FR_WRITE_PROTECTED;
 }

 if (ff_disk_ioctl(fs->drv, 2, &((fs)->ssize)) != RES_OK) return FR_DISK_ERR;
 if (((fs)->ssize) > 4096 || ((fs)->ssize) < 512 || (((fs)->ssize) & (((fs)->ssize) - 1))) return FR_DISK_ERR;


 bsect = 0;
 fmt = check_fs(fs, bsect);
 if (fmt == 2 || (fmt < 2 && (VolToPart[vol].pt) != 0)) {
  for (i = 0; i < 4; i++) {
   pt = fs->win + (446 + i * 16);
   br[i] = pt[4] ? ld_dword(pt + 8) : 0;
  }
  i = (VolToPart[vol].pt);
  if (i) i--;
  do {
   bsect = br[i];
   fmt = bsect ? check_fs(fs, bsect) : 3;
  } while (!(VolToPart[vol].pt) && fmt >= 2 && ++i < 4);
 }
 if (fmt == 4) return FR_DISK_ERR;
 if (fmt >= 2) return FR_NO_FILESYSTEM;
# 3063 "C:/esp/esp-idf/components/fatfs/src/ff.c"
 {
  if (ld_word(fs->win + 11) != ((fs)->ssize)) return FR_NO_FILESYSTEM;

  fasize = ld_word(fs->win + 22);
  if (fasize == 0) fasize = ld_dword(fs->win + 36);
  fs->fsize = fasize;

  fs->n_fats = fs->win[16];
  if (fs->n_fats != 1 && fs->n_fats != 2) return FR_NO_FILESYSTEM;
  fasize *= fs->n_fats;

  fs->csize = fs->win[13];
  if (fs->csize == 0 || (fs->csize & (fs->csize - 1))) return FR_NO_FILESYSTEM;

  fs->n_rootdir = ld_word(fs->win + 17);
  if (fs->n_rootdir % (((fs)->ssize) / 32)) return FR_NO_FILESYSTEM;

  tsect = ld_word(fs->win + 19);
  if (tsect == 0) tsect = ld_dword(fs->win + 32);

  nrsv = ld_word(fs->win + 14);
  if (nrsv == 0) return FR_NO_FILESYSTEM;


  sysect = nrsv + fasize + fs->n_rootdir / (((fs)->ssize) / 32);
  if (tsect < sysect) return FR_NO_FILESYSTEM;
  nclst = (tsect - sysect) / fs->csize;
  if (nclst == 0) return FR_NO_FILESYSTEM;
  fmt = 3;
  if (nclst <= 0xFFF5) fmt = 2;
  if (nclst <= 0xFF5) fmt = 1;


  fs->n_fatent = nclst + 2;
  fs->volbase = bsect;
  fs->fatbase = bsect + nrsv;
  fs->database = bsect + sysect;
  if (fmt == 3) {
   if (ld_word(fs->win + 42) != 0) return FR_NO_FILESYSTEM;
   if (fs->n_rootdir) return FR_NO_FILESYSTEM;
   fs->dirbase = ld_dword(fs->win + 44);
   szbfat = fs->n_fatent * 4;
  } else {
   if (fs->n_rootdir == 0) return FR_NO_FILESYSTEM;
   fs->dirbase = fs->fatbase + fasize;
   szbfat = (fmt == 2) ?
    fs->n_fatent * 2 : fs->n_fatent * 3 / 2 + (fs->n_fatent & 1);
  }
  if (fs->fsize < (szbfat + (((fs)->ssize) - 1)) / ((fs)->ssize)) return FR_NO_FILESYSTEM;



  fs->last_clst = fs->free_clst = 0xFFFFFFFF;
  fs->fsi_flag = 0x80;

  if (fmt == 3
   && ld_word(fs->win + 48) == 1
   && move_window(fs, bsect + 1) == FR_OK)
  {
   fs->fsi_flag = 0;
   if (ld_word(fs->win + 510) == 0xAA55
    && ld_dword(fs->win + 0) == 0x41615252
    && ld_dword(fs->win + 484) == 0x61417272)
   {

    fs->free_clst = ld_dword(fs->win + 488);


    fs->last_clst = ld_dword(fs->win + 492);

   }
  }


 }

 fs->fs_type = fmt;
 fs->id = ++Fsid;
# 3153 "C:/esp/esp-idf/components/fatfs/src/ff.c"
 return FR_OK;
}
# 3163 "C:/esp/esp-idf/components/fatfs/src/ff.c"
static
FRESULT validate (
 _FDID* obj,
 FATFS** fs
)
{
 FRESULT res;


 if (!obj || !obj->fs || !obj->fs->fs_type || obj->fs->id != obj->id || (ff_disk_status(obj->fs->drv) & 0x01)) {
  *fs = 0;
  res = FR_INVALID_OBJECT;
 } else {
  *fs = obj->fs;
  { if (!lock_fs(obj->fs)) return FR_TIMEOUT; };
  res = FR_OK;
 }
 return res;
}
# 3198 "C:/esp/esp-idf/components/fatfs/src/ff.c"
FRESULT f_mount (
 FATFS* fs,
 const TCHAR* path,
 BYTE opt
)
{
 FATFS *cfs;
 int vol;
 FRESULT res;
 const TCHAR *rp = path;



 vol = get_ldnumber(&rp);
 if (vol < 0) return FR_INVALID_DRIVE;
 cfs = FatFs[vol];

 if (cfs) {




  if (!ff_del_syncobj(cfs->sobj)) return FR_INT_ERR;

  cfs->fs_type = 0;
 }

 if (fs) {
  fs->fs_type = 0;

  if (!ff_cre_syncobj((BYTE)vol, &fs->sobj)) return FR_INT_ERR;

 }
 FatFs[vol] = fs;

 if (!fs || opt != 1) return FR_OK;

 res = find_volume(&path, &fs, 0);
 { unlock_fs(fs, res); return res; };
}
# 3246 "C:/esp/esp-idf/components/fatfs/src/ff.c"
FRESULT f_open (
 FIL* fp,
 const TCHAR* path,
 BYTE mode
)
{
 FRESULT res;
 DIR dj;
 FATFS *fs;

 DWORD dw, cl, bcs, clst, sc;
 FSIZE_t ofs;




 if (!fp) return FR_INVALID_OBJECT;


 mode &= 0 ? 0x01 : 0x01 | 0x02 | 0x08 | 0x04 | 0x10 | 0x30 | 0x20;
 res = find_volume(&path, &fs, mode);
 if (res == FR_OK) {
  dj.obj.fs = fs;
  ;
  res = follow_path(&dj, path);

  if (res == FR_OK) {
   if (dj.fn[11] & 0x80) {
    res = FR_INVALID_NAME;
   }





  }

  if (mode & (0x08 | 0x10 | 0x04)) {
   if (res != FR_OK) {
    if (res == FR_NO_FILE)



     res = dir_register(&dj);

    mode |= 0x08;
   }
   else {
    if (dj.obj.attr & (0x01 | 0x10)) {
     res = FR_DENIED;
    } else {
     if (mode & 0x04) res = FR_EXIST;
    }
   }
   if (res == FR_OK && (mode & 0x08)) {
    dw = get_fattime();
# 3326 "C:/esp/esp-idf/components/fatfs/src/ff.c"
    {

     st_dword(dj.dir + 14, dw);
     st_dword(dj.dir + 22, dw);
     dj.dir[11] = 0x20;
     cl = ld_clust(fs, dj.dir);
     st_clust(fs, dj.dir, 0);
     st_dword(dj.dir + 28, 0);
     fs->wflag = 1;

     if (cl) {
      dw = fs->winsect;
      res = remove_chain(&dj.obj, cl, 0);
      if (res == FR_OK) {
       res = move_window(fs, dw);
       fs->last_clst = cl - 1;
      }
     }
    }
   }
  }
  else {
   if (res == FR_OK) {
    if (dj.obj.attr & 0x10) {
     res = FR_NO_FILE;
    } else {
     if ((mode & 0x02) && (dj.obj.attr & 0x01)) {
      res = FR_DENIED;
     }
    }
   }
  }
  if (res == FR_OK) {
   if (mode & 0x08)
    mode |= 0x40;
   fp->dir_sect = fs->winsect;
   fp->dir_ptr = dj.dir;




  }
# 3380 "C:/esp/esp-idf/components/fatfs/src/ff.c"
  if (res == FR_OK) {
# 3391 "C:/esp/esp-idf/components/fatfs/src/ff.c"
   {
    fp->obj.sclust = ld_clust(fs, dj.dir);
    fp->obj.objsize = ld_dword(dj.dir + 28);
   }



   fp->obj.fs = fs;
   fp->obj.id = fs->id;
   fp->flag = mode;
   fp->err = 0;
   fp->sect = 0;
   fp->fptr = 0;


   mem_set(fp->buf, 0, 4096);

   if ((mode & 0x20) && fp->obj.objsize > 0) {
    fp->fptr = fp->obj.objsize;
    bcs = (DWORD)fs->csize * ((fs)->ssize);
    clst = fp->obj.sclust;
    for (ofs = fp->obj.objsize; res == FR_OK && ofs > bcs; ofs -= bcs) {
     clst = get_fat(&fp->obj, clst);
     if (clst <= 1) res = FR_INT_ERR;
     if (clst == 0xFFFFFFFF) res = FR_DISK_ERR;
    }
    fp->clust = clst;
    if (res == FR_OK && ofs % ((fs)->ssize)) {
     if ((sc = clust2sect(fs, clst)) == 0) {
      res = FR_INT_ERR;
     } else {
      fp->sect = sc + (DWORD)(ofs / ((fs)->ssize));

      if (ff_disk_read(fs->drv, fp->buf, fp->sect, 1) != RES_OK) res = FR_DISK_ERR;

     }
    }
   }

  }

  ;
 }

 if (res != FR_OK) fp->obj.fs = 0;

 { unlock_fs(fs, res); return res; };
}
# 3447 "C:/esp/esp-idf/components/fatfs/src/ff.c"
FRESULT f_read (
 FIL* fp,
 void* buff,
 UINT btr,
 UINT* br
)
{
 FRESULT res;
 FATFS *fs;
 DWORD clst, sect;
 FSIZE_t remain;
 UINT rcnt, cc, csect;
 BYTE *rbuff = (BYTE*)buff;


 *br = 0;
 res = validate(&fp->obj, &fs);
 if (res != FR_OK || (res = (FRESULT)fp->err) != FR_OK) { unlock_fs(fs, res); return res; };
 if (!(fp->flag & 0x01)) { unlock_fs(fs, FR_DENIED); return FR_DENIED; };
 remain = fp->obj.objsize - fp->fptr;
 if (btr > remain) btr = (UINT)remain;

 for ( ; btr;
  rbuff += rcnt, fp->fptr += rcnt, *br += rcnt, btr -= rcnt) {
  if (fp->fptr % ((fs)->ssize) == 0) {
   csect = (UINT)(fp->fptr / ((fs)->ssize) & (fs->csize - 1));
   if (csect == 0) {
    if (fp->fptr == 0) {
     clst = fp->obj.sclust;
    } else {





     {
      clst = get_fat(&fp->obj, fp->clust);
     }
    }
    if (clst < 2) { fp->err = (BYTE)(FR_INT_ERR); { unlock_fs(fs, FR_INT_ERR); return FR_INT_ERR; }; };
    if (clst == 0xFFFFFFFF) { fp->err = (BYTE)(FR_DISK_ERR); { unlock_fs(fs, FR_DISK_ERR); return FR_DISK_ERR; }; };
    fp->clust = clst;
   }
   sect = clust2sect(fs, fp->clust);
   if (!sect) { fp->err = (BYTE)(FR_INT_ERR); { unlock_fs(fs, FR_INT_ERR); return FR_INT_ERR; }; };
   sect += csect;
   cc = btr / ((fs)->ssize);
   if (cc) {
    if (csect + cc > fs->csize) {
     cc = fs->csize - csect;
    }
    if (ff_disk_read(fs->drv, rbuff, sect, cc) != RES_OK) { fp->err = (BYTE)(FR_DISK_ERR); { unlock_fs(fs, FR_DISK_ERR); return FR_DISK_ERR; }; };






    if ((fp->flag & 0x80) && fp->sect - sect < cc) {
     mem_cpy(rbuff + ((fp->sect - sect) * ((fs)->ssize)), fp->buf, ((fs)->ssize));
    }


    rcnt = ((fs)->ssize) * cc;
    continue;
   }

   if (fp->sect != sect) {

    if (fp->flag & 0x80) {
     if (ff_disk_write(fs->drv, fp->buf, fp->sect, 1) != RES_OK) { fp->err = (BYTE)(FR_DISK_ERR); { unlock_fs(fs, FR_DISK_ERR); return FR_DISK_ERR; }; };
     fp->flag &= (BYTE)~0x80;
    }

    if (ff_disk_read(fs->drv, fp->buf, sect, 1) != RES_OK) { fp->err = (BYTE)(FR_DISK_ERR); { unlock_fs(fs, FR_DISK_ERR); return FR_DISK_ERR; }; };
   }

   fp->sect = sect;
  }
  rcnt = ((fs)->ssize) - (UINT)fp->fptr % ((fs)->ssize);
  if (rcnt > btr) rcnt = btr;




  mem_cpy(rbuff, fp->buf + fp->fptr % ((fs)->ssize), rcnt);

 }

 { unlock_fs(fs, FR_OK); return FR_OK; };
}
# 3547 "C:/esp/esp-idf/components/fatfs/src/ff.c"
FRESULT f_write (
 FIL* fp,
 const void* buff,
 UINT btw,
 UINT* bw
)
{
 FRESULT res;
 FATFS *fs;
 DWORD clst, sect;
 UINT wcnt, cc, csect;
 const BYTE *wbuff = (const BYTE*)buff;


 *bw = 0;
 res = validate(&fp->obj, &fs);
 if (res != FR_OK || (res = (FRESULT)fp->err) != FR_OK) { unlock_fs(fs, res); return res; };
 if (!(fp->flag & 0x02)) { unlock_fs(fs, FR_DENIED); return FR_DENIED; };


 if ((!0 || fs->fs_type != 4) && (DWORD)(fp->fptr + btw) < (DWORD)fp->fptr) {
  btw = (UINT)(0xFFFFFFFF - (DWORD)fp->fptr);
 }

 for ( ; btw;
  wbuff += wcnt, fp->fptr += wcnt, fp->obj.objsize = (fp->fptr > fp->obj.objsize) ? fp->fptr : fp->obj.objsize, *bw += wcnt, btw -= wcnt) {
  if (fp->fptr % ((fs)->ssize) == 0) {
   csect = (UINT)(fp->fptr / ((fs)->ssize)) & (fs->csize - 1);
   if (csect == 0) {
    if (fp->fptr == 0) {
     clst = fp->obj.sclust;
     if (clst == 0) {
      clst = create_chain(&fp->obj, 0);
     }
    } else {





     {
      clst = create_chain(&fp->obj, fp->clust);
     }
    }
    if (clst == 0) break;
    if (clst == 1) { fp->err = (BYTE)(FR_INT_ERR); { unlock_fs(fs, FR_INT_ERR); return FR_INT_ERR; }; };
    if (clst == 0xFFFFFFFF) { fp->err = (BYTE)(FR_DISK_ERR); { unlock_fs(fs, FR_DISK_ERR); return FR_DISK_ERR; }; };
    fp->clust = clst;
    if (fp->obj.sclust == 0) fp->obj.sclust = clst;
   }



   if (fp->flag & 0x80) {
    if (ff_disk_write(fs->drv, fp->buf, fp->sect, 1) != RES_OK) { fp->err = (BYTE)(FR_DISK_ERR); { unlock_fs(fs, FR_DISK_ERR); return FR_DISK_ERR; }; };
    fp->flag &= (BYTE)~0x80;
   }

   sect = clust2sect(fs, fp->clust);
   if (!sect) { fp->err = (BYTE)(FR_INT_ERR); { unlock_fs(fs, FR_INT_ERR); return FR_INT_ERR; }; };
   sect += csect;
   cc = btw / ((fs)->ssize);
   if (cc) {
    if (csect + cc > fs->csize) {
     cc = fs->csize - csect;
    }
    if (ff_disk_write(fs->drv, wbuff, sect, cc) != RES_OK) { fp->err = (BYTE)(FR_DISK_ERR); { unlock_fs(fs, FR_DISK_ERR); return FR_DISK_ERR; }; };







    if (fp->sect - sect < cc) {
     mem_cpy(fp->buf, wbuff + ((fp->sect - sect) * ((fs)->ssize)), ((fs)->ssize));
     fp->flag &= (BYTE)~0x80;
    }


    wcnt = ((fs)->ssize) * cc;
    continue;
   }






   if (fp->sect != sect &&
    fp->fptr < fp->obj.objsize &&
    ff_disk_read(fs->drv, fp->buf, sect, 1) != RES_OK) {
     { fp->err = (BYTE)(FR_DISK_ERR); { unlock_fs(fs, FR_DISK_ERR); return FR_DISK_ERR; }; };
   }

   fp->sect = sect;
  }
  wcnt = ((fs)->ssize) - (UINT)fp->fptr % ((fs)->ssize);
  if (wcnt > btw) wcnt = btw;





  mem_cpy(fp->buf + fp->fptr % ((fs)->ssize), wbuff, wcnt);
  fp->flag |= 0x80;

 }

 fp->flag |= 0x40;

 { unlock_fs(fs, FR_OK); return FR_OK; };
}
# 3668 "C:/esp/esp-idf/components/fatfs/src/ff.c"
FRESULT f_sync (
 FIL* fp
)
{
 FRESULT res;
 FATFS *fs;
 DWORD tm;
 BYTE *dir;




 res = validate(&fp->obj, &fs);
 if (res == FR_OK) {
  if (fp->flag & 0x40) {

   if (fp->flag & 0x80) {
    if (ff_disk_write(fs->drv, fp->buf, fp->sect, 1) != RES_OK) { unlock_fs(fs, FR_DISK_ERR); return FR_DISK_ERR; };
    fp->flag &= (BYTE)~0x80;
   }


   tm = get_fattime();
# 3718 "C:/esp/esp-idf/components/fatfs/src/ff.c"
   {
    res = move_window(fs, fp->dir_sect);
    if (res == FR_OK) {
     dir = fp->dir_ptr;
     dir[11] |= 0x20;
     st_clust(fp->obj.fs, dir, fp->obj.sclust);
     st_dword(dir + 28, (DWORD)fp->obj.objsize);
     st_dword(dir + 22, tm);
     st_word(dir + 18, 0);
     fs->wflag = 1;
     res = sync_fs(fs);
     fp->flag &= (BYTE)~0x40;
    }
   }
  }
 }

 { unlock_fs(fs, res); return res; };
}
# 3747 "C:/esp/esp-idf/components/fatfs/src/ff.c"
FRESULT f_close (
 FIL* fp
)
{
 FRESULT res;
 FATFS *fs;


 res = f_sync(fp);
 if (res == FR_OK)

 {
  res = validate(&fp->obj, &fs);
  if (res == FR_OK) {




   {
    fp->obj.fs = 0;
   }

   unlock_fs(fs, FR_OK);

  }
 }
 return res;
}
# 3935 "C:/esp/esp-idf/components/fatfs/src/ff.c"
FRESULT f_lseek (
 FIL* fp,
 FSIZE_t ofs
)
{
 FRESULT res;
 FATFS *fs;
 DWORD clst, bcs, nsect;
 FSIZE_t ifptr;




 res = validate(&fp->obj, &fs);
 if (res != FR_OK || (res = (FRESULT)fp->err) != FR_OK) { unlock_fs(fs, res); return res; };
# 4003 "C:/esp/esp-idf/components/fatfs/src/ff.c"
 {



  if (ofs > fp->obj.objsize && (0 || !(fp->flag & 0x02))) {
   ofs = fp->obj.objsize;
  }
  ifptr = fp->fptr;
  fp->fptr = nsect = 0;
  if (ofs) {
   bcs = (DWORD)fs->csize * ((fs)->ssize);
   if (ifptr > 0 &&
    (ofs - 1) / bcs >= (ifptr - 1) / bcs) {
    fp->fptr = (ifptr - 1) & ~(FSIZE_t)(bcs - 1);
    ofs -= fp->fptr;
    clst = fp->clust;
   } else {
    clst = fp->obj.sclust;

    if (clst == 0) {
     clst = create_chain(&fp->obj, 0);
     if (clst == 1) { fp->err = (BYTE)(FR_INT_ERR); { unlock_fs(fs, FR_INT_ERR); return FR_INT_ERR; }; };
     if (clst == 0xFFFFFFFF) { fp->err = (BYTE)(FR_DISK_ERR); { unlock_fs(fs, FR_DISK_ERR); return FR_DISK_ERR; }; };
     fp->obj.sclust = clst;
    }

    fp->clust = clst;
   }
   if (clst != 0) {
    while (ofs > bcs) {
     ofs -= bcs; fp->fptr += bcs;

     if (fp->flag & 0x02) {
      if (0 && fp->fptr > fp->obj.objsize) {
       fp->obj.objsize = fp->fptr;
       fp->flag |= 0x40;
      }
      clst = create_chain(&fp->obj, clst);
      if (clst == 0) {
       ofs = 0; break;
      }
     } else

     {
      clst = get_fat(&fp->obj, clst);
     }
     if (clst == 0xFFFFFFFF) { fp->err = (BYTE)(FR_DISK_ERR); { unlock_fs(fs, FR_DISK_ERR); return FR_DISK_ERR; }; };
     if (clst <= 1 || clst >= fs->n_fatent) { fp->err = (BYTE)(FR_INT_ERR); { unlock_fs(fs, FR_INT_ERR); return FR_INT_ERR; }; };
     fp->clust = clst;
    }
    fp->fptr += ofs;
    if (ofs % ((fs)->ssize)) {
     nsect = clust2sect(fs, clst);
     if (!nsect) { fp->err = (BYTE)(FR_INT_ERR); { unlock_fs(fs, FR_INT_ERR); return FR_INT_ERR; }; };
     nsect += (DWORD)(ofs / ((fs)->ssize));
    }
   }
  }
  if (!0 && fp->fptr > fp->obj.objsize) {
   fp->obj.objsize = fp->fptr;
   fp->flag |= 0x40;
  }
  if (fp->fptr % ((fs)->ssize) && nsect != fp->sect) {


   if (fp->flag & 0x80) {
    if (ff_disk_write(fs->drv, fp->buf, fp->sect, 1) != RES_OK) { fp->err = (BYTE)(FR_DISK_ERR); { unlock_fs(fs, FR_DISK_ERR); return FR_DISK_ERR; }; };
    fp->flag &= (BYTE)~0x80;
   }

   if (ff_disk_read(fs->drv, fp->buf, nsect, 1) != RES_OK) { fp->err = (BYTE)(FR_DISK_ERR); { unlock_fs(fs, FR_DISK_ERR); return FR_DISK_ERR; }; };

   fp->sect = nsect;
  }
 }

 { unlock_fs(fs, res); return res; };
}
# 4089 "C:/esp/esp-idf/components/fatfs/src/ff.c"
FRESULT f_opendir (
 DIR* dp,
 const TCHAR* path
)
{
 FRESULT res;
 FATFS *fs;
 _FDID *obj;



 if (!dp) return FR_INVALID_OBJECT;


 obj = &dp->obj;
 res = find_volume(&path, &fs, 0);
 if (res == FR_OK) {
  obj->fs = fs;
  ;
  res = follow_path(dp, path);
  if (res == FR_OK) {
   if (!(dp->fn[11] & 0x80)) {
    if (obj->attr & 0x10) {
# 4122 "C:/esp/esp-idf/components/fatfs/src/ff.c"
     {
      obj->sclust = ld_clust(fs, dp->dir);
     }
    } else {
     res = FR_NO_PATH;
    }
   }
   if (res == FR_OK) {
    obj->id = fs->id;
    res = dir_sdi(dp, 0);
# 4142 "C:/esp/esp-idf/components/fatfs/src/ff.c"
   }
  }
  ;
  if (res == FR_NO_FILE) res = FR_NO_PATH;
 }
 if (res != FR_OK) obj->fs = 0;

 { unlock_fs(fs, res); return res; };
}
# 4159 "C:/esp/esp-idf/components/fatfs/src/ff.c"
FRESULT f_closedir (
 DIR *dp
)
{
 FRESULT res;
 FATFS *fs;


 res = validate(&dp->obj, &fs);
 if (res == FR_OK) {






  {
   dp->obj.fs = 0;
  }

  unlock_fs(fs, FR_OK);

 }
 return res;
}
# 4192 "C:/esp/esp-idf/components/fatfs/src/ff.c"
FRESULT f_readdir (
 DIR* dp,
 FILINFO* fno
)
{
 FRESULT res;
 FATFS *fs;



 res = validate(&dp->obj, &fs);
 if (res == FR_OK) {
  if (!fno) {
   res = dir_sdi(dp, 0);
  } else {
   ;
   res = dir_read(dp, 0);
   if (res == FR_NO_FILE) res = FR_OK;
   if (res == FR_OK) {
    get_fileinfo(dp, fno);
    res = dir_next(dp, 0);
    if (res == FR_NO_FILE) res = FR_OK;
   }
   ;
  }
 }
 { unlock_fs(fs, res); return res; };
}
# 4280 "C:/esp/esp-idf/components/fatfs/src/ff.c"
FRESULT f_stat (
 const TCHAR* path,
 FILINFO* fno
)
{
 FRESULT res;
 DIR dj;




 res = find_volume(&path, &dj.obj.fs, 0);
 if (res == FR_OK) {
  ;
  res = follow_path(&dj, path);
  if (res == FR_OK) {
   if (dj.fn[11] & 0x80) {
    res = FR_INVALID_NAME;
   } else {
    if (fno) get_fileinfo(&dj, fno);
   }
  }
  ;
 }

 { unlock_fs(dj.obj.fs, res); return res; };
}
# 4315 "C:/esp/esp-idf/components/fatfs/src/ff.c"
FRESULT f_getfree (
 const TCHAR* path,
 DWORD* nclst,
 FATFS** fatfs
)
{
 FRESULT res;
 FATFS *fs;
 DWORD nfree, clst, sect, stat;
 UINT i;
 BYTE *p;
 _FDID obj;



 res = find_volume(&path, &fs, 0);
 if (res == FR_OK) {
  *fatfs = fs;

  if (fs->free_clst <= fs->n_fatent - 2) {
   *nclst = fs->free_clst;
  } else {

   nfree = 0;
   if (fs->fs_type == 1) {
    clst = 2; obj.fs = fs;
    do {
     stat = get_fat(&obj, clst);
     if (stat == 0xFFFFFFFF) { res = FR_DISK_ERR; break; }
     if (stat == 1) { res = FR_INT_ERR; break; }
     if (stat == 0) nfree++;
    } while (++clst < fs->n_fatent);
   } else {
# 4366 "C:/esp/esp-idf/components/fatfs/src/ff.c"
    {
     clst = fs->n_fatent; sect = fs->fatbase;
     i = 0; p = 0;
     do {
      if (i == 0) {
       res = move_window(fs, sect++);
       if (res != FR_OK) break;
       p = fs->win;
       i = ((fs)->ssize);
      }
      if (fs->fs_type == 2) {
       if (ld_word(p) == 0) nfree++;
       p += 2; i -= 2;
      } else {
       if ((ld_dword(p) & 0x0FFFFFFF) == 0) nfree++;
       p += 4; i -= 4;
      }
     } while (--clst);
    }
   }
   *nclst = nfree;
   fs->free_clst = nfree;
   fs->fsi_flag |= 1;
  }
 }

 { unlock_fs(fs, res); return res; };
}
# 4402 "C:/esp/esp-idf/components/fatfs/src/ff.c"
FRESULT f_truncate (
 FIL* fp
)
{
 FRESULT res;
 FATFS *fs;
 DWORD ncl;


 res = validate(&fp->obj, &fs);
 if (res != FR_OK || (res = (FRESULT)fp->err) != FR_OK) { unlock_fs(fs, res); return res; };
 if (!(fp->flag & 0x02)) { unlock_fs(fs, FR_DENIED); return FR_DENIED; };

 if (fp->obj.objsize > fp->fptr) {
  if (fp->fptr == 0) {
   res = remove_chain(&fp->obj, fp->obj.sclust, 0);
   fp->obj.sclust = 0;
  } else {
   ncl = get_fat(&fp->obj, fp->clust);
   res = FR_OK;
   if (ncl == 0xFFFFFFFF) res = FR_DISK_ERR;
   if (ncl == 1) res = FR_INT_ERR;
   if (res == FR_OK && ncl < fs->n_fatent) {
    res = remove_chain(&fp->obj, ncl, fp->clust);
   }
  }
  fp->obj.objsize = fp->fptr;
  fp->flag |= 0x40;

  if (res == FR_OK && (fp->flag & 0x80)) {
   if (ff_disk_write(fs->drv, fp->buf, fp->sect, 1) != RES_OK) {
    res = FR_DISK_ERR;
   } else {
    fp->flag &= (BYTE)~0x80;
   }
  }

  if (res != FR_OK) { fp->err = (BYTE)(res); { unlock_fs(fs, res); return res; }; };
 }

 { unlock_fs(fs, res); return res; };
}
# 4452 "C:/esp/esp-idf/components/fatfs/src/ff.c"
FRESULT f_unlink (
 const TCHAR* path
)
{
 FRESULT res;
 DIR dj, sdj;
 DWORD dclst = 0;
 FATFS *fs;







 res = find_volume(&path, &fs, 0x02);
 dj.obj.fs = fs;
 if (res == FR_OK) {
  ;
  res = follow_path(&dj, path);
  if (0 && res == FR_OK && (dj.fn[11] & 0x20)) {
   res = FR_INVALID_NAME;
  }



  if (res == FR_OK) {
   if (dj.fn[11] & 0x80) {
    res = FR_INVALID_NAME;
   } else {
    if (dj.obj.attr & 0x01) {
     res = FR_DENIED;
    }
   }
   if (res == FR_OK) {
# 4495 "C:/esp/esp-idf/components/fatfs/src/ff.c"
    {
     dclst = ld_clust(fs, dj.dir);
    }
    if (dj.obj.attr & 0x10) {





     {
      sdj.obj.fs = fs;
      sdj.obj.sclust = dclst;






      res = dir_sdi(&sdj, 0);
      if (res == FR_OK) {
       res = dir_read(&sdj, 0);
       if (res == FR_OK) res = FR_DENIED;
       if (res == FR_NO_FILE) res = FR_OK;
      }
     }
    }
   }
   if (res == FR_OK) {
    res = dir_remove(&dj);
    if (res == FR_OK && dclst) {



     res = remove_chain(&dj.obj, dclst, 0);

    }
    if (res == FR_OK) res = sync_fs(fs);
   }
  }
  ;
 }

 { unlock_fs(fs, res); return res; };
}
# 4547 "C:/esp/esp-idf/components/fatfs/src/ff.c"
FRESULT f_mkdir (
 const TCHAR* path
)
{
 FRESULT res;
 DIR dj;
 FATFS *fs;
 BYTE *dir;
 UINT n;
 DWORD dsc, dcl, pcl, tm;




 res = find_volume(&path, &fs, 0x02);
 dj.obj.fs = fs;
 if (res == FR_OK) {
  ;
  res = follow_path(&dj, path);
  if (res == FR_OK) res = FR_EXIST;
  if (0 && res == FR_NO_FILE && (dj.fn[11] & 0x20)) {
   res = FR_INVALID_NAME;
  }
  if (res == FR_NO_FILE) {
   dcl = create_chain(&dj.obj, 0);
   dj.obj.objsize = (DWORD)fs->csize * ((fs)->ssize);
   res = FR_OK;
   if (dcl == 0) res = FR_DENIED;
   if (dcl == 1) res = FR_INT_ERR;
   if (dcl == 0xFFFFFFFF) res = FR_DISK_ERR;
   if (res == FR_OK) res = sync_window(fs);
   tm = get_fattime();
   if (res == FR_OK) {
    dsc = clust2sect(fs, dcl);
    dir = fs->win;
    mem_set(dir, 0, ((fs)->ssize));
    if (!0 || fs->fs_type != 4) {
     mem_set(dir + 0, ' ', 11);
     dir[0] = '.';
     dir[11] = 0x10;
     st_dword(dir + 22, tm);
     st_clust(fs, dir, dcl);
     mem_cpy(dir + 32, dir, 32);
     dir[32 + 1] = '.'; pcl = dj.obj.sclust;
     if (fs->fs_type == 3 && pcl == fs->dirbase) pcl = 0;
     st_clust(fs, dir + 32, pcl);
    }
    for (n = fs->csize; n; n--) {
     fs->winsect = dsc++;
     fs->wflag = 1;
     res = sync_window(fs);
     if (res != FR_OK) break;
     mem_set(dir, 0, ((fs)->ssize));
    }
   }
   if (res == FR_OK) res = dir_register(&dj);
   if (res == FR_OK) {
# 4615 "C:/esp/esp-idf/components/fatfs/src/ff.c"
    {
     dir = dj.dir;
     st_dword(dir + 22, tm);
     st_clust(fs, dir, dcl);
     dir[11] = 0x10;
     fs->wflag = 1;
    }
    if (res == FR_OK) res = sync_fs(fs);
   } else {
    remove_chain(&dj.obj, dcl, 0);
   }
  }
  ;
 }

 { unlock_fs(fs, res); return res; };
}
# 4640 "C:/esp/esp-idf/components/fatfs/src/ff.c"
FRESULT f_rename (
 const TCHAR* path_old,
 const TCHAR* path_new
)
{
 FRESULT res;
 DIR djo, djn;
 FATFS *fs;
 BYTE buf[0 ? 32 * 2 : 24], *dir;
 DWORD dw;



 get_ldnumber(&path_new);
 res = find_volume(&path_old, &fs, 0x02);
 if (res == FR_OK) {
  djo.obj.fs = fs;
  ;
  res = follow_path(&djo, path_old);
  if (res == FR_OK && (djo.fn[11] & (0x20 | 0x80))) res = FR_INVALID_NAME;



  if (res == FR_OK) {
# 4689 "C:/esp/esp-idf/components/fatfs/src/ff.c"
   {
    mem_cpy(buf, djo.dir + 11, 21);
    mem_cpy(&djn, &djo, sizeof (DIR));
    res = follow_path(&djn, path_new);
    if (res == FR_OK) {
     res = (djn.obj.sclust == djo.obj.sclust && djn.dptr == djo.dptr) ? FR_NO_FILE : FR_EXIST;
    }
    if (res == FR_NO_FILE) {
     res = dir_register(&djn);
     if (res == FR_OK) {
      dir = djn.dir;
      mem_cpy(dir + 13, buf + 2, 19);
      dir[11] = buf[0] | 0x20;
      fs->wflag = 1;
      if ((dir[11] & 0x10) && djo.obj.sclust != djn.obj.sclust) {
       dw = clust2sect(fs, ld_clust(fs, dir));
       if (!dw) {
        res = FR_INT_ERR;
       } else {

        res = move_window(fs, dw);
        dir = fs->win + 32 * 1;
        if (res == FR_OK && dir[1] == '.') {
         st_clust(fs, dir, djn.obj.sclust);
         fs->wflag = 1;
        }
       }
      }
     }
    }
   }
   if (res == FR_OK) {
    res = dir_remove(&djo);
    if (res == FR_OK) {
     res = sync_fs(fs);
    }
   }

  }
  ;
 }

 { unlock_fs(fs, res); return res; };
}
# 5213 "C:/esp/esp-idf/components/fatfs/src/ff.c"
FRESULT f_mkfs (
 const TCHAR* path,
 BYTE opt,
 DWORD au,
 void* work,
 UINT len
)
{
 const UINT n_fats = 1;
 const UINT n_rootdir = 512;
 static const WORD cst[] = {1, 4, 16, 64, 256, 512, 0};
 static const WORD cst32[] = {1, 2, 4, 8, 16, 32, 0};
 BYTE fmt, sys, *buf, *pte, pdrv, part;
 WORD ss;
 DWORD szb_buf, sz_buf, sz_blk, n_clst, pau, sect, nsect, n;
 DWORD b_vol, b_fat, b_data;
 DWORD sz_vol, sz_rsv, sz_fat, sz_dir;
 UINT i;
 int vol;
 DSTATUS stat;






 vol = get_ldnumber(&path);
 if (vol < 0) return FR_INVALID_DRIVE;
 if (FatFs[vol]) FatFs[vol]->fs_type = 0;
 pdrv = (VolToPart[vol].pd);
 part = (VolToPart[vol].pt);


 stat = ff_disk_initialize(pdrv);
 if (stat & 0x01) return FR_NOT_READY;
 if (stat & 0x04) return FR_WRITE_PROTECTED;
 if (ff_disk_ioctl(pdrv, 3, &sz_blk) != RES_OK || !sz_blk || sz_blk > 32768 || (sz_blk & (sz_blk - 1))) sz_blk = 1;

 if (ff_disk_ioctl(pdrv, 2, &ss) != RES_OK) return FR_DISK_ERR;
 if (ss > 4096 || ss < 512 || (ss & (ss - 1))) return FR_DISK_ERR;



 if ((au != 0 && au < ss) || au > 0x1000000 || (au & (au - 1))) return FR_INVALID_PARAMETER;
 au /= ss;


 buf = (BYTE*)work;
 sz_buf = len / ss;
 szb_buf = sz_buf * ss;
 if (!szb_buf) return FR_MKFS_ABORTED;


 if (1 && part != 0) {

  if (ff_disk_read(pdrv, buf, 0, 1) != RES_OK) return FR_DISK_ERR;
  if (ld_word(buf + 510) != 0xAA55) return FR_MKFS_ABORTED;
  pte = buf + (446 + (part - 1) * 16);
  if (!pte[4]) return FR_MKFS_ABORTED;
  b_vol = ld_dword(pte + 8);
  sz_vol = ld_dword(pte + 12);
 } else {

  if (ff_disk_ioctl(pdrv, 1, &sz_vol) != RES_OK) return FR_DISK_ERR;
  b_vol = (opt & 0x08) ? 0 : 63;
  if (sz_vol < b_vol) return FR_MKFS_ABORTED;
  sz_vol -= b_vol;
 }
 if (sz_vol < 128) return FR_MKFS_ABORTED;


 do {
  if (0 && (opt & 0x04)) {
   if ((opt & 0x07) == 0x04 || sz_vol >= 0x4000000 || au > 128) {
    fmt = 4; break;
   }
  }
  if (au > 128) return FR_INVALID_PARAMETER;
  if (opt & 0x02) {
   if ((opt & 0x07) == 0x02 || !(opt & 0x01)) {
    fmt = 3; break;
   }
  }
  if (!(opt & 0x01)) return FR_INVALID_PARAMETER;
  fmt = 2;
 } while (0);
# 5462 "C:/esp/esp-idf/components/fatfs/src/ff.c"
 {
  do {
   pau = au;

   if (fmt == 3) {
    if (!pau) {
     n = sz_vol / 0x20000;
     for (i = 0, pau = 1; cst32[i] && cst32[i] <= n; i++, pau <<= 1) ;
    }
    n_clst = sz_vol / pau;
    sz_fat = (n_clst * 4 + 8 + ss - 1) / ss;
    sz_rsv = 32;
    sz_dir = 0;
    if (n_clst <= 0xFFF5 || n_clst > 0xFFFFFF5) return FR_MKFS_ABORTED;
   } else {
    if (!pau) {
     n = sz_vol / 0x1000;
     for (i = 0, pau = 1; cst[i] && cst[i] <= n; i++, pau <<= 1) ;
    }
    n_clst = sz_vol / pau;
    if (n_clst > 0xFF5) {
     n = n_clst * 2 + 4;
    } else {
     fmt = 1;
     n = (n_clst * 3 + 1) / 2 + 3;
    }
    sz_fat = (n + ss - 1) / ss;
    sz_rsv = 1;
    sz_dir = (DWORD)n_rootdir * 32 / ss;
   }
   b_fat = b_vol + sz_rsv;
   b_data = b_fat + sz_fat * n_fats + sz_dir;


   n = ((b_data + sz_blk - 1) & ~(sz_blk - 1)) - b_data;
   if (fmt == 3) {
    sz_rsv += n; b_fat += n;
   } else {
    sz_fat += n / n_fats;
   }


   if (sz_vol < b_data + pau * 16 - b_vol) return FR_MKFS_ABORTED;
   n_clst = (sz_vol - sz_rsv - sz_fat * n_fats - sz_dir) / pau;
   if (fmt == 3) {
    if (n_clst <= 0xFFF5) {
     if (!au && (au = pau / 2) != 0) continue;
     return FR_MKFS_ABORTED;
    }
   }
   if (fmt == 2) {
    if (n_clst > 0xFFF5) {
     if (!au && (pau * 2) <= 64) {
      au = pau * 2; continue;
     }
     if ((opt & 0x02)) {
      fmt = 3; continue;
     }
     if (!au && (au = pau * 2) <= 128) continue;
     return FR_MKFS_ABORTED;
    }
    if (n_clst <= 0xFF5) {
     if (!au && (au = pau * 2) <= 128) continue;
     return FR_MKFS_ABORTED;
    }
   }
   if (fmt == 1 && n_clst > 0xFF5) return FR_MKFS_ABORTED;


   break;
  } while (1);






  mem_set(buf, 0, ss);
  mem_cpy(buf + 0, "\xEB\xFE\x90" "MSDOS5.0", 11);
  st_word(buf + 11, ss);
  buf[13] = (BYTE)pau;
  st_word(buf + 14, (WORD)sz_rsv);
  buf[16] = (BYTE)n_fats;
  st_word(buf + 17, (WORD)((fmt == 3) ? 0 : n_rootdir));
  if (sz_vol < 0x10000) {
   st_word(buf + 19, (WORD)sz_vol);
  } else {
   st_dword(buf + 32, sz_vol);
  }
  buf[21] = 0xF8;
  st_word(buf + 24, 63);
  st_word(buf + 26, 255);
  st_dword(buf + 28, b_vol);
  if (fmt == 3) {
   st_dword(buf + 67, get_fattime());
   st_dword(buf + 36, sz_fat);
   st_dword(buf + 44, 2);
   st_word(buf + 48, 1);
   st_word(buf + 50, 6);
   buf[64] = 0x80;
   buf[66] = 0x29;
   mem_cpy(buf + 71, "NO NAME    " "FAT32   ", 19);
  } else {
   st_dword(buf + 39, get_fattime());
   st_word(buf + 22, (WORD)sz_fat);
   buf[36] = 0x80;
   buf[38] = 0x29;
   mem_cpy(buf + 43, "NO NAME    " "FAT     ", 19);
  }
  st_word(buf + 510, 0xAA55);
  if (ff_disk_write(pdrv, buf, b_vol, 1) != RES_OK) return FR_DISK_ERR;


  if (fmt == 3) {
   ff_disk_write(pdrv, buf, b_vol + 6, 1);
   mem_set(buf, 0, ss);
   st_dword(buf + 0, 0x41615252);
   st_dword(buf + 484, 0x61417272);
   st_dword(buf + 488, n_clst - 1);
   st_dword(buf + 492, 2);
   st_word(buf + 510, 0xAA55);
   ff_disk_write(pdrv, buf, b_vol + 7, 1);
   ff_disk_write(pdrv, buf, b_vol + 1, 1);
  }


  mem_set(buf, 0, (UINT)szb_buf);
  sect = b_fat;
  for (i = 0; i < n_fats; i++) {
   if (fmt == 3) {
    st_dword(buf + 0, 0xFFFFFFF8);
    st_dword(buf + 4, 0xFFFFFFFF);
    st_dword(buf + 8, 0x0FFFFFFF);
   } else {
    st_dword(buf + 0, (fmt == 1) ? 0xFFFFF8 : 0xFFFFFFF8);
   }
   nsect = sz_fat;
   do {
    n = (nsect > sz_buf) ? sz_buf : nsect;
    if (ff_disk_write(pdrv, buf, sect, (UINT)n) != RES_OK) return FR_DISK_ERR;
    mem_set(buf, 0, ss);
    sect += n; nsect -= n;
   } while (nsect);
  }


  nsect = (fmt == 3) ? pau : sz_dir;
  do {
   n = (nsect > sz_buf) ? sz_buf : nsect;
   if (ff_disk_write(pdrv, buf, sect, (UINT)n) != RES_OK) return FR_DISK_ERR;
   sect += n; nsect -= n;
  } while (nsect);
 }


 if (0 && fmt == 4) {
  sys = 0x07;
 } else {
  if (fmt == 3) {
   sys = 0x0C;
  } else {
   if (sz_vol >= 0x10000) {
    sys = 0x06;
   } else {
    sys = (fmt == 2) ? 0x04 : 0x01;
   }
  }
 }

 if (1 && part != 0) {

  if (ff_disk_read(pdrv, buf, 0, 1) != RES_OK) return FR_DISK_ERR;
  buf[446 + (part - 1) * 16 + 4] = sys;
  if (ff_disk_write(pdrv, buf, 0, 1) != RES_OK) return FR_DISK_ERR;
 } else {
  if (!(opt & 0x08)) {

   mem_set(buf, 0, ss);
   st_word(buf + 510, 0xAA55);
   pte = buf + 446;
   pte[0] = 0;
   pte[1] = 1;
   pte[2] = 1;
   pte[3] = 0;
   pte[4] = sys;
   n = (b_vol + sz_vol) / (63 * 255);
   pte[5] = 254;
   pte[6] = (BYTE)(n >> 2 | 63);
   pte[7] = (BYTE)n;
   st_dword(pte + 8, b_vol);
   st_dword(pte + 12, sz_vol);
   if (ff_disk_write(pdrv, buf, 0, 1) != RES_OK) return FR_DISK_ERR;
  }
 }

 if (ff_disk_ioctl(pdrv, 0, 0) != RES_OK) return FR_DISK_ERR;

 return FR_OK;
}
# 5672 "C:/esp/esp-idf/components/fatfs/src/ff.c"
FRESULT f_fdisk (
 BYTE pdrv,
 const DWORD* szt,
 void* work
)
{
 UINT i, n, sz_cyl, tot_cyl, b_cyl, e_cyl, p_cyl;
 BYTE s_hd, e_hd, *p, *buf = (BYTE*)work;
 DSTATUS stat;
 DWORD sz_disk, sz_part, s_part;
 DWORD cluster_size = 63;

 stat = ff_disk_initialize(pdrv);
 if (stat & 0x01) return FR_NOT_READY;
 if (stat & 0x04) return FR_WRITE_PROTECTED;
 if (ff_disk_ioctl(pdrv, 1, &sz_disk)) return FR_DISK_ERR;

 for (n = 16; n < 256 && sz_disk / n / cluster_size > 1024; n *= 2) ;
 if (n == 256) n--;
 if (sz_disk < 0x1000) {
  cluster_size = 1;
  n = sz_disk;
 }
 e_hd = n - 1;
 sz_cyl = cluster_size * n;
 tot_cyl = sz_disk / sz_cyl;


 mem_set(buf, 0, 4096);
 p = buf + 446; b_cyl = 0;
 for (i = 0; i < 4; i++, p += 16) {
  p_cyl = (szt[i] <= 100U) ? (DWORD)tot_cyl * szt[i] / 100 : szt[i] / sz_cyl;
  if (!p_cyl) continue;
  s_part = (DWORD)sz_cyl * b_cyl;
  sz_part = (DWORD)sz_cyl * p_cyl;
  if (i == 0) {
   s_hd = 1;
   s_part += cluster_size; sz_part -= cluster_size;
  } else {
   s_hd = 0;
  }
  e_cyl = b_cyl + p_cyl - 1;
  if (e_cyl >= tot_cyl) return FR_INVALID_PARAMETER;


  p[1] = s_hd;
  p[2] = (BYTE)((b_cyl >> 2) + 1);
  p[3] = (BYTE)b_cyl;
  p[4] = 0x06;
  p[5] = e_hd;
  p[6] = (BYTE)((e_cyl >> 2) + cluster_size);
  p[7] = (BYTE)e_cyl;
  st_dword(p + 8, s_part);
  st_dword(p + 12, sz_part);


  b_cyl += p_cyl;
 }
 st_word(p, 0xAA55);


 return (ff_disk_write(pdrv, buf, 0, 1) != RES_OK || ff_disk_ioctl(pdrv, 0, 0) != RES_OK) ? FR_DISK_ERR : FR_OK;
}
