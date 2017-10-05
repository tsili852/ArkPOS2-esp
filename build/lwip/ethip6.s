	.file	"ethip6.c"
	.text
.Ltext0:
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC0:
	.string	"netif->hwaddr_len must be 6 for ethip6!"
	.align	4
.LC3:
	.string	"C:/esp/esp-idf/components/lwip/core/ipv6/ethip6.c"
	.section	.text.ethip6_send,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.literal .LC2, __func__$6000
	.literal .LC4, .LC3
	.align	4
	.type	ethip6_send, @function
ethip6_send:
.LFB13:
	.file 1 "C:/esp/esp-idf/components/lwip/core/ipv6/ethip6.c"
	.loc 1 70 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 71 0
	l32i.n	a6, a3, 4
.LVL1:
	.loc 1 73 0
	l8ui	a7, a2, 174
	beqi	a7, 6, .L2
	.loc 1 73 0 is_stmt 0 discriminator 1
	l32r	a13, .LC1
	l32r	a12, .LC2
	movi.n	a11, 0x4a
	l32r	a10, .LC4
	call8	__assert_func
.LVL2:
.L2:
	.loc 1 75 0 is_stmt 1
	movi.n	a7, 6
	mov.n	a12, a7
	mov.n	a11, a5
	mov.n	a10, a6
	call8	memcpy
.LVL3:
	.loc 1 76 0
	mov.n	a12, a7
	mov.n	a11, a4
	add.n	a10, a6, a7
	call8	memcpy
.LVL4:
	.loc 1 77 0
	movi	a4, -0x7a
.LVL5:
	s8i	a4, a6, 12
	movi	a4, -0x23
	s8i	a4, a6, 13
	.loc 1 80 0
	l32i	a4, a2, 140
	mov.n	a11, a3
	mov.n	a10, a2
	callx8	a4
.LVL6:
	.loc 1 81 0
	extui	a2, a10, 0, 8
.LVL7:
	retw.n
.LFE13:
	.size	ethip6_send, .-ethip6_send
	.section	.text.ethip6_output,"ax",@progbits
	.literal_position
	.literal .LC5, neighbor_cache
	.literal .LC6, 5000
	.align	4
	.global	ethip6_output
	.type	ethip6_output, @function
ethip6_output:
.LFB14:
	.loc 1 103 0
.LVL8:
	entry	sp, 48
.LCFI1:
	.loc 1 108 0
	movi.n	a11, 0xe
	mov.n	a10, a3
	call8	pbuf_header
.LVL9:
	bnez.n	a10, .L9
	.loc 1 116 0
	l8ui	a9, a4, 0
	movi	a8, 0xff
	bne	a9, a8, .L5
	.loc 1 118 0
	movi.n	a8, 0x33
	s8i	a8, sp, 0
	.loc 1 119 0
	s8i	a8, sp, 1
	.loc 1 120 0
	l8ui	a8, a4, 12
	s8i	a8, sp, 2
	.loc 1 121 0
	l8ui	a8, a4, 13
	s8i	a8, sp, 3
	.loc 1 122 0
	l8ui	a8, a4, 14
	s8i	a8, sp, 4
	.loc 1 123 0
	l8ui	a4, a4, 15
.LVL10:
	s8i	a4, sp, 5
	.loc 1 126 0
	mov.n	a13, sp
	movi	a12, 0xaf
	add.n	a12, a2, a12
	mov.n	a11, a3
	mov.n	a10, a2
	call8	ethip6_send
.LVL11:
	extui	a2, a10, 0, 8
.LVL12:
	retw.n
.LVL13:
.L5:
	.loc 1 132 0
	mov.n	a11, a2
	mov.n	a10, a4
	call8	nd6_get_next_hop_entry
.LVL14:
	extui	a10, a10, 0, 8
.LVL15:
	.loc 1 133 0
	sext	a4, a10, 7
.LVL16:
	bltz	a4, .L10
	.loc 1 139 0
	addx4	a9, a4, a4
	slli	a8, a9, 3
	l32r	a9, .LC5
	add.n	a8, a9, a8
	l8ui	a8, a8, 32
	bnei	a8, 3, .L6
	.loc 1 141 0
	slli	a9, a4, 2
	add.n	a9, a9, a4
	slli	a8, a9, 3
	l32r	a9, .LC5
	add.n	a8, a9, a8
	movi.n	a9, 4
	s8i	a9, a8, 32
	.loc 1 142 0
	l32r	a9, .LC6
	s32i.n	a9, a8, 36
.L6:
	.loc 1 145 0
	addx4	a9, a4, a4
	slli	a8, a9, 3
	l32r	a9, .LC5
	add.n	a8, a9, a8
	l8ui	a11, a8, 32
	addi	a10, a11, -2
.LVL17:
	movi.n	a12, 1
	movi.n	a8, 0
	mov.n	a5, a8
	moveqz	a5, a12, a10
	addi	a9, a11, -4
	moveqz	a8, a12, a9
	or	a8, a5, a8
	bnez.n	a8, .L7
	.loc 1 146 0
	bnei	a11, 5, .L8
.L7:
	.loc 1 150 0
	addx4	a4, a4, a4
	slli	a8, a4, 3
	l32r	a4, .LC5
	add.n	a4, a4, a8
	l32i.n	a8, a4, 20
	l16ui	a4, a4, 24
	s32i.n	a8, sp, 0
	s16i	a4, sp, 4
	.loc 1 151 0
	mov.n	a13, sp
	movi	a12, 0xaf
	add.n	a12, a2, a12
	mov.n	a11, a3
	mov.n	a10, a2
	call8	ethip6_send
.LVL18:
	extui	a2, a10, 0, 8
.LVL19:
	retw.n
.LVL20:
.L8:
	.loc 1 155 0
	movi.n	a11, -0xe
	mov.n	a10, a3
	call8	pbuf_header
.LVL21:
	.loc 1 156 0
	mov.n	a11, a3
	mov.n	a10, a4
	call8	nd6_queue_packet
.LVL22:
	extui	a2, a10, 0, 8
.LVL23:
	retw.n
.LVL24:
.L9:
	.loc 1 112 0
	movi	a2, 0xfe
.LVL25:
	retw.n
.LVL26:
.L10:
	.loc 1 135 0
	movi	a2, 0xff
.LVL27:
	.loc 1 157 0
	retw.n
.LFE14:
	.size	ethip6_output, .-ethip6_output
	.section	.rodata.__func__$6000,"a",@progbits
	.align	4
	.type	__func__$6000, @object
	.size	__func__$6000, 12
__func__$6000:
	.string	"ethip6_send"
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
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI0-.LFB13
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI1-.LFB14
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE2:
	.text
.Letext0:
	.file 2 "C:/esp/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "C:/esp/esp-idf/components/newlib/include/stdint.h"
	.file 4 "C:/esp/esp-idf/components/lwip/include/lwip/port/arch/cc.h"
	.file 5 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/err.h"
	.file 6 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/pbuf.h"
	.file 7 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/netif.h"
	.file 8 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/ip6_addr.h"
	.file 9 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/ip4_addr.h"
	.file 10 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/ip_addr.h"
	.file 11 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/nd6.h"
	.file 12 "C:/esp/esp-idf/components/lwip/include/lwip/netif/ethernet.h"
	.file 13 "C:/esp/esp-idf/components/newlib/include/assert.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x906
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF99
	.byte	0xc
	.4byte	.LASF100
	.4byte	.LASF101
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
	.4byte	0x4f0
	.byte	0x40
	.uleb128 0xc
	.4byte	.LASF40
	.byte	0x7
	.byte	0xcc
	.4byte	0x500
	.byte	0x7c
	.uleb128 0xc
	.4byte	.LASF41
	.byte	0x7
	.byte	0xce
	.4byte	0x520
	.byte	0x80
	.uleb128 0xc
	.4byte	.LASF42
	.byte	0x7
	.byte	0xd4
	.4byte	0x3dd
	.byte	0x84
	.uleb128 0xc
	.4byte	.LASF43
	.byte	0x7
	.byte	0xd9
	.4byte	0x402
	.byte	0x88
	.uleb128 0xc
	.4byte	.LASF44
	.byte	0x7
	.byte	0xde
	.4byte	0x46c
	.byte	0x8c
	.uleb128 0xc
	.4byte	.LASF45
	.byte	0x7
	.byte	0xe3
	.4byte	0x437
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
	.4byte	0x52b
	.byte	0x98
	.uleb128 0xc
	.4byte	.LASF48
	.byte	0x7
	.byte	0xfb
	.4byte	0x536
	.byte	0x9c
	.uleb128 0xc
	.4byte	.LASF49
	.byte	0x7
	.byte	0xfc
	.4byte	0x4e5
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
	.4byte	0x53c
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
	.4byte	0x54c
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
	.4byte	0x491
	.byte	0xbc
	.uleb128 0xe
	.4byte	.LASF57
	.byte	0x7
	.2byte	0x13f
	.4byte	0x4bb
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
	.4byte	.LASF39
	.byte	0x10
	.byte	0x8
	.byte	0x39
	.4byte	0x34f
	.uleb128 0xc
	.4byte	.LASF59
	.byte	0x8
	.byte	0x3a
	.4byte	0x34f
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	0x13f
	.4byte	0x35f
	.uleb128 0x11
	.4byte	0x9b
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.4byte	.LASF60
	.byte	0x8
	.byte	0x4b
	.4byte	0x336
	.uleb128 0xb
	.4byte	.LASF61
	.byte	0x4
	.byte	0x9
	.byte	0x2e
	.4byte	0x383
	.uleb128 0xc
	.4byte	.LASF59
	.byte	0x9
	.byte	0x2f
	.4byte	0x13f
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF62
	.byte	0x9
	.byte	0x42
	.4byte	0x36a
	.uleb128 0x12
	.byte	0x10
	.byte	0xa
	.byte	0x37
	.4byte	0x3ad
	.uleb128 0x13
	.string	"ip6"
	.byte	0xa
	.byte	0x38
	.4byte	0x35f
	.uleb128 0x13
	.string	"ip4"
	.byte	0xa
	.byte	0x39
	.4byte	0x383
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
	.uleb128 0x4
	.4byte	.LASF66
	.byte	0x7
	.byte	0x83
	.4byte	0x3e8
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3ee
	.uleb128 0x14
	.4byte	0x14a
	.4byte	0x402
	.uleb128 0xa
	.4byte	0x1ce
	.uleb128 0xa
	.4byte	0x330
	.byte	0
	.uleb128 0x4
	.4byte	.LASF67
	.byte	0x7
	.byte	0x8e
	.4byte	0x40d
	.uleb128 0x6
	.byte	0x4
	.4byte	0x413
	.uleb128 0x14
	.4byte	0x14a
	.4byte	0x42c
	.uleb128 0xa
	.4byte	0x330
	.uleb128 0xa
	.4byte	0x1ce
	.uleb128 0xa
	.4byte	0x42c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x432
	.uleb128 0x8
	.4byte	0x383
	.uleb128 0x4
	.4byte	.LASF68
	.byte	0x7
	.byte	0x9b
	.4byte	0x442
	.uleb128 0x6
	.byte	0x4
	.4byte	0x448
	.uleb128 0x14
	.4byte	0x14a
	.4byte	0x461
	.uleb128 0xa
	.4byte	0x330
	.uleb128 0xa
	.4byte	0x1ce
	.uleb128 0xa
	.4byte	0x461
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x467
	.uleb128 0x8
	.4byte	0x35f
	.uleb128 0x4
	.4byte	.LASF69
	.byte	0x7
	.byte	0xa5
	.4byte	0x477
	.uleb128 0x6
	.byte	0x4
	.4byte	0x47d
	.uleb128 0x14
	.4byte	0x14a
	.4byte	0x491
	.uleb128 0xa
	.4byte	0x330
	.uleb128 0xa
	.4byte	0x1ce
	.byte	0
	.uleb128 0x4
	.4byte	.LASF70
	.byte	0x7
	.byte	0xaa
	.4byte	0x49c
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4a2
	.uleb128 0x14
	.4byte	0x14a
	.4byte	0x4bb
	.uleb128 0xa
	.4byte	0x330
	.uleb128 0xa
	.4byte	0x42c
	.uleb128 0xa
	.4byte	0x113
	.byte	0
	.uleb128 0x4
	.4byte	.LASF71
	.byte	0x7
	.byte	0xaf
	.4byte	0x4c6
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4cc
	.uleb128 0x14
	.4byte	0x14a
	.4byte	0x4e5
	.uleb128 0xa
	.4byte	0x330
	.uleb128 0xa
	.4byte	0x461
	.uleb128 0xa
	.4byte	0x113
	.byte	0
	.uleb128 0x4
	.4byte	.LASF72
	.byte	0x7
	.byte	0xb6
	.4byte	0xab
	.uleb128 0x10
	.4byte	0x3d2
	.4byte	0x500
	.uleb128 0x11
	.4byte	0x9b
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.4byte	0x113
	.4byte	0x510
	.uleb128 0x11
	.4byte	0x9b
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.4byte	0x520
	.uleb128 0xa
	.4byte	0x330
	.uleb128 0xa
	.4byte	0x113
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x510
	.uleb128 0x15
	.4byte	.LASF47
	.uleb128 0x6
	.byte	0x4
	.4byte	0x526
	.uleb128 0x15
	.4byte	.LASF73
	.uleb128 0x6
	.byte	0x4
	.4byte	0x531
	.uleb128 0x10
	.4byte	0x113
	.4byte	0x54c
	.uleb128 0x11
	.4byte	0x9b
	.byte	0x5
	.byte	0
	.uleb128 0x10
	.4byte	0xb2
	.4byte	0x55c
	.uleb128 0x11
	.4byte	0x9b
	.byte	0x1
	.byte	0
	.uleb128 0x12
	.byte	0x4
	.byte	0xb
	.byte	0x4c
	.4byte	0x591
	.uleb128 0x16
	.4byte	.LASF74
	.byte	0xb
	.byte	0x4d
	.4byte	0x13f
	.uleb128 0x16
	.4byte	.LASF75
	.byte	0xb
	.byte	0x4e
	.4byte	0x13f
	.uleb128 0x16
	.4byte	.LASF76
	.byte	0xb
	.byte	0x4f
	.4byte	0x13f
	.uleb128 0x16
	.4byte	.LASF77
	.byte	0xb
	.byte	0x50
	.4byte	0x13f
	.byte	0
	.uleb128 0xb
	.4byte	.LASF78
	.byte	0x28
	.byte	0xb
	.byte	0x3e
	.4byte	0x5f0
	.uleb128 0xc
	.4byte	.LASF79
	.byte	0xb
	.byte	0x3f
	.4byte	0x35f
	.byte	0
	.uleb128 0xc
	.4byte	.LASF36
	.byte	0xb
	.byte	0x40
	.4byte	0x330
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF80
	.byte	0xb
	.byte	0x41
	.4byte	0x53c
	.byte	0x14
	.uleb128 0xd
	.string	"q"
	.byte	0xb
	.byte	0x45
	.4byte	0x613
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF46
	.byte	0xb
	.byte	0x4a
	.4byte	0x113
	.byte	0x20
	.uleb128 0xc
	.4byte	.LASF81
	.byte	0xb
	.byte	0x4b
	.4byte	0x113
	.byte	0x21
	.uleb128 0xc
	.4byte	.LASF82
	.byte	0xb
	.byte	0x51
	.4byte	0x55c
	.byte	0x24
	.byte	0
	.uleb128 0xb
	.4byte	.LASF83
	.byte	0x8
	.byte	0xb
	.byte	0x7b
	.4byte	0x613
	.uleb128 0xc
	.4byte	.LASF28
	.byte	0xb
	.byte	0x7c
	.4byte	0x613
	.byte	0
	.uleb128 0xd
	.string	"p"
	.byte	0xb
	.byte	0x7d
	.4byte	0x1ce
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5f0
	.uleb128 0x17
	.4byte	.LASF102
	.byte	0x4
	.4byte	0x25
	.byte	0xb
	.byte	0x6e
	.4byte	0x64e
	.uleb128 0x18
	.4byte	.LASF84
	.byte	0
	.uleb128 0x18
	.4byte	.LASF85
	.byte	0x1
	.uleb128 0x18
	.4byte	.LASF86
	.byte	0x2
	.uleb128 0x18
	.4byte	.LASF87
	.byte	0x3
	.uleb128 0x18
	.4byte	.LASF88
	.byte	0x4
	.uleb128 0x18
	.4byte	.LASF89
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.4byte	.LASF90
	.byte	0x6
	.byte	0xc
	.byte	0x3b
	.4byte	0x667
	.uleb128 0xc
	.4byte	.LASF59
	.byte	0xc
	.byte	0x3c
	.4byte	0x53c
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	.LASF91
	.byte	0xe
	.byte	0xc
	.byte	0x48
	.4byte	0x698
	.uleb128 0xc
	.4byte	.LASF92
	.byte	0xc
	.byte	0x4c
	.4byte	0x64e
	.byte	0
	.uleb128 0xd
	.string	"src"
	.byte	0xc
	.byte	0x4d
	.4byte	0x64e
	.byte	0x6
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0xc
	.byte	0x4e
	.4byte	0x129
	.byte	0xc
	.byte	0
	.uleb128 0x19
	.4byte	.LASF103
	.byte	0x1
	.byte	0x45
	.4byte	0x14a
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x78b
	.uleb128 0x1a
	.4byte	.LASF36
	.byte	0x1
	.byte	0x45
	.4byte	0x330
	.4byte	.LLST0
	.uleb128 0x1b
	.string	"p"
	.byte	0x1
	.byte	0x45
	.4byte	0x1ce
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1c
	.string	"src"
	.byte	0x1
	.byte	0x45
	.4byte	0x78b
	.4byte	.LLST1
	.uleb128 0x1b
	.string	"dst"
	.byte	0x1
	.byte	0x45
	.4byte	0x78b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1d
	.4byte	.LASF94
	.byte	0x1
	.byte	0x47
	.4byte	0x791
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x1e
	.4byte	.LASF104
	.4byte	0x7a7
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6000
	.uleb128 0x1f
	.4byte	.LVL2
	.4byte	0x8d2
	.4byte	0x732
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x4a
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6000
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL3
	.4byte	0x8dd
	.4byte	0x752
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL4
	.4byte	0x8dd
	.4byte	0x775
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x76
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL6
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x64e
	.uleb128 0x6
	.byte	0x4
	.4byte	0x667
	.uleb128 0x10
	.4byte	0xb2
	.4byte	0x7a7
	.uleb128 0x11
	.4byte	0x9b
	.byte	0xb
	.byte	0
	.uleb128 0x8
	.4byte	0x797
	.uleb128 0x22
	.4byte	.LASF105
	.byte	0x1
	.byte	0x66
	.4byte	0x14a
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8bb
	.uleb128 0x1a
	.4byte	.LASF36
	.byte	0x1
	.byte	0x66
	.4byte	0x330
	.4byte	.LLST2
	.uleb128 0x1b
	.string	"q"
	.byte	0x1
	.byte	0x66
	.4byte	0x1ce
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1a
	.4byte	.LASF93
	.byte	0x1
	.byte	0x66
	.4byte	0x461
	.4byte	.LLST3
	.uleb128 0x1d
	.4byte	.LASF92
	.byte	0x1
	.byte	0x68
	.4byte	0x64e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.byte	0x69
	.4byte	0x11e
	.4byte	.LLST4
	.uleb128 0x1f
	.4byte	.LVL9
	.4byte	0x8e6
	.4byte	0x822
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x3e
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL11
	.4byte	0x698
	.4byte	0x849
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x72
	.sleb128 175
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL14
	.4byte	0x8f1
	.4byte	0x863
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL18
	.4byte	0x698
	.4byte	0x88a
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x72
	.sleb128 175
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL21
	.4byte	0x8e6
	.4byte	0x8a4
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x9
	.byte	0xf2
	.byte	0
	.uleb128 0x24
	.4byte	.LVL22
	.4byte	0x8fd
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	0x591
	.4byte	0x8c6
	.uleb128 0x25
	.byte	0
	.uleb128 0x26
	.4byte	.LASF106
	.byte	0xb
	.2byte	0x150
	.4byte	0x8bb
	.uleb128 0x27
	.4byte	.LASF95
	.4byte	.LASF95
	.byte	0xd
	.byte	0x29
	.uleb128 0x28
	.4byte	.LASF107
	.4byte	.LASF107
	.uleb128 0x27
	.4byte	.LASF96
	.4byte	.LASF96
	.byte	0x6
	.byte	0xc8
	.uleb128 0x29
	.4byte	.LASF97
	.4byte	.LASF97
	.byte	0xb
	.2byte	0x15b
	.uleb128 0x29
	.4byte	.LASF98
	.4byte	.LASF98
	.byte	0xb
	.2byte	0x15e
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
	.uleb128 0x15
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x18
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL7
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL5
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL8
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL27
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL10
	.4byte	.LVL13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL16
	.4byte	.LVL24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL26
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL15
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL26
	.4byte	.LFE14
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
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF85:
	.string	"ND6_INCOMPLETE"
.LASF6:
	.string	"__int16_t"
.LASF76:
	.string	"probes_sent"
.LASF64:
	.string	"u_addr"
.LASF54:
	.string	"hwaddr"
.LASF72:
	.string	"dhcp_event_fn"
.LASF73:
	.string	"udp_pcb"
.LASF16:
	.string	"int8_t"
.LASF106:
	.string	"neighbor_cache"
.LASF46:
	.string	"state"
.LASF88:
	.string	"ND6_DELAY"
.LASF67:
	.string	"netif_output_fn"
.LASF31:
	.string	"type"
.LASF87:
	.string	"ND6_STALE"
.LASF42:
	.string	"input"
.LASF45:
	.string	"output_ip6"
.LASF13:
	.string	"sizetype"
.LASF30:
	.string	"tot_len"
.LASF90:
	.string	"eth_addr"
.LASF25:
	.string	"s16_t"
.LASF8:
	.string	"__uint16_t"
.LASF9:
	.string	"__uint32_t"
.LASF53:
	.string	"hwaddr_len"
.LASF62:
	.string	"ip4_addr_t"
.LASF39:
	.string	"ip6_addr"
.LASF7:
	.string	"short int"
.LASF48:
	.string	"dhcps_pcb"
.LASF107:
	.string	"memcpy"
.LASF79:
	.string	"next_hop_address"
.LASF56:
	.string	"igmp_mac_filter"
.LASF102:
	.string	"nd6_neighbor_cache_entry_state"
.LASF17:
	.string	"uint8_t"
.LASF37:
	.string	"ip_addr"
.LASF91:
	.string	"eth_hdr"
.LASF74:
	.string	"reachable_time"
.LASF20:
	.string	"uint32_t"
.LASF44:
	.string	"linkoutput"
.LASF52:
	.string	"hostname"
.LASF10:
	.string	"long long int"
.LASF97:
	.string	"nd6_get_next_hop_entry"
.LASF69:
	.string	"netif_linkoutput_fn"
.LASF12:
	.string	"long int"
.LASF68:
	.string	"netif_output_ip6_fn"
.LASF94:
	.string	"ethhdr"
.LASF59:
	.string	"addr"
.LASF103:
	.string	"ethip6_send"
.LASF4:
	.string	"__uint8_t"
.LASF47:
	.string	"dhcp"
.LASF92:
	.string	"dest"
.LASF70:
	.string	"netif_igmp_mac_filter_fn"
.LASF55:
	.string	"name"
.LASF5:
	.string	"unsigned char"
.LASF60:
	.string	"ip6_addr_t"
.LASF66:
	.string	"netif_input_fn"
.LASF104:
	.string	"__func__"
.LASF82:
	.string	"counter"
.LASF89:
	.string	"ND6_PROBE"
.LASF40:
	.string	"ip6_addr_state"
.LASF98:
	.string	"nd6_queue_packet"
.LASF2:
	.string	"signed char"
.LASF32:
	.string	"flags"
.LASF11:
	.string	"long long unsigned int"
.LASF34:
	.string	"l2_buf"
.LASF77:
	.string	"stale_time"
.LASF100:
	.string	"C:/esp/esp-idf/components/lwip/core/ipv6/ethip6.c"
.LASF63:
	.string	"_ip_addr"
.LASF71:
	.string	"netif_mld_mac_filter_fn"
.LASF14:
	.string	"long unsigned int"
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
.LASF75:
	.string	"delay_time"
.LASF80:
	.string	"lladdr"
.LASF96:
	.string	"pbuf_header"
.LASF21:
	.string	"_Bool"
.LASF81:
	.string	"isrouter"
.LASF61:
	.string	"ip4_addr"
.LASF57:
	.string	"mld_mac_filter"
.LASF33:
	.string	"l2_owner"
.LASF86:
	.string	"ND6_REACHABLE"
.LASF49:
	.string	"dhcp_event"
.LASF58:
	.string	"l2_buffer_free_notify"
.LASF93:
	.string	"ip6addr"
.LASF36:
	.string	"netif"
.LASF38:
	.string	"netmask"
.LASF26:
	.string	"u32_t"
.LASF78:
	.string	"nd6_neighbor_cache_entry"
.LASF83:
	.string	"nd6_q_entry"
.LASF65:
	.string	"ip_addr_t"
.LASF105:
	.string	"ethip6_output"
.LASF101:
	.string	"C:\\\\esp\\\\esp32-ArkPOS2\\\\ArkPOS2-esp\\\\build\\\\lwip"
.LASF51:
	.string	"rs_count"
.LASF43:
	.string	"output"
.LASF18:
	.string	"int16_t"
.LASF41:
	.string	"ipv6_addr_cb"
.LASF50:
	.string	"ip6_autoconfig_enabled"
.LASF95:
	.string	"__assert_func"
.LASF22:
	.string	"u8_t"
.LASF0:
	.string	"unsigned int"
.LASF99:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF84:
	.string	"ND6_NO_ENTRY"
.LASF29:
	.string	"payload"
.LASF35:
	.string	"pbuf"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-73-ge28a011) 5.2.0"
