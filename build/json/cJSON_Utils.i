# 1 "C:/esp/esp-idf/components/json/port/cJSON_Utils.c"
# 1 "C:\\esp\\esp32-ArkPOS2\\ArkPOS2-esp\\build\\json//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "C:/esp/esp-idf/components/json/port/cJSON_Utils.c"
# 1 "C:/esp/esp-idf/components/newlib/include/ctype.h" 1



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
# 5 "C:/esp/esp-idf/components/newlib/include/ctype.h" 2



int isalnum (int __c);
int isalpha (int __c);
int iscntrl (int __c);
int isdigit (int __c);
int isgraph (int __c);
int islower (int __c);
int isprint (int __c);
int ispunct (int __c);
int isspace (int __c);
int isupper (int __c);
int isxdigit (int __c);
int tolower (int __c);
int toupper (int __c);


int isblank (int __c);



int isascii (int __c);
int toascii (int __c);
# 43 "C:/esp/esp-idf/components/newlib/include/ctype.h"
const

extern char * const __ctype_ptr__;
# 109 "C:/esp/esp-idf/components/newlib/include/ctype.h"
extern const char _ctype_[];


# 2 "C:/esp/esp-idf/components/json/port/cJSON_Utils.c" 2
# 1 "C:/esp/esp-idf/components/newlib/include/string.h" 1
# 11 "C:/esp/esp-idf/components/newlib/include/string.h"
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


# 3 "C:/esp/esp-idf/components/json/port/cJSON_Utils.c" 2
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




# 4 "C:/esp/esp-idf/components/json/port/cJSON_Utils.c" 2
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

# 5 "C:/esp/esp-idf/components/json/port/cJSON_Utils.c" 2
# 1 "C:/esp/esp-idf/components/json/port/include/cJSON_Utils.h" 1
# 1 "C:/esp/esp-idf/components/json/include/cJSON.h" 1
# 44 "C:/esp/esp-idf/components/json/include/cJSON.h"
typedef struct cJSON {
 struct cJSON *next,*prev;
 struct cJSON *child;

 int type;

 char *valuestring;
 int valueint;
 double valuedouble;

 char *string;
} cJSON;

typedef struct cJSON_Hooks {
      void *(*malloc_fn)(size_t sz);
      void (*free_fn)(void *ptr);
} cJSON_Hooks;


extern void cJSON_InitHooks(cJSON_Hooks* hooks);



extern cJSON *cJSON_Parse(const char *value);

extern char *cJSON_Print(cJSON *item);

extern char *cJSON_PrintUnformatted(cJSON *item);

extern char *cJSON_PrintBuffered(cJSON *item,int prebuffer,int fmt);

extern void cJSON_Delete(cJSON *c);


extern int cJSON_GetArraySize(cJSON *array);

extern cJSON *cJSON_GetArrayItem(cJSON *array,int item);

extern cJSON *cJSON_GetObjectItem(cJSON *object,const char *string);


extern const char *cJSON_GetErrorPtr(void);


extern cJSON *cJSON_CreateNull(void);
extern cJSON *cJSON_CreateTrue(void);
extern cJSON *cJSON_CreateFalse(void);
extern cJSON *cJSON_CreateBool(int b);
extern cJSON *cJSON_CreateNumber(double num);
extern cJSON *cJSON_CreateDouble(double num,int i_num);
extern cJSON *cJSON_CreateString(const char *string);
extern cJSON *cJSON_CreateArray(void);
extern cJSON *cJSON_CreateObject(void);


extern cJSON *cJSON_CreateIntArray(const int *numbers,int count);
extern cJSON *cJSON_CreateFloatArray(const float *numbers,int count);
extern cJSON *cJSON_CreateDoubleArray(const double *numbers,int count);
extern cJSON *cJSON_CreateStringArray(const char **strings,int count);


extern void cJSON_AddItemToArray(cJSON *array, cJSON *item);
extern void cJSON_AddItemToObject(cJSON *object,const char *string,cJSON *item);
extern void cJSON_AddItemToObjectCS(cJSON *object,const char *string,cJSON *item);

extern void cJSON_AddItemReferenceToArray(cJSON *array, cJSON *item);
extern void cJSON_AddItemReferenceToObject(cJSON *object,const char *string,cJSON *item);


extern cJSON *cJSON_DetachItemFromArray(cJSON *array,int which);
extern void cJSON_DeleteItemFromArray(cJSON *array,int which);
extern cJSON *cJSON_DetachItemFromObject(cJSON *object,const char *string);
extern void cJSON_DeleteItemFromObject(cJSON *object,const char *string);


extern void cJSON_InsertItemInArray(cJSON *array,int which,cJSON *newitem);
extern void cJSON_ReplaceItemInArray(cJSON *array,int which,cJSON *newitem);
extern void cJSON_ReplaceItemInObject(cJSON *object,const char *string,cJSON *newitem);


extern cJSON *cJSON_Duplicate(cJSON *item,int recurse);





extern cJSON *cJSON_ParseWithOpts(const char *value,const char **return_parse_end,int require_null_terminated);

extern void cJSON_Minify(char *json);
# 2 "C:/esp/esp-idf/components/json/port/include/cJSON_Utils.h" 2


cJSON *cJSONUtils_GetPointer(cJSON *object,const char *pointer);


cJSON* cJSONUtils_GeneratePatches(cJSON *from,cJSON *to);
void cJSONUtils_AddPatchToArray(cJSON *array,const char *op,const char *path,cJSON *val);
int cJSONUtils_ApplyPatches(cJSON *object,cJSON *patches);
# 25 "C:/esp/esp-idf/components/json/port/include/cJSON_Utils.h"
cJSON* cJSONUtils_MergePatch(cJSON *target, cJSON *patch);
cJSON *cJSONUtils_GenerateMergePatch(cJSON *from,cJSON *to);

char *cJSONUtils_FindPointerFromObjectTo(cJSON *object,cJSON *target);

void cJSONUtils_SortObject(cJSON *object);
# 6 "C:/esp/esp-idf/components/json/port/cJSON_Utils.c" 2

static int cJSONUtils_strcasecmp(const char *s1,const char *s2)
{
 if (!s1) return (s1==s2)?0:1;if (!s2) return 1;
 for(; __extension__ ({ __typeof__ (*(const unsigned char *)s1) __x = (*(const unsigned char *)s1); ((((__ctype_ptr__+sizeof(""[__x]))[(int)(__x)])&(01|02))==01) ? (int) __x - 'A' + 'a' : (int) __x;}) == __extension__ ({ __typeof__ (*(const unsigned char *)s2) __x = (*(const unsigned char *)s2); ((((__ctype_ptr__+sizeof(""[__x]))[(int)(__x)])&(01|02))==01) ? (int) __x - 'A' + 'a' : (int) __x;}); ++s1, ++s2) if(*s1 == 0) return 0;
 return __extension__ ({ __typeof__ (*(const unsigned char *)s1) __x = (*(const unsigned char *)s1); ((((__ctype_ptr__+sizeof(""[__x]))[(int)(__x)])&(01|02))==01) ? (int) __x - 'A' + 'a' : (int) __x;}) - __extension__ ({ __typeof__ (*(const unsigned char *)s2) __x = (*(const unsigned char *)s2); ((((__ctype_ptr__+sizeof(""[__x]))[(int)(__x)])&(01|02))==01) ? (int) __x - 'A' + 'a' : (int) __x;});
}


static int cJSONUtils_Pstrcasecmp(const char *a,const char *e)
{
 if (!a || !e) return (a==e)?0:1;
 for (;*a && *e && *e!='/';a++,e++) {
  if (*e=='~') {if (!(e[1]=='0' && *a=='~') && !(e[1]=='1' && *a=='/')) return 1; else e++;}
  else if (__extension__ ({ __typeof__ (*(const unsigned char *)a) __x = (*(const unsigned char *)a); ((((__ctype_ptr__+sizeof(""[__x]))[(int)(__x)])&(01|02))==01) ? (int) __x - 'A' + 'a' : (int) __x;})!=__extension__ ({ __typeof__ (*(const unsigned char *)e) __x = (*(const unsigned char *)e); ((((__ctype_ptr__+sizeof(""[__x]))[(int)(__x)])&(01|02))==01) ? (int) __x - 'A' + 'a' : (int) __x;})) return 1;
 }
 if ((*e!=0 && *e!='/') != (*a!=0)) return 1;
 return 0;
}

static int cJSONUtils_PointerEncodedstrlen(const char *s) {int l=0;for (;*s;s++,l++) if (*s=='~' || *s=='/') l++;return l;}

static void cJSONUtils_PointerEncodedstrcpy(char *d,const char *s)
{
 for (;*s;s++)
 {
  if (*s=='/') {*d++='~';*d++='1';}
  else if (*s=='~') {*d++='~';*d++='0';}
  else *d++=*s;
 }
 *d=0;
}

char *cJSONUtils_FindPointerFromObjectTo(cJSON *object,cJSON *target)
{
 int type=object->type,c=0;cJSON *obj=0;

 if (object==target) return strdup("");

 for (obj=object->child;obj;obj=obj->next,c++)
 {
  char *found=cJSONUtils_FindPointerFromObjectTo(obj,target);
  if (found)
  {
   if (type==5)
   {
    char *ret=(char*)malloc(strlen(found)+23);
    sprintf(ret,"/%d%s",c,found);
    free(found);
    return ret;
   }
   else if (type==6)
   {
    char *ret=(char*)malloc(strlen(found)+cJSONUtils_PointerEncodedstrlen(obj->string)+2);
    *ret='/';cJSONUtils_PointerEncodedstrcpy(ret+1,obj->string);
    strcat(ret,found);
    free(found);
    return ret;
   }
   free(found);
   return 0;
  }
 }
 return 0;
}

cJSON *cJSONUtils_GetPointer(cJSON *object,const char *pointer)
{
 while (*pointer++=='/' && object)
 {
  if (object->type==5)
  {
   int which=0; while (*pointer>='0' && *pointer<='9') which=(10*which) + *pointer++ - '0';
   if (*pointer && *pointer!='/') return 0;
   object=cJSON_GetArrayItem(object,which);
  }
  else if (object->type==6)
  {
   object=object->child; while (object && cJSONUtils_Pstrcasecmp(object->string,pointer)) object=object->next;
   while (*pointer && *pointer!='/') pointer++;
  }
  else return 0;
 }
 return object;
}


static void cJSONUtils_InplaceDecodePointerString(char *string)
{
 char *s2=string;
 for (;*string;s2++,string++) *s2=(*string!='~')?(*string):((*(++string)=='0')?'~':'/');
 *s2=0;
}

static cJSON *cJSONUtils_PatchDetach(cJSON *object,const char *path)
{
 char *parentptr=0,*childptr=0;cJSON *parent=0,*ret=0;

 parentptr=strdup(path); childptr=strrchr(parentptr,'/'); if (childptr) *childptr++=0;
 parent=cJSONUtils_GetPointer(object,parentptr);
 cJSONUtils_InplaceDecodePointerString(childptr);

 if (!parent) ret=0;
 else if (parent->type==5) ret=cJSON_DetachItemFromArray(parent,atoi(childptr));
 else if (parent->type==6) ret=cJSON_DetachItemFromObject(parent,childptr);
 free(parentptr);
 return ret;
}

static int cJSONUtils_Compare(cJSON *a,cJSON *b)
{
 if (a->type!=b->type) return -1;
 switch (a->type)
 {
 case 3: return (a->valueint!=b->valueint || a->valuedouble!=b->valuedouble)?-2:0;
 case 4: return (strcmp(a->valuestring,b->valuestring)!=0)?-3:0;
 case 5: for (a=a->child,b=b->child;a && b;a=a->next,b=b->next) {int err=cJSONUtils_Compare(a,b);if (err) return err;}
      return (a || b)?-4:0;
 case 6:
      cJSONUtils_SortObject(a);
      cJSONUtils_SortObject(b);
      a=a->child,b=b->child;
      while (a && b)
      {
       int err;
       if (cJSONUtils_strcasecmp(a->string,b->string)) return -6;
       err=cJSONUtils_Compare(a,b);if (err) return err;
       a=a->next,b=b->next;
      }
      return (a || b)?-5:0;

 default: break;
 }
 return 0;
}

static int cJSONUtils_ApplyPatch(cJSON *object,cJSON *patch)
{
 cJSON *op=0,*path=0,*value=0,*parent=0;int opcode=0;char *parentptr=0,*childptr=0;

 op=cJSON_GetObjectItem(patch,"op");
 path=cJSON_GetObjectItem(patch,"path");
 if (!op || !path) return 2;

 if (!strcmp(op->valuestring,"add")) opcode=0;
 else if (!strcmp(op->valuestring,"remove")) opcode=1;
 else if (!strcmp(op->valuestring,"replace"))opcode=2;
 else if (!strcmp(op->valuestring,"move")) opcode=3;
 else if (!strcmp(op->valuestring,"copy")) opcode=4;
 else if (!strcmp(op->valuestring,"test")) return cJSONUtils_Compare(cJSONUtils_GetPointer(object,path->valuestring),cJSON_GetObjectItem(patch,"value"));
 else return 3;

 if (opcode==1 || opcode==2)
 {
  cJSON_Delete(cJSONUtils_PatchDetach(object,path->valuestring));
  if (opcode==1) return 0;
 }

 if (opcode==3 || opcode==4)
 {
  cJSON *from=cJSON_GetObjectItem(patch,"from"); if (!from) return 4;

  if (opcode==3) value=cJSONUtils_PatchDetach(object,from->valuestring);
  if (opcode==4) value=cJSONUtils_GetPointer(object,from->valuestring);
  if (!value) return 5;
  if (opcode==4) value=cJSON_Duplicate(value,1);
  if (!value) return 6;
 }
 else
 {
  value=cJSON_GetObjectItem(patch,"value");
  if (!value) return 7;
  value=cJSON_Duplicate(value,1);
  if (!value) return 8;
 }



 parentptr=strdup(path->valuestring); childptr=strrchr(parentptr,'/'); if (childptr) *childptr++=0;
 parent=cJSONUtils_GetPointer(object,parentptr);
 cJSONUtils_InplaceDecodePointerString(childptr);


 if (!parent) {free(parentptr); cJSON_Delete(value); return 9;}
 else if (parent->type==5)
 {
  if (!strcmp(childptr,"-")) cJSON_AddItemToArray(parent,value);
  else cJSON_InsertItemInArray(parent,atoi(childptr),value);
 }
 else if (parent->type==6)
 {
  cJSON_DeleteItemFromObject(parent,childptr);
  cJSON_AddItemToObject(parent,childptr,value);
 }
 else
 {
  cJSON_Delete(value);
 }
 free(parentptr);
 return 0;
}


int cJSONUtils_ApplyPatches(cJSON *object,cJSON *patches)
{
 int err;
 if (patches->type!=5) return 1;
 if (patches) patches=patches->child;
 while (patches)
 {
  if ((err=cJSONUtils_ApplyPatch(object,patches))) return err;
  patches=patches->next;
 }
 return 0;
}

static void cJSONUtils_GeneratePatch(cJSON *patches,const char *op,const char *path,const char *suffix,cJSON *val)
{
 cJSON *patch=cJSON_CreateObject();
 cJSON_AddItemToObject(patch,"op",cJSON_CreateString(op));
 if (suffix)
 {
  char *newpath=(char*)malloc(strlen(path)+cJSONUtils_PointerEncodedstrlen(suffix)+2);
  cJSONUtils_PointerEncodedstrcpy(newpath+sprintf(newpath,"%s/",path),suffix);
  cJSON_AddItemToObject(patch,"path",cJSON_CreateString(newpath));
  free(newpath);
 }
 else cJSON_AddItemToObject(patch,"path",cJSON_CreateString(path));
 if (val) cJSON_AddItemToObject(patch,"value",cJSON_Duplicate(val,1));
 cJSON_AddItemToArray(patches,patch);
}

void cJSONUtils_AddPatchToArray(cJSON *array,const char *op,const char *path,cJSON *val) {cJSONUtils_GeneratePatch(array,op,path,0,val);}

static void cJSONUtils_CompareToPatch(cJSON *patches,const char *path,cJSON *from,cJSON *to)
{
 if (from->type!=to->type) {cJSONUtils_GeneratePatch(patches,"replace",path,0,to); return; }

 switch (from->type)
 {
 case 3:
  if (from->valueint!=to->valueint || from->valuedouble!=to->valuedouble)
   cJSONUtils_GeneratePatch(patches,"replace",path,0,to);
  return;

 case 4:
  if (strcmp(from->valuestring,to->valuestring)!=0)
   cJSONUtils_GeneratePatch(patches,"replace",path,0,to);
  return;

 case 5:
 {
  int c;char *newpath=(char*)malloc(strlen(path)+23);
  for (c=0,from=from->child,to=to->child;from && to;from=from->next,to=to->next,c++){
          sprintf(newpath,"%s/%d",path,c); cJSONUtils_CompareToPatch(patches,newpath,from,to);
  }
  for (;from;from=from->next,c++) {sprintf(newpath,"%d",c); cJSONUtils_GeneratePatch(patches,"remove",path,newpath,0); }
  for (;to;to=to->next,c++) cJSONUtils_GeneratePatch(patches,"add",path,"-",to);
  free(newpath);
  return;
 }

 case 6:
 {
  cJSON *a,*b;
  cJSONUtils_SortObject(from);
  cJSONUtils_SortObject(to);

  a=from->child,b=to->child;
  while (a || b)
  {
   int diff=(!a)?1:(!b)?-1:cJSONUtils_strcasecmp(a->string,b->string);
   if (!diff)
   {
    char *newpath=(char*)malloc(strlen(path)+cJSONUtils_PointerEncodedstrlen(a->string)+2);
    cJSONUtils_PointerEncodedstrcpy(newpath+sprintf(newpath,"%s/",path),a->string);
    cJSONUtils_CompareToPatch(patches,newpath,a,b);
    free(newpath);
    a=a->next;
    b=b->next;
   }
   else if (diff<0) {cJSONUtils_GeneratePatch(patches,"remove",path,a->string,0); a=a->next;}
   else {cJSONUtils_GeneratePatch(patches,"add",path,b->string,b); b=b->next;}
  }
  return;
 }

 default: break;
 }
}


cJSON* cJSONUtils_GeneratePatches(cJSON *from,cJSON *to)
{
 cJSON *patches=cJSON_CreateArray();
 cJSONUtils_CompareToPatch(patches,"",from,to);
 return patches;
}


static cJSON *cJSONUtils_SortList(cJSON *list)
{
 cJSON *first=list,*second=list,*ptr=list;

 if (!list || !list->next) return list;

 while (ptr && ptr->next && cJSONUtils_strcasecmp(ptr->string,ptr->next->string)<0) ptr=ptr->next;
 if (!ptr || !ptr->next) return list;
 ptr=list;

 while (ptr) {second=second->next;ptr=ptr->next;if (ptr) ptr=ptr->next;}
 if (second && second->prev) second->prev->next=0;

 first=cJSONUtils_SortList(first);
 second=cJSONUtils_SortList(second);
 list=ptr=0;

 while (first && second)
 {
  if (cJSONUtils_strcasecmp(first->string,second->string)<0)
  {
   if (!list) list=ptr=first;
   else {ptr->next=first;first->prev=ptr;ptr=first;}
   first=first->next;
  }
  else
  {
   if (!list) list=ptr=second;
   else {ptr->next=second;second->prev=ptr;ptr=second;}
   second=second->next;
  }
 }
 if (first) { if (!list) return first; ptr->next=first; first->prev=ptr; }
 if (second) { if (!list) return second; ptr->next=second; second->prev=ptr; }

 return list;
}

void cJSONUtils_SortObject(cJSON *object) {object->child=cJSONUtils_SortList(object->child);}

cJSON* cJSONUtils_MergePatch(cJSON *target, cJSON *patch)
{
 if (!patch || patch->type != 6) {cJSON_Delete(target);return cJSON_Duplicate(patch,1);}
 if (!target || target->type != 6) {cJSON_Delete(target);target=cJSON_CreateObject();}

 patch=patch->child;
 while (patch)
 {
  if (patch->type == 2) cJSON_DeleteItemFromObject(target,patch->string);
  else
  {
   cJSON *replaceme=cJSON_DetachItemFromObject(target,patch->string);
   cJSON_AddItemToObject(target,patch->string,cJSONUtils_MergePatch(replaceme,patch));
  }
  patch=patch->next;
 }
 return target;
}

cJSON *cJSONUtils_GenerateMergePatch(cJSON *from,cJSON *to)
{
 cJSON *patch=0;
 if (!to) return cJSON_CreateNull();
 if (to->type!=6 || !from || from->type!=6) return cJSON_Duplicate(to,1);
 cJSONUtils_SortObject(from);
 cJSONUtils_SortObject(to);
 from=from->child;to=to->child;
 patch=cJSON_CreateObject();
 while (from || to)
 {
  int compare=from?(to?strcmp(from->string,to->string):-1):1;
  if (compare<0)
  {
   cJSON_AddItemToObject(patch,from->string,cJSON_CreateNull());
   from=from->next;
  }
  else if (compare>0)
  {
   cJSON_AddItemToObject(patch,to->string,cJSON_Duplicate(to,1));
   to=to->next;
  }
  else
  {
   if (cJSONUtils_Compare(from,to)) cJSON_AddItemToObject(patch,to->string,cJSONUtils_GenerateMergePatch(from,to));
   from=from->next;to=to->next;
  }
 }
 if (!patch->child) {cJSON_Delete(patch);return 0;}
 return patch;
}
