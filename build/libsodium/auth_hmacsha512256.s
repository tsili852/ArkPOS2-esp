	.file	"auth_hmacsha512256.c"
	.text
.Ltext0:
	.section	.text.crypto_auth_hmacsha512256_bytes,"ax",@progbits
	.align	4
	.global	crypto_auth_hmacsha512256_bytes
	.type	crypto_auth_hmacsha512256_bytes, @function
crypto_auth_hmacsha512256_bytes:
.LFB0:
	.file 1 "C:/esp/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_auth/hmacsha512256/auth_hmacsha512256.c"
	.loc 1 15 0
	entry	sp, 32
.LCFI0:
	.loc 1 17 0
	movi.n	a2, 0x20
	retw.n
.LFE0:
	.size	crypto_auth_hmacsha512256_bytes, .-crypto_auth_hmacsha512256_bytes
	.section	.text.crypto_auth_hmacsha512256_keybytes,"ax",@progbits
	.align	4
	.global	crypto_auth_hmacsha512256_keybytes
	.type	crypto_auth_hmacsha512256_keybytes, @function
crypto_auth_hmacsha512256_keybytes:
.LFB1:
	.loc 1 21 0
	entry	sp, 32
.LCFI1:
	.loc 1 23 0
	movi.n	a2, 0x20
	retw.n
.LFE1:
	.size	crypto_auth_hmacsha512256_keybytes, .-crypto_auth_hmacsha512256_keybytes
	.section	.text.crypto_auth_hmacsha512256_statebytes,"ax",@progbits
	.align	4
	.global	crypto_auth_hmacsha512256_statebytes
	.type	crypto_auth_hmacsha512256_statebytes, @function
crypto_auth_hmacsha512256_statebytes:
.LFB2:
	.loc 1 27 0
	entry	sp, 32
.LCFI2:
	.loc 1 29 0
	movi	a2, 0x1b0
	retw.n
.LFE2:
	.size	crypto_auth_hmacsha512256_statebytes, .-crypto_auth_hmacsha512256_statebytes
	.section	.text.crypto_auth_hmacsha512256_keygen,"ax",@progbits
	.align	4
	.global	crypto_auth_hmacsha512256_keygen
	.type	crypto_auth_hmacsha512256_keygen, @function
crypto_auth_hmacsha512256_keygen:
.LFB3:
	.loc 1 34 0
.LVL0:
	entry	sp, 32
.LCFI3:
	.loc 1 35 0
	movi.n	a11, 0x20
	mov.n	a10, a2
	call8	randombytes_buf
.LVL1:
	retw.n
.LFE3:
	.size	crypto_auth_hmacsha512256_keygen, .-crypto_auth_hmacsha512256_keygen
	.section	.text.crypto_auth_hmacsha512256_init,"ax",@progbits
	.align	4
	.global	crypto_auth_hmacsha512256_init
	.type	crypto_auth_hmacsha512256_init, @function
crypto_auth_hmacsha512256_init:
.LFB4:
	.loc 1 41 0
.LVL2:
	entry	sp, 32
.LCFI4:
	.loc 1 42 0
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	crypto_auth_hmacsha512_init
.LVL3:
	.loc 1 44 0
	mov.n	a2, a10
.LVL4:
	retw.n
.LFE4:
	.size	crypto_auth_hmacsha512256_init, .-crypto_auth_hmacsha512256_init
	.section	.text.crypto_auth_hmacsha512256_update,"ax",@progbits
	.align	4
	.global	crypto_auth_hmacsha512256_update
	.type	crypto_auth_hmacsha512256_update, @function
crypto_auth_hmacsha512256_update:
.LFB5:
	.loc 1 50 0
.LVL5:
	entry	sp, 32
.LCFI5:
	.loc 1 51 0
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a11, a3
	mov.n	a10, a2
	call8	crypto_auth_hmacsha512_update
.LVL6:
	.loc 1 53 0
	mov.n	a2, a10
.LVL7:
	retw.n
.LFE5:
	.size	crypto_auth_hmacsha512256_update, .-crypto_auth_hmacsha512256_update
	.section	.text.crypto_auth_hmacsha512256_final,"ax",@progbits
	.align	4
	.global	crypto_auth_hmacsha512256_final
	.type	crypto_auth_hmacsha512256_final, @function
crypto_auth_hmacsha512256_final:
.LFB6:
	.loc 1 58 0
.LVL8:
	entry	sp, 96
.LCFI6:
	.loc 1 61 0
	mov.n	a11, sp
	mov.n	a10, a2
	call8	crypto_auth_hmacsha512_final
.LVL9:
	.loc 1 62 0
	movi.n	a12, 0x20
	mov.n	a11, sp
	mov.n	a10, a3
	call8	memcpy
.LVL10:
	.loc 1 65 0
	movi.n	a2, 0
.LVL11:
	retw.n
.LFE6:
	.size	crypto_auth_hmacsha512256_final, .-crypto_auth_hmacsha512256_final
	.section	.text.crypto_auth_hmacsha512256,"ax",@progbits
	.align	4
	.global	crypto_auth_hmacsha512256
	.type	crypto_auth_hmacsha512256, @function
crypto_auth_hmacsha512256:
.LFB7:
	.loc 1 70 0
.LVL12:
	entry	sp, 464
.LCFI7:
	.loc 1 73 0
	movi.n	a12, 0x20
	mov.n	a11, a6
	mov.n	a10, sp
	call8	crypto_auth_hmacsha512256_init
.LVL13:
	.loc 1 75 0
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a11, a3
	mov.n	a10, sp
	call8	crypto_auth_hmacsha512256_update
.LVL14:
	.loc 1 76 0
	mov.n	a11, a2
	mov.n	a10, sp
	call8	crypto_auth_hmacsha512256_final
.LVL15:
	.loc 1 79 0
	movi.n	a2, 0
.LVL16:
	retw.n
.LFE7:
	.size	crypto_auth_hmacsha512256, .-crypto_auth_hmacsha512256
	.section	.text.crypto_auth_hmacsha512256_verify,"ax",@progbits
	.align	4
	.global	crypto_auth_hmacsha512256_verify
	.type	crypto_auth_hmacsha512256_verify, @function
crypto_auth_hmacsha512256_verify:
.LFB8:
	.loc 1 86 0
.LVL17:
	entry	sp, 64
.LCFI8:
	.loc 1 89 0
	mov.n	a14, a6
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a11, a3
	mov.n	a10, sp
	call8	crypto_auth_hmacsha512256
.LVL18:
	.loc 1 91 0
	mov.n	a11, sp
	mov.n	a10, a2
	call8	crypto_verify_32
.LVL19:
	mov.n	a3, a10
.LVL20:
	.loc 1 92 0
	movi.n	a12, 0x20
	mov.n	a11, a2
	mov.n	a10, sp
	call8	sodium_memcmp
.LVL21:
	.loc 1 93 0
	or	a2, a3, a10
.LVL22:
	retw.n
.LFE8:
	.size	crypto_auth_hmacsha512256_verify, .-crypto_auth_hmacsha512256_verify
	.section	.debug_frame,"",@progbits
.Lframe0:
	.4byte	.LECIE0-.LSCIE0
.LSCIE0:
	.4byte	0xffffffff
	.byte	0x3
	.string	""
	.uleb128 0x1
	.sleb128 -4
	.uleb128 0
	.byte	0xc
	.uleb128 0x1
	.uleb128 0
	.align	4
.LECIE0:
.LSFDE0:
	.4byte	.LEFDE0-.LASFDE0
.LASFDE0:
	.4byte	.Lframe0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x4
	.4byte	.LCFI0-.LFB0
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x4
	.4byte	.LCFI1-.LFB1
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI2-.LFB2
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI3-.LFB3
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI4-.LFB4
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI5-.LFB5
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI6-.LFB6
	.byte	0xe
	.uleb128 0x60
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI7-.LFB7
	.byte	0xe
	.uleb128 0x1d0
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI8-.LFB8
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE16:
	.text
.Letext0:
	.file 2 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 3 "C:/esp/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "C:/esp/esp-idf/components/newlib/include/stdint.h"
	.file 5 "C:/esp/esp-idf/components/mbedtls/port/include/sha512_alt.h"
	.file 6 "C:/esp/esp-idf/components/libsodium/port_include/sodium/crypto_hash_sha512.h"
	.file 7 "C:/esp/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_auth_hmacsha512.h"
	.file 8 "C:/esp/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_auth_hmacsha512256.h"
	.file 9 "C:/esp/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/randombytes.h"
	.file 10 "C:/esp/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_verify_32.h"
	.file 11 "C:/esp/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/utils.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x51f
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF47
	.byte	0xc
	.4byte	.LASF48
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0xd8
	.4byte	0x33
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x3
	.byte	0x1e
	.4byte	0x68
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x4
	.byte	0x39
	.4byte	0x5d
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x5
	.byte	0x4
	.4byte	0x48
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.uleb128 0x6
	.byte	0x4
	.4byte	0x33
	.byte	0x5
	.byte	0x20
	.4byte	0xbb
	.uleb128 0x7
	.4byte	.LASF14
	.byte	0
	.uleb128 0x7
	.4byte	.LASF15
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF16
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x5
	.byte	0x24
	.4byte	0x9c
	.uleb128 0x8
	.byte	0xd8
	.byte	0x5
	.byte	0x29
	.4byte	0x10b
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x5
	.byte	0x2b
	.4byte	0x10b
	.byte	0
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x5
	.byte	0x2c
	.4byte	0x11b
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x5
	.byte	0x2d
	.4byte	0x12b
	.byte	0x50
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x5
	.byte	0x2e
	.4byte	0x21
	.byte	0xd0
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x5
	.byte	0x2f
	.4byte	0xbb
	.byte	0xd4
	.byte	0
	.uleb128 0xa
	.4byte	0x6f
	.4byte	0x11b
	.uleb128 0xb
	.4byte	0x81
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.4byte	0x6f
	.4byte	0x12b
	.uleb128 0xb
	.4byte	0x81
	.byte	0x7
	.byte	0
	.uleb128 0xa
	.4byte	0x48
	.4byte	0x13b
	.uleb128 0xb
	.4byte	0x81
	.byte	0x7f
	.byte	0
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x5
	.byte	0x31
	.4byte	0xc6
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x6
	.byte	0x25
	.4byte	0x13b
	.uleb128 0xc
	.4byte	.LASF27
	.2byte	0x1b0
	.byte	0x7
	.byte	0x26
	.4byte	0x177
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x7
	.byte	0x27
	.4byte	0x146
	.byte	0
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x7
	.byte	0x28
	.4byte	0x146
	.byte	0xd8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x7
	.byte	0x29
	.4byte	0x151
	.uleb128 0xa
	.4byte	0x48
	.4byte	0x192
	.uleb128 0xb
	.4byte	0x81
	.byte	0x3f
	.byte	0
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x8
	.byte	0x24
	.4byte	0x177
	.uleb128 0xd
	.4byte	.LASF29
	.byte	0x1
	.byte	0xe
	.4byte	0x28
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xd
	.4byte	.LASF30
	.byte	0x1
	.byte	0x14
	.4byte	0x28
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xd
	.4byte	.LASF31
	.byte	0x1
	.byte	0x1a
	.4byte	0x28
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xe
	.4byte	.LASF49
	.byte	0x1
	.byte	0x20
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x213
	.uleb128 0xf
	.string	"k"
	.byte	0x1
	.byte	0x21
	.4byte	0x8f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x10
	.4byte	.LVL1
	.4byte	0x4d7
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF33
	.byte	0x1
	.byte	0x27
	.4byte	0x21
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x272
	.uleb128 0x13
	.4byte	.LASF19
	.byte	0x1
	.byte	0x27
	.4byte	0x272
	.4byte	.LLST0
	.uleb128 0xf
	.string	"key"
	.byte	0x1
	.byte	0x28
	.4byte	0x278
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x14
	.4byte	.LASF32
	.byte	0x1
	.byte	0x28
	.4byte	0x28
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x10
	.4byte	.LVL3
	.4byte	0x4e2
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x192
	.uleb128 0x5
	.byte	0x4
	.4byte	0x27e
	.uleb128 0x15
	.4byte	0x48
	.uleb128 0x12
	.4byte	.LASF34
	.byte	0x1
	.byte	0x2f
	.4byte	0x21
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2e0
	.uleb128 0x13
	.4byte	.LASF19
	.byte	0x1
	.byte	0x2f
	.4byte	0x272
	.4byte	.LLST1
	.uleb128 0xf
	.string	"in"
	.byte	0x1
	.byte	0x30
	.4byte	0x278
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x14
	.4byte	.LASF35
	.byte	0x1
	.byte	0x31
	.4byte	0x68
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x10
	.4byte	.LVL6
	.4byte	0x4ed
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF36
	.byte	0x1
	.byte	0x38
	.4byte	0x21
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x35d
	.uleb128 0x13
	.4byte	.LASF19
	.byte	0x1
	.byte	0x38
	.4byte	0x272
	.4byte	.LLST2
	.uleb128 0xf
	.string	"out"
	.byte	0x1
	.byte	0x39
	.4byte	0x8f
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x16
	.4byte	.LASF38
	.byte	0x1
	.byte	0x3b
	.4byte	0x182
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x17
	.4byte	.LVL9
	.4byte	0x4f8
	.4byte	0x33f
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x10
	.4byte	.LVL10
	.4byte	0x503
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF37
	.byte	0x1
	.byte	0x44
	.4byte	0x21
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x411
	.uleb128 0x18
	.string	"out"
	.byte	0x1
	.byte	0x44
	.4byte	0x8f
	.4byte	.LLST3
	.uleb128 0xf
	.string	"in"
	.byte	0x1
	.byte	0x44
	.4byte	0x278
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x14
	.4byte	.LASF35
	.byte	0x1
	.byte	0x45
	.4byte	0x68
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0xf
	.string	"k"
	.byte	0x1
	.byte	0x45
	.4byte	0x278
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x16
	.4byte	.LASF19
	.byte	0x1
	.byte	0x47
	.4byte	0x192
	.uleb128 0x3
	.byte	0x91
	.sleb128 -464
	.uleb128 0x17
	.4byte	.LVL13
	.4byte	0x213
	.4byte	0x3de
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -464
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x17
	.4byte	.LVL14
	.4byte	0x283
	.4byte	0x3f9
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -464
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x10
	.4byte	.LVL15
	.4byte	0x2e0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -464
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF39
	.byte	0x1
	.byte	0x52
	.4byte	0x21
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4c7
	.uleb128 0x18
	.string	"h"
	.byte	0x1
	.byte	0x52
	.4byte	0x278
	.4byte	.LLST4
	.uleb128 0x18
	.string	"in"
	.byte	0x1
	.byte	0x53
	.4byte	0x278
	.4byte	.LLST5
	.uleb128 0x14
	.4byte	.LASF35
	.byte	0x1
	.byte	0x54
	.4byte	0x68
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0xf
	.string	"k"
	.byte	0x1
	.byte	0x55
	.4byte	0x278
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x16
	.4byte	.LASF40
	.byte	0x1
	.byte	0x57
	.4byte	0x4c7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x17
	.4byte	.LVL18
	.4byte	0x35d
	.4byte	0x490
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL19
	.4byte	0x50c
	.4byte	0x4aa
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x10
	.4byte	.LVL21
	.4byte	0x517
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	0x48
	.4byte	0x4d7
	.uleb128 0xb
	.4byte	0x81
	.byte	0x1f
	.byte	0
	.uleb128 0x19
	.4byte	.LASF41
	.4byte	.LASF41
	.byte	0x9
	.byte	0x21
	.uleb128 0x19
	.4byte	.LASF42
	.4byte	.LASF42
	.byte	0x7
	.byte	0x2f
	.uleb128 0x19
	.4byte	.LASF43
	.4byte	.LASF43
	.byte	0x7
	.byte	0x34
	.uleb128 0x19
	.4byte	.LASF44
	.4byte	.LASF44
	.byte	0x7
	.byte	0x39
	.uleb128 0x1a
	.4byte	.LASF50
	.4byte	.LASF50
	.uleb128 0x19
	.4byte	.LASF45
	.4byte	.LASF45
	.byte	0xa
	.byte	0x10
	.uleb128 0x19
	.4byte	.LASF46
	.4byte	.LASF46
	.byte	0xb
	.byte	0x1f
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL4
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL7
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL8
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL11
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL12
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL16
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL17
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL22
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL17
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL20
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x5c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF43:
	.string	"crypto_auth_hmacsha512_update"
.LASF39:
	.string	"crypto_auth_hmacsha512256_verify"
.LASF6:
	.string	"size_t"
.LASF38:
	.string	"out0"
.LASF19:
	.string	"state"
.LASF20:
	.string	"buffer"
.LASF40:
	.string	"correct"
.LASF0:
	.string	"unsigned int"
.LASF45:
	.string	"crypto_verify_32"
.LASF9:
	.string	"uint64_t"
.LASF15:
	.string	"ESP_MBEDTLS_SHA512_HARDWARE"
.LASF25:
	.string	"ictx"
.LASF31:
	.string	"crypto_auth_hmacsha512256_statebytes"
.LASF30:
	.string	"crypto_auth_hmacsha512256_keybytes"
.LASF28:
	.string	"crypto_auth_hmacsha512256_state"
.LASF36:
	.string	"crypto_auth_hmacsha512256_final"
.LASF3:
	.string	"unsigned char"
.LASF27:
	.string	"crypto_auth_hmacsha512_state"
.LASF37:
	.string	"crypto_auth_hmacsha512256"
.LASF12:
	.string	"long unsigned int"
.LASF1:
	.string	"short unsigned int"
.LASF23:
	.string	"mbedtls_sha512_context"
.LASF46:
	.string	"sodium_memcmp"
.LASF35:
	.string	"inlen"
.LASF42:
	.string	"crypto_auth_hmacsha512_init"
.LASF26:
	.string	"octx"
.LASF41:
	.string	"randombytes_buf"
.LASF14:
	.string	"ESP_MBEDTLS_SHA512_UNUSED"
.LASF16:
	.string	"ESP_MBEDTLS_SHA512_SOFTWARE"
.LASF24:
	.string	"crypto_hash_sha512_state"
.LASF21:
	.string	"is384"
.LASF48:
	.string	"C:/esp/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_auth/hmacsha512256/auth_hmacsha512256.c"
.LASF49:
	.string	"crypto_auth_hmacsha512256_keygen"
.LASF8:
	.string	"long long unsigned int"
.LASF22:
	.string	"mode"
.LASF11:
	.string	"sizetype"
.LASF5:
	.string	"long long int"
.LASF47:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF13:
	.string	"char"
.LASF17:
	.string	"esp_mbedtls_sha512_mode"
.LASF50:
	.string	"memcpy"
.LASF4:
	.string	"short int"
.LASF32:
	.string	"keylen"
.LASF7:
	.string	"__uint64_t"
.LASF33:
	.string	"crypto_auth_hmacsha512256_init"
.LASF34:
	.string	"crypto_auth_hmacsha512256_update"
.LASF18:
	.string	"total"
.LASF10:
	.string	"long int"
.LASF44:
	.string	"crypto_auth_hmacsha512_final"
.LASF2:
	.string	"signed char"
.LASF29:
	.string	"crypto_auth_hmacsha512256_bytes"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-73-ge28a011) 5.2.0"
