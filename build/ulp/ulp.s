	.file	"ulp.c"
	.text
.Ltext0:
	.section	.text.ulp_run,"ax",@progbits
	.literal_position
	.literal .LC0, 1072988184
	.literal .LC1, -16777217
	.literal .LC2, 1072990252
	.literal .LC3, -4192257
	.literal .LC4, 1072988204
	.literal .LC5, -65281
	.literal .LC6, 1072988160
	.literal .LC7, 131072
	.literal .LC8, 1048576
	.literal .LC9, 16384
	.literal .LC10, 16777216
	.align	4
	.global	ulp_run
	.type	ulp_run, @function
ulp_run:
.LFB1:
	.file 1 "C:/esp/esp-idf/components/ulp/ulp.c"
	.loc 1 45 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 47 0
	l32r	a3, .LC0
	memw
	l32i.n	a9, a3, 0
	l32r	a8, .LC1
	and	a8, a9, a8
	memw
	s32i.n	a8, a3, 0
	.loc 1 49 0
	movi.n	a10, 0xa
	call8	ets_delay_us
.LVL1:
	.loc 1 51 0
	l32r	a8, .LC2
	memw
	l32i.n	a10, a8, 0
	l32r	a9, .LC3
	and	a9, a10, a9
	extui	a2, a2, 0, 11
.LVL2:
	slli	a2, a2, 11
	or	a2, a9, a2
	memw
	s32i.n	a2, a8, 0
	.loc 1 53 0
	memw
	l32i.n	a9, a8, 0
	movi	a2, -0x101
	and	a2, a9, a2
	memw
	s32i.n	a2, a8, 0
	.loc 1 55 0
	l32r	a9, .LC4
	memw
	l32i.n	a8, a9, 0
	l32r	a2, .LC5
	and	a8, a8, a2
	movi	a2, 0x200
	or	a2, a8, a2
	memw
	s32i.n	a2, a9, 0
	.loc 1 57 0
	l32r	a2, .LC6
	memw
	l32i.n	a9, a2, 0
	l32r	a8, .LC7
	or	a8, a9, a8
	memw
	s32i.n	a8, a2, 0
	.loc 1 58 0
	memw
	l32i.n	a9, a2, 0
	l32r	a8, .LC8
	or	a8, a9, a8
	memw
	s32i.n	a8, a2, 0
	.loc 1 59 0
	memw
	l32i.n	a9, a2, 0
	l32r	a8, .LC9
	or	a8, a9, a8
	memw
	s32i.n	a8, a2, 0
	.loc 1 61 0
	memw
	l32i.n	a8, a3, 0
	l32r	a2, .LC10
	or	a2, a8, a2
	memw
	s32i.n	a2, a3, 0
	.loc 1 63 0
	movi.n	a2, 0
	retw.n
.LFE1:
	.size	ulp_run, .-ulp_run
	.section	.text.ulp_load_binary,"ax",@progbits
	.literal_position
	.literal .LC11, 7367797
	.literal .LC12, 1342177280
	.align	4
	.global	ulp_load_binary
	.type	ulp_load_binary, @function
ulp_load_binary:
.LFB2:
	.loc 1 66 0
.LVL3:
	entry	sp, 48
.LCFI1:
	.loc 1 67 0
	slli	a4, a4, 2
.LVL4:
	.loc 1 68 0
	slli	a2, a2, 2
.LVL5:
	.loc 1 70 0
	movi.n	a8, 0xb
	bgeu	a8, a4, .L4
	.loc 1 73 0
	bnez.n	a2, .L5
	.loc 1 76 0
	add.n	a8, a4, a2
	bnez.n	a8, .L6
	.loc 1 82 0
	movi.n	a12, 0xc
	mov.n	a11, a3
	mov.n	a10, sp
	call8	memcpy
.LVL6:
	.loc 1 84 0
	l32r	a8, .LC11
	l32i.n	a9, sp, 0
	bne	a9, a8, .L7
	.loc 1 88 0
	l16ui	a11, sp, 4
	l16ui	a10, sp, 6
	add.n	a9, a11, a10
	.loc 1 89 0
	l16ui	a8, sp, 8
	.loc 1 88 0
	add.n	a9, a9, a8
.LVL7:
	.loc 1 95 0
	bne	a4, a9, .L8
	.loc 1 99 0
	add.n	a4, a10, a8
.LVL8:
	.loc 1 102 0
	l32r	a5, .LC12
	mov.n	a12, a4
	add.n	a11, a3, a11
	add.n	a10, a2, a5
	call8	memcpy
.LVL9:
	.loc 1 103 0
	add.n	a10, a2, a4
	l16ui	a12, sp, 10
	movi.n	a11, 0
	add.n	a10, a10, a5
	call8	memset
.LVL10:
	.loc 1 105 0
	retw.n
.LVL11:
.L4:
	.loc 1 71 0
	movi	a2, 0x104
.LVL12:
	retw.n
.LVL13:
.L5:
	.loc 1 74 0
	movi	a2, 0x102
.LVL14:
	retw.n
.LVL15:
.L6:
	.loc 1 77 0
	movi	a2, 0x104
.LVL16:
	retw.n
.LVL17:
.L7:
	.loc 1 85 0
	movi	a2, 0x106
.LVL18:
	retw.n
.LVL19:
.L8:
	.loc 1 96 0
	movi	a2, 0x104
.LVL20:
	.loc 1 106 0
	retw.n
.LFE2:
	.size	ulp_load_binary, .-ulp_load_binary
	.global	__udivdi3
	.section	.text.ulp_set_wakeup_period,"ax",@progbits
	.literal_position
	.literal .LC13, 268247558
	.align	4
	.global	ulp_set_wakeup_period
	.type	ulp_set_wakeup_period, @function
ulp_set_wakeup_period:
.LFB3:
	.loc 1 109 0
.LVL21:
	entry	sp, 32
.LCFI2:
	.loc 1 110 0
	bgeui	a2, 5, .L11
	.loc 1 113 0
	movi.n	a4, 0
.LVL22:
	.loc 1 114 0
	srli	a5, a3, 13
	slli	a3, a3, 19
.LVL23:
	call8	esp_clk_slowclk_cal_get
.LVL24:
	mov.n	a12, a10
	mov.n	a13, a4
	mov.n	a10, a3
	mov.n	a11, a5
	call8	__udivdi3
.LVL25:
	.loc 1 115 0
	l32r	a3, .LC13
	add.n	a2, a2, a3
.LVL26:
	slli	a2, a2, 2
.LVL27:
	memw
	l32i.n	a3, a2, 0
	memw
	s32i.n	a10, a2, 0
	.loc 1 117 0
	mov.n	a2, a4
	retw.n
.LVL28:
.L11:
	.loc 1 111 0
	movi	a2, 0x102
.LVL29:
	.loc 1 118 0
	retw.n
.LFE3:
	.size	ulp_set_wakeup_period, .-ulp_set_wakeup_period
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
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x4
	.4byte	.LCFI0-.LFB1
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI1-.LFB2
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI2-.LFB3
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
	.text
.Letext0:
	.file 2 "C:/esp/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 4 "C:/esp/esp-idf/components/newlib/include/stdint.h"
	.file 5 "C:/esp/esp-idf/components/esp32/include/esp_err.h"
	.file 6 "C:/esp/esp-idf/components/log/include/esp_log.h"
	.file 7 "C:/esp/esp-idf/components/esp32/include/rom/ets_sys.h"
	.file 8 "C:/esp/esp-idf/components/esp32/include/esp_clk.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x36d
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF56
	.byte	0xc
	.4byte	.LASF57
	.4byte	.LASF58
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x2
	.byte	0x12
	.4byte	0x37
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x2
	.byte	0x16
	.4byte	0x50
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x19
	.4byte	0x62
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0x1a
	.4byte	0x74
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x2
	.byte	0x1e
	.4byte	0x8d
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0xd8
	.4byte	0x74
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF13
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF16
	.uleb128 0x5
	.byte	0x4
	.4byte	0xc1
	.uleb128 0x6
	.4byte	0xb4
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x4
	.byte	0x15
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x4
	.byte	0x21
	.4byte	0x45
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x4
	.byte	0x2c
	.4byte	0x57
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x4
	.byte	0x2d
	.4byte	0x69
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x4
	.byte	0x39
	.4byte	0x82
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x5
	.byte	0x18
	.4byte	0xdc
	.uleb128 0x7
	.byte	0x4
	.4byte	0x74
	.byte	0x6
	.byte	0x1f
	.4byte	0x139
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF25
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF26
	.byte	0x3
	.uleb128 0x8
	.4byte	.LASF27
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF28
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0x6
	.byte	0x26
	.4byte	0x108
	.uleb128 0x9
	.byte	0xc
	.byte	0x1
	.byte	0x20
	.4byte	0x189
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0x1
	.byte	0x21
	.4byte	0xe7
	.byte	0
	.uleb128 0xa
	.4byte	.LASF31
	.byte	0x1
	.byte	0x22
	.4byte	0xd1
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF32
	.byte	0x1
	.byte	0x23
	.4byte	0xd1
	.byte	0x6
	.uleb128 0xa
	.4byte	.LASF33
	.byte	0x1
	.byte	0x24
	.4byte	0xd1
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF34
	.byte	0x1
	.byte	0x25
	.4byte	0xd1
	.byte	0xa
	.byte	0
	.uleb128 0x3
	.4byte	.LASF35
	.byte	0x1
	.byte	0x26
	.4byte	0x144
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0x1
	.byte	0x2c
	.4byte	0xfd
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1cc
	.uleb128 0xc
	.4byte	.LASF38
	.byte	0x1
	.byte	0x2c
	.4byte	0xe7
	.4byte	.LLST0
	.uleb128 0xd
	.4byte	.LVL1
	.4byte	0x33f
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x1
	.byte	0x41
	.4byte	0xfd
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2c1
	.uleb128 0xc
	.4byte	.LASF39
	.byte	0x1
	.byte	0x41
	.4byte	0xe7
	.4byte	.LLST1
	.uleb128 0xf
	.4byte	.LASF40
	.byte	0x1
	.byte	0x41
	.4byte	0x2c1
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xc
	.4byte	.LASF41
	.byte	0x1
	.byte	0x41
	.4byte	0x94
	.4byte	.LLST2
	.uleb128 0x10
	.4byte	.LASF42
	.byte	0x1
	.byte	0x43
	.4byte	0x94
	.4byte	.LLST3
	.uleb128 0x10
	.4byte	.LASF43
	.byte	0x1
	.byte	0x44
	.4byte	0x94
	.4byte	.LLST4
	.uleb128 0x11
	.4byte	.LASF44
	.byte	0x1
	.byte	0x51
	.4byte	0x189
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x10
	.4byte	.LASF45
	.byte	0x1
	.byte	0x58
	.4byte	0x94
	.4byte	.LLST5
	.uleb128 0x10
	.4byte	.LASF46
	.byte	0x1
	.byte	0x63
	.4byte	0x94
	.4byte	.LLST6
	.uleb128 0x10
	.4byte	.LASF47
	.byte	0x1
	.byte	0x64
	.4byte	0x2cc
	.4byte	.LLST7
	.uleb128 0x12
	.4byte	.LVL6
	.4byte	0x34b
	.4byte	0x288
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.uleb128 0x12
	.4byte	.LVL9
	.4byte	0x34b
	.4byte	0x2a5
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x72
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0xd
	.4byte	.LVL10
	.4byte	0x354
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x8
	.byte	0x72
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x2c7
	.uleb128 0x6
	.4byte	0xc6
	.uleb128 0x5
	.byte	0x4
	.4byte	0xc6
	.uleb128 0x13
	.4byte	.LASF48
	.byte	0x1
	.byte	0x6c
	.4byte	0xfd
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x32d
	.uleb128 0xc
	.4byte	.LASF49
	.byte	0x1
	.byte	0x6c
	.4byte	0x94
	.4byte	.LLST8
	.uleb128 0xc
	.4byte	.LASF50
	.byte	0x1
	.byte	0x6c
	.4byte	0xe7
	.4byte	.LLST9
	.uleb128 0x10
	.4byte	.LASF51
	.byte	0x1
	.byte	0x71
	.4byte	0xf2
	.4byte	.LLST10
	.uleb128 0x14
	.4byte	.LASF59
	.byte	0x1
	.byte	0x72
	.4byte	0xf2
	.uleb128 0x15
	.4byte	.LVL24
	.4byte	0x35d
	.byte	0
	.uleb128 0x16
	.string	"TAG"
	.byte	0x1
	.byte	0x2a
	.4byte	0xbb
	.uleb128 0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+872
	.sleb128 0
	.uleb128 0x17
	.4byte	.LASF54
	.4byte	.LASF54
	.byte	0x7
	.2byte	0x176
	.uleb128 0x18
	.4byte	.LASF52
	.4byte	.LASF52
	.uleb128 0x18
	.4byte	.LASF53
	.4byte	.LASF53
	.uleb128 0x19
	.4byte	.LASF55
	.4byte	.LASF55
	.byte	0x8
	.byte	0x2b
	.uleb128 0x1a
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x4
	.byte	0x75
	.byte	0x6c
	.byte	0x70
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
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
	.uleb128 0x17
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
	.uleb128 0x1
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
	.uleb128 0x49
	.uleb128 0x13
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
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x5
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
	.uleb128 0x36
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL2
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
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL5
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL4
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL4
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL8
	.4byte	.LVL11
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x32
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL5
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x32
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x32
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x32
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x32
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL20
	.4byte	.LFE2
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x32
	.byte	0x24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL7
	.4byte	.LVL9-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL19
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL8
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL8
	.4byte	.LVL11
	.2byte	0x4
	.byte	0x44
	.byte	0x4a
	.byte	0x24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL21
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x7
	.byte	0x72
	.sleb128 -268247558
	.byte	0x9f
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
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL23
	.4byte	.LVL28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x6
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
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
.LASF32:
	.string	"text_size"
.LASF40:
	.string	"program_binary"
.LASF29:
	.string	"esp_log_level_t"
.LASF44:
	.string	"header"
.LASF12:
	.string	"size_t"
.LASF3:
	.string	"__uint8_t"
.LASF25:
	.string	"ESP_LOG_WARN"
.LASF50:
	.string	"period_us"
.LASF54:
	.string	"ets_delay_us"
.LASF6:
	.string	"__int32_t"
.LASF31:
	.string	"text_offset"
.LASF38:
	.string	"entry_point"
.LASF33:
	.string	"data_size"
.LASF21:
	.string	"uint64_t"
.LASF36:
	.string	"ulp_run"
.LASF27:
	.string	"ESP_LOG_DEBUG"
.LASF51:
	.string	"period_us_64"
.LASF45:
	.string	"total_size"
.LASF1:
	.string	"unsigned char"
.LASF49:
	.string	"period_index"
.LASF46:
	.string	"text_data_size"
.LASF42:
	.string	"program_size_bytes"
.LASF47:
	.string	"base"
.LASF5:
	.string	"short unsigned int"
.LASF59:
	.string	"period_cycles"
.LASF53:
	.string	"memset"
.LASF4:
	.string	"__uint16_t"
.LASF15:
	.string	"long unsigned int"
.LASF22:
	.string	"esp_err_t"
.LASF7:
	.string	"__uint32_t"
.LASF24:
	.string	"ESP_LOG_ERROR"
.LASF26:
	.string	"ESP_LOG_INFO"
.LASF8:
	.string	"unsigned int"
.LASF58:
	.string	"C:\\\\esp\\\\ArkPOS2-esp\\\\build\\\\ulp"
.LASF11:
	.string	"long long unsigned int"
.LASF17:
	.string	"uint8_t"
.LASF57:
	.string	"C:/esp/esp-idf/components/ulp/ulp.c"
.LASF34:
	.string	"bss_size"
.LASF19:
	.string	"int32_t"
.LASF56:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF35:
	.string	"ulp_binary_header_t"
.LASF14:
	.string	"sizetype"
.LASF9:
	.string	"long long int"
.LASF23:
	.string	"ESP_LOG_NONE"
.LASF16:
	.string	"char"
.LASF43:
	.string	"load_addr_bytes"
.LASF52:
	.string	"memcpy"
.LASF2:
	.string	"short int"
.LASF48:
	.string	"ulp_set_wakeup_period"
.LASF41:
	.string	"program_size"
.LASF18:
	.string	"uint16_t"
.LASF20:
	.string	"uint32_t"
.LASF13:
	.string	"long int"
.LASF10:
	.string	"__uint64_t"
.LASF55:
	.string	"esp_clk_slowclk_cal_get"
.LASF39:
	.string	"load_addr"
.LASF0:
	.string	"signed char"
.LASF30:
	.string	"magic"
.LASF37:
	.string	"ulp_load_binary"
.LASF28:
	.string	"ESP_LOG_VERBOSE"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-61-gab8375a) 5.2.0"
