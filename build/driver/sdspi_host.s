	.file	"sdspi_host.c"
	.text
.Ltext0:
	.section	.text.is_valid_slot,"ax",@progbits
	.align	4
	.type	is_valid_slot, @function
is_valid_slot:
.LFB16:
	.file 1 "C:/esp/esp-idf/components/driver/sdspi_host.c"
	.loc 1 102 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 103 0
	addi.n	a2, a2, -1
.LVL1:
	movi.n	a8, 1
	bltui	a2, 2, .L2
	movi.n	a8, 0
.L2:
	.loc 1 104 0
	extui	a2, a8, 0, 1
.LVL2:
	retw.n
.LFE16:
	.size	is_valid_slot, .-is_valid_slot
	.section	.text.spi_handle,"ax",@progbits
	.literal_position
	.literal .LC1, s_slots
	.align	4
	.type	spi_handle, @function
spi_handle:
.LFB17:
	.loc 1 107 0
.LVL3:
	entry	sp, 32
.LCFI1:
	.loc 1 108 0
	slli	a2, a2, 4
.LVL4:
	l32r	a8, .LC1
	add.n	a2, a8, a2
	.loc 1 109 0
	l32i.n	a2, a2, 0
	retw.n
.LFE17:
	.size	spi_handle, .-spi_handle
	.section	.text.is_slot_initialized,"ax",@progbits
	.align	4
	.type	is_slot_initialized, @function
is_slot_initialized:
.LFB18:
	.loc 1 112 0
.LVL5:
	entry	sp, 32
.LCFI2:
	.loc 1 113 0
	mov.n	a10, a2
	call8	spi_handle
.LVL6:
	movi.n	a2, 0
.LVL7:
	movi.n	a8, 1
	movnez	a2, a8, a10
	.loc 1 114 0
	retw.n
.LFE18:
	.size	is_slot_initialized, .-is_slot_initialized
	.section	.text.data_crc_enabled,"ax",@progbits
	.literal_position
	.literal .LC2, s_slots
	.align	4
	.type	data_crc_enabled, @function
data_crc_enabled:
.LFB19:
	.loc 1 117 0
.LVL8:
	entry	sp, 32
.LCFI3:
	.loc 1 118 0
	slli	a2, a2, 4
.LVL9:
	l32r	a8, .LC2
	add.n	a2, a8, a2
	l32i.n	a2, a2, 4
	.loc 1 119 0
	extui	a2, a2, 24, 1
	retw.n
.LFE19:
	.size	data_crc_enabled, .-data_crc_enabled
	.section	.text.release_transaction,"ax",@progbits
	.literal_position
	.literal .LC3, s_slots
	.align	4
	.type	release_transaction, @function
release_transaction:
.LFB22:
	.loc 1 145 0
.LVL10:
	entry	sp, 32
.LCFI4:
	.loc 1 146 0
	slli	a2, a2, 4
.LVL11:
	l32r	a8, .LC3
	add.n	a2, a8, a2
	l32i.n	a8, a2, 4
	extui	a8, a8, 25, 3
	addi.n	a8, a8, 7
	extui	a8, a8, 0, 3
	slli	a9, a8, 1
	l8ui	a10, a2, 7
	movi.n	a8, -0xf
	and	a8, a10, a8
	or	a8, a8, a9
	s8i	a8, a2, 7
	retw.n
.LFE22:
	.size	release_transaction, .-release_transaction
	.section	.text.ptr_dma_compatible,"ax",@progbits
	.literal_position
	.literal .LC4, -1073405952
	.literal .LC5, 335871
	.align	4
	.type	ptr_dma_compatible, @function
ptr_dma_compatible:
.LFB26:
	.loc 1 190 0
.LVL12:
	entry	sp, 32
.LCFI5:
	.loc 1 191 0
	l32r	a8, .LC4
	add.n	a8, a2, a8
	movi.n	a2, 1
.LVL13:
	l32r	a9, .LC5
	bgeu	a9, a8, .L8
	movi.n	a2, 0
.L8:
	.loc 1 193 0
	extui	a2, a2, 0, 1
	retw.n
.LFE26:
	.size	ptr_dma_compatible, .-ptr_dma_compatible
	.section	.text.init_spi_dev,"ax",@progbits
	.literal_position
	.literal .LC6, s_slots
	.align	4
	.type	init_spi_dev, @function
init_spi_dev:
.LFB27:
	.loc 1 202 0
.LVL14:
	entry	sp, 64
.LCFI6:
	.loc 1 203 0
	mov.n	a10, a2
	call8	spi_handle
.LVL15:
	beqz.n	a10, .L10
	.loc 1 205 0
	call8	spi_bus_remove_device
.LVL16:
	.loc 1 206 0
	slli	a8, a2, 4
	l32r	a9, .LC6
	add.n	a8, a9, a8
	movi.n	a9, 0
	s32i.n	a9, a8, 0
.L10:
	.loc 1 208 0
	movi.n	a8, 0
	s32i.n	a8, sp, 0
	s32i.n	a8, sp, 4
	s32i.n	a8, sp, 16
	s32i.n	a8, sp, 24
	s32i.n	a8, sp, 28
	s32i.n	a3, sp, 8
	movi.n	a3, -1
.LVL17:
	s32i.n	a3, sp, 12
	movi.n	a3, 4
	s32i.n	a3, sp, 20
	.loc 1 216 0
	ssl	a3
	sll	a3, a2
	l32r	a12, .LC6
	add.n	a12, a12, a3
	mov.n	a11, sp
	mov.n	a10, a2
	call8	spi_bus_add_device
.LVL18:
	.loc 1 217 0
	mov.n	a2, a10
.LVL19:
	retw.n
.LFE27:
	.size	init_spi_dev, .-init_spi_dev
	.section	.text.cs_high,"ax",@progbits
	.literal_position
	.literal .LC7, s_slots
	.align	4
	.type	cs_high, @function
cs_high:
.LFB12:
	.loc 1 72 0
.LVL20:
	entry	sp, 32
.LCFI7:
	.loc 1 73 0
	slli	a2, a2, 4
.LVL21:
	l32r	a8, .LC7
	add.n	a2, a8, a2
	movi.n	a11, 1
	l8ui	a10, a2, 4
	call8	gpio_set_level
.LVL22:
	retw.n
.LFE12:
	.size	cs_high, .-cs_high
	.section	.text.cs_low,"ax",@progbits
	.literal_position
	.literal .LC8, s_slots
	.align	4
	.type	cs_low, @function
cs_low:
.LFB13:
	.loc 1 78 0
.LVL23:
	entry	sp, 32
.LCFI8:
	.loc 1 79 0
	slli	a2, a2, 4
.LVL24:
	l32r	a8, .LC8
	add.n	a2, a8, a2
	movi.n	a11, 0
	l8ui	a10, a2, 4
	call8	gpio_set_level
.LVL25:
	retw.n
.LFE13:
	.size	cs_low, .-cs_low
	.section	.text.card_missing,"ax",@progbits
	.literal_position
	.literal .LC9, s_slots
	.align	4
	.type	card_missing, @function
card_missing:
.LFB15:
	.loc 1 93 0
.LVL26:
	entry	sp, 32
.LCFI9:
	.loc 1 94 0
	slli	a2, a2, 4
.LVL27:
	l32r	a8, .LC9
	add.n	a2, a8, a2
	l8ui	a10, a2, 5
	movi	a2, 0xff
	beq	a10, a2, .L15
	.loc 1 97 0
	call8	gpio_get_level
.LVL28:
	addi.n	a10, a10, -1
	movi.n	a2, 0
	movi.n	a8, 1
	moveqz	a2, a8, a10
	extui	a2, a2, 0, 8
	retw.n
.L15:
	.loc 1 95 0
	movi.n	a2, 0
	.loc 1 98 0
	retw.n
.LFE15:
	.size	card_missing, .-card_missing
	.section	.text.card_write_protected,"ax",@progbits
	.literal_position
	.literal .LC10, s_slots
	.align	4
	.type	card_write_protected, @function
card_write_protected:
.LFB14:
	.loc 1 84 0
.LVL29:
	entry	sp, 32
.LCFI10:
	.loc 1 85 0
	slli	a2, a2, 4
.LVL30:
	l32r	a8, .LC10
	add.n	a2, a8, a2
	l8ui	a10, a2, 6
	movi	a2, 0xff
	beq	a10, a2, .L18
	.loc 1 88 0
	call8	gpio_get_level
.LVL31:
	movi.n	a2, 0
	movi.n	a8, 1
	moveqz	a2, a8, a10
	extui	a2, a2, 0, 8
	retw.n
.L18:
	.loc 1 86 0
	movi.n	a2, 0
	.loc 1 89 0
	retw.n
.LFE14:
	.size	card_write_protected, .-card_write_protected
	.section	.text.go_idle_clockout,"ax",@progbits
	.align	4
	.type	go_idle_clockout, @function
go_idle_clockout:
.LFB25:
	.loc 1 174 0
.LVL32:
	entry	sp, 96
.LCFI11:
	.loc 1 177 0
	movi.n	a12, 0xc
	movi	a11, 0xff
	mov.n	a10, sp
	call8	memset
.LVL33:
	.loc 1 178 0
	movi.n	a8, 0
	s32i.n	a8, sp, 16
	s32i.n	a8, sp, 20
	s32i.n	a8, sp, 24
	s32i.n	a8, sp, 28
	s32i.n	a8, sp, 36
	s32i.n	a8, sp, 40
	s32i.n	a8, sp, 52
	movi.n	a8, 0x50
	s32i.n	a8, sp, 32
	s32i.n	sp, sp, 44
	s32i.n	sp, sp, 48
	.loc 1 183 0
	mov.n	a10, a2
	call8	spi_handle
.LVL34:
	addi	a11, sp, 16
	call8	spi_device_transmit
.LVL35:
	retw.n
.LFE25:
	.size	go_idle_clockout, .-go_idle_clockout
	.section	.text.poll_response_token,"ax",@progbits
	.align	4
	.type	poll_response_token, @function
poll_response_token:
.LFB35:
	.loc 1 457 0
.LVL36:
	entry	sp, 48
.LCFI12:
	.loc 1 459 0
	movi.n	a4, 0
	s32i.n	a4, a3, 4
	s32i.n	a4, a3, 8
	s32i.n	a4, a3, 12
	s32i.n	a4, a3, 20
	s32i.n	a4, a3, 24
	s32i.n	a4, a3, 32
	s32i.n	a4, a3, 36
	movi.n	a8, 4
	s32i.n	a8, a3, 0
	movi.n	a8, 8
	s32i.n	a8, a3, 16
	s32i.n	sp, a3, 28
.LVL37:
.LBB2:
	.loc 1 466 0
	j	.L21
.LVL38:
.L23:
	.loc 1 467 0
	movi.n	a8, -1
	s8i	a8, sp, 0
	.loc 1 468 0
	movi.n	a8, 0
	s8i	a8, a3, 32
	.loc 1 469 0
	mov.n	a10, a2
	call8	spi_handle
.LVL39:
	mov.n	a11, a3
	call8	spi_device_transmit
.LVL40:
	.loc 1 470 0
	bnez.n	a10, .L24
	.loc 1 473 0
	l8ui	a8, a3, 32
	extui	a8, a8, 0, 5
	beqi	a8, 5, .L25
	.loc 1 476 0
	movi.n	a9, 0xb
	beq	a8, a9, .L26
	.loc 1 479 0
	movi.n	a9, 0xd
	beq	a8, a9, .L27
	.loc 1 482 0
	movi	a8, 0x3e7
	beq	a4, a8, .L28
	.loc 1 466 0 discriminator 2
	addi.n	a4, a4, 1
.LVL41:
.L21:
	.loc 1 466 0 is_stmt 0 discriminator 1
	movi	a8, 0x3e7
	bge	a8, a4, .L23
.LBE2:
	.loc 1 487 0 is_stmt 1
	movi.n	a2, 0
.LVL42:
.LBB3:
	retw.n
.LVL43:
.L24:
	.loc 1 471 0
	mov.n	a2, a10
.LVL44:
	retw.n
.LVL45:
.L25:
.LBE3:
	.loc 1 487 0
	movi.n	a2, 0
.LVL46:
	retw.n
.LVL47:
.L26:
.LBB4:
	.loc 1 477 0
	movi	a2, 0x109
.LVL48:
	retw.n
.LVL49:
.L27:
	.loc 1 480 0
	movi	a2, 0x108
.LVL50:
	retw.n
.LVL51:
.L28:
	.loc 1 483 0
	movi	a2, 0x107
.LVL52:
.LBE4:
	.loc 1 488 0
	retw.n
.LFE35:
	.size	poll_response_token, .-poll_response_token
	.section	.text.poll_busy,"ax",@progbits
	.align	4
	.type	poll_busy, @function
poll_busy:
.LFB34:
	.loc 1 430 0
.LVL53:
	entry	sp, 48
.LCFI13:
	.loc 1 432 0
	movi.n	a4, 0
	s32i.n	a4, a3, 4
	s32i.n	a4, a3, 8
	s32i.n	a4, a3, 12
	s32i.n	a4, a3, 20
	s32i.n	a4, a3, 24
	s32i.n	a4, a3, 32
	s32i.n	a4, a3, 36
	movi.n	a8, 4
	s32i.n	a8, a3, 0
	movi.n	a8, 8
	s32i.n	a8, a3, 16
	s32i.n	sp, a3, 28
.LVL54:
.LBB5:
	.loc 1 439 0
	j	.L30
.LVL55:
.L33:
	.loc 1 440 0
	movi.n	a8, -1
	s8i	a8, sp, 0
	.loc 1 441 0
	movi.n	a8, 0
	s8i	a8, a3, 32
	.loc 1 442 0
	mov.n	a10, a2
	call8	spi_handle
.LVL56:
	mov.n	a11, a3
	call8	spi_device_transmit
.LVL57:
	.loc 1 443 0
	bnez.n	a10, .L34
	.loc 1 446 0
	l8ui	a8, a3, 32
	beqz.n	a8, .L32
	.loc 1 447 0
	movi	a8, 0x3e5
	blt	a8, a4, .L32
	.loc 1 448 0
	movi	a4, 0x3e6
.LVL58:
.L32:
	.loc 1 439 0 discriminator 2
	addi.n	a4, a4, 1
.LVL59:
.L30:
	.loc 1 439 0 is_stmt 0 discriminator 1
	movi	a8, 0x3e7
	bge	a8, a4, .L33
.LBE5:
	.loc 1 452 0 is_stmt 1
	movi.n	a2, 0
.LVL60:
.LBB6:
	retw.n
.LVL61:
.L34:
	.loc 1 444 0
	mov.n	a2, a10
.LVL62:
.LBE6:
	.loc 1 453 0
	retw.n
.LFE34:
	.size	poll_busy, .-poll_busy
	.section	.text.poll_data_token,"ax",@progbits
	.align	4
	.type	poll_data_token, @function
poll_data_token:
.LFB36:
	.loc 1 495 0
.LVL63:
	entry	sp, 48
.LCFI14:
	.loc 1 497 0
	movi.n	a6, 0
	s32i.n	a6, a3, 0
	s32i.n	a6, a3, 4
	s32i.n	a6, a3, 8
	s32i.n	a6, a3, 12
	s32i.n	a6, a3, 20
	s32i.n	a6, a3, 24
	s32i.n	a6, a3, 36
	movi.n	a7, 0x40
	s32i.n	a7, a3, 16
	s32i.n	sp, a3, 28
	s32i.n	sp, a3, 32
.LVL64:
.LBB7:
	.loc 1 503 0
	j	.L37
.LVL65:
.L43:
.LBB8:
	.loc 1 504 0
	movi.n	a12, 8
	movi	a11, 0xff
	mov.n	a10, sp
	call8	memset
.LVL66:
	.loc 1 505 0
	mov.n	a10, a2
	call8	spi_handle
.LVL67:
	mov.n	a11, a3
	call8	spi_device_transmit
.LVL68:
	.loc 1 506 0
	bnez.n	a10, .L44
	movi.n	a9, 0
	j	.L39
.LVL69:
.L42:
.LBB9:
.LBB10:
	.loc 1 511 0
	add.n	a8, sp, a9
	l8ui	a8, a8, 0
.LVL70:
	.loc 1 512 0
	movi	a10, 0xfe
	bne	a8, a10, .L40
.LVL71:
	.loc 1 514 0
	addi.n	a11, a12, 1
	movi.n	a7, 7
	sub	a7, a7, a12
	mov.n	a12, a7
	add.n	a11, sp, a11
	mov.n	a10, a4
	call8	memcpy
.LVL72:
	.loc 1 515 0
	s32i.n	a7, a5, 0
	.loc 1 513 0
	movi.n	a8, 1
	.loc 1 516 0
	j	.L41
.LVL73:
.L40:
	.loc 1 518 0
	addi.n	a8, a8, -1
	extui	a8, a8, 0, 8
	movi	a10, 0xfd
	bgeu	a10, a8, .L45
.LBE10:
	.loc 1 510 0 discriminator 2
	addi.n	a9, a9, 1
.LVL74:
.L39:
	.loc 1 510 0 is_stmt 0 discriminator 1
	mov.n	a12, a9
	bltui	a9, 8, .L42
.LBE9:
	.loc 1 509 0 is_stmt 1
	movi.n	a8, 0
.LVL75:
.L41:
	.loc 1 524 0
	bnez.n	a8, .L46
	.loc 1 527 0
	movi	a8, 0x3e7
.LVL76:
	beq	a6, a8, .L47
.LBE8:
	.loc 1 503 0 discriminator 2
	addi.n	a6, a6, 1
.LVL77:
.L37:
	.loc 1 503 0 is_stmt 0 discriminator 1
	movi	a8, 0x3e7
	bge	a8, a6, .L43
.LBE7:
	.loc 1 531 0 is_stmt 1
	movi.n	a2, 0
.LVL78:
.LBB15:
	retw.n
.LVL79:
.L44:
.LBB13:
	.loc 1 507 0
	mov.n	a2, a10
.LVL80:
	retw.n
.LVL81:
.L45:
.LBB12:
.LBB11:
	.loc 1 521 0
	movi	a2, 0x108
.LVL82:
	retw.n
.LVL83:
.L46:
.LBE11:
.LBE12:
.LBE13:
.LBE15:
	.loc 1 531 0
	movi.n	a2, 0
.LVL84:
	retw.n
.LVL85:
.L47:
.LBB16:
.LBB14:
	.loc 1 528 0
	movi	a2, 0x107
.LVL86:
.LBE14:
.LBE16:
	.loc 1 532 0
	retw.n
.LFE36:
	.size	poll_data_token, .-poll_data_token
	.section	.text.start_command_default,"ax",@progbits
	.align	4
	.type	start_command_default, @function
start_command_default:
.LFB33:
	.loc 1 407 0
.LVL87:
	entry	sp, 80
.LCFI15:
	mov.n	a10, a2
.LVL88:
	.loc 1 409 0
	bbsi	a3, 2, .L50
	.loc 1 411 0
	bbsi	a3, 3, .L51
	.loc 1 413 0
	bbsi	a3, 4, .L52
	.loc 1 415 0
	bbsi	a3, 5, .L53
	.loc 1 408 0
	movi.n	a9, 8
	j	.L49
.L50:
	.loc 1 410 0
	movi.n	a9, 8
	j	.L49
.L51:
	.loc 1 412 0
	movi.n	a9, 9
	j	.L49
.L52:
	.loc 1 414 0
	movi.n	a9, 0xc
	j	.L49
.L53:
	.loc 1 416 0
	movi.n	a9, 0xc
.L49:
.LVL89:
	.loc 1 418 0
	movi.n	a8, 0
	s32i.n	a8, sp, 0
	s32i.n	a8, sp, 4
	s32i.n	a8, sp, 8
	s32i.n	a8, sp, 12
	s32i.n	a8, sp, 20
	s32i.n	a8, sp, 24
	s32i.n	a8, sp, 36
	.loc 1 420 0
	slli	a8, a9, 3
	.loc 1 418 0
	s32i.n	a8, sp, 16
	s32i.n	a4, sp, 28
	s32i.n	a4, sp, 32
	.loc 1 424 0
	call8	spi_handle
.LVL90:
	mov.n	a11, sp
	call8	spi_device_transmit
.LVL91:
	.loc 1 426 0
	mov.n	a2, a10
.LVL92:
	retw.n
.LFE33:
	.size	start_command_default, .-start_command_default
	.section	.text.release_bus,"ax",@progbits
	.align	4
	.type	release_bus, @function
release_bus:
.LFB24:
	.loc 1 162 0
.LVL93:
	entry	sp, 80
.LCFI16:
	.loc 1 163 0
	movi.n	a8, 0
	s32i.n	a8, sp, 4
	s32i.n	a8, sp, 8
	s32i.n	a8, sp, 12
	s32i.n	a8, sp, 20
	s32i.n	a8, sp, 24
	s32i.n	a8, sp, 28
	s32i.n	a8, sp, 32
	s32i.n	a8, sp, 36
	movi.n	a8, 0xc
	s32i.n	a8, sp, 0
	movi.n	a8, 8
	s32i.n	a8, sp, 16
	movi.n	a8, -1
	s8i	a8, sp, 28
	.loc 1 168 0
	mov.n	a10, a2
	call8	spi_handle
.LVL94:
	mov.n	a11, sp
	call8	spi_device_transmit
.LVL95:
	retw.n
.LFE24:
	.size	release_bus, .-release_bus
	.section	.text.get_block_buf,"ax",@progbits
	.literal_position
	.literal .LC11, s_slots
	.align	4
	.type	get_block_buf, @function
get_block_buf:
.LFB20:
	.loc 1 124 0
.LVL96:
	entry	sp, 32
.LCFI17:
	.loc 1 125 0
	slli	a8, a2, 4
	l32r	a9, .LC11
	add.n	a8, a9, a8
	l32i.n	a8, a8, 8
	bnez.n	a8, .L56
	.loc 1 126 0
	movi.n	a11, 8
	movi	a10, 0x204
	call8	heap_caps_malloc
.LVL97:
	slli	a8, a2, 4
	l32r	a9, .LC11
	add.n	a8, a9, a8
	s32i.n	a10, a8, 8
	.loc 1 127 0
	beqz.n	a10, .L58
.L56:
	.loc 1 131 0
	slli	a2, a2, 4
.LVL98:
	l32r	a8, .LC11
	add.n	a2, a8, a2
	l32i.n	a2, a2, 8
	s32i.n	a2, a3, 0
	.loc 1 132 0
	movi.n	a2, 0
	retw.n
.LVL99:
.L58:
	.loc 1 128 0
	movi	a2, 0x101
.LVL100:
	.loc 1 133 0
	retw.n
.LFE20:
	.size	get_block_buf, .-get_block_buf
	.section	.text.wait_for_transactions,"ax",@progbits
	.literal_position
	.literal .LC12, s_slots
	.align	4
	.type	wait_for_transactions, @function
wait_for_transactions:
.LFB23:
	.loc 1 150 0
.LVL101:
	entry	sp, 48
.LCFI18:
	.loc 1 151 0
	slli	a3, a2, 4
	l32r	a4, .LC12
	add.n	a3, a4, a3
	l32i.n	a4, a3, 4
	extui	a4, a4, 25, 3
.LVL102:
.LBB17:
	.loc 1 152 0
	movi.n	a3, 0
	j	.L60
.LVL103:
.L61:
.LBB18:
	.loc 1 154 0 discriminator 3
	mov.n	a10, a2
	call8	spi_handle
.LVL104:
	movi.n	a12, -1
	mov.n	a11, sp
	call8	spi_device_get_trans_result
.LVL105:
	.loc 1 155 0 discriminator 3
	mov.n	a10, a2
	call8	release_transaction
.LVL106:
.LBE18:
	.loc 1 152 0 discriminator 3
	addi.n	a3, a3, 1
.LVL107:
.L60:
	.loc 1 152 0 is_stmt 0 discriminator 1
	bltu	a3, a4, .L61
.LBE17:
	.loc 1 157 0 is_stmt 1
	retw.n
.LFE23:
	.size	wait_for_transactions, .-wait_for_transactions
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC14:
	.string	"used_transaction_count < SDSPI_TRANSACTION_COUNT"
	.align	4
.LC17:
	.string	"C:/esp/esp-idf/components/driver/sdspi_host.c"
	.section	.text.get_transaction,"ax",@progbits
	.literal_position
	.literal .LC13, s_slots
	.literal .LC15, .LC14
	.literal .LC16, __func__$5976
	.literal .LC18, .LC17
	.align	4
	.type	get_transaction, @function
get_transaction:
.LFB21:
	.loc 1 136 0
.LVL108:
	entry	sp, 32
.LCFI19:
	.loc 1 137 0
	slli	a8, a2, 4
	l32r	a9, .LC13
	add.n	a8, a9, a8
	l32i.n	a8, a8, 4
	extui	a8, a8, 25, 3
.LVL109:
	.loc 1 138 0
	bltui	a8, 4, .L63
	.loc 1 138 0 is_stmt 0 discriminator 1
	l32r	a13, .LC15
	l32r	a12, .LC16
	movi	a11, 0x8a
	l32r	a10, .LC18
	call8	__assert_func
.LVL110:
.L63:
	.loc 1 139 0 is_stmt 1
	slli	a2, a2, 4
.LVL111:
	l32r	a10, .LC13
	add.n	a10, a10, a2
	l32i.n	a11, a10, 12
	addx4	a9, a8, a8
	slli	a2, a9, 3
.LVL112:
	.loc 1 140 0
	addi.n	a8, a8, 1
.LVL113:
	extui	a8, a8, 0, 3
.LVL114:
	slli	a9, a8, 1
	l8ui	a12, a10, 7
	movi.n	a8, -0xf
	and	a8, a12, a8
	or	a8, a8, a9
	s8i	a8, a10, 7
.LVL115:
	.loc 1 142 0
	add.n	a2, a11, a2
.LVL116:
	retw.n
.LFE21:
	.size	get_transaction, .-get_transaction
	.section	.rodata.str1.4
	.align	4
.LC20:
	.string	"sdspi_host"
	.align	4
.LC22:
	.string	"\033[0;33mW (%d) %s: %s: card write protected\033[0m\n"
	.section	.rodata
	.align	4
.LC0:
	.byte	-3
	.byte	-1
	.section	.text.start_command_write_blocks,"ax",@progbits
	.literal_position
	.literal .LC19, __func__$6129
	.literal .LC21, .LC20
	.literal .LC23, .LC22
	.literal .LC24, .LC0
	.align	4
	.type	start_command_write_blocks, @function
start_command_write_blocks:
.LFB38:
	.loc 1 691 0
.LVL117:
	entry	sp, 64
.LCFI20:
	s32i.n	a3, sp, 16
	.loc 1 692 0
	mov.n	a10, a2
	call8	card_write_protected
.LVL118:
	beqz.n	a10, .L65
	.loc 1 693 0 discriminator 1
	call8	esp_log_timestamp
.LVL119:
	l32r	a11, .LC21
	l32r	a15, .LC19
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC23
	movi.n	a10, 2
	call8	esp_log_write
.LVL120:
	.loc 1 694 0 discriminator 1
	movi	a2, 0x103
.LVL121:
	retw.n
.LVL122:
.L65:
	.loc 1 696 0
	mov.n	a10, a2
	call8	get_transaction
.LVL123:
	mov.n	a3, a10
.LVL124:
	.loc 1 697 0
	movi.n	a6, 0
	s32i.n	a6, a10, 0
	s32i.n	a6, a10, 4
	s32i.n	a6, a10, 8
	s32i.n	a6, a10, 12
	s32i.n	a6, a10, 20
	s32i.n	a6, a10, 24
	s32i.n	a6, a10, 36
	movi.n	a7, 0x40
	s32i.n	a7, a10, 16
	l32i.n	a8, sp, 16
	s32i.n	a8, a10, 28
	s32i.n	a8, a10, 32
	.loc 1 702 0
	mov.n	a10, a2
	call8	spi_handle
.LVL125:
	mov.n	a12, a6
	mov.n	a11, a3
	call8	spi_device_queue_trans
.LVL126:
	.loc 1 703 0
	bne	a10, a6, .L74
	.loc 1 706 0
	movi	a3, 0x200
.LVL127:
	bltu	a3, a5, .L75
	movi	a3, 0xfe
	j	.L67
.L75:
	movi	a3, 0xfc
.L67:
	.loc 1 706 0 is_stmt 0 discriminator 4
	s8i	a3, sp, 0
	.loc 1 708 0 is_stmt 1 discriminator 4
	mov.n	a10, a2
.LVL128:
	call8	wait_for_transactions
.LVL129:
	.loc 1 710 0 discriminator 4
	j	.L68
.L72:
.LBB19:
	.loc 1 713 0
	mov.n	a10, a2
	call8	get_transaction
.LVL130:
	mov.n	a3, a10
.LVL131:
	.loc 1 714 0
	movi.n	a6, 0
	s32i.n	a6, a10, 0
	s32i.n	a6, a10, 4
	s32i.n	a6, a10, 8
	s32i.n	a6, a10, 12
	s32i.n	a6, a10, 20
	s32i.n	a6, a10, 24
	s32i.n	a6, a10, 32
	s32i.n	a6, a10, 36
	movi.n	a7, 8
	s32i.n	a7, a10, 16
	s32i.n	sp, a10, 28
	.loc 1 718 0
	mov.n	a10, a2
	call8	spi_handle
.LVL132:
	mov.n	a12, a6
	mov.n	a11, a3
	call8	spi_device_queue_trans
.LVL133:
	.loc 1 719 0
	bne	a10, a6, .L76
	.loc 1 724 0
	movi	a6, 0x200
	minu	a6, a5, a6
.LVL134:
	.loc 1 726 0
	mov.n	a10, a4
.LVL135:
	call8	ptr_dma_compatible
.LVL136:
	bnez.n	a10, .L77
.LBB20:
	.loc 1 729 0
	addi.n	a11, sp, 4
	mov.n	a10, a2
	call8	get_block_buf
.LVL137:
	.loc 1 730 0
	beqz.n	a10, .L71
	.loc 1 731 0
	mov.n	a2, a10
.LVL138:
	retw.n
.LVL139:
.L71:
	.loc 1 733 0
	mov.n	a12, a6
	mov.n	a11, a4
	l32i.n	a10, sp, 4
.LVL140:
	call8	memcpy
.LVL141:
	.loc 1 734 0
	l32i.n	a3, sp, 4
.LVL142:
	s32i.n	a3, sp, 20
.LVL143:
	j	.L70
.LVL144:
.L77:
.LBE20:
	.loc 1 725 0
	s32i.n	a4, sp, 20
.LVL145:
.L70:
	.loc 1 738 0
	mov.n	a10, a2
	call8	get_transaction
.LVL146:
	mov.n	a3, a10
.LVL147:
	.loc 1 740 0
	slli	a8, a6, 3
	.loc 1 739 0
	movi.n	a7, 0
	s32i.n	a7, a10, 0
	s32i.n	a7, a10, 4
	s32i.n	a7, a10, 8
	s32i.n	a7, a10, 12
	s32i.n	a7, a10, 20
	s32i.n	a7, a10, 24
	s32i.n	a7, a10, 32
	s32i.n	a7, a10, 36
	s32i.n	a8, a10, 16
	l32i.n	a8, sp, 20
	s32i.n	a8, a10, 28
	.loc 1 743 0
	mov.n	a10, a2
	call8	spi_handle
.LVL148:
	mov.n	a12, a7
	mov.n	a11, a3
	call8	spi_device_queue_trans
.LVL149:
	.loc 1 744 0
	bne	a10, a7, .L78
	.loc 1 749 0
	mov.n	a11, a6
	mov.n	a10, a4
.LVL150:
	call8	sdspi_crc16
.LVL151:
	s16i	a10, sp, 4
	.loc 1 750 0
	mov.n	a10, a2
	call8	get_transaction
.LVL152:
	mov.n	a3, a10
.LVL153:
	.loc 1 751 0
	s32i.n	a7, a10, 0
	s32i.n	a7, a10, 4
	s32i.n	a7, a10, 8
	s32i.n	a7, a10, 12
	s32i.n	a7, a10, 20
	s32i.n	a7, a10, 24
	s32i.n	a7, a10, 32
	s32i.n	a7, a10, 36
	movi.n	a8, 0x10
	s32i.n	a8, a10, 16
	addi.n	a8, sp, 4
	s32i.n	a8, a10, 28
	.loc 1 755 0
	mov.n	a10, a2
	call8	spi_handle
.LVL154:
	mov.n	a12, a7
	mov.n	a11, a3
	call8	spi_device_queue_trans
.LVL155:
	.loc 1 756 0
	bne	a10, a7, .L79
	.loc 1 761 0
	mov.n	a10, a2
.LVL156:
	call8	wait_for_transactions
.LVL157:
	.loc 1 764 0
	l32i.n	a8, sp, 16
	l8ui	a3, a8, 7
.LVL158:
	bne	a3, a7, .L80
	.loc 1 770 0
	mov.n	a10, a2
	call8	get_transaction
.LVL159:
	.loc 1 771 0
	mov.n	a11, a10
	mov.n	a10, a2
.LVL160:
	call8	poll_response_token
.LVL161:
	mov.n	a3, a10
.LVL162:
	.loc 1 772 0
	mov.n	a10, a2
	call8	release_transaction
.LVL163:
	.loc 1 773 0
	bne	a3, a7, .L81
	.loc 1 778 0
	mov.n	a10, a2
	call8	get_transaction
.LVL164:
	.loc 1 779 0
	mov.n	a11, a10
	mov.n	a10, a2
.LVL165:
	call8	poll_busy
.LVL166:
	mov.n	a3, a10
.LVL167:
	.loc 1 780 0
	mov.n	a10, a2
	call8	release_transaction
.LVL168:
	.loc 1 781 0
	bne	a3, a7, .L82
	.loc 1 785 0
	sub	a5, a5, a6
.LVL169:
	.loc 1 786 0
	add.n	a4, a4, a6
.LVL170:
	j	.L68
.LVL171:
.L76:
	.loc 1 720 0
	mov.n	a2, a10
.LVL172:
	retw.n
.LVL173:
.L78:
	.loc 1 745 0
	mov.n	a2, a10
.LVL174:
	retw.n
.LVL175:
.L79:
	.loc 1 757 0
	mov.n	a2, a10
.LVL176:
	retw.n
.LVL177:
.L80:
	.loc 1 766 0
	movi	a2, 0x108
.LVL178:
	retw.n
.LVL179:
.L81:
	.loc 1 774 0
	mov.n	a2, a3
.LVL180:
	retw.n
.LVL181:
.L82:
	.loc 1 782 0
	mov.n	a2, a3
.LVL182:
	retw.n
.LVL183:
.L68:
.LBE19:
	.loc 1 710 0
	bnez.n	a5, .L72
	.loc 1 789 0
	l8ui	a4, sp, 0
.LVL184:
	movi	a3, 0xfc
	bne	a4, a3, .L83
.LBB21:
	.loc 1 790 0
	l32r	a3, .LC24
	addi.n	a5, sp, 4
.LVL185:
	l8ui	a4, a3, 0
	l8ui	a3, a3, 1
	s8i	a4, sp, 4
	s8i	a3, sp, 5
	.loc 1 794 0
	mov.n	a10, a2
	call8	get_transaction
.LVL186:
	mov.n	a3, a10
.LVL187:
	.loc 1 795 0
	movi.n	a4, 0
	s32i.n	a4, a10, 0
	s32i.n	a4, a10, 4
	s32i.n	a4, a10, 8
	s32i.n	a4, a10, 12
	s32i.n	a4, a10, 20
	s32i.n	a4, a10, 24
	s32i.n	a4, a10, 32
	s32i.n	a4, a10, 36
	movi.n	a6, 0x10
	s32i.n	a6, a10, 16
	s32i.n	a5, a10, 28
	.loc 1 799 0
	mov.n	a10, a2
	call8	spi_handle
.LVL188:
	mov.n	a12, a4
	mov.n	a11, a3
	call8	spi_device_queue_trans
.LVL189:
	.loc 1 800 0
	bne	a10, a4, .L84
	.loc 1 803 0
	mov.n	a10, a2
.LVL190:
	call8	wait_for_transactions
.LVL191:
	.loc 1 805 0
	mov.n	a10, a2
	call8	get_transaction
.LVL192:
	.loc 1 806 0
	mov.n	a11, a10
	mov.n	a10, a2
.LVL193:
	call8	poll_busy
.LVL194:
	mov.n	a3, a10
.LVL195:
	.loc 1 807 0
	mov.n	a10, a2
	call8	release_transaction
.LVL196:
	.loc 1 808 0
	bne	a3, a4, .L85
.LBE21:
	.loc 1 813 0
	mov.n	a2, a4
.LVL197:
.LBB22:
	retw.n
.LVL198:
.L84:
	.loc 1 801 0
	mov.n	a2, a10
.LVL199:
	retw.n
.LVL200:
.L85:
	.loc 1 809 0
	mov.n	a2, a3
.LVL201:
	retw.n
.LVL202:
.L74:
.LBE22:
	.loc 1 704 0
	mov.n	a2, a10
.LVL203:
	retw.n
.LVL204:
.L83:
	.loc 1 813 0
	movi.n	a2, 0
.LVL205:
	.loc 1 814 0
	retw.n
.LFE38:
	.size	start_command_write_blocks, .-start_command_write_blocks
	.section	.rodata.str1.4
	.align	4
.LC26:
	.string	"\033[0;31mE (%d) %s: data CRC failed, got=0x%04x expected=0x%04x\033[0m\n"
	.section	.text.start_command_read_blocks,"ax",@progbits
	.literal_position
	.literal .LC25, .LC20
	.literal .LC27, .LC26
	.align	4
	.type	start_command_read_blocks, @function
start_command_read_blocks:
.LFB37:
	.loc 1 575 0
.LVL206:
	entry	sp, 96
.LCFI21:
	s32i.n	a5, sp, 56
.LVL207:
	.loc 1 577 0
	mov.n	a10, a2
	call8	get_transaction
.LVL208:
	mov.n	a5, a10
.LVL209:
	.loc 1 578 0
	movi.n	a6, 0
	s32i.n	a6, a10, 0
	s32i.n	a6, a10, 4
	s32i.n	a6, a10, 8
	s32i.n	a6, a10, 12
	s32i.n	a6, a10, 20
	s32i.n	a6, a10, 24
	s32i.n	a6, a10, 36
	movi	a6, 0x80
	s32i.n	a6, a10, 16
	s32i.n	a3, a10, 28
	s32i.n	a3, a10, 32
	.loc 1 583 0
	mov.n	a10, a2
	call8	spi_handle
.LVL210:
	mov.n	a11, a5
	call8	spi_device_transmit
.LVL211:
	.loc 1 584 0
	bnez.n	a10, .L100
	.loc 1 587 0
	mov.n	a10, a2
.LVL212:
	call8	release_transaction
.LVL213:
	.loc 1 591 0
	addi.n	a3, a3, 8
.LVL214:
	s32i.n	a3, sp, 52
.LVL215:
	.loc 1 594 0
	l32i.n	a7, sp, 56
	.loc 1 590 0
	movi.n	a9, 8
	.loc 1 594 0
	j	.L88
.LVL216:
.L98:
.LBB23:
	.loc 1 595 0
	movi.n	a5, 0
	s32i.n	a5, sp, 40
.LVL217:
.LBB24:
	.loc 1 599 0
	j	.L89
.LVL218:
.L92:
	.loc 1 600 0
	add.n	a6, a3, a5
	l8ui	a8, a6, 0
	movi	a6, 0xfe
	bne	a8, a6, .L90
	.loc 1 601 0
	sub	a9, a9, a10
.LVL219:
	addi.n	a9, a9, -1
	s32i.n	a9, sp, 40
	.loc 1 602 0
	addi.n	a10, a10, 1
	add.n	a10, a3, a10
	s32i.n	a10, sp, 48
.LVL220:
	.loc 1 603 0
	movi.n	a3, 0
.LVL221:
	.loc 1 604 0
	j	.L91
.LVL222:
.L90:
	.loc 1 599 0 discriminator 2
	addi.n	a5, a5, 1
.LVL223:
.L89:
	.loc 1 599 0 is_stmt 0 discriminator 1
	mov.n	a10, a5
	bltu	a5, a9, .L92
.LBE24:
	.loc 1 597 0 is_stmt 1
	movi.n	a3, 1
.LVL224:
	.loc 1 596 0
	movi.n	a5, 0
.LVL225:
	s32i.n	a5, sp, 48
.LVL226:
.L91:
	.loc 1 608 0
	beqz.n	a3, .L93
.LBB25:
	.loc 1 610 0
	mov.n	a10, a2
	call8	get_transaction
.LVL227:
	.loc 1 611 0
	addi	a13, sp, 40
	l32i.n	a12, sp, 52
	mov.n	a11, a10
	mov.n	a10, a2
.LVL228:
	call8	poll_data_token
.LVL229:
	.loc 1 612 0
	l32i.n	a3, sp, 40
.LVL230:
	beqz.n	a3, .L94
	.loc 1 613 0
	l32i.n	a3, sp, 52
	s32i.n	a3, sp, 48
.LVL231:
.L94:
	.loc 1 615 0
	mov.n	a10, a2
	call8	release_transaction
.LVL232:
.L93:
.LBE25:
	.loc 1 619 0
	movi	a5, 0x200
	minu	a3, a7, a5
	l32i.n	a5, sp, 40
	sub	a5, a3, a5
.LVL233:
	.loc 1 621 0
	addi	a11, sp, 16
	mov.n	a10, a2
	call8	get_block_buf
.LVL234:
	.loc 1 622 0
	bnez.n	a10, .L102
.LVL235:
	.loc 1 628 0
	addi.n	a6, a5, 4
	mov.n	a12, a6
	movi	a11, 0xff
	l32i.n	a10, sp, 16
.LVL236:
	call8	memset
.LVL237:
	.loc 1 629 0
	mov.n	a10, a2
	call8	get_transaction
.LVL238:
	mov.n	a3, a10
.LVL239:
	.loc 1 631 0
	slli	a6, a6, 3
	.loc 1 630 0
	l32i.n	a9, sp, 16
	movi.n	a8, 0
	s32i.n	a8, a10, 0
	s32i.n	a8, a10, 4
	s32i.n	a8, a10, 8
	s32i.n	a8, a10, 12
	s32i.n	a8, a10, 20
	s32i.n	a8, a10, 24
	s32i.n	a8, a10, 36
	s32i.n	a6, a10, 16
	s32i.n	a9, a10, 28
	s32i.n	a9, a10, 32
	.loc 1 636 0
	mov.n	a10, a2
	call8	spi_handle
.LVL240:
	mov.n	a11, a3
	call8	spi_device_transmit
.LVL241:
	.loc 1 637 0
	bnez.n	a10, .L103
	.loc 1 640 0
	mov.n	a10, a2
.LVL242:
	call8	release_transaction
.LVL243:
	.loc 1 643 0
	movi.n	a3, -1
.LVL244:
	s16i	a3, sp, 44
	.loc 1 644 0
	l32i.n	a11, sp, 16
	add.n	a3, a11, a5
	l8ui	a6, a3, 0
	l8ui	a3, a3, 1
	s8i	a6, sp, 44
	s8i	a3, sp, 45
.LVL245:
	.loc 1 648 0
	addi.n	a3, a5, 2
	add.n	a3, a11, a3
.LVL246:
	.loc 1 651 0
	mov.n	a12, a5
	l32i.n	a10, sp, 40
	add.n	a10, a4, a10
	call8	memcpy
.LVL247:
	.loc 1 652 0
	l32i.n	a12, sp, 40
	beqz.n	a12, .L96
	.loc 1 653 0
	l32i.n	a11, sp, 48
	mov.n	a10, a4
	call8	memcpy
.LVL248:
.L96:
	.loc 1 658 0
	mov.n	a10, a2
	call8	data_crc_enabled
.LVL249:
	beqz.n	a10, .L97
	.loc 1 659 0
	l32i.n	a11, sp, 40
	add.n	a11, a5, a11
	mov.n	a10, a4
	call8	sdspi_crc16
.LVL250:
	mov.n	a6, a10
.LVL251:
	.loc 1 660 0
	l16ui	a8, sp, 44
	beq	a10, a8, .L97
	.loc 1 661 0 discriminator 1
	call8	esp_log_timestamp
.LVL252:
	l32r	a2, .LC25
.LVL253:
	l16ui	a3, sp, 44
.LVL254:
	s32i.n	a3, sp, 0
	mov.n	a15, a6
	mov.n	a14, a2
	mov.n	a13, a10
	l32r	a12, .LC27
	mov.n	a11, a2
	movi.n	a10, 1
	call8	esp_log_write
.LVL255:
	.loc 1 662 0 discriminator 1
	movi.n	a13, 3
	movi.n	a12, 0x10
	mov.n	a11, a4
	mov.n	a10, a2
	call8	esp_log_buffer_hex_internal
.LVL256:
	.loc 1 663 0 discriminator 1
	movi	a2, 0x109
	retw.n
.LVL257:
.L97:
	.loc 1 667 0
	l32i.n	a6, sp, 40
	add.n	a5, a5, a6
.LVL258:
	add.n	a4, a4, a5
.LVL259:
	.loc 1 668 0
	sub	a7, a7, a5
.LVL260:
	.loc 1 669 0
	movi.n	a5, 0
	s32i.n	a5, sp, 40
.LVL261:
	.loc 1 647 0
	movi.n	a9, 2
	j	.L88
.LVL262:
.L102:
	.loc 1 623 0
	mov.n	a2, a10
.LVL263:
	retw.n
.LVL264:
.L103:
	.loc 1 638 0
	mov.n	a2, a10
.LVL265:
	retw.n
.LVL266:
.L88:
.LBE23:
	.loc 1 594 0
	bnez.n	a7, .L98
	.loc 1 673 0
	movi	a3, 0x200
.LVL267:
	l32i.n	a4, sp, 56
.LVL268:
	bgeu	a3, a4, .L104
.LBB26:
	.loc 1 677 0
	addi	a12, sp, 16
	movi.n	a11, 0
	movi.n	a10, 0xc
	call8	make_hw_cmd
.LVL269:
	.loc 1 678 0
	addi	a12, sp, 16
	movi.n	a11, 4
	mov.n	a10, a2
	call8	start_command_default
.LVL270:
	.loc 1 679 0
	beqz.n	a10, .L99
	.loc 1 680 0
	mov.n	a2, a10
.LVL271:
	retw.n
.LVL272:
.L99:
	.loc 1 682 0
	mov.n	a10, a2
.LVL273:
	call8	get_transaction
.LVL274:
	.loc 1 683 0
	mov.n	a11, a10
	mov.n	a10, a2
.LVL275:
	call8	poll_busy
.LVL276:
	.loc 1 684 0
	mov.n	a10, a2
	call8	release_transaction
.LVL277:
.LBE26:
	.loc 1 686 0
	movi.n	a2, 0
.LVL278:
.LBB27:
	retw.n
.LVL279:
.L100:
.LBE27:
	.loc 1 585 0
	mov.n	a2, a10
.LVL280:
	retw.n
.LVL281:
.L104:
	.loc 1 686 0
	movi.n	a2, 0
.LVL282:
	.loc 1 687 0
	retw.n
.LFE37:
	.size	start_command_read_blocks, .-start_command_read_blocks
	.section	.text.sdspi_host_init,"ax",@progbits
	.align	4
	.global	sdspi_host_init
	.type	sdspi_host_init, @function
sdspi_host_init:
.LFB28:
	.loc 1 220 0
	entry	sp, 32
.LCFI22:
	.loc 1 222 0
	movi.n	a2, 0
	retw.n
.LFE28:
	.size	sdspi_host_init, .-sdspi_host_init
	.section	.text.sdspi_host_deinit,"ax",@progbits
	.literal_position
	.literal .LC28, s_slots
	.align	4
	.global	sdspi_host_deinit
	.type	sdspi_host_deinit, @function
sdspi_host_deinit:
.LFB29:
	.loc 1 225 0
	entry	sp, 32
.LCFI23:
.LVL283:
.LBB28:
	.loc 1 226 0
	movi.n	a3, 0
	j	.L107
.LVL284:
.L109:
	.loc 1 227 0
	slli	a2, a3, 4
	l32r	a4, .LC28
	add.n	a2, a4, a2
	l32i.n	a10, a2, 0
	beqz.n	a10, .L108
	.loc 1 228 0
	call8	spi_bus_remove_device
.LVL285:
	.loc 1 229 0
	slli	a2, a3, 4
	l32r	a4, .LC28
	add.n	a2, a4, a2
	l32i.n	a10, a2, 8
	call8	free
.LVL286:
	.loc 1 230 0
	movi.n	a4, 0
	s32i.n	a4, a2, 8
	.loc 1 231 0
	l32i.n	a10, a2, 12
	call8	free
.LVL287:
	.loc 1 232 0
	s32i.n	a4, a2, 12
	.loc 1 233 0
	mov.n	a10, a3
	call8	spi_bus_free
.LVL288:
	.loc 1 234 0
	s32i.n	a4, a2, 0
.L108:
	.loc 1 226 0 discriminator 2
	addi.n	a3, a3, 1
.LVL289:
.L107:
	.loc 1 226 0 is_stmt 0 discriminator 1
	bltui	a3, 3, .L109
.LBE28:
	.loc 1 238 0 is_stmt 1
	movi.n	a2, 0
	retw.n
.LFE29:
	.size	sdspi_host_deinit, .-sdspi_host_deinit
	.section	.text.sdspi_host_set_card_clk,"ax",@progbits
	.align	4
	.global	sdspi_host_set_card_clk
	.type	sdspi_host_set_card_clk, @function
sdspi_host_set_card_clk:
.LFB30:
	.loc 1 241 0
.LVL290:
	entry	sp, 32
.LCFI24:
	.loc 1 242 0
	mov.n	a10, a2
	call8	is_valid_slot
.LVL291:
	beqz.n	a10, .L112
	.loc 1 245 0
	mov.n	a10, a2
	call8	is_slot_initialized
.LVL292:
	beqz.n	a10, .L113
	.loc 1 249 0
	slli	a8, a3, 5
	sub	a8, a8, a3
	addx4	a3, a8, a3
.LVL293:
	slli	a11, a3, 3
	mov.n	a3, a11
	mov.n	a10, a2
	call8	init_spi_dev
.LVL294:
	mov.n	a2, a10
.LVL295:
	retw.n
.LVL296:
.L112:
	.loc 1 243 0
	movi	a2, 0x102
.LVL297:
	retw.n
.LVL298:
.L113:
	.loc 1 246 0
	movi	a2, 0x103
.LVL299:
	.loc 1 250 0
	retw.n
.LFE30:
	.size	sdspi_host_set_card_clk, .-sdspi_host_set_card_clk
	.section	.text.sdspi_host_init_slot,"ax",@progbits
	.literal_position
	.literal .LC29, 400000
	.literal .LC30, s_slots
	.align	4
	.global	sdspi_host_init_slot
	.type	sdspi_host_init_slot, @function
sdspi_host_init_slot:
.LFB31:
	.loc 1 253 0
.LVL300:
	entry	sp, 80
.LCFI25:
.LVL301:
	.loc 1 262 0
	mov.n	a10, a2
	call8	is_valid_slot
.LVL302:
	beqz.n	a10, .L124
	.loc 1 266 0
	movi.n	a4, 0
	s32i.n	a4, sp, 20
	.loc 1 268 0
	l32i.n	a4, a3, 4
	.loc 1 266 0
	s32i.n	a4, sp, 0
	.loc 1 267 0
	l32i.n	a4, a3, 0
	.loc 1 266 0
	s32i.n	a4, sp, 4
	.loc 1 269 0
	l32i.n	a4, a3, 8
	.loc 1 266 0
	s32i.n	a4, sp, 8
	movi.n	a4, -1
	s32i.n	a4, sp, 12
	s32i.n	a4, sp, 16
	.loc 1 275 0
	l32i.n	a12, a3, 24
	mov.n	a11, sp
	mov.n	a10, a2
	call8	spi_bus_initialize
.LVL303:
	.loc 1 277 0
	bnez.n	a10, .L125
	.loc 1 283 0
	l32r	a11, .LC29
	mov.n	a10, a2
.LVL304:
	call8	init_spi_dev
.LVL305:
	mov.n	a4, a10
.LVL306:
	.loc 1 284 0
	beqz.n	a10, .L116
	.loc 1 286 0
	mov.n	a10, a2
	call8	spi_bus_free
.LVL307:
	.loc 1 287 0
	mov.n	a2, a4
.LVL308:
	retw.n
.LVL309:
.L116:
	.loc 1 291 0
	l8ui	a8, a3, 12
	slli	a4, a2, 4
.LVL310:
	l32r	a9, .LC30
	add.n	a4, a9, a4
	s8i	a8, a4, 4
	.loc 1 292 0
	movi.n	a8, 0
	s32i.n	a8, sp, 36
	s32i.n	a8, sp, 40
	s32i.n	a8, sp, 44
	.loc 1 295 0
	l32i.n	a10, a3, 12
.LVL311:
	movi.n	a9, 0x20
	and	a9, a10, a9
	movi.n	a4, 1
	ssl	a10
	sll	a4, a4
	mov.n	a10, a4
	moveqz	a10, a8, a9
	movnez	a4, a8, a9
	.loc 1 292 0
	s32i.n	a4, sp, 24
	s32i.n	a10, sp, 28
	movi.n	a4, 2
	s32i.n	a4, sp, 32
	.loc 1 298 0
	addi	a10, sp, 24
	call8	gpio_config
.LVL312:
	mov.n	a4, a10
.LVL313:
	.loc 1 299 0
	beqz.n	a10, .L117
	.loc 1 301 0
	mov.n	a10, a2
	call8	spi_handle
.LVL314:
	call8	spi_bus_remove_device
.LVL315:
	.loc 1 302 0
	slli	a3, a2, 4
.LVL316:
	l32r	a8, .LC30
	add.n	a3, a8, a3
	movi.n	a8, 0
	s32i.n	a8, a3, 0
	.loc 1 303 0
	mov.n	a10, a2
	call8	spi_bus_free
.LVL317:
	.loc 1 304 0
	mov.n	a2, a4
.LVL318:
	retw.n
.LVL319:
.L117:
	.loc 1 306 0
	mov.n	a10, a2
	call8	cs_high
.LVL320:
	.loc 1 309 0
	movi.n	a4, 0
.LVL321:
	s32i.n	a4, sp, 24
	s32i.n	a4, sp, 28
	s32i.n	a4, sp, 40
	s32i.n	a4, sp, 44
	movi.n	a4, 2
	s32i.n	a4, sp, 32
	movi.n	a4, 1
	s32i.n	a4, sp, 36
	.loc 1 315 0
	l32i.n	a8, a3, 16
	beqi	a8, -1, .L118
	.loc 1 316 0
	ssl	a8
	sll	a4, a4
	s32i.n	a4, sp, 24
	srai	a4, a4, 31
	s32i.n	a4, sp, 28
	.loc 1 317 0
	l32i.n	a8, a3, 20
	slli	a4, a2, 4
	l32r	a9, .LC30
	add.n	a4, a9, a4
	s8i	a8, a4, 6
	j	.L119
.L118:
	.loc 1 319 0
	slli	a4, a2, 4
	l32r	a8, .LC30
	add.n	a4, a8, a4
	movi.n	a8, -1
	s8i	a8, a4, 6
.L119:
	.loc 1 322 0
	l32i.n	a8, a3, 20
	beqi	a8, -1, .L120
	.loc 1 323 0
	movi.n	a4, 1
	ssl	a8
	sll	a4, a4
	srai	a8, a4, 31
	l32i.n	a9, sp, 24
	or	a4, a9, a4
	s32i.n	a4, sp, 24
	l32i.n	a4, sp, 28
	or	a4, a4, a8
	s32i.n	a4, sp, 28
	.loc 1 324 0
	l32i.n	a4, a3, 16
	slli	a3, a2, 4
.LVL322:
	l32r	a8, .LC30
	add.n	a3, a8, a3
	s8i	a4, a3, 5
	j	.L121
.LVL323:
.L120:
	.loc 1 326 0
	slli	a3, a2, 4
.LVL324:
	l32r	a4, .LC30
	add.n	a3, a4, a3
	movi.n	a4, -1
	s8i	a4, a3, 5
.L121:
	.loc 1 329 0
	l32i.n	a3, sp, 28
	l32i.n	a4, sp, 24
	or	a3, a4, a3
	beqz.n	a3, .L122
	.loc 1 330 0
	addi	a10, sp, 24
	call8	gpio_config
.LVL325:
	mov.n	a4, a10
.LVL326:
	.loc 1 331 0
	beqz.n	a10, .L122
	.loc 1 333 0
	mov.n	a10, a2
	call8	spi_handle
.LVL327:
	call8	spi_bus_remove_device
.LVL328:
	.loc 1 334 0
	slli	a3, a2, 4
	l32r	a8, .LC30
	add.n	a3, a8, a3
	movi.n	a8, 0
	s32i.n	a8, a3, 0
	.loc 1 335 0
	mov.n	a10, a2
	call8	spi_bus_free
.LVL329:
	.loc 1 336 0
	mov.n	a2, a4
.LVL330:
	retw.n
.LVL331:
.L122:
	.loc 1 340 0
	movi.n	a11, 0x28
	movi.n	a10, 4
	call8	calloc
.LVL332:
	slli	a3, a2, 4
	l32r	a4, .LC30
	add.n	a3, a4, a3
	s32i.n	a10, a3, 12
	.loc 1 341 0
	bnez.n	a10, .L126
	.loc 1 342 0
	mov.n	a10, a2
	call8	spi_handle
.LVL333:
	call8	spi_bus_remove_device
.LVL334:
	.loc 1 343 0
	slli	a3, a2, 4
	l32r	a4, .LC30
	add.n	a3, a4, a3
	movi.n	a4, 0
	s32i.n	a4, a3, 0
	.loc 1 344 0
	mov.n	a10, a2
	call8	spi_bus_free
.LVL335:
	.loc 1 345 0
	movi	a2, 0x101
.LVL336:
	retw.n
.LVL337:
.L124:
	.loc 1 263 0
	movi	a2, 0x102
.LVL338:
	retw.n
.LVL339:
.L125:
	.loc 1 279 0
	mov.n	a2, a10
.LVL340:
	retw.n
.LVL341:
.L126:
	.loc 1 348 0
	movi.n	a2, 0
.LVL342:
	.loc 1 349 0
	retw.n
.LFE31:
	.size	sdspi_host_init_slot, .-sdspi_host_init_slot
	.global	__bswapsi2
	.section	.rodata.str1.4
	.align	4
.LC33:
	.string	"\033[0;31mE (%d) %s: %s: cmd=%d error=0x%x\033[0m\n"
	.section	.text.sdspi_host_start_command,"ax",@progbits
	.literal_position
	.literal .LC31, __func__$6038
	.literal .LC32, .LC20
	.literal .LC34, .LC33
	.literal .LC35, s_slots
	.align	4
	.global	sdspi_host_start_command
	.type	sdspi_host_start_command, @function
sdspi_host_start_command:
.LFB32:
	.loc 1 354 0
.LVL343:
	entry	sp, 64
.LCFI26:
	.loc 1 355 0
	mov.n	a10, a2
	call8	is_valid_slot
.LVL344:
	beqz.n	a10, .L134
	.loc 1 358 0
	mov.n	a10, a2
	call8	is_slot_initialized
.LVL345:
	beqz.n	a10, .L135
	.loc 1 361 0
	mov.n	a10, a2
	call8	card_missing
.LVL346:
	bnez.n	a10, .L136
	.loc 1 365 0
	l32i.n	a7, a3, 0
	extui	a7, a7, 0, 6
.LVL347:
	.loc 1 367 0
	l8ui	a9, a3, 1
	l8ui	a10, a3, 2
	s8i	a9, sp, 16
	l8ui	a9, a3, 3
	s8i	a10, sp, 17
	l8ui	a8, a3, 4
	s8i	a9, sp, 18
	s8i	a8, sp, 19
	.loc 1 368 0
	l32i.n	a10, sp, 16
	call8	__bswapsi2
.LVL348:
	s32i.n	a10, sp, 16
	.loc 1 375 0
	bnez.n	a7, .L129
	.loc 1 376 0
	mov.n	a10, a2
	call8	go_idle_clockout
.LVL349:
.L129:
	.loc 1 380 0
	mov.n	a10, a2
	call8	cs_low
.LVL350:
	.loc 1 381 0
	bbci	a6, 0, .L130
	.loc 1 382 0
	bbci	a6, 1, .L131
	.loc 1 383 0
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	start_command_write_blocks
.LVL351:
	mov.n	a3, a10
.LVL352:
	j	.L132
.LVL353:
.L131:
	.loc 1 385 0
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	start_command_read_blocks
.LVL354:
	mov.n	a3, a10
.LVL355:
	j	.L132
.LVL356:
.L130:
	.loc 1 388 0
	mov.n	a12, a3
	mov.n	a11, a6
	mov.n	a10, a2
	call8	start_command_default
.LVL357:
	mov.n	a3, a10
.LVL358:
.L132:
	.loc 1 390 0
	mov.n	a10, a2
	call8	cs_high
.LVL359:
	.loc 1 392 0
	mov.n	a10, a2
	call8	release_bus
.LVL360:
	.loc 1 394 0
	beqz.n	a3, .L133
	.loc 1 395 0 discriminator 1
	call8	esp_log_timestamp
.LVL361:
	l32r	a11, .LC32
	s32i.n	a3, sp, 4
	s32i.n	a7, sp, 0
	l32r	a15, .LC31
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC34
	movi.n	a10, 1
	call8	esp_log_write
.LVL362:
	.loc 1 403 0 discriminator 1
	mov.n	a2, a3
.LVL363:
	retw.n
.LVL364:
.L133:
	.loc 1 398 0
	movi.n	a4, 0x3b
.LVL365:
	bne	a7, a4, .L137
	.loc 1 399 0
	l8ui	a4, sp, 16
	slli	a8, a2, 4
	l32r	a2, .LC35
.LVL366:
	add.n	a8, a2, a8
	extui	a2, a4, 0, 1
	l8ui	a5, a8, 7
.LVL367:
	movi.n	a4, -2
	and	a4, a5, a4
	or	a2, a4, a2
	s8i	a2, a8, 7
	.loc 1 403 0
	mov.n	a2, a3
	retw.n
.LVL368:
.L134:
	.loc 1 356 0
	movi	a2, 0x102
.LVL369:
	retw.n
.LVL370:
.L135:
	.loc 1 359 0
	movi	a2, 0x103
.LVL371:
	retw.n
.LVL372:
.L136:
	.loc 1 362 0
	movi	a2, 0x105
.LVL373:
	retw.n
.LVL374:
.L137:
	.loc 1 403 0
	mov.n	a2, a3
.LVL375:
	.loc 1 404 0
	retw.n
.LFE32:
	.size	sdspi_host_start_command, .-sdspi_host_start_command
	.section	.rodata.__func__$5976,"a",@progbits
	.align	4
	.type	__func__$5976, @object
	.size	__func__$5976, 16
__func__$5976:
	.string	"get_transaction"
	.section	.rodata.__func__$6129,"a",@progbits
	.align	4
	.type	__func__$6129, @object
	.size	__func__$6129, 27
__func__$6129:
	.string	"start_command_write_blocks"
	.section	.rodata.__func__$6038,"a",@progbits
	.align	4
	.type	__func__$6038, @object
	.size	__func__$6038, 25
__func__$6038:
	.string	"sdspi_host_start_command"
	.section	.bss.s_slots,"aw",@nobits
	.align	4
	.type	s_slots, @object
	.size	s_slots, 48
s_slots:
	.zero	48
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
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI0-.LFB16
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI1-.LFB17
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI2-.LFB18
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI3-.LFB19
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI4-.LFB22
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
	.uleb128 0x40
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI7-.LFB12
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI8-.LFB13
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI9-.LFB15
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI10-.LFB14
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI11-.LFB25
	.byte	0xe
	.uleb128 0x60
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI12-.LFB35
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI13-.LFB34
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI14-.LFB36
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI15-.LFB33
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI16-.LFB24
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI17-.LFB20
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI18-.LFB23
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI19-.LFB21
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE38:
.LSFDE40:
	.4byte	.LEFDE40-.LASFDE40
.LASFDE40:
	.4byte	.Lframe0
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x4
	.4byte	.LCFI20-.LFB38
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE40:
.LSFDE42:
	.4byte	.LEFDE42-.LASFDE42
.LASFDE42:
	.4byte	.Lframe0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x4
	.4byte	.LCFI21-.LFB37
	.byte	0xe
	.uleb128 0x60
	.align	4
.LEFDE42:
.LSFDE44:
	.4byte	.LEFDE44-.LASFDE44
.LASFDE44:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI22-.LFB28
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE44:
.LSFDE46:
	.4byte	.LEFDE46-.LASFDE46
.LASFDE46:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI23-.LFB29
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE46:
.LSFDE48:
	.4byte	.LEFDE48-.LASFDE48
.LASFDE48:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI24-.LFB30
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE48:
.LSFDE50:
	.4byte	.LEFDE50-.LASFDE50
.LASFDE50:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI25-.LFB31
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE50:
.LSFDE52:
	.4byte	.LEFDE52-.LASFDE52
.LASFDE52:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI26-.LFB32
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE52:
	.text
.Letext0:
	.file 2 "C:/esp/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 4 "C:/esp/esp-idf/components/newlib/include/stdint.h"
	.file 5 "C:/esp/esp-idf/components/log/include/esp_log.h"
	.file 6 "C:/esp/esp-idf/components/esp32/include/esp_err.h"
	.file 7 "C:/esp/esp-idf/components/esp32/include/rom/gpio.h"
	.file 8 "C:/esp/esp-idf/components/driver/include/driver/gpio.h"
	.file 9 "C:/esp/esp-idf/components/freertos/include/freertos/portmacro.h"
	.file 10 "C:/esp/esp-idf/components/driver/include/driver/spi_common.h"
	.file 11 "C:/esp/esp-idf/components/driver/include/driver/spi_master.h"
	.file 12 "C:/esp/esp-idf/components/driver/include/driver/sdspi_host.h"
	.file 13 "C:/esp/esp-idf/components/driver/sdspi_private.h"
	.file 14 "C:/esp/esp-idf/components/newlib/include/string.h"
	.file 15 "C:/esp/esp-idf/components/heap/include/esp_heap_caps.h"
	.file 16 "C:/esp/esp-idf/components/newlib/include/assert.h"
	.file 17 "C:/esp/esp-idf/components/driver/sdspi_crc.h"
	.file 18 "C:/esp/esp-idf/components/log/include/esp_log_internal.h"
	.file 19 "C:/esp/esp-idf/components/newlib/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1d85
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF248
	.byte	0xc
	.4byte	.LASF249
	.4byte	.LASF250
	.4byte	.Ldebug_ranges0+0xd8
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x2
	.byte	0x12
	.4byte	0x37
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x2
	.byte	0x16
	.4byte	0x50
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x19
	.4byte	0x62
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0x1a
	.4byte	0x74
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x2
	.byte	0x1e
	.4byte	0x8d
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x2
	.byte	0x32
	.4byte	0x74
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0xd8
	.4byte	0x74
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF14
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF16
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF17
	.uleb128 0x6
	.byte	0x4
	.4byte	0xce
	.uleb128 0x7
	.4byte	0xc1
	.uleb128 0x6
	.byte	0x4
	.4byte	0xd9
	.uleb128 0x8
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x4
	.byte	0x15
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x4
	.byte	0x21
	.4byte	0x45
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x4
	.byte	0x2c
	.4byte	0x57
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x4
	.byte	0x2d
	.4byte	0x69
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x4
	.byte	0x39
	.4byte	0x82
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x4
	.byte	0xaa
	.4byte	0x94
	.uleb128 0x9
	.byte	0x4
	.4byte	0x74
	.byte	0x5
	.byte	0x1f
	.4byte	0x14d
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF30
	.byte	0x5
	.byte	0x26
	.4byte	0x11c
	.uleb128 0x3
	.4byte	.LASF31
	.byte	0x6
	.byte	0x18
	.4byte	0xf0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x74
	.byte	0x7
	.byte	0x30
	.4byte	0x194
	.uleb128 0xa
	.4byte	.LASF32
	.byte	0
	.uleb128 0xa
	.4byte	.LASF33
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF34
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF35
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF36
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF37
	.byte	0x5
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF38
	.uleb128 0x9
	.byte	0x4
	.4byte	0x74
	.byte	0x8
	.byte	0x81
	.4byte	0x27a
	.uleb128 0xa
	.4byte	.LASF39
	.byte	0
	.uleb128 0xa
	.4byte	.LASF40
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF41
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF42
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF43
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF44
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF45
	.byte	0x6
	.uleb128 0xa
	.4byte	.LASF46
	.byte	0x7
	.uleb128 0xa
	.4byte	.LASF47
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF48
	.byte	0x9
	.uleb128 0xa
	.4byte	.LASF49
	.byte	0xa
	.uleb128 0xa
	.4byte	.LASF50
	.byte	0xb
	.uleb128 0xa
	.4byte	.LASF51
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF52
	.byte	0xd
	.uleb128 0xa
	.4byte	.LASF53
	.byte	0xe
	.uleb128 0xa
	.4byte	.LASF54
	.byte	0xf
	.uleb128 0xa
	.4byte	.LASF55
	.byte	0x10
	.uleb128 0xa
	.4byte	.LASF56
	.byte	0x11
	.uleb128 0xa
	.4byte	.LASF57
	.byte	0x12
	.uleb128 0xa
	.4byte	.LASF58
	.byte	0x13
	.uleb128 0xa
	.4byte	.LASF59
	.byte	0x15
	.uleb128 0xa
	.4byte	.LASF60
	.byte	0x16
	.uleb128 0xa
	.4byte	.LASF61
	.byte	0x17
	.uleb128 0xa
	.4byte	.LASF62
	.byte	0x19
	.uleb128 0xa
	.4byte	.LASF63
	.byte	0x1a
	.uleb128 0xa
	.4byte	.LASF64
	.byte	0x1b
	.uleb128 0xa
	.4byte	.LASF65
	.byte	0x20
	.uleb128 0xa
	.4byte	.LASF66
	.byte	0x21
	.uleb128 0xa
	.4byte	.LASF67
	.byte	0x22
	.uleb128 0xa
	.4byte	.LASF68
	.byte	0x23
	.uleb128 0xa
	.4byte	.LASF69
	.byte	0x24
	.uleb128 0xa
	.4byte	.LASF70
	.byte	0x25
	.uleb128 0xa
	.4byte	.LASF71
	.byte	0x26
	.uleb128 0xa
	.4byte	.LASF72
	.byte	0x27
	.uleb128 0xa
	.4byte	.LASF73
	.byte	0x28
	.byte	0
	.uleb128 0x3
	.4byte	.LASF74
	.byte	0x8
	.byte	0xae
	.4byte	0x19b
	.uleb128 0x9
	.byte	0x4
	.4byte	0x74
	.byte	0x8
	.byte	0xb0
	.4byte	0x2bc
	.uleb128 0xa
	.4byte	.LASF75
	.byte	0
	.uleb128 0xa
	.4byte	.LASF76
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF77
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF78
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF79
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF80
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF81
	.byte	0x6
	.byte	0
	.uleb128 0x3
	.4byte	.LASF82
	.byte	0x8
	.byte	0xb8
	.4byte	0x285
	.uleb128 0x9
	.byte	0x4
	.4byte	0x74
	.byte	0x8
	.byte	0xba
	.4byte	0x2f2
	.uleb128 0xa
	.4byte	.LASF83
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF84
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF85
	.byte	0x6
	.uleb128 0xa
	.4byte	.LASF86
	.byte	0x7
	.uleb128 0xa
	.4byte	.LASF87
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF88
	.byte	0x8
	.byte	0xc0
	.4byte	0x2c7
	.uleb128 0x9
	.byte	0x4
	.4byte	0x74
	.byte	0x8
	.byte	0xc2
	.4byte	0x316
	.uleb128 0xa
	.4byte	.LASF89
	.byte	0
	.uleb128 0xa
	.4byte	.LASF90
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF91
	.byte	0x8
	.byte	0xc5
	.4byte	0x2fd
	.uleb128 0x9
	.byte	0x4
	.4byte	0x74
	.byte	0x8
	.byte	0xc7
	.4byte	0x33a
	.uleb128 0xa
	.4byte	.LASF92
	.byte	0
	.uleb128 0xa
	.4byte	.LASF93
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF94
	.byte	0x8
	.byte	0xca
	.4byte	0x321
	.uleb128 0xb
	.byte	0x18
	.byte	0x8
	.byte	0xcf
	.4byte	0x38a
	.uleb128 0xc
	.4byte	.LASF95
	.byte	0x8
	.byte	0xd0
	.4byte	0x106
	.byte	0
	.uleb128 0xc
	.4byte	.LASF96
	.byte	0x8
	.byte	0xd1
	.4byte	0x2f2
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF97
	.byte	0x8
	.byte	0xd2
	.4byte	0x316
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF98
	.byte	0x8
	.byte	0xd3
	.4byte	0x33a
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF99
	.byte	0x8
	.byte	0xd4
	.4byte	0x2bc
	.byte	0x14
	.byte	0
	.uleb128 0x3
	.4byte	.LASF100
	.byte	0x8
	.byte	0xd5
	.4byte	0x345
	.uleb128 0xd
	.4byte	0xfb
	.4byte	0x3a5
	.uleb128 0xe
	.4byte	0xb3
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF101
	.uleb128 0x3
	.4byte	.LASF102
	.byte	0x9
	.byte	0x73
	.4byte	0xfb
	.uleb128 0x9
	.byte	0x4
	.4byte	0x74
	.byte	0xa
	.byte	0x27
	.4byte	0x3d6
	.uleb128 0xa
	.4byte	.LASF103
	.byte	0
	.uleb128 0xa
	.4byte	.LASF104
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF105
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF106
	.byte	0xa
	.byte	0x2b
	.4byte	0x3b7
	.uleb128 0xb
	.byte	0x18
	.byte	0xa
	.byte	0x36
	.4byte	0x432
	.uleb128 0xc
	.4byte	.LASF107
	.byte	0xa
	.byte	0x37
	.4byte	0x62
	.byte	0
	.uleb128 0xc
	.4byte	.LASF108
	.byte	0xa
	.byte	0x38
	.4byte	0x62
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF109
	.byte	0xa
	.byte	0x39
	.4byte	0x62
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF110
	.byte	0xa
	.byte	0x3a
	.4byte	0x62
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF111
	.byte	0xa
	.byte	0x3b
	.4byte	0x62
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF112
	.byte	0xa
	.byte	0x3c
	.4byte	0x62
	.byte	0x14
	.byte	0
	.uleb128 0x3
	.4byte	.LASF113
	.byte	0xa
	.byte	0x3d
	.4byte	0x3e1
	.uleb128 0x3
	.4byte	.LASF114
	.byte	0xb
	.byte	0x28
	.4byte	0x448
	.uleb128 0xf
	.4byte	.LASF114
	.byte	0x28
	.byte	0xb
	.byte	0x48
	.4byte	0x4a9
	.uleb128 0xc
	.4byte	.LASF115
	.byte	0xb
	.byte	0x49
	.4byte	0xfb
	.byte	0
	.uleb128 0x10
	.string	"cmd"
	.byte	0xb
	.byte	0x4a
	.4byte	0xe5
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF116
	.byte	0xb
	.byte	0x4d
	.4byte	0x106
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF117
	.byte	0xb
	.byte	0x50
	.4byte	0x9f
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF118
	.byte	0xb
	.byte	0x51
	.4byte	0x9f
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF119
	.byte	0xb
	.byte	0x52
	.4byte	0xaa
	.byte	0x18
	.uleb128 0x11
	.4byte	0x57b
	.byte	0x1c
	.uleb128 0x11
	.4byte	0x5aa
	.byte	0x20
	.byte	0
	.uleb128 0x3
	.4byte	.LASF120
	.byte	0xb
	.byte	0x29
	.4byte	0x4b4
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4ba
	.uleb128 0x12
	.4byte	0x4c5
	.uleb128 0x13
	.4byte	0x4c5
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x43d
	.uleb128 0xb
	.byte	0x20
	.byte	0xb
	.byte	0x2e
	.4byte	0x570
	.uleb128 0xc
	.4byte	.LASF121
	.byte	0xb
	.byte	0x2f
	.4byte	0xda
	.byte	0
	.uleb128 0xc
	.4byte	.LASF122
	.byte	0xb
	.byte	0x30
	.4byte	0xda
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF123
	.byte	0xb
	.byte	0x31
	.4byte	0xda
	.byte	0x2
	.uleb128 0xc
	.4byte	.LASF96
	.byte	0xb
	.byte	0x32
	.4byte	0xda
	.byte	0x3
	.uleb128 0xc
	.4byte	.LASF124
	.byte	0xb
	.byte	0x33
	.4byte	0xda
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF125
	.byte	0xb
	.byte	0x34
	.4byte	0xda
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF126
	.byte	0xb
	.byte	0x35
	.4byte	0xda
	.byte	0x6
	.uleb128 0xc
	.4byte	.LASF127
	.byte	0xb
	.byte	0x36
	.4byte	0x62
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF128
	.byte	0xb
	.byte	0x37
	.4byte	0x62
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF115
	.byte	0xb
	.byte	0x38
	.4byte	0xfb
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF129
	.byte	0xb
	.byte	0x39
	.4byte	0x62
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF130
	.byte	0xb
	.byte	0x3a
	.4byte	0x4a9
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF131
	.byte	0xb
	.byte	0x3b
	.4byte	0x4a9
	.byte	0x1c
	.byte	0
	.uleb128 0x3
	.4byte	.LASF132
	.byte	0xb
	.byte	0x3c
	.4byte	0x4cb
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.byte	0x53
	.4byte	0x59a
	.uleb128 0x15
	.4byte	.LASF133
	.byte	0xb
	.byte	0x54
	.4byte	0xd3
	.uleb128 0x15
	.4byte	.LASF134
	.byte	0xb
	.byte	0x55
	.4byte	0x59a
	.byte	0
	.uleb128 0xd
	.4byte	0xda
	.4byte	0x5aa
	.uleb128 0xe
	.4byte	0xb3
	.byte	0x3
	.byte	0
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.byte	0x57
	.4byte	0x5c9
	.uleb128 0x15
	.4byte	.LASF135
	.byte	0xb
	.byte	0x58
	.4byte	0xaa
	.uleb128 0x15
	.4byte	.LASF136
	.byte	0xb
	.byte	0x59
	.4byte	0x59a
	.byte	0
	.uleb128 0x3
	.4byte	.LASF137
	.byte	0xb
	.byte	0x5e
	.4byte	0x5d4
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5da
	.uleb128 0x16
	.4byte	.LASF251
	.uleb128 0xb
	.byte	0x1c
	.byte	0xc
	.byte	0x33
	.4byte	0x63c
	.uleb128 0xc
	.4byte	.LASF138
	.byte	0xc
	.byte	0x34
	.4byte	0x27a
	.byte	0
	.uleb128 0xc
	.4byte	.LASF139
	.byte	0xc
	.byte	0x35
	.4byte	0x27a
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF140
	.byte	0xc
	.byte	0x36
	.4byte	0x27a
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF141
	.byte	0xc
	.byte	0x37
	.4byte	0x27a
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF142
	.byte	0xc
	.byte	0x38
	.4byte	0x27a
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF143
	.byte	0xc
	.byte	0x39
	.4byte	0x27a
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF144
	.byte	0xc
	.byte	0x3a
	.4byte	0x62
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.4byte	.LASF145
	.byte	0xc
	.byte	0x3b
	.4byte	0x5df
	.uleb128 0xb
	.byte	0x18
	.byte	0xd
	.byte	0x3e
	.4byte	0x6ca
	.uleb128 0x17
	.4byte	.LASF146
	.byte	0xd
	.byte	0x40
	.4byte	0xda
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0
	.uleb128 0x17
	.4byte	.LASF147
	.byte	0xd
	.byte	0x41
	.4byte	0xda
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x17
	.4byte	.LASF148
	.byte	0xd
	.byte	0x42
	.4byte	0xda
	.byte	0x1
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF149
	.byte	0xd
	.byte	0x43
	.4byte	0x59a
	.byte	0x1
	.uleb128 0x17
	.4byte	.LASF150
	.byte	0xd
	.byte	0x44
	.4byte	0xda
	.byte	0x1
	.byte	0x1
	.byte	0x7
	.byte	0x5
	.uleb128 0x17
	.4byte	.LASF151
	.byte	0xd
	.byte	0x45
	.4byte	0xda
	.byte	0x1
	.byte	0x7
	.byte	0
	.byte	0x5
	.uleb128 0x10
	.string	"ncr"
	.byte	0xd
	.byte	0x47
	.4byte	0xda
	.byte	0x6
	.uleb128 0x10
	.string	"r1"
	.byte	0xd
	.byte	0x49
	.4byte	0xda
	.byte	0x7
	.uleb128 0xc
	.4byte	.LASF152
	.byte	0xd
	.byte	0x4b
	.4byte	0x395
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF153
	.byte	0xd
	.byte	0x4c
	.4byte	0x647
	.uleb128 0xb
	.byte	0x10
	.byte	0x1
	.byte	0x28
	.4byte	0x744
	.uleb128 0xc
	.4byte	.LASF154
	.byte	0x1
	.byte	0x29
	.4byte	0x5c9
	.byte	0
	.uleb128 0xc
	.4byte	.LASF141
	.byte	0x1
	.byte	0x2a
	.4byte	0xda
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF142
	.byte	0x1
	.byte	0x2b
	.4byte	0xda
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF143
	.byte	0x1
	.byte	0x2c
	.4byte	0xda
	.byte	0x6
	.uleb128 0x17
	.4byte	.LASF155
	.byte	0x1
	.byte	0x2e
	.4byte	0xda
	.byte	0x1
	.byte	0x1
	.byte	0x7
	.byte	0x7
	.uleb128 0x17
	.4byte	.LASF156
	.byte	0x1
	.byte	0x30
	.4byte	0xda
	.byte	0x1
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.uleb128 0xc
	.4byte	.LASF157
	.byte	0x1
	.byte	0x33
	.4byte	0x744
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF158
	.byte	0x1
	.byte	0x35
	.4byte	0x4c5
	.byte	0xc
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xda
	.uleb128 0x3
	.4byte	.LASF159
	.byte	0x1
	.byte	0x36
	.4byte	0x6d5
	.uleb128 0x18
	.4byte	.LASF160
	.byte	0x1
	.byte	0x65
	.4byte	0x194
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x77e
	.uleb128 0x19
	.4byte	.LASF162
	.byte	0x1
	.byte	0x65
	.4byte	0x62
	.4byte	.LLST0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF161
	.byte	0x1
	.byte	0x6a
	.4byte	0x5c9
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7a7
	.uleb128 0x19
	.4byte	.LASF162
	.byte	0x1
	.byte	0x6a
	.4byte	0x62
	.4byte	.LLST1
	.byte	0
	.uleb128 0x18
	.4byte	.LASF163
	.byte	0x1
	.byte	0x6f
	.4byte	0x194
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7e0
	.uleb128 0x19
	.4byte	.LASF162
	.byte	0x1
	.byte	0x6f
	.4byte	0x62
	.4byte	.LLST2
	.uleb128 0x1a
	.4byte	.LVL6
	.4byte	0x77e
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF155
	.byte	0x1
	.byte	0x74
	.4byte	0x194
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x809
	.uleb128 0x19
	.4byte	.LASF162
	.byte	0x1
	.byte	0x74
	.4byte	0x62
	.4byte	.LLST3
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF166
	.byte	0x1
	.byte	0x90
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x82e
	.uleb128 0x19
	.4byte	.LASF162
	.byte	0x1
	.byte	0x90
	.4byte	0x62
	.4byte	.LLST4
	.byte	0
	.uleb128 0x18
	.4byte	.LASF164
	.byte	0x1
	.byte	0xbd
	.4byte	0x194
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x857
	.uleb128 0x1d
	.string	"ptr"
	.byte	0x1
	.byte	0xbd
	.4byte	0xd3
	.4byte	.LLST5
	.byte	0
	.uleb128 0x18
	.4byte	.LASF165
	.byte	0x1
	.byte	0xc9
	.4byte	0x158
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8dc
	.uleb128 0x19
	.4byte	.LASF162
	.byte	0x1
	.byte	0xc9
	.4byte	0x62
	.4byte	.LLST6
	.uleb128 0x19
	.4byte	.LASF127
	.byte	0x1
	.byte	0xc9
	.4byte	0x62
	.4byte	.LLST7
	.uleb128 0x1e
	.4byte	.LASF172
	.byte	0x1
	.byte	0xd0
	.4byte	0x570
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1f
	.4byte	.LVL15
	.4byte	0x77e
	.4byte	0x8b0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL16
	.4byte	0x1ca1
	.uleb128 0x1a
	.4byte	.LVL18
	.4byte	0x1cac
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x8
	.byte	0x73
	.sleb128 0
	.byte	0x3
	.4byte	s_slots
	.byte	0x22
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF167
	.byte	0x1
	.byte	0x47
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x910
	.uleb128 0x19
	.4byte	.LASF162
	.byte	0x1
	.byte	0x47
	.4byte	0x62
	.4byte	.LLST8
	.uleb128 0x1a
	.4byte	.LVL22
	.4byte	0x1cb7
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF168
	.byte	0x1
	.byte	0x4d
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x944
	.uleb128 0x19
	.4byte	.LASF162
	.byte	0x1
	.byte	0x4d
	.4byte	0x62
	.4byte	.LLST9
	.uleb128 0x1a
	.4byte	.LVL25
	.4byte	0x1cb7
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF169
	.byte	0x1
	.byte	0x5c
	.4byte	0x194
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x976
	.uleb128 0x19
	.4byte	.LASF162
	.byte	0x1
	.byte	0x5c
	.4byte	0x62
	.4byte	.LLST10
	.uleb128 0x20
	.4byte	.LVL28
	.4byte	0x1cc3
	.byte	0
	.uleb128 0x18
	.4byte	.LASF170
	.byte	0x1
	.byte	0x53
	.4byte	0x194
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9a8
	.uleb128 0x19
	.4byte	.LASF162
	.byte	0x1
	.byte	0x53
	.4byte	0x62
	.4byte	.LLST11
	.uleb128 0x20
	.4byte	.LVL31
	.4byte	0x1cc3
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF171
	.byte	0x1
	.byte	0xad
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa2c
	.uleb128 0x21
	.4byte	.LASF162
	.byte	0x1
	.byte	0xad
	.4byte	0x62
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1e
	.4byte	.LASF173
	.byte	0x1
	.byte	0xb0
	.4byte	0xa2c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x22
	.string	"t"
	.byte	0x1
	.byte	0xb2
	.4byte	0x43d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1f
	.4byte	.LVL33
	.4byte	0x1ccf
	.4byte	0xa06
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xff
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL34
	.4byte	0x77e
	.4byte	0xa1a
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL35
	.4byte	0x1cda
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	0xda
	.4byte	0xa3c
	.uleb128 0xe
	.4byte	0xb3
	.byte	0xb
	.byte	0
	.uleb128 0x23
	.4byte	.LASF174
	.byte	0x1
	.2byte	0x1c8
	.4byte	0x158
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xacc
	.uleb128 0x24
	.4byte	.LASF162
	.byte	0x1
	.2byte	0x1c8
	.4byte	0x62
	.4byte	.LLST12
	.uleb128 0x25
	.string	"t"
	.byte	0x1
	.2byte	0x1c8
	.4byte	0x4c5
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x26
	.4byte	.LASF175
	.byte	0x1
	.2byte	0x1ca
	.4byte	0xda
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.string	"ret"
	.byte	0x1
	.2byte	0x1d0
	.4byte	0x158
	.4byte	.LLST13
	.uleb128 0x28
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x29
	.4byte	.LASF176
	.byte	0x1
	.2byte	0x1d2
	.4byte	0x62
	.4byte	.LLST14
	.uleb128 0x1f
	.4byte	.LVL39
	.4byte	0x77e
	.4byte	0xaba
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL40
	.4byte	0x1cda
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LASF177
	.byte	0x1
	.2byte	0x1ad
	.4byte	0x158
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb5a
	.uleb128 0x24
	.4byte	.LASF162
	.byte	0x1
	.2byte	0x1ad
	.4byte	0x62
	.4byte	.LLST15
	.uleb128 0x25
	.string	"t"
	.byte	0x1
	.2byte	0x1ad
	.4byte	0x4c5
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x26
	.4byte	.LASF175
	.byte	0x1
	.2byte	0x1af
	.4byte	0xda
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.string	"ret"
	.byte	0x1
	.2byte	0x1b5
	.4byte	0x158
	.4byte	.LLST16
	.uleb128 0x28
	.4byte	.Ldebug_ranges0+0x20
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.2byte	0x1b7
	.4byte	0x62
	.4byte	.LLST17
	.uleb128 0x1f
	.4byte	.LVL56
	.4byte	0x77e
	.4byte	0xb48
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL57
	.4byte	0x1cda
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LASF178
	.byte	0x1
	.2byte	0x1ed
	.4byte	0x158
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc8a
	.uleb128 0x24
	.4byte	.LASF162
	.byte	0x1
	.2byte	0x1ed
	.4byte	0x62
	.4byte	.LLST18
	.uleb128 0x25
	.string	"t"
	.byte	0x1
	.2byte	0x1ed
	.4byte	0x4c5
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2a
	.4byte	.LASF179
	.byte	0x1
	.2byte	0x1ee
	.4byte	0x744
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2a
	.4byte	.LASF180
	.byte	0x1
	.2byte	0x1ee
	.4byte	0xc8a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x26
	.4byte	.LASF175
	.byte	0x1
	.2byte	0x1f0
	.4byte	0xc90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.string	"ret"
	.byte	0x1
	.2byte	0x1f6
	.4byte	0x158
	.4byte	.LLST19
	.uleb128 0x2b
	.4byte	.LASF194
	.4byte	0xcb0
	.uleb128 0x28
	.4byte	.Ldebug_ranges0+0x38
	.uleb128 0x29
	.4byte	.LASF176
	.byte	0x1
	.2byte	0x1f7
	.4byte	0x62
	.4byte	.LLST20
	.uleb128 0x28
	.4byte	.Ldebug_ranges0+0x58
	.uleb128 0x29
	.4byte	.LASF181
	.byte	0x1
	.2byte	0x1fd
	.4byte	0x194
	.4byte	.LLST21
	.uleb128 0x2c
	.4byte	.Ldebug_ranges0+0x78
	.4byte	0xc44
	.uleb128 0x29
	.4byte	.LASF182
	.byte	0x1
	.2byte	0x1fe
	.4byte	0x62
	.4byte	.LLST22
	.uleb128 0x28
	.4byte	.Ldebug_ranges0+0x90
	.uleb128 0x29
	.4byte	.LASF183
	.byte	0x1
	.2byte	0x1ff
	.4byte	0xda
	.4byte	.LLST23
	.uleb128 0x1a
	.4byte	.LVL72
	.4byte	0x1ce5
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL66
	.4byte	0x1ccf
	.4byte	0xc63
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xff
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL67
	.4byte	0x77e
	.4byte	0xc77
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL68
	.4byte	0x1cda
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x9f
	.uleb128 0xd
	.4byte	0xda
	.4byte	0xca0
	.uleb128 0xe
	.4byte	0xb3
	.byte	0x7
	.byte	0
	.uleb128 0xd
	.4byte	0xc1
	.4byte	0xcb0
	.uleb128 0xe
	.4byte	0xb3
	.byte	0xf
	.byte	0
	.uleb128 0x7
	.4byte	0xca0
	.uleb128 0x23
	.4byte	.LASF184
	.byte	0x1
	.2byte	0x196
	.4byte	0x158
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd42
	.uleb128 0x24
	.4byte	.LASF162
	.byte	0x1
	.2byte	0x196
	.4byte	0x62
	.4byte	.LLST24
	.uleb128 0x2a
	.4byte	.LASF115
	.byte	0x1
	.2byte	0x196
	.4byte	0x62
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x25
	.string	"cmd"
	.byte	0x1
	.2byte	0x196
	.4byte	0xd42
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x29
	.4byte	.LASF185
	.byte	0x1
	.2byte	0x198
	.4byte	0x9f
	.4byte	.LLST25
	.uleb128 0x2d
	.string	"t"
	.byte	0x1
	.2byte	0x1a2
	.4byte	0x43d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2d
	.string	"ret"
	.byte	0x1
	.2byte	0x1a8
	.4byte	0x158
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x20
	.4byte	.LVL90
	.4byte	0x77e
	.uleb128 0x1a
	.4byte	.LVL91
	.4byte	0x1cda
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x6ca
	.uleb128 0x1c
	.4byte	.LASF186
	.byte	0x1
	.byte	0xa1
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd9d
	.uleb128 0x21
	.4byte	.LASF162
	.byte	0x1
	.byte	0xa1
	.4byte	0x62
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x22
	.string	"t"
	.byte	0x1
	.byte	0xa3
	.4byte	0x43d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1f
	.4byte	.LVL94
	.4byte	0x77e
	.4byte	0xd8b
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL95
	.4byte	0x1cda
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF187
	.byte	0x1
	.byte	0x7b
	.4byte	0x158
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xde9
	.uleb128 0x19
	.4byte	.LASF162
	.byte	0x1
	.byte	0x7b
	.4byte	0x62
	.4byte	.LLST26
	.uleb128 0x21
	.4byte	.LASF188
	.byte	0x1
	.byte	0x7b
	.4byte	0xde9
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1a
	.4byte	.LVL97
	.4byte	0x1cee
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0x204
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x744
	.uleb128 0x1c
	.4byte	.LASF189
	.byte	0x1
	.byte	0x95
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe8c
	.uleb128 0x21
	.4byte	.LASF162
	.byte	0x1
	.byte	0x95
	.4byte	0x62
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1e
	.4byte	.LASF156
	.byte	0x1
	.byte	0x97
	.4byte	0x9f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2e
	.4byte	.LBB17
	.4byte	.LBE17-.LBB17
	.uleb128 0x2f
	.string	"i"
	.byte	0x1
	.byte	0x98
	.4byte	0x9f
	.4byte	.LLST27
	.uleb128 0x2e
	.4byte	.LBB18
	.4byte	.LBE18-.LBB18
	.uleb128 0x1e
	.4byte	.LASF190
	.byte	0x1
	.byte	0x99
	.4byte	0x4c5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1f
	.4byte	.LVL104
	.4byte	0x77e
	.4byte	0xe5f
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL105
	.4byte	0x1cf9
	.4byte	0xe79
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL106
	.4byte	0x809
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF191
	.byte	0x1
	.byte	0x87
	.4byte	0x4c5
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf0d
	.uleb128 0x19
	.4byte	.LASF162
	.byte	0x1
	.byte	0x87
	.4byte	0x62
	.4byte	.LLST28
	.uleb128 0x30
	.4byte	.LASF156
	.byte	0x1
	.byte	0x89
	.4byte	0x9f
	.4byte	.LLST29
	.uleb128 0x31
	.4byte	.LASF194
	.4byte	0xf0d
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5976
	.uleb128 0x2f
	.string	"ret"
	.byte	0x1
	.byte	0x8b
	.4byte	0x4c5
	.4byte	.LLST30
	.uleb128 0x1a
	.4byte	.LVL110
	.4byte	0x1d04
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x8a
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5976
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0xca0
	.uleb128 0x23
	.4byte	.LASF192
	.byte	0x1
	.2byte	0x2b1
	.4byte	0x158
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x136e
	.uleb128 0x24
	.4byte	.LASF162
	.byte	0x1
	.2byte	0x2b1
	.4byte	0x62
	.4byte	.LLST31
	.uleb128 0x32
	.string	"cmd"
	.byte	0x1
	.2byte	0x2b1
	.4byte	0xd42
	.4byte	.LLST32
	.uleb128 0x24
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x2b2
	.4byte	0x136e
	.4byte	.LLST33
	.uleb128 0x24
	.4byte	.LASF193
	.byte	0x1
	.2byte	0x2b2
	.4byte	0xfb
	.4byte	.LLST34
	.uleb128 0x31
	.4byte	.LASF194
	.4byte	0x1389
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6129
	.uleb128 0x29
	.4byte	.LASF195
	.byte	0x1
	.2byte	0x2b8
	.4byte	0x4c5
	.4byte	.LLST35
	.uleb128 0x27
	.string	"ret"
	.byte	0x1
	.2byte	0x2be
	.4byte	0x158
	.4byte	.LLST36
	.uleb128 0x26
	.4byte	.LASF196
	.byte	0x1
	.2byte	0x2c2
	.4byte	0xda
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x33
	.4byte	.LBB19
	.4byte	.LBE19-.LBB19
	.4byte	0x1200
	.uleb128 0x29
	.4byte	.LASF197
	.byte	0x1
	.2byte	0x2c9
	.4byte	0x4c5
	.4byte	.LLST37
	.uleb128 0x27
	.string	"ret"
	.byte	0x1
	.2byte	0x2ce
	.4byte	0x158
	.4byte	.LLST38
	.uleb128 0x29
	.4byte	.LASF198
	.byte	0x1
	.2byte	0x2d4
	.4byte	0x9f
	.4byte	.LLST39
	.uleb128 0x29
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x2d5
	.4byte	0x136e
	.4byte	.LLST40
	.uleb128 0x29
	.4byte	.LASF199
	.byte	0x1
	.2byte	0x2e2
	.4byte	0x4c5
	.4byte	.LLST41
	.uleb128 0x2d
	.string	"crc"
	.byte	0x1
	.2byte	0x2ed
	.4byte	0xe5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x29
	.4byte	.LASF200
	.byte	0x1
	.2byte	0x2ee
	.4byte	0x4c5
	.4byte	.LLST42
	.uleb128 0x29
	.4byte	.LASF201
	.byte	0x1
	.2byte	0x302
	.4byte	0x4c5
	.4byte	.LLST43
	.uleb128 0x33
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.4byte	0x1083
	.uleb128 0x2d
	.string	"tmp"
	.byte	0x1
	.2byte	0x2d8
	.4byte	0x744
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1f
	.4byte	.LVL137
	.4byte	0xd9d
	.4byte	0x106c
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL141
	.4byte	0x1ce5
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL130
	.4byte	0xe8c
	.4byte	0x1097
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL132
	.4byte	0x77e
	.4byte	0x10ab
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL133
	.4byte	0x1d0f
	.4byte	0x10c5
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL136
	.4byte	0x82e
	.4byte	0x10d9
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL146
	.4byte	0xe8c
	.4byte	0x10ed
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL148
	.4byte	0x77e
	.4byte	0x1101
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL149
	.4byte	0x1d0f
	.4byte	0x111b
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL151
	.4byte	0x1d1a
	.4byte	0x1135
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL152
	.4byte	0xe8c
	.4byte	0x1149
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL154
	.4byte	0x77e
	.4byte	0x115d
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL155
	.4byte	0x1d0f
	.4byte	0x1177
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL157
	.4byte	0xdef
	.4byte	0x118b
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL159
	.4byte	0xe8c
	.4byte	0x119f
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL161
	.4byte	0xa3c
	.4byte	0x11b3
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL163
	.4byte	0x809
	.4byte	0x11c7
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL164
	.4byte	0xe8c
	.4byte	0x11db
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL166
	.4byte	0xacc
	.4byte	0x11ef
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL168
	.4byte	0x809
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.4byte	.Ldebug_ranges0+0xa8
	.4byte	0x12c7
	.uleb128 0x26
	.4byte	.LASF202
	.byte	0x1
	.2byte	0x316
	.4byte	0x138e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x29
	.4byte	.LASF203
	.byte	0x1
	.2byte	0x31a
	.4byte	0x4c5
	.4byte	.LLST44
	.uleb128 0x29
	.4byte	.LASF201
	.byte	0x1
	.2byte	0x325
	.4byte	0x4c5
	.4byte	.LLST45
	.uleb128 0x1f
	.4byte	.LVL186
	.4byte	0xe8c
	.4byte	0x124c
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL188
	.4byte	0x77e
	.4byte	0x1260
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL189
	.4byte	0x1d0f
	.4byte	0x127a
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL191
	.4byte	0xdef
	.4byte	0x128e
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL192
	.4byte	0xe8c
	.4byte	0x12a2
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL194
	.4byte	0xacc
	.4byte	0x12b6
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL196
	.4byte	0x809
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL118
	.4byte	0x976
	.4byte	0x12db
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL119
	.4byte	0x1d25
	.uleb128 0x1f
	.4byte	.LVL120
	.4byte	0x1d30
	.4byte	0x131b
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC20
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC22
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC20
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6129
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL123
	.4byte	0xe8c
	.4byte	0x132f
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL125
	.4byte	0x77e
	.4byte	0x1343
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL126
	.4byte	0x1d0f
	.4byte	0x135d
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL129
	.4byte	0xdef
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1374
	.uleb128 0x7
	.4byte	0xda
	.uleb128 0xd
	.4byte	0xc1
	.4byte	0x1389
	.uleb128 0xe
	.4byte	0xb3
	.byte	0x1a
	.byte	0
	.uleb128 0x7
	.4byte	0x1379
	.uleb128 0xd
	.4byte	0xda
	.4byte	0x139e
	.uleb128 0xe
	.4byte	0xb3
	.byte	0x1
	.byte	0
	.uleb128 0x23
	.4byte	.LASF204
	.byte	0x1
	.2byte	0x23d
	.4byte	0x158
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x179b
	.uleb128 0x24
	.4byte	.LASF162
	.byte	0x1
	.2byte	0x23d
	.4byte	0x62
	.4byte	.LLST46
	.uleb128 0x32
	.string	"cmd"
	.byte	0x1
	.2byte	0x23d
	.4byte	0xd42
	.4byte	.LLST47
	.uleb128 0x24
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x23e
	.4byte	0x744
	.4byte	.LLST48
	.uleb128 0x24
	.4byte	.LASF205
	.byte	0x1
	.2byte	0x23e
	.4byte	0xfb
	.4byte	.LLST49
	.uleb128 0x29
	.4byte	.LASF206
	.byte	0x1
	.2byte	0x240
	.4byte	0x194
	.4byte	.LLST50
	.uleb128 0x29
	.4byte	.LASF195
	.byte	0x1
	.2byte	0x241
	.4byte	0x4c5
	.4byte	.LLST51
	.uleb128 0x27
	.string	"ret"
	.byte	0x1
	.2byte	0x247
	.4byte	0x158
	.4byte	.LLST52
	.uleb128 0x29
	.4byte	.LASF207
	.byte	0x1
	.2byte	0x24d
	.4byte	0x744
	.4byte	.LLST53
	.uleb128 0x29
	.4byte	.LASF208
	.byte	0x1
	.2byte	0x24e
	.4byte	0x9f
	.4byte	.LLST54
	.uleb128 0x29
	.4byte	.LASF209
	.byte	0x1
	.2byte	0x24f
	.4byte	0x744
	.4byte	.LLST55
	.uleb128 0x33
	.4byte	.LBB23
	.4byte	.LBE23-.LBB23
	.4byte	0x16ad
	.uleb128 0x26
	.4byte	.LASF210
	.byte	0x1
	.2byte	0x253
	.4byte	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x29
	.4byte	.LASF211
	.byte	0x1
	.2byte	0x254
	.4byte	0x136e
	.4byte	.LLST56
	.uleb128 0x29
	.4byte	.LASF212
	.byte	0x1
	.2byte	0x255
	.4byte	0x194
	.4byte	.LLST57
	.uleb128 0x29
	.4byte	.LASF213
	.byte	0x1
	.2byte	0x26b
	.4byte	0x9f
	.4byte	.LLST58
	.uleb128 0x26
	.4byte	.LASF136
	.byte	0x1
	.2byte	0x26c
	.4byte	0x744
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x29
	.4byte	.LASF214
	.byte	0x1
	.2byte	0x273
	.4byte	0x179b
	.4byte	.LLST59
	.uleb128 0x29
	.4byte	.LASF199
	.byte	0x1
	.2byte	0x275
	.4byte	0x4c5
	.4byte	.LLST60
	.uleb128 0x2d
	.string	"crc"
	.byte	0x1
	.2byte	0x283
	.4byte	0xe5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x29
	.4byte	.LASF215
	.byte	0x1
	.2byte	0x291
	.4byte	0xe5
	.4byte	.LLST61
	.uleb128 0x33
	.4byte	.LBB24
	.4byte	.LBE24-.LBB24
	.4byte	0x150f
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.2byte	0x257
	.4byte	0x62
	.4byte	.LLST62
	.byte	0
	.uleb128 0x33
	.4byte	.LBB25
	.4byte	.LBE25-.LBB25
	.4byte	0x1572
	.uleb128 0x29
	.4byte	.LASF201
	.byte	0x1
	.2byte	0x262
	.4byte	0x4c5
	.4byte	.LLST63
	.uleb128 0x1f
	.4byte	.LVL227
	.4byte	0xe8c
	.4byte	0x1540
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL229
	.4byte	0xb5a
	.4byte	0x1561
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL232
	.4byte	0x809
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL234
	.4byte	0xd9d
	.4byte	0x158d
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL237
	.4byte	0x1ccf
	.4byte	0x15a7
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xff
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL238
	.4byte	0xe8c
	.4byte	0x15bb
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL240
	.4byte	0x77e
	.4byte	0x15cf
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL241
	.4byte	0x1cda
	.4byte	0x15e3
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL243
	.4byte	0x809
	.4byte	0x15f7
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL247
	.4byte	0x1ce5
	.4byte	0x160b
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL248
	.4byte	0x1ce5
	.4byte	0x1626
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL249
	.4byte	0x7e0
	.4byte	0x163a
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL250
	.4byte	0x1d1a
	.4byte	0x164e
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL252
	.4byte	0x1d25
	.uleb128 0x1f
	.4byte	.LVL255
	.4byte	0x1d30
	.4byte	0x168c
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC26
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL256
	.4byte	0x1d3b
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.byte	0
	.uleb128 0x2c
	.4byte	.Ldebug_ranges0+0xc0
	.4byte	0x174e
	.uleb128 0x26
	.4byte	.LASF216
	.byte	0x1
	.2byte	0x2a4
	.4byte	0x6ca
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x29
	.4byte	.LASF201
	.byte	0x1
	.2byte	0x2aa
	.4byte	0x4c5
	.4byte	.LLST64
	.uleb128 0x1f
	.4byte	.LVL269
	.4byte	0x1d46
	.4byte	0x16f5
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3c
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL270
	.4byte	0xcb5
	.4byte	0x1715
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL274
	.4byte	0xe8c
	.4byte	0x1729
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL276
	.4byte	0xacc
	.4byte	0x173d
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL277
	.4byte	0x809
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL208
	.4byte	0xe8c
	.4byte	0x1762
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL210
	.4byte	0x77e
	.4byte	0x1776
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL211
	.4byte	0x1cda
	.4byte	0x178a
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL213
	.4byte	0x809
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0x9f
	.uleb128 0x34
	.4byte	.LASF252
	.byte	0x1
	.byte	0xdb
	.4byte	0x158
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x35
	.4byte	.LASF253
	.byte	0x1
	.byte	0xe0
	.4byte	0x158
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1811
	.uleb128 0x2e
	.4byte	.LBB28
	.4byte	.LBE28-.LBB28
	.uleb128 0x2f
	.string	"i"
	.byte	0x1
	.byte	0xe2
	.4byte	0x9f
	.4byte	.LLST65
	.uleb128 0x20
	.4byte	.LVL285
	.4byte	0x1ca1
	.uleb128 0x20
	.4byte	.LVL286
	.4byte	0x1d51
	.uleb128 0x20
	.4byte	.LVL287
	.4byte	0x1d51
	.uleb128 0x1a
	.4byte	.LVL288
	.4byte	0x1d5c
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LASF218
	.byte	0x1
	.byte	0xf0
	.4byte	0x158
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1887
	.uleb128 0x19
	.4byte	.LASF162
	.byte	0x1
	.byte	0xf0
	.4byte	0x62
	.4byte	.LLST66
	.uleb128 0x19
	.4byte	.LASF217
	.byte	0x1
	.byte	0xf0
	.4byte	0xfb
	.4byte	.LLST67
	.uleb128 0x1f
	.4byte	.LVL291
	.4byte	0x755
	.4byte	0x185c
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL292
	.4byte	0x7a7
	.4byte	0x1870
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL294
	.4byte	0x857
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LASF219
	.byte	0x1
	.byte	0xfc
	.4byte	0x158
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a4b
	.uleb128 0x19
	.4byte	.LASF162
	.byte	0x1
	.byte	0xfc
	.4byte	0x62
	.4byte	.LLST68
	.uleb128 0x19
	.4byte	.LASF220
	.byte	0x1
	.byte	0xfc
	.4byte	0x1a4b
	.4byte	.LLST69
	.uleb128 0x2b
	.4byte	.LASF194
	.4byte	0x1a66
	.uleb128 0x29
	.4byte	.LASF221
	.byte	0x1
	.2byte	0x105
	.4byte	0x3d6
	.4byte	.LLST70
	.uleb128 0x26
	.4byte	.LASF222
	.byte	0x1
	.2byte	0x10a
	.4byte	0x432
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x27
	.string	"ret"
	.byte	0x1
	.2byte	0x113
	.4byte	0x158
	.4byte	.LLST71
	.uleb128 0x26
	.4byte	.LASF223
	.byte	0x1
	.2byte	0x124
	.4byte	0x38a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1f
	.4byte	.LVL302
	.4byte	0x755
	.4byte	0x191a
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL303
	.4byte	0x1d67
	.4byte	0x1935
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL305
	.4byte	0x857
	.4byte	0x1952
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0xc
	.4byte	0x61a80
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL307
	.4byte	0x1d5c
	.4byte	0x1966
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL312
	.4byte	0x1d72
	.4byte	0x197a
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL314
	.4byte	0x77e
	.4byte	0x198e
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL315
	.4byte	0x1ca1
	.uleb128 0x1f
	.4byte	.LVL317
	.4byte	0x1d5c
	.4byte	0x19ab
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL320
	.4byte	0x8dc
	.4byte	0x19bf
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL325
	.4byte	0x1d72
	.4byte	0x19d3
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL327
	.4byte	0x77e
	.4byte	0x19e7
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL328
	.4byte	0x1ca1
	.uleb128 0x1f
	.4byte	.LVL329
	.4byte	0x1d5c
	.4byte	0x1a04
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL332
	.4byte	0x1d7d
	.4byte	0x1a1d
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x28
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL333
	.4byte	0x77e
	.4byte	0x1a31
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL334
	.4byte	0x1ca1
	.uleb128 0x1a
	.4byte	.LVL335
	.4byte	0x1d5c
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1a51
	.uleb128 0x7
	.4byte	0x63c
	.uleb128 0xd
	.4byte	0xc1
	.4byte	0x1a66
	.uleb128 0xe
	.4byte	0xb3
	.byte	0x14
	.byte	0
	.uleb128 0x7
	.4byte	0x1a56
	.uleb128 0x37
	.4byte	.LASF224
	.byte	0x1
	.2byte	0x160
	.4byte	0x158
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c54
	.uleb128 0x24
	.4byte	.LASF162
	.byte	0x1
	.2byte	0x160
	.4byte	0x62
	.4byte	.LLST72
	.uleb128 0x32
	.string	"cmd"
	.byte	0x1
	.2byte	0x160
	.4byte	0xd42
	.4byte	.LLST73
	.uleb128 0x24
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x160
	.4byte	0xaa
	.4byte	.LLST74
	.uleb128 0x24
	.4byte	.LASF225
	.byte	0x1
	.2byte	0x161
	.4byte	0xfb
	.4byte	.LLST75
	.uleb128 0x2a
	.4byte	.LASF115
	.byte	0x1
	.2byte	0x161
	.4byte	0x62
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x29
	.4byte	.LASF146
	.byte	0x1
	.2byte	0x16d
	.4byte	0x62
	.4byte	.LLST76
	.uleb128 0x26
	.4byte	.LASF226
	.byte	0x1
	.2byte	0x16e
	.4byte	0xfb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x31
	.4byte	.LASF194
	.4byte	0x1c64
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6038
	.uleb128 0x27
	.string	"ret"
	.byte	0x1
	.2byte	0x17b
	.4byte	0x158
	.4byte	.LLST77
	.uleb128 0x1f
	.4byte	.LVL344
	.4byte	0x755
	.4byte	0x1b25
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL345
	.4byte	0x7a7
	.4byte	0x1b39
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL346
	.4byte	0x944
	.4byte	0x1b4d
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL349
	.4byte	0x9a8
	.4byte	0x1b61
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL350
	.4byte	0x910
	.4byte	0x1b75
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL351
	.4byte	0xf12
	.4byte	0x1b9b
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL354
	.4byte	0x139e
	.4byte	0x1bc1
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL357
	.4byte	0xcb5
	.4byte	0x1be1
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL359
	.4byte	0x8dc
	.4byte	0x1bf5
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL360
	.4byte	0xd48
	.4byte	0x1c09
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL361
	.4byte	0x1d25
	.uleb128 0x1a
	.4byte	.LVL362
	.4byte	0x1d30
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC20
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC33
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC20
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6038
	.uleb128 0x1b
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	0xc1
	.4byte	0x1c64
	.uleb128 0xe
	.4byte	0xb3
	.byte	0x18
	.byte	0
	.uleb128 0x7
	.4byte	0x1c54
	.uleb128 0xd
	.4byte	0x74a
	.4byte	0x1c79
	.uleb128 0xe
	.4byte	0xb3
	.byte	0x2
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF227
	.byte	0x1
	.byte	0x38
	.4byte	0x1c69
	.uleb128 0x5
	.byte	0x3
	.4byte	s_slots
	.uleb128 0x22
	.string	"TAG"
	.byte	0x1
	.byte	0x39
	.4byte	0x1c9c
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC20
	.byte	0x9f
	.uleb128 0x7
	.4byte	0xc8
	.uleb128 0x38
	.4byte	.LASF228
	.4byte	.LASF228
	.byte	0xb
	.byte	0xa3
	.uleb128 0x38
	.4byte	.LASF229
	.4byte	.LASF229
	.byte	0xb
	.byte	0x97
	.uleb128 0x39
	.4byte	.LASF230
	.4byte	.LASF230
	.byte	0x8
	.2byte	0x129
	.uleb128 0x39
	.4byte	.LASF231
	.4byte	.LASF231
	.byte	0x8
	.2byte	0x135
	.uleb128 0x38
	.4byte	.LASF232
	.4byte	.LASF232
	.byte	0xe
	.byte	0x19
	.uleb128 0x38
	.4byte	.LASF233
	.4byte	.LASF233
	.byte	0xb
	.byte	0xd6
	.uleb128 0x3a
	.4byte	.LASF254
	.4byte	.LASF254
	.uleb128 0x38
	.4byte	.LASF234
	.4byte	.LASF234
	.byte	0xf
	.byte	0x32
	.uleb128 0x38
	.4byte	.LASF235
	.4byte	.LASF235
	.byte	0xb
	.byte	0xc6
	.uleb128 0x38
	.4byte	.LASF236
	.4byte	.LASF236
	.byte	0x10
	.byte	0x29
	.uleb128 0x38
	.4byte	.LASF237
	.4byte	.LASF237
	.byte	0xb
	.byte	0xb1
	.uleb128 0x38
	.4byte	.LASF238
	.4byte	.LASF238
	.byte	0x11
	.byte	0x26
	.uleb128 0x38
	.4byte	.LASF239
	.4byte	.LASF239
	.byte	0x5
	.byte	0x4c
	.uleb128 0x38
	.4byte	.LASF240
	.4byte	.LASF240
	.byte	0x5
	.byte	0x60
	.uleb128 0x38
	.4byte	.LASF241
	.4byte	.LASF241
	.byte	0x12
	.byte	0x13
	.uleb128 0x38
	.4byte	.LASF242
	.4byte	.LASF242
	.byte	0xd
	.byte	0x5d
	.uleb128 0x38
	.4byte	.LASF243
	.4byte	.LASF243
	.byte	0x13
	.byte	0x5a
	.uleb128 0x38
	.4byte	.LASF244
	.4byte	.LASF244
	.byte	0xb
	.byte	0x82
	.uleb128 0x38
	.4byte	.LASF245
	.4byte	.LASF245
	.byte	0xb
	.byte	0x75
	.uleb128 0x38
	.4byte	.LASF246
	.4byte	.LASF246
	.byte	0x8
	.byte	0xf6
	.uleb128 0x38
	.4byte	.LASF247
	.4byte	.LASF247
	.byte	0x13
	.byte	0x57
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
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL4
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL7
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL9
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL11
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL13
	.4byte	.LFE26
	.2byte	0x7
	.byte	0x78
	.sleb128 1073405952
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL14
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL19
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL14
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL17
	.4byte	.LVL18-1
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	.LVL18-1
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL21
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL24
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL27
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL30
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL36
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL52
	.4byte	.LFE35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL43
	.4byte	.LFE35
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LFE35
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL53
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL62
	.4byte	.LFE34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL57
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL61
	.4byte	.LFE34
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL55
	.4byte	.LFE34
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL63
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL78
	.4byte	.LVL79
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL79
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL80
	.4byte	.LVL81
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL81
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL82
	.4byte	.LVL83
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL83
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL84
	.4byte	.LVL85
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL85
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL86
	.4byte	.LFE36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL79
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL64
	.4byte	.LVL65
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL65
	.4byte	.LFE36
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL71
	.4byte	.LVL73
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL75
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL83
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL69
	.4byte	.LVL72-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL73
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL81
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL70
	.4byte	.LVL72-1
	.2byte	0x8
	.byte	0x91
	.sleb128 0
	.byte	0x79
	.sleb128 0
	.byte	0x22
	.byte	0x8
	.byte	0x30
	.byte	0x1c
	.4byte	.LVL73
	.4byte	.LVL74
	.2byte	0x8
	.byte	0x91
	.sleb128 0
	.byte	0x79
	.sleb128 0
	.byte	0x22
	.byte	0x8
	.byte	0x30
	.byte	0x1c
	.4byte	.LVL81
	.4byte	.LVL83
	.2byte	0x8
	.byte	0x91
	.sleb128 0
	.byte	0x79
	.sleb128 0
	.byte	0x22
	.byte	0x8
	.byte	0x30
	.byte	0x1c
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL87
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
.LLST25:
	.4byte	.LVL88
	.4byte	.LVL89
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.4byte	.LVL89
	.4byte	.LVL90-1
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL96
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL98
	.4byte	.LVL99
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL99
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL100
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL102
	.4byte	.LVL103
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL103
	.4byte	.LFE23
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL108
	.4byte	.LVL111
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL111
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL109
	.4byte	.LVL110-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL110
	.4byte	.LVL113
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL113
	.4byte	.LVL114
	.2byte	0x3
	.byte	0x78
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL114
	.4byte	.LVL115
	.2byte	0x12
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x34
	.byte	0x24
	.byte	0x3
	.4byte	s_slots+4
	.byte	0x22
	.byte	0x6
	.byte	0x9
	.byte	0xe8
	.byte	0x24
	.byte	0x31
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL112
	.4byte	.LVL116
	.2byte	0x6
	.byte	0x7b
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL116
	.4byte	.LFE21
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL117
	.4byte	.LVL121
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL121
	.4byte	.LVL122
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL122
	.4byte	.LVL138
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL138
	.4byte	.LVL139
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL139
	.4byte	.LVL172
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL172
	.4byte	.LVL173
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL173
	.4byte	.LVL174
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL174
	.4byte	.LVL175
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL175
	.4byte	.LVL176
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL176
	.4byte	.LVL177
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL177
	.4byte	.LVL178
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL178
	.4byte	.LVL179
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL179
	.4byte	.LVL180
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL180
	.4byte	.LVL181
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL181
	.4byte	.LVL182
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL182
	.4byte	.LVL183
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL183
	.4byte	.LVL197
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL197
	.4byte	.LVL198
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL198
	.4byte	.LVL199
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL199
	.4byte	.LVL200
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL200
	.4byte	.LVL201
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL201
	.4byte	.LVL202
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL202
	.4byte	.LVL203
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL203
	.4byte	.LVL204
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL204
	.4byte	.LVL205
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL205
	.4byte	.LFE38
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL117
	.4byte	.LVL124
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL124
	.4byte	.LFE38
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL117
	.4byte	.LVL170
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL170
	.4byte	.LVL184
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL202
	.4byte	.LVL204
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL117
	.4byte	.LVL169
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL169
	.4byte	.LVL185
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL202
	.4byte	.LFE38
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL124
	.4byte	.LVL127
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL202
	.4byte	.LVL204
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL126
	.4byte	.LVL128
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL189
	.4byte	.LVL190
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL195
	.4byte	.LVL198
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL198
	.4byte	.LVL200
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL200
	.4byte	.LVL202
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL202
	.4byte	.LVL204
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL131
	.4byte	.LVL142
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL144
	.4byte	.LVL145
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL171
	.4byte	.LVL173
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL133
	.4byte	.LVL135
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL137
	.4byte	.LVL140
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL149
	.4byte	.LVL150
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL155
	.4byte	.LVL156
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL162
	.4byte	.LVL171
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL171
	.4byte	.LVL177
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL179
	.4byte	.LVL183
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL134
	.4byte	.LVL171
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL173
	.4byte	.LVL183
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL134
	.4byte	.LVL143
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL143
	.4byte	.LVL144
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL144
	.4byte	.LVL145
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL145
	.4byte	.LVL171
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	.LVL173
	.4byte	.LVL183
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL147
	.4byte	.LVL153
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL173
	.4byte	.LVL175
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL153
	.4byte	.LVL158
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL175
	.4byte	.LVL177
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL159
	.4byte	.LVL160
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL160
	.4byte	.LVL161-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL164
	.4byte	.LVL165
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL165
	.4byte	.LVL166-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL187
	.4byte	.LVL195
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL198
	.4byte	.LVL200
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL192
	.4byte	.LVL193
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL193
	.4byte	.LVL194-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL206
	.4byte	.LVL253
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL253
	.4byte	.LVL257
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL257
	.4byte	.LVL263
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL263
	.4byte	.LVL264
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL264
	.4byte	.LVL265
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL265
	.4byte	.LVL266
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL266
	.4byte	.LVL271
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL271
	.4byte	.LVL272
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL272
	.4byte	.LVL278
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL278
	.4byte	.LVL279
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL279
	.4byte	.LVL280
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL280
	.4byte	.LVL281
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL281
	.4byte	.LVL282
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL282
	.4byte	.LFE37
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL206
	.4byte	.LVL214
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL214
	.4byte	.LVL216
	.2byte	0x3
	.byte	0x73
	.sleb128 -8
	.byte	0x9f
	.4byte	.LVL216
	.4byte	.LVL279
	.2byte	0x6
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.byte	0x38
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL279
	.4byte	.LVL281
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL281
	.4byte	.LFE37
	.2byte	0x6
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.byte	0x38
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL206
	.4byte	.LVL259
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL259
	.4byte	.LVL268
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL279
	.4byte	.LVL281
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL206
	.4byte	.LVL209
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL209
	.4byte	.LVL216
	.2byte	0x2
	.byte	0x91
	.sleb128 -40
	.4byte	.LVL216
	.4byte	.LVL279
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL279
	.4byte	.LVL281
	.2byte	0x2
	.byte	0x91
	.sleb128 -40
	.4byte	.LVL281
	.4byte	.LFE37
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL207
	.4byte	.LVL209
	.2byte	0xd
	.byte	0x75
	.sleb128 0
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0xc
	.4byte	0x80000200
	.byte	0x2b
	.byte	0x9f
	.4byte	.LVL209
	.4byte	.LFE37
	.2byte	0xe
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0xc
	.4byte	0x80000200
	.byte	0x2b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL209
	.4byte	.LVL216
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL279
	.4byte	.LVL281
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL211
	.4byte	.LVL212
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL234
	.4byte	.LVL236
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL241
	.4byte	.LVL242
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL262
	.4byte	.LVL266
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL270
	.4byte	.LVL273
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL279
	.4byte	.LVL281
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL213
	.4byte	.LVL214
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL214
	.4byte	.LVL216
	.2byte	0x3
	.byte	0x73
	.sleb128 -8
	.byte	0x9f
	.4byte	.LVL216
	.4byte	.LVL279
	.2byte	0x6
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.byte	0x38
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL281
	.4byte	.LFE37
	.2byte	0x6
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.byte	0x38
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL213
	.4byte	.LVL216
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.4byte	.LVL216
	.4byte	.LVL219
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL222
	.4byte	.LVL226
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL245
	.4byte	.LVL262
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL266
	.4byte	.LVL269-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL281
	.4byte	.LFE37
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL215
	.4byte	.LVL221
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL222
	.4byte	.LVL224
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL246
	.4byte	.LVL254
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL257
	.4byte	.LVL262
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL266
	.4byte	.LVL267
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL217
	.4byte	.LVL220
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL220
	.4byte	.LVL222
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL222
	.4byte	.LVL226
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL226
	.4byte	.LVL261
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL261
	.4byte	.LVL262
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL262
	.4byte	.LVL266
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL217
	.4byte	.LVL220
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL220
	.4byte	.LVL222
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL222
	.4byte	.LVL226
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL226
	.4byte	.LVL230
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL233
	.4byte	.LVL258
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL262
	.4byte	.LVL266
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL235
	.4byte	.LVL262
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL264
	.4byte	.LVL266
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL239
	.4byte	.LVL244
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL264
	.4byte	.LVL266
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LVL248
	.4byte	.LVL251
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL251
	.4byte	.LVL257
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL217
	.4byte	.LVL218
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL218
	.4byte	.LVL225
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL225
	.4byte	.LVL226
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST63:
	.4byte	.LVL227
	.4byte	.LVL228
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL228
	.4byte	.LVL229-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST64:
	.4byte	.LVL274
	.4byte	.LVL275
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL275
	.4byte	.LVL276-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST65:
	.4byte	.LVL283
	.4byte	.LVL284
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL284
	.4byte	.LFE29
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST66:
	.4byte	.LVL290
	.4byte	.LVL295
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL295
	.4byte	.LVL296
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL296
	.4byte	.LVL297
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL297
	.4byte	.LVL298
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL298
	.4byte	.LVL299
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL299
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST67:
	.4byte	.LVL290
	.4byte	.LVL293
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL293
	.4byte	.LVL296
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL296
	.4byte	.LFE30
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST68:
	.4byte	.LVL300
	.4byte	.LVL308
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL308
	.4byte	.LVL309
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL309
	.4byte	.LVL318
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL318
	.4byte	.LVL319
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL319
	.4byte	.LVL330
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL330
	.4byte	.LVL331
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL331
	.4byte	.LVL336
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL336
	.4byte	.LVL337
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL337
	.4byte	.LVL338
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL338
	.4byte	.LVL339
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL339
	.4byte	.LVL340
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL340
	.4byte	.LVL341
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL341
	.4byte	.LVL342
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL342
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST69:
	.4byte	.LVL300
	.4byte	.LVL316
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL316
	.4byte	.LVL319
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL319
	.4byte	.LVL322
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL322
	.4byte	.LVL323
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL323
	.4byte	.LVL324
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL324
	.4byte	.LVL337
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL337
	.4byte	.LVL341
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL341
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST70:
	.4byte	.LVL301
	.4byte	.LVL308
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL308
	.4byte	.LVL309
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL309
	.4byte	.LVL318
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL318
	.4byte	.LVL319
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL319
	.4byte	.LVL330
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL330
	.4byte	.LVL331
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL331
	.4byte	.LVL336
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL336
	.4byte	.LVL337
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL337
	.4byte	.LVL338
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL338
	.4byte	.LVL339
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL339
	.4byte	.LVL340
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL340
	.4byte	.LVL341
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL341
	.4byte	.LVL342
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL342
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST71:
	.4byte	.LVL303
	.4byte	.LVL304
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL306
	.4byte	.LVL310
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL310
	.4byte	.LVL311
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL313
	.4byte	.LVL321
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL326
	.4byte	.LVL331
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL339
	.4byte	.LVL341
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST72:
	.4byte	.LVL343
	.4byte	.LVL363
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL363
	.4byte	.LVL364
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL364
	.4byte	.LVL366
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL366
	.4byte	.LVL368
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL368
	.4byte	.LVL369
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL369
	.4byte	.LVL370
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL370
	.4byte	.LVL371
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL371
	.4byte	.LVL372
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL372
	.4byte	.LVL373
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL373
	.4byte	.LVL374
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL374
	.4byte	.LVL375
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL375
	.4byte	.LFE32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST73:
	.4byte	.LVL343
	.4byte	.LVL352
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL352
	.4byte	.LVL353
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL353
	.4byte	.LVL355
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL355
	.4byte	.LVL356
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL356
	.4byte	.LVL358
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL358
	.4byte	.LVL368
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL368
	.4byte	.LVL374
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL374
	.4byte	.LFE32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST74:
	.4byte	.LVL343
	.4byte	.LVL365
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL365
	.4byte	.LVL368
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL368
	.4byte	.LVL374
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL374
	.4byte	.LFE32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST75:
	.4byte	.LVL343
	.4byte	.LVL367
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL367
	.4byte	.LVL368
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL368
	.4byte	.LFE32
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST76:
	.4byte	.LVL347
	.4byte	.LVL368
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL374
	.4byte	.LFE32
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST77:
	.4byte	.LVL349
	.4byte	.LVL352
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL352
	.4byte	.LVL353
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL353
	.4byte	.LVL355
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL355
	.4byte	.LVL356
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL356
	.4byte	.LVL358
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL358
	.4byte	.LVL368
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL374
	.4byte	.LFE32
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0xec
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
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
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB2
	.4byte	.LBE2
	.4byte	.LBB3
	.4byte	.LBE3
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	0
	.4byte	0
	.4byte	.LBB5
	.4byte	.LBE5
	.4byte	.LBB6
	.4byte	.LBE6
	.4byte	0
	.4byte	0
	.4byte	.LBB7
	.4byte	.LBE7
	.4byte	.LBB15
	.4byte	.LBE15
	.4byte	.LBB16
	.4byte	.LBE16
	.4byte	0
	.4byte	0
	.4byte	.LBB8
	.4byte	.LBE8
	.4byte	.LBB13
	.4byte	.LBE13
	.4byte	.LBB14
	.4byte	.LBE14
	.4byte	0
	.4byte	0
	.4byte	.LBB9
	.4byte	.LBE9
	.4byte	.LBB12
	.4byte	.LBE12
	.4byte	0
	.4byte	0
	.4byte	.LBB10
	.4byte	.LBE10
	.4byte	.LBB11
	.4byte	.LBE11
	.4byte	0
	.4byte	0
	.4byte	.LBB21
	.4byte	.LBE21
	.4byte	.LBB22
	.4byte	.LBE22
	.4byte	0
	.4byte	0
	.4byte	.LBB26
	.4byte	.LBE26
	.4byte	.LBB27
	.4byte	.LBE27
	.4byte	0
	.4byte	0
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LFB37
	.4byte	.LFE37
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF204:
	.string	"start_command_read_blocks"
.LASF34:
	.string	"GPIO_PIN_INTR_NEGEDGE"
.LASF180:
	.string	"extra_size"
.LASF250:
	.string	"C:\\\\esp\\\\ArkPOS2-esp\\\\build\\\\driver"
.LASF148:
	.string	"start_bit"
.LASF224:
	.string	"sdspi_host_start_command"
.LASF152:
	.string	"response"
.LASF13:
	.string	"size_t"
.LASF15:
	.string	"sizetype"
.LASF252:
	.string	"sdspi_host_init"
.LASF92:
	.string	"GPIO_PULLDOWN_DISABLE"
.LASF119:
	.string	"user"
.LASF79:
	.string	"GPIO_INTR_LOW_LEVEL"
.LASF20:
	.string	"int32_t"
.LASF169:
	.string	"card_missing"
.LASF86:
	.string	"GPIO_MODE_INPUT_OUTPUT_OD"
.LASF137:
	.string	"spi_device_handle_t"
.LASF194:
	.string	"__func__"
.LASF147:
	.string	"transmission_bit"
.LASF184:
	.string	"start_command_default"
.LASF36:
	.string	"GPIO_PIN_INTR_LOLEVEL"
.LASF146:
	.string	"cmd_index"
.LASF234:
	.string	"heap_caps_malloc"
.LASF164:
	.string	"ptr_dma_compatible"
.LASF110:
	.string	"quadwp_io_num"
.LASF136:
	.string	"rx_data"
.LASF138:
	.string	"gpio_miso"
.LASF126:
	.string	"cs_ena_posttrans"
.LASF185:
	.string	"cmd_size"
.LASF182:
	.string	"byte_idx"
.LASF229:
	.string	"spi_bus_add_device"
.LASF149:
	.string	"arguments"
.LASF161:
	.string	"spi_handle"
.LASF3:
	.string	"__uint8_t"
.LASF128:
	.string	"spics_io_num"
.LASF217:
	.string	"freq_khz"
.LASF135:
	.string	"rx_buffer"
.LASF77:
	.string	"GPIO_INTR_NEGEDGE"
.LASF14:
	.string	"long int"
.LASF189:
	.string	"wait_for_transactions"
.LASF190:
	.string	"t_out"
.LASF179:
	.string	"extra_ptr"
.LASF155:
	.string	"data_crc_enabled"
.LASF213:
	.string	"will_receive"
.LASF134:
	.string	"tx_data"
.LASF83:
	.string	"GPIO_MODE_INPUT"
.LASF211:
	.string	"extra_data_ptr"
.LASF0:
	.string	"signed char"
.LASF18:
	.string	"uint8_t"
.LASF39:
	.string	"GPIO_NUM_0"
.LASF40:
	.string	"GPIO_NUM_1"
.LASF41:
	.string	"GPIO_NUM_2"
.LASF42:
	.string	"GPIO_NUM_3"
.LASF43:
	.string	"GPIO_NUM_4"
.LASF44:
	.string	"GPIO_NUM_5"
.LASF45:
	.string	"GPIO_NUM_6"
.LASF46:
	.string	"GPIO_NUM_7"
.LASF47:
	.string	"GPIO_NUM_8"
.LASF48:
	.string	"GPIO_NUM_9"
.LASF198:
	.string	"will_send"
.LASF246:
	.string	"gpio_config"
.LASF100:
	.string	"gpio_config_t"
.LASF1:
	.string	"unsigned char"
.LASF165:
	.string	"init_spi_dev"
.LASF188:
	.string	"out_buf"
.LASF191:
	.string	"get_transaction"
.LASF84:
	.string	"GPIO_MODE_OUTPUT"
.LASF187:
	.string	"get_block_buf"
.LASF178:
	.string	"poll_data_token"
.LASF38:
	.string	"_Bool"
.LASF195:
	.string	"t_command"
.LASF231:
	.string	"gpio_get_level"
.LASF17:
	.string	"char"
.LASF174:
	.string	"poll_response_token"
.LASF203:
	.string	"t_stop_token"
.LASF37:
	.string	"GPIO_PIN_INTR_HILEVEL"
.LASF113:
	.string	"spi_bus_config_t"
.LASF4:
	.string	"__uint16_t"
.LASF245:
	.string	"spi_bus_initialize"
.LASF168:
	.string	"cs_low"
.LASF207:
	.string	"cmd_u8"
.LASF233:
	.string	"spi_device_transmit"
.LASF177:
	.string	"poll_busy"
.LASF106:
	.string	"spi_host_device_t"
.LASF139:
	.string	"gpio_mosi"
.LASF115:
	.string	"flags"
.LASF75:
	.string	"GPIO_INTR_DISABLE"
.LASF253:
	.string	"sdspi_host_deinit"
.LASF25:
	.string	"ESP_LOG_ERROR"
.LASF151:
	.string	"crc7"
.LASF120:
	.string	"transaction_cb_t"
.LASF218:
	.string	"sdspi_host_set_card_clk"
.LASF222:
	.string	"buscfg"
.LASF124:
	.string	"duty_cycle_pos"
.LASF143:
	.string	"gpio_wp"
.LASF125:
	.string	"cs_ena_pretrans"
.LASF166:
	.string	"release_transaction"
.LASF85:
	.string	"GPIO_MODE_OUTPUT_OD"
.LASF33:
	.string	"GPIO_PIN_INTR_POSEDGE"
.LASF171:
	.string	"go_idle_clockout"
.LASF186:
	.string	"release_bus"
.LASF251:
	.string	"spi_device_t"
.LASF236:
	.string	"__assert_func"
.LASF93:
	.string	"GPIO_PULLDOWN_ENABLE"
.LASF243:
	.string	"free"
.LASF153:
	.string	"sdspi_hw_cmd_t"
.LASF10:
	.string	"__uint64_t"
.LASF209:
	.string	"pre_scan_data_ptr"
.LASF16:
	.string	"long unsigned int"
.LASF176:
	.string	"retry"
.LASF241:
	.string	"esp_log_buffer_hex_internal"
.LASF219:
	.string	"sdspi_host_init_slot"
.LASF159:
	.string	"slot_info_t"
.LASF23:
	.string	"uintptr_t"
.LASF225:
	.string	"data_size"
.LASF74:
	.string	"gpio_num_t"
.LASF215:
	.string	"crc_of_data"
.LASF114:
	.string	"spi_transaction_t"
.LASF205:
	.string	"rx_length"
.LASF144:
	.string	"dma_channel"
.LASF90:
	.string	"GPIO_PULLUP_ENABLE"
.LASF181:
	.string	"found"
.LASF7:
	.string	"__uint32_t"
.LASF82:
	.string	"gpio_int_type_t"
.LASF9:
	.string	"long long int"
.LASF132:
	.string	"spi_device_interface_config_t"
.LASF220:
	.string	"slot_config"
.LASF131:
	.string	"post_cb"
.LASF76:
	.string	"GPIO_INTR_POSEDGE"
.LASF95:
	.string	"pin_bit_mask"
.LASF109:
	.string	"sclk_io_num"
.LASF167:
	.string	"cs_high"
.LASF129:
	.string	"queue_size"
.LASF87:
	.string	"GPIO_MODE_INPUT_OUTPUT"
.LASF183:
	.string	"rd_data"
.LASF31:
	.string	"esp_err_t"
.LASF140:
	.string	"gpio_sck"
.LASF49:
	.string	"GPIO_NUM_10"
.LASF50:
	.string	"GPIO_NUM_11"
.LASF51:
	.string	"GPIO_NUM_12"
.LASF52:
	.string	"GPIO_NUM_13"
.LASF53:
	.string	"GPIO_NUM_14"
.LASF54:
	.string	"GPIO_NUM_15"
.LASF55:
	.string	"GPIO_NUM_16"
.LASF56:
	.string	"GPIO_NUM_17"
.LASF57:
	.string	"GPIO_NUM_18"
.LASF58:
	.string	"GPIO_NUM_19"
.LASF73:
	.string	"GPIO_NUM_MAX"
.LASF248:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF101:
	.string	"float"
.LASF212:
	.string	"need_poll"
.LASF116:
	.string	"addr"
.LASF202:
	.string	"stop_token"
.LASF97:
	.string	"pull_up_en"
.LASF8:
	.string	"unsigned int"
.LASF59:
	.string	"GPIO_NUM_21"
.LASF60:
	.string	"GPIO_NUM_22"
.LASF61:
	.string	"GPIO_NUM_23"
.LASF62:
	.string	"GPIO_NUM_25"
.LASF63:
	.string	"GPIO_NUM_26"
.LASF64:
	.string	"GPIO_NUM_27"
.LASF30:
	.string	"esp_log_level_t"
.LASF208:
	.string	"pre_scan_data_size"
.LASF172:
	.string	"devcfg"
.LASF133:
	.string	"tx_buffer"
.LASF26:
	.string	"ESP_LOG_WARN"
.LASF226:
	.string	"cmd_arg"
.LASF65:
	.string	"GPIO_NUM_32"
.LASF66:
	.string	"GPIO_NUM_33"
.LASF67:
	.string	"GPIO_NUM_34"
.LASF68:
	.string	"GPIO_NUM_35"
.LASF69:
	.string	"GPIO_NUM_36"
.LASF70:
	.string	"GPIO_NUM_37"
.LASF71:
	.string	"GPIO_NUM_38"
.LASF72:
	.string	"GPIO_NUM_39"
.LASF80:
	.string	"GPIO_INTR_HIGH_LEVEL"
.LASF244:
	.string	"spi_bus_free"
.LASF29:
	.string	"ESP_LOG_VERBOSE"
.LASF247:
	.string	"calloc"
.LASF242:
	.string	"make_hw_cmd"
.LASF163:
	.string	"is_slot_initialized"
.LASF192:
	.string	"start_command_write_blocks"
.LASF104:
	.string	"HSPI_HOST"
.LASF150:
	.string	"stop_bit"
.LASF197:
	.string	"t_start_token"
.LASF154:
	.string	"handle"
.LASF156:
	.string	"used_transaction_count"
.LASF239:
	.string	"esp_log_timestamp"
.LASF118:
	.string	"rxlength"
.LASF201:
	.string	"t_poll"
.LASF11:
	.string	"long long unsigned int"
.LASF142:
	.string	"gpio_cd"
.LASF117:
	.string	"length"
.LASF19:
	.string	"uint16_t"
.LASF141:
	.string	"gpio_cs"
.LASF103:
	.string	"SPI_HOST"
.LASF158:
	.string	"transactions"
.LASF24:
	.string	"ESP_LOG_NONE"
.LASF102:
	.string	"TickType_t"
.LASF238:
	.string	"sdspi_crc16"
.LASF210:
	.string	"extra_data_size"
.LASF214:
	.string	"receive_extra_bytes"
.LASF160:
	.string	"is_valid_slot"
.LASF232:
	.string	"memset"
.LASF105:
	.string	"VSPI_HOST"
.LASF27:
	.string	"ESP_LOG_INFO"
.LASF130:
	.string	"pre_cb"
.LASF35:
	.string	"GPIO_PIN_INTR_ANYEDGE"
.LASF123:
	.string	"dummy_bits"
.LASF200:
	.string	"t_crc"
.LASF94:
	.string	"gpio_pulldown_t"
.LASF12:
	.string	"__uintptr_t"
.LASF107:
	.string	"mosi_io_num"
.LASF88:
	.string	"gpio_mode_t"
.LASF157:
	.string	"block_buf"
.LASF112:
	.string	"max_transfer_sz"
.LASF221:
	.string	"host"
.LASF170:
	.string	"card_write_protected"
.LASF2:
	.string	"short int"
.LASF111:
	.string	"quadhd_io_num"
.LASF22:
	.string	"uint64_t"
.LASF96:
	.string	"mode"
.LASF91:
	.string	"gpio_pullup_t"
.LASF98:
	.string	"pull_down_en"
.LASF32:
	.string	"GPIO_PIN_INTR_DISABLE"
.LASF28:
	.string	"ESP_LOG_DEBUG"
.LASF249:
	.string	"C:/esp/esp-idf/components/driver/sdspi_host.c"
.LASF89:
	.string	"GPIO_PULLUP_DISABLE"
.LASF254:
	.string	"memcpy"
.LASF196:
	.string	"start_token"
.LASF237:
	.string	"spi_device_queue_trans"
.LASF78:
	.string	"GPIO_INTR_ANYEDGE"
.LASF127:
	.string	"clock_speed_hz"
.LASF121:
	.string	"command_bits"
.LASF21:
	.string	"uint32_t"
.LASF206:
	.string	"need_stop_command"
.LASF228:
	.string	"spi_bus_remove_device"
.LASF193:
	.string	"tx_length"
.LASF230:
	.string	"gpio_set_level"
.LASF175:
	.string	"t_rx"
.LASF145:
	.string	"sdspi_slot_config_t"
.LASF5:
	.string	"short unsigned int"
.LASF223:
	.string	"io_conf"
.LASF227:
	.string	"s_slots"
.LASF199:
	.string	"t_data"
.LASF162:
	.string	"slot"
.LASF235:
	.string	"spi_device_get_trans_result"
.LASF6:
	.string	"__int32_t"
.LASF81:
	.string	"GPIO_INTR_MAX"
.LASF99:
	.string	"intr_type"
.LASF216:
	.string	"stop_cmd"
.LASF240:
	.string	"esp_log_write"
.LASF173:
	.string	"data"
.LASF122:
	.string	"address_bits"
.LASF108:
	.string	"miso_io_num"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-61-gab8375a) 5.2.0"
