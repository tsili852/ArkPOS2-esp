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
.LFB8:
	.file 1 "C:/esp/esp-idf/components/esp32/clk.c"
	.loc 1 102 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 103 0
	bnei	a2, 1, .L2
.LBB26:
	.loc 1 111 0
	movi.n	a10, 1
	call8	rtc_clk_32k_enable
.LVL1:
	.loc 1 113 0
	movi.n	a3, 0
.LVL2:
.L4:
	.loc 1 118 0
	addi.n	a3, a3, 1
.LVL3:
	.loc 1 119 0
	movi.n	a11, 0x20
	movi.n	a10, 2
	call8	rtc_clk_cal
.LVL4:
	mov.n	a4, a10
.LVL5:
	.loc 1 120 0
	l32r	a8, .LC1
	muluh	a8, a3, a8
	srli	a8, a8, 10
	addx2	a8, a8, a8
	slli	a9, a8, 9
	bne	a3, a9, .L3
	.loc 1 121 0 discriminator 1
	call8	esp_log_timestamp
.LVL6:
	l32r	a12, .LC3
	mov.n	a11, a10
	l32r	a10, .LC5
	call8	ets_printf
.LVL7:
.L3:
	.loc 1 123 0
	beqz.n	a4, .L4
.LVL8:
.L2:
.LBE26:
	.loc 1 126 0
	mov.n	a10, a2
	call8	rtc_clk_slow_freq_set
.LVL9:
	.loc 1 132 0
	movi	a11, 0x400
	movi.n	a10, 0
	call8	rtc_clk_cal
.LVL10:
	.loc 1 138 0
	call8	esp_clk_slowclk_cal_set
.LVL11:
	retw.n
.LFE8:
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
	.literal .LC8, 1125899907
	.align	4
	.global	esp_clk_init
	.type	esp_clk_init, @function
esp_clk_init:
.LFB6:
	.loc 1 52 0
	entry	sp, 32
.LCFI1:
	.loc 1 54 0
	l32r	a2, .LC6
	l32i.n	a10, a2, 0
	call8	rtc_init
.LVL12:
	.loc 1 55 0
	movi.n	a10, 1
	call8	rtc_clk_fast_freq_set
.LVL13:
	.loc 1 60 0
	movi.n	a10, 0
	call8	select_rtc_slow_clk
.LVL14:
.L6:
.LBB27:
.LBB28:
	.file 2 "C:/esp/esp-idf/components/esp32/include/rom/uart.h"
	.loc 2 271 0
	l32r	a8, .LC7
	memw
	l32i.n	a8, a8, 0
	extui	a8, a8, 24, 4
	bnez.n	a8, .L6
.LBE28:
.LBE27:
	.loc 1 84 0
	call8	rtc_clk_cpu_freq_get
.LVL15:
	call8	rtc_clk_cpu_freq_value
.LVL16:
	l32r	a2, .LC8
	muluh	a2, a10, a2
	extui	a2, a2, 18, 14
.LVL17:
	.loc 1 86 0
	movi.n	a10, 3
	call8	rtc_clk_cpu_freq_set
.LVL18:
.LBB29:
.LBB30:
	.loc 1 90 0
#APP
# 90 "C:/esp/esp-idf/components/esp32/clk.c" 1
	rsr.ccount a9
# 0 "" 2
.LVL19:
#NO_APP
.LBE30:
	slli	a8, a9, 4
	sub	a9, a8, a9
.LVL20:
	slli	a8, a9, 4
	quou	a2, a8, a2
.LVL21:
#APP
# 90 "C:/esp/esp-idf/components/esp32/clk.c" 1
	wsr.ccount a2
# 0 "" 2
#NO_APP
	retw.n
.LBE29:
.LFE6:
	.size	esp_clk_init, .-esp_clk_init
	.section	.iram1,"ax",@progbits
	.literal_position
	.literal .LC9, g_ticks_per_us_pro
	.literal .LC10, g_ticks_per_us_app
	.align	4
	.global	ets_update_cpu_frequency
	.type	ets_update_cpu_frequency, @function
ets_update_cpu_frequency:
.LFB7:
	.loc 1 94 0
.LVL22:
	entry	sp, 32
.LCFI2:
	.loc 1 97 0
	l32r	a8, .LC9
	s32i.n	a2, a8, 0
	.loc 1 98 0
	l32r	a8, .LC10
	s32i.n	a2, a8, 0
	retw.n
.LFE7:
	.size	ets_update_cpu_frequency, .-ets_update_cpu_frequency
	.section	.text.esp_perip_clk_init,"ax",@progbits
	.literal_position
	.literal .LC11, 229375
	.literal .LC12, 117415928
	.literal .LC13, 1072693440
	.literal .LC14, 1072693276
	.literal .LC15, 1072693452
	.literal .LC16, 1073017004
	.literal .LC17, 2097152
	.literal .LC18, 1073139884
	.literal .LC19, 1072693444
	.literal .LC20, 1072693280
	.align	4
	.global	esp_perip_clk_init
	.type	esp_perip_clk_init, @function
esp_perip_clk_init:
.LFB9:
	.loc 1 148 0
	entry	sp, 32
.LCFI3:
.LVL23:
	.loc 1 157 0
	movi.n	a10, 0
	call8	rtc_get_reset_reason
.LVL24:
	.loc 1 166 0
	addi	a10, a10, -11
	bgeui	a10, 3, .L10
.LVL25:
.LBB31:
.LBB32:
	.file 3 "C:/esp/esp-idf/components/soc/esp32/include/soc/dport_access.h"
	.loc 3 102 0
	l32r	a8, .LC13
	memw
	l32i.n	a10, a8, 0
.LVL26:
.LBE32:
.LBE31:
	.loc 1 171 0
	movi.n	a8, -1
	xor	a10, a8, a10
.LVL27:
.LBB33:
.LBB34:
	.loc 3 102 0
	l32r	a9, .LC14
	memw
	l32i.n	a9, a9, 0
.LVL28:
.LBE34:
.LBE33:
	.loc 1 172 0
	xor	a9, a8, a9
.LVL29:
.LBB35:
.LBB36:
	.loc 3 102 0
	l32r	a11, .LC15
	memw
	l32i.n	a11, a11, 0
.LVL30:
.LBE36:
.LBE35:
	.loc 1 173 0
	xor	a11, a8, a11
.LVL31:
	j	.L9
.LVL32:
.L10:
	.loc 1 204 0
	l32r	a11, .LC11
	.loc 1 200 0
	movi.n	a9, 0xf
	.loc 1 176 0
	l32r	a10, .LC12
.LVL33:
.L9:
.LBB37:
.LBB38:
	.loc 3 102 0
	l32r	a13, .LC16
	memw
	l32i.n	a12, a13, 0
.LVL34:
.LBE38:
.LBE37:
	.loc 1 216 0
	l32r	a8, .LC17
	or	a12, a12, a8
.LVL35:
	memw
	s32i.n	a12, a13, 0
.LVL36:
.LBB39:
.LBB40:
	.loc 3 102 0
	l32r	a12, .LC18
	memw
	l32i.n	a13, a12, 0
.LVL37:
.LBE40:
.LBE39:
	.loc 1 217 0
	or	a8, a13, a8
	memw
	s32i.n	a8, a12, 0
.LVL38:
.LBB41:
.LBB42:
	.loc 3 102 0
	l32r	a13, .LC13
.LVL39:
	memw
	l32i.n	a12, a13, 0
.LVL40:
.LBE42:
.LBE41:
	.loc 1 220 0
	movi.n	a8, -1
	xor	a14, a8, a10
	and	a12, a14, a12
.LVL41:
	memw
	s32i.n	a12, a13, 0
.LVL42:
.LBB43:
.LBB44:
	.loc 3 102 0
	l32r	a13, .LC19
	memw
	l32i.n	a12, a13, 0
.LVL43:
.LBE44:
.LBE43:
	.loc 1 221 0
	or	a10, a10, a12
.LVL44:
	memw
	s32i.n	a10, a13, 0
.LVL45:
.LBB45:
.LBB46:
	.loc 3 102 0
	l32r	a12, .LC14
.LVL46:
	memw
	l32i.n	a10, a12, 0
.LVL47:
.LBE46:
.LBE45:
	.loc 1 224 0
	xor	a13, a8, a9
	and	a10, a13, a10
.LVL48:
	memw
	s32i.n	a10, a12, 0
.LVL49:
.LBB47:
.LBB48:
	.loc 3 102 0
	l32r	a12, .LC20
	memw
	l32i.n	a10, a12, 0
.LVL50:
.LBE48:
.LBE47:
	.loc 1 225 0
	or	a9, a9, a10
.LVL51:
	memw
	s32i.n	a9, a12, 0
.LVL52:
.LBB49:
.LBB50:
	.loc 3 102 0
	l32r	a10, .LC15
.LVL53:
	memw
	l32i.n	a9, a10, 0
.LVL54:
.LBE50:
.LBE49:
	.loc 1 228 0
	xor	a8, a8, a11
	and	a8, a8, a9
	memw
	s32i.n	a8, a10, 0
	retw.n
.LFE9:
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
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI0-.LFB8
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI1-.LFB6
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI2-.LFB7
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI3-.LFB9
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
	.4byte	0x7d6
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF94
	.byte	0xc
	.4byte	.LASF95
	.4byte	.LASF96
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
	.4byte	.LASF97
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
	.4byte	.LASF98
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
	.4byte	.LASF99
	.byte	0x1
	.byte	0x65
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3a8
	.uleb128 0x12
	.4byte	.LASF73
	.byte	0x1
	.byte	0x65
	.4byte	0x1b9
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x13
	.4byte	.LASF63
	.byte	0x1
	.byte	0x7f
	.4byte	0x7e
	.4byte	.LLST0
	.uleb128 0x14
	.4byte	.LBB26
	.4byte	.LBE26-.LBB26
	.4byte	0x370
	.uleb128 0x13
	.4byte	.LASF63
	.byte	0x1
	.byte	0x70
	.4byte	0x7e
	.4byte	.LLST1
	.uleb128 0x13
	.4byte	.LASF64
	.byte	0x1
	.byte	0x71
	.4byte	0x7e
	.4byte	.LLST2
	.uleb128 0x13
	.4byte	.LASF65
	.byte	0x1
	.byte	0x73
	.4byte	0x3a8
	.4byte	.LLST3
	.uleb128 0x15
	.4byte	.LVL1
	.4byte	0x74f
	.4byte	0x331
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x15
	.4byte	.LVL4
	.4byte	0x75a
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
	.4byte	0x766
	.uleb128 0x18
	.4byte	.LVL7
	.4byte	0x771
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
	.4byte	0x77c
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
	.4byte	0x75a
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
	.4byte	0x787
	.byte	0
	.uleb128 0x6
	.4byte	0x7e
	.uleb128 0x19
	.4byte	.LASF71
	.byte	0x1
	.byte	0x33
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x49e
	.uleb128 0x10
	.string	"cfg"
	.byte	0x1
	.byte	0x35
	.4byte	0x266
	.uleb128 0x1a
	.4byte	.LASF66
	.byte	0x1
	.byte	0x3f
	.4byte	0x7e
	.byte	0xf0
	.uleb128 0x1a
	.4byte	.LASF67
	.byte	0x1
	.byte	0x40
	.4byte	0x18f
	.byte	0x3
	.uleb128 0x13
	.4byte	.LASF68
	.byte	0x1
	.byte	0x54
	.4byte	0x7e
	.4byte	.LLST4
	.uleb128 0x1a
	.4byte	.LASF69
	.byte	0x1
	.byte	0x59
	.4byte	0x7e
	.byte	0xf0
	.uleb128 0x1b
	.4byte	0x272
	.4byte	.LBB27
	.4byte	.LBE27-.LBB27
	.byte	0x1
	.byte	0x52
	.4byte	0x419
	.uleb128 0x1c
	.4byte	0x27f
	.byte	0
	.uleb128 0x14
	.4byte	.LBB29
	.4byte	.LBE29-.LBB29
	.4byte	0x44d
	.uleb128 0x1d
	.4byte	.LASF70
	.byte	0x1
	.byte	0x5a
	.4byte	0x4c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1e
	.4byte	.LBB30
	.4byte	.LBE30-.LBB30
	.uleb128 0x13
	.4byte	.LASF70
	.byte	0x1
	.byte	0x5a
	.4byte	0x4c
	.4byte	.LLST5
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL12
	.4byte	0x792
	.uleb128 0x15
	.4byte	.LVL13
	.4byte	0x79e
	.4byte	0x469
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x15
	.4byte	.LVL14
	.4byte	0x2b3
	.4byte	0x47c
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x17
	.4byte	.LVL15
	.4byte	0x7aa
	.uleb128 0x17
	.4byte	.LVL16
	.4byte	0x7b6
	.uleb128 0x18
	.4byte	.LVL18
	.4byte	0x7c2
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LASF72
	.byte	0x1
	.byte	0x5d
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4d7
	.uleb128 0x12
	.4byte	.LASF74
	.byte	0x1
	.byte	0x5d
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1f
	.4byte	.LASF75
	.byte	0x1
	.byte	0x5f
	.4byte	0x7e
	.uleb128 0x1f
	.4byte	.LASF76
	.byte	0x1
	.byte	0x60
	.4byte	0x7e
	.byte	0
	.uleb128 0x19
	.4byte	.LASF77
	.byte	0x1
	.byte	0x93
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x712
	.uleb128 0x13
	.4byte	.LASF78
	.byte	0x1
	.byte	0x95
	.4byte	0x7e
	.4byte	.LLST6
	.uleb128 0x13
	.4byte	.LASF79
	.byte	0x1
	.byte	0x95
	.4byte	0x7e
	.4byte	.LLST7
	.uleb128 0x13
	.4byte	.LASF80
	.byte	0x1
	.byte	0x95
	.4byte	0x7e
	.4byte	.LLST8
	.uleb128 0x20
	.4byte	.LASF81
	.byte	0x1
	.byte	0x98
	.4byte	0x712
	.uleb128 0x1b
	.4byte	0x28c
	.4byte	.LBB31
	.4byte	.LBE31-.LBB31
	.byte	0x1
	.byte	0xab
	.4byte	0x554
	.uleb128 0x21
	.4byte	0x29c
	.4byte	.LLST9
	.uleb128 0x1e
	.4byte	.LBB32
	.4byte	.LBE32-.LBB32
	.uleb128 0x22
	.4byte	0x2a7
	.4byte	.LLST10
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	0x28c
	.4byte	.LBB33
	.4byte	.LBE33-.LBB33
	.byte	0x1
	.byte	0xac
	.4byte	0x584
	.uleb128 0x21
	.4byte	0x29c
	.4byte	.LLST11
	.uleb128 0x1e
	.4byte	.LBB34
	.4byte	.LBE34-.LBB34
	.uleb128 0x22
	.4byte	0x2a7
	.4byte	.LLST12
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	0x28c
	.4byte	.LBB35
	.4byte	.LBE35-.LBB35
	.byte	0x1
	.byte	0xad
	.4byte	0x5b4
	.uleb128 0x21
	.4byte	0x29c
	.4byte	.LLST13
	.uleb128 0x1e
	.4byte	.LBB36
	.4byte	.LBE36-.LBB36
	.uleb128 0x22
	.4byte	0x2a7
	.4byte	.LLST14
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	0x28c
	.4byte	.LBB37
	.4byte	.LBE37-.LBB37
	.byte	0x1
	.byte	0xd8
	.4byte	0x5e4
	.uleb128 0x23
	.4byte	0x29c
	.4byte	0x3ff4f0ac
	.uleb128 0x1e
	.4byte	.LBB38
	.4byte	.LBE38-.LBB38
	.uleb128 0x22
	.4byte	0x2a7
	.4byte	.LLST15
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	0x28c
	.4byte	.LBB39
	.4byte	.LBE39-.LBB39
	.byte	0x1
	.byte	0xd9
	.4byte	0x614
	.uleb128 0x23
	.4byte	0x29c
	.4byte	0x3ff6d0ac
	.uleb128 0x1e
	.4byte	.LBB40
	.4byte	.LBE40-.LBB40
	.uleb128 0x22
	.4byte	0x2a7
	.4byte	.LLST16
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	0x28c
	.4byte	.LBB41
	.4byte	.LBE41-.LBB41
	.byte	0x1
	.byte	0xdc
	.4byte	0x644
	.uleb128 0x23
	.4byte	0x29c
	.4byte	0x3ff000c0
	.uleb128 0x1e
	.4byte	.LBB42
	.4byte	.LBE42-.LBB42
	.uleb128 0x22
	.4byte	0x2a7
	.4byte	.LLST17
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	0x28c
	.4byte	.LBB43
	.4byte	.LBE43-.LBB43
	.byte	0x1
	.byte	0xdd
	.4byte	0x674
	.uleb128 0x23
	.4byte	0x29c
	.4byte	0x3ff000c4
	.uleb128 0x1e
	.4byte	.LBB44
	.4byte	.LBE44-.LBB44
	.uleb128 0x22
	.4byte	0x2a7
	.4byte	.LLST18
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	0x28c
	.4byte	.LBB45
	.4byte	.LBE45-.LBB45
	.byte	0x1
	.byte	0xe0
	.4byte	0x6a4
	.uleb128 0x23
	.4byte	0x29c
	.4byte	0x3ff0001c
	.uleb128 0x1e
	.4byte	.LBB46
	.4byte	.LBE46-.LBB46
	.uleb128 0x22
	.4byte	0x2a7
	.4byte	.LLST19
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	0x28c
	.4byte	.LBB47
	.4byte	.LBE47-.LBB47
	.byte	0x1
	.byte	0xe1
	.4byte	0x6d4
	.uleb128 0x23
	.4byte	0x29c
	.4byte	0x3ff00020
	.uleb128 0x1e
	.4byte	.LBB48
	.4byte	.LBE48-.LBB48
	.uleb128 0x22
	.4byte	0x2a7
	.4byte	.LLST20
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	0x28c
	.4byte	.LBB49
	.4byte	.LBE49-.LBB49
	.byte	0x1
	.byte	0xe4
	.4byte	0x702
	.uleb128 0x23
	.4byte	0x29c
	.4byte	0x3ff000cc
	.uleb128 0x1e
	.4byte	.LBB50
	.4byte	.LBE50-.LBB50
	.uleb128 0x24
	.4byte	0x2a7
	.uleb128 0x1
	.byte	0x59
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL24
	.4byte	0x7ce
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	0x159
	.4byte	0x722
	.uleb128 0x26
	.4byte	0x90
	.byte	0
	.byte	0
	.uleb128 0x27
	.string	"TAG"
	.byte	0x1
	.byte	0x2b
	.4byte	0x734
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC2
	.byte	0x9f
	.uleb128 0x6
	.4byte	0xa5
	.uleb128 0x1f
	.4byte	.LASF75
	.byte	0x1
	.byte	0x5f
	.4byte	0x7e
	.uleb128 0x1f
	.4byte	.LASF76
	.byte	0x1
	.byte	0x60
	.4byte	0x7e
	.uleb128 0x28
	.4byte	.LASF82
	.4byte	.LASF82
	.byte	0x8
	.byte	0xa3
	.uleb128 0x29
	.4byte	.LASF83
	.4byte	.LASF83
	.byte	0x8
	.2byte	0x14e
	.uleb128 0x28
	.4byte	.LASF84
	.4byte	.LASF84
	.byte	0x6
	.byte	0x4c
	.uleb128 0x28
	.4byte	.LASF85
	.4byte	.LASF85
	.byte	0x9
	.byte	0xde
	.uleb128 0x28
	.4byte	.LASF86
	.4byte	.LASF86
	.byte	0x8
	.byte	0xe9
	.uleb128 0x28
	.4byte	.LASF87
	.4byte	.LASF87
	.byte	0xa
	.byte	0x37
	.uleb128 0x29
	.4byte	.LASF88
	.4byte	.LASF88
	.byte	0x8
	.2byte	0x210
	.uleb128 0x29
	.4byte	.LASF89
	.4byte	.LASF89
	.byte	0x8
	.2byte	0x103
	.uleb128 0x29
	.4byte	.LASF90
	.4byte	.LASF90
	.byte	0x8
	.2byte	0x122
	.uleb128 0x29
	.4byte	.LASF91
	.4byte	.LASF91
	.byte	0x8
	.2byte	0x129
	.uleb128 0x29
	.4byte	.LASF92
	.4byte	.LASF92
	.byte	0x8
	.2byte	0x115
	.uleb128 0x28
	.4byte	.LASF93
	.4byte	.LASF93
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.4byte	.LVL17
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL27
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL33
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL29
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL33
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL23
	.4byte	.LVL31
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL25
	.4byte	.LVL32
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff000c0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL27
	.4byte	.LVL32
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff0001c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL29
	.4byte	.LVL32
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff000cc
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x5b
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
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL43
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL50
	.4byte	.LVL53
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
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF76:
	.string	"g_ticks_per_us_app"
.LASF48:
	.string	"rtc_slow_freq_t"
.LASF60:
	.string	"rtc_config_t"
.LASF37:
	.string	"RTCWDT_RTC_RESET"
.LASF92:
	.string	"rtc_clk_cpu_freq_set"
.LASF96:
	.string	"C:\\\\esp\\\\esp32-ArkPOS2\\\\ArkPOS2-esp\\\\build\\\\esp32"
.LASF20:
	.string	"ESP_LOG_VERBOSE"
.LASF46:
	.string	"RTC_SLOW_FREQ_32K_XTAL"
.LASF41:
	.string	"RTC_CPU_FREQ_160M"
.LASF2:
	.string	"short int"
.LASF27:
	.string	"SDIO_RESET"
.LASF69:
	.string	"freq_after"
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
.LASF93:
	.string	"rtc_get_reset_reason"
.LASF61:
	.string	"uart_no"
.LASF18:
	.string	"ESP_LOG_INFO"
.LASF73:
	.string	"slow_clk"
.LASF56:
	.string	"pll_wait"
.LASF71:
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
.LASF86:
	.string	"rtc_clk_slow_freq_set"
.LASF57:
	.string	"clkctl_init"
.LASF68:
	.string	"freq_before"
.LASF67:
	.string	"freq"
.LASF7:
	.string	"long long int"
.LASF40:
	.string	"RTC_CPU_FREQ_80M"
.LASF91:
	.string	"rtc_clk_cpu_freq_value"
.LASF11:
	.string	"long int"
.LASF62:
	.string	"addr"
.LASF65:
	.string	"warning_timeout"
.LASF34:
	.string	"RTCWDT_CPU_RESET"
.LASF88:
	.string	"rtc_init"
.LASF4:
	.string	"__uint8_t"
.LASF72:
	.string	"ets_update_cpu_frequency"
.LASF83:
	.string	"rtc_clk_cal"
.LASF90:
	.string	"rtc_clk_cpu_freq_get"
.LASF29:
	.string	"TG1WDT_SYS_RESET"
.LASF70:
	.string	"__ccount"
.LASF81:
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
.LASF79:
	.string	"hwcrypto_perip_clk"
.LASF8:
	.string	"long long unsigned int"
.LASF10:
	.string	"uint32_t"
.LASF97:
	.string	"uart_tx_wait_idle"
.LASF24:
	.string	"SW_RESET"
.LASF6:
	.string	"unsigned int"
.LASF23:
	.string	"POWERON_RESET"
.LASF77:
	.string	"esp_perip_clk_init"
.LASF42:
	.string	"RTC_CPU_FREQ_240M"
.LASF85:
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
.LASF87:
	.string	"esp_clk_slowclk_cal_set"
.LASF15:
	.string	"ESP_LOG_NONE"
.LASF74:
	.string	"ticks_per_us"
.LASF19:
	.string	"ESP_LOG_DEBUG"
.LASF21:
	.string	"esp_log_level_t"
.LASF17:
	.string	"ESP_LOG_WARN"
.LASF82:
	.string	"rtc_clk_32k_enable"
.LASF58:
	.string	"pwrctl_init"
.LASF98:
	.string	"DPORT_READ_PERI_REG"
.LASF13:
	.string	"long unsigned int"
.LASF89:
	.string	"rtc_clk_fast_freq_set"
.LASF51:
	.string	"RTC_CAL_RTC_MUX"
.LASF33:
	.string	"SW_CPU_RESET"
.LASF75:
	.string	"g_ticks_per_us_pro"
.LASF30:
	.string	"RTCWDT_SYS_RESET"
.LASF45:
	.string	"RTC_SLOW_FREQ_RTC"
.LASF84:
	.string	"esp_log_timestamp"
.LASF95:
	.string	"C:/esp/esp-idf/components/esp32/clk.c"
.LASF99:
	.string	"select_rtc_slow_clk"
.LASF47:
	.string	"RTC_SLOW_FREQ_8MD256"
.LASF78:
	.string	"common_perip_clk"
.LASF52:
	.string	"RTC_CAL_8MD256"
.LASF38:
	.string	"RESET_REASON"
.LASF94:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF80:
	.string	"wifi_bt_sdio_clk"
.LASF16:
	.string	"ESP_LOG_ERROR"
.LASF26:
	.string	"DEEPSLEEP_RESET"
.LASF54:
	.string	"ck8m_wait"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-73-ge28a011) 5.2.0"
