	.file	"panic.c"
	.text
.Ltext0:
	.section	.text.panicPutChar,"ax",@progbits
	.literal_position
	.literal .LC34, 1072955420
	.literal .LC35, 1072955392
	.align	4
	.type	panicPutChar, @function
panicPutChar:
.LFB25:
	.file 1 "C:/esp/esp-idf/components/esp32/panic.c"
	.loc 1 65 0
.LVL0:
	entry	sp, 32
.LCFI0:
.L2:
	.loc 1 66 0 discriminator 1
	l32r	a8, .LC34
	memw
	l32i.n	a8, a8, 0
	extui	a8, a8, 16, 8
	movi	a9, 0x7d
	bltu	a9, a8, .L2
	.loc 1 67 0
	l32r	a8, .LC35
	memw
	s32i.n	a2, a8, 0
	retw.n
.LFE25:
	.size	panicPutChar, .-panicPutChar
	.section	.text.panicPutStr,"ax",@progbits
	.align	4
	.type	panicPutStr, @function
panicPutStr:
.LFB26:
	.loc 1 71 0
.LVL1:
	entry	sp, 32
.LCFI1:
.LVL2:
	.loc 1 72 0
	movi.n	a3, 0
	.loc 1 73 0
	j	.L4
.LVL3:
.L5:
	.loc 1 74 0
	call8	panicPutChar
.LVL4:
	.loc 1 75 0
	addi.n	a3, a3, 1
.LVL5:
.L4:
	.loc 1 73 0
	add.n	a8, a2, a3
	l8ui	a10, a8, 0
	bnez.n	a10, .L5
	.loc 1 77 0
	retw.n
.LFE26:
	.size	panicPutStr, .-panicPutStr
	.section	.text.panicPutHex,"ax",@progbits
	.align	4
	.type	panicPutHex, @function
panicPutHex:
.LFB27:
	.loc 1 80 0
.LVL6:
	entry	sp, 32
.LCFI2:
.LVL7:
	.loc 1 83 0
	movi.n	a3, 0
	j	.L7
.LVL8:
.L10:
	.loc 1 84 0
	extui	a10, a2, 28, 4
.LVL9:
	.loc 1 85 0
	movi.n	a8, 9
	blt	a8, a10, .L8
	.loc 1 86 0
	addi	a10, a10, 48
.LVL10:
	call8	panicPutChar
.LVL11:
	j	.L9
.LVL12:
.L8:
	.loc 1 88 0
	addi	a10, a10, 87
.LVL13:
	call8	panicPutChar
.LVL14:
.L9:
	.loc 1 90 0 discriminator 2
	slli	a2, a2, 4
.LVL15:
	.loc 1 83 0 discriminator 2
	addi.n	a3, a3, 1
.LVL16:
.L7:
	.loc 1 83 0 is_stmt 0 discriminator 1
	blti	a3, 8, .L10
	.loc 1 92 0 is_stmt 1
	retw.n
.LFE27:
	.size	panicPutHex, .-panicPutHex
	.section	.text.panicPutDec,"ax",@progbits
	.literal_position
	.literal .LC36, 1717986919
	.align	4
	.type	panicPutDec, @function
panicPutDec:
.LFB28:
	.loc 1 95 0
.LVL17:
	entry	sp, 32
.LCFI3:
	.loc 1 97 0
	l32r	a3, .LC36
	mulsh	a3, a2, a3
	srai	a3, a3, 2
	srai	a10, a2, 31
	sub	a3, a3, a10
	mov.n	a8, a3
	addx4	a3, a3, a3
	slli	a10, a3, 1
	sub	a3, a2, a10
.LVL18:
	.loc 1 99 0
	bnez.n	a8, .L12
	.loc 1 100 0
	movi.n	a10, 0x20
	call8	panicPutChar
.LVL19:
	j	.L13
.LVL20:
.L12:
	.loc 1 102 0
	addi	a10, a8, 48
	extui	a10, a10, 0, 8
	call8	panicPutChar
.LVL21:
.L13:
	.loc 1 104 0
	addi	a10, a3, 48
	extui	a10, a10, 0, 8
	call8	panicPutChar
.LVL22:
	retw.n
.LFE28:
	.size	panicPutDec, .-panicPutDec
	.section	.text.setFirstBreakpoint,"ax",@progbits
	.align	4
	.type	setFirstBreakpoint, @function
setFirstBreakpoint:
.LFB33:
	.loc 1 178 0
.LVL23:
	entry	sp, 32
.LCFI4:
	.loc 1 179 0
#APP
# 179 "C:/esp/esp-idf/components/esp32/panic.c" 1
	wsr.ibreaka0 a2
rsr.ibreakenable a3
movi a4,1
or a4, a4, a3
wsr.ibreakenable a4

# 0 "" 2
#NO_APP
	retw.n
.LFE33:
	.size	setFirstBreakpoint, .-setFirstBreakpoint
	.section	.text.reconfigureAllWdts,"ax",@progbits
	.literal_position
	.literal .LC37, TIMERG0
	.literal .LC38, 1356348065
	.literal .LC39, 229376
	.literal .LC40, 1835008
	.literal .LC41, 1610612736
	.literal .LC42, -1673527296
	.literal .LC43, -2147483648
	.literal .LC44, TIMERG1
	.literal .LC45, 2147483647
	.align	4
	.type	reconfigureAllWdts, @function
reconfigureAllWdts:
.LFB36:
	.loc 1 309 0
	entry	sp, 32
.LCFI5:
	.loc 1 310 0
	l32r	a8, .LC37
	l32r	a11, .LC38
	memw
	s32i	a11, a8, 100
	.loc 1 311 0
	movi.n	a9, 1
	memw
	s32i	a9, a8, 96
	.loc 1 312 0
	memw
	l32i	a10, a8, 72
	l32r	a9, .LC39
	or	a9, a10, a9
	memw
	s32i	a9, a8, 72
	.loc 1 313 0
	memw
	l32i	a10, a8, 72
	l32r	a9, .LC40
	or	a9, a10, a9
	memw
	s32i	a9, a8, 72
	.loc 1 314 0
	memw
	l32i	a10, a8, 72
	l32r	a9, .LC41
	or	a9, a10, a9
	memw
	s32i	a9, a8, 72
	.loc 1 315 0
	memw
	l32i	a10, a8, 76
	extui	a10, a10, 0, 16
	l32r	a9, .LC42
	or	a9, a10, a9
	memw
	s32i	a9, a8, 76
	.loc 1 316 0
	movi	a9, 0x7d0
	memw
	s32i	a9, a8, 80
	.loc 1 317 0
	memw
	l32i	a10, a8, 72
	l32r	a9, .LC43
	or	a9, a10, a9
	memw
	s32i	a9, a8, 72
	.loc 1 318 0
	movi.n	a10, 0
	memw
	s32i	a10, a8, 100
	.loc 1 320 0
	l32r	a8, .LC44
	memw
	s32i	a11, a8, 100
	.loc 1 321 0
	memw
	l32i	a11, a8, 72
	l32r	a9, .LC45
	and	a9, a11, a9
	memw
	s32i	a9, a8, 72
	.loc 1 322 0
	memw
	s32i	a10, a8, 100
	retw.n
.LFE36:
	.size	reconfigureAllWdts, .-reconfigureAllWdts
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC48:
	.string	" 0x"
	.align	4
.LC50:
	.string	":0x"
	.section	.text.putEntry,"ax",@progbits
	.literal_position
	.literal .LC46, 1073741823
	.literal .LC47, 1073741824
	.literal .LC49, .LC48
	.literal .LC51, .LC50
	.align	4
	.type	putEntry, @function
putEntry:
.LFB41:
	.loc 1 381 0
.LVL24:
	entry	sp, 32
.LCFI6:
	.loc 1 382 0
	bgez	a2, .L17
	.loc 1 383 0
	l32r	a8, .LC46
	and	a2, a2, a8
.LVL25:
	l32r	a8, .LC47
	or	a2, a2, a8
.LVL26:
.L17:
	.loc 1 385 0
	l32r	a10, .LC49
	call8	panicPutStr
.LVL27:
	.loc 1 386 0
	mov.n	a10, a2
	call8	panicPutHex
.LVL28:
	.loc 1 387 0
	l32r	a10, .LC51
	call8	panicPutStr
.LVL29:
	.loc 1 388 0
	mov.n	a10, a3
	call8	panicPutHex
.LVL30:
	retw.n
.LFE41:
	.size	putEntry, .-putEntry
	.section	.rodata.str1.4
	.align	4
.LC52:
	.string	"\r\nBacktrace:"
	.align	4
.LC57:
	.string	"\r\n\r\n"
	.section	.text.doBacktrace,"ax",@progbits
	.literal_position
	.literal .LC53, .LC52
	.literal .LC54, -1073405968
	.literal .LC55, 335840
	.literal .LC56, 1073741823
	.literal .LC58, .LC57
	.align	4
	.type	doBacktrace, @function
doBacktrace:
.LFB42:
	.loc 1 392 0
.LVL31:
	entry	sp, 32
.LCFI7:
.LVL32:
	.loc 1 393 0
	l32i.n	a4, a2, 4
.LVL33:
	l32i.n	a3, a2, 16
.LVL34:
	.loc 1 394 0
	l32r	a10, .LC53
	call8	panicPutStr
.LVL35:
	.loc 1 396 0
	mov.n	a11, a3
	mov.n	a10, a4
	call8	putEntry
.LVL36:
	.loc 1 397 0
	l32i.n	a10, a2, 12
.LVL37:
	.loc 1 393 0
	movi.n	a2, 0
.LVL38:
	.loc 1 398 0
	j	.L19
.LVL39:
.L22:
.LBB17:
.LBB18:
.LBB19:
	.file 2 "C:/esp/esp-idf/components/esp32/include/esp_panic.h"
	.loc 2 75 0
	l32r	a8, .LC54
	add.n	a8, a3, a8
	l32r	a4, .LC55
	bltu	a4, a8, .L23
	extui	a4, a3, 0, 4
	beqz.n	a4, .L24
	movi.n	a8, 0
	j	.L20
.L23:
	movi.n	a8, 0
	j	.L20
.L24:
	movi.n	a8, 1
.L20:
.LBE19:
.LBE18:
	.loc 1 400 0
	beqz.n	a8, .L21
	.loc 1 400 0 is_stmt 0 discriminator 1
	addi.n	a2, a2, 2
.LVL40:
	movi	a4, 0x64
	bltu	a4, a9, .L21
	.loc 1 403 0 is_stmt 1
	addi	a4, a3, -12
	l32i.n	a4, a4, 0
.LVL41:
	.loc 1 404 0
	mov.n	a11, a4
	addi	a10, a10, -3
.LVL42:
	call8	putEntry
.LVL43:
	.loc 1 405 0
	addi	a3, a3, -16
.LVL44:
	l32i.n	a10, a3, 0
.LVL45:
	.loc 1 406 0
	l32r	a3, .LC56
.LVL46:
	bgeu	a3, a10, .L21
	.loc 1 403 0
	mov.n	a3, a4
.LVL47:
.L19:
.LBE17:
	.loc 1 398 0
	addi.n	a9, a2, 1
.LVL48:
	movi	a4, 0x63
	bgeu	a4, a2, .L22
.LVL49:
.L21:
	.loc 1 410 0
	l32r	a10, .LC58
.LVL50:
	call8	panicPutStr
.LVL51:
	retw.n
.LFE42:
	.size	doBacktrace, .-doBacktrace
	.section	.text.invoke_abort,"ax",@progbits
	.literal_position
	.literal .LC59, abort_called
	.align	4
	.type	invoke_abort, @function
invoke_abort:
.LFB30:
	.loc 1 125 0
	entry	sp, 32
.LCFI8:
	.loc 1 126 0
	movi.n	a9, 1
	l32r	a8, .LC59
	s8i	a9, a8, 0
.L27:
	.loc 1 136 0
	call8	esp_cpu_in_ocd_debug_mode
.LVL52:
	beqz.n	a10, .L26
	.loc 1 137 0
#APP
# 137 "C:/esp/esp-idf/components/esp32/panic.c" 1
	break 0,0
# 0 "" 2
#NO_APP
.L26:
	.loc 1 139 0
	movi.n	a8, 0
	s32i.n	a8, a8, 0
	.loc 1 140 0
	j	.L27
.LFE30:
	.size	invoke_abort, .-invoke_abort
	.section	.text.haltOtherCore,"ax",@progbits
	.align	4
	.type	haltOtherCore, @function
haltOtherCore:
.LFB32:
	.loc 1 172 0
	entry	sp, 32
.LCFI9:
.LBB20:
.LBB21:
	.file 3 "C:/esp/esp-idf/components/freertos/include/freertos/portable.h"
	.loc 3 202 0
#APP
# 202 "C:/esp/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a8
 extui a8,a8,13,1
# 0 "" 2
.LVL53:
#NO_APP
.LBE21:
.LBE20:
	.loc 1 173 0
	movi.n	a9, 0
	movi.n	a10, 1
	movnez	a10, a9, a8
	call8	esp_cpu_stall
.LVL54:
	retw.n
.LFE32:
	.size	haltOtherCore, .-haltOtherCore
	.section	.text.esp_panic_wdt_start,"ax",@progbits
	.literal_position
	.literal .LC60, 1072988300
	.literal .LC61, 1072988324
	.literal .LC62, 1356348065
	.literal .LC63, 1072988320
	.literal .LC64, 14336
	.literal .LC65, 114688
	.literal .LC66, -1879048193
	.literal .LC67, 805306368
	.literal .LC68, 1072988304
	.literal .LC69, -2147483648
	.align	4
	.type	esp_panic_wdt_start, @function
esp_panic_wdt_start:
.LFB38:
	.loc 1 339 0
	entry	sp, 32
.LCFI10:
	.loc 1 340 0
	l32r	a2, .LC60
	memw
	l32i.n	a2, a2, 0
	bltz	a2, .L29
	.loc 1 343 0
	l32r	a3, .LC61
	l32r	a2, .LC62
	memw
	s32i.n	a2, a3, 0
	.loc 1 344 0
	movi.n	a8, 1
	l32r	a2, .LC63
	memw
	s32i.n	a8, a2, 0
	.loc 1 345 0
	l32r	a2, .LC60
	memw
	l32i.n	a9, a2, 0
	l32r	a8, .LC64
	or	a8, a9, a8
	memw
	s32i.n	a8, a2, 0
	.loc 1 346 0
	memw
	l32i.n	a9, a2, 0
	l32r	a8, .LC65
	or	a8, a9, a8
	memw
	s32i.n	a8, a2, 0
	.loc 1 347 0
	memw
	l32i.n	a9, a2, 0
	l32r	a8, .LC66
	and	a9, a9, a8
	l32r	a8, .LC67
	or	a8, a9, a8
	memw
	s32i.n	a8, a2, 0
	.loc 1 350 0
	call8	rtc_clk_slow_freq_get_hz
.LVL55:
	subx8	a10, a10, a10
	l32r	a8, .LC68
	memw
	s32i.n	a10, a8, 0
	.loc 1 351 0
	memw
	l32i.n	a9, a2, 0
	l32r	a8, .LC69
	or	a8, a9, a8
	memw
	s32i.n	a8, a2, 0
	.loc 1 352 0
	movi.n	a2, 0
	memw
	s32i.n	a2, a3, 0
.L29:
	retw.n
.LFE38:
	.size	esp_panic_wdt_start, .-esp_panic_wdt_start
	.section	.text.esp_panic_dig_reset,"ax",@progbits
	.literal_position
	.literal .LC70, 1072955420
	.literal .LC71, 1072988160
	.literal .LC72, -2147483648
	.align	4
	.type	esp_panic_dig_reset, @function
esp_panic_dig_reset:
.LFB40:
	.loc 1 367 0
	entry	sp, 32
.LCFI11:
.L32:
.LBB22:
.LBB23:
	.file 4 "C:/esp/esp-idf/components/esp32/include/rom/uart.h"
	.loc 4 271 0
	l32r	a8, .LC70
	memw
	l32i.n	a8, a8, 0
	extui	a8, a8, 24, 4
	bnez.n	a8, .L32
.LBE23:
.LBE22:
	.loc 1 371 0
	movi.n	a10, 0
	call8	rtc_clk_cpu_freq_set
.LVL56:
	.loc 1 373 0
	movi.n	a10, 0
	call8	esp_cpu_unstall
.LVL57:
	.loc 1 374 0
	l32r	a9, .LC71
	memw
	l32i.n	a10, a9, 0
	l32r	a8, .LC72
	or	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
.L33:
	j	.L33
.LFE40:
	.size	esp_panic_dig_reset, .-esp_panic_dig_reset
	.section	.rodata.str1.4
	.align	4
.LC74:
	.string	"abort() was called at PC 0x%08x on core %d\r\n"
	.section	.text.abort,"ax",@progbits
	.literal_position
	.literal .LC73, .L35
	.literal .LC75, .LC74
	.align	4
	.global	abort
	.type	abort, @function
abort:
.LFB31:
	.loc 1 144 0
	entry	sp, 32
.LCFI12:
.L35:
	.loc 1 146 0
	l32r	a8, .LC73
	extui	a8, a8, 30, 2
	slli	a8, a8, 30
	slli	a11, a0, 2
	srli	a11, a11, 2
	or	a11, a11, a8
.LBB24:
.LBB25:
	.loc 3 202 0
#APP
# 202 "C:/esp/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a12
 extui a12,a12,13,1
# 0 "" 2
.LVL58:
#NO_APP
.LBE25:
.LBE24:
	.loc 1 146 0
	addi	a11, a11, -3
	l32r	a10, .LC75
	call8	ets_printf
.LVL59:
	.loc 1 148 0
	call8	invoke_abort
.LVL60:
.LFE31:
	.size	abort, .-abort
	.section	.rodata.str1.4
	.align	4
.LC76:
	.string	"***ERROR*** A stack overflow in task "
	.align	4
.LC78:
	.string	" has been detected.\r\n"
	.section	.text.vApplicationStackOverflowHook,"ax",@progbits
	.literal_position
	.literal .LC77, .LC76
	.literal .LC79, .LC78
	.align	4
	.weak	vApplicationStackOverflowHook
	.type	vApplicationStackOverflowHook, @function
vApplicationStackOverflowHook:
.LFB29:
	.loc 1 115 0
.LVL61:
	entry	sp, 32
.LCFI13:
	.loc 1 116 0
	l32r	a10, .LC77
	call8	panicPutStr
.LVL62:
	.loc 1 117 0
	mov.n	a10, a3
	call8	panicPutStr
.LVL63:
	.loc 1 118 0
	l32r	a10, .LC79
	call8	panicPutStr
.LVL64:
	.loc 1 119 0
	call8	abort
.LVL65:
.LFE29:
	.size	vApplicationStackOverflowHook, .-vApplicationStackOverflowHook
	.section	.text.esp_panic_wdt_stop,"ax",@progbits
	.literal_position
	.literal .LC80, 1072988324
	.literal .LC81, 1356348065
	.literal .LC82, 1072988320
	.literal .LC83, 1072988300
	.literal .LC84, -1879048193
	.literal .LC85, 2147483647
	.align	4
	.global	esp_panic_wdt_stop
	.type	esp_panic_wdt_stop, @function
esp_panic_wdt_stop:
.LFB39:
	.loc 1 356 0
	entry	sp, 32
.LCFI14:
	.loc 1 357 0
	l32r	a10, .LC80
	l32r	a8, .LC81
	memw
	s32i.n	a8, a10, 0
	.loc 1 358 0
	movi.n	a9, 1
	l32r	a8, .LC82
	memw
	s32i.n	a9, a8, 0
	.loc 1 359 0
	l32r	a8, .LC83
	memw
	l32i.n	a11, a8, 0
	l32r	a9, .LC84
	and	a9, a11, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 360 0
	memw
	l32i.n	a11, a8, 0
	l32r	a9, .LC85
	and	a9, a11, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 361 0
	movi.n	a8, 0
	memw
	s32i.n	a8, a10, 0
	retw.n
.LFE39:
	.size	esp_panic_wdt_stop, .-esp_panic_wdt_stop
	.section	.rodata.str1.4
	.align	4
.LC89:
	.string	"Register dump:\r\n"
	.align	4
.LC91:
	.string	": 0x"
	.align	4
.LC93:
	.string	"  "
	.align	4
.LC95:
	.string	"\r\n"
	.align	4
.LC97:
	.string	"Rebooting...\r\n"
	.align	4
.LC9:
	.string	"PC      "
	.align	4
.LC10:
	.string	"PS      "
	.align	4
.LC11:
	.string	"A0      "
	.align	4
.LC12:
	.string	"A1      "
	.align	4
.LC13:
	.string	"A2      "
	.align	4
.LC14:
	.string	"A3      "
	.align	4
.LC15:
	.string	"A4      "
	.align	4
.LC16:
	.string	"A5      "
	.align	4
.LC17:
	.string	"A6      "
	.align	4
.LC18:
	.string	"A7      "
	.align	4
.LC19:
	.string	"A8      "
	.align	4
.LC20:
	.string	"A9      "
	.align	4
.LC21:
	.string	"A10     "
	.align	4
.LC22:
	.string	"A11     "
	.align	4
.LC23:
	.string	"A12     "
	.align	4
.LC24:
	.string	"A13     "
	.align	4
.LC25:
	.string	"A14     "
	.align	4
.LC26:
	.string	"A15     "
	.align	4
.LC27:
	.string	"SAR     "
	.align	4
.LC28:
	.string	"EXCCAUSE"
	.align	4
.LC29:
	.string	"EXCVADDR"
	.align	4
.LC30:
	.string	"LBEG    "
	.align	4
.LC31:
	.string	"LEND    "
	.align	4
.LC32:
	.string	"LCOUNT  "
	.section	.rodata
	.align	4
.LC86:
	.word	.LC9
	.word	.LC10
	.word	.LC11
	.word	.LC12
	.word	.LC13
	.word	.LC14
	.word	.LC15
	.word	.LC16
	.word	.LC17
	.word	.LC18
	.word	.LC19
	.word	.LC20
	.word	.LC21
	.word	.LC22
	.word	.LC23
	.word	.LC24
	.word	.LC25
	.word	.LC26
	.word	.LC27
	.word	.LC28
	.word	.LC29
	.word	.LC30
	.word	.LC31
	.word	.LC32
	.section	.text.commonErrorHandler,"ax",@progbits
	.literal_position
	.literal .LC87, .LC86
	.literal .LC88, abort_called
	.literal .LC90, .LC89
	.literal .LC92, .LC91
	.literal .LC94, .LC93
	.literal .LC96, .LC95
	.literal .LC98, .LC97
	.align	4
	.type	commonErrorHandler, @function
commonErrorHandler:
.LFB43:
	.loc 1 418 0
.LVL66:
	entry	sp, 128
.LCFI15:
.LVL67:
	.loc 1 421 0
	movi	a12, 0x60
	l32r	a11, .LC87
	mov.n	a10, sp
	call8	memcpy
.LVL68:
	.loc 1 428 0
	call8	esp_panic_wdt_start
.LVL69:
	.loc 1 431 0
	call8	reconfigureAllWdts
.LVL70:
	.loc 1 436 0
	l32r	a3, .LC88
	l8ui	a3, a3, 0
	bnez.n	a3, .L39
	.loc 1 437 0
	l32r	a10, .LC90
	call8	panicPutStr
.LVL71:
	.loc 1 439 0
	movi.n	a4, 0
	j	.L40
.LVL72:
.L42:
	.loc 1 441 0
	add.n	a3, a4, a5
	addx4	a8, a3, sp
	l32i.n	a10, a8, 0
	l8ui	a8, a10, 0
	beqz.n	a8, .L41
	.loc 1 442 0
	call8	panicPutStr
.LVL73:
	.loc 1 443 0
	l32r	a10, .LC92
	call8	panicPutStr
.LVL74:
	.loc 1 444 0
	addi.n	a3, a3, 1
	addx4	a3, a3, a2
	l32i.n	a10, a3, 0
	call8	panicPutHex
.LVL75:
	.loc 1 445 0
	l32r	a10, .LC94
	call8	panicPutStr
.LVL76:
.L41:
	.loc 1 440 0 discriminator 2
	addi.n	a5, a5, 1
.LVL77:
	j	.L43
.LVL78:
.L45:
	movi.n	a5, 0
.L43:
.LVL79:
	.loc 1 440 0 is_stmt 0 discriminator 1
	blti	a5, 4, .L42
	.loc 1 448 0 is_stmt 1 discriminator 2
	l32r	a10, .LC96
	call8	panicPutStr
.LVL80:
	.loc 1 439 0 discriminator 2
	addi.n	a4, a4, 4
.LVL81:
.L40:
	.loc 1 439 0 is_stmt 0 discriminator 1
	movi.n	a3, 0x17
	bge	a3, a4, .L45
.LVL82:
.L39:
	.loc 1 453 0 is_stmt 1
	mov.n	a10, a2
	call8	doBacktrace
.LVL83:
	.loc 1 489 0
	call8	esp_panic_wdt_stop
.LVL84:
	.loc 1 491 0
	l32r	a10, .LC98
	call8	panicPutStr
.LVL85:
	.loc 1 492 0
	l32i	a2, a2, 80
.LVL86:
	beqi	a2, 7, .L44
	.loc 1 493 0
	call8	esp_restart_noos
.LVL87:
.L44:
	.loc 1 496 0
	call8	esp_panic_dig_reset
.LVL88:
.LFE43:
	.size	commonErrorHandler, .-commonErrorHandler
	.section	.rodata.str1.4
	.align	4
.LC0:
	.string	"Unknown reason"
	.align	4
.LC102:
	.string	"Guru Meditation Error: Core "
	.align	4
.LC104:
	.string	" panic'ed ("
	.align	4
.LC106:
	.string	")\r\n"
	.align	4
.LC108:
	.string	"Debug exception reason: "
	.align	4
.LC110:
	.string	"SingleStep "
	.align	4
.LC112:
	.string	"HwBreakpoint "
	.align	4
.LC114:
	.string	"Watchpoint 1 triggered "
	.align	4
.LC116:
	.string	"Watchpoint 0 triggered "
	.align	4
.LC118:
	.string	"BREAK instr "
	.align	4
.LC120:
	.string	"BREAKN instr "
	.align	4
.LC122:
	.string	"DebugIntr "
	.align	4
.LC1:
	.string	"Unhandled debug exception"
	.align	4
.LC2:
	.string	"Double exception"
	.align	4
.LC3:
	.string	"Unhandled kernel exception"
	.align	4
.LC4:
	.string	"Coprocessor exception"
	.align	4
.LC5:
	.string	"Interrupt wdt timeout on CPU0"
	.align	4
.LC6:
	.string	"Interrupt wdt timeout on CPU1"
	.align	4
.LC7:
	.string	"Cache disabled but cached memory region accessed"
	.section	.rodata
	.align	4
.LC100:
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.word	.LC5
	.word	.LC6
	.word	.LC7
	.section	.text.panicHandler,"ax",@progbits
	.literal_position
	.literal .LC99, .LC0
	.literal .LC101, .LC100
	.literal .LC103, .LC102
	.literal .LC105, .LC104
	.literal .LC107, .LC106
	.literal .LC109, .LC108
	.literal .LC111, .LC110
	.literal .LC113, .LC112
	.literal .LC115, .LC114
	.literal .LC117, .LC116
	.literal .LC119, .LC118
	.literal .LC121, .LC120
	.literal .LC123, .LC122
	.literal .LC124, .LC95
	.align	4
	.global	panicHandler
	.type	panicHandler, @function
panicHandler:
.LFB34:
	.loc 1 190 0
.LVL89:
	entry	sp, 64
.LCFI16:
.LBB26:
.LBB27:
	.loc 3 202 0
#APP
# 202 "C:/esp/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a3
 extui a3,a3,13,1
# 0 "" 2
.LVL90:
#NO_APP
.LBE27:
.LBE26:
	.loc 1 193 0
	movi.n	a12, 0x20
	l32r	a11, .LC101
	mov.n	a10, sp
	call8	memcpy
.LVL91:
	.loc 1 205 0
	l32i	a8, a2, 80
	bgei	a8, 8, .L59
	.loc 1 206 0
	addx4	a4, a8, sp
	l32i.n	a4, a4, 0
.LVL92:
	j	.L47
.LVL93:
.L59:
	.loc 1 203 0
	l32r	a4, .LC99
.LVL94:
.L47:
	.loc 1 208 0
	bnei	a8, 7, .L48
	.loc 1 208 0 is_stmt 0 discriminator 1
	call8	esp_cache_err_get_cpuid
.LVL95:
	bne	a10, a3, .L46
.L48:
	.loc 1 213 0 is_stmt 1
	call8	haltOtherCore
.LVL96:
	.loc 1 214 0
	call8	esp_dport_access_int_abort
.LVL97:
	.loc 1 215 0
	l32r	a10, .LC103
	call8	panicPutStr
.LVL98:
	.loc 1 216 0
	mov.n	a10, a3
	call8	panicPutDec
.LVL99:
	.loc 1 217 0
	l32r	a10, .LC105
	call8	panicPutStr
.LVL100:
	.loc 1 218 0
	mov.n	a10, a4
	call8	panicPutStr
.LVL101:
	.loc 1 219 0
	l32r	a10, .LC107
	call8	panicPutStr
.LVL102:
	.loc 1 220 0
	l32i	a3, a2, 80
.LVL103:
	bnei	a3, 1, .L50
.LBB28:
	.loc 1 222 0
#APP
# 222 "C:/esp/esp-idf/components/esp32/panic.c" 1
	rsr.debugcause a3
# 0 "" 2
.LVL104:
	.loc 1 223 0
#NO_APP
	l32r	a10, .LC109
	call8	panicPutStr
.LVL105:
	.loc 1 224 0
	bbci	a3, 0, .L51
	.loc 1 224 0 is_stmt 0 discriminator 1
	l32r	a10, .LC111
	call8	panicPutStr
.LVL106:
.L51:
	.loc 1 225 0 is_stmt 1
	bbci	a3, 1, .L52
	.loc 1 225 0 is_stmt 0 discriminator 1
	l32r	a10, .LC113
	call8	panicPutStr
.LVL107:
.L52:
	.loc 1 226 0 is_stmt 1
	bbci	a3, 2, .L53
	.loc 1 230 0
	bbci	a3, 8, .L54
	.loc 1 237 0
	l32r	a10, .LC115
	call8	panicPutStr
.LVL108:
	j	.L53
.L54:
	.loc 1 240 0
	l32r	a10, .LC117
	call8	panicPutStr
.LVL109:
.L53:
	.loc 1 243 0
	bbci	a3, 3, .L55
	.loc 1 243 0 is_stmt 0 discriminator 1
	l32r	a10, .LC119
	call8	panicPutStr
.LVL110:
.L55:
	.loc 1 244 0 is_stmt 1
	bbci	a3, 4, .L56
	.loc 1 244 0 is_stmt 0 discriminator 1
	l32r	a10, .LC121
	call8	panicPutStr
.LVL111:
.L56:
	.loc 1 245 0 is_stmt 1
	bbci	a3, 5, .L57
	.loc 1 245 0 is_stmt 0 discriminator 1
	l32r	a10, .LC123
	call8	panicPutStr
.LVL112:
.L57:
	.loc 1 246 0 is_stmt 1
	l32r	a10, .LC124
	call8	panicPutStr
.LVL113:
.L50:
.LBE28:
	.loc 1 249 0
	call8	esp_cpu_in_ocd_debug_mode
.LVL114:
	beqz.n	a10, .L58
	.loc 1 258 0
	l32i.n	a10, a2, 4
	call8	setFirstBreakpoint
.LVL115:
	.loc 1 259 0
	retw.n
.L58:
	.loc 1 261 0
	mov.n	a10, a2
	call8	commonErrorHandler
.LVL116:
.L46:
	retw.n
.LFE34:
	.size	panicHandler, .-panicHandler
	.section	.rodata.str1.4
	.align	4
.LC126:
	.string	"Guru Meditation Error of type "
	.align	4
.LC129:
	.string	"Unknown"
	.align	4
.LC131:
	.string	" occurred on core "
	.align	4
.LC133:
	.string	" at pc="
	.align	4
.LC135:
	.string	". Setting bp and returning..\r\n"
	.align	4
.LC137:
	.string	". Exception was unhandled.\r\n"
	.section	.text.xt_unhandled_exception,"ax",@progbits
	.literal_position
	.literal .LC125, abort_called
	.literal .LC127, .LC126
	.literal .LC128, edesc
	.literal .LC130, .LC129
	.literal .LC132, .LC131
	.literal .LC134, .LC133
	.literal .LC136, .LC135
	.literal .LC138, .LC137
	.align	4
	.global	xt_unhandled_exception
	.type	xt_unhandled_exception, @function
xt_unhandled_exception:
.LFB35:
	.loc 1 265 0
.LVL117:
	entry	sp, 32
.LCFI17:
	.loc 1 266 0
	call8	haltOtherCore
.LVL118:
	.loc 1 267 0
	call8	esp_dport_access_int_abort
.LVL119:
	.loc 1 268 0
	l32r	a8, .LC125
	l8ui	a8, a8, 0
	bnez.n	a8, .L61
.LBB29:
	.loc 1 269 0
	l32r	a10, .LC127
	call8	panicPutStr
.LVL120:
	.loc 1 270 0
	l32i	a8, a2, 80
.LVL121:
	.loc 1 271 0
	movi.n	a9, 0x27
	bltu	a9, a8, .L62
	.loc 1 272 0
	l32r	a9, .LC128
	addx4	a8, a8, a9
.LVL122:
	l32i.n	a10, a8, 0
	call8	panicPutStr
.LVL123:
	j	.L63
.LVL124:
.L62:
	.loc 1 274 0
	l32r	a10, .LC130
	call8	panicPutStr
.LVL125:
.L63:
	.loc 1 276 0
	l32r	a10, .LC132
	call8	panicPutStr
.LVL126:
.LBB30:
.LBB31:
	.loc 3 202 0
#APP
# 202 "C:/esp/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a10
 extui a10,a10,13,1
# 0 "" 2
.LVL127:
#NO_APP
.LBE31:
.LBE30:
	.loc 1 277 0
	call8	panicPutDec
.LVL128:
	.loc 1 278 0
	call8	esp_cpu_in_ocd_debug_mode
.LVL129:
	beqz.n	a10, .L64
	.loc 1 279 0
	l32r	a10, .LC134
	call8	panicPutStr
.LVL130:
	.loc 1 280 0
	l32i.n	a10, a2, 4
	call8	panicPutHex
.LVL131:
	.loc 1 281 0
	l32r	a10, .LC136
	call8	panicPutStr
.LVL132:
	.loc 1 292 0
	l32i.n	a10, a2, 4
	call8	setFirstBreakpoint
.LVL133:
	.loc 1 293 0
	retw.n
.L64:
	.loc 1 295 0
	l32r	a10, .LC138
	call8	panicPutStr
.LVL134:
.L61:
.LBE29:
	.loc 1 297 0
	mov.n	a10, a2
	call8	commonErrorHandler
.LVL135:
.LFE35:
	.size	xt_unhandled_exception, .-xt_unhandled_exception
	.section	.text.esp_set_breakpoint_if_jtag,"ax",@progbits
	.align	4
	.global	esp_set_breakpoint_if_jtag
	.type	esp_set_breakpoint_if_jtag, @function
esp_set_breakpoint_if_jtag:
.LFB44:
	.loc 1 508 0
.LVL136:
	entry	sp, 32
.LCFI18:
	.loc 1 509 0
	call8	esp_cpu_in_ocd_debug_mode
.LVL137:
	beqz.n	a10, .L66
	.loc 1 510 0
	mov.n	a10, a2
	call8	setFirstBreakpoint
.LVL138:
.L66:
	retw.n
.LFE44:
	.size	esp_set_breakpoint_if_jtag, .-esp_set_breakpoint_if_jtag
	.section	.text.esp_set_watchpoint,"ax",@progbits
	.literal_position
	.literal .LC139, 1073741823
	.align	4
	.global	esp_set_watchpoint
	.type	esp_set_watchpoint, @function
esp_set_watchpoint:
.LFB45:
	.loc 1 516 0
.LVL139:
	entry	sp, 32
.LCFI19:
	.loc 1 518 0
	bgeui	a2, 2, .L74
	.loc 1 519 0
	l32r	a8, .LC139
	bany	a5, a8, .L75
	movi.n	a10, 0x3f
	movi.n	a8, 0
	j	.L70
.LVL140:
.L72:
	.loc 1 523 0
	movi.n	a9, 1
	ssl	a8
	sll	a9, a9
	beq	a9, a4, .L71
	.loc 1 524 0 discriminator 2
	slli	a10, a10, 1
.LVL141:
	.loc 1 522 0 discriminator 2
	addi.n	a8, a8, 1
.LVL142:
.L70:
	.loc 1 522 0 is_stmt 0 discriminator 1
	blti	a8, 7, .L72
.L71:
	.loc 1 526 0 is_stmt 1
	beqi	a8, 7, .L76
	.loc 1 528 0
	extui	a10, a10, 0, 6
.LVL143:
	or	a5, a5, a10
.LVL144:
	.loc 1 530 0
	bnez.n	a2, .L73
	.loc 1 531 0
#APP
# 531 "C:/esp/esp-idf/components/esp32/panic.c" 1
	wsr.dbreaka0 a3
wsr.dbreakc0 a5

# 0 "" 2
#NO_APP
	retw.n
.L73:
	.loc 1 536 0
#APP
# 536 "C:/esp/esp-idf/components/esp32/panic.c" 1
	wsr.dbreaka1 a3
wsr.dbreakc1 a5

# 0 "" 2
	.loc 1 541 0
#NO_APP
	movi.n	a2, 0
.LVL145:
	retw.n
.LVL146:
.L74:
	.loc 1 518 0
	movi	a2, 0x102
.LVL147:
	retw.n
.LVL148:
.L75:
	.loc 1 519 0
	movi	a2, 0x102
.LVL149:
	retw.n
.LVL150:
.L76:
	.loc 1 526 0
	movi	a2, 0x102
.LVL151:
	.loc 1 542 0
	retw.n
.LFE45:
	.size	esp_set_watchpoint, .-esp_set_watchpoint
	.section	.text.esp_clear_watchpoint,"ax",@progbits
	.align	4
	.global	esp_clear_watchpoint
	.type	esp_clear_watchpoint, @function
esp_clear_watchpoint:
.LFB46:
	.loc 1 545 0
.LVL152:
	entry	sp, 32
.LCFI20:
.LVL153:
	.loc 1 548 0
	bnez.n	a2, .L78
	.loc 1 549 0
	movi.n	a8, 0
#APP
# 549 "C:/esp/esp-idf/components/esp32/panic.c" 1
	wsr.dbreakc0 a8

# 0 "" 2
#NO_APP
	retw.n
.L78:
	.loc 1 553 0
	movi.n	a8, 0
#APP
# 553 "C:/esp/esp-idf/components/esp32/panic.c" 1
	wsr.dbreakc1 a8

# 0 "" 2
#NO_APP
	retw.n
.LFE46:
	.size	esp_clear_watchpoint, .-esp_clear_watchpoint
	.section	.rodata.str1.4
	.align	4
.LC141:
	.string	"ESP_ERROR_CHECK failed: esp_err_t 0x%x at 0x%08x\n"
	.align	4
.LC143:
	.string	"file: \"%s\" line %d\nfunc: %s\nexpression: %s\n"
	.section	.text._esp_error_check_failed,"ax",@progbits
	.literal_position
	.literal .LC140, .L81
	.literal .LC142, .LC141
	.literal .LC144, .LC143
	.align	4
	.global	_esp_error_check_failed
	.type	_esp_error_check_failed, @function
_esp_error_check_failed:
.LFB47:
	.loc 1 560 0
.LVL154:
	entry	sp, 32
.LCFI21:
.L81:
	.loc 1 561 0
	l32r	a8, .LC140
	extui	a8, a8, 30, 2
	slli	a8, a8, 30
	slli	a12, a0, 2
	srli	a12, a12, 2
	or	a12, a12, a8
	addi	a12, a12, -3
	mov.n	a11, a2
	l32r	a10, .LC142
	call8	ets_printf
.LVL155:
	.loc 1 562 0
	call8	spi_flash_cache_enabled
.LVL156:
	beqz.n	a10, .L82
	.loc 1 563 0
	mov.n	a14, a6
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a3
	l32r	a10, .LC144
	call8	ets_printf
.LVL157:
.L82:
	.loc 1 565 0
	call8	invoke_abort
.LVL158:
.LFE47:
	.size	_esp_error_check_failed, .-_esp_error_check_failed
	.section	.rodata.str1.4
	.align	4
.LC145:
	.string	"IllegalInstruction"
	.align	4
.LC146:
	.string	"Syscall"
	.align	4
.LC147:
	.string	"InstructionFetchError"
	.align	4
.LC148:
	.string	"LoadStoreError"
	.align	4
.LC149:
	.string	"Level1Interrupt"
	.align	4
.LC150:
	.string	"Alloca"
	.align	4
.LC151:
	.string	"IntegerDivideByZero"
	.align	4
.LC152:
	.string	"PCValue"
	.align	4
.LC153:
	.string	"Privileged"
	.align	4
.LC154:
	.string	"LoadStoreAlignment"
	.align	4
.LC155:
	.string	"res"
	.align	4
.LC156:
	.string	"InstrPDAddrError"
	.align	4
.LC157:
	.string	"LoadStorePIFDataError"
	.align	4
.LC158:
	.string	"InstrPIFAddrError"
	.align	4
.LC159:
	.string	"LoadStorePIFAddrError"
	.align	4
.LC160:
	.string	"InstTLBMiss"
	.align	4
.LC161:
	.string	"InstTLBMultiHit"
	.align	4
.LC162:
	.string	"InstFetchPrivilege"
	.align	4
.LC163:
	.string	"InstrFetchProhibited"
	.align	4
.LC164:
	.string	"LoadStoreTLBMiss"
	.align	4
.LC165:
	.string	"LoadStoreTLBMultihit"
	.align	4
.LC166:
	.string	"LoadStorePrivilege"
	.align	4
.LC167:
	.string	"LoadProhibited"
	.align	4
.LC168:
	.string	"StoreProhibited"
	.align	4
.LC169:
	.string	"Cp0Dis"
	.align	4
.LC170:
	.string	"Cp1Dis"
	.align	4
.LC171:
	.string	"Cp2Dis"
	.align	4
.LC172:
	.string	"Cp3Dis"
	.align	4
.LC173:
	.string	"Cp4Dis"
	.align	4
.LC174:
	.string	"Cp5Dis"
	.align	4
.LC175:
	.string	"Cp6Dis"
	.align	4
.LC176:
	.string	"Cp7Dis"
	.section	.rodata.edesc,"a",@progbits
	.align	4
	.type	edesc, @object
	.size	edesc, 160
edesc:
	.word	.LC145
	.word	.LC146
	.word	.LC147
	.word	.LC148
	.word	.LC149
	.word	.LC150
	.word	.LC151
	.word	.LC152
	.word	.LC153
	.word	.LC154
	.word	.LC155
	.word	.LC155
	.word	.LC156
	.word	.LC157
	.word	.LC158
	.word	.LC159
	.word	.LC160
	.word	.LC161
	.word	.LC162
	.word	.LC155
	.word	.LC163
	.word	.LC155
	.word	.LC155
	.word	.LC155
	.word	.LC164
	.word	.LC165
	.word	.LC166
	.word	.LC155
	.word	.LC167
	.word	.LC168
	.word	.LC155
	.word	.LC155
	.word	.LC169
	.word	.LC170
	.word	.LC171
	.word	.LC172
	.word	.LC173
	.word	.LC174
	.word	.LC175
	.word	.LC176
	.section	.bss.abort_called,"aw",@nobits
	.type	abort_called, @object
	.size	abort_called, 1
abort_called:
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
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI0-.LFB25
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI1-.LFB26
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI2-.LFB27
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
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI4-.LFB33
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI5-.LFB36
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.byte	0x4
	.4byte	.LCFI6-.LFB41
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.byte	0x4
	.4byte	.LCFI7-.LFB42
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
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI9-.LFB32
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x4
	.4byte	.LCFI10-.LFB38
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x4
	.4byte	.LCFI11-.LFB40
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI12-.LFB31
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI13-.LFB29
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x4
	.4byte	.LCFI14-.LFB39
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.byte	0x4
	.4byte	.LCFI15-.LFB43
	.byte	0xe
	.uleb128 0x80
	.align	4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI16-.LFB34
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI17-.LFB35
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.byte	0x4
	.4byte	.LCFI18-.LFB44
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.byte	0x4
	.4byte	.LCFI19-.LFB45
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE38:
.LSFDE40:
	.4byte	.LEFDE40-.LASFDE40
.LASFDE40:
	.4byte	.Lframe0
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.byte	0x4
	.4byte	.LCFI20-.LFB46
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE40:
.LSFDE42:
	.4byte	.LEFDE42-.LASFDE42
.LASFDE42:
	.4byte	.Lframe0
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.byte	0x4
	.4byte	.LCFI21-.LFB47
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE42:
	.text
.Letext0:
	.file 5 "C:/esp/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 6 "C:/esp/esp-idf/components/newlib/include/stdint.h"
	.file 7 "C:/esp/esp-idf/components/esp32/include/rom/rtc.h"
	.file 8 "C:/esp/esp-idf/components/freertos/include/freertos/xtensa_context.h"
	.file 9 "C:/esp/esp-idf/components/esp32/include/esp_err.h"
	.file 10 "C:/esp/esp-idf/components/freertos/include/freertos/task.h"
	.file 11 "C:/esp/esp-idf/components/soc/esp32/include/soc/timer_group_struct.h"
	.file 12 "C:/esp/esp-idf/components/soc/esp32/include/soc/rtc.h"
	.file 13 "C:/esp/esp-idf/components/soc/esp32/include/soc/cpu.h"
	.file 14 "C:/esp/esp-idf/components/esp32/include/rom/ets_sys.h"
	.file 15 "C:/esp/esp-idf/components/esp32/include/esp_system.h"
	.file 16 "C:/esp/esp-idf/components/esp32/include/esp_cache_err_int.h"
	.file 17 "C:/esp/esp-idf/components/esp32/include/esp_dport_access.h"
	.file 18 "C:/esp/esp-idf/components/spi_flash/include/esp_spi_flash.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x17b4
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF191
	.byte	0xc
	.4byte	.LASF192
	.4byte	.LASF193
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF3
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x5
	.byte	0x12
	.4byte	0x53
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x5
	.byte	0x19
	.4byte	0x33
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x5
	.byte	0x1a
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x4
	.4byte	.LASF10
	.byte	0x5
	.byte	0x31
	.4byte	0x33
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0x6
	.byte	0x4
	.4byte	0xad
	.uleb128 0x7
	.4byte	0xa0
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x6
	.byte	0x15
	.4byte	0x48
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x6
	.byte	0x2c
	.4byte	0x61
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x6
	.byte	0x2d
	.4byte	0x6c
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x6
	.byte	0xa9
	.4byte	0x7e
	.uleb128 0x8
	.byte	0x4
	.4byte	0x2c
	.byte	0x7
	.byte	0x63
	.4byte	0x136
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x20
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x40
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0x80
	.uleb128 0xa
	.4byte	.LASF28
	.2byte	0x100
	.uleb128 0xa
	.4byte	.LASF29
	.2byte	0x200
	.uleb128 0xa
	.4byte	.LASF30
	.2byte	0x400
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x2c
	.byte	0x7
	.byte	0x81
	.4byte	0x167
	.uleb128 0x9
	.4byte	.LASF31
	.byte	0
	.uleb128 0x9
	.4byte	.LASF32
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF33
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF34
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF35
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.byte	0x70
	.byte	0x8
	.byte	0x67
	.4byte	0x2b4
	.uleb128 0xc
	.4byte	.LASF37
	.byte	0x8
	.byte	0x68
	.4byte	0x89
	.byte	0
	.uleb128 0xd
	.string	"pc"
	.byte	0x8
	.byte	0x69
	.4byte	0x89
	.byte	0x4
	.uleb128 0xd
	.string	"ps"
	.byte	0x8
	.byte	0x6a
	.4byte	0x89
	.byte	0x8
	.uleb128 0xd
	.string	"a0"
	.byte	0x8
	.byte	0x6b
	.4byte	0x89
	.byte	0xc
	.uleb128 0xd
	.string	"a1"
	.byte	0x8
	.byte	0x6c
	.4byte	0x89
	.byte	0x10
	.uleb128 0xd
	.string	"a2"
	.byte	0x8
	.byte	0x6d
	.4byte	0x89
	.byte	0x14
	.uleb128 0xd
	.string	"a3"
	.byte	0x8
	.byte	0x6e
	.4byte	0x89
	.byte	0x18
	.uleb128 0xd
	.string	"a4"
	.byte	0x8
	.byte	0x6f
	.4byte	0x89
	.byte	0x1c
	.uleb128 0xd
	.string	"a5"
	.byte	0x8
	.byte	0x70
	.4byte	0x89
	.byte	0x20
	.uleb128 0xd
	.string	"a6"
	.byte	0x8
	.byte	0x71
	.4byte	0x89
	.byte	0x24
	.uleb128 0xd
	.string	"a7"
	.byte	0x8
	.byte	0x72
	.4byte	0x89
	.byte	0x28
	.uleb128 0xd
	.string	"a8"
	.byte	0x8
	.byte	0x73
	.4byte	0x89
	.byte	0x2c
	.uleb128 0xd
	.string	"a9"
	.byte	0x8
	.byte	0x74
	.4byte	0x89
	.byte	0x30
	.uleb128 0xd
	.string	"a10"
	.byte	0x8
	.byte	0x75
	.4byte	0x89
	.byte	0x34
	.uleb128 0xd
	.string	"a11"
	.byte	0x8
	.byte	0x76
	.4byte	0x89
	.byte	0x38
	.uleb128 0xd
	.string	"a12"
	.byte	0x8
	.byte	0x77
	.4byte	0x89
	.byte	0x3c
	.uleb128 0xd
	.string	"a13"
	.byte	0x8
	.byte	0x78
	.4byte	0x89
	.byte	0x40
	.uleb128 0xd
	.string	"a14"
	.byte	0x8
	.byte	0x79
	.4byte	0x89
	.byte	0x44
	.uleb128 0xd
	.string	"a15"
	.byte	0x8
	.byte	0x7a
	.4byte	0x89
	.byte	0x48
	.uleb128 0xd
	.string	"sar"
	.byte	0x8
	.byte	0x7b
	.4byte	0x89
	.byte	0x4c
	.uleb128 0xc
	.4byte	.LASF38
	.byte	0x8
	.byte	0x7c
	.4byte	0x89
	.byte	0x50
	.uleb128 0xc
	.4byte	.LASF39
	.byte	0x8
	.byte	0x7d
	.4byte	0x89
	.byte	0x54
	.uleb128 0xc
	.4byte	.LASF40
	.byte	0x8
	.byte	0x7f
	.4byte	0x89
	.byte	0x58
	.uleb128 0xc
	.4byte	.LASF41
	.byte	0x8
	.byte	0x80
	.4byte	0x89
	.byte	0x5c
	.uleb128 0xc
	.4byte	.LASF42
	.byte	0x8
	.byte	0x81
	.4byte	0x89
	.byte	0x60
	.uleb128 0xc
	.4byte	.LASF43
	.byte	0x8
	.byte	0x85
	.4byte	0x89
	.byte	0x64
	.uleb128 0xc
	.4byte	.LASF44
	.byte	0x8
	.byte	0x86
	.4byte	0x89
	.byte	0x68
	.uleb128 0xc
	.4byte	.LASF45
	.byte	0x8
	.byte	0x87
	.4byte	0x89
	.byte	0x6c
	.byte	0
	.uleb128 0x4
	.4byte	.LASF46
	.byte	0x8
	.byte	0x91
	.4byte	0x167
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF47
	.uleb128 0x4
	.4byte	.LASF48
	.byte	0x9
	.byte	0x18
	.4byte	0xbd
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2b4
	.uleb128 0x4
	.4byte	.LASF49
	.byte	0xa
	.byte	0x6c
	.4byte	0x97
	.uleb128 0xb
	.byte	0x4
	.byte	0xb
	.byte	0x18
	.4byte	0x363
	.uleb128 0xe
	.4byte	.LASF50
	.byte	0xb
	.byte	0x19
	.4byte	0xc8
	.byte	0x4
	.byte	0xa
	.byte	0x16
	.byte	0
	.uleb128 0xe
	.4byte	.LASF51
	.byte	0xb
	.byte	0x1a
	.4byte	0xc8
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xe
	.4byte	.LASF52
	.byte	0xb
	.byte	0x1b
	.4byte	0xc8
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.4byte	.LASF53
	.byte	0xb
	.byte	0x1c
	.4byte	0xc8
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xe
	.4byte	.LASF54
	.byte	0xb
	.byte	0x1d
	.4byte	0xc8
	.byte	0x4
	.byte	0x10
	.byte	0x3
	.byte	0
	.uleb128 0xe
	.4byte	.LASF55
	.byte	0xb
	.byte	0x1e
	.4byte	0xc8
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.4byte	.LASF56
	.byte	0xb
	.byte	0x1f
	.4byte	0xc8
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.4byte	.LASF57
	.byte	0xb
	.byte	0x20
	.4byte	0xc8
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.byte	0xb
	.byte	0x17
	.4byte	0x37c
	.uleb128 0x10
	.4byte	0x2e2
	.uleb128 0x11
	.string	"val"
	.byte	0xb
	.byte	0x22
	.4byte	0xc8
	.byte	0
	.uleb128 0xb
	.byte	0x24
	.byte	0xb
	.byte	0x16
	.4byte	0x3f1
	.uleb128 0xc
	.4byte	.LASF58
	.byte	0xb
	.byte	0x23
	.4byte	0x363
	.byte	0
	.uleb128 0xc
	.4byte	.LASF59
	.byte	0xb
	.byte	0x24
	.4byte	0xc8
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF60
	.byte	0xb
	.byte	0x25
	.4byte	0xc8
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF61
	.byte	0xb
	.byte	0x26
	.4byte	0xc8
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF62
	.byte	0xb
	.byte	0x27
	.4byte	0xc8
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF63
	.byte	0xb
	.byte	0x28
	.4byte	0xc8
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF64
	.byte	0xb
	.byte	0x29
	.4byte	0xc8
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF65
	.byte	0xb
	.byte	0x2a
	.4byte	0xc8
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF66
	.byte	0xb
	.byte	0x2b
	.4byte	0xc8
	.byte	0x20
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0xb
	.byte	0x2e
	.4byte	0x49e
	.uleb128 0xe
	.4byte	.LASF50
	.byte	0xb
	.byte	0x2f
	.4byte	0xc8
	.byte	0x4
	.byte	0xe
	.byte	0x12
	.byte	0
	.uleb128 0xe
	.4byte	.LASF67
	.byte	0xb
	.byte	0x30
	.4byte	0xc8
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xe
	.4byte	.LASF68
	.byte	0xb
	.byte	0x31
	.4byte	0xc8
	.byte	0x4
	.byte	0x3
	.byte	0xe
	.byte	0
	.uleb128 0xe
	.4byte	.LASF69
	.byte	0xb
	.byte	0x32
	.4byte	0xc8
	.byte	0x4
	.byte	0x3
	.byte	0xb
	.byte	0
	.uleb128 0xe
	.4byte	.LASF52
	.byte	0xb
	.byte	0x33
	.4byte	0xc8
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xe
	.4byte	.LASF53
	.byte	0xb
	.byte	0x34
	.4byte	0xc8
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xe
	.4byte	.LASF70
	.byte	0xb
	.byte	0x35
	.4byte	0xc8
	.byte	0x4
	.byte	0x2
	.byte	0x7
	.byte	0
	.uleb128 0xe
	.4byte	.LASF71
	.byte	0xb
	.byte	0x36
	.4byte	0xc8
	.byte	0x4
	.byte	0x2
	.byte	0x5
	.byte	0
	.uleb128 0xe
	.4byte	.LASF72
	.byte	0xb
	.byte	0x37
	.4byte	0xc8
	.byte	0x4
	.byte	0x2
	.byte	0x3
	.byte	0
	.uleb128 0xe
	.4byte	.LASF73
	.byte	0xb
	.byte	0x38
	.4byte	0xc8
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0
	.uleb128 0x12
	.string	"en"
	.byte	0xb
	.byte	0x39
	.4byte	0xc8
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.byte	0xb
	.byte	0x2d
	.4byte	0x4b7
	.uleb128 0x10
	.4byte	0x3f1
	.uleb128 0x11
	.string	"val"
	.byte	0xb
	.byte	0x3b
	.4byte	0xc8
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0xb
	.byte	0x3e
	.4byte	0x4de
	.uleb128 0xe
	.4byte	.LASF50
	.byte	0xb
	.byte	0x3f
	.4byte	0xc8
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.4byte	.LASF74
	.byte	0xb
	.byte	0x40
	.4byte	0xc8
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.byte	0xb
	.byte	0x3d
	.4byte	0x4f7
	.uleb128 0x10
	.4byte	0x4b7
	.uleb128 0x11
	.string	"val"
	.byte	0xb
	.byte	0x42
	.4byte	0xc8
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0xb
	.byte	0x4b
	.4byte	0x55a
	.uleb128 0xe
	.4byte	.LASF50
	.byte	0xb
	.byte	0x4c
	.4byte	0xc8
	.byte	0x4
	.byte	0xc
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.4byte	.LASF75
	.byte	0xb
	.byte	0x4d
	.4byte	0xc8
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xe
	.4byte	.LASF76
	.byte	0xb
	.byte	0x4e
	.4byte	0xc8
	.byte	0x4
	.byte	0x2
	.byte	0x11
	.byte	0
	.uleb128 0x12
	.string	"rdy"
	.byte	0xb
	.byte	0x4f
	.4byte	0xc8
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x12
	.string	"max"
	.byte	0xb
	.byte	0x50
	.4byte	0xc8
	.byte	0x4
	.byte	0xf
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.4byte	.LASF77
	.byte	0xb
	.byte	0x51
	.4byte	0xc8
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.byte	0xb
	.byte	0x4a
	.4byte	0x573
	.uleb128 0x10
	.4byte	0x4f7
	.uleb128 0x11
	.string	"val"
	.byte	0xb
	.byte	0x53
	.4byte	0xc8
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0xb
	.byte	0x56
	.4byte	0x59a
	.uleb128 0xe
	.4byte	.LASF50
	.byte	0xb
	.byte	0x57
	.4byte	0xc8
	.byte	0x4
	.byte	0x7
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.4byte	.LASF78
	.byte	0xb
	.byte	0x58
	.4byte	0xc8
	.byte	0x4
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.byte	0xb
	.byte	0x55
	.4byte	0x5b3
	.uleb128 0x10
	.4byte	0x573
	.uleb128 0x11
	.string	"val"
	.byte	0xb
	.byte	0x5a
	.4byte	0xc8
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0xb
	.byte	0x5d
	.4byte	0x660
	.uleb128 0xe
	.4byte	.LASF50
	.byte	0xb
	.byte	0x5e
	.4byte	0xc8
	.byte	0x4
	.byte	0x7
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.4byte	.LASF79
	.byte	0xb
	.byte	0x5f
	.4byte	0xc8
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.4byte	.LASF80
	.byte	0xb
	.byte	0x60
	.4byte	0xc8
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xe
	.4byte	.LASF81
	.byte	0xb
	.byte	0x61
	.4byte	0xc8
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xe
	.4byte	.LASF51
	.byte	0xb
	.byte	0x62
	.4byte	0xc8
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xe
	.4byte	.LASF52
	.byte	0xb
	.byte	0x63
	.4byte	0xc8
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.4byte	.LASF53
	.byte	0xb
	.byte	0x64
	.4byte	0xc8
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xe
	.4byte	.LASF54
	.byte	0xb
	.byte	0x65
	.4byte	0xc8
	.byte	0x4
	.byte	0x10
	.byte	0x3
	.byte	0
	.uleb128 0xe
	.4byte	.LASF55
	.byte	0xb
	.byte	0x66
	.4byte	0xc8
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.4byte	.LASF56
	.byte	0xb
	.byte	0x67
	.4byte	0xc8
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x12
	.string	"en"
	.byte	0xb
	.byte	0x68
	.4byte	0xc8
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.byte	0xb
	.byte	0x5c
	.4byte	0x679
	.uleb128 0x10
	.4byte	0x5b3
	.uleb128 0x11
	.string	"val"
	.byte	0xb
	.byte	0x6a
	.4byte	0xc8
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0xb
	.byte	0x6d
	.4byte	0x6a0
	.uleb128 0xe
	.4byte	.LASF50
	.byte	0xb
	.byte	0x6e
	.4byte	0xc8
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0
	.uleb128 0xe
	.4byte	.LASF82
	.byte	0xb
	.byte	0x6f
	.4byte	0xc8
	.byte	0x4
	.byte	0x1a
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.byte	0xb
	.byte	0x6c
	.4byte	0x6b9
	.uleb128 0x10
	.4byte	0x679
	.uleb128 0x11
	.string	"val"
	.byte	0xb
	.byte	0x71
	.4byte	0xc8
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0xb
	.byte	0x7c
	.4byte	0x70b
	.uleb128 0x12
	.string	"t0"
	.byte	0xb
	.byte	0x7d
	.4byte	0xc8
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x12
	.string	"t1"
	.byte	0xb
	.byte	0x7e
	.4byte	0xc8
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x12
	.string	"wdt"
	.byte	0xb
	.byte	0x7f
	.4byte	0xc8
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.4byte	.LASF83
	.byte	0xb
	.byte	0x80
	.4byte	0xc8
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.4byte	.LASF84
	.byte	0xb
	.byte	0x81
	.4byte	0xc8
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.byte	0xb
	.byte	0x7b
	.4byte	0x724
	.uleb128 0x10
	.4byte	0x6b9
	.uleb128 0x11
	.string	"val"
	.byte	0xb
	.byte	0x83
	.4byte	0xc8
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0xb
	.byte	0x86
	.4byte	0x776
	.uleb128 0x12
	.string	"t0"
	.byte	0xb
	.byte	0x87
	.4byte	0xc8
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x12
	.string	"t1"
	.byte	0xb
	.byte	0x88
	.4byte	0xc8
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x12
	.string	"wdt"
	.byte	0xb
	.byte	0x89
	.4byte	0xc8
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.4byte	.LASF83
	.byte	0xb
	.byte	0x8a
	.4byte	0xc8
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.4byte	.LASF84
	.byte	0xb
	.byte	0x8b
	.4byte	0xc8
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.byte	0xb
	.byte	0x85
	.4byte	0x78f
	.uleb128 0x10
	.4byte	0x724
	.uleb128 0x11
	.string	"val"
	.byte	0xb
	.byte	0x8d
	.4byte	0xc8
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0xb
	.byte	0x90
	.4byte	0x7e1
	.uleb128 0x12
	.string	"t0"
	.byte	0xb
	.byte	0x91
	.4byte	0xc8
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x12
	.string	"t1"
	.byte	0xb
	.byte	0x92
	.4byte	0xc8
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x12
	.string	"wdt"
	.byte	0xb
	.byte	0x93
	.4byte	0xc8
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.4byte	.LASF83
	.byte	0xb
	.byte	0x94
	.4byte	0xc8
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.4byte	.LASF84
	.byte	0xb
	.byte	0x95
	.4byte	0xc8
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.byte	0xb
	.byte	0x8f
	.4byte	0x7fa
	.uleb128 0x10
	.4byte	0x78f
	.uleb128 0x11
	.string	"val"
	.byte	0xb
	.byte	0x97
	.4byte	0xc8
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0xb
	.byte	0x9a
	.4byte	0x84c
	.uleb128 0x12
	.string	"t0"
	.byte	0xb
	.byte	0x9b
	.4byte	0xc8
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x12
	.string	"t1"
	.byte	0xb
	.byte	0x9c
	.4byte	0xc8
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x12
	.string	"wdt"
	.byte	0xb
	.byte	0x9d
	.4byte	0xc8
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.4byte	.LASF83
	.byte	0xb
	.byte	0x9e
	.4byte	0xc8
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.4byte	.LASF84
	.byte	0xb
	.byte	0x9f
	.4byte	0xc8
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.byte	0xb
	.byte	0x99
	.4byte	0x865
	.uleb128 0x10
	.4byte	0x7fa
	.uleb128 0x11
	.string	"val"
	.byte	0xb
	.byte	0xa1
	.4byte	0xc8
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0xb
	.byte	0xb8
	.4byte	0x88c
	.uleb128 0xe
	.4byte	.LASF85
	.byte	0xb
	.byte	0xb9
	.4byte	0xc8
	.byte	0x4
	.byte	0x1c
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.4byte	.LASF86
	.byte	0xb
	.byte	0xba
	.4byte	0xc8
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.byte	0xb
	.byte	0xb7
	.4byte	0x8a5
	.uleb128 0x10
	.4byte	0x865
	.uleb128 0x11
	.string	"val"
	.byte	0xb
	.byte	0xbc
	.4byte	0xc8
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0xb
	.byte	0xbf
	.4byte	0x8cb
	.uleb128 0xe
	.4byte	.LASF50
	.byte	0xb
	.byte	0xc0
	.4byte	0xc8
	.byte	0x4
	.byte	0x1f
	.byte	0x1
	.byte	0
	.uleb128 0x12
	.string	"en"
	.byte	0xb
	.byte	0xc1
	.4byte	0xc8
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.byte	0xb
	.byte	0xbe
	.4byte	0x8e4
	.uleb128 0x10
	.4byte	0x8a5
	.uleb128 0x11
	.string	"val"
	.byte	0xb
	.byte	0xc3
	.4byte	0xc8
	.byte	0
	.uleb128 0x13
	.2byte	0x100
	.byte	0xb
	.byte	0x15
	.4byte	0xb22
	.uleb128 0xc
	.4byte	.LASF87
	.byte	0xb
	.byte	0x2c
	.4byte	0xb22
	.byte	0
	.uleb128 0xc
	.4byte	.LASF88
	.byte	0xb
	.byte	0x3c
	.4byte	0x49e
	.byte	0x48
	.uleb128 0xc
	.4byte	.LASF89
	.byte	0xb
	.byte	0x43
	.4byte	0x4de
	.byte	0x4c
	.uleb128 0xc
	.4byte	.LASF90
	.byte	0xb
	.byte	0x44
	.4byte	0xc8
	.byte	0x50
	.uleb128 0xc
	.4byte	.LASF91
	.byte	0xb
	.byte	0x45
	.4byte	0xc8
	.byte	0x54
	.uleb128 0xc
	.4byte	.LASF92
	.byte	0xb
	.byte	0x46
	.4byte	0xc8
	.byte	0x58
	.uleb128 0xc
	.4byte	.LASF93
	.byte	0xb
	.byte	0x47
	.4byte	0xc8
	.byte	0x5c
	.uleb128 0xc
	.4byte	.LASF94
	.byte	0xb
	.byte	0x48
	.4byte	0xc8
	.byte	0x60
	.uleb128 0xc
	.4byte	.LASF95
	.byte	0xb
	.byte	0x49
	.4byte	0xc8
	.byte	0x64
	.uleb128 0xc
	.4byte	.LASF96
	.byte	0xb
	.byte	0x54
	.4byte	0x55a
	.byte	0x68
	.uleb128 0xc
	.4byte	.LASF97
	.byte	0xb
	.byte	0x5b
	.4byte	0x59a
	.byte	0x6c
	.uleb128 0xc
	.4byte	.LASF98
	.byte	0xb
	.byte	0x6b
	.4byte	0x660
	.byte	0x70
	.uleb128 0xc
	.4byte	.LASF99
	.byte	0xb
	.byte	0x72
	.4byte	0x6a0
	.byte	0x74
	.uleb128 0xc
	.4byte	.LASF100
	.byte	0xb
	.byte	0x73
	.4byte	0xc8
	.byte	0x78
	.uleb128 0xc
	.4byte	.LASF101
	.byte	0xb
	.byte	0x74
	.4byte	0xc8
	.byte	0x7c
	.uleb128 0xc
	.4byte	.LASF102
	.byte	0xb
	.byte	0x75
	.4byte	0xc8
	.byte	0x80
	.uleb128 0xc
	.4byte	.LASF103
	.byte	0xb
	.byte	0x76
	.4byte	0xc8
	.byte	0x84
	.uleb128 0xc
	.4byte	.LASF104
	.byte	0xb
	.byte	0x77
	.4byte	0xc8
	.byte	0x88
	.uleb128 0xc
	.4byte	.LASF105
	.byte	0xb
	.byte	0x78
	.4byte	0xc8
	.byte	0x8c
	.uleb128 0xc
	.4byte	.LASF106
	.byte	0xb
	.byte	0x79
	.4byte	0xc8
	.byte	0x90
	.uleb128 0xc
	.4byte	.LASF107
	.byte	0xb
	.byte	0x7a
	.4byte	0xc8
	.byte	0x94
	.uleb128 0xc
	.4byte	.LASF108
	.byte	0xb
	.byte	0x84
	.4byte	0x70b
	.byte	0x98
	.uleb128 0xc
	.4byte	.LASF109
	.byte	0xb
	.byte	0x8e
	.4byte	0x776
	.byte	0x9c
	.uleb128 0xc
	.4byte	.LASF110
	.byte	0xb
	.byte	0x98
	.4byte	0x7e1
	.byte	0xa0
	.uleb128 0xc
	.4byte	.LASF111
	.byte	0xb
	.byte	0xa2
	.4byte	0x84c
	.byte	0xa4
	.uleb128 0xc
	.4byte	.LASF112
	.byte	0xb
	.byte	0xa3
	.4byte	0xc8
	.byte	0xa8
	.uleb128 0xc
	.4byte	.LASF113
	.byte	0xb
	.byte	0xa4
	.4byte	0xc8
	.byte	0xac
	.uleb128 0xc
	.4byte	.LASF114
	.byte	0xb
	.byte	0xa5
	.4byte	0xc8
	.byte	0xb0
	.uleb128 0xc
	.4byte	.LASF115
	.byte	0xb
	.byte	0xa6
	.4byte	0xc8
	.byte	0xb4
	.uleb128 0xc
	.4byte	.LASF116
	.byte	0xb
	.byte	0xa7
	.4byte	0xc8
	.byte	0xb8
	.uleb128 0xc
	.4byte	.LASF117
	.byte	0xb
	.byte	0xa8
	.4byte	0xc8
	.byte	0xbc
	.uleb128 0xc
	.4byte	.LASF118
	.byte	0xb
	.byte	0xa9
	.4byte	0xc8
	.byte	0xc0
	.uleb128 0xc
	.4byte	.LASF119
	.byte	0xb
	.byte	0xaa
	.4byte	0xc8
	.byte	0xc4
	.uleb128 0xc
	.4byte	.LASF120
	.byte	0xb
	.byte	0xab
	.4byte	0xc8
	.byte	0xc8
	.uleb128 0xc
	.4byte	.LASF121
	.byte	0xb
	.byte	0xac
	.4byte	0xc8
	.byte	0xcc
	.uleb128 0xc
	.4byte	.LASF122
	.byte	0xb
	.byte	0xad
	.4byte	0xc8
	.byte	0xd0
	.uleb128 0xc
	.4byte	.LASF123
	.byte	0xb
	.byte	0xae
	.4byte	0xc8
	.byte	0xd4
	.uleb128 0xc
	.4byte	.LASF124
	.byte	0xb
	.byte	0xaf
	.4byte	0xc8
	.byte	0xd8
	.uleb128 0xc
	.4byte	.LASF125
	.byte	0xb
	.byte	0xb0
	.4byte	0xc8
	.byte	0xdc
	.uleb128 0xc
	.4byte	.LASF126
	.byte	0xb
	.byte	0xb1
	.4byte	0xc8
	.byte	0xe0
	.uleb128 0xc
	.4byte	.LASF127
	.byte	0xb
	.byte	0xb2
	.4byte	0xc8
	.byte	0xe4
	.uleb128 0xc
	.4byte	.LASF128
	.byte	0xb
	.byte	0xb3
	.4byte	0xc8
	.byte	0xe8
	.uleb128 0xc
	.4byte	.LASF129
	.byte	0xb
	.byte	0xb4
	.4byte	0xc8
	.byte	0xec
	.uleb128 0xc
	.4byte	.LASF130
	.byte	0xb
	.byte	0xb5
	.4byte	0xc8
	.byte	0xf0
	.uleb128 0xc
	.4byte	.LASF131
	.byte	0xb
	.byte	0xb6
	.4byte	0xc8
	.byte	0xf4
	.uleb128 0xc
	.4byte	.LASF132
	.byte	0xb
	.byte	0xbd
	.4byte	0x88c
	.byte	0xf8
	.uleb128 0xd
	.string	"clk"
	.byte	0xb
	.byte	0xc4
	.4byte	0x8cb
	.byte	0xfc
	.byte	0
	.uleb128 0x14
	.4byte	0x37c
	.4byte	0xb32
	.uleb128 0x15
	.4byte	0x90
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF133
	.byte	0xb
	.byte	0xc5
	.4byte	0xb3d
	.uleb128 0x16
	.4byte	0x8e4
	.uleb128 0x8
	.byte	0x4
	.4byte	0x2c
	.byte	0xc
	.byte	0x46
	.4byte	0xb6d
	.uleb128 0x9
	.4byte	.LASF134
	.byte	0
	.uleb128 0x9
	.4byte	.LASF135
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF136
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF137
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF138
	.byte	0x4
	.byte	0
	.uleb128 0x17
	.4byte	.LASF194
	.byte	0x2
	.byte	0x49
	.4byte	0x2bf
	.byte	0x3
	.4byte	0xb88
	.uleb128 0x18
	.string	"sp"
	.byte	0x2
	.byte	0x49
	.4byte	0xc8
	.byte	0
	.uleb128 0x19
	.4byte	.LASF139
	.byte	0x3
	.byte	0xc8
	.4byte	0xc8
	.byte	0x3
	.4byte	0xba3
	.uleb128 0x1a
	.string	"id"
	.byte	0x3
	.byte	0xc9
	.4byte	0x33
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF140
	.byte	0x4
	.2byte	0x10e
	.byte	0x3
	.4byte	0xbbd
	.uleb128 0x1c
	.4byte	.LASF141
	.byte	0x4
	.2byte	0x10e
	.4byte	0xb2
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF142
	.byte	0x1
	.byte	0x40
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbde
	.uleb128 0x1e
	.string	"c"
	.byte	0x1
	.byte	0x40
	.4byte	0xa0
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF143
	.byte	0x1
	.byte	0x46
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc15
	.uleb128 0x1e
	.string	"c"
	.byte	0x1
	.byte	0x46
	.4byte	0xa7
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1f
	.string	"x"
	.byte	0x1
	.byte	0x48
	.4byte	0x33
	.4byte	.LLST0
	.uleb128 0x20
	.4byte	.LVL4
	.4byte	0xbbd
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF144
	.byte	0x1
	.byte	0x4f
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc7e
	.uleb128 0x21
	.string	"a"
	.byte	0x1
	.byte	0x4f
	.4byte	0x33
	.4byte	.LLST1
	.uleb128 0x1f
	.string	"x"
	.byte	0x1
	.byte	0x51
	.4byte	0x33
	.4byte	.LLST2
	.uleb128 0x1f
	.string	"c"
	.byte	0x1
	.byte	0x52
	.4byte	0x33
	.4byte	.LLST3
	.uleb128 0x22
	.4byte	.LVL11
	.4byte	0xbbd
	.4byte	0xc69
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x6
	.byte	0x72
	.sleb128 0
	.byte	0x4c
	.byte	0x25
	.byte	0x23
	.uleb128 0x30
	.byte	0
	.uleb128 0x24
	.4byte	.LVL14
	.4byte	0xbbd
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x6
	.byte	0x72
	.sleb128 0
	.byte	0x4c
	.byte	0x25
	.byte	0x23
	.uleb128 0x57
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF145
	.byte	0x1
	.byte	0x5e
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd13
	.uleb128 0x1e
	.string	"a"
	.byte	0x1
	.byte	0x5e
	.4byte	0x33
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x25
	.string	"n1"
	.byte	0x1
	.byte	0x60
	.4byte	0x33
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1f
	.string	"n2"
	.byte	0x1
	.byte	0x60
	.4byte	0x33
	.4byte	.LLST4
	.uleb128 0x22
	.4byte	.LVL19
	.4byte	0xbbd
	.4byte	0xccc
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x22
	.4byte	.LVL21
	.4byte	0xbbd
	.4byte	0xcff
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x21
	.byte	0x72
	.sleb128 0
	.byte	0xf7
	.uleb128 0x33
	.byte	0xf7
	.uleb128 0x25
	.byte	0xc
	.4byte	0x66666667
	.byte	0xf7
	.uleb128 0x25
	.byte	0x1e
	.byte	0x8
	.byte	0x20
	.byte	0xf7
	.uleb128 0x25
	.byte	0x25
	.byte	0xf7
	.uleb128 0x2c
	.byte	0x32
	.byte	0x26
	.byte	0x72
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x1c
	.byte	0x23
	.uleb128 0x30
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0
	.uleb128 0x24
	.4byte	.LVL22
	.4byte	0xbbd
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x73
	.sleb128 48
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF146
	.byte	0x1
	.byte	0xb1
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd35
	.uleb128 0x1e
	.string	"pc"
	.byte	0x1
	.byte	0xb1
	.4byte	0xc8
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x26
	.4byte	.LASF195
	.byte	0x1
	.2byte	0x134
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x27
	.4byte	.LASF147
	.byte	0x1
	.2byte	0x17c
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdcc
	.uleb128 0x28
	.string	"pc"
	.byte	0x1
	.2byte	0x17c
	.4byte	0xc8
	.4byte	.LLST5
	.uleb128 0x29
	.string	"sp"
	.byte	0x1
	.2byte	0x17c
	.4byte	0xc8
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x22
	.4byte	.LVL27
	.4byte	0xbde
	.4byte	0xd90
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC48
	.byte	0
	.uleb128 0x22
	.4byte	.LVL28
	.4byte	0xc15
	.4byte	0xda4
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL29
	.4byte	0xbde
	.4byte	0xdbb
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC50
	.byte	0
	.uleb128 0x24
	.4byte	.LVL30
	.4byte	0xc15
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LASF148
	.byte	0x1
	.2byte	0x187
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xeaf
	.uleb128 0x2a
	.4byte	.LASF149
	.byte	0x1
	.2byte	0x187
	.4byte	0x2d1
	.4byte	.LLST6
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.2byte	0x189
	.4byte	0xc8
	.4byte	.LLST7
	.uleb128 0x2b
	.string	"pc"
	.byte	0x1
	.2byte	0x189
	.4byte	0xc8
	.4byte	.LLST8
	.uleb128 0x2b
	.string	"sp"
	.byte	0x1
	.2byte	0x189
	.4byte	0xc8
	.4byte	.LLST9
	.uleb128 0x2c
	.4byte	.LBB17
	.4byte	.LBE17-.LBB17
	.4byte	0xe6a
	.uleb128 0x2b
	.string	"psp"
	.byte	0x1
	.2byte	0x18f
	.4byte	0xc8
	.4byte	.LLST10
	.uleb128 0x2d
	.4byte	0xb6d
	.4byte	.LBB18
	.4byte	.LBE18-.LBB18
	.byte	0x1
	.2byte	0x190
	.4byte	0xe59
	.uleb128 0x2e
	.4byte	0xb7d
	.4byte	.LLST10
	.byte	0
	.uleb128 0x24
	.4byte	.LVL43
	.4byte	0xd47
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL35
	.4byte	0xbde
	.4byte	0xe81
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC52
	.byte	0
	.uleb128 0x22
	.4byte	.LVL36
	.4byte	0xd47
	.4byte	0xe9b
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL51
	.4byte	0xbde
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC57
	.byte	0
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF150
	.byte	0x1
	.byte	0x7c
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xece
	.uleb128 0x20
	.4byte	.LVL52
	.4byte	0x173e
	.byte	0
	.uleb128 0x30
	.4byte	.LASF151
	.byte	0x1
	.byte	0xab
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf14
	.uleb128 0x31
	.4byte	0xb88
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.byte	0x1
	.byte	0xad
	.4byte	0xf0a
	.uleb128 0x32
	.4byte	.LBB21
	.4byte	.LBE21-.LBB21
	.uleb128 0x33
	.4byte	0xb98
	.4byte	.LLST12
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL54
	.4byte	0x1749
	.byte	0
	.uleb128 0x34
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x152
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf34
	.uleb128 0x20
	.4byte	.LVL55
	.4byte	0x1754
	.byte	0
	.uleb128 0x35
	.4byte	.LASF153
	.byte	0x1
	.2byte	0x16e
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf87
	.uleb128 0x2d
	.4byte	0xba3
	.4byte	.LBB22
	.4byte	.LBE22-.LBB22
	.byte	0x1
	.2byte	0x171
	.4byte	0xf64
	.uleb128 0x36
	.4byte	0xbb0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL56
	.4byte	0x175f
	.4byte	0xf77
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x24
	.4byte	.LVL57
	.4byte	0x176b
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x37
	.4byte	.LASF166
	.byte	0x1
	.byte	0x8f
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfe4
	.uleb128 0x31
	.4byte	0xb88
	.4byte	.LBB24
	.4byte	.LBE24-.LBB24
	.byte	0x1
	.byte	0x92
	.4byte	0xfc3
	.uleb128 0x32
	.4byte	.LBB25
	.4byte	.LBE25-.LBB25
	.uleb128 0x33
	.4byte	0xb98
	.4byte	.LLST13
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL59
	.4byte	0x1776
	.4byte	0xfda
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC74
	.byte	0
	.uleb128 0x20
	.4byte	.LVL60
	.4byte	0xeaf
	.byte	0
	.uleb128 0x38
	.4byte	.LASF158
	.byte	0x1
	.byte	0x72
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x105f
	.uleb128 0x39
	.4byte	.LASF154
	.byte	0x1
	.byte	0x72
	.4byte	0x2d7
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x39
	.4byte	.LASF155
	.byte	0x1
	.byte	0x72
	.4byte	0x105f
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x22
	.4byte	.LVL62
	.4byte	0xbde
	.4byte	0x102a
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC76
	.byte	0
	.uleb128 0x22
	.4byte	.LVL63
	.4byte	0xbde
	.4byte	0x103e
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL64
	.4byte	0xbde
	.4byte	0x1055
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC78
	.byte	0
	.uleb128 0x20
	.4byte	.LVL65
	.4byte	0xf87
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x41
	.uleb128 0x3a
	.4byte	.LASF196
	.byte	0x1
	.2byte	0x163
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3b
	.4byte	.LASF197
	.byte	0x1
	.2byte	0x1a1
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x11c4
	.uleb128 0x2a
	.4byte	.LASF149
	.byte	0x1
	.2byte	0x1a1
	.4byte	0x2d1
	.4byte	.LLST14
	.uleb128 0x3c
	.4byte	.LASF156
	.byte	0x1
	.2byte	0x1a3
	.4byte	0x11c4
	.4byte	.LLST15
	.uleb128 0x2b
	.string	"x"
	.byte	0x1
	.2byte	0x1a4
	.4byte	0x33
	.4byte	.LLST16
	.uleb128 0x2b
	.string	"y"
	.byte	0x1
	.2byte	0x1a4
	.4byte	0x33
	.4byte	.LLST17
	.uleb128 0x3d
	.4byte	.LASF157
	.byte	0x1
	.2byte	0x1a5
	.4byte	0x11ca
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x22
	.4byte	.LVL68
	.4byte	0x1781
	.4byte	0x10fd
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC86
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x60
	.byte	0
	.uleb128 0x20
	.4byte	.LVL69
	.4byte	0xf14
	.uleb128 0x20
	.4byte	.LVL70
	.4byte	0xd35
	.uleb128 0x22
	.4byte	.LVL71
	.4byte	0xbde
	.4byte	0x1126
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC89
	.byte	0
	.uleb128 0x20
	.4byte	.LVL73
	.4byte	0xbde
	.uleb128 0x22
	.4byte	.LVL74
	.4byte	0xbde
	.4byte	0x1146
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC91
	.byte	0
	.uleb128 0x20
	.4byte	.LVL75
	.4byte	0xc15
	.uleb128 0x22
	.4byte	.LVL76
	.4byte	0xbde
	.4byte	0x1166
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC93
	.byte	0
	.uleb128 0x22
	.4byte	.LVL80
	.4byte	0xbde
	.4byte	0x117d
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC95
	.byte	0
	.uleb128 0x22
	.4byte	.LVL83
	.4byte	0xdcc
	.4byte	0x1191
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL84
	.4byte	0x1065
	.uleb128 0x22
	.4byte	.LVL85
	.4byte	0xbde
	.4byte	0x11b1
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC97
	.byte	0
	.uleb128 0x20
	.4byte	.LVL87
	.4byte	0x178a
	.uleb128 0x20
	.4byte	.LVL88
	.4byte	0xf34
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x33
	.uleb128 0x14
	.4byte	0xa7
	.4byte	0x11da
	.uleb128 0x15
	.4byte	0x90
	.byte	0x17
	.byte	0
	.uleb128 0x38
	.4byte	.LASF159
	.byte	0x1
	.byte	0xbd
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1405
	.uleb128 0x39
	.4byte	.LASF149
	.byte	0x1
	.byte	0xbd
	.4byte	0x2d1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3e
	.4byte	.LASF160
	.byte	0x1
	.byte	0xbf
	.4byte	0x33
	.4byte	.LLST18
	.uleb128 0x3f
	.4byte	.LASF161
	.byte	0x1
	.byte	0xc1
	.4byte	0x1405
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x3e
	.4byte	.LASF162
	.byte	0x1
	.byte	0xcb
	.4byte	0xa7
	.4byte	.LLST19
	.uleb128 0x31
	.4byte	0xb88
	.4byte	.LBB26
	.4byte	.LBE26-.LBB26
	.byte	0x1
	.byte	0xbf
	.4byte	0x124f
	.uleb128 0x32
	.4byte	.LBB27
	.4byte	.LBE27-.LBB27
	.uleb128 0x33
	.4byte	0xb98
	.4byte	.LLST18
	.byte	0
	.byte	0
	.uleb128 0x2c
	.4byte	.LBB28
	.4byte	.LBE28-.LBB28
	.4byte	0x1337
	.uleb128 0x3e
	.4byte	.LASF163
	.byte	0x1
	.byte	0xdd
	.4byte	0x33
	.4byte	.LLST21
	.uleb128 0x22
	.4byte	.LVL105
	.4byte	0xbde
	.4byte	0x1282
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC108
	.byte	0
	.uleb128 0x22
	.4byte	.LVL106
	.4byte	0xbde
	.4byte	0x1299
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC110
	.byte	0
	.uleb128 0x22
	.4byte	.LVL107
	.4byte	0xbde
	.4byte	0x12b0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC112
	.byte	0
	.uleb128 0x22
	.4byte	.LVL108
	.4byte	0xbde
	.4byte	0x12c7
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC114
	.byte	0
	.uleb128 0x22
	.4byte	.LVL109
	.4byte	0xbde
	.4byte	0x12de
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC116
	.byte	0
	.uleb128 0x22
	.4byte	.LVL110
	.4byte	0xbde
	.4byte	0x12f5
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC118
	.byte	0
	.uleb128 0x22
	.4byte	.LVL111
	.4byte	0xbde
	.4byte	0x130c
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC120
	.byte	0
	.uleb128 0x22
	.4byte	.LVL112
	.4byte	0xbde
	.4byte	0x1323
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC122
	.byte	0
	.uleb128 0x24
	.4byte	.LVL113
	.4byte	0xbde
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC95
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL91
	.4byte	0x1781
	.4byte	0x135a
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC100
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x20
	.4byte	.LVL95
	.4byte	0x1795
	.uleb128 0x20
	.4byte	.LVL96
	.4byte	0xece
	.uleb128 0x20
	.4byte	.LVL97
	.4byte	0x17a0
	.uleb128 0x22
	.4byte	.LVL98
	.4byte	0xbde
	.4byte	0x138c
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC102
	.byte	0
	.uleb128 0x22
	.4byte	.LVL99
	.4byte	0xc7e
	.4byte	0x13a0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL100
	.4byte	0xbde
	.4byte	0x13b7
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC104
	.byte	0
	.uleb128 0x22
	.4byte	.LVL101
	.4byte	0xbde
	.4byte	0x13cb
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL102
	.4byte	0xbde
	.4byte	0x13e2
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC106
	.byte	0
	.uleb128 0x20
	.4byte	.LVL114
	.4byte	0x173e
	.uleb128 0x20
	.4byte	.LVL115
	.4byte	0xd13
	.uleb128 0x24
	.4byte	.LVL116
	.4byte	0x1077
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	0xa7
	.4byte	0x1415
	.uleb128 0x15
	.4byte	0x90
	.byte	0x7
	.byte	0
	.uleb128 0x40
	.4byte	.LASF164
	.byte	0x1
	.2byte	0x108
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1555
	.uleb128 0x41
	.4byte	.LASF149
	.byte	0x1
	.2byte	0x108
	.4byte	0x2d1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2c
	.4byte	.LBB29
	.4byte	.LBE29-.LBB29
	.4byte	0x1532
	.uleb128 0x3c
	.4byte	.LASF38
	.byte	0x1
	.2byte	0x10e
	.4byte	0x33
	.4byte	.LLST22
	.uleb128 0x2d
	.4byte	0xb88
	.4byte	.LBB30
	.4byte	.LBE30-.LBB30
	.byte	0x1
	.2byte	0x115
	.4byte	0x147e
	.uleb128 0x32
	.4byte	.LBB31
	.4byte	.LBE31-.LBB31
	.uleb128 0x33
	.4byte	0xb98
	.4byte	.LLST23
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL120
	.4byte	0xbde
	.4byte	0x1495
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC126
	.byte	0
	.uleb128 0x20
	.4byte	.LVL123
	.4byte	0xbde
	.uleb128 0x22
	.4byte	.LVL125
	.4byte	0xbde
	.4byte	0x14b5
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC129
	.byte	0
	.uleb128 0x22
	.4byte	.LVL126
	.4byte	0xbde
	.4byte	0x14cc
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC131
	.byte	0
	.uleb128 0x20
	.4byte	.LVL128
	.4byte	0xc7e
	.uleb128 0x20
	.4byte	.LVL129
	.4byte	0x173e
	.uleb128 0x22
	.4byte	.LVL130
	.4byte	0xbde
	.4byte	0x14f5
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC133
	.byte	0
	.uleb128 0x20
	.4byte	.LVL131
	.4byte	0xc15
	.uleb128 0x22
	.4byte	.LVL132
	.4byte	0xbde
	.4byte	0x1515
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC135
	.byte	0
	.uleb128 0x20
	.4byte	.LVL133
	.4byte	0xd13
	.uleb128 0x24
	.4byte	.LVL134
	.4byte	0xbde
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC137
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL118
	.4byte	0xece
	.uleb128 0x20
	.4byte	.LVL119
	.4byte	0x17a0
	.uleb128 0x24
	.4byte	.LVL135
	.4byte	0x1077
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x40
	.4byte	.LASF165
	.byte	0x1
	.2byte	0x1fb
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1592
	.uleb128 0x29
	.string	"fn"
	.byte	0x1
	.2byte	0x1fb
	.4byte	0x97
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x20
	.4byte	.LVL137
	.4byte	0x173e
	.uleb128 0x24
	.4byte	.LVL138
	.4byte	0xd13
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x42
	.4byte	.LASF167
	.byte	0x1
	.2byte	0x203
	.4byte	0x2c6
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1606
	.uleb128 0x28
	.string	"no"
	.byte	0x1
	.2byte	0x203
	.4byte	0x33
	.4byte	.LLST24
	.uleb128 0x29
	.string	"adr"
	.byte	0x1
	.2byte	0x203
	.4byte	0x97
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x41
	.4byte	.LASF168
	.byte	0x1
	.2byte	0x203
	.4byte	0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2a
	.4byte	.LASF169
	.byte	0x1
	.2byte	0x203
	.4byte	0x33
	.4byte	.LLST25
	.uleb128 0x2b
	.string	"x"
	.byte	0x1
	.2byte	0x205
	.4byte	0x33
	.4byte	.LLST26
	.uleb128 0x3c
	.4byte	.LASF170
	.byte	0x1
	.2byte	0x208
	.4byte	0x33
	.4byte	.LLST27
	.byte	0
	.uleb128 0x40
	.4byte	.LASF171
	.byte	0x1
	.2byte	0x220
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1637
	.uleb128 0x29
	.string	"no"
	.byte	0x1
	.2byte	0x220
	.4byte	0x33
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x43
	.4byte	.LASF170
	.byte	0x1
	.2byte	0x223
	.4byte	0x33
	.byte	0
	.byte	0
	.uleb128 0x44
	.4byte	.LASF172
	.byte	0x1
	.2byte	0x22f
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x16f1
	.uleb128 0x29
	.string	"rc"
	.byte	0x1
	.2byte	0x22f
	.4byte	0x2c6
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x41
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x22f
	.4byte	0xa7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x41
	.4byte	.LASF174
	.byte	0x1
	.2byte	0x22f
	.4byte	0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x41
	.4byte	.LASF175
	.byte	0x1
	.2byte	0x22f
	.4byte	0xa7
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x41
	.4byte	.LASF176
	.byte	0x1
	.2byte	0x22f
	.4byte	0xa7
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x22
	.4byte	.LVL155
	.4byte	0x1776
	.4byte	0x16af
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC141
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL156
	.4byte	0x17ab
	.uleb128 0x22
	.4byte	.LVL157
	.4byte	0x1776
	.4byte	0x16e7
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC143
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL158
	.4byte	0xeaf
	.byte	0
	.uleb128 0x3f
	.4byte	.LASF177
	.byte	0x1
	.byte	0x7a
	.4byte	0x2bf
	.uleb128 0x5
	.byte	0x3
	.4byte	abort_called
	.uleb128 0x14
	.4byte	0xa7
	.4byte	0x1712
	.uleb128 0x15
	.4byte	0x90
	.byte	0x27
	.byte	0
	.uleb128 0x3f
	.4byte	.LASF178
	.byte	0x1
	.byte	0x98
	.4byte	0x1723
	.uleb128 0x5
	.byte	0x3
	.4byte	edesc
	.uleb128 0x7
	.4byte	0x1702
	.uleb128 0x45
	.4byte	.LASF179
	.byte	0xb
	.byte	0xc6
	.4byte	0xb32
	.uleb128 0x45
	.4byte	.LASF180
	.byte	0xb
	.byte	0xc7
	.4byte	0xb32
	.uleb128 0x46
	.4byte	.LASF181
	.4byte	.LASF181
	.byte	0xd
	.byte	0x5f
	.uleb128 0x46
	.4byte	.LASF182
	.4byte	.LASF182
	.byte	0xd
	.byte	0x50
	.uleb128 0x46
	.4byte	.LASF183
	.4byte	.LASF183
	.byte	0xc
	.byte	0xfd
	.uleb128 0x47
	.4byte	.LASF184
	.4byte	.LASF184
	.byte	0xc
	.2byte	0x115
	.uleb128 0x46
	.4byte	.LASF185
	.4byte	.LASF185
	.byte	0xd
	.byte	0x56
	.uleb128 0x46
	.4byte	.LASF186
	.4byte	.LASF186
	.byte	0xe
	.byte	0xde
	.uleb128 0x48
	.4byte	.LASF198
	.4byte	.LASF198
	.uleb128 0x46
	.4byte	.LASF187
	.4byte	.LASF187
	.byte	0xf
	.byte	0x50
	.uleb128 0x46
	.4byte	.LASF188
	.4byte	.LASF188
	.byte	0x10
	.byte	0x21
	.uleb128 0x46
	.4byte	.LASF189
	.4byte	.LASF189
	.byte	0x11
	.byte	0x20
	.uleb128 0x47
	.4byte	.LASF190
	.4byte	.LASF190
	.byte	0x12
	.2byte	0x107
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
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
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x18
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
	.uleb128 0x23
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
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
	.uleb128 0x30
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x31
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
	.uleb128 0x32
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x35
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x36
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x39
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
	.uleb128 0x3a
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x3b
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.uleb128 0x41
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
	.uleb128 0x42
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
	.uleb128 0x43
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
	.uleb128 0x44
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
	.uleb128 0x45
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
	.uleb128 0x46
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
	.uleb128 0x47
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
	.uleb128 0x48
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
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LFE26
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL6
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL15
	.4byte	.LFE27
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LFE27
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL10
	.4byte	.LVL11-1
	.2byte	0x3
	.byte	0x7a
	.sleb128 -48
	.byte	0x9f
	.4byte	.LVL11-1
	.4byte	.LVL12
	.2byte	0x5
	.byte	0x72
	.sleb128 0
	.byte	0x4c
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL13
	.4byte	.LVL14-1
	.2byte	0x4
	.byte	0x7a
	.sleb128 -87
	.byte	0x9f
	.4byte	.LVL14-1
	.4byte	.LVL15
	.2byte	0x5
	.byte	0x72
	.sleb128 0
	.byte	0x4c
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL18
	.4byte	.LVL19-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL19-1
	.4byte	.LVL20
	.2byte	0x1d
	.byte	0x72
	.sleb128 0
	.byte	0xf7
	.uleb128 0x33
	.byte	0xf7
	.uleb128 0x25
	.byte	0xc
	.4byte	0x66666667
	.byte	0xf7
	.uleb128 0x25
	.byte	0x1e
	.byte	0x8
	.byte	0x20
	.byte	0xf7
	.uleb128 0x25
	.byte	0x25
	.byte	0xf7
	.uleb128 0x2c
	.byte	0x32
	.byte	0x26
	.byte	0x72
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL21-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL21-1
	.4byte	.LFE28
	.2byte	0x1d
	.byte	0x72
	.sleb128 0
	.byte	0xf7
	.uleb128 0x33
	.byte	0xf7
	.uleb128 0x25
	.byte	0xc
	.4byte	0x66666667
	.byte	0xf7
	.uleb128 0x25
	.byte	0x1e
	.byte	0x8
	.byte	0x20
	.byte	0xf7
	.uleb128 0x25
	.byte	0x25
	.byte	0xf7
	.uleb128 0x2c
	.byte	0x32
	.byte	0x26
	.byte	0x72
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
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
	.4byte	.LFE41
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL31
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL38
	.4byte	.LFE42
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL32
	.4byte	.LVL39
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL40
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL33
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL37
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL42
	.4byte	.LVL43-1
	.2byte	0x3
	.byte	0x7a
	.sleb128 3
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL34
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL41
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL47
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL39
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL44
	.4byte	.LVL46
	.2byte	0x3
	.byte	0x73
	.sleb128 16
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL53
	.4byte	.LVL54-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL58
	.4byte	.LVL59-1
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL66
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL86
	.4byte	.LFE43
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL67
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL86
	.4byte	.LFE43
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL72
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL72
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL79
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL90
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL116
	.4byte	.LFE34
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL91
	.4byte	.LVL92
	.2byte	0x6
	.byte	0x3
	.4byte	.LC0
	.byte	0x9f
	.4byte	.LVL92
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL93
	.4byte	.LVL94
	.2byte	0x6
	.byte	0x3
	.4byte	.LC0
	.byte	0x9f
	.4byte	.LVL94
	.4byte	.LFE34
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL104
	.4byte	.LVL113
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL121
	.4byte	.LVL122
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL122
	.4byte	.LVL123-1
	.2byte	0x3
	.byte	0x72
	.sleb128 80
	.4byte	.LVL124
	.4byte	.LVL125-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL127
	.4byte	.LVL128-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL139
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
	.4byte	.LVL150
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL150
	.4byte	.LVL151
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL151
	.4byte	.LFE45
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL139
	.4byte	.LVL144
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL144
	.4byte	.LVL146
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL146
	.4byte	.LFE45
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL140
	.4byte	.LVL146
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL150
	.4byte	.LFE45
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL140
	.4byte	.LVL143
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL144
	.4byte	.LVL146
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL150
	.4byte	.LFE45
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0xc4
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LFB43
	.4byte	.LFE43
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LFB44
	.4byte	.LFE44
	.4byte	.LFB45
	.4byte	.LFE45
	.4byte	.LFB46
	.4byte	.LFE46
	.4byte	.LFB47
	.4byte	.LFE47
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF147:
	.string	"putEntry"
.LASF194:
	.string	"esp_stack_ptr_is_sane"
.LASF188:
	.string	"esp_cache_err_get_cpuid"
.LASF65:
	.string	"load_high"
.LASF109:
	.string	"int_raw"
.LASF121:
	.string	"reserved_cc"
.LASF105:
	.string	"lactloadlo"
.LASF6:
	.string	"__uint8_t"
.LASF75:
	.string	"start_cycling"
.LASF122:
	.string	"reserved_d0"
.LASF140:
	.string	"uart_tx_wait_idle"
.LASF100:
	.string	"lactlo"
.LASF123:
	.string	"reserved_d4"
.LASF160:
	.string	"core_id"
.LASF124:
	.string	"reserved_d8"
.LASF159:
	.string	"panicHandler"
.LASF55:
	.string	"autoreload"
.LASF21:
	.string	"EXT_EVENT1_TRIG"
.LASF42:
	.string	"lcount"
.LASF35:
	.string	"RTC_WDT_INT"
.LASF149:
	.string	"frame"
.LASF89:
	.string	"wdt_config1"
.LASF90:
	.string	"wdt_config2"
.LASF91:
	.string	"wdt_config3"
.LASF92:
	.string	"wdt_config4"
.LASF93:
	.string	"wdt_config5"
.LASF43:
	.string	"tmp0"
.LASF33:
	.string	"REJECT_INT"
.LASF136:
	.string	"RTC_CPU_FREQ_160M"
.LASF26:
	.string	"UART0_TRIG"
.LASF148:
	.string	"doBacktrace"
.LASF44:
	.string	"tmp1"
.LASF45:
	.string	"tmp2"
.LASF9:
	.string	"long long int"
.LASF3:
	.string	"signed char"
.LASF36:
	.string	"RTC_TIME_VALID_INT"
.LASF125:
	.string	"reserved_dc"
.LASF175:
	.string	"function"
.LASF168:
	.string	"size"
.LASF0:
	.string	"long long unsigned int"
.LASF171:
	.string	"esp_clear_watchpoint"
.LASF190:
	.string	"spi_flash_cache_enabled"
.LASF38:
	.string	"exccause"
.LASF11:
	.string	"long int"
.LASF127:
	.string	"reserved_e4"
.LASF128:
	.string	"reserved_e8"
.LASF62:
	.string	"alarm_low"
.LASF49:
	.string	"TaskHandle_t"
.LASF198:
	.string	"memcpy"
.LASF57:
	.string	"enable"
.LASF192:
	.string	"C:/esp/esp-idf/components/esp32/panic.c"
.LASF63:
	.string	"alarm_high"
.LASF27:
	.string	"UART1_TRIG"
.LASF145:
	.string	"panicPutDec"
.LASF39:
	.string	"excvaddr"
.LASF25:
	.string	"MAC_TRIG"
.LASF174:
	.string	"line"
.LASF31:
	.string	"NO_INT"
.LASF8:
	.string	"__uint32_t"
.LASF183:
	.string	"rtc_clk_slow_freq_get_hz"
.LASF10:
	.string	"__intptr_t"
.LASF163:
	.string	"debugRsn"
.LASF129:
	.string	"reserved_ec"
.LASF193:
	.string	"C:\\\\esp\\\\esp32-ArkPOS2\\\\ArkPOS2-esp\\\\build\\\\esp32"
.LASF104:
	.string	"lactalarmhi"
.LASF83:
	.string	"lact"
.LASF78:
	.string	"value"
.LASF94:
	.string	"wdt_feed"
.LASF20:
	.string	"EXT_EVENT0_TRIG"
.LASF130:
	.string	"reserved_f0"
.LASF187:
	.string	"esp_restart_noos"
.LASF172:
	.string	"_esp_error_check_failed"
.LASF1:
	.string	"unsigned int"
.LASF52:
	.string	"level_int_en"
.LASF51:
	.string	"alarm_en"
.LASF46:
	.string	"XtExcFrame"
.LASF59:
	.string	"cnt_low"
.LASF64:
	.string	"load_low"
.LASF142:
	.string	"panicPutChar"
.LASF13:
	.string	"long unsigned int"
.LASF66:
	.string	"reload"
.LASF40:
	.string	"lbeg"
.LASF164:
	.string	"xt_unhandled_exception"
.LASF167:
	.string	"esp_set_watchpoint"
.LASF177:
	.string	"abort_called"
.LASF137:
	.string	"RTC_CPU_FREQ_240M"
.LASF158:
	.string	"vApplicationStackOverflowHook"
.LASF197:
	.string	"commonErrorHandler"
.LASF2:
	.string	"short unsigned int"
.LASF85:
	.string	"date"
.LASF135:
	.string	"RTC_CPU_FREQ_80M"
.LASF176:
	.string	"expression"
.LASF110:
	.string	"int_st_timers"
.LASF87:
	.string	"hw_timer"
.LASF107:
	.string	"lactload"
.LASF18:
	.string	"intptr_t"
.LASF181:
	.string	"esp_cpu_in_ocd_debug_mode"
.LASF5:
	.string	"short int"
.LASF7:
	.string	"__int32_t"
.LASF132:
	.string	"timg_date"
.LASF139:
	.string	"xPortGetCoreID"
.LASF96:
	.string	"rtc_cali_cfg"
.LASF30:
	.string	"BT_TRIG"
.LASF126:
	.string	"reserved_e0"
.LASF185:
	.string	"esp_cpu_unstall"
.LASF12:
	.string	"sizetype"
.LASF106:
	.string	"lactloadhi"
.LASF184:
	.string	"rtc_clk_cpu_freq_set"
.LASF108:
	.string	"int_ena"
.LASF101:
	.string	"lacthi"
.LASF68:
	.string	"sys_reset_length"
.LASF186:
	.string	"ets_printf"
.LASF76:
	.string	"clk_sel"
.LASF60:
	.string	"cnt_high"
.LASF196:
	.string	"esp_panic_wdt_stop"
.LASF23:
	.string	"TIMER_EXPIRE"
.LASF97:
	.string	"rtc_cali_cfg1"
.LASF29:
	.string	"SAR_TRIG"
.LASF28:
	.string	"TOUCH_TRIG"
.LASF143:
	.string	"panicPutStr"
.LASF144:
	.string	"panicPutHex"
.LASF34:
	.string	"SDIO_IDLE_INT"
.LASF47:
	.string	"_Bool"
.LASF16:
	.string	"int32_t"
.LASF134:
	.string	"RTC_CPU_FREQ_XTAL"
.LASF138:
	.string	"RTC_CPU_FREQ_2M"
.LASF86:
	.string	"reserved28"
.LASF191:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF80:
	.string	"cpst_en"
.LASF22:
	.string	"GPIO_TRIG"
.LASF173:
	.string	"file"
.LASF112:
	.string	"reserved_a8"
.LASF170:
	.string	"dbreakc"
.LASF74:
	.string	"clk_prescale"
.LASF114:
	.string	"reserved_b0"
.LASF37:
	.string	"exit"
.LASF162:
	.string	"reason"
.LASF111:
	.string	"int_clr_timers"
.LASF95:
	.string	"wdt_wprotect"
.LASF67:
	.string	"flashboot_mod_en"
.LASF32:
	.string	"WAKEUP_INT"
.LASF154:
	.string	"xTask"
.LASF19:
	.string	"NO_SLEEP"
.LASF165:
	.string	"esp_set_breakpoint_if_jtag"
.LASF50:
	.string	"reserved0"
.LASF156:
	.string	"regs"
.LASF182:
	.string	"esp_cpu_stall"
.LASF141:
	.string	"uart_no"
.LASF189:
	.string	"esp_dport_access_int_abort"
.LASF14:
	.string	"char"
.LASF113:
	.string	"reserved_ac"
.LASF103:
	.string	"lactalarmlo"
.LASF131:
	.string	"reserved_f4"
.LASF58:
	.string	"config"
.LASF24:
	.string	"SDIO_TRIG"
.LASF166:
	.string	"abort"
.LASF79:
	.string	"rtc_only"
.LASF73:
	.string	"stg0"
.LASF72:
	.string	"stg1"
.LASF71:
	.string	"stg2"
.LASF70:
	.string	"stg3"
.LASF115:
	.string	"reserved_b4"
.LASF88:
	.string	"wdt_config0"
.LASF53:
	.string	"edge_int_en"
.LASF116:
	.string	"reserved_b8"
.LASF146:
	.string	"setFirstBreakpoint"
.LASF179:
	.string	"TIMERG0"
.LASF180:
	.string	"TIMERG1"
.LASF153:
	.string	"esp_panic_dig_reset"
.LASF4:
	.string	"unsigned char"
.LASF157:
	.string	"sdesc"
.LASF98:
	.string	"lactconfig"
.LASF161:
	.string	"reasons"
.LASF61:
	.string	"update"
.LASF17:
	.string	"uint32_t"
.LASF56:
	.string	"increase"
.LASF150:
	.string	"invoke_abort"
.LASF69:
	.string	"cpu_reset_length"
.LASF48:
	.string	"esp_err_t"
.LASF117:
	.string	"reserved_bc"
.LASF155:
	.string	"pcTaskName"
.LASF15:
	.string	"uint8_t"
.LASF169:
	.string	"flags"
.LASF54:
	.string	"divider"
.LASF102:
	.string	"lactupdate"
.LASF118:
	.string	"reserved_c0"
.LASF119:
	.string	"reserved_c4"
.LASF81:
	.string	"lac_en"
.LASF82:
	.string	"step_len"
.LASF120:
	.string	"reserved_c8"
.LASF84:
	.string	"reserved4"
.LASF77:
	.string	"start"
.LASF195:
	.string	"reconfigureAllWdts"
.LASF151:
	.string	"haltOtherCore"
.LASF133:
	.string	"timg_dev_t"
.LASF99:
	.string	"lactrtc"
.LASF178:
	.string	"edesc"
.LASF152:
	.string	"esp_panic_wdt_start"
.LASF41:
	.string	"lend"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-73-ge28a011) 5.2.0"
