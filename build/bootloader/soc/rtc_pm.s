	.file	"rtc_pm.c"
	.text
.Ltext0:
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC3:
	.string	"0 && \"unsupported sleep mode\""
	.align	4
.LC6:
	.string	"C:/esp/esp-idf/components/soc/esp32/rtc_pm.c"
	.section	.text.pm_set_sleep_mode,"ax",@progbits
	.literal_position
	.literal .LC1, 16384
	.literal .LC2, 16777216
	.literal .LC4, .LC3
	.literal .LC5, __func__$1656
	.literal .LC7, .LC6
	.align	4
	.global	pm_set_sleep_mode
	.type	pm_set_sleep_mode, @function
pm_set_sleep_mode:
.LFB0:
	.file 1 "C:/esp/esp-idf/components/soc/esp32/rtc_pm.c"
	.loc 1 41 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 44 0
	call8	pm_mac_deinit
.LVL1:
	.loc 1 45 0
	call8	pm_check_mac_idle
.LVL2:
	beqz.n	a10, .L2
	.loc 1 46 0
	call8	pm_mac_init
.LVL3:
	.loc 1 47 0
	movi.n	a2, 1
.LVL4:
	retw.n
.LVL5:
.L2:
	.loc 1 53 0
	bnei	a2, 4, .L6
	.loc 1 56 0
	l32r	a8, .LC1
	movi	a10, 0x100
	or	a8, a10, a8
.LVL6:
	.loc 1 61 0
	l32r	a10, .LC2
.LVL7:
	or	a10, a8, a10
	call8	rtc_sleep_init
.LVL8:
	.loc 1 67 0
	movi.n	a2, 0
.LVL9:
	retw.n
.LVL10:
.L6:
	.loc 1 65 0
	l32r	a13, .LC4
	l32r	a12, .LC5
	movi.n	a11, 0x41
	l32r	a10, .LC7
	call8	__assert_func
.LVL11:
.LFE0:
	.size	pm_set_sleep_mode, .-pm_set_sleep_mode
	.section	.rodata.__func__$1656,"a",@progbits
	.align	4
	.type	__func__$1656, @object
	.size	__func__$1656, 18
__func__$1656:
	.string	"pm_set_sleep_mode"
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
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x4
	.4byte	.LCFI0-.LFB0
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
	.text
.Letext0:
	.file 2 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\machine\\_default_types.h"
	.file 3 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\stdint.h"
	.file 4 "C:/esp/esp-idf/components/soc/esp32/include/soc/rtc.h"
	.file 5 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\assert.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2ed
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF41
	.byte	0xc
	.4byte	.LASF42
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
	.4byte	0x4f
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
	.4byte	0x44
	.uleb128 0x5
	.byte	0x4
	.byte	0x4
	.2byte	0x17b
	.4byte	0x189
	.uleb128 0x6
	.4byte	.LASF9
	.byte	0x4
	.2byte	0x17c
	.4byte	0x64
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0
	.uleb128 0x6
	.4byte	.LASF10
	.byte	0x4
	.2byte	0x17d
	.4byte	0x64
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x6
	.4byte	.LASF11
	.byte	0x4
	.2byte	0x17e
	.4byte	0x64
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x6
	.4byte	.LASF12
	.byte	0x4
	.2byte	0x17f
	.4byte	0x64
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x6
	.4byte	.LASF13
	.byte	0x4
	.2byte	0x180
	.4byte	0x64
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x6
	.4byte	.LASF14
	.byte	0x4
	.2byte	0x181
	.4byte	0x64
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x6
	.4byte	.LASF15
	.byte	0x4
	.2byte	0x182
	.4byte	0x64
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.4byte	.LASF16
	.byte	0x4
	.2byte	0x183
	.4byte	0x64
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0x4
	.2byte	0x184
	.4byte	0x64
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x6
	.4byte	.LASF18
	.byte	0x4
	.2byte	0x185
	.4byte	0x64
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0x4
	.2byte	0x186
	.4byte	0x64
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x6
	.4byte	.LASF20
	.byte	0x4
	.2byte	0x187
	.4byte	0x64
	.byte	0x4
	.byte	0x3
	.byte	0x11
	.byte	0
	.uleb128 0x6
	.4byte	.LASF21
	.byte	0x4
	.2byte	0x188
	.4byte	0x64
	.byte	0x4
	.byte	0x3
	.byte	0xe
	.byte	0
	.uleb128 0x6
	.4byte	.LASF22
	.byte	0x4
	.2byte	0x189
	.4byte	0x64
	.byte	0x4
	.byte	0x3
	.byte	0xb
	.byte	0
	.uleb128 0x6
	.4byte	.LASF23
	.byte	0x4
	.2byte	0x18a
	.4byte	0x64
	.byte	0x4
	.byte	0x3
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.4byte	.LASF24
	.byte	0x4
	.2byte	0x18b
	.4byte	0x64
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x6
	.4byte	.LASF25
	.byte	0x4
	.2byte	0x18c
	.4byte	0x64
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	.LASF26
	.byte	0x4
	.2byte	0x18d
	.4byte	0x6f
	.uleb128 0x8
	.byte	0x4
	.4byte	0x4f
	.byte	0x1
	.byte	0x14
	.4byte	0x1a8
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF27
	.byte	0x1
	.byte	0x16
	.4byte	0x195
	.uleb128 0x8
	.byte	0x4
	.4byte	0x4f
	.byte	0x1
	.byte	0x18
	.4byte	0x1cc
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0
	.uleb128 0x9
	.4byte	.LASF30
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF31
	.byte	0x1
	.byte	0x1b
	.4byte	0x1b3
	.uleb128 0xa
	.4byte	.LASF43
	.byte	0x1
	.byte	0x28
	.4byte	0x1cc
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x288
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x1
	.byte	0x28
	.4byte	0x1a8
	.4byte	.LLST0
	.uleb128 0xc
	.4byte	.LASF33
	.byte	0x1
	.byte	0x28
	.4byte	0x28f
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xd
	.string	"cfg"
	.byte	0x1
	.byte	0x32
	.4byte	0x189
	.4byte	.LLST1
	.uleb128 0xe
	.4byte	.LASF44
	.4byte	0x2b3
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$1656
	.uleb128 0xf
	.4byte	.LVL1
	.4byte	0x2b8
	.uleb128 0xf
	.4byte	.LVL2
	.4byte	0x2c3
	.uleb128 0xf
	.4byte	.LVL3
	.4byte	0x2ce
	.uleb128 0x10
	.4byte	.LVL8
	.4byte	0x2d9
	.4byte	0x25c
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0xc
	.4byte	0x1004100
	.byte	0
	.uleb128 0x12
	.4byte	.LVL11
	.4byte	0x2e5
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x41
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$1656
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	0x28f
	.uleb128 0x14
	.byte	0
	.uleb128 0x15
	.byte	0x4
	.4byte	0x288
	.uleb128 0x16
	.4byte	0x2ac
	.4byte	0x2a5
	.uleb128 0x17
	.4byte	0x2a5
	.byte	0x11
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF34
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF35
	.uleb128 0x18
	.4byte	0x295
	.uleb128 0x19
	.4byte	.LASF36
	.4byte	.LASF36
	.byte	0x1
	.byte	0x23
	.uleb128 0x19
	.4byte	.LASF37
	.4byte	.LASF37
	.byte	0x1
	.byte	0x22
	.uleb128 0x19
	.4byte	.LASF38
	.4byte	.LASF38
	.byte	0x1
	.byte	0x21
	.uleb128 0x1a
	.4byte	.LASF39
	.4byte	.LASF39
	.byte	0x4
	.2byte	0x1bf
	.uleb128 0x19
	.4byte	.LASF40
	.4byte	.LASF40
	.byte	0x5
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
	.uleb128 0x5
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
	.uleb128 0x5
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x5
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
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LFE0
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL7
	.4byte	.LVL8-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF36:
	.string	"pm_mac_deinit"
.LASF18:
	.string	"deep_slp"
.LASF9:
	.string	"soc_clk_sel"
.LASF32:
	.string	"sleep_mode"
.LASF2:
	.string	"short int"
.LASF19:
	.string	"wdt_flashboot_mod_en"
.LASF34:
	.string	"sizetype"
.LASF7:
	.string	"__uint32_t"
.LASF22:
	.string	"rtc_dbias_wak"
.LASF20:
	.string	"dig_dbias_wak"
.LASF30:
	.string	"PM_SW_REJECT"
.LASF41:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -ggdb -Og -Og -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF16:
	.string	"wifi_pd_en"
.LASF27:
	.string	"pm_sleep_mode_t"
.LASF5:
	.string	"long long int"
.LASF15:
	.string	"rtc_peri_pd_en"
.LASF11:
	.string	"rtc_mem_inf_fpu"
.LASF25:
	.string	"vddsdio_pd_en"
.LASF1:
	.string	"unsigned char"
.LASF28:
	.string	"PM_LIGHT_SLEEP"
.LASF0:
	.string	"signed char"
.LASF6:
	.string	"long long unsigned int"
.LASF8:
	.string	"uint32_t"
.LASF4:
	.string	"unsigned int"
.LASF23:
	.string	"rtc_dbias_slp"
.LASF3:
	.string	"short unsigned int"
.LASF21:
	.string	"dig_dbias_slp"
.LASF35:
	.string	"char"
.LASF14:
	.string	"rtc_slowmem_pd_en"
.LASF17:
	.string	"rom_mem_pd_en"
.LASF43:
	.string	"pm_set_sleep_mode"
.LASF44:
	.string	"__func__"
.LASF38:
	.string	"pm_mac_init"
.LASF13:
	.string	"rtc_fastmem_pd_en"
.LASF39:
	.string	"rtc_sleep_init"
.LASF29:
	.string	"PM_SW_NOREJECT"
.LASF37:
	.string	"pm_check_mac_idle"
.LASF10:
	.string	"lslp_mem_inf_fpu"
.LASF26:
	.string	"rtc_sleep_config_t"
.LASF12:
	.string	"rtc_mem_inf_follow_cpu"
.LASF40:
	.string	"__assert_func"
.LASF24:
	.string	"lslp_meminf_pd"
.LASF31:
	.string	"pm_sw_reject_t"
.LASF33:
	.string	"pmac_save_params"
.LASF42:
	.string	"C:/esp/esp-idf/components/soc/esp32/rtc_pm.c"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-61-gab8375a) 5.2.0"
