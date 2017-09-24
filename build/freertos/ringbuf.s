	.file	"ringbuf.c"
	.text
.Ltext0:
	.section	.text.ringbufferFreeMem,"ax",@progbits
	.align	4
	.type	ringbufferFreeMem, @function
ringbufferFreeMem:
.LFB9:
	.file 1 "C:/esp/esp-idf/components/freertos/ringbuf.c"
	.loc 1 77 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 78 0
	l32i.n	a8, a2, 20
	l32i.n	a9, a2, 12
	sub	a8, a8, a9
.LVL1:
	.loc 1 79 0
	bgei	a8, 1, .L2
	.loc 1 79 0 is_stmt 0 discriminator 1
	l32i.n	a2, a2, 8
.LVL2:
	add.n	a8, a8, a2
.LVL3:
.L2:
	.loc 1 83 0 is_stmt 1
	addi.n	a2, a8, -1
	retw.n
.LFE9:
	.size	ringbufferFreeMem, .-ringbufferFreeMem
	.section	.text.getItemFromRingbufByteBuf,"ax",@progbits
	.align	4
	.type	getItemFromRingbufByteBuf, @function
getItemFromRingbufByteBuf:
.LFB14:
	.loc 1 299 0
.LVL4:
	entry	sp, 32
.LCFI1:
	mov.n	a8, a2
	.loc 1 301 0
	l32i.n	a2, a2, 16
.LVL5:
	l32i.n	a9, a8, 20
	bne	a2, a9, .L8
	.loc 1 305 0
	l32i.n	a9, a8, 12
	beq	a2, a9, .L9
.LVL6:
	.loc 1 310 0
	bgeu	a9, a2, .L5
	.loc 1 312 0
	l32i.n	a10, a8, 8
	l32i.n	a9, a8, 24
	sub	a9, a9, a2
	add.n	a9, a9, a10
	s32i.n	a9, a3, 0
	.loc 1 313 0
	beqz.n	a4, .L6
	.loc 1 313 0 is_stmt 0 discriminator 1
	bgeu	a4, a9, .L6
	.loc 1 314 0 is_stmt 1
	s32i.n	a4, a3, 0
	.loc 1 315 0
	l32i.n	a3, a8, 16
.LVL7:
	add.n	a4, a3, a4
.LVL8:
	s32i.n	a4, a8, 16
.LVL9:
	retw.n
.LVL10:
.L6:
	.loc 1 317 0
	l32i.n	a3, a8, 24
.LVL11:
	s32i.n	a3, a8, 16
	retw.n
.LVL12:
.L5:
	.loc 1 321 0
	sub	a9, a9, a2
	s32i.n	a9, a3, 0
	.loc 1 322 0
	beqz.n	a4, .L7
	.loc 1 322 0 is_stmt 0 discriminator 1
	bgeu	a4, a9, .L7
	.loc 1 323 0 is_stmt 1
	s32i.n	a4, a3, 0
	.loc 1 324 0
	l32i.n	a3, a8, 16
.LVL13:
	add.n	a4, a3, a4
.LVL14:
	s32i.n	a4, a8, 16
.LVL15:
	retw.n
.LVL16:
.L7:
	.loc 1 326 0
	l32i.n	a3, a8, 12
.LVL17:
	s32i.n	a3, a8, 16
	retw.n
.LVL18:
.L8:
	.loc 1 303 0
	movi.n	a2, 0
	retw.n
.L9:
	.loc 1 307 0
	movi.n	a2, 0
	.loc 1 330 0
	retw.n
.LFE14:
	.size	getItemFromRingbufByteBuf, .-getItemFromRingbufByteBuf
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC1:
	.string	"C:/esp/esp-idf/components/freertos/ringbuf.c"
	.align	4
.LC3:
	.string	"%s:%d (%s)- assert failed!\n"
	.section	.text.returnItemToRingbufBytebuf,"ax",@progbits
	.literal_position
	.literal .LC0, __FUNCTION__$5197
	.literal .LC2, .LC1
	.literal .LC4, .LC3
	.align	4
	.type	returnItemToRingbufBytebuf, @function
returnItemToRingbufBytebuf:
.LFB16:
	.loc 1 378 0
.LVL19:
	entry	sp, 32
.LCFI2:
.LVL20:
	.loc 1 380 0
	l32i.n	a9, a2, 24
	bgeu	a3, a9, .L11
	.loc 1 380 0 is_stmt 0 discriminator 1
	l32r	a13, .LC0
	movi	a12, 0x17c
	l32r	a11, .LC2
	l32r	a10, .LC4
	call8	ets_printf
.LVL21:
	call8	abort
.LVL22:
.L11:
	.loc 1 381 0 is_stmt 1
	l32i.n	a8, a2, 8
	add.n	a8, a9, a8
	bltu	a3, a8, .L12
	.loc 1 381 0 is_stmt 0 discriminator 1
	l32r	a13, .LC0
	movi	a12, 0x17d
	l32r	a11, .LC2
	l32r	a10, .LC4
	call8	ets_printf
.LVL23:
	call8	abort
.LVL24:
.L12:
	.loc 1 383 0 is_stmt 1
	l32i.n	a3, a2, 16
.LVL25:
	s32i.n	a3, a2, 20
	retw.n
.LFE16:
	.size	returnItemToRingbufBytebuf, .-returnItemToRingbufBytebuf
	.section	.text.returnItemToRingbufDefault,"ax",@progbits
	.literal_position
	.literal .LC5, __FUNCTION__$5186
	.literal .LC6, .LC1
	.literal .LC7, .LC3
	.align	4
	.type	returnItemToRingbufDefault, @function
returnItemToRingbufDefault:
.LFB15:
	.loc 1 336 0
.LVL26:
	entry	sp, 32
.LCFI3:
.LVL27:
	.loc 1 338 0
	l32i.n	a8, a2, 20
	extui	a8, a8, 0, 2
	beqz.n	a8, .L14
	.loc 1 338 0 is_stmt 0 discriminator 1
	l32r	a13, .LC5
	movi	a12, 0x152
	l32r	a11, .LC6
	l32r	a10, .LC7
	call8	ets_printf
.LVL28:
	call8	abort
.LVL29:
.L14:
	.loc 1 339 0 is_stmt 1
	l32i.n	a8, a2, 24
	bgeu	a3, a8, .L15
	.loc 1 339 0 is_stmt 0 discriminator 1
	l32r	a13, .LC5
	movi	a12, 0x153
	l32r	a11, .LC6
	l32r	a10, .LC7
	call8	ets_printf
.LVL30:
	call8	abort
.LVL31:
.L15:
	.loc 1 340 0 is_stmt 1
	l32i.n	a9, a2, 8
	add.n	a8, a8, a9
	bgeu	a8, a3, .L16
	.loc 1 340 0 is_stmt 0 discriminator 1
	l32r	a13, .LC5
	movi	a12, 0x154
	l32r	a11, .LC6
	l32r	a10, .LC7
	call8	ets_printf
.LVL32:
	call8	abort
.LVL33:
.L16:
	.loc 1 343 0 is_stmt 1
	addi	a8, a3, -8
.LVL34:
	l32i.n	a8, a8, 0
.LVL35:
	bltu	a8, a9, .L17
	.loc 1 343 0 is_stmt 0 discriminator 1
	l32r	a13, .LC5
	movi	a12, 0x157
	l32r	a11, .LC6
	l32r	a10, .LC7
	call8	ets_printf
.LVL36:
	call8	abort
.LVL37:
.L17:
	.loc 1 344 0 is_stmt 1
	addi	a8, a3, -8
	l32i.n	a9, a8, 4
	bbci	a9, 1, .L18
	.loc 1 344 0 is_stmt 0 discriminator 1
	l32r	a13, .LC5
	movi	a12, 0x158
	l32r	a11, .LC6
	l32r	a10, .LC7
	call8	ets_printf
.LVL38:
	call8	abort
.LVL39:
.L18:
	.loc 1 345 0 is_stmt 1
	bbci	a9, 0, .L19
	.loc 1 345 0 is_stmt 0 discriminator 1
	l32r	a13, .LC5
	movi	a12, 0x159
	l32r	a11, .LC6
	l32r	a10, .LC7
	call8	ets_printf
.LVL40:
	call8	abort
.LVL41:
.L19:
	.loc 1 347 0 is_stmt 1
	addi	a3, a3, -8
.LVL42:
	movi.n	a8, 1
.LVL43:
	or	a8, a9, a8
	s32i.n	a8, a3, 4
	.loc 1 350 0
	l32i.n	a8, a2, 20
.LVL44:
	.loc 1 352 0
	j	.L20
.L25:
	.loc 1 353 0
	l32i.n	a9, a8, 4
	bbci	a9, 1, .L21
	.loc 1 355 0
	l32i.n	a8, a2, 24
.LVL45:
	s32i.n	a8, a2, 20
	j	.L22
.LVL46:
.L21:
.LBB2:
	.loc 1 358 0
	l32i.n	a8, a8, 0
.LVL47:
	addi.n	a8, a8, 3
	movi.n	a9, -4
	and	a8, a8, a9
.LVL48:
	.loc 1 359 0
	addi.n	a8, a8, 8
.LVL49:
	add.n	a8, a10, a8
.LVL50:
	s32i.n	a8, a2, 20
	.loc 1 360 0
	l32i.n	a10, a2, 24
	l32i.n	a9, a2, 8
	add.n	a9, a10, a9
	bgeu	a9, a8, .L22
	.loc 1 360 0 is_stmt 0 discriminator 1
	l32r	a13, .LC5
	movi	a12, 0x168
	l32r	a11, .LC6
	l32r	a10, .LC7
	call8	ets_printf
.LVL51:
	call8	abort
.LVL52:
.L22:
.LBE2:
	.loc 1 363 0 is_stmt 1
	l32i.n	a9, a2, 24
	l32i.n	a8, a2, 8
	add.n	a8, a9, a8
	l32i.n	a10, a2, 20
	sub	a8, a8, a10
	bgeui	a8, 8, .L23
	.loc 1 364 0
	s32i.n	a9, a2, 20
.L23:
	.loc 1 368 0
	l32i.n	a8, a2, 20
	l32i.n	a9, a2, 16
	beq	a8, a9, .L13
.L20:
.LVL53:
	.loc 1 352 0
	l32i.n	a9, a8, 4
	extui	a9, a9, 0, 2
	beqz.n	a9, .L13
	.loc 1 352 0 is_stmt 0 discriminator 1
	l32i.n	a10, a2, 20
	l32i.n	a9, a2, 12
	bne	a10, a9, .L25
.LVL54:
.L13:
	retw.n
.LFE15:
	.size	returnItemToRingbufDefault, .-returnItemToRingbufDefault
	.section	.text.getItemFromRingbufDefault,"ax",@progbits
	.literal_position
	.literal .LC8, __FUNCTION__$5173
	.literal .LC9, .LC1
	.literal .LC10, .LC3
	.align	4
	.type	getItemFromRingbufDefault, @function
getItemFromRingbufDefault:
.LFB13:
	.loc 1 262 0 is_stmt 1
.LVL55:
	entry	sp, 32
.LCFI4:
	.loc 1 264 0
	l32i.n	a8, a2, 16
	extui	a9, a8, 0, 2
	beqz.n	a9, .L27
	.loc 1 264 0 is_stmt 0 discriminator 1
	l32r	a13, .LC8
	movi	a12, 0x108
	l32r	a11, .LC9
	l32r	a10, .LC10
	call8	ets_printf
.LVL56:
	call8	abort
.LVL57:
.L27:
	.loc 1 265 0 is_stmt 1
	l32i.n	a9, a2, 12
	beq	a8, a9, .L31
.LVL58:
	.loc 1 272 0
	l32i.n	a10, a8, 0
	l32i.n	a9, a2, 8
	bltu	a10, a9, .L29
	.loc 1 272 0 is_stmt 0 discriminator 1
	l32i.n	a10, a8, 4
	bbsi	a10, 1, .L29
	.loc 1 272 0 discriminator 2
	l32r	a13, .LC8
	movi	a12, 0x110
	l32r	a11, .LC9
	l32r	a10, .LC10
	call8	ets_printf
.LVL59:
	call8	abort
.LVL60:
.L29:
	.loc 1 273 0 is_stmt 1
	l32i.n	a10, a8, 4
	bbci	a10, 1, .L30
	.loc 1 275 0
	l32i.n	a8, a2, 24
.LVL61:
	s32i.n	a8, a2, 16
.LVL62:
	.loc 1 278 0
	l32i.n	a10, a8, 0
	bltu	a10, a9, .L30
	.loc 1 278 0 is_stmt 0 discriminator 1
	l32r	a13, .LC8
	movi	a12, 0x116
	l32r	a11, .LC9
	l32r	a10, .LC10
	call8	ets_printf
.LVL63:
	call8	abort
.LVL64:
.L30:
	.loc 1 284 0 is_stmt 1
	l32i.n	a10, a2, 16
	addi.n	a10, a10, 8
.LVL65:
	.loc 1 285 0
	l32i.n	a9, a8, 0
	s32i.n	a9, a3, 0
	.loc 1 287 0
	l32i.n	a8, a8, 0
.LVL66:
	addi.n	a8, a8, 3
	movi.n	a9, -4
	and	a8, a8, a9
	addi.n	a8, a8, 8
	l32i.n	a3, a2, 16
.LVL67:
	add.n	a8, a3, a8
	s32i.n	a8, a2, 16
	.loc 1 289 0
	l32i.n	a11, a2, 24
	l32i.n	a9, a2, 8
	add.n	a9, a11, a9
	sub	a8, a9, a8
	bgeui	a8, 8, .L32
	.loc 1 290 0
	s32i.n	a11, a2, 16
	.loc 1 292 0
	mov.n	a2, a10
.LVL68:
	retw.n
.LVL69:
.L31:
	.loc 1 267 0
	movi.n	a2, 0
.LVL70:
	retw.n
.LVL71:
.L32:
	.loc 1 292 0
	mov.n	a2, a10
.LVL72:
	.loc 1 293 0
	retw.n
.LFE13:
	.size	getItemFromRingbufDefault, .-getItemFromRingbufDefault
	.section	.text.copyItemToRingbufNoSplit,"ax",@progbits
	.literal_position
	.literal .LC11, __FUNCTION__$5147
	.literal .LC12, .LC1
	.literal .LC13, .LC3
	.align	4
	.type	copyItemToRingbufNoSplit, @function
copyItemToRingbufNoSplit:
.LFB10:
	.loc 1 92 0
.LVL73:
	entry	sp, 32
.LCFI5:
	.loc 1 94 0
	addi.n	a6, a4, 3
	movi.n	a5, -4
	and	a5, a6, a5
.LVL74:
	.loc 1 95 0
	l32i.n	a9, a2, 12
	extui	a6, a9, 0, 2
	beqz.n	a6, .L34
	.loc 1 95 0 is_stmt 0 discriminator 1
	l32r	a13, .LC11
	movi.n	a12, 0x5f
	l32r	a11, .LC12
	l32r	a10, .LC13
	call8	ets_printf
.LVL75:
	call8	abort
.LVL76:
.L34:
	.loc 1 96 0 is_stmt 1
	l32i.n	a10, a2, 24
	l32i.n	a8, a2, 8
	add.n	a8, a10, a8
	sub	a7, a9, a8
	bgeui	a7, 8, .L35
	.loc 1 96 0 is_stmt 0 discriminator 1
	l32r	a13, .LC11
	movi	a12, 0x60
	l32r	a11, .LC12
	l32r	a10, .LC13
	call8	ets_printf
.LVL77:
	call8	abort
.LVL78:
.L35:
	.loc 1 98 0 is_stmt 1
	sub	a8, a8, a9
.LVL79:
	.loc 1 101 0
	addi.n	a7, a5, 8
	bgeu	a8, a7, .L36
.LBB3:
	.loc 1 108 0
	l32i.n	a7, a2, 20
	sub	a10, a7, a10
	addi.n	a8, a5, 12
.LVL80:
	bltu	a10, a8, .L37
	.loc 1 113 0
	bltu	a9, a7, .L37
.LVL81:
	.loc 1 120 0
	movi.n	a6, 2
	s32i.n	a6, a9, 4
.LVL82:
	.loc 1 123 0
	l32i.n	a6, a2, 24
	s32i.n	a6, a2, 12
.LBE3:
	j	.L38
.LVL83:
.L36:
	.loc 1 126 0
	mov.n	a10, a2
	call8	ringbufferFreeMem
.LVL84:
	bltu	a10, a7, .L37
.L38:
	.loc 1 133 0
	l32i.n	a6, a2, 12
.LVL85:
	.loc 1 134 0
	s32i.n	a4, a6, 0
	.loc 1 135 0
	movi.n	a7, 0
	s32i.n	a7, a6, 4
	.loc 1 136 0
	l32i.n	a10, a2, 12
	addi.n	a10, a10, 8
	s32i.n	a10, a2, 12
	.loc 1 137 0
	mov.n	a12, a4
	mov.n	a11, a3
	call8	memcpy
.LVL86:
	.loc 1 138 0
	l32i.n	a3, a2, 12
.LVL87:
	add.n	a5, a3, a5
.LVL88:
	s32i.n	a5, a2, 12
	.loc 1 141 0
	l32i.n	a4, a2, 24
.LVL89:
	l32i.n	a3, a2, 8
	add.n	a3, a4, a3
	sub	a5, a3, a5
	bgeui	a5, 8, .L39
	.loc 1 146 0
	s32i.n	a4, a2, 12
	.loc 1 148 0
	movi.n	a6, 1
.LVL90:
	j	.L37
.LVL91:
.L39:
	movi.n	a6, 1
.LVL92:
.L37:
	.loc 1 149 0
	mov.n	a2, a6
.LVL93:
	retw.n
.LFE10:
	.size	copyItemToRingbufNoSplit, .-copyItemToRingbufNoSplit
	.section	.text.copyItemToRingbufByteBuf,"ax",@progbits
	.align	4
	.type	copyItemToRingbufByteBuf, @function
copyItemToRingbufByteBuf:
.LFB12:
	.loc 1 235 0
.LVL94:
	entry	sp, 32
.LCFI6:
	.loc 1 236 0
	l32i.n	a8, a2, 24
	l32i.n	a5, a2, 8
	add.n	a5, a8, a5
	l32i.n	a10, a2, 12
	sub	a5, a5, a10
.LVL95:
	.loc 1 239 0
	bgeu	a5, a4, .L41
	.loc 1 241 0
	mov.n	a12, a5
	mov.n	a11, a3
	call8	memcpy
.LVL96:
	.loc 1 243 0
	add.n	a3, a3, a5
.LVL97:
	.loc 1 244 0
	sub	a4, a4, a5
.LVL98:
	.loc 1 245 0
	l32i.n	a5, a2, 24
.LVL99:
	s32i.n	a5, a2, 12
.L41:
	.loc 1 249 0
	mov.n	a12, a4
	mov.n	a11, a3
	l32i.n	a10, a2, 12
	call8	memcpy
.LVL100:
	.loc 1 250 0
	l32i.n	a3, a2, 12
.LVL101:
	add.n	a4, a3, a4
.LVL102:
	s32i.n	a4, a2, 12
	.loc 1 252 0
	l32i.n	a5, a2, 24
	l32i.n	a3, a2, 8
	add.n	a3, a5, a3
	bne	a4, a3, .L42
	.loc 1 253 0
	s32i.n	a5, a2, 12
.L42:
	.loc 1 256 0
	movi.n	a2, 1
.LVL103:
	retw.n
.LFE12:
	.size	copyItemToRingbufByteBuf, .-copyItemToRingbufByteBuf
	.section	.text.copyItemToRingbufAllowSplit,"ax",@progbits
	.literal_position
	.literal .LC14, __FUNCTION__$5157
	.literal .LC15, .LC1
	.literal .LC16, .LC3
	.align	4
	.type	copyItemToRingbufAllowSplit, @function
copyItemToRingbufAllowSplit:
.LFB11:
	.loc 1 157 0
.LVL104:
	entry	sp, 48
.LCFI7:
	s32i.n	a3, sp, 4
	.loc 1 159 0
	addi.n	a5, a4, 3
	movi.n	a3, -4
.LVL105:
	and	a3, a5, a3
.LVL106:
	.loc 1 160 0
	l32i.n	a5, a2, 12
	extui	a6, a5, 0, 2
	beqz.n	a6, .L44
	.loc 1 160 0 is_stmt 0 discriminator 1
	l32r	a13, .LC14
	movi	a12, 0xa0
	l32r	a11, .LC15
	l32r	a10, .LC16
	call8	ets_printf
.LVL107:
	call8	abort
.LVL108:
.L44:
	.loc 1 161 0 is_stmt 1
	l32i.n	a8, a2, 24
	l32i.n	a7, a2, 8
	add.n	a7, a8, a7
	sub	a8, a5, a7
	bgeui	a8, 8, .L45
	.loc 1 161 0 is_stmt 0 discriminator 1
	l32r	a13, .LC14
	movi	a12, 0xa1
	l32r	a11, .LC15
	l32r	a10, .LC16
	call8	ets_printf
.LVL109:
	call8	abort
.LVL110:
.L45:
	.loc 1 163 0 is_stmt 1
	sub	a8, a7, a5
	s32i.n	a8, sp, 0
.LVL111:
	.loc 1 166 0
	addi.n	a7, a3, 8
	bgeu	a8, a7, .L46
.LBB4:
	.loc 1 174 0
	mov.n	a10, a2
	call8	ringbufferFreeMem
.LVL112:
	addi	a7, a3, 16
	bltu	a10, a7, .L47
	.loc 1 180 0
	l32i.n	a6, sp, 0
	bgeui	a6, 8, .L48
	.loc 1 180 0 is_stmt 0 discriminator 1
	l32r	a13, .LC14
	movi	a12, 0xb4
	l32r	a11, .LC15
	l32r	a10, .LC16
	call8	ets_printf
.LVL113:
	call8	abort
.LVL114:
.L48:
	.loc 1 184 0 is_stmt 1
	movi.n	a6, 0
	s32i.n	a6, a5, 4
	.loc 1 185 0
	l32i.n	a8, sp, 0
	addi	a6, a8, -8
	s32i.n	a6, a5, 0
	.loc 1 186 0
	l32i.n	a10, a2, 12
	addi.n	a10, a10, 8
	s32i.n	a10, a2, 12
.LVL115:
	.loc 1 188 0
	beqz.n	a6, .L49
	.loc 1 190 0
	mov.n	a12, a6
	l32i.n	a11, sp, 4
	call8	memcpy
.LVL116:
	.loc 1 192 0
	l32i.n	a5, sp, 4
.LVL117:
	add.n	a5, a5, a6
	s32i.n	a5, sp, 4
.LVL118:
	.loc 1 193 0
	sub	a3, a3, a6
.LVL119:
	.loc 1 194 0
	sub	a4, a4, a6
.LVL120:
	j	.L50
.LVL121:
.L49:
	.loc 1 198 0
	l32i.n	a7, a5, 4
	movi.n	a6, 2
.LVL122:
	or	a6, a7, a6
	s32i.n	a6, a5, 4
.LVL123:
.L50:
	.loc 1 200 0
	l32i.n	a5, a2, 24
	s32i.n	a5, a2, 12
.LBE4:
	j	.L51
.LVL124:
.L46:
	.loc 1 203 0
	mov.n	a10, a2
	call8	ringbufferFreeMem
.LVL125:
	bltu	a10, a7, .L47
.LVL126:
.L51:
	.loc 1 210 0
	l32i.n	a5, a2, 12
.LVL127:
	.loc 1 211 0
	s32i.n	a4, a5, 0
	.loc 1 212 0
	movi.n	a6, 0
	s32i.n	a6, a5, 4
	.loc 1 213 0
	l32i.n	a10, a2, 12
	addi.n	a10, a10, 8
	s32i.n	a10, a2, 12
	.loc 1 214 0
	mov.n	a12, a4
	l32i.n	a11, sp, 4
	call8	memcpy
.LVL128:
	.loc 1 215 0
	l32i.n	a4, a2, 12
.LVL129:
	add.n	a3, a4, a3
.LVL130:
	s32i.n	a3, a2, 12
	.loc 1 218 0
	l32i.n	a5, a2, 24
.LVL131:
	l32i.n	a4, a2, 8
	add.n	a4, a5, a4
	sub	a3, a4, a3
	bgeui	a3, 8, .L52
	.loc 1 223 0
	s32i.n	a5, a2, 12
	.loc 1 225 0
	movi.n	a6, 1
	j	.L47
.L52:
	movi.n	a6, 1
.L47:
	.loc 1 226 0
	mov.n	a2, a6
.LVL132:
	retw.n
.LFE11:
	.size	copyItemToRingbufAllowSplit, .-copyItemToRingbufAllowSplit
	.section	.text.xRingbufferReceiveGeneric,"ax",@progbits
	.literal_position
	.literal .LC17, __FUNCTION__$5256
	.literal .LC18, .LC1
	.literal .LC19, .LC3
	.align	4
	.type	xRingbufferReceiveGeneric, @function
xRingbufferReceiveGeneric:
.LFB23:
	.loc 1 544 0
.LVL133:
	entry	sp, 48
.LCFI8:
.LVL134:
	.loc 1 548 0
	bnez.n	a2, .L59
	.loc 1 548 0 is_stmt 0 discriminator 1
	l32r	a13, .LC17
	movi	a12, 0x224
	l32r	a11, .LC18
	l32r	a10, .LC19
	call8	ets_printf
.LVL135:
	call8	abort
.LVL136:
.L56:
.LBB5:
	.loc 1 552 0 is_stmt 1
	movi.n	a13, 0
	mov.n	a12, a4
	mov.n	a11, a13
	l32i.n	a10, a2, 4
	call8	xQueueGenericReceive
.LVL137:
	.loc 1 553 0
	beqz.n	a10, .L60
.LVL138:
.L58:
.LBE5:
	.loc 1 551 0
	l32i.n	a8, a2, 16
	l32i.n	a7, a2, 12
	beq	a8, a7, .L56
	.loc 1 559 0
	addi	a7, a2, 28
	mov.n	a10, a7
	call8	vTaskEnterCritical
.LVL139:
	.loc 1 560 0
	l32i.n	a8, a2, 48
	mov.n	a12, a5
	mov.n	a11, a3
	mov.n	a10, a2
	callx8	a8
.LVL140:
	s32i.n	a10, sp, 0
.LVL141:
	.loc 1 561 0
	mov.n	a10, a7
.LVL142:
	call8	vTaskExitCritical
.LVL143:
	.loc 1 562 0
	l32i.n	a8, sp, 0
	beqz.n	a8, .L54
	.loc 1 564 0
	movi.n	a6, 1
.LVL144:
	j	.L54
.LVL145:
.L59:
	movi.n	a6, 0
.LVL146:
.L54:
	.loc 1 549 0
	beqz.n	a6, .L58
	.loc 1 567 0
	l32i.n	a2, sp, 0
.LVL147:
	retw.n
.LVL148:
.L60:
.LBB6:
	.loc 1 555 0
	movi.n	a2, 0
.LVL149:
.LBE6:
	.loc 1 568 0
	retw.n
.LFE23:
	.size	xRingbufferReceiveGeneric, .-xRingbufferReceiveGeneric
	.section	.rodata.str1.4
	.align	4
.LC23:
	.string	"Rb size %d free %d rptr %d freeptr %d wptr %d\n"
	.section	.text.xRingbufferPrintInfo,"ax",@progbits
	.literal_position
	.literal .LC20, __FUNCTION__$5202
	.literal .LC21, .LC1
	.literal .LC22, .LC3
	.literal .LC24, .LC23
	.align	4
	.global	xRingbufferPrintInfo
	.type	xRingbufferPrintInfo, @function
xRingbufferPrintInfo:
.LFB17:
	.loc 1 387 0
.LVL150:
	entry	sp, 32
.LCFI9:
.LVL151:
	.loc 1 389 0
	bnez.n	a2, .L63
	.loc 1 389 0 is_stmt 0 discriminator 1
	l32r	a13, .LC20
	movi	a12, 0x185
	l32r	a11, .LC21
	l32r	a10, .LC22
	call8	ets_printf
.LVL152:
	call8	abort
.LVL153:
.L63:
	.loc 1 390 0 is_stmt 1
	mov.n	a10, a2
	call8	ringbufferFreeMem
.LVL154:
	.loc 1 391 0
	l32i.n	a13, a2, 16
	l32i.n	a8, a2, 24
	l32i.n	a14, a2, 20
	l32i.n	a15, a2, 12
	.loc 1 390 0
	sub	a15, a15, a8
	sub	a14, a14, a8
	sub	a13, a13, a8
	mov.n	a12, a10
	l32i.n	a11, a2, 8
	l32r	a10, .LC24
	call8	ets_printf
.LVL155:
	retw.n
.LFE17:
	.size	xRingbufferPrintInfo, .-xRingbufferPrintInfo
	.section	.text.xRingbufferCreate,"ax",@progbits
	.literal_position
	.literal .LC25, copyItemToRingbufAllowSplit
	.literal .LC26, getItemFromRingbufDefault
	.literal .LC27, returnItemToRingbufDefault
	.literal .LC28, copyItemToRingbufByteBuf
	.literal .LC29, getItemFromRingbufByteBuf
	.literal .LC30, returnItemToRingbufBytebuf
	.literal .LC31, copyItemToRingbufNoSplit
	.literal .LC32, __FUNCTION__$5209
	.literal .LC33, .LC1
	.literal .LC34, .LC3
	.align	4
	.global	xRingbufferCreate
	.type	xRingbufferCreate, @function
xRingbufferCreate:
.LFB18:
	.loc 1 397 0
.LVL156:
	entry	sp, 32
.LCFI10:
	.loc 1 398 0
	movi.n	a10, 0x38
	call8	malloc
.LVL157:
	mov.n	a4, a10
.LVL158:
	.loc 1 399 0
	beqz.n	a10, .L65
	.loc 1 400 0
	movi.n	a12, 0x38
	movi.n	a11, 0
	call8	memset
.LVL159:
	.loc 1 401 0
	mov.n	a10, a2
	call8	malloc
.LVL160:
	s32i.n	a10, a4, 24
	.loc 1 402 0
	beqz.n	a10, .L65
	.loc 1 403 0
	s32i.n	a2, a4, 8
	.loc 1 404 0
	s32i.n	a10, a4, 20
	.loc 1 405 0
	s32i.n	a10, a4, 16
	.loc 1 406 0
	s32i.n	a10, a4, 12
	.loc 1 407 0
	movi.n	a12, 3
	movi.n	a11, 0
	movi.n	a10, 1
	call8	xQueueGenericCreate
.LVL161:
	s32i.n	a10, a4, 0
	.loc 1 408 0
	movi.n	a12, 3
	movi.n	a11, 0
	movi.n	a10, 1
	call8	xQueueGenericCreate
.LVL162:
	s32i.n	a10, a4, 4
	.loc 1 409 0
	movi.n	a2, 0
.LVL163:
	s32i.n	a2, a4, 36
	.loc 1 410 0
	bnei	a3, 1, .L66
	.loc 1 411 0
	movi.n	a2, 1
	s32i.n	a2, a4, 36
	.loc 1 412 0
	l32r	a2, .LC25
	s32i.n	a2, a4, 44
	.loc 1 413 0
	l32r	a2, .LC26
	s32i.n	a2, a4, 48
	.loc 1 414 0
	l32r	a2, .LC27
	s32i.n	a2, a4, 52
	.loc 1 416 0
	l32i.n	a2, a4, 8
	addi	a2, a2, -20
	s32i.n	a2, a4, 40
	j	.L67
.L66:
	.loc 1 417 0
	bnei	a3, 2, .L68
	.loc 1 418 0
	movi.n	a2, 2
	s32i.n	a2, a4, 36
	.loc 1 419 0
	l32r	a2, .LC28
	s32i.n	a2, a4, 44
	.loc 1 420 0
	l32r	a2, .LC29
	s32i.n	a2, a4, 48
	.loc 1 421 0
	l32r	a2, .LC30
	s32i.n	a2, a4, 52
	.loc 1 423 0
	l32i.n	a2, a4, 8
	addi.n	a2, a2, -1
	s32i.n	a2, a4, 40
	j	.L67
.L68:
	.loc 1 424 0
	bnez.n	a3, .L69
	.loc 1 425 0
	l32r	a2, .LC31
	s32i.n	a2, a4, 44
	.loc 1 426 0
	l32r	a2, .LC26
	s32i.n	a2, a4, 48
	.loc 1 427 0
	l32r	a2, .LC27
	s32i.n	a2, a4, 52
	.loc 1 432 0
	l32i.n	a2, a4, 8
	srli	a2, a2, 1
	addi	a2, a2, -12
	s32i.n	a2, a4, 40
	j	.L67
.L69:
	.loc 1 434 0 discriminator 1
	l32r	a13, .LC32
	movi	a12, 0x1b2
	l32r	a11, .LC33
	l32r	a10, .LC34
	call8	ets_printf
.LVL164:
	call8	abort
.LVL165:
.L67:
	.loc 1 436 0
	l32i.n	a2, a4, 0
	beqz.n	a2, .L65
	.loc 1 436 0 discriminator 1
	l32i.n	a2, a4, 4
	beqz.n	a2, .L65
	.loc 1 437 0
	addi	a10, a4, 28
	call8	vPortCPUInitializeMutex
.LVL166:
	.loc 1 439 0
	mov.n	a2, a4
	retw.n
.L65:
	.loc 1 443 0
	beqz.n	a4, .L71
	.loc 1 444 0
	l32i.n	a10, a4, 24
	call8	free
.LVL167:
	.loc 1 445 0
	l32i.n	a10, a4, 0
	beqz.n	a10, .L72
	.loc 1 445 0 is_stmt 0 discriminator 1
	call8	vQueueDelete
.LVL168:
.L72:
	.loc 1 446 0 is_stmt 1
	l32i.n	a10, a4, 4
	beqz.n	a10, .L71
	.loc 1 446 0 is_stmt 0 discriminator 1
	call8	vQueueDelete
.LVL169:
.L71:
	.loc 1 448 0 is_stmt 1
	mov.n	a10, a4
	call8	free
.LVL170:
	.loc 1 449 0
	movi.n	a2, 0
	.loc 1 450 0
	retw.n
.LFE18:
	.size	xRingbufferCreate, .-xRingbufferCreate
	.section	.text.vRingbufferDelete,"ax",@progbits
	.align	4
	.global	vRingbufferDelete
	.type	vRingbufferDelete, @function
vRingbufferDelete:
.LFB19:
	.loc 1 452 0
.LVL171:
	entry	sp, 32
.LCFI11:
.LVL172:
	.loc 1 454 0
	beqz.n	a2, .L74
	.loc 1 455 0
	l32i.n	a10, a2, 24
	call8	free
.LVL173:
	.loc 1 456 0
	l32i.n	a10, a2, 0
	beqz.n	a10, .L75
	.loc 1 456 0 is_stmt 0 discriminator 1
	call8	vQueueDelete
.LVL174:
.L75:
	.loc 1 457 0 is_stmt 1
	l32i.n	a10, a2, 4
	beqz.n	a10, .L74
	.loc 1 457 0 is_stmt 0 discriminator 1
	call8	vQueueDelete
.LVL175:
.L74:
	.loc 1 459 0 is_stmt 1
	mov.n	a10, a2
	call8	free
.LVL176:
	retw.n
.LFE19:
	.size	vRingbufferDelete, .-vRingbufferDelete
	.section	.text.xRingbufferGetMaxItemSize,"ax",@progbits
	.literal_position
	.literal .LC35, __FUNCTION__$5218
	.literal .LC36, .LC1
	.literal .LC37, .LC3
	.align	4
	.global	xRingbufferGetMaxItemSize
	.type	xRingbufferGetMaxItemSize, @function
xRingbufferGetMaxItemSize:
.LFB20:
	.loc 1 463 0
.LVL177:
	entry	sp, 32
.LCFI12:
.LVL178:
	.loc 1 465 0
	bnez.n	a2, .L77
	.loc 1 465 0 is_stmt 0 discriminator 1
	l32r	a13, .LC35
	movi	a12, 0x1d1
	l32r	a11, .LC36
	l32r	a10, .LC37
	call8	ets_printf
.LVL179:
	call8	abort
.LVL180:
.L77:
	.loc 1 467 0 is_stmt 1
	l32i.n	a2, a2, 40
.LVL181:
	retw.n
.LFE20:
	.size	xRingbufferGetMaxItemSize, .-xRingbufferGetMaxItemSize
	.section	.text.xRingbufferSend,"ax",@progbits
	.literal_position
	.literal .LC38, __FUNCTION__$5230
	.literal .LC39, .LC1
	.literal .LC40, .LC3
	.align	4
	.global	xRingbufferSend
	.type	xRingbufferSend, @function
xRingbufferSend:
.LFB21:
	.loc 1 470 0
.LVL182:
	entry	sp, 48
.LCFI13:
	s32i.n	a3, sp, 8
	s32i.n	a4, sp, 4
.LVL183:
	.loc 1 472 0
	addi.n	a4, a4, 8
.LVL184:
	.loc 1 474 0
	call8	xTaskGetTickCount
.LVL185:
	add.n	a10, a10, a5
	s32i.n	a10, sp, 0
.LVL186:
	.loc 1 477 0
	bnez.n	a2, .L79
	.loc 1 477 0 is_stmt 0 discriminator 1
	l32r	a13, .LC38
	movi	a12, 0x1dd
	l32r	a11, .LC39
	l32r	a10, .LC40
.LVL187:
	call8	ets_printf
.LVL188:
	call8	abort
.LVL189:
.L79:
	.loc 1 479 0 is_stmt 1
	mov.n	a10, a2
.LVL190:
	call8	xRingbufferGetMaxItemSize
.LVL191:
	l32i.n	a3, sp, 4
.LVL192:
	bltu	a10, a3, .L87
	mov.n	a3, a5
	movi.n	a7, 0
	j	.L81
.LVL193:
.L85:
	.loc 1 487 0
	mov.n	a10, a2
	call8	ringbufferFreeMem
.LVL194:
	bgeu	a10, a4, .L82
.LBB7:
	.loc 1 490 0
	movi.n	a13, 0
	mov.n	a12, a3
	mov.n	a11, a13
	l32i.n	a10, a2, 0
	call8	xQueueGenericReceive
.LVL195:
	.loc 1 491 0
	beqz.n	a10, .L88
	.loc 1 497 0
	beqi	a5, -1, .L82
	.loc 1 498 0
	call8	xTaskGetTickCount
.LVL196:
	l32i.n	a6, sp, 0
	sub	a3, a6, a10
.LVL197:
.L82:
.LBE7:
	.loc 1 508 0
	mov.n	a10, a2
	call8	ringbufferFreeMem
.LVL198:
	bgeu	a10, a4, .L83
	.loc 1 508 0 is_stmt 0 discriminator 1
	movi.n	a6, 1
	movi.n	a7, 0
	movnez	a7, a6, a3
	extui	a7, a7, 0, 8
	bgeu	a5, a3, .L84
	movi.n	a6, 0
.L84:
	extui	a6, a6, 0, 8
	beqz.n	a7, .L83
	bnez.n	a6, .L85
.L83:
	.loc 1 511 0 is_stmt 1
	addi	a6, a2, 28
	mov.n	a10, a6
	call8	vTaskEnterCritical
.LVL199:
	.loc 1 514 0
	l32i.n	a7, a2, 44
	l32i.n	a12, sp, 4
	l32i.n	a11, sp, 8
	mov.n	a10, a2
	callx8	a7
.LVL200:
	mov.n	a7, a10
.LVL201:
	.loc 1 515 0
	mov.n	a10, a6
	call8	vTaskExitCritical
.LVL202:
.L81:
	.loc 1 484 0
	beqz.n	a7, .L85
	.loc 1 517 0
	movi.n	a13, 0
	mov.n	a12, a13
	mov.n	a11, a13
	l32i.n	a10, a2, 4
	call8	xQueueGenericSend
.LVL203:
	.loc 1 518 0
	movi.n	a2, 1
.LVL204:
	retw.n
.LVL205:
.L87:
	.loc 1 481 0
	movi.n	a2, 0
.LVL206:
	retw.n
.LVL207:
.L88:
.LBB8:
	.loc 1 493 0
	movi.n	a2, 0
.LVL208:
.LBE8:
	.loc 1 519 0
	retw.n
.LFE21:
	.size	xRingbufferSend, .-xRingbufferSend
	.section	.text.xRingbufferSendFromISR,"ax",@progbits
	.literal_position
	.literal .LC41, __FUNCTION__$5245
	.literal .LC42, .LC1
	.literal .LC43, .LC3
	.align	4
	.global	xRingbufferSendFromISR
	.type	xRingbufferSendFromISR, @function
xRingbufferSendFromISR:
.LFB22:
	.loc 1 523 0
.LVL209:
	entry	sp, 32
.LCFI14:
.LVL210:
	.loc 1 526 0
	bnez.n	a2, .L90
	.loc 1 526 0 is_stmt 0 discriminator 1
	l32r	a13, .LC41
	movi	a12, 0x20e
	l32r	a11, .LC42
	l32r	a10, .LC43
	call8	ets_printf
.LVL211:
	call8	abort
.LVL212:
.L90:
	.loc 1 527 0 is_stmt 1
	addi.n	a6, a4, 8
	.loc 1 528 0
	addi	a7, a2, 28
	mov.n	a10, a7
	call8	vTaskEnterCritical
.LVL213:
	.loc 1 529 0
	mov.n	a10, a2
	call8	ringbufferFreeMem
.LVL214:
	bltu	a10, a6, .L93
	.loc 1 533 0
	l32i.n	a6, a2, 44
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	callx8	a6
.LVL215:
	mov.n	a3, a10
.LVL216:
	j	.L91
.LVL217:
.L93:
	.loc 1 531 0
	movi.n	a3, 0
.LVL218:
.L91:
	.loc 1 535 0
	mov.n	a10, a7
	call8	vTaskExitCritical
.LVL219:
	.loc 1 536 0
	beqz.n	a3, .L92
	.loc 1 537 0
	mov.n	a11, a5
	l32i.n	a10, a2, 4
	call8	xQueueGiveFromISR
.LVL220:
.L92:
	.loc 1 540 0
	mov.n	a2, a3
.LVL221:
	retw.n
.LFE22:
	.size	xRingbufferSendFromISR, .-xRingbufferSendFromISR
	.section	.text.xRingbufferReceive,"ax",@progbits
	.align	4
	.global	xRingbufferReceive
	.type	xRingbufferReceive, @function
xRingbufferReceive:
.LFB24:
	.loc 1 571 0
.LVL222:
	entry	sp, 32
.LCFI15:
	.loc 1 572 0
	movi.n	a13, 0
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	xRingbufferReceiveGeneric
.LVL223:
	.loc 1 573 0
	mov.n	a2, a10
.LVL224:
	retw.n
.LFE24:
	.size	xRingbufferReceive, .-xRingbufferReceive
	.section	.text.xRingbufferReceiveFromISR,"ax",@progbits
	.literal_position
	.literal .LC44, __FUNCTION__$5275
	.literal .LC45, .LC1
	.literal .LC46, .LC3
	.align	4
	.global	xRingbufferReceiveFromISR
	.type	xRingbufferReceiveFromISR, @function
xRingbufferReceiveFromISR:
.LFB25:
	.loc 1 577 0
.LVL225:
	entry	sp, 32
.LCFI16:
.LVL226:
	.loc 1 580 0
	bnez.n	a2, .L96
	.loc 1 580 0 is_stmt 0 discriminator 1
	l32r	a13, .LC44
	movi	a12, 0x244
	l32r	a11, .LC45
	l32r	a10, .LC46
	call8	ets_printf
.LVL227:
	call8	abort
.LVL228:
.L96:
	.loc 1 581 0 is_stmt 1
	addi	a4, a2, 28
	mov.n	a10, a4
	call8	vTaskEnterCritical
.LVL229:
	.loc 1 582 0
	l32i.n	a8, a2, 48
	movi.n	a12, 0
	mov.n	a11, a3
	mov.n	a10, a2
	callx8	a8
.LVL230:
	mov.n	a2, a10
.LVL231:
	.loc 1 583 0
	mov.n	a10, a4
	call8	vTaskExitCritical
.LVL232:
	.loc 1 585 0
	retw.n
.LFE25:
	.size	xRingbufferReceiveFromISR, .-xRingbufferReceiveFromISR
	.section	.text.xRingbufferReceiveUpTo,"ax",@progbits
	.literal_position
	.literal .LC47, __FUNCTION__$5283
	.literal .LC48, .LC1
	.literal .LC49, .LC3
	.align	4
	.global	xRingbufferReceiveUpTo
	.type	xRingbufferReceiveUpTo, @function
xRingbufferReceiveUpTo:
.LFB26:
	.loc 1 587 0
.LVL233:
	entry	sp, 32
.LCFI17:
.LVL234:
	.loc 1 589 0
	beqz.n	a5, .L101
	.loc 1 590 0
	bnez.n	a2, .L99
	.loc 1 590 0 is_stmt 0 discriminator 1
	l32r	a13, .LC47
	movi	a12, 0x24e
	l32r	a11, .LC48
	l32r	a10, .LC49
	call8	ets_printf
.LVL235:
	call8	abort
.LVL236:
.L99:
	.loc 1 591 0 is_stmt 1
	l32i.n	a8, a2, 36
	bbsi	a8, 1, .L100
	.loc 1 591 0 is_stmt 0 discriminator 1
	l32r	a13, .LC47
	movi	a12, 0x24f
	l32r	a11, .LC48
	l32r	a10, .LC49
	call8	ets_printf
.LVL237:
	call8	abort
.LVL238:
.L100:
	.loc 1 592 0 is_stmt 1
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	xRingbufferReceiveGeneric
.LVL239:
	mov.n	a2, a10
.LVL240:
	retw.n
.LVL241:
.L101:
	.loc 1 589 0
	movi.n	a2, 0
.LVL242:
	.loc 1 593 0
	retw.n
.LFE26:
	.size	xRingbufferReceiveUpTo, .-xRingbufferReceiveUpTo
	.section	.text.xRingbufferReceiveUpToFromISR,"ax",@progbits
	.literal_position
	.literal .LC50, __FUNCTION__$5291
	.literal .LC51, .LC1
	.literal .LC52, .LC3
	.align	4
	.global	xRingbufferReceiveUpToFromISR
	.type	xRingbufferReceiveUpToFromISR, @function
xRingbufferReceiveUpToFromISR:
.LFB27:
	.loc 1 596 0
.LVL243:
	entry	sp, 32
.LCFI18:
.LVL244:
	.loc 1 599 0
	beqz.n	a4, .L106
	.loc 1 600 0
	bnez.n	a2, .L104
	.loc 1 600 0 is_stmt 0 discriminator 1
	l32r	a13, .LC50
	movi	a12, 0x258
	l32r	a11, .LC51
	l32r	a10, .LC52
	call8	ets_printf
.LVL245:
	call8	abort
.LVL246:
.L104:
	.loc 1 601 0 is_stmt 1
	l32i.n	a5, a2, 36
	bbsi	a5, 1, .L105
	.loc 1 601 0 is_stmt 0 discriminator 1
	l32r	a13, .LC50
	movi	a12, 0x259
	l32r	a11, .LC51
	l32r	a10, .LC52
	call8	ets_printf
.LVL247:
	call8	abort
.LVL248:
.L105:
	.loc 1 602 0 is_stmt 1
	addi	a5, a2, 28
	mov.n	a10, a5
	call8	vTaskEnterCritical
.LVL249:
	.loc 1 603 0
	l32i.n	a8, a2, 48
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	callx8	a8
.LVL250:
	mov.n	a2, a10
.LVL251:
	.loc 1 604 0
	mov.n	a10, a5
	call8	vTaskExitCritical
.LVL252:
	.loc 1 605 0
	retw.n
.LVL253:
.L106:
	.loc 1 599 0
	movi.n	a2, 0
.LVL254:
	.loc 1 606 0
	retw.n
.LFE27:
	.size	xRingbufferReceiveUpToFromISR, .-xRingbufferReceiveUpToFromISR
	.section	.text.vRingbufferReturnItem,"ax",@progbits
	.align	4
	.global	vRingbufferReturnItem
	.type	vRingbufferReturnItem, @function
vRingbufferReturnItem:
.LFB28:
	.loc 1 610 0
.LVL255:
	entry	sp, 32
.LCFI19:
.LVL256:
	.loc 1 612 0
	addi	a4, a2, 28
	mov.n	a10, a4
	call8	vTaskEnterCritical
.LVL257:
	.loc 1 613 0
	l32i.n	a8, a2, 52
	mov.n	a11, a3
	mov.n	a10, a2
	callx8	a8
.LVL258:
	.loc 1 614 0
	mov.n	a10, a4
	call8	vTaskExitCritical
.LVL259:
	.loc 1 615 0
	movi.n	a13, 0
	mov.n	a12, a13
	mov.n	a11, a13
	l32i.n	a10, a2, 0
	call8	xQueueGenericSend
.LVL260:
	retw.n
.LFE28:
	.size	vRingbufferReturnItem, .-vRingbufferReturnItem
	.section	.text.vRingbufferReturnItemFromISR,"ax",@progbits
	.align	4
	.global	vRingbufferReturnItemFromISR
	.type	vRingbufferReturnItemFromISR, @function
vRingbufferReturnItemFromISR:
.LFB29:
	.loc 1 620 0
.LVL261:
	entry	sp, 32
.LCFI20:
.LVL262:
	.loc 1 622 0
	addi	a5, a2, 28
	mov.n	a10, a5
	call8	vTaskEnterCritical
.LVL263:
	.loc 1 623 0
	l32i.n	a8, a2, 52
	mov.n	a11, a3
	mov.n	a10, a2
	callx8	a8
.LVL264:
	.loc 1 624 0
	mov.n	a10, a5
	call8	vTaskExitCritical
.LVL265:
	.loc 1 625 0
	mov.n	a11, a4
	l32i.n	a10, a2, 0
	call8	xQueueGiveFromISR
.LVL266:
	retw.n
.LFE29:
	.size	vRingbufferReturnItemFromISR, .-vRingbufferReturnItemFromISR
	.section	.text.xRingbufferAddToQueueSetRead,"ax",@progbits
	.literal_position
	.literal .LC53, __FUNCTION__$5308
	.literal .LC54, .LC1
	.literal .LC55, .LC3
	.align	4
	.global	xRingbufferAddToQueueSetRead
	.type	xRingbufferAddToQueueSetRead, @function
xRingbufferAddToQueueSetRead:
.LFB30:
	.loc 1 630 0
.LVL267:
	entry	sp, 32
.LCFI21:
.LVL268:
	.loc 1 632 0
	bnez.n	a2, .L110
	.loc 1 632 0 is_stmt 0 discriminator 1
	l32r	a13, .LC53
	movi	a12, 0x278
	l32r	a11, .LC54
	l32r	a10, .LC55
	call8	ets_printf
.LVL269:
	call8	abort
.LVL270:
.L110:
	.loc 1 633 0 is_stmt 1
	mov.n	a11, a3
	l32i.n	a10, a2, 4
	call8	xQueueAddToSet
.LVL271:
	.loc 1 634 0
	mov.n	a2, a10
.LVL272:
	retw.n
.LFE30:
	.size	xRingbufferAddToQueueSetRead, .-xRingbufferAddToQueueSetRead
	.section	.text.xRingbufferAddToQueueSetWrite,"ax",@progbits
	.literal_position
	.literal .LC56, __FUNCTION__$5314
	.literal .LC57, .LC1
	.literal .LC58, .LC3
	.align	4
	.global	xRingbufferAddToQueueSetWrite
	.type	xRingbufferAddToQueueSetWrite, @function
xRingbufferAddToQueueSetWrite:
.LFB31:
	.loc 1 638 0
.LVL273:
	entry	sp, 32
.LCFI22:
.LVL274:
	.loc 1 640 0
	bnez.n	a2, .L112
	.loc 1 640 0 is_stmt 0 discriminator 1
	l32r	a13, .LC56
	movi	a12, 0x280
	l32r	a11, .LC57
	l32r	a10, .LC58
	call8	ets_printf
.LVL275:
	call8	abort
.LVL276:
.L112:
	.loc 1 641 0 is_stmt 1
	mov.n	a11, a3
	l32i.n	a10, a2, 0
	call8	xQueueAddToSet
.LVL277:
	.loc 1 642 0
	mov.n	a2, a10
.LVL278:
	retw.n
.LFE31:
	.size	xRingbufferAddToQueueSetWrite, .-xRingbufferAddToQueueSetWrite
	.section	.text.xRingbufferRemoveFromQueueSetRead,"ax",@progbits
	.literal_position
	.literal .LC59, __FUNCTION__$5320
	.literal .LC60, .LC1
	.literal .LC61, .LC3
	.align	4
	.global	xRingbufferRemoveFromQueueSetRead
	.type	xRingbufferRemoveFromQueueSetRead, @function
xRingbufferRemoveFromQueueSetRead:
.LFB32:
	.loc 1 646 0
.LVL279:
	entry	sp, 32
.LCFI23:
.LVL280:
	.loc 1 648 0
	bnez.n	a2, .L114
	.loc 1 648 0 is_stmt 0 discriminator 1
	l32r	a13, .LC59
	movi	a12, 0x288
	l32r	a11, .LC60
	l32r	a10, .LC61
	call8	ets_printf
.LVL281:
	call8	abort
.LVL282:
.L114:
	.loc 1 649 0 is_stmt 1
	mov.n	a11, a3
	l32i.n	a10, a2, 4
	call8	xQueueRemoveFromSet
.LVL283:
	.loc 1 650 0
	mov.n	a2, a10
.LVL284:
	retw.n
.LFE32:
	.size	xRingbufferRemoveFromQueueSetRead, .-xRingbufferRemoveFromQueueSetRead
	.section	.text.xRingbufferRemoveFromQueueSetWrite,"ax",@progbits
	.literal_position
	.literal .LC62, __FUNCTION__$5326
	.literal .LC63, .LC1
	.literal .LC64, .LC3
	.align	4
	.global	xRingbufferRemoveFromQueueSetWrite
	.type	xRingbufferRemoveFromQueueSetWrite, @function
xRingbufferRemoveFromQueueSetWrite:
.LFB33:
	.loc 1 653 0
.LVL285:
	entry	sp, 32
.LCFI24:
.LVL286:
	.loc 1 655 0
	bnez.n	a2, .L116
	.loc 1 655 0 is_stmt 0 discriminator 1
	l32r	a13, .LC62
	movi	a12, 0x28f
	l32r	a11, .LC63
	l32r	a10, .LC64
	call8	ets_printf
.LVL287:
	call8	abort
.LVL288:
.L116:
	.loc 1 656 0 is_stmt 1
	mov.n	a11, a3
	l32i.n	a10, a2, 0
	call8	xQueueRemoveFromSet
.LVL289:
	.loc 1 657 0
	mov.n	a2, a10
.LVL290:
	retw.n
.LFE33:
	.size	xRingbufferRemoveFromQueueSetWrite, .-xRingbufferRemoveFromQueueSetWrite
	.section	.rodata.__FUNCTION__$5326,"a",@progbits
	.align	4
	.type	__FUNCTION__$5326, @object
	.size	__FUNCTION__$5326, 35
__FUNCTION__$5326:
	.string	"xRingbufferRemoveFromQueueSetWrite"
	.section	.rodata.__FUNCTION__$5320,"a",@progbits
	.align	4
	.type	__FUNCTION__$5320, @object
	.size	__FUNCTION__$5320, 34
__FUNCTION__$5320:
	.string	"xRingbufferRemoveFromQueueSetRead"
	.section	.rodata.__FUNCTION__$5314,"a",@progbits
	.align	4
	.type	__FUNCTION__$5314, @object
	.size	__FUNCTION__$5314, 30
__FUNCTION__$5314:
	.string	"xRingbufferAddToQueueSetWrite"
	.section	.rodata.__FUNCTION__$5308,"a",@progbits
	.align	4
	.type	__FUNCTION__$5308, @object
	.size	__FUNCTION__$5308, 29
__FUNCTION__$5308:
	.string	"xRingbufferAddToQueueSetRead"
	.section	.rodata.__FUNCTION__$5291,"a",@progbits
	.align	4
	.type	__FUNCTION__$5291, @object
	.size	__FUNCTION__$5291, 30
__FUNCTION__$5291:
	.string	"xRingbufferReceiveUpToFromISR"
	.section	.rodata.__FUNCTION__$5283,"a",@progbits
	.align	4
	.type	__FUNCTION__$5283, @object
	.size	__FUNCTION__$5283, 23
__FUNCTION__$5283:
	.string	"xRingbufferReceiveUpTo"
	.section	.rodata.__FUNCTION__$5275,"a",@progbits
	.align	4
	.type	__FUNCTION__$5275, @object
	.size	__FUNCTION__$5275, 26
__FUNCTION__$5275:
	.string	"xRingbufferReceiveFromISR"
	.section	.rodata.__FUNCTION__$5256,"a",@progbits
	.align	4
	.type	__FUNCTION__$5256, @object
	.size	__FUNCTION__$5256, 26
__FUNCTION__$5256:
	.string	"xRingbufferReceiveGeneric"
	.section	.rodata.__FUNCTION__$5245,"a",@progbits
	.align	4
	.type	__FUNCTION__$5245, @object
	.size	__FUNCTION__$5245, 23
__FUNCTION__$5245:
	.string	"xRingbufferSendFromISR"
	.section	.rodata.__FUNCTION__$5230,"a",@progbits
	.align	4
	.type	__FUNCTION__$5230, @object
	.size	__FUNCTION__$5230, 16
__FUNCTION__$5230:
	.string	"xRingbufferSend"
	.section	.rodata.__FUNCTION__$5218,"a",@progbits
	.align	4
	.type	__FUNCTION__$5218, @object
	.size	__FUNCTION__$5218, 26
__FUNCTION__$5218:
	.string	"xRingbufferGetMaxItemSize"
	.section	.rodata.__FUNCTION__$5157,"a",@progbits
	.align	4
	.type	__FUNCTION__$5157, @object
	.size	__FUNCTION__$5157, 28
__FUNCTION__$5157:
	.string	"copyItemToRingbufAllowSplit"
	.section	.rodata.__FUNCTION__$5173,"a",@progbits
	.align	4
	.type	__FUNCTION__$5173, @object
	.size	__FUNCTION__$5173, 26
__FUNCTION__$5173:
	.string	"getItemFromRingbufDefault"
	.section	.rodata.__FUNCTION__$5186,"a",@progbits
	.align	4
	.type	__FUNCTION__$5186, @object
	.size	__FUNCTION__$5186, 27
__FUNCTION__$5186:
	.string	"returnItemToRingbufDefault"
	.section	.rodata.__FUNCTION__$5197,"a",@progbits
	.align	4
	.type	__FUNCTION__$5197, @object
	.size	__FUNCTION__$5197, 27
__FUNCTION__$5197:
	.string	"returnItemToRingbufBytebuf"
	.section	.rodata.__FUNCTION__$5147,"a",@progbits
	.align	4
	.type	__FUNCTION__$5147, @object
	.size	__FUNCTION__$5147, 25
__FUNCTION__$5147:
	.string	"copyItemToRingbufNoSplit"
	.section	.rodata.__FUNCTION__$5209,"a",@progbits
	.align	4
	.type	__FUNCTION__$5209, @object
	.size	__FUNCTION__$5209, 18
__FUNCTION__$5209:
	.string	"xRingbufferCreate"
	.section	.rodata.__FUNCTION__$5202,"a",@progbits
	.align	4
	.type	__FUNCTION__$5202, @object
	.size	__FUNCTION__$5202, 21
__FUNCTION__$5202:
	.string	"xRingbufferPrintInfo"
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
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI1-.LFB14
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI2-.LFB16
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI3-.LFB15
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
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI5-.LFB10
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI6-.LFB12
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI7-.LFB11
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI8-.LFB23
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI9-.LFB17
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI10-.LFB18
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI11-.LFB19
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI12-.LFB20
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI13-.LFB21
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI14-.LFB22
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI15-.LFB24
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI16-.LFB25
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI17-.LFB26
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI18-.LFB27
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI19-.LFB28
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE38:
.LSFDE40:
	.4byte	.LEFDE40-.LASFDE40
.LASFDE40:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI20-.LFB29
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE40:
.LSFDE42:
	.4byte	.LEFDE42-.LASFDE42
.LASFDE42:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI21-.LFB30
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE42:
.LSFDE44:
	.4byte	.LEFDE44-.LASFDE44
.LASFDE44:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI22-.LFB31
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE44:
.LSFDE46:
	.4byte	.LEFDE46-.LASFDE46
.LASFDE46:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI23-.LFB32
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE46:
.LSFDE48:
	.4byte	.LEFDE48-.LASFDE48
.LASFDE48:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI24-.LFB33
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE48:
	.text
.Letext0:
	.file 2 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 3 "C:/esp/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "C:/esp/esp-idf/components/newlib/include/stdint.h"
	.file 5 "C:/esp/esp-idf/components/freertos/include/freertos/portmacro.h"
	.file 6 "C:/esp/esp-idf/components/freertos/include/freertos/queue.h"
	.file 7 "C:/esp/esp-idf/components/freertos/include/freertos/semphr.h"
	.file 8 "C:/esp/esp-idf/components/freertos/include/freertos/ringbuf.h"
	.file 9 "C:/esp/esp-idf/components/esp32/include/rom/ets_sys.h"
	.file 10 "C:/esp/esp-idf/components/newlib/include/stdlib.h"
	.file 11 "C:/esp/esp-idf/components/freertos/include/freertos/task.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1af6
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF117
	.byte	0xc
	.4byte	.LASF118
	.4byte	.LASF119
	.4byte	.Ldebug_ranges0+0x30
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
	.byte	0x1a
	.4byte	0x37
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x4
	.byte	0x15
	.4byte	0x4c
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0x2d
	.4byte	0x65
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x5
	.byte	0x6c
	.4byte	0x25
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x5
	.byte	0x6d
	.4byte	0x37
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x5
	.byte	0x73
	.4byte	0xa7
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.byte	0x81
	.4byte	0xf4
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x5
	.byte	0x82
	.4byte	0xa7
	.byte	0
	.uleb128 0x7
	.4byte	.LASF20
	.byte	0x5
	.byte	0x83
	.4byte	0xa7
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x5
	.byte	0x88
	.4byte	0xd3
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF22
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x6
	.byte	0x58
	.4byte	0x8c
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x6
	.byte	0x5f
	.4byte	0x8c
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x7
	.byte	0x4f
	.4byte	0x106
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x8
	.byte	0x28
	.4byte	0x8c
	.uleb128 0x8
	.byte	0x4
	.4byte	0x37
	.byte	0x8
	.byte	0x2b
	.4byte	0x151
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF30
	.byte	0x8
	.byte	0x2f
	.4byte	0x132
	.uleb128 0x8
	.byte	0x4
	.4byte	0x37
	.byte	0x1
	.byte	0x1b
	.4byte	0x175
	.uleb128 0x9
	.4byte	.LASF31
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF32
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF33
	.byte	0x1
	.byte	0x1e
	.4byte	0x15c
	.uleb128 0x8
	.byte	0x4
	.4byte	0x37
	.byte	0x1
	.byte	0x20
	.4byte	0x199
	.uleb128 0x9
	.4byte	.LASF34
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF35
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF36
	.byte	0x1
	.byte	0x23
	.4byte	0x180
	.uleb128 0x3
	.4byte	.LASF37
	.byte	0x1
	.byte	0x26
	.4byte	0x1af
	.uleb128 0xa
	.4byte	.LASF37
	.byte	0x38
	.byte	0x1
	.byte	0x29
	.4byte	0x258
	.uleb128 0x7
	.4byte	.LASF38
	.byte	0x1
	.byte	0x2a
	.4byte	0x11c
	.byte	0
	.uleb128 0x7
	.4byte	.LASF39
	.byte	0x1
	.byte	0x2b
	.4byte	0x11c
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF40
	.byte	0x1
	.byte	0x2c
	.4byte	0x2c
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF41
	.byte	0x1
	.byte	0x2d
	.4byte	0x258
	.byte	0xc
	.uleb128 0x7
	.4byte	.LASF42
	.byte	0x1
	.byte	0x2e
	.4byte	0x258
	.byte	0x10
	.uleb128 0x7
	.4byte	.LASF43
	.byte	0x1
	.byte	0x2f
	.4byte	0x258
	.byte	0x14
	.uleb128 0x7
	.4byte	.LASF44
	.byte	0x1
	.byte	0x30
	.4byte	0x258
	.byte	0x18
	.uleb128 0xb
	.string	"mux"
	.byte	0x1
	.byte	0x31
	.4byte	0xf4
	.byte	0x1c
	.uleb128 0x7
	.4byte	.LASF45
	.byte	0x1
	.byte	0x32
	.4byte	0x175
	.byte	0x24
	.uleb128 0x7
	.4byte	.LASF46
	.byte	0x1
	.byte	0x33
	.4byte	0x2c
	.byte	0x28
	.uleb128 0x7
	.4byte	.LASF47
	.byte	0x1
	.byte	0x35
	.4byte	0x27d
	.byte	0x2c
	.uleb128 0x7
	.4byte	.LASF48
	.byte	0x1
	.byte	0x36
	.4byte	0x2a2
	.byte	0x30
	.uleb128 0x7
	.4byte	.LASF49
	.byte	0x1
	.byte	0x37
	.4byte	0x2b8
	.byte	0x34
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x9c
	.uleb128 0xd
	.4byte	0xb2
	.4byte	0x277
	.uleb128 0xe
	.4byte	0x277
	.uleb128 0xe
	.4byte	0x258
	.uleb128 0xe
	.4byte	0x2c
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x1a4
	.uleb128 0xc
	.byte	0x4
	.4byte	0x25e
	.uleb128 0xd
	.4byte	0x258
	.4byte	0x29c
	.uleb128 0xe
	.4byte	0x277
	.uleb128 0xe
	.4byte	0x29c
	.uleb128 0xe
	.4byte	0x25
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x2c
	.uleb128 0xc
	.byte	0x4
	.4byte	0x283
	.uleb128 0xf
	.4byte	0x2b8
	.uleb128 0xe
	.4byte	0x277
	.uleb128 0xe
	.4byte	0x8c
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x2a8
	.uleb128 0x6
	.byte	0x8
	.byte	0x1
	.byte	0x45
	.4byte	0x2df
	.uleb128 0xb
	.string	"len"
	.byte	0x1
	.byte	0x46
	.4byte	0x2c
	.byte	0
	.uleb128 0x7
	.4byte	.LASF45
	.byte	0x1
	.byte	0x47
	.4byte	0x199
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF50
	.byte	0x1
	.byte	0x48
	.4byte	0x2be
	.uleb128 0x10
	.4byte	.LASF51
	.byte	0x1
	.byte	0x4c
	.4byte	0x25
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x31f
	.uleb128 0x11
	.string	"rb"
	.byte	0x1
	.byte	0x4c
	.4byte	0x277
	.4byte	.LLST0
	.uleb128 0x12
	.4byte	.LASF55
	.byte	0x1
	.byte	0x4e
	.4byte	0x25
	.uleb128 0x1
	.byte	0x58
	.byte	0
	.uleb128 0x13
	.4byte	.LASF52
	.byte	0x1
	.2byte	0x12a
	.4byte	0x258
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x379
	.uleb128 0x14
	.string	"rb"
	.byte	0x1
	.2byte	0x12a
	.4byte	0x277
	.4byte	.LLST1
	.uleb128 0x15
	.4byte	.LASF53
	.byte	0x1
	.2byte	0x12a
	.4byte	0x29c
	.4byte	.LLST2
	.uleb128 0x15
	.4byte	.LASF54
	.byte	0x1
	.2byte	0x12a
	.4byte	0x25
	.4byte	.LLST3
	.uleb128 0x16
	.string	"ret"
	.byte	0x1
	.2byte	0x12c
	.4byte	0x258
	.4byte	.LLST4
	.byte	0
	.uleb128 0x17
	.4byte	.LASF57
	.byte	0x1
	.2byte	0x17a
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x43e
	.uleb128 0x18
	.string	"rb"
	.byte	0x1
	.2byte	0x17a
	.4byte	0x277
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x15
	.4byte	.LASF56
	.byte	0x1
	.2byte	0x17a
	.4byte	0x8c
	.4byte	.LLST5
	.uleb128 0x19
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x17b
	.4byte	0x258
	.4byte	.LLST6
	.uleb128 0x1a
	.4byte	.LASF59
	.4byte	0x44e
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5197
	.uleb128 0x1b
	.4byte	.LVL21
	.4byte	0x1a3a
	.4byte	0x3fb
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x17c
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5197
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL22
	.4byte	0x1a45
	.uleb128 0x1b
	.4byte	.LVL23
	.4byte	0x1a3a
	.4byte	0x434
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x17d
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5197
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL24
	.4byte	0x1a45
	.byte	0
	.uleb128 0x1e
	.4byte	0x95
	.4byte	0x44e
	.uleb128 0x1f
	.4byte	0x85
	.byte	0x1a
	.byte	0
	.uleb128 0x20
	.4byte	0x43e
	.uleb128 0x17
	.4byte	.LASF58
	.byte	0x1
	.2byte	0x150
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x663
	.uleb128 0x18
	.string	"rb"
	.byte	0x1
	.2byte	0x150
	.4byte	0x277
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x15
	.4byte	.LASF56
	.byte	0x1
	.2byte	0x150
	.4byte	0x8c
	.4byte	.LLST7
	.uleb128 0x19
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x151
	.4byte	0x258
	.4byte	.LLST8
	.uleb128 0x1a
	.4byte	.LASF59
	.4byte	0x663
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5186
	.uleb128 0x16
	.string	"hdr"
	.byte	0x1
	.2byte	0x156
	.4byte	0x668
	.4byte	.LLST9
	.uleb128 0x21
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0x50c
	.uleb128 0x16
	.string	"len"
	.byte	0x1
	.2byte	0x166
	.4byte	0x2c
	.4byte	.LLST10
	.uleb128 0x1b
	.4byte	.LVL51
	.4byte	0x1a3a
	.4byte	0x502
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x168
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5186
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL52
	.4byte	0x1a45
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL28
	.4byte	0x1a3a
	.4byte	0x53c
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x152
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5186
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL29
	.4byte	0x1a45
	.uleb128 0x1b
	.4byte	.LVL30
	.4byte	0x1a3a
	.4byte	0x575
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x153
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5186
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL31
	.4byte	0x1a45
	.uleb128 0x1b
	.4byte	.LVL32
	.4byte	0x1a3a
	.4byte	0x5ae
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x154
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5186
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL33
	.4byte	0x1a45
	.uleb128 0x1b
	.4byte	.LVL36
	.4byte	0x1a3a
	.4byte	0x5e7
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x157
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5186
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL37
	.4byte	0x1a45
	.uleb128 0x1b
	.4byte	.LVL38
	.4byte	0x1a3a
	.4byte	0x620
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x158
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5186
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL39
	.4byte	0x1a45
	.uleb128 0x1b
	.4byte	.LVL40
	.4byte	0x1a3a
	.4byte	0x659
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x159
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5186
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL41
	.4byte	0x1a45
	.byte	0
	.uleb128 0x20
	.4byte	0x43e
	.uleb128 0xc
	.byte	0x4
	.4byte	0x2df
	.uleb128 0x13
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x105
	.4byte	0x258
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x790
	.uleb128 0x14
	.string	"rb"
	.byte	0x1
	.2byte	0x105
	.4byte	0x277
	.4byte	.LLST11
	.uleb128 0x15
	.4byte	.LASF53
	.byte	0x1
	.2byte	0x105
	.4byte	0x29c
	.4byte	.LLST12
	.uleb128 0x22
	.4byte	.LASF54
	.byte	0x1
	.2byte	0x105
	.4byte	0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x16
	.string	"ret"
	.byte	0x1
	.2byte	0x107
	.4byte	0x258
	.4byte	.LLST13
	.uleb128 0x1a
	.4byte	.LASF59
	.4byte	0x7a0
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5173
	.uleb128 0x16
	.string	"hdr"
	.byte	0x1
	.2byte	0x10f
	.4byte	0x668
	.4byte	.LLST14
	.uleb128 0x1b
	.4byte	.LVL56
	.4byte	0x1a3a
	.4byte	0x714
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x108
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5173
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL57
	.4byte	0x1a45
	.uleb128 0x1b
	.4byte	.LVL59
	.4byte	0x1a3a
	.4byte	0x74d
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x110
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5173
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL60
	.4byte	0x1a45
	.uleb128 0x1b
	.4byte	.LVL63
	.4byte	0x1a3a
	.4byte	0x786
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x116
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5173
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL64
	.4byte	0x1a45
	.byte	0
	.uleb128 0x1e
	.4byte	0x95
	.4byte	0x7a0
	.uleb128 0x1f
	.4byte	0x85
	.byte	0x19
	.byte	0
	.uleb128 0x20
	.4byte	0x790
	.uleb128 0x10
	.4byte	.LASF61
	.byte	0x1
	.byte	0x5b
	.4byte	0xb2
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8de
	.uleb128 0x11
	.string	"rb"
	.byte	0x1
	.byte	0x5b
	.4byte	0x277
	.4byte	.LLST15
	.uleb128 0x23
	.4byte	.LASF62
	.byte	0x1
	.byte	0x5b
	.4byte	0x258
	.4byte	.LLST16
	.uleb128 0x23
	.4byte	.LASF63
	.byte	0x1
	.byte	0x5b
	.4byte	0x2c
	.4byte	.LLST17
	.uleb128 0x24
	.4byte	.LASF64
	.byte	0x1
	.byte	0x5d
	.4byte	0x2c
	.4byte	.LLST18
	.uleb128 0x1a
	.4byte	.LASF59
	.4byte	0x8ee
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5147
	.uleb128 0x24
	.4byte	.LASF65
	.byte	0x1
	.byte	0x62
	.4byte	0x2c
	.4byte	.LLST19
	.uleb128 0x25
	.string	"hdr"
	.byte	0x1
	.byte	0x85
	.4byte	0x668
	.4byte	.LLST20
	.uleb128 0x21
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.4byte	0x843
	.uleb128 0x25
	.string	"hdr"
	.byte	0x1
	.byte	0x77
	.4byte	0x668
	.4byte	.LLST21
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL75
	.4byte	0x1a3a
	.4byte	0x872
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x5f
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5147
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL76
	.4byte	0x1a45
	.uleb128 0x1b
	.4byte	.LVL77
	.4byte	0x1a3a
	.4byte	0x8aa
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x60
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5147
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL78
	.4byte	0x1a45
	.uleb128 0x1b
	.4byte	.LVL84
	.4byte	0x2ea
	.4byte	0x8c7
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL86
	.4byte	0x1a50
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	0x95
	.4byte	0x8ee
	.uleb128 0x1f
	.4byte	0x85
	.byte	0x18
	.byte	0
	.uleb128 0x20
	.4byte	0x8de
	.uleb128 0x10
	.4byte	.LASF66
	.byte	0x1
	.byte	0xea
	.4byte	0xb2
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x978
	.uleb128 0x11
	.string	"rb"
	.byte	0x1
	.byte	0xea
	.4byte	0x277
	.4byte	.LLST22
	.uleb128 0x23
	.4byte	.LASF62
	.byte	0x1
	.byte	0xea
	.4byte	0x258
	.4byte	.LLST23
	.uleb128 0x23
	.4byte	.LASF63
	.byte	0x1
	.byte	0xea
	.4byte	0x2c
	.4byte	.LLST24
	.uleb128 0x24
	.4byte	.LASF65
	.byte	0x1
	.byte	0xec
	.4byte	0x2c
	.4byte	.LLST25
	.uleb128 0x1b
	.4byte	.LVL96
	.4byte	0x1a50
	.4byte	0x961
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL100
	.4byte	0x1a50
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	.LASF67
	.byte	0x1
	.byte	0x9c
	.4byte	0xb2
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb15
	.uleb128 0x11
	.string	"rb"
	.byte	0x1
	.byte	0x9c
	.4byte	0x277
	.4byte	.LLST26
	.uleb128 0x23
	.4byte	.LASF62
	.byte	0x1
	.byte	0x9c
	.4byte	0x258
	.4byte	.LLST27
	.uleb128 0x23
	.4byte	.LASF63
	.byte	0x1
	.byte	0x9c
	.4byte	0x2c
	.4byte	.LLST28
	.uleb128 0x24
	.4byte	.LASF64
	.byte	0x1
	.byte	0x9e
	.4byte	0x2c
	.4byte	.LLST29
	.uleb128 0x1a
	.4byte	.LASF59
	.4byte	0xb25
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5157
	.uleb128 0x24
	.4byte	.LASF65
	.byte	0x1
	.byte	0xa3
	.4byte	0x2c
	.4byte	.LLST30
	.uleb128 0x25
	.string	"hdr"
	.byte	0x1
	.byte	0xd2
	.4byte	0x668
	.4byte	.LLST31
	.uleb128 0x21
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.4byte	0xa79
	.uleb128 0x25
	.string	"hdr"
	.byte	0x1
	.byte	0xb7
	.4byte	0x668
	.4byte	.LLST32
	.uleb128 0x1b
	.4byte	.LVL112
	.4byte	0x2ea
	.4byte	0xa29
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL113
	.4byte	0x1a3a
	.4byte	0xa58
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0xb4
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5157
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL114
	.4byte	0x1a45
	.uleb128 0x26
	.4byte	.LVL116
	.4byte	0x1a50
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL107
	.4byte	0x1a3a
	.4byte	0xaa8
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0xa0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5157
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL108
	.4byte	0x1a45
	.uleb128 0x1b
	.4byte	.LVL109
	.4byte	0x1a3a
	.4byte	0xae0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0xa1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5157
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL110
	.4byte	0x1a45
	.uleb128 0x1b
	.4byte	.LVL125
	.4byte	0x2ea
	.4byte	0xafd
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL128
	.4byte	0x1a50
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	0x95
	.4byte	0xb25
	.uleb128 0x1f
	.4byte	0x85
	.byte	0x1b
	.byte	0
	.uleb128 0x20
	.4byte	0xb15
	.uleb128 0x13
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x21f
	.4byte	0x8c
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc68
	.uleb128 0x15
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x21f
	.4byte	0x127
	.4byte	.LLST33
	.uleb128 0x22
	.4byte	.LASF70
	.byte	0x1
	.2byte	0x21f
	.4byte	0x29c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x22
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x21f
	.4byte	0xc8
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x22
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x21f
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x16
	.string	"rb"
	.byte	0x1
	.2byte	0x221
	.4byte	0x277
	.4byte	.LLST34
	.uleb128 0x19
	.4byte	.LASF73
	.byte	0x1
	.2byte	0x222
	.4byte	0x258
	.4byte	.LLST35
	.uleb128 0x19
	.4byte	.LASF74
	.byte	0x1
	.2byte	0x223
	.4byte	0xb2
	.4byte	.LLST36
	.uleb128 0x1a
	.4byte	.LASF59
	.4byte	0xc68
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5256
	.uleb128 0x27
	.4byte	.Ldebug_ranges0+0
	.4byte	0xbee
	.uleb128 0x16
	.string	"r"
	.byte	0x1
	.2byte	0x228
	.4byte	0xb2
	.4byte	.LLST37
	.uleb128 0x26
	.4byte	.LVL137
	.4byte	0x1a59
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL135
	.4byte	0x1a3a
	.4byte	0xc1e
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x224
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5256
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL136
	.4byte	0x1a45
	.uleb128 0x1b
	.4byte	.LVL139
	.4byte	0x1a65
	.4byte	0xc3b
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL140
	.4byte	0xc57
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL143
	.4byte	0x1a70
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	0x790
	.uleb128 0x29
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x182
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd0e
	.uleb128 0x22
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x182
	.4byte	0x127
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2a
	.string	"rb"
	.byte	0x1
	.2byte	0x184
	.4byte	0x277
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1a
	.4byte	.LASF59
	.4byte	0xd1e
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5202
	.uleb128 0x1b
	.4byte	.LVL152
	.4byte	0x1a3a
	.4byte	0xcdd
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x185
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5202
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL153
	.4byte	0x1a45
	.uleb128 0x1b
	.4byte	.LVL154
	.4byte	0x2ea
	.4byte	0xcfa
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL155
	.4byte	0x1a3a
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	0x95
	.4byte	0xd1e
	.uleb128 0x1f
	.4byte	0x85
	.byte	0x14
	.byte	0
	.uleb128 0x20
	.4byte	0xd0e
	.uleb128 0x2b
	.4byte	.LASF79
	.byte	0x1
	.2byte	0x18c
	.4byte	0x127
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe7d
	.uleb128 0x15
	.4byte	.LASF75
	.byte	0x1
	.2byte	0x18c
	.4byte	0x2c
	.4byte	.LLST38
	.uleb128 0x22
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x18c
	.4byte	0x151
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2a
	.string	"rb"
	.byte	0x1
	.2byte	0x18e
	.4byte	0x277
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2c
	.string	"err"
	.byte	0x1
	.2byte	0x1b9
	.4byte	.L65
	.uleb128 0x1a
	.4byte	.LASF59
	.4byte	0xe8d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5209
	.uleb128 0x1b
	.4byte	.LVL157
	.4byte	0x1a7b
	.4byte	0xd97
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x38
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL159
	.4byte	0x1a86
	.4byte	0xdb6
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x38
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL160
	.4byte	0x1a7b
	.4byte	0xdca
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL161
	.4byte	0x1a8f
	.4byte	0xde7
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL162
	.4byte	0x1a8f
	.4byte	0xe04
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL164
	.4byte	0x1a3a
	.4byte	0xe34
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1b2
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5209
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL165
	.4byte	0x1a45
	.uleb128 0x1b
	.4byte	.LVL166
	.4byte	0x1a9b
	.4byte	0xe51
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 28
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL167
	.4byte	0x1aa6
	.uleb128 0x1d
	.4byte	.LVL168
	.4byte	0x1ab1
	.uleb128 0x1d
	.4byte	.LVL169
	.4byte	0x1ab1
	.uleb128 0x26
	.4byte	.LVL170
	.4byte	0x1aa6
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	0x95
	.4byte	0xe8d
	.uleb128 0x1f
	.4byte	0x85
	.byte	0x11
	.byte	0
	.uleb128 0x20
	.4byte	0xe7d
	.uleb128 0x29
	.4byte	.LASF78
	.byte	0x1
	.2byte	0x1c4
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xeef
	.uleb128 0x22
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x1c4
	.4byte	0x127
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2a
	.string	"rb"
	.byte	0x1
	.2byte	0x1c5
	.4byte	0x277
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1d
	.4byte	.LVL173
	.4byte	0x1aa6
	.uleb128 0x1d
	.4byte	.LVL174
	.4byte	0x1ab1
	.uleb128 0x1d
	.4byte	.LVL175
	.4byte	0x1ab1
	.uleb128 0x26
	.4byte	.LVL176
	.4byte	0x1aa6
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x1ce
	.4byte	0x2c
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf71
	.uleb128 0x15
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x1ce
	.4byte	0x127
	.4byte	.LLST39
	.uleb128 0x16
	.string	"rb"
	.byte	0x1
	.2byte	0x1d0
	.4byte	0x277
	.4byte	.LLST40
	.uleb128 0x1a
	.4byte	.LASF59
	.4byte	0xf71
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5218
	.uleb128 0x1b
	.4byte	.LVL179
	.4byte	0x1a3a
	.4byte	0xf67
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1d1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5218
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL180
	.4byte	0x1a45
	.byte	0
	.uleb128 0x20
	.4byte	0x790
	.uleb128 0x2b
	.4byte	.LASF81
	.byte	0x1
	.2byte	0x1d5
	.4byte	0xb2
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x114a
	.uleb128 0x15
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x1d5
	.4byte	0x127
	.4byte	.LLST41
	.uleb128 0x15
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x1d5
	.4byte	0x8c
	.4byte	.LLST42
	.uleb128 0x15
	.4byte	.LASF82
	.byte	0x1
	.2byte	0x1d5
	.4byte	0x2c
	.4byte	.LLST43
	.uleb128 0x22
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x1d5
	.4byte	0xc8
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x16
	.string	"rb"
	.byte	0x1
	.2byte	0x1d7
	.4byte	0x277
	.4byte	.LLST44
	.uleb128 0x2d
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x1d8
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x19
	.4byte	.LASF74
	.byte	0x1
	.2byte	0x1d9
	.4byte	0xb2
	.4byte	.LLST45
	.uleb128 0x19
	.4byte	.LASF84
	.byte	0x1
	.2byte	0x1da
	.4byte	0xc8
	.4byte	.LLST46
	.uleb128 0x19
	.4byte	.LASF85
	.byte	0x1
	.2byte	0x1db
	.4byte	0xc8
	.4byte	.LLST47
	.uleb128 0x1a
	.4byte	.LASF59
	.4byte	0x115a
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5230
	.uleb128 0x27
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0x1069
	.uleb128 0x16
	.string	"r"
	.byte	0x1
	.2byte	0x1ea
	.4byte	0xb2
	.4byte	.LLST48
	.uleb128 0x1b
	.4byte	.LVL195
	.4byte	0x1a59
	.4byte	0x105f
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL196
	.4byte	0x1abd
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL185
	.4byte	0x1abd
	.uleb128 0x1b
	.4byte	.LVL188
	.4byte	0x1a3a
	.4byte	0x10a2
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1dd
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5230
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL189
	.4byte	0x1a45
	.uleb128 0x1b
	.4byte	.LVL191
	.4byte	0xeef
	.4byte	0x10bf
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL194
	.4byte	0x2ea
	.4byte	0x10d3
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL198
	.4byte	0x2ea
	.4byte	0x10e7
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL199
	.4byte	0x1a65
	.4byte	0x10fb
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL200
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.4byte	0x111c
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL202
	.4byte	0x1a70
	.4byte	0x1130
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL203
	.4byte	0x1ac9
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	0x95
	.4byte	0x115a
	.uleb128 0x1f
	.4byte	0x85
	.byte	0xf
	.byte	0
	.uleb128 0x20
	.4byte	0x114a
	.uleb128 0x2b
	.4byte	.LASF86
	.byte	0x1
	.2byte	0x20a
	.4byte	0xb2
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1296
	.uleb128 0x15
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x20a
	.4byte	0x127
	.4byte	.LLST49
	.uleb128 0x15
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x20a
	.4byte	0x8c
	.4byte	.LLST50
	.uleb128 0x22
	.4byte	.LASF82
	.byte	0x1
	.2byte	0x20a
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x22
	.4byte	.LASF87
	.byte	0x1
	.2byte	0x20a
	.4byte	0x1296
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x16
	.string	"rb"
	.byte	0x1
	.2byte	0x20c
	.4byte	0x277
	.4byte	.LLST51
	.uleb128 0x19
	.4byte	.LASF88
	.byte	0x1
	.2byte	0x20d
	.4byte	0xb2
	.4byte	.LLST52
	.uleb128 0x1a
	.4byte	.LASF59
	.4byte	0x12ac
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5245
	.uleb128 0x2d
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x20f
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x1b
	.4byte	.LVL211
	.4byte	0x1a3a
	.4byte	0x1221
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x20e
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5245
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL212
	.4byte	0x1a45
	.uleb128 0x1b
	.4byte	.LVL213
	.4byte	0x1a65
	.4byte	0x123e
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL214
	.4byte	0x2ea
	.4byte	0x1252
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL215
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.4byte	0x1271
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL219
	.4byte	0x1a70
	.4byte	0x1285
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL220
	.4byte	0x1ad5
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0xb2
	.uleb128 0x1e
	.4byte	0x95
	.4byte	0x12ac
	.uleb128 0x1f
	.4byte	0x85
	.byte	0x16
	.byte	0
	.uleb128 0x20
	.4byte	0x129c
	.uleb128 0x2b
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x23a
	.4byte	0x8c
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1319
	.uleb128 0x15
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x23a
	.4byte	0x127
	.4byte	.LLST53
	.uleb128 0x22
	.4byte	.LASF70
	.byte	0x1
	.2byte	0x23a
	.4byte	0x29c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x22
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x23a
	.4byte	0xc8
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x26
	.4byte	.LVL223
	.4byte	0xb2a
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF90
	.byte	0x1
	.2byte	0x240
	.4byte	0x8c
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x13f6
	.uleb128 0x15
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x240
	.4byte	0x127
	.4byte	.LLST54
	.uleb128 0x22
	.4byte	.LASF70
	.byte	0x1
	.2byte	0x240
	.4byte	0x29c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x16
	.string	"rb"
	.byte	0x1
	.2byte	0x242
	.4byte	0x277
	.4byte	.LLST55
	.uleb128 0x2d
	.4byte	.LASF73
	.byte	0x1
	.2byte	0x243
	.4byte	0x258
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1a
	.4byte	.LASF59
	.4byte	0x13f6
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5275
	.uleb128 0x1b
	.4byte	.LVL227
	.4byte	0x1a3a
	.4byte	0x13ad
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x244
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5275
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL228
	.4byte	0x1a45
	.uleb128 0x1b
	.4byte	.LVL229
	.4byte	0x1a65
	.4byte	0x13ca
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL230
	.4byte	0x13e5
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x26
	.4byte	.LVL232
	.4byte	0x1a70
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	0x790
	.uleb128 0x2b
	.4byte	.LASF91
	.byte	0x1
	.2byte	0x24b
	.4byte	0x8c
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1502
	.uleb128 0x15
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x24b
	.4byte	0x127
	.4byte	.LLST56
	.uleb128 0x22
	.4byte	.LASF70
	.byte	0x1
	.2byte	0x24b
	.4byte	0x29c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x22
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x24b
	.4byte	0xc8
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x22
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x24b
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x16
	.string	"rb"
	.byte	0x1
	.2byte	0x24c
	.4byte	0x277
	.4byte	.LLST57
	.uleb128 0x1a
	.4byte	.LASF59
	.4byte	0x1502
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5283
	.uleb128 0x1b
	.4byte	.LVL235
	.4byte	0x1a3a
	.4byte	0x149d
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x24e
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5283
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL236
	.4byte	0x1a45
	.uleb128 0x1b
	.4byte	.LVL237
	.4byte	0x1a3a
	.4byte	0x14d6
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x24f
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5283
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL238
	.4byte	0x1a45
	.uleb128 0x26
	.4byte	.LVL239
	.4byte	0xb2a
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	0x129c
	.uleb128 0x2b
	.4byte	.LASF92
	.byte	0x1
	.2byte	0x253
	.4byte	0x8c
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x162e
	.uleb128 0x15
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x253
	.4byte	0x127
	.4byte	.LLST58
	.uleb128 0x22
	.4byte	.LASF70
	.byte	0x1
	.2byte	0x253
	.4byte	0x29c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x22
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x253
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x16
	.string	"rb"
	.byte	0x1
	.2byte	0x255
	.4byte	0x277
	.4byte	.LLST59
	.uleb128 0x19
	.4byte	.LASF73
	.byte	0x1
	.2byte	0x256
	.4byte	0x258
	.4byte	.LLST60
	.uleb128 0x1a
	.4byte	.LASF59
	.4byte	0x163e
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5291
	.uleb128 0x1b
	.4byte	.LVL245
	.4byte	0x1a3a
	.4byte	0x15ab
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x258
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5291
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL246
	.4byte	0x1a45
	.uleb128 0x1b
	.4byte	.LVL247
	.4byte	0x1a3a
	.4byte	0x15e4
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x259
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5291
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL248
	.4byte	0x1a45
	.uleb128 0x1b
	.4byte	.LVL249
	.4byte	0x1a65
	.4byte	0x1601
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL250
	.4byte	0x161d
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL252
	.4byte	0x1a70
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	0x95
	.4byte	0x163e
	.uleb128 0x1f
	.4byte	0x85
	.byte	0x1d
	.byte	0
	.uleb128 0x20
	.4byte	0x162e
	.uleb128 0x29
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x261
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x16da
	.uleb128 0x22
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x261
	.4byte	0x127
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x22
	.4byte	.LASF56
	.byte	0x1
	.2byte	0x261
	.4byte	0x8c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2a
	.string	"rb"
	.byte	0x1
	.2byte	0x263
	.4byte	0x277
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1b
	.4byte	.LVL257
	.4byte	0x1a65
	.4byte	0x1696
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL258
	.4byte	0x16ac
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL259
	.4byte	0x1a70
	.4byte	0x16c0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL260
	.4byte	0x1ac9
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	.LASF94
	.byte	0x1
	.2byte	0x26b
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1776
	.uleb128 0x22
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x26b
	.4byte	0x127
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x22
	.4byte	.LASF56
	.byte	0x1
	.2byte	0x26b
	.4byte	0x8c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x22
	.4byte	.LASF87
	.byte	0x1
	.2byte	0x26b
	.4byte	0x1296
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2a
	.string	"rb"
	.byte	0x1
	.2byte	0x26d
	.4byte	0x277
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1b
	.4byte	.LVL263
	.4byte	0x1a65
	.4byte	0x173b
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL264
	.4byte	0x1751
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL265
	.4byte	0x1a70
	.4byte	0x1765
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL266
	.4byte	0x1ad5
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF95
	.byte	0x1
	.2byte	0x275
	.4byte	0xb2
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1816
	.uleb128 0x15
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x275
	.4byte	0x127
	.4byte	.LLST61
	.uleb128 0x22
	.4byte	.LASF96
	.byte	0x1
	.2byte	0x275
	.4byte	0x111
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x16
	.string	"rb"
	.byte	0x1
	.2byte	0x277
	.4byte	0x277
	.4byte	.LLST62
	.uleb128 0x1a
	.4byte	.LASF59
	.4byte	0x1826
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5308
	.uleb128 0x1b
	.4byte	.LVL269
	.4byte	0x1a3a
	.4byte	0x17fc
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x278
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5308
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL270
	.4byte	0x1a45
	.uleb128 0x26
	.4byte	.LVL271
	.4byte	0x1ae1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	0x95
	.4byte	0x1826
	.uleb128 0x1f
	.4byte	0x85
	.byte	0x1c
	.byte	0
	.uleb128 0x20
	.4byte	0x1816
	.uleb128 0x2b
	.4byte	.LASF97
	.byte	0x1
	.2byte	0x27d
	.4byte	0xb2
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x18cb
	.uleb128 0x15
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x27d
	.4byte	0x127
	.4byte	.LLST63
	.uleb128 0x22
	.4byte	.LASF96
	.byte	0x1
	.2byte	0x27d
	.4byte	0x111
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x16
	.string	"rb"
	.byte	0x1
	.2byte	0x27f
	.4byte	0x277
	.4byte	.LLST64
	.uleb128 0x1a
	.4byte	.LASF59
	.4byte	0x18cb
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5314
	.uleb128 0x1b
	.4byte	.LVL275
	.4byte	0x1a3a
	.4byte	0x18b1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x280
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5314
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL276
	.4byte	0x1a45
	.uleb128 0x26
	.4byte	.LVL277
	.4byte	0x1ae1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	0x162e
	.uleb128 0x2b
	.4byte	.LASF98
	.byte	0x1
	.2byte	0x285
	.4byte	0xb2
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1970
	.uleb128 0x15
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x285
	.4byte	0x127
	.4byte	.LLST65
	.uleb128 0x22
	.4byte	.LASF96
	.byte	0x1
	.2byte	0x285
	.4byte	0x111
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x16
	.string	"rb"
	.byte	0x1
	.2byte	0x287
	.4byte	0x277
	.4byte	.LLST66
	.uleb128 0x1a
	.4byte	.LASF59
	.4byte	0x1980
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5320
	.uleb128 0x1b
	.4byte	.LVL281
	.4byte	0x1a3a
	.4byte	0x1956
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x288
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5320
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL282
	.4byte	0x1a45
	.uleb128 0x26
	.4byte	.LVL283
	.4byte	0x1aed
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	0x95
	.4byte	0x1980
	.uleb128 0x1f
	.4byte	0x85
	.byte	0x21
	.byte	0
	.uleb128 0x20
	.4byte	0x1970
	.uleb128 0x2b
	.4byte	.LASF99
	.byte	0x1
	.2byte	0x28c
	.4byte	0xb2
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a25
	.uleb128 0x15
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x28c
	.4byte	0x127
	.4byte	.LLST67
	.uleb128 0x22
	.4byte	.LASF96
	.byte	0x1
	.2byte	0x28c
	.4byte	0x111
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x16
	.string	"rb"
	.byte	0x1
	.2byte	0x28e
	.4byte	0x277
	.4byte	.LLST68
	.uleb128 0x1a
	.4byte	.LASF59
	.4byte	0x1a35
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5326
	.uleb128 0x1b
	.4byte	.LVL287
	.4byte	0x1a3a
	.4byte	0x1a0b
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x28f
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5326
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL288
	.4byte	0x1a45
	.uleb128 0x26
	.4byte	.LVL289
	.4byte	0x1aed
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	0x95
	.4byte	0x1a35
	.uleb128 0x1f
	.4byte	0x85
	.byte	0x22
	.byte	0
	.uleb128 0x20
	.4byte	0x1a25
	.uleb128 0x2f
	.4byte	.LASF100
	.4byte	.LASF100
	.byte	0x9
	.byte	0xde
	.uleb128 0x2f
	.4byte	.LASF101
	.4byte	.LASF101
	.byte	0xa
	.byte	0x47
	.uleb128 0x30
	.4byte	.LASF106
	.4byte	.LASF106
	.uleb128 0x31
	.4byte	.LASF102
	.4byte	.LASF102
	.byte	0x6
	.2byte	0x3e9
	.uleb128 0x2f
	.4byte	.LASF103
	.4byte	.LASF103
	.byte	0x5
	.byte	0xd9
	.uleb128 0x2f
	.4byte	.LASF104
	.4byte	.LASF104
	.byte	0x5
	.byte	0xd8
	.uleb128 0x2f
	.4byte	.LASF105
	.4byte	.LASF105
	.byte	0xa
	.byte	0x65
	.uleb128 0x30
	.4byte	.LASF107
	.4byte	.LASF107
	.uleb128 0x31
	.4byte	.LASF108
	.4byte	.LASF108
	.byte	0x6
	.2byte	0x664
	.uleb128 0x2f
	.4byte	.LASF109
	.4byte	.LASF109
	.byte	0x5
	.byte	0xca
	.uleb128 0x2f
	.4byte	.LASF110
	.4byte	.LASF110
	.byte	0xa
	.byte	0x5a
	.uleb128 0x31
	.4byte	.LASF111
	.4byte	.LASF111
	.byte	0x6
	.2byte	0x417
	.uleb128 0x31
	.4byte	.LASF112
	.4byte	.LASF112
	.byte	0xb
	.2byte	0x4d1
	.uleb128 0x31
	.4byte	.LASF113
	.4byte	.LASF113
	.byte	0x6
	.2byte	0x2a8
	.uleb128 0x31
	.4byte	.LASF114
	.4byte	.LASF114
	.byte	0x6
	.2byte	0x595
	.uleb128 0x31
	.4byte	.LASF115
	.4byte	.LASF115
	.byte	0x6
	.2byte	0x6b8
	.uleb128 0x31
	.4byte	.LASF116
	.4byte	.LASF116
	.byte	0x6
	.2byte	0x6cb
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
	.uleb128 0xc
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x5
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x17
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
	.uleb128 0x17
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL2
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL5
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL4
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL7
	.4byte	.LVL10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL13
	.4byte	.LVL16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL4
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL6
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL19
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL25
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL20
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL25
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL26
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x3
	.byte	0x78
	.sleb128 8
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LFE15
	.2byte	0x3
	.byte	0x73
	.sleb128 8
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL27
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x3
	.byte	0x78
	.sleb128 8
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LFE15
	.2byte	0x3
	.byte	0x73
	.sleb128 8
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x3
	.byte	0x73
	.sleb128 -8
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL35
	.4byte	.LVL42
	.2byte	0x3
	.byte	0x73
	.sleb128 -8
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x3
	.byte	0x78
	.sleb128 -8
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL55
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL69
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL72
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL55
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL67
	.4byte	.LVL69
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL69
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL71
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL65
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL71
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL58
	.4byte	.LVL59-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x2
	.byte	0x72
	.sleb128 16
	.4byte	.LVL62
	.4byte	.LVL63-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL64
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL73
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL93
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL73
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL87
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL73
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL89
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL74
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL88
	.4byte	.LVL89
	.2byte	0x6
	.byte	0x74
	.sleb128 3
	.byte	0x9
	.byte	0xfc
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL89
	.4byte	.LFE10
	.2byte	0x9
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x23
	.uleb128 0x3
	.byte	0x9
	.byte	0xfc
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL79
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL80
	.4byte	.LVL82
	.2byte	0xb
	.byte	0x72
	.sleb128 24
	.byte	0x6
	.byte	0x79
	.sleb128 0
	.byte	0x1c
	.byte	0x72
	.sleb128 8
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL83
	.4byte	.LVL84-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL85
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL91
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL81
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL94
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL103
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL94
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL97
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL94
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL98
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL95
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL104
	.4byte	.LVL132
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL132
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL104
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL105
	.4byte	.LVL118
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	.LVL118
	.4byte	.LVL121
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL121
	.4byte	.LFE11
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL104
	.4byte	.LVL120
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL120
	.4byte	.LVL129
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL106
	.4byte	.LVL130
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL111
	.4byte	.LVL112-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL112-1
	.4byte	.LVL115
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL115
	.4byte	.LVL122
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL122
	.4byte	.LVL123
	.2byte	0x3
	.byte	0x78
	.sleb128 -8
	.byte	0x9f
	.4byte	.LVL123
	.4byte	.LVL124
	.2byte	0x6
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x38
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL124
	.4byte	.LVL125-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL125-1
	.4byte	.LVL126
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL127
	.4byte	.LVL131
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL114
	.4byte	.LVL117
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL121
	.4byte	.LVL123
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL133
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
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL134
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
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL136
	.4byte	.LVL141
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL141
	.4byte	.LVL142
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL142
	.4byte	.LVL145
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL146
	.4byte	.LFE23
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL134
	.4byte	.LVL136
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL136
	.4byte	.LVL144
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL145
	.4byte	.LVL146
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL146
	.4byte	.LFE23
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL137
	.4byte	.LVL138
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL148
	.4byte	.LFE23
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL156
	.4byte	.LVL163
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL163
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL177
	.4byte	.LVL181
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL181
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL178
	.4byte	.LVL181
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL181
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL182
	.4byte	.LVL204
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL204
	.4byte	.LVL205
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL205
	.4byte	.LVL206
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL206
	.4byte	.LVL207
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL207
	.4byte	.LVL208
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL208
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL182
	.4byte	.LVL192
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL192
	.4byte	.LFE21
	.2byte	0x2
	.byte	0x91
	.sleb128 -40
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL182
	.4byte	.LVL184
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL184
	.4byte	.LFE21
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL183
	.4byte	.LVL204
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL204
	.4byte	.LVL205
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL205
	.4byte	.LVL206
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL206
	.4byte	.LVL207
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL207
	.4byte	.LVL208
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL208
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL184
	.4byte	.LVL193
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL201
	.4byte	.LVL205
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL205
	.4byte	.LVL207
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL186
	.4byte	.LVL187
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL187
	.4byte	.LVL189
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL189
	.4byte	.LVL190
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL190
	.4byte	.LFE21
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL186
	.4byte	.LVL193
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL193
	.4byte	.LVL205
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL205
	.4byte	.LVL207
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL207
	.4byte	.LFE21
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL195
	.4byte	.LVL196-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL207
	.4byte	.LFE21
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL209
	.4byte	.LVL221
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL221
	.4byte	.LFE22
	.2byte	0x3
	.byte	0x77
	.sleb128 -28
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL209
	.4byte	.LVL216
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL216
	.4byte	.LVL217
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL217
	.4byte	.LVL218
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL218
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL210
	.4byte	.LVL221
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL221
	.4byte	.LFE22
	.2byte	0x3
	.byte	0x77
	.sleb128 -28
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL216
	.4byte	.LVL217
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL218
	.4byte	.LFE22
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL222
	.4byte	.LVL224
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL224
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL225
	.4byte	.LVL231
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL231
	.4byte	.LFE25
	.2byte	0x3
	.byte	0x74
	.sleb128 -28
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL226
	.4byte	.LVL231
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL231
	.4byte	.LFE25
	.2byte	0x3
	.byte	0x74
	.sleb128 -28
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL233
	.4byte	.LVL240
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL240
	.4byte	.LVL241
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL241
	.4byte	.LVL242
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL242
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL234
	.4byte	.LVL240
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL240
	.4byte	.LVL241
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL241
	.4byte	.LVL242
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL242
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL243
	.4byte	.LVL251
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL251
	.4byte	.LVL253
	.2byte	0x3
	.byte	0x75
	.sleb128 -28
	.byte	0x9f
	.4byte	.LVL253
	.4byte	.LVL254
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL254
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL244
	.4byte	.LVL251
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL251
	.4byte	.LVL253
	.2byte	0x3
	.byte	0x75
	.sleb128 -28
	.byte	0x9f
	.4byte	.LVL253
	.4byte	.LVL254
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL254
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL251
	.4byte	.LVL253
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LVL267
	.4byte	.LVL272
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL272
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL268
	.4byte	.LVL272
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL272
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST63:
	.4byte	.LVL273
	.4byte	.LVL278
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL278
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST64:
	.4byte	.LVL274
	.4byte	.LVL278
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL278
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST65:
	.4byte	.LVL279
	.4byte	.LVL284
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL284
	.4byte	.LFE32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST66:
	.4byte	.LVL280
	.4byte	.LVL284
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL284
	.4byte	.LFE32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST67:
	.4byte	.LVL285
	.4byte	.LVL290
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL290
	.4byte	.LFE33
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST68:
	.4byte	.LVL286
	.4byte	.LVL290
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL290
	.4byte	.LFE33
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0xdc
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB5
	.4byte	.LBE5
	.4byte	.LBB6
	.4byte	.LBE6
	.4byte	0
	.4byte	0
	.4byte	.LBB7
	.4byte	.LBE7
	.4byte	.LBB8
	.4byte	.LBE8
	.4byte	0
	.4byte	0
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF20:
	.string	"count"
.LASF105:
	.string	"malloc"
.LASF68:
	.string	"xRingbufferReceiveGeneric"
.LASF3:
	.string	"size_t"
.LASF46:
	.string	"maxItemSize"
.LASF37:
	.string	"ringbuf_t"
.LASF39:
	.string	"items_buffered_sem"
.LASF4:
	.string	"__uint8_t"
.LASF75:
	.string	"buf_length"
.LASF69:
	.string	"ringbuf"
.LASF98:
	.string	"xRingbufferRemoveFromQueueSetRead"
.LASF51:
	.string	"ringbufferFreeMem"
.LASF74:
	.string	"done"
.LASF9:
	.string	"long long unsigned int"
.LASF78:
	.string	"vRingbufferDelete"
.LASF23:
	.string	"QueueHandle_t"
.LASF66:
	.string	"copyItemToRingbufByteBuf"
.LASF110:
	.string	"free"
.LASF102:
	.string	"xQueueGenericReceive"
.LASF42:
	.string	"read_ptr"
.LASF8:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF67:
	.string	"copyItemToRingbufAllowSplit"
.LASF93:
	.string	"vRingbufferReturnItem"
.LASF40:
	.string	"size"
.LASF85:
	.string	"ticks_remaining"
.LASF109:
	.string	"vPortCPUInitializeMutex"
.LASF35:
	.string	"iflag_dummydata"
.LASF104:
	.string	"vTaskExitCritical"
.LASF10:
	.string	"long int"
.LASF36:
	.string	"itemflag_t"
.LASF106:
	.string	"memcpy"
.LASF18:
	.string	"TickType_t"
.LASF71:
	.string	"ticks_to_wait"
.LASF58:
	.string	"returnItemToRingbufDefault"
.LASF16:
	.string	"BaseType_t"
.LASF79:
	.string	"xRingbufferCreate"
.LASF7:
	.string	"__uint32_t"
.LASF82:
	.string	"dataSize"
.LASF103:
	.string	"vTaskEnterCritical"
.LASF118:
	.string	"C:/esp/esp-idf/components/freertos/ringbuf.c"
.LASF0:
	.string	"unsigned int"
.LASF38:
	.string	"free_space_sem"
.LASF95:
	.string	"xRingbufferAddToQueueSetRead"
.LASF92:
	.string	"xRingbufferReceiveUpToFromISR"
.LASF12:
	.string	"long unsigned int"
.LASF59:
	.string	"__FUNCTION__"
.LASF65:
	.string	"rem_len"
.LASF61:
	.string	"copyItemToRingbufNoSplit"
.LASF113:
	.string	"xQueueGenericSend"
.LASF44:
	.string	"data"
.LASF30:
	.string	"ringbuf_type_t"
.LASF49:
	.string	"returnItemToRingbufImpl"
.LASF26:
	.string	"RingbufHandle_t"
.LASF76:
	.string	"type"
.LASF57:
	.string	"returnItemToRingbufBytebuf"
.LASF86:
	.string	"xRingbufferSendFromISR"
.LASF112:
	.string	"xTaskGetTickCount"
.LASF56:
	.string	"item"
.LASF54:
	.string	"wanted_length"
.LASF72:
	.string	"wanted_size"
.LASF88:
	.string	"write_succeeded"
.LASF11:
	.string	"sizetype"
.LASF111:
	.string	"vQueueDelete"
.LASF100:
	.string	"ets_printf"
.LASF119:
	.string	"C:\\\\esp\\\\ArkPOS2-esp\\\\build\\\\freertos"
.LASF52:
	.string	"getItemFromRingbufByteBuf"
.LASF89:
	.string	"xRingbufferReceive"
.LASF43:
	.string	"free_ptr"
.LASF96:
	.string	"xQueueSet"
.LASF32:
	.string	"flag_bytebuf"
.LASF33:
	.string	"rbflag_t"
.LASF115:
	.string	"xQueueAddToSet"
.LASF94:
	.string	"vRingbufferReturnItemFromISR"
.LASF48:
	.string	"getItemFromRingbufImpl"
.LASF24:
	.string	"QueueSetHandle_t"
.LASF22:
	.string	"_Bool"
.LASF5:
	.string	"unsigned char"
.LASF117:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF6:
	.string	"short int"
.LASF107:
	.string	"memset"
.LASF114:
	.string	"xQueueGiveFromISR"
.LASF73:
	.string	"itemData"
.LASF108:
	.string	"xQueueGenericCreate"
.LASF70:
	.string	"item_size"
.LASF50:
	.string	"buf_entry_hdr_t"
.LASF84:
	.string	"ticks_end"
.LASF27:
	.string	"RINGBUF_TYPE_NOSPLIT"
.LASF97:
	.string	"xRingbufferAddToQueueSetWrite"
.LASF60:
	.string	"getItemFromRingbufDefault"
.LASF15:
	.string	"uint32_t"
.LASF47:
	.string	"copyItemToRingbufImpl"
.LASF99:
	.string	"xRingbufferRemoveFromQueueSetWrite"
.LASF19:
	.string	"owner"
.LASF53:
	.string	"length"
.LASF25:
	.string	"SemaphoreHandle_t"
.LASF13:
	.string	"char"
.LASF101:
	.string	"abort"
.LASF81:
	.string	"xRingbufferSend"
.LASF62:
	.string	"buffer"
.LASF1:
	.string	"short unsigned int"
.LASF41:
	.string	"write_ptr"
.LASF29:
	.string	"RINGBUF_TYPE_BYTEBUF"
.LASF21:
	.string	"portMUX_TYPE"
.LASF80:
	.string	"xRingbufferGetMaxItemSize"
.LASF63:
	.string	"buffer_size"
.LASF28:
	.string	"RINGBUF_TYPE_ALLOWSPLIT"
.LASF77:
	.string	"xRingbufferPrintInfo"
.LASF14:
	.string	"uint8_t"
.LASF45:
	.string	"flags"
.LASF31:
	.string	"flag_allowsplit"
.LASF64:
	.string	"rbuffer_size"
.LASF91:
	.string	"xRingbufferReceiveUpTo"
.LASF83:
	.string	"needed_size"
.LASF87:
	.string	"higher_prio_task_awoken"
.LASF116:
	.string	"xQueueRemoveFromSet"
.LASF55:
	.string	"free_size"
.LASF17:
	.string	"UBaseType_t"
.LASF90:
	.string	"xRingbufferReceiveFromISR"
.LASF34:
	.string	"iflag_free"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-61-gab8375a) 5.2.0"
