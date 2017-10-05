	.file	"rtc_time.c"
	.text
.Ltext0:
	.global	__udivdi3
	.section	.text.rtc_clk_cal_internal,"ax",@progbits
	.literal_position
	.literal .LC0, 32768
	.literal .LC1, 33203
	.literal .LC2, 150000
	.literal .LC3, 1072988272
	.literal .LC4, 1073082472
	.literal .LC5, -24577
	.literal .LC6, -4097
	.literal .LC7, -2147418113
	.literal .LC8, 1000000
	.literal .LC9, 2147483647
	.literal .LC10, -2147483648
	.literal .LC11, 1073082476
	.align	4
	.type	rtc_clk_cal_internal, @function
rtc_clk_cal_internal:
.LFB0:
	.file 1 "C:/esp/esp-idf/components/soc/esp32/rtc_time.c"
	.loc 1 42 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 44 0
	bnei	a2, 2, .L2
	.loc 1 45 0
	l32r	a9, .LC3
	memw
	l32i.n	a10, a9, 0
	movi	a8, 0x100
	or	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
.L2:
	.loc 1 47 0
	bnei	a2, 1, .L3
	.loc 1 48 0
	l32r	a9, .LC3
	memw
	l32i.n	a10, a9, 0
	movi	a8, 0x200
	or	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
.L3:
	.loc 1 51 0
	l32r	a8, .LC4
	memw
	l32i.n	a10, a8, 0
	l32r	a9, .LC5
	and	a10, a10, a9
	extui	a9, a2, 0, 2
	slli	a9, a9, 13
	or	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 52 0
	memw
	l32i.n	a10, a8, 0
	l32r	a9, .LC6
	and	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 53 0
	memw
	l32i.n	a10, a8, 0
	l32r	a9, .LC7
	and	a10, a10, a9
	extui	a9, a3, 0, 15
	slli	a9, a9, 16
	or	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 56 0
	l32r	a8, .LC3
	memw
	l32i.n	a8, a8, 0
	extui	a8, a8, 30, 2
.LVL1:
	.loc 1 57 0
	beqi	a2, 2, .L11
	.loc 1 58 0 discriminator 1
	movi.n	a12, 1
	movi.n	a10, 0
	mov.n	a9, a10
	moveqz	a9, a12, a2
	extui	a9, a9, 0, 8
	addi.n	a11, a8, -1
	moveqz	a10, a12, a11
	.loc 1 57 0 discriminator 1
	bany	a10, a9, .L12
	.loc 1 60 0
	beq	a2, a12, .L13
	.loc 1 61 0 discriminator 1
	addi	a8, a8, -2
.LVL2:
	movi.n	a10, 0
	moveqz	a10, a12, a8
	.loc 1 60 0 discriminator 1
	bnone	a10, a9, .L14
	.loc 1 62 0
	l32r	a12, .LC1
	j	.L4
.LVL3:
.L11:
	.loc 1 59 0
	l32r	a12, .LC0
	j	.L4
.L12:
	l32r	a12, .LC0
	j	.L4
.L13:
	.loc 1 62 0
	l32r	a12, .LC1
	j	.L4
.LVL4:
.L14:
	.loc 1 64 0
	l32r	a12, .LC2
.LVL5:
.L4:
	.loc 1 66 0
	l32r	a10, .LC8
	muluh	a11, a3, a10
	movi.n	a13, 0
	mull	a10, a3, a10
	call8	__udivdi3
.LVL6:
	mov.n	a3, a10
.LVL7:
	.loc 1 68 0
	l32r	a8, .LC4
	memw
	l32i.n	a10, a8, 0
	l32r	a9, .LC9
	and	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 69 0
	memw
	l32i.n	a10, a8, 0
	l32r	a9, .LC10
	or	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 74 0
	mov.n	a10, a3
	call8	ets_delay_us
.LVL8:
	.loc 1 77 0
	j	.L5
.LVL9:
.L7:
	.loc 1 79 0
	addi.n	a3, a3, -1
.LVL10:
	.loc 1 80 0
	movi.n	a10, 1
	call8	ets_delay_us
.LVL11:
.L5:
	.loc 1 77 0
	l32r	a8, .LC4
	memw
	l32i.n	a8, a8, 0
	bbsi	a8, 15, .L6
	.loc 1 77 0 is_stmt 0 discriminator 1
	bgei	a3, 1, .L7
.L6:
	.loc 1 82 0 is_stmt 1
	bnei	a2, 2, .L8
	.loc 1 83 0
	l32r	a9, .LC3
	memw
	l32i.n	a10, a9, 0
	movi	a8, -0x101
	and	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
.L8:
	.loc 1 85 0
	bnei	a2, 1, .L9
	.loc 1 86 0
	l32r	a8, .LC3
	memw
	l32i.n	a9, a8, 0
	movi	a2, -0x201
.LVL12:
	and	a2, a9, a2
	memw
	s32i.n	a2, a8, 0
.L9:
	.loc 1 88 0
	beqz.n	a3, .L15
	.loc 1 93 0
	l32r	a2, .LC11
	memw
	l32i.n	a2, a2, 0
	srli	a2, a2, 7
	retw.n
.L15:
	.loc 1 90 0
	movi.n	a2, 0
	.loc 1 94 0
	retw.n
.LFE0:
	.size	rtc_clk_cal_internal, .-rtc_clk_cal_internal
	.section	.text.rtc_clk_cal_ratio,"ax",@progbits
	.align	4
	.global	rtc_clk_cal_ratio
	.type	rtc_clk_cal_ratio, @function
rtc_clk_cal_ratio:
.LFB1:
	.loc 1 97 0
.LVL13:
	entry	sp, 32
.LCFI1:
	.loc 1 98 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	rtc_clk_cal_internal
.LVL14:
	mov.n	a11, a10
.LVL15:
	.loc 1 99 0
	mov.n	a12, a3
	movi.n	a13, 0
	slli	a10, a10, 19
.LVL16:
	srli	a11, a11, 13
.LVL17:
	call8	__udivdi3
.LVL18:
	.loc 1 102 0
	mov.n	a2, a10
.LVL19:
	retw.n
.LFE1:
	.size	rtc_clk_cal_ratio, .-rtc_clk_cal_ratio
	.section	.text.rtc_clk_cal,"ax",@progbits
	.literal_position
	.align	4
	.global	rtc_clk_cal
	.type	rtc_clk_cal, @function
rtc_clk_cal:
.LFB2:
	.loc 1 105 0
.LVL20:
	entry	sp, 32
.LCFI2:
	.loc 1 106 0
	call8	rtc_clk_xtal_freq_get
.LVL21:
	mov.n	a4, a10
.LVL22:
	.loc 1 107 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	rtc_clk_cal_internal
.LVL23:
	.loc 1 108 0
	mull	a12, a4, a3
	muluh	a13, a4, a3
.LVL24:
	.loc 1 109 0
	srli	a3, a10, 13
.LVL25:
	slli	a10, a10, 19
.LVL26:
	slli	a4, a13, 31
.LVL27:
	srli	a9, a12, 1
	or	a9, a4, a9
	srli	a14, a13, 1
	add.n	a9, a10, a9
	movi.n	a8, 1
	bltu	a9, a10, .L18
	movi.n	a8, 0
.L18:
	add.n	a14, a3, a14
	add.n	a8, a8, a14
	addi.n	a10, a9, -1
	movi.n	a11, 1
	bltu	a10, a9, .L19
	movi.n	a11, 0
.L19:
	addi.n	a8, a8, -1
	add.n	a11, a11, a8
	call8	__udivdi3
.LVL28:
	.loc 1 112 0
	mov.n	a2, a10
.LVL29:
	retw.n
.LFE2:
	.size	rtc_clk_cal, .-rtc_clk_cal
	.section	.text.rtc_time_us_to_slowclk,"ax",@progbits
	.align	4
	.global	rtc_time_us_to_slowclk
	.type	rtc_time_us_to_slowclk, @function
rtc_time_us_to_slowclk:
.LFB3:
	.loc 1 115 0
.LVL30:
	entry	sp, 32
.LCFI3:
	.loc 1 119 0
	srli	a11, a2, 13
	slli	a3, a3, 19
	mov.n	a12, a4
	movi.n	a13, 0
	slli	a10, a2, 19
	or	a11, a11, a3
	call8	__udivdi3
.LVL31:
	.loc 1 120 0
	mov.n	a2, a10
.LVL32:
	mov.n	a3, a11
	retw.n
.LFE3:
	.size	rtc_time_us_to_slowclk, .-rtc_time_us_to_slowclk
	.section	.text.rtc_time_slowclk_to_us,"ax",@progbits
	.align	4
	.global	rtc_time_slowclk_to_us
	.type	rtc_time_slowclk_to_us, @function
rtc_time_slowclk_to_us:
.LFB4:
	.loc 1 123 0
.LVL33:
	entry	sp, 32
.LCFI4:
	.loc 1 124 0
	mull	a3, a3, a4
	mull	a8, a4, a2
	muluh	a2, a4, a2
.LVL34:
	add.n	a3, a3, a2
	slli	a4, a3, 13
.LVL35:
	extui	a2, a8, 19, 13
	.loc 1 125 0
	or	a2, a4, a2
	extui	a3, a3, 19, 13
	retw.n
.LFE4:
	.size	rtc_time_slowclk_to_us, .-rtc_time_slowclk_to_us
	.section	.text.rtc_time_get,"ax",@progbits
	.literal_position
	.literal .LC13, 1072988172
	.literal .LC14, -2147483648
	.literal .LC16, 1072988232
	.literal .LC17, 1072988176
	.literal .LC18, 1072988180
	.align	4
	.global	rtc_time_get
	.type	rtc_time_get, @function
rtc_time_get:
.LFB5:
	.loc 1 128 0
	entry	sp, 32
.LCFI5:
	.loc 1 129 0
	l32r	a9, .LC13
	memw
	l32i.n	a2, a9, 0
	l32r	a8, .LC14
	or	a8, a2, a8
	memw
	s32i.n	a8, a9, 0
	.loc 1 130 0
	j	.L23
.L24:
	.loc 1 131 0
	movi.n	a10, 1
	call8	ets_delay_us
.LVL36:
.L23:
	.loc 1 130 0
	l32r	a8, .LC13
	memw
	l32i.n	a8, a8, 0
	bbci	a8, 30, .L24
	.loc 1 133 0
	l32r	a9, .LC16
	memw
	l32i.n	a2, a9, 0
	movi.n	a8, 0x10
	or	a8, a2, a8
	memw
	s32i.n	a8, a9, 0
	.loc 1 134 0
	l32r	a2, .LC17
	memw
	l32i.n	a2, a2, 0
.LVL37:
	.loc 1 135 0
	l32r	a3, .LC18
	memw
	l32i.n	a3, a3, 0
.LVL38:
	.loc 1 137 0
	retw.n
.LFE5:
	.size	rtc_time_get, .-rtc_time_get
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
	.text
.Letext0:
	.file 2 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\machine\\_default_types.h"
	.file 3 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\stdint.h"
	.file 4 "C:/esp/esp-idf/components/soc/esp32/include/soc/rtc.h"
	.file 5 "C:/esp/esp-idf/components/esp32/include/rom/ets_sys.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x35f
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
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x2
	.byte	0x1a
	.4byte	0x56
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x2
	.byte	0x1e
	.4byte	0x21
	.uleb128 0x4
	.4byte	.LASF9
	.byte	0x3
	.byte	0x2d
	.4byte	0x4b
	.uleb128 0x4
	.4byte	.LASF10
	.byte	0x3
	.byte	0x39
	.4byte	0x64
	.uleb128 0x5
	.byte	0x4
	.4byte	0x56
	.byte	0x4
	.byte	0x3c
	.4byte	0xaa
	.uleb128 0x6
	.4byte	.LASF11
	.byte	0
	.uleb128 0x6
	.4byte	.LASF12
	.byte	0x28
	.uleb128 0x6
	.4byte	.LASF13
	.byte	0x1a
	.uleb128 0x6
	.4byte	.LASF14
	.byte	0x18
	.byte	0
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x4
	.byte	0x41
	.4byte	0x85
	.uleb128 0x5
	.byte	0x4
	.4byte	0x56
	.byte	0x4
	.byte	0x51
	.4byte	0xd4
	.uleb128 0x6
	.4byte	.LASF16
	.byte	0
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF18
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x4
	.byte	0x55
	.4byte	0xb5
	.uleb128 0x5
	.byte	0x4
	.4byte	0x56
	.byte	0x4
	.byte	0x65
	.4byte	0xfe
	.uleb128 0x6
	.4byte	.LASF20
	.byte	0
	.uleb128 0x6
	.4byte	.LASF21
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF22
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0x4
	.byte	0x69
	.4byte	0xdf
	.uleb128 0x7
	.4byte	.LASF47
	.byte	0x1
	.byte	0x29
	.4byte	0x6f
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a0
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x1
	.byte	0x29
	.4byte	0xfe
	.4byte	.LLST0
	.uleb128 0x8
	.4byte	.LASF25
	.byte	0x1
	.byte	0x29
	.4byte	0x6f
	.4byte	.LLST1
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x1
	.byte	0x37
	.4byte	0x6f
	.4byte	.LLST2
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0x1
	.byte	0x38
	.4byte	0xd4
	.4byte	.LLST3
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0x1
	.byte	0x42
	.4byte	0x6f
	.4byte	.LLST4
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0x1
	.byte	0x4c
	.4byte	0x44
	.4byte	.LLST5
	.uleb128 0xa
	.4byte	.LVL8
	.4byte	0x34b
	.4byte	0x190
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0xc
	.4byte	.LVL11
	.4byte	0x34b
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF33
	.byte	0x1
	.byte	0x60
	.4byte	0x6f
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x20f
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x1
	.byte	0x60
	.4byte	0xfe
	.4byte	.LLST6
	.uleb128 0xe
	.4byte	.LASF25
	.byte	0x1
	.byte	0x60
	.4byte	0x6f
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xf
	.4byte	.LASF30
	.byte	0x1
	.byte	0x62
	.4byte	0x7a
	.uleb128 0xf
	.4byte	.LASF31
	.byte	0x1
	.byte	0x63
	.4byte	0x7a
	.uleb128 0x10
	.4byte	.LASF32
	.byte	0x1
	.byte	0x64
	.4byte	0x6f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0xc
	.4byte	.LVL14
	.4byte	0x109
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF34
	.byte	0x1
	.byte	0x68
	.4byte	0x6f
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2a7
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x1
	.byte	0x68
	.4byte	0xfe
	.4byte	.LLST7
	.uleb128 0x8
	.4byte	.LASF25
	.byte	0x1
	.byte	0x68
	.4byte	0x6f
	.4byte	.LLST8
	.uleb128 0x9
	.4byte	.LASF35
	.byte	0x1
	.byte	0x6a
	.4byte	0xaa
	.4byte	.LLST9
	.uleb128 0xf
	.4byte	.LASF30
	.byte	0x1
	.byte	0x6b
	.4byte	0x7a
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0x1
	.byte	0x6c
	.4byte	0x7a
	.4byte	.LLST10
	.uleb128 0xf
	.4byte	.LASF37
	.byte	0x1
	.byte	0x6d
	.4byte	0x7a
	.uleb128 0x10
	.4byte	.LASF38
	.byte	0x1
	.byte	0x6e
	.4byte	0x6f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x11
	.4byte	.LVL21
	.4byte	0x357
	.uleb128 0xc
	.4byte	.LVL23
	.4byte	0x109
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF39
	.byte	0x1
	.byte	0x72
	.4byte	0x7a
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2dd
	.uleb128 0x8
	.4byte	.LASF40
	.byte	0x1
	.byte	0x72
	.4byte	0x7a
	.4byte	.LLST11
	.uleb128 0xe
	.4byte	.LASF38
	.byte	0x1
	.byte	0x72
	.4byte	0x6f
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.uleb128 0x12
	.4byte	.LASF41
	.byte	0x1
	.byte	0x7a
	.4byte	0x7a
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x315
	.uleb128 0x8
	.4byte	.LASF42
	.byte	0x1
	.byte	0x7a
	.4byte	0x7a
	.4byte	.LLST12
	.uleb128 0x8
	.4byte	.LASF38
	.byte	0x1
	.byte	0x7a
	.4byte	0x6f
	.4byte	.LLST13
	.byte	0
	.uleb128 0x13
	.4byte	.LASF48
	.byte	0x1
	.byte	0x7f
	.4byte	0x7a
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x34b
	.uleb128 0x14
	.string	"t"
	.byte	0x1
	.byte	0x86
	.4byte	0x7a
	.4byte	.LLST14
	.uleb128 0xc
	.4byte	.LVL36
	.4byte	0x34b
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF43
	.4byte	.LASF43
	.byte	0x5
	.2byte	0x176
	.uleb128 0x16
	.4byte	.LASF44
	.4byte	.LASF44
	.byte	0x4
	.byte	0x9d
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0xe
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
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.4byte	.LVL0
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL12
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL7
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL5
	.4byte	.LVL6-1
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x3
	.byte	0x78
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x3
	.byte	0x78
	.sleb128 2
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL9
	.4byte	.LFE0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL13
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL19
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL20
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL29
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL20
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL25
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL22
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL24
	.4byte	.LVL28-1
	.2byte	0x6
	.byte	0x5c
	.byte	0x93
	.uleb128 0x4
	.byte	0x5d
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL30
	.4byte	.LVL32
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL32
	.4byte	.LFE3
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x21
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL34
	.4byte	.LFE4
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x21
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL33
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL35
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL38
	.4byte	.LFE5
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x44
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF19:
	.string	"rtc_slow_freq_t"
.LASF14:
	.string	"RTC_XTAL_FREQ_24M"
.LASF10:
	.string	"uint64_t"
.LASF3:
	.string	"short int"
.LASF46:
	.string	"C:/esp/esp-idf/components/soc/esp32/rtc_time.c"
.LASF44:
	.string	"rtc_clk_xtal_freq_get"
.LASF43:
	.string	"ets_delay_us"
.LASF28:
	.string	"us_time_estimate"
.LASF35:
	.string	"xtal_freq"
.LASF7:
	.string	"__uint32_t"
.LASF41:
	.string	"rtc_time_slowclk_to_us"
.LASF27:
	.string	"slow_freq"
.LASF45:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -ggdb -Og -Og -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF25:
	.string	"slowclk_cycles"
.LASF39:
	.string	"rtc_time_us_to_slowclk"
.LASF48:
	.string	"rtc_time_get"
.LASF6:
	.string	"long long int"
.LASF17:
	.string	"RTC_SLOW_FREQ_32K_XTAL"
.LASF24:
	.string	"cal_clk"
.LASF38:
	.string	"period"
.LASF34:
	.string	"rtc_clk_cal"
.LASF33:
	.string	"rtc_clk_cal_ratio"
.LASF26:
	.string	"expected_freq"
.LASF37:
	.string	"period_64"
.LASF15:
	.string	"rtc_xtal_freq_t"
.LASF2:
	.string	"unsigned char"
.LASF1:
	.string	"signed char"
.LASF0:
	.string	"long long unsigned int"
.LASF9:
	.string	"uint32_t"
.LASF5:
	.string	"unsigned int"
.LASF42:
	.string	"rtc_cycles"
.LASF13:
	.string	"RTC_XTAL_FREQ_26M"
.LASF4:
	.string	"short unsigned int"
.LASF30:
	.string	"xtal_cycles"
.LASF22:
	.string	"RTC_CAL_32K_XTAL"
.LASF8:
	.string	"__uint64_t"
.LASF32:
	.string	"ratio"
.LASF40:
	.string	"time_in_us"
.LASF12:
	.string	"RTC_XTAL_FREQ_40M"
.LASF20:
	.string	"RTC_CAL_RTC_MUX"
.LASF23:
	.string	"rtc_cal_sel_t"
.LASF16:
	.string	"RTC_SLOW_FREQ_RTC"
.LASF47:
	.string	"rtc_clk_cal_internal"
.LASF29:
	.string	"timeout_us"
.LASF31:
	.string	"ratio_64"
.LASF18:
	.string	"RTC_SLOW_FREQ_8MD256"
.LASF21:
	.string	"RTC_CAL_8MD256"
.LASF11:
	.string	"RTC_XTAL_FREQ_AUTO"
.LASF36:
	.string	"divider"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-73-ge28a011) 5.2.0"
