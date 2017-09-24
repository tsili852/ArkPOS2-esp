	.file	"dh_groups.c"
	.text
.Ltext0:
	.section	.text.dh_groups_get,"ax",@progbits
	.literal_position
	.literal .LC0, dh_groups
	.align	4
	.global	dh_groups_get
	.type	dh_groups_get, @function
dh_groups_get:
.LFB27:
	.file 1 "C:/esp/esp-idf/components/wpa_supplicant/src/crypto/dh_groups.c"
	.loc 1 543 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LVL1:
	.loc 1 546 0
	movi.n	a8, 0
	j	.L2
.LVL2:
.L5:
	.loc 1 547 0
	addx4	a10, a8, a8
	slli	a9, a10, 2
	l32r	a10, .LC0
	add.n	a9, a10, a9
	l32i.n	a9, a9, 0
	bne	a9, a2, .L3
	.loc 1 548 0
	addx4	a8, a8, a8
.LVL3:
	slli	a9, a8, 2
	add.n	a2, a9, a10
.LVL4:
	retw.n
.LVL5:
.L3:
	.loc 1 546 0 discriminator 2
	addi.n	a8, a8, 1
.LVL6:
.L2:
	.loc 1 546 0 is_stmt 0 discriminator 1
	beqz.n	a8, .L5
	.loc 1 550 0 is_stmt 1
	movi.n	a2, 0
.LVL7:
	.loc 1 551 0
	retw.n
.LFE27:
	.size	dh_groups_get, .-dh_groups_get
	.section	.text.dh_init,"ax",@progbits
	.literal_position
	.literal .LC1, wps_crypto_funcs
	.align	4
	.global	dh_init
	.type	dh_init, @function
dh_init:
.LFB28:
	.loc 1 561 0
.LVL8:
	entry	sp, 64
.LCFI1:
	mov.n	a4, a2
	.loc 1 565 0
	beqz.n	a2, .L16
	.loc 1 568 0
	l32i.n	a10, a3, 0
	call8	wpabuf_free
.LVL9:
	.loc 1 569 0
	l32i.n	a10, a2, 16
	call8	wpabuf_alloc
.LVL10:
	s32i.n	a10, a3, 0
	.loc 1 570 0
	beqz.n	a10, .L7
	.loc 1 573 0
	l32i.n	a11, a2, 16
	call8	wpabuf_put
.LVL11:
	l32i.n	a11, a2, 16
	call8	os_get_random
.LVL12:
	beqz.n	a10, .L8
	.loc 1 575 0
	l32i.n	a10, a3, 0
	call8	wpabuf_free
.LVL13:
	.loc 1 576 0
	movi.n	a10, 0
	s32i.n	a10, a3, 0
	.loc 1 577 0
	j	.L7
.L8:
	.loc 1 580 0
	l32i.n	a5, a3, 0
.LVL14:
.LBB26:
.LBB27:
	.file 2 "C:/esp/esp-idf/components/wpa_supplicant/include/wpa/wpabuf.h"
	.loc 2 81 0
	l32i.n	a2, a5, 8
.LVL15:
	bnez.n	a2, .L17
	.loc 2 83 0
	addi.n	a10, a5, 12
	j	.L9
.L17:
	.loc 2 82 0
	mov.n	a10, a2
.L9:
.LBE27:
.LBE26:
	.loc 1 580 0
	l32i.n	a12, a4, 16
	l32i.n	a11, a4, 12
	call8	memcmp
.LVL16:
	blti	a10, 1, .L10
.LVL17:
.LBB28:
.LBB29:
.LBB30:
	.loc 2 98 0
	bnez.n	a2, .L11
	.loc 2 100 0
	addi.n	a2, a5, 12
.L11:
.LBE30:
.LBE29:
.LBE28:
	.loc 1 582 0
	movi.n	a5, 0
.LVL18:
	s8i	a5, a2, 0
.L10:
	.loc 1 586 0
	l32i.n	a10, a4, 16
	s32i.n	a10, sp, 16
	.loc 1 587 0
	call8	wpabuf_alloc
.LVL19:
	mov.n	a2, a10
.LVL20:
	.loc 1 588 0
	beqz.n	a10, .L19
	.loc 1 591 0
	l32r	a5, .LC1
	l32i.n	a8, a5, 8
	beqz.n	a8, .L12
	.loc 1 592 0
	l32i.n	a10, a4, 4
	l32i.n	a11, a4, 8
	.loc 1 593 0
	l32i.n	a3, a3, 0
.LVL21:
.LBB31:
.LBB32:
	.loc 2 81 0
	l32i.n	a12, a3, 8
	bnez.n	a12, .L13
	.loc 2 83 0
	addi.n	a12, a3, 12
.L13:
.LVL22:
.LBE32:
.LBE31:
.LBB33:
.LBB34:
	.loc 2 61 0
	l32i.n	a13, a3, 4
.LBE34:
.LBE33:
	.loc 1 594 0
	l32i.n	a14, a4, 12
	l32i.n	a15, a4, 16
.LVL23:
.LBB35:
.LBB36:
	.loc 2 98 0
	l32i.n	a3, a2, 8
.LVL24:
	bnez.n	a3, .L14
	.loc 2 100 0
	addi.n	a3, a2, 12
.L14:
.LBE36:
.LBE35:
	.loc 1 592 0
	addi	a4, sp, 16
.LVL25:
	s32i.n	a4, sp, 4
.LVL26:
	s32i.n	a3, sp, 0
	callx8	a8
.LVL27:
	beqz.n	a10, .L15
	.loc 1 596 0
	mov.n	a10, a2
	call8	wpabuf_free
.LVL28:
	.loc 1 598 0
	movi.n	a10, 0
	j	.L7
.LVL29:
.L12:
	.loc 1 601 0
	call8	wpabuf_free
.LVL30:
	.loc 1 603 0
	movi.n	a10, 0
	j	.L7
.LVL31:
.L15:
	.loc 1 605 0
	l32i.n	a11, sp, 16
	mov.n	a10, a2
	call8	wpabuf_put
.LVL32:
	.loc 1 608 0
	mov.n	a10, a2
	j	.L7
.LVL33:
.L16:
	.loc 1 566 0
	movi.n	a10, 0
	j	.L7
.LVL34:
.L19:
	.loc 1 589 0
	movi.n	a10, 0
.LVL35:
.L7:
	.loc 1 609 0
	mov.n	a2, a10
	retw.n
.LFE28:
	.size	dh_init, .-dh_init
	.section	.text.dh_derive_shared,"ax",@progbits
	.literal_position
	.literal .LC2, wps_crypto_funcs
	.align	4
	.global	dh_derive_shared
	.type	dh_derive_shared, @function
dh_derive_shared:
.LFB29:
	.loc 1 623 0
.LVL36:
	entry	sp, 64
.LCFI2:
	.loc 1 627 0
	movi.n	a5, 1
	movi.n	a9, 0
	mov.n	a8, a9
	moveqz	a8, a5, a4
	.loc 1 627 0
	movnez	a5, a9, a2
	or	a5, a5, a8
	.loc 1 627 0
	bne	a5, a9, .L29
	.loc 1 627 0 discriminator 1
	beq	a3, a9, .L30
	.loc 1 630 0
	l32i.n	a10, a4, 16
	s32i.n	a10, sp, 16
	.loc 1 631 0
	call8	wpabuf_alloc
.LVL37:
	mov.n	a5, a10
.LVL38:
	.loc 1 632 0
	beqz.n	a10, .L31
	.loc 1 635 0
	l32r	a8, .LC2
	l32i.n	a8, a8, 8
	beqz.n	a8, .L24
.LVL39:
.LBB37:
.LBB38:
	.loc 2 81 0
	l32i.n	a10, a2, 8
	bnez.n	a10, .L25
	.loc 2 83 0
	addi.n	a10, a2, 12
.L25:
.LVL40:
.LBE38:
.LBE37:
.LBB39:
.LBB40:
	.loc 2 61 0
	l32i.n	a11, a2, 4
.LVL41:
.LBE40:
.LBE39:
.LBB41:
.LBB42:
	.loc 2 81 0
	l32i.n	a12, a3, 8
	bnez.n	a12, .L26
	.loc 2 83 0
	addi.n	a12, a3, 12
.L26:
.LVL42:
.LBE42:
.LBE41:
.LBB43:
.LBB44:
	.loc 2 61 0
	l32i.n	a13, a3, 4
.LBE44:
.LBE43:
	.loc 1 638 0
	l32i.n	a14, a4, 12
	l32i.n	a15, a4, 16
.LVL43:
.LBB45:
.LBB46:
	.loc 2 98 0
	l32i.n	a2, a5, 8
.LVL44:
	bnez.n	a2, .L27
	.loc 2 100 0
	addi.n	a2, a5, 12
.L27:
.LBE46:
.LBE45:
	.loc 1 636 0
	addi	a3, sp, 16
.LVL45:
	s32i.n	a3, sp, 4
	s32i.n	a2, sp, 0
	callx8	a8
.LVL46:
	beqz.n	a10, .L28
	.loc 1 640 0
	mov.n	a10, a5
	call8	wpabuf_free
.LVL47:
	.loc 1 642 0
	movi.n	a2, 0
	retw.n
.LVL48:
.L24:
	.loc 1 645 0
	call8	wpabuf_free
.LVL49:
	.loc 1 647 0
	movi.n	a2, 0
.LVL50:
	retw.n
.LVL51:
.L28:
	.loc 1 650 0
	l32i.n	a11, sp, 16
	mov.n	a10, a5
	call8	wpabuf_put
.LVL52:
	.loc 1 653 0
	mov.n	a2, a5
	retw.n
.LVL53:
.L29:
	.loc 1 628 0
	movi.n	a2, 0
.LVL54:
	retw.n
.LVL55:
.L30:
	movi.n	a2, 0
.LVL56:
	retw.n
.LVL57:
.L31:
	.loc 1 633 0
	movi.n	a2, 0
.LVL58:
	.loc 1 654 0
	retw.n
.LFE29:
	.size	dh_derive_shared, .-dh_derive_shared
	.section	.data.dh_groups,"aw",@progbits
	.align	4
	.type	dh_groups, @object
	.size	dh_groups, 20
dh_groups:
	.word	5
	.word	dh_group5_generator
	.word	1
	.word	dh_group5_prime
	.word	192
	.section	.rodata.dh_group5_prime,"a",@progbits
	.align	4
	.type	dh_group5_prime, @object
	.size	dh_group5_prime, 192
dh_group5_prime:
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-55
	.byte	15
	.byte	-38
	.byte	-94
	.byte	33
	.byte	104
	.byte	-62
	.byte	52
	.byte	-60
	.byte	-58
	.byte	98
	.byte	-117
	.byte	-128
	.byte	-36
	.byte	28
	.byte	-47
	.byte	41
	.byte	2
	.byte	78
	.byte	8
	.byte	-118
	.byte	103
	.byte	-52
	.byte	116
	.byte	2
	.byte	11
	.byte	-66
	.byte	-90
	.byte	59
	.byte	19
	.byte	-101
	.byte	34
	.byte	81
	.byte	74
	.byte	8
	.byte	121
	.byte	-114
	.byte	52
	.byte	4
	.byte	-35
	.byte	-17
	.byte	-107
	.byte	25
	.byte	-77
	.byte	-51
	.byte	58
	.byte	67
	.byte	27
	.byte	48
	.byte	43
	.byte	10
	.byte	109
	.byte	-14
	.byte	95
	.byte	20
	.byte	55
	.byte	79
	.byte	-31
	.byte	53
	.byte	109
	.byte	109
	.byte	81
	.byte	-62
	.byte	69
	.byte	-28
	.byte	-123
	.byte	-75
	.byte	118
	.byte	98
	.byte	94
	.byte	126
	.byte	-58
	.byte	-12
	.byte	76
	.byte	66
	.byte	-23
	.byte	-90
	.byte	55
	.byte	-19
	.byte	107
	.byte	11
	.byte	-1
	.byte	92
	.byte	-74
	.byte	-12
	.byte	6
	.byte	-73
	.byte	-19
	.byte	-18
	.byte	56
	.byte	107
	.byte	-5
	.byte	90
	.byte	-119
	.byte	-97
	.byte	-91
	.byte	-82
	.byte	-97
	.byte	36
	.byte	17
	.byte	124
	.byte	75
	.byte	31
	.byte	-26
	.byte	73
	.byte	40
	.byte	102
	.byte	81
	.byte	-20
	.byte	-28
	.byte	91
	.byte	61
	.byte	-62
	.byte	0
	.byte	124
	.byte	-72
	.byte	-95
	.byte	99
	.byte	-65
	.byte	5
	.byte	-104
	.byte	-38
	.byte	72
	.byte	54
	.byte	28
	.byte	85
	.byte	-45
	.byte	-102
	.byte	105
	.byte	22
	.byte	63
	.byte	-88
	.byte	-3
	.byte	36
	.byte	-49
	.byte	95
	.byte	-125
	.byte	101
	.byte	93
	.byte	35
	.byte	-36
	.byte	-93
	.byte	-83
	.byte	-106
	.byte	28
	.byte	98
	.byte	-13
	.byte	86
	.byte	32
	.byte	-123
	.byte	82
	.byte	-69
	.byte	-98
	.byte	-43
	.byte	41
	.byte	7
	.byte	112
	.byte	-106
	.byte	-106
	.byte	109
	.byte	103
	.byte	12
	.byte	53
	.byte	78
	.byte	74
	.byte	-68
	.byte	-104
	.byte	4
	.byte	-15
	.byte	116
	.byte	108
	.byte	8
	.byte	-54
	.byte	35
	.byte	115
	.byte	39
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.section	.rodata.dh_group5_generator,"a",@progbits
	.align	4
	.type	dh_group5_generator, @object
	.size	dh_group5_generator, 1
dh_group5_generator:
	.byte	2
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
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI0-.LFB27
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI1-.LFB28
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI2-.LFB29
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE4:
	.text
.Letext0:
	.file 3 "C:/esp/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "C:/esp/esp-idf/components/newlib/include/stdint.h"
	.file 5 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 6 "C:/esp/esp-idf/components/wpa_supplicant/include/crypto/dh_groups.h"
	.file 7 "C:/esp/esp-idf/components/esp32/include/esp_wifi_crypto_types.h"
	.file 8 "C:/esp/esp-idf/components/wpa_supplicant/port/include/os.h"
	.file 9 "C:/esp/esp-idf/components/newlib/include/string.h"
	.file 10 "C:/esp/esp-idf/components/wpa_supplicant/include/crypto/common.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x736
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF58
	.byte	0xc
	.4byte	.LASF59
	.4byte	.LASF60
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x3
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
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x4
	.byte	0x15
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x5
	.byte	0xd8
	.4byte	0x53
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x6
	.byte	0x4
	.4byte	0x37
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa8
	.uleb128 0x7
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF14
	.uleb128 0x8
	.string	"u8"
	.byte	0xa
	.byte	0xa8
	.4byte	0x68
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x14
	.byte	0x6
	.byte	0x12
	.4byte	0x102
	.uleb128 0xa
	.string	"id"
	.byte	0x6
	.byte	0x13
	.4byte	0x4c
	.byte	0
	.uleb128 0xb
	.4byte	.LASF15
	.byte	0x6
	.byte	0x14
	.4byte	0x102
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF16
	.byte	0x6
	.byte	0x15
	.4byte	0x73
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF17
	.byte	0x6
	.byte	0x16
	.4byte	0x102
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF18
	.byte	0x6
	.byte	0x17
	.4byte	0x73
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x108
	.uleb128 0xc
	.4byte	0xb0
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0xc
	.byte	0x2
	.byte	0x17
	.4byte	0x13e
	.uleb128 0xb
	.4byte	.LASF21
	.byte	0x2
	.byte	0x18
	.4byte	0x73
	.byte	0
	.uleb128 0xb
	.4byte	.LASF22
	.byte	0x2
	.byte	0x19
	.4byte	0x73
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x2
	.byte	0x1a
	.4byte	0x13e
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x14a
	.uleb128 0xc
	.4byte	0x37
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4c
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x7
	.byte	0x67
	.4byte	0x160
	.uleb128 0x6
	.byte	0x4
	.4byte	0x166
	.uleb128 0xd
	.4byte	0x14f
	.4byte	0x184
	.uleb128 0xe
	.4byte	0x144
	.uleb128 0xe
	.4byte	0x144
	.uleb128 0xe
	.4byte	0x95
	.uleb128 0xe
	.4byte	0x4c
	.byte	0
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x7
	.byte	0x72
	.4byte	0x160
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x7
	.byte	0xc1
	.4byte	0x19a
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1a0
	.uleb128 0xd
	.4byte	0x8c
	.4byte	0x1c3
	.uleb128 0xe
	.4byte	0x144
	.uleb128 0xe
	.4byte	0x4c
	.uleb128 0xe
	.4byte	0x144
	.uleb128 0xe
	.4byte	0x4c
	.uleb128 0xe
	.4byte	0x95
	.byte	0
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x7
	.byte	0xcf
	.4byte	0x1ce
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1d4
	.uleb128 0xd
	.4byte	0x8c
	.4byte	0x1fc
	.uleb128 0xe
	.4byte	0x144
	.uleb128 0xe
	.4byte	0x4c
	.uleb128 0xe
	.4byte	0x4c
	.uleb128 0xe
	.4byte	0x1fc
	.uleb128 0xe
	.4byte	0x202
	.uleb128 0xe
	.4byte	0x95
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x144
	.uleb128 0x6
	.byte	0x4
	.4byte	0x208
	.uleb128 0xc
	.4byte	0x4c
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x7
	.byte	0xea
	.4byte	0x218
	.uleb128 0x6
	.byte	0x4
	.4byte	0x21e
	.uleb128 0xd
	.4byte	0x14f
	.4byte	0x23c
	.uleb128 0xe
	.4byte	0x4c
	.uleb128 0xe
	.4byte	0x1fc
	.uleb128 0xe
	.4byte	0x202
	.uleb128 0xe
	.4byte	0x95
	.byte	0
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0x7
	.byte	0xfb
	.4byte	0x247
	.uleb128 0x6
	.byte	0x4
	.4byte	0x24d
	.uleb128 0xd
	.4byte	0x14f
	.4byte	0x27f
	.uleb128 0xe
	.4byte	0x144
	.uleb128 0xe
	.4byte	0x4c
	.uleb128 0xe
	.4byte	0x144
	.uleb128 0xe
	.4byte	0x4c
	.uleb128 0xe
	.4byte	0x144
	.uleb128 0xe
	.4byte	0x4c
	.uleb128 0xe
	.4byte	0x95
	.uleb128 0xe
	.4byte	0x27f
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x53
	.uleb128 0xf
	.byte	0x18
	.byte	0x7
	.2byte	0x110
	.4byte	0x2dd
	.uleb128 0x10
	.4byte	.LASF30
	.byte	0x7
	.2byte	0x111
	.4byte	0x155
	.byte	0
	.uleb128 0x10
	.4byte	.LASF31
	.byte	0x7
	.2byte	0x112
	.4byte	0x184
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF32
	.byte	0x7
	.2byte	0x113
	.4byte	0x23c
	.byte	0x8
	.uleb128 0x10
	.4byte	.LASF33
	.byte	0x7
	.2byte	0x114
	.4byte	0x18f
	.byte	0xc
	.uleb128 0x10
	.4byte	.LASF34
	.byte	0x7
	.2byte	0x115
	.4byte	0x1c3
	.byte	0x10
	.uleb128 0x10
	.4byte	.LASF35
	.byte	0x7
	.2byte	0x116
	.4byte	0x20d
	.byte	0x14
	.byte	0
	.uleb128 0x11
	.4byte	.LASF36
	.byte	0x7
	.2byte	0x117
	.4byte	0x285
	.uleb128 0x12
	.4byte	.LASF37
	.byte	0x2
	.byte	0x60
	.4byte	0x8c
	.byte	0x3
	.4byte	0x305
	.uleb128 0x13
	.string	"buf"
	.byte	0x2
	.byte	0x60
	.4byte	0x305
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x10d
	.uleb128 0x12
	.4byte	.LASF38
	.byte	0x2
	.byte	0x4f
	.4byte	0xa2
	.byte	0x3
	.4byte	0x327
	.uleb128 0x13
	.string	"buf"
	.byte	0x2
	.byte	0x4f
	.4byte	0x327
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x32d
	.uleb128 0xc
	.4byte	0x10d
	.uleb128 0x12
	.4byte	.LASF39
	.byte	0x2
	.byte	0x67
	.4byte	0x13e
	.byte	0x3
	.4byte	0x34e
	.uleb128 0x13
	.string	"buf"
	.byte	0x2
	.byte	0x67
	.4byte	0x305
	.byte	0
	.uleb128 0x12
	.4byte	.LASF40
	.byte	0x2
	.byte	0x3b
	.4byte	0x73
	.byte	0x3
	.4byte	0x36a
	.uleb128 0x13
	.string	"buf"
	.byte	0x2
	.byte	0x3b
	.4byte	0x327
	.byte	0
	.uleb128 0x14
	.4byte	.LASF41
	.byte	0x1
	.2byte	0x21e
	.4byte	0x3a2
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3a2
	.uleb128 0x15
	.string	"id"
	.byte	0x1
	.2byte	0x21e
	.4byte	0x4c
	.4byte	.LLST0
	.uleb128 0x16
	.string	"i"
	.byte	0x1
	.2byte	0x220
	.4byte	0x73
	.4byte	.LLST1
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3a8
	.uleb128 0xc
	.4byte	0xba
	.uleb128 0x14
	.4byte	.LASF42
	.byte	0x1
	.2byte	0x230
	.4byte	0x305
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x538
	.uleb128 0x15
	.string	"dh"
	.byte	0x1
	.2byte	0x230
	.4byte	0x3a2
	.4byte	.LLST2
	.uleb128 0x17
	.4byte	.LASF43
	.byte	0x1
	.2byte	0x230
	.4byte	0x538
	.4byte	.LLST3
	.uleb128 0x16
	.string	"pv"
	.byte	0x1
	.2byte	0x232
	.4byte	0x305
	.4byte	.LLST4
	.uleb128 0x18
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x233
	.4byte	0x73
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x19
	.4byte	0x30b
	.4byte	.LBB26
	.4byte	.LBE26-.LBB26
	.byte	0x1
	.2byte	0x244
	.4byte	0x422
	.uleb128 0x1a
	.4byte	0x31b
	.4byte	.LLST5
	.byte	0
	.uleb128 0x19
	.4byte	0x332
	.4byte	.LBB28
	.4byte	.LBE28-.LBB28
	.byte	0x1
	.2byte	0x246
	.4byte	0x459
	.uleb128 0x1a
	.4byte	0x342
	.4byte	.LLST6
	.uleb128 0x1b
	.4byte	0x2e9
	.4byte	.LBB29
	.4byte	.LBE29-.LBB29
	.byte	0x2
	.byte	0x69
	.uleb128 0x1a
	.4byte	0x2f9
	.4byte	.LLST6
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	0x30b
	.4byte	.LBB31
	.4byte	.LBE31-.LBB31
	.byte	0x1
	.2byte	0x251
	.4byte	0x477
	.uleb128 0x1a
	.4byte	0x31b
	.4byte	.LLST8
	.byte	0
	.uleb128 0x19
	.4byte	0x34e
	.4byte	.LBB33
	.4byte	.LBE33-.LBB33
	.byte	0x1
	.2byte	0x251
	.4byte	0x495
	.uleb128 0x1a
	.4byte	0x35e
	.4byte	.LLST9
	.byte	0
	.uleb128 0x19
	.4byte	0x2e9
	.4byte	.LBB35
	.4byte	.LBE35-.LBB35
	.byte	0x1
	.2byte	0x252
	.4byte	0x4b3
	.uleb128 0x1a
	.4byte	0x2f9
	.4byte	.LLST10
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL9
	.4byte	0x702
	.uleb128 0x1c
	.4byte	.LVL10
	.4byte	0x70d
	.uleb128 0x1c
	.4byte	.LVL11
	.4byte	0x718
	.uleb128 0x1c
	.4byte	.LVL12
	.4byte	0x723
	.uleb128 0x1c
	.4byte	.LVL13
	.4byte	0x702
	.uleb128 0x1c
	.4byte	.LVL16
	.4byte	0x72e
	.uleb128 0x1c
	.4byte	.LVL19
	.4byte	0x70d
	.uleb128 0x1d
	.4byte	.LVL27
	.4byte	0x50a
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL28
	.4byte	0x702
	.4byte	0x51e
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL30
	.4byte	0x702
	.uleb128 0x20
	.4byte	.LVL32
	.4byte	0x718
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x305
	.uleb128 0x14
	.4byte	.LASF45
	.byte	0x1
	.2byte	0x26c
	.4byte	0x305
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x689
	.uleb128 0x17
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x26c
	.4byte	0x327
	.4byte	.LLST11
	.uleb128 0x17
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x26d
	.4byte	0x327
	.4byte	.LLST12
	.uleb128 0x21
	.string	"dh"
	.byte	0x1
	.2byte	0x26e
	.4byte	0x3a2
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x22
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x270
	.4byte	0x305
	.4byte	.LLST13
	.uleb128 0x18
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x271
	.4byte	0x73
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x19
	.4byte	0x30b
	.4byte	.LBB37
	.4byte	.LBE37-.LBB37
	.byte	0x1
	.2byte	0x27c
	.4byte	0x5c2
	.uleb128 0x1a
	.4byte	0x31b
	.4byte	.LLST14
	.byte	0
	.uleb128 0x19
	.4byte	0x34e
	.4byte	.LBB39
	.4byte	.LBE39-.LBB39
	.byte	0x1
	.2byte	0x27c
	.4byte	0x5e0
	.uleb128 0x1a
	.4byte	0x35e
	.4byte	.LLST15
	.byte	0
	.uleb128 0x19
	.4byte	0x30b
	.4byte	.LBB41
	.4byte	.LBE41-.LBB41
	.byte	0x1
	.2byte	0x27d
	.4byte	0x5fe
	.uleb128 0x1a
	.4byte	0x31b
	.4byte	.LLST16
	.byte	0
	.uleb128 0x19
	.4byte	0x34e
	.4byte	.LBB43
	.4byte	.LBE43-.LBB43
	.byte	0x1
	.2byte	0x27d
	.4byte	0x61c
	.uleb128 0x1a
	.4byte	0x35e
	.4byte	.LLST17
	.byte	0
	.uleb128 0x19
	.4byte	0x2e9
	.4byte	.LBB45
	.4byte	.LBE45-.LBB45
	.byte	0x1
	.2byte	0x27f
	.4byte	0x63a
	.uleb128 0x1a
	.4byte	0x2f9
	.4byte	.LLST18
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL37
	.4byte	0x70d
	.uleb128 0x1d
	.4byte	.LVL46
	.4byte	0x65b
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL47
	.4byte	0x702
	.4byte	0x66f
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL49
	.4byte	0x702
	.uleb128 0x20
	.4byte	.LVL52
	.4byte	0x718
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	0xb0
	.4byte	0x699
	.uleb128 0x24
	.4byte	0x85
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LASF50
	.byte	0x1
	.byte	0x4f
	.4byte	0x6aa
	.uleb128 0x5
	.byte	0x3
	.4byte	dh_group5_generator
	.uleb128 0xc
	.4byte	0x689
	.uleb128 0x23
	.4byte	0xb0
	.4byte	0x6bf
	.uleb128 0x24
	.4byte	0x85
	.byte	0xbf
	.byte	0
	.uleb128 0x25
	.4byte	.LASF51
	.byte	0x1
	.byte	0x50
	.4byte	0x6d0
	.uleb128 0x5
	.byte	0x3
	.4byte	dh_group5_prime
	.uleb128 0xc
	.4byte	0x6af
	.uleb128 0x23
	.4byte	0xba
	.4byte	0x6e5
	.uleb128 0x24
	.4byte	0x85
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF52
	.byte	0x1
	.2byte	0x20d
	.4byte	0x6d5
	.uleb128 0x5
	.byte	0x3
	.4byte	dh_groups
	.uleb128 0x26
	.4byte	.LASF61
	.byte	0x1
	.byte	0x19
	.4byte	0x2dd
	.uleb128 0x27
	.4byte	.LASF53
	.4byte	.LASF53
	.byte	0x2
	.byte	0x25
	.uleb128 0x27
	.4byte	.LASF54
	.4byte	.LASF54
	.byte	0x2
	.byte	0x21
	.uleb128 0x27
	.4byte	.LASF55
	.4byte	.LASF55
	.byte	0x2
	.byte	0x26
	.uleb128 0x27
	.4byte	.LASF56
	.4byte	.LASF56
	.byte	0x8
	.byte	0x62
	.uleb128 0x27
	.4byte	.LASF57
	.4byte	.LASF57
	.byte	0x9
	.byte	0x16
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
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x16
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x5
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL7
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL5
	.4byte	.LFE27
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL8
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL15
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL25
	.4byte	.LVL29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL35
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL8
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL21
	.4byte	.LVL29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL35
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL20
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL14
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL21
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL24
	.4byte	.LVL26
	.2byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL22
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL24
	.4byte	.LVL26
	.2byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL23
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL36
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL44
	.4byte	.LVL48
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL50
	.4byte	.LVL53
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL58
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL36
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL45
	.4byte	.LVL48
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL51
	.4byte	.LVL53
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LFE29
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL38
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL57
	.4byte	.LFE29
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL39
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL44
	.4byte	.LVL48
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL51
	.4byte	.LVL53
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL40
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL44
	.4byte	.LVL48
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL51
	.4byte	.LVL53
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL41
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL45
	.4byte	.LVL48
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL51
	.4byte	.LVL53
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL42
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL45
	.4byte	.LVL48
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL51
	.4byte	.LVL53
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL43
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL51
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x55
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
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF43:
	.string	"priv"
.LASF35:
	.string	"sha256_vector"
.LASF40:
	.string	"wpabuf_len"
.LASF26:
	.string	"esp_hmac_sha256_t"
.LASF45:
	.string	"dh_derive_shared"
.LASF2:
	.string	"short int"
.LASF9:
	.string	"size_t"
.LASF18:
	.string	"prime_len"
.LASF11:
	.string	"sizetype"
.LASF36:
	.string	"wps_crypto_funcs_t"
.LASF28:
	.string	"esp_sha256_vector_t"
.LASF17:
	.string	"prime"
.LASF8:
	.string	"uint8_t"
.LASF15:
	.string	"generator"
.LASF48:
	.string	"shared"
.LASF57:
	.string	"memcmp"
.LASF5:
	.string	"long long int"
.LASF46:
	.string	"peer_public"
.LASF47:
	.string	"own_private"
.LASF42:
	.string	"dh_init"
.LASF59:
	.string	"C:/esp/esp-idf/components/wpa_supplicant/src/crypto/dh_groups.c"
.LASF10:
	.string	"long int"
.LASF32:
	.string	"crypto_mod_exp"
.LASF7:
	.string	"__uint8_t"
.LASF34:
	.string	"hmac_sha256_vector"
.LASF24:
	.string	"esp_aes_128_encrypt_t"
.LASF54:
	.string	"wpabuf_alloc"
.LASF38:
	.string	"wpabuf_head"
.LASF44:
	.string	"pv_len"
.LASF1:
	.string	"unsigned char"
.LASF53:
	.string	"wpabuf_free"
.LASF0:
	.string	"signed char"
.LASF6:
	.string	"long long unsigned int"
.LASF22:
	.string	"used"
.LASF33:
	.string	"hmac_sha256"
.LASF16:
	.string	"generator_len"
.LASF31:
	.string	"aes_128_decrypt"
.LASF13:
	.string	"char"
.LASF56:
	.string	"os_get_random"
.LASF61:
	.string	"wps_crypto_funcs"
.LASF3:
	.string	"short unsigned int"
.LASF29:
	.string	"esp_crypto_mod_exp_t"
.LASF23:
	.string	"ext_data"
.LASF14:
	.string	"_Bool"
.LASF37:
	.string	"wpabuf_mhead"
.LASF20:
	.string	"wpabuf"
.LASF39:
	.string	"wpabuf_mhead_u8"
.LASF27:
	.string	"esp_hmac_sha256_vector_t"
.LASF49:
	.string	"shared_len"
.LASF12:
	.string	"long unsigned int"
.LASF50:
	.string	"dh_group5_generator"
.LASF21:
	.string	"size"
.LASF25:
	.string	"esp_aes_128_decrypt_t"
.LASF19:
	.string	"dh_group"
.LASF51:
	.string	"dh_group5_prime"
.LASF52:
	.string	"dh_groups"
.LASF60:
	.string	"C:\\\\esp\\\\ArkPOS2-esp\\\\build\\\\wpa_supplicant"
.LASF55:
	.string	"wpabuf_put"
.LASF30:
	.string	"aes_128_encrypt"
.LASF4:
	.string	"unsigned int"
.LASF58:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF41:
	.string	"dh_groups_get"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-61-gab8375a) 5.2.0"
