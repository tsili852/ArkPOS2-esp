	.file	"rtc_init.c"
	.text
.Ltext0:
	.section	.text.rtc_init,"ax",@progbits
	.literal_position
	.literal .LC0, 1072988208
	.literal .LC1, -67108865
	.literal .LC2, 1072988188
	.literal .LC3, 16777215
	.literal .LC4, -16760833
	.literal .LC5, -16321
	.literal .LC6, 1072988280
	.literal .LC7, 50331648
	.literal .LC8, 1610612736
	.literal .LC9, 1072988284
	.literal .LC10, -234881025
	.literal .LC11, 134217728
	.literal .LC12, -29360129
	.literal .LC13, 16777216
	.literal .LC14, 1072693316
	.literal .LC15, -2049
	.literal .LC16, 1072693340
	.literal .LC17, 1072693396
	.literal .LC18, 1072693408
	.literal .LC19, 1072693412
	.literal .LC20, 1072693420
	.literal .LC22, 1072988272
	.literal .LC23, 1072988160
	.literal .LC24, -8193
	.literal .LC25, -4194305
	.literal .LC26, -524289
	.literal .LC27, -65537
	.literal .LC28, 1048576
	.literal .LC29, 131072
	.literal .LC30, 16384
	.literal .LC31, -16777217
	.literal .LC32, 8388608
	.literal .LC33, 2147483647
	.literal .LC34, -536870913
	.literal .LC36, 268435456
	.literal .LC37, -268435457
	.literal .LC38, 1072988292
	.literal .LC39, -1048577
	.literal .LC40, -262145
	.literal .LC41, -87361
	.literal .LC42, 1072988288
	.literal .LC43, -73729
	.literal .LC44, 1072988296
	.literal .LC45, -178913281
	.literal .LC46, -16385
	.literal .LC47, -4097
	.align	4
	.global	rtc_init
	.type	rtc_init, @function
rtc_init:
.LFB2:
	.file 1 "C:/esp/esp-idf/components/soc/esp32/rtc_init.c"
	.loc 1 24 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 25 0
	l32r	a9, .LC0
	memw
	l32i.n	a10, a9, 0
	l32r	a8, .LC1
	and	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
	.loc 1 27 0
	l32r	a8, .LC2
	memw
	l32i.n	a10, a8, 0
	l32r	a9, .LC3
	and	a10, a10, a9
	extui	a9, a2, 16, 8
	slli	a9, a9, 24
	or	a9, a9, a10
	memw
	s32i.n	a9, a8, 0
	.loc 1 28 0
	memw
	l32i.n	a10, a8, 0
	l32r	a9, .LC4
	and	a10, a10, a9
	extui	a9, a2, 8, 8
	slli	a9, a9, 14
	or	a9, a9, a10
	memw
	s32i.n	a9, a8, 0
	.loc 1 29 0
	memw
	l32i.n	a10, a8, 0
	l32r	a9, .LC5
	and	a10, a10, a9
	extui	a9, a2, 0, 8
	slli	a9, a9, 6
	or	a9, a9, a10
	memw
	s32i.n	a9, a8, 0
	.loc 1 31 0
	l32r	a8, .LC6
	memw
	l32i.n	a10, a8, 0
	l32r	a9, .LC7
	or	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 32 0
	memw
	l32i.n	a10, a8, 0
	l32r	a9, .LC8
	or	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 36 0
	l32r	a9, .LC9
	memw
	l32i.n	a10, a9, 0
	l32r	a8, .LC10
	and	a10, a10, a8
	l32r	a8, .LC11
	or	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
	.loc 1 37 0
	memw
	l32i.n	a10, a9, 0
	l32r	a8, .LC12
	and	a8, a10, a8
	l32r	a10, .LC13
	or	a8, a8, a10
	memw
	s32i.n	a8, a9, 0
	.loc 1 39 0
	bnone	a2, a10, .L2
.LVL1:
.LBB20:
.LBB21:
	.file 2 "C:/esp/esp-idf/components/soc/esp32/include/soc/dport_access.h"
	.loc 2 102 0
	l32r	a10, .LC14
	memw
	l32i.n	a9, a10, 0
.LVL2:
.LBE21:
.LBE20:
	.loc 1 41 0
	l32r	a8, .LC15
	and	a9, a9, a8
.LVL3:
	memw
	s32i.n	a9, a10, 0
.LVL4:
.LBB22:
.LBB23:
	.loc 2 102 0
	l32r	a9, .LC16
	memw
	l32i.n	a10, a9, 0
.LVL5:
.LBE23:
.LBE22:
	.loc 1 42 0
	and	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
.LVL6:
.LBB24:
.LBB25:
	.loc 2 102 0
	l32r	a8, .LC17
	memw
	l32i.n	a10, a8, 0
.LVL7:
.LBE25:
.LBE24:
	.loc 1 44 0
	movi	a9, -0xfd
	and	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
.LVL8:
.LBB26:
.LBB27:
	.loc 2 102 0
	memw
	l32i.n	a10, a8, 0
.LVL9:
.LBE27:
.LBE26:
	.loc 1 45 0
	movi.n	a9, -3
	and	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
.LVL10:
.LBB28:
.LBB29:
	.loc 2 102 0
	memw
	l32i.n	a10, a8, 0
.LVL11:
.LBE29:
.LBE28:
	.loc 1 46 0
	movi.n	a9, -2
	and	a10, a10, a9
.LVL12:
	memw
	s32i.n	a10, a8, 0
.LVL13:
.LBB30:
.LBB31:
	.loc 2 102 0
	l32r	a8, .LC18
	memw
	l32i.n	a10, a8, 0
.LBE31:
.LBE30:
	.loc 1 48 0
	movi.n	a10, 0
	memw
	s32i.n	a10, a8, 0
.LVL14:
.LBB32:
.LBB33:
	.loc 2 102 0
	l32r	a10, .LC19
	memw
	l32i.n	a8, a10, 0
.LVL15:
.LBE33:
.LBE32:
	.loc 1 49 0
	and	a8, a8, a9
.LVL16:
	memw
	s32i.n	a8, a10, 0
.LVL17:
.LBB34:
.LBB35:
	.loc 2 102 0
	l32r	a8, .LC20
	memw
	l32i.n	a11, a8, 0
.LVL18:
.LBE35:
.LBE34:
	.loc 1 51 0
	movi	a10, -0x101
	and	a10, a11, a10
	memw
	s32i.n	a10, a8, 0
.LVL19:
.LBB36:
.LBB37:
	.loc 2 102 0
	memw
	l32i.n	a10, a8, 0
.LVL20:
.LBE37:
.LBE36:
	.loc 1 52 0
	and	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
.LVL21:
.L2:
	.loc 1 55 0
	bbci	a2, 25, .L1
	.loc 1 56 0
	l32r	a9, .LC22
	memw
	l32i.n	a10, a9, 0
	l32r	a8, .LC1
	and	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
	.loc 1 58 0
	l32r	a8, .LC23
	memw
	l32i.n	a10, a8, 0
	l32r	a9, .LC24
	and	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 60 0
	memw
	l32i.n	a10, a8, 0
	l32r	a9, .LC25
	and	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 61 0
	memw
	l32i.n	a10, a8, 0
	l32r	a9, .LC26
	and	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 62 0
	memw
	l32i.n	a10, a8, 0
	l32r	a9, .LC27
	and	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 64 0
	memw
	l32i.n	a10, a8, 0
	l32r	a9, .LC28
	or	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 65 0
	memw
	l32i.n	a10, a8, 0
	l32r	a9, .LC29
	or	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 66 0
	memw
	l32i.n	a10, a8, 0
	l32r	a9, .LC30
	or	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 68 0
	l32r	a9, .LC0
	memw
	l32i.n	a11, a9, 0
	l32r	a10, .LC31
	and	a10, a11, a10
	memw
	s32i.n	a10, a9, 0
	.loc 1 69 0
	memw
	l32i.n	a11, a9, 0
	l32r	a10, .LC32
	or	a10, a11, a10
	memw
	s32i.n	a10, a9, 0
	.loc 1 70 0
	memw
	l32i.n	a10, a8, 0
	l32r	a9, .LC15
	and	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 71 0
	memw
	l32i.n	a10, a8, 0
	movi	a9, -0x201
	and	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 73 0
	l32r	a8, .LC9
	memw
	l32i.n	a10, a8, 0
	l32r	a9, .LC33
	and	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 74 0
	memw
	l32i.n	a10, a8, 0
	l32r	a9, .LC34
	and	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 75 0
	bbci	a2, 26, .L4
	.loc 1 76 0
	memw
	l32i.n	a9, a8, 0
	l32r	a2, .LC36
.LVL22:
	or	a2, a9, a2
	memw
	s32i.n	a2, a8, 0
	j	.L5
.LVL23:
.L4:
	.loc 1 78 0
	l32r	a8, .LC9
	memw
	l32i.n	a9, a8, 0
	l32r	a2, .LC37
.LVL24:
	and	a2, a9, a2
	memw
	s32i.n	a2, a8, 0
.L5:
	.loc 1 81 0
	l32r	a2, .LC38
	memw
	l32i.n	a9, a2, 0
	movi.n	a8, -0x11
	and	a8, a9, a8
	memw
	s32i.n	a8, a2, 0
	.loc 1 82 0
	memw
	l32i.n	a9, a2, 0
	l32r	a8, .LC39
	and	a8, a9, a8
	memw
	s32i.n	a8, a2, 0
	.loc 1 83 0
	memw
	l32i.n	a9, a2, 0
	l32r	a8, .LC40
	and	a8, a9, a8
	memw
	s32i.n	a8, a2, 0
	.loc 1 84 0
	memw
	l32i.n	a9, a2, 0
	l32r	a8, .LC41
	and	a8, a9, a8
	memw
	s32i.n	a8, a2, 0
	.loc 1 85 0
	l32r	a2, .LC42
	memw
	l32i.n	a9, a2, 0
	l32r	a8, .LC43
	and	a8, a9, a8
	memw
	s32i.n	a8, a2, 0
	.loc 1 86 0
	memw
	l32i.n	a9, a2, 0
	l32r	a8, .LC26
	and	a8, a9, a8
	memw
	s32i.n	a8, a2, 0
	.loc 1 87 0
	l32r	a8, .LC44
	memw
	l32i.n	a10, a8, 0
	l32r	a9, .LC33
	and	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 88 0
	memw
	l32i.n	a10, a8, 0
	l32r	a9, .LC34
	and	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 89 0
	memw
	l32i.n	a10, a8, 0
	l32r	a9, .LC45
	and	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 90 0
	memw
	l32i.n	a10, a2, 0
	movi.n	a9, -6
	and	a9, a10, a9
	memw
	s32i.n	a9, a2, 0
	.loc 1 91 0
	memw
	l32i.n	a10, a2, 0
	movi	a9, -0x21
	and	a9, a10, a9
	memw
	s32i.n	a9, a2, 0
	.loc 1 93 0
	memw
	l32i.n	a9, a8, 0
	l32r	a2, .LC46
	and	a2, a9, a2
	memw
	s32i.n	a2, a8, 0
	.loc 1 94 0
	memw
	l32i.n	a9, a8, 0
	l32r	a2, .LC47
	and	a2, a9, a2
	memw
	s32i.n	a2, a8, 0
.LVL25:
.L1:
	retw.n
.LFE2:
	.size	rtc_init, .-rtc_init
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
	.text
.Letext0:
	.file 3 "C:/esp/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "C:/esp/esp-idf/components/newlib/include/stdint.h"
	.file 5 "C:/esp/esp-idf/components/soc/esp32/include/soc/rtc.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2f0
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF20
	.byte	0xc
	.4byte	.LASF21
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
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
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x3
	.byte	0x1a
	.4byte	0x4f
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x4
	.byte	0x2d
	.4byte	0x44
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
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.2byte	0x1f4
	.4byte	0xf5
	.uleb128 0x6
	.4byte	.LASF13
	.byte	0x5
	.2byte	0x1f5
	.4byte	0x64
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.4byte	.LASF14
	.byte	0x5
	.2byte	0x1f6
	.4byte	0x64
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.4byte	.LASF15
	.byte	0x5
	.2byte	0x1f7
	.4byte	0x64
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.4byte	.LASF16
	.byte	0x5
	.2byte	0x1f8
	.4byte	0x64
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0x5
	.2byte	0x1f9
	.4byte	0x64
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x6
	.4byte	.LASF18
	.byte	0x5
	.2byte	0x1fa
	.4byte	0x64
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x5
	.2byte	0x1fb
	.4byte	0x8b
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x2
	.byte	0x61
	.4byte	0x64
	.byte	0x3
	.4byte	0x128
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x2
	.byte	0x61
	.4byte	0x64
	.uleb128 0xa
	.string	"val"
	.byte	0x2
	.byte	0x63
	.4byte	0x64
	.byte	0
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x1
	.byte	0x17
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xc
	.string	"cfg"
	.byte	0x1
	.byte	0x17
	.4byte	0xf5
	.4byte	.LLST0
	.uleb128 0xd
	.4byte	0x101
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.byte	0x1
	.byte	0x29
	.4byte	0x178
	.uleb128 0xe
	.4byte	0x111
	.4byte	.LLST1
	.uleb128 0xf
	.4byte	.LBB21
	.4byte	.LBE21-.LBB21
	.uleb128 0x10
	.4byte	0x11c
	.4byte	.LLST2
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	0x101
	.4byte	.LBB22
	.4byte	.LBE22-.LBB22
	.byte	0x1
	.byte	0x2a
	.4byte	0x1a8
	.uleb128 0xe
	.4byte	0x111
	.4byte	.LLST3
	.uleb128 0xf
	.4byte	.LBB23
	.4byte	.LBE23-.LBB23
	.uleb128 0x10
	.4byte	0x11c
	.4byte	.LLST4
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	0x101
	.4byte	.LBB24
	.4byte	.LBE24-.LBB24
	.byte	0x1
	.byte	0x2c
	.4byte	0x1d8
	.uleb128 0xe
	.4byte	0x111
	.4byte	.LLST5
	.uleb128 0xf
	.4byte	.LBB25
	.4byte	.LBE25-.LBB25
	.uleb128 0x10
	.4byte	0x11c
	.4byte	.LLST6
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	0x101
	.4byte	.LBB26
	.4byte	.LBE26-.LBB26
	.byte	0x1
	.byte	0x2d
	.4byte	0x208
	.uleb128 0xe
	.4byte	0x111
	.4byte	.LLST7
	.uleb128 0xf
	.4byte	.LBB27
	.4byte	.LBE27-.LBB27
	.uleb128 0x10
	.4byte	0x11c
	.4byte	.LLST8
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	0x101
	.4byte	.LBB28
	.4byte	.LBE28-.LBB28
	.byte	0x1
	.byte	0x2e
	.4byte	0x238
	.uleb128 0xe
	.4byte	0x111
	.4byte	.LLST9
	.uleb128 0xf
	.4byte	.LBB29
	.4byte	.LBE29-.LBB29
	.uleb128 0x10
	.4byte	0x11c
	.4byte	.LLST10
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	0x101
	.4byte	.LBB30
	.4byte	.LBE30-.LBB30
	.byte	0x1
	.byte	0x30
	.4byte	0x266
	.uleb128 0xe
	.4byte	0x111
	.4byte	.LLST11
	.uleb128 0xf
	.4byte	.LBB31
	.4byte	.LBE31-.LBB31
	.uleb128 0x11
	.4byte	0x11c
	.uleb128 0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	0x101
	.4byte	.LBB32
	.4byte	.LBE32-.LBB32
	.byte	0x1
	.byte	0x31
	.4byte	0x296
	.uleb128 0xe
	.4byte	0x111
	.4byte	.LLST12
	.uleb128 0xf
	.4byte	.LBB33
	.4byte	.LBE33-.LBB33
	.uleb128 0x10
	.4byte	0x11c
	.4byte	.LLST13
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	0x101
	.4byte	.LBB34
	.4byte	.LBE34-.LBB34
	.byte	0x1
	.byte	0x33
	.4byte	0x2c6
	.uleb128 0xe
	.4byte	0x111
	.4byte	.LLST14
	.uleb128 0xf
	.4byte	.LBB35
	.4byte	.LBE35-.LBB35
	.uleb128 0x10
	.4byte	0x11c
	.4byte	.LLST15
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	0x101
	.4byte	.LBB36
	.4byte	.LBE36-.LBB36
	.byte	0x1
	.byte	0x34
	.uleb128 0xe
	.4byte	0x111
	.4byte	.LLST16
	.uleb128 0xf
	.4byte	.LBB37
	.4byte	.LBE37-.LBB37
	.uleb128 0x10
	.4byte	0x11c
	.4byte	.LLST17
	.byte	0
	.byte	0
	.byte	0
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
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL25
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL21
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff00044
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL4
	.4byte	.LVL21
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff0005c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL6
	.4byte	.LVL21
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff00094
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL8
	.4byte	.LVL21
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff00094
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL10
	.4byte	.LVL21
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff00094
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL13
	.4byte	.LVL21
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff000a0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL14
	.4byte	.LVL21
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff000a4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL17
	.4byte	.LVL21
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff000ac
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL18
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff000ac
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x5a
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
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF5:
	.string	"long long int"
.LASF4:
	.string	"unsigned int"
.LASF24:
	.string	"rtc_init"
.LASF7:
	.string	"__uint32_t"
.LASF20:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF18:
	.string	"rtc_dboost_fpd"
.LASF11:
	.string	"long unsigned int"
.LASF15:
	.string	"pll_wait"
.LASF6:
	.string	"long long unsigned int"
.LASF16:
	.string	"clkctl_init"
.LASF23:
	.string	"addr"
.LASF13:
	.string	"ck8m_wait"
.LASF1:
	.string	"unsigned char"
.LASF12:
	.string	"char"
.LASF8:
	.string	"uint32_t"
.LASF9:
	.string	"long int"
.LASF17:
	.string	"pwrctl_init"
.LASF21:
	.string	"C:/esp/esp-idf/components/soc/esp32/rtc_init.c"
.LASF3:
	.string	"short unsigned int"
.LASF0:
	.string	"signed char"
.LASF22:
	.string	"DPORT_READ_PERI_REG"
.LASF19:
	.string	"rtc_config_t"
.LASF14:
	.string	"xtal_wait"
.LASF2:
	.string	"short int"
.LASF10:
	.string	"sizetype"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-61-gab8375a) 5.2.0"
