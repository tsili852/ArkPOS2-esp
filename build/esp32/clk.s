	.file	"clk.c"
	.text
.Ltext0:
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC2:
	.string	"clk"
	.align	4
.LC4:
	.string	"\033[0;33mW (%d) %s: still waiting for 32k oscillator to start up\033[0m\n"
	.section	.text.select_rtc_slow_clk,"ax",@progbits
	.literal_position
	.literal .LC1, -1431655765
	.literal .LC3, .LC2
	.literal .LC5, .LC4
	.align	4
	.type	select_rtc_slow_clk, @function
select_rtc_slow_clk:
.LFB5:
	.file 1 "C:/esp/esp-idf/components/esp32/clk.c"
	.loc 1 92 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 93 0
	bnei	a2, 1, .L2
.LBB24:
	.loc 1 101 0
	movi.n	a10, 1
	call8	rtc_clk_32k_enable
.LVL1:
	.loc 1 103 0
	movi.n	a3, 0
.LVL2:
.L4:
	.loc 1 108 0
	addi.n	a3, a3, 1
.LVL3:
	.loc 1 109 0
	movi.n	a11, 0x20
	movi.n	a10, 2
	call8	rtc_clk_cal
.LVL4:
	mov.n	a4, a10
.LVL5:
	.loc 1 110 0
	l32r	a8, .LC1
	muluh	a8, a3, a8
	srli	a8, a8, 10
	addx2	a8, a8, a8
	slli	a9, a8, 9
	bne	a3, a9, .L3
	.loc 1 111 0 discriminator 1
	call8	esp_log_timestamp
.LVL6:
	l32r	a12, .LC3
	mov.n	a11, a10
	l32r	a10, .LC5
	call8	ets_printf
.LVL7:
.L3:
	.loc 1 113 0
	beqz.n	a4, .L4
.LVL8:
.L2:
.LBE24:
	.loc 1 116 0
	mov.n	a10, a2
	call8	rtc_clk_slow_freq_set
.LVL9:
	.loc 1 122 0
	movi	a11, 0x400
	movi.n	a10, 0
	call8	rtc_clk_cal
.LVL10:
	.loc 1 128 0
	call8	esp_clk_slowclk_cal_set
.LVL11:
	retw.n
.LFE5:
	.size	select_rtc_slow_clk, .-select_rtc_slow_clk
	.section	.rodata
	.align	4
.LC0:
	.byte	20
	.byte	20
	.byte	20
	.byte	7
	.section	.text.esp_clk_init,"ax",@progbits
	.literal_position
	.literal .LC6, .LC0
	.literal .LC7, 1072955420
	.align	4
	.global	esp_clk_init
	.type	esp_clk_init, @function
esp_clk_init:
.LFB3:
	.loc 1 49 0
	entry	sp, 32
.LCFI1:
	.loc 1 51 0
	l32r	a8, .LC6
	l32i.n	a10, a8, 0
	call8	rtc_init
.LVL12:
	.loc 1 52 0
	movi.n	a10, 1
	call8	rtc_clk_fast_freq_set
.LVL13:
	.loc 1 57 0
	movi.n	a10, 0
	call8	select_rtc_slow_clk
.LVL14:
.L6:
.LBB25:
.LBB26:
	.file 2 "C:/esp/esp-idf/components/esp32/include/rom/uart.h"
	.loc 2 271 0
	l32r	a8, .LC7
	memw
	l32i.n	a8, a8, 0
	extui	a8, a8, 24, 4
	bnez.n	a8, .L6
.LBE26:
.LBE25:
	.loc 1 80 0
	movi.n	a10, 3
	call8	rtc_clk_cpu_freq_set
.LVL15:
	retw.n
.LFE3:
	.size	esp_clk_init, .-esp_clk_init
	.section	.iram1,"ax",@progbits
	.literal_position
	.literal .LC8, g_ticks_per_us_pro
	.literal .LC9, g_ticks_per_us_app
	.align	4
	.global	ets_update_cpu_frequency
	.type	ets_update_cpu_frequency, @function
ets_update_cpu_frequency:
.LFB4:
	.loc 1 84 0
.LVL16:
	entry	sp, 32
.LCFI2:
	.loc 1 87 0
	l32r	a8, .LC8
	s32i.n	a2, a8, 0
	.loc 1 88 0
	l32r	a8, .LC9
	s32i.n	a2, a8, 0
	retw.n
.LFE4:
	.size	ets_update_cpu_frequency, .-ets_update_cpu_frequency
	.section	.text.esp_perip_clk_init,"ax",@progbits
	.literal_position
	.literal .LC10, 229375
	.literal .LC11, 117415928
	.literal .LC12, 1072693440
	.literal .LC13, 1072693276
	.literal .LC14, 1072693452
	.literal .LC15, 1073017004
	.literal .LC16, 2097152
	.literal .LC17, 1073139884
	.literal .LC18, 1072693444
	.literal .LC19, 1072693280
	.align	4
	.global	esp_perip_clk_init
	.type	esp_perip_clk_init, @function
esp_perip_clk_init:
.LFB6:
	.loc 1 138 0
	entry	sp, 32
.LCFI3:
.LVL17:
	.loc 1 147 0
	movi.n	a10, 0
	call8	rtc_get_reset_reason
.LVL18:
	.loc 1 156 0
	addi	a10, a10, -11
	bgeui	a10, 3, .L10
.LVL19:
.LBB27:
.LBB28:
	.file 3 "C:/esp/esp-idf/components/soc/esp32/include/soc/dport_access.h"
	.loc 3 102 0
	l32r	a8, .LC12
	memw
	l32i.n	a10, a8, 0
.LVL20:
.LBE28:
.LBE27:
	.loc 1 161 0
	movi.n	a8, -1
	xor	a10, a8, a10
.LVL21:
.LBB29:
.LBB30:
	.loc 3 102 0
	l32r	a9, .LC13
	memw
	l32i.n	a9, a9, 0
.LVL22:
.LBE30:
.LBE29:
	.loc 1 162 0
	xor	a9, a8, a9
.LVL23:
.LBB31:
.LBB32:
	.loc 3 102 0
	l32r	a11, .LC14
	memw
	l32i.n	a11, a11, 0
.LVL24:
.LBE32:
.LBE31:
	.loc 1 163 0
	xor	a11, a8, a11
.LVL25:
	j	.L9
.LVL26:
.L10:
	.loc 1 194 0
	l32r	a11, .LC10
	.loc 1 190 0
	movi.n	a9, 0xf
	.loc 1 166 0
	l32r	a10, .LC11
.LVL27:
.L9:
.LBB33:
.LBB34:
	.loc 3 102 0
	l32r	a13, .LC15
	memw
	l32i.n	a12, a13, 0
.LVL28:
.LBE34:
.LBE33:
	.loc 1 206 0
	l32r	a8, .LC16
	or	a12, a12, a8
.LVL29:
	memw
	s32i.n	a12, a13, 0
.LVL30:
.LBB35:
.LBB36:
	.loc 3 102 0
	l32r	a12, .LC17
	memw
	l32i.n	a13, a12, 0
.LVL31:
.LBE36:
.LBE35:
	.loc 1 207 0
	or	a8, a13, a8
	memw
	s32i.n	a8, a12, 0
.LVL32:
.LBB37:
.LBB38:
	.loc 3 102 0
	l32r	a13, .LC12
.LVL33:
	memw
	l32i.n	a12, a13, 0
.LVL34:
.LBE38:
.LBE37:
	.loc 1 210 0
	movi.n	a8, -1
	xor	a14, a8, a10
	and	a12, a14, a12
.LVL35:
	memw
	s32i.n	a12, a13, 0
.LVL36:
.LBB39:
.LBB40:
	.loc 3 102 0
	l32r	a13, .LC18
	memw
	l32i.n	a12, a13, 0
.LVL37:
.LBE40:
.LBE39:
	.loc 1 211 0
	or	a10, a10, a12
.LVL38:
	memw
	s32i.n	a10, a13, 0
.LVL39:
.LBB41:
.LBB42:
	.loc 3 102 0
	l32r	a12, .LC13
.LVL40:
	memw
	l32i.n	a10, a12, 0
.LVL41:
.LBE42:
.LBE41:
	.loc 1 214 0
	xor	a13, a8, a9
	and	a10, a13, a10
.LVL42:
	memw
	s32i.n	a10, a12, 0
.LVL43:
.LBB43:
.LBB44:
	.loc 3 102 0
	l32r	a12, .LC19
	memw
	l32i.n	a10, a12, 0
.LVL44:
.LBE44:
.LBE43:
	.loc 1 215 0
	or	a9, a9, a10
.LVL45:
	memw
	s32i.n	a9, a12, 0
.LVL46:
.LBB45:
.LBB46:
	.loc 3 102 0
	l32r	a10, .LC14
.LVL47:
	memw
	l32i.n	a9, a10, 0
.LVL48:
.LBE46:
.LBE45:
	.loc 1 218 0
	xor	a8, a8, a11
	and	a8, a8, a9
	memw
	s32i.n	a8, a10, 0
	retw.n
.LFE6:
	.size	esp_perip_clk_init, .-esp_perip_clk_init
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
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI0-.LFB5
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
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI3-.LFB6
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
	.text
.Letext0:
	.file 4 "C:/esp/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 5 "C:/esp/esp-idf/components/newlib/include/stdint.h"
	.file 6 "C:/esp/esp-idf/components/log/include/esp_log.h"
	.file 7 "C:/esp/esp-idf/components/esp32/include/rom/rtc.h"
	.file 8 "C:/esp/esp-idf/components/soc/esp32/include/soc/rtc.h"
	.file 9 "C:/esp/esp-idf/components/esp32/include/rom/ets_sys.h"
	.file 10 "C:/esp/esp-idf/components/esp32/include/esp_clk.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x75d
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF89
	.byte	0xc
	.4byte	.LASF90
	.4byte	.LASF91
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x4
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
	.byte	0x4
	.byte	0x1a
	.4byte	0x5e
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
	.byte	0x5
	.byte	0x15
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x5
	.byte	0x2d
	.4byte	0x53
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0x5
	.byte	0x4
	.4byte	0xab
	.uleb128 0x6
	.4byte	0x9e
	.uleb128 0x7
	.byte	0x4
	.4byte	0x5e
	.byte	0x6
	.byte	0x1f
	.4byte	0xe1
	.uleb128 0x8
	.4byte	.LASF15
	.byte	0
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x3
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x6
	.byte	0x26
	.4byte	0xb0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x5e
	.byte	0x7
	.byte	0x50
	.4byte	0x159
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x3
	.uleb128 0x8
	.4byte	.LASF25
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF26
	.byte	0x5
	.uleb128 0x8
	.4byte	.LASF27
	.byte	0x6
	.uleb128 0x8
	.4byte	.LASF28
	.byte	0x7
	.uleb128 0x8
	.4byte	.LASF29
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF30
	.byte	0x9
	.uleb128 0x8
	.4byte	.LASF31
	.byte	0xa
	.uleb128 0x8
	.4byte	.LASF32
	.byte	0xb
	.uleb128 0x8
	.4byte	.LASF33
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF34
	.byte	0xd
	.uleb128 0x8
	.4byte	.LASF35
	.byte	0xe
	.uleb128 0x8
	.4byte	.LASF36
	.byte	0xf
	.uleb128 0x8
	.4byte	.LASF37
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.4byte	.LASF38
	.byte	0x7
	.byte	0x61
	.4byte	0xec
	.uleb128 0x7
	.byte	0x4
	.4byte	0x5e
	.byte	0x8
	.byte	0x46
	.4byte	0x18f
	.uleb128 0x8
	.4byte	.LASF39
	.byte	0
	.uleb128 0x8
	.4byte	.LASF40
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF41
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF42
	.byte	0x3
	.uleb128 0x8
	.4byte	.LASF43
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF44
	.byte	0x8
	.byte	0x4c
	.4byte	0x164
	.uleb128 0x7
	.byte	0x4
	.4byte	0x5e
	.byte	0x8
	.byte	0x51
	.4byte	0x1b9
	.uleb128 0x8
	.4byte	.LASF45
	.byte	0
	.uleb128 0x8
	.4byte	.LASF46
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF47
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF48
	.byte	0x8
	.byte	0x55
	.4byte	0x19a
	.uleb128 0x7
	.byte	0x4
	.4byte	0x5e
	.byte	0x8
	.byte	0x5a
	.4byte	0x1dd
	.uleb128 0x8
	.4byte	.LASF49
	.byte	0
	.uleb128 0x8
	.4byte	.LASF50
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x5e
	.byte	0x8
	.byte	0x65
	.4byte	0x1fc
	.uleb128 0x8
	.4byte	.LASF51
	.byte	0
	.uleb128 0x8
	.4byte	.LASF52
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF53
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.byte	0x8
	.2byte	0x1f4
	.4byte	0x266
	.uleb128 0xa
	.4byte	.LASF54
	.byte	0x8
	.2byte	0x1f5
	.4byte	0x7e
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xa
	.4byte	.LASF55
	.byte	0x8
	.2byte	0x1f6
	.4byte	0x7e
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.4byte	.LASF56
	.byte	0x8
	.2byte	0x1f7
	.4byte	0x7e
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.4byte	.LASF57
	.byte	0x8
	.2byte	0x1f8
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xa
	.4byte	.LASF58
	.byte	0x8
	.2byte	0x1f9
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xa
	.4byte	.LASF59
	.byte	0x8
	.2byte	0x1fa
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	.LASF60
	.byte	0x8
	.2byte	0x1fb
	.4byte	0x1fc
	.uleb128 0xc
	.4byte	.LASF92
	.byte	0x2
	.2byte	0x10e
	.byte	0x3
	.4byte	0x28c
	.uleb128 0xd
	.4byte	.LASF61
	.byte	0x2
	.2byte	0x10e
	.4byte	0x73
	.byte	0
	.uleb128 0xe
	.4byte	.LASF93
	.byte	0x3
	.byte	0x61
	.4byte	0x7e
	.byte	0x3
	.4byte	0x2b3
	.uleb128 0xf
	.4byte	.LASF62
	.byte	0x3
	.byte	0x61
	.4byte	0x7e
	.uleb128 0x10
	.string	"val"
	.byte	0x3
	.byte	0x63
	.4byte	0x7e
	.byte	0
	.uleb128 0x11
	.4byte	.LASF94
	.byte	0x1
	.byte	0x5b
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3a8
	.uleb128 0x12
	.4byte	.LASF70
	.byte	0x1
	.byte	0x5b
	.4byte	0x1b9
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x13
	.4byte	.LASF63
	.byte	0x1
	.byte	0x75
	.4byte	0x7e
	.4byte	.LLST0
	.uleb128 0x14
	.4byte	.LBB24
	.4byte	.LBE24-.LBB24
	.4byte	0x370
	.uleb128 0x13
	.4byte	.LASF63
	.byte	0x1
	.byte	0x66
	.4byte	0x7e
	.4byte	.LLST1
	.uleb128 0x13
	.4byte	.LASF64
	.byte	0x1
	.byte	0x67
	.4byte	0x7e
	.4byte	.LLST2
	.uleb128 0x13
	.4byte	.LASF65
	.byte	0x1
	.byte	0x69
	.4byte	0x3a8
	.4byte	.LLST3
	.uleb128 0x15
	.4byte	.LVL1
	.4byte	0x6ee
	.4byte	0x331
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x15
	.4byte	.LVL4
	.4byte	0x6f9
	.4byte	0x34a
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x17
	.4byte	.LVL6
	.4byte	0x705
	.uleb128 0x18
	.4byte	.LVL7
	.4byte	0x710
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL9
	.4byte	0x71b
	.4byte	0x384
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL10
	.4byte	0x6f9
	.4byte	0x39e
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x400
	.byte	0
	.uleb128 0x17
	.4byte	.LVL11
	.4byte	0x726
	.byte	0
	.uleb128 0x6
	.4byte	0x7e
	.uleb128 0x19
	.4byte	.LASF68
	.byte	0x1
	.byte	0x30
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x43d
	.uleb128 0x10
	.string	"cfg"
	.byte	0x1
	.byte	0x32
	.4byte	0x266
	.uleb128 0x1a
	.4byte	.LASF66
	.byte	0x1
	.byte	0x3c
	.4byte	0x7e
	.byte	0xf0
	.uleb128 0x1a
	.4byte	.LASF67
	.byte	0x1
	.byte	0x3d
	.4byte	0x18f
	.byte	0x3
	.uleb128 0x1b
	.4byte	0x272
	.4byte	.LBB25
	.4byte	.LBE25-.LBB25
	.byte	0x1
	.byte	0x4f
	.4byte	0x3fe
	.uleb128 0x1c
	.4byte	0x27f
	.byte	0
	.uleb128 0x17
	.4byte	.LVL12
	.4byte	0x731
	.uleb128 0x15
	.4byte	.LVL13
	.4byte	0x73d
	.4byte	0x41a
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x15
	.4byte	.LVL14
	.4byte	0x2b3
	.4byte	0x42d
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x18
	.4byte	.LVL15
	.4byte	0x749
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LASF69
	.byte	0x1
	.byte	0x53
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x476
	.uleb128 0x12
	.4byte	.LASF71
	.byte	0x1
	.byte	0x53
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1d
	.4byte	.LASF72
	.byte	0x1
	.byte	0x55
	.4byte	0x7e
	.uleb128 0x1d
	.4byte	.LASF73
	.byte	0x1
	.byte	0x56
	.4byte	0x7e
	.byte	0
	.uleb128 0x19
	.4byte	.LASF74
	.byte	0x1
	.byte	0x89
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6b1
	.uleb128 0x13
	.4byte	.LASF75
	.byte	0x1
	.byte	0x8b
	.4byte	0x7e
	.4byte	.LLST4
	.uleb128 0x13
	.4byte	.LASF76
	.byte	0x1
	.byte	0x8b
	.4byte	0x7e
	.4byte	.LLST5
	.uleb128 0x13
	.4byte	.LASF77
	.byte	0x1
	.byte	0x8b
	.4byte	0x7e
	.4byte	.LLST6
	.uleb128 0x1e
	.4byte	.LASF78
	.byte	0x1
	.byte	0x8e
	.4byte	0x6b1
	.uleb128 0x1b
	.4byte	0x28c
	.4byte	.LBB27
	.4byte	.LBE27-.LBB27
	.byte	0x1
	.byte	0xa1
	.4byte	0x4f3
	.uleb128 0x1f
	.4byte	0x29c
	.4byte	.LLST7
	.uleb128 0x20
	.4byte	.LBB28
	.4byte	.LBE28-.LBB28
	.uleb128 0x21
	.4byte	0x2a7
	.4byte	.LLST8
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	0x28c
	.4byte	.LBB29
	.4byte	.LBE29-.LBB29
	.byte	0x1
	.byte	0xa2
	.4byte	0x523
	.uleb128 0x1f
	.4byte	0x29c
	.4byte	.LLST9
	.uleb128 0x20
	.4byte	.LBB30
	.4byte	.LBE30-.LBB30
	.uleb128 0x21
	.4byte	0x2a7
	.4byte	.LLST10
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	0x28c
	.4byte	.LBB31
	.4byte	.LBE31-.LBB31
	.byte	0x1
	.byte	0xa3
	.4byte	0x553
	.uleb128 0x1f
	.4byte	0x29c
	.4byte	.LLST11
	.uleb128 0x20
	.4byte	.LBB32
	.4byte	.LBE32-.LBB32
	.uleb128 0x21
	.4byte	0x2a7
	.4byte	.LLST12
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	0x28c
	.4byte	.LBB33
	.4byte	.LBE33-.LBB33
	.byte	0x1
	.byte	0xce
	.4byte	0x583
	.uleb128 0x22
	.4byte	0x29c
	.4byte	0x3ff4f0ac
	.uleb128 0x20
	.4byte	.LBB34
	.4byte	.LBE34-.LBB34
	.uleb128 0x21
	.4byte	0x2a7
	.4byte	.LLST13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	0x28c
	.4byte	.LBB35
	.4byte	.LBE35-.LBB35
	.byte	0x1
	.byte	0xcf
	.4byte	0x5b3
	.uleb128 0x22
	.4byte	0x29c
	.4byte	0x3ff6d0ac
	.uleb128 0x20
	.4byte	.LBB36
	.4byte	.LBE36-.LBB36
	.uleb128 0x21
	.4byte	0x2a7
	.4byte	.LLST14
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	0x28c
	.4byte	.LBB37
	.4byte	.LBE37-.LBB37
	.byte	0x1
	.byte	0xd2
	.4byte	0x5e3
	.uleb128 0x22
	.4byte	0x29c
	.4byte	0x3ff000c0
	.uleb128 0x20
	.4byte	.LBB38
	.4byte	.LBE38-.LBB38
	.uleb128 0x21
	.4byte	0x2a7
	.4byte	.LLST15
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	0x28c
	.4byte	.LBB39
	.4byte	.LBE39-.LBB39
	.byte	0x1
	.byte	0xd3
	.4byte	0x613
	.uleb128 0x22
	.4byte	0x29c
	.4byte	0x3ff000c4
	.uleb128 0x20
	.4byte	.LBB40
	.4byte	.LBE40-.LBB40
	.uleb128 0x21
	.4byte	0x2a7
	.4byte	.LLST16
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	0x28c
	.4byte	.LBB41
	.4byte	.LBE41-.LBB41
	.byte	0x1
	.byte	0xd6
	.4byte	0x643
	.uleb128 0x22
	.4byte	0x29c
	.4byte	0x3ff0001c
	.uleb128 0x20
	.4byte	.LBB42
	.4byte	.LBE42-.LBB42
	.uleb128 0x21
	.4byte	0x2a7
	.4byte	.LLST17
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	0x28c
	.4byte	.LBB43
	.4byte	.LBE43-.LBB43
	.byte	0x1
	.byte	0xd7
	.4byte	0x673
	.uleb128 0x22
	.4byte	0x29c
	.4byte	0x3ff00020
	.uleb128 0x20
	.4byte	.LBB44
	.4byte	.LBE44-.LBB44
	.uleb128 0x21
	.4byte	0x2a7
	.4byte	.LLST18
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	0x28c
	.4byte	.LBB45
	.4byte	.LBE45-.LBB45
	.byte	0x1
	.byte	0xda
	.4byte	0x6a1
	.uleb128 0x22
	.4byte	0x29c
	.4byte	0x3ff000cc
	.uleb128 0x20
	.4byte	.LBB46
	.4byte	.LBE46-.LBB46
	.uleb128 0x23
	.4byte	0x2a7
	.uleb128 0x1
	.byte	0x59
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL18
	.4byte	0x755
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	0x159
	.4byte	0x6c1
	.uleb128 0x25
	.4byte	0x90
	.byte	0
	.byte	0
	.uleb128 0x26
	.string	"TAG"
	.byte	0x1
	.byte	0x28
	.4byte	0x6d3
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC2
	.byte	0x9f
	.uleb128 0x6
	.4byte	0xa5
	.uleb128 0x1d
	.4byte	.LASF72
	.byte	0x1
	.byte	0x55
	.4byte	0x7e
	.uleb128 0x1d
	.4byte	.LASF73
	.byte	0x1
	.byte	0x56
	.4byte	0x7e
	.uleb128 0x27
	.4byte	.LASF79
	.4byte	.LASF79
	.byte	0x8
	.byte	0xa3
	.uleb128 0x28
	.4byte	.LASF80
	.4byte	.LASF80
	.byte	0x8
	.2byte	0x14e
	.uleb128 0x27
	.4byte	.LASF81
	.4byte	.LASF81
	.byte	0x6
	.byte	0x4c
	.uleb128 0x27
	.4byte	.LASF82
	.4byte	.LASF82
	.byte	0x9
	.byte	0xde
	.uleb128 0x27
	.4byte	.LASF83
	.4byte	.LASF83
	.byte	0x8
	.byte	0xe9
	.uleb128 0x27
	.4byte	.LASF84
	.4byte	.LASF84
	.byte	0xa
	.byte	0x37
	.uleb128 0x28
	.4byte	.LASF85
	.4byte	.LASF85
	.byte	0x8
	.2byte	0x210
	.uleb128 0x28
	.4byte	.LASF86
	.4byte	.LASF86
	.byte	0x8
	.2byte	0x103
	.uleb128 0x28
	.4byte	.LASF87
	.4byte	.LASF87
	.byte	0x8
	.2byte	0x115
	.uleb128 0x27
	.4byte	.LASF88
	.4byte	.LASF88
	.byte	0x7
	.byte	0x9a
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
	.uleb128 0x5
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL10
	.4byte	.LVL11-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL1
	.4byte	.LVL8
	.2byte	0x4
	.byte	0xa
	.2byte	0x600
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL21
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL27
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL23
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL27
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL17
	.4byte	.LVL25
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL19
	.4byte	.LVL26
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff000c0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL21
	.4byte	.LVL26
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff0001c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL23
	.4byte	.LVL26
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff000cc
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL37
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL44
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x5a
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
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF73:
	.string	"g_ticks_per_us_app"
.LASF48:
	.string	"rtc_slow_freq_t"
.LASF60:
	.string	"rtc_config_t"
.LASF37:
	.string	"RTCWDT_RTC_RESET"
.LASF87:
	.string	"rtc_clk_cpu_freq_set"
.LASF20:
	.string	"ESP_LOG_VERBOSE"
.LASF41:
	.string	"RTC_CPU_FREQ_160M"
.LASF2:
	.string	"short int"
.LASF27:
	.string	"SDIO_RESET"
.LASF12:
	.string	"sizetype"
.LASF31:
	.string	"INTRUSION_RESET"
.LASF36:
	.string	"RTCWDT_BROWN_OUT_RESET"
.LASF5:
	.string	"__uint32_t"
.LASF25:
	.string	"OWDT_RESET"
.LASF88:
	.string	"rtc_get_reset_reason"
.LASF61:
	.string	"uart_no"
.LASF18:
	.string	"ESP_LOG_INFO"
.LASF70:
	.string	"slow_clk"
.LASF56:
	.string	"pll_wait"
.LASF68:
	.string	"esp_clk_init"
.LASF59:
	.string	"rtc_dboost_fpd"
.LASF43:
	.string	"RTC_CPU_FREQ_2M"
.LASF63:
	.string	"cal_val"
.LASF9:
	.string	"uint8_t"
.LASF22:
	.string	"NO_MEAN"
.LASF39:
	.string	"RTC_CPU_FREQ_XTAL"
.LASF66:
	.string	"freq_mhz"
.LASF35:
	.string	"EXT_CPU_RESET"
.LASF64:
	.string	"wait"
.LASF83:
	.string	"rtc_clk_slow_freq_set"
.LASF57:
	.string	"clkctl_init"
.LASF67:
	.string	"freq"
.LASF7:
	.string	"long long int"
.LASF91:
	.string	"C:\\\\esp\\\\ArkPOS2-esp\\\\build\\\\esp32"
.LASF40:
	.string	"RTC_CPU_FREQ_80M"
.LASF46:
	.string	"RTC_SLOW_FREQ_32K_XTAL"
.LASF11:
	.string	"long int"
.LASF62:
	.string	"addr"
.LASF65:
	.string	"warning_timeout"
.LASF34:
	.string	"RTCWDT_CPU_RESET"
.LASF85:
	.string	"rtc_init"
.LASF4:
	.string	"__uint8_t"
.LASF69:
	.string	"ets_update_cpu_frequency"
.LASF80:
	.string	"rtc_clk_cal"
.LASF29:
	.string	"TG1WDT_SYS_RESET"
.LASF78:
	.string	"rst_reas"
.LASF1:
	.string	"unsigned char"
.LASF50:
	.string	"RTC_FAST_FREQ_8M"
.LASF49:
	.string	"RTC_FAST_FREQ_XTALD4"
.LASF44:
	.string	"rtc_cpu_freq_t"
.LASF0:
	.string	"signed char"
.LASF76:
	.string	"hwcrypto_perip_clk"
.LASF8:
	.string	"long long unsigned int"
.LASF10:
	.string	"uint32_t"
.LASF92:
	.string	"uart_tx_wait_idle"
.LASF24:
	.string	"SW_RESET"
.LASF6:
	.string	"unsigned int"
.LASF23:
	.string	"POWERON_RESET"
.LASF74:
	.string	"esp_perip_clk_init"
.LASF42:
	.string	"RTC_CPU_FREQ_240M"
.LASF82:
	.string	"ets_printf"
.LASF55:
	.string	"xtal_wait"
.LASF28:
	.string	"TG0WDT_SYS_RESET"
.LASF32:
	.string	"TGWDT_CPU_RESET"
.LASF3:
	.string	"short unsigned int"
.LASF14:
	.string	"char"
.LASF53:
	.string	"RTC_CAL_32K_XTAL"
.LASF84:
	.string	"esp_clk_slowclk_cal_set"
.LASF15:
	.string	"ESP_LOG_NONE"
.LASF71:
	.string	"ticks_per_us"
.LASF19:
	.string	"ESP_LOG_DEBUG"
.LASF21:
	.string	"esp_log_level_t"
.LASF17:
	.string	"ESP_LOG_WARN"
.LASF79:
	.string	"rtc_clk_32k_enable"
.LASF58:
	.string	"pwrctl_init"
.LASF93:
	.string	"DPORT_READ_PERI_REG"
.LASF13:
	.string	"long unsigned int"
.LASF86:
	.string	"rtc_clk_fast_freq_set"
.LASF51:
	.string	"RTC_CAL_RTC_MUX"
.LASF33:
	.string	"SW_CPU_RESET"
.LASF72:
	.string	"g_ticks_per_us_pro"
.LASF30:
	.string	"RTCWDT_SYS_RESET"
.LASF45:
	.string	"RTC_SLOW_FREQ_RTC"
.LASF81:
	.string	"esp_log_timestamp"
.LASF90:
	.string	"C:/esp/esp-idf/components/esp32/clk.c"
.LASF94:
	.string	"select_rtc_slow_clk"
.LASF47:
	.string	"RTC_SLOW_FREQ_8MD256"
.LASF75:
	.string	"common_perip_clk"
.LASF52:
	.string	"RTC_CAL_8MD256"
.LASF38:
	.string	"RESET_REASON"
.LASF89:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF77:
	.string	"wifi_bt_sdio_clk"
.LASF16:
	.string	"ESP_LOG_ERROR"
.LASF26:
	.string	"DEEPSLEEP_RESET"
.LASF54:
	.string	"ck8m_wait"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-61-gab8375a) 5.2.0"
