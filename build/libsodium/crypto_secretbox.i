# 1 "C:/esp/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_secretbox/crypto_secretbox.c"
# 1 "C:\\esp\\ArkPOS2-esp\\build\\libsodium//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "C:/esp/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_secretbox/crypto_secretbox.c"

# 1 "C:/esp/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_secretbox.h" 1



# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 149 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 3 4

# 149 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 3 4
typedef int ptrdiff_t;
# 216 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 3 4
typedef unsigned int size_t;
# 328 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 3 4
typedef short unsigned int wchar_t;
# 5 "C:/esp/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_secretbox.h" 2

# 1 "C:/esp/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_secretbox_xsalsa20poly1305.h" 1



# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 5 "C:/esp/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_secretbox_xsalsa20poly1305.h" 2
# 1 "C:/esp/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/export.h" 1
# 6 "C:/esp/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_secretbox_xsalsa20poly1305.h" 2
# 15 "C:/esp/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_secretbox_xsalsa20poly1305.h"

# 15 "C:/esp/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_secretbox_xsalsa20poly1305.h"
__attribute__ ((visibility ("default")))
size_t crypto_secretbox_xsalsa20poly1305_keybytes(void);


__attribute__ ((visibility ("default")))
size_t crypto_secretbox_xsalsa20poly1305_noncebytes(void);


__attribute__ ((visibility ("default")))
size_t crypto_secretbox_xsalsa20poly1305_macbytes(void);


__attribute__ ((visibility ("default")))
size_t crypto_secretbox_xsalsa20poly1305_boxzerobytes(void);




__attribute__ ((visibility ("default")))
size_t crypto_secretbox_xsalsa20poly1305_zerobytes(void);

__attribute__ ((visibility ("default")))
int crypto_secretbox_xsalsa20poly1305(unsigned char *c,
                                      const unsigned char *m,
                                      unsigned long long mlen,
                                      const unsigned char *n,
                                      const unsigned char *k);

__attribute__ ((visibility ("default")))
int crypto_secretbox_xsalsa20poly1305_open(unsigned char *m,
                                           const unsigned char *c,
                                           unsigned long long clen,
                                           const unsigned char *n,
                                           const unsigned char *k)
            __attribute__ ((warn_unused_result));

__attribute__ ((visibility ("default")))
void crypto_secretbox_xsalsa20poly1305_keygen(unsigned char k[32U]);
# 7 "C:/esp/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_secretbox.h" 2
# 17 "C:/esp/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_secretbox.h"
__attribute__ ((visibility ("default")))
size_t crypto_secretbox_keybytes(void);


__attribute__ ((visibility ("default")))
size_t crypto_secretbox_noncebytes(void);


__attribute__ ((visibility ("default")))
size_t crypto_secretbox_macbytes(void);


__attribute__ ((visibility ("default")))
const char *crypto_secretbox_primitive(void);

__attribute__ ((visibility ("default")))
int crypto_secretbox_easy(unsigned char *c, const unsigned char *m,
                          unsigned long long mlen, const unsigned char *n,
                          const unsigned char *k);

__attribute__ ((visibility ("default")))
int crypto_secretbox_open_easy(unsigned char *m, const unsigned char *c,
                               unsigned long long clen, const unsigned char *n,
                               const unsigned char *k)
            __attribute__ ((warn_unused_result));

__attribute__ ((visibility ("default")))
int crypto_secretbox_detached(unsigned char *c, unsigned char *mac,
                              const unsigned char *m,
                              unsigned long long mlen,
                              const unsigned char *n,
                              const unsigned char *k);

__attribute__ ((visibility ("default")))
int crypto_secretbox_open_detached(unsigned char *m,
                                   const unsigned char *c,
                                   const unsigned char *mac,
                                   unsigned long long clen,
                                   const unsigned char *n,
                                   const unsigned char *k)
            __attribute__ ((warn_unused_result));

__attribute__ ((visibility ("default")))
void crypto_secretbox_keygen(unsigned char k[32U]);




__attribute__ ((visibility ("default")))
size_t crypto_secretbox_zerobytes(void);


__attribute__ ((visibility ("default")))
size_t crypto_secretbox_boxzerobytes(void);

__attribute__ ((visibility ("default")))
int crypto_secretbox(unsigned char *c, const unsigned char *m,
                     unsigned long long mlen, const unsigned char *n,
                     const unsigned char *k);

__attribute__ ((visibility ("default")))
int crypto_secretbox_open(unsigned char *m, const unsigned char *c,
                          unsigned long long clen, const unsigned char *n,
                          const unsigned char *k)
            __attribute__ ((warn_unused_result));
# 3 "C:/esp/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_secretbox/crypto_secretbox.c" 2
# 1 "C:/esp/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/randombytes.h" 1




# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 6 "C:/esp/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/randombytes.h" 2
# 1 "C:/esp/esp-idf/components/newlib/include/stdint.h" 1
# 12 "C:/esp/esp-idf/components/newlib/include/stdint.h"
# 1 "C:/esp/esp-idf/components/newlib/include/machine/_default_types.h" 1
# 11 "C:/esp/esp-idf/components/newlib/include/machine/_default_types.h"
# 1 "C:/esp/esp-idf/components/newlib/include/sys/features.h" 1
# 12 "C:/esp/esp-idf/components/newlib/include/machine/_default_types.h" 2





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
# 13 "C:/esp/esp-idf/components/newlib/include/stdint.h" 2
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
# 7 "C:/esp/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/randombytes.h" 2

# 1 "C:/esp/esp-idf/components/newlib/include/sys/types.h" 1
# 20 "C:/esp/esp-idf/components/newlib/include/sys/types.h"
# 1 "C:/esp/esp-idf/components/newlib/include/_ansi.h" 1
# 15 "C:/esp/esp-idf/components/newlib/include/_ansi.h"
# 1 "C:/esp/esp-idf/components/newlib/include/newlib.h" 1
# 16 "C:/esp/esp-idf/components/newlib/include/_ansi.h" 2
# 1 "C:/esp/esp-idf/components/newlib/include/sys/config.h" 1



# 1 "C:/esp/esp-idf/components/newlib/include/machine/ieeefp.h" 1
# 5 "C:/esp/esp-idf/components/newlib/include/sys/config.h" 2
# 189 "C:/esp/esp-idf/components/newlib/include/sys/config.h"
# 1 "C:/esp/esp-idf/components/esp32/include/xtensa/config/core-isa.h" 1
# 190 "C:/esp/esp-idf/components/newlib/include/sys/config.h" 2
# 17 "C:/esp/esp-idf/components/newlib/include/_ansi.h" 2
# 21 "C:/esp/esp-idf/components/newlib/include/sys/types.h" 2




# 1 "C:/esp/esp-idf/components/newlib/include/machine/_types.h" 1
# 26 "C:/esp/esp-idf/components/newlib/include/sys/types.h" 2
# 61 "C:/esp/esp-idf/components/newlib/include/sys/types.h"
# 1 "C:/esp/esp-idf/components/newlib/include/sys/_types.h" 1
# 13 "C:/esp/esp-idf/components/newlib/include/sys/_types.h"
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
# 62 "C:/esp/esp-idf/components/newlib/include/sys/types.h" 2







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
# 9 "C:/esp/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/randombytes.h" 2
# 19 "C:/esp/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/randombytes.h"
typedef struct randombytes_implementation {
    const char *(*implementation_name)(void);
    uint32_t (*random)(void);
    void (*stir)(void);
    uint32_t (*uniform)(const uint32_t upper_bound);
    void (*buf)(void * const buf, const size_t size);
    int (*close)(void);
} randombytes_implementation;


__attribute__ ((visibility ("default")))
size_t randombytes_seedbytes(void);

__attribute__ ((visibility ("default")))
void randombytes_buf(void * const buf, const size_t size);

__attribute__ ((visibility ("default")))
void randombytes_buf_deterministic(void * const buf, const size_t size,
                                   const unsigned char seed[32U]);

__attribute__ ((visibility ("default")))
uint32_t randombytes_random(void);

__attribute__ ((visibility ("default")))
uint32_t randombytes_uniform(const uint32_t upper_bound);

__attribute__ ((visibility ("default")))
void randombytes_stir(void);

__attribute__ ((visibility ("default")))
int randombytes_close(void);

__attribute__ ((visibility ("default")))
int randombytes_set_implementation(randombytes_implementation *impl);

__attribute__ ((visibility ("default")))
const char *randombytes_implementation_name(void);



__attribute__ ((visibility ("default")))
void randombytes(unsigned char * const buf, const unsigned long long buf_len);
# 4 "C:/esp/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_secretbox/crypto_secretbox.c" 2

size_t
crypto_secretbox_keybytes(void)
{
    return 32U;
}

size_t
crypto_secretbox_noncebytes(void)
{
    return 24U;
}

size_t
crypto_secretbox_zerobytes(void)
{
    return (16U + 16U);
}

size_t
crypto_secretbox_boxzerobytes(void)
{
    return 16U;
}

size_t
crypto_secretbox_macbytes(void)
{
    return 16U;
}

const char *
crypto_secretbox_primitive(void)
{
    return "xsalsa20poly1305";
}

int
crypto_secretbox(unsigned char *c, const unsigned char *m,
                 unsigned long long mlen, const unsigned char *n,
                 const unsigned char *k)
{
    return crypto_secretbox_xsalsa20poly1305(c, m, mlen, n, k);
}

int
crypto_secretbox_open(unsigned char *m, const unsigned char *c,
                      unsigned long long clen, const unsigned char *n,
                      const unsigned char *k)
{
    return crypto_secretbox_xsalsa20poly1305_open(m, c, clen, n, k);
}

void
crypto_secretbox_keygen(unsigned char k[32U])
{
    randombytes_buf(k, 32U);
}
