	.file	"smartconfig.c"
	.text
.Ltext0:
	.section	.text.sc_ack_send_get_errno,"ax",@progbits
	.literal_position
	.literal .LC0, 4103
	.literal .LC1, 4095
	.align	4
	.type	sc_ack_send_get_errno, @function
sc_ack_send_get_errno:
.LFB13:
	.file 1 "C:/esp/esp-idf/components/esp32/smartconfig.c"
	.loc 1 36 0
.LVL0:
	entry	sp, 48
.LCFI0:
	.loc 1 37 0
	movi.n	a8, 0
	s32i.n	a8, sp, 0
	.loc 1 38 0
	movi.n	a8, 4
	s32i.n	a8, sp, 4
	.loc 1 40 0
	add.n	a14, sp, a8
	mov.n	a13, sp
	l32r	a12, .LC0
	l32r	a11, .LC1
	mov.n	a10, a2
	call8	lwip_getsockopt_r
.LVL1:
	.loc 1 43 0
	l32i.n	a2, sp, 0
.LVL2:
	retw.n
.LFE13:
	.size	sc_ack_send_get_errno, .-sc_ack_send_get_errno
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC4:
	.string	"smartconfig"
	.align	4
.LC6:
	.string	"\033[0;31mE (%d) %s: Creat udp socket failed\033[0m\n"
	.align	4
.LC9:
	.string	"\033[0;31mE (%d) %s: send failed, errno %d\033[0m\n"
	.section	.text.sc_ack_send_task,"ax",@progbits
	.literal_position
	.literal .LC2, 18266
	.literal .LC3, 10000
	.literal .LC5, .LC4
	.literal .LC7, .LC6
	.literal .LC8, 4095
	.literal .LC10, .LC9
	.literal .LC11, s_sc_ack_send
	.align	4
	.type	sc_ack_send_task, @function
sc_ack_send_task:
.LFB14:
	.loc 1 46 0
.LVL3:
	entry	sp, 64
.LCFI1:
.LVL4:
	.loc 1 49 0
	addi	a7, a2, 19
.LVL5:
	.loc 1 50 0
	l32i.n	a3, a2, 0
	bnez.n	a3, .L17
	l32r	a5, .LC2
	j	.L3
.L17:
	l32r	a5, .LC3
.L3:
.LVL6:
	.loc 1 54 0 discriminator 4
	movi.n	a3, 1
	s32i.n	a3, sp, 28
	.loc 1 56 0 discriminator 4
	l32i.n	a3, a2, 0
	bnez.n	a3, .L18
	.loc 1 56 0 is_stmt 0
	movi.n	a6, 0xb
	j	.L4
.L18:
	movi.n	a6, 7
.L4:
.LVL7:
	.loc 1 61 0 is_stmt 1 discriminator 4
	movi.n	a3, 0
	s32i.n	a3, sp, 12
	s32i.n	a3, sp, 16
	s32i.n	a3, sp, 20
	s32i.n	a3, sp, 24
	.loc 1 62 0 discriminator 4
	movi.n	a4, 2
	s8i	a4, sp, 13
	.loc 1 63 0 discriminator 4
	mov.n	a10, a7
	call8	ipaddr_addr
.LVL8:
	s32i.n	a10, sp, 16
	.loc 1 64 0 discriminator 4
	extui	a10, a5, 0, 16
	call8	lwip_htons
.LVL9:
	s16i	a10, sp, 14
	.loc 1 66 0 discriminator 4
	addi.n	a11, a2, 13
	mov.n	a10, a3
	call8	esp_wifi_get_mac
.LVL10:
	.loc 1 68 0 discriminator 4
	movi.n	a10, 0x14
	call8	vTaskDelay
.LVL11:
	.loc 1 57 0 discriminator 4
	movi.n	a4, 1
	.loc 1 70 0 discriminator 4
	j	.L5
.LVL12:
.L16:
	.loc 1 72 0
	mov.n	a11, sp
	movi.n	a10, 0
	call8	tcpip_adapter_get_ip_info
.LVL13:
	.loc 1 73 0
	bnez.n	a10, .L6
	.loc 1 73 0 is_stmt 0 discriminator 1
	l32i.n	a3, sp, 0
	beqz.n	a3, .L6
	.loc 1 75 0 is_stmt 1
	l32i.n	a3, a2, 0
	bnez.n	a3, .L7
	.loc 1 76 0
	l8ui	a3, sp, 0
	s8i	a3, a7, 0
	l8ui	a3, sp, 1
	s8i	a3, a7, 1
	l8ui	a3, sp, 2
	s8i	a3, a7, 2
	l8ui	a3, sp, 3
	s8i	a3, a7, 3
.L7:
	.loc 1 80 0
	movi.n	a12, 0
	movi.n	a11, 2
	mov.n	a10, a11
.LVL14:
	call8	lwip_socket
.LVL15:
	mov.n	a5, a10
.LVL16:
	.loc 1 81 0
	bgez	a10, .L8
	.loc 1 82 0 discriminator 1
	call8	esp_log_timestamp
.LVL17:
	l32r	a11, .LC5
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC7
	movi.n	a10, 1
	call8	esp_log_write
.LVL18:
	.loc 1 83 0 discriminator 1
	mov.n	a10, a2
	call8	free
.LVL19:
	.loc 1 84 0 discriminator 1
	movi.n	a10, 0
	call8	vTaskDelete
.LVL20:
.L8:
	.loc 1 87 0
	movi.n	a14, 4
	addi	a13, sp, 28
	movi.n	a12, 0x24
	l32r	a11, .LC8
	mov.n	a10, a5
	call8	lwip_setsockopt_r
.LVL21:
	.loc 1 89 0
	j	.L9
.L14:
	.loc 1 91 0
	movi.n	a10, 0xa
	call8	vTaskDelay
.LVL22:
	.loc 1 93 0
	movi.n	a15, 0x10
	addi.n	a14, sp, 12
	movi.n	a13, 0
	mov.n	a12, a6
	addi.n	a11, a2, 12
	mov.n	a10, a5
	call8	lwip_sendto_r
.LVL23:
	.loc 1 94 0
	blti	a10, 1, .L10
	.loc 1 96 0
	addi.n	a3, a4, 1
	extui	a3, a3, 0, 8
.LVL24:
	movi.n	a8, 0x1d
	bgeu	a8, a4, .L11
	.loc 1 97 0
	l32i.n	a4, a2, 4
	beqz.n	a4, .L12
	.loc 1 98 0
	movi.n	a8, 1
	s8i	a8, a4, 0
.L12:
	.loc 1 100 0
	l32i.n	a4, a2, 8
	beqz.n	a4, .L13
	.loc 1 101 0
	mov.n	a11, a7
	movi.n	a10, 4
.LVL25:
	callx8	a4
.LVL26:
.L13:
	.loc 1 103 0
	mov.n	a10, a5
	call8	lwip_close_r
.LVL27:
	.loc 1 104 0
	mov.n	a10, a2
	call8	free
.LVL28:
	.loc 1 105 0
	movi.n	a10, 0
	call8	vTaskDelete
.LVL29:
	j	.L11
.LVL30:
.L10:
	.loc 1 109 0
	mov.n	a10, a5
.LVL31:
	call8	sc_ack_send_get_errno
.LVL32:
	mov.n	a3, a10
.LVL33:
	.loc 1 110 0
	addi	a8, a10, -11
	bltui	a8, 2, .L19
	.loc 1 114 0 discriminator 1
	call8	esp_log_timestamp
.LVL34:
	l32r	a11, .LC5
	mov.n	a15, a3
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC10
	movi.n	a10, 1
	call8	esp_log_write
.LVL35:
	.loc 1 115 0 discriminator 1
	mov.n	a10, a5
	call8	lwip_close_r
.LVL36:
	.loc 1 116 0 discriminator 1
	mov.n	a10, a2
	call8	free
.LVL37:
	.loc 1 117 0 discriminator 1
	movi.n	a10, 0
	call8	vTaskDelete
.LVL38:
	mov.n	a3, a4
.LVL39:
	j	.L11
.LVL40:
.L19:
	mov.n	a3, a4
.LVL41:
.L11:
	.loc 1 117 0 is_stmt 0
	mov.n	a4, a3
.L9:
.LVL42:
	.loc 1 89 0 is_stmt 1
	l32r	a3, .LC11
	l8ui	a3, a3, 0
	bnez.n	a3, .L14
	j	.L5
.LVL43:
.L6:
	.loc 1 122 0
	movi.n	a10, 0xa
.LVL44:
	call8	vTaskDelay
.LVL45:
.L5:
	.loc 1 70 0
	l32r	a3, .LC11
	l8ui	a3, a3, 0
	bnez.n	a3, .L16
	.loc 1 126 0
	mov.n	a10, a2
	call8	free
.LVL46:
	.loc 1 127 0
	movi.n	a10, 0
	call8	vTaskDelete
.LVL47:
	retw.n
.LFE14:
	.size	sc_ack_send_task, .-sc_ack_send_task
	.section	.rodata.str1.4
	.align	4
.LC13:
	.string	"\033[0;31mE (%d) %s: Smart config ack parameter error\033[0m\n"
	.align	4
.LC15:
	.string	"\033[0;31mE (%d) %s: Smart config ack parameter malloc fail\033[0m\n"
	.align	4
.LC19:
	.string	"sc_ack_send_task"
	.section	.text.sc_ack_send,"ax",@progbits
	.literal_position
	.literal .LC12, .LC4
	.literal .LC14, .LC13
	.literal .LC16, .LC15
	.literal .LC17, s_sc_ack_send
	.literal .LC18, 2048
	.literal .LC20, .LC19
	.literal .LC21, sc_ack_send_task
	.literal .LC22, 2147483647
	.align	4
	.global	sc_ack_send
	.type	sc_ack_send, @function
sc_ack_send:
.LFB15:
	.loc 1 131 0
.LVL48:
	entry	sp, 48
.LCFI2:
.LVL49:
	.loc 1 134 0
	bnez.n	a2, .L21
	.loc 1 135 0 discriminator 1
	call8	esp_log_timestamp
.LVL50:
	l32r	a11, .LC12
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC14
	movi.n	a10, 1
	call8	esp_log_write
.LVL51:
	.loc 1 136 0 discriminator 1
	retw.n
.L21:
	.loc 1 139 0
	movi.n	a10, 0x18
	call8	malloc
.LVL52:
	mov.n	a3, a10
.LVL53:
	.loc 1 140 0
	bnez.n	a10, .L23
	.loc 1 141 0 discriminator 1
	call8	esp_log_timestamp
.LVL54:
	l32r	a11, .LC12
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC16
	movi.n	a10, 1
	call8	esp_log_write
.LVL55:
	.loc 1 142 0 discriminator 1
	retw.n
.L23:
	.loc 1 144 0
	movi.n	a12, 0x18
	mov.n	a11, a2
	call8	memcpy
.LVL56:
	.loc 1 146 0
	movi.n	a8, 1
	l32r	a2, .LC17
.LVL57:
	s8i	a8, a2, 0
	.loc 1 148 0
	l32r	a2, .LC22
	s32i.n	a2, sp, 0
	movi.n	a15, 0
	movi.n	a14, 2
	mov.n	a13, a3
	l32r	a12, .LC18
	l32r	a11, .LC20
	l32r	a10, .LC21
	call8	xTaskCreatePinnedToCore
.LVL58:
	retw.n
.LFE15:
	.size	sc_ack_send, .-sc_ack_send
	.section	.text.sc_ack_send_stop,"ax",@progbits
	.literal_position
	.literal .LC23, s_sc_ack_send
	.align	4
	.global	sc_ack_send_stop
	.type	sc_ack_send_stop, @function
sc_ack_send_stop:
.LFB16:
	.loc 1 152 0
	entry	sp, 32
.LCFI3:
	.loc 1 153 0
	movi.n	a9, 0
	l32r	a8, .LC23
	s8i	a9, a8, 0
	retw.n
.LFE16:
	.size	sc_ack_send_stop, .-sc_ack_send_stop
	.section	.bss.s_sc_ack_send,"aw",@nobits
	.type	s_sc_ack_send, @object
	.size	s_sc_ack_send, 1
s_sc_ack_send:
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
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI0-.LFB13
	.byte	0xe
	.uleb128 0x30
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
	.uleb128 0x40
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI2-.LFB15
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI3-.LFB16
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
	.text
.Letext0:
	.file 2 "C:/esp/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "C:/esp/esp-idf/components/newlib/include/stdint.h"
	.file 4 "C:/esp/esp-idf/components/freertos/include/freertos/portmacro.h"
	.file 5 "C:/esp/esp-idf/components/lwip/include/lwip/port/arch/cc.h"
	.file 6 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/ip4_addr.h"
	.file 7 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/inet.h"
	.file 8 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/sockets.h"
	.file 9 "C:/esp/esp-idf/components/tcpip_adapter/include/tcpip_adapter.h"
	.file 10 "C:/esp/esp-idf/components/esp32/include/esp_interface.h"
	.file 11 "C:/esp/esp-idf/components/log/include/esp_log.h"
	.file 12 "C:/esp/esp-idf/components/esp32/include/esp_smartconfig.h"
	.file 13 "C:/esp/esp-idf/components/esp32/smartconfig.h"
	.file 14 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/def.h"
	.file 15 "C:/esp/esp-idf/components/esp32/include/esp_wifi.h"
	.file 16 "C:/esp/esp-idf/components/freertos/include/freertos/task.h"
	.file 17 "C:/esp/esp-idf/components/newlib/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x98e
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF104
	.byte	0xc
	.4byte	.LASF105
	.4byte	.LASF106
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
	.byte	0x16
	.4byte	0x33
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
	.uleb128 0x8
	.4byte	0x95
	.4byte	0xb7
	.uleb128 0x9
	.4byte	0x85
	.byte	0x7
	.byte	0
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x3
	.byte	0x15
	.4byte	0x41
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x3
	.byte	0x21
	.4byte	0x5a
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x3
	.byte	0x2d
	.4byte	0x65
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF17
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x4
	.byte	0x76
	.4byte	0xcd
	.uleb128 0x7
	.4byte	0x9c
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x5
	.byte	0x2e
	.4byte	0xb7
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x5
	.byte	0x30
	.4byte	0xc2
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x5
	.byte	0x32
	.4byte	0xcd
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0x4
	.byte	0x6
	.byte	0x2e
	.4byte	0x129
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x6
	.byte	0x2f
	.4byte	0x105
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF22
	.byte	0x6
	.byte	0x42
	.4byte	0x110
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0x7
	.byte	0x37
	.4byte	0x105
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0x4
	.byte	0x7
	.byte	0x3a
	.4byte	0x158
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x7
	.byte	0x3b
	.4byte	0x134
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF28
	.byte	0x8
	.byte	0x36
	.4byte	0xef
	.uleb128 0x4
	.4byte	.LASF29
	.byte	0x8
	.byte	0x3b
	.4byte	0xfa
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0x10
	.byte	0x8
	.byte	0x40
	.4byte	0x1b7
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x8
	.byte	0x41
	.4byte	0xef
	.byte	0
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x8
	.byte	0x42
	.4byte	0x158
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0x8
	.byte	0x43
	.4byte	0x163
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0x8
	.byte	0x44
	.4byte	0x13f
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x8
	.byte	0x46
	.4byte	0xa7
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.4byte	.LASF36
	.byte	0x10
	.byte	0x8
	.byte	0x55
	.4byte	0x1e8
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x8
	.byte	0x56
	.4byte	0xef
	.byte	0
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0x8
	.byte	0x57
	.4byte	0x158
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0x8
	.byte	0x58
	.4byte	0x1e8
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.4byte	0x95
	.4byte	0x1f8
	.uleb128 0x9
	.4byte	0x85
	.byte	0xd
	.byte	0
	.uleb128 0x4
	.4byte	.LASF40
	.byte	0x8
	.byte	0x68
	.4byte	0x105
	.uleb128 0xc
	.byte	0x4
	.4byte	0x2c
	.byte	0xa
	.byte	0x19
	.4byte	0x228
	.uleb128 0xd
	.4byte	.LASF41
	.byte	0
	.uleb128 0xd
	.4byte	.LASF42
	.byte	0x1
	.uleb128 0xd
	.4byte	.LASF43
	.byte	0x2
	.uleb128 0xd
	.4byte	.LASF44
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb7
	.uleb128 0x8
	.4byte	0xb7
	.4byte	0x23e
	.uleb128 0x9
	.4byte	0x85
	.byte	0x5
	.byte	0
	.uleb128 0xe
	.byte	0xc
	.byte	0x9
	.byte	0x48
	.4byte	0x269
	.uleb128 0xf
	.string	"ip"
	.byte	0x9
	.byte	0x49
	.4byte	0x129
	.byte	0
	.uleb128 0xb
	.4byte	.LASF45
	.byte	0x9
	.byte	0x4a
	.4byte	0x129
	.byte	0x4
	.uleb128 0xf
	.string	"gw"
	.byte	0x9
	.byte	0x4b
	.4byte	0x129
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.4byte	.LASF46
	.byte	0x9
	.byte	0x4c
	.4byte	0x23e
	.uleb128 0xc
	.byte	0x4
	.4byte	0x2c
	.byte	0x9
	.byte	0x6d
	.4byte	0x299
	.uleb128 0xd
	.4byte	.LASF47
	.byte	0
	.uleb128 0xd
	.4byte	.LASF48
	.byte	0x1
	.uleb128 0xd
	.4byte	.LASF49
	.byte	0x2
	.uleb128 0xd
	.4byte	.LASF50
	.byte	0x3
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x2c
	.byte	0xb
	.byte	0x1f
	.4byte	0x2ca
	.uleb128 0xd
	.4byte	.LASF51
	.byte	0
	.uleb128 0xd
	.4byte	.LASF52
	.byte	0x1
	.uleb128 0xd
	.4byte	.LASF53
	.byte	0x2
	.uleb128 0xd
	.4byte	.LASF54
	.byte	0x3
	.uleb128 0xd
	.4byte	.LASF55
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF56
	.byte	0x5
	.byte	0
	.uleb128 0x4
	.4byte	.LASF57
	.byte	0xb
	.byte	0x26
	.4byte	0x299
	.uleb128 0xc
	.byte	0x4
	.4byte	0x2c
	.byte	0xc
	.byte	0x1a
	.4byte	0x300
	.uleb128 0xd
	.4byte	.LASF58
	.byte	0
	.uleb128 0xd
	.4byte	.LASF59
	.byte	0x1
	.uleb128 0xd
	.4byte	.LASF60
	.byte	0x2
	.uleb128 0xd
	.4byte	.LASF61
	.byte	0x3
	.uleb128 0xd
	.4byte	.LASF62
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF63
	.byte	0xc
	.byte	0x20
	.4byte	0x2d5
	.uleb128 0x4
	.4byte	.LASF64
	.byte	0xc
	.byte	0x33
	.4byte	0x316
	.uleb128 0x6
	.byte	0x4
	.4byte	0x31c
	.uleb128 0x10
	.4byte	0x32c
	.uleb128 0x11
	.4byte	0x300
	.uleb128 0x11
	.4byte	0x8c
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x2c
	.byte	0xd
	.byte	0x24
	.4byte	0x345
	.uleb128 0xd
	.4byte	.LASF65
	.byte	0
	.uleb128 0xd
	.4byte	.LASF66
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF67
	.byte	0xd
	.byte	0x27
	.4byte	0x32c
	.uleb128 0xe
	.byte	0xb
	.byte	0xd
	.byte	0x30
	.4byte	0x37c
	.uleb128 0xb
	.4byte	.LASF68
	.byte	0xd
	.byte	0x31
	.4byte	0xb7
	.byte	0
	.uleb128 0xf
	.string	"mac"
	.byte	0xd
	.byte	0x32
	.4byte	0x22e
	.byte	0x1
	.uleb128 0xf
	.string	"ip"
	.byte	0xd
	.byte	0x33
	.4byte	0x37c
	.byte	0x7
	.byte	0
	.uleb128 0x8
	.4byte	0xb7
	.4byte	0x38c
	.uleb128 0x9
	.4byte	0x85
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.4byte	.LASF69
	.byte	0x18
	.byte	0xd
	.byte	0x2c
	.4byte	0x3c8
	.uleb128 0xb
	.4byte	.LASF70
	.byte	0xd
	.byte	0x2d
	.4byte	0x345
	.byte	0
	.uleb128 0xb
	.4byte	.LASF71
	.byte	0xd
	.byte	0x2e
	.4byte	0x228
	.byte	0x4
	.uleb128 0xf
	.string	"cb"
	.byte	0xd
	.byte	0x2f
	.4byte	0x30b
	.byte	0x8
	.uleb128 0xf
	.string	"ctx"
	.byte	0xd
	.byte	0x34
	.4byte	0x350
	.byte	0xc
	.byte	0
	.uleb128 0x4
	.4byte	.LASF72
	.byte	0xd
	.byte	0x35
	.4byte	0x38c
	.uleb128 0x12
	.4byte	.LASF107
	.byte	0x1
	.byte	0x23
	.4byte	0x25
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x441
	.uleb128 0x13
	.string	"fd"
	.byte	0x1
	.byte	0x23
	.4byte	0x25
	.4byte	.LLST0
	.uleb128 0x14
	.4byte	.LASF73
	.byte	0x1
	.byte	0x25
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x14
	.4byte	.LASF74
	.byte	0x1
	.byte	0x26
	.4byte	0x105
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x15
	.4byte	.LVL1
	.4byte	0x8ce
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0xfff
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1007
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LASF108
	.byte	0x1
	.byte	0x2d
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x78c
	.uleb128 0x18
	.4byte	.LASF75
	.byte	0x1
	.byte	0x2d
	.4byte	0x8c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x19
	.string	"ack"
	.byte	0x1
	.byte	0x2f
	.4byte	0x78c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x14
	.4byte	.LASF76
	.byte	0x1
	.byte	0x30
	.4byte	0x269
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x14
	.4byte	.LASF77
	.byte	0x1
	.byte	0x31
	.4byte	0x228
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x1a
	.4byte	.LASF78
	.byte	0x1
	.byte	0x32
	.4byte	0x25
	.4byte	.LLST1
	.uleb128 0x14
	.4byte	.LASF79
	.byte	0x1
	.byte	0x33
	.4byte	0x16e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1b
	.4byte	.LASF80
	.byte	0x1
	.byte	0x34
	.4byte	0x1f8
	.byte	0x10
	.uleb128 0x1a
	.4byte	.LASF81
	.byte	0x1
	.byte	0x35
	.4byte	0x25
	.4byte	.LLST2
	.uleb128 0x14
	.4byte	.LASF82
	.byte	0x1
	.byte	0x36
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1a
	.4byte	.LASF83
	.byte	0x1
	.byte	0x37
	.4byte	0x25
	.4byte	.LLST3
	.uleb128 0x14
	.4byte	.LASF84
	.byte	0x1
	.byte	0x38
	.4byte	0x25
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x1a
	.4byte	.LASF85
	.byte	0x1
	.byte	0x39
	.4byte	0xb7
	.4byte	.LLST4
	.uleb128 0x1c
	.string	"err"
	.byte	0x1
	.byte	0x3a
	.4byte	0x25
	.4byte	.LLST5
	.uleb128 0x1c
	.string	"ret"
	.byte	0x1
	.byte	0x3b
	.4byte	0x25
	.4byte	.LLST6
	.uleb128 0x1d
	.4byte	.LVL8
	.4byte	0x8da
	.4byte	0x52e
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL9
	.4byte	0x8e5
	.4byte	0x546
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x6
	.byte	0x75
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL10
	.4byte	0x8f0
	.4byte	0x560
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 13
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL11
	.4byte	0x8fc
	.4byte	0x573
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x44
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL13
	.4byte	0x908
	.4byte	0x58c
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL15
	.4byte	0x914
	.4byte	0x5a9
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL17
	.4byte	0x920
	.uleb128 0x1d
	.4byte	.LVL18
	.4byte	0x92b
	.4byte	0x5e0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL19
	.4byte	0x936
	.4byte	0x5f4
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL20
	.4byte	0x941
	.4byte	0x607
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL21
	.4byte	0x94d
	.4byte	0x633
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0xfff
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x24
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL22
	.4byte	0x8fc
	.4byte	0x646
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL23
	.4byte	0x959
	.4byte	0x676
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 12
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL26
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.4byte	0x68e
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL27
	.4byte	0x965
	.4byte	0x6a2
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL28
	.4byte	0x936
	.4byte	0x6b6
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL29
	.4byte	0x941
	.4byte	0x6c9
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL32
	.4byte	0x3d3
	.4byte	0x6dd
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL34
	.4byte	0x920
	.uleb128 0x1d
	.4byte	.LVL35
	.4byte	0x92b
	.4byte	0x71a
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL36
	.4byte	0x965
	.4byte	0x72e
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL37
	.4byte	0x936
	.4byte	0x742
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL38
	.4byte	0x941
	.4byte	0x755
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL45
	.4byte	0x8fc
	.4byte	0x768
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL46
	.4byte	0x936
	.4byte	0x77c
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL47
	.4byte	0x941
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3c8
	.uleb128 0x20
	.4byte	.LASF109
	.byte	0x1
	.byte	0x82
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x89a
	.uleb128 0x21
	.4byte	.LASF86
	.byte	0x1
	.byte	0x82
	.4byte	0x78c
	.4byte	.LLST7
	.uleb128 0x1c
	.string	"ack"
	.byte	0x1
	.byte	0x84
	.4byte	0x78c
	.4byte	.LLST8
	.uleb128 0x1e
	.4byte	.LVL50
	.4byte	0x920
	.uleb128 0x1d
	.4byte	.LVL51
	.4byte	0x92b
	.4byte	0x7fc
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC13
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL52
	.4byte	0x971
	.4byte	0x80f
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x48
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL54
	.4byte	0x920
	.uleb128 0x1d
	.4byte	.LVL55
	.4byte	0x92b
	.4byte	0x846
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL56
	.4byte	0x97c
	.4byte	0x85f
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x48
	.byte	0
	.uleb128 0x15
	.4byte	.LVL58
	.4byte	0x985
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	sc_ack_send_task
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC19
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x800
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x16
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LASF110
	.byte	0x1
	.byte	0x97
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x19
	.string	"TAG"
	.byte	0x1
	.byte	0x1e
	.4byte	0xea
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC4
	.byte	0x9f
	.uleb128 0x14
	.4byte	.LASF87
	.byte	0x1
	.byte	0x21
	.4byte	0xd8
	.uleb128 0x5
	.byte	0x3
	.4byte	s_sc_ack_send
	.uleb128 0x23
	.4byte	.LASF88
	.4byte	.LASF88
	.byte	0x8
	.2byte	0x207
	.uleb128 0x24
	.4byte	.LASF89
	.4byte	.LASF89
	.byte	0x6
	.byte	0xf1
	.uleb128 0x24
	.4byte	.LASF90
	.4byte	.LASF90
	.byte	0xe
	.byte	0x6c
	.uleb128 0x23
	.4byte	.LASF91
	.4byte	.LASF91
	.byte	0xf
	.2byte	0x24f
	.uleb128 0x23
	.4byte	.LASF92
	.4byte	.LASF92
	.byte	0x10
	.2byte	0x2d1
	.uleb128 0x23
	.4byte	.LASF93
	.4byte	.LASF93
	.byte	0x9
	.2byte	0x115
	.uleb128 0x23
	.4byte	.LASF94
	.4byte	.LASF94
	.byte	0x8
	.2byte	0x214
	.uleb128 0x24
	.4byte	.LASF95
	.4byte	.LASF95
	.byte	0xb
	.byte	0x4c
	.uleb128 0x24
	.4byte	.LASF96
	.4byte	.LASF96
	.byte	0xb
	.byte	0x60
	.uleb128 0x24
	.4byte	.LASF97
	.4byte	.LASF97
	.byte	0x11
	.byte	0x5a
	.uleb128 0x23
	.4byte	.LASF98
	.4byte	.LASF98
	.byte	0x10
	.2byte	0x29d
	.uleb128 0x23
	.4byte	.LASF99
	.4byte	.LASF99
	.byte	0x8
	.2byte	0x208
	.uleb128 0x23
	.4byte	.LASF100
	.4byte	.LASF100
	.byte	0x8
	.2byte	0x212
	.uleb128 0x23
	.4byte	.LASF101
	.4byte	.LASF101
	.byte	0x8
	.2byte	0x209
	.uleb128 0x24
	.4byte	.LASF102
	.4byte	.LASF102
	.byte	0x11
	.byte	0x65
	.uleb128 0x25
	.4byte	.LASF111
	.4byte	.LASF111
	.uleb128 0x23
	.4byte	.LASF103
	.4byte	.LASF103
	.byte	0x10
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xd
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x5
	.byte	0
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
	.uleb128 0x15
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0x18
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL2
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL6
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL6
	.4byte	.LVL12
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL23
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL7
	.4byte	.LVL12
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL24
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL30
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL42
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL33
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL48
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL57
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL49
	.4byte	.LVL53
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LFE15
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x34
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
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF16:
	.string	"uint32_t"
.LASF84:
	.string	"ack_len"
.LASF68:
	.string	"token"
.LASF49:
	.string	"TCPIP_ADAPTER_IF_ETH"
.LASF106:
	.string	"C:\\\\esp\\\\esp32-ArkPOS2\\\\ArkPOS2-esp\\\\build\\\\esp32"
.LASF108:
	.string	"sc_ack_send_task"
.LASF82:
	.string	"optval"
.LASF37:
	.string	"sa_len"
.LASF100:
	.string	"lwip_sendto_r"
.LASF4:
	.string	"short int"
.LASF42:
	.string	"ESP_IF_WIFI_AP"
.LASF50:
	.string	"TCPIP_ADAPTER_IF_MAX"
.LASF83:
	.string	"sendlen"
.LASF11:
	.string	"sizetype"
.LASF85:
	.string	"packet_count"
.LASF89:
	.string	"ipaddr_addr"
.LASF79:
	.string	"server_addr"
.LASF77:
	.string	"remote_ip"
.LASF19:
	.string	"u8_t"
.LASF94:
	.string	"lwip_socket"
.LASF7:
	.string	"__uint32_t"
.LASF63:
	.string	"smartconfig_status_t"
.LASF6:
	.string	"__uint16_t"
.LASF111:
	.string	"memcpy"
.LASF65:
	.string	"SC_ACK_TYPE_ESPTOUCH"
.LASF46:
	.string	"tcpip_adapter_ip_info_t"
.LASF14:
	.string	"uint8_t"
.LASF66:
	.string	"SC_ACK_TYPE_AIRKISS"
.LASF47:
	.string	"TCPIP_ADAPTER_IF_STA"
.LASF32:
	.string	"sin_family"
.LASF58:
	.string	"SC_STATUS_WAIT"
.LASF99:
	.string	"lwip_setsockopt_r"
.LASF31:
	.string	"sin_len"
.LASF59:
	.string	"SC_STATUS_FIND_CHANNEL"
.LASF74:
	.string	"optlen"
.LASF101:
	.string	"lwip_close_r"
.LASF76:
	.string	"local_ip"
.LASF8:
	.string	"long long int"
.LASF22:
	.string	"ip4_addr_t"
.LASF80:
	.string	"sin_size"
.LASF107:
	.string	"sc_ack_send_get_errno"
.LASF10:
	.string	"long int"
.LASF88:
	.string	"lwip_getsockopt_r"
.LASF26:
	.string	"addr"
.LASF54:
	.string	"ESP_LOG_INFO"
.LASF27:
	.string	"s_addr"
.LASF78:
	.string	"remote_port"
.LASF5:
	.string	"__uint8_t"
.LASF44:
	.string	"ESP_IF_MAX"
.LASF34:
	.string	"sin_addr"
.LASF72:
	.string	"sc_ack_t"
.LASF18:
	.string	"TickType_t"
.LASF28:
	.string	"sa_family_t"
.LASF3:
	.string	"unsigned char"
.LASF69:
	.string	"sc_ack"
.LASF40:
	.string	"socklen_t"
.LASF2:
	.string	"signed char"
.LASF35:
	.string	"sin_zero"
.LASF9:
	.string	"long long unsigned int"
.LASF91:
	.string	"esp_wifi_get_mac"
.LASF70:
	.string	"type"
.LASF0:
	.string	"unsigned int"
.LASF15:
	.string	"uint16_t"
.LASF110:
	.string	"sc_ack_send_stop"
.LASF75:
	.string	"pvParameters"
.LASF71:
	.string	"link_flag"
.LASF90:
	.string	"lwip_htons"
.LASF86:
	.string	"param"
.LASF102:
	.string	"malloc"
.LASF20:
	.string	"u16_t"
.LASF1:
	.string	"short unsigned int"
.LASF13:
	.string	"char"
.LASF87:
	.string	"s_sc_ack_send"
.LASF55:
	.string	"ESP_LOG_DEBUG"
.LASF67:
	.string	"sc_ack_type_t"
.LASF51:
	.string	"ESP_LOG_NONE"
.LASF98:
	.string	"vTaskDelete"
.LASF17:
	.string	"_Bool"
.LASF23:
	.string	"in_addr_t"
.LASF24:
	.string	"ip4_addr"
.LASF57:
	.string	"esp_log_level_t"
.LASF53:
	.string	"ESP_LOG_WARN"
.LASF92:
	.string	"vTaskDelay"
.LASF109:
	.string	"sc_ack_send"
.LASF105:
	.string	"C:/esp/esp-idf/components/esp32/smartconfig.c"
.LASF12:
	.string	"long unsigned int"
.LASF25:
	.string	"in_addr"
.LASF93:
	.string	"tcpip_adapter_get_ip_info"
.LASF61:
	.string	"SC_STATUS_LINK"
.LASF33:
	.string	"sin_port"
.LASF43:
	.string	"ESP_IF_ETH"
.LASF56:
	.string	"ESP_LOG_VERBOSE"
.LASF103:
	.string	"xTaskCreatePinnedToCore"
.LASF45:
	.string	"netmask"
.LASF21:
	.string	"u32_t"
.LASF29:
	.string	"in_port_t"
.LASF41:
	.string	"ESP_IF_WIFI_STA"
.LASF38:
	.string	"sa_family"
.LASF95:
	.string	"esp_log_timestamp"
.LASF39:
	.string	"sa_data"
.LASF62:
	.string	"SC_STATUS_LINK_OVER"
.LASF73:
	.string	"sock_errno"
.LASF81:
	.string	"send_sock"
.LASF48:
	.string	"TCPIP_ADAPTER_IF_AP"
.LASF64:
	.string	"sc_callback_t"
.LASF96:
	.string	"esp_log_write"
.LASF104:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF97:
	.string	"free"
.LASF60:
	.string	"SC_STATUS_GETTING_SSID_PSWD"
.LASF52:
	.string	"ESP_LOG_ERROR"
.LASF30:
	.string	"sockaddr_in"
.LASF36:
	.string	"sockaddr"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-73-ge28a011) 5.2.0"
