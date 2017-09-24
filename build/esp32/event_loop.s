	.file	"event_loop.c"
	.text
.Ltext0:
	.section	.text.esp_event_post_to_user,"ax",@progbits
	.literal_position
	.literal .LC0, s_event_handler_cb
	.literal .LC1, s_event_ctx
	.align	4
	.type	esp_event_post_to_user, @function
esp_event_post_to_user:
.LFB9:
	.file 1 "C:/esp/esp-idf/components/esp32/event_loop.c"
	.loc 1 41 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 42 0
	l32r	a8, .LC0
	l32i.n	a8, a8, 0
	beqz.n	a8, .L3
	.loc 1 43 0
	mov.n	a11, a2
	l32r	a2, .LC1
.LVL1:
	l32i.n	a10, a2, 0
	callx8	a8
.LVL2:
	mov.n	a2, a10
	retw.n
.LVL3:
.L3:
	.loc 1 45 0
	movi.n	a2, 0
.LVL4:
	.loc 1 46 0
	retw.n
.LFE9:
	.size	esp_event_post_to_user, .-esp_event_post_to_user
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC3:
	.string	"event"
	.align	4
.LC5:
	.string	"\033[0;31mE (%d) %s: default event handler failed!\033[0m\n"
	.align	4
.LC7:
	.string	"\033[0;31mE (%d) %s: post event to user fail!\033[0m\n"
	.section	.text.esp_event_loop_task,"ax",@progbits
	.literal_position
	.literal .LC2, s_event_queue
	.literal .LC4, .LC3
	.literal .LC6, .LC5
	.literal .LC8, .LC7
	.align	4
	.type	esp_event_loop_task, @function
esp_event_loop_task:
.LFB10:
	.loc 1 49 0
.LVL5:
	entry	sp, 80
.LCFI1:
.L7:
.LBB2:
	.loc 1 52 0
	movi.n	a13, 0
	movi.n	a12, -1
	mov.n	a11, sp
	l32r	a8, .LC2
	l32i.n	a10, a8, 0
	call8	xQueueGenericReceive
.LVL6:
	bnei	a10, 1, .L7
.LBB3:
	.loc 1 53 0
	mov.n	a10, sp
	call8	esp_event_process_default
.LVL7:
	.loc 1 54 0
	beqz.n	a10, .L6
	.loc 1 55 0 discriminator 1
	call8	esp_log_timestamp
.LVL8:
	l32r	a11, .LC4
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC6
	movi.n	a10, 1
	call8	esp_log_write
.LVL9:
.L6:
	.loc 1 57 0
	mov.n	a10, sp
	call8	esp_event_post_to_user
.LVL10:
	.loc 1 58 0
	beqz.n	a10, .L7
	.loc 1 59 0 discriminator 1
	call8	esp_log_timestamp
.LVL11:
	l32r	a11, .LC4
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC8
	movi.n	a10, 1
	call8	esp_log_write
.LVL12:
.LBE3:
.LBE2:
	.loc 1 62 0 discriminator 1
	j	.L7
.LFE10:
	.size	esp_event_loop_task, .-esp_event_loop_task
	.section	.text.esp_event_loop_set_cb,"ax",@progbits
	.literal_position
	.literal .LC9, s_event_handler_cb
	.literal .LC10, s_event_ctx
	.align	4
	.global	esp_event_loop_set_cb
	.type	esp_event_loop_set_cb, @function
esp_event_loop_set_cb:
.LFB11:
	.loc 1 66 0
.LVL13:
	entry	sp, 32
.LCFI2:
	.loc 1 67 0
	l32r	a8, .LC9
	l32i.n	a9, a8, 0
.LVL14:
	.loc 1 68 0
	s32i.n	a2, a8, 0
	.loc 1 69 0
	l32r	a8, .LC10
	s32i.n	a3, a8, 0
	.loc 1 71 0
	mov.n	a2, a9
.LVL15:
	retw.n
.LFE11:
	.size	esp_event_loop_set_cb, .-esp_event_loop_set_cb
	.section	.rodata.str1.4
	.align	4
.LC13:
	.string	"\033[0;31mE (%d) %s: Event loop not initialized via esp_event_loop_init, but esp_event_send called\033[0m\n"
	.align	4
.LC15:
	.string	"\033[0;31mE (%d) %s: e=%d f\033[0m\n"
	.align	4
.LC17:
	.string	"\033[0;31mE (%d) %s: e null\033[0m\n"
	.section	.text.esp_event_send,"ax",@progbits
	.literal_position
	.literal .LC11, s_event_queue
	.literal .LC12, .LC3
	.literal .LC14, .LC13
	.literal .LC16, .LC15
	.literal .LC18, .LC17
	.align	4
	.global	esp_event_send
	.type	esp_event_send, @function
esp_event_send:
.LFB12:
	.loc 1 74 0
.LVL16:
	entry	sp, 32
.LCFI3:
	.loc 1 75 0
	l32r	a8, .LC11
	l32i.n	a10, a8, 0
	bnez.n	a10, .L10
	.loc 1 76 0 discriminator 1
	call8	esp_log_timestamp
.LVL17:
	l32r	a11, .LC12
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC14
	movi.n	a10, 1
	call8	esp_log_write
.LVL18:
	.loc 1 77 0 discriminator 1
	movi	a2, 0x103
.LVL19:
	retw.n
.LVL20:
.L10:
	.loc 1 79 0
	movi.n	a13, 0
	mov.n	a12, a13
	mov.n	a11, a2
	call8	xQueueGenericSend
.LVL21:
	.loc 1 80 0
	beqi	a10, 1, .L13
	.loc 1 81 0
	beqz.n	a2, .L12
	.loc 1 82 0 discriminator 1
	call8	esp_log_timestamp
.LVL22:
	l32r	a11, .LC12
	l32i.n	a15, a2, 0
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC16
	movi.n	a10, 1
	call8	esp_log_write
.LVL23:
	.loc 1 86 0 discriminator 1
	movi.n	a2, -1
.LVL24:
	retw.n
.LVL25:
.L12:
	.loc 1 84 0 discriminator 1
	call8	esp_log_timestamp
.LVL26:
	l32r	a11, .LC12
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC18
	movi.n	a10, 1
	call8	esp_log_write
.LVL27:
	.loc 1 86 0 discriminator 1
	movi.n	a2, -1
.LVL28:
	retw.n
.LVL29:
.L13:
	.loc 1 88 0
	movi.n	a2, 0
.LVL30:
	.loc 1 89 0
	retw.n
.LFE12:
	.size	esp_event_send, .-esp_event_send
	.section	.text.esp_event_loop_get_queue,"ax",@progbits
	.literal_position
	.literal .LC19, s_event_queue
	.align	4
	.global	esp_event_loop_get_queue
	.type	esp_event_loop_get_queue, @function
esp_event_loop_get_queue:
.LFB13:
	.loc 1 92 0
	entry	sp, 32
.LCFI4:
	.loc 1 94 0
	l32r	a8, .LC19
	l32i.n	a2, a8, 0
	retw.n
.LFE13:
	.size	esp_event_loop_get_queue, .-esp_event_loop_get_queue
	.section	.rodata.str1.4
	.align	4
.LC25:
	.string	"eventTask"
	.section	.text.esp_event_loop_init,"ax",@progbits
	.literal_position
	.literal .LC20, s_event_init_flag
	.literal .LC21, s_event_handler_cb
	.literal .LC22, s_event_ctx
	.literal .LC23, s_event_queue
	.literal .LC24, 4096
	.literal .LC26, .LC25
	.literal .LC27, esp_event_loop_task
	.align	4
	.global	esp_event_loop_init
	.type	esp_event_loop_init, @function
esp_event_loop_init:
.LFB14:
	.loc 1 97 0
.LVL31:
	entry	sp, 48
.LCFI5:
	.loc 1 98 0
	l32r	a8, .LC20
	l8ui	a8, a8, 0
	bnez.n	a8, .L17
	.loc 1 101 0
	l32r	a8, .LC21
	s32i.n	a2, a8, 0
	.loc 1 102 0
	l32r	a2, .LC22
.LVL32:
	s32i.n	a3, a2, 0
	.loc 1 103 0
	movi.n	a12, 0
	movi.n	a11, 0x30
	movi.n	a10, 0x20
	call8	xQueueGenericCreate
.LVL33:
	l32r	a2, .LC23
	s32i.n	a10, a2, 0
	.loc 1 105 0
	movi.n	a2, 0
	s32i.n	a2, sp, 0
	mov.n	a15, a2
	movi.n	a14, 0x14
	mov.n	a13, a2
	l32r	a12, .LC24
	l32r	a11, .LC26
	l32r	a10, .LC27
	call8	xTaskCreatePinnedToCore
.LVL34:
	.loc 1 108 0
	movi.n	a8, 1
	l32r	a3, .LC20
.LVL35:
	s8i	a8, a3, 0
	.loc 1 109 0
	retw.n
.LVL36:
.L17:
	.loc 1 99 0
	movi.n	a2, -1
.LVL37:
	.loc 1 110 0
	retw.n
.LFE14:
	.size	esp_event_loop_init, .-esp_event_loop_init
	.section	.bss.s_event_ctx,"aw",@nobits
	.align	4
	.type	s_event_ctx, @object
	.size	s_event_ctx, 4
s_event_ctx:
	.zero	4
	.section	.bss.s_event_handler_cb,"aw",@nobits
	.align	4
	.type	s_event_handler_cb, @object
	.size	s_event_handler_cb, 4
s_event_handler_cb:
	.zero	4
	.section	.bss.s_event_queue,"aw",@nobits
	.align	4
	.type	s_event_queue, @object
	.size	s_event_queue, 4
s_event_queue:
	.zero	4
	.section	.bss.s_event_init_flag,"aw",@nobits
	.type	s_event_init_flag, @object
	.size	s_event_init_flag, 1
s_event_init_flag:
	.zero	1
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
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI1-.LFB10
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI2-.LFB11
	.byte	0xe
	.uleb128 0x20
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
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI5-.LFB14
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE10:
	.text
.Letext0:
	.file 2 "C:/esp/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "C:/esp/esp-idf/components/newlib/include/stdint.h"
	.file 4 "C:/esp/esp-idf/components/esp32/include/esp_err.h"
	.file 5 "C:/esp/esp-idf/components/freertos/include/freertos/portmacro.h"
	.file 6 "C:/esp/esp-idf/components/freertos/include/freertos/queue.h"
	.file 7 "C:/esp/esp-idf/components/esp32/include/esp_wifi_types.h"
	.file 8 "C:/esp/esp-idf/components/lwip/include/lwip/port/arch/cc.h"
	.file 9 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/ip4_addr.h"
	.file 10 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/ip6_addr.h"
	.file 11 "C:/esp/esp-idf/components/tcpip_adapter/include/tcpip_adapter.h"
	.file 12 "C:/esp/esp-idf/components/esp32/include/esp_event.h"
	.file 13 "C:/esp/esp-idf/components/esp32/include/esp_event_loop.h"
	.file 14 "C:/esp/esp-idf/components/log/include/esp_log.h"
	.file 15 "C:/esp/esp-idf/components/freertos/include/freertos/task.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x9cc
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF137
	.byte	0xc
	.4byte	.LASF138
	.4byte	.LASF139
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
	.byte	0x2
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
	.byte	0x2
	.byte	0x19
	.4byte	0x25
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x2
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
	.byte	0x3
	.byte	0x15
	.4byte	0x41
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x3
	.byte	0x2c
	.4byte	0x5a
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x3
	.byte	0x2d
	.4byte	0x65
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x4
	.byte	0x18
	.4byte	0xb2
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x5
	.byte	0x6c
	.4byte	0x25
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x5
	.byte	0x73
	.4byte	0xbd
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF20
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x6
	.byte	0x58
	.4byte	0x8c
	.uleb128 0x8
	.byte	0x4
	.4byte	0x2c
	.byte	0x7
	.byte	0x32
	.4byte	0x132
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0x6
	.byte	0
	.uleb128 0x4
	.4byte	.LASF29
	.byte	0x7
	.byte	0x3a
	.4byte	0xfb
	.uleb128 0xa
	.4byte	0xa7
	.4byte	0x14d
	.uleb128 0xb
	.4byte	0x85
	.byte	0x5
	.byte	0
	.uleb128 0xa
	.4byte	0xa7
	.4byte	0x15d
	.uleb128 0xb
	.4byte	0x85
	.byte	0x1f
	.byte	0
	.uleb128 0x7
	.4byte	0x9c
	.uleb128 0x4
	.4byte	.LASF30
	.byte	0x8
	.byte	0x32
	.4byte	0xbd
	.uleb128 0xc
	.4byte	.LASF32
	.byte	0x4
	.byte	0x9
	.byte	0x2e
	.4byte	0x186
	.uleb128 0xd
	.4byte	.LASF34
	.byte	0x9
	.byte	0x2f
	.4byte	0x162
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF31
	.byte	0x9
	.byte	0x42
	.4byte	0x16d
	.uleb128 0xc
	.4byte	.LASF33
	.byte	0x10
	.byte	0xa
	.byte	0x39
	.4byte	0x1aa
	.uleb128 0xd
	.4byte	.LASF34
	.byte	0xa
	.byte	0x3a
	.4byte	0x1aa
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	0x162
	.4byte	0x1ba
	.uleb128 0xb
	.4byte	0x85
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.4byte	.LASF35
	.byte	0xa
	.byte	0x4b
	.4byte	0x191
	.uleb128 0xe
	.byte	0xc
	.byte	0xb
	.byte	0x48
	.4byte	0x1f0
	.uleb128 0xf
	.string	"ip"
	.byte	0xb
	.byte	0x49
	.4byte	0x186
	.byte	0
	.uleb128 0xd
	.4byte	.LASF36
	.byte	0xb
	.byte	0x4a
	.4byte	0x186
	.byte	0x4
	.uleb128 0xf
	.string	"gw"
	.byte	0xb
	.byte	0x4b
	.4byte	0x186
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.4byte	.LASF37
	.byte	0xb
	.byte	0x4c
	.4byte	0x1c5
	.uleb128 0xe
	.byte	0x10
	.byte	0xb
	.byte	0x4e
	.4byte	0x20f
	.uleb128 0xf
	.string	"ip"
	.byte	0xb
	.byte	0x4f
	.4byte	0x1ba
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF38
	.byte	0xb
	.byte	0x50
	.4byte	0x1fb
	.uleb128 0x8
	.byte	0x4
	.4byte	0x2c
	.byte	0xc
	.byte	0x1d
	.4byte	0x2bd
	.uleb128 0x9
	.4byte	.LASF39
	.byte	0
	.uleb128 0x9
	.4byte	.LASF40
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF41
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF42
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF43
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF44
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF45
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF46
	.byte	0x7
	.uleb128 0x9
	.4byte	.LASF47
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF48
	.byte	0x9
	.uleb128 0x9
	.4byte	.LASF49
	.byte	0xa
	.uleb128 0x9
	.4byte	.LASF50
	.byte	0xb
	.uleb128 0x9
	.4byte	.LASF51
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF52
	.byte	0xd
	.uleb128 0x9
	.4byte	.LASF53
	.byte	0xe
	.uleb128 0x9
	.4byte	.LASF54
	.byte	0xf
	.uleb128 0x9
	.4byte	.LASF55
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF56
	.byte	0x11
	.uleb128 0x9
	.4byte	.LASF57
	.byte	0x12
	.uleb128 0x9
	.4byte	.LASF58
	.byte	0x13
	.uleb128 0x9
	.4byte	.LASF59
	.byte	0x14
	.uleb128 0x9
	.4byte	.LASF60
	.byte	0x15
	.uleb128 0x9
	.4byte	.LASF61
	.byte	0x16
	.uleb128 0x9
	.4byte	.LASF62
	.byte	0x17
	.uleb128 0x9
	.4byte	.LASF63
	.byte	0x18
	.byte	0
	.uleb128 0x4
	.4byte	.LASF64
	.byte	0xc
	.byte	0x37
	.4byte	0x21a
	.uleb128 0x8
	.byte	0x4
	.4byte	0x2c
	.byte	0xc
	.byte	0x39
	.4byte	0x2e7
	.uleb128 0x9
	.4byte	.LASF65
	.byte	0
	.uleb128 0x9
	.4byte	.LASF66
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF67
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF68
	.byte	0xc
	.byte	0x3d
	.4byte	0x2c8
	.uleb128 0xe
	.byte	0x8
	.byte	0xc
	.byte	0x3e
	.4byte	0x31f
	.uleb128 0xd
	.4byte	.LASF69
	.byte	0xc
	.byte	0x3f
	.4byte	0xbd
	.byte	0
	.uleb128 0xd
	.4byte	.LASF70
	.byte	0xc
	.byte	0x40
	.4byte	0xa7
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF71
	.byte	0xc
	.byte	0x41
	.4byte	0xa7
	.byte	0x5
	.byte	0
	.uleb128 0x4
	.4byte	.LASF72
	.byte	0xc
	.byte	0x42
	.4byte	0x2f2
	.uleb128 0xe
	.byte	0x2c
	.byte	0xc
	.byte	0x44
	.4byte	0x36f
	.uleb128 0xd
	.4byte	.LASF73
	.byte	0xc
	.byte	0x45
	.4byte	0x14d
	.byte	0
	.uleb128 0xd
	.4byte	.LASF74
	.byte	0xc
	.byte	0x46
	.4byte	0xa7
	.byte	0x20
	.uleb128 0xd
	.4byte	.LASF75
	.byte	0xc
	.byte	0x47
	.4byte	0x13d
	.byte	0x21
	.uleb128 0xd
	.4byte	.LASF76
	.byte	0xc
	.byte	0x48
	.4byte	0xa7
	.byte	0x27
	.uleb128 0xd
	.4byte	.LASF77
	.byte	0xc
	.byte	0x49
	.4byte	0x132
	.byte	0x28
	.byte	0
	.uleb128 0x4
	.4byte	.LASF78
	.byte	0xc
	.byte	0x4a
	.4byte	0x32a
	.uleb128 0xe
	.byte	0x28
	.byte	0xc
	.byte	0x4c
	.4byte	0x3b3
	.uleb128 0xd
	.4byte	.LASF73
	.byte	0xc
	.byte	0x4d
	.4byte	0x14d
	.byte	0
	.uleb128 0xd
	.4byte	.LASF74
	.byte	0xc
	.byte	0x4e
	.4byte	0xa7
	.byte	0x20
	.uleb128 0xd
	.4byte	.LASF75
	.byte	0xc
	.byte	0x4f
	.4byte	0x13d
	.byte	0x21
	.uleb128 0xd
	.4byte	.LASF79
	.byte	0xc
	.byte	0x50
	.4byte	0xa7
	.byte	0x27
	.byte	0
	.uleb128 0x4
	.4byte	.LASF80
	.byte	0xc
	.byte	0x51
	.4byte	0x37a
	.uleb128 0xe
	.byte	0x8
	.byte	0xc
	.byte	0x53
	.4byte	0x3df
	.uleb128 0xd
	.4byte	.LASF81
	.byte	0xc
	.byte	0x54
	.4byte	0x132
	.byte	0
	.uleb128 0xd
	.4byte	.LASF82
	.byte	0xc
	.byte	0x55
	.4byte	0x132
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF83
	.byte	0xc
	.byte	0x56
	.4byte	0x3be
	.uleb128 0xe
	.byte	0x10
	.byte	0xc
	.byte	0x58
	.4byte	0x40b
	.uleb128 0xd
	.4byte	.LASF84
	.byte	0xc
	.byte	0x59
	.4byte	0x1f0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF85
	.byte	0xc
	.byte	0x5a
	.4byte	0xe9
	.byte	0xc
	.byte	0
	.uleb128 0x4
	.4byte	.LASF86
	.byte	0xc
	.byte	0x5b
	.4byte	0x3ea
	.uleb128 0xe
	.byte	0x8
	.byte	0xc
	.byte	0x5d
	.4byte	0x42b
	.uleb128 0xd
	.4byte	.LASF87
	.byte	0xc
	.byte	0x5e
	.4byte	0x42b
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	0xa7
	.4byte	0x43b
	.uleb128 0xb
	.4byte	0x85
	.byte	0x7
	.byte	0
	.uleb128 0x4
	.4byte	.LASF88
	.byte	0xc
	.byte	0x5f
	.4byte	0x416
	.uleb128 0xe
	.byte	0x10
	.byte	0xc
	.byte	0x61
	.4byte	0x45b
	.uleb128 0xd
	.4byte	.LASF89
	.byte	0xc
	.byte	0x62
	.4byte	0x20f
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF90
	.byte	0xc
	.byte	0x63
	.4byte	0x446
	.uleb128 0xe
	.byte	0x7
	.byte	0xc
	.byte	0x65
	.4byte	0x487
	.uleb128 0xf
	.string	"mac"
	.byte	0xc
	.byte	0x66
	.4byte	0x13d
	.byte	0
	.uleb128 0xf
	.string	"aid"
	.byte	0xc
	.byte	0x67
	.4byte	0xa7
	.byte	0x6
	.byte	0
	.uleb128 0x4
	.4byte	.LASF91
	.byte	0xc
	.byte	0x68
	.4byte	0x466
	.uleb128 0xe
	.byte	0x7
	.byte	0xc
	.byte	0x6a
	.4byte	0x4b3
	.uleb128 0xf
	.string	"mac"
	.byte	0xc
	.byte	0x6b
	.4byte	0x13d
	.byte	0
	.uleb128 0xf
	.string	"aid"
	.byte	0xc
	.byte	0x6c
	.4byte	0xa7
	.byte	0x6
	.byte	0
	.uleb128 0x4
	.4byte	.LASF92
	.byte	0xc
	.byte	0x6d
	.4byte	0x492
	.uleb128 0xe
	.byte	0xc
	.byte	0xc
	.byte	0x6f
	.4byte	0x4df
	.uleb128 0xd
	.4byte	.LASF93
	.byte	0xc
	.byte	0x70
	.4byte	0x25
	.byte	0
	.uleb128 0xf
	.string	"mac"
	.byte	0xc
	.byte	0x71
	.4byte	0x13d
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF94
	.byte	0xc
	.byte	0x72
	.4byte	0x4be
	.uleb128 0x10
	.byte	0x2c
	.byte	0xc
	.byte	0x74
	.4byte	0x56c
	.uleb128 0x11
	.4byte	.LASF95
	.byte	0xc
	.byte	0x75
	.4byte	0x36f
	.uleb128 0x11
	.4byte	.LASF96
	.byte	0xc
	.byte	0x76
	.4byte	0x3b3
	.uleb128 0x11
	.4byte	.LASF97
	.byte	0xc
	.byte	0x77
	.4byte	0x31f
	.uleb128 0x11
	.4byte	.LASF98
	.byte	0xc
	.byte	0x78
	.4byte	0x3df
	.uleb128 0x11
	.4byte	.LASF99
	.byte	0xc
	.byte	0x79
	.4byte	0x40b
	.uleb128 0x11
	.4byte	.LASF100
	.byte	0xc
	.byte	0x7a
	.4byte	0x43b
	.uleb128 0x11
	.4byte	.LASF101
	.byte	0xc
	.byte	0x7b
	.4byte	0x2e7
	.uleb128 0x11
	.4byte	.LASF102
	.byte	0xc
	.byte	0x7c
	.4byte	0x487
	.uleb128 0x11
	.4byte	.LASF103
	.byte	0xc
	.byte	0x7d
	.4byte	0x4b3
	.uleb128 0x11
	.4byte	.LASF104
	.byte	0xc
	.byte	0x7e
	.4byte	0x4df
	.uleb128 0x11
	.4byte	.LASF105
	.byte	0xc
	.byte	0x7f
	.4byte	0x45b
	.byte	0
	.uleb128 0x4
	.4byte	.LASF106
	.byte	0xc
	.byte	0x80
	.4byte	0x4ea
	.uleb128 0xe
	.byte	0x30
	.byte	0xc
	.byte	0x82
	.4byte	0x598
	.uleb128 0xd
	.4byte	.LASF107
	.byte	0xc
	.byte	0x83
	.4byte	0x2bd
	.byte	0
	.uleb128 0xd
	.4byte	.LASF108
	.byte	0xc
	.byte	0x84
	.4byte	0x56c
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF109
	.byte	0xc
	.byte	0x85
	.4byte	0x577
	.uleb128 0x6
	.byte	0x4
	.4byte	0x598
	.uleb128 0x4
	.4byte	.LASF110
	.byte	0xd
	.byte	0x27
	.4byte	0x5b4
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5ba
	.uleb128 0x12
	.4byte	0xc8
	.4byte	0x5ce
	.uleb128 0x13
	.4byte	0x8c
	.uleb128 0x13
	.4byte	0x5a3
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x2c
	.byte	0xe
	.byte	0x1f
	.4byte	0x5ff
	.uleb128 0x9
	.4byte	.LASF111
	.byte	0
	.uleb128 0x9
	.4byte	.LASF112
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF113
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF114
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF115
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF116
	.byte	0x5
	.byte	0
	.uleb128 0x4
	.4byte	.LASF117
	.byte	0xe
	.byte	0x26
	.4byte	0x5ce
	.uleb128 0x14
	.4byte	.LASF118
	.byte	0x1
	.byte	0x28
	.4byte	0xc8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x640
	.uleb128 0x15
	.4byte	.LASF120
	.byte	0x1
	.byte	0x28
	.4byte	0x5a3
	.4byte	.LLST0
	.uleb128 0x16
	.4byte	.LVL2
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF119
	.byte	0x1
	.byte	0x30
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x749
	.uleb128 0x19
	.4byte	.LASF121
	.byte	0x1
	.byte	0x30
	.4byte	0x8c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1a
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x1b
	.string	"evt"
	.byte	0x1
	.byte	0x33
	.4byte	0x598
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1c
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.4byte	0x72b
	.uleb128 0x1d
	.string	"ret"
	.byte	0x1
	.byte	0x35
	.4byte	0xc8
	.4byte	.LLST1
	.uleb128 0x1e
	.4byte	.LVL7
	.4byte	0x97e
	.4byte	0x6ab
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL8
	.4byte	0x989
	.uleb128 0x1e
	.4byte	.LVL9
	.4byte	0x994
	.4byte	0x6e2
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL10
	.4byte	0x60a
	.4byte	0x6f7
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL11
	.4byte	0x989
	.uleb128 0x20
	.4byte	.LVL12
	.4byte	0x994
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL6
	.4byte	0x99f
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LASF123
	.byte	0x1
	.byte	0x41
	.4byte	0x5a9
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x78b
	.uleb128 0x22
	.string	"cb"
	.byte	0x1
	.byte	0x41
	.4byte	0x5a9
	.4byte	.LLST2
	.uleb128 0x23
	.string	"ctx"
	.byte	0x1
	.byte	0x41
	.4byte	0x8c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x24
	.4byte	.LASF122
	.byte	0x1
	.byte	0x43
	.4byte	0x5a9
	.uleb128 0x1
	.byte	0x59
	.byte	0
	.uleb128 0x21
	.4byte	.LASF124
	.byte	0x1
	.byte	0x49
	.4byte	0xc8
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x882
	.uleb128 0x15
	.4byte	.LASF120
	.byte	0x1
	.byte	0x49
	.4byte	0x5a3
	.4byte	.LLST3
	.uleb128 0x1d
	.string	"ret"
	.byte	0x1
	.byte	0x4f
	.4byte	0x25
	.4byte	.LLST4
	.uleb128 0x1f
	.4byte	.LVL17
	.4byte	0x989
	.uleb128 0x1e
	.4byte	.LVL18
	.4byte	0x994
	.4byte	0x7f9
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC13
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL21
	.4byte	0x9ab
	.4byte	0x817
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL22
	.4byte	0x989
	.uleb128 0x1e
	.4byte	.LVL23
	.4byte	0x994
	.4byte	0x84e
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL26
	.4byte	0x989
	.uleb128 0x20
	.4byte	.LVL27
	.4byte	0x994
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LASF140
	.byte	0x1
	.byte	0x5b
	.4byte	0xf0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x21
	.4byte	.LASF125
	.byte	0x1
	.byte	0x60
	.4byte	0xc8
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x928
	.uleb128 0x22
	.string	"cb"
	.byte	0x1
	.byte	0x60
	.4byte	0x5a9
	.4byte	.LLST5
	.uleb128 0x22
	.string	"ctx"
	.byte	0x1
	.byte	0x60
	.4byte	0x8c
	.4byte	.LLST6
	.uleb128 0x1e
	.4byte	.LVL33
	.4byte	0x9b7
	.4byte	0x8ec
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x20
	.4byte	.LVL34
	.4byte	0x9c3
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	esp_event_loop_task
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC25
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1000
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x44
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.string	"TAG"
	.byte	0x1
	.byte	0x22
	.4byte	0x15d
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC3
	.byte	0x9f
	.uleb128 0x24
	.4byte	.LASF126
	.byte	0x1
	.byte	0x23
	.4byte	0xe9
	.uleb128 0x5
	.byte	0x3
	.4byte	s_event_init_flag
	.uleb128 0x24
	.4byte	.LASF127
	.byte	0x1
	.byte	0x24
	.4byte	0xf0
	.uleb128 0x5
	.byte	0x3
	.4byte	s_event_queue
	.uleb128 0x24
	.4byte	.LASF128
	.byte	0x1
	.byte	0x25
	.4byte	0x5a9
	.uleb128 0x5
	.byte	0x3
	.4byte	s_event_handler_cb
	.uleb128 0x24
	.4byte	.LASF129
	.byte	0x1
	.byte	0x26
	.4byte	0x8c
	.uleb128 0x5
	.byte	0x3
	.4byte	s_event_ctx
	.uleb128 0x26
	.4byte	.LASF130
	.4byte	.LASF130
	.byte	0xc
	.byte	0xa2
	.uleb128 0x26
	.4byte	.LASF131
	.4byte	.LASF131
	.byte	0xe
	.byte	0x4c
	.uleb128 0x26
	.4byte	.LASF132
	.4byte	.LASF132
	.byte	0xe
	.byte	0x60
	.uleb128 0x27
	.4byte	.LASF133
	.4byte	.LASF133
	.byte	0x6
	.2byte	0x3e9
	.uleb128 0x27
	.4byte	.LASF134
	.4byte	.LASF134
	.byte	0x6
	.2byte	0x2a8
	.uleb128 0x27
	.4byte	.LASF135
	.4byte	.LASF135
	.byte	0x6
	.2byte	0x664
	.uleb128 0x27
	.4byte	.LASF136
	.4byte	.LASF136
	.byte	0xf
	.2byte	0x17a
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL1
	.4byte	.LVL2-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL2-1
	.4byte	.LVL3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL4
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL7
	.4byte	.LVL8-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL10
	.4byte	.LVL11-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL15
	.4byte	.LFE11
	.2byte	0x5
	.byte	0x3
	.4byte	s_event_handler_cb
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL16
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL30
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL21
	.4byte	.LVL22-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL25
	.4byte	.LVL26-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL29
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL32
	.4byte	.LVL33-1
	.2byte	0x5
	.byte	0x3
	.4byte	s_event_handler_cb
	.4byte	.LVL33-1
	.4byte	.LVL36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL37
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL31
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x53
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
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF55:
	.string	"SYSTEM_EVENT_AP_STADISCONNECTED"
.LASF54:
	.string	"SYSTEM_EVENT_AP_STACONNECTED"
.LASF5:
	.string	"__uint8_t"
.LASF87:
	.string	"pin_code"
.LASF105:
	.string	"got_ip6"
.LASF80:
	.string	"system_event_sta_disconnected_t"
.LASF9:
	.string	"long long unsigned int"
.LASF34:
	.string	"addr"
.LASF88:
	.string	"system_event_sta_wps_er_pin_t"
.LASF29:
	.string	"wifi_auth_mode_t"
.LASF84:
	.string	"ip_info"
.LASF21:
	.string	"QueueHandle_t"
.LASF122:
	.string	"old_cb"
.LASF120:
	.string	"event"
.LASF133:
	.string	"xQueueGenericReceive"
.LASF115:
	.string	"ESP_LOG_DEBUG"
.LASF8:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF57:
	.string	"SYSTEM_EVENT_AP_STA_GOT_IP6"
.LASF25:
	.string	"WIFI_AUTH_WPA2_PSK"
.LASF50:
	.string	"SYSTEM_EVENT_STA_WPS_ER_TIMEOUT"
.LASF78:
	.string	"system_event_sta_connected_t"
.LASF99:
	.string	"got_ip"
.LASF107:
	.string	"event_id"
.LASF119:
	.string	"esp_event_loop_task"
.LASF136:
	.string	"xTaskCreatePinnedToCore"
.LASF10:
	.string	"long int"
.LASF32:
	.string	"ip4_addr"
.LASF95:
	.string	"connected"
.LASF82:
	.string	"new_mode"
.LASF132:
	.string	"esp_log_write"
.LASF22:
	.string	"WIFI_AUTH_OPEN"
.LASF42:
	.string	"SYSTEM_EVENT_STA_STOP"
.LASF90:
	.string	"system_event_ap_sta_got_ip6_t"
.LASF35:
	.string	"ip6_addr_t"
.LASF18:
	.string	"BaseType_t"
.LASF36:
	.string	"netmask"
.LASF71:
	.string	"scan_id"
.LASF27:
	.string	"WIFI_AUTH_WPA2_ENTERPRISE"
.LASF123:
	.string	"esp_event_loop_set_cb"
.LASF68:
	.string	"system_event_sta_wps_fail_reason_t"
.LASF7:
	.string	"__uint32_t"
.LASF28:
	.string	"WIFI_AUTH_MAX"
.LASF48:
	.string	"SYSTEM_EVENT_STA_WPS_ER_SUCCESS"
.LASF102:
	.string	"sta_connected"
.LASF47:
	.string	"SYSTEM_EVENT_STA_LOST_IP"
.LASF89:
	.string	"ip6_info"
.LASF0:
	.string	"unsigned int"
.LASF73:
	.string	"ssid"
.LASF106:
	.string	"system_event_info_t"
.LASF12:
	.string	"long unsigned int"
.LASF30:
	.string	"u32_t"
.LASF100:
	.string	"sta_er_pin"
.LASF121:
	.string	"pvParameters"
.LASF77:
	.string	"authmode"
.LASF91:
	.string	"system_event_ap_staconnected_t"
.LASF134:
	.string	"xQueueGenericSend"
.LASF41:
	.string	"SYSTEM_EVENT_STA_START"
.LASF101:
	.string	"sta_er_fail_reason"
.LASF1:
	.string	"short unsigned int"
.LASF104:
	.string	"ap_probereqrecved"
.LASF37:
	.string	"tcpip_adapter_ip_info_t"
.LASF62:
	.string	"SYSTEM_EVENT_ETH_GOT_IP"
.LASF126:
	.string	"s_event_init_flag"
.LASF70:
	.string	"number"
.LASF127:
	.string	"s_event_queue"
.LASF109:
	.string	"system_event_t"
.LASF26:
	.string	"WIFI_AUTH_WPA_WPA2_PSK"
.LASF114:
	.string	"ESP_LOG_INFO"
.LASF65:
	.string	"WPS_FAIL_REASON_NORMAL"
.LASF11:
	.string	"sizetype"
.LASF96:
	.string	"disconnected"
.LASF19:
	.string	"TickType_t"
.LASF60:
	.string	"SYSTEM_EVENT_ETH_CONNECTED"
.LASF45:
	.string	"SYSTEM_EVENT_STA_AUTHMODE_CHANGE"
.LASF66:
	.string	"WPS_FAIL_REASON_RECV_M2D"
.LASF83:
	.string	"system_event_sta_authmode_change_t"
.LASF117:
	.string	"esp_log_level_t"
.LASF40:
	.string	"SYSTEM_EVENT_SCAN_DONE"
.LASF92:
	.string	"system_event_ap_stadisconnected_t"
.LASF94:
	.string	"system_event_ap_probe_req_rx_t"
.LASF75:
	.string	"bssid"
.LASF85:
	.string	"ip_changed"
.LASF129:
	.string	"s_event_ctx"
.LASF64:
	.string	"system_event_id_t"
.LASF20:
	.string	"_Bool"
.LASF15:
	.string	"int32_t"
.LASF3:
	.string	"unsigned char"
.LASF103:
	.string	"sta_disconnected"
.LASF128:
	.string	"s_event_handler_cb"
.LASF137:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF124:
	.string	"esp_event_send"
.LASF4:
	.string	"short int"
.LASF74:
	.string	"ssid_len"
.LASF131:
	.string	"esp_log_timestamp"
.LASF112:
	.string	"ESP_LOG_ERROR"
.LASF81:
	.string	"old_mode"
.LASF51:
	.string	"SYSTEM_EVENT_STA_WPS_ER_PIN"
.LASF135:
	.string	"xQueueGenericCreate"
.LASF79:
	.string	"reason"
.LASF76:
	.string	"channel"
.LASF139:
	.string	"C:\\\\esp\\\\ArkPOS2-esp\\\\build\\\\esp32"
.LASF98:
	.string	"auth_change"
.LASF63:
	.string	"SYSTEM_EVENT_MAX"
.LASF140:
	.string	"esp_event_loop_get_queue"
.LASF16:
	.string	"uint32_t"
.LASF59:
	.string	"SYSTEM_EVENT_ETH_STOP"
.LASF130:
	.string	"esp_event_process_default"
.LASF33:
	.string	"ip6_addr"
.LASF111:
	.string	"ESP_LOG_NONE"
.LASF13:
	.string	"char"
.LASF116:
	.string	"ESP_LOG_VERBOSE"
.LASF43:
	.string	"SYSTEM_EVENT_STA_CONNECTED"
.LASF53:
	.string	"SYSTEM_EVENT_AP_STOP"
.LASF93:
	.string	"rssi"
.LASF97:
	.string	"scan_done"
.LASF24:
	.string	"WIFI_AUTH_WPA_PSK"
.LASF110:
	.string	"system_event_cb_t"
.LASF6:
	.string	"__int32_t"
.LASF61:
	.string	"SYSTEM_EVENT_ETH_DISCONNECTED"
.LASF49:
	.string	"SYSTEM_EVENT_STA_WPS_ER_FAILED"
.LASF108:
	.string	"event_info"
.LASF86:
	.string	"system_event_sta_got_ip_t"
.LASF31:
	.string	"ip4_addr_t"
.LASF125:
	.string	"esp_event_loop_init"
.LASF38:
	.string	"tcpip_adapter_ip6_info_t"
.LASF113:
	.string	"ESP_LOG_WARN"
.LASF39:
	.string	"SYSTEM_EVENT_WIFI_READY"
.LASF69:
	.string	"status"
.LASF17:
	.string	"esp_err_t"
.LASF44:
	.string	"SYSTEM_EVENT_STA_DISCONNECTED"
.LASF58:
	.string	"SYSTEM_EVENT_ETH_START"
.LASF14:
	.string	"uint8_t"
.LASF138:
	.string	"C:/esp/esp-idf/components/esp32/event_loop.c"
.LASF118:
	.string	"esp_event_post_to_user"
.LASF67:
	.string	"WPS_FAIL_REASON_MAX"
.LASF72:
	.string	"system_event_sta_scan_done_t"
.LASF46:
	.string	"SYSTEM_EVENT_STA_GOT_IP"
.LASF56:
	.string	"SYSTEM_EVENT_AP_PROBEREQRECVED"
.LASF52:
	.string	"SYSTEM_EVENT_AP_START"
.LASF23:
	.string	"WIFI_AUTH_WEP"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-61-gab8375a) 5.2.0"
