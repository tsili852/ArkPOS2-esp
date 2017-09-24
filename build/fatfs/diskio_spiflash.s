	.file	"diskio_spiflash.c"
	.text
.Ltext0:
	.section	.text.ff_wl_initialize,"ax",@progbits
	.align	4
	.global	ff_wl_initialize
	.type	ff_wl_initialize, @function
ff_wl_initialize:
.LFB9:
	.file 1 "C:/esp/esp-idf/components/fatfs/src/diskio_spiflash.c"
	.loc 1 31 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 33 0
	movi.n	a2, 0
.LVL1:
	retw.n
.LFE9:
	.size	ff_wl_initialize, .-ff_wl_initialize
	.section	.text.ff_wl_status,"ax",@progbits
	.align	4
	.global	ff_wl_status
	.type	ff_wl_status, @function
ff_wl_status:
.LFB10:
	.loc 1 36 0
.LVL2:
	entry	sp, 32
.LCFI1:
	.loc 1 38 0
	movi.n	a2, 0
.LVL3:
	retw.n
.LFE10:
	.size	ff_wl_status, .-ff_wl_status
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC1:
	.string	"wl_handle + 1"
	.align	4
.LC4:
	.string	"C:/esp/esp-idf/components/fatfs/src/diskio_spiflash.c"
	.align	4
.LC6:
	.string	"ff_diskio_spiflash"
	.align	4
.LC8:
	.string	"\033[0;31mE (%d) %s: wl_read failed (%d)\033[0m\n"
	.section	.text.ff_wl_read,"ax",@progbits
	.literal_position
	.literal .LC0, ff_wl_handles
	.literal .LC2, .LC1
	.literal .LC3, __func__$5398
	.literal .LC5, .LC4
	.literal .LC7, .LC6
	.literal .LC9, .LC8
	.align	4
	.global	ff_wl_read
	.type	ff_wl_read, @function
ff_wl_read:
.LFB11:
	.loc 1 41 0
.LVL4:
	entry	sp, 32
.LCFI2:
	extui	a2, a2, 0, 8
	.loc 1 43 0
	l32r	a8, .LC0
	addx4	a2, a2, a8
.LVL5:
	l32i.n	a2, a2, 0
.LVL6:
	.loc 1 44 0
	bnei	a2, -1, .L4
	.loc 1 44 0 is_stmt 0 discriminator 1
	l32r	a13, .LC2
	l32r	a12, .LC3
	movi.n	a11, 0x2c
	l32r	a10, .LC5
	call8	__assert_func
.LVL7:
.L4:
	.loc 1 45 0 is_stmt 1
	mov.n	a10, a2
	call8	wl_sector_size
.LVL8:
	mull	a4, a10, a4
.LVL9:
	mov.n	a10, a2
	call8	wl_sector_size
.LVL10:
	mull	a13, a10, a5
	mov.n	a12, a3
	mov.n	a11, a4
	mov.n	a10, a2
	call8	wl_read
.LVL11:
	mov.n	a2, a10
.LVL12:
	.loc 1 46 0
	beqz.n	a10, .L6
	.loc 1 47 0 discriminator 1
	call8	esp_log_timestamp
.LVL13:
	l32r	a11, .LC7
	mov.n	a15, a2
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC9
	movi.n	a10, 1
	call8	esp_log_write
.LVL14:
	.loc 1 48 0 discriminator 1
	movi.n	a2, 1
.LVL15:
	retw.n
.LVL16:
.L6:
	.loc 1 50 0
	movi.n	a2, 0
.LVL17:
	.loc 1 51 0
	retw.n
.LFE11:
	.size	ff_wl_read, .-ff_wl_read
	.section	.rodata.str1.4
	.align	4
.LC15:
	.string	"\033[0;31mE (%d) %s: wl_erase_range failed (%d)\033[0m\n"
	.align	4
.LC17:
	.string	"\033[0;31mE (%d) %s: wl_write failed (%d)\033[0m\n"
	.section	.text.ff_wl_write,"ax",@progbits
	.literal_position
	.literal .LC10, ff_wl_handles
	.literal .LC11, .LC1
	.literal .LC12, __func__$5407
	.literal .LC13, .LC4
	.literal .LC14, .LC6
	.literal .LC16, .LC15
	.literal .LC18, .LC17
	.align	4
	.global	ff_wl_write
	.type	ff_wl_write, @function
ff_wl_write:
.LFB12:
	.loc 1 54 0
.LVL18:
	entry	sp, 32
.LCFI3:
	extui	a2, a2, 0, 8
	.loc 1 56 0
	l32r	a6, .LC10
	addx4	a2, a2, a6
.LVL19:
	l32i.n	a2, a2, 0
.LVL20:
	.loc 1 57 0
	bnei	a2, -1, .L8
	.loc 1 57 0 is_stmt 0 discriminator 1
	l32r	a13, .LC11
	l32r	a12, .LC12
	movi.n	a11, 0x39
	l32r	a10, .LC13
	call8	__assert_func
.LVL21:
.L8:
	.loc 1 58 0 is_stmt 1
	mov.n	a10, a2
	call8	wl_sector_size
.LVL22:
	mull	a6, a10, a4
	mov.n	a10, a2
	call8	wl_sector_size
.LVL23:
	mull	a12, a10, a5
	mov.n	a11, a6
	mov.n	a10, a2
	call8	wl_erase_range
.LVL24:
	mov.n	a6, a10
.LVL25:
	.loc 1 59 0
	beqz.n	a10, .L9
	.loc 1 60 0 discriminator 1
	call8	esp_log_timestamp
.LVL26:
	l32r	a11, .LC14
	mov.n	a15, a6
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC16
	movi.n	a10, 1
	call8	esp_log_write
.LVL27:
	.loc 1 61 0 discriminator 1
	movi.n	a2, 1
.LVL28:
	retw.n
.LVL29:
.L9:
	.loc 1 63 0
	mov.n	a10, a2
	call8	wl_sector_size
.LVL30:
	mull	a4, a4, a10
.LVL31:
	mov.n	a10, a2
	call8	wl_sector_size
.LVL32:
	mull	a13, a5, a10
	mov.n	a12, a3
	mov.n	a11, a4
	mov.n	a10, a2
	call8	wl_write
.LVL33:
	mov.n	a2, a10
.LVL34:
	.loc 1 64 0
	beqz.n	a10, .L11
	.loc 1 65 0 discriminator 1
	call8	esp_log_timestamp
.LVL35:
	l32r	a11, .LC14
	mov.n	a15, a2
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC18
	movi.n	a10, 1
	call8	esp_log_write
.LVL36:
	.loc 1 66 0 discriminator 1
	movi.n	a2, 1
.LVL37:
	retw.n
.LVL38:
.L11:
	.loc 1 68 0
	movi.n	a2, 0
.LVL39:
	.loc 1 69 0
	retw.n
.LFE12:
	.size	ff_wl_write, .-ff_wl_write
	.section	.text.ff_wl_ioctl,"ax",@progbits
	.literal_position
	.literal .LC19, ff_wl_handles
	.literal .LC20, .LC1
	.literal .LC21, __func__$5415
	.literal .LC22, .LC4
	.align	4
	.global	ff_wl_ioctl
	.type	ff_wl_ioctl, @function
ff_wl_ioctl:
.LFB13:
	.loc 1 72 0
.LVL40:
	entry	sp, 32
.LCFI4:
	extui	a2, a2, 0, 8
	extui	a3, a3, 0, 8
	.loc 1 73 0
	l32r	a8, .LC19
	addx4	a2, a2, a8
.LVL41:
	l32i.n	a2, a2, 0
.LVL42:
	.loc 1 75 0
	bnei	a2, -1, .L13
	.loc 1 75 0 is_stmt 0 discriminator 1
	l32r	a13, .LC20
	l32r	a12, .LC21
	movi.n	a11, 0x4b
	l32r	a10, .LC22
	call8	__assert_func
.LVL43:
.L13:
	.loc 1 76 0 is_stmt 1
	beqi	a3, 1, .L15
	beqz.n	a3, .L16
	bnei	a3, 2, .L19
	j	.L17
.L16:
	.loc 1 78 0
	movi.n	a2, 0
.LVL44:
	retw.n
.LVL45:
.L15:
	.loc 1 80 0
	mov.n	a10, a2
	call8	wl_size
.LVL46:
	mov.n	a3, a10
.LVL47:
	mov.n	a10, a2
	call8	wl_sector_size
.LVL48:
	quou	a10, a3, a10
	s32i.n	a10, a4, 0
	.loc 1 81 0
	movi.n	a2, 0
.LVL49:
	retw.n
.LVL50:
.L17:
	.loc 1 83 0
	mov.n	a10, a2
	call8	wl_sector_size
.LVL51:
	s32i.n	a10, a4, 0
	.loc 1 84 0
	movi.n	a2, 0
.LVL52:
	retw.n
.LVL53:
.L19:
	.loc 1 86 0
	movi.n	a2, 1
.LVL54:
	.loc 1 89 0
	retw.n
.LFE13:
	.size	ff_wl_ioctl, .-ff_wl_ioctl
	.section	.text.ff_diskio_register_wl_partition,"ax",@progbits
	.literal_position
	.literal .LC23, ff_wl_handles
	.literal .LC24, wl_impl$5424
	.align	4
	.global	ff_diskio_register_wl_partition
	.type	ff_diskio_register_wl_partition, @function
ff_diskio_register_wl_partition:
.LFB14:
	.loc 1 93 0
.LVL55:
	entry	sp, 32
.LCFI5:
	extui	a10, a2, 0, 8
	.loc 1 94 0
	bgeui	a10, 2, .L22
	.loc 1 104 0
	l32r	a2, .LC23
.LVL56:
	addx4	a2, a10, a2
	s32i.n	a3, a2, 0
	.loc 1 105 0
	l32r	a11, .LC24
	call8	ff_diskio_register
.LVL57:
	.loc 1 106 0
	movi.n	a2, 0
	retw.n
.LVL58:
.L22:
	.loc 1 95 0
	movi	a2, 0x102
.LVL59:
	.loc 1 107 0
	retw.n
.LFE14:
	.size	ff_diskio_register_wl_partition, .-ff_diskio_register_wl_partition
	.section	.text.ff_diskio_get_pdrv_wl,"ax",@progbits
	.literal_position
	.literal .LC25, ff_wl_handles
	.align	4
	.global	ff_diskio_get_pdrv_wl
	.type	ff_diskio_get_pdrv_wl, @function
ff_diskio_get_pdrv_wl:
.LFB15:
	.loc 1 110 0
.LVL60:
	entry	sp, 32
.LCFI6:
.LVL61:
.LBB2:
	.loc 1 111 0
	movi.n	a8, 0
	j	.L24
.LVL62:
.L27:
	.loc 1 112 0
	l32r	a9, .LC25
	addx4	a9, a8, a9
	l32i.n	a9, a9, 0
	bne	a9, a2, .L25
	.loc 1 113 0
	extui	a2, a8, 0, 8
.LVL63:
	retw.n
.LVL64:
.L25:
	.loc 1 111 0 discriminator 2
	addi.n	a8, a8, 1
.LVL65:
.L24:
	.loc 1 111 0 is_stmt 0 discriminator 1
	blti	a8, 2, .L27
.LBE2:
	.loc 1 116 0 is_stmt 1
	movi	a2, 0xff
.LVL66:
	.loc 1 117 0
	retw.n
.LFE15:
	.size	ff_diskio_get_pdrv_wl, .-ff_diskio_get_pdrv_wl
	.section	.rodata.wl_impl$5424,"a",@progbits
	.align	4
	.type	wl_impl$5424, @object
	.size	wl_impl$5424, 20
wl_impl$5424:
	.word	ff_wl_initialize
	.word	ff_wl_status
	.word	ff_wl_read
	.word	ff_wl_write
	.word	ff_wl_ioctl
	.section	.rodata.__func__$5415,"a",@progbits
	.align	4
	.type	__func__$5415, @object
	.size	__func__$5415, 12
__func__$5415:
	.string	"ff_wl_ioctl"
	.section	.rodata.__func__$5407,"a",@progbits
	.align	4
	.type	__func__$5407, @object
	.size	__func__$5407, 12
__func__$5407:
	.string	"ff_wl_write"
	.section	.rodata.__func__$5398,"a",@progbits
	.align	4
	.type	__func__$5398, @object
	.size	__func__$5398, 11
__func__$5398:
	.string	"ff_wl_read"
	.global	ff_wl_handles
	.section	.data.ff_wl_handles,"aw",@progbits
	.align	4
	.type	ff_wl_handles, @object
	.size	ff_wl_handles, 8
ff_wl_handles:
	.word	-1
	.word	-1
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
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI2-.LFB11
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI3-.LFB12
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI4-.LFB13
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
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI6-.LFB15
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
	.text
.Letext0:
	.file 2 "C:/esp/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "C:/esp/esp-idf/components/fatfs/src/integer.h"
	.file 4 "C:/esp/esp-idf/components/newlib/include/stdint.h"
	.file 5 "C:/esp/esp-idf/components/esp32/include/esp_err.h"
	.file 6 "C:/esp/esp-idf/components/fatfs/src/diskio.h"
	.file 7 "C:/esp/esp-idf/components/log/include/esp_log.h"
	.file 8 "C:/esp/esp-idf/components/wear_levelling/include/wear_levelling.h"
	.file 9 "C:/esp/esp-idf/components/newlib/include/assert.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x7ba
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF66
	.byte	0xc
	.4byte	.LASF67
	.4byte	.LASF68
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
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
	.uleb128 0x4
	.4byte	.LASF5
	.byte	0x2
	.byte	0x19
	.4byte	0x25
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x2
	.byte	0x1a
	.4byte	0x2c
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x6
	.byte	0x4
	.4byte	0x97
	.uleb128 0x7
	.4byte	0x8a
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x3
	.byte	0x13
	.4byte	0x2c
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x3
	.byte	0x16
	.4byte	0x41
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x3
	.byte	0x1f
	.4byte	0x83
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x4
	.byte	0x2c
	.4byte	0x4f
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x4
	.byte	0x2d
	.4byte	0x5a
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x5
	.byte	0x18
	.4byte	0xbd
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.4byte	.LASF19
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF20
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x6
	.byte	0x11
	.4byte	0xa7
	.uleb128 0x8
	.byte	0x4
	.4byte	0x2c
	.byte	0x6
	.byte	0x14
	.4byte	0x122
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF27
	.byte	0x6
	.byte	0x1a
	.4byte	0xf7
	.uleb128 0xa
	.byte	0x14
	.byte	0x6
	.byte	0x34
	.4byte	0x172
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x6
	.byte	0x35
	.4byte	0x181
	.byte	0
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x6
	.byte	0x36
	.4byte	0x181
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x6
	.byte	0x37
	.4byte	0x1ab
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x6
	.byte	0x38
	.4byte	0x1da
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x6
	.byte	0x39
	.4byte	0x1f9
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.4byte	0xec
	.4byte	0x181
	.uleb128 0xd
	.4byte	0xa7
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x172
	.uleb128 0xc
	.4byte	0x122
	.4byte	0x1a5
	.uleb128 0xd
	.4byte	0xa7
	.uleb128 0xd
	.4byte	0x1a5
	.uleb128 0xd
	.4byte	0xb2
	.uleb128 0xd
	.4byte	0x9c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa7
	.uleb128 0x6
	.byte	0x4
	.4byte	0x187
	.uleb128 0xc
	.4byte	0x122
	.4byte	0x1cf
	.uleb128 0xd
	.4byte	0xa7
	.uleb128 0xd
	.4byte	0x1cf
	.uleb128 0xd
	.4byte	0xb2
	.uleb128 0xd
	.4byte	0x9c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1d5
	.uleb128 0x7
	.4byte	0xa7
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1b1
	.uleb128 0xc
	.4byte	0x122
	.4byte	0x1f9
	.uleb128 0xd
	.4byte	0xa7
	.uleb128 0xd
	.4byte	0xa7
	.uleb128 0xd
	.4byte	0x81
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1e0
	.uleb128 0x4
	.4byte	.LASF33
	.byte	0x6
	.byte	0x3a
	.4byte	0x12d
	.uleb128 0x8
	.byte	0x4
	.4byte	0x2c
	.byte	0x7
	.byte	0x1f
	.4byte	0x23b
	.uleb128 0x9
	.4byte	.LASF34
	.byte	0
	.uleb128 0x9
	.4byte	.LASF35
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF37
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF38
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF39
	.byte	0x5
	.byte	0
	.uleb128 0x4
	.4byte	.LASF40
	.byte	0x7
	.byte	0x26
	.4byte	0x20a
	.uleb128 0x4
	.4byte	.LASF41
	.byte	0x8
	.byte	0x1c
	.4byte	0xbd
	.uleb128 0xe
	.4byte	.LASF42
	.byte	0x1
	.byte	0x1e
	.4byte	0xec
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x27a
	.uleb128 0xf
	.4byte	.LASF44
	.byte	0x1
	.byte	0x1e
	.4byte	0xa7
	.4byte	.LLST0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF43
	.byte	0x1
	.byte	0x23
	.4byte	0xec
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2a3
	.uleb128 0xf
	.4byte	.LASF44
	.byte	0x1
	.byte	0x23
	.4byte	0xa7
	.4byte	.LLST1
	.byte	0
	.uleb128 0xe
	.4byte	.LASF45
	.byte	0x1
	.byte	0x28
	.4byte	0x122
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3d2
	.uleb128 0xf
	.4byte	.LASF44
	.byte	0x1
	.byte	0x28
	.4byte	0xa7
	.4byte	.LLST2
	.uleb128 0x10
	.4byte	.LASF46
	.byte	0x1
	.byte	0x28
	.4byte	0x1a5
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xf
	.4byte	.LASF47
	.byte	0x1
	.byte	0x28
	.4byte	0xb2
	.4byte	.LLST3
	.uleb128 0x10
	.4byte	.LASF48
	.byte	0x1
	.byte	0x28
	.4byte	0x9c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x11
	.4byte	.LASF49
	.byte	0x1
	.byte	0x2b
	.4byte	0x246
	.4byte	.LLST4
	.uleb128 0x12
	.4byte	.LASF51
	.4byte	0x3e2
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5398
	.uleb128 0x13
	.string	"err"
	.byte	0x1
	.byte	0x2d
	.4byte	0xd3
	.4byte	.LLST5
	.uleb128 0x14
	.4byte	.LVL7
	.4byte	0x75a
	.4byte	0x350
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x2c
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5398
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x14
	.4byte	.LVL8
	.4byte	0x765
	.4byte	0x364
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL10
	.4byte	0x765
	.4byte	0x378
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL11
	.4byte	0x770
	.4byte	0x398
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL13
	.4byte	0x77b
	.uleb128 0x17
	.4byte	.LVL14
	.4byte	0x786
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	0x8a
	.4byte	0x3e2
	.uleb128 0x19
	.4byte	0x7a
	.byte	0xa
	.byte	0
	.uleb128 0x7
	.4byte	0x3d2
	.uleb128 0xe
	.4byte	.LASF50
	.byte	0x1
	.byte	0x35
	.4byte	0x122
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x595
	.uleb128 0xf
	.4byte	.LASF44
	.byte	0x1
	.byte	0x35
	.4byte	0xa7
	.4byte	.LLST6
	.uleb128 0x10
	.4byte	.LASF46
	.byte	0x1
	.byte	0x35
	.4byte	0x1cf
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xf
	.4byte	.LASF47
	.byte	0x1
	.byte	0x35
	.4byte	0xb2
	.4byte	.LLST7
	.uleb128 0x10
	.4byte	.LASF48
	.byte	0x1
	.byte	0x35
	.4byte	0x9c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x11
	.4byte	.LASF49
	.byte	0x1
	.byte	0x38
	.4byte	0x246
	.4byte	.LLST8
	.uleb128 0x12
	.4byte	.LASF51
	.4byte	0x5a5
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5407
	.uleb128 0x13
	.string	"err"
	.byte	0x1
	.byte	0x3a
	.4byte	0xd3
	.4byte	.LLST9
	.uleb128 0x14
	.4byte	.LVL21
	.4byte	0x75a
	.4byte	0x494
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x39
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5407
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x14
	.4byte	.LVL22
	.4byte	0x765
	.4byte	0x4a8
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL23
	.4byte	0x765
	.4byte	0x4bc
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL24
	.4byte	0x791
	.4byte	0x4d6
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL26
	.4byte	0x77b
	.uleb128 0x14
	.4byte	.LVL27
	.4byte	0x786
	.4byte	0x513
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL30
	.4byte	0x765
	.4byte	0x527
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL32
	.4byte	0x765
	.4byte	0x53b
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL33
	.4byte	0x79c
	.4byte	0x55b
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL35
	.4byte	0x77b
	.uleb128 0x17
	.4byte	.LVL36
	.4byte	0x786
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	0x8a
	.4byte	0x5a5
	.uleb128 0x19
	.4byte	0x7a
	.byte	0xb
	.byte	0
	.uleb128 0x7
	.4byte	0x595
	.uleb128 0xe
	.4byte	.LASF52
	.byte	0x1
	.byte	0x47
	.4byte	0x122
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x674
	.uleb128 0xf
	.4byte	.LASF44
	.byte	0x1
	.byte	0x47
	.4byte	0xa7
	.4byte	.LLST10
	.uleb128 0x1a
	.string	"cmd"
	.byte	0x1
	.byte	0x47
	.4byte	0xa7
	.4byte	.LLST11
	.uleb128 0x10
	.4byte	.LASF46
	.byte	0x1
	.byte	0x47
	.4byte	0x81
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x11
	.4byte	.LASF49
	.byte	0x1
	.byte	0x49
	.4byte	0x246
	.4byte	.LLST12
	.uleb128 0x12
	.4byte	.LASF51
	.4byte	0x674
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5415
	.uleb128 0x14
	.4byte	.LVL43
	.4byte	0x75a
	.4byte	0x63b
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x4b
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5415
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x14
	.4byte	.LVL46
	.4byte	0x7a7
	.4byte	0x64f
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL48
	.4byte	0x765
	.4byte	0x663
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL51
	.4byte	0x765
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0x595
	.uleb128 0xe
	.4byte	.LASF53
	.byte	0x1
	.byte	0x5c
	.4byte	0xd3
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6dd
	.uleb128 0xf
	.4byte	.LASF44
	.byte	0x1
	.byte	0x5c
	.4byte	0xa7
	.4byte	.LLST13
	.uleb128 0x10
	.4byte	.LASF54
	.byte	0x1
	.byte	0x5c
	.4byte	0x246
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1b
	.4byte	.LASF55
	.byte	0x1
	.byte	0x61
	.4byte	0x6dd
	.uleb128 0x5
	.byte	0x3
	.4byte	wl_impl$5424
	.uleb128 0x17
	.4byte	.LVL57
	.4byte	0x7b2
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	wl_impl$5424
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0x1ff
	.uleb128 0xe
	.4byte	.LASF56
	.byte	0x1
	.byte	0x6d
	.4byte	0xa7
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x722
	.uleb128 0xf
	.4byte	.LASF54
	.byte	0x1
	.byte	0x6d
	.4byte	0x246
	.4byte	.LLST14
	.uleb128 0x1c
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x13
	.string	"i"
	.byte	0x1
	.byte	0x6f
	.4byte	0x25
	.4byte	.LLST15
	.byte	0
	.byte	0
	.uleb128 0x1d
	.string	"TAG"
	.byte	0x1
	.byte	0x17
	.4byte	0x734
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC6
	.byte	0x9f
	.uleb128 0x7
	.4byte	0x91
	.uleb128 0x18
	.4byte	0x246
	.4byte	0x749
	.uleb128 0x19
	.4byte	0x7a
	.byte	0x1
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF69
	.byte	0x1
	.byte	0x19
	.4byte	0x739
	.uleb128 0x5
	.byte	0x3
	.4byte	ff_wl_handles
	.uleb128 0x1f
	.4byte	.LASF57
	.4byte	.LASF57
	.byte	0x9
	.byte	0x29
	.uleb128 0x1f
	.4byte	.LASF58
	.4byte	.LASF58
	.byte	0x8
	.byte	0x81
	.uleb128 0x1f
	.4byte	.LASF59
	.4byte	.LASF59
	.byte	0x8
	.byte	0x71
	.uleb128 0x1f
	.4byte	.LASF60
	.4byte	.LASF60
	.byte	0x7
	.byte	0x4c
	.uleb128 0x1f
	.4byte	.LASF61
	.4byte	.LASF61
	.byte	0x7
	.byte	0x60
	.uleb128 0x1f
	.4byte	.LASF62
	.4byte	.LASF62
	.byte	0x8
	.byte	0x47
	.uleb128 0x1f
	.4byte	.LASF63
	.4byte	.LASF63
	.byte	0x8
	.byte	0x5f
	.uleb128 0x1f
	.4byte	.LASF64
	.4byte	.LASF64
	.byte	0x8
	.byte	0x79
	.uleb128 0x1f
	.4byte	.LASF65
	.4byte	.LASF65
	.byte	0x6
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
	.uleb128 0xd
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x17
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
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
	.uleb128 0x18
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
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
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL4
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL9
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL6
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL12
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL17
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL19
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL18
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL31
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL20
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL29
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL25
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL34
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL39
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL41
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL40
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL47
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL42
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL44
	.4byte	.LVL45
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
	.4byte	.LVL45
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL50
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL54
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
.LLST13:
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL56
	.4byte	.LVL57-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL57-1
	.4byte	.LVL58
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL59
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL60
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL64
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL66
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL62
	.4byte	.LFE15
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x4c
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
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF65:
	.string	"ff_diskio_register"
.LASF44:
	.string	"pdrv"
.LASF23:
	.string	"RES_ERROR"
.LASF31:
	.string	"write"
.LASF39:
	.string	"ESP_LOG_VERBOSE"
.LASF66:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF22:
	.string	"RES_OK"
.LASF4:
	.string	"short int"
.LASF10:
	.string	"sizetype"
.LASF6:
	.string	"__uint32_t"
.LASF46:
	.string	"buff"
.LASF14:
	.string	"BYTE"
.LASF54:
	.string	"flash_handle"
.LASF56:
	.string	"ff_diskio_get_pdrv_wl"
.LASF41:
	.string	"wl_handle_t"
.LASF64:
	.string	"wl_size"
.LASF47:
	.string	"sector"
.LASF61:
	.string	"esp_log_write"
.LASF45:
	.string	"ff_wl_read"
.LASF62:
	.string	"wl_erase_range"
.LASF19:
	.string	"float"
.LASF43:
	.string	"ff_wl_status"
.LASF30:
	.string	"read"
.LASF53:
	.string	"ff_diskio_register_wl_partition"
.LASF7:
	.string	"long long int"
.LASF9:
	.string	"long int"
.LASF34:
	.string	"ESP_LOG_NONE"
.LASF24:
	.string	"RES_WRPRT"
.LASF13:
	.string	"UINT"
.LASF33:
	.string	"ff_diskio_impl_t"
.LASF67:
	.string	"C:/esp/esp-idf/components/fatfs/src/diskio_spiflash.c"
.LASF68:
	.string	"C:\\\\esp\\\\ArkPOS2-esp\\\\build\\\\fatfs"
.LASF21:
	.string	"DSTATUS"
.LASF49:
	.string	"wl_handle"
.LASF15:
	.string	"DWORD"
.LASF3:
	.string	"unsigned char"
.LASF51:
	.string	"__func__"
.LASF63:
	.string	"wl_write"
.LASF50:
	.string	"ff_wl_write"
.LASF2:
	.string	"signed char"
.LASF8:
	.string	"long long unsigned int"
.LASF17:
	.string	"uint32_t"
.LASF52:
	.string	"ff_wl_ioctl"
.LASF0:
	.string	"unsigned int"
.LASF32:
	.string	"ioctl"
.LASF55:
	.string	"wl_impl"
.LASF58:
	.string	"wl_sector_size"
.LASF1:
	.string	"short unsigned int"
.LASF29:
	.string	"status"
.LASF12:
	.string	"char"
.LASF28:
	.string	"init"
.LASF38:
	.string	"ESP_LOG_DEBUG"
.LASF16:
	.string	"int32_t"
.LASF69:
	.string	"ff_wl_handles"
.LASF25:
	.string	"RES_NOTRDY"
.LASF20:
	.string	"_Bool"
.LASF40:
	.string	"esp_log_level_t"
.LASF36:
	.string	"ESP_LOG_WARN"
.LASF11:
	.string	"long unsigned int"
.LASF59:
	.string	"wl_read"
.LASF48:
	.string	"count"
.LASF5:
	.string	"__int32_t"
.LASF27:
	.string	"DRESULT"
.LASF60:
	.string	"esp_log_timestamp"
.LASF57:
	.string	"__assert_func"
.LASF26:
	.string	"RES_PARERR"
.LASF35:
	.string	"ESP_LOG_ERROR"
.LASF42:
	.string	"ff_wl_initialize"
.LASF18:
	.string	"esp_err_t"
.LASF37:
	.string	"ESP_LOG_INFO"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-61-gab8375a) 5.2.0"
