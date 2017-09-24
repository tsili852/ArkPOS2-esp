	.file	"vfs_fat_spiflash.c"
	.text
.Ltext0:
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC0:
	.string	"vfs_fat_spiflash"
	.align	4
.LC2:
	.string	"\033[0;31mE (%d) %s: Failed to find FATFS partition (type='data', subtype='fat', partition_label='%s'). Check the partition table.\033[0m\n"
	.align	4
.LC4:
	.string	"\033[0;31mE (%d) %s: failed to mount wear levelling layer. result = %i\033[0m\n"
	.align	4
.LC6:
	.string	"\033[0;31mE (%d) %s: ff_diskio_register_wl_partition failed pdrv=%i, error - 0x(%x)\033[0m\n"
	.align	4
.LC8:
	.string	"\033[0;33mW (%d) %s: f_mount failed (%d)\033[0m\n"
	.align	4
.LC11:
	.string	"\033[0;32mI (%d) %s: Formatting FATFS partition\033[0m\n"
	.align	4
.LC13:
	.string	"\033[0;31mE (%d) %s: f_mkfs failed (%d)\033[0m\n"
	.align	4
.LC15:
	.string	"\033[0;32mI (%d) %s: Mounting again\033[0m\n"
	.align	4
.LC17:
	.string	"\033[0;31mE (%d) %s: f_mount failed after formatting (%d)\033[0m\n"
	.section	.text.esp_vfs_fat_spiflash_mount,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.literal .LC3, .LC2
	.literal .LC5, .LC4
	.literal .LC7, .LC6
	.literal .LC9, .LC8
	.literal .LC10, 4096
	.literal .LC12, .LC11
	.literal .LC14, .LC13
	.literal .LC16, .LC15
	.literal .LC18, .LC17
	.align	4
	.global	esp_vfs_fat_spiflash_mount
	.type	esp_vfs_fat_spiflash_mount, @function
esp_vfs_fat_spiflash_mount:
.LFB11:
	.file 1 "C:/esp/esp-idf/components/fatfs/src/vfs_fat_spiflash.c"
	.loc 1 30 0
.LVL0:
	entry	sp, 64
.LCFI0:
	mov.n	a6, a2
.LVL1:
	.loc 1 35 0
	beqz.n	a3, .L10
	movi	a11, 0xff
	j	.L2
.L10:
	movi	a11, 0x81
.L2:
.LVL2:
	.loc 1 37 0 discriminator 4
	mov.n	a12, a3
	movi.n	a10, 1
	call8	esp_partition_find_first
.LVL3:
	.loc 1 39 0 discriminator 4
	bnez.n	a10, .L3
	.loc 1 40 0 discriminator 1
	call8	esp_log_timestamp
.LVL4:
	l32r	a11, .LC1
	mov.n	a15, a3
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC3
	movi.n	a10, 1
	call8	esp_log_write
.LVL5:
	.loc 1 41 0 discriminator 1
	movi	a2, 0x105
.LVL6:
	retw.n
.LVL7:
.L3:
	.loc 1 44 0
	mov.n	a11, a5
	call8	wl_mount
.LVL8:
	mov.n	a2, a10
.LVL9:
	.loc 1 45 0
	beqz.n	a10, .L5
	.loc 1 46 0 discriminator 1
	call8	esp_log_timestamp
.LVL10:
	l32r	a11, .LC1
	mov.n	a15, a2
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC5
	movi.n	a10, 1
	call8	esp_log_write
.LVL11:
	.loc 1 47 0 discriminator 1
	retw.n
.L5:
	.loc 1 50 0
	movi.n	a2, -1
.LVL12:
	s8i	a2, sp, 16
	.loc 1 51 0
	addi	a10, sp, 16
.LVL13:
	call8	ff_diskio_get_drive
.LVL14:
	mov.n	a2, a10
	bnez.n	a10, .L11
	.loc 1 56 0
	l8ui	a10, sp, 16
	addi	a3, a10, 48
.LVL15:
	s8i	a3, sp, 17
	movi.n	a3, 0x3a
	s8i	a3, sp, 18
	movi.n	a3, 0
	s8i	a3, sp, 19
	.loc 1 58 0
	l32i.n	a11, a5, 0
	call8	ff_diskio_register_wl_partition
.LVL16:
	mov.n	a3, a10
.LVL17:
	.loc 1 59 0
	beqz.n	a10, .L6
	.loc 1 60 0 discriminator 1
	call8	esp_log_timestamp
.LVL18:
	l8ui	a15, sp, 16
	l32r	a11, .LC1
	s32i.n	a3, sp, 0
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC7
	movi.n	a10, 1
	call8	esp_log_write
.LVL19:
	.loc 1 33 0 discriminator 1
	movi.n	a4, 0
.LVL20:
	.loc 1 61 0 discriminator 1
	j	.L7
.LVL21:
.L6:
	.loc 1 64 0
	addi	a13, sp, 20
	l32i.n	a12, a4, 4
	addi	a11, sp, 17
	mov.n	a10, a6
	call8	esp_vfs_fat_register
.LVL22:
	mov.n	a3, a10
.LVL23:
	.loc 1 65 0
	movi	a5, 0x103
.LVL24:
	beq	a10, a5, .L8
	.loc 1 67 0
	bnez.n	a10, .L12
.L8:
	.loc 1 73 0
	movi.n	a12, 1
	addi	a11, sp, 17
	l32i.n	a10, sp, 20
	call8	f_mount
.LVL25:
	mov.n	a3, a10
.LVL26:
	.loc 1 74 0
	beqz.n	a10, .L4
	.loc 1 75 0 discriminator 1
	call8	esp_log_timestamp
.LVL27:
	l32r	a11, .LC1
	mov.n	a15, a3
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC9
	movi.n	a10, 2
	call8	esp_log_write
.LVL28:
	.loc 1 76 0 discriminator 1
	movi.n	a5, 0xd
	bne	a3, a5, .L13
	l8ui	a3, a4, 0
.LVL29:
	beqz.n	a3, .L14
	.loc 1 80 0
	l32r	a3, .LC10
	mov.n	a10, a3
	call8	malloc
.LVL30:
	mov.n	a4, a10
.LVL31:
	.loc 1 81 0
	call8	esp_log_timestamp
.LVL32:
	l32r	a11, .LC1
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC12
	movi.n	a10, 3
	call8	esp_log_write
.LVL33:
	.loc 1 82 0
	mov.n	a14, a3
	mov.n	a13, a4
	mov.n	a12, a3
	movi.n	a11, 0xf
	addi	a10, sp, 17
	call8	f_mkfs
.LVL34:
	mov.n	a3, a10
.LVL35:
	.loc 1 83 0
	beqz.n	a10, .L9
.LVL36:
	.loc 1 85 0
	call8	esp_log_timestamp
.LVL37:
	l32r	a11, .LC1
	mov.n	a15, a3
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC14
	movi.n	a10, 1
	call8	esp_log_write
.LVL38:
	.loc 1 84 0
	movi.n	a3, -1
.LVL39:
	j	.L7
.LVL40:
.L9:
	.loc 1 88 0
	mov.n	a10, a4
	call8	free
.LVL41:
	.loc 1 90 0
	call8	esp_log_timestamp
.LVL42:
	l32r	a11, .LC1
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC16
	movi.n	a10, 3
	call8	esp_log_write
.LVL43:
	.loc 1 91 0
	movi.n	a12, 0
	addi	a11, sp, 17
	l32i.n	a10, sp, 20
	call8	f_mount
.LVL44:
	mov.n	a3, a10
.LVL45:
	.loc 1 92 0
	beqz.n	a10, .L4
.LVL46:
	.loc 1 94 0
	call8	esp_log_timestamp
.LVL47:
	l32r	a11, .LC1
	mov.n	a15, a3
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC18
	movi.n	a10, 1
	call8	esp_log_write
.LVL48:
	.loc 1 89 0
	movi.n	a4, 0
	.loc 1 93 0
	movi.n	a3, -1
.LVL49:
	j	.L7
.LVL50:
.L12:
	.loc 1 33 0
	movi.n	a4, 0
.LVL51:
	j	.L7
.LVL52:
.L13:
	movi.n	a4, 0
.LVL53:
	.loc 1 77 0
	movi.n	a3, -1
.LVL54:
	j	.L7
.LVL55:
.L14:
	.loc 1 33 0
	movi.n	a4, 0
.LVL56:
	.loc 1 77 0
	movi.n	a3, -1
.LVL57:
.L7:
	.loc 1 101 0
	mov.n	a10, a4
	call8	free
.LVL58:
	.loc 1 102 0
	mov.n	a10, a6
	call8	esp_vfs_fat_unregister_path
.LVL59:
	.loc 1 103 0
	movi.n	a11, 0
	l8ui	a10, sp, 16
	call8	ff_diskio_register
.LVL60:
	.loc 1 104 0
	mov.n	a2, a3
	retw.n
.LVL61:
.L11:
	.loc 1 53 0
	movi	a2, 0x101
.LVL62:
.L4:
	.loc 1 105 0
	retw.n
.LFE11:
	.size	esp_vfs_fat_spiflash_mount, .-esp_vfs_fat_spiflash_mount
	.section	.text.esp_vfs_fat_spiflash_unmount,"ax",@progbits
	.align	4
	.global	esp_vfs_fat_spiflash_unmount
	.type	esp_vfs_fat_spiflash_unmount, @function
esp_vfs_fat_spiflash_unmount:
.LFB12:
	.loc 1 108 0
.LVL63:
	entry	sp, 48
.LCFI1:
	.loc 1 109 0
	mov.n	a10, a3
	call8	ff_diskio_get_pdrv_wl
.LVL64:
	mov.n	a4, a10
.LVL65:
	.loc 1 110 0
	movi	a8, 0xff
	beq	a10, a8, .L17
	.loc 1 113 0
	addi	a8, a10, 48
	s8i	a8, sp, 0
	movi.n	a8, 0x3a
	s8i	a8, sp, 1
	movi.n	a8, 0
	s8i	a8, sp, 2
	.loc 1 115 0
	movi.n	a12, 0
	mov.n	a11, sp
	mov.n	a10, a12
	call8	f_mount
.LVL66:
	.loc 1 116 0
	movi.n	a11, 0
	mov.n	a10, a4
	call8	ff_diskio_register
.LVL67:
	.loc 1 118 0
	mov.n	a10, a3
	call8	wl_unmount
.LVL68:
	mov.n	a4, a10
.LVL69:
	.loc 1 119 0
	mov.n	a10, a2
	call8	esp_vfs_fat_unregister_path
.LVL70:
	.loc 1 120 0
	beqz.n	a10, .L18
	.loc 1 119 0
	mov.n	a2, a10
.LVL71:
	retw.n
.LVL72:
.L17:
	.loc 1 111 0
	movi	a2, 0x103
.LVL73:
	retw.n
.LVL74:
.L18:
	.loc 1 120 0
	mov.n	a2, a4
.LVL75:
	.loc 1 122 0
	retw.n
.LFE12:
	.size	esp_vfs_fat_spiflash_unmount, .-esp_vfs_fat_spiflash_unmount
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
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI0-.LFB11
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI1-.LFB12
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE2:
	.text
.Letext0:
	.file 2 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 3 "C:/esp/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "C:/esp/esp-idf/components/newlib/include/stdint.h"
	.file 5 "C:/esp/esp-idf/components/log/include/esp_log.h"
	.file 6 "C:/esp/esp-idf/components/esp32/include/esp_err.h"
	.file 7 "C:/esp/esp-idf/components/freertos/include/freertos/queue.h"
	.file 8 "C:/esp/esp-idf/components/freertos/include/freertos/semphr.h"
	.file 9 "C:/esp/esp-idf/components/fatfs/src/integer.h"
	.file 10 "C:/esp/esp-idf/components/fatfs/src/ff.h"
	.file 11 "C:/esp/esp-idf/components/spi_flash/include/esp_partition.h"
	.file 12 "C:/esp/esp-idf/components/wear_levelling/include/wear_levelling.h"
	.file 13 "C:/esp/esp-idf/components/fatfs/src/esp_vfs_fat.h"
	.file 14 "C:/esp/esp-idf/components/fatfs/src/diskio.h"
	.file 15 "C:/esp/esp-idf/components/fatfs/src/diskio_spiflash.h"
	.file 16 "C:/esp/esp-idf/components/newlib/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xa2c
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF141
	.byte	0xc
	.4byte	.LASF142
	.4byte	.LASF143
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF5
	.byte	0x2
	.byte	0xd8
	.4byte	0x30
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x2
	.4byte	.LASF6
	.byte	0x3
	.byte	0x19
	.4byte	0x3e
	.uleb128 0x2
	.4byte	.LASF7
	.byte	0x3
	.byte	0x1a
	.4byte	0x30
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa2
	.uleb128 0x7
	.4byte	0x95
	.uleb128 0x2
	.4byte	.LASF14
	.byte	0x4
	.byte	0x2c
	.4byte	0x5a
	.uleb128 0x2
	.4byte	.LASF15
	.byte	0x4
	.byte	0x2d
	.4byte	0x65
	.uleb128 0x8
	.byte	0x4
	.4byte	0x30
	.byte	0x5
	.byte	0x1f
	.4byte	0xee
	.uleb128 0x9
	.4byte	.LASF16
	.byte	0
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x5
	.byte	0
	.uleb128 0x2
	.4byte	.LASF22
	.byte	0x5
	.byte	0x26
	.4byte	0xbd
	.uleb128 0x2
	.4byte	.LASF23
	.byte	0x6
	.byte	0x18
	.4byte	0xa7
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF24
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.4byte	.LASF25
	.uleb128 0x2
	.4byte	.LASF26
	.byte	0x7
	.byte	0x58
	.4byte	0x8c
	.uleb128 0x2
	.4byte	.LASF27
	.byte	0x8
	.byte	0x4f
	.4byte	0x112
	.uleb128 0x2
	.4byte	.LASF28
	.byte	0x9
	.byte	0x16
	.4byte	0x4c
	.uleb128 0x2
	.4byte	.LASF29
	.byte	0x9
	.byte	0x1a
	.4byte	0x37
	.uleb128 0x2
	.4byte	.LASF30
	.byte	0x9
	.byte	0x1f
	.4byte	0x8e
	.uleb128 0xa
	.2byte	0x1038
	.byte	0xa
	.byte	0x5f
	.4byte	0x242
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0xa
	.byte	0x60
	.4byte	0x128
	.byte	0
	.uleb128 0xc
	.string	"drv"
	.byte	0xa
	.byte	0x61
	.4byte	0x128
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0xa
	.byte	0x62
	.4byte	0x128
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0xa
	.byte	0x63
	.4byte	0x128
	.byte	0x3
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0xa
	.byte	0x64
	.4byte	0x128
	.byte	0x4
	.uleb128 0xc
	.string	"id"
	.byte	0xa
	.byte	0x65
	.4byte	0x133
	.byte	0x6
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0xa
	.byte	0x66
	.4byte	0x133
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0xa
	.byte	0x67
	.4byte	0x133
	.byte	0xa
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0xa
	.byte	0x69
	.4byte	0x133
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0xa
	.byte	0x72
	.4byte	0x11d
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0xa
	.byte	0x75
	.4byte	0x13e
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0xa
	.byte	0x76
	.4byte	0x13e
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF41
	.byte	0xa
	.byte	0x80
	.4byte	0x13e
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0xa
	.byte	0x81
	.4byte	0x13e
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF43
	.byte	0xa
	.byte	0x82
	.4byte	0x13e
	.byte	0x24
	.uleb128 0xb
	.4byte	.LASF44
	.byte	0xa
	.byte	0x83
	.4byte	0x13e
	.byte	0x28
	.uleb128 0xb
	.4byte	.LASF45
	.byte	0xa
	.byte	0x84
	.4byte	0x13e
	.byte	0x2c
	.uleb128 0xb
	.4byte	.LASF46
	.byte	0xa
	.byte	0x85
	.4byte	0x13e
	.byte	0x30
	.uleb128 0xb
	.4byte	.LASF47
	.byte	0xa
	.byte	0x86
	.4byte	0x13e
	.byte	0x34
	.uleb128 0xc
	.string	"win"
	.byte	0xa
	.byte	0x87
	.4byte	0x242
	.byte	0x38
	.byte	0
	.uleb128 0xd
	.4byte	0x128
	.4byte	0x253
	.uleb128 0xe
	.4byte	0x85
	.2byte	0xfff
	.byte	0
	.uleb128 0x2
	.4byte	.LASF48
	.byte	0xa
	.byte	0x88
	.4byte	0x149
	.uleb128 0x6
	.byte	0x4
	.4byte	0x253
	.uleb128 0x8
	.byte	0x4
	.4byte	0x30
	.byte	0xa
	.byte	0xdf
	.4byte	0x2e9
	.uleb128 0x9
	.4byte	.LASF49
	.byte	0
	.uleb128 0x9
	.4byte	.LASF50
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF51
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF52
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF53
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF54
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF55
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF56
	.byte	0x7
	.uleb128 0x9
	.4byte	.LASF57
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF58
	.byte	0x9
	.uleb128 0x9
	.4byte	.LASF59
	.byte	0xa
	.uleb128 0x9
	.4byte	.LASF60
	.byte	0xb
	.uleb128 0x9
	.4byte	.LASF61
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF62
	.byte	0xd
	.uleb128 0x9
	.4byte	.LASF63
	.byte	0xe
	.uleb128 0x9
	.4byte	.LASF64
	.byte	0xf
	.uleb128 0x9
	.4byte	.LASF65
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF66
	.byte	0x11
	.uleb128 0x9
	.4byte	.LASF67
	.byte	0x12
	.uleb128 0x9
	.4byte	.LASF68
	.byte	0x13
	.byte	0
	.uleb128 0x2
	.4byte	.LASF69
	.byte	0xa
	.byte	0xf4
	.4byte	0x264
	.uleb128 0x8
	.byte	0x4
	.4byte	0x30
	.byte	0xb
	.byte	0x26
	.4byte	0x30d
	.uleb128 0x9
	.4byte	.LASF70
	.byte	0
	.uleb128 0x9
	.4byte	.LASF71
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.4byte	.LASF72
	.byte	0xb
	.byte	0x29
	.4byte	0x2f4
	.uleb128 0x8
	.byte	0x4
	.4byte	0x30
	.byte	0xb
	.byte	0x2f
	.4byte	0x3cd
	.uleb128 0x9
	.4byte	.LASF73
	.byte	0
	.uleb128 0x9
	.4byte	.LASF74
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF75
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF76
	.byte	0x11
	.uleb128 0x9
	.4byte	.LASF77
	.byte	0x12
	.uleb128 0x9
	.4byte	.LASF78
	.byte	0x13
	.uleb128 0x9
	.4byte	.LASF79
	.byte	0x14
	.uleb128 0x9
	.4byte	.LASF80
	.byte	0x15
	.uleb128 0x9
	.4byte	.LASF81
	.byte	0x16
	.uleb128 0x9
	.4byte	.LASF82
	.byte	0x17
	.uleb128 0x9
	.4byte	.LASF83
	.byte	0x18
	.uleb128 0x9
	.4byte	.LASF84
	.byte	0x19
	.uleb128 0x9
	.4byte	.LASF85
	.byte	0x1a
	.uleb128 0x9
	.4byte	.LASF86
	.byte	0x1b
	.uleb128 0x9
	.4byte	.LASF87
	.byte	0x1c
	.uleb128 0x9
	.4byte	.LASF88
	.byte	0x1d
	.uleb128 0x9
	.4byte	.LASF89
	.byte	0x1e
	.uleb128 0x9
	.4byte	.LASF90
	.byte	0x1f
	.uleb128 0x9
	.4byte	.LASF91
	.byte	0x20
	.uleb128 0x9
	.4byte	.LASF92
	.byte	0x20
	.uleb128 0x9
	.4byte	.LASF93
	.byte	0
	.uleb128 0x9
	.4byte	.LASF94
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF95
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF96
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF97
	.byte	0x80
	.uleb128 0x9
	.4byte	.LASF98
	.byte	0x81
	.uleb128 0x9
	.4byte	.LASF99
	.byte	0x82
	.uleb128 0x9
	.4byte	.LASF100
	.byte	0xff
	.byte	0
	.uleb128 0x2
	.4byte	.LASF101
	.byte	0xb
	.byte	0x4f
	.4byte	0x318
	.uleb128 0xf
	.byte	0x24
	.byte	0xb
	.byte	0x62
	.4byte	0x429
	.uleb128 0xb
	.4byte	.LASF102
	.byte	0xb
	.byte	0x63
	.4byte	0x30d
	.byte	0
	.uleb128 0xb
	.4byte	.LASF103
	.byte	0xb
	.byte	0x64
	.4byte	0x3cd
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF104
	.byte	0xb
	.byte	0x65
	.4byte	0xb2
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF105
	.byte	0xb
	.byte	0x66
	.4byte	0xb2
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF106
	.byte	0xb
	.byte	0x67
	.4byte	0x429
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF107
	.byte	0xb
	.byte	0x68
	.4byte	0x104
	.byte	0x21
	.byte	0
	.uleb128 0xd
	.4byte	0x95
	.4byte	0x439
	.uleb128 0x10
	.4byte	0x85
	.byte	0x10
	.byte	0
	.uleb128 0x2
	.4byte	.LASF108
	.byte	0xb
	.byte	0x69
	.4byte	0x3d8
	.uleb128 0x2
	.4byte	.LASF109
	.byte	0xc
	.byte	0x1c
	.4byte	0xa7
	.uleb128 0xf
	.byte	0x8
	.byte	0xd
	.byte	0x5a
	.4byte	0x470
	.uleb128 0xb
	.4byte	.LASF110
	.byte	0xd
	.byte	0x5b
	.4byte	0x104
	.byte	0
	.uleb128 0xb
	.4byte	.LASF111
	.byte	0xd
	.byte	0x5c
	.4byte	0x3e
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF112
	.byte	0xd
	.byte	0x5d
	.4byte	0x44f
	.uleb128 0x11
	.4byte	.LASF123
	.byte	0x1
	.byte	0x1a
	.4byte	0xf9
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x860
	.uleb128 0x12
	.4byte	.LASF113
	.byte	0x1
	.byte	0x1a
	.4byte	0x9c
	.4byte	.LLST0
	.uleb128 0x12
	.4byte	.LASF114
	.byte	0x1
	.byte	0x1b
	.4byte	0x9c
	.4byte	.LLST1
	.uleb128 0x12
	.4byte	.LASF115
	.byte	0x1
	.byte	0x1c
	.4byte	0x860
	.4byte	.LLST2
	.uleb128 0x12
	.4byte	.LASF116
	.byte	0x1
	.byte	0x1d
	.4byte	0x86b
	.4byte	.LLST3
	.uleb128 0x13
	.4byte	.LASF117
	.byte	0x1
	.byte	0x1f
	.4byte	0xf9
	.4byte	.LLST4
	.uleb128 0x14
	.4byte	.LASF118
	.byte	0x1
	.byte	0x20
	.4byte	0x871
	.2byte	0x1000
	.uleb128 0x13
	.4byte	.LASF119
	.byte	0x1
	.byte	0x21
	.4byte	0x8c
	.4byte	.LLST5
	.uleb128 0x13
	.4byte	.LASF103
	.byte	0x1
	.byte	0x23
	.4byte	0x3cd
	.4byte	.LLST6
	.uleb128 0x13
	.4byte	.LASF120
	.byte	0x1
	.byte	0x25
	.4byte	0x876
	.4byte	.LLST7
	.uleb128 0x15
	.4byte	.LASF121
	.byte	0x1
	.byte	0x32
	.4byte	0x128
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x16
	.string	"drv"
	.byte	0x1
	.byte	0x38
	.4byte	0x881
	.uleb128 0x2
	.byte	0x91
	.sleb128 -47
	.uleb128 0x17
	.4byte	.LASF144
	.byte	0x1
	.byte	0x64
	.4byte	.L7
	.uleb128 0x16
	.string	"fs"
	.byte	0x1
	.byte	0x3f
	.4byte	0x25e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x13
	.4byte	.LASF122
	.byte	0x1
	.byte	0x49
	.4byte	0x2e9
	.4byte	.LLST8
	.uleb128 0x18
	.4byte	.LVL3
	.4byte	0x988
	.4byte	0x575
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL4
	.4byte	0x993
	.uleb128 0x18
	.4byte	.LVL5
	.4byte	0x99e
	.4byte	0x5b2
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL8
	.4byte	0x9a9
	.4byte	0x5c6
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL10
	.4byte	0x993
	.uleb128 0x18
	.4byte	.LVL11
	.4byte	0x99e
	.4byte	0x603
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL14
	.4byte	0x9b4
	.4byte	0x617
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL16
	.4byte	0x9bf
	.uleb128 0x1a
	.4byte	.LVL18
	.4byte	0x993
	.uleb128 0x18
	.4byte	.LVL19
	.4byte	0x99e
	.4byte	0x65e
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x19
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL22
	.4byte	0x9ca
	.4byte	0x67e
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -47
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x18
	.4byte	.LVL25
	.4byte	0x9d5
	.4byte	0x697
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -47
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL27
	.4byte	0x993
	.uleb128 0x18
	.4byte	.LVL28
	.4byte	0x99e
	.4byte	0x6d4
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL30
	.4byte	0x9e1
	.4byte	0x6e8
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL32
	.4byte	0x993
	.uleb128 0x18
	.4byte	.LVL33
	.4byte	0x99e
	.4byte	0x71f
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL34
	.4byte	0x9ec
	.4byte	0x74a
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -47
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x3f
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL37
	.4byte	0x993
	.uleb128 0x18
	.4byte	.LVL38
	.4byte	0x99e
	.4byte	0x787
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC13
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL41
	.4byte	0x9f8
	.4byte	0x79b
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL42
	.4byte	0x993
	.uleb128 0x18
	.4byte	.LVL43
	.4byte	0x99e
	.4byte	0x7d2
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL44
	.4byte	0x9d5
	.4byte	0x7eb
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -47
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL47
	.4byte	0x993
	.uleb128 0x18
	.4byte	.LVL48
	.4byte	0x99e
	.4byte	0x828
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL58
	.4byte	0x9f8
	.4byte	0x83c
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL59
	.4byte	0xa03
	.4byte	0x850
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL60
	.4byte	0xa0e
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x866
	.uleb128 0x7
	.4byte	0x470
	.uleb128 0x6
	.byte	0x4
	.4byte	0x444
	.uleb128 0x7
	.4byte	0x25
	.uleb128 0x6
	.byte	0x4
	.4byte	0x87c
	.uleb128 0x7
	.4byte	0x439
	.uleb128 0xd
	.4byte	0x95
	.4byte	0x891
	.uleb128 0x10
	.4byte	0x85
	.byte	0x2
	.byte	0
	.uleb128 0x11
	.4byte	.LASF124
	.byte	0x1
	.byte	0x6b
	.4byte	0xf9
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x971
	.uleb128 0x12
	.4byte	.LASF113
	.byte	0x1
	.byte	0x6b
	.4byte	0x9c
	.4byte	.LLST9
	.uleb128 0x1c
	.4byte	.LASF116
	.byte	0x1
	.byte	0x6b
	.4byte	0x444
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x13
	.4byte	.LASF121
	.byte	0x1
	.byte	0x6d
	.4byte	0x128
	.4byte	.LLST10
	.uleb128 0x16
	.string	"drv"
	.byte	0x1
	.byte	0x71
	.4byte	0x881
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x13
	.4byte	.LASF125
	.byte	0x1
	.byte	0x76
	.4byte	0xf9
	.4byte	.LLST11
	.uleb128 0x1d
	.string	"err"
	.byte	0x1
	.byte	0x77
	.4byte	0xf9
	.4byte	.LLST12
	.uleb128 0x18
	.4byte	.LVL64
	.4byte	0xa19
	.4byte	0x915
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL66
	.4byte	0x9d5
	.4byte	0x933
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x18
	.4byte	.LVL67
	.4byte	0xa0e
	.4byte	0x94c
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x18
	.4byte	.LVL68
	.4byte	0xa24
	.4byte	0x960
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL70
	.4byte	0xa03
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x16
	.string	"TAG"
	.byte	0x1
	.byte	0x19
	.4byte	0x983
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC0
	.byte	0x9f
	.uleb128 0x7
	.4byte	0x9c
	.uleb128 0x1e
	.4byte	.LASF126
	.4byte	.LASF126
	.byte	0xb
	.byte	0x89
	.uleb128 0x1e
	.4byte	.LASF127
	.4byte	.LASF127
	.byte	0x5
	.byte	0x4c
	.uleb128 0x1e
	.4byte	.LASF128
	.4byte	.LASF128
	.byte	0x5
	.byte	0x60
	.uleb128 0x1e
	.4byte	.LASF129
	.4byte	.LASF129
	.byte	0xc
	.byte	0x2b
	.uleb128 0x1e
	.4byte	.LASF130
	.4byte	.LASF130
	.byte	0xe
	.byte	0x5a
	.uleb128 0x1e
	.4byte	.LASF131
	.4byte	.LASF131
	.byte	0xf
	.byte	0x20
	.uleb128 0x1e
	.4byte	.LASF132
	.4byte	.LASF132
	.byte	0xd
	.byte	0x33
	.uleb128 0x1f
	.4byte	.LASF133
	.4byte	.LASF133
	.byte	0xa
	.2byte	0x115
	.uleb128 0x1e
	.4byte	.LASF134
	.4byte	.LASF134
	.byte	0x10
	.byte	0x65
	.uleb128 0x1f
	.4byte	.LASF135
	.4byte	.LASF135
	.byte	0xa
	.2byte	0x116
	.uleb128 0x1e
	.4byte	.LASF136
	.4byte	.LASF136
	.byte	0x10
	.byte	0x5a
	.uleb128 0x1e
	.4byte	.LASF137
	.4byte	.LASF137
	.byte	0xd
	.byte	0x54
	.uleb128 0x1e
	.4byte	.LASF138
	.4byte	.LASF138
	.byte	0xe
	.byte	0x46
	.uleb128 0x1e
	.4byte	.LASF139
	.4byte	.LASF139
	.byte	0xf
	.byte	0x21
	.uleb128 0x1e
	.4byte	.LASF140
	.4byte	.LASF140
	.byte	0xc
	.byte	0x36
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
	.uleb128 0x3
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x17
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.4byte	.LVL0
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL9
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL15
	.4byte	.LVL61
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL62
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL31
	.4byte	.LVL50
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL53
	.4byte	.LVL55
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL56
	.4byte	.LVL61
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL62
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL24
	.4byte	.LVL61
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL62
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL1
	.4byte	.LVL9
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL17
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL36
	.4byte	.LVL40
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL50
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL50
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL57
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL1
	.4byte	.LVL31
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL41
	.4byte	.LVL57
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL57
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL61
	.4byte	.LFE11
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL2
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL3
	.4byte	.LVL4-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL7
	.4byte	.LVL8-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL26
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL35
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL40
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL52
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL63
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL73
	.4byte	.LVL74
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL74
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL75
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL65
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL72
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL69
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL74
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL70
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL74
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x24
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF52:
	.string	"FR_NOT_READY"
.LASF4:
	.string	"short int"
.LASF134:
	.string	"malloc"
.LASF122:
	.string	"fresult"
.LASF37:
	.string	"ssize"
.LASF5:
	.string	"size_t"
.LASF31:
	.string	"fs_type"
.LASF119:
	.string	"workbuf"
.LASF102:
	.string	"type"
.LASF35:
	.string	"n_rootdir"
.LASF129:
	.string	"wl_mount"
.LASF9:
	.string	"long long unsigned int"
.LASF128:
	.string	"esp_log_write"
.LASF137:
	.string	"esp_vfs_fat_unregister_path"
.LASF26:
	.string	"QueueHandle_t"
.LASF58:
	.string	"FR_INVALID_OBJECT"
.LASF136:
	.string	"free"
.LASF67:
	.string	"FR_TOO_MANY_OPEN_FILES"
.LASF20:
	.string	"ESP_LOG_DEBUG"
.LASF8:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF142:
	.string	"C:/esp/esp-idf/components/fatfs/src/vfs_fat_spiflash.c"
.LASF38:
	.string	"sobj"
.LASF68:
	.string	"FR_INVALID_PARAMETER"
.LASF42:
	.string	"fsize"
.LASF41:
	.string	"n_fatent"
.LASF100:
	.string	"ESP_PARTITION_SUBTYPE_ANY"
.LASF10:
	.string	"long int"
.LASF73:
	.string	"ESP_PARTITION_SUBTYPE_APP_FACTORY"
.LASF135:
	.string	"f_mkfs"
.LASF93:
	.string	"ESP_PARTITION_SUBTYPE_DATA_OTA"
.LASF91:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_MAX"
.LASF62:
	.string	"FR_NO_FILESYSTEM"
.LASF88:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_13"
.LASF66:
	.string	"FR_NOT_ENOUGH_CORE"
.LASF57:
	.string	"FR_EXIST"
.LASF44:
	.string	"fatbase"
.LASF30:
	.string	"DWORD"
.LASF99:
	.string	"ESP_PARTITION_SUBTYPE_DATA_SPIFFS"
.LASF74:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_MIN"
.LASF7:
	.string	"__uint32_t"
.LASF36:
	.string	"csize"
.LASF121:
	.string	"pdrv"
.LASF40:
	.string	"free_clst"
.LASF28:
	.string	"BYTE"
.LASF118:
	.string	"workbuf_size"
.LASF0:
	.string	"unsigned int"
.LASF111:
	.string	"max_files"
.LASF12:
	.string	"long unsigned int"
.LASF138:
	.string	"ff_diskio_register"
.LASF98:
	.string	"ESP_PARTITION_SUBTYPE_DATA_FAT"
.LASF105:
	.string	"size"
.LASF1:
	.string	"short unsigned int"
.LASF46:
	.string	"database"
.LASF97:
	.string	"ESP_PARTITION_SUBTYPE_DATA_ESPHTTPD"
.LASF113:
	.string	"base_path"
.LASF131:
	.string	"ff_diskio_register_wl_partition"
.LASF51:
	.string	"FR_INT_ERR"
.LASF50:
	.string	"FR_DISK_ERR"
.LASF47:
	.string	"winsect"
.LASF106:
	.string	"label"
.LASF143:
	.string	"C:\\\\esp\\\\ArkPOS2-esp\\\\build\\\\fatfs"
.LASF29:
	.string	"WORD"
.LASF103:
	.string	"subtype"
.LASF59:
	.string	"FR_WRITE_PROTECTED"
.LASF48:
	.string	"FATFS"
.LASF126:
	.string	"esp_partition_find_first"
.LASF116:
	.string	"wl_handle"
.LASF19:
	.string	"ESP_LOG_INFO"
.LASF11:
	.string	"sizetype"
.LASF115:
	.string	"mount_config"
.LASF94:
	.string	"ESP_PARTITION_SUBTYPE_DATA_PHY"
.LASF104:
	.string	"address"
.LASF64:
	.string	"FR_TIMEOUT"
.LASF45:
	.string	"dirbase"
.LASF71:
	.string	"ESP_PARTITION_TYPE_DATA"
.LASF53:
	.string	"FR_NO_FILE"
.LASF22:
	.string	"esp_log_level_t"
.LASF120:
	.string	"data_partition"
.LASF123:
	.string	"esp_vfs_fat_spiflash_mount"
.LASF70:
	.string	"ESP_PARTITION_TYPE_APP"
.LASF61:
	.string	"FR_NOT_ENABLED"
.LASF39:
	.string	"last_clst"
.LASF25:
	.string	"float"
.LASF133:
	.string	"f_mount"
.LASF24:
	.string	"_Bool"
.LASF14:
	.string	"int32_t"
.LASF3:
	.string	"unsigned char"
.LASF75:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_0"
.LASF72:
	.string	"esp_partition_type_t"
.LASF77:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_2"
.LASF141:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF79:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_4"
.LASF80:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_5"
.LASF43:
	.string	"volbase"
.LASF82:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_7"
.LASF83:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_8"
.LASF84:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_9"
.LASF127:
	.string	"esp_log_timestamp"
.LASF17:
	.string	"ESP_LOG_ERROR"
.LASF60:
	.string	"FR_INVALID_DRIVE"
.LASF95:
	.string	"ESP_PARTITION_SUBTYPE_DATA_NVS"
.LASF63:
	.string	"FR_MKFS_ABORTED"
.LASF132:
	.string	"esp_vfs_fat_register"
.LASF65:
	.string	"FR_LOCKED"
.LASF107:
	.string	"encrypted"
.LASF33:
	.string	"wflag"
.LASF114:
	.string	"partition_label"
.LASF144:
	.string	"fail"
.LASF139:
	.string	"ff_diskio_get_pdrv_wl"
.LASF125:
	.string	"err_drv"
.LASF13:
	.string	"char"
.LASF27:
	.string	"SemaphoreHandle_t"
.LASF55:
	.string	"FR_INVALID_NAME"
.LASF21:
	.string	"ESP_LOG_VERBOSE"
.LASF124:
	.string	"esp_vfs_fat_spiflash_unmount"
.LASF101:
	.string	"esp_partition_subtype_t"
.LASF49:
	.string	"FR_OK"
.LASF16:
	.string	"ESP_LOG_NONE"
.LASF6:
	.string	"__int32_t"
.LASF76:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_1"
.LASF140:
	.string	"wl_unmount"
.LASF78:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_3"
.LASF81:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_6"
.LASF92:
	.string	"ESP_PARTITION_SUBTYPE_APP_TEST"
.LASF34:
	.string	"fsi_flag"
.LASF109:
	.string	"wl_handle_t"
.LASF15:
	.string	"uint32_t"
.LASF85:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_10"
.LASF86:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_11"
.LASF87:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_12"
.LASF18:
	.string	"ESP_LOG_WARN"
.LASF89:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_14"
.LASF90:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_15"
.LASF23:
	.string	"esp_err_t"
.LASF96:
	.string	"ESP_PARTITION_SUBTYPE_DATA_COREDUMP"
.LASF32:
	.string	"n_fats"
.LASF69:
	.string	"FRESULT"
.LASF108:
	.string	"esp_partition_t"
.LASF54:
	.string	"FR_NO_PATH"
.LASF110:
	.string	"format_if_mount_failed"
.LASF112:
	.string	"esp_vfs_fat_mount_config_t"
.LASF130:
	.string	"ff_diskio_get_drive"
.LASF117:
	.string	"result"
.LASF56:
	.string	"FR_DENIED"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-61-gab8375a) 5.2.0"
