	.file	"ethernetif.c"
	.text
.Ltext0:
	.section	.text.ethernet_low_level_init,"ax",@progbits
	.literal_position
	.literal .LC0, esp_eth_free_rx_buf
	.align	4
	.type	ethernet_low_level_init, @function
ethernet_low_level_init:
.LFB14:
	.file 1 "C:/esp/esp-idf/components/lwip/port/netif/ethernetif.c"
	.loc 1 67 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 69 0
	movi.n	a8, 6
	s8i	a8, a2, 174
	.loc 1 74 0
	movi	a8, 0x5dc
	s16i	a8, a2, 172
	.loc 1 82 0
	movi.n	a8, 0x2e
	s8i	a8, a2, 181
	.loc 1 87 0
	l32r	a8, .LC0
	s32i	a8, a2, 196
	retw.n
.LFE14:
	.size	ethernet_low_level_init, .-ethernet_low_level_init
	.section	.text.ethernet_low_level_output,"ax",@progbits
	.align	4
	.type	ethernet_low_level_output, @function
ethernet_low_level_output:
.LFB15:
	.loc 1 108 0
.LVL1:
	entry	sp, 32
.LCFI1:
	.loc 1 110 0
	mov.n	a10, a2
	call8	tcpip_adapter_get_esp_if
.LVL2:
	.loc 1 112 0
	bnei	a10, 2, .L7
.LVL3:
	.loc 1 121 0
	l16ui	a4, a3, 10
.LVL4:
	.loc 1 122 0
	l32i.n	a2, a3, 0
.LVL5:
	bnez.n	a2, .L4
.LBB2:
	j	.L5
.LVL6:
.L6:
	.loc 1 126 0
	l32i.n	a10, a3, 4
	l16ui	a12, a2, 10
	l32i.n	a11, a2, 4
	add.n	a10, a10, a4
	call8	memcpy
.LVL7:
	.loc 1 127 0
	l16ui	a8, a2, 10
	add.n	a4, a4, a8
.LVL8:
	extui	a4, a4, 0, 16
.LVL9:
	.loc 1 129 0
	l32i.n	a2, a2, 0
.LVL10:
.L4:
	.loc 1 125 0
	bnez.n	a2, .L6
.LVL11:
.L5:
.LBE2:
	.loc 1 133 0
	mov.n	a11, a4
	l32i.n	a10, a3, 4
	call8	esp_eth_tx
.LVL12:
	extui	a2, a10, 0, 8
	retw.n
.LVL13:
.L7:
	.loc 1 115 0
	movi	a2, 0xf0
.LVL14:
	.loc 1 140 0
	retw.n
.LFE15:
	.size	ethernet_low_level_output, .-ethernet_low_level_output
	.section	.text.ethernetif_input,"ax",@progbits
	.align	4
	.global	ethernetif_input
	.type	ethernetif_input, @function
ethernetif_input:
.LFB16:
	.loc 1 160 0
.LVL15:
	entry	sp, 32
.LCFI2:
	extui	a11, a4, 0, 16
	.loc 1 163 0
	movi.n	a8, 1
	movi.n	a10, 0
	mov.n	a9, a10
	moveqz	a9, a8, a3
	.loc 1 163 0
	movnez	a8, a10, a2
	or	a8, a8, a9
	.loc 1 163 0
	bne	a8, a10, .L9
	.loc 1 163 0 discriminator 1
	l8ui	a8, a2, 181
	bbs	a8, a10, .L10
.L9:
	.loc 1 165 0
	beqz.n	a3, .L8
	.loc 1 166 0
	mov.n	a10, a3
	call8	esp_eth_free_rx_buf
.LVL16:
	retw.n
.L10:
	.loc 1 187 0
	movi.n	a12, 2
	movi.n	a10, 4
	call8	pbuf_alloc
.LVL17:
	mov.n	a4, a10
.LVL18:
	.loc 1 188 0
	bnez.n	a10, .L12
	.loc 1 189 0
	mov.n	a10, a3
	call8	esp_eth_free_rx_buf
.LVL19:
	.loc 1 190 0
	retw.n
.L12:
	.loc 1 192 0
	s32i.n	a3, a10, 4
	.loc 1 193 0
	s32i.n	a2, a10, 16
	.loc 1 194 0
	s32i.n	a3, a10, 20
	.loc 1 197 0
	l32i	a3, a2, 132
.LVL20:
	mov.n	a11, a2
	callx8	a3
.LVL21:
	extui	a10, a10, 0, 8
	beqz.n	a10, .L8
	.loc 1 199 0
	movi.n	a2, 0
.LVL22:
	s32i.n	a2, a4, 16
	.loc 1 200 0
	mov.n	a10, a4
	call8	pbuf_free
.LVL23:
.L8:
	retw.n
.LFE16:
	.size	ethernetif_input, .-ethernetif_input
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC1:
	.string	"netif != NULL"
	.align	4
.LC4:
	.string	"C:/esp/esp-idf/components/lwip/port/netif/ethernetif.c"
	.align	4
.LC6:
	.string	"espressif"
	.section	.text.ethernetif_init,"ax",@progbits
	.literal_position
	.literal .LC2, .LC1
	.literal .LC3, __func__$6404
	.literal .LC5, .LC4
	.literal .LC7, .LC6
	.literal .LC8, etharp_output
	.literal .LC9, ethip6_output
	.literal .LC10, ethernet_low_level_output
	.align	4
	.global	ethernetif_init
	.type	ethernetif_init, @function
ethernetif_init:
.LFB17:
	.loc 1 219 0
.LVL24:
	entry	sp, 32
.LCFI3:
	.loc 1 220 0
	bnez.n	a2, .L14
	.loc 1 220 0 discriminator 1
	l32r	a13, .LC2
	l32r	a12, .LC3
	movi	a11, 0xdc
	l32r	a10, .LC5
	call8	__assert_func
.LVL25:
.L14:
	.loc 1 226 0
	l32r	a8, .LC7
	s32i	a8, a2, 168
	.loc 1 240 0
	movi	a8, 0x65
	s8i	a8, a2, 182
	.loc 1 241 0
	movi	a8, 0x6e
	s8i	a8, a2, 183
	.loc 1 246 0
	l32r	a8, .LC8
	s32i	a8, a2, 136
	.loc 1 248 0
	l32r	a8, .LC9
	s32i	a8, a2, 144
	.loc 1 250 0
	l32r	a8, .LC10
	s32i	a8, a2, 140
	.loc 1 253 0
	mov.n	a10, a2
	call8	ethernet_low_level_init
.LVL26:
	.loc 1 256 0
	movi.n	a2, 0
.LVL27:
	retw.n
.LFE17:
	.size	ethernetif_init, .-ethernetif_init
	.section	.rodata.__func__$6404,"a",@progbits
	.align	4
	.type	__func__$6404, @object
	.size	__func__$6404, 16
__func__$6404:
	.string	"ethernetif_init"
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
	.uleb128 0x20
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
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI3-.LFB17
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
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
	.file 11 "C:/esp/esp-idf/components/esp32/include/esp_interface.h"
	.file 12 "C:/esp/esp-idf/components/tcpip_adapter/include/tcpip_adapter.h"
	.file 13 "C:/esp/esp-idf/components/ethernet/include/esp_eth.h"
	.file 14 "C:/esp/esp-idf/components/newlib/include/assert.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x836
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF97
	.byte	0xc
	.4byte	.LASF98
	.4byte	.LASF99
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
	.byte	0x4
	.4byte	0x25
	.byte	0x6
	.byte	0x3f
	.4byte	0x180
	.uleb128 0xc
	.4byte	.LASF28
	.byte	0
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0x2
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x3
	.uleb128 0xc
	.4byte	.LASF32
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x25
	.byte	0x6
	.byte	0x47
	.4byte	0x1a5
	.uleb128 0xc
	.4byte	.LASF33
	.byte	0
	.uleb128 0xc
	.4byte	.LASF34
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF35
	.byte	0x2
	.uleb128 0xc
	.4byte	.LASF36
	.byte	0x3
	.byte	0
	.uleb128 0xd
	.4byte	.LASF44
	.byte	0x18
	.byte	0x6
	.byte	0x6c
	.4byte	0x21e
	.uleb128 0xe
	.4byte	.LASF37
	.byte	0x6
	.byte	0x6e
	.4byte	0x21e
	.byte	0
	.uleb128 0xe
	.4byte	.LASF38
	.byte	0x6
	.byte	0x71
	.4byte	0xa2
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF39
	.byte	0x6
	.byte	0x7a
	.4byte	0x129
	.byte	0x8
	.uleb128 0xf
	.string	"len"
	.byte	0x6
	.byte	0x7d
	.4byte	0x129
	.byte	0xa
	.uleb128 0xe
	.4byte	.LASF40
	.byte	0x6
	.byte	0x80
	.4byte	0x113
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF41
	.byte	0x6
	.byte	0x83
	.4byte	0x113
	.byte	0xd
	.uleb128 0xf
	.string	"ref"
	.byte	0x6
	.byte	0x8a
	.4byte	0x129
	.byte	0xe
	.uleb128 0xe
	.4byte	.LASF42
	.byte	0x6
	.byte	0x8d
	.4byte	0x380
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF43
	.byte	0x6
	.byte	0x8e
	.4byte	0xa2
	.byte	0x14
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1a5
	.uleb128 0xd
	.4byte	.LASF45
	.byte	0xc8
	.byte	0x7
	.byte	0xbd
	.4byte	0x380
	.uleb128 0xe
	.4byte	.LASF37
	.byte	0x7
	.byte	0xbf
	.4byte	0x380
	.byte	0
	.uleb128 0xe
	.4byte	.LASF46
	.byte	0x7
	.byte	0xc3
	.4byte	0x422
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF47
	.byte	0x7
	.byte	0xc4
	.4byte	0x422
	.byte	0x18
	.uleb128 0xf
	.string	"gw"
	.byte	0x7
	.byte	0xc5
	.4byte	0x422
	.byte	0x2c
	.uleb128 0xe
	.4byte	.LASF48
	.byte	0x7
	.byte	0xc9
	.4byte	0x540
	.byte	0x40
	.uleb128 0xe
	.4byte	.LASF49
	.byte	0x7
	.byte	0xcc
	.4byte	0x550
	.byte	0x7c
	.uleb128 0xe
	.4byte	.LASF50
	.byte	0x7
	.byte	0xce
	.4byte	0x570
	.byte	0x80
	.uleb128 0xe
	.4byte	.LASF51
	.byte	0x7
	.byte	0xd4
	.4byte	0x42d
	.byte	0x84
	.uleb128 0xe
	.4byte	.LASF52
	.byte	0x7
	.byte	0xd9
	.4byte	0x452
	.byte	0x88
	.uleb128 0xe
	.4byte	.LASF53
	.byte	0x7
	.byte	0xde
	.4byte	0x4bc
	.byte	0x8c
	.uleb128 0xe
	.4byte	.LASF54
	.byte	0x7
	.byte	0xe3
	.4byte	0x487
	.byte	0x90
	.uleb128 0xe
	.4byte	.LASF55
	.byte	0x7
	.byte	0xf5
	.4byte	0xa2
	.byte	0x94
	.uleb128 0xe
	.4byte	.LASF56
	.byte	0x7
	.byte	0xf8
	.4byte	0x57b
	.byte	0x98
	.uleb128 0xe
	.4byte	.LASF57
	.byte	0x7
	.byte	0xfb
	.4byte	0x586
	.byte	0x9c
	.uleb128 0xe
	.4byte	.LASF58
	.byte	0x7
	.byte	0xfc
	.4byte	0x535
	.byte	0xa0
	.uleb128 0x10
	.4byte	.LASF59
	.byte	0x7
	.2byte	0x108
	.4byte	0x113
	.byte	0xa4
	.uleb128 0x10
	.4byte	.LASF60
	.byte	0x7
	.2byte	0x10d
	.4byte	0x113
	.byte	0xa5
	.uleb128 0x10
	.4byte	.LASF61
	.byte	0x7
	.2byte	0x117
	.4byte	0xb9
	.byte	0xa8
	.uleb128 0x11
	.string	"mtu"
	.byte	0x7
	.2byte	0x11f
	.4byte	0x129
	.byte	0xac
	.uleb128 0x10
	.4byte	.LASF62
	.byte	0x7
	.2byte	0x121
	.4byte	0x113
	.byte	0xae
	.uleb128 0x10
	.4byte	.LASF63
	.byte	0x7
	.2byte	0x123
	.4byte	0x58c
	.byte	0xaf
	.uleb128 0x10
	.4byte	.LASF41
	.byte	0x7
	.2byte	0x125
	.4byte	0x113
	.byte	0xb5
	.uleb128 0x10
	.4byte	.LASF64
	.byte	0x7
	.2byte	0x127
	.4byte	0x59c
	.byte	0xb6
	.uleb128 0x11
	.string	"num"
	.byte	0x7
	.2byte	0x129
	.4byte	0x113
	.byte	0xb8
	.uleb128 0x10
	.4byte	.LASF65
	.byte	0x7
	.2byte	0x139
	.4byte	0x4e1
	.byte	0xbc
	.uleb128 0x10
	.4byte	.LASF66
	.byte	0x7
	.2byte	0x13f
	.4byte	0x50b
	.byte	0xc0
	.uleb128 0x10
	.4byte	.LASF67
	.byte	0x7
	.2byte	0x14f
	.4byte	0x102
	.byte	0xc4
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x224
	.uleb128 0xd
	.4byte	.LASF68
	.byte	0x4
	.byte	0x8
	.byte	0x2e
	.4byte	0x39f
	.uleb128 0xe
	.4byte	.LASF69
	.byte	0x8
	.byte	0x2f
	.4byte	0x13f
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF70
	.byte	0x8
	.byte	0x42
	.4byte	0x386
	.uleb128 0xd
	.4byte	.LASF48
	.byte	0x10
	.byte	0x9
	.byte	0x39
	.4byte	0x3c3
	.uleb128 0xe
	.4byte	.LASF69
	.byte	0x9
	.byte	0x3a
	.4byte	0x3c3
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	0x13f
	.4byte	0x3d3
	.uleb128 0x13
	.4byte	0x9b
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.4byte	.LASF71
	.byte	0x9
	.byte	0x4b
	.4byte	0x3aa
	.uleb128 0x14
	.byte	0x10
	.byte	0xa
	.byte	0x37
	.4byte	0x3fd
	.uleb128 0x15
	.string	"ip6"
	.byte	0xa
	.byte	0x38
	.4byte	0x3d3
	.uleb128 0x15
	.string	"ip4"
	.byte	0xa
	.byte	0x39
	.4byte	0x39f
	.byte	0
	.uleb128 0xd
	.4byte	.LASF72
	.byte	0x14
	.byte	0xa
	.byte	0x36
	.4byte	0x422
	.uleb128 0xe
	.4byte	.LASF73
	.byte	0xa
	.byte	0x3a
	.4byte	0x3de
	.byte	0
	.uleb128 0xe
	.4byte	.LASF40
	.byte	0xa
	.byte	0x3b
	.4byte	0x113
	.byte	0x10
	.byte	0
	.uleb128 0x4
	.4byte	.LASF74
	.byte	0xa
	.byte	0x3c
	.4byte	0x3fd
	.uleb128 0x4
	.4byte	.LASF75
	.byte	0x7
	.byte	0x83
	.4byte	0x438
	.uleb128 0x6
	.byte	0x4
	.4byte	0x43e
	.uleb128 0x16
	.4byte	0x14a
	.4byte	0x452
	.uleb128 0xa
	.4byte	0x21e
	.uleb128 0xa
	.4byte	0x380
	.byte	0
	.uleb128 0x4
	.4byte	.LASF76
	.byte	0x7
	.byte	0x8e
	.4byte	0x45d
	.uleb128 0x6
	.byte	0x4
	.4byte	0x463
	.uleb128 0x16
	.4byte	0x14a
	.4byte	0x47c
	.uleb128 0xa
	.4byte	0x380
	.uleb128 0xa
	.4byte	0x21e
	.uleb128 0xa
	.4byte	0x47c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x482
	.uleb128 0x8
	.4byte	0x39f
	.uleb128 0x4
	.4byte	.LASF77
	.byte	0x7
	.byte	0x9b
	.4byte	0x492
	.uleb128 0x6
	.byte	0x4
	.4byte	0x498
	.uleb128 0x16
	.4byte	0x14a
	.4byte	0x4b1
	.uleb128 0xa
	.4byte	0x380
	.uleb128 0xa
	.4byte	0x21e
	.uleb128 0xa
	.4byte	0x4b1
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4b7
	.uleb128 0x8
	.4byte	0x3d3
	.uleb128 0x4
	.4byte	.LASF78
	.byte	0x7
	.byte	0xa5
	.4byte	0x4c7
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4cd
	.uleb128 0x16
	.4byte	0x14a
	.4byte	0x4e1
	.uleb128 0xa
	.4byte	0x380
	.uleb128 0xa
	.4byte	0x21e
	.byte	0
	.uleb128 0x4
	.4byte	.LASF79
	.byte	0x7
	.byte	0xaa
	.4byte	0x4ec
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4f2
	.uleb128 0x16
	.4byte	0x14a
	.4byte	0x50b
	.uleb128 0xa
	.4byte	0x380
	.uleb128 0xa
	.4byte	0x47c
	.uleb128 0xa
	.4byte	0x113
	.byte	0
	.uleb128 0x4
	.4byte	.LASF80
	.byte	0x7
	.byte	0xaf
	.4byte	0x516
	.uleb128 0x6
	.byte	0x4
	.4byte	0x51c
	.uleb128 0x16
	.4byte	0x14a
	.4byte	0x535
	.uleb128 0xa
	.4byte	0x380
	.uleb128 0xa
	.4byte	0x4b1
	.uleb128 0xa
	.4byte	0x113
	.byte	0
	.uleb128 0x4
	.4byte	.LASF81
	.byte	0x7
	.byte	0xb6
	.4byte	0xab
	.uleb128 0x12
	.4byte	0x422
	.4byte	0x550
	.uleb128 0x13
	.4byte	0x9b
	.byte	0x2
	.byte	0
	.uleb128 0x12
	.4byte	0x113
	.4byte	0x560
	.uleb128 0x13
	.4byte	0x9b
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.4byte	0x570
	.uleb128 0xa
	.4byte	0x380
	.uleb128 0xa
	.4byte	0x113
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x560
	.uleb128 0x17
	.4byte	.LASF56
	.uleb128 0x6
	.byte	0x4
	.4byte	0x576
	.uleb128 0x17
	.4byte	.LASF82
	.uleb128 0x6
	.byte	0x4
	.4byte	0x581
	.uleb128 0x12
	.4byte	0x113
	.4byte	0x59c
	.uleb128 0x13
	.4byte	0x9b
	.byte	0x5
	.byte	0
	.uleb128 0x12
	.4byte	0xb2
	.4byte	0x5ac
	.uleb128 0x13
	.4byte	0x9b
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x25
	.byte	0xb
	.byte	0x19
	.4byte	0x5d1
	.uleb128 0xc
	.4byte	.LASF83
	.byte	0
	.uleb128 0xc
	.4byte	.LASF84
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF85
	.byte	0x2
	.uleb128 0xc
	.4byte	.LASF86
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.4byte	.LASF87
	.byte	0xb
	.byte	0x1e
	.4byte	0x5ac
	.uleb128 0x18
	.4byte	.LASF100
	.byte	0x1
	.byte	0x42
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5ff
	.uleb128 0x19
	.4byte	.LASF45
	.byte	0x1
	.byte	0x42
	.4byte	0x380
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF101
	.byte	0x1
	.byte	0x6b
	.4byte	0x14a
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6a8
	.uleb128 0x1b
	.4byte	.LASF45
	.byte	0x1
	.byte	0x6b
	.4byte	0x380
	.4byte	.LLST0
	.uleb128 0x1c
	.string	"p"
	.byte	0x1
	.byte	0x6b
	.4byte	0x21e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1d
	.string	"q"
	.byte	0x1
	.byte	0x6d
	.4byte	0x21e
	.4byte	.LLST1
	.uleb128 0x1e
	.4byte	.LASF88
	.byte	0x1
	.byte	0x6e
	.4byte	0x5d1
	.4byte	.LLST2
	.uleb128 0x1e
	.4byte	.LASF89
	.byte	0x1
	.byte	0x78
	.4byte	0x129
	.4byte	.LLST3
	.uleb128 0x1f
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0x683
	.uleb128 0x1d
	.string	"tmp"
	.byte	0x1
	.byte	0x7c
	.4byte	0x21e
	.4byte	.LLST4
	.uleb128 0x20
	.4byte	.LVL7
	.4byte	0x7ed
	.byte	0
	.uleb128 0x21
	.4byte	.LVL2
	.4byte	0x7f6
	.4byte	0x697
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL12
	.4byte	0x802
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LASF102
	.byte	0x1
	.byte	0x9f
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x761
	.uleb128 0x1b
	.4byte	.LASF45
	.byte	0x1
	.byte	0x9f
	.4byte	0x380
	.4byte	.LLST5
	.uleb128 0x1b
	.4byte	.LASF90
	.byte	0x1
	.byte	0x9f
	.4byte	0xa2
	.4byte	.LLST6
	.uleb128 0x25
	.string	"len"
	.byte	0x1
	.byte	0x9f
	.4byte	0xe5
	.4byte	.LLST7
	.uleb128 0x1d
	.string	"p"
	.byte	0x1
	.byte	0xa1
	.4byte	0x21e
	.4byte	.LLST8
	.uleb128 0x21
	.4byte	.LVL16
	.4byte	0x80d
	.4byte	0x70b
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL17
	.4byte	0x818
	.4byte	0x723
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x21
	.4byte	.LVL19
	.4byte	0x80d
	.4byte	0x737
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL21
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.4byte	0x750
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL23
	.4byte	0x823
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LASF103
	.byte	0x1
	.byte	0xda
	.4byte	0x14a
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7d8
	.uleb128 0x1b
	.4byte	.LASF45
	.byte	0x1
	.byte	0xda
	.4byte	0x380
	.4byte	.LLST9
	.uleb128 0x28
	.4byte	.LASF104
	.4byte	0x7e8
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6404
	.uleb128 0x21
	.4byte	.LVL25
	.4byte	0x82e
	.4byte	0x7c7
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xdc
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6404
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x23
	.4byte	.LVL26
	.4byte	0x5dc
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	0xb2
	.4byte	0x7e8
	.uleb128 0x13
	.4byte	0x9b
	.byte	0xf
	.byte	0
	.uleb128 0x8
	.4byte	0x7d8
	.uleb128 0x29
	.4byte	.LASF105
	.4byte	.LASF105
	.uleb128 0x2a
	.4byte	.LASF91
	.4byte	.LASF91
	.byte	0xc
	.2byte	0x1fb
	.uleb128 0x2b
	.4byte	.LASF92
	.4byte	.LASF92
	.byte	0xd
	.byte	0x97
	.uleb128 0x2b
	.4byte	.LASF93
	.4byte	.LASF93
	.byte	0xd
	.byte	0xf3
	.uleb128 0x2b
	.4byte	.LASF94
	.4byte	.LASF94
	.byte	0x6
	.byte	0xc1
	.uleb128 0x2b
	.4byte	.LASF95
	.4byte	.LASF95
	.byte	0x6
	.byte	0xcb
	.uleb128 0x2b
	.4byte	.LASF96
	.4byte	.LASF96
	.byte	0xe
	.byte	0x29
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0x18
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.4byte	.LVL1
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL5
	.4byte	.LVL13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL14
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL3
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL2
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL13
	.4byte	.LFE15
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL6
	.2byte	0x2
	.byte	0x73
	.sleb128 10
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL9
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL6
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL15
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL22
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL15
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL20
	.4byte	.LVL21-1
	.2byte	0x2
	.byte	0x74
	.sleb128 4
	.4byte	.LVL21-1
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL15
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL18
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL18
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL24
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL27
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x34
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
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
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
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF95:
	.string	"pbuf_free"
.LASF69:
	.string	"addr"
.LASF6:
	.string	"__int16_t"
.LASF102:
	.string	"ethernetif_input"
.LASF73:
	.string	"u_addr"
.LASF63:
	.string	"hwaddr"
.LASF81:
	.string	"dhcp_event_fn"
.LASF82:
	.string	"udp_pcb"
.LASF16:
	.string	"int8_t"
.LASF55:
	.string	"state"
.LASF76:
	.string	"netif_output_fn"
.LASF40:
	.string	"type"
.LASF84:
	.string	"ESP_IF_WIFI_AP"
.LASF51:
	.string	"input"
.LASF54:
	.string	"output_ip6"
.LASF13:
	.string	"sizetype"
.LASF39:
	.string	"tot_len"
.LASF25:
	.string	"s16_t"
.LASF8:
	.string	"__uint16_t"
.LASF9:
	.string	"__uint32_t"
.LASF62:
	.string	"hwaddr_len"
.LASF105:
	.string	"memcpy"
.LASF48:
	.string	"ip6_addr"
.LASF7:
	.string	"short int"
.LASF57:
	.string	"dhcps_pcb"
.LASF65:
	.string	"igmp_mac_filter"
.LASF17:
	.string	"uint8_t"
.LASF46:
	.string	"ip_addr"
.LASF20:
	.string	"uint32_t"
.LASF35:
	.string	"PBUF_REF"
.LASF28:
	.string	"PBUF_TRANSPORT"
.LASF53:
	.string	"linkoutput"
.LASF61:
	.string	"hostname"
.LASF10:
	.string	"long long int"
.LASF70:
	.string	"ip4_addr_t"
.LASF85:
	.string	"ESP_IF_ETH"
.LASF78:
	.string	"netif_linkoutput_fn"
.LASF12:
	.string	"long int"
.LASF77:
	.string	"netif_output_ip6_fn"
.LASF74:
	.string	"ip_addr_t"
.LASF103:
	.string	"ethernetif_init"
.LASF93:
	.string	"esp_eth_free_rx_buf"
.LASF4:
	.string	"__uint8_t"
.LASF86:
	.string	"ESP_IF_MAX"
.LASF56:
	.string	"dhcp"
.LASF79:
	.string	"netif_igmp_mac_filter_fn"
.LASF64:
	.string	"name"
.LASF33:
	.string	"PBUF_RAM"
.LASF5:
	.string	"unsigned char"
.LASF71:
	.string	"ip6_addr_t"
.LASF75:
	.string	"netif_input_fn"
.LASF104:
	.string	"__func__"
.LASF100:
	.string	"ethernet_low_level_init"
.LASF49:
	.string	"ip6_addr_state"
.LASF2:
	.string	"signed char"
.LASF41:
	.string	"flags"
.LASF11:
	.string	"long long unsigned int"
.LASF43:
	.string	"l2_buf"
.LASF0:
	.string	"unsigned int"
.LASF72:
	.string	"_ip_addr"
.LASF80:
	.string	"netif_mld_mac_filter_fn"
.LASF14:
	.string	"long unsigned int"
.LASF32:
	.string	"PBUF_RAW"
.LASF60:
	.string	"rs_count"
.LASF24:
	.string	"u16_t"
.LASF36:
	.string	"PBUF_POOL"
.LASF3:
	.string	"__int8_t"
.LASF98:
	.string	"C:/esp/esp-idf/components/lwip/port/netif/ethernetif.c"
.LASF27:
	.string	"err_t"
.LASF15:
	.string	"char"
.LASF19:
	.string	"uint16_t"
.LASF23:
	.string	"s8_t"
.LASF1:
	.string	"short unsigned int"
.LASF94:
	.string	"pbuf_alloc"
.LASF18:
	.string	"int16_t"
.LASF21:
	.string	"_Bool"
.LASF68:
	.string	"ip4_addr"
.LASF88:
	.string	"eth_if"
.LASF66:
	.string	"mld_mac_filter"
.LASF42:
	.string	"l2_owner"
.LASF90:
	.string	"buffer"
.LASF29:
	.string	"PBUF_IP"
.LASF89:
	.string	"pbuf_x_len"
.LASF67:
	.string	"l2_buffer_free_notify"
.LASF58:
	.string	"dhcp_event"
.LASF87:
	.string	"esp_interface_t"
.LASF91:
	.string	"tcpip_adapter_get_esp_if"
.LASF45:
	.string	"netif"
.LASF47:
	.string	"netmask"
.LASF26:
	.string	"u32_t"
.LASF83:
	.string	"ESP_IF_WIFI_STA"
.LASF92:
	.string	"esp_eth_tx"
.LASF99:
	.string	"C:\\\\esp\\\\esp32-ArkPOS2\\\\ArkPOS2-esp\\\\build\\\\lwip"
.LASF101:
	.string	"ethernet_low_level_output"
.LASF52:
	.string	"output"
.LASF50:
	.string	"ipv6_addr_cb"
.LASF59:
	.string	"ip6_autoconfig_enabled"
.LASF96:
	.string	"__assert_func"
.LASF22:
	.string	"u8_t"
.LASF97:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF31:
	.string	"PBUF_RAW_TX"
.LASF34:
	.string	"PBUF_ROM"
.LASF38:
	.string	"payload"
.LASF37:
	.string	"next"
.LASF44:
	.string	"pbuf"
.LASF30:
	.string	"PBUF_LINK"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-73-ge28a011) 5.2.0"
