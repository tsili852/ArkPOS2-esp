	.file	"bootloader_sha.c"
	.text
.Ltext0:
	.section	.text.bootloader_sha256_start,"ax",@progbits
	.align	4
	.global	bootloader_sha256_start
	.type	bootloader_sha256_start, @function
bootloader_sha256_start:
.LFB0:
	.file 1 "C:/esp/esp-idf/components/bootloader_support/src/bootloader_sha.c"
	.loc 1 25 0
	entry	sp, 32
.LCFI0:
	.loc 1 26 0
	movi	a10, 0x70
	call8	malloc
.LVL0:
	mov.n	a2, a10
.LVL1:
	.loc 1 27 0
	beqz.n	a10, .L3
	.loc 1 30 0
	call8	mbedtls_sha256_init
.LVL2:
	.loc 1 31 0
	movi.n	a11, 0
	mov.n	a10, a2
	call8	mbedtls_sha256_starts
.LVL3:
	.loc 1 32 0
	retw.n
.L3:
	.loc 1 28 0
	movi.n	a2, 0
.LVL4:
	.loc 1 33 0
	retw.n
.LFE0:
	.size	bootloader_sha256_start, .-bootloader_sha256_start
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC0:
	.string	"handle != NULL"
	.align	4
.LC3:
	.string	"C:/esp/esp-idf/components/bootloader_support/src/bootloader_sha.c"
	.section	.text.bootloader_sha256_data,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.literal .LC2, __func__$2329
	.literal .LC4, .LC3
	.align	4
	.global	bootloader_sha256_data
	.type	bootloader_sha256_data, @function
bootloader_sha256_data:
.LFB1:
	.loc 1 36 0
.LVL5:
	entry	sp, 32
.LCFI1:
	.loc 1 37 0
	bnez.n	a2, .L5
	.loc 1 37 0 is_stmt 0 discriminator 1
	l32r	a13, .LC1
	l32r	a12, .LC2
	movi.n	a11, 0x25
	l32r	a10, .LC4
	call8	__assert_func
.LVL6:
.L5:
	.loc 1 39 0 is_stmt 1
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	mbedtls_sha256_update
.LVL7:
	retw.n
.LFE1:
	.size	bootloader_sha256_data, .-bootloader_sha256_data
	.section	.text.bootloader_sha256_finish,"ax",@progbits
	.literal_position
	.literal .LC5, .LC0
	.literal .LC6, __func__$2335
	.literal .LC7, .LC3
	.align	4
	.global	bootloader_sha256_finish
	.type	bootloader_sha256_finish, @function
bootloader_sha256_finish:
.LFB2:
	.loc 1 43 0
.LVL8:
	entry	sp, 32
.LCFI2:
	.loc 1 44 0
	bnez.n	a2, .L7
	.loc 1 44 0 is_stmt 0 discriminator 1
	l32r	a13, .LC5
	l32r	a12, .LC6
	movi.n	a11, 0x2c
	l32r	a10, .LC7
	call8	__assert_func
.LVL9:
.L7:
	.loc 1 46 0 is_stmt 1
	beqz.n	a3, .L8
	.loc 1 47 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	mbedtls_sha256_finish
.LVL10:
.L8:
	.loc 1 49 0
	mov.n	a10, a2
	call8	mbedtls_sha256_free
.LVL11:
	.loc 1 50 0
	mov.n	a10, a2
	call8	free
.LVL12:
	retw.n
.LFE2:
	.size	bootloader_sha256_finish, .-bootloader_sha256_finish
	.section	.rodata.__func__$2335,"a",@progbits
	.align	4
	.type	__func__$2335, @object
	.size	__func__$2335, 25
__func__$2335:
	.string	"bootloader_sha256_finish"
	.section	.rodata.__func__$2329,"a",@progbits
	.align	4
	.type	__func__$2329, @object
	.size	__func__$2329, 23
__func__$2329:
	.string	"bootloader_sha256_data"
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
	.text
.Letext0:
	.file 2 "C:/esp/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "C:/esp/esp-idf/components/newlib/include/stdint.h"
	.file 4 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 5 "C:/esp/esp-idf/components/bootloader_support/include_priv/bootloader_sha.h"
	.file 6 "C:/esp/esp-idf/components/mbedtls/port/include/sha256_alt.h"
	.file 7 "C:/esp/esp-idf/components/newlib/include/stdlib.h"
	.file 8 "C:/esp/esp-idf/components/newlib/include/assert.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x3b8
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF43
	.byte	0xc
	.4byte	.LASF44
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x2
	.byte	0x12
	.4byte	0x33
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x1a
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x3
	.byte	0x15
	.4byte	0x28
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x3
	.byte	0x2d
	.4byte	0x4f
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x4
	.byte	0xd8
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb4
	.uleb128 0x7
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x5
	.byte	0x1a
	.4byte	0x9e
	.uleb128 0x8
	.byte	0x4
	.4byte	0x5a
	.byte	0x6
	.byte	0x20
	.4byte	0xdf
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x6
	.byte	0x24
	.4byte	0xc0
	.uleb128 0xa
	.byte	0x70
	.byte	0x6
	.byte	0x29
	.4byte	0x12f
	.uleb128 0xb
	.4byte	.LASF21
	.byte	0x6
	.byte	0x2b
	.4byte	0x12f
	.byte	0
	.uleb128 0xb
	.4byte	.LASF22
	.byte	0x6
	.byte	0x2c
	.4byte	0x13f
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x6
	.byte	0x2d
	.4byte	0x14f
	.byte	0x28
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x6
	.byte	0x2e
	.4byte	0x48
	.byte	0x68
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x6
	.byte	0x2f
	.4byte	0xdf
	.byte	0x6c
	.byte	0
	.uleb128 0xc
	.4byte	0x7a
	.4byte	0x13f
	.uleb128 0xd
	.4byte	0x97
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.4byte	0x7a
	.4byte	0x14f
	.uleb128 0xd
	.4byte	0x97
	.byte	0x7
	.byte	0
	.uleb128 0xc
	.4byte	0x33
	.4byte	0x15f
	.uleb128 0xd
	.4byte	0x97
	.byte	0x3f
	.byte	0
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x6
	.byte	0x31
	.4byte	0xea
	.uleb128 0xe
	.4byte	.LASF27
	.byte	0x1
	.byte	0x18
	.4byte	0xb5
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1d0
	.uleb128 0xf
	.string	"ctx"
	.byte	0x1
	.byte	0x1a
	.4byte	0x1d0
	.4byte	.LLST0
	.uleb128 0x10
	.4byte	.LVL0
	.4byte	0x363
	.4byte	0x1a6
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x70
	.byte	0
	.uleb128 0x10
	.4byte	.LVL2
	.4byte	0x36e
	.4byte	0x1ba
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL3
	.4byte	0x379
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x15f
	.uleb128 0x13
	.4byte	.LASF28
	.byte	0x1
	.byte	0x23
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x27a
	.uleb128 0x14
	.4byte	.LASF29
	.byte	0x1
	.byte	0x23
	.4byte	0xb5
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x14
	.4byte	.LASF30
	.byte	0x1
	.byte	0x23
	.4byte	0xae
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x14
	.4byte	.LASF31
	.byte	0x1
	.byte	0x23
	.4byte	0x85
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x15
	.4byte	.LASF34
	.4byte	0x28a
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2329
	.uleb128 0x16
	.string	"ctx"
	.byte	0x1
	.byte	0x26
	.4byte	0x1d0
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x10
	.4byte	.LVL6
	.4byte	0x384
	.4byte	0x25d
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x25
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2329
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL7
	.4byte	0x38f
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
	.uleb128 0xc
	.4byte	0xa7
	.4byte	0x28a
	.uleb128 0xd
	.4byte	0x97
	.byte	0x16
	.byte	0
	.uleb128 0x17
	.4byte	0x27a
	.uleb128 0x13
	.4byte	.LASF32
	.byte	0x1
	.byte	0x2a
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x348
	.uleb128 0x14
	.4byte	.LASF29
	.byte	0x1
	.byte	0x2a
	.4byte	0xb5
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x14
	.4byte	.LASF33
	.byte	0x1
	.byte	0x2a
	.4byte	0x348
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x15
	.4byte	.LASF34
	.4byte	0x35e
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2335
	.uleb128 0x16
	.string	"ctx"
	.byte	0x1
	.byte	0x2d
	.4byte	0x1d0
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x10
	.4byte	.LVL9
	.4byte	0x384
	.4byte	0x309
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x2c
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2335
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x10
	.4byte	.LVL10
	.4byte	0x39a
	.4byte	0x323
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
	.uleb128 0x10
	.4byte	.LVL11
	.4byte	0x3a5
	.4byte	0x337
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL12
	.4byte	0x3b0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x6f
	.uleb128 0xc
	.4byte	0xa7
	.4byte	0x35e
	.uleb128 0xd
	.4byte	0x97
	.byte	0x18
	.byte	0
	.uleb128 0x17
	.4byte	0x34e
	.uleb128 0x18
	.4byte	.LASF35
	.4byte	.LASF35
	.byte	0x7
	.byte	0x65
	.uleb128 0x18
	.4byte	.LASF36
	.4byte	.LASF36
	.byte	0x6
	.byte	0x38
	.uleb128 0x18
	.4byte	.LASF37
	.4byte	.LASF37
	.byte	0x6
	.byte	0x50
	.uleb128 0x18
	.4byte	.LASF38
	.4byte	.LASF38
	.byte	0x8
	.byte	0x29
	.uleb128 0x18
	.4byte	.LASF39
	.4byte	.LASF39
	.byte	0x6
	.byte	0x59
	.uleb128 0x18
	.4byte	.LASF40
	.4byte	.LASF40
	.byte	0x6
	.byte	0x62
	.uleb128 0x18
	.4byte	.LASF41
	.4byte	.LASF41
	.byte	0x6
	.byte	0x3f
	.uleb128 0x18
	.4byte	.LASF42
	.4byte	.LASF42
	.byte	0x7
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL1
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL4
	.4byte	.LFE0
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x2c
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF4:
	.string	"__uint8_t"
.LASF11:
	.string	"size_t"
.LASF24:
	.string	"is224"
.LASF22:
	.string	"state"
.LASF37:
	.string	"mbedtls_sha256_starts"
.LASF18:
	.string	"ESP_MBEDTLS_SHA256_HARDWARE"
.LASF32:
	.string	"bootloader_sha256_finish"
.LASF43:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF31:
	.string	"data_len"
.LASF36:
	.string	"mbedtls_sha256_init"
.LASF34:
	.string	"__func__"
.LASF30:
	.string	"data"
.LASF44:
	.string	"C:/esp/esp-idf/components/bootloader_support/src/bootloader_sha.c"
.LASF1:
	.string	"unsigned char"
.LASF40:
	.string	"mbedtls_sha256_finish"
.LASF19:
	.string	"ESP_MBEDTLS_SHA256_SOFTWARE"
.LASF3:
	.string	"short unsigned int"
.LASF10:
	.string	"uint32_t"
.LASF29:
	.string	"handle"
.LASF14:
	.string	"long unsigned int"
.LASF5:
	.string	"__uint32_t"
.LASF28:
	.string	"bootloader_sha256_data"
.LASF38:
	.string	"__assert_func"
.LASF6:
	.string	"unsigned int"
.LASF39:
	.string	"mbedtls_sha256_update"
.LASF8:
	.string	"long long unsigned int"
.LASF9:
	.string	"uint8_t"
.LASF25:
	.string	"mode"
.LASF16:
	.string	"bootloader_sha256_handle_t"
.LASF21:
	.string	"total"
.LASF13:
	.string	"sizetype"
.LASF42:
	.string	"free"
.LASF7:
	.string	"long long int"
.LASF15:
	.string	"char"
.LASF27:
	.string	"bootloader_sha256_start"
.LASF41:
	.string	"mbedtls_sha256_free"
.LASF26:
	.string	"mbedtls_sha256_context"
.LASF2:
	.string	"short int"
.LASF23:
	.string	"buffer"
.LASF33:
	.string	"digest"
.LASF12:
	.string	"long int"
.LASF17:
	.string	"ESP_MBEDTLS_SHA256_UNUSED"
.LASF0:
	.string	"signed char"
.LASF20:
	.string	"esp_mbedtls_sha256_mode"
.LASF35:
	.string	"malloc"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-61-gab8375a) 5.2.0"
