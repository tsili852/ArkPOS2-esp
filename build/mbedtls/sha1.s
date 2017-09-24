	.file	"sha1.c"
	.text
.Ltext0:
	.section	.text.mbedtls_sha1,"ax",@progbits
	.align	4
	.global	mbedtls_sha1
	.type	mbedtls_sha1, @function
mbedtls_sha1:
.LFB0:
	.file 1 "C:/esp/esp-idf/components/mbedtls/library/sha1.c"
	.loc 1 353 0
.LVL0:
	entry	sp, 128
.LCFI0:
	.loc 1 356 0
	mov.n	a10, sp
	call8	mbedtls_sha1_init
.LVL1:
	.loc 1 357 0
	mov.n	a10, sp
	call8	mbedtls_sha1_starts
.LVL2:
	.loc 1 358 0
	mov.n	a12, a3
	mov.n	a11, a2
	mov.n	a10, sp
	call8	mbedtls_sha1_update
.LVL3:
	.loc 1 359 0
	mov.n	a11, a4
	mov.n	a10, sp
	call8	mbedtls_sha1_finish
.LVL4:
	.loc 1 360 0
	mov.n	a10, sp
	call8	mbedtls_sha1_free
.LVL5:
	retw.n
.LFE0:
	.size	mbedtls_sha1, .-mbedtls_sha1
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC0:
	.string	"  SHA-1 test #%d: "
	.align	4
.LC5:
	.string	"failed"
	.align	4
.LC7:
	.string	"passed"
	.section	.text.mbedtls_sha1_self_test,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.literal .LC2, sha1_test_buf
	.literal .LC3, sha1_test_buflen
	.literal .LC4, sha1_test_sum
	.literal .LC6, .LC5
	.literal .LC8, .LC7
	.align	4
	.global	mbedtls_sha1_self_test
	.type	mbedtls_sha1_self_test, @function
mbedtls_sha1_self_test:
.LFB1:
	.loc 1 393 0
.LVL6:
	entry	sp, 1184
.LCFI1:
.LVL7:
	.loc 1 399 0
	movi	a10, 0x414
	add.n	a10, sp, a10
	call8	mbedtls_sha1_init
.LVL8:
	.loc 1 404 0
	movi.n	a3, 0
	j	.L3
.LVL9:
.L12:
	.loc 1 406 0
	beqz.n	a2, .L4
	.loc 1 407 0
	addi.n	a11, a3, 1
	l32r	a10, .LC1
	call8	printf
.LVL10:
.L4:
	.loc 1 409 0
	movi	a10, 0x414
	add.n	a10, sp, a10
	call8	mbedtls_sha1_starts
.LVL11:
	.loc 1 411 0
	bnei	a3, 2, .L5
.LVL12:
	.loc 1 413 0
	movi	a12, 0x3e8
	movi	a11, 0x61
	mov.n	a10, sp
	call8	memset
.LVL13:
	.loc 1 415 0
	movi.n	a4, 0
	j	.L6
.LVL14:
.L7:
	.loc 1 416 0 discriminator 3
	movi	a12, 0x3e8
	mov.n	a11, sp
	movi	a10, 0x414
	add.n	a10, sp, a10
	call8	mbedtls_sha1_update
.LVL15:
	.loc 1 415 0 discriminator 3
	addi.n	a4, a4, 1
.LVL16:
.L6:
	.loc 1 415 0 is_stmt 0 discriminator 1
	movi	a8, 0x3e7
	bge	a8, a4, .L7
	j	.L8
.LVL17:
.L5:
	.loc 1 419 0 is_stmt 1
	subx8	a8, a3, a3
	addx8	a8, a8, a3
	.loc 1 420 0
	l32r	a9, .LC3
	addx4	a9, a3, a9
	.loc 1 419 0
	l32i.n	a12, a9, 0
	l32r	a11, .LC2
	add.n	a11, a11, a8
	movi	a10, 0x414
	add.n	a10, sp, a10
	call8	mbedtls_sha1_update
.LVL18:
.L8:
	.loc 1 422 0
	addmi	a11, sp, 0x400
	movi	a10, 0x414
	add.n	a10, sp, a10
	call8	mbedtls_sha1_finish
.LVL19:
	.loc 1 424 0
	addx4	a9, a3, a3
	slli	a8, a9, 2
	movi.n	a12, 0x14
	l32r	a11, .LC4
	add.n	a11, a11, a8
	addmi	a10, sp, 0x400
	call8	memcmp
.LVL20:
	beqz.n	a10, .L9
	.loc 1 426 0
	beqz.n	a2, .L13
	.loc 1 427 0
	l32r	a10, .LC6
	call8	puts
.LVL21:
	.loc 1 429 0
	movi.n	a2, 1
.LVL22:
	j	.L10
.LVL23:
.L9:
	.loc 1 433 0
	beqz.n	a2, .L11
	.loc 1 434 0
	l32r	a10, .LC8
	call8	puts
.LVL24:
.L11:
	.loc 1 404 0 discriminator 2
	addi.n	a3, a3, 1
.LVL25:
.L3:
	.loc 1 404 0 is_stmt 0 discriminator 1
	blti	a3, 3, .L12
	.loc 1 437 0 is_stmt 1
	beqz.n	a2, .L14
	.loc 1 438 0
	movi.n	a10, 0xa
	call8	putchar
.LVL26:
	.loc 1 394 0
	movi.n	a2, 0
.LVL27:
	j	.L10
.LVL28:
.L13:
	.loc 1 429 0
	movi.n	a2, 1
.LVL29:
	j	.L10
.LVL30:
.L14:
	.loc 1 394 0
	movi.n	a2, 0
.LVL31:
.L10:
	.loc 1 441 0
	movi	a10, 0x414
	add.n	a10, sp, a10
	call8	mbedtls_sha1_free
.LVL32:
	.loc 1 444 0
	retw.n
.LFE1:
	.size	mbedtls_sha1_self_test, .-mbedtls_sha1_self_test
	.section	.rodata.sha1_test_sum,"a",@progbits
	.align	4
	.type	sha1_test_sum, @object
	.size	sha1_test_sum, 60
sha1_test_sum:
	.byte	-87
	.byte	-103
	.byte	62
	.byte	54
	.byte	71
	.byte	6
	.byte	-127
	.byte	106
	.byte	-70
	.byte	62
	.byte	37
	.byte	113
	.byte	120
	.byte	80
	.byte	-62
	.byte	108
	.byte	-100
	.byte	-48
	.byte	-40
	.byte	-99
	.byte	-124
	.byte	-104
	.byte	62
	.byte	68
	.byte	28
	.byte	59
	.byte	-46
	.byte	110
	.byte	-70
	.byte	-82
	.byte	74
	.byte	-95
	.byte	-7
	.byte	81
	.byte	41
	.byte	-27
	.byte	-27
	.byte	70
	.byte	112
	.byte	-15
	.byte	52
	.byte	-86
	.byte	-105
	.byte	60
	.byte	-44
	.byte	-60
	.byte	-38
	.byte	-92
	.byte	-10
	.byte	30
	.byte	-21
	.byte	43
	.byte	-37
	.byte	-83
	.byte	39
	.byte	49
	.byte	101
	.byte	52
	.byte	1
	.byte	111
	.section	.rodata.sha1_test_buflen,"a",@progbits
	.align	4
	.type	sha1_test_buflen, @object
	.size	sha1_test_buflen, 12
sha1_test_buflen:
	.word	3
	.word	56
	.word	1000
	.section	.rodata.sha1_test_buf,"a",@progbits
	.align	4
	.type	sha1_test_buf, @object
	.size	sha1_test_buf, 171
sha1_test_buf:
	.string	"abc"
	.zero	53
	.string	"abcdbcdecdefdefgefghfghighijhijkijkljklmklmnlmnomnopnopq"
	.string	""
	.zero	56
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
	.uleb128 0x80
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
	.uleb128 0x4a0
	.align	4
.LEFDE2:
	.text
.Letext0:
	.file 2 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 3 "C:/esp/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "C:/esp/esp-idf/components/newlib/include/stdint.h"
	.file 5 "C:/esp/esp-idf/components/mbedtls/port/include/sha1_alt.h"
	.file 6 "C:/esp/esp-idf/components/newlib/include/stdio.h"
	.file 7 "C:/esp/esp-idf/components/newlib/include/string.h"
	.file 8 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x52a
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF44
	.byte	0xc
	.4byte	.LASF45
	.4byte	.LASF46
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0xd8
	.4byte	0x37
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
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x3
	.byte	0x1a
	.4byte	0x37
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x4
	.byte	0x2d
	.4byte	0x5a
	.uleb128 0x5
	.byte	0x4
	.4byte	0x37
	.byte	0x5
	.byte	0x20
	.4byte	0x9d
	.uleb128 0x6
	.4byte	.LASF10
	.byte	0
	.uleb128 0x6
	.4byte	.LASF11
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF12
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x5
	.byte	0x24
	.4byte	0x7e
	.uleb128 0x7
	.byte	0x60
	.byte	0x5
	.byte	0x29
	.4byte	0xe1
	.uleb128 0x8
	.4byte	.LASF14
	.byte	0x5
	.byte	0x2b
	.4byte	0xe1
	.byte	0
	.uleb128 0x8
	.4byte	.LASF15
	.byte	0x5
	.byte	0x2c
	.4byte	0xf8
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x5
	.byte	0x2d
	.4byte	0x108
	.byte	0x1c
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x5
	.byte	0x2e
	.4byte	0x9d
	.byte	0x5c
	.byte	0
	.uleb128 0x9
	.4byte	0x73
	.4byte	0xf1
	.uleb128 0xa
	.4byte	0xf1
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF18
	.uleb128 0x9
	.4byte	0x73
	.4byte	0x108
	.uleb128 0xa
	.4byte	0xf1
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.4byte	0x4c
	.4byte	0x118
	.uleb128 0xa
	.4byte	0xf1
	.byte	0x3f
	.byte	0
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x5
	.byte	0x30
	.4byte	0xa8
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF20
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF21
	.uleb128 0xb
	.byte	0x4
	.4byte	0x4c
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF22
	.uleb128 0xc
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x160
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x206
	.uleb128 0xd
	.4byte	.LASF23
	.byte	0x1
	.2byte	0x160
	.4byte	0x206
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xd
	.4byte	.LASF24
	.byte	0x1
	.2byte	0x160
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xd
	.4byte	.LASF25
	.byte	0x1
	.2byte	0x160
	.4byte	0x131
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xe
	.string	"ctx"
	.byte	0x1
	.2byte	0x162
	.4byte	0x118
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0xf
	.4byte	.LVL1
	.4byte	0x4b7
	.4byte	0x1a3
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.byte	0
	.uleb128 0xf
	.4byte	.LVL2
	.4byte	0x4c2
	.4byte	0x1b8
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.byte	0
	.uleb128 0xf
	.4byte	.LVL3
	.4byte	0x4cd
	.4byte	0x1d9
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL4
	.4byte	0x4d8
	.4byte	0x1f4
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL5
	.4byte	0x4e3
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x20c
	.uleb128 0x12
	.4byte	0x4c
	.uleb128 0x13
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x188
	.4byte	0x25
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x415
	.uleb128 0x14
	.4byte	.LASF26
	.byte	0x1
	.2byte	0x188
	.4byte	0x25
	.4byte	.LLST0
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.2byte	0x18a
	.4byte	0x25
	.4byte	.LLST1
	.uleb128 0x15
	.string	"j"
	.byte	0x1
	.2byte	0x18a
	.4byte	0x25
	.4byte	.LLST2
	.uleb128 0x16
	.4byte	.LASF27
	.byte	0x1
	.2byte	0x18a
	.4byte	0x25
	.4byte	.LLST3
	.uleb128 0x15
	.string	"ret"
	.byte	0x1
	.2byte	0x18a
	.4byte	0x25
	.4byte	.LLST4
	.uleb128 0xe
	.string	"buf"
	.byte	0x1
	.2byte	0x18b
	.4byte	0x415
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1184
	.uleb128 0x17
	.4byte	.LASF28
	.byte	0x1
	.2byte	0x18c
	.4byte	0x426
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0xe
	.string	"ctx"
	.byte	0x1
	.2byte	0x18d
	.4byte	0x118
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x18
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x1b8
	.4byte	.L10
	.uleb128 0xf
	.4byte	.LVL8
	.4byte	0x4b7
	.4byte	0x2c8
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.byte	0
	.uleb128 0xf
	.4byte	.LVL10
	.4byte	0x4ee
	.4byte	0x2e5
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 1
	.byte	0
	.uleb128 0xf
	.4byte	.LVL11
	.4byte	0x4c2
	.4byte	0x2fa
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.byte	0
	.uleb128 0xf
	.4byte	.LVL13
	.4byte	0x4f9
	.4byte	0x31c
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1184
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x61
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x3e8
	.byte	0
	.uleb128 0xf
	.4byte	.LVL15
	.4byte	0x4cd
	.4byte	0x33f
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1184
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x3e8
	.byte	0
	.uleb128 0xf
	.4byte	.LVL18
	.4byte	0x4cd
	.4byte	0x379
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x12
	.byte	0x73
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0x33
	.byte	0x24
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x3
	.4byte	sha1_test_buf
	.byte	0x22
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0xb
	.byte	0x73
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	sha1_test_buflen
	.byte	0x22
	.byte	0x6
	.byte	0
	.uleb128 0xf
	.4byte	.LVL19
	.4byte	0x4d8
	.4byte	0x395
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.byte	0
	.uleb128 0xf
	.4byte	.LVL20
	.4byte	0x504
	.4byte	0x3c2
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0xf
	.byte	0x73
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	sha1_test_sum
	.byte	0x22
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x44
	.byte	0
	.uleb128 0xf
	.4byte	.LVL21
	.4byte	0x50f
	.4byte	0x3d9
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.uleb128 0xf
	.4byte	.LVL24
	.4byte	0x50f
	.4byte	0x3f0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0
	.uleb128 0xf
	.4byte	.LVL26
	.4byte	0x51e
	.4byte	0x403
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x11
	.4byte	.LVL32
	.4byte	0x4e3
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x4c
	.4byte	0x426
	.uleb128 0x19
	.4byte	0xf1
	.2byte	0x3ff
	.byte	0
	.uleb128 0x9
	.4byte	0x4c
	.4byte	0x436
	.uleb128 0xa
	.4byte	0xf1
	.byte	0x13
	.byte	0
	.uleb128 0x9
	.4byte	0x4c
	.4byte	0x44c
	.uleb128 0xa
	.4byte	0xf1
	.byte	0x2
	.uleb128 0xa
	.4byte	0xf1
	.byte	0x38
	.byte	0
	.uleb128 0x17
	.4byte	.LASF29
	.byte	0x1
	.2byte	0x16f
	.4byte	0x45e
	.uleb128 0x5
	.byte	0x3
	.4byte	sha1_test_buf
	.uleb128 0x12
	.4byte	0x436
	.uleb128 0x9
	.4byte	0x25
	.4byte	0x473
	.uleb128 0xa
	.4byte	0xf1
	.byte	0x2
	.byte	0
	.uleb128 0x17
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x176
	.4byte	0x485
	.uleb128 0x5
	.byte	0x3
	.4byte	sha1_test_buflen
	.uleb128 0x12
	.4byte	0x463
	.uleb128 0x9
	.4byte	0x4c
	.4byte	0x4a0
	.uleb128 0xa
	.4byte	0xf1
	.byte	0x2
	.uleb128 0xa
	.4byte	0xf1
	.byte	0x13
	.byte	0
	.uleb128 0x17
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x17b
	.4byte	0x4b2
	.uleb128 0x5
	.byte	0x3
	.4byte	sha1_test_sum
	.uleb128 0x12
	.4byte	0x48a
	.uleb128 0x1a
	.4byte	.LASF32
	.4byte	.LASF32
	.byte	0x5
	.byte	0x37
	.uleb128 0x1a
	.4byte	.LASF33
	.4byte	.LASF33
	.byte	0x5
	.byte	0x4e
	.uleb128 0x1a
	.4byte	.LASF34
	.4byte	.LASF34
	.byte	0x5
	.byte	0x57
	.uleb128 0x1a
	.4byte	.LASF35
	.4byte	.LASF35
	.byte	0x5
	.byte	0x5f
	.uleb128 0x1a
	.4byte	.LASF36
	.4byte	.LASF36
	.byte	0x5
	.byte	0x3e
	.uleb128 0x1a
	.4byte	.LASF37
	.4byte	.LASF37
	.byte	0x6
	.byte	0xb2
	.uleb128 0x1a
	.4byte	.LASF38
	.4byte	.LASF38
	.byte	0x7
	.byte	0x19
	.uleb128 0x1a
	.4byte	.LASF39
	.4byte	.LASF39
	.byte	0x7
	.byte	0x16
	.uleb128 0x1b
	.4byte	.LASF40
	.4byte	.LASF42
	.byte	0x8
	.byte	0
	.4byte	.LASF40
	.uleb128 0x1b
	.4byte	.LASF41
	.4byte	.LASF43
	.byte	0x8
	.byte	0
	.4byte	.LASF41
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
	.uleb128 0x1b
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0xd
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
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
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x14
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0x5
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
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x6e
	.uleb128 0xe
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL6
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL31
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL12
	.4byte	.LVL17
	.2byte	0x4
	.byte	0xa
	.2byte	0x3e8
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL7
	.4byte	.LVL31
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x24
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
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF29:
	.string	"sha1_test_buf"
.LASF5:
	.string	"size_t"
.LASF49:
	.string	"exit"
.LASF15:
	.string	"state"
.LASF45:
	.string	"C:/esp/esp-idf/components/mbedtls/library/sha1.c"
.LASF39:
	.string	"memcmp"
.LASF12:
	.string	"ESP_MBEDTLS_SHA1_SOFTWARE"
.LASF11:
	.string	"ESP_MBEDTLS_SHA1_HARDWARE"
.LASF43:
	.string	"__builtin_putchar"
.LASF47:
	.string	"mbedtls_sha1"
.LASF34:
	.string	"mbedtls_sha1_update"
.LASF44:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF13:
	.string	"esp_mbedtls_sha1_mode"
.LASF48:
	.string	"mbedtls_sha1_self_test"
.LASF42:
	.string	"__builtin_puts"
.LASF3:
	.string	"unsigned char"
.LASF23:
	.string	"input"
.LASF24:
	.string	"ilen"
.LASF21:
	.string	"long unsigned int"
.LASF10:
	.string	"ESP_MBEDTLS_SHA1_UNUSED"
.LASF1:
	.string	"short unsigned int"
.LASF9:
	.string	"uint32_t"
.LASF41:
	.string	"putchar"
.LASF38:
	.string	"memset"
.LASF6:
	.string	"__uint32_t"
.LASF32:
	.string	"mbedtls_sha1_init"
.LASF0:
	.string	"unsigned int"
.LASF27:
	.string	"buflen"
.LASF8:
	.string	"long long unsigned int"
.LASF46:
	.string	"C:\\\\esp\\\\ArkPOS2-esp\\\\build\\\\mbedtls"
.LASF17:
	.string	"mode"
.LASF28:
	.string	"sha1sum"
.LASF16:
	.string	"buffer"
.LASF18:
	.string	"sizetype"
.LASF30:
	.string	"sha1_test_buflen"
.LASF36:
	.string	"mbedtls_sha1_free"
.LASF7:
	.string	"long long int"
.LASF22:
	.string	"char"
.LASF35:
	.string	"mbedtls_sha1_finish"
.LASF37:
	.string	"printf"
.LASF4:
	.string	"short int"
.LASF25:
	.string	"output"
.LASF33:
	.string	"mbedtls_sha1_starts"
.LASF14:
	.string	"total"
.LASF20:
	.string	"long int"
.LASF40:
	.string	"puts"
.LASF2:
	.string	"signed char"
.LASF26:
	.string	"verbose"
.LASF19:
	.string	"mbedtls_sha1_context"
.LASF31:
	.string	"sha1_test_sum"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-61-gab8375a) 5.2.0"
