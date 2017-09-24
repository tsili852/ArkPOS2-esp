	.file	"sleep_modes.c"
	.text
.Ltext0:
	.section	.rtc.text,"ax",@progbits
	.literal_position
	.literal .LC4, 1072693316
	.literal .LC5, 8192
	.literal .LC6, -8193
	.align	4
	.global	esp_default_wake_deep_sleep
	.type	esp_default_wake_deep_sleep, @function
esp_default_wake_deep_sleep:
.LFB25:
	.file 1 "C:/esp/esp-idf/components/esp32/sleep_modes.c"
	.loc 1 101 0
	entry	sp, 32
.LCFI0:
	.loc 1 103 0
	l32r	a8, .LC4
	memw
	l32i.n	a10, a8, 0
	l32r	a9, .LC5
	or	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 105 0
	memw
	l32i.n	a10, a8, 0
	l32r	a9, .LC6
	and	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	retw.n
.LFE25:
	.size	esp_default_wake_deep_sleep, .-esp_default_wake_deep_sleep
	.weak	esp_wake_deep_sleep
	.set	esp_wake_deep_sleep,esp_default_wake_deep_sleep
	.section	.text.rtc_wdt_disable,"ax",@progbits
	.literal_position
	.literal .LC7, 1072988324
	.literal .LC8, 1356348065
	.literal .LC9, 1072988320
	.literal .LC10, 1072988300
	.literal .LC11, -1879048193
	.literal .LC12, 2147483647
	.align	4
	.type	rtc_wdt_disable, @function
rtc_wdt_disable:
.LFB30:
	.loc 1 188 0
	entry	sp, 32
.LCFI1:
	.loc 1 189 0
	l32r	a10, .LC7
	l32r	a8, .LC8
	memw
	s32i.n	a8, a10, 0
	.loc 1 190 0
	movi.n	a9, 1
	l32r	a8, .LC9
	memw
	s32i.n	a9, a8, 0
	.loc 1 191 0
	l32r	a8, .LC10
	memw
	l32i.n	a11, a8, 0
	l32r	a9, .LC11
	and	a9, a11, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 192 0
	memw
	l32i.n	a11, a8, 0
	l32r	a9, .LC12
	and	a9, a11, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 193 0
	movi.n	a8, 0
	memw
	s32i.n	a8, a10, 0
	retw.n
.LFE30:
	.size	rtc_wdt_disable, .-rtc_wdt_disable
	.section	.text.ext0_wakeup_prepare,"ax",@progbits
	.literal_position
	.literal .LC13, s_config
	.literal .LC14, 1072989372
	.literal .LC15, 134217727
	.literal .LC16, 1072988256
	.literal .LC17, -1073741825
	.literal .LC18, rtc_gpio_desc
	.align	4
	.type	ext0_wakeup_prepare, @function
ext0_wakeup_prepare:
.LFB39:
	.loc 1 340 0
	entry	sp, 32
.LCFI2:
	.loc 1 341 0
	l32r	a12, .LC13
	l32i.n	a11, a12, 28
	extui	a11, a11, 0, 5
.LVL0:
	.loc 1 343 0
	l32r	a9, .LC14
	memw
	l32i.n	a10, a9, 0
	l32r	a8, .LC15
	and	a8, a10, a8
	slli	a10, a11, 27
	or	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
	.loc 1 345 0
	l32r	a10, .LC16
	memw
	l32i.n	a9, a10, 0
	l32r	a8, .LC17
	and	a9, a9, a8
	l32i.n	a8, a12, 24
	extui	a8, a8, 30, 1
	slli	a8, a8, 30
	or	a8, a8, a9
	memw
	s32i.n	a8, a10, 0
.LVL1:
.LBB19:
	.loc 1 348 0
	movi.n	a8, 0
	j	.L4
.LVL2:
.L7:
.LBB20:
	.loc 1 350 0
	addx2	a10, a8, a8
	addx4	a10, a10, a8
	slli	a9, a10, 2
	l32r	a10, .LC18
	add.n	a9, a10, a9
	l32i.n	a9, a9, 48
	bne	a11, a9, .L5
	.loc 1 351 0
	mov.n	a15, a10
	addx2	a13, a8, a8
	slli	a13, a13, 2
	add.n	a9, a13, a8
	slli	a10, a9, 2
	add.n	a10, a15, a10
	l32i.n	a9, a10, 0
	memw
	l32i.n	a12, a9, 0
	l32i.n	a11, a10, 4
.LVL3:
	or	a11, a12, a11
	memw
	s32i.n	a11, a9, 0
	.loc 1 352 0
	memw
	l32i.n	a14, a9, 0
	l32i.n	a11, a10, 8
	movi.n	a12, 3
	ssl	a11
	sll	a12, a12
	movi.n	a11, -1
	xor	a11, a11, a12
	and	a11, a11, a14
	memw
	s32i.n	a11, a9, 0
	.loc 1 353 0
	memw
	l32i.n	a12, a9, 0
	l32i.n	a11, a10, 24
	or	a11, a12, a11
	memw
	s32i.n	a11, a9, 0
	.loc 1 354 0
	memw
	l32i.n	a11, a9, 0
	add.n	a8, a13, a8
.LVL4:
	slli	a10, a8, 2
	add.n	a10, a15, a10
	l32i.n	a8, a10, 28
	or	a8, a11, a8
	memw
	s32i.n	a8, a9, 0
	.loc 1 355 0
	retw.n
.LVL5:
.L5:
.LBE20:
	.loc 1 348 0 discriminator 2
	addi.n	a8, a8, 1
.LVL6:
.L4:
	.loc 1 348 0 is_stmt 0 discriminator 1
	movi.n	a9, 0x27
	bgeu	a9, a8, .L7
	retw.n
.LBE19:
.LFE39:
	.size	ext0_wakeup_prepare, .-ext0_wakeup_prepare
	.section	.text.ext1_wakeup_prepare,"ax",@progbits
	.literal_position
	.literal .LC19, s_config
	.literal .LC20, 262143
	.literal .LC21, rtc_gpio_desc
	.literal .LC22, 1072988360
	.literal .LC23, 1072988364
	.literal .LC24, 262144
	.literal .LC25, -262144
	.literal .LC26, 1072988256
	.literal .LC27, 2147483647
	.align	4
	.type	ext1_wakeup_prepare, @function
ext1_wakeup_prepare:
.LFB41:
	.loc 1 384 0 is_stmt 1
	entry	sp, 32
.LCFI3:
	.loc 1 386 0
	l32r	a8, .LC19
	l32i.n	a8, a8, 24
	srli	a8, a8, 12
	l32r	a11, .LC20
	and	a11, a8, a11
.LVL7:
.LBB21:
	.loc 1 387 0
	movi.n	a8, 0
	j	.L9
.LVL8:
.L14:
.LBB22:
	.loc 1 388 0
	addx2	a10, a8, a8
	addx4	a10, a10, a8
	slli	a9, a10, 2
	l32r	a10, .LC21
	add.n	a9, a10, a9
	l32i.n	a13, a9, 48
.LVL9:
	.loc 1 389 0
	bbc	a11, a13, .L10
.LVL10:
	.loc 1 394 0
	addx2	a10, a8, a8
	slli	a10, a10, 2
	add.n	a10, a10, a8
	slli	a9, a10, 2
	l32r	a10, .LC21
	add.n	a10, a10, a9
	l32i.n	a9, a10, 0
	memw
	l32i.n	a14, a9, 0
	l32i.n	a12, a10, 4
	or	a12, a14, a12
	memw
	s32i.n	a12, a9, 0
	.loc 1 395 0
	memw
	l32i.n	a14, a9, 0
	l32i.n	a10, a10, 8
	movi.n	a12, 3
	ssl	a10
	sll	a12, a12
	movi.n	a10, -1
	xor	a10, a10, a12
	and	a10, a10, a14
	memw
	s32i.n	a10, a9, 0
	.loc 1 397 0
	l32r	a10, .LC19
	l32i.n	a10, a10, 0
	bnei	a10, 1, .L11
	.loc 1 399 0
	memw
	l32i.n	a14, a9, 0
	addx2	a10, a8, a8
	slli	a10, a10, 2
	add.n	a10, a10, a8
	slli	a12, a10, 2
	l32r	a10, .LC21
	add.n	a10, a10, a12
	l32i.n	a12, a10, 28
	or	a12, a14, a12
	memw
	s32i.n	a12, a9, 0
	.loc 1 401 0
	memw
	l32i.n	a12, a9, 0
	l32i.n	a10, a10, 24
	or	a10, a12, a10
	memw
	s32i.n	a10, a9, 0
	j	.L12
.L11:
	.loc 1 405 0
	memw
	l32i.n	a14, a9, 0
	addx2	a12, a8, a8
	slli	a12, a12, 2
	add.n	a12, a12, a8
	slli	a10, a12, 2
	l32r	a12, .LC21
	add.n	a10, a12, a10
	l32i.n	a12, a10, 12
	or	a12, a14, a12
	memw
	s32i.n	a12, a9, 0
	.loc 1 406 0
	memw
	l32i.n	a15, a9, 0
	l32i.n	a14, a10, 20
	movi.n	a12, -1
	xor	a14, a12, a14
	and	a14, a15, a14
	memw
	s32i.n	a14, a9, 0
	.loc 1 407 0
	memw
	l32i.n	a15, a9, 0
	l32i.n	a14, a10, 16
	xor	a12, a12, a14
	and	a12, a15, a12
	memw
	s32i.n	a12, a9, 0
	.loc 1 408 0
	l32r	a12, .LC22
	memw
	l32i.n	a14, a12, 0
	l32i.n	a9, a10, 36
	or	a9, a14, a9
	memw
	s32i.n	a9, a12, 0
.L12:
	.loc 1 411 0
	movi.n	a9, 1
	ssl	a13
	sll	a9, a9
	movi.n	a10, -1
	xor	a9, a10, a9
	and	a11, a11, a9
.LVL11:
.L10:
.LBE22:
	.loc 1 387 0 discriminator 2
	addi.n	a8, a8, 1
.LVL12:
.L9:
	.loc 1 387 0 is_stmt 0 discriminator 1
	movi.n	a10, 1
	movi.n	a9, 0x27
	bge	a9, a8, .L13
	movi.n	a10, 0
.L13:
	movi.n	a12, 0
	movi.n	a9, 1
	moveqz	a9, a12, a11
	bany	a9, a10, .L14
.LBE21:
	.loc 1 414 0 is_stmt 1
	l32r	a10, .LC23
	memw
	l32i.n	a9, a10, 0
	l32r	a8, .LC24
.LVL13:
	or	a8, a9, a8
	memw
	s32i.n	a8, a10, 0
	.loc 1 416 0
	memw
	l32i.n	a9, a10, 0
	l32r	a8, .LC25
	and	a9, a9, a8
	l32r	a8, .LC19
	l32i.n	a8, a8, 24
	srli	a11, a8, 12
.LVL14:
	l32r	a12, .LC20
	and	a11, a11, a12
	or	a9, a11, a9
	memw
	s32i.n	a9, a10, 0
	.loc 1 418 0
	l32r	a10, .LC26
	memw
	l32i.n	a11, a10, 0
	l32r	a9, .LC27
	and	a9, a11, a9
	extui	a8, a8, 11, 1
	slli	a8, a8, 31
	or	a8, a8, a9
	memw
	s32i.n	a8, a10, 0
	retw.n
.LFE41:
	.size	ext1_wakeup_prepare, .-ext1_wakeup_prepare
	.section	.text.get_power_down_flags,"ax",@progbits
	.literal_position
	.literal .LC28, s_config
	.literal .LC29, _rtc_data_end
	.literal .LC30, _rtc_data_start
	.literal .LC31, _rtc_bss_end
	.literal .LC32, _rtc_bss_start
	.align	4
	.type	get_power_down_flags, @function
get_power_down_flags:
.LFB45:
	.loc 1 476 0
	entry	sp, 32
.LCFI4:
	.loc 1 487 0
	l32r	a2, .LC28
	l32i.n	a2, a2, 4
	beqi	a2, 2, .L16
	.loc 1 487 0 is_stmt 0 discriminator 1
	l32r	a8, .LC30
	l32r	a2, .LC29
	bltu	a8, a2, .L16
	.loc 1 488 0 is_stmt 1
	l32r	a8, .LC32
	l32r	a2, .LC31
	bgeu	a8, a2, .L17
.L16:
	.loc 1 490 0
	movi.n	a8, 1
	l32r	a2, .LC28
	s32i.n	a8, a2, 4
.L17:
	.loc 1 498 0
	l32r	a2, .LC28
	l32i.n	a2, a2, 8
	bnei	a2, 2, .L18
	.loc 1 499 0
	movi.n	a8, 1
	l32r	a2, .LC28
	s32i.n	a8, a2, 8
.L18:
	.loc 1 504 0
	l32r	a2, .LC28
	l32i.n	a2, a2, 0
	bnei	a2, 2, .L19
	.loc 1 505 0
	l32r	a2, .LC28
	l32i.n	a2, a2, 24
	extui	a2, a2, 0, 11
	bbci	a2, 0, .L20
	.loc 1 506 0
	movi.n	a8, 1
	l32r	a2, .LC28
	s32i.n	a8, a2, 0
	j	.L19
.L20:
	.loc 1 507 0
	movi	a8, 0x300
	bnone	a2, a8, .L19
	.loc 1 510 0
	movi.n	a8, 0
	l32r	a2, .LC28
	s32i.n	a8, a2, 0
.L19:
.LVL15:
	.loc 1 522 0
	l32r	a2, .LC28
	l32i.n	a2, a2, 8
	bnei	a2, 1, .L24
	.loc 1 521 0
	movi.n	a2, 0
	j	.L21
.L24:
	.loc 1 523 0
	movi.n	a2, 8
.L21:
.LVL16:
	.loc 1 525 0
	l32r	a8, .LC28
	l32i.n	a8, a8, 4
	beqi	a8, 1, .L22
	.loc 1 526 0
	movi.n	a8, 4
	or	a2, a2, a8
.LVL17:
.L22:
	.loc 1 528 0
	l32r	a8, .LC28
	l32i.n	a8, a8, 0
	beqi	a8, 1, .L23
	.loc 1 529 0
	movi.n	a8, 2
	or	a2, a2, a8
.LVL18:
.L23:
	.loc 1 532 0
	retw.n
.LFE45:
	.size	get_power_down_flags, .-get_power_down_flags
	.section	.text.timer_wakeup_prepare,"ax",@progbits
	.literal_position
	.literal .LC33, s_config
	.align	4
	.type	timer_wakeup_prepare, @function
timer_wakeup_prepare:
.LFB35:
	.loc 1 294 0
	entry	sp, 32
.LCFI5:
	.loc 1 295 0
	call8	esp_clk_slowclk_cal_get
.LVL19:
	.loc 1 296 0
	mov.n	a12, a10
	l32r	a2, .LC33
	l32i.n	a10, a2, 16
.LVL20:
	l32i.n	a11, a2, 20
	call8	rtc_time_us_to_slowclk
.LVL21:
	mov.n	a2, a10
	mov.n	a3, a11
.LVL22:
	.loc 1 297 0
	call8	rtc_time_get
.LVL23:
	.loc 1 298 0
	add.n	a10, a2, a10
.LVL24:
	movi.n	a8, 1
	bltu	a10, a2, .L26
	movi.n	a8, 0
.L26:
	add.n	a9, a3, a11
	add.n	a11, a8, a9
	call8	rtc_sleep_set_wakeup_time
.LVL25:
	retw.n
.LFE35:
	.size	timer_wakeup_prepare, .-timer_wakeup_prepare
	.section	.iram1,"ax",@progbits
	.literal_position
	.literal .LC34, 1072955420
	.literal .LC35, 1073020956
	.literal .LC36, 1073143836
	.literal .LC37, s_config
	.literal .LC38, 1072988184
	.literal .LC39, 2097152
	.literal .LC42, 16384
	.literal .LC43, -229377
	.literal .LC44, -1835009
	.literal .LC45, -14680065
	.literal .LC46, 16777216
	.literal .LC47, -33554433
	.align	4
	.type	esp_sleep_start, @function
esp_sleep_start:
.LFB27:
	.loc 1 126 0
.LVL26:
	entry	sp, 32
.LCFI6:
.L28:
.LBB23:
.LBB24:
	.file 2 "C:/esp/esp-idf/components/esp32/include/rom/uart.h"
	.loc 2 271 0
	l32r	a8, .LC34
	memw
	l32i.n	a8, a8, 0
	extui	a8, a8, 24, 4
	bnez.n	a8, .L28
.L29:
.LBE24:
.LBE23:
.LBB25:
.LBB26:
	l32r	a8, .LC35
	memw
	l32i.n	a8, a8, 0
	extui	a8, a8, 24, 4
	bnez.n	a8, .L29
.L30:
.LBE26:
.LBE25:
.LBB27:
.LBB28:
	l32r	a8, .LC36
	memw
	l32i.n	a8, a8, 0
	extui	a8, a8, 24, 4
	bnez.n	a8, .L30
.LBE28:
.LBE27:
	.loc 1 133 0
	l32r	a3, .LC37
	l32i.n	a3, a3, 24
	bbci	a3, 0, .L31
	.loc 1 134 0
	call8	ext0_wakeup_prepare
.LVL27:
.L31:
	.loc 1 136 0
	l32r	a3, .LC37
	l32i.n	a3, a3, 24
	bbci	a3, 1, .L32
	.loc 1 137 0
	call8	ext1_wakeup_prepare
.LVL28:
.L32:
	.loc 1 140 0
	l32r	a3, .LC37
	l32i.n	a3, a3, 24
	bbci	a3, 9, .L33
	.loc 1 141 0
	l32r	a8, .LC38
	memw
	l32i.n	a9, a8, 0
	l32r	a3, .LC39
	or	a3, a9, a3
	memw
	s32i.n	a3, a8, 0
.L33:
	.loc 1 144 0
	l32r	a3, .LC37
	l32i.n	a3, a3, 24
	bbci	a3, 3, .L34
	.loc 1 145 0 discriminator 1
	l32r	a8, .LC37
	l32i.n	a9, a8, 16
	l32i.n	a3, a8, 20
	.loc 1 144 0 discriminator 1
	or	a3, a9, a3
	beqz.n	a3, .L34
	.loc 1 146 0 discriminator 1
	call8	timer_wakeup_prepare
.LVL29:
.L34:
	.loc 1 150 0
	movi.n	a12, 1
	movi.n	a3, 0
	movi.n	a8, 8
	and	a8, a2, a8
	mov.n	a4, a3
	movnez	a4, a12, a8
	slli	a9, a4, 5
	movi.n	a8, 0x10
	and	a8, a2, a8
	movi.n	a11, 4
	and	a11, a2, a11
	mov.n	a4, a3
	movnez	a4, a12, a11
	slli	a11, a4, 6
	or	a8, a8, a9
	movi.n	a9, 2
	and	a9, a2, a9
	mov.n	a4, a3
	movnez	a4, a12, a9
	slli	a9, a4, 7
	or	a8, a8, a11
	and	a10, a2, a12
	slli	a10, a10, 10
	or	a8, a8, a9
	or	a10, a8, a10
	l32r	a8, .LC42
	or	a8, a10, a8
.LVL30:
	l32r	a9, .LC43
.LVL31:
	and	a8, a8, a9
.LVL32:
	l32r	a9, .LC44
.LVL33:
	and	a8, a8, a9
.LVL34:
	l32r	a9, .LC45
.LVL35:
	and	a8, a8, a9
.LVL36:
	l32r	a9, .LC46
.LVL37:
	or	a8, a8, a9
.LVL38:
	movi.n	a10, 0x20
	and	a2, a2, a10
.LVL39:
	moveqz	a12, a3, a2
	slli	a12, a12, 25
	l32r	a10, .LC47
.LVL40:
	and	a10, a8, a10
	.loc 1 151 0
	or	a10, a10, a12
	call8	rtc_sleep_init
.LVL41:
	.loc 1 152 0
	l32r	a2, .LC37
	l32i.n	a10, a2, 24
	mov.n	a11, a3
	extui	a10, a10, 0, 11
	call8	rtc_sleep_start
.LVL42:
	.loc 1 153 0
	mov.n	a2, a10
	retw.n
.LFE27:
	.size	esp_sleep_start, .-esp_sleep_start
	.section	.text.rtc_wdt_enable,"ax",@progbits
	.literal_position
	.literal .LC48, 1072988324
	.literal .LC49, 1356348065
	.literal .LC50, 1072988320
	.literal .LC51, 1072988300
	.literal .LC52, 14336
	.literal .LC53, 114688
	.literal .LC54, -1879048193
	.literal .LC55, 1073741824
	.literal .LC56, 274877907
	.literal .LC57, 1072988304
	.literal .LC58, -2147483520
	.align	4
	.type	rtc_wdt_enable, @function
rtc_wdt_enable:
.LFB29:
	.loc 1 176 0
.LVL43:
	entry	sp, 32
.LCFI7:
	.loc 1 177 0
	l32r	a4, .LC48
	l32r	a3, .LC49
	memw
	s32i.n	a3, a4, 0
	.loc 1 178 0
	movi.n	a8, 1
	l32r	a3, .LC50
	memw
	s32i.n	a8, a3, 0
	.loc 1 179 0
	l32r	a3, .LC51
	memw
	l32i.n	a9, a3, 0
	l32r	a8, .LC52
	or	a8, a9, a8
	memw
	s32i.n	a8, a3, 0
	.loc 1 180 0
	memw
	l32i.n	a9, a3, 0
	l32r	a8, .LC53
	or	a8, a9, a8
	memw
	s32i.n	a8, a3, 0
	.loc 1 181 0
	memw
	l32i.n	a9, a3, 0
	l32r	a8, .LC54
	and	a9, a9, a8
	l32r	a8, .LC55
	or	a8, a9, a8
	memw
	s32i.n	a8, a3, 0
	.loc 1 182 0
	call8	rtc_clk_slow_freq_get_hz
.LVL44:
	mull	a10, a2, a10
	l32r	a8, .LC56
	muluh	a10, a10, a8
	srli	a10, a10, 6
	l32r	a2, .LC57
.LVL45:
	memw
	s32i.n	a10, a2, 0
	.loc 1 183 0
	memw
	l32i.n	a2, a3, 0
	l32r	a8, .LC58
	or	a8, a2, a8
	memw
	s32i.n	a8, a3, 0
	.loc 1 184 0
	movi.n	a2, 0
	memw
	s32i.n	a2, a4, 0
	retw.n
.LFE29:
	.size	rtc_wdt_enable, .-rtc_wdt_enable
	.section	.iram1
	.align	4
	.type	esp_light_sleep_inner, @function
esp_light_sleep_inner:
.LFB31:
	.loc 1 205 0
.LVL46:
	entry	sp, 32
.LCFI8:
	.loc 1 207 0
	mov.n	a10, a2
	call8	esp_sleep_start
.LVL47:
	mov.n	a5, a10
.LVL48:
	.loc 1 210 0
	mov.n	a10, a3
	call8	rtc_clk_cpu_freq_set
.LVL49:
	.loc 1 213 0
	bbci	a2, 5, .L38
	.loc 1 215 0
	mov.n	a10, a4
	call8	ets_delay_us
.LVL50:
.L38:
	.loc 1 218 0
	mov.n	a2, a5
.LVL51:
	retw.n
.LFE31:
	.size	esp_light_sleep_inner, .-esp_light_sleep_inner
	.section	.text.esp_get_deep_sleep_wake_stub,"ax",@progbits
	.literal_position
	.literal .LC59, lock_rtc_memory_crc
	.literal .LC60, 1072988348
	.literal .LC61, 1072988344
	.align	4
	.global	esp_get_deep_sleep_wake_stub
	.type	esp_get_deep_sleep_wake_stub, @function
esp_get_deep_sleep_wake_stub:
.LFB23:
	.loc 1 78 0
	entry	sp, 32
.LCFI9:
	.loc 1 79 0
	l32r	a4, .LC59
	mov.n	a10, a4
	call8	_lock_acquire
.LVL52:
	.loc 1 80 0
	l32r	a2, .LC60
	memw
	l32i.n	a3, a2, 0
.LVL53:
	.loc 1 81 0
	call8	set_rtc_memory_crc
.LVL54:
	.loc 1 82 0
	memw
	l32i.n	a5, a2, 0
.LVL55:
	.loc 1 83 0
	memw
	s32i.n	a3, a2, 0
	.loc 1 84 0
	mov.n	a10, a4
	call8	_lock_release
.LVL56:
	.loc 1 86 0
	bne	a3, a5, .L41
	.loc 1 87 0
	l32r	a2, .LC61
	memw
	l32i.n	a2, a2, 0
	retw.n
.L41:
	.loc 1 89 0
	movi.n	a2, 0
	.loc 1 91 0
	retw.n
.LFE23:
	.size	esp_get_deep_sleep_wake_stub, .-esp_get_deep_sleep_wake_stub
	.section	.text.esp_set_deep_sleep_wake_stub,"ax",@progbits
	.literal_position
	.literal .LC62, lock_rtc_memory_crc
	.literal .LC63, 1072988344
	.align	4
	.global	esp_set_deep_sleep_wake_stub
	.type	esp_set_deep_sleep_wake_stub, @function
esp_set_deep_sleep_wake_stub:
.LFB24:
	.loc 1 94 0
.LVL57:
	entry	sp, 32
.LCFI10:
	.loc 1 95 0
	l32r	a3, .LC62
	mov.n	a10, a3
	call8	_lock_acquire
.LVL58:
	.loc 1 96 0
	l32r	a8, .LC63
	memw
	s32i.n	a2, a8, 0
	.loc 1 97 0
	call8	set_rtc_memory_crc
.LVL59:
	.loc 1 98 0
	mov.n	a10, a3
	call8	_lock_release
.LVL60:
	retw.n
.LFE24:
	.size	esp_set_deep_sleep_wake_stub, .-esp_set_deep_sleep_wake_stub
	.section	.iram1
	.literal_position
	.literal .LC64, esp_wake_deep_sleep
	.align	4
	.global	esp_deep_sleep_start
	.type	esp_deep_sleep_start, @function
esp_deep_sleep_start:
.LFB28:
	.loc 1 156 0
	entry	sp, 32
.LCFI11:
	.loc 1 158 0
	call8	esp_get_deep_sleep_wake_stub
.LVL61:
	bnez.n	a10, .L44
	.loc 1 159 0
	l32r	a10, .LC64
	call8	esp_set_deep_sleep_wake_stub
.LVL62:
.L44:
	.loc 1 163 0
	call8	get_power_down_flags
.LVL63:
	.loc 1 166 0
	movi.n	a8, 0x21
	or	a10, a10, a8
.LVL64:
	call8	esp_sleep_start
.LVL65:
.L45:
	j	.L45
.LFE28:
	.size	esp_deep_sleep_start, .-esp_deep_sleep_start
	.section	.text.esp_light_sleep_start,"ax",@progbits
	.literal_position
	.literal .LC65, light_sleep_lock$5443
	.literal .LC66, s_config
	.align	4
	.global	esp_light_sleep_start
	.type	esp_light_sleep_start, @function
esp_light_sleep_start:
.LFB32:
	.loc 1 221 0
	entry	sp, 32
.LCFI12:
	.loc 1 224 0
	l32r	a10, .LC65
	call8	vTaskEnterCritical
.LVL66:
.LBB29:
.LBB30:
	.file 3 "C:/esp/esp-idf/components/freertos/include/freertos/portable.h"
	.loc 3 202 0
#APP
# 202 "C:/esp/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a8
 extui a8,a8,13,1
# 0 "" 2
.LVL67:
#NO_APP
.LBE30:
.LBE29:
	.loc 1 225 0
	movi.n	a2, 0
	movi.n	a3, 1
	movnez	a3, a2, a8
	extui	a3, a3, 0, 8
.LVL68:
	.loc 1 226 0
	mov.n	a10, a3
	call8	esp_cpu_stall
.LVL69:
	.loc 1 229 0
	call8	esp_dport_access_int_pause
.LVL70:
	.loc 1 232 0
	call8	get_power_down_flags
.LVL71:
	mov.n	a2, a10
.LVL72:
	.loc 1 239 0
	l32r	a8, .LC66
	l32i.n	a11, a8, 16
	l32i.n	a8, a8, 20
	bnez.n	a8, .L50
	bnez.n	a8, .L47
	movi	a9, 0x7d0
	bgeu	a9, a11, .L47
.L50:
	.loc 1 241 0
	movi.n	a9, 0x20
	or	a2, a2, a9
.LVL73:
	.loc 1 242 0
	l32r	a12, .LC66
	movi	a10, -0x2bc
	add.n	a10, a11, a10
	movi.n	a9, 1
	bltu	a10, a11, .L49
	movi.n	a9, 0
.L49:
	addi.n	a8, a8, -1
	add.n	a9, a9, a8
	s32i.n	a10, a12, 16
	s32i.n	a9, a12, 20
.L47:
	.loc 1 246 0
	movi	a10, 0x3e8
	call8	rtc_wdt_enable
.LVL74:
	.loc 1 249 0
	call8	rtc_clk_cpu_freq_get
.LVL75:
	.loc 1 252 0
	movi	a12, 0x2bc
	mov.n	a11, a10
	mov.n	a10, a2
.LVL76:
	call8	esp_light_sleep_inner
.LVL77:
	mov.n	a2, a10
.LVL78:
	.loc 1 256 0
	call8	esp_set_time_from_rtc
.LVL79:
	.loc 1 263 0
	mov.n	a10, a3
	call8	esp_cpu_unstall
.LVL80:
	.loc 1 264 0
	call8	esp_dport_access_int_resume
.LVL81:
	.loc 1 265 0
	call8	rtc_wdt_disable
.LVL82:
	.loc 1 266 0
	l32r	a10, .LC65
	call8	vTaskExitCritical
.LVL83:
	.loc 1 268 0
	retw.n
.LFE32:
	.size	esp_light_sleep_start, .-esp_light_sleep_start
	.section	.text.esp_sleep_enable_ulp_wakeup,"ax",@progbits
	.align	4
	.global	esp_sleep_enable_ulp_wakeup
	.type	esp_sleep_enable_ulp_wakeup, @function
esp_sleep_enable_ulp_wakeup:
.LFB33:
	.loc 1 273 0
	entry	sp, 32
.LCFI13:
	.loc 1 284 0
	movi	a2, 0x103
	retw.n
.LFE33:
	.size	esp_sleep_enable_ulp_wakeup, .-esp_sleep_enable_ulp_wakeup
	.section	.text.esp_sleep_enable_timer_wakeup,"ax",@progbits
	.literal_position
	.literal .LC68, s_config
	.align	4
	.global	esp_sleep_enable_timer_wakeup
	.type	esp_sleep_enable_timer_wakeup, @function
esp_sleep_enable_timer_wakeup:
.LFB34:
	.loc 1 287 0
.LVL84:
	entry	sp, 32
.LCFI14:
	.loc 1 288 0
	l32r	a8, .LC68
	l32i.n	a10, a8, 24
	movi.n	a9, 8
	or	a9, a10, a9
	s32i.n	a9, a8, 24
	.loc 1 289 0
	s32i.n	a2, a8, 16
	s32i.n	a3, a8, 20
	.loc 1 291 0
	movi.n	a2, 0
.LVL85:
	retw.n
.LFE34:
	.size	esp_sleep_enable_timer_wakeup, .-esp_sleep_enable_timer_wakeup
	.section	.text.esp_deep_sleep,"ax",@progbits
	.align	4
	.global	esp_deep_sleep
	.type	esp_deep_sleep, @function
esp_deep_sleep:
.LFB26:
	.loc 1 120 0
.LVL86:
	entry	sp, 32
.LCFI15:
	.loc 1 121 0
	mov.n	a10, a2
	mov.n	a11, a3
	call8	esp_sleep_enable_timer_wakeup
.LVL87:
	.loc 1 122 0
	call8	esp_deep_sleep_start
.LVL88:
.LFE26:
	.size	esp_deep_sleep, .-esp_deep_sleep
	.global	system_deep_sleep
	.set	system_deep_sleep,esp_deep_sleep
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC70:
	.string	"sleep"
	.align	4
.LC72:
	.string	"\033[0;31mE (%d) %s: Conflicting wake-up trigger: ext0\033[0m\n"
	.section	.text.esp_sleep_enable_touchpad_wakeup,"ax",@progbits
	.literal_position
	.literal .LC69, s_config
	.literal .LC71, .LC70
	.literal .LC73, .LC72
	.align	4
	.global	esp_sleep_enable_touchpad_wakeup
	.type	esp_sleep_enable_touchpad_wakeup, @function
esp_sleep_enable_touchpad_wakeup:
.LFB36:
	.loc 1 302 0
	entry	sp, 32
.LCFI16:
	.loc 1 303 0
	l32r	a8, .LC69
	l32i.n	a8, a8, 24
	extui	a8, a8, 0, 11
	bbci	a8, 0, .L55
	.loc 1 304 0 discriminator 1
	call8	esp_log_timestamp
.LVL89:
	l32r	a11, .LC71
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC73
	movi.n	a10, 1
	call8	esp_log_write
.LVL90:
	.loc 1 305 0 discriminator 1
	movi	a2, 0x103
	retw.n
.L55:
	.loc 1 307 0
	l32r	a2, .LC69
	movi	a9, 0x100
	or	a8, a8, a9
	extui	a9, a8, 0, 11
	l32i.n	a10, a2, 24
	movi	a8, -0x800
	and	a8, a10, a8
	or	a8, a8, a9
	s32i.n	a8, a2, 24
	.loc 1 308 0
	movi.n	a2, 0
	.loc 1 309 0
	retw.n
.LFE36:
	.size	esp_sleep_enable_touchpad_wakeup, .-esp_sleep_enable_touchpad_wakeup
	.section	.rodata.str1.4
	.align	4
.LC77:
	.string	"\033[0;31mE (%d) %s: Conflicting wake-up triggers: touch / ULP\033[0m\n"
	.section	.text.esp_sleep_enable_ext0_wakeup,"ax",@progbits
	.literal_position
	.literal .LC74, rtc_gpio_desc
	.literal .LC75, s_config
	.literal .LC76, .LC70
	.literal .LC78, .LC77
	.literal .LC79, -1073741825
	.align	4
	.global	esp_sleep_enable_ext0_wakeup
	.type	esp_sleep_enable_ext0_wakeup, @function
esp_sleep_enable_ext0_wakeup:
.LFB38:
	.loc 1 322 0
.LVL91:
	entry	sp, 32
.LCFI17:
	.loc 1 323 0
	bgeui	a3, 2, .L61
.LVL92:
.LBB31:
.LBB32:
	.file 4 "C:/esp/esp-idf/components/driver/include/driver/rtc_io.h"
	.loc 4 74 0
	movi.n	a8, 0x27
	bltu	a8, a2, .L62
	addx2	a8, a2, a2
	addx4	a8, a8, a2
	l32r	a9, .LC74
	addx4	a8, a8, a9
	l32i.n	a8, a8, 0
	bnez.n	a8, .L63
	j	.L59
.L62:
	movi.n	a8, 0
	j	.L59
.L63:
	movi.n	a8, 1
.L59:
.LBE32:
.LBE31:
	.loc 1 326 0
	beqz.n	a8, .L64
	.loc 1 329 0
	l32r	a8, .LC75
	l32i.n	a9, a8, 24
	extui	a9, a9, 0, 11
	movi	a8, 0x300
	bnone	a9, a8, .L60
	.loc 1 330 0 discriminator 1
	call8	esp_log_timestamp
.LVL93:
	l32r	a11, .LC76
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC78
	movi.n	a10, 1
	call8	esp_log_write
.LVL94:
	.loc 1 331 0 discriminator 1
	movi	a2, 0x103
.LVL95:
	retw.n
.LVL96:
.L60:
	.loc 1 333 0
	addx2	a8, a2, a2
	addx4	a2, a8, a2
.LVL97:
	l32r	a8, .LC74
	addx4	a2, a2, a8
	l32r	a10, .LC75
	l8ui	a2, a2, 48
	extui	a8, a2, 0, 5
	l32i.n	a11, a10, 28
	movi.n	a2, -0x20
	and	a2, a11, a2
	or	a2, a2, a8
	s32i.n	a2, a10, 28
	.loc 1 334 0
	extui	a3, a3, 0, 1
.LVL98:
	slli	a8, a3, 30
	l32i.n	a3, a10, 24
	l32r	a2, .LC79
	and	a3, a3, a2
	or	a3, a3, a8
	.loc 1 335 0
	movi.n	a2, 1
	or	a9, a9, a2
	extui	a9, a9, 0, 11
	movi	a2, -0x800
	and	a3, a3, a2
	or	a3, a3, a9
	s32i.n	a3, a10, 24
	.loc 1 336 0
	movi.n	a2, 0
	retw.n
.LVL99:
.L61:
	.loc 1 324 0
	movi	a2, 0x102
.LVL100:
	retw.n
.LVL101:
.L64:
	.loc 1 327 0
	movi	a2, 0x102
.LVL102:
	.loc 1 337 0
	retw.n
.LFE38:
	.size	esp_sleep_enable_ext0_wakeup, .-esp_sleep_enable_ext0_wakeup
	.section	.rodata.str1.4
	.align	4
.LC82:
	.string	"\033[0;31mE (%d) %s: Not an RTC IO: GPIO%d\033[0m\n"
	.section	.text.esp_sleep_enable_ext1_wakeup,"ax",@progbits
	.literal_position
	.literal .LC80, rtc_gpio_desc
	.literal .LC81, .LC70
	.literal .LC83, .LC82
	.literal .LC84, s_config
	.literal .LC85, 262143
	.literal .LC86, -1073737729
	.literal .LC87, -2049
	.align	4
	.global	esp_sleep_enable_ext1_wakeup
	.type	esp_sleep_enable_ext1_wakeup, @function
esp_sleep_enable_ext1_wakeup:
.LFB40:
	.loc 1 361 0
.LVL103:
	entry	sp, 32
.LCFI18:
	.loc 1 362 0
	bgeui	a4, 2, .L73
	movi.n	a5, 0
	mov.n	a9, a5
	j	.L67
.LVL104:
.L72:
.LBB33:
	.loc 1 368 0
	bbci	a2, 0, .L68
.LVL105:
.LBB34:
.LBB35:
	.loc 4 74 0
	movi.n	a8, 0x27
	bltu	a8, a5, .L74
	addx2	a8, a5, a5
	addx4	a8, a8, a5
	l32r	a10, .LC80
	addx4	a8, a8, a10
	l32i.n	a8, a8, 0
	bnez.n	a8, .L75
	j	.L70
.L74:
	movi.n	a8, 0
	j	.L70
.L75:
	movi.n	a8, 1
.L70:
.LBE35:
.LBE34:
	.loc 1 371 0
	bnez.n	a8, .L71
	.loc 1 372 0 discriminator 1
	call8	esp_log_timestamp
.LVL106:
	l32r	a11, .LC81
	mov.n	a15, a5
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC83
	movi.n	a10, 1
	call8	esp_log_write
.LVL107:
	.loc 1 373 0 discriminator 1
	movi	a2, 0x102
.LVL108:
	retw.n
.LVL109:
.L71:
	.loc 1 375 0
	addx2	a8, a5, a5
	addx4	a8, a8, a5
	l32r	a10, .LC80
	addx4	a8, a8, a10
	l32i.n	a10, a8, 48
	movi.n	a8, 1
	ssl	a10
	sll	a8, a8
	or	a9, a9, a8
.LVL110:
.L68:
	.loc 1 367 0 discriminator 2
	addi.n	a5, a5, 1
.LVL111:
	slli	a8, a3, 31
	srli	a2, a2, 1
.LVL112:
	or	a2, a8, a2
	srli	a3, a3, 1
.LVL113:
.L67:
	.loc 1 367 0 is_stmt 0 discriminator 1
	or	a8, a2, a3
	bnez.n	a8, .L72
.LBE33:
	.loc 1 377 0 is_stmt 1
	l32r	a5, .LC84
.LVL114:
	l32r	a2, .LC85
.LVL115:
	and	a9, a9, a2
.LVL116:
	slli	a9, a9, 12
	l32i.n	a3, a5, 24
	l32r	a2, .LC86
	and	a2, a3, a2
	or	a2, a2, a9
	.loc 1 378 0
	extui	a4, a4, 0, 1
.LVL117:
	slli	a4, a4, 11
	l32r	a3, .LC87
	and	a2, a2, a3
	or	a2, a2, a4
	.loc 1 379 0
	movi.n	a3, 2
	or	a2, a2, a3
	s32i.n	a2, a5, 24
	.loc 1 380 0
	movi.n	a2, 0
	retw.n
.LVL118:
.L73:
	.loc 1 363 0
	movi	a2, 0x102
.LVL119:
	.loc 1 381 0
	retw.n
.LFE40:
	.size	esp_sleep_enable_ext1_wakeup, .-esp_sleep_enable_ext1_wakeup
	.section	.text.esp_sleep_get_wakeup_cause,"ax",@progbits
	.literal_position
	.literal .LC88, 1072988216
	.align	4
	.global	esp_sleep_get_wakeup_cause
	.type	esp_sleep_get_wakeup_cause, @function
esp_sleep_get_wakeup_cause:
.LFB43:
	.loc 1 444 0
	entry	sp, 32
.LCFI19:
	.loc 1 445 0
	movi.n	a10, 0
	call8	rtc_get_reset_reason
.LVL120:
	bnei	a10, 5, .L78
	.loc 1 449 0
	l32r	a2, .LC88
	memw
	l32i.n	a2, a2, 0
.LVL121:
	.loc 1 450 0
	bbsi	a2, 0, .L79
	.loc 1 452 0
	bbsi	a2, 1, .L80
	.loc 1 454 0
	bbsi	a2, 3, .L81
	.loc 1 456 0
	bbsi	a2, 8, .L82
	.loc 1 458 0
	bbci	a2, 9, .L83
	.loc 1 459 0
	movi.n	a2, 5
.LVL122:
	retw.n
.L78:
	.loc 1 446 0
	movi.n	a2, 0
	retw.n
.LVL123:
.L79:
	.loc 1 451 0
	movi.n	a2, 1
.LVL124:
	retw.n
.LVL125:
.L80:
	.loc 1 453 0
	movi.n	a2, 2
.LVL126:
	retw.n
.LVL127:
.L81:
	.loc 1 455 0
	movi.n	a2, 3
.LVL128:
	retw.n
.LVL129:
.L82:
	.loc 1 457 0
	movi.n	a2, 4
.LVL130:
	retw.n
.LVL131:
.L83:
	.loc 1 461 0
	movi.n	a2, 0
.LVL132:
	.loc 1 463 0
	retw.n
.LFE43:
	.size	esp_sleep_get_wakeup_cause, .-esp_sleep_get_wakeup_cause
	.section	.rodata.str1.4
	.align	4
.LC90:
	.string	"touch_mask != 0 && \"wakeup reason is RTC_TOUCH_TRIG_EN but SENS_TOUCH_MEAS_EN is zero\""
	.align	4
.LC93:
	.string	"C:/esp/esp-idf/components/esp32/sleep_modes.c"
	.section	.text.esp_sleep_get_touchpad_wakeup_status,"ax",@progbits
	.literal_position
	.literal .LC89, 1072990340
	.literal .LC91, .LC90
	.literal .LC92, __func__$5466
	.literal .LC94, .LC93
	.align	4
	.global	esp_sleep_get_touchpad_wakeup_status
	.type	esp_sleep_get_touchpad_wakeup_status, @function
esp_sleep_get_touchpad_wakeup_status:
.LFB37:
	.loc 1 312 0
	entry	sp, 32
.LCFI20:
	.loc 1 313 0
	call8	esp_sleep_get_wakeup_cause
.LVL133:
	bnei	a10, 4, .L87
	.loc 1 316 0
	l32r	a2, .LC89
	memw
	l32i.n	a8, a2, 0
	extui	a8, a8, 0, 10
.LVL134:
	.loc 1 317 0
	bnez.n	a8, .L86
	.loc 1 317 0 is_stmt 0 discriminator 1
	l32r	a13, .LC91
	l32r	a12, .LC92
	movi	a11, 0x13d
	l32r	a10, .LC94
	call8	__assert_func
.LVL135:
.L86:
	.loc 1 318 0 is_stmt 1
	neg	a2, a8
	and	a2, a2, a8
	nsau	a2, a2
	neg	a2, a2
	addi	a2, a2, 31
	retw.n
.LVL136:
.L87:
	.loc 1 314 0
	movi.n	a2, 0xa
	.loc 1 319 0
	retw.n
.LFE37:
	.size	esp_sleep_get_touchpad_wakeup_status, .-esp_sleep_get_touchpad_wakeup_status
	.section	.text.esp_sleep_get_ext1_wakeup_status,"ax",@progbits
	.literal_position
	.literal .LC96, 1072988368
	.literal .LC97, 262143
	.literal .LC98, rtc_gpio_desc
	.align	4
	.global	esp_sleep_get_ext1_wakeup_status
	.type	esp_sleep_get_ext1_wakeup_status, @function
esp_sleep_get_ext1_wakeup_status:
.LFB42:
	.loc 1 423 0
	entry	sp, 32
.LCFI21:
	.loc 1 424 0
	call8	esp_sleep_get_wakeup_cause
.LVL137:
	bnei	a10, 2, .L94
	.loc 1 427 0
	l32r	a2, .LC96
	memw
	l32i.n	a11, a2, 0
	l32r	a2, .LC97
	and	a11, a11, a2
.LVL138:
.LBB36:
	.loc 1 430 0
	movi.n	a8, 0
.LBE36:
	.loc 1 429 0
	mov.n	a2, a8
	mov.n	a3, a8
.LBB40:
	.loc 1 430 0
	j	.L90
.LVL139:
.L93:
.LBB37:
.LBB38:
.LBB39:
	.loc 4 74 0
	movi.n	a9, 0x27
	bltu	a9, a8, .L95
	addx2	a10, a8, a8
	addx4	a10, a10, a8
	slli	a9, a10, 2
	l32r	a10, .LC98
	add.n	a9, a10, a9
	l32i.n	a9, a9, 0
	bnez.n	a9, .L96
	j	.L91
.L95:
	movi.n	a9, 0
	j	.L91
.L96:
	movi.n	a9, 1
.L91:
.LBE39:
.LBE38:
	.loc 1 431 0
	beqz.n	a9, .L92
	.loc 1 434 0
	addx2	a10, a8, a8
	addx4	a10, a10, a8
	slli	a9, a10, 2
	l32r	a10, .LC98
	add.n	a9, a10, a9
	l32i.n	a9, a9, 48
.LVL140:
	.loc 1 435 0
	bbc	a11, a9, .L92
	.loc 1 438 0
	movi.n	a13, 0x20
	and	a13, a8, a13
	movi.n	a12, 0
	movi.n	a9, 1
.LVL141:
	ssl	a8
	sll	a9, a9
	mov.n	a10, a9
.LVL142:
	moveqz	a10, a12, a13
	movnez	a9, a12, a13
	or	a9, a2, a9
	or	a10, a3, a10
	mov.n	a2, a9
.LVL143:
	mov.n	a3, a10
.LVL144:
.L92:
.LBE37:
	.loc 1 430 0 discriminator 2
	addi.n	a8, a8, 1
.LVL145:
.L90:
	.loc 1 430 0 is_stmt 0 discriminator 1
	movi.n	a9, 0x27
	bge	a9, a8, .L93
	retw.n
.LVL146:
.L94:
.LBE40:
	.loc 1 425 0 is_stmt 1
	movi.n	a2, 0
	mov.n	a3, a2
	.loc 1 441 0
	retw.n
.LFE42:
	.size	esp_sleep_get_ext1_wakeup_status, .-esp_sleep_get_ext1_wakeup_status
	.section	.text.esp_sleep_pd_config,"ax",@progbits
	.literal_position
	.literal .LC99, s_config
	.align	4
	.global	esp_sleep_pd_config
	.type	esp_sleep_pd_config, @function
esp_sleep_pd_config:
.LFB44:
	.loc 1 467 0
.LVL147:
	entry	sp, 32
.LCFI22:
	.loc 1 468 0
	movi.n	a8, 1
	bgeui	a2, 3, .L98
	movi.n	a8, 0
.L98:
	extui	a9, a8, 0, 8
	movi.n	a8, 1
	bgeui	a3, 3, .L99
	movi.n	a8, 0
.L99:
	extui	a8, a8, 0, 8
	or	a8, a9, a8
	bnez.n	a8, .L101
	.loc 1 471 0
	l32r	a8, .LC99
	addx4	a2, a2, a8
.LVL148:
	s32i.n	a3, a2, 0
	.loc 1 472 0
	movi.n	a2, 0
	retw.n
.LVL149:
.L101:
	.loc 1 469 0
	movi	a2, 0x102
.LVL150:
	.loc 1 473 0
	retw.n
.LFE44:
	.size	esp_sleep_pd_config, .-esp_sleep_pd_config
	.section	.rodata.__func__$5466,"a",@progbits
	.align	4
	.type	__func__$5466, @object
	.size	__func__$5466, 37
__func__$5466:
	.string	"esp_sleep_get_touchpad_wakeup_status"
	.section	.data.light_sleep_lock$5443,"aw",@progbits
	.align	4
	.type	light_sleep_lock$5443, @object
	.size	light_sleep_lock$5443, 8
light_sleep_lock$5443:
	.word	-1287651329
	.word	0
	.section	.bss.lock_rtc_memory_crc,"aw",@nobits
	.align	4
	.type	lock_rtc_memory_crc, @object
	.size	lock_rtc_memory_crc, 4
lock_rtc_memory_crc:
	.zero	4
	.section	.data.s_config,"aw",@progbits
	.align	8
	.type	s_config, @object
	.size	s_config, 32
s_config:
	.word	2
	.word	2
	.word	2
	.zero	12
	.byte	0
	.byte	0
	.zero	6
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
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI1-.LFB30
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x4
	.4byte	.LCFI2-.LFB39
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.byte	0x4
	.4byte	.LCFI3-.LFB41
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.byte	0x4
	.4byte	.LCFI4-.LFB45
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI5-.LFB35
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
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI7-.LFB29
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI8-.LFB31
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI9-.LFB23
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI10-.LFB24
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI11-.LFB28
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI12-.LFB32
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI13-.LFB33
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI14-.LFB34
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI15-.LFB26
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI16-.LFB36
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x4
	.4byte	.LCFI17-.LFB38
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x4
	.4byte	.LCFI18-.LFB40
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.byte	0x4
	.4byte	.LCFI19-.LFB43
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE38:
.LSFDE40:
	.4byte	.LEFDE40-.LASFDE40
.LASFDE40:
	.4byte	.Lframe0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x4
	.4byte	.LCFI20-.LFB37
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE40:
.LSFDE42:
	.4byte	.LEFDE42-.LASFDE42
.LASFDE42:
	.4byte	.Lframe0
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.byte	0x4
	.4byte	.LCFI21-.LFB42
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE42:
.LSFDE44:
	.4byte	.LEFDE44-.LASFDE44
.LASFDE44:
	.4byte	.Lframe0
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.byte	0x4
	.4byte	.LCFI22-.LFB44
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE44:
	.text
.Letext0:
	.file 5 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 6 "C:/esp/esp-idf/components/newlib/include/sys/lock.h"
	.file 7 "C:/esp/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 8 "C:/esp/esp-idf/components/newlib/include/stdint.h"
	.file 9 "C:/esp/esp-idf/components/esp32/include/esp_err.h"
	.file 10 "C:/esp/esp-idf/components/driver/include/driver/gpio.h"
	.file 11 "C:/esp/esp-idf/components/driver/include/driver/touch_pad.h"
	.file 12 "C:/esp/esp-idf/components/esp32/include/esp_sleep.h"
	.file 13 "C:/esp/esp-idf/components/log/include/esp_log.h"
	.file 14 "C:/esp/esp-idf/components/esp32/include/rom/rtc.h"
	.file 15 "C:/esp/esp-idf/components/soc/esp32/include/soc/rtc.h"
	.file 16 "C:/esp/esp-idf/components/freertos/include/freertos/portmacro.h"
	.file 17 "C:/esp/esp-idf/components/esp32/include/esp_clk.h"
	.file 18 "C:/esp/esp-idf/components/esp32/include/rom/ets_sys.h"
	.file 19 "C:/esp/esp-idf/components/soc/esp32/include/soc/cpu.h"
	.file 20 "C:/esp/esp-idf/components/esp32/include/esp_dport_access.h"
	.file 21 "C:/esp/esp-idf/components/newlib/platform_include/esp_newlib.h"
	.file 22 "C:/esp/esp-idf/components/newlib/include/assert.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x121f
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF265
	.byte	0xc
	.4byte	.LASF266
	.4byte	.LASF267
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.4byte	.LASF3
	.byte	0x5
	.byte	0xd8
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x4
	.4byte	.LASF4
	.byte	0x6
	.byte	0xb
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF5
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x7
	.byte	0x12
	.4byte	0x69
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x4
	.4byte	.LASF9
	.byte	0x7
	.byte	0x19
	.4byte	0x2c
	.uleb128 0x4
	.4byte	.LASF10
	.byte	0x7
	.byte	0x1a
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x4
	.4byte	.LASF12
	.byte	0x7
	.byte	0x1e
	.4byte	0x25
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x8
	.byte	0x15
	.4byte	0x5e
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x8
	.byte	0x2c
	.4byte	0x77
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x8
	.byte	0x2d
	.4byte	0x82
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x8
	.byte	0x39
	.4byte	0x94
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF17
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF18
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF19
	.uleb128 0x5
	.byte	0x4
	.4byte	0xe6
	.uleb128 0x6
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF20
	.uleb128 0x5
	.byte	0x4
	.4byte	0xf4
	.uleb128 0x7
	.4byte	0xe7
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x9
	.byte	0x18
	.4byte	0xaa
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF22
	.uleb128 0x8
	.byte	0x4
	.4byte	0x3e
	.byte	0xa
	.byte	0x81
	.4byte	0x1ea
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF30
	.byte	0x7
	.uleb128 0x9
	.4byte	.LASF31
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF32
	.byte	0x9
	.uleb128 0x9
	.4byte	.LASF33
	.byte	0xa
	.uleb128 0x9
	.4byte	.LASF34
	.byte	0xb
	.uleb128 0x9
	.4byte	.LASF35
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0xd
	.uleb128 0x9
	.4byte	.LASF37
	.byte	0xe
	.uleb128 0x9
	.4byte	.LASF38
	.byte	0xf
	.uleb128 0x9
	.4byte	.LASF39
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF40
	.byte	0x11
	.uleb128 0x9
	.4byte	.LASF41
	.byte	0x12
	.uleb128 0x9
	.4byte	.LASF42
	.byte	0x13
	.uleb128 0x9
	.4byte	.LASF43
	.byte	0x15
	.uleb128 0x9
	.4byte	.LASF44
	.byte	0x16
	.uleb128 0x9
	.4byte	.LASF45
	.byte	0x17
	.uleb128 0x9
	.4byte	.LASF46
	.byte	0x19
	.uleb128 0x9
	.4byte	.LASF47
	.byte	0x1a
	.uleb128 0x9
	.4byte	.LASF48
	.byte	0x1b
	.uleb128 0x9
	.4byte	.LASF49
	.byte	0x20
	.uleb128 0x9
	.4byte	.LASF50
	.byte	0x21
	.uleb128 0x9
	.4byte	.LASF51
	.byte	0x22
	.uleb128 0x9
	.4byte	.LASF52
	.byte	0x23
	.uleb128 0x9
	.4byte	.LASF53
	.byte	0x24
	.uleb128 0x9
	.4byte	.LASF54
	.byte	0x25
	.uleb128 0x9
	.4byte	.LASF55
	.byte	0x26
	.uleb128 0x9
	.4byte	.LASF56
	.byte	0x27
	.uleb128 0x9
	.4byte	.LASF57
	.byte	0x28
	.byte	0
	.uleb128 0x4
	.4byte	.LASF58
	.byte	0xa
	.byte	0xae
	.4byte	0x10b
	.uleb128 0x8
	.byte	0x4
	.4byte	0x3e
	.byte	0xb
	.byte	0x19
	.4byte	0x244
	.uleb128 0x9
	.4byte	.LASF59
	.byte	0
	.uleb128 0x9
	.4byte	.LASF60
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF61
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF62
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF63
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF64
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF65
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF66
	.byte	0x7
	.uleb128 0x9
	.4byte	.LASF67
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF68
	.byte	0x9
	.uleb128 0x9
	.4byte	.LASF69
	.byte	0xa
	.byte	0
	.uleb128 0x4
	.4byte	.LASF70
	.byte	0xb
	.byte	0x25
	.4byte	0x1f5
	.uleb128 0x8
	.byte	0x4
	.4byte	0x3e
	.byte	0xc
	.byte	0x1d
	.4byte	0x268
	.uleb128 0x9
	.4byte	.LASF71
	.byte	0
	.uleb128 0x9
	.4byte	.LASF72
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF73
	.byte	0xc
	.byte	0x20
	.4byte	0x24f
	.uleb128 0x8
	.byte	0x4
	.4byte	0x3e
	.byte	0xc
	.byte	0x25
	.4byte	0x298
	.uleb128 0x9
	.4byte	.LASF74
	.byte	0
	.uleb128 0x9
	.4byte	.LASF75
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF76
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF77
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.4byte	.LASF78
	.byte	0xc
	.byte	0x2a
	.4byte	0x273
	.uleb128 0x8
	.byte	0x4
	.4byte	0x3e
	.byte	0xc
	.byte	0x2f
	.4byte	0x2c2
	.uleb128 0x9
	.4byte	.LASF79
	.byte	0
	.uleb128 0x9
	.4byte	.LASF80
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF81
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF82
	.byte	0xc
	.byte	0x33
	.4byte	0x2a3
	.uleb128 0x8
	.byte	0x4
	.4byte	0x3e
	.byte	0xc
	.byte	0x38
	.4byte	0x2fe
	.uleb128 0x9
	.4byte	.LASF83
	.byte	0
	.uleb128 0x9
	.4byte	.LASF84
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF85
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF86
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF87
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF88
	.byte	0x5
	.byte	0
	.uleb128 0x4
	.4byte	.LASF89
	.byte	0xc
	.byte	0x3f
	.4byte	0x2cd
	.uleb128 0xa
	.4byte	.LASF90
	.byte	0xc
	.2byte	0x10d
	.4byte	0xe0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x3e
	.byte	0xd
	.byte	0x1f
	.4byte	0x346
	.uleb128 0x9
	.4byte	.LASF91
	.byte	0
	.uleb128 0x9
	.4byte	.LASF92
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF93
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF94
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF95
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF96
	.byte	0x5
	.byte	0
	.uleb128 0x4
	.4byte	.LASF97
	.byte	0xd
	.byte	0x26
	.4byte	0x315
	.uleb128 0x8
	.byte	0x4
	.4byte	0x3e
	.byte	0xe
	.byte	0x50
	.4byte	0x3be
	.uleb128 0x9
	.4byte	.LASF98
	.byte	0
	.uleb128 0x9
	.4byte	.LASF99
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF100
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF101
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF102
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF103
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF104
	.byte	0x7
	.uleb128 0x9
	.4byte	.LASF105
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF106
	.byte	0x9
	.uleb128 0x9
	.4byte	.LASF107
	.byte	0xa
	.uleb128 0x9
	.4byte	.LASF108
	.byte	0xb
	.uleb128 0x9
	.4byte	.LASF109
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF110
	.byte	0xd
	.uleb128 0x9
	.4byte	.LASF111
	.byte	0xe
	.uleb128 0x9
	.4byte	.LASF112
	.byte	0xf
	.uleb128 0x9
	.4byte	.LASF113
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x3e
	.byte	0xe
	.byte	0x63
	.4byte	0x416
	.uleb128 0x9
	.4byte	.LASF114
	.byte	0
	.uleb128 0x9
	.4byte	.LASF115
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF116
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF117
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF118
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF119
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF120
	.byte	0x20
	.uleb128 0x9
	.4byte	.LASF121
	.byte	0x40
	.uleb128 0x9
	.4byte	.LASF122
	.byte	0x80
	.uleb128 0xb
	.4byte	.LASF123
	.2byte	0x100
	.uleb128 0xb
	.4byte	.LASF124
	.2byte	0x200
	.uleb128 0xb
	.4byte	.LASF125
	.2byte	0x400
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x3e
	.byte	0xe
	.byte	0x81
	.4byte	0x447
	.uleb128 0x9
	.4byte	.LASF126
	.byte	0
	.uleb128 0x9
	.4byte	.LASF127
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF128
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF129
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF130
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF131
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x3e
	.byte	0xf
	.byte	0x46
	.4byte	0x472
	.uleb128 0x9
	.4byte	.LASF132
	.byte	0
	.uleb128 0x9
	.4byte	.LASF133
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF134
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF135
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF136
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF137
	.byte	0xf
	.byte	0x4c
	.4byte	0x447
	.uleb128 0xc
	.byte	0x4
	.byte	0xf
	.2byte	0x17b
	.4byte	0x597
	.uleb128 0xd
	.4byte	.LASF138
	.byte	0xf
	.2byte	0x17c
	.4byte	0xb5
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0
	.uleb128 0xd
	.4byte	.LASF139
	.byte	0xf
	.2byte	0x17d
	.4byte	0xb5
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xd
	.4byte	.LASF140
	.byte	0xf
	.2byte	0x17e
	.4byte	0xb5
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xd
	.4byte	.LASF141
	.byte	0xf
	.2byte	0x17f
	.4byte	0xb5
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xd
	.4byte	.LASF142
	.byte	0xf
	.2byte	0x180
	.4byte	0xb5
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xd
	.4byte	.LASF143
	.byte	0xf
	.2byte	0x181
	.4byte	0xb5
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xd
	.4byte	.LASF144
	.byte	0xf
	.2byte	0x182
	.4byte	0xb5
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.4byte	.LASF145
	.byte	0xf
	.2byte	0x183
	.4byte	0xb5
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xd
	.4byte	.LASF146
	.byte	0xf
	.2byte	0x184
	.4byte	0xb5
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xd
	.4byte	.LASF147
	.byte	0xf
	.2byte	0x185
	.4byte	0xb5
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xd
	.4byte	.LASF148
	.byte	0xf
	.2byte	0x186
	.4byte	0xb5
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xd
	.4byte	.LASF149
	.byte	0xf
	.2byte	0x187
	.4byte	0xb5
	.byte	0x4
	.byte	0x3
	.byte	0x11
	.byte	0
	.uleb128 0xd
	.4byte	.LASF150
	.byte	0xf
	.2byte	0x188
	.4byte	0xb5
	.byte	0x4
	.byte	0x3
	.byte	0xe
	.byte	0
	.uleb128 0xd
	.4byte	.LASF151
	.byte	0xf
	.2byte	0x189
	.4byte	0xb5
	.byte	0x4
	.byte	0x3
	.byte	0xb
	.byte	0
	.uleb128 0xd
	.4byte	.LASF152
	.byte	0xf
	.2byte	0x18a
	.4byte	0xb5
	.byte	0x4
	.byte	0x3
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.4byte	.LASF153
	.byte	0xf
	.2byte	0x18b
	.4byte	0xb5
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xd
	.4byte	.LASF154
	.byte	0xf
	.2byte	0x18c
	.4byte	0xb5
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	.LASF155
	.byte	0xf
	.2byte	0x18d
	.4byte	0x47d
	.uleb128 0xe
	.byte	0x34
	.byte	0x4
	.byte	0x21
	.4byte	0x647
	.uleb128 0xf
	.string	"reg"
	.byte	0x4
	.byte	0x22
	.4byte	0xb5
	.byte	0
	.uleb128 0xf
	.string	"mux"
	.byte	0x4
	.byte	0x23
	.4byte	0xb5
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF156
	.byte	0x4
	.byte	0x24
	.4byte	0xb5
	.byte	0x8
	.uleb128 0xf
	.string	"ie"
	.byte	0x4
	.byte	0x25
	.4byte	0xb5
	.byte	0xc
	.uleb128 0x10
	.4byte	.LASF157
	.byte	0x4
	.byte	0x26
	.4byte	0xb5
	.byte	0x10
	.uleb128 0x10
	.4byte	.LASF158
	.byte	0x4
	.byte	0x27
	.4byte	0xb5
	.byte	0x14
	.uleb128 0x10
	.4byte	.LASF159
	.byte	0x4
	.byte	0x28
	.4byte	0xb5
	.byte	0x18
	.uleb128 0x10
	.4byte	.LASF160
	.byte	0x4
	.byte	0x29
	.4byte	0xb5
	.byte	0x1c
	.uleb128 0x10
	.4byte	.LASF161
	.byte	0x4
	.byte	0x2a
	.4byte	0xb5
	.byte	0x20
	.uleb128 0x10
	.4byte	.LASF162
	.byte	0x4
	.byte	0x2b
	.4byte	0xb5
	.byte	0x24
	.uleb128 0x10
	.4byte	.LASF163
	.byte	0x4
	.byte	0x2c
	.4byte	0xb5
	.byte	0x28
	.uleb128 0x10
	.4byte	.LASF164
	.byte	0x4
	.byte	0x2d
	.4byte	0xb5
	.byte	0x2c
	.uleb128 0x10
	.4byte	.LASF165
	.byte	0x4
	.byte	0x2e
	.4byte	0x2c
	.byte	0x30
	.byte	0
	.uleb128 0x4
	.4byte	.LASF166
	.byte	0x4
	.byte	0x2f
	.4byte	0x5a3
	.uleb128 0xe
	.byte	0x8
	.byte	0x10
	.byte	0x81
	.4byte	0x673
	.uleb128 0x10
	.4byte	.LASF167
	.byte	0x10
	.byte	0x82
	.4byte	0xb5
	.byte	0
	.uleb128 0x10
	.4byte	.LASF168
	.byte	0x10
	.byte	0x83
	.4byte	0xb5
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF169
	.byte	0x10
	.byte	0x88
	.4byte	0x652
	.uleb128 0x7
	.4byte	0xee
	.uleb128 0xe
	.byte	0x20
	.byte	0x1
	.byte	0x30
	.4byte	0x6ef
	.uleb128 0x10
	.4byte	.LASF170
	.byte	0x1
	.byte	0x31
	.4byte	0x6ef
	.byte	0
	.uleb128 0x10
	.4byte	.LASF171
	.byte	0x1
	.byte	0x32
	.4byte	0xc0
	.byte	0x10
	.uleb128 0x11
	.4byte	.LASF172
	.byte	0x1
	.byte	0x33
	.4byte	0xb5
	.byte	0x4
	.byte	0xb
	.byte	0x15
	.byte	0x18
	.uleb128 0x11
	.4byte	.LASF173
	.byte	0x1
	.byte	0x34
	.4byte	0xb5
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x18
	.uleb128 0x11
	.4byte	.LASF174
	.byte	0x1
	.byte	0x35
	.4byte	0xb5
	.byte	0x4
	.byte	0x12
	.byte	0x2
	.byte	0x18
	.uleb128 0x11
	.4byte	.LASF175
	.byte	0x1
	.byte	0x36
	.4byte	0xb5
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x18
	.uleb128 0x11
	.4byte	.LASF176
	.byte	0x1
	.byte	0x37
	.4byte	0xb5
	.byte	0x4
	.byte	0x5
	.byte	0x1b
	.byte	0x1c
	.byte	0
	.uleb128 0x12
	.4byte	0x2c2
	.4byte	0x6ff
	.uleb128 0x13
	.4byte	0xd2
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF177
	.byte	0x1
	.byte	0x38
	.4byte	0x683
	.uleb128 0x14
	.4byte	.LASF178
	.byte	0x2
	.2byte	0x10e
	.byte	0x3
	.4byte	0x724
	.uleb128 0x15
	.4byte	.LASF180
	.byte	0x2
	.2byte	0x10e
	.4byte	0x9f
	.byte	0
	.uleb128 0x16
	.4byte	.LASF179
	.byte	0x3
	.byte	0xc8
	.4byte	0xb5
	.byte	0x3
	.4byte	0x73f
	.uleb128 0x17
	.string	"id"
	.byte	0x3
	.byte	0xc9
	.4byte	0x2c
	.byte	0
	.uleb128 0x18
	.4byte	.LASF268
	.byte	0x4
	.byte	0x47
	.4byte	0x104
	.byte	0x3
	.4byte	0x75b
	.uleb128 0x19
	.4byte	.LASF181
	.byte	0x4
	.byte	0x47
	.4byte	0x1ea
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF215
	.byte	0x1
	.byte	0x65
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1b
	.4byte	.LASF269
	.byte	0x1
	.byte	0xbb
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1c
	.4byte	.LASF184
	.byte	0x1
	.2byte	0x153
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7d4
	.uleb128 0x1d
	.4byte	.LASF182
	.byte	0x1
	.2byte	0x155
	.4byte	0x2c
	.4byte	.LLST0
	.uleb128 0x1e
	.4byte	.LBB19
	.4byte	.LBE19-.LBB19
	.uleb128 0x1d
	.4byte	.LASF181
	.byte	0x1
	.2byte	0x15c
	.4byte	0x33
	.4byte	.LLST1
	.uleb128 0x1e
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.uleb128 0x1f
	.4byte	.LASF183
	.byte	0x1
	.2byte	0x15d
	.4byte	0x7d4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x7da
	.uleb128 0x7
	.4byte	0x647
	.uleb128 0x1c
	.4byte	.LASF185
	.byte	0x1
	.2byte	0x17f
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x846
	.uleb128 0x1d
	.4byte	.LASF186
	.byte	0x1
	.2byte	0x182
	.4byte	0xb5
	.4byte	.LLST2
	.uleb128 0x1e
	.4byte	.LBB21
	.4byte	.LBE21-.LBB21
	.uleb128 0x1d
	.4byte	.LASF187
	.byte	0x1
	.2byte	0x183
	.4byte	0x2c
	.4byte	.LLST3
	.uleb128 0x1e
	.4byte	.LBB22
	.4byte	.LBE22-.LBB22
	.uleb128 0x1d
	.4byte	.LASF188
	.byte	0x1
	.2byte	0x184
	.4byte	0x2c
	.4byte	.LLST4
	.uleb128 0x1f
	.4byte	.LASF183
	.byte	0x1
	.2byte	0x188
	.4byte	0x7d4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LASF200
	.byte	0x1
	.2byte	0x1db
	.4byte	0xb5
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8ad
	.uleb128 0x21
	.4byte	.LASF189
	.byte	0x1
	.2byte	0x1e5
	.4byte	0x2c
	.uleb128 0x21
	.4byte	.LASF190
	.byte	0x1
	.2byte	0x1e5
	.4byte	0x2c
	.uleb128 0x21
	.4byte	.LASF191
	.byte	0x1
	.2byte	0x1e5
	.4byte	0x2c
	.uleb128 0x21
	.4byte	.LASF192
	.byte	0x1
	.2byte	0x1e5
	.4byte	0x2c
	.uleb128 0x1f
	.4byte	.LASF193
	.byte	0x1
	.2byte	0x202
	.4byte	0x8ad
	.uleb128 0x1d
	.4byte	.LASF194
	.byte	0x1
	.2byte	0x209
	.4byte	0xb5
	.4byte	.LLST5
	.byte	0
	.uleb128 0x12
	.4byte	0xee
	.4byte	0x8bd
	.uleb128 0x13
	.4byte	0xd2
	.byte	0x2
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF195
	.byte	0x1
	.2byte	0x125
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x92b
	.uleb128 0x1d
	.4byte	.LASF196
	.byte	0x1
	.2byte	0x127
	.4byte	0xb5
	.4byte	.LLST6
	.uleb128 0x22
	.4byte	.LASF197
	.byte	0x1
	.2byte	0x128
	.4byte	0xc0
	.uleb128 0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x1d
	.4byte	.LASF198
	.byte	0x1
	.2byte	0x129
	.4byte	0xc0
	.4byte	.LLST7
	.uleb128 0x23
	.4byte	.LVL19
	.4byte	0x1112
	.uleb128 0x23
	.4byte	.LVL21
	.4byte	0x111d
	.uleb128 0x23
	.4byte	.LVL23
	.4byte	0x1129
	.uleb128 0x23
	.4byte	.LVL25
	.4byte	0x1135
	.byte	0
	.uleb128 0x24
	.4byte	.LASF203
	.byte	0x1
	.byte	0x7d
	.4byte	0xb5
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9e2
	.uleb128 0x25
	.4byte	.LASF194
	.byte	0x1
	.byte	0x7d
	.4byte	0xb5
	.4byte	.LLST8
	.uleb128 0x26
	.4byte	.LASF199
	.byte	0x1
	.byte	0x96
	.4byte	0x597
	.4byte	.LLST9
	.uleb128 0x27
	.4byte	0x70a
	.4byte	.LBB23
	.4byte	.LBE23-.LBB23
	.byte	0x1
	.byte	0x80
	.4byte	0x97b
	.uleb128 0x28
	.4byte	0x717
	.byte	0
	.uleb128 0x27
	.4byte	0x70a
	.4byte	.LBB25
	.4byte	.LBE25-.LBB25
	.byte	0x1
	.byte	0x81
	.4byte	0x994
	.uleb128 0x28
	.4byte	0x717
	.byte	0
	.uleb128 0x27
	.4byte	0x70a
	.4byte	.LBB27
	.4byte	.LBE27-.LBB27
	.byte	0x1
	.byte	0x82
	.4byte	0x9ad
	.uleb128 0x28
	.4byte	0x717
	.byte	0
	.uleb128 0x23
	.4byte	.LVL27
	.4byte	0x77d
	.uleb128 0x23
	.4byte	.LVL28
	.4byte	0x7df
	.uleb128 0x23
	.4byte	.LVL29
	.4byte	0x8bd
	.uleb128 0x23
	.4byte	.LVL41
	.4byte	0x1141
	.uleb128 0x29
	.4byte	.LVL42
	.4byte	0x114d
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF201
	.byte	0x1
	.byte	0xaf
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa10
	.uleb128 0x25
	.4byte	.LASF202
	.byte	0x1
	.byte	0xaf
	.4byte	0x2c
	.4byte	.LLST10
	.uleb128 0x23
	.4byte	.LVL44
	.4byte	0x1159
	.byte	0
	.uleb128 0x24
	.4byte	.LASF204
	.byte	0x1
	.byte	0xcb
	.4byte	0xf9
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa98
	.uleb128 0x25
	.4byte	.LASF194
	.byte	0x1
	.byte	0xcb
	.4byte	0xb5
	.4byte	.LLST11
	.uleb128 0x2c
	.4byte	.LASF205
	.byte	0x1
	.byte	0xcc
	.4byte	0x472
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2c
	.4byte	.LASF206
	.byte	0x1
	.byte	0xcc
	.4byte	0xb5
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2d
	.string	"err"
	.byte	0x1
	.byte	0xcf
	.4byte	0xf9
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2e
	.4byte	.LVL47
	.4byte	0x92b
	.4byte	0xa73
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL49
	.4byte	0x1164
	.4byte	0xa87
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL50
	.4byte	0x1170
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF217
	.byte	0x1
	.byte	0x4d
	.4byte	0x309
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xaf9
	.uleb128 0x30
	.4byte	.LASF207
	.byte	0x1
	.byte	0x50
	.4byte	0xb5
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x30
	.4byte	.LASF208
	.byte	0x1
	.byte	0x52
	.4byte	0xb5
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2e
	.4byte	.LVL52
	.4byte	0x117c
	.4byte	0xadf
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL54
	.4byte	0x1187
	.uleb128 0x29
	.4byte	.LVL56
	.4byte	0x1192
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LASF210
	.byte	0x1
	.byte	0x5d
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb49
	.uleb128 0x2c
	.4byte	.LASF209
	.byte	0x1
	.byte	0x5d
	.4byte	0x309
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2e
	.4byte	.LVL58
	.4byte	0x117c
	.4byte	0xb2f
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL59
	.4byte	0x1187
	.uleb128 0x29
	.4byte	.LVL60
	.4byte	0x1192
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	.LASF211
	.byte	0x1
	.byte	0x9b
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xba0
	.uleb128 0x26
	.4byte	.LASF194
	.byte	0x1
	.byte	0xa3
	.4byte	0xb5
	.4byte	.LLST12
	.uleb128 0x23
	.4byte	.LVL61
	.4byte	0xa98
	.uleb128 0x2e
	.4byte	.LVL62
	.4byte	0xaf9
	.4byte	0xb8d
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	esp_wake_deep_sleep
	.byte	0
	.uleb128 0x23
	.4byte	.LVL63
	.4byte	0x846
	.uleb128 0x23
	.4byte	.LVL65
	.4byte	0x92b
	.byte	0
	.uleb128 0x33
	.4byte	.LASF212
	.byte	0x1
	.byte	0xdc
	.4byte	0xf9
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcef
	.uleb128 0x30
	.4byte	.LASF213
	.byte	0x1
	.byte	0xde
	.4byte	0x673
	.uleb128 0x5
	.byte	0x3
	.4byte	light_sleep_lock$5443
	.uleb128 0x30
	.4byte	.LASF214
	.byte	0x1
	.byte	0xe1
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x26
	.4byte	.LASF194
	.byte	0x1
	.byte	0xe8
	.4byte	0xb5
	.4byte	.LLST13
	.uleb128 0x34
	.4byte	.LASF206
	.byte	0x1
	.byte	0xec
	.4byte	0xcef
	.2byte	0x2bc
	.uleb128 0x26
	.4byte	.LASF205
	.byte	0x1
	.byte	0xf9
	.4byte	0x472
	.4byte	.LLST14
	.uleb128 0x2d
	.string	"err"
	.byte	0x1
	.byte	0xfc
	.4byte	0xf9
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x27
	.4byte	0x724
	.4byte	.LBB29
	.4byte	.LBE29-.LBB29
	.byte	0x1
	.byte	0xe1
	.4byte	0xc36
	.uleb128 0x1e
	.4byte	.LBB30
	.4byte	.LBE30-.LBB30
	.uleb128 0x35
	.4byte	0x734
	.4byte	.LLST15
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL66
	.4byte	0x119d
	.4byte	0xc4d
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	light_sleep_lock$5443
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL69
	.4byte	0x11a8
	.4byte	0xc61
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL70
	.4byte	0x11b3
	.uleb128 0x23
	.4byte	.LVL71
	.4byte	0x846
	.uleb128 0x2e
	.4byte	.LVL74
	.4byte	0x9e2
	.4byte	0xc88
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0x3e8
	.byte	0
	.uleb128 0x23
	.4byte	.LVL75
	.4byte	0x11be
	.uleb128 0x2e
	.4byte	.LVL77
	.4byte	0xa10
	.4byte	0xcac
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x2bc
	.byte	0
	.uleb128 0x23
	.4byte	.LVL79
	.4byte	0x11ca
	.uleb128 0x2e
	.4byte	.LVL80
	.4byte	0x11d5
	.4byte	0xcc9
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL81
	.4byte	0x11e0
	.uleb128 0x23
	.4byte	.LVL82
	.4byte	0x76c
	.uleb128 0x29
	.4byte	.LVL83
	.4byte	0x11eb
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	light_sleep_lock$5443
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0xb5
	.uleb128 0x36
	.4byte	.LASF216
	.byte	0x1
	.2byte	0x110
	.4byte	0xf9
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x37
	.4byte	.LASF218
	.byte	0x1
	.2byte	0x11e
	.4byte	0xf9
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd35
	.uleb128 0x38
	.4byte	.LASF219
	.byte	0x1
	.2byte	0x11e
	.4byte	0xc0
	.4byte	.LLST16
	.byte	0
	.uleb128 0x39
	.4byte	.LASF220
	.byte	0x1
	.byte	0x77
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd6f
	.uleb128 0x2c
	.4byte	.LASF219
	.byte	0x1
	.byte	0x77
	.4byte	0xc0
	.uleb128 0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x23
	.4byte	.LVL87
	.4byte	0xd0a
	.uleb128 0x23
	.4byte	.LVL88
	.4byte	0xb49
	.byte	0
	.uleb128 0x3a
	.4byte	.LASF221
	.byte	0x1
	.2byte	0x12d
	.4byte	0xf9
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdbd
	.uleb128 0x23
	.4byte	.LVL89
	.4byte	0x11f6
	.uleb128 0x29
	.4byte	.LVL90
	.4byte	0x1201
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC70
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC72
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC70
	.byte	0
	.byte	0
	.uleb128 0x37
	.4byte	.LASF222
	.byte	0x1
	.2byte	0x141
	.4byte	0xf9
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe49
	.uleb128 0x38
	.4byte	.LASF181
	.byte	0x1
	.2byte	0x141
	.4byte	0x1ea
	.4byte	.LLST17
	.uleb128 0x38
	.4byte	.LASF223
	.byte	0x1
	.2byte	0x141
	.4byte	0x2c
	.4byte	.LLST18
	.uleb128 0x3b
	.4byte	0x73f
	.4byte	.LBB31
	.4byte	.LBE31-.LBB31
	.byte	0x1
	.2byte	0x146
	.4byte	0xe15
	.uleb128 0x3c
	.4byte	0x74f
	.4byte	.LLST19
	.byte	0
	.uleb128 0x23
	.4byte	.LVL93
	.4byte	0x11f6
	.uleb128 0x29
	.4byte	.LVL94
	.4byte	0x1201
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC70
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC77
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC70
	.byte	0
	.byte	0
	.uleb128 0x37
	.4byte	.LASF224
	.byte	0x1
	.2byte	0x168
	.4byte	0xf9
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf05
	.uleb128 0x38
	.4byte	.LASF225
	.byte	0x1
	.2byte	0x168
	.4byte	0xc0
	.4byte	.LLST20
	.uleb128 0x38
	.4byte	.LASF226
	.byte	0x1
	.2byte	0x168
	.4byte	0x268
	.4byte	.LLST21
	.uleb128 0x1d
	.4byte	.LASF186
	.byte	0x1
	.2byte	0x16e
	.4byte	0xb5
	.4byte	.LLST22
	.uleb128 0x1e
	.4byte	.LBB33
	.4byte	.LBE33-.LBB33
	.uleb128 0x1d
	.4byte	.LASF187
	.byte	0x1
	.2byte	0x16f
	.4byte	0x2c
	.4byte	.LLST23
	.uleb128 0x3b
	.4byte	0x73f
	.4byte	.LBB34
	.4byte	.LBE34-.LBB34
	.byte	0x1
	.2byte	0x173
	.4byte	0xeca
	.uleb128 0x3c
	.4byte	0x74f
	.4byte	.LLST24
	.byte	0
	.uleb128 0x23
	.4byte	.LVL106
	.4byte	0x11f6
	.uleb128 0x29
	.4byte	.LVL107
	.4byte	0x1201
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC70
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC82
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC70
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3a
	.4byte	.LASF227
	.byte	0x1
	.2byte	0x1bb
	.4byte	0x2fe
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf3f
	.uleb128 0x1d
	.4byte	.LASF228
	.byte	0x1
	.2byte	0x1c1
	.4byte	0xb5
	.4byte	.LLST25
	.uleb128 0x29
	.4byte	.LVL120
	.4byte	0x120c
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x3a
	.4byte	.LASF229
	.byte	0x1
	.2byte	0x137
	.4byte	0x244
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfae
	.uleb128 0x1d
	.4byte	.LASF230
	.byte	0x1
	.2byte	0x13c
	.4byte	0xb5
	.4byte	.LLST26
	.uleb128 0x3d
	.4byte	.LASF231
	.4byte	0xfbe
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5466
	.uleb128 0x23
	.4byte	.LVL133
	.4byte	0xf05
	.uleb128 0x29
	.4byte	.LVL135
	.4byte	0x1217
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC93
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x13d
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5466
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC90
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	0xe7
	.4byte	0xfbe
	.uleb128 0x13
	.4byte	0xd2
	.byte	0x24
	.byte	0
	.uleb128 0x7
	.4byte	0xfae
	.uleb128 0x3a
	.4byte	.LASF232
	.byte	0x1
	.2byte	0x1a6
	.4byte	0xc0
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1055
	.uleb128 0x1d
	.4byte	.LASF233
	.byte	0x1
	.2byte	0x1ab
	.4byte	0xb5
	.4byte	.LLST27
	.uleb128 0x1d
	.4byte	.LASF234
	.byte	0x1
	.2byte	0x1ad
	.4byte	0xc0
	.4byte	.LLST28
	.uleb128 0x3e
	.4byte	.Ldebug_ranges0+0
	.4byte	0x104b
	.uleb128 0x1d
	.4byte	.LASF187
	.byte	0x1
	.2byte	0x1ae
	.4byte	0x2c
	.4byte	.LLST29
	.uleb128 0x1e
	.4byte	.LBB37
	.4byte	.LBE37-.LBB37
	.uleb128 0x1d
	.4byte	.LASF188
	.byte	0x1
	.2byte	0x1b2
	.4byte	0x2c
	.4byte	.LLST30
	.uleb128 0x3f
	.4byte	0x73f
	.4byte	.LBB38
	.4byte	.LBE38-.LBB38
	.byte	0x1
	.2byte	0x1af
	.uleb128 0x3c
	.4byte	0x74f
	.4byte	.LLST31
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL137
	.4byte	0xf05
	.byte	0
	.uleb128 0x37
	.4byte	.LASF235
	.byte	0x1
	.2byte	0x1d1
	.4byte	0xf9
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x108e
	.uleb128 0x38
	.4byte	.LASF236
	.byte	0x1
	.2byte	0x1d1
	.4byte	0x298
	.4byte	.LLST32
	.uleb128 0x40
	.4byte	.LASF237
	.byte	0x1
	.2byte	0x1d2
	.4byte	0x2c2
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x30
	.4byte	.LASF238
	.byte	0x1
	.byte	0x3a
	.4byte	0x6ff
	.uleb128 0x5
	.byte	0x3
	.4byte	s_config
	.uleb128 0x30
	.4byte	.LASF239
	.byte	0x1
	.byte	0x41
	.4byte	0x4c
	.uleb128 0x5
	.byte	0x3
	.4byte	lock_rtc_memory_crc
	.uleb128 0x2d
	.string	"TAG"
	.byte	0x1
	.byte	0x43
	.4byte	0x67e
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC70
	.byte	0x9f
	.uleb128 0x12
	.4byte	0x647
	.4byte	0x10d2
	.uleb128 0x13
	.4byte	0xd2
	.byte	0x27
	.byte	0
	.uleb128 0x41
	.4byte	.LASF240
	.byte	0x4
	.byte	0x3f
	.4byte	0x10dd
	.uleb128 0x7
	.4byte	0x10c2
	.uleb128 0x21
	.4byte	.LASF189
	.byte	0x1
	.2byte	0x1e5
	.4byte	0x2c
	.uleb128 0x21
	.4byte	.LASF190
	.byte	0x1
	.2byte	0x1e5
	.4byte	0x2c
	.uleb128 0x21
	.4byte	.LASF191
	.byte	0x1
	.2byte	0x1e5
	.4byte	0x2c
	.uleb128 0x21
	.4byte	.LASF192
	.byte	0x1
	.2byte	0x1e5
	.4byte	0x2c
	.uleb128 0x42
	.4byte	.LASF241
	.4byte	.LASF241
	.byte	0x11
	.byte	0x2b
	.uleb128 0x43
	.4byte	.LASF242
	.4byte	.LASF242
	.byte	0xf
	.2byte	0x160
	.uleb128 0x43
	.4byte	.LASF243
	.4byte	.LASF243
	.byte	0xf
	.2byte	0x176
	.uleb128 0x43
	.4byte	.LASF244
	.4byte	.LASF244
	.byte	0xf
	.2byte	0x1c7
	.uleb128 0x43
	.4byte	.LASF245
	.4byte	.LASF245
	.byte	0xf
	.2byte	0x1bf
	.uleb128 0x43
	.4byte	.LASF246
	.4byte	.LASF246
	.byte	0xf
	.2byte	0x1ef
	.uleb128 0x42
	.4byte	.LASF247
	.4byte	.LASF247
	.byte	0xf
	.byte	0xfd
	.uleb128 0x43
	.4byte	.LASF248
	.4byte	.LASF248
	.byte	0xf
	.2byte	0x115
	.uleb128 0x43
	.4byte	.LASF249
	.4byte	.LASF249
	.byte	0x12
	.2byte	0x176
	.uleb128 0x42
	.4byte	.LASF250
	.4byte	.LASF250
	.byte	0x6
	.byte	0x20
	.uleb128 0x42
	.4byte	.LASF251
	.4byte	.LASF251
	.byte	0xe
	.byte	0xb7
	.uleb128 0x42
	.4byte	.LASF252
	.4byte	.LASF252
	.byte	0x6
	.byte	0x24
	.uleb128 0x42
	.4byte	.LASF253
	.4byte	.LASF253
	.byte	0x10
	.byte	0xd9
	.uleb128 0x42
	.4byte	.LASF254
	.4byte	.LASF254
	.byte	0x13
	.byte	0x50
	.uleb128 0x42
	.4byte	.LASF255
	.4byte	.LASF255
	.byte	0x14
	.byte	0x1b
	.uleb128 0x43
	.4byte	.LASF256
	.4byte	.LASF256
	.byte	0xf
	.2byte	0x122
	.uleb128 0x42
	.4byte	.LASF257
	.4byte	.LASF257
	.byte	0x15
	.byte	0x27
	.uleb128 0x42
	.4byte	.LASF258
	.4byte	.LASF258
	.byte	0x13
	.byte	0x56
	.uleb128 0x42
	.4byte	.LASF259
	.4byte	.LASF259
	.byte	0x14
	.byte	0x1c
	.uleb128 0x42
	.4byte	.LASF260
	.4byte	.LASF260
	.byte	0x10
	.byte	0xd8
	.uleb128 0x42
	.4byte	.LASF261
	.4byte	.LASF261
	.byte	0xd
	.byte	0x4c
	.uleb128 0x42
	.4byte	.LASF262
	.4byte	.LASF262
	.byte	0xd
	.byte	0x60
	.uleb128 0x42
	.4byte	.LASF263
	.4byte	.LASF263
	.byte	0xe
	.byte	0x9a
	.uleb128 0x42
	.4byte	.LASF264
	.4byte	.LASF264
	.byte	0x16
	.byte	0x29
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
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
	.uleb128 0xb
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x13
	.byte	0x1
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
	.uleb128 0xd
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
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x18
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
	.uleb128 0x32
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
	.uleb128 0x34
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL3
	.4byte	.LVL5
	.2byte	0x9
	.byte	0x3
	.4byte	s_config+28
	.byte	0x6
	.byte	0x4f
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LFE39
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL5
	.4byte	.LFE39
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL7
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL9
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LFE45
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL20
	.4byte	.LVL21-1
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL26
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL39
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL40
	.4byte	.LVL41-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL43
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL45
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL46
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL51
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL72
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL75
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL76
	.4byte	.LVL77-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL67
	.4byte	.LVL69-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL84
	.4byte	.LVL85
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL85
	.4byte	.LFE34
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL91
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL95
	.4byte	.LVL96
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL96
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL97
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
	.4byte	.LVL101
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL101
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL102
	.4byte	.LFE38
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL91
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL98
	.4byte	.LVL99
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL99
	.4byte	.LFE38
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL92
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL95
	.4byte	.LVL96
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL96
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL97
	.4byte	.LVL99
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL101
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL102
	.4byte	.LFE38
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL103
	.4byte	.LVL104
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL104
	.4byte	.LVL108
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL109
	.4byte	.LVL112
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL113
	.4byte	.LVL115
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL118
	.4byte	.LVL119
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL119
	.4byte	.LFE40
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL103
	.4byte	.LVL117
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL117
	.4byte	.LVL118
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL118
	.4byte	.LFE40
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL104
	.4byte	.LVL106-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL109
	.4byte	.LVL116
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL104
	.4byte	.LVL114
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL105
	.4byte	.LVL110
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL121
	.4byte	.LVL122
	.2byte	0x7
	.byte	0x72
	.sleb128 0
	.byte	0xa
	.2byte	0x7ff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL123
	.4byte	.LVL124
	.2byte	0x7
	.byte	0x72
	.sleb128 0
	.byte	0xa
	.2byte	0x7ff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL125
	.4byte	.LVL126
	.2byte	0x7
	.byte	0x72
	.sleb128 0
	.byte	0xa
	.2byte	0x7ff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL127
	.4byte	.LVL128
	.2byte	0x7
	.byte	0x72
	.sleb128 0
	.byte	0xa
	.2byte	0x7ff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL129
	.4byte	.LVL130
	.2byte	0x7
	.byte	0x72
	.sleb128 0
	.byte	0xa
	.2byte	0x7ff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL131
	.4byte	.LVL132
	.2byte	0x7
	.byte	0x72
	.sleb128 0
	.byte	0xa
	.2byte	0x7ff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL134
	.4byte	.LVL135-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL135
	.4byte	.LVL136
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL138
	.4byte	.LVL146
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL138
	.4byte	.LVL139
	.2byte	0xa
	.byte	0x9e
	.uleb128 0x8
	.8byte	0
	.4byte	.LVL139
	.4byte	.LVL143
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL144
	.4byte	.LVL146
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL138
	.4byte	.LVL139
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL139
	.4byte	.LVL146
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL140
	.4byte	.LVL141
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL141
	.4byte	.LVL142
	.2byte	0x13
	.byte	0x78
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x32
	.byte	0x24
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x32
	.byte	0x24
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x30
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL139
	.4byte	.LVL145
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL147
	.4byte	.LVL148
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL148
	.4byte	.LVL149
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL149
	.4byte	.LVL150
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL150
	.4byte	.LFE44
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0xcc
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB36
	.4byte	.LBE36
	.4byte	.LBB40
	.4byte	.LBE40
	.4byte	0
	.4byte	0
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LFB45
	.4byte	.LFE45
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LFB43
	.4byte	.LFE43
	.4byte	.LFB37
	.4byte	.LFE37
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	.LFB44
	.4byte	.LFE44
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF223:
	.string	"level"
.LASF3:
	.string	"size_t"
.LASF174:
	.string	"ext1_rtc_gpio_mask"
.LASF240:
	.string	"rtc_gpio_desc"
.LASF18:
	.string	"sizetype"
.LASF167:
	.string	"owner"
.LASF205:
	.string	"cpu_freq"
.LASF121:
	.string	"UART0_TRIG"
.LASF260:
	.string	"vTaskExitCritical"
.LASF14:
	.string	"int32_t"
.LASF157:
	.string	"pullup"
.LASF100:
	.string	"SW_RESET"
.LASF251:
	.string	"set_rtc_memory_crc"
.LASF268:
	.string	"rtc_gpio_is_valid_gpio"
.LASF231:
	.string	"__func__"
.LASF202:
	.string	"time_ms"
.LASF227:
	.string	"esp_sleep_get_wakeup_cause"
.LASF199:
	.string	"config"
.LASF72:
	.string	"ESP_EXT1_WAKEUP_ANY_HIGH"
.LASF228:
	.string	"wakeup_cause"
.LASF137:
	.string	"rtc_cpu_freq_t"
.LASF132:
	.string	"RTC_CPU_FREQ_XTAL"
.LASF219:
	.string	"time_in_us"
.LASF104:
	.string	"TG0WDT_SYS_RESET"
.LASF221:
	.string	"esp_sleep_enable_touchpad_wakeup"
.LASF181:
	.string	"gpio_num"
.LASF267:
	.string	"C:\\\\esp\\\\ArkPOS2-esp\\\\build\\\\esp32"
.LASF177:
	.string	"deep_sleep_config_t"
.LASF6:
	.string	"__uint8_t"
.LASF59:
	.string	"TOUCH_PAD_NUM0"
.LASF60:
	.string	"TOUCH_PAD_NUM1"
.LASF61:
	.string	"TOUCH_PAD_NUM2"
.LASF62:
	.string	"TOUCH_PAD_NUM3"
.LASF63:
	.string	"TOUCH_PAD_NUM4"
.LASF64:
	.string	"TOUCH_PAD_NUM5"
.LASF65:
	.string	"TOUCH_PAD_NUM6"
.LASF66:
	.string	"TOUCH_PAD_NUM7"
.LASF67:
	.string	"TOUCH_PAD_NUM8"
.LASF68:
	.string	"TOUCH_PAD_NUM9"
.LASF78:
	.string	"esp_sleep_pd_domain_t"
.LASF17:
	.string	"long int"
.LASF125:
	.string	"BT_TRIG"
.LASF229:
	.string	"esp_sleep_get_touchpad_wakeup_status"
.LASF170:
	.string	"pd_options"
.LASF187:
	.string	"gpio"
.LASF249:
	.string	"ets_delay_us"
.LASF116:
	.string	"EXT_EVENT1_TRIG"
.LASF236:
	.string	"domain"
.LASF224:
	.string	"esp_sleep_enable_ext1_wakeup"
.LASF207:
	.string	"stored_crc"
.LASF5:
	.string	"signed char"
.LASF13:
	.string	"uint8_t"
.LASF216:
	.string	"esp_sleep_enable_ulp_wakeup"
.LASF23:
	.string	"GPIO_NUM_0"
.LASF24:
	.string	"GPIO_NUM_1"
.LASF25:
	.string	"GPIO_NUM_2"
.LASF26:
	.string	"GPIO_NUM_3"
.LASF27:
	.string	"GPIO_NUM_4"
.LASF28:
	.string	"GPIO_NUM_5"
.LASF29:
	.string	"GPIO_NUM_6"
.LASF30:
	.string	"GPIO_NUM_7"
.LASF31:
	.string	"GPIO_NUM_8"
.LASF32:
	.string	"GPIO_NUM_9"
.LASF166:
	.string	"rtc_gpio_desc_t"
.LASF209:
	.string	"new_stub"
.LASF110:
	.string	"RTCWDT_CPU_RESET"
.LASF128:
	.string	"REJECT_INT"
.LASF7:
	.string	"unsigned char"
.LASF214:
	.string	"other_cpu"
.LASF175:
	.string	"ext0_trigger_level"
.LASF98:
	.string	"NO_MEAN"
.LASF22:
	.string	"_Bool"
.LASF82:
	.string	"esp_sleep_pd_option_t"
.LASF87:
	.string	"ESP_SLEEP_WAKEUP_TOUCHPAD"
.LASF211:
	.string	"esp_deep_sleep_start"
.LASF20:
	.string	"char"
.LASF107:
	.string	"INTRUSION_RESET"
.LASF149:
	.string	"dig_dbias_wak"
.LASF263:
	.string	"rtc_get_reset_reason"
.LASF245:
	.string	"rtc_sleep_init"
.LASF151:
	.string	"rtc_dbias_wak"
.LASF69:
	.string	"TOUCH_PAD_MAX"
.LASF131:
	.string	"RTC_TIME_VALID_INT"
.LASF256:
	.string	"rtc_clk_cpu_freq_get"
.LASF74:
	.string	"ESP_PD_DOMAIN_RTC_PERIPH"
.LASF218:
	.string	"esp_sleep_enable_timer_wakeup"
.LASF92:
	.string	"ESP_LOG_ERROR"
.LASF243:
	.string	"rtc_time_get"
.LASF76:
	.string	"ESP_PD_DOMAIN_RTC_FAST_MEM"
.LASF112:
	.string	"RTCWDT_BROWN_OUT_RESET"
.LASF70:
	.string	"touch_pad_t"
.LASF109:
	.string	"SW_CPU_RESET"
.LASF111:
	.string	"EXT_CPU_RESET"
.LASF153:
	.string	"lslp_meminf_pd"
.LASF182:
	.string	"rtc_gpio_num"
.LASF180:
	.string	"uart_no"
.LASF255:
	.string	"esp_dport_access_int_pause"
.LASF114:
	.string	"NO_SLEEP"
.LASF146:
	.string	"rom_mem_pd_en"
.LASF264:
	.string	"__assert_func"
.LASF254:
	.string	"esp_cpu_stall"
.LASF141:
	.string	"rtc_mem_inf_follow_cpu"
.LASF123:
	.string	"TOUCH_TRIG"
.LASF12:
	.string	"__uint64_t"
.LASF19:
	.string	"long unsigned int"
.LASF233:
	.string	"status"
.LASF162:
	.string	"hold_force"
.LASF237:
	.string	"option"
.LASF222:
	.string	"esp_sleep_enable_ext0_wakeup"
.LASF58:
	.string	"gpio_num_t"
.LASF80:
	.string	"ESP_PD_OPTION_ON"
.LASF102:
	.string	"DEEPSLEEP_RESET"
.LASF213:
	.string	"light_sleep_lock"
.LASF257:
	.string	"esp_set_time_from_rtc"
.LASF73:
	.string	"esp_sleep_ext1_wakeup_mode_t"
.LASF234:
	.string	"gpio_mask"
.LASF124:
	.string	"SAR_TRIG"
.LASF10:
	.string	"__uint32_t"
.LASF4:
	.string	"_lock_t"
.LASF11:
	.string	"long long int"
.LASF165:
	.string	"rtc_num"
.LASF159:
	.string	"slpsel"
.LASF188:
	.string	"rtc_pin"
.LASF117:
	.string	"GPIO_TRIG"
.LASF126:
	.string	"NO_INT"
.LASF81:
	.string	"ESP_PD_OPTION_AUTO"
.LASF21:
	.string	"esp_err_t"
.LASF225:
	.string	"mask"
.LASF154:
	.string	"vddsdio_pd_en"
.LASF33:
	.string	"GPIO_NUM_10"
.LASF34:
	.string	"GPIO_NUM_11"
.LASF35:
	.string	"GPIO_NUM_12"
.LASF36:
	.string	"GPIO_NUM_13"
.LASF37:
	.string	"GPIO_NUM_14"
.LASF38:
	.string	"GPIO_NUM_15"
.LASF39:
	.string	"GPIO_NUM_16"
.LASF40:
	.string	"GPIO_NUM_17"
.LASF41:
	.string	"GPIO_NUM_18"
.LASF42:
	.string	"GPIO_NUM_19"
.LASF57:
	.string	"GPIO_NUM_MAX"
.LASF75:
	.string	"ESP_PD_DOMAIN_RTC_SLOW_MEM"
.LASF265:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF217:
	.string	"esp_get_deep_sleep_wake_stub"
.LASF138:
	.string	"soc_clk_sel"
.LASF168:
	.string	"count"
.LASF115:
	.string	"EXT_EVENT0_TRIG"
.LASF161:
	.string	"hold"
.LASF1:
	.string	"unsigned int"
.LASF43:
	.string	"GPIO_NUM_21"
.LASF44:
	.string	"GPIO_NUM_22"
.LASF45:
	.string	"GPIO_NUM_23"
.LASF46:
	.string	"GPIO_NUM_25"
.LASF47:
	.string	"GPIO_NUM_26"
.LASF48:
	.string	"GPIO_NUM_27"
.LASF97:
	.string	"esp_log_level_t"
.LASF259:
	.string	"esp_dport_access_int_resume"
.LASF133:
	.string	"RTC_CPU_FREQ_80M"
.LASF212:
	.string	"esp_light_sleep_start"
.LASF195:
	.string	"timer_wakeup_prepare"
.LASF93:
	.string	"ESP_LOG_WARN"
.LASF185:
	.string	"ext1_wakeup_prepare"
.LASF108:
	.string	"TGWDT_CPU_RESET"
.LASF90:
	.string	"esp_deep_sleep_wake_stub_fn_t"
.LASF49:
	.string	"GPIO_NUM_32"
.LASF50:
	.string	"GPIO_NUM_33"
.LASF51:
	.string	"GPIO_NUM_34"
.LASF52:
	.string	"GPIO_NUM_35"
.LASF53:
	.string	"GPIO_NUM_36"
.LASF54:
	.string	"GPIO_NUM_37"
.LASF55:
	.string	"GPIO_NUM_38"
.LASF56:
	.string	"GPIO_NUM_39"
.LASF239:
	.string	"lock_rtc_memory_crc"
.LASF88:
	.string	"ESP_SLEEP_WAKEUP_ULP"
.LASF215:
	.string	"esp_default_wake_deep_sleep"
.LASF99:
	.string	"POWERON_RESET"
.LASF164:
	.string	"drv_s"
.LASF163:
	.string	"drv_v"
.LASF203:
	.string	"esp_sleep_start"
.LASF71:
	.string	"ESP_EXT1_WAKEUP_ALL_LOW"
.LASF96:
	.string	"ESP_LOG_VERBOSE"
.LASF230:
	.string	"touch_mask"
.LASF77:
	.string	"ESP_PD_DOMAIN_MAX"
.LASF145:
	.string	"wifi_pd_en"
.LASF122:
	.string	"UART1_TRIG"
.LASF242:
	.string	"rtc_time_us_to_slowclk"
.LASF84:
	.string	"ESP_SLEEP_WAKEUP_EXT0"
.LASF85:
	.string	"ESP_SLEEP_WAKEUP_EXT1"
.LASF261:
	.string	"esp_log_timestamp"
.LASF0:
	.string	"long long unsigned int"
.LASF160:
	.string	"slpie"
.LASF106:
	.string	"RTCWDT_SYS_RESET"
.LASF197:
	.string	"rtc_count_delta"
.LASF191:
	.string	"_rtc_bss_start"
.LASF127:
	.string	"WAKEUP_INT"
.LASF248:
	.string	"rtc_clk_cpu_freq_set"
.LASF148:
	.string	"wdt_flashboot_mod_en"
.LASF91:
	.string	"ESP_LOG_NONE"
.LASF103:
	.string	"SDIO_RESET"
.LASF169:
	.string	"portMUX_TYPE"
.LASF246:
	.string	"rtc_sleep_start"
.LASF196:
	.string	"period"
.LASF94:
	.string	"ESP_LOG_INFO"
.LASF89:
	.string	"esp_sleep_wakeup_cause_t"
.LASF252:
	.string	"_lock_release"
.LASF183:
	.string	"desc"
.LASF186:
	.string	"rtc_gpio_mask"
.LASF142:
	.string	"rtc_fastmem_pd_en"
.LASF198:
	.string	"cur_rtc_count"
.LASF179:
	.string	"xPortGetCoreID"
.LASF190:
	.string	"_rtc_data_end"
.LASF147:
	.string	"deep_slp"
.LASF178:
	.string	"uart_tx_wait_idle"
.LASF134:
	.string	"RTC_CPU_FREQ_160M"
.LASF136:
	.string	"RTC_CPU_FREQ_2M"
.LASF253:
	.string	"vTaskEnterCritical"
.LASF119:
	.string	"SDIO_TRIG"
.LASF173:
	.string	"ext1_trigger_mode"
.LASF143:
	.string	"rtc_slowmem_pd_en"
.LASF210:
	.string	"esp_set_deep_sleep_wake_stub"
.LASF120:
	.string	"MAC_TRIG"
.LASF232:
	.string	"esp_sleep_get_ext1_wakeup_status"
.LASF8:
	.string	"short int"
.LASF16:
	.string	"uint64_t"
.LASF226:
	.string	"mode"
.LASF156:
	.string	"func"
.LASF241:
	.string	"esp_clk_slowclk_cal_get"
.LASF200:
	.string	"get_power_down_flags"
.LASF158:
	.string	"pulldown"
.LASF150:
	.string	"dig_dbias_slp"
.LASF101:
	.string	"OWDT_RESET"
.LASF184:
	.string	"ext0_wakeup_prepare"
.LASF152:
	.string	"rtc_dbias_slp"
.LASF244:
	.string	"rtc_sleep_set_wakeup_time"
.LASF269:
	.string	"rtc_wdt_disable"
.LASF113:
	.string	"RTCWDT_RTC_RESET"
.LASF235:
	.string	"esp_sleep_pd_config"
.LASF220:
	.string	"esp_deep_sleep"
.LASF95:
	.string	"ESP_LOG_DEBUG"
.LASF247:
	.string	"rtc_clk_slow_freq_get_hz"
.LASF105:
	.string	"TG1WDT_SYS_RESET"
.LASF208:
	.string	"calc_crc"
.LASF266:
	.string	"C:/esp/esp-idf/components/esp32/sleep_modes.c"
.LASF135:
	.string	"RTC_CPU_FREQ_240M"
.LASF15:
	.string	"uint32_t"
.LASF258:
	.string	"esp_cpu_unstall"
.LASF250:
	.string	"_lock_acquire"
.LASF139:
	.string	"lslp_mem_inf_fpu"
.LASF189:
	.string	"_rtc_data_start"
.LASF2:
	.string	"short unsigned int"
.LASF201:
	.string	"rtc_wdt_enable"
.LASF176:
	.string	"ext0_rtc_gpio_num"
.LASF238:
	.string	"s_config"
.LASF206:
	.string	"flash_enable_time_us"
.LASF9:
	.string	"__int32_t"
.LASF79:
	.string	"ESP_PD_OPTION_OFF"
.LASF171:
	.string	"sleep_duration"
.LASF86:
	.string	"ESP_SLEEP_WAKEUP_TIMER"
.LASF155:
	.string	"rtc_sleep_config_t"
.LASF140:
	.string	"rtc_mem_inf_fpu"
.LASF83:
	.string	"ESP_SLEEP_WAKEUP_UNDEFINED"
.LASF193:
	.string	"option_str"
.LASF129:
	.string	"SDIO_IDLE_INT"
.LASF262:
	.string	"esp_log_write"
.LASF172:
	.string	"wakeup_triggers"
.LASF204:
	.string	"esp_light_sleep_inner"
.LASF118:
	.string	"TIMER_EXPIRE"
.LASF130:
	.string	"RTC_WDT_INT"
.LASF192:
	.string	"_rtc_bss_end"
.LASF194:
	.string	"pd_flags"
.LASF144:
	.string	"rtc_peri_pd_en"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-61-gab8375a) 5.2.0"
