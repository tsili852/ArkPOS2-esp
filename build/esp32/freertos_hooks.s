	.file	"freertos_hooks.c"
	.text
.Ltext0:
	.section	.iram1,"ax",@progbits
	.literal_position
	.literal .LC0, tick_cb
	.align	4
	.global	esp_vApplicationTickHook
	.type	esp_vApplicationTickHook, @function
esp_vApplicationTickHook:
.LFB0:
	.file 1 "C:/esp/esp-idf/components/esp32/freertos_hooks.c"
	.loc 1 30 0
	entry	sp, 32
.LCFI0:
.LVL0:
	.loc 1 32 0
	movi.n	a2, 0
	j	.L2
.LVL1:
.L4:
	.loc 1 33 0
	l32r	a8, .LC0
	addx4	a8, a2, a8
	l32i.n	a8, a8, 0
	beqz.n	a8, .L3
	.loc 1 34 0
	callx8	a8
.LVL2:
.L3:
	.loc 1 32 0 discriminator 2
	addi.n	a2, a2, 1
.LVL3:
.L2:
	.loc 1 32 0 is_stmt 0 discriminator 1
	blti	a2, 8, .L4
	.loc 1 37 0 is_stmt 1
	retw.n
.LFE0:
	.size	esp_vApplicationTickHook, .-esp_vApplicationTickHook
	.section	.text.esp_vApplicationIdleHook,"ax",@progbits
	.literal_position
	.literal .LC1, idle_cb
	.align	4
	.global	esp_vApplicationIdleHook
	.type	esp_vApplicationIdleHook, @function
esp_vApplicationIdleHook:
.LFB1:
	.loc 1 40 0
	entry	sp, 32
.LCFI1:
.LVL4:
	.loc 1 44 0
	movi.n	a2, 0
	.loc 1 41 0
	movi.n	a3, 1
	.loc 1 44 0
	j	.L6
.LVL5:
.L8:
	.loc 1 45 0
	l32r	a8, .LC1
	addx4	a8, a2, a8
	l32i.n	a10, a8, 0
	beqz.n	a10, .L7
	.loc 1 46 0
	callx8	a10
.LVL6:
	.loc 1 47 0
	bnez.n	a10, .L7
	movi.n	a3, 0
.LVL7:
.L7:
	.loc 1 44 0 discriminator 2
	addi.n	a2, a2, 1
.LVL8:
.L6:
	.loc 1 44 0 is_stmt 0 discriminator 1
	blti	a2, 8, .L8
	.loc 1 50 0 is_stmt 1
	beqz.n	a3, .L5
	.loc 1 52 0
#APP
# 52 "C:/esp/esp-idf/components/esp32/freertos_hooks.c" 1
	waiti 0
# 0 "" 2
#NO_APP
.L5:
	retw.n
.LFE1:
	.size	esp_vApplicationIdleHook, .-esp_vApplicationIdleHook
	.section	.text.esp_register_freertos_idle_hook,"ax",@progbits
	.literal_position
	.literal .LC2, idle_cb
	.align	4
	.global	esp_register_freertos_idle_hook
	.type	esp_register_freertos_idle_hook, @function
esp_register_freertos_idle_hook:
.LFB2:
	.loc 1 58 0
.LVL9:
	entry	sp, 32
.LCFI2:
.LVL10:
	.loc 1 60 0
	movi.n	a8, 0
	j	.L12
.LVL11:
.L15:
	.loc 1 61 0
	l32r	a9, .LC2
	addx4	a9, a8, a9
	l32i.n	a9, a9, 0
	bnez.n	a9, .L13
	.loc 1 62 0
	l32r	a9, .LC2
	addx4	a8, a8, a9
.LVL12:
	s32i.n	a2, a8, 0
	.loc 1 63 0
	movi.n	a2, 0
.LVL13:
	retw.n
.LVL14:
.L13:
	.loc 1 60 0 discriminator 2
	addi.n	a8, a8, 1
.LVL15:
.L12:
	.loc 1 60 0 is_stmt 0 discriminator 1
	blti	a8, 8, .L15
	.loc 1 66 0 is_stmt 1
	movi	a2, 0x101
.LVL16:
	.loc 1 67 0
	retw.n
.LFE2:
	.size	esp_register_freertos_idle_hook, .-esp_register_freertos_idle_hook
	.section	.text.esp_register_freertos_tick_hook,"ax",@progbits
	.literal_position
	.literal .LC3, tick_cb
	.align	4
	.global	esp_register_freertos_tick_hook
	.type	esp_register_freertos_tick_hook, @function
esp_register_freertos_tick_hook:
.LFB3:
	.loc 1 70 0
.LVL17:
	entry	sp, 32
.LCFI3:
.LVL18:
	.loc 1 72 0
	movi.n	a8, 0
	j	.L17
.LVL19:
.L20:
	.loc 1 73 0
	l32r	a9, .LC3
	addx4	a9, a8, a9
	l32i.n	a9, a9, 0
	bnez.n	a9, .L18
	.loc 1 74 0
	l32r	a9, .LC3
	addx4	a8, a8, a9
.LVL20:
	s32i.n	a2, a8, 0
	.loc 1 75 0
	movi.n	a2, 0
.LVL21:
	retw.n
.LVL22:
.L18:
	.loc 1 72 0 discriminator 2
	addi.n	a8, a8, 1
.LVL23:
.L17:
	.loc 1 72 0 is_stmt 0 discriminator 1
	blti	a8, 8, .L20
	.loc 1 78 0 is_stmt 1
	movi	a2, 0x101
.LVL24:
	.loc 1 79 0
	retw.n
.LFE3:
	.size	esp_register_freertos_tick_hook, .-esp_register_freertos_tick_hook
	.section	.text.esp_deregister_freertos_idle_hook,"ax",@progbits
	.literal_position
	.literal .LC4, idle_cb
	.align	4
	.global	esp_deregister_freertos_idle_hook
	.type	esp_deregister_freertos_idle_hook, @function
esp_deregister_freertos_idle_hook:
.LFB4:
	.loc 1 82 0
.LVL25:
	entry	sp, 32
.LCFI4:
.LVL26:
	.loc 1 84 0
	movi.n	a8, 0
	j	.L22
.LVL27:
.L24:
	.loc 1 85 0
	l32r	a9, .LC4
	addx4	a9, a8, a9
	l32i.n	a9, a9, 0
	bne	a9, a2, .L23
	.loc 1 85 0 is_stmt 0 discriminator 1
	l32r	a9, .LC4
	addx4	a9, a8, a9
	movi.n	a10, 0
	s32i.n	a10, a9, 0
.L23:
	.loc 1 84 0 is_stmt 1 discriminator 2
	addi.n	a8, a8, 1
.LVL28:
.L22:
	.loc 1 84 0 is_stmt 0 discriminator 1
	blti	a8, 8, .L24
	.loc 1 87 0 is_stmt 1
	retw.n
.LFE4:
	.size	esp_deregister_freertos_idle_hook, .-esp_deregister_freertos_idle_hook
	.section	.text.esp_deregister_freertos_tick_hook,"ax",@progbits
	.literal_position
	.literal .LC5, tick_cb
	.align	4
	.global	esp_deregister_freertos_tick_hook
	.type	esp_deregister_freertos_tick_hook, @function
esp_deregister_freertos_tick_hook:
.LFB5:
	.loc 1 90 0
.LVL29:
	entry	sp, 32
.LCFI5:
.LVL30:
	.loc 1 92 0
	movi.n	a8, 0
	j	.L26
.LVL31:
.L28:
	.loc 1 93 0
	l32r	a9, .LC5
	addx4	a9, a8, a9
	l32i.n	a9, a9, 0
	bne	a9, a2, .L27
	.loc 1 93 0 is_stmt 0 discriminator 1
	l32r	a9, .LC5
	addx4	a9, a8, a9
	movi.n	a10, 0
	s32i.n	a10, a9, 0
.L27:
	.loc 1 92 0 is_stmt 1 discriminator 2
	addi.n	a8, a8, 1
.LVL32:
.L26:
	.loc 1 92 0 is_stmt 0 discriminator 1
	blti	a8, 8, .L28
	.loc 1 95 0 is_stmt 1
	retw.n
.LFE5:
	.size	esp_deregister_freertos_tick_hook, .-esp_deregister_freertos_tick_hook
	.section	.bss.tick_cb,"aw",@nobits
	.align	4
	.type	tick_cb, @object
	.size	tick_cb, 32
tick_cb:
	.zero	32
	.section	.bss.idle_cb,"aw",@nobits
	.align	4
	.type	idle_cb, @object
	.size	idle_cb, 32
idle_cb:
	.zero	32
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
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x4
	.4byte	.LCFI1-.LFB1
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI2-.LFB2
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI3-.LFB3
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI4-.LFB4
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI5-.LFB5
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
	.text
.Letext0:
	.file 2 "C:/esp/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "C:/esp/esp-idf/components/newlib/include/stdint.h"
	.file 4 "C:/esp/esp-idf/components/esp32/include/esp_err.h"
	.file 5 "C:/esp/esp-idf/components/esp32/include/esp_freertos_hooks.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x242
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF30
	.byte	0xc
	.4byte	.LASF31
	.4byte	.LASF32
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
	.4byte	.LASF7
	.byte	0x2
	.byte	0x19
	.4byte	0x4c
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
	.byte	0x3
	.byte	0x2c
	.4byte	0x41
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
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x4
	.byte	0x18
	.4byte	0x68
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x5
	.byte	0x1d
	.4byte	0xa5
	.uleb128 0x5
	.byte	0x4
	.4byte	0xab
	.uleb128 0x6
	.4byte	0xb6
	.4byte	0xb6
	.uleb128 0x7
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF15
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x5
	.byte	0x1e
	.4byte	0xc8
	.uleb128 0x5
	.byte	0x4
	.4byte	0xce
	.uleb128 0x8
	.4byte	0xd5
	.uleb128 0x7
	.byte	0
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x1
	.byte	0x1d
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf8
	.uleb128 0xa
	.string	"n"
	.byte	0x1
	.byte	0x1f
	.4byte	0x4c
	.4byte	.LLST0
	.byte	0
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x1
	.byte	0x27
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x137
	.uleb128 0xb
	.4byte	.LASF19
	.byte	0x1
	.byte	0x29
	.4byte	0xb6
	.4byte	.LLST1
	.uleb128 0xa
	.string	"r"
	.byte	0x1
	.byte	0x2a
	.4byte	0xb6
	.4byte	.LLST2
	.uleb128 0xa
	.string	"n"
	.byte	0x1
	.byte	0x2b
	.4byte	0x4c
	.4byte	.LLST3
	.byte	0
	.uleb128 0xc
	.4byte	.LASF20
	.byte	0x1
	.byte	0x39
	.4byte	0x8f
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x16d
	.uleb128 0xd
	.4byte	.LASF22
	.byte	0x1
	.byte	0x39
	.4byte	0x9a
	.4byte	.LLST4
	.uleb128 0xa
	.string	"n"
	.byte	0x1
	.byte	0x3b
	.4byte	0x4c
	.4byte	.LLST5
	.byte	0
	.uleb128 0xc
	.4byte	.LASF21
	.byte	0x1
	.byte	0x45
	.4byte	0x8f
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a3
	.uleb128 0xd
	.4byte	.LASF23
	.byte	0x1
	.byte	0x45
	.4byte	0xbd
	.4byte	.LLST6
	.uleb128 0xa
	.string	"n"
	.byte	0x1
	.byte	0x47
	.4byte	0x4c
	.4byte	.LLST7
	.byte	0
	.uleb128 0xe
	.4byte	.LASF25
	.byte	0x1
	.byte	0x51
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1d3
	.uleb128 0xf
	.4byte	.LASF24
	.byte	0x1
	.byte	0x51
	.4byte	0x9a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xa
	.string	"n"
	.byte	0x1
	.byte	0x53
	.4byte	0x4c
	.4byte	.LLST8
	.byte	0
	.uleb128 0xe
	.4byte	.LASF26
	.byte	0x1
	.byte	0x59
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x203
	.uleb128 0xf
	.4byte	.LASF27
	.byte	0x1
	.byte	0x59
	.4byte	0xbd
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xa
	.string	"n"
	.byte	0x1
	.byte	0x5b
	.4byte	0x4c
	.4byte	.LLST9
	.byte	0
	.uleb128 0x10
	.4byte	0x9a
	.4byte	0x213
	.uleb128 0x11
	.4byte	0x7a
	.byte	0x7
	.byte	0
	.uleb128 0x12
	.4byte	.LASF28
	.byte	0x1
	.byte	0x1a
	.4byte	0x203
	.uleb128 0x5
	.byte	0x3
	.4byte	idle_cb
	.uleb128 0x10
	.4byte	0xbd
	.4byte	0x234
	.uleb128 0x11
	.4byte	0x7a
	.byte	0x7
	.byte	0
	.uleb128 0x12
	.4byte	.LASF29
	.byte	0x1
	.byte	0x1b
	.4byte	0x224
	.uleb128 0x5
	.byte	0x3
	.4byte	tick_cb
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.4byte	.LFE0
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL9
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x2
	.byte	0x78
	.sleb128 0
	.4byte	.LVL14
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL16
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL14
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL17
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x2
	.byte	0x78
	.sleb128 0
	.4byte	.LVL22
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL24
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL22
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x58
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
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
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
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB0
	.4byte	.LFE0
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF27:
	.string	"old_tick_cb"
.LASF22:
	.string	"new_idle_cb"
.LASF7:
	.string	"__int32_t"
.LASF17:
	.string	"esp_vApplicationTickHook"
.LASF16:
	.string	"esp_freertos_tick_cb_t"
.LASF18:
	.string	"esp_vApplicationIdleHook"
.LASF20:
	.string	"esp_register_freertos_idle_hook"
.LASF30:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF19:
	.string	"doWait"
.LASF31:
	.string	"C:/esp/esp-idf/components/esp32/freertos_hooks.c"
.LASF26:
	.string	"esp_deregister_freertos_tick_hook"
.LASF29:
	.string	"tick_cb"
.LASF1:
	.string	"unsigned char"
.LASF11:
	.string	"long unsigned int"
.LASF3:
	.string	"short unsigned int"
.LASF24:
	.string	"old_idle_cb"
.LASF13:
	.string	"esp_err_t"
.LASF32:
	.string	"C:\\\\esp\\\\ArkPOS2-esp\\\\build\\\\esp32"
.LASF4:
	.string	"unsigned int"
.LASF21:
	.string	"esp_register_freertos_tick_hook"
.LASF6:
	.string	"long long unsigned int"
.LASF14:
	.string	"esp_freertos_idle_cb_t"
.LASF23:
	.string	"new_tick_cb"
.LASF8:
	.string	"int32_t"
.LASF10:
	.string	"sizetype"
.LASF5:
	.string	"long long int"
.LASF12:
	.string	"char"
.LASF28:
	.string	"idle_cb"
.LASF2:
	.string	"short int"
.LASF9:
	.string	"long int"
.LASF25:
	.string	"esp_deregister_freertos_idle_hook"
.LASF0:
	.string	"signed char"
.LASF15:
	.string	"_Bool"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-61-gab8375a) 5.2.0"
