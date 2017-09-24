	.file	"diskio_sdmmc.c"
	.text
.Ltext0:
	.section	.text.ff_sdmmc_initialize,"ax",@progbits
	.align	4
	.global	ff_sdmmc_initialize
	.type	ff_sdmmc_initialize, @function
ff_sdmmc_initialize:
.LFB9:
	.file 1 "C:/esp/esp-idf/components/fatfs/src/diskio_sdmmc.c"
	.loc 1 26 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 28 0
	movi.n	a2, 0
.LVL1:
	retw.n
.LFE9:
	.size	ff_sdmmc_initialize, .-ff_sdmmc_initialize
	.section	.text.ff_sdmmc_status,"ax",@progbits
	.align	4
	.global	ff_sdmmc_status
	.type	ff_sdmmc_status, @function
ff_sdmmc_status:
.LFB10:
	.loc 1 31 0
.LVL2:
	entry	sp, 32
.LCFI1:
	.loc 1 33 0
	movi.n	a2, 0
.LVL3:
	retw.n
.LFE10:
	.size	ff_sdmmc_status, .-ff_sdmmc_status
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC1:
	.string	"card"
	.align	4
.LC4:
	.string	"C:/esp/esp-idf/components/fatfs/src/diskio_sdmmc.c"
	.section	.text.ff_sdmmc_ioctl,"ax",@progbits
	.literal_position
	.literal .LC0, s_cards
	.literal .LC2, .LC1
	.literal .LC3, __func__$5078
	.literal .LC5, .LC4
	.align	4
	.global	ff_sdmmc_ioctl
	.type	ff_sdmmc_ioctl, @function
ff_sdmmc_ioctl:
.LFB13:
	.loc 1 60 0
.LVL4:
	entry	sp, 32
.LCFI2:
	extui	a2, a2, 0, 8
	extui	a3, a3, 0, 8
	.loc 1 61 0
	l32r	a8, .LC0
	addx4	a2, a2, a8
.LVL5:
	l32i.n	a2, a2, 0
.LVL6:
	.loc 1 62 0
	bnez.n	a2, .L4
	.loc 1 62 0 is_stmt 0 discriminator 1
	l32r	a13, .LC2
	l32r	a12, .LC3
	movi.n	a11, 0x3e
	l32r	a10, .LC5
	call8	__assert_func
.LVL7:
.L4:
	.loc 1 63 0 is_stmt 1
	beqi	a3, 1, .L6
	beqz.n	a3, .L7
	bnei	a3, 2, .L10
	j	.L8
.L7:
	.loc 1 65 0
	movi.n	a2, 0
.LVL8:
	retw.n
.LVL9:
.L6:
	.loc 1 67 0
	l32i	a2, a2, 76
.LVL10:
	s32i.n	a2, a4, 0
	.loc 1 68 0
	movi.n	a2, 0
	retw.n
.LVL11:
.L8:
	.loc 1 70 0
	l32i	a2, a2, 80
.LVL12:
	s32i.n	a2, a4, 0
	.loc 1 71 0
	movi.n	a2, 0
	retw.n
.LVL13:
.L10:
	.loc 1 73 0
	movi.n	a2, 1
.LVL14:
	.loc 1 76 0
	retw.n
.LFE13:
	.size	ff_sdmmc_ioctl, .-ff_sdmmc_ioctl
	.section	.rodata.str1.4
	.align	4
.LC10:
	.string	"diskio_sdmmc"
	.align	4
.LC12:
	.string	"\033[0;31mE (%d) %s: sdmmc_read_blocks failed (%d)\033[0m\n"
	.section	.text.ff_sdmmc_read,"ax",@progbits
	.literal_position
	.literal .LC6, s_cards
	.literal .LC7, .LC1
	.literal .LC8, __func__$5061
	.literal .LC9, .LC4
	.literal .LC11, .LC10
	.literal .LC13, .LC12
	.align	4
	.global	ff_sdmmc_read
	.type	ff_sdmmc_read, @function
ff_sdmmc_read:
.LFB11:
	.loc 1 36 0
.LVL15:
	entry	sp, 32
.LCFI3:
	extui	a2, a2, 0, 8
	.loc 1 37 0
	l32r	a8, .LC6
	addx4	a2, a2, a8
.LVL16:
	l32i.n	a10, a2, 0
.LVL17:
	.loc 1 38 0
	bnez.n	a10, .L12
	.loc 1 38 0 is_stmt 0 discriminator 1
	l32r	a13, .LC7
	l32r	a12, .LC8
	movi.n	a11, 0x26
	l32r	a10, .LC9
.LVL18:
	call8	__assert_func
.LVL19:
.L12:
	.loc 1 39 0 is_stmt 1
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a3
	call8	sdmmc_read_sectors
.LVL20:
	mov.n	a2, a10
.LVL21:
	.loc 1 40 0
	beqz.n	a10, .L14
	.loc 1 41 0 discriminator 1
	call8	esp_log_timestamp
.LVL22:
	l32r	a11, .LC11
	mov.n	a15, a2
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC13
	movi.n	a10, 1
	call8	esp_log_write
.LVL23:
	.loc 1 42 0 discriminator 1
	movi.n	a2, 1
.LVL24:
	retw.n
.LVL25:
.L14:
	.loc 1 44 0
	movi.n	a2, 0
.LVL26:
	.loc 1 45 0
	retw.n
.LFE11:
	.size	ff_sdmmc_read, .-ff_sdmmc_read
	.section	.rodata.str1.4
	.align	4
.LC19:
	.string	"\033[0;31mE (%d) %s: sdmmc_write_blocks failed (%d)\033[0m\n"
	.section	.text.ff_sdmmc_write,"ax",@progbits
	.literal_position
	.literal .LC14, s_cards
	.literal .LC15, .LC1
	.literal .LC16, __func__$5070
	.literal .LC17, .LC4
	.literal .LC18, .LC10
	.literal .LC20, .LC19
	.align	4
	.global	ff_sdmmc_write
	.type	ff_sdmmc_write, @function
ff_sdmmc_write:
.LFB12:
	.loc 1 48 0
.LVL27:
	entry	sp, 32
.LCFI4:
	extui	a2, a2, 0, 8
	.loc 1 49 0
	l32r	a8, .LC14
	addx4	a2, a2, a8
.LVL28:
	l32i.n	a10, a2, 0
.LVL29:
	.loc 1 50 0
	bnez.n	a10, .L16
	.loc 1 50 0 is_stmt 0 discriminator 1
	l32r	a13, .LC15
	l32r	a12, .LC16
	movi.n	a11, 0x32
	l32r	a10, .LC17
.LVL30:
	call8	__assert_func
.LVL31:
.L16:
	.loc 1 51 0 is_stmt 1
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a3
	call8	sdmmc_write_sectors
.LVL32:
	mov.n	a2, a10
.LVL33:
	.loc 1 52 0
	beqz.n	a10, .L18
	.loc 1 53 0 discriminator 1
	call8	esp_log_timestamp
.LVL34:
	l32r	a11, .LC18
	mov.n	a15, a2
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC20
	movi.n	a10, 1
	call8	esp_log_write
.LVL35:
	.loc 1 54 0 discriminator 1
	movi.n	a2, 1
.LVL36:
	retw.n
.LVL37:
.L18:
	.loc 1 56 0
	movi.n	a2, 0
.LVL38:
	.loc 1 57 0
	retw.n
.LFE12:
	.size	ff_sdmmc_write, .-ff_sdmmc_write
	.section	.text.ff_diskio_register_sdmmc,"ax",@progbits
	.literal_position
	.literal .LC21, s_cards
	.literal .LC22, sdmmc_impl$5087
	.align	4
	.global	ff_diskio_register_sdmmc
	.type	ff_diskio_register_sdmmc, @function
ff_diskio_register_sdmmc:
.LFB14:
	.loc 1 79 0
.LVL39:
	entry	sp, 32
.LCFI5:
	extui	a10, a2, 0, 8
	.loc 1 87 0
	l32r	a8, .LC21
	addx4	a8, a10, a8
	s32i.n	a3, a8, 0
	.loc 1 88 0
	l32r	a11, .LC22
	call8	ff_diskio_register
.LVL40:
	retw.n
.LFE14:
	.size	ff_diskio_register_sdmmc, .-ff_diskio_register_sdmmc
	.section	.rodata.sdmmc_impl$5087,"a",@progbits
	.align	4
	.type	sdmmc_impl$5087, @object
	.size	sdmmc_impl$5087, 20
sdmmc_impl$5087:
	.word	ff_sdmmc_initialize
	.word	ff_sdmmc_status
	.word	ff_sdmmc_read
	.word	ff_sdmmc_write
	.word	ff_sdmmc_ioctl
	.section	.rodata.__func__$5078,"a",@progbits
	.align	4
	.type	__func__$5078, @object
	.size	__func__$5078, 15
__func__$5078:
	.string	"ff_sdmmc_ioctl"
	.section	.rodata.__func__$5070,"a",@progbits
	.align	4
	.type	__func__$5070, @object
	.size	__func__$5070, 15
__func__$5070:
	.string	"ff_sdmmc_write"
	.section	.rodata.__func__$5061,"a",@progbits
	.align	4
	.type	__func__$5061, @object
	.size	__func__$5061, 14
__func__$5061:
	.string	"ff_sdmmc_read"
	.section	.bss.s_cards,"aw",@nobits
	.align	4
	.type	s_cards, @object
	.size	s_cards, 8
s_cards:
	.zero	8
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
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI0-.LFB9
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI1-.LFB10
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI2-.LFB13
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI3-.LFB11
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI4-.LFB12
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI5-.LFB14
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
	.text
.Letext0:
	.file 2 "C:/esp/esp-idf/components/fatfs/src/integer.h"
	.file 3 "C:/esp/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 5 "C:/esp/esp-idf/components/newlib/include/stdint.h"
	.file 6 "C:/esp/esp-idf/components/esp32/include/esp_err.h"
	.file 7 "C:/esp/esp-idf/components/driver/include/driver/sdmmc_types.h"
	.file 8 "C:/esp/esp-idf/components/fatfs/src/diskio.h"
	.file 9 "C:/esp/esp-idf/components/log/include/esp_log.h"
	.file 10 "C:/esp/esp-idf/components/newlib/include/assert.h"
	.file 11 "C:/esp/esp-idf/components/sdmmc/include/sdmmc_cmd.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x927
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF100
	.byte	0xc
	.4byte	.LASF101
	.4byte	.LASF102
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF1
	.byte	0x2
	.byte	0x13
	.4byte	0x37
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF2
	.byte	0x2
	.byte	0x16
	.4byte	0x49
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0x1f
	.4byte	0x70
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF10
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x3
	.byte	0x16
	.4byte	0x57
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x19
	.4byte	0x25
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0x1a
	.4byte	0x37
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF14
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0xd8
	.4byte	0x37
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF16
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF17
	.uleb128 0x6
	.byte	0x4
	.4byte	0xce
	.uleb128 0x7
	.4byte	0xc1
	.uleb128 0x8
	.4byte	0xc1
	.4byte	0xe3
	.uleb128 0x9
	.4byte	0xba
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x5
	.byte	0x21
	.4byte	0x85
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x5
	.byte	0x2c
	.4byte	0x90
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x5
	.byte	0x2d
	.4byte	0x9b
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x6
	.byte	0x18
	.4byte	0xee
	.uleb128 0xa
	.byte	0x1c
	.byte	0x7
	.byte	0x1c
	.4byte	0x16c
	.uleb128 0xb
	.4byte	.LASF22
	.byte	0x7
	.byte	0x1d
	.4byte	0x25
	.byte	0
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x7
	.byte	0x1e
	.4byte	0x25
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x7
	.byte	0x1f
	.4byte	0x25
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x7
	.byte	0x20
	.4byte	0x25
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x7
	.byte	0x21
	.4byte	0x25
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x7
	.byte	0x22
	.4byte	0x25
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x7
	.byte	0x23
	.4byte	0x25
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0x7
	.byte	0x24
	.4byte	0x10f
	.uleb128 0xa
	.byte	0x1c
	.byte	0x7
	.byte	0x29
	.4byte	0x1c8
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x7
	.byte	0x2a
	.4byte	0x25
	.byte	0
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x7
	.byte	0x2b
	.4byte	0x25
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x7
	.byte	0x2c
	.4byte	0xd3
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0x7
	.byte	0x2d
	.4byte	0x25
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0x7
	.byte	0x2e
	.4byte	0x25
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x7
	.byte	0x2f
	.4byte	0x25
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.4byte	.LASF36
	.byte	0x7
	.byte	0x30
	.4byte	0x177
	.uleb128 0xa
	.byte	0x8
	.byte	0x7
	.byte	0x35
	.4byte	0x1f4
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x7
	.byte	0x36
	.4byte	0x25
	.byte	0
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0x7
	.byte	0x37
	.4byte	0x25
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF39
	.byte	0x7
	.byte	0x38
	.4byte	0x1d3
	.uleb128 0x3
	.4byte	.LASF40
	.byte	0x7
	.byte	0x3d
	.4byte	0x20a
	.uleb128 0x8
	.4byte	0xf9
	.4byte	0x21a
	.uleb128 0x9
	.4byte	0xba
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.byte	0x2c
	.byte	0x7
	.byte	0x49
	.4byte	0x283
	.uleb128 0xb
	.4byte	.LASF41
	.byte	0x7
	.byte	0x4a
	.4byte	0xf9
	.byte	0
	.uleb128 0xc
	.string	"arg"
	.byte	0x7
	.byte	0x4b
	.4byte	0xf9
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0x7
	.byte	0x4c
	.4byte	0x1ff
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF43
	.byte	0x7
	.byte	0x4d
	.4byte	0xb8
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF44
	.byte	0x7
	.byte	0x4e
	.4byte	0xad
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF45
	.byte	0x7
	.byte	0x4f
	.4byte	0xad
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF46
	.byte	0x7
	.byte	0x50
	.4byte	0x25
	.byte	0x24
	.uleb128 0xb
	.4byte	.LASF47
	.byte	0x7
	.byte	0x68
	.4byte	0x104
	.byte	0x28
	.byte	0
	.uleb128 0x3
	.4byte	.LASF48
	.byte	0x7
	.byte	0x69
	.4byte	0x21a
	.uleb128 0xa
	.byte	0x24
	.byte	0x7
	.byte	0x71
	.4byte	0x303
	.uleb128 0xb
	.4byte	.LASF46
	.byte	0x7
	.byte	0x72
	.4byte	0xf9
	.byte	0
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0x7
	.byte	0x77
	.4byte	0x25
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF50
	.byte	0x7
	.byte	0x78
	.4byte	0x25
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF51
	.byte	0x7
	.byte	0x7c
	.4byte	0x303
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF52
	.byte	0x7
	.byte	0x7d
	.4byte	0x30f
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF53
	.byte	0x7
	.byte	0x7e
	.4byte	0x329
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF54
	.byte	0x7
	.byte	0x7f
	.4byte	0x343
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF55
	.byte	0x7
	.byte	0x80
	.4byte	0x363
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF56
	.byte	0x7
	.byte	0x81
	.4byte	0x30f
	.byte	0x20
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.byte	0x4
	.4byte	.LASF57
	.uleb128 0xd
	.4byte	0x104
	.uleb128 0x6
	.byte	0x4
	.4byte	0x30a
	.uleb128 0xe
	.4byte	0x104
	.4byte	0x329
	.uleb128 0xf
	.4byte	0x25
	.uleb128 0xf
	.4byte	0xad
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x315
	.uleb128 0xe
	.4byte	0x104
	.4byte	0x343
	.uleb128 0xf
	.4byte	0x25
	.uleb128 0xf
	.4byte	0xf9
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x32f
	.uleb128 0xe
	.4byte	0x104
	.4byte	0x35d
	.uleb128 0xf
	.4byte	0x25
	.uleb128 0xf
	.4byte	0x35d
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x283
	.uleb128 0x6
	.byte	0x4
	.4byte	0x349
	.uleb128 0x3
	.4byte	.LASF58
	.byte	0x7
	.byte	0x82
	.4byte	0x28e
	.uleb128 0xa
	.byte	0x6c
	.byte	0x7
	.byte	0x87
	.4byte	0x3c5
	.uleb128 0xb
	.4byte	.LASF59
	.byte	0x7
	.byte	0x88
	.4byte	0x369
	.byte	0
	.uleb128 0xc
	.string	"ocr"
	.byte	0x7
	.byte	0x89
	.4byte	0xf9
	.byte	0x24
	.uleb128 0xc
	.string	"cid"
	.byte	0x7
	.byte	0x8a
	.4byte	0x1c8
	.byte	0x28
	.uleb128 0xc
	.string	"csd"
	.byte	0x7
	.byte	0x8b
	.4byte	0x16c
	.byte	0x44
	.uleb128 0xc
	.string	"scr"
	.byte	0x7
	.byte	0x8c
	.4byte	0x1f4
	.byte	0x60
	.uleb128 0xc
	.string	"rca"
	.byte	0x7
	.byte	0x8d
	.4byte	0xe3
	.byte	0x68
	.byte	0
	.uleb128 0x3
	.4byte	.LASF60
	.byte	0x7
	.byte	0x8e
	.4byte	0x374
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF61
	.uleb128 0x3
	.4byte	.LASF62
	.byte	0x8
	.byte	0x11
	.4byte	0x3e
	.uleb128 0x10
	.byte	0x4
	.4byte	0x37
	.byte	0x8
	.byte	0x14
	.4byte	0x40d
	.uleb128 0x11
	.4byte	.LASF63
	.byte	0
	.uleb128 0x11
	.4byte	.LASF64
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF65
	.byte	0x2
	.uleb128 0x11
	.4byte	.LASF66
	.byte	0x3
	.uleb128 0x11
	.4byte	.LASF67
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF68
	.byte	0x8
	.byte	0x1a
	.4byte	0x3e2
	.uleb128 0xa
	.byte	0x14
	.byte	0x8
	.byte	0x34
	.4byte	0x45d
	.uleb128 0xb
	.4byte	.LASF52
	.byte	0x8
	.byte	0x35
	.4byte	0x46c
	.byte	0
	.uleb128 0xb
	.4byte	.LASF69
	.byte	0x8
	.byte	0x36
	.4byte	0x46c
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF70
	.byte	0x8
	.byte	0x37
	.4byte	0x496
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF71
	.byte	0x8
	.byte	0x38
	.4byte	0x4c5
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF72
	.byte	0x8
	.byte	0x39
	.4byte	0x4e4
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.4byte	0x3d7
	.4byte	0x46c
	.uleb128 0xf
	.4byte	0x3e
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x45d
	.uleb128 0xe
	.4byte	0x40d
	.4byte	0x490
	.uleb128 0xf
	.4byte	0x3e
	.uleb128 0xf
	.4byte	0x490
	.uleb128 0xf
	.4byte	0x65
	.uleb128 0xf
	.4byte	0x2c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3e
	.uleb128 0x6
	.byte	0x4
	.4byte	0x472
	.uleb128 0xe
	.4byte	0x40d
	.4byte	0x4ba
	.uleb128 0xf
	.4byte	0x3e
	.uleb128 0xf
	.4byte	0x4ba
	.uleb128 0xf
	.4byte	0x65
	.uleb128 0xf
	.4byte	0x2c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4c0
	.uleb128 0x7
	.4byte	0x3e
	.uleb128 0x6
	.byte	0x4
	.4byte	0x49c
	.uleb128 0xe
	.4byte	0x40d
	.4byte	0x4e4
	.uleb128 0xf
	.4byte	0x3e
	.uleb128 0xf
	.4byte	0x3e
	.uleb128 0xf
	.4byte	0xb8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4cb
	.uleb128 0x3
	.4byte	.LASF73
	.byte	0x8
	.byte	0x3a
	.4byte	0x418
	.uleb128 0x10
	.byte	0x4
	.4byte	0x37
	.byte	0x9
	.byte	0x1f
	.4byte	0x526
	.uleb128 0x11
	.4byte	.LASF74
	.byte	0
	.uleb128 0x11
	.4byte	.LASF75
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF76
	.byte	0x2
	.uleb128 0x11
	.4byte	.LASF77
	.byte	0x3
	.uleb128 0x11
	.4byte	.LASF78
	.byte	0x4
	.uleb128 0x11
	.4byte	.LASF79
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF80
	.byte	0x9
	.byte	0x26
	.4byte	0x4f5
	.uleb128 0x12
	.4byte	.LASF81
	.byte	0x1
	.byte	0x19
	.4byte	0x3d7
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x55a
	.uleb128 0x13
	.4byte	.LASF83
	.byte	0x1
	.byte	0x19
	.4byte	0x3e
	.4byte	.LLST0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF82
	.byte	0x1
	.byte	0x1e
	.4byte	0x3d7
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x583
	.uleb128 0x13
	.4byte	.LASF83
	.byte	0x1
	.byte	0x1e
	.4byte	0x3e
	.4byte	.LLST1
	.byte	0
	.uleb128 0x12
	.4byte	.LASF84
	.byte	0x1
	.byte	0x3b
	.4byte	0x40d
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x60f
	.uleb128 0x13
	.4byte	.LASF83
	.byte	0x1
	.byte	0x3b
	.4byte	0x3e
	.4byte	.LLST2
	.uleb128 0x14
	.string	"cmd"
	.byte	0x1
	.byte	0x3b
	.4byte	0x3e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x15
	.4byte	.LASF85
	.byte	0x1
	.byte	0x3b
	.4byte	0xb8
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x16
	.4byte	.LASF89
	.byte	0x1
	.byte	0x3d
	.4byte	0x60f
	.4byte	.LLST3
	.uleb128 0x17
	.4byte	.LASF90
	.4byte	0x625
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5078
	.uleb128 0x18
	.4byte	.LVL7
	.4byte	0x8e8
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x3e
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5078
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3c5
	.uleb128 0x8
	.4byte	0xc1
	.4byte	0x625
	.uleb128 0x9
	.4byte	0xba
	.byte	0xe
	.byte	0
	.uleb128 0x7
	.4byte	0x615
	.uleb128 0x12
	.4byte	.LASF86
	.byte	0x1
	.byte	0x23
	.4byte	0x40d
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x72f
	.uleb128 0x13
	.4byte	.LASF83
	.byte	0x1
	.byte	0x23
	.4byte	0x3e
	.4byte	.LLST4
	.uleb128 0x15
	.4byte	.LASF85
	.byte	0x1
	.byte	0x23
	.4byte	0x490
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x15
	.4byte	.LASF87
	.byte	0x1
	.byte	0x23
	.4byte	0x65
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x15
	.4byte	.LASF88
	.byte	0x1
	.byte	0x23
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x16
	.4byte	.LASF89
	.byte	0x1
	.byte	0x25
	.4byte	0x60f
	.4byte	.LLST5
	.uleb128 0x17
	.4byte	.LASF90
	.4byte	0x73f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5061
	.uleb128 0x1a
	.string	"err"
	.byte	0x1
	.byte	0x27
	.4byte	0x104
	.4byte	.LLST6
	.uleb128 0x1b
	.4byte	.LVL19
	.4byte	0x8e8
	.4byte	0x6d5
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x26
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5061
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL20
	.4byte	0x8f3
	.4byte	0x6f5
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL22
	.4byte	0x8fe
	.uleb128 0x18
	.4byte	.LVL23
	.4byte	0x909
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
	.4byte	.LC10
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC12
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0xc1
	.4byte	0x73f
	.uleb128 0x9
	.4byte	0xba
	.byte	0xd
	.byte	0
	.uleb128 0x7
	.4byte	0x72f
	.uleb128 0x12
	.4byte	.LASF91
	.byte	0x1
	.byte	0x2f
	.4byte	0x40d
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x849
	.uleb128 0x13
	.4byte	.LASF83
	.byte	0x1
	.byte	0x2f
	.4byte	0x3e
	.4byte	.LLST7
	.uleb128 0x15
	.4byte	.LASF85
	.byte	0x1
	.byte	0x2f
	.4byte	0x4ba
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x15
	.4byte	.LASF87
	.byte	0x1
	.byte	0x2f
	.4byte	0x65
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x15
	.4byte	.LASF88
	.byte	0x1
	.byte	0x2f
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x16
	.4byte	.LASF89
	.byte	0x1
	.byte	0x31
	.4byte	0x60f
	.4byte	.LLST8
	.uleb128 0x17
	.4byte	.LASF90
	.4byte	0x849
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5070
	.uleb128 0x1a
	.string	"err"
	.byte	0x1
	.byte	0x33
	.4byte	0x104
	.4byte	.LLST9
	.uleb128 0x1b
	.4byte	.LVL31
	.4byte	0x8e8
	.4byte	0x7ef
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x32
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5070
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL32
	.4byte	0x914
	.4byte	0x80f
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL34
	.4byte	0x8fe
	.uleb128 0x18
	.4byte	.LVL35
	.4byte	0x909
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
	.4byte	.LC10
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC19
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0x615
	.uleb128 0x1d
	.4byte	.LASF103
	.byte	0x1
	.byte	0x4e
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8ab
	.uleb128 0x15
	.4byte	.LASF83
	.byte	0x1
	.byte	0x4e
	.4byte	0x3e
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x15
	.4byte	.LASF89
	.byte	0x1
	.byte	0x4e
	.4byte	0x60f
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1e
	.4byte	.LASF92
	.byte	0x1
	.byte	0x50
	.4byte	0x8ab
	.uleb128 0x5
	.byte	0x3
	.4byte	sdmmc_impl$5087
	.uleb128 0x18
	.4byte	.LVL40
	.4byte	0x91f
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	sdmmc_impl$5087
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0x4ea
	.uleb128 0x8
	.4byte	0x60f
	.4byte	0x8c0
	.uleb128 0x9
	.4byte	0xba
	.byte	0x1
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF93
	.byte	0x1
	.byte	0x15
	.4byte	0x8b0
	.uleb128 0x5
	.byte	0x3
	.4byte	s_cards
	.uleb128 0x1f
	.string	"TAG"
	.byte	0x1
	.byte	0x17
	.4byte	0x8e3
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC10
	.byte	0x9f
	.uleb128 0x7
	.4byte	0xc8
	.uleb128 0x20
	.4byte	.LASF94
	.4byte	.LASF94
	.byte	0xa
	.byte	0x29
	.uleb128 0x20
	.4byte	.LASF95
	.4byte	.LASF95
	.byte	0xb
	.byte	0x48
	.uleb128 0x20
	.4byte	.LASF96
	.4byte	.LASF96
	.byte	0x9
	.byte	0x4c
	.uleb128 0x20
	.4byte	.LASF97
	.4byte	.LASF97
	.byte	0x9
	.byte	0x60
	.uleb128 0x20
	.4byte	.LASF98
	.4byte	.LASF98
	.byte	0xb
	.byte	0x3a
	.uleb128 0x20
	.4byte	.LASF99
	.4byte	.LASF99
	.byte	0x8
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
	.uleb128 0xe
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
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x14
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x2
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
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL1
	.4byte	.LFE9
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
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL3
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL5
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0xb
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x32
	.byte	0x24
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0xb
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x32
	.byte	0x24
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0xb
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x32
	.byte	0x24
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL14
	.4byte	.LFE13
	.2byte	0xb
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x32
	.byte	0x24
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL16
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL18
	.4byte	.LVL19-1
	.2byte	0x2
	.byte	0x72
	.sleb128 0
	.4byte	.LVL19
	.4byte	.LVL20-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL21
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL26
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL28
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL30
	.4byte	.LVL31-1
	.2byte	0x2
	.byte	0x72
	.sleb128 0
	.4byte	.LVL31
	.4byte	.LVL32-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL33
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL38
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x5a
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
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF99:
	.string	"ff_diskio_register"
.LASF83:
	.string	"pdrv"
.LASF56:
	.string	"deinit"
.LASF27:
	.string	"card_command_class"
.LASF64:
	.string	"RES_ERROR"
.LASF71:
	.string	"write"
.LASF40:
	.string	"sdmmc_response_t"
.LASF79:
	.string	"ESP_LOG_VERBOSE"
.LASF50:
	.string	"max_freq_khz"
.LASF63:
	.string	"RES_OK"
.LASF4:
	.string	"short int"
.LASF15:
	.string	"size_t"
.LASF16:
	.string	"sizetype"
.LASF82:
	.string	"ff_sdmmc_status"
.LASF45:
	.string	"blklen"
.LASF31:
	.string	"oem_id"
.LASF85:
	.string	"buff"
.LASF2:
	.string	"BYTE"
.LASF11:
	.string	"__uint16_t"
.LASF77:
	.string	"ESP_LOG_INFO"
.LASF35:
	.string	"date"
.LASF55:
	.string	"do_transaction"
.LASF37:
	.string	"sd_spec"
.LASF58:
	.string	"sdmmc_host_t"
.LASF98:
	.string	"sdmmc_write_sectors"
.LASF41:
	.string	"opcode"
.LASF28:
	.string	"tr_speed"
.LASF87:
	.string	"sector"
.LASF97:
	.string	"esp_log_write"
.LASF30:
	.string	"mfg_id"
.LASF57:
	.string	"float"
.LASF48:
	.string	"sdmmc_command_t"
.LASF36:
	.string	"sdmmc_cid_t"
.LASF54:
	.string	"set_card_clk"
.LASF44:
	.string	"datalen"
.LASF14:
	.string	"long long int"
.LASF38:
	.string	"bus_width"
.LASF66:
	.string	"RES_NOTRDY"
.LASF6:
	.string	"long int"
.LASF33:
	.string	"revision"
.LASF65:
	.string	"RES_WRPRT"
.LASF93:
	.string	"s_cards"
.LASF1:
	.string	"UINT"
.LASF51:
	.string	"io_voltage"
.LASF25:
	.string	"sector_size"
.LASF73:
	.string	"ff_diskio_impl_t"
.LASF102:
	.string	"C:\\\\esp\\\\ArkPOS2-esp\\\\build\\\\fatfs"
.LASF60:
	.string	"sdmmc_card_t"
.LASF62:
	.string	"DSTATUS"
.LASF46:
	.string	"flags"
.LASF7:
	.string	"DWORD"
.LASF3:
	.string	"unsigned char"
.LASF90:
	.string	"__func__"
.LASF23:
	.string	"mmc_ver"
.LASF100:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF70:
	.string	"read"
.LASF10:
	.string	"signed char"
.LASF24:
	.string	"capacity"
.LASF9:
	.string	"long long unsigned int"
.LASF20:
	.string	"uint32_t"
.LASF0:
	.string	"unsigned int"
.LASF18:
	.string	"uint16_t"
.LASF72:
	.string	"ioctl"
.LASF49:
	.string	"slot"
.LASF5:
	.string	"short unsigned int"
.LASF69:
	.string	"status"
.LASF101:
	.string	"C:/esp/esp-idf/components/fatfs/src/diskio_sdmmc.c"
.LASF17:
	.string	"char"
.LASF52:
	.string	"init"
.LASF78:
	.string	"ESP_LOG_DEBUG"
.LASF19:
	.string	"int32_t"
.LASF74:
	.string	"ESP_LOG_NONE"
.LASF34:
	.string	"serial"
.LASF81:
	.string	"ff_sdmmc_initialize"
.LASF92:
	.string	"sdmmc_impl"
.LASF103:
	.string	"ff_diskio_register_sdmmc"
.LASF61:
	.string	"_Bool"
.LASF91:
	.string	"ff_sdmmc_write"
.LASF80:
	.string	"esp_log_level_t"
.LASF43:
	.string	"data"
.LASF76:
	.string	"ESP_LOG_WARN"
.LASF84:
	.string	"ff_sdmmc_ioctl"
.LASF8:
	.string	"long unsigned int"
.LASF39:
	.string	"sdmmc_scr_t"
.LASF42:
	.string	"response"
.LASF13:
	.string	"__uint32_t"
.LASF88:
	.string	"count"
.LASF12:
	.string	"__int32_t"
.LASF86:
	.string	"ff_sdmmc_read"
.LASF95:
	.string	"sdmmc_read_sectors"
.LASF68:
	.string	"DRESULT"
.LASF32:
	.string	"name"
.LASF96:
	.string	"esp_log_timestamp"
.LASF22:
	.string	"csd_ver"
.LASF47:
	.string	"error"
.LASF29:
	.string	"sdmmc_csd_t"
.LASF94:
	.string	"__assert_func"
.LASF89:
	.string	"card"
.LASF59:
	.string	"host"
.LASF67:
	.string	"RES_PARERR"
.LASF53:
	.string	"set_bus_width"
.LASF75:
	.string	"ESP_LOG_ERROR"
.LASF21:
	.string	"esp_err_t"
.LASF26:
	.string	"read_block_len"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-61-gab8375a) 5.2.0"
