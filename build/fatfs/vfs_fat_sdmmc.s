	.file	"vfs_fat_sdmmc.c"
	.text
.Ltext0:
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC3:
	.string	"vfs_fat_sdmmc"
	.align	4
.LC5:
	.string	"\033[0;33mW (%d) %s: failed to mount card (%d)\033[0m\n"
	.align	4
.LC7:
	.string	"\033[0;33mW (%d) %s: partitioning card\033[0m\n"
	.align	4
.LC10:
	.string	"\033[0;33mW (%d) %s: formatting card\033[0m\n"
	.align	4
.LC12:
	.string	"\033[0;33mW (%d) %s: mounting again\033[0m\n"
	.section	.text.esp_vfs_fat_sdmmc_mount,"ax",@progbits
	.literal_position
	.literal .LC0, s_card
	.literal .LC1, s_base_path
	.literal .LC2, s_pdrv
	.literal .LC4, .LC3
	.literal .LC6, .LC5
	.literal .LC8, .LC7
	.literal .LC9, 4096
	.literal .LC11, .LC10
	.literal .LC13, .LC12
	.align	4
	.global	esp_vfs_fat_sdmmc_mount
	.type	esp_vfs_fat_sdmmc_mount, @function
esp_vfs_fat_sdmmc_mount:
.LFB15:
	.file 1 "C:/esp/esp-idf/components/fatfs/src/vfs_fat_sdmmc.c"
	.loc 1 35 0
.LVL0:
	entry	sp, 80
.LCFI0:
	mov.n	a7, a2
.LVL1:
	.loc 1 38 0
	movi.n	a2, 0
.LVL2:
	s32i.n	a2, sp, 0
	.loc 1 40 0
	l32r	a2, .LC0
	l32i.n	a2, a2, 0
	bnez.n	a2, .L10
	.loc 1 45 0
	movi.n	a2, -1
	s8i	a2, sp, 4
	.loc 1 46 0
	addi.n	a10, sp, 4
	call8	ff_diskio_get_drive
.LVL3:
	mov.n	a2, a10
	bnez.n	a10, .L11
	.loc 1 46 0 is_stmt 0 discriminator 1
	l8ui	a9, sp, 4
	movi	a8, 0xff
	beq	a9, a8, .L12
	.loc 1 51 0 is_stmt 1
	mov.n	a10, a7
	call8	strdup
.LVL4:
	l32r	a8, .LC1
	s32i.n	a10, a8, 0
	.loc 1 52 0
	beqz.n	a10, .L13
.LVL5:
	.loc 1 57 0
	movi	a10, 0x6c
	call8	malloc
.LVL6:
	l32r	a8, .LC0
	s32i.n	a10, a8, 0
	.loc 1 58 0
	beqz.n	a10, .L14
	.loc 1 63 0
	l32i.n	a10, a3, 16
	callx8	a10
.LVL7:
	s32i.n	a10, sp, 32
.LVL8:
	.loc 1 64 0
	bnez.n	a10, .L15
	.loc 1 70 0
	l32i.n	a8, a3, 0
	bnei	a8, 8, .L4
	.loc 1 71 0
	mov.n	a11, a4
	l32i.n	a10, a3, 4
.LVL9:
	call8	sdspi_host_init_slot
.LVL10:
	s32i.n	a10, sp, 32
.LVL11:
	j	.L5
.L4:
	.loc 1 74 0
	mov.n	a11, a4
	l32i.n	a10, a3, 4
.LVL12:
	call8	sdmmc_host_init_slot
.LVL13:
	s32i.n	a10, sp, 32
.LVL14:
.L5:
	.loc 1 77 0
	l32i.n	a4, sp, 32
.LVL15:
	bnez.n	a4, .L16
	.loc 1 83 0
	l32r	a4, .LC0
	l32i.n	a11, a4, 0
	mov.n	a10, a3
	call8	sdmmc_card_init
.LVL16:
	s32i.n	a10, sp, 32
.LVL17:
	.loc 1 84 0
	bnez.n	a10, .L17
	.loc 1 88 0
	beqz.n	a6, .L6
	.loc 1 89 0
	l32r	a3, .LC0
.LVL18:
	l32i.n	a3, a3, 0
	s32i.n	a3, a6, 0
.L6:
	.loc 1 92 0
	l32r	a3, .LC0
	l32i.n	a11, a3, 0
	l8ui	a10, sp, 4
.LVL19:
	call8	ff_diskio_register_sdmmc
.LVL20:
	.loc 1 93 0
	l8ui	a3, sp, 4
	l32r	a4, .LC2
	s8i	a3, a4, 0
	.loc 1 95 0
	addi	a3, a3, 48
	s8i	a3, sp, 5
	movi.n	a3, 0x3a
	s8i	a3, sp, 6
	movi.n	a3, 0
	s8i	a3, sp, 7
	.loc 1 98 0
	mov.n	a13, sp
	l32i.n	a12, a5, 4
	addi.n	a11, sp, 5
	mov.n	a10, a7
	call8	esp_vfs_fat_register
.LVL21:
	s32i.n	a10, sp, 32
.LVL22:
	.loc 1 99 0
	movi	a3, 0x103
	beq	a10, a3, .L7
	.loc 1 101 0
	bnez.n	a10, .L18
.L7:
	.loc 1 107 0
	movi.n	a12, 1
	addi.n	a11, sp, 5
	l32i.n	a10, sp, 0
.LVL23:
	call8	f_mount
.LVL24:
	mov.n	a3, a10
.LVL25:
	.loc 1 108 0
	beqz.n	a10, .L2
.LVL26:
.LBB2:
	.loc 1 110 0
	call8	esp_log_timestamp
.LVL27:
	l32r	a11, .LC4
	mov.n	a15, a3
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC6
	movi.n	a10, 2
	call8	esp_log_write
.LVL28:
	.loc 1 111 0
	movi.n	a4, 0xd
	bne	a3, a4, .L19
	.loc 1 111 0 is_stmt 0 discriminator 1
	l8ui	a3, a5, 0
.LVL29:
	beqz.n	a3, .L20
	.loc 1 114 0 is_stmt 1 discriminator 1
	call8	esp_log_timestamp
.LVL30:
	l32r	a11, .LC4
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC8
	movi.n	a10, 2
	call8	esp_log_write
.LVL31:
	.loc 1 115 0 discriminator 1
	movi	a3, 0x64
	s32i.n	a3, sp, 8
	movi.n	a3, 0
	s32i.n	a3, sp, 12
	s32i.n	a3, sp, 16
	s32i.n	a3, sp, 20
	.loc 1 116 0 discriminator 1
	l32r	a10, .LC9
	call8	malloc
.LVL32:
	mov.n	a3, a10
.LVL33:
	.loc 1 117 0 discriminator 1
	mov.n	a12, a10
	addi.n	a11, sp, 8
	l32r	a4, .LC2
	l8ui	a10, a4, 0
	call8	f_fdisk
.LVL34:
	.loc 1 118 0 discriminator 1
	bnez.n	a10, .L8
	.loc 1 123 0 discriminator 1
	call8	esp_log_timestamp
.LVL35:
	l32r	a11, .LC4
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC11
	movi.n	a10, 2
	call8	esp_log_write
.LVL36:
	.loc 1 124 0 discriminator 1
	l32r	a4, .LC0
	l32i.n	a4, a4, 0
	l32r	a14, .LC9
	mov.n	a13, a3
	l32i	a12, a4, 80
	movi.n	a11, 7
	addi.n	a10, sp, 5
	call8	f_mkfs
.LVL37:
	.loc 1 125 0 discriminator 1
	bnez.n	a10, .L8
	.loc 1 130 0
	mov.n	a10, a3
.LVL38:
	call8	free
.LVL39:
	.loc 1 131 0
	call8	esp_log_timestamp
.LVL40:
	l32r	a11, .LC4
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC13
	movi.n	a10, 2
	call8	esp_log_write
.LVL41:
	.loc 1 132 0
	movi.n	a12, 0
	addi.n	a11, sp, 5
	l32i.n	a10, sp, 0
	call8	f_mount
.LVL42:
	.loc 1 133 0
	bnez.n	a10, .L8
	retw.n
.LVL43:
.L19:
.LBE2:
	.loc 1 37 0
	movi.n	a3, 0
.LVL44:
	j	.L8
.L20:
	movi.n	a3, 0
.LVL45:
.L8:
.LBB3:
	movi.n	a2, -1
	s32i.n	a2, sp, 32
	j	.L3
.LVL46:
.L14:
.LBE3:
	.loc 1 59 0
	movi	a3, 0x101
.LVL47:
	s32i.n	a3, sp, 32
	.loc 1 37 0
	movi.n	a3, 0
	j	.L3
.LVL48:
.L15:
	movi.n	a3, 0
.LVL49:
	j	.L3
.LVL50:
.L16:
	movi.n	a3, 0
.LVL51:
	j	.L3
.LVL52:
.L17:
	movi.n	a3, 0
.LVL53:
	j	.L3
.L18:
	movi.n	a3, 0
.LVL54:
.L3:
	.loc 1 142 0
	call8	sdmmc_host_deinit
.LVL55:
	.loc 1 143 0
	mov.n	a10, a3
	call8	free
.LVL56:
	.loc 1 144 0
	l32i.n	a2, sp, 0
	beqz.n	a2, .L9
	.loc 1 145 0
	movi.n	a12, 0
	addi.n	a11, sp, 5
	mov.n	a10, a12
	call8	f_mount
.LVL57:
.L9:
	.loc 1 147 0
	mov.n	a10, a7
	call8	esp_vfs_fat_unregister_path
.LVL58:
	.loc 1 148 0
	movi.n	a11, 0
	l8ui	a10, sp, 4
	call8	ff_diskio_register
.LVL59:
	.loc 1 149 0
	l32r	a2, .LC0
	l32i.n	a10, a2, 0
	call8	free
.LVL60:
	.loc 1 150 0
	movi.n	a3, 0
.LVL61:
	s32i.n	a3, a2, 0
	.loc 1 151 0
	l32i.n	a2, sp, 32
	retw.n
.LVL62:
.L10:
	.loc 1 41 0
	movi	a2, 0x103
	retw.n
.L11:
	.loc 1 48 0
	movi	a2, 0x101
	retw.n
.L12:
	movi	a2, 0x101
	retw.n
.L13:
	.loc 1 54 0
	movi	a2, 0x101
.LVL63:
.L2:
	.loc 1 152 0
	retw.n
.LFE15:
	.size	esp_vfs_fat_sdmmc_mount, .-esp_vfs_fat_sdmmc_mount
	.section	.text.esp_vfs_fat_sdmmc_unmount,"ax",@progbits
	.literal_position
	.literal .LC14, s_card
	.literal .LC15, s_pdrv
	.literal .LC16, s_base_path
	.align	4
	.global	esp_vfs_fat_sdmmc_unmount
	.type	esp_vfs_fat_sdmmc_unmount, @function
esp_vfs_fat_sdmmc_unmount:
.LFB16:
	.loc 1 155 0
	entry	sp, 48
.LCFI1:
	.loc 1 156 0
	l32r	a2, .LC14
	l32i.n	a2, a2, 0
	beqz.n	a2, .L23
	.loc 1 160 0
	l32r	a3, .LC15
	l8ui	a2, a3, 0
	addi	a2, a2, 48
	s8i	a2, sp, 0
	movi.n	a2, 0x3a
	s8i	a2, sp, 1
	movi.n	a2, 0
	s8i	a2, sp, 2
	.loc 1 161 0
	movi.n	a12, 0
	mov.n	a11, sp
	mov.n	a10, a12
	call8	f_mount
.LVL64:
	.loc 1 163 0
	movi.n	a11, 0
	l8ui	a10, a3, 0
	call8	ff_diskio_register
.LVL65:
	.loc 1 164 0
	l32r	a2, .LC14
	l32i.n	a10, a2, 0
	call8	free
.LVL66:
	.loc 1 165 0
	movi.n	a4, 0
	s32i.n	a4, a2, 0
	.loc 1 166 0
	call8	sdmmc_host_deinit
.LVL67:
	.loc 1 167 0
	l32r	a3, .LC16
	l32i.n	a10, a3, 0
	call8	esp_vfs_fat_unregister_path
.LVL68:
	mov.n	a2, a10
.LVL69:
	.loc 1 168 0
	l32i.n	a10, a3, 0
	call8	free
.LVL70:
	.loc 1 169 0
	s32i.n	a4, a3, 0
	.loc 1 170 0
	retw.n
.LVL71:
.L23:
	.loc 1 157 0
	movi	a2, 0x103
	.loc 1 171 0
	retw.n
.LFE16:
	.size	esp_vfs_fat_sdmmc_unmount, .-esp_vfs_fat_sdmmc_unmount
	.section	.bss.s_base_path,"aw",@nobits
	.align	4
	.type	s_base_path, @object
	.size	s_base_path, 4
s_base_path:
	.zero	4
	.section	.bss.s_pdrv,"aw",@nobits
	.type	s_pdrv, @object
	.size	s_pdrv, 1
s_pdrv:
	.zero	1
	.section	.bss.s_card,"aw",@nobits
	.align	4
	.type	s_card, @object
	.size	s_card, 4
s_card:
	.zero	4
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
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI0-.LFB15
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI1-.LFB16
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
	.file 7 "C:/esp/esp-idf/components/driver/include/driver/gpio.h"
	.file 8 "C:/esp/esp-idf/components/driver/include/driver/sdmmc_types.h"
	.file 9 "C:/esp/esp-idf/components/driver/include/driver/sdmmc_host.h"
	.file 10 "C:/esp/esp-idf/components/freertos/include/freertos/queue.h"
	.file 11 "C:/esp/esp-idf/components/freertos/include/freertos/semphr.h"
	.file 12 "C:/esp/esp-idf/components/driver/include/driver/sdspi_host.h"
	.file 13 "C:/esp/esp-idf/components/fatfs/src/integer.h"
	.file 14 "C:/esp/esp-idf/components/fatfs/src/ff.h"
	.file 15 "C:/esp/esp-idf/components/fatfs/src/esp_vfs_fat.h"
	.file 16 "C:/esp/esp-idf/components/newlib/include/stdlib.h"
	.file 17 "C:/esp/esp-idf/components/fatfs/src/diskio.h"
	.file 18 "C:/esp/esp-idf/components/newlib/include/string.h"
	.file 19 "C:/esp/esp-idf/components/sdmmc/include/sdmmc_cmd.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xcfd
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF190
	.byte	0xc
	.4byte	.LASF191
	.4byte	.LASF192
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF3
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
	.uleb128 0x2
	.4byte	.LASF4
	.byte	0x3
	.byte	0x12
	.4byte	0x57
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x2
	.4byte	.LASF7
	.byte	0x3
	.byte	0x16
	.4byte	0x37
	.uleb128 0x2
	.4byte	.LASF8
	.byte	0x3
	.byte	0x19
	.4byte	0x3e
	.uleb128 0x2
	.4byte	.LASF9
	.byte	0x3
	.byte	0x1a
	.4byte	0x30
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb1
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x6
	.byte	0x4
	.4byte	0xbe
	.uleb128 0x7
	.4byte	0xb1
	.uleb128 0x8
	.4byte	0xb1
	.4byte	0xd3
	.uleb128 0x9
	.4byte	0x9b
	.byte	0x7
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xd9
	.uleb128 0xa
	.uleb128 0x2
	.4byte	.LASF16
	.byte	0x4
	.byte	0x15
	.4byte	0x4c
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x4
	.byte	0x21
	.4byte	0x65
	.uleb128 0x2
	.4byte	.LASF18
	.byte	0x4
	.byte	0x2c
	.4byte	0x70
	.uleb128 0x2
	.4byte	.LASF19
	.byte	0x4
	.byte	0x2d
	.4byte	0x7b
	.uleb128 0xb
	.byte	0x4
	.4byte	0x30
	.byte	0x5
	.byte	0x1f
	.4byte	0x137
	.uleb128 0xc
	.4byte	.LASF20
	.byte	0
	.uleb128 0xc
	.4byte	.LASF21
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF22
	.byte	0x2
	.uleb128 0xc
	.4byte	.LASF23
	.byte	0x3
	.uleb128 0xc
	.4byte	.LASF24
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x5
	.byte	0
	.uleb128 0x2
	.4byte	.LASF26
	.byte	0x5
	.byte	0x26
	.4byte	0x106
	.uleb128 0x2
	.4byte	.LASF27
	.byte	0x6
	.byte	0x18
	.4byte	0xf0
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF28
	.uleb128 0xb
	.byte	0x4
	.4byte	0x30
	.byte	0x7
	.byte	0x81
	.4byte	0x233
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x2
	.uleb128 0xc
	.4byte	.LASF32
	.byte	0x3
	.uleb128 0xc
	.4byte	.LASF33
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF34
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF35
	.byte	0x6
	.uleb128 0xc
	.4byte	.LASF36
	.byte	0x7
	.uleb128 0xc
	.4byte	.LASF37
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF38
	.byte	0x9
	.uleb128 0xc
	.4byte	.LASF39
	.byte	0xa
	.uleb128 0xc
	.4byte	.LASF40
	.byte	0xb
	.uleb128 0xc
	.4byte	.LASF41
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF42
	.byte	0xd
	.uleb128 0xc
	.4byte	.LASF43
	.byte	0xe
	.uleb128 0xc
	.4byte	.LASF44
	.byte	0xf
	.uleb128 0xc
	.4byte	.LASF45
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF46
	.byte	0x11
	.uleb128 0xc
	.4byte	.LASF47
	.byte	0x12
	.uleb128 0xc
	.4byte	.LASF48
	.byte	0x13
	.uleb128 0xc
	.4byte	.LASF49
	.byte	0x15
	.uleb128 0xc
	.4byte	.LASF50
	.byte	0x16
	.uleb128 0xc
	.4byte	.LASF51
	.byte	0x17
	.uleb128 0xc
	.4byte	.LASF52
	.byte	0x19
	.uleb128 0xc
	.4byte	.LASF53
	.byte	0x1a
	.uleb128 0xc
	.4byte	.LASF54
	.byte	0x1b
	.uleb128 0xc
	.4byte	.LASF55
	.byte	0x20
	.uleb128 0xc
	.4byte	.LASF56
	.byte	0x21
	.uleb128 0xc
	.4byte	.LASF57
	.byte	0x22
	.uleb128 0xc
	.4byte	.LASF58
	.byte	0x23
	.uleb128 0xc
	.4byte	.LASF59
	.byte	0x24
	.uleb128 0xc
	.4byte	.LASF60
	.byte	0x25
	.uleb128 0xc
	.4byte	.LASF61
	.byte	0x26
	.uleb128 0xc
	.4byte	.LASF62
	.byte	0x27
	.uleb128 0xc
	.4byte	.LASF63
	.byte	0x28
	.byte	0
	.uleb128 0x2
	.4byte	.LASF64
	.byte	0x7
	.byte	0xae
	.4byte	0x154
	.uleb128 0xd
	.byte	0x1c
	.byte	0x8
	.byte	0x1c
	.4byte	0x29b
	.uleb128 0xe
	.4byte	.LASF65
	.byte	0x8
	.byte	0x1d
	.4byte	0x3e
	.byte	0
	.uleb128 0xe
	.4byte	.LASF66
	.byte	0x8
	.byte	0x1e
	.4byte	0x3e
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF67
	.byte	0x8
	.byte	0x1f
	.4byte	0x3e
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF68
	.byte	0x8
	.byte	0x20
	.4byte	0x3e
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF69
	.byte	0x8
	.byte	0x21
	.4byte	0x3e
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF70
	.byte	0x8
	.byte	0x22
	.4byte	0x3e
	.byte	0x14
	.uleb128 0xe
	.4byte	.LASF71
	.byte	0x8
	.byte	0x23
	.4byte	0x3e
	.byte	0x18
	.byte	0
	.uleb128 0x2
	.4byte	.LASF72
	.byte	0x8
	.byte	0x24
	.4byte	0x23e
	.uleb128 0xd
	.byte	0x1c
	.byte	0x8
	.byte	0x29
	.4byte	0x2f7
	.uleb128 0xe
	.4byte	.LASF73
	.byte	0x8
	.byte	0x2a
	.4byte	0x3e
	.byte	0
	.uleb128 0xe
	.4byte	.LASF74
	.byte	0x8
	.byte	0x2b
	.4byte	0x3e
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF75
	.byte	0x8
	.byte	0x2c
	.4byte	0xc3
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF76
	.byte	0x8
	.byte	0x2d
	.4byte	0x3e
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF77
	.byte	0x8
	.byte	0x2e
	.4byte	0x3e
	.byte	0x14
	.uleb128 0xe
	.4byte	.LASF78
	.byte	0x8
	.byte	0x2f
	.4byte	0x3e
	.byte	0x18
	.byte	0
	.uleb128 0x2
	.4byte	.LASF79
	.byte	0x8
	.byte	0x30
	.4byte	0x2a6
	.uleb128 0xd
	.byte	0x8
	.byte	0x8
	.byte	0x35
	.4byte	0x323
	.uleb128 0xe
	.4byte	.LASF80
	.byte	0x8
	.byte	0x36
	.4byte	0x3e
	.byte	0
	.uleb128 0xe
	.4byte	.LASF81
	.byte	0x8
	.byte	0x37
	.4byte	0x3e
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF82
	.byte	0x8
	.byte	0x38
	.4byte	0x302
	.uleb128 0x2
	.4byte	.LASF83
	.byte	0x8
	.byte	0x3d
	.4byte	0x339
	.uleb128 0x8
	.4byte	0xfb
	.4byte	0x349
	.uleb128 0x9
	.4byte	0x9b
	.byte	0x3
	.byte	0
	.uleb128 0xd
	.byte	0x2c
	.byte	0x8
	.byte	0x49
	.4byte	0x3b2
	.uleb128 0xe
	.4byte	.LASF84
	.byte	0x8
	.byte	0x4a
	.4byte	0xfb
	.byte	0
	.uleb128 0xf
	.string	"arg"
	.byte	0x8
	.byte	0x4b
	.4byte	0xfb
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF85
	.byte	0x8
	.byte	0x4c
	.4byte	0x32e
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF86
	.byte	0x8
	.byte	0x4d
	.4byte	0xa2
	.byte	0x18
	.uleb128 0xe
	.4byte	.LASF87
	.byte	0x8
	.byte	0x4e
	.4byte	0x25
	.byte	0x1c
	.uleb128 0xe
	.4byte	.LASF88
	.byte	0x8
	.byte	0x4f
	.4byte	0x25
	.byte	0x20
	.uleb128 0xe
	.4byte	.LASF89
	.byte	0x8
	.byte	0x50
	.4byte	0x3e
	.byte	0x24
	.uleb128 0xe
	.4byte	.LASF90
	.byte	0x8
	.byte	0x68
	.4byte	0x142
	.byte	0x28
	.byte	0
	.uleb128 0x2
	.4byte	.LASF91
	.byte	0x8
	.byte	0x69
	.4byte	0x349
	.uleb128 0xd
	.byte	0x24
	.byte	0x8
	.byte	0x71
	.4byte	0x432
	.uleb128 0xe
	.4byte	.LASF89
	.byte	0x8
	.byte	0x72
	.4byte	0xfb
	.byte	0
	.uleb128 0xe
	.4byte	.LASF92
	.byte	0x8
	.byte	0x77
	.4byte	0x3e
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF93
	.byte	0x8
	.byte	0x78
	.4byte	0x3e
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF94
	.byte	0x8
	.byte	0x7c
	.4byte	0x432
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF95
	.byte	0x8
	.byte	0x7d
	.4byte	0x43e
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF96
	.byte	0x8
	.byte	0x7e
	.4byte	0x458
	.byte	0x14
	.uleb128 0xe
	.4byte	.LASF97
	.byte	0x8
	.byte	0x7f
	.4byte	0x472
	.byte	0x18
	.uleb128 0xe
	.4byte	.LASF98
	.byte	0x8
	.byte	0x80
	.4byte	0x492
	.byte	0x1c
	.uleb128 0xe
	.4byte	.LASF99
	.byte	0x8
	.byte	0x81
	.4byte	0x43e
	.byte	0x20
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.4byte	.LASF100
	.uleb128 0x10
	.4byte	0x142
	.uleb128 0x6
	.byte	0x4
	.4byte	0x439
	.uleb128 0x11
	.4byte	0x142
	.4byte	0x458
	.uleb128 0x12
	.4byte	0x3e
	.uleb128 0x12
	.4byte	0x25
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x444
	.uleb128 0x11
	.4byte	0x142
	.4byte	0x472
	.uleb128 0x12
	.4byte	0x3e
	.uleb128 0x12
	.4byte	0xfb
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x45e
	.uleb128 0x11
	.4byte	0x142
	.4byte	0x48c
	.uleb128 0x12
	.4byte	0x3e
	.uleb128 0x12
	.4byte	0x48c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3b2
	.uleb128 0x6
	.byte	0x4
	.4byte	0x478
	.uleb128 0x2
	.4byte	.LASF101
	.byte	0x8
	.byte	0x82
	.4byte	0x3bd
	.uleb128 0xd
	.byte	0x6c
	.byte	0x8
	.byte	0x87
	.4byte	0x4f4
	.uleb128 0xe
	.4byte	.LASF102
	.byte	0x8
	.byte	0x88
	.4byte	0x498
	.byte	0
	.uleb128 0xf
	.string	"ocr"
	.byte	0x8
	.byte	0x89
	.4byte	0xfb
	.byte	0x24
	.uleb128 0xf
	.string	"cid"
	.byte	0x8
	.byte	0x8a
	.4byte	0x2f7
	.byte	0x28
	.uleb128 0xf
	.string	"csd"
	.byte	0x8
	.byte	0x8b
	.4byte	0x29b
	.byte	0x44
	.uleb128 0xf
	.string	"scr"
	.byte	0x8
	.byte	0x8c
	.4byte	0x323
	.byte	0x60
	.uleb128 0xf
	.string	"rca"
	.byte	0x8
	.byte	0x8d
	.4byte	0xe5
	.byte	0x68
	.byte	0
	.uleb128 0x2
	.4byte	.LASF103
	.byte	0x8
	.byte	0x8e
	.4byte	0x4a3
	.uleb128 0xd
	.byte	0xc
	.byte	0x9
	.byte	0x32
	.4byte	0x52c
	.uleb128 0xe
	.4byte	.LASF104
	.byte	0x9
	.byte	0x33
	.4byte	0x233
	.byte	0
	.uleb128 0xe
	.4byte	.LASF105
	.byte	0x9
	.byte	0x34
	.4byte	0x233
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF106
	.byte	0x9
	.byte	0x35
	.4byte	0xda
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.4byte	.LASF107
	.byte	0x9
	.byte	0x36
	.4byte	0x4ff
	.uleb128 0x2
	.4byte	.LASF108
	.byte	0xa
	.byte	0x58
	.4byte	0xa2
	.uleb128 0x2
	.4byte	.LASF109
	.byte	0xb
	.byte	0x4f
	.4byte	0x537
	.uleb128 0xd
	.byte	0x1c
	.byte	0xc
	.byte	0x33
	.4byte	0x5aa
	.uleb128 0xe
	.4byte	.LASF110
	.byte	0xc
	.byte	0x34
	.4byte	0x233
	.byte	0
	.uleb128 0xe
	.4byte	.LASF111
	.byte	0xc
	.byte	0x35
	.4byte	0x233
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF112
	.byte	0xc
	.byte	0x36
	.4byte	0x233
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF113
	.byte	0xc
	.byte	0x37
	.4byte	0x233
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF104
	.byte	0xc
	.byte	0x38
	.4byte	0x233
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF105
	.byte	0xc
	.byte	0x39
	.4byte	0x233
	.byte	0x14
	.uleb128 0xe
	.4byte	.LASF114
	.byte	0xc
	.byte	0x3a
	.4byte	0x3e
	.byte	0x18
	.byte	0
	.uleb128 0x2
	.4byte	.LASF115
	.byte	0xc
	.byte	0x3b
	.4byte	0x54d
	.uleb128 0x2
	.4byte	.LASF116
	.byte	0xd
	.byte	0x16
	.4byte	0x57
	.uleb128 0x2
	.4byte	.LASF117
	.byte	0xd
	.byte	0x1a
	.4byte	0x37
	.uleb128 0x2
	.4byte	.LASF118
	.byte	0xd
	.byte	0x1f
	.4byte	0xa4
	.uleb128 0x13
	.2byte	0x1038
	.byte	0xe
	.byte	0x5f
	.4byte	0x6cf
	.uleb128 0xe
	.4byte	.LASF119
	.byte	0xe
	.byte	0x60
	.4byte	0x5b5
	.byte	0
	.uleb128 0xf
	.string	"drv"
	.byte	0xe
	.byte	0x61
	.4byte	0x5b5
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF120
	.byte	0xe
	.byte	0x62
	.4byte	0x5b5
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF121
	.byte	0xe
	.byte	0x63
	.4byte	0x5b5
	.byte	0x3
	.uleb128 0xe
	.4byte	.LASF122
	.byte	0xe
	.byte	0x64
	.4byte	0x5b5
	.byte	0x4
	.uleb128 0xf
	.string	"id"
	.byte	0xe
	.byte	0x65
	.4byte	0x5c0
	.byte	0x6
	.uleb128 0xe
	.4byte	.LASF123
	.byte	0xe
	.byte	0x66
	.4byte	0x5c0
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF124
	.byte	0xe
	.byte	0x67
	.4byte	0x5c0
	.byte	0xa
	.uleb128 0xe
	.4byte	.LASF125
	.byte	0xe
	.byte	0x69
	.4byte	0x5c0
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF126
	.byte	0xe
	.byte	0x72
	.4byte	0x542
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF127
	.byte	0xe
	.byte	0x75
	.4byte	0x5cb
	.byte	0x14
	.uleb128 0xe
	.4byte	.LASF128
	.byte	0xe
	.byte	0x76
	.4byte	0x5cb
	.byte	0x18
	.uleb128 0xe
	.4byte	.LASF129
	.byte	0xe
	.byte	0x80
	.4byte	0x5cb
	.byte	0x1c
	.uleb128 0xe
	.4byte	.LASF130
	.byte	0xe
	.byte	0x81
	.4byte	0x5cb
	.byte	0x20
	.uleb128 0xe
	.4byte	.LASF131
	.byte	0xe
	.byte	0x82
	.4byte	0x5cb
	.byte	0x24
	.uleb128 0xe
	.4byte	.LASF132
	.byte	0xe
	.byte	0x83
	.4byte	0x5cb
	.byte	0x28
	.uleb128 0xe
	.4byte	.LASF133
	.byte	0xe
	.byte	0x84
	.4byte	0x5cb
	.byte	0x2c
	.uleb128 0xe
	.4byte	.LASF134
	.byte	0xe
	.byte	0x85
	.4byte	0x5cb
	.byte	0x30
	.uleb128 0xe
	.4byte	.LASF135
	.byte	0xe
	.byte	0x86
	.4byte	0x5cb
	.byte	0x34
	.uleb128 0xf
	.string	"win"
	.byte	0xe
	.byte	0x87
	.4byte	0x6cf
	.byte	0x38
	.byte	0
	.uleb128 0x8
	.4byte	0x5b5
	.4byte	0x6e0
	.uleb128 0x14
	.4byte	0x9b
	.2byte	0xfff
	.byte	0
	.uleb128 0x2
	.4byte	.LASF136
	.byte	0xe
	.byte	0x88
	.4byte	0x5d6
	.uleb128 0x6
	.byte	0x4
	.4byte	0x6e0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x30
	.byte	0xe
	.byte	0xdf
	.4byte	0x776
	.uleb128 0xc
	.4byte	.LASF137
	.byte	0
	.uleb128 0xc
	.4byte	.LASF138
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF139
	.byte	0x2
	.uleb128 0xc
	.4byte	.LASF140
	.byte	0x3
	.uleb128 0xc
	.4byte	.LASF141
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF142
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF143
	.byte	0x6
	.uleb128 0xc
	.4byte	.LASF144
	.byte	0x7
	.uleb128 0xc
	.4byte	.LASF145
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF146
	.byte	0x9
	.uleb128 0xc
	.4byte	.LASF147
	.byte	0xa
	.uleb128 0xc
	.4byte	.LASF148
	.byte	0xb
	.uleb128 0xc
	.4byte	.LASF149
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF150
	.byte	0xd
	.uleb128 0xc
	.4byte	.LASF151
	.byte	0xe
	.uleb128 0xc
	.4byte	.LASF152
	.byte	0xf
	.uleb128 0xc
	.4byte	.LASF153
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF154
	.byte	0x11
	.uleb128 0xc
	.4byte	.LASF155
	.byte	0x12
	.uleb128 0xc
	.4byte	.LASF156
	.byte	0x13
	.byte	0
	.uleb128 0x2
	.4byte	.LASF157
	.byte	0xe
	.byte	0xf4
	.4byte	0x6f1
	.uleb128 0xd
	.byte	0x8
	.byte	0xf
	.byte	0x5a
	.4byte	0x7a2
	.uleb128 0xe
	.4byte	.LASF158
	.byte	0xf
	.byte	0x5b
	.4byte	0x14d
	.byte	0
	.uleb128 0xe
	.4byte	.LASF159
	.byte	0xf
	.byte	0x5c
	.4byte	0x3e
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF160
	.byte	0xf
	.byte	0x5d
	.4byte	0x781
	.uleb128 0x15
	.4byte	.LASF193
	.byte	0x1
	.byte	0x1e
	.4byte	0x142
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb25
	.uleb128 0x16
	.4byte	.LASF161
	.byte	0x1
	.byte	0x1e
	.4byte	0xb8
	.4byte	.LLST0
	.uleb128 0x16
	.4byte	.LASF162
	.byte	0x1
	.byte	0x1f
	.4byte	0xb25
	.4byte	.LLST1
	.uleb128 0x16
	.4byte	.LASF163
	.byte	0x1
	.byte	0x20
	.4byte	0xd3
	.4byte	.LLST2
	.uleb128 0x17
	.4byte	.LASF164
	.byte	0x1
	.byte	0x21
	.4byte	0xb30
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x17
	.4byte	.LASF165
	.byte	0x1
	.byte	0x22
	.4byte	0xb3b
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x18
	.4byte	.LASF166
	.byte	0x1
	.byte	0x24
	.4byte	0xb47
	.2byte	0x1000
	.uleb128 0x19
	.4byte	.LASF167
	.byte	0x1
	.byte	0x25
	.4byte	0xa2
	.4byte	.LLST3
	.uleb128 0x1a
	.string	"fs"
	.byte	0x1
	.byte	0x26
	.4byte	0x6eb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1b
	.4byte	.LASF168
	.byte	0x1
	.byte	0x2d
	.4byte	0x5b5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x1c
	.string	"err"
	.byte	0x1
	.byte	0x38
	.4byte	0x142
	.4byte	.LLST4
	.uleb128 0x1d
	.4byte	.LASF194
	.byte	0x1
	.byte	0x8d
	.4byte	.L3
	.uleb128 0x1a
	.string	"drv"
	.byte	0x1
	.byte	0x5f
	.4byte	0xb4c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -75
	.uleb128 0x1c
	.string	"res"
	.byte	0x1
	.byte	0x6b
	.4byte	0x776
	.4byte	.LLST5
	.uleb128 0x1e
	.4byte	.Ldebug_ranges0+0
	.4byte	0x9fa
	.uleb128 0x1b
	.4byte	.LASF169
	.byte	0x1
	.byte	0x73
	.4byte	0xb5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1f
	.4byte	.LVL27
	.4byte	0xc42
	.uleb128 0x20
	.4byte	.LVL28
	.4byte	0xc4d
	.4byte	0x8d3
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL30
	.4byte	0xc42
	.uleb128 0x20
	.4byte	.LVL31
	.4byte	0xc4d
	.4byte	0x90a
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x20
	.4byte	.LVL32
	.4byte	0xc58
	.4byte	0x91f
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1000
	.byte	0
	.uleb128 0x20
	.4byte	.LVL34
	.4byte	0xc63
	.4byte	0x93a
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL35
	.4byte	0xc42
	.uleb128 0x20
	.4byte	.LVL36
	.4byte	0xc4d
	.4byte	0x971
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x20
	.4byte	.LVL37
	.4byte	0xc6f
	.4byte	0x998
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -75
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x37
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1000
	.byte	0
	.uleb128 0x20
	.4byte	.LVL39
	.4byte	0xc7b
	.4byte	0x9ac
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL40
	.4byte	0xc42
	.uleb128 0x20
	.4byte	.LVL41
	.4byte	0xc4d
	.4byte	0x9e3
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC12
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x22
	.4byte	.LVL42
	.4byte	0xc86
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -75
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL3
	.4byte	0xc92
	.4byte	0xa0f
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.byte	0
	.uleb128 0x20
	.4byte	.LVL4
	.4byte	0xc9d
	.4byte	0xa23
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL6
	.4byte	0xc58
	.4byte	0xa37
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x6c
	.byte	0
	.uleb128 0x20
	.4byte	.LVL10
	.4byte	0xca8
	.4byte	0xa4b
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL13
	.4byte	0xcb3
	.4byte	0xa5f
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL16
	.4byte	0xcbe
	.4byte	0xa73
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL20
	.4byte	0xcc9
	.uleb128 0x20
	.4byte	.LVL21
	.4byte	0xcd4
	.4byte	0xa9e
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -75
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x20
	.4byte	.LVL24
	.4byte	0xc86
	.4byte	0xab8
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -75
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL55
	.4byte	0xcdf
	.uleb128 0x20
	.4byte	.LVL56
	.4byte	0xc7b
	.4byte	0xad5
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL57
	.4byte	0xc86
	.4byte	0xaf4
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -75
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x20
	.4byte	.LVL58
	.4byte	0xcea
	.4byte	0xb08
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL59
	.4byte	0xcf5
	.4byte	0xb1b
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL60
	.4byte	0xc7b
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb2b
	.uleb128 0x7
	.4byte	0x498
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb36
	.uleb128 0x7
	.4byte	0x7a2
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb41
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4f4
	.uleb128 0x7
	.4byte	0x25
	.uleb128 0x8
	.4byte	0xb1
	.4byte	0xb5c
	.uleb128 0x9
	.4byte	0x9b
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.4byte	0x5cb
	.4byte	0xb6c
	.uleb128 0x9
	.4byte	0x9b
	.byte	0x3
	.byte	0
	.uleb128 0x23
	.4byte	.LASF195
	.byte	0x1
	.byte	0x9a
	.4byte	0x142
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbf8
	.uleb128 0x1a
	.string	"drv"
	.byte	0x1
	.byte	0xa0
	.4byte	0xb4c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1c
	.string	"err"
	.byte	0x1
	.byte	0xa7
	.4byte	0x142
	.4byte	.LLST6
	.uleb128 0x20
	.4byte	.LVL64
	.4byte	0xc86
	.4byte	0xbc0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x20
	.4byte	.LVL65
	.4byte	0xcf5
	.4byte	0xbd3
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL66
	.4byte	0xc7b
	.uleb128 0x1f
	.4byte	.LVL67
	.4byte	0xcdf
	.uleb128 0x1f
	.4byte	.LVL68
	.4byte	0xcea
	.uleb128 0x1f
	.4byte	.LVL70
	.4byte	0xc7b
	.byte	0
	.uleb128 0x1a
	.string	"TAG"
	.byte	0x1
	.byte	0x19
	.4byte	0xc0a
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC3
	.byte	0x9f
	.uleb128 0x7
	.4byte	0xb8
	.uleb128 0x1b
	.4byte	.LASF170
	.byte	0x1
	.byte	0x1a
	.4byte	0xb41
	.uleb128 0x5
	.byte	0x3
	.4byte	s_card
	.uleb128 0x1b
	.4byte	.LASF171
	.byte	0x1
	.byte	0x1b
	.4byte	0xda
	.uleb128 0x5
	.byte	0x3
	.4byte	s_pdrv
	.uleb128 0x1b
	.4byte	.LASF172
	.byte	0x1
	.byte	0x1c
	.4byte	0xab
	.uleb128 0x5
	.byte	0x3
	.4byte	s_base_path
	.uleb128 0x24
	.4byte	.LASF173
	.4byte	.LASF173
	.byte	0x5
	.byte	0x4c
	.uleb128 0x24
	.4byte	.LASF174
	.4byte	.LASF174
	.byte	0x5
	.byte	0x60
	.uleb128 0x24
	.4byte	.LASF175
	.4byte	.LASF175
	.byte	0x10
	.byte	0x65
	.uleb128 0x25
	.4byte	.LASF176
	.4byte	.LASF176
	.byte	0xe
	.2byte	0x117
	.uleb128 0x25
	.4byte	.LASF177
	.4byte	.LASF177
	.byte	0xe
	.2byte	0x116
	.uleb128 0x24
	.4byte	.LASF178
	.4byte	.LASF178
	.byte	0x10
	.byte	0x5a
	.uleb128 0x25
	.4byte	.LASF179
	.4byte	.LASF179
	.byte	0xe
	.2byte	0x115
	.uleb128 0x24
	.4byte	.LASF180
	.4byte	.LASF180
	.byte	0x11
	.byte	0x5a
	.uleb128 0x24
	.4byte	.LASF181
	.4byte	.LASF181
	.byte	0x12
	.byte	0x50
	.uleb128 0x24
	.4byte	.LASF182
	.4byte	.LASF182
	.byte	0xc
	.byte	0x66
	.uleb128 0x24
	.4byte	.LASF183
	.4byte	.LASF183
	.byte	0x9
	.byte	0x63
	.uleb128 0x24
	.4byte	.LASF184
	.4byte	.LASF184
	.byte	0x13
	.byte	0x25
	.uleb128 0x24
	.4byte	.LASF185
	.4byte	.LASF185
	.byte	0x11
	.byte	0x50
	.uleb128 0x24
	.4byte	.LASF186
	.4byte	.LASF186
	.byte	0xf
	.byte	0x33
	.uleb128 0x24
	.4byte	.LASF187
	.4byte	.LASF187
	.byte	0x9
	.byte	0xa8
	.uleb128 0x24
	.4byte	.LASF188
	.4byte	.LASF188
	.byte	0xf
	.byte	0x54
	.uleb128 0x24
	.4byte	.LASF189
	.4byte	.LASF189
	.byte	0x11
	.byte	0x46
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL2
	.4byte	.LFE15
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL18
	.4byte	.LVL46
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL53
	.4byte	.LVL62
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL63
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL15
	.4byte	.LVL46
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL50
	.4byte	.LVL62
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL63
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL1
	.4byte	.LVL33
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL43
	.4byte	.LVL45
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL46
	.4byte	.LVL54
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL54
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL62
	.4byte	.LFE15
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL5
	.4byte	.LVL8
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL12
	.4byte	.LVL17
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL17
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL19
	.4byte	.LVL22
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL23
	.4byte	.LVL26
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL26
	.4byte	.LVL46
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL48
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL50
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL52
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL54
	.4byte	.LVL62
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL25
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL34
	.4byte	.LVL35-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL69
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x52
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
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
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
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF140:
	.string	"FR_NOT_READY"
.LASF56:
	.string	"GPIO_NUM_33"
.LASF57:
	.string	"GPIO_NUM_34"
.LASF67:
	.string	"capacity"
.LASF106:
	.string	"width"
.LASF60:
	.string	"GPIO_NUM_37"
.LASF70:
	.string	"card_command_class"
.LASF62:
	.string	"GPIO_NUM_39"
.LASF115:
	.string	"sdspi_slot_config_t"
.LASF125:
	.string	"ssize"
.LASF192:
	.string	"C:\\\\esp\\\\esp32-ArkPOS2\\\\ArkPOS2-esp\\\\build\\\\fatfs"
.LASF3:
	.string	"size_t"
.LASF119:
	.string	"fs_type"
.LASF113:
	.string	"gpio_cs"
.LASF167:
	.string	"workbuf"
.LASF4:
	.string	"__uint8_t"
.LASF76:
	.string	"revision"
.LASF65:
	.string	"csd_ver"
.LASF123:
	.string	"n_rootdir"
.LASF175:
	.string	"malloc"
.LASF11:
	.string	"long long unsigned int"
.LASF174:
	.string	"esp_log_write"
.LASF188:
	.string	"esp_vfs_fat_unregister_path"
.LASF86:
	.string	"data"
.LASF108:
	.string	"QueueHandle_t"
.LASF146:
	.string	"FR_INVALID_OBJECT"
.LASF184:
	.string	"sdmmc_card_init"
.LASF178:
	.string	"free"
.LASF68:
	.string	"sector_size"
.LASF155:
	.string	"FR_TOO_MANY_OPEN_FILES"
.LASF85:
	.string	"response"
.LASF24:
	.string	"ESP_LOG_DEBUG"
.LASF10:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF96:
	.string	"set_bus_width"
.LASF126:
	.string	"sobj"
.LASF98:
	.string	"do_transaction"
.LASF156:
	.string	"FR_INVALID_PARAMETER"
.LASF130:
	.string	"fsize"
.LASF163:
	.string	"slot_config"
.LASF107:
	.string	"sdmmc_slot_config_t"
.LASF158:
	.string	"format_if_mount_failed"
.LASF40:
	.string	"GPIO_NUM_11"
.LASF12:
	.string	"long int"
.LASF69:
	.string	"read_block_len"
.LASF72:
	.string	"sdmmc_csd_t"
.LASF177:
	.string	"f_mkfs"
.LASF64:
	.string	"gpio_num_t"
.LASF150:
	.string	"FR_NO_FILESYSTEM"
.LASF17:
	.string	"uint16_t"
.LASF154:
	.string	"FR_NOT_ENOUGH_CORE"
.LASF176:
	.string	"f_fdisk"
.LASF132:
	.string	"fatbase"
.LASF118:
	.string	"DWORD"
.LASF165:
	.string	"out_card"
.LASF73:
	.string	"mfg_id"
.LASF9:
	.string	"__uint32_t"
.LASF124:
	.string	"csize"
.LASF168:
	.string	"pdrv"
.LASF128:
	.string	"free_clst"
.LASF116:
	.string	"BYTE"
.LASF79:
	.string	"sdmmc_cid_t"
.LASF166:
	.string	"workbuf_size"
.LASF102:
	.string	"host"
.LASF0:
	.string	"unsigned int"
.LASF169:
	.string	"plist"
.LASF159:
	.string	"max_files"
.LASF97:
	.string	"set_card_clk"
.LASF83:
	.string	"sdmmc_response_t"
.LASF189:
	.string	"ff_diskio_register"
.LASF75:
	.string	"name"
.LASF29:
	.string	"GPIO_NUM_0"
.LASF30:
	.string	"GPIO_NUM_1"
.LASF31:
	.string	"GPIO_NUM_2"
.LASF32:
	.string	"GPIO_NUM_3"
.LASF33:
	.string	"GPIO_NUM_4"
.LASF34:
	.string	"GPIO_NUM_5"
.LASF35:
	.string	"GPIO_NUM_6"
.LASF36:
	.string	"GPIO_NUM_7"
.LASF37:
	.string	"GPIO_NUM_8"
.LASF38:
	.string	"GPIO_NUM_9"
.LASF161:
	.string	"base_path"
.LASF22:
	.string	"ESP_LOG_WARN"
.LASF139:
	.string	"FR_INT_ERR"
.LASF92:
	.string	"slot"
.LASF138:
	.string	"FR_DISK_ERR"
.LASF135:
	.string	"winsect"
.LASF6:
	.string	"short int"
.LASF117:
	.string	"WORD"
.LASF182:
	.string	"sdspi_host_init_slot"
.LASF147:
	.string	"FR_WRITE_PROTECTED"
.LASF194:
	.string	"fail"
.LASF59:
	.string	"GPIO_NUM_36"
.LASF136:
	.string	"FATFS"
.LASF61:
	.string	"GPIO_NUM_38"
.LASF23:
	.string	"ESP_LOG_INFO"
.LASF88:
	.string	"blklen"
.LASF82:
	.string	"sdmmc_scr_t"
.LASF13:
	.string	"sizetype"
.LASF164:
	.string	"mount_config"
.LASF87:
	.string	"datalen"
.LASF63:
	.string	"GPIO_NUM_MAX"
.LASF74:
	.string	"oem_id"
.LASF152:
	.string	"FR_TIMEOUT"
.LASF171:
	.string	"s_pdrv"
.LASF71:
	.string	"tr_speed"
.LASF104:
	.string	"gpio_cd"
.LASF133:
	.string	"dirbase"
.LASF66:
	.string	"mmc_ver"
.LASF141:
	.string	"FR_NO_FILE"
.LASF26:
	.string	"esp_log_level_t"
.LASF101:
	.string	"sdmmc_host_t"
.LASF149:
	.string	"FR_NOT_ENABLED"
.LASF111:
	.string	"gpio_mosi"
.LASF95:
	.string	"init"
.LASF187:
	.string	"sdmmc_host_deinit"
.LASF191:
	.string	"C:/esp/esp-idf/components/fatfs/src/vfs_fat_sdmmc.c"
.LASF100:
	.string	"float"
.LASF90:
	.string	"error"
.LASF179:
	.string	"f_mount"
.LASF193:
	.string	"esp_vfs_fat_sdmmc_mount"
.LASF127:
	.string	"last_clst"
.LASF28:
	.string	"_Bool"
.LASF18:
	.string	"int32_t"
.LASF5:
	.string	"unsigned char"
.LASF105:
	.string	"gpio_wp"
.LASF131:
	.string	"volbase"
.LASF110:
	.string	"gpio_miso"
.LASF170:
	.string	"s_card"
.LASF173:
	.string	"esp_log_timestamp"
.LASF21:
	.string	"ESP_LOG_ERROR"
.LASF46:
	.string	"GPIO_NUM_17"
.LASF148:
	.string	"FR_INVALID_DRIVE"
.LASF144:
	.string	"FR_DENIED"
.LASF145:
	.string	"FR_EXIST"
.LASF151:
	.string	"FR_MKFS_ABORTED"
.LASF186:
	.string	"esp_vfs_fat_register"
.LASF153:
	.string	"FR_LOCKED"
.LASF55:
	.string	"GPIO_NUM_32"
.LASF121:
	.string	"wflag"
.LASF39:
	.string	"GPIO_NUM_10"
.LASF99:
	.string	"deinit"
.LASF41:
	.string	"GPIO_NUM_12"
.LASF42:
	.string	"GPIO_NUM_13"
.LASF43:
	.string	"GPIO_NUM_14"
.LASF44:
	.string	"GPIO_NUM_15"
.LASF45:
	.string	"GPIO_NUM_16"
.LASF103:
	.string	"sdmmc_card_t"
.LASF47:
	.string	"GPIO_NUM_18"
.LASF48:
	.string	"GPIO_NUM_19"
.LASF14:
	.string	"long unsigned int"
.LASF15:
	.string	"char"
.LASF109:
	.string	"SemaphoreHandle_t"
.LASF143:
	.string	"FR_INVALID_NAME"
.LASF25:
	.string	"ESP_LOG_VERBOSE"
.LASF7:
	.string	"__uint16_t"
.LASF137:
	.string	"FR_OK"
.LASF20:
	.string	"ESP_LOG_NONE"
.LASF94:
	.string	"io_voltage"
.LASF8:
	.string	"__int32_t"
.LASF134:
	.string	"database"
.LASF91:
	.string	"sdmmc_command_t"
.LASF114:
	.string	"dma_channel"
.LASF1:
	.string	"short unsigned int"
.LASF112:
	.string	"gpio_sck"
.LASF78:
	.string	"date"
.LASF122:
	.string	"fsi_flag"
.LASF172:
	.string	"s_base_path"
.LASF19:
	.string	"uint32_t"
.LASF49:
	.string	"GPIO_NUM_21"
.LASF50:
	.string	"GPIO_NUM_22"
.LASF51:
	.string	"GPIO_NUM_23"
.LASF52:
	.string	"GPIO_NUM_25"
.LASF53:
	.string	"GPIO_NUM_26"
.LASF54:
	.string	"GPIO_NUM_27"
.LASF27:
	.string	"esp_err_t"
.LASF181:
	.string	"strdup"
.LASF16:
	.string	"uint8_t"
.LASF89:
	.string	"flags"
.LASF58:
	.string	"GPIO_NUM_35"
.LASF77:
	.string	"serial"
.LASF120:
	.string	"n_fats"
.LASF157:
	.string	"FRESULT"
.LASF190:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF129:
	.string	"n_fatent"
.LASF162:
	.string	"host_config"
.LASF81:
	.string	"bus_width"
.LASF142:
	.string	"FR_NO_PATH"
.LASF183:
	.string	"sdmmc_host_init_slot"
.LASF93:
	.string	"max_freq_khz"
.LASF185:
	.string	"ff_diskio_register_sdmmc"
.LASF160:
	.string	"esp_vfs_fat_mount_config_t"
.LASF80:
	.string	"sd_spec"
.LASF180:
	.string	"ff_diskio_get_drive"
.LASF84:
	.string	"opcode"
.LASF195:
	.string	"esp_vfs_fat_sdmmc_unmount"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-73-ge28a011) 5.2.0"
