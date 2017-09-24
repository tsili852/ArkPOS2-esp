# 1 "C:/Users/nickt/git/esp-idf/components/esp32/deep_sleep.c"
# 1 "C:\\esp\\ArkPOS2-esp\\build\\esp32//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "C:/Users/nickt/git/esp-idf/components/esp32/deep_sleep.c"
# 15 "C:/Users/nickt/git/esp-idf/components/esp32/deep_sleep.c"
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 149 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 3 4

# 149 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 3 4
typedef int ptrdiff_t;
# 216 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 3 4
typedef unsigned int size_t;
# 328 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 3 4
typedef short unsigned int wchar_t;
# 16 "C:/Users/nickt/git/esp-idf/components/esp32/deep_sleep.c" 2
# 1 "C:/Users/nickt/git/esp-idf/components/newlib/include/sys/lock.h" 1
# 11 "C:/Users/nickt/git/esp-idf/components/newlib/include/sys/lock.h"

# 11 "C:/Users/nickt/git/esp-idf/components/newlib/include/sys/lock.h"
typedef int _lock_t;
typedef _lock_t _LOCK_RECURSIVE_T;
typedef _lock_t _LOCK_T;

# 1 "C:/Users/nickt/git/esp-idf/components/newlib/include/_ansi.h" 1
# 15 "C:/Users/nickt/git/esp-idf/components/newlib/include/_ansi.h"
# 1 "C:/Users/nickt/git/esp-idf/components/newlib/include/newlib.h" 1
# 16 "C:/Users/nickt/git/esp-idf/components/newlib/include/_ansi.h" 2
# 1 "C:/Users/nickt/git/esp-idf/components/newlib/include/sys/config.h" 1



# 1 "C:/Users/nickt/git/esp-idf/components/newlib/include/machine/ieeefp.h" 1
# 5 "C:/Users/nickt/git/esp-idf/components/newlib/include/sys/config.h" 2
# 1 "C:/Users/nickt/git/esp-idf/components/newlib/include/sys/features.h" 1
# 6 "C:/Users/nickt/git/esp-idf/components/newlib/include/sys/config.h" 2
# 189 "C:/Users/nickt/git/esp-idf/components/newlib/include/sys/config.h"
# 1 "C:/Users/nickt/git/esp-idf/components/esp32/include/xtensa/config/core-isa.h" 1
# 190 "C:/Users/nickt/git/esp-idf/components/newlib/include/sys/config.h" 2
# 17 "C:/Users/nickt/git/esp-idf/components/newlib/include/_ansi.h" 2
# 16 "C:/Users/nickt/git/esp-idf/components/newlib/include/sys/lock.h" 2
# 28 "C:/Users/nickt/git/esp-idf/components/newlib/include/sys/lock.h"
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
# 17 "C:/Users/nickt/git/esp-idf/components/esp32/deep_sleep.c" 2
# 1 "C:/Users/nickt/git/esp-idf/components/esp32/include/esp_attr.h" 1
# 18 "C:/Users/nickt/git/esp-idf/components/esp32/deep_sleep.c" 2
# 1 "C:/Users/nickt/git/esp-idf/components/esp32/include/esp_deep_sleep.h" 1
# 15 "C:/Users/nickt/git/esp-idf/components/esp32/include/esp_deep_sleep.h"
       

# 1 "C:/Users/nickt/git/esp-idf/components/newlib/include/stdint.h" 1
# 12 "C:/Users/nickt/git/esp-idf/components/newlib/include/stdint.h"
# 1 "C:/Users/nickt/git/esp-idf/components/newlib/include/machine/_default_types.h" 1
# 17 "C:/Users/nickt/git/esp-idf/components/newlib/include/machine/_default_types.h"
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
# 13 "C:/Users/nickt/git/esp-idf/components/newlib/include/stdint.h" 2
# 1 "C:/Users/nickt/git/esp-idf/components/newlib/include/sys/_intsup.h" 1
# 14 "C:/Users/nickt/git/esp-idf/components/newlib/include/stdint.h" 2






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
# 74 "C:/Users/nickt/git/esp-idf/components/newlib/include/stdint.h"
  typedef int int_fast8_t;
  typedef unsigned int uint_fast8_t;
# 84 "C:/Users/nickt/git/esp-idf/components/newlib/include/stdint.h"
  typedef int int_fast16_t;
  typedef unsigned int uint_fast16_t;
# 94 "C:/Users/nickt/git/esp-idf/components/newlib/include/stdint.h"
  typedef int int_fast32_t;
  typedef unsigned int uint_fast32_t;
# 104 "C:/Users/nickt/git/esp-idf/components/newlib/include/stdint.h"
  typedef long long int int_fast64_t;
  typedef long long unsigned int uint_fast64_t;
# 153 "C:/Users/nickt/git/esp-idf/components/newlib/include/stdint.h"
  typedef long long int intmax_t;
# 162 "C:/Users/nickt/git/esp-idf/components/newlib/include/stdint.h"
  typedef long long unsigned int uintmax_t;






typedef __intptr_t intptr_t;
typedef __uintptr_t uintptr_t;
# 18 "C:/Users/nickt/git/esp-idf/components/esp32/include/esp_deep_sleep.h" 2
# 1 "C:/Users/nickt/git/esp-idf/components/esp32/include/esp_err.h" 1
# 14 "C:/Users/nickt/git/esp-idf/components/esp32/include/esp_err.h"
       


# 1 "C:/Users/nickt/git/esp-idf/components/newlib/include/stdio.h" 1
# 29 "C:/Users/nickt/git/esp-idf/components/newlib/include/stdio.h"
# 1 "C:/Users/nickt/git/esp-idf/components/newlib/include/_ansi.h" 1
# 30 "C:/Users/nickt/git/esp-idf/components/newlib/include/stdio.h" 2





# 1 "C:/Users/nickt/git/esp-idf/components/newlib/include/sys/cdefs.h" 1
# 45 "C:/Users/nickt/git/esp-idf/components/newlib/include/sys/cdefs.h"
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 46 "C:/Users/nickt/git/esp-idf/components/newlib/include/sys/cdefs.h" 2
# 36 "C:/Users/nickt/git/esp-idf/components/newlib/include/stdio.h" 2
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 37 "C:/Users/nickt/git/esp-idf/components/newlib/include/stdio.h" 2


# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stdarg.h" 1 3 4
# 40 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stdarg.h" 3 4

# 40 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 40 "C:/Users/nickt/git/esp-idf/components/newlib/include/stdio.h" 2







# 1 "C:/Users/nickt/git/esp-idf/components/newlib/include/sys/reent.h" 1
# 14 "C:/Users/nickt/git/esp-idf/components/newlib/include/sys/reent.h"
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 15 "C:/Users/nickt/git/esp-idf/components/newlib/include/sys/reent.h" 2
# 1 "C:/Users/nickt/git/esp-idf/components/newlib/include/sys/_types.h" 1
# 12 "C:/Users/nickt/git/esp-idf/components/newlib/include/sys/_types.h"
# 1 "C:/Users/nickt/git/esp-idf/components/newlib/include/machine/_types.h" 1
# 13 "C:/Users/nickt/git/esp-idf/components/newlib/include/sys/_types.h" 2




# 16 "C:/Users/nickt/git/esp-idf/components/newlib/include/sys/_types.h"
typedef long _off_t;



typedef short __dev_t;



typedef unsigned short __uid_t;


typedef unsigned short __gid_t;



__extension__ typedef long long _off64_t;







typedef long _fpos_t;
# 55 "C:/Users/nickt/git/esp-idf/components/newlib/include/sys/_types.h"
typedef signed int _ssize_t;
# 67 "C:/Users/nickt/git/esp-idf/components/newlib/include/sys/_types.h"
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 357 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 3 4

# 357 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 3 4
typedef unsigned int wint_t;
# 68 "C:/Users/nickt/git/esp-idf/components/newlib/include/sys/_types.h" 2




# 71 "C:/Users/nickt/git/esp-idf/components/newlib/include/sys/_types.h"
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
# 16 "C:/Users/nickt/git/esp-idf/components/newlib/include/sys/reent.h" 2






typedef unsigned long __ULong;
# 38 "C:/Users/nickt/git/esp-idf/components/newlib/include/sys/reent.h"
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
# 115 "C:/Users/nickt/git/esp-idf/components/newlib/include/sys/reent.h"
struct __sbuf {
 unsigned char *_base;
 int _size;
};
# 151 "C:/Users/nickt/git/esp-idf/components/newlib/include/sys/reent.h"
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
# 179 "C:/Users/nickt/git/esp-idf/components/newlib/include/sys/reent.h"
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
# 285 "C:/Users/nickt/git/esp-idf/components/newlib/include/sys/reent.h"
typedef struct __sFILE __FILE;



struct _glue
{
  struct _glue *_next;
  int _niobs;
  __FILE *_iobs;
};
# 317 "C:/Users/nickt/git/esp-idf/components/newlib/include/sys/reent.h"
struct _rand48 {
  unsigned short _seed[3];
  unsigned short _mult[3];
  unsigned short _add;


  __extension__ unsigned long long _rand_next;

};
# 342 "C:/Users/nickt/git/esp-idf/components/newlib/include/sys/reent.h"
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
# 766 "C:/Users/nickt/git/esp-idf/components/newlib/include/sys/reent.h"
extern struct _reent *_global_impure_ptr ;

void _reclaim_reent (struct _reent *);





  struct _reent * __getreent (void);
# 48 "C:/Users/nickt/git/esp-idf/components/newlib/include/stdio.h" 2
# 1 "C:/Users/nickt/git/esp-idf/components/newlib/include/sys/types.h" 1
# 69 "C:/Users/nickt/git/esp-idf/components/newlib/include/sys/types.h"
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 70 "C:/Users/nickt/git/esp-idf/components/newlib/include/sys/types.h" 2
# 1 "C:/Users/nickt/git/esp-idf/components/newlib/include/machine/types.h" 1
# 19 "C:/Users/nickt/git/esp-idf/components/newlib/include/machine/types.h"
typedef long int __off_t;
typedef int __pid_t;

__extension__ typedef long long int __loff_t;
# 71 "C:/Users/nickt/git/esp-idf/components/newlib/include/sys/types.h" 2
# 93 "C:/Users/nickt/git/esp-idf/components/newlib/include/sys/types.h"
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
# 155 "C:/Users/nickt/git/esp-idf/components/newlib/include/sys/types.h"
typedef unsigned short ino_t;
# 184 "C:/Users/nickt/git/esp-idf/components/newlib/include/sys/types.h"
typedef _off_t off_t;
typedef __dev_t dev_t;
typedef __uid_t uid_t;
typedef __gid_t gid_t;





typedef int pid_t;







typedef long key_t;

typedef _ssize_t ssize_t;
# 217 "C:/Users/nickt/git/esp-idf/components/newlib/include/sys/types.h"
typedef unsigned int mode_t __attribute__ ((__mode__ (__SI__)));




typedef unsigned short nlink_t;
# 244 "C:/Users/nickt/git/esp-idf/components/newlib/include/sys/types.h"
typedef long fd_mask;







typedef struct _types_fd_set {
 fd_mask fds_bits[(((64)+(((sizeof (fd_mask) * 8))-1))/((sizeof (fd_mask) * 8)))];
} _types_fd_set;
# 275 "C:/Users/nickt/git/esp-idf/components/newlib/include/sys/types.h"
typedef unsigned long clockid_t;




typedef unsigned long timer_t;



typedef unsigned long useconds_t;
typedef long suseconds_t;
# 49 "C:/Users/nickt/git/esp-idf/components/newlib/include/stdio.h" 2



typedef __FILE FILE;




typedef _fpos_t fpos_t;





# 1 "C:/Users/nickt/git/esp-idf/components/newlib/include/sys/stdio.h" 1
# 64 "C:/Users/nickt/git/esp-idf/components/newlib/include/stdio.h" 2
# 164 "C:/Users/nickt/git/esp-idf/components/newlib/include/stdio.h"
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
# 235 "C:/Users/nickt/git/esp-idf/components/newlib/include/stdio.h"
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
# 313 "C:/Users/nickt/git/esp-idf/components/newlib/include/stdio.h"
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
# 338 "C:/Users/nickt/git/esp-idf/components/newlib/include/stdio.h"
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
# 538 "C:/Users/nickt/git/esp-idf/components/newlib/include/stdio.h"
int __srget_r (struct _reent *, FILE *);
int __swbuf_r (struct _reent *, int, FILE *);
# 562 "C:/Users/nickt/git/esp-idf/components/newlib/include/stdio.h"
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
# 725 "C:/Users/nickt/git/esp-idf/components/newlib/include/stdio.h"

# 18 "C:/Users/nickt/git/esp-idf/components/esp32/include/esp_err.h" 2
# 1 "C:/Users/nickt/git/esp-idf/components/newlib/include/assert.h" 1
# 39 "C:/Users/nickt/git/esp-idf/components/newlib/include/assert.h"
void __assert (const char *, int, const char *) __attribute__ ((__noreturn__))
                                 ;
void __assert_func (const char *, int, const char *, const char *) __attribute__ ((__noreturn__))
                                 ;
# 19 "C:/Users/nickt/git/esp-idf/components/esp32/include/esp_err.h" 2





typedef int32_t esp_err_t;
# 45 "C:/Users/nickt/git/esp-idf/components/esp32/include/esp_err.h"
void _esp_error_check_failed(esp_err_t rc, const char *file, int line, const char *function, const char *expression) __attribute__((noreturn));
# 19 "C:/Users/nickt/git/esp-idf/components/esp32/include/esp_deep_sleep.h" 2
# 1 "C:/Users/nickt/git/esp-idf/components/driver/include/driver/gpio.h" 1
# 18 "C:/Users/nickt/git/esp-idf/components/driver/include/driver/gpio.h"
# 1 "C:/Users/nickt/git/esp-idf/components/esp32/include/esp_types.h" 1
# 22 "C:/Users/nickt/git/esp-idf/components/esp32/include/esp_types.h"
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stdbool.h" 1 3 4
# 23 "C:/Users/nickt/git/esp-idf/components/esp32/include/esp_types.h" 2
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 24 "C:/Users/nickt/git/esp-idf/components/esp32/include/esp_types.h" 2
# 19 "C:/Users/nickt/git/esp-idf/components/driver/include/driver/gpio.h" 2
# 1 "C:/Users/nickt/git/esp-idf/components/soc/esp32/include/soc/gpio_reg.h" 1
# 17 "C:/Users/nickt/git/esp-idf/components/soc/esp32/include/soc/gpio_reg.h"
# 1 "C:/Users/nickt/git/esp-idf/components/soc/esp32/include/soc/soc.h" 1
# 20 "C:/Users/nickt/git/esp-idf/components/soc/esp32/include/soc/soc.h"
# 1 "C:/Users/nickt/git/esp-idf/components/esp32/include/esp_assert.h" 1
# 17 "C:/Users/nickt/git/esp-idf/components/esp32/include/esp_assert.h"
# 1 "C:/Users/nickt/git/esp-idf/components/newlib/include/assert.h" 1
# 39 "C:/Users/nickt/git/esp-idf/components/newlib/include/assert.h"
void __assert (const char *, int, const char *) __attribute__ ((__noreturn__))
                                 ;
void __assert_func (const char *, int, const char *, const char *) __attribute__ ((__noreturn__))
                                 ;
# 18 "C:/Users/nickt/git/esp-idf/components/esp32/include/esp_assert.h" 2
# 21 "C:/Users/nickt/git/esp-idf/components/soc/esp32/include/soc/soc.h" 2
# 18 "C:/Users/nickt/git/esp-idf/components/soc/esp32/include/soc/gpio_reg.h" 2
# 20 "C:/Users/nickt/git/esp-idf/components/driver/include/driver/gpio.h" 2
# 1 "C:/Users/nickt/git/esp-idf/components/soc/esp32/include/soc/gpio_struct.h" 1
# 16 "C:/Users/nickt/git/esp-idf/components/soc/esp32/include/soc/gpio_struct.h"
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
# 21 "C:/Users/nickt/git/esp-idf/components/driver/include/driver/gpio.h" 2
# 1 "C:/Users/nickt/git/esp-idf/components/soc/esp32/include/soc/rtc_io_reg.h" 1
# 22 "C:/Users/nickt/git/esp-idf/components/driver/include/driver/gpio.h" 2
# 1 "C:/Users/nickt/git/esp-idf/components/soc/esp32/include/soc/io_mux_reg.h" 1
# 94 "C:/Users/nickt/git/esp-idf/components/soc/esp32/include/soc/io_mux_reg.h"
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
# 23 "C:/Users/nickt/git/esp-idf/components/driver/include/driver/gpio.h" 2
# 1 "C:/Users/nickt/git/esp-idf/components/soc/esp32/include/soc/gpio_sig_map.h" 1
# 24 "C:/Users/nickt/git/esp-idf/components/driver/include/driver/gpio.h" 2
# 1 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/gpio.h" 1
# 48 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/gpio.h"
typedef enum {
    GPIO_PIN_INTR_DISABLE = 0,
    GPIO_PIN_INTR_POSEDGE = 1,
    GPIO_PIN_INTR_NEGEDGE = 2,
    GPIO_PIN_INTR_ANYEGDE = 3,
    GPIO_PIN_INTR_LOLEVEL = 4,
    GPIO_PIN_INTR_HILEVEL = 5
} GPIO_INT_TYPE;
# 64 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/gpio.h"
typedef void (* gpio_intr_handler_fn_t)(uint32_t intr_mask, 
# 64 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/gpio.h" 3 4
                                                           _Bool 
# 64 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/gpio.h"
                                                                high, void *arg);
# 75 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/gpio.h"
void gpio_init(void);
# 92 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/gpio.h"
void gpio_output_set(uint32_t set_mask, uint32_t clear_mask, uint32_t enable_mask, uint32_t disable_mask);
# 109 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/gpio.h"
void gpio_output_set_high(uint32_t set_mask, uint32_t clear_mask, uint32_t enable_mask, uint32_t disable_mask);
# 118 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/gpio.h"
uint32_t gpio_input_get(void);
# 127 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/gpio.h"
uint32_t gpio_input_get_high(void);
# 140 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/gpio.h"
void gpio_intr_handler_register(gpio_intr_handler_fn_t fn, void *arg);
# 150 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/gpio.h"
uint32_t gpio_intr_pending(void);
# 160 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/gpio.h"
uint32_t gpio_intr_pending_high(void);
# 170 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/gpio.h"
void gpio_intr_ack(uint32_t ack_mask);
# 180 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/gpio.h"
void gpio_intr_ack_high(uint32_t ack_mask);
# 192 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/gpio.h"
void gpio_pin_wakeup_enable(uint32_t i, GPIO_INT_TYPE intr_state);
# 202 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/gpio.h"
void gpio_pin_wakeup_disable(void);
# 218 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/gpio.h"
void gpio_matrix_in(uint32_t gpio, uint32_t signal_idx, 
# 218 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/gpio.h" 3 4
                                                       _Bool 
# 218 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/gpio.h"
                                                            inv);
# 234 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/gpio.h"
void gpio_matrix_out(uint32_t gpio, uint32_t signal_idx, 
# 234 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/gpio.h" 3 4
                                                        _Bool 
# 234 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/gpio.h"
                                                             out_inv, 
# 234 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/gpio.h" 3 4
                                                                      _Bool 
# 234 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/gpio.h"
                                                                           oen_inv);
# 243 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/gpio.h"
void gpio_pad_select_gpio(uint8_t gpio_num);
# 254 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/gpio.h"
void gpio_pad_set_drv(uint8_t gpio_num, uint8_t drv);
# 263 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/gpio.h"
void gpio_pad_pullup(uint8_t gpio_num);
# 272 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/gpio.h"
void gpio_pad_pulldown(uint8_t gpio_num);
# 281 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/gpio.h"
void gpio_pad_unhold(uint8_t gpio_num);
# 290 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/gpio.h"
void gpio_pad_hold(uint8_t gpio_num);
# 25 "C:/Users/nickt/git/esp-idf/components/driver/include/driver/gpio.h" 2

# 1 "C:/Users/nickt/git/esp-idf/components/esp32/include/esp_intr_alloc.h" 1
# 80 "C:/Users/nickt/git/esp-idf/components/esp32/include/esp_intr_alloc.h"
typedef void (*intr_handler_t)(void *arg);


typedef struct intr_handle_data_t intr_handle_data_t;
typedef intr_handle_data_t* intr_handle_t ;
# 101 "C:/Users/nickt/git/esp-idf/components/esp32/include/esp_intr_alloc.h"
esp_err_t esp_intr_mark_shared(int intno, int cpu, 
# 101 "C:/Users/nickt/git/esp-idf/components/esp32/include/esp_intr_alloc.h" 3 4
                                                  _Bool 
# 101 "C:/Users/nickt/git/esp-idf/components/esp32/include/esp_intr_alloc.h"
                                                       is_in_iram);
# 115 "C:/Users/nickt/git/esp-idf/components/esp32/include/esp_intr_alloc.h"
esp_err_t esp_intr_reserve(int intno, int cpu);
# 150 "C:/Users/nickt/git/esp-idf/components/esp32/include/esp_intr_alloc.h"
esp_err_t esp_intr_alloc(int source, int flags, intr_handler_t handler, void *arg, intr_handle_t *ret_handle);
# 188 "C:/Users/nickt/git/esp-idf/components/esp32/include/esp_intr_alloc.h"
esp_err_t esp_intr_alloc_intrstatus(int source, int flags, uint32_t intrstatusreg, uint32_t intrstatusmask, intr_handler_t handler, void *arg, intr_handle_t *ret_handle);
# 203 "C:/Users/nickt/git/esp-idf/components/esp32/include/esp_intr_alloc.h"
esp_err_t esp_intr_free(intr_handle_t handle);
# 213 "C:/Users/nickt/git/esp-idf/components/esp32/include/esp_intr_alloc.h"
int esp_intr_get_cpu(intr_handle_t handle);
# 222 "C:/Users/nickt/git/esp-idf/components/esp32/include/esp_intr_alloc.h"
int esp_intr_get_intno(intr_handle_t handle);
# 236 "C:/Users/nickt/git/esp-idf/components/esp32/include/esp_intr_alloc.h"
esp_err_t esp_intr_disable(intr_handle_t handle);
# 249 "C:/Users/nickt/git/esp-idf/components/esp32/include/esp_intr_alloc.h"
esp_err_t esp_intr_enable(intr_handle_t handle);





void esp_intr_noniram_disable();





void esp_intr_noniram_enable();
# 27 "C:/Users/nickt/git/esp-idf/components/driver/include/driver/gpio.h" 2
# 125 "C:/Users/nickt/git/esp-idf/components/driver/include/driver/gpio.h"
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


typedef void (*gpio_isr_t)(void*);
typedef intr_handle_t gpio_isr_handle_t;
# 238 "C:/Users/nickt/git/esp-idf/components/driver/include/driver/gpio.h"
esp_err_t gpio_config(const gpio_config_t *pGPIOConfig);
# 252 "C:/Users/nickt/git/esp-idf/components/driver/include/driver/gpio.h"
esp_err_t gpio_set_intr_type(gpio_num_t gpio_num, gpio_int_type_t intr_type);
# 264 "C:/Users/nickt/git/esp-idf/components/driver/include/driver/gpio.h"
esp_err_t gpio_intr_enable(gpio_num_t gpio_num);
# 276 "C:/Users/nickt/git/esp-idf/components/driver/include/driver/gpio.h"
esp_err_t gpio_intr_disable(gpio_num_t gpio_num);
# 289 "C:/Users/nickt/git/esp-idf/components/driver/include/driver/gpio.h"
esp_err_t gpio_set_level(gpio_num_t gpio_num, uint32_t level);
# 301 "C:/Users/nickt/git/esp-idf/components/driver/include/driver/gpio.h"
int gpio_get_level(gpio_num_t gpio_num);
# 316 "C:/Users/nickt/git/esp-idf/components/driver/include/driver/gpio.h"
esp_err_t gpio_set_direction(gpio_num_t gpio_num, gpio_mode_t mode);
# 331 "C:/Users/nickt/git/esp-idf/components/driver/include/driver/gpio.h"
esp_err_t gpio_set_pull_mode(gpio_num_t gpio_num, gpio_pull_mode_t pull);
# 344 "C:/Users/nickt/git/esp-idf/components/driver/include/driver/gpio.h"
esp_err_t gpio_wakeup_enable(gpio_num_t gpio_num, gpio_int_type_t intr_type);
# 355 "C:/Users/nickt/git/esp-idf/components/driver/include/driver/gpio.h"
esp_err_t gpio_wakeup_disable(gpio_num_t gpio_num);
# 380 "C:/Users/nickt/git/esp-idf/components/driver/include/driver/gpio.h"
esp_err_t gpio_isr_register(void (*fn)(void*), void * arg, int intr_alloc_flags, gpio_isr_handle_t *handle);
# 391 "C:/Users/nickt/git/esp-idf/components/driver/include/driver/gpio.h"
esp_err_t gpio_pullup_en(gpio_num_t gpio_num);
# 402 "C:/Users/nickt/git/esp-idf/components/driver/include/driver/gpio.h"
esp_err_t gpio_pullup_dis(gpio_num_t gpio_num);
# 413 "C:/Users/nickt/git/esp-idf/components/driver/include/driver/gpio.h"
esp_err_t gpio_pulldown_en(gpio_num_t gpio_num);
# 424 "C:/Users/nickt/git/esp-idf/components/driver/include/driver/gpio.h"
esp_err_t gpio_pulldown_dis(gpio_num_t gpio_num);
# 439 "C:/Users/nickt/git/esp-idf/components/driver/include/driver/gpio.h"
esp_err_t gpio_install_isr_service(int intr_alloc_flags);




void gpio_uninstall_isr_service();
# 470 "C:/Users/nickt/git/esp-idf/components/driver/include/driver/gpio.h"
esp_err_t gpio_isr_handler_add(gpio_num_t gpio_num, gpio_isr_t isr_handler, void* args);
# 482 "C:/Users/nickt/git/esp-idf/components/driver/include/driver/gpio.h"
esp_err_t gpio_isr_handler_remove(gpio_num_t gpio_num);
# 20 "C:/Users/nickt/git/esp-idf/components/esp32/include/esp_deep_sleep.h" 2
# 1 "C:/Users/nickt/git/esp-idf/components/driver/include/driver/touch_pad.h" 1
# 20 "C:/Users/nickt/git/esp-idf/components/driver/include/driver/touch_pad.h"
# 1 "C:/Users/nickt/git/esp-idf/components/esp32/include/esp_intr.h" 1
# 18 "C:/Users/nickt/git/esp-idf/components/esp32/include/esp_intr.h"
# 1 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/ets_sys.h" 1
# 21 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/ets_sys.h"
# 1 "C:/Users/nickt/git/esp-idf/components/soc/esp32/include/soc/soc.h" 1
# 22 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/ets_sys.h" 2
# 54 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/ets_sys.h"
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
# 79 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/ets_sys.h"
void ets_run(void);
# 90 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/ets_sys.h"
void ets_set_idle_cb(ets_idle_cb_t func, void *arg);
# 105 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/ets_sys.h"
void ets_task(ETSTask task, uint8_t prio, ETSEvent *queue, uint8_t qlen);
# 119 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/ets_sys.h"
ETS_STATUS ets_post(uint8_t prio, ETSSignal sig, ETSParam par);
# 133 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/ets_sys.h"
extern const char *const exc_cause_table[40];
# 143 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/ets_sys.h"
void ets_set_user_start(uint32_t start);
# 153 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/ets_sys.h"
void ets_set_startup_callback(uint32_t callback);
# 163 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/ets_sys.h"
void ets_set_appcpu_boot_addr(uint32_t start);
# 179 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/ets_sys.h"
ETS_STATUS ets_unpack_flash_code_legacy(uint32_t pos, uint32_t *entry_addr, 
# 179 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/ets_sys.h" 3 4
                                                                           _Bool 
# 179 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/ets_sys.h"
                                                                                jump, 
# 179 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/ets_sys.h" 3 4
                                                                                      _Bool 
# 179 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/ets_sys.h"
                                                                                           config);
# 197 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/ets_sys.h"
ETS_STATUS ets_unpack_flash_code(uint32_t pos, uint32_t *entry_addr, 
# 197 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/ets_sys.h" 3 4
                                                                    _Bool 
# 197 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/ets_sys.h"
                                                                         jump, 
# 197 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/ets_sys.h" 3 4
                                                                               _Bool 
# 197 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/ets_sys.h"
                                                                                    sb_need_check, 
# 197 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/ets_sys.h" 3 4
                                                                                                   _Bool 
# 197 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/ets_sys.h"
                                                                                                        config);
# 222 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/ets_sys.h"
int ets_printf(const char *fmt, ...);
# 232 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/ets_sys.h"
void ets_write_char_uart(char c);
# 242 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/ets_sys.h"
void ets_install_putc1(void (*p)(char c));
# 252 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/ets_sys.h"
void ets_install_putc2(void (*p)(char c));
# 262 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/ets_sys.h"
void ets_install_uart_printf(void);
# 284 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/ets_sys.h"
typedef void ETSTimerFunc(void *timer_arg);

typedef struct _ETSTIMER_ {
    struct _ETSTIMER_ *timer_next;
    uint32_t timer_expire;
    uint32_t timer_period;
    ETSTimerFunc *timer_func;
    void *timer_arg;
} ETSTimer;
# 302 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/ets_sys.h"
void ets_timer_init(void);
# 316 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/ets_sys.h"
void ets_timer_arm(ETSTimer *timer, uint32_t tmout, 
# 316 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/ets_sys.h" 3 4
                                                   _Bool 
# 316 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/ets_sys.h"
                                                        repeat);
# 330 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/ets_sys.h"
void ets_timer_arm_us(ETSTimer *ptimer, uint32_t us, 
# 330 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/ets_sys.h" 3 4
                                                    _Bool 
# 330 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/ets_sys.h"
                                                         repeat);
# 340 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/ets_sys.h"
void ets_timer_disarm(ETSTimer *timer);
# 354 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/ets_sys.h"
void ets_timer_setfn(ETSTimer *ptimer, ETSTimerFunc *pfunction, void *parg);
# 364 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/ets_sys.h"
void ets_timer_done(ETSTimer *ptimer);
# 374 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/ets_sys.h"
void ets_delay_us(uint32_t us);
# 384 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/ets_sys.h"
void ets_update_cpu_frequency(uint32_t ticks_per_us);
# 396 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/ets_sys.h"
void ets_update_cpu_frequency_rom(uint32_t ticks_per_us);
# 406 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/ets_sys.h"
uint32_t ets_get_cpu_frequency(void);
# 415 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/ets_sys.h"
uint32_t ets_get_xtal_scale(void);
# 428 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/ets_sys.h"
uint32_t ets_get_detected_xtal_freq(void);
# 442 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/ets_sys.h"
typedef void (* ets_isr_t)(void *);
# 457 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/ets_sys.h"
void ets_isr_attach(int i, ets_isr_t func, void *arg);
# 468 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/ets_sys.h"
void ets_isr_mask(uint32_t mask);
# 479 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/ets_sys.h"
void ets_isr_unmask(uint32_t unmask);
# 490 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/ets_sys.h"
void ets_intr_lock(void);
# 501 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/ets_sys.h"
void ets_intr_unlock(void);
# 512 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/ets_sys.h"
void ets_waiti0(void);
# 530 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/ets_sys.h"
void intr_matrix_set(int cpu_no, uint32_t model_num, uint32_t intr_num);
# 620 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/ets_sys.h"
typedef enum {
    OK = 0,
    FAIL,
    PENDING,
    BUSY,
    CANCEL,
} STATUS;
# 19 "C:/Users/nickt/git/esp-idf/components/esp32/include/esp_intr.h" 2
# 1 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/xtensa_api.h" 1
# 31 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/xtensa_api.h"
# 1 "C:/Users/nickt/git/esp-idf/components/esp32/include/xtensa/hal.h" 1
# 148 "C:/Users/nickt/git/esp-idf/components/esp32/include/xtensa/hal.h"
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
# 237 "C:/Users/nickt/git/esp-idf/components/esp32/include/xtensa/hal.h"
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
# 339 "C:/Users/nickt/git/esp-idf/components/esp32/include/xtensa/hal.h"
extern int xthal_get_cache_prefetch( void );
extern int xthal_set_cache_prefetch( int );
extern int xthal_set_cache_prefetch_long( unsigned long long );
# 352 "C:/Users/nickt/git/esp-idf/components/esp32/include/xtensa/hal.h"
extern const int Xthal_debug_configured;


extern unsigned int xthal_set_soft_break(void *addr);
extern void xthal_remove_soft_break(void *addr, unsigned int);
# 374 "C:/Users/nickt/git/esp-idf/components/esp32/include/xtensa/hal.h"
extern int xthal_disassemble( unsigned char *instr_buf, void *tgt_addr,
         char *buffer, unsigned buflen, unsigned options );



extern int xthal_disassemble_size( unsigned char *instr_buf );






extern void* xthal_memcpy(void *dst, const void *src, unsigned len);
extern void* xthal_bcopy(const void *src, void *dst, unsigned len);






extern int xthal_compare_and_set( int *addr, int test_val, int compare_val );
# 403 "C:/Users/nickt/git/esp-idf/components/esp32/include/xtensa/hal.h"
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
# 653 "C:/Users/nickt/git/esp-idf/components/esp32/include/xtensa/hal.h"
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
# 789 "C:/Users/nickt/git/esp-idf/components/esp32/include/xtensa/hal.h"
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
# 862 "C:/Users/nickt/git/esp-idf/components/esp32/include/xtensa/hal.h"
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
# 899 "C:/Users/nickt/git/esp-idf/components/esp32/include/xtensa/hal.h"
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
# 948 "C:/Users/nickt/git/esp-idf/components/esp32/include/xtensa/hal.h"
extern int xthal_set_region_translation(void* vaddr, void* paddr, unsigned size, unsigned cache_atr, unsigned flags);
extern int xthal_v2p(void*, void**, unsigned*, unsigned*);
extern int xthal_invalidate_region(void* addr);
extern int xthal_set_region_translation_raw(void *vaddr, void *paddr, unsigned cattr);
# 32 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/xtensa_api.h" 2

# 1 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/xtensa_context.h" 1
# 44 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/xtensa_context.h"
# 1 "C:/Users/nickt/git/esp-idf/components/esp32/include/xtensa/config/tie.h" 1
# 45 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/xtensa_context.h" 2
# 1 "C:/Users/nickt/git/esp-idf/components/esp32/include/xtensa/corebits.h" 1
# 46 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/xtensa_context.h" 2
# 1 "C:/Users/nickt/git/esp-idf/components/esp32/include/xtensa/config/system.h" 1
# 47 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/xtensa_context.h" 2
# 1 "C:/Users/nickt/git/esp-idf/components/esp32/include/xtensa/xtruntime-frames.h" 1
# 30 "C:/Users/nickt/git/esp-idf/components/esp32/include/xtensa/xtruntime-frames.h"
# 1 "C:/Users/nickt/git/esp-idf/components/esp32/include/xtensa/config/core.h" 1
# 42 "C:/Users/nickt/git/esp-idf/components/esp32/include/xtensa/config/core.h"
# 1 "C:/Users/nickt/git/esp-idf/components/esp32/include/xtensa/xtensa-versions.h" 1
# 43 "C:/Users/nickt/git/esp-idf/components/esp32/include/xtensa/config/core.h" 2
# 51 "C:/Users/nickt/git/esp-idf/components/esp32/include/xtensa/config/core.h"
# 1 "C:/Users/nickt/git/esp-idf/components/esp32/include/xtensa/config/core-matmap.h" 1
# 52 "C:/Users/nickt/git/esp-idf/components/esp32/include/xtensa/config/core.h" 2
# 1279 "C:/Users/nickt/git/esp-idf/components/esp32/include/xtensa/config/core.h"
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
# 31 "C:/Users/nickt/git/esp-idf/components/esp32/include/xtensa/xtruntime-frames.h" 2
# 56 "C:/Users/nickt/git/esp-idf/components/esp32/include/xtensa/xtruntime-frames.h"
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
# 80 "C:/Users/nickt/git/esp-idf/components/esp32/include/xtensa/xtruntime-frames.h"
typedef struct {
long pc;
long ps;
long sar;
long vpri;



long a2;
long a3;
long a4;
long a5;
# 104 "C:/Users/nickt/git/esp-idf/components/esp32/include/xtensa/xtruntime-frames.h"
long exccause;

long lcount;
long lbeg;
long lend;


long acclo;
long acchi;
long mr[4];
# 123 "C:/Users/nickt/git/esp-idf/components/esp32/include/xtensa/xtruntime-frames.h"
long pad[((3 + 1*1 + 1*2 + 0*1) & 3)];


} UserFrame;
# 48 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/xtensa_context.h" 2
# 103 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/xtensa_context.h"
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
# 145 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/xtensa_context.h"
} XtExcFrame;
# 202 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/xtensa_context.h"
typedef struct {
# 213 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/xtensa_context.h"
long exit;
long pc;
long ps;
long next;
long a0;
long a1;
long a2;
long a3;

} XtSolFrame;
# 34 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/xtensa_api.h" 2



typedef void (*xt_handler)(void *);


typedef void (*xt_exc_handler)(XtExcFrame *);
# 60 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/xtensa_api.h"
extern xt_exc_handler xt_set_exception_handler(int n, xt_exc_handler f);
# 73 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/xtensa_api.h"
extern xt_handler xt_set_interrupt_handler(int n, xt_handler f, void * arg);
# 84 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/xtensa_api.h"
extern void xt_ints_on(unsigned int mask);
# 95 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/xtensa_api.h"
extern void xt_ints_off(unsigned int mask);







static inline void xt_set_intset(unsigned int arg)
{
    xthal_set_intset(arg);
}
# 115 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/xtensa_api.h"
static inline void xt_set_intclear(unsigned int arg)
{
    xthal_set_intclear(arg);
}
# 20 "C:/Users/nickt/git/esp-idf/components/esp32/include/esp_intr.h" 2
# 21 "C:/Users/nickt/git/esp-idf/components/driver/include/driver/touch_pad.h" 2




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

typedef intr_handle_t touch_isr_handle_t;
# 51 "C:/Users/nickt/git/esp-idf/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_init();
# 60 "C:/Users/nickt/git/esp-idf/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_deinit();
# 77 "C:/Users/nickt/git/esp-idf/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_config(touch_pad_t touch_num, uint16_t threshold);
# 94 "C:/Users/nickt/git/esp-idf/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_read(touch_pad_t touch_num, uint16_t * touch_value);
# 111 "C:/Users/nickt/git/esp-idf/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_isr_handler_register(void(*fn)(void *), void *arg, int intr_alloc_flags, touch_isr_handle_t *handle);
# 21 "C:/Users/nickt/git/esp-idf/components/esp32/include/esp_deep_sleep.h" 2
# 30 "C:/Users/nickt/git/esp-idf/components/esp32/include/esp_deep_sleep.h"
typedef enum {
    ESP_EXT1_WAKEUP_ALL_LOW = 0,
    ESP_EXT1_WAKEUP_ANY_HIGH = 1
} esp_ext1_wakeup_mode_t;




typedef enum {
    ESP_PD_DOMAIN_RTC_PERIPH,
    ESP_PD_DOMAIN_RTC_SLOW_MEM,
    ESP_PD_DOMAIN_RTC_FAST_MEM,
    ESP_PD_DOMAIN_MAX
} esp_deep_sleep_pd_domain_t;




typedef enum {
    ESP_PD_OPTION_OFF,
    ESP_PD_OPTION_ON,
    ESP_PD_OPTION_AUTO
} esp_deep_sleep_pd_option_t;




typedef enum {
    ESP_DEEP_SLEEP_WAKEUP_UNDEFINED,
    ESP_DEEP_SLEEP_WAKEUP_EXT0,
    ESP_DEEP_SLEEP_WAKEUP_EXT1,
    ESP_DEEP_SLEEP_WAKEUP_TIMER,
    ESP_DEEP_SLEEP_WAKEUP_TOUCHPAD,
    ESP_DEEP_SLEEP_WAKEUP_ULP,
} esp_deep_sleep_wakeup_cause_t;
# 77 "C:/Users/nickt/git/esp-idf/components/esp32/include/esp_deep_sleep.h"
esp_err_t esp_deep_sleep_enable_ulp_wakeup();
# 86 "C:/Users/nickt/git/esp-idf/components/esp32/include/esp_deep_sleep.h"
esp_err_t esp_deep_sleep_enable_timer_wakeup(uint64_t time_in_us);
# 100 "C:/Users/nickt/git/esp-idf/components/esp32/include/esp_deep_sleep.h"
esp_err_t esp_deep_sleep_enable_touchpad_wakeup();
# 109 "C:/Users/nickt/git/esp-idf/components/esp32/include/esp_deep_sleep.h"
touch_pad_t esp_deep_sleep_get_touchpad_wakeup_status();
# 136 "C:/Users/nickt/git/esp-idf/components/esp32/include/esp_deep_sleep.h"
esp_err_t esp_deep_sleep_enable_ext0_wakeup(gpio_num_t gpio_num, int level);
# 168 "C:/Users/nickt/git/esp-idf/components/esp32/include/esp_deep_sleep.h"
esp_err_t esp_deep_sleep_enable_ext1_wakeup(uint64_t mask, esp_ext1_wakeup_mode_t mode);
# 178 "C:/Users/nickt/git/esp-idf/components/esp32/include/esp_deep_sleep.h"
uint64_t esp_deep_sleep_get_ext1_wakeup_status();
# 191 "C:/Users/nickt/git/esp-idf/components/esp32/include/esp_deep_sleep.h"
esp_err_t esp_deep_sleep_pd_config(esp_deep_sleep_pd_domain_t domain,
                                   esp_deep_sleep_pd_option_t option);






void esp_deep_sleep_start() __attribute__((noreturn));
# 223 "C:/Users/nickt/git/esp-idf/components/esp32/include/esp_deep_sleep.h"
void esp_deep_sleep(uint64_t time_in_us) __attribute__((noreturn));
# 233 "C:/Users/nickt/git/esp-idf/components/esp32/include/esp_deep_sleep.h"
void system_deep_sleep(uint64_t time_in_us) __attribute__((noreturn, deprecated));







esp_deep_sleep_wakeup_cause_t esp_deep_sleep_get_wakeup_cause();
# 256 "C:/Users/nickt/git/esp-idf/components/esp32/include/esp_deep_sleep.h"
void esp_wake_deep_sleep(void);





typedef void (*esp_deep_sleep_wake_stub_fn_t)(void);
# 275 "C:/Users/nickt/git/esp-idf/components/esp32/include/esp_deep_sleep.h"
void esp_set_deep_sleep_wake_stub(esp_deep_sleep_wake_stub_fn_t new_stub);






esp_deep_sleep_wake_stub_fn_t esp_get_deep_sleep_wake_stub(void);






void esp_default_wake_deep_sleep(void);
# 19 "C:/Users/nickt/git/esp-idf/components/esp32/deep_sleep.c" 2
# 1 "C:/Users/nickt/git/esp-idf/components/log/include/esp_log.h" 1
# 19 "C:/Users/nickt/git/esp-idf/components/log/include/esp_log.h"
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stdarg.h" 1 3 4
# 98 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stdarg.h" 3 4

# 98 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stdarg.h" 3 4
typedef __gnuc_va_list va_list;
# 20 "C:/Users/nickt/git/esp-idf/components/log/include/esp_log.h" 2
# 1 "C:/esp/ArkPOS2-esp/build/include/sdkconfig.h" 1
# 21 "C:/Users/nickt/git/esp-idf/components/log/include/esp_log.h" 2
# 1 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/ets_sys.h" 1
# 22 "C:/Users/nickt/git/esp-idf/components/log/include/esp_log.h" 2
# 31 "C:/Users/nickt/git/esp-idf/components/log/include/esp_log.h"

# 31 "C:/Users/nickt/git/esp-idf/components/log/include/esp_log.h"
typedef enum {
    ESP_LOG_NONE,
    ESP_LOG_ERROR,
    ESP_LOG_WARN,
    ESP_LOG_INFO,
    ESP_LOG_DEBUG,
    ESP_LOG_VERBOSE
} esp_log_level_t;

typedef int (*vprintf_like_t)(const char *, va_list);
# 52 "C:/Users/nickt/git/esp-idf/components/log/include/esp_log.h"
void esp_log_level_set(const char* tag, esp_log_level_t level);
# 62 "C:/Users/nickt/git/esp-idf/components/log/include/esp_log.h"
void esp_log_set_vprintf(vprintf_like_t func);
# 76 "C:/Users/nickt/git/esp-idf/components/log/include/esp_log.h"
uint32_t esp_log_timestamp(void);
# 86 "C:/Users/nickt/git/esp-idf/components/log/include/esp_log.h"
uint32_t esp_log_early_timestamp(void);
# 96 "C:/Users/nickt/git/esp-idf/components/log/include/esp_log.h"
void esp_log_write(esp_log_level_t level, const char* tag, const char* format, ...) __attribute__ ((format (printf, 3, 4)));
# 108 "C:/Users/nickt/git/esp-idf/components/log/include/esp_log.h"
void esp_log_buffer_hex(const char *tag, const void *buffer, uint16_t buff_len);
# 120 "C:/Users/nickt/git/esp-idf/components/log/include/esp_log.h"
void esp_log_buffer_char(const char *tag, const void *buffer, uint16_t buff_len);
# 20 "C:/Users/nickt/git/esp-idf/components/esp32/deep_sleep.c" 2
# 1 "C:/Users/nickt/git/esp-idf/components/esp32/include/esp_clk.h" 1
# 15 "C:/Users/nickt/git/esp-idf/components/esp32/include/esp_clk.h"
       
# 32 "C:/Users/nickt/git/esp-idf/components/esp32/include/esp_clk.h"
void esp_clk_init(void);
# 43 "C:/Users/nickt/git/esp-idf/components/esp32/include/esp_clk.h"
uint32_t esp_clk_slowclk_cal_get();
# 55 "C:/Users/nickt/git/esp-idf/components/esp32/include/esp_clk.h"
void esp_clk_slowclk_cal_set(uint32_t value);
# 21 "C:/Users/nickt/git/esp-idf/components/esp32/deep_sleep.c" 2
# 1 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/cache.h" 1
# 18 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/cache.h"
# 1 "C:/Users/nickt/git/esp-idf/components/soc/esp32/include/soc/dport_access.h" 1
# 20 "C:/Users/nickt/git/esp-idf/components/soc/esp32/include/soc/dport_access.h"
# 1 "C:/Users/nickt/git/esp-idf/components/esp32/include/esp_dport_access.h" 1
# 22 "C:/Users/nickt/git/esp-idf/components/esp32/include/esp_dport_access.h"
void esp_dport_access_stall_other_cpu_start(void);
void esp_dport_access_stall_other_cpu_end(void);
void esp_dport_access_int_init(void);
void esp_dport_access_int_deinit(void);
# 21 "C:/Users/nickt/git/esp-idf/components/soc/esp32/include/soc/dport_access.h" 2
# 36 "C:/Users/nickt/git/esp-idf/components/soc/esp32/include/soc/dport_access.h"
static inline uint32_t __attribute__((section(".iram1"))) DPORT_REG_READ(uint32_t reg)
{
    uint32_t val;

    ;
    val = (*(volatile uint32_t *)(reg));
    ;

    return val;
}
# 88 "C:/Users/nickt/git/esp-idf/components/soc/esp32/include/soc/dport_access.h"
static inline uint32_t __attribute__((section(".iram1"))) DPORT_READ_PERI_REG(uint32_t addr)
{
    uint32_t val;

    ;
    val = (*((volatile uint32_t *)(addr)));
    ;

    return val;
}
# 19 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/cache.h" 2
# 40 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/cache.h"
void mmu_init(int cpu_no);
# 69 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/cache.h"
static inline unsigned int __attribute__((section(".iram1"))) cache_flash_mmu_set(int cpu_no, int pid, unsigned int vaddr, unsigned int paddr, int psize, int num)
{
    extern unsigned int cache_flash_mmu_set_rom(int cpu_no, int pid, unsigned int vaddr, unsigned int paddr, int psize, int num);

    unsigned int ret;

    ;
    ret = cache_flash_mmu_set_rom(cpu_no, pid, vaddr, paddr, psize, num);
    ;

    return ret;
}
# 109 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/cache.h"
static inline unsigned int __attribute__((section(".iram1"))) cache_sram_mmu_set(int cpu_no, int pid, unsigned int vaddr, unsigned int paddr, int psize, int num)
{
    extern unsigned int cache_sram_mmu_set_rom(int cpu_no, int pid, unsigned int vaddr, unsigned int paddr, int psize, int num);

    unsigned int ret;

    ;
    ret = cache_sram_mmu_set_rom(cpu_no, pid, vaddr, paddr, psize, num);
    ;

    return ret;
}
# 130 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/cache.h"
static inline void __attribute__((section(".iram1"))) Cache_Read_Init(int cpu_no)
{
    extern void Cache_Read_Init_rom(int cpu_no);
    ;
    Cache_Read_Init_rom(cpu_no);
    ;
}
# 146 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/cache.h"
static inline void __attribute__((section(".iram1"))) Cache_Flush(int cpu_no)
{
    extern void Cache_Flush_rom(int cpu_no);
    ;
    Cache_Flush_rom(cpu_no);
    ;
}
# 162 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/cache.h"
static inline void __attribute__((section(".iram1"))) Cache_Read_Disable(int cpu_no)
{
    extern void Cache_Read_Disable_rom(int cpu_no);
    ;
    Cache_Read_Disable_rom(cpu_no);
    ;
}
# 178 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/cache.h"
static inline void __attribute__((section(".iram1"))) Cache_Read_Enable(int cpu_no)
{
    extern void Cache_Read_Enable_rom(int cpu_no);
    ;
    Cache_Read_Enable_rom(cpu_no);
    ;
}
# 22 "C:/Users/nickt/git/esp-idf/components/esp32/deep_sleep.c" 2
# 1 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/rtc.h" 1
# 18 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/rtc.h"
# 1 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/ets_sys.h" 1
# 19 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/rtc.h" 2
# 74 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/rtc.h"
typedef enum {
    AWAKE = 0,
    LIGHT_SLEEP = 0x00000001,
    DEEP_SLEEP = 0x00000002
} SLEEP_MODE;

typedef enum {
    NO_MEAN = 0,
    POWERON_RESET = 1,
    SW_RESET = 3,
    OWDT_RESET = 4,
    DEEPSLEEP_RESET = 5,
    SDIO_RESET = 6,
    TG0WDT_SYS_RESET = 7,
    TG1WDT_SYS_RESET = 8,
    RTCWDT_SYS_RESET = 9,
    INTRUSION_RESET = 10,
    TGWDT_CPU_RESET = 11,
    SW_CPU_RESET = 12,
    RTCWDT_CPU_RESET = 13,
    EXT_CPU_RESET = 14,
    RTCWDT_BROWN_OUT_RESET = 15,
    RTCWDT_RTC_RESET = 16
} RESET_REASON;

typedef enum {
    NO_SLEEP = 0,
    EXT_EVENT0_TRIG = 0x00000001,
    EXT_EVENT1_TRIG = 0x00000002,
    GPIO_TRIG = 0x00000004,
    TIMER_EXPIRE = 0x00000008,
    SDIO_TRIG = 0x00000010,
    MAC_TRIG = 0x00000020,
    UART0_TRIG = 0x00000040,
    UART1_TRIG = 0x00000080,
    TOUCH_TRIG = 0x00000100,
    SAR_TRIG = 0x00000200,
    BT_TRIG = 0x00000400
} WAKEUP_REASON;

typedef enum {
    DISEN_WAKEUP = NO_SLEEP,
    EXT_EVENT0_TRIG_EN = EXT_EVENT0_TRIG,
    EXT_EVENT1_TRIG_EN = EXT_EVENT1_TRIG,
    GPIO_TRIG_EN = GPIO_TRIG,
    TIMER_EXPIRE_EN = TIMER_EXPIRE,
    SDIO_TRIG_EN = SDIO_TRIG,
    MAC_TRIG_EN = MAC_TRIG,
    UART0_TRIG_EN = UART0_TRIG,
    UART1_TRIG_EN = UART1_TRIG,
    TOUCH_TRIG_EN = TOUCH_TRIG,
    SAR_TRIG_EN = SAR_TRIG,
    BT_TRIG_EN = BT_TRIG
} WAKEUP_ENABLE;

typedef enum {
    NO_INT = 0,
    WAKEUP_INT = 0x00000001,
    REJECT_INT = 0x00000002,
    SDIO_IDLE_INT = 0x00000004,
    RTC_WDT_INT = 0x00000008,
    RTC_TIME_VALID_INT = 0x00000010
} RTC_INT_REASON;

typedef enum {
    DISEN_INT = 0,
    WAKEUP_INT_EN = WAKEUP_INT,
    REJECT_INT_EN = REJECT_INT,
    SDIO_IDLE_INT_EN = SDIO_IDLE_INT,
    RTC_WDT_INT_EN = RTC_WDT_INT,
    RTC_TIME_VALID_INT_EN = RTC_TIME_VALID_INT
} RTC_INT_EN;
# 154 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/rtc.h"
RESET_REASON rtc_get_reset_reason(int cpu_no);
# 163 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/rtc.h"
WAKEUP_REASON rtc_get_wakeup_cause(void);
# 174 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/rtc.h"
uint32_t calc_rtc_memory_crc(uint32_t start_addr, uint32_t crc_len);
# 183 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/rtc.h"
void set_rtc_memory_crc(void);
# 195 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/rtc.h"
void software_reset(void);
# 207 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/rtc.h"
void software_reset_cpu(int cpu_no);
# 23 "C:/Users/nickt/git/esp-idf/components/esp32/deep_sleep.c" 2
# 1 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/uart.h" 1
# 22 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/uart.h"
# 1 "C:/Users/nickt/git/esp-idf/components/soc/esp32/include/soc/uart_reg.h" 1
# 23 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/uart.h" 2
# 68 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/uart.h"
typedef enum {
    UART_LINE_STATUS_INT_FLAG = 0x06,
    UART_RCV_FIFO_INT_FLAG = 0x04,
    UART_RCV_TMOUT_INT_FLAG = 0x0C,
    UART_TXBUFF_EMPTY_INT_FLAG = 0x02
} UartIntType;

typedef enum {
    RCV_ONE_BYTE = 0x0,
    RCV_FOUR_BYTE = 0x1,
    RCV_EIGHT_BYTE = 0x2,
    RCV_FOURTEEN_BYTE = 0x3
} UartRcvFifoTrgLvl;

typedef enum {
    FIVE_BITS = 0x0,
    SIX_BITS = 0x1,
    SEVEN_BITS = 0x2,
    EIGHT_BITS = 0x3
} UartBitsNum4Char;

typedef enum {
    ONE_STOP_BIT = 1,
    ONE_HALF_STOP_BIT = 2,
    TWO_STOP_BIT = 3
} UartStopBitsNum;

typedef enum {
    NONE_BITS = 0,
    ODD_BITS = 2,
    EVEN_BITS = 3

} UartParityMode;

typedef enum {
    STICK_PARITY_DIS = 0,
    STICK_PARITY_EN = 2
} UartExistParity;

typedef enum {
    BIT_RATE_9600 = 9600,
    BIT_RATE_19200 = 19200,
    BIT_RATE_38400 = 38400,
    BIT_RATE_57600 = 57600,
    BIT_RATE_115200 = 115200,
    BIT_RATE_230400 = 230400,
    BIT_RATE_460800 = 460800,
    BIT_RATE_921600 = 921600
} UartBautRate;

typedef enum {
    NONE_CTRL,
    HARDWARE_CTRL,
    XON_XOFF_CTRL
} UartFlowCtrl;

typedef enum {
    EMPTY,
    UNDER_WRITE,
    WRITE_OVER
} RcvMsgBuffState;

typedef struct {

    uint8_t *pRcvMsgBuff;
    uint8_t *pWritePos;
    uint8_t *pReadPos;
    uint8_t TrigLvl;
    RcvMsgBuffState BuffState;
} RcvMsgBuff;

typedef struct {
    uint32_t TrxBuffSize;
    uint8_t *pTrxBuff;
} TrxMsgBuff;

typedef enum {
    BAUD_RATE_DET,
    WAIT_SYNC_FRM,
    SRCH_MSG_HEAD,
    RCV_MSG_BODY,
    RCV_ESC_CHAR,
} RcvMsgState;

typedef struct {
    UartBautRate baut_rate;
    UartBitsNum4Char data_bits;
    UartExistParity exist_parity;
    UartParityMode parity;
    UartStopBitsNum stop_bits;
    UartFlowCtrl flow_ctrl;
    uint8_t buff_uart_no;
    uint8_t tx_uart_no;
    RcvMsgBuff rcv_buff;

    RcvMsgState rcv_state;
    int received;
} UartDevice;
# 175 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/uart.h"
void uartAttach(void);
# 187 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/uart.h"
void Uart_Init(uint8_t uart_no, uint32_t clock);
# 199 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/uart.h"
void uart_div_modify(uint8_t uart_no, uint32_t DivLatchValue);
# 212 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/uart.h"
int uart_baudrate_detect(uint8_t uart_no, uint8_t is_sync);
# 222 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/uart.h"
void uart_tx_switch(uint8_t uart_no);
# 232 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/uart.h"
void uart_buff_switch(uint8_t uart_no);
# 241 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/uart.h"
STATUS uart_tx_one_char(uint8_t TxChar);
# 251 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/uart.h"
STATUS uart_tx_one_char2(uint8_t TxChar);
# 260 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/uart.h"
void uart_tx_flush(uint8_t uart_no);
# 270 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/uart.h"
static inline void uart_tx_wait_idle(uint8_t uart_no) {
    while(({ ; ((({ ; (*(volatile uint32_t *)(((0x3ff40000 + (uart_no) * 0x10000 + ( uart_no > 1 ? 0xe000 : 0 ) ) + 0x1C))); }) >> (24)) & (0xF)); })) {
        ;
    }
}
# 285 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/uart.h"
STATUS uart_rx_one_char(uint8_t *pRxChar);
# 295 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/uart.h"
char uart_rx_one_char_block(void);
# 307 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/uart.h"
STATUS UartRxString(uint8_t *pString, uint8_t MaxStrlen);
# 317 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/uart.h"
void uart_rx_intr_handler(void *para);
# 330 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/uart.h"
STATUS uart_rx_readbuff( RcvMsgBuff *pRxBuff, uint8_t *pRxByte);
# 341 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/uart.h"
STATUS UartGetCmdLn(uint8_t *pCmdLn);
# 351 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/uart.h"
UartDevice *GetUartDevice(void);
# 363 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/uart.h"
void send_packet(uint8_t *p, int len);
# 378 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/uart.h"
int recv_packet(uint8_t *p, int len, uint8_t is_sync);
# 391 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/uart.h"
STATUS SendMsg(uint8_t *pData, uint16_t DataLen);
# 407 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/uart.h"
STATUS RcvMsg(uint8_t *pData, uint16_t MaxDataLen, uint8_t is_sync);

extern UartDevice UartDev;
# 24 "C:/Users/nickt/git/esp-idf/components/esp32/deep_sleep.c" 2
# 1 "C:/Users/nickt/git/esp-idf/components/soc/esp32/include/soc/cpu.h" 1
# 20 "C:/Users/nickt/git/esp-idf/components/soc/esp32/include/soc/cpu.h"
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 21 "C:/Users/nickt/git/esp-idf/components/soc/esp32/include/soc/cpu.h" 2
# 32 "C:/Users/nickt/git/esp-idf/components/soc/esp32/include/soc/cpu.h"
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
# 65 "C:/Users/nickt/git/esp-idf/components/soc/esp32/include/soc/cpu.h"
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
# 95 "C:/Users/nickt/git/esp-idf/components/soc/esp32/include/soc/cpu.h"

# 95 "C:/Users/nickt/git/esp-idf/components/soc/esp32/include/soc/cpu.h" 3 4
_Bool 
# 95 "C:/Users/nickt/git/esp-idf/components/soc/esp32/include/soc/cpu.h"
    esp_cpu_in_ocd_debug_mode();
# 25 "C:/Users/nickt/git/esp-idf/components/esp32/deep_sleep.c" 2
# 1 "C:/Users/nickt/git/esp-idf/components/soc/esp32/include/soc/rtc.h" 1
# 14 "C:/Users/nickt/git/esp-idf/components/soc/esp32/include/soc/rtc.h"
       


# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 18 "C:/Users/nickt/git/esp-idf/components/soc/esp32/include/soc/rtc.h" 2
# 60 "C:/Users/nickt/git/esp-idf/components/soc/esp32/include/soc/rtc.h"
typedef enum {
    RTC_XTAL_FREQ_AUTO = 0,
    RTC_XTAL_FREQ_40M = 40,
    RTC_XTAL_FREQ_26M = 26,
    RTC_XTAL_FREQ_24M = 24,
} rtc_xtal_freq_t;




typedef enum {
    RTC_CPU_FREQ_XTAL = 0,
    RTC_CPU_FREQ_80M = 1,
    RTC_CPU_FREQ_160M = 2,
    RTC_CPU_FREQ_240M = 3,
    RTC_CPU_FREQ_2M = 4,
} rtc_cpu_freq_t;




typedef enum {
    RTC_SLOW_FREQ_RTC = 0,
    RTC_SLOW_FREQ_32K_XTAL = 1,
    RTC_SLOW_FREQ_8MD256 = 2,
} rtc_slow_freq_t;




typedef enum {
    RTC_FAST_FREQ_XTALD4 = 0,
    RTC_FAST_FREQ_8M = 1,
} rtc_fast_freq_t;







typedef enum {
    RTC_CAL_RTC_MUX = 0,
    RTC_CAL_8MD256 = 1,
    RTC_CAL_32K_XTAL = 2
} rtc_cal_sel_t;




typedef struct {
    rtc_xtal_freq_t xtal_freq : 8;
    rtc_cpu_freq_t cpu_freq : 3;
    rtc_fast_freq_t fast_freq : 1;
    rtc_slow_freq_t slow_freq : 2;
    uint32_t clk_8m_div : 3;
    uint32_t slow_clk_dcap : 8;
    uint32_t clk_8m_dfreq : 8;
} rtc_clk_config_t;
# 147 "C:/Users/nickt/git/esp-idf/components/soc/esp32/include/soc/rtc.h"
void rtc_clk_init(rtc_clk_config_t cfg);
# 157 "C:/Users/nickt/git/esp-idf/components/soc/esp32/include/soc/rtc.h"
rtc_xtal_freq_t rtc_clk_xtal_freq_get();





void rtc_clk_32k_enable(
# 163 "C:/Users/nickt/git/esp-idf/components/soc/esp32/include/soc/rtc.h" 3 4
                       _Bool 
# 163 "C:/Users/nickt/git/esp-idf/components/soc/esp32/include/soc/rtc.h"
                            en);






# 169 "C:/Users/nickt/git/esp-idf/components/soc/esp32/include/soc/rtc.h" 3 4
_Bool 
# 169 "C:/Users/nickt/git/esp-idf/components/soc/esp32/include/soc/rtc.h"
    rtc_clk_32k_enabled();
# 178 "C:/Users/nickt/git/esp-idf/components/soc/esp32/include/soc/rtc.h"
void rtc_clk_32k_bootstrap();
# 196 "C:/Users/nickt/git/esp-idf/components/soc/esp32/include/soc/rtc.h"
void rtc_clk_8m_enable(
# 196 "C:/Users/nickt/git/esp-idf/components/soc/esp32/include/soc/rtc.h" 3 4
                      _Bool 
# 196 "C:/Users/nickt/git/esp-idf/components/soc/esp32/include/soc/rtc.h"
                           clk_8m_en, 
# 196 "C:/Users/nickt/git/esp-idf/components/soc/esp32/include/soc/rtc.h" 3 4
                                      _Bool 
# 196 "C:/Users/nickt/git/esp-idf/components/soc/esp32/include/soc/rtc.h"
                                           d256_en);






# 202 "C:/Users/nickt/git/esp-idf/components/soc/esp32/include/soc/rtc.h" 3 4
_Bool 
# 202 "C:/Users/nickt/git/esp-idf/components/soc/esp32/include/soc/rtc.h"
    rtc_clk_8m_enabled();






# 208 "C:/Users/nickt/git/esp-idf/components/soc/esp32/include/soc/rtc.h" 3 4
_Bool 
# 208 "C:/Users/nickt/git/esp-idf/components/soc/esp32/include/soc/rtc.h"
    rtc_clk_8md256_enabled();
# 226 "C:/Users/nickt/git/esp-idf/components/soc/esp32/include/soc/rtc.h"
void rtc_clk_apll_enable(
# 226 "C:/Users/nickt/git/esp-idf/components/soc/esp32/include/soc/rtc.h" 3 4
                        _Bool 
# 226 "C:/Users/nickt/git/esp-idf/components/soc/esp32/include/soc/rtc.h"
                             enable, uint32_t sdm0, uint32_t sdm1,
        uint32_t sdm2, uint32_t o_div);





void rtc_clk_slow_freq_set(rtc_slow_freq_t slow_freq);





rtc_slow_freq_t rtc_clk_slow_freq_get();
# 253 "C:/Users/nickt/git/esp-idf/components/soc/esp32/include/soc/rtc.h"
uint32_t rtc_clk_slow_freq_get_hz();





void rtc_clk_fast_freq_set(rtc_fast_freq_t fast_freq);





rtc_fast_freq_t rtc_clk_fast_freq_get();
# 277 "C:/Users/nickt/git/esp-idf/components/soc/esp32/include/soc/rtc.h"
void rtc_clk_cpu_freq_set(rtc_cpu_freq_t cpu_freq);
# 290 "C:/Users/nickt/git/esp-idf/components/soc/esp32/include/soc/rtc.h"
rtc_cpu_freq_t rtc_clk_cpu_freq_get();






uint32_t rtc_clk_cpu_freq_value(rtc_cpu_freq_t cpu_freq);
# 311 "C:/Users/nickt/git/esp-idf/components/soc/esp32/include/soc/rtc.h"
void rtc_clk_apb_freq_update(uint32_t apb_freq);





uint32_t rtc_clk_apb_freq_get();
# 334 "C:/Users/nickt/git/esp-idf/components/soc/esp32/include/soc/rtc.h"
uint32_t rtc_clk_cal(rtc_cal_sel_t cal_clk, uint32_t slow_clk_cycles);
# 343 "C:/Users/nickt/git/esp-idf/components/soc/esp32/include/soc/rtc.h"
uint32_t rtc_clk_cal_ratio(rtc_cal_sel_t cal_clk, uint32_t slow_clk_cycles);
# 352 "C:/Users/nickt/git/esp-idf/components/soc/esp32/include/soc/rtc.h"
uint64_t rtc_time_us_to_slowclk(uint64_t time_in_us, uint32_t period);
# 361 "C:/Users/nickt/git/esp-idf/components/soc/esp32/include/soc/rtc.h"
uint64_t rtc_time_slowclk_to_us(uint64_t rtc_cycles, uint32_t period);
# 374 "C:/Users/nickt/git/esp-idf/components/soc/esp32/include/soc/rtc.h"
uint64_t rtc_time_get();




typedef struct {
    uint32_t soc_clk_sel : 2;
    uint32_t lslp_mem_inf_fpu : 1;
    uint32_t rtc_mem_inf_fpu : 1;
    uint32_t rtc_mem_inf_follow_cpu : 1;
    uint32_t rtc_fastmem_pd_en : 1;
    uint32_t rtc_slowmem_pd_en : 1;
    uint32_t rtc_peri_pd_en : 1;
    uint32_t wifi_pd_en : 1;
    uint32_t rom_mem_pd_en : 1;
    uint32_t deep_slp : 1;
    uint32_t wdt_flashboot_mod_en : 1;
    uint32_t dig_dbias_wak : 3;
    uint32_t dig_dbias_slp : 3;
    uint32_t rtc_dbias_wak : 3;
    uint32_t rtc_dbias_slp : 3;
    uint32_t lslp_meminf_pd : 1;
} rtc_sleep_config_t;
# 444 "C:/Users/nickt/git/esp-idf/components/soc/esp32/include/soc/rtc.h"
void rtc_sleep_init(rtc_sleep_config_t cfg);







void rtc_sleep_set_wakeup_time(uint64_t t);
# 492 "C:/Users/nickt/git/esp-idf/components/soc/esp32/include/soc/rtc.h"
uint32_t rtc_sleep_start(uint32_t wakeup_opt, uint32_t reject_opt);




typedef struct {
    uint32_t ck8m_wait : 8;
    uint32_t xtal_wait : 8;
    uint32_t pll_wait : 8;
    uint32_t clkctl_init : 1;
    uint32_t pwrctl_init : 1;
    uint32_t rtc_dboost_fpd : 1;
} rtc_config_t;
# 525 "C:/Users/nickt/git/esp-idf/components/soc/esp32/include/soc/rtc.h"
void rtc_init(rtc_config_t cfg);
# 26 "C:/Users/nickt/git/esp-idf/components/esp32/deep_sleep.c" 2
# 1 "C:/Users/nickt/git/esp-idf/components/soc/esp32/include/soc/rtc_cntl_reg.h" 1
# 27 "C:/Users/nickt/git/esp-idf/components/esp32/deep_sleep.c" 2

# 1 "C:/Users/nickt/git/esp-idf/components/soc/esp32/include/soc/sens_reg.h" 1
# 29 "C:/Users/nickt/git/esp-idf/components/esp32/deep_sleep.c" 2
# 1 "C:/Users/nickt/git/esp-idf/components/soc/esp32/include/soc/dport_reg.h" 1
# 20 "C:/Users/nickt/git/esp-idf/components/soc/esp32/include/soc/dport_reg.h"
# 1 "C:/Users/nickt/git/esp-idf/components/soc/esp32/include/soc/dport_access.h" 1
# 21 "C:/Users/nickt/git/esp-idf/components/soc/esp32/include/soc/dport_reg.h" 2
# 30 "C:/Users/nickt/git/esp-idf/components/esp32/deep_sleep.c" 2
# 1 "C:/Users/nickt/git/esp-idf/components/driver/include/driver/rtc_io.h" 1
# 32 "C:/Users/nickt/git/esp-idf/components/driver/include/driver/rtc_io.h"
typedef struct {
    uint32_t reg;
    uint32_t mux;
    uint32_t func;
    uint32_t ie;
    uint32_t pullup;
    uint32_t pulldown;
    uint32_t slpsel;
    uint32_t slpie;
    uint32_t hold;
    uint32_t hold_force;
    int rtc_num;
} rtc_gpio_desc_t;

typedef enum {
    RTC_GPIO_MODE_INPUT_ONLY ,
    RTC_GPIO_MODE_OUTPUT_ONLY,
    RTC_GPIO_MODE_INPUT_OUTUT,
    RTC_GPIO_MODE_DISABLED,
} rtc_gpio_mode_t;
# 60 "C:/Users/nickt/git/esp-idf/components/driver/include/driver/rtc_io.h"
extern const rtc_gpio_desc_t rtc_gpio_desc[40];







inline static 
# 68 "C:/Users/nickt/git/esp-idf/components/driver/include/driver/rtc_io.h" 3 4
             _Bool 
# 68 "C:/Users/nickt/git/esp-idf/components/driver/include/driver/rtc_io.h"
                  rtc_gpio_is_valid_gpio(gpio_num_t gpio_num)
{
    return gpio_num < 40
        && rtc_gpio_desc[gpio_num].reg != 0;
}
# 87 "C:/Users/nickt/git/esp-idf/components/driver/include/driver/rtc_io.h"
esp_err_t rtc_gpio_init(gpio_num_t gpio_num);
# 98 "C:/Users/nickt/git/esp-idf/components/driver/include/driver/rtc_io.h"
esp_err_t rtc_gpio_deinit(gpio_num_t gpio_num);
# 110 "C:/Users/nickt/git/esp-idf/components/driver/include/driver/rtc_io.h"
uint32_t rtc_gpio_get_level(gpio_num_t gpio_num);
# 122 "C:/Users/nickt/git/esp-idf/components/driver/include/driver/rtc_io.h"
esp_err_t rtc_gpio_set_level(gpio_num_t gpio_num, uint32_t level);
# 137 "C:/Users/nickt/git/esp-idf/components/driver/include/driver/rtc_io.h"
esp_err_t rtc_gpio_set_direction(gpio_num_t gpio_num, rtc_gpio_mode_t mode);
# 151 "C:/Users/nickt/git/esp-idf/components/driver/include/driver/rtc_io.h"
esp_err_t rtc_gpio_pullup_en(gpio_num_t gpio_num);
# 165 "C:/Users/nickt/git/esp-idf/components/driver/include/driver/rtc_io.h"
esp_err_t rtc_gpio_pulldown_en(gpio_num_t gpio_num);
# 179 "C:/Users/nickt/git/esp-idf/components/driver/include/driver/rtc_io.h"
esp_err_t rtc_gpio_pullup_dis(gpio_num_t gpio_num);
# 193 "C:/Users/nickt/git/esp-idf/components/driver/include/driver/rtc_io.h"
esp_err_t rtc_gpio_pulldown_dis(gpio_num_t gpio_num);
# 208 "C:/Users/nickt/git/esp-idf/components/driver/include/driver/rtc_io.h"
esp_err_t rtc_gpio_hold_en(gpio_num_t gpio_num);
# 222 "C:/Users/nickt/git/esp-idf/components/driver/include/driver/rtc_io.h"
esp_err_t rtc_gpio_hold_dis(gpio_num_t gpio_num);
# 233 "C:/Users/nickt/git/esp-idf/components/driver/include/driver/rtc_io.h"
void rtc_gpio_force_hold_dis_all();
# 31 "C:/Users/nickt/git/esp-idf/components/esp32/deep_sleep.c" 2
# 1 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/FreeRTOS.h" 1
# 76 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/FreeRTOS.h"
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 77 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/FreeRTOS.h" 2
# 99 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/FreeRTOS.h"
# 1 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/FreeRTOSConfig.h" 1
# 73 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/FreeRTOSConfig.h"
# 1 "C:/esp/ArkPOS2-esp/build/include/sdkconfig.h" 1
# 74 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/FreeRTOSConfig.h" 2
# 102 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/FreeRTOSConfig.h"
# 1 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/xtensa_config.h" 1
# 103 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/FreeRTOSConfig.h" 2




# 1 "C:/Users/nickt/git/esp-idf/components/newlib/include/stdlib.h" 1
# 10 "C:/Users/nickt/git/esp-idf/components/newlib/include/stdlib.h"
# 1 "C:/Users/nickt/git/esp-idf/components/newlib/include/machine/ieeefp.h" 1
# 11 "C:/Users/nickt/git/esp-idf/components/newlib/include/stdlib.h" 2





# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 17 "C:/Users/nickt/git/esp-idf/components/newlib/include/stdlib.h" 2



# 1 "C:/Users/nickt/git/esp-idf/components/newlib/include/machine/stdlib.h" 1
# 21 "C:/Users/nickt/git/esp-idf/components/newlib/include/stdlib.h" 2

# 1 "C:/Users/nickt/git/esp-idf/components/newlib/include/alloca.h" 1
# 23 "C:/Users/nickt/git/esp-idf/components/newlib/include/stdlib.h" 2








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
# 67 "C:/Users/nickt/git/esp-idf/components/newlib/include/stdlib.h"
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
# 258 "C:/Users/nickt/git/esp-idf/components/newlib/include/stdlib.h"
char * _dtoa_r (struct _reent *, double, int, int, int *, int*, char**);

void * _malloc_r (struct _reent *, size_t) ;
void * _calloc_r (struct _reent *, size_t, size_t) ;
void _free_r (struct _reent *, void *) ;
void * _realloc_r (struct _reent *, void *, size_t) ;
void _mstats_r (struct _reent *, char *);

int _system_r (struct _reent *, const char *);

void __eprintf (const char *, const char *, unsigned int, const char *);
# 291 "C:/Users/nickt/git/esp-idf/components/newlib/include/stdlib.h"
extern long double strtold (const char *restrict, char **restrict);




# 108 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/FreeRTOSConfig.h" 2
# 100 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/FreeRTOS.h" 2


# 1 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/projdefs.h" 1
# 77 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/projdefs.h"
typedef void (*TaskFunction_t)( void * );
# 103 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/FreeRTOS.h" 2


# 1 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/portable.h" 1
# 87 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/portable.h"
# 1 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/deprecated_definitions.h" 1
# 88 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/portable.h" 2






# 1 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/portmacro.h" 1
# 77 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/portmacro.h"
# 1 "C:/Users/nickt/git/esp-idf/components/esp32/include/xtensa/tie/xt_core.h" 1
# 78 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/portmacro.h" 2



# 1 "C:/Users/nickt/git/esp-idf/components/esp32/include/xtensa/xtruntime.h" 1
# 30 "C:/Users/nickt/git/esp-idf/components/esp32/include/xtensa/xtruntime.h"
# 1 "C:/Users/nickt/git/esp-idf/components/esp32/include/xtensa/config/specreg.h" 1
# 31 "C:/Users/nickt/git/esp-idf/components/esp32/include/xtensa/xtruntime.h" 2
# 1 "C:/Users/nickt/git/esp-idf/components/esp32/include/xtensa/xtruntime-core-state.h" 1
# 44 "C:/Users/nickt/git/esp-idf/components/esp32/include/xtensa/xtruntime-core-state.h"
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
# 131 "C:/Users/nickt/git/esp-idf/components/esp32/include/xtensa/xtruntime-core-state.h"
long cpenable;




long tlbs[8*2];
# 163 "C:/Users/nickt/git/esp-idf/components/esp32/include/xtensa/xtruntime-core-state.h"
char ncp[48] __attribute__((aligned(4)));

char cp0[72] __attribute__((aligned(4)));
char cp1[0] __attribute__((aligned(1)));
char cp2[0] __attribute__((aligned(1)));
char cp3[0] __attribute__((aligned(1)));
char cp4[0] __attribute__((aligned(1)));
char cp5[0] __attribute__((aligned(1)));
char cp6[0] __attribute__((aligned(1)));
char cp7[0] __attribute__((aligned(1)));
# 183 "C:/Users/nickt/git/esp-idf/components/esp32/include/xtensa/xtruntime-core-state.h"
} XtosCoreState;
# 32 "C:/Users/nickt/git/esp-idf/components/esp32/include/xtensa/xtruntime.h" 2
# 61 "C:/Users/nickt/git/esp-idf/components/esp32/include/xtensa/xtruntime.h"
typedef void (_xtos_handler_func)();

typedef _xtos_handler_func *_xtos_handler;
# 151 "C:/Users/nickt/git/esp-idf/components/esp32/include/xtensa/xtruntime.h"
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
# 202 "C:/Users/nickt/git/esp-idf/components/esp32/include/xtensa/xtruntime.h"
extern void _xtos_timer_0_delta( int cycles );


extern void _xtos_timer_1_delta( int cycles );


extern void _xtos_timer_2_delta( int cycles );
# 82 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/portmacro.h" 2
# 1 "C:/Users/nickt/git/esp-idf/components/esp32/include/esp_crosscore_int.h" 1
# 27 "C:/Users/nickt/git/esp-idf/components/esp32/include/esp_crosscore_int.h"
void esp_crosscore_int_init();
# 40 "C:/Users/nickt/git/esp-idf/components/esp32/include/esp_crosscore_int.h"
void esp_crosscore_int_send_yield(int coreId);
# 83 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/portmacro.h" 2
# 107 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/portmacro.h"
typedef uint8_t StackType_t;
typedef int BaseType_t;
typedef unsigned int UBaseType_t;





 typedef uint32_t TickType_t;





# 1 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/portbenchmark.h" 1
# 122 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/portmacro.h" 2

# 1 "C:/esp/ArkPOS2-esp/build/include/sdkconfig.h" 1
# 124 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/portmacro.h" 2




typedef struct {
 volatile uint32_t mux;




} portMUX_TYPE;
# 173 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/portmacro.h"
void vPortAssertIfInISR();
# 202 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/portmacro.h"
void vPortCPUInitializeMutex(portMUX_TYPE *mux);
# 213 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/portmacro.h"
void vTaskExitCritical( portMUX_TYPE *mux );
void vTaskEnterCritical( portMUX_TYPE *mux );
void vPortCPUAcquireMutex(portMUX_TYPE *mux);
int vPortCPUReleaseMutex(portMUX_TYPE *mux);
# 227 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/portmacro.h"
static inline unsigned portENTER_CRITICAL_NESTED() { unsigned state = ({ unsigned __tmp; __asm__ __volatile__( "rsil	%0, " "3" "\n" : "=a" (__tmp) : : "memory" ); __tmp;}); ; return state; }
# 244 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/portmacro.h"
static inline void uxPortCompareSet(volatile uint32_t *addr, uint32_t compare, uint32_t *set) {
    __asm__ __volatile__(
        "WSR 	    %2,SCOMPARE1 \n"
        "ISYNC      \n"
        "S32C1I     %0, %1, 0	 \n"
        :"=r"(*set)
        :"r"(addr), "r"(compare), "0"(*set)
        );
}
# 268 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/portmacro.h"
void vPortYield( void );
void _frxt_setup_switch( void );



static inline uint32_t xPortGetCoreID();
# 294 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/portmacro.h"
typedef struct {

 volatile StackType_t* coproc_area;
# 311 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/portmacro.h"
} xMPU_SETTINGS;
# 323 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/portmacro.h"
void _xt_coproc_release(volatile void * coproc_sa_base);
# 95 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/portable.h" 2
# 125 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/portable.h"
# 1 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/mpu_wrappers.h" 1
# 126 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/portable.h" 2
# 134 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/portable.h"
 StackType_t *pxPortInitialiseStack( StackType_t *pxTopOfStack, TaskFunction_t pxCode, void *pvParameters, BaseType_t xRunPrivileged ) ;





typedef struct HeapRegion
{
 uint8_t *pucStartAddress;
 size_t xSizeInBytes;
} HeapRegion_t;
# 157 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/portable.h"
void vPortDefineHeapRegions( const HeapRegion_t * const pxHeapRegions );





void *pvPortMalloc( size_t xSize ) ;
void vPortFree( void *pv ) ;
void vPortInitialiseBlocks( void ) ;
size_t xPortGetFreeHeapSize( void ) ;
size_t xPortGetMinimumEverFreeHeapSize( void ) ;





BaseType_t xPortStartScheduler( void ) ;






void vPortEndScheduler( void ) ;







void vPortYieldOtherCore( BaseType_t coreid) ;






void vPortSetStackWatchpoint( void* pxStackStart );





BaseType_t xPortInIsrContext();
# 211 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/portable.h"
 struct xMEMORY_REGION;
 void vPortStoreTaskMPUSettings( xMPU_SETTINGS *xMPUSettings, const struct xMEMORY_REGION * const xRegions, StackType_t *pxBottomOfStack, uint32_t usStackDepth ) ;
 void vPortReleaseTaskMPUSettings( xMPU_SETTINGS *xMPUSettings );



static inline uint32_t xPortGetCoreID() {
    int id;
    asm volatile(
        "rsr.prid %0\n"
        " extui %0,%0,13,1"
        :"=r"(id));
    return id;
}


uint32_t xPortGetTickRateHz(void);
# 106 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/FreeRTOS.h" 2
# 819 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/FreeRTOS.h"
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
# 855 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/FreeRTOS.h"
typedef struct xSTATIC_TCB
{
 void *pxDummy1;

  xMPU_SETTINGS xDummy2;

 StaticListItem_t xDummy3[ 2 ];
 UBaseType_t uxDummy5;
 void *pxDummy6;
 uint8_t ucDummy7[ ( 16 ) ];
    UBaseType_t uxDummyCoreId;




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
# 919 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/FreeRTOS.h"
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




    } sDummy12;

} StaticQueue_t;
typedef StaticQueue_t StaticSemaphore_t;
# 32 "C:/Users/nickt/git/esp-idf/components/esp32/deep_sleep.c" 2
# 1 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/task.h" 1
# 78 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/task.h"
# 1 "C:/Users/nickt/git/esp-idf/components/newlib/include/limits.h" 1
# 131 "C:/Users/nickt/git/esp-idf/components/newlib/include/limits.h"
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include-fixed\\limits.h" 1 3 4
# 132 "C:/Users/nickt/git/esp-idf/components/newlib/include/limits.h" 2
# 79 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/task.h" 2

# 1 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/list.h" 1
# 181 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/list.h"
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
# 399 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/list.h"
void vListInitialise( List_t * const pxList );
# 410 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/list.h"
void vListInitialiseItem( ListItem_t * const pxItem );
# 423 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/list.h"
void vListInsert( List_t * const pxList, ListItem_t * const pxNewListItem );
# 444 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/list.h"
void vListInsertEnd( List_t * const pxList, ListItem_t * const pxNewListItem );
# 459 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/list.h"
UBaseType_t uxListRemove( ListItem_t * const pxItemToRemove );
# 81 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/task.h" 2
# 108 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/task.h"
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
# 378 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/task.h"
    BaseType_t xTaskCreatePinnedToCore( TaskFunction_t pxTaskCode,
                   const char * const pcName,
                   const uint32_t usStackDepth,
                   void * const pvParameters,
                   UBaseType_t uxPriority,
                   TaskHandle_t * const pxCreatedTask,
                   const BaseType_t xCoreID);
# 579 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/task.h"
 BaseType_t xTaskCreateRestricted( const TaskParameters_t * const pxTaskDefinition, TaskHandle_t *pxCreatedTask ) ;
# 628 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/task.h"
void vTaskAllocateMPURegions( TaskHandle_t xTask, const MemoryRegion_t * const pxRegions ) ;
# 669 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/task.h"
void vTaskDelete( TaskHandle_t xTaskToDelete ) ;
# 721 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/task.h"
void vTaskDelay( const TickType_t xTicksToDelay ) ;
# 780 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/task.h"
void vTaskDelayUntil( TickType_t * const pxPreviousWakeTime, const TickType_t xTimeIncrement ) ;
# 827 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/task.h"
UBaseType_t uxTaskPriorityGet( TaskHandle_t xTask ) ;







UBaseType_t uxTaskPriorityGetFromISR( TaskHandle_t xTask ) ;
# 853 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/task.h"
eTaskState eTaskGetState( TaskHandle_t xTask ) ;
# 895 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/task.h"
void vTaskPrioritySet( TaskHandle_t xTask, UBaseType_t uxNewPriority ) ;
# 946 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/task.h"
void vTaskSuspend( TaskHandle_t xTaskToSuspend ) ;
# 995 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/task.h"
void vTaskResume( TaskHandle_t xTaskToResume ) ;
# 1024 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/task.h"
BaseType_t xTaskResumeFromISR( TaskHandle_t xTaskToResume ) ;
# 1057 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/task.h"
void vTaskStartScheduler( void ) ;
# 1113 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/task.h"
void vTaskEndScheduler( void ) ;
# 1164 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/task.h"
void vTaskSuspendAll( void ) ;
# 1218 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/task.h"
BaseType_t xTaskResumeAll( void ) ;
# 1233 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/task.h"
TickType_t xTaskGetTickCount( void ) ;
# 1249 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/task.h"
TickType_t xTaskGetTickCountFromISR( void ) ;
# 1263 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/task.h"
UBaseType_t uxTaskGetNumberOfTasks( void ) ;
# 1277 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/task.h"
char *pcTaskGetTaskName( TaskHandle_t xTaskToQuery ) ;
# 1298 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/task.h"
UBaseType_t uxTaskGetStackHighWaterMark( TaskHandle_t xTask ) ;
# 1334 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/task.h"
 void vTaskSetThreadLocalStoragePointer( TaskHandle_t xTaskToSet, BaseType_t xIndex, void *pvValue ) ;
 void *pvTaskGetThreadLocalStoragePointer( TaskHandle_t xTaskToQuery, BaseType_t xIndex ) ;


  typedef void (*TlsDeleteCallbackFunction_t)( int, void * );
  void vTaskSetThreadLocalStoragePointerAndDelCallback( TaskHandle_t xTaskToSet, BaseType_t xIndex, void *pvValue , TlsDeleteCallbackFunction_t xDelCallback);
# 1355 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/task.h"
BaseType_t xTaskCallApplicationTaskHook( TaskHandle_t xTask, void *pvParameter ) ;
# 1364 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/task.h"
TaskHandle_t xTaskGetIdleTaskHandle( void );
# 1463 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/task.h"
UBaseType_t uxTaskGetSystemState( TaskStatus_t * const pxTaskStatusArray, const UBaseType_t uxArraySize, uint32_t * const pulTotalRunTime );
# 1510 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/task.h"
void vTaskList( char * pcWriteBuffer ) ;
# 1564 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/task.h"
void vTaskGetRunTimeStats( char *pcWriteBuffer ) ;
# 1641 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/task.h"
BaseType_t xTaskNotify( TaskHandle_t xTaskToNotify, uint32_t ulValue, eNotifyAction eAction );
# 1730 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/task.h"
BaseType_t xTaskNotifyFromISR( TaskHandle_t xTaskToNotify, uint32_t ulValue, eNotifyAction eAction, BaseType_t *pxHigherPriorityTaskWoken );
# 1805 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/task.h"
BaseType_t xTaskNotifyWait( uint32_t ulBitsToClearOnEntry, uint32_t ulBitsToClearOnExit, uint32_t *pulNotificationValue, TickType_t xTicksToWait );
# 1906 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/task.h"
void vTaskNotifyGiveFromISR( TaskHandle_t xTaskToNotify, BaseType_t *pxHigherPriorityTaskWoken );
# 1975 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/task.h"
uint32_t ulTaskNotifyTake( BaseType_t xClearCountOnExit, TickType_t xTicksToWait );
# 1996 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/task.h"
BaseType_t xTaskIncrementTick( void ) ;
# 2029 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/task.h"
void vTaskPlaceOnEventList( List_t * const pxEventList, const TickType_t xTicksToWait ) ;
void vTaskPlaceOnUnorderedEventList( List_t * pxEventList, const TickType_t xItemValue, const TickType_t xTicksToWait ) ;
# 2043 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/task.h"
void vTaskPlaceOnEventListRestricted( List_t * const pxEventList, const TickType_t xTicksToWait ) ;
# 2069 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/task.h"
BaseType_t xTaskRemoveFromEventList( const List_t * const pxEventList ) ;
BaseType_t xTaskRemoveFromUnorderedEventList( ListItem_t * pxEventListItem, const TickType_t xItemValue ) ;
# 2080 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/task.h"
void vTaskSwitchContext( void ) ;





TickType_t uxTaskResetEventItemValue( void ) ;




TaskHandle_t xTaskGetCurrentTaskHandle( void ) ;
# 2101 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/task.h"
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
# 2164 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/task.h"
void vTaskStepTick( const TickType_t xTicksToJump ) ;
# 2180 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/task.h"
eSleepModeStatus eTaskConfirmSleepModeStatus( void ) ;





void *pvTaskIncrementMutexHeldCount( void );
# 2197 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/task.h"
UBaseType_t uxTaskGetSnapshotAll( TaskSnapshot_t * const pxTaskSnapshotArray, const UBaseType_t uxArraySize, UBaseType_t * const pxTcbSz );
# 33 "C:/Users/nickt/git/esp-idf/components/esp32/deep_sleep.c" 2
# 1 "C:/esp/ArkPOS2-esp/build/include/sdkconfig.h" 1
# 34 "C:/Users/nickt/git/esp-idf/components/esp32/deep_sleep.c" 2




typedef struct {
    esp_deep_sleep_pd_option_t pd_options[ESP_PD_DOMAIN_MAX];
    uint64_t sleep_duration;
    uint32_t wakeup_triggers : 11;
    uint32_t ext1_trigger_mode : 1;
    uint32_t ext1_rtc_gpio_mask : 18;
    uint32_t ext0_trigger_level : 1;
    uint32_t ext0_rtc_gpio_num : 5;
} deep_sleep_config_t;

static deep_sleep_config_t s_config = {
    .pd_options = { ESP_PD_OPTION_AUTO, ESP_PD_OPTION_AUTO, ESP_PD_OPTION_AUTO },
    .wakeup_triggers = 0
};



static _lock_t lock_rtc_memory_crc;

static const char* TAG = "deepsleep";

static uint32_t get_power_down_flags();
static void ext0_wakeup_prepare();
static void ext1_wakeup_prepare();
static void timer_wakeup_prepare();




esp_deep_sleep_wake_stub_fn_t esp_get_deep_sleep_wake_stub(void)
{
    _lock_acquire(&lock_rtc_memory_crc);
    uint32_t stored_crc = ({ ; (*(volatile uint32_t *)((0x3ff48000 + 0xbc))); });
    set_rtc_memory_crc();
    uint32_t calc_crc = ({ ; (*(volatile uint32_t *)((0x3ff48000 + 0xbc))); });
    ({ ; (*(volatile uint32_t *)((0x3ff48000 + 0xbc))) = (stored_crc); });
    _lock_release(&lock_rtc_memory_crc);

    if(stored_crc == calc_crc) {
        return (esp_deep_sleep_wake_stub_fn_t)({ ; (*(volatile uint32_t *)((0x3ff48000 + 0xb8))); });
    } else {
        return 
# 79 "C:/Users/nickt/git/esp-idf/components/esp32/deep_sleep.c" 3 4
              ((void *)0)
# 79 "C:/Users/nickt/git/esp-idf/components/esp32/deep_sleep.c"
                  ;
    }
}

void esp_set_deep_sleep_wake_stub(esp_deep_sleep_wake_stub_fn_t new_stub)
{
    _lock_acquire(&lock_rtc_memory_crc);
    ({ ; (*(volatile uint32_t *)((0x3ff48000 + 0xb8))) = ((uint32_t)new_stub); });
    set_rtc_memory_crc();
    _lock_release(&lock_rtc_memory_crc);
}

void __attribute__((section(".rtc.text"))) esp_default_wake_deep_sleep(void) {

    (*(volatile uint32_t *)((((0x3ff00000 + 0x044))))) = (((DPORT_REG_READ((0x3ff00000 + 0x044))|(((1UL << (13)))))));
    (*(volatile uint32_t *)((((0x3ff00000 + 0x044))))) = (((DPORT_REG_READ((0x3ff00000 + 0x044)) & (~(((1UL << (13))))))));
# 103 "C:/Users/nickt/git/esp-idf/components/esp32/deep_sleep.c"
}

void __attribute__((weak, alias("esp_default_wake_deep_sleep"))) esp_wake_deep_sleep(void);

void esp_deep_sleep(uint64_t time_in_us)
{
    esp_deep_sleep_enable_timer_wakeup(time_in_us);
    esp_deep_sleep_start();
}

void __attribute__((section(".iram1"))) esp_deep_sleep_start()
{

    uint32_t pd_flags = get_power_down_flags();


    ({ ; ({ ; (*((volatile uint32_t *)(((0x3ff48000 + 0x30))))) = (uint32_t)((({ ; (*((volatile uint32_t *)((0x3ff48000 + 0x30)))); })&(~(((1UL << (30))) | ((1UL << (31))) | ((1UL << (28))) | ((1UL << (27))))))); }); })

                                                         ;

    ({ ; (({ ; (*((volatile uint32_t *)(((0x3ff48800 + 0x000c))))) = (uint32_t)((({ ; (*((volatile uint32_t *)((0x3ff48800 + 0x000c)))); })&(~((((0x3)<<(18)))<<(18))))|(((0) & ((0x3)<<(18)))<<(18))); })); });


    uart_tx_wait_idle(0);
    uart_tx_wait_idle(1);
    uart_tx_wait_idle(2);

    if (esp_get_deep_sleep_wake_stub() == 
# 130 "C:/Users/nickt/git/esp-idf/components/esp32/deep_sleep.c" 3 4
                                         ((void *)0)
# 130 "C:/Users/nickt/git/esp-idf/components/esp32/deep_sleep.c"
                                             ) {
        esp_set_deep_sleep_wake_stub(esp_wake_deep_sleep);
    }


    if (s_config.wakeup_triggers & (1UL << (0))) {
        ext0_wakeup_prepare();
    }
    if (s_config.wakeup_triggers & (1UL << (1))) {
        ext1_wakeup_prepare();
    }

    if (s_config.wakeup_triggers & (1UL << (9))) {
        ({ ; ({ ; (*((volatile uint32_t *)(((0x3ff48000 + 0x18))))) = (uint32_t)((({ ; (*((volatile uint32_t *)((0x3ff48000 + 0x18)))); })|(((1UL << (21)))))); }); });
    }

    if ((s_config.wakeup_triggers & (1UL << (3))) &&
        s_config.sleep_duration > 0) {
        timer_wakeup_prepare();
    }


    rtc_sleep_config_t config = { .soc_clk_sel = 0, .lslp_mem_inf_fpu = 0, .rtc_mem_inf_fpu = 0, .rtc_mem_inf_follow_cpu = ((pd_flags) & (1UL << (4))) ? 1 : 0, .rtc_fastmem_pd_en = ((pd_flags) & (1UL << (3))) ? 1 : 0, .rtc_slowmem_pd_en = ((pd_flags) & (1UL << (2))) ? 1 : 0, .rtc_peri_pd_en = ((pd_flags) & (1UL << (1))) ? 1 : 0, .wifi_pd_en = 0, .rom_mem_pd_en = 0, .deep_slp = ((pd_flags) & (1UL << (0))) ? 1 : 0, .wdt_flashboot_mod_en = 0, .dig_dbias_wak = 4, .dig_dbias_slp = 0, .rtc_dbias_wak = 0, .rtc_dbias_slp = 0, .lslp_meminf_pd = 1 };;
    rtc_sleep_init(config);
    rtc_sleep_start(s_config.wakeup_triggers, 0);


    while (1) {
        ;
    }
}

void system_deep_sleep(uint64_t) __attribute__((alias("esp_deep_sleep")));

esp_err_t esp_deep_sleep_enable_ulp_wakeup()
{
# 174 "C:/Users/nickt/git/esp-idf/components/esp32/deep_sleep.c"
    return 0x103;

}

esp_err_t esp_deep_sleep_enable_timer_wakeup(uint64_t time_in_us)
{
    s_config.wakeup_triggers |= (1UL << (3));
    s_config.sleep_duration = time_in_us;
    return 0;
}

static void timer_wakeup_prepare()
{
    uint32_t period = esp_clk_slowclk_cal_get();
    uint64_t rtc_count_delta = rtc_time_us_to_slowclk(s_config.sleep_duration, period);
    uint64_t cur_rtc_count = rtc_time_get();
    rtc_sleep_set_wakeup_time(cur_rtc_count + rtc_count_delta);
}

esp_err_t esp_deep_sleep_enable_touchpad_wakeup()
{
    if (s_config.wakeup_triggers & ((1UL << (0)))) {
        if (((esp_log_level_t) 3) >= ESP_LOG_ERROR) { ets_printf("\033[0;" "31" "m" "E" " (%d) %s: " "Conflicting wake-up trigger: ext0" "\033[0m" "\n", esp_log_timestamp(), TAG); };
        return 0x103;
    }
    s_config.wakeup_triggers |= (1UL << (8));
    return 0;
}

touch_pad_t esp_deep_sleep_get_touchpad_wakeup_status()
{
    if (esp_deep_sleep_get_wakeup_cause() != ESP_DEEP_SLEEP_WAKEUP_TOUCHPAD) {
        return TOUCH_PAD_MAX;
    }
    uint32_t touch_mask = ({ ; ((({ ; (*(volatile uint32_t *)((0x3ff48800 + 0x0084))); }) >> (0)) & (0x3FF)); });
    ((touch_mask != 0 && "wakeup reason is RTC_TOUCH_TRIG_EN but SENS_TOUCH_MEAS_EN is zero") ? (void)0 : __assert_func ("C:/Users/nickt/git/esp-idf/components/esp32/deep_sleep.c", 209, __func__, "touch_mask != 0 && \"wakeup reason is RTC_TOUCH_TRIG_EN but SENS_TOUCH_MEAS_EN is zero\""));
    return (touch_pad_t) (__builtin_ffs(touch_mask) - 1);
}

esp_err_t esp_deep_sleep_enable_ext0_wakeup(gpio_num_t gpio_num, int level)
{
    if (level < 0 || level > 1) {
        return 0x102;
    }
    if (!rtc_gpio_is_valid_gpio(gpio_num)) {
        return 0x102;
    }
    if (s_config.wakeup_triggers & ((1UL << (8)) | (1UL << (9)))) {
        if (((esp_log_level_t) 3) >= ESP_LOG_ERROR) { ets_printf("\033[0;" "31" "m" "E" " (%d) %s: " "Conflicting wake-up triggers: touch / ULP" "\033[0m" "\n", esp_log_timestamp(), TAG); };
        return 0x103;
    }
    s_config.ext0_rtc_gpio_num = rtc_gpio_desc[gpio_num].rtc_num;
    s_config.ext0_trigger_level = level;
    s_config.wakeup_triggers |= (1UL << (0));
    return 0;
}

static void ext0_wakeup_prepare()
{
    int rtc_gpio_num = s_config.ext0_rtc_gpio_num;

    ({ ; (({ ; (*(volatile uint32_t *)(((0x3ff48400 + 0xbc)))) = (((({ ; (*(volatile uint32_t *)((0x3ff48400 + 0xbc))); }) & ~((0x1F) << (27)))|(((rtc_gpio_num) & (0x1F))<<(27)))); })); });

    ({ ; (({ ; (*((volatile uint32_t *)(((0x3ff48000 + 0x60))))) = (uint32_t)((({ ; (*((volatile uint32_t *)((0x3ff48000 + 0x60)))); })&(~((0x1)<<(30))))|(((s_config.ext0_trigger_level) & 0x1)<<(30))); })); })
                                                                   ;

    for (size_t gpio_num = 0; gpio_num < 40; ++gpio_num) {
        const rtc_gpio_desc_t* desc = &rtc_gpio_desc[gpio_num];
        if (desc->rtc_num == rtc_gpio_num) {
            ({ ; (*(volatile uint32_t*)(desc->reg) |= (desc->mux)); });
            ({ ; (({ ; (*((volatile uint32_t *)((desc->reg)))) = (uint32_t)((({ ; (*((volatile uint32_t *)(desc->reg))); })&(~((0x3)<<(desc->func))))|(((0) & 0x3)<<(desc->func))); })); });
            ({ ; (*(volatile uint32_t*)(desc->reg) |= (desc->slpsel)); });
            ({ ; (*(volatile uint32_t*)(desc->reg) |= (desc->slpie)); });
            break;
        }
    }
}

esp_err_t esp_deep_sleep_enable_ext1_wakeup(uint64_t mask, esp_ext1_wakeup_mode_t mode)
{
    if (mode > ESP_EXT1_WAKEUP_ANY_HIGH) {
        return 0x102;
    }

    uint32_t rtc_gpio_mask = 0;
    for (int gpio = 0; mask; ++gpio, mask >>= 1) {
        if ((mask & 1) == 0) {
            continue;
        }
        if (!rtc_gpio_is_valid_gpio(gpio)) {
            if (((esp_log_level_t) 3) >= ESP_LOG_ERROR) { ets_printf("\033[0;" "31" "m" "E" " (%d) %s: " "Not an RTC IO: GPIO%d" "\033[0m" "\n", esp_log_timestamp(), TAG, gpio); };
            return 0x102;
        }
        rtc_gpio_mask |= (1UL << (rtc_gpio_desc[gpio].rtc_num));
    }
    s_config.ext1_rtc_gpio_mask = rtc_gpio_mask;
    s_config.ext1_trigger_mode = mode;
    s_config.wakeup_triggers |= (1UL << (1));
    return 0;
}

static void ext1_wakeup_prepare()
{

    uint32_t rtc_gpio_mask = s_config.ext1_rtc_gpio_mask;
    for (int gpio = 0; gpio < 40 && rtc_gpio_mask != 0; ++gpio) {
        int rtc_pin = rtc_gpio_desc[gpio].rtc_num;
        if ((rtc_gpio_mask & (1UL << (rtc_pin))) == 0) {
            continue;
        }
        const rtc_gpio_desc_t* desc = &rtc_gpio_desc[gpio];

        ({ ; (*(volatile uint32_t*)(desc->reg) |= (desc->mux)); });
        ({ ; (({ ; (*((volatile uint32_t *)((desc->reg)))) = (uint32_t)((({ ; (*((volatile uint32_t *)(desc->reg))); })&(~((0x3)<<(desc->func))))|(((0) & 0x3)<<(desc->func))); })); });

        if (s_config.pd_options[ESP_PD_DOMAIN_RTC_PERIPH] == ESP_PD_OPTION_ON) {

            ({ ; (*(volatile uint32_t*)(desc->reg) |= (desc->slpie)); });

            ({ ; (*(volatile uint32_t*)(desc->reg) |= (desc->slpsel)); });
        } else {


            ({ ; (*(volatile uint32_t*)(desc->reg) |= (desc->ie)); });
            ({ ; (*(volatile uint32_t*)(desc->reg) &= ~(desc->pulldown)); });
            ({ ; (*(volatile uint32_t*)(desc->reg) &= ~(desc->pullup)); });
            ({ ; (*(volatile uint32_t*)((0x3ff48000 + 0xc8)) |= (desc->hold_force)); });
        }

        rtc_gpio_mask &= ~(1UL << (rtc_pin));
    }

    ({ ; (*(volatile uint32_t*)((0x3ff48000 + 0xcc)) |= (((1UL << (18))))); });

    ({ ; (({ ; (*(volatile uint32_t *)(((0x3ff48000 + 0xcc)))) = (((({ ; (*(volatile uint32_t *)((0x3ff48000 + 0xcc))); }) & ~((0x3FFFF) << (0)))|(((s_config.ext1_rtc_gpio_mask) & (0x3FFFF))<<(0)))); })); });

    ({ ; (({ ; (*((volatile uint32_t *)(((0x3ff48000 + 0x60))))) = (uint32_t)((({ ; (*((volatile uint32_t *)((0x3ff48000 + 0x60)))); })&(~((0x1)<<(31))))|(((s_config.ext1_trigger_mode) & 0x1)<<(31))); })); })
                                                                  ;
}

uint64_t esp_deep_sleep_get_ext1_wakeup_status()
{
    if (esp_deep_sleep_get_wakeup_cause() != ESP_DEEP_SLEEP_WAKEUP_EXT1) {
        return 0;
    }
    uint32_t status = ({ ; ((({ ; (*(volatile uint32_t *)((0x3ff48000 + 0xd0))); }) >> (0)) & (0x3FFFF)); });

    uint64_t gpio_mask = 0;
    for (int gpio = 0; gpio < 40; ++gpio) {
        if (!rtc_gpio_is_valid_gpio(gpio)) {
            continue;
        }
        int rtc_pin = rtc_gpio_desc[gpio].rtc_num;
        if ((status & (1UL << (rtc_pin))) == 0) {
            continue;
        }
        gpio_mask |= (1UL << (gpio));
    }
    return gpio_mask;
}

esp_deep_sleep_wakeup_cause_t esp_deep_sleep_get_wakeup_cause()
{
    if (rtc_get_reset_reason(0) != DEEPSLEEP_RESET) {
        return ESP_DEEP_SLEEP_WAKEUP_UNDEFINED;
    }

    uint32_t wakeup_cause = ({ ; ((({ ; (*(volatile uint32_t *)((0x3ff48000 + 0x38))); }) >> (0)) & (0x7FF)); });
    if (wakeup_cause & (1UL << (0))) {
        return ESP_DEEP_SLEEP_WAKEUP_EXT0;
    } else if (wakeup_cause & (1UL << (1))) {
        return ESP_DEEP_SLEEP_WAKEUP_EXT1;
    } else if (wakeup_cause & (1UL << (3))) {
        return ESP_DEEP_SLEEP_WAKEUP_TIMER;
    } else if (wakeup_cause & (1UL << (8))) {
        return ESP_DEEP_SLEEP_WAKEUP_TOUCHPAD;
    } else if (wakeup_cause & (1UL << (9))) {
        return ESP_DEEP_SLEEP_WAKEUP_ULP;
    } else {
        return ESP_DEEP_SLEEP_WAKEUP_UNDEFINED;
    }
}

esp_err_t esp_deep_sleep_pd_config(esp_deep_sleep_pd_domain_t domain,
                                   esp_deep_sleep_pd_option_t option)
{
    if (domain >= ESP_PD_DOMAIN_MAX || option > ESP_PD_OPTION_AUTO) {
        return 0x102;
    }
    s_config.pd_options[domain] = option;
    return 0;
}

static uint32_t get_power_down_flags()
{
# 377 "C:/Users/nickt/git/esp-idf/components/esp32/deep_sleep.c"
    extern int _rtc_data_start, _rtc_data_end, _rtc_bss_start, _rtc_bss_end;

    if (s_config.pd_options[ESP_PD_DOMAIN_RTC_SLOW_MEM] == ESP_PD_OPTION_AUTO ||
            &_rtc_data_end > &_rtc_data_start ||
            &_rtc_bss_end > &_rtc_bss_start) {
        s_config.pd_options[ESP_PD_DOMAIN_RTC_SLOW_MEM] = ESP_PD_OPTION_ON;
    }






    if (s_config.pd_options[ESP_PD_DOMAIN_RTC_FAST_MEM] == ESP_PD_OPTION_AUTO) {
        s_config.pd_options[ESP_PD_DOMAIN_RTC_FAST_MEM] = ESP_PD_OPTION_ON;
    }



    if (s_config.pd_options[ESP_PD_DOMAIN_RTC_PERIPH] == ESP_PD_OPTION_AUTO) {
        if (s_config.wakeup_triggers & (1UL << (0))) {
            s_config.pd_options[ESP_PD_DOMAIN_RTC_PERIPH] = ESP_PD_OPTION_ON;
        } else if (s_config.wakeup_triggers & ((1UL << (8)) | (1UL << (9)))) {


            s_config.pd_options[ESP_PD_DOMAIN_RTC_PERIPH] = ESP_PD_OPTION_OFF;
        }
    }

    const char* option_str[] = {"OFF", "ON", "AUTO(OFF)" };
    if (((esp_log_level_t) 3) >= ESP_LOG_DEBUG) { ets_printf( "D" " (%d) %s: " "RTC_PERIPH: %s, RTC_SLOW_MEM: %s, RTC_FAST_MEM: %s" "\033[0m" "\n", esp_log_timestamp(), TAG, option_str[s_config.pd_options[ESP_PD_DOMAIN_RTC_PERIPH]], option_str[s_config.pd_options[ESP_PD_DOMAIN_RTC_SLOW_MEM]], option_str[s_config.pd_options[ESP_PD_DOMAIN_RTC_FAST_MEM]]); }


                                                                        ;


    uint32_t pd_flags = (1UL << (0));
    if (s_config.pd_options[ESP_PD_DOMAIN_RTC_FAST_MEM] != ESP_PD_OPTION_ON) {
        pd_flags |= (1UL << (3));
    }
    if (s_config.pd_options[ESP_PD_DOMAIN_RTC_SLOW_MEM] != ESP_PD_OPTION_ON) {
        pd_flags |= (1UL << (2));
    }
    if (s_config.pd_options[ESP_PD_DOMAIN_RTC_PERIPH] != ESP_PD_OPTION_ON) {
        pd_flags |= (1UL << (1));
    }
    return pd_flags;
}
