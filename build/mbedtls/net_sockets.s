	.file	"net_sockets.c"
	.text
.Ltext0:
	.section	.text.net_prepare,"ax",@progbits
	.align	4
	.type	net_prepare, @function
net_prepare:
.LFB26:
	.file 1 "C:/esp/esp-idf/components/mbedtls/port/net_sockets.c"
	.loc 1 58 0
	entry	sp, 32
.LCFI0:
	.loc 1 60 0
	movi.n	a2, 0
	retw.n
.LFE26:
	.size	net_prepare, .-net_prepare
	.section	.text.mbedtls_net_errno,"ax",@progbits
	.literal_position
	.literal .LC0, 4103
	.literal .LC1, 4095
	.align	4
	.type	mbedtls_net_errno, @function
mbedtls_net_errno:
.LFB27:
	.loc 1 63 0
.LVL0:
	entry	sp, 48
.LCFI1:
	.loc 1 64 0
	movi.n	a8, 0
	s32i.n	a8, sp, 0
	.loc 1 65 0
	movi.n	a8, 4
	s32i.n	a8, sp, 4
	.loc 1 67 0
	add.n	a14, sp, a8
	mov.n	a13, sp
	l32r	a12, .LC0
	l32r	a11, .LC1
	mov.n	a10, a2
	call8	lwip_getsockopt_r
.LVL1:
	.loc 1 70 0
	l32i.n	a2, sp, 0
.LVL2:
	retw.n
.LFE27:
	.size	mbedtls_net_errno, .-mbedtls_net_errno
	.section	.text.net_would_block,"ax",@progbits
	.literal_position
	.literal .LC2, 16384
	.align	4
	.type	net_would_block, @function
net_would_block:
.LFB31:
	.loc 1 206 0
.LVL3:
	entry	sp, 32
.LCFI2:
	.loc 1 207 0
	l32i.n	a10, a2, 0
	call8	mbedtls_net_errno
.LVL4:
	mov.n	a4, a10
.LVL5:
	.loc 1 209 0
	beqz.n	a3, .L4
	.loc 1 210 0
	s32i.n	a10, a3, 0
.L4:
	.loc 1 216 0
	movi.n	a12, 0
	movi.n	a11, 3
	l32i.n	a10, a2, 0
	call8	lwip_fcntl_r
.LVL6:
	l32r	a2, .LC2
.LVL7:
	and	a2, a10, a2
	beqz.n	a2, .L5
	.loc 1 220 0
	movi.n	a2, 0xb
	bne	a4, a2, .L8
	.loc 1 227 0
	movi.n	a2, 1
	retw.n
.L8:
	.loc 1 229 0
	movi.n	a2, 0
.L5:
	.loc 1 230 0
	retw.n
.LFE31:
	.size	net_would_block, .-net_would_block
	.section	.text.mbedtls_net_init,"ax",@progbits
	.align	4
	.global	mbedtls_net_init
	.type	mbedtls_net_init, @function
mbedtls_net_init:
.LFB28:
	.loc 1 76 0
.LVL8:
	entry	sp, 32
.LCFI3:
	.loc 1 77 0
	movi.n	a8, -1
	s32i.n	a8, a2, 0
	retw.n
.LFE28:
	.size	mbedtls_net_init, .-mbedtls_net_init
	.section	.text.mbedtls_net_connect,"ax",@progbits
	.align	4
	.global	mbedtls_net_connect
	.type	mbedtls_net_connect, @function
mbedtls_net_connect:
.LFB29:
	.loc 1 84 0
.LVL9:
	entry	sp, 80
.LCFI4:
	.loc 1 88 0
	call8	net_prepare
.LVL10:
	mov.n	a6, a10
.LVL11:
	bnez.n	a10, .L19
	.loc 1 93 0
	movi.n	a8, 0
	s32i.n	a8, sp, 0
	s32i.n	a8, sp, 4
	s32i.n	a8, sp, 16
	s32i.n	a8, sp, 20
	s32i.n	a8, sp, 24
	s32i.n	a8, sp, 28
	.loc 1 95 0
	bnei	a5, 1, .L20
	movi.n	a8, 2
	j	.L12
.L20:
	movi.n	a8, 1
.L12:
	.loc 1 95 0 is_stmt 0 discriminator 4
	s32i.n	a8, sp, 8
	.loc 1 96 0 is_stmt 1 discriminator 4
	bnei	a5, 1, .L21
	.loc 1 96 0 is_stmt 0
	movi.n	a5, 0x11
.LVL12:
	j	.L13
.LVL13:
.L21:
	movi.n	a5, 6
.LVL14:
.L13:
	.loc 1 96 0 discriminator 4
	s32i.n	a5, sp, 12
	.loc 1 98 0 is_stmt 1 discriminator 4
	addi	a13, sp, 32
	mov.n	a12, sp
	mov.n	a11, a4
	mov.n	a10, a3
	call8	lwip_getaddrinfo
.LVL15:
	bnez.n	a10, .L22
.LVL16:
	.loc 1 104 0
	l32i.n	a3, sp, 32
.LVL17:
	.loc 1 103 0
	movi	a4, -0x52
.LVL18:
	.loc 1 104 0
	j	.L14
.LVL19:
.L18:
.LBB2:
	.loc 1 105 0
	l32i.n	a12, a3, 12
	l32i.n	a11, a3, 8
	l32i.n	a10, a3, 4
	call8	lwip_socket
.LVL20:
	mov.n	a4, a10
.LVL21:
	.loc 1 107 0
	bltz	a10, .L23
	.loc 1 112 0
	l32i.n	a12, a3, 16
	l32i.n	a11, a3, 20
	call8	lwip_connect_r
.LVL22:
	bnez.n	a10, .L16
	.loc 1 113 0
	s32i.n	a4, a2, 0
.LVL23:
	.loc 1 114 0
	mov.n	a4, a6
.LVL24:
	.loc 1 115 0
	j	.L17
.LVL25:
.L16:
	.loc 1 118 0
	mov.n	a10, a4
	call8	lwip_close_r
.LVL26:
	.loc 1 119 0
	movi	a4, -0x44
.LVL27:
	j	.L15
.LVL28:
.L23:
	.loc 1 108 0
	movi	a4, -0x42
.LVL29:
.L15:
.LBE2:
	.loc 1 104 0 discriminator 2
	l32i.n	a3, a3, 28
.LVL30:
.L14:
	.loc 1 104 0 discriminator 1
	bnez.n	a3, .L18
.LVL31:
.L17:
	.loc 1 122 0
	l32i.n	a10, sp, 32
	call8	lwip_freeaddrinfo
.LVL32:
	.loc 1 124 0
	mov.n	a2, a4
.LVL33:
	retw.n
.LVL34:
.L19:
	.loc 1 89 0
	mov.n	a2, a10
.LVL35:
	retw.n
.LVL36:
.L22:
	.loc 1 99 0
	movi	a2, -0x52
.LVL37:
	.loc 1 125 0
	retw.n
.LFE29:
	.size	mbedtls_net_connect, .-mbedtls_net_connect
	.section	.text.mbedtls_net_bind,"ax",@progbits
	.align	4
	.global	mbedtls_net_bind
	.type	mbedtls_net_bind, @function
mbedtls_net_bind:
.LFB30:
	.loc 1 131 0
.LVL38:
	entry	sp, 80
.LCFI5:
	.loc 1 135 0
	call8	net_prepare
.LVL39:
	mov.n	a6, a10
.LVL40:
	bnez.n	a10, .L34
	.loc 1 140 0
	movi.n	a8, 0
	s32i.n	a8, sp, 0
	s32i.n	a8, sp, 4
	s32i.n	a8, sp, 16
	s32i.n	a8, sp, 20
	s32i.n	a8, sp, 24
	s32i.n	a8, sp, 28
	.loc 1 142 0
	bnei	a5, 1, .L35
	movi.n	a7, 2
	j	.L26
.L35:
	movi.n	a7, 1
.L26:
	.loc 1 142 0 is_stmt 0 discriminator 4
	s32i.n	a7, sp, 8
	.loc 1 143 0 is_stmt 1 discriminator 4
	bnei	a5, 1, .L36
	.loc 1 143 0 is_stmt 0
	movi.n	a7, 0x11
	j	.L27
.L36:
	movi.n	a7, 6
.L27:
	.loc 1 143 0 discriminator 4
	s32i.n	a7, sp, 12
	.loc 1 145 0 is_stmt 1 discriminator 4
	addi	a13, sp, 32
	mov.n	a12, sp
	mov.n	a11, a4
	mov.n	a10, a3
	call8	lwip_getaddrinfo
.LVL41:
	bnez.n	a10, .L37
.LVL42:
	.loc 1 151 0
	l32i.n	a3, sp, 32
.LVL43:
	.loc 1 150 0
	movi	a4, -0x52
.LVL44:
	.loc 1 151 0
	j	.L28
.LVL45:
.L33:
.LBB3:
	.loc 1 152 0
	l32i.n	a12, a3, 12
	l32i.n	a11, a3, 8
	l32i.n	a10, a3, 4
	call8	lwip_socket
.LVL46:
	mov.n	a4, a10
.LVL47:
	.loc 1 153 0
	bltz	a10, .L38
.LVL48:
	.loc 1 170 0
	l32i.n	a7, a3, 20
.LVL49:
	.loc 1 171 0
	movi.n	a10, 0
	call8	lwip_htonl
.LVL50:
	s32i.n	a10, a7, 4
	.loc 1 172 0
	l32i.n	a12, a3, 16
	mov.n	a11, a7
	mov.n	a10, a4
	call8	lwip_bind_r
.LVL51:
	beqz.n	a10, .L30
	.loc 1 173 0
	mov.n	a10, a4
	call8	lwip_close_r
.LVL52:
	.loc 1 174 0
	movi	a4, -0x46
.LVL53:
	.loc 1 175 0
	j	.L29
.LVL54:
.L30:
	.loc 1 179 0
	bnez.n	a5, .L31
	.loc 1 180 0
	movi.n	a11, 0xa
	mov.n	a10, a4
	call8	lwip_listen_r
.LVL55:
	beqz.n	a10, .L31
	.loc 1 181 0
	mov.n	a10, a4
	call8	lwip_close_r
.LVL56:
	.loc 1 182 0
	movi	a4, -0x48
.LVL57:
	.loc 1 183 0
	j	.L29
.LVL58:
.L31:
	.loc 1 188 0
	s32i.n	a4, a2, 0
.LVL59:
	.loc 1 190 0
	j	.L32
.LVL60:
.L38:
	.loc 1 154 0
	movi	a4, -0x42
.LVL61:
.L29:
.LBE3:
	.loc 1 151 0 discriminator 2
	l32i.n	a3, a3, 28
.LVL62:
.L28:
	.loc 1 151 0 discriminator 1
	bnez.n	a3, .L33
	mov.n	a6, a4
.LVL63:
.L32:
	.loc 1 193 0
	l32i.n	a10, sp, 32
	call8	lwip_freeaddrinfo
.LVL64:
	.loc 1 195 0
	mov.n	a2, a6
.LVL65:
	retw.n
.LVL66:
.L34:
	.loc 1 136 0
	mov.n	a2, a10
.LVL67:
	retw.n
.LVL68:
.L37:
	.loc 1 146 0
	movi	a2, -0x52
.LVL69:
	.loc 1 197 0
	retw.n
.LFE30:
	.size	mbedtls_net_bind, .-mbedtls_net_bind
	.section	.text.mbedtls_net_accept,"ax",@progbits
	.literal_position
	.literal .LC3, -26880
	.literal .LC4, 4104
	.literal .LC5, 4095
	.align	4
	.global	mbedtls_net_accept
	.type	mbedtls_net_accept, @function
mbedtls_net_accept:
.LFB32:
	.loc 1 238 0
.LVL70:
	entry	sp, 80
.LCFI6:
	.loc 1 244 0
	movi.n	a7, 0x10
	s32i.n	a7, sp, 20
	.loc 1 245 0
	movi.n	a7, 4
	s32i.n	a7, sp, 24
	.loc 1 248 0
	addi	a14, sp, 24
	mov.n	a13, sp
	l32r	a12, .LC4
	l32r	a11, .LC5
	l32i.n	a10, a2, 0
	call8	lwip_getsockopt_r
.LVL71:
	mov.n	a7, a10
	bnez.n	a10, .L46
	.loc 1 250 0
	l32i.n	a8, sp, 0
	addi.n	a9, a8, -1
	.loc 1 249 0
	bgeui	a9, 2, .L47
	.loc 1 254 0
	bnei	a8, 1, .L41
	.loc 1 256 0
	addi	a12, sp, 20
	addi.n	a11, sp, 4
	l32i.n	a10, a2, 0
	call8	lwip_accept_r
.LVL72:
	s32i.n	a10, a3, 0
.LVL73:
	j	.L42
.LVL74:
.L41:
.LBB4:
	.loc 1 260 0
	movi.n	a8, 0
	s8i	a8, sp, 28
	.loc 1 262 0
	addi	a15, sp, 20
	addi.n	a14, sp, 4
	movi.n	a13, 1
	mov.n	a12, a13
	addi	a11, sp, 28
	l32i.n	a10, a2, 0
	call8	lwip_recvfrom_r
.LVL75:
.L42:
.LBE4:
	.loc 1 267 0
	bgez	a10, .L43
	.loc 1 268 0
	movi.n	a11, 0
	mov.n	a10, a2
.LVL76:
	call8	net_would_block
.LVL77:
	beqz.n	a10, .L48
	.loc 1 269 0
	l32r	a7, .LC3
	j	.L40
.LVL78:
.L43:
	.loc 1 277 0
	l32i.n	a8, sp, 0
	beqi	a8, 1, .L44
.LBB5:
	.loc 1 279 0
	movi.n	a8, 1
	s32i.n	a8, sp, 44
	.loc 1 281 0
	l32i.n	a12, sp, 20
	addi.n	a11, sp, 4
	l32i.n	a10, a2, 0
.LVL79:
	call8	lwip_connect_r
.LVL80:
	bnez.n	a10, .L49
	.loc 1 285 0
	l32i.n	a8, a2, 0
	s32i.n	a8, a3, 0
	.loc 1 286 0
	movi.n	a8, -1
	s32i.n	a8, a2, 0
	.loc 1 288 0
	movi.n	a8, 0x10
	s32i.n	a8, sp, 20
	.loc 1 289 0
	addi	a12, sp, 20
	addi	a11, sp, 28
	l32i.n	a10, a3, 0
	call8	lwip_getsockname_r
.LVL81:
	bnez.n	a10, .L50
	.loc 1 291 0
	movi.n	a12, 0x11
	movi.n	a11, 2
	mov.n	a10, a11
	call8	lwip_socket
.LVL82:
	s32i.n	a10, a2, 0
	.loc 1 290 0
	bltz	a10, .L51
	.loc 1 293 0
	movi.n	a14, 4
	addi	a13, sp, 44
	mov.n	a12, a14
	l32r	a11, .LC5
	call8	lwip_setsockopt_r
.LVL83:
	.loc 1 292 0
	bnez.n	a10, .L52
	.loc 1 298 0
	l32i.n	a12, sp, 20
	addi	a11, sp, 28
	l32i.n	a10, a2, 0
	call8	lwip_bind_r
.LVL84:
	beqz.n	a10, .L44
	j	.L53
.L49:
	.loc 1 282 0
	movi	a7, -0x4a
	j	.L40
.L50:
	.loc 1 295 0
	movi	a7, -0x42
	j	.L40
.L51:
	movi	a7, -0x42
	j	.L40
.L52:
	movi	a7, -0x42
	j	.L40
.L53:
	.loc 1 299 0
	movi	a7, -0x46
	j	.L40
.L44:
.LBE5:
	.loc 1 303 0
	beqz.n	a4, .L40
.LVL85:
.LBB6:
	.loc 1 305 0
	movi.n	a2, 4
.LVL86:
	s32i.n	a2, a6, 0
	.loc 1 307 0
	bltu	a5, a2, .L54
	.loc 1 311 0
	l8ui	a2, sp, 9
	l8ui	a3, sp, 8
.LVL87:
	s8i	a3, a4, 0
	l8ui	a3, sp, 10
	s8i	a2, a4, 1
	l8ui	a2, sp, 11
	s8i	a3, a4, 2
	s8i	a2, a4, 3
	j	.L40
.LVL88:
.L46:
.LBE6:
	.loc 1 251 0
	movi	a7, -0x4a
	j	.L40
.L47:
	movi	a7, -0x4a
	j	.L40
.L48:
	.loc 1 272 0
	movi	a7, -0x4a
	j	.L40
.LVL89:
.L54:
.LBB7:
	.loc 1 308 0
	movi	a7, -0x43
.LVL90:
.L40:
.LBE7:
	.loc 1 315 0
	mov.n	a2, a7
	retw.n
.LFE32:
	.size	mbedtls_net_accept, .-mbedtls_net_accept
	.section	.text.mbedtls_net_set_block,"ax",@progbits
	.literal_position
	.literal .LC6, -16385
	.align	4
	.global	mbedtls_net_set_block
	.type	mbedtls_net_set_block, @function
mbedtls_net_set_block:
.LFB33:
	.loc 1 321 0
.LVL91:
	entry	sp, 32
.LCFI7:
	.loc 1 322 0
	l32i.n	a2, a2, 0
.LVL92:
	movi.n	a12, 0
	movi.n	a11, 3
	mov.n	a10, a2
	call8	lwip_fcntl_r
.LVL93:
	l32r	a12, .LC6
	and	a12, a10, a12
	movi.n	a11, 4
	mov.n	a10, a2
	call8	lwip_fcntl_r
.LVL94:
	.loc 1 323 0
	mov.n	a2, a10
	retw.n
.LFE33:
	.size	mbedtls_net_set_block, .-mbedtls_net_set_block
	.section	.text.mbedtls_net_set_nonblock,"ax",@progbits
	.literal_position
	.literal .LC7, 16384
	.align	4
	.global	mbedtls_net_set_nonblock
	.type	mbedtls_net_set_nonblock, @function
mbedtls_net_set_nonblock:
.LFB34:
	.loc 1 326 0
.LVL95:
	entry	sp, 32
.LCFI8:
	.loc 1 327 0
	l32i.n	a2, a2, 0
.LVL96:
	movi.n	a12, 0
	movi.n	a11, 3
	mov.n	a10, a2
	call8	lwip_fcntl_r
.LVL97:
	l32r	a12, .LC7
	or	a12, a10, a12
	movi.n	a11, 4
	mov.n	a10, a2
	call8	lwip_fcntl_r
.LVL98:
	.loc 1 328 0
	mov.n	a2, a10
	retw.n
.LFE34:
	.size	mbedtls_net_set_nonblock, .-mbedtls_net_set_nonblock
	.section	.text.mbedtls_net_usleep,"ax",@progbits
	.literal_position
	.literal .LC8, 1125899907
	.literal .LC9, 1000000
	.align	4
	.global	mbedtls_net_usleep
	.type	mbedtls_net_usleep, @function
mbedtls_net_usleep:
.LFB35:
	.loc 1 334 0
.LVL99:
	entry	sp, 48
.LCFI9:
	.loc 1 336 0
	l32r	a8, .LC8
	muluh	a8, a2, a8
	extui	a8, a8, 18, 14
	s32i.n	a8, sp, 0
	.loc 1 337 0
	l32r	a9, .LC9
	mull	a8, a8, a9
	sub	a9, a2, a8
	s32i.n	a9, sp, 4
	.loc 1 338 0
	mov.n	a14, sp
	movi.n	a13, 0
	mov.n	a12, a13
	mov.n	a11, a13
	mov.n	a10, a13
	call8	lwip_select
.LVL100:
	retw.n
.LFE35:
	.size	mbedtls_net_usleep, .-mbedtls_net_usleep
	.section	.text.mbedtls_net_recv,"ax",@progbits
	.literal_position
	.literal .LC10, -26880
	.align	4
	.global	mbedtls_net_recv
	.type	mbedtls_net_recv, @function
mbedtls_net_recv:
.LFB36:
	.loc 1 345 0
.LVL101:
	entry	sp, 48
.LCFI10:
	.loc 1 347 0
	l32i.n	a10, a2, 0
.LVL102:
	.loc 1 348 0
	movi.n	a8, 0
	s32i.n	a8, sp, 0
	.loc 1 350 0
	blt	a10, a8, .L60
	.loc 1 354 0
	mov.n	a12, a4
	mov.n	a11, a3
	call8	lwip_read_r
.LVL103:
	.loc 1 356 0
	bgez	a10, .L61
	.loc 1 357 0
	mov.n	a11, sp
	mov.n	a10, a2
.LVL104:
	call8	net_would_block
.LVL105:
	bnez.n	a10, .L62
	.loc 1 361 0
	l32i.n	a8, sp, 0
	addi	a4, a8, -32
.LVL106:
	movi.n	a9, 1
	movi.n	a2, 0
.LVL107:
	mov.n	a3, a2
.LVL108:
	moveqz	a3, a9, a4
	mov.n	a4, a3
	addi	a3, a8, -104
	moveqz	a2, a9, a3
	or	a2, a4, a2
	bnez.n	a2, .L63
	.loc 1 365 0
	bnei	a8, 4, .L64
	.loc 1 366 0
	l32r	a2, .LC10
	retw.n
.LVL109:
.L60:
	.loc 1 351 0
	movi	a2, -0x45
.LVL110:
	retw.n
.LVL111:
.L61:
	.loc 1 372 0
	mov.n	a2, a10
.LVL112:
	retw.n
.LVL113:
.L62:
	.loc 1 358 0
	l32r	a2, .LC10
.LVL114:
	retw.n
.LVL115:
.L63:
	.loc 1 362 0
	movi	a2, -0x50
	retw.n
.L64:
	.loc 1 369 0
	movi	a2, -0x4c
	.loc 1 373 0
	retw.n
.LFE36:
	.size	mbedtls_net_recv, .-mbedtls_net_recv
	.section	.text.mbedtls_net_recv_timeout,"ax",@progbits
	.literal_position
	.literal .LC11, -26624
	.literal .LC12, -26880
	.literal .LC13, 274877907
	.align	4
	.global	mbedtls_net_recv_timeout
	.type	mbedtls_net_recv_timeout, @function
mbedtls_net_recv_timeout:
.LFB37:
	.loc 1 380 0
.LVL116:
	entry	sp, 48
.LCFI11:
	.loc 1 384 0
	l32i.n	a10, a2, 0
.LVL117:
	.loc 1 386 0
	bltz	a10, .L71
	addi.n	a9, sp, 8
	movi.n	a8, 0
	j	.L67
.LVL118:
.L68:
.LBB8:
	.loc 1 390 0 discriminator 3
	movi.n	a11, 0
	s8i	a11, a9, 0
	addi.n	a8, a8, 1
.LVL119:
	addi.n	a9, a9, 1
.LVL120:
.L67:
	.loc 1 390 0 is_stmt 0 discriminator 1
	bltui	a8, 8, .L68
.LBE8:
	.loc 1 391 0 is_stmt 1
	srli	a9, a10, 5
.LVL121:
	movi.n	a8, 1
.LVL122:
	ssl	a10
	sll	a8, a8
	addx4	a9, a9, sp
	l32i.n	a11, a9, 8
	or	a8, a11, a8
	s32i.n	a8, a9, 8
	.loc 1 393 0
	l32r	a8, .LC13
	muluh	a8, a5, a8
	srli	a8, a8, 6
	s32i.n	a8, sp, 0
	.loc 1 394 0
	slli	a9, a8, 5
	sub	a9, a9, a8
	addx4	a8, a9, a8
	slli	a9, a8, 3
	sub	a9, a5, a9
	slli	a8, a9, 5
	sub	a8, a8, a9
	addx4	a9, a8, a9
	slli	a8, a9, 3
	s32i.n	a8, sp, 4
	.loc 1 396 0
	addi.n	a10, a10, 1
.LVL123:
	beqz.n	a5, .L72
	mov.n	a14, sp
	j	.L69
.L72:
	movi.n	a14, 0
.L69:
	.loc 1 396 0 is_stmt 0 discriminator 4
	movi.n	a13, 0
	mov.n	a12, a13
	addi.n	a11, sp, 8
	call8	lwip_select
.LVL124:
	.loc 1 399 0 is_stmt 1 discriminator 4
	beqz.n	a10, .L73
	.loc 1 403 0
	bgez	a10, .L70
	.loc 1 404 0
	call8	__errno
.LVL125:
	l32i.n	a2, a10, 0
.LVL126:
	bnei	a2, 4, .L74
	.loc 1 405 0
	l32r	a2, .LC12
	retw.n
.LVL127:
.L70:
	.loc 1 412 0
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
.LVL128:
	call8	mbedtls_net_recv
.LVL129:
	mov.n	a2, a10
.LVL130:
	retw.n
.LVL131:
.L71:
	.loc 1 387 0
	movi	a2, -0x45
.LVL132:
	retw.n
.LVL133:
.L73:
	.loc 1 400 0
	l32r	a2, .LC11
.LVL134:
	retw.n
.LVL135:
.L74:
	.loc 1 408 0
	movi	a2, -0x4c
	.loc 1 413 0
	retw.n
.LFE37:
	.size	mbedtls_net_recv_timeout, .-mbedtls_net_recv_timeout
	.section	.text.mbedtls_net_send,"ax",@progbits
	.literal_position
	.literal .LC14, -26752
	.align	4
	.global	mbedtls_net_send
	.type	mbedtls_net_send, @function
mbedtls_net_send:
.LFB38:
	.loc 1 419 0
.LVL136:
	entry	sp, 48
.LCFI12:
	.loc 1 421 0
	l32i.n	a10, a2, 0
.LVL137:
	.loc 1 423 0
	movi.n	a8, 0
	s32i.n	a8, sp, 0
	.loc 1 425 0
	blt	a10, a8, .L77
	.loc 1 429 0
	mov.n	a12, a4
	mov.n	a11, a3
	call8	lwip_write_r
.LVL138:
	.loc 1 431 0
	bgez	a10, .L78
	.loc 1 432 0
	mov.n	a11, sp
	mov.n	a10, a2
.LVL139:
	call8	net_would_block
.LVL140:
	bnez.n	a10, .L79
	.loc 1 436 0
	l32i.n	a8, sp, 0
	addi	a4, a8, -32
.LVL141:
	movi.n	a9, 1
	movi.n	a2, 0
.LVL142:
	mov.n	a3, a2
.LVL143:
	moveqz	a3, a9, a4
	mov.n	a4, a3
	addi	a3, a8, -104
	moveqz	a2, a9, a3
	or	a2, a4, a2
	bnez.n	a2, .L80
	.loc 1 440 0
	bnei	a8, 4, .L81
	.loc 1 441 0
	l32r	a2, .LC14
	retw.n
.LVL144:
.L77:
	.loc 1 426 0
	movi	a2, -0x45
.LVL145:
	retw.n
.LVL146:
.L78:
	.loc 1 447 0
	mov.n	a2, a10
.LVL147:
	retw.n
.LVL148:
.L79:
	.loc 1 433 0
	l32r	a2, .LC14
.LVL149:
	retw.n
.LVL150:
.L80:
	.loc 1 437 0
	movi	a2, -0x50
	retw.n
.L81:
	.loc 1 444 0
	movi	a2, -0x4e
	.loc 1 448 0
	retw.n
.LFE38:
	.size	mbedtls_net_send, .-mbedtls_net_send
	.section	.text.mbedtls_net_free,"ax",@progbits
	.align	4
	.global	mbedtls_net_free
	.type	mbedtls_net_free, @function
mbedtls_net_free:
.LFB39:
	.loc 1 454 0
.LVL151:
	entry	sp, 32
.LCFI13:
	.loc 1 455 0
	l32i.n	a10, a2, 0
	beqi	a10, -1, .L82
	.loc 1 459 0
	movi.n	a11, 2
	call8	lwip_shutdown_r
.LVL152:
	.loc 1 460 0
	l32i.n	a10, a2, 0
	call8	lwip_close_r
.LVL153:
	.loc 1 462 0
	movi.n	a8, -1
	s32i.n	a8, a2, 0
.L82:
	retw.n
.LFE39:
	.size	mbedtls_net_free, .-mbedtls_net_free
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
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI0-.LFB26
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI1-.LFB27
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI2-.LFB31
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI3-.LFB28
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI4-.LFB29
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI5-.LFB30
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI6-.LFB32
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI7-.LFB33
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI8-.LFB34
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI9-.LFB35
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI10-.LFB36
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x4
	.4byte	.LCFI11-.LFB37
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x4
	.4byte	.LCFI12-.LFB38
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x4
	.4byte	.LCFI13-.LFB39
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE26:
	.text
.Letext0:
	.file 2 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 3 "C:/esp/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "C:/esp/esp-idf/components/newlib/include/sys/types.h"
	.file 5 "C:/esp/esp-idf/components/newlib/include/stdint.h"
	.file 6 "C:/esp/esp-idf/components/mbedtls/include/mbedtls/net_sockets.h"
	.file 7 "C:/esp/esp-idf/components/newlib/include/sys/time.h"
	.file 8 "C:/esp/esp-idf/components/lwip/include/lwip/port/arch/cc.h"
	.file 9 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/inet.h"
	.file 10 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/sockets.h"
	.file 11 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/netdb.h"
	.file 12 "C:/esp/esp-idf/components/newlib/include/sys/unistd.h"
	.file 13 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/def.h"
	.file 14 "C:/esp/esp-idf/components/newlib/include/sys/errno.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xd42
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF113
	.byte	0xc
	.4byte	.LASF114
	.4byte	.LASF115
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x2
	.byte	0xd8
	.4byte	0x37
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x3
	.byte	0x12
	.4byte	0x57
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x3
	.byte	0x16
	.4byte	0x3e
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x3
	.byte	0x1a
	.4byte	0x37
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x6
	.byte	0x4
	.4byte	0x57
	.uleb128 0x6
	.byte	0x4
	.4byte	0xac
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb9
	.uleb128 0x7
	.4byte	0xac
	.uleb128 0x8
	.4byte	0xac
	.4byte	0xce
	.uleb128 0x9
	.4byte	0x90
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0x7a
	.4byte	0x89
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x4
	.byte	0xf4
	.4byte	0x89
	.uleb128 0xa
	.4byte	.LASF17
	.byte	0x8
	.byte	0x4
	.byte	0xfc
	.4byte	0xfd
	.uleb128 0xb
	.4byte	.LASF22
	.byte	0x4
	.byte	0xfd
	.4byte	0xfd
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0xd9
	.4byte	0x10d
	.uleb128 0x9
	.4byte	0x90
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x4
	.byte	0xfe
	.4byte	0xe4
	.uleb128 0xc
	.4byte	.LASF18
	.byte	0x4
	.2byte	0x11d
	.4byte	0x89
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x5
	.byte	0x15
	.4byte	0x4c
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x5
	.byte	0x21
	.4byte	0x65
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x5
	.byte	0x2d
	.4byte	0x70
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2c
	.uleb128 0x6
	.byte	0x4
	.4byte	0x151
	.uleb128 0x7
	.4byte	0x57
	.uleb128 0xd
	.byte	0x4
	.byte	0x6
	.byte	0x41
	.4byte	0x16a
	.uleb128 0xe
	.string	"fd"
	.byte	0x6
	.byte	0x43
	.4byte	0x25
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x6
	.byte	0x45
	.4byte	0x156
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0x8
	.byte	0x7
	.byte	0x11
	.4byte	0x19a
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x7
	.byte	0x12
	.4byte	0xce
	.byte	0
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x7
	.byte	0x13
	.4byte	0x118
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF27
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x8
	.byte	0x2e
	.4byte	0x124
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0x8
	.byte	0x30
	.4byte	0x12f
	.uleb128 0x3
	.4byte	.LASF30
	.byte	0x8
	.byte	0x32
	.4byte	0x13a
	.uleb128 0x3
	.4byte	.LASF31
	.byte	0x9
	.byte	0x37
	.4byte	0x1b7
	.uleb128 0xa
	.4byte	.LASF32
	.byte	0x4
	.byte	0x9
	.byte	0x3a
	.4byte	0x1e6
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0x9
	.byte	0x3b
	.4byte	0x1c2
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF34
	.byte	0xa
	.byte	0x36
	.4byte	0x1a1
	.uleb128 0x3
	.4byte	.LASF35
	.byte	0xa
	.byte	0x3b
	.4byte	0x1ac
	.uleb128 0xa
	.4byte	.LASF36
	.byte	0x10
	.byte	0xa
	.byte	0x40
	.4byte	0x245
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0xa
	.byte	0x41
	.4byte	0x1a1
	.byte	0
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0xa
	.byte	0x42
	.4byte	0x1e6
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0xa
	.byte	0x43
	.4byte	0x1f1
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0xa
	.byte	0x44
	.4byte	0x1cd
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF41
	.byte	0xa
	.byte	0x46
	.4byte	0xbe
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.4byte	.LASF42
	.byte	0x10
	.byte	0xa
	.byte	0x55
	.4byte	0x276
	.uleb128 0xb
	.4byte	.LASF43
	.byte	0xa
	.byte	0x56
	.4byte	0x1a1
	.byte	0
	.uleb128 0xb
	.4byte	.LASF44
	.byte	0xa
	.byte	0x57
	.4byte	0x1e6
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF45
	.byte	0xa
	.byte	0x58
	.4byte	0x276
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.4byte	0xac
	.4byte	0x286
	.uleb128 0x9
	.4byte	0x90
	.byte	0xd
	.byte	0
	.uleb128 0x3
	.4byte	.LASF46
	.byte	0xa
	.byte	0x68
	.4byte	0x1b7
	.uleb128 0xa
	.4byte	.LASF47
	.byte	0x20
	.byte	0xb
	.byte	0x63
	.4byte	0x2fe
	.uleb128 0xb
	.4byte	.LASF48
	.byte	0xb
	.byte	0x64
	.4byte	0x25
	.byte	0
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0xb
	.byte	0x65
	.4byte	0x25
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF50
	.byte	0xb
	.byte	0x66
	.4byte	0x25
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF51
	.byte	0xb
	.byte	0x67
	.4byte	0x25
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF52
	.byte	0xb
	.byte	0x68
	.4byte	0x286
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF53
	.byte	0xb
	.byte	0x69
	.4byte	0x2fe
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF54
	.byte	0xb
	.byte	0x6a
	.4byte	0xa6
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF55
	.byte	0xb
	.byte	0x6b
	.4byte	0x304
	.byte	0x1c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x245
	.uleb128 0x6
	.byte	0x4
	.4byte	0x291
	.uleb128 0xf
	.4byte	.LASF116
	.byte	0x1
	.byte	0x39
	.4byte	0x25
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x10
	.4byte	.LASF58
	.byte	0x1
	.byte	0x3e
	.4byte	0x25
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x38d
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0x3e
	.4byte	0x25
	.4byte	.LLST0
	.uleb128 0x12
	.4byte	.LASF56
	.byte	0x1
	.byte	0x40
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x12
	.4byte	.LASF57
	.byte	0x1
	.byte	0x41
	.4byte	0x1b7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x13
	.4byte	.LVL1
	.4byte	0xc68
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0xfff
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1007
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	.LASF59
	.byte	0x1
	.byte	0xcd
	.4byte	0x25
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3ed
	.uleb128 0x11
	.string	"ctx"
	.byte	0x1
	.byte	0xcd
	.4byte	0x3ed
	.4byte	.LLST1
	.uleb128 0x15
	.4byte	.LASF60
	.byte	0x1
	.byte	0xcd
	.4byte	0x3f8
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x12
	.4byte	.LASF61
	.byte	0x1
	.byte	0xcf
	.4byte	0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x16
	.4byte	.LVL4
	.4byte	0x31f
	.uleb128 0x13
	.4byte	.LVL6
	.4byte	0xc74
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3f3
	.uleb128 0x7
	.4byte	0x16a
	.uleb128 0x6
	.byte	0x4
	.4byte	0x25
	.uleb128 0x17
	.4byte	.LASF84
	.byte	0x1
	.byte	0x4b
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x421
	.uleb128 0x18
	.string	"ctx"
	.byte	0x1
	.byte	0x4b
	.4byte	0x421
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x16a
	.uleb128 0x19
	.4byte	.LASF67
	.byte	0x1
	.byte	0x53
	.4byte	0x25
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x53a
	.uleb128 0x11
	.string	"ctx"
	.byte	0x1
	.byte	0x53
	.4byte	0x421
	.4byte	.LLST2
	.uleb128 0x1a
	.4byte	.LASF62
	.byte	0x1
	.byte	0x53
	.4byte	0xb3
	.4byte	.LLST3
	.uleb128 0x1a
	.4byte	.LASF63
	.byte	0x1
	.byte	0x53
	.4byte	0xb3
	.4byte	.LLST4
	.uleb128 0x1a
	.4byte	.LASF64
	.byte	0x1
	.byte	0x53
	.4byte	0x25
	.4byte	.LLST5
	.uleb128 0x1b
	.string	"ret"
	.byte	0x1
	.byte	0x55
	.4byte	0x25
	.4byte	.LLST6
	.uleb128 0x12
	.4byte	.LASF65
	.byte	0x1
	.byte	0x56
	.4byte	0x291
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x12
	.4byte	.LASF66
	.byte	0x1
	.byte	0x56
	.4byte	0x304
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1b
	.string	"cur"
	.byte	0x1
	.byte	0x56
	.4byte	0x304
	.4byte	.LLST7
	.uleb128 0x1c
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0x500
	.uleb128 0x1b
	.string	"fd"
	.byte	0x1
	.byte	0x69
	.4byte	0x25
	.4byte	.LLST8
	.uleb128 0x16
	.4byte	.LVL20
	.4byte	0xc80
	.uleb128 0x1d
	.4byte	.LVL22
	.4byte	0xc8c
	.4byte	0x4ef
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL26
	.4byte	0xc98
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL10
	.4byte	0x30a
	.uleb128 0x1d
	.4byte	.LVL15
	.4byte	0xca3
	.4byte	0x530
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x16
	.4byte	.LVL32
	.4byte	0xcae
	.byte	0
	.uleb128 0x19
	.4byte	.LASF68
	.byte	0x1
	.byte	0x82
	.4byte	0x25
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6a0
	.uleb128 0x11
	.string	"ctx"
	.byte	0x1
	.byte	0x82
	.4byte	0x421
	.4byte	.LLST9
	.uleb128 0x1a
	.4byte	.LASF69
	.byte	0x1
	.byte	0x82
	.4byte	0xb3
	.4byte	.LLST10
	.uleb128 0x1a
	.4byte	.LASF63
	.byte	0x1
	.byte	0x82
	.4byte	0xb3
	.4byte	.LLST11
	.uleb128 0x15
	.4byte	.LASF64
	.byte	0x1
	.byte	0x82
	.4byte	0x25
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1b
	.string	"ret"
	.byte	0x1
	.byte	0x84
	.4byte	0x25
	.4byte	.LLST12
	.uleb128 0x12
	.4byte	.LASF65
	.byte	0x1
	.byte	0x85
	.4byte	0x291
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x12
	.4byte	.LASF66
	.byte	0x1
	.byte	0x85
	.4byte	0x304
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1b
	.string	"cur"
	.byte	0x1
	.byte	0x85
	.4byte	0x304
	.4byte	.LLST13
	.uleb128 0x1c
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.4byte	0x666
	.uleb128 0x1b
	.string	"fd"
	.byte	0x1
	.byte	0x98
	.4byte	0x25
	.4byte	.LLST14
	.uleb128 0x1e
	.4byte	.LASF70
	.byte	0x1
	.byte	0xa9
	.4byte	0x6a0
	.4byte	.LLST15
	.uleb128 0x16
	.4byte	.LVL46
	.4byte	0xc80
	.uleb128 0x1d
	.4byte	.LVL50
	.4byte	0xcb9
	.4byte	0x60e
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL51
	.4byte	0xcc4
	.4byte	0x628
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL52
	.4byte	0xc98
	.4byte	0x63c
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL55
	.4byte	0xcd0
	.4byte	0x655
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x13
	.4byte	.LVL56
	.4byte	0xc98
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL39
	.4byte	0x30a
	.uleb128 0x1d
	.4byte	.LVL41
	.4byte	0xca3
	.4byte	0x696
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x16
	.4byte	.LVL64
	.4byte	0xcae
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1fc
	.uleb128 0x19
	.4byte	.LASF71
	.byte	0x1
	.byte	0xeb
	.4byte	0x25
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8b0
	.uleb128 0x1a
	.4byte	.LASF72
	.byte	0x1
	.byte	0xeb
	.4byte	0x421
	.4byte	.LLST16
	.uleb128 0x1a
	.4byte	.LASF73
	.byte	0x1
	.byte	0xec
	.4byte	0x421
	.4byte	.LLST17
	.uleb128 0x15
	.4byte	.LASF74
	.byte	0x1
	.byte	0xed
	.4byte	0x97
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x15
	.4byte	.LASF75
	.byte	0x1
	.byte	0xed
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x15
	.4byte	.LASF76
	.byte	0x1
	.byte	0xed
	.4byte	0x145
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x1b
	.string	"ret"
	.byte	0x1
	.byte	0xef
	.4byte	0x25
	.4byte	.LLST18
	.uleb128 0x12
	.4byte	.LASF77
	.byte	0x1
	.byte	0xf0
	.4byte	0x25
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x12
	.4byte	.LASF78
	.byte	0x1
	.byte	0xf2
	.4byte	0x1fc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x1f
	.string	"n"
	.byte	0x1
	.byte	0xf4
	.4byte	0x286
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x12
	.4byte	.LASF79
	.byte	0x1
	.byte	0xf5
	.4byte	0x286
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1c
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.4byte	0x78f
	.uleb128 0x20
	.string	"buf"
	.byte	0x1
	.2byte	0x104
	.4byte	0x8b0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x13
	.4byte	.LVL75
	.4byte	0xcdc
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.4byte	0x83c
	.uleb128 0x21
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x116
	.4byte	0x1fc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x20
	.string	"one"
	.byte	0x1
	.2byte	0x117
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1d
	.4byte	.LVL80
	.4byte	0xc8c
	.4byte	0x7cf
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL81
	.4byte	0xce8
	.4byte	0x7e9
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL82
	.4byte	0xc80
	.4byte	0x806
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x41
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL83
	.4byte	0xcf4
	.4byte	0x82b
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0xfff
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x13
	.4byte	.LVL84
	.4byte	0xcc4
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.Ldebug_ranges0+0
	.4byte	0x856
	.uleb128 0x23
	.4byte	.LASF81
	.byte	0x1
	.2byte	0x130
	.4byte	0x6a0
	.4byte	.LLST19
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL71
	.4byte	0xc68
	.4byte	0x87f
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0xfff
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1008
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL72
	.4byte	0xd00
	.4byte	0x89a
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.uleb128 0x13
	.4byte	.LVL77
	.4byte	0x38d
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0xac
	.4byte	0x8c0
	.uleb128 0x9
	.4byte	0x90
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LASF82
	.byte	0x1
	.2byte	0x140
	.4byte	0x25
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x91e
	.uleb128 0x25
	.string	"ctx"
	.byte	0x1
	.2byte	0x140
	.4byte	0x421
	.4byte	.LLST20
	.uleb128 0x1d
	.4byte	.LVL93
	.4byte	0xc74
	.4byte	0x908
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x13
	.4byte	.LVL94
	.4byte	0xc74
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x145
	.4byte	0x25
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x97c
	.uleb128 0x25
	.string	"ctx"
	.byte	0x1
	.2byte	0x145
	.4byte	0x421
	.4byte	.LLST21
	.uleb128 0x1d
	.4byte	.LVL97
	.4byte	0xc74
	.4byte	0x966
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x13
	.4byte	.LVL98
	.4byte	0xc74
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LASF85
	.byte	0x1
	.2byte	0x14d
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9d3
	.uleb128 0x27
	.4byte	.LASF86
	.byte	0x1
	.2byte	0x14d
	.4byte	0x99
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x20
	.string	"tv"
	.byte	0x1
	.2byte	0x14f
	.4byte	0x175
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x13
	.4byte	.LVL100
	.4byte	0xd0c
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LASF87
	.byte	0x1
	.2byte	0x158
	.4byte	0x25
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa7c
	.uleb128 0x25
	.string	"ctx"
	.byte	0x1
	.2byte	0x158
	.4byte	0x97
	.4byte	.LLST22
	.uleb128 0x25
	.string	"buf"
	.byte	0x1
	.2byte	0x158
	.4byte	0xa0
	.4byte	.LLST23
	.uleb128 0x25
	.string	"len"
	.byte	0x1
	.2byte	0x158
	.4byte	0x2c
	.4byte	.LLST24
	.uleb128 0x28
	.string	"ret"
	.byte	0x1
	.2byte	0x15a
	.4byte	0x25
	.4byte	.LLST25
	.uleb128 0x28
	.string	"fd"
	.byte	0x1
	.2byte	0x15b
	.4byte	0x25
	.4byte	.LLST26
	.uleb128 0x21
	.4byte	.LASF61
	.byte	0x1
	.2byte	0x15c
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1d
	.4byte	.LVL103
	.4byte	0xd18
	.4byte	0xa65
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL105
	.4byte	0x38d
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LASF88
	.byte	0x1
	.2byte	0x17a
	.4byte	0x25
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb7e
	.uleb128 0x25
	.string	"ctx"
	.byte	0x1
	.2byte	0x17a
	.4byte	0x97
	.4byte	.LLST27
	.uleb128 0x29
	.string	"buf"
	.byte	0x1
	.2byte	0x17a
	.4byte	0xa0
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x29
	.string	"len"
	.byte	0x1
	.2byte	0x17a
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x27
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x17b
	.4byte	0x13a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x28
	.string	"ret"
	.byte	0x1
	.2byte	0x17d
	.4byte	0x25
	.4byte	.LLST28
	.uleb128 0x20
	.string	"tv"
	.byte	0x1
	.2byte	0x17e
	.4byte	0x175
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x21
	.4byte	.LASF90
	.byte	0x1
	.2byte	0x17f
	.4byte	0x10d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.string	"fd"
	.byte	0x1
	.2byte	0x180
	.4byte	0x25
	.4byte	.LLST29
	.uleb128 0x1c
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.4byte	0xb3a
	.uleb128 0x28
	.string	"__i"
	.byte	0x1
	.2byte	0x186
	.4byte	0x2c
	.4byte	.LLST30
	.uleb128 0x23
	.4byte	.LASF91
	.byte	0x1
	.2byte	0x186
	.4byte	0xa6
	.4byte	.LLST31
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL124
	.4byte	0xd0c
	.4byte	0xb58
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x16
	.4byte	.LVL125
	.4byte	0xd23
	.uleb128 0x13
	.4byte	.LVL129
	.4byte	0x9d3
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LASF92
	.byte	0x1
	.2byte	0x1a2
	.4byte	0x25
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc27
	.uleb128 0x25
	.string	"ctx"
	.byte	0x1
	.2byte	0x1a2
	.4byte	0x97
	.4byte	.LLST32
	.uleb128 0x25
	.string	"buf"
	.byte	0x1
	.2byte	0x1a2
	.4byte	0x14b
	.4byte	.LLST33
	.uleb128 0x25
	.string	"len"
	.byte	0x1
	.2byte	0x1a2
	.4byte	0x2c
	.4byte	.LLST34
	.uleb128 0x28
	.string	"ret"
	.byte	0x1
	.2byte	0x1a4
	.4byte	0x25
	.4byte	.LLST35
	.uleb128 0x28
	.string	"fd"
	.byte	0x1
	.2byte	0x1a5
	.4byte	0x25
	.4byte	.LLST36
	.uleb128 0x21
	.4byte	.LASF61
	.byte	0x1
	.2byte	0x1a7
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1d
	.4byte	.LVL138
	.4byte	0xd2e
	.4byte	0xc10
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL140
	.4byte	0x38d
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x1c5
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc68
	.uleb128 0x29
	.string	"ctx"
	.byte	0x1
	.2byte	0x1c5
	.4byte	0x421
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1d
	.4byte	.LVL152
	.4byte	0xd39
	.4byte	0xc5e
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x16
	.4byte	.LVL153
	.4byte	0xc98
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF94
	.4byte	.LASF94
	.byte	0xa
	.2byte	0x207
	.uleb128 0x2a
	.4byte	.LASF95
	.4byte	.LASF95
	.byte	0xa
	.2byte	0x21a
	.uleb128 0x2a
	.4byte	.LASF96
	.4byte	.LASF96
	.byte	0xa
	.2byte	0x214
	.uleb128 0x2a
	.4byte	.LASF97
	.4byte	.LASF97
	.byte	0xa
	.2byte	0x20a
	.uleb128 0x2b
	.4byte	.LASF98
	.4byte	.LASF98
	.byte	0xc
	.byte	0x1e
	.uleb128 0x2b
	.4byte	.LASF99
	.4byte	.LASF99
	.byte	0xb
	.byte	0x7a
	.uleb128 0x2b
	.4byte	.LASF100
	.4byte	.LASF100
	.byte	0xb
	.byte	0x79
	.uleb128 0x2b
	.4byte	.LASF101
	.4byte	.LASF101
	.byte	0xd
	.byte	0x6e
	.uleb128 0x2a
	.4byte	.LASF102
	.4byte	.LASF102
	.byte	0xa
	.2byte	0x203
	.uleb128 0x2a
	.4byte	.LASF103
	.4byte	.LASF103
	.byte	0xa
	.2byte	0x20b
	.uleb128 0x2a
	.4byte	.LASF104
	.4byte	.LASF104
	.byte	0xa
	.2byte	0x20e
	.uleb128 0x2a
	.4byte	.LASF105
	.4byte	.LASF105
	.byte	0xa
	.2byte	0x206
	.uleb128 0x2a
	.4byte	.LASF106
	.4byte	.LASF106
	.byte	0xa
	.2byte	0x208
	.uleb128 0x2a
	.4byte	.LASF107
	.4byte	.LASF107
	.byte	0xa
	.2byte	0x202
	.uleb128 0x2a
	.4byte	.LASF108
	.4byte	.LASF108
	.byte	0xa
	.2byte	0x217
	.uleb128 0x2b
	.4byte	.LASF109
	.4byte	.LASF109
	.byte	0xc
	.byte	0x95
	.uleb128 0x2b
	.4byte	.LASF110
	.4byte	.LASF110
	.byte	0xe
	.byte	0xf
	.uleb128 0x2b
	.4byte	.LASF111
	.4byte	.LASF111
	.byte	0xc
	.byte	0xc5
	.uleb128 0x2a
	.4byte	.LASF112
	.4byte	.LASF112
	.byte	0xa
	.2byte	0x204
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
	.uleb128 0xe
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x13
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
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
	.uleb128 0x18
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
	.uleb128 0x18
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
	.uleb128 0x1a
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
	.uleb128 0x17
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL2
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL3
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL7
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL9
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL35
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
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL9
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL17
	.4byte	.LVL34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LFE29
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL9
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL18
	.4byte	.LVL34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LFE29
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL9
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL14
	.4byte	.LVL34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL36
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL11
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL16
	.4byte	.LVL19
	.2byte	0x3
	.byte	0x9
	.byte	0xae
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL23
	.4byte	.LVL25
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL28
	.2byte	0x3
	.byte	0x9
	.byte	0xbc
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL34
	.4byte	.LFE29
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL17
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL21
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x2
	.byte	0x72
	.sleb128 0
	.4byte	.LVL25
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL38
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL67
	.4byte	.LVL68
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL69
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL38
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL43
	.4byte	.LVL66
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL66
	.4byte	.LFE30
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL38
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL44
	.4byte	.LVL66
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL66
	.4byte	.LFE30
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL40
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL42
	.4byte	.LVL45
	.2byte	0x3
	.byte	0x9
	.byte	0xae
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL52
	.4byte	.LVL54
	.2byte	0x3
	.byte	0x9
	.byte	0xba
	.byte	0x9f
	.4byte	.LVL56
	.4byte	.LVL58
	.2byte	0x3
	.byte	0x9
	.byte	0xb8
	.byte	0x9f
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL61
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL63
	.4byte	.LFE30
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL43
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL47
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL54
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL58
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL49
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL70
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL86
	.4byte	.LVL88
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL88
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL89
	.4byte	.LFE32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL70
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL87
	.4byte	.LVL88
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL88
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL90
	.4byte	.LFE32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL73
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL75
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL78
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL85
	.4byte	.LVL88
	.2byte	0x4
	.byte	0x91
	.sleb128 -76
	.byte	0x9f
	.4byte	.LVL89
	.4byte	.LVL90
	.2byte	0x4
	.byte	0x91
	.sleb128 -76
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL91
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL92
	.4byte	.LFE33
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL95
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL96
	.4byte	.LFE34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL101
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL107
	.4byte	.LVL109
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL109
	.4byte	.LVL110
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL110
	.4byte	.LVL111
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL111
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL112
	.4byte	.LVL113
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL113
	.4byte	.LVL114
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL114
	.4byte	.LFE36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL101
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL108
	.4byte	.LVL109
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL109
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL115
	.4byte	.LFE36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL101
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL106
	.4byte	.LVL109
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL109
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL115
	.4byte	.LFE36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL103
	.4byte	.LVL104
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL111
	.4byte	.LVL113
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL102
	.4byte	.LVL103-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL109
	.4byte	.LVL111
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL116
	.4byte	.LVL126
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL126
	.4byte	.LVL127
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL127
	.4byte	.LVL130
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL130
	.4byte	.LVL131
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL131
	.4byte	.LVL132
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL132
	.4byte	.LVL133
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL133
	.4byte	.LVL134
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL134
	.4byte	.LFE37
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL124
	.4byte	.LVL125-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL127
	.4byte	.LVL128
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL133
	.4byte	.LVL135
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL117
	.4byte	.LVL123
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL123
	.4byte	.LVL124-1
	.2byte	0x3
	.byte	0x7a
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL131
	.4byte	.LVL133
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL118
	.4byte	.LVL122
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL118
	.4byte	.LVL120
	.2byte	0x3
	.byte	0x79
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL120
	.4byte	.LVL121
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL136
	.4byte	.LVL142
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL142
	.4byte	.LVL144
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL144
	.4byte	.LVL145
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL145
	.4byte	.LVL146
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL146
	.4byte	.LVL147
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL147
	.4byte	.LVL148
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL148
	.4byte	.LVL149
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL149
	.4byte	.LFE38
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL136
	.4byte	.LVL143
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL143
	.4byte	.LVL144
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL144
	.4byte	.LVL150
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL150
	.4byte	.LFE38
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL136
	.4byte	.LVL141
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL141
	.4byte	.LVL144
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL144
	.4byte	.LVL150
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL150
	.4byte	.LFE38
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL138
	.4byte	.LVL139
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL146
	.4byte	.LVL148
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL137
	.4byte	.LVL138-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL144
	.4byte	.LVL146
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x84
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB6
	.4byte	.LBE6
	.4byte	.LBB7
	.4byte	.LBE7
	.4byte	0
	.4byte	0
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	.LFB37
	.4byte	.LFE37
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF114:
	.string	"C:/esp/esp-idf/components/mbedtls/port/net_sockets.c"
.LASF56:
	.string	"sock_errno"
.LASF112:
	.string	"lwip_shutdown_r"
.LASF67:
	.string	"mbedtls_net_connect"
.LASF48:
	.string	"ai_flags"
.LASF85:
	.string	"mbedtls_net_usleep"
.LASF3:
	.string	"size_t"
.LASF106:
	.string	"lwip_setsockopt_r"
.LASF59:
	.string	"net_would_block"
.LASF90:
	.string	"read_fds"
.LASF4:
	.string	"__uint8_t"
.LASF77:
	.string	"type"
.LASF116:
	.string	"net_prepare"
.LASF10:
	.string	"long long unsigned int"
.LASF31:
	.string	"in_addr_t"
.LASF46:
	.string	"socklen_t"
.LASF71:
	.string	"mbedtls_net_accept"
.LASF23:
	.string	"mbedtls_net_context"
.LASF70:
	.string	"serv_addr"
.LASF9:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF66:
	.string	"addr_list"
.LASF110:
	.string	"__errno"
.LASF11:
	.string	"long int"
.LASF20:
	.string	"uint16_t"
.LASF73:
	.string	"client_ctx"
.LASF8:
	.string	"__uint32_t"
.LASF91:
	.string	"__tmp"
.LASF41:
	.string	"sin_zero"
.LASF108:
	.string	"lwip_select"
.LASF18:
	.string	"suseconds_t"
.LASF34:
	.string	"sa_family_t"
.LASF74:
	.string	"client_ip"
.LASF62:
	.string	"host"
.LASF0:
	.string	"unsigned int"
.LASF33:
	.string	"s_addr"
.LASF107:
	.string	"lwip_accept_r"
.LASF97:
	.string	"lwip_connect_r"
.LASF30:
	.string	"u32_t"
.LASF13:
	.string	"long unsigned int"
.LASF83:
	.string	"mbedtls_net_set_nonblock"
.LASF102:
	.string	"lwip_bind_r"
.LASF89:
	.string	"timeout"
.LASF17:
	.string	"_types_fd_set"
.LASF111:
	.string	"lwip_write_r"
.LASF1:
	.string	"short unsigned int"
.LASF40:
	.string	"sin_addr"
.LASF63:
	.string	"port"
.LASF115:
	.string	"C:\\\\esp\\\\ArkPOS2-esp\\\\build\\\\mbedtls"
.LASF81:
	.string	"addr4"
.LASF98:
	.string	"lwip_close_r"
.LASF101:
	.string	"lwip_htonl"
.LASF24:
	.string	"timeval"
.LASF22:
	.string	"fds_bits"
.LASF50:
	.string	"ai_socktype"
.LASF43:
	.string	"sa_len"
.LASF38:
	.string	"sin_family"
.LASF28:
	.string	"u8_t"
.LASF12:
	.string	"sizetype"
.LASF16:
	.string	"fd_mask"
.LASF75:
	.string	"buf_size"
.LASF25:
	.string	"tv_sec"
.LASF87:
	.string	"mbedtls_net_recv"
.LASF78:
	.string	"client_addr"
.LASF37:
	.string	"sin_len"
.LASF94:
	.string	"lwip_getsockopt_r"
.LASF15:
	.string	"time_t"
.LASF52:
	.string	"ai_addrlen"
.LASF86:
	.string	"usec"
.LASF39:
	.string	"sin_port"
.LASF61:
	.string	"error"
.LASF88:
	.string	"mbedtls_net_recv_timeout"
.LASF5:
	.string	"unsigned char"
.LASF113:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF53:
	.string	"ai_addr"
.LASF6:
	.string	"short int"
.LASF84:
	.string	"mbedtls_net_init"
.LASF44:
	.string	"sa_family"
.LASF51:
	.string	"ai_protocol"
.LASF55:
	.string	"ai_next"
.LASF72:
	.string	"bind_ctx"
.LASF64:
	.string	"proto"
.LASF93:
	.string	"mbedtls_net_free"
.LASF26:
	.string	"tv_usec"
.LASF47:
	.string	"addrinfo"
.LASF109:
	.string	"lwip_read_r"
.LASF60:
	.string	"errout"
.LASF27:
	.string	"_Bool"
.LASF96:
	.string	"lwip_socket"
.LASF14:
	.string	"char"
.LASF100:
	.string	"lwip_freeaddrinfo"
.LASF7:
	.string	"__uint16_t"
.LASF58:
	.string	"mbedtls_net_errno"
.LASF76:
	.string	"ip_len"
.LASF49:
	.string	"ai_family"
.LASF57:
	.string	"optlen"
.LASF92:
	.string	"mbedtls_net_send"
.LASF69:
	.string	"bind_ip"
.LASF79:
	.string	"type_len"
.LASF82:
	.string	"mbedtls_net_set_block"
.LASF29:
	.string	"u16_t"
.LASF65:
	.string	"hints"
.LASF95:
	.string	"lwip_fcntl_r"
.LASF42:
	.string	"sockaddr"
.LASF103:
	.string	"lwip_listen_r"
.LASF36:
	.string	"sockaddr_in"
.LASF19:
	.string	"uint8_t"
.LASF99:
	.string	"lwip_getaddrinfo"
.LASF104:
	.string	"lwip_recvfrom_r"
.LASF45:
	.string	"sa_data"
.LASF54:
	.string	"ai_canonname"
.LASF80:
	.string	"local_addr"
.LASF105:
	.string	"lwip_getsockname_r"
.LASF68:
	.string	"mbedtls_net_bind"
.LASF35:
	.string	"in_port_t"
.LASF21:
	.string	"uint32_t"
.LASF32:
	.string	"in_addr"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-61-gab8375a) 5.2.0"
