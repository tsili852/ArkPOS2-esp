	.file	"efuse.c"
	.text
.Ltext0:
	.section	.rodata
	.align	4
.LC0:
	.word	1073061916
	.word	1073062040
	.word	1073062072
	.word	1073062104
	.align	4
.LC1:
	.word	1073061940
	.word	1073062068
	.word	1073062100
	.word	1073062132
	.section	.text.esp_efuse_reset,"ax",@progbits
	.literal_position
	.literal .LC2, 1073062140
	.literal .LC3, 23205
	.literal .LC4, .LC0
	.literal .LC5, .LC1
	.align	4
	.global	esp_efuse_reset
	.type	esp_efuse_reset, @function
esp_efuse_reset:
.LFB1:
	.file 1 "C:/esp/esp-idf/components/bootloader_support/src/efuse.c"
	.loc 1 39 0
	entry	sp, 64
.LCFI0:
	.loc 1 40 0
	l32r	a9, .LC3
	l32r	a8, .LC2
	memw
	s32i.n	a9, a8, 0
	.loc 1 41 0
	l32r	a8, .LC4
	l32i.n	a9, a8, 0
	l32i.n	a10, a8, 4
	s32i.n	a9, sp, 0
	l32i.n	a9, a8, 8
	s32i.n	a10, sp, 4
	l32i.n	a8, a8, 12
	s32i.n	a9, sp, 8
	s32i.n	a8, sp, 12
	.loc 1 43 0
	l32r	a8, .LC5
	l32i.n	a9, a8, 0
	l32i.n	a10, a8, 4
	s32i.n	a9, sp, 16
	l32i.n	a9, a8, 8
	s32i.n	a10, sp, 20
	l32i.n	a8, a8, 12
	s32i.n	a9, sp, 24
	s32i.n	a8, sp, 28
.LVL0:
.LBB2:
	.loc 1 45 0
	movi.n	a10, 0
	j	.L2
.LVL1:
.L5:
.LBB3:
	.loc 1 46 0
	addx4	a8, a10, sp
	l32i.n	a8, a8, 0
.LVL2:
	j	.L3
.L4:
	.loc 1 47 0 discriminator 3
	movi.n	a9, 0
	memw
	s32i.n	a9, a8, 0
	.loc 1 46 0 discriminator 3
	addi.n	a8, a8, 4
.LVL3:
.L3:
	.loc 1 46 0 is_stmt 0 discriminator 1
	addx4	a9, a10, sp
	l32i.n	a9, a9, 16
	bgeu	a9, a8, .L4
.LBE3:
	.loc 1 45 0 is_stmt 1 discriminator 2
	addi.n	a10, a10, 1
.LVL4:
.L2:
	.loc 1 45 0 is_stmt 0 discriminator 1
	blti	a10, 4, .L5
.LBE2:
	.loc 1 50 0 is_stmt 1
	retw.n
.LFE1:
	.size	esp_efuse_reset, .-esp_efuse_reset
	.section	.text.esp_efuse_burn_new_values,"ax",@progbits
	.literal_position
	.literal .LC6, 1073062140
	.literal .LC7, 23130
	.literal .LC8, 1073062148
	.literal .LC9, 23205
	.align	4
	.global	esp_efuse_burn_new_values
	.type	esp_efuse_burn_new_values, @function
esp_efuse_burn_new_values:
.LFB0:
	.loc 1 26 0
	entry	sp, 32
.LCFI1:
	.loc 1 27 0
	l32r	a9, .LC7
	l32r	a8, .LC6
	memw
	s32i.n	a9, a8, 0
	.loc 1 28 0
	movi.n	a9, 2
	l32r	a8, .LC8
	memw
	s32i.n	a9, a8, 0
.L7:
	.loc 1 29 0 discriminator 1
	l32r	a8, .LC8
	memw
	l32i.n	a8, a8, 0
	bnez.n	a8, .L7
	.loc 1 31 0
	l32r	a9, .LC9
	l32r	a8, .LC6
	memw
	s32i.n	a9, a8, 0
	.loc 1 32 0
	movi.n	a9, 1
	l32r	a8, .LC8
	memw
	s32i.n	a9, a8, 0
.L8:
	.loc 1 33 0 discriminator 1
	l32r	a8, .LC8
	memw
	l32i.n	a8, a8, 0
	bnez.n	a8, .L8
	.loc 1 35 0
	call8	esp_efuse_reset
.LVL5:
	retw.n
.LFE0:
	.size	esp_efuse_burn_new_values, .-esp_efuse_burn_new_values
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC11:
	.string	"efuse"
	.align	4
.LC13:
	.string	"\033[0;32mI (%d) %s: Disable BASIC ROM Console fallback via efuse...\033[0m\n"
	.section	.text.esp_efuse_disable_basic_rom_console,"ax",@progbits
	.literal_position
	.literal .LC10, 1073061912
	.literal .LC12, .LC11
	.literal .LC14, .LC13
	.literal .LC15, 1073061940
	.align	4
	.global	esp_efuse_disable_basic_rom_console
	.type	esp_efuse_disable_basic_rom_console, @function
esp_efuse_disable_basic_rom_console:
.LFB2:
	.loc 1 53 0
	entry	sp, 32
.LCFI2:
	.loc 1 54 0
	l32r	a8, .LC10
	memw
	l32i.n	a8, a8, 0
	bbsi	a8, 2, .L9
	.loc 1 55 0 discriminator 1
	call8	esp_log_timestamp
.LVL6:
	l32r	a12, .LC12
	mov.n	a11, a10
	l32r	a10, .LC14
	call8	ets_printf
.LVL7:
	.loc 1 56 0 discriminator 1
	call8	esp_efuse_reset
.LVL8:
	.loc 1 57 0 discriminator 1
	movi.n	a9, 4
	l32r	a8, .LC15
	memw
	s32i.n	a9, a8, 0
	.loc 1 58 0 discriminator 1
	call8	esp_efuse_burn_new_values
.LVL9:
.L9:
	retw.n
.LFE2:
	.size	esp_efuse_disable_basic_rom_console, .-esp_efuse_disable_basic_rom_console
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
	.uleb128 0x40
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x4
	.4byte	.LCFI1-.LFB0
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
	.file 4 "C:/esp/esp-idf/components/log/include/esp_log.h"
	.file 5 "C:/esp/esp-idf/components/esp32/include/rom/ets_sys.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1ea
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF27
	.byte	0xc
	.4byte	.LASF28
	.4byte	.LASF29
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
	.4byte	0x53
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
	.4byte	0x48
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
	.4byte	0x95
	.uleb128 0x6
	.4byte	0x88
	.uleb128 0x7
	.byte	0x4
	.4byte	0x53
	.byte	0x4
	.byte	0x1f
	.4byte	0xcb
	.uleb128 0x8
	.4byte	.LASF13
	.byte	0
	.uleb128 0x8
	.4byte	.LASF14
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF15
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x3
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x5
	.byte	0
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x4
	.byte	0x26
	.4byte	0x9a
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x1
	.byte	0x26
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x136
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0x1
	.byte	0x29
	.4byte	0x146
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x1
	.byte	0x2b
	.4byte	0x14b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xb
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0xc
	.string	"i"
	.byte	0x1
	.byte	0x2d
	.4byte	0x41
	.4byte	.LLST0
	.uleb128 0xb
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0xc
	.string	"r"
	.byte	0x1
	.byte	0x2e
	.4byte	0x68
	.4byte	.LLST1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	0x68
	.4byte	0x146
	.uleb128 0xe
	.4byte	0x7a
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.4byte	0x136
	.uleb128 0x6
	.4byte	0x136
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x1
	.byte	0x19
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x16f
	.uleb128 0xf
	.4byte	.LVL5
	.4byte	0xd6
	.byte	0
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x1
	.byte	0x34
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c0
	.uleb128 0xf
	.4byte	.LVL6
	.4byte	0x1d7
	.uleb128 0x10
	.4byte	.LVL7
	.4byte	0x1e2
	.4byte	0x1ad
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC13
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.byte	0
	.uleb128 0xf
	.4byte	.LVL8
	.4byte	0xd6
	.uleb128 0xf
	.4byte	.LVL9
	.4byte	0x150
	.byte	0
	.uleb128 0x12
	.string	"TAG"
	.byte	0x1
	.byte	0x17
	.4byte	0x1d2
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC11
	.byte	0x9f
	.uleb128 0x6
	.4byte	0x8f
	.uleb128 0x13
	.4byte	.LASF25
	.4byte	.LASF25
	.byte	0x4
	.byte	0x4c
	.uleb128 0x13
	.4byte	.LASF26
	.4byte	.LASF26
	.byte	0x5
	.byte	0xde
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x13
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
	.4byte	.LVL1
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL1
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x58
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
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF19:
	.string	"esp_log_level_t"
.LASF14:
	.string	"ESP_LOG_ERROR"
.LASF29:
	.string	"C:\\\\esp\\\\esp32-ArkPOS2\\\\ArkPOS2-esp\\\\build\\\\bootloader_support"
.LASF20:
	.string	"block_start"
.LASF22:
	.string	"esp_efuse_reset"
.LASF27:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF25:
	.string	"esp_log_timestamp"
.LASF16:
	.string	"ESP_LOG_INFO"
.LASF28:
	.string	"C:/esp/esp-idf/components/bootloader_support/src/efuse.c"
.LASF1:
	.string	"unsigned char"
.LASF11:
	.string	"long unsigned int"
.LASF3:
	.string	"short unsigned int"
.LASF24:
	.string	"esp_efuse_disable_basic_rom_console"
.LASF7:
	.string	"__uint32_t"
.LASF21:
	.string	"block_end"
.LASF4:
	.string	"unsigned int"
.LASF17:
	.string	"ESP_LOG_DEBUG"
.LASF6:
	.string	"long long unsigned int"
.LASF26:
	.string	"ets_printf"
.LASF10:
	.string	"sizetype"
.LASF5:
	.string	"long long int"
.LASF12:
	.string	"char"
.LASF2:
	.string	"short int"
.LASF13:
	.string	"ESP_LOG_NONE"
.LASF8:
	.string	"uint32_t"
.LASF9:
	.string	"long int"
.LASF0:
	.string	"signed char"
.LASF23:
	.string	"esp_efuse_burn_new_values"
.LASF18:
	.string	"ESP_LOG_VERBOSE"
.LASF15:
	.string	"ESP_LOG_WARN"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-73-ge28a011) 5.2.0"
