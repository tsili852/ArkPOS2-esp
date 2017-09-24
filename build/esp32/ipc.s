	.file	"ipc.c"
	.text
.Ltext0:
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC3:
	.string	"cpuid == xPortGetCoreID()"
	.align	4
.LC6:
	.string	"C:/esp/esp-idf/components/esp32/ipc.c"
	.section	.iram1,"ax",@progbits
	.literal_position
	.literal .LC4, .LC3
	.literal .LC5, __func__$5068
	.literal .LC7, .LC6
	.literal .LC8, s_ipc_sem
	.literal .LC9, s_func
	.literal .LC10, s_func_arg
	.literal .LC11, s_ipc_wait
	.literal .LC12, s_ipc_ack
	.align	4
	.type	ipc_task, @function
ipc_task:
.LFB9:
	.file 1 "C:/esp/esp-idf/components/esp32/ipc.c"
	.loc 1 45 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LVL1:
.LBB5:
.LBB6:
	.file 2 "C:/esp/esp-idf/components/freertos/include/freertos/portable.h"
	.loc 2 202 0
#APP
# 202 "C:/esp/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a3
 extui a3,a3,13,1
# 0 "" 2
.LVL2:
#NO_APP
.LBE6:
.LBE5:
	.loc 1 47 0
	beq	a2, a3, .L5
	.loc 1 47 0 is_stmt 0 discriminator 1
	l32r	a13, .LC4
	l32r	a12, .LC5
	movi.n	a11, 0x2f
	l32r	a10, .LC7
	call8	__assert_func
.LVL3:
.L5:
.LBB7:
	.loc 1 52 0 is_stmt 1
	l32r	a8, .LC8
	addx4	a8, a2, a8
	movi.n	a13, 0
	movi.n	a12, -1
	mov.n	a11, a13
	l32i.n	a10, a8, 0
	call8	xQueueGenericReceive
.LVL4:
	beqi	a10, 1, .L3
	.loc 1 54 0
	call8	abort
.LVL5:
.L3:
	.loc 1 57 0
	l32r	a3, .LC9
	memw
	l32i.n	a3, a3, 0
.LVL6:
	.loc 1 58 0
	l32r	a4, .LC10
	memw
	l32i.n	a4, a4, 0
.LVL7:
	.loc 1 60 0
	l32r	a8, .LC11
	memw
	l32i.n	a8, a8, 0
	bnez.n	a8, .L4
	.loc 1 61 0
	movi.n	a13, 0
	mov.n	a12, a13
	mov.n	a11, a13
	l32r	a8, .LC12
	l32i.n	a10, a8, 0
	call8	xQueueGenericSend
.LVL8:
.L4:
	.loc 1 63 0
	mov.n	a10, a4
	callx8	a3
.LVL9:
	.loc 1 64 0
	l32r	a8, .LC11
	memw
	l32i.n	a8, a8, 0
	bnei	a8, 1, .L5
	.loc 1 65 0
	movi.n	a13, 0
	mov.n	a12, a13
	mov.n	a11, a13
	l32r	a3, .LC12
.LVL10:
	l32i.n	a10, a3, 0
	call8	xQueueGenericSend
.LVL11:
	j	.L5
.LBE7:
.LFE9:
	.size	ipc_task, .-ipc_task
	.section	.text.esp_ipc_call_and_wait,"ax",@progbits
	.literal_position
	.literal .LC13, s_ipc_mutex
	.literal .LC14, s_func
	.literal .LC15, s_func_arg
	.literal .LC16, s_ipc_wait
	.literal .LC17, s_ipc_sem
	.literal .LC18, s_ipc_ack
	.align	4
	.type	esp_ipc_call_and_wait, @function
esp_ipc_call_and_wait:
.LFB11:
	.loc 1 90 0
.LVL12:
	entry	sp, 32
.LCFI1:
	.loc 1 91 0
	bnez.n	a2, .L8
	.loc 1 94 0
	call8	xTaskGetSchedulerState
.LVL13:
	bnei	a10, 2, .L9
	.loc 1 98 0
	l32r	a5, .LC13
.LVL14:
	movi.n	a13, 0
	movi.n	a12, -1
	mov.n	a11, a13
	l32i.n	a10, a5, 0
	call8	xQueueGenericReceive
.LVL15:
	.loc 1 100 0
	l32r	a8, .LC14
	memw
	s32i.n	a3, a8, 0
	.loc 1 101 0
	l32r	a3, .LC15
.LVL16:
	memw
	s32i.n	a4, a3, 0
.LVL17:
	.loc 1 102 0
	movi.n	a3, 0
	l32r	a4, .LC16
.LVL18:
	memw
	s32i.n	a3, a4, 0
.LVL19:
	.loc 1 103 0
	l32r	a4, .LC17
	addx4	a2, a2, a4
.LVL20:
	mov.n	a13, a3
	mov.n	a12, a3
	mov.n	a11, a3
	l32i.n	a10, a2, 0
	call8	xQueueGenericSend
.LVL21:
	.loc 1 104 0
	mov.n	a13, a3
	movi.n	a12, -1
	mov.n	a11, a3
	l32r	a2, .LC18
	l32i.n	a10, a2, 0
	call8	xQueueGenericReceive
.LVL22:
	.loc 1 105 0
	mov.n	a13, a3
	mov.n	a12, a3
	mov.n	a11, a3
	l32i.n	a10, a5, 0
	call8	xQueueGenericSend
.LVL23:
	.loc 1 106 0
	mov.n	a2, a3
	retw.n
.LVL24:
.L8:
	.loc 1 92 0
	movi	a2, 0x102
.LVL25:
	retw.n
.LVL26:
.L9:
	.loc 1 95 0
	movi	a2, 0x103
.LVL27:
	.loc 1 107 0
	retw.n
.LFE11:
	.size	esp_ipc_call_and_wait, .-esp_ipc_call_and_wait
	.section	.rodata.str1.4
	.align	4
.LC26:
	.string	"res == pdTRUE"
	.align	4
.LC0:
	.string	"ipc0"
	.align	4
.LC1:
	.string	"ipc1"
	.section	.rodata
	.align	4
.LC21:
	.word	.LC0
	.word	.LC1
	.section	.text.esp_ipc_init,"ax",@progbits
	.literal_position
	.literal .LC19, s_ipc_mutex
	.literal .LC20, s_ipc_ack
	.literal .LC22, .LC21
	.literal .LC23, s_ipc_sem
	.literal .LC24, s_ipc_tasks
	.literal .LC25, ipc_task
	.literal .LC27, .LC26
	.literal .LC28, __func__$5077
	.literal .LC29, .LC6
	.align	4
	.global	esp_ipc_init
	.type	esp_ipc_init, @function
esp_ipc_init:
.LFB10:
	.loc 1 77 0
	entry	sp, 64
.LCFI2:
	.loc 1 78 0
	movi.n	a10, 1
	call8	xQueueCreateMutex
.LVL28:
	l32r	a2, .LC19
	s32i.n	a10, a2, 0
	.loc 1 79 0
	movi.n	a12, 3
	movi.n	a11, 0
	movi.n	a10, 1
	call8	xQueueGenericCreate
.LVL29:
	l32r	a2, .LC20
	s32i.n	a10, a2, 0
	.loc 1 80 0
	l32r	a2, .LC22
	l32i.n	a8, a2, 0
	l32i.n	a2, a2, 4
	s32i.n	a8, sp, 16
	s32i.n	a2, sp, 20
.LVL30:
.LBB8:
	.loc 1 81 0
	movi.n	a2, 0
	j	.L11
.LVL31:
.L13:
.LBB9:
	.loc 1 82 0
	movi.n	a12, 3
	movi.n	a11, 0
	movi.n	a10, 1
	call8	xQueueGenericCreate
.LVL32:
	slli	a15, a2, 2
	l32r	a8, .LC23
	add.n	a8, a8, a15
	s32i.n	a10, a8, 0
	.loc 1 83 0
	addi	a3, sp, 16
	add.n	a8, a3, a15
	l32i.n	a11, a8, 0
	s32i.n	a2, sp, 0
	l32r	a8, .LC24
	add.n	a15, a8, a15
	movi.n	a14, 0x18
	mov.n	a13, a2
	movi	a12, 0x400
	l32r	a10, .LC25
	call8	xTaskCreatePinnedToCore
.LVL33:
	.loc 1 85 0
	beqi	a10, 1, .L12
	.loc 1 85 0 is_stmt 0 discriminator 1
	l32r	a13, .LC27
	l32r	a12, .LC28
	movi.n	a11, 0x55
	l32r	a10, .LC29
.LVL34:
	call8	__assert_func
.LVL35:
.L12:
.LBE9:
	.loc 1 81 0 is_stmt 1 discriminator 2
	addi.n	a2, a2, 1
.LVL36:
.L11:
	.loc 1 81 0 is_stmt 0 discriminator 1
	blti	a2, 1, .L13
.LBE8:
	.loc 1 87 0 is_stmt 1
	retw.n
.LFE10:
	.size	esp_ipc_init, .-esp_ipc_init
	.section	.text.esp_ipc_call,"ax",@progbits
	.align	4
	.global	esp_ipc_call
	.type	esp_ipc_call, @function
esp_ipc_call:
.LFB12:
	.loc 1 110 0
.LVL37:
	entry	sp, 32
.LCFI3:
	.loc 1 111 0
	movi.n	a13, 0
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	esp_ipc_call_and_wait
.LVL38:
	.loc 1 112 0
	mov.n	a2, a10
.LVL39:
	retw.n
.LFE12:
	.size	esp_ipc_call, .-esp_ipc_call
	.section	.text.esp_ipc_call_blocking,"ax",@progbits
	.align	4
	.global	esp_ipc_call_blocking
	.type	esp_ipc_call_blocking, @function
esp_ipc_call_blocking:
.LFB13:
	.loc 1 115 0
.LVL40:
	entry	sp, 32
.LCFI4:
	.loc 1 116 0
	movi.n	a13, 1
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	esp_ipc_call_and_wait
.LVL41:
	.loc 1 117 0
	mov.n	a2, a10
.LVL42:
	retw.n
.LFE13:
	.size	esp_ipc_call_blocking, .-esp_ipc_call_blocking
	.section	.rodata.__func__$5068,"a",@progbits
	.align	4
	.type	__func__$5068, @object
	.size	__func__$5068, 9
__func__$5068:
	.string	"ipc_task"
	.section	.rodata.__func__$5077,"a",@progbits
	.align	4
	.type	__func__$5077, @object
	.size	__func__$5077, 13
__func__$5077:
	.string	"esp_ipc_init"
	.section	.bss.s_ipc_wait,"aw",@nobits
	.align	4
	.type	s_ipc_wait, @object
	.size	s_ipc_wait, 4
s_ipc_wait:
	.zero	4
	.section	.bss.s_func_arg,"aw",@nobits
	.align	4
	.type	s_func_arg, @object
	.size	s_func_arg, 4
s_func_arg:
	.zero	4
	.section	.bss.s_func,"aw",@nobits
	.align	4
	.type	s_func, @object
	.size	s_func, 4
s_func:
	.zero	4
	.section	.bss.s_ipc_ack,"aw",@nobits
	.align	4
	.type	s_ipc_ack, @object
	.size	s_ipc_ack, 4
s_ipc_ack:
	.zero	4
	.section	.bss.s_ipc_sem,"aw",@nobits
	.align	4
	.type	s_ipc_sem, @object
	.size	s_ipc_sem, 4
s_ipc_sem:
	.zero	4
	.section	.bss.s_ipc_mutex,"aw",@nobits
	.align	4
	.type	s_ipc_mutex, @object
	.size	s_ipc_mutex, 4
s_ipc_mutex:
	.zero	4
	.section	.bss.s_ipc_tasks,"aw",@nobits
	.align	4
	.type	s_ipc_tasks, @object
	.size	s_ipc_tasks, 4
s_ipc_tasks:
	.zero	4
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
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI0-.LFB9
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
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI2-.LFB10
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI3-.LFB12
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI4-.LFB13
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
	.text
.Letext0:
	.file 3 "C:/esp/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "C:/esp/esp-idf/components/newlib/include/stdint.h"
	.file 5 "C:/esp/esp-idf/components/esp32/include/esp_err.h"
	.file 6 "C:/esp/esp-idf/components/esp32/include/esp_ipc.h"
	.file 7 "C:/esp/esp-idf/components/freertos/include/freertos/portmacro.h"
	.file 8 "C:/esp/esp-idf/components/freertos/include/freertos/task.h"
	.file 9 "C:/esp/esp-idf/components/freertos/include/freertos/queue.h"
	.file 10 "C:/esp/esp-idf/components/freertos/include/freertos/semphr.h"
	.file 11 "C:/esp/esp-idf/components/newlib/include/stdlib.h"
	.file 12 "C:/esp/esp-idf/components/newlib/include/assert.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x699
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF54
	.byte	0xc
	.4byte	.LASF55
	.4byte	.LASF56
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x4
	.4byte	.LASF5
	.byte	0x3
	.byte	0x12
	.4byte	0x4c
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x3
	.byte	0x19
	.4byte	0x25
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x3
	.byte	0x1a
	.4byte	0x2c
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa2
	.uleb128 0x7
	.4byte	0x95
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x4
	.byte	0x15
	.4byte	0x41
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x4
	.byte	0x2c
	.4byte	0x5a
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x4
	.byte	0x2d
	.4byte	0x65
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x5
	.byte	0x18
	.4byte	0xb2
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x6
	.byte	0x18
	.4byte	0xde
	.uleb128 0x6
	.byte	0x4
	.4byte	0xe4
	.uleb128 0x8
	.4byte	0xef
	.uleb128 0x9
	.4byte	0x8c
	.byte	0
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x7
	.byte	0x6c
	.4byte	0x25
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x7
	.byte	0x6d
	.4byte	0x2c
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x7
	.byte	0x73
	.4byte	0xbd
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF22
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0x8
	.byte	0x6c
	.4byte	0x8c
	.uleb128 0x4
	.4byte	.LASF24
	.byte	0x9
	.byte	0x58
	.4byte	0x8c
	.uleb128 0x4
	.4byte	.LASF25
	.byte	0xa
	.byte	0x4f
	.4byte	0x122
	.uleb128 0xa
	.byte	0x4
	.4byte	0x2c
	.byte	0x1
	.byte	0x23
	.4byte	0x151
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF28
	.byte	0x1
	.byte	0x26
	.4byte	0x138
	.uleb128 0xc
	.4byte	.LASF57
	.byte	0x2
	.byte	0xc8
	.4byte	0xbd
	.byte	0x3
	.4byte	0x177
	.uleb128 0xd
	.string	"id"
	.byte	0x2
	.byte	0xc9
	.4byte	0x25
	.byte	0
	.uleb128 0xe
	.4byte	.LASF32
	.byte	0x1
	.byte	0x2c
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x29f
	.uleb128 0xf
	.string	"arg"
	.byte	0x1
	.byte	0x2c
	.4byte	0x8c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x10
	.4byte	.LASF30
	.byte	0x1
	.byte	0x2e
	.4byte	0x29f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x11
	.4byte	.LASF29
	.4byte	0x2b4
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5068
	.uleb128 0x12
	.4byte	0x15c
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.byte	0x1
	.byte	0x2f
	.4byte	0x1dc
	.uleb128 0x13
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.uleb128 0x14
	.4byte	0x16c
	.4byte	.LLST0
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.4byte	0x273
	.uleb128 0x16
	.4byte	.LASF31
	.byte	0x1
	.byte	0x39
	.4byte	0xd3
	.4byte	.LLST1
	.uleb128 0x17
	.string	"arg"
	.byte	0x1
	.byte	0x3a
	.4byte	0x8c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x18
	.4byte	.LVL4
	.4byte	0x63e
	.4byte	0x223
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL5
	.4byte	0x64a
	.uleb128 0x18
	.4byte	.LVL8
	.4byte	0x655
	.4byte	0x249
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL9
	.4byte	0x259
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL11
	.4byte	0x655
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL3
	.4byte	0x661
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x2f
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5068
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0xbd
	.uleb128 0x1d
	.4byte	0x95
	.4byte	0x2b4
	.uleb128 0x1e
	.4byte	0x85
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.4byte	0x2a4
	.uleb128 0x1f
	.4byte	.LASF33
	.byte	0x1
	.byte	0x59
	.4byte	0xc8
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x392
	.uleb128 0x20
	.4byte	.LASF34
	.byte	0x1
	.byte	0x59
	.4byte	0xbd
	.4byte	.LLST2
	.uleb128 0x20
	.4byte	.LASF31
	.byte	0x1
	.byte	0x59
	.4byte	0xd3
	.4byte	.LLST3
	.uleb128 0x21
	.string	"arg"
	.byte	0x1
	.byte	0x59
	.4byte	0x8c
	.4byte	.LLST4
	.uleb128 0x20
	.4byte	.LASF35
	.byte	0x1
	.byte	0x59
	.4byte	0x151
	.4byte	.LLST5
	.uleb128 0x1a
	.4byte	.LVL13
	.4byte	0x66c
	.uleb128 0x18
	.4byte	.LVL15
	.4byte	0x63e
	.4byte	0x335
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x18
	.4byte	.LVL21
	.4byte	0x655
	.4byte	0x355
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL22
	.4byte	0x63e
	.4byte	0x375
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL23
	.4byte	0x655
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LASF58
	.byte	0x1
	.byte	0x4c
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4ab
	.uleb128 0x10
	.4byte	.LASF36
	.byte	0x1
	.byte	0x50
	.4byte	0x4ab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x11
	.4byte	.LASF29
	.4byte	0x4cb
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5077
	.uleb128 0x15
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.4byte	0x47e
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.byte	0x51
	.4byte	0x25
	.4byte	.LLST6
	.uleb128 0x13
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.uleb128 0x23
	.string	"res"
	.byte	0x1
	.byte	0x53
	.4byte	0x25
	.4byte	.LLST7
	.uleb128 0x18
	.4byte	.LVL32
	.4byte	0x678
	.4byte	0x413
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x18
	.4byte	.LVL33
	.4byte	0x684
	.4byte	0x451
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	ipc_task
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x400
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x48
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0xa
	.byte	0x72
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	s_ipc_tasks
	.byte	0x22
	.uleb128 0x19
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL35
	.4byte	0x661
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x55
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5077
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL28
	.4byte	0x690
	.4byte	0x491
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL29
	.4byte	0x678
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	0x9c
	.4byte	0x4bb
	.uleb128 0x1e
	.4byte	0x85
	.byte	0x1
	.byte	0
	.uleb128 0x1d
	.4byte	0x95
	.4byte	0x4cb
	.uleb128 0x1e
	.4byte	0x85
	.byte	0xc
	.byte	0
	.uleb128 0x7
	.4byte	0x4bb
	.uleb128 0x24
	.4byte	.LASF37
	.byte	0x1
	.byte	0x6d
	.4byte	0xc8
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x534
	.uleb128 0x20
	.4byte	.LASF34
	.byte	0x1
	.byte	0x6d
	.4byte	0xbd
	.4byte	.LLST8
	.uleb128 0x25
	.4byte	.LASF31
	.byte	0x1
	.byte	0x6d
	.4byte	0xd3
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xf
	.string	"arg"
	.byte	0x1
	.byte	0x6d
	.4byte	0x8c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1c
	.4byte	.LVL38
	.4byte	0x2b9
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LASF38
	.byte	0x1
	.byte	0x72
	.4byte	0xc8
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x598
	.uleb128 0x20
	.4byte	.LASF34
	.byte	0x1
	.byte	0x72
	.4byte	0xbd
	.4byte	.LLST9
	.uleb128 0x25
	.4byte	.LASF31
	.byte	0x1
	.byte	0x72
	.4byte	0xd3
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xf
	.string	"arg"
	.byte	0x1
	.byte	0x72
	.4byte	0x8c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1c
	.4byte	.LVL41
	.4byte	0x2b9
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	0x117
	.4byte	0x5a8
	.uleb128 0x1e
	.4byte	0x85
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	.LASF39
	.byte	0x1
	.byte	0x1c
	.4byte	0x598
	.uleb128 0x5
	.byte	0x3
	.4byte	s_ipc_tasks
	.uleb128 0x10
	.4byte	.LASF40
	.byte	0x1
	.byte	0x1d
	.4byte	0x12d
	.uleb128 0x5
	.byte	0x3
	.4byte	s_ipc_mutex
	.uleb128 0x1d
	.4byte	0x12d
	.4byte	0x5da
	.uleb128 0x1e
	.4byte	0x85
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	.LASF41
	.byte	0x1
	.byte	0x1e
	.4byte	0x5ca
	.uleb128 0x5
	.byte	0x3
	.4byte	s_ipc_sem
	.uleb128 0x10
	.4byte	.LASF42
	.byte	0x1
	.byte	0x1f
	.4byte	0x12d
	.uleb128 0x5
	.byte	0x3
	.4byte	s_ipc_ack
	.uleb128 0x10
	.4byte	.LASF43
	.byte	0x1
	.byte	0x21
	.4byte	0x60d
	.uleb128 0x5
	.byte	0x3
	.4byte	s_func
	.uleb128 0x26
	.4byte	0xd3
	.uleb128 0x10
	.4byte	.LASF44
	.byte	0x1
	.byte	0x22
	.4byte	0x623
	.uleb128 0x5
	.byte	0x3
	.4byte	s_func_arg
	.uleb128 0x26
	.4byte	0x8c
	.uleb128 0x10
	.4byte	.LASF45
	.byte	0x1
	.byte	0x28
	.4byte	0x639
	.uleb128 0x5
	.byte	0x3
	.4byte	s_ipc_wait
	.uleb128 0x26
	.4byte	0x151
	.uleb128 0x27
	.4byte	.LASF46
	.4byte	.LASF46
	.byte	0x9
	.2byte	0x3e9
	.uleb128 0x28
	.4byte	.LASF47
	.4byte	.LASF47
	.byte	0xb
	.byte	0x47
	.uleb128 0x27
	.4byte	.LASF48
	.4byte	.LASF48
	.byte	0x9
	.2byte	0x2a8
	.uleb128 0x28
	.4byte	.LASF49
	.4byte	.LASF49
	.byte	0xc
	.byte	0x29
	.uleb128 0x27
	.4byte	.LASF50
	.4byte	.LASF50
	.byte	0x8
	.2byte	0x860
	.uleb128 0x27
	.4byte	.LASF51
	.4byte	.LASF51
	.byte	0x9
	.2byte	0x664
	.uleb128 0x27
	.4byte	.LASF52
	.4byte	.LASF52
	.byte	0x8
	.2byte	0x17a
	.uleb128 0x27
	.4byte	.LASF53
	.4byte	.LASF53
	.byte	0x9
	.2byte	0x621
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
	.uleb128 0x8
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
	.uleb128 0xe
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0x87
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x1
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
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL6
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL12
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL20
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
	.4byte	.LVL26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL27
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL12
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x5
	.byte	0x3
	.4byte	s_func
	.4byte	.LVL17
	.4byte	.LVL24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL12
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x5
	.byte	0x3
	.4byte	s_func_arg
	.4byte	.LVL19
	.4byte	.LVL24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL14
	.4byte	.LVL24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL37
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL39
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL40
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL42
	.4byte	.LFE13
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
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF41:
	.string	"s_ipc_sem"
.LASF39:
	.string	"s_ipc_tasks"
.LASF44:
	.string	"s_func_arg"
.LASF35:
	.string	"wait_for"
.LASF40:
	.string	"s_ipc_mutex"
.LASF38:
	.string	"esp_ipc_call_blocking"
.LASF4:
	.string	"short int"
.LASF11:
	.string	"sizetype"
.LASF57:
	.string	"xPortGetCoreID"
.LASF23:
	.string	"TaskHandle_t"
.LASF9:
	.string	"long long unsigned int"
.LASF7:
	.string	"__uint32_t"
.LASF34:
	.string	"cpu_id"
.LASF18:
	.string	"esp_ipc_func_t"
.LASF37:
	.string	"esp_ipc_call"
.LASF26:
	.string	"IPC_WAIT_FOR_START"
.LASF48:
	.string	"xQueueGenericSend"
.LASF31:
	.string	"func"
.LASF8:
	.string	"long long int"
.LASF56:
	.string	"C:\\\\esp\\\\ArkPOS2-esp\\\\build\\\\esp32"
.LASF53:
	.string	"xQueueCreateMutex"
.LASF10:
	.string	"long int"
.LASF5:
	.string	"__uint8_t"
.LASF24:
	.string	"QueueHandle_t"
.LASF21:
	.string	"TickType_t"
.LASF3:
	.string	"unsigned char"
.LASF51:
	.string	"xQueueGenericCreate"
.LASF25:
	.string	"SemaphoreHandle_t"
.LASF29:
	.string	"__func__"
.LASF58:
	.string	"esp_ipc_init"
.LASF43:
	.string	"s_func"
.LASF47:
	.string	"abort"
.LASF54:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF2:
	.string	"signed char"
.LASF49:
	.string	"__assert_func"
.LASF16:
	.string	"uint32_t"
.LASF0:
	.string	"unsigned int"
.LASF42:
	.string	"s_ipc_ack"
.LASF19:
	.string	"BaseType_t"
.LASF50:
	.string	"xTaskGetSchedulerState"
.LASF32:
	.string	"ipc_task"
.LASF13:
	.string	"char"
.LASF15:
	.string	"int32_t"
.LASF1:
	.string	"short unsigned int"
.LASF30:
	.string	"cpuid"
.LASF20:
	.string	"UBaseType_t"
.LASF22:
	.string	"_Bool"
.LASF46:
	.string	"xQueueGenericReceive"
.LASF33:
	.string	"esp_ipc_call_and_wait"
.LASF12:
	.string	"long unsigned int"
.LASF27:
	.string	"IPC_WAIT_FOR_END"
.LASF28:
	.string	"esp_ipc_wait_t"
.LASF52:
	.string	"xTaskCreatePinnedToCore"
.LASF6:
	.string	"__int32_t"
.LASF14:
	.string	"uint8_t"
.LASF45:
	.string	"s_ipc_wait"
.LASF55:
	.string	"C:/esp/esp-idf/components/esp32/ipc.c"
.LASF36:
	.string	"task_names"
.LASF17:
	.string	"esp_err_t"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-61-gab8375a) 5.2.0"
