	.file	"heap_regions.c"
	.text
.Ltext0:
	.section	.text.prvInsertBlockIntoFreeList,"ax",@progbits
	.literal_position
	.literal .LC0, xStart
	.literal .LC1, 2130706432
	.literal .LC2, 16777215
	.literal .LC3, -16777216
	.literal .LC4, pxEnd
	.align	4
	.type	prvInsertBlockIntoFreeList, @function
prvInsertBlockIntoFreeList:
.LFB7:
	.file 1 "C:/Users/nickt/git/esp-idf/components/freertos/heap_regions.c"
	.loc 1 414 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LVL1:
	.loc 1 420 0
	l32r	a9, .LC0
	j	.L2
.LVL2:
.L8:
	mov.n	a9, a8
.LVL3:
.L2:
	.loc 1 420 0 is_stmt 0 discriminator 1
	l32i.n	a8, a9, 0
	bltu	a8, a2, .L8
.LVL4:
	.loc 1 428 0 is_stmt 1
	l32i.n	a10, a9, 4
	slli	a10, a10, 8
	srai	a10, a10, 8
	add.n	a11, a9, a10
	bne	a2, a11, .L3
	.loc 1 428 0 is_stmt 0 discriminator 1
	l32i.n	a12, a2, 4
	l32i.n	a11, a9, 4
	xor	a11, a12, a11
	l32r	a12, .LC1
	bany	a11, a12, .L3
	.loc 1 430 0 is_stmt 1
	l32i.n	a2, a2, 4
.LVL5:
	slli	a2, a2, 8
	srai	a2, a2, 8
	add.n	a2, a10, a2
	l32r	a10, .LC2
	and	a2, a2, a10
	l32i.n	a11, a9, 4
	l32r	a10, .LC3
	and	a10, a11, a10
	or	a2, a10, a2
	s32i.n	a2, a9, 4
.LVL6:
	.loc 1 431 0
	mov.n	a2, a9
.LVL7:
.L3:
	.loc 1 441 0
	l32i.n	a10, a2, 4
	slli	a10, a10, 8
	srai	a10, a10, 8
	add.n	a11, a2, a10
	bne	a8, a11, .L4
	.loc 1 441 0 is_stmt 0 discriminator 1
	l32i.n	a12, a2, 4
	l32i.n	a11, a8, 4
	xor	a11, a12, a11
	l32r	a12, .LC1
	bany	a11, a12, .L4
	.loc 1 443 0 is_stmt 1
	l32r	a11, .LC4
	l32i.n	a11, a11, 0
	beq	a8, a11, .L5
	.loc 1 446 0
	l32i.n	a8, a8, 4
	slli	a8, a8, 8
	srai	a8, a8, 8
	add.n	a8, a10, a8
	l32r	a10, .LC2
	and	a8, a8, a10
	l32i.n	a11, a2, 4
	l32r	a10, .LC3
	and	a10, a11, a10
	or	a8, a10, a8
	s32i.n	a8, a2, 4
	.loc 1 447 0
	l32i.n	a8, a9, 0
	l32i.n	a8, a8, 0
	s32i.n	a8, a2, 0
	j	.L6
.L5:
	.loc 1 451 0
	s32i.n	a11, a2, 0
	j	.L6
.L4:
	.loc 1 456 0
	s32i.n	a8, a2, 0
.L6:
	.loc 1 463 0
	beq	a2, a9, .L1
	.loc 1 465 0
	s32i.n	a2, a9, 0
.L1:
	retw.n
.LFE7:
	.size	prvInsertBlockIntoFreeList, .-prvInsertBlockIntoFreeList
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC8:
	.string	"C:/Users/nickt/git/esp-idf/components/freertos/heap_regions.c"
	.align	4
.LC10:
	.string	"%s:%d (%s)- assert failed!\n"
	.section	.text.pvPortMallocTagged,"ax",@progbits
	.literal_position
	.literal .LC5, xStart
	.literal .LC6, pxEnd
	.literal .LC7, __FUNCTION__$3231
	.literal .LC9, .LC8
	.literal .LC11, .LC10
	.literal .LC12, xMallocMutex
	.literal .LC13, xFreeBytesRemaining
	.literal .LC14, 16777215
	.literal .LC15, -16777216
	.literal .LC16, -2130706433
	.literal .LC17, xMinimumEverFreeBytesRemaining
	.literal .LC18, -2147483648
	.align	4
	.global	pvPortMallocTagged
	.type	pvPortMallocTagged, @function
pvPortMallocTagged:
.LFB3:
	.loc 1 192 0
.LVL8:
	entry	sp, 32
.LCFI1:
	mov.n	a5, a2
.LVL9:
	.loc 1 198 0
	l32r	a2, .LC6
.LVL10:
	l32i.n	a2, a2, 0
	bnez.n	a2, .L10
	.loc 1 198 0 is_stmt 0 discriminator 1
	l32r	a13, .LC7
	movi	a12, 0xc6
	l32r	a11, .LC9
	l32r	a10, .LC11
	call8	ets_printf
.LVL11:
	call8	abort
.LVL12:
.L10:
	.loc 1 200 0 is_stmt 1
	l32r	a10, .LC12
	call8	vTaskEnterCritical
.LVL13:
	.loc 1 204 0
	beqz.n	a5, .L11
	.loc 1 206 0
	addi.n	a5, a5, 8
.LVL14:
	.loc 1 210 0
	extui	a2, a5, 0, 2
	beqz.n	a2, .L11
	.loc 1 213 0
	movi.n	a2, -4
	and	a5, a5, a2
.LVL15:
	addi.n	a5, a5, 4
.LVL16:
.L11:
	.loc 1 225 0
	beqz.n	a5, .L18
	.loc 1 225 0 is_stmt 0 discriminator 1
	l32r	a2, .LC13
	addx4	a2, a3, a2
	l32i.n	a2, a2, 0
	bltu	a2, a5, .L19
.LVL17:
	.loc 1 230 0 is_stmt 1
	l32r	a9, .LC5
	l32i.n	a4, a9, 0
.LVL18:
	.loc 1 231 0
	j	.L15
.LVL19:
.L20:
	.loc 1 241 0
	mov.n	a9, a4
.LVL20:
	.loc 1 242 0
	mov.n	a4, a8
.LVL21:
.L15:
	.loc 1 231 0
	l32i.n	a8, a4, 4
	slli	a8, a8, 1
	srai	a8, a8, 25
	bne	a3, a8, .L13
	.loc 1 231 0 is_stmt 0 discriminator 2
	l32i.n	a8, a4, 4
	slli	a8, a8, 8
	srai	a8, a8, 8
	bgeu	a8, a5, .L14
.L13:
	.loc 1 231 0 discriminator 3
	l32i.n	a8, a4, 0
	bnez.n	a8, .L20
.L14:
	.loc 1 247 0 is_stmt 1
	l32r	a2, .LC6
	l32i.n	a2, a2, 0
	beq	a4, a2, .L21
	.loc 1 251 0
	l32i.n	a2, a9, 0
	addi.n	a2, a2, 8
.LVL22:
	.loc 1 255 0
	l32i.n	a8, a4, 0
	s32i.n	a8, a9, 0
	.loc 1 260 0
	l32i.n	a8, a4, 4
	slli	a8, a8, 8
	srai	a8, a8, 8
	sub	a8, a8, a5
	movi.n	a9, 0x10
.LVL23:
	bgeu	a9, a8, .L16
	.loc 1 266 0
	add.n	a10, a4, a5
.LVL24:
	.loc 1 270 0
	l32r	a9, .LC14
	and	a8, a8, a9
	l32i.n	a11, a10, 4
	l32r	a12, .LC15
	and	a11, a11, a12
	or	a8, a11, a8
	.loc 1 271 0
	extui	a11, a3, 0, 7
	slli	a11, a11, 24
	l32r	a13, .LC16
	and	a8, a8, a13
	or	a8, a8, a11
	s32i.n	a8, a10, 4
	.loc 1 272 0
	and	a9, a5, a9
	l32i.n	a5, a4, 4
.LVL25:
	and	a5, a5, a12
	or	a5, a5, a9
	s32i.n	a5, a4, 4
	.loc 1 282 0
	call8	prvInsertBlockIntoFreeList
.LVL26:
.L16:
	.loc 1 289 0
	l32i.n	a8, a4, 4
	slli	a8, a8, 8
	srai	a8, a8, 8
	slli	a5, a3, 2
	l32r	a10, .LC13
	add.n	a10, a10, a5
	l32i.n	a9, a10, 0
	sub	a8, a9, a8
	s32i.n	a8, a10, 0
	.loc 1 291 0
	l32r	a9, .LC17
	add.n	a5, a9, a5
	l32i.n	a5, a5, 0
	bgeu	a8, a5, .L17
	.loc 1 293 0
	addx4	a3, a3, a9
.LVL27:
	s32i.n	a8, a3, 0
.L17:
	.loc 1 302 0
	l32i.n	a5, a4, 4
	l32r	a3, .LC18
	or	a3, a5, a3
	s32i.n	a3, a4, 4
	.loc 1 303 0
	movi.n	a3, 0
	s32i.n	a3, a4, 0
	j	.L12
.LVL28:
.L18:
	.loc 1 194 0
	movi.n	a2, 0
	j	.L12
.L19:
	movi.n	a2, 0
	j	.L12
.LVL29:
.L21:
	movi.n	a2, 0
.LVL30:
.L12:
	.loc 1 324 0
	l32r	a10, .LC12
	call8	vTaskExitCritical
.LVL31:
	.loc 1 341 0
	retw.n
.LFE3:
	.size	pvPortMallocTagged, .-pvPortMallocTagged
	.section	.text.vPortFreeTagged,"ax",@progbits
	.literal_position
	.literal .LC19, -2147483648
	.literal .LC20, __FUNCTION__$3240
	.literal .LC21, .LC8
	.literal .LC22, .LC10
	.literal .LC23, 2147483647
	.literal .LC24, xMallocMutex
	.literal .LC25, xFreeBytesRemaining
	.align	4
	.global	vPortFreeTagged
	.type	vPortFreeTagged, @function
vPortFreeTagged:
.LFB4:
	.loc 1 345 0
.LVL32:
	entry	sp, 32
.LCFI2:
.LVL33:
	.loc 1 349 0
	beqz.n	a2, .L22
	.loc 1 353 0
	addi	a3, a2, -8
.LVL34:
	.loc 1 368 0
	l32i.n	a9, a3, 4
	l32r	a8, .LC19
	and	a8, a9, a8
	bnez.n	a8, .L24
	.loc 1 368 0 is_stmt 0 discriminator 1
	l32r	a13, .LC20
	movi	a12, 0x170
	l32r	a11, .LC21
	l32r	a10, .LC22
	call8	ets_printf
.LVL35:
	call8	abort
.LVL36:
.L24:
	.loc 1 369 0 is_stmt 1
	addi	a9, a2, -8
	l32i.n	a9, a9, 0
	beqz.n	a9, .L25
	.loc 1 369 0 discriminator 1
	l32r	a13, .LC20
	movi	a12, 0x171
	l32r	a11, .LC21
	l32r	a10, .LC22
	call8	ets_printf
.LVL37:
	call8	abort
.LVL38:
.L25:
	.loc 1 371 0
	beqz.n	a8, .L22
	.loc 1 373 0
	bnez.n	a9, .L22
	.loc 1 377 0
	addi	a2, a2, -8
.LVL39:
	l32i.n	a8, a2, 4
	l32r	a4, .LC23
	and	a4, a8, a4
	s32i.n	a4, a2, 4
	.loc 1 379 0
	l32r	a4, .LC24
	mov.n	a10, a4
	call8	vTaskEnterCritical
.LVL40:
	.loc 1 382 0
	l32i.n	a2, a2, 4
.LVL41:
	slli	a8, a2, 1
	srai	a8, a8, 25
	slli	a2, a2, 8
	srai	a2, a2, 8
	l32r	a9, .LC25
	addx4	a8, a8, a9
	l32i.n	a9, a8, 0
	add.n	a2, a9, a2
	s32i.n	a2, a8, 0
	.loc 1 384 0
	mov.n	a10, a3
	call8	prvInsertBlockIntoFreeList
.LVL42:
	.loc 1 386 0
	mov.n	a10, a4
	call8	vTaskExitCritical
.LVL43:
.L22:
	retw.n
.LFE4:
	.size	vPortFreeTagged, .-vPortFreeTagged
	.section	.text.xPortGetFreeHeapSizeTagged,"ax",@progbits
	.literal_position
	.literal .LC26, xFreeBytesRemaining
	.align	4
	.global	xPortGetFreeHeapSizeTagged
	.type	xPortGetFreeHeapSizeTagged, @function
xPortGetFreeHeapSizeTagged:
.LFB5:
	.loc 1 402 0
.LVL44:
	entry	sp, 32
.LCFI3:
	.loc 1 403 0
	l32r	a8, .LC26
	addx4	a2, a2, a8
.LVL45:
	.loc 1 404 0
	l32i.n	a2, a2, 0
	retw.n
.LFE5:
	.size	xPortGetFreeHeapSizeTagged, .-xPortGetFreeHeapSizeTagged
	.section	.text.xPortGetMinimumEverFreeHeapSizeTagged,"ax",@progbits
	.literal_position
	.literal .LC27, xMinimumEverFreeBytesRemaining
	.align	4
	.global	xPortGetMinimumEverFreeHeapSizeTagged
	.type	xPortGetMinimumEverFreeHeapSizeTagged, @function
xPortGetMinimumEverFreeHeapSizeTagged:
.LFB6:
	.loc 1 408 0
.LVL46:
	entry	sp, 32
.LCFI4:
	.loc 1 409 0
	l32r	a8, .LC27
	addx4	a2, a2, a8
.LVL47:
	.loc 1 410 0
	l32i.n	a2, a2, 0
	retw.n
.LFE6:
	.size	xPortGetMinimumEverFreeHeapSizeTagged, .-xPortGetMinimumEverFreeHeapSizeTagged
	.section	.text.vPortDefineHeapRegionsTagged,"ax",@progbits
	.literal_position
	.literal .LC28, pxEnd
	.literal .LC29, __FUNCTION__$3267
	.literal .LC30, .LC8
	.literal .LC31, .LC10
	.literal .LC32, xMallocMutex
	.literal .LC33, 16777215
	.literal .LC34, xStart
	.literal .LC35, -16777216
	.literal .LC36, 2130706432
	.literal .LC37, -2130706433
	.literal .LC38, xMinimumEverFreeBytesRemaining
	.literal .LC39, xFreeBytesRemaining
	.align	4
	.global	vPortDefineHeapRegionsTagged
	.type	vPortDefineHeapRegionsTagged, @function
vPortDefineHeapRegionsTagged:
.LFB8:
	.loc 1 475 0
.LVL48:
	entry	sp, 32
.LCFI5:
.LVL49:
	.loc 1 484 0
	l32r	a3, .LC28
	l32i.n	a3, a3, 0
	beqz.n	a3, .L29
	.loc 1 484 0 discriminator 1
	l32r	a13, .LC29
	movi	a12, 0x1e4
	l32r	a11, .LC30
	l32r	a10, .LC31
	call8	ets_printf
.LVL50:
	call8	abort
.LVL51:
.L29:
	.loc 1 486 0
	l32r	a10, .LC32
	call8	vPortCPUInitializeMutex
.LVL52:
	.loc 1 488 0
	mov.n	a10, a2
	.loc 1 479 0
	movi.n	a11, 0
	mov.n	a12, a11
	.loc 1 478 0
	mov.n	a13, a11
	.loc 1 490 0
	j	.L30
.LVL53:
.L40:
	.loc 1 492 0
	l32i.n	a3, a10, 8
	bnei	a3, -1, .L31
	.loc 1 494 0
	addi.n	a11, a11, 1
.LVL54:
	.loc 1 495 0
	slli	a10, a11, 4
.LVL55:
	add.n	a10, a2, a10
.LVL56:
	.loc 1 496 0
	j	.L30
.L31:
	.loc 1 499 0
	movi.n	a4, 0xf
	bge	a4, a3, .L33
	.loc 1 499 0 is_stmt 0 discriminator 1
	l32r	a13, .LC29
.LVL57:
	movi	a12, 0x1f3
.LVL58:
	l32r	a11, .LC30
.LVL59:
	l32r	a10, .LC31
.LVL60:
	call8	ets_printf
.LVL61:
	call8	abort
.LVL62:
.L33:
	.loc 1 500 0 is_stmt 1
	l32r	a3, .LC33
	bgeu	a3, a9, .L34
	.loc 1 500 0 is_stmt 0 discriminator 1
	l32r	a13, .LC29
.LVL63:
	movi	a12, 0x1f4
.LVL64:
	l32r	a11, .LC30
.LVL65:
	l32r	a10, .LC31
.LVL66:
	call8	ets_printf
.LVL67:
	call8	abort
.LVL68:
.L34:
	.loc 1 504 0 is_stmt 1
	l32i.n	a8, a10, 0
.LVL69:
	.loc 1 505 0
	extui	a3, a8, 0, 2
	beqz.n	a3, .L35
	.loc 1 507 0
	addi.n	a4, a8, 3
.LVL70:
	.loc 1 508 0
	movi.n	a3, -4
	and	a3, a4, a3
.LVL71:
	.loc 1 511 0
	sub	a8, a8, a3
	add.n	a9, a9, a8
.LVL72:
	.loc 1 508 0
	mov.n	a8, a3
.LVL73:
.L35:
	.loc 1 514 0
	mov.n	a14, a8
.LVL74:
	.loc 1 517 0
	bnez.n	a12, .L36
	.loc 1 521 0
	l32r	a3, .LC34
	s32i.n	a8, a3, 0
	.loc 1 522 0
	l32i.n	a5, a3, 4
	l32r	a4, .LC35
	and	a4, a5, a4
	s32i.n	a4, a3, 4
	j	.L37
.L36:
	.loc 1 528 0
	l32r	a3, .LC28
	l32i.n	a3, a3, 0
	bnez.n	a3, .L38
	.loc 1 528 0 discriminator 1
	l32r	a13, .LC29
.LVL75:
	movi	a12, 0x210
.LVL76:
	l32r	a11, .LC30
.LVL77:
	l32r	a10, .LC31
.LVL78:
	call8	ets_printf
.LVL79:
	call8	abort
.LVL80:
.L38:
	.loc 1 531 0
	bltu	a3, a8, .L37
	.loc 1 531 0 is_stmt 0 discriminator 1
	l32r	a13, .LC29
.LVL81:
	movi	a12, 0x213
.LVL82:
	l32r	a11, .LC30
.LVL83:
	l32r	a10, .LC31
.LVL84:
	call8	ets_printf
.LVL85:
	call8	abort
.LVL86:
.L37:
	.loc 1 536 0 is_stmt 1
	l32r	a3, .LC28
	l32i.n	a15, a3, 0
.LVL87:
	.loc 1 540 0
	add.n	a9, a9, a8
.LVL88:
	.loc 1 541 0
	addi	a9, a9, -8
.LVL89:
	.loc 1 542 0
	movi.n	a4, -4
	and	a9, a9, a4
.LVL90:
	.loc 1 543 0
	s32i.n	a9, a3, 0
	.loc 1 544 0
	l32i.n	a4, a9, 4
	l32r	a3, .LC35
	and	a5, a4, a3
	.loc 1 545 0
	movi.n	a4, 0
	s32i.n	a4, a9, 0
	.loc 1 546 0
	l32r	a4, .LC36
	or	a4, a5, a4
	s32i.n	a4, a9, 4
.LVL91:
	.loc 1 552 0
	sub	a8, a9, a8
.LVL92:
	l32r	a4, .LC33
	and	a8, a8, a4
	l32i.n	a4, a14, 4
	and	a3, a4, a3
	or	a8, a3, a8
	s32i.n	a8, a14, 4
	.loc 1 553 0
	s32i.n	a9, a14, 0
	.loc 1 554 0
	l8ui	a9, a10, 8
.LVL93:
	extui	a9, a9, 0, 7
	slli	a9, a9, 24
	l32r	a3, .LC37
	and	a8, a8, a3
	or	a8, a8, a9
	s32i.n	a8, a14, 4
	.loc 1 558 0
	beqz.n	a15, .L39
	.loc 1 560 0
	s32i.n	a14, a15, 0
.LVL94:
.L39:
	.loc 1 563 0
	l32i.n	a8, a14, 4
	slli	a14, a8, 8
.LVL95:
	srai	a14, a14, 8
	add.n	a13, a13, a14
.LVL96:
	.loc 1 564 0
	l32i.n	a9, a10, 8
	slli	a9, a9, 2
	l32r	a10, .LC38
.LVL97:
	add.n	a10, a10, a9
	l32i.n	a3, a10, 0
	add.n	a14, a3, a14
	s32i.n	a14, a10, 0
	.loc 1 565 0
	slli	a8, a8, 8
	srai	a8, a8, 8
	l32r	a3, .LC39
	add.n	a9, a3, a9
	l32i.n	a3, a9, 0
	add.n	a8, a3, a8
	s32i.n	a8, a9, 0
	.loc 1 568 0
	addi.n	a12, a12, 1
.LVL98:
	.loc 1 569 0
	addi.n	a11, a11, 1
.LVL99:
	.loc 1 570 0
	slli	a10, a11, 4
	add.n	a10, a2, a10
.LVL100:
.L30:
	.loc 1 490 0
	l32i.n	a9, a10, 4
	bnez.n	a9, .L40
	.loc 1 581 0
	bnez.n	a13, .L28
	.loc 1 581 0 is_stmt 0 discriminator 1
	l32r	a13, .LC29
.LVL101:
	movi	a12, 0x245
.LVL102:
	l32r	a11, .LC30
.LVL103:
	l32r	a10, .LC31
.LVL104:
	call8	ets_printf
.LVL105:
	call8	abort
.LVL106:
.L28:
	retw.n
.LFE8:
	.size	vPortDefineHeapRegionsTagged, .-vPortDefineHeapRegionsTagged
	.section	.rodata.__FUNCTION__$3267,"a",@progbits
	.align	4
	.type	__FUNCTION__$3267, @object
	.size	__FUNCTION__$3267, 29
__FUNCTION__$3267:
	.string	"vPortDefineHeapRegionsTagged"
	.section	.rodata.__FUNCTION__$3240,"a",@progbits
	.align	4
	.type	__FUNCTION__$3240, @object
	.size	__FUNCTION__$3240, 16
__FUNCTION__$3240:
	.string	"vPortFreeTagged"
	.section	.rodata.__FUNCTION__$3231,"a",@progbits
	.align	4
	.type	__FUNCTION__$3231, @object
	.size	__FUNCTION__$3231, 19
__FUNCTION__$3231:
	.string	"pvPortMallocTagged"
	.section	.bss.xMinimumEverFreeBytesRemaining,"aw",@nobits
	.align	4
	.type	xMinimumEverFreeBytesRemaining, @object
	.size	xMinimumEverFreeBytesRemaining, 64
xMinimumEverFreeBytesRemaining:
	.zero	64
	.section	.bss.xFreeBytesRemaining,"aw",@nobits
	.align	4
	.type	xFreeBytesRemaining, @object
	.size	xFreeBytesRemaining, 64
xFreeBytesRemaining:
	.zero	64
	.section	.bss.pxEnd,"aw",@nobits
	.align	4
	.type	pxEnd, @object
	.size	pxEnd, 4
pxEnd:
	.zero	4
	.section	.bss.xStart,"aw",@nobits
	.align	4
	.type	xStart, @object
	.size	xStart, 8
xStart:
	.zero	8
	.section	.data.xMallocMutex,"aw",@progbits
	.align	4
	.type	xMallocMutex, @object
	.size	xMallocMutex, 4
xMallocMutex:
	.word	-1287651329
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
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI0-.LFB7
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI1-.LFB3
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI2-.LFB4
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI3-.LFB5
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI4-.LFB6
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI5-.LFB8
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
	.text
.Letext0:
	.file 2 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 3 "C:/Users/nickt/git/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "C:/Users/nickt/git/esp-idf/components/newlib/include/stdint.h"
	.file 5 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/portmacro.h"
	.file 6 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/heap_regions.h"
	.file 7 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/ets_sys.h"
	.file 8 "C:/Users/nickt/git/esp-idf/components/newlib/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x73d
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF64
	.byte	0xc
	.4byte	.LASF65
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF3
	.byte	0x2
	.byte	0xd8
	.4byte	0x2c
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
	.byte	0x3
	.byte	0x12
	.4byte	0x53
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
	.uleb128 0x2
	.4byte	.LASF14
	.byte	0x4
	.byte	0x15
	.4byte	0x48
	.uleb128 0x2
	.4byte	.LASF15
	.byte	0x4
	.byte	0x2d
	.4byte	0x61
	.uleb128 0x2
	.4byte	.LASF16
	.byte	0x5
	.byte	0x6c
	.4byte	0x3a
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.byte	0x80
	.4byte	0xce
	.uleb128 0x7
	.string	"mux"
	.byte	0x5
	.byte	0x81
	.4byte	0xce
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0xa3
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x5
	.byte	0x86
	.4byte	0xb9
	.uleb128 0x9
	.byte	0x4
	.4byte	0x98
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0x10
	.byte	0x6
	.byte	0x19
	.4byte	0x121
	.uleb128 0xb
	.4byte	.LASF18
	.byte	0x6
	.byte	0x1b
	.4byte	0xde
	.byte	0
	.uleb128 0xb
	.4byte	.LASF19
	.byte	0x6
	.byte	0x1c
	.4byte	0x21
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF20
	.byte	0x6
	.byte	0x1d
	.4byte	0xae
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF21
	.byte	0x6
	.byte	0x1e
	.4byte	0xa3
	.byte	0xc
	.byte	0
	.uleb128 0x2
	.4byte	.LASF22
	.byte	0x6
	.byte	0x1f
	.4byte	0xe4
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0x8
	.byte	0x1
	.byte	0x99
	.4byte	0x172
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x1
	.byte	0x9b
	.4byte	0x172
	.byte	0
	.uleb128 0xc
	.4byte	.LASF26
	.byte	0x1
	.byte	0x9c
	.4byte	0x3a
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF20
	.byte	0x1
	.byte	0x9d
	.4byte	0x3a
	.byte	0x4
	.byte	0x7
	.byte	0x1
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF27
	.byte	0x1
	.byte	0x9e
	.4byte	0x3a
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x12c
	.uleb128 0x2
	.4byte	.LASF28
	.byte	0x1
	.byte	0x9f
	.4byte	0x12c
	.uleb128 0xd
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x19d
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1ca
	.uleb128 0xe
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x19d
	.4byte	0x1ca
	.4byte	.LLST0
	.uleb128 0xf
	.4byte	.LASF29
	.byte	0x1
	.2byte	0x19f
	.4byte	0x1ca
	.4byte	.LLST1
	.uleb128 0x10
	.string	"puc"
	.byte	0x1
	.2byte	0x1a0
	.4byte	0xde
	.4byte	.LLST2
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x178
	.uleb128 0x11
	.4byte	.LASF38
	.byte	0x1
	.byte	0xbf
	.4byte	0x88
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2be
	.uleb128 0x12
	.4byte	.LASF31
	.byte	0x1
	.byte	0xbf
	.4byte	0x21
	.4byte	.LLST3
	.uleb128 0x13
	.string	"tag"
	.byte	0x1
	.byte	0xbf
	.4byte	0xae
	.4byte	.LLST4
	.uleb128 0x14
	.4byte	.LASF32
	.byte	0x1
	.byte	0xc1
	.4byte	0x1ca
	.4byte	.LLST5
	.uleb128 0x14
	.4byte	.LASF33
	.byte	0x1
	.byte	0xc1
	.4byte	0x1ca
	.4byte	.LLST6
	.uleb128 0x14
	.4byte	.LASF34
	.byte	0x1
	.byte	0xc1
	.4byte	0x1ca
	.4byte	.LLST7
	.uleb128 0x14
	.4byte	.LASF35
	.byte	0x1
	.byte	0xc2
	.4byte	0x88
	.4byte	.LLST8
	.uleb128 0x15
	.4byte	.LASF37
	.4byte	0x2ce
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$3231
	.uleb128 0x16
	.4byte	.LVL11
	.4byte	0x709
	.4byte	0x281
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0xc6
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$3231
	.byte	0
	.uleb128 0x18
	.4byte	.LVL12
	.4byte	0x714
	.uleb128 0x16
	.4byte	.LVL13
	.4byte	0x71f
	.4byte	0x2a1
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	xMallocMutex
	.byte	0
	.uleb128 0x18
	.4byte	.LVL26
	.4byte	0x183
	.uleb128 0x19
	.4byte	.LVL31
	.4byte	0x72a
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	xMallocMutex
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	0x91
	.4byte	0x2ce
	.uleb128 0x1b
	.4byte	0x81
	.byte	0x12
	.byte	0
	.uleb128 0x1c
	.4byte	0x2be
	.uleb128 0x1d
	.4byte	.LASF41
	.byte	0x1
	.2byte	0x158
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3d2
	.uleb128 0x1e
	.string	"pv"
	.byte	0x1
	.2byte	0x158
	.4byte	0x88
	.4byte	.LLST9
	.uleb128 0x10
	.string	"puc"
	.byte	0x1
	.2byte	0x15a
	.4byte	0xde
	.4byte	.LLST10
	.uleb128 0xf
	.4byte	.LASF36
	.byte	0x1
	.2byte	0x15b
	.4byte	0x1ca
	.4byte	.LLST11
	.uleb128 0x15
	.4byte	.LASF37
	.4byte	0x3e2
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$3240
	.uleb128 0x16
	.4byte	.LVL35
	.4byte	0x709
	.4byte	0x357
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x170
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$3240
	.byte	0
	.uleb128 0x18
	.4byte	.LVL36
	.4byte	0x714
	.uleb128 0x16
	.4byte	.LVL37
	.4byte	0x709
	.4byte	0x390
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x171
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$3240
	.byte	0
	.uleb128 0x18
	.4byte	.LVL38
	.4byte	0x714
	.uleb128 0x16
	.4byte	.LVL40
	.4byte	0x71f
	.4byte	0x3ad
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL42
	.4byte	0x183
	.4byte	0x3c1
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL43
	.4byte	0x72a
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	0x91
	.4byte	0x3e2
	.uleb128 0x1b
	.4byte	0x81
	.byte	0xf
	.byte	0
	.uleb128 0x1c
	.4byte	0x3d2
	.uleb128 0x1f
	.4byte	.LASF39
	.byte	0x1
	.2byte	0x191
	.4byte	0x21
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x412
	.uleb128 0x1e
	.string	"tag"
	.byte	0x1
	.2byte	0x191
	.4byte	0xae
	.4byte	.LLST12
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF40
	.byte	0x1
	.2byte	0x197
	.4byte	0x21
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x43d
	.uleb128 0x1e
	.string	"tag"
	.byte	0x1
	.2byte	0x197
	.4byte	0xae
	.4byte	.LLST13
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF42
	.byte	0x1
	.2byte	0x1da
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x66e
	.uleb128 0x20
	.4byte	.LASF43
	.byte	0x1
	.2byte	0x1da
	.4byte	0x679
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xf
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x1dc
	.4byte	0x1ca
	.4byte	.LLST14
	.uleb128 0xf
	.4byte	.LASF45
	.byte	0x1
	.2byte	0x1dc
	.4byte	0x1ca
	.4byte	.LLST15
	.uleb128 0xf
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x1dd
	.4byte	0xde
	.4byte	.LLST16
	.uleb128 0xf
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x1de
	.4byte	0x21
	.4byte	.LLST17
	.uleb128 0xf
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x1de
	.4byte	0x21
	.4byte	.LLST18
	.uleb128 0xf
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x1df
	.4byte	0xae
	.4byte	.LLST19
	.uleb128 0xf
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x1df
	.4byte	0xae
	.4byte	.LLST20
	.uleb128 0xf
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x1e0
	.4byte	0xa3
	.4byte	.LLST21
	.uleb128 0xf
	.4byte	.LASF52
	.byte	0x1
	.2byte	0x1e1
	.4byte	0x66e
	.4byte	.LLST22
	.uleb128 0x15
	.4byte	.LASF37
	.4byte	0x68e
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$3267
	.uleb128 0x16
	.4byte	.LVL50
	.4byte	0x709
	.4byte	0x530
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1e4
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$3267
	.byte	0
	.uleb128 0x18
	.4byte	.LVL51
	.4byte	0x714
	.uleb128 0x16
	.4byte	.LVL52
	.4byte	0x735
	.4byte	0x550
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	xMallocMutex
	.byte	0
	.uleb128 0x16
	.4byte	.LVL61
	.4byte	0x709
	.4byte	0x580
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1f3
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$3267
	.byte	0
	.uleb128 0x18
	.4byte	.LVL62
	.4byte	0x714
	.uleb128 0x16
	.4byte	.LVL67
	.4byte	0x709
	.4byte	0x5b9
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1f4
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$3267
	.byte	0
	.uleb128 0x18
	.4byte	.LVL68
	.4byte	0x714
	.uleb128 0x16
	.4byte	.LVL79
	.4byte	0x709
	.4byte	0x5f2
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x210
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$3267
	.byte	0
	.uleb128 0x18
	.4byte	.LVL80
	.4byte	0x714
	.uleb128 0x16
	.4byte	.LVL85
	.4byte	0x709
	.4byte	0x62b
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x213
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$3267
	.byte	0
	.uleb128 0x18
	.4byte	.LVL86
	.4byte	0x714
	.uleb128 0x16
	.4byte	.LVL105
	.4byte	0x709
	.4byte	0x664
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x245
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$3267
	.byte	0
	.uleb128 0x18
	.4byte	.LVL106
	.4byte	0x714
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x674
	.uleb128 0x1c
	.4byte	0x121
	.uleb128 0x1c
	.4byte	0x66e
	.uleb128 0x1a
	.4byte	0x91
	.4byte	0x68e
	.uleb128 0x1b
	.4byte	0x81
	.byte	0x1c
	.byte	0
	.uleb128 0x1c
	.4byte	0x67e
	.uleb128 0x21
	.4byte	.LASF53
	.byte	0x1
	.byte	0xa2
	.4byte	0xd3
	.uleb128 0x5
	.byte	0x3
	.4byte	xMallocMutex
	.uleb128 0x22
	.4byte	.LASF54
	.byte	0x1
	.byte	0xb2
	.4byte	0x6b0
	.byte	0x8
	.uleb128 0x1c
	.4byte	0xa3
	.uleb128 0x21
	.4byte	.LASF55
	.byte	0x1
	.byte	0xb5
	.4byte	0x178
	.uleb128 0x5
	.byte	0x3
	.4byte	xStart
	.uleb128 0x21
	.4byte	.LASF56
	.byte	0x1
	.byte	0xb5
	.4byte	0x1ca
	.uleb128 0x5
	.byte	0x3
	.4byte	pxEnd
	.uleb128 0x1a
	.4byte	0x21
	.4byte	0x6e7
	.uleb128 0x1b
	.4byte	0x81
	.byte	0xf
	.byte	0
	.uleb128 0x21
	.4byte	.LASF57
	.byte	0x1
	.byte	0xb9
	.4byte	0x6d7
	.uleb128 0x5
	.byte	0x3
	.4byte	xFreeBytesRemaining
	.uleb128 0x21
	.4byte	.LASF58
	.byte	0x1
	.byte	0xba
	.4byte	0x6d7
	.uleb128 0x5
	.byte	0x3
	.4byte	xMinimumEverFreeBytesRemaining
	.uleb128 0x23
	.4byte	.LASF59
	.4byte	.LASF59
	.byte	0x7
	.byte	0xde
	.uleb128 0x23
	.4byte	.LASF60
	.4byte	.LASF60
	.byte	0x8
	.byte	0x47
	.uleb128 0x23
	.4byte	.LASF61
	.4byte	.LASF61
	.byte	0x5
	.byte	0xd6
	.uleb128 0x23
	.4byte	.LASF62
	.4byte	.LASF62
	.byte	0x5
	.byte	0xd5
	.uleb128 0x23
	.4byte	.LASF63
	.4byte	.LASF63
	.byte	0x5
	.byte	0xca
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
	.uleb128 0x8
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL7
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x6
	.byte	0x3
	.4byte	xStart
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL4
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL7
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL10
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x23
	.uleb128 0x8
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL28
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL8
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL30
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL18
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL17
	.4byte	.LVL19
	.2byte	0x6
	.byte	0x3
	.4byte	xStart
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL24
	.4byte	.LVL26-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL9
	.4byte	.LVL22
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL28
	.4byte	.LVL30
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL32
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL39
	.4byte	.LVL41
	.2byte	0x3
	.byte	0x72
	.sleb128 8
	.byte	0x9f
	.4byte	.LVL41
	.4byte	.LVL43
	.2byte	0x3
	.byte	0x73
	.sleb128 8
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL34
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL34
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL45
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL47
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL49
	.4byte	.LVL53
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL91
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL92
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL87
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL74
	.4byte	.LVL79-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL80
	.4byte	.LVL85-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL86
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL92
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL68
	.4byte	.LVL79-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL80
	.4byte	.LVL85-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL86
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL49
	.4byte	.LVL53
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL68
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL80
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL86
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL106
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL49
	.4byte	.LVL53
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL62
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL68
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL80
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL86
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL106
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL49
	.4byte	.LVL53
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL62
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL68
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL80
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL86
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL106
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL69
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL71
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL73
	.4byte	.LVL79-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL80
	.4byte	.LVL85-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL86
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL88
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL93
	.4byte	.LVL94
	.2byte	0x2
	.byte	0x7e
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL53
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL56
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL62
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL68
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL80
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL86
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL100
	.4byte	.LVL104
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL106
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x5a
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
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF33:
	.string	"pxPreviousBlock"
.LASF46:
	.string	"pucAlignedHeap"
.LASF58:
	.string	"xMinimumEverFreeBytesRemaining"
.LASF42:
	.string	"vPortDefineHeapRegionsTagged"
.LASF25:
	.string	"pxNextFreeBlock"
.LASF32:
	.string	"pxBlock"
.LASF3:
	.string	"size_t"
.LASF11:
	.string	"sizetype"
.LASF7:
	.string	"__uint32_t"
.LASF45:
	.string	"pxPreviousFreeBlock"
.LASF56:
	.string	"pxEnd"
.LASF49:
	.string	"xDefinedRegions"
.LASF23:
	.string	"HeapRegionTagged"
.LASF6:
	.string	"short int"
.LASF66:
	.string	"prvInsertBlockIntoFreeList"
.LASF21:
	.string	"xExecAddr"
.LASF17:
	.string	"portMUX_TYPE"
.LASF24:
	.string	"A_BLOCK_LINK"
.LASF61:
	.string	"vTaskEnterCritical"
.LASF43:
	.string	"pxHeapRegions"
.LASF41:
	.string	"vPortFreeTagged"
.LASF8:
	.string	"long long int"
.LASF63:
	.string	"vPortCPUInitializeMutex"
.LASF40:
	.string	"xPortGetMinimumEverFreeHeapSizeTagged"
.LASF10:
	.string	"long int"
.LASF37:
	.string	"__FUNCTION__"
.LASF34:
	.string	"pxNewBlockLink"
.LASF35:
	.string	"pvReturn"
.LASF18:
	.string	"pucStartAddress"
.LASF28:
	.string	"BlockLink_t"
.LASF5:
	.string	"unsigned char"
.LASF60:
	.string	"abort"
.LASF27:
	.string	"xAllocated"
.LASF2:
	.string	"signed char"
.LASF9:
	.string	"long long unsigned int"
.LASF15:
	.string	"uint32_t"
.LASF0:
	.string	"unsigned int"
.LASF16:
	.string	"BaseType_t"
.LASF47:
	.string	"xTotalRegionSize"
.LASF65:
	.string	"C:/Users/nickt/git/esp-idf/components/freertos/heap_regions.c"
.LASF57:
	.string	"xFreeBytesRemaining"
.LASF59:
	.string	"ets_printf"
.LASF51:
	.string	"ulAddress"
.LASF1:
	.string	"short unsigned int"
.LASF29:
	.string	"pxIterator"
.LASF13:
	.string	"char"
.LASF52:
	.string	"pxHeapRegion"
.LASF22:
	.string	"HeapRegionTagged_t"
.LASF38:
	.string	"pvPortMallocTagged"
.LASF54:
	.string	"uxHeapStructSize"
.LASF39:
	.string	"xPortGetFreeHeapSizeTagged"
.LASF30:
	.string	"pxBlockToInsert"
.LASF12:
	.string	"long unsigned int"
.LASF53:
	.string	"xMallocMutex"
.LASF44:
	.string	"pxFirstFreeBlockInRegion"
.LASF26:
	.string	"xBlockSize"
.LASF55:
	.string	"xStart"
.LASF14:
	.string	"uint8_t"
.LASF20:
	.string	"xTag"
.LASF62:
	.string	"vTaskExitCritical"
.LASF50:
	.string	"xRegIdx"
.LASF31:
	.string	"xWantedSize"
.LASF64:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF48:
	.string	"xTotalHeapSize"
.LASF36:
	.string	"pxLink"
.LASF19:
	.string	"xSizeInBytes"
.LASF4:
	.string	"__uint8_t"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-61-gab8375a) 5.2.0"
