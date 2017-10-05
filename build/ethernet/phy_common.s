	.file	"phy_common.c"
	.text
.Ltext0:
	.section	.text.phy_rmii_configure_data_interface_pins,"ax",@progbits
	.literal_position
	.literal .LC0, 1072992300
	.literal .LC1, -28673
	.literal .LC2, 20480
	.literal .LC3, 1072992372
	.literal .LC4, 1072992380
	.literal .LC5, 1072992384
	.align	4
	.global	phy_rmii_configure_data_interface_pins
	.type	phy_rmii_configure_data_interface_pins, @function
phy_rmii_configure_data_interface_pins:
.LFB5:
	.file 1 "C:/esp/esp-idf/components/ethernet/eth_phy/phy_common.c"
	.loc 1 23 0
	entry	sp, 32
.LCFI0:
	.loc 1 25 0
	l32r	a11, .LC0
	memw
	l32i.n	a10, a11, 0
	l32r	a9, .LC1
	and	a10, a10, a9
	l32r	a8, .LC2
	or	a10, a10, a8
	memw
	s32i.n	a10, a11, 0
	.loc 1 28 0
	l32r	a11, .LC3
	memw
	l32i.n	a10, a11, 0
	and	a10, a10, a9
	or	a10, a10, a8
	memw
	s32i.n	a10, a11, 0
	.loc 1 30 0
	l32r	a11, .LC4
	memw
	l32i.n	a10, a11, 0
	and	a10, a10, a9
	or	a10, a10, a8
	memw
	s32i.n	a10, a11, 0
	.loc 1 32 0
	l32r	a10, .LC5
	memw
	l32i.n	a11, a10, 0
	and	a9, a11, a9
	or	a8, a9, a8
	memw
	s32i.n	a8, a10, 0
	.loc 1 34 0
	movi.n	a11, 1
	movi.n	a10, 0x19
	call8	gpio_set_direction
.LVL0:
	.loc 1 36 0
	movi.n	a11, 1
	movi.n	a10, 0x1a
	call8	gpio_set_direction
.LVL1:
	.loc 1 38 0
	movi.n	a11, 1
	movi.n	a10, 0
	call8	gpio_set_direction
.LVL2:
	retw.n
.LFE5:
	.size	phy_rmii_configure_data_interface_pins, .-phy_rmii_configure_data_interface_pins
	.section	.text.phy_rmii_smi_configure_pins,"ax",@progbits
	.align	4
	.global	phy_rmii_smi_configure_pins
	.type	phy_rmii_smi_configure_pins, @function
phy_rmii_smi_configure_pins:
.LFB6:
	.loc 1 42 0
.LVL3:
	entry	sp, 32
.LCFI1:
	extui	a3, a3, 0, 8
	.loc 1 43 0
	movi.n	a13, 0
	mov.n	a12, a13
	movi	a11, 0xc8
	extui	a10, a2, 0, 8
	call8	gpio_matrix_out
.LVL4:
	.loc 1 44 0
	movi.n	a13, 0
	mov.n	a12, a13
	movi	a11, 0xc9
	mov.n	a10, a3
	call8	gpio_matrix_out
.LVL5:
	.loc 1 45 0
	movi.n	a12, 0
	movi	a11, 0xc9
	mov.n	a10, a3
	call8	gpio_matrix_in
.LVL6:
	retw.n
.LFE6:
	.size	phy_rmii_smi_configure_pins, .-phy_rmii_smi_configure_pins
	.section	.text.phy_mii_enable_flow_ctrl,"ax",@progbits
	.literal_position
	.literal .LC6, 3072
	.align	4
	.global	phy_mii_enable_flow_ctrl
	.type	phy_mii_enable_flow_ctrl, @function
phy_mii_enable_flow_ctrl:
.LFB7:
	.loc 1 49 0
	entry	sp, 32
.LCFI2:
	.loc 1 50 0
	movi.n	a10, 4
	call8	esp_eth_smi_read
.LVL7:
	.loc 1 52 0
	l32r	a11, .LC6
	or	a11, a10, a11
	extui	a11, a11, 0, 16
	movi.n	a10, 4
.LVL8:
	call8	esp_eth_smi_write
.LVL9:
	retw.n
.LFE7:
	.size	phy_mii_enable_flow_ctrl, .-phy_mii_enable_flow_ctrl
	.section	.text.phy_mii_check_link_status,"ax",@progbits
	.align	4
	.global	phy_mii_check_link_status
	.type	phy_mii_check_link_status, @function
phy_mii_check_link_status:
.LFB8:
	.loc 1 56 0
	entry	sp, 32
.LCFI3:
	.loc 1 57 0
	movi.n	a10, 1
	call8	esp_eth_smi_read
.LVL10:
	movi.n	a8, 4
	and	a10, a10, a8
	extui	a10, a10, 0, 16
	beqz.n	a10, .L6
	.loc 1 59 0
	movi.n	a2, 1
	retw.n
.L6:
	.loc 1 62 0
	movi.n	a2, 0
	.loc 1 64 0
	retw.n
.LFE8:
	.size	phy_mii_check_link_status, .-phy_mii_check_link_status
	.section	.text.phy_mii_get_partner_pause_enable,"ax",@progbits
	.align	4
	.global	phy_mii_get_partner_pause_enable
	.type	phy_mii_get_partner_pause_enable, @function
phy_mii_get_partner_pause_enable:
.LFB9:
	.loc 1 67 0
	entry	sp, 32
.LCFI4:
	.loc 1 68 0
	movi.n	a10, 5
	call8	esp_eth_smi_read
.LVL11:
	movi	a8, 0x400
	and	a10, a10, a8
	extui	a10, a10, 0, 16
	beqz.n	a10, .L9
	.loc 1 70 0
	movi.n	a2, 1
	retw.n
.L9:
	.loc 1 73 0
	movi.n	a2, 0
	.loc 1 75 0
	retw.n
.LFE9:
	.size	phy_mii_get_partner_pause_enable, .-phy_mii_get_partner_pause_enable
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
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI0-.LFB5
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI1-.LFB6
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI2-.LFB7
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI3-.LFB8
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI4-.LFB9
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
	.text
.Letext0:
	.file 2 "C:/esp/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "C:/esp/esp-idf/components/newlib/include/stdint.h"
	.file 4 "C:/esp/esp-idf/components/driver/include/driver/gpio.h"
	.file 5 "C:/esp/esp-idf/components/log/include/esp_log.h"
	.file 6 "C:/esp/esp-idf/components/esp32/include/rom/gpio.h"
	.file 7 "C:/esp/esp-idf/components/ethernet/include/esp_eth.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2fd
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF41
	.byte	0xc
	.4byte	.LASF42
	.4byte	.LASF43
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x2
	.byte	0x12
	.4byte	0x37
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x1a
	.4byte	0x5e
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x3
	.byte	0x15
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x3
	.byte	0x2d
	.4byte	0x53
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0x5
	.byte	0x4
	.4byte	0xab
	.uleb128 0x6
	.4byte	0x9e
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF15
	.uleb128 0x7
	.byte	0x4
	.4byte	0x5e
	.byte	0x4
	.byte	0xba
	.4byte	0xe2
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x6
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x7
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x5e
	.byte	0x5
	.byte	0x1f
	.4byte	0x113
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x3
	.uleb128 0x8
	.4byte	.LASF25
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF26
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x5
	.byte	0x26
	.4byte	0xe2
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0x1
	.byte	0x16
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x178
	.uleb128 0xa
	.4byte	.LVL0
	.4byte	0x2b9
	.4byte	0x14b
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x49
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0xa
	.4byte	.LVL1
	.4byte	0x2b9
	.4byte	0x163
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x4a
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0xc
	.4byte	.LVL2
	.4byte	0x2b9
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0x1
	.byte	0x29
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x20e
	.uleb128 0xd
	.4byte	.LASF30
	.byte	0x1
	.byte	0x29
	.4byte	0x73
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xd
	.4byte	.LASF31
	.byte	0x1
	.byte	0x29
	.4byte	0x73
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xa
	.4byte	.LVL4
	.4byte	0x2c5
	.4byte	0x1ce
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xc8
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0xa
	.4byte	.LVL5
	.4byte	0x2c5
	.4byte	0x1f2
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xc9
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0xc
	.4byte	.LVL6
	.4byte	0x2d0
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xc9
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	.LASF32
	.byte	0x1
	.byte	0x30
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x255
	.uleb128 0xe
	.4byte	.LASF35
	.byte	0x1
	.byte	0x32
	.4byte	0x7e
	.4byte	.LLST0
	.uleb128 0xa
	.4byte	.LVL7
	.4byte	0x2db
	.4byte	0x245
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0xc
	.4byte	.LVL9
	.4byte	0x2e6
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF33
	.byte	0x1
	.byte	0x37
	.4byte	0xb0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x27e
	.uleb128 0xc
	.4byte	.LVL10
	.4byte	0x2db
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF34
	.byte	0x1
	.byte	0x42
	.4byte	0xb0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2a7
	.uleb128 0xc
	.4byte	.LVL11
	.4byte	0x2db
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"TAG"
	.byte	0x1
	.byte	0x14
	.4byte	0xa5
	.uleb128 0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+753
	.sleb128 0
	.uleb128 0x11
	.4byte	.LASF36
	.4byte	.LASF36
	.byte	0x4
	.2byte	0x144
	.uleb128 0x12
	.4byte	.LASF37
	.4byte	.LASF37
	.byte	0x6
	.byte	0xea
	.uleb128 0x12
	.4byte	.LASF38
	.4byte	.LASF38
	.byte	0x6
	.byte	0xda
	.uleb128 0x12
	.4byte	.LASF39
	.4byte	.LASF39
	.byte	0x7
	.byte	0xcc
	.uleb128 0x12
	.4byte	.LASF40
	.4byte	.LASF40
	.byte	0x7
	.byte	0xc1
	.uleb128 0x13
	.uleb128 0xd
	.byte	0x9e
	.uleb128 0xb
	.byte	0x70
	.byte	0x68
	.byte	0x79
	.byte	0x5f
	.byte	0x63
	.byte	0x6f
	.byte	0x6d
	.byte	0x6d
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0xb
	.byte	0x7a
	.sleb128 0
	.byte	0xa
	.2byte	0xc00
	.byte	0x21
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
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
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF27:
	.string	"esp_log_level_t"
.LASF4:
	.string	"__uint8_t"
.LASF19:
	.string	"GPIO_MODE_INPUT_OUTPUT_OD"
.LASF22:
	.string	"ESP_LOG_ERROR"
.LASF23:
	.string	"ESP_LOG_WARN"
.LASF17:
	.string	"GPIO_MODE_OUTPUT"
.LASF38:
	.string	"gpio_matrix_in"
.LASF30:
	.string	"mdc_gpio"
.LASF34:
	.string	"phy_mii_get_partner_pause_enable"
.LASF42:
	.string	"C:/esp/esp-idf/components/ethernet/eth_phy/phy_common.c"
.LASF24:
	.string	"ESP_LOG_INFO"
.LASF35:
	.string	"data"
.LASF36:
	.string	"gpio_set_direction"
.LASF1:
	.string	"unsigned char"
.LASF13:
	.string	"long unsigned int"
.LASF3:
	.string	"short unsigned int"
.LASF37:
	.string	"gpio_matrix_out"
.LASF18:
	.string	"GPIO_MODE_OUTPUT_OD"
.LASF29:
	.string	"phy_rmii_smi_configure_pins"
.LASF39:
	.string	"esp_eth_smi_read"
.LASF5:
	.string	"__uint32_t"
.LASF31:
	.string	"mdio_gpio"
.LASF6:
	.string	"unsigned int"
.LASF25:
	.string	"ESP_LOG_DEBUG"
.LASF8:
	.string	"long long unsigned int"
.LASF9:
	.string	"uint8_t"
.LASF33:
	.string	"phy_mii_check_link_status"
.LASF41:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF28:
	.string	"phy_rmii_configure_data_interface_pins"
.LASF12:
	.string	"sizetype"
.LASF7:
	.string	"long long int"
.LASF14:
	.string	"char"
.LASF16:
	.string	"GPIO_MODE_INPUT"
.LASF43:
	.string	"C:\\\\esp\\\\esp32-ArkPOS2\\\\ArkPOS2-esp\\\\build\\\\ethernet"
.LASF2:
	.string	"short int"
.LASF21:
	.string	"ESP_LOG_NONE"
.LASF10:
	.string	"uint32_t"
.LASF11:
	.string	"long int"
.LASF32:
	.string	"phy_mii_enable_flow_ctrl"
.LASF20:
	.string	"GPIO_MODE_INPUT_OUTPUT"
.LASF0:
	.string	"signed char"
.LASF15:
	.string	"_Bool"
.LASF40:
	.string	"esp_eth_smi_write"
.LASF26:
	.string	"ESP_LOG_VERBOSE"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-73-ge28a011) 5.2.0"
