	.file	"bootloader_sha.c"
	.text
.Ltext0:
	.section	.text.bootloader_sha256_start,"ax",@progbits
	.literal_position
	.literal .LC0, words_hashed
	.align	4
	.global	bootloader_sha256_start
	.type	bootloader_sha256_start, @function
bootloader_sha256_start:
.LFB2:
	.file 1 "C:/esp/esp-idf/components/bootloader_support/src/bootloader_sha.c"
	.loc 1 69 0
	entry	sp, 32
.LCFI0:
	.loc 1 71 0
	call8	ets_sha_enable
.LVL0:
	.loc 1 72 0
	l32r	a2, .LC0
	movi.n	a8, 0
	s32i.n	a8, a2, 0
	.loc 1 74 0
	retw.n
.LFE2:
	.size	bootloader_sha256_start, .-bootloader_sha256_start
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC1:
	.string	"handle != NULL"
	.align	4
.LC4:
	.string	"C:/esp/esp-idf/components/bootloader_support/src/bootloader_sha.c"
	.align	4
.LC6:
	.string	"data_len % 4 == 0"
	.global	__bswapsi2
	.section	.text.bootloader_sha256_data,"ax",@progbits
	.literal_position
	.literal .LC2, .LC1
	.literal .LC3, __func__$2469
	.literal .LC5, .LC4
	.literal .LC7, .LC6
	.literal .LC8, words_hashed
	.literal .LC9, 1072705692
	.literal .LC10, 1072705536
	.literal .LC11, 1072705680
	.literal .LC12, 1072705684
	.align	4
	.global	bootloader_sha256_data
	.type	bootloader_sha256_data, @function
bootloader_sha256_data:
.LFB3:
	.loc 1 77 0
.LVL1:
	entry	sp, 32
.LCFI1:
	.loc 1 78 0
	bnez.n	a2, .L3
	.loc 1 78 0 is_stmt 0 discriminator 1
	l32r	a13, .LC2
	l32r	a12, .LC3
	movi.n	a11, 0x4e
	l32r	a10, .LC5
	call8	__assert_func
.LVL2:
.L3:
	.loc 1 79 0 is_stmt 1
	extui	a2, a4, 0, 2
.LVL3:
	.loc 1 79 0
	beqz.n	a2, .L4
	.loc 1 79 0 is_stmt 0 discriminator 1
	l32r	a13, .LC7
	l32r	a12, .LC3
	movi.n	a11, 0x4f
	l32r	a10, .LC5
	call8	__assert_func
.LVL4:
.L4:
	.loc 1 82 0 is_stmt 1
	srli	a7, a4, 2
.LVL5:
	.loc 1 86 0
	j	.L5
.LVL6:
.L11:
.LBB2:
	.loc 1 87 0
	l32r	a2, .LC8
	l32i.n	a6, a2, 0
	extui	a6, a6, 0, 4
.LVL7:
	.loc 1 88 0
	movi.n	a5, 0x10
	sub	a5, a5, a6
.LVL8:
	.loc 1 90 0
	minu	a5, a7, a5
.LVL9:
.L6:
	.loc 1 93 0 discriminator 1
	l32r	a2, .LC9
	memw
	l32i.n	a2, a2, 0
	bnez.n	a2, .L6
	j	.L7
.LVL10:
.L8:
.LBB3:
	.loc 1 98 0 discriminator 3
	add.n	a8, a6, a2
	l32r	a4, .LC10
	addx4	a4, a8, a4
	addx4	a8, a2, a3
	l32i.n	a10, a8, 0
	call8	__bswapsi2
.LVL11:
	s32i.n	a10, a4, 0
	.loc 1 97 0 discriminator 3
	addi.n	a2, a2, 1
.LVL12:
.L7:
	.loc 1 97 0 is_stmt 0 discriminator 1
	bltu	a2, a5, .L8
.LBE3:
	.loc 1 100 0 is_stmt 1
#APP
# 100 "C:/esp/esp-idf/components/bootloader_support/src/bootloader_sha.c" 1
	memw
# 0 "" 2
	.loc 1 103 0
#NO_APP
	l32r	a4, .LC8
	l32i.n	a2, a4, 0
.LVL13:
	add.n	a2, a5, a2
	s32i.n	a2, a4, 0
	.loc 1 104 0
	add.n	a6, a6, a5
.LVL14:
	.loc 1 105 0
	sub	a7, a7, a5
.LVL15:
	.loc 1 106 0
	addx4	a3, a5, a3
.LVL16:
	.loc 1 109 0
	bnei	a6, 16, .L5
	.loc 1 111 0
	bnei	a2, 16, .L10
	.loc 1 112 0
	movi.n	a4, 1
	l32r	a2, .LC11
	memw
	s32i.n	a4, a2, 0
	j	.L5
.L10:
	.loc 1 114 0
	movi.n	a4, 1
	l32r	a2, .LC12
	memw
	s32i.n	a4, a2, 0
.LVL17:
.L5:
.LBE2:
	.loc 1 86 0
	bnez.n	a7, .L11
	.loc 1 119 0
	retw.n
.LFE3:
	.size	bootloader_sha256_data, .-bootloader_sha256_data
	.section	.rodata.str1.4
	.align	4
.LC17:
	.string	"pad_bytes % 4 == 0"
	.align	4
.LC20:
	.string	"words_hashed % BLOCK_WORDS == 60/4"
	.align	4
.LC22:
	.string	"words_hashed % BLOCK_WORDS == 0"
	.section	.text.bootloader_sha256_finish,"ax",@progbits
	.literal_position
	.literal .LC13, .LC1
	.literal .LC14, __func__$2489
	.literal .LC15, .LC4
	.literal .LC16, words_hashed
	.literal .LC18, .LC17
	.literal .LC19, padding$2493
	.literal .LC21, .LC20
	.literal .LC23, .LC22
	.literal .LC24, 1072705692
	.literal .LC25, 1072705688
	.literal .LC26, 1072705536
	.align	4
	.global	bootloader_sha256_finish
	.type	bootloader_sha256_finish, @function
bootloader_sha256_finish:
.LFB4:
	.loc 1 122 0
.LVL18:
	entry	sp, 48
.LCFI2:
	.loc 1 123 0
	bnez.n	a2, .L13
	.loc 1 123 0 is_stmt 0 discriminator 1
	l32r	a13, .LC13
	l32r	a12, .LC14
	movi	a11, 0x7b
	l32r	a10, .LC15
	call8	__assert_func
.LVL19:
.L13:
	.loc 1 125 0 is_stmt 1
	beqz.n	a3, .L12
	.loc 1 129 0
	l32r	a4, .LC16
	l32i.n	a4, a4, 0
.LVL20:
	.loc 1 134 0
	extui	a8, a4, 0, 4
	slli	a8, a8, 2
.LVL21:
	.loc 1 135 0
	movi.n	a12, 0x37
	sub	a12, a12, a8
.LVL22:
	.loc 1 136 0
	bgez	a12, .L15
	.loc 1 137 0
	movi	a12, 0x77
.LVL23:
	sub	a12, a12, a8
.LVL24:
.L15:
	.loc 1 141 0
	addi.n	a12, a12, 5
.LVL25:
	.loc 1 142 0
	extui	a8, a12, 0, 2
.LVL26:
	.loc 1 142 0
	beqz.n	a8, .L16
	.loc 1 142 0 is_stmt 0 discriminator 1
	l32r	a13, .LC18
	l32r	a12, .LC14
	movi	a11, 0x8e
	l32r	a10, .LC15
	call8	__assert_func
.LVL27:
.L16:
	.loc 1 144 0 is_stmt 1
	l32r	a11, .LC19
	mov.n	a10, a2
	call8	bootloader_sha256_data
.LVL28:
	.loc 1 146 0
	l32r	a8, .LC16
	l32i.n	a8, a8, 0
	extui	a8, a8, 0, 4
	.loc 1 146 0
	movi.n	a9, 0xf
	beq	a8, a9, .L17
	.loc 1 146 0 is_stmt 0 discriminator 1
	l32r	a13, .LC21
	l32r	a12, .LC14
	movi	a11, 0x92
	l32r	a10, .LC15
	call8	__assert_func
.LVL29:
.L17:
	.loc 1 149 0 is_stmt 1
	slli	a10, a4, 5
	call8	__bswapsi2
.LVL30:
	s32i.n	a10, sp, 0
	.loc 1 150 0
	movi.n	a12, 4
	mov.n	a11, sp
	mov.n	a10, a2
	call8	bootloader_sha256_data
.LVL31:
	.loc 1 152 0
	l32r	a2, .LC16
.LVL32:
	l32i.n	a2, a2, 0
	extui	a2, a2, 0, 4
	.loc 1 152 0
	beqz.n	a2, .L18
	.loc 1 152 0 is_stmt 0 discriminator 1
	l32r	a13, .LC23
	l32r	a12, .LC14
	movi	a11, 0x98
	l32r	a10, .LC15
	call8	__assert_func
.LVL33:
.L18:
	.loc 1 154 0 is_stmt 1 discriminator 1
	l32r	a2, .LC24
	memw
	l32i.n	a2, a2, 0
	beqi	a2, 1, .L18
	.loc 1 155 0
	movi.n	a4, 1
.LVL34:
	l32r	a2, .LC25
	memw
	s32i.n	a4, a2, 0
.L19:
	.loc 1 156 0 discriminator 1
	l32r	a2, .LC24
	memw
	l32i.n	a2, a2, 0
	beqi	a2, 1, .L19
	movi.n	a2, 0
	j	.L20
.LVL35:
.L21:
.LBB4:
	.loc 1 161 0 discriminator 3
	slli	a9, a2, 2
	add.n	a4, a3, a9
	l32r	a8, .LC26
	add.n	a8, a9, a8
	l32i.n	a10, a8, 0
	call8	__bswapsi2
.LVL36:
	s32i.n	a10, a4, 0
	.loc 1 160 0 discriminator 3
	addi.n	a2, a2, 1
.LVL37:
.L20:
	.loc 1 160 0 is_stmt 0 discriminator 1
	bltui	a2, 8, .L21
.LBE4:
	.loc 1 163 0 is_stmt 1
#APP
# 163 "C:/esp/esp-idf/components/bootloader_support/src/bootloader_sha.c" 1
	memw
# 0 "" 2
.LVL38:
#NO_APP
.L12:
	retw.n
.LFE4:
	.size	bootloader_sha256_finish, .-bootloader_sha256_finish
	.section	.rodata.padding$2493,"a",@progbits
	.align	4
	.type	padding$2493, @object
	.size	padding$2493, 64
padding$2493:
	.byte	-128
	.byte	0
	.zero	62
	.section	.rodata.__func__$2489,"a",@progbits
	.align	4
	.type	__func__$2489, @object
	.size	__func__$2489, 25
__func__$2489:
	.string	"bootloader_sha256_finish"
	.section	.rodata.__func__$2469,"a",@progbits
	.align	4
	.type	__func__$2469, @object
	.size	__func__$2469, 23
__func__$2469:
	.string	"bootloader_sha256_data"
	.section	.bss.words_hashed,"aw",@nobits
	.align	4
	.type	words_hashed, @object
	.size	words_hashed, 4
words_hashed:
	.zero	4
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
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI0-.LFB2
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI1-.LFB3
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI2-.LFB4
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE4:
	.text
.Letext0:
	.file 2 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\machine\\_default_types.h"
	.file 3 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\stdint.h"
	.file 4 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 5 "C:/esp/esp-idf/components/bootloader_support/include_priv/bootloader_sha.h"
	.file 6 "C:/esp/esp-idf/components/esp32/include/rom/sha.h"
	.file 7 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\assert.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x449
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF41
	.byte	0xc
	.4byte	.LASF42
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
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF17
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x1
	.byte	0x44
	.4byte	0xb5
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xea
	.uleb128 0x9
	.4byte	.LVL0
	.4byte	0x436
	.byte	0
	.uleb128 0xa
	.4byte	.LASF19
	.byte	0x1
	.byte	0x4c
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x200
	.uleb128 0xb
	.4byte	.LASF20
	.byte	0x1
	.byte	0x4c
	.4byte	0xb5
	.4byte	.LLST0
	.uleb128 0xb
	.4byte	.LASF21
	.byte	0x1
	.byte	0x4c
	.4byte	0xae
	.4byte	.LLST1
	.uleb128 0xb
	.4byte	.LASF22
	.byte	0x1
	.byte	0x4c
	.4byte	0x85
	.4byte	.LLST2
	.uleb128 0xc
	.4byte	.LASF29
	.4byte	0x210
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2469
	.uleb128 0xd
	.string	"w"
	.byte	0x1
	.byte	0x51
	.4byte	0x215
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xe
	.4byte	.LASF23
	.byte	0x1
	.byte	0x52
	.4byte	0x85
	.uleb128 0x1
	.byte	0x57
	.uleb128 0xf
	.4byte	.LASF24
	.byte	0x1
	.byte	0x53
	.4byte	0x220
	.4byte	0x3ff03000
	.uleb128 0x10
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0x1a5
	.uleb128 0x11
	.4byte	.LASF25
	.byte	0x1
	.byte	0x57
	.4byte	0x85
	.4byte	.LLST3
	.uleb128 0x11
	.4byte	.LASF26
	.byte	0x1
	.byte	0x58
	.4byte	0x85
	.4byte	.LLST4
	.uleb128 0x12
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0x13
	.string	"i"
	.byte	0x1
	.byte	0x61
	.4byte	0x48
	.4byte	.LLST5
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL2
	.4byte	0x441
	.4byte	0x1d4
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x4e
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2469
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x16
	.4byte	.LVL4
	.4byte	0x441
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x4f
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2469
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	0xa7
	.4byte	0x210
	.uleb128 0x18
	.4byte	0x97
	.byte	0x16
	.byte	0
	.uleb128 0x19
	.4byte	0x200
	.uleb128 0x6
	.byte	0x4
	.4byte	0x21b
	.uleb128 0x19
	.4byte	0x7a
	.uleb128 0x6
	.byte	0x4
	.4byte	0x7a
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x1
	.byte	0x79
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3d8
	.uleb128 0xb
	.4byte	.LASF20
	.byte	0x1
	.byte	0x79
	.4byte	0xb5
	.4byte	.LLST6
	.uleb128 0x1a
	.4byte	.LASF28
	.byte	0x1
	.byte	0x79
	.4byte	0x3d8
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xc
	.4byte	.LASF29
	.4byte	0x3ee
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2489
	.uleb128 0x11
	.4byte	.LASF30
	.byte	0x1
	.byte	0x81
	.4byte	0x7a
	.4byte	.LLST7
	.uleb128 0x11
	.4byte	.LASF31
	.byte	0x1
	.byte	0x86
	.4byte	0x48
	.4byte	.LLST8
	.uleb128 0x11
	.4byte	.LASF32
	.byte	0x1
	.byte	0x87
	.4byte	0x48
	.4byte	.LLST9
	.uleb128 0xe
	.4byte	.LASF33
	.byte	0x1
	.byte	0x8b
	.4byte	0x403
	.uleb128 0x5
	.byte	0x3
	.4byte	padding$2493
	.uleb128 0xe
	.4byte	.LASF34
	.byte	0x1
	.byte	0x95
	.4byte	0x7a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1b
	.4byte	.LASF35
	.byte	0x1
	.byte	0x9e
	.4byte	0x220
	.uleb128 0x1b
	.4byte	.LASF24
	.byte	0x1
	.byte	0x9f
	.4byte	0x220
	.uleb128 0x10
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.4byte	0x2e3
	.uleb128 0x13
	.string	"i"
	.byte	0x1
	.byte	0xa0
	.4byte	0x48
	.4byte	.LLST10
	.byte	0
	.uleb128 0x14
	.4byte	.LVL19
	.4byte	0x441
	.4byte	0x312
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x7b
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2489
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x14
	.4byte	.LVL27
	.4byte	0x441
	.4byte	0x341
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x8e
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2489
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.byte	0
	.uleb128 0x14
	.4byte	.LVL28
	.4byte	0xea
	.4byte	0x35e
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	padding$2493
	.byte	0
	.uleb128 0x14
	.4byte	.LVL29
	.4byte	0x441
	.4byte	0x38d
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x92
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2489
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC20
	.byte	0
	.uleb128 0x14
	.4byte	.LVL31
	.4byte	0xea
	.4byte	0x3ac
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x16
	.4byte	.LVL33
	.4byte	0x441
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x98
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2489
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC22
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x6f
	.uleb128 0x17
	.4byte	0xa7
	.4byte	0x3ee
	.uleb128 0x18
	.4byte	0x97
	.byte	0x18
	.byte	0
	.uleb128 0x19
	.4byte	0x3de
	.uleb128 0x17
	.4byte	0x6f
	.4byte	0x403
	.uleb128 0x18
	.4byte	0x97
	.byte	0x3f
	.byte	0
	.uleb128 0x19
	.4byte	0x3f3
	.uleb128 0xe
	.4byte	.LASF36
	.byte	0x1
	.byte	0x3d
	.4byte	0x7a
	.uleb128 0x5
	.byte	0x3
	.4byte	words_hashed
	.uleb128 0x1c
	.4byte	.LASF37
	.byte	0x1
	.byte	0x40
	.4byte	0x425
	.byte	0x10
	.uleb128 0x19
	.4byte	0x85
	.uleb128 0x1c
	.4byte	.LASF38
	.byte	0x1
	.byte	0x42
	.4byte	0x425
	.byte	0x8
	.uleb128 0x1d
	.4byte	.LASF39
	.4byte	.LASF39
	.byte	0x6
	.byte	0x31
	.uleb128 0x1d
	.4byte	.LASF40
	.4byte	.LASF40
	.byte	0x7
	.byte	0x29
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
	.uleb128 0x9
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL3
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL6
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL6
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL7
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL8
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL10
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL18
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL32
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL20
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL21
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL26
	.4byte	.LVL34
	.2byte	0x7
	.byte	0x74
	.sleb128 0
	.byte	0x3f
	.byte	0x1a
	.byte	0x32
	.byte	0x24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x6
	.byte	0x8
	.byte	0x37
	.byte	0x78
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL35
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x52
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
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF4:
	.string	"__uint8_t"
.LASF11:
	.string	"size_t"
.LASF27:
	.string	"bootloader_sha256_finish"
.LASF23:
	.string	"word_len"
.LASF22:
	.string	"data_len"
.LASF29:
	.string	"__func__"
.LASF21:
	.string	"data"
.LASF42:
	.string	"C:/esp/esp-idf/components/bootloader_support/src/bootloader_sha.c"
.LASF1:
	.string	"unsigned char"
.LASF35:
	.string	"digest_words"
.LASF20:
	.string	"handle"
.LASF14:
	.string	"long unsigned int"
.LASF36:
	.string	"words_hashed"
.LASF3:
	.string	"short unsigned int"
.LASF10:
	.string	"uint32_t"
.LASF38:
	.string	"DIGEST_WORDS"
.LASF41:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -ggdb -Og -Og -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF5:
	.string	"__uint32_t"
.LASF34:
	.string	"bit_count"
.LASF19:
	.string	"bootloader_sha256_data"
.LASF40:
	.string	"__assert_func"
.LASF6:
	.string	"unsigned int"
.LASF8:
	.string	"long long unsigned int"
.LASF9:
	.string	"uint8_t"
.LASF33:
	.string	"padding"
.LASF16:
	.string	"bootloader_sha256_handle_t"
.LASF30:
	.string	"data_words"
.LASF32:
	.string	"pad_bytes"
.LASF13:
	.string	"sizetype"
.LASF7:
	.string	"long long int"
.LASF24:
	.string	"sha_text_reg"
.LASF15:
	.string	"char"
.LASF31:
	.string	"block_bytes"
.LASF18:
	.string	"bootloader_sha256_start"
.LASF26:
	.string	"copy_words"
.LASF2:
	.string	"short int"
.LASF28:
	.string	"digest"
.LASF12:
	.string	"long int"
.LASF0:
	.string	"signed char"
.LASF39:
	.string	"ets_sha_enable"
.LASF17:
	.string	"_Bool"
.LASF25:
	.string	"block_count"
.LASF37:
	.string	"BLOCK_WORDS"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-61-gab8375a) 5.2.0"
