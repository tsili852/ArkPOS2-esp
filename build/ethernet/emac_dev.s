	.file	"emac_dev.c"
	.text
.Ltext0:
	.section	.text.emac_enable_flowctrl,"ax",@progbits
	.literal_position
	.literal .LC0, 1073127448
	.literal .LC1, 373817344
	.align	4
	.global	emac_enable_flowctrl
	.type	emac_enable_flowctrl, @function
emac_enable_flowctrl:
.LFB17:
	.file 1 "C:/esp/esp-idf/components/ethernet/emac_dev.c"
	.loc 1 38 0
	entry	sp, 32
.LCFI0:
	.loc 1 39 0
	l32r	a8, .LC0
	memw
	l32i.n	a10, a8, 0
	movi.n	a9, 2
	or	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 40 0
	memw
	l32i.n	a10, a8, 0
	movi.n	a9, 4
	or	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 41 0
	memw
	l32i.n	a10, a8, 0
	movi	a9, -0x81
	and	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 42 0
	memw
	l32i.n	a9, a8, 0
	extui	a10, a9, 0, 16
	l32r	a9, .LC1
	or	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 43 0
	memw
	l32i.n	a10, a8, 0
	movi	a9, -0x31
	and	a10, a10, a9
	movi.n	a9, 0x10
	or	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	retw.n
.LFE17:
	.size	emac_enable_flowctrl, .-emac_enable_flowctrl
	.section	.text.emac_disable_flowctrl,"ax",@progbits
	.literal_position
	.literal .LC2, 1073127448
	.align	4
	.global	emac_disable_flowctrl
	.type	emac_disable_flowctrl, @function
emac_disable_flowctrl:
.LFB18:
	.loc 1 47 0
	entry	sp, 32
.LCFI1:
	.loc 1 48 0
	l32r	a8, .LC2
	memw
	l32i.n	a10, a8, 0
	movi.n	a9, -3
	and	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 49 0
	memw
	l32i.n	a10, a8, 0
	movi.n	a9, -5
	and	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 50 0
	memw
	l32i.n	a10, a8, 0
	movi	a9, -0x81
	and	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 51 0
	memw
	l32i.n	a9, a8, 0
	extui	a9, a9, 0, 16
	memw
	s32i.n	a9, a8, 0
	.loc 1 52 0
	memw
	l32i.n	a10, a8, 0
	movi	a9, -0x31
	and	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	retw.n
.LFE18:
	.size	emac_disable_flowctrl, .-emac_disable_flowctrl
	.section	.text.emac_enable_dma_tx,"ax",@progbits
	.literal_position
	.literal .LC3, 1073123352
	.literal .LC4, 8192
	.align	4
	.global	emac_enable_dma_tx
	.type	emac_enable_dma_tx, @function
emac_enable_dma_tx:
.LFB19:
	.loc 1 56 0
	entry	sp, 32
.LCFI2:
	.loc 1 57 0
	l32r	a9, .LC3
	memw
	l32i.n	a10, a9, 0
	l32r	a8, .LC4
	or	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
	retw.n
.LFE19:
	.size	emac_enable_dma_tx, .-emac_enable_dma_tx
	.section	.text.emac_enable_dma_rx,"ax",@progbits
	.literal_position
	.literal .LC5, 1073123352
	.align	4
	.global	emac_enable_dma_rx
	.type	emac_enable_dma_rx, @function
emac_enable_dma_rx:
.LFB20:
	.loc 1 61 0
	entry	sp, 32
.LCFI3:
	.loc 1 62 0
	l32r	a9, .LC5
	memw
	l32i.n	a10, a9, 0
	movi.n	a8, 2
	or	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
	retw.n
.LFE20:
	.size	emac_enable_dma_rx, .-emac_enable_dma_rx
	.section	.text.emac_disable_dma_tx,"ax",@progbits
	.literal_position
	.literal .LC6, 1073123352
	.align	4
	.global	emac_disable_dma_tx
	.type	emac_disable_dma_tx, @function
emac_disable_dma_tx:
.LFB21:
	.loc 1 66 0
	entry	sp, 32
.LCFI4:
	.loc 1 67 0
	l32r	a9, .LC6
	memw
	l32i.n	a10, a9, 0
	movi.n	a8, -5
	and	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
	retw.n
.LFE21:
	.size	emac_disable_dma_tx, .-emac_disable_dma_tx
	.section	.text.emac_disable_dma_rx,"ax",@progbits
	.literal_position
	.literal .LC7, 1073123352
	.align	4
	.global	emac_disable_dma_rx
	.type	emac_disable_dma_rx, @function
emac_disable_dma_rx:
.LFB22:
	.loc 1 71 0
	entry	sp, 32
.LCFI5:
	.loc 1 72 0
	l32r	a9, .LC7
	memw
	l32i.n	a10, a9, 0
	movi.n	a8, -3
	and	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
	retw.n
.LFE22:
	.size	emac_disable_dma_rx, .-emac_disable_dma_rx
	.section	.text.emac_read_mac_version,"ax",@progbits
	.literal_position
	.literal .LC8, 1073127456
	.align	4
	.global	emac_read_mac_version
	.type	emac_read_mac_version, @function
emac_read_mac_version:
.LFB23:
	.loc 1 77 0
	entry	sp, 32
.LCFI6:
.LVL0:
	.loc 1 79 0
	l32r	a2, .LC8
	memw
	l32i.n	a2, a2, 0
.LVL1:
	.loc 1 81 0
	retw.n
.LFE23:
	.size	emac_read_mac_version, .-emac_read_mac_version
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC10:
	.string	"emac"
	.align	4
.LC12:
	.string	"\033[0;32mI (%d) %s: emac resetting ....\033[0m\n"
	.align	4
.LC14:
	.string	"\033[0;32mI (%d) %s: emac reset done\033[0m\n"
	.section	.text.emac_reset,"ax",@progbits
	.literal_position
	.literal .LC9, 1073123328
	.literal .LC11, .LC10
	.literal .LC13, .LC12
	.literal .LC15, .LC14
	.align	4
	.global	emac_reset
	.type	emac_reset, @function
emac_reset:
.LFB24:
	.loc 1 84 0
	entry	sp, 32
.LCFI7:
	.loc 1 85 0
	l32r	a9, .LC9
	memw
	l32i.n	a10, a9, 0
	movi.n	a8, 1
	or	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
	.loc 1 87 0
	j	.L9
.L10:
	.loc 1 89 0 discriminator 1
	call8	esp_log_timestamp
.LVL2:
	l32r	a11, .LC11
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC13
	movi.n	a10, 3
	call8	esp_log_write
.LVL3:
.L9:
	.loc 1 87 0
	l32r	a8, .LC9
	memw
	l32i.n	a8, a8, 0
	bbsi	a8, 0, .L10
	.loc 1 92 0 discriminator 1
	call8	esp_log_timestamp
.LVL4:
	l32r	a11, .LC11
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC15
	movi.n	a10, 3
	call8	esp_log_write
.LVL5:
	retw.n
.LFE24:
	.size	emac_reset, .-emac_reset
	.section	.text.emac_enable_clk,"ax",@progbits
	.literal_position
	.literal .LC16, 1072693452
	.literal .LC17, 16384
	.literal .LC18, -16385
	.align	4
	.global	emac_enable_clk
	.type	emac_enable_clk, @function
emac_enable_clk:
.LFB25:
	.loc 1 96 0
.LVL6:
	entry	sp, 32
.LCFI8:
	extui	a2, a2, 0, 8
	.loc 1 97 0
	beqz.n	a2, .L12
.LVL7:
.LBB6:
.LBB7:
	.file 2 "C:/esp/esp-idf/components/soc/esp32/include/soc/dport_access.h"
	.loc 2 48 0
	l32r	a8, .LC16
	memw
	l32i.n	a9, a8, 0
.LVL8:
.LBE7:
.LBE6:
	.loc 1 98 0
	l32r	a2, .LC17
.LVL9:
	or	a2, a9, a2
	memw
	s32i.n	a2, a8, 0
	retw.n
.LVL10:
.L12:
.LBB8:
.LBB9:
	.loc 2 48 0
	l32r	a2, .LC16
	memw
	l32i.n	a9, a2, 0
.LVL11:
.LBE9:
.LBE8:
	.loc 1 100 0
	l32r	a8, .LC18
	and	a8, a9, a8
	memw
	s32i.n	a8, a2, 0
	retw.n
.LFE25:
	.size	emac_enable_clk, .-emac_enable_clk
	.section	.text.emac_set_clk_mii,"ax",@progbits
	.literal_position
	.literal .LC19, 1073125384
	.literal .LC20, 1073125380
	.literal .LC21, 16777216
	.align	4
	.global	emac_set_clk_mii
	.type	emac_set_clk_mii, @function
emac_set_clk_mii:
.LFB26:
	.loc 1 105 0
	entry	sp, 32
.LCFI9:
	.loc 1 107 0
	l32r	a8, .LC19
	memw
	l32i.n	a10, a8, 0
	movi.n	a9, 1
	or	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 109 0
	l32r	a10, .LC20
	memw
	l32i.n	a11, a10, 0
	l32r	a9, .LC21
	or	a9, a11, a9
	memw
	s32i.n	a9, a10, 0
	.loc 1 112 0
	memw
	l32i.n	a10, a8, 0
	movi.n	a9, 0x10
	or	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 113 0
	memw
	l32i.n	a10, a8, 0
	movi.n	a9, 8
	or	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	retw.n
.LFE26:
	.size	emac_set_clk_mii, .-emac_set_clk_mii
	.section	.text.emac_dma_init,"ax",@progbits
	.literal_position
	.literal .LC22, 1073123352
	.literal .LC23, 1073123328
	.literal .LC24, -16129
	.align	4
	.global	emac_dma_init
	.type	emac_dma_init, @function
emac_dma_init:
.LFB27:
	.loc 1 117 0
	entry	sp, 32
.LCFI10:
	.loc 1 118 0
	l32r	a8, .LC22
	memw
	l32i.n	a10, a8, 0
	movi.n	a9, 0x40
	or	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 119 0
	memw
	l32i.n	a10, a8, 0
	movi.n	a9, 4
	or	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 120 0
	l32r	a11, .LC23
	memw
	l32i.n	a10, a11, 0
	l32r	a9, .LC24
	and	a10, a10, a9
	movi	a9, 0x400
	or	a9, a10, a9
	memw
	s32i.n	a9, a11, 0
	.loc 1 121 0
	memw
	l32i.n	a9, a8, 0
	or	a9, a9, a8
	memw
	s32i.n	a9, a8, 0
	retw.n
.LFE27:
	.size	emac_dma_init, .-emac_dma_init
	.section	.text.emac_mac_enable_txrx,"ax",@progbits
	.literal_position
	.literal .LC25, 1073127424
	.align	4
	.global	emac_mac_enable_txrx
	.type	emac_mac_enable_txrx, @function
emac_mac_enable_txrx:
.LFB28:
	.loc 1 125 0
	entry	sp, 32
.LCFI11:
	.loc 1 126 0
	l32r	a8, .LC25
	memw
	l32i.n	a10, a8, 0
	movi.n	a9, 4
	or	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 127 0
	memw
	l32i.n	a10, a8, 0
	movi.n	a9, 8
	or	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	retw.n
.LFE28:
	.size	emac_mac_enable_txrx, .-emac_mac_enable_txrx
	.section	.text.emac_mac_init,"ax",@progbits
	.literal_position
	.literal .LC26, 1073127424
	.literal .LC27, 2048
	.literal .LC28, 32768
	.literal .LC29, -16385
	.literal .LC30, 1073127428
	.align	4
	.global	emac_mac_init
	.type	emac_mac_init, @function
emac_mac_init:
.LFB29:
	.loc 1 131 0
	entry	sp, 32
.LCFI12:
	.loc 1 132 0
	l32r	a8, .LC26
	memw
	l32i.n	a10, a8, 0
	l32r	a9, .LC27
	or	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 133 0
	memw
	l32i.n	a10, a8, 0
	l32r	a9, .LC28
	or	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 134 0
	memw
	l32i.n	a10, a8, 0
	l32r	a9, .LC29
	and	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 135 0
	l32r	a9, .LC30
	memw
	l32i.n	a10, a9, 0
	movi.n	a8, 1
	or	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
	retw.n
.LFE29:
	.size	emac_mac_init, .-emac_mac_init
	.section	.text.emac_set_clk_rmii,"ax",@progbits
	.literal_position
	.literal .LC31, 1073125384
	.literal .LC32, 1073125380
	.literal .LC33, 16777216
	.align	4
	.global	emac_set_clk_rmii
	.type	emac_set_clk_rmii, @function
emac_set_clk_rmii:
.LFB30:
	.loc 1 139 0
	entry	sp, 32
.LCFI13:
	.loc 1 141 0
	l32r	a9, .LC31
	memw
	l32i.n	a10, a9, 0
	movi.n	a8, 1
	or	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
	.loc 1 143 0
	l32r	a9, .LC32
	memw
	l32i.n	a10, a9, 0
	l32r	a8, .LC33
	or	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
	retw.n
.LFE30:
	.size	emac_set_clk_rmii, .-emac_set_clk_rmii
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
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI0-.LFB17
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI1-.LFB18
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI2-.LFB19
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI3-.LFB20
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI4-.LFB21
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI5-.LFB22
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI6-.LFB23
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI7-.LFB24
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI8-.LFB25
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI9-.LFB26
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI10-.LFB27
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI11-.LFB28
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI12-.LFB29
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI13-.LFB30
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE26:
	.text
.Letext0:
	.file 3 "C:/esp/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "C:/esp/esp-idf/components/newlib/include/stdint.h"
	.file 5 "C:/esp/esp-idf/components/log/include/esp_log.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x311
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF37
	.byte	0xc
	.4byte	.LASF38
	.4byte	.LASF39
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
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x3
	.byte	0x1a
	.4byte	0x53
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x5
	.byte	0x4
	.4byte	0x8a
	.uleb128 0x6
	.4byte	0x7d
	.uleb128 0x4
	.4byte	.LASF12
	.byte	0x4
	.byte	0x2d
	.4byte	0x48
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF13
	.uleb128 0x7
	.byte	0x4
	.4byte	0x53
	.byte	0x5
	.byte	0x1f
	.4byte	0xd2
	.uleb128 0x8
	.4byte	.LASF14
	.byte	0
	.uleb128 0x8
	.4byte	.LASF15
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x3
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x5
	.byte	0
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x5
	.byte	0x26
	.4byte	0xa1
	.uleb128 0x9
	.4byte	.LASF40
	.byte	0x2
	.byte	0x2b
	.4byte	0x8f
	.byte	0x3
	.4byte	0x104
	.uleb128 0xa
	.string	"reg"
	.byte	0x2
	.byte	0x2b
	.4byte	0x8f
	.uleb128 0xb
	.string	"val"
	.byte	0x2
	.byte	0x2d
	.4byte	0x8f
	.byte	0
	.uleb128 0xc
	.4byte	.LASF21
	.byte	0x1
	.byte	0x25
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xc
	.4byte	.LASF22
	.byte	0x1
	.byte	0x2e
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xc
	.4byte	.LASF23
	.byte	0x1
	.byte	0x37
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xc
	.4byte	.LASF24
	.byte	0x1
	.byte	0x3c
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x1
	.byte	0x41
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xc
	.4byte	.LASF26
	.byte	0x1
	.byte	0x46
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xd
	.4byte	.LASF41
	.byte	0x1
	.byte	0x4c
	.4byte	0x8f
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x193
	.uleb128 0xe
	.4byte	.LASF34
	.byte	0x1
	.byte	0x4e
	.4byte	0x8f
	.4byte	.LLST0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF27
	.byte	0x1
	.byte	0x53
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x213
	.uleb128 0x10
	.4byte	.LVL2
	.4byte	0x2fe
	.uleb128 0x11
	.4byte	.LVL3
	.4byte	0x309
	.4byte	0x1df
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC12
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0
	.uleb128 0x10
	.4byte	.LVL4
	.4byte	0x2fe
	.uleb128 0x13
	.4byte	.LVL5
	.4byte	0x309
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF28
	.byte	0x1
	.byte	0x5f
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x292
	.uleb128 0x14
	.4byte	.LASF42
	.byte	0x1
	.byte	0x5f
	.4byte	0x9a
	.4byte	.LLST1
	.uleb128 0x15
	.4byte	0xdd
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.byte	0x1
	.byte	0x62
	.4byte	0x267
	.uleb128 0x16
	.4byte	0xed
	.4byte	.LLST2
	.uleb128 0x17
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.uleb128 0x18
	.4byte	0xf8
	.4byte	.LLST3
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	0xdd
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.byte	0x1
	.byte	0x64
	.uleb128 0x1a
	.4byte	0xed
	.4byte	0x3ff000cc
	.uleb128 0x17
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.uleb128 0x1b
	.4byte	0xf8
	.uleb128 0x1
	.byte	0x59
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x1
	.byte	0x68
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0x1
	.byte	0x74
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x1
	.byte	0x7c
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xc
	.4byte	.LASF32
	.byte	0x1
	.byte	0x82
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xc
	.4byte	.LASF33
	.byte	0x1
	.byte	0x8a
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1c
	.string	"TAG"
	.byte	0x1
	.byte	0x23
	.4byte	0x2f9
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC10
	.byte	0x9f
	.uleb128 0x6
	.4byte	0x84
	.uleb128 0x1d
	.4byte	.LASF35
	.4byte	.LASF35
	.byte	0x5
	.byte	0x4c
	.uleb128 0x1d
	.4byte	.LASF36
	.4byte	.LASF36
	.byte	0x5
	.byte	0x60
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
	.uleb128 0xa
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
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
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
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.4byte	.LVL1
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL1
	.4byte	.LFE23
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL6
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL9
	.4byte	.LFE25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL7
	.4byte	.LVL10
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff000cc
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x84
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF20:
	.string	"esp_log_level_t"
.LASF29:
	.string	"emac_set_clk_mii"
.LASF16:
	.string	"ESP_LOG_WARN"
.LASF41:
	.string	"emac_read_mac_version"
.LASF22:
	.string	"emac_disable_flowctrl"
.LASF3:
	.string	"short unsigned int"
.LASF42:
	.string	"enable"
.LASF35:
	.string	"esp_log_timestamp"
.LASF17:
	.string	"ESP_LOG_INFO"
.LASF34:
	.string	"data"
.LASF1:
	.string	"unsigned char"
.LASF33:
	.string	"emac_set_clk_rmii"
.LASF9:
	.string	"long unsigned int"
.LASF31:
	.string	"emac_mac_enable_txrx"
.LASF27:
	.string	"emac_reset"
.LASF11:
	.string	"__uint32_t"
.LASF15:
	.string	"ESP_LOG_ERROR"
.LASF4:
	.string	"unsigned int"
.LASF38:
	.string	"C:/esp/esp-idf/components/ethernet/emac_dev.c"
.LASF18:
	.string	"ESP_LOG_DEBUG"
.LASF6:
	.string	"long long unsigned int"
.LASF28:
	.string	"emac_enable_clk"
.LASF37:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF26:
	.string	"emac_disable_dma_rx"
.LASF8:
	.string	"sizetype"
.LASF5:
	.string	"long long int"
.LASF32:
	.string	"emac_mac_init"
.LASF10:
	.string	"char"
.LASF25:
	.string	"emac_disable_dma_tx"
.LASF39:
	.string	"C:\\\\esp\\\\esp32-ArkPOS2\\\\ArkPOS2-esp\\\\build\\\\ethernet"
.LASF2:
	.string	"short int"
.LASF14:
	.string	"ESP_LOG_NONE"
.LASF21:
	.string	"emac_enable_flowctrl"
.LASF30:
	.string	"emac_dma_init"
.LASF24:
	.string	"emac_enable_dma_rx"
.LASF36:
	.string	"esp_log_write"
.LASF12:
	.string	"uint32_t"
.LASF7:
	.string	"long int"
.LASF40:
	.string	"DPORT_REG_READ"
.LASF23:
	.string	"emac_enable_dma_tx"
.LASF0:
	.string	"signed char"
.LASF13:
	.string	"_Bool"
.LASF19:
	.string	"ESP_LOG_VERBOSE"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-73-ge28a011) 5.2.0"
