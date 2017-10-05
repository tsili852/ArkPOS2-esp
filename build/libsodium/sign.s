	.file	"sign.c"
	.text
.Ltext0:
	.section	.text._crypto_sign_ed25519_ref10_hinit,"ax",@progbits
	.literal_position
	.literal .LC0, DOM2PREFIX$2611
	.literal .LC1, 34, 0
	.align	4
	.global	_crypto_sign_ed25519_ref10_hinit
	.type	_crypto_sign_ed25519_ref10_hinit, @function
_crypto_sign_ed25519_ref10_hinit:
.LFB0:
	.file 1 "C:/esp/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_sign/ed25519/ref10/sign.c"
	.loc 1 12 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 20 0
	mov.n	a10, a2
	call8	crypto_hash_sha512_init
.LVL1:
	.loc 1 21 0
	beqz.n	a3, .L1
	.loc 1 22 0
	l32r	a12, .LC1
	l32r	a13, .LC1+4
	l32r	a11, .LC0
	mov.n	a10, a2
	call8	crypto_hash_sha512_update
.LVL2:
.L1:
	retw.n
.LFE0:
	.size	_crypto_sign_ed25519_ref10_hinit, .-_crypto_sign_ed25519_ref10_hinit
	.section	.text._crypto_sign_ed25519_detached,"ax",@progbits
	.literal_position
	.literal .LC2, 32, 0
	.literal .LC3, 64, 0
	.align	4
	.global	_crypto_sign_ed25519_detached
	.type	_crypto_sign_ed25519_detached, @function
_crypto_sign_ed25519_detached:
.LFB1:
	.loc 1 30 0
.LVL3:
	entry	sp, 608
.LCFI1:
	.loc 1 37 0
	l32r	a12, .LC2
	l32r	a13, .LC2+4
	l32i	a11, sp, 608
	movi	a10, 0xd8
	add.n	a10, a10, sp
	call8	crypto_hash_sha512
.LVL4:
	.loc 1 38 0
	l8ui	a8, sp, 216
	movi.n	a5, -8
	and	a5, a8, a5
	s8i	a5, sp, 216
	.loc 1 39 0
	l8ui	a5, sp, 247
	extui	a8, a5, 0, 6
	.loc 1 40 0
	movi.n	a5, 0x40
	or	a5, a8, a5
	s8i	a5, sp, 247
	.loc 1 42 0
	l32i	a11, sp, 612
	mov.n	a10, sp
	call8	_crypto_sign_ed25519_ref10_hinit
.LVL5:
	.loc 1 43 0
	l32r	a12, .LC2
	l32r	a13, .LC2+4
	movi	a5, 0xd8
	add.n	a5, a5, sp
	addi	a11, a5, 32
	mov.n	a10, sp
	call8	crypto_hash_sha512_update
.LVL6:
	.loc 1 44 0
	mov.n	a12, a6
	mov.n	a13, a7
	mov.n	a11, a4
	mov.n	a10, sp
	call8	crypto_hash_sha512_update
.LVL7:
	.loc 1 45 0
	movi	a11, 0x118
	add.n	a11, a11, sp
	mov.n	a10, sp
	call8	crypto_hash_sha512_final
.LVL8:
	.loc 1 47 0
	addi	a5, a2, 32
	movi.n	a12, 0x20
	l32i	a8, sp, 608
	add.n	a11, a8, a12
	mov.n	a10, a5
	call8	memmove
.LVL9:
	.loc 1 49 0
	movi	a10, 0x118
	add.n	a10, a10, sp
	call8	crypto_core_curve25519_ref10_sc_reduce
.LVL10:
	.loc 1 50 0
	movi	a11, 0x118
	add.n	a11, a11, sp
	movi	a10, 0x198
	add.n	a10, a10, sp
	call8	crypto_core_curve25519_ref10_ge_scalarmult_base
.LVL11:
	.loc 1 51 0
	movi	a11, 0x198
	add.n	a11, a11, sp
	mov.n	a10, a2
	call8	crypto_core_curve25519_ref10_ge_p3_tobytes
.LVL12:
	.loc 1 53 0
	l32i	a11, sp, 612
	mov.n	a10, sp
	call8	_crypto_sign_ed25519_ref10_hinit
.LVL13:
	.loc 1 54 0
	l32r	a12, .LC3
	l32r	a13, .LC3+4
	mov.n	a11, a2
	mov.n	a10, sp
	call8	crypto_hash_sha512_update
.LVL14:
	.loc 1 55 0
	mov.n	a12, a6
	mov.n	a13, a7
	mov.n	a11, a4
	mov.n	a10, sp
	call8	crypto_hash_sha512_update
.LVL15:
	.loc 1 56 0
	movi	a11, 0x158
	add.n	a11, a11, sp
	mov.n	a10, sp
	call8	crypto_hash_sha512_final
.LVL16:
	.loc 1 58 0
	movi	a10, 0x158
	add.n	a10, a10, sp
	call8	crypto_core_curve25519_ref10_sc_reduce
.LVL17:
	.loc 1 59 0
	movi	a13, 0x118
	add.n	a13, a13, sp
	movi	a12, 0xd8
	add.n	a12, a12, sp
	movi	a11, 0x158
	add.n	a11, a11, sp
	mov.n	a10, a5
	call8	crypto_core_curve25519_ref10_sc_muladd
.LVL18:
	.loc 1 61 0
	movi.n	a11, 0x40
	movi	a10, 0xd8
	add.n	a10, a10, sp
	call8	sodium_memzero
.LVL19:
	.loc 1 63 0
	beqz.n	a3, .L4
	.loc 1 64 0
	l32r	a4, .LC3
.LVL20:
	l32r	a5, .LC3+4
	s32i.n	a4, a3, 0
	s32i.n	a5, a3, 4
.L4:
	.loc 1 67 0
	movi.n	a2, 0
.LVL21:
	retw.n
.LFE1:
	.size	_crypto_sign_ed25519_detached, .-_crypto_sign_ed25519_detached
	.section	.text.crypto_sign_ed25519_detached,"ax",@progbits
	.align	4
	.global	crypto_sign_ed25519_detached
	.type	crypto_sign_ed25519_detached, @function
crypto_sign_ed25519_detached:
.LFB2:
	.loc 1 73 0
.LVL22:
	entry	sp, 48
.LCFI2:
	mov.n	a15, a7
	.loc 1 74 0
	movi.n	a8, 0
	s32i.n	a8, sp, 4
	l32i.n	a8, sp, 48
	s32i.n	a8, sp, 0
	mov.n	a14, a6
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	_crypto_sign_ed25519_detached
.LVL23:
	.loc 1 75 0
	mov.n	a2, a10
.LVL24:
	retw.n
.LFE2:
	.size	crypto_sign_ed25519_detached, .-crypto_sign_ed25519_detached
	.section	.text.crypto_sign_ed25519,"ax",@progbits
	.literal_position
	.literal .LC4, 0, 0
	.align	4
	.global	crypto_sign_ed25519
	.type	crypto_sign_ed25519, @function
crypto_sign_ed25519:
.LFB3:
	.loc 1 81 0
.LVL25:
	entry	sp, 80
.LCFI3:
	s32i.n	a6, sp, 32
	.loc 1 84 0
	addi	a5, a2, 64
	mov.n	a12, a6
	mov.n	a11, a4
	mov.n	a10, a5
	call8	memmove
.LVL26:
	.loc 1 86 0
	l32i	a8, sp, 80
	s32i.n	a8, sp, 0
	mov.n	a14, a6
	mov.n	a15, a7
	mov.n	a12, a5
	addi	a11, sp, 16
	mov.n	a10, a2
	call8	crypto_sign_ed25519_detached
.LVL27:
	bnez.n	a10, .L7
	.loc 1 88 0
	l32i.n	a5, sp, 16
	l32i.n	a8, sp, 20
	.loc 1 87 0
	bnei	a5, 64, .L7
	beqz.n	a8, .L13
.L7:
	.loc 1 89 0
	beqz.n	a3, .L10
	.loc 1 90 0
	l32r	a8, .LC4
	l32r	a9, .LC4+4
	s32i.n	a8, a3, 0
	s32i.n	a9, a3, 4
.L10:
	.loc 1 92 0
	addi	a12, a6, 64
	movi.n	a11, 0
	mov.n	a10, a2
	call8	memset
.LVL28:
	.loc 1 93 0
	movi.n	a10, -1
	j	.L11
.L13:
	.loc 1 97 0
	beqz.n	a3, .L11
	.loc 1 98 0
	add.n	a6, a6, a5
.LVL29:
	movi.n	a5, 1
	l32i.n	a2, sp, 32
.LVL30:
	bltu	a6, a2, .L12
	movi.n	a5, 0
.L12:
	add.n	a7, a7, a8
	add.n	a5, a5, a7
	s32i.n	a6, a3, 0
	s32i.n	a5, a3, 4
.L11:
	.loc 1 101 0
	mov.n	a2, a10
	retw.n
.LFE3:
	.size	crypto_sign_ed25519, .-crypto_sign_ed25519
	.section	.rodata.DOM2PREFIX$2611,"a",@progbits
	.align	4
	.type	DOM2PREFIX$2611, @object
	.size	DOM2PREFIX$2611, 34
DOM2PREFIX$2611:
	.byte	83
	.byte	105
	.byte	103
	.byte	69
	.byte	100
	.byte	50
	.byte	53
	.byte	53
	.byte	49
	.byte	57
	.byte	32
	.byte	110
	.byte	111
	.byte	32
	.byte	69
	.byte	100
	.byte	50
	.byte	53
	.byte	53
	.byte	49
	.byte	57
	.byte	32
	.byte	99
	.byte	111
	.byte	108
	.byte	108
	.byte	105
	.byte	115
	.byte	105
	.byte	111
	.byte	110
	.byte	115
	.byte	1
	.byte	0
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
	.uleb128 0x260
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
	.uleb128 0x30
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
	.uleb128 0x50
	.align	4
.LEFDE6:
	.text
.Letext0:
	.file 2 "C:/esp/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "C:/esp/esp-idf/components/newlib/include/stdint.h"
	.file 4 "C:/esp/esp-idf/components/mbedtls/port/include/sha512_alt.h"
	.file 5 "C:/esp/esp-idf/components/libsodium/port_include/sodium/crypto_hash_sha512.h"
	.file 6 "C:/esp/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/private/curve25519_ref10.h"
	.file 7 "C:/esp/esp-idf/components/newlib/include/string.h"
	.file 8 "C:/esp/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/utils.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x69b
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF49
	.byte	0xc
	.4byte	.LASF50
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x2
	.byte	0x19
	.4byte	0x28
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x2
	.byte	0x1e
	.4byte	0x21
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x5
	.byte	0x4
	.4byte	0x44
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x3
	.byte	0x2c
	.4byte	0x52
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x3
	.byte	0x39
	.4byte	0x64
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2f
	.byte	0x4
	.byte	0x20
	.4byte	0xc6
	.uleb128 0x7
	.4byte	.LASF15
	.byte	0
	.uleb128 0x7
	.4byte	.LASF16
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF17
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x4
	.byte	0x24
	.4byte	0xa7
	.uleb128 0x8
	.byte	0xd8
	.byte	0x4
	.byte	0x29
	.4byte	0x116
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x4
	.byte	0x2b
	.4byte	0x116
	.byte	0
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x4
	.byte	0x2c
	.4byte	0x126
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x4
	.byte	0x2d
	.4byte	0x136
	.byte	0x50
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x4
	.byte	0x2e
	.4byte	0x28
	.byte	0xd0
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x4
	.byte	0x2f
	.4byte	0xc6
	.byte	0xd4
	.byte	0
	.uleb128 0xa
	.4byte	0x9c
	.4byte	0x126
	.uleb128 0xb
	.4byte	0x76
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.4byte	0x9c
	.4byte	0x136
	.uleb128 0xb
	.4byte	0x76
	.byte	0x7
	.byte	0
	.uleb128 0xa
	.4byte	0x44
	.4byte	0x146
	.uleb128 0xb
	.4byte	0x76
	.byte	0x7f
	.byte	0
	.uleb128 0x4
	.4byte	.LASF24
	.byte	0x4
	.byte	0x31
	.4byte	0xd1
	.uleb128 0x4
	.4byte	.LASF25
	.byte	0x5
	.byte	0x25
	.4byte	0x146
	.uleb128 0x4
	.4byte	.LASF26
	.byte	0x6
	.byte	0x8
	.4byte	0x167
	.uleb128 0xa
	.4byte	0x91
	.4byte	0x177
	.uleb128 0xb
	.4byte	0x76
	.byte	0x9
	.byte	0
	.uleb128 0x8
	.byte	0xa0
	.byte	0x6
	.byte	0x4b
	.4byte	0x1a8
	.uleb128 0xc
	.string	"X"
	.byte	0x6
	.byte	0x4c
	.4byte	0x15c
	.byte	0
	.uleb128 0xc
	.string	"Y"
	.byte	0x6
	.byte	0x4d
	.4byte	0x15c
	.byte	0x28
	.uleb128 0xc
	.string	"Z"
	.byte	0x6
	.byte	0x4e
	.4byte	0x15c
	.byte	0x50
	.uleb128 0xc
	.string	"T"
	.byte	0x6
	.byte	0x4f
	.4byte	0x15c
	.byte	0x78
	.byte	0
	.uleb128 0x4
	.4byte	.LASF27
	.byte	0x6
	.byte	0x50
	.4byte	0x177
	.uleb128 0xd
	.4byte	.LASF51
	.byte	0x1
	.byte	0xb
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x220
	.uleb128 0xe
	.string	"hs"
	.byte	0x1
	.byte	0xb
	.4byte	0x220
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xf
	.4byte	.LASF28
	.byte	0x1
	.byte	0xb
	.4byte	0x28
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x10
	.4byte	.LASF31
	.byte	0x1
	.byte	0xd
	.4byte	0x236
	.uleb128 0x5
	.byte	0x3
	.4byte	DOM2PREFIX$2611
	.uleb128 0x11
	.4byte	.LVL1
	.4byte	0x627
	.4byte	0x206
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL2
	.4byte	0x632
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	DOM2PREFIX$2611
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x151
	.uleb128 0xa
	.4byte	0x44
	.4byte	0x236
	.uleb128 0xb
	.4byte	0x76
	.byte	0x21
	.byte	0
	.uleb128 0x14
	.4byte	0x226
	.uleb128 0x15
	.4byte	.LASF34
	.byte	0x1
	.byte	0x1b
	.4byte	0x28
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4ae
	.uleb128 0x16
	.string	"sig"
	.byte	0x1
	.byte	0x1b
	.4byte	0x84
	.4byte	.LLST0
	.uleb128 0xf
	.4byte	.LASF29
	.byte	0x1
	.byte	0x1b
	.4byte	0x4ae
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x16
	.string	"m"
	.byte	0x1
	.byte	0x1c
	.4byte	0x4b4
	.4byte	.LLST1
	.uleb128 0xf
	.4byte	.LASF30
	.byte	0x1
	.byte	0x1c
	.4byte	0x21
	.uleb128 0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.uleb128 0xe
	.string	"sk"
	.byte	0x1
	.byte	0x1d
	.4byte	0x4b4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xf
	.4byte	.LASF28
	.byte	0x1
	.byte	0x1d
	.4byte	0x28
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x17
	.string	"hs"
	.byte	0x1
	.byte	0x1f
	.4byte	0x151
	.uleb128 0x3
	.byte	0x91
	.sleb128 -608
	.uleb128 0x17
	.string	"az"
	.byte	0x1
	.byte	0x20
	.4byte	0x4bf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -392
	.uleb128 0x10
	.4byte	.LASF32
	.byte	0x1
	.byte	0x21
	.4byte	0x4bf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0x10
	.4byte	.LASF33
	.byte	0x1
	.byte	0x22
	.4byte	0x4bf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x17
	.string	"R"
	.byte	0x1
	.byte	0x23
	.4byte	0x1a8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x11
	.4byte	.LVL4
	.4byte	0x63d
	.4byte	0x30d
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -392
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.uleb128 0x11
	.4byte	.LVL5
	.4byte	0x1b3
	.4byte	0x329
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -608
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0
	.uleb128 0x11
	.4byte	.LVL6
	.4byte	0x632
	.4byte	0x344
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -608
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 32
	.byte	0
	.uleb128 0x11
	.4byte	.LVL7
	.4byte	0x632
	.4byte	0x35f
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -608
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL8
	.4byte	0x648
	.4byte	0x37b
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -608
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.byte	0
	.uleb128 0x11
	.4byte	.LVL9
	.4byte	0x653
	.4byte	0x39e
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x11
	.4byte	.LVL10
	.4byte	0x65e
	.4byte	0x3b3
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.byte	0
	.uleb128 0x11
	.4byte	.LVL11
	.4byte	0x669
	.4byte	0x3cf
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.byte	0
	.uleb128 0x11
	.4byte	.LVL12
	.4byte	0x674
	.4byte	0x3ea
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.byte	0
	.uleb128 0x11
	.4byte	.LVL13
	.4byte	0x1b3
	.4byte	0x406
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -608
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0
	.uleb128 0x11
	.4byte	.LVL14
	.4byte	0x632
	.4byte	0x421
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -608
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL15
	.4byte	0x632
	.4byte	0x43c
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -608
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL16
	.4byte	0x648
	.4byte	0x458
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -608
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.byte	0
	.uleb128 0x11
	.4byte	.LVL17
	.4byte	0x65e
	.4byte	0x46d
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.byte	0
	.uleb128 0x11
	.4byte	.LVL18
	.4byte	0x67f
	.4byte	0x496
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -392
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.byte	0
	.uleb128 0x13
	.4byte	.LVL19
	.4byte	0x68a
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -392
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x21
	.uleb128 0x5
	.byte	0x4
	.4byte	0x4ba
	.uleb128 0x14
	.4byte	0x44
	.uleb128 0xa
	.4byte	0x44
	.4byte	0x4cf
	.uleb128 0xb
	.4byte	0x76
	.byte	0x3f
	.byte	0
	.uleb128 0x15
	.4byte	.LASF35
	.byte	0x1
	.byte	0x46
	.4byte	0x28
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x559
	.uleb128 0x16
	.string	"sig"
	.byte	0x1
	.byte	0x46
	.4byte	0x84
	.4byte	.LLST2
	.uleb128 0xf
	.4byte	.LASF29
	.byte	0x1
	.byte	0x46
	.4byte	0x4ae
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xe
	.string	"m"
	.byte	0x1
	.byte	0x47
	.4byte	0x4b4
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xf
	.4byte	.LASF30
	.byte	0x1
	.byte	0x47
	.4byte	0x21
	.uleb128 0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.uleb128 0xe
	.string	"sk"
	.byte	0x1
	.byte	0x48
	.4byte	0x4b4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x13
	.4byte	.LVL23
	.4byte	0x23b
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0x12
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF36
	.byte	0x1
	.byte	0x4e
	.4byte	0x28
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x627
	.uleb128 0x16
	.string	"sm"
	.byte	0x1
	.byte	0x4e
	.4byte	0x84
	.4byte	.LLST3
	.uleb128 0xf
	.4byte	.LASF37
	.byte	0x1
	.byte	0x4e
	.4byte	0x4ae
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xe
	.string	"m"
	.byte	0x1
	.byte	0x4f
	.4byte	0x4b4
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x18
	.4byte	.LASF30
	.byte	0x1
	.byte	0x4f
	.4byte	0x21
	.4byte	.LLST4
	.uleb128 0xe
	.string	"sk"
	.byte	0x1
	.byte	0x50
	.4byte	0x4b4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x10
	.4byte	.LASF38
	.byte	0x1
	.byte	0x52
	.4byte	0x21
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x11
	.4byte	.LVL26
	.4byte	0x653
	.4byte	0x5e2
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL27
	.4byte	0x4cf
	.4byte	0x60a
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.uleb128 0x13
	.4byte	.LVL28
	.4byte	0x695
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x76
	.sleb128 64
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LASF39
	.4byte	.LASF39
	.byte	0x5
	.byte	0x33
	.uleb128 0x19
	.4byte	.LASF40
	.4byte	.LASF40
	.byte	0x5
	.byte	0x36
	.uleb128 0x19
	.4byte	.LASF41
	.4byte	.LASF41
	.byte	0x5
	.byte	0x2f
	.uleb128 0x19
	.4byte	.LASF42
	.4byte	.LASF42
	.byte	0x5
	.byte	0x3b
	.uleb128 0x19
	.4byte	.LASF43
	.4byte	.LASF43
	.byte	0x7
	.byte	0x18
	.uleb128 0x19
	.4byte	.LASF44
	.4byte	.LASF44
	.byte	0x6
	.byte	0x9d
	.uleb128 0x19
	.4byte	.LASF45
	.4byte	.LASF45
	.byte	0x6
	.byte	0x91
	.uleb128 0x19
	.4byte	.LASF46
	.4byte	.LASF46
	.byte	0x6
	.byte	0x80
	.uleb128 0x19
	.4byte	.LASF47
	.4byte	.LASF47
	.byte	0x6
	.byte	0x9e
	.uleb128 0x19
	.4byte	.LASF48
	.4byte	.LASF48
	.byte	0x8
	.byte	0x16
	.uleb128 0x1a
	.4byte	.LASF52
	.4byte	.LASF52
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
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x34
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
	.uleb128 0x18
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
	.4byte	.LVL3
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL21
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL3
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL20
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL22
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL24
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL25
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL30
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL25
	.4byte	.LVL29
	.2byte	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL29
	.4byte	.LFE3
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x6
	.uleb128 0x21
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x34
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF50:
	.string	"C:/esp/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_sign/ed25519/ref10/sign.c"
.LASF22:
	.string	"is384"
.LASF16:
	.string	"ESP_MBEDTLS_SHA512_HARDWARE"
.LASF14:
	.string	"uint64_t"
.LASF18:
	.string	"esp_mbedtls_sha512_mode"
.LASF0:
	.string	"long long unsigned int"
.LASF25:
	.string	"crypto_hash_sha512_state"
.LASF46:
	.string	"crypto_core_curve25519_ref10_ge_p3_tobytes"
.LASF6:
	.string	"long long int"
.LASF3:
	.string	"signed char"
.LASF34:
	.string	"_crypto_sign_ed25519_detached"
.LASF20:
	.string	"state"
.LASF9:
	.string	"long int"
.LASF29:
	.string	"siglen_p"
.LASF21:
	.string	"buffer"
.LASF35:
	.string	"crypto_sign_ed25519_detached"
.LASF42:
	.string	"crypto_hash_sha512_final"
.LASF1:
	.string	"unsigned int"
.LASF11:
	.string	"long unsigned int"
.LASF2:
	.string	"short unsigned int"
.LASF33:
	.string	"hram"
.LASF19:
	.string	"total"
.LASF30:
	.string	"mlen"
.LASF31:
	.string	"DOM2PREFIX"
.LASF10:
	.string	"sizetype"
.LASF40:
	.string	"crypto_hash_sha512_update"
.LASF27:
	.string	"crypto_core_curve25519_ref10_ge_p3"
.LASF48:
	.string	"sodium_memzero"
.LASF8:
	.string	"__uint64_t"
.LASF15:
	.string	"ESP_MBEDTLS_SHA512_UNUSED"
.LASF38:
	.string	"siglen"
.LASF13:
	.string	"int32_t"
.LASF4:
	.string	"unsigned char"
.LASF26:
	.string	"crypto_core_curve25519_ref10_fe"
.LASF49:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF5:
	.string	"short int"
.LASF45:
	.string	"crypto_core_curve25519_ref10_ge_scalarmult_base"
.LASF32:
	.string	"nonce"
.LASF51:
	.string	"_crypto_sign_ed25519_ref10_hinit"
.LASF12:
	.string	"char"
.LASF23:
	.string	"mode"
.LASF36:
	.string	"crypto_sign_ed25519"
.LASF7:
	.string	"__int32_t"
.LASF28:
	.string	"prehashed"
.LASF24:
	.string	"mbedtls_sha512_context"
.LASF52:
	.string	"memset"
.LASF43:
	.string	"memmove"
.LASF17:
	.string	"ESP_MBEDTLS_SHA512_SOFTWARE"
.LASF44:
	.string	"crypto_core_curve25519_ref10_sc_reduce"
.LASF47:
	.string	"crypto_core_curve25519_ref10_sc_muladd"
.LASF41:
	.string	"crypto_hash_sha512"
.LASF37:
	.string	"smlen_p"
.LASF39:
	.string	"crypto_hash_sha512_init"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-73-ge28a011) 5.2.0"
