# 1 "C:/esp/esp-idf/components/bootloader_support/src/bootloader_sha.c"
# 1 "C:\\esp\\ArkPOS2-esp\\build\\bootloader\\bootloader_support//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "C:/esp/esp-idf/components/bootloader_support/src/bootloader_sha.c"
# 14 "C:/esp/esp-idf/components/bootloader_support/src/bootloader_sha.c"
# 1 "C:/esp/esp-idf/components/bootloader_support/include_priv/bootloader_sha.h" 1
# 14 "C:/esp/esp-idf/components/bootloader_support/include_priv/bootloader_sha.h"
       
# 23 "C:/esp/esp-idf/components/bootloader_support/include_priv/bootloader_sha.h"
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
# 24 "C:/esp/esp-idf/components/bootloader_support/include_priv/bootloader_sha.h" 2
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\stdlib.h" 1 3
# 10 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\stdlib.h" 3
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\machine\\ieeefp.h" 1 3
# 11 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\stdlib.h" 2 3
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
# 12 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\stdlib.h" 2 3




# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 216 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 3 4
typedef unsigned int size_t;
# 328 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 3 4
typedef short unsigned int wchar_t;
# 17 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\stdlib.h" 2 3

# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\sys\\reent.h" 1 3
# 13 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\sys\\reent.h" 3
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\_ansi.h" 1 3
# 14 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\sys\\reent.h" 2 3
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 149 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 3 4
typedef int ptrdiff_t;
# 15 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\sys\\reent.h" 2 3
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\sys\\_types.h" 1 3
# 12 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\sys\\_types.h" 3
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\machine\\_types.h" 1 3
# 13 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\sys\\_types.h" 2 3
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\sys\\lock.h" 1 3
# 11 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\sys\\lock.h" 3
typedef int _lock_t;
typedef _lock_t _LOCK_RECURSIVE_T;
typedef _lock_t _LOCK_T;
# 28 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\sys\\lock.h" 3
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
# 14 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\sys\\_types.h" 2 3


typedef long _off_t;



typedef short __dev_t;



typedef unsigned short __uid_t;


typedef unsigned short __gid_t;



__extension__ typedef long long _off64_t;







typedef long _fpos_t;
# 55 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\sys\\_types.h" 3
typedef signed int _ssize_t;
# 67 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\sys\\_types.h" 3
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 357 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 3 4
typedef unsigned int wint_t;
# 68 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\sys\\_types.h" 2 3



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
# 16 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\sys\\reent.h" 2 3






typedef unsigned long __ULong;
# 38 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\sys\\reent.h" 3
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
# 115 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\sys\\reent.h" 3
struct __sbuf {
 unsigned char *_base;
 int _size;
};
# 151 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\sys\\reent.h" 3
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
# 179 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\sys\\reent.h" 3
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
# 285 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\sys\\reent.h" 3
typedef struct __sFILE __FILE;



struct _glue
{
  struct _glue *_next;
  int _niobs;
  __FILE *_iobs;
};
# 317 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\sys\\reent.h" 3
struct _rand48 {
  unsigned short _seed[3];
  unsigned short _mult[3];
  unsigned short _add;


  __extension__ unsigned long long _rand_next;

};
# 342 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\sys\\reent.h" 3
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
# 766 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\sys\\reent.h" 3
extern struct _reent *_global_impure_ptr ;

void _reclaim_reent (struct _reent *);





  struct _reent * __getreent (void);
# 19 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\stdlib.h" 2 3
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\sys\\cdefs.h" 1 3
# 45 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\sys\\cdefs.h" 3
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 46 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\sys\\cdefs.h" 2 3
# 20 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\stdlib.h" 2 3
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\machine\\stdlib.h" 1 3
# 21 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\stdlib.h" 2 3

# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\alloca.h" 1 3
# 23 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\stdlib.h" 2 3








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
# 67 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\stdlib.h" 3
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
# 258 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\stdlib.h" 3
char * _dtoa_r (struct _reent *, double, int, int, int *, int*, char**);

void * _malloc_r (struct _reent *, size_t) ;
void * _calloc_r (struct _reent *, size_t, size_t) ;
void _free_r (struct _reent *, void *) ;
void * _realloc_r (struct _reent *, void *, size_t) ;
void _mstats_r (struct _reent *, char *);

int _system_r (struct _reent *, const char *);

void __eprintf (const char *, const char *, unsigned int, const char *);
# 291 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\stdlib.h" 3
extern long double strtold (const char *restrict, char **restrict);




# 25 "C:/esp/esp-idf/components/bootloader_support/include_priv/bootloader_sha.h" 2


# 26 "C:/esp/esp-idf/components/bootloader_support/include_priv/bootloader_sha.h"
typedef void *bootloader_sha256_handle_t;

bootloader_sha256_handle_t bootloader_sha256_start();

void bootloader_sha256_data(bootloader_sha256_handle_t handle, const void *data, size_t data_len);

void bootloader_sha256_finish(bootloader_sha256_handle_t handle, uint8_t *digest);
# 15 "C:/esp/esp-idf/components/bootloader_support/src/bootloader_sha.c" 2
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stdbool.h" 1 3 4
# 16 "C:/esp/esp-idf/components/bootloader_support/src/bootloader_sha.c" 2
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\string.h" 1 3
# 17 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\string.h" 3
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 18 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\string.h" 2 3




# 21 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\string.h" 3
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
# 106 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\string.h" 3
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
# 163 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\string.h" 3
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\sys\\string.h" 1 3
# 164 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\string.h" 2 3


# 17 "C:/esp/esp-idf/components/bootloader_support/src/bootloader_sha.c" 2
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\assert.h" 1 3
# 39 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\assert.h" 3
void __assert (const char *, int, const char *) __attribute__ ((__noreturn__))
                                 ;
void __assert_func (const char *, int, const char *, const char *) __attribute__ ((__noreturn__))
                                 ;
# 18 "C:/esp/esp-idf/components/bootloader_support/src/bootloader_sha.c" 2
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\sys\\param.h" 1 3
# 9 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\sys\\param.h" 3
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\sys\\syslimits.h" 1 3
# 10 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\sys\\param.h" 2 3
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\machine\\endian.h" 1 3
# 11 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\sys\\param.h" 2 3
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\machine\\param.h" 1 3
# 12 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\sys\\param.h" 2 3
# 19 "C:/esp/esp-idf/components/bootloader_support/src/bootloader_sha.c" 2
# 55 "C:/esp/esp-idf/components/bootloader_support/src/bootloader_sha.c"
# 1 "C:/esp/esp-idf/components/esp32/include/rom/sha.h" 1
# 32 "C:/esp/esp-idf/components/esp32/include/rom/sha.h"

# 32 "C:/esp/esp-idf/components/esp32/include/rom/sha.h"
typedef struct SHAContext {
    
# 33 "C:/esp/esp-idf/components/esp32/include/rom/sha.h" 3 4
   _Bool 
# 33 "C:/esp/esp-idf/components/esp32/include/rom/sha.h"
        start;
    uint32_t total_input_bits[4];
} SHA_CTX;

enum SHA_TYPE {
    SHA1 = 0,
    SHA2_256,
    SHA2_384,
    SHA2_512,


    SHA_INVALID = -1,
};

void ets_sha_init(SHA_CTX *ctx);

void ets_sha_enable(void);

void ets_sha_disable(void);

void ets_sha_update(SHA_CTX *ctx, enum SHA_TYPE type, const uint8_t *input, size_t input_bits);

void ets_sha_finish(SHA_CTX *ctx, enum SHA_TYPE type, uint8_t *output);
# 56 "C:/esp/esp-idf/components/bootloader_support/src/bootloader_sha.c" 2
# 1 "C:/esp/esp-idf/components/soc/esp32/include/soc/dport_reg.h" 1
# 17 "C:/esp/esp-idf/components/soc/esp32/include/soc/dport_reg.h"
# 1 "C:/esp/esp-idf/components/soc/esp32/include/soc/soc.h" 1
# 20 "C:/esp/esp-idf/components/soc/esp32/include/soc/soc.h"
# 1 "C:/esp/esp-idf/components/esp32/include/esp_assert.h" 1
# 17 "C:/esp/esp-idf/components/esp32/include/esp_assert.h"
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\assert.h" 1 3
# 39 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\assert.h" 3

# 39 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\assert.h" 3
void __assert (const char *, int, const char *) __attribute__ ((__noreturn__))
                                 ;
void __assert_func (const char *, int, const char *, const char *) __attribute__ ((__noreturn__))
                                 ;
# 18 "C:/esp/esp-idf/components/esp32/include/esp_assert.h" 2
# 21 "C:/esp/esp-idf/components/soc/esp32/include/soc/soc.h" 2
# 18 "C:/esp/esp-idf/components/soc/esp32/include/soc/dport_reg.h" 2


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
# 57 "C:/esp/esp-idf/components/bootloader_support/src/bootloader_sha.c" 2
# 1 "C:/esp/esp-idf/components/soc/esp32/include/soc/hwcrypto_reg.h" 1
# 58 "C:/esp/esp-idf/components/bootloader_support/src/bootloader_sha.c" 2

# 1 "C:/esp/esp-idf/components/esp32/include/rom/ets_sys.h" 1
# 21 "C:/esp/esp-idf/components/esp32/include/rom/ets_sys.h"
# 1 "C:/esp/esp-idf/components/soc/esp32/include/soc/soc.h" 1
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
# 60 "C:/esp/esp-idf/components/bootloader_support/src/bootloader_sha.c" 2

static uint32_t words_hashed;


static const size_t BLOCK_WORDS = (64/sizeof(uint32_t));

static const size_t DIGEST_WORDS = (32/sizeof(uint32_t));

bootloader_sha256_handle_t bootloader_sha256_start()
{

    ets_sha_enable();
    words_hashed = 0;
    return (bootloader_sha256_handle_t)&words_hashed;
}

void bootloader_sha256_data(bootloader_sha256_handle_t handle, const void *data, size_t data_len)
{
    
# 78 "C:/esp/esp-idf/components/bootloader_support/src/bootloader_sha.c" 3
   ((
# 78 "C:/esp/esp-idf/components/bootloader_support/src/bootloader_sha.c"
   handle != 
# 78 "C:/esp/esp-idf/components/bootloader_support/src/bootloader_sha.c" 3 4
   ((void *)0)) ? (void)0 : __assert_func ("C:/esp/esp-idf/components/bootloader_support/src/bootloader_sha.c", 78, __func__, 
# 78 "C:/esp/esp-idf/components/bootloader_support/src/bootloader_sha.c"
   "handle != NULL"
# 78 "C:/esp/esp-idf/components/bootloader_support/src/bootloader_sha.c" 3
   ))
# 78 "C:/esp/esp-idf/components/bootloader_support/src/bootloader_sha.c"
                         ;
    
# 79 "C:/esp/esp-idf/components/bootloader_support/src/bootloader_sha.c" 3
   ((
# 79 "C:/esp/esp-idf/components/bootloader_support/src/bootloader_sha.c"
   data_len % 4 == 0
# 79 "C:/esp/esp-idf/components/bootloader_support/src/bootloader_sha.c" 3
   ) ? (void)0 : __assert_func ("C:/esp/esp-idf/components/bootloader_support/src/bootloader_sha.c", 79, __func__, 
# 79 "C:/esp/esp-idf/components/bootloader_support/src/bootloader_sha.c"
   "data_len % 4 == 0"
# 79 "C:/esp/esp-idf/components/bootloader_support/src/bootloader_sha.c" 3
   ))
# 79 "C:/esp/esp-idf/components/bootloader_support/src/bootloader_sha.c"
                            ;

    const uint32_t *w = (const uint32_t *)data;
    size_t word_len = data_len / 4;
    uint32_t *sha_text_reg = (uint32_t *)(((0x3ff03000) + 0x00));


    while (word_len > 0) {
        size_t block_count = words_hashed % BLOCK_WORDS;
        size_t copy_words = (BLOCK_WORDS - block_count);

        copy_words = 
# 90 "C:/esp/esp-idf/components/bootloader_support/src/bootloader_sha.c" 3
                    ((
# 90 "C:/esp/esp-idf/components/bootloader_support/src/bootloader_sha.c"
                    word_len
# 90 "C:/esp/esp-idf/components/bootloader_support/src/bootloader_sha.c" 3
                    ) < (
# 90 "C:/esp/esp-idf/components/bootloader_support/src/bootloader_sha.c"
                    copy_words
# 90 "C:/esp/esp-idf/components/bootloader_support/src/bootloader_sha.c" 3
                    ) ? (
# 90 "C:/esp/esp-idf/components/bootloader_support/src/bootloader_sha.c"
                    word_len
# 90 "C:/esp/esp-idf/components/bootloader_support/src/bootloader_sha.c" 3
                    ) : (
# 90 "C:/esp/esp-idf/components/bootloader_support/src/bootloader_sha.c"
                    copy_words
# 90 "C:/esp/esp-idf/components/bootloader_support/src/bootloader_sha.c" 3
                    ))
# 90 "C:/esp/esp-idf/components/bootloader_support/src/bootloader_sha.c"
                                             ;


        while(({ ; (*(volatile uint32_t *)(((0x3ff03000) + 0x9c))); }) != 0) { }



        for (int i = 0; i < copy_words; i++) {
            sha_text_reg[block_count + i] = __builtin_bswap32(w[i]);
        }
        asm volatile ("memw");


        words_hashed += copy_words;
        block_count += copy_words;
        word_len -= copy_words;
        w += copy_words;


        if (block_count == BLOCK_WORDS) {

            if (words_hashed == BLOCK_WORDS) {
                ({ ; (*(volatile uint32_t *)(((0x3ff03000) + 0x90))) = (1); });
            } else {
                ({ ; (*(volatile uint32_t *)(((0x3ff03000) + 0x94))) = (1); });
            }
            block_count = 0;
        }
    }
}

void bootloader_sha256_finish(bootloader_sha256_handle_t handle, uint8_t *digest)
{
    
# 123 "C:/esp/esp-idf/components/bootloader_support/src/bootloader_sha.c" 3
   ((
# 123 "C:/esp/esp-idf/components/bootloader_support/src/bootloader_sha.c"
   handle != 
# 123 "C:/esp/esp-idf/components/bootloader_support/src/bootloader_sha.c" 3 4
   ((void *)0)) ? (void)0 : __assert_func ("C:/esp/esp-idf/components/bootloader_support/src/bootloader_sha.c", 123, __func__, 
# 123 "C:/esp/esp-idf/components/bootloader_support/src/bootloader_sha.c"
   "handle != NULL"
# 123 "C:/esp/esp-idf/components/bootloader_support/src/bootloader_sha.c" 3
   ))
# 123 "C:/esp/esp-idf/components/bootloader_support/src/bootloader_sha.c"
                         ;

    if (digest == 
# 125 "C:/esp/esp-idf/components/bootloader_support/src/bootloader_sha.c" 3 4
                 ((void *)0)
# 125 "C:/esp/esp-idf/components/bootloader_support/src/bootloader_sha.c"
                     ) {
        return;
    }

    uint32_t data_words = words_hashed;




    int block_bytes = (words_hashed % BLOCK_WORDS) * 4;
    int pad_bytes = 55 - block_bytes;
    if (pad_bytes < 0) {
        pad_bytes += 64;
    }
    static const uint8_t padding[64] = { 0x80, 0, };

    pad_bytes += 5;
    
# 142 "C:/esp/esp-idf/components/bootloader_support/src/bootloader_sha.c" 3
   ((
# 142 "C:/esp/esp-idf/components/bootloader_support/src/bootloader_sha.c"
   pad_bytes % 4 == 0
# 142 "C:/esp/esp-idf/components/bootloader_support/src/bootloader_sha.c" 3
   ) ? (void)0 : __assert_func ("C:/esp/esp-idf/components/bootloader_support/src/bootloader_sha.c", 142, __func__, 
# 142 "C:/esp/esp-idf/components/bootloader_support/src/bootloader_sha.c"
   "pad_bytes % 4 == 0"
# 142 "C:/esp/esp-idf/components/bootloader_support/src/bootloader_sha.c" 3
   ))
# 142 "C:/esp/esp-idf/components/bootloader_support/src/bootloader_sha.c"
                             ;

    bootloader_sha256_data(handle, padding, pad_bytes);

    
# 146 "C:/esp/esp-idf/components/bootloader_support/src/bootloader_sha.c" 3
   ((
# 146 "C:/esp/esp-idf/components/bootloader_support/src/bootloader_sha.c"
   words_hashed % BLOCK_WORDS == 60/4
# 146 "C:/esp/esp-idf/components/bootloader_support/src/bootloader_sha.c" 3
   ) ? (void)0 : __assert_func ("C:/esp/esp-idf/components/bootloader_support/src/bootloader_sha.c", 146, __func__, 
# 146 "C:/esp/esp-idf/components/bootloader_support/src/bootloader_sha.c"
   "words_hashed % BLOCK_WORDS == 60/4"
# 146 "C:/esp/esp-idf/components/bootloader_support/src/bootloader_sha.c" 3
   ))
# 146 "C:/esp/esp-idf/components/bootloader_support/src/bootloader_sha.c"
                                             ;


    uint32_t bit_count = __builtin_bswap32( data_words * 32 );
    bootloader_sha256_data(handle, &bit_count, sizeof(bit_count));

    
# 152 "C:/esp/esp-idf/components/bootloader_support/src/bootloader_sha.c" 3
   ((
# 152 "C:/esp/esp-idf/components/bootloader_support/src/bootloader_sha.c"
   words_hashed % BLOCK_WORDS == 0
# 152 "C:/esp/esp-idf/components/bootloader_support/src/bootloader_sha.c" 3
   ) ? (void)0 : __assert_func ("C:/esp/esp-idf/components/bootloader_support/src/bootloader_sha.c", 152, __func__, 
# 152 "C:/esp/esp-idf/components/bootloader_support/src/bootloader_sha.c"
   "words_hashed % BLOCK_WORDS == 0"
# 152 "C:/esp/esp-idf/components/bootloader_support/src/bootloader_sha.c" 3
   ))
# 152 "C:/esp/esp-idf/components/bootloader_support/src/bootloader_sha.c"
                                          ;

    while(({ ; (*(volatile uint32_t *)(((0x3ff03000) + 0x9c))); }) == 1) { }
    ({ ; (*(volatile uint32_t *)(((0x3ff03000) + 0x98))) = (1); });
    while(({ ; (*(volatile uint32_t *)(((0x3ff03000) + 0x9c))); }) == 1) { }

    uint32_t *digest_words = (uint32_t *)digest;
    uint32_t *sha_text_reg = (uint32_t *)(((0x3ff03000) + 0x00));
    for (int i = 0; i < DIGEST_WORDS; i++) {
        digest_words[i] = __builtin_bswap32(sha_text_reg[i]);
    }
    asm volatile ("memw");
}
