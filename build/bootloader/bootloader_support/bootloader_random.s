	.file	"bootloader_random.c"
	.text
.Ltext0:
	.section	.text.bootloader_fill_random,"ax",@progbits
	.literal_position
	.literal .LC0, 1610830148
	.literal .LC1, 5119
	.align	4
	.global	bootloader_fill_random
	.type	bootloader_fill_random, @function
bootloader_fill_random:
.LFB6:
	.file 1 "C:/esp/esp-idf/components/bootloader_support/src/bootloader_random.c"
	.loc 1 31 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LVL1:
.LBB12:
	.loc 1 38 0
	movi.n	a11, 0
	j	.L2
.LVL2:
.L6:
	.loc 1 39 0
	beqz.n	a11, .L3
	.loc 1 39 0 is_stmt 0 discriminator 1
	extui	a8, a13, 0, 2
	bnez.n	a8, .L4
.L3:
	.loc 1 48 0 is_stmt 1
	l32r	a8, .LC0
	memw
	l32i.n	a9, a8, 0
.LVL3:
	.loc 1 49 0
#APP
# 49 "C:/esp/esp-idf/components/bootloader_support/src/bootloader_random.c" 1
	rsr a12, CCOUNT
# 0 "" 2
.LVL4:
#NO_APP
.L5:
	.loc 1 51 0 discriminator 1
	l32r	a8, .LC0
	memw
	l32i.n	a8, a8, 0
	xor	a9, a9, a8
.LVL5:
	.loc 1 52 0 discriminator 1
#APP
# 52 "C:/esp/esp-idf/components/bootloader_support/src/bootloader_random.c" 1
	rsr a8, CCOUNT
# 0 "" 2
.LVL6:
	.loc 1 53 0 discriminator 1
#NO_APP
	sub	a8, a8, a12
.LVL7:
	l32r	a10, .LC1
	bgeu	a10, a8, .L5
.LVL8:
.L4:
	.loc 1 59 0 discriminator 2
	add.n	a13, a2, a13
	srai	a8, a11, 31
	extui	a10, a8, 30, 2
	add.n	a8, a11, a10
	extui	a8, a8, 0, 2
	sub	a8, a8, a10
	slli	a8, a8, 3
	ssr	a8
	srl	a8, a9
	s8i	a8, a13, 0
	.loc 1 38 0 discriminator 2
	addi.n	a11, a11, 1
.LVL9:
.L2:
	.loc 1 38 0 is_stmt 0 discriminator 1
	mov.n	a13, a11
	bltu	a11, a3, .L6
.LBE12:
	.loc 1 61 0 is_stmt 1
	retw.n
.LFE6:
	.size	bootloader_fill_random, .-bootloader_fill_random
	.section	.text.bootloader_random_enable,"ax",@progbits
	.literal_position
	.literal .LC2, 1072693452
	.literal .LC3, 32768
	.literal .LC4, 1072988328
	.literal .LC5, 1073741823
	.literal .LC6, -2147483648
	.literal .LC7, 536870912
	.literal .LC8, 1072990252
	.literal .LC9, 1072693440
	.literal .LC10, 1073111084
	.literal .LC11, -1381126739
	.literal .LC12, 1073111088
	.literal .LC13, 1073111092
	.literal .LC14, 1073111096
	.literal .LC15, 1072990220
	.literal .LC16, 786432
	.literal .LC17, 1072990208
	.literal .LC18, 134217728
	.literal .LC19, 1072990352
	.literal .LC20, 268435456
	.literal .LC21, 1073111056
	.literal .LC22, -32641
	.literal .LC23, 1073111064
	.literal .LC24, -16711681
	.literal .LC25, 655360
	.literal .LC26, -33554433
	.literal .LC27, 1073017008
	.literal .LC28, -4033
	.literal .LC29, 67108864
	.literal .LC30, 1073017000
	.literal .LC31, 1073016840
	.align	4
	.global	bootloader_random_enable
	.type	bootloader_random_enable, @function
bootloader_random_enable:
.LFB7:
	.loc 1 64 0
	entry	sp, 32
.LCFI1:
.LVL10:
.LBB13:
.LBB14:
	.file 2 "C:/esp/esp-idf/components/soc/esp32/include/soc/dport_access.h"
	.loc 2 102 0
	l32r	a9, .LC2
	memw
	l32i.n	a10, a9, 0
.LVL11:
.LBE14:
.LBE13:
	.loc 1 68 0
	l32r	a8, .LC3
	or	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
	.loc 1 76 0
	l32r	a8, .LC4
	memw
	l32i.n	a10, a8, 0
.LVL12:
	l32r	a9, .LC5
	and	a10, a10, a9
	l32r	a9, .LC6
	or	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 77 0
	memw
	l32i.n	a10, a8, 0
	l32r	a9, .LC7
	or	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 78 0
	l32r	a8, .LC8
	memw
	l32i.n	a9, a8, 0
	movi.n	a10, 0x10
	or	a9, a9, a10
	memw
	s32i.n	a9, a8, 0
.LVL13:
.LBB15:
.LBB16:
	.loc 2 102 0
	l32r	a11, .LC9
	memw
	l32i.n	a9, a11, 0
.LVL14:
.LBE16:
.LBE15:
	.loc 1 80 0
	or	a9, a9, a10
.LVL15:
	memw
	s32i.n	a9, a11, 0
	.loc 1 81 0
	memw
	l32i.n	a11, a8, 0
	movi	a9, -0x101
	and	a9, a11, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 82 0
	memw
	l32i.n	a11, a8, 0
	movi	a9, -0x201
	and	a9, a11, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 87 0
	l32r	a8, .LC11
	l32r	a9, .LC10
	memw
	s32i.n	a8, a9, 0
	.loc 1 88 0
	l32r	a9, .LC12
	memw
	s32i.n	a8, a9, 0
	.loc 1 89 0
	l32r	a9, .LC13
	memw
	s32i.n	a8, a9, 0
	.loc 1 90 0
	l32r	a9, .LC14
	memw
	s32i.n	a8, a9, 0
	.loc 1 92 0
	l32r	a9, .LC15
	memw
	l32i.n	a11, a9, 0
	l32r	a8, .LC16
	or	a8, a11, a8
	memw
	s32i.n	a8, a9, 0
	.loc 1 93 0
	l32r	a9, .LC17
	memw
	l32i.n	a11, a9, 0
	l32r	a8, .LC18
	or	a8, a11, a8
	memw
	s32i.n	a8, a9, 0
	.loc 1 94 0
	l32r	a9, .LC19
	memw
	l32i.n	a11, a9, 0
	l32r	a8, .LC20
	or	a8, a11, a8
	memw
	s32i.n	a8, a9, 0
	.loc 1 95 0
	l32r	a8, .LC21
	memw
	l32i.n	a11, a8, 0
	movi.n	a9, 4
	or	a9, a11, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 96 0
	memw
	l32i.n	a11, a8, 0
	l32r	a9, .LC22
	and	a11, a11, a9
	movi	a9, 0x200
	or	a9, a11, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 98 0
	l32r	a12, .LC23
	memw
	l32i.n	a11, a12, 0
	movi	a9, -0x100
	and	a9, a11, a9
	movi.n	a11, 8
	or	a9, a9, a11
	memw
	s32i.n	a9, a12, 0
	.loc 1 99 0
	memw
	l32i.n	a13, a12, 0
	l32r	a9, .LC24
	and	a13, a13, a9
	l32r	a9, .LC25
	or	a9, a13, a9
	memw
	s32i.n	a9, a12, 0
	.loc 1 100 0
	memw
	l32i.n	a12, a8, 0
	movi.n	a9, -0x19
	and	a9, a12, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 101 0
	memw
	l32i.n	a12, a8, 0
	movi.n	a9, 0x20
	or	a12, a12, a9
	memw
	s32i.n	a12, a8, 0
	.loc 1 102 0
	memw
	l32i.n	a13, a8, 0
	l32r	a12, .LC26
	and	a12, a13, a12
	memw
	s32i.n	a12, a8, 0
	.loc 1 104 0
	l32r	a14, .LC27
	memw
	l32i.n	a13, a14, 0
	l32r	a12, .LC28
	and	a13, a13, a12
	movi	a12, 0x500
	or	a12, a13, a12
	memw
	s32i.n	a12, a14, 0
	.loc 1 106 0
	memw
	l32i.n	a13, a8, 0
	l32r	a12, .LC29
	or	a12, a13, a12
	memw
	s32i.n	a12, a8, 0
	.loc 1 108 0
	l32r	a8, .LC30
	memw
	l32i.n	a13, a8, 0
	movi.n	a12, -2
	and	a12, a13, a12
	memw
	s32i.n	a12, a8, 0
	.loc 1 109 0
	memw
	l32i.n	a12, a8, 0
	or	a12, a12, a9
	memw
	s32i.n	a12, a8, 0
	.loc 1 110 0
	memw
	l32i.n	a12, a8, 0
	or	a10, a12, a10
	memw
	s32i.n	a10, a8, 0
	.loc 1 111 0
	memw
	l32i.n	a10, a8, 0
	or	a11, a10, a11
	memw
	s32i.n	a11, a8, 0
	.loc 1 112 0
	l32r	a8, .LC31
	memw
	l32i.n	a10, a8, 0
	or	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	retw.n
.LFE7:
	.size	bootloader_random_enable, .-bootloader_random_enable
	.section	.text.bootloader_random_disable,"ax",@progbits
	.literal_position
	.literal .LC32, 1072693440
	.literal .LC33, 1073017000
	.literal .LC34, 1073016840
	.literal .LC35, 1072990208
	.literal .LC36, -134217729
	.literal .LC37, 1072990352
	.literal .LC38, -268435457
	.literal .LC39, 1072990252
	.literal .LC40, 1073111056
	.literal .LC41, -67108901
	.literal .LC42, 1072990220
	.literal .LC43, -786433
	.literal .LC44, 1073111064
	.literal .LC45, -16711681
	.literal .LC46, 524288
	.literal .LC47, 1072693444
	.literal .LC48, 1072988328
	.literal .LC49, -536870913
	.literal .LC50, 1073741823
	.align	4
	.global	bootloader_random_disable
	.type	bootloader_random_disable, @function
bootloader_random_disable:
.LFB8:
	.loc 1 116 0
	entry	sp, 32
.LCFI2:
.LVL16:
.LBB17:
.LBB18:
	.loc 2 102 0
	l32r	a10, .LC32
	memw
	l32i.n	a8, a10, 0
.LVL17:
.LBE18:
.LBE17:
	.loc 1 118 0
	movi.n	a9, -0x11
	and	a8, a8, a9
.LVL18:
	memw
	s32i.n	a8, a10, 0
	.loc 1 123 0
	l32r	a8, .LC33
	memw
	l32i.n	a11, a8, 0
	movi.n	a10, -2
	and	a10, a11, a10
	memw
	s32i.n	a10, a8, 0
	.loc 1 124 0
	memw
	l32i.n	a11, a8, 0
	movi	a10, -0x21
	and	a11, a11, a10
	memw
	s32i.n	a11, a8, 0
	.loc 1 125 0
	memw
	l32i.n	a12, a8, 0
	movi.n	a11, -9
	and	a11, a12, a11
	memw
	s32i.n	a11, a8, 0
	.loc 1 126 0
	memw
	l32i.n	a11, a8, 0
	and	a11, a11, a9
	memw
	s32i.n	a11, a8, 0
	.loc 1 127 0
	l32r	a8, .LC34
	memw
	l32i.n	a11, a8, 0
	and	a10, a11, a10
	memw
	s32i.n	a10, a8, 0
	.loc 1 130 0
	l32r	a10, .LC35
	memw
	l32i.n	a11, a10, 0
	l32r	a8, .LC36
	and	a8, a11, a8
	memw
	s32i.n	a8, a10, 0
	.loc 1 131 0
	l32r	a10, .LC37
	memw
	l32i.n	a11, a10, 0
	l32r	a8, .LC38
	and	a8, a11, a8
	memw
	s32i.n	a8, a10, 0
	.loc 1 134 0
	l32r	a10, .LC39
	memw
	l32i.n	a8, a10, 0
	and	a8, a8, a9
	memw
	s32i.n	a8, a10, 0
	.loc 1 135 0
	l32r	a10, .LC40
	memw
	l32i.n	a11, a10, 0
	l32r	a8, .LC41
	and	a8, a11, a8
	memw
	s32i.n	a8, a10, 0
	.loc 1 137 0
	l32r	a10, .LC42
	memw
	l32i.n	a11, a10, 0
	l32r	a8, .LC43
	and	a8, a11, a8
	memw
	s32i.n	a8, a10, 0
	.loc 1 138 0
	l32r	a11, .LC44
	memw
	l32i.n	a10, a11, 0
	l32r	a8, .LC45
	and	a10, a10, a8
	l32r	a8, .LC46
	or	a8, a10, a8
	memw
	s32i.n	a8, a11, 0
.LVL19:
.LBB19:
.LBB20:
	.loc 2 102 0
	l32r	a8, .LC47
	memw
	l32i.n	a11, a8, 0
.LVL20:
.LBE20:
.LBE19:
	.loc 1 141 0
	movi.n	a10, 0x10
	or	a10, a11, a10
	memw
	s32i.n	a10, a8, 0
.LVL21:
.LBB21:
.LBB22:
	.loc 2 102 0
	memw
	l32i.n	a10, a8, 0
.LVL22:
.LBE22:
.LBE21:
	.loc 1 142 0
	and	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 145 0
	l32r	a8, .LC48
	memw
	l32i.n	a10, a8, 0
.LVL23:
	l32r	a9, .LC49
	and	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 146 0
	memw
	l32i.n	a10, a8, 0
	l32r	a9, .LC50
	and	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	retw.n
.LFE8:
	.size	bootloader_random_disable, .-bootloader_random_disable
	.global	TAG
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC51:
	.string	"boot_rng"
	.section	.data.TAG,"aw",@progbits
	.align	4
	.type	TAG, @object
	.size	TAG, 4
TAG:
	.word	.LC51
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
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI0-.LFB6
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI1-.LFB7
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI2-.LFB8
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
	.text
.Letext0:
	.file 3 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 4 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\machine\\_default_types.h"
	.file 5 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\stdint.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x274
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF21
	.byte	0xc
	.4byte	.LASF22
	.4byte	.LASF23
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x3
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
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x4
	.byte	0x12
	.4byte	0x57
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x4
	.byte	0x1a
	.4byte	0x37
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x5
	.byte	0x15
	.4byte	0x4c
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x5
	.byte	0x2d
	.4byte	0x65
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa3
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x7
	.4byte	0x9c
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x2
	.byte	0x61
	.4byte	0x89
	.byte	0x3
	.4byte	0xcf
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x2
	.byte	0x61
	.4byte	0x89
	.uleb128 0xa
	.string	"val"
	.byte	0x2
	.byte	0x63
	.4byte	0x89
	.byte	0
	.uleb128 0xb
	.4byte	.LASF18
	.byte	0x1
	.byte	0x1e
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x14e
	.uleb128 0xc
	.4byte	.LASF13
	.byte	0x1
	.byte	0x1e
	.4byte	0x94
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xc
	.4byte	.LASF14
	.byte	0x1
	.byte	0x1e
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xd
	.4byte	.LASF15
	.byte	0x1
	.byte	0x20
	.4byte	0x14e
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xd
	.4byte	.LASF16
	.byte	0x1
	.byte	0x21
	.4byte	0x89
	.uleb128 0x1
	.byte	0x59
	.uleb128 0xe
	.4byte	.LASF17
	.byte	0x1
	.byte	0x23
	.4byte	0x89
	.4byte	.LLST0
	.uleb128 0xf
	.string	"now"
	.byte	0x1
	.byte	0x23
	.4byte	0x89
	.4byte	.LLST1
	.uleb128 0x10
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.uleb128 0xf
	.string	"i"
	.byte	0x1
	.byte	0x26
	.4byte	0x25
	.4byte	.LLST2
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x7e
	.uleb128 0xb
	.4byte	.LASF19
	.byte	0x1
	.byte	0x3f
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c6
	.uleb128 0x11
	.4byte	0xa8
	.4byte	.LBB13
	.4byte	.LBE13-.LBB13
	.byte	0x1
	.byte	0x44
	.4byte	0x199
	.uleb128 0x12
	.4byte	0xb8
	.4byte	0x3ff000cc
	.uleb128 0x10
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.uleb128 0x13
	.4byte	0xc3
	.4byte	.LLST3
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	0xa8
	.4byte	.LBB15
	.4byte	.LBE15-.LBB15
	.byte	0x1
	.byte	0x50
	.uleb128 0x12
	.4byte	0xb8
	.4byte	0x3ff000c0
	.uleb128 0x10
	.4byte	.LBB16
	.4byte	.LBE16-.LBB16
	.uleb128 0x13
	.4byte	0xc3
	.4byte	.LLST4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	.LASF20
	.byte	0x1
	.byte	0x73
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x266
	.uleb128 0x11
	.4byte	0xa8
	.4byte	.LBB17
	.4byte	.LBE17-.LBB17
	.byte	0x1
	.byte	0x76
	.4byte	0x20b
	.uleb128 0x12
	.4byte	0xb8
	.4byte	0x3ff000c0
	.uleb128 0x10
	.4byte	.LBB18
	.4byte	.LBE18-.LBB18
	.uleb128 0x13
	.4byte	0xc3
	.4byte	.LLST5
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	0xa8
	.4byte	.LBB19
	.4byte	.LBE19-.LBB19
	.byte	0x1
	.byte	0x8d
	.4byte	0x239
	.uleb128 0x12
	.4byte	0xb8
	.4byte	0x3ff000c4
	.uleb128 0x10
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.uleb128 0x15
	.4byte	0xc3
	.uleb128 0x1
	.byte	0x5b
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	0xa8
	.4byte	.LBB21
	.4byte	.LBE21-.LBB21
	.byte	0x1
	.byte	0x8e
	.uleb128 0x12
	.4byte	0xb8
	.4byte	0x3ff000c4
	.uleb128 0x10
	.4byte	.LBB22
	.4byte	.LBE22-.LBB22
	.uleb128 0x13
	.4byte	0xc3
	.4byte	.LLST6
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x16
	.string	"TAG"
	.byte	0x1
	.byte	0x1c
	.4byte	0x96
	.uleb128 0x5
	.byte	0x3
	.4byte	TAG
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0x17
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL4
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL22
	.4byte	.LVL23
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
.LASF24:
	.string	"DPORT_READ_PERI_REG"
.LASF4:
	.string	"__uint8_t"
.LASF3:
	.string	"size_t"
.LASF22:
	.string	"C:/esp/esp-idf/components/bootloader_support/src/bootloader_random.c"
.LASF17:
	.string	"start"
.LASF1:
	.string	"short unsigned int"
.LASF23:
	.string	"C:\\\\esp\\\\ArkPOS2-esp\\\\build\\\\bootloader\\\\bootloader_support"
.LASF16:
	.string	"random"
.LASF5:
	.string	"unsigned char"
.LASF18:
	.string	"bootloader_fill_random"
.LASF25:
	.string	"addr"
.LASF21:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -ggdb -Og -Og -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF7:
	.string	"__uint32_t"
.LASF0:
	.string	"unsigned int"
.LASF9:
	.string	"long long unsigned int"
.LASF10:
	.string	"uint8_t"
.LASF8:
	.string	"long long int"
.LASF12:
	.string	"char"
.LASF6:
	.string	"short int"
.LASF13:
	.string	"buffer"
.LASF11:
	.string	"uint32_t"
.LASF15:
	.string	"buffer_bytes"
.LASF20:
	.string	"bootloader_random_disable"
.LASF2:
	.string	"signed char"
.LASF19:
	.string	"bootloader_random_enable"
.LASF14:
	.string	"length"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-61-gab8375a) 5.2.0"
