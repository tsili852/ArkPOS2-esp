# 1 "C:/esp/esp-idf/components/driver/uart.c"
# 1 "C:\\esp\\esp32-ArkPOS2\\ArkPOS2-esp\\build\\driver//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "C:/esp/esp-idf/components/driver/uart.c"
# 14 "C:/esp/esp-idf/components/driver/uart.c"
# 1 "C:/esp/esp-idf/components/newlib/include/string.h" 1
# 10 "C:/esp/esp-idf/components/newlib/include/string.h"
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
# 11 "C:/esp/esp-idf/components/newlib/include/string.h" 2
# 1 "C:/esp/esp-idf/components/newlib/include/sys/reent.h" 1
# 13 "C:/esp/esp-idf/components/newlib/include/sys/reent.h"
# 1 "C:/esp/esp-idf/components/newlib/include/_ansi.h" 1
# 14 "C:/esp/esp-idf/components/newlib/include/sys/reent.h" 2
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 149 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 3 4

# 149 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 3 4
typedef int ptrdiff_t;
# 216 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 3 4
typedef unsigned int size_t;
# 328 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 3 4
typedef short unsigned int wchar_t;
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
# 12 "C:/esp/esp-idf/components/newlib/include/string.h" 2
# 1 "C:/esp/esp-idf/components/newlib/include/sys/cdefs.h" 1
# 45 "C:/esp/esp-idf/components/newlib/include/sys/cdefs.h"
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 46 "C:/esp/esp-idf/components/newlib/include/sys/cdefs.h" 2
# 13 "C:/esp/esp-idf/components/newlib/include/string.h" 2




# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 18 "C:/esp/esp-idf/components/newlib/include/string.h" 2



void * memchr (const void *, int, size_t);
int memcmp (const void *, const void *, size_t);
void * memcpy (void * restrict, const void * restrict, size_t);
void * memmove (void *, const void *, size_t);
void * memset (void *, int, size_t);
char *strcat (char *restrict, const char *restrict);
char *strchr (const char *, int);
int strcmp (const char *, const char *);
int strcoll (const char *, const char *);
char *strcpy (char *restrict, const char *restrict);
size_t strcspn (const char *, const char *);
char *strerror (int);
size_t strlen (const char *);
char *strncat (char *restrict, const char *restrict, size_t);
int strncmp (const char *, const char *, size_t);
char *strncpy (char *restrict, const char *restrict, size_t);
char *strpbrk (const char *, const char *);
char *strrchr (const char *, int);
size_t strspn (const char *, const char *);
char *strstr (const char *, const char *);

char *strtok (char *restrict, const char *restrict);

size_t strxfrm (char *restrict, const char *restrict, size_t);


char *strtok_r (char *restrict, const char *restrict, char **restrict);


int bcmp (const void *, const void *, size_t);
void bcopy (const void *, void *, size_t);
void bzero (void *, size_t);
int ffs (int);
char *index (const char *, int);


void * memccpy (void * restrict, const void * restrict, int, size_t);





void * memrchr (const void *, int, size_t);




char *rindex (const char *, int);

char *stpcpy (char *restrict, const char *restrict);
char *stpncpy (char *restrict, const char *restrict, size_t);

int strcasecmp (const char *, const char *);






char *strdup (const char *);


char *_strdup_r (struct _reent *, const char *);


char *strndup (const char *, size_t);



char *_strndup_r (struct _reent *, const char *, size_t);
# 106 "C:/esp/esp-idf/components/newlib/include/string.h"
int strerror_r (int, char *, size_t)
             __asm__ ("" "__xpg_strerror_r");







char * _strerror_r (struct _reent *, int, int, int *);


size_t strlcat (char *, const char *, size_t);
size_t strlcpy (char *, const char *, size_t);


int strncasecmp (const char *, const char *, size_t);



size_t strnlen (const char *, size_t);


char *strsep (char **, const char *);







char *strlwr (char *);
char *strupr (char *);



char *strsignal (int __signo);
# 163 "C:/esp/esp-idf/components/newlib/include/string.h"
# 1 "C:/esp/esp-idf/components/newlib/include/sys/string.h" 1
# 164 "C:/esp/esp-idf/components/newlib/include/string.h" 2


# 15 "C:/esp/esp-idf/components/driver/uart.c" 2
# 1 "C:/esp/esp-idf/components/esp32/include/esp_types.h" 1
# 21 "C:/esp/esp-idf/components/esp32/include/esp_types.h"
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
# 22 "C:/esp/esp-idf/components/esp32/include/esp_types.h" 2
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stdbool.h" 1 3 4
# 23 "C:/esp/esp-idf/components/esp32/include/esp_types.h" 2
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 24 "C:/esp/esp-idf/components/esp32/include/esp_types.h" 2
# 16 "C:/esp/esp-idf/components/driver/uart.c" 2
# 1 "C:/esp/esp-idf/components/esp32/include/esp_attr.h" 1
# 17 "C:/esp/esp-idf/components/driver/uart.c" 2
# 1 "C:/esp/esp-idf/components/esp32/include/esp_intr.h" 1
# 18 "C:/esp/esp-idf/components/esp32/include/esp_intr.h"
# 1 "C:/esp/esp-idf/components/esp32/include/rom/ets_sys.h" 1
# 21 "C:/esp/esp-idf/components/esp32/include/rom/ets_sys.h"
# 1 "C:/esp/esp-idf/components/soc/esp32/include/soc/soc.h" 1
# 20 "C:/esp/esp-idf/components/soc/esp32/include/soc/soc.h"
# 1 "C:/esp/esp-idf/components/esp32/include/esp_assert.h" 1
# 17 "C:/esp/esp-idf/components/esp32/include/esp_assert.h"
# 1 "C:/esp/esp-idf/components/newlib/platform_include/assert.h" 1
# 19 "C:/esp/esp-idf/components/newlib/platform_include/assert.h"
       
# 1 "C:/esp/esp32-ArkPOS2/ArkPOS2-esp/build/include/sdkconfig.h" 1
# 21 "C:/esp/esp-idf/components/newlib/platform_include/assert.h" 2
# 1 "C:/esp/esp-idf/components/newlib/include/stdlib.h" 1
# 10 "C:/esp/esp-idf/components/newlib/include/stdlib.h"
# 1 "C:/esp/esp-idf/components/newlib/include/machine/ieeefp.h" 1
# 11 "C:/esp/esp-idf/components/newlib/include/stdlib.h" 2





# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 17 "C:/esp/esp-idf/components/newlib/include/stdlib.h" 2



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




# 22 "C:/esp/esp-idf/components/newlib/platform_include/assert.h" 2

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
# 19 "C:/esp/esp-idf/components/esp32/include/esp_intr.h" 2
# 1 "C:/esp/esp-idf/components/freertos/include/freertos/xtensa_api.h" 1
# 31 "C:/esp/esp-idf/components/freertos/include/freertos/xtensa_api.h"
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
# 32 "C:/esp/esp-idf/components/freertos/include/freertos/xtensa_api.h" 2

# 1 "C:/esp/esp-idf/components/freertos/include/freertos/xtensa_context.h" 1
# 44 "C:/esp/esp-idf/components/freertos/include/freertos/xtensa_context.h"
# 1 "C:/esp/esp-idf/components/esp32/include/xtensa/config/tie.h" 1
# 45 "C:/esp/esp-idf/components/freertos/include/freertos/xtensa_context.h" 2
# 1 "C:/esp/esp-idf/components/esp32/include/xtensa/corebits.h" 1
# 46 "C:/esp/esp-idf/components/freertos/include/freertos/xtensa_context.h" 2
# 1 "C:/esp/esp-idf/components/esp32/include/xtensa/config/system.h" 1
# 47 "C:/esp/esp-idf/components/freertos/include/freertos/xtensa_context.h" 2
# 1 "C:/esp/esp-idf/components/esp32/include/xtensa/xtruntime-frames.h" 1
# 30 "C:/esp/esp-idf/components/esp32/include/xtensa/xtruntime-frames.h"
# 1 "C:/esp/esp-idf/components/esp32/include/xtensa/config/core.h" 1
# 42 "C:/esp/esp-idf/components/esp32/include/xtensa/config/core.h"
# 1 "C:/esp/esp-idf/components/esp32/include/xtensa/xtensa-versions.h" 1
# 43 "C:/esp/esp-idf/components/esp32/include/xtensa/config/core.h" 2
# 51 "C:/esp/esp-idf/components/esp32/include/xtensa/config/core.h"
# 1 "C:/esp/esp-idf/components/esp32/include/xtensa/config/core-matmap.h" 1
# 52 "C:/esp/esp-idf/components/esp32/include/xtensa/config/core.h" 2
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
# 31 "C:/esp/esp-idf/components/esp32/include/xtensa/xtruntime-frames.h" 2
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
# 34 "C:/esp/esp-idf/components/freertos/include/freertos/xtensa_api.h" 2



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
# 18 "C:/esp/esp-idf/components/driver/uart.c" 2
# 1 "C:/esp/esp-idf/components/esp32/include/esp_intr_alloc.h" 1
# 20 "C:/esp/esp-idf/components/esp32/include/esp_intr_alloc.h"
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
# 21 "C:/esp/esp-idf/components/esp32/include/esp_intr_alloc.h" 2
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
# 19 "C:/esp/esp-idf/components/driver/uart.c" 2
# 1 "C:/esp/esp-idf/components/log/include/esp_log.h" 1
# 19 "C:/esp/esp-idf/components/log/include/esp_log.h"
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stdarg.h" 1 3 4
# 98 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stdarg.h" 3 4

# 98 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stdarg.h" 3 4
typedef __gnuc_va_list va_list;
# 20 "C:/esp/esp-idf/components/log/include/esp_log.h" 2
# 1 "C:/esp/esp32-ArkPOS2/ArkPOS2-esp/build/include/sdkconfig.h" 1
# 21 "C:/esp/esp-idf/components/log/include/esp_log.h" 2
# 1 "C:/esp/esp-idf/components/esp32/include/rom/ets_sys.h" 1
# 22 "C:/esp/esp-idf/components/log/include/esp_log.h" 2
# 31 "C:/esp/esp-idf/components/log/include/esp_log.h"

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
# 20 "C:/esp/esp-idf/components/driver/uart.c" 2

# 1 "C:/esp/esp-idf/components/newlib/include/malloc.h" 1
# 10 "C:/esp/esp-idf/components/newlib/include/malloc.h"
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 11 "C:/esp/esp-idf/components/newlib/include/malloc.h" 2


# 1 "C:/esp/esp-idf/components/newlib/include/machine/malloc.h" 1
# 14 "C:/esp/esp-idf/components/newlib/include/malloc.h" 2
# 22 "C:/esp/esp-idf/components/newlib/include/malloc.h"
struct mallinfo {
  size_t arena;
  size_t ordblks;
  size_t smblks;
  size_t hblks;
  size_t hblkhd;
  size_t usmblks;
  size_t fsmblks;
  size_t uordblks;
  size_t fordblks;
  size_t keepcost;
};



extern void * malloc (size_t);




extern void * _malloc_r (struct _reent *, size_t);


extern void free (void *);




extern void _free_r (struct _reent *, void *);


extern void * realloc (void *, size_t);




extern void * _realloc_r (struct _reent *, void *, size_t);


extern void * calloc (size_t, size_t);




extern void * _calloc_r (struct _reent *, size_t, size_t);


extern void * memalign (size_t, size_t);




extern void * _memalign_r (struct _reent *, size_t, size_t);


extern struct mallinfo mallinfo (void);




extern struct mallinfo _mallinfo_r (struct _reent *);


extern void malloc_stats (void);




extern void _malloc_stats_r (struct _reent *);


extern int mallopt (int, int);




extern int _mallopt_r (struct _reent *, int, int);


extern size_t malloc_usable_size (void *);




extern size_t _malloc_usable_size_r (struct _reent *, void *);





extern void * valloc (size_t);




extern void * _valloc_r (struct _reent *, size_t);


extern void * pvalloc (size_t);




extern void * _pvalloc_r (struct _reent *, size_t);


extern int malloc_trim (size_t);




extern int _malloc_trim_r (struct _reent *, size_t);




extern void mstats (char *);




extern void _mstats_r (struct _reent *, char *);
# 162 "C:/esp/esp-idf/components/newlib/include/malloc.h"
extern void cfree (void *);
# 22 "C:/esp/esp-idf/components/driver/uart.c" 2
# 1 "C:/esp/esp-idf/components/freertos/include/freertos/FreeRTOS.h" 1
# 76 "C:/esp/esp-idf/components/freertos/include/freertos/FreeRTOS.h"
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 77 "C:/esp/esp-idf/components/freertos/include/freertos/FreeRTOS.h" 2
# 99 "C:/esp/esp-idf/components/freertos/include/freertos/FreeRTOS.h"
# 1 "C:/esp/esp-idf/components/freertos/include/freertos/FreeRTOSConfig.h" 1
# 73 "C:/esp/esp-idf/components/freertos/include/freertos/FreeRTOSConfig.h"
# 1 "C:/esp/esp32-ArkPOS2/ArkPOS2-esp/build/include/sdkconfig.h" 1
# 74 "C:/esp/esp-idf/components/freertos/include/freertos/FreeRTOSConfig.h" 2
# 102 "C:/esp/esp-idf/components/freertos/include/freertos/FreeRTOSConfig.h"
# 1 "C:/esp/esp-idf/components/freertos/include/freertos/xtensa_config.h" 1
# 103 "C:/esp/esp-idf/components/freertos/include/freertos/FreeRTOSConfig.h" 2
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


# 1 "C:/esp/esp-idf/components/heap/include/esp_heap_caps.h" 1
# 14 "C:/esp/esp-idf/components/heap/include/esp_heap_caps.h"
       



# 1 "C:/esp/esp-idf/components/heap/include/multi_heap.h" 1
# 14 "C:/esp/esp-idf/components/heap/include/multi_heap.h"
       
# 30 "C:/esp/esp-idf/components/heap/include/multi_heap.h"
typedef struct multi_heap_info *multi_heap_handle_t;
# 41 "C:/esp/esp-idf/components/heap/include/multi_heap.h"
void *multi_heap_malloc(multi_heap_handle_t heap, size_t size);
# 50 "C:/esp/esp-idf/components/heap/include/multi_heap.h"
void multi_heap_free(multi_heap_handle_t heap, void *p);
# 62 "C:/esp/esp-idf/components/heap/include/multi_heap.h"
void *multi_heap_realloc(multi_heap_handle_t heap, void *p, size_t size);
# 73 "C:/esp/esp-idf/components/heap/include/multi_heap.h"
size_t multi_heap_get_allocated_size(multi_heap_handle_t heap, void *p);
# 87 "C:/esp/esp-idf/components/heap/include/multi_heap.h"
multi_heap_handle_t multi_heap_register(void *start, size_t size);
# 99 "C:/esp/esp-idf/components/heap/include/multi_heap.h"
void multi_heap_set_lock(multi_heap_handle_t heap, void* lock);







void multi_heap_dump(multi_heap_handle_t heap);
# 119 "C:/esp/esp-idf/components/heap/include/multi_heap.h"

# 119 "C:/esp/esp-idf/components/heap/include/multi_heap.h" 3 4
_Bool 
# 119 "C:/esp/esp-idf/components/heap/include/multi_heap.h"
    multi_heap_check(multi_heap_handle_t heap, 
# 119 "C:/esp/esp-idf/components/heap/include/multi_heap.h" 3 4
                                               _Bool 
# 119 "C:/esp/esp-idf/components/heap/include/multi_heap.h"
                                                    print_errors);
# 133 "C:/esp/esp-idf/components/heap/include/multi_heap.h"
size_t multi_heap_free_size(multi_heap_handle_t heap);
# 145 "C:/esp/esp-idf/components/heap/include/multi_heap.h"
size_t multi_heap_minimum_free_size(multi_heap_handle_t heap);


typedef struct {
    size_t total_free_bytes;
    size_t total_allocated_bytes;
    size_t largest_free_block;
    size_t minimum_free_bytes;
    size_t allocated_blocks;
    size_t free_blocks;
    size_t total_blocks;
} multi_heap_info_t;
# 165 "C:/esp/esp-idf/components/heap/include/multi_heap.h"
void multi_heap_get_info(multi_heap_handle_t heap, multi_heap_info_t *info);
# 19 "C:/esp/esp-idf/components/heap/include/esp_heap_caps.h" 2
# 51 "C:/esp/esp-idf/components/heap/include/esp_heap_caps.h"
void *heap_caps_malloc(size_t size, uint32_t caps);
# 63 "C:/esp/esp-idf/components/heap/include/esp_heap_caps.h"
void heap_caps_free( void *ptr);
# 82 "C:/esp/esp-idf/components/heap/include/esp_heap_caps.h"
void *heap_caps_realloc( void *ptr, size_t size, int caps);
# 99 "C:/esp/esp-idf/components/heap/include/esp_heap_caps.h"
size_t heap_caps_get_free_size( uint32_t caps );
# 117 "C:/esp/esp-idf/components/heap/include/esp_heap_caps.h"
size_t heap_caps_get_minimum_free_size( uint32_t caps );
# 129 "C:/esp/esp-idf/components/heap/include/esp_heap_caps.h"
size_t heap_caps_get_largest_free_block( uint32_t caps );
# 145 "C:/esp/esp-idf/components/heap/include/esp_heap_caps.h"
void heap_caps_get_info( multi_heap_info_t *info, uint32_t caps );
# 158 "C:/esp/esp-idf/components/heap/include/esp_heap_caps.h"
void heap_caps_print_heap_info( uint32_t caps );
# 175 "C:/esp/esp-idf/components/heap/include/esp_heap_caps.h"

# 175 "C:/esp/esp-idf/components/heap/include/esp_heap_caps.h" 3 4
_Bool 
# 175 "C:/esp/esp-idf/components/heap/include/esp_heap_caps.h"
    heap_caps_check_integrity(uint32_t caps, 
# 175 "C:/esp/esp-idf/components/heap/include/esp_heap_caps.h" 3 4
                                             _Bool 
# 175 "C:/esp/esp-idf/components/heap/include/esp_heap_caps.h"
                                                  print_errors);
# 190 "C:/esp/esp-idf/components/heap/include/esp_heap_caps.h"
void heap_caps_malloc_extmem_enable(size_t limit);
# 86 "C:/esp/esp-idf/components/freertos/include/freertos/portmacro.h" 2
# 1 "C:/esp/esp-idf/components/soc/include/soc/soc_memory_layout.h" 1
# 14 "C:/esp/esp-idf/components/soc/include/soc/soc_memory_layout.h"
       





# 1 "C:/esp/esp32-ArkPOS2/ArkPOS2-esp/build/include/sdkconfig.h" 1
# 21 "C:/esp/esp-idf/components/soc/include/soc/soc_memory_layout.h" 2






typedef struct {
    const char *name;
    uint32_t caps[3];
    
# 30 "C:/esp/esp-idf/components/soc/include/soc/soc_memory_layout.h" 3 4
   _Bool 
# 30 "C:/esp/esp-idf/components/soc/include/soc/soc_memory_layout.h"
        aliased_iram;
    
# 31 "C:/esp/esp-idf/components/soc/include/soc/soc_memory_layout.h" 3 4
   _Bool 
# 31 "C:/esp/esp-idf/components/soc/include/soc/soc_memory_layout.h"
        startup_stack;
} soc_memory_type_desc_t;


extern const soc_memory_type_desc_t soc_memory_types[];
extern const size_t soc_memory_type_count;



typedef struct
{
    intptr_t start;
    size_t size;
    size_t type;
    intptr_t iram_address;
} soc_memory_region_t;

extern const soc_memory_region_t soc_memory_regions[];
extern const size_t soc_memory_region_count;




typedef struct
{
    intptr_t start;
    intptr_t end;
} soc_reserved_region_t;

extern const soc_reserved_region_t soc_reserved_regions[];
extern const size_t soc_reserved_region_count;

inline static 
# 63 "C:/esp/esp-idf/components/soc/include/soc/soc_memory_layout.h" 3 4
             _Bool 
# 63 "C:/esp/esp-idf/components/soc/include/soc/soc_memory_layout.h"
                  __attribute__((section(".iram1"))) esp_ptr_dma_capable(const void *p)
{
    return (intptr_t)p >= 0x3FFAE000 && (intptr_t)p < 0x40000000;
}

inline static 
# 68 "C:/esp/esp-idf/components/soc/include/soc/soc_memory_layout.h" 3 4
             _Bool 
# 68 "C:/esp/esp-idf/components/soc/include/soc/soc_memory_layout.h"
                  __attribute__((section(".iram1"))) esp_ptr_executable(const void *p)
{
    intptr_t ip = (intptr_t) p;
    return (ip >= 0x400D0000 && ip < 0x40400000)
        || (ip >= 0x40080000 && ip < 0x400A0000)
        || (ip >= 0x400C0000 && ip < 0x400C2000);
}

inline static 
# 76 "C:/esp/esp-idf/components/soc/include/soc/soc_memory_layout.h" 3 4
             _Bool 
# 76 "C:/esp/esp-idf/components/soc/include/soc/soc_memory_layout.h"
                  __attribute__((section(".iram1"))) esp_ptr_byte_accessible(const void *p)
{
    
# 78 "C:/esp/esp-idf/components/soc/include/soc/soc_memory_layout.h" 3 4
   _Bool 
# 78 "C:/esp/esp-idf/components/soc/include/soc/soc_memory_layout.h"
        r;
    r = ((intptr_t)p >= 0x3FFAE000 && (intptr_t)p < 0x40000000);



    return r;
}

inline static 
# 86 "C:/esp/esp-idf/components/soc/include/soc/soc_memory_layout.h" 3 4
             _Bool 
# 86 "C:/esp/esp-idf/components/soc/include/soc/soc_memory_layout.h"
                  __attribute__((section(".iram1"))) esp_ptr_internal(const void *p) {
    
# 87 "C:/esp/esp-idf/components/soc/include/soc/soc_memory_layout.h" 3 4
   _Bool 
# 87 "C:/esp/esp-idf/components/soc/include/soc/soc_memory_layout.h"
        r;
    r = ((intptr_t)p >= 0x3F400000 && (intptr_t)p < 0x400C2000);
    r |= ((intptr_t)p >= 0x50000000 && (intptr_t)p < 0x50002000);
    return r;
}
# 87 "C:/esp/esp-idf/components/freertos/include/freertos/portmacro.h" 2
# 110 "C:/esp/esp-idf/components/freertos/include/freertos/portmacro.h"
typedef uint8_t StackType_t;
typedef int BaseType_t;
typedef unsigned int UBaseType_t;





 typedef uint32_t TickType_t;





# 1 "C:/esp/esp-idf/components/freertos/include/freertos/portbenchmark.h" 1
# 125 "C:/esp/esp-idf/components/freertos/include/freertos/portmacro.h" 2

# 1 "C:/esp/esp32-ArkPOS2/ArkPOS2-esp/build/include/sdkconfig.h" 1
# 127 "C:/esp/esp-idf/components/freertos/include/freertos/portmacro.h" 2





typedef struct {
 uint32_t owner;
 uint32_t count;




} portMUX_TYPE;
# 177 "C:/esp/esp-idf/components/freertos/include/freertos/portmacro.h"
void vPortAssertIfInISR();
# 205 "C:/esp/esp-idf/components/freertos/include/freertos/portmacro.h"
void vPortCPUInitializeMutex(portMUX_TYPE *mux);
# 219 "C:/esp/esp-idf/components/freertos/include/freertos/portmacro.h"
void vTaskExitCritical( portMUX_TYPE *mux );
void vTaskEnterCritical( portMUX_TYPE *mux );
void vPortCPUAcquireMutex(portMUX_TYPE *mux);
# 231 "C:/esp/esp-idf/components/freertos/include/freertos/portmacro.h"

# 231 "C:/esp/esp-idf/components/freertos/include/freertos/portmacro.h" 3 4
_Bool 
# 231 "C:/esp/esp-idf/components/freertos/include/freertos/portmacro.h"
    vPortCPUAcquireMutexTimeout(portMUX_TYPE *mux, int timeout_cycles);
void vPortCPUReleaseMutex(portMUX_TYPE *mux);
# 244 "C:/esp/esp-idf/components/freertos/include/freertos/portmacro.h"
static inline unsigned portENTER_CRITICAL_NESTED() { unsigned state = ({ unsigned __tmp; __asm__ __volatile__( "rsil	%0, " "3" "\n" : "=a" (__tmp) : : "memory" ); __tmp;}); ; return state; }
# 273 "C:/esp/esp-idf/components/freertos/include/freertos/portmacro.h"
static inline void uxPortCompareSet(volatile uint32_t *addr, uint32_t compare, uint32_t *set) {
    __asm__ __volatile__ (
        "WSR 	    %2,SCOMPARE1 \n"
        "S32C1I     %0, %1, 0	 \n"
        :"=r"(*set)
        :"r"(addr), "r"(compare), "0"(*set)
        );
}
# 296 "C:/esp/esp-idf/components/freertos/include/freertos/portmacro.h"
void vPortYield( void );
void _frxt_setup_switch( void );



static inline uint32_t xPortGetCoreID();
# 322 "C:/esp/esp-idf/components/freertos/include/freertos/portmacro.h"
typedef struct {

 volatile StackType_t* coproc_area;
# 339 "C:/esp/esp-idf/components/freertos/include/freertos/portmacro.h"
} xMPU_SETTINGS;
# 351 "C:/esp/esp-idf/components/freertos/include/freertos/portmacro.h"
void _xt_coproc_release(volatile void * coproc_sa_base);
# 95 "C:/esp/esp-idf/components/freertos/include/freertos/portable.h" 2
# 125 "C:/esp/esp-idf/components/freertos/include/freertos/portable.h"
# 1 "C:/esp/esp-idf/components/freertos/include/freertos/mpu_wrappers.h" 1
# 126 "C:/esp/esp-idf/components/freertos/include/freertos/portable.h" 2
# 1 "C:/esp/esp-idf/components/esp32/include/esp_system.h" 1
# 21 "C:/esp/esp-idf/components/esp32/include/esp_system.h"
# 1 "C:/esp/esp-idf/components/esp32/include/esp_sleep.h" 1
# 15 "C:/esp/esp-idf/components/esp32/include/esp_sleep.h"
       



# 1 "C:/esp/esp-idf/components/driver/include/driver/gpio.h" 1
# 19 "C:/esp/esp-idf/components/driver/include/driver/gpio.h"
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
# 23 "C:/esp/esp-idf/components/driver/include/driver/touch_pad.h"
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
# 23 "C:/esp/esp-idf/components/driver/uart.c" 2
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
# 24 "C:/esp/esp-idf/components/driver/uart.c" 2

# 1 "C:/esp/esp-idf/components/freertos/include/freertos/task.h" 1
# 78 "C:/esp/esp-idf/components/freertos/include/freertos/task.h"
# 1 "C:/esp/esp-idf/components/newlib/include/limits.h" 1
# 131 "C:/esp/esp-idf/components/newlib/include/limits.h"
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include-fixed\\limits.h" 1 3 4
# 132 "C:/esp/esp-idf/components/newlib/include/limits.h" 2
# 79 "C:/esp/esp-idf/components/freertos/include/freertos/task.h" 2

# 1 "C:/esp/esp-idf/components/freertos/include/freertos/list.h" 1
# 181 "C:/esp/esp-idf/components/freertos/include/freertos/list.h"
struct xLIST_ITEM
{

 TickType_t xItemValue;
 struct xLIST_ITEM * pxNext;
 struct xLIST_ITEM * pxPrevious;
 void * pvOwner;
 void * pvContainer;

};
typedef struct xLIST_ITEM ListItem_t;


_Static_assert(sizeof(StaticListItem_t) == sizeof(ListItem_t), "StaticListItem_t != ListItem_t");


struct xMINI_LIST_ITEM
{

 TickType_t xItemValue;
 struct xLIST_ITEM * pxNext;
 struct xLIST_ITEM * pxPrevious;
};
typedef struct xMINI_LIST_ITEM MiniListItem_t;


_Static_assert(sizeof(StaticMiniListItem_t) == sizeof(MiniListItem_t), "StaticMiniListItem_t != MiniListItem_t");






typedef struct xLIST
{

 UBaseType_t uxNumberOfItems;
 ListItem_t * pxIndex;
 MiniListItem_t xListEnd;

} List_t;


_Static_assert(sizeof(StaticList_t) == sizeof(List_t), "StaticList_t != List_t");
# 399 "C:/esp/esp-idf/components/freertos/include/freertos/list.h"
void vListInitialise( List_t * const pxList );
# 410 "C:/esp/esp-idf/components/freertos/include/freertos/list.h"
void vListInitialiseItem( ListItem_t * const pxItem );
# 423 "C:/esp/esp-idf/components/freertos/include/freertos/list.h"
void vListInsert( List_t * const pxList, ListItem_t * const pxNewListItem );
# 444 "C:/esp/esp-idf/components/freertos/include/freertos/list.h"
void vListInsertEnd( List_t * const pxList, ListItem_t * const pxNewListItem );
# 459 "C:/esp/esp-idf/components/freertos/include/freertos/list.h"
UBaseType_t uxListRemove( ListItem_t * const pxItemToRemove );
# 81 "C:/esp/esp-idf/components/freertos/include/freertos/task.h" 2
# 108 "C:/esp/esp-idf/components/freertos/include/freertos/task.h"
typedef void * TaskHandle_t;





typedef BaseType_t (*TaskHookFunction_t)( void * );


typedef enum
{
 eRunning = 0,
 eReady,
 eBlocked,
 eSuspended,
 eDeleted
} eTaskState;


typedef enum
{
 eNoAction = 0,
 eSetBits,
 eIncrement,
 eSetValueWithOverwrite,
 eSetValueWithoutOverwrite
} eNotifyAction;




typedef struct xTIME_OUT
{
 BaseType_t xOverflowCount;
 TickType_t xTimeOnEntering;
} TimeOut_t;




typedef struct xMEMORY_REGION
{
 void *pvBaseAddress;
 uint32_t ulLengthInBytes;
 uint32_t ulParameters;
} MemoryRegion_t;




typedef struct xTASK_PARAMETERS
{
 TaskFunction_t pvTaskCode;
 const char * const pcName;
 uint32_t usStackDepth;
 void *pvParameters;
 UBaseType_t uxPriority;
 StackType_t *puxStackBuffer;
 MemoryRegion_t xRegions[ 1 ];
} TaskParameters_t;



typedef struct xTASK_STATUS
{
 TaskHandle_t xHandle;
 const char *pcTaskName;
 UBaseType_t xTaskNumber;
 eTaskState eCurrentState;
 UBaseType_t uxCurrentPriority;
 UBaseType_t uxBasePriority;
 uint32_t ulRunTimeCounter;
 StackType_t *pxStackBase;
 uint32_t usStackHighWaterMark;
} TaskStatus_t;





typedef struct xTASK_SNAPSHOT
{
    void *pxTCB;
    StackType_t *pxTopOfStack;
    StackType_t *pxEndOfStack;

} TaskSnapshot_t;


typedef enum
{
 eAbortSleep = 0,
 eStandardSleep,
 eNoTasksWaitingTimeout
} eSleepModeStatus;
# 378 "C:/esp/esp-idf/components/freertos/include/freertos/task.h"
    BaseType_t xTaskCreatePinnedToCore( TaskFunction_t pxTaskCode,
                   const char * const pcName,
                   const uint32_t usStackDepth,
                   void * const pvParameters,
                   UBaseType_t uxPriority,
                   TaskHandle_t * const pxCreatedTask,
                   const BaseType_t xCoreID);
# 579 "C:/esp/esp-idf/components/freertos/include/freertos/task.h"
 BaseType_t xTaskCreateRestricted( const TaskParameters_t * const pxTaskDefinition, TaskHandle_t *pxCreatedTask ) ;
# 628 "C:/esp/esp-idf/components/freertos/include/freertos/task.h"
void vTaskAllocateMPURegions( TaskHandle_t xTask, const MemoryRegion_t * const pxRegions ) ;
# 669 "C:/esp/esp-idf/components/freertos/include/freertos/task.h"
void vTaskDelete( TaskHandle_t xTaskToDelete ) ;
# 721 "C:/esp/esp-idf/components/freertos/include/freertos/task.h"
void vTaskDelay( const TickType_t xTicksToDelay ) ;
# 780 "C:/esp/esp-idf/components/freertos/include/freertos/task.h"
void vTaskDelayUntil( TickType_t * const pxPreviousWakeTime, const TickType_t xTimeIncrement ) ;
# 827 "C:/esp/esp-idf/components/freertos/include/freertos/task.h"
UBaseType_t uxTaskPriorityGet( TaskHandle_t xTask ) ;







UBaseType_t uxTaskPriorityGetFromISR( TaskHandle_t xTask ) ;
# 853 "C:/esp/esp-idf/components/freertos/include/freertos/task.h"
eTaskState eTaskGetState( TaskHandle_t xTask ) ;
# 895 "C:/esp/esp-idf/components/freertos/include/freertos/task.h"
void vTaskPrioritySet( TaskHandle_t xTask, UBaseType_t uxNewPriority ) ;
# 946 "C:/esp/esp-idf/components/freertos/include/freertos/task.h"
void vTaskSuspend( TaskHandle_t xTaskToSuspend ) ;
# 995 "C:/esp/esp-idf/components/freertos/include/freertos/task.h"
void vTaskResume( TaskHandle_t xTaskToResume ) ;
# 1024 "C:/esp/esp-idf/components/freertos/include/freertos/task.h"
BaseType_t xTaskResumeFromISR( TaskHandle_t xTaskToResume ) ;
# 1057 "C:/esp/esp-idf/components/freertos/include/freertos/task.h"
void vTaskStartScheduler( void ) ;
# 1113 "C:/esp/esp-idf/components/freertos/include/freertos/task.h"
void vTaskEndScheduler( void ) ;
# 1164 "C:/esp/esp-idf/components/freertos/include/freertos/task.h"
void vTaskSuspendAll( void ) ;
# 1218 "C:/esp/esp-idf/components/freertos/include/freertos/task.h"
BaseType_t xTaskResumeAll( void ) ;
# 1233 "C:/esp/esp-idf/components/freertos/include/freertos/task.h"
TickType_t xTaskGetTickCount( void ) ;
# 1249 "C:/esp/esp-idf/components/freertos/include/freertos/task.h"
TickType_t xTaskGetTickCountFromISR( void ) ;
# 1263 "C:/esp/esp-idf/components/freertos/include/freertos/task.h"
UBaseType_t uxTaskGetNumberOfTasks( void ) ;
# 1277 "C:/esp/esp-idf/components/freertos/include/freertos/task.h"
char *pcTaskGetTaskName( TaskHandle_t xTaskToQuery ) ;
# 1298 "C:/esp/esp-idf/components/freertos/include/freertos/task.h"
UBaseType_t uxTaskGetStackHighWaterMark( TaskHandle_t xTask ) ;
# 1317 "C:/esp/esp-idf/components/freertos/include/freertos/task.h"
uint8_t* pxTaskGetStackStart( TaskHandle_t xTask) ;
# 1353 "C:/esp/esp-idf/components/freertos/include/freertos/task.h"
 void vTaskSetThreadLocalStoragePointer( TaskHandle_t xTaskToSet, BaseType_t xIndex, void *pvValue ) ;
 void *pvTaskGetThreadLocalStoragePointer( TaskHandle_t xTaskToQuery, BaseType_t xIndex ) ;


  typedef void (*TlsDeleteCallbackFunction_t)( int, void * );
  void vTaskSetThreadLocalStoragePointerAndDelCallback( TaskHandle_t xTaskToSet, BaseType_t xIndex, void *pvValue , TlsDeleteCallbackFunction_t xDelCallback);
# 1374 "C:/esp/esp-idf/components/freertos/include/freertos/task.h"
BaseType_t xTaskCallApplicationTaskHook( TaskHandle_t xTask, void *pvParameter ) ;
# 1383 "C:/esp/esp-idf/components/freertos/include/freertos/task.h"
TaskHandle_t xTaskGetIdleTaskHandle( void );
# 1482 "C:/esp/esp-idf/components/freertos/include/freertos/task.h"
UBaseType_t uxTaskGetSystemState( TaskStatus_t * const pxTaskStatusArray, const UBaseType_t uxArraySize, uint32_t * const pulTotalRunTime );
# 1529 "C:/esp/esp-idf/components/freertos/include/freertos/task.h"
void vTaskList( char * pcWriteBuffer ) ;
# 1583 "C:/esp/esp-idf/components/freertos/include/freertos/task.h"
void vTaskGetRunTimeStats( char *pcWriteBuffer ) ;
# 1660 "C:/esp/esp-idf/components/freertos/include/freertos/task.h"
BaseType_t xTaskNotify( TaskHandle_t xTaskToNotify, uint32_t ulValue, eNotifyAction eAction );
# 1749 "C:/esp/esp-idf/components/freertos/include/freertos/task.h"
BaseType_t xTaskNotifyFromISR( TaskHandle_t xTaskToNotify, uint32_t ulValue, eNotifyAction eAction, BaseType_t *pxHigherPriorityTaskWoken );
# 1824 "C:/esp/esp-idf/components/freertos/include/freertos/task.h"
BaseType_t xTaskNotifyWait( uint32_t ulBitsToClearOnEntry, uint32_t ulBitsToClearOnExit, uint32_t *pulNotificationValue, TickType_t xTicksToWait );
# 1925 "C:/esp/esp-idf/components/freertos/include/freertos/task.h"
void vTaskNotifyGiveFromISR( TaskHandle_t xTaskToNotify, BaseType_t *pxHigherPriorityTaskWoken );
# 1994 "C:/esp/esp-idf/components/freertos/include/freertos/task.h"
uint32_t ulTaskNotifyTake( BaseType_t xClearCountOnExit, TickType_t xTicksToWait );
# 2015 "C:/esp/esp-idf/components/freertos/include/freertos/task.h"
BaseType_t xTaskIncrementTick( void ) ;
# 2048 "C:/esp/esp-idf/components/freertos/include/freertos/task.h"
void vTaskPlaceOnEventList( List_t * const pxEventList, const TickType_t xTicksToWait ) ;
void vTaskPlaceOnUnorderedEventList( List_t * pxEventList, const TickType_t xItemValue, const TickType_t xTicksToWait ) ;
# 2062 "C:/esp/esp-idf/components/freertos/include/freertos/task.h"
void vTaskPlaceOnEventListRestricted( List_t * const pxEventList, const TickType_t xTicksToWait ) ;
# 2088 "C:/esp/esp-idf/components/freertos/include/freertos/task.h"
BaseType_t xTaskRemoveFromEventList( const List_t * const pxEventList ) ;
BaseType_t xTaskRemoveFromUnorderedEventList( ListItem_t * pxEventListItem, const TickType_t xItemValue ) ;
# 2099 "C:/esp/esp-idf/components/freertos/include/freertos/task.h"
void vTaskSwitchContext( void ) ;





TickType_t uxTaskResetEventItemValue( void ) ;




TaskHandle_t xTaskGetCurrentTaskHandle( void ) ;
# 2120 "C:/esp/esp-idf/components/freertos/include/freertos/task.h"
TaskHandle_t xTaskGetCurrentTaskHandleForCPU( BaseType_t cpuid );





void vTaskSetTimeOutState( TimeOut_t * const pxTimeOut ) ;





BaseType_t xTaskCheckForTimeOut( TimeOut_t * const pxTimeOut, TickType_t * const pxTicksToWait ) ;





void vTaskMissedYield( void ) ;





BaseType_t xTaskGetSchedulerState( void ) ;





void vTaskPriorityInherit( TaskHandle_t const pxMutexHolder ) ;





BaseType_t xTaskPriorityDisinherit( TaskHandle_t const pxMutexHolder ) ;




UBaseType_t uxTaskGetTaskNumber( TaskHandle_t xTask ) ;





BaseType_t xTaskGetAffinity( TaskHandle_t xTask ) ;





void vTaskSetTaskNumber( TaskHandle_t xTask, const UBaseType_t uxHandle ) ;
# 2183 "C:/esp/esp-idf/components/freertos/include/freertos/task.h"
void vTaskStepTick( const TickType_t xTicksToJump ) ;
# 2199 "C:/esp/esp-idf/components/freertos/include/freertos/task.h"
eSleepModeStatus eTaskConfirmSleepModeStatus( void ) ;





void *pvTaskIncrementMutexHeldCount( void );
# 2216 "C:/esp/esp-idf/components/freertos/include/freertos/task.h"
UBaseType_t uxTaskGetSnapshotAll( TaskSnapshot_t * const pxTaskSnapshotArray, const UBaseType_t uxArraySize, UBaseType_t * const pxTcbSz );
# 26 "C:/esp/esp-idf/components/driver/uart.c" 2
# 1 "C:/esp/esp-idf/components/freertos/include/freertos/ringbuf.h" 1
# 40 "C:/esp/esp-idf/components/freertos/include/freertos/ringbuf.h"
typedef void * RingbufHandle_t;


typedef enum {
 RINGBUF_TYPE_NOSPLIT = 0,
 RINGBUF_TYPE_ALLOWSPLIT,
 RINGBUF_TYPE_BYTEBUF
} ringbuf_type_t;
# 60 "C:/esp/esp-idf/components/freertos/include/freertos/ringbuf.h"
RingbufHandle_t xRingbufferCreate(size_t buf_length, ringbuf_type_t type);
# 70 "C:/esp/esp-idf/components/freertos/include/freertos/ringbuf.h"
void vRingbufferDelete(RingbufHandle_t ringbuf);
# 80 "C:/esp/esp-idf/components/freertos/include/freertos/ringbuf.h"
size_t xRingbufferGetMaxItemSize(RingbufHandle_t ringbuf);
# 94 "C:/esp/esp-idf/components/freertos/include/freertos/ringbuf.h"
BaseType_t xRingbufferSend(RingbufHandle_t ringbuf, void *data, size_t data_size, TickType_t ticks_to_wait);
# 108 "C:/esp/esp-idf/components/freertos/include/freertos/ringbuf.h"
BaseType_t xRingbufferSendFromISR(RingbufHandle_t ringbuf, void *data, size_t data_size, BaseType_t *higher_prio_task_awoken);
# 120 "C:/esp/esp-idf/components/freertos/include/freertos/ringbuf.h"
void *xRingbufferReceive(RingbufHandle_t ringbuf, size_t *item_size, TickType_t ticks_to_wait);
# 132 "C:/esp/esp-idf/components/freertos/include/freertos/ringbuf.h"
void *xRingbufferReceiveFromISR(RingbufHandle_t ringbuf, size_t *item_size);
# 146 "C:/esp/esp-idf/components/freertos/include/freertos/ringbuf.h"
void *xRingbufferReceiveUpTo(RingbufHandle_t ringbuf, size_t *item_size, TickType_t ticks_to_wait, size_t wanted_size);
# 159 "C:/esp/esp-idf/components/freertos/include/freertos/ringbuf.h"
void *xRingbufferReceiveUpToFromISR(RingbufHandle_t ringbuf, size_t *item_size, size_t wanted_size);
# 171 "C:/esp/esp-idf/components/freertos/include/freertos/ringbuf.h"
void vRingbufferReturnItem(RingbufHandle_t ringbuf, void *item);
# 185 "C:/esp/esp-idf/components/freertos/include/freertos/ringbuf.h"
void vRingbufferReturnItemFromISR(RingbufHandle_t ringbuf, void *item, BaseType_t *higher_prio_task_awoken);
# 197 "C:/esp/esp-idf/components/freertos/include/freertos/ringbuf.h"
BaseType_t xRingbufferAddToQueueSetRead(RingbufHandle_t ringbuf, QueueSetHandle_t xQueueSet);
# 209 "C:/esp/esp-idf/components/freertos/include/freertos/ringbuf.h"
BaseType_t xRingbufferAddToQueueSetWrite(RingbufHandle_t ringbuf, QueueSetHandle_t xQueueSet);
# 221 "C:/esp/esp-idf/components/freertos/include/freertos/ringbuf.h"
BaseType_t xRingbufferRemoveFromQueueSetRead(RingbufHandle_t ringbuf, QueueSetHandle_t xQueueSet);
# 233 "C:/esp/esp-idf/components/freertos/include/freertos/ringbuf.h"
BaseType_t xRingbufferRemoveFromQueueSetWrite(RingbufHandle_t ringbuf, QueueSetHandle_t xQueueSet);
# 243 "C:/esp/esp-idf/components/freertos/include/freertos/ringbuf.h"
void xRingbufferPrintInfo(RingbufHandle_t ringbuf);
# 27 "C:/esp/esp-idf/components/driver/uart.c" 2
# 1 "C:/esp/esp-idf/components/soc/esp32/include/soc/dport_reg.h" 1
# 20 "C:/esp/esp-idf/components/soc/esp32/include/soc/dport_reg.h"
# 1 "C:/esp/esp-idf/components/soc/esp32/include/soc/dport_access.h" 1
# 20 "C:/esp/esp-idf/components/soc/esp32/include/soc/dport_access.h"
# 1 "C:/esp/esp-idf/components/esp32/include/esp_dport_access.h" 1
# 15 "C:/esp/esp-idf/components/esp32/include/esp_dport_access.h"
# 1 "C:/esp/esp32-ArkPOS2/ArkPOS2-esp/build/include/sdkconfig.h" 1
# 16 "C:/esp/esp-idf/components/esp32/include/esp_dport_access.h" 2
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
# 28 "C:/esp/esp-idf/components/driver/uart.c" 2
# 1 "C:/esp/esp-idf/components/soc/esp32/include/soc/uart_struct.h" 1
# 21 "C:/esp/esp-idf/components/soc/esp32/include/soc/uart_struct.h"
typedef volatile struct {
    union {
        struct {
            uint8_t rw_byte;
            uint8_t reserved[3];
        };
        uint32_t val;
    } fifo;
    union {
        struct {
            uint32_t rxfifo_full: 1;
            uint32_t txfifo_empty: 1;
            uint32_t parity_err: 1;
            uint32_t frm_err: 1;
            uint32_t rxfifo_ovf: 1;
            uint32_t dsr_chg: 1;
            uint32_t cts_chg: 1;
            uint32_t brk_det: 1;
            uint32_t rxfifo_tout: 1;
            uint32_t sw_xon: 1;
            uint32_t sw_xoff: 1;
            uint32_t glitch_det: 1;
            uint32_t tx_brk_done: 1;
            uint32_t tx_brk_idle_done: 1;
            uint32_t tx_done: 1;
            uint32_t rs485_parity_err: 1;
            uint32_t rs485_frm_err: 1;
            uint32_t rs485_clash: 1;
            uint32_t at_cmd_char_det: 1;
            uint32_t reserved19: 13;
        };
        uint32_t val;
    } int_raw;
    union {
        struct {
            uint32_t rxfifo_full: 1;
            uint32_t txfifo_empty: 1;
            uint32_t parity_err: 1;
            uint32_t frm_err: 1;
            uint32_t rxfifo_ovf: 1;
            uint32_t dsr_chg: 1;
            uint32_t cts_chg: 1;
            uint32_t brk_det: 1;
            uint32_t rxfifo_tout: 1;
            uint32_t sw_xon: 1;
            uint32_t sw_xoff: 1;
            uint32_t glitch_det: 1;
            uint32_t tx_brk_done: 1;
            uint32_t tx_brk_idle_done: 1;
            uint32_t tx_done: 1;
            uint32_t rs485_parity_err: 1;
            uint32_t rs485_frm_err: 1;
            uint32_t rs485_clash: 1;
            uint32_t at_cmd_char_det: 1;
            uint32_t reserved19: 13;
        };
        uint32_t val;
    } int_st;
    union {
        struct {
            uint32_t rxfifo_full: 1;
            uint32_t txfifo_empty: 1;
            uint32_t parity_err: 1;
            uint32_t frm_err: 1;
            uint32_t rxfifo_ovf: 1;
            uint32_t dsr_chg: 1;
            uint32_t cts_chg: 1;
            uint32_t brk_det: 1;
            uint32_t rxfifo_tout: 1;
            uint32_t sw_xon: 1;
            uint32_t sw_xoff: 1;
            uint32_t glitch_det: 1;
            uint32_t tx_brk_done: 1;
            uint32_t tx_brk_idle_done: 1;
            uint32_t tx_done: 1;
            uint32_t rs485_parity_err: 1;
            uint32_t rs485_frm_err: 1;
            uint32_t rs485_clash: 1;
            uint32_t at_cmd_char_det: 1;
            uint32_t reserved19: 13;
        };
        uint32_t val;
    } int_ena;
    union {
        struct {
            uint32_t rxfifo_full: 1;
            uint32_t txfifo_empty: 1;
            uint32_t parity_err: 1;
            uint32_t frm_err: 1;
            uint32_t rxfifo_ovf: 1;
            uint32_t dsr_chg: 1;
            uint32_t cts_chg: 1;
            uint32_t brk_det: 1;
            uint32_t rxfifo_tout: 1;
            uint32_t sw_xon: 1;
            uint32_t sw_xoff: 1;
            uint32_t glitch_det: 1;
            uint32_t tx_brk_done: 1;
            uint32_t tx_brk_idle_done: 1;
            uint32_t tx_done: 1;
            uint32_t rs485_parity_err: 1;
            uint32_t rs485_frm_err: 1;
            uint32_t rs485_clash: 1;
            uint32_t at_cmd_char_det: 1;
            uint32_t reserved19: 13;
        };
        uint32_t val;
    } int_clr;
    union {
        struct {
            uint32_t div_int: 20;
            uint32_t div_frag: 4;
            uint32_t reserved24: 8;
        };
        uint32_t val;
    } clk_div;
    union {
        struct {
            uint32_t en: 1;
            uint32_t reserved1: 7;
            uint32_t glitch_filt: 8;
            uint32_t reserved16: 16;
        };
        uint32_t val;
    } auto_baud;
    union {
        struct {
            uint32_t rxfifo_cnt: 8;
            uint32_t st_urx_out: 4;
            uint32_t reserved12: 1;
            uint32_t dsrn: 1;
            uint32_t ctsn: 1;
            uint32_t rxd: 1;
            uint32_t txfifo_cnt: 8;
            uint32_t st_utx_out: 4;
            uint32_t reserved28: 1;
            uint32_t dtrn: 1;
            uint32_t rtsn: 1;
            uint32_t txd: 1;
        };
        uint32_t val;
    } status;
    union {
        struct {
            uint32_t parity: 1;
            uint32_t parity_en: 1;
            uint32_t bit_num: 2;
            uint32_t stop_bit_num: 2;
            uint32_t sw_rts: 1;
            uint32_t sw_dtr: 1;
            uint32_t txd_brk: 1;
            uint32_t irda_dplx: 1;
            uint32_t irda_tx_en: 1;
            uint32_t irda_wctl: 1;
            uint32_t irda_tx_inv: 1;
            uint32_t irda_rx_inv: 1;
            uint32_t loopback: 1;
            uint32_t tx_flow_en: 1;
            uint32_t irda_en: 1;
            uint32_t rxfifo_rst: 1;
            uint32_t txfifo_rst: 1;
            uint32_t rxd_inv: 1;
            uint32_t cts_inv: 1;
            uint32_t dsr_inv: 1;
            uint32_t txd_inv: 1;
            uint32_t rts_inv: 1;
            uint32_t dtr_inv: 1;
            uint32_t clk_en: 1;
            uint32_t err_wr_mask: 1;
            uint32_t tick_ref_always_on: 1;
            uint32_t reserved28: 4;
        };
        uint32_t val;
    } conf0;
    union {
        struct {
            uint32_t rxfifo_full_thrhd: 7;
            uint32_t reserved7: 1;
            uint32_t txfifo_empty_thrhd: 7;
            uint32_t reserved15: 1;
            uint32_t rx_flow_thrhd: 7;
            uint32_t rx_flow_en: 1;
            uint32_t rx_tout_thrhd: 7;
            uint32_t rx_tout_en: 1;
        };
        uint32_t val;
    } conf1;
    union {
        struct {
            uint32_t min_cnt: 20;
            uint32_t reserved20: 12;
        };
        uint32_t val;
    } lowpulse;
    union {
        struct {
            uint32_t min_cnt: 20;
            uint32_t reserved20: 12;
        };
        uint32_t val;
    } highpulse;
    union {
        struct {
            uint32_t edge_cnt: 10;
            uint32_t reserved10: 22;
        };
        uint32_t val;
    } rxd_cnt;
    union {
        struct {
            uint32_t sw_flow_con_en: 1;
            uint32_t xonoff_del: 1;
            uint32_t force_xon: 1;
            uint32_t force_xoff: 1;
            uint32_t send_xon: 1;
            uint32_t send_xoff: 1;
            uint32_t reserved6: 26;
        };
        uint32_t val;
    } flow_conf;
    union {
        struct {
            uint32_t active_threshold:10;
            uint32_t reserved10: 22;
        };
        uint32_t val;
    } sleep_conf;
    union {
        struct {
            uint32_t xon_threshold: 8;
            uint32_t xoff_threshold: 8;
            uint32_t xon_char: 8;
            uint32_t xoff_char: 8;
        };
        uint32_t val;
    } swfc_conf;
    union {
        struct {
            uint32_t rx_idle_thrhd:10;
            uint32_t tx_idle_num: 10;
            uint32_t tx_brk_num: 8;
            uint32_t reserved28: 4;
        };
        uint32_t val;
    } idle_conf;
    union {
        struct {
            uint32_t en: 1;
            uint32_t dl0_en: 1;
            uint32_t dl1_en: 1;
            uint32_t tx_rx_en: 1;
            uint32_t rx_busy_tx_en: 1;
            uint32_t rx_dly_num: 1;
            uint32_t tx_dly_num: 4;
            uint32_t reserved10: 22;
        };
        uint32_t val;
    } rs485_conf;
    union {
        struct {
            uint32_t pre_idle_num:24;
            uint32_t reserved24: 8;
        };
        uint32_t val;
    } at_cmd_precnt;
    union {
        struct {
            uint32_t post_idle_num:24;
            uint32_t reserved24: 8;
        };
        uint32_t val;
    } at_cmd_postcnt;
    union {
        struct {
            uint32_t rx_gap_tout:24;
            uint32_t reserved24: 8;
        };
        uint32_t val;
    } at_cmd_gaptout;
    union {
        struct {
            uint32_t data: 8;
            uint32_t char_num: 8;
            uint32_t reserved16: 16;
        };
        uint32_t val;
    } at_cmd_char;
    union {
        struct {
            uint32_t mem_pd: 1;
            uint32_t reserved1: 1;
            uint32_t reserved2: 1;
            uint32_t rx_size: 4;
            uint32_t tx_size: 4;
            uint32_t reserved11: 4;
            uint32_t rx_flow_thrhd_h3: 3;
            uint32_t rx_tout_thrhd_h3: 3;
            uint32_t xon_threshold_h2: 2;
            uint32_t xoff_threshold_h2: 2;
            uint32_t rx_mem_full_thrhd: 3;
            uint32_t tx_mem_empty_thrhd: 3;
            uint32_t reserved31: 1;
        };
        uint32_t val;
    } mem_conf;
    union {
        struct {
            uint32_t status:24;
            uint32_t reserved24: 8;
        };
        uint32_t val;
    } mem_tx_status;
    union {
        struct {
            uint32_t status:24;
            uint32_t reserved24: 8;
        };
        uint32_t val;
    } mem_rx_status;
    union {
        struct {
            uint32_t rx_cnt: 3;
            uint32_t tx_cnt: 3;
            uint32_t reserved6: 26;
        };
        uint32_t val;
    } mem_cnt_status;
    union {
        struct {
            uint32_t min_cnt: 20;
            uint32_t reserved20: 12;
        };
        uint32_t val;
    } pospulse;
    union {
        struct {
            uint32_t min_cnt: 20;
            uint32_t reserved20: 12;
        };
        uint32_t val;
    } negpulse;
    uint32_t reserved_70;
    uint32_t reserved_74;
    uint32_t date;
    uint32_t id;
} uart_dev_t;
extern uart_dev_t UART0;
extern uart_dev_t UART1;
extern uart_dev_t UART2;
# 29 "C:/esp/esp-idf/components/driver/uart.c" 2
# 1 "C:/esp/esp-idf/components/driver/include/driver/uart.h" 1
# 23 "C:/esp/esp-idf/components/driver/include/driver/uart.h"
# 1 "C:/esp/esp-idf/components/soc/esp32/include/soc/uart_reg.h" 1
# 24 "C:/esp/esp-idf/components/driver/include/driver/uart.h" 2



# 1 "C:/esp/esp-idf/components/driver/include/driver/periph_ctrl.h" 1
# 25 "C:/esp/esp-idf/components/driver/include/driver/periph_ctrl.h"
typedef enum {
    PERIPH_LEDC_MODULE = 0,
    PERIPH_UART0_MODULE,
    PERIPH_UART1_MODULE,
    PERIPH_UART2_MODULE,
    PERIPH_I2C0_MODULE,
    PERIPH_I2C1_MODULE,
    PERIPH_I2S0_MODULE,
    PERIPH_I2S1_MODULE,
    PERIPH_TIMG0_MODULE,
    PERIPH_TIMG1_MODULE,
    PERIPH_PWM0_MODULE,
    PERIPH_PWM1_MODULE,
    PERIPH_PWM2_MODULE,
    PERIPH_PWM3_MODULE,
    PERIPH_UHCI0_MODULE,
    PERIPH_UHCI1_MODULE,
    PERIPH_RMT_MODULE,
    PERIPH_PCNT_MODULE,
    PERIPH_SPI_MODULE,
    PERIPH_HSPI_MODULE,
    PERIPH_VSPI_MODULE,
    PERIPH_SPI_DMA_MODULE,
    PERIPH_SDMMC_MODULE,
    PERIPH_SDIO_SLAVE_MODULE,
    PERIPH_CAN_MODULE,
    PERIPH_EMAC_MODULE,
} periph_module_t;
# 63 "C:/esp/esp-idf/components/driver/include/driver/periph_ctrl.h"
void periph_module_enable(periph_module_t periph);
# 74 "C:/esp/esp-idf/components/driver/include/driver/periph_ctrl.h"
void periph_module_disable(periph_module_t periph);
# 28 "C:/esp/esp-idf/components/driver/include/driver/uart.h" 2




# 1 "C:/esp/esp-idf/components/freertos/include/freertos/queue.h" 1
# 33 "C:/esp/esp-idf/components/driver/include/driver/uart.h" 2


# 1 "C:/esp/esp-idf/components/soc/esp32/include/soc/uart_channel.h" 1
# 36 "C:/esp/esp-idf/components/driver/include/driver/uart.h" 2
# 52 "C:/esp/esp-idf/components/driver/include/driver/uart.h"
typedef enum {
    UART_DATA_5_BITS = 0x0,
    UART_DATA_6_BITS = 0x1,
    UART_DATA_7_BITS = 0x2,
    UART_DATA_8_BITS = 0x3,
    UART_DATA_BITS_MAX = 0X4,
} uart_word_length_t;




typedef enum {
    UART_STOP_BITS_1 = 0x1,
    UART_STOP_BITS_1_5 = 0x2,
    UART_STOP_BITS_2 = 0x3,
    UART_STOP_BITS_MAX = 0x4,
} uart_stop_bits_t;




typedef enum {
    UART_NUM_0 = 0x0,
    UART_NUM_1 = 0x1,
    UART_NUM_2 = 0x2,
    UART_NUM_MAX,
} uart_port_t;




typedef enum {
    UART_PARITY_DISABLE = 0x0,
    UART_PARITY_EVEN = 0x2,
    UART_PARITY_ODD = 0x3
} uart_parity_t;




typedef enum {
    UART_HW_FLOWCTRL_DISABLE = 0x0,
    UART_HW_FLOWCTRL_RTS = 0x1,
    UART_HW_FLOWCTRL_CTS = 0x2,
    UART_HW_FLOWCTRL_CTS_RTS = 0x3,
    UART_HW_FLOWCTRL_MAX = 0x4,
} uart_hw_flowcontrol_t;




typedef struct {
    int baud_rate;
    uart_word_length_t data_bits;
    uart_parity_t parity;
    uart_stop_bits_t stop_bits;
    uart_hw_flowcontrol_t flow_ctrl;
    uint8_t rx_flow_ctrl_thresh ;
} uart_config_t;




typedef struct {
    uint32_t intr_enable_mask;
    uint8_t rx_timeout_thresh;
    uint8_t txfifo_empty_intr_thresh;
    uint8_t rxfifo_full_thresh;
} uart_intr_config_t;




typedef enum {
    UART_DATA,
    UART_BREAK,
    UART_BUFFER_FULL,
    UART_FIFO_OVF,
    UART_FRAME_ERR,
    UART_PARITY_ERR,
    UART_DATA_BREAK,
    UART_PATTERN_DET,
    UART_EVENT_MAX,
} uart_event_type_t;




typedef struct {
    uart_event_type_t type;
    size_t size;
} uart_event_t;

typedef intr_handle_t uart_isr_handle_t;
# 157 "C:/esp/esp-idf/components/driver/include/driver/uart.h"
esp_err_t uart_set_word_length(uart_port_t uart_num, uart_word_length_t data_bit);
# 169 "C:/esp/esp-idf/components/driver/include/driver/uart.h"
esp_err_t uart_get_word_length(uart_port_t uart_num, uart_word_length_t* data_bit);
# 181 "C:/esp/esp-idf/components/driver/include/driver/uart.h"
esp_err_t uart_set_stop_bits(uart_port_t uart_num, uart_stop_bits_t stop_bits);
# 193 "C:/esp/esp-idf/components/driver/include/driver/uart.h"
esp_err_t uart_get_stop_bits(uart_port_t uart_num, uart_stop_bits_t* stop_bits);
# 205 "C:/esp/esp-idf/components/driver/include/driver/uart.h"
esp_err_t uart_set_parity(uart_port_t uart_num, uart_parity_t parity_mode);
# 218 "C:/esp/esp-idf/components/driver/include/driver/uart.h"
esp_err_t uart_get_parity(uart_port_t uart_num, uart_parity_t* parity_mode);
# 230 "C:/esp/esp-idf/components/driver/include/driver/uart.h"
esp_err_t uart_set_baudrate(uart_port_t uart_num, uint32_t baudrate);
# 243 "C:/esp/esp-idf/components/driver/include/driver/uart.h"
esp_err_t uart_get_baudrate(uart_port_t uart_num, uint32_t* baudrate);
# 256 "C:/esp/esp-idf/components/driver/include/driver/uart.h"
esp_err_t uart_set_line_inverse(uart_port_t uart_num, uint32_t inverse_mask);
# 270 "C:/esp/esp-idf/components/driver/include/driver/uart.h"
esp_err_t uart_set_hw_flow_ctrl(uart_port_t uart_num, uart_hw_flowcontrol_t flow_ctrl, uint8_t rx_thresh);
# 284 "C:/esp/esp-idf/components/driver/include/driver/uart.h"
 esp_err_t uart_set_sw_flow_ctrl(uart_port_t uart_num, 
# 284 "C:/esp/esp-idf/components/driver/include/driver/uart.h" 3 4
                                                      _Bool 
# 284 "C:/esp/esp-idf/components/driver/include/driver/uart.h"
                                                           enable, uint8_t rx_thresh_xon, uint8_t rx_thresh_xoff);
# 296 "C:/esp/esp-idf/components/driver/include/driver/uart.h"
esp_err_t uart_get_hw_flow_ctrl(uart_port_t uart_num, uart_hw_flowcontrol_t* flow_ctrl);
# 309 "C:/esp/esp-idf/components/driver/include/driver/uart.h"
esp_err_t uart_clear_intr_status(uart_port_t uart_num, uint32_t clr_mask);
# 322 "C:/esp/esp-idf/components/driver/include/driver/uart.h"
esp_err_t uart_enable_intr_mask(uart_port_t uart_num, uint32_t enable_mask);
# 335 "C:/esp/esp-idf/components/driver/include/driver/uart.h"
esp_err_t uart_disable_intr_mask(uart_port_t uart_num, uint32_t disable_mask);
# 347 "C:/esp/esp-idf/components/driver/include/driver/uart.h"
esp_err_t uart_enable_rx_intr(uart_port_t uart_num);
# 358 "C:/esp/esp-idf/components/driver/include/driver/uart.h"
esp_err_t uart_disable_rx_intr(uart_port_t uart_num);
# 369 "C:/esp/esp-idf/components/driver/include/driver/uart.h"
esp_err_t uart_disable_tx_intr(uart_port_t uart_num);
# 382 "C:/esp/esp-idf/components/driver/include/driver/uart.h"
esp_err_t uart_enable_tx_intr(uart_port_t uart_num, int enable, int thresh);
# 401 "C:/esp/esp-idf/components/driver/include/driver/uart.h"
esp_err_t uart_isr_register(uart_port_t uart_num, void (*fn)(void*), void * arg, int intr_alloc_flags, uart_isr_handle_t *handle);
# 414 "C:/esp/esp-idf/components/driver/include/driver/uart.h"
esp_err_t uart_isr_free(uart_port_t uart_num);
# 432 "C:/esp/esp-idf/components/driver/include/driver/uart.h"
esp_err_t uart_set_pin(uart_port_t uart_num, int tx_io_num, int rx_io_num, int rts_io_num, int cts_io_num);
# 445 "C:/esp/esp-idf/components/driver/include/driver/uart.h"
esp_err_t uart_set_rts(uart_port_t uart_num, int level);
# 457 "C:/esp/esp-idf/components/driver/include/driver/uart.h"
esp_err_t uart_set_dtr(uart_port_t uart_num, int level);
# 469 "C:/esp/esp-idf/components/driver/include/driver/uart.h"
esp_err_t uart_param_config(uart_port_t uart_num, const uart_config_t *uart_config);
# 481 "C:/esp/esp-idf/components/driver/include/driver/uart.h"
esp_err_t uart_intr_config(uart_port_t uart_num, const uart_intr_config_t *intr_conf);
# 505 "C:/esp/esp-idf/components/driver/include/driver/uart.h"
esp_err_t uart_driver_install(uart_port_t uart_num, int rx_buffer_size, int tx_buffer_size, int queue_size, QueueHandle_t* uart_queue, int intr_alloc_flags);
# 516 "C:/esp/esp-idf/components/driver/include/driver/uart.h"
esp_err_t uart_driver_delete(uart_port_t uart_num);
# 529 "C:/esp/esp-idf/components/driver/include/driver/uart.h"
esp_err_t uart_wait_tx_done(uart_port_t uart_num, TickType_t ticks_to_wait);
# 545 "C:/esp/esp-idf/components/driver/include/driver/uart.h"
int uart_tx_chars(uart_port_t uart_num, const char* buffer, uint32_t len);
# 564 "C:/esp/esp-idf/components/driver/include/driver/uart.h"
int uart_write_bytes(uart_port_t uart_num, const char* src, size_t size);
# 587 "C:/esp/esp-idf/components/driver/include/driver/uart.h"
int uart_write_bytes_with_break(uart_port_t uart_num, const char* src, size_t size, int brk_len);
# 601 "C:/esp/esp-idf/components/driver/include/driver/uart.h"
int uart_read_bytes(uart_port_t uart_num, uint8_t* buf, uint32_t length, TickType_t ticks_to_wait);
# 612 "C:/esp/esp-idf/components/driver/include/driver/uart.h"
esp_err_t uart_flush(uart_port_t uart_num);
# 624 "C:/esp/esp-idf/components/driver/include/driver/uart.h"
esp_err_t uart_get_buffered_data_len(uart_port_t uart_num, size_t* size);
# 637 "C:/esp/esp-idf/components/driver/include/driver/uart.h"
esp_err_t uart_disable_pattern_det_intr(uart_port_t uart_num);
# 655 "C:/esp/esp-idf/components/driver/include/driver/uart.h"
esp_err_t uart_enable_pattern_det_intr(uart_port_t uart_num, char pattern_chr, uint8_t chr_num, int chr_tout, int post_idle, int pre_idle);
# 30 "C:/esp/esp-idf/components/driver/uart.c" 2





static const char* UART_TAG = "uart";
# 50 "C:/esp/esp-idf/components/driver/uart.c"
typedef struct {
    uart_event_type_t type;
    struct {
        int brk_len;
        size_t size;
        uint8_t data[0];
    } tx_data;
} uart_tx_data_t;

typedef struct {
    uart_port_t uart_num;
    int queue_size;
    QueueHandle_t xQueueUart;
    intr_handle_t intr_handle;

    int rx_buffered_len;
    SemaphoreHandle_t rx_mux;
    int rx_buf_size;
    RingbufHandle_t rx_ring_buf;
    
# 69 "C:/esp/esp-idf/components/driver/uart.c" 3 4
   _Bool 
# 69 "C:/esp/esp-idf/components/driver/uart.c"
        rx_buffer_full_flg;
    int rx_cur_remain;
    uint8_t* rx_ptr;
    uint8_t* rx_head_ptr;
    uint8_t rx_data_buf[(128)];
    uint8_t rx_stash_len;

    SemaphoreHandle_t tx_fifo_sem;
    SemaphoreHandle_t tx_mux;
    SemaphoreHandle_t tx_done_sem;
    SemaphoreHandle_t tx_brk_sem;
    int tx_buf_size;
    RingbufHandle_t tx_ring_buf;
    
# 82 "C:/esp/esp-idf/components/driver/uart.c" 3 4
   _Bool 
# 82 "C:/esp/esp-idf/components/driver/uart.c"
        tx_waiting_fifo;
    uint8_t* tx_ptr;
    uart_tx_data_t* tx_head;
    uint32_t tx_len_tot;
    uint32_t tx_len_cur;
    uint8_t tx_brk_flg;
    uint8_t tx_brk_len;
    uint8_t tx_waiting_brk;
} uart_obj_t;



static uart_obj_t *p_uart_obj[UART_NUM_MAX] = {0};

static __attribute__((section(".dram1"))) uart_dev_t* const UART[UART_NUM_MAX] = {&UART0, &UART1, &UART2};
static portMUX_TYPE uart_spinlock[UART_NUM_MAX] = {{ .owner = 0xB33FFFFF, .count = 0, }, { .owner = 0xB33FFFFF, .count = 0, }, { .owner = 0xB33FFFFF, .count = 0, }};

esp_err_t uart_set_word_length(uart_port_t uart_num, uart_word_length_t data_bit)
{
    if (!((uart_num < UART_NUM_MAX))) { if (((esp_log_level_t) 3) >= ESP_LOG_ERROR) { esp_log_write(ESP_LOG_ERROR, UART_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), UART_TAG, __FUNCTION__, 101, "uart_num error"); }; return (-1); };
    if (!((data_bit < UART_DATA_BITS_MAX))) { if (((esp_log_level_t) 3) >= ESP_LOG_ERROR) { esp_log_write(ESP_LOG_ERROR, UART_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), UART_TAG, __FUNCTION__, 102, "data bit error"); }; return (-1); };
    vTaskEnterCritical(&uart_spinlock[uart_num]);
    UART[uart_num]->conf0.bit_num = data_bit;
    vTaskExitCritical(&uart_spinlock[uart_num]);
    return 0;
}

esp_err_t uart_get_word_length(uart_port_t uart_num, uart_word_length_t* data_bit)
{
    if (!((uart_num < UART_NUM_MAX))) { if (((esp_log_level_t) 3) >= ESP_LOG_ERROR) { esp_log_write(ESP_LOG_ERROR, UART_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), UART_TAG, __FUNCTION__, 111, "uart_num error"); }; return (-1); };
    *(data_bit) = UART[uart_num]->conf0.bit_num;
    return 0;
}

esp_err_t uart_set_stop_bits(uart_port_t uart_num, uart_stop_bits_t stop_bit)
{
    if (!((uart_num < UART_NUM_MAX))) { if (((esp_log_level_t) 3) >= ESP_LOG_ERROR) { esp_log_write(ESP_LOG_ERROR, UART_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), UART_TAG, __FUNCTION__, 118, "uart_num error"); }; return (-1); };
    if (!((stop_bit < UART_STOP_BITS_MAX))) { if (((esp_log_level_t) 3) >= ESP_LOG_ERROR) { esp_log_write(ESP_LOG_ERROR, UART_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), UART_TAG, __FUNCTION__, 119, "stop bit error"); }; return (-1); };

    vTaskEnterCritical(&uart_spinlock[uart_num]);

    if (stop_bit == UART_STOP_BITS_2) {
        stop_bit = UART_STOP_BITS_1;
        UART[uart_num]->rs485_conf.dl1_en = 1;
    } else {
        UART[uart_num]->rs485_conf.dl1_en = 0;
    }
    UART[uart_num]->conf0.stop_bit_num = stop_bit;
    vTaskExitCritical(&uart_spinlock[uart_num]);
    return 0;
}

esp_err_t uart_get_stop_bits(uart_port_t uart_num, uart_stop_bits_t* stop_bit)
{
    if (!((uart_num < UART_NUM_MAX))) { if (((esp_log_level_t) 3) >= ESP_LOG_ERROR) { esp_log_write(ESP_LOG_ERROR, UART_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), UART_TAG, __FUNCTION__, 136, "uart_num error"); }; return (-1); };

    if (UART[uart_num]->rs485_conf.dl1_en == 1 && UART[uart_num]->conf0.stop_bit_num == UART_STOP_BITS_1) {
        (*stop_bit) = UART_STOP_BITS_2;
    } else {
        (*stop_bit) = UART[uart_num]->conf0.stop_bit_num;
    }
    return 0;
}

esp_err_t uart_set_parity(uart_port_t uart_num, uart_parity_t parity_mode)
{
    if (!((uart_num < UART_NUM_MAX))) { if (((esp_log_level_t) 3) >= ESP_LOG_ERROR) { esp_log_write(ESP_LOG_ERROR, UART_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), UART_TAG, __FUNCTION__, 148, "uart_num error"); }; return (-1); };
    vTaskEnterCritical(&uart_spinlock[uart_num]);
    UART[uart_num]->conf0.parity = parity_mode & 0x1;
    UART[uart_num]->conf0.parity_en = (parity_mode >> 1) & 0x1;
    vTaskExitCritical(&uart_spinlock[uart_num]);
    return 0;
}

esp_err_t uart_get_parity(uart_port_t uart_num, uart_parity_t* parity_mode)
{
    if (!((uart_num < UART_NUM_MAX))) { if (((esp_log_level_t) 3) >= ESP_LOG_ERROR) { esp_log_write(ESP_LOG_ERROR, UART_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), UART_TAG, __FUNCTION__, 158, "uart_num error"); }; return (-1); };
    int val = UART[uart_num]->conf0.val;
    if(val & ((1UL << (1)))) {
        if(val & ((1UL << (0)))) {
            (*parity_mode) = UART_PARITY_ODD;
        } else {
            (*parity_mode) = UART_PARITY_EVEN;
        }
    } else {
        (*parity_mode) = UART_PARITY_DISABLE;
    }
    return 0;
}

esp_err_t uart_set_baudrate(uart_port_t uart_num, uint32_t baud_rate)
{
    if (!((uart_num < UART_NUM_MAX))) { if (((esp_log_level_t) 3) >= ESP_LOG_ERROR) { esp_log_write(ESP_LOG_ERROR, UART_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), UART_TAG, __FUNCTION__, 174, "uart_num error"); }; return (-1); };
    if (!((baud_rate <= 5000000))) { if (((esp_log_level_t) 3) >= ESP_LOG_ERROR) { esp_log_write(ESP_LOG_ERROR, UART_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), UART_TAG, __FUNCTION__, 175, "baud_rate error"); }; return (-1); };
    uint32_t clk_div = (((( 80*1000000 )) << 4) / baud_rate);
    vTaskEnterCritical(&uart_spinlock[uart_num]);
    UART[uart_num]->clk_div.div_int = clk_div >> 4;
    UART[uart_num]->clk_div.div_frag = clk_div & 0xf;
    vTaskExitCritical(&uart_spinlock[uart_num]);
    return 0;
}

esp_err_t uart_get_baudrate(uart_port_t uart_num, uint32_t* baudrate)
{
    if (!((uart_num < UART_NUM_MAX))) { if (((esp_log_level_t) 3) >= ESP_LOG_ERROR) { esp_log_write(ESP_LOG_ERROR, UART_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), UART_TAG, __FUNCTION__, 186, "uart_num error"); }; return (-1); };
    vTaskEnterCritical(&uart_spinlock[uart_num]);
    uint32_t clk_div = (UART[uart_num]->clk_div.div_int << 4) | UART[uart_num]->clk_div.div_frag;
    vTaskExitCritical(&uart_spinlock[uart_num]);
    (*baudrate) = ((( 80*1000000 )) << 4) / clk_div;
    return 0;
}

esp_err_t uart_set_line_inverse(uart_port_t uart_num, uint32_t inverse_mask)
{
    if (!((uart_num < UART_NUM_MAX))) { if (((esp_log_level_t) 3) >= ESP_LOG_ERROR) { esp_log_write(ESP_LOG_ERROR, UART_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), UART_TAG, __FUNCTION__, 196, "uart_num error"); }; return (-1); };
    if (!((((inverse_mask & ~(0x3f << 19)) == 0) || (inverse_mask == 0)))) { if (((esp_log_level_t) 3) >= ESP_LOG_ERROR) { esp_log_write(ESP_LOG_ERROR, UART_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), UART_TAG, __FUNCTION__, 197, "inverse_mask error"); }; return (-1); };
    vTaskEnterCritical(&uart_spinlock[uart_num]);
    ({ ; ({ ; (*((volatile uint32_t *)((((0x3ff40000 + (uart_num) * 0x10000 + ( (uart_num) > 1 ? 0xe000 : 0 ) ) + 0x20))))) = (uint32_t)((({ ; (*((volatile uint32_t *)(((0x3ff40000 + (uart_num) * 0x10000 + ( (uart_num) > 1 ? 0xe000 : 0 ) ) + 0x20)))); })&(~((0x3f << 19))))); }); });
    ({ ; ({ ; (*((volatile uint32_t *)((((0x3ff40000 + (uart_num) * 0x10000 + ( (uart_num) > 1 ? 0xe000 : 0 ) ) + 0x20))))) = (uint32_t)((({ ; (*((volatile uint32_t *)(((0x3ff40000 + (uart_num) * 0x10000 + ( (uart_num) > 1 ? 0xe000 : 0 ) ) + 0x20)))); })|(inverse_mask))); }); });
    vTaskExitCritical(&uart_spinlock[uart_num]);
    return 0;
}

esp_err_t uart_set_sw_flow_ctrl(uart_port_t uart_num, 
# 205 "C:/esp/esp-idf/components/driver/uart.c" 3 4
                                                     _Bool 
# 205 "C:/esp/esp-idf/components/driver/uart.c"
                                                          enable, uint8_t rx_thresh_xon, uint8_t rx_thresh_xoff)
{
    if (!((uart_num < UART_NUM_MAX))) { if (((esp_log_level_t) 3) >= ESP_LOG_ERROR) { esp_log_write(ESP_LOG_ERROR, UART_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), UART_TAG, __FUNCTION__, 207, "uart_num error"); }; return (-1); };
    if (!((rx_thresh_xon < (128)))) { if (((esp_log_level_t) 3) >= ESP_LOG_ERROR) { esp_log_write(ESP_LOG_ERROR, UART_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), UART_TAG, __FUNCTION__, 208, "rx flow xon thresh error"); }; return (-1); };
    if (!((rx_thresh_xoff < (128)))) { if (((esp_log_level_t) 3) >= ESP_LOG_ERROR) { esp_log_write(ESP_LOG_ERROR, UART_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), UART_TAG, __FUNCTION__, 209, "rx flow xon thresh error"); }; return (-1); };
    vTaskEnterCritical(&uart_spinlock[uart_num]);
    UART[uart_num]->flow_conf.sw_flow_con_en = enable? 1:0;
    UART[uart_num]->flow_conf.xonoff_del = enable?1:0;
    UART[uart_num]->swfc_conf.xon_threshold = rx_thresh_xon;
    UART[uart_num]->swfc_conf.xoff_threshold = rx_thresh_xoff;
    UART[uart_num]->swfc_conf.xon_char = (char)0x11;
    UART[uart_num]->swfc_conf.xoff_char = (char)0x13;
    vTaskExitCritical(&uart_spinlock[uart_num]);
    return 0;
}


esp_err_t uart_set_hw_flow_ctrl(uart_port_t uart_num, uart_hw_flowcontrol_t flow_ctrl, uint8_t rx_thresh)
{
    if (!((uart_num < UART_NUM_MAX))) { if (((esp_log_level_t) 3) >= ESP_LOG_ERROR) { esp_log_write(ESP_LOG_ERROR, UART_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), UART_TAG, __FUNCTION__, 224, "uart_num error"); }; return (-1); };
    if (!((rx_thresh < (128)))) { if (((esp_log_level_t) 3) >= ESP_LOG_ERROR) { esp_log_write(ESP_LOG_ERROR, UART_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), UART_TAG, __FUNCTION__, 225, "rx flow thresh error"); }; return (-1); };
    if (!((flow_ctrl < UART_HW_FLOWCTRL_MAX))) { if (((esp_log_level_t) 3) >= ESP_LOG_ERROR) { esp_log_write(ESP_LOG_ERROR, UART_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), UART_TAG, __FUNCTION__, 226, "hw_flowctrl mode error"); }; return (-1); };
    vTaskEnterCritical(&uart_spinlock[uart_num]);
    if(flow_ctrl & UART_HW_FLOWCTRL_RTS) {
        UART[uart_num]->conf1.rx_flow_thrhd = rx_thresh;
        UART[uart_num]->conf1.rx_flow_en = 1;
    } else {
        UART[uart_num]->conf1.rx_flow_en = 0;
    }
    if(flow_ctrl & UART_HW_FLOWCTRL_CTS) {
        UART[uart_num]->conf0.tx_flow_en = 1;
    } else {
        UART[uart_num]->conf0.tx_flow_en = 0;
    }
    vTaskExitCritical(&uart_spinlock[uart_num]);
    return 0;
}

esp_err_t uart_get_hw_flow_ctrl(uart_port_t uart_num, uart_hw_flowcontrol_t* flow_ctrl)
{
    if (!((uart_num < UART_NUM_MAX))) { if (((esp_log_level_t) 3) >= ESP_LOG_ERROR) { esp_log_write(ESP_LOG_ERROR, UART_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), UART_TAG, __FUNCTION__, 245, "uart_num error"); }; return (-1); };
    uart_hw_flowcontrol_t val = UART_HW_FLOWCTRL_DISABLE;
    if(UART[uart_num]->conf1.rx_flow_en) {
        val |= UART_HW_FLOWCTRL_RTS;
    }
    if(UART[uart_num]->conf0.tx_flow_en) {
        val |= UART_HW_FLOWCTRL_CTS;
    }
    (*flow_ctrl) = val;
    return 0;
}

static esp_err_t uart_reset_fifo(uart_port_t uart_num)
{
    if (!((uart_num < UART_NUM_MAX))) { if (((esp_log_level_t) 3) >= ESP_LOG_ERROR) { esp_log_write(ESP_LOG_ERROR, UART_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), UART_TAG, __FUNCTION__, 259, "uart_num error"); }; return (-1); };
    vTaskEnterCritical(&uart_spinlock[uart_num]);
    UART[uart_num]->conf0.rxfifo_rst = 1;
    UART[uart_num]->conf0.rxfifo_rst = 0;
    UART[uart_num]->conf0.txfifo_rst = 1;
    UART[uart_num]->conf0.txfifo_rst = 0;
    vTaskExitCritical(&uart_spinlock[uart_num]);
    return 0;
}

esp_err_t uart_clear_intr_status(uart_port_t uart_num, uint32_t clr_mask)
{
    if (!((uart_num < UART_NUM_MAX))) { if (((esp_log_level_t) 3) >= ESP_LOG_ERROR) { esp_log_write(ESP_LOG_ERROR, UART_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), UART_TAG, __FUNCTION__, 271, "uart_num error"); }; return (-1); };

    UART[uart_num]->int_clr.val = clr_mask;
    return 0;
}

esp_err_t uart_enable_intr_mask(uart_port_t uart_num, uint32_t enable_mask)
{
    if (!((uart_num < UART_NUM_MAX))) { if (((esp_log_level_t) 3) >= ESP_LOG_ERROR) { esp_log_write(ESP_LOG_ERROR, UART_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), UART_TAG, __FUNCTION__, 279, "uart_num error"); }; return (-1); };
    vTaskEnterCritical(&uart_spinlock[uart_num]);
    ({ ; ({ ; (*((volatile uint32_t *)((((0x3ff40000 + (uart_num) * 0x10000 + ( (uart_num) > 1 ? 0xe000 : 0 ) ) + 0x10))))) = (uint32_t)((({ ; (*((volatile uint32_t *)(((0x3ff40000 + (uart_num) * 0x10000 + ( (uart_num) > 1 ? 0xe000 : 0 ) ) + 0x10)))); })|(enable_mask))); }); });
    ({ ; ({ ; (*((volatile uint32_t *)((((0x3ff40000 + (uart_num) * 0x10000 + ( (uart_num) > 1 ? 0xe000 : 0 ) ) + 0xC))))) = (uint32_t)((({ ; (*((volatile uint32_t *)(((0x3ff40000 + (uart_num) * 0x10000 + ( (uart_num) > 1 ? 0xe000 : 0 ) ) + 0xC)))); })|(enable_mask))); }); });
    vTaskExitCritical(&uart_spinlock[uart_num]);
    return 0;
}

esp_err_t uart_disable_intr_mask(uart_port_t uart_num, uint32_t disable_mask)
{
    if (!((uart_num < UART_NUM_MAX))) { if (((esp_log_level_t) 3) >= ESP_LOG_ERROR) { esp_log_write(ESP_LOG_ERROR, UART_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), UART_TAG, __FUNCTION__, 289, "uart_num error"); }; return (-1); };
    vTaskEnterCritical(&uart_spinlock[uart_num]);
    ({ ; ({ ; (*((volatile uint32_t *)((((0x3ff40000 + (uart_num) * 0x10000 + ( (uart_num) > 1 ? 0xe000 : 0 ) ) + 0xC))))) = (uint32_t)((({ ; (*((volatile uint32_t *)(((0x3ff40000 + (uart_num) * 0x10000 + ( (uart_num) > 1 ? 0xe000 : 0 ) ) + 0xC)))); })&(~(disable_mask)))); }); });
    vTaskExitCritical(&uart_spinlock[uart_num]);
    return 0;
}

esp_err_t uart_enable_pattern_det_intr(uart_port_t uart_num, char pattern_chr, uint8_t chr_num, int chr_tout, int post_idle, int pre_idle)
{
    if (!((uart_num < UART_NUM_MAX))) { if (((esp_log_level_t) 3) >= ESP_LOG_ERROR) { esp_log_write(ESP_LOG_ERROR, UART_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), UART_TAG, __FUNCTION__, 298, "uart_num error"); }; return (-1); };
    if (!(chr_tout >= 0 && chr_tout <= 0xFFFFFF)) { if (((esp_log_level_t) 3) >= ESP_LOG_ERROR) { esp_log_write(ESP_LOG_ERROR, UART_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), UART_TAG, __FUNCTION__, 299, "uart pattern set error\n"); }; return (-1); };
    if (!(post_idle >= 0 && post_idle <= 0xFFFFFF)) { if (((esp_log_level_t) 3) >= ESP_LOG_ERROR) { esp_log_write(ESP_LOG_ERROR, UART_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), UART_TAG, __FUNCTION__, 300, "uart pattern set error\n"); }; return (-1); };
    if (!(pre_idle >= 0 && pre_idle <= 0xFFFFFF)) { if (((esp_log_level_t) 3) >= ESP_LOG_ERROR) { esp_log_write(ESP_LOG_ERROR, UART_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), UART_TAG, __FUNCTION__, 301, "uart pattern set error\n"); }; return (-1); };
    UART[uart_num]->at_cmd_char.data = pattern_chr;
    UART[uart_num]->at_cmd_char.char_num = chr_num;
    UART[uart_num]->at_cmd_gaptout.rx_gap_tout = chr_tout;
    UART[uart_num]->at_cmd_postcnt.post_idle_num = post_idle;
    UART[uart_num]->at_cmd_precnt.pre_idle_num = pre_idle;
    return uart_enable_intr_mask(uart_num, ((1UL << (18))));
}

esp_err_t uart_disable_pattern_det_intr(uart_port_t uart_num)
{
    return uart_disable_intr_mask(uart_num, ((1UL << (18))));
}

esp_err_t uart_enable_rx_intr(uart_port_t uart_num)
{
    return uart_enable_intr_mask(uart_num, ((1UL << (0)))|((1UL << (8))));
}

esp_err_t uart_disable_rx_intr(uart_port_t uart_num)
{
    return uart_disable_intr_mask(uart_num, ((1UL << (0)))|((1UL << (8))));
}

esp_err_t uart_disable_tx_intr(uart_port_t uart_num)
{
    return uart_disable_intr_mask(uart_num, ((1UL << (1))));
}

esp_err_t uart_enable_tx_intr(uart_port_t uart_num, int enable, int thresh)
{
    if (!((uart_num < UART_NUM_MAX))) { if (((esp_log_level_t) 3) >= ESP_LOG_ERROR) { esp_log_write(ESP_LOG_ERROR, UART_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), UART_TAG, __FUNCTION__, 332, "uart_num error"); }; return (-1); };
    if (!((thresh < (128)))) { if (((esp_log_level_t) 3) >= ESP_LOG_ERROR) { esp_log_write(ESP_LOG_ERROR, UART_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), UART_TAG, __FUNCTION__, 333, "empty intr threshold error"); }; return (-1); };
    vTaskEnterCritical(&uart_spinlock[uart_num]);
    UART[uart_num]->int_clr.txfifo_empty = 1;
    UART[uart_num]->conf1.txfifo_empty_thrhd = thresh & 0x7F;
    UART[uart_num]->int_ena.txfifo_empty = enable & 0x1;
    vTaskExitCritical(&uart_spinlock[uart_num]);
    return 0;
}

esp_err_t uart_isr_register(uart_port_t uart_num, void (*fn)(void*), void * arg, int intr_alloc_flags, uart_isr_handle_t *handle)
{
    int ret;
    if (!((uart_num < UART_NUM_MAX))) { if (((esp_log_level_t) 3) >= ESP_LOG_ERROR) { esp_log_write(ESP_LOG_ERROR, UART_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), UART_TAG, __FUNCTION__, 345, "uart_num error"); }; return (-1); };
    vTaskEnterCritical(&uart_spinlock[uart_num]);
    switch(uart_num) {
        case UART_NUM_1:
            ret=esp_intr_alloc(35, intr_alloc_flags, fn, arg, handle);
            break;
        case UART_NUM_2:
            ret=esp_intr_alloc(36, intr_alloc_flags, fn, arg, handle);
            break;
        case UART_NUM_0:
            default:
            ret=esp_intr_alloc(34, intr_alloc_flags, fn, arg, handle);
            break;
    }
    vTaskExitCritical(&uart_spinlock[uart_num]);
    return ret;
}


esp_err_t uart_isr_free(uart_port_t uart_num)
{
    esp_err_t ret;
    if (!((uart_num < UART_NUM_MAX))) { if (((esp_log_level_t) 3) >= ESP_LOG_ERROR) { esp_log_write(ESP_LOG_ERROR, UART_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), UART_TAG, __FUNCTION__, 367, "uart_num error"); }; return (-1); };
    if (p_uart_obj[uart_num]->intr_handle==
# 368 "C:/esp/esp-idf/components/driver/uart.c" 3 4
                                          ((void *)0)
# 368 "C:/esp/esp-idf/components/driver/uart.c"
                                              ) return 0x102;
    vTaskEnterCritical(&uart_spinlock[uart_num]);
    ret=esp_intr_free(p_uart_obj[uart_num]->intr_handle);
    p_uart_obj[uart_num]->intr_handle=
# 371 "C:/esp/esp-idf/components/driver/uart.c" 3 4
                                     ((void *)0)
# 371 "C:/esp/esp-idf/components/driver/uart.c"
                                         ;
    vTaskExitCritical(&uart_spinlock[uart_num]);
    return ret;
}



esp_err_t uart_set_pin(uart_port_t uart_num, int tx_io_num, int rx_io_num, int rts_io_num, int cts_io_num)
{
    if (!((uart_num < UART_NUM_MAX))) { if (((esp_log_level_t) 3) >= ESP_LOG_ERROR) { esp_log_write(ESP_LOG_ERROR, UART_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), UART_TAG, __FUNCTION__, 380, "uart_num error"); }; return (-1); };
    if (!((tx_io_num < 0 || (((((tx_io_num < 40 && GPIO_PIN_MUX_REG[tx_io_num] != 0))) && (tx_io_num < 34)))))) { if (((esp_log_level_t) 3) >= ESP_LOG_ERROR) { esp_log_write(ESP_LOG_ERROR, UART_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), UART_TAG, __FUNCTION__, 381, "tx_io_num error"); }; return (-1); };
    if (!((rx_io_num < 0 || (((rx_io_num < 40 && GPIO_PIN_MUX_REG[rx_io_num] != 0)))))) { if (((esp_log_level_t) 3) >= ESP_LOG_ERROR) { esp_log_write(ESP_LOG_ERROR, UART_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), UART_TAG, __FUNCTION__, 382, "rx_io_num error"); }; return (-1); };
    if (!((rts_io_num < 0 || (((((rts_io_num < 40 && GPIO_PIN_MUX_REG[rts_io_num] != 0))) && (rts_io_num < 34)))))) { if (((esp_log_level_t) 3) >= ESP_LOG_ERROR) { esp_log_write(ESP_LOG_ERROR, UART_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), UART_TAG, __FUNCTION__, 383, "rts_io_num error"); }; return (-1); };
    if (!((cts_io_num < 0 || (((cts_io_num < 40 && GPIO_PIN_MUX_REG[cts_io_num] != 0)))))) { if (((esp_log_level_t) 3) >= ESP_LOG_ERROR) { esp_log_write(ESP_LOG_ERROR, UART_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), UART_TAG, __FUNCTION__, 384, "cts_io_num error"); }; return (-1); };

    int tx_sig, rx_sig, rts_sig, cts_sig;
    switch(uart_num) {
        case UART_NUM_0:
            tx_sig = 14;
            rx_sig = 14;
            rts_sig = 15;
            cts_sig = 15;
            break;
        case UART_NUM_1:
            tx_sig = 17;
            rx_sig = 17;
            rts_sig = 18;
            cts_sig = 18;
            break;
        case UART_NUM_2:
            tx_sig = 198;
            rx_sig = 198;
            rts_sig = 199;
            cts_sig = 199;
            break;
        case UART_NUM_MAX:
            default:
            tx_sig = 14;
            rx_sig = 14;
            rts_sig = 15;
            cts_sig = 15;
            break;
    }
    if(tx_io_num >= 0) {
        ({ ; (({ ; (*(volatile uint32_t *)((GPIO_PIN_MUX_REG[tx_io_num]))) = (((({ ; (*(volatile uint32_t *)(GPIO_PIN_MUX_REG[tx_io_num])); }) & ~((0x7) << (12)))|(((2) & (0x7))<<(12)))); })); });
        gpio_set_level(tx_io_num, 1);
        gpio_matrix_out(tx_io_num, tx_sig, 0, 0);
    }

    if(rx_io_num >= 0) {
        ({ ; (({ ; (*(volatile uint32_t *)((GPIO_PIN_MUX_REG[rx_io_num]))) = (((({ ; (*(volatile uint32_t *)(GPIO_PIN_MUX_REG[rx_io_num])); }) & ~((0x7) << (12)))|(((2) & (0x7))<<(12)))); })); });
        gpio_set_pull_mode(rx_io_num, GPIO_PULLUP_ONLY);
        gpio_set_direction(rx_io_num, GPIO_MODE_INPUT);
        gpio_matrix_in(rx_io_num, rx_sig, 0);
    }
    if(rts_io_num >= 0) {
        ({ ; (({ ; (*(volatile uint32_t *)((GPIO_PIN_MUX_REG[rts_io_num]))) = (((({ ; (*(volatile uint32_t *)(GPIO_PIN_MUX_REG[rts_io_num])); }) & ~((0x7) << (12)))|(((2) & (0x7))<<(12)))); })); });
        gpio_set_direction(rts_io_num, GPIO_MODE_OUTPUT);
        gpio_matrix_out(rts_io_num, rts_sig, 0, 0);
    }
    if(cts_io_num >= 0) {
        ({ ; (({ ; (*(volatile uint32_t *)((GPIO_PIN_MUX_REG[cts_io_num]))) = (((({ ; (*(volatile uint32_t *)(GPIO_PIN_MUX_REG[cts_io_num])); }) & ~((0x7) << (12)))|(((2) & (0x7))<<(12)))); })); });
        gpio_set_pull_mode(cts_io_num, GPIO_PULLUP_ONLY);
        gpio_set_direction(cts_io_num, GPIO_MODE_INPUT);
        gpio_matrix_in(cts_io_num, cts_sig, 0);
    }
    return 0;
}

esp_err_t uart_set_rts(uart_port_t uart_num, int level)
{
    if (!((uart_num < UART_NUM_MAX))) { if (((esp_log_level_t) 3) >= ESP_LOG_ERROR) { esp_log_write(ESP_LOG_ERROR, UART_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), UART_TAG, __FUNCTION__, 442, "uart_num error"); }; return (-1); };
    if (!((UART[uart_num]->conf1.rx_flow_en != 1))) { if (((esp_log_level_t) 3) >= ESP_LOG_ERROR) { esp_log_write(ESP_LOG_ERROR, UART_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), UART_TAG, __FUNCTION__, 443, "disable hw flowctrl before using sw control"); }; return (-1); };
    vTaskEnterCritical(&uart_spinlock[uart_num]);
    UART[uart_num]->conf0.sw_rts = level & 0x1;
    vTaskExitCritical(&uart_spinlock[uart_num]);
    return 0;
}

esp_err_t uart_set_dtr(uart_port_t uart_num, int level)
{
    if (!((uart_num < UART_NUM_MAX))) { if (((esp_log_level_t) 3) >= ESP_LOG_ERROR) { esp_log_write(ESP_LOG_ERROR, UART_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), UART_TAG, __FUNCTION__, 452, "uart_num error"); }; return (-1); };
    vTaskEnterCritical(&uart_spinlock[uart_num]);
    UART[uart_num]->conf0.sw_dtr = level & 0x1;
    vTaskExitCritical(&uart_spinlock[uart_num]);
    return 0;
}

esp_err_t uart_param_config(uart_port_t uart_num, const uart_config_t *uart_config)
{
    esp_err_t r;
    if (!((uart_num < UART_NUM_MAX))) { if (((esp_log_level_t) 3) >= ESP_LOG_ERROR) { esp_log_write(ESP_LOG_ERROR, UART_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), UART_TAG, __FUNCTION__, 462, "uart_num error"); }; return (-1); };
    if (!((uart_config))) { if (((esp_log_level_t) 3) >= ESP_LOG_ERROR) { esp_log_write(ESP_LOG_ERROR, UART_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), UART_TAG, __FUNCTION__, 463, "param null"); }; return (-1); };
    if(uart_num == UART_NUM_0) {
        periph_module_enable(PERIPH_UART0_MODULE);
    } else if(uart_num == UART_NUM_1) {
        periph_module_enable(PERIPH_UART1_MODULE);
    } else if(uart_num == UART_NUM_2) {
        periph_module_enable(PERIPH_UART2_MODULE);
    }
    r=uart_set_hw_flow_ctrl(uart_num, uart_config->flow_ctrl, uart_config->rx_flow_ctrl_thresh);
    if (r!=0) return r;
    r=uart_set_baudrate(uart_num, uart_config->baud_rate);
    if (r!=0) return r;

    UART[uart_num]->conf0.val = (
        (uart_config->parity << 0)
            | (uart_config->data_bits << 2)
            | ((uart_config->flow_ctrl & UART_HW_FLOWCTRL_CTS) ? ((1UL << (15))) : 0x0)
            | ((1UL << (27))));
    r=uart_set_stop_bits(uart_num, uart_config->stop_bits);
    return r;
}

esp_err_t uart_intr_config(uart_port_t uart_num, const uart_intr_config_t *intr_conf)
{
    if (!((uart_num < UART_NUM_MAX))) { if (((esp_log_level_t) 3) >= ESP_LOG_ERROR) { esp_log_write(ESP_LOG_ERROR, UART_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), UART_TAG, __FUNCTION__, 487, "uart_num error"); }; return (-1); };
    if (!((intr_conf))) { if (((esp_log_level_t) 3) >= ESP_LOG_ERROR) { esp_log_write(ESP_LOG_ERROR, UART_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), UART_TAG, __FUNCTION__, 488, "param null"); }; return (-1); };
    vTaskEnterCritical(&uart_spinlock[uart_num]);
    UART[uart_num]->int_clr.val = 0x1ff;
    if(intr_conf->intr_enable_mask & ((1UL << (8)))) {
        UART[uart_num]->conf1.rx_tout_thrhd = ((intr_conf->rx_timeout_thresh) & 0x7F);
        UART[uart_num]->conf1.rx_tout_en = 1;
    } else {
        UART[uart_num]->conf1.rx_tout_en = 0;
    }
    if(intr_conf->intr_enable_mask & ((1UL << (0)))) {
        UART[uart_num]->conf1.rxfifo_full_thrhd = intr_conf->rxfifo_full_thresh;
    }
    if(intr_conf->intr_enable_mask & ((1UL << (1)))) {
        UART[uart_num]->conf1.txfifo_empty_thrhd = intr_conf->txfifo_empty_intr_thresh;
    }
    UART[uart_num]->int_ena.val = intr_conf->intr_enable_mask;
    vTaskExitCritical(&uart_spinlock[uart_num]);
    return 0;
}


static void uart_rx_intr_handler_default(void *param)
{
    uart_obj_t *p_uart = (uart_obj_t*) param;
    uint8_t uart_num = p_uart->uart_num;
    uart_dev_t* uart_reg = UART[uart_num];
    uint8_t buf_idx = 0;
    uint32_t uart_intr_status = UART[uart_num]->int_st.val;
    int rx_fifo_len = 0;
    uart_event_t uart_event;
    int HPTaskAwoken = 0;

    while(uart_intr_status != 0x0) {
        buf_idx = 0;
        uart_event.type = UART_EVENT_MAX;
        if(uart_intr_status & ((1UL << (1)))) {
            vTaskEnterCritical(&uart_spinlock[uart_num]);
            uart_reg->int_ena.txfifo_empty = 0;
            uart_reg->int_clr.txfifo_empty = 1;
            vTaskExitCritical(&uart_spinlock[uart_num]);
            if(p_uart->tx_waiting_brk) {
                continue;
            }

            if(p_uart->tx_waiting_fifo == 
# 532 "C:/esp/esp-idf/components/driver/uart.c" 3 4
                                         1 
# 532 "C:/esp/esp-idf/components/driver/uart.c"
                                              && p_uart->tx_buf_size == 0) {
                p_uart->tx_waiting_fifo = 
# 533 "C:/esp/esp-idf/components/driver/uart.c" 3 4
                                         0
# 533 "C:/esp/esp-idf/components/driver/uart.c"
                                              ;
                xQueueGiveFromISR( ( QueueHandle_t ) ( p_uart->tx_fifo_sem ), ( &HPTaskAwoken ) );
                if(HPTaskAwoken == ( ( BaseType_t ) 1 )) {
                    {; _frxt_setup_switch();} ;
                }
            }
            else {

                if(p_uart->tx_buf_size == 0) {
                    continue;
                }
                int tx_fifo_rem = (128) - UART[uart_num]->status.txfifo_cnt;
                
# 545 "C:/esp/esp-idf/components/driver/uart.c" 3 4
               _Bool 
# 545 "C:/esp/esp-idf/components/driver/uart.c"
                    en_tx_flg = 
# 545 "C:/esp/esp-idf/components/driver/uart.c" 3 4
                                0
# 545 "C:/esp/esp-idf/components/driver/uart.c"
                                     ;



                while(tx_fifo_rem) {
                    if(p_uart->tx_len_tot == 0 || p_uart->tx_ptr == 
# 550 "C:/esp/esp-idf/components/driver/uart.c" 3 4
                                                                   ((void *)0) 
# 550 "C:/esp/esp-idf/components/driver/uart.c"
                                                                        || p_uart->tx_len_cur == 0) {
                        size_t size;
                        p_uart->tx_head = (uart_tx_data_t*) xRingbufferReceiveFromISR(p_uart->tx_ring_buf, &size);
                        if(p_uart->tx_head) {


                            if(p_uart->tx_len_tot == 0) {
                                p_uart->tx_ptr = 
# 557 "C:/esp/esp-idf/components/driver/uart.c" 3 4
                                                ((void *)0)
# 557 "C:/esp/esp-idf/components/driver/uart.c"
                                                    ;
                                p_uart->tx_len_tot = p_uart->tx_head->tx_data.size;
                                if(p_uart->tx_head->type == UART_DATA_BREAK) {
                                    p_uart->tx_len_tot = p_uart->tx_head->tx_data.size;
                                    p_uart->tx_brk_flg = 1;
                                    p_uart->tx_brk_len = p_uart->tx_head->tx_data.brk_len;
                                }

                                vRingbufferReturnItemFromISR(p_uart->tx_ring_buf, p_uart->tx_head, &HPTaskAwoken);
                                if(HPTaskAwoken == ( ( BaseType_t ) 1 )) {
                                    {; _frxt_setup_switch();} ;
                                }
                            }else if(p_uart->tx_ptr == 
# 569 "C:/esp/esp-idf/components/driver/uart.c" 3 4
                                                      ((void *)0)
# 569 "C:/esp/esp-idf/components/driver/uart.c"
                                                          ) {

                                p_uart->tx_ptr = (uint8_t*) p_uart->tx_head;
                                en_tx_flg = 
# 572 "C:/esp/esp-idf/components/driver/uart.c" 3 4
                                           1
# 572 "C:/esp/esp-idf/components/driver/uart.c"
                                               ;
                                p_uart->tx_len_cur = size;
                            }
                        }
                        else {

                            break;
                        }
                    }
                    if(p_uart->tx_len_tot > 0 && p_uart->tx_ptr && p_uart->tx_len_cur > 0) {

                        int send_len = p_uart->tx_len_cur > tx_fifo_rem ? tx_fifo_rem : p_uart->tx_len_cur;
                        for(buf_idx = 0; buf_idx < send_len; buf_idx++) {
                            ({ ; (*((volatile uint32_t *)(((0x60000000 + (uart_num) * 0x10000 + ( (uart_num) > 1 ? 0xe000 : 0 ) ) + 0x0)))) = (uint32_t)(*(p_uart->tx_ptr++) & 0xff); });
                        }
                        p_uart->tx_len_tot -= send_len;
                        p_uart->tx_len_cur -= send_len;
                        tx_fifo_rem -= send_len;
                        if(p_uart->tx_len_cur == 0) {

                            vRingbufferReturnItemFromISR(p_uart->tx_ring_buf, p_uart->tx_head, &HPTaskAwoken);
                            if(HPTaskAwoken == ( ( BaseType_t ) 1 )) {
                                {; _frxt_setup_switch();} ;
                            }
                            p_uart->tx_head = 
# 596 "C:/esp/esp-idf/components/driver/uart.c" 3 4
                                             ((void *)0)
# 596 "C:/esp/esp-idf/components/driver/uart.c"
                                                 ;
                            p_uart->tx_ptr = 
# 597 "C:/esp/esp-idf/components/driver/uart.c" 3 4
                                            ((void *)0)
# 597 "C:/esp/esp-idf/components/driver/uart.c"
                                                ;


                            if(p_uart->tx_brk_flg == 1 && p_uart->tx_len_tot == 0) {
                                vTaskEnterCritical(&uart_spinlock[uart_num]);
                                uart_reg->int_ena.tx_brk_done = 0;
                                uart_reg->idle_conf.tx_brk_num = p_uart->tx_brk_len;
                                uart_reg->conf0.txd_brk = 1;
                                uart_reg->int_clr.tx_brk_done = 1;
                                uart_reg->int_ena.tx_brk_done = 1;
                                vTaskExitCritical(&uart_spinlock[uart_num]);
                                p_uart->tx_waiting_brk = 1;
                            } else {

                                en_tx_flg = 
# 611 "C:/esp/esp-idf/components/driver/uart.c" 3 4
                                           1
# 611 "C:/esp/esp-idf/components/driver/uart.c"
                                               ;
                            }
                        } else {

                            en_tx_flg = 
# 615 "C:/esp/esp-idf/components/driver/uart.c" 3 4
                                       1
# 615 "C:/esp/esp-idf/components/driver/uart.c"
                                           ;
                        }
                    }
                }
                if(en_tx_flg) {
                    vTaskEnterCritical(&uart_spinlock[uart_num]);
                    uart_reg->int_clr.txfifo_empty = 1;
                    uart_reg->int_ena.txfifo_empty = 1;
                    vTaskExitCritical(&uart_spinlock[uart_num]);
                }
            }
        }
        else if((uart_intr_status & ((1UL << (8)))) || (uart_intr_status & ((1UL << (0))))) {
            if(p_uart->rx_buffer_full_flg == 
# 628 "C:/esp/esp-idf/components/driver/uart.c" 3 4
                                            0
# 628 "C:/esp/esp-idf/components/driver/uart.c"
                                                 ) {

                rx_fifo_len = uart_reg->status.rxfifo_cnt;
                p_uart->rx_stash_len = rx_fifo_len;

                while(buf_idx < rx_fifo_len) {
                    p_uart->rx_data_buf[buf_idx++] = uart_reg->fifo.rw_byte;
                }

                vTaskEnterCritical(&uart_spinlock[uart_num]);
                uart_reg->int_clr.rxfifo_tout = 1;
                uart_reg->int_clr.rxfifo_full = 1;
                vTaskExitCritical(&uart_spinlock[uart_num]);
                uart_event.size = rx_fifo_len;


                if(( ( BaseType_t ) 0 ) == xRingbufferSendFromISR(p_uart->rx_ring_buf, p_uart->rx_data_buf, p_uart->rx_stash_len, &HPTaskAwoken)) {
                    vTaskEnterCritical(&uart_spinlock[uart_num]);
                    uart_reg->int_ena.rxfifo_full = 0;
                    uart_reg->int_ena.rxfifo_tout = 0;
                    vTaskExitCritical(&uart_spinlock[uart_num]);
                    p_uart->rx_buffer_full_flg = 
# 649 "C:/esp/esp-idf/components/driver/uart.c" 3 4
                                                1
# 649 "C:/esp/esp-idf/components/driver/uart.c"
                                                    ;
                    uart_event.type = UART_BUFFER_FULL;
                } else {
                    vTaskEnterCritical(&uart_spinlock[uart_num]);
                    p_uart->rx_buffered_len += p_uart->rx_stash_len;
                    vTaskExitCritical(&uart_spinlock[uart_num]);
                    uart_event.type = UART_DATA;
                }
                if(HPTaskAwoken == ( ( BaseType_t ) 1 )) {
                    {; _frxt_setup_switch();} ;
                }
            } else {
                vTaskEnterCritical(&uart_spinlock[uart_num]);
                uart_reg->int_ena.rxfifo_full = 0;
                uart_reg->int_ena.rxfifo_tout = 0;
                uart_reg->int_clr.val = ((1UL << (0))) | ((1UL << (8)));
                vTaskExitCritical(&uart_spinlock[uart_num]);
                uart_event.type = UART_BUFFER_FULL;
            }
        } else if(uart_intr_status & ((1UL << (4)))) {
            vTaskEnterCritical(&uart_spinlock[uart_num]);
            uart_reg->conf0.rxfifo_rst = 1;
            uart_reg->conf0.rxfifo_rst = 0;
            uart_reg->int_clr.rxfifo_ovf = 1;
            vTaskExitCritical(&uart_spinlock[uart_num]);
            uart_event.type = UART_FIFO_OVF;
        } else if(uart_intr_status & ((1UL << (7)))) {
            uart_reg->int_clr.brk_det = 1;
            uart_event.type = UART_BREAK;
        } else if(uart_intr_status & ((1UL << (3)))) {
            uart_reg->int_clr.frm_err = 1;
            uart_event.type = UART_FRAME_ERR;
        } else if(uart_intr_status & ((1UL << (2)))) {
            uart_reg->int_clr.parity_err = 1;
            uart_event.type = UART_PARITY_ERR;
        } else if(uart_intr_status & ((1UL << (12)))) {
            vTaskEnterCritical(&uart_spinlock[uart_num]);
            uart_reg->conf0.txd_brk = 0;
            uart_reg->int_ena.tx_brk_done = 0;
            uart_reg->int_clr.tx_brk_done = 1;
            if(p_uart->tx_brk_flg == 1) {
                uart_reg->int_ena.txfifo_empty = 1;
            }
            vTaskExitCritical(&uart_spinlock[uart_num]);
            if(p_uart->tx_brk_flg == 1) {
                p_uart->tx_brk_flg = 0;
                p_uart->tx_waiting_brk = 0;
            } else {
                xQueueGiveFromISR( ( QueueHandle_t ) ( p_uart->tx_brk_sem ), ( &HPTaskAwoken ) );
                if(HPTaskAwoken == ( ( BaseType_t ) 1 )) {
                    {; _frxt_setup_switch();} ;
                }
            }
        } else if(uart_intr_status & ((1UL << (13)))) {
            vTaskEnterCritical(&uart_spinlock[uart_num]);
            uart_reg->int_ena.tx_brk_idle_done = 0;
            uart_reg->int_clr.tx_brk_idle_done = 1;
            vTaskExitCritical(&uart_spinlock[uart_num]);
        } else if(uart_intr_status & ((1UL << (18)))) {
            uart_reg->int_clr.at_cmd_char_det = 1;
            uart_event.type = UART_PATTERN_DET;
        } else if(uart_intr_status & ((1UL << (14)))) {
            vTaskEnterCritical(&uart_spinlock[uart_num]);
            uart_reg->int_ena.tx_done = 0;
            uart_reg->int_clr.tx_done = 1;
            vTaskExitCritical(&uart_spinlock[uart_num]);
            xQueueGiveFromISR( ( QueueHandle_t ) ( p_uart_obj[uart_num]->tx_done_sem ), ( &HPTaskAwoken ) );
            if(HPTaskAwoken == ( ( BaseType_t ) 1 )) {
                {; _frxt_setup_switch();} ;
            }
        } else {
            uart_reg->int_clr.val = uart_intr_status;
            uart_event.type = UART_EVENT_MAX;
        }

        if(uart_event.type != UART_EVENT_MAX && p_uart->xQueueUart) {
            xQueueGenericSendFromISR( ( p_uart->xQueueUart ), ( (void * )&uart_event ), ( &HPTaskAwoken ), ( ( BaseType_t ) 0 ) );
            if(HPTaskAwoken == ( ( BaseType_t ) 1 )) {
                {; _frxt_setup_switch();} ;
            }
        }
        uart_intr_status = uart_reg->int_st.val;
    }
}


esp_err_t uart_wait_tx_done(uart_port_t uart_num, TickType_t ticks_to_wait)
{
    if (!((uart_num < UART_NUM_MAX))) { if (((esp_log_level_t) 3) >= ESP_LOG_ERROR) { esp_log_write(ESP_LOG_ERROR, UART_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), UART_TAG, __FUNCTION__, 737, "uart_num error"); }; return (-1); };
    if (!((p_uart_obj[uart_num]))) { if (((esp_log_level_t) 3) >= ESP_LOG_ERROR) { esp_log_write(ESP_LOG_ERROR, UART_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), UART_TAG, __FUNCTION__, 738, "uart driver error"); }; return (-1); };
    BaseType_t res;
    TickType_t ticks_end = xTaskGetTickCount() + ticks_to_wait;

    res = xQueueGenericReceive( ( QueueHandle_t ) ( p_uart_obj[uart_num]->tx_mux ), 
# 742 "C:/esp/esp-idf/components/driver/uart.c" 3 4
         ((void *)0)
# 742 "C:/esp/esp-idf/components/driver/uart.c"
         , ( (TickType_t)ticks_to_wait ), ( ( BaseType_t ) 0 ) );
    if(res == ( ( BaseType_t ) 0 )) {
        return 0x107;
    }
    ticks_to_wait = ticks_end - xTaskGetTickCount();
    xQueueGenericReceive( ( QueueHandle_t ) ( p_uart_obj[uart_num]->tx_done_sem ), 
# 747 "C:/esp/esp-idf/components/driver/uart.c" 3 4
   ((void *)0)
# 747 "C:/esp/esp-idf/components/driver/uart.c"
   , ( 0 ), ( ( BaseType_t ) 0 ) );
    ticks_to_wait = ticks_end - xTaskGetTickCount();
    if(UART[uart_num]->status.txfifo_cnt == 0) {
        xQueueGenericSend( ( QueueHandle_t ) ( p_uart_obj[uart_num]->tx_mux ), 
# 750 "C:/esp/esp-idf/components/driver/uart.c" 3 4
       ((void *)0)
# 750 "C:/esp/esp-idf/components/driver/uart.c"
       , ( ( TickType_t ) 0U ), ( ( BaseType_t ) 0 ) );
        return 0;
    }
    uart_enable_intr_mask(uart_num, ((1UL << (14))));

    res = xQueueGenericReceive( ( QueueHandle_t ) ( p_uart_obj[uart_num]->tx_done_sem ), 
# 755 "C:/esp/esp-idf/components/driver/uart.c" 3 4
         ((void *)0)
# 755 "C:/esp/esp-idf/components/driver/uart.c"
         , ( (TickType_t)ticks_to_wait ), ( ( BaseType_t ) 0 ) );
    if(res == ( ( BaseType_t ) 0 )) {
        uart_disable_intr_mask(uart_num, ((1UL << (14))));
        xQueueGenericSend( ( QueueHandle_t ) ( p_uart_obj[uart_num]->tx_mux ), 
# 758 "C:/esp/esp-idf/components/driver/uart.c" 3 4
       ((void *)0)
# 758 "C:/esp/esp-idf/components/driver/uart.c"
       , ( ( TickType_t ) 0U ), ( ( BaseType_t ) 0 ) );
        return 0x107;
    }
    xQueueGenericSend( ( QueueHandle_t ) ( p_uart_obj[uart_num]->tx_mux ), 
# 761 "C:/esp/esp-idf/components/driver/uart.c" 3 4
   ((void *)0)
# 761 "C:/esp/esp-idf/components/driver/uart.c"
   , ( ( TickType_t ) 0U ), ( ( BaseType_t ) 0 ) );
    return 0;
}

static esp_err_t uart_set_break(uart_port_t uart_num, int break_num)
{
    vTaskEnterCritical(&uart_spinlock[uart_num]);
    UART[uart_num]->idle_conf.tx_brk_num = break_num;
    UART[uart_num]->conf0.txd_brk = 1;
    UART[uart_num]->int_clr.tx_brk_done = 1;
    UART[uart_num]->int_ena.tx_brk_done = 1;
    vTaskExitCritical(&uart_spinlock[uart_num]);
    return 0;
}



static int uart_fill_fifo(uart_port_t uart_num, const char* buffer, uint32_t len)
{
    uint8_t i = 0;
    uint8_t tx_fifo_cnt = UART[uart_num]->status.txfifo_cnt;
    uint8_t tx_remain_fifo_cnt = ((128) - tx_fifo_cnt);
    uint8_t copy_cnt = (len >= tx_remain_fifo_cnt ? tx_remain_fifo_cnt : len);
    for(i = 0; i < copy_cnt; i++) {
        ({ ; (*((volatile uint32_t *)(((0x60000000 + (uart_num) * 0x10000 + ( (uart_num) > 1 ? 0xe000 : 0 ) ) + 0x0)))) = (uint32_t)(buffer[i]); });
    }
    return copy_cnt;
}

int uart_tx_chars(uart_port_t uart_num, const char* buffer, uint32_t len)
{
    if (!((uart_num < UART_NUM_MAX))) { if (((esp_log_level_t) 3) >= ESP_LOG_ERROR) { esp_log_write(ESP_LOG_ERROR, UART_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), UART_TAG, __FUNCTION__, 792, "uart_num error"); }; return ((-1)); };
    if (!((p_uart_obj[uart_num]))) { if (((esp_log_level_t) 3) >= ESP_LOG_ERROR) { esp_log_write(ESP_LOG_ERROR, UART_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), UART_TAG, __FUNCTION__, 793, "uart driver error"); }; return ((-1)); };
    if (!(buffer)) { if (((esp_log_level_t) 3) >= ESP_LOG_ERROR) { esp_log_write(ESP_LOG_ERROR, UART_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), UART_TAG, __FUNCTION__, 794, "buffer null"); }; return ((-1)); };
    if(len == 0) {
        return 0;
    }
    xQueueGenericReceive( ( QueueHandle_t ) ( p_uart_obj[uart_num]->tx_mux ), 
# 798 "C:/esp/esp-idf/components/driver/uart.c" 3 4
   ((void *)0)
# 798 "C:/esp/esp-idf/components/driver/uart.c"
   , ( (TickType_t)( TickType_t ) 0xffffffffUL ), ( ( BaseType_t ) 0 ) );
    int tx_len = uart_fill_fifo(uart_num, (const char*) buffer, len);
    xQueueGenericSend( ( QueueHandle_t ) ( p_uart_obj[uart_num]->tx_mux ), 
# 800 "C:/esp/esp-idf/components/driver/uart.c" 3 4
   ((void *)0)
# 800 "C:/esp/esp-idf/components/driver/uart.c"
   , ( ( TickType_t ) 0U ), ( ( BaseType_t ) 0 ) );
    return tx_len;
}

static int uart_tx_all(uart_port_t uart_num, const char* src, size_t size, 
# 804 "C:/esp/esp-idf/components/driver/uart.c" 3 4
                                                                          _Bool 
# 804 "C:/esp/esp-idf/components/driver/uart.c"
                                                                               brk_en, int brk_len)
{
    if(size == 0) {
        return 0;
    }
    size_t original_size = size;


    xQueueGenericReceive( ( QueueHandle_t ) ( p_uart_obj[uart_num]->tx_mux ), 
# 812 "C:/esp/esp-idf/components/driver/uart.c" 3 4
   ((void *)0)
# 812 "C:/esp/esp-idf/components/driver/uart.c"
   , ( (TickType_t)( TickType_t ) 0xffffffffUL ), ( ( BaseType_t ) 0 ) );
    if(p_uart_obj[uart_num]->tx_buf_size > 0) {
        int max_size = xRingbufferGetMaxItemSize(p_uart_obj[uart_num]->tx_ring_buf);
        int offset = 0;
        uart_tx_data_t evt;
        evt.tx_data.size = size;
        evt.tx_data.brk_len = brk_len;
        if(brk_en) {
            evt.type = UART_DATA_BREAK;
        } else {
            evt.type = UART_DATA;
        }
        xRingbufferSend(p_uart_obj[uart_num]->tx_ring_buf, (void*) &evt, sizeof(uart_tx_data_t), ( TickType_t ) 0xffffffffUL);
        while(size > 0) {
            int send_size = size > max_size / 2 ? max_size / 2 : size;
            xRingbufferSend(p_uart_obj[uart_num]->tx_ring_buf, (void*) (src + offset), send_size, ( TickType_t ) 0xffffffffUL);
            size -= send_size;
            offset += send_size;
            uart_enable_tx_intr(uart_num, 1, (10));
        }
        xQueueGenericSend( ( QueueHandle_t ) ( p_uart_obj[uart_num]->tx_mux ), 
# 832 "C:/esp/esp-idf/components/driver/uart.c" 3 4
       ((void *)0)
# 832 "C:/esp/esp-idf/components/driver/uart.c"
       , ( ( TickType_t ) 0U ), ( ( BaseType_t ) 0 ) );
    } else {
        while(size) {

            if(( ( BaseType_t ) 1 ) == xQueueGenericReceive( ( QueueHandle_t ) ( p_uart_obj[uart_num]->tx_fifo_sem ), 
# 836 "C:/esp/esp-idf/components/driver/uart.c" 3 4
                        ((void *)0)
# 836 "C:/esp/esp-idf/components/driver/uart.c"
                        , ( (TickType_t)( TickType_t ) 0xffffffffUL ), ( ( BaseType_t ) 0 ) )) {
                size_t sent = uart_fill_fifo(uart_num, (char*) src, size);
                if(sent < size) {
                    p_uart_obj[uart_num]->tx_waiting_fifo = 
# 839 "C:/esp/esp-idf/components/driver/uart.c" 3 4
                                                           1
# 839 "C:/esp/esp-idf/components/driver/uart.c"
                                                               ;
                    uart_enable_tx_intr(uart_num, 1, (10));
                }
                size -= sent;
                src += sent;
            }
        }
        if(brk_en) {
            uart_set_break(uart_num, brk_len);
            xQueueGenericReceive( ( QueueHandle_t ) ( p_uart_obj[uart_num]->tx_brk_sem ), 
# 848 "C:/esp/esp-idf/components/driver/uart.c" 3 4
           ((void *)0)
# 848 "C:/esp/esp-idf/components/driver/uart.c"
           , ( (TickType_t)( TickType_t ) 0xffffffffUL ), ( ( BaseType_t ) 0 ) );
        }
        xQueueGenericSend( ( QueueHandle_t ) ( p_uart_obj[uart_num]->tx_fifo_sem ), 
# 850 "C:/esp/esp-idf/components/driver/uart.c" 3 4
       ((void *)0)
# 850 "C:/esp/esp-idf/components/driver/uart.c"
       , ( ( TickType_t ) 0U ), ( ( BaseType_t ) 0 ) );
    }
    xQueueGenericSend( ( QueueHandle_t ) ( p_uart_obj[uart_num]->tx_mux ), 
# 852 "C:/esp/esp-idf/components/driver/uart.c" 3 4
   ((void *)0)
# 852 "C:/esp/esp-idf/components/driver/uart.c"
   , ( ( TickType_t ) 0U ), ( ( BaseType_t ) 0 ) );
    return original_size;
}

int uart_write_bytes(uart_port_t uart_num, const char* src, size_t size)
{
    if (!((uart_num < UART_NUM_MAX))) { if (((esp_log_level_t) 3) >= ESP_LOG_ERROR) { esp_log_write(ESP_LOG_ERROR, UART_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), UART_TAG, __FUNCTION__, 858, "uart_num error"); }; return ((-1)); };
    if (!((p_uart_obj[uart_num] != 
# 859 "C:/esp/esp-idf/components/driver/uart.c" 3 4
   ((void *)0)
# 859 "C:/esp/esp-idf/components/driver/uart.c"
   ))) { if (((esp_log_level_t) 3) >= ESP_LOG_ERROR) { esp_log_write(ESP_LOG_ERROR, UART_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), UART_TAG, __FUNCTION__, 859, "uart driver error"); }; return ((-1)); };
    if (!(src)) { if (((esp_log_level_t) 3) >= ESP_LOG_ERROR) { esp_log_write(ESP_LOG_ERROR, UART_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), UART_TAG, __FUNCTION__, 860, "buffer null"); }; return ((-1)); };
    return uart_tx_all(uart_num, src, size, 0, 0);
}

int uart_write_bytes_with_break(uart_port_t uart_num, const char* src, size_t size, int brk_len)
{
    if (!((uart_num < UART_NUM_MAX))) { if (((esp_log_level_t) 3) >= ESP_LOG_ERROR) { esp_log_write(ESP_LOG_ERROR, UART_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), UART_TAG, __FUNCTION__, 866, "uart_num error"); }; return ((-1)); };
    if (!((p_uart_obj[uart_num]))) { if (((esp_log_level_t) 3) >= ESP_LOG_ERROR) { esp_log_write(ESP_LOG_ERROR, UART_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), UART_TAG, __FUNCTION__, 867, "uart driver error"); }; return ((-1)); };
    if (!((size > 0))) { if (((esp_log_level_t) 3) >= ESP_LOG_ERROR) { esp_log_write(ESP_LOG_ERROR, UART_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), UART_TAG, __FUNCTION__, 868, "uart size error"); }; return ((-1)); };
    if (!((src))) { if (((esp_log_level_t) 3) >= ESP_LOG_ERROR) { esp_log_write(ESP_LOG_ERROR, UART_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), UART_TAG, __FUNCTION__, 869, "uart data null"); }; return ((-1)); };
    if (!((brk_len > 0 && brk_len < 256))) { if (((esp_log_level_t) 3) >= ESP_LOG_ERROR) { esp_log_write(ESP_LOG_ERROR, UART_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), UART_TAG, __FUNCTION__, 870, "break_num error"); }; return ((-1)); };
    return uart_tx_all(uart_num, src, size, 1, brk_len);
}

int uart_read_bytes(uart_port_t uart_num, uint8_t* buf, uint32_t length, TickType_t ticks_to_wait)
{
    if (!((uart_num < UART_NUM_MAX))) { if (((esp_log_level_t) 3) >= ESP_LOG_ERROR) { esp_log_write(ESP_LOG_ERROR, UART_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), UART_TAG, __FUNCTION__, 876, "uart_num error"); }; return ((-1)); };
    if (!((buf))) { if (((esp_log_level_t) 3) >= ESP_LOG_ERROR) { esp_log_write(ESP_LOG_ERROR, UART_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), UART_TAG, __FUNCTION__, 877, "uart_num error"); }; return ((-1)); };
    if (!((p_uart_obj[uart_num]))) { if (((esp_log_level_t) 3) >= ESP_LOG_ERROR) { esp_log_write(ESP_LOG_ERROR, UART_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), UART_TAG, __FUNCTION__, 878, "uart driver error"); }; return ((-1)); };
    uint8_t* data = 
# 879 "C:/esp/esp-idf/components/driver/uart.c" 3 4
                   ((void *)0)
# 879 "C:/esp/esp-idf/components/driver/uart.c"
                       ;
    size_t size;
    size_t copy_len = 0;
    int len_tmp;
    if(xQueueGenericReceive( ( QueueHandle_t ) ( p_uart_obj[uart_num]->rx_mux ), 
# 883 "C:/esp/esp-idf/components/driver/uart.c" 3 4
      ((void *)0)
# 883 "C:/esp/esp-idf/components/driver/uart.c"
      , ( (TickType_t)ticks_to_wait ), ( ( BaseType_t ) 0 ) ) != ( ( BaseType_t ) 1 )) {
        return -1;
    }
    while(length) {
        if(p_uart_obj[uart_num]->rx_cur_remain == 0) {
            data = (uint8_t*) xRingbufferReceive(p_uart_obj[uart_num]->rx_ring_buf, &size, (TickType_t) ticks_to_wait);
            if(data) {
                p_uart_obj[uart_num]->rx_head_ptr = data;
                p_uart_obj[uart_num]->rx_ptr = data;
                p_uart_obj[uart_num]->rx_cur_remain = size;
            } else {
                xQueueGenericSend( ( QueueHandle_t ) ( p_uart_obj[uart_num]->rx_mux ), 
# 894 "C:/esp/esp-idf/components/driver/uart.c" 3 4
               ((void *)0)
# 894 "C:/esp/esp-idf/components/driver/uart.c"
               , ( ( TickType_t ) 0U ), ( ( BaseType_t ) 0 ) );
                vTaskEnterCritical(&uart_spinlock[uart_num]);
                p_uart_obj[uart_num]->rx_buffered_len -= copy_len;
                vTaskExitCritical(&uart_spinlock[uart_num]);
                return copy_len;
            }
        }
        if(p_uart_obj[uart_num]->rx_cur_remain > length) {
            len_tmp = length;
        } else {
            len_tmp = p_uart_obj[uart_num]->rx_cur_remain;
        }
        memcpy(buf + copy_len, p_uart_obj[uart_num]->rx_ptr, len_tmp);
        p_uart_obj[uart_num]->rx_ptr += len_tmp;
        p_uart_obj[uart_num]->rx_cur_remain -= len_tmp;
        copy_len += len_tmp;
        length -= len_tmp;
        if(p_uart_obj[uart_num]->rx_cur_remain == 0) {
            vRingbufferReturnItem(p_uart_obj[uart_num]->rx_ring_buf, p_uart_obj[uart_num]->rx_head_ptr);
            p_uart_obj[uart_num]->rx_head_ptr = 
# 913 "C:/esp/esp-idf/components/driver/uart.c" 3 4
                                               ((void *)0)
# 913 "C:/esp/esp-idf/components/driver/uart.c"
                                                   ;
            p_uart_obj[uart_num]->rx_ptr = 
# 914 "C:/esp/esp-idf/components/driver/uart.c" 3 4
                                          ((void *)0)
# 914 "C:/esp/esp-idf/components/driver/uart.c"
                                              ;
            if(p_uart_obj[uart_num]->rx_buffer_full_flg) {
                BaseType_t res = xRingbufferSend(p_uart_obj[uart_num]->rx_ring_buf, p_uart_obj[uart_num]->rx_data_buf, p_uart_obj[uart_num]->rx_stash_len, 1);
                if(res == ( ( BaseType_t ) 1 )) {
                    vTaskEnterCritical(&uart_spinlock[uart_num]);
                    p_uart_obj[uart_num]->rx_buffered_len += p_uart_obj[uart_num]->rx_stash_len;
                    vTaskExitCritical(&uart_spinlock[uart_num]);
                    p_uart_obj[uart_num]->rx_buffer_full_flg = 
# 921 "C:/esp/esp-idf/components/driver/uart.c" 3 4
                                                              0
# 921 "C:/esp/esp-idf/components/driver/uart.c"
                                                                   ;
                    uart_enable_rx_intr(p_uart_obj[uart_num]->uart_num);
                }
            }
        }
    }
    xQueueGenericSend( ( QueueHandle_t ) ( p_uart_obj[uart_num]->rx_mux ), 
# 927 "C:/esp/esp-idf/components/driver/uart.c" 3 4
   ((void *)0)
# 927 "C:/esp/esp-idf/components/driver/uart.c"
   , ( ( TickType_t ) 0U ), ( ( BaseType_t ) 0 ) );
    vTaskEnterCritical(&uart_spinlock[uart_num]);
    p_uart_obj[uart_num]->rx_buffered_len -= copy_len;
    vTaskExitCritical(&uart_spinlock[uart_num]);
    return copy_len;
}

esp_err_t uart_get_buffered_data_len(uart_port_t uart_num, size_t* size)
{
    if (!((uart_num < UART_NUM_MAX))) { if (((esp_log_level_t) 3) >= ESP_LOG_ERROR) { esp_log_write(ESP_LOG_ERROR, UART_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), UART_TAG, __FUNCTION__, 936, "uart_num error"); }; return (-1); };
    if (!((p_uart_obj[uart_num]))) { if (((esp_log_level_t) 3) >= ESP_LOG_ERROR) { esp_log_write(ESP_LOG_ERROR, UART_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), UART_TAG, __FUNCTION__, 937, "uart driver error"); }; return (-1); };
    *size = p_uart_obj[uart_num]->rx_buffered_len;
    return 0;
}

esp_err_t uart_flush(uart_port_t uart_num)
{
    if (!((uart_num < UART_NUM_MAX))) { if (((esp_log_level_t) 3) >= ESP_LOG_ERROR) { esp_log_write(ESP_LOG_ERROR, UART_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), UART_TAG, __FUNCTION__, 944, "uart_num error"); }; return (-1); };
    if (!((p_uart_obj[uart_num]))) { if (((esp_log_level_t) 3) >= ESP_LOG_ERROR) { esp_log_write(ESP_LOG_ERROR, UART_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), UART_TAG, __FUNCTION__, 945, "uart driver error"); }; return (-1); };
    uart_obj_t* p_uart = p_uart_obj[uart_num];
    uint8_t* data;
    size_t size;


    xQueueGenericReceive( ( QueueHandle_t ) ( p_uart->rx_mux ), 
# 951 "C:/esp/esp-idf/components/driver/uart.c" 3 4
   ((void *)0)
# 951 "C:/esp/esp-idf/components/driver/uart.c"
   , ( (TickType_t)( TickType_t ) 0xffffffffUL ), ( ( BaseType_t ) 0 ) );
    uart_disable_rx_intr(p_uart_obj[uart_num]->uart_num);
    while(
# 953 "C:/esp/esp-idf/components/driver/uart.c" 3 4
         1
# 953 "C:/esp/esp-idf/components/driver/uart.c"
             ) {
        if(p_uart->rx_head_ptr) {
            vRingbufferReturnItem(p_uart->rx_ring_buf, p_uart->rx_head_ptr);
            vTaskEnterCritical(&uart_spinlock[uart_num]);
            p_uart_obj[uart_num]->rx_buffered_len -= p_uart->rx_cur_remain;
            vTaskExitCritical(&uart_spinlock[uart_num]);
            p_uart->rx_ptr = 
# 959 "C:/esp/esp-idf/components/driver/uart.c" 3 4
                            ((void *)0)
# 959 "C:/esp/esp-idf/components/driver/uart.c"
                                ;
            p_uart->rx_cur_remain = 0;
            p_uart->rx_head_ptr = 
# 961 "C:/esp/esp-idf/components/driver/uart.c" 3 4
                                 ((void *)0)
# 961 "C:/esp/esp-idf/components/driver/uart.c"
                                     ;
        }
        data = (uint8_t*) xRingbufferReceive(p_uart->rx_ring_buf, &size, (TickType_t) 0);
        if(data == 
# 964 "C:/esp/esp-idf/components/driver/uart.c" 3 4
                  ((void *)0)
# 964 "C:/esp/esp-idf/components/driver/uart.c"
                      ) {
            break;
        }
        vTaskEnterCritical(&uart_spinlock[uart_num]);
        p_uart_obj[uart_num]->rx_buffered_len -= size;
        vTaskExitCritical(&uart_spinlock[uart_num]);
        vRingbufferReturnItem(p_uart->rx_ring_buf, data);
        if(p_uart_obj[uart_num]->rx_buffer_full_flg) {
            BaseType_t res = xRingbufferSend(p_uart_obj[uart_num]->rx_ring_buf, p_uart_obj[uart_num]->rx_data_buf, p_uart_obj[uart_num]->rx_stash_len, 1);
            if(res == ( ( BaseType_t ) 1 )) {
                vTaskEnterCritical(&uart_spinlock[uart_num]);
                p_uart_obj[uart_num]->rx_buffered_len += p_uart_obj[uart_num]->rx_stash_len;
                vTaskExitCritical(&uart_spinlock[uart_num]);
                p_uart_obj[uart_num]->rx_buffer_full_flg = 
# 977 "C:/esp/esp-idf/components/driver/uart.c" 3 4
                                                          0
# 977 "C:/esp/esp-idf/components/driver/uart.c"
                                                               ;
            }
        }
    }
    p_uart->rx_ptr = 
# 981 "C:/esp/esp-idf/components/driver/uart.c" 3 4
                    ((void *)0)
# 981 "C:/esp/esp-idf/components/driver/uart.c"
                        ;
    p_uart->rx_cur_remain = 0;
    p_uart->rx_head_ptr = 
# 983 "C:/esp/esp-idf/components/driver/uart.c" 3 4
                         ((void *)0)
# 983 "C:/esp/esp-idf/components/driver/uart.c"
                             ;
    uart_reset_fifo(uart_num);
    uart_enable_rx_intr(p_uart_obj[uart_num]->uart_num);
    xQueueGenericSend( ( QueueHandle_t ) ( p_uart->rx_mux ), 
# 986 "C:/esp/esp-idf/components/driver/uart.c" 3 4
   ((void *)0)
# 986 "C:/esp/esp-idf/components/driver/uart.c"
   , ( ( TickType_t ) 0U ), ( ( BaseType_t ) 0 ) );
    return 0;
}

esp_err_t uart_driver_install(uart_port_t uart_num, int rx_buffer_size, int tx_buffer_size, int queue_size, QueueHandle_t *uart_queue, int intr_alloc_flags)
{
    esp_err_t r;
    if (!((uart_num < UART_NUM_MAX))) { if (((esp_log_level_t) 3) >= ESP_LOG_ERROR) { esp_log_write(ESP_LOG_ERROR, UART_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), UART_TAG, __FUNCTION__, 993, "uart_num error"); }; return (-1); };
    if (!((rx_buffer_size > (128)))) { if (((esp_log_level_t) 3) >= ESP_LOG_ERROR) { esp_log_write(ESP_LOG_ERROR, UART_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), UART_TAG, __FUNCTION__, 994, "uart rx buffer length error(>128)"); }; return (-1); };
    if (!((tx_buffer_size > (128)) || (tx_buffer_size == 0))) { if (((esp_log_level_t) 3) >= ESP_LOG_ERROR) { esp_log_write(ESP_LOG_ERROR, UART_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), UART_TAG, __FUNCTION__, 995, "uart tx buffer length error(>128 or 0)"); }; return (-1); };
    if (!((intr_alloc_flags & (1<<10)) == 0)) { if (((esp_log_level_t) 3) >= ESP_LOG_ERROR) { esp_log_write(ESP_LOG_ERROR, UART_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), UART_TAG, __FUNCTION__, 996, "ESP_INTR_FLAG_IRAM set in intr_alloc_flags"); }; return (-1); };

    if(p_uart_obj[uart_num] == 
# 998 "C:/esp/esp-idf/components/driver/uart.c" 3 4
                              ((void *)0)
# 998 "C:/esp/esp-idf/components/driver/uart.c"
                                  ) {
        p_uart_obj[uart_num] = (uart_obj_t*) malloc(sizeof(uart_obj_t));
        if(p_uart_obj[uart_num] == 
# 1000 "C:/esp/esp-idf/components/driver/uart.c" 3 4
                                  ((void *)0)
# 1000 "C:/esp/esp-idf/components/driver/uart.c"
                                      ) {
            if (((esp_log_level_t) 3) >= ESP_LOG_ERROR) { esp_log_write(ESP_LOG_ERROR, UART_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "UART driver malloc error" "\033[0m" "\n", esp_log_timestamp(), UART_TAG); };
            return -1;
        }
        p_uart_obj[uart_num]->uart_num = uart_num;
        p_uart_obj[uart_num]->tx_fifo_sem = xQueueGenericCreate( ( UBaseType_t ) 1, ( ( uint8_t ) 0U ), ( ( uint8_t ) 3U ) );
        xQueueGenericSend( ( QueueHandle_t ) ( p_uart_obj[uart_num]->tx_fifo_sem ), 
# 1006 "C:/esp/esp-idf/components/driver/uart.c" 3 4
       ((void *)0)
# 1006 "C:/esp/esp-idf/components/driver/uart.c"
       , ( ( TickType_t ) 0U ), ( ( BaseType_t ) 0 ) );
        p_uart_obj[uart_num]->tx_done_sem = xQueueGenericCreate( ( UBaseType_t ) 1, ( ( uint8_t ) 0U ), ( ( uint8_t ) 3U ) );
        p_uart_obj[uart_num]->tx_brk_sem = xQueueGenericCreate( ( UBaseType_t ) 1, ( ( uint8_t ) 0U ), ( ( uint8_t ) 3U ) );
        p_uart_obj[uart_num]->tx_mux = xQueueCreateMutex( ( ( uint8_t ) 1U ) );
        p_uart_obj[uart_num]->rx_mux = xQueueCreateMutex( ( ( uint8_t ) 1U ) );
        p_uart_obj[uart_num]->queue_size = queue_size;
        p_uart_obj[uart_num]->tx_ptr = 
# 1012 "C:/esp/esp-idf/components/driver/uart.c" 3 4
                                      ((void *)0)
# 1012 "C:/esp/esp-idf/components/driver/uart.c"
                                          ;
        p_uart_obj[uart_num]->tx_head = 
# 1013 "C:/esp/esp-idf/components/driver/uart.c" 3 4
                                       ((void *)0)
# 1013 "C:/esp/esp-idf/components/driver/uart.c"
                                           ;
        p_uart_obj[uart_num]->tx_len_tot = 0;
        p_uart_obj[uart_num]->tx_brk_flg = 0;
        p_uart_obj[uart_num]->tx_brk_len = 0;
        p_uart_obj[uart_num]->tx_waiting_brk = 0;
        p_uart_obj[uart_num]->rx_buffered_len = 0;

        if(uart_queue) {
            p_uart_obj[uart_num]->xQueueUart = xQueueGenericCreate( ( queue_size ), ( sizeof(uart_event_t) ), ( ( ( uint8_t ) 0U ) ) );
            *uart_queue = p_uart_obj[uart_num]->xQueueUart;
            if (((esp_log_level_t) 3) >= ESP_LOG_INFO) { esp_log_write(ESP_LOG_INFO, UART_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "queue free spaces: %d" "\033[0m" "\n", esp_log_timestamp(), UART_TAG, uxQueueSpacesAvailable(p_uart_obj[uart_num]->xQueueUart)); };
        } else {
            p_uart_obj[uart_num]->xQueueUart = 
# 1025 "C:/esp/esp-idf/components/driver/uart.c" 3 4
                                              ((void *)0)
# 1025 "C:/esp/esp-idf/components/driver/uart.c"
                                                  ;
        }
        p_uart_obj[uart_num]->rx_buffer_full_flg = 
# 1027 "C:/esp/esp-idf/components/driver/uart.c" 3 4
                                                  0
# 1027 "C:/esp/esp-idf/components/driver/uart.c"
                                                       ;
        p_uart_obj[uart_num]->tx_waiting_fifo = 
# 1028 "C:/esp/esp-idf/components/driver/uart.c" 3 4
                                               0
# 1028 "C:/esp/esp-idf/components/driver/uart.c"
                                                    ;
        p_uart_obj[uart_num]->rx_ptr = 
# 1029 "C:/esp/esp-idf/components/driver/uart.c" 3 4
                                      ((void *)0)
# 1029 "C:/esp/esp-idf/components/driver/uart.c"
                                          ;
        p_uart_obj[uart_num]->rx_cur_remain = 0;
        p_uart_obj[uart_num]->rx_head_ptr = 
# 1031 "C:/esp/esp-idf/components/driver/uart.c" 3 4
                                           ((void *)0)
# 1031 "C:/esp/esp-idf/components/driver/uart.c"
                                               ;
        p_uart_obj[uart_num]->rx_ring_buf = xRingbufferCreate(rx_buffer_size, RINGBUF_TYPE_BYTEBUF);
        if(tx_buffer_size > 0) {
            p_uart_obj[uart_num]->tx_ring_buf = xRingbufferCreate(tx_buffer_size, RINGBUF_TYPE_NOSPLIT);
            p_uart_obj[uart_num]->tx_buf_size = tx_buffer_size;
        } else {
            p_uart_obj[uart_num]->tx_ring_buf = 
# 1037 "C:/esp/esp-idf/components/driver/uart.c" 3 4
                                               ((void *)0)
# 1037 "C:/esp/esp-idf/components/driver/uart.c"
                                                   ;
            p_uart_obj[uart_num]->tx_buf_size = 0;
        }
    } else {
        if (((esp_log_level_t) 3) >= ESP_LOG_ERROR) { esp_log_write(ESP_LOG_ERROR, UART_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "UART driver already installed" "\033[0m" "\n", esp_log_timestamp(), UART_TAG); };
        return -1;
    }

    r=uart_isr_register(uart_num, uart_rx_intr_handler_default, p_uart_obj[uart_num], intr_alloc_flags, &p_uart_obj[uart_num]->intr_handle);
    if (r!=0) goto err;
    uart_intr_config_t uart_intr = {
        .intr_enable_mask = ((1UL << (0)))
                            | ((1UL << (8)))
                            | ((1UL << (3)))
                            | ((1UL << (4)))
                            | ((1UL << (7)))
                            | ((1UL << (2))),
        .rxfifo_full_thresh = (120),
        .rx_timeout_thresh = (10),
        .txfifo_empty_intr_thresh = (10)
    };
    r=uart_intr_config(uart_num, &uart_intr);
    if (r!=0) goto err;
    return r;

err:
    uart_driver_delete(uart_num);
    return r;
}


esp_err_t uart_driver_delete(uart_port_t uart_num)
{
    if (!((uart_num < UART_NUM_MAX))) { if (((esp_log_level_t) 3) >= ESP_LOG_ERROR) { esp_log_write(ESP_LOG_ERROR, UART_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), UART_TAG, __FUNCTION__, 1070, "uart_num error"); }; return (-1); };
    if(p_uart_obj[uart_num] == 
# 1071 "C:/esp/esp-idf/components/driver/uart.c" 3 4
                              ((void *)0)
# 1071 "C:/esp/esp-idf/components/driver/uart.c"
                                  ) {
        if (((esp_log_level_t) 3) >= ESP_LOG_INFO) { esp_log_write(ESP_LOG_INFO, UART_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "ALREADY NULL" "\033[0m" "\n", esp_log_timestamp(), UART_TAG); };
        return 0;
    }
    esp_intr_free(p_uart_obj[uart_num]->intr_handle);
    uart_disable_rx_intr(uart_num);
    uart_disable_tx_intr(uart_num);

    if(p_uart_obj[uart_num]->tx_fifo_sem) {
        vQueueDelete( ( QueueHandle_t ) ( p_uart_obj[uart_num]->tx_fifo_sem ) );
        p_uart_obj[uart_num]->tx_fifo_sem = 
# 1081 "C:/esp/esp-idf/components/driver/uart.c" 3 4
                                           ((void *)0)
# 1081 "C:/esp/esp-idf/components/driver/uart.c"
                                               ;
    }
    if(p_uart_obj[uart_num]->tx_done_sem) {
        vQueueDelete( ( QueueHandle_t ) ( p_uart_obj[uart_num]->tx_done_sem ) );
        p_uart_obj[uart_num]->tx_done_sem = 
# 1085 "C:/esp/esp-idf/components/driver/uart.c" 3 4
                                           ((void *)0)
# 1085 "C:/esp/esp-idf/components/driver/uart.c"
                                               ;
    }
    if(p_uart_obj[uart_num]->tx_brk_sem) {
        vQueueDelete( ( QueueHandle_t ) ( p_uart_obj[uart_num]->tx_brk_sem ) );
        p_uart_obj[uart_num]->tx_brk_sem = 
# 1089 "C:/esp/esp-idf/components/driver/uart.c" 3 4
                                          ((void *)0)
# 1089 "C:/esp/esp-idf/components/driver/uart.c"
                                              ;
    }
    if(p_uart_obj[uart_num]->tx_mux) {
        vQueueDelete( ( QueueHandle_t ) ( p_uart_obj[uart_num]->tx_mux ) );
        p_uart_obj[uart_num]->tx_mux = 
# 1093 "C:/esp/esp-idf/components/driver/uart.c" 3 4
                                      ((void *)0)
# 1093 "C:/esp/esp-idf/components/driver/uart.c"
                                          ;
    }
    if(p_uart_obj[uart_num]->rx_mux) {
        vQueueDelete( ( QueueHandle_t ) ( p_uart_obj[uart_num]->rx_mux ) );
        p_uart_obj[uart_num]->rx_mux = 
# 1097 "C:/esp/esp-idf/components/driver/uart.c" 3 4
                                      ((void *)0)
# 1097 "C:/esp/esp-idf/components/driver/uart.c"
                                          ;
    }
    if(p_uart_obj[uart_num]->xQueueUart) {
        vQueueDelete(p_uart_obj[uart_num]->xQueueUart);
        p_uart_obj[uart_num]->xQueueUart = 
# 1101 "C:/esp/esp-idf/components/driver/uart.c" 3 4
                                          ((void *)0)
# 1101 "C:/esp/esp-idf/components/driver/uart.c"
                                              ;
    }
    if(p_uart_obj[uart_num]->rx_ring_buf) {
        vRingbufferDelete(p_uart_obj[uart_num]->rx_ring_buf);
        p_uart_obj[uart_num]->rx_ring_buf = 
# 1105 "C:/esp/esp-idf/components/driver/uart.c" 3 4
                                           ((void *)0)
# 1105 "C:/esp/esp-idf/components/driver/uart.c"
                                               ;
    }
    if(p_uart_obj[uart_num]->tx_ring_buf) {
        vRingbufferDelete(p_uart_obj[uart_num]->tx_ring_buf);
        p_uart_obj[uart_num]->tx_ring_buf = 
# 1109 "C:/esp/esp-idf/components/driver/uart.c" 3 4
                                           ((void *)0)
# 1109 "C:/esp/esp-idf/components/driver/uart.c"
                                               ;
    }

    free(p_uart_obj[uart_num]);
    p_uart_obj[uart_num] = 
# 1113 "C:/esp/esp-idf/components/driver/uart.c" 3 4
                          ((void *)0)
# 1113 "C:/esp/esp-idf/components/driver/uart.c"
                              ;
    return 0;
}
