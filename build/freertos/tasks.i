# 1 "C:/esp/esp-idf/components/freertos/tasks.c"
# 1 "C:\\esp\\ArkPOS2-esp\\build\\freertos//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "C:/esp/esp-idf/components/freertos/tasks.c"
# 71 "C:/esp/esp-idf/components/freertos/tasks.c"
# 1 "C:/esp/esp-idf/components/newlib/include/stdlib.h" 1
# 10 "C:/esp/esp-idf/components/newlib/include/stdlib.h"
# 1 "C:/esp/esp-idf/components/newlib/include/machine/ieeefp.h" 1
# 11 "C:/esp/esp-idf/components/newlib/include/stdlib.h" 2
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
# 12 "C:/esp/esp-idf/components/newlib/include/stdlib.h" 2




# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 216 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 3 4

# 216 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 3 4
typedef unsigned int size_t;
# 328 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 3 4
typedef short unsigned int wchar_t;
# 17 "C:/esp/esp-idf/components/newlib/include/stdlib.h" 2

# 1 "C:/esp/esp-idf/components/newlib/include/sys/reent.h" 1
# 13 "C:/esp/esp-idf/components/newlib/include/sys/reent.h"
# 1 "C:/esp/esp-idf/components/newlib/include/_ansi.h" 1
# 14 "C:/esp/esp-idf/components/newlib/include/sys/reent.h" 2
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 149 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 3 4
typedef int ptrdiff_t;
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
# 19 "C:/esp/esp-idf/components/newlib/include/stdlib.h" 2
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




# 72 "C:/esp/esp-idf/components/freertos/tasks.c" 2
# 1 "C:/esp/esp-idf/components/newlib/include/string.h" 1
# 17 "C:/esp/esp-idf/components/newlib/include/string.h"
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


# 73 "C:/esp/esp-idf/components/freertos/tasks.c" 2






# 1 "C:/esp/esp-idf/components/esp32/include/rom/ets_sys.h" 1
# 18 "C:/esp/esp-idf/components/esp32/include/rom/ets_sys.h"
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
# 19 "C:/esp/esp-idf/components/esp32/include/rom/ets_sys.h" 2
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
# 80 "C:/esp/esp-idf/components/freertos/tasks.c" 2
# 1 "C:/esp/esp-idf/components/newlib/platform_include/esp_newlib.h" 1
# 26 "C:/esp/esp-idf/components/newlib/platform_include/esp_newlib.h"
void esp_reent_init(struct _reent* r);







void esp_setup_syscall_table();




void esp_set_time_from_rtc();
# 81 "C:/esp/esp-idf/components/freertos/tasks.c" 2
# 1 "C:/esp/esp-idf/components/esp32/include/esp_panic.h" 1
# 22 "C:/esp/esp-idf/components/esp32/include/esp_panic.h"
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
# 23 "C:/esp/esp-idf/components/esp32/include/esp_panic.h" 2
# 31 "C:/esp/esp-idf/components/esp32/include/esp_panic.h"
void esp_set_breakpoint_if_jtag(void *fn);
# 53 "C:/esp/esp-idf/components/esp32/include/esp_panic.h"
esp_err_t esp_set_watchpoint(int no, void *adr, int size, int flags);
# 62 "C:/esp/esp-idf/components/esp32/include/esp_panic.h"
void esp_clear_watchpoint(int no);





void esp_panic_wdt_stop(void);




static inline 
# 73 "C:/esp/esp-idf/components/esp32/include/esp_panic.h" 3 4
             _Bool 
# 73 "C:/esp/esp-idf/components/esp32/include/esp_panic.h"
                  esp_stack_ptr_is_sane(uint32_t sp)
{
 return !(sp < 0x3ffae010UL || sp > 0x3ffffff0UL || ((sp & 0xf) != 0));
}
# 82 "C:/esp/esp-idf/components/freertos/tasks.c" 2


# 1 "C:/esp/esp-idf/components/freertos/include/freertos/FreeRTOS.h" 1
# 76 "C:/esp/esp-idf/components/freertos/include/freertos/FreeRTOS.h"
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 77 "C:/esp/esp-idf/components/freertos/include/freertos/FreeRTOS.h" 2
# 99 "C:/esp/esp-idf/components/freertos/include/freertos/FreeRTOS.h"
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
# 21 "C:/esp/esp-idf/components/esp32/include/esp_system.h"
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
# 85 "C:/esp/esp-idf/components/freertos/tasks.c" 2
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
# 86 "C:/esp/esp-idf/components/freertos/tasks.c" 2
# 1 "C:/esp/esp-idf/components/freertos/include/freertos/timers.h" 1
# 80 "C:/esp/esp-idf/components/freertos/include/freertos/timers.h"
# 1 "C:/esp/esp-idf/components/freertos/include/freertos/task.h" 1
# 81 "C:/esp/esp-idf/components/freertos/include/freertos/timers.h" 2
# 118 "C:/esp/esp-idf/components/freertos/include/freertos/timers.h"
typedef void * TimerHandle_t;




typedef void (*TimerCallbackFunction_t)( TimerHandle_t xTimer );





typedef void (*PendedFunction_t)( void *, uint32_t );
# 260 "C:/esp/esp-idf/components/freertos/include/freertos/timers.h"
TimerHandle_t xTimerCreate( const char * const pcTimerName, const TickType_t xTimerPeriodInTicks, const UBaseType_t uxAutoReload, void * const pvTimerID, TimerCallbackFunction_t pxCallbackFunction ) ;
# 282 "C:/esp/esp-idf/components/freertos/include/freertos/timers.h"
void *pvTimerGetTimerID( TimerHandle_t xTimer ) ;
# 319 "C:/esp/esp-idf/components/freertos/include/freertos/timers.h"
BaseType_t xTimerIsTimerActive( TimerHandle_t xTimer ) ;
# 330 "C:/esp/esp-idf/components/freertos/include/freertos/timers.h"
TaskHandle_t xTimerGetTimerDaemonTaskHandle( void );
# 1065 "C:/esp/esp-idf/components/freertos/include/freertos/timers.h"
BaseType_t xTimerPendFunctionCallFromISR( PendedFunction_t xFunctionToPend, void *pvParameter1, uint32_t ulParameter2, BaseType_t *pxHigherPriorityTaskWoken );
# 1099 "C:/esp/esp-idf/components/freertos/include/freertos/timers.h"
BaseType_t xTimerPendFunctionCall( PendedFunction_t xFunctionToPend, void *pvParameter1, uint32_t ulParameter2, TickType_t xTicksToWait );
# 1110 "C:/esp/esp-idf/components/freertos/include/freertos/timers.h"
const char * pcTimerGetTimerName( TimerHandle_t xTimer );





BaseType_t xTimerCreateTimerTask( void ) ;
BaseType_t xTimerGenericCommand( TimerHandle_t xTimer, const BaseType_t xCommandID, const TickType_t xOptionalValue, BaseType_t * const pxHigherPriorityTaskWoken, const TickType_t xTicksToWait ) ;
# 87 "C:/esp/esp-idf/components/freertos/tasks.c" 2
# 1 "C:/esp/esp-idf/components/freertos/include/freertos/StackMacros.h" 1
# 88 "C:/esp/esp-idf/components/freertos/tasks.c" 2
# 1 "C:/esp/esp-idf/components/freertos/include/freertos/portmacro.h" 1
# 89 "C:/esp/esp-idf/components/freertos/tasks.c" 2
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
# 90 "C:/esp/esp-idf/components/freertos/tasks.c" 2
# 131 "C:/esp/esp-idf/components/freertos/tasks.c"
typedef enum
{
 eNotWaitingNotification = 0,
 eWaitingNotification,
 eNotified
} eNotifyValue;
# 163 "C:/esp/esp-idf/components/freertos/tasks.c"
typedef struct tskTaskControlBlock
{
 volatile StackType_t *pxTopOfStack;


  xMPU_SETTINGS xMPUSettings;


 ListItem_t xGenericListItem;
 ListItem_t xEventListItem;
 UBaseType_t uxPriority;
 StackType_t *pxStack;
 char pcTaskName[ ( 16 ) ];
 BaseType_t xCoreID;


  StackType_t *pxEndOfStack;



  UBaseType_t uxCriticalNesting;
  uint32_t uxOldInterruptState;
# 193 "C:/esp/esp-idf/components/freertos/tasks.c"
  UBaseType_t uxBasePriority;
  UBaseType_t uxMutexesHeld;







  void *pvThreadLocalStoragePointers[ 1 ];

  TlsDeleteCallbackFunction_t pvThreadLocalStoragePointersDelCallback[ 1 ];
# 220 "C:/esp/esp-idf/components/freertos/tasks.c"
  struct _reent xNewLib_reent;



  volatile uint32_t ulNotifiedValue;
  volatile eNotifyValue eNotifyState;





  uint8_t ucStaticallyAllocated;


} tskTCB;



typedef tskTCB TCB_t;


_Static_assert(sizeof(StaticTask_t) == sizeof(TCB_t), "StaticTask_t != TCB_t");
# 255 "C:/esp/esp-idf/components/freertos/tasks.c"
 TCB_t * volatile pxCurrentTCB[ 1 ] = { 
# 255 "C:/esp/esp-idf/components/freertos/tasks.c" 3 4
                                                                       ((void *)0) 
# 255 "C:/esp/esp-idf/components/freertos/tasks.c"
                                                                            };


 static List_t pxReadyTasksLists[ ( 25 ) ];
 static List_t xDelayedTaskList1;
 static List_t xDelayedTaskList2;
 static List_t * volatile pxDelayedTaskList;
 static List_t * volatile pxOverflowDelayedTaskList;
 static List_t xPendingReadyList[ 1 ];



 static List_t xTasksWaitingTermination;
 static volatile UBaseType_t uxTasksDeleted = ( UBaseType_t ) 0U;





 static List_t xSuspendedTaskList;





 static TaskHandle_t xIdleTaskHandle[1] = {
# 280 "C:/esp/esp-idf/components/freertos/tasks.c" 3 4
                                                                           ((void *)0)
# 280 "C:/esp/esp-idf/components/freertos/tasks.c"
                                                                               };




 static volatile UBaseType_t uxCurrentNumberOfTasks = ( UBaseType_t ) 0U;
 static volatile TickType_t xTickCount = ( TickType_t ) 0U;
 static volatile UBaseType_t uxTopReadyPriority = ( ( UBaseType_t ) 0U );
 static volatile BaseType_t xSchedulerRunning = ( ( BaseType_t ) 0 );
 static volatile UBaseType_t uxPendedTicks = ( UBaseType_t ) 0U;
 static volatile BaseType_t xYieldPending[1] = {( ( BaseType_t ) 0 )};
 static volatile BaseType_t xNumOfOverflows = ( BaseType_t ) 0;
 static UBaseType_t uxTaskNumber = ( UBaseType_t ) 0U;
 static volatile TickType_t xNextTaskUnblockTime = ( TickType_t ) 0xffffffffUL;
# 303 "C:/esp/esp-idf/components/freertos/tasks.c"
 static volatile UBaseType_t uxSchedulerSuspended[ 1 ] = { ( UBaseType_t ) ( ( BaseType_t ) 0 ) };



 static portMUX_TYPE xTaskQueueMutex = { .owner = 0xB33FFFFF, .count = 0, };
 static portMUX_TYPE xTickCountMutex = { .owner = 0xB33FFFFF, .count = 0, };
# 321 "C:/esp/esp-idf/components/freertos/tasks.c"
 static volatile BaseType_t xSwitchingContext[ 1 ] = { ( ( BaseType_t ) 0 ) };
# 486 "C:/esp/esp-idf/components/freertos/tasks.c"
 extern void vApplicationStackOverflowHook( TaskHandle_t xTask, char *pcTaskName );





extern void esp_vApplicationTickHook( void );


 extern void vPortFirstTaskHook(TaskFunction_t taskfn);
# 509 "C:/esp/esp-idf/components/freertos/tasks.c"
 static BaseType_t prvTaskIsTaskSuspended( const TaskHandle_t xTask ) ;






static void prvInitialiseTaskLists( void ) ;
# 529 "C:/esp/esp-idf/components/freertos/tasks.c"
static void prvIdleTask( void *pvParameters );
# 540 "C:/esp/esp-idf/components/freertos/tasks.c"
 static void prvDeleteTCB( TCB_t *pxTCB ) ;
# 549 "C:/esp/esp-idf/components/freertos/tasks.c"
static void prvCheckTasksWaitingTermination( void ) ;





static void prvAddCurrentTaskToDelayedList( const int xCoreID, const TickType_t xTimeToWake ) ;
# 578 "C:/esp/esp-idf/components/freertos/tasks.c"
 static uint32_t prvTaskCheckFreeStackSpace( const uint8_t * pucStackByte ) ;
# 601 "C:/esp/esp-idf/components/freertos/tasks.c"
static void prvResetNextTaskUnblockTime( void );
# 617 "C:/esp/esp-idf/components/freertos/tasks.c"
static void prvInitialiseNewTask( TaskFunction_t pxTaskCode,
         const char * const pcName,
         const uint32_t ulStackDepth,
         void * const pvParameters,
         UBaseType_t uxPriority,
         TaskHandle_t * const pxCreatedTask,
         TCB_t *pxNewTCB,
         const MemoryRegion_t * const xRegions, const BaseType_t xCoreID) ;





static void prvAddNewTaskToReadyList( TCB_t *pxNewTCB, TaskFunction_t pxTaskCode, const BaseType_t xCoreID ) ;
# 643 "C:/esp/esp-idf/components/freertos/tasks.c"
void taskYIELD_OTHER_CORE( BaseType_t xCoreID, UBaseType_t uxPriority )
{
 TCB_t *curTCB = pxCurrentTCB[xCoreID];
 BaseType_t i;

 if (xCoreID != 0x7fffffff) {
  if ( curTCB->uxPriority < uxPriority ) {
   vPortYieldOtherCore( xCoreID );
  }
 }
 else
 {

  for (i=0; i<1; i++) {
   if (i != xPortGetCoreID() && pxCurrentTCB[ i ]->uxPriority < uxPriority)
   {
    vPortYieldOtherCore( i );
    break;
   }
  }
 }
}
# 715 "C:/esp/esp-idf/components/freertos/tasks.c"
 BaseType_t xTaskCreateRestricted( const TaskParameters_t * const pxTaskDefinition, TaskHandle_t *pxCreatedTask )
 {
 TCB_t *pxNewTCB;
 BaseType_t xReturn = ( -1 );

  if (!(pxTaskDefinition->puxStackBuffer)) { ets_printf("%s:%d (%s)- assert failed!\n", "C:/esp/esp-idf/components/freertos/tasks.c", 720, __FUNCTION__); abort(); };

  if( pxTaskDefinition->puxStackBuffer != 
# 722 "C:/esp/esp-idf/components/freertos/tasks.c" 3 4
                                         ((void *)0) 
# 722 "C:/esp/esp-idf/components/freertos/tasks.c"
                                              )
  {



   pxNewTCB = ( TCB_t * ) malloc( sizeof( TCB_t ) );

   if( pxNewTCB != 
# 729 "C:/esp/esp-idf/components/freertos/tasks.c" 3 4
                  ((void *)0) 
# 729 "C:/esp/esp-idf/components/freertos/tasks.c"
                       )
   {

    pxNewTCB->pxStack = pxTaskDefinition->puxStackBuffer;




    pxNewTCB->ucStaticallyAllocated = ( ( uint8_t ) 1 );

    prvInitialiseNewTask( pxTaskDefinition->pvTaskCode,
          pxTaskDefinition->pcName,
          pxTaskDefinition->usStackDepth,
          pxTaskDefinition->pvParameters,
          pxTaskDefinition->uxPriority,
          pxCreatedTask, pxNewTCB,
          pxTaskDefinition->xRegions,
          0x7fffffff );

    prvAddNewTaskToReadyList( pxNewTCB, pxTaskDefinition->pvTaskCode, 0x7fffffff );
    xReturn = ( ( ( BaseType_t ) 1 ) );
   }
  }

  return xReturn;
 }






 BaseType_t xTaskCreatePinnedToCore( TaskFunction_t pxTaskCode,
       const char * const pcName,
       const uint32_t usStackDepth,
       void * const pvParameters,
       UBaseType_t uxPriority,
       TaskHandle_t * const pxCreatedTask,
                            const BaseType_t xCoreID )
 {
 TCB_t *pxNewTCB;
 BaseType_t xReturn;
# 798 "C:/esp/esp-idf/components/freertos/tasks.c"
  {
  StackType_t *pxStack;


   pxStack = ( StackType_t * ) malloc( ( ( ( size_t ) usStackDepth ) * sizeof( StackType_t ) ) );

   if( pxStack != 
# 804 "C:/esp/esp-idf/components/freertos/tasks.c" 3 4
                 ((void *)0) 
# 804 "C:/esp/esp-idf/components/freertos/tasks.c"
                      )
   {

    pxNewTCB = ( TCB_t * ) malloc( sizeof( TCB_t ) );

    if( pxNewTCB != 
# 809 "C:/esp/esp-idf/components/freertos/tasks.c" 3 4
                   ((void *)0) 
# 809 "C:/esp/esp-idf/components/freertos/tasks.c"
                        )
    {

     pxNewTCB->pxStack = pxStack;
    }
    else
    {


     free( pxStack );
    }
   }
   else
   {
    pxNewTCB = 
# 823 "C:/esp/esp-idf/components/freertos/tasks.c" 3 4
              ((void *)0)
# 823 "C:/esp/esp-idf/components/freertos/tasks.c"
                  ;
   }
  }


  if( pxNewTCB != 
# 828 "C:/esp/esp-idf/components/freertos/tasks.c" 3 4
                 ((void *)0) 
# 828 "C:/esp/esp-idf/components/freertos/tasks.c"
                      )
  {

   {


    pxNewTCB->ucStaticallyAllocated = ( ( uint8_t ) 0 );
   }


   prvInitialiseNewTask( pxTaskCode, pcName, usStackDepth, pvParameters, uxPriority, pxCreatedTask, pxNewTCB, 
# 838 "C:/esp/esp-idf/components/freertos/tasks.c" 3 4
                                                                                                             ((void *)0)
# 838 "C:/esp/esp-idf/components/freertos/tasks.c"
                                                                                                                 , xCoreID );
   prvAddNewTaskToReadyList( pxNewTCB, pxTaskCode, xCoreID );
   xReturn = ( ( ( BaseType_t ) 1 ) );
  }
  else
  {
   xReturn = ( -1 );
  }

  return xReturn;
 }




static void prvInitialiseNewTask( TaskFunction_t pxTaskCode,
         const char * const pcName,
         const uint32_t ulStackDepth,
         void * const pvParameters,
         UBaseType_t uxPriority,
         TaskHandle_t * const pxCreatedTask,
         TCB_t *pxNewTCB,
         const MemoryRegion_t * const xRegions, const BaseType_t xCoreID )
{
StackType_t *pxTopOfStack;
UBaseType_t x;



  BaseType_t xRunPrivileged;
  if( ( uxPriority & ( ( UBaseType_t ) 0x00 ) ) != 0U )
  {
   xRunPrivileged = ( ( BaseType_t ) 1 );
  }
  else
  {
   xRunPrivileged = ( ( BaseType_t ) 0 );
  }
  uxPriority &= ~( ( UBaseType_t ) 0x00 );




 {

  ( void ) memset( pxNewTCB->pxStack, ( int ) ( 0xa5U ), ( size_t ) ulStackDepth * sizeof( StackType_t ) );
 }







 {
  pxTopOfStack = pxNewTCB->pxStack + ( ulStackDepth - ( uint32_t ) 1 );
  pxTopOfStack = ( StackType_t * ) ( ( ( uint32_t ) pxTopOfStack ) & ( ~( ( uint32_t ) ( 0x0003 ) ) ) );


  if (!(( ( ( uint32_t ) pxTopOfStack & ( uint32_t ) ( 0x0003 ) ) == 0UL ))) { ets_printf("%s:%d (%s)- assert failed!\n", "C:/esp/esp-idf/components/freertos/tasks.c", 897, __FUNCTION__); abort(); };

  {

   pxNewTCB->pxEndOfStack = pxTopOfStack;
  }

 }
# 919 "C:/esp/esp-idf/components/freertos/tasks.c"
 for( x = ( UBaseType_t ) 0; x < ( UBaseType_t ) ( 16 ); x++ )
 {
  pxNewTCB->pcTaskName[ x ] = pcName[ x ];




  if( pcName[ x ] == 0x00 )
  {
   break;
  }
  else
  {
   ;
  }
 }



 pxNewTCB->pcTaskName[ ( 16 ) - 1 ] = '\0';



 if( uxPriority >= ( UBaseType_t ) ( 25 ) )
 {
  uxPriority = ( UBaseType_t ) ( 25 ) - ( UBaseType_t ) 1U;
 }
 else
 {
  ;
 }

 pxNewTCB->uxPriority = uxPriority;
 pxNewTCB->xCoreID = xCoreID;

 {
  pxNewTCB->uxBasePriority = uxPriority;
  pxNewTCB->uxMutexesHeld = 0;
 }


 vListInitialiseItem( &( pxNewTCB->xGenericListItem ) );
 vListInitialiseItem( &( pxNewTCB->xEventListItem ) );



 ( ( &( pxNewTCB->xGenericListItem ) )->pvOwner = ( void * ) ( pxNewTCB ) );


 ( ( &( pxNewTCB->xEventListItem ) )->xItemValue = ( ( TickType_t ) ( 25 ) - ( TickType_t ) uxPriority ) );
 ( ( &( pxNewTCB->xEventListItem ) )->pvOwner = ( void * ) ( pxNewTCB ) );


 {
  pxNewTCB->uxCriticalNesting = ( UBaseType_t ) 0U;
 }
# 990 "C:/esp/esp-idf/components/freertos/tasks.c"
 {
  vPortStoreTaskMPUSettings( &( pxNewTCB->xMPUSettings ), xRegions, pxNewTCB->pxStack, ulStackDepth );
 }
# 1001 "C:/esp/esp-idf/components/freertos/tasks.c"
 {
  for( x = 0; x < ( UBaseType_t ) 1; x++ )
  {
   pxNewTCB->pvThreadLocalStoragePointers[ x ] = 
# 1004 "C:/esp/esp-idf/components/freertos/tasks.c" 3 4
                                                ((void *)0)
# 1004 "C:/esp/esp-idf/components/freertos/tasks.c"
                                                    ;

   pxNewTCB->pvThreadLocalStoragePointersDelCallback[ x ] = 
# 1006 "C:/esp/esp-idf/components/freertos/tasks.c" 3 4
                                                           ((void *)0)
# 1006 "C:/esp/esp-idf/components/freertos/tasks.c"
                                                               ;

  }
 }



 {
  pxNewTCB->ulNotifiedValue = 0;
  pxNewTCB->eNotifyState = eNotWaitingNotification;
 }



 {

  esp_reent_init(&pxNewTCB->xNewLib_reent);
 }
# 1037 "C:/esp/esp-idf/components/freertos/tasks.c"
 {
  pxNewTCB->pxTopOfStack = pxPortInitialiseStack( pxTopOfStack, pxTaskCode, pvParameters, xRunPrivileged );
 }






 if( ( void * ) pxCreatedTask != 
# 1046 "C:/esp/esp-idf/components/freertos/tasks.c" 3 4
                                ((void *)0) 
# 1046 "C:/esp/esp-idf/components/freertos/tasks.c"
                                     )
 {


  *pxCreatedTask = ( TaskHandle_t ) pxNewTCB;
 }
 else
 {
  ;
 }
}


static void prvAddNewTaskToReadyList( TCB_t *pxNewTCB, TaskFunction_t pxTaskCode, BaseType_t xCoreID )
{
 TCB_t *curTCB, *tcb0, *tcb1;




 if (!(xCoreID == 0x7fffffff || xCoreID < 1)) { ets_printf("%s:%d (%s)- assert failed!\n", "C:/esp/esp-idf/components/freertos/tasks.c", 1066, __FUNCTION__); abort(); };



 vTaskEnterCritical(&xTaskQueueMutex);
 {
  uxCurrentNumberOfTasks++;


  if ( xCoreID == 0x7fffffff )
  {
   if ( 1 == 1 )
   {
    xCoreID = 0;
   }
   else
   {



    tcb0 = pxCurrentTCB[0];
    tcb1 = pxCurrentTCB[1];
    if ( tcb0 == 
# 1088 "C:/esp/esp-idf/components/freertos/tasks.c" 3 4
                ((void *)0) 
# 1088 "C:/esp/esp-idf/components/freertos/tasks.c"
                     )
    {
     xCoreID = 0;
    }
    else if ( tcb1 == 
# 1092 "C:/esp/esp-idf/components/freertos/tasks.c" 3 4
                     ((void *)0) 
# 1092 "C:/esp/esp-idf/components/freertos/tasks.c"
                          )
    {
     xCoreID = 1;
    }
    else if ( tcb0->uxPriority < pxNewTCB->uxPriority && tcb0->uxPriority < tcb1->uxPriority )
    {
     xCoreID = 0;
    }
    else if ( tcb1->uxPriority < pxNewTCB->uxPriority )
    {
     xCoreID = 1;
    }
    else
    {
     xCoreID = xPortGetCoreID();
    }
   }
  }


  if( pxCurrentTCB[ xCoreID ] == 
# 1112 "C:/esp/esp-idf/components/freertos/tasks.c" 3 4
                                ((void *)0) 
# 1112 "C:/esp/esp-idf/components/freertos/tasks.c"
                                     )
  {


   pxCurrentTCB[ xCoreID ] = pxNewTCB;

   if( uxCurrentNumberOfTasks == ( UBaseType_t ) 1 )
   {

    if ( xPortGetCoreID() == 0 ) {
     vPortFirstTaskHook(pxTaskCode);
    }




    prvInitialiseTaskLists();
   }
   else
   {
    ;
   }
  }
  else
  {



   if( xSchedulerRunning == ( ( BaseType_t ) 0 ) )
   {


    if ( pxCurrentTCB[xCoreID] == 
# 1144 "C:/esp/esp-idf/components/freertos/tasks.c" 3 4
                                 ((void *)0) 
# 1144 "C:/esp/esp-idf/components/freertos/tasks.c"
                                      || pxCurrentTCB[xCoreID]->uxPriority <= pxNewTCB->uxPriority )
    {
     pxCurrentTCB[xCoreID] = pxNewTCB;
    }
   }
   else
   {
    ;
   }
  }

  uxTaskNumber++;







  ;

  ; { if( ( ( pxNewTCB )->uxPriority ) > uxTopReadyPriority ) { uxTopReadyPriority = ( ( pxNewTCB )->uxPriority ); } }; vListInsertEnd( &( pxReadyTasksLists[ ( pxNewTCB )->uxPriority ] ), &( ( pxNewTCB )->xGenericListItem ) );

  ( void ) pxNewTCB;
 }

 vTaskExitCritical(&xTaskQueueMutex);

 if( xSchedulerRunning != ( ( BaseType_t ) 0 ) )
 {
  vTaskEnterCritical(&xTaskQueueMutex);

  curTCB = pxCurrentTCB[ xCoreID ];



  if( curTCB == 
# 1180 "C:/esp/esp-idf/components/freertos/tasks.c" 3 4
               ((void *)0) 
# 1180 "C:/esp/esp-idf/components/freertos/tasks.c"
                    || curTCB->uxPriority < pxNewTCB->uxPriority )
  {
   if( xCoreID == xPortGetCoreID() )
   {
    esp_crosscore_int_send_yield(xPortGetCoreID());
   }
   else {
    taskYIELD_OTHER_CORE(xCoreID, pxNewTCB->uxPriority);
   }
  }
  else
  {
   ;
  }
  vTaskExitCritical(&xTaskQueueMutex);
 }
 else
 {
  ;
 }
}



 void vTaskDelete( TaskHandle_t xTaskToDelete )
 {
 TCB_t *pxTCB;
  vTaskEnterCritical(&xTaskQueueMutex);
  {


   pxTCB = ( ( ( xTaskToDelete ) == 
# 1211 "C:/esp/esp-idf/components/freertos/tasks.c" 3 4
          ((void *)0) 
# 1211 "C:/esp/esp-idf/components/freertos/tasks.c"
          ) ? ( TCB_t * ) xTaskGetCurrentTaskHandle() : ( TCB_t * ) ( xTaskToDelete ) );





   if( uxListRemove( &( pxTCB->xGenericListItem ) ) == ( UBaseType_t ) 0 )
   {
    ;
   }
   else
   {
    ;
   }


   if( ( ( &( pxTCB->xEventListItem ) )->pvContainer ) != 
# 1227 "C:/esp/esp-idf/components/freertos/tasks.c" 3 4
                                                               ((void *)0) 
# 1227 "C:/esp/esp-idf/components/freertos/tasks.c"
                                                                    )
   {
    ( void ) uxListRemove( &( pxTCB->xEventListItem ) );
   }
   else
   {
    ;
   }

   vListInsertEnd( &xTasksWaitingTermination, &( pxTCB->xGenericListItem ) );




   ++uxTasksDeleted;



   uxTaskNumber++;

   ;
  }
  vTaskExitCritical(&xTaskQueueMutex);



  if( xSchedulerRunning != ( ( BaseType_t ) 0 ) )
  {

   if( pxTCB == pxCurrentTCB[ xPortGetCoreID() ] )
   {
    if (!(uxSchedulerSuspended[ xPortGetCoreID() ] == 0)) { ets_printf("%s:%d (%s)- assert failed!\n", "C:/esp/esp-idf/components/freertos/tasks.c", 1258, __FUNCTION__); abort(); };






    ;
    esp_crosscore_int_send_yield(xPortGetCoreID());
   }
   else if ( 1 > 1 && pxTCB == pxCurrentTCB[ !xPortGetCoreID() ] )
   {

    vPortYieldOtherCore( !xPortGetCoreID() );
   }
   else
   {


    vTaskEnterCritical(&xTaskQueueMutex);
    {
     prvResetNextTaskUnblockTime();
    }
    vTaskExitCritical(&xTaskQueueMutex);
   }
  }
 }







 void vTaskDelayUntil( TickType_t * const pxPreviousWakeTime, const TickType_t xTimeIncrement )
 {
 TickType_t xTimeToWake;
 BaseType_t xAlreadyYielded=( ( BaseType_t ) 0 ), xShouldDelay = ( ( BaseType_t ) 0 );

  { ets_printf("Untested FreeRTOS function %s\r\n", __FUNCTION__); if (!(
# 1297 "C:/esp/esp-idf/components/freertos/tasks.c" 3 4
 0
# 1297 "C:/esp/esp-idf/components/freertos/tasks.c"
 )) { ets_printf("%s:%d (%s)- assert failed!\n", "C:/esp/esp-idf/components/freertos/tasks.c", 1297, __FUNCTION__); abort(); }; } while(0);
  if (!(pxPreviousWakeTime)) { ets_printf("%s:%d (%s)- assert failed!\n", "C:/esp/esp-idf/components/freertos/tasks.c", 1298, __FUNCTION__); abort(); };
  if (!(( xTimeIncrement > 0U ))) { ets_printf("%s:%d (%s)- assert failed!\n", "C:/esp/esp-idf/components/freertos/tasks.c", 1299, __FUNCTION__); abort(); };
  if (!(uxSchedulerSuspended[ xPortGetCoreID() ] == 0)) { ets_printf("%s:%d (%s)- assert failed!\n", "C:/esp/esp-idf/components/freertos/tasks.c", 1300, __FUNCTION__); abort(); };

  vTaskEnterCritical(&xTaskQueueMutex);

  {



   const TickType_t xConstTickCount = xTickCount;



   xTimeToWake = *pxPreviousWakeTime + xTimeIncrement;

   if( xConstTickCount < *pxPreviousWakeTime )
   {





    if( ( xTimeToWake < *pxPreviousWakeTime ) && ( xTimeToWake > xConstTickCount ) )
    {
     xShouldDelay = ( ( BaseType_t ) 1 );
    }
    else
    {
     ;
    }
   }
   else
   {



    if( ( xTimeToWake < *pxPreviousWakeTime ) || ( xTimeToWake > xConstTickCount ) )
    {
     xShouldDelay = ( ( BaseType_t ) 1 );
    }
    else
    {
     ;
    }
   }


   *pxPreviousWakeTime = xTimeToWake;

   if( xShouldDelay != ( ( BaseType_t ) 0 ) )
   {
    ;



    if( uxListRemove( &( pxCurrentTCB[ xPortGetCoreID() ]->xGenericListItem ) ) == ( UBaseType_t ) 0 )
    {



     ;
    }
    else
    {
     ;
    }

    prvAddCurrentTaskToDelayedList( xPortGetCoreID(), xTimeToWake );
   }
   else
   {
    ;
   }
  }

  vTaskExitCritical(&xTaskQueueMutex);



  if( xAlreadyYielded == ( ( BaseType_t ) 0 ) )
  {
   esp_crosscore_int_send_yield(xPortGetCoreID());
  }
  else
  {
   ;
  }
 }





 void vTaskDelay( const TickType_t xTicksToDelay )
 {
 TickType_t xTimeToWake;
 BaseType_t xAlreadyYielded = ( ( BaseType_t ) 0 );


  if( xTicksToDelay > ( TickType_t ) 0U )
  {
   if (!(uxSchedulerSuspended[ xPortGetCoreID() ] == 0)) { ets_printf("%s:%d (%s)- assert failed!\n", "C:/esp/esp-idf/components/freertos/tasks.c", 1400, __FUNCTION__); abort(); };
   vTaskEnterCritical(&xTaskQueueMutex);

   {
    ;
# 1417 "C:/esp/esp-idf/components/freertos/tasks.c"
    xTimeToWake = xTickCount + xTicksToDelay;





    if( uxListRemove( &( pxCurrentTCB[ xPortGetCoreID() ]->xGenericListItem ) ) == ( UBaseType_t ) 0 )
    {



     ;
    }
    else
    {
     ;
    }
    prvAddCurrentTaskToDelayedList( xPortGetCoreID(), xTimeToWake );
   }

   vTaskExitCritical(&xTaskQueueMutex);
  }
  else
  {
   ;
  }



  if( xAlreadyYielded == ( ( BaseType_t ) 0 ) )
  {
   esp_crosscore_int_send_yield(xPortGetCoreID());
  }
  else
  {
   ;
  }
 }






 eTaskState eTaskGetState( TaskHandle_t xTask )
 {
 eTaskState eReturn;
 List_t *pxStateList;
 const TCB_t * const pxTCB = ( TCB_t * ) xTask;
        TCB_t * curTCB = xTaskGetCurrentTaskHandle();

  { ets_printf("Untested FreeRTOS function %s\r\n", __FUNCTION__); if (!(
# 1468 "C:/esp/esp-idf/components/freertos/tasks.c" 3 4
 0
# 1468 "C:/esp/esp-idf/components/freertos/tasks.c"
 )) { ets_printf("%s:%d (%s)- assert failed!\n", "C:/esp/esp-idf/components/freertos/tasks.c", 1468, __FUNCTION__); abort(); }; } while(0);
  if (!(pxTCB)) { ets_printf("%s:%d (%s)- assert failed!\n", "C:/esp/esp-idf/components/freertos/tasks.c", 1469, __FUNCTION__); abort(); };

  if( pxTCB == curTCB )
  {

   eReturn = eRunning;
  }
  else
  {
   vTaskEnterCritical(&xTaskQueueMutex);
   {
    pxStateList = ( List_t * ) ( ( &( pxTCB->xGenericListItem ) )->pvContainer );
   }
   vTaskExitCritical(&xTaskQueueMutex);

   if( ( pxStateList == pxDelayedTaskList ) || ( pxStateList == pxOverflowDelayedTaskList ) )
   {


    eReturn = eBlocked;
   }


    else if( pxStateList == &xSuspendedTaskList )
    {



     if( ( ( &( pxTCB->xEventListItem ) )->pvContainer ) == 
# 1497 "C:/esp/esp-idf/components/freertos/tasks.c" 3 4
                                                                 ((void *)0) 
# 1497 "C:/esp/esp-idf/components/freertos/tasks.c"
                                                                      )
     {
      eReturn = eSuspended;
     }
     else
     {
      eReturn = eBlocked;
     }
    }



    else if( pxStateList == &xTasksWaitingTermination )
    {


     eReturn = eDeleted;
    }


   else
   {


    eReturn = eReady;
   }
  }

  return eReturn;
 }





 UBaseType_t uxTaskPriorityGet( TaskHandle_t xTask )
 {
 TCB_t *pxTCB;
 UBaseType_t uxReturn;

  vTaskEnterCritical(&xTaskQueueMutex);
  {


   pxTCB = ( ( ( xTask ) == 
# 1541 "C:/esp/esp-idf/components/freertos/tasks.c" 3 4
          ((void *)0) 
# 1541 "C:/esp/esp-idf/components/freertos/tasks.c"
          ) ? ( TCB_t * ) xTaskGetCurrentTaskHandle() : ( TCB_t * ) ( xTask ) );
   uxReturn = pxTCB->uxPriority;
  }
  vTaskExitCritical(&xTaskQueueMutex);

  return uxReturn;
 }





 UBaseType_t uxTaskPriorityGetFromISR( TaskHandle_t xTask )
 {
 TCB_t *pxTCB;
 UBaseType_t uxReturn;

  vTaskEnterCritical(&xTaskQueueMutex);
  {


   pxTCB = ( ( ( xTask ) == 
# 1562 "C:/esp/esp-idf/components/freertos/tasks.c" 3 4
          ((void *)0) 
# 1562 "C:/esp/esp-idf/components/freertos/tasks.c"
          ) ? ( TCB_t * ) xTaskGetCurrentTaskHandle() : ( TCB_t * ) ( xTask ) );
   uxReturn = pxTCB->uxPriority;
  }
  vTaskExitCritical(&xTaskQueueMutex);

  return uxReturn;
 }






 void vTaskPrioritySet( TaskHandle_t xTask, UBaseType_t uxNewPriority )
 {
 TCB_t *pxTCB;
 UBaseType_t uxCurrentBasePriority, uxPriorityUsedOnEntry;
 BaseType_t xYieldRequired = ( ( BaseType_t ) 0 );

  if (!(( uxNewPriority < ( 25 ) ))) { ets_printf("%s:%d (%s)- assert failed!\n", "C:/esp/esp-idf/components/freertos/tasks.c", 1581, __FUNCTION__); abort(); };


  if( uxNewPriority >= ( UBaseType_t ) ( 25 ) )
  {
   uxNewPriority = ( UBaseType_t ) ( 25 ) - ( UBaseType_t ) 1U;
  }
  else
  {
   ;
  }

  vTaskEnterCritical(&xTaskQueueMutex);
  {


   pxTCB = ( ( ( xTask ) == 
# 1597 "C:/esp/esp-idf/components/freertos/tasks.c" 3 4
          ((void *)0) 
# 1597 "C:/esp/esp-idf/components/freertos/tasks.c"
          ) ? ( TCB_t * ) xTaskGetCurrentTaskHandle() : ( TCB_t * ) ( xTask ) );

   ;


   {
    uxCurrentBasePriority = pxTCB->uxBasePriority;
   }






   if( uxCurrentBasePriority != uxNewPriority )
   {


    if( uxNewPriority > uxCurrentBasePriority )
    {
     if( pxTCB != pxCurrentTCB[ xPortGetCoreID() ] )
     {



      if ( ( pxTCB->xCoreID==xPortGetCoreID() || pxTCB->xCoreID==0x7fffffff ) && uxNewPriority >= pxCurrentTCB[ xPortGetCoreID() ]->uxPriority )
      {
       xYieldRequired = ( ( BaseType_t ) 1 );
      }
      else if ( pxTCB->xCoreID != xPortGetCoreID() )
      {
       taskYIELD_OTHER_CORE( pxTCB->xCoreID, uxNewPriority );
      }
      else
      {
       ;
      }
     }
     else
     {



     }
    }
    else if( pxTCB == pxCurrentTCB[ xPortGetCoreID() ] )
    {



     xYieldRequired = ( ( BaseType_t ) 1 );
    }
    else
    {



    }




    uxPriorityUsedOnEntry = pxTCB->uxPriority;


    {


     if( pxTCB->uxBasePriority == pxTCB->uxPriority )
     {
      pxTCB->uxPriority = uxNewPriority;
     }
     else
     {
      ;
     }


     pxTCB->uxBasePriority = uxNewPriority;
    }
# 1685 "C:/esp/esp-idf/components/freertos/tasks.c"
    if( ( ( ( &( pxTCB->xEventListItem ) )->xItemValue ) & 0x80000000UL ) == 0UL )
    {
     ( ( &( pxTCB->xEventListItem ) )->xItemValue = ( ( ( TickType_t ) ( 25 ) - ( TickType_t ) uxNewPriority ) ) );
    }
    else
    {
     ;
    }





    if( ( ( BaseType_t ) ( ( &( pxTCB->xGenericListItem ) )->pvContainer == ( void * ) ( &( pxReadyTasksLists[ uxPriorityUsedOnEntry ] ) ) ) ) != ( ( BaseType_t ) 0 ) )
    {



     if( uxListRemove( &( pxTCB->xGenericListItem ) ) == ( UBaseType_t ) 0 )
     {



      ;
     }
     else
     {
      ;
     }
                    ; { if( ( ( pxTCB )->uxPriority ) > uxTopReadyPriority ) { uxTopReadyPriority = ( ( pxTCB )->uxPriority ); } }; vListInsertEnd( &( pxReadyTasksLists[ ( pxTCB )->uxPriority ] ), &( ( pxTCB )->xGenericListItem ) );
    }
    else
    {
     ;
    }

    if( xYieldRequired == ( ( BaseType_t ) 1 ) )
    {
     esp_crosscore_int_send_yield(xPortGetCoreID());
    }
    else
    {
     ;
    }



    ( void ) uxPriorityUsedOnEntry;
   }
  }
  vTaskExitCritical(&xTaskQueueMutex);
 }





 void vTaskSuspend( TaskHandle_t xTaskToSuspend )
 {
 TCB_t *pxTCB;
        TCB_t *curTCB;

  vTaskEnterCritical(&xTaskQueueMutex);
  {


   pxTCB = ( ( ( xTaskToSuspend ) == 
# 1751 "C:/esp/esp-idf/components/freertos/tasks.c" 3 4
          ((void *)0) 
# 1751 "C:/esp/esp-idf/components/freertos/tasks.c"
          ) ? ( TCB_t * ) xTaskGetCurrentTaskHandle() : ( TCB_t * ) ( xTaskToSuspend ) );

   ;



   if( uxListRemove( &( pxTCB->xGenericListItem ) ) == ( UBaseType_t ) 0 )
   {
    ;
   }
   else
   {
    ;
   }


   if( ( ( &( pxTCB->xEventListItem ) )->pvContainer ) != 
# 1767 "C:/esp/esp-idf/components/freertos/tasks.c" 3 4
                                                               ((void *)0) 
# 1767 "C:/esp/esp-idf/components/freertos/tasks.c"
                                                                    )
   {
    ( void ) uxListRemove( &( pxTCB->xEventListItem ) );
   }
   else
   {
    ;
   }
            ;
   vListInsertEnd( &xSuspendedTaskList, &( pxTCB->xGenericListItem ) );
   curTCB = pxCurrentTCB[ xPortGetCoreID() ];
  }
  vTaskExitCritical(&xTaskQueueMutex);

  if( pxTCB == curTCB )
  {
   if( xSchedulerRunning != ( ( BaseType_t ) 0 ) )
   {

    if (!(uxSchedulerSuspended[ xPortGetCoreID() ] == 0)) { ets_printf("%s:%d (%s)- assert failed!\n", "C:/esp/esp-idf/components/freertos/tasks.c", 1786, __FUNCTION__); abort(); };
    esp_crosscore_int_send_yield(xPortGetCoreID());
   }
   else
   {



    if( ( ( &xSuspendedTaskList )->uxNumberOfItems ) == uxCurrentNumberOfTasks )
    {




     vTaskEnterCritical(&xTaskQueueMutex);
     pxCurrentTCB[ xPortGetCoreID() ] = 
# 1801 "C:/esp/esp-idf/components/freertos/tasks.c" 3 4
                                       ((void *)0)
# 1801 "C:/esp/esp-idf/components/freertos/tasks.c"
                                           ;
     vTaskExitCritical(&xTaskQueueMutex);
    }
    else
    {
     vTaskSwitchContext();
    }
   }
  }
  else
  {
   if( xSchedulerRunning != ( ( BaseType_t ) 0 ) )
   {



    vTaskEnterCritical(&xTaskQueueMutex);
    {
     prvResetNextTaskUnblockTime();
    }
    vTaskExitCritical(&xTaskQueueMutex);
   }
   else
   {
    ;
   }
  }
 }





 static BaseType_t prvTaskIsTaskSuspended( const TaskHandle_t xTask )
 {
 BaseType_t xReturn = ( ( BaseType_t ) 0 );
 const TCB_t * const pxTCB = ( TCB_t * ) xTask;





  if (!(xTask)) { ets_printf("%s:%d (%s)- assert failed!\n", "C:/esp/esp-idf/components/freertos/tasks.c", 1843, __FUNCTION__); abort(); };


  if( ( ( BaseType_t ) ( ( &( pxTCB->xGenericListItem ) )->pvContainer == ( void * ) ( &xSuspendedTaskList ) ) ) != ( ( BaseType_t ) 0 ) )
  {

   if( ( ( BaseType_t ) ( ( &( pxTCB->xEventListItem ) )->pvContainer == ( void * ) ( &xPendingReadyList[ xPortGetCoreID() ] ) ) ) == ( ( BaseType_t ) 0 ) )
   {


    if( ( ( BaseType_t ) ( ( &( pxTCB->xEventListItem ) )->pvContainer == ( void * ) ( 
# 1853 "C:/esp/esp-idf/components/freertos/tasks.c" 3 4
       ((void *)0) 
# 1853 "C:/esp/esp-idf/components/freertos/tasks.c"
       ) ) ) != ( ( BaseType_t ) 0 ) )
    {
     xReturn = ( ( BaseType_t ) 1 );
    }
    else
    {
     ;
    }
   }
   else
   {
    ;
   }
  }
  else
  {
   ;
  }

  return xReturn;
 }






 void vTaskResume( TaskHandle_t xTaskToResume )
 {
 TCB_t * const pxTCB = ( TCB_t * ) xTaskToResume;


  if (!(xTaskToResume)) { ets_printf("%s:%d (%s)- assert failed!\n", "C:/esp/esp-idf/components/freertos/tasks.c", 1885, __FUNCTION__); abort(); };

  vTaskEnterCritical(&xTaskQueueMutex);


  if( ( pxTCB != 
# 1890 "C:/esp/esp-idf/components/freertos/tasks.c" 3 4
                ((void *)0) 
# 1890 "C:/esp/esp-idf/components/freertos/tasks.c"
                     ) && ( pxTCB != pxCurrentTCB[ xPortGetCoreID() ] ) )
  {
   {
    if( prvTaskIsTaskSuspended( pxTCB ) == ( ( BaseType_t ) 1 ) )
    {
     ;



     ( void ) uxListRemove( &( pxTCB->xGenericListItem ) );
     ; { if( ( ( pxTCB )->uxPriority ) > uxTopReadyPriority ) { uxTopReadyPriority = ( ( pxTCB )->uxPriority ); } }; vListInsertEnd( &( pxReadyTasksLists[ ( pxTCB )->uxPriority ] ), &( ( pxTCB )->xGenericListItem ) );


     if( ( pxTCB->xCoreID==xPortGetCoreID() || pxTCB->xCoreID==0x7fffffff ) && pxTCB->uxPriority >= pxCurrentTCB[ xPortGetCoreID() ]->uxPriority )
     {



      esp_crosscore_int_send_yield(xPortGetCoreID());
     }
     else if( pxTCB->xCoreID != xPortGetCoreID() )
     {
      taskYIELD_OTHER_CORE( pxTCB->xCoreID, pxTCB->uxPriority );
     }
     else
     {
      ;
     }
    }
    else
    {
     ;
    }
   }
  }
  else
  {
   ;
  }
  vTaskExitCritical(&xTaskQueueMutex);
 }







 BaseType_t xTaskResumeFromISR( TaskHandle_t xTaskToResume )
 {
 BaseType_t xYieldRequired = ( ( BaseType_t ) 0 );
 TCB_t * const pxTCB = ( TCB_t * ) xTaskToResume;

  if (!(xTaskToResume)) { ets_printf("%s:%d (%s)- assert failed!\n", "C:/esp/esp-idf/components/freertos/tasks.c", 1943, __FUNCTION__); abort(); };

  vTaskEnterCritical(&xTaskQueueMutex);

  {
   if( prvTaskIsTaskSuspended( pxTCB ) == ( ( BaseType_t ) 1 ) )
   {
    ;


    if( uxSchedulerSuspended[ xPortGetCoreID() ] == ( UBaseType_t ) ( ( BaseType_t ) 0 ) )
    {


     ( void ) uxListRemove( &( pxTCB->xGenericListItem ) );
     ; { if( ( ( pxTCB )->uxPriority ) > uxTopReadyPriority ) { uxTopReadyPriority = ( ( pxTCB )->uxPriority ); } }; vListInsertEnd( &( pxReadyTasksLists[ ( pxTCB )->uxPriority ] ), &( ( pxTCB )->xGenericListItem ) );

     if( ( pxTCB->xCoreID==xPortGetCoreID() || pxTCB->xCoreID==0x7fffffff ) && pxTCB->uxPriority >= pxCurrentTCB[ xPortGetCoreID() ]->uxPriority )
     {
      xYieldRequired = ( ( BaseType_t ) 1 );
     }
     else if ( pxTCB->xCoreID != xPortGetCoreID() )
     {
      taskYIELD_OTHER_CORE( pxTCB->xCoreID, pxTCB->uxPriority);
     }
     else
     {
      ;
     }
    }
    else
    {



     vListInsertEnd( &( xPendingReadyList[ xPortGetCoreID() ] ), &( pxTCB->xEventListItem ) );
    }
   }
   else
   {
    ;
   }
  }
  vTaskExitCritical(&xTaskQueueMutex);

  return xYieldRequired;
 }




void vTaskStartScheduler( void )
{
BaseType_t xReturn;
BaseType_t i;


 for ( i=0; i<1; i++) {

  {


   xReturn = xTaskCreatePinnedToCore( prvIdleTask, "IDLE", 1024, ( void * ) 
# 2005 "C:/esp/esp-idf/components/freertos/tasks.c" 3 4
                                                                                         ((void *)0)
# 2005 "C:/esp/esp-idf/components/freertos/tasks.c"
                                                                                             , ( ( ( UBaseType_t ) 0U ) | ( ( UBaseType_t ) 0x00 ) ), &xIdleTaskHandle[i], i );
  }






 }


 {
  if( xReturn == ( ( ( BaseType_t ) 1 ) ) )
  {
   xReturn = xTimerCreateTimerTask();
  }
  else
  {
   ;
  }
 }


 if( xReturn == ( ( ( BaseType_t ) 1 ) ) )
 {





  do { ({ unsigned __tmp; __asm__ __volatile__( "rsil	%0, " "3" "\n" : "=a" (__tmp) : : "memory" ); __tmp;}); ; } while (0);


  xTickCount = ( TickType_t ) 0U;




  ;
  xSchedulerRunning = ( ( BaseType_t ) 1 );



  if( xPortStartScheduler() != ( ( BaseType_t ) 0 ) )
  {


  }
  else
  {

  }
 }
 else
 {



  if (!(xReturn)) { ets_printf("%s:%d (%s)- assert failed!\n", "C:/esp/esp-idf/components/freertos/tasks.c", 2063, __FUNCTION__); abort(); };
 }
}


void vTaskEndScheduler( void )
{



 do { ({ unsigned __tmp; __asm__ __volatile__( "rsil	%0, " "3" "\n" : "=a" (__tmp) : : "memory" ); __tmp;}); ; } while (0);
 xSchedulerRunning = ( ( BaseType_t ) 0 );
 vPortEndScheduler();
}





struct _reent* __getreent() {

 TCB_t *currTask=xTaskGetCurrentTaskHandle();
 if (currTask==
# 2085 "C:/esp/esp-idf/components/freertos/tasks.c" 3 4
              ((void *)0)
# 2085 "C:/esp/esp-idf/components/freertos/tasks.c"
                  ) {

  return _global_impure_ptr;
 } else {

  return &currTask->xNewLib_reent;
 }
}



void vTaskSuspendAll( void )
{




 unsigned state;

 state = portENTER_CRITICAL_NESTED();
 ++uxSchedulerSuspended[ xPortGetCoreID() ];
 do { ; _xtos_set_intlevel(state); } while (0);
}
# 2143 "C:/esp/esp-idf/components/freertos/tasks.c"
BaseType_t xTaskResumeAll( void )
{
TCB_t *pxTCB;
BaseType_t xAlreadyYielded = ( ( BaseType_t ) 0 );



 if (!(uxSchedulerSuspended[ xPortGetCoreID() ])) { ets_printf("%s:%d (%s)- assert failed!\n", "C:/esp/esp-idf/components/freertos/tasks.c", 2150, __FUNCTION__); abort(); };






 vTaskEnterCritical(&xTaskQueueMutex);
 {
  --uxSchedulerSuspended[ xPortGetCoreID() ];

  if( uxSchedulerSuspended[ xPortGetCoreID() ] == ( UBaseType_t ) ( ( BaseType_t ) 0 ) )
  {
   if( uxCurrentNumberOfTasks > ( UBaseType_t ) 0U )
   {


    while( ( ( BaseType_t ) ( ( &xPendingReadyList[ xPortGetCoreID() ] )->uxNumberOfItems == ( UBaseType_t ) 0 ) ) == ( ( BaseType_t ) 0 ) )
    {
     pxTCB = ( TCB_t * ) ( (&( ( ( &xPendingReadyList[ xPortGetCoreID() ] ) )->xListEnd ))->pxNext->pvOwner );
     ( void ) uxListRemove( &( pxTCB->xEventListItem ) );
     ( void ) uxListRemove( &( pxTCB->xGenericListItem ) );
     ; { if( ( ( pxTCB )->uxPriority ) > uxTopReadyPriority ) { uxTopReadyPriority = ( ( pxTCB )->uxPriority ); } }; vListInsertEnd( &( pxReadyTasksLists[ ( pxTCB )->uxPriority ] ), &( ( pxTCB )->xGenericListItem ) );



     if ( ( pxTCB->xCoreID==xPortGetCoreID() || pxTCB->xCoreID==0x7fffffff ) && pxTCB->uxPriority >= pxCurrentTCB[ xPortGetCoreID() ]->uxPriority )
     {

      xYieldPending[xPortGetCoreID()] = ( ( BaseType_t ) 1 );
      break;
     }
     else
     {
      ;
     }
    }





    if( uxPendedTicks > ( UBaseType_t ) 0U )
    {
     while( uxPendedTicks > ( UBaseType_t ) 0U )
     {
      if( xTaskIncrementTick() != ( ( BaseType_t ) 0 ) )
      {
       xYieldPending[ xPortGetCoreID() ] = ( ( BaseType_t ) 1 );
      }
      else
      {
       ;
      }
      --uxPendedTicks;
     }
    }
    else
    {
     ;
    }

    if( xYieldPending[ xPortGetCoreID() ] == ( ( BaseType_t ) 1 ) )
    {

     {
      xAlreadyYielded = ( ( BaseType_t ) 1 );
     }

     esp_crosscore_int_send_yield(xPortGetCoreID());
    }
    else
    {
     ;
    }
   }
  }
  else
  {
   ;
  }
 }
 vTaskExitCritical(&xTaskQueueMutex);

 return xAlreadyYielded;
}


TickType_t xTaskGetTickCount( void )
{
TickType_t xTicks;


 vTaskEnterCritical(&xTickCountMutex);
 {
  xTicks = xTickCount;
 }
 vTaskExitCritical(&xTickCountMutex);

 return xTicks;
}


TickType_t xTaskGetTickCountFromISR( void )
{
TickType_t xReturn;

 vTaskEnterCritical(&xTickCountMutex);
 {
  xReturn = xTickCount;

 }
 vTaskExitCritical(&xTickCountMutex);

 return xReturn;
}


UBaseType_t uxTaskGetNumberOfTasks( void )
{


 return uxCurrentNumberOfTasks;
}



 char *pcTaskGetTaskName( TaskHandle_t xTaskToQuery )
 {
 TCB_t *pxTCB;


  pxTCB = ( ( ( xTaskToQuery ) == 
# 2282 "C:/esp/esp-idf/components/freertos/tasks.c" 3 4
         ((void *)0) 
# 2282 "C:/esp/esp-idf/components/freertos/tasks.c"
         ) ? ( TCB_t * ) xTaskGetCurrentTaskHandle() : ( TCB_t * ) ( xTaskToQuery ) );
  if (!(pxTCB)) { ets_printf("%s:%d (%s)- assert failed!\n", "C:/esp/esp-idf/components/freertos/tasks.c", 2283, __FUNCTION__); abort(); };
  return &( pxTCB->pcTaskName[ 0 ] );
 }
# 2366 "C:/esp/esp-idf/components/freertos/tasks.c"
 TaskHandle_t xTaskGetIdleTaskHandle( void )
 {


  if (!(( xIdleTaskHandle[ xPortGetCoreID() ] != 
# 2370 "C:/esp/esp-idf/components/freertos/tasks.c" 3 4
 ((void *)0) 
# 2370 "C:/esp/esp-idf/components/freertos/tasks.c"
 ))) { ets_printf("%s:%d (%s)- assert failed!\n", "C:/esp/esp-idf/components/freertos/tasks.c", 2370, __FUNCTION__); abort(); };
  return xIdleTaskHandle[ xPortGetCoreID() ];
 }
# 2398 "C:/esp/esp-idf/components/freertos/tasks.c"
BaseType_t xTaskIncrementTick( void )
{
TCB_t * pxTCB;
TickType_t xItemValue;
BaseType_t xSwitchRequired = ( ( BaseType_t ) 0 );
# 2413 "C:/esp/esp-idf/components/freertos/tasks.c"
 if ( xPortGetCoreID()!=0 ) {



  esp_vApplicationTickHook();





  return ( ( BaseType_t ) 1 );
 }


 ;

 if( uxSchedulerSuspended[ xPortGetCoreID() ] == ( UBaseType_t ) ( ( BaseType_t ) 0 ) )
 {
  vTaskEnterCritical(&xTickCountMutex);


  ++xTickCount;
  vTaskExitCritical(&xTickCountMutex);


  vTaskEnterCritical(&xTaskQueueMutex);
  {


   const TickType_t xConstTickCount = xTickCount;

   if( xConstTickCount == ( TickType_t ) 0U )
   {
    { List_t *pxTemp; if (!(( ( ( BaseType_t ) ( ( pxDelayedTaskList )->uxNumberOfItems == ( UBaseType_t ) 0 ) ) ))) { ets_printf("%s:%d (%s)- assert failed!\n", "C:/esp/esp-idf/components/freertos/tasks.c", 2446, __FUNCTION__); abort(); }; pxTemp = pxDelayedTaskList; pxDelayedTaskList = pxOverflowDelayedTaskList; pxOverflowDelayedTaskList = pxTemp; xNumOfOverflows++; prvResetNextTaskUnblockTime(); };
   }
   else
   {
    ;
   }





   if( xConstTickCount >= xNextTaskUnblockTime )
   {
    for( ;; )
    {
     if( ( ( BaseType_t ) ( ( pxDelayedTaskList )->uxNumberOfItems == ( UBaseType_t ) 0 ) ) != ( ( BaseType_t ) 0 ) )
     {





      xNextTaskUnblockTime = ( TickType_t ) 0xffffffffUL;
      break;
     }
     else
     {




      pxTCB = ( TCB_t * ) ( (&( ( pxDelayedTaskList )->xListEnd ))->pxNext->pvOwner );
      xItemValue = ( ( &( pxTCB->xGenericListItem ) )->xItemValue );

      if( xConstTickCount < xItemValue )
      {





       xNextTaskUnblockTime = xItemValue;
       break;
      }
      else
      {
       ;
      }


      ( void ) uxListRemove( &( pxTCB->xGenericListItem ) );



      if( ( ( &( pxTCB->xEventListItem ) )->pvContainer ) != 
# 2500 "C:/esp/esp-idf/components/freertos/tasks.c" 3 4
                                                                  ((void *)0) 
# 2500 "C:/esp/esp-idf/components/freertos/tasks.c"
                                                                       )
      {
       ( void ) uxListRemove( &( pxTCB->xEventListItem ) );
      }
      else
      {
       ;
      }



      ; { if( ( ( pxTCB )->uxPriority ) > uxTopReadyPriority ) { uxTopReadyPriority = ( ( pxTCB )->uxPriority ); } }; vListInsertEnd( &( pxReadyTasksLists[ ( pxTCB )->uxPriority ] ), &( ( pxTCB )->xGenericListItem ) );




      {




       if( pxTCB->uxPriority >= pxCurrentTCB[ xPortGetCoreID() ]->uxPriority )
       {
        xSwitchRequired = ( ( BaseType_t ) 1 );
       }
       else
       {
        ;
       }
      }

     }
    }
   }
  }





  {
   if( ( ( &( pxReadyTasksLists[ pxCurrentTCB[ xPortGetCoreID() ]->uxPriority ] ) )->uxNumberOfItems ) > ( UBaseType_t ) 1 )
   {
    xSwitchRequired = ( ( BaseType_t ) 1 );
   }
   else
   {
    ;
   }
  }


  {


   if( uxPendedTicks == ( UBaseType_t ) 0U )
   {



    esp_vApplicationTickHook();
   }
   else
   {
    ;
   }
  }
  vTaskExitCritical(&xTaskQueueMutex);
 }
 else
 {
  ++uxPendedTicks;
# 2580 "C:/esp/esp-idf/components/freertos/tasks.c"
  esp_vApplicationTickHook();
 }


 {
  if( xYieldPending [ xPortGetCoreID() ] != ( ( BaseType_t ) 0 ) )
  {
   xSwitchRequired = ( ( BaseType_t ) 1 );
  }
  else
  {
   ;
  }
 }


 return xSwitchRequired;
}
# 2690 "C:/esp/esp-idf/components/freertos/tasks.c"
void vTaskSwitchContext( void )
{


 int irqstate=portENTER_CRITICAL_NESTED();
 tskTCB * pxTCB;
 if( uxSchedulerSuspended[ xPortGetCoreID() ] != ( UBaseType_t ) ( ( BaseType_t ) 0 ) )
 {


  xYieldPending[ xPortGetCoreID() ] = ( ( BaseType_t ) 1 );
 }
 else
 {
  xYieldPending[ xPortGetCoreID() ] = ( ( BaseType_t ) 0 );
        xSwitchingContext[ xPortGetCoreID() ] = ( ( BaseType_t ) 1 );
  ;
# 2738 "C:/esp/esp-idf/components/freertos/tasks.c"
  { if( pxCurrentTCB[ xPortGetCoreID() ]->pxTopOfStack <= pxCurrentTCB[ xPortGetCoreID() ]->pxStack ) { vApplicationStackOverflowHook( ( TaskHandle_t ) pxCurrentTCB[ xPortGetCoreID() ], pxCurrentTCB[ xPortGetCoreID() ]->pcTaskName ); } };
  { static const uint8_t ucExpectedStackBytes[] = { ( 0xa5U ), ( 0xa5U ), ( 0xa5U ), ( 0xa5U ), ( 0xa5U ), ( 0xa5U ), ( 0xa5U ), ( 0xa5U ), ( 0xa5U ), ( 0xa5U ), ( 0xa5U ), ( 0xa5U ), ( 0xa5U ), ( 0xa5U ), ( 0xa5U ), ( 0xa5U ), ( 0xa5U ), ( 0xa5U ), ( 0xa5U ), ( 0xa5U ) }; if( memcmp( ( void * ) pxCurrentTCB[ xPortGetCoreID() ]->pxStack, ( void * ) ucExpectedStackBytes, sizeof( ucExpectedStackBytes ) ) != 0 ) { vApplicationStackOverflowHook( ( TaskHandle_t ) pxCurrentTCB[ xPortGetCoreID() ], pxCurrentTCB[ xPortGetCoreID() ]->pcTaskName ); } };
# 2751 "C:/esp/esp-idf/components/freertos/tasks.c"
  vPortCPUAcquireMutex( &xTaskQueueMutex );


  unsigned int foundNonExecutingWaiter = ( ( BaseType_t ) 0 ), ableToSchedule = ( ( BaseType_t ) 0 ), resetListHead;
  int uxDynamicTopReady = uxTopReadyPriority;
  unsigned int holdTop=( ( BaseType_t ) 0 );
# 2766 "C:/esp/esp-idf/components/freertos/tasks.c"
  while ( ableToSchedule == ( ( BaseType_t ) 0 ) && uxDynamicTopReady >= 0 )
  {
   resetListHead = ( ( BaseType_t ) 0 );

   if (!( ( BaseType_t ) ( ( &( pxReadyTasksLists[ uxDynamicTopReady ] ) )->uxNumberOfItems == ( UBaseType_t ) 0 ) )) {

    ableToSchedule = ( ( BaseType_t ) 0 );
    tskTCB * pxRefTCB;







    pxRefTCB = pxReadyTasksLists[ uxDynamicTopReady ].pxIndex->pvOwner;

    if ((void*)pxReadyTasksLists[ uxDynamicTopReady ].pxIndex==(void*)&pxReadyTasksLists[ uxDynamicTopReady ].xListEnd) {

     { List_t * const pxConstList = ( &( pxReadyTasksLists[ uxDynamicTopReady ] ) ); ( pxConstList )->pxIndex = ( pxConstList )->pxIndex->pxNext; if( ( void * ) ( pxConstList )->pxIndex == ( void * ) &( ( pxConstList )->xListEnd ) ) { ( pxConstList )->pxIndex = ( pxConstList )->pxIndex->pxNext; } ( pxRefTCB ) = ( pxConstList )->pxIndex->pvOwner; };
    }

    do {
     { List_t * const pxConstList = ( &( pxReadyTasksLists[ uxDynamicTopReady ] ) ); ( pxConstList )->pxIndex = ( pxConstList )->pxIndex->pxNext; if( ( void * ) ( pxConstList )->pxIndex == ( void * ) &( ( pxConstList )->xListEnd ) ) { ( pxConstList )->pxIndex = ( pxConstList )->pxIndex->pxNext; } ( pxTCB ) = ( pxConstList )->pxIndex->pvOwner; };


     foundNonExecutingWaiter = ( ( BaseType_t ) 1 );
     int i = 0;
     for ( i=0; i<1; i++ ) {
      if (i == xPortGetCoreID()) {
       continue;
      } else if (pxCurrentTCB[i] == pxTCB) {
       holdTop=( ( BaseType_t ) 1 );
       foundNonExecutingWaiter = ( ( BaseType_t ) 0 );
       break;
      }
     }

     if (foundNonExecutingWaiter == ( ( BaseType_t ) 1 )) {




      if (pxTCB->xCoreID == 0x7fffffff) {
       pxCurrentTCB[xPortGetCoreID()] = pxTCB;
       ableToSchedule = ( ( BaseType_t ) 1 );
      } else if (pxTCB->xCoreID == xPortGetCoreID()) {
       pxCurrentTCB[xPortGetCoreID()] = pxTCB;
       ableToSchedule = ( ( BaseType_t ) 1 );
      } else {
       ableToSchedule = ( ( BaseType_t ) 0 );
       holdTop=( ( BaseType_t ) 1 );
      }
     } else {
      ableToSchedule = ( ( BaseType_t ) 0 );
     }

     if (ableToSchedule == ( ( BaseType_t ) 0 )) {
      resetListHead = ( ( BaseType_t ) 1 );
     } else if ((ableToSchedule == ( ( BaseType_t ) 1 )) && (resetListHead == ( ( BaseType_t ) 1 ))) {
      tskTCB * pxResetTCB;
      do {
       { List_t * const pxConstList = ( &( pxReadyTasksLists[ uxDynamicTopReady ] ) ); ( pxConstList )->pxIndex = ( pxConstList )->pxIndex->pxNext; if( ( void * ) ( pxConstList )->pxIndex == ( void * ) &( ( pxConstList )->xListEnd ) ) { ( pxConstList )->pxIndex = ( pxConstList )->pxIndex->pxNext; } ( pxResetTCB ) = ( pxConstList )->pxIndex->pvOwner; };
      } while(pxResetTCB != pxRefTCB);
     }
    } while ((ableToSchedule == ( ( BaseType_t ) 0 )) && (pxTCB != pxRefTCB));
   } else {
    if (!holdTop) --uxTopReadyPriority;
   }
   --uxDynamicTopReady;
  }

  ;
        xSwitchingContext[ xPortGetCoreID() ] = ( ( BaseType_t ) 0 );






  vPortCPUReleaseMutex( &xTaskQueueMutex );






 }
 do { ; _xtos_set_intlevel(irqstate); } while (0);
}


void vTaskPlaceOnEventList( List_t * const pxEventList, const TickType_t xTicksToWait )
{
TickType_t xTimeToWake;

 if (!(pxEventList)) { ets_printf("%s:%d (%s)- assert failed!\n", "C:/esp/esp-idf/components/freertos/tasks.c", 2862, __FUNCTION__); abort(); };

 vTaskEnterCritical(&xTaskQueueMutex);





 vListInsert( pxEventList, &( pxCurrentTCB[ xPortGetCoreID() ]->xEventListItem ) );




 if( uxListRemove( &( pxCurrentTCB[ xPortGetCoreID() ]->xGenericListItem ) ) == ( UBaseType_t ) 0 )
 {


  ;
 }
 else
 {
  ;
 }


 {
  if( xTicksToWait == ( TickType_t ) 0xffffffffUL )
  {



            ;
   vListInsertEnd( &xSuspendedTaskList, &( pxCurrentTCB[ xPortGetCoreID() ]->xGenericListItem ) );
  }
  else
  {



   xTimeToWake = xTickCount + xTicksToWait;
   prvAddCurrentTaskToDelayedList( xPortGetCoreID(), xTimeToWake );
  }
 }
# 2915 "C:/esp/esp-idf/components/freertos/tasks.c"
 vTaskExitCritical(&xTaskQueueMutex);

}


void vTaskPlaceOnUnorderedEventList( List_t * pxEventList, const TickType_t xItemValue, const TickType_t xTicksToWait )
{
TickType_t xTimeToWake;

 if (!(pxEventList)) { ets_printf("%s:%d (%s)- assert failed!\n", "C:/esp/esp-idf/components/freertos/tasks.c", 2924, __FUNCTION__); abort(); };

 vTaskEnterCritical(&xTaskQueueMutex);



 if (!(uxSchedulerSuspended[ xPortGetCoreID() ] != 0)) { ets_printf("%s:%d (%s)- assert failed!\n", "C:/esp/esp-idf/components/freertos/tasks.c", 2930, __FUNCTION__); abort(); };




 ( ( &( pxCurrentTCB[ xPortGetCoreID() ]->xEventListItem ) )->xItemValue = ( xItemValue | 0x80000000UL ) );






 vListInsertEnd( pxEventList, &( pxCurrentTCB[ xPortGetCoreID() ]->xEventListItem ) );




 if( uxListRemove( &( pxCurrentTCB[ xPortGetCoreID() ]->xGenericListItem ) ) == ( UBaseType_t ) 0 )
 {


  ;
 }
 else
 {
  ;
 }


 {
  if( xTicksToWait == ( TickType_t ) 0xffffffffUL )
  {



   vListInsertEnd( &xSuspendedTaskList, &( pxCurrentTCB[ xPortGetCoreID() ]->xGenericListItem ) );
  }
  else
  {



   xTimeToWake = xTickCount + xTicksToWait;
   prvAddCurrentTaskToDelayedList( xPortGetCoreID(), xTimeToWake );
  }
 }
# 2986 "C:/esp/esp-idf/components/freertos/tasks.c"
 vTaskExitCritical(&xTaskQueueMutex);
}




 void vTaskPlaceOnEventListRestricted( List_t * const pxEventList, const TickType_t xTicksToWait )
 {
 TickType_t xTimeToWake;

  vTaskEnterCritical(&xTaskQueueMutex);
  if (!(pxEventList)) { ets_printf("%s:%d (%s)- assert failed!\n", "C:/esp/esp-idf/components/freertos/tasks.c", 2997, __FUNCTION__); abort(); };
# 3009 "C:/esp/esp-idf/components/freertos/tasks.c"
  vListInsertEnd( pxEventList, &( pxCurrentTCB[ xPortGetCoreID() ]->xEventListItem ) );




  if( uxListRemove( &( pxCurrentTCB[ xPortGetCoreID() ]->xGenericListItem ) ) == ( UBaseType_t ) 0 )
  {


   ;
  }
  else
  {
   ;
  }



  xTimeToWake = xTickCount + xTicksToWait;

  ;
  prvAddCurrentTaskToDelayedList( xPortGetCoreID(), xTimeToWake );
  vTaskExitCritical(&xTaskQueueMutex);

 }




BaseType_t xTaskRemoveFromEventList( const List_t * const pxEventList )
{
TCB_t *pxUnblockedTCB;
BaseType_t xReturn;



 vTaskEnterCritical(&xTaskQueueMutex);
# 3056 "C:/esp/esp-idf/components/freertos/tasks.c"
 if ( ( ( ( BaseType_t ) ( ( pxEventList )->uxNumberOfItems == ( UBaseType_t ) 0 ) ) ) == ( ( BaseType_t ) 0 ) ) {
  pxUnblockedTCB = ( TCB_t * ) ( (&( ( pxEventList )->xListEnd ))->pxNext->pvOwner );
  if (!(pxUnblockedTCB)) { ets_printf("%s:%d (%s)- assert failed!\n", "C:/esp/esp-idf/components/freertos/tasks.c", 3058, __FUNCTION__); abort(); };
  ( void ) uxListRemove( &( pxUnblockedTCB->xEventListItem ) );
 } else {
  vTaskExitCritical(&xTaskQueueMutex);
  return ( ( BaseType_t ) 0 );
 }

 if( uxSchedulerSuspended[ xPortGetCoreID() ] == ( UBaseType_t ) ( ( BaseType_t ) 0 ) )
 {
  ( void ) uxListRemove( &( pxUnblockedTCB->xGenericListItem ) );
  ; { if( ( ( pxUnblockedTCB )->uxPriority ) > uxTopReadyPriority ) { uxTopReadyPriority = ( ( pxUnblockedTCB )->uxPriority ); } }; vListInsertEnd( &( pxReadyTasksLists[ ( pxUnblockedTCB )->uxPriority ] ), &( ( pxUnblockedTCB )->xGenericListItem ) );
 }
 else
 {


  vListInsertEnd( &( xPendingReadyList[ xPortGetCoreID() ] ), &( pxUnblockedTCB->xEventListItem ) );
 }

 if ( ( pxUnblockedTCB->xCoreID==xPortGetCoreID() || pxUnblockedTCB->xCoreID==0x7fffffff ) && pxUnblockedTCB->uxPriority >= pxCurrentTCB[ xPortGetCoreID() ]->uxPriority )
 {



  xReturn = ( ( BaseType_t ) 1 );



  xYieldPending[ xPortGetCoreID() ] = ( ( BaseType_t ) 1 );
 }
 else if ( pxUnblockedTCB->xCoreID != xPortGetCoreID() )
 {
  taskYIELD_OTHER_CORE( pxUnblockedTCB->xCoreID, pxUnblockedTCB->uxPriority );
  xReturn = ( ( BaseType_t ) 0 );
 }
 else
 {
  xReturn = ( ( BaseType_t ) 0 );
 }
# 3111 "C:/esp/esp-idf/components/freertos/tasks.c"
 vTaskExitCritical(&xTaskQueueMutex);

 return xReturn;
}


BaseType_t xTaskRemoveFromUnorderedEventList( ListItem_t * pxEventListItem, const TickType_t xItemValue )
{
TCB_t *pxUnblockedTCB;
BaseType_t xReturn;

 vTaskEnterCritical(&xTaskQueueMutex);


 if (!(uxSchedulerSuspended[ xPortGetCoreID() ] != ( ( BaseType_t ) 0 ))) { ets_printf("%s:%d (%s)- assert failed!\n", "C:/esp/esp-idf/components/freertos/tasks.c", 3125, __FUNCTION__); abort(); };


 ( ( pxEventListItem )->xItemValue = ( xItemValue | 0x80000000UL ) );



 pxUnblockedTCB = ( TCB_t * ) ( ( pxEventListItem )->pvOwner );
 if (!(pxUnblockedTCB)) { ets_printf("%s:%d (%s)- assert failed!\n", "C:/esp/esp-idf/components/freertos/tasks.c", 3133, __FUNCTION__); abort(); };
 ( void ) uxListRemove( pxEventListItem );




 ( void ) uxListRemove( &( pxUnblockedTCB->xGenericListItem ) );
 ; { if( ( ( pxUnblockedTCB )->uxPriority ) > uxTopReadyPriority ) { uxTopReadyPriority = ( ( pxUnblockedTCB )->uxPriority ); } }; vListInsertEnd( &( pxReadyTasksLists[ ( pxUnblockedTCB )->uxPriority ] ), &( ( pxUnblockedTCB )->xGenericListItem ) );

 if ( ( pxUnblockedTCB->xCoreID==xPortGetCoreID() || pxUnblockedTCB->xCoreID==0x7fffffff ) && pxUnblockedTCB->uxPriority >= pxCurrentTCB[ xPortGetCoreID() ]->uxPriority )
 {




  xReturn = ( ( BaseType_t ) 1 );



  xYieldPending[ xPortGetCoreID() ] = ( ( BaseType_t ) 1 );
 }
 else if ( pxUnblockedTCB->xCoreID != xPortGetCoreID() )
 {
  taskYIELD_OTHER_CORE( pxUnblockedTCB->xCoreID, pxUnblockedTCB->uxPriority );
  xReturn = ( ( BaseType_t ) 0 );
 }
 else
 {
  xReturn = ( ( BaseType_t ) 0 );
 }

 vTaskExitCritical(&xTaskQueueMutex);
 return xReturn;
}


void vTaskSetTimeOutState( TimeOut_t * const pxTimeOut )
{
 if (!(pxTimeOut)) { ets_printf("%s:%d (%s)- assert failed!\n", "C:/esp/esp-idf/components/freertos/tasks.c", 3171, __FUNCTION__); abort(); };
 pxTimeOut->xOverflowCount = xNumOfOverflows;
 pxTimeOut->xTimeOnEntering = xTickCount;
}


BaseType_t xTaskCheckForTimeOut( TimeOut_t * const pxTimeOut, TickType_t * const pxTicksToWait )
{
BaseType_t xReturn;

 if (!(pxTimeOut)) { ets_printf("%s:%d (%s)- assert failed!\n", "C:/esp/esp-idf/components/freertos/tasks.c", 3181, __FUNCTION__); abort(); };
 if (!(pxTicksToWait)) { ets_printf("%s:%d (%s)- assert failed!\n", "C:/esp/esp-idf/components/freertos/tasks.c", 3182, __FUNCTION__); abort(); };

 vTaskEnterCritical(&xTickCountMutex);
 {

  const TickType_t xConstTickCount = xTickCount;





   if( *pxTicksToWait == ( TickType_t ) 0xffffffffUL )
   {
    xReturn = ( ( BaseType_t ) 0 );
   }
   else


  if( ( xNumOfOverflows != pxTimeOut->xOverflowCount ) && ( xConstTickCount >= pxTimeOut->xTimeOnEntering ) )
  {




   xReturn = ( ( BaseType_t ) 1 );
  }
  else if( ( xConstTickCount - pxTimeOut->xTimeOnEntering ) < *pxTicksToWait )
  {

   *pxTicksToWait -= ( xConstTickCount - pxTimeOut->xTimeOnEntering );
   vTaskSetTimeOutState( pxTimeOut );
   xReturn = ( ( BaseType_t ) 0 );
  }
  else
  {
   xReturn = ( ( BaseType_t ) 1 );
  }
 }
 vTaskExitCritical(&xTickCountMutex);

 return xReturn;
}


void vTaskMissedYield( void )
{
 xYieldPending[ xPortGetCoreID() ] = ( ( BaseType_t ) 1 );
}
# 3281 "C:/esp/esp-idf/components/freertos/tasks.c"
static void prvIdleTask( void *pvParameters )
{

 ( void ) pvParameters;

 for( ;; )
 {

  prvCheckTasksWaitingTermination();
# 3335 "C:/esp/esp-idf/components/freertos/tasks.c"
  {

   extern void esp_vApplicationIdleHook( void );
   esp_vApplicationIdleHook();
  }
# 3388 "C:/esp/esp-idf/components/freertos/tasks.c"
 }
}
# 3442 "C:/esp/esp-idf/components/freertos/tasks.c"
 void vTaskSetThreadLocalStoragePointerAndDelCallback( TaskHandle_t xTaskToSet, BaseType_t xIndex, void *pvValue , TlsDeleteCallbackFunction_t xDelCallback)
 {
 TCB_t *pxTCB;

  if( xIndex < 1 )
  {
   vTaskEnterCritical(&xTaskQueueMutex);
   pxTCB = ( ( ( xTaskToSet ) == 
# 3449 "C:/esp/esp-idf/components/freertos/tasks.c" 3 4
          ((void *)0) 
# 3449 "C:/esp/esp-idf/components/freertos/tasks.c"
          ) ? ( TCB_t * ) xTaskGetCurrentTaskHandle() : ( TCB_t * ) ( xTaskToSet ) );
   pxTCB->pvThreadLocalStoragePointers[ xIndex ] = pvValue;
   pxTCB->pvThreadLocalStoragePointersDelCallback[ xIndex ] = xDelCallback;
   vTaskExitCritical(&xTaskQueueMutex);
  }
 }

 void vTaskSetThreadLocalStoragePointer( TaskHandle_t xTaskToSet, BaseType_t xIndex, void *pvValue )
 {
  vTaskSetThreadLocalStoragePointerAndDelCallback( xTaskToSet, xIndex, pvValue, (TlsDeleteCallbackFunction_t)
# 3458 "C:/esp/esp-idf/components/freertos/tasks.c" 3 4
                                                                                                            ((void *)0) 
# 3458 "C:/esp/esp-idf/components/freertos/tasks.c"
                                                                                                                 );
 }
# 3482 "C:/esp/esp-idf/components/freertos/tasks.c"
 void *pvTaskGetThreadLocalStoragePointer( TaskHandle_t xTaskToQuery, BaseType_t xIndex )
 {
 void *pvReturn = 
# 3484 "C:/esp/esp-idf/components/freertos/tasks.c" 3 4
                 ((void *)0)
# 3484 "C:/esp/esp-idf/components/freertos/tasks.c"
                     ;
 TCB_t *pxTCB;

  if( xIndex < 1 )
  {
   pxTCB = ( ( ( xTaskToQuery ) == 
# 3489 "C:/esp/esp-idf/components/freertos/tasks.c" 3 4
          ((void *)0) 
# 3489 "C:/esp/esp-idf/components/freertos/tasks.c"
          ) ? ( TCB_t * ) xTaskGetCurrentTaskHandle() : ( TCB_t * ) ( xTaskToQuery ) );
   pvReturn = pxTCB->pvThreadLocalStoragePointers[ xIndex ];
  }
  else
  {
   pvReturn = 
# 3494 "C:/esp/esp-idf/components/freertos/tasks.c" 3 4
             ((void *)0)
# 3494 "C:/esp/esp-idf/components/freertos/tasks.c"
                 ;
  }

  return pvReturn;
 }






 void vTaskAllocateMPURegions( TaskHandle_t xTaskToModify, const MemoryRegion_t * const xRegions )
 {
 TCB_t *pxTCB;

  { ets_printf("Untested FreeRTOS function %s\r\n", __FUNCTION__); if (!(
# 3509 "C:/esp/esp-idf/components/freertos/tasks.c" 3 4
 0
# 3509 "C:/esp/esp-idf/components/freertos/tasks.c"
 )) { ets_printf("%s:%d (%s)- assert failed!\n", "C:/esp/esp-idf/components/freertos/tasks.c", 3509, __FUNCTION__); abort(); }; } while(0);

  pxTCB = ( ( ( xTaskToModify ) == 
# 3511 "C:/esp/esp-idf/components/freertos/tasks.c" 3 4
         ((void *)0) 
# 3511 "C:/esp/esp-idf/components/freertos/tasks.c"
         ) ? ( TCB_t * ) xTaskGetCurrentTaskHandle() : ( TCB_t * ) ( xTaskToModify ) );

        vPortStoreTaskMPUSettings( &( pxTCB->xMPUSettings ), xRegions, 
# 3513 "C:/esp/esp-idf/components/freertos/tasks.c" 3 4
                                                                      ((void *)0)
# 3513 "C:/esp/esp-idf/components/freertos/tasks.c"
                                                                          , 0 );
 }




static void prvInitialiseTaskLists( void )
{
UBaseType_t uxPriority;

 for( uxPriority = ( UBaseType_t ) 0U; uxPriority < ( UBaseType_t ) ( 25 ); uxPriority++ )
 {
  vListInitialise( &( pxReadyTasksLists[ uxPriority ] ) );
 }

 vListInitialise( &xDelayedTaskList1 );
 vListInitialise( &xDelayedTaskList2 );
 vListInitialise( &xPendingReadyList[ 0 ] );
 if (1 == 2) {
  vListInitialise( &xPendingReadyList[ 1 ] );
 }


 {
  vListInitialise( &xTasksWaitingTermination );
 }



 {
  vListInitialise( &xSuspendedTaskList );
 }




 pxDelayedTaskList = &xDelayedTaskList1;
 pxOverflowDelayedTaskList = &xDelayedTaskList2;
}


static void prvCheckTasksWaitingTermination( void )
{

 {
  BaseType_t xListIsEmpty;



  vTaskEnterCritical(&xTaskQueueMutex);
  while( uxTasksDeleted > ( UBaseType_t ) 0U )
  {
   {
    xListIsEmpty = ( ( BaseType_t ) ( ( &xTasksWaitingTermination )->uxNumberOfItems == ( UBaseType_t ) 0 ) );
   }

   if( xListIsEmpty == ( ( BaseType_t ) 0 ) )
   {
    TCB_t *pxTCB;

    {
     pxTCB = ( TCB_t * ) ( (&( ( ( &xTasksWaitingTermination ) )->xListEnd ))->pxNext->pvOwner );


     if( pxTCB->xCoreID == 0x7fffffff || pxTCB->xCoreID == xPortGetCoreID()) {
      ( void ) uxListRemove( &( pxTCB->xGenericListItem ) );
      --uxCurrentNumberOfTasks;
      --uxTasksDeleted;
     } else {

      break;
     }
    }


    {
     int x;
     for( x = 0; x < ( UBaseType_t ) 1; x++ )
     {
      if (pxTCB->pvThreadLocalStoragePointersDelCallback[ x ] != 
# 3592 "C:/esp/esp-idf/components/freertos/tasks.c" 3 4
                                                                ((void *)0)
# 3592 "C:/esp/esp-idf/components/freertos/tasks.c"
                                                                    )
      {
       pxTCB->pvThreadLocalStoragePointersDelCallback[ x ](x, pxTCB->pvThreadLocalStoragePointers[ x ]);
      }
     }
    }

    prvDeleteTCB( pxTCB );
   }
   else
   {
    ;
   }
  }
  vTaskExitCritical(&xTaskQueueMutex);
 }

}



static void prvAddCurrentTaskToDelayedList( const BaseType_t xCoreID, const TickType_t xTimeToWake )
{

 ( ( &( pxCurrentTCB[ xCoreID ]->xGenericListItem ) )->xItemValue = ( xTimeToWake ) );

 if( xTimeToWake < xTickCount )
 {
        ;

  vListInsert( pxOverflowDelayedTaskList, &( pxCurrentTCB[ xCoreID ]->xGenericListItem ) );
 }
 else
 {
        ;

  vListInsert( pxDelayedTaskList, &( pxCurrentTCB[ xCoreID ]->xGenericListItem ) );




  if( xTimeToWake < xNextTaskUnblockTime )
  {
   xNextTaskUnblockTime = xTimeToWake;
  }
  else
  {
   ;
  }
 }
}


BaseType_t xTaskGetAffinity( TaskHandle_t xTask )
{
 TCB_t *pxTCB;

 pxTCB = ( ( ( xTask ) == 
# 3649 "C:/esp/esp-idf/components/freertos/tasks.c" 3 4
        ((void *)0) 
# 3649 "C:/esp/esp-idf/components/freertos/tasks.c"
        ) ? ( TCB_t * ) xTaskGetCurrentTaskHandle() : ( TCB_t * ) ( xTask ) );

 return pxTCB->xCoreID;
}
# 3744 "C:/esp/esp-idf/components/freertos/tasks.c"
 static uint32_t prvTaskCheckFreeStackSpace( const uint8_t * pucStackByte )
 {
 uint32_t ulCount = 0U;

  while( *pucStackByte == ( uint8_t ) ( 0xa5U ) )
  {
   pucStackByte -= ( -1 );
   ulCount++;
  }

  ulCount /= ( uint32_t ) sizeof( StackType_t );

  return ( uint32_t ) ulCount;
 }






 UBaseType_t uxTaskGetStackHighWaterMark( TaskHandle_t xTask )
 {
 TCB_t *pxTCB;
 uint8_t *pucEndOfStack;
 UBaseType_t uxReturn;

  pxTCB = ( ( ( xTask ) == 
# 3770 "C:/esp/esp-idf/components/freertos/tasks.c" 3 4
         ((void *)0) 
# 3770 "C:/esp/esp-idf/components/freertos/tasks.c"
         ) ? ( TCB_t * ) xTaskGetCurrentTaskHandle() : ( TCB_t * ) ( xTask ) );


  {
   pucEndOfStack = ( uint8_t * ) pxTCB->pxStack;
  }






  uxReturn = ( UBaseType_t ) prvTaskCheckFreeStackSpace( pucEndOfStack );

  return uxReturn;
 }
# 3806 "C:/esp/esp-idf/components/freertos/tasks.c"
 static void prvDeleteTCB( TCB_t *pxTCB )
 {



  {
   _reclaim_reent( &( pxTCB->xNewLib_reent ) );
  }



   vPortReleaseTaskMPUSettings( &( pxTCB->xMPUSettings) );
# 3828 "C:/esp/esp-idf/components/freertos/tasks.c"
  {



   if( pxTCB->ucStaticallyAllocated == ( ( uint8_t ) 0 ) )
   {


    free( pxTCB->pxStack );
    free( pxTCB );
   }
   else if( pxTCB->ucStaticallyAllocated == ( ( uint8_t ) 1 ) )
   {


    free( pxTCB );
   }
   else
   {


    if (!(pxTCB->ucStaticallyAllocated == ( ( uint8_t ) 2 ))) { ets_printf("%s:%d (%s)- assert failed!\n", "C:/esp/esp-idf/components/freertos/tasks.c", 3849, __FUNCTION__); abort(); }
    ( void ) pxTCB;
    ;
   }
  }

 }




static void prvResetNextTaskUnblockTime( void )
{
TCB_t *pxTCB;

 if( ( ( BaseType_t ) ( ( pxDelayedTaskList )->uxNumberOfItems == ( UBaseType_t ) 0 ) ) != ( ( BaseType_t ) 0 ) )
 {





  xNextTaskUnblockTime = ( TickType_t ) 0xffffffffUL;
 }
 else
 {




  ( pxTCB ) = ( TCB_t * ) ( (&( ( pxDelayedTaskList )->xListEnd ))->pxNext->pvOwner );
  xNextTaskUnblockTime = ( ( &( ( pxTCB )->xGenericListItem ) )->xItemValue );
 }
}




 TaskHandle_t xTaskGetCurrentTaskHandle( void )
 {
 TaskHandle_t xReturn;
 unsigned state;

  state = portENTER_CRITICAL_NESTED();
  xReturn = pxCurrentTCB[ xPortGetCoreID() ];
  do { ; _xtos_set_intlevel(state); } while (0);

  return xReturn;
 }

 TaskHandle_t xTaskGetCurrentTaskHandleForCPU( BaseType_t cpuid )
 {
 TaskHandle_t xReturn=
# 3901 "C:/esp/esp-idf/components/freertos/tasks.c" 3 4
                     ((void *)0)
# 3901 "C:/esp/esp-idf/components/freertos/tasks.c"
                         ;


  if (cpuid < 1) {
   xReturn = pxCurrentTCB[ cpuid ];
  }

  return xReturn;
 }







 BaseType_t xTaskGetSchedulerState( void )
 {
 BaseType_t xReturn;
 unsigned state;

  state = portENTER_CRITICAL_NESTED();
  if( xSchedulerRunning == ( ( BaseType_t ) 0 ) )
  {
   xReturn = ( ( BaseType_t ) 1 );
  }
  else
  {
   if( uxSchedulerSuspended[ xPortGetCoreID() ] == ( UBaseType_t ) ( ( BaseType_t ) 0 ) )
   {
    xReturn = ( ( BaseType_t ) 2 );
   }
   else
   {
    xReturn = ( ( BaseType_t ) 0 );
   }
  }
  do { ; _xtos_set_intlevel(state); } while (0);

  return xReturn;
 }






 void vTaskPriorityInherit( TaskHandle_t const pxMutexHolder )
 {
 TCB_t * const pxTCB = ( TCB_t * ) pxMutexHolder;

  vTaskEnterCritical(&xTickCountMutex);


  if( pxMutexHolder != 
# 3955 "C:/esp/esp-idf/components/freertos/tasks.c" 3 4
                      ((void *)0) 
# 3955 "C:/esp/esp-idf/components/freertos/tasks.c"
                           )
  {
   if( pxTCB->uxPriority < pxCurrentTCB[ xPortGetCoreID() ]->uxPriority )
   {
    vTaskEnterCritical(&xTaskQueueMutex);



    if( ( ( ( &( pxTCB->xEventListItem ) )->xItemValue ) & 0x80000000UL ) == 0UL )
    {
     ( ( &( pxTCB->xEventListItem ) )->xItemValue = ( ( TickType_t ) ( 25 ) - ( TickType_t ) pxCurrentTCB[ xPortGetCoreID() ]->uxPriority ) );
    }
    else
    {
     ;
    }



    if( ( ( BaseType_t ) ( ( &( pxTCB->xGenericListItem ) )->pvContainer == ( void * ) ( &( pxReadyTasksLists[ pxTCB->uxPriority ] ) ) ) ) != ( ( BaseType_t ) 0 ) )
    {
     if( uxListRemove( &( pxTCB->xGenericListItem ) ) == ( UBaseType_t ) 0 )
     {
      ;
     }
     else
     {
      ;
     }


     pxTCB->uxPriority = pxCurrentTCB[ xPortGetCoreID() ]->uxPriority;
                    ; { if( ( ( pxTCB )->uxPriority ) > uxTopReadyPriority ) { uxTopReadyPriority = ( ( pxTCB )->uxPriority ); } }; vListInsertEnd( &( pxReadyTasksLists[ ( pxTCB )->uxPriority ] ), &( ( pxTCB )->xGenericListItem ) );
    }
    else
    {

     pxTCB->uxPriority = pxCurrentTCB[ xPortGetCoreID() ]->uxPriority;
    }

    vTaskExitCritical(&xTaskQueueMutex);

    ;
   }
   else
   {
    ;
   }
  }
  else
  {
   ;
  }

  vTaskExitCritical(&xTickCountMutex);

 }






 BaseType_t xTaskPriorityDisinherit( TaskHandle_t const pxMutexHolder )
 {
 TCB_t * const pxTCB = ( TCB_t * ) pxMutexHolder;
 BaseType_t xReturn = ( ( BaseType_t ) 0 );
  vTaskEnterCritical(&xTickCountMutex);

  if( pxMutexHolder != 
# 4024 "C:/esp/esp-idf/components/freertos/tasks.c" 3 4
                      ((void *)0) 
# 4024 "C:/esp/esp-idf/components/freertos/tasks.c"
                           )
  {
   if (!(pxTCB->uxMutexesHeld)) { ets_printf("%s:%d (%s)- assert failed!\n", "C:/esp/esp-idf/components/freertos/tasks.c", 4026, __FUNCTION__); abort(); };
   ( pxTCB->uxMutexesHeld )--;

   if( pxTCB->uxPriority != pxTCB->uxBasePriority )
   {

    if( pxTCB->uxMutexesHeld == ( UBaseType_t ) 0 )
    {
     vTaskEnterCritical(&xTaskQueueMutex);





     if( uxListRemove( &( pxTCB->xGenericListItem ) ) == ( UBaseType_t ) 0 )
     {
      ;
     }
     else
     {
      ;
     }



     ;
     pxTCB->uxPriority = pxTCB->uxBasePriority;




     ( ( &( pxTCB->xEventListItem ) )->xItemValue = ( ( TickType_t ) ( 25 ) - ( TickType_t ) pxTCB->uxPriority ) );
                    ; { if( ( ( pxTCB )->uxPriority ) > uxTopReadyPriority ) { uxTopReadyPriority = ( ( pxTCB )->uxPriority ); } }; vListInsertEnd( &( pxReadyTasksLists[ ( pxTCB )->uxPriority ] ), &( ( pxTCB )->xGenericListItem ) );
# 4068 "C:/esp/esp-idf/components/freertos/tasks.c"
     xReturn = ( ( BaseType_t ) 1 );
     vTaskExitCritical(&xTaskQueueMutex);
    }
    else
    {
     ;
    }
   }
   else
   {
    ;
   }
  }
  else
  {
   ;
  }

  vTaskExitCritical(&xTickCountMutex);
  return xReturn;
 }
# 4106 "C:/esp/esp-idf/components/freertos/tasks.c"
# 1 "C:/esp/esp-idf/components/freertos/portmux_impl.h" 1
# 36 "C:/esp/esp-idf/components/freertos/portmux_impl.h"
# 1 "C:/esp/esp-idf/components/soc/esp32/include/soc/cpu.h" 1
# 20 "C:/esp/esp-idf/components/soc/esp32/include/soc/cpu.h"
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 21 "C:/esp/esp-idf/components/soc/esp32/include/soc/cpu.h" 2
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
# 37 "C:/esp/esp-idf/components/freertos/portmux_impl.h" 2




static inline 
# 41 "C:/esp/esp-idf/components/freertos/portmux_impl.h" 3 4
             _Bool 
# 41 "C:/esp/esp-idf/components/freertos/portmux_impl.h"
                  __attribute__((always_inline))



vPortCPUAcquireMutexIntsDisabled(portMUX_TYPE *mux, int timeout_cycles) {
# 123 "C:/esp/esp-idf/components/freertos/portmux_impl.h"
 return 
# 123 "C:/esp/esp-idf/components/freertos/portmux_impl.h" 3 4
       1
# 123 "C:/esp/esp-idf/components/freertos/portmux_impl.h"
           ;
}




static inline void vPortCPUReleaseMutexIntsDisabled(portMUX_TYPE *mux) {
# 169 "C:/esp/esp-idf/components/freertos/portmux_impl.h"
}
# 4107 "C:/esp/esp-idf/components/freertos/tasks.c" 2




 void vTaskEnterCritical( portMUX_TYPE *mux )

 {
  BaseType_t oldInterruptLevel=0;
  BaseType_t schedulerRunning = xSchedulerRunning;
  if( schedulerRunning != ( ( BaseType_t ) 0 ) )
  {



   oldInterruptLevel=portENTER_CRITICAL_NESTED();
  }



  vPortCPUAcquireMutexIntsDisabled( mux, (-1) );


  if( schedulerRunning != ( ( BaseType_t ) 0 ) )
  {
   TCB_t *tcb = pxCurrentTCB[xPortGetCoreID()];
   BaseType_t newNesting = tcb->uxCriticalNesting + 1;
    tcb->uxCriticalNesting = newNesting;
   if( newNesting == 1 )
   {

    tcb->uxOldInterruptState = oldInterruptLevel;
   }
# 4161 "C:/esp/esp-idf/components/freertos/tasks.c"
  }
  else
  {
   ;
  }
 }
# 4180 "C:/esp/esp-idf/components/freertos/tasks.c"
 void vTaskExitCritical( portMUX_TYPE *mux )

 {



  vPortCPUReleaseMutexIntsDisabled( mux );

  if( xSchedulerRunning != ( ( BaseType_t ) 0 ) )
  {
   TCB_t *tcb = pxCurrentTCB[xPortGetCoreID()];
   BaseType_t nesting = tcb->uxCriticalNesting;
   if( nesting > 0U )
   {
    nesting--;
    tcb->uxCriticalNesting = nesting;

    if( nesting == 0U )
    {
     do { ; _xtos_set_intlevel(tcb->uxOldInterruptState); } while (0);
    }
    else
    {
     ;
    }
   }
   else
   {
    ;
   }
  }
  else
  {
   ;
  }
 }
# 4470 "C:/esp/esp-idf/components/freertos/tasks.c"
TickType_t uxTaskResetEventItemValue( void )
{
TickType_t uxReturn;
 vTaskEnterCritical(&xTaskQueueMutex);
 uxReturn = ( ( &( pxCurrentTCB[ xPortGetCoreID() ]->xEventListItem ) )->xItemValue );



 ( ( &( pxCurrentTCB[ xPortGetCoreID() ]->xEventListItem ) )->xItemValue = ( ( ( TickType_t ) ( 25 ) - ( TickType_t ) pxCurrentTCB[ xPortGetCoreID() ]->uxPriority ) ) );
 vTaskExitCritical(&xTaskQueueMutex);

 return uxReturn;
}




 void *pvTaskIncrementMutexHeldCount( void )
 {
 TCB_t *curTCB;



  vTaskEnterCritical(&xTaskQueueMutex);
  if( pxCurrentTCB[ xPortGetCoreID() ] != 
# 4494 "C:/esp/esp-idf/components/freertos/tasks.c" 3 4
                                         ((void *)0) 
# 4494 "C:/esp/esp-idf/components/freertos/tasks.c"
                                              )
  {
   ( pxCurrentTCB[ xPortGetCoreID() ]->uxMutexesHeld )++;
  }
  curTCB = pxCurrentTCB[ xPortGetCoreID() ];
  vTaskExitCritical(&xTaskQueueMutex);

  return curTCB;
 }






 uint32_t ulTaskNotifyTake( BaseType_t xClearCountOnExit, TickType_t xTicksToWait )
 {
 TickType_t xTimeToWake;
 uint32_t ulReturn;

  { ets_printf("Untested FreeRTOS function %s\r\n", __FUNCTION__); if (!(
# 4514 "C:/esp/esp-idf/components/freertos/tasks.c" 3 4
 0
# 4514 "C:/esp/esp-idf/components/freertos/tasks.c"
 )) { ets_printf("%s:%d (%s)- assert failed!\n", "C:/esp/esp-idf/components/freertos/tasks.c", 4514, __FUNCTION__); abort(); }; } while(0);
  vTaskEnterCritical(&xTaskQueueMutex);
  {

   if( pxCurrentTCB[ xPortGetCoreID() ]->ulNotifiedValue == 0UL )
   {

    pxCurrentTCB[ xPortGetCoreID() ]->eNotifyState = eWaitingNotification;

    if( xTicksToWait > ( TickType_t ) 0 )
    {


     if( uxListRemove( &( pxCurrentTCB[ xPortGetCoreID() ]->xGenericListItem ) ) == ( UBaseType_t ) 0 )
     {



      ;
     }
     else
     {
      ;
     }


     {
      if( xTicksToWait == ( TickType_t ) 0xffffffffUL )
      {




                            ;
       vListInsertEnd( &xSuspendedTaskList, &( pxCurrentTCB[ xPortGetCoreID() ]->xGenericListItem ) );
      }
      else
      {




       xTimeToWake = xTickCount + xTicksToWait;
       prvAddCurrentTaskToDelayedList( xPortGetCoreID(), xTimeToWake );
      }
     }
# 4575 "C:/esp/esp-idf/components/freertos/tasks.c"
     esp_crosscore_int_send_yield(xPortGetCoreID());
    }
    else
    {
     ;
    }
   }
   else
   {
    ;
   }
  }
  vTaskExitCritical(&xTaskQueueMutex);

  vTaskEnterCritical(&xTaskQueueMutex);
  {
   ulReturn = pxCurrentTCB[ xPortGetCoreID() ]->ulNotifiedValue;

   if( ulReturn != 0UL )
   {
    if( xClearCountOnExit != ( ( BaseType_t ) 0 ) )
    {
     pxCurrentTCB[ xPortGetCoreID() ]->ulNotifiedValue = 0UL;
    }
    else
    {
     ( pxCurrentTCB[ xPortGetCoreID() ]->ulNotifiedValue )--;
    }
   }
   else
   {
    ;
   }

   pxCurrentTCB[ xPortGetCoreID() ]->eNotifyState = eNotWaitingNotification;
  }
  vTaskExitCritical(&xTaskQueueMutex);

  return ulReturn;
 }






 BaseType_t xTaskNotifyWait( uint32_t ulBitsToClearOnEntry, uint32_t ulBitsToClearOnExit, uint32_t *pulNotificationValue, TickType_t xTicksToWait )
 {
 TickType_t xTimeToWake;
 BaseType_t xReturn;

  vTaskEnterCritical(&xTaskQueueMutex);
  {

   if( pxCurrentTCB[ xPortGetCoreID() ]->eNotifyState != eNotified )
   {



    pxCurrentTCB[ xPortGetCoreID() ]->ulNotifiedValue &= ~ulBitsToClearOnEntry;


    pxCurrentTCB[ xPortGetCoreID() ]->eNotifyState = eWaitingNotification;

    if( xTicksToWait > ( TickType_t ) 0 )
    {


     if( uxListRemove( &( pxCurrentTCB[ xPortGetCoreID() ]->xGenericListItem ) ) == ( UBaseType_t ) 0 )
     {



      ;
     }
     else
     {
      ;
     }


     {
      if( xTicksToWait == ( TickType_t ) 0xffffffffUL )
      {




                            ;
       vListInsertEnd( &xSuspendedTaskList, &( pxCurrentTCB[ xPortGetCoreID() ]->xGenericListItem ) );
      }
      else
      {




       xTimeToWake = xTickCount + xTicksToWait;
       prvAddCurrentTaskToDelayedList( xPortGetCoreID(), xTimeToWake );
      }
     }
# 4691 "C:/esp/esp-idf/components/freertos/tasks.c"
     esp_crosscore_int_send_yield(xPortGetCoreID());
    }
    else
    {
     ;
    }
   }
   else
   {
    ;
   }
  }
  vTaskExitCritical(&xTaskQueueMutex);

  vTaskEnterCritical(&xTaskQueueMutex);
  {
   if( pulNotificationValue != 
# 4707 "C:/esp/esp-idf/components/freertos/tasks.c" 3 4
                              ((void *)0) 
# 4707 "C:/esp/esp-idf/components/freertos/tasks.c"
                                   )
   {


    *pulNotificationValue = pxCurrentTCB[ xPortGetCoreID() ]->ulNotifiedValue;
   }





   if( pxCurrentTCB[ xPortGetCoreID() ]->eNotifyState == eWaitingNotification )
   {

    xReturn = ( ( BaseType_t ) 0 );
   }
   else
   {


    pxCurrentTCB[ xPortGetCoreID() ]->ulNotifiedValue &= ~ulBitsToClearOnExit;
    xReturn = ( ( BaseType_t ) 1 );
   }

   pxCurrentTCB[ xPortGetCoreID() ]->eNotifyState = eNotWaitingNotification;
  }
  vTaskExitCritical(&xTaskQueueMutex);

  return xReturn;
 }






 BaseType_t xTaskNotify( TaskHandle_t xTaskToNotify, uint32_t ulValue, eNotifyAction eAction )
 {
 TCB_t * pxTCB;
 eNotifyValue eOriginalNotifyState;
 BaseType_t xReturn = ( ( ( BaseType_t ) 1 ) );

  if (!(xTaskToNotify)) { ets_printf("%s:%d (%s)- assert failed!\n", "C:/esp/esp-idf/components/freertos/tasks.c", 4749, __FUNCTION__); abort(); };
  pxTCB = ( TCB_t * ) xTaskToNotify;

  vTaskEnterCritical(&xTaskQueueMutex);
  {
   eOriginalNotifyState = pxTCB->eNotifyState;

   pxTCB->eNotifyState = eNotified;

   switch( eAction )
   {
    case eSetBits :
     pxTCB->ulNotifiedValue |= ulValue;
     break;

    case eIncrement :
     ( pxTCB->ulNotifiedValue )++;
     break;

    case eSetValueWithOverwrite :
     pxTCB->ulNotifiedValue = ulValue;
     break;

    case eSetValueWithoutOverwrite :
     if( eOriginalNotifyState != eNotified )
     {
      pxTCB->ulNotifiedValue = ulValue;
     }
     else
     {

      xReturn = ( ( ( BaseType_t ) 0 ) );
     }
     break;

    case eNoAction:


     break;
   }




   if( eOriginalNotifyState == eWaitingNotification )
   {
    ( void ) uxListRemove( &( pxTCB->xGenericListItem ) );
    ; { if( ( ( pxTCB )->uxPriority ) > uxTopReadyPriority ) { uxTopReadyPriority = ( ( pxTCB )->uxPriority ); } }; vListInsertEnd( &( pxReadyTasksLists[ ( pxTCB )->uxPriority ] ), &( ( pxTCB )->xGenericListItem ) );


    if (!(( ( &( pxTCB->xEventListItem ) )->pvContainer ) == 
# 4799 "C:/esp/esp-idf/components/freertos/tasks.c" 3 4
   ((void *)0)
# 4799 "C:/esp/esp-idf/components/freertos/tasks.c"
   )) { ets_printf("%s:%d (%s)- assert failed!\n", "C:/esp/esp-idf/components/freertos/tasks.c", 4799, __FUNCTION__); abort(); };

    if( ( pxTCB->xCoreID==xPortGetCoreID() || pxTCB->xCoreID==0x7fffffff ) && pxTCB->uxPriority > pxCurrentTCB[ xPortGetCoreID() ]->uxPriority )
    {


     esp_crosscore_int_send_yield(xPortGetCoreID());
    }
    else if ( pxTCB->xCoreID != xPortGetCoreID() )
    {
     taskYIELD_OTHER_CORE(pxTCB->xCoreID, pxTCB->uxPriority);
    }
    else
    {
     ;
    }
   }
   else
   {
    ;
   }
  }
  vTaskExitCritical(&xTaskQueueMutex);

  return xReturn;
 }






 BaseType_t xTaskNotifyFromISR( TaskHandle_t xTaskToNotify, uint32_t ulValue, eNotifyAction eAction, BaseType_t *pxHigherPriorityTaskWoken )
 {
 TCB_t * pxTCB;
 eNotifyValue eOriginalNotifyState;
 BaseType_t xReturn = ( ( ( BaseType_t ) 1 ) );

  { ets_printf("Untested FreeRTOS function %s\r\n", __FUNCTION__); if (!(
# 4837 "C:/esp/esp-idf/components/freertos/tasks.c" 3 4
 0
# 4837 "C:/esp/esp-idf/components/freertos/tasks.c"
 )) { ets_printf("%s:%d (%s)- assert failed!\n", "C:/esp/esp-idf/components/freertos/tasks.c", 4837, __FUNCTION__); abort(); }; } while(0);
  if (!(xTaskToNotify)) { ets_printf("%s:%d (%s)- assert failed!\n", "C:/esp/esp-idf/components/freertos/tasks.c", 4838, __FUNCTION__); abort(); };

  pxTCB = ( TCB_t * ) xTaskToNotify;

  vTaskEnterCritical(&xTaskQueueMutex);

  {
   eOriginalNotifyState = pxTCB->eNotifyState;

   pxTCB->eNotifyState = eNotified;

   switch( eAction )
   {
    case eSetBits :
     pxTCB->ulNotifiedValue |= ulValue;
     break;

    case eIncrement :
     ( pxTCB->ulNotifiedValue )++;
     break;

    case eSetValueWithOverwrite :
     pxTCB->ulNotifiedValue = ulValue;
     break;

    case eSetValueWithoutOverwrite :
     if( eOriginalNotifyState != eNotified )
     {
      pxTCB->ulNotifiedValue = ulValue;
     }
     else
     {

      xReturn = ( ( ( BaseType_t ) 0 ) );
     }
     break;

    case eNoAction :


     break;
   }




   if( eOriginalNotifyState == eWaitingNotification )
   {

    if (!(( ( &( pxTCB->xEventListItem ) )->pvContainer ) == 
# 4887 "C:/esp/esp-idf/components/freertos/tasks.c" 3 4
   ((void *)0)
# 4887 "C:/esp/esp-idf/components/freertos/tasks.c"
   )) { ets_printf("%s:%d (%s)- assert failed!\n", "C:/esp/esp-idf/components/freertos/tasks.c", 4887, __FUNCTION__); abort(); };

    if( uxSchedulerSuspended[ xPortGetCoreID() ] == ( UBaseType_t ) ( ( BaseType_t ) 0 ) )
    {
     ( void ) uxListRemove( &( pxTCB->xGenericListItem ) );
     ; { if( ( ( pxTCB )->uxPriority ) > uxTopReadyPriority ) { uxTopReadyPriority = ( ( pxTCB )->uxPriority ); } }; vListInsertEnd( &( pxReadyTasksLists[ ( pxTCB )->uxPriority ] ), &( ( pxTCB )->xGenericListItem ) );
    }
    else
    {


     vListInsertEnd( &( xPendingReadyList[ xPortGetCoreID() ] ), &( pxTCB->xEventListItem ) );
    }

    if( ( pxTCB->xCoreID==xPortGetCoreID() || pxTCB->xCoreID==0x7fffffff ) && pxTCB->uxPriority > pxCurrentTCB[ xPortGetCoreID() ]->uxPriority )
    {


     if( pxHigherPriorityTaskWoken != 
# 4905 "C:/esp/esp-idf/components/freertos/tasks.c" 3 4
                                     ((void *)0) 
# 4905 "C:/esp/esp-idf/components/freertos/tasks.c"
                                          )
     {
      *pxHigherPriorityTaskWoken = ( ( BaseType_t ) 1 );
     }
    }
    else if ( pxTCB->xCoreID != xPortGetCoreID() )
    {
     taskYIELD_OTHER_CORE( pxTCB->xCoreID, pxTCB->uxPriority );
    }
    else
    {
     ;
    }
   }
  }
  vTaskExitCritical(&xTaskQueueMutex);

  return xReturn;
 }






 void vTaskNotifyGiveFromISR( TaskHandle_t xTaskToNotify, BaseType_t *pxHigherPriorityTaskWoken )
 {
 TCB_t * pxTCB;
 eNotifyValue eOriginalNotifyState;

  { ets_printf("Untested FreeRTOS function %s\r\n", __FUNCTION__); if (!(
# 4935 "C:/esp/esp-idf/components/freertos/tasks.c" 3 4
 0
# 4935 "C:/esp/esp-idf/components/freertos/tasks.c"
 )) { ets_printf("%s:%d (%s)- assert failed!\n", "C:/esp/esp-idf/components/freertos/tasks.c", 4935, __FUNCTION__); abort(); }; } while(0);
  if (!(xTaskToNotify)) { ets_printf("%s:%d (%s)- assert failed!\n", "C:/esp/esp-idf/components/freertos/tasks.c", 4936, __FUNCTION__); abort(); };


  pxTCB = ( TCB_t * ) xTaskToNotify;

  vTaskEnterCritical(&xTaskQueueMutex);
  {
   eOriginalNotifyState = pxTCB->eNotifyState;
   pxTCB->eNotifyState = eNotified;



   ( pxTCB->ulNotifiedValue )++;



   if( eOriginalNotifyState == eWaitingNotification )
   {

    if (!(( ( &( pxTCB->xEventListItem ) )->pvContainer ) == 
# 4955 "C:/esp/esp-idf/components/freertos/tasks.c" 3 4
   ((void *)0)
# 4955 "C:/esp/esp-idf/components/freertos/tasks.c"
   )) { ets_printf("%s:%d (%s)- assert failed!\n", "C:/esp/esp-idf/components/freertos/tasks.c", 4955, __FUNCTION__); abort(); };

    if( uxSchedulerSuspended[ xPortGetCoreID() ] == ( UBaseType_t ) ( ( BaseType_t ) 0 ) )
    {
     ( void ) uxListRemove( &( pxTCB->xGenericListItem ) );
     ; { if( ( ( pxTCB )->uxPriority ) > uxTopReadyPriority ) { uxTopReadyPriority = ( ( pxTCB )->uxPriority ); } }; vListInsertEnd( &( pxReadyTasksLists[ ( pxTCB )->uxPriority ] ), &( ( pxTCB )->xGenericListItem ) );
    }
    else
    {


     vListInsertEnd( &( xPendingReadyList[ xPortGetCoreID() ] ), &( pxTCB->xEventListItem ) );
    }

    if( ( pxTCB->xCoreID==xPortGetCoreID() || pxTCB->xCoreID==0x7fffffff ) && pxTCB->uxPriority > pxCurrentTCB[ xPortGetCoreID() ]->uxPriority )
    {


     if( pxHigherPriorityTaskWoken != 
# 4973 "C:/esp/esp-idf/components/freertos/tasks.c" 3 4
                                     ((void *)0) 
# 4973 "C:/esp/esp-idf/components/freertos/tasks.c"
                                          )
     {
      *pxHigherPriorityTaskWoken = ( ( BaseType_t ) 1 );
     }
    }
    else if ( pxTCB->xCoreID != xPortGetCoreID() )
    {
     taskYIELD_OTHER_CORE( pxTCB->xCoreID, pxTCB->uxPriority );
    }
    else
    {
     ;
    }
   }
  }
  vTaskExitCritical(&xTaskQueueMutex);
 }




 static void prvTaskGetSnapshot( TaskSnapshot_t *pxTaskSnapshotArray, UBaseType_t *uxTask, TCB_t *pxTCB )
 {
  if (pxTCB == 
# 4996 "C:/esp/esp-idf/components/freertos/tasks.c" 3 4
              ((void *)0)
# 4996 "C:/esp/esp-idf/components/freertos/tasks.c"
                  ) {
   return;
  }
  pxTaskSnapshotArray[ *uxTask ].pxTCB = pxTCB;
  pxTaskSnapshotArray[ *uxTask ].pxTopOfStack = (StackType_t *)pxTCB->pxTopOfStack;

  {
   pxTaskSnapshotArray[ *uxTask ].pxEndOfStack = pxTCB->pxEndOfStack;
  }





  (*uxTask)++;
 }

 static void prvTaskGetSnapshotsFromList( TaskSnapshot_t *pxTaskSnapshotArray, UBaseType_t *uxTask, const UBaseType_t uxArraySize, List_t *pxList )
 {
  TCB_t *pxNextTCB, *pxFirstTCB;

  if( ( ( pxList )->uxNumberOfItems ) > ( UBaseType_t ) 0 )
  {
   { List_t * const pxConstList = ( pxList ); ( pxConstList )->pxIndex = ( pxConstList )->pxIndex->pxNext; if( ( void * ) ( pxConstList )->pxIndex == ( void * ) &( ( pxConstList )->xListEnd ) ) { ( pxConstList )->pxIndex = ( pxConstList )->pxIndex->pxNext; } ( pxFirstTCB ) = ( pxConstList )->pxIndex->pvOwner; };
   do
   {
    if( *uxTask >= uxArraySize )
     break;

    { List_t * const pxConstList = ( pxList ); ( pxConstList )->pxIndex = ( pxConstList )->pxIndex->pxNext; if( ( void * ) ( pxConstList )->pxIndex == ( void * ) &( ( pxConstList )->xListEnd ) ) { ( pxConstList )->pxIndex = ( pxConstList )->pxIndex->pxNext; } ( pxNextTCB ) = ( pxConstList )->pxIndex->pvOwner; };
    prvTaskGetSnapshot( pxTaskSnapshotArray, uxTask, pxNextTCB );
   } while( pxNextTCB != pxFirstTCB );
  }
  else
  {
   ;
  }
 }

 UBaseType_t uxTaskGetSnapshotAll( TaskSnapshot_t * const pxTaskSnapshotArray, const UBaseType_t uxArraySize, UBaseType_t * const pxTcbSz )
 {
  UBaseType_t uxTask = 0, i = 0;


  *pxTcbSz = sizeof(TCB_t);


  i = ( 25 );
  do
  {
   i--;
   prvTaskGetSnapshotsFromList( pxTaskSnapshotArray, &uxTask, uxArraySize, &( pxReadyTasksLists[ i ] ) );
  } while( i > ( UBaseType_t ) ( ( UBaseType_t ) 0U ) );



  prvTaskGetSnapshotsFromList( pxTaskSnapshotArray, &uxTask, uxArraySize, ( List_t * ) pxDelayedTaskList );
  prvTaskGetSnapshotsFromList( pxTaskSnapshotArray, &uxTask, uxArraySize, ( List_t * ) pxOverflowDelayedTaskList );
  for (i = 0; i < 1; i++) {
   if( uxTask >= uxArraySize )
    break;
   prvTaskGetSnapshotsFromList( pxTaskSnapshotArray, &uxTask, uxArraySize, &( xPendingReadyList[ i ] ) );
  }


  {
   prvTaskGetSnapshotsFromList( pxTaskSnapshotArray, &uxTask, uxArraySize, &xTasksWaitingTermination );
  }



  {
   prvTaskGetSnapshotsFromList( pxTaskSnapshotArray, &uxTask, uxArraySize, &xSuspendedTaskList );
  }

  return uxTask;
 }
