# 1 "C:/esp/esp-idf/components/lwip/api/sockets.c"
# 1 "C:\\esp\\ArkPOS2-esp\\build\\lwip//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "C:/esp/esp-idf/components/lwip/api/sockets.c"
# 41 "C:/esp/esp-idf/components/lwip/api/sockets.c"
# 1 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/opt.h" 1
# 45 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/opt.h"
# 1 "C:/esp/esp-idf/components/lwip/include/lwip/port/lwipopts.h" 1
# 35 "C:/esp/esp-idf/components/lwip/include/lwip/port/lwipopts.h"
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




# 36 "C:/esp/esp-idf/components/lwip/include/lwip/port/lwipopts.h" 2
# 1 "C:/esp/esp-idf/components/newlib/include/time.h" 1
# 15 "C:/esp/esp-idf/components/newlib/include/time.h"
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 16 "C:/esp/esp-idf/components/newlib/include/time.h" 2


# 1 "C:/esp/esp-idf/components/newlib/include/machine/time.h" 1
# 19 "C:/esp/esp-idf/components/newlib/include/time.h" 2
# 27 "C:/esp/esp-idf/components/newlib/include/time.h"
# 1 "C:/esp/esp-idf/components/newlib/include/sys/types.h" 1
# 69 "C:/esp/esp-idf/components/newlib/include/sys/types.h"
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 70 "C:/esp/esp-idf/components/newlib/include/sys/types.h" 2
# 1 "C:/esp/esp-idf/components/newlib/include/machine/types.h" 1
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
# 28 "C:/esp/esp-idf/components/newlib/include/time.h" 2



struct tm
{
  int tm_sec;
  int tm_min;
  int tm_hour;
  int tm_mday;
  int tm_mon;
  int tm_year;
  int tm_wday;
  int tm_yday;
  int tm_isdst;






};

clock_t clock (void);
double difftime (time_t _time2, time_t _time1);
time_t mktime (struct tm *_timeptr);
time_t time (time_t *_timer);

char *asctime (const struct tm *_tblock);
char *ctime (const time_t *_time);
struct tm *gmtime (const time_t *_timer);
struct tm *localtime (const time_t *_timer);

size_t strftime (char *restrict _s, size_t _maxsize, const char *restrict _fmt, const struct tm *restrict _t)

                                        ;

char *asctime_r (const struct tm *restrict, char *restrict)
                       ;
char *ctime_r (const time_t *, char *);
struct tm *gmtime_r (const time_t *restrict, struct tm *restrict)
                            ;
struct tm *localtime_r (const time_t *restrict, struct tm *restrict)
                            ;








char *strptime (const char *restrict, const char *restrict, struct tm *restrict)

                            ;
void tzset (void);
void _tzset_r (struct _reent *);

typedef struct __tzrule_struct
{
  char ch;
  int m;
  int n;
  int d;
  int s;
  time_t change;
  long offset;
} __tzrule_type;

typedef struct __tzinfo_struct
{
  int __tznorth;
  int __tzyear;
  __tzrule_type __tzrule[2];
} __tzinfo_type;

__tzinfo_type *__gettzinfo (void);
# 129 "C:/esp/esp-idf/components/newlib/include/time.h"
extern long _timezone;
extern int _daylight;
extern char *_tzname[2];
# 37 "C:/esp/esp-idf/components/lwip/include/lwip/port/lwipopts.h" 2
# 1 "C:/esp/esp-idf/components/newlib/include/sys/time.h" 1
# 17 "C:/esp/esp-idf/components/newlib/include/sys/time.h"
struct timeval {
  time_t tv_sec;
  suseconds_t tv_usec;
};
# 55 "C:/esp/esp-idf/components/newlib/include/sys/time.h"
struct timezone {
  int tz_minuteswest;
  int tz_dsttime;
};
# 68 "C:/esp/esp-idf/components/newlib/include/sys/time.h"
struct itimerval {
  struct timeval it_interval;
  struct timeval it_value;
};





int gettimeofday (struct timeval *restrict __p, void *restrict __tz)
                            ;

int settimeofday (const struct timeval *, const struct timezone *);
int adjtime (const struct timeval *, struct timeval *);

int utimes (const char *__path, const struct timeval *__tvp);
int getitimer (int __which, struct itimerval *__value);
int setitimer (int __which, const struct itimerval *restrict __value, struct itimerval *restrict __ovalue)
                                            ;
# 38 "C:/esp/esp-idf/components/lwip/include/lwip/port/lwipopts.h" 2
# 1 "C:/esp/esp-idf/components/newlib/include/sys/fcntl.h" 1


# 1 "C:/esp/esp-idf/components/newlib/include/sys/_default_fcntl.h" 1
# 159 "C:/esp/esp-idf/components/newlib/include/sys/_default_fcntl.h"
struct flock {
 short l_type;
 short l_whence;
 long l_start;
 long l_len;
 short l_pid;
 short l_xxx;
};




struct eflock {
 short l_type;
 short l_whence;
 long l_start;
 long l_len;
 short l_pid;
 short l_xxx;
 long l_rpid;
 long l_rsys;
};



# 1 "C:/esp/esp-idf/components/newlib/include/sys/stat.h" 1
# 26 "C:/esp/esp-idf/components/newlib/include/sys/stat.h"
struct stat
{
  dev_t st_dev;
  ino_t st_ino;
  mode_t st_mode;
  nlink_t st_nlink;
  uid_t st_uid;
  gid_t st_gid;
  dev_t st_rdev;
  off_t st_size;
# 49 "C:/esp/esp-idf/components/newlib/include/sys/stat.h"
  time_t st_atime;
  long st_spare1;
  time_t st_mtime;
  long st_spare2;
  time_t st_ctime;
  long st_spare3;
  long st_blksize;
  long st_blocks;
  long st_spare4[2];


};
# 146 "C:/esp/esp-idf/components/newlib/include/sys/stat.h"
int chmod ( const char *__path, mode_t __mode );
int fchmod (int __fd, mode_t __mode);
int fstat ( int __fd, struct stat *__sbuf );
int mkdir ( const char *_path, mode_t __mode );
int mkfifo ( const char *__path, mode_t __mode );
int stat ( const char *restrict __path, struct stat *restrict __sbuf );
mode_t umask ( mode_t __mask );







int fchmodat (int, const char *, mode_t, int);


int fstatat (int, const char *restrict , struct stat *restrict, int);
int mkdirat (int, const char *, mode_t);
int mkfifoat (int, const char *, mode_t);


int mknodat (int, const char *, mode_t, dev_t);


int utimensat (int, const char *, const struct timespec *, int);
int futimens (int, const struct timespec *);
# 185 "C:/esp/esp-idf/components/newlib/include/sys/_default_fcntl.h" 2

extern int open (const char *, int, ...);

extern int openat (int, const char *, int, ...);

extern int creat (const char *, mode_t);
extern int fcntl (int, int, ...);

extern int flock (int, int);
# 4 "C:/esp/esp-idf/components/newlib/include/sys/fcntl.h" 2
# 39 "C:/esp/esp-idf/components/lwip/include/lwip/port/lwipopts.h" 2
# 1 "C:/esp/esp-idf/components/esp32/include/esp_task.h" 1
# 29 "C:/esp/esp-idf/components/esp32/include/esp_task.h"
# 1 "C:/esp/ArkPOS2-esp/build/include/sdkconfig.h" 1
# 30 "C:/esp/esp-idf/components/esp32/include/esp_task.h" 2
# 40 "C:/esp/esp-idf/components/lwip/include/lwip/port/lwipopts.h" 2
# 1 "C:/esp/esp-idf/components/esp32/include/esp_system.h" 1
# 18 "C:/esp/esp-idf/components/esp32/include/esp_system.h"
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
# 19 "C:/esp/esp-idf/components/esp32/include/esp_system.h" 2
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stdbool.h" 1 3 4
# 20 "C:/esp/esp-idf/components/esp32/include/esp_system.h" 2
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
# 50 "C:/esp/esp-idf/components/newlib/include/stdio.h"



# 52 "C:/esp/esp-idf/components/newlib/include/stdio.h"
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
# 19 "C:/esp/esp-idf/components/esp32/include/esp_err.h" 2





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
# 20 "C:/esp/esp-idf/components/soc/esp32/include/soc/soc.h"
# 1 "C:/esp/esp-idf/components/esp32/include/esp_assert.h" 1
# 21 "C:/esp/esp-idf/components/soc/esp32/include/soc/soc.h" 2
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
# 21 "C:/esp/esp-idf/components/esp32/include/rom/gpio.h"
# 1 "C:/esp/esp-idf/components/esp32/include/esp_attr.h" 1
# 22 "C:/esp/esp-idf/components/esp32/include/rom/gpio.h" 2
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
# 41 "C:/esp/esp-idf/components/lwip/include/lwip/port/lwipopts.h" 2
# 1 "C:/esp/ArkPOS2-esp/build/include/sdkconfig.h" 1
# 42 "C:/esp/esp-idf/components/lwip/include/lwip/port/lwipopts.h" 2
# 46 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/opt.h" 2
# 1 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/debug.h" 1
# 35 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/debug.h"
# 1 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/arch.h" 1
# 43 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/arch.h"
# 1 "C:/esp/esp-idf/components/lwip/include/lwip/port/arch/cc.h" 1
# 38 "C:/esp/esp-idf/components/lwip/include/lwip/port/arch/cc.h"
# 1 "C:/esp/esp-idf/components/newlib/include/errno.h" 1




typedef int error_t;



# 1 "C:/esp/esp-idf/components/newlib/include/sys/errno.h" 1
# 15 "C:/esp/esp-idf/components/newlib/include/sys/errno.h"
extern int *__errno (void);




extern const char * const _sys_errlist[];
extern int _sys_nerr;
# 10 "C:/esp/esp-idf/components/newlib/include/errno.h" 2
# 39 "C:/esp/esp-idf/components/lwip/include/lwip/port/arch/cc.h" 2



# 1 "C:/esp/esp-idf/components/lwip/include/lwip/port/arch/sys_arch.h" 1
# 36 "C:/esp/esp-idf/components/lwip/include/lwip/port/arch/sys_arch.h"
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
# 103 "C:/esp/esp-idf/components/freertos/include/freertos/FreeRTOSConfig.h" 2





# 1 "C:/esp/esp-idf/components/esp32/include/rom/ets_sys.h" 1
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
# 37 "C:/esp/esp-idf/components/lwip/include/lwip/port/arch/sys_arch.h" 2
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
# 38 "C:/esp/esp-idf/components/lwip/include/lwip/port/arch/sys_arch.h" 2
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
# 39 "C:/esp/esp-idf/components/lwip/include/lwip/port/arch/sys_arch.h" 2
# 1 "C:/esp/esp-idf/components/freertos/include/freertos/semphr.h" 1
# 77 "C:/esp/esp-idf/components/freertos/include/freertos/semphr.h"
# 1 "C:/esp/esp-idf/components/freertos/include/freertos/queue.h" 1
# 78 "C:/esp/esp-idf/components/freertos/include/freertos/semphr.h" 2

typedef QueueHandle_t SemaphoreHandle_t;
# 40 "C:/esp/esp-idf/components/lwip/include/lwip/port/arch/sys_arch.h" 2






typedef SemaphoreHandle_t sys_sem_t;
typedef SemaphoreHandle_t sys_mutex_t;
typedef TaskHandle_t sys_thread_t;

typedef struct sys_mbox_s {
  QueueHandle_t os_mbox;
  sys_mutex_t lock;
  uint8_t alive;
}* sys_mbox_t;
# 70 "C:/esp/esp-idf/components/lwip/include/lwip/port/arch/sys_arch.h"
void sys_delay_ms(uint32_t ms);
sys_sem_t* sys_thread_sem_init(void);
void sys_thread_sem_deinit(void);
sys_sem_t* sys_thread_sem_get(void);
# 43 "C:/esp/esp-idf/components/lwip/include/lwip/port/arch/cc.h" 2



typedef uint8_t u8_t;
typedef int8_t s8_t;
typedef uint16_t u16_t;
typedef int16_t s16_t;
typedef uint32_t u32_t;
typedef int32_t s32_t;

typedef unsigned long mem_ptr_t;
typedef int sys_prot_t;
# 44 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/arch.h" 2
# 36 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/debug.h" 2
# 1 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/opt.h" 1
# 37 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/debug.h" 2
# 47 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/opt.h" 2
# 42 "C:/esp/esp-idf/components/lwip/api/sockets.c" 2



# 1 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/sockets.h" 1
# 41 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/sockets.h"
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 42 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/sockets.h" 2

# 1 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/ip_addr.h" 1
# 36 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/ip_addr.h"
# 1 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/def.h" 1
# 108 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/def.h"
u16_t lwip_htons(u16_t x);
u16_t lwip_ntohs(u16_t x);
u32_t lwip_htonl(u32_t x);
u32_t lwip_ntohl(u32_t x);
# 37 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/ip_addr.h" 2

# 1 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/ip4_addr.h" 1
# 46 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/ip4_addr.h"
struct ip4_addr {
  u32_t addr;
};







struct ip4_addr_packed {
  u32_t addr;
} __attribute__((packed));







typedef struct ip4_addr ip4_addr_t;
typedef struct ip4_addr_packed ip4_addr_p_t;
# 76 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/ip4_addr.h"

struct ip4_addr2 {
  u16_t addrw[2];
} __attribute__((packed));






struct netif;
# 199 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/ip4_addr.h"
u8_t ip4_addr_isbroadcast_u32(u32_t addr, const struct netif *netif);


u8_t ip4_addr_netmask_valid(u32_t netmask);
# 241 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/ip4_addr.h"
u32_t ipaddr_addr(const char *cp);
int ip4addr_aton(const char *cp, ip4_addr_t *addr);

char *ip4addr_ntoa(const ip4_addr_t *addr);
char *ip4addr_ntoa_r(const ip4_addr_t *addr, char *buf, int buflen);
# 39 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/ip_addr.h" 2
# 1 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/ip6_addr.h" 1
# 57 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/ip6_addr.h"
struct ip6_addr {
  u32_t addr[4];
};







struct ip6_addr_packed {
  u32_t addr[4];
} __attribute__((packed));





typedef struct ip6_addr ip6_addr_t;
typedef struct ip6_addr_packed ip6_addr_p_t;
# 288 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/ip6_addr.h"
int ip6addr_aton(const char *cp, ip6_addr_t *addr);

char *ip6addr_ntoa(const ip6_addr_t *addr);
char *ip6addr_ntoa_r(const ip6_addr_t *addr, char *buf, int buflen);
# 40 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/ip_addr.h" 2
# 54 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/ip_addr.h"
typedef struct _ip_addr {
  union {
    ip6_addr_t ip6;
    ip4_addr_t ip4;
  } u_addr;
  u8_t type;
} ip_addr_t;

extern const ip_addr_t ip_addr_any_type;
# 157 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/ip_addr.h"
int ipaddr_aton(const char *cp, ip_addr_t *addr);
# 245 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/ip_addr.h"
extern const ip_addr_t ip_addr_any;
extern const ip_addr_t ip_addr_broadcast;
# 263 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/ip_addr.h"
extern const ip_addr_t ip6_addr_any;
# 44 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/sockets.h" 2
# 1 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/err.h" 1
# 47 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/err.h"
typedef s8_t err_t;
# 86 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/err.h"
extern const char *lwip_strerr(err_t err);
# 45 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/sockets.h" 2
# 1 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/inet.h" 1
# 55 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/inet.h"
typedef u32_t in_addr_t;


struct in_addr {
  in_addr_t s_addr;
};

struct in6_addr {
  union {
    u32_t u32_addr[4];
    u8_t u8_addr[16];
  } un;

};
# 86 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/inet.h"
extern const struct in6_addr in6addr_any;
# 46 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/sockets.h" 2
# 54 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/sockets.h"
typedef u8_t sa_family_t;




typedef u16_t in_port_t;




struct sockaddr_in {
  u8_t sin_len;
  sa_family_t sin_family;
  in_port_t sin_port;
  struct in_addr sin_addr;

  char sin_zero[8];
};



struct sockaddr_in6 {
  u8_t sin6_len;
  sa_family_t sin6_family;
  in_port_t sin6_port;
  u32_t sin6_flowinfo;
  struct in6_addr sin6_addr;
  u32_t sin6_scope_id;
};


struct sockaddr {
  u8_t sa_len;
  sa_family_t sa_family;
  char sa_data[14];
};

struct sockaddr_storage {
  u8_t s2_len;
  sa_family_t ss_family;
  char s2_data1[2];
  u32_t s2_data2[3];

  u32_t s2_data3[3];

};




typedef u32_t socklen_t;


struct lwip_sock;







struct lwip_setgetsockopt_data {

  int s;

  int level;

  int optname;





  union {
     void *p;
     const void *pc;
  } optval;


  socklen_t optlen;

  err_t err;

  void* completed_sem;
};



struct iovec {
  void *iov_base;
  size_t iov_len;
};


struct msghdr {
  void *msg_name;
  socklen_t msg_namelen;
  struct iovec *msg_iov;
  int msg_iovlen;
  void *msg_control;
  socklen_t msg_controllen;
  int msg_flags;
};
# 196 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/sockets.h"
struct linger {
       int l_onoff;
       int l_linger;
};
# 292 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/sockets.h"
typedef struct ip_mreq {
    struct in_addr imr_multiaddr;
    struct in_addr imr_interface;
} ip_mreq;
# 445 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/sockets.h"
void lwip_socket_thread_init(void);
void lwip_socket_thread_cleanup(void);
# 483 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/sockets.h"
int lwip_accept(int s, struct sockaddr *addr, socklen_t *addrlen);
int lwip_bind(int s, const struct sockaddr *name, socklen_t namelen);
int lwip_shutdown(int s, int how);
int lwip_getpeername (int s, struct sockaddr *name, socklen_t *namelen);
int lwip_getsockname (int s, struct sockaddr *name, socklen_t *namelen);
int lwip_getsockopt (int s, int level, int optname, void *optval, socklen_t *optlen);
int lwip_setsockopt (int s, int level, int optname, const void *optval, socklen_t optlen);
int lwip_close(int s);
int lwip_connect(int s, const struct sockaddr *name, socklen_t namelen);
int lwip_listen(int s, int backlog);
int lwip_recv(int s, void *mem, size_t len, int flags);
int lwip_read(int s, void *mem, size_t len);
int lwip_recvfrom(int s, void *mem, size_t len, int flags,
      struct sockaddr *from, socklen_t *fromlen);
int lwip_send(int s, const void *dataptr, size_t size, int flags);
int lwip_sendmsg(int s, const struct msghdr *message, int flags);
int lwip_sendto(int s, const void *dataptr, size_t size, int flags,
    const struct sockaddr *to, socklen_t tolen);
int lwip_socket(int domain, int type, int protocol);
int lwip_write(int s, const void *dataptr, size_t size);
int lwip_writev(int s, const struct iovec *iov, int iovcnt);
int lwip_select(int maxfdp1, _types_fd_set *readset, _types_fd_set *writeset, _types_fd_set *exceptset,
                struct timeval *timeout);
int lwip_ioctl(int s, long cmd, void *argp);
int lwip_fcntl(int s, int cmd, int val);






int lwip_accept_r(int s, struct sockaddr *addr, socklen_t *addrlen);
int lwip_bind_r(int s, const struct sockaddr *name, socklen_t namelen);
int lwip_shutdown_r(int s, int how);
int lwip_getpeername_r (int s, struct sockaddr *name, socklen_t *namelen);
int lwip_getsockname_r (int s, struct sockaddr *name, socklen_t *namelen);
int lwip_getsockopt_r (int s, int level, int optname, void *optval, socklen_t *optlen);
int lwip_setsockopt_r (int s, int level, int optname, const void *optval, socklen_t optlen);
int lwip_close_r(int s);
int lwip_connect_r(int s, const struct sockaddr *name, socklen_t namelen);
int lwip_listen_r(int s, int backlog);
int lwip_recv_r(int s, void *mem, size_t len, int flags);
int lwip_read_r(int s, void *mem, size_t len);
int lwip_recvfrom_r(int s, void *mem, size_t len, int flags,
      struct sockaddr *from, socklen_t *fromlen);
int lwip_send_r(int s, const void *dataptr, size_t size, int flags);
int lwip_sendmsg_r(int s, const struct msghdr *message, int flags);
int lwip_sendto_r(int s, const void *dataptr, size_t size, int flags,
    const struct sockaddr *to, socklen_t tolen);
int lwip_socket(int domain, int type, int protocol);
int lwip_write_r(int s, const void *dataptr, size_t size);
int lwip_writev_r(int s, const struct iovec *iov, int iovcnt);
int lwip_select(int maxfdp1, _types_fd_set *readset, _types_fd_set *writeset, _types_fd_set *exceptset,
                struct timeval *timeout);
int lwip_ioctl_r(int s, long cmd, void *argp);
int lwip_fcntl_r(int s, int cmd, int val);
# 46 "C:/esp/esp-idf/components/lwip/api/sockets.c" 2
# 1 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/api.h" 1
# 41 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/api.h"
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 42 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/api.h" 2

# 1 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/netbuf.h" 1
# 41 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/netbuf.h"
# 1 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/pbuf.h" 1
# 63 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/pbuf.h"
typedef enum {
  PBUF_TRANSPORT,
  PBUF_IP,
  PBUF_LINK,
  PBUF_RAW_TX,
  PBUF_RAW
} pbuf_layer;

typedef enum {





  PBUF_RAM,



  PBUF_ROM,



  PBUF_REF,




  PBUF_POOL
} pbuf_type;
# 108 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/pbuf.h"
struct pbuf {

  struct pbuf *next;


  void *payload;
# 122 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/pbuf.h"
  u16_t tot_len;


  u16_t len;


  u8_t type;


  u8_t flags;






  u16_t ref;


  struct netif *l2_owner;
  void *l2_buf;

};






struct pbuf_rom {

  struct pbuf *next;


  const void *payload;
};
# 193 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/pbuf.h"
struct pbuf *pbuf_alloc(pbuf_layer l, u16_t length, pbuf_type type);





void pbuf_realloc(struct pbuf *p, u16_t size);
u8_t pbuf_header(struct pbuf *p, s16_t header_size);
u8_t pbuf_header_force(struct pbuf *p, s16_t header_size);
void pbuf_ref(struct pbuf *p);
u8_t pbuf_free(struct pbuf *p);
u8_t pbuf_clen(struct pbuf *p);
void pbuf_cat(struct pbuf *head, struct pbuf *tail);
void pbuf_chain(struct pbuf *head, struct pbuf *tail);
struct pbuf *pbuf_dechain(struct pbuf *p);
err_t pbuf_copy(struct pbuf *p_to, struct pbuf *p_from);
u16_t pbuf_copy_partial(struct pbuf *p, void *dataptr, u16_t len, u16_t offset);
err_t pbuf_take(struct pbuf *buf, const void *dataptr, u16_t len);
err_t pbuf_take_at(struct pbuf *buf, const void *dataptr, u16_t len, u16_t offset);
struct pbuf *pbuf_skip(struct pbuf* in, u16_t in_offset, u16_t* out_offset);
struct pbuf *pbuf_coalesce(struct pbuf *p, pbuf_layer layer);
# 222 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/pbuf.h"
u8_t pbuf_get_at(struct pbuf* p, u16_t offset);
void pbuf_put_at(struct pbuf* p, u16_t offset, u8_t data);
u16_t pbuf_memcmp(struct pbuf* p, u16_t offset, const void* s2, u16_t n);
u16_t pbuf_memfind(struct pbuf* p, const void* mem, u16_t mem_len, u16_t start_offset);
u16_t pbuf_strstr(struct pbuf* p, const char* substr);
# 42 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/netbuf.h" 2
# 54 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/netbuf.h"
struct netbuf {
  struct pbuf *p, *ptr;
  ip_addr_t addr;
  u16_t port;
# 67 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/netbuf.h"
};


struct netbuf * netbuf_new (void);
void netbuf_delete (struct netbuf *buf);
void * netbuf_alloc (struct netbuf *buf, u16_t size);
void netbuf_free (struct netbuf *buf);
err_t netbuf_ref (struct netbuf *buf,
                                   const void *dataptr, u16_t size);
void netbuf_chain (struct netbuf *head, struct netbuf *tail);

err_t netbuf_data (struct netbuf *buf,
                                   void **dataptr, u16_t *len);
s8_t netbuf_next (struct netbuf *buf);
void netbuf_first (struct netbuf *buf);
# 44 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/api.h" 2
# 1 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/sys.h" 1
# 93 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/sys.h"
typedef void (*lwip_thread_fn)(void *arg);
# 121 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/sys.h"
err_t sys_mutex_new(sys_mutex_t *mutex);


void sys_mutex_lock(sys_mutex_t *mutex);


void sys_mutex_unlock(sys_mutex_t *mutex);


void sys_mutex_free(sys_mutex_t *mutex);
# 147 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/sys.h"
err_t sys_sem_new(sys_sem_t *sem, u8_t count);


void sys_sem_signal(sys_sem_t *sem);





u32_t sys_arch_sem_wait(sys_sem_t *sem, u32_t timeout);


void sys_sem_free(sys_sem_t *sem);
# 181 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/sys.h"
void sys_msleep(u32_t ms);
# 190 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/sys.h"
err_t sys_mbox_new(sys_mbox_t *mbox, int size);




void sys_mbox_post(sys_mbox_t *mbox, void *msg);



err_t sys_mbox_trypost(sys_mbox_t *mbox, void *msg);







u32_t sys_arch_mbox_fetch(sys_mbox_t *mbox, void **msg, u32_t timeout);







u32_t sys_arch_mbox_tryfetch(sys_mbox_t *mbox, void **msg);





void sys_mbox_free(sys_mbox_t *mbox);
# 249 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/sys.h"
sys_thread_t sys_thread_new(const char *name, lwip_thread_fn thread, void *arg, int stacksize, int prio);




void sys_init(void);



u32_t sys_jiffies(void);




u32_t sys_now(void);
# 303 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/sys.h"
sys_prot_t sys_arch_protect(void);
void sys_arch_unprotect(sys_prot_t pval);
# 45 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/api.h" 2
# 96 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/api.h"
enum netconn_type {
  NETCONN_INVALID = 0,

  NETCONN_TCP = 0x10,

  NETCONN_TCP_IPV6 = NETCONN_TCP | 0x08 ,


  NETCONN_UDP = 0x20,
  NETCONN_UDPLITE = 0x21,
  NETCONN_UDPNOCHKSUM = 0x22,


  NETCONN_UDP_IPV6 = NETCONN_UDP | 0x08 ,
  NETCONN_UDPLITE_IPV6 = NETCONN_UDPLITE | 0x08 ,
  NETCONN_UDPNOCHKSUM_IPV6 = NETCONN_UDPNOCHKSUM | 0x08 ,



  NETCONN_RAW = 0x40

  , NETCONN_RAW_IPV6 = NETCONN_RAW | 0x08

};



enum netconn_state {
  NETCONN_NONE,
  NETCONN_WRITE,
  NETCONN_LISTEN,
  NETCONN_CONNECT,
  NETCONN_CLOSE
};


enum netconn_evt {
  NETCONN_EVT_RCVPLUS,
  NETCONN_EVT_RCVMINUS,
  NETCONN_EVT_SENDPLUS,
  NETCONN_EVT_SENDMINUS,
  NETCONN_EVT_ERROR
};



enum netconn_igmp {
  NETCONN_JOIN,
  NETCONN_LEAVE
};
# 158 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/api.h"
struct ip_pcb;
struct tcp_pcb;
struct udp_pcb;
struct raw_pcb;
struct netconn;
struct api_msg_msg;


typedef void (* netconn_callback)(struct netconn *, enum netconn_evt, u16_t len);


struct netconn {

  enum netconn_type type;

  enum netconn_state state;

  union {
    struct ip_pcb *ip;
    struct tcp_pcb *tcp;
    struct udp_pcb *udp;
    struct raw_pcb *raw;
  } pcb;

  err_t last_err;
# 192 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/api.h"
  sys_mbox_t recvmbox;



  sys_mbox_t acceptmbox;



  int socket;




  s32_t send_timeout;




  int recv_timeout;
# 226 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/api.h"
  u8_t flags;



  size_t write_offset;



  struct api_msg_msg *current_msg;


  netconn_callback callback;
};
# 258 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/api.h"
struct netconn *netconn_new_with_proto_and_callback(enum netconn_type t, u8_t proto,
                                             netconn_callback callback);
err_t netconn_delete(struct netconn *conn);



err_t netconn_getaddr(struct netconn *conn, ip_addr_t *addr,
                        u16_t *port, u8_t local);



err_t netconn_bind(struct netconn *conn, const ip_addr_t *addr, u16_t port);
err_t netconn_connect(struct netconn *conn, const ip_addr_t *addr, u16_t port);
err_t netconn_disconnect (struct netconn *conn);
err_t netconn_listen_with_backlog(struct netconn *conn, u8_t backlog);

err_t netconn_accept(struct netconn *conn, struct netconn **new_conn);
err_t netconn_recv(struct netconn *conn, struct netbuf **new_buf);
err_t netconn_recv_tcp_pbuf(struct netconn *conn, struct pbuf **new_buf);
void netconn_recved(struct netconn *conn, u32_t length);
err_t netconn_sendto(struct netconn *conn, struct netbuf *buf,
                             const ip_addr_t *addr, u16_t port);
err_t netconn_send(struct netconn *conn, struct netbuf *buf);
err_t netconn_write_partly(struct netconn *conn, const void *dataptr, size_t size,
                             u8_t apiflags, size_t *bytes_written);


err_t netconn_close(struct netconn *conn);
err_t netconn_shutdown(struct netconn *conn, u8_t shut_rx, u8_t shut_tx);


err_t netconn_join_leave_group(struct netconn *conn, const ip_addr_t *multiaddr,
                             const ip_addr_t *netif_addr, enum netconn_igmp join_or_leave);



err_t netconn_gethostbyname_addrtype(const char *name, ip_addr_t *addr, u8_t dns_addrtype);
# 351 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/api.h"
void netconn_thread_init(void);
void netconn_thread_cleanup(void);
# 47 "C:/esp/esp-idf/components/lwip/api/sockets.c" 2

# 1 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/igmp.h" 1
# 40 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/igmp.h"
# 1 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/netif.h" 1
# 45 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/netif.h"
# 1 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/stats.h" 1
# 37 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/stats.h"
# 1 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/mem.h" 1
# 43 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/mem.h"
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 44 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/mem.h" 2

typedef size_t mem_size_t;
# 38 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/stats.h" 2
# 1 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/memp.h" 1
# 42 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/memp.h"
# 1 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/priv/memp_std.h" 1
# 34 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/priv/memp_std.h"











# 55 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/priv/memp_std.h"






# 74 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/priv/memp_std.h"


















# 111 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/priv/memp_std.h"









# 131 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/priv/memp_std.h"


# 43 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/memp.h" 2


typedef enum {

# 1 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/priv/memp_std.h" 1
# 34 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/priv/memp_std.h"
MEMP_RAW_PCB,



MEMP_UDP_PCB,



MEMP_TCP_PCB,
MEMP_TCP_PCB_LISTEN,
MEMP_TCP_SEG,
# 55 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/priv/memp_std.h"
MEMP_NETBUF,
MEMP_NETCONN,



MEMP_TCPIP_MSG_API,
# 74 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/priv/memp_std.h"
MEMP_TCPIP_MSG_INPKT,




MEMP_ARP_QUEUE,



MEMP_IGMP_GROUP,



MEMP_SYS_TIMEOUT,



MEMP_NETDB,
# 111 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/priv/memp_std.h"
MEMP_ND6_QUEUE,



MEMP_IP6_REASSDATA,



MEMP_MLD6_GROUP,
# 131 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/priv/memp_std.h"
MEMP_PBUF,
MEMP_PBUF_POOL,
# 48 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/memp.h" 2
  MEMP_MAX
} memp_t;

# 1 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/priv/memp_priv.h" 1
# 85 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/priv/memp_priv.h"
struct memp {
  struct memp *next;




};
# 122 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/priv/memp_priv.h"
struct memp_desc {

  u16_t size;
# 141 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/priv/memp_priv.h"
};
# 159 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/priv/memp_priv.h"
void memp_init_pool(const struct memp_desc *desc);





void *memp_malloc_pool(const struct memp_desc *desc);

void memp_free_pool(const struct memp_desc* desc, void *mem);
# 52 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/memp.h" 2
# 65 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/memp.h"
extern const struct memp_desc* const memp_pools[MEMP_MAX];
# 39 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/stats.h" 2
# 46 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/netif.h" 2


struct dhcp;
# 117 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/netif.h"
struct netif;






typedef err_t (*netif_init_fn)(struct netif *netif);






typedef err_t (*netif_input_fn)(struct pbuf *p, struct netif *inp);
# 142 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/netif.h"
typedef err_t (*netif_output_fn)(struct netif *netif, struct pbuf *p,
       const ip4_addr_t *ipaddr);
# 155 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/netif.h"
typedef err_t (*netif_output_ip6_fn)(struct netif *netif, struct pbuf *p,
       const ip6_addr_t *ipaddr);
# 165 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/netif.h"
typedef err_t (*netif_linkoutput_fn)(struct netif *netif, struct pbuf *p);

typedef void (*netif_status_callback_fn)(struct netif *netif);


typedef err_t (*netif_igmp_mac_filter_fn)(struct netif *netif,
       const ip4_addr_t *group, u8_t action);



typedef err_t (*netif_mld_mac_filter_fn)(struct netif *netif,
       const ip6_addr_t *group, u8_t action);





typedef void (*dhcp_event_fn)(void);






struct netif {

  struct netif *next;



  ip_addr_t ip_addr;
  ip_addr_t netmask;
  ip_addr_t gw;



  ip_addr_t ip6_addr[3];


  u8_t ip6_addr_state[3];

  void (*ipv6_addr_cb)(struct netif* netif, u8_t ip_idex);





  netif_input_fn input;




  netif_output_fn output;




  netif_linkoutput_fn linkoutput;




  netif_output_ip6_fn output_ip6;
# 245 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/netif.h"
  void *state;


  struct dhcp *dhcp;


  struct udp_pcb *dhcps_pcb;
  dhcp_event_fn dhcp_event;
# 264 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/netif.h"
  u8_t ip6_autoconfig_enabled;




  u8_t rs_count;
# 279 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/netif.h"
  const char* hostname;







  u16_t mtu;

  u8_t hwaddr_len;

  u8_t hwaddr[6U];

  u8_t flags;

  char name[2];

  u8_t num;
# 313 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/netif.h"
  netif_igmp_mac_filter_fn igmp_mac_filter;





  netif_mld_mac_filter_fn mld_mac_filter;
# 335 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/netif.h"
  void (*l2_buffer_free_notify)(void *user_buf);

};
# 349 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/netif.h"
extern struct netif *netif_list;

extern struct netif *netif_default;

void netif_init(void);

struct netif *netif_add(struct netif *netif,

                        const ip4_addr_t *ipaddr, const ip4_addr_t *netmask, const ip4_addr_t *gw,

                        void *state, netif_init_fn init, netif_input_fn input);

void netif_set_addr(struct netif *netif, const ip4_addr_t *ipaddr, const ip4_addr_t *netmask,
                    const ip4_addr_t *gw);

void netif_remove(struct netif * netif);





struct netif *netif_find(const char *name);

void netif_set_default(struct netif *netif);


void netif_set_ipaddr(struct netif *netif, const ip4_addr_t *ipaddr);
void netif_set_netmask(struct netif *netif, const ip4_addr_t *netmask);
void netif_set_gw(struct netif *netif, const ip4_addr_t *gw);







void netif_set_up(struct netif *netif);
void netif_set_down(struct netif *netif);
# 397 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/netif.h"
void netif_set_link_up(struct netif *netif);
void netif_set_link_down(struct netif *netif);
# 435 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/netif.h"
s8_t netif_get_ip6_addr_match(struct netif *netif, const ip6_addr_t *ip6addr);
void netif_create_ip6_linklocal_address(struct netif *netif, u8_t from_mac_48bit);
err_t netif_add_ip6_address(struct netif *netif, const ip6_addr_t *ip6addr, s8_t *chosen_idx);
# 41 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/igmp.h" 2
# 72 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/igmp.h"
struct igmp_group {

  struct igmp_group *next;

  struct netif *netif;

  ip4_addr_t group_address;

  u8_t last_reporter_flag;

  u8_t group_state;

  u16_t timer;

  u8_t use;
};


void igmp_init(void);
err_t igmp_start(struct netif *netif);
err_t igmp_stop(struct netif *netif);
void igmp_report_groups(struct netif *netif);
struct igmp_group *igmp_lookfor_group(struct netif *ifp, const ip4_addr_t *addr);
void igmp_input(struct pbuf *p, struct netif *inp, const ip4_addr_t *dest);
err_t igmp_joingroup(const ip4_addr_t *ifaddr, const ip4_addr_t *groupaddr);
err_t igmp_joingroup_netif(struct netif *netif, const ip4_addr_t *groupaddr);
err_t igmp_leavegroup(const ip4_addr_t *ifaddr, const ip4_addr_t *groupaddr);
err_t igmp_leavegroup_netif(struct netif *netif, const ip4_addr_t *groupaddr);
void igmp_tmr(void);
# 49 "C:/esp/esp-idf/components/lwip/api/sockets.c" 2

# 1 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/tcp.h" 1
# 41 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/tcp.h"
# 1 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/ip.h" 1
# 42 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/ip.h"
# 1 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/ip4.h" 1
# 64 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/ip4.h"

struct ip_hdr {

  u8_t _v_hl;

  u8_t _tos;

  u16_t _len;

  u16_t _id;

  u16_t _offset;





  u8_t _ttl;

  u8_t _proto;

  u16_t _chksum;

  ip4_addr_p_t src;
  ip4_addr_p_t dest;
} __attribute__((packed));

# 115 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/ip4.h"
struct netif *ip4_route(const ip4_addr_t *dest);

struct netif *ip4_route_src(const ip4_addr_t *dest, const ip4_addr_t *src);



err_t ip4_input(struct pbuf *p, struct netif *inp);
err_t ip4_output(struct pbuf *p, const ip4_addr_t *src, const ip4_addr_t *dest,
       u8_t ttl, u8_t tos, u8_t proto);
err_t ip4_output_if(struct pbuf *p, const ip4_addr_t *src, const ip4_addr_t *dest,
       u8_t ttl, u8_t tos, u8_t proto, struct netif *netif);
err_t ip4_output_if_src(struct pbuf *p, const ip4_addr_t *src, const ip4_addr_t *dest,
       u8_t ttl, u8_t tos, u8_t proto, struct netif *netif);





err_t ip4_output_if_opt(struct pbuf *p, const ip4_addr_t *src, const ip4_addr_t *dest,
       u8_t ttl, u8_t tos, u8_t proto, struct netif *netif, void *ip_options,
       u16_t optlen);
err_t ip4_output_if_opt_src(struct pbuf *p, const ip4_addr_t *src, const ip4_addr_t *dest,
       u8_t ttl, u8_t tos, u8_t proto, struct netif *netif, void *ip_options,
       u16_t optlen);



void ip4_set_default_multicast_netif(struct netif* default_multicast_netif);
# 43 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/ip.h" 2
# 1 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/ip6.h" 1
# 77 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/ip6.h"

struct ip6_hdr {

  u32_t _v_tc_fl;

  u16_t _plen;

  u8_t _nexth;

  u8_t _hoplim;

  ip6_addr_p_t src;
  ip6_addr_p_t dest;
} __attribute__((packed));

# 105 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/ip6.h"

struct ip6_hbh_hdr {

  u8_t _nexth;

  u8_t _hlen;

  u8_t _ra_opt_type;

  u8_t _ra_opt_dlen;

  u16_t _ra_opt_data;

  u8_t _padn_opt_type;

  u8_t _padn_opt_dlen;
} __attribute__((packed));

# 134 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/ip6.h"

struct ip6_frag_hdr {

  u8_t _nexth;

  u8_t reserved;

  u16_t _fragment_offset;

  u32_t _identification;
} __attribute__((packed));

# 164 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/ip6.h"
struct netif *ip6_route(const ip6_addr_t *src, const ip6_addr_t *dest);
const ip_addr_t *ip6_select_source_address(struct netif *netif, const ip6_addr_t * dest);
err_t ip6_input(struct pbuf *p, struct netif *inp);
err_t ip6_output(struct pbuf *p, const ip6_addr_t *src, const ip6_addr_t *dest,
                         u8_t hl, u8_t tc, u8_t nexth);
err_t ip6_output_if(struct pbuf *p, const ip6_addr_t *src, const ip6_addr_t *dest,
                            u8_t hl, u8_t tc, u8_t nexth, struct netif *netif);
err_t ip6_output_if_src(struct pbuf *p, const ip6_addr_t *src, const ip6_addr_t *dest,
                            u8_t hl, u8_t tc, u8_t nexth, struct netif *netif);





err_t ip6_options_add_hbh_ra(struct pbuf * p, u8_t nexth, u8_t value);
# 44 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/ip.h" 2
# 95 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/ip.h"
struct ip_pcb {

  ip_addr_t local_ip; ip_addr_t remote_ip; u8_t so_options; u8_t tos; u8_t ttl ;
};
# 111 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/ip.h"
struct ip_globals
{

  struct netif *current_netif;

  struct netif *current_input_netif;


  struct ip_hdr *current_ip4_header;



  struct ip6_hdr *current_ip6_header;


  u16_t current_ip_header_tot_len;

  ip_addr_t current_iphdr_src;

  ip_addr_t current_iphdr_dest;
};
extern struct ip_globals ip_data;
# 253 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/ip.h"
err_t ip_input(struct pbuf *p, struct netif *inp);
# 42 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/tcp.h" 2
# 1 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/icmp.h" 1
# 41 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/icmp.h"
# 1 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/icmp6.h" 1
# 54 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/icmp6.h"
enum icmp6_type {
  ICMP6_TYPE_DUR = 1,
  ICMP6_TYPE_PTB = 2,
  ICMP6_TYPE_TE = 3,
  ICMP6_TYPE_PP = 4,
  ICMP6_TYPE_PE1 = 100,
  ICMP6_TYPE_PE2 = 101,
  ICMP6_TYPE_RSV_ERR = 127,

  ICMP6_TYPE_EREQ = 128,
  ICMP6_TYPE_EREP = 129,
  ICMP6_TYPE_MLQ = 130,
  ICMP6_TYPE_MLR = 131,
  ICMP6_TYPE_MLD = 132,
  ICMP6_TYPE_RS = 133,
  ICMP6_TYPE_RA = 134,
  ICMP6_TYPE_NS = 135,
  ICMP6_TYPE_NA = 136,
  ICMP6_TYPE_RD = 137,
  ICMP6_TYPE_MRA = 151,
  ICMP6_TYPE_MRS = 152,
  ICMP6_TYPE_MRT = 153,
  ICMP6_TYPE_PE3 = 200,
  ICMP6_TYPE_PE4 = 201,
  ICMP6_TYPE_RSV_INF = 255
};

enum icmp6_dur_code {
  ICMP6_DUR_NO_ROUTE = 0,
  ICMP6_DUR_PROHIBITED = 1,
  ICMP6_DUR_SCOPE = 2,
  ICMP6_DUR_ADDRESS = 3,
  ICMP6_DUR_PORT = 4,
  ICMP6_DUR_POLICY = 5,
  ICMP6_DUR_REJECT_ROUTE = 6
};

enum icmp6_te_code {
  ICMP6_TE_HL = 0,
  ICMP6_TE_FRAG = 1
};

enum icmp6_pp_code {
  ICMP6_PP_FIELD = 0,
  ICMP6_PP_HEADER = 1,
  ICMP6_PP_OPTION = 2
};






struct icmp6_hdr {
  u8_t type;
  u8_t code;
  u16_t chksum;
  u32_t data;
} __attribute__((packed));

# 122 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/icmp6.h"

struct icmp6_echo_hdr {
  u8_t type;
  u8_t code;
  u16_t chksum;
  u16_t id;
  u16_t seqno;
} __attribute__((packed));








void icmp6_input(struct pbuf *p, struct netif *inp);
void icmp6_dest_unreach(struct pbuf *p, enum icmp6_dur_code c);
void icmp6_packet_too_big(struct pbuf *p, u32_t mtu);
void icmp6_time_exceeded(struct pbuf *p, enum icmp6_te_code c);
void icmp6_param_problem(struct pbuf *p, enum icmp6_pp_code c, u32_t pointer);
# 42 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/icmp.h" 2
# 62 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/icmp.h"
enum icmp_dur_type {
  ICMP_DUR_NET = 0,
  ICMP_DUR_HOST = 1,
  ICMP_DUR_PROTO = 2,
  ICMP_DUR_PORT = 3,
  ICMP_DUR_FRAG = 4,
  ICMP_DUR_SR = 5
};

enum icmp_te_type {
  ICMP_TE_TTL = 0,
  ICMP_TE_FRAG = 1
};
# 84 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/icmp.h"

struct icmp_echo_hdr {
  u8_t type;
  u8_t code;
  u16_t chksum;
  u16_t id;
  u16_t seqno;
} __attribute__((packed));

# 107 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/icmp.h"
void icmp_input(struct pbuf *p, struct netif *inp);
void icmp_dest_unreach(struct pbuf *p, enum icmp_dur_type t);
void icmp_time_exceeded(struct pbuf *p, enum icmp_te_type t);
# 43 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/tcp.h" 2
# 51 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/tcp.h"
struct tcp_pcb;
# 62 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/tcp.h"
typedef err_t (*tcp_accept_fn)(void *arg, struct tcp_pcb *newpcb, err_t err);
# 74 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/tcp.h"
typedef err_t (*tcp_recv_fn)(void *arg, struct tcp_pcb *tpcb,
                             struct pbuf *p, err_t err);
# 88 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/tcp.h"
typedef err_t (*tcp_sent_fn)(void *arg, struct tcp_pcb *tpcb,
                              u16_t len);
# 100 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/tcp.h"
typedef err_t (*tcp_poll_fn)(void *arg, struct tcp_pcb *tpcb);
# 112 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/tcp.h"
typedef void (*tcp_err_fn)(void *arg, err_t err);
# 126 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/tcp.h"
typedef err_t (*tcp_connected_fn)(void *arg, struct tcp_pcb *tpcb, err_t err);
# 140 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/tcp.h"
typedef u16_t tcpwnd_size_t;
typedef u8_t tcpflags_t;


enum tcp_state {
  CLOSED = 0,
  LISTEN = 1,
  SYN_SENT = 2,
  SYN_RCVD = 3,
  ESTABLISHED = 4,
  FIN_WAIT_1 = 5,
  FIN_WAIT_2 = 6,
  CLOSE_WAIT = 7,
  CLOSING = 8,
  LAST_ACK = 9,
  TIME_WAIT = 10
};
# 186 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/tcp.h"
struct tcp_pcb {

  ip_addr_t local_ip; ip_addr_t remote_ip; u8_t so_options; u8_t tos; u8_t ttl ;

  struct tcp_pcb *next; void *callback_arg; tcp_accept_fn accept; enum tcp_state state; u8_t prio; u16_t local_port;


  u16_t remote_port;

  tcpflags_t flags;
# 212 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/tcp.h"
  u8_t polltmr, pollinterval;
  u8_t last_timer;
  u32_t tmr;


  u32_t rcv_nxt;
  tcpwnd_size_t rcv_wnd;
  tcpwnd_size_t rcv_ann_wnd;
  u32_t rcv_ann_right_edge;


  s16_t rtime;

  u16_t mss;


  u32_t rttest;
  u32_t rtseq;
  s16_t sa, sv;

  s16_t rto;
  u8_t nrtx;


  u8_t dupacks;
  u32_t lastack;


  tcpwnd_size_t per_soc_tcp_wnd;
  tcpwnd_size_t per_soc_tcp_snd_buf;



  tcpwnd_size_t cwnd;
  tcpwnd_size_t ssthresh;


  u32_t snd_nxt;
  u32_t snd_wl1, snd_wl2;

  u32_t snd_lbb;
  tcpwnd_size_t snd_wnd;
  tcpwnd_size_t snd_wnd_max;

  tcpwnd_size_t acked;

  tcpwnd_size_t snd_buf;

  u16_t snd_queuelen;



  u16_t unsent_oversize;



  struct tcp_seg *unsent;
  struct tcp_seg *unacked;

  struct tcp_seg *ooseq;


  struct pbuf *refused_data;



  tcp_sent_fn sent;

  tcp_recv_fn recv;

  tcp_connected_fn connected;

  tcp_poll_fn poll;

  tcp_err_fn errf;
# 295 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/tcp.h"
  u32_t keep_idle;

  u32_t keep_intvl;
  u32_t keep_cnt;



  u8_t persist_cnt;

  u8_t persist_backoff;


  u8_t keep_cnt_sent;
# 319 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/tcp.h"
};
# 336 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/tcp.h"
struct tcp_pcb_listen {

  ip_addr_t local_ip; ip_addr_t remote_ip; u8_t so_options; u8_t tos; u8_t ttl ;

  struct tcp_pcb_listen *next; void *callback_arg; tcp_accept_fn accept; enum tcp_state state; u8_t prio; u16_t local_port;


  u8_t backlog;
  u8_t accepts_pending;

};
# 368 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/tcp.h"
struct tcp_pcb * tcp_new (void);
struct tcp_pcb * tcp_new_ip_type (u8_t type);

void tcp_arg (struct tcp_pcb *pcb, void *arg);
void tcp_accept (struct tcp_pcb *pcb, tcp_accept_fn accept);
void tcp_recv (struct tcp_pcb *pcb, tcp_recv_fn recv);
void tcp_sent (struct tcp_pcb *pcb, tcp_sent_fn sent);
void tcp_poll (struct tcp_pcb *pcb, tcp_poll_fn poll, u8_t interval);
void tcp_err (struct tcp_pcb *pcb, tcp_err_fn err);
# 397 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/tcp.h"
void tcp_recved (struct tcp_pcb *pcb, u16_t len);
err_t tcp_bind (struct tcp_pcb *pcb, const ip_addr_t *ipaddr,
                              u16_t port);
err_t tcp_connect (struct tcp_pcb *pcb, const ip_addr_t *ipaddr,
                              u16_t port, tcp_connected_fn connected);

struct tcp_pcb * tcp_listen_with_backlog(struct tcp_pcb *pcb, u8_t backlog);


void tcp_abort (struct tcp_pcb *pcb);
err_t tcp_close (struct tcp_pcb *pcb);
err_t tcp_shutdown(struct tcp_pcb *pcb, int shut_rx, int shut_tx);





err_t tcp_write (struct tcp_pcb *pcb, const void *dataptr, u16_t len,
                              u8_t apiflags);

void tcp_setprio (struct tcp_pcb *pcb, u8_t prio);





err_t tcp_output (struct tcp_pcb *pcb);


const char* tcp_debug_state_str(enum tcp_state s);
# 51 "C:/esp/esp-idf/components/lwip/api/sockets.c" 2
# 1 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/raw.h" 1
# 49 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/raw.h"
struct raw_pcb;
# 61 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/raw.h"
typedef u8_t (*raw_recv_fn)(void *arg, struct raw_pcb *pcb, struct pbuf *p,
    const ip_addr_t *addr);

struct raw_pcb {

  ip_addr_t local_ip; ip_addr_t remote_ip; u8_t so_options; u8_t tos; u8_t ttl ;

  struct raw_pcb *next;

  u8_t protocol;


  raw_recv_fn recv;

  void *recv_arg;


  u16_t chksum_offset;
  u8_t chksum_reqd;

};



struct raw_pcb * raw_new (u8_t proto);
struct raw_pcb * raw_new_ip_type(u8_t type, u8_t proto);
void raw_remove (struct raw_pcb *pcb);
err_t raw_bind (struct raw_pcb *pcb, const ip_addr_t *ipaddr);
err_t raw_connect (struct raw_pcb *pcb, const ip_addr_t *ipaddr);

err_t raw_sendto (struct raw_pcb *pcb, struct pbuf *p, const ip_addr_t *ipaddr);
err_t raw_send (struct raw_pcb *pcb, struct pbuf *p);

void raw_recv (struct raw_pcb *pcb, raw_recv_fn recv, void *recv_arg);


u8_t raw_input (struct pbuf *p, struct netif *inp);
# 52 "C:/esp/esp-idf/components/lwip/api/sockets.c" 2
# 1 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/udp.h" 1
# 55 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/udp.h"

struct udp_hdr {
  u16_t src;
  u16_t dest;
  u16_t len;
  u16_t chksum;
} __attribute__((packed));

# 72 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/udp.h"
struct udp_pcb;
# 88 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/udp.h"
typedef void (*udp_recv_fn)(void *arg, struct udp_pcb *pcb, struct pbuf *p,
    const ip_addr_t *addr, u16_t port);

struct udp_pcb {

  ip_addr_t local_ip; ip_addr_t remote_ip; u8_t so_options; u8_t tos; u8_t ttl ;



  struct udp_pcb *next;

  u8_t flags;

  u16_t local_port, remote_port;



  ip_addr_t multicast_ip;

  u8_t mcast_ttl;
# 116 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/udp.h"
  udp_recv_fn recv;

  void *recv_arg;
};

extern struct udp_pcb *udp_pcbs;



struct udp_pcb * udp_new (void);
struct udp_pcb * udp_new_ip_type(u8_t type);
void udp_remove (struct udp_pcb *pcb);
err_t udp_bind (struct udp_pcb *pcb, const ip_addr_t *ipaddr,
                                 u16_t port);
err_t udp_connect (struct udp_pcb *pcb, const ip_addr_t *ipaddr,
                                 u16_t port);
void udp_disconnect (struct udp_pcb *pcb);
void udp_recv (struct udp_pcb *pcb, udp_recv_fn recv,
                                 void *recv_arg);
err_t udp_sendto_if (struct udp_pcb *pcb, struct pbuf *p,
                                 const ip_addr_t *dst_ip, u16_t dst_port,
                                 struct netif *netif);
err_t udp_sendto_if_src(struct udp_pcb *pcb, struct pbuf *p,
                                 const ip_addr_t *dst_ip, u16_t dst_port,
                                 struct netif *netif, const ip_addr_t *src_ip);
err_t udp_sendto (struct udp_pcb *pcb, struct pbuf *p,
                                 const ip_addr_t *dst_ip, u16_t dst_port);
err_t udp_send (struct udp_pcb *pcb, struct pbuf *p);
# 164 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/udp.h"
void udp_input (struct pbuf *p, struct netif *inp);

void udp_init (void);
# 185 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/udp.h"
void udp_netif_ipv4_addr_changed(const ip4_addr_t* old_addr, const ip4_addr_t* new_addr);
# 53 "C:/esp/esp-idf/components/lwip/api/sockets.c" 2


# 1 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/priv/tcpip_priv.h" 1
# 39 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/priv/tcpip_priv.h"
# 1 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/tcpip.h" 1
# 40 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/tcpip.h"
# 1 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/timers.h" 1
# 65 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/timers.h"
typedef void (* sys_timeout_handler)(void *arg);

struct sys_timeo {
  struct sys_timeo *next;
  u32_t time;
  sys_timeout_handler h;
  void *arg;



};

void sys_timeouts_init(void);





void sys_timeout(u32_t msecs, sys_timeout_handler handler, void *arg);


void sys_untimeout(sys_timeout_handler handler, void *arg);





void sys_timeouts_mbox_fetch(sys_mbox_t *mbox, void **msg);
# 41 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/tcpip.h" 2






struct pbuf;
struct netif;


typedef void (*tcpip_init_done_fn)(void *arg);

typedef void (*tcpip_callback_fn)(void *ctx);


struct tcpip_callback_msg;

void tcpip_init(tcpip_init_done_fn tcpip_init_done, void *arg);

err_t tcpip_inpkt(struct pbuf *p, struct netif *inp, netif_input_fn input_fn);
err_t tcpip_input(struct pbuf *p, struct netif *inp);

err_t tcpip_callback_with_block(tcpip_callback_fn function, void *ctx, u8_t block);


struct tcpip_callback_msg* tcpip_callbackmsg_new(tcpip_callback_fn function, void *ctx);
void tcpip_callbackmsg_delete(struct tcpip_callback_msg* msg);
err_t tcpip_trycallback(struct tcpip_callback_msg* msg);


err_t pbuf_free_callback(struct pbuf *p);
err_t mem_free_callback(void *m);
# 40 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/priv/tcpip_priv.h" 2







struct pbuf;
struct netif;
# 99 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/priv/tcpip_priv.h"
err_t tcpip_send_api_msg(tcpip_callback_fn fn, void *apimsg, sys_sem_t* sem);


struct tcpip_api_call;
typedef err_t (*tcpip_api_call_fn)(struct tcpip_api_call* call);
struct tcpip_api_call
{
  tcpip_api_call_fn function;


  sys_sem_t *sem;



  err_t err;

};
err_t tcpip_api_call(tcpip_api_call_fn fn, struct tcpip_api_call *call);

enum tcpip_msg_type {
  TCPIP_MSG_API,
  TCPIP_MSG_API_CALL,
  TCPIP_MSG_INPKT,




  TCPIP_MSG_CALLBACK,
  TCPIP_MSG_CALLBACK_STATIC
};

struct tcpip_msg {
  enum tcpip_msg_type type;
  union {
    struct {
      tcpip_callback_fn function;
      void* msg;
    } api;
    struct tcpip_api_call *api_call;
    struct {
      struct pbuf *p;
      struct netif *netif;
      netif_input_fn input_fn;
    } inp;
    struct {
      tcpip_callback_fn function;
      void *ctx;
    } cb;







  } msg;
};
# 56 "C:/esp/esp-idf/components/lwip/api/sockets.c" 2
# 1 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/priv/api_msg.h" 1
# 41 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/priv/api_msg.h"
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 42 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/priv/api_msg.h" 2
# 78 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/priv/api_msg.h"
struct api_msg_msg {


  struct netconn *conn;

  err_t err;

  union {

    struct netbuf *b;

    struct {
      u8_t proto;
    } n;

    struct {
      const ip_addr_t * ipaddr;
      u16_t port;
    } bc;

    struct {
      ip_addr_t *ipaddr;
      u16_t *port;
      u8_t local;
    } ad;

    struct {
      const void *dataptr;
      size_t len;
      u8_t apiflags;

      u32_t time_started;

    } w;

    struct {
      u32_t len;
    } r;


    struct {
      u8_t shut;

      u32_t time_started;



    } sd;



    struct {
      const ip_addr_t * multiaddr;
      const ip_addr_t * netif_addr;
      enum netconn_igmp join_or_leave;
    } jl;


    struct {
      u8_t backlog;
    } lb;

  } msg;

  sys_sem_t* op_completed_sem;

};
# 156 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/priv/api_msg.h"
struct api_msg {

  void (* function)(void *msg);

  struct api_msg_msg msg;
};






struct dns_api_msg {




  const char *name;


  ip_addr_t *addr;


  u8_t dns_addrtype;



  sys_sem_t *sem;

  err_t *err;
};
# 227 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/priv/api_msg.h"
void lwip_netconn_do_newconn (void *m);
void lwip_netconn_do_delconn (void *m);
void lwip_netconn_do_bind (void *m);
void lwip_netconn_do_connect (void *m);
void lwip_netconn_do_disconnect (void *m);
void lwip_netconn_do_listen (void *m);
void lwip_netconn_do_send (void *m);
void lwip_netconn_do_recv (void *m);
void lwip_netconn_do_write (void *m);
void lwip_netconn_do_getaddr (void *m);
void lwip_netconn_do_close (void *m);
void lwip_netconn_do_shutdown (void *m);

void lwip_netconn_do_join_leave_group(void *m);



void lwip_netconn_do_gethostbyname(void *arg);


struct netconn* netconn_alloc(enum netconn_type t, netconn_callback callback);
void netconn_free(struct netconn *conn);
# 57 "C:/esp/esp-idf/components/lwip/api/sockets.c" 2





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


# 63 "C:/esp/esp-idf/components/lwip/api/sockets.c" 2
# 102 "C:/esp/esp-idf/components/lwip/api/sockets.c"
static void sockaddr_to_ipaddr_port(const struct sockaddr* sockaddr, ip_addr_t* ipaddr, u16_t* port);
# 196 "C:/esp/esp-idf/components/lwip/api/sockets.c"
struct lwip_sock {

  struct netconn *conn;

  void *lastdata;

  u16_t lastoffset;


  s16_t rcvevent;


  u16_t sendevent;

  u16_t errevent;

  u8_t err;
# 221 "C:/esp/esp-idf/components/lwip/api/sockets.c"
  sys_mutex_t lock;


  u8_t state;


  s8_t ref;


  u8_t age;



  u8_t select_waiting;
};
# 331 "C:/esp/esp-idf/components/lwip/api/sockets.c"
struct lwip_select_cb {

  struct lwip_select_cb *next;

  struct lwip_select_cb *prev;

  _types_fd_set *readset;

  _types_fd_set *writeset;

  _types_fd_set *exceptset;

  int sem_signalled;

  sys_sem_t* sem;
};




union sockaddr_aligned {
   struct sockaddr sa;

   struct sockaddr_in6 sin6;


   struct sockaddr_in sin;

};
# 369 "C:/esp/esp-idf/components/lwip/api/sockets.c"
struct lwip_socket_multicast_pair {

  int sa;

  ip4_addr_t if_addr;

  ip4_addr_t multi_addr;
};

struct lwip_socket_multicast_pair socket_ipv4_multicast_memberships[10];

static int lwip_socket_register_membership(int s, const ip4_addr_t *if_addr, const ip4_addr_t *multi_addr);
static void lwip_socket_unregister_membership(int s, const ip4_addr_t *if_addr, const ip4_addr_t *multi_addr);
static void lwip_socket_drop_registered_memberships(int s);



static struct lwip_sock sockets[10];

static 
# 388 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
      _Bool 
# 388 "C:/esp/esp-idf/components/lwip/api/sockets.c"
           sockets_init_flag = 
# 388 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
                               0
# 388 "C:/esp/esp-idf/components/lwip/api/sockets.c"
                                    ;


static struct lwip_select_cb *select_cb_list;


static volatile int select_cb_ctr;



static const int err_to_errno_table[] = {
  0,
  12,
  105,
  11,
  118,
  119,
  22,
  11,
  112,


  120,
  127,
  113,
  104,
  128,
  128,
  5,
  -1,
# 428 "C:/esp/esp-idf/components/lwip/api/sockets.c"
};
# 451 "C:/esp/esp-idf/components/lwip/api/sockets.c"
static void event_callback(struct netconn *conn, enum netconn_evt evt, u16_t len);

static void lwip_getsockopt_callback(void *arg);
static void lwip_setsockopt_callback(void *arg);

static u8_t lwip_getsockopt_impl(int s, int level, int optname, void *optval, socklen_t *optlen);
static u8_t lwip_setsockopt_impl(int s, int level, int optname, const void *optval, socklen_t optlen);


static void
sockaddr_to_ipaddr_port(const struct sockaddr* sockaddr, ip_addr_t* ipaddr, u16_t* port)
{
  if ((sockaddr->sa_family) == 10) {
    do { {((&((ipaddr)->u_addr.ip6)))->addr[0] = (&(((const struct sockaddr_in6*)(const void*)(sockaddr))->sin6_addr))->un.u32_addr[0]; ((&((ipaddr)->u_addr.ip6)))->addr[1] = (&(((const struct sockaddr_in6*)(const void*)(sockaddr))->sin6_addr))->un.u32_addr[1]; ((&((ipaddr)->u_addr.ip6)))->addr[2] = (&(((const struct sockaddr_in6*)(const void*)(sockaddr))->sin6_addr))->un.u32_addr[2]; ((&((ipaddr)->u_addr.ip6)))->addr[3] = (&(((const struct sockaddr_in6*)(const void*)(sockaddr))->sin6_addr))->un.u32_addr[3];}; (*port) = lwip_ntohs(((const struct sockaddr_in6*)(const void*)(sockaddr))->sin6_port); }while(0);
    ipaddr->type = 6U;
  } else {
    do { ((((&((ipaddr)->u_addr.ip4)))->addr = ((&(((const struct sockaddr_in*)(const void*)(sockaddr))->sin_addr))->s_addr))); (*port) = lwip_ntohs(((const struct sockaddr_in*)(const void*)(sockaddr))->sin_port); }while(0);
    ipaddr->type = 0U;
  }
}



void
lwip_socket_thread_init(void)
{
   netconn_thread_init();
}


void
lwip_socket_thread_cleanup(void)
{
   netconn_thread_cleanup();
}







static struct lwip_sock *
get_socket(int s)
{
  struct lwip_sock *sock;

  s -= 0;

  if ((s < 0) || (s >= 10)) {
    do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("get_socket(%d): invalid\n", s + 0);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);
    do { if (9) { (*__errno()) = (9); } } while(0);
    return 
# 503 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
          ((void *)0)
# 503 "C:/esp/esp-idf/components/lwip/api/sockets.c"
              ;
  }

  sock = &sockets[s];

  if (!sock->conn) {
    do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("get_socket(%d): not active\n", s + 0);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);
    do { if (9) { (*__errno()) = (9); } } while(0);
    return 
# 511 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
          ((void *)0)
# 511 "C:/esp/esp-idf/components/lwip/api/sockets.c"
              ;
  }

  return sock;
}







static struct lwip_sock *
tryget_socket(int s)
{
  s -= 0;
  if ((s < 0) || (s >= 10)) {
    return 
# 528 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
          ((void *)0)
# 528 "C:/esp/esp-idf/components/lwip/api/sockets.c"
              ;
  }
  if (!sockets[s].conn) {
    return 
# 531 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
          ((void *)0)
# 531 "C:/esp/esp-idf/components/lwip/api/sockets.c"
              ;
  }
  return &sockets[s];
}
# 544 "C:/esp/esp-idf/components/lwip/api/sockets.c"
static int
alloc_socket(struct netconn *newconn, int accepted)
{
  int i;
  sys_prot_t lev;


  
# 551 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
 _Bool 
# 551 "C:/esp/esp-idf/components/lwip/api/sockets.c"
         found = 
# 551 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
                        0
# 551 "C:/esp/esp-idf/components/lwip/api/sockets.c"
                             ;
  int oldest = -1;

  lev = sys_arch_protect();

  if (sockets_init_flag == 
# 556 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
                          0
# 556 "C:/esp/esp-idf/components/lwip/api/sockets.c"
                               ){
    sockets_init_flag = 
# 557 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
                       1
# 557 "C:/esp/esp-idf/components/lwip/api/sockets.c"
                           ;
    memset(sockets, 0, sizeof(sockets));
  }

  for (i = 0; i < 10; ++i) {
    sockets[i].age ++;

    if (found == 
# 564 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
                1
# 564 "C:/esp/esp-idf/components/lwip/api/sockets.c"
                    ){
      continue;
    }

    if (!sockets[i].conn && (sockets[i].state == 0)) {
      found = 
# 569 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
              1
# 569 "C:/esp/esp-idf/components/lwip/api/sockets.c"
                  ;
      oldest = i;
      continue;
    }

    if (!sockets[i].conn){
      if (oldest == -1 || sockets[i].age > sockets[oldest].age){
        oldest = i;
      }
    }
  }

  if ((oldest != -1) && !sockets[oldest].conn) {
    found = 
# 582 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
           1
# 582 "C:/esp/esp-idf/components/lwip/api/sockets.c"
               ;
    sockets[oldest].conn = newconn;
  }

  sys_arch_unprotect(lev);

  if (found == 
# 588 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
              1
# 588 "C:/esp/esp-idf/components/lwip/api/sockets.c"
                  ) {
    sockets[oldest].lastdata = 
# 589 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
                                ((void *)0)
# 589 "C:/esp/esp-idf/components/lwip/api/sockets.c"
                                    ;
    sockets[oldest].lastoffset = 0;
    sockets[oldest].rcvevent = 0;



    sockets[oldest].sendevent = (((newconn->type)&0xF0) == NETCONN_TCP ? (accepted != 0) : 1);
    sockets[oldest].errevent = 0;
    sockets[oldest].err = 0;
    sockets[oldest].select_waiting = 0;

    sockets[oldest].state = 0;
    sockets[oldest].age = 0;
    sockets[oldest].ref = 0;
    if (!sockets[oldest].lock){

      if (sys_mutex_new(&sockets[oldest].lock) != 0){
        do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("new sock lock fail\n");} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);
        return -1;
      }
    }
    do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("alloc_socket: alloc %d ok\n", oldest);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);

    return oldest + 0;
  }

  do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("alloc_socket: failed\n");} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);
# 645 "C:/esp/esp-idf/components/lwip/api/sockets.c"
  return -1;
}







static void
free_socket(struct lwip_sock *sock, int is_tcp)
{
  void *lastdata;
  sys_prot_t lev;

  do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("free_sockset:free socket s=%p is_tcp=%d\n", sock, is_tcp);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);
  lastdata = sock->lastdata;
  sock->lastdata = 
# 662 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
                    ((void *)0)
# 662 "C:/esp/esp-idf/components/lwip/api/sockets.c"
                        ;
  sock->lastoffset = 0;
  sock->err = 0;

  if (sock->conn){
    netconn_free(sock->conn);
  }

  lev = sys_arch_protect();
  sock->age = 0;
  sock->conn = 
# 672 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
                    ((void *)0)
# 672 "C:/esp/esp-idf/components/lwip/api/sockets.c"
                        ;
  sock->state = 2;
  sys_arch_unprotect(lev);



  do { sys_prot_t old_level; old_level = sys_arch_protect(); sock->conn = 
# 678 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
 ((void *)0)
# 678 "C:/esp/esp-idf/components/lwip/api/sockets.c"
 ; sys_arch_unprotect(old_level); } while(0);


  if (lastdata != 
# 681 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
                 ((void *)0)
# 681 "C:/esp/esp-idf/components/lwip/api/sockets.c"
                     ) {
    if (is_tcp) {
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("free_sockset:free lastdata pbuf=%p\n", lastdata);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);
      pbuf_free((struct pbuf *)lastdata);
    } else {
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("free_sockset:free lastdata, netbuf=%p\n", lastdata);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);
      netbuf_delete((struct netbuf *)lastdata);
    }
  }
}







int
lwip_accept(int s, struct sockaddr *addr, socklen_t *addrlen)
{
  struct lwip_sock *sock, *nsock;
  struct netconn *newconn;
  ip_addr_t naddr;
  u16_t port = 0;
  int newsock;
  err_t err;
  sys_prot_t lev;

  do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("lwip_accept(%d)...\n", s);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);
  sock = get_socket(s);
  if (!sock) {
    return -1;
  }

  if ((((sock->conn)->flags & 0x02) != 0) && (sock->rcvevent <= 0)) {
    do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("lwip_accept(%d): returning EWOULDBLOCK\n", s);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);
    do { const int sockerr = (11); sock->err = (u8_t)sockerr; do { if (sockerr) { (*__errno()) = (sockerr); } } while(0); } while (0);
    return -1;
  }


  err = netconn_accept(sock->conn, &newconn);
  if (err != 0) {
    do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("lwip_accept(%d): netconn_acept failed, err=%d\n", s, err);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);
    if ((((sock->conn->type))&0xF0) != NETCONN_TCP) {
      do { const int sockerr = (95); sock->err = (u8_t)sockerr; do { if (sockerr) { (*__errno()) = (sockerr); } } while(0); } while (0);
      return 95;
    }
    do { const int sockerr = (((unsigned)(-(signed)(err)) < (sizeof(err_to_errno_table)/sizeof((err_to_errno_table)[0])) ? err_to_errno_table[-(signed)(err)] : 5)); sock->err = (u8_t)sockerr; do { if (sockerr) { (*__errno()) = (sockerr); } } while(0); } while (0);
    return -1;
  }
  do { if(!(newconn != 
# 732 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
 ((void *)0)
# 732 "C:/esp/esp-idf/components/lwip/api/sockets.c"
 )) __assert_func("C:/esp/esp-idf/components/lwip/api/sockets.c", 732, __func__, "newconn != NULL"); } while(0);

  do { if(1) { (newconn)->flags |= 0x08; } else { (newconn)->flags &= ~ 0x08; }} while(0);

  newsock = alloc_socket(newconn, 1);
  if (newsock == -1) {
    netconn_delete(newconn);
    do { const int sockerr = (23); sock->err = (u8_t)sockerr; do { if (sockerr) { (*__errno()) = (sockerr); } } while(0); } while (0);
    return -1;
  }
  do { if(!((newsock >= 0) && (newsock < 10 + 0))) __assert_func("C:/esp/esp-idf/components/lwip/api/sockets.c", 742, __func__, "invalid socket index"); } while(0);
  do { if(!(newconn->callback == event_callback)) __assert_func("C:/esp/esp-idf/components/lwip/api/sockets.c", 743, __func__, "newconn->callback == event_callback"); } while(0);
  nsock = &sockets[newsock - 0];






  lev = sys_arch_protect();
  nsock->rcvevent += (s16_t)(-1 - newconn->socket);
  newconn->socket = newsock;
  sys_arch_unprotect(lev);




  if (addr != 
# 759 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
             ((void *)0)
# 759 "C:/esp/esp-idf/components/lwip/api/sockets.c"
                 ) {
    union sockaddr_aligned tempaddr;

    err = netconn_getaddr(newconn,&naddr,&port,0);
    if (err != 0) {
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("lwip_accept(%d): netconn_peer failed, err=%d\n", s, err);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);
      netconn_delete(newconn);
      free_socket(nsock, 1);
      do { const int sockerr = (((unsigned)(-(signed)(err)) < (sizeof(err_to_errno_table)/sizeof((err_to_errno_table)[0])) ? err_to_errno_table[-(signed)(err)] : 5)); sock->err = (u8_t)sockerr; do { if (sockerr) { (*__errno()) = (sockerr); } } while(0); } while (0);
      return -1;
    }
    do { if(!(addrlen != 
# 770 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
   ((void *)0)
# 770 "C:/esp/esp-idf/components/lwip/api/sockets.c"
   )) __assert_func("C:/esp/esp-idf/components/lwip/api/sockets.c", 770, __func__, "addr valid but addrlen NULL"); } while(0);

    do { if ((((&naddr) != 
# 772 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
   ((void *)0)
# 772 "C:/esp/esp-idf/components/lwip/api/sockets.c"
   ) && (((&*(&naddr))->type) == 6U))) { do { ((struct sockaddr_in6*)(void*)(&tempaddr))->sin6_len = sizeof(struct sockaddr_in6); ((struct sockaddr_in6*)(void*)(&tempaddr))->sin6_family = 10; ((struct sockaddr_in6*)(void*)(&tempaddr))->sin6_port = lwip_htons((port)); ((struct sockaddr_in6*)(void*)(&tempaddr))->sin6_flowinfo = 0; {(&((struct sockaddr_in6*)(void*)(&tempaddr))->sin6_addr)->un.u32_addr[0] = ((&((&naddr)->u_addr.ip6)))->addr[0]; (&((struct sockaddr_in6*)(void*)(&tempaddr))->sin6_addr)->un.u32_addr[1] = ((&((&naddr)->u_addr.ip6)))->addr[1]; (&((struct sockaddr_in6*)(void*)(&tempaddr))->sin6_addr)->un.u32_addr[2] = ((&((&naddr)->u_addr.ip6)))->addr[2]; (&((struct sockaddr_in6*)(void*)(&tempaddr))->sin6_addr)->un.u32_addr[3] = ((&((&naddr)->u_addr.ip6)))->addr[3];}; ((struct sockaddr_in6*)(void*)(&tempaddr))->sin6_scope_id = 0; }while(0); } else { do { ((struct sockaddr_in*)(void*)(&tempaddr))->sin_len = sizeof(struct sockaddr_in); ((struct sockaddr_in*)(void*)(&tempaddr))->sin_family = 2; ((struct sockaddr_in*)(void*)(&tempaddr))->sin_port = lwip_htons((port)); ((&((struct sockaddr_in*)(void*)(&tempaddr))->sin_addr)->s_addr = (((&((&naddr)->u_addr.ip4)))->addr)); memset(((struct sockaddr_in*)(void*)(&tempaddr))->sin_zero, 0, 8); }while(0); } } while(0);
    if (*addrlen > tempaddr.sa.sa_len) {
      *addrlen = tempaddr.sa.sa_len;
    }
    memcpy(addr,&tempaddr,*addrlen);

    do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("lwip_accept(%d) returning new sock=%d addr=", s, newsock);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);
    do { if((((&naddr)->type) == 6U)) { do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("%" "x" ":%" "x" ":%" "x" ":%" "x" ":%" "x" ":%" "x" ":%" "x" ":%" "x", ((u16_t)(lwip_htonl((&(*(&((&(naddr))->u_addr.ip6))))->addr[0]) >> 16) & 0xffff), ((u16_t)(lwip_htonl((&(*(&((&(naddr))->u_addr.ip6))))->addr[0])) & 0xffff), ((u16_t)(lwip_htonl((&(*(&((&(naddr))->u_addr.ip6))))->addr[1]) >> 16) & 0xffff), ((u16_t)(lwip_htonl((&(*(&((&(naddr))->u_addr.ip6))))->addr[1])) & 0xffff), ((u16_t)(lwip_htonl((&(*(&((&(naddr))->u_addr.ip6))))->addr[2]) >> 16) & 0xffff), ((u16_t)(lwip_htonl((&(*(&((&(naddr))->u_addr.ip6))))->addr[2])) & 0xffff), ((u16_t)(lwip_htonl((&(*(&((&(naddr))->u_addr.ip6))))->addr[3]) >> 16) & 0xffff), ((u16_t)(lwip_htonl((&(*(&((&(naddr))->u_addr.ip6))))->addr[3])) & 0xffff));} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0); } else { do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("%" "d" ".%" "d" ".%" "d" ".%" "d", ((u16_t)(((const u8_t*)(&(&(*(&((&(naddr))->u_addr.ip4))))->addr))[0])), ((u16_t)(((const u8_t*)(&(&(*(&((&(naddr))->u_addr.ip4))))->addr))[1])), ((u16_t)(((const u8_t*)(&(&(*(&((&(naddr))->u_addr.ip4))))->addr))[2])), ((u16_t)(((const u8_t*)(&(&(*(&((&(naddr))->u_addr.ip4))))->addr))[3])));} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0); }}while(0);
    do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf (" port=%""d""\n", port);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);
  } else {
    do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("lwip_accept(%d) returning new sock=%d", s, newsock);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);
  }

  do { const int sockerr = (0); sock->err = (u8_t)sockerr; do { if (sockerr) { (*__errno()) = (sockerr); } } while(0); } while (0);
  return newsock;
}

int
lwip_bind(int s, const struct sockaddr *name, socklen_t namelen)
{
  struct lwip_sock *sock;
  ip_addr_t local_addr;
  u16_t local_port;
  err_t err;

  sock = get_socket(s);
  if (!sock) {
    return -1;
  }

  if (!((((name)->sa_family == 2) && !(((((sock)->conn->type)&0x08) != 0))) || (((name)->sa_family == 10) && (((((sock)->conn->type)&0x08) != 0))))) {

    do { const int sockerr = (((unsigned)(-(signed)(-6)) < (sizeof(err_to_errno_table)/sizeof((err_to_errno_table)[0])) ? err_to_errno_table[-(signed)(-6)] : 5)); sock->err = (u8_t)sockerr; do { if (sockerr) { (*__errno()) = (sockerr); } } while(0); } while (0);
    return -1;
  }


  do { if (!(((((namelen) == sizeof(struct sockaddr_in)) || ((namelen) == sizeof(struct sockaddr_in6))) && (((name)->sa_family == 2) || ((name)->sa_family == 10)) && ((((mem_ptr_t)(name)) % 4) == 0)))) { puts("lwip_bind: invalid address"); do { const int sockerr = (((unsigned)(-(signed)(-15)) < (sizeof(err_to_errno_table)/sizeof((err_to_errno_table)[0])) ? err_to_errno_table[-(signed)(-15)] : 5)); sock->err = (u8_t)sockerr; do { if (sockerr) { (*__errno()) = (sockerr); } } while(0); } while (0); return -1;;}} while(0)

                                                                     ;
  (void)namelen;

  sockaddr_to_ipaddr_port(name, &local_addr, &(local_port));
  do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("lwip_bind(%d, addr=", s);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);
  do { if((((&local_addr)->type) == 6U)) { do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("%" "x" ":%" "x" ":%" "x" ":%" "x" ":%" "x" ":%" "x" ":%" "x" ":%" "x", ((u16_t)(lwip_htonl((&(*(&((&(local_addr))->u_addr.ip6))))->addr[0]) >> 16) & 0xffff), ((u16_t)(lwip_htonl((&(*(&((&(local_addr))->u_addr.ip6))))->addr[0])) & 0xffff), ((u16_t)(lwip_htonl((&(*(&((&(local_addr))->u_addr.ip6))))->addr[1]) >> 16) & 0xffff), ((u16_t)(lwip_htonl((&(*(&((&(local_addr))->u_addr.ip6))))->addr[1])) & 0xffff), ((u16_t)(lwip_htonl((&(*(&((&(local_addr))->u_addr.ip6))))->addr[2]) >> 16) & 0xffff), ((u16_t)(lwip_htonl((&(*(&((&(local_addr))->u_addr.ip6))))->addr[2])) & 0xffff), ((u16_t)(lwip_htonl((&(*(&((&(local_addr))->u_addr.ip6))))->addr[3]) >> 16) & 0xffff), ((u16_t)(lwip_htonl((&(*(&((&(local_addr))->u_addr.ip6))))->addr[3])) & 0xffff));} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0); } else { do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("%" "d" ".%" "d" ".%" "d" ".%" "d", ((u16_t)(((const u8_t*)(&(&(*(&((&(local_addr))->u_addr.ip4))))->addr))[0])), ((u16_t)(((const u8_t*)(&(&(*(&((&(local_addr))->u_addr.ip4))))->addr))[1])), ((u16_t)(((const u8_t*)(&(&(*(&((&(local_addr))->u_addr.ip4))))->addr))[2])), ((u16_t)(((const u8_t*)(&(&(*(&((&(local_addr))->u_addr.ip4))))->addr))[3])));} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0); }}while(0);
  do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf (" port=%""d"")\n", local_port);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);

  err = netconn_bind(sock->conn, &local_addr, local_port);

  if (err != 0) {
    do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("lwip_bind(%d) failed, err=%d\n", s, err);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);
    do { const int sockerr = (((unsigned)(-(signed)(err)) < (sizeof(err_to_errno_table)/sizeof((err_to_errno_table)[0])) ? err_to_errno_table[-(signed)(err)] : 5)); sock->err = (u8_t)sockerr; do { if (sockerr) { (*__errno()) = (sockerr); } } while(0); } while (0);
    return -1;
  }

  do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("lwip_bind(%d) succeeded\n", s);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);
  do { const int sockerr = (0); sock->err = (u8_t)sockerr; do { if (sockerr) { (*__errno()) = (sockerr); } } while(0); } while (0);
  return 0;
}

int
lwip_close(int s)
{
  struct lwip_sock *sock;
  int is_tcp = 0;
  err_t err;

  do { if ( ((0x00U|0x00U) & 0x80U) && ((0x00U|0x00U) & 0x80U) && ((s16_t)((0x00U|0x00U) & 0x03) >= 0x00)) { do {printf ("lwip_close: (%d)\n", s);} while(0); if ((0x00U|0x00U) & 0x08U) { while(1); } } } while(0);

  sock = get_socket(s);
  if (!sock) {
    do { if ( ((0x00U|0x00U) & 0x80U) && ((0x00U|0x00U) & 0x80U) && ((s16_t)((0x00U|0x00U) & 0x03) >= 0x00)) { do {printf ("lwip_close: sock is null, return -1\n");} while(0); if ((0x00U|0x00U) & 0x08U) { while(1); } } } while(0);
    return -1;
  }

  if (sock->conn != 
# 847 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
                   ((void *)0)
# 847 "C:/esp/esp-idf/components/lwip/api/sockets.c"
                       ) {
    is_tcp = (((sock->conn->type))&0xF0) == NETCONN_TCP;
    do { if ( ((0x00U|0x00U) & 0x80U) && ((0x00U|0x00U) & 0x80U) && ((s16_t)((0x00U|0x00U) & 0x03) >= 0x00)) { do {printf ("lwip_close: is_tcp=%d\n", is_tcp);} while(0); if ((0x00U|0x00U) & 0x08U) { while(1); } } } while(0);
  } else {
    do { if ( ((0x00U|0x00U) & 0x80U) && ((0x00U|0x00U) & 0x80U) && ((s16_t)((0x00U|0x00U) & 0x03) >= 0x00)) { do {printf ("conn is null\n");} while(0); if ((0x00U|0x00U) & 0x08U) { while(1); } } } while(0);
    do { if(!(sock->lastdata == 
# 852 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
   ((void *)0)
# 852 "C:/esp/esp-idf/components/lwip/api/sockets.c"
   )) __assert_func("C:/esp/esp-idf/components/lwip/api/sockets.c", 852, __func__, "lwip_close: sock->lastdata == NULL"); } while(0);
  }



  lwip_socket_drop_registered_memberships(s);


  err = netconn_delete(sock->conn);
  if (err != 0) {
    do { if ( ((0x00U|0x00U) & 0x80U) && ((0x00U|0x00U) & 0x80U) && ((s16_t)((0x00U|0x00U) & 0x03) >= 0x00)) { do {printf ("netconn_delete fail, ret=%d\n", err);} while(0); if ((0x00U|0x00U) & 0x08U) { while(1); } } } while(0);
    do { const int sockerr = (((unsigned)(-(signed)(err)) < (sizeof(err_to_errno_table)/sizeof((err_to_errno_table)[0])) ? err_to_errno_table[-(signed)(err)] : 5)); sock->err = (u8_t)sockerr; do { if (sockerr) { (*__errno()) = (sockerr); } } while(0); } while (0);
    return -1;
  }





  do { if (0) { (*__errno()) = (0); } } while(0);
  return 0;
}

int
lwip_connect(int s, const struct sockaddr *name, socklen_t namelen)
{
  struct lwip_sock *sock;
  err_t err;

  sock = get_socket(s);
  if (!sock) {
    return -1;
  }

  if (!(((name)->sa_family == 0) || ((((name)->sa_family == 2) && !(((((sock)->conn->type)&0x08) != 0))) || (((name)->sa_family == 10) && (((((sock)->conn->type)&0x08) != 0)))))) {

    do { const int sockerr = (((unsigned)(-(signed)(-6)) < (sizeof(err_to_errno_table)/sizeof((err_to_errno_table)[0])) ? err_to_errno_table[-(signed)(-6)] : 5)); sock->err = (u8_t)sockerr; do { if (sockerr) { (*__errno()) = (sockerr); } } while(0); } while (0);
    return -1;
  }

  (void)namelen;
  if (name->sa_family == 0) {
    do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("lwip_connect(%d, AF_UNSPEC)\n", s);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);
    err = netconn_disconnect(sock->conn);
  } else {
    ip_addr_t remote_addr;
    u16_t remote_port;


    do { if (!((((namelen) == sizeof(struct sockaddr_in)) || ((namelen) == sizeof(struct sockaddr_in6))) && (((name)->sa_family == 0) || (((name)->sa_family == 2) || ((name)->sa_family == 10))) && ((((mem_ptr_t)(name)) % 4) == 0))) { puts("lwip_connect: invalid address"); do { const int sockerr = (((unsigned)(-(signed)(-15)) < (sizeof(err_to_errno_table)/sizeof((err_to_errno_table)[0])) ? err_to_errno_table[-(signed)(-15)] : 5)); sock->err = (u8_t)sockerr; do { if (sockerr) { (*__errno()) = (sockerr); } } while(0); } while (0); return -1;;}} while(0)

                                                                       ;

    sockaddr_to_ipaddr_port(name, &remote_addr, &(remote_port));
    do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("lwip_connect(%d, addr=", s);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);
    do { if((((&remote_addr)->type) == 6U)) { do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("%" "x" ":%" "x" ":%" "x" ":%" "x" ":%" "x" ":%" "x" ":%" "x" ":%" "x", ((u16_t)(lwip_htonl((&(*(&((&(remote_addr))->u_addr.ip6))))->addr[0]) >> 16) & 0xffff), ((u16_t)(lwip_htonl((&(*(&((&(remote_addr))->u_addr.ip6))))->addr[0])) & 0xffff), ((u16_t)(lwip_htonl((&(*(&((&(remote_addr))->u_addr.ip6))))->addr[1]) >> 16) & 0xffff), ((u16_t)(lwip_htonl((&(*(&((&(remote_addr))->u_addr.ip6))))->addr[1])) & 0xffff), ((u16_t)(lwip_htonl((&(*(&((&(remote_addr))->u_addr.ip6))))->addr[2]) >> 16) & 0xffff), ((u16_t)(lwip_htonl((&(*(&((&(remote_addr))->u_addr.ip6))))->addr[2])) & 0xffff), ((u16_t)(lwip_htonl((&(*(&((&(remote_addr))->u_addr.ip6))))->addr[3]) >> 16) & 0xffff), ((u16_t)(lwip_htonl((&(*(&((&(remote_addr))->u_addr.ip6))))->addr[3])) & 0xffff));} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0); } else { do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("%" "d" ".%" "d" ".%" "d" ".%" "d", ((u16_t)(((const u8_t*)(&(&(*(&((&(remote_addr))->u_addr.ip4))))->addr))[0])), ((u16_t)(((const u8_t*)(&(&(*(&((&(remote_addr))->u_addr.ip4))))->addr))[1])), ((u16_t)(((const u8_t*)(&(&(*(&((&(remote_addr))->u_addr.ip4))))->addr))[2])), ((u16_t)(((const u8_t*)(&(&(*(&((&(remote_addr))->u_addr.ip4))))->addr))[3])));} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0); }}while(0);
    do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf (" port=%""d"")\n", remote_port);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);

    err = netconn_connect(sock->conn, &remote_addr, remote_port);
  }

  if (err != 0) {
    do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("lwip_connect(%d) failed, err=%d\n", s, err);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);
    do { const int sockerr = (((unsigned)(-(signed)(err)) < (sizeof(err_to_errno_table)/sizeof((err_to_errno_table)[0])) ? err_to_errno_table[-(signed)(err)] : 5)); sock->err = (u8_t)sockerr; do { if (sockerr) { (*__errno()) = (sockerr); } } while(0); } while (0);
    return -1;
  }

  do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("lwip_connect(%d) succeeded\n", s);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);
  do { const int sockerr = (0); sock->err = (u8_t)sockerr; do { if (sockerr) { (*__errno()) = (sockerr); } } while(0); } while (0);
  return 0;
}
# 932 "C:/esp/esp-idf/components/lwip/api/sockets.c"
int
lwip_listen(int s, int backlog)
{
  struct lwip_sock *sock;
  err_t err;

  do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("lwip_listen(%d, backlog=%d)\n", s, backlog);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);

  sock = get_socket(s);
  if (!sock) {
    return -1;
  }


  backlog = ((((((backlog) > (0)) ? (backlog) : (0))) < (0xff)) ? ((((backlog) > (0)) ? (backlog) : (0))) : (0xff));

  err = netconn_listen_with_backlog(sock->conn, (u8_t)backlog);

  if (err != 0) {
    do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("lwip_listen(%d) failed, err=%d\n", s, err);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);
    if ((((sock->conn->type))&0xF0) != NETCONN_TCP) {
      do { const int sockerr = (95); sock->err = (u8_t)sockerr; do { if (sockerr) { (*__errno()) = (sockerr); } } while(0); } while (0);
      return -1;
    }
    do { const int sockerr = (((unsigned)(-(signed)(err)) < (sizeof(err_to_errno_table)/sizeof((err_to_errno_table)[0])) ? err_to_errno_table[-(signed)(err)] : 5)); sock->err = (u8_t)sockerr; do { if (sockerr) { (*__errno()) = (sockerr); } } while(0); } while (0);
    return -1;
  }

  do { const int sockerr = (0); sock->err = (u8_t)sockerr; do { if (sockerr) { (*__errno()) = (sockerr); } } while(0); } while (0);
  return 0;
}

int
lwip_recvfrom(int s, void *mem, size_t len, int flags,
              struct sockaddr *from, socklen_t *fromlen)
{
  struct lwip_sock *sock;
  void *buf = 
# 969 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
                         ((void *)0)
# 969 "C:/esp/esp-idf/components/lwip/api/sockets.c"
                             ;
  struct pbuf *p;
  u16_t buflen, copylen;
  int off = 0;
  u8_t done = 0;
  err_t err;

  do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("lwip_recvfrom(%d, %p, %""d"", 0x%x, ..)\n", s, mem, len, flags);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);
  sock = get_socket(s);
  if (!sock) {
    return -1;
  }

  do {
    do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("lwip_recvfrom: top while sock->lastdata=%p\n", sock->lastdata);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);

    if (sock->lastdata) {
      buf = sock->lastdata;
    } else {

      if (((flags & 0x08) || (((sock->conn)->flags & 0x02) != 0)) &&
          (sock->rcvevent <= 0)) {
        if (off > 0) {

          netconn_recved(sock->conn, (u32_t)off);

          do { const int sockerr = (0); sock->err = (u8_t)sockerr; do { if (sockerr) { (*__errno()) = (sockerr); } } while(0); } while (0);
          return off;
        }
        do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("lwip_recvfrom(%d): returning EWOULDBLOCK\n", s);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);
        do { const int sockerr = (11); sock->err = (u8_t)sockerr; do { if (sockerr) { (*__errno()) = (sockerr); } } while(0); } while (0);
        return -1;
      }



      if ((((sock->conn->type))&0xF0) == NETCONN_TCP) {
        err = netconn_recv_tcp_pbuf(sock->conn, (struct pbuf **)&buf);
      } else {
        err = netconn_recv(sock->conn, (struct netbuf **)&buf);
      }
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("lwip_recvfrom: netconn_recv err=%d, netbuf=%p\n", err, buf);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0)
                  ;

      if (err != 0) {
        if (off > 0) {

          netconn_recved(sock->conn, (u32_t)off);
          if (err == -13) {

            event_callback(sock->conn, NETCONN_EVT_RCVPLUS, 0);
          }

          do { const int sockerr = (0); sock->err = (u8_t)sockerr; do { if (sockerr) { (*__errno()) = (sockerr); } } while(0); } while (0);
          return off;
        }

        do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("lwip_recvfrom(%d): buf == NULL, error is \"%s\"!\n", s, lwip_strerr(err));} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0)
                               ;
        do { const int sockerr = (((unsigned)(-(signed)(err)) < (sizeof(err_to_errno_table)/sizeof((err_to_errno_table)[0])) ? err_to_errno_table[-(signed)(err)] : 5)); sock->err = (u8_t)sockerr; do { if (sockerr) { (*__errno()) = (sockerr); } } while(0); } while (0);
        if (err == -13) {
          return 0;
        } else {
          return -1;
        }
      }
      do { if(!(buf != 
# 1035 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
     ((void *)0)
# 1035 "C:/esp/esp-idf/components/lwip/api/sockets.c"
     )) __assert_func("C:/esp/esp-idf/components/lwip/api/sockets.c", 1035, __func__, "buf != NULL"); } while(0);
      sock->lastdata = buf;
    }

    if ((((sock->conn->type))&0xF0) == NETCONN_TCP) {
      p = (struct pbuf *)buf;
    } else {
      p = ((struct netbuf *)buf)->p;
    }
    buflen = p->tot_len;
    do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("lwip_recvfrom: buflen=%""d"" len=%""d"" off=%d sock->lastoffset=%""d""\n", buflen, len, off, sock->lastoffset);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0)
                                          ;

    buflen -= sock->lastoffset;

    if (len > buflen) {
      copylen = buflen;
    } else {
      copylen = (u16_t)len;
    }



    pbuf_copy_partial(p, (u8_t*)mem + off, copylen, sock->lastoffset);

    off += copylen;

    if ((((sock->conn->type))&0xF0) == NETCONN_TCP) {
      do { if(!(len >= copylen)) __assert_func("C:/esp/esp-idf/components/lwip/api/sockets.c", 1063, __func__, "invalid copylen, len would underflow"); } while(0);
      len -= copylen;
      if ((len <= 0) ||
          (p->flags & 0x01U) ||
          (sock->rcvevent <= 0) ||
          ((flags & 0x01) != 0)) {
        done = 1;
      }
    } else {
      done = 1;
    }


    if (done) {

      if (from && fromlen)

      {
        u16_t port;
        ip_addr_t tmpaddr;
        ip_addr_t *fromaddr;
        union sockaddr_aligned saddr;
        do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("lwip_recvfrom(%d): addr=", s);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);
        if ((((sock->conn->type))&0xF0) == NETCONN_TCP) {
          fromaddr = &tmpaddr;
          netconn_getaddr(sock->conn, fromaddr, &port, 0);
        } else {
          port = (((struct netbuf *)buf)->port);
          fromaddr = (&(((struct netbuf *)buf)->addr));
        }
        do { if ((((fromaddr) != 
# 1093 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
       ((void *)0)
# 1093 "C:/esp/esp-idf/components/lwip/api/sockets.c"
       ) && (((&*(fromaddr))->type) == 6U))) { do { ((struct sockaddr_in6*)(void*)(&saddr))->sin6_len = sizeof(struct sockaddr_in6); ((struct sockaddr_in6*)(void*)(&saddr))->sin6_family = 10; ((struct sockaddr_in6*)(void*)(&saddr))->sin6_port = lwip_htons((port)); ((struct sockaddr_in6*)(void*)(&saddr))->sin6_flowinfo = 0; {(&((struct sockaddr_in6*)(void*)(&saddr))->sin6_addr)->un.u32_addr[0] = ((&((fromaddr)->u_addr.ip6)))->addr[0]; (&((struct sockaddr_in6*)(void*)(&saddr))->sin6_addr)->un.u32_addr[1] = ((&((fromaddr)->u_addr.ip6)))->addr[1]; (&((struct sockaddr_in6*)(void*)(&saddr))->sin6_addr)->un.u32_addr[2] = ((&((fromaddr)->u_addr.ip6)))->addr[2]; (&((struct sockaddr_in6*)(void*)(&saddr))->sin6_addr)->un.u32_addr[3] = ((&((fromaddr)->u_addr.ip6)))->addr[3];}; ((struct sockaddr_in6*)(void*)(&saddr))->sin6_scope_id = 0; }while(0); } else { do { ((struct sockaddr_in*)(void*)(&saddr))->sin_len = sizeof(struct sockaddr_in); ((struct sockaddr_in*)(void*)(&saddr))->sin_family = 2; ((struct sockaddr_in*)(void*)(&saddr))->sin_port = lwip_htons((port)); ((&((struct sockaddr_in*)(void*)(&saddr))->sin_addr)->s_addr = (((&((fromaddr)->u_addr.ip4)))->addr)); memset(((struct sockaddr_in*)(void*)(&saddr))->sin_zero, 0, 8); }while(0); } } while(0);
        do { if((((fromaddr) != 
# 1094 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
       ((void *)0)
# 1094 "C:/esp/esp-idf/components/lwip/api/sockets.c"
       ) && (((&*(fromaddr))->type) == 6U))) { do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("%" "x" ":%" "x" ":%" "x" ":%" "x" ":%" "x" ":%" "x" ":%" "x" ":%" "x", ((&((fromaddr)->u_addr.ip6))) != 
# 1094 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
       ((void *)0) 
# 1094 "C:/esp/esp-idf/components/lwip/api/sockets.c"
       ? ((u16_t)(lwip_htonl(((&((fromaddr)->u_addr.ip6)))->addr[0]) >> 16) & 0xffff) : 0, ((&((fromaddr)->u_addr.ip6))) != 
# 1094 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
       ((void *)0) 
# 1094 "C:/esp/esp-idf/components/lwip/api/sockets.c"
       ? ((u16_t)(lwip_htonl(((&((fromaddr)->u_addr.ip6)))->addr[0])) & 0xffff) : 0, ((&((fromaddr)->u_addr.ip6))) != 
# 1094 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
       ((void *)0) 
# 1094 "C:/esp/esp-idf/components/lwip/api/sockets.c"
       ? ((u16_t)(lwip_htonl(((&((fromaddr)->u_addr.ip6)))->addr[1]) >> 16) & 0xffff) : 0, ((&((fromaddr)->u_addr.ip6))) != 
# 1094 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
       ((void *)0) 
# 1094 "C:/esp/esp-idf/components/lwip/api/sockets.c"
       ? ((u16_t)(lwip_htonl(((&((fromaddr)->u_addr.ip6)))->addr[1])) & 0xffff) : 0, ((&((fromaddr)->u_addr.ip6))) != 
# 1094 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
       ((void *)0) 
# 1094 "C:/esp/esp-idf/components/lwip/api/sockets.c"
       ? ((u16_t)(lwip_htonl(((&((fromaddr)->u_addr.ip6)))->addr[2]) >> 16) & 0xffff) : 0, ((&((fromaddr)->u_addr.ip6))) != 
# 1094 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
       ((void *)0) 
# 1094 "C:/esp/esp-idf/components/lwip/api/sockets.c"
       ? ((u16_t)(lwip_htonl(((&((fromaddr)->u_addr.ip6)))->addr[2])) & 0xffff) : 0, ((&((fromaddr)->u_addr.ip6))) != 
# 1094 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
       ((void *)0) 
# 1094 "C:/esp/esp-idf/components/lwip/api/sockets.c"
       ? ((u16_t)(lwip_htonl(((&((fromaddr)->u_addr.ip6)))->addr[3]) >> 16) & 0xffff) : 0, ((&((fromaddr)->u_addr.ip6))) != 
# 1094 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
       ((void *)0) 
# 1094 "C:/esp/esp-idf/components/lwip/api/sockets.c"
       ? ((u16_t)(lwip_htonl(((&((fromaddr)->u_addr.ip6)))->addr[3])) & 0xffff) : 0);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0); } else { do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("%" "d" ".%" "d" ".%" "d" ".%" "d", ((&((fromaddr)->u_addr.ip4))) != 
# 1094 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
       ((void *)0) 
# 1094 "C:/esp/esp-idf/components/lwip/api/sockets.c"
       ? ((u16_t)(((const u8_t*)(&((&((fromaddr)->u_addr.ip4)))->addr))[0])) : 0, ((&((fromaddr)->u_addr.ip4))) != 
# 1094 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
       ((void *)0) 
# 1094 "C:/esp/esp-idf/components/lwip/api/sockets.c"
       ? ((u16_t)(((const u8_t*)(&((&((fromaddr)->u_addr.ip4)))->addr))[1])) : 0, ((&((fromaddr)->u_addr.ip4))) != 
# 1094 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
       ((void *)0) 
# 1094 "C:/esp/esp-idf/components/lwip/api/sockets.c"
       ? ((u16_t)(((const u8_t*)(&((&((fromaddr)->u_addr.ip4)))->addr))[2])) : 0, ((&((fromaddr)->u_addr.ip4))) != 
# 1094 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
       ((void *)0) 
# 1094 "C:/esp/esp-idf/components/lwip/api/sockets.c"
       ? ((u16_t)(((const u8_t*)(&((&((fromaddr)->u_addr.ip4)))->addr))[3])) : 0);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0); }}while(0);
        do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf (" port=%""d"" len=%d\n", port, off);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);

        if (from && fromlen)
        {
              if (*fromlen > saddr.sa.sa_len) {
                *fromlen = saddr.sa.sa_len;
              }
              memcpy(from,&saddr,*fromlen);

        } else {

         if ((((sock->conn->type))&0xF0) == NETCONN_UDP){
          sock->conn->pcb.udp->remote_ip.u_addr.ip4.addr = fromaddr->u_addr.ip4.addr;
          sock->conn->pcb.udp->remote_port = port;
         }


        }
      }
    }


    if ((flags & 0x01) == 0) {



      if (((((sock->conn->type))&0xF0) == NETCONN_TCP) && (buflen - copylen > 0)) {
        sock->lastdata = buf;
        sock->lastoffset += copylen;
        do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("lwip_recvfrom: lastdata now netbuf=%p\n", buf);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);
      } else {
        sock->lastdata = 
# 1126 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
                        ((void *)0)
# 1126 "C:/esp/esp-idf/components/lwip/api/sockets.c"
                            ;
        sock->lastoffset = 0;
        do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("lwip_recvfrom: deleting netbuf=%p\n", buf);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);
        if ((((sock->conn->type))&0xF0) == NETCONN_TCP) {
          pbuf_free((struct pbuf *)buf);
        } else {
          netbuf_delete((struct netbuf *)buf);
        }
        buf = 
# 1134 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
             ((void *)0)
# 1134 "C:/esp/esp-idf/components/lwip/api/sockets.c"
                 ;
      }
    }
  } while (!done);

  if ((off > 0) && ((((sock->conn->type))&0xF0) == NETCONN_TCP) &&
      ((flags & 0x01) == 0)) {

    netconn_recved(sock->conn, (u32_t)off);
  }
  do { const int sockerr = (0); sock->err = (u8_t)sockerr; do { if (sockerr) { (*__errno()) = (sockerr); } } while(0); } while (0);
  return off;
}


int
lwip_read(int s, void *mem, size_t len)
{
  return lwip_recvfrom(s, mem, len, 0, 
# 1152 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
                                      ((void *)0)
# 1152 "C:/esp/esp-idf/components/lwip/api/sockets.c"
                                          , 
# 1152 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
                                            ((void *)0)
# 1152 "C:/esp/esp-idf/components/lwip/api/sockets.c"
                                                );
}

int
lwip_recv(int s, void *mem, size_t len, int flags)
{
  return lwip_recvfrom(s, mem, len, flags, 
# 1158 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
                                          ((void *)0)
# 1158 "C:/esp/esp-idf/components/lwip/api/sockets.c"
                                              , 
# 1158 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
                                                ((void *)0)
# 1158 "C:/esp/esp-idf/components/lwip/api/sockets.c"
                                                    );
}

int
lwip_send(int s, const void *data, size_t size, int flags)
{
  struct lwip_sock *sock;
  err_t err;
  u8_t write_flags;
  size_t written;

  do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("lwip_send(%d, data=%p, size=%""d"", flags=0x%x)\n", s, data, size, flags);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0)
                                                    ;

  sock = get_socket(s);
  if (!sock) {
    return -1;
  }

  if ((((sock->conn->type))&0xF0) != NETCONN_TCP) {

    return lwip_sendto(s, data, size, flags, 
# 1179 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
                                            ((void *)0)
# 1179 "C:/esp/esp-idf/components/lwip/api/sockets.c"
                                                , 0);




  }

  write_flags = 0x01 |
    ((flags & 0x10) ? 0x02 : 0) |
    ((flags & 0x08) ? 0x04 : 0);
  written = 0;
  err = netconn_write_partly(sock->conn, data, size, write_flags, &written);

  do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("lwip_send(%d) err=%d written=%""d""\n", s, err, written);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);
  do { const int sockerr = (((unsigned)(-(signed)(err)) < (sizeof(err_to_errno_table)/sizeof((err_to_errno_table)[0])) ? err_to_errno_table[-(signed)(err)] : 5)); sock->err = (u8_t)sockerr; do { if (sockerr) { (*__errno()) = (sockerr); } } while(0); } while (0);

  return (err == 0 ? (int)written : -1);
}

int
lwip_sendmsg(int s, const struct msghdr *msg, int flags)
{
  struct lwip_sock *sock;
  struct netbuf *chain_buf;
  u16_t remote_port;
  int i;

  u8_t write_flags;
  size_t written;

  int size = 0;
  err_t err = 0;

  sock = get_socket(s);
  if (!sock) {
    return -1;
  }

  do { if (!(msg != 
# 1217 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
 ((void *)0)
# 1217 "C:/esp/esp-idf/components/lwip/api/sockets.c"
 )) { puts("lwip_sendmsg: invalid msghdr"); do { const int sockerr = (((unsigned)(-(signed)(-15)) < (sizeof(err_to_errno_table)/sizeof((err_to_errno_table)[0])) ? err_to_errno_table[-(signed)(-15)] : 5)); sock->err = (u8_t)sockerr; do { if (sockerr) { (*__errno()) = (sockerr); } } while(0); } while (0); return -1;;}} while(0)
                                                                     ;

  (void)msg->msg_control;
  (void)msg->msg_controllen;
  (void)msg->msg_flags;
  do { if (!((msg->msg_iov != 
# 1223 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
 ((void *)0) 
# 1223 "C:/esp/esp-idf/components/lwip/api/sockets.c"
 && msg->msg_iovlen != 0))) { puts("lwip_sendmsg: invalid msghdr iov"); do { const int sockerr = (((unsigned)(-(signed)(-15)) < (sizeof(err_to_errno_table)/sizeof((err_to_errno_table)[0])) ? err_to_errno_table[-(signed)(-15)] : 5)); sock->err = (u8_t)sockerr; do { if (sockerr) { (*__errno()) = (sockerr); } } while(0); } while (0); return -1;;}} while(0)
                                                                     ;

  if ((((sock->conn->type))&0xF0) == NETCONN_TCP) {

    write_flags = 0x01 |
    ((flags & 0x10) ? 0x02 : 0) |
    ((flags & 0x08) ? 0x04 : 0);

    for (i = 0; i < msg->msg_iovlen; i++) {
      written = 0;
      err = netconn_write_partly(sock->conn, msg->msg_iov[i].iov_base, msg->msg_iov[i].iov_len, write_flags, &written);
      if (err == 0) {
        size += written;

        if (written != msg->msg_iov[i].iov_len)
          break;
      }

      else if (err == -7 && size > 0) {
        err = 0;

        break;
      } else {
        size = -1;
        break;
      }
    }
    do { const int sockerr = (((unsigned)(-(signed)(err)) < (sizeof(err_to_errno_table)/sizeof((err_to_errno_table)[0])) ? err_to_errno_table[-(signed)(err)] : 5)); sock->err = (u8_t)sockerr; do { if (sockerr) { (*__errno()) = (sockerr); } } while(0); } while (0);
    return size;




  }



  (void)flags;
  do { if (!((((msg->msg_name == 
# 1262 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
 ((void *)0)
# 1262 "C:/esp/esp-idf/components/lwip/api/sockets.c"
 ) && (msg->msg_namelen == 0)) || (((msg->msg_namelen) == sizeof(struct sockaddr_in)) || ((msg->msg_namelen) == sizeof(struct sockaddr_in6)))))) { puts("lwip_sendmsg: invalid msghdr name"); do { const int sockerr = (((unsigned)(-(signed)(-15)) < (sizeof(err_to_errno_table)/sizeof((err_to_errno_table)[0])) ? err_to_errno_table[-(signed)(-15)] : 5)); sock->err = (u8_t)sockerr; do { if (sockerr) { (*__errno()) = (sockerr); } } while(0); } while (0); return -1;;}} while(0)

                                                                     ;


  chain_buf = netbuf_new();
  if (!chain_buf) {
    do { const int sockerr = (((unsigned)(-(signed)(-1)) < (sizeof(err_to_errno_table)/sizeof((err_to_errno_table)[0])) ? err_to_errno_table[-(signed)(-1)] : 5)); sock->err = (u8_t)sockerr; do { if (sockerr) { (*__errno()) = (sockerr); } } while(0); } while (0);
    return -1;
  }
  if (msg->msg_name) {
    sockaddr_to_ipaddr_port((const struct sockaddr *)msg->msg_name, &chain_buf->addr, &(remote_port));
    ((chain_buf)->port) = remote_port;
  }

  for (i = 0; i < msg->msg_iovlen; i++) {
    size += msg->msg_iov[i].iov_len;
  }

  if (netbuf_alloc(chain_buf, (u16_t)size) == 
# 1281 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
                                             ((void *)0)
# 1281 "C:/esp/esp-idf/components/lwip/api/sockets.c"
                                                 ) {
    err = -1;
  }
  else {

    size_t offset = 0;
    for (i = 0; i < msg->msg_iovlen; i++) {
      memcpy(&((u8_t*)chain_buf->p->payload)[offset],msg->msg_iov[i].iov_base,msg->msg_iov[i].iov_len);
      offset += msg->msg_iov[i].iov_len;
    }







    err = 0;
  }
# 1326 "C:/esp/esp-idf/components/lwip/api/sockets.c"
  if (err == 0) {

    err = netconn_send(sock->conn, chain_buf);
  }


  netbuf_delete(chain_buf);

  do { const int sockerr = (((unsigned)(-(signed)(err)) < (sizeof(err_to_errno_table)/sizeof((err_to_errno_table)[0])) ? err_to_errno_table[-(signed)(err)] : 5)); sock->err = (u8_t)sockerr; do { if (sockerr) { (*__errno()) = (sockerr); } } while(0); } while (0);
  return (err == 0 ? size : -1);




}

int
lwip_sendto(int s, const void *data, size_t size, int flags,
       const struct sockaddr *to, socklen_t tolen)
{
  struct lwip_sock *sock;
  err_t err;
  u16_t short_size;
  u16_t remote_port;
  struct netbuf buf;

  sock = get_socket(s);
  if (!sock) {
    return -1;
  }

  if ((((sock->conn->type))&0xF0) == NETCONN_TCP) {

    return lwip_send(s, data, size, flags);





  }

  if ((to != 
# 1367 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
            ((void *)0)
# 1367 "C:/esp/esp-idf/components/lwip/api/sockets.c"
                ) && !((((to)->sa_family == 2) && !(((((sock)->conn->type)&0x08) != 0))) || (((to)->sa_family == 10) && (((((sock)->conn->type)&0x08) != 0))))) {

    do { const int sockerr = (((unsigned)(-(signed)(-6)) < (sizeof(err_to_errno_table)/sizeof((err_to_errno_table)[0])) ? err_to_errno_table[-(signed)(-6)] : 5)); sock->err = (u8_t)sockerr; do { if (sockerr) { (*__errno()) = (sockerr); } } while(0); } while (0);
    return -1;
  }


  do { if(!(size <= 0xffff)) __assert_func("C:/esp/esp-idf/components/lwip/api/sockets.c", 1374, __func__, "lwip_sendto: size must fit in u16_t"); } while(0);
  short_size = (u16_t)size;
  do { if (!((((to == 
# 1376 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
 ((void *)0)
# 1376 "C:/esp/esp-idf/components/lwip/api/sockets.c"
 ) && (tolen == 0)) || ((((tolen) == sizeof(struct sockaddr_in)) || ((tolen) == sizeof(struct sockaddr_in6))) && (((to)->sa_family == 2) || ((to)->sa_family == 10)) && ((((mem_ptr_t)(to)) % 4) == 0))))) { puts("lwip_sendto: invalid address"); do { const int sockerr = (((unsigned)(-(signed)(-15)) < (sizeof(err_to_errno_table)/sizeof((err_to_errno_table)[0])) ? err_to_errno_table[-(signed)(-15)] : 5)); sock->err = (u8_t)sockerr; do { if (sockerr) { (*__errno()) = (sockerr); } } while(0); } while (0); return -1;;}} while(0)


                                                                     ;
  (void)tolen;


  buf.p = buf.ptr = 
# 1383 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
                   ((void *)0)
# 1383 "C:/esp/esp-idf/components/lwip/api/sockets.c"
                       ;



  if (to) {
    sockaddr_to_ipaddr_port(to, &buf.addr, &(remote_port));
  } else {



        if ((((sock->conn->type))&0xF0) == NETCONN_UDP){
            if(((((sock->conn->type))&0x08) != 0)) {
                memcpy(&buf.addr.u_addr.ip6.addr, sock->conn->pcb.udp->remote_ip.u_addr.ip6.addr,16);
                remote_port = sock->conn->pcb.udp->remote_port;
                do { if((&buf.addr) != 
# 1397 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
               ((void *)0)
# 1397 "C:/esp/esp-idf/components/lwip/api/sockets.c"
               ) { do { (*(&buf.addr)).type = (6U); }while(0); }}while(0);
            } else {
                buf.addr.u_addr.ip4.addr = sock->conn->pcb.udp->remote_ip.u_addr.ip4.addr;
                remote_port = sock->conn->pcb.udp->remote_port;
                do { if((&buf.addr) != 
# 1401 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
               ((void *)0)
# 1401 "C:/esp/esp-idf/components/lwip/api/sockets.c"
               ) { do { (*(&buf.addr)).type = (0U); }while(0); }}while(0);
            }
        } else {

            remote_port = 0;
            do{if(((((sock->conn->type))&0x08) != 0)){ do{((&((&buf.addr)->u_addr.ip6)))->addr[0] = 0; ((&((&buf.addr)->u_addr.ip6)))->addr[1] = 0; ((&((&buf.addr)->u_addr.ip6)))->addr[2] = 0; ((&((&buf.addr)->u_addr.ip6)))->addr[3] = 0;}while(0); do { if((&buf.addr) != 
# 1406 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
           ((void *)0)
# 1406 "C:/esp/esp-idf/components/lwip/api/sockets.c"
           ) { do { (*(&buf.addr)).type = (6U); }while(0); }}while(0); }else{ (((&((&buf.addr)->u_addr.ip4)))->addr = ((u32_t)0x00000000UL)); do { if((&buf.addr) != 
# 1406 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
           ((void *)0)
# 1406 "C:/esp/esp-idf/components/lwip/api/sockets.c"
           ) { do { (*(&buf.addr)).type = (0U); }while(0); }}while(0); }}while(0);

        }


  }
  ((&buf)->port) = remote_port;


  do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("lwip_sendto(%d, data=%p, short_size=%""d"", flags=0x%x to=", s, data, short_size, flags);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0)
                                          ;
  do { if((((&buf.addr) != 
# 1417 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
 ((void *)0)
# 1417 "C:/esp/esp-idf/components/lwip/api/sockets.c"
 ) && (((&*(&buf.addr))->type) == 6U))) { do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("%" "x" ":%" "x" ":%" "x" ":%" "x" ":%" "x" ":%" "x" ":%" "x" ":%" "x", ((&((&buf.addr)->u_addr.ip6))) != 
# 1417 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
 ((void *)0) 
# 1417 "C:/esp/esp-idf/components/lwip/api/sockets.c"
 ? ((u16_t)(lwip_htonl(((&((&buf.addr)->u_addr.ip6)))->addr[0]) >> 16) & 0xffff) : 0, ((&((&buf.addr)->u_addr.ip6))) != 
# 1417 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
 ((void *)0) 
# 1417 "C:/esp/esp-idf/components/lwip/api/sockets.c"
 ? ((u16_t)(lwip_htonl(((&((&buf.addr)->u_addr.ip6)))->addr[0])) & 0xffff) : 0, ((&((&buf.addr)->u_addr.ip6))) != 
# 1417 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
 ((void *)0) 
# 1417 "C:/esp/esp-idf/components/lwip/api/sockets.c"
 ? ((u16_t)(lwip_htonl(((&((&buf.addr)->u_addr.ip6)))->addr[1]) >> 16) & 0xffff) : 0, ((&((&buf.addr)->u_addr.ip6))) != 
# 1417 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
 ((void *)0) 
# 1417 "C:/esp/esp-idf/components/lwip/api/sockets.c"
 ? ((u16_t)(lwip_htonl(((&((&buf.addr)->u_addr.ip6)))->addr[1])) & 0xffff) : 0, ((&((&buf.addr)->u_addr.ip6))) != 
# 1417 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
 ((void *)0) 
# 1417 "C:/esp/esp-idf/components/lwip/api/sockets.c"
 ? ((u16_t)(lwip_htonl(((&((&buf.addr)->u_addr.ip6)))->addr[2]) >> 16) & 0xffff) : 0, ((&((&buf.addr)->u_addr.ip6))) != 
# 1417 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
 ((void *)0) 
# 1417 "C:/esp/esp-idf/components/lwip/api/sockets.c"
 ? ((u16_t)(lwip_htonl(((&((&buf.addr)->u_addr.ip6)))->addr[2])) & 0xffff) : 0, ((&((&buf.addr)->u_addr.ip6))) != 
# 1417 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
 ((void *)0) 
# 1417 "C:/esp/esp-idf/components/lwip/api/sockets.c"
 ? ((u16_t)(lwip_htonl(((&((&buf.addr)->u_addr.ip6)))->addr[3]) >> 16) & 0xffff) : 0, ((&((&buf.addr)->u_addr.ip6))) != 
# 1417 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
 ((void *)0) 
# 1417 "C:/esp/esp-idf/components/lwip/api/sockets.c"
 ? ((u16_t)(lwip_htonl(((&((&buf.addr)->u_addr.ip6)))->addr[3])) & 0xffff) : 0);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0); } else { do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("%" "d" ".%" "d" ".%" "d" ".%" "d", ((&((&buf.addr)->u_addr.ip4))) != 
# 1417 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
 ((void *)0) 
# 1417 "C:/esp/esp-idf/components/lwip/api/sockets.c"
 ? ((u16_t)(((const u8_t*)(&((&((&buf.addr)->u_addr.ip4)))->addr))[0])) : 0, ((&((&buf.addr)->u_addr.ip4))) != 
# 1417 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
 ((void *)0) 
# 1417 "C:/esp/esp-idf/components/lwip/api/sockets.c"
 ? ((u16_t)(((const u8_t*)(&((&((&buf.addr)->u_addr.ip4)))->addr))[1])) : 0, ((&((&buf.addr)->u_addr.ip4))) != 
# 1417 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
 ((void *)0) 
# 1417 "C:/esp/esp-idf/components/lwip/api/sockets.c"
 ? ((u16_t)(((const u8_t*)(&((&((&buf.addr)->u_addr.ip4)))->addr))[2])) : 0, ((&((&buf.addr)->u_addr.ip4))) != 
# 1417 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
 ((void *)0) 
# 1417 "C:/esp/esp-idf/components/lwip/api/sockets.c"
 ? ((u16_t)(((const u8_t*)(&((&((&buf.addr)->u_addr.ip4)))->addr))[3])) : 0);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0); }}while(0);
  do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf (" port=%""d""\n", remote_port);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);




  if (netbuf_alloc(&buf, short_size) == 
# 1423 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
                                       ((void *)0)
# 1423 "C:/esp/esp-idf/components/lwip/api/sockets.c"
                                           ) {
    err = -1;
  } else {






    {
      memcpy(buf.p->payload,data,short_size);
    }
    err = 0;
  }




  if (err == 0) {
    ;

    err = netconn_send(sock->conn, &buf);
  }


  netbuf_free(&buf);

  do { const int sockerr = (((unsigned)(-(signed)(err)) < (sizeof(err_to_errno_table)/sizeof((err_to_errno_table)[0])) ? err_to_errno_table[-(signed)(err)] : 5)); sock->err = (u8_t)sockerr; do { if (sockerr) { (*__errno()) = (sockerr); } } while(0); } while (0);
  return (err == 0 ? short_size : -1);
}

int
lwip_socket(int domain, int type, int protocol)
{
  struct netconn *conn;
  int i;






  switch (type) {
  case 3:
    conn = netconn_new_with_proto_and_callback((((domain) == 2) ? (NETCONN_RAW) : (enum netconn_type)((NETCONN_RAW) | 0x08)),
                                               (u8_t)protocol, event_callback);
    do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("lwip_socket(%s, SOCK_RAW, %d) = ", domain == 2 ? "PF_INET" : "UNKNOWN", protocol);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0)
                                                                                      ;
    break;
  case 2:
    conn = netconn_new_with_proto_and_callback((((domain) == 2) ? (((protocol == 136) ? NETCONN_UDPLITE : NETCONN_UDP)) : (enum netconn_type)((((protocol == 136) ? NETCONN_UDPLITE : NETCONN_UDP)) | 0x08)), 0, event_callback)

                                ;
    do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("lwip_socket(%s, SOCK_DGRAM, %d) = ", domain == 2 ? "PF_INET" : "UNKNOWN", protocol);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0)
                                                                                      ;
    break;
  case 1:
    conn = netconn_new_with_proto_and_callback((((domain) == 2) ? (NETCONN_TCP) : (enum netconn_type)((NETCONN_TCP) | 0x08)), 0, event_callback);
    do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("lwip_socket(%s, SOCK_STREAM, %d) = ", domain == 2 ? "PF_INET" : "UNKNOWN", protocol);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0)
                                                                                      ;
    if (conn != 
# 1483 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
               ((void *)0)
# 1483 "C:/esp/esp-idf/components/lwip/api/sockets.c"
                   ) {

      do { if(1) { (conn)->flags |= 0x08; } else { (conn)->flags &= ~ 0x08; }} while(0);
    }
    break;
  default:
    do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("lwip_socket(%d, %d/UNKNOWN, %d) = -1\n", domain, type, protocol);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0)
                                                         ;
    do { if (22) { (*__errno()) = (22); } } while(0);
    return -1;
  }

  if (!conn) {
    do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("-1 / ENOBUFS (could not create netconn)\n");} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);
    do { if (105) { (*__errno()) = (105); } } while(0);
    return -1;
  }

  i = alloc_socket(conn, 0);

  if (i == -1) {
    do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("-1 / ENFILE (could not allocate socket)\n");} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);
    netconn_delete(conn);
    do { if (23) { (*__errno()) = (23); } } while(0);
    return -1;
  }
  conn->socket = i;
  do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("%d\n", i);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);
  do { if (0) { (*__errno()) = (0); } } while(0);
  return i;
}

int
lwip_write(int s, const void *data, size_t size)
{
  return lwip_send(s, data, size, 0);
}

int
lwip_writev(int s, const struct iovec *iov, int iovcnt)
{
  struct msghdr msg;

  msg.msg_name = 
# 1526 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
                ((void *)0)
# 1526 "C:/esp/esp-idf/components/lwip/api/sockets.c"
                    ;
  msg.msg_namelen = 0;


  msg.msg_iov = (struct iovec *)(size_t)iov;
  msg.msg_iovlen = iovcnt;
  msg.msg_control = 
# 1532 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
                   ((void *)0)
# 1532 "C:/esp/esp-idf/components/lwip/api/sockets.c"
                       ;
  msg.msg_controllen = 0;
  msg.msg_flags = 0;
  return lwip_sendmsg(s, &msg, 0);
}
# 1552 "C:/esp/esp-idf/components/lwip/api/sockets.c"
static int
lwip_selscan(int maxfdp1, _types_fd_set *readset_in, _types_fd_set *writeset_in, _types_fd_set *exceptset_in,
             _types_fd_set *readset_out, _types_fd_set *writeset_out, _types_fd_set *exceptset_out)
{
  int i, nready = 0;
  _types_fd_set lreadset, lwriteset, lexceptset;
  struct lwip_sock *sock;
  sys_prot_t lev;

  (__extension__ (void)({ size_t __i; char *__tmp = (char *)&lreadset; for (__i = 0; __i < sizeof (*(&lreadset)); ++__i) *__tmp++ = 0; }));
  (__extension__ (void)({ size_t __i; char *__tmp = (char *)&lwriteset; for (__i = 0; __i < sizeof (*(&lwriteset)); ++__i) *__tmp++ = 0; }));
  (__extension__ (void)({ size_t __i; char *__tmp = (char *)&lexceptset; for (__i = 0; __i < sizeof (*(&lexceptset)); ++__i) *__tmp++ = 0; }));



  for (i = 0; i < maxfdp1; i++) {

    if (!(readset_in && ((readset_in)->fds_bits[(i)/(sizeof (fd_mask) * 8)] & (1L << ((i) % (sizeof (fd_mask) * 8))))) &&
        !(writeset_in && ((writeset_in)->fds_bits[(i)/(sizeof (fd_mask) * 8)] & (1L << ((i) % (sizeof (fd_mask) * 8))))) &&
        !(exceptset_in && ((exceptset_in)->fds_bits[(i)/(sizeof (fd_mask) * 8)] & (1L << ((i) % (sizeof (fd_mask) * 8)))))) {
      continue;
    }

    lev = sys_arch_protect();
    sock = tryget_socket(i);
    if (sock != 
# 1577 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
               ((void *)0)
# 1577 "C:/esp/esp-idf/components/lwip/api/sockets.c"
                   ) {
      void* lastdata = sock->lastdata;
      s16_t rcvevent = sock->rcvevent;
      u16_t sendevent = sock->sendevent;
      u16_t errevent = sock->errevent;
      sys_arch_unprotect(lev);



      if (readset_in && ((readset_in)->fds_bits[(i)/(sizeof (fd_mask) * 8)] & (1L << ((i) % (sizeof (fd_mask) * 8)))) && ((lastdata != 
# 1586 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
                                                                ((void *)0)
# 1586 "C:/esp/esp-idf/components/lwip/api/sockets.c"
                                                                    ) || (rcvevent > 0))) {
        ((&lreadset)->fds_bits[(i)/(sizeof (fd_mask) * 8)] |= (1L << ((i) % (sizeof (fd_mask) * 8))));
        do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("lwip_selscan: fd=%d ready for reading\n", i);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);
        nready++;
      }

      if (writeset_in && ((writeset_in)->fds_bits[(i)/(sizeof (fd_mask) * 8)] & (1L << ((i) % (sizeof (fd_mask) * 8)))) && (sendevent != 0)) {
        ((&lwriteset)->fds_bits[(i)/(sizeof (fd_mask) * 8)] |= (1L << ((i) % (sizeof (fd_mask) * 8))));
        do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("lwip_selscan: fd=%d ready for writing\n", i);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);
        nready++;
      }

      if (exceptset_in && ((exceptset_in)->fds_bits[(i)/(sizeof (fd_mask) * 8)] & (1L << ((i) % (sizeof (fd_mask) * 8)))) && (errevent != 0)) {
        ((&lexceptset)->fds_bits[(i)/(sizeof (fd_mask) * 8)] |= (1L << ((i) % (sizeof (fd_mask) * 8))));
        do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("lwip_selscan: fd=%d ready for exception\n", i);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);
        nready++;
      }
    } else {
      sys_arch_unprotect(lev);

    }
  }

  *readset_out = lreadset;
  *writeset_out = lwriteset;
  *exceptset_out = lexceptset;

  do { if(!(nready >= 0)) __assert_func("C:/esp/esp-idf/components/lwip/api/sockets.c", 1613, __func__, "nready >= 0"); } while(0);
  return nready;
}

int
lwip_select(int maxfdp1, _types_fd_set *readset, _types_fd_set *writeset, _types_fd_set *exceptset,
            struct timeval *timeout)
{
  u32_t waitres = 0;
  int nready;
  _types_fd_set lreadset, lwriteset, lexceptset;
  u32_t msectimeout;
  struct lwip_select_cb select_cb;
  int i;
  int maxfdp2;

  int waited = 0;

  sys_prot_t lev;

  do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("lwip_select(%d, %p, %p, %p, tvsec=%""d"" tvusec=%""d"")\n", maxfdp1, (void *)readset, (void *) writeset, (void *) exceptset, timeout ? (s32_t)timeout->tv_sec : (s32_t)-1, timeout ? (s32_t)timeout->tv_usec : (s32_t)-1);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0)


                                                                 ;



  nready = lwip_selscan(maxfdp1, readset, writeset, exceptset, &lreadset, &lwriteset, &lexceptset);


  if (!nready) {
    if (timeout && timeout->tv_sec == 0 && timeout->tv_usec == 0) {
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("lwip_select: no timeout, returning 0\n");} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);


      goto return_copy_fdsets;
    }






    select_cb.next = 
# 1656 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
                    ((void *)0)
# 1656 "C:/esp/esp-idf/components/lwip/api/sockets.c"
                        ;
    select_cb.prev = 
# 1657 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
                    ((void *)0)
# 1657 "C:/esp/esp-idf/components/lwip/api/sockets.c"
                        ;
    select_cb.readset = readset;
    select_cb.writeset = writeset;
    select_cb.exceptset = exceptset;
    select_cb.sem_signalled = 0;

    select_cb.sem = sys_thread_sem_get();
# 1673 "C:/esp/esp-idf/components/lwip/api/sockets.c"
    lev = sys_arch_protect();


    select_cb.next = select_cb_list;
    if (select_cb_list != 
# 1677 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
                         ((void *)0)
# 1677 "C:/esp/esp-idf/components/lwip/api/sockets.c"
                             ) {
      select_cb_list->prev = &select_cb;
    }
    select_cb_list = &select_cb;

    select_cb_ctr++;


    sys_arch_unprotect(lev);


    maxfdp2 = maxfdp1;
    for (i = 0; i < maxfdp1; i++) {
      if ((readset && ((readset)->fds_bits[(i)/(sizeof (fd_mask) * 8)] & (1L << ((i) % (sizeof (fd_mask) * 8))))) ||
          (writeset && ((writeset)->fds_bits[(i)/(sizeof (fd_mask) * 8)] & (1L << ((i) % (sizeof (fd_mask) * 8))))) ||
          (exceptset && ((exceptset)->fds_bits[(i)/(sizeof (fd_mask) * 8)] & (1L << ((i) % (sizeof (fd_mask) * 8)))))) {
        struct lwip_sock *sock;
        lev = sys_arch_protect();
        sock = tryget_socket(i);
        if (sock != 
# 1696 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
                   ((void *)0)
# 1696 "C:/esp/esp-idf/components/lwip/api/sockets.c"
                       ) {
          sock->select_waiting++;
          do { if(!(sock->select_waiting > 0)) __assert_func("C:/esp/esp-idf/components/lwip/api/sockets.c", 1698, __func__, "sock->select_waiting > 0"); } while(0);
        } else {

          nready = -1;
          maxfdp2 = i;
          sys_arch_unprotect(lev);
          break;
        }
        sys_arch_unprotect(lev);
      }
    }

    if (nready >= 0) {


      nready = lwip_selscan(maxfdp1, readset, writeset, exceptset, &lreadset, &lwriteset, &lexceptset);
      if (!nready) {

        if (timeout == 0) {

          msectimeout = 0;
        } else {
          msectimeout = ((timeout->tv_sec * 1000) + ((timeout->tv_usec + 500)/1000));
          if (msectimeout == 0) {

            msectimeout = 1;
          }
        }

        waitres = sys_arch_sem_wait((select_cb.sem), msectimeout);

        waited = 1;

      }
    }


    for (i = 0; i < maxfdp2; i++) {
      if ((readset && ((readset)->fds_bits[(i)/(sizeof (fd_mask) * 8)] & (1L << ((i) % (sizeof (fd_mask) * 8))))) ||
          (writeset && ((writeset)->fds_bits[(i)/(sizeof (fd_mask) * 8)] & (1L << ((i) % (sizeof (fd_mask) * 8))))) ||
          (exceptset && ((exceptset)->fds_bits[(i)/(sizeof (fd_mask) * 8)] & (1L << ((i) % (sizeof (fd_mask) * 8)))))) {
        struct lwip_sock *sock;
        lev = sys_arch_protect();
        sock = tryget_socket(i);
        if (sock != 
# 1742 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
                   ((void *)0)
# 1742 "C:/esp/esp-idf/components/lwip/api/sockets.c"
                       ) {



          do { if(!(sock->select_waiting > 0)) __assert_func("C:/esp/esp-idf/components/lwip/api/sockets.c", 1746, __func__, "sock->select_waiting > 0"); } while(0);
          if (sock->select_waiting > 0) {
            sock->select_waiting--;
          }
        } else {

          nready = -1;
        }
        sys_arch_unprotect(lev);
      }
    }

    lev = sys_arch_protect();
    if (select_cb.next != 
# 1759 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
                         ((void *)0)
# 1759 "C:/esp/esp-idf/components/lwip/api/sockets.c"
                             ) {
      select_cb.next->prev = select_cb.prev;
    }
    if (select_cb_list == &select_cb) {
      do { if(!(select_cb.prev == 
# 1763 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
     ((void *)0)
# 1763 "C:/esp/esp-idf/components/lwip/api/sockets.c"
     )) __assert_func("C:/esp/esp-idf/components/lwip/api/sockets.c", 1763, __func__, "select_cb.prev == NULL"); } while(0);
      select_cb_list = select_cb.next;
    } else {
      do { if(!(select_cb.prev != 
# 1766 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
     ((void *)0)
# 1766 "C:/esp/esp-idf/components/lwip/api/sockets.c"
     )) __assert_func("C:/esp/esp-idf/components/lwip/api/sockets.c", 1766, __func__, "select_cb.prev != NULL"); } while(0);
      select_cb.prev->next = select_cb.next;
    }

    select_cb_ctr++;
    sys_arch_unprotect(lev);


    if (select_cb.sem_signalled && (!waited || (waitres == 0xffffffffUL))) {

      sys_arch_sem_wait(select_cb.sem, 1);
    }




    if (nready < 0) {

      do { if (9) { (*__errno()) = (9); } } while(0);
      return -1;
    }

    if (waitres == 0xffffffffUL) {

      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("lwip_select: timeout expired\n");} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);


      goto return_copy_fdsets;
    }


    nready = lwip_selscan(maxfdp1, readset, writeset, exceptset, &lreadset, &lwriteset, &lexceptset);
  }

  do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("lwip_select: nready=%d\n", nready);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);
return_copy_fdsets:
  do { if (0) { (*__errno()) = (0); } } while(0);
  if (readset) {
    *readset = lreadset;
  }
  if (writeset) {
    *writeset = lwriteset;
  }
  if (exceptset) {
    *exceptset = lexceptset;
  }
  return nready;
}





static void
event_callback(struct netconn *conn, enum netconn_evt evt, u16_t len)
{
  int s;
  struct lwip_sock *sock;
  struct lwip_select_cb *scb;
  int last_select_cb_ctr;
  sys_prot_t lev;

  (void)len;


  if (conn) {
    s = conn->socket;
    if (s < 0) {





      lev = sys_arch_protect();
      if (conn->socket < 0) {
        if (evt == NETCONN_EVT_RCVPLUS) {
          conn->socket--;
        }
        sys_arch_unprotect(lev);
        return;
      }
      s = conn->socket;
      sys_arch_unprotect(lev);
    }

    sock = get_socket(s);
    if (!sock) {
      return;
    }
  } else {
    return;
  }

  lev = sys_arch_protect();

  switch (evt) {
    case NETCONN_EVT_RCVPLUS:
      sock->rcvevent++;
      break;
    case NETCONN_EVT_RCVMINUS:
      sock->rcvevent--;
      break;
    case NETCONN_EVT_SENDPLUS:
      sock->sendevent = 1;
      break;
    case NETCONN_EVT_SENDMINUS:
      sock->sendevent = 0;
      break;
    case NETCONN_EVT_ERROR:
      sock->errevent = 1;
      break;
    default:
      do { if(!(0)) __assert_func("C:/esp/esp-idf/components/lwip/api/sockets.c", 1878, __func__, "unknown event"); } while(0);
      break;
  }

  if (sock->select_waiting == 0) {

    sys_arch_unprotect(lev);
    return;
  }







again:
  for (scb = select_cb_list; scb != 
# 1895 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
                                   ((void *)0)
# 1895 "C:/esp/esp-idf/components/lwip/api/sockets.c"
                                       ; scb = scb->next) {

    last_select_cb_ctr = select_cb_ctr;
    if (scb->sem_signalled == 0) {

      int do_signal = 0;

      if (sock->rcvevent > 0) {
        if (scb->readset && ((scb->readset)->fds_bits[(s)/(sizeof (fd_mask) * 8)] & (1L << ((s) % (sizeof (fd_mask) * 8))))) {
          do_signal = 1;
        }
      }
      if (sock->sendevent != 0) {
        if (!do_signal && scb->writeset && ((scb->writeset)->fds_bits[(s)/(sizeof (fd_mask) * 8)] & (1L << ((s) % (sizeof (fd_mask) * 8))))) {
          do_signal = 1;
        }
      }
      if (sock->errevent != 0) {
        if (!do_signal && scb->exceptset && ((scb->exceptset)->fds_bits[(s)/(sizeof (fd_mask) * 8)] & (1L << ((s) % (sizeof (fd_mask) * 8))))) {
          do_signal = 1;
        }
      }
      if (do_signal) {
        scb->sem_signalled = 1;


        sys_sem_signal((scb->sem));
      }
    }

    sys_arch_unprotect(lev);

    lev = sys_arch_protect();
    if (last_select_cb_ctr != select_cb_ctr) {

      goto again;
    }
  }
  sys_arch_unprotect(lev);
}





int
lwip_shutdown(int s, int how)
{
# 1982 "C:/esp/esp-idf/components/lwip/api/sockets.c"
  return 0;


}

static int
lwip_getaddrname(int s, struct sockaddr *name, socklen_t *namelen, u8_t local)
{
  struct lwip_sock *sock;
  union sockaddr_aligned saddr;
  ip_addr_t naddr;
  u16_t port;
  err_t err;

  sock = get_socket(s);
  if (!sock) {
    return -1;
  }



  err = netconn_getaddr(sock->conn, &naddr, &port, local);
  if (err != 0) {
    do { const int sockerr = (((unsigned)(-(signed)(err)) < (sizeof(err_to_errno_table)/sizeof((err_to_errno_table)[0])) ? err_to_errno_table[-(signed)(err)] : 5)); sock->err = (u8_t)sockerr; do { if (sockerr) { (*__errno()) = (sockerr); } } while(0); } while (0);
    return -1;
  }
  do { if ((((&naddr) != 
# 2008 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
 ((void *)0)
# 2008 "C:/esp/esp-idf/components/lwip/api/sockets.c"
 ) && (((&*(&naddr))->type) == 6U))) { do { ((struct sockaddr_in6*)(void*)(&saddr))->sin6_len = sizeof(struct sockaddr_in6); ((struct sockaddr_in6*)(void*)(&saddr))->sin6_family = 10; ((struct sockaddr_in6*)(void*)(&saddr))->sin6_port = lwip_htons((port)); ((struct sockaddr_in6*)(void*)(&saddr))->sin6_flowinfo = 0; {(&((struct sockaddr_in6*)(void*)(&saddr))->sin6_addr)->un.u32_addr[0] = ((&((&naddr)->u_addr.ip6)))->addr[0]; (&((struct sockaddr_in6*)(void*)(&saddr))->sin6_addr)->un.u32_addr[1] = ((&((&naddr)->u_addr.ip6)))->addr[1]; (&((struct sockaddr_in6*)(void*)(&saddr))->sin6_addr)->un.u32_addr[2] = ((&((&naddr)->u_addr.ip6)))->addr[2]; (&((struct sockaddr_in6*)(void*)(&saddr))->sin6_addr)->un.u32_addr[3] = ((&((&naddr)->u_addr.ip6)))->addr[3];}; ((struct sockaddr_in6*)(void*)(&saddr))->sin6_scope_id = 0; }while(0); } else { do { ((struct sockaddr_in*)(void*)(&saddr))->sin_len = sizeof(struct sockaddr_in); ((struct sockaddr_in*)(void*)(&saddr))->sin_family = 2; ((struct sockaddr_in*)(void*)(&saddr))->sin_port = lwip_htons((port)); ((&((struct sockaddr_in*)(void*)(&saddr))->sin_addr)->s_addr = (((&((&naddr)->u_addr.ip4)))->addr)); memset(((struct sockaddr_in*)(void*)(&saddr))->sin_zero, 0, 8); }while(0); } } while(0);

  do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("lwip_getaddrname(%d, addr=", s);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);
  do { if((((&naddr)->type) == 6U)) { do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("%" "x" ":%" "x" ":%" "x" ":%" "x" ":%" "x" ":%" "x" ":%" "x" ":%" "x", ((u16_t)(lwip_htonl((&(*(&((&(naddr))->u_addr.ip6))))->addr[0]) >> 16) & 0xffff), ((u16_t)(lwip_htonl((&(*(&((&(naddr))->u_addr.ip6))))->addr[0])) & 0xffff), ((u16_t)(lwip_htonl((&(*(&((&(naddr))->u_addr.ip6))))->addr[1]) >> 16) & 0xffff), ((u16_t)(lwip_htonl((&(*(&((&(naddr))->u_addr.ip6))))->addr[1])) & 0xffff), ((u16_t)(lwip_htonl((&(*(&((&(naddr))->u_addr.ip6))))->addr[2]) >> 16) & 0xffff), ((u16_t)(lwip_htonl((&(*(&((&(naddr))->u_addr.ip6))))->addr[2])) & 0xffff), ((u16_t)(lwip_htonl((&(*(&((&(naddr))->u_addr.ip6))))->addr[3]) >> 16) & 0xffff), ((u16_t)(lwip_htonl((&(*(&((&(naddr))->u_addr.ip6))))->addr[3])) & 0xffff));} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0); } else { do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("%" "d" ".%" "d" ".%" "d" ".%" "d", ((u16_t)(((const u8_t*)(&(&(*(&((&(naddr))->u_addr.ip4))))->addr))[0])), ((u16_t)(((const u8_t*)(&(&(*(&((&(naddr))->u_addr.ip4))))->addr))[1])), ((u16_t)(((const u8_t*)(&(&(*(&((&(naddr))->u_addr.ip4))))->addr))[2])), ((u16_t)(((const u8_t*)(&(&(*(&((&(naddr))->u_addr.ip4))))->addr))[3])));} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0); }}while(0);
  do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf (" port=%""d"")\n", port);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);

  if (*namelen > saddr.sa.sa_len) {
    *namelen = saddr.sa.sa_len;
  }
  memcpy(name,&saddr,*namelen);

  do { const int sockerr = (0); sock->err = (u8_t)sockerr; do { if (sockerr) { (*__errno()) = (sockerr); } } while(0); } while (0);
  return 0;
}

int
lwip_getpeername(int s, struct sockaddr *name, socklen_t *namelen)
{
  return lwip_getaddrname(s, name, namelen, 0);
}

int
lwip_getsockname(int s, struct sockaddr *name, socklen_t *namelen)
{
  return lwip_getaddrname(s, name, namelen, 1);
}

int
lwip_getsockopt(int s, int level, int optname, void *optval, socklen_t *optlen)
{
  u8_t err;
  struct lwip_sock *sock = get_socket(s);

  struct lwip_setgetsockopt_data data;


  if (!sock) {
    return -1;
  }

  if ((
# 2048 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
      ((void *)0) 
# 2048 "C:/esp/esp-idf/components/lwip/api/sockets.c"
           == optval) || (
# 2048 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
                          ((void *)0) 
# 2048 "C:/esp/esp-idf/components/lwip/api/sockets.c"
                               == optlen)) {
    do { const int sockerr = (14); sock->err = (u8_t)sockerr; do { if (sockerr) { (*__errno()) = (sockerr); } } while(0); } while (0);
    return -1;
  }
# 2069 "C:/esp/esp-idf/components/lwip/api/sockets.c"
  ;
  data.s = s;
  data.level = level;
  data.optname = optname;
  data.optlen = *optlen;

  data.optval.p = optval;

  data.err = 0;

  data.completed_sem = sys_thread_sem_get();



  err = tcpip_callback_with_block(lwip_getsockopt_callback, &data, 1);
  if (err != 0) {
    ;
    do { const int sockerr = (((unsigned)(-(signed)(err)) < (sizeof(err_to_errno_table)/sizeof((err_to_errno_table)[0])) ? err_to_errno_table[-(signed)(err)] : 5)); sock->err = (u8_t)sockerr; do { if (sockerr) { (*__errno()) = (sockerr); } } while(0); } while (0);
    return -1;
  }
  sys_arch_sem_wait((sys_sem_t*)(data.completed_sem), 0);


  *optlen = data.optlen;






  err = data.err;
  ;


  do { const int sockerr = (err); sock->err = (u8_t)sockerr; do { if (sockerr) { (*__errno()) = (sockerr); } } while(0); } while (0);
  return err ? -1 : 0;
}





static void
lwip_getsockopt_callback(void *arg)
{
  struct lwip_setgetsockopt_data *data;
  do { if(!(arg != 
# 2115 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
 ((void *)0)
# 2115 "C:/esp/esp-idf/components/lwip/api/sockets.c"
 )) __assert_func("C:/esp/esp-idf/components/lwip/api/sockets.c", 2115, __func__, "arg != NULL"); } while(0);
  data = (struct lwip_setgetsockopt_data*)arg;

  data->err = lwip_getsockopt_impl(data->s, data->level, data->optname,



    data->optval.p,

    &data->optlen);

  sys_sem_signal((sys_sem_t*)(data->completed_sem));
}





static u8_t
lwip_getsockopt_impl(int s, int level, int optname, void *optval, socklen_t *optlen)
{
  u8_t err = 0;
  struct lwip_sock *sock = tryget_socket(s);
  if (!sock) {
    return 9;
  }

  switch (level) {


  case 0xfff:
    switch (optname) {


    case 0x0002:
      do { do { if ((*optlen) < sizeof(int)) { return 22; }}while(0); if (((sock)->conn == 
# 2150 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
     ((void *)0)
# 2150 "C:/esp/esp-idf/components/lwip/api/sockets.c"
     ) || ((sock)->conn->pcb.tcp == 
# 2150 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
     ((void *)0)
# 2150 "C:/esp/esp-idf/components/lwip/api/sockets.c"
     )) { return 22; } }while(0);
      if (((sock->conn->type)&0xF0) != NETCONN_TCP) {
        return 109;
      }
      if ((sock->conn->pcb.tcp != 
# 2154 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
                                 ((void *)0)
# 2154 "C:/esp/esp-idf/components/lwip/api/sockets.c"
                                     ) && (sock->conn->pcb.tcp->state == LISTEN)) {
        *(int*)optval = 1;
      } else {
        *(int*)optval = 0;
      }
      break;



    case 0x0020:
    case 0x0008:



      do { do { if ((*optlen) < sizeof(int)) { return 22; }}while(0); if (((sock)->conn == 
# 2168 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
     ((void *)0)
# 2168 "C:/esp/esp-idf/components/lwip/api/sockets.c"
     ) || ((sock)->conn->pcb.tcp == 
# 2168 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
     ((void *)0)
# 2168 "C:/esp/esp-idf/components/lwip/api/sockets.c"
     )) { return 22; } }while(0);
      *(int*)optval = ((sock->conn->pcb.ip)->so_options & (optname));
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("lwip_getsockopt(%d, SOL_SOCKET, optname=0x%x, ..) = %s\n", s, optname, (*(int*)optval?"on":"off"));} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0)
                                                                          ;
      break;

    case 0x1008:
      do { do { if ((*optlen) < sizeof(int)) { return 22; }}while(0); if ((sock)->conn == 
# 2175 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
     ((void *)0)
# 2175 "C:/esp/esp-idf/components/lwip/api/sockets.c"
     ) { return 22; } }while(0);
      switch ((((sock->conn->type))&0xF0)) {
      case NETCONN_RAW:
        *(int*)optval = 3;
        break;
      case NETCONN_TCP:
        *(int*)optval = 1;
        break;
      case NETCONN_UDP:
        *(int*)optval = 2;
        break;
      default:
        *(int*)optval = (sock->conn->type);
        do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("lwip_getsockopt(%d, SOL_SOCKET, SO_TYPE): unrecognized socket type %d\n", s, *(int *)optval);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0)

                                       ;
      }
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("lwip_getsockopt(%d, SOL_SOCKET, SO_TYPE) = %d\n", s, *(int *)optval);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0)
                                     ;
      break;

    case 0x1007:
      do { if ((*optlen) < sizeof(int)) { return 22; }}while(0);

      if (((sock->err == 0) || (sock->err == 119)) && (sock->conn != 
# 2199 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
                                                                            ((void *)0)
# 2199 "C:/esp/esp-idf/components/lwip/api/sockets.c"
                                                                                )) {
        do { const int sockerr = (((unsigned)(-(signed)(sock->conn->last_err)) < (sizeof(err_to_errno_table)/sizeof((err_to_errno_table)[0])) ? err_to_errno_table[-(signed)(sock->conn->last_err)] : 5)); sock->err = (u8_t)sockerr; do { if (sockerr) { (*__errno()) = (sockerr); } } while(0); } while (0);
      }
      *(int *)optval = (sock->err == 0xFF ? (int)-1 : (int)sock->err);
      sock->err = 0;
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("lwip_getsockopt(%d, SOL_SOCKET, SO_ERROR) = %d\n", s, *(int *)optval);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0)
                                     ;
      break;


    case 0x1005:
      do { do { if ((*optlen) < sizeof(struct timeval)) { return 22; }}while(0); if ((sock)->conn == 
# 2210 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
     ((void *)0)
# 2210 "C:/esp/esp-idf/components/lwip/api/sockets.c"
     ) { return 22; } }while(0);
      do { s32_t loc = (((sock->conn)->send_timeout)); ((struct timeval *)(optval))->tv_sec = (loc) / 1000U; ((struct timeval *)(optval))->tv_usec = ((loc) % 1000U) * 1000U; }while(0);
      break;


    case 0x1006:
      do { do { if ((*optlen) < sizeof(struct timeval)) { return 22; }}while(0); if ((sock)->conn == 
# 2216 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
     ((void *)0)
# 2216 "C:/esp/esp-idf/components/lwip/api/sockets.c"
     ) { return 22; } }while(0);
      do { s32_t loc = (((sock->conn)->recv_timeout)); ((struct timeval *)(optval))->tv_sec = (loc) / 1000U; ((struct timeval *)(optval))->tv_usec = ((loc) % 1000U) * 1000U; }while(0);
      break;
# 2244 "C:/esp/esp-idf/components/lwip/api/sockets.c"
    case 0x100a:
      do { do { do { if ((*optlen) < sizeof(int)) { return 22; }}while(0); if (((sock)->conn == 
# 2245 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
     ((void *)0)
# 2245 "C:/esp/esp-idf/components/lwip/api/sockets.c"
     ) || ((sock)->conn->pcb.tcp == 
# 2245 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
     ((void *)0)
# 2245 "C:/esp/esp-idf/components/lwip/api/sockets.c"
     )) { return 22; } }while(0); if (((((sock)->conn->type))&0xF0) != NETCONN_UDP) { return 109; } }while(0);






      *(int*)optval = (((sock->conn->pcb.udp)->flags) & 0x01U) ? 1 : 0;
      break;

    default:
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("lwip_getsockopt(%d, SOL_SOCKET, UNIMPL: optname=0x%x, ..)\n", s, optname);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0)
                              ;
      err = 109;
      break;
    }
    break;


  case 0:
    switch (optname) {
    case 2:
      do { do { if ((*optlen) < sizeof(int)) { return 22; }}while(0); if (((sock)->conn == 
# 2267 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
     ((void *)0)
# 2267 "C:/esp/esp-idf/components/lwip/api/sockets.c"
     ) || ((sock)->conn->pcb.tcp == 
# 2267 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
     ((void *)0)
# 2267 "C:/esp/esp-idf/components/lwip/api/sockets.c"
     )) { return 22; } }while(0);
      *(int*)optval = sock->conn->pcb.ip->ttl;
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("lwip_getsockopt(%d, IPPROTO_IP, IP_TTL) = %d\n", s, *(int *)optval);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0)
                                     ;
      break;
    case 1:
      do { do { if ((*optlen) < sizeof(int)) { return 22; }}while(0); if (((sock)->conn == 
# 2273 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
     ((void *)0)
# 2273 "C:/esp/esp-idf/components/lwip/api/sockets.c"
     ) || ((sock)->conn->pcb.tcp == 
# 2273 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
     ((void *)0)
# 2273 "C:/esp/esp-idf/components/lwip/api/sockets.c"
     )) { return 22; } }while(0);
      *(int*)optval = sock->conn->pcb.ip->tos;
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("lwip_getsockopt(%d, IPPROTO_IP, IP_TOS) = %d\n", s, *(int *)optval);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0)
                                     ;
      break;

    case 5:
      do { do { if ((*optlen) < sizeof(u8_t)) { return 22; }}while(0); if (((sock)->conn == 
# 2280 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
     ((void *)0)
# 2280 "C:/esp/esp-idf/components/lwip/api/sockets.c"
     ) || ((sock)->conn->pcb.tcp == 
# 2280 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
     ((void *)0)
# 2280 "C:/esp/esp-idf/components/lwip/api/sockets.c"
     )) { return 22; } }while(0);
      if ((((sock->conn->type))&0xF0) != NETCONN_UDP) {
        return 109;
      }
      *(u8_t*)optval = sock->conn->pcb.udp->mcast_ttl;
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("lwip_getsockopt(%d, IPPROTO_IP, IP_MULTICAST_TTL) = %d\n", s, *(int *)optval);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0)
                                     ;
      break;
    case 6:
      do { do { if ((*optlen) < sizeof(struct in_addr)) { return 22; }}while(0); if (((sock)->conn == 
# 2289 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
     ((void *)0)
# 2289 "C:/esp/esp-idf/components/lwip/api/sockets.c"
     ) || ((sock)->conn->pcb.tcp == 
# 2289 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
     ((void *)0)
# 2289 "C:/esp/esp-idf/components/lwip/api/sockets.c"
     )) { return 22; } }while(0);
      if ((((sock->conn->type))&0xF0) != NETCONN_UDP) {
        return 109;
      }
      (((struct in_addr*)optval)->s_addr = (((&((&(sock->conn->pcb.udp)->multicast_ip)->u_addr.ip4)))->addr));
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("lwip_getsockopt(%d, IPPROTO_IP, IP_MULTICAST_IF) = 0x%""x""\n", s, *(u32_t *)optval);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0)
                                       ;
      break;
    case 7:
      do { do { if ((*optlen) < sizeof(u8_t)) { return 22; }}while(0); if (((sock)->conn == 
# 2298 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
     ((void *)0)
# 2298 "C:/esp/esp-idf/components/lwip/api/sockets.c"
     ) || ((sock)->conn->pcb.tcp == 
# 2298 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
     ((void *)0)
# 2298 "C:/esp/esp-idf/components/lwip/api/sockets.c"
     )) { return 22; } }while(0);
      if ((sock->conn->pcb.udp->flags & 0x08U) != 0) {
        *(u8_t*)optval = 1;
      } else {
        *(u8_t*)optval = 0;
      }
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("lwip_getsockopt(%d, IPPROTO_IP, IP_MULTICAST_LOOP) = %d\n", s, *(int *)optval);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0)
                                     ;
      break;

    default:
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("lwip_getsockopt(%d, IPPROTO_IP, UNIMPL: optname=0x%x, ..)\n", s, optname);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0)
                              ;
      err = 109;
      break;
    }
    break;



  case 6:

    do { do { do { if ((*optlen) < sizeof(int)) { return 22; }}while(0); if (((sock)->conn == 
# 2320 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
   ((void *)0)
# 2320 "C:/esp/esp-idf/components/lwip/api/sockets.c"
   ) || ((sock)->conn->pcb.tcp == 
# 2320 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
   ((void *)0)
# 2320 "C:/esp/esp-idf/components/lwip/api/sockets.c"
   )) { return 22; } }while(0); if (((((sock)->conn->type))&0xF0) != NETCONN_TCP) { return 109; } }while(0);
    switch (optname) {
    case 0x01:
      *(int*)optval = (((sock->conn->pcb.tcp)->flags & 0x40U) != 0);
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("lwip_getsockopt(%d, IPPROTO_TCP, TCP_NODELAY) = %s\n", s, (*(int*)optval)?"on":"off");} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0)
                                                  ;
      break;
    case 0x02:
      *(int*)optval = (int)sock->conn->pcb.tcp->keep_idle;
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("lwip_getsockopt(%d, IPPROTO_TCP, TCP_KEEPALIVE) = %d\n", s, *(int *)optval);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0)
                                     ;
      break;


    case 0x03:
      *(int*)optval = (int)(sock->conn->pcb.tcp->keep_idle/1000);
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("lwip_getsockopt(%d, IPPROTO_TCP, TCP_KEEPIDLE) = %d\n", s, *(int *)optval);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0)
                                     ;
      break;
    case 0x04:
      *(int*)optval = (int)(sock->conn->pcb.tcp->keep_intvl/1000);
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("lwip_getsockopt(%d, IPPROTO_TCP, TCP_KEEPINTVL) = %d\n", s, *(int *)optval);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0)
                                     ;
      break;
    case 0x05:
      *(int*)optval = (int)sock->conn->pcb.tcp->keep_cnt;
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("lwip_getsockopt(%d, IPPROTO_TCP, TCP_KEEPCNT) = %d\n", s, *(int *)optval);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0)
                                     ;
      break;



    case 0x06:
    *(int*)optval = (int)sock->conn->pcb.tcp->per_soc_tcp_wnd;
    break;
    case 0x07:
    *(int*)optval = (int)sock->conn->pcb.tcp->per_soc_tcp_snd_buf;
    break;


    default:
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("lwip_getsockopt(%d, IPPROTO_TCP, UNIMPL: optname=0x%x, ..)\n", s, optname);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0)
                              ;
      err = 109;
      break;
    }
    break;




  case 41:
    switch (optname) {
    case 27:
      do { do { if ((*optlen) < sizeof(int)) { return 22; }}while(0); if ((sock)->conn == 
# 2374 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
     ((void *)0)
# 2374 "C:/esp/esp-idf/components/lwip/api/sockets.c"
     ) { return 22; } }while(0);

      if ((((sock->conn->type))&0xF0) != NETCONN_TCP) {
        return 109;
      }
      *(int*)optval = ((((sock->conn)->flags & 0x20) != 0) ? 1 : 0);
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("lwip_getsockopt(%d, IPPROTO_IPV6, IPV6_V6ONLY) = %d\n", s, *(int *)optval);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0)
                                     ;
      break;
    default:
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("lwip_getsockopt(%d, IPPROTO_IPV6, UNIMPL: optname=0x%x, ..)\n", s, optname);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0)
                              ;
      err = 109;
      break;
    }
    break;
# 2421 "C:/esp/esp-idf/components/lwip/api/sockets.c"
  case 255:
    switch (optname) {

    case 7:
      do { do { do { if ((*optlen) < sizeof(int)) { return 22; }}while(0); if (((sock)->conn == 
# 2425 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
     ((void *)0)
# 2425 "C:/esp/esp-idf/components/lwip/api/sockets.c"
     ) || ((sock)->conn->pcb.tcp == 
# 2425 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
     ((void *)0)
# 2425 "C:/esp/esp-idf/components/lwip/api/sockets.c"
     )) { return 22; } }while(0); if (((((sock)->conn->type))&0xF0) != NETCONN_RAW) { return 109; } }while(0);
      if (sock->conn->pcb.raw->chksum_reqd == 0) {
        *(int *)optval = -1;
      } else {
        *(int *)optval = sock->conn->pcb.raw->chksum_offset;
      }
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("lwip_getsockopt(%d, IPPROTO_RAW, IPV6_CHECKSUM) = %d\n", s, (*(int*)optval));} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0)
                                       ;
      break;

    default:
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("lwip_getsockopt(%d, IPPROTO_RAW, UNIMPL: optname=0x%x, ..)\n", s, optname);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0)
                              ;
      err = 109;
      break;
    }
    break;
  default:
    do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("lwip_getsockopt(%d, level=0x%x, UNIMPL: optname=0x%x, ..)\n", s, level, optname);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0)
                                                   ;
    err = 109;
    break;
  }

  return err;
}

int
lwip_setsockopt(int s, int level, int optname, const void *optval, socklen_t optlen)
{
  u8_t err = 0;
  struct lwip_sock *sock = get_socket(s);

  struct lwip_setgetsockopt_data data;


  if (!sock) {
    return -1;
  }

  if (
# 2465 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
     ((void *)0) 
# 2465 "C:/esp/esp-idf/components/lwip/api/sockets.c"
          == optval) {
    do { const int sockerr = (14); sock->err = (u8_t)sockerr; do { if (sockerr) { (*__errno()) = (sockerr); } } while(0); } while (0);
    return -1;
  }
# 2486 "C:/esp/esp-idf/components/lwip/api/sockets.c"
  ;
  data.s = s;
  data.level = level;
  data.optname = optname;
  data.optlen = optlen;



  data.optval.pc = (const void*)optval;

  data.err = 0;

  data.completed_sem = sys_thread_sem_get();



  err = tcpip_callback_with_block(lwip_setsockopt_callback, &data, 1);
  if (err != 0) {
    ;
    do { const int sockerr = (((unsigned)(-(signed)(err)) < (sizeof(err_to_errno_table)/sizeof((err_to_errno_table)[0])) ? err_to_errno_table[-(signed)(err)] : 5)); sock->err = (u8_t)sockerr; do { if (sockerr) { (*__errno()) = (sockerr); } } while(0); } while (0);
    return -1;
  }
  sys_arch_sem_wait((sys_sem_t*)(data.completed_sem), 0);


  err = data.err;
  ;


  do { const int sockerr = (err); sock->err = (u8_t)sockerr; do { if (sockerr) { (*__errno()) = (sockerr); } } while(0); } while (0);
  return err ? -1 : 0;
}





static void
lwip_setsockopt_callback(void *arg)
{
  struct lwip_setgetsockopt_data *data;
  do { if(!(arg != 
# 2527 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
 ((void *)0)
# 2527 "C:/esp/esp-idf/components/lwip/api/sockets.c"
 )) __assert_func("C:/esp/esp-idf/components/lwip/api/sockets.c", 2527, __func__, "arg != NULL"); } while(0);
  data = (struct lwip_setgetsockopt_data*)arg;

  data->err = lwip_setsockopt_impl(data->s, data->level, data->optname,



    data->optval.pc,

    data->optlen);

  sys_sem_signal((sys_sem_t*)(data->completed_sem));
}





static u8_t
lwip_setsockopt_impl(int s, int level, int optname, const void *optval, socklen_t optlen)
{
  u8_t err = 0;
  struct lwip_sock *sock = tryget_socket(s);
  if (!sock) {
    return 9;
  }

  switch (level) {


  case 0xfff:
    switch (optname) {




    case 0x0020:
    case 0x0008:



      do { do { if ((optlen) < sizeof(int)) { return 22; }}while(0); if (((sock)->conn == 
# 2568 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
     ((void *)0)
# 2568 "C:/esp/esp-idf/components/lwip/api/sockets.c"
     ) || ((sock)->conn->pcb.tcp == 
# 2568 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
     ((void *)0)
# 2568 "C:/esp/esp-idf/components/lwip/api/sockets.c"
     )) { return 22; } }while(0);
      if (*(const int*)optval) {
        ((sock->conn->pcb.ip)->so_options |= (optname));
      } else {
        ((sock->conn->pcb.ip)->so_options &= ~(optname));
      }
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("lwip_setsockopt(%d, SOL_SOCKET, optname=0x%x, ..) -> %s\n", s, optname, (*(const int*)optval?"on":"off"));} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0)
                                                                ;
      break;





    case 0x1005:
      do { do { if ((optlen) < sizeof(struct timeval)) { return 22; }}while(0); if ((sock)->conn == 
# 2583 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
     ((void *)0)
# 2583 "C:/esp/esp-idf/components/lwip/api/sockets.c"
     ) { return 22; } }while(0);
      ((sock->conn)->send_timeout = (((((const struct timeval *)(optval))->tv_sec * 1000U) + (((const struct timeval *)(optval))->tv_usec / 1000U))));
      break;


    case 0x1006:
      do { do { if ((optlen) < sizeof(struct timeval)) { return 22; }}while(0); if ((sock)->conn == 
# 2589 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
     ((void *)0)
# 2589 "C:/esp/esp-idf/components/lwip/api/sockets.c"
     ) { return 22; } }while(0);
      ((sock->conn)->recv_timeout = ((int)((((const struct timeval *)(optval))->tv_sec * 1000U) + (((const struct timeval *)(optval))->tv_usec / 1000U))));
      break;
# 2620 "C:/esp/esp-idf/components/lwip/api/sockets.c"
    case 0x100a:
      do { do { do { if ((optlen) < sizeof(int)) { return 22; }}while(0); if (((sock)->conn == 
# 2621 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
     ((void *)0)
# 2621 "C:/esp/esp-idf/components/lwip/api/sockets.c"
     ) || ((sock)->conn->pcb.tcp == 
# 2621 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
     ((void *)0)
# 2621 "C:/esp/esp-idf/components/lwip/api/sockets.c"
     )) { return 22; } }while(0); if (((((sock)->conn->type))&0xF0) != NETCONN_UDP) { return 109; } }while(0);






      if (*(const int*)optval) {
        ((sock->conn->pcb.udp)->flags = (((sock->conn->pcb.udp)->flags) | 0x01U));
      } else {
        ((sock->conn->pcb.udp)->flags = (((sock->conn->pcb.udp)->flags) & ~0x01U));
      }
      break;

    default:
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("lwip_setsockopt(%d, SOL_SOCKET, UNIMPL: optname=0x%x, ..)\n", s, optname);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0)
                              ;
      err = 109;
      break;
    }
    break;


  case 0:
    switch (optname) {
    case 2:
      do { do { if ((optlen) < sizeof(int)) { return 22; }}while(0); if (((sock)->conn == 
# 2647 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
     ((void *)0)
# 2647 "C:/esp/esp-idf/components/lwip/api/sockets.c"
     ) || ((sock)->conn->pcb.tcp == 
# 2647 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
     ((void *)0)
# 2647 "C:/esp/esp-idf/components/lwip/api/sockets.c"
     )) { return 22; } }while(0);
      sock->conn->pcb.ip->ttl = (u8_t)(*(const int*)optval);
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("lwip_setsockopt(%d, IPPROTO_IP, IP_TTL, ..) -> %d\n", s, sock->conn->pcb.ip->ttl);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0)
                                              ;
      break;
    case 1:
      do { do { if ((optlen) < sizeof(int)) { return 22; }}while(0); if (((sock)->conn == 
# 2653 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
     ((void *)0)
# 2653 "C:/esp/esp-idf/components/lwip/api/sockets.c"
     ) || ((sock)->conn->pcb.tcp == 
# 2653 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
     ((void *)0)
# 2653 "C:/esp/esp-idf/components/lwip/api/sockets.c"
     )) { return 22; } }while(0);
      sock->conn->pcb.ip->tos = (u8_t)(*(const int*)optval);
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("lwip_setsockopt(%d, IPPROTO_IP, IP_TOS, ..)-> %d\n", s, sock->conn->pcb.ip->tos);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0)
                                              ;
      break;

    case 5:
      do { do { do { if ((optlen) < sizeof(u8_t)) { return 22; }}while(0); if (((sock)->conn == 
# 2660 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
     ((void *)0)
# 2660 "C:/esp/esp-idf/components/lwip/api/sockets.c"
     ) || ((sock)->conn->pcb.tcp == 
# 2660 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
     ((void *)0)
# 2660 "C:/esp/esp-idf/components/lwip/api/sockets.c"
     )) { return 22; } }while(0); if (((((sock)->conn->type))&0xF0) != NETCONN_UDP) { return 109; } }while(0);
      sock->conn->pcb.udp->mcast_ttl = (u8_t)(*(const u8_t*)optval);
      break;
    case 6:
      {
        ip4_addr_t if_addr;
        do { do { do { if ((optlen) < sizeof(struct in_addr)) { return 22; }}while(0); if (((sock)->conn == 
# 2666 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
       ((void *)0)
# 2666 "C:/esp/esp-idf/components/lwip/api/sockets.c"
       ) || ((sock)->conn->pcb.tcp == 
# 2666 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
       ((void *)0)
# 2666 "C:/esp/esp-idf/components/lwip/api/sockets.c"
       )) { return 22; } }while(0); if (((((sock)->conn->type))&0xF0) != NETCONN_UDP) { return 109; } }while(0);
        (((&if_addr)->addr = (((const struct in_addr*)optval)->s_addr)));
        do{ ((*(&((&((sock->conn->pcb.udp)->multicast_ip))->u_addr.ip4))).addr = (*(&if_addr)).addr); do { ((sock->conn->pcb.udp)->multicast_ip).type = (0U); }while(0); }while(0);
      }
      break;
    case 7:
      do { do { do { if ((optlen) < sizeof(u8_t)) { return 22; }}while(0); if (((sock)->conn == 
# 2672 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
     ((void *)0)
# 2672 "C:/esp/esp-idf/components/lwip/api/sockets.c"
     ) || ((sock)->conn->pcb.tcp == 
# 2672 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
     ((void *)0)
# 2672 "C:/esp/esp-idf/components/lwip/api/sockets.c"
     )) { return 22; } }while(0); if (((((sock)->conn->type))&0xF0) != NETCONN_UDP) { return 109; } }while(0);
      if (*(const u8_t*)optval) {
        ((sock->conn->pcb.udp)->flags = (((sock->conn->pcb.udp)->flags) | 0x08U));
      } else {
        ((sock->conn->pcb.udp)->flags = (((sock->conn->pcb.udp)->flags) & ~0x08U));
      }
      break;


    case 3:
    case 4:
      {


        err_t igmp_err;
        const struct ip_mreq *imr = (const struct ip_mreq *)optval;
        ip4_addr_t if_addr;
        ip4_addr_t multi_addr;
        do { do { do { if ((optlen) < sizeof(struct ip_mreq)) { return 22; }}while(0); if (((sock)->conn == 
# 2690 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
       ((void *)0)
# 2690 "C:/esp/esp-idf/components/lwip/api/sockets.c"
       ) || ((sock)->conn->pcb.tcp == 
# 2690 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
       ((void *)0)
# 2690 "C:/esp/esp-idf/components/lwip/api/sockets.c"
       )) { return 22; } }while(0); if (((((sock)->conn->type))&0xF0) != NETCONN_UDP) { return 109; } }while(0);
        (((&if_addr)->addr = ((&imr->imr_interface)->s_addr)));
        (((&multi_addr)->addr = ((&imr->imr_multiaddr)->s_addr)));
        if (optname == 3) {
          if (!lwip_socket_register_membership(s, &if_addr, &multi_addr)) {

            err = 12;
            igmp_err = 0;
          } else {
            igmp_err = igmp_joingroup(&if_addr, &multi_addr);
          }
        } else {
          igmp_err = igmp_leavegroup(&if_addr, &multi_addr);
          lwip_socket_unregister_membership(s, &if_addr, &multi_addr);
        }
        if (igmp_err != 0) {
          err = 125;
        }
      }
      break;

    default:
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("lwip_setsockopt(%d, IPPROTO_IP, UNIMPL: optname=0x%x, ..)\n", s, optname);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0)
                              ;
      err = 109;
      break;
    }
    break;



  case 6:

    do { do { do { if ((optlen) < sizeof(int)) { return 22; }}while(0); if (((sock)->conn == 
# 2723 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
   ((void *)0)
# 2723 "C:/esp/esp-idf/components/lwip/api/sockets.c"
   ) || ((sock)->conn->pcb.tcp == 
# 2723 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
   ((void *)0)
# 2723 "C:/esp/esp-idf/components/lwip/api/sockets.c"
   )) { return 22; } }while(0); if (((((sock)->conn->type))&0xF0) != NETCONN_TCP) { return 109; } }while(0);
    switch (optname) {
    case 0x01:
      if (*(const int*)optval) {
        ((sock->conn->pcb.tcp)->flags |= 0x40U);
      } else {
        ((sock->conn->pcb.tcp)->flags = (tcpflags_t)((sock->conn->pcb.tcp)->flags & ~0x40U));
      }
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("lwip_setsockopt(%d, IPPROTO_TCP, TCP_NODELAY) -> %s\n", s, (*(const int *)optval)?"on":"off");} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0)
                                                         ;
      break;
    case 0x02:
      sock->conn->pcb.tcp->keep_idle = (u32_t)(*(const int*)optval);
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("lwip_setsockopt(%d, IPPROTO_TCP, TCP_KEEPALIVE) -> %""d""\n", s, sock->conn->pcb.tcp->keep_idle);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0)
                                                     ;
      break;


    case 0x03:
      sock->conn->pcb.tcp->keep_idle = 1000*(u32_t)(*(const int*)optval);
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("lwip_setsockopt(%d, IPPROTO_TCP, TCP_KEEPIDLE) -> %""d""\n", s, sock->conn->pcb.tcp->keep_idle);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0)
                                                     ;
      break;
    case 0x04:
      sock->conn->pcb.tcp->keep_intvl = 1000*(u32_t)(*(const int*)optval);
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("lwip_setsockopt(%d, IPPROTO_TCP, TCP_KEEPINTVL) -> %""d""\n", s, sock->conn->pcb.tcp->keep_intvl);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0)
                                                      ;
      break;
    case 0x05:
      sock->conn->pcb.tcp->keep_cnt = (u32_t)(*(const int*)optval);
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("lwip_setsockopt(%d, IPPROTO_TCP, TCP_KEEPCNT) -> %""d""\n", s, sock->conn->pcb.tcp->keep_cnt);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0)
                                                    ;
      break;



    case 0x06:
    sock->conn->pcb.tcp->per_soc_tcp_wnd = ((u32_t)(*(const int*)optval)) * 1436;
    break;
    case 0x07:
    sock->conn->pcb.tcp->per_soc_tcp_snd_buf = ((u32_t)(*(const int*)optval)) * 1436;
    break;


    default:
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("lwip_setsockopt(%d, IPPROTO_TCP, UNIMPL: optname=0x%x, ..)\n", s, optname);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0)
                              ;
      err = 109;
      break;
    }
    break;




  case 41:
    switch (optname) {
    case 27:




      do { do { do { if ((optlen) < sizeof(int)) { return 22; }}while(0); if (((sock)->conn == 
# 2785 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
     ((void *)0)
# 2785 "C:/esp/esp-idf/components/lwip/api/sockets.c"
     ) || ((sock)->conn->pcb.tcp == 
# 2785 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
     ((void *)0)
# 2785 "C:/esp/esp-idf/components/lwip/api/sockets.c"
     )) { return 22; } }while(0); if (((((sock)->conn->type))&0xF0) != NETCONN_TCP) { return 109; } }while(0);

      if (*(const int*)optval) {
        do { if(1) { (sock->conn)->flags |= 0x20; } else { (sock->conn)->flags &= ~ 0x20; }} while(0);
      } else {
        do { if(0) { (sock->conn)->flags |= 0x20; } else { (sock->conn)->flags &= ~ 0x20; }} while(0);
      }
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("lwip_setsockopt(%d, IPPROTO_IPV6, IPV6_V6ONLY, ..) -> %d\n", s, ((((sock->conn)->flags & 0x20) != 0) ? 1 : 0));} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0)
                                                                 ;
      break;
    default:
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("lwip_setsockopt(%d, IPPROTO_IPV6, UNIMPL: optname=0x%x, ..)\n", s, optname);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0)
                              ;
      err = 109;
      break;
    }
    break;
# 2843 "C:/esp/esp-idf/components/lwip/api/sockets.c"
  case 255:
    switch (optname) {

    case 7:
      do { do { do { if ((optlen) < sizeof(int)) { return 22; }}while(0); if (((sock)->conn == 
# 2847 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
     ((void *)0)
# 2847 "C:/esp/esp-idf/components/lwip/api/sockets.c"
     ) || ((sock)->conn->pcb.tcp == 
# 2847 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
     ((void *)0)
# 2847 "C:/esp/esp-idf/components/lwip/api/sockets.c"
     )) { return 22; } }while(0); if (((((sock)->conn->type))&0xF0) != NETCONN_RAW) { return 109; } }while(0);
      if (*(const int *)optval < 0) {
        sock->conn->pcb.raw->chksum_reqd = 0;
      } else if (*(const int *)optval & 1) {

        return 22;
      } else {
        sock->conn->pcb.raw->chksum_reqd = 1;
        sock->conn->pcb.raw->chksum_offset = (u16_t)*(const int *)optval;
      }
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("lwip_setsockopt(%d, IPPROTO_RAW, IPV6_CHECKSUM, ..) -> %d\n", s, sock->conn->pcb.raw->chksum_reqd);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0)
                                                       ;
      break;

    default:
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("lwip_setsockopt(%d, IPPROTO_RAW, UNIMPL: optname=0x%x, ..)\n", s, optname);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0)
                                              ;
      err = 109;
      break;
    }
    break;
  default:
    do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("lwip_setsockopt(%d, level=0x%x, UNIMPL: optname=0x%x, ..)\n", s, level, optname);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0)
                                   ;
    err = 109;
    break;
  }

  return err;
}

int
lwip_ioctl(int s, long cmd, void *argp)
{
  struct lwip_sock *sock = get_socket(s);
  u8_t val;





  if (!sock) {
    return -1;
  }

  switch (cmd) {
# 2953 "C:/esp/esp-idf/components/lwip/api/sockets.c"
  case (long)(0x80000000UL|(((long)sizeof(unsigned long)&0x7fU)<<16)|(('f')<<8)|(126)):
    val = 0;
    if (argp && *(u32_t*)argp) {
      val = 1;
    }
    do { if(val) { (sock->conn)->flags |= 0x02; } else { (sock->conn)->flags &= ~ 0x02; }} while(0);
    do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("lwip_ioctl(%d, FIONBIO, %d)\n", s, val);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);
    do { const int sockerr = (0); sock->err = (u8_t)sockerr; do { if (sockerr) { (*__errno()) = (sockerr); } } while(0); } while (0);
    return 0;

  default:
    break;
  }
  do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("lwip_ioctl(%d, UNIMPL: 0x%lx, %p)\n", s, cmd, argp);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);
  do { const int sockerr = (88); sock->err = (u8_t)sockerr; do { if (sockerr) { (*__errno()) = (sockerr); } } while(0); } while (0);
  return -1;
}





int
lwip_fcntl(int s, int cmd, int val)
{
  struct lwip_sock *sock = get_socket(s);
  int ret = -1;

  if (!sock) {
    return -1;
  }

  switch (cmd) {
  case 3:
    ret = (((sock->conn)->flags & 0x02) != 0) ? 0x4000 : 0;
    do { const int sockerr = (0); sock->err = (u8_t)sockerr; do { if (sockerr) { (*__errno()) = (sockerr); } } while(0); } while (0);
    break;
  case 4:
    if ((val & ~0x4000) == 0) {

      do { if(val & 0x4000) { (sock->conn)->flags |= 0x02; } else { (sock->conn)->flags &= ~ 0x02; }} while(0);
      ret = 0;
      do { const int sockerr = (0); sock->err = (u8_t)sockerr; do { if (sockerr) { (*__errno()) = (sockerr); } } while(0); } while (0);
    } else {
      do { const int sockerr = (88); sock->err = (u8_t)sockerr; do { if (sockerr) { (*__errno()) = (sockerr); } } while(0); } while (0);
    }
    break;
  default:
    do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("lwip_fcntl(%d, UNIMPL: %d, %d)\n", s, cmd, val);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);
    do { const int sockerr = (88); sock->err = (u8_t)sockerr; do { if (sockerr) { (*__errno()) = (sockerr); } } while(0); } while (0);
    break;
  }
  return ret;
}
# 3015 "C:/esp/esp-idf/components/lwip/api/sockets.c"
static int
lwip_socket_register_membership(int s, const ip4_addr_t *if_addr, const ip4_addr_t *multi_addr)
{


  int sa = s + 1;
  int i;

  for (i = 0; i < 10; i++) {
    if (socket_ipv4_multicast_memberships[i].sa == 0) {
      socket_ipv4_multicast_memberships[i].sa = sa;
      ((socket_ipv4_multicast_memberships[i].if_addr).addr = (*if_addr).addr);
      ((socket_ipv4_multicast_memberships[i].multi_addr).addr = (*multi_addr).addr);
      return 1;
    }
  }
  return 0;
}






static void
lwip_socket_unregister_membership(int s, const ip4_addr_t *if_addr, const ip4_addr_t *multi_addr)
{


  int sa = s + 1;
  int i;

  for (i = 0; i < 10; i++) {
    if ((socket_ipv4_multicast_memberships[i].sa == sa) &&
        ((&socket_ipv4_multicast_memberships[i].if_addr)->addr == (if_addr)->addr) &&
        ((&socket_ipv4_multicast_memberships[i].multi_addr)->addr == (multi_addr)->addr)) {
      socket_ipv4_multicast_memberships[i].sa = 0;
      ((&socket_ipv4_multicast_memberships[i].if_addr)->addr = 0);
      ((&socket_ipv4_multicast_memberships[i].multi_addr)->addr = 0);
      return;
    }
  }
}





static void lwip_socket_drop_registered_memberships(int s)
{


  int sa = s + 1;
  int i;

  do { if(!(sockets[s].conn != 
# 3070 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
 ((void *)0)
# 3070 "C:/esp/esp-idf/components/lwip/api/sockets.c"
 )) __assert_func("C:/esp/esp-idf/components/lwip/api/sockets.c", 3070, __func__, "socket has no netconn"); } while(0);

  for (i = 0; i < 10; i++) {
    if (socket_ipv4_multicast_memberships[i].sa == sa) {
      ip_addr_t multi_addr, if_addr;
      do{ ((*(&((&(multi_addr))->u_addr.ip4))).addr = (socket_ipv4_multicast_memberships[i].multi_addr).addr); do { (multi_addr).type = (0U); }while(0); }while(0);
      do{ ((*(&((&(if_addr))->u_addr.ip4))).addr = (socket_ipv4_multicast_memberships[i].if_addr).addr); do { (if_addr).type = (0U); }while(0); }while(0);
      socket_ipv4_multicast_memberships[i].sa = 0;
      ((&socket_ipv4_multicast_memberships[i].if_addr)->addr = 0);
      ((&socket_ipv4_multicast_memberships[i].multi_addr)->addr = 0);

      netconn_join_leave_group(sockets[s].conn, &multi_addr, &if_addr, NETCONN_LEAVE);
    }
  }
}




int
lwip_sendto_r(int s, const void *data, size_t size, int flags,
       const struct sockaddr *to, socklen_t tolen)
{
  struct lwip_sock *__sock; int __ret; __sock = get_socket(s); if (!__sock) { return -1; }do{ do{ sys_mutex_lock(&__sock->lock); }while(0); __sock->ref ++; if (__sock->state != 0) { do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("LWIP_API_LOCK:soc is %d, return\n", __sock->state);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0); __sock->ref --; do{ sys_mutex_unlock(&__sock->lock); }while(0); return -1; } do{ sys_mutex_unlock(&__sock->lock); }while(0);}while(0);
  __ret = lwip_sendto(s, data, size, flags, to, tolen);
  do{ do{ sys_mutex_lock(&__sock->lock); }while(0); __sock->ref --; if (__sock->state == 1) { if (__sock->ref == 0){ do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("LWIP_API_UNLOCK:ref 0, free __sock\n");} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0); do{ if(__sock->conn && (((__sock->conn->type))&0xF0) == NETCONN_TCP){ do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("LWIP_FREE_SOCK:free tcp sock\n");} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0); free_socket(__sock, 1); } else { do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("LWIP_FREE_SOCK:free non-tcp sock\n");} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0); free_socket(__sock, 0); }}while(0); do{ sys_mutex_unlock(&__sock->lock); }while(0); return __ret; } do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("LWIP_API_UNLOCK: soc state is closing, return\n");} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0); do{ sys_mutex_unlock(&__sock->lock); }while(0); return __ret; } do{ sys_mutex_unlock(&__sock->lock); }while(0); return __ret;}while(0);
}

int
lwip_send_r(int s, const void *data, size_t size, int flags)
{
  struct lwip_sock *__sock; int __ret; __sock = get_socket(s); if (!__sock) { return -1; }do{ do{ sys_mutex_lock(&__sock->lock); }while(0); __sock->ref ++; if (__sock->state != 0) { do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("LWIP_API_LOCK:soc is %d, return\n", __sock->state);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0); __sock->ref --; do{ sys_mutex_unlock(&__sock->lock); }while(0); return -1; } do{ sys_mutex_unlock(&__sock->lock); }while(0);}while(0);
  __ret = lwip_send(s, data, size, flags);
  do{ do{ sys_mutex_lock(&__sock->lock); }while(0); __sock->ref --; if (__sock->state == 1) { if (__sock->ref == 0){ do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("LWIP_API_UNLOCK:ref 0, free __sock\n");} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0); do{ if(__sock->conn && (((__sock->conn->type))&0xF0) == NETCONN_TCP){ do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("LWIP_FREE_SOCK:free tcp sock\n");} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0); free_socket(__sock, 1); } else { do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("LWIP_FREE_SOCK:free non-tcp sock\n");} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0); free_socket(__sock, 0); }}while(0); do{ sys_mutex_unlock(&__sock->lock); }while(0); return __ret; } do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("LWIP_API_UNLOCK: soc state is closing, return\n");} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0); do{ sys_mutex_unlock(&__sock->lock); }while(0); return __ret; } do{ sys_mutex_unlock(&__sock->lock); }while(0); return __ret;}while(0);
}

int
lwip_recvfrom_r(int s, void *mem, size_t len, int flags,
              struct sockaddr *from, socklen_t *fromlen)
{
  struct lwip_sock *__sock; int __ret; __sock = get_socket(s); if (!__sock) { return -1; }do{ do{ sys_mutex_lock(&__sock->lock); }while(0); __sock->ref ++; if (__sock->state != 0) { do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("LWIP_API_LOCK:soc is %d, return\n", __sock->state);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0); __sock->ref --; do{ sys_mutex_unlock(&__sock->lock); }while(0); return -1; } do{ sys_mutex_unlock(&__sock->lock); }while(0);}while(0);
  __ret = lwip_recvfrom(s, mem, len, flags, from, fromlen);
  do{ do{ sys_mutex_lock(&__sock->lock); }while(0); __sock->ref --; if (__sock->state == 1) { if (__sock->ref == 0){ do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("LWIP_API_UNLOCK:ref 0, free __sock\n");} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0); do{ if(__sock->conn && (((__sock->conn->type))&0xF0) == NETCONN_TCP){ do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("LWIP_FREE_SOCK:free tcp sock\n");} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0); free_socket(__sock, 1); } else { do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("LWIP_FREE_SOCK:free non-tcp sock\n");} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0); free_socket(__sock, 0); }}while(0); do{ sys_mutex_unlock(&__sock->lock); }while(0); return __ret; } do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("LWIP_API_UNLOCK: soc state is closing, return\n");} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0); do{ sys_mutex_unlock(&__sock->lock); }while(0); return __ret; } do{ sys_mutex_unlock(&__sock->lock); }while(0); return __ret;}while(0);
}

int
lwip_recv_r(int s, void *mem, size_t len, int flags)
{
  return lwip_recvfrom_r(s, mem, len, flags, 
# 3118 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
                                            ((void *)0)
# 3118 "C:/esp/esp-idf/components/lwip/api/sockets.c"
                                                , 
# 3118 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
                                                  ((void *)0)
# 3118 "C:/esp/esp-idf/components/lwip/api/sockets.c"
                                                      );
}

int
lwip_read_r(int s, void *mem, size_t len)
{
  return lwip_recvfrom_r(s, mem, len, 0, 
# 3124 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
                                        ((void *)0)
# 3124 "C:/esp/esp-idf/components/lwip/api/sockets.c"
                                            , 
# 3124 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
                                              ((void *)0)
# 3124 "C:/esp/esp-idf/components/lwip/api/sockets.c"
                                                  );
}

int
lwip_sendmsg_r(int s, const struct msghdr *msg, int flags)
{
  struct lwip_sock *__sock; int __ret; __sock = get_socket(s); if (!__sock) { return -1; }do{ do{ sys_mutex_lock(&__sock->lock); }while(0); __sock->ref ++; if (__sock->state != 0) { do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("LWIP_API_LOCK:soc is %d, return\n", __sock->state);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0); __sock->ref --; do{ sys_mutex_unlock(&__sock->lock); }while(0); return -1; } do{ sys_mutex_unlock(&__sock->lock); }while(0);}while(0);
  __ret = lwip_sendmsg(s, msg, flags);
  do{ do{ sys_mutex_lock(&__sock->lock); }while(0); __sock->ref --; if (__sock->state == 1) { if (__sock->ref == 0){ do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("LWIP_API_UNLOCK:ref 0, free __sock\n");} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0); do{ if(__sock->conn && (((__sock->conn->type))&0xF0) == NETCONN_TCP){ do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("LWIP_FREE_SOCK:free tcp sock\n");} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0); free_socket(__sock, 1); } else { do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("LWIP_FREE_SOCK:free non-tcp sock\n");} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0); free_socket(__sock, 0); }}while(0); do{ sys_mutex_unlock(&__sock->lock); }while(0); return __ret; } do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("LWIP_API_UNLOCK: soc state is closing, return\n");} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0); do{ sys_mutex_unlock(&__sock->lock); }while(0); return __ret; } do{ sys_mutex_unlock(&__sock->lock); }while(0); return __ret;}while(0);
}

int
lwip_write_r(int s, const void *data, size_t size)
{
  return lwip_send_r(s, data, size, 0);
}

int
lwip_writev_r(int s, const struct iovec *iov, int iovcnt)
{
  struct msghdr msg;

  msg.msg_name = 
# 3146 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
                ((void *)0)
# 3146 "C:/esp/esp-idf/components/lwip/api/sockets.c"
                    ;
  msg.msg_namelen = 0;


  msg.msg_iov = (struct iovec *)(size_t)iov;
  msg.msg_iovlen = iovcnt;
  msg.msg_control = 
# 3152 "C:/esp/esp-idf/components/lwip/api/sockets.c" 3 4
                   ((void *)0)
# 3152 "C:/esp/esp-idf/components/lwip/api/sockets.c"
                       ;
  msg.msg_controllen = 0;
  msg.msg_flags = 0;
  return lwip_sendmsg_r(s, &msg, 0);
}

int
lwip_connect_r(int s, const struct sockaddr *name, socklen_t namelen)
{
  struct lwip_sock *__sock; int __ret; __sock = get_socket(s); if (!__sock) { return -1; }do{ do{ sys_mutex_lock(&__sock->lock); }while(0); __sock->ref ++; if (__sock->state != 0) { do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("LWIP_API_LOCK:soc is %d, return\n", __sock->state);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0); __sock->ref --; do{ sys_mutex_unlock(&__sock->lock); }while(0); return -1; } do{ sys_mutex_unlock(&__sock->lock); }while(0);}while(0);
  __ret = lwip_connect(s, name, namelen);
  do{ do{ sys_mutex_lock(&__sock->lock); }while(0); __sock->ref --; if (__sock->state == 1) { if (__sock->ref == 0){ do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("LWIP_API_UNLOCK:ref 0, free __sock\n");} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0); do{ if(__sock->conn && (((__sock->conn->type))&0xF0) == NETCONN_TCP){ do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("LWIP_FREE_SOCK:free tcp sock\n");} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0); free_socket(__sock, 1); } else { do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("LWIP_FREE_SOCK:free non-tcp sock\n");} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0); free_socket(__sock, 0); }}while(0); do{ sys_mutex_unlock(&__sock->lock); }while(0); return __ret; } do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("LWIP_API_UNLOCK: soc state is closing, return\n");} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0); do{ sys_mutex_unlock(&__sock->lock); }while(0); return __ret; } do{ sys_mutex_unlock(&__sock->lock); }while(0); return __ret;}while(0);
}

int
lwip_listen_r(int s, int backlog)
{
  struct lwip_sock *__sock; int __ret; __sock = get_socket(s); if (!__sock) { return -1; }do{ do{ sys_mutex_lock(&__sock->lock); }while(0); __sock->ref ++; if (__sock->state != 0) { do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("LWIP_API_LOCK:soc is %d, return\n", __sock->state);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0); __sock->ref --; do{ sys_mutex_unlock(&__sock->lock); }while(0); return -1; } do{ sys_mutex_unlock(&__sock->lock); }while(0);}while(0);
  __ret = lwip_listen(s, backlog);
  do{ do{ sys_mutex_lock(&__sock->lock); }while(0); __sock->ref --; if (__sock->state == 1) { if (__sock->ref == 0){ do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("LWIP_API_UNLOCK:ref 0, free __sock\n");} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0); do{ if(__sock->conn && (((__sock->conn->type))&0xF0) == NETCONN_TCP){ do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("LWIP_FREE_SOCK:free tcp sock\n");} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0); free_socket(__sock, 1); } else { do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("LWIP_FREE_SOCK:free non-tcp sock\n");} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0); free_socket(__sock, 0); }}while(0); do{ sys_mutex_unlock(&__sock->lock); }while(0); return __ret; } do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("LWIP_API_UNLOCK: soc state is closing, return\n");} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0); do{ sys_mutex_unlock(&__sock->lock); }while(0); return __ret; } do{ sys_mutex_unlock(&__sock->lock); }while(0); return __ret;}while(0);
}

int
lwip_bind_r(int s, const struct sockaddr *name, socklen_t namelen)
{
  struct lwip_sock *__sock; int __ret; __sock = get_socket(s); if (!__sock) { return -1; }do{ do{ sys_mutex_lock(&__sock->lock); }while(0); __sock->ref ++; if (__sock->state != 0) { do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("LWIP_API_LOCK:soc is %d, return\n", __sock->state);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0); __sock->ref --; do{ sys_mutex_unlock(&__sock->lock); }while(0); return -1; } do{ sys_mutex_unlock(&__sock->lock); }while(0);}while(0);
  __ret = lwip_bind(s, name, namelen);
  do{ do{ sys_mutex_lock(&__sock->lock); }while(0); __sock->ref --; if (__sock->state == 1) { if (__sock->ref == 0){ do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("LWIP_API_UNLOCK:ref 0, free __sock\n");} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0); do{ if(__sock->conn && (((__sock->conn->type))&0xF0) == NETCONN_TCP){ do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("LWIP_FREE_SOCK:free tcp sock\n");} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0); free_socket(__sock, 1); } else { do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("LWIP_FREE_SOCK:free non-tcp sock\n");} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0); free_socket(__sock, 0); }}while(0); do{ sys_mutex_unlock(&__sock->lock); }while(0); return __ret; } do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("LWIP_API_UNLOCK: soc state is closing, return\n");} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0); do{ sys_mutex_unlock(&__sock->lock); }while(0); return __ret; } do{ sys_mutex_unlock(&__sock->lock); }while(0); return __ret;}while(0);
}

int
lwip_accept_r(int s, struct sockaddr *addr, socklen_t *addrlen)
{
  struct lwip_sock *__sock; int __ret; __sock = get_socket(s); if (!__sock) { return -1; }do{ do{ sys_mutex_lock(&__sock->lock); }while(0); __sock->ref ++; if (__sock->state != 0) { do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("LWIP_API_LOCK:soc is %d, return\n", __sock->state);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0); __sock->ref --; do{ sys_mutex_unlock(&__sock->lock); }while(0); return -1; } do{ sys_mutex_unlock(&__sock->lock); }while(0);}while(0);
  __ret = lwip_accept(s, addr, addrlen);
  do{ do{ sys_mutex_lock(&__sock->lock); }while(0); __sock->ref --; if (__sock->state == 1) { if (__sock->ref == 0){ do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("LWIP_API_UNLOCK:ref 0, free __sock\n");} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0); do{ if(__sock->conn && (((__sock->conn->type))&0xF0) == NETCONN_TCP){ do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("LWIP_FREE_SOCK:free tcp sock\n");} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0); free_socket(__sock, 1); } else { do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("LWIP_FREE_SOCK:free non-tcp sock\n");} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0); free_socket(__sock, 0); }}while(0); do{ sys_mutex_unlock(&__sock->lock); }while(0); return __ret; } do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("LWIP_API_UNLOCK: soc state is closing, return\n");} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0); do{ sys_mutex_unlock(&__sock->lock); }while(0); return __ret; } do{ sys_mutex_unlock(&__sock->lock); }while(0); return __ret;}while(0);
}

int
lwip_ioctl_r(int s, long cmd, void *argp)
{
  struct lwip_sock *__sock; int __ret; __sock = get_socket(s); if (!__sock) { return -1; }do{ do{ sys_mutex_lock(&__sock->lock); }while(0); __sock->ref ++; if (__sock->state != 0) { do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("LWIP_API_LOCK:soc is %d, return\n", __sock->state);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0); __sock->ref --; do{ sys_mutex_unlock(&__sock->lock); }while(0); return -1; } do{ sys_mutex_unlock(&__sock->lock); }while(0);}while(0);
  __ret = lwip_ioctl(s, cmd, argp);
  do{ do{ sys_mutex_lock(&__sock->lock); }while(0); __sock->ref --; if (__sock->state == 1) { if (__sock->ref == 0){ do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("LWIP_API_UNLOCK:ref 0, free __sock\n");} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0); do{ if(__sock->conn && (((__sock->conn->type))&0xF0) == NETCONN_TCP){ do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("LWIP_FREE_SOCK:free tcp sock\n");} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0); free_socket(__sock, 1); } else { do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("LWIP_FREE_SOCK:free non-tcp sock\n");} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0); free_socket(__sock, 0); }}while(0); do{ sys_mutex_unlock(&__sock->lock); }while(0); return __ret; } do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("LWIP_API_UNLOCK: soc state is closing, return\n");} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0); do{ sys_mutex_unlock(&__sock->lock); }while(0); return __ret; } do{ sys_mutex_unlock(&__sock->lock); }while(0); return __ret;}while(0);
}

int
lwip_fcntl_r(int s, int cmd, int val)
{
  struct lwip_sock *__sock; int __ret; __sock = get_socket(s); if (!__sock) { return -1; }do{ do{ sys_mutex_lock(&__sock->lock); }while(0); __sock->ref ++; if (__sock->state != 0) { do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("LWIP_API_LOCK:soc is %d, return\n", __sock->state);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0); __sock->ref --; do{ sys_mutex_unlock(&__sock->lock); }while(0); return -1; } do{ sys_mutex_unlock(&__sock->lock); }while(0);}while(0);
  __ret = lwip_fcntl(s, cmd, val);
  do{ do{ sys_mutex_lock(&__sock->lock); }while(0); __sock->ref --; if (__sock->state == 1) { if (__sock->ref == 0){ do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("LWIP_API_UNLOCK:ref 0, free __sock\n");} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0); do{ if(__sock->conn && (((__sock->conn->type))&0xF0) == NETCONN_TCP){ do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("LWIP_FREE_SOCK:free tcp sock\n");} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0); free_socket(__sock, 1); } else { do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("LWIP_FREE_SOCK:free non-tcp sock\n");} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0); free_socket(__sock, 0); }}while(0); do{ sys_mutex_unlock(&__sock->lock); }while(0); return __ret; } do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("LWIP_API_UNLOCK: soc state is closing, return\n");} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0); do{ sys_mutex_unlock(&__sock->lock); }while(0); return __ret; } do{ sys_mutex_unlock(&__sock->lock); }while(0); return __ret;}while(0);
}

int
lwip_setsockopt_r(int s, int level, int optname, const void *optval, socklen_t optlen)
{
  struct lwip_sock *__sock; int __ret; __sock = get_socket(s); if (!__sock) { return -1; }do{ do{ sys_mutex_lock(&__sock->lock); }while(0); __sock->ref ++; if (__sock->state != 0) { do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("LWIP_API_LOCK:soc is %d, return\n", __sock->state);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0); __sock->ref --; do{ sys_mutex_unlock(&__sock->lock); }while(0); return -1; } do{ sys_mutex_unlock(&__sock->lock); }while(0);}while(0);
  __ret = lwip_setsockopt(s, level, optname, optval, optlen);
  do{ do{ sys_mutex_lock(&__sock->lock); }while(0); __sock->ref --; if (__sock->state == 1) { if (__sock->ref == 0){ do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("LWIP_API_UNLOCK:ref 0, free __sock\n");} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0); do{ if(__sock->conn && (((__sock->conn->type))&0xF0) == NETCONN_TCP){ do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("LWIP_FREE_SOCK:free tcp sock\n");} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0); free_socket(__sock, 1); } else { do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("LWIP_FREE_SOCK:free non-tcp sock\n");} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0); free_socket(__sock, 0); }}while(0); do{ sys_mutex_unlock(&__sock->lock); }while(0); return __ret; } do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("LWIP_API_UNLOCK: soc state is closing, return\n");} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0); do{ sys_mutex_unlock(&__sock->lock); }while(0); return __ret; } do{ sys_mutex_unlock(&__sock->lock); }while(0); return __ret;}while(0);
}

int
lwip_getsockopt_r(int s, int level, int optname, void *optval, socklen_t *optlen)
{
  struct lwip_sock *__sock; int __ret; __sock = get_socket(s); if (!__sock) { return -1; }do{ do{ sys_mutex_lock(&__sock->lock); }while(0); __sock->ref ++; if (__sock->state != 0) { do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("LWIP_API_LOCK:soc is %d, return\n", __sock->state);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0); __sock->ref --; do{ sys_mutex_unlock(&__sock->lock); }while(0); return -1; } do{ sys_mutex_unlock(&__sock->lock); }while(0);}while(0);
  __ret = lwip_getsockopt(s, level, optname, optval, optlen);
  do{ do{ sys_mutex_lock(&__sock->lock); }while(0); __sock->ref --; if (__sock->state == 1) { if (__sock->ref == 0){ do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("LWIP_API_UNLOCK:ref 0, free __sock\n");} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0); do{ if(__sock->conn && (((__sock->conn->type))&0xF0) == NETCONN_TCP){ do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("LWIP_FREE_SOCK:free tcp sock\n");} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0); free_socket(__sock, 1); } else { do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("LWIP_FREE_SOCK:free non-tcp sock\n");} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0); free_socket(__sock, 0); }}while(0); do{ sys_mutex_unlock(&__sock->lock); }while(0); return __ret; } do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("LWIP_API_UNLOCK: soc state is closing, return\n");} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0); do{ sys_mutex_unlock(&__sock->lock); }while(0); return __ret; } do{ sys_mutex_unlock(&__sock->lock); }while(0); return __ret;}while(0);
}

int
lwip_getpeername_r(int s, struct sockaddr *name, socklen_t *namelen)
{
  struct lwip_sock *__sock; int __ret; __sock = get_socket(s); if (!__sock) { return -1; }do{ do{ sys_mutex_lock(&__sock->lock); }while(0); __sock->ref ++; if (__sock->state != 0) { do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("LWIP_API_LOCK:soc is %d, return\n", __sock->state);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0); __sock->ref --; do{ sys_mutex_unlock(&__sock->lock); }while(0); return -1; } do{ sys_mutex_unlock(&__sock->lock); }while(0);}while(0);
  __ret = lwip_getpeername(s, name, namelen);
  do{ do{ sys_mutex_lock(&__sock->lock); }while(0); __sock->ref --; if (__sock->state == 1) { if (__sock->ref == 0){ do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("LWIP_API_UNLOCK:ref 0, free __sock\n");} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0); do{ if(__sock->conn && (((__sock->conn->type))&0xF0) == NETCONN_TCP){ do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("LWIP_FREE_SOCK:free tcp sock\n");} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0); free_socket(__sock, 1); } else { do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("LWIP_FREE_SOCK:free non-tcp sock\n");} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0); free_socket(__sock, 0); }}while(0); do{ sys_mutex_unlock(&__sock->lock); }while(0); return __ret; } do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("LWIP_API_UNLOCK: soc state is closing, return\n");} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0); do{ sys_mutex_unlock(&__sock->lock); }while(0); return __ret; } do{ sys_mutex_unlock(&__sock->lock); }while(0); return __ret;}while(0);
}

int
lwip_getsockname_r(int s, struct sockaddr *name, socklen_t *namelen)
{
  struct lwip_sock *__sock; int __ret; __sock = get_socket(s); if (!__sock) { return -1; }do{ do{ sys_mutex_lock(&__sock->lock); }while(0); __sock->ref ++; if (__sock->state != 0) { do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("LWIP_API_LOCK:soc is %d, return\n", __sock->state);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0); __sock->ref --; do{ sys_mutex_unlock(&__sock->lock); }while(0); return -1; } do{ sys_mutex_unlock(&__sock->lock); }while(0);}while(0);
  __ret = lwip_getsockname(s, name, namelen);
  do{ do{ sys_mutex_lock(&__sock->lock); }while(0); __sock->ref --; if (__sock->state == 1) { if (__sock->ref == 0){ do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("LWIP_API_UNLOCK:ref 0, free __sock\n");} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0); do{ if(__sock->conn && (((__sock->conn->type))&0xF0) == NETCONN_TCP){ do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("LWIP_FREE_SOCK:free tcp sock\n");} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0); free_socket(__sock, 1); } else { do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("LWIP_FREE_SOCK:free non-tcp sock\n");} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0); free_socket(__sock, 0); }}while(0); do{ sys_mutex_unlock(&__sock->lock); }while(0); return __ret; } do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("LWIP_API_UNLOCK: soc state is closing, return\n");} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0); do{ sys_mutex_unlock(&__sock->lock); }while(0); return __ret; } do{ sys_mutex_unlock(&__sock->lock); }while(0); return __ret;}while(0);
}

int
lwip_close_r(int s)
{
  struct lwip_sock *__sock; int __ret; __sock = get_socket(s); if (!__sock) { return -1; }do{ do{ sys_mutex_lock(&__sock->lock); }while(0); __sock->ref ++; if (__sock->state != 0) { do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("LWIP_API_LOCK:soc is %d, return\n", __sock->state);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0); __sock->ref --; do{ sys_mutex_unlock(&__sock->lock); }while(0); return -1; } do{ sys_mutex_unlock(&__sock->lock); }while(0);}while(0);
  do{ do{ sys_mutex_lock(&__sock->lock); }while(0); do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("mark sock closing\n");} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0); __sock->state = 1; do{ sys_mutex_unlock(&__sock->lock); }while(0);}while(0);
  __ret = lwip_close(s);
  do{ do{ sys_mutex_lock(&__sock->lock); }while(0); __sock->ref --; if (__sock->state == 1) { if (__sock->ref == 0){ do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("LWIP_API_UNLOCK:ref 0, free __sock\n");} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0); do{ if(__sock->conn && (((__sock->conn->type))&0xF0) == NETCONN_TCP){ do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("LWIP_FREE_SOCK:free tcp sock\n");} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0); free_socket(__sock, 1); } else { do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("LWIP_FREE_SOCK:free non-tcp sock\n");} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0); free_socket(__sock, 0); }}while(0); do{ sys_mutex_unlock(&__sock->lock); }while(0); return __ret; } do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("LWIP_API_UNLOCK: soc state is closing, return\n");} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0); do{ sys_mutex_unlock(&__sock->lock); }while(0); return __ret; } do{ sys_mutex_unlock(&__sock->lock); }while(0); return __ret;}while(0);
}

int
lwip_shutdown_r(int s, int how)
{
  struct lwip_sock *__sock; int __ret; __sock = get_socket(s); if (!__sock) { return -1; }do{ do{ sys_mutex_lock(&__sock->lock); }while(0); __sock->ref ++; if (__sock->state != 0) { do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("LWIP_API_LOCK:soc is %d, return\n", __sock->state);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0); __sock->ref --; do{ sys_mutex_unlock(&__sock->lock); }while(0); return -1; } do{ sys_mutex_unlock(&__sock->lock); }while(0);}while(0);
  __ret = lwip_shutdown(s, how);
  do{ do{ sys_mutex_lock(&__sock->lock); }while(0); __sock->ref --; if (__sock->state == 1) { if (__sock->ref == 0){ do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("LWIP_API_UNLOCK:ref 0, free __sock\n");} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0); do{ if(__sock->conn && (((__sock->conn->type))&0xF0) == NETCONN_TCP){ do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("LWIP_FREE_SOCK:free tcp sock\n");} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0); free_socket(__sock, 1); } else { do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("LWIP_FREE_SOCK:free non-tcp sock\n");} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0); free_socket(__sock, 0); }}while(0); do{ sys_mutex_unlock(&__sock->lock); }while(0); return __ret; } do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("LWIP_API_UNLOCK: soc state is closing, return\n");} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0); do{ sys_mutex_unlock(&__sock->lock); }while(0); return __ret; } do{ sys_mutex_unlock(&__sock->lock); }while(0); return __ret;}while(0);
}
