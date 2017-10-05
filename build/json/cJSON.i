# 1 "C:/esp/esp-idf/components/json/library/cJSON.c"
# 1 "C:\\esp\\esp32-ArkPOS2\\ArkPOS2-esp\\build\\json//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "C:/esp/esp-idf/components/json/library/cJSON.c"
# 26 "C:/esp/esp-idf/components/json/library/cJSON.c"
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


# 27 "C:/esp/esp-idf/components/json/library/cJSON.c" 2
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

# 28 "C:/esp/esp-idf/components/json/library/cJSON.c" 2
# 1 "C:/esp/esp-idf/components/newlib/include/math.h" 1





# 1 "C:/esp/esp-idf/components/newlib/include/machine/ieeefp.h" 1
# 7 "C:/esp/esp-idf/components/newlib/include/math.h" 2







union __dmath
{
  double d;
  __ULong i[2];
};

union __fmath
{
  float f;
  __ULong i[1];
};


union __ldmath
{
  long double ld;
  __ULong i[4];
};
# 108 "C:/esp/esp-idf/components/newlib/include/math.h"
extern double atan (double);
extern double cos (double);
extern double sin (double);
extern double tan (double);
extern double tanh (double);
extern double frexp (double, int *);
extern double modf (double, double *);
extern double ceil (double);
extern double fabs (double);
extern double floor (double);






extern double acos (double);
extern double asin (double);
extern double atan2 (double, double);
extern double cosh (double);
extern double sinh (double);
extern double exp (double);
extern double ldexp (double, int);
extern double log (double);
extern double log10 (double);
extern double pow (double, double);
extern double sqrt (double);
extern double fmod (double, double);
# 155 "C:/esp/esp-idf/components/newlib/include/math.h"
    typedef float float_t;
    typedef double double_t;
# 199 "C:/esp/esp-idf/components/newlib/include/math.h"
extern int __isinff (float x);
extern int __isinfd (double x);
extern int __isnanf (float x);
extern int __isnand (double x);
extern int __fpclassifyf (float x);
extern int __fpclassifyd (double x);
extern int __signbitf (float x);
extern int __signbitd (double x);
# 259 "C:/esp/esp-idf/components/newlib/include/math.h"
extern double infinity (void);
extern double nan (const char *);
extern int finite (double);
extern double copysign (double, double);
extern double logb (double);
extern int ilogb (double);

extern double asinh (double);
extern double cbrt (double);
extern double nextafter (double, double);
extern double rint (double);
extern double scalbn (double, int);

extern double exp2 (double);
extern double scalbln (double, long int);
extern double tgamma (double);
extern double nearbyint (double);
extern long int lrint (double);
extern long long int llrint (double);
extern double round (double);
extern long int lround (double);
extern long long int llround (double);
extern double trunc (double);
extern double remquo (double, double, int *);
extern double fdim (double, double);
extern double fmax (double, double);
extern double fmin (double, double);
extern double fma (double, double, double);


extern double log1p (double);
extern double expm1 (double);



extern double acosh (double);
extern double atanh (double);
extern double remainder (double, double);
extern double gamma (double);
extern double lgamma (double);
extern double erf (double);
extern double erfc (double);
extern double log2 (double);





extern double hypot (double, double);






extern float atanf (float);
extern float cosf (float);
extern float sinf (float);
extern float tanf (float);
extern float tanhf (float);
extern float frexpf (float, int *);
extern float modff (float, float *);
extern float ceilf (float);
extern float fabsf (float);
extern float floorf (float);


extern float acosf (float);
extern float asinf (float);
extern float atan2f (float, float);
extern float coshf (float);
extern float sinhf (float);
extern float expf (float);
extern float ldexpf (float, int);
extern float logf (float);
extern float log10f (float);
extern float powf (float, float);
extern float sqrtf (float);
extern float fmodf (float, float);




extern float exp2f (float);
extern float scalblnf (float, long int);
extern float tgammaf (float);
extern float nearbyintf (float);
extern long int lrintf (float);
extern long long int llrintf (float);
extern float roundf (float);
extern long int lroundf (float);
extern long long int llroundf (float);
extern float truncf (float);
extern float remquof (float, float, int *);
extern float fdimf (float, float);
extern float fmaxf (float, float);
extern float fminf (float, float);
extern float fmaf (float, float, float);

extern float infinityf (void);
extern float nanf (const char *);
extern int finitef (float);
extern float copysignf (float, float);
extern float logbf (float);
extern int ilogbf (float);

extern float asinhf (float);
extern float cbrtf (float);
extern float nextafterf (float, float);
extern float rintf (float);
extern float scalbnf (float, int);
extern float log1pf (float);
extern float expm1f (float);


extern float acoshf (float);
extern float atanhf (float);
extern float remainderf (float, float);
extern float gammaf (float);
extern float lgammaf (float);
extern float erff (float);
extern float erfcf (float);
extern float log2f (float);
extern float hypotf (float, float);






extern long double atanl (long double);
extern long double cosl (long double);
extern long double sinl (long double);
extern long double tanl (long double);
extern long double tanhl (long double);
extern long double frexpl (long double, int *);
extern long double modfl (long double, long double *);
extern long double ceill (long double);
extern long double fabsl (long double);
extern long double floorl (long double);
extern long double log1pl (long double);
extern long double expm1l (long double);




extern long double acosl (long double);
extern long double asinl (long double);
extern long double atan2l (long double, long double);
extern long double coshl (long double);
extern long double sinhl (long double);
extern long double expl (long double);
extern long double ldexpl (long double, int);
extern long double logl (long double);
extern long double log10l (long double);
extern long double powl (long double, long double);
extern long double sqrtl (long double);
extern long double fmodl (long double, long double);
extern long double hypotl (long double, long double);


extern long double copysignl (long double, long double);
extern long double nanl (const char *);
extern int ilogbl (long double);
extern long double asinhl (long double);
extern long double cbrtl (long double);
extern long double nextafterl (long double, long double);
extern float nexttowardf (float, long double);
extern double nexttoward (double, long double);
extern long double nexttowardl (long double, long double);
extern long double logbl (long double);
extern long double log2l (long double);
extern long double rintl (long double);
extern long double scalbnl (long double, int);
extern long double exp2l (long double);
extern long double scalblnl (long double, long);
extern long double tgammal (long double);
extern long double nearbyintl (long double);
extern long int lrintl (long double);
extern long long int llrintl (long double);
extern long double roundl (long double);
extern long lroundl (long double);
extern long long int llroundl (long double);
extern long double truncl (long double);
extern long double remquol (long double, long double, int *);
extern long double fdiml (long double, long double);
extern long double fmaxl (long double, long double);
extern long double fminl (long double, long double);
extern long double fmal (long double, long double, long double);

extern long double acoshl (long double);
extern long double atanhl (long double);
extern long double remainderl (long double, long double);
extern long double lgammal (long double);
extern long double erfl (long double);
extern long double erfcl (long double);
# 469 "C:/esp/esp-idf/components/newlib/include/math.h"
extern double drem (double, double);
extern void sincos (double, double *, double *);
extern double gamma_r (double, int *);
extern double lgamma_r (double, int *);

extern double y0 (double);
extern double y1 (double);
extern double yn (int, double);
extern double j0 (double);
extern double j1 (double);
extern double jn (int, double);

extern float dremf (float, float);
extern void sincosf (float, float *, float *);
extern float gammaf_r (float, int *);
extern float lgammaf_r (float, int *);

extern float y0f (float);
extern float y1f (float);
extern float ynf (int, float);
extern float j0f (float);
extern float j1f (float);
extern float jnf (int, float);



extern double exp10 (double);


extern double pow10 (double);


extern float exp10f (float);


extern float pow10f (float);
# 514 "C:/esp/esp-idf/components/newlib/include/math.h"
extern int *__signgam (void);
# 525 "C:/esp/esp-idf/components/newlib/include/math.h"
struct exception

{
  int type;
  char *name;
  double arg1;
  double arg2;
  double retval;
  int err;
};




extern int matherr (struct exception *e);
# 589 "C:/esp/esp-idf/components/newlib/include/math.h"
enum __fdlibm_version
{
  __fdlibm_ieee = -1,
  __fdlibm_svid,
  __fdlibm_xopen,
  __fdlibm_posix
};




extern enum __fdlibm_version __fdlib_version;
# 609 "C:/esp/esp-idf/components/newlib/include/math.h"

# 29 "C:/esp/esp-idf/components/json/library/cJSON.c" 2
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




# 30 "C:/esp/esp-idf/components/json/library/cJSON.c" 2
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\float.h" 1 3 4
# 31 "C:/esp/esp-idf/components/json/library/cJSON.c" 2
# 1 "C:/esp/esp-idf/components/newlib/include/limits.h" 1
# 131 "C:/esp/esp-idf/components/newlib/include/limits.h"
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include-fixed\\limits.h" 1 3 4
# 132 "C:/esp/esp-idf/components/newlib/include/limits.h" 2
# 32 "C:/esp/esp-idf/components/json/library/cJSON.c" 2
# 1 "C:/esp/esp-idf/components/newlib/include/ctype.h" 1







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


# 33 "C:/esp/esp-idf/components/json/library/cJSON.c" 2
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
# 34 "C:/esp/esp-idf/components/json/library/cJSON.c" 2

static const char *ep;

const char *cJSON_GetErrorPtr(void) {return ep;}

static int cJSON_strcasecmp(const char *s1,const char *s2)
{
 if (!s1) return (s1==s2)?0:1;if (!s2) return 1;
 for(; __extension__ ({ __typeof__ (*(const unsigned char *)s1) __x = (*(const unsigned char *)s1); ((((__ctype_ptr__+sizeof(""[__x]))[(int)(__x)])&(01|02))==01) ? (int) __x - 'A' + 'a' : (int) __x;}) == __extension__ ({ __typeof__ (*(const unsigned char *)s2) __x = (*(const unsigned char *)s2); ((((__ctype_ptr__+sizeof(""[__x]))[(int)(__x)])&(01|02))==01) ? (int) __x - 'A' + 'a' : (int) __x;}); ++s1, ++s2) if(*s1 == 0) return 0;
 return __extension__ ({ __typeof__ (*(const unsigned char *)s1) __x = (*(const unsigned char *)s1); ((((__ctype_ptr__+sizeof(""[__x]))[(int)(__x)])&(01|02))==01) ? (int) __x - 'A' + 'a' : (int) __x;}) - __extension__ ({ __typeof__ (*(const unsigned char *)s2) __x = (*(const unsigned char *)s2); ((((__ctype_ptr__+sizeof(""[__x]))[(int)(__x)])&(01|02))==01) ? (int) __x - 'A' + 'a' : (int) __x;});
}

static void *(*cJSON_malloc)(size_t sz) = malloc;
static void (*cJSON_free)(void *ptr) = free;

static char* cJSON_strdup(const char* str)
{
      size_t len;
      char* copy;

      len = strlen(str) + 1;
      if (!(copy = (char*)cJSON_malloc(len))) return 0;
      memcpy(copy,str,len);
      return copy;
}

void cJSON_InitHooks(cJSON_Hooks* hooks)
{
    if (!hooks) {
        cJSON_malloc = malloc;
        cJSON_free = free;
        return;
    }

 cJSON_malloc = (hooks->malloc_fn)?hooks->malloc_fn:malloc;
 cJSON_free = (hooks->free_fn)?hooks->free_fn:free;
}


static cJSON *cJSON_New_Item(void)
{
 cJSON* node = (cJSON*)cJSON_malloc(sizeof(cJSON));
 if (node) memset(node,0,sizeof(cJSON));
 return node;
}


void cJSON_Delete(cJSON *c)
{
 cJSON *next;
 while (c)
 {
  next=c->next;
  if (!(c->type&256) && c->child) cJSON_Delete(c->child);
  if (!(c->type&256) && c->valuestring) cJSON_free(c->valuestring);
  if (!(c->type&512) && c->string) cJSON_free(c->string);
  cJSON_free(c);
  c=next;
 }
}


static const char *parse_number(cJSON *item,const char *num)
{
 double n=0,sign=1,scale=0;int subscale=0,signsubscale=1;

 if (*num=='-') sign=-1,num++;
 if (*num=='0') num++;
 if (*num>='1' && *num<='9') do n=(n*10.0)+(*num++ -'0'); while (*num>='0' && *num<='9');
 if (*num=='.' && num[1]>='0' && num[1]<='9') {num++; do n=(n*10.0)+(*num++ -'0'),scale--; while (*num>='0' && *num<='9');}
 if (*num=='e' || *num=='E')
 { num++;if (*num=='+') num++; else if (*num=='-') signsubscale=-1,num++;
  while (*num>='0' && *num<='9') subscale=(subscale*10)+(*num++ - '0');
 }

 n=sign*n*pow(10.0,(scale+subscale*signsubscale));

 item->valuedouble=n;
 item->valueint=(int)n;
 item->type=3;
 return num;
}

static int pow2gt (int x) { --x; x|=x>>1; x|=x>>2; x|=x>>4; x|=x>>8; x|=x>>16; return x+1; }

typedef struct {char *buffer; int length; int offset; } printbuffer;

static char* ensure(printbuffer *p,int needed)
{
 char *newbuffer;int newsize;
 if (!p || !p->buffer) return 0;
 needed+=p->offset;
 if (needed<=p->length) return p->buffer+p->offset;

 newsize=pow2gt(needed);
 newbuffer=(char*)cJSON_malloc(newsize);
 if (!newbuffer) {cJSON_free(p->buffer);p->length=0,p->buffer=0;return 0;}
 if (newbuffer) memcpy(newbuffer,p->buffer,p->length);
 cJSON_free(p->buffer);
 p->length=newsize;
 p->buffer=newbuffer;
 return newbuffer+p->offset;
}

static int update(printbuffer *p)
{
 char *str;
 if (!p || !p->buffer) return 0;
 str=p->buffer+p->offset;
 return p->offset+strlen(str);
}


static char *print_number(cJSON *item,printbuffer *p)
{
 char *str=0;
 double d=item->valuedouble;
 if (d==0)
 {
  if (p) str=ensure(p,2);
  else str=(char*)cJSON_malloc(2);
  if (str) strcpy(str,"0");
 }
 else if (fabs(((double)item->valueint)-d)<=((double)2.2204460492503131e-16L) && d<=0x7fffffff && d>=
# 157 "C:/esp/esp-idf/components/json/library/cJSON.c" 3 4
                                                                           (-0x7fffffff - 1)
# 157 "C:/esp/esp-idf/components/json/library/cJSON.c"
                                                                                  )
 {
  if (p) str=ensure(p,21);
  else str=(char*)cJSON_malloc(21);
  if (str) sprintf(str,"%d",item->valueint);
 }
 else
 {
  if (p) str=ensure(p,64);
  else str=(char*)cJSON_malloc(64);
  if (str)
  {
   if (fabs(floor(d)-d)<=((double)2.2204460492503131e-16L) && fabs(d)<1.0e60)sprintf(str,"%.0f",d);
   else if (fabs(d)<1.0e-6 || fabs(d)>1.0e9) sprintf(str,"%e",d);
   else sprintf(str,"%f",d);
  }
 }
 return str;
}

static unsigned parse_hex4(const char *str)
{
 unsigned h=0;
 if (*str>='0' && *str<='9') h+=(*str)-'0'; else if (*str>='A' && *str<='F') h+=10+(*str)-'A'; else if (*str>='a' && *str<='f') h+=10+(*str)-'a'; else return 0;
 h=h<<4;str++;
 if (*str>='0' && *str<='9') h+=(*str)-'0'; else if (*str>='A' && *str<='F') h+=10+(*str)-'A'; else if (*str>='a' && *str<='f') h+=10+(*str)-'a'; else return 0;
 h=h<<4;str++;
 if (*str>='0' && *str<='9') h+=(*str)-'0'; else if (*str>='A' && *str<='F') h+=10+(*str)-'A'; else if (*str>='a' && *str<='f') h+=10+(*str)-'a'; else return 0;
 h=h<<4;str++;
 if (*str>='0' && *str<='9') h+=(*str)-'0'; else if (*str>='A' && *str<='F') h+=10+(*str)-'A'; else if (*str>='a' && *str<='f') h+=10+(*str)-'a'; else return 0;
 return h;
}


static const unsigned char firstByteMark[7] = { 0x00, 0x00, 0xC0, 0xE0, 0xF0, 0xF8, 0xFC };
static const char *parse_string(cJSON *item,const char *str)
{
 const char *ptr=str+1;char *ptr2;char *out;int len=0;unsigned uc,uc2;
 if (*str!='\"') {ep=str;return 0;}

 while (*ptr!='\"' && *ptr && ++len) if (*ptr++ == '\\') ptr++;

 out=(char*)cJSON_malloc(len+1);
 if (!out) return 0;

 ptr=str+1;ptr2=out;
 while (*ptr!='\"' && *ptr)
 {
  if (*ptr!='\\') *ptr2++=*ptr++;
  else
  {
   ptr++;
   switch (*ptr)
   {
    case 'b': *ptr2++='\b'; break;
    case 'f': *ptr2++='\f'; break;
    case 'n': *ptr2++='\n'; break;
    case 'r': *ptr2++='\r'; break;
    case 't': *ptr2++='\t'; break;
    case 'u':
     uc=parse_hex4(ptr+1);ptr+=4;

     if ((uc>=0xDC00 && uc<=0xDFFF) || uc==0) break;

     if (uc>=0xD800 && uc<=0xDBFF)
     {
      if (ptr[1]!='\\' || ptr[2]!='u') break;
      uc2=parse_hex4(ptr+3);ptr+=6;
      if (uc2<0xDC00 || uc2>0xDFFF) break;
      uc=0x10000 + (((uc&0x3FF)<<10) | (uc2&0x3FF));
     }

     len=4;if (uc<0x80) len=1;else if (uc<0x800) len=2;else if (uc<0x10000) len=3; ptr2+=len;

     switch (len) {
      case 4: *--ptr2 =((uc | 0x80) & 0xBF); uc >>= 6;
      case 3: *--ptr2 =((uc | 0x80) & 0xBF); uc >>= 6;
      case 2: *--ptr2 =((uc | 0x80) & 0xBF); uc >>= 6;
      case 1: *--ptr2 =(uc | firstByteMark[len]);
     }
     ptr2+=len;
     break;
    default: *ptr2++=*ptr; break;
   }
   ptr++;
  }
 }
 *ptr2=0;
 if (*ptr=='\"') ptr++;
 item->valuestring=out;
 item->type=4;
 return ptr;
}


static char *print_string_ptr(const char *str,printbuffer *p)
{
 const char *ptr;char *ptr2,*out;int len=0,flag=0;unsigned char token;

 for (ptr=str;*ptr;ptr++) flag|=((*ptr>0 && *ptr<32)||(*ptr=='\"')||(*ptr=='\\'))?1:0;
 if (!flag)
 {
  len=ptr-str;
  if (p) out=ensure(p,len+3);
  else out=(char*)cJSON_malloc(len+3);
  if (!out) return 0;
  ptr2=out;*ptr2++='\"';
  strcpy(ptr2,str);
  ptr2[len]='\"';
  ptr2[len+1]=0;
  return out;
 }

 if (!str)
 {
  if (p) out=ensure(p,3);
  else out=(char*)cJSON_malloc(3);
  if (!out) return 0;
  strcpy(out,"\"\"");
  return out;
 }
 ptr=str;while ((token=*ptr) && ++len) {if (strchr("\"\\\b\f\n\r\t",token)) len++; else if (token<32) len+=5;ptr++;}

 if (p) out=ensure(p,len+3);
 else out=(char*)cJSON_malloc(len+3);
 if (!out) return 0;

 ptr2=out;ptr=str;
 *ptr2++='\"';
 while (*ptr)
 {
  if ((unsigned char)*ptr>31 && *ptr!='\"' && *ptr!='\\') *ptr2++=*ptr++;
  else
  {
   *ptr2++='\\';
   switch (token=*ptr++)
   {
    case '\\': *ptr2++='\\'; break;
    case '\"': *ptr2++='\"'; break;
    case '\b': *ptr2++='b'; break;
    case '\f': *ptr2++='f'; break;
    case '\n': *ptr2++='n'; break;
    case '\r': *ptr2++='r'; break;
    case '\t': *ptr2++='t'; break;
    default: sprintf(ptr2,"u%04x",token);ptr2+=5; break;
   }
  }
 }
 *ptr2++='\"';*ptr2++=0;
 return out;
}

static char *print_string(cJSON *item,printbuffer *p) {return print_string_ptr(item->valuestring,p);}


static const char *parse_value(cJSON *item,const char *value);
static char *print_value(cJSON *item,int depth,int fmt,printbuffer *p);
static const char *parse_array(cJSON *item,const char *value);
static char *print_array(cJSON *item,int depth,int fmt,printbuffer *p);
static const char *parse_object(cJSON *item,const char *value);
static char *print_object(cJSON *item,int depth,int fmt,printbuffer *p);


static const char *skip(const char *in) {while (in && *in && (unsigned char)*in<=32) in++; return in;}


cJSON *cJSON_ParseWithOpts(const char *value,const char **return_parse_end,int require_null_terminated)
{
 const char *end=0;
 cJSON *c=cJSON_New_Item();
 ep=0;
 if (!c) return 0;

 end=parse_value(c,skip(value));
 if (!end) {cJSON_Delete(c);return 0;}


 if (require_null_terminated) {end=skip(end);if (*end) {cJSON_Delete(c);ep=end;return 0;}}
 if (return_parse_end) *return_parse_end=end;
 return c;
}

cJSON *cJSON_Parse(const char *value) {return cJSON_ParseWithOpts(value,0,0);}


char *cJSON_Print(cJSON *item) {return print_value(item,0,1,0);}
char *cJSON_PrintUnformatted(cJSON *item) {return print_value(item,0,0,0);}

char *cJSON_PrintBuffered(cJSON *item,int prebuffer,int fmt)
{
 printbuffer p;
 p.buffer=(char*)cJSON_malloc(prebuffer);
 p.length=prebuffer;
 p.offset=0;
 return print_value(item,0,fmt,&p);
 return p.buffer;
}



static const char *parse_value(cJSON *item,const char *value)
{
 if (!value) return 0;
 if (!strncmp(value,"null",4)) { item->type=2; return value+4; }
 if (!strncmp(value,"false",5)) { item->type=0; return value+5; }
 if (!strncmp(value,"true",4)) { item->type=1; item->valueint=1; return value+4; }
 if (*value=='\"') { return parse_string(item,value); }
 if (*value=='-' || (*value>='0' && *value<='9')) { return parse_number(item,value); }
 if (*value=='[') { return parse_array(item,value); }
 if (*value=='{') { return parse_object(item,value); }

 ep=value;return 0;
}


static char *print_value(cJSON *item,int depth,int fmt,printbuffer *p)
{
 char *out=0;
 if (!item) return 0;
 if (p)
 {
  switch ((item->type)&255)
  {
   case 2: {out=ensure(p,5); if (out) strcpy(out,"null"); break;}
   case 0: {out=ensure(p,6); if (out) strcpy(out,"false"); break;}
   case 1: {out=ensure(p,5); if (out) strcpy(out,"true"); break;}
   case 3: out=print_number(item,p);break;
   case 4: out=print_string(item,p);break;
   case 5: out=print_array(item,depth,fmt,p);break;
   case 6: out=print_object(item,depth,fmt,p);break;
  }
 }
 else
 {
  switch ((item->type)&255)
  {
   case 2: out=cJSON_strdup("null"); break;
   case 0: out=cJSON_strdup("false");break;
   case 1: out=cJSON_strdup("true"); break;
   case 3: out=print_number(item,0);break;
   case 4: out=print_string(item,0);break;
   case 5: out=print_array(item,depth,fmt,0);break;
   case 6: out=print_object(item,depth,fmt,0);break;
  }
 }
 return out;
}


static const char *parse_array(cJSON *item,const char *value)
{
 cJSON *child;
 if (*value!='[') {ep=value;return 0;}

 item->type=5;
 value=skip(value+1);
 if (*value==']') return value+1;

 item->child=child=cJSON_New_Item();
 if (!item->child) return 0;
 value=skip(parse_value(child,skip(value)));
 if (!value) return 0;

 while (*value==',')
 {
  cJSON *new_item;
  if (!(new_item=cJSON_New_Item())) return 0;
  child->next=new_item;new_item->prev=child;child=new_item;
  value=skip(parse_value(child,skip(value+1)));
  if (!value) return 0;
 }

 if (*value==']') return value+1;
 ep=value;return 0;
}


static char *print_array(cJSON *item,int depth,int fmt,printbuffer *p)
{
 char **entries;
 char *out=0,*ptr,*ret;int len=5;
 cJSON *child=item->child;
 int numentries=0,i=0,fail=0;
 size_t tmplen=0;


 while (child) numentries++,child=child->next;

 if (!numentries)
 {
  if (p) out=ensure(p,3);
  else out=(char*)cJSON_malloc(3);
  if (out) strcpy(out,"[]");
  return out;
 }

 if (p)
 {

  i=p->offset;
  ptr=ensure(p,1);if (!ptr) return 0; *ptr='['; p->offset++;
  child=item->child;
  while (child && !fail)
  {
   print_value(child,depth+1,fmt,p);
   p->offset=update(p);
   if (child->next) {len=fmt?2:1;ptr=ensure(p,len+1);if (!ptr) return 0;*ptr++=',';if(fmt)*ptr++=' ';*ptr=0;p->offset+=len;}
   child=child->next;
  }
  ptr=ensure(p,2);if (!ptr) return 0; *ptr++=']';*ptr=0;
  out=(p->buffer)+i;
 }
 else
 {

  entries=(char**)cJSON_malloc(numentries*sizeof(char*));
  if (!entries) return 0;
  memset(entries,0,numentries*sizeof(char*));

  child=item->child;
  while (child && !fail)
  {
   ret=print_value(child,depth+1,fmt,0);
   entries[i++]=ret;
   if (ret) len+=strlen(ret)+2+(fmt?1:0); else fail=1;
   child=child->next;
  }


  if (!fail) out=(char*)cJSON_malloc(len);

  if (!out) fail=1;


  if (fail)
  {
   for (i=0;i<numentries;i++) if (entries[i]) cJSON_free(entries[i]);
   cJSON_free(entries);
   return 0;
  }


  *out='[';
  ptr=out+1;*ptr=0;
  for (i=0;i<numentries;i++)
  {
   tmplen=strlen(entries[i]);memcpy(ptr,entries[i],tmplen);ptr+=tmplen;
   if (i!=numentries-1) {*ptr++=',';if(fmt)*ptr++=' ';*ptr=0;}
   cJSON_free(entries[i]);
  }
  cJSON_free(entries);
  *ptr++=']';*ptr++=0;
 }
 return out;
}


static const char *parse_object(cJSON *item,const char *value)
{
 cJSON *child;
 if (*value!='{') {ep=value;return 0;}

 item->type=6;
 value=skip(value+1);
 if (*value=='}') return value+1;

 item->child=child=cJSON_New_Item();
 if (!item->child) return 0;
 value=skip(parse_string(child,skip(value)));
 if (!value) return 0;
 child->string=child->valuestring;child->valuestring=0;
 if (*value!=':') {ep=value;return 0;}
 value=skip(parse_value(child,skip(value+1)));
 if (!value) return 0;

 while (*value==',')
 {
  cJSON *new_item;
  if (!(new_item=cJSON_New_Item())) return 0;
  child->next=new_item;new_item->prev=child;child=new_item;
  value=skip(parse_string(child,skip(value+1)));
  if (!value) return 0;
  child->string=child->valuestring;child->valuestring=0;
  if (*value!=':') {ep=value;return 0;}
  value=skip(parse_value(child,skip(value+1)));
  if (!value) return 0;
 }

 if (*value=='}') return value+1;
 ep=value;return 0;
}


static char *print_object(cJSON *item,int depth,int fmt,printbuffer *p)
{
 char **entries=0,**names=0;
 char *out=0,*ptr,*ret,*str;int len=7,i=0,j;
 cJSON *child=item->child;
 int numentries=0,fail=0;
 size_t tmplen=0;

 while (child) numentries++,child=child->next;

 if (!numentries)
 {
  if (p) out=ensure(p,fmt?depth+4:3);
  else out=(char*)cJSON_malloc(fmt?depth+4:3);
  if (!out) return 0;
  ptr=out;*ptr++='{';
  if (fmt) {*ptr++='\n';for (i=0;i<depth-1;i++) *ptr++='\t';}
  *ptr++='}';*ptr++=0;
  return out;
 }
 if (p)
 {

  i=p->offset;
  len=fmt?2:1; ptr=ensure(p,len+1); if (!ptr) return 0;
  *ptr++='{'; if (fmt) *ptr++='\n'; *ptr=0; p->offset+=len;
  child=item->child;depth++;
  while (child)
  {
   if (fmt)
   {
    ptr=ensure(p,depth); if (!ptr) return 0;
    for (j=0;j<depth;j++) *ptr++='\t';
    p->offset+=depth;
   }
   print_string_ptr(child->string,p);
   p->offset=update(p);

   len=fmt?2:1;
   ptr=ensure(p,len); if (!ptr) return 0;
   *ptr++=':';if (fmt) *ptr++='\t';
   p->offset+=len;

   print_value(child,depth,fmt,p);
   p->offset=update(p);

   len=(fmt?1:0)+(child->next?1:0);
   ptr=ensure(p,len+1); if (!ptr) return 0;
   if (child->next) *ptr++=',';
   if (fmt) *ptr++='\n';*ptr=0;
   p->offset+=len;
   child=child->next;
  }
  ptr=ensure(p,fmt?(depth+1):2); if (!ptr) return 0;
  if (fmt) for (i=0;i<depth-1;i++) *ptr++='\t';
  *ptr++='}';*ptr=0;
  out=(p->buffer)+i;
 }
 else
 {

  entries=(char**)cJSON_malloc(numentries*sizeof(char*));
  if (!entries) return 0;
  names=(char**)cJSON_malloc(numentries*sizeof(char*));
  if (!names) {cJSON_free(entries);return 0;}
  memset(entries,0,sizeof(char*)*numentries);
  memset(names,0,sizeof(char*)*numentries);


  child=item->child;depth++;if (fmt) len+=depth;
  while (child)
  {
   names[i]=str=print_string_ptr(child->string,0);
   entries[i++]=ret=print_value(child,depth,fmt,0);
   if (str && ret) len+=strlen(ret)+strlen(str)+2+(fmt?2+depth:0); else fail=1;
   child=child->next;
  }


  if (!fail) out=(char*)cJSON_malloc(len);
  if (!out) fail=1;


  if (fail)
  {
   for (i=0;i<numentries;i++) {if (names[i]) cJSON_free(names[i]);if (entries[i]) cJSON_free(entries[i]);}
   cJSON_free(names);cJSON_free(entries);
   return 0;
  }


  *out='{';ptr=out+1;if (fmt)*ptr++='\n';*ptr=0;
  for (i=0;i<numentries;i++)
  {
   if (fmt) for (j=0;j<depth;j++) *ptr++='\t';
   tmplen=strlen(names[i]);memcpy(ptr,names[i],tmplen);ptr+=tmplen;
   *ptr++=':';if (fmt) *ptr++='\t';
   strcpy(ptr,entries[i]);ptr+=strlen(entries[i]);
   if (i!=numentries-1) *ptr++=',';
   if (fmt) *ptr++='\n';*ptr=0;
   cJSON_free(names[i]);cJSON_free(entries[i]);
  }

  cJSON_free(names);cJSON_free(entries);
  if (fmt) for (i=0;i<depth-1;i++) *ptr++='\t';
  *ptr++='}';*ptr++=0;
 }
 return out;
}


int cJSON_GetArraySize(cJSON *array) {cJSON *c=array->child;int i=0;while(c)i++,c=c->next;return i;}
cJSON *cJSON_GetArrayItem(cJSON *array,int item) {cJSON *c=array->child; while (c && item>0) item--,c=c->next; return c;}
cJSON *cJSON_GetObjectItem(cJSON *object,const char *string) {cJSON *c=object->child; while (c && cJSON_strcasecmp(c->string,string)) c=c->next; return c;}


static void suffix_object(cJSON *prev,cJSON *item) {prev->next=item;item->prev=prev;}

static cJSON *create_reference(cJSON *item) {cJSON *ref=cJSON_New_Item();if (!ref) return 0;memcpy(ref,item,sizeof(cJSON));ref->string=0;ref->type|=256;ref->next=ref->prev=0;return ref;}


void cJSON_AddItemToArray(cJSON *array, cJSON *item) {cJSON *c=array->child;if (!item) return; if (!c) {array->child=item;} else {while (c && c->next) c=c->next; suffix_object(c,item);}}
void cJSON_AddItemToObject(cJSON *object,const char *string,cJSON *item) {if (!item) return; if (item->string) cJSON_free(item->string);item->string=cJSON_strdup(string);cJSON_AddItemToArray(object,item);}
void cJSON_AddItemToObjectCS(cJSON *object,const char *string,cJSON *item) {if (!item) return; if (!(item->type&512) && item->string) cJSON_free(item->string);item->string=(char*)string;item->type|=512;cJSON_AddItemToArray(object,item);}
void cJSON_AddItemReferenceToArray(cJSON *array, cJSON *item) {cJSON_AddItemToArray(array,create_reference(item));}
void cJSON_AddItemReferenceToObject(cJSON *object,const char *string,cJSON *item) {cJSON_AddItemToObject(object,string,create_reference(item));}

cJSON *cJSON_DetachItemFromArray(cJSON *array,int which) {cJSON *c=array->child;while (c && which>0) c=c->next,which--;if (!c) return 0;
 if (c->prev) c->prev->next=c->next;if (c->next) c->next->prev=c->prev;if (c==array->child) array->child=c->next;c->prev=c->next=0;return c;}
void cJSON_DeleteItemFromArray(cJSON *array,int which) {cJSON_Delete(cJSON_DetachItemFromArray(array,which));}
cJSON *cJSON_DetachItemFromObject(cJSON *object,const char *string) {int i=0;cJSON *c=object->child;while (c && cJSON_strcasecmp(c->string,string)) i++,c=c->next;if (c) return cJSON_DetachItemFromArray(object,i);return 0;}
void cJSON_DeleteItemFromObject(cJSON *object,const char *string) {cJSON_Delete(cJSON_DetachItemFromObject(object,string));}


void cJSON_InsertItemInArray(cJSON *array,int which,cJSON *newitem) {cJSON *c=array->child;while (c && which>0) c=c->next,which--;if (!c) {cJSON_AddItemToArray(array,newitem);return;}
 newitem->next=c;newitem->prev=c->prev;c->prev=newitem;if (c==array->child) array->child=newitem; else newitem->prev->next=newitem;}
void cJSON_ReplaceItemInArray(cJSON *array,int which,cJSON *newitem) {cJSON *c=array->child;while (c && which>0) c=c->next,which--;if (!c) return;
 newitem->next=c->next;newitem->prev=c->prev;if (newitem->next) newitem->next->prev=newitem;
 if (c==array->child) array->child=newitem; else newitem->prev->next=newitem;c->next=c->prev=0;cJSON_Delete(c);}
void cJSON_ReplaceItemInObject(cJSON *object,const char *string,cJSON *newitem){int i=0;cJSON *c=object->child;while(c && cJSON_strcasecmp(c->string,string))i++,c=c->next;if(c){newitem->string=cJSON_strdup(string);cJSON_ReplaceItemInArray(object,i,newitem);}}


cJSON *cJSON_CreateNull(void) {cJSON *item=cJSON_New_Item();if(item)item->type=2;return item;}
cJSON *cJSON_CreateTrue(void) {cJSON *item=cJSON_New_Item();if(item)item->type=1;return item;}
cJSON *cJSON_CreateFalse(void) {cJSON *item=cJSON_New_Item();if(item)item->type=0;return item;}
cJSON *cJSON_CreateBool(int b) {cJSON *item=cJSON_New_Item();if(item)item->type=b?1:0;return item;}
cJSON *cJSON_CreateNumber(double num) {cJSON *item=cJSON_New_Item();if(item){item->type=3;item->valuedouble=num;item->valueint=(int)num;}return item;}
cJSON *cJSON_CreateDouble(double num,int i_num) {cJSON *item=cJSON_New_Item();if(item){item->type=3;item->valuedouble=num;item->valueint=i_num;}return item;}
cJSON *cJSON_CreateString(const char *string) {cJSON *item=cJSON_New_Item();if(item){item->type=4;item->valuestring=cJSON_strdup(string);}return item;}
cJSON *cJSON_CreateArray(void) {cJSON *item=cJSON_New_Item();if(item)item->type=5;return item;}
cJSON *cJSON_CreateObject(void) {cJSON *item=cJSON_New_Item();if(item)item->type=6;return item;}


cJSON *cJSON_CreateIntArray(const int *numbers,int count) {int i;cJSON *n=0,*p=0,*a=cJSON_CreateArray();for(i=0;a && i<count;i++){n=cJSON_CreateNumber(numbers[i]);if(!i)a->child=n;else suffix_object(p,n);p=n;}return a;}
cJSON *cJSON_CreateFloatArray(const float *numbers,int count) {int i;cJSON *n=0,*p=0,*a=cJSON_CreateArray();for(i=0;a && i<count;i++){n=cJSON_CreateNumber(numbers[i]);if(!i)a->child=n;else suffix_object(p,n);p=n;}return a;}
cJSON *cJSON_CreateDoubleArray(const double *numbers,int count) {int i;cJSON *n=0,*p=0,*a=cJSON_CreateArray();for(i=0;a && i<count;i++){n=cJSON_CreateNumber(numbers[i]);if(!i)a->child=n;else suffix_object(p,n);p=n;}return a;}
cJSON *cJSON_CreateStringArray(const char **strings,int count) {int i;cJSON *n=0,*p=0,*a=cJSON_CreateArray();for(i=0;a && i<count;i++){n=cJSON_CreateString(strings[i]);if(!i)a->child=n;else suffix_object(p,n);p=n;}return a;}


cJSON *cJSON_Duplicate(cJSON *item,int recurse)
{
 cJSON *newitem,*cptr,*nptr=0,*newchild;

 if (!item) return 0;

 newitem=cJSON_New_Item();
 if (!newitem) return 0;

 newitem->type=item->type&(~256),newitem->valueint=item->valueint,newitem->valuedouble=item->valuedouble;
 if (item->valuestring) {newitem->valuestring=cJSON_strdup(item->valuestring); if (!newitem->valuestring) {cJSON_Delete(newitem);return 0;}}
 if (item->string) {newitem->string=cJSON_strdup(item->string); if (!newitem->string) {cJSON_Delete(newitem);return 0;}}

 if (!recurse) return newitem;

 cptr=item->child;
 while (cptr)
 {
  newchild=cJSON_Duplicate(cptr,1);
  if (!newchild) {cJSON_Delete(newitem);return 0;}
  if (nptr) {nptr->next=newchild,newchild->prev=nptr;nptr=newchild;}
  else {newitem->child=newchild;nptr=newchild;}
  cptr=cptr->next;
 }
 return newitem;
}

void cJSON_Minify(char *json)
{
 char *into=json;
 while (*json)
 {
  if (*json==' ') json++;
  else if (*json=='\t') json++;
  else if (*json=='\r') json++;
  else if (*json=='\n') json++;
  else if (*json=='/' && json[1]=='/') while (*json && *json!='\n') json++;
  else if (*json=='/' && json[1]=='*') {while (*json && !(*json=='*' && json[1]=='/')) json++;json+=2;}
  else if (*json=='\"'){*into++=*json++;while (*json && *json!='\"'){if (*json=='\\') *into++=*json++;*into++=*json++;}*into++=*json++;}
  else *into++=*json++;
 }
 *into=0;
}
