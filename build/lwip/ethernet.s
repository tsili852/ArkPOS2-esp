	.file	"ethernet.c"
	.text
.Ltext0:
	.section	.text.ethernet_input,"ax",@progbits
	.literal_position
	.literal .LC0, ethbroadcast
	.literal .LC1, 56710
	.align	4
	.global	ethernet_input
	.type	ethernet_input, @function
ethernet_input:
.LFB9:
	.file 1 "C:/esp/esp-idf/components/lwip/netif/ethernet.c"
	.loc 1 68 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LVL1:
	.loc 1 81 0
	l16ui	a5, a2, 10
	movi.n	a4, 0xe
	bgeu	a4, a5, .L2
	.loc 1 90 0
	l32i.n	a10, a2, 4
.LVL2:
	.loc 1 99 0
	l8ui	a8, a10, 12
	l8ui	a4, a10, 13
	slli	a4, a4, 8
	or	a4, a4, a8
.LVL3:
	.loc 1 132 0
	l8ui	a8, a10, 0
	bbci	a8, 0, .L3
	.loc 1 134 0
	bnei	a8, 1, .L4
	.loc 1 136 0
	l8ui	a8, a10, 1
	bnez.n	a8, .L3
	.loc 1 137 0 discriminator 1
	l8ui	a9, a10, 2
	.loc 1 136 0 discriminator 1
	movi.n	a8, 0x5e
	bne	a9, a8, .L3
	.loc 1 139 0
	l8ui	a9, a2, 13
	movi.n	a8, 0x10
	or	a8, a9, a8
	s8i	a8, a2, 13
	j	.L3
.L4:
	.loc 1 144 0
	movi.n	a9, 0x33
	bne	a8, a9, .L5
	.loc 1 145 0 discriminator 1
	l8ui	a9, a10, 1
	.loc 1 144 0 discriminator 1
	movi.n	a8, 0x33
	bne	a9, a8, .L5
	.loc 1 147 0
	l8ui	a9, a2, 13
	movi.n	a8, 0x10
	or	a8, a9, a8
	s8i	a8, a2, 13
	j	.L3
.L5:
	.loc 1 150 0
	movi.n	a12, 6
	l32r	a11, .LC0
	call8	memcmp
.LVL4:
	bnez.n	a10, .L3
	.loc 1 152 0
	l8ui	a9, a2, 13
	movi.n	a8, 8
	or	a8, a9, a8
	s8i	a8, a2, 13
.L3:
	.loc 1 156 0
	movi	a8, 0x608
	beq	a4, a8, .L6
	l32r	a8, .LC1
	beq	a4, a8, .L7
	bnei	a4, 8, .L2
	.loc 1 160 0
	l8ui	a4, a3, 181
.LVL5:
	bbci	a4, 3, .L2
	.loc 1 165 0
	mov.n	a11, a2
	mov.n	a10, a3
	call8	etharp_ip_input
.LVL6:
	.loc 1 168 0
	l16ui	a4, a2, 10
	movi.n	a5, 0xd
	bge	a5, a4, .L2
	.loc 1 168 0 is_stmt 0 discriminator 1
	movi.n	a11, -0xe
	mov.n	a10, a2
	call8	pbuf_header
.LVL7:
	bnez.n	a10, .L2
	.loc 1 176 0 is_stmt 1
	mov.n	a11, a3
	mov.n	a10, a2
	call8	ip4_input
.LVL8:
	.loc 1 178 0
	j	.L9
.LVL9:
.L6:
	.loc 1 181 0
	l8ui	a4, a3, 181
.LVL10:
	bbci	a4, 3, .L2
	.loc 1 185 0
	mov.n	a12, a2
	movi	a11, 0xaf
	add.n	a11, a3, a11
	mov.n	a10, a3
	call8	etharp_arp_input
.LVL11:
	.loc 1 186 0
	j	.L9
.LVL12:
.L7:
	.loc 1 201 0
	movi.n	a4, 0xd
.LVL13:
	bge	a4, a5, .L2
	.loc 1 201 0 is_stmt 0 discriminator 1
	movi.n	a11, -0xe
	mov.n	a10, a2
	call8	pbuf_header
.LVL14:
	bnez.n	a10, .L2
	.loc 1 208 0 is_stmt 1
	mov.n	a11, a3
	mov.n	a10, a2
	call8	ip6_input
.LVL15:
	.loc 1 210 0
	j	.L9
.L2:
	.loc 1 225 0
	mov.n	a10, a2
	call8	pbuf_free
.LVL16:
.L9:
	.loc 1 227 0
	movi.n	a2, 0
.LVL17:
	retw.n
.LFE9:
	.size	ethernet_input, .-ethernet_input
	.global	ethzero
	.section	.rodata.ethzero,"a",@progbits
	.align	4
	.type	ethzero, @object
	.size	ethzero, 6
ethzero:
	.zero	6
	.global	ethbroadcast
	.section	.rodata.ethbroadcast,"a",@progbits
	.align	4
	.type	ethbroadcast, @object
	.size	ethbroadcast, 6
ethbroadcast:
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
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
	.text
.Letext0:
	.file 2 "C:/esp/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "C:/esp/esp-idf/components/newlib/include/stdint.h"
	.file 4 "C:/esp/esp-idf/components/lwip/include/lwip/port/arch/cc.h"
	.file 5 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/err.h"
	.file 6 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/pbuf.h"
	.file 7 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/netif.h"
	.file 8 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/ip4_addr.h"
	.file 9 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/ip6_addr.h"
	.file 10 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/ip_addr.h"
	.file 11 "C:/esp/esp-idf/components/lwip/include/lwip/netif/ethernet.h"
	.file 12 "C:/esp/esp-idf/components/newlib/include/string.h"
	.file 13 "C:/esp/esp-idf/components/lwip/include/lwip/netif/etharp.h"
	.file 14 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/ip4.h"
	.file 15 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/ip6.h"
	.file 16 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/memp.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x7d4
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF107
	.byte	0xc
	.4byte	.LASF108
	.4byte	.LASF109
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.4byte	.LASF3
	.byte	0x2
	.byte	0x11
	.4byte	0x45
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x4
	.4byte	.LASF4
	.byte	0x2
	.byte	0x12
	.4byte	0x57
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x2
	.byte	0x15
	.4byte	0x69
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x2
	.byte	0x16
	.4byte	0x2c
	.uleb128 0x4
	.4byte	.LASF9
	.byte	0x2
	.byte	0x1a
	.4byte	0x25
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb1
	.uleb128 0x7
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x6
	.byte	0x4
	.4byte	0xbf
	.uleb128 0x8
	.4byte	0xb2
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x3
	.byte	0x14
	.4byte	0x3a
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x3
	.byte	0x15
	.4byte	0x4c
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x3
	.byte	0x20
	.4byte	0x5e
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x3
	.byte	0x21
	.4byte	0x70
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x3
	.byte	0x2d
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF21
	.uleb128 0x6
	.byte	0x4
	.4byte	0x108
	.uleb128 0x9
	.4byte	0x113
	.uleb128 0xa
	.4byte	0xa2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF22
	.byte	0x4
	.byte	0x2e
	.4byte	0xcf
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0x4
	.byte	0x2f
	.4byte	0xc4
	.uleb128 0x4
	.4byte	.LASF24
	.byte	0x4
	.byte	0x30
	.4byte	0xe5
	.uleb128 0x4
	.4byte	.LASF25
	.byte	0x4
	.byte	0x31
	.4byte	0xda
	.uleb128 0x4
	.4byte	.LASF26
	.byte	0x4
	.byte	0x32
	.4byte	0xf0
	.uleb128 0x4
	.4byte	.LASF27
	.byte	0x5
	.byte	0x2f
	.4byte	0x11e
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x18
	.byte	0x6
	.byte	0x6c
	.4byte	0x1ce
	.uleb128 0xc
	.4byte	.LASF28
	.byte	0x6
	.byte	0x6e
	.4byte	0x1ce
	.byte	0
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x6
	.byte	0x71
	.4byte	0xa2
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0x6
	.byte	0x7a
	.4byte	0x129
	.byte	0x8
	.uleb128 0xd
	.string	"len"
	.byte	0x6
	.byte	0x7d
	.4byte	0x129
	.byte	0xa
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x6
	.byte	0x80
	.4byte	0x113
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF32
	.byte	0x6
	.byte	0x83
	.4byte	0x113
	.byte	0xd
	.uleb128 0xd
	.string	"ref"
	.byte	0x6
	.byte	0x8a
	.4byte	0x129
	.byte	0xe
	.uleb128 0xc
	.4byte	.LASF33
	.byte	0x6
	.byte	0x8d
	.4byte	0x330
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF34
	.byte	0x6
	.byte	0x8e
	.4byte	0xa2
	.byte	0x14
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x155
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0xc8
	.byte	0x7
	.byte	0xbd
	.4byte	0x330
	.uleb128 0xc
	.4byte	.LASF28
	.byte	0x7
	.byte	0xbf
	.4byte	0x330
	.byte	0
	.uleb128 0xc
	.4byte	.LASF37
	.byte	0x7
	.byte	0xc3
	.4byte	0x3d2
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF38
	.byte	0x7
	.byte	0xc4
	.4byte	0x3d2
	.byte	0x18
	.uleb128 0xd
	.string	"gw"
	.byte	0x7
	.byte	0xc5
	.4byte	0x3d2
	.byte	0x2c
	.uleb128 0xc
	.4byte	.LASF39
	.byte	0x7
	.byte	0xc9
	.4byte	0x56f
	.byte	0x40
	.uleb128 0xc
	.4byte	.LASF40
	.byte	0x7
	.byte	0xcc
	.4byte	0x57f
	.byte	0x7c
	.uleb128 0xc
	.4byte	.LASF41
	.byte	0x7
	.byte	0xce
	.4byte	0x59f
	.byte	0x80
	.uleb128 0xc
	.4byte	.LASF42
	.byte	0x7
	.byte	0xd4
	.4byte	0x45c
	.byte	0x84
	.uleb128 0xc
	.4byte	.LASF43
	.byte	0x7
	.byte	0xd9
	.4byte	0x481
	.byte	0x88
	.uleb128 0xc
	.4byte	.LASF44
	.byte	0x7
	.byte	0xde
	.4byte	0x4eb
	.byte	0x8c
	.uleb128 0xc
	.4byte	.LASF45
	.byte	0x7
	.byte	0xe3
	.4byte	0x4b6
	.byte	0x90
	.uleb128 0xc
	.4byte	.LASF46
	.byte	0x7
	.byte	0xf5
	.4byte	0xa2
	.byte	0x94
	.uleb128 0xc
	.4byte	.LASF47
	.byte	0x7
	.byte	0xf8
	.4byte	0x5aa
	.byte	0x98
	.uleb128 0xc
	.4byte	.LASF48
	.byte	0x7
	.byte	0xfb
	.4byte	0x5b5
	.byte	0x9c
	.uleb128 0xc
	.4byte	.LASF49
	.byte	0x7
	.byte	0xfc
	.4byte	0x564
	.byte	0xa0
	.uleb128 0xe
	.4byte	.LASF50
	.byte	0x7
	.2byte	0x108
	.4byte	0x113
	.byte	0xa4
	.uleb128 0xe
	.4byte	.LASF51
	.byte	0x7
	.2byte	0x10d
	.4byte	0x113
	.byte	0xa5
	.uleb128 0xe
	.4byte	.LASF52
	.byte	0x7
	.2byte	0x117
	.4byte	0xb9
	.byte	0xa8
	.uleb128 0xf
	.string	"mtu"
	.byte	0x7
	.2byte	0x11f
	.4byte	0x129
	.byte	0xac
	.uleb128 0xe
	.4byte	.LASF53
	.byte	0x7
	.2byte	0x121
	.4byte	0x113
	.byte	0xae
	.uleb128 0xe
	.4byte	.LASF54
	.byte	0x7
	.2byte	0x123
	.4byte	0x5bb
	.byte	0xaf
	.uleb128 0xe
	.4byte	.LASF32
	.byte	0x7
	.2byte	0x125
	.4byte	0x113
	.byte	0xb5
	.uleb128 0xe
	.4byte	.LASF55
	.byte	0x7
	.2byte	0x127
	.4byte	0x5cb
	.byte	0xb6
	.uleb128 0xf
	.string	"num"
	.byte	0x7
	.2byte	0x129
	.4byte	0x113
	.byte	0xb8
	.uleb128 0xe
	.4byte	.LASF56
	.byte	0x7
	.2byte	0x139
	.4byte	0x510
	.byte	0xbc
	.uleb128 0xe
	.4byte	.LASF57
	.byte	0x7
	.2byte	0x13f
	.4byte	0x53a
	.byte	0xc0
	.uleb128 0xe
	.4byte	.LASF58
	.byte	0x7
	.2byte	0x14f
	.4byte	0x102
	.byte	0xc4
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1d4
	.uleb128 0xb
	.4byte	.LASF59
	.byte	0x4
	.byte	0x8
	.byte	0x2e
	.4byte	0x34f
	.uleb128 0xc
	.4byte	.LASF60
	.byte	0x8
	.byte	0x2f
	.4byte	0x13f
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF61
	.byte	0x8
	.byte	0x42
	.4byte	0x336
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0x10
	.byte	0x9
	.byte	0x39
	.4byte	0x373
	.uleb128 0xc
	.4byte	.LASF60
	.byte	0x9
	.byte	0x3a
	.4byte	0x373
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	0x13f
	.4byte	0x383
	.uleb128 0x11
	.4byte	0x9b
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.4byte	.LASF62
	.byte	0x9
	.byte	0x4b
	.4byte	0x35a
	.uleb128 0x12
	.byte	0x10
	.byte	0xa
	.byte	0x37
	.4byte	0x3ad
	.uleb128 0x13
	.string	"ip6"
	.byte	0xa
	.byte	0x38
	.4byte	0x383
	.uleb128 0x13
	.string	"ip4"
	.byte	0xa
	.byte	0x39
	.4byte	0x34f
	.byte	0
	.uleb128 0xb
	.4byte	.LASF63
	.byte	0x14
	.byte	0xa
	.byte	0x36
	.4byte	0x3d2
	.uleb128 0xc
	.4byte	.LASF64
	.byte	0xa
	.byte	0x3a
	.4byte	0x38e
	.byte	0
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0xa
	.byte	0x3b
	.4byte	0x113
	.byte	0x10
	.byte	0
	.uleb128 0x4
	.4byte	.LASF65
	.byte	0xa
	.byte	0x3c
	.4byte	0x3ad
	.uleb128 0x14
	.byte	0x4
	.4byte	0x25
	.byte	0x10
	.byte	0x2d
	.4byte	0x45c
	.uleb128 0x15
	.4byte	.LASF66
	.byte	0
	.uleb128 0x15
	.4byte	.LASF67
	.byte	0x1
	.uleb128 0x15
	.4byte	.LASF68
	.byte	0x2
	.uleb128 0x15
	.4byte	.LASF69
	.byte	0x3
	.uleb128 0x15
	.4byte	.LASF70
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF71
	.byte	0x5
	.uleb128 0x15
	.4byte	.LASF72
	.byte	0x6
	.uleb128 0x15
	.4byte	.LASF73
	.byte	0x7
	.uleb128 0x15
	.4byte	.LASF74
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF75
	.byte	0x9
	.uleb128 0x15
	.4byte	.LASF76
	.byte	0xa
	.uleb128 0x15
	.4byte	.LASF77
	.byte	0xb
	.uleb128 0x15
	.4byte	.LASF78
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF79
	.byte	0xd
	.uleb128 0x15
	.4byte	.LASF80
	.byte	0xe
	.uleb128 0x15
	.4byte	.LASF81
	.byte	0xf
	.uleb128 0x15
	.4byte	.LASF82
	.byte	0x10
	.uleb128 0x15
	.4byte	.LASF83
	.byte	0x11
	.uleb128 0x15
	.4byte	.LASF84
	.byte	0x12
	.byte	0
	.uleb128 0x4
	.4byte	.LASF85
	.byte	0x7
	.byte	0x83
	.4byte	0x467
	.uleb128 0x6
	.byte	0x4
	.4byte	0x46d
	.uleb128 0x16
	.4byte	0x14a
	.4byte	0x481
	.uleb128 0xa
	.4byte	0x1ce
	.uleb128 0xa
	.4byte	0x330
	.byte	0
	.uleb128 0x4
	.4byte	.LASF86
	.byte	0x7
	.byte	0x8e
	.4byte	0x48c
	.uleb128 0x6
	.byte	0x4
	.4byte	0x492
	.uleb128 0x16
	.4byte	0x14a
	.4byte	0x4ab
	.uleb128 0xa
	.4byte	0x330
	.uleb128 0xa
	.4byte	0x1ce
	.uleb128 0xa
	.4byte	0x4ab
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4b1
	.uleb128 0x8
	.4byte	0x34f
	.uleb128 0x4
	.4byte	.LASF87
	.byte	0x7
	.byte	0x9b
	.4byte	0x4c1
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4c7
	.uleb128 0x16
	.4byte	0x14a
	.4byte	0x4e0
	.uleb128 0xa
	.4byte	0x330
	.uleb128 0xa
	.4byte	0x1ce
	.uleb128 0xa
	.4byte	0x4e0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4e6
	.uleb128 0x8
	.4byte	0x383
	.uleb128 0x4
	.4byte	.LASF88
	.byte	0x7
	.byte	0xa5
	.4byte	0x4f6
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4fc
	.uleb128 0x16
	.4byte	0x14a
	.4byte	0x510
	.uleb128 0xa
	.4byte	0x330
	.uleb128 0xa
	.4byte	0x1ce
	.byte	0
	.uleb128 0x4
	.4byte	.LASF89
	.byte	0x7
	.byte	0xaa
	.4byte	0x51b
	.uleb128 0x6
	.byte	0x4
	.4byte	0x521
	.uleb128 0x16
	.4byte	0x14a
	.4byte	0x53a
	.uleb128 0xa
	.4byte	0x330
	.uleb128 0xa
	.4byte	0x4ab
	.uleb128 0xa
	.4byte	0x113
	.byte	0
	.uleb128 0x4
	.4byte	.LASF90
	.byte	0x7
	.byte	0xaf
	.4byte	0x545
	.uleb128 0x6
	.byte	0x4
	.4byte	0x54b
	.uleb128 0x16
	.4byte	0x14a
	.4byte	0x564
	.uleb128 0xa
	.4byte	0x330
	.uleb128 0xa
	.4byte	0x4e0
	.uleb128 0xa
	.4byte	0x113
	.byte	0
	.uleb128 0x4
	.4byte	.LASF91
	.byte	0x7
	.byte	0xb6
	.4byte	0xab
	.uleb128 0x10
	.4byte	0x3d2
	.4byte	0x57f
	.uleb128 0x11
	.4byte	0x9b
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.4byte	0x113
	.4byte	0x58f
	.uleb128 0x11
	.4byte	0x9b
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.4byte	0x59f
	.uleb128 0xa
	.4byte	0x330
	.uleb128 0xa
	.4byte	0x113
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x58f
	.uleb128 0x17
	.4byte	.LASF47
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5a5
	.uleb128 0x17
	.4byte	.LASF92
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5b0
	.uleb128 0x10
	.4byte	0x113
	.4byte	0x5cb
	.uleb128 0x11
	.4byte	0x9b
	.byte	0x5
	.byte	0
	.uleb128 0x10
	.4byte	0xb2
	.4byte	0x5db
	.uleb128 0x11
	.4byte	0x9b
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.4byte	.LASF93
	.byte	0x6
	.byte	0xb
	.byte	0x3b
	.4byte	0x5f4
	.uleb128 0xc
	.4byte	.LASF60
	.byte	0xb
	.byte	0x3c
	.4byte	0x5bb
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	.LASF94
	.byte	0xe
	.byte	0xb
	.byte	0x48
	.4byte	0x625
	.uleb128 0xc
	.4byte	.LASF95
	.byte	0xb
	.byte	0x4c
	.4byte	0x5db
	.byte	0
	.uleb128 0xd
	.string	"src"
	.byte	0xb
	.byte	0x4d
	.4byte	0x5db
	.byte	0x6
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0xb
	.byte	0x4e
	.4byte	0x129
	.byte	0xc
	.byte	0
	.uleb128 0x18
	.4byte	.LASF110
	.byte	0x1
	.byte	0x43
	.4byte	0x14a
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x75d
	.uleb128 0x19
	.string	"p"
	.byte	0x1
	.byte	0x43
	.4byte	0x1ce
	.4byte	.LLST0
	.uleb128 0x1a
	.4byte	.LASF36
	.byte	0x1
	.byte	0x43
	.4byte	0x330
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1b
	.4byte	.LASF96
	.byte	0x1
	.byte	0x45
	.4byte	0x75d
	.4byte	.LLST1
	.uleb128 0x1b
	.4byte	.LASF31
	.byte	0x1
	.byte	0x46
	.4byte	0x129
	.4byte	.LLST2
	.uleb128 0x1c
	.4byte	.LASF97
	.byte	0x1
	.byte	0x48
	.4byte	0x134
	.byte	0xe
	.uleb128 0x1d
	.4byte	.LASF111
	.byte	0x1
	.byte	0xe0
	.4byte	.L2
	.uleb128 0x1e
	.4byte	.LVL4
	.4byte	0x78a
	.4byte	0x6a9
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	ethbroadcast
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL6
	.4byte	0x795
	.4byte	0x6c3
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL7
	.4byte	0x7a0
	.4byte	0x6dd
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x9
	.byte	0xf2
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL8
	.4byte	0x7ab
	.4byte	0x6f7
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL11
	.4byte	0x7b6
	.4byte	0x718
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x73
	.sleb128 175
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL14
	.4byte	0x7a0
	.4byte	0x732
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x9
	.byte	0xf2
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL15
	.4byte	0x7c1
	.4byte	0x74c
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL16
	.4byte	0x7cc
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5f4
	.uleb128 0x21
	.4byte	.LASF98
	.byte	0x1
	.byte	0x37
	.4byte	0x774
	.uleb128 0x5
	.byte	0x3
	.4byte	ethbroadcast
	.uleb128 0x8
	.4byte	0x5db
	.uleb128 0x21
	.4byte	.LASF99
	.byte	0x1
	.byte	0x38
	.4byte	0x774
	.uleb128 0x5
	.byte	0x3
	.4byte	ethzero
	.uleb128 0x22
	.4byte	.LASF100
	.4byte	.LASF100
	.byte	0xc
	.byte	0x16
	.uleb128 0x22
	.4byte	.LASF101
	.4byte	.LASF101
	.byte	0xd
	.byte	0x8a
	.uleb128 0x22
	.4byte	.LASF102
	.4byte	.LASF102
	.byte	0x6
	.byte	0xc8
	.uleb128 0x22
	.4byte	.LASF103
	.4byte	.LASF103
	.byte	0xe
	.byte	0x79
	.uleb128 0x22
	.4byte	.LASF104
	.4byte	.LASF104
	.byte	0xd
	.byte	0x87
	.uleb128 0x22
	.4byte	.LASF105
	.4byte	.LASF105
	.byte	0xf
	.byte	0xa6
	.uleb128 0x22
	.4byte	.LASF106
	.4byte	.LASF106
	.byte	0x6
	.byte	0xcb
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
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x17
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
	.uleb128 0x13
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
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1f
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL17
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
	.4byte	.LVL4-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL3
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x54
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
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF103:
	.string	"ip4_input"
.LASF106:
	.string	"pbuf_free"
.LASF6:
	.string	"__int16_t"
.LASF75:
	.string	"MEMP_ARP_QUEUE"
.LASF64:
	.string	"u_addr"
.LASF54:
	.string	"hwaddr"
.LASF91:
	.string	"dhcp_event_fn"
.LASF92:
	.string	"udp_pcb"
.LASF16:
	.string	"int8_t"
.LASF46:
	.string	"state"
.LASF86:
	.string	"netif_output_fn"
.LASF104:
	.string	"etharp_arp_input"
.LASF31:
	.string	"type"
.LASF79:
	.string	"MEMP_ND6_QUEUE"
.LASF42:
	.string	"input"
.LASF45:
	.string	"output_ip6"
.LASF13:
	.string	"sizetype"
.LASF18:
	.string	"int16_t"
.LASF30:
	.string	"tot_len"
.LASF70:
	.string	"MEMP_TCP_SEG"
.LASF93:
	.string	"eth_addr"
.LASF108:
	.string	"C:/esp/esp-idf/components/lwip/netif/ethernet.c"
.LASF25:
	.string	"s16_t"
.LASF8:
	.string	"__uint16_t"
.LASF9:
	.string	"__uint32_t"
.LASF74:
	.string	"MEMP_TCPIP_MSG_INPKT"
.LASF53:
	.string	"hwaddr_len"
.LASF39:
	.string	"ip6_addr"
.LASF7:
	.string	"short int"
.LASF48:
	.string	"dhcps_pcb"
.LASF77:
	.string	"MEMP_SYS_TIMEOUT"
.LASF56:
	.string	"igmp_mac_filter"
.LASF98:
	.string	"ethbroadcast"
.LASF17:
	.string	"uint8_t"
.LASF37:
	.string	"ip_addr"
.LASF69:
	.string	"MEMP_TCP_PCB_LISTEN"
.LASF111:
	.string	"free_and_return"
.LASF20:
	.string	"uint32_t"
.LASF78:
	.string	"MEMP_NETDB"
.LASF44:
	.string	"linkoutput"
.LASF52:
	.string	"hostname"
.LASF100:
	.string	"memcmp"
.LASF10:
	.string	"long long int"
.LASF65:
	.string	"ip_addr_t"
.LASF88:
	.string	"netif_linkoutput_fn"
.LASF35:
	.string	"pbuf"
.LASF12:
	.string	"long int"
.LASF87:
	.string	"netif_output_ip6_fn"
.LASF96:
	.string	"ethhdr"
.LASF60:
	.string	"addr"
.LASF80:
	.string	"MEMP_IP6_REASSDATA"
.LASF4:
	.string	"__uint8_t"
.LASF47:
	.string	"dhcp"
.LASF95:
	.string	"dest"
.LASF89:
	.string	"netif_igmp_mac_filter_fn"
.LASF55:
	.string	"name"
.LASF62:
	.string	"ip6_addr_t"
.LASF85:
	.string	"netif_input_fn"
.LASF5:
	.string	"unsigned char"
.LASF84:
	.string	"MEMP_MAX"
.LASF40:
	.string	"ip6_addr_state"
.LASF2:
	.string	"signed char"
.LASF32:
	.string	"flags"
.LASF11:
	.string	"long long unsigned int"
.LASF34:
	.string	"l2_buf"
.LASF109:
	.string	"C:\\\\esp\\\\ArkPOS2-esp\\\\build\\\\lwip"
.LASF0:
	.string	"unsigned int"
.LASF63:
	.string	"_ip_addr"
.LASF90:
	.string	"netif_mld_mac_filter_fn"
.LASF14:
	.string	"long unsigned int"
.LASF76:
	.string	"MEMP_IGMP_GROUP"
.LASF105:
	.string	"ip6_input"
.LASF24:
	.string	"u16_t"
.LASF1:
	.string	"short unsigned int"
.LASF3:
	.string	"__int8_t"
.LASF28:
	.string	"next"
.LASF27:
	.string	"err_t"
.LASF15:
	.string	"char"
.LASF19:
	.string	"uint16_t"
.LASF23:
	.string	"s8_t"
.LASF73:
	.string	"MEMP_TCPIP_MSG_API"
.LASF81:
	.string	"MEMP_MLD6_GROUP"
.LASF102:
	.string	"pbuf_header"
.LASF21:
	.string	"_Bool"
.LASF59:
	.string	"ip4_addr"
.LASF82:
	.string	"MEMP_PBUF"
.LASF57:
	.string	"mld_mac_filter"
.LASF33:
	.string	"l2_owner"
.LASF94:
	.string	"eth_hdr"
.LASF49:
	.string	"dhcp_event"
.LASF58:
	.string	"l2_buffer_free_notify"
.LASF66:
	.string	"MEMP_RAW_PCB"
.LASF61:
	.string	"ip4_addr_t"
.LASF36:
	.string	"netif"
.LASF38:
	.string	"netmask"
.LASF26:
	.string	"u32_t"
.LASF99:
	.string	"ethzero"
.LASF83:
	.string	"MEMP_PBUF_POOL"
.LASF101:
	.string	"etharp_ip_input"
.LASF51:
	.string	"rs_count"
.LASF72:
	.string	"MEMP_NETCONN"
.LASF43:
	.string	"output"
.LASF68:
	.string	"MEMP_TCP_PCB"
.LASF41:
	.string	"ipv6_addr_cb"
.LASF50:
	.string	"ip6_autoconfig_enabled"
.LASF110:
	.string	"ethernet_input"
.LASF67:
	.string	"MEMP_UDP_PCB"
.LASF22:
	.string	"u8_t"
.LASF107:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF97:
	.string	"ip_hdr_offset"
.LASF29:
	.string	"payload"
.LASF71:
	.string	"MEMP_NETBUF"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-61-gab8375a) 5.2.0"
