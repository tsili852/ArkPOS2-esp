	.file	"int_wdt.c"
	.text
.Ltext0:
	.section	.iram1,"ax",@progbits
	.literal_position
	.literal .LC0, TIMERG1
	.literal .LC1, 1356348065
	.align	4
	.type	tick_hook, @function
tick_hook:
.LFB13:
	.file 1 "C:/esp/esp-idf/components/esp32/int_wdt.c"
	.loc 1 62 0
	entry	sp, 32
.LCFI0:
.LBB6:
.LBB7:
	.file 2 "C:/esp/esp-idf/components/freertos/include/freertos/portable.h"
	.loc 2 202 0
#APP
# 202 "C:/esp/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a8
 extui a8,a8,13,1
# 0 "" 2
.LVL0:
#NO_APP
.LBE7:
.LBE6:
	.loc 1 63 0
	bnez.n	a8, .L1
	.loc 1 64 0
	l32r	a8, .LC0
.LVL1:
	l32r	a9, .LC1
	memw
	s32i	a9, a8, 100
	.loc 1 65 0
	movi	a9, 0x258
	memw
	s32i	a9, a8, 80
	.loc 1 66 0
	movi	a9, 0x4b0
	memw
	s32i	a9, a8, 84
	.loc 1 67 0
	movi.n	a9, 1
	memw
	s32i	a9, a8, 96
	.loc 1 68 0
	movi.n	a9, 0
	memw
	s32i	a9, a8, 100
.L1:
	retw.n
.LFE13:
	.size	tick_hook, .-tick_hook
	.section	.text.esp_int_wdt_init,"ax",@progbits
	.literal_position
	.literal .LC2, TIMERG1
	.literal .LC3, 1356348065
	.literal .LC4, 229376
	.literal .LC5, 1835008
	.literal .LC6, 2097152
	.literal .LC7, -1610612737
	.literal .LC8, 536870912
	.literal .LC9, 402653184
	.literal .LC10, -1673527296
	.literal .LC11, 10000
	.literal .LC12, -2147483648
	.literal .LC13, tick_hook
	.literal .LC14, 16777216
	.align	4
	.global	esp_int_wdt_init
	.type	esp_int_wdt_init, @function
esp_int_wdt_init:
.LFB14:
	.loc 1 73 0
	entry	sp, 32
.LCFI1:
	.loc 1 74 0
	l32r	a8, .LC2
	l32r	a2, .LC3
	memw
	s32i	a2, a8, 100
	.loc 1 75 0
	memw
	l32i	a2, a8, 72
	l32r	a9, .LC4
	or	a9, a2, a9
	memw
	s32i	a9, a8, 72
	.loc 1 76 0
	memw
	l32i	a2, a8, 72
	l32r	a9, .LC5
	or	a9, a2, a9
	memw
	s32i	a9, a8, 72
	.loc 1 77 0
	memw
	l32i	a2, a8, 72
	l32r	a9, .LC6
	or	a9, a2, a9
	memw
	s32i	a9, a8, 72
	.loc 1 78 0
	memw
	l32i	a10, a8, 72
	l32r	a9, .LC7
	and	a10, a10, a9
	l32r	a9, .LC8
	or	a9, a10, a9
	memw
	s32i	a9, a8, 72
	.loc 1 79 0
	memw
	l32i	a2, a8, 72
	l32r	a9, .LC9
	or	a9, a2, a9
	memw
	s32i	a9, a8, 72
	.loc 1 80 0
	memw
	l32i	a10, a8, 76
	extui	a10, a10, 0, 16
	l32r	a9, .LC10
	or	a9, a10, a9
	memw
	s32i	a9, a8, 76
	.loc 1 83 0
	l32r	a2, .LC11
	memw
	s32i	a2, a8, 80
	.loc 1 84 0
	memw
	s32i	a2, a8, 84
	.loc 1 85 0
	memw
	l32i	a2, a8, 72
	l32r	a9, .LC12
	or	a9, a2, a9
	memw
	s32i	a9, a8, 72
	.loc 1 86 0
	movi.n	a10, 1
	memw
	s32i	a10, a8, 96
	.loc 1 87 0
	movi.n	a2, 0
	memw
	s32i	a2, a8, 100
	.loc 1 88 0
	memw
	l32i	a9, a8, 164
	movi.n	a11, 4
	or	a2, a9, a11
	memw
	s32i	a2, a8, 164
	.loc 1 89 0
	call8	timer_group_intr_enable
.LVL2:
	.loc 1 90 0
	l32r	a10, .LC13
	call8	esp_register_freertos_tick_hook
.LVL3:
	.loc 1 91 0
	l32r	a2, .LC14
	mov.n	a10, a2
	call8	xt_ints_off
.LVL4:
.LBB8:
.LBB9:
	.loc 2 202 0
#APP
# 202 "C:/esp/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a10
 extui a10,a10,13,1
# 0 "" 2
#NO_APP
.LBE9:
.LBE8:
	.loc 1 92 0
	movi.n	a12, 0x18
	movi.n	a11, 0x14
	call8	intr_matrix_set
.LVL5:
	.loc 1 96 0
	mov.n	a10, a2
	call8	xt_ints_on
.LVL6:
	retw.n
.LFE14:
	.size	esp_int_wdt_init, .-esp_int_wdt_init
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
	.uleb128 0x20
	.align	4
.LEFDE2:
	.text
.Letext0:
	.file 3 "C:/esp/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "C:/esp/esp-idf/components/newlib/include/stdint.h"
	.file 5 "C:/esp/esp-idf/components/soc/esp32/include/soc/timer_group_struct.h"
	.file 6 "C:/esp/esp-idf/components/driver/include/driver/timer.h"
	.file 7 "C:/esp/esp-idf/components/esp32/include/esp_freertos_hooks.h"
	.file 8 "C:/esp/esp-idf/components/freertos/include/freertos/xtensa_api.h"
	.file 9 "C:/esp/esp-idf/components/esp32/include/rom/ets_sys.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xa4e
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF106
	.byte	0xc
	.4byte	.LASF107
	.4byte	.LASF108
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
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x4
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
	.byte	0x5
	.byte	0x18
	.4byte	0x117
	.uleb128 0x6
	.4byte	.LASF14
	.byte	0x5
	.byte	0x19
	.4byte	0x68
	.byte	0x4
	.byte	0xa
	.byte	0x16
	.byte	0
	.uleb128 0x6
	.4byte	.LASF15
	.byte	0x5
	.byte	0x1a
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x6
	.4byte	.LASF16
	.byte	0x5
	.byte	0x1b
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0x5
	.byte	0x1c
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x6
	.4byte	.LASF18
	.byte	0x5
	.byte	0x1d
	.4byte	0x68
	.byte	0x4
	.byte	0x10
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0x5
	.byte	0x1e
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.4byte	.LASF20
	.byte	0x5
	.byte	0x1f
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.4byte	.LASF21
	.byte	0x5
	.byte	0x20
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.byte	0x5
	.byte	0x17
	.4byte	0x130
	.uleb128 0x8
	.4byte	0x96
	.uleb128 0x9
	.string	"val"
	.byte	0x5
	.byte	0x22
	.4byte	0x68
	.byte	0
	.uleb128 0x5
	.byte	0x24
	.byte	0x5
	.byte	0x16
	.4byte	0x1a5
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0x5
	.byte	0x23
	.4byte	0x117
	.byte	0
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0x5
	.byte	0x24
	.4byte	0x68
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0x5
	.byte	0x25
	.4byte	0x68
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0x5
	.byte	0x26
	.4byte	0x68
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0x5
	.byte	0x27
	.4byte	0x68
	.byte	0x10
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x5
	.byte	0x28
	.4byte	0x68
	.byte	0x14
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0x5
	.byte	0x29
	.4byte	0x68
	.byte	0x18
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0x5
	.byte	0x2a
	.4byte	0x68
	.byte	0x1c
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0x5
	.byte	0x2b
	.4byte	0x68
	.byte	0x20
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.byte	0x2e
	.4byte	0x252
	.uleb128 0x6
	.4byte	.LASF14
	.byte	0x5
	.byte	0x2f
	.4byte	0x68
	.byte	0x4
	.byte	0xe
	.byte	0x12
	.byte	0
	.uleb128 0x6
	.4byte	.LASF31
	.byte	0x5
	.byte	0x30
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x6
	.4byte	.LASF32
	.byte	0x5
	.byte	0x31
	.4byte	0x68
	.byte	0x4
	.byte	0x3
	.byte	0xe
	.byte	0
	.uleb128 0x6
	.4byte	.LASF33
	.byte	0x5
	.byte	0x32
	.4byte	0x68
	.byte	0x4
	.byte	0x3
	.byte	0xb
	.byte	0
	.uleb128 0x6
	.4byte	.LASF16
	.byte	0x5
	.byte	0x33
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0x5
	.byte	0x34
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0x6
	.4byte	.LASF34
	.byte	0x5
	.byte	0x35
	.4byte	0x68
	.byte	0x4
	.byte	0x2
	.byte	0x7
	.byte	0
	.uleb128 0x6
	.4byte	.LASF35
	.byte	0x5
	.byte	0x36
	.4byte	0x68
	.byte	0x4
	.byte	0x2
	.byte	0x5
	.byte	0
	.uleb128 0x6
	.4byte	.LASF36
	.byte	0x5
	.byte	0x37
	.4byte	0x68
	.byte	0x4
	.byte	0x2
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.4byte	.LASF37
	.byte	0x5
	.byte	0x38
	.4byte	0x68
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.string	"en"
	.byte	0x5
	.byte	0x39
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.byte	0x5
	.byte	0x2d
	.4byte	0x26b
	.uleb128 0x8
	.4byte	0x1a5
	.uleb128 0x9
	.string	"val"
	.byte	0x5
	.byte	0x3b
	.4byte	0x68
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.byte	0x3e
	.4byte	0x292
	.uleb128 0x6
	.4byte	.LASF14
	.byte	0x5
	.byte	0x3f
	.4byte	0x68
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.4byte	.LASF38
	.byte	0x5
	.byte	0x40
	.4byte	0x68
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.byte	0x5
	.byte	0x3d
	.4byte	0x2ab
	.uleb128 0x8
	.4byte	0x26b
	.uleb128 0x9
	.string	"val"
	.byte	0x5
	.byte	0x42
	.4byte	0x68
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.byte	0x4b
	.4byte	0x30e
	.uleb128 0x6
	.4byte	.LASF14
	.byte	0x5
	.byte	0x4c
	.4byte	0x68
	.byte	0x4
	.byte	0xc
	.byte	0x14
	.byte	0
	.uleb128 0x6
	.4byte	.LASF39
	.byte	0x5
	.byte	0x4d
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x6
	.4byte	.LASF40
	.byte	0x5
	.byte	0x4e
	.4byte	0x68
	.byte	0x4
	.byte	0x2
	.byte	0x11
	.byte	0
	.uleb128 0xb
	.string	"rdy"
	.byte	0x5
	.byte	0x4f
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.string	"max"
	.byte	0x5
	.byte	0x50
	.4byte	0x68
	.byte	0x4
	.byte	0xf
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.4byte	.LASF41
	.byte	0x5
	.byte	0x51
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.byte	0x5
	.byte	0x4a
	.4byte	0x327
	.uleb128 0x8
	.4byte	0x2ab
	.uleb128 0x9
	.string	"val"
	.byte	0x5
	.byte	0x53
	.4byte	0x68
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.byte	0x56
	.4byte	0x34e
	.uleb128 0x6
	.4byte	.LASF14
	.byte	0x5
	.byte	0x57
	.4byte	0x68
	.byte	0x4
	.byte	0x7
	.byte	0x19
	.byte	0
	.uleb128 0x6
	.4byte	.LASF42
	.byte	0x5
	.byte	0x58
	.4byte	0x68
	.byte	0x4
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.byte	0x5
	.byte	0x55
	.4byte	0x367
	.uleb128 0x8
	.4byte	0x327
	.uleb128 0x9
	.string	"val"
	.byte	0x5
	.byte	0x5a
	.4byte	0x68
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.byte	0x5d
	.4byte	0x414
	.uleb128 0x6
	.4byte	.LASF14
	.byte	0x5
	.byte	0x5e
	.4byte	0x68
	.byte	0x4
	.byte	0x7
	.byte	0x19
	.byte	0
	.uleb128 0x6
	.4byte	.LASF43
	.byte	0x5
	.byte	0x5f
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.4byte	.LASF44
	.byte	0x5
	.byte	0x60
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x6
	.4byte	.LASF45
	.byte	0x5
	.byte	0x61
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x6
	.4byte	.LASF15
	.byte	0x5
	.byte	0x62
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x6
	.4byte	.LASF16
	.byte	0x5
	.byte	0x63
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0x5
	.byte	0x64
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x6
	.4byte	.LASF18
	.byte	0x5
	.byte	0x65
	.4byte	0x68
	.byte	0x4
	.byte	0x10
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0x5
	.byte	0x66
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.4byte	.LASF20
	.byte	0x5
	.byte	0x67
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.string	"en"
	.byte	0x5
	.byte	0x68
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.byte	0x5
	.byte	0x5c
	.4byte	0x42d
	.uleb128 0x8
	.4byte	0x367
	.uleb128 0x9
	.string	"val"
	.byte	0x5
	.byte	0x6a
	.4byte	0x68
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.byte	0x6d
	.4byte	0x454
	.uleb128 0x6
	.4byte	.LASF14
	.byte	0x5
	.byte	0x6e
	.4byte	0x68
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0
	.uleb128 0x6
	.4byte	.LASF46
	.byte	0x5
	.byte	0x6f
	.4byte	0x68
	.byte	0x4
	.byte	0x1a
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.byte	0x5
	.byte	0x6c
	.4byte	0x46d
	.uleb128 0x8
	.4byte	0x42d
	.uleb128 0x9
	.string	"val"
	.byte	0x5
	.byte	0x71
	.4byte	0x68
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.byte	0x7c
	.4byte	0x4bf
	.uleb128 0xb
	.string	"t0"
	.byte	0x5
	.byte	0x7d
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.string	"t1"
	.byte	0x5
	.byte	0x7e
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xb
	.string	"wdt"
	.byte	0x5
	.byte	0x7f
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x6
	.4byte	.LASF47
	.byte	0x5
	.byte	0x80
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x6
	.4byte	.LASF48
	.byte	0x5
	.byte	0x81
	.4byte	0x68
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.byte	0x5
	.byte	0x7b
	.4byte	0x4d8
	.uleb128 0x8
	.4byte	0x46d
	.uleb128 0x9
	.string	"val"
	.byte	0x5
	.byte	0x83
	.4byte	0x68
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.byte	0x86
	.4byte	0x52a
	.uleb128 0xb
	.string	"t0"
	.byte	0x5
	.byte	0x87
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.string	"t1"
	.byte	0x5
	.byte	0x88
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xb
	.string	"wdt"
	.byte	0x5
	.byte	0x89
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x6
	.4byte	.LASF47
	.byte	0x5
	.byte	0x8a
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x6
	.4byte	.LASF48
	.byte	0x5
	.byte	0x8b
	.4byte	0x68
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.byte	0x5
	.byte	0x85
	.4byte	0x543
	.uleb128 0x8
	.4byte	0x4d8
	.uleb128 0x9
	.string	"val"
	.byte	0x5
	.byte	0x8d
	.4byte	0x68
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.byte	0x90
	.4byte	0x595
	.uleb128 0xb
	.string	"t0"
	.byte	0x5
	.byte	0x91
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.string	"t1"
	.byte	0x5
	.byte	0x92
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xb
	.string	"wdt"
	.byte	0x5
	.byte	0x93
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x6
	.4byte	.LASF47
	.byte	0x5
	.byte	0x94
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x6
	.4byte	.LASF48
	.byte	0x5
	.byte	0x95
	.4byte	0x68
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.byte	0x5
	.byte	0x8f
	.4byte	0x5ae
	.uleb128 0x8
	.4byte	0x543
	.uleb128 0x9
	.string	"val"
	.byte	0x5
	.byte	0x97
	.4byte	0x68
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.byte	0x9a
	.4byte	0x600
	.uleb128 0xb
	.string	"t0"
	.byte	0x5
	.byte	0x9b
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.string	"t1"
	.byte	0x5
	.byte	0x9c
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xb
	.string	"wdt"
	.byte	0x5
	.byte	0x9d
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x6
	.4byte	.LASF47
	.byte	0x5
	.byte	0x9e
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x6
	.4byte	.LASF48
	.byte	0x5
	.byte	0x9f
	.4byte	0x68
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.byte	0x5
	.byte	0x99
	.4byte	0x619
	.uleb128 0x8
	.4byte	0x5ae
	.uleb128 0x9
	.string	"val"
	.byte	0x5
	.byte	0xa1
	.4byte	0x68
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.byte	0xb8
	.4byte	0x640
	.uleb128 0x6
	.4byte	.LASF49
	.byte	0x5
	.byte	0xb9
	.4byte	0x68
	.byte	0x4
	.byte	0x1c
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.4byte	.LASF50
	.byte	0x5
	.byte	0xba
	.4byte	0x68
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.byte	0x5
	.byte	0xb7
	.4byte	0x659
	.uleb128 0x8
	.4byte	0x619
	.uleb128 0x9
	.string	"val"
	.byte	0x5
	.byte	0xbc
	.4byte	0x68
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.byte	0xbf
	.4byte	0x67f
	.uleb128 0x6
	.4byte	.LASF14
	.byte	0x5
	.byte	0xc0
	.4byte	0x68
	.byte	0x4
	.byte	0x1f
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.string	"en"
	.byte	0x5
	.byte	0xc1
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.byte	0x5
	.byte	0xbe
	.4byte	0x698
	.uleb128 0x8
	.4byte	0x659
	.uleb128 0x9
	.string	"val"
	.byte	0x5
	.byte	0xc3
	.4byte	0x68
	.byte	0
	.uleb128 0xc
	.2byte	0x100
	.byte	0x5
	.byte	0x15
	.4byte	0x8d6
	.uleb128 0xa
	.4byte	.LASF51
	.byte	0x5
	.byte	0x2c
	.4byte	0x8d6
	.byte	0
	.uleb128 0xa
	.4byte	.LASF52
	.byte	0x5
	.byte	0x3c
	.4byte	0x252
	.byte	0x48
	.uleb128 0xa
	.4byte	.LASF53
	.byte	0x5
	.byte	0x43
	.4byte	0x292
	.byte	0x4c
	.uleb128 0xa
	.4byte	.LASF54
	.byte	0x5
	.byte	0x44
	.4byte	0x68
	.byte	0x50
	.uleb128 0xa
	.4byte	.LASF55
	.byte	0x5
	.byte	0x45
	.4byte	0x68
	.byte	0x54
	.uleb128 0xa
	.4byte	.LASF56
	.byte	0x5
	.byte	0x46
	.4byte	0x68
	.byte	0x58
	.uleb128 0xa
	.4byte	.LASF57
	.byte	0x5
	.byte	0x47
	.4byte	0x68
	.byte	0x5c
	.uleb128 0xa
	.4byte	.LASF58
	.byte	0x5
	.byte	0x48
	.4byte	0x68
	.byte	0x60
	.uleb128 0xa
	.4byte	.LASF59
	.byte	0x5
	.byte	0x49
	.4byte	0x68
	.byte	0x64
	.uleb128 0xa
	.4byte	.LASF60
	.byte	0x5
	.byte	0x54
	.4byte	0x30e
	.byte	0x68
	.uleb128 0xa
	.4byte	.LASF61
	.byte	0x5
	.byte	0x5b
	.4byte	0x34e
	.byte	0x6c
	.uleb128 0xa
	.4byte	.LASF62
	.byte	0x5
	.byte	0x6b
	.4byte	0x414
	.byte	0x70
	.uleb128 0xa
	.4byte	.LASF63
	.byte	0x5
	.byte	0x72
	.4byte	0x454
	.byte	0x74
	.uleb128 0xa
	.4byte	.LASF64
	.byte	0x5
	.byte	0x73
	.4byte	0x68
	.byte	0x78
	.uleb128 0xa
	.4byte	.LASF65
	.byte	0x5
	.byte	0x74
	.4byte	0x68
	.byte	0x7c
	.uleb128 0xa
	.4byte	.LASF66
	.byte	0x5
	.byte	0x75
	.4byte	0x68
	.byte	0x80
	.uleb128 0xa
	.4byte	.LASF67
	.byte	0x5
	.byte	0x76
	.4byte	0x68
	.byte	0x84
	.uleb128 0xa
	.4byte	.LASF68
	.byte	0x5
	.byte	0x77
	.4byte	0x68
	.byte	0x88
	.uleb128 0xa
	.4byte	.LASF69
	.byte	0x5
	.byte	0x78
	.4byte	0x68
	.byte	0x8c
	.uleb128 0xa
	.4byte	.LASF70
	.byte	0x5
	.byte	0x79
	.4byte	0x68
	.byte	0x90
	.uleb128 0xa
	.4byte	.LASF71
	.byte	0x5
	.byte	0x7a
	.4byte	0x68
	.byte	0x94
	.uleb128 0xa
	.4byte	.LASF72
	.byte	0x5
	.byte	0x84
	.4byte	0x4bf
	.byte	0x98
	.uleb128 0xa
	.4byte	.LASF73
	.byte	0x5
	.byte	0x8e
	.4byte	0x52a
	.byte	0x9c
	.uleb128 0xa
	.4byte	.LASF74
	.byte	0x5
	.byte	0x98
	.4byte	0x595
	.byte	0xa0
	.uleb128 0xa
	.4byte	.LASF75
	.byte	0x5
	.byte	0xa2
	.4byte	0x600
	.byte	0xa4
	.uleb128 0xa
	.4byte	.LASF76
	.byte	0x5
	.byte	0xa3
	.4byte	0x68
	.byte	0xa8
	.uleb128 0xa
	.4byte	.LASF77
	.byte	0x5
	.byte	0xa4
	.4byte	0x68
	.byte	0xac
	.uleb128 0xa
	.4byte	.LASF78
	.byte	0x5
	.byte	0xa5
	.4byte	0x68
	.byte	0xb0
	.uleb128 0xa
	.4byte	.LASF79
	.byte	0x5
	.byte	0xa6
	.4byte	0x68
	.byte	0xb4
	.uleb128 0xa
	.4byte	.LASF80
	.byte	0x5
	.byte	0xa7
	.4byte	0x68
	.byte	0xb8
	.uleb128 0xa
	.4byte	.LASF81
	.byte	0x5
	.byte	0xa8
	.4byte	0x68
	.byte	0xbc
	.uleb128 0xa
	.4byte	.LASF82
	.byte	0x5
	.byte	0xa9
	.4byte	0x68
	.byte	0xc0
	.uleb128 0xa
	.4byte	.LASF83
	.byte	0x5
	.byte	0xaa
	.4byte	0x68
	.byte	0xc4
	.uleb128 0xa
	.4byte	.LASF84
	.byte	0x5
	.byte	0xab
	.4byte	0x68
	.byte	0xc8
	.uleb128 0xa
	.4byte	.LASF85
	.byte	0x5
	.byte	0xac
	.4byte	0x68
	.byte	0xcc
	.uleb128 0xa
	.4byte	.LASF86
	.byte	0x5
	.byte	0xad
	.4byte	0x68
	.byte	0xd0
	.uleb128 0xa
	.4byte	.LASF87
	.byte	0x5
	.byte	0xae
	.4byte	0x68
	.byte	0xd4
	.uleb128 0xa
	.4byte	.LASF88
	.byte	0x5
	.byte	0xaf
	.4byte	0x68
	.byte	0xd8
	.uleb128 0xa
	.4byte	.LASF89
	.byte	0x5
	.byte	0xb0
	.4byte	0x68
	.byte	0xdc
	.uleb128 0xa
	.4byte	.LASF90
	.byte	0x5
	.byte	0xb1
	.4byte	0x68
	.byte	0xe0
	.uleb128 0xa
	.4byte	.LASF91
	.byte	0x5
	.byte	0xb2
	.4byte	0x68
	.byte	0xe4
	.uleb128 0xa
	.4byte	.LASF92
	.byte	0x5
	.byte	0xb3
	.4byte	0x68
	.byte	0xe8
	.uleb128 0xa
	.4byte	.LASF93
	.byte	0x5
	.byte	0xb4
	.4byte	0x68
	.byte	0xec
	.uleb128 0xa
	.4byte	.LASF94
	.byte	0x5
	.byte	0xb5
	.4byte	0x68
	.byte	0xf0
	.uleb128 0xa
	.4byte	.LASF95
	.byte	0x5
	.byte	0xb6
	.4byte	0x68
	.byte	0xf4
	.uleb128 0xa
	.4byte	.LASF96
	.byte	0x5
	.byte	0xbd
	.4byte	0x640
	.byte	0xf8
	.uleb128 0xd
	.string	"clk"
	.byte	0x5
	.byte	0xc4
	.4byte	0x67f
	.byte	0xfc
	.byte	0
	.uleb128 0xe
	.4byte	0x130
	.4byte	0x8e6
	.uleb128 0xf
	.4byte	0x7a
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF97
	.byte	0x5
	.byte	0xc5
	.4byte	0x8f1
	.uleb128 0x10
	.4byte	0x698
	.uleb128 0x11
	.byte	0x4
	.4byte	0x53
	.byte	0x6
	.byte	0x21
	.4byte	0x915
	.uleb128 0x12
	.4byte	.LASF98
	.byte	0
	.uleb128 0x12
	.4byte	.LASF99
	.byte	0x1
	.uleb128 0x12
	.4byte	.LASF100
	.byte	0x2
	.byte	0
	.uleb128 0x13
	.4byte	.LASF109
	.byte	0x2
	.byte	0xc8
	.4byte	0x68
	.byte	0x3
	.4byte	0x930
	.uleb128 0x14
	.string	"id"
	.byte	0x2
	.byte	0xc9
	.4byte	0x41
	.byte	0
	.uleb128 0x15
	.4byte	.LASF110
	.byte	0x1
	.byte	0x3e
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x969
	.uleb128 0x16
	.4byte	0x915
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.byte	0x1
	.byte	0x3f
	.uleb128 0x17
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.uleb128 0x18
	.4byte	0x925
	.4byte	.LLST0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LASF111
	.byte	0x1
	.byte	0x49
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa0d
	.uleb128 0x1a
	.4byte	0x915
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.byte	0x1
	.byte	0x5c
	.4byte	0x9a1
	.uleb128 0x17
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.uleb128 0x1b
	.4byte	0x925
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL2
	.4byte	0xa18
	.4byte	0x9b9
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL3
	.4byte	0xa24
	.4byte	0x9d0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	tick_hook
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL4
	.4byte	0xa2f
	.4byte	0x9e4
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL5
	.4byte	0xa3a
	.4byte	0x9fc
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x44
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x48
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL6
	.4byte	0xa46
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF112
	.byte	0x5
	.byte	0xc7
	.4byte	0x8e6
	.uleb128 0x20
	.4byte	.LASF101
	.4byte	.LASF101
	.byte	0x6
	.2byte	0x13b
	.uleb128 0x21
	.4byte	.LASF102
	.4byte	.LASF102
	.byte	0x7
	.byte	0x38
	.uleb128 0x21
	.4byte	.LASF103
	.4byte	.LASF103
	.byte	0x8
	.byte	0x5f
	.uleb128 0x20
	.4byte	.LASF104
	.4byte	.LASF104
	.byte	0x9
	.2byte	0x212
	.uleb128 0x21
	.4byte	.LASF105
	.4byte	.LASF105
	.byte	0x8
	.byte	0x54
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x5
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
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
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x1b
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.byte	0x58
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
.LASF69:
	.string	"lactloadlo"
.LASF51:
	.string	"hw_timer"
.LASF28:
	.string	"load_low"
.LASF27:
	.string	"alarm_high"
.LASF82:
	.string	"reserved_c0"
.LASF36:
	.string	"stg1"
.LASF19:
	.string	"autoreload"
.LASF108:
	.string	"C:\\\\esp\\\\esp32-ArkPOS2\\\\ArkPOS2-esp\\\\build\\\\esp32"
.LASF15:
	.string	"alarm_en"
.LASF84:
	.string	"reserved_c8"
.LASF72:
	.string	"int_ena"
.LASF2:
	.string	"short int"
.LASF83:
	.string	"reserved_c4"
.LASF10:
	.string	"sizetype"
.LASF24:
	.string	"cnt_high"
.LASF109:
	.string	"xPortGetCoreID"
.LASF52:
	.string	"wdt_config0"
.LASF53:
	.string	"wdt_config1"
.LASF54:
	.string	"wdt_config2"
.LASF55:
	.string	"wdt_config3"
.LASF56:
	.string	"wdt_config4"
.LASF57:
	.string	"wdt_config5"
.LASF5:
	.string	"long long int"
.LASF7:
	.string	"__uint32_t"
.LASF66:
	.string	"lactupdate"
.LASF64:
	.string	"lactlo"
.LASF60:
	.string	"rtc_cali_cfg"
.LASF49:
	.string	"date"
.LASF97:
	.string	"timg_dev_t"
.LASF73:
	.string	"int_raw"
.LASF22:
	.string	"config"
.LASF40:
	.string	"clk_sel"
.LASF21:
	.string	"enable"
.LASF61:
	.string	"rtc_cali_cfg1"
.LASF37:
	.string	"stg0"
.LASF44:
	.string	"cpst_en"
.LASF35:
	.string	"stg2"
.LASF34:
	.string	"stg3"
.LASF45:
	.string	"lac_en"
.LASF59:
	.string	"wdt_wprotect"
.LASF102:
	.string	"esp_register_freertos_tick_hook"
.LASF75:
	.string	"int_clr_timers"
.LASF20:
	.string	"increase"
.LASF86:
	.string	"reserved_d0"
.LASF47:
	.string	"lact"
.LASF87:
	.string	"reserved_d4"
.LASF17:
	.string	"edge_int_en"
.LASF6:
	.string	"long long unsigned int"
.LASF62:
	.string	"lactconfig"
.LASF88:
	.string	"reserved_d8"
.LASF25:
	.string	"update"
.LASF71:
	.string	"lactload"
.LASF9:
	.string	"long int"
.LASF14:
	.string	"reserved0"
.LASF101:
	.string	"timer_group_intr_enable"
.LASF23:
	.string	"cnt_low"
.LASF48:
	.string	"reserved4"
.LASF107:
	.string	"C:/esp/esp-idf/components/esp32/int_wdt.c"
.LASF32:
	.string	"sys_reset_length"
.LASF31:
	.string	"flashboot_mod_en"
.LASF58:
	.string	"wdt_feed"
.LASF100:
	.string	"TIMER_GROUP_MAX"
.LASF85:
	.string	"reserved_cc"
.LASF1:
	.string	"unsigned char"
.LASF50:
	.string	"reserved28"
.LASF105:
	.string	"xt_ints_on"
.LASF106:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF89:
	.string	"reserved_dc"
.LASF26:
	.string	"alarm_low"
.LASF0:
	.string	"signed char"
.LASF78:
	.string	"reserved_b0"
.LASF8:
	.string	"uint32_t"
.LASF4:
	.string	"unsigned int"
.LASF76:
	.string	"reserved_a8"
.LASF91:
	.string	"reserved_e4"
.LASF98:
	.string	"TIMER_GROUP_0"
.LASF38:
	.string	"clk_prescale"
.LASF41:
	.string	"start"
.LASF92:
	.string	"reserved_e8"
.LASF29:
	.string	"load_high"
.LASF12:
	.string	"char"
.LASF3:
	.string	"short unsigned int"
.LASF96:
	.string	"timg_date"
.LASF111:
	.string	"esp_int_wdt_init"
.LASF13:
	.string	"_Bool"
.LASF90:
	.string	"reserved_e0"
.LASF67:
	.string	"lactalarmlo"
.LASF77:
	.string	"reserved_ac"
.LASF16:
	.string	"level_int_en"
.LASF39:
	.string	"start_cycling"
.LASF46:
	.string	"step_len"
.LASF11:
	.string	"long unsigned int"
.LASF103:
	.string	"xt_ints_off"
.LASF43:
	.string	"rtc_only"
.LASF104:
	.string	"intr_matrix_set"
.LASF93:
	.string	"reserved_ec"
.LASF99:
	.string	"TIMER_GROUP_1"
.LASF79:
	.string	"reserved_b4"
.LASF80:
	.string	"reserved_b8"
.LASF70:
	.string	"lactloadhi"
.LASF110:
	.string	"tick_hook"
.LASF68:
	.string	"lactalarmhi"
.LASF94:
	.string	"reserved_f0"
.LASF112:
	.string	"TIMERG1"
.LASF95:
	.string	"reserved_f4"
.LASF74:
	.string	"int_st_timers"
.LASF63:
	.string	"lactrtc"
.LASF30:
	.string	"reload"
.LASF33:
	.string	"cpu_reset_length"
.LASF81:
	.string	"reserved_bc"
.LASF42:
	.string	"value"
.LASF18:
	.string	"divider"
.LASF65:
	.string	"lacthi"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-73-ge28a011) 5.2.0"
