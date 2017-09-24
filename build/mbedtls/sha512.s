	.file	"sha512.c"
	.text
.Ltext0:
	.section	.text.mbedtls_sha512,"ax",@progbits
	.align	4
	.global	mbedtls_sha512
	.type	mbedtls_sha512, @function
mbedtls_sha512:
.LFB0:
	.file 1 "C:/esp/esp-idf/components/mbedtls/library/sha512.c"
	.loc 1 364 0
.LVL0:
	entry	sp, 256
.LCFI0:
	.loc 1 367 0
	mov.n	a10, sp
	call8	mbedtls_sha512_init
.LVL1:
	.loc 1 368 0
	mov.n	a11, a5
	mov.n	a10, sp
	call8	mbedtls_sha512_starts
.LVL2:
	.loc 1 369 0
	mov.n	a12, a3
	mov.n	a11, a2
	mov.n	a10, sp
	call8	mbedtls_sha512_update
.LVL3:
	.loc 1 370 0
	mov.n	a11, a4
	mov.n	a10, sp
	call8	mbedtls_sha512_finish
.LVL4:
	.loc 1 371 0
	mov.n	a10, sp
	call8	mbedtls_sha512_free
.LVL5:
	retw.n
.LFE0:
	.size	mbedtls_sha512, .-mbedtls_sha512
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC0:
	.string	"Buffer allocation failed"
	.align	4
.LC3:
	.string	"  SHA-%d test #%d: "
	.align	4
.LC8:
	.string	"failed"
	.align	4
.LC10:
	.string	"passed"
	.section	.text.mbedtls_sha512_self_test,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.literal .LC2, 1431655766
	.literal .LC4, .LC3
	.literal .LC5, sha512_test_buf
	.literal .LC6, sha512_test_buflen
	.literal .LC7, sha512_test_sum
	.literal .LC9, .LC8
	.literal .LC11, .LC10
	.align	4
	.global	mbedtls_sha512_self_test
	.type	mbedtls_sha512_self_test, @function
mbedtls_sha512_self_test:
.LFB1:
	.loc 1 449 0
.LVL6:
	entry	sp, 320
.LCFI1:
.LVL7:
	.loc 1 455 0
	movi.n	a11, 1
	movi	a10, 0x400
	call8	calloc
.LVL8:
	mov.n	a4, a10
.LVL9:
	.loc 1 456 0
	bnez.n	a10, .L3
	.loc 1 458 0
	beqz.n	a2, .L16
	.loc 1 459 0
	l32r	a10, .LC1
	call8	puts
.LVL10:
	.loc 1 461 0
	movi.n	a2, 1
.LVL11:
	retw.n
.LVL12:
.L3:
	.loc 1 464 0
	addi	a10, sp, 64
	call8	mbedtls_sha512_init
.LVL13:
	.loc 1 466 0
	movi.n	a5, 0
	j	.L5
.LVL14:
.L15:
	.loc 1 468 0
	l32r	a3, .LC2
	mulsh	a3, a5, a3
	srai	a6, a5, 31
	sub	a3, a3, a6
	addx2	a3, a3, a3
	sub	a3, a5, a3
.LVL15:
	.loc 1 469 0
	movi.n	a6, 1
	blti	a5, 3, .L6
	movi.n	a6, 0
.L6:
	extui	a6, a6, 0, 8
.LVL16:
	.loc 1 471 0
	beqz.n	a2, .L7
	.loc 1 472 0
	movi.n	a11, 4
	sub	a11, a11, a6
	addi.n	a12, a3, 1
	slli	a11, a11, 7
	l32r	a10, .LC4
	call8	printf
.LVL17:
.L7:
	.loc 1 474 0
	mov.n	a11, a6
	addi	a10, sp, 64
	call8	mbedtls_sha512_starts
.LVL18:
	.loc 1 476 0
	bnei	a3, 2, .L8
.LVL19:
	.loc 1 478 0
	movi	a12, 0x3e8
	movi	a11, 0x61
	mov.n	a10, a4
	call8	memset
.LVL20:
	.loc 1 480 0
	movi.n	a3, 0
	j	.L9
.LVL21:
.L10:
	.loc 1 481 0 discriminator 3
	movi	a12, 0x3e8
	mov.n	a11, a4
	addi	a10, sp, 64
	call8	mbedtls_sha512_update
.LVL22:
	.loc 1 480 0 discriminator 3
	addi.n	a3, a3, 1
.LVL23:
.L9:
	.loc 1 480 0 is_stmt 0 discriminator 1
	movi	a8, 0x3e7
	bge	a8, a3, .L10
	j	.L11
.LVL24:
.L8:
	.loc 1 484 0 is_stmt 1
	subx8	a8, a3, a3
	slli	a8, a8, 4
	add.n	a8, a8, a3
	.loc 1 485 0
	l32r	a9, .LC6
	addx4	a3, a3, a9
.LVL25:
	.loc 1 484 0
	l32i.n	a12, a3, 0
	l32r	a11, .LC5
	add.n	a11, a11, a8
	addi	a10, sp, 64
	call8	mbedtls_sha512_update
.LVL26:
.L11:
	.loc 1 487 0
	mov.n	a11, sp
	addi	a10, sp, 64
	call8	mbedtls_sha512_finish
.LVL27:
	.loc 1 489 0
	slli	a11, a5, 6
	movi.n	a12, 4
	sub	a12, a12, a6
	slli	a12, a12, 4
	l32r	a3, .LC7
	add.n	a11, a3, a11
	mov.n	a10, sp
	call8	memcmp
.LVL28:
	beqz.n	a10, .L12
	.loc 1 491 0
	beqz.n	a2, .L17
	.loc 1 492 0
	l32r	a10, .LC9
	call8	puts
.LVL29:
	.loc 1 494 0
	movi.n	a2, 1
.LVL30:
	j	.L13
.LVL31:
.L12:
	.loc 1 498 0
	beqz.n	a2, .L14
	.loc 1 499 0
	l32r	a10, .LC11
	call8	puts
.LVL32:
.L14:
	.loc 1 466 0 discriminator 2
	addi.n	a5, a5, 1
.LVL33:
.L5:
	.loc 1 466 0 is_stmt 0 discriminator 1
	blti	a5, 6, .L15
	.loc 1 502 0 is_stmt 1
	beqz.n	a2, .L18
	.loc 1 503 0
	movi.n	a10, 0xa
	call8	putchar
.LVL34:
	.loc 1 450 0
	movi.n	a2, 0
.LVL35:
	j	.L13
.LVL36:
.L17:
	.loc 1 494 0
	movi.n	a2, 1
.LVL37:
	j	.L13
.LVL38:
.L18:
	.loc 1 450 0
	movi.n	a2, 0
.LVL39:
.L13:
	.loc 1 506 0
	addi	a10, sp, 64
	call8	mbedtls_sha512_free
.LVL40:
	.loc 1 507 0
	mov.n	a10, a4
	call8	free
.LVL41:
	.loc 1 509 0
	retw.n
.LVL42:
.L16:
	.loc 1 461 0
	movi.n	a2, 1
.LVL43:
	.loc 1 510 0
	retw.n
.LFE1:
	.size	mbedtls_sha512_self_test, .-mbedtls_sha512_self_test
	.section	.rodata.sha512_test_sum,"a",@progbits
	.align	4
	.type	sha512_test_sum, @object
	.size	sha512_test_sum, 384
sha512_test_sum:
	.byte	-53
	.byte	0
	.byte	117
	.byte	63
	.byte	69
	.byte	-93
	.byte	94
	.byte	-117
	.byte	-75
	.byte	-96
	.byte	61
	.byte	105
	.byte	-102
	.byte	-58
	.byte	80
	.byte	7
	.byte	39
	.byte	44
	.byte	50
	.byte	-85
	.byte	14
	.byte	-34
	.byte	-47
	.byte	99
	.byte	26
	.byte	-117
	.byte	96
	.byte	90
	.byte	67
	.byte	-1
	.byte	91
	.byte	-19
	.byte	-128
	.byte	-122
	.byte	7
	.byte	43
	.byte	-95
	.byte	-25
	.byte	-52
	.byte	35
	.byte	88
	.byte	-70
	.byte	-20
	.byte	-95
	.byte	52
	.byte	-56
	.byte	37
	.byte	-89
	.zero	16
	.byte	9
	.byte	51
	.byte	12
	.byte	51
	.byte	-9
	.byte	17
	.byte	71
	.byte	-24
	.byte	61
	.byte	25
	.byte	47
	.byte	-57
	.byte	-126
	.byte	-51
	.byte	27
	.byte	71
	.byte	83
	.byte	17
	.byte	27
	.byte	23
	.byte	59
	.byte	59
	.byte	5
	.byte	-46
	.byte	47
	.byte	-96
	.byte	-128
	.byte	-122
	.byte	-29
	.byte	-80
	.byte	-9
	.byte	18
	.byte	-4
	.byte	-57
	.byte	-57
	.byte	26
	.byte	85
	.byte	126
	.byte	45
	.byte	-71
	.byte	102
	.byte	-61
	.byte	-23
	.byte	-6
	.byte	-111
	.byte	116
	.byte	96
	.byte	57
	.zero	16
	.byte	-99
	.byte	14
	.byte	24
	.byte	9
	.byte	113
	.byte	100
	.byte	116
	.byte	-53
	.byte	8
	.byte	110
	.byte	-125
	.byte	78
	.byte	49
	.byte	10
	.byte	74
	.byte	28
	.byte	-19
	.byte	20
	.byte	-98
	.byte	-100
	.byte	0
	.byte	-14
	.byte	72
	.byte	82
	.byte	121
	.byte	114
	.byte	-50
	.byte	-59
	.byte	112
	.byte	76
	.byte	42
	.byte	91
	.byte	7
	.byte	-72
	.byte	-77
	.byte	-36
	.byte	56
	.byte	-20
	.byte	-60
	.byte	-21
	.byte	-82
	.byte	-105
	.byte	-35
	.byte	-40
	.byte	127
	.byte	61
	.byte	-119
	.byte	-123
	.zero	16
	.byte	-35
	.byte	-81
	.byte	53
	.byte	-95
	.byte	-109
	.byte	97
	.byte	122
	.byte	-70
	.byte	-52
	.byte	65
	.byte	115
	.byte	73
	.byte	-82
	.byte	32
	.byte	65
	.byte	49
	.byte	18
	.byte	-26
	.byte	-6
	.byte	78
	.byte	-119
	.byte	-87
	.byte	126
	.byte	-94
	.byte	10
	.byte	-98
	.byte	-18
	.byte	-26
	.byte	75
	.byte	85
	.byte	-45
	.byte	-102
	.byte	33
	.byte	-110
	.byte	-103
	.byte	42
	.byte	39
	.byte	79
	.byte	-63
	.byte	-88
	.byte	54
	.byte	-70
	.byte	60
	.byte	35
	.byte	-93
	.byte	-2
	.byte	-21
	.byte	-67
	.byte	69
	.byte	77
	.byte	68
	.byte	35
	.byte	100
	.byte	60
	.byte	-24
	.byte	14
	.byte	42
	.byte	-102
	.byte	-55
	.byte	79
	.byte	-91
	.byte	76
	.byte	-92
	.byte	-97
	.byte	-114
	.byte	-107
	.byte	-101
	.byte	117
	.byte	-38
	.byte	-29
	.byte	19
	.byte	-38
	.byte	-116
	.byte	-12
	.byte	-9
	.byte	40
	.byte	20
	.byte	-4
	.byte	20
	.byte	63
	.byte	-113
	.byte	119
	.byte	121
	.byte	-58
	.byte	-21
	.byte	-97
	.byte	127
	.byte	-95
	.byte	114
	.byte	-103
	.byte	-82
	.byte	-83
	.byte	-74
	.byte	-120
	.byte	-112
	.byte	24
	.byte	80
	.byte	29
	.byte	40
	.byte	-98
	.byte	73
	.byte	0
	.byte	-9
	.byte	-28
	.byte	51
	.byte	27
	.byte	-103
	.byte	-34
	.byte	-60
	.byte	-75
	.byte	67
	.byte	58
	.byte	-57
	.byte	-45
	.byte	41
	.byte	-18
	.byte	-74
	.byte	-35
	.byte	38
	.byte	84
	.byte	94
	.byte	-106
	.byte	-27
	.byte	91
	.byte	-121
	.byte	75
	.byte	-23
	.byte	9
	.byte	-25
	.byte	24
	.byte	72
	.byte	61
	.byte	12
	.byte	-25
	.byte	105
	.byte	100
	.byte	78
	.byte	46
	.byte	66
	.byte	-57
	.byte	-68
	.byte	21
	.byte	-76
	.byte	99
	.byte	-114
	.byte	31
	.byte	-104
	.byte	-79
	.byte	59
	.byte	32
	.byte	68
	.byte	40
	.byte	86
	.byte	50
	.byte	-88
	.byte	3
	.byte	-81
	.byte	-87
	.byte	115
	.byte	-21
	.byte	-34
	.byte	15
	.byte	-14
	.byte	68
	.byte	-121
	.byte	126
	.byte	-90
	.byte	10
	.byte	76
	.byte	-80
	.byte	67
	.byte	44
	.byte	-27
	.byte	119
	.byte	-61
	.byte	27
	.byte	-21
	.byte	0
	.byte	-100
	.byte	92
	.byte	44
	.byte	73
	.byte	-86
	.byte	46
	.byte	78
	.byte	-83
	.byte	-78
	.byte	23
	.byte	-83
	.byte	-116
	.byte	-64
	.byte	-101
	.section	.rodata.sha512_test_buflen,"a",@progbits
	.align	4
	.type	sha512_test_buflen, @object
	.size	sha512_test_buflen, 12
sha512_test_buflen:
	.word	3
	.word	112
	.word	1000
	.section	.rodata.sha512_test_buf,"a",@progbits
	.align	4
	.type	sha512_test_buf, @object
	.size	sha512_test_buf, 339
sha512_test_buf:
	.string	"abc"
	.zero	109
	.string	"abcdefghbcdefghicdefghijdefghijkefghijklfghijklmghijklmnhijklmnoijklmnopjklmnopqklmnopqrlmnopqrsmnopqrstnopqrstu"
	.string	""
	.zero	112
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
	.uleb128 0x100
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
	.uleb128 0x140
	.align	4
.LEFDE2:
	.text
.Letext0:
	.file 2 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 3 "C:/esp/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "C:/esp/esp-idf/components/newlib/include/stdint.h"
	.file 5 "C:/esp/esp-idf/components/mbedtls/port/include/sha512_alt.h"
	.file 6 "C:/esp/esp-idf/components/newlib/include/stdlib.h"
	.file 7 "C:/esp/esp-idf/components/newlib/include/stdio.h"
	.file 8 "C:/esp/esp-idf/components/newlib/include/string.h"
	.file 9 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x64c
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF47
	.byte	0xc
	.4byte	.LASF48
	.4byte	.LASF49
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x2
	.byte	0xd8
	.4byte	0x2c
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
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x3
	.byte	0x1e
	.4byte	0x25
	.uleb128 0x4
	.4byte	.LASF9
	.byte	0x4
	.byte	0x39
	.4byte	0x68
	.uleb128 0x5
	.byte	0x4
	.4byte	0x2c
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
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x5
	.byte	0x24
	.4byte	0x7e
	.uleb128 0x7
	.byte	0xd8
	.byte	0x5
	.byte	0x29
	.4byte	0xed
	.uleb128 0x8
	.4byte	.LASF14
	.byte	0x5
	.byte	0x2b
	.4byte	0xed
	.byte	0
	.uleb128 0x8
	.4byte	.LASF15
	.byte	0x5
	.byte	0x2c
	.4byte	0x104
	.byte	0x10
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x5
	.byte	0x2d
	.4byte	0x114
	.byte	0x50
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x5
	.byte	0x2e
	.4byte	0x33
	.byte	0xd0
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x5
	.byte	0x2f
	.4byte	0x9d
	.byte	0xd4
	.byte	0
	.uleb128 0x9
	.4byte	0x73
	.4byte	0xfd
	.uleb128 0xa
	.4byte	0xfd
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF19
	.uleb128 0x9
	.4byte	0x73
	.4byte	0x114
	.uleb128 0xa
	.4byte	0xfd
	.byte	0x7
	.byte	0
	.uleb128 0x9
	.4byte	0x53
	.4byte	0x124
	.uleb128 0xa
	.4byte	0xfd
	.byte	0x7f
	.byte	0
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x5
	.byte	0x31
	.4byte	0xa8
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF21
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF22
	.uleb128 0xb
	.byte	0x4
	.4byte	0x53
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF23
	.uleb128 0xc
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x16a
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x226
	.uleb128 0xd
	.4byte	.LASF24
	.byte	0x1
	.2byte	0x16a
	.4byte	0x226
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xd
	.4byte	.LASF25
	.byte	0x1
	.2byte	0x16a
	.4byte	0x3a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xd
	.4byte	.LASF26
	.byte	0x1
	.2byte	0x16b
	.4byte	0x13d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xd
	.4byte	.LASF17
	.byte	0x1
	.2byte	0x16b
	.4byte	0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xe
	.string	"ctx"
	.byte	0x1
	.2byte	0x16d
	.4byte	0x124
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0xf
	.4byte	.LVL1
	.4byte	0x5c3
	.4byte	0x1bd
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.byte	0
	.uleb128 0xf
	.4byte	.LVL2
	.4byte	0x5ce
	.4byte	0x1d8
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL3
	.4byte	0x5d9
	.4byte	0x1f9
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
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
	.4byte	0x5e4
	.4byte	0x214
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL5
	.4byte	0x5ef
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x22c
	.uleb128 0x12
	.4byte	0x53
	.uleb128 0x13
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x1c0
	.4byte	0x33
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x532
	.uleb128 0x14
	.4byte	.LASF27
	.byte	0x1
	.2byte	0x1c0
	.4byte	0x33
	.4byte	.LLST0
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.2byte	0x1c2
	.4byte	0x33
	.4byte	.LLST1
	.uleb128 0x15
	.string	"j"
	.byte	0x1
	.2byte	0x1c2
	.4byte	0x33
	.4byte	.LLST2
	.uleb128 0x15
	.string	"k"
	.byte	0x1
	.2byte	0x1c2
	.4byte	0x33
	.4byte	.LLST3
	.uleb128 0x16
	.4byte	.LASF28
	.byte	0x1
	.2byte	0x1c2
	.4byte	0x33
	.4byte	.LLST4
	.uleb128 0x15
	.string	"ret"
	.byte	0x1
	.2byte	0x1c2
	.4byte	0x33
	.4byte	.LLST5
	.uleb128 0xe
	.string	"buf"
	.byte	0x1
	.2byte	0x1c3
	.4byte	0x13d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x17
	.4byte	.LASF29
	.byte	0x1
	.2byte	0x1c4
	.4byte	0x532
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0xe
	.string	"ctx"
	.byte	0x1
	.2byte	0x1c5
	.4byte	0x124
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x18
	.4byte	.LASF52
	.byte	0x1
	.2byte	0x1f9
	.4byte	.L13
	.uleb128 0xf
	.4byte	.LVL8
	.4byte	0x5fa
	.4byte	0x2f9
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0x400
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0xf
	.4byte	.LVL10
	.4byte	0x605
	.4byte	0x310
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL13
	.4byte	0x5c3
	.4byte	0x325
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.byte	0
	.uleb128 0xf
	.4byte	.LVL17
	.4byte	0x614
	.4byte	0x34c
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x6
	.byte	0x34
	.byte	0x76
	.sleb128 0
	.byte	0x1c
	.byte	0x37
	.byte	0x24
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 1
	.byte	0
	.uleb128 0xf
	.4byte	.LVL18
	.4byte	0x5ce
	.4byte	0x367
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL20
	.4byte	0x61f
	.4byte	0x388
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
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
	.4byte	.LVL22
	.4byte	0x5d9
	.4byte	0x3aa
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x3e8
	.byte	0
	.uleb128 0xf
	.4byte	.LVL26
	.4byte	0x5d9
	.4byte	0x485
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0xba
	.byte	0x75
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x75
	.sleb128 0
	.byte	0xf7
	.uleb128 0x33
	.byte	0xf7
	.uleb128 0x25
	.byte	0xc
	.4byte	0x55555556
	.byte	0xf7
	.uleb128 0x25
	.byte	0x1e
	.byte	0x8
	.byte	0x20
	.byte	0xf7
	.uleb128 0x25
	.byte	0x25
	.byte	0xf7
	.uleb128 0x2c
	.byte	0x75
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x1c
	.byte	0x31
	.byte	0x24
	.byte	0x1c
	.byte	0x75
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x75
	.sleb128 0
	.byte	0xf7
	.uleb128 0x33
	.byte	0xf7
	.uleb128 0x25
	.byte	0xc
	.4byte	0x55555556
	.byte	0xf7
	.uleb128 0x25
	.byte	0x1e
	.byte	0x8
	.byte	0x20
	.byte	0xf7
	.uleb128 0x25
	.byte	0x25
	.byte	0xf7
	.uleb128 0x2c
	.byte	0x75
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x1c
	.byte	0x31
	.byte	0x24
	.byte	0x1c
	.byte	0x75
	.sleb128 0
	.byte	0xf7
	.uleb128 0x33
	.byte	0xf7
	.uleb128 0x25
	.byte	0xc
	.4byte	0x55555556
	.byte	0xf7
	.uleb128 0x25
	.byte	0x1e
	.byte	0x8
	.byte	0x20
	.byte	0xf7
	.uleb128 0x25
	.byte	0x25
	.byte	0xf7
	.uleb128 0x2c
	.byte	0x1c
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x33
	.byte	0x24
	.byte	0x75
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x75
	.sleb128 0
	.byte	0xf7
	.uleb128 0x33
	.byte	0xf7
	.uleb128 0x25
	.byte	0xc
	.4byte	0x55555556
	.byte	0xf7
	.uleb128 0x25
	.byte	0x1e
	.byte	0x8
	.byte	0x20
	.byte	0xf7
	.uleb128 0x25
	.byte	0x25
	.byte	0xf7
	.uleb128 0x2c
	.byte	0x75
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x1c
	.byte	0x31
	.byte	0x24
	.byte	0x1c
	.byte	0x75
	.sleb128 0
	.byte	0xf7
	.uleb128 0x33
	.byte	0xf7
	.uleb128 0x25
	.byte	0xc
	.4byte	0x55555556
	.byte	0xf7
	.uleb128 0x25
	.byte	0x1e
	.byte	0x8
	.byte	0x20
	.byte	0xf7
	.uleb128 0x25
	.byte	0x25
	.byte	0xf7
	.uleb128 0x2c
	.byte	0x1c
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x1c
	.byte	0x34
	.byte	0x24
	.byte	0x22
	.byte	0x75
	.sleb128 0
	.byte	0xf7
	.uleb128 0x33
	.byte	0xf7
	.uleb128 0x25
	.byte	0xc
	.4byte	0x55555556
	.byte	0xf7
	.uleb128 0x25
	.byte	0x1e
	.byte	0x8
	.byte	0x20
	.byte	0xf7
	.uleb128 0x25
	.byte	0x25
	.byte	0xf7
	.uleb128 0x2c
	.byte	0x1c
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x3
	.4byte	sha512_test_buf
	.byte	0x22
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x73
	.sleb128 0
	.byte	0x6
	.byte	0
	.uleb128 0xf
	.4byte	.LVL27
	.4byte	0x5e4
	.4byte	0x4a1
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.byte	0
	.uleb128 0xf
	.4byte	.LVL28
	.4byte	0x62a
	.4byte	0x4cb
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x7
	.byte	0x75
	.sleb128 0
	.byte	0x36
	.byte	0x24
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x6
	.byte	0x34
	.byte	0x76
	.sleb128 0
	.byte	0x1c
	.byte	0x34
	.byte	0x24
	.byte	0
	.uleb128 0xf
	.4byte	.LVL29
	.4byte	0x605
	.4byte	0x4e2
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0
	.uleb128 0xf
	.4byte	.LVL32
	.4byte	0x605
	.4byte	0x4f9
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0
	.uleb128 0xf
	.4byte	.LVL34
	.4byte	0x635
	.4byte	0x50c
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.uleb128 0xf
	.4byte	.LVL40
	.4byte	0x5ef
	.4byte	0x521
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.byte	0
	.uleb128 0x11
	.4byte	.LVL41
	.4byte	0x644
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x53
	.4byte	0x542
	.uleb128 0xa
	.4byte	0xfd
	.byte	0x3f
	.byte	0
	.uleb128 0x9
	.4byte	0x53
	.4byte	0x558
	.uleb128 0xa
	.4byte	0xfd
	.byte	0x2
	.uleb128 0xa
	.4byte	0xfd
	.byte	0x70
	.byte	0
	.uleb128 0x17
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x17b
	.4byte	0x56a
	.uleb128 0x5
	.byte	0x3
	.4byte	sha512_test_buf
	.uleb128 0x12
	.4byte	0x542
	.uleb128 0x9
	.4byte	0x33
	.4byte	0x57f
	.uleb128 0xa
	.4byte	0xfd
	.byte	0x2
	.byte	0
	.uleb128 0x17
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x183
	.4byte	0x591
	.uleb128 0x5
	.byte	0x3
	.4byte	sha512_test_buflen
	.uleb128 0x12
	.4byte	0x56f
	.uleb128 0x9
	.4byte	0x53
	.4byte	0x5ac
	.uleb128 0xa
	.4byte	0xfd
	.byte	0x5
	.uleb128 0xa
	.4byte	0xfd
	.byte	0x3f
	.byte	0
	.uleb128 0x17
	.4byte	.LASF32
	.byte	0x1
	.2byte	0x188
	.4byte	0x5be
	.uleb128 0x5
	.byte	0x3
	.4byte	sha512_test_sum
	.uleb128 0x12
	.4byte	0x596
	.uleb128 0x19
	.4byte	.LASF33
	.4byte	.LASF33
	.byte	0x5
	.byte	0x38
	.uleb128 0x19
	.4byte	.LASF34
	.4byte	.LASF34
	.byte	0x5
	.byte	0x50
	.uleb128 0x19
	.4byte	.LASF35
	.4byte	.LASF35
	.byte	0x5
	.byte	0x59
	.uleb128 0x19
	.4byte	.LASF36
	.4byte	.LASF36
	.byte	0x5
	.byte	0x62
	.uleb128 0x19
	.4byte	.LASF37
	.4byte	.LASF37
	.byte	0x5
	.byte	0x3f
	.uleb128 0x19
	.4byte	.LASF38
	.4byte	.LASF38
	.byte	0x6
	.byte	0x57
	.uleb128 0x1a
	.4byte	.LASF42
	.4byte	.LASF44
	.byte	0x9
	.byte	0
	.4byte	.LASF42
	.uleb128 0x19
	.4byte	.LASF39
	.4byte	.LASF39
	.byte	0x7
	.byte	0xb2
	.uleb128 0x19
	.4byte	.LASF40
	.4byte	.LASF40
	.byte	0x8
	.byte	0x19
	.uleb128 0x19
	.4byte	.LASF41
	.4byte	.LASF41
	.byte	0x8
	.byte	0x16
	.uleb128 0x1a
	.4byte	.LASF43
	.4byte	.LASF45
	.byte	0x9
	.byte	0
	.4byte	.LASF43
	.uleb128 0x19
	.4byte	.LASF46
	.4byte	.LASF46
	.byte	0x6
	.byte	0x5a
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
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL39
	.4byte	.LVL42
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL43
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL15
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x3b
	.byte	0x75
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x75
	.sleb128 0
	.byte	0xf7
	.uleb128 0x33
	.byte	0xf7
	.uleb128 0x25
	.byte	0xc
	.4byte	0x55555556
	.byte	0xf7
	.uleb128 0x25
	.byte	0x1e
	.byte	0x8
	.byte	0x20
	.byte	0xf7
	.uleb128 0x25
	.byte	0x25
	.byte	0xf7
	.uleb128 0x2c
	.byte	0x75
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x1c
	.byte	0x31
	.byte	0x24
	.byte	0x1c
	.byte	0x75
	.sleb128 0
	.byte	0xf7
	.uleb128 0x33
	.byte	0xf7
	.uleb128 0x25
	.byte	0xc
	.4byte	0x55555556
	.byte	0xf7
	.uleb128 0x25
	.byte	0x1e
	.byte	0x8
	.byte	0x20
	.byte	0xf7
	.uleb128 0x25
	.byte	0x25
	.byte	0xf7
	.uleb128 0x2c
	.byte	0x1c
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL16
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL36
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL19
	.4byte	.LVL24
	.2byte	0x4
	.byte	0xa
	.2byte	0x3e8
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL7
	.4byte	.LVL39
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL42
	.4byte	.LFE1
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
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
.LASF38:
	.string	"calloc"
.LASF30:
	.string	"sha512_test_buf"
.LASF7:
	.string	"size_t"
.LASF52:
	.string	"exit"
.LASF33:
	.string	"mbedtls_sha512_init"
.LASF15:
	.string	"state"
.LASF50:
	.string	"mbedtls_sha512"
.LASF29:
	.string	"sha512sum"
.LASF16:
	.string	"buffer"
.LASF35:
	.string	"mbedtls_sha512_update"
.LASF1:
	.string	"unsigned int"
.LASF45:
	.string	"__builtin_putchar"
.LASF9:
	.string	"uint64_t"
.LASF11:
	.string	"ESP_MBEDTLS_SHA512_HARDWARE"
.LASF47:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF44:
	.string	"__builtin_puts"
.LASF4:
	.string	"unsigned char"
.LASF24:
	.string	"input"
.LASF25:
	.string	"ilen"
.LASF22:
	.string	"long unsigned int"
.LASF2:
	.string	"short unsigned int"
.LASF36:
	.string	"mbedtls_sha512_finish"
.LASF43:
	.string	"putchar"
.LASF42:
	.string	"puts"
.LASF40:
	.string	"memset"
.LASF10:
	.string	"ESP_MBEDTLS_SHA512_UNUSED"
.LASF12:
	.string	"ESP_MBEDTLS_SHA512_SOFTWARE"
.LASF51:
	.string	"mbedtls_sha512_self_test"
.LASF17:
	.string	"is384"
.LASF37:
	.string	"mbedtls_sha512_free"
.LASF48:
	.string	"C:/esp/esp-idf/components/mbedtls/library/sha512.c"
.LASF0:
	.string	"long long unsigned int"
.LASF49:
	.string	"C:\\\\esp\\\\ArkPOS2-esp\\\\build\\\\mbedtls"
.LASF18:
	.string	"mode"
.LASF19:
	.string	"sizetype"
.LASF46:
	.string	"free"
.LASF6:
	.string	"long long int"
.LASF23:
	.string	"char"
.LASF39:
	.string	"printf"
.LASF5:
	.string	"short int"
.LASF41:
	.string	"memcmp"
.LASF26:
	.string	"output"
.LASF14:
	.string	"total"
.LASF21:
	.string	"long int"
.LASF31:
	.string	"sha512_test_buflen"
.LASF20:
	.string	"mbedtls_sha512_context"
.LASF13:
	.string	"esp_mbedtls_sha512_mode"
.LASF3:
	.string	"signed char"
.LASF27:
	.string	"verbose"
.LASF34:
	.string	"mbedtls_sha512_starts"
.LASF8:
	.string	"__uint64_t"
.LASF32:
	.string	"sha512_test_sum"
.LASF28:
	.string	"buflen"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-61-gab8375a) 5.2.0"
