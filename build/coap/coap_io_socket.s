	.file	"coap_io_socket.c"
	.text
.Ltext0:
	.section	.text.coap_malloc_packet,"ax",@progbits
	.align	4
	.type	coap_malloc_packet, @function
coap_malloc_packet:
.LFB23:
	.file 1 "C:/esp/esp-idf/components/coap/port/coap_io_socket.c"
	.loc 1 272 0
	entry	sp, 32
.LCFI0:
.LVL0:
.LBB27:
.LBB28:
	.file 2 "C:/esp/esp-idf/components/coap/libcoap/include/coap/mem.h"
	.loc 2 71 0
	movi	a11, 0x5cc
	movi.n	a10, 0
	call8	coap_malloc_type
.LVL1:
	mov.n	a2, a10
.LBE28:
.LBE27:
	.loc 1 277 0
	beqz.n	a10, .L2
	.loc 1 278 0
	movi	a12, 0x5cc
	movi.n	a11, 0
	call8	memset
.LVL2:
.L2:
	.loc 1 281 0
	retw.n
.LFE23:
	.size	coap_malloc_packet, .-coap_malloc_packet
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC0:
	.string	"DTLS "
	.align	4
.LC2:
	.string	""
	.align	4
.LC4:
	.string	"coap_new_endpoint: socket"
	.align	4
.LC7:
	.string	"coap_new_endpoint: setsockopt SO_REUSEADDR"
	.align	4
.LC9:
	.string	"coap_new_endpoint: bind"
	.align	4
.LC11:
	.string	"coap_new_endpoint: malloc"
	.align	4
.LC13:
	.string	"coap_new_endpoint: cannot determine local address"
	.align	4
.LC15:
	.string	"created %sendpoint %s\n"
	.section	.text.coap_new_endpoint,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.literal .LC3, .LC2
	.literal .LC5, .LC4
	.literal .LC6, 4095
	.literal .LC8, .LC7
	.literal .LC10, .LC9
	.literal .LC12, .LC11
	.literal .LC14, .LC13
	.literal .LC16, .LC15
	.align	4
	.global	coap_new_endpoint
	.type	coap_new_endpoint, @function
coap_new_endpoint:
.LFB20:
	.loc 1 147 0
.LVL3:
	entry	sp, 96
.LCFI1:
	.loc 1 148 0
	movi.n	a12, 0
	movi.n	a11, 2
	l8ui	a10, a2, 5
	call8	lwip_socket
.LVL4:
	mov.n	a5, a10
.LVL5:
	.loc 1 149 0
	movi.n	a4, 1
	s32i.n	a4, sp, 0
	.loc 1 152 0
	bgez	a10, .L4
	.loc 1 153 0
	l32r	a11, .LC5
	movi.n	a10, 4
	call8	coap_log_impl
.LVL6:
	.loc 1 154 0
	movi.n	a2, 0
.LVL7:
	retw.n
.LVL8:
.L4:
	.loc 1 157 0
	movi.n	a14, 4
	mov.n	a13, sp
	mov.n	a12, a14
	l32r	a11, .LC6
	call8	lwip_setsockopt_r
.LVL9:
	bgez	a10, .L6
	.loc 1 158 0
	l32r	a11, .LC8
	movi.n	a10, 4
	call8	coap_log_impl
.LVL10:
.L6:
	.loc 1 160 0
	l32i.n	a12, a2, 0
	addi.n	a11, a2, 4
	mov.n	a10, a5
	call8	lwip_bind_r
.LVL11:
	bgez	a10, .L7
	.loc 1 161 0
	l32r	a11, .LC10
	movi.n	a10, 4
	call8	coap_log_impl
.LVL12:
	.loc 1 162 0
	mov.n	a10, a5
	call8	lwip_close_r
.LVL13:
	.loc 1 163 0
	movi.n	a2, 0
.LVL14:
	retw.n
.LVL15:
.L7:
.LBB29:
.LBB30:
.LBB31:
	.loc 2 71 0
	movi.n	a11, 0x2c
	movi.n	a10, 0
	call8	coap_malloc_type
.LVL16:
	mov.n	a4, a10
.LBE31:
.LBE30:
.LBE29:
	.loc 1 167 0
	bnez.n	a10, .L8
	.loc 1 168 0
	l32r	a11, .LC12
	movi.n	a10, 4
	call8	coap_log_impl
.LVL17:
	.loc 1 169 0
	mov.n	a10, a5
	call8	lwip_close_r
.LVL18:
	.loc 1 170 0
	movi.n	a2, 0
.LVL19:
	retw.n
.LVL20:
.L8:
	.loc 1 173 0
	movi.n	a12, 0x2c
	movi.n	a11, 0
	call8	memset
.LVL21:
	.loc 1 174 0
	s32i.n	a5, a4, 0
	.loc 1 175 0
	s32i.n	a3, a4, 40
	.loc 1 177 0
	l32i.n	a2, a2, 0
.LVL22:
	s32i.n	a2, a4, 4
	.loc 1 178 0
	addi.n	a12, a4, 4
	addi.n	a11, a4, 8
	mov.n	a10, a5
	call8	lwip_getsockname_r
.LVL23:
	bgez	a10, .L9
	.loc 1 179 0
	l32r	a11, .LC14
	movi.n	a10, 4
	call8	coap_log_impl
.LVL24:
	.loc 1 180 0
	mov.n	a10, a5
	call8	lwip_close_r
.LVL25:
	.loc 1 181 0
	movi.n	a2, 0
	retw.n
.L9:
	.loc 1 185 0
	call8	coap_get_log_level
.LVL26:
	bltui	a10, 7, .L12
.LBB32:
	.loc 1 191 0
	movi.n	a12, 0x36
	addi.n	a11, sp, 4
	addi.n	a10, a4, 4
	call8	coap_print_addr
.LVL27:
	beqz.n	a10, .L10
	.loc 1 192 0
	l32i.n	a2, a4, 40
	bbci	a2, 0, .L13
	l32r	a12, .LC1
	j	.L11
.L13:
	l32r	a12, .LC3
.L11:
	.loc 1 192 0 is_stmt 0 discriminator 4
	addi.n	a13, sp, 4
	l32r	a11, .LC16
	movi.n	a10, 7
	call8	coap_log_impl
.LVL28:
.L10:
.LBE32:
	.loc 1 199 0 is_stmt 1
	mov.n	a2, a4
	retw.n
.L12:
	mov.n	a2, a4
	.loc 1 200 0
	retw.n
.LFE20:
	.size	coap_new_endpoint, .-coap_new_endpoint
	.section	.text.coap_free_endpoint,"ax",@progbits
	.align	4
	.global	coap_free_endpoint
	.type	coap_free_endpoint, @function
coap_free_endpoint:
.LFB21:
	.loc 1 203 0
.LVL29:
	entry	sp, 32
.LCFI2:
	.loc 1 204 0
	beqz.n	a2, .L14
	.loc 1 205 0
	l32i.n	a10, a2, 0
	bltz	a10, .L16
	.loc 1 206 0
	call8	lwip_close_r
.LVL30:
.L16:
.LBB33:
.LBB34:
.LBB35:
	.loc 2 78 0
	mov.n	a11, a2
	movi.n	a10, 0
	call8	coap_free_type
.LVL31:
.L14:
	retw.n
.LBE35:
.LBE34:
.LBE33:
.LFE21:
	.size	coap_free_endpoint, .-coap_free_endpoint
	.section	.text.coap_network_send,"ax",@progbits
	.align	4
	.global	coap_network_send
	.type	coap_network_send, @function
coap_network_send:
.LFB22:
	.loc 1 248 0
.LVL32:
	entry	sp, 32
.LCFI3:
.LVL33:
	.loc 1 254 0
	movi.n	a15, 0x10
	addi.n	a14, a4, 4
	movi.n	a13, 0
	mov.n	a12, a6
	mov.n	a11, a5
	l32i.n	a10, a3, 0
	call8	lwip_sendto_r
.LVL34:
	.loc 1 262 0
	mov.n	a2, a10
.LVL35:
	retw.n
.LFE22:
	.size	coap_network_send, .-coap_network_send
	.section	.text.coap_free_packet,"ax",@progbits
	.align	4
	.global	coap_free_packet
	.type	coap_free_packet, @function
coap_free_packet:
.LFB24:
	.loc 1 284 0
.LVL36:
	entry	sp, 32
.LCFI4:
.LVL37:
.LBB36:
.LBB37:
	.loc 2 78 0
	mov.n	a11, a2
	movi.n	a10, 0
	call8	coap_free_type
.LVL38:
	retw.n
.LBE37:
.LBE36:
.LFE24:
	.size	coap_free_packet, .-coap_free_packet
	.section	.text.coap_packet_populate_endpoint,"ax",@progbits
	.align	4
	.global	coap_packet_populate_endpoint
	.type	coap_packet_populate_endpoint, @function
coap_packet_populate_endpoint:
.LFB26:
	.loc 1 307 0
.LVL39:
	entry	sp, 32
.LCFI5:
	.loc 1 308 0
	l32i	a8, a2, 68
	l32i.n	a8, a8, 0
	s32i.n	a8, a3, 0
	.loc 1 309 0
	movi.n	a12, 0x20
	addi	a11, a2, 36
	addi.n	a10, a3, 4
	call8	memcpy
.LVL40:
	.loc 1 310 0
	l32i	a2, a2, 72
.LVL41:
	s32i.n	a2, a3, 36
	.loc 1 311 0
	movi.n	a2, 0
	s32i.n	a2, a3, 40
	retw.n
.LFE26:
	.size	coap_packet_populate_endpoint, .-coap_packet_populate_endpoint
	.section	.text.coap_packet_copy_source,"ax",@progbits
	.align	4
	.global	coap_packet_copy_source
	.type	coap_packet_copy_source, @function
coap_packet_copy_source:
.LFB27:
	.loc 1 315 0
.LVL42:
	entry	sp, 32
.LCFI6:
	.loc 1 316 0
	movi.n	a12, 0x20
	addi.n	a11, a2, 4
	mov.n	a10, a3
	call8	memcpy
.LVL43:
	retw.n
.LFE27:
	.size	coap_packet_copy_source, .-coap_packet_copy_source
	.section	.text.coap_packet_get_memmapped,"ax",@progbits
	.align	4
	.global	coap_packet_get_memmapped
	.type	coap_packet_get_memmapped, @function
coap_packet_get_memmapped:
.LFB28:
	.loc 1 320 0
.LVL44:
	entry	sp, 32
.LCFI7:
	.loc 1 321 0
	addi	a8, a2, 84
	s32i.n	a8, a3, 0
	.loc 1 322 0
	l32i	a2, a2, 80
.LVL45:
	s32i.n	a2, a4, 0
	retw.n
.LFE28:
	.size	coap_packet_get_memmapped, .-coap_packet_get_memmapped
	.section	.rodata.str1.4
	.align	4
.LC17:
	.string	"ep"
	.align	4
.LC20:
	.string	"C:/esp/esp-idf/components/coap/port/coap_io_socket.c"
	.align	4
.LC22:
	.string	"packet"
	.align	4
.LC24:
	.string	"coap_network_read: insufficient memory, drop packet\n"
	.align	4
.LC26:
	.string	"addr"
	.align	4
.LC29:
	.string	"C:/esp/esp-idf/components/coap/libcoap/include/coap/address.h"
	.align	4
.LC31:
	.string	"coap_network_read: %s\n"
	.align	4
.LC33:
	.string	"cannot determine local port\n"
	.align	4
.LC35:
	.string	"discarded oversized packet\n"
	.align	4
.LC37:
	.string	"a"
	.align	4
.LC41:
	.string	"packet received on wrong interface, dropped\n"
	.align	4
.LC43:
	.string	"error 3"
	.section	.text.coap_network_read,"ax",@progbits
	.literal_position
	.literal .LC18, .LC17
	.literal .LC19, __func__$6004
	.literal .LC21, .LC20
	.literal .LC23, .LC22
	.literal .LC25, .LC24
	.literal .LC27, .LC26
	.literal .LC28, __func__$5882
	.literal .LC30, .LC29
	.literal .LC32, .LC31
	.literal .LC34, .LC33
	.literal .LC36, .LC35
	.literal .LC38, .LC37
	.literal .LC39, __func__$5886
	.literal .LC40, in6addr_any
	.literal .LC42, .LC41
	.literal .LC44, .LC43
	.align	4
	.global	coap_network_read
	.type	coap_network_read, @function
coap_network_read:
.LFB30:
	.loc 1 337 0
.LVL46:
	entry	sp, 64
.LCFI8:
.LVL47:
	.loc 1 344 0
	movi.n	a4, 0x10
	s32i.n	a4, sp, 16
	.loc 1 347 0
	bnez.n	a2, .L23
	.loc 1 347 0 is_stmt 0 discriminator 1
	l32r	a13, .LC18
	l32r	a12, .LC19
	movi	a11, 0x15b
	l32r	a10, .LC21
	call8	__assert_func
.LVL48:
.L23:
	.loc 1 348 0 is_stmt 1
	bnez.n	a3, .L24
	.loc 1 348 0 is_stmt 0 discriminator 1
	l32r	a13, .LC23
	l32r	a12, .LC19
	movi	a11, 0x15c
	l32r	a10, .LC21
	call8	__assert_func
.LVL49:
.L24:
	.loc 1 350 0 is_stmt 1
	call8	coap_malloc_packet
.LVL50:
	mov.n	a4, a10
	s32i.n	a10, a3, 0
	.loc 1 352 0
	bnez.n	a10, .L25
	.loc 1 353 0
	l32r	a11, .LC25
	movi.n	a10, 4
	call8	coap_log_impl
.LVL51:
	.loc 1 354 0
	movi.n	a2, -1
.LVL52:
	retw.n
.LVL53:
.L25:
	.loc 1 357 0
	addi	a10, a10, 36
.LVL54:
.LBB54:
.LBB55:
	.file 3 "C:/esp/esp-idf/components/coap/libcoap/include/coap/address.h"
	.loc 3 103 0
	bnez.n	a10, .L27
	l32r	a13, .LC27
	l32r	a12, .LC28
	movi	a11, 0x67
	l32r	a10, .LC30
.LVL55:
	call8	__assert_func
.LVL56:
.L27:
	.loc 3 104 0
	movi.n	a12, 0x20
	movi.n	a11, 0
	call8	memset
.LVL57:
	.loc 3 107 0
	movi.n	a5, 0x1c
	s32i.n	a5, a4, 36
.LBE55:
.LBE54:
	.loc 1 358 0
	l32i.n	a4, a3, 0
.LVL58:
	addi.n	a10, a4, 4
.LVL59:
.LBB56:
.LBB57:
	.loc 3 103 0
	bnez.n	a10, .L28
	l32r	a13, .LC27
	l32r	a12, .LC28
	movi	a11, 0x67
	l32r	a10, .LC30
.LVL60:
	call8	__assert_func
.LVL61:
.L28:
	.loc 3 104 0
	movi.n	a12, 0x20
	movi.n	a11, 0
	call8	memset
.LVL62:
	.loc 3 107 0
	movi.n	a5, 0x1c
	s32i.n	a5, a4, 4
.LVL63:
.LBE57:
.LBE56:
.LBB58:
.LBB59:
	.loc 2 71 0
	movi	a11, 0x5b4
	movi.n	a10, 0
	call8	coap_malloc_type
.LVL64:
	mov.n	a5, a10
.LVL65:
.LBE59:
.LBE58:
	.loc 1 362 0
	beqz.n	a10, .L29
	.loc 1 363 0
	addi	a15, sp, 16
	mov.n	a14, sp
	movi.n	a13, 0
	movi	a12, 0x5b4
	mov.n	a11, a10
	l32i.n	a10, a2, 0
	call8	lwip_recvfrom_r
.LVL66:
	mov.n	a4, a10
.LVL67:
	.loc 1 365 0
	bgez	a10, .L30
	.loc 1 366 0
	call8	__errno
.LVL68:
	l32i.n	a10, a10, 0
	call8	strerror
.LVL69:
	mov.n	a12, a10
	l32r	a11, .LC32
	movi.n	a10, 4
	call8	coap_log_impl
.LVL70:
	.loc 1 367 0
	j	.L29
.L30:
	.loc 1 370 0
	l32i.n	a6, a3, 0
	movi.n	a7, 0x1c
	s32i.n	a7, a6, 36
	.loc 1 371 0
	l32i.n	a11, a3, 0
	addi	a12, a11, 36
	addi	a11, a11, 40
	l32i.n	a10, a2, 0
	call8	lwip_getsockname_r
.LVL71:
	bgez	a10, .L31
	.loc 1 372 0
	l32r	a11, .LC34
	movi.n	a10, 7
	call8	coap_log_impl
.LVL72:
	.loc 1 373 0
	j	.L29
.L31:
	.loc 1 377 0
	l32i.n	a6, a3, 0
	movi.n	a7, 0x1c
	s32i.n	a7, a6, 4
	.loc 1 378 0
	l32i.n	a10, a3, 0
	l32i.n	a12, a10, 4
	mov.n	a11, sp
	addi.n	a10, a10, 8
	call8	memcpy
.LVL73:
	.loc 1 380 0
	movi	a6, 0x578
	bgeu	a6, a4, .L32
	.loc 1 382 0
	l32r	a11, .LC36
	movi.n	a10, 4
	call8	coap_log_impl
.LVL74:
	.loc 1 383 0
	j	.L29
.LVL75:
.L32:
	.loc 1 386 0
	addi.n	a6, a2, 4
	l32i.n	a7, a3, 0
	addi	a7, a7, 36
.LVL76:
.LBB60:
.LBB61:
.LBB62:
.LBB63:
	.loc 3 131 0
	bnez.n	a6, .L33
	l32r	a13, .LC38
	l32r	a12, .LC39
	movi	a11, 0x83
	l32r	a10, .LC30
	call8	__assert_func
.LVL77:
.L33:
.LBB64:
.LBB65:
	.loc 3 79 0
	l8ui	a8, a6, 5
	beqi	a8, 2, .L35
	beqi	a8, 10, .L36
	j	.L44
.L35:
	.loc 3 81 0
	l32i.n	a8, a6, 8
	movi.n	a9, 0
	movi.n	a10, 1
	movnez	a10, a9, a8
	extui	a10, a10, 0, 8
	j	.L34
.L36:
	.loc 3 83 0
	movi.n	a12, 0x10
	addi.n	a11, a6, 12
	l32r	a10, .LC40
	call8	memcmp
.LVL78:
	.loc 3 85 0
	movi.n	a8, 0
	movi.n	a9, 1
	moveqz	a8, a9, a10
	extui	a10, a8, 0, 8
	j	.L34
.LVL79:
.L44:
	.loc 3 90 0
	movi.n	a10, 0
.LVL80:
.L34:
.LBE65:
.LBE64:
.LBE63:
.LBE62:
	.loc 1 332 0
	bnez.n	a10, .L41
	mov.n	a11, a6
	mov.n	a10, a7
	call8	coap_address_equals
.LVL81:
	bnez.n	a10, .L42
	.loc 1 333 0
	mov.n	a10, a7
	call8	coap_is_mcast
.LVL82:
	.loc 1 332 0
	bnez.n	a10, .L43
	j	.L37
.L41:
	movi.n	a10, 1
	j	.L37
.L42:
	movi.n	a10, 1
	j	.L37
.L43:
	movi.n	a10, 1
.L37:
.LBE61:
.LBE60:
	.loc 1 386 0
	bnez.n	a10, .L38
	.loc 1 387 0
	l32r	a11, .LC42
	movi.n	a10, 7
	call8	coap_log_impl
.LVL83:
	.loc 1 388 0
	l32r	a10, .LC44
	call8	puts
.LVL84:
	.loc 1 389 0
	j	.L29
.L38:
	.loc 1 392 0
	l32i.n	a6, a3, 0
.LVL85:
	s32i	a4, a6, 80
	.loc 1 394 0
	l32i.n	a10, a3, 0
	mov.n	a12, a4
	mov.n	a11, a5
	addi	a10, a10, 84
	call8	memcpy
.LVL86:
.LBB66:
.LBB67:
	.loc 2 78 0
	mov.n	a11, a5
	movi.n	a10, 0
	call8	coap_free_type
.LVL87:
.LBE67:
.LBE66:
	.loc 1 452 0
	l32i.n	a3, a3, 0
.LVL88:
	s32i	a2, a3, 68
	.loc 1 454 0
	mov.n	a2, a4
.LVL89:
	retw.n
.LVL90:
.L29:
	.loc 1 457 0
	beqz.n	a5, .L39
.LVL91:
.LBB68:
.LBB69:
	.loc 2 78 0
	mov.n	a11, a5
	movi.n	a10, 0
	call8	coap_free_type
.LVL92:
.L39:
.LBE69:
.LBE68:
	.loc 1 461 0
	l32i.n	a10, a3, 0
	call8	coap_free_packet
.LVL93:
	.loc 1 462 0
	movi.n	a2, 0
.LVL94:
	s32i.n	a2, a3, 0
	.loc 1 463 0
	movi.n	a2, -1
	.loc 1 464 0
	retw.n
.LFE30:
	.size	coap_network_read, .-coap_network_read
	.section	.rodata.__func__$5886,"a",@progbits
	.align	4
	.type	__func__$5886, @object
	.size	__func__$5886, 19
__func__$5886:
	.string	"coap_address_isany"
	.section	.rodata.__func__$5882,"a",@progbits
	.align	4
	.type	__func__$5882, @object
	.size	__func__$5882, 18
__func__$5882:
	.string	"coap_address_init"
	.section	.rodata.__func__$6004,"a",@progbits
	.align	4
	.type	__func__$6004, @object
	.size	__func__$6004, 18
__func__$6004:
	.string	"coap_network_read"
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
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI0-.LFB23
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI1-.LFB20
	.byte	0xe
	.uleb128 0x60
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI2-.LFB21
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI3-.LFB22
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI4-.LFB24
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI5-.LFB26
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI6-.LFB27
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI7-.LFB28
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI8-.LFB30
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE16:
	.text
.Letext0:
	.file 4 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 5 "C:/esp/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 6 "C:/esp/esp-idf/components/newlib/include/sys/_types.h"
	.file 7 "C:/esp/esp-idf/components/newlib/include/sys/types.h"
	.file 8 "C:/esp/esp-idf/components/newlib/include/stdint.h"
	.file 9 "C:/esp/esp-idf/components/lwip/include/lwip/port/arch/cc.h"
	.file 10 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/inet.h"
	.file 11 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/sockets.h"
	.file 12 "C:/esp/esp-idf/components/coap/libcoap/include/coap/debug.h"
	.file 13 "C:/esp/esp-idf/components/coap/libcoap/include/coap/coap_io.h"
	.file 14 "C:/esp/esp-idf/components/newlib/include/assert.h"
	.file 15 "C:/esp/esp-idf/components/newlib/include/string.h"
	.file 16 "C:/esp/esp-idf/components/newlib/include/sys/errno.h"
	.file 17 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1121
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF142
	.byte	0xc
	.4byte	.LASF143
	.4byte	.LASF144
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF3
	.byte	0x4
	.byte	0xd8
	.4byte	0x30
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x2
	.4byte	.LASF4
	.byte	0x5
	.byte	0x12
	.4byte	0x57
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x2
	.4byte	.LASF7
	.byte	0x5
	.byte	0x16
	.4byte	0x37
	.uleb128 0x2
	.4byte	.LASF8
	.byte	0x5
	.byte	0x1a
	.4byte	0x30
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x2
	.4byte	.LASF12
	.byte	0x6
	.byte	0x37
	.4byte	0x3e
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x6
	.byte	0x4
	.4byte	0x57
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb7
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x7
	.4byte	0xb7
	.4byte	0xce
	.uleb128 0x8
	.4byte	0x9b
	.byte	0x7
	.byte	0
	.uleb128 0x2
	.4byte	.LASF16
	.byte	0x7
	.byte	0xcb
	.4byte	0x90
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x8
	.byte	0x15
	.4byte	0x4c
	.uleb128 0x2
	.4byte	.LASF18
	.byte	0x8
	.byte	0x21
	.4byte	0x65
	.uleb128 0x2
	.4byte	.LASF19
	.byte	0x8
	.byte	0x2d
	.4byte	0x70
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF20
	.uleb128 0x2
	.4byte	.LASF21
	.byte	0x9
	.byte	0x2e
	.4byte	0xd9
	.uleb128 0x2
	.4byte	.LASF22
	.byte	0x9
	.byte	0x30
	.4byte	0xe4
	.uleb128 0x2
	.4byte	.LASF23
	.byte	0x9
	.byte	0x32
	.4byte	0xef
	.uleb128 0x7
	.4byte	0x117
	.4byte	0x132
	.uleb128 0x8
	.4byte	0x9b
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.4byte	.LASF24
	.byte	0xa
	.byte	0x37
	.4byte	0x117
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0x4
	.byte	0xa
	.byte	0x3a
	.4byte	0x156
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0xa
	.byte	0x3b
	.4byte	0x132
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x10
	.byte	0xa
	.byte	0x3f
	.4byte	0x175
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0xa
	.byte	0x40
	.4byte	0x122
	.uleb128 0xc
	.4byte	.LASF26
	.byte	0xa
	.byte	0x41
	.4byte	0x175
	.byte	0
	.uleb128 0x7
	.4byte	0x101
	.4byte	0x185
	.uleb128 0x8
	.4byte	0x9b
	.byte	0xf
	.byte	0
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0x10
	.byte	0xa
	.byte	0x3e
	.4byte	0x19d
	.uleb128 0xd
	.string	"un"
	.byte	0xa
	.byte	0x42
	.4byte	0x156
	.byte	0
	.byte	0
	.uleb128 0x2
	.4byte	.LASF30
	.byte	0xb
	.byte	0x36
	.4byte	0x101
	.uleb128 0x2
	.4byte	.LASF31
	.byte	0xb
	.byte	0x3b
	.4byte	0x10c
	.uleb128 0x9
	.4byte	.LASF32
	.byte	0x10
	.byte	0xb
	.byte	0x40
	.4byte	0x1fc
	.uleb128 0xa
	.4byte	.LASF33
	.byte	0xb
	.byte	0x41
	.4byte	0x101
	.byte	0
	.uleb128 0xa
	.4byte	.LASF34
	.byte	0xb
	.byte	0x42
	.4byte	0x19d
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF35
	.byte	0xb
	.byte	0x43
	.4byte	0x1a8
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF36
	.byte	0xb
	.byte	0x44
	.4byte	0x13d
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF37
	.byte	0xb
	.byte	0x46
	.4byte	0xbe
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.4byte	.LASF38
	.byte	0x1c
	.byte	0xb
	.byte	0x4b
	.4byte	0x251
	.uleb128 0xa
	.4byte	.LASF39
	.byte	0xb
	.byte	0x4c
	.4byte	0x101
	.byte	0
	.uleb128 0xa
	.4byte	.LASF40
	.byte	0xb
	.byte	0x4d
	.4byte	0x19d
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF41
	.byte	0xb
	.byte	0x4e
	.4byte	0x1a8
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF42
	.byte	0xb
	.byte	0x4f
	.4byte	0x117
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF43
	.byte	0xb
	.byte	0x50
	.4byte	0x185
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF44
	.byte	0xb
	.byte	0x51
	.4byte	0x117
	.byte	0x18
	.byte	0
	.uleb128 0x9
	.4byte	.LASF45
	.byte	0x10
	.byte	0xb
	.byte	0x55
	.4byte	0x282
	.uleb128 0xa
	.4byte	.LASF46
	.byte	0xb
	.byte	0x56
	.4byte	0x101
	.byte	0
	.uleb128 0xa
	.4byte	.LASF47
	.byte	0xb
	.byte	0x57
	.4byte	0x19d
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF48
	.byte	0xb
	.byte	0x58
	.4byte	0x282
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.4byte	0xb7
	.4byte	0x292
	.uleb128 0x8
	.4byte	0x9b
	.byte	0xd
	.byte	0
	.uleb128 0x9
	.4byte	.LASF49
	.byte	0x1c
	.byte	0xb
	.byte	0x5b
	.4byte	0x2db
	.uleb128 0xa
	.4byte	.LASF50
	.byte	0xb
	.byte	0x5c
	.4byte	0x101
	.byte	0
	.uleb128 0xa
	.4byte	.LASF51
	.byte	0xb
	.byte	0x5d
	.4byte	0x19d
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF52
	.byte	0xb
	.byte	0x5e
	.4byte	0x2db
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF53
	.byte	0xb
	.byte	0x5f
	.4byte	0x2eb
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF54
	.byte	0xb
	.byte	0x61
	.4byte	0x2eb
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.4byte	0xb7
	.4byte	0x2eb
	.uleb128 0x8
	.4byte	0x9b
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.4byte	0x117
	.4byte	0x2fb
	.uleb128 0x8
	.4byte	0x9b
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.4byte	.LASF55
	.byte	0xb
	.byte	0x68
	.4byte	0x117
	.uleb128 0x7
	.4byte	0x57
	.4byte	0x315
	.uleb128 0xe
	.4byte	0x9b
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x30
	.byte	0xc
	.byte	0x1a
	.4byte	0x352
	.uleb128 0x10
	.4byte	.LASF56
	.byte	0
	.uleb128 0x10
	.4byte	.LASF57
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF58
	.byte	0x2
	.uleb128 0x10
	.4byte	.LASF59
	.byte	0x3
	.uleb128 0x10
	.4byte	.LASF60
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF61
	.byte	0x5
	.uleb128 0x10
	.4byte	.LASF62
	.byte	0x6
	.uleb128 0x10
	.4byte	.LASF63
	.byte	0x7
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x30
	.byte	0x2
	.byte	0x1d
	.4byte	0x3a1
	.uleb128 0x10
	.4byte	.LASF64
	.byte	0
	.uleb128 0x10
	.4byte	.LASF65
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF66
	.byte	0x2
	.uleb128 0x10
	.4byte	.LASF67
	.byte	0x3
	.uleb128 0x10
	.4byte	.LASF68
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF69
	.byte	0x5
	.uleb128 0x10
	.4byte	.LASF70
	.byte	0x6
	.uleb128 0x10
	.4byte	.LASF71
	.byte	0x7
	.uleb128 0x10
	.4byte	.LASF72
	.byte	0x8
	.uleb128 0x10
	.4byte	.LASF73
	.byte	0x9
	.uleb128 0x10
	.4byte	.LASF74
	.byte	0xa
	.byte	0
	.uleb128 0xb
	.byte	0x1c
	.byte	0x3
	.byte	0x3d
	.4byte	0x3d4
	.uleb128 0x11
	.string	"sa"
	.byte	0x3
	.byte	0x3e
	.4byte	0x251
	.uleb128 0x11
	.string	"st"
	.byte	0x3
	.byte	0x3f
	.4byte	0x292
	.uleb128 0x11
	.string	"sin"
	.byte	0x3
	.byte	0x40
	.4byte	0x1b3
	.uleb128 0xc
	.4byte	.LASF75
	.byte	0x3
	.byte	0x41
	.4byte	0x1fc
	.byte	0
	.uleb128 0x9
	.4byte	.LASF76
	.byte	0x20
	.byte	0x3
	.byte	0x3b
	.4byte	0x3f9
	.uleb128 0xa
	.4byte	.LASF77
	.byte	0x3
	.byte	0x3c
	.4byte	0x2fb
	.byte	0
	.uleb128 0xa
	.4byte	.LASF78
	.byte	0x3
	.byte	0x42
	.4byte	0x3a1
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF76
	.byte	0x3
	.byte	0x43
	.4byte	0x3d4
	.uleb128 0x2
	.4byte	.LASF79
	.byte	0xd
	.byte	0x15
	.4byte	0x3e
	.uleb128 0x2
	.4byte	.LASF80
	.byte	0xd
	.byte	0x1b
	.4byte	0x41a
	.uleb128 0x9
	.4byte	.LASF80
	.byte	0x54
	.byte	0x1
	.byte	0x44
	.4byte	0x487
	.uleb128 0xd
	.string	"hnd"
	.byte	0x1
	.byte	0x45
	.4byte	0x404
	.byte	0
	.uleb128 0xd
	.string	"src"
	.byte	0x1
	.byte	0x46
	.4byte	0x3f9
	.byte	0x4
	.uleb128 0xd
	.string	"dst"
	.byte	0x1
	.byte	0x47
	.4byte	0x3f9
	.byte	0x24
	.uleb128 0xa
	.4byte	.LASF81
	.byte	0x1
	.byte	0x48
	.4byte	0x4ed
	.byte	0x44
	.uleb128 0xa
	.4byte	.LASF82
	.byte	0x1
	.byte	0x4a
	.4byte	0x3e
	.byte	0x48
	.uleb128 0xa
	.4byte	.LASF83
	.byte	0x1
	.byte	0x4b
	.4byte	0xa2
	.byte	0x4c
	.uleb128 0xa
	.4byte	.LASF84
	.byte	0x1
	.byte	0x4d
	.4byte	0x25
	.byte	0x50
	.uleb128 0xa
	.4byte	.LASF85
	.byte	0x1
	.byte	0x4e
	.4byte	0x306
	.byte	0x54
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0xd
	.byte	0x25
	.4byte	0x4a5
	.uleb128 0x11
	.string	"fd"
	.byte	0xd
	.byte	0x26
	.4byte	0x3e
	.uleb128 0xc
	.4byte	.LASF86
	.byte	0xd
	.byte	0x27
	.4byte	0xa2
	.byte	0
	.uleb128 0x9
	.4byte	.LASF87
	.byte	0x2c
	.byte	0xd
	.byte	0x23
	.4byte	0x4e2
	.uleb128 0xa
	.4byte	.LASF88
	.byte	0xd
	.byte	0x28
	.4byte	0x487
	.byte	0
	.uleb128 0xa
	.4byte	.LASF78
	.byte	0xd
	.byte	0x32
	.4byte	0x3f9
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF82
	.byte	0xd
	.byte	0x33
	.4byte	0x3e
	.byte	0x24
	.uleb128 0xa
	.4byte	.LASF89
	.byte	0xd
	.byte	0x34
	.4byte	0x3e
	.byte	0x28
	.byte	0
	.uleb128 0x2
	.4byte	.LASF87
	.byte	0xd
	.byte	0x35
	.4byte	0x4a5
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4f3
	.uleb128 0x12
	.4byte	0x4e2
	.uleb128 0x13
	.4byte	.LASF93
	.byte	0x2
	.byte	0x46
	.4byte	0xa2
	.byte	0x3
	.4byte	0x514
	.uleb128 0x14
	.4byte	.LASF77
	.byte	0x2
	.byte	0x46
	.4byte	0x25
	.byte	0
	.uleb128 0x15
	.4byte	.LASF91
	.byte	0x2
	.byte	0x4d
	.byte	0x3
	.4byte	0x52c
	.uleb128 0x14
	.4byte	.LASF90
	.byte	0x2
	.byte	0x4d
	.4byte	0xa2
	.byte	0
	.uleb128 0x16
	.4byte	.LASF145
	.byte	0x1
	.byte	0x89
	.4byte	0x538
	.byte	0x3
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4a5
	.uleb128 0x15
	.4byte	.LASF92
	.byte	0x1
	.byte	0x8e
	.byte	0x3
	.4byte	0x555
	.uleb128 0x17
	.string	"ep"
	.byte	0x1
	.byte	0x8e
	.4byte	0x538
	.byte	0
	.uleb128 0x18
	.4byte	.LASF94
	.byte	0x1
	.2byte	0x12d
	.4byte	0x25
	.byte	0x3
	.4byte	0x573
	.uleb128 0x19
	.4byte	.LASF95
	.byte	0x1
	.2byte	0x12d
	.4byte	0x573
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x579
	.uleb128 0x12
	.4byte	0x40f
	.uleb128 0x1a
	.4byte	.LASF146
	.byte	0x1
	.2byte	0x110
	.4byte	0x601
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x601
	.uleb128 0x1b
	.4byte	.LASF95
	.byte	0x1
	.2byte	0x111
	.4byte	0x601
	.uleb128 0x1c
	.4byte	.LASF96
	.byte	0x1
	.2byte	0x112
	.4byte	0x607
	.2byte	0x5cc
	.uleb128 0x1d
	.4byte	0x4f8
	.4byte	.LBB27
	.4byte	.LBE27-.LBB27
	.byte	0x1
	.2byte	0x114
	.4byte	0x5e4
	.uleb128 0x1e
	.4byte	0x508
	.2byte	0x5cc
	.uleb128 0x1f
	.4byte	.LVL1
	.4byte	0x1036
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x5cc
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL2
	.4byte	0x1041
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x5cc
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x40f
	.uleb128 0x12
	.4byte	0x25
	.uleb128 0x21
	.4byte	.LASF99
	.byte	0x1
	.byte	0x93
	.4byte	0x865
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x865
	.uleb128 0x22
	.4byte	.LASF78
	.byte	0x1
	.byte	0x93
	.4byte	0x86b
	.4byte	.LLST0
	.uleb128 0x23
	.4byte	.LASF89
	.byte	0x1
	.byte	0x93
	.4byte	0x3e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x24
	.4byte	.LASF97
	.byte	0x1
	.byte	0x94
	.4byte	0x3e
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x25
	.string	"on"
	.byte	0x1
	.byte	0x95
	.4byte	0x3e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x26
	.string	"ep"
	.byte	0x1
	.byte	0x96
	.4byte	0x538
	.uleb128 0x27
	.4byte	0x52c
	.4byte	.LBB29
	.4byte	.LBE29-.LBB29
	.byte	0x1
	.byte	0xa6
	.4byte	0x6a5
	.uleb128 0x28
	.4byte	0x4f8
	.4byte	.LBB30
	.4byte	.LBE30-.LBB30
	.byte	0x1
	.byte	0x8a
	.uleb128 0x29
	.4byte	0x508
	.byte	0x2c
	.uleb128 0x1f
	.4byte	.LVL16
	.4byte	0x1036
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x2c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	.LBB32
	.4byte	.LBE32-.LBB32
	.4byte	0x702
	.uleb128 0x24
	.4byte	.LASF98
	.byte	0x1
	.byte	0xbd
	.4byte	0x876
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2b
	.4byte	.LVL27
	.4byte	0x104a
	.4byte	0x6e2
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 4
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x36
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL28
	.4byte	0x1055
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x37
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL4
	.4byte	0x1060
	.4byte	0x71a
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL6
	.4byte	0x1055
	.4byte	0x736
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL9
	.4byte	0x106c
	.4byte	0x75c
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0xfff
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL10
	.4byte	0x1055
	.4byte	0x778
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL11
	.4byte	0x1078
	.4byte	0x792
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 4
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL12
	.4byte	0x1055
	.4byte	0x7ae
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL13
	.4byte	0x1084
	.4byte	0x7c2
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL17
	.4byte	0x1055
	.4byte	0x7de
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL18
	.4byte	0x1084
	.4byte	0x7f2
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL21
	.4byte	0x1041
	.4byte	0x80b
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x2c
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL23
	.4byte	0x1090
	.4byte	0x82b
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 8
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 4
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL24
	.4byte	0x1055
	.4byte	0x847
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC13
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL25
	.4byte	0x1084
	.4byte	0x85b
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL26
	.4byte	0x109c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4e2
	.uleb128 0x6
	.byte	0x4
	.4byte	0x871
	.uleb128 0x12
	.4byte	0x3f9
	.uleb128 0x7
	.4byte	0x57
	.4byte	0x886
	.uleb128 0x8
	.4byte	0x9b
	.byte	0x35
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF105
	.byte	0x1
	.byte	0xcb
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8fc
	.uleb128 0x2e
	.string	"ep"
	.byte	0x1
	.byte	0xcb
	.4byte	0x865
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x27
	.4byte	0x53e
	.4byte	.LBB33
	.4byte	.LBE33-.LBB33
	.byte	0x1
	.byte	0xcf
	.4byte	0x8f2
	.uleb128 0x2f
	.4byte	0x54a
	.4byte	.LLST1
	.uleb128 0x28
	.4byte	0x514
	.4byte	.LBB34
	.4byte	.LBE34-.LBB34
	.byte	0x1
	.byte	0x8f
	.uleb128 0x2f
	.4byte	0x520
	.4byte	.LLST1
	.uleb128 0x1f
	.4byte	.LVL31
	.4byte	0x10a7
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL30
	.4byte	0x1084
	.byte	0
	.uleb128 0x21
	.4byte	.LASF100
	.byte	0x1
	.byte	0xf4
	.4byte	0xce
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x98b
	.uleb128 0x22
	.4byte	.LASF101
	.byte	0x1
	.byte	0xf4
	.4byte	0x990
	.4byte	.LLST3
	.uleb128 0x23
	.4byte	.LASF102
	.byte	0x1
	.byte	0xf5
	.4byte	0x4ed
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2e
	.string	"dst"
	.byte	0x1
	.byte	0xf6
	.4byte	0x86b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x23
	.4byte	.LASF103
	.byte	0x1
	.byte	0xf7
	.4byte	0xab
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x23
	.4byte	.LASF104
	.byte	0x1
	.byte	0xf8
	.4byte	0x25
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x25
	.string	"ep"
	.byte	0x1
	.byte	0xfa
	.4byte	0x538
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1f
	.4byte	.LVL34
	.4byte	0x10b2
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x74
	.sleb128 4
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.byte	0
	.uleb128 0x30
	.4byte	.LASF147
	.uleb128 0x6
	.byte	0x4
	.4byte	0x98b
	.uleb128 0x31
	.4byte	.LASF106
	.byte	0x1
	.2byte	0x11c
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9e8
	.uleb128 0x32
	.4byte	.LASF95
	.byte	0x1
	.2byte	0x11c
	.4byte	0x601
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x33
	.4byte	0x514
	.4byte	.LBB36
	.4byte	.LBE36-.LBB36
	.byte	0x1
	.2byte	0x11d
	.uleb128 0x34
	.4byte	0x520
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1f
	.4byte	.LVL38
	.4byte	0x10a7
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LASF107
	.byte	0x1
	.2byte	0x132
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa39
	.uleb128 0x35
	.4byte	.LASF95
	.byte	0x1
	.2byte	0x132
	.4byte	0x601
	.4byte	.LLST4
	.uleb128 0x32
	.4byte	.LASF108
	.byte	0x1
	.2byte	0x132
	.4byte	0x865
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1f
	.4byte	.LVL40
	.4byte	0x10be
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 4
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 36
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LASF109
	.byte	0x1
	.2byte	0x13a
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa88
	.uleb128 0x32
	.4byte	.LASF95
	.byte	0x1
	.2byte	0x13a
	.4byte	0x601
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x32
	.4byte	.LASF108
	.byte	0x1
	.2byte	0x13a
	.4byte	0xa88
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1f
	.4byte	.LVL43
	.4byte	0x10be
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 4
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3f9
	.uleb128 0x31
	.4byte	.LASF110
	.byte	0x1
	.2byte	0x13f
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xad1
	.uleb128 0x35
	.4byte	.LASF95
	.byte	0x1
	.2byte	0x13f
	.4byte	0x601
	.4byte	.LLST5
	.uleb128 0x32
	.4byte	.LASF111
	.byte	0x1
	.2byte	0x13f
	.4byte	0xad1
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x32
	.4byte	.LASF84
	.byte	0x1
	.2byte	0x13f
	.4byte	0xad7
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xab
	.uleb128 0x6
	.byte	0x4
	.4byte	0x25
	.uleb128 0x15
	.4byte	.LASF112
	.byte	0x3
	.byte	0x66
	.byte	0x3
	.4byte	0xb02
	.uleb128 0x14
	.4byte	.LASF78
	.byte	0x3
	.byte	0x66
	.4byte	0xa88
	.uleb128 0x36
	.4byte	.LASF113
	.4byte	0xb12
	.4byte	.LASF112
	.byte	0
	.uleb128 0x7
	.4byte	0xb7
	.4byte	0xb12
	.uleb128 0x8
	.4byte	0x9b
	.byte	0x11
	.byte	0
	.uleb128 0x12
	.4byte	0xb02
	.uleb128 0x18
	.4byte	.LASF114
	.byte	0x1
	.2byte	0x14b
	.4byte	0x3e
	.byte	0x3
	.4byte	0xb41
	.uleb128 0x19
	.4byte	.LASF115
	.byte	0x1
	.2byte	0x14b
	.4byte	0x86b
	.uleb128 0x37
	.string	"dst"
	.byte	0x1
	.2byte	0x14b
	.4byte	0x86b
	.byte	0
	.uleb128 0x13
	.4byte	.LASF116
	.byte	0x3
	.byte	0x82
	.4byte	0x3e
	.byte	0x3
	.4byte	0xb68
	.uleb128 0x17
	.string	"a"
	.byte	0x3
	.byte	0x82
	.4byte	0x86b
	.uleb128 0x36
	.4byte	.LASF113
	.4byte	0xb78
	.4byte	.LASF116
	.byte	0
	.uleb128 0x7
	.4byte	0xb7
	.4byte	0xb78
	.uleb128 0x8
	.4byte	0x9b
	.byte	0x12
	.byte	0
	.uleb128 0x12
	.4byte	0xb68
	.uleb128 0x13
	.4byte	.LASF117
	.byte	0x3
	.byte	0x4d
	.4byte	0x3e
	.byte	0x3
	.4byte	0xb97
	.uleb128 0x17
	.string	"a"
	.byte	0x3
	.byte	0x4d
	.4byte	0x86b
	.byte	0
	.uleb128 0x38
	.4byte	.LASF118
	.byte	0x1
	.2byte	0x151
	.4byte	0xce
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x101b
	.uleb128 0x39
	.string	"ep"
	.byte	0x1
	.2byte	0x151
	.4byte	0x865
	.4byte	.LLST6
	.uleb128 0x35
	.4byte	.LASF95
	.byte	0x1
	.2byte	0x151
	.4byte	0x101b
	.4byte	.LLST7
	.uleb128 0x3a
	.string	"len"
	.byte	0x1
	.2byte	0x152
	.4byte	0xce
	.4byte	.LLST8
	.uleb128 0x3b
	.4byte	.LASF119
	.byte	0x1
	.2byte	0x156
	.4byte	0xb1
	.4byte	.LLST9
	.uleb128 0x3c
	.4byte	.LASF120
	.byte	0x1
	.2byte	0x157
	.4byte	0x1b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x3c
	.4byte	.LASF121
	.byte	0x1
	.2byte	0x158
	.4byte	0x2fb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3d
	.4byte	.LASF113
	.4byte	0x1021
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6004
	.uleb128 0x3e
	.4byte	.LASF148
	.byte	0x1
	.2byte	0x1c7
	.4byte	.L29
	.uleb128 0x1d
	.4byte	0xadd
	.4byte	.LBB54
	.4byte	.LBE54-.LBB54
	.byte	0x1
	.2byte	0x165
	.4byte	0xca0
	.uleb128 0x2f
	.4byte	0xae9
	.4byte	.LLST10
	.uleb128 0x3f
	.4byte	.LBB55
	.4byte	.LBE55-.LBB55
	.uleb128 0x40
	.4byte	0xaf4
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5882
	.uleb128 0x2b
	.4byte	.LVL56
	.4byte	0x10c7
	.4byte	0xc89
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC29
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x67
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5882
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC26
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL57
	.4byte	0x1041
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	0xadd
	.4byte	.LBB56
	.4byte	.LBE56-.LBB56
	.byte	0x1
	.2byte	0x166
	.4byte	0xd17
	.uleb128 0x2f
	.4byte	0xae9
	.4byte	.LLST11
	.uleb128 0x3f
	.4byte	.LBB57
	.4byte	.LBE57-.LBB57
	.uleb128 0x40
	.4byte	0xaf4
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5882
	.uleb128 0x2b
	.4byte	.LVL61
	.4byte	0x10c7
	.4byte	0xd00
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC29
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x67
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5882
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC26
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL62
	.4byte	0x1041
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	0x4f8
	.4byte	.LBB58
	.4byte	.LBE58-.LBB58
	.byte	0x1
	.2byte	0x169
	.4byte	0xd49
	.uleb128 0x1e
	.4byte	0x508
	.2byte	0x5b4
	.uleb128 0x1f
	.4byte	.LVL64
	.4byte	0x1036
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x5b4
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	0xb17
	.4byte	.LBB60
	.4byte	.LBE60-.LBB60
	.byte	0x1
	.2byte	0x182
	.4byte	0xe2a
	.uleb128 0x2f
	.4byte	0xb34
	.4byte	.LLST12
	.uleb128 0x2f
	.4byte	0xb28
	.4byte	.LLST13
	.uleb128 0x1d
	.4byte	0xb41
	.4byte	.LBB62
	.4byte	.LBE62-.LBB62
	.byte	0x1
	.2byte	0x14c
	.4byte	0xdff
	.uleb128 0x2f
	.4byte	0xb51
	.4byte	.LLST13
	.uleb128 0x3f
	.4byte	.LBB63
	.4byte	.LBE63-.LBB63
	.uleb128 0x40
	.4byte	0xb5a
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5886
	.uleb128 0x27
	.4byte	0xb7d
	.4byte	.LBB64
	.4byte	.LBE64-.LBB64
	.byte	0x3
	.byte	0x84
	.4byte	0xdd2
	.uleb128 0x2f
	.4byte	0xb8d
	.4byte	.LLST15
	.uleb128 0x1f
	.4byte	.LVL78
	.4byte	0x10d2
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 12
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL77
	.4byte	0x10c7
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC29
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x83
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5886
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC37
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL81
	.4byte	0x10dd
	.4byte	0xe19
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL82
	.4byte	0x10e8
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	0x514
	.4byte	.LBB66
	.4byte	.LBE66-.LBB66
	.byte	0x1
	.2byte	0x18d
	.4byte	0xe5d
	.uleb128 0x2f
	.4byte	0x520
	.4byte	.LLST16
	.uleb128 0x1f
	.4byte	.LVL87
	.4byte	0x10a7
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	0x514
	.4byte	.LBB68
	.4byte	.LBE68-.LBB68
	.byte	0x1
	.2byte	0x1ca
	.4byte	0xe90
	.uleb128 0x2f
	.4byte	0x520
	.4byte	.LLST17
	.uleb128 0x1f
	.4byte	.LVL92
	.4byte	0x10a7
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL48
	.4byte	0x10c7
	.4byte	0xec0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC20
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x15b
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6004
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL49
	.4byte	0x10c7
	.4byte	0xef0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC20
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x15c
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6004
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC22
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL50
	.4byte	0x57e
	.uleb128 0x2b
	.4byte	.LVL51
	.4byte	0x1055
	.4byte	0xf15
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC24
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL66
	.4byte	0x10f3
	.4byte	0xf41
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x5b4
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL68
	.4byte	0x10ff
	.uleb128 0x2c
	.4byte	.LVL69
	.4byte	0x110a
	.uleb128 0x2b
	.4byte	.LVL70
	.4byte	0x1055
	.4byte	0xf6f
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC31
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL71
	.4byte	0x1090
	.uleb128 0x2b
	.4byte	.LVL72
	.4byte	0x1055
	.4byte	0xf94
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x37
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC33
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL73
	.4byte	0x10be
	.4byte	0xfa8
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL74
	.4byte	0x1055
	.4byte	0xfc4
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC35
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL83
	.4byte	0x1055
	.4byte	0xfe0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x37
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC41
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL84
	.4byte	0x1115
	.4byte	0xff7
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC43
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL86
	.4byte	0x10be
	.4byte	0x1011
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL93
	.4byte	0x996
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x601
	.uleb128 0x12
	.4byte	0xb02
	.uleb128 0x41
	.4byte	.LASF149
	.byte	0xa
	.byte	0x56
	.4byte	0x1031
	.uleb128 0x12
	.4byte	0x185
	.uleb128 0x42
	.4byte	.LASF122
	.4byte	.LASF122
	.byte	0x2
	.byte	0x37
	.uleb128 0x43
	.4byte	.LASF133
	.4byte	.LASF133
	.uleb128 0x42
	.4byte	.LASF123
	.4byte	.LASF123
	.byte	0xc
	.byte	0x48
	.uleb128 0x42
	.4byte	.LASF124
	.4byte	.LASF124
	.byte	0xc
	.byte	0x37
	.uleb128 0x44
	.4byte	.LASF125
	.4byte	.LASF125
	.byte	0xb
	.2byte	0x214
	.uleb128 0x44
	.4byte	.LASF126
	.4byte	.LASF126
	.byte	0xb
	.2byte	0x208
	.uleb128 0x44
	.4byte	.LASF127
	.4byte	.LASF127
	.byte	0xb
	.2byte	0x203
	.uleb128 0x44
	.4byte	.LASF128
	.4byte	.LASF128
	.byte	0xb
	.2byte	0x209
	.uleb128 0x44
	.4byte	.LASF129
	.4byte	.LASF129
	.byte	0xb
	.2byte	0x206
	.uleb128 0x42
	.4byte	.LASF130
	.4byte	.LASF130
	.byte	0xc
	.byte	0x27
	.uleb128 0x42
	.4byte	.LASF131
	.4byte	.LASF131
	.byte	0x2
	.byte	0x41
	.uleb128 0x44
	.4byte	.LASF132
	.4byte	.LASF132
	.byte	0xb
	.2byte	0x212
	.uleb128 0x43
	.4byte	.LASF134
	.4byte	.LASF134
	.uleb128 0x42
	.4byte	.LASF135
	.4byte	.LASF135
	.byte	0xe
	.byte	0x29
	.uleb128 0x42
	.4byte	.LASF136
	.4byte	.LASF136
	.byte	0xf
	.byte	0x16
	.uleb128 0x42
	.4byte	.LASF137
	.4byte	.LASF137
	.byte	0x3
	.byte	0x4a
	.uleb128 0x42
	.4byte	.LASF138
	.4byte	.LASF138
	.byte	0x3
	.byte	0x8c
	.uleb128 0x44
	.4byte	.LASF139
	.4byte	.LASF139
	.byte	0xb
	.2byte	0x20e
	.uleb128 0x42
	.4byte	.LASF140
	.4byte	.LASF140
	.byte	0x10
	.byte	0xf
	.uleb128 0x42
	.4byte	.LASF141
	.4byte	.LASF141
	.byte	0xf
	.byte	0x20
	.uleb128 0x45
	.4byte	.LASF150
	.4byte	.LASF151
	.byte	0x11
	.byte	0
	.4byte	.LASF150
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x1b
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
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
	.uleb128 0x23
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x36
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x1c
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.byte	0
	.byte	0
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3e
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x3f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x40
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x41
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
	.uleb128 0x42
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
	.uleb128 0x43
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
	.uleb128 0x44
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
	.uleb128 0x45
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
	.uleb128 0x6e
	.uleb128 0xe
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL3
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL15
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
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL22
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL32
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL35
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL39
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL41
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL45
	.4byte	.LFE28
	.2byte	0x4
	.byte	0x78
	.sleb128 -84
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL46
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL89
	.4byte	.LVL90
	.2byte	0x3
	.byte	0x73
	.sleb128 68
	.4byte	.LVL90
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL94
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL46
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL88
	.4byte	.LVL90
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL90
	.4byte	.LFE30
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL47
	.4byte	.LVL67
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL67
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL47
	.4byte	.LVL65
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL87
	.4byte	.LVL90
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL92
	.4byte	.LFE30
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x3
	.byte	0x74
	.sleb128 36
	.byte	0x9f
	.4byte	.LVL56
	.4byte	.LVL57-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL57-1
	.4byte	.LVL58
	.2byte	0x3
	.byte	0x74
	.sleb128 36
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x3
	.byte	0x74
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL61
	.4byte	.LVL62-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL62-1
	.4byte	.LVL67
	.2byte	0x3
	.byte	0x74
	.sleb128 4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL76
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL76
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL85
	.4byte	.LVL89
	.2byte	0x3
	.byte	0x72
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL89
	.4byte	.LVL90
	.2byte	0x7
	.byte	0x73
	.sleb128 68
	.byte	0x6
	.byte	0x23
	.uleb128 0x4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL77
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL85
	.4byte	.LVL89
	.2byte	0x3
	.byte	0x72
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL89
	.4byte	.LVL90
	.2byte	0x7
	.byte	0x73
	.sleb128 68
	.byte	0x6
	.byte	0x23
	.uleb128 0x4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL86
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL91
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x5c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF143:
	.string	"C:/esp/esp-idf/components/coap/port/coap_io_socket.c"
.LASF64:
	.string	"COAP_STRING"
.LASF43:
	.string	"sin6_addr"
.LASF25:
	.string	"u32_addr"
.LASF3:
	.string	"size_t"
.LASF119:
	.string	"soc_appdata"
.LASF126:
	.string	"lwip_setsockopt_r"
.LASF2:
	.string	"signed char"
.LASF4:
	.string	"__uint8_t"
.LASF16:
	.string	"ssize_t"
.LASF49:
	.string	"sockaddr_storage"
.LASF145:
	.string	"coap_malloc_posix_endpoint"
.LASF141:
	.string	"strerror"
.LASF72:
	.string	"COAP_PDU_BUF"
.LASF10:
	.string	"long long unsigned int"
.LASF98:
	.string	"addr_str"
.LASF24:
	.string	"in_addr_t"
.LASF78:
	.string	"addr"
.LASF56:
	.string	"LOG_EMERG"
.LASF55:
	.string	"socklen_t"
.LASF124:
	.string	"coap_log_impl"
.LASF90:
	.string	"object"
.LASF106:
	.string	"coap_free_packet"
.LASF46:
	.string	"sa_len"
.LASF9:
	.string	"long long int"
.LASF122:
	.string	"coap_malloc_type"
.LASF97:
	.string	"sockfd"
.LASF107:
	.string	"coap_packet_populate_endpoint"
.LASF115:
	.string	"local"
.LASF140:
	.string	"__errno"
.LASF11:
	.string	"long int"
.LASF86:
	.string	"conn"
.LASF79:
	.string	"coap_if_handle_t"
.LASF117:
	.string	"_coap_address_isany_impl"
.LASF61:
	.string	"LOG_NOTICE"
.LASF65:
	.string	"COAP_ATTRIBUTE_NAME"
.LASF111:
	.string	"address"
.LASF41:
	.string	"sin6_port"
.LASF92:
	.string	"coap_free_posix_endpoint"
.LASF8:
	.string	"__uint32_t"
.LASF123:
	.string	"coap_print_addr"
.LASF63:
	.string	"LOG_DEBUG"
.LASF37:
	.string	"sin_zero"
.LASF130:
	.string	"coap_get_log_level"
.LASF0:
	.string	"unsigned int"
.LASF29:
	.string	"s_addr"
.LASF69:
	.string	"COAP_CONTEXT"
.LASF18:
	.string	"uint16_t"
.LASF14:
	.string	"long unsigned int"
.LASF127:
	.string	"lwip_bind_r"
.LASF103:
	.string	"data"
.LASF77:
	.string	"size"
.LASF1:
	.string	"short unsigned int"
.LASF36:
	.string	"sin_addr"
.LASF110:
	.string	"coap_packet_get_memmapped"
.LASF109:
	.string	"coap_packet_copy_source"
.LASF118:
	.string	"coap_network_read"
.LASF82:
	.string	"ifindex"
.LASF108:
	.string	"target"
.LASF102:
	.string	"local_interface"
.LASF6:
	.string	"short int"
.LASF31:
	.string	"in_port_t"
.LASF81:
	.string	"interface"
.LASF151:
	.string	"__builtin_puts"
.LASF116:
	.string	"coap_address_isany"
.LASF88:
	.string	"handle"
.LASF150:
	.string	"puts"
.LASF34:
	.string	"sin_family"
.LASF120:
	.string	"soc_srcipaddr"
.LASF21:
	.string	"u8_t"
.LASF13:
	.string	"sizetype"
.LASF104:
	.string	"datalen"
.LASF131:
	.string	"coap_free_type"
.LASF39:
	.string	"sin6_len"
.LASF40:
	.string	"sin6_family"
.LASF67:
	.string	"COAP_PACKET"
.LASF85:
	.string	"payload"
.LASF138:
	.string	"coap_is_mcast"
.LASF58:
	.string	"LOG_CRIT"
.LASF33:
	.string	"sin_len"
.LASF52:
	.string	"s2_data1"
.LASF53:
	.string	"s2_data2"
.LASF54:
	.string	"s2_data3"
.LASF95:
	.string	"packet"
.LASF83:
	.string	"session"
.LASF30:
	.string	"sa_family_t"
.LASF87:
	.string	"coap_endpoint_t"
.LASF96:
	.string	"need"
.LASF35:
	.string	"sin_port"
.LASF148:
	.string	"error"
.LASF73:
	.string	"COAP_RESOURCE"
.LASF147:
	.string	"coap_context_t"
.LASF44:
	.string	"sin6_scope_id"
.LASF20:
	.string	"_Bool"
.LASF135:
	.string	"__assert_func"
.LASF5:
	.string	"unsigned char"
.LASF137:
	.string	"coap_address_equals"
.LASF149:
	.string	"in6addr_any"
.LASF80:
	.string	"coap_packet_t"
.LASF142:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF91:
	.string	"coap_free"
.LASF60:
	.string	"LOG_WARNING"
.LASF133:
	.string	"memset"
.LASF121:
	.string	"soc_srcsize"
.LASF47:
	.string	"sa_family"
.LASF62:
	.string	"LOG_INFO"
.LASF23:
	.string	"u32_t"
.LASF113:
	.string	"__func__"
.LASF144:
	.string	"C:\\\\esp\\\\esp32-ArkPOS2\\\\ArkPOS2-esp\\\\build\\\\coap"
.LASF75:
	.string	"sin6"
.LASF74:
	.string	"COAP_RESOURCEATTR"
.LASF28:
	.string	"in6_addr"
.LASF57:
	.string	"LOG_ALERT"
.LASF19:
	.string	"uint32_t"
.LASF26:
	.string	"u8_addr"
.LASF15:
	.string	"char"
.LASF146:
	.string	"coap_malloc_packet"
.LASF51:
	.string	"ss_family"
.LASF114:
	.string	"is_local_if"
.LASF42:
	.string	"sin6_flowinfo"
.LASF7:
	.string	"__uint16_t"
.LASF99:
	.string	"coap_new_endpoint"
.LASF17:
	.string	"uint8_t"
.LASF136:
	.string	"memcmp"
.LASF134:
	.string	"memcpy"
.LASF101:
	.string	"context"
.LASF100:
	.string	"coap_network_send"
.LASF71:
	.string	"COAP_PDU"
.LASF84:
	.string	"length"
.LASF128:
	.string	"lwip_close_r"
.LASF22:
	.string	"u16_t"
.LASF93:
	.string	"coap_malloc"
.LASF125:
	.string	"lwip_socket"
.LASF38:
	.string	"sockaddr_in6"
.LASF112:
	.string	"coap_address_init"
.LASF32:
	.string	"sockaddr_in"
.LASF94:
	.string	"coap_get_max_packetlength"
.LASF12:
	.string	"_ssize_t"
.LASF132:
	.string	"lwip_sendto_r"
.LASF89:
	.string	"flags"
.LASF68:
	.string	"COAP_NODE"
.LASF139:
	.string	"lwip_recvfrom_r"
.LASF70:
	.string	"COAP_ENDPOINT"
.LASF50:
	.string	"s2_len"
.LASF48:
	.string	"sa_data"
.LASF66:
	.string	"COAP_ATTRIBUTE_VALUE"
.LASF129:
	.string	"lwip_getsockname_r"
.LASF59:
	.string	"LOG_ERR"
.LASF105:
	.string	"coap_free_endpoint"
.LASF76:
	.string	"coap_address_t"
.LASF45:
	.string	"sockaddr"
.LASF27:
	.string	"in_addr"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-73-ge28a011) 5.2.0"
