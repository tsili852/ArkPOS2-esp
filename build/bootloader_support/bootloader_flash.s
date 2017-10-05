	.file	"bootloader_flash.c"
	.text
.Ltext0:
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC1:
	.string	"bootloader_mmap"
	.align	4
.LC3:
	.string	"\033[0;31mE (%d) %s: tried to bootloader_mmap twice\033[0m\n"
	.section	.text.bootloader_mmap,"ax",@progbits
	.literal_position
	.literal .LC0, map
	.literal .LC2, .LC1
	.literal .LC4, .LC3
	.literal .LC5, -65536
	.align	4
	.global	bootloader_mmap
	.type	bootloader_mmap, @function
bootloader_mmap:
.LFB1:
	.file 1 "C:/esp/esp-idf/components/bootloader_support/src/bootloader_flash.c"
	.loc 1 29 0
.LVL0:
	entry	sp, 48
.LCFI0:
	.loc 1 30 0
	l32r	a8, .LC0
	l32i.n	a8, a8, 0
	beqz.n	a8, .L2
	.loc 1 31 0 discriminator 1
	call8	esp_log_timestamp
.LVL1:
	l32r	a11, .LC2
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC4
	movi.n	a10, 1
	call8	esp_log_write
.LVL2:
	.loc 1 32 0 discriminator 1
	movi.n	a2, 0
.LVL3:
	retw.n
.LVL4:
.L2:
	.loc 1 34 0
	movi.n	a12, 0
	s32i.n	a12, sp, 0
	.loc 1 35 0
	l32r	a10, .LC5
	and	a10, a2, a10
.LVL5:
	.loc 1 36 0
	sub	a2, a2, a10
.LVL6:
	.loc 1 37 0
	l32r	a14, .LC0
	mov.n	a13, sp
	add.n	a11, a2, a3
.LVL7:
	call8	spi_flash_mmap
.LVL8:
	.loc 1 38 0
	beqz.n	a10, .L4
	.loc 1 39 0
	movi.n	a3, 0
.LVL9:
	s32i.n	a3, sp, 0
.L4:
	.loc 1 41 0
	l32i.n	a3, sp, 0
	add.n	a2, a3, a2
.LVL10:
	.loc 1 42 0
	retw.n
.LFE1:
	.size	bootloader_mmap, .-bootloader_mmap
	.section	.text.bootloader_munmap,"ax",@progbits
	.literal_position
	.literal .LC6, map
	.align	4
	.global	bootloader_munmap
	.type	bootloader_munmap, @function
bootloader_munmap:
.LFB2:
	.loc 1 45 0
.LVL11:
	entry	sp, 32
.LCFI1:
	.loc 1 46 0
	beqz.n	a2, .L6
	.loc 1 46 0 is_stmt 0 discriminator 1
	l32r	a8, .LC6
	l32i.n	a10, a8, 0
	beqz.n	a10, .L6
	.loc 1 47 0 is_stmt 1
	call8	spi_flash_munmap
.LVL12:
.L6:
	.loc 1 49 0
	movi.n	a9, 0
	l32r	a8, .LC6
	s32i.n	a9, a8, 0
	retw.n
.LFE2:
	.size	bootloader_munmap, .-bootloader_munmap
	.section	.text.bootloader_flash_read,"ax",@progbits
	.literal_position
	.literal .LC7, 1073061888
	.align	4
	.global	bootloader_flash_read
	.type	bootloader_flash_read, @function
bootloader_flash_read:
.LFB3:
	.loc 1 53 0
.LVL13:
	entry	sp, 32
.LCFI2:
	mov.n	a10, a2
	mov.n	a11, a3
	mov.n	a12, a4
	extui	a5, a5, 0, 8
	.loc 1 54 0
	beqz.n	a5, .L8
.LBB4:
.LBB5:
	.file 2 "C:/esp/esp-idf/components/bootloader_support/include/esp_flash_encrypt.h"
	.loc 2 37 0
	l32r	a5, .LC7
.LVL14:
	memw
	l32i.n	a8, a5, 0
	extui	a8, a8, 20, 8
.LVL15:
	.loc 2 39 0
	movi.n	a9, 0
	j	.L9
.LVL16:
.L11:
	.loc 2 41 0
	bbci	a8, 0, .L10
	.loc 2 42 0
	movi.n	a13, 1
	xor	a9, a9, a13
.LVL17:
	extui	a9, a9, 0, 8
.LVL18:
.L10:
	.loc 2 44 0
	srli	a8, a8, 1
.LVL19:
.L9:
	.loc 2 40 0
	bnez.n	a8, .L11
.LBE5:
.LBE4:
	.loc 1 54 0
	beqz.n	a9, .L8
	.loc 1 55 0
	call8	spi_flash_read_encrypted
.LVL20:
	j	.L12
.L8:
	.loc 1 57 0
	call8	spi_flash_read
.LVL21:
.L12:
	.loc 1 59 0
	mov.n	a2, a10
.LVL22:
	retw.n
.LFE3:
	.size	bootloader_flash_read, .-bootloader_flash_read
	.section	.text.bootloader_flash_write,"ax",@progbits
	.align	4
	.global	bootloader_flash_write
	.type	bootloader_flash_write, @function
bootloader_flash_write:
.LFB4:
	.loc 1 62 0
.LVL23:
	entry	sp, 32
.LCFI3:
	mov.n	a10, a2
	mov.n	a11, a3
	mov.n	a12, a4
	extui	a5, a5, 0, 8
	.loc 1 63 0
	beqz.n	a5, .L14
	.loc 1 64 0
	call8	spi_flash_write_encrypted
.LVL24:
	j	.L15
.L14:
	.loc 1 66 0
	call8	spi_flash_write
.LVL25:
.L15:
	.loc 1 68 0
	mov.n	a2, a10
.LVL26:
	retw.n
.LFE4:
	.size	bootloader_flash_write, .-bootloader_flash_write
	.section	.text.bootloader_flash_erase_sector,"ax",@progbits
	.align	4
	.global	bootloader_flash_erase_sector
	.type	bootloader_flash_erase_sector, @function
bootloader_flash_erase_sector:
.LFB5:
	.loc 1 71 0
.LVL27:
	entry	sp, 32
.LCFI4:
	.loc 1 72 0
	mov.n	a10, a2
	call8	spi_flash_erase_sector
.LVL28:
	.loc 1 73 0
	mov.n	a2, a10
.LVL29:
	retw.n
.LFE5:
	.size	bootloader_flash_erase_sector, .-bootloader_flash_erase_sector
	.section	.bss.map,"aw",@nobits
	.align	4
	.type	map, @object
	.size	map, 4
map:
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
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x4
	.4byte	.LCFI0-.LFB1
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI1-.LFB2
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI2-.LFB3
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI3-.LFB4
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI4-.LFB5
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
	.text
.Letext0:
	.file 3 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 4 "C:/esp/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 5 "C:/esp/esp-idf/components/newlib/include/stdint.h"
	.file 6 "C:/esp/esp-idf/components/esp32/include/esp_err.h"
	.file 7 "C:/esp/esp-idf/components/spi_flash/include/esp_spi_flash.h"
	.file 8 "C:/esp/esp-idf/components/log/include/esp_log.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x439
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF55
	.byte	0xc
	.4byte	.LASF56
	.4byte	.LASF57
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x3
	.byte	0xd8
	.4byte	0x37
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x4
	.byte	0x19
	.4byte	0x25
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x4
	.byte	0x1a
	.4byte	0x37
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x4
	.byte	0x31
	.4byte	0x25
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x5
	.byte	0x2c
	.4byte	0x5a
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x5
	.byte	0x2d
	.4byte	0x65
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x5
	.byte	0xa9
	.4byte	0x7e
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF14
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
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
	.uleb128 0x6
	.byte	0x4
	.4byte	0xd9
	.uleb128 0x8
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x6
	.byte	0x18
	.4byte	0x89
	.uleb128 0x9
	.byte	0x4
	.4byte	0x37
	.byte	0x7
	.byte	0x91
	.4byte	0xfe
	.uleb128 0xa
	.4byte	.LASF19
	.byte	0
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x7
	.byte	0x94
	.4byte	0xe5
	.uleb128 0x9
	.byte	0x4
	.4byte	0x37
	.byte	0x8
	.byte	0x1f
	.4byte	0x13a
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x8
	.byte	0x26
	.4byte	0x109
	.uleb128 0xb
	.4byte	.LASF58
	.byte	0x2
	.byte	0x24
	.4byte	0x16c
	.byte	0x3
	.4byte	0x16c
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x2
	.byte	0x25
	.4byte	0x94
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0x2
	.byte	0x27
	.4byte	0x16c
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF31
	.uleb128 0xd
	.4byte	.LASF37
	.byte	0x1
	.byte	0x1c
	.4byte	0xd3
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x23f
	.uleb128 0xe
	.4byte	.LASF32
	.byte	0x1
	.byte	0x1c
	.4byte	0x94
	.4byte	.LLST0
	.uleb128 0xe
	.4byte	.LASF33
	.byte	0x1
	.byte	0x1c
	.4byte	0x94
	.4byte	.LLST1
	.uleb128 0xf
	.4byte	.LASF34
	.byte	0x1
	.byte	0x22
	.4byte	0xd3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x10
	.4byte	.LASF35
	.byte	0x1
	.byte	0x23
	.4byte	0x94
	.4byte	.LLST2
	.uleb128 0x11
	.string	"err"
	.byte	0x1
	.byte	0x25
	.4byte	0xda
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x12
	.4byte	.LVL1
	.4byte	0x3d9
	.uleb128 0x13
	.4byte	.LVL2
	.4byte	0x3e4
	.4byte	0x20b
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x15
	.4byte	.LVL8
	.4byte	0x3ef
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x8
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x11
	.sleb128 -65536
	.byte	0x1a
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x72
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	map
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF59
	.byte	0x1
	.byte	0x2c
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x26b
	.uleb128 0x17
	.4byte	.LASF36
	.byte	0x1
	.byte	0x2c
	.4byte	0xd3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x12
	.4byte	.LVL12
	.4byte	0x3fa
	.byte	0
	.uleb128 0xd
	.4byte	.LASF38
	.byte	0x1
	.byte	0x34
	.4byte	0xda
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2ff
	.uleb128 0x18
	.string	"src"
	.byte	0x1
	.byte	0x34
	.4byte	0x2c
	.4byte	.LLST3
	.uleb128 0x17
	.4byte	.LASF39
	.byte	0x1
	.byte	0x34
	.4byte	0xaa
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x17
	.4byte	.LASF33
	.byte	0x1
	.byte	0x34
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xe
	.4byte	.LASF40
	.byte	0x1
	.byte	0x34
	.4byte	0x16c
	.4byte	.LLST4
	.uleb128 0x19
	.4byte	0x145
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.byte	0x1
	.byte	0x36
	.4byte	0x2ec
	.uleb128 0x1a
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0x1b
	.4byte	0x155
	.4byte	.LLST5
	.uleb128 0x1b
	.4byte	0x160
	.4byte	.LLST6
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL20
	.4byte	0x405
	.uleb128 0x12
	.4byte	.LVL21
	.4byte	0x410
	.byte	0
	.uleb128 0xd
	.4byte	.LASF41
	.byte	0x1
	.byte	0x3d
	.4byte	0xda
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x378
	.uleb128 0xe
	.4byte	.LASF42
	.byte	0x1
	.byte	0x3d
	.4byte	0x2c
	.4byte	.LLST7
	.uleb128 0x1c
	.string	"src"
	.byte	0x1
	.byte	0x3d
	.4byte	0xaa
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x17
	.4byte	.LASF33
	.byte	0x1
	.byte	0x3d
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x17
	.4byte	.LASF43
	.byte	0x1
	.byte	0x3d
	.4byte	0x16c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x13
	.4byte	.LVL24
	.4byte	0x41b
	.4byte	0x36e
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL25
	.4byte	0x426
	.byte	0
	.uleb128 0xd
	.4byte	.LASF44
	.byte	0x1
	.byte	0x46
	.4byte	0xda
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3b1
	.uleb128 0xe
	.4byte	.LASF45
	.byte	0x1
	.byte	0x46
	.4byte	0x2c
	.4byte	.LLST8
	.uleb128 0x15
	.4byte	.LVL28
	.4byte	0x431
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"TAG"
	.byte	0x1
	.byte	0x18
	.4byte	0x3c3
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC1
	.byte	0x9f
	.uleb128 0x7
	.4byte	0xc8
	.uleb128 0x11
	.string	"map"
	.byte	0x1
	.byte	0x1a
	.4byte	0xfe
	.uleb128 0x5
	.byte	0x3
	.4byte	map
	.uleb128 0x1d
	.4byte	.LASF46
	.4byte	.LASF46
	.byte	0x8
	.byte	0x4c
	.uleb128 0x1d
	.4byte	.LASF47
	.4byte	.LASF47
	.byte	0x8
	.byte	0x60
	.uleb128 0x1d
	.4byte	.LASF48
	.4byte	.LASF48
	.byte	0x7
	.byte	0xb0
	.uleb128 0x1d
	.4byte	.LASF49
	.4byte	.LASF49
	.byte	0x7
	.byte	0xd4
	.uleb128 0x1d
	.4byte	.LASF50
	.4byte	.LASF50
	.byte	0x7
	.byte	0x8c
	.uleb128 0x1d
	.4byte	.LASF51
	.4byte	.LASF51
	.byte	0x7
	.byte	0x7b
	.uleb128 0x1d
	.4byte	.LASF52
	.4byte	.LASF52
	.byte	0x7
	.byte	0x70
	.uleb128 0x1d
	.4byte	.LASF53
	.4byte	.LASF53
	.byte	0x7
	.byte	0x59
	.uleb128 0x1d
	.4byte	.LASF54
	.4byte	.LASF54
	.byte	0x7
	.byte	0x3f
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
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0x2117
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
	.uleb128 0x17
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
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL6
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL8-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL8-1
	.4byte	.LVL9
	.2byte	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x7
	.byte	0x72
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LFE1
	.2byte	0xc
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL5
	.4byte	.LVL8-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL8-1
	.4byte	.LFE1
	.2byte	0x9
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x11
	.sleb128 -65536
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL13
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL22
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL14
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL15
	.4byte	.LVL20-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL18
	.4byte	.LVL20-1
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL23
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL26
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL27
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL29
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x3c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
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
.LASF43:
	.string	"write_encrypted"
.LASF5:
	.string	"size_t"
.LASF35:
	.string	"src_page"
.LASF9:
	.string	"long long unsigned int"
.LASF37:
	.string	"bootloader_mmap"
.LASF26:
	.string	"ESP_LOG_DEBUG"
.LASF8:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF21:
	.string	"spi_flash_mmap_memory_t"
.LASF56:
	.string	"C:/esp/esp-idf/components/bootloader_support/src/bootloader_flash.c"
.LASF14:
	.string	"long int"
.LASF47:
	.string	"esp_log_write"
.LASF29:
	.string	"flash_crypt_cnt"
.LASF7:
	.string	"__uint32_t"
.LASF10:
	.string	"__intptr_t"
.LASF0:
	.string	"unsigned int"
.LASF50:
	.string	"spi_flash_read_encrypted"
.LASF51:
	.string	"spi_flash_read"
.LASF45:
	.string	"sector"
.LASF16:
	.string	"long unsigned int"
.LASF44:
	.string	"bootloader_flash_erase_sector"
.LASF33:
	.string	"size"
.LASF1:
	.string	"short unsigned int"
.LASF52:
	.string	"spi_flash_write_encrypted"
.LASF13:
	.string	"intptr_t"
.LASF41:
	.string	"bootloader_flash_write"
.LASF48:
	.string	"spi_flash_mmap"
.LASF25:
	.string	"ESP_LOG_INFO"
.LASF28:
	.string	"esp_log_level_t"
.LASF15:
	.string	"sizetype"
.LASF19:
	.string	"SPI_FLASH_MMAP_DATA"
.LASF20:
	.string	"SPI_FLASH_MMAP_INST"
.LASF39:
	.string	"dest"
.LASF31:
	.string	"_Bool"
.LASF11:
	.string	"int32_t"
.LASF3:
	.string	"unsigned char"
.LASF55:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF4:
	.string	"short int"
.LASF46:
	.string	"esp_log_timestamp"
.LASF23:
	.string	"ESP_LOG_ERROR"
.LASF36:
	.string	"mapping"
.LASF58:
	.string	"esp_flash_encryption_enabled"
.LASF12:
	.string	"uint32_t"
.LASF40:
	.string	"allow_decrypt"
.LASF30:
	.string	"enabled"
.LASF17:
	.string	"char"
.LASF27:
	.string	"ESP_LOG_VERBOSE"
.LASF32:
	.string	"src_addr"
.LASF22:
	.string	"ESP_LOG_NONE"
.LASF6:
	.string	"__int32_t"
.LASF49:
	.string	"spi_flash_munmap"
.LASF57:
	.string	"C:\\\\esp\\\\esp32-ArkPOS2\\\\ArkPOS2-esp\\\\build\\\\bootloader_support"
.LASF42:
	.string	"dest_addr"
.LASF24:
	.string	"ESP_LOG_WARN"
.LASF18:
	.string	"esp_err_t"
.LASF53:
	.string	"spi_flash_write"
.LASF59:
	.string	"bootloader_munmap"
.LASF54:
	.string	"spi_flash_erase_sector"
.LASF34:
	.string	"result"
.LASF38:
	.string	"bootloader_flash_read"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-73-ge28a011) 5.2.0"
