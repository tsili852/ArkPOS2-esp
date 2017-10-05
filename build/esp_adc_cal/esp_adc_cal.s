	.file	"esp_adc_cal.c"
	.text
.Ltext0:
	.section	.text.esp_adc_cal_interpolate_round,"ax",@progbits
	.align	4
	.type	esp_adc_cal_interpolate_round, @function
esp_adc_cal_interpolate_round:
.LFB6:
	.file 1 "C:/esp/esp-idf/components/esp_adc_cal/esp_adc_cal.c"
	.loc 1 72 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 74 0
	sub	a8, a4, a5
	mull	a2, a8, a2
.LVL1:
	mull	a3, a5, a3
.LVL2:
	add.n	a5, a2, a3
.LVL3:
	srli	a2, a4, 1
	add.n	a2, a5, a2
	.loc 1 75 0
	quou	a2, a2, a4
	retw.n
.LFE6:
	.size	esp_adc_cal_interpolate_round, .-esp_adc_cal_interpolate_round
	.section	.text.get_adc_vref_from_efuse,"ax",@progbits
	.align	4
	.global	get_adc_vref_from_efuse
	.type	get_adc_vref_from_efuse, @function
get_adc_vref_from_efuse:
.LFB4:
	.loc 1 26 0
	entry	sp, 32
.LCFI1:
	.loc 1 29 0
	movi.n	a2, 0
	retw.n
.LFE4:
	.size	get_adc_vref_from_efuse, .-get_adc_vref_from_efuse
	.section	.text.esp_adc_cal_get_characteristics,"ax",@progbits
	.literal_position
	.literal .LC0, table_ptrs
	.align	4
	.global	esp_adc_cal_get_characteristics
	.type	esp_adc_cal_get_characteristics, @function
esp_adc_cal_get_characteristics:
.LFB5:
	.loc 1 35 0
.LVL4:
	entry	sp, 32
.LCFI2:
	.loc 1 36 0
	s32i.n	a2, a5, 0
	.loc 1 37 0
	l32r	a8, .LC0
	addx4	a3, a3, a8
.LVL5:
	l32i.n	a8, a3, 0
	s32i.n	a8, a5, 20
	.loc 1 38 0
	s32i.n	a4, a5, 16
	.loc 1 39 0
	movi	a3, 0x3e7
	bgeu	a3, a2, .L4
	.loc 1 40 0
	movi	a3, -0x3e8
	add.n	a2, a2, a3
.LVL6:
	.loc 1 41 0
	l32i.n	a3, a8, 0
	mull	a9, a2, a3
	.loc 1 42 0
	l32i.n	a3, a8, 4
	add.n	a3, a9, a3
	.loc 1 40 0
	s32i.n	a3, a5, 4
	.loc 1 44 0
	l32i.n	a3, a8, 8
	mull	a2, a2, a3
	.loc 1 45 0
	l32i.n	a3, a8, 12
	add.n	a2, a2, a3
	.loc 1 46 0
	addmi	a2, a2, 0x200
	.loc 1 47 0
	srli	a2, a2, 10
	.loc 1 43 0
	s32i.n	a2, a5, 8
	.loc 1 49 0
	l32i.n	a2, a8, 8
	addx4	a2, a2, a2
	addx4	a2, a2, a2
	slli	a3, a2, 2
	.loc 1 50 0
	l32i.n	a2, a8, 12
	add.n	a2, a3, a2
	.loc 1 51 0
	addmi	a2, a2, 0x200
	.loc 1 52 0
	srli	a2, a2, 10
	.loc 1 48 0
	s32i.n	a2, a5, 12
	retw.n
.LVL7:
.L4:
	.loc 1 54 0
	l32i.n	a9, a8, 4
	.loc 1 55 0
	movi	a10, 0x3e8
	sub	a11, a10, a2
	.loc 1 56 0
	l32i.n	a3, a8, 0
	mull	a3, a11, a3
	.loc 1 55 0
	sub	a3, a9, a3
	.loc 1 54 0
	s32i.n	a3, a5, 4
	.loc 1 57 0
	l32i.n	a9, a8, 12
	.loc 1 58 0
	sub	a2, a2, a10
.LVL8:
	.loc 1 59 0
	l32i.n	a3, a8, 8
	mull	a2, a2, a3
	.loc 1 58 0
	sub	a2, a9, a2
	.loc 1 60 0
	addmi	a2, a2, 0x200
	.loc 1 61 0
	srli	a2, a2, 10
	.loc 1 57 0
	s32i.n	a2, a5, 8
	.loc 1 62 0
	l32i.n	a9, a8, 12
	.loc 1 64 0
	l32i.n	a2, a8, 8
	addx4	a2, a2, a2
	addx4	a2, a2, a2
	slli	a3, a2, 2
	.loc 1 63 0
	sub	a2, a9, a3
	.loc 1 65 0
	addmi	a2, a2, 0x200
	.loc 1 66 0
	srli	a2, a2, 10
	.loc 1 62 0
	s32i.n	a2, a5, 12
	retw.n
.LFE5:
	.size	esp_adc_cal_get_characteristics, .-esp_adc_cal_get_characteristics
	.section	.text.esp_adc_cal_raw_to_voltage,"ax",@progbits
	.literal_position
	.literal .LC1, 32768
	.align	4
	.global	esp_adc_cal_raw_to_voltage
	.type	esp_adc_cal_raw_to_voltage, @function
esp_adc_cal_raw_to_voltage:
.LFB7:
	.loc 1 79 0
.LVL9:
	entry	sp, 32
.LCFI3:
	.loc 1 81 0
	l32i.n	a13, a3, 16
	movi.n	a8, 3
	sub	a13, a8, a13
	ssl	a13
	sll	a2, a2
.LVL10:
	.loc 1 82 0
	l32i.n	a11, a3, 20
	l32i.n	a10, a11, 16
	ssr	a10
	srl	a13, a2
.LVL11:
	.loc 1 84 0
	addi.n	a8, a13, 4
	addx4	a8, a8, a11
	addi.n	a9, a13, 5
	addx4	a9, a9, a11
	.loc 1 87 0
	ssl	a10
	sll	a13, a13
.LVL12:
	.loc 1 84 0
	sub	a13, a2, a13
	movi.n	a12, 1
	ssl	a10
	sll	a12, a12
	l32i.n	a11, a9, 4
	l32i.n	a10, a8, 4
.LVL13:
	call8	esp_adc_cal_interpolate_round
.LVL14:
	.loc 1 92 0
	l32i.n	a2, a3, 12
.LVL15:
	bgeu	a2, a10, .L7
	.loc 1 93 0
	sub	a2, a10, a2
	l32i.n	a10, a3, 4
.LVL16:
	mull	a2, a2, a10
.LVL17:
	.loc 1 94 0
	l32r	a8, .LC1
	add.n	a2, a2, a8
.LVL18:
	.loc 1 95 0
	extui	a2, a2, 16, 16
.LVL19:
	.loc 1 96 0
	l32i.n	a3, a3, 8
.LVL20:
	add.n	a2, a2, a3
.LVL21:
	retw.n
.LVL22:
.L7:
	.loc 1 98 0
	sub	a2, a2, a10
	l32i.n	a10, a3, 4
.LVL23:
	mull	a2, a2, a10
.LVL24:
	.loc 1 99 0
	l32r	a8, .LC1
	add.n	a2, a2, a8
.LVL25:
	.loc 1 100 0
	extui	a2, a2, 16, 16
.LVL26:
	.loc 1 101 0
	l32i.n	a3, a3, 8
.LVL27:
	sub	a2, a3, a2
.LVL28:
	.loc 1 105 0
	retw.n
.LFE7:
	.size	esp_adc_cal_raw_to_voltage, .-esp_adc_cal_raw_to_voltage
	.section	.text.adc1_to_voltage,"ax",@progbits
	.align	4
	.global	adc1_to_voltage
	.type	adc1_to_voltage, @function
adc1_to_voltage:
.LFB8:
	.loc 1 108 0
.LVL29:
	entry	sp, 32
.LCFI4:
	.loc 1 109 0
	mov.n	a10, a2
	call8	adc1_get_raw
.LVL30:
	mov.n	a11, a3
	call8	esp_adc_cal_raw_to_voltage
.LVL31:
	.loc 1 110 0
	mov.n	a2, a10
.LVL32:
	retw.n
.LFE8:
	.size	adc1_to_voltage, .-adc1_to_voltage
	.section	.rodata.table_ptrs,"a",@progbits
	.align	4
	.type	table_ptrs, @object
	.size	table_ptrs, 16
table_ptrs:
	.word	esp_adc_cal_table_atten_0
	.word	esp_adc_cal_table_atten_1
	.word	esp_adc_cal_table_atten_2
	.word	esp_adc_cal_table_atten_3
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
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI0-.LFB6
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI1-.LFB4
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI2-.LFB5
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI3-.LFB7
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI4-.LFB8
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
	.text
.Letext0:
	.file 2 "C:/esp/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "C:/esp/esp-idf/components/newlib/include/stdint.h"
	.file 4 "C:/esp/esp-idf/components/driver/include/driver/adc.h"
	.file 5 "C:/esp/esp-idf/components/esp_adc_cal/include/esp_adc_cal.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x3ef
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF62
	.byte	0xc
	.4byte	.LASF63
	.4byte	.LASF64
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
	.4byte	.LASF7
	.byte	0x2
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
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x3
	.byte	0x2d
	.4byte	0x48
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF13
	.uleb128 0x5
	.byte	0x4
	.4byte	0x53
	.byte	0x4
	.byte	0x1b
	.4byte	0xbb
	.uleb128 0x6
	.4byte	.LASF14
	.byte	0
	.uleb128 0x6
	.4byte	.LASF15
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF16
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x4
	.byte	0x20
	.4byte	0x96
	.uleb128 0x5
	.byte	0x4
	.4byte	0x53
	.byte	0x4
	.byte	0x22
	.4byte	0xeb
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0
	.uleb128 0x6
	.4byte	.LASF20
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF21
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF22
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0x4
	.byte	0x27
	.4byte	0xc6
	.uleb128 0x5
	.byte	0x4
	.4byte	0x53
	.byte	0x4
	.byte	0x29
	.4byte	0x139
	.uleb128 0x6
	.4byte	.LASF24
	.byte	0
	.uleb128 0x6
	.4byte	.LASF25
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF26
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF27
	.byte	0x3
	.uleb128 0x6
	.4byte	.LASF28
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF29
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF30
	.byte	0x6
	.uleb128 0x6
	.4byte	.LASF31
	.byte	0x7
	.uleb128 0x6
	.4byte	.LASF32
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.4byte	.LASF33
	.byte	0x4
	.byte	0x33
	.4byte	0xf6
	.uleb128 0x7
	.byte	0x14
	.byte	0x5
	.byte	0x2e
	.4byte	0x195
	.uleb128 0x8
	.4byte	.LASF34
	.byte	0x5
	.byte	0x2f
	.4byte	0x68
	.byte	0
	.uleb128 0x8
	.4byte	.LASF35
	.byte	0x5
	.byte	0x30
	.4byte	0x68
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF36
	.byte	0x5
	.byte	0x31
	.4byte	0x68
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF37
	.byte	0x5
	.byte	0x32
	.4byte	0x68
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF38
	.byte	0x5
	.byte	0x33
	.4byte	0x68
	.byte	0x10
	.uleb128 0x8
	.4byte	.LASF39
	.byte	0x5
	.byte	0x35
	.4byte	0x195
	.byte	0x14
	.byte	0
	.uleb128 0x9
	.4byte	0x68
	.4byte	0x1a4
	.uleb128 0xa
	.4byte	0x7a
	.byte	0
	.uleb128 0x4
	.4byte	.LASF40
	.byte	0x5
	.byte	0x37
	.4byte	0x144
	.uleb128 0x7
	.byte	0x18
	.byte	0x5
	.byte	0x43
	.4byte	0x200
	.uleb128 0x8
	.4byte	.LASF41
	.byte	0x5
	.byte	0x44
	.4byte	0x68
	.byte	0
	.uleb128 0x8
	.4byte	.LASF42
	.byte	0x5
	.byte	0x45
	.4byte	0x68
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF43
	.byte	0x5
	.byte	0x48
	.4byte	0x68
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF44
	.byte	0x5
	.byte	0x49
	.4byte	0x68
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF45
	.byte	0x5
	.byte	0x4a
	.4byte	0xeb
	.byte	0x10
	.uleb128 0x8
	.4byte	.LASF46
	.byte	0x5
	.byte	0x4b
	.4byte	0x200
	.byte	0x14
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x206
	.uleb128 0xc
	.4byte	0x1a4
	.uleb128 0x4
	.4byte	.LASF47
	.byte	0x5
	.byte	0x4c
	.4byte	0x1af
	.uleb128 0xd
	.4byte	.LASF65
	.byte	0x1
	.byte	0x46
	.4byte	0x68
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x26a
	.uleb128 0xe
	.4byte	.LASF48
	.byte	0x1
	.byte	0x46
	.4byte	0x68
	.4byte	.LLST0
	.uleb128 0xe
	.4byte	.LASF49
	.byte	0x1
	.byte	0x46
	.4byte	0x68
	.4byte	.LLST1
	.uleb128 0xf
	.4byte	.LASF50
	.byte	0x1
	.byte	0x47
	.4byte	0x68
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xe
	.4byte	.LASF51
	.byte	0x1
	.byte	0x47
	.4byte	0x68
	.4byte	.LLST2
	.byte	0
	.uleb128 0x10
	.4byte	.LASF66
	.byte	0x1
	.byte	0x19
	.4byte	0x68
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x11
	.4byte	.LASF67
	.byte	0x1
	.byte	0x1f
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2cd
	.uleb128 0xe
	.4byte	.LASF41
	.byte	0x1
	.byte	0x1f
	.4byte	0x68
	.4byte	.LLST3
	.uleb128 0xe
	.4byte	.LASF52
	.byte	0x1
	.byte	0x20
	.4byte	0xbb
	.4byte	.LLST4
	.uleb128 0xf
	.4byte	.LASF45
	.byte	0x1
	.byte	0x21
	.4byte	0xeb
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xf
	.4byte	.LASF53
	.byte	0x1
	.byte	0x22
	.4byte	0x2cd
	.uleb128 0x1
	.byte	0x55
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x20b
	.uleb128 0x12
	.4byte	.LASF54
	.byte	0x1
	.byte	0x4d
	.4byte	0x68
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x330
	.uleb128 0x13
	.string	"adc"
	.byte	0x1
	.byte	0x4d
	.4byte	0x68
	.4byte	.LLST5
	.uleb128 0xe
	.4byte	.LASF53
	.byte	0x1
	.byte	0x4e
	.4byte	0x330
	.4byte	.LLST6
	.uleb128 0x14
	.string	"i"
	.byte	0x1
	.byte	0x52
	.4byte	0x68
	.4byte	.LLST7
	.uleb128 0x15
	.4byte	.LASF39
	.byte	0x1
	.byte	0x54
	.4byte	0x68
	.4byte	.LLST8
	.uleb128 0x16
	.4byte	.LVL14
	.4byte	0x216
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x336
	.uleb128 0xc
	.4byte	0x20b
	.uleb128 0x12
	.4byte	.LASF55
	.byte	0x1
	.byte	0x6b
	.4byte	0x68
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x395
	.uleb128 0xe
	.4byte	.LASF56
	.byte	0x1
	.byte	0x6b
	.4byte	0x139
	.4byte	.LLST9
	.uleb128 0xf
	.4byte	.LASF53
	.byte	0x1
	.byte	0x6b
	.4byte	0x330
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x17
	.4byte	.LVL30
	.4byte	0x3e7
	.4byte	0x384
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL31
	.4byte	0x2d3
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x200
	.4byte	0x3a5
	.uleb128 0x1a
	.4byte	0x7a
	.byte	0x3
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF57
	.byte	0x1
	.byte	0x14
	.4byte	0x3b6
	.uleb128 0x5
	.byte	0x3
	.4byte	table_ptrs
	.uleb128 0xc
	.4byte	0x395
	.uleb128 0x1c
	.4byte	.LASF58
	.byte	0x5
	.byte	0x4e
	.4byte	0x206
	.uleb128 0x1c
	.4byte	.LASF59
	.byte	0x5
	.byte	0x4f
	.4byte	0x206
	.uleb128 0x1c
	.4byte	.LASF60
	.byte	0x5
	.byte	0x50
	.4byte	0x206
	.uleb128 0x1c
	.4byte	.LASF61
	.byte	0x5
	.byte	0x51
	.4byte	0x206
	.uleb128 0x1d
	.4byte	.LASF68
	.4byte	.LASF68
	.byte	0x4
	.byte	0x7e
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
	.uleb128 0x6
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x10
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
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
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
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x18
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
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
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL1
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL2
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL3
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL4
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x2
	.byte	0x75
	.sleb128 0
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL8
	.4byte	.LFE5
	.2byte	0x2
	.byte	0x75
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL5
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL10
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL9
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL20
	.4byte	.LVL22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL27
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL14-1
	.2byte	0xa
	.byte	0x72
	.sleb128 0
	.byte	0x73
	.sleb128 20
	.byte	0x6
	.byte	0x23
	.uleb128 0x10
	.byte	0x6
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL14
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL17
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL24
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL29
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL32
	.4byte	.LFE8
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
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF49:
	.string	"upper"
.LASF52:
	.string	"atten"
.LASF64:
	.string	"C:\\\\esp\\\\esp32-ArkPOS2\\\\ArkPOS2-esp\\\\build\\\\esp_adc_cal"
.LASF65:
	.string	"esp_adc_cal_interpolate_round"
.LASF2:
	.string	"short int"
.LASF23:
	.string	"adc_bits_width_t"
.LASF10:
	.string	"sizetype"
.LASF16:
	.string	"ADC_ATTEN_6db"
.LASF53:
	.string	"chars"
.LASF7:
	.string	"__uint32_t"
.LASF33:
	.string	"adc1_channel_t"
.LASF20:
	.string	"ADC_WIDTH_10Bit"
.LASF45:
	.string	"bit_width"
.LASF46:
	.string	"table"
.LASF48:
	.string	"lower"
.LASF5:
	.string	"long long int"
.LASF32:
	.string	"ADC1_CHANNEL_MAX"
.LASF9:
	.string	"long int"
.LASF39:
	.string	"voltage"
.LASF25:
	.string	"ADC1_CHANNEL_1"
.LASF43:
	.string	"offset"
.LASF27:
	.string	"ADC1_CHANNEL_3"
.LASF28:
	.string	"ADC1_CHANNEL_4"
.LASF29:
	.string	"ADC1_CHANNEL_5"
.LASF30:
	.string	"ADC1_CHANNEL_6"
.LASF31:
	.string	"ADC1_CHANNEL_7"
.LASF18:
	.string	"adc_atten_t"
.LASF21:
	.string	"ADC_WIDTH_11Bit"
.LASF1:
	.string	"unsigned char"
.LASF14:
	.string	"ADC_ATTEN_0db"
.LASF0:
	.string	"signed char"
.LASF6:
	.string	"long long unsigned int"
.LASF8:
	.string	"uint32_t"
.LASF15:
	.string	"ADC_ATTEN_2_5db"
.LASF4:
	.string	"unsigned int"
.LASF41:
	.string	"v_ref"
.LASF58:
	.string	"esp_adc_cal_table_atten_0"
.LASF59:
	.string	"esp_adc_cal_table_atten_1"
.LASF60:
	.string	"esp_adc_cal_table_atten_2"
.LASF61:
	.string	"esp_adc_cal_table_atten_3"
.LASF42:
	.string	"gain"
.LASF3:
	.string	"short unsigned int"
.LASF12:
	.string	"char"
.LASF66:
	.string	"get_adc_vref_from_efuse"
.LASF13:
	.string	"_Bool"
.LASF57:
	.string	"table_ptrs"
.LASF56:
	.string	"channel"
.LASF22:
	.string	"ADC_WIDTH_12Bit"
.LASF17:
	.string	"ADC_ATTEN_11db"
.LASF11:
	.string	"long unsigned int"
.LASF51:
	.string	"point"
.LASF68:
	.string	"adc1_get_raw"
.LASF37:
	.string	"offset_c"
.LASF24:
	.string	"ADC1_CHANNEL_0"
.LASF26:
	.string	"ADC1_CHANNEL_2"
.LASF67:
	.string	"esp_adc_cal_get_characteristics"
.LASF36:
	.string	"offset_m"
.LASF19:
	.string	"ADC_WIDTH_9Bit"
.LASF35:
	.string	"gain_c"
.LASF38:
	.string	"bit_shift"
.LASF34:
	.string	"gain_m"
.LASF54:
	.string	"esp_adc_cal_raw_to_voltage"
.LASF40:
	.string	"esp_adc_cal_lookup_table_t"
.LASF63:
	.string	"C:/esp/esp-idf/components/esp_adc_cal/esp_adc_cal.c"
.LASF62:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF50:
	.string	"step"
.LASF55:
	.string	"adc1_to_voltage"
.LASF44:
	.string	"ideal_offset"
.LASF47:
	.string	"esp_adc_cal_characteristics_t"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-73-ge28a011) 5.2.0"
