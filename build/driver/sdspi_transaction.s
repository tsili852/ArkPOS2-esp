	.file	"sdspi_transaction.c"
	.text
.Ltext0:
	.section	.text.sdspi_msg_crc7,"ax",@progbits
	.align	4
	.type	sdspi_msg_crc7, @function
sdspi_msg_crc7:
.LFB14:
	.file 1 "C:/esp/esp-idf/components/driver/sdspi_transaction.c"
	.loc 1 33 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LVL1:
	.loc 1 36 0
	movi.n	a11, 5
	mov.n	a10, a2
	call8	sdspi_crc7
.LVL2:
	.loc 1 37 0
	mov.n	a2, a10
.LVL3:
	retw.n
.LFE14:
	.size	sdspi_msg_crc7, .-sdspi_msg_crc7
	.global	__bswapsi2
	.section	.text.make_hw_cmd,"ax",@progbits
	.align	4
	.global	make_hw_cmd
	.type	make_hw_cmd, @function
make_hw_cmd:
.LFB15:
	.loc 1 40 0
.LVL4:
	entry	sp, 48
.LCFI1:
	.loc 1 41 0
	l8ui	a8, a4, 0
	extui	a8, a8, 0, 7
	.loc 1 42 0
	movi.n	a9, 0x40
	or	a9, a8, a9
	.loc 1 43 0
	extui	a2, a2, 0, 6
.LVL5:
	movi	a8, -0x40
	and	a8, a9, a8
	or	a2, a8, a2
	s8i	a2, a4, 0
	.loc 1 44 0
	l8ui	a2, a4, 5
	movi.n	a8, 1
	or	a8, a2, a8
	s8i	a8, a4, 5
	.loc 1 45 0
	movi.n	a2, -1
	s8i	a2, a4, 7
	.loc 1 46 0
	movi.n	a12, 0x10
	movi	a11, 0xff
	addi.n	a10, a4, 8
	call8	memset
.LVL6:
	.loc 1 47 0
	s8i	a2, a4, 6
	.loc 1 48 0
	mov.n	a10, a3
	call8	__bswapsi2
.LVL7:
	s32i.n	a10, sp, 0
	.loc 1 49 0
	srli	a3, a10, 8
.LVL8:
	s8i	a10, a4, 1
	extui	a2, a10, 16, 16
	s8i	a3, a4, 2
	extui	a10, a10, 24, 8
	s8i	a2, a4, 3
	s8i	a10, a4, 4
	.loc 1 50 0
	mov.n	a10, a4
	call8	sdspi_msg_crc7
.LVL9:
	slli	a10, a10, 1
	l8ui	a8, a4, 5
	extui	a8, a8, 0, 1
	or	a10, a8, a10
	s8i	a10, a4, 5
	retw.n
.LFE15:
	.size	make_hw_cmd, .-make_hw_cmd
	.section	.text.sdspi_host_do_transaction,"ax",@progbits
	.literal_position
	.literal .LC0, s_lock
	.literal .LC1, s_app_cmd
	.align	4
	.global	sdspi_host_do_transaction
	.type	sdspi_host_do_transaction, @function
sdspi_host_do_transaction:
.LFB16:
	.loc 1 54 0
.LVL10:
	entry	sp, 64
.LCFI2:
	.loc 1 55 0
	l32r	a10, .LC0
	call8	_lock_acquire
.LVL11:
	.loc 1 58 0
	mov.n	a12, sp
	l32i.n	a11, a3, 4
	l32i.n	a10, a3, 0
	call8	make_hw_cmd
.LVL12:
	.loc 1 62 0
	l32i.n	a8, a3, 36
	movi	a4, 0xf0
	and	a4, a8, a4
	beqi	a4, 16, .L15
	.loc 1 64 0
	movi.n	a8, 0x50
	beq	a4, a8, .L16
	.loc 1 61 0
	movi.n	a4, 0
	j	.L4
.L15:
	.loc 1 63 0
	movi.n	a4, 3
	j	.L4
.L16:
	.loc 1 65 0
	movi.n	a4, 1
.L4:
.LVL13:
	.loc 1 73 0
	l32r	a8, .LC1
	l8ui	a8, a8, 0
	bnez.n	a8, .L5
	.loc 1 73 0 is_stmt 0 discriminator 1
	l32i.n	a9, a3, 0
	bnei	a9, 8, .L5
	.loc 1 74 0 is_stmt 1
	movi.n	a8, 0x20
	or	a4, a4, a8
.LVL14:
	j	.L6
.L5:
	.loc 1 75 0
	bnez.n	a8, .L7
	.loc 1 75 0 is_stmt 0 discriminator 1
	l32i.n	a10, a3, 0
	movi.n	a9, 0xd
	bne	a10, a9, .L7
	.loc 1 76 0 is_stmt 1
	movi.n	a8, 8
	or	a4, a4, a8
.LVL15:
	j	.L6
.L7:
	.loc 1 77 0
	bnez.n	a8, .L8
	.loc 1 77 0 is_stmt 0 discriminator 1
	l32i.n	a10, a3, 0
	movi.n	a9, 0x3a
	bne	a10, a9, .L8
	.loc 1 78 0 is_stmt 1
	movi.n	a8, 0x10
	or	a4, a4, a8
.LVL16:
	j	.L6
.L8:
	.loc 1 79 0
	beqz.n	a8, .L9
	.loc 1 79 0 is_stmt 0 discriminator 1
	l32i.n	a9, a3, 0
	movi.n	a8, 0xd
	bne	a9, a8, .L9
	.loc 1 80 0 is_stmt 1
	movi.n	a8, 8
	or	a4, a4, a8
.LVL17:
	j	.L6
.L9:
	.loc 1 82 0
	movi.n	a8, 4
	or	a4, a4, a8
.LVL18:
.L6:
	.loc 1 86 0
	mov.n	a14, a4
	l32i.n	a13, a3, 28
	l32i.n	a12, a3, 24
	mov.n	a11, sp
	mov.n	a10, a2
	call8	sdspi_host_start_command
.LVL19:
	mov.n	a2, a10
.LVL20:
	.loc 1 90 0
	bnez.n	a10, .L10
	.loc 1 93 0
	mov.n	a8, a4
	bbci	a4, 2, .L11
	.loc 1 94 0
	l8ui	a4, sp, 7
.LVL21:
	s32i.n	a4, a3, 8
	.loc 1 95 0
	movi	a8, 0xff
.LVL22:
	beq	a4, a8, .L10
	.loc 1 97 0
	bbci	a4, 3, .L10
	.loc 1 98 0
	movi	a2, 0x109
.LVL23:
	j	.L10
.LVL24:
.L11:
	.loc 1 104 0
	bbci	a4, 3, .L12
	.loc 1 105 0
	l8ui	a4, sp, 7
.LVL25:
	slli	a8, a4, 8
.LVL26:
	l8ui	a4, sp, 11
	or	a4, a8, a4
	s32i.n	a4, a3, 8
	j	.L10
.LVL27:
.L12:
	.loc 1 106 0
	movi.n	a4, 0x30
.LVL28:
	bnone	a8, a4, .L10
	.loc 1 110 0
	l32i.n	a10, sp, 8
	call8	__bswapsi2
.LVL29:
	s32i.n	a10, a3, 8
.LVL30:
.L10:
	.loc 1 115 0
	bnez.n	a2, .L13
	.loc 1 116 0
	l32i.n	a3, a3, 0
.LVL31:
	addi	a4, a3, -55
	movi.n	a3, 0
	movi.n	a8, 1
	moveqz	a3, a8, a4
	l32r	a4, .LC1
	s8i	a3, a4, 0
	j	.L14
.LVL32:
.L13:
	.loc 1 118 0
	movi.n	a4, 0
	l32r	a3, .LC1
.LVL33:
	s8i	a4, a3, 0
.L14:
	.loc 1 120 0
	l32r	a10, .LC0
	call8	_lock_release
.LVL34:
	.loc 1 122 0
	retw.n
.LFE16:
	.size	sdspi_host_do_transaction, .-sdspi_host_do_transaction
	.section	.bss.s_app_cmd,"aw",@nobits
	.type	s_app_cmd, @object
	.size	s_app_cmd, 1
s_app_cmd:
	.zero	1
	.section	.bss.s_lock,"aw",@nobits
	.align	4
	.type	s_lock, @object
	.size	s_lock, 4
s_lock:
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
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI0-.LFB14
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI1-.LFB15
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI2-.LFB16
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE4:
	.text
.Letext0:
	.file 2 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 3 "C:/esp/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "C:/esp/esp-idf/components/newlib/include/sys/lock.h"
	.file 5 "C:/esp/esp-idf/components/newlib/include/stdint.h"
	.file 6 "C:/esp/esp-idf/components/esp32/include/esp_err.h"
	.file 7 "C:/esp/esp-idf/components/log/include/esp_log.h"
	.file 8 "C:/esp/esp-idf/components/driver/include/driver/sdmmc_types.h"
	.file 9 "C:/esp/esp-idf/components/driver/sdspi_private.h"
	.file 10 "C:/esp/esp-idf/components/driver/sdspi_crc.h"
	.file 11 "C:/esp/esp-idf/components/newlib/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x479
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF57
	.byte	0xc
	.4byte	.LASF58
	.4byte	.LASF59
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x2
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
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x3
	.byte	0x12
	.4byte	0x57
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x3
	.byte	0x19
	.4byte	0x25
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x3
	.byte	0x1a
	.4byte	0x37
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x4
	.byte	0xb
	.4byte	0x25
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb8
	.uleb128 0x7
	.4byte	0xab
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x5
	.byte	0x15
	.4byte	0x4c
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x5
	.byte	0x2c
	.4byte	0x65
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x5
	.byte	0x2d
	.4byte	0x70
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x6
	.byte	0x18
	.4byte	0xc8
	.uleb128 0x8
	.byte	0x4
	.4byte	0x37
	.byte	0x7
	.byte	0x1f
	.4byte	0x11a
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x7
	.byte	0x26
	.4byte	0xe9
	.uleb128 0xa
	.4byte	0xd3
	.4byte	0x135
	.uleb128 0xb
	.4byte	0x9b
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x8
	.byte	0x3d
	.4byte	0x125
	.uleb128 0xc
	.byte	0x2c
	.byte	0x8
	.byte	0x49
	.4byte	0x1a9
	.uleb128 0xd
	.4byte	.LASF28
	.byte	0x8
	.byte	0x4a
	.4byte	0xd3
	.byte	0
	.uleb128 0xe
	.string	"arg"
	.byte	0x8
	.byte	0x4b
	.4byte	0xd3
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF29
	.byte	0x8
	.byte	0x4c
	.4byte	0x135
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF30
	.byte	0x8
	.byte	0x4d
	.4byte	0xa2
	.byte	0x18
	.uleb128 0xd
	.4byte	.LASF31
	.byte	0x8
	.byte	0x4e
	.4byte	0x2c
	.byte	0x1c
	.uleb128 0xd
	.4byte	.LASF32
	.byte	0x8
	.byte	0x4f
	.4byte	0x2c
	.byte	0x20
	.uleb128 0xd
	.4byte	.LASF33
	.byte	0x8
	.byte	0x50
	.4byte	0x25
	.byte	0x24
	.uleb128 0xd
	.4byte	.LASF34
	.byte	0x8
	.byte	0x68
	.4byte	0xde
	.byte	0x28
	.byte	0
	.uleb128 0x3
	.4byte	.LASF35
	.byte	0x8
	.byte	0x69
	.4byte	0x140
	.uleb128 0x4
	.byte	0x4
	.byte	0x4
	.4byte	.LASF36
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1a9
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF37
	.uleb128 0xc
	.byte	0x18
	.byte	0x9
	.byte	0x3e
	.4byte	0x24b
	.uleb128 0xf
	.4byte	.LASF38
	.byte	0x9
	.byte	0x40
	.4byte	0xbd
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0
	.uleb128 0xf
	.4byte	.LASF39
	.byte	0x9
	.byte	0x41
	.4byte	0xbd
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.4byte	.LASF40
	.byte	0x9
	.byte	0x42
	.4byte	0xbd
	.byte	0x1
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF41
	.byte	0x9
	.byte	0x43
	.4byte	0x24b
	.byte	0x1
	.uleb128 0xf
	.4byte	.LASF42
	.byte	0x9
	.byte	0x44
	.4byte	0xbd
	.byte	0x1
	.byte	0x1
	.byte	0x7
	.byte	0x5
	.uleb128 0xf
	.4byte	.LASF43
	.byte	0x9
	.byte	0x45
	.4byte	0xbd
	.byte	0x1
	.byte	0x7
	.byte	0
	.byte	0x5
	.uleb128 0xe
	.string	"ncr"
	.byte	0x9
	.byte	0x47
	.4byte	0xbd
	.byte	0x6
	.uleb128 0xe
	.string	"r1"
	.byte	0x9
	.byte	0x49
	.4byte	0xbd
	.byte	0x7
	.uleb128 0xd
	.4byte	.LASF29
	.byte	0x9
	.byte	0x4b
	.4byte	0x125
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.4byte	0xbd
	.4byte	0x25b
	.uleb128 0xb
	.4byte	0x9b
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF44
	.byte	0x9
	.byte	0x4c
	.4byte	0x1c8
	.uleb128 0x10
	.4byte	.LASF60
	.byte	0x1
	.byte	0x20
	.4byte	0xbd
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2b0
	.uleb128 0x11
	.4byte	.LASF45
	.byte	0x1
	.byte	0x20
	.4byte	0x2b0
	.4byte	.LLST0
	.uleb128 0x12
	.4byte	.LASF46
	.byte	0x1
	.byte	0x22
	.4byte	0x2b6
	.byte	0x5
	.uleb128 0x13
	.4byte	.LVL2
	.4byte	0x42f
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x25b
	.uleb128 0x7
	.4byte	0x2c
	.uleb128 0x15
	.4byte	.LASF61
	.byte	0x1
	.byte	0x27
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x339
	.uleb128 0x11
	.4byte	.LASF28
	.byte	0x1
	.byte	0x27
	.4byte	0xd3
	.4byte	.LLST1
	.uleb128 0x16
	.string	"arg"
	.byte	0x1
	.byte	0x27
	.4byte	0xd3
	.4byte	.LLST2
	.uleb128 0x17
	.4byte	.LASF45
	.byte	0x1
	.byte	0x27
	.4byte	0x2b0
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x18
	.4byte	.LASF47
	.byte	0x1
	.byte	0x30
	.4byte	0xd3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x19
	.4byte	.LVL6
	.4byte	0x43a
	.4byte	0x328
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 8
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xff
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x13
	.4byte	.LVL9
	.4byte	0x266
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF62
	.byte	0x1
	.byte	0x35
	.4byte	0xde
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3fb
	.uleb128 0x11
	.4byte	.LASF48
	.byte	0x1
	.byte	0x35
	.4byte	0x25
	.4byte	.LLST3
	.uleb128 0x11
	.4byte	.LASF49
	.byte	0x1
	.byte	0x35
	.4byte	0x1bb
	.4byte	.LLST4
	.uleb128 0x18
	.4byte	.LASF45
	.byte	0x1
	.byte	0x39
	.4byte	0x25b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1b
	.4byte	.LASF33
	.byte	0x1
	.byte	0x3d
	.4byte	0x25
	.4byte	.LLST5
	.uleb128 0x1c
	.string	"ret"
	.byte	0x1
	.byte	0x56
	.4byte	0xde
	.4byte	.LLST6
	.uleb128 0x19
	.4byte	.LVL11
	.4byte	0x445
	.4byte	0x3b3
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_lock
	.byte	0
	.uleb128 0x19
	.4byte	.LVL12
	.4byte	0x2bb
	.4byte	0x3c7
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x19
	.4byte	.LVL19
	.4byte	0x450
	.4byte	0x3e7
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
	.byte	0x91
	.sleb128 -64
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL34
	.4byte	0x45b
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_lock
	.byte	0
	.byte	0
	.uleb128 0x1d
	.string	"TAG"
	.byte	0x1
	.byte	0x1b
	.4byte	0xb2
	.uleb128 0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+1126
	.sleb128 0
	.uleb128 0x18
	.4byte	.LASF50
	.byte	0x1
	.byte	0x1d
	.4byte	0x89
	.uleb128 0x5
	.byte	0x3
	.4byte	s_lock
	.uleb128 0x18
	.4byte	.LASF51
	.byte	0x1
	.byte	0x1e
	.4byte	0x1c1
	.uleb128 0x5
	.byte	0x3
	.4byte	s_app_cmd
	.uleb128 0x1e
	.4byte	.LASF52
	.4byte	.LASF52
	.byte	0xa
	.byte	0x1e
	.uleb128 0x1e
	.4byte	.LASF53
	.4byte	.LASF53
	.byte	0xb
	.byte	0x19
	.uleb128 0x1e
	.4byte	.LASF54
	.4byte	.LASF54
	.byte	0x4
	.byte	0x20
	.uleb128 0x1e
	.4byte	.LASF55
	.4byte	.LASF55
	.byte	0x9
	.byte	0x5f
	.uleb128 0x1e
	.4byte	.LASF56
	.4byte	.LASF56
	.byte	0x4
	.byte	0x24
	.uleb128 0x1f
	.uleb128 0x14
	.byte	0x9e
	.uleb128 0x12
	.byte	0x73
	.byte	0x64
	.byte	0x73
	.byte	0x70
	.byte	0x69
	.byte	0x5f
	.byte	0x74
	.byte	0x72
	.byte	0x61
	.byte	0x6e
	.byte	0x73
	.byte	0x61
	.byte	0x63
	.byte	0x74
	.byte	0x69
	.byte	0x6f
	.byte	0x6e
	.byte	0
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x17
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
	.uleb128 0x36
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
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
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL5
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL4
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL8
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL10
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL20
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL10
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL33
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL28
	.4byte	.LVL29-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL20
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL24
	.4byte	.LFE16
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
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF45:
	.string	"hw_cmd"
.LASF52:
	.string	"sdspi_crc7"
.LASF27:
	.string	"sdmmc_response_t"
.LASF6:
	.string	"short int"
.LASF3:
	.string	"size_t"
.LASF13:
	.string	"sizetype"
.LASF39:
	.string	"transmission_bit"
.LASF32:
	.string	"blklen"
.LASF8:
	.string	"__uint32_t"
.LASF51:
	.string	"s_app_cmd"
.LASF62:
	.string	"sdspi_host_do_transaction"
.LASF16:
	.string	"uint8_t"
.LASF28:
	.string	"opcode"
.LASF59:
	.string	"C:\\\\esp\\\\esp32-ArkPOS2\\\\ArkPOS2-esp\\\\build\\\\driver"
.LASF58:
	.string	"C:/esp/esp-idf/components/driver/sdspi_transaction.c"
.LASF36:
	.string	"float"
.LASF35:
	.string	"sdmmc_command_t"
.LASF31:
	.string	"datalen"
.LASF9:
	.string	"long long int"
.LASF61:
	.string	"make_hw_cmd"
.LASF53:
	.string	"memset"
.LASF12:
	.string	"long int"
.LASF23:
	.string	"ESP_LOG_INFO"
.LASF4:
	.string	"__uint8_t"
.LASF40:
	.string	"start_bit"
.LASF42:
	.string	"stop_bit"
.LASF38:
	.string	"cmd_index"
.LASF46:
	.string	"bytes_to_crc"
.LASF5:
	.string	"unsigned char"
.LASF54:
	.string	"_lock_acquire"
.LASF47:
	.string	"arg_s"
.LASF2:
	.string	"signed char"
.LASF33:
	.string	"flags"
.LASF10:
	.string	"long long unsigned int"
.LASF18:
	.string	"uint32_t"
.LASF0:
	.string	"unsigned int"
.LASF48:
	.string	"slot"
.LASF44:
	.string	"sdspi_hw_cmd_t"
.LASF1:
	.string	"short unsigned int"
.LASF15:
	.string	"char"
.LASF24:
	.string	"ESP_LOG_DEBUG"
.LASF17:
	.string	"int32_t"
.LASF20:
	.string	"ESP_LOG_NONE"
.LASF37:
	.string	"_Bool"
.LASF49:
	.string	"cmdinfo"
.LASF26:
	.string	"esp_log_level_t"
.LASF30:
	.string	"data"
.LASF22:
	.string	"ESP_LOG_WARN"
.LASF55:
	.string	"sdspi_host_start_command"
.LASF14:
	.string	"long unsigned int"
.LASF43:
	.string	"crc7"
.LASF29:
	.string	"response"
.LASF56:
	.string	"_lock_release"
.LASF60:
	.string	"sdspi_msg_crc7"
.LASF25:
	.string	"ESP_LOG_VERBOSE"
.LASF7:
	.string	"__int32_t"
.LASF11:
	.string	"_lock_t"
.LASF50:
	.string	"s_lock"
.LASF34:
	.string	"error"
.LASF57:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF41:
	.string	"arguments"
.LASF21:
	.string	"ESP_LOG_ERROR"
.LASF19:
	.string	"esp_err_t"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-73-ge28a011) 5.2.0"
