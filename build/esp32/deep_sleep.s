	.file	"deep_sleep.c"
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
	.file 1 "C:/Users/nickt/git/esp-idf/components/esp32/deep_sleep.c"
	.loc 1 91 0
	entry	sp, 32
.LCFI0:
.LVL0:
.LBB21:
.LBB22:
	.file 2 "C:/Users/nickt/git/esp-idf/components/soc/esp32/include/soc/dport_access.h"
	.loc 2 41 0
	l32r	a8, .LC4
	memw
	l32i.n	a10, a8, 0
.LVL1:
.LBE22:
.LBE21:
	.loc 1 93 0
	l32r	a9, .LC5
	or	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
.LVL2:
.LBB23:
.LBB24:
	.loc 2 41 0
	memw
	l32i.n	a10, a8, 0
.LVL3:
.LBE24:
.LBE23:
	.loc 1 94 0
	l32r	a9, .LC6
	and	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	retw.n
.LFE25:
	.size	esp_default_wake_deep_sleep, .-esp_default_wake_deep_sleep
	.weak	esp_wake_deep_sleep
	.set	esp_wake_deep_sleep,esp_default_wake_deep_sleep
	.section	.text.ext0_wakeup_prepare,"ax",@progbits
	.literal_position
	.literal .LC7, s_config
	.literal .LC8, 1072989372
	.literal .LC9, 134217727
	.literal .LC10, 1072988256
	.literal .LC11, -1073741825
	.literal .LC12, rtc_gpio_desc
	.align	4
	.type	ext0_wakeup_prepare, @function
ext0_wakeup_prepare:
.LFB34:
	.loc 1 232 0
	entry	sp, 32
.LCFI1:
	.loc 1 233 0
	l32r	a12, .LC7
	l32i.n	a10, a12, 28
	extui	a10, a10, 0, 5
.LVL4:
	.loc 1 235 0
	l32r	a9, .LC8
	memw
	l32i.n	a11, a9, 0
	l32r	a8, .LC9
	and	a8, a11, a8
	slli	a11, a10, 27
	or	a8, a11, a8
	memw
	s32i.n	a8, a9, 0
	.loc 1 237 0
	l32r	a11, .LC10
	memw
	l32i.n	a9, a11, 0
	l32r	a8, .LC11
	and	a9, a9, a8
	l32i.n	a8, a12, 24
	extui	a8, a8, 30, 1
	slli	a8, a8, 30
	or	a8, a8, a9
	memw
	s32i.n	a8, a11, 0
.LVL5:
.LBB25:
	.loc 1 240 0
	movi.n	a8, 0
	j	.L3
.LVL6:
.L6:
.LBB26:
	.loc 1 242 0
	addx4	a11, a8, a8
	addx2	a11, a11, a8
	slli	a9, a11, 2
	l32r	a11, .LC12
	add.n	a9, a11, a9
	l32i.n	a9, a9, 40
	bne	a10, a9, .L4
	.loc 1 243 0
	mov.n	a15, a11
	addx4	a13, a8, a8
	slli	a13, a13, 1
	add.n	a9, a13, a8
	slli	a10, a9, 2
.LVL7:
	add.n	a10, a11, a10
	l32i.n	a9, a10, 0
	memw
	l32i.n	a12, a9, 0
	l32i.n	a11, a10, 4
	or	a11, a12, a11
	memw
	s32i.n	a11, a9, 0
	.loc 1 244 0
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
	.loc 1 245 0
	memw
	l32i.n	a12, a9, 0
	l32i.n	a11, a10, 24
	or	a11, a12, a11
	memw
	s32i.n	a11, a9, 0
	.loc 1 246 0
	memw
	l32i.n	a11, a9, 0
	add.n	a8, a13, a8
.LVL8:
	slli	a10, a8, 2
	add.n	a10, a15, a10
	l32i.n	a8, a10, 28
	or	a8, a11, a8
	memw
	s32i.n	a8, a9, 0
	.loc 1 247 0
	retw.n
.LVL9:
.L4:
.LBE26:
	.loc 1 240 0 discriminator 2
	addi.n	a8, a8, 1
.LVL10:
.L3:
	.loc 1 240 0 is_stmt 0 discriminator 1
	movi.n	a9, 0x27
	bgeu	a9, a8, .L6
	retw.n
.LBE25:
.LFE34:
	.size	ext0_wakeup_prepare, .-ext0_wakeup_prepare
	.section	.text.ext1_wakeup_prepare,"ax",@progbits
	.literal_position
	.literal .LC13, s_config
	.literal .LC14, 262143
	.literal .LC15, rtc_gpio_desc
	.literal .LC16, 1072988360
	.literal .LC17, 1072988364
	.literal .LC18, 262144
	.literal .LC19, -262144
	.literal .LC20, 1072988256
	.literal .LC21, 2147483647
	.align	4
	.type	ext1_wakeup_prepare, @function
ext1_wakeup_prepare:
.LFB36:
	.loc 1 276 0 is_stmt 1
	entry	sp, 32
.LCFI2:
	.loc 1 278 0
	l32r	a8, .LC13
	l32i.n	a8, a8, 24
	srli	a8, a8, 12
	l32r	a10, .LC14
	and	a10, a8, a10
.LVL11:
.LBB27:
	.loc 1 279 0
	movi.n	a8, 0
	j	.L8
.LVL12:
.L13:
.LBB28:
	.loc 1 280 0
	addx4	a11, a8, a8
	addx2	a11, a11, a8
	slli	a9, a11, 2
	l32r	a11, .LC15
	add.n	a9, a11, a9
	l32i.n	a13, a9, 40
.LVL13:
	.loc 1 281 0
	bbc	a10, a13, .L9
.LVL14:
	.loc 1 286 0
	addx4	a11, a8, a8
	slli	a11, a11, 1
	add.n	a11, a11, a8
	slli	a9, a11, 2
	l32r	a11, .LC15
	add.n	a11, a11, a9
	l32i.n	a9, a11, 0
	memw
	l32i.n	a14, a9, 0
	l32i.n	a12, a11, 4
	or	a12, a14, a12
	memw
	s32i.n	a12, a9, 0
	.loc 1 287 0
	memw
	l32i.n	a14, a9, 0
	l32i.n	a11, a11, 8
	movi.n	a12, 3
	ssl	a11
	sll	a12, a12
	movi.n	a11, -1
	xor	a11, a11, a12
	and	a11, a11, a14
	memw
	s32i.n	a11, a9, 0
	.loc 1 289 0
	l32r	a11, .LC13
	l32i.n	a11, a11, 0
	bnei	a11, 1, .L10
	.loc 1 291 0
	memw
	l32i.n	a14, a9, 0
	addx4	a11, a8, a8
	slli	a11, a11, 1
	add.n	a11, a11, a8
	slli	a12, a11, 2
	l32r	a11, .LC15
	add.n	a11, a11, a12
	l32i.n	a12, a11, 28
	or	a12, a14, a12
	memw
	s32i.n	a12, a9, 0
	.loc 1 293 0
	memw
	l32i.n	a12, a9, 0
	l32i.n	a11, a11, 24
	or	a11, a12, a11
	memw
	s32i.n	a11, a9, 0
	j	.L11
.L10:
	.loc 1 297 0
	memw
	l32i.n	a14, a9, 0
	addx4	a12, a8, a8
	slli	a12, a12, 1
	add.n	a12, a12, a8
	slli	a11, a12, 2
	l32r	a12, .LC15
	add.n	a11, a12, a11
	l32i.n	a12, a11, 12
	or	a12, a14, a12
	memw
	s32i.n	a12, a9, 0
	.loc 1 298 0
	memw
	l32i.n	a15, a9, 0
	l32i.n	a14, a11, 20
	movi.n	a12, -1
	xor	a14, a12, a14
	and	a14, a15, a14
	memw
	s32i.n	a14, a9, 0
	.loc 1 299 0
	memw
	l32i.n	a15, a9, 0
	l32i.n	a14, a11, 16
	xor	a12, a12, a14
	and	a12, a15, a12
	memw
	s32i.n	a12, a9, 0
	.loc 1 300 0
	l32r	a12, .LC16
	memw
	l32i.n	a14, a12, 0
	l32i.n	a9, a11, 36
	or	a9, a14, a9
	memw
	s32i.n	a9, a12, 0
.L11:
	.loc 1 303 0
	movi.n	a9, 1
	ssl	a13
	sll	a13, a9
.LVL15:
	movi.n	a9, -1
	xor	a13, a9, a13
	and	a10, a10, a13
.LVL16:
.L9:
.LBE28:
	.loc 1 279 0 discriminator 2
	addi.n	a8, a8, 1
.LVL17:
.L8:
	.loc 1 279 0 is_stmt 0 discriminator 1
	movi.n	a11, 1
	movi.n	a9, 0x27
	bge	a9, a8, .L12
	movi.n	a11, 0
.L12:
	movi.n	a12, 0
	movi.n	a9, 1
	moveqz	a9, a12, a10
	bany	a9, a11, .L13
.LBE27:
	.loc 1 306 0 is_stmt 1
	l32r	a10, .LC17
.LVL18:
	memw
	l32i.n	a9, a10, 0
	l32r	a8, .LC18
.LVL19:
	or	a8, a9, a8
	memw
	s32i.n	a8, a10, 0
	.loc 1 308 0
	memw
	l32i.n	a9, a10, 0
	l32r	a8, .LC19
	and	a9, a9, a8
	l32r	a8, .LC13
	l32i.n	a8, a8, 24
	srli	a11, a8, 12
	l32r	a12, .LC14
	and	a11, a11, a12
	or	a9, a11, a9
	memw
	s32i.n	a9, a10, 0
	.loc 1 310 0
	l32r	a10, .LC20
	memw
	l32i.n	a11, a10, 0
	l32r	a9, .LC21
	and	a9, a11, a9
	extui	a8, a8, 11, 1
	slli	a8, a8, 31
	or	a8, a8, a9
	memw
	s32i.n	a8, a10, 0
	retw.n
.LFE36:
	.size	ext1_wakeup_prepare, .-ext1_wakeup_prepare
	.section	.text.get_power_down_flags,"ax",@progbits
	.literal_position
	.literal .LC22, s_config
	.literal .LC23, _rtc_data_end
	.literal .LC24, _rtc_data_start
	.literal .LC25, _rtc_bss_end
	.literal .LC26, _rtc_bss_start
	.align	4
	.type	get_power_down_flags, @function
get_power_down_flags:
.LFB40:
	.loc 1 368 0
	entry	sp, 32
.LCFI3:
	.loc 1 379 0
	l32r	a2, .LC22
	l32i.n	a2, a2, 4
	beqi	a2, 2, .L15
	.loc 1 379 0 is_stmt 0 discriminator 1
	l32r	a8, .LC24
	l32r	a2, .LC23
	bltu	a8, a2, .L15
	.loc 1 380 0 is_stmt 1
	l32r	a8, .LC26
	l32r	a2, .LC25
	bgeu	a8, a2, .L16
.L15:
	.loc 1 382 0
	movi.n	a8, 1
	l32r	a2, .LC22
	s32i.n	a8, a2, 4
.L16:
	.loc 1 390 0
	l32r	a2, .LC22
	l32i.n	a2, a2, 8
	bnei	a2, 2, .L17
	.loc 1 391 0
	movi.n	a8, 1
	l32r	a2, .LC22
	s32i.n	a8, a2, 8
.L17:
	.loc 1 396 0
	l32r	a2, .LC22
	l32i.n	a2, a2, 0
	bnei	a2, 2, .L18
	.loc 1 397 0
	l32r	a2, .LC22
	l32i.n	a2, a2, 24
	extui	a2, a2, 0, 11
	bbci	a2, 0, .L19
	.loc 1 398 0
	movi.n	a8, 1
	l32r	a2, .LC22
	s32i.n	a8, a2, 0
	j	.L18
.L19:
	.loc 1 399 0
	movi	a8, 0x300
	bnone	a2, a8, .L18
	.loc 1 402 0
	movi.n	a8, 0
	l32r	a2, .LC22
	s32i.n	a8, a2, 0
.L18:
.LVL20:
	.loc 1 414 0
	l32r	a2, .LC22
	l32i.n	a2, a2, 8
	beqi	a2, 1, .L20
	.loc 1 415 0
	movi.n	a2, 9
.L20:
.LVL21:
	.loc 1 417 0
	l32r	a8, .LC22
	l32i.n	a8, a8, 4
	beqi	a8, 1, .L21
	.loc 1 418 0
	movi.n	a8, 4
	or	a2, a2, a8
.LVL22:
.L21:
	.loc 1 420 0
	l32r	a8, .LC22
	l32i.n	a8, a8, 0
	beqi	a8, 1, .L22
	.loc 1 421 0
	movi.n	a8, 2
	or	a2, a2, a8
.LVL23:
.L22:
	.loc 1 424 0
	retw.n
.LFE40:
	.size	get_power_down_flags, .-get_power_down_flags
	.section	.text.timer_wakeup_prepare,"ax",@progbits
	.literal_position
	.literal .LC27, s_config
	.align	4
	.type	timer_wakeup_prepare, @function
timer_wakeup_prepare:
.LFB30:
	.loc 1 186 0
	entry	sp, 32
.LCFI4:
	.loc 1 187 0
	call8	esp_clk_slowclk_cal_get
.LVL24:
	.loc 1 188 0
	mov.n	a12, a10
	l32r	a2, .LC27
	l32i.n	a10, a2, 16
.LVL25:
	l32i.n	a11, a2, 20
	call8	rtc_time_us_to_slowclk
.LVL26:
	mov.n	a2, a10
	mov.n	a3, a11
.LVL27:
	.loc 1 189 0
	call8	rtc_time_get
.LVL28:
	.loc 1 190 0
	add.n	a10, a2, a10
.LVL29:
	movi.n	a8, 1
	bltu	a10, a2, .L25
	movi.n	a8, 0
.L25:
	add.n	a9, a3, a11
	add.n	a11, a8, a9
	call8	rtc_sleep_set_wakeup_time
.LVL30:
	retw.n
.LFE30:
	.size	timer_wakeup_prepare, .-timer_wakeup_prepare
	.section	.text.esp_get_deep_sleep_wake_stub,"ax",@progbits
	.literal_position
	.literal .LC28, lock_rtc_memory_crc
	.literal .LC29, 1072988348
	.literal .LC30, 1072988344
	.align	4
	.global	esp_get_deep_sleep_wake_stub
	.type	esp_get_deep_sleep_wake_stub, @function
esp_get_deep_sleep_wake_stub:
.LFB23:
	.loc 1 68 0
	entry	sp, 32
.LCFI5:
	.loc 1 69 0
	l32r	a4, .LC28
	mov.n	a10, a4
	call8	_lock_acquire
.LVL31:
	.loc 1 70 0
	l32r	a2, .LC29
	memw
	l32i.n	a3, a2, 0
.LVL32:
	.loc 1 71 0
	call8	set_rtc_memory_crc
.LVL33:
	.loc 1 72 0
	memw
	l32i.n	a5, a2, 0
.LVL34:
	.loc 1 73 0
	memw
	s32i.n	a3, a2, 0
	.loc 1 74 0
	mov.n	a10, a4
	call8	_lock_release
.LVL35:
	.loc 1 76 0
	bne	a3, a5, .L28
	.loc 1 77 0
	l32r	a2, .LC30
	memw
	l32i.n	a2, a2, 0
	retw.n
.L28:
	.loc 1 79 0
	movi.n	a2, 0
	.loc 1 81 0
	retw.n
.LFE23:
	.size	esp_get_deep_sleep_wake_stub, .-esp_get_deep_sleep_wake_stub
	.section	.text.esp_set_deep_sleep_wake_stub,"ax",@progbits
	.literal_position
	.literal .LC31, lock_rtc_memory_crc
	.literal .LC32, 1072988344
	.align	4
	.global	esp_set_deep_sleep_wake_stub
	.type	esp_set_deep_sleep_wake_stub, @function
esp_set_deep_sleep_wake_stub:
.LFB24:
	.loc 1 84 0
.LVL36:
	entry	sp, 32
.LCFI6:
	.loc 1 85 0
	l32r	a3, .LC31
	mov.n	a10, a3
	call8	_lock_acquire
.LVL37:
	.loc 1 86 0
	l32r	a8, .LC32
	memw
	s32i.n	a2, a8, 0
	.loc 1 87 0
	call8	set_rtc_memory_crc
.LVL38:
	.loc 1 88 0
	mov.n	a10, a3
	call8	_lock_release
.LVL39:
	retw.n
.LFE24:
	.size	esp_set_deep_sleep_wake_stub, .-esp_set_deep_sleep_wake_stub
	.section	.iram1,"ax",@progbits
	.literal_position
	.literal .LC33, 1072988208
	.literal .LC34, 671088639
	.literal .LC35, 1072990220
	.literal .LC36, 1072955420
	.literal .LC37, 1073020956
	.literal .LC38, 1073143836
	.literal .LC39, esp_wake_deep_sleep
	.literal .LC40, s_config
	.literal .LC41, 1072988184
	.literal .LC42, 2097152
	.literal .LC45, 16384
	.literal .LC46, -229377
	.literal .LC47, -1835009
	.literal .LC48, -14680065
	.literal .LC49, 16777216
	.align	4
	.global	esp_deep_sleep_start
	.type	esp_deep_sleep_start, @function
esp_deep_sleep_start:
.LFB27:
	.loc 1 114 0
	entry	sp, 32
.LCFI7:
	.loc 1 116 0
	call8	get_power_down_flags
.LVL40:
	mov.n	a2, a10
.LVL41:
	.loc 1 119 0
	l32r	a8, .LC33
	memw
	l32i.n	a9, a8, 0
	l32r	a3, .LC34
	and	a3, a9, a3
	memw
	s32i.n	a3, a8, 0
	.loc 1 123 0
	l32r	a3, .LC35
	memw
	l32i.n	a8, a3, 0
	memw
	s32i.n	a8, a3, 0
.LVL42:
.L31:
.LBB29:
.LBB30:
	.file 3 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/uart.h"
	.loc 3 271 0
	l32r	a3, .LC36
	memw
	l32i.n	a3, a3, 0
	extui	a3, a3, 24, 4
	bnez.n	a3, .L31
.L32:
.LBE30:
.LBE29:
.LBB31:
.LBB32:
	l32r	a3, .LC37
	memw
	l32i.n	a3, a3, 0
	extui	a3, a3, 24, 4
	bnez.n	a3, .L32
.L33:
.LBE32:
.LBE31:
.LBB33:
.LBB34:
	l32r	a3, .LC38
	memw
	l32i.n	a3, a3, 0
	extui	a3, a3, 24, 4
	bnez.n	a3, .L33
.LBE34:
.LBE33:
	.loc 1 130 0
	call8	esp_get_deep_sleep_wake_stub
.LVL43:
	bnez.n	a10, .L34
	.loc 1 131 0
	l32r	a10, .LC39
	call8	esp_set_deep_sleep_wake_stub
.LVL44:
.L34:
	.loc 1 135 0
	l32r	a3, .LC40
	l32i.n	a3, a3, 24
	bbci	a3, 0, .L35
	.loc 1 136 0
	call8	ext0_wakeup_prepare
.LVL45:
.L35:
	.loc 1 138 0
	l32r	a3, .LC40
	l32i.n	a3, a3, 24
	bbci	a3, 1, .L36
	.loc 1 139 0
	call8	ext1_wakeup_prepare
.LVL46:
.L36:
	.loc 1 142 0
	l32r	a3, .LC40
	l32i.n	a3, a3, 24
	bbci	a3, 9, .L37
	.loc 1 143 0
	l32r	a8, .LC41
	memw
	l32i.n	a9, a8, 0
	l32r	a3, .LC42
	or	a3, a9, a3
	memw
	s32i.n	a3, a8, 0
.L37:
	.loc 1 146 0
	l32r	a3, .LC40
	l32i.n	a3, a3, 24
	bbci	a3, 3, .L38
	.loc 1 147 0 discriminator 1
	l32r	a8, .LC40
	l32i.n	a9, a8, 16
	l32i.n	a3, a8, 20
	.loc 1 146 0 discriminator 1
	or	a3, a9, a3
	beqz.n	a3, .L38
	.loc 1 148 0 discriminator 1
	call8	timer_wakeup_prepare
.LVL47:
.L38:
	.loc 1 152 0
	movi.n	a11, 1
	movi.n	a3, 0
	movi.n	a10, 8
	and	a10, a2, a10
	mov.n	a4, a3
	movnez	a4, a11, a10
	slli	a10, a4, 5
	movi.n	a8, 0x10
	and	a8, a2, a8
	movi.n	a9, 4
	and	a9, a2, a9
	mov.n	a4, a3
	movnez	a4, a11, a9
	slli	a9, a4, 6
	or	a10, a8, a10
	movi.n	a8, 2
	and	a8, a2, a8
	moveqz	a11, a3, a8
	slli	a8, a11, 7
	or	a9, a10, a9
	extui	a2, a2, 0, 1
.LVL48:
	slli	a2, a2, 10
	or	a8, a9, a8
	or	a2, a8, a2
	l32r	a8, .LC45
	or	a2, a2, a8
.LVL49:
	l32r	a8, .LC46
.LVL50:
	and	a2, a2, a8
.LVL51:
	l32r	a8, .LC47
.LVL52:
	and	a2, a2, a8
.LVL53:
	l32r	a8, .LC48
.LVL54:
	and	a2, a2, a8
.LVL55:
	.loc 1 153 0
	l32r	a10, .LC49
.LVL56:
	or	a10, a2, a10
	call8	rtc_sleep_init
.LVL57:
	.loc 1 154 0
	l32r	a2, .LC40
.LVL58:
	l32i.n	a10, a2, 24
	mov.n	a11, a3
	extui	a10, a10, 0, 11
	call8	rtc_sleep_start
.LVL59:
.L40:
	j	.L40
.LFE27:
	.size	esp_deep_sleep_start, .-esp_deep_sleep_start
	.section	.text.esp_deep_sleep_enable_ulp_wakeup,"ax",@progbits
	.align	4
	.global	esp_deep_sleep_enable_ulp_wakeup
	.type	esp_deep_sleep_enable_ulp_wakeup, @function
esp_deep_sleep_enable_ulp_wakeup:
.LFB28:
	.loc 1 165 0
	entry	sp, 32
.LCFI8:
	.loc 1 176 0
	movi	a2, 0x103
	retw.n
.LFE28:
	.size	esp_deep_sleep_enable_ulp_wakeup, .-esp_deep_sleep_enable_ulp_wakeup
	.section	.text.esp_deep_sleep_enable_timer_wakeup,"ax",@progbits
	.literal_position
	.literal .LC50, s_config
	.align	4
	.global	esp_deep_sleep_enable_timer_wakeup
	.type	esp_deep_sleep_enable_timer_wakeup, @function
esp_deep_sleep_enable_timer_wakeup:
.LFB29:
	.loc 1 179 0
.LVL60:
	entry	sp, 32
.LCFI9:
	.loc 1 180 0
	l32r	a8, .LC50
	l32i.n	a10, a8, 24
	movi.n	a9, 8
	or	a9, a10, a9
	s32i.n	a9, a8, 24
	.loc 1 181 0
	s32i.n	a2, a8, 16
	s32i.n	a3, a8, 20
	.loc 1 183 0
	movi.n	a2, 0
.LVL61:
	retw.n
.LFE29:
	.size	esp_deep_sleep_enable_timer_wakeup, .-esp_deep_sleep_enable_timer_wakeup
	.section	.text.esp_deep_sleep,"ax",@progbits
	.align	4
	.global	esp_deep_sleep
	.type	esp_deep_sleep, @function
esp_deep_sleep:
.LFB26:
	.loc 1 108 0
.LVL62:
	entry	sp, 32
.LCFI10:
	.loc 1 109 0
	mov.n	a10, a2
	mov.n	a11, a3
	call8	esp_deep_sleep_enable_timer_wakeup
.LVL63:
	.loc 1 110 0
	call8	esp_deep_sleep_start
.LVL64:
.LFE26:
	.size	esp_deep_sleep, .-esp_deep_sleep
	.global	system_deep_sleep
	.set	system_deep_sleep,esp_deep_sleep
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC52:
	.string	"deepsleep"
	.align	4
.LC54:
	.string	"\033[0;31mE (%d) %s: Conflicting wake-up trigger: ext0\033[0m\n"
	.section	.text.esp_deep_sleep_enable_touchpad_wakeup,"ax",@progbits
	.literal_position
	.literal .LC51, s_config
	.literal .LC53, .LC52
	.literal .LC55, .LC54
	.align	4
	.global	esp_deep_sleep_enable_touchpad_wakeup
	.type	esp_deep_sleep_enable_touchpad_wakeup, @function
esp_deep_sleep_enable_touchpad_wakeup:
.LFB31:
	.loc 1 194 0
	entry	sp, 32
.LCFI11:
	.loc 1 195 0
	l32r	a8, .LC51
	l32i.n	a8, a8, 24
	extui	a8, a8, 0, 11
	bbci	a8, 0, .L45
	.loc 1 196 0 discriminator 1
	call8	esp_log_timestamp
.LVL65:
	l32r	a12, .LC53
	mov.n	a11, a10
	l32r	a10, .LC55
	call8	ets_printf
.LVL66:
	.loc 1 197 0 discriminator 1
	movi	a2, 0x103
	retw.n
.L45:
	.loc 1 199 0
	l32r	a2, .LC51
	movi	a9, 0x100
	or	a8, a8, a9
	extui	a9, a8, 0, 11
	l32i.n	a10, a2, 24
	movi	a8, -0x800
	and	a8, a10, a8
	or	a8, a8, a9
	s32i.n	a8, a2, 24
	.loc 1 200 0
	movi.n	a2, 0
	.loc 1 201 0
	retw.n
.LFE31:
	.size	esp_deep_sleep_enable_touchpad_wakeup, .-esp_deep_sleep_enable_touchpad_wakeup
	.section	.rodata.str1.4
	.align	4
.LC59:
	.string	"\033[0;31mE (%d) %s: Conflicting wake-up triggers: touch / ULP\033[0m\n"
	.section	.text.esp_deep_sleep_enable_ext0_wakeup,"ax",@progbits
	.literal_position
	.literal .LC56, rtc_gpio_desc
	.literal .LC57, s_config
	.literal .LC58, .LC52
	.literal .LC60, .LC59
	.literal .LC61, -1073741825
	.align	4
	.global	esp_deep_sleep_enable_ext0_wakeup
	.type	esp_deep_sleep_enable_ext0_wakeup, @function
esp_deep_sleep_enable_ext0_wakeup:
.LFB33:
	.loc 1 214 0
.LVL67:
	entry	sp, 32
.LCFI12:
	.loc 1 215 0
	bgeui	a3, 2, .L51
.LVL68:
.LBB35:
.LBB36:
	.file 4 "C:/Users/nickt/git/esp-idf/components/driver/include/driver/rtc_io.h"
	.loc 4 71 0
	movi.n	a8, 0x27
	bltu	a8, a2, .L52
	addx4	a8, a2, a2
	addx2	a8, a8, a2
	l32r	a9, .LC56
	addx4	a8, a8, a9
	l32i.n	a8, a8, 0
	bnez.n	a8, .L53
	j	.L49
.L52:
	movi.n	a8, 0
	j	.L49
.L53:
	movi.n	a8, 1
.L49:
.LBE36:
.LBE35:
	.loc 1 218 0
	beqz.n	a8, .L54
	.loc 1 221 0
	l32r	a8, .LC57
	l32i.n	a9, a8, 24
	extui	a9, a9, 0, 11
	movi	a8, 0x300
	bnone	a9, a8, .L50
	.loc 1 222 0 discriminator 1
	call8	esp_log_timestamp
.LVL69:
	l32r	a12, .LC58
	mov.n	a11, a10
	l32r	a10, .LC60
	call8	ets_printf
.LVL70:
	.loc 1 223 0 discriminator 1
	movi	a2, 0x103
.LVL71:
	retw.n
.LVL72:
.L50:
	.loc 1 225 0
	addx4	a8, a2, a2
	addx2	a2, a8, a2
.LVL73:
	l32r	a8, .LC56
	addx4	a2, a2, a8
	l32r	a10, .LC57
	l8ui	a2, a2, 40
	extui	a8, a2, 0, 5
	l32i.n	a11, a10, 28
	movi.n	a2, -0x20
	and	a2, a11, a2
	or	a2, a2, a8
	s32i.n	a2, a10, 28
	.loc 1 226 0
	extui	a3, a3, 0, 1
.LVL74:
	slli	a8, a3, 30
	l32i.n	a3, a10, 24
	l32r	a2, .LC61
	and	a3, a3, a2
	or	a3, a3, a8
	.loc 1 227 0
	movi.n	a2, 1
	or	a9, a9, a2
	extui	a9, a9, 0, 11
	movi	a2, -0x800
	and	a3, a3, a2
	or	a3, a3, a9
	s32i.n	a3, a10, 24
	.loc 1 228 0
	movi.n	a2, 0
	retw.n
.LVL75:
.L51:
	.loc 1 216 0
	movi	a2, 0x102
.LVL76:
	retw.n
.LVL77:
.L54:
	.loc 1 219 0
	movi	a2, 0x102
.LVL78:
	.loc 1 229 0
	retw.n
.LFE33:
	.size	esp_deep_sleep_enable_ext0_wakeup, .-esp_deep_sleep_enable_ext0_wakeup
	.section	.rodata.str1.4
	.align	4
.LC64:
	.string	"\033[0;31mE (%d) %s: Not an RTC IO: GPIO%d\033[0m\n"
	.section	.text.esp_deep_sleep_enable_ext1_wakeup,"ax",@progbits
	.literal_position
	.literal .LC62, rtc_gpio_desc
	.literal .LC63, .LC52
	.literal .LC65, .LC64
	.literal .LC66, s_config
	.literal .LC67, 262143
	.literal .LC68, -1073737729
	.literal .LC69, -2049
	.align	4
	.global	esp_deep_sleep_enable_ext1_wakeup
	.type	esp_deep_sleep_enable_ext1_wakeup, @function
esp_deep_sleep_enable_ext1_wakeup:
.LFB35:
	.loc 1 253 0
.LVL79:
	entry	sp, 32
.LCFI13:
	.loc 1 254 0
	bgeui	a4, 2, .L63
	movi.n	a5, 0
	mov.n	a9, a5
	j	.L57
.LVL80:
.L62:
.LBB37:
	.loc 1 260 0
	bbci	a2, 0, .L58
.LVL81:
.LBB38:
.LBB39:
	.loc 4 71 0
	movi.n	a8, 0x27
	bltu	a8, a5, .L64
	addx4	a8, a5, a5
	addx2	a8, a8, a5
	l32r	a10, .LC62
	addx4	a8, a8, a10
	l32i.n	a8, a8, 0
	bnez.n	a8, .L65
	j	.L60
.L64:
	movi.n	a8, 0
	j	.L60
.L65:
	movi.n	a8, 1
.L60:
.LBE39:
.LBE38:
	.loc 1 263 0
	bnez.n	a8, .L61
	.loc 1 264 0 discriminator 1
	call8	esp_log_timestamp
.LVL82:
	mov.n	a13, a5
	l32r	a12, .LC63
	mov.n	a11, a10
	l32r	a10, .LC65
	call8	ets_printf
.LVL83:
	.loc 1 265 0 discriminator 1
	movi	a2, 0x102
.LVL84:
	retw.n
.LVL85:
.L61:
	.loc 1 267 0
	addx4	a8, a5, a5
	addx2	a8, a8, a5
	l32r	a10, .LC62
	addx4	a8, a8, a10
	l32i.n	a10, a8, 40
	movi.n	a8, 1
	ssl	a10
	sll	a8, a8
	or	a9, a9, a8
.LVL86:
.L58:
	.loc 1 259 0 discriminator 2
	addi.n	a5, a5, 1
.LVL87:
	slli	a8, a3, 31
	srli	a2, a2, 1
.LVL88:
	or	a2, a8, a2
	srli	a3, a3, 1
.LVL89:
.L57:
	.loc 1 259 0 is_stmt 0 discriminator 1
	or	a8, a2, a3
	bnez.n	a8, .L62
.LBE37:
	.loc 1 269 0 is_stmt 1
	l32r	a5, .LC66
.LVL90:
	l32r	a2, .LC67
.LVL91:
	and	a9, a9, a2
.LVL92:
	slli	a9, a9, 12
	l32i.n	a3, a5, 24
	l32r	a2, .LC68
	and	a2, a3, a2
	or	a2, a2, a9
	.loc 1 270 0
	extui	a4, a4, 0, 1
.LVL93:
	slli	a4, a4, 11
	l32r	a3, .LC69
	and	a2, a2, a3
	or	a2, a2, a4
	.loc 1 271 0
	movi.n	a3, 2
	or	a2, a2, a3
	s32i.n	a2, a5, 24
	.loc 1 272 0
	movi.n	a2, 0
	retw.n
.LVL94:
.L63:
	.loc 1 255 0
	movi	a2, 0x102
.LVL95:
	.loc 1 273 0
	retw.n
.LFE35:
	.size	esp_deep_sleep_enable_ext1_wakeup, .-esp_deep_sleep_enable_ext1_wakeup
	.section	.text.esp_deep_sleep_get_wakeup_cause,"ax",@progbits
	.literal_position
	.literal .LC70, 1072988216
	.align	4
	.global	esp_deep_sleep_get_wakeup_cause
	.type	esp_deep_sleep_get_wakeup_cause, @function
esp_deep_sleep_get_wakeup_cause:
.LFB38:
	.loc 1 336 0
	entry	sp, 32
.LCFI14:
	.loc 1 337 0
	movi.n	a10, 0
	call8	rtc_get_reset_reason
.LVL96:
	bnei	a10, 5, .L68
	.loc 1 341 0
	l32r	a2, .LC70
	memw
	l32i.n	a2, a2, 0
.LVL97:
	.loc 1 342 0
	bbsi	a2, 0, .L69
	.loc 1 344 0
	bbsi	a2, 1, .L70
	.loc 1 346 0
	bbsi	a2, 3, .L71
	.loc 1 348 0
	bbsi	a2, 8, .L72
	.loc 1 350 0
	bbci	a2, 9, .L73
	.loc 1 351 0
	movi.n	a2, 5
.LVL98:
	retw.n
.L68:
	.loc 1 338 0
	movi.n	a2, 0
	retw.n
.LVL99:
.L69:
	.loc 1 343 0
	movi.n	a2, 1
.LVL100:
	retw.n
.LVL101:
.L70:
	.loc 1 345 0
	movi.n	a2, 2
.LVL102:
	retw.n
.LVL103:
.L71:
	.loc 1 347 0
	movi.n	a2, 3
.LVL104:
	retw.n
.LVL105:
.L72:
	.loc 1 349 0
	movi.n	a2, 4
.LVL106:
	retw.n
.LVL107:
.L73:
	.loc 1 353 0
	movi.n	a2, 0
.LVL108:
	.loc 1 355 0
	retw.n
.LFE38:
	.size	esp_deep_sleep_get_wakeup_cause, .-esp_deep_sleep_get_wakeup_cause
	.section	.rodata.str1.4
	.align	4
.LC72:
	.string	"touch_mask != 0 && \"wakeup reason is RTC_TOUCH_TRIG_EN but SENS_TOUCH_MEAS_EN is zero\""
	.align	4
.LC75:
	.string	"C:/Users/nickt/git/esp-idf/components/esp32/deep_sleep.c"
	.section	.text.esp_deep_sleep_get_touchpad_wakeup_status,"ax",@progbits
	.literal_position
	.literal .LC71, 1072990340
	.literal .LC73, .LC72
	.literal .LC74, __func__$5123
	.literal .LC76, .LC75
	.align	4
	.global	esp_deep_sleep_get_touchpad_wakeup_status
	.type	esp_deep_sleep_get_touchpad_wakeup_status, @function
esp_deep_sleep_get_touchpad_wakeup_status:
.LFB32:
	.loc 1 204 0
	entry	sp, 32
.LCFI15:
	.loc 1 205 0
	call8	esp_deep_sleep_get_wakeup_cause
.LVL109:
	bnei	a10, 4, .L77
	.loc 1 208 0
	l32r	a2, .LC71
	memw
	l32i.n	a8, a2, 0
	extui	a8, a8, 0, 10
.LVL110:
	.loc 1 209 0
	bnez.n	a8, .L76
	.loc 1 209 0 is_stmt 0 discriminator 1
	l32r	a13, .LC73
	l32r	a12, .LC74
	movi	a11, 0xd1
	l32r	a10, .LC76
	call8	__assert_func
.LVL111:
.L76:
	.loc 1 210 0 is_stmt 1
	neg	a2, a8
	and	a2, a2, a8
	nsau	a2, a2
	neg	a2, a2
	addi	a2, a2, 31
	retw.n
.LVL112:
.L77:
	.loc 1 206 0
	movi.n	a2, 0xa
	.loc 1 211 0
	retw.n
.LFE32:
	.size	esp_deep_sleep_get_touchpad_wakeup_status, .-esp_deep_sleep_get_touchpad_wakeup_status
	.section	.text.esp_deep_sleep_get_ext1_wakeup_status,"ax",@progbits
	.literal_position
	.literal .LC78, 1072988368
	.literal .LC79, 262143
	.literal .LC80, rtc_gpio_desc
	.align	4
	.global	esp_deep_sleep_get_ext1_wakeup_status
	.type	esp_deep_sleep_get_ext1_wakeup_status, @function
esp_deep_sleep_get_ext1_wakeup_status:
.LFB37:
	.loc 1 315 0
	entry	sp, 32
.LCFI16:
	.loc 1 316 0
	call8	esp_deep_sleep_get_wakeup_cause
.LVL113:
	bnei	a10, 2, .L84
	.loc 1 319 0
	l32r	a2, .LC78
	memw
	l32i.n	a11, a2, 0
	l32r	a2, .LC79
	and	a11, a11, a2
.LVL114:
.LBB40:
	.loc 1 322 0
	movi.n	a8, 0
.LBE40:
	.loc 1 321 0
	mov.n	a2, a8
	mov.n	a3, a8
.LBB44:
	.loc 1 322 0
	j	.L80
.LVL115:
.L83:
.LBB41:
.LBB42:
.LBB43:
	.loc 4 71 0
	movi.n	a9, 0x27
	bltu	a9, a8, .L85
	addx4	a10, a8, a8
	addx2	a10, a10, a8
	slli	a9, a10, 2
	l32r	a10, .LC80
	add.n	a9, a10, a9
	l32i.n	a9, a9, 0
	bnez.n	a9, .L86
	j	.L81
.L85:
	movi.n	a9, 0
	j	.L81
.L86:
	movi.n	a9, 1
.L81:
.LBE43:
.LBE42:
	.loc 1 323 0
	beqz.n	a9, .L82
	.loc 1 326 0
	addx4	a10, a8, a8
	addx2	a10, a10, a8
	slli	a9, a10, 2
	l32r	a10, .LC80
	add.n	a9, a10, a9
	l32i.n	a9, a9, 40
.LVL116:
	.loc 1 327 0
	bbc	a11, a9, .L82
	.loc 1 330 0
	movi.n	a9, 1
.LVL117:
	ssl	a8
	sll	a9, a9
	or	a9, a2, a9
	mov.n	a2, a9
.LVL118:
.L82:
.LBE41:
	.loc 1 322 0 discriminator 2
	addi.n	a8, a8, 1
.LVL119:
.L80:
	.loc 1 322 0 is_stmt 0 discriminator 1
	movi.n	a9, 0x27
	bge	a9, a8, .L83
	retw.n
.LVL120:
.L84:
.LBE44:
	.loc 1 317 0 is_stmt 1
	movi.n	a2, 0
	mov.n	a3, a2
	.loc 1 333 0
	retw.n
.LFE37:
	.size	esp_deep_sleep_get_ext1_wakeup_status, .-esp_deep_sleep_get_ext1_wakeup_status
	.section	.text.esp_deep_sleep_pd_config,"ax",@progbits
	.literal_position
	.literal .LC81, s_config
	.align	4
	.global	esp_deep_sleep_pd_config
	.type	esp_deep_sleep_pd_config, @function
esp_deep_sleep_pd_config:
.LFB39:
	.loc 1 359 0
.LVL121:
	entry	sp, 32
.LCFI17:
	.loc 1 360 0
	movi.n	a8, 1
	bgeui	a2, 3, .L88
	movi.n	a8, 0
.L88:
	extui	a9, a8, 0, 8
	movi.n	a8, 1
	bgeui	a3, 3, .L89
	movi.n	a8, 0
.L89:
	extui	a8, a8, 0, 8
	or	a8, a9, a8
	bnez.n	a8, .L91
	.loc 1 363 0
	l32r	a8, .LC81
	addx4	a2, a2, a8
.LVL122:
	s32i.n	a3, a2, 0
	.loc 1 364 0
	movi.n	a2, 0
	retw.n
.LVL123:
.L91:
	.loc 1 361 0
	movi	a2, 0x102
.LVL124:
	.loc 1 365 0
	retw.n
.LFE39:
	.size	esp_deep_sleep_pd_config, .-esp_deep_sleep_pd_config
	.section	.rodata.__func__$5123,"a",@progbits
	.align	4
	.type	__func__$5123, @object
	.size	__func__$5123, 42
__func__$5123:
	.string	"esp_deep_sleep_get_touchpad_wakeup_status"
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
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI1-.LFB34
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI2-.LFB36
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x4
	.4byte	.LCFI3-.LFB40
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI4-.LFB30
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI5-.LFB23
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI6-.LFB24
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI7-.LFB27
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI8-.LFB28
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI9-.LFB29
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI10-.LFB26
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI11-.LFB31
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI12-.LFB33
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI13-.LFB35
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x4
	.4byte	.LCFI14-.LFB38
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI15-.LFB32
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x4
	.4byte	.LCFI16-.LFB37
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x4
	.4byte	.LCFI17-.LFB39
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE34:
	.text
.Letext0:
	.file 5 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 6 "C:/Users/nickt/git/esp-idf/components/newlib/include/sys/lock.h"
	.file 7 "C:/Users/nickt/git/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 8 "C:/Users/nickt/git/esp-idf/components/newlib/include/stdint.h"
	.file 9 "C:/Users/nickt/git/esp-idf/components/esp32/include/esp_err.h"
	.file 10 "C:/Users/nickt/git/esp-idf/components/driver/include/driver/gpio.h"
	.file 11 "C:/Users/nickt/git/esp-idf/components/driver/include/driver/touch_pad.h"
	.file 12 "C:/Users/nickt/git/esp-idf/components/esp32/include/esp_deep_sleep.h"
	.file 13 "C:/Users/nickt/git/esp-idf/components/log/include/esp_log.h"
	.file 14 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/rtc.h"
	.file 15 "C:/Users/nickt/git/esp-idf/components/soc/esp32/include/soc/rtc.h"
	.file 16 "C:/Users/nickt/git/esp-idf/components/esp32/include/esp_clk.h"
	.file 17 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/ets_sys.h"
	.file 18 "C:/Users/nickt/git/esp-idf/components/newlib/include/assert.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xf07
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF231
	.byte	0xc
	.4byte	.LASF232
	.4byte	.LASF233
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
	.byte	0x1e
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
	.byte	0x21
	.4byte	0x24f
	.uleb128 0x8
	.byte	0x4
	.4byte	0x3e
	.byte	0xc
	.byte	0x26
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
	.byte	0x2b
	.4byte	0x273
	.uleb128 0x8
	.byte	0x4
	.4byte	0x3e
	.byte	0xc
	.byte	0x30
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
	.byte	0x34
	.4byte	0x2a3
	.uleb128 0x8
	.byte	0x4
	.4byte	0x3e
	.byte	0xc
	.byte	0x39
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
	.byte	0x40
	.4byte	0x2cd
	.uleb128 0xa
	.4byte	.LASF90
	.byte	0xc
	.2byte	0x106
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
	.uleb128 0xc
	.byte	0x4
	.byte	0xf
	.2byte	0x17b
	.4byte	0x551
	.uleb128 0xd
	.4byte	.LASF132
	.byte	0xf
	.2byte	0x17c
	.4byte	0xb5
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0
	.uleb128 0xd
	.4byte	.LASF133
	.byte	0xf
	.2byte	0x17d
	.4byte	0xb5
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xd
	.4byte	.LASF134
	.byte	0xf
	.2byte	0x17e
	.4byte	0xb5
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xd
	.4byte	.LASF135
	.byte	0xf
	.2byte	0x17f
	.4byte	0xb5
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xd
	.4byte	.LASF136
	.byte	0xf
	.2byte	0x180
	.4byte	0xb5
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xd
	.4byte	.LASF137
	.byte	0xf
	.2byte	0x181
	.4byte	0xb5
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xd
	.4byte	.LASF138
	.byte	0xf
	.2byte	0x182
	.4byte	0xb5
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.4byte	.LASF139
	.byte	0xf
	.2byte	0x183
	.4byte	0xb5
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xd
	.4byte	.LASF140
	.byte	0xf
	.2byte	0x184
	.4byte	0xb5
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xd
	.4byte	.LASF141
	.byte	0xf
	.2byte	0x185
	.4byte	0xb5
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xd
	.4byte	.LASF142
	.byte	0xf
	.2byte	0x186
	.4byte	0xb5
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xd
	.4byte	.LASF143
	.byte	0xf
	.2byte	0x187
	.4byte	0xb5
	.byte	0x4
	.byte	0x3
	.byte	0x11
	.byte	0
	.uleb128 0xd
	.4byte	.LASF144
	.byte	0xf
	.2byte	0x188
	.4byte	0xb5
	.byte	0x4
	.byte	0x3
	.byte	0xe
	.byte	0
	.uleb128 0xd
	.4byte	.LASF145
	.byte	0xf
	.2byte	0x189
	.4byte	0xb5
	.byte	0x4
	.byte	0x3
	.byte	0xb
	.byte	0
	.uleb128 0xd
	.4byte	.LASF146
	.byte	0xf
	.2byte	0x18a
	.4byte	0xb5
	.byte	0x4
	.byte	0x3
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.4byte	.LASF147
	.byte	0xf
	.2byte	0x18b
	.4byte	0xb5
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	.LASF148
	.byte	0xf
	.2byte	0x18c
	.4byte	0x447
	.uleb128 0xe
	.byte	0x2c
	.byte	0x4
	.byte	0x20
	.4byte	0x5e9
	.uleb128 0xf
	.string	"reg"
	.byte	0x4
	.byte	0x21
	.4byte	0xb5
	.byte	0
	.uleb128 0xf
	.string	"mux"
	.byte	0x4
	.byte	0x22
	.4byte	0xb5
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF149
	.byte	0x4
	.byte	0x23
	.4byte	0xb5
	.byte	0x8
	.uleb128 0xf
	.string	"ie"
	.byte	0x4
	.byte	0x24
	.4byte	0xb5
	.byte	0xc
	.uleb128 0x10
	.4byte	.LASF150
	.byte	0x4
	.byte	0x25
	.4byte	0xb5
	.byte	0x10
	.uleb128 0x10
	.4byte	.LASF151
	.byte	0x4
	.byte	0x26
	.4byte	0xb5
	.byte	0x14
	.uleb128 0x10
	.4byte	.LASF152
	.byte	0x4
	.byte	0x27
	.4byte	0xb5
	.byte	0x18
	.uleb128 0x10
	.4byte	.LASF153
	.byte	0x4
	.byte	0x28
	.4byte	0xb5
	.byte	0x1c
	.uleb128 0x10
	.4byte	.LASF154
	.byte	0x4
	.byte	0x29
	.4byte	0xb5
	.byte	0x20
	.uleb128 0x10
	.4byte	.LASF155
	.byte	0x4
	.byte	0x2a
	.4byte	0xb5
	.byte	0x24
	.uleb128 0x10
	.4byte	.LASF156
	.byte	0x4
	.byte	0x2b
	.4byte	0x2c
	.byte	0x28
	.byte	0
	.uleb128 0x4
	.4byte	.LASF157
	.byte	0x4
	.byte	0x2c
	.4byte	0x55d
	.uleb128 0x7
	.4byte	0xee
	.uleb128 0xe
	.byte	0x20
	.byte	0x1
	.byte	0x26
	.4byte	0x665
	.uleb128 0x10
	.4byte	.LASF158
	.byte	0x1
	.byte	0x27
	.4byte	0x665
	.byte	0
	.uleb128 0x10
	.4byte	.LASF159
	.byte	0x1
	.byte	0x28
	.4byte	0xc0
	.byte	0x10
	.uleb128 0x11
	.4byte	.LASF160
	.byte	0x1
	.byte	0x29
	.4byte	0xb5
	.byte	0x4
	.byte	0xb
	.byte	0x15
	.byte	0x18
	.uleb128 0x11
	.4byte	.LASF161
	.byte	0x1
	.byte	0x2a
	.4byte	0xb5
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x18
	.uleb128 0x11
	.4byte	.LASF162
	.byte	0x1
	.byte	0x2b
	.4byte	0xb5
	.byte	0x4
	.byte	0x12
	.byte	0x2
	.byte	0x18
	.uleb128 0x11
	.4byte	.LASF163
	.byte	0x1
	.byte	0x2c
	.4byte	0xb5
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x18
	.uleb128 0x11
	.4byte	.LASF164
	.byte	0x1
	.byte	0x2d
	.4byte	0xb5
	.byte	0x4
	.byte	0x5
	.byte	0x1b
	.byte	0x1c
	.byte	0
	.uleb128 0x12
	.4byte	0x2c2
	.4byte	0x675
	.uleb128 0x13
	.4byte	0xd2
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF165
	.byte	0x1
	.byte	0x2e
	.4byte	0x5f9
	.uleb128 0x14
	.4byte	.LASF167
	.byte	0x2
	.byte	0x24
	.4byte	0xb5
	.byte	0x3
	.4byte	0x6a7
	.uleb128 0x15
	.string	"reg"
	.byte	0x2
	.byte	0x24
	.4byte	0xb5
	.uleb128 0x16
	.string	"val"
	.byte	0x2
	.byte	0x26
	.4byte	0xb5
	.byte	0
	.uleb128 0x17
	.4byte	.LASF234
	.byte	0x3
	.2byte	0x10e
	.byte	0x3
	.4byte	0x6c1
	.uleb128 0x18
	.4byte	.LASF166
	.byte	0x3
	.2byte	0x10e
	.4byte	0x9f
	.byte	0
	.uleb128 0x14
	.4byte	.LASF168
	.byte	0x4
	.byte	0x44
	.4byte	0x104
	.byte	0x3
	.4byte	0x6dd
	.uleb128 0x19
	.4byte	.LASF169
	.byte	0x4
	.byte	0x44
	.4byte	0x1ea
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF189
	.byte	0x1
	.byte	0x5b
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x74d
	.uleb128 0x1b
	.4byte	0x680
	.4byte	.LBB21
	.4byte	.LBE21-.LBB21
	.byte	0x1
	.byte	0x5d
	.4byte	0x722
	.uleb128 0x1c
	.4byte	0x690
	.4byte	0x3ff00044
	.uleb128 0x1d
	.4byte	.LBB22
	.4byte	.LBE22-.LBB22
	.uleb128 0x1e
	.4byte	0x69b
	.4byte	.LLST0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	0x680
	.4byte	.LBB23
	.4byte	.LBE23-.LBB23
	.byte	0x1
	.byte	0x5e
	.uleb128 0x1c
	.4byte	0x690
	.4byte	0x3ff00044
	.uleb128 0x1d
	.4byte	.LBB24
	.4byte	.LBE24-.LBB24
	.uleb128 0x20
	.4byte	0x69b
	.uleb128 0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LASF172
	.byte	0x1
	.byte	0xe7
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7a0
	.uleb128 0x22
	.4byte	.LASF170
	.byte	0x1
	.byte	0xe9
	.4byte	0x2c
	.4byte	.LLST1
	.uleb128 0x1d
	.4byte	.LBB25
	.4byte	.LBE25-.LBB25
	.uleb128 0x22
	.4byte	.LASF169
	.byte	0x1
	.byte	0xf0
	.4byte	0x33
	.4byte	.LLST2
	.uleb128 0x1d
	.4byte	.LBB26
	.4byte	.LBE26-.LBB26
	.uleb128 0x23
	.4byte	.LASF171
	.byte	0x1
	.byte	0xf1
	.4byte	0x7a0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x7a6
	.uleb128 0x7
	.4byte	0x5e9
	.uleb128 0x24
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x113
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x812
	.uleb128 0x25
	.4byte	.LASF174
	.byte	0x1
	.2byte	0x116
	.4byte	0xb5
	.4byte	.LLST3
	.uleb128 0x1d
	.4byte	.LBB27
	.4byte	.LBE27-.LBB27
	.uleb128 0x25
	.4byte	.LASF175
	.byte	0x1
	.2byte	0x117
	.4byte	0x2c
	.4byte	.LLST4
	.uleb128 0x1d
	.4byte	.LBB28
	.4byte	.LBE28-.LBB28
	.uleb128 0x25
	.4byte	.LASF176
	.byte	0x1
	.2byte	0x118
	.4byte	0x2c
	.4byte	.LLST5
	.uleb128 0x26
	.4byte	.LASF171
	.byte	0x1
	.2byte	0x11c
	.4byte	0x7a0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LASF235
	.byte	0x1
	.2byte	0x16f
	.4byte	0xb5
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x879
	.uleb128 0x28
	.4byte	.LASF177
	.byte	0x1
	.2byte	0x179
	.4byte	0x2c
	.uleb128 0x28
	.4byte	.LASF178
	.byte	0x1
	.2byte	0x179
	.4byte	0x2c
	.uleb128 0x28
	.4byte	.LASF179
	.byte	0x1
	.2byte	0x179
	.4byte	0x2c
	.uleb128 0x28
	.4byte	.LASF180
	.byte	0x1
	.2byte	0x179
	.4byte	0x2c
	.uleb128 0x26
	.4byte	.LASF181
	.byte	0x1
	.2byte	0x196
	.4byte	0x879
	.uleb128 0x25
	.4byte	.LASF182
	.byte	0x1
	.2byte	0x19d
	.4byte	0xb5
	.4byte	.LLST6
	.byte	0
	.uleb128 0x12
	.4byte	0xee
	.4byte	0x889
	.uleb128 0x13
	.4byte	0xd2
	.byte	0x2
	.byte	0
	.uleb128 0x21
	.4byte	.LASF183
	.byte	0x1
	.byte	0xb9
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8f3
	.uleb128 0x22
	.4byte	.LASF184
	.byte	0x1
	.byte	0xbb
	.4byte	0xb5
	.4byte	.LLST7
	.uleb128 0x29
	.4byte	.LASF185
	.byte	0x1
	.byte	0xbc
	.4byte	0xc0
	.uleb128 0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x22
	.4byte	.LASF186
	.byte	0x1
	.byte	0xbd
	.4byte	0xc0
	.4byte	.LLST8
	.uleb128 0x2a
	.4byte	.LVL24
	.4byte	0xe76
	.uleb128 0x2a
	.4byte	.LVL26
	.4byte	0xe81
	.uleb128 0x2a
	.4byte	.LVL28
	.4byte	0xe8d
	.uleb128 0x2a
	.4byte	.LVL30
	.4byte	0xe99
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF193
	.byte	0x1
	.byte	0x43
	.4byte	0x309
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x954
	.uleb128 0x29
	.4byte	.LASF187
	.byte	0x1
	.byte	0x46
	.4byte	0xb5
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x29
	.4byte	.LASF188
	.byte	0x1
	.byte	0x48
	.4byte	0xb5
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2c
	.4byte	.LVL31
	.4byte	0xea5
	.4byte	0x93a
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL33
	.4byte	0xeb0
	.uleb128 0x2e
	.4byte	.LVL35
	.4byte	0xebb
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF190
	.byte	0x1
	.byte	0x53
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9a4
	.uleb128 0x2f
	.4byte	.LASF195
	.byte	0x1
	.byte	0x53
	.4byte	0x309
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2c
	.4byte	.LVL37
	.4byte	0xea5
	.4byte	0x98a
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL38
	.4byte	0xeb0
	.uleb128 0x2e
	.4byte	.LVL39
	.4byte	0xebb
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x30
	.4byte	.LASF191
	.byte	0x1
	.byte	0x71
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa90
	.uleb128 0x22
	.4byte	.LASF182
	.byte	0x1
	.byte	0x74
	.4byte	0xb5
	.4byte	.LLST9
	.uleb128 0x22
	.4byte	.LASF192
	.byte	0x1
	.byte	0x98
	.4byte	0x551
	.4byte	.LLST10
	.uleb128 0x1b
	.4byte	0x6a7
	.4byte	.LBB29
	.4byte	.LBE29-.LBB29
	.byte	0x1
	.byte	0x7e
	.4byte	0x9f1
	.uleb128 0x31
	.4byte	0x6b4
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	0x6a7
	.4byte	.LBB31
	.4byte	.LBE31-.LBB31
	.byte	0x1
	.byte	0x7f
	.4byte	0xa0a
	.uleb128 0x32
	.4byte	0x6b4
	.byte	0
	.uleb128 0x1b
	.4byte	0x6a7
	.4byte	.LBB33
	.4byte	.LBE33-.LBB33
	.byte	0x1
	.byte	0x80
	.4byte	0xa23
	.uleb128 0x32
	.4byte	0x6b4
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL40
	.4byte	0x812
	.uleb128 0x2a
	.4byte	.LVL43
	.4byte	0x8f3
	.uleb128 0x2c
	.4byte	.LVL44
	.4byte	0x954
	.4byte	0xa4c
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	esp_wake_deep_sleep
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL45
	.4byte	0x74d
	.uleb128 0x2a
	.4byte	.LVL46
	.4byte	0x7ab
	.uleb128 0x2a
	.4byte	.LVL47
	.4byte	0x889
	.uleb128 0x2c
	.4byte	.LVL57
	.4byte	0xec6
	.4byte	0xa7f
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x6
	.byte	0x72
	.sleb128 0
	.byte	0x40
	.byte	0x44
	.byte	0x24
	.byte	0x21
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL59
	.4byte	0xed2
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x33
	.4byte	.LASF236
	.byte	0x1
	.byte	0xa4
	.4byte	0xf9
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2b
	.4byte	.LASF194
	.byte	0x1
	.byte	0xb2
	.4byte	0xf9
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xace
	.uleb128 0x34
	.4byte	.LASF196
	.byte	0x1
	.byte	0xb2
	.4byte	0xc0
	.4byte	.LLST11
	.byte	0
	.uleb128 0x35
	.4byte	.LASF197
	.byte	0x1
	.byte	0x6b
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb08
	.uleb128 0x2f
	.4byte	.LASF196
	.byte	0x1
	.byte	0x6b
	.4byte	0xc0
	.uleb128 0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x2a
	.4byte	.LVL63
	.4byte	0xaa5
	.uleb128 0x2a
	.4byte	.LVL64
	.4byte	0x9a4
	.byte	0
	.uleb128 0x36
	.4byte	.LASF198
	.byte	0x1
	.byte	0xc1
	.4byte	0xf9
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb47
	.uleb128 0x2a
	.4byte	.LVL65
	.4byte	0xede
	.uleb128 0x2e
	.4byte	.LVL66
	.4byte	0xee9
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC54
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC52
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF199
	.byte	0x1
	.byte	0xd5
	.4byte	0xf9
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbc1
	.uleb128 0x34
	.4byte	.LASF169
	.byte	0x1
	.byte	0xd5
	.4byte	0x1ea
	.4byte	.LLST12
	.uleb128 0x34
	.4byte	.LASF200
	.byte	0x1
	.byte	0xd5
	.4byte	0x2c
	.4byte	.LLST13
	.uleb128 0x1b
	.4byte	0x6c1
	.4byte	.LBB35
	.4byte	.LBE35-.LBB35
	.byte	0x1
	.byte	0xda
	.4byte	0xb9b
	.uleb128 0x37
	.4byte	0x6d1
	.4byte	.LLST14
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL69
	.4byte	0xede
	.uleb128 0x2e
	.4byte	.LVL70
	.4byte	0xee9
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC59
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC52
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF201
	.byte	0x1
	.byte	0xfc
	.4byte	0xf9
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc6c
	.uleb128 0x34
	.4byte	.LASF202
	.byte	0x1
	.byte	0xfc
	.4byte	0xc0
	.4byte	.LLST15
	.uleb128 0x34
	.4byte	.LASF203
	.byte	0x1
	.byte	0xfc
	.4byte	0x268
	.4byte	.LLST16
	.uleb128 0x25
	.4byte	.LASF174
	.byte	0x1
	.2byte	0x102
	.4byte	0xb5
	.4byte	.LLST17
	.uleb128 0x1d
	.4byte	.LBB37
	.4byte	.LBE37-.LBB37
	.uleb128 0x25
	.4byte	.LASF175
	.byte	0x1
	.2byte	0x103
	.4byte	0x2c
	.4byte	.LLST18
	.uleb128 0x38
	.4byte	0x6c1
	.4byte	.LBB38
	.4byte	.LBE38-.LBB38
	.byte	0x1
	.2byte	0x107
	.4byte	0xc3f
	.uleb128 0x37
	.4byte	0x6d1
	.4byte	.LLST19
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL82
	.4byte	0xede
	.uleb128 0x2e
	.4byte	.LVL83
	.4byte	0xee9
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC64
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC52
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x39
	.4byte	.LASF204
	.byte	0x1
	.2byte	0x14f
	.4byte	0x2fe
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xca6
	.uleb128 0x25
	.4byte	.LASF205
	.byte	0x1
	.2byte	0x155
	.4byte	0xb5
	.4byte	.LLST20
	.uleb128 0x2e
	.4byte	.LVL96
	.4byte	0xef4
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LASF206
	.byte	0x1
	.byte	0xcb
	.4byte	0x244
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd12
	.uleb128 0x22
	.4byte	.LASF207
	.byte	0x1
	.byte	0xd0
	.4byte	0xb5
	.4byte	.LLST21
	.uleb128 0x3a
	.4byte	.LASF208
	.4byte	0xd22
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5123
	.uleb128 0x2a
	.4byte	.LVL109
	.4byte	0xc6c
	.uleb128 0x2e
	.4byte	.LVL111
	.4byte	0xeff
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC75
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xd1
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5123
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC72
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	0xe7
	.4byte	0xd22
	.uleb128 0x13
	.4byte	0xd2
	.byte	0x29
	.byte	0
	.uleb128 0x7
	.4byte	0xd12
	.uleb128 0x39
	.4byte	.LASF209
	.byte	0x1
	.2byte	0x13a
	.4byte	0xc0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdb9
	.uleb128 0x25
	.4byte	.LASF210
	.byte	0x1
	.2byte	0x13f
	.4byte	0xb5
	.4byte	.LLST22
	.uleb128 0x25
	.4byte	.LASF211
	.byte	0x1
	.2byte	0x141
	.4byte	0xc0
	.4byte	.LLST23
	.uleb128 0x3b
	.4byte	.Ldebug_ranges0+0
	.4byte	0xdaf
	.uleb128 0x25
	.4byte	.LASF175
	.byte	0x1
	.2byte	0x142
	.4byte	0x2c
	.4byte	.LLST24
	.uleb128 0x1d
	.4byte	.LBB41
	.4byte	.LBE41-.LBB41
	.uleb128 0x25
	.4byte	.LASF176
	.byte	0x1
	.2byte	0x146
	.4byte	0x2c
	.4byte	.LLST25
	.uleb128 0x3c
	.4byte	0x6c1
	.4byte	.LBB42
	.4byte	.LBE42-.LBB42
	.byte	0x1
	.2byte	0x143
	.uleb128 0x37
	.4byte	0x6d1
	.4byte	.LLST26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL113
	.4byte	0xc6c
	.byte	0
	.uleb128 0x3d
	.4byte	.LASF212
	.byte	0x1
	.2byte	0x165
	.4byte	0xf9
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdf2
	.uleb128 0x3e
	.4byte	.LASF213
	.byte	0x1
	.2byte	0x165
	.4byte	0x298
	.4byte	.LLST27
	.uleb128 0x3f
	.4byte	.LASF214
	.byte	0x1
	.2byte	0x166
	.4byte	0x2c2
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x29
	.4byte	.LASF215
	.byte	0x1
	.byte	0x30
	.4byte	0x675
	.uleb128 0x5
	.byte	0x3
	.4byte	s_config
	.uleb128 0x29
	.4byte	.LASF216
	.byte	0x1
	.byte	0x37
	.4byte	0x4c
	.uleb128 0x5
	.byte	0x3
	.4byte	lock_rtc_memory_crc
	.uleb128 0x40
	.string	"TAG"
	.byte	0x1
	.byte	0x39
	.4byte	0x5f4
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC52
	.byte	0x9f
	.uleb128 0x12
	.4byte	0x5e9
	.4byte	0xe36
	.uleb128 0x13
	.4byte	0xd2
	.byte	0x27
	.byte	0
	.uleb128 0x41
	.4byte	.LASF217
	.byte	0x4
	.byte	0x3c
	.4byte	0xe41
	.uleb128 0x7
	.4byte	0xe26
	.uleb128 0x28
	.4byte	.LASF177
	.byte	0x1
	.2byte	0x179
	.4byte	0x2c
	.uleb128 0x28
	.4byte	.LASF178
	.byte	0x1
	.2byte	0x179
	.4byte	0x2c
	.uleb128 0x28
	.4byte	.LASF179
	.byte	0x1
	.2byte	0x179
	.4byte	0x2c
	.uleb128 0x28
	.4byte	.LASF180
	.byte	0x1
	.2byte	0x179
	.4byte	0x2c
	.uleb128 0x42
	.4byte	.LASF218
	.4byte	.LASF218
	.byte	0x10
	.byte	0x2b
	.uleb128 0x43
	.4byte	.LASF219
	.4byte	.LASF219
	.byte	0xf
	.2byte	0x160
	.uleb128 0x43
	.4byte	.LASF220
	.4byte	.LASF220
	.byte	0xf
	.2byte	0x176
	.uleb128 0x43
	.4byte	.LASF221
	.4byte	.LASF221
	.byte	0xf
	.2byte	0x1c4
	.uleb128 0x42
	.4byte	.LASF222
	.4byte	.LASF222
	.byte	0x6
	.byte	0x20
	.uleb128 0x42
	.4byte	.LASF223
	.4byte	.LASF223
	.byte	0xe
	.byte	0xb7
	.uleb128 0x42
	.4byte	.LASF224
	.4byte	.LASF224
	.byte	0x6
	.byte	0x24
	.uleb128 0x43
	.4byte	.LASF225
	.4byte	.LASF225
	.byte	0xf
	.2byte	0x1bc
	.uleb128 0x43
	.4byte	.LASF226
	.4byte	.LASF226
	.byte	0xf
	.2byte	0x1ec
	.uleb128 0x42
	.4byte	.LASF227
	.4byte	.LASF227
	.byte	0xd
	.byte	0x4c
	.uleb128 0x42
	.4byte	.LASF228
	.4byte	.LASF228
	.byte	0x11
	.byte	0xde
	.uleb128 0x42
	.4byte	.LASF229
	.4byte	.LASF229
	.byte	0xe
	.byte	0x9a
	.uleb128 0x42
	.4byte	.LASF230
	.4byte	.LASF230
	.byte	0x12
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x6
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
	.uleb128 0x20
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0xb
	.uleb128 0x49
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x2d
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
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
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x37
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x38
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
	.uleb128 0x3a
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
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL4
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x9
	.byte	0x3
	.4byte	s_config+28
	.byte	0x6
	.byte	0x4f
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LFE34
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL9
	.4byte	.LFE34
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL11
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LFE40
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL25
	.4byte	.LVL26-1
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL41
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL56
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL61
	.4byte	.LFE29
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL67
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL73
	.4byte	.LVL75
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL75
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL76
	.4byte	.LVL77
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL78
	.4byte	.LFE33
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL67
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL74
	.4byte	.LVL75
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL75
	.4byte	.LFE33
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL68
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL73
	.4byte	.LVL75
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL78
	.4byte	.LFE33
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL79
	.4byte	.LVL80
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL80
	.4byte	.LVL84
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL85
	.4byte	.LVL88
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL89
	.4byte	.LVL91
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL94
	.4byte	.LVL95
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL95
	.4byte	.LFE35
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL79
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL93
	.4byte	.LVL94
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL94
	.4byte	.LFE35
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL80
	.4byte	.LVL82-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL85
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL80
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL81
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL97
	.4byte	.LVL98
	.2byte	0x7
	.byte	0x72
	.sleb128 0
	.byte	0xa
	.2byte	0x7ff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL99
	.4byte	.LVL100
	.2byte	0x7
	.byte	0x72
	.sleb128 0
	.byte	0xa
	.2byte	0x7ff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL101
	.4byte	.LVL102
	.2byte	0x7
	.byte	0x72
	.sleb128 0
	.byte	0xa
	.2byte	0x7ff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL103
	.4byte	.LVL104
	.2byte	0x7
	.byte	0x72
	.sleb128 0
	.byte	0xa
	.2byte	0x7ff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL105
	.4byte	.LVL106
	.2byte	0x7
	.byte	0x72
	.sleb128 0
	.byte	0xa
	.2byte	0x7ff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL107
	.4byte	.LVL108
	.2byte	0x7
	.byte	0x72
	.sleb128 0
	.byte	0xa
	.2byte	0x7ff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL110
	.4byte	.LVL111-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL111
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL114
	.4byte	.LVL120
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL114
	.4byte	.LVL115
	.2byte	0xa
	.byte	0x9e
	.uleb128 0x8
	.8byte	0
	.4byte	.LVL115
	.4byte	.LVL120
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL114
	.4byte	.LVL115
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL115
	.4byte	.LVL120
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL116
	.4byte	.LVL117
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL117
	.4byte	.LVL118
	.2byte	0x13
	.byte	0x78
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x31
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
	.uleb128 0x28
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL115
	.4byte	.LVL119
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL121
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
	.4byte	.LFE39
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0xa4
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB40
	.4byte	.LBE40
	.4byte	.LBB44
	.4byte	.LBE44
	.4byte	0
	.4byte	0
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LFB37
	.4byte	.LFE37
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF76:
	.string	"ESP_PD_DOMAIN_RTC_FAST_MEM"
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
.LASF3:
	.string	"size_t"
.LASF147:
	.string	"lslp_meminf_pd"
.LASF90:
	.string	"esp_deep_sleep_wake_stub_fn_t"
.LASF187:
	.string	"stored_crc"
.LASF180:
	.string	"_rtc_bss_end"
.LASF21:
	.string	"esp_err_t"
.LASF6:
	.string	"__uint8_t"
.LASF120:
	.string	"MAC_TRIG"
.LASF161:
	.string	"ext1_trigger_mode"
.LASF234:
	.string	"uart_tx_wait_idle"
.LASF150:
	.string	"pullup"
.LASF146:
	.string	"rtc_dbias_slp"
.LASF209:
	.string	"esp_deep_sleep_get_ext1_wakeup_status"
.LASF184:
	.string	"period"
.LASF113:
	.string	"RTCWDT_RTC_RESET"
.LASF0:
	.string	"long long unsigned int"
.LASF100:
	.string	"SW_RESET"
.LASF177:
	.string	"_rtc_data_start"
.LASF169:
	.string	"gpio_num"
.LASF128:
	.string	"REJECT_INT"
.LASF220:
	.string	"rtc_time_get"
.LASF121:
	.string	"UART0_TRIG"
.LASF206:
	.string	"esp_deep_sleep_get_touchpad_wakeup_status"
.LASF95:
	.string	"ESP_LOG_DEBUG"
.LASF11:
	.string	"long long int"
.LASF5:
	.string	"signed char"
.LASF157:
	.string	"rtc_gpio_desc_t"
.LASF190:
	.string	"esp_set_deep_sleep_wake_stub"
.LASF130:
	.string	"RTC_WDT_INT"
.LASF42:
	.string	"GPIO_NUM_19"
.LASF103:
	.string	"SDIO_RESET"
.LASF172:
	.string	"ext0_wakeup_prepare"
.LASF158:
	.string	"pd_options"
.LASF176:
	.string	"rtc_pin"
.LASF73:
	.string	"esp_ext1_wakeup_mode_t"
.LASF216:
	.string	"lock_rtc_memory_crc"
.LASF17:
	.string	"long int"
.LASF179:
	.string	"_rtc_bss_start"
.LASF142:
	.string	"wdt_flashboot_mod_en"
.LASF138:
	.string	"rtc_peri_pd_en"
.LASF174:
	.string	"rtc_gpio_mask"
.LASF194:
	.string	"esp_deep_sleep_enable_timer_wakeup"
.LASF149:
	.string	"func"
.LASF199:
	.string	"esp_deep_sleep_enable_ext0_wakeup"
.LASF4:
	.string	"_lock_t"
.LASF58:
	.string	"gpio_num_t"
.LASF99:
	.string	"POWERON_RESET"
.LASF198:
	.string	"esp_deep_sleep_enable_touchpad_wakeup"
.LASF145:
	.string	"rtc_dbias_wak"
.LASF211:
	.string	"gpio_mask"
.LASF143:
	.string	"dig_dbias_wak"
.LASF87:
	.string	"ESP_DEEP_SLEEP_WAKEUP_TOUCHPAD"
.LASF122:
	.string	"UART1_TRIG"
.LASF207:
	.string	"touch_mask"
.LASF152:
	.string	"slpsel"
.LASF116:
	.string	"EXT_EVENT1_TRIG"
.LASF114:
	.string	"NO_SLEEP"
.LASF111:
	.string	"EXT_CPU_RESET"
.LASF126:
	.string	"NO_INT"
.LASF10:
	.string	"__uint32_t"
.LASF202:
	.string	"mask"
.LASF109:
	.string	"SW_CPU_RESET"
.LASF221:
	.string	"rtc_sleep_set_wakeup_time"
.LASF173:
	.string	"ext1_wakeup_prepare"
.LASF115:
	.string	"EXT_EVENT0_TRIG"
.LASF196:
	.string	"time_in_us"
.LASF77:
	.string	"ESP_PD_DOMAIN_MAX"
.LASF1:
	.string	"unsigned int"
.LASF129:
	.string	"SDIO_IDLE_INT"
.LASF70:
	.string	"touch_pad_t"
.LASF224:
	.string	"_lock_release"
.LASF19:
	.string	"long unsigned int"
.LASF185:
	.string	"rtc_count_delta"
.LASF112:
	.string	"RTCWDT_BROWN_OUT_RESET"
.LASF86:
	.string	"ESP_DEEP_SLEEP_WAKEUP_TIMER"
.LASF160:
	.string	"wakeup_triggers"
.LASF193:
	.string	"esp_get_deep_sleep_wake_stub"
.LASF162:
	.string	"ext1_rtc_gpio_mask"
.LASF23:
	.string	"GPIO_NUM_0"
.LASF24:
	.string	"GPIO_NUM_1"
.LASF200:
	.string	"level"
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
.LASF181:
	.string	"option_str"
.LASF83:
	.string	"ESP_DEEP_SLEEP_WAKEUP_UNDEFINED"
.LASF84:
	.string	"ESP_DEEP_SLEEP_WAKEUP_EXT0"
.LASF79:
	.string	"ESP_PD_OPTION_OFF"
.LASF93:
	.string	"ESP_LOG_WARN"
.LASF148:
	.string	"rtc_sleep_config_t"
.LASF144:
	.string	"dig_dbias_slp"
.LASF75:
	.string	"ESP_PD_DOMAIN_RTC_SLOW_MEM"
.LASF141:
	.string	"deep_slp"
.LASF155:
	.string	"hold_force"
.LASF205:
	.string	"wakeup_cause"
.LASF136:
	.string	"rtc_fastmem_pd_en"
.LASF8:
	.string	"short int"
.LASF212:
	.string	"esp_deep_sleep_pd_config"
.LASF82:
	.string	"esp_deep_sleep_pd_option_t"
.LASF9:
	.string	"__int32_t"
.LASF43:
	.string	"GPIO_NUM_21"
.LASF217:
	.string	"rtc_gpio_desc"
.LASF235:
	.string	"get_power_down_flags"
.LASF165:
	.string	"deep_sleep_config_t"
.LASF153:
	.string	"slpie"
.LASF132:
	.string	"soc_clk_sel"
.LASF48:
	.string	"GPIO_NUM_27"
.LASF94:
	.string	"ESP_LOG_INFO"
.LASF105:
	.string	"TG1WDT_SYS_RESET"
.LASF18:
	.string	"sizetype"
.LASF127:
	.string	"WAKEUP_INT"
.LASF88:
	.string	"ESP_DEEP_SLEEP_WAKEUP_ULP"
.LASF57:
	.string	"GPIO_NUM_MAX"
.LASF182:
	.string	"pd_flags"
.LASF69:
	.string	"TOUCH_PAD_MAX"
.LASF16:
	.string	"uint64_t"
.LASF228:
	.string	"ets_printf"
.LASF171:
	.string	"desc"
.LASF81:
	.string	"ESP_PD_OPTION_AUTO"
.LASF118:
	.string	"TIMER_EXPIRE"
.LASF225:
	.string	"rtc_sleep_init"
.LASF97:
	.string	"esp_log_level_t"
.LASF222:
	.string	"_lock_acquire"
.LASF108:
	.string	"TGWDT_CPU_RESET"
.LASF106:
	.string	"RTCWDT_SYS_RESET"
.LASF236:
	.string	"esp_deep_sleep_enable_ulp_wakeup"
.LASF125:
	.string	"BT_TRIG"
.LASF159:
	.string	"sleep_duration"
.LASF163:
	.string	"ext0_trigger_level"
.LASF124:
	.string	"SAR_TRIG"
.LASF12:
	.string	"__uint64_t"
.LASF123:
	.string	"TOUCH_TRIG"
.LASF215:
	.string	"s_config"
.LASF191:
	.string	"esp_deep_sleep_start"
.LASF168:
	.string	"rtc_gpio_is_valid_gpio"
.LASF110:
	.string	"RTCWDT_CPU_RESET"
.LASF178:
	.string	"_rtc_data_end"
.LASF134:
	.string	"rtc_mem_inf_fpu"
.LASF71:
	.string	"ESP_EXT1_WAKEUP_ALL_LOW"
.LASF22:
	.string	"_Bool"
.LASF14:
	.string	"int32_t"
.LASF7:
	.string	"unsigned char"
.LASF104:
	.string	"TG0WDT_SYS_RESET"
.LASF197:
	.string	"esp_deep_sleep"
.LASF72:
	.string	"ESP_EXT1_WAKEUP_ANY_HIGH"
.LASF107:
	.string	"INTRUSION_RESET"
.LASF117:
	.string	"GPIO_TRIG"
.LASF139:
	.string	"wifi_pd_en"
.LASF214:
	.string	"option"
.LASF227:
	.string	"esp_log_timestamp"
.LASF92:
	.string	"ESP_LOG_ERROR"
.LASF170:
	.string	"rtc_gpio_num"
.LASF188:
	.string	"calc_crc"
.LASF208:
	.string	"__func__"
.LASF151:
	.string	"pulldown"
.LASF80:
	.string	"ESP_PD_OPTION_ON"
.LASF233:
	.string	"C:\\\\esp\\\\ArkPOS2-esp\\\\build\\\\esp32"
.LASF49:
	.string	"GPIO_NUM_32"
.LASF133:
	.string	"lslp_mem_inf_fpu"
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
.LASF166:
	.string	"uart_no"
.LASF25:
	.string	"GPIO_NUM_2"
.LASF20:
	.string	"char"
.LASF96:
	.string	"ESP_LOG_VERBOSE"
.LASF203:
	.string	"mode"
.LASF192:
	.string	"config"
.LASF186:
	.string	"cur_rtc_count"
.LASF189:
	.string	"esp_default_wake_deep_sleep"
.LASF164:
	.string	"ext0_rtc_gpio_num"
.LASF91:
	.string	"ESP_LOG_NONE"
.LASF119:
	.string	"SDIO_TRIG"
.LASF140:
	.string	"rom_mem_pd_en"
.LASF13:
	.string	"uint8_t"
.LASF74:
	.string	"ESP_PD_DOMAIN_RTC_PERIPH"
.LASF137:
	.string	"rtc_slowmem_pd_en"
.LASF204:
	.string	"esp_deep_sleep_get_wakeup_cause"
.LASF2:
	.string	"short unsigned int"
.LASF218:
	.string	"esp_clk_slowclk_cal_get"
.LASF102:
	.string	"DEEPSLEEP_RESET"
.LASF89:
	.string	"esp_deep_sleep_wakeup_cause_t"
.LASF15:
	.string	"uint32_t"
.LASF229:
	.string	"rtc_get_reset_reason"
.LASF44:
	.string	"GPIO_NUM_22"
.LASF45:
	.string	"GPIO_NUM_23"
.LASF154:
	.string	"hold"
.LASF46:
	.string	"GPIO_NUM_25"
.LASF47:
	.string	"GPIO_NUM_26"
.LASF210:
	.string	"status"
.LASF195:
	.string	"new_stub"
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
.LASF156:
	.string	"rtc_num"
.LASF167:
	.string	"DPORT_REG_READ"
.LASF232:
	.string	"C:/Users/nickt/git/esp-idf/components/esp32/deep_sleep.c"
.LASF201:
	.string	"esp_deep_sleep_enable_ext1_wakeup"
.LASF213:
	.string	"domain"
.LASF175:
	.string	"gpio"
.LASF183:
	.string	"timer_wakeup_prepare"
.LASF78:
	.string	"esp_deep_sleep_pd_domain_t"
.LASF230:
	.string	"__assert_func"
.LASF231:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF101:
	.string	"OWDT_RESET"
.LASF219:
	.string	"rtc_time_us_to_slowclk"
.LASF131:
	.string	"RTC_TIME_VALID_INT"
.LASF135:
	.string	"rtc_mem_inf_follow_cpu"
.LASF226:
	.string	"rtc_sleep_start"
.LASF98:
	.string	"NO_MEAN"
.LASF85:
	.string	"ESP_DEEP_SLEEP_WAKEUP_EXT1"
.LASF223:
	.string	"set_rtc_memory_crc"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-61-gab8375a) 5.2.0"
