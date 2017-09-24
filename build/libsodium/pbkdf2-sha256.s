	.file	"pbkdf2-sha256.c"
	.text
.Ltext0:
	.section	.text.PBKDF2_SHA256,"ax",@progbits
	.literal_position
	.literal .LC1, 4, 0
	.literal .LC2, 32, 0
	.align	4
	.global	PBKDF2_SHA256
	.type	PBKDF2_SHA256, @function
PBKDF2_SHA256:
.LFB12:
	.file 1 "C:/esp/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_pwhash/scryptsalsa208sha256/pbkdf2-sha256.c"
	.loc 1 47 0
.LVL0:
	entry	sp, 576
.LCFI0:
	s32i	a6, sp, 532
	mov.n	a6, a7
.LVL1:
	.loc 1 62 0
	mov.n	a12, a3
	mov.n	a11, a2
	mov.n	a10, sp
	call8	crypto_auth_hmacsha256_init
.LVL2:
	.loc 1 63 0
	movi.n	a7, 0
	mov.n	a12, a5
	mov.n	a13, a7
	mov.n	a11, a4
	mov.n	a10, sp
	call8	crypto_auth_hmacsha256_update
.LVL3:
	.loc 1 65 0
	j	.L2
.LVL4:
.L10:
	.loc 1 66 0
	addi.n	a7, a7, 1
.LVL5:
.LBB4:
.LBB5:
	.file 2 "C:/esp/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/private/common.h"
	.loc 2 173 0
	addmi	a4, sp, 0x100
	s8i	a7, a4, 195
.LVL6:
	.loc 2 174 0
	extui	a5, a7, 8, 8
	s8i	a5, a4, 194
.LVL7:
	.loc 2 175 0
	extui	a5, a7, 16, 8
	s8i	a5, a4, 193
.LVL8:
	.loc 2 176 0
	extui	a5, a7, 24, 8
.LVL9:
	s8i	a5, a4, 192
.LBE5:
.LBE4:
	.loc 1 67 0
	movi	a12, 0xe0
	mov.n	a11, sp
	add.n	a10, a12, sp
	call8	memcpy
.LVL10:
	.loc 1 68 0
	l32r	a12, .LC1
	l32r	a13, .LC1+4
	movi	a11, 0x1c0
	add.n	a11, sp, a11
	movi	a10, 0xe0
	add.n	a10, a10, sp
	call8	crypto_auth_hmacsha256_update
.LVL11:
	.loc 1 69 0
	movi	a11, 0x1c4
	add.n	a11, a11, sp
	movi	a10, 0xe0
	add.n	a10, a10, sp
	call8	crypto_auth_hmacsha256_final
.LVL12:
	.loc 1 71 0
	movi.n	a12, 0x20
	movi	a11, 0x1c4
	add.n	a11, a11, sp
	movi	a10, 0x1e4
	add.n	a10, sp, a10
	call8	memcpy
.LVL13:
	.loc 1 73 0
	movi.n	a5, 2
.LVL14:
	movi.n	a4, 0
	j	.L3
.LVL15:
.L7:
	.loc 1 74 0
	mov.n	a12, a3
	mov.n	a11, a2
	movi	a10, 0xe0
	add.n	a10, a10, sp
	call8	crypto_auth_hmacsha256_init
.LVL16:
	.loc 1 75 0
	l32r	a12, .LC2
	l32r	a13, .LC2+4
	movi	a11, 0x1c4
	add.n	a11, a11, sp
	movi	a10, 0xe0
	add.n	a10, a10, sp
	call8	crypto_auth_hmacsha256_update
.LVL17:
	.loc 1 76 0
	movi	a11, 0x1c4
	add.n	a11, a11, sp
	movi	a10, 0xe0
	add.n	a10, a10, sp
	call8	crypto_auth_hmacsha256_final
.LVL18:
	.loc 1 78 0
	movi.n	a8, 0
	j	.L4
.LVL19:
.L5:
	.loc 1 79 0 discriminator 3
	movi	a10, 0x1c4
	add.n	a10, a10, sp
	add.n	a9, a10, a8
	l8ui	a11, a9, 0
	movi	a10, 0x1e4
	add.n	a10, a10, sp
	add.n	a9, a10, a8
	l8ui	a10, a9, 0
	xor	a10, a11, a10
	s8i	a10, a9, 0
	.loc 1 78 0 discriminator 3
	addi.n	a8, a8, 1
.LVL20:
.L4:
	.loc 1 78 0 is_stmt 0 discriminator 1
	movi.n	a9, 0x1f
	bge	a9, a8, .L5
	.loc 1 73 0 is_stmt 1 discriminator 2
	addi.n	a9, a5, 1
	movi.n	a8, 1
.LVL21:
	bltu	a9, a5, .L6
	movi.n	a8, 0
.L6:
	add.n	a8, a8, a4
	mov.n	a5, a9
.LVL22:
	mov.n	a4, a8
.LVL23:
.L3:
	.loc 1 73 0 is_stmt 0 discriminator 1
	bltu	a6, a4, .L12
	bne	a4, a6, .L7
	l32i	a8, sp, 532
	bgeu	a8, a5, .L7
.L12:
	.loc 1 84 0 is_stmt 1
	l32i	a4, sp, 580
.LVL24:
	l32i	a5, sp, 528
	sub	a12, a4, a5
.LVL25:
	.loc 1 85 0
	movi.n	a4, 0x20
	bgeu	a4, a12, .L9
	.loc 1 86 0
	mov.n	a12, a4
.LVL26:
.L9:
	.loc 1 88 0 discriminator 2
	movi	a11, 0x1e4
	add.n	a11, sp, a11
	l32i	a4, sp, 576
	l32i	a5, sp, 528
	add.n	a10, a4, a5
	call8	memcpy
.LVL27:
.L2:
	.loc 1 65 0 discriminator 1
	slli	a4, a7, 5
	s32i	a4, sp, 528
	l32i	a5, sp, 580
	bltu	a4, a5, .L10
	.loc 1 90 0
	movi	a11, 0xe0
	mov.n	a10, sp
	call8	sodium_memzero
.LVL28:
	retw.n
.LFE12:
	.size	PBKDF2_SHA256, .-PBKDF2_SHA256
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
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI0-.LFB12
	.byte	0xe
	.uleb128 0x240
	.align	4
.LEFDE0:
	.text
.Letext0:
	.file 3 "C:/esp/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "C:/esp/esp-idf/components/newlib/include/stdint.h"
	.file 5 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 6 "C:/esp/esp-idf/components/mbedtls/port/include/sha256_alt.h"
	.file 7 "C:/esp/esp-idf/components/libsodium/port_include/sodium/crypto_hash_sha256.h"
	.file 8 "C:/esp/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_auth_hmacsha256.h"
	.file 9 "C:/esp/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/utils.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x48b
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF45
	.byte	0xc
	.4byte	.LASF46
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x3
	.byte	0x12
	.4byte	0x3a
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x3
	.byte	0x1a
	.4byte	0x61
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x3
	.byte	0x1e
	.4byte	0x21
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x4
	.byte	0x15
	.4byte	0x2f
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x4
	.byte	0x2d
	.4byte	0x56
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x4
	.byte	0x39
	.4byte	0x6f
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x5
	.byte	0xd8
	.4byte	0x61
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF14
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF16
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF17
	.uleb128 0x5
	.byte	0x4
	.4byte	0x61
	.byte	0x6
	.byte	0x20
	.4byte	0xe1
	.uleb128 0x6
	.4byte	.LASF18
	.byte	0
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF20
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x6
	.byte	0x24
	.4byte	0xc2
	.uleb128 0x7
	.byte	0x70
	.byte	0x6
	.byte	0x29
	.4byte	0x131
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x6
	.byte	0x2b
	.4byte	0x131
	.byte	0
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x6
	.byte	0x2c
	.4byte	0x141
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x6
	.byte	0x2d
	.4byte	0x151
	.byte	0x28
	.uleb128 0x8
	.4byte	.LASF25
	.byte	0x6
	.byte	0x2e
	.4byte	0x4f
	.byte	0x68
	.uleb128 0x8
	.4byte	.LASF26
	.byte	0x6
	.byte	0x2f
	.4byte	0xe1
	.byte	0x6c
	.byte	0
	.uleb128 0x9
	.4byte	0x85
	.4byte	0x141
	.uleb128 0xa
	.4byte	0xad
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.4byte	0x85
	.4byte	0x151
	.uleb128 0xa
	.4byte	0xad
	.byte	0x7
	.byte	0
	.uleb128 0x9
	.4byte	0x3a
	.4byte	0x161
	.uleb128 0xa
	.4byte	0xad
	.byte	0x3f
	.byte	0
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x6
	.byte	0x31
	.4byte	0xec
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x7
	.byte	0x25
	.4byte	0x161
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0xe0
	.byte	0x8
	.byte	0x26
	.4byte	0x19c
	.uleb128 0x8
	.4byte	.LASF29
	.byte	0x8
	.byte	0x27
	.4byte	0x16c
	.byte	0
	.uleb128 0x8
	.4byte	.LASF30
	.byte	0x8
	.byte	0x28
	.4byte	0x16c
	.byte	0x70
	.byte	0
	.uleb128 0x3
	.4byte	.LASF31
	.byte	0x8
	.byte	0x29
	.4byte	0x177
	.uleb128 0xc
	.4byte	.LASF47
	.byte	0x2
	.byte	0xa8
	.byte	0x3
	.4byte	0x1c8
	.uleb128 0xd
	.string	"dst"
	.byte	0x2
	.byte	0xa8
	.4byte	0x1c8
	.uleb128 0xd
	.string	"w"
	.byte	0x2
	.byte	0xa8
	.4byte	0x85
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x7a
	.uleb128 0xf
	.4byte	.LASF48
	.byte	0x1
	.byte	0x2d
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x42e
	.uleb128 0x10
	.4byte	.LASF32
	.byte	0x1
	.byte	0x2d
	.4byte	0x42e
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x10
	.4byte	.LASF33
	.byte	0x1
	.byte	0x2d
	.4byte	0x9b
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x11
	.4byte	.LASF34
	.byte	0x1
	.byte	0x2d
	.4byte	0x42e
	.4byte	.LLST0
	.uleb128 0x11
	.4byte	.LASF35
	.byte	0x1
	.byte	0x2e
	.4byte	0x9b
	.4byte	.LLST1
	.uleb128 0x12
	.string	"c"
	.byte	0x1
	.byte	0x2e
	.4byte	0x90
	.4byte	.LLST2
	.uleb128 0x13
	.string	"buf"
	.byte	0x1
	.byte	0x2e
	.4byte	0x1c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x10
	.4byte	.LASF36
	.byte	0x1
	.byte	0x2e
	.4byte	0x9b
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x14
	.4byte	.LASF37
	.byte	0x1
	.byte	0x30
	.4byte	0x19c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -576
	.uleb128 0x14
	.4byte	.LASF38
	.byte	0x1
	.byte	0x30
	.4byte	0x19c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.byte	0x31
	.4byte	0x9b
	.4byte	.LLST3
	.uleb128 0x14
	.4byte	.LASF39
	.byte	0x1
	.byte	0x32
	.4byte	0x439
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x16
	.string	"U"
	.byte	0x1
	.byte	0x33
	.4byte	0x449
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x16
	.string	"T"
	.byte	0x1
	.byte	0x34
	.4byte	0x449
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x15
	.string	"j"
	.byte	0x1
	.byte	0x35
	.4byte	0x90
	.4byte	.LLST4
	.uleb128 0x15
	.string	"k"
	.byte	0x1
	.byte	0x36
	.4byte	0x4f
	.4byte	.LLST5
	.uleb128 0x17
	.4byte	.LASF40
	.byte	0x1
	.byte	0x37
	.4byte	0x9b
	.4byte	.LLST6
	.uleb128 0x18
	.4byte	0x1a7
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.byte	0x1
	.byte	0x42
	.4byte	0x2e7
	.uleb128 0x19
	.4byte	0x1be
	.4byte	.LLST7
	.uleb128 0x19
	.4byte	0x1b3
	.4byte	.LLST8
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL2
	.4byte	0x459
	.4byte	0x308
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -576
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL3
	.4byte	0x464
	.4byte	0x323
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -576
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL10
	.4byte	0x46f
	.4byte	0x345
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -576
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0xe0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL11
	.4byte	0x464
	.4byte	0x361
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL12
	.4byte	0x478
	.4byte	0x37d
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL13
	.4byte	0x46f
	.4byte	0x39f
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL16
	.4byte	0x459
	.4byte	0x3c0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL17
	.4byte	0x464
	.4byte	0x3dc
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL18
	.4byte	0x478
	.4byte	0x3f8
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL27
	.4byte	0x46f
	.4byte	0x416
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x74
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL28
	.4byte	0x483
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -576
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xe0
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x434
	.uleb128 0x1d
	.4byte	0x7a
	.uleb128 0x9
	.4byte	0x7a
	.4byte	0x449
	.uleb128 0xa
	.4byte	0xad
	.byte	0x3
	.byte	0
	.uleb128 0x9
	.4byte	0x7a
	.4byte	0x459
	.uleb128 0xa
	.4byte	0xad
	.byte	0x1f
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF41
	.4byte	.LASF41
	.byte	0x8
	.byte	0x2f
	.uleb128 0x1e
	.4byte	.LASF42
	.4byte	.LASF42
	.byte	0x8
	.byte	0x34
	.uleb128 0x1f
	.4byte	.LASF49
	.4byte	.LASF49
	.uleb128 0x1e
	.4byte	.LASF43
	.4byte	.LASF43
	.byte	0x8
	.byte	0x39
	.uleb128 0x1e
	.4byte	.LASF44
	.4byte	.LASF44
	.byte	0x9
	.byte	0x16
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
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0xc
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.4byte	.LVL0
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL4
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL4
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL1
	.4byte	.LFE12
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x6
	.uleb128 0x21
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL5
	.4byte	.LVL27
	.2byte	0x3
	.byte	0x77
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0xa
	.byte	0x9e
	.uleb128 0x8
	.8byte	0x2
	.4byte	.LVL15
	.4byte	.LVL22
	.2byte	0x6
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x6
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL25
	.4byte	.LVL27-1
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x5
	.byte	0x77
	.sleb128 0
	.byte	0x38
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x5
	.byte	0x77
	.sleb128 0
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x5
	.byte	0x77
	.sleb128 0
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL14
	.4byte	.LVL27
	.2byte	0x5
	.byte	0x77
	.sleb128 0
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL5
	.4byte	.LVL27
	.2byte	0x4
	.byte	0x91
	.sleb128 -128
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF8:
	.string	"long long int"
.LASF5:
	.string	"__uint8_t"
.LASF13:
	.string	"size_t"
.LASF25:
	.string	"is224"
.LASF40:
	.string	"clen"
.LASF23:
	.string	"state"
.LASF28:
	.string	"crypto_hash_sha256_state"
.LASF24:
	.string	"buffer"
.LASF47:
	.string	"store32_be"
.LASF33:
	.string	"passwdlen"
.LASF19:
	.string	"ESP_MBEDTLS_SHA256_HARDWARE"
.LASF42:
	.string	"crypto_auth_hmacsha256_update"
.LASF12:
	.string	"uint64_t"
.LASF29:
	.string	"ictx"
.LASF32:
	.string	"passwd"
.LASF37:
	.string	"PShctx"
.LASF34:
	.string	"salt"
.LASF31:
	.string	"crypto_auth_hmacsha256_state"
.LASF46:
	.string	"C:/esp/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_pwhash/scryptsalsa208sha256/pbkdf2-sha256.c"
.LASF43:
	.string	"crypto_auth_hmacsha256_final"
.LASF2:
	.string	"unsigned char"
.LASF38:
	.string	"hctx"
.LASF20:
	.string	"ESP_MBEDTLS_SHA256_SOFTWARE"
.LASF4:
	.string	"short unsigned int"
.LASF11:
	.string	"uint32_t"
.LASF16:
	.string	"long unsigned int"
.LASF35:
	.string	"saltlen"
.LASF6:
	.string	"__uint32_t"
.LASF36:
	.string	"dkLen"
.LASF48:
	.string	"PBKDF2_SHA256"
.LASF30:
	.string	"octx"
.LASF7:
	.string	"unsigned int"
.LASF0:
	.string	"long long unsigned int"
.LASF10:
	.string	"uint8_t"
.LASF26:
	.string	"mode"
.LASF41:
	.string	"crypto_auth_hmacsha256_init"
.LASF15:
	.string	"sizetype"
.LASF39:
	.string	"ivec"
.LASF45:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF49:
	.string	"memcpy"
.LASF27:
	.string	"mbedtls_sha256_context"
.LASF3:
	.string	"short int"
.LASF9:
	.string	"__uint64_t"
.LASF22:
	.string	"total"
.LASF14:
	.string	"long int"
.LASF17:
	.string	"char"
.LASF18:
	.string	"ESP_MBEDTLS_SHA256_UNUSED"
.LASF1:
	.string	"signed char"
.LASF44:
	.string	"sodium_memzero"
.LASF21:
	.string	"esp_mbedtls_sha256_mode"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-61-gab8375a) 5.2.0"
