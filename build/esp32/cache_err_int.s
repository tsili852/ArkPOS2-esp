	.file	"cache_err_int.c"
	.text
.Ltext0:
	.section	.text.esp_cache_err_int_init,"ax",@progbits
	.literal_position
	.literal .LC0, 33554432
	.literal .LC1, 1072694688
	.literal .LC2, 1032192
	.align	4
	.global	esp_cache_err_int_init
	.type	esp_cache_err_int_init, @function
esp_cache_err_int_init:
.LFB11:
	.file 1 "C:/esp/esp-idf/components/esp32/cache_err_int.c"
	.loc 1 35 0
	entry	sp, 32
.LCFI0:
.LBB12:
.LBB13:
	.file 2 "C:/esp/esp-idf/components/freertos/include/freertos/portable.h"
	.loc 2 202 0
#APP
# 202 "C:/esp/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a2
 extui a2,a2,13,1
# 0 "" 2
#NO_APP
.LBE13:
.LBE12:
	.loc 1 37 0
	l32r	a10, .LC0
	call8	xt_ints_off
.LVL0:
	.loc 1 43 0
	movi.n	a12, 0x19
	movi.n	a11, 0x44
	mov.n	a10, a2
	call8	intr_matrix_set
.LVL1:
	.loc 1 54 0
	bnez.n	a2, .L2
.LVL2:
.LBB14:
.LBB15:
	.file 3 "C:/esp/esp-idf/components/soc/esp32/include/soc/dport_access.h"
	.loc 3 102 0
	l32r	a8, .LC1
	memw
	l32i.n	a9, a8, 0
.LVL3:
.LBE15:
.LBE14:
	.loc 1 55 0
	l32r	a2, .LC2
	or	a2, a9, a2
	memw
	s32i.n	a2, a8, 0
	j	.L3
.LVL4:
.L2:
.LBB16:
.LBB17:
	.loc 3 102 0
	l32r	a8, .LC1
	memw
	l32i.n	a9, a8, 0
.LVL5:
.LBE17:
.LBE16:
	.loc 1 63 0
	movi.n	a2, 0x3f
	or	a2, a9, a2
	memw
	s32i.n	a2, a8, 0
.LVL6:
.L3:
	.loc 1 71 0
	l32r	a10, .LC0
	call8	xt_ints_on
.LVL7:
	retw.n
.LFE11:
	.size	esp_cache_err_int_init, .-esp_cache_err_int_init
	.section	.iram1,"ax",@progbits
	.literal_position
	.literal .LC3, 1072694268
	.literal .LC4, 32256
	.literal .LC5, 1072694308
	.align	4
	.global	esp_cache_err_get_cpuid
	.type	esp_cache_err_get_cpuid, @function
esp_cache_err_get_cpuid:
.LFB12:
	.loc 1 75 0
	entry	sp, 32
.LCFI1:
	.loc 1 76 0
	call8	esp_dport_access_int_pause
.LVL8:
.LBB18:
.LBB19:
	.loc 3 102 0
	l32r	a8, .LC3
	memw
	l32i.n	a9, a8, 0
.LVL9:
.LBE19:
.LBE18:
	.loc 1 85 0
	l32r	a8, .LC4
	bany	a9, a8, .L6
.LVL10:
.LBB20:
.LBB21:
	.loc 3 102 0
	l32r	a2, .LC5
	memw
	l32i.n	a8, a2, 0
.LVL11:
.LBE21:
.LBE20:
	.loc 1 97 0
	l32r	a2, .LC4
	bnone	a8, a2, .L7
	.loc 1 98 0
	movi.n	a2, 1
	retw.n
.LVL12:
.L6:
	.loc 1 86 0
	movi.n	a2, 0
	retw.n
.LVL13:
.L7:
	.loc 1 100 0
	movi.n	a2, -1
	.loc 1 101 0
	retw.n
.LFE12:
	.size	esp_cache_err_get_cpuid, .-esp_cache_err_get_cpuid
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
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI0-.LFB11
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI1-.LFB12
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
	.text
.Letext0:
	.file 4 "C:/esp/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 5 "C:/esp/esp-idf/components/newlib/include/stdint.h"
	.file 6 "C:/esp/esp-idf/components/freertos/include/freertos/xtensa_api.h"
	.file 7 "C:/esp/esp-idf/components/esp32/include/rom/ets_sys.h"
	.file 8 "C:/esp/esp-idf/components/esp32/include/esp_dport_access.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x28d
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF21
	.byte	0xc
	.4byte	.LASF22
	.4byte	.LASF23
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
	.byte	0x4
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
	.byte	0x5
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
	.4byte	.LASF24
	.byte	0x2
	.byte	0xc8
	.4byte	0x68
	.byte	0x3
	.4byte	0xb1
	.uleb128 0x6
	.string	"id"
	.byte	0x2
	.byte	0xc9
	.4byte	0x41
	.byte	0
	.uleb128 0x7
	.4byte	.LASF25
	.byte	0x3
	.byte	0x61
	.4byte	0x68
	.byte	0x3
	.4byte	0xd8
	.uleb128 0x8
	.4byte	.LASF26
	.byte	0x3
	.byte	0x61
	.4byte	0x68
	.uleb128 0x6
	.string	"val"
	.byte	0x3
	.byte	0x63
	.4byte	0x68
	.byte	0
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0x1
	.byte	0x22
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c1
	.uleb128 0xa
	.4byte	.LASF14
	.byte	0x1
	.byte	0x24
	.4byte	0x68
	.uleb128 0xb
	.4byte	0x96
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.byte	0x1
	.byte	0x24
	.4byte	0x11b
	.uleb128 0xc
	.4byte	.LBB13
	.4byte	.LBE13-.LBB13
	.uleb128 0xd
	.4byte	0xa6
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0xb1
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.byte	0x1
	.byte	0x37
	.4byte	0x14b
	.uleb128 0xe
	.4byte	0xc1
	.4byte	.LLST0
	.uleb128 0xc
	.4byte	.LBB15
	.4byte	.LBE15-.LBB15
	.uleb128 0xf
	.4byte	0xcc
	.4byte	.LLST1
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0xb1
	.4byte	.LBB16
	.4byte	.LBE16-.LBB16
	.byte	0x1
	.byte	0x3f
	.4byte	0x17b
	.uleb128 0xe
	.4byte	0xc1
	.4byte	.LLST2
	.uleb128 0xc
	.4byte	.LBB17
	.4byte	.LBE17-.LBB17
	.uleb128 0xf
	.4byte	0xcc
	.4byte	.LLST3
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	.LVL0
	.4byte	0x263
	.4byte	0x190
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x40
	.byte	0x45
	.byte	0x24
	.byte	0
	.uleb128 0x10
	.4byte	.LVL1
	.4byte	0x26e
	.4byte	0x1af
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x44
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x49
	.byte	0
	.uleb128 0x12
	.4byte	.LVL7
	.4byte	0x27a
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x40
	.byte	0x45
	.byte	0x24
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	.LASF28
	.byte	0x1
	.byte	0x4a
	.4byte	0x41
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x25e
	.uleb128 0x14
	.4byte	.LASF15
	.byte	0x1
	.byte	0x4d
	.4byte	0x25e
	.2byte	0x7e00
	.uleb128 0x15
	.4byte	.LASF16
	.byte	0x1
	.byte	0x59
	.4byte	0x25e
	.4byte	.LLST4
	.uleb128 0xb
	.4byte	0xb1
	.4byte	.LBB18
	.4byte	.LBE18-.LBB18
	.byte	0x1
	.byte	0x55
	.4byte	0x224
	.uleb128 0x16
	.4byte	0xc1
	.4byte	0x3ff003fc
	.uleb128 0xc
	.4byte	.LBB19
	.4byte	.LBE19-.LBB19
	.uleb128 0x17
	.4byte	0xcc
	.uleb128 0x1
	.byte	0x59
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0xb1
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.byte	0x1
	.byte	0x61
	.4byte	0x254
	.uleb128 0xe
	.4byte	0xc1
	.4byte	.LLST5
	.uleb128 0xc
	.4byte	.LBB21
	.4byte	.LBE21-.LBB21
	.uleb128 0xf
	.4byte	0xcc
	.4byte	.LLST6
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL8
	.4byte	0x285
	.byte	0
	.uleb128 0x19
	.4byte	0x68
	.uleb128 0x1a
	.4byte	.LASF17
	.4byte	.LASF17
	.byte	0x6
	.byte	0x5f
	.uleb128 0x1b
	.4byte	.LASF18
	.4byte	.LASF18
	.byte	0x7
	.2byte	0x212
	.uleb128 0x1a
	.4byte	.LASF19
	.4byte	.LASF19
	.byte	0x6
	.byte	0x54
	.uleb128 0x1a
	.4byte	.LASF20
	.4byte	.LASF20
	.byte	0x8
	.byte	0x1b
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x14
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
	.uleb128 0x5
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff005a0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL4
	.4byte	.LVL6
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff005a0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x4
	.byte	0xa
	.2byte	0x7e00
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xa
	.2byte	0x7e00
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff00424
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LFE12
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff00424
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL13
	.4byte	.LFE12
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
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF25:
	.string	"DPORT_READ_PERI_REG"
.LASF28:
	.string	"esp_cache_err_get_cpuid"
.LASF3:
	.string	"short unsigned int"
.LASF22:
	.string	"C:/esp/esp-idf/components/esp32/cache_err_int.c"
.LASF1:
	.string	"unsigned char"
.LASF7:
	.string	"__uint32_t"
.LASF14:
	.string	"core_id"
.LASF26:
	.string	"addr"
.LASF18:
	.string	"intr_matrix_set"
.LASF20:
	.string	"esp_dport_access_int_pause"
.LASF11:
	.string	"long unsigned int"
.LASF2:
	.string	"short int"
.LASF23:
	.string	"C:\\\\esp\\\\ArkPOS2-esp\\\\build\\\\esp32"
.LASF4:
	.string	"unsigned int"
.LASF6:
	.string	"long long unsigned int"
.LASF21:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF10:
	.string	"sizetype"
.LASF5:
	.string	"long long int"
.LASF27:
	.string	"esp_cache_err_int_init"
.LASF12:
	.string	"char"
.LASF24:
	.string	"xPortGetCoreID"
.LASF17:
	.string	"xt_ints_off"
.LASF8:
	.string	"uint32_t"
.LASF9:
	.string	"long int"
.LASF19:
	.string	"xt_ints_on"
.LASF15:
	.string	"pro_mask"
.LASF0:
	.string	"signed char"
.LASF16:
	.string	"app_mask"
.LASF13:
	.string	"_Bool"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-61-gab8375a) 5.2.0"
