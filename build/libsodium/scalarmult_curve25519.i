# 1 "C:/esp/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_scalarmult/curve25519/scalarmult_curve25519.c"
# 1 "C:\\esp\\ArkPOS2-esp\\build\\libsodium//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "C:/esp/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_scalarmult/curve25519/scalarmult_curve25519.c"

# 1 "C:/esp/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_scalarmult_curve25519.h" 1



# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 149 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 3 4

# 149 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 3 4
typedef int ptrdiff_t;
# 216 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 3 4
typedef unsigned int size_t;
# 328 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 3 4
typedef short unsigned int wchar_t;
# 5 "C:/esp/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_scalarmult_curve25519.h" 2

# 1 "C:/esp/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/export.h" 1
# 7 "C:/esp/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_scalarmult_curve25519.h" 2







# 13 "C:/esp/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_scalarmult_curve25519.h"
__attribute__ ((visibility ("default")))
size_t crypto_scalarmult_curve25519_bytes(void);


__attribute__ ((visibility ("default")))
size_t crypto_scalarmult_curve25519_scalarbytes(void);

__attribute__ ((visibility ("default")))
int crypto_scalarmult_curve25519(unsigned char *q, const unsigned char *n,
                                 const unsigned char *p)
            __attribute__ ((warn_unused_result));

__attribute__ ((visibility ("default")))
int crypto_scalarmult_curve25519_base(unsigned char *q, const unsigned char *n);



int _crypto_scalarmult_curve25519_pick_best_implementation(void);
# 3 "C:/esp/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_scalarmult/curve25519/scalarmult_curve25519.c" 2
# 1 "C:/esp/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_scalarmult/curve25519/scalarmult_curve25519.h" 1




typedef struct crypto_scalarmult_curve25519_implementation {
    int (*mult)(unsigned char *q, const unsigned char *n,
                const unsigned char *p);
    int (*mult_base)(unsigned char *q, const unsigned char *n);
} crypto_scalarmult_curve25519_implementation;
# 4 "C:/esp/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_scalarmult/curve25519/scalarmult_curve25519.c" 2
# 1 "C:/esp/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/runtime.h" 1
# 11 "C:/esp/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/runtime.h"
__attribute__ ((visibility ("default")))
int sodium_runtime_has_neon(void);

__attribute__ ((visibility ("default")))
int sodium_runtime_has_sse2(void);

__attribute__ ((visibility ("default")))
int sodium_runtime_has_sse3(void);

__attribute__ ((visibility ("default")))
int sodium_runtime_has_ssse3(void);

__attribute__ ((visibility ("default")))
int sodium_runtime_has_sse41(void);

__attribute__ ((visibility ("default")))
int sodium_runtime_has_avx(void);

__attribute__ ((visibility ("default")))
int sodium_runtime_has_avx2(void);

__attribute__ ((visibility ("default")))
int sodium_runtime_has_pclmul(void);

__attribute__ ((visibility ("default")))
int sodium_runtime_has_aesni(void);



int _sodium_runtime_get_cpu_features(void);
# 5 "C:/esp/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_scalarmult/curve25519/scalarmult_curve25519.c" 2
# 14 "C:/esp/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_scalarmult/curve25519/scalarmult_curve25519.c"
# 1 "C:/esp/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_scalarmult/curve25519/ref10/x25519_ref10.h" 1




# 1 "c:\\esp\\esp-idf\\components\\libsodium\\libsodium\\src\\libsodium\\crypto_scalarmult\\curve25519\\scalarmult_curve25519.h" 1
# 6 "C:/esp/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_scalarmult/curve25519/ref10/x25519_ref10.h" 2

extern struct crypto_scalarmult_curve25519_implementation
        crypto_scalarmult_curve25519_ref10_implementation;
# 15 "C:/esp/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_scalarmult/curve25519/scalarmult_curve25519.c" 2
static const crypto_scalarmult_curve25519_implementation *implementation =
    &crypto_scalarmult_curve25519_ref10_implementation;


int
crypto_scalarmult_curve25519(unsigned char *q, const unsigned char *n,
                             const unsigned char *p)
{
    size_t i;
    unsigned char d = 0;

    if (implementation->mult(q, n, p) != 0) {
        return -1;
    }
    for (i = 0; i < 32U; i++) {
        d |= q[i];
    }
    return -(1 & ((d - 1) >> 8));
}

int
crypto_scalarmult_curve25519_base(unsigned char *q, const unsigned char *n)
{
    return implementation->mult_base(q, n);
}

size_t
crypto_scalarmult_curve25519_bytes(void)
{
    return 32U;
}

size_t
crypto_scalarmult_curve25519_scalarbytes(void)
{
    return 32U;
}

int
_crypto_scalarmult_curve25519_pick_best_implementation(void)
{



    implementation = &crypto_scalarmult_curve25519_ref10_implementation;






    return 0;
}
