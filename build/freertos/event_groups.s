	.file	"event_groups.c"
	.text
.Ltext0:
	.section	.text.prvTestWaitCondition,"ax",@progbits
	.align	4
	.type	prvTestWaitCondition, @function
prvTestWaitCondition:
.LFB22:
	.file 1 "C:/esp/esp-idf/components/freertos/event_groups.c"
	.loc 1 627 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LVL1:
	.loc 1 630 0
	bnez.n	a4, .L2
	.loc 1 634 0
	bany	a2, a3, .L4
	.loc 1 628 0
	movi.n	a2, 0
.LVL2:
	retw.n
.LVL3:
.L2:
	.loc 1 647 0
	and	a2, a2, a3
.LVL4:
	beq	a3, a2, .L5
	.loc 1 628 0
	movi.n	a2, 0
	retw.n
.LVL5:
.L4:
	.loc 1 636 0
	movi.n	a2, 1
.LVL6:
	retw.n
.L5:
	.loc 1 649 0
	movi.n	a2, 1
.LVL7:
	.loc 1 658 0
	retw.n
.LFE22:
	.size	prvTestWaitCondition, .-prvTestWaitCondition
	.section	.text.xEventGroupCreate,"ax",@progbits
	.align	4
	.global	xEventGroupCreate
	.type	xEventGroupCreate, @function
xEventGroupCreate:
.LFB13:
	.loc 1 141 0
	entry	sp, 32
.LCFI1:
	.loc 1 144 0
	movi.n	a10, 0x20
	call8	malloc
.LVL8:
	mov.n	a2, a10
.LVL9:
	.loc 1 145 0
	beqz.n	a10, .L7
	.loc 1 147 0
	movi.n	a8, 0
	s32i.n	a8, a10, 0
	.loc 1 148 0
	addi.n	a10, a10, 4
	call8	vListInitialise
.LVL10:
.L7:
	.loc 1 156 0
	addi	a10, a2, 24
	call8	vPortCPUInitializeMutex
.LVL11:
	.loc 1 159 0
	retw.n
.LFE13:
	.size	xEventGroupCreate, .-xEventGroupCreate
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC2:
	.string	"C:/esp/esp-idf/components/freertos/event_groups.c"
	.align	4
.LC4:
	.string	"%s:%d (%s)- assert failed!\n"
	.section	.text.xEventGroupWaitBits,"ax",@progbits
	.literal_position
	.literal .LC0, 16777216
	.literal .LC1, __FUNCTION__$4977
	.literal .LC3, .LC2
	.literal .LC5, .LC4
	.literal .LC6, -16777216
	.literal .LC7, 67108864
	.literal .LC9, 16777215
	.align	4
	.global	xEventGroupWaitBits
	.type	xEventGroupWaitBits, @function
xEventGroupWaitBits:
.LFB15:
	.loc 1 281 0
.LVL12:
	entry	sp, 48
.LCFI2:
	s32i.n	a4, sp, 0
.LVL13:
	.loc 1 289 0
	bnez.n	a2, .L9
	.loc 1 289 0 is_stmt 0 discriminator 1
	l32r	a13, .LC1
	movi	a12, 0x121
	l32r	a11, .LC3
	l32r	a10, .LC5
	call8	ets_printf
.LVL14:
	call8	abort
.LVL15:
.L9:
	.loc 1 290 0 is_stmt 1
	l32r	a4, .LC6
.LVL16:
	bnone	a3, a4, .L10
	.loc 1 290 0 is_stmt 0 discriminator 1
	l32r	a13, .LC1
	movi	a12, 0x122
	l32r	a11, .LC3
	l32r	a10, .LC5
	call8	ets_printf
.LVL17:
	call8	abort
.LVL18:
.L10:
	.loc 1 291 0 is_stmt 1
	bnez.n	a3, .L11
	.loc 1 291 0 is_stmt 0 discriminator 1
	l32r	a13, .LC1
	movi	a12, 0x123
	l32r	a11, .LC3
	l32r	a10, .LC5
	call8	ets_printf
.LVL19:
	call8	abort
.LVL20:
.L11:
	.loc 1 294 0 is_stmt 1
	call8	xTaskGetSchedulerState
.LVL21:
	bnez.n	a10, .L12
	.loc 1 294 0 is_stmt 0 discriminator 1
	beqz.n	a6, .L12
	.loc 1 294 0 discriminator 2
	l32r	a13, .LC1
	movi	a12, 0x126
	l32r	a11, .LC3
	l32r	a10, .LC5
	call8	ets_printf
.LVL22:
	call8	abort
.LVL23:
.L12:
	.loc 1 298 0 is_stmt 1
	call8	vTaskSuspendAll
.LVL24:
	.loc 1 299 0
	addi	a7, a2, 24
	mov.n	a10, a7
	call8	vTaskEnterCritical
.LVL25:
.LBB10:
	.loc 1 301 0
	l32i.n	a4, a2, 0
.LVL26:
	.loc 1 304 0
	mov.n	a12, a5
	mov.n	a11, a3
	mov.n	a10, a4
	call8	prvTestWaitCondition
.LVL27:
	.loc 1 306 0
	beqz.n	a10, .L13
.LVL28:
	.loc 1 314 0
	l32i.n	a6, sp, 0
	beqz.n	a6, .L21
	.loc 1 316 0
	movi.n	a6, -1
	xor	a6, a6, a3
	and	a6, a4, a6
	s32i.n	a6, a2, 0
	.loc 1 311 0
	movi.n	a6, 0
	j	.L14
.LVL29:
.L13:
	.loc 1 323 0
	beqz.n	a6, .L14
	.loc 1 335 0
	l32i.n	a4, sp, 0
.LVL30:
	bnez.n	a4, .L22
.LBE10:
	.loc 1 283 0
	movi.n	a11, 0
	j	.L15
.L22:
.LBB11:
	.loc 1 337 0
	l32r	a11, .LC0
.L15:
.LVL31:
	.loc 1 344 0
	beqz.n	a5, .L16
	.loc 1 346 0
	l32r	a4, .LC7
	or	a11, a11, a4
.LVL32:
.L16:
	.loc 1 356 0
	mov.n	a12, a6
	or	a11, a11, a3
.LVL33:
	addi.n	a10, a2, 4
.LVL34:
	call8	vTaskPlaceOnUnorderedEventList
.LVL35:
	.loc 1 361 0
	movi.n	a4, 0
	j	.L14
.LVL36:
.L21:
	.loc 1 311 0
	movi.n	a6, 0
.LVL37:
.L14:
.LBE11:
	.loc 1 366 0
	mov.n	a10, a7
	call8	vTaskExitCritical
.LVL38:
	.loc 1 367 0
	call8	xTaskResumeAll
.LVL39:
	.loc 1 369 0
	beqz.n	a6, .L17
	.loc 1 371 0
	bnez.n	a10, .L18
.LBB12:
.LBB13:
	.file 2 "C:/esp/esp-idf/components/freertos/include/freertos/portable.h"
	.loc 2 202 0
#APP
# 202 "C:/esp/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a10
 extui a10,a10,13,1
# 0 "" 2
.LVL40:
#NO_APP
.LBE13:
.LBE12:
	.loc 1 373 0
	call8	esp_crosscore_int_send_yield
.LVL41:
.L18:
	.loc 1 384 0
	call8	uxTaskResetEventItemValue
.LVL42:
	mov.n	a4, a10
.LVL43:
	.loc 1 386 0
	bbsi	a10, 25, .L19
	.loc 1 388 0
	mov.n	a10, a7
	call8	vTaskEnterCritical
.LVL44:
	.loc 1 391 0
	l32i.n	a4, a2, 0
.LVL45:
	.loc 1 395 0
	mov.n	a12, a5
	mov.n	a11, a3
	mov.n	a10, a4
	call8	prvTestWaitCondition
.LVL46:
	beqz.n	a10, .L20
	.loc 1 397 0
	l32i.n	a5, sp, 0
.LVL47:
	beqz.n	a5, .L20
	.loc 1 399 0
	movi.n	a5, -1
	xor	a3, a5, a3
.LVL48:
	and	a3, a4, a3
	s32i.n	a3, a2, 0
.L20:
	.loc 1 411 0
	mov.n	a10, a7
	call8	vTaskExitCritical
.LVL49:
.L19:
	.loc 1 422 0
	l32r	a2, .LC9
.LVL50:
	and	a4, a4, a2
.LVL51:
.L17:
	.loc 1 427 0
	mov.n	a2, a4
	retw.n
.LFE15:
	.size	xEventGroupWaitBits, .-xEventGroupWaitBits
	.section	.text.xEventGroupClearBits,"ax",@progbits
	.literal_position
	.literal .LC10, __FUNCTION__$4985
	.literal .LC11, .LC2
	.literal .LC12, .LC4
	.literal .LC13, -16777216
	.align	4
	.global	xEventGroupClearBits
	.type	xEventGroupClearBits, @function
xEventGroupClearBits:
.LFB16:
	.loc 1 431 0
.LVL52:
	entry	sp, 32
.LCFI3:
.LVL53:
	.loc 1 437 0
	bnez.n	a2, .L24
	.loc 1 437 0 is_stmt 0 discriminator 1
	l32r	a13, .LC10
	movi	a12, 0x1b5
	l32r	a11, .LC11
	l32r	a10, .LC12
	call8	ets_printf
.LVL54:
	call8	abort
.LVL55:
.L24:
	.loc 1 438 0 is_stmt 1
	l32r	a4, .LC13
	bnone	a3, a4, .L25
	.loc 1 438 0 is_stmt 0 discriminator 1
	l32r	a13, .LC10
	movi	a12, 0x1b6
	l32r	a11, .LC11
	l32r	a10, .LC12
	call8	ets_printf
.LVL56:
	call8	abort
.LVL57:
.L25:
	.loc 1 440 0 is_stmt 1
	addi	a5, a2, 24
	mov.n	a10, a5
	call8	vTaskEnterCritical
.LVL58:
	.loc 1 446 0
	l32i.n	a4, a2, 0
.LVL59:
	.loc 1 449 0
	movi.n	a8, -1
	xor	a3, a8, a3
.LVL60:
	and	a3, a4, a3
	s32i.n	a3, a2, 0
	.loc 1 451 0
	mov.n	a10, a5
	call8	vTaskExitCritical
.LVL61:
	.loc 1 454 0
	mov.n	a2, a4
.LVL62:
	retw.n
.LFE16:
	.size	xEventGroupClearBits, .-xEventGroupClearBits
	.section	.text.xEventGroupGetBitsFromISR,"ax",@progbits
	.align	4
	.global	xEventGroupGetBitsFromISR
	.type	xEventGroupGetBitsFromISR, @function
xEventGroupGetBitsFromISR:
.LFB17:
	.loc 1 473 0
.LVL63:
	entry	sp, 32
.LCFI4:
.LVL64:
.LBB14:
.LBB15:
.LBB16:
	.file 3 "C:/esp/esp-idf/components/freertos/include/freertos/portmacro.h"
	.loc 3 244 0
#APP
# 244 "C:/esp/esp-idf/components/freertos/include/freertos/portmacro.h" 1
	rsil	a10, 3

# 0 "" 2
.LVL65:
#NO_APP
.LBE16:
.LBE15:
.LBE14:
	.loc 1 480 0
	l32i.n	a2, a2, 0
.LVL66:
	.loc 1 482 0
	call8	_xtos_set_intlevel
.LVL67:
	.loc 1 485 0
	retw.n
.LFE17:
	.size	xEventGroupGetBitsFromISR, .-xEventGroupGetBitsFromISR
	.section	.text.xEventGroupSetBits,"ax",@progbits
	.literal_position
	.literal .LC14, __FUNCTION__$5005
	.literal .LC15, .LC2
	.literal .LC16, .LC4
	.literal .LC17, -16777216
	.literal .LC18, 16777215
	.literal .LC21, 33554432
	.align	4
	.global	xEventGroupSetBits
	.type	xEventGroupSetBits, @function
xEventGroupSetBits:
.LFB18:
	.loc 1 489 0
.LVL68:
	entry	sp, 32
.LCFI5:
.LVL69:
	.loc 1 499 0
	bnez.n	a2, .L28
	.loc 1 499 0 is_stmt 0 discriminator 1
	l32r	a13, .LC14
	movi	a12, 0x1f3
	l32r	a11, .LC15
	l32r	a10, .LC16
	call8	ets_printf
.LVL70:
	call8	abort
.LVL71:
.L28:
	.loc 1 500 0 is_stmt 1
	l32r	a4, .LC17
	bnone	a3, a4, .L29
	.loc 1 500 0 is_stmt 0 discriminator 1
	l32r	a13, .LC14
	movi	a12, 0x1f4
	l32r	a11, .LC15
	l32r	a10, .LC16
	call8	ets_printf
.LVL72:
	call8	abort
.LVL73:
.L29:
	.loc 1 503 0 is_stmt 1
	addi.n	a4, a2, 12
.LVL74:
	.loc 1 505 0
	call8	vTaskSuspendAll
.LVL75:
	.loc 1 506 0
	addi	a6, a2, 24
	mov.n	a10, a6
	call8	vTaskEnterCritical
.LVL76:
	.loc 1 510 0
	l32i.n	a10, a2, 16
.LVL77:
	.loc 1 513 0
	l32i.n	a5, a2, 0
	or	a3, a5, a3
.LVL78:
	s32i.n	a3, a2, 0
	.loc 1 493 0
	movi.n	a5, 0
	.loc 1 516 0
	j	.L30
.LVL79:
.L35:
	.loc 1 518 0
	l32i.n	a3, a10, 4
.LVL80:
	.loc 1 519 0
	l32i.n	a9, a10, 0
.LVL81:
	.loc 1 524 0
	l32r	a8, .LC18
	and	a8, a9, a8
.LVL82:
	.loc 1 526 0
	bbsi	a9, 26, .L31
	.loc 1 529 0
	l32i.n	a11, a2, 0
	bany	a8, a11, .L36
	.loc 1 520 0
	movi.n	a11, 0
	j	.L32
.L31:
	.loc 1 538 0
	l32i.n	a11, a2, 0
	and	a11, a8, a11
	beq	a8, a11, .L37
	.loc 1 520 0
	movi.n	a11, 0
	j	.L32
.L36:
	.loc 1 531 0
	movi.n	a11, 1
	j	.L32
.L37:
	.loc 1 541 0
	movi.n	a11, 1
.L32:
.LVL83:
	.loc 1 548 0
	beqz.n	a11, .L33
	.loc 1 551 0
	bbci	a9, 24, .L34
	.loc 1 553 0
	or	a5, a5, a8
.LVL84:
.L34:
	.loc 1 565 0
	l32i.n	a11, a2, 0
.LVL85:
	l32r	a8, .LC21
.LVL86:
	or	a11, a11, a8
	call8	xTaskRemoveFromUnorderedEventList
.LVL87:
.L33:
	.loc 1 520 0
	mov.n	a10, a3
.LVL88:
.L30:
	.loc 1 516 0
	bne	a10, a4, .L35
	.loc 1 576 0
	movi.n	a3, -1
	xor	a5, a3, a5
.LVL89:
	l32i.n	a3, a2, 0
	and	a5, a3, a5
	s32i.n	a5, a2, 0
	.loc 1 578 0
	mov.n	a10, a6
.LVL90:
	call8	vTaskExitCritical
.LVL91:
	.loc 1 579 0
	call8	xTaskResumeAll
.LVL92:
	.loc 1 582 0
	l32i.n	a2, a2, 0
.LVL93:
	retw.n
.LFE18:
	.size	xEventGroupSetBits, .-xEventGroupSetBits
	.section	.text.xEventGroupSync,"ax",@progbits
	.literal_position
	.literal .LC22, -16777216
	.literal .LC23, __FUNCTION__$4963
	.literal .LC24, .LC2
	.literal .LC25, .LC4
	.literal .LC26, 83886080
	.literal .LC28, 16777215
	.align	4
	.global	xEventGroupSync
	.type	xEventGroupSync, @function
xEventGroupSync:
.LFB14:
	.loc 1 163 0
.LVL94:
	entry	sp, 32
.LCFI6:
.LVL95:
	.loc 1 169 0
	l32r	a6, .LC22
	bnone	a4, a6, .L39
	.loc 1 169 0 is_stmt 0 discriminator 1
	l32r	a13, .LC23
	movi	a12, 0xa9
	l32r	a11, .LC24
	l32r	a10, .LC25
	call8	ets_printf
.LVL96:
	call8	abort
.LVL97:
.L39:
	.loc 1 170 0 is_stmt 1
	bnez.n	a4, .L40
	.loc 1 170 0 is_stmt 0 discriminator 1
	l32r	a13, .LC23
	movi	a12, 0xaa
	l32r	a11, .LC24
	l32r	a10, .LC25
	call8	ets_printf
.LVL98:
	call8	abort
.LVL99:
.L40:
	.loc 1 173 0 is_stmt 1
	call8	xTaskGetSchedulerState
.LVL100:
	bnez.n	a10, .L41
	.loc 1 173 0 is_stmt 0 discriminator 1
	beqz.n	a5, .L41
	.loc 1 173 0 discriminator 2
	l32r	a13, .LC23
	movi	a12, 0xad
	l32r	a11, .LC24
	l32r	a10, .LC25
	call8	ets_printf
.LVL101:
	call8	abort
.LVL102:
.L41:
	.loc 1 177 0 is_stmt 1
	call8	vTaskSuspendAll
.LVL103:
	.loc 1 178 0
	addi	a6, a2, 24
	mov.n	a10, a6
	call8	vTaskEnterCritical
.LVL104:
	.loc 1 180 0
	l32i.n	a7, a2, 0
.LVL105:
	.loc 1 182 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	xEventGroupSetBits
.LVL106:
	.loc 1 184 0
	or	a3, a7, a3
.LVL107:
	and	a8, a4, a3
	bne	a4, a8, .L42
.LVL108:
	.loc 1 191 0
	movi.n	a5, -1
.LVL109:
	xor	a5, a5, a4
	l32i.n	a7, a2, 0
.LVL110:
	and	a5, a7, a5
	s32i.n	a5, a2, 0
.LVL111:
	.loc 1 193 0
	movi.n	a5, 0
	j	.L43
.LVL112:
.L42:
	.loc 1 197 0
	beqz.n	a5, .L44
	.loc 1 204 0
	mov.n	a12, a5
	l32r	a11, .LC26
	or	a11, a4, a11
	addi.n	a10, a2, 4
	call8	vTaskPlaceOnUnorderedEventList
.LVL113:
	.loc 1 210 0
	movi.n	a3, 0
	j	.L43
.LVL114:
.L44:
	.loc 1 216 0
	l32i.n	a3, a2, 0
.LVL115:
.L43:
	.loc 1 220 0
	mov.n	a10, a6
	call8	vTaskExitCritical
.LVL116:
	.loc 1 221 0
	call8	xTaskResumeAll
.LVL117:
	.loc 1 223 0
	beqz.n	a5, .L45
	.loc 1 225 0
	bnez.n	a10, .L46
.LBB17:
.LBB18:
	.loc 2 202 0
#APP
# 202 "C:/esp/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a10
 extui a10,a10,13,1
# 0 "" 2
.LVL118:
#NO_APP
.LBE18:
.LBE17:
	.loc 1 227 0
	call8	esp_crosscore_int_send_yield
.LVL119:
.L46:
	.loc 1 238 0
	call8	uxTaskResetEventItemValue
.LVL120:
	mov.n	a3, a10
.LVL121:
	.loc 1 240 0
	bbsi	a10, 25, .L47
	.loc 1 243 0
	mov.n	a10, a6
	call8	vTaskEnterCritical
.LVL122:
	.loc 1 245 0
	l32i.n	a3, a2, 0
.LVL123:
	.loc 1 251 0
	and	a5, a4, a3
.LVL124:
	bne	a4, a5, .L48
	.loc 1 253 0
	movi.n	a5, -1
	xor	a4, a5, a4
.LVL125:
	and	a4, a3, a4
	s32i.n	a4, a2, 0
.L48:
	.loc 1 260 0
	mov.n	a10, a6
	call8	vTaskExitCritical
.LVL126:
.L47:
	.loc 1 271 0
	l32r	a2, .LC28
.LVL127:
	and	a3, a3, a2
.LVL128:
.L45:
	.loc 1 277 0
	mov.n	a2, a3
	retw.n
.LFE14:
	.size	xEventGroupSync, .-xEventGroupSync
	.section	.text.vEventGroupDelete,"ax",@progbits
	.literal_position
	.literal .LC29, __FUNCTION__$5014
	.literal .LC30, .LC2
	.literal .LC31, .LC4
	.literal .LC32, 33554432
	.align	4
	.global	vEventGroupDelete
	.type	vEventGroupDelete, @function
vEventGroupDelete:
.LFB19:
	.loc 1 586 0
.LVL129:
	entry	sp, 32
.LCFI7:
.LVL130:
	.loc 1 590 0
	call8	vTaskSuspendAll
.LVL131:
	.loc 1 591 0
	addi	a3, a2, 24
	mov.n	a10, a3
	call8	vTaskEnterCritical
.LVL132:
	.loc 1 595 0
	j	.L50
.L52:
	.loc 1 599 0
	l32i.n	a10, a2, 16
	addi.n	a8, a2, 12
	bne	a10, a8, .L51
	.loc 1 599 0 is_stmt 0 discriminator 1
	l32r	a13, .LC29
	movi	a12, 0x257
	l32r	a11, .LC30
	l32r	a10, .LC31
	call8	ets_printf
.LVL133:
	call8	abort
.LVL134:
.L51:
	.loc 1 600 0 is_stmt 1
	l32r	a11, .LC32
	call8	xTaskRemoveFromUnorderedEventList
.LVL135:
.L50:
	.loc 1 595 0
	l32i.n	a8, a2, 4
	bnez.n	a8, .L52
	.loc 1 603 0
	mov.n	a10, a3
	call8	vTaskExitCritical
.LVL136:
	.loc 1 604 0
	mov.n	a10, a2
	call8	free
.LVL137:
	.loc 1 606 0
	call8	xTaskResumeAll
.LVL138:
	retw.n
.LFE19:
	.size	vEventGroupDelete, .-vEventGroupDelete
	.section	.text.vEventGroupSetBitsCallback,"ax",@progbits
	.align	4
	.global	vEventGroupSetBitsCallback
	.type	vEventGroupSetBitsCallback, @function
vEventGroupSetBitsCallback:
.LFB20:
	.loc 1 613 0
.LVL139:
	entry	sp, 32
.LCFI8:
	.loc 1 614 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	xEventGroupSetBits
.LVL140:
	retw.n
.LFE20:
	.size	vEventGroupSetBitsCallback, .-vEventGroupSetBitsCallback
	.section	.text.vEventGroupClearBitsCallback,"ax",@progbits
	.align	4
	.global	vEventGroupClearBitsCallback
	.type	vEventGroupClearBitsCallback, @function
vEventGroupClearBitsCallback:
.LFB21:
	.loc 1 621 0
.LVL141:
	entry	sp, 32
.LCFI9:
	.loc 1 622 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	xEventGroupClearBits
.LVL142:
	retw.n
.LFE21:
	.size	vEventGroupClearBitsCallback, .-vEventGroupClearBitsCallback
	.section	.rodata.__FUNCTION__$5014,"a",@progbits
	.align	4
	.type	__FUNCTION__$5014, @object
	.size	__FUNCTION__$5014, 18
__FUNCTION__$5014:
	.string	"vEventGroupDelete"
	.section	.rodata.__FUNCTION__$5005,"a",@progbits
	.align	4
	.type	__FUNCTION__$5005, @object
	.size	__FUNCTION__$5005, 19
__FUNCTION__$5005:
	.string	"xEventGroupSetBits"
	.section	.rodata.__FUNCTION__$4985,"a",@progbits
	.align	4
	.type	__FUNCTION__$4985, @object
	.size	__FUNCTION__$4985, 21
__FUNCTION__$4985:
	.string	"xEventGroupClearBits"
	.section	.rodata.__FUNCTION__$4977,"a",@progbits
	.align	4
	.type	__FUNCTION__$4977, @object
	.size	__FUNCTION__$4977, 20
__FUNCTION__$4977:
	.string	"xEventGroupWaitBits"
	.section	.rodata.__FUNCTION__$4963,"a",@progbits
	.align	4
	.type	__FUNCTION__$4963, @object
	.size	__FUNCTION__$4963, 16
__FUNCTION__$4963:
	.string	"xEventGroupSync"
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
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI0-.LFB22
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
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI4-.LFB17
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI5-.LFB18
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI6-.LFB14
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI7-.LFB19
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI8-.LFB20
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI9-.LFB21
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
	.text
.Letext0:
	.file 4 "C:/esp/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 5 "C:/esp/esp-idf/components/newlib/include/stdint.h"
	.file 6 "C:/esp/esp-idf/components/freertos/include/freertos/list.h"
	.file 7 "C:/esp/esp-idf/components/freertos/include/freertos/event_groups.h"
	.file 8 "C:/esp/esp-idf/components/newlib/include/stdlib.h"
	.file 9 "C:/esp/esp-idf/components/freertos/include/freertos/task.h"
	.file 10 "C:/esp/esp-idf/components/esp32/include/rom/ets_sys.h"
	.file 11 "C:/esp/esp-idf/components/esp32/include/esp_crosscore_int.h"
	.file 12 "C:/esp/esp-idf/components/esp32/include/xtensa/xtruntime.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xdfd
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF96
	.byte	0xc
	.4byte	.LASF97
	.4byte	.LASF98
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x4
	.byte	0x1a
	.4byte	0x25
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x4
	.4byte	.LASF12
	.byte	0x5
	.byte	0x2d
	.4byte	0x4f
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF13
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x3
	.byte	0x6f
	.4byte	0x33
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x3
	.byte	0x70
	.4byte	0x25
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x3
	.byte	0x76
	.4byte	0x86
	.uleb128 0x6
	.byte	0x8
	.byte	0x3
	.byte	0x84
	.4byte	0xda
	.uleb128 0x7
	.4byte	.LASF17
	.byte	0x3
	.byte	0x85
	.4byte	0x86
	.byte	0
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x3
	.byte	0x86
	.4byte	0x86
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x3
	.byte	0x8b
	.4byte	0xb9
	.uleb128 0x8
	.4byte	.LASF26
	.byte	0x14
	.byte	0x6
	.byte	0xb5
	.4byte	0x12e
	.uleb128 0x7
	.4byte	.LASF20
	.byte	0x6
	.byte	0xb8
	.4byte	0xae
	.byte	0
	.uleb128 0x7
	.4byte	.LASF21
	.byte	0x6
	.byte	0xb9
	.4byte	0x12e
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF22
	.byte	0x6
	.byte	0xba
	.4byte	0x12e
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF23
	.byte	0x6
	.byte	0xbb
	.4byte	0x76
	.byte	0xc
	.uleb128 0x7
	.4byte	.LASF24
	.byte	0x6
	.byte	0xbc
	.4byte	0x76
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0xe5
	.uleb128 0x4
	.4byte	.LASF25
	.byte	0x6
	.byte	0xbf
	.4byte	0xe5
	.uleb128 0x8
	.4byte	.LASF27
	.byte	0xc
	.byte	0x6
	.byte	0xc5
	.4byte	0x170
	.uleb128 0x7
	.4byte	.LASF20
	.byte	0x6
	.byte	0xc8
	.4byte	0xae
	.byte	0
	.uleb128 0x7
	.4byte	.LASF21
	.byte	0x6
	.byte	0xc9
	.4byte	0x12e
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF22
	.byte	0x6
	.byte	0xca
	.4byte	0x12e
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.4byte	.LASF28
	.byte	0x6
	.byte	0xcc
	.4byte	0x13f
	.uleb128 0x8
	.4byte	.LASF29
	.byte	0x14
	.byte	0x6
	.byte	0xd6
	.4byte	0x1ac
	.uleb128 0x7
	.4byte	.LASF30
	.byte	0x6
	.byte	0xd9
	.4byte	0xa3
	.byte	0
	.uleb128 0x7
	.4byte	.LASF31
	.byte	0x6
	.byte	0xda
	.4byte	0x1ac
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF32
	.byte	0x6
	.byte	0xdb
	.4byte	0x170
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x134
	.uleb128 0x4
	.4byte	.LASF33
	.byte	0x6
	.byte	0xdd
	.4byte	0x17b
	.uleb128 0x4
	.4byte	.LASF34
	.byte	0x7
	.byte	0x7a
	.4byte	0x76
	.uleb128 0x4
	.4byte	.LASF35
	.byte	0x7
	.byte	0x84
	.4byte	0xae
	.uleb128 0x8
	.4byte	.LASF36
	.byte	0x20
	.byte	0x1
	.byte	0x71
	.4byte	0x204
	.uleb128 0x7
	.4byte	.LASF37
	.byte	0x1
	.byte	0x73
	.4byte	0x1c8
	.byte	0
	.uleb128 0x7
	.4byte	.LASF38
	.byte	0x1
	.byte	0x74
	.4byte	0x1b2
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF39
	.byte	0x1
	.byte	0x7a
	.4byte	0xda
	.byte	0x18
	.byte	0
	.uleb128 0x4
	.4byte	.LASF40
	.byte	0x1
	.byte	0x7b
	.4byte	0x1d3
	.uleb128 0xa
	.4byte	.LASF41
	.byte	0x2
	.byte	0xc8
	.4byte	0x86
	.byte	0x3
	.4byte	0x22a
	.uleb128 0xb
	.string	"id"
	.byte	0x2
	.byte	0xc9
	.4byte	0x33
	.byte	0
	.uleb128 0xa
	.4byte	.LASF42
	.byte	0x3
	.byte	0xf4
	.4byte	0x25
	.byte	0x3
	.4byte	0x253
	.uleb128 0xc
	.4byte	.LASF43
	.byte	0x3
	.byte	0xf4
	.4byte	0x25
	.uleb128 0xd
	.uleb128 0xc
	.4byte	.LASF44
	.byte	0x3
	.byte	0xf4
	.4byte	0x25
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF99
	.byte	0x1
	.2byte	0x272
	.4byte	0x98
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2aa
	.uleb128 0xf
	.4byte	.LASF45
	.byte	0x1
	.2byte	0x272
	.4byte	0x2aa
	.4byte	.LLST0
	.uleb128 0x10
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x272
	.4byte	0x2aa
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x10
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x272
	.4byte	0x2af
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x11
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x274
	.4byte	0x98
	.4byte	.LLST1
	.byte	0
	.uleb128 0x12
	.4byte	0x1c8
	.uleb128 0x12
	.4byte	0x98
	.uleb128 0x13
	.4byte	.LASF50
	.byte	0x1
	.byte	0x8c
	.4byte	0x1bd
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x313
	.uleb128 0x14
	.4byte	.LASF49
	.byte	0x1
	.byte	0x8e
	.4byte	0x313
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x15
	.4byte	.LVL8
	.4byte	0xd49
	.4byte	0x2ee
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x15
	.4byte	.LVL10
	.4byte	0xd54
	.4byte	0x302
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 4
	.byte	0
	.uleb128 0x17
	.4byte	.LVL11
	.4byte	0xd60
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 24
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x204
	.uleb128 0x18
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x118
	.4byte	0x1c8
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5e5
	.uleb128 0xf
	.4byte	.LASF52
	.byte	0x1
	.2byte	0x118
	.4byte	0x1bd
	.4byte	.LLST2
	.uleb128 0xf
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x118
	.4byte	0x2aa
	.4byte	.LLST3
	.uleb128 0xf
	.4byte	.LASF53
	.byte	0x1
	.2byte	0x118
	.4byte	0x2af
	.4byte	.LLST4
	.uleb128 0xf
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x118
	.4byte	0x2af
	.4byte	.LLST5
	.uleb128 0xf
	.4byte	.LASF54
	.byte	0x1
	.2byte	0x118
	.4byte	0xae
	.4byte	.LLST6
	.uleb128 0x11
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x11a
	.4byte	0x313
	.4byte	.LLST7
	.uleb128 0x11
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x11b
	.4byte	0x1c8
	.4byte	.LLST8
	.uleb128 0x11
	.4byte	.LASF56
	.byte	0x1
	.2byte	0x11b
	.4byte	0x1c8
	.4byte	.LLST9
	.uleb128 0x11
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x11c
	.4byte	0x98
	.4byte	.LLST10
	.uleb128 0x11
	.4byte	.LASF57
	.byte	0x1
	.2byte	0x11c
	.4byte	0x98
	.4byte	.LLST11
	.uleb128 0x19
	.4byte	.LASF58
	.byte	0x1
	.2byte	0x11d
	.4byte	0x98
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF59
	.4byte	0x5f5
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$4977
	.uleb128 0x1b
	.4byte	.Ldebug_ranges0+0
	.4byte	0x43f
	.uleb128 0x11
	.4byte	.LASF45
	.byte	0x1
	.2byte	0x12d
	.4byte	0x2aa
	.4byte	.LLST12
	.uleb128 0x15
	.4byte	.LVL27
	.4byte	0x253
	.4byte	0x428
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL35
	.4byte	0xd6b
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 4
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	0x20f
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.byte	0x1
	.2byte	0x175
	.4byte	0x467
	.uleb128 0x1d
	.4byte	.LBB13
	.4byte	.LBE13-.LBB13
	.uleb128 0x1e
	.4byte	0x21f
	.4byte	.LLST13
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL14
	.4byte	0xd77
	.4byte	0x497
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x121
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$4977
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL15
	.4byte	0xd82
	.uleb128 0x15
	.4byte	.LVL17
	.4byte	0xd77
	.4byte	0x4d0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x122
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$4977
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL18
	.4byte	0xd82
	.uleb128 0x15
	.4byte	.LVL19
	.4byte	0xd77
	.4byte	0x509
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x123
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$4977
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL20
	.4byte	0xd82
	.uleb128 0x1f
	.4byte	.LVL21
	.4byte	0xd8d
	.uleb128 0x15
	.4byte	.LVL22
	.4byte	0xd77
	.4byte	0x54b
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x126
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$4977
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL23
	.4byte	0xd82
	.uleb128 0x1f
	.4byte	.LVL24
	.4byte	0xd99
	.uleb128 0x15
	.4byte	.LVL25
	.4byte	0xda5
	.4byte	0x571
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL38
	.4byte	0xdb0
	.4byte	0x585
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL39
	.4byte	0xdbb
	.uleb128 0x1f
	.4byte	.LVL41
	.4byte	0xdc7
	.uleb128 0x1f
	.4byte	.LVL42
	.4byte	0xdd2
	.uleb128 0x15
	.4byte	.LVL44
	.4byte	0xda5
	.4byte	0x5b4
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL46
	.4byte	0x253
	.4byte	0x5d4
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL49
	.4byte	0xdb0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	0x7f
	.4byte	0x5f5
	.uleb128 0x21
	.4byte	0x6f
	.byte	0x13
	.byte	0
	.uleb128 0x12
	.4byte	0x5e5
	.uleb128 0x18
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x1ae
	.4byte	0x1c8
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6f8
	.uleb128 0xf
	.4byte	.LASF52
	.byte	0x1
	.2byte	0x1ae
	.4byte	0x1bd
	.4byte	.LLST14
	.uleb128 0xf
	.4byte	.LASF61
	.byte	0x1
	.2byte	0x1ae
	.4byte	0x2aa
	.4byte	.LLST15
	.uleb128 0x11
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x1b0
	.4byte	0x313
	.4byte	.LLST16
	.uleb128 0x22
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x1b1
	.4byte	0x1c8
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1a
	.4byte	.LASF59
	.4byte	0x708
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$4985
	.uleb128 0x15
	.4byte	.LVL54
	.4byte	0xd77
	.4byte	0x691
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1b5
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$4985
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL55
	.4byte	0xd82
	.uleb128 0x15
	.4byte	.LVL56
	.4byte	0xd77
	.4byte	0x6ca
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1b6
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$4985
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL57
	.4byte	0xd82
	.uleb128 0x15
	.4byte	.LVL58
	.4byte	0xda5
	.4byte	0x6e7
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL61
	.4byte	0xdb0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	0x7f
	.4byte	0x708
	.uleb128 0x21
	.4byte	0x6f
	.byte	0x14
	.byte	0
	.uleb128 0x12
	.4byte	0x6f8
	.uleb128 0x18
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x1d8
	.4byte	0x1c8
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7a6
	.uleb128 0xf
	.4byte	.LASF52
	.byte	0x1
	.2byte	0x1d8
	.4byte	0x1bd
	.4byte	.LLST17
	.uleb128 0x23
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x1da
	.4byte	0xa3
	.uleb128 0x11
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x1db
	.4byte	0x313
	.4byte	.LLST18
	.uleb128 0x22
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x1dc
	.4byte	0x1c8
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1c
	.4byte	0x22a
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.byte	0x1
	.2byte	0x1de
	.4byte	0x79c
	.uleb128 0x1d
	.4byte	.LBB15
	.4byte	.LBE15-.LBB15
	.uleb128 0x1e
	.4byte	0x23a
	.4byte	.LLST19
	.uleb128 0x1d
	.4byte	.LBB16
	.4byte	.LBE16-.LBB16
	.uleb128 0x1e
	.4byte	0x246
	.4byte	.LLST19
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL67
	.4byte	0xdde
	.byte	0
	.uleb128 0x18
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x1e8
	.4byte	0x1c8
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x933
	.uleb128 0xf
	.4byte	.LASF52
	.byte	0x1
	.2byte	0x1e8
	.4byte	0x1bd
	.4byte	.LLST21
	.uleb128 0xf
	.4byte	.LASF65
	.byte	0x1
	.2byte	0x1e8
	.4byte	0x2aa
	.4byte	.LLST22
	.uleb128 0x11
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x1ea
	.4byte	0x1ac
	.4byte	.LLST23
	.uleb128 0x11
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x1ea
	.4byte	0x1ac
	.4byte	.LLST24
	.uleb128 0x22
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x1eb
	.4byte	0x933
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x11
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x1ec
	.4byte	0x93e
	.4byte	.LLST25
	.uleb128 0x11
	.4byte	.LASF61
	.byte	0x1
	.2byte	0x1ed
	.4byte	0x1c8
	.4byte	.LLST26
	.uleb128 0x11
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x1ed
	.4byte	0x1c8
	.4byte	.LLST27
	.uleb128 0x11
	.4byte	.LASF56
	.byte	0x1
	.2byte	0x1ed
	.4byte	0x1c8
	.4byte	.LLST28
	.uleb128 0x11
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x1ee
	.4byte	0x313
	.4byte	.LLST29
	.uleb128 0x11
	.4byte	.LASF70
	.byte	0x1
	.2byte	0x1ef
	.4byte	0x98
	.4byte	.LLST30
	.uleb128 0x1a
	.4byte	.LASF59
	.4byte	0x954
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5005
	.uleb128 0x15
	.4byte	.LVL70
	.4byte	0xd77
	.4byte	0x8ad
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1f3
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5005
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL71
	.4byte	0xd82
	.uleb128 0x15
	.4byte	.LVL72
	.4byte	0xd77
	.4byte	0x8e6
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1f4
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5005
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL73
	.4byte	0xd82
	.uleb128 0x1f
	.4byte	.LVL75
	.4byte	0xd99
	.uleb128 0x15
	.4byte	.LVL76
	.4byte	0xda5
	.4byte	0x90c
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL87
	.4byte	0xde9
	.uleb128 0x15
	.4byte	.LVL91
	.4byte	0xdb0
	.4byte	0x929
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL92
	.4byte	0xdbb
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x939
	.uleb128 0x12
	.4byte	0x134
	.uleb128 0x9
	.byte	0x4
	.4byte	0x1b2
	.uleb128 0x20
	.4byte	0x7f
	.4byte	0x954
	.uleb128 0x21
	.4byte	0x6f
	.byte	0x12
	.byte	0
	.uleb128 0x12
	.4byte	0x944
	.uleb128 0x13
	.4byte	.LASF71
	.byte	0x1
	.byte	0xa2
	.4byte	0x1c8
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb8f
	.uleb128 0x24
	.4byte	.LASF52
	.byte	0x1
	.byte	0xa2
	.4byte	0x1bd
	.4byte	.LLST31
	.uleb128 0x24
	.4byte	.LASF65
	.byte	0x1
	.byte	0xa2
	.4byte	0x2aa
	.4byte	.LLST32
	.uleb128 0x24
	.4byte	.LASF46
	.byte	0x1
	.byte	0xa2
	.4byte	0x2aa
	.4byte	.LLST33
	.uleb128 0x24
	.4byte	.LASF54
	.byte	0x1
	.byte	0xa2
	.4byte	0xae
	.4byte	.LLST34
	.uleb128 0x25
	.4byte	.LASF72
	.byte	0x1
	.byte	0xa4
	.4byte	0x1c8
	.4byte	.LLST35
	.uleb128 0x25
	.4byte	.LASF55
	.byte	0x1
	.byte	0xa4
	.4byte	0x1c8
	.4byte	.LLST36
	.uleb128 0x25
	.4byte	.LASF49
	.byte	0x1
	.byte	0xa5
	.4byte	0x313
	.4byte	.LLST37
	.uleb128 0x25
	.4byte	.LASF57
	.byte	0x1
	.byte	0xa6
	.4byte	0x98
	.4byte	.LLST38
	.uleb128 0x25
	.4byte	.LASF58
	.byte	0x1
	.byte	0xa7
	.4byte	0x98
	.4byte	.LLST39
	.uleb128 0x1a
	.4byte	.LASF59
	.4byte	0xb9f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$4963
	.uleb128 0x26
	.4byte	0x20f
	.4byte	.LBB17
	.4byte	.LBE17-.LBB17
	.byte	0x1
	.byte	0xe3
	.4byte	0xa2f
	.uleb128 0x1d
	.4byte	.LBB18
	.4byte	.LBE18-.LBB18
	.uleb128 0x1e
	.4byte	0x21f
	.4byte	.LLST40
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL96
	.4byte	0xd77
	.4byte	0xa5e
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0xa9
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$4963
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL97
	.4byte	0xd82
	.uleb128 0x15
	.4byte	.LVL98
	.4byte	0xd77
	.4byte	0xa96
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0xaa
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$4963
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL99
	.4byte	0xd82
	.uleb128 0x1f
	.4byte	.LVL100
	.4byte	0xd8d
	.uleb128 0x15
	.4byte	.LVL101
	.4byte	0xd77
	.4byte	0xad7
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0xad
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$4963
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL102
	.4byte	0xd82
	.uleb128 0x1f
	.4byte	.LVL103
	.4byte	0xd99
	.uleb128 0x15
	.4byte	.LVL104
	.4byte	0xda5
	.4byte	0xafd
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL106
	.4byte	0x7a6
	.4byte	0xb17
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL113
	.4byte	0xd6b
	.4byte	0xb3b
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 4
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x6
	.byte	0x74
	.sleb128 0
	.byte	0x44
	.byte	0x46
	.byte	0x24
	.byte	0x21
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL116
	.4byte	0xdb0
	.4byte	0xb4f
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL117
	.4byte	0xdbb
	.uleb128 0x1f
	.4byte	.LVL119
	.4byte	0xdc7
	.uleb128 0x1f
	.4byte	.LVL120
	.4byte	0xdd2
	.uleb128 0x15
	.4byte	.LVL122
	.4byte	0xda5
	.4byte	0xb7e
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL126
	.4byte	0xdb0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	0x7f
	.4byte	0xb9f
	.uleb128 0x21
	.4byte	0x6f
	.byte	0xf
	.byte	0
	.uleb128 0x12
	.4byte	0xb8f
	.uleb128 0x27
	.4byte	.LASF74
	.byte	0x1
	.2byte	0x249
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc92
	.uleb128 0x10
	.4byte	.LASF52
	.byte	0x1
	.2byte	0x249
	.4byte	0x1bd
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x22
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x24b
	.4byte	0x313
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x22
	.4byte	.LASF73
	.byte	0x1
	.2byte	0x24c
	.4byte	0xc92
	.uleb128 0x3
	.byte	0x72
	.sleb128 4
	.byte	0x9f
	.uleb128 0x1a
	.4byte	.LASF59
	.4byte	0xcad
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5014
	.uleb128 0x1f
	.4byte	.LVL131
	.4byte	0xd99
	.uleb128 0x15
	.4byte	.LVL132
	.4byte	0xda5
	.4byte	0xc12
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL133
	.4byte	0xd77
	.4byte	0xc42
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x257
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5014
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL134
	.4byte	0xd82
	.uleb128 0x15
	.4byte	.LVL135
	.4byte	0xde9
	.4byte	0xc60
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x40
	.byte	0x45
	.byte	0x24
	.byte	0
	.uleb128 0x15
	.4byte	.LVL136
	.4byte	0xdb0
	.4byte	0xc74
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL137
	.4byte	0xdf5
	.4byte	0xc88
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL138
	.4byte	0xdbb
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0xc98
	.uleb128 0x12
	.4byte	0x1b2
	.uleb128 0x20
	.4byte	0x7f
	.4byte	0xcad
	.uleb128 0x21
	.4byte	0x6f
	.byte	0x11
	.byte	0
	.uleb128 0x12
	.4byte	0xc9d
	.uleb128 0x27
	.4byte	.LASF75
	.byte	0x1
	.2byte	0x264
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcfb
	.uleb128 0x10
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x264
	.4byte	0x76
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x10
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x264
	.4byte	0xcfb
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x17
	.4byte	.LVL140
	.4byte	0x7a6
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	0x86
	.uleb128 0x27
	.4byte	.LASF78
	.byte	0x1
	.2byte	0x26c
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd49
	.uleb128 0x10
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x26c
	.4byte	0x76
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x10
	.4byte	.LASF79
	.byte	0x1
	.2byte	0x26c
	.4byte	0xcfb
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x17
	.4byte	.LVL142
	.4byte	0x5fa
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.LASF80
	.4byte	.LASF80
	.byte	0x8
	.byte	0x65
	.uleb128 0x29
	.4byte	.LASF81
	.4byte	.LASF81
	.byte	0x6
	.2byte	0x18f
	.uleb128 0x28
	.4byte	.LASF82
	.4byte	.LASF82
	.byte	0x3
	.byte	0xcd
	.uleb128 0x29
	.4byte	.LASF83
	.4byte	.LASF83
	.byte	0x9
	.2byte	0x801
	.uleb128 0x28
	.4byte	.LASF84
	.4byte	.LASF84
	.byte	0xa
	.byte	0xde
	.uleb128 0x28
	.4byte	.LASF85
	.4byte	.LASF85
	.byte	0x8
	.byte	0x47
	.uleb128 0x29
	.4byte	.LASF86
	.4byte	.LASF86
	.byte	0x9
	.2byte	0x860
	.uleb128 0x29
	.4byte	.LASF87
	.4byte	.LASF87
	.byte	0x9
	.2byte	0x48c
	.uleb128 0x28
	.4byte	.LASF88
	.4byte	.LASF88
	.byte	0x3
	.byte	0xdc
	.uleb128 0x28
	.4byte	.LASF89
	.4byte	.LASF89
	.byte	0x3
	.byte	0xdb
	.uleb128 0x29
	.4byte	.LASF90
	.4byte	.LASF90
	.byte	0x9
	.2byte	0x4c2
	.uleb128 0x28
	.4byte	.LASF91
	.4byte	.LASF91
	.byte	0xb
	.byte	0x28
	.uleb128 0x29
	.4byte	.LASF92
	.4byte	.LASF92
	.byte	0x9
	.2byte	0x839
	.uleb128 0x28
	.4byte	.LASF93
	.4byte	.LASF93
	.byte	0xc
	.byte	0x99
	.uleb128 0x29
	.4byte	.LASF94
	.4byte	.LASF94
	.byte	0x9
	.2byte	0x829
	.uleb128 0x28
	.4byte	.LASF95
	.4byte	.LASF95
	.byte	0x8
	.byte	0x5a
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xb
	.byte	0x1
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x1
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x29
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
	.4byte	.LVL5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL6
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL7
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LFE22
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL12
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL50
	.4byte	.LFE15
	.2byte	0x3
	.byte	0x77
	.sleb128 -24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL12
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL48
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL12
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL16
	.4byte	.LFE15
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL12
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL47
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL12
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LFE15
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL13
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL50
	.4byte	.LFE15
	.2byte	0x3
	.byte	0x77
	.sleb128 -24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LFE15
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL13
	.4byte	.LVL31
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL27
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL26
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL40
	.4byte	.LVL41-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL52
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL62
	.4byte	.LFE16
	.2byte	0x3
	.byte	0x75
	.sleb128 -24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL52
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL60
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL53
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL62
	.4byte	.LFE16
	.2byte	0x3
	.byte	0x75
	.sleb128 -24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL63
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL66
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL64
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL66
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL65
	.4byte	.LVL67-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL68
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL93
	.4byte	.LFE18
	.2byte	0x3
	.byte	0x76
	.sleb128 -24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL68
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL78
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL77
	.4byte	.LVL87-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL88
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL80
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL73
	.4byte	.LVL93
	.2byte	0x3
	.byte	0x72
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL93
	.4byte	.LFE18
	.2byte	0x3
	.byte	0x76
	.sleb128 -20
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL69
	.4byte	.LVL79
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL79
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL81
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL82
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL86
	.4byte	.LVL87-1
	.2byte	0x9
	.byte	0x79
	.sleb128 0
	.byte	0xc
	.4byte	0xffffff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL81
	.4byte	.LVL87-1
	.2byte	0x8
	.byte	0x79
	.sleb128 0
	.byte	0x40
	.byte	0x44
	.byte	0x24
	.byte	0x1f
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL69
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL93
	.4byte	.LFE18
	.2byte	0x3
	.byte	0x76
	.sleb128 -24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL69
	.4byte	.LVL79
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL81
	.4byte	.LVL83
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL83
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL94
	.4byte	.LVL127
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL127
	.4byte	.LFE14
	.2byte	0x3
	.byte	0x76
	.sleb128 -24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL94
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL107
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL94
	.4byte	.LVL125
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL125
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL94
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL109
	.4byte	.LVL111
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL111
	.4byte	.LVL112
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL112
	.4byte	.LVL124
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL105
	.4byte	.LVL110
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL112
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL108
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL113
	.4byte	.LVL114
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL115
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL95
	.4byte	.LVL127
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL127
	.4byte	.LFE14
	.2byte	0x3
	.byte	0x76
	.sleb128 -24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL117
	.4byte	.LVL118
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL95
	.4byte	.LVL126
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL118
	.4byte	.LVL119-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x64
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB10
	.4byte	.LBE10
	.4byte	.LBB11
	.4byte	.LBE11
	.4byte	0
	.4byte	0
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF22:
	.string	"pxPrevious"
.LASF50:
	.string	"xEventGroupCreate"
.LASF39:
	.string	"eventGroupMux"
.LASF83:
	.string	"vTaskPlaceOnUnorderedEventList"
.LASF47:
	.string	"xWaitForAllBits"
.LASF67:
	.string	"pxListEnd"
.LASF81:
	.string	"vListInitialise"
.LASF43:
	.string	"state"
.LASF86:
	.string	"xTaskGetSchedulerState"
.LASF97:
	.string	"C:/esp/esp-idf/components/freertos/event_groups.c"
.LASF88:
	.string	"vTaskEnterCritical"
.LASF32:
	.string	"xListEnd"
.LASF80:
	.string	"malloc"
.LASF8:
	.string	"sizetype"
.LASF93:
	.string	"_xtos_set_intlevel"
.LASF41:
	.string	"xPortGetCoreID"
.LASF53:
	.string	"xClearOnExit"
.LASF91:
	.string	"esp_crosscore_int_send_yield"
.LASF78:
	.string	"vEventGroupClearBitsCallback"
.LASF11:
	.string	"__uint32_t"
.LASF98:
	.string	"C:\\\\esp\\\\esp32-ArkPOS2\\\\ArkPOS2-esp\\\\build\\\\freertos"
.LASF35:
	.string	"EventBits_t"
.LASF65:
	.string	"uxBitsToSet"
.LASF4:
	.string	"short int"
.LASF23:
	.string	"pvOwner"
.LASF94:
	.string	"xTaskRemoveFromUnorderedEventList"
.LASF54:
	.string	"xTicksToWait"
.LASF42:
	.string	"portENTER_CRITICAL_NESTED"
.LASF19:
	.string	"portMUX_TYPE"
.LASF34:
	.string	"EventGroupHandle_t"
.LASF95:
	.string	"free"
.LASF69:
	.string	"uxBitsWaitedFor"
.LASF33:
	.string	"List_t"
.LASF28:
	.string	"MiniListItem_t"
.LASF5:
	.string	"long long int"
.LASF16:
	.string	"TickType_t"
.LASF68:
	.string	"pxList"
.LASF7:
	.string	"long int"
.LASF29:
	.string	"xLIST"
.LASF49:
	.string	"pxEventBits"
.LASF36:
	.string	"xEventGroupDefinition"
.LASF66:
	.string	"pxListItem"
.LASF59:
	.string	"__FUNCTION__"
.LASF20:
	.string	"xItemValue"
.LASF38:
	.string	"xTasksWaitingForBits"
.LASF71:
	.string	"xEventGroupSync"
.LASF26:
	.string	"xLIST_ITEM"
.LASF89:
	.string	"vTaskExitCritical"
.LASF60:
	.string	"xEventGroupClearBits"
.LASF3:
	.string	"unsigned char"
.LASF17:
	.string	"owner"
.LASF85:
	.string	"abort"
.LASF96:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF2:
	.string	"signed char"
.LASF6:
	.string	"long long unsigned int"
.LASF12:
	.string	"uint32_t"
.LASF76:
	.string	"pvEventGroup"
.LASF0:
	.string	"unsigned int"
.LASF25:
	.string	"ListItem_t"
.LASF14:
	.string	"BaseType_t"
.LASF24:
	.string	"pvContainer"
.LASF51:
	.string	"xEventGroupWaitBits"
.LASF84:
	.string	"ets_printf"
.LASF90:
	.string	"xTaskResumeAll"
.LASF1:
	.string	"short unsigned int"
.LASF99:
	.string	"prvTestWaitCondition"
.LASF10:
	.string	"char"
.LASF48:
	.string	"xWaitConditionMet"
.LASF21:
	.string	"pxNext"
.LASF72:
	.string	"uxOriginalBitValue"
.LASF13:
	.string	"_Bool"
.LASF82:
	.string	"vPortCPUInitializeMutex"
.LASF44:
	.string	"__tmp"
.LASF56:
	.string	"uxControlBits"
.LASF74:
	.string	"vEventGroupDelete"
.LASF64:
	.string	"xEventGroupSetBits"
.LASF55:
	.string	"uxReturn"
.LASF9:
	.string	"long unsigned int"
.LASF15:
	.string	"UBaseType_t"
.LASF30:
	.string	"uxNumberOfItems"
.LASF92:
	.string	"uxTaskResetEventItemValue"
.LASF18:
	.string	"count"
.LASF63:
	.string	"uxSavedInterruptStatus"
.LASF77:
	.string	"ulBitsToSet"
.LASF70:
	.string	"xMatchFound"
.LASF52:
	.string	"xEventGroup"
.LASF61:
	.string	"uxBitsToClear"
.LASF62:
	.string	"xEventGroupGetBitsFromISR"
.LASF37:
	.string	"uxEventBits"
.LASF46:
	.string	"uxBitsToWaitFor"
.LASF31:
	.string	"pxIndex"
.LASF58:
	.string	"xTimeoutOccurred"
.LASF75:
	.string	"vEventGroupSetBitsCallback"
.LASF27:
	.string	"xMINI_LIST_ITEM"
.LASF45:
	.string	"uxCurrentEventBits"
.LASF73:
	.string	"pxTasksWaitingForBits"
.LASF87:
	.string	"vTaskSuspendAll"
.LASF57:
	.string	"xAlreadyYielded"
.LASF79:
	.string	"ulBitsToClear"
.LASF40:
	.string	"EventGroup_t"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-73-ge28a011) 5.2.0"
