	.file	"crosscore_int.c"
	.text
.Ltext0:
	.section	.iram1,"ax",@progbits
	.literal_position
	.literal .LC0, 1072693468
	.literal .LC1, 1072693472
	.literal .LC2, reasonSpinlock
	.align	4
	.type	esp_crosscore_isr, @function
esp_crosscore_isr:
.LFB20:
	.file 1 "C:/esp/esp-idf/components/esp32/crosscore_int.c"
	.loc 1 47 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LVL1:
.LBB12:
.LBB13:
	.file 2 "C:/esp/esp-idf/components/freertos/include/freertos/portable.h"
	.loc 2 202 0
#APP
# 202 "C:/esp/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a3
 extui a3,a3,13,1
# 0 "" 2
.LVL2:
#NO_APP
.LBE13:
.LBE12:
	.loc 1 53 0
	bnez.n	a3, .L2
	.loc 1 54 0
	movi.n	a4, 0
	l32r	a3, .LC0
.LVL3:
	memw
	s32i.n	a4, a3, 0
	j	.L3
.LVL4:
.L2:
	.loc 1 56 0
	movi.n	a4, 0
	l32r	a3, .LC1
.LVL5:
	memw
	s32i.n	a4, a3, 0
.L3:
	.loc 1 59 0
	l32r	a3, .LC2
	mov.n	a10, a3
	call8	vTaskEnterCritical
.LVL6:
	.loc 1 60 0
	memw
	l32i.n	a4, a2, 0
.LVL7:
	.loc 1 61 0
	movi.n	a8, 0
	memw
	s32i.n	a8, a2, 0
	.loc 1 62 0
	mov.n	a10, a3
	call8	vTaskExitCritical
.LVL8:
	.loc 1 65 0
	bbci	a4, 0, .L1
	.loc 1 66 0
	call8	_frxt_setup_switch
.LVL9:
.L1:
	retw.n
.LFE20:
	.size	esp_crosscore_isr, .-esp_crosscore_isr
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC6:
	.string	"err == ESP_OK"
	.align	4
.LC9:
	.string	"C:/esp/esp-idf/components/esp32/crosscore_int.c"
	.section	.text.esp_crosscore_int_init,"ax",@progbits
	.literal_position
	.literal .LC3, reasonSpinlock
	.literal .LC4, reason
	.literal .LC5, esp_crosscore_isr
	.literal .LC7, .LC6
	.literal .LC8, __func__$5340
	.literal .LC10, .LC9
	.align	4
	.global	esp_crosscore_int_init
	.type	esp_crosscore_int_init, @function
esp_crosscore_int_init:
.LFB21:
	.loc 1 72 0
	entry	sp, 32
.LCFI1:
	.loc 1 73 0
	l32r	a3, .LC3
	mov.n	a10, a3
	call8	vTaskEnterCritical
.LVL10:
.LBB14:
.LBB15:
	.loc 2 202 0
#APP
# 202 "C:/esp/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a2
 extui a2,a2,13,1
# 0 "" 2
#NO_APP
.LBE15:
.LBE14:
	.loc 1 74 0
	l32r	a8, .LC4
	addx4	a8, a2, a8
	movi.n	a9, 0
	memw
	s32i.n	a9, a8, 0
	.loc 1 75 0
	mov.n	a10, a3
	call8	vTaskExitCritical
.LVL11:
	.loc 1 77 0
	bnez.n	a2, .L6
.LBB16:
.LBB17:
	.loc 2 202 0
#APP
# 202 "C:/esp/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a13
 extui a13,a13,13,1
# 0 "" 2
#NO_APP
.LBE17:
.LBE16:
	.loc 1 78 0
	movi.n	a14, 0
	l32r	a2, .LC4
.LVL12:
	addx4	a13, a13, a2
	l32r	a12, .LC5
	movi	a11, 0x400
	movi.n	a10, 0x18
	call8	esp_intr_alloc
.LVL13:
	j	.L7
.LVL14:
.L6:
.LBB18:
.LBB19:
	.loc 2 202 0
#APP
# 202 "C:/esp/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a13
 extui a13,a13,13,1
# 0 "" 2
#NO_APP
.LBE19:
.LBE18:
	.loc 1 80 0
	movi.n	a14, 0
	l32r	a2, .LC4
.LVL15:
	addx4	a13, a13, a2
	l32r	a12, .LC5
	movi	a11, 0x400
	movi.n	a10, 0x19
	call8	esp_intr_alloc
.LVL16:
.L7:
	.loc 1 82 0
	beqz.n	a10, .L5
	.loc 1 82 0 is_stmt 0 discriminator 1
	l32r	a13, .LC7
	l32r	a12, .LC8
	movi.n	a11, 0x52
	l32r	a10, .LC10
.LVL17:
	call8	__assert_func
.LVL18:
.L5:
	retw.n
.LFE21:
	.size	esp_crosscore_int_init, .-esp_crosscore_int_init
	.section	.rodata.str1.4
	.align	4
.LC11:
	.string	"coreId<portNUM_PROCESSORS"
	.section	.iram1
	.literal_position
	.literal .LC12, .LC11
	.literal .LC13, __func__$5344
	.literal .LC14, .LC9
	.literal .LC15, reasonSpinlock
	.literal .LC16, reason
	.literal .LC17, 1072693468
	.literal .LC18, 1072693472
	.align	4
	.global	esp_crosscore_int_send_yield
	.type	esp_crosscore_int_send_yield, @function
esp_crosscore_int_send_yield:
.LFB22:
	.loc 1 85 0 is_stmt 1
.LVL19:
	entry	sp, 32
.LCFI2:
	.loc 1 86 0
	blti	a2, 1, .L10
	.loc 1 86 0 is_stmt 0 discriminator 1
	l32r	a13, .LC12
	l32r	a12, .LC13
	movi.n	a11, 0x56
	l32r	a10, .LC14
	call8	__assert_func
.LVL20:
.L10:
	.loc 1 88 0 is_stmt 1
	l32r	a3, .LC15
	mov.n	a10, a3
	call8	vTaskEnterCritical
.LVL21:
	.loc 1 89 0
	l32r	a8, .LC16
	addx4	a8, a2, a8
	memw
	l32i.n	a10, a8, 0
	movi.n	a9, 1
	or	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 90 0
	mov.n	a10, a3
	call8	vTaskExitCritical
.LVL22:
	.loc 1 92 0
	bnez.n	a2, .L11
	.loc 1 93 0
	movi.n	a3, 1
	l32r	a2, .LC17
.LVL23:
	memw
	s32i.n	a3, a2, 0
	retw.n
.LVL24:
.L11:
	.loc 1 95 0
	movi.n	a3, 1
	l32r	a2, .LC18
.LVL25:
	memw
	s32i.n	a3, a2, 0
	retw.n
.LFE22:
	.size	esp_crosscore_int_send_yield, .-esp_crosscore_int_send_yield
	.section	.rodata.__func__$5344,"a",@progbits
	.align	4
	.type	__func__$5344, @object
	.size	__func__$5344, 29
__func__$5344:
	.string	"esp_crosscore_int_send_yield"
	.section	.rodata.__func__$5340,"a",@progbits
	.align	4
	.type	__func__$5340, @object
	.size	__func__$5340, 23
__func__$5340:
	.string	"esp_crosscore_int_init"
	.section	.bss.reason,"aw",@nobits
	.align	4
	.type	reason, @object
	.size	reason, 4
reason:
	.zero	4
	.section	.data.reasonSpinlock,"aw",@progbits
	.align	4
	.type	reasonSpinlock, @object
	.size	reasonSpinlock, 8
reasonSpinlock:
	.word	-1287651329
	.word	0
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
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI0-.LFB20
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI1-.LFB21
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI2-.LFB22
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
	.text
.Letext0:
	.file 3 "C:/esp/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "C:/esp/esp-idf/components/newlib/include/stdint.h"
	.file 5 "C:/esp/esp-idf/components/esp32/include/esp_err.h"
	.file 6 "C:/esp/esp-idf/components/freertos/include/freertos/portmacro.h"
	.file 7 "C:/esp/esp-idf/components/esp32/include/esp_intr_alloc.h"
	.file 8 "C:/esp/esp-idf/components/newlib/include/assert.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x3fd
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF31
	.byte	0xc
	.4byte	.LASF32
	.4byte	.LASF33
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
	.4byte	.LASF4
	.byte	0x3
	.byte	0x19
	.4byte	0x4c
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x3
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
	.byte	0x4
	.byte	0x2c
	.4byte	0x41
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x4
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
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x5
	.byte	0x18
	.4byte	0x73
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF16
	.uleb128 0x6
	.byte	0x8
	.byte	0x6
	.byte	0x84
	.4byte	0xda
	.uleb128 0x7
	.4byte	.LASF17
	.byte	0x6
	.byte	0x85
	.4byte	0x7e
	.byte	0
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x6
	.byte	0x86
	.4byte	0x7e
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x6
	.byte	0x8b
	.4byte	0xb9
	.uleb128 0x8
	.4byte	0x7e
	.uleb128 0x9
	.4byte	.LASF34
	.byte	0x2
	.byte	0xc8
	.4byte	0x7e
	.byte	0x3
	.4byte	0x105
	.uleb128 0xa
	.string	"id"
	.byte	0x2
	.byte	0xc9
	.4byte	0x4c
	.byte	0
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x1
	.byte	0x2f
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x19a
	.uleb128 0xc
	.string	"arg"
	.byte	0x1
	.byte	0x2f
	.4byte	0x97
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xd
	.4byte	.LASF20
	.byte	0x1
	.byte	0x30
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xd
	.4byte	.LASF21
	.byte	0x1
	.byte	0x32
	.4byte	0x19a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xe
	.4byte	0xea
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.byte	0x1
	.byte	0x35
	.4byte	0x168
	.uleb128 0xf
	.4byte	.LBB13
	.4byte	.LBE13-.LBB13
	.uleb128 0x10
	.4byte	0xfa
	.4byte	.LLST0
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL6
	.4byte	0x3c8
	.4byte	0x17c
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL8
	.4byte	0x3d3
	.4byte	0x190
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL9
	.4byte	0x3de
	.byte	0
	.uleb128 0x14
	.byte	0x4
	.4byte	0xe5
	.uleb128 0x15
	.4byte	.LASF36
	.byte	0x1
	.byte	0x48
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2e0
	.uleb128 0x16
	.string	"err"
	.byte	0x1
	.byte	0x4c
	.4byte	0xa7
	.4byte	.LLST1
	.uleb128 0x17
	.4byte	.LASF22
	.4byte	0x2f0
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5340
	.uleb128 0xe
	.4byte	0xea
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.byte	0x1
	.byte	0x4a
	.4byte	0x1f6
	.uleb128 0xf
	.4byte	.LBB15
	.4byte	.LBE15-.LBB15
	.uleb128 0x18
	.4byte	0xfa
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	0xea
	.4byte	.LBB16
	.4byte	.LBE16-.LBB16
	.byte	0x1
	.byte	0x4e
	.4byte	0x219
	.uleb128 0xf
	.4byte	.LBB17
	.4byte	.LBE17-.LBB17
	.uleb128 0x18
	.4byte	0xfa
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	0xea
	.4byte	.LBB18
	.4byte	.LBE18-.LBB18
	.byte	0x1
	.byte	0x50
	.4byte	0x23c
	.uleb128 0xf
	.4byte	.LBB19
	.4byte	.LBE19-.LBB19
	.uleb128 0x18
	.4byte	0xfa
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL10
	.4byte	0x3c8
	.4byte	0x250
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL11
	.4byte	0x3d3
	.4byte	0x264
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL13
	.4byte	0x3ea
	.4byte	0x28c
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x48
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x400
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	esp_crosscore_isr
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x11
	.4byte	.LVL16
	.4byte	0x3ea
	.4byte	0x2b4
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x49
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x400
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	esp_crosscore_isr
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x19
	.4byte	.LVL18
	.4byte	0x3f5
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x52
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5340
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	0xa0
	.4byte	0x2f0
	.uleb128 0x1b
	.4byte	0x90
	.byte	0x16
	.byte	0
	.uleb128 0x1c
	.4byte	0x2e0
	.uleb128 0x1d
	.4byte	.LASF37
	.byte	0x1
	.byte	0x55
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x37c
	.uleb128 0x1e
	.4byte	.LASF23
	.byte	0x1
	.byte	0x55
	.4byte	0x4c
	.4byte	.LLST2
	.uleb128 0x17
	.4byte	.LASF22
	.4byte	0x38c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5344
	.uleb128 0x11
	.4byte	.LVL20
	.4byte	0x3f5
	.4byte	0x357
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x56
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5344
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.byte	0
	.uleb128 0x11
	.4byte	.LVL21
	.4byte	0x3c8
	.4byte	0x36b
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL22
	.4byte	0x3d3
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	0xa0
	.4byte	0x38c
	.uleb128 0x1b
	.4byte	0x90
	.byte	0x1c
	.byte	0
	.uleb128 0x1c
	.4byte	0x37c
	.uleb128 0xd
	.4byte	.LASF24
	.byte	0x1
	.byte	0x27
	.4byte	0xda
	.uleb128 0x5
	.byte	0x3
	.4byte	reasonSpinlock
	.uleb128 0x1a
	.4byte	0x7e
	.4byte	0x3b2
	.uleb128 0x1b
	.4byte	0x90
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF25
	.byte	0x1
	.byte	0x28
	.4byte	0x3c3
	.uleb128 0x5
	.byte	0x3
	.4byte	reason
	.uleb128 0x8
	.4byte	0x3a2
	.uleb128 0x1f
	.4byte	.LASF26
	.4byte	.LASF26
	.byte	0x6
	.byte	0xdc
	.uleb128 0x1f
	.4byte	.LASF27
	.4byte	.LASF27
	.byte	0x6
	.byte	0xdb
	.uleb128 0x20
	.4byte	.LASF28
	.4byte	.LASF28
	.byte	0x6
	.2byte	0x129
	.uleb128 0x1f
	.4byte	.LASF29
	.4byte	.LASF29
	.byte	0x7
	.byte	0x99
	.uleb128 0x1f
	.4byte	.LASF30
	.4byte	.LASF30
	.byte	0x8
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
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
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
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
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
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL18
	.4byte	.LFE21
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL19
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL25
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
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
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF21:
	.string	"myReason"
.LASF23:
	.string	"coreId"
.LASF27:
	.string	"vTaskExitCritical"
.LASF19:
	.string	"portMUX_TYPE"
.LASF4:
	.string	"__int32_t"
.LASF2:
	.string	"short int"
.LASF28:
	.string	"_frxt_setup_switch"
.LASF36:
	.string	"esp_crosscore_int_init"
.LASF31:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF35:
	.string	"esp_crosscore_isr"
.LASF22:
	.string	"__func__"
.LASF8:
	.string	"long long unsigned int"
.LASF1:
	.string	"unsigned char"
.LASF32:
	.string	"C:/esp/esp-idf/components/esp32/crosscore_int.c"
.LASF13:
	.string	"long unsigned int"
.LASF3:
	.string	"short unsigned int"
.LASF15:
	.string	"esp_err_t"
.LASF5:
	.string	"__uint32_t"
.LASF26:
	.string	"vTaskEnterCritical"
.LASF30:
	.string	"__assert_func"
.LASF17:
	.string	"owner"
.LASF6:
	.string	"unsigned int"
.LASF14:
	.string	"char"
.LASF25:
	.string	"reason"
.LASF33:
	.string	"C:\\\\esp\\\\esp32-ArkPOS2\\\\ArkPOS2-esp\\\\build\\\\esp32"
.LASF9:
	.string	"int32_t"
.LASF12:
	.string	"sizetype"
.LASF7:
	.string	"long long int"
.LASF20:
	.string	"myReasonVal"
.LASF34:
	.string	"xPortGetCoreID"
.LASF18:
	.string	"count"
.LASF37:
	.string	"esp_crosscore_int_send_yield"
.LASF10:
	.string	"uint32_t"
.LASF11:
	.string	"long int"
.LASF0:
	.string	"signed char"
.LASF16:
	.string	"_Bool"
.LASF29:
	.string	"esp_intr_alloc"
.LASF24:
	.string	"reasonSpinlock"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-73-ge28a011) 5.2.0"
