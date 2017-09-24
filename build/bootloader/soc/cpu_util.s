	.file	"cpu_util.c"
	.text
.Ltext0:
	.section	.iram1,"ax",@progbits
	.literal_position
	.literal .LC0, 1072988332
	.literal .LC1, -66060289
	.literal .LC2, 34603008
	.literal .LC3, 1072988160
	.literal .LC4, 67108863
	.literal .LC5, -2080374784
	.align	4
	.global	esp_cpu_stall
	.type	esp_cpu_stall, @function
esp_cpu_stall:
.LFB4:
	.file 1 "C:/esp/esp-idf/components/soc/esp32/cpu_util.c"
	.loc 1 22 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 23 0
	bnei	a2, 1, .L2
	.loc 1 24 0
	l32r	a8, .LC0
	memw
	l32i.n	a10, a8, 0
	l32r	a9, .LC1
	and	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 25 0
	memw
	l32i.n	a10, a8, 0
	l32r	a9, .LC2
	or	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 26 0
	l32r	a8, .LC3
	memw
	l32i.n	a10, a8, 0
	movi.n	a9, -4
	and	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 27 0
	memw
	l32i.n	a10, a8, 0
	movi.n	a9, 2
	or	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	retw.n
.L2:
	.loc 1 29 0
	l32r	a8, .LC0
	memw
	l32i.n	a10, a8, 0
	l32r	a9, .LC4
	and	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 30 0
	memw
	l32i.n	a10, a8, 0
	l32r	a9, .LC5
	or	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 31 0
	l32r	a8, .LC3
	memw
	l32i.n	a10, a8, 0
	movi.n	a9, -0xd
	and	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 32 0
	memw
	l32i.n	a10, a8, 0
	movi.n	a9, 8
	or	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	retw.n
.LFE4:
	.size	esp_cpu_stall, .-esp_cpu_stall
	.literal_position
	.literal .LC6, 1072988332
	.literal .LC7, -66060289
	.literal .LC8, 1072988160
	.literal .LC9, 67108863
	.align	4
	.global	esp_cpu_unstall
	.type	esp_cpu_unstall, @function
esp_cpu_unstall:
.LFB5:
	.loc 1 37 0
.LVL1:
	entry	sp, 32
.LCFI1:
	.loc 1 38 0
	bnei	a2, 1, .L5
	.loc 1 39 0
	l32r	a9, .LC6
	memw
	l32i.n	a10, a9, 0
	l32r	a8, .LC7
	and	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
	.loc 1 40 0
	l32r	a9, .LC8
	memw
	l32i.n	a10, a9, 0
	movi.n	a8, -4
	and	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
	retw.n
.L5:
	.loc 1 42 0
	l32r	a9, .LC6
	memw
	l32i.n	a10, a9, 0
	l32r	a8, .LC9
	and	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
	.loc 1 43 0
	l32r	a9, .LC8
	memw
	l32i.n	a10, a9, 0
	movi.n	a8, -0xd
	and	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
	retw.n
.LFE5:
	.size	esp_cpu_unstall, .-esp_cpu_unstall
	.literal_position
	.literal .LC10, 1056780
	.align	4
	.global	esp_cpu_in_ocd_debug_mode
	.type	esp_cpu_in_ocd_debug_mode, @function
esp_cpu_in_ocd_debug_mode:
.LFB6:
	.loc 1 48 0
	entry	sp, 32
.LCFI2:
.LVL2:
	.loc 1 52 0
	l32r	a2, .LC10
#APP
# 52 "C:/esp/esp-idf/components/soc/esp32/cpu_util.c" 1
	rer a2,a2
# 0 "" 2
.LVL3:
	.loc 1 57 0
#NO_APP
	extui	a2, a2, 0, 1
.LVL4:
	retw.n
.LFE6:
	.size	esp_cpu_in_ocd_debug_mode, .-esp_cpu_in_ocd_debug_mode
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
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI0-.LFB4
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI1-.LFB5
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI2-.LFB6
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
	.text
.Letext0:
	.file 2 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\machine\\_default_types.h"
	.file 3 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\stdint.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xf1
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF14
	.byte	0xc
	.4byte	.LASF15
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
	.byte	0x2
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
	.byte	0x3
	.byte	0x2d
	.4byte	0x44
	.uleb128 0x5
	.4byte	.LASF9
	.byte	0x1
	.byte	0x15
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x92
	.uleb128 0x6
	.4byte	.LASF11
	.byte	0x1
	.byte	0x15
	.4byte	0x3d
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x5
	.4byte	.LASF10
	.byte	0x1
	.byte	0x24
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb5
	.uleb128 0x6
	.4byte	.LASF11
	.byte	0x1
	.byte	0x24
	.4byte	0x3d
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x7
	.4byte	.LASF12
	.byte	0x1
	.byte	0x2f
	.4byte	0xed
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xed
	.uleb128 0x8
	.string	"dcr"
	.byte	0x1
	.byte	0x32
	.4byte	0x3d
	.4byte	.LLST0
	.uleb128 0x9
	.string	"reg"
	.byte	0x1
	.byte	0x33
	.4byte	0x3d
	.4byte	0x10200c
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF13
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL3
	.4byte	.LVL4
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
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF10:
	.string	"esp_cpu_unstall"
.LASF11:
	.string	"cpu_id"
.LASF1:
	.string	"unsigned char"
.LASF3:
	.string	"short unsigned int"
.LASF9:
	.string	"esp_cpu_stall"
.LASF14:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -ggdb -Og -Og -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF7:
	.string	"__uint32_t"
.LASF4:
	.string	"unsigned int"
.LASF6:
	.string	"long long unsigned int"
.LASF5:
	.string	"long long int"
.LASF15:
	.string	"C:/esp/esp-idf/components/soc/esp32/cpu_util.c"
.LASF2:
	.string	"short int"
.LASF8:
	.string	"uint32_t"
.LASF0:
	.string	"signed char"
.LASF13:
	.string	"_Bool"
.LASF12:
	.string	"esp_cpu_in_ocd_debug_mode"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-61-gab8375a) 5.2.0"
