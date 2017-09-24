	.file	"phy_tlk110.c"
	.text
.Ltext0:
	.section	.text.phy_tlk110_check_phy_init,"ax",@progbits
	.align	4
	.global	phy_tlk110_check_phy_init
	.type	phy_tlk110_check_phy_init, @function
phy_tlk110_check_phy_init:
.LFB10:
	.file 1 "C:/esp/esp-idf/components/ethernet/eth_phy/phy_tlk110.c"
	.loc 1 57 0
	entry	sp, 32
.LCFI0:
.LVL0:
.LBB8:
.LBB9:
	.file 2 "C:/esp/esp-idf/components/ethernet/include/esp_eth.h"
	.loc 2 232 0
	movi.n	a13, 0
	movi.n	a12, 0x20
	mov.n	a11, a12
	movi.n	a10, 1
	call8	esp_eth_smi_wait_value
.LVL1:
.LBE9:
.LBE8:
.LBB10:
.LBB11:
	movi.n	a13, 0
	movi.n	a12, 0x10
	mov.n	a11, a12
	mov.n	a10, a12
	call8	esp_eth_smi_wait_value
.LVL2:
.LBE11:
.LBE10:
.LBB12:
.LBB13:
	movi.n	a13, 0
	movi.n	a12, 2
	mov.n	a11, a12
	movi.n	a10, 0x1e
	call8	esp_eth_smi_wait_value
.LVL3:
	retw.n
.LBE13:
.LBE12:
.LFE10:
	.size	phy_tlk110_check_phy_init, .-phy_tlk110_check_phy_init
	.section	.text.phy_tlk110_get_speed_mode,"ax",@progbits
	.align	4
	.global	phy_tlk110_get_speed_mode
	.type	phy_tlk110_get_speed_mode, @function
phy_tlk110_get_speed_mode:
.LFB11:
	.loc 1 66 0
	entry	sp, 32
.LCFI1:
	.loc 1 67 0
	movi.n	a10, 0x10
	call8	esp_eth_smi_read
.LVL4:
	movi.n	a8, 2
	and	a10, a10, a8
	extui	a10, a10, 0, 16
	bnez.n	a10, .L4
	.loc 1 69 0
	movi.n	a2, 1
	retw.n
.L4:
	.loc 1 72 0
	movi.n	a2, 0
	.loc 1 74 0
	retw.n
.LFE11:
	.size	phy_tlk110_get_speed_mode, .-phy_tlk110_get_speed_mode
	.section	.text.phy_tlk110_get_duplex_mode,"ax",@progbits
	.align	4
	.global	phy_tlk110_get_duplex_mode
	.type	phy_tlk110_get_duplex_mode, @function
phy_tlk110_get_duplex_mode:
.LFB12:
	.loc 1 77 0
	entry	sp, 32
.LCFI2:
	.loc 1 78 0
	movi.n	a10, 0x10
	call8	esp_eth_smi_read
.LVL5:
	movi.n	a8, 4
	and	a10, a10, a8
	extui	a10, a10, 0, 16
	beqz.n	a10, .L7
	.loc 1 80 0
	movi.n	a2, 1
	retw.n
.L7:
	.loc 1 83 0
	movi.n	a2, 0
	.loc 1 85 0
	retw.n
.LFE12:
	.size	phy_tlk110_get_duplex_mode, .-phy_tlk110_get_duplex_mode
	.section	.text.phy_tlk110_power_enable,"ax",@progbits
	.literal_position
	.literal .LC0, 64512
	.align	4
	.global	phy_tlk110_power_enable
	.type	phy_tlk110_power_enable, @function
phy_tlk110_power_enable:
.LFB13:
	.loc 1 88 0
.LVL6:
	entry	sp, 32
.LCFI3:
	extui	a2, a2, 0, 8
	.loc 1 89 0
	beqz.n	a2, .L8
	.loc 1 90 0
	l32r	a11, .LC0
	movi.n	a10, 9
	call8	esp_eth_smi_write
.LVL7:
	.loc 1 93 0
	call8	phy_mii_enable_flow_ctrl
.LVL8:
.L8:
	retw.n
.LFE13:
	.size	phy_tlk110_power_enable, .-phy_tlk110_power_enable
	.section	.text.phy_tlk110_init,"ax",@progbits
	.literal_position
	.literal .LC1, 32768
	.literal .LC2, 65535
	.literal .LC3, 8192
	.literal .LC4, 65520
	.literal .LC5, 41488
	.literal .LC6, 64512
	.align	4
	.global	phy_tlk110_init
	.type	phy_tlk110_init, @function
phy_tlk110_init:
.LFB14:
	.loc 1 98 0
	entry	sp, 32
.LCFI4:
	.loc 1 102 0
	l32r	a11, .LC1
	movi.n	a10, 0x1f
	call8	esp_eth_smi_write
.LVL9:
.L11:
	.loc 1 107 0 discriminator 1
	movi	a13, 0x3e8
	l32r	a12, .LC2
	l32r	a11, .LC3
	movi.n	a10, 2
	call8	esp_eth_smi_wait_value
.LVL10:
	mov.n	a2, a10
.LVL11:
	.loc 1 108 0 discriminator 1
	movi	a13, 0x3e8
	l32r	a12, .LC4
	l32r	a11, .LC5
	movi.n	a10, 3
	call8	esp_eth_smi_wait_value
.LVL12:
	.loc 1 109 0 discriminator 1
	or	a10, a2, a10
.LVL13:
	bnez.n	a10, .L11
	.loc 1 111 0
	l32r	a11, .LC6
	movi.n	a10, 9
	call8	esp_eth_smi_write
.LVL14:
	.loc 1 114 0
	movi	a10, 0x12c
	call8	ets_delay_us
.LVL15:
	.loc 1 117 0
	call8	phy_mii_enable_flow_ctrl
.LVL16:
	retw.n
.LFE14:
	.size	phy_tlk110_init, .-phy_tlk110_init
	.section	.text.phy_tlk110_dump_registers,"ax",@progbits
	.align	4
	.global	phy_tlk110_dump_registers
	.type	phy_tlk110_dump_registers, @function
phy_tlk110_dump_registers:
.LFB15:
	.loc 1 137 0
	entry	sp, 32
.LCFI5:
	retw.n
.LFE15:
	.size	phy_tlk110_dump_registers, .-phy_tlk110_dump_registers
	.global	phy_tlk110_default_ethernet_config
	.section	.rodata.phy_tlk110_default_ethernet_config,"a",@progbits
	.align	4
	.type	phy_tlk110_default_ethernet_config, @object
	.size	phy_tlk110_default_ethernet_config, 48
phy_tlk110_default_ethernet_config:
	.word	1
	.word	0
	.zero	4
	.word	phy_tlk110_init
	.word	phy_mii_check_link_status
	.word	phy_tlk110_check_phy_init
	.word	phy_tlk110_get_speed_mode
	.word	phy_tlk110_get_duplex_mode
	.zero	4
	.byte	1
	.zero	3
	.word	phy_mii_get_partner_pause_enable
	.word	phy_tlk110_power_enable
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
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI0-.LFB10
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI1-.LFB11
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI2-.LFB12
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI3-.LFB13
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI4-.LFB14
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI5-.LFB15
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
	.4byte	0x6b0
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
	.byte	0x38
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4cb
	.uleb128 0x14
	.4byte	0x3b9
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.byte	0x1
	.byte	0x3c
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
	.4byte	0x670
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
	.uleb128 0x14
	.4byte	0x3b9
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.byte	0x1
	.byte	0x3d
	.4byte	0x48a
	.uleb128 0x15
	.4byte	0x3df
	.byte	0
	.uleb128 0x15
	.4byte	0x3d4
	.byte	0x10
	.uleb128 0x15
	.4byte	0x3c9
	.byte	0x10
	.uleb128 0x16
	.4byte	.LVL2
	.4byte	0x670
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x40
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x40
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	0x3b9
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.byte	0x1
	.byte	0x3e
	.uleb128 0x15
	.4byte	0x3df
	.byte	0
	.uleb128 0x15
	.4byte	0x3d4
	.byte	0x2
	.uleb128 0x15
	.4byte	0x3c9
	.byte	0x1e
	.uleb128 0x16
	.4byte	.LVL3
	.4byte	0x670
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x4e
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LASF93
	.byte	0x1
	.byte	0x41
	.4byte	0x153
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4f4
	.uleb128 0x16
	.4byte	.LVL4
	.4byte	0x67b
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LASF94
	.byte	0x1
	.byte	0x4c
	.4byte	0x177
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x51d
	.uleb128 0x16
	.4byte	.LVL5
	.4byte	0x67b
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	.LASF96
	.byte	0x1
	.byte	0x57
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x563
	.uleb128 0x1a
	.4byte	.LASF109
	.byte	0x1
	.byte	0x57
	.4byte	0x270
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1b
	.4byte	.LVL7
	.4byte	0x686
	.4byte	0x559
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
	.4byte	.LVL8
	.4byte	0x691
	.byte	0
	.uleb128 0x13
	.4byte	.LASF97
	.byte	0x1
	.byte	0x61
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x637
	.uleb128 0x1d
	.4byte	.LASF98
	.byte	0x1
	.byte	0x68
	.4byte	0x10b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1e
	.4byte	.LASF99
	.byte	0x1
	.byte	0x68
	.4byte	0x10b
	.4byte	.LLST0
	.uleb128 0x1b
	.4byte	.LVL9
	.4byte	0x686
	.4byte	0x5ae
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
	.2byte	0x8000
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL10
	.4byte	0x670
	.4byte	0x5d6
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x2000
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
	.uleb128 0x1b
	.4byte	.LVL12
	.4byte	0x670
	.4byte	0x5fe
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
	.2byte	0xa210
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
	.uleb128 0x1b
	.4byte	.LVL14
	.4byte	0x686
	.4byte	0x618
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
	.uleb128 0x1b
	.4byte	.LVL15
	.4byte	0x69c
	.4byte	0x62d
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0x12c
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL16
	.4byte	0x691
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF110
	.byte	0x1
	.byte	0x88
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x20
	.string	"TAG"
	.byte	0x1
	.byte	0x36
	.4byte	0xc4
	.uleb128 0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+1704
	.sleb128 0
	.uleb128 0x21
	.4byte	.LASF111
	.byte	0x1
	.byte	0x78
	.4byte	0x66b
	.uleb128 0x5
	.byte	0x3
	.4byte	phy_tlk110_default_ethernet_config
	.uleb128 0x8
	.4byte	0x3ae
	.uleb128 0x22
	.4byte	.LASF100
	.4byte	.LASF100
	.byte	0x2
	.byte	0xda
	.uleb128 0x22
	.4byte	.LASF101
	.4byte	.LASF101
	.byte	0x2
	.byte	0xcc
	.uleb128 0x22
	.4byte	.LASF102
	.4byte	.LASF102
	.byte	0x2
	.byte	0xc1
	.uleb128 0x22
	.4byte	.LASF103
	.4byte	.LASF103
	.byte	0x7
	.byte	0x33
	.uleb128 0x23
	.4byte	.LASF104
	.4byte	.LASF104
	.byte	0x8
	.2byte	0x176
	.uleb128 0x24
	.uleb128 0x9
	.byte	0x9e
	.uleb128 0x7
	.byte	0x74
	.byte	0x6c
	.byte	0x6b
	.byte	0x31
	.byte	0x31
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
	.uleb128 0x20
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.4byte	.LVL12
	.4byte	.LVL13
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
.LASF54:
	.string	"PHY20"
.LASF55:
	.string	"PHY21"
.LASF56:
	.string	"PHY22"
.LASF57:
	.string	"PHY23"
.LASF58:
	.string	"PHY24"
.LASF59:
	.string	"PHY25"
.LASF60:
	.string	"PHY26"
.LASF61:
	.string	"PHY27"
.LASF62:
	.string	"PHY28"
.LASF63:
	.string	"PHY29"
.LASF40:
	.string	"PHY6"
.LASF41:
	.string	"PHY7"
.LASF42:
	.string	"PHY8"
.LASF80:
	.string	"phy_init"
.LASF108:
	.string	"esp_eth_smi_wait_set"
.LASF2:
	.string	"short int"
.LASF69:
	.string	"eth_phy_check_init_func"
.LASF93:
	.string	"phy_tlk110_get_speed_mode"
.LASF88:
	.string	"phy_power_enable"
.LASF14:
	.string	"sizetype"
.LASF104:
	.string	"ets_delay_us"
.LASF6:
	.string	"__uint32_t"
.LASF74:
	.string	"eth_gpio_config_func"
.LASF4:
	.string	"__uint16_t"
.LASF100:
	.string	"esp_eth_smi_wait_value"
.LASF109:
	.string	"enable"
.LASF75:
	.string	"eth_phy_get_partner_pause_enable_func"
.LASF29:
	.string	"ETH_SPEED_MODE_100M"
.LASF35:
	.string	"PHY1"
.LASF67:
	.string	"eth_phy_check_link_func"
.LASF64:
	.string	"PHY30"
.LASF65:
	.string	"PHY31"
.LASF37:
	.string	"PHY3"
.LASF38:
	.string	"PHY4"
.LASF73:
	.string	"eth_tcpip_input_func"
.LASF97:
	.string	"phy_tlk110_init"
.LASF8:
	.string	"long long int"
.LASF66:
	.string	"eth_phy_base_t"
.LASF43:
	.string	"PHY9"
.LASF94:
	.string	"phy_tlk110_get_duplex_mode"
.LASF86:
	.string	"flow_ctrl_enable"
.LASF13:
	.string	"long int"
.LASF20:
	.string	"ESP_LOG_INFO"
.LASF101:
	.string	"esp_eth_smi_read"
.LASF78:
	.string	"mac_mode"
.LASF26:
	.string	"ETH_MODE_MII"
.LASF84:
	.string	"phy_get_duplex_mode"
.LASF91:
	.string	"value_mask"
.LASF27:
	.string	"eth_mode_t"
.LASF1:
	.string	"unsigned char"
.LASF71:
	.string	"eth_phy_get_duplex_mode_func"
.LASF46:
	.string	"PHY12"
.LASF110:
	.string	"phy_tlk110_dump_registers"
.LASF0:
	.string	"signed char"
.LASF9:
	.string	"long long unsigned int"
.LASF111:
	.string	"phy_tlk110_default_ethernet_config"
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
.LASF15:
	.string	"long unsigned int"
.LASF102:
	.string	"esp_eth_smi_write"
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
.LASF34:
	.string	"PHY0"
.LASF31:
	.string	"ETH_MODE_HALFDUPLEX"
.LASF16:
	.string	"char"
.LASF36:
	.string	"PHY2"
.LASF21:
	.string	"ESP_LOG_DEBUG"
.LASF11:
	.string	"int32_t"
.LASF17:
	.string	"ESP_LOG_NONE"
.LASF39:
	.string	"PHY5"
.LASF72:
	.string	"eth_phy_func"
.LASF68:
	.string	"_Bool"
.LASF30:
	.string	"eth_speed_mode_t"
.LASF23:
	.string	"esp_log_level_t"
.LASF19:
	.string	"ESP_LOG_WARN"
.LASF44:
	.string	"PHY10"
.LASF45:
	.string	"PHY11"
.LASF95:
	.string	"phy_tlk110_check_phy_init"
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
.LASF96:
	.string	"phy_tlk110_power_enable"
.LASF77:
	.string	"phy_addr"
.LASF92:
	.string	"timeout_ms"
.LASF22:
	.string	"ESP_LOG_VERBOSE"
.LASF5:
	.string	"__int32_t"
.LASF85:
	.string	"gpio_config"
.LASF90:
	.string	"reg_num"
.LASF32:
	.string	"ETH_MODE_FULLDUPLEX"
.LASF76:
	.string	"eth_phy_power_enable_func"
.LASF107:
	.string	"C:\\\\esp\\\\ArkPOS2-esp\\\\build\\\\ethernet"
.LASF25:
	.string	"ETH_MODE_RMII"
.LASF106:
	.string	"C:/esp/esp-idf/components/ethernet/eth_phy/phy_tlk110.c"
.LASF98:
	.string	"res1"
.LASF99:
	.string	"res2"
.LASF105:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF70:
	.string	"eth_phy_get_speed_mode_func"
.LASF103:
	.string	"phy_mii_enable_flow_ctrl"
.LASF82:
	.string	"phy_check_init"
.LASF24:
	.string	"esp_err_t"
.LASF79:
	.string	"tcpip_input"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-61-gab8375a) 5.2.0"
