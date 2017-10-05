	.file	"flash_partitions.c"
	.text
.Ltext0:
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC2:
	.string	"flash_parts"
	.align	4
.LC4:
	.string	"\033[0;31mE (%d) %s: partition %d invalid magic number 0x%x\033[0m\n"
	.align	4
.LC6:
	.string	"\033[0;31mE (%d) %s: partition %d invalid - offset 0x%x size 0x%x exceeds flash chip size 0x%x\033[0m\n"
	.align	4
.LC8:
	.string	"\033[0;31mE (%d) %s: partition table has no terminating entry, not valid\033[0m\n"
	.section	.text.esp_partition_table_basic_verify,"ax",@progbits
	.literal_position
	.literal .LC0, g_rom_flashchip
	.literal .LC1, 20650
	.literal .LC3, .LC2
	.literal .LC5, .LC4
	.literal .LC7, .LC6
	.literal .LC9, .LC8
	.align	4
	.global	esp_partition_table_basic_verify
	.type	esp_partition_table_basic_verify, @function
esp_partition_table_basic_verify:
.LFB0:
	.file 1 "C:/esp/esp-idf/components/bootloader_support/src/flash_partitions.c"
	.loc 1 21 0
.LVL0:
	entry	sp, 48
.LCFI0:
	extui	a3, a3, 0, 8
	.loc 1 23 0
	l32r	a5, .LC0
	l32i.n	a7, a5, 4
.LVL1:
	.loc 1 24 0
	movi.n	a6, 0
	s32i.n	a6, a4, 0
.LVL2:
	.loc 1 26 0
	j	.L2
.LVL3:
.L8:
.LBB2:
	.loc 1 27 0
	slli	a5, a6, 5
	add.n	a5, a2, a5
.LVL4:
	.loc 1 31 0
	l32i.n	a8, a5, 0
	.loc 1 29 0
	bnei	a8, -1, .L3
	.loc 1 34 0
	s32i.n	a6, a4, 0
	.loc 1 35 0
	movi.n	a2, 0
.LVL5:
	retw.n
.LVL6:
.L3:
	.loc 1 38 0
	l16ui	a9, a5, 0
	l32r	a8, .LC1
	beq	a9, a8, .L5
	.loc 1 39 0
	beqz.n	a3, .L9
	.loc 1 40 0 discriminator 1
	call8	esp_log_timestamp
.LVL7:
	l16ui	a14, a5, 0
	mov.n	a13, a6
	l32r	a12, .LC3
	mov.n	a11, a10
	l32r	a10, .LC5
	call8	ets_printf
.LVL8:
	.loc 1 42 0 discriminator 1
	movi	a2, 0x103
.LVL9:
	retw.n
.LVL10:
.L5:
	.loc 1 46 0
	l32i.n	a9, a5, 4
	bltu	a7, a9, .L6
	.loc 1 46 0 is_stmt 0 discriminator 1
	l32i.n	a8, a5, 8
	add.n	a8, a9, a8
	bgeu	a7, a8, .L7
.L6:
	.loc 1 47 0 is_stmt 1
	beqz.n	a3, .L10
	.loc 1 48 0 discriminator 1
	call8	esp_log_timestamp
.LVL11:
	s32i.n	a7, sp, 0
	l32i.n	a15, a5, 8
	l32i.n	a14, a5, 4
	mov.n	a13, a6
	l32r	a12, .LC3
	mov.n	a11, a10
	l32r	a10, .LC7
	call8	ets_printf
.LVL12:
	.loc 1 51 0 discriminator 1
	movi	a2, 0x104
.LVL13:
	retw.n
.LVL14:
.L7:
.LBE2:
	.loc 1 26 0 discriminator 2
	addi.n	a6, a6, 1
.LVL15:
.L2:
	.loc 1 26 0 is_stmt 0 discriminator 1
	movi.n	a5, 0x5f
	bgeu	a5, a6, .L8
	.loc 1 55 0 is_stmt 1
	beqz.n	a3, .L11
	.loc 1 56 0 discriminator 1
	call8	esp_log_timestamp
.LVL16:
	l32r	a12, .LC3
	mov.n	a11, a10
	l32r	a10, .LC9
	call8	ets_printf
.LVL17:
	.loc 1 58 0 discriminator 1
	movi	a2, 0x103
.LVL18:
	retw.n
.LVL19:
.L9:
.LBB3:
	.loc 1 42 0
	movi	a2, 0x103
.LVL20:
	retw.n
.LVL21:
.L10:
	.loc 1 51 0
	movi	a2, 0x104
.LVL22:
	retw.n
.LVL23:
.L11:
.LBE3:
	.loc 1 58 0
	movi	a2, 0x103
.LVL24:
	.loc 1 59 0
	retw.n
.LFE0:
	.size	esp_partition_table_basic_verify, .-esp_partition_table_basic_verify
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
	.uleb128 0x30
	.align	4
.LEFDE0:
	.text
.Letext0:
	.file 2 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\machine\\_default_types.h"
	.file 3 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\stdint.h"
	.file 4 "C:/esp/esp-idf/components/esp32/include/esp_err.h"
	.file 5 "C:/esp/esp-idf/components/esp32/include/esp_flash_data_types.h"
	.file 6 "C:/esp/esp-idf/components/log/include/esp_log.h"
	.file 7 "C:/esp/esp-idf/components/esp32/include/rom/spi_flash.h"
	.file 8 "C:/esp/esp-idf/components/esp32/include/rom/ets_sys.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x37d
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF51
	.byte	0xc
	.4byte	.LASF52
	.4byte	.LASF53
	.4byte	.Ldebug_ranges0+0x18
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
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x3
	.byte	0x15
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x21
	.4byte	0x45
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0x2c
	.4byte	0x57
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x2d
	.4byte	0x69
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF15
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF16
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF17
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF18
	.uleb128 0x5
	.byte	0x4
	.4byte	0xd7
	.uleb128 0x6
	.4byte	0xca
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x4
	.byte	0x18
	.4byte	0x9f
	.uleb128 0x7
	.byte	0x8
	.byte	0x5
	.byte	0x24
	.4byte	0x108
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x5
	.byte	0x25
	.4byte	0xaa
	.byte	0
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x5
	.byte	0x26
	.4byte	0xaa
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x5
	.byte	0x27
	.4byte	0xe7
	.uleb128 0x7
	.byte	0x20
	.byte	0x5
	.byte	0x2c
	.4byte	0x164
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x5
	.byte	0x2d
	.4byte	0x94
	.byte	0
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x5
	.byte	0x2e
	.4byte	0x89
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF25
	.byte	0x5
	.byte	0x2f
	.4byte	0x89
	.byte	0x3
	.uleb128 0x9
	.string	"pos"
	.byte	0x5
	.byte	0x30
	.4byte	0x108
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF26
	.byte	0x5
	.byte	0x31
	.4byte	0x164
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF27
	.byte	0x5
	.byte	0x32
	.4byte	0xaa
	.byte	0x1c
	.byte	0
	.uleb128 0xa
	.4byte	0x89
	.4byte	0x174
	.uleb128 0xb
	.4byte	0xbc
	.byte	0xf
	.byte	0
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x5
	.byte	0x33
	.4byte	0x113
	.uleb128 0xc
	.byte	0x4
	.4byte	0x74
	.byte	0x6
	.byte	0x1f
	.4byte	0x1b0
	.uleb128 0xd
	.4byte	.LASF29
	.byte	0
	.uleb128 0xd
	.4byte	.LASF30
	.byte	0x1
	.uleb128 0xd
	.4byte	.LASF31
	.byte	0x2
	.uleb128 0xd
	.4byte	.LASF32
	.byte	0x3
	.uleb128 0xd
	.4byte	.LASF33
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF34
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF35
	.byte	0x6
	.byte	0x26
	.4byte	0x17f
	.uleb128 0x7
	.byte	0x18
	.byte	0x7
	.byte	0x87
	.4byte	0x20c
	.uleb128 0x8
	.4byte	.LASF36
	.byte	0x7
	.byte	0x88
	.4byte	0xaa
	.byte	0
	.uleb128 0x8
	.4byte	.LASF37
	.byte	0x7
	.byte	0x89
	.4byte	0xaa
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF38
	.byte	0x7
	.byte	0x8a
	.4byte	0xaa
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF39
	.byte	0x7
	.byte	0x8b
	.4byte	0xaa
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF40
	.byte	0x7
	.byte	0x8c
	.4byte	0xaa
	.byte	0x10
	.uleb128 0x8
	.4byte	.LASF41
	.byte	0x7
	.byte	0x8d
	.4byte	0xaa
	.byte	0x14
	.byte	0
	.uleb128 0x3
	.4byte	.LASF42
	.byte	0x7
	.byte	0x8e
	.4byte	0x1bb
	.uleb128 0xe
	.4byte	.LASF54
	.byte	0x1
	.byte	0x14
	.4byte	0xdc
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x324
	.uleb128 0xf
	.4byte	.LASF43
	.byte	0x1
	.byte	0x14
	.4byte	0x324
	.4byte	.LLST0
	.uleb128 0x10
	.4byte	.LASF44
	.byte	0x1
	.byte	0x14
	.4byte	0x32f
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x10
	.4byte	.LASF45
	.byte	0x1
	.byte	0x14
	.4byte	0x336
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x11
	.4byte	.LASF46
	.byte	0x1
	.byte	0x16
	.4byte	0x62
	.4byte	.LLST1
	.uleb128 0x12
	.4byte	.LASF37
	.byte	0x1
	.byte	0x17
	.4byte	0xaa
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x13
	.4byte	.Ldebug_ranges0+0
	.4byte	0x2fe
	.uleb128 0x11
	.4byte	.LASF47
	.byte	0x1
	.byte	0x1b
	.4byte	0x324
	.4byte	.LLST2
	.uleb128 0x14
	.string	"pos"
	.byte	0x1
	.byte	0x2d
	.4byte	0x33c
	.4byte	.LLST3
	.uleb128 0x15
	.4byte	.LVL7
	.4byte	0x36a
	.uleb128 0x16
	.4byte	.LVL8
	.4byte	0x375
	.4byte	0x2cb
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL11
	.4byte	0x36a
	.uleb128 0x18
	.4byte	.LVL12
	.4byte	0x375
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL16
	.4byte	0x36a
	.uleb128 0x18
	.4byte	.LVL17
	.4byte	0x375
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x32a
	.uleb128 0x6
	.4byte	0x174
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF48
	.uleb128 0x5
	.byte	0x4
	.4byte	0x62
	.uleb128 0x5
	.byte	0x4
	.4byte	0x342
	.uleb128 0x6
	.4byte	0x108
	.uleb128 0x19
	.string	"TAG"
	.byte	0x1
	.byte	0x12
	.4byte	0x359
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC2
	.byte	0x9f
	.uleb128 0x6
	.4byte	0xd1
	.uleb128 0x1a
	.4byte	.LASF55
	.byte	0x7
	.2byte	0x218
	.4byte	0x20c
	.uleb128 0x1b
	.4byte	.LASF49
	.4byte	.LASF49
	.byte	0x6
	.byte	0x4c
	.uleb128 0x1b
	.4byte	.LASF50
	.4byte	.LASF50
	.byte	0x8
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x13
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
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
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
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
	.uleb128 0x1a
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL24
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LFE0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL4
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL19
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL10
	.4byte	.LVL15
	.2byte	0x3
	.byte	0x75
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0x3
	.byte	0x75
	.sleb128 4
	.byte	0x9f
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
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB2
	.4byte	.LBE2
	.4byte	.LBB3
	.4byte	.LBE3
	.4byte	0
	.4byte	0
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF35:
	.string	"esp_log_level_t"
.LASF3:
	.string	"__uint8_t"
.LASF30:
	.string	"ESP_LOG_ERROR"
.LASF31:
	.string	"ESP_LOG_WARN"
.LASF19:
	.string	"esp_err_t"
.LASF6:
	.string	"__int32_t"
.LASF53:
	.string	"C:\\\\esp\\\\esp32-ArkPOS2\\\\ArkPOS2-esp\\\\build\\\\bootloader\\\\bootloader_support"
.LASF11:
	.string	"uint8_t"
.LASF45:
	.string	"num_partitions"
.LASF4:
	.string	"__uint16_t"
.LASF37:
	.string	"chip_size"
.LASF28:
	.string	"esp_partition_info_t"
.LASF49:
	.string	"esp_log_timestamp"
.LASF22:
	.string	"esp_partition_pos_t"
.LASF32:
	.string	"ESP_LOG_INFO"
.LASF21:
	.string	"size"
.LASF55:
	.string	"g_rom_flashchip"
.LASF17:
	.string	"long unsigned int"
.LASF5:
	.string	"short unsigned int"
.LASF38:
	.string	"block_size"
.LASF43:
	.string	"partition_table"
.LASF36:
	.string	"device_id"
.LASF52:
	.string	"C:/esp/esp-idf/components/bootloader_support/src/flash_partitions.c"
.LASF1:
	.string	"unsigned char"
.LASF46:
	.string	"num_parts"
.LASF42:
	.string	"esp_rom_spiflash_chip_t"
.LASF51:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -ggdb -Og -Og -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF7:
	.string	"__uint32_t"
.LASF41:
	.string	"status_mask"
.LASF54:
	.string	"esp_partition_table_basic_verify"
.LASF39:
	.string	"sector_size"
.LASF8:
	.string	"unsigned int"
.LASF27:
	.string	"flags"
.LASF33:
	.string	"ESP_LOG_DEBUG"
.LASF10:
	.string	"long long unsigned int"
.LASF25:
	.string	"subtype"
.LASF50:
	.string	"ets_printf"
.LASF13:
	.string	"int32_t"
.LASF16:
	.string	"sizetype"
.LASF9:
	.string	"long long int"
.LASF29:
	.string	"ESP_LOG_NONE"
.LASF20:
	.string	"offset"
.LASF24:
	.string	"type"
.LASF2:
	.string	"short int"
.LASF44:
	.string	"log_errors"
.LASF12:
	.string	"uint16_t"
.LASF14:
	.string	"uint32_t"
.LASF15:
	.string	"long int"
.LASF18:
	.string	"char"
.LASF23:
	.string	"magic"
.LASF0:
	.string	"signed char"
.LASF47:
	.string	"part"
.LASF26:
	.string	"label"
.LASF48:
	.string	"_Bool"
.LASF34:
	.string	"ESP_LOG_VERBOSE"
.LASF40:
	.string	"page_size"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-73-ge28a011) 5.2.0"
