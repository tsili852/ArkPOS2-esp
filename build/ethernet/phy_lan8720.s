	.file	"phy_lan8720.c"
	.text
.Ltext0:
	.section	.text.phy_lan8720_check_phy_init,"ax",@progbits
	.literal_position
	.literal .LC0, 4096
	.align	4
	.global	phy_lan8720_check_phy_init
	.type	phy_lan8720_check_phy_init, @function
phy_lan8720_check_phy_init:
.LFB1:
	.file 1 "C:/esp/esp-idf/components/ethernet/eth_phy/phy_lan8720.c"
	.loc 1 53 0
	entry	sp, 32
.LCFI0:
.LVL0:
.LBB6:
.LBB7:
	.file 2 "C:/esp/esp-idf/components/ethernet/include/esp_eth.h"
	.loc 2 232 0
	movi.n	a13, 0
	movi.n	a12, 0x20
	mov.n	a11, a12
	movi.n	a10, 1
	call8	esp_eth_smi_wait_value
.LVL1:
.LBE7:
.LBE6:
.LBB8:
.LBB9:
	l32r	a11, .LC0
	movi.n	a13, 0
	mov.n	a12, a11
	movi.n	a10, 0x1f
	call8	esp_eth_smi_wait_value
.LVL2:
	retw.n
.LBE9:
.LBE8:
.LFE1:
	.size	phy_lan8720_check_phy_init, .-phy_lan8720_check_phy_init
	.section	.text.phy_lan8720_get_speed_mode,"ax",@progbits
	.align	4
	.global	phy_lan8720_get_speed_mode
	.type	phy_lan8720_get_speed_mode, @function
phy_lan8720_get_speed_mode:
.LFB2:
	.loc 1 61 0
	entry	sp, 32
.LCFI1:
	.loc 1 62 0
	movi.n	a10, 0x1f
	call8	esp_eth_smi_read
.LVL3:
	movi.n	a8, 8
	and	a10, a10, a8
	extui	a10, a10, 0, 16
	beqz.n	a10, .L4
	.loc 1 64 0
	movi.n	a2, 1
	retw.n
.L4:
	.loc 1 67 0
	movi.n	a2, 0
	.loc 1 69 0
	retw.n
.LFE2:
	.size	phy_lan8720_get_speed_mode, .-phy_lan8720_get_speed_mode
	.section	.text.phy_lan8720_get_duplex_mode,"ax",@progbits
	.align	4
	.global	phy_lan8720_get_duplex_mode
	.type	phy_lan8720_get_duplex_mode, @function
phy_lan8720_get_duplex_mode:
.LFB3:
	.loc 1 72 0
	entry	sp, 32
.LCFI2:
	.loc 1 73 0
	movi.n	a10, 0x1f
	call8	esp_eth_smi_read
.LVL4:
	movi.n	a8, 0x10
	and	a10, a10, a8
	extui	a10, a10, 0, 16
	beqz.n	a10, .L7
	.loc 1 75 0
	movi.n	a2, 1
	retw.n
.L7:
	.loc 1 78 0
	movi.n	a2, 0
	.loc 1 80 0
	retw.n
.LFE3:
	.size	phy_lan8720_get_duplex_mode, .-phy_lan8720_get_duplex_mode
	.section	.text.phy_lan8720_power_enable,"ax",@progbits
	.literal_position
	.literal .LC1, 64512
	.align	4
	.global	phy_lan8720_power_enable
	.type	phy_lan8720_power_enable, @function
phy_lan8720_power_enable:
.LFB4:
	.loc 1 83 0
.LVL5:
	entry	sp, 32
.LCFI3:
	extui	a2, a2, 0, 8
	.loc 1 84 0
	beqz.n	a2, .L8
	.loc 1 85 0
	l32r	a11, .LC1
	movi.n	a10, 9
	call8	esp_eth_smi_write
.LVL6:
	.loc 1 87 0
	call8	phy_mii_enable_flow_ctrl
.LVL7:
.L8:
	retw.n
.LFE4:
	.size	phy_lan8720_power_enable, .-phy_lan8720_power_enable
	.section	.text.phy_lan8720_init,"ax",@progbits
	.literal_position
	.literal .LC2, 32768
	.literal .LC3, 65535
	.literal .LC4, 65520
	.literal .LC5, 49392
	.literal .LC6, 64512
	.align	4
	.global	phy_lan8720_init
	.type	phy_lan8720_init, @function
phy_lan8720_init:
.LFB5:
	.loc 1 92 0
	entry	sp, 32
.LCFI4:
	.loc 1 96 0
	l32r	a11, .LC2
	movi.n	a10, 0
	call8	esp_eth_smi_write
.LVL8:
.L11:
	.loc 1 101 0 discriminator 1
	movi	a13, 0x3e8
	l32r	a12, .LC3
	movi.n	a11, 7
	movi.n	a10, 2
	call8	esp_eth_smi_wait_value
.LVL9:
	mov.n	a2, a10
.LVL10:
	.loc 1 102 0 discriminator 1
	movi	a13, 0x3e8
	l32r	a12, .LC4
	l32r	a11, .LC5
	movi.n	a10, 3
	call8	esp_eth_smi_wait_value
.LVL11:
	.loc 1 103 0 discriminator 1
	or	a10, a2, a10
.LVL12:
	bnez.n	a10, .L11
	.loc 1 105 0
	l32r	a11, .LC6
	movi.n	a10, 9
	call8	esp_eth_smi_write
.LVL13:
	.loc 1 109 0
	movi	a10, 0x12c
	call8	ets_delay_us
.LVL14:
	.loc 1 112 0
	call8	phy_mii_enable_flow_ctrl
.LVL15:
	retw.n
.LFE5:
	.size	phy_lan8720_init, .-phy_lan8720_init
	.section	.text.phy_lan8720_dump_registers,"ax",@progbits
	.align	4
	.global	phy_lan8720_dump_registers
	.type	phy_lan8720_dump_registers, @function
phy_lan8720_dump_registers:
.LFB6:
	.loc 1 133 0
	entry	sp, 32
.LCFI5:
	retw.n
.LFE6:
	.size	phy_lan8720_dump_registers, .-phy_lan8720_dump_registers
	.global	phy_lan8720_default_ethernet_config
	.section	.rodata.phy_lan8720_default_ethernet_config,"a",@progbits
	.align	4
	.type	phy_lan8720_default_ethernet_config, @object
	.size	phy_lan8720_default_ethernet_config, 48
phy_lan8720_default_ethernet_config:
	.word	0
	.word	0
	.zero	4
	.word	phy_lan8720_init
	.word	phy_mii_check_link_status
	.word	phy_lan8720_check_phy_init
	.word	phy_lan8720_get_speed_mode
	.word	phy_lan8720_get_duplex_mode
	.zero	4
	.byte	1
	.zero	3
	.word	phy_mii_get_partner_pause_enable
	.word	phy_lan8720_power_enable
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
	.uleb128 0x20
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
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI5-.LFB6
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
	.text
.Letext0:
	.file 3 "C:/esp/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "C:/esp/esp-idf/components/newlib/include/stdint.h"
	.file 5 "C:/esp/esp-idf/components/log/include/esp_log.h"
	.file 6 "C:/esp/esp-idf/components/esp32/include/esp_err.h"
	.file 7 "C:/esp/esp-idf/components/ethernet/include/eth_phy/phy.h"
	.file 8 "C:/esp/esp-idf/components/esp32/include/rom/ets_sys.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x670
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF105
	.byte	0xc
	.4byte	.LASF106
	.4byte	.LASF107
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
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
	.byte	0x3
	.byte	0x16
	.4byte	0x45
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x3
	.byte	0x19
	.4byte	0x57
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x3
	.byte	0x1a
	.4byte	0x69
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x4
	.byte	0x21
	.4byte	0x3a
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x4
	.byte	0x2c
	.4byte	0x4c
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x4
	.byte	0x2d
	.4byte	0x5e
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF13
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x6
	.byte	0x4
	.4byte	0xbc
	.uleb128 0x7
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF16
	.uleb128 0x6
	.byte	0x4
	.4byte	0xca
	.uleb128 0x8
	.4byte	0xbd
	.uleb128 0x9
	.byte	0x4
	.4byte	0x69
	.byte	0x5
	.byte	0x1f
	.4byte	0x100
	.uleb128 0xa
	.4byte	.LASF17
	.byte	0
	.uleb128 0xa
	.4byte	.LASF18
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF19
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x5
	.byte	0x26
	.4byte	0xcf
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x6
	.byte	0x18
	.4byte	0x89
	.uleb128 0x9
	.byte	0x4
	.4byte	0x69
	.byte	0x2
	.byte	0x1a
	.4byte	0x12f
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x2
	.byte	0x1d
	.4byte	0x116
	.uleb128 0x9
	.byte	0x4
	.4byte	0x69
	.byte	0x2
	.byte	0x1f
	.4byte	0x153
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF30
	.byte	0x2
	.byte	0x22
	.4byte	0x13a
	.uleb128 0x9
	.byte	0x4
	.4byte	0x69
	.byte	0x2
	.byte	0x24
	.4byte	0x177
	.uleb128 0xa
	.4byte	.LASF31
	.byte	0
	.uleb128 0xa
	.4byte	.LASF32
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF33
	.byte	0x2
	.byte	0x27
	.4byte	0x15e
	.uleb128 0x9
	.byte	0x4
	.4byte	0x69
	.byte	0x2
	.byte	0x29
	.4byte	0x24f
	.uleb128 0xa
	.4byte	.LASF34
	.byte	0
	.uleb128 0xa
	.4byte	.LASF35
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF36
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF37
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF38
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF39
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF40
	.byte	0x6
	.uleb128 0xa
	.4byte	.LASF41
	.byte	0x7
	.uleb128 0xa
	.4byte	.LASF42
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF43
	.byte	0x9
	.uleb128 0xa
	.4byte	.LASF44
	.byte	0xa
	.uleb128 0xa
	.4byte	.LASF45
	.byte	0xb
	.uleb128 0xa
	.4byte	.LASF46
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF47
	.byte	0xd
	.uleb128 0xa
	.4byte	.LASF48
	.byte	0xe
	.uleb128 0xa
	.4byte	.LASF49
	.byte	0xf
	.uleb128 0xa
	.4byte	.LASF50
	.byte	0x10
	.uleb128 0xa
	.4byte	.LASF51
	.byte	0x11
	.uleb128 0xa
	.4byte	.LASF52
	.byte	0x12
	.uleb128 0xa
	.4byte	.LASF53
	.byte	0x13
	.uleb128 0xa
	.4byte	.LASF54
	.byte	0x14
	.uleb128 0xa
	.4byte	.LASF55
	.byte	0x15
	.uleb128 0xa
	.4byte	.LASF56
	.byte	0x16
	.uleb128 0xa
	.4byte	.LASF57
	.byte	0x17
	.uleb128 0xa
	.4byte	.LASF58
	.byte	0x18
	.uleb128 0xa
	.4byte	.LASF59
	.byte	0x19
	.uleb128 0xa
	.4byte	.LASF60
	.byte	0x1a
	.uleb128 0xa
	.4byte	.LASF61
	.byte	0x1b
	.uleb128 0xa
	.4byte	.LASF62
	.byte	0x1c
	.uleb128 0xa
	.4byte	.LASF63
	.byte	0x1d
	.uleb128 0xa
	.4byte	.LASF64
	.byte	0x1e
	.uleb128 0xa
	.4byte	.LASF65
	.byte	0x1f
	.byte	0
	.uleb128 0x3
	.4byte	.LASF66
	.byte	0x2
	.byte	0x4a
	.4byte	0x182
	.uleb128 0x3
	.4byte	.LASF67
	.byte	0x2
	.byte	0x4c
	.4byte	0x265
	.uleb128 0x6
	.byte	0x4
	.4byte	0x26b
	.uleb128 0xb
	.4byte	0x270
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF68
	.uleb128 0x3
	.4byte	.LASF69
	.byte	0x2
	.byte	0x4d
	.4byte	0xb6
	.uleb128 0x3
	.4byte	.LASF70
	.byte	0x2
	.byte	0x4e
	.4byte	0x28d
	.uleb128 0x6
	.byte	0x4
	.4byte	0x293
	.uleb128 0xb
	.4byte	0x153
	.uleb128 0x3
	.4byte	.LASF71
	.byte	0x2
	.byte	0x4f
	.4byte	0x2a3
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2a9
	.uleb128 0xb
	.4byte	0x177
	.uleb128 0x3
	.4byte	.LASF72
	.byte	0x2
	.byte	0x50
	.4byte	0xb6
	.uleb128 0x3
	.4byte	.LASF73
	.byte	0x2
	.byte	0x51
	.4byte	0x2c4
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2ca
	.uleb128 0xc
	.4byte	0x10b
	.4byte	0x2e3
	.uleb128 0xd
	.4byte	0x9f
	.uleb128 0xd
	.4byte	0x7e
	.uleb128 0xd
	.4byte	0x9f
	.byte	0
	.uleb128 0x3
	.4byte	.LASF74
	.byte	0x2
	.byte	0x52
	.4byte	0xb6
	.uleb128 0x3
	.4byte	.LASF75
	.byte	0x2
	.byte	0x53
	.4byte	0x265
	.uleb128 0x3
	.4byte	.LASF76
	.byte	0x2
	.byte	0x54
	.4byte	0x304
	.uleb128 0x6
	.byte	0x4
	.4byte	0x30a
	.uleb128 0xe
	.4byte	0x315
	.uleb128 0xd
	.4byte	0x270
	.byte	0
	.uleb128 0xf
	.byte	0x30
	.byte	0x2
	.byte	0x5a
	.4byte	0x3ae
	.uleb128 0x10
	.4byte	.LASF77
	.byte	0x2
	.byte	0x5b
	.4byte	0x24f
	.byte	0
	.uleb128 0x10
	.4byte	.LASF78
	.byte	0x2
	.byte	0x5c
	.4byte	0x12f
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF79
	.byte	0x2
	.byte	0x5d
	.4byte	0x2b9
	.byte	0x8
	.uleb128 0x10
	.4byte	.LASF80
	.byte	0x2
	.byte	0x5e
	.4byte	0x2ae
	.byte	0xc
	.uleb128 0x10
	.4byte	.LASF81
	.byte	0x2
	.byte	0x5f
	.4byte	0x25a
	.byte	0x10
	.uleb128 0x10
	.4byte	.LASF82
	.byte	0x2
	.byte	0x60
	.4byte	0x277
	.byte	0x14
	.uleb128 0x10
	.4byte	.LASF83
	.byte	0x2
	.byte	0x61
	.4byte	0x282
	.byte	0x18
	.uleb128 0x10
	.4byte	.LASF84
	.byte	0x2
	.byte	0x62
	.4byte	0x298
	.byte	0x1c
	.uleb128 0x10
	.4byte	.LASF85
	.byte	0x2
	.byte	0x63
	.4byte	0x2e3
	.byte	0x20
	.uleb128 0x10
	.4byte	.LASF86
	.byte	0x2
	.byte	0x64
	.4byte	0x270
	.byte	0x24
	.uleb128 0x10
	.4byte	.LASF87
	.byte	0x2
	.byte	0x65
	.4byte	0x2ee
	.byte	0x28
	.uleb128 0x10
	.4byte	.LASF88
	.byte	0x2
	.byte	0x66
	.4byte	0x2f9
	.byte	0x2c
	.byte	0
	.uleb128 0x3
	.4byte	.LASF89
	.byte	0x2
	.byte	0x68
	.4byte	0x315
	.uleb128 0x11
	.4byte	.LASF108
	.byte	0x2
	.byte	0xe7
	.4byte	0x10b
	.byte	0x3
	.4byte	0x3eb
	.uleb128 0x12
	.4byte	.LASF90
	.byte	0x2
	.byte	0xe7
	.4byte	0x94
	.uleb128 0x12
	.4byte	.LASF91
	.byte	0x2
	.byte	0xe7
	.4byte	0x7e
	.uleb128 0x12
	.4byte	.LASF92
	.byte	0x2
	.byte	0xe7
	.4byte	0x57
	.byte	0
	.uleb128 0x13
	.4byte	.LASF95
	.byte	0x1
	.byte	0x34
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x48c
	.uleb128 0x14
	.4byte	0x3b9
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.byte	0x1
	.byte	0x38
	.4byte	0x446
	.uleb128 0x15
	.4byte	0x3df
	.byte	0
	.uleb128 0x15
	.4byte	0x3d4
	.byte	0x20
	.uleb128 0x15
	.4byte	0x3c9
	.byte	0x1
	.uleb128 0x16
	.4byte	.LVL1
	.4byte	0x62f
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	0x3b9
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.byte	0x1
	.byte	0x39
	.uleb128 0x15
	.4byte	0x3df
	.byte	0
	.uleb128 0x19
	.4byte	0x3d4
	.2byte	0x1000
	.uleb128 0x15
	.4byte	0x3c9
	.byte	0x1f
	.uleb128 0x16
	.4byte	.LVL2
	.4byte	0x62f
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x4f
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1000
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1000
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF93
	.byte	0x1
	.byte	0x3c
	.4byte	0x153
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4b5
	.uleb128 0x16
	.4byte	.LVL3
	.4byte	0x63a
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x4f
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF94
	.byte	0x1
	.byte	0x47
	.4byte	0x177
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4de
	.uleb128 0x16
	.4byte	.LVL4
	.4byte	0x63a
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x4f
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	.LASF96
	.byte	0x1
	.byte	0x52
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x524
	.uleb128 0x1b
	.4byte	.LASF109
	.byte	0x1
	.byte	0x52
	.4byte	0x270
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1c
	.4byte	.LVL6
	.4byte	0x645
	.4byte	0x51a
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x39
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0xfc00
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL7
	.4byte	0x650
	.byte	0
	.uleb128 0x13
	.4byte	.LASF97
	.byte	0x1
	.byte	0x5b
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5f6
	.uleb128 0x1e
	.4byte	.LASF98
	.byte	0x1
	.byte	0x62
	.4byte	0x10b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1f
	.4byte	.LASF99
	.byte	0x1
	.byte	0x62
	.4byte	0x10b
	.4byte	.LLST0
	.uleb128 0x1c
	.4byte	.LVL8
	.4byte	0x645
	.4byte	0x56f
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x8000
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL9
	.4byte	0x62f
	.4byte	0x595
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x37
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0xffff
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0xa
	.2byte	0x3e8
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL11
	.4byte	0x62f
	.4byte	0x5bd
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0xc0f0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0xfff0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0xa
	.2byte	0x3e8
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL13
	.4byte	0x645
	.4byte	0x5d7
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x39
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0xfc00
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL14
	.4byte	0x65b
	.4byte	0x5ec
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0x12c
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL15
	.4byte	0x650
	.byte	0
	.uleb128 0x20
	.4byte	.LASF110
	.byte	0x1
	.byte	0x84
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x21
	.string	"TAG"
	.byte	0x1
	.byte	0x32
	.4byte	0xc4
	.uleb128 0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+1639
	.sleb128 0
	.uleb128 0x22
	.4byte	.LASF111
	.byte	0x1
	.byte	0x73
	.4byte	0x62a
	.uleb128 0x5
	.byte	0x3
	.4byte	phy_lan8720_default_ethernet_config
	.uleb128 0x8
	.4byte	0x3ae
	.uleb128 0x23
	.4byte	.LASF100
	.4byte	.LASF100
	.byte	0x2
	.byte	0xda
	.uleb128 0x23
	.4byte	.LASF101
	.4byte	.LASF101
	.byte	0x2
	.byte	0xcc
	.uleb128 0x23
	.4byte	.LASF102
	.4byte	.LASF102
	.byte	0x2
	.byte	0xc1
	.uleb128 0x23
	.4byte	.LASF103
	.4byte	.LASF103
	.byte	0x7
	.byte	0x33
	.uleb128 0x24
	.4byte	.LASF104
	.4byte	.LASF104
	.byte	0x8
	.2byte	0x176
	.uleb128 0x25
	.uleb128 0xa
	.byte	0x9e
	.uleb128 0x8
	.byte	0x6c
	.byte	0x61
	.byte	0x6e
	.byte	0x38
	.byte	0x37
	.byte	0x32
	.byte	0x30
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
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x11
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
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x5
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x20
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.4byte	.LVL11
	.4byte	.LVL12
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
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
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
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF54:
	.string	"PHY20"
.LASF55:
	.string	"PHY21"
.LASF56:
	.string	"PHY22"
.LASF57:
	.string	"PHY23"
.LASF34:
	.string	"PHY0"
.LASF35:
	.string	"PHY1"
.LASF36:
	.string	"PHY2"
.LASF37:
	.string	"PHY3"
.LASF38:
	.string	"PHY4"
.LASF85:
	.string	"gpio_config"
.LASF40:
	.string	"PHY6"
.LASF41:
	.string	"PHY7"
.LASF42:
	.string	"PHY8"
.LASF43:
	.string	"PHY9"
.LASF58:
	.string	"PHY24"
.LASF59:
	.string	"PHY25"
.LASF60:
	.string	"PHY26"
.LASF61:
	.string	"PHY27"
.LASF69:
	.string	"eth_phy_check_init_func"
.LASF62:
	.string	"PHY28"
.LASF88:
	.string	"phy_power_enable"
.LASF63:
	.string	"PHY29"
.LASF95:
	.string	"phy_lan8720_check_phy_init"
.LASF104:
	.string	"ets_delay_us"
.LASF6:
	.string	"__uint32_t"
.LASF74:
	.string	"eth_gpio_config_func"
.LASF4:
	.string	"__uint16_t"
.LASF91:
	.string	"value_mask"
.LASF2:
	.string	"short int"
.LASF15:
	.string	"long unsigned int"
.LASF100:
	.string	"esp_eth_smi_wait_value"
.LASF109:
	.string	"enable"
.LASF75:
	.string	"eth_phy_get_partner_pause_enable_func"
.LASF29:
	.string	"ETH_SPEED_MODE_100M"
.LASF67:
	.string	"eth_phy_check_link_func"
.LASF106:
	.string	"C:/esp/esp-idf/components/ethernet/eth_phy/phy_lan8720.c"
.LASF65:
	.string	"PHY31"
.LASF73:
	.string	"eth_tcpip_input_func"
.LASF31:
	.string	"ETH_MODE_HALFDUPLEX"
.LASF8:
	.string	"long long int"
.LASF66:
	.string	"eth_phy_base_t"
.LASF86:
	.string	"flow_ctrl_enable"
.LASF84:
	.string	"phy_get_duplex_mode"
.LASF14:
	.string	"sizetype"
.LASF20:
	.string	"ESP_LOG_INFO"
.LASF101:
	.string	"esp_eth_smi_read"
.LASF78:
	.string	"mac_mode"
.LASF26:
	.string	"ETH_MODE_MII"
.LASF94:
	.string	"phy_lan8720_get_duplex_mode"
.LASF1:
	.string	"unsigned char"
.LASF80:
	.string	"phy_init"
.LASF107:
	.string	"C:\\\\esp\\\\esp32-ArkPOS2\\\\ArkPOS2-esp\\\\build\\\\ethernet"
.LASF32:
	.string	"ETH_MODE_FULLDUPLEX"
.LASF45:
	.string	"PHY11"
.LASF71:
	.string	"eth_phy_get_duplex_mode_func"
.LASF0:
	.string	"signed char"
.LASF96:
	.string	"phy_lan8720_power_enable"
.LASF9:
	.string	"long long unsigned int"
.LASF12:
	.string	"uint32_t"
.LASF7:
	.string	"unsigned int"
.LASF18:
	.string	"ESP_LOG_ERROR"
.LASF10:
	.string	"uint16_t"
.LASF28:
	.string	"ETH_SPEED_MODE_10M"
.LASF102:
	.string	"esp_eth_smi_write"
.LASF64:
	.string	"PHY30"
.LASF83:
	.string	"phy_get_speed_mode"
.LASF33:
	.string	"eth_duplex_mode_t"
.LASF89:
	.string	"eth_config_t"
.LASF3:
	.string	"short unsigned int"
.LASF81:
	.string	"phy_check_link"
.LASF87:
	.string	"phy_get_partner_pause_enable"
.LASF16:
	.string	"char"
.LASF13:
	.string	"long int"
.LASF21:
	.string	"ESP_LOG_DEBUG"
.LASF11:
	.string	"int32_t"
.LASF17:
	.string	"ESP_LOG_NONE"
.LASF39:
	.string	"PHY5"
.LASF76:
	.string	"eth_phy_power_enable_func"
.LASF68:
	.string	"_Bool"
.LASF108:
	.string	"esp_eth_smi_wait_set"
.LASF30:
	.string	"eth_speed_mode_t"
.LASF23:
	.string	"esp_log_level_t"
.LASF93:
	.string	"phy_lan8720_get_speed_mode"
.LASF19:
	.string	"ESP_LOG_WARN"
.LASF44:
	.string	"PHY10"
.LASF92:
	.string	"timeout_ms"
.LASF46:
	.string	"PHY12"
.LASF47:
	.string	"PHY13"
.LASF48:
	.string	"PHY14"
.LASF49:
	.string	"PHY15"
.LASF50:
	.string	"PHY16"
.LASF51:
	.string	"PHY17"
.LASF52:
	.string	"PHY18"
.LASF53:
	.string	"PHY19"
.LASF72:
	.string	"eth_phy_func"
.LASF77:
	.string	"phy_addr"
.LASF22:
	.string	"ESP_LOG_VERBOSE"
.LASF5:
	.string	"__int32_t"
.LASF90:
	.string	"reg_num"
.LASF110:
	.string	"phy_lan8720_dump_registers"
.LASF111:
	.string	"phy_lan8720_default_ethernet_config"
.LASF25:
	.string	"ETH_MODE_RMII"
.LASF98:
	.string	"res1"
.LASF99:
	.string	"res2"
.LASF97:
	.string	"phy_lan8720_init"
.LASF105:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF70:
	.string	"eth_phy_get_speed_mode_func"
.LASF103:
	.string	"phy_mii_enable_flow_ctrl"
.LASF82:
	.string	"phy_check_init"
.LASF27:
	.string	"eth_mode_t"
.LASF24:
	.string	"esp_err_t"
.LASF79:
	.string	"tcpip_input"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-73-ge28a011) 5.2.0"
