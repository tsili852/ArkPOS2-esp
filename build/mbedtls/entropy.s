	.file	"entropy.c"
	.text
.Ltext0:
	.section	.text.mbedtls_zeroize,"ax",@progbits
	.align	4
	.type	mbedtls_zeroize, @function
mbedtls_zeroize:
.LFB0:
	.file 1 "C:/esp/esp-idf/components/mbedtls/library/entropy.c"
	.loc 1 63 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LVL1:
	.loc 1 64 0
	j	.L2
.LVL2:
.L3:
	.loc 1 64 0 is_stmt 0 discriminator 3
	movi.n	a3, 0
	memw
	s8i	a3, a2, 0
	mov.n	a3, a8
	addi.n	a2, a2, 1
.LVL3:
.L2:
	.loc 1 64 0 discriminator 1
	addi.n	a8, a3, -1
.LVL4:
	bnez.n	a3, .L3
	.loc 1 65 0 is_stmt 1
	retw.n
.LFE0:
	.size	mbedtls_zeroize, .-mbedtls_zeroize
	.section	.text.mbedtls_entropy_source_self_test_check_bits,"ax",@progbits
	.align	4
	.type	mbedtls_entropy_source_self_test_check_bits, @function
mbedtls_entropy_source_self_test_check_bits:
.LFB13:
	.loc 1 505 0
.LVL5:
	entry	sp, 32
.LCFI1:
.LVL6:
	.loc 1 510 0
	movi.n	a8, 0
	.loc 1 507 0
	mov.n	a10, a8
	.loc 1 506 0
	movi	a11, 0xff
	.loc 1 510 0
	j	.L5
.LVL7:
.L6:
	.loc 1 512 0 discriminator 3
	add.n	a9, a2, a8
	l8ui	a9, a9, 0
	and	a11, a11, a9
.LVL8:
	.loc 1 513 0 discriminator 3
	or	a10, a10, a9
.LVL9:
	.loc 1 510 0 discriminator 3
	addi.n	a8, a8, 1
.LVL10:
.L5:
	.loc 1 510 0 is_stmt 0 discriminator 1
	bltu	a8, a3, .L6
	.loc 1 516 0 is_stmt 1
	movi	a2, -0xff
.LVL11:
	add.n	a11, a11, a2
.LVL12:
	movi.n	a8, 1
.LVL13:
	movi.n	a3, 0
.LVL14:
	mov.n	a2, a3
	moveqz	a2, a8, a11
	moveqz	a3, a8, a10
	.loc 1 517 0
	or	a2, a3, a2
	retw.n
.LFE13:
	.size	mbedtls_entropy_source_self_test_check_bits, .-mbedtls_entropy_source_self_test_check_bits
	.section	.text.entropy_dummy_source,"ax",@progbits
	.align	4
	.type	entropy_dummy_source, @function
entropy_dummy_source:
.LFB11:
	.loc 1 465 0
.LVL15:
	entry	sp, 32
.LCFI2:
	.loc 1 468 0
	mov.n	a12, a4
	movi.n	a11, 0x2a
	mov.n	a10, a3
	call8	memset
.LVL16:
	.loc 1 469 0
	s32i.n	a4, a5, 0
	.loc 1 472 0
	movi.n	a2, 0
.LVL17:
	retw.n
.LFE11:
	.size	entropy_dummy_source, .-entropy_dummy_source
	.section	.text.mbedtls_entropy_source_self_test_gather,"ax",@progbits
	.align	4
	.type	mbedtls_entropy_source_self_test_gather, @function
mbedtls_entropy_source_self_test_gather:
.LFB12:
	.loc 1 478 0
.LVL18:
	entry	sp, 48
.LCFI3:
.LVL19:
	.loc 1 481 0
	movi.n	a10, 0
	s32i.n	a10, sp, 0
.LVL20:
	.loc 1 482 0
	mov.n	a5, a3
	.loc 1 480 0
	mov.n	a4, a10
	.loc 1 484 0
	j	.L9
.LVL21:
.L12:
	.loc 1 486 0
	mov.n	a13, sp
	sub	a12, a3, a4
	add.n	a11, a2, a4
	movi.n	a10, 0
.LVL22:
	call8	mbedtls_hardware_poll
.LVL23:
	bnez.n	a10, .L10
	.loc 1 490 0
	l32i.n	a8, sp, 0
	add.n	a4, a4, a8
.LVL24:
	.loc 1 491 0
	addi.n	a5, a5, -1
.LVL25:
.L9:
	.loc 1 484 0
	movi.n	a9, 1
	movi.n	a8, 0
	movnez	a8, a9, a5
	extui	a8, a8, 0, 8
	bltu	a4, a3, .L11
	movi.n	a9, 0
.L11:
	bany	a8, a9, .L12
	.loc 1 494 0
	bgeu	a4, a3, .L10
	.loc 1 496 0
	movi.n	a10, 1
.LVL26:
.L10:
	.loc 1 500 0
	mov.n	a2, a10
.LVL27:
	retw.n
.LFE12:
	.size	mbedtls_entropy_source_self_test_gather, .-mbedtls_entropy_source_self_test_gather
	.section	.text.entropy_update,"ax",@progbits
	.align	4
	.type	entropy_update, @function
entropy_update:
.LFB4:
	.loc 1 170 0
.LVL28:
	entry	sp, 112
.LCFI4:
.LVL29:
	.loc 1 176 0
	movi.n	a8, 0x40
	bgeu	a8, a5, .L15
	.loc 1 179 0
	movi.n	a13, 0
	addi.n	a12, sp, 2
	mov.n	a11, a5
	mov.n	a10, a4
	call8	mbedtls_sha512
.LVL30:
	.loc 1 183 0
	addi.n	a4, sp, 2
.LVL31:
	.loc 1 184 0
	movi.n	a5, 0x40
.LVL32:
.L15:
	.loc 1 187 0
	s8i	a3, sp, 0
	.loc 1 188 0
	s8i	a5, sp, 1
	.loc 1 191 0
	movi.n	a12, 2
	mov.n	a11, sp
	mov.n	a10, a2
	call8	mbedtls_sha512_update
.LVL33:
	.loc 1 192 0
	mov.n	a12, a5
	mov.n	a11, a4
	mov.n	a10, a2
	call8	mbedtls_sha512_update
.LVL34:
	.loc 1 199 0
	movi.n	a2, 0
.LVL35:
	retw.n
.LFE4:
	.size	entropy_update, .-entropy_update
	.section	.text.entropy_gather_internal,"ax",@progbits
	.align	4
	.type	entropy_gather_internal, @function
entropy_gather_internal:
.LFB6:
	.loc 1 225 0
.LVL36:
	entry	sp, 176
.LCFI5:
.LVL37:
	.loc 1 230 0
	l32i	a3, a2, 216
	beqz.n	a3, .L22
	movi.n	a4, 0
	mov.n	a3, a4
	j	.L18
.LVL38:
.L21:
	.loc 1 238 0
	addx4	a9, a3, a3
	slli	a8, a9, 2
	add.n	a8, a2, a8
	l32i	a8, a8, 236
	bnei	a8, 1, .L19
	.loc 1 239 0
	movi.n	a4, 1
.LVL39:
.L19:
	.loc 1 241 0
	movi.n	a8, 0
	s32i	a8, sp, 128
	.loc 1 242 0
	slli	a9, a3, 2
	add.n	a9, a9, a3
	slli	a8, a9, 2
	add.n	a8, a2, a8
	l32i	a9, a8, 220
	movi	a12, 0x80
	add.n	a13, sp, a12
	mov.n	a11, sp
	l32i	a10, a8, 224
	callx8	a9
.LVL40:
	bnez.n	a10, .L24
	.loc 1 251 0
	l32i	a13, sp, 128
	beqz.n	a13, .L20
	.loc 1 253 0
	mov.n	a12, sp
	extui	a11, a3, 0, 8
	mov.n	a10, a2
.LVL41:
	call8	entropy_update
.LVL42:
	.loc 1 254 0
	slli	a9, a3, 2
	add.n	a9, a9, a3
	slli	a8, a9, 2
	add.n	a9, a2, a8
	movi	a8, 0xe4
	add.n	a8, a9, a8
	l32i.n	a10, a8, 0
	l32i	a9, sp, 128
	add.n	a9, a10, a9
	s32i.n	a9, a8, 0
.L20:
	.loc 1 236 0 discriminator 2
	addi.n	a3, a3, 1
.LVL43:
.L18:
	.loc 1 236 0 is_stmt 0 discriminator 1
	l32i	a8, a2, 216
	blt	a3, a8, .L21
	.loc 1 258 0 is_stmt 1
	bnez.n	a4, .L25
	.loc 1 259 0
	movi	a2, -0x3d
.LVL44:
	retw.n
.LVL45:
.L22:
	.loc 1 231 0
	movi	a2, -0x40
.LVL46:
	retw.n
.LVL47:
.L24:
	.loc 1 245 0
	mov.n	a2, a10
.LVL48:
	retw.n
.LVL49:
.L25:
	.loc 1 261 0
	movi.n	a2, 0
.LVL50:
	.loc 1 262 0
	retw.n
.LFE6:
	.size	entropy_gather_internal, .-entropy_gather_internal
	.section	.text.mbedtls_entropy_free,"ax",@progbits
	.align	4
	.global	mbedtls_entropy_free
	.type	mbedtls_entropy_free, @function
mbedtls_entropy_free:
.LFB2:
	.loc 1 121 0
.LVL51:
	entry	sp, 32
.LCFI6:
	.loc 1 128 0
	movi	a11, 0x270
	mov.n	a10, a2
	call8	mbedtls_zeroize
.LVL52:
	retw.n
.LFE2:
	.size	mbedtls_entropy_free, .-mbedtls_entropy_free
	.section	.text.mbedtls_entropy_add_source,"ax",@progbits
	.align	4
	.global	mbedtls_entropy_add_source
	.type	mbedtls_entropy_add_source, @function
mbedtls_entropy_add_source:
.LFB3:
	.loc 1 134 0
.LVL53:
	entry	sp, 32
.LCFI7:
.LVL54:
	.loc 1 142 0
	l32i	a9, a2, 216
.LVL55:
	.loc 1 143 0
	movi.n	a8, 0x13
	blt	a8, a9, .L29
	.loc 1 149 0
	slli	a10, a9, 2
	add.n	a10, a10, a9
	slli	a8, a10, 2
	add.n	a8, a2, a8
	s32i	a3, a8, 220
	.loc 1 150 0
	s32i	a4, a8, 224
	.loc 1 151 0
	s32i	a5, a8, 232
	.loc 1 152 0
	s32i	a6, a8, 236
	.loc 1 154 0
	addi.n	a9, a9, 1
.LVL56:
	s32i	a9, a2, 216
	.loc 1 135 0
	movi.n	a2, 0
.LVL57:
	retw.n
.LVL58:
.L29:
	.loc 1 145 0
	movi	a2, -0x3e
.LVL59:
.L28:
	.loc 1 163 0
	retw.n
.LFE3:
	.size	mbedtls_entropy_add_source, .-mbedtls_entropy_add_source
	.section	.text.mbedtls_entropy_init,"ax",@progbits
	.literal_position
	.literal .LC0, mbedtls_hardware_poll
	.align	4
	.global	mbedtls_entropy_init
	.type	mbedtls_entropy_init, @function
mbedtls_entropy_init:
.LFB1:
	.loc 1 70 0
.LVL60:
	entry	sp, 32
.LCFI8:
	.loc 1 71 0
	movi	a12, 0x270
	movi.n	a11, 0
	mov.n	a10, a2
	call8	memset
.LVL61:
	.loc 1 78 0
	movi.n	a11, 0
	mov.n	a10, a2
	call8	mbedtls_sha512_starts
.LVL62:
	.loc 1 108 0
	movi.n	a14, 1
	movi.n	a13, 0x20
	movi.n	a12, 0
	l32r	a11, .LC0
	mov.n	a10, a2
	call8	mbedtls_entropy_add_source
.LVL63:
	retw.n
.LFE1:
	.size	mbedtls_entropy_init, .-mbedtls_entropy_init
	.section	.text.mbedtls_entropy_update_manual,"ax",@progbits
	.align	4
	.global	mbedtls_entropy_update_manual
	.type	mbedtls_entropy_update_manual, @function
mbedtls_entropy_update_manual:
.LFB5:
	.loc 1 203 0
.LVL64:
	entry	sp, 32
.LCFI9:
	.loc 1 211 0
	mov.n	a13, a4
	mov.n	a12, a3
	movi.n	a11, 0x14
	mov.n	a10, a2
	call8	entropy_update
.LVL65:
	.loc 1 219 0
	mov.n	a2, a10
.LVL66:
	retw.n
.LFE5:
	.size	mbedtls_entropy_update_manual, .-mbedtls_entropy_update_manual
	.section	.text.mbedtls_entropy_gather,"ax",@progbits
	.align	4
	.global	mbedtls_entropy_gather
	.type	mbedtls_entropy_gather, @function
mbedtls_entropy_gather:
.LFB7:
	.loc 1 268 0
.LVL67:
	entry	sp, 32
.LCFI10:
	.loc 1 276 0
	mov.n	a10, a2
	call8	entropy_gather_internal
.LVL68:
	.loc 1 284 0
	mov.n	a2, a10
.LVL69:
	retw.n
.LFE7:
	.size	mbedtls_entropy_gather, .-mbedtls_entropy_gather
	.section	.text.mbedtls_entropy_func,"ax",@progbits
	.align	4
	.global	mbedtls_entropy_func
	.type	mbedtls_entropy_func, @function
mbedtls_entropy_func:
.LFB8:
	.loc 1 287 0
.LVL70:
	entry	sp, 96
.LCFI11:
.LVL71:
	.loc 1 292 0
	movi.n	a5, 0x40
	bltu	a5, a4, .L41
	movi.n	a8, 0
.LVL72:
.L38:
	.loc 1 317 0
	addi.n	a5, a8, 1
.LVL73:
	movi	a9, 0x100
	blt	a9, a8, .L42
	.loc 1 323 0
	mov.n	a10, a2
	call8	entropy_gather_internal
.LVL74:
	bnez.n	a10, .L43
	movi.n	a11, 1
	movi.n	a9, 0
	j	.L35
.LVL75:
.L37:
	.loc 1 328 0
	slli	a10, a9, 2
	add.n	a10, a10, a9
	slli	a8, a10, 2
	add.n	a8, a2, a8
	l32i	a10, a8, 228
	l32i	a8, a8, 232
	bgeu	a10, a8, .L36
	.loc 1 329 0
	movi.n	a11, 0
.LVL76:
.L36:
	.loc 1 327 0 discriminator 2
	addi.n	a9, a9, 1
.LVL77:
.L35:
	.loc 1 327 0 is_stmt 0 discriminator 1
	l32i	a8, a2, 216
	blt	a9, a8, .L37
	.loc 1 317 0 is_stmt 1
	mov.n	a8, a5
	.loc 1 331 0
	beqz.n	a11, .L38
	.loc 1 333 0
	movi.n	a5, 0x40
.LVL78:
	mov.n	a12, a5
	movi.n	a11, 0
.LVL79:
	mov.n	a10, sp
	call8	memset
.LVL80:
	.loc 1 336 0
	mov.n	a11, sp
	mov.n	a10, a2
	call8	mbedtls_sha512_finish
.LVL81:
	.loc 1 341 0
	movi	a12, 0xd8
	movi.n	a11, 0
	mov.n	a10, a2
	call8	memset
.LVL82:
	.loc 1 342 0
	movi.n	a11, 0
	mov.n	a10, a2
	call8	mbedtls_sha512_starts
.LVL83:
	.loc 1 343 0
	mov.n	a12, a5
	mov.n	a11, sp
	mov.n	a10, a2
	call8	mbedtls_sha512_update
.LVL84:
	.loc 1 348 0
	movi.n	a13, 0
	mov.n	a12, sp
	mov.n	a11, a5
	mov.n	a10, sp
	call8	mbedtls_sha512
.LVL85:
	.loc 1 365 0
	movi.n	a5, 0
	j	.L39
.LVL86:
.L40:
	.loc 1 366 0 discriminator 3
	addx4	a9, a5, a5
	slli	a8, a9, 2
	add.n	a8, a2, a8
	movi	a9, 0xe4
	add.n	a8, a8, a9
	movi.n	a9, 0
	s32i.n	a9, a8, 0
	.loc 1 365 0 discriminator 3
	addi.n	a5, a5, 1
.LVL87:
.L39:
	.loc 1 365 0 is_stmt 0 discriminator 1
	l32i	a8, a2, 216
	blt	a5, a8, .L40
	.loc 1 368 0 is_stmt 1
	mov.n	a12, a4
	mov.n	a11, sp
	mov.n	a10, a3
	call8	memcpy
.LVL88:
	.loc 1 370 0
	movi.n	a2, 0
.LVL89:
	retw.n
.LVL90:
.L41:
	.loc 1 293 0
	movi	a2, -0x3c
.LVL91:
	retw.n
.LVL92:
.L42:
	.loc 1 319 0
	movi	a2, -0x3c
.LVL93:
	retw.n
.LVL94:
.L43:
	.loc 1 323 0
	mov.n	a2, a10
.LVL95:
	.loc 1 379 0
	retw.n
.LFE8:
	.size	mbedtls_entropy_func, .-mbedtls_entropy_func
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC1:
	.string	"wb"
	.section	.text.mbedtls_entropy_write_seed_file,"ax",@progbits
	.literal_position
	.literal .LC2, .LC1
	.align	4
	.global	mbedtls_entropy_write_seed_file
	.type	mbedtls_entropy_write_seed_file, @function
mbedtls_entropy_write_seed_file:
.LFB9:
	.loc 1 404 0
.LVL96:
	entry	sp, 96
.LCFI12:
.LVL97:
	.loc 1 409 0
	l32r	a11, .LC2
	mov.n	a10, a3
	call8	fopen
.LVL98:
	mov.n	a3, a10
.LVL99:
	beqz.n	a10, .L48
	.loc 1 412 0
	movi.n	a12, 0x40
	mov.n	a11, sp
	mov.n	a10, a2
	call8	mbedtls_entropy_func
.LVL100:
	mov.n	a2, a10
.LVL101:
	bnez.n	a10, .L47
	.loc 1 415 0
	mov.n	a13, a3
	movi.n	a12, 0x40
	movi.n	a11, 1
	mov.n	a10, sp
	call8	fwrite
.LVL102:
	beqi	a10, 64, .L47
	.loc 1 417 0
	movi	a2, -0x3f
.LVL103:
.L47:
	.loc 1 424 0
	mov.n	a10, a3
	call8	fclose
.LVL104:
	.loc 1 425 0
	retw.n
.LVL105:
.L48:
	.loc 1 410 0
	movi	a2, -0x3f
.LVL106:
	.loc 1 426 0
	retw.n
.LFE9:
	.size	mbedtls_entropy_write_seed_file, .-mbedtls_entropy_write_seed_file
	.section	.rodata.str1.4
	.align	4
.LC3:
	.string	"rb"
	.section	.text.mbedtls_entropy_update_seed_file,"ax",@progbits
	.literal_position
	.literal .LC4, .LC3
	.align	4
	.global	mbedtls_entropy_update_seed_file
	.type	mbedtls_entropy_update_seed_file, @function
mbedtls_entropy_update_seed_file:
.LFB10:
	.loc 1 429 0
.LVL107:
	entry	sp, 1056
.LCFI13:
	.loc 1 434 0
	l32r	a11, .LC4
	mov.n	a10, a3
	call8	fopen
.LVL108:
	mov.n	a4, a10
.LVL109:
	beqz.n	a10, .L53
	.loc 1 437 0
	movi.n	a12, 2
	movi.n	a11, 0
	call8	fseek
.LVL110:
	.loc 1 438 0
	mov.n	a10, a4
	call8	ftell
.LVL111:
	mov.n	a5, a10
.LVL112:
	.loc 1 439 0
	movi.n	a12, 0
	mov.n	a11, a12
	mov.n	a10, a4
	call8	fseek
.LVL113:
	.loc 1 441 0
	movi	a8, 0x400
	bgeu	a8, a5, .L51
	.loc 1 442 0
	mov.n	a5, a8
.LVL114:
.L51:
	.loc 1 444 0
	mov.n	a13, a4
	mov.n	a12, a5
	movi.n	a11, 1
	mov.n	a10, sp
	call8	fread
.LVL115:
	beq	a5, a10, .L52
	.loc 1 446 0
	mov.n	a10, a4
	call8	fclose
.LVL116:
	.loc 1 447 0
	movi	a2, -0x3f
.LVL117:
	retw.n
.LVL118:
.L52:
	.loc 1 450 0
	mov.n	a10, a4
	call8	fclose
.LVL119:
	.loc 1 452 0
	mov.n	a12, a5
	mov.n	a11, sp
	mov.n	a10, a2
	call8	mbedtls_entropy_update_manual
.LVL120:
	.loc 1 454 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	mbedtls_entropy_write_seed_file
.LVL121:
	mov.n	a2, a10
.LVL122:
	retw.n
.LVL123:
.L53:
	.loc 1 435 0
	movi	a2, -0x3f
.LVL124:
	.loc 1 455 0
	retw.n
.LFE10:
	.size	mbedtls_entropy_update_seed_file, .-mbedtls_entropy_update_seed_file
	.section	.rodata.str1.4
	.align	4
.LC5:
	.string	"  ENTROPY_BIAS test: "
	.align	4
.LC7:
	.string	"failed"
	.align	4
.LC9:
	.string	"passed"
	.section	.text.mbedtls_entropy_source_self_test,"ax",@progbits
	.literal_position
	.literal .LC6, .LC5
	.literal .LC8, .LC7
	.literal .LC10, .LC9
	.align	4
	.global	mbedtls_entropy_source_self_test
	.type	mbedtls_entropy_source_self_test, @function
mbedtls_entropy_source_self_test:
.LFB14:
	.loc 1 531 0
.LVL125:
	entry	sp, 64
.LCFI14:
.LVL126:
	.loc 1 536 0
	beqz.n	a2, .L56
	.loc 1 537 0
	l32r	a10, .LC6
	call8	printf
.LVL127:
.L56:
	.loc 1 539 0
	movi.n	a8, 0
	s32i.n	a8, sp, 0
	s32i.n	a8, sp, 4
	s32i.n	a8, sp, 8
	s32i.n	a8, sp, 12
	.loc 1 540 0
	s32i.n	a8, sp, 16
	s32i.n	a8, sp, 20
	s32i.n	a8, sp, 24
	s32i.n	a8, sp, 28
	.loc 1 542 0
	movi.n	a11, 0x10
	mov.n	a10, sp
	call8	mbedtls_entropy_source_self_test_gather
.LVL128:
	mov.n	a3, a10
.LVL129:
	bnez.n	a10, .L57
	.loc 1 544 0
	movi.n	a11, 0x10
	add.n	a10, sp, a11
	call8	mbedtls_entropy_source_self_test_gather
.LVL130:
	mov.n	a3, a10
.LVL131:
	bnez.n	a10, .L57
	.loc 1 548 0
	movi.n	a11, 0x10
	mov.n	a10, sp
	call8	mbedtls_entropy_source_self_test_check_bits
.LVL132:
	mov.n	a3, a10
.LVL133:
	bnez.n	a10, .L57
	.loc 1 550 0
	movi.n	a11, 0x10
	add.n	a10, sp, a11
	call8	mbedtls_entropy_source_self_test_check_bits
.LVL134:
	mov.n	a3, a10
.LVL135:
	bnez.n	a10, .L57
	.loc 1 555 0
	movi.n	a12, 0x10
	add.n	a11, sp, a12
	mov.n	a10, sp
	call8	memcmp
.LVL136:
	movi.n	a8, 1
	moveqz	a3, a8, a10
.LVL137:
	extui	a3, a3, 0, 8
.LVL138:
.L57:
	.loc 1 558 0
	beqz.n	a2, .L58
	.loc 1 560 0
	beqz.n	a3, .L59
	.loc 1 561 0
	l32r	a10, .LC8
	call8	puts
.LVL139:
	j	.L60
.L59:
	.loc 1 563 0
	l32r	a10, .LC10
	call8	puts
.LVL140:
.L60:
	.loc 1 565 0
	movi.n	a10, 0xa
	call8	putchar
.LVL141:
.L58:
	.loc 1 568 0
	movi.n	a2, 0
.LVL142:
	movi.n	a8, 1
	movnez	a2, a8, a3
	.loc 1 569 0
	retw.n
.LFE14:
	.size	mbedtls_entropy_source_self_test, .-mbedtls_entropy_source_self_test
	.section	.rodata.str1.4
	.align	4
.LC11:
	.string	"  ENTROPY test: "
	.section	.text.mbedtls_entropy_self_test,"ax",@progbits
	.literal_position
	.literal .LC12, .LC11
	.literal .LC13, entropy_dummy_source
	.literal .LC14, .LC7
	.literal .LC15, .LC9
	.align	4
	.global	mbedtls_entropy_self_test
	.type	mbedtls_entropy_self_test, @function
mbedtls_entropy_self_test:
.LFB15:
	.loc 1 579 0
.LVL143:
	entry	sp, 784
.LCFI15:
.LVL144:
	.loc 1 583 0
	movi.n	a3, 0x40
	mov.n	a12, a3
	movi.n	a11, 0
	addmi	a4, sp, 0x200
	addi	a10, a4, 112
	call8	memset
.LVL145:
	.loc 1 584 0
	mov.n	a12, a3
	movi.n	a11, 0
	movi	a10, 0xb0
	addmi	a5, sp, 0x200
	add.n	a10, a5, a10
	call8	memset
.LVL146:
	.loc 1 588 0
	beqz.n	a2, .L62
	.loc 1 589 0
	l32r	a10, .LC12
	call8	printf
.LVL147:
.L62:
	.loc 1 592 0
	mov.n	a10, sp
	call8	mbedtls_entropy_init
.LVL148:
	.loc 1 595 0
	mov.n	a10, sp
	call8	mbedtls_entropy_gather
.LVL149:
	mov.n	a4, a10
.LVL150:
	bnez.n	a10, .L63
	.loc 1 598 0
	movi.n	a14, 0
	movi.n	a13, 0x10
	mov.n	a12, a14
	l32r	a11, .LC13
	mov.n	a10, sp
	call8	mbedtls_entropy_add_source
.LVL151:
	mov.n	a4, a10
.LVL152:
	.loc 1 600 0
	bnez.n	a10, .L63
	.loc 1 603 0
	movi.n	a12, 0x40
	movi	a11, 0x270
	add.n	a11, sp, a11
	mov.n	a10, sp
	call8	mbedtls_entropy_update_manual
.LVL153:
	mov.n	a4, a10
.LVL154:
	bnez.n	a10, .L63
	movi.n	a3, 0
	j	.L64
.LVL155:
.L67:
	.loc 1 616 0
	movi.n	a12, 0x40
	movi	a11, 0x270
	add.n	a11, sp, a11
	mov.n	a10, sp
	call8	mbedtls_entropy_func
.LVL156:
	mov.n	a4, a10
.LVL157:
	bnez.n	a10, .L63
	movi.n	a10, 0
	j	.L65
.LVL158:
.L66:
	.loc 1 620 0 discriminator 3
	addmi	a4, sp, 0x200
	add.n	a9, a4, a10
	l8ui	a11, a9, 112
	movi	a8, 0xb0
	add.n	a8, a9, a8
	l8ui	a9, a8, 0
	or	a9, a11, a9
	s8i	a9, a8, 0
	.loc 1 619 0 discriminator 3
	addi.n	a10, a10, 1
.LVL159:
.L65:
	.loc 1 619 0 is_stmt 0 discriminator 1
	movi.n	a8, 0x3f
	bgeu	a8, a10, .L66
	.loc 1 614 0 is_stmt 1 discriminator 2
	addi.n	a3, a3, 1
.LVL160:
.L64:
	.loc 1 614 0 is_stmt 0 discriminator 1
	bltui	a3, 8, .L67
	movi.n	a4, 0
	j	.L68
.LVL161:
.L69:
	.loc 1 625 0 is_stmt 1
	addmi	a5, sp, 0x200
	add.n	a3, a5, a4
	l8ui	a3, a3, 176
	beqz.n	a3, .L73
	.loc 1 623 0 discriminator 2
	addi.n	a4, a4, 1
.LVL162:
.L68:
	.loc 1 623 0 is_stmt 0 discriminator 1
	movi.n	a3, 0x3f
	bgeu	a3, a4, .L69
	.loc 1 633 0 is_stmt 1
	movi.n	a10, 0
	call8	mbedtls_entropy_source_self_test
.LVL163:
	mov.n	a4, a10
.LVL164:
	j	.L63
.LVL165:
.L73:
	.loc 1 627 0
	movi.n	a4, 1
.LVL166:
.L63:
	.loc 1 638 0
	mov.n	a10, sp
	call8	mbedtls_entropy_free
.LVL167:
	.loc 1 641 0
	beqz.n	a2, .L70
	.loc 1 643 0
	beqz.n	a4, .L71
	.loc 1 644 0
	l32r	a10, .LC14
	call8	puts
.LVL168:
	j	.L72
.L71:
	.loc 1 646 0
	l32r	a10, .LC15
	call8	puts
.LVL169:
.L72:
	.loc 1 648 0
	movi.n	a10, 0xa
	call8	putchar
.LVL170:
.L70:
	.loc 1 651 0
	movi.n	a2, 0
.LVL171:
	movi.n	a3, 1
	movnez	a2, a3, a4
	.loc 1 652 0
	retw.n
.LFE15:
	.size	mbedtls_entropy_self_test, .-mbedtls_entropy_self_test
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
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI1-.LFB13
	.byte	0xe
	.uleb128 0x20
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
	.uleb128 0x30
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
	.uleb128 0x70
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI5-.LFB6
	.byte	0xe
	.uleb128 0xb0
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI6-.LFB2
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI7-.LFB3
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x4
	.4byte	.LCFI8-.LFB1
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI9-.LFB5
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI10-.LFB7
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI11-.LFB8
	.byte	0xe
	.uleb128 0x60
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI12-.LFB9
	.byte	0xe
	.uleb128 0x60
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI13-.LFB10
	.byte	0xe
	.uleb128 0x420
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI14-.LFB14
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI15-.LFB15
	.byte	0xe
	.uleb128 0x310
	.align	4
.LEFDE30:
	.text
.Letext0:
	.file 2 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 3 "C:/esp/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "C:/esp/esp-idf/components/newlib/include/stdint.h"
	.file 5 "C:/esp/esp-idf/components/mbedtls/port/include/sha512_alt.h"
	.file 6 "C:/esp/esp-idf/components/mbedtls/include/mbedtls/entropy.h"
	.file 7 "C:/esp/esp-idf/components/newlib/include/sys/lock.h"
	.file 8 "C:/esp/esp-idf/components/newlib/include/sys/_types.h"
	.file 9 "C:/esp/esp-idf/components/newlib/include/sys/reent.h"
	.file 10 "C:/esp/esp-idf/components/newlib/include/stdio.h"
	.file 11 "C:/esp/esp-idf/components/newlib/include/string.h"
	.file 12 "C:/esp/esp-idf/components/mbedtls/include/mbedtls/entropy_poll.h"
	.file 13 "C:/esp/esp-idf/components/mbedtls/include/mbedtls/sha512.h"
	.file 14 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x16f5
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF194
	.byte	0xc
	.4byte	.LASF195
	.4byte	.LASF196
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF6
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
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x3
	.byte	0x1e
	.4byte	0x6c
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x4
	.byte	0x39
	.4byte	0x61
	.uleb128 0x5
	.byte	0x4
	.4byte	0x37
	.byte	0x5
	.byte	0x20
	.4byte	0x9d
	.uleb128 0x6
	.4byte	.LASF10
	.byte	0
	.uleb128 0x6
	.4byte	.LASF11
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF12
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x5
	.byte	0x24
	.4byte	0x7e
	.uleb128 0x7
	.byte	0xd8
	.byte	0x5
	.byte	0x29
	.4byte	0xed
	.uleb128 0x8
	.4byte	.LASF14
	.byte	0x5
	.byte	0x2b
	.4byte	0xed
	.byte	0
	.uleb128 0x8
	.4byte	.LASF15
	.byte	0x5
	.byte	0x2c
	.4byte	0x104
	.byte	0x10
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x5
	.byte	0x2d
	.4byte	0x114
	.byte	0x50
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x5
	.byte	0x2e
	.4byte	0x25
	.byte	0xd0
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x5
	.byte	0x2f
	.4byte	0x9d
	.byte	0xd4
	.byte	0
	.uleb128 0x9
	.4byte	0x73
	.4byte	0xfd
	.uleb128 0xa
	.4byte	0xfd
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF19
	.uleb128 0x9
	.4byte	0x73
	.4byte	0x114
	.uleb128 0xa
	.4byte	0xfd
	.byte	0x7
	.byte	0
	.uleb128 0x9
	.4byte	0x4c
	.4byte	0x124
	.uleb128 0xa
	.4byte	0xfd
	.byte	0x7f
	.byte	0
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x5
	.byte	0x31
	.4byte	0xa8
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x6
	.byte	0x67
	.4byte	0x13a
	.uleb128 0xb
	.byte	0x4
	.4byte	0x140
	.uleb128 0xc
	.4byte	0x25
	.4byte	0x15e
	.uleb128 0xd
	.4byte	0x15e
	.uleb128 0xd
	.4byte	0x160
	.uleb128 0xd
	.4byte	0x2c
	.uleb128 0xd
	.4byte	0x166
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.uleb128 0xb
	.byte	0x4
	.4byte	0x4c
	.uleb128 0xb
	.byte	0x4
	.4byte	0x2c
	.uleb128 0x7
	.byte	0x14
	.byte	0x6
	.byte	0x6d
	.4byte	0x1b1
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x6
	.byte	0x6f
	.4byte	0x12f
	.byte	0
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x6
	.byte	0x70
	.4byte	0x15e
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x6
	.byte	0x71
	.4byte	0x2c
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF25
	.byte	0x6
	.byte	0x72
	.4byte	0x2c
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF26
	.byte	0x6
	.byte	0x73
	.4byte	0x25
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x6
	.byte	0x75
	.4byte	0x16c
	.uleb128 0xf
	.2byte	0x270
	.byte	0x6
	.byte	0x7a
	.4byte	0x1ea
	.uleb128 0x8
	.4byte	.LASF28
	.byte	0x6
	.byte	0x7d
	.4byte	0x124
	.byte	0
	.uleb128 0x8
	.4byte	.LASF29
	.byte	0x6
	.byte	0x81
	.4byte	0x25
	.byte	0xd8
	.uleb128 0x8
	.4byte	.LASF30
	.byte	0x6
	.byte	0x82
	.4byte	0x1ea
	.byte	0xdc
	.byte	0
	.uleb128 0x9
	.4byte	0x1b1
	.4byte	0x1fa
	.uleb128 0xa
	.4byte	0xfd
	.byte	0x13
	.byte	0
	.uleb128 0x3
	.4byte	.LASF31
	.byte	0x6
	.byte	0x8d
	.4byte	0x1bc
	.uleb128 0x3
	.4byte	.LASF32
	.byte	0x7
	.byte	0xb
	.4byte	0x25
	.uleb128 0x3
	.4byte	.LASF33
	.byte	0x7
	.byte	0xc
	.4byte	0x205
	.uleb128 0x3
	.4byte	.LASF34
	.byte	0x8
	.byte	0x10
	.4byte	0x226
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF35
	.uleb128 0x3
	.4byte	.LASF36
	.byte	0x8
	.byte	0x27
	.4byte	0x226
	.uleb128 0x10
	.4byte	.LASF37
	.byte	0x2
	.2byte	0x165
	.4byte	0x37
	.uleb128 0x11
	.byte	0x4
	.byte	0x8
	.byte	0x4a
	.4byte	0x263
	.uleb128 0x12
	.4byte	.LASF38
	.byte	0x8
	.byte	0x4c
	.4byte	0x238
	.uleb128 0x12
	.4byte	.LASF39
	.byte	0x8
	.byte	0x4d
	.4byte	0x263
	.byte	0
	.uleb128 0x9
	.4byte	0x4c
	.4byte	0x273
	.uleb128 0xa
	.4byte	0xfd
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.byte	0x8
	.byte	0x47
	.4byte	0x294
	.uleb128 0x8
	.4byte	.LASF40
	.byte	0x8
	.byte	0x49
	.4byte	0x25
	.byte	0
	.uleb128 0x8
	.4byte	.LASF41
	.byte	0x8
	.byte	0x4e
	.4byte	0x244
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF42
	.byte	0x8
	.byte	0x4f
	.4byte	0x273
	.uleb128 0x3
	.4byte	.LASF43
	.byte	0x8
	.byte	0x53
	.4byte	0x210
	.uleb128 0x3
	.4byte	.LASF44
	.byte	0x9
	.byte	0x16
	.4byte	0x2b5
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF45
	.uleb128 0x13
	.4byte	.LASF50
	.byte	0x18
	.byte	0x9
	.byte	0x2d
	.4byte	0x30f
	.uleb128 0x8
	.4byte	.LASF46
	.byte	0x9
	.byte	0x2f
	.4byte	0x30f
	.byte	0
	.uleb128 0x14
	.string	"_k"
	.byte	0x9
	.byte	0x30
	.4byte	0x25
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF47
	.byte	0x9
	.byte	0x30
	.4byte	0x25
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF48
	.byte	0x9
	.byte	0x30
	.4byte	0x25
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF49
	.byte	0x9
	.byte	0x30
	.4byte	0x25
	.byte	0x10
	.uleb128 0x14
	.string	"_x"
	.byte	0x9
	.byte	0x31
	.4byte	0x315
	.byte	0x14
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x2bc
	.uleb128 0x9
	.4byte	0x2aa
	.4byte	0x325
	.uleb128 0xa
	.4byte	0xfd
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	.LASF51
	.byte	0x24
	.byte	0x9
	.byte	0x35
	.4byte	0x39e
	.uleb128 0x8
	.4byte	.LASF52
	.byte	0x9
	.byte	0x37
	.4byte	0x25
	.byte	0
	.uleb128 0x8
	.4byte	.LASF53
	.byte	0x9
	.byte	0x38
	.4byte	0x25
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF54
	.byte	0x9
	.byte	0x39
	.4byte	0x25
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF55
	.byte	0x9
	.byte	0x3a
	.4byte	0x25
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF56
	.byte	0x9
	.byte	0x3b
	.4byte	0x25
	.byte	0x10
	.uleb128 0x8
	.4byte	.LASF57
	.byte	0x9
	.byte	0x3c
	.4byte	0x25
	.byte	0x14
	.uleb128 0x8
	.4byte	.LASF58
	.byte	0x9
	.byte	0x3d
	.4byte	0x25
	.byte	0x18
	.uleb128 0x8
	.4byte	.LASF59
	.byte	0x9
	.byte	0x3e
	.4byte	0x25
	.byte	0x1c
	.uleb128 0x8
	.4byte	.LASF60
	.byte	0x9
	.byte	0x3f
	.4byte	0x25
	.byte	0x20
	.byte	0
	.uleb128 0x15
	.4byte	.LASF61
	.2byte	0x108
	.byte	0x9
	.byte	0x48
	.4byte	0x3de
	.uleb128 0x8
	.4byte	.LASF62
	.byte	0x9
	.byte	0x49
	.4byte	0x3de
	.byte	0
	.uleb128 0x8
	.4byte	.LASF63
	.byte	0x9
	.byte	0x4a
	.4byte	0x3de
	.byte	0x80
	.uleb128 0x16
	.4byte	.LASF64
	.byte	0x9
	.byte	0x4c
	.4byte	0x2aa
	.2byte	0x100
	.uleb128 0x16
	.4byte	.LASF65
	.byte	0x9
	.byte	0x4f
	.4byte	0x2aa
	.2byte	0x104
	.byte	0
	.uleb128 0x9
	.4byte	0x15e
	.4byte	0x3ee
	.uleb128 0xa
	.4byte	0xfd
	.byte	0x1f
	.byte	0
	.uleb128 0x13
	.4byte	.LASF66
	.byte	0x8c
	.byte	0x9
	.byte	0x53
	.4byte	0x42b
	.uleb128 0x8
	.4byte	.LASF46
	.byte	0x9
	.byte	0x54
	.4byte	0x42b
	.byte	0
	.uleb128 0x8
	.4byte	.LASF67
	.byte	0x9
	.byte	0x55
	.4byte	0x25
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF68
	.byte	0x9
	.byte	0x56
	.4byte	0x431
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF69
	.byte	0x9
	.byte	0x57
	.4byte	0x448
	.byte	0x88
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x3ee
	.uleb128 0x9
	.4byte	0x441
	.4byte	0x441
	.uleb128 0xa
	.4byte	0xfd
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x447
	.uleb128 0x17
	.uleb128 0xb
	.byte	0x4
	.4byte	0x39e
	.uleb128 0x13
	.4byte	.LASF70
	.byte	0x8
	.byte	0x9
	.byte	0x73
	.4byte	0x473
	.uleb128 0x8
	.4byte	.LASF71
	.byte	0x9
	.byte	0x74
	.4byte	0x160
	.byte	0
	.uleb128 0x8
	.4byte	.LASF72
	.byte	0x9
	.byte	0x75
	.4byte	0x25
	.byte	0x4
	.byte	0
	.uleb128 0x18
	.4byte	.LASF73
	.byte	0xf0
	.byte	0x9
	.2byte	0x172
	.4byte	0x5b9
	.uleb128 0x19
	.4byte	.LASF74
	.byte	0x9
	.2byte	0x176
	.4byte	0x25
	.byte	0
	.uleb128 0x19
	.4byte	.LASF75
	.byte	0x9
	.2byte	0x17b
	.4byte	0x7ee
	.byte	0x4
	.uleb128 0x19
	.4byte	.LASF76
	.byte	0x9
	.2byte	0x17b
	.4byte	0x7ee
	.byte	0x8
	.uleb128 0x19
	.4byte	.LASF77
	.byte	0x9
	.2byte	0x17b
	.4byte	0x7ee
	.byte	0xc
	.uleb128 0x19
	.4byte	.LASF78
	.byte	0x9
	.2byte	0x17d
	.4byte	0x25
	.byte	0x10
	.uleb128 0x19
	.4byte	.LASF79
	.byte	0x9
	.2byte	0x17f
	.4byte	0x707
	.byte	0x14
	.uleb128 0x19
	.4byte	.LASF80
	.byte	0x9
	.2byte	0x181
	.4byte	0x25
	.byte	0x18
	.uleb128 0x19
	.4byte	.LASF81
	.byte	0x9
	.2byte	0x183
	.4byte	0x25
	.byte	0x1c
	.uleb128 0x19
	.4byte	.LASF82
	.byte	0x9
	.2byte	0x184
	.4byte	0x738
	.byte	0x20
	.uleb128 0x1a
	.string	"_mp"
	.byte	0x9
	.2byte	0x186
	.4byte	0x93b
	.byte	0x24
	.uleb128 0x19
	.4byte	.LASF83
	.byte	0x9
	.2byte	0x188
	.4byte	0x94c
	.byte	0x28
	.uleb128 0x19
	.4byte	.LASF84
	.byte	0x9
	.2byte	0x18a
	.4byte	0x25
	.byte	0x2c
	.uleb128 0x19
	.4byte	.LASF85
	.byte	0x9
	.2byte	0x18d
	.4byte	0x25
	.byte	0x30
	.uleb128 0x19
	.4byte	.LASF86
	.byte	0x9
	.2byte	0x18e
	.4byte	0x707
	.byte	0x34
	.uleb128 0x19
	.4byte	.LASF87
	.byte	0x9
	.2byte	0x190
	.4byte	0x952
	.byte	0x38
	.uleb128 0x19
	.4byte	.LASF88
	.byte	0x9
	.2byte	0x191
	.4byte	0x958
	.byte	0x3c
	.uleb128 0x19
	.4byte	.LASF89
	.byte	0x9
	.2byte	0x192
	.4byte	0x707
	.byte	0x40
	.uleb128 0x19
	.4byte	.LASF90
	.byte	0x9
	.2byte	0x195
	.4byte	0x969
	.byte	0x44
	.uleb128 0x19
	.4byte	.LASF66
	.byte	0x9
	.2byte	0x199
	.4byte	0x42b
	.byte	0x48
	.uleb128 0x19
	.4byte	.LASF91
	.byte	0x9
	.2byte	0x19a
	.4byte	0x3ee
	.byte	0x4c
	.uleb128 0x19
	.4byte	.LASF92
	.byte	0x9
	.2byte	0x19d
	.4byte	0x7b3
	.byte	0xd8
	.uleb128 0x19
	.4byte	.LASF93
	.byte	0x9
	.2byte	0x19e
	.4byte	0x7ee
	.byte	0xe4
	.uleb128 0x19
	.4byte	.LASF94
	.byte	0x9
	.2byte	0x19f
	.4byte	0x975
	.byte	0xe8
	.uleb128 0x19
	.4byte	.LASF95
	.byte	0x9
	.2byte	0x1a0
	.4byte	0x707
	.byte	0xec
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x473
	.uleb128 0x13
	.4byte	.LASF96
	.byte	0x68
	.byte	0x9
	.byte	0xb3
	.4byte	0x6e9
	.uleb128 0x14
	.string	"_p"
	.byte	0x9
	.byte	0xb4
	.4byte	0x160
	.byte	0
	.uleb128 0x14
	.string	"_r"
	.byte	0x9
	.byte	0xb5
	.4byte	0x25
	.byte	0x4
	.uleb128 0x14
	.string	"_w"
	.byte	0x9
	.byte	0xb6
	.4byte	0x25
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF97
	.byte	0x9
	.byte	0xb7
	.4byte	0x53
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF98
	.byte	0x9
	.byte	0xb8
	.4byte	0x53
	.byte	0xe
	.uleb128 0x14
	.string	"_bf"
	.byte	0x9
	.byte	0xb9
	.4byte	0x44e
	.byte	0x10
	.uleb128 0x8
	.4byte	.LASF99
	.byte	0x9
	.byte	0xba
	.4byte	0x25
	.byte	0x18
	.uleb128 0x8
	.4byte	.LASF100
	.byte	0x9
	.byte	0xbd
	.4byte	0x5b9
	.byte	0x1c
	.uleb128 0x8
	.4byte	.LASF101
	.byte	0x9
	.byte	0xc1
	.4byte	0x15e
	.byte	0x20
	.uleb128 0x8
	.4byte	.LASF102
	.byte	0x9
	.byte	0xc3
	.4byte	0x714
	.byte	0x24
	.uleb128 0x8
	.4byte	.LASF103
	.byte	0x9
	.byte	0xc5
	.4byte	0x743
	.byte	0x28
	.uleb128 0x8
	.4byte	.LASF104
	.byte	0x9
	.byte	0xc8
	.4byte	0x767
	.byte	0x2c
	.uleb128 0x8
	.4byte	.LASF105
	.byte	0x9
	.byte	0xc9
	.4byte	0x781
	.byte	0x30
	.uleb128 0x14
	.string	"_ub"
	.byte	0x9
	.byte	0xcc
	.4byte	0x44e
	.byte	0x34
	.uleb128 0x14
	.string	"_up"
	.byte	0x9
	.byte	0xcd
	.4byte	0x160
	.byte	0x3c
	.uleb128 0x14
	.string	"_ur"
	.byte	0x9
	.byte	0xce
	.4byte	0x25
	.byte	0x40
	.uleb128 0x8
	.4byte	.LASF106
	.byte	0x9
	.byte	0xd1
	.4byte	0x787
	.byte	0x44
	.uleb128 0x8
	.4byte	.LASF107
	.byte	0x9
	.byte	0xd2
	.4byte	0x797
	.byte	0x47
	.uleb128 0x14
	.string	"_lb"
	.byte	0x9
	.byte	0xd5
	.4byte	0x44e
	.byte	0x48
	.uleb128 0x8
	.4byte	.LASF108
	.byte	0x9
	.byte	0xd8
	.4byte	0x25
	.byte	0x50
	.uleb128 0x8
	.4byte	.LASF109
	.byte	0x9
	.byte	0xd9
	.4byte	0x21b
	.byte	0x54
	.uleb128 0x8
	.4byte	.LASF110
	.byte	0x9
	.byte	0xe0
	.4byte	0x29f
	.byte	0x58
	.uleb128 0x8
	.4byte	.LASF111
	.byte	0x9
	.byte	0xe2
	.4byte	0x294
	.byte	0x5c
	.uleb128 0x8
	.4byte	.LASF112
	.byte	0x9
	.byte	0xe3
	.4byte	0x25
	.byte	0x64
	.byte	0
	.uleb128 0xc
	.4byte	0x25
	.4byte	0x707
	.uleb128 0xd
	.4byte	0x5b9
	.uleb128 0xd
	.4byte	0x15e
	.uleb128 0xd
	.4byte	0x707
	.uleb128 0xd
	.4byte	0x25
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x70d
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF113
	.uleb128 0xb
	.byte	0x4
	.4byte	0x6e9
	.uleb128 0xc
	.4byte	0x25
	.4byte	0x738
	.uleb128 0xd
	.4byte	0x5b9
	.uleb128 0xd
	.4byte	0x15e
	.uleb128 0xd
	.4byte	0x738
	.uleb128 0xd
	.4byte	0x25
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x73e
	.uleb128 0x1b
	.4byte	0x70d
	.uleb128 0xb
	.byte	0x4
	.4byte	0x71a
	.uleb128 0xc
	.4byte	0x22d
	.4byte	0x767
	.uleb128 0xd
	.4byte	0x5b9
	.uleb128 0xd
	.4byte	0x15e
	.uleb128 0xd
	.4byte	0x22d
	.uleb128 0xd
	.4byte	0x25
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x749
	.uleb128 0xc
	.4byte	0x25
	.4byte	0x781
	.uleb128 0xd
	.4byte	0x5b9
	.uleb128 0xd
	.4byte	0x15e
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x76d
	.uleb128 0x9
	.4byte	0x4c
	.4byte	0x797
	.uleb128 0xa
	.4byte	0xfd
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.4byte	0x4c
	.4byte	0x7a7
	.uleb128 0xa
	.4byte	0xfd
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	.LASF114
	.byte	0x9
	.2byte	0x11d
	.4byte	0x5bf
	.uleb128 0x18
	.4byte	.LASF115
	.byte	0xc
	.byte	0x9
	.2byte	0x121
	.4byte	0x7e8
	.uleb128 0x19
	.4byte	.LASF46
	.byte	0x9
	.2byte	0x123
	.4byte	0x7e8
	.byte	0
	.uleb128 0x19
	.4byte	.LASF116
	.byte	0x9
	.2byte	0x124
	.4byte	0x25
	.byte	0x4
	.uleb128 0x19
	.4byte	.LASF117
	.byte	0x9
	.2byte	0x125
	.4byte	0x7ee
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x7b3
	.uleb128 0xb
	.byte	0x4
	.4byte	0x7a7
	.uleb128 0x18
	.4byte	.LASF118
	.byte	0x18
	.byte	0x9
	.2byte	0x13d
	.4byte	0x836
	.uleb128 0x19
	.4byte	.LASF119
	.byte	0x9
	.2byte	0x13e
	.4byte	0x836
	.byte	0
	.uleb128 0x19
	.4byte	.LASF120
	.byte	0x9
	.2byte	0x13f
	.4byte	0x836
	.byte	0x6
	.uleb128 0x19
	.4byte	.LASF121
	.byte	0x9
	.2byte	0x140
	.4byte	0x3e
	.byte	0xc
	.uleb128 0x19
	.4byte	.LASF122
	.byte	0x9
	.2byte	0x143
	.4byte	0x6c
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.4byte	0x3e
	.4byte	0x846
	.uleb128 0xa
	.4byte	0xfd
	.byte	0x2
	.byte	0
	.uleb128 0x18
	.4byte	.LASF123
	.byte	0x10
	.byte	0x9
	.2byte	0x156
	.4byte	0x888
	.uleb128 0x19
	.4byte	.LASF124
	.byte	0x9
	.2byte	0x159
	.4byte	0x30f
	.byte	0
	.uleb128 0x19
	.4byte	.LASF125
	.byte	0x9
	.2byte	0x15a
	.4byte	0x25
	.byte	0x4
	.uleb128 0x19
	.4byte	.LASF126
	.byte	0x9
	.2byte	0x15b
	.4byte	0x30f
	.byte	0x8
	.uleb128 0x19
	.4byte	.LASF127
	.byte	0x9
	.2byte	0x15c
	.4byte	0x888
	.byte	0xc
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x30f
	.uleb128 0x18
	.4byte	.LASF128
	.byte	0x50
	.byte	0x9
	.2byte	0x160
	.4byte	0x92b
	.uleb128 0x19
	.4byte	.LASF129
	.byte	0x9
	.2byte	0x163
	.4byte	0x707
	.byte	0
	.uleb128 0x19
	.4byte	.LASF130
	.byte	0x9
	.2byte	0x164
	.4byte	0x294
	.byte	0x4
	.uleb128 0x19
	.4byte	.LASF131
	.byte	0x9
	.2byte	0x165
	.4byte	0x294
	.byte	0xc
	.uleb128 0x19
	.4byte	.LASF132
	.byte	0x9
	.2byte	0x166
	.4byte	0x294
	.byte	0x14
	.uleb128 0x19
	.4byte	.LASF133
	.byte	0x9
	.2byte	0x167
	.4byte	0x92b
	.byte	0x1c
	.uleb128 0x19
	.4byte	.LASF134
	.byte	0x9
	.2byte	0x168
	.4byte	0x25
	.byte	0x24
	.uleb128 0x19
	.4byte	.LASF135
	.byte	0x9
	.2byte	0x169
	.4byte	0x294
	.byte	0x28
	.uleb128 0x19
	.4byte	.LASF136
	.byte	0x9
	.2byte	0x16a
	.4byte	0x294
	.byte	0x30
	.uleb128 0x19
	.4byte	.LASF137
	.byte	0x9
	.2byte	0x16b
	.4byte	0x294
	.byte	0x38
	.uleb128 0x19
	.4byte	.LASF138
	.byte	0x9
	.2byte	0x16c
	.4byte	0x294
	.byte	0x40
	.uleb128 0x19
	.4byte	.LASF139
	.byte	0x9
	.2byte	0x16d
	.4byte	0x294
	.byte	0x48
	.byte	0
	.uleb128 0x9
	.4byte	0x70d
	.4byte	0x93b
	.uleb128 0xa
	.4byte	0xfd
	.byte	0x7
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x846
	.uleb128 0x1c
	.4byte	0x94c
	.uleb128 0xd
	.4byte	0x5b9
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x941
	.uleb128 0xb
	.byte	0x4
	.4byte	0x7f4
	.uleb128 0xb
	.byte	0x4
	.4byte	0x325
	.uleb128 0x1c
	.4byte	0x969
	.uleb128 0xd
	.4byte	0x25
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x96f
	.uleb128 0xb
	.byte	0x4
	.4byte	0x95e
	.uleb128 0xb
	.byte	0x4
	.4byte	0x88e
	.uleb128 0x3
	.4byte	.LASF140
	.byte	0xa
	.byte	0x34
	.4byte	0x7a7
	.uleb128 0x1d
	.4byte	.LASF197
	.byte	0x1
	.byte	0x3f
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9c3
	.uleb128 0x1e
	.string	"v"
	.byte	0x1
	.byte	0x3f
	.4byte	0x15e
	.4byte	.LLST0
	.uleb128 0x1e
	.string	"n"
	.byte	0x1
	.byte	0x3f
	.4byte	0x2c
	.4byte	.LLST1
	.uleb128 0x1f
	.string	"p"
	.byte	0x1
	.byte	0x40
	.4byte	0x9c3
	.4byte	.LLST2
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x9c9
	.uleb128 0x20
	.4byte	0x4c
	.uleb128 0x21
	.4byte	.LASF143
	.byte	0x1
	.2byte	0x1f7
	.4byte	0x25
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa37
	.uleb128 0x22
	.string	"buf"
	.byte	0x1
	.2byte	0x1f7
	.4byte	0xa37
	.4byte	.LLST3
	.uleb128 0x23
	.4byte	.LASF141
	.byte	0x1
	.2byte	0x1f8
	.4byte	0x2c
	.4byte	.LLST4
	.uleb128 0x24
	.string	"set"
	.byte	0x1
	.2byte	0x1fa
	.4byte	0x4c
	.4byte	.LLST5
	.uleb128 0x25
	.4byte	.LASF142
	.byte	0x1
	.2byte	0x1fb
	.4byte	0x4c
	.4byte	.LLST6
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.2byte	0x1fc
	.4byte	0x2c
	.4byte	.LLST7
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0xa3d
	.uleb128 0x1b
	.4byte	0x4c
	.uleb128 0x21
	.4byte	.LASF144
	.byte	0x1
	.2byte	0x1cf
	.4byte	0x25
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xab3
	.uleb128 0x23
	.4byte	.LASF145
	.byte	0x1
	.2byte	0x1cf
	.4byte	0x15e
	.4byte	.LLST8
	.uleb128 0x26
	.4byte	.LASF146
	.byte	0x1
	.2byte	0x1cf
	.4byte	0x160
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x27
	.string	"len"
	.byte	0x1
	.2byte	0x1d0
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x26
	.4byte	.LASF147
	.byte	0x1
	.2byte	0x1d0
	.4byte	0x166
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x28
	.4byte	.LVL16
	.4byte	0x162e
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x2a
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LASF148
	.byte	0x1
	.2byte	0x1dd
	.4byte	0x25
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb52
	.uleb128 0x22
	.string	"buf"
	.byte	0x1
	.2byte	0x1dd
	.4byte	0x160
	.4byte	.LLST9
	.uleb128 0x26
	.4byte	.LASF141
	.byte	0x1
	.2byte	0x1dd
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x24
	.string	"ret"
	.byte	0x1
	.2byte	0x1df
	.4byte	0x25
	.4byte	.LLST10
	.uleb128 0x25
	.4byte	.LASF149
	.byte	0x1
	.2byte	0x1e0
	.4byte	0x2c
	.4byte	.LLST11
	.uleb128 0x2a
	.4byte	.LASF147
	.byte	0x1
	.2byte	0x1e1
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.4byte	.LASF150
	.byte	0x1
	.2byte	0x1e2
	.4byte	0x2c
	.4byte	.LLST12
	.uleb128 0x28
	.4byte	.LVL23
	.4byte	0x1639
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x72
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x73
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF151
	.byte	0x1
	.byte	0xa8
	.4byte	0x25
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc42
	.uleb128 0x1e
	.string	"ctx"
	.byte	0x1
	.byte	0xa8
	.4byte	0xc42
	.4byte	.LLST13
	.uleb128 0x2c
	.4byte	.LASF152
	.byte	0x1
	.byte	0xa8
	.4byte	0x4c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2d
	.4byte	.LASF145
	.byte	0x1
	.byte	0xa9
	.4byte	0xa37
	.4byte	.LLST14
	.uleb128 0x1e
	.string	"len"
	.byte	0x1
	.byte	0xa9
	.4byte	0x2c
	.4byte	.LLST15
	.uleb128 0x2e
	.4byte	.LASF153
	.byte	0x1
	.byte	0xab
	.4byte	0xc48
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2f
	.string	"tmp"
	.byte	0x1
	.byte	0xac
	.4byte	0xc58
	.uleb128 0x3
	.byte	0x91
	.sleb128 -110
	.uleb128 0x30
	.4byte	.LASF154
	.byte	0x1
	.byte	0xad
	.4byte	0x2c
	.4byte	.LLST16
	.uleb128 0x1f
	.string	"p"
	.byte	0x1
	.byte	0xae
	.4byte	0xa37
	.4byte	.LLST17
	.uleb128 0x31
	.4byte	.LVL30
	.4byte	0x1644
	.4byte	0xc05
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -110
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x31
	.4byte	.LVL33
	.4byte	0x164f
	.4byte	0xc25
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x28
	.4byte	.LVL34
	.4byte	0x164f
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x1fa
	.uleb128 0x9
	.4byte	0x4c
	.4byte	0xc58
	.uleb128 0xa
	.4byte	0xfd
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.4byte	0x4c
	.4byte	0xc68
	.uleb128 0xa
	.4byte	0xfd
	.byte	0x3f
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF155
	.byte	0x1
	.byte	0xe0
	.4byte	0x25
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd16
	.uleb128 0x1e
	.string	"ctx"
	.byte	0x1
	.byte	0xe0
	.4byte	0xc42
	.4byte	.LLST18
	.uleb128 0x1f
	.string	"ret"
	.byte	0x1
	.byte	0xe2
	.4byte	0x25
	.4byte	.LLST19
	.uleb128 0x1f
	.string	"i"
	.byte	0x1
	.byte	0xe2
	.4byte	0x25
	.4byte	.LLST20
	.uleb128 0x30
	.4byte	.LASF156
	.byte	0x1
	.byte	0xe2
	.4byte	0x25
	.4byte	.LLST21
	.uleb128 0x2f
	.string	"buf"
	.byte	0x1
	.byte	0xe3
	.4byte	0x114
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x2e
	.4byte	.LASF147
	.byte	0x1
	.byte	0xe4
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x32
	.4byte	.LVL40
	.4byte	0xcf5
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x80
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x28
	.4byte	.LVL42
	.4byte	0xb52
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.byte	0
	.byte	0
	.uleb128 0x33
	.4byte	.LASF157
	.byte	0x1
	.byte	0x78
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd50
	.uleb128 0x34
	.string	"ctx"
	.byte	0x1
	.byte	0x78
	.4byte	0xc42
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x28
	.4byte	.LVL52
	.4byte	0x986
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x270
	.byte	0
	.byte	0
	.uleb128 0x35
	.4byte	.LASF159
	.byte	0x1
	.byte	0x83
	.4byte	0x25
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdd6
	.uleb128 0x1e
	.string	"ctx"
	.byte	0x1
	.byte	0x83
	.4byte	0xc42
	.4byte	.LLST22
	.uleb128 0x2c
	.4byte	.LASF22
	.byte	0x1
	.byte	0x84
	.4byte	0x12f
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2c
	.4byte	.LASF23
	.byte	0x1
	.byte	0x84
	.4byte	0x15e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2c
	.4byte	.LASF25
	.byte	0x1
	.byte	0x85
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2c
	.4byte	.LASF26
	.byte	0x1
	.byte	0x85
	.4byte	0x25
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x1f
	.string	"idx"
	.byte	0x1
	.byte	0x87
	.4byte	0x25
	.4byte	.LLST23
	.uleb128 0x1f
	.string	"ret"
	.byte	0x1
	.byte	0x87
	.4byte	0x25
	.4byte	.LLST24
	.uleb128 0x36
	.4byte	.LASF167
	.byte	0x1
	.byte	0x9c
	.4byte	.L28
	.byte	0
	.uleb128 0x33
	.4byte	.LASF158
	.byte	0x1
	.byte	0x45
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe52
	.uleb128 0x34
	.string	"ctx"
	.byte	0x1
	.byte	0x45
	.4byte	0xc42
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x31
	.4byte	.LVL61
	.4byte	0x165a
	.4byte	0xe18
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x270
	.byte	0
	.uleb128 0x31
	.4byte	.LVL62
	.4byte	0x1663
	.4byte	0xe31
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x28
	.4byte	.LVL63
	.4byte	0xd50
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x35
	.4byte	.LASF160
	.byte	0x1
	.byte	0xc9
	.4byte	0x25
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xec3
	.uleb128 0x1e
	.string	"ctx"
	.byte	0x1
	.byte	0xc9
	.4byte	0xc42
	.4byte	.LLST25
	.uleb128 0x2c
	.4byte	.LASF145
	.byte	0x1
	.byte	0xca
	.4byte	0xa37
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x34
	.string	"len"
	.byte	0x1
	.byte	0xca
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2f
	.string	"ret"
	.byte	0x1
	.byte	0xcc
	.4byte	0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x28
	.4byte	.LVL65
	.4byte	0xb52
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x44
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x37
	.4byte	.LASF161
	.byte	0x1
	.2byte	0x10b
	.4byte	0x25
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf0c
	.uleb128 0x22
	.string	"ctx"
	.byte	0x1
	.2byte	0x10b
	.4byte	0xc42
	.4byte	.LLST26
	.uleb128 0x38
	.string	"ret"
	.byte	0x1
	.2byte	0x10d
	.4byte	0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x28
	.4byte	.LVL68
	.4byte	0xc68
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x37
	.4byte	.LASF162
	.byte	0x1
	.2byte	0x11e
	.4byte	0x25
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10a5
	.uleb128 0x23
	.4byte	.LASF145
	.byte	0x1
	.2byte	0x11e
	.4byte	0x15e
	.4byte	.LLST27
	.uleb128 0x26
	.4byte	.LASF146
	.byte	0x1
	.2byte	0x11e
	.4byte	0x160
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x27
	.string	"len"
	.byte	0x1
	.2byte	0x11e
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x24
	.string	"ret"
	.byte	0x1
	.2byte	0x120
	.4byte	0x25
	.4byte	.LLST28
	.uleb128 0x25
	.4byte	.LASF163
	.byte	0x1
	.2byte	0x120
	.4byte	0x25
	.4byte	.LLST29
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.2byte	0x120
	.4byte	0x25
	.4byte	.LLST30
	.uleb128 0x25
	.4byte	.LASF164
	.byte	0x1
	.2byte	0x120
	.4byte	0x25
	.4byte	.LLST31
	.uleb128 0x24
	.string	"ctx"
	.byte	0x1
	.2byte	0x121
	.4byte	0xc42
	.4byte	.LLST32
	.uleb128 0x38
	.string	"buf"
	.byte	0x1
	.2byte	0x122
	.4byte	0xc58
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x39
	.4byte	.LASF167
	.byte	0x1
	.2byte	0x174
	.uleb128 0x31
	.4byte	.LVL74
	.4byte	0xc68
	.4byte	0xfcc
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL80
	.4byte	0x165a
	.4byte	0xfec
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL81
	.4byte	0x166e
	.4byte	0x1007
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x31
	.4byte	.LVL82
	.4byte	0x165a
	.4byte	0x1026
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0xd8
	.byte	0
	.uleb128 0x31
	.4byte	.LVL83
	.4byte	0x1663
	.4byte	0x103f
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x31
	.4byte	.LVL84
	.4byte	0x164f
	.4byte	0x1060
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL85
	.4byte	0x1644
	.4byte	0x1087
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x28
	.4byte	.LVL88
	.4byte	0x1679
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x37
	.4byte	.LASF165
	.byte	0x1
	.2byte	0x193
	.4byte	0x25
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x118c
	.uleb128 0x22
	.string	"ctx"
	.byte	0x1
	.2byte	0x193
	.4byte	0xc42
	.4byte	.LLST33
	.uleb128 0x23
	.4byte	.LASF166
	.byte	0x1
	.2byte	0x193
	.4byte	0x738
	.4byte	.LLST34
	.uleb128 0x24
	.string	"ret"
	.byte	0x1
	.2byte	0x195
	.4byte	0x25
	.4byte	.LLST35
	.uleb128 0x38
	.string	"f"
	.byte	0x1
	.2byte	0x196
	.4byte	0x118c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x38
	.string	"buf"
	.byte	0x1
	.2byte	0x197
	.4byte	0xc58
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x3a
	.4byte	.LASF167
	.byte	0x1
	.2byte	0x1a7
	.4byte	.L47
	.uleb128 0x31
	.4byte	.LVL98
	.4byte	0x1682
	.4byte	0x1134
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x31
	.4byte	.LVL100
	.4byte	0xf0c
	.4byte	0x1155
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.uleb128 0x31
	.4byte	.LVL102
	.4byte	0x168d
	.4byte	0x117b
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL104
	.4byte	0x1698
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x97b
	.uleb128 0x37
	.4byte	.LASF168
	.byte	0x1
	.2byte	0x1ac
	.4byte	0x25
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12e7
	.uleb128 0x22
	.string	"ctx"
	.byte	0x1
	.2byte	0x1ac
	.4byte	0xc42
	.4byte	.LLST36
	.uleb128 0x26
	.4byte	.LASF166
	.byte	0x1
	.2byte	0x1ac
	.4byte	0x738
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x38
	.string	"f"
	.byte	0x1
	.2byte	0x1ae
	.4byte	0x118c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x24
	.string	"n"
	.byte	0x1
	.2byte	0x1af
	.4byte	0x2c
	.4byte	.LLST37
	.uleb128 0x38
	.string	"buf"
	.byte	0x1
	.2byte	0x1b0
	.4byte	0x12e7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1056
	.uleb128 0x31
	.4byte	.LVL108
	.4byte	0x1682
	.4byte	0x1211
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x31
	.4byte	.LVL110
	.4byte	0x16a3
	.4byte	0x122f
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x31
	.4byte	.LVL111
	.4byte	0x16ae
	.4byte	0x1243
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL113
	.4byte	0x16a3
	.4byte	0x1261
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x31
	.4byte	.LVL115
	.4byte	0x16b9
	.4byte	0x1287
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1056
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL116
	.4byte	0x1698
	.4byte	0x129b
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL119
	.4byte	0x1698
	.4byte	0x12af
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL120
	.4byte	0xe52
	.4byte	0x12d0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1056
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL121
	.4byte	0x10a5
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x4c
	.4byte	0x12f8
	.uleb128 0x3b
	.4byte	0xfd
	.2byte	0x3ff
	.byte	0
	.uleb128 0x37
	.4byte	.LASF169
	.byte	0x1
	.2byte	0x212
	.4byte	0x25
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1434
	.uleb128 0x23
	.4byte	.LASF170
	.byte	0x1
	.2byte	0x212
	.4byte	0x25
	.4byte	.LLST38
	.uleb128 0x24
	.string	"ret"
	.byte	0x1
	.2byte	0x214
	.4byte	0x25
	.4byte	.LLST39
	.uleb128 0x2a
	.4byte	.LASF171
	.byte	0x1
	.2byte	0x215
	.4byte	0x1434
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2a
	.4byte	.LASF172
	.byte	0x1
	.2byte	0x216
	.4byte	0x1434
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3a
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x22d
	.4byte	.L57
	.uleb128 0x31
	.4byte	.LVL127
	.4byte	0x16c4
	.4byte	0x1373
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.uleb128 0x31
	.4byte	.LVL128
	.4byte	0xab3
	.4byte	0x138c
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x31
	.4byte	.LVL130
	.4byte	0xab3
	.4byte	0x13a5
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x31
	.4byte	.LVL132
	.4byte	0x9ce
	.4byte	0x13be
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x31
	.4byte	.LVL134
	.4byte	0x9ce
	.4byte	0x13d7
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x31
	.4byte	.LVL136
	.4byte	0x16cf
	.4byte	0x13f6
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x31
	.4byte	.LVL139
	.4byte	0x16da
	.4byte	0x140d
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0
	.uleb128 0x31
	.4byte	.LVL140
	.4byte	0x16da
	.4byte	0x1424
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.uleb128 0x28
	.4byte	.LVL141
	.4byte	0x16e9
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x4c
	.4byte	0x1444
	.uleb128 0xa
	.4byte	0xfd
	.byte	0xf
	.byte	0
	.uleb128 0x37
	.4byte	.LASF174
	.byte	0x1
	.2byte	0x242
	.4byte	0x25
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x162e
	.uleb128 0x23
	.4byte	.LASF170
	.byte	0x1
	.2byte	0x242
	.4byte	0x25
	.4byte	.LLST40
	.uleb128 0x24
	.string	"ret"
	.byte	0x1
	.2byte	0x244
	.4byte	0x25
	.4byte	.LLST41
	.uleb128 0x38
	.string	"ctx"
	.byte	0x1
	.2byte	0x246
	.4byte	0x1fa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -784
	.uleb128 0x38
	.string	"buf"
	.byte	0x1
	.2byte	0x247
	.4byte	0xc58
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x38
	.string	"acc"
	.byte	0x1
	.2byte	0x248
	.4byte	0xc58
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.2byte	0x249
	.4byte	0x2c
	.4byte	.LLST42
	.uleb128 0x24
	.string	"j"
	.byte	0x1
	.2byte	0x249
	.4byte	0x2c
	.4byte	.LLST43
	.uleb128 0x3a
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x27d
	.4byte	.L63
	.uleb128 0x31
	.4byte	.LVL145
	.4byte	0x165a
	.4byte	0x14f6
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x74
	.sleb128 112
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL146
	.4byte	0x165a
	.4byte	0x1516
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x74
	.sleb128 176
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL147
	.4byte	0x16c4
	.4byte	0x152d
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.byte	0
	.uleb128 0x31
	.4byte	.LVL148
	.4byte	0xdd6
	.4byte	0x1542
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -784
	.byte	0
	.uleb128 0x31
	.4byte	.LVL149
	.4byte	0xec3
	.4byte	0x1557
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -784
	.byte	0
	.uleb128 0x31
	.4byte	.LVL151
	.4byte	0xd50
	.4byte	0x1584
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -784
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	entropy_dummy_source
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x40
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x31
	.4byte	.LVL153
	.4byte	0xe52
	.4byte	0x15a6
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -784
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL156
	.4byte	0xf0c
	.4byte	0x15c8
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -784
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.uleb128 0x31
	.4byte	.LVL163
	.4byte	0x12f8
	.4byte	0x15db
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x31
	.4byte	.LVL167
	.4byte	0xd16
	.4byte	0x15f0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -784
	.byte	0
	.uleb128 0x31
	.4byte	.LVL168
	.4byte	0x16da
	.4byte	0x1607
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0
	.uleb128 0x31
	.4byte	.LVL169
	.4byte	0x16da
	.4byte	0x161e
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.uleb128 0x28
	.4byte	.LVL170
	.4byte	0x16e9
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF175
	.4byte	.LASF175
	.byte	0xb
	.byte	0x19
	.uleb128 0x3c
	.4byte	.LASF176
	.4byte	.LASF176
	.byte	0xc
	.byte	0x5b
	.uleb128 0x3c
	.4byte	.LASF177
	.4byte	.LASF177
	.byte	0xd
	.byte	0x7f
	.uleb128 0x3c
	.4byte	.LASF178
	.4byte	.LASF178
	.byte	0x5
	.byte	0x59
	.uleb128 0x3d
	.4byte	.LASF175
	.4byte	.LASF175
	.uleb128 0x3c
	.4byte	.LASF179
	.4byte	.LASF179
	.byte	0x5
	.byte	0x50
	.uleb128 0x3c
	.4byte	.LASF180
	.4byte	.LASF180
	.byte	0x5
	.byte	0x62
	.uleb128 0x3d
	.4byte	.LASF181
	.4byte	.LASF181
	.uleb128 0x3c
	.4byte	.LASF182
	.4byte	.LASF182
	.byte	0xa
	.byte	0xdd
	.uleb128 0x3c
	.4byte	.LASF183
	.4byte	.LASF183
	.byte	0xa
	.byte	0xca
	.uleb128 0x3c
	.4byte	.LASF184
	.4byte	.LASF184
	.byte	0xa
	.byte	0xa9
	.uleb128 0x3c
	.4byte	.LASF185
	.4byte	.LASF185
	.byte	0xa
	.byte	0xd0
	.uleb128 0x3c
	.4byte	.LASF186
	.4byte	.LASF186
	.byte	0xa
	.byte	0xd6
	.uleb128 0x3c
	.4byte	.LASF187
	.4byte	.LASF187
	.byte	0xa
	.byte	0xc9
	.uleb128 0x3c
	.4byte	.LASF188
	.4byte	.LASF188
	.byte	0xa
	.byte	0xb2
	.uleb128 0x3c
	.4byte	.LASF189
	.4byte	.LASF189
	.byte	0xb
	.byte	0x16
	.uleb128 0x3e
	.4byte	.LASF190
	.4byte	.LASF192
	.byte	0xe
	.byte	0
	.4byte	.LASF190
	.uleb128 0x3e
	.4byte	.LASF191
	.4byte	.LASF193
	.byte	0xe
	.byte	0
	.4byte	.LASF191
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
	.uleb128 0x6
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x19
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x18
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
	.uleb128 0x32
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x36
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x38
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
	.uleb128 0x39
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x3a
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
	.uleb128 0x3b
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL2
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL4
	.4byte	.LFE0
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LFE0
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL5
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL11
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL5
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL14
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL12
	.4byte	.LFE13
	.2byte	0x4
	.byte	0x7b
	.sleb128 255
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL15
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL17
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL18
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL27
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL23
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL21
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL28
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL35
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL28
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL31
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL28
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL32
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL30
	.4byte	.LVL32
	.2byte	0x3
	.byte	0x8
	.byte	0x40
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x4
	.byte	0x91
	.sleb128 -110
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL36
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
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL47
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL38
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL47
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL45
	.4byte	.LVL47
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL53
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL59
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL56
	.4byte	.LVL58
	.2byte	0x3
	.byte	0x79
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL54
	.4byte	.LVL59
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL59
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL64
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL66
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL67
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL69
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL70
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL89
	.4byte	.LVL90
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL90
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL91
	.4byte	.LVL92
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL92
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL93
	.4byte	.LVL94
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL94
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL95
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL74
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL88
	.4byte	.LVL90
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL94
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL73
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL78
	.4byte	.LVL80-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL90
	.4byte	.LVL92
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL92
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL75
	.4byte	.LVL80-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL85
	.4byte	.LVL86
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL86
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL75
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL71
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL89
	.4byte	.LVL90
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL90
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL91
	.4byte	.LVL92
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL92
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL93
	.4byte	.LVL94
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL94
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL95
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL96
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL101
	.4byte	.LVL105
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL105
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL106
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL96
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL99
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL97
	.4byte	.LVL101
	.2byte	0x3
	.byte	0x9
	.byte	0xc1
	.byte	0x9f
	.4byte	.LVL101
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL105
	.4byte	.LFE9
	.2byte	0x3
	.byte	0x9
	.byte	0xc1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL107
	.4byte	.LVL117
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL117
	.4byte	.LVL118
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL118
	.4byte	.LVL122
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL122
	.4byte	.LVL123
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL123
	.4byte	.LVL124
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL124
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL112
	.4byte	.LVL123
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL125
	.4byte	.LVL142
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL142
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL126
	.4byte	.LVL129
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL129
	.4byte	.LVL137
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL138
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL143
	.4byte	.LVL171
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL171
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL144
	.4byte	.LVL150
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL150
	.4byte	.LVL155
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL157
	.4byte	.LVL158
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL164
	.4byte	.LVL165
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL166
	.4byte	.LFE15
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL155
	.4byte	.LVL161
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL158
	.4byte	.LVL160
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL161
	.4byte	.LVL164
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL165
	.4byte	.LVL166
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x94
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF152:
	.string	"source_id"
.LASF13:
	.string	"esp_mbedtls_sha512_mode"
.LASF194:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF32:
	.string	"_lock_t"
.LASF146:
	.string	"output"
.LASF61:
	.string	"_on_exit_args"
.LASF103:
	.string	"_write"
.LASF131:
	.string	"_wctomb_state"
.LASF16:
	.string	"buffer"
.LASF168:
	.string	"mbedtls_entropy_update_seed_file"
.LASF95:
	.string	"_signal_buf"
.LASF0:
	.string	"unsigned int"
.LASF197:
	.string	"mbedtls_zeroize"
.LASF99:
	.string	"_lbfsize"
.LASF97:
	.string	"_flags"
.LASF74:
	.string	"_errno"
.LASF33:
	.string	"_LOCK_RECURSIVE_T"
.LASF102:
	.string	"_read"
.LASF87:
	.string	"_r48"
.LASF18:
	.string	"mode"
.LASF135:
	.string	"_mbrlen_state"
.LASF191:
	.string	"putchar"
.LASF76:
	.string	"_stdout"
.LASF36:
	.string	"_fpos_t"
.LASF68:
	.string	"_fns"
.LASF101:
	.string	"_cookie"
.LASF12:
	.string	"ESP_MBEDTLS_SHA512_SOFTWARE"
.LASF143:
	.string	"mbedtls_entropy_source_self_test_check_bits"
.LASF11:
	.string	"ESP_MBEDTLS_SHA512_HARDWARE"
.LASF50:
	.string	"_Bigint"
.LASF147:
	.string	"olen"
.LASF111:
	.string	"_mbstate"
.LASF58:
	.string	"__tm_wday"
.LASF124:
	.string	"_result"
.LASF54:
	.string	"__tm_hour"
.LASF162:
	.string	"mbedtls_entropy_func"
.LASF156:
	.string	"have_one_strong"
.LASF40:
	.string	"__count"
.LASF53:
	.string	"__tm_min"
.LASF163:
	.string	"count"
.LASF93:
	.string	"__sf"
.LASF160:
	.string	"mbedtls_entropy_update_manual"
.LASF118:
	.string	"_rand48"
.LASF125:
	.string	"_result_k"
.LASF8:
	.string	"long long unsigned int"
.LASF89:
	.string	"_asctime_buf"
.LASF96:
	.string	"__sFILE"
.LASF49:
	.string	"_wds"
.LASF173:
	.string	"cleanup"
.LASF171:
	.string	"buf0"
.LASF172:
	.string	"buf1"
.LASF114:
	.string	"__FILE"
.LASF10:
	.string	"ESP_MBEDTLS_SHA512_UNUSED"
.LASF109:
	.string	"_offset"
.LASF161:
	.string	"mbedtls_entropy_gather"
.LASF79:
	.string	"_emergency"
.LASF190:
	.string	"puts"
.LASF6:
	.string	"size_t"
.LASF23:
	.string	"p_source"
.LASF189:
	.string	"memcmp"
.LASF52:
	.string	"__tm_sec"
.LASF59:
	.string	"__tm_yday"
.LASF78:
	.string	"_inc"
.LASF67:
	.string	"_ind"
.LASF148:
	.string	"mbedtls_entropy_source_self_test_gather"
.LASF46:
	.string	"_next"
.LASF137:
	.string	"_mbsrtowcs_state"
.LASF7:
	.string	"__uint64_t"
.LASF166:
	.string	"path"
.LASF41:
	.string	"__value"
.LASF126:
	.string	"_p5s"
.LASF150:
	.string	"attempts"
.LASF31:
	.string	"mbedtls_entropy_context"
.LASF139:
	.string	"_wcsrtombs_state"
.LASF130:
	.string	"_mblen_state"
.LASF113:
	.string	"char"
.LASF55:
	.string	"__tm_mday"
.LASF90:
	.string	"_sig_func"
.LASF136:
	.string	"_mbrtowc_state"
.LASF157:
	.string	"mbedtls_entropy_free"
.LASF167:
	.string	"exit"
.LASF43:
	.string	"_flock_t"
.LASF178:
	.string	"mbedtls_sha512_update"
.LASF38:
	.string	"__wch"
.LASF117:
	.string	"_iobs"
.LASF192:
	.string	"__builtin_puts"
.LASF69:
	.string	"_on_exit_args_ptr"
.LASF105:
	.string	"_close"
.LASF80:
	.string	"__sdidinit"
.LASF75:
	.string	"_stdin"
.LASF84:
	.string	"_gamma_signgam"
.LASF5:
	.string	"long long int"
.LASF188:
	.string	"printf"
.LASF71:
	.string	"_base"
.LASF127:
	.string	"_freelist"
.LASF120:
	.string	"_mult"
.LASF44:
	.string	"__ULong"
.LASF138:
	.string	"_wcrtomb_state"
.LASF98:
	.string	"_file"
.LASF185:
	.string	"fseek"
.LASF175:
	.string	"memset"
.LASF195:
	.string	"C:/esp/esp-idf/components/mbedtls/library/entropy.c"
.LASF21:
	.string	"mbedtls_entropy_f_source_ptr"
.LASF83:
	.string	"__cleanup"
.LASF42:
	.string	"_mbstate_t"
.LASF123:
	.string	"_mprec"
.LASF24:
	.string	"size"
.LASF154:
	.string	"use_len"
.LASF60:
	.string	"__tm_isdst"
.LASF174:
	.string	"mbedtls_entropy_self_test"
.LASF155:
	.string	"entropy_gather_internal"
.LASF186:
	.string	"ftell"
.LASF153:
	.string	"header"
.LASF193:
	.string	"__builtin_putchar"
.LASF182:
	.string	"fopen"
.LASF164:
	.string	"done"
.LASF145:
	.string	"data"
.LASF56:
	.string	"__tm_mon"
.LASF70:
	.string	"__sbuf"
.LASF91:
	.string	"_atexit0"
.LASF66:
	.string	"_atexit"
.LASF17:
	.string	"is384"
.LASF144:
	.string	"entropy_dummy_source"
.LASF4:
	.string	"short int"
.LASF22:
	.string	"f_source"
.LASF35:
	.string	"long int"
.LASF187:
	.string	"fread"
.LASF176:
	.string	"mbedtls_hardware_poll"
.LASF48:
	.string	"_sign"
.LASF82:
	.string	"_current_locale"
.LASF180:
	.string	"mbedtls_sha512_finish"
.LASF159:
	.string	"mbedtls_entropy_add_source"
.LASF100:
	.string	"_data"
.LASF39:
	.string	"__wchb"
.LASF9:
	.string	"uint64_t"
.LASF184:
	.string	"fclose"
.LASF27:
	.string	"mbedtls_entropy_source_state"
.LASF196:
	.string	"C:\\\\esp\\\\ArkPOS2-esp\\\\build\\\\mbedtls"
.LASF57:
	.string	"__tm_year"
.LASF165:
	.string	"mbedtls_entropy_write_seed_file"
.LASF128:
	.string	"_misc_reent"
.LASF88:
	.string	"_localtime_buf"
.LASF28:
	.string	"accumulator"
.LASF30:
	.string	"source"
.LASF85:
	.string	"_cvtlen"
.LASF47:
	.string	"_maxwds"
.LASF133:
	.string	"_l64a_buf"
.LASF81:
	.string	"_current_category"
.LASF94:
	.string	"_misc"
.LASF141:
	.string	"buf_len"
.LASF108:
	.string	"_blksize"
.LASF51:
	.string	"__tm"
.LASF110:
	.string	"_lock"
.LASF19:
	.string	"sizetype"
.LASF20:
	.string	"mbedtls_sha512_context"
.LASF45:
	.string	"long unsigned int"
.LASF177:
	.string	"mbedtls_sha512"
.LASF116:
	.string	"_niobs"
.LASF37:
	.string	"wint_t"
.LASF29:
	.string	"source_count"
.LASF26:
	.string	"strong"
.LASF63:
	.string	"_dso_handle"
.LASF86:
	.string	"_cvtbuf"
.LASF3:
	.string	"unsigned char"
.LASF169:
	.string	"mbedtls_entropy_source_self_test"
.LASF151:
	.string	"entropy_update"
.LASF158:
	.string	"mbedtls_entropy_init"
.LASF134:
	.string	"_getdate_err"
.LASF121:
	.string	"_add"
.LASF15:
	.string	"state"
.LASF115:
	.string	"_glue"
.LASF142:
	.string	"unset"
.LASF25:
	.string	"threshold"
.LASF92:
	.string	"__sglue"
.LASF183:
	.string	"fwrite"
.LASF129:
	.string	"_strtok_last"
.LASF132:
	.string	"_mbtowc_state"
.LASF179:
	.string	"mbedtls_sha512_starts"
.LASF170:
	.string	"verbose"
.LASF62:
	.string	"_fnargs"
.LASF2:
	.string	"signed char"
.LASF73:
	.string	"_reent"
.LASF1:
	.string	"short unsigned int"
.LASF181:
	.string	"memcpy"
.LASF14:
	.string	"total"
.LASF64:
	.string	"_fntypes"
.LASF72:
	.string	"_size"
.LASF34:
	.string	"_off_t"
.LASF107:
	.string	"_nbuf"
.LASF149:
	.string	"entropy_len"
.LASF140:
	.string	"FILE"
.LASF112:
	.string	"_flags2"
.LASF65:
	.string	"_is_cxa"
.LASF119:
	.string	"_seed"
.LASF122:
	.string	"_rand_next"
.LASF104:
	.string	"_seek"
.LASF77:
	.string	"_stderr"
.LASF106:
	.string	"_ubuf"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-61-gab8375a) 5.2.0"
