	.file	"gpio.c"
	.text
.Ltext0:
	.section	.iram1,"ax",@progbits
	.literal_position
	.literal .LC0, GPIO
	.literal .LC1, gpio_isr_func
	.align	4
	.global	gpio_intr_service
	.type	gpio_intr_service, @function
gpio_intr_service:
.LFB25:
	.file 1 "C:/esp/esp-idf/components/driver/gpio.c"
	.loc 1 343 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LVL1:
	.loc 1 348 0
	l32r	a2, .LC0
.LVL2:
	memw
	l32i	a3, a2, 68
.LVL3:
	.loc 1 351 0
	memw
	l32i	a4, a2, 80
	extui	a4, a4, 0, 8
.LVL4:
	.loc 1 353 0
	l32r	a2, .LC1
	l32i.n	a2, a2, 0
	beqz.n	a2, .L1
	movi.n	a2, 0
.LVL5:
.L7:
	.loc 1 357 0
	movi.n	a8, 0x1f
	bltu	a8, a2, .L3
	.loc 1 358 0
	bbc	a3, a2, .L4
	.loc 1 359 0
	l32r	a8, .LC1
	l32i.n	a8, a8, 0
	addx8	a8, a2, a8
	l32i.n	a9, a8, 0
	beqz.n	a9, .L5
	.loc 1 360 0
	l32i.n	a10, a8, 4
	callx8	a9
.LVL6:
.L5:
	.loc 1 362 0
	movi.n	a8, 1
	ssl	a2
	sll	a8, a8
	l32r	a9, .LC0
	memw
	s32i	a8, a9, 76
	j	.L4
.L3:
	.loc 1 365 0
	addi	a5, a2, -32
	bbc	a4, a5, .L4
	.loc 1 366 0
	l32r	a8, .LC1
	l32i.n	a8, a8, 0
	addx8	a8, a2, a8
	l32i.n	a9, a8, 0
	beqz.n	a9, .L6
	.loc 1 367 0
	l32i.n	a10, a8, 4
	callx8	a9
.LVL7:
.L6:
	.loc 1 369 0
	movi.n	a8, 1
	ssl	a5
	sll	a8, a8
	l32r	a9, .LC0
	memw
	l32i	a10, a9, 88
	extui	a8, a8, 0, 8
	movi	a5, -0x100
	and	a5, a10, a5
	or	a8, a5, a8
	memw
	s32i	a8, a9, 88
.L4:
	.loc 1 372 0
	addi.n	a2, a2, 1
.LVL8:
	movi.n	a8, 0x27
	bgeu	a8, a2, .L7
.LVL9:
.L1:
	retw.n
.LFE25:
	.size	gpio_intr_service, .-gpio_intr_service
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC4:
	.string	"gpio"
	.align	4
.LC6:
	.string	"\033[0;31mE (%d) %s: %s(%d): %s\033[0m\n"
	.align	4
.LC8:
	.string	"GPIO number error"
	.section	.text.gpio_intr_enable_on_core,"ax",@progbits
	.literal_position
	.literal .LC2, GPIO_PIN_MUX_REG
	.literal .LC3, __FUNCTION__$4653
	.literal .LC5, .LC4
	.literal .LC7, .LC6
	.literal .LC9, .LC8
	.literal .LC10, GPIO
	.literal .LC11, -253953
	.literal .LC12, 32768
	.literal .LC13, 8192
	.align	4
	.type	gpio_intr_enable_on_core, @function
gpio_intr_enable_on_core:
.LFB15:
	.loc 1 137 0
.LVL10:
	entry	sp, 48
.LCFI1:
	.loc 1 138 0
	movi.n	a8, 0x27
	bltu	a8, a2, .L9
	.loc 1 138 0 is_stmt 0 discriminator 2
	l32r	a8, .LC2
	addx4	a8, a2, a8
	l32i.n	a8, a8, 0
	bnez.n	a8, .L10
.L9:
	.loc 1 138 0 discriminator 4
	call8	esp_log_timestamp
.LVL11:
	l32r	a11, .LC5
	l32r	a2, .LC9
.LVL12:
	s32i.n	a2, sp, 4
	movi	a2, 0x8a
	s32i.n	a2, sp, 0
	l32r	a15, .LC3
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC7
	movi.n	a10, 1
	call8	esp_log_write
.LVL13:
	movi	a2, 0x102
	retw.n
.LVL14:
.L10:
	.loc 1 139 0 is_stmt 1
	bnez.n	a3, .L12
	.loc 1 140 0
	addi	a2, a2, 32
.LVL15:
	l32r	a3, .LC10
.LVL16:
	addx4	a2, a2, a3
.LVL17:
	memw
	l32i.n	a8, a2, 8
	l32r	a3, .LC11
	and	a8, a8, a3
	l32r	a3, .LC12
	or	a3, a8, a3
	memw
	s32i.n	a3, a2, 8
	.loc 1 144 0
	movi.n	a2, 0
	retw.n
.LVL18:
.L12:
	.loc 1 142 0
	addi	a2, a2, 32
.LVL19:
	l32r	a3, .LC10
.LVL20:
	addx4	a2, a2, a3
.LVL21:
	memw
	l32i.n	a8, a2, 8
	l32r	a3, .LC11
	and	a8, a8, a3
	l32r	a3, .LC13
	or	a3, a8, a3
	memw
	s32i.n	a3, a2, 8
	.loc 1 144 0
	movi.n	a2, 0
	.loc 1 145 0
	retw.n
.LFE15:
	.size	gpio_intr_enable_on_core, .-gpio_intr_enable_on_core
	.section	.text.gpio_output_disable,"ax",@progbits
	.literal_position
	.literal .LC14, GPIO_PIN_MUX_REG
	.literal .LC15, __FUNCTION__$4664
	.literal .LC16, .LC4
	.literal .LC17, .LC6
	.literal .LC18, .LC8
	.literal .LC19, GPIO
	.literal .LC20, 268243276
	.align	4
	.type	gpio_output_disable, @function
gpio_output_disable:
.LFB18:
	.loc 1 160 0
.LVL22:
	entry	sp, 48
.LCFI2:
	.loc 1 161 0
	movi.n	a8, 0x27
	bltu	a8, a2, .L14
	.loc 1 161 0 is_stmt 0 discriminator 2
	l32r	a8, .LC14
	addx4	a8, a2, a8
	l32i.n	a8, a8, 0
	bnez.n	a8, .L15
.L14:
	.loc 1 161 0 discriminator 4
	call8	esp_log_timestamp
.LVL23:
	l32r	a11, .LC16
	l32r	a2, .LC18
.LVL24:
	s32i.n	a2, sp, 4
	movi	a2, 0xa1
	s32i.n	a2, sp, 0
	l32r	a15, .LC15
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC17
	movi.n	a10, 1
	call8	esp_log_write
.LVL25:
	movi	a2, 0x102
	retw.n
.LVL26:
.L15:
	.loc 1 162 0 is_stmt 1
	movi.n	a8, 0x1f
	bltu	a8, a2, .L17
	.loc 1 163 0
	movi.n	a8, 1
	ssl	a2
	sll	a8, a8
	l32r	a9, .LC19
	memw
	s32i.n	a8, a9, 40
	j	.L18
.L17:
	.loc 1 165 0
	movi.n	a8, 1
	ssl	a2
	sll	a8, a8
	l32r	a10, .LC19
	memw
	l32i.n	a11, a10, 52
	extui	a9, a8, 0, 8
	movi	a8, -0x100
	and	a8, a11, a8
	or	a8, a8, a9
	memw
	s32i.n	a8, a10, 52
.L18:
	.loc 1 169 0
	l32r	a8, .LC20
	add.n	a2, a2, a8
.LVL27:
	slli	a2, a2, 2
.LVL28:
	movi	a8, 0x100
	memw
	s32i.n	a8, a2, 0
	.loc 1 172 0
	movi.n	a2, 0
	.loc 1 173 0
	retw.n
.LFE18:
	.size	gpio_output_disable, .-gpio_output_disable
	.section	.rodata.str1.4
	.align	4
.LC25:
	.string	"GPIO output gpio_num error"
	.section	.text.gpio_output_enable,"ax",@progbits
	.literal_position
	.literal .LC21, GPIO_PIN_MUX_REG
	.literal .LC22, __FUNCTION__$4668
	.literal .LC23, .LC4
	.literal .LC24, .LC6
	.literal .LC26, .LC25
	.literal .LC27, GPIO
	.align	4
	.type	gpio_output_enable, @function
gpio_output_enable:
.LFB19:
	.loc 1 176 0
.LVL29:
	entry	sp, 48
.LCFI3:
	.loc 1 177 0
	movi.n	a8, 0x27
	bltu	a8, a2, .L20
	.loc 1 177 0 is_stmt 0 discriminator 2
	l32r	a8, .LC21
	addx4	a8, a2, a8
	l32i.n	a8, a8, 0
	beqz.n	a8, .L20
	.loc 1 177 0 discriminator 4
	movi.n	a8, 0x21
	bgeu	a8, a2, .L21
.L20:
	.loc 1 177 0 discriminator 6
	call8	esp_log_timestamp
.LVL30:
	l32r	a11, .LC23
	l32r	a2, .LC26
.LVL31:
	s32i.n	a2, sp, 4
	movi	a2, 0xb1
	s32i.n	a2, sp, 0
	l32r	a15, .LC22
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC24
	movi.n	a10, 1
	call8	esp_log_write
.LVL32:
	movi	a2, 0x102
	retw.n
.LVL33:
.L21:
	.loc 1 178 0 is_stmt 1
	movi.n	a8, 0x1f
	bltu	a8, a2, .L23
	.loc 1 179 0
	movi.n	a8, 1
	ssl	a2
	sll	a8, a8
	l32r	a9, .LC27
	memw
	s32i.n	a8, a9, 36
	j	.L24
.L23:
	.loc 1 181 0
	movi.n	a8, 1
	ssl	a2
	sll	a8, a8
	l32r	a10, .LC27
	memw
	l32i.n	a11, a10, 48
	extui	a9, a8, 0, 8
	movi	a8, -0x100
	and	a8, a11, a8
	or	a8, a8, a9
	memw
	s32i.n	a8, a10, 48
.L24:
	.loc 1 183 0
	movi.n	a13, 0
	mov.n	a12, a13
	movi	a11, 0x100
	mov.n	a10, a2
	call8	gpio_matrix_out
.LVL34:
	.loc 1 184 0
	movi.n	a2, 0
.LVL35:
	.loc 1 185 0
	retw.n
.LFE19:
	.size	gpio_output_enable, .-gpio_output_enable
	.section	.text.gpio_pullup_en,"ax",@progbits
	.literal_position
	.literal .LC28, GPIO_PIN_MUX_REG
	.literal .LC29, __FUNCTION__$4631
	.literal .LC30, .LC4
	.literal .LC31, .LC6
	.literal .LC32, .LC8
	.literal .LC33, rtc_gpio_desc
	.align	4
	.global	gpio_pullup_en
	.type	gpio_pullup_en, @function
gpio_pullup_en:
.LFB10:
	.loc 1 85 0
.LVL36:
	entry	sp, 48
.LCFI4:
	.loc 1 86 0
	movi.n	a8, 0x27
	bltu	a8, a2, .L26
	.loc 1 86 0 is_stmt 0 discriminator 2
	l32r	a8, .LC28
	addx4	a8, a2, a8
	l32i.n	a8, a8, 0
	bnez.n	a8, .L27
.L26:
	.loc 1 86 0 discriminator 4
	call8	esp_log_timestamp
.LVL37:
	l32r	a11, .LC30
	l32r	a2, .LC32
.LVL38:
	s32i.n	a2, sp, 4
	movi.n	a2, 0x56
	s32i.n	a2, sp, 0
	l32r	a15, .LC29
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC31
	movi.n	a10, 1
	call8	esp_log_write
.LVL39:
	movi	a2, 0x102
	retw.n
.LVL40:
.L27:
.LBB18:
.LBB19:
	.file 2 "C:/esp/esp-idf/components/driver/include/driver/rtc_io.h"
	.loc 2 74 0 is_stmt 1
	movi.n	a9, 0x27
	bltu	a9, a2, .L31
	addx2	a10, a2, a2
	addx4	a10, a10, a2
	slli	a9, a10, 2
	l32r	a10, .LC33
	add.n	a9, a10, a9
	l32i.n	a9, a9, 0
	bnez.n	a9, .L32
	j	.L29
.L31:
	movi.n	a9, 0
	j	.L29
.L32:
	movi.n	a9, 1
.L29:
.LBE19:
.LBE18:
	.loc 1 87 0
	beqz.n	a9, .L30
	.loc 1 88 0
	mov.n	a10, a2
	call8	rtc_gpio_pullup_en
.LVL41:
	.loc 1 92 0
	movi.n	a2, 0
.LVL42:
	retw.n
.LVL43:
.L30:
	.loc 1 90 0
	memw
	l32i.n	a9, a8, 0
	movi	a2, 0x100
.LVL44:
	or	a2, a9, a2
	memw
	s32i.n	a2, a8, 0
	.loc 1 92 0
	movi.n	a2, 0
	.loc 1 93 0
	retw.n
.LFE10:
	.size	gpio_pullup_en, .-gpio_pullup_en
	.section	.text.gpio_pullup_dis,"ax",@progbits
	.literal_position
	.literal .LC34, GPIO_PIN_MUX_REG
	.literal .LC35, __FUNCTION__$4635
	.literal .LC36, .LC4
	.literal .LC37, .LC6
	.literal .LC38, .LC8
	.literal .LC39, rtc_gpio_desc
	.align	4
	.global	gpio_pullup_dis
	.type	gpio_pullup_dis, @function
gpio_pullup_dis:
.LFB11:
	.loc 1 96 0
.LVL45:
	entry	sp, 48
.LCFI5:
	.loc 1 97 0
	movi.n	a8, 0x27
	bltu	a8, a2, .L34
	.loc 1 97 0 is_stmt 0 discriminator 2
	l32r	a8, .LC34
	addx4	a8, a2, a8
	l32i.n	a8, a8, 0
	bnez.n	a8, .L35
.L34:
	.loc 1 97 0 discriminator 4
	call8	esp_log_timestamp
.LVL46:
	l32r	a11, .LC36
	l32r	a2, .LC38
.LVL47:
	s32i.n	a2, sp, 4
	movi	a2, 0x61
	s32i.n	a2, sp, 0
	l32r	a15, .LC35
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC37
	movi.n	a10, 1
	call8	esp_log_write
.LVL48:
	movi	a2, 0x102
	retw.n
.LVL49:
.L35:
.LBB20:
.LBB21:
	.loc 2 74 0 is_stmt 1
	movi.n	a9, 0x27
	bltu	a9, a2, .L39
	addx2	a10, a2, a2
	addx4	a10, a10, a2
	slli	a9, a10, 2
	l32r	a10, .LC39
	add.n	a9, a10, a9
	l32i.n	a9, a9, 0
	bnez.n	a9, .L40
	j	.L37
.L39:
	movi.n	a9, 0
	j	.L37
.L40:
	movi.n	a9, 1
.L37:
.LBE21:
.LBE20:
	.loc 1 98 0
	beqz.n	a9, .L38
	.loc 1 99 0
	mov.n	a10, a2
	call8	rtc_gpio_pullup_dis
.LVL50:
	.loc 1 103 0
	movi.n	a2, 0
.LVL51:
	retw.n
.LVL52:
.L38:
	.loc 1 101 0
	memw
	l32i.n	a9, a8, 0
	movi	a2, -0x101
.LVL53:
	and	a2, a9, a2
	memw
	s32i.n	a2, a8, 0
	.loc 1 103 0
	movi.n	a2, 0
	.loc 1 104 0
	retw.n
.LFE11:
	.size	gpio_pullup_dis, .-gpio_pullup_dis
	.section	.text.gpio_pulldown_en,"ax",@progbits
	.literal_position
	.literal .LC40, GPIO_PIN_MUX_REG
	.literal .LC41, __FUNCTION__$4639
	.literal .LC42, .LC4
	.literal .LC43, .LC6
	.literal .LC44, .LC8
	.literal .LC45, rtc_gpio_desc
	.align	4
	.global	gpio_pulldown_en
	.type	gpio_pulldown_en, @function
gpio_pulldown_en:
.LFB12:
	.loc 1 107 0
.LVL54:
	entry	sp, 48
.LCFI6:
	.loc 1 108 0
	movi.n	a8, 0x27
	bltu	a8, a2, .L42
	.loc 1 108 0 is_stmt 0 discriminator 2
	l32r	a8, .LC40
	addx4	a8, a2, a8
	l32i.n	a8, a8, 0
	bnez.n	a8, .L43
.L42:
	.loc 1 108 0 discriminator 4
	call8	esp_log_timestamp
.LVL55:
	l32r	a11, .LC42
	l32r	a2, .LC44
.LVL56:
	s32i.n	a2, sp, 4
	movi	a2, 0x6c
	s32i.n	a2, sp, 0
	l32r	a15, .LC41
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC43
	movi.n	a10, 1
	call8	esp_log_write
.LVL57:
	movi	a2, 0x102
	retw.n
.LVL58:
.L43:
.LBB22:
.LBB23:
	.loc 2 74 0 is_stmt 1
	movi.n	a9, 0x27
	bltu	a9, a2, .L47
	addx2	a10, a2, a2
	addx4	a10, a10, a2
	slli	a9, a10, 2
	l32r	a10, .LC45
	add.n	a9, a10, a9
	l32i.n	a9, a9, 0
	bnez.n	a9, .L48
	j	.L45
.L47:
	movi.n	a9, 0
	j	.L45
.L48:
	movi.n	a9, 1
.L45:
.LBE23:
.LBE22:
	.loc 1 109 0
	beqz.n	a9, .L46
	.loc 1 110 0
	mov.n	a10, a2
	call8	rtc_gpio_pulldown_en
.LVL59:
	.loc 1 114 0
	movi.n	a2, 0
.LVL60:
	retw.n
.LVL61:
.L46:
	.loc 1 112 0
	memw
	l32i.n	a9, a8, 0
	movi	a2, 0x80
.LVL62:
	or	a2, a9, a2
	memw
	s32i.n	a2, a8, 0
	.loc 1 114 0
	movi.n	a2, 0
	.loc 1 115 0
	retw.n
.LFE12:
	.size	gpio_pulldown_en, .-gpio_pulldown_en
	.section	.text.gpio_pulldown_dis,"ax",@progbits
	.literal_position
	.literal .LC46, GPIO_PIN_MUX_REG
	.literal .LC47, __FUNCTION__$4643
	.literal .LC48, .LC4
	.literal .LC49, .LC6
	.literal .LC50, .LC8
	.literal .LC51, rtc_gpio_desc
	.align	4
	.global	gpio_pulldown_dis
	.type	gpio_pulldown_dis, @function
gpio_pulldown_dis:
.LFB13:
	.loc 1 118 0
.LVL63:
	entry	sp, 48
.LCFI7:
	.loc 1 119 0
	movi.n	a8, 0x27
	bltu	a8, a2, .L50
	.loc 1 119 0 is_stmt 0 discriminator 2
	l32r	a8, .LC46
	addx4	a8, a2, a8
	l32i.n	a8, a8, 0
	bnez.n	a8, .L51
.L50:
	.loc 1 119 0 discriminator 4
	call8	esp_log_timestamp
.LVL64:
	l32r	a11, .LC48
	l32r	a2, .LC50
.LVL65:
	s32i.n	a2, sp, 4
	movi	a2, 0x77
	s32i.n	a2, sp, 0
	l32r	a15, .LC47
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC49
	movi.n	a10, 1
	call8	esp_log_write
.LVL66:
	movi	a2, 0x102
	retw.n
.LVL67:
.L51:
.LBB24:
.LBB25:
	.loc 2 74 0 is_stmt 1
	movi.n	a9, 0x27
	bltu	a9, a2, .L55
	addx2	a10, a2, a2
	addx4	a10, a10, a2
	slli	a9, a10, 2
	l32r	a10, .LC51
	add.n	a9, a10, a9
	l32i.n	a9, a9, 0
	bnez.n	a9, .L56
	j	.L53
.L55:
	movi.n	a9, 0
	j	.L53
.L56:
	movi.n	a9, 1
.L53:
.LBE25:
.LBE24:
	.loc 1 120 0
	beqz.n	a9, .L54
	.loc 1 121 0
	mov.n	a10, a2
	call8	rtc_gpio_pulldown_dis
.LVL68:
	.loc 1 125 0
	movi.n	a2, 0
.LVL69:
	retw.n
.LVL70:
.L54:
	.loc 1 123 0
	memw
	l32i.n	a9, a8, 0
	movi	a2, -0x81
.LVL71:
	and	a2, a9, a2
	memw
	s32i.n	a2, a8, 0
	.loc 1 125 0
	movi.n	a2, 0
	.loc 1 126 0
	retw.n
.LFE13:
	.size	gpio_pulldown_dis, .-gpio_pulldown_dis
	.section	.rodata.str1.4
	.align	4
.LC57:
	.string	"GPIO interrupt type error"
	.section	.text.gpio_set_intr_type,"ax",@progbits
	.literal_position
	.literal .LC52, GPIO_PIN_MUX_REG
	.literal .LC53, __FUNCTION__$4648
	.literal .LC54, .LC4
	.literal .LC55, .LC6
	.literal .LC56, .LC8
	.literal .LC58, .LC57
	.literal .LC59, GPIO
	.align	4
	.global	gpio_set_intr_type
	.type	gpio_set_intr_type, @function
gpio_set_intr_type:
.LFB14:
	.loc 1 129 0
.LVL72:
	entry	sp, 48
.LCFI8:
	.loc 1 130 0
	movi.n	a8, 0x27
	bltu	a8, a2, .L58
	.loc 1 130 0 is_stmt 0 discriminator 2
	l32r	a8, .LC52
	addx4	a8, a2, a8
	l32i.n	a8, a8, 0
	bnez.n	a8, .L59
.L58:
	.loc 1 130 0 discriminator 4
	call8	esp_log_timestamp
.LVL73:
	l32r	a11, .LC54
	l32r	a2, .LC56
.LVL74:
	s32i.n	a2, sp, 4
	movi	a2, 0x82
	s32i.n	a2, sp, 0
	l32r	a15, .LC53
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC55
	movi.n	a10, 1
	call8	esp_log_write
.LVL75:
	movi	a2, 0x102
	retw.n
.LVL76:
.L59:
	.loc 1 131 0 is_stmt 1
	bltui	a3, 6, .L61
	.loc 1 131 0 is_stmt 0 discriminator 2
	call8	esp_log_timestamp
.LVL77:
	l32r	a11, .LC54
	l32r	a2, .LC58
.LVL78:
	s32i.n	a2, sp, 4
	movi	a2, 0x83
	s32i.n	a2, sp, 0
	l32r	a15, .LC53
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC55
	movi.n	a10, 1
	call8	esp_log_write
.LVL79:
	movi	a2, 0x102
	retw.n
.LVL80:
.L61:
	.loc 1 132 0 is_stmt 1
	addi	a2, a2, 32
.LVL81:
	l32r	a8, .LC59
	addx4	a2, a2, a8
.LVL82:
	memw
	l32i.n	a9, a2, 8
	extui	a3, a3, 0, 3
.LVL83:
	slli	a8, a3, 7
	movi	a3, -0x381
	and	a3, a9, a3
	or	a3, a3, a8
	memw
	s32i.n	a3, a2, 8
	.loc 1 133 0
	movi.n	a2, 0
	.loc 1 134 0
	retw.n
.LFE14:
	.size	gpio_set_intr_type, .-gpio_set_intr_type
	.section	.text.gpio_intr_enable,"ax",@progbits
	.align	4
	.global	gpio_intr_enable
	.type	gpio_intr_enable, @function
gpio_intr_enable:
.LFB16:
	.loc 1 148 0
.LVL84:
	entry	sp, 32
.LCFI9:
.LBB26:
.LBB27:
	.file 3 "C:/esp/esp-idf/components/freertos/include/freertos/portable.h"
	.loc 3 202 0
#APP
# 202 "C:/esp/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a11
 extui a11,a11,13,1
# 0 "" 2
.LVL85:
#NO_APP
.LBE27:
.LBE26:
	.loc 1 149 0
	mov.n	a10, a2
	call8	gpio_intr_enable_on_core
.LVL86:
	.loc 1 150 0
	mov.n	a2, a10
.LVL87:
	retw.n
.LFE16:
	.size	gpio_intr_enable, .-gpio_intr_enable
	.section	.text.gpio_intr_disable,"ax",@progbits
	.literal_position
	.literal .LC60, GPIO_PIN_MUX_REG
	.literal .LC61, __FUNCTION__$4660
	.literal .LC62, .LC4
	.literal .LC63, .LC6
	.literal .LC64, .LC8
	.literal .LC65, GPIO
	.literal .LC66, -253953
	.align	4
	.global	gpio_intr_disable
	.type	gpio_intr_disable, @function
gpio_intr_disable:
.LFB17:
	.loc 1 153 0
.LVL88:
	entry	sp, 48
.LCFI10:
	.loc 1 154 0
	movi.n	a8, 0x27
	bltu	a8, a2, .L64
	.loc 1 154 0 is_stmt 0 discriminator 2
	l32r	a8, .LC60
	addx4	a8, a2, a8
	l32i.n	a8, a8, 0
	bnez.n	a8, .L65
.L64:
	.loc 1 154 0 discriminator 4
	call8	esp_log_timestamp
.LVL89:
	l32r	a11, .LC62
	l32r	a2, .LC64
.LVL90:
	s32i.n	a2, sp, 4
	movi	a2, 0x9a
	s32i.n	a2, sp, 0
	l32r	a15, .LC61
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC63
	movi.n	a10, 1
	call8	esp_log_write
.LVL91:
	movi	a2, 0x102
	retw.n
.LVL92:
.L65:
	.loc 1 155 0 is_stmt 1
	addi	a2, a2, 32
.LVL93:
	l32r	a8, .LC65
	addx4	a2, a2, a8
.LVL94:
	memw
	l32i.n	a9, a2, 8
	l32r	a8, .LC66
	and	a8, a9, a8
	memw
	s32i.n	a8, a2, 8
	.loc 1 156 0
	movi.n	a2, 0
	.loc 1 157 0
	retw.n
.LFE17:
	.size	gpio_intr_disable, .-gpio_intr_disable
	.section	.text.gpio_set_level,"ax",@progbits
	.literal_position
	.literal .LC67, GPIO_PIN_MUX_REG
	.literal .LC68, __FUNCTION__$4673
	.literal .LC69, .LC4
	.literal .LC70, .LC6
	.literal .LC71, .LC25
	.literal .LC72, GPIO
	.align	4
	.global	gpio_set_level
	.type	gpio_set_level, @function
gpio_set_level:
.LFB20:
	.loc 1 188 0
.LVL95:
	entry	sp, 48
.LCFI11:
	.loc 1 189 0
	movi.n	a8, 0x27
	bltu	a8, a2, .L68
	.loc 1 189 0 is_stmt 0 discriminator 2
	l32r	a8, .LC67
	addx4	a8, a2, a8
	l32i.n	a8, a8, 0
	beqz.n	a8, .L68
	.loc 1 189 0 discriminator 4
	movi.n	a8, 0x21
	bgeu	a8, a2, .L69
.L68:
	.loc 1 189 0 discriminator 6
	call8	esp_log_timestamp
.LVL96:
	l32r	a11, .LC69
	l32r	a2, .LC71
.LVL97:
	s32i.n	a2, sp, 4
	movi	a2, 0xbd
	s32i.n	a2, sp, 0
	l32r	a15, .LC68
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC70
	movi.n	a10, 1
	call8	esp_log_write
.LVL98:
	movi	a2, 0x102
	retw.n
.LVL99:
.L69:
	.loc 1 190 0 is_stmt 1
	beqz.n	a3, .L71
	.loc 1 191 0
	movi.n	a3, 0x1f
.LVL100:
	bltu	a3, a2, .L72
	.loc 1 192 0
	movi.n	a3, 1
	ssl	a2
	sll	a2, a3
.LVL101:
	l32r	a3, .LC72
	memw
	s32i.n	a2, a3, 8
	.loc 1 203 0
	movi.n	a2, 0
	retw.n
.LVL102:
.L72:
	.loc 1 194 0
	movi.n	a3, 1
	ssl	a2
	sll	a2, a3
.LVL103:
	l32r	a8, .LC72
	memw
	l32i.n	a9, a8, 20
	extui	a2, a2, 0, 8
	movi	a3, -0x100
	and	a3, a9, a3
	or	a2, a3, a2
	memw
	s32i.n	a2, a8, 20
	.loc 1 203 0
	movi.n	a2, 0
	retw.n
.LVL104:
.L71:
	.loc 1 197 0
	movi.n	a3, 0x1f
.LVL105:
	bltu	a3, a2, .L73
	.loc 1 198 0
	movi.n	a3, 1
	ssl	a2
	sll	a2, a3
.LVL106:
	l32r	a3, .LC72
	memw
	s32i.n	a2, a3, 12
	.loc 1 203 0
	movi.n	a2, 0
	retw.n
.LVL107:
.L73:
	.loc 1 200 0
	movi.n	a3, 1
	ssl	a2
	sll	a2, a3
.LVL108:
	l32r	a8, .LC72
	memw
	l32i.n	a9, a8, 24
	extui	a3, a2, 0, 8
	movi	a2, -0x100
	and	a2, a9, a2
	or	a2, a2, a3
	memw
	s32i.n	a2, a8, 24
	.loc 1 203 0
	movi.n	a2, 0
	.loc 1 204 0
	retw.n
.LFE20:
	.size	gpio_set_level, .-gpio_set_level
	.section	.text.gpio_get_level,"ax",@progbits
	.literal_position
	.literal .LC73, GPIO
	.align	4
	.global	gpio_get_level
	.type	gpio_get_level, @function
gpio_get_level:
.LFB21:
	.loc 1 207 0
.LVL109:
	entry	sp, 32
.LCFI12:
	.loc 1 208 0
	movi.n	a8, 0x1f
	bltu	a8, a2, .L75
	.loc 1 209 0
	l32r	a8, .LC73
	memw
	l32i.n	a8, a8, 60
	ssr	a2
	srl	a2, a8
.LVL110:
	extui	a2, a2, 0, 1
	retw.n
.LVL111:
.L75:
	.loc 1 211 0
	l32r	a8, .LC73
	memw
	l32i	a8, a8, 64
	extui	a8, a8, 0, 8
	ssr	a2
	sra	a2, a8
.LVL112:
	extui	a2, a2, 0, 1
	.loc 1 213 0
	retw.n
.LFE21:
	.size	gpio_get_level, .-gpio_get_level
	.section	.rodata.str1.4
	.align	4
.LC79:
	.string	"GPIO pull mode error"
	.align	4
.LC81:
	.string	"\033[0;31mE (%d) %s: Unknown pull up/down mode,gpio_num=%u,pull=%u\033[0m\n"
	.section	.text.gpio_set_pull_mode,"ax",@progbits
	.literal_position
	.literal .LC74, GPIO_PIN_MUX_REG
	.literal .LC75, __FUNCTION__$4681
	.literal .LC76, .LC4
	.literal .LC77, .LC6
	.literal .LC78, .LC8
	.literal .LC80, .LC79
	.literal .LC82, .LC81
	.align	4
	.global	gpio_set_pull_mode
	.type	gpio_set_pull_mode, @function
gpio_set_pull_mode:
.LFB22:
	.loc 1 216 0
.LVL113:
	entry	sp, 48
.LCFI13:
	.loc 1 217 0
	movi.n	a8, 0x27
	bltu	a8, a2, .L78
	.loc 1 217 0 is_stmt 0 discriminator 2
	l32r	a8, .LC74
	addx4	a8, a2, a8
	l32i.n	a8, a8, 0
	bnez.n	a8, .L79
.L78:
	.loc 1 217 0 discriminator 4
	call8	esp_log_timestamp
.LVL114:
	l32r	a11, .LC76
	l32r	a2, .LC78
.LVL115:
	s32i.n	a2, sp, 4
	movi	a2, 0xd9
	s32i.n	a2, sp, 0
	l32r	a15, .LC75
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC77
	movi.n	a10, 1
	call8	esp_log_write
.LVL116:
	movi	a2, 0x102
	retw.n
.LVL117:
.L79:
	.loc 1 218 0 is_stmt 1
	bltui	a3, 4, .L81
	.loc 1 218 0 is_stmt 0 discriminator 2
	call8	esp_log_timestamp
.LVL118:
	l32r	a11, .LC76
	l32r	a2, .LC80
.LVL119:
	s32i.n	a2, sp, 4
	movi	a2, 0xda
	s32i.n	a2, sp, 0
	l32r	a15, .LC75
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC77
	movi.n	a10, 1
	call8	esp_log_write
.LVL120:
	movi	a2, 0x102
	retw.n
.LVL121:
.L81:
	.loc 1 220 0 is_stmt 1
	beqi	a3, 1, .L83
	beqz.n	a3, .L84
	beqi	a3, 2, .L85
	beqi	a3, 3, .L86
	j	.L87
.L84:
	.loc 1 222 0
	mov.n	a10, a2
	call8	gpio_pulldown_dis
.LVL122:
	.loc 1 223 0
	mov.n	a10, a2
	call8	gpio_pullup_en
.LVL123:
	.loc 1 219 0
	movi.n	a2, 0
.LVL124:
	.loc 1 224 0
	retw.n
.LVL125:
.L83:
	.loc 1 226 0
	mov.n	a10, a2
	call8	gpio_pulldown_en
.LVL126:
	.loc 1 227 0
	mov.n	a10, a2
	call8	gpio_pullup_dis
.LVL127:
	.loc 1 219 0
	movi.n	a2, 0
.LVL128:
	.loc 1 228 0
	retw.n
.LVL129:
.L85:
	.loc 1 230 0
	mov.n	a10, a2
	call8	gpio_pulldown_en
.LVL130:
	.loc 1 231 0
	mov.n	a10, a2
	call8	gpio_pullup_en
.LVL131:
	.loc 1 219 0
	movi.n	a2, 0
.LVL132:
	.loc 1 232 0
	retw.n
.LVL133:
.L86:
	.loc 1 234 0
	mov.n	a10, a2
	call8	gpio_pulldown_dis
.LVL134:
	.loc 1 235 0
	mov.n	a10, a2
	call8	gpio_pullup_dis
.LVL135:
	.loc 1 219 0
	movi.n	a2, 0
.LVL136:
	.loc 1 236 0
	retw.n
.LVL137:
.L87:
	.loc 1 238 0 discriminator 1
	call8	esp_log_timestamp
.LVL138:
	l32r	a11, .LC76
	s32i.n	a3, sp, 0
	mov.n	a15, a2
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC82
	movi.n	a10, 1
	call8	esp_log_write
.LVL139:
	.loc 1 239 0 discriminator 1
	movi	a2, 0x102
.LVL140:
	.loc 1 243 0 discriminator 1
	retw.n
.LFE22:
	.size	gpio_set_pull_mode, .-gpio_set_pull_mode
	.section	.rodata.str1.4
	.align	4
.LC88:
	.string	"\033[0;31mE (%d) %s: io_num=%d can only be input\033[0m\n"
	.section	.text.gpio_set_direction,"ax",@progbits
	.literal_position
	.literal .LC83, GPIO_PIN_MUX_REG
	.literal .LC84, __FUNCTION__$4693
	.literal .LC85, .LC4
	.literal .LC86, .LC6
	.literal .LC87, .LC8
	.literal .LC89, .LC88
	.literal .LC90, GPIO
	.align	4
	.global	gpio_set_direction
	.type	gpio_set_direction, @function
gpio_set_direction:
.LFB23:
	.loc 1 246 0
.LVL141:
	entry	sp, 48
.LCFI14:
	.loc 1 247 0
	movi.n	a8, 0x27
	bltu	a8, a2, .L89
	.loc 1 247 0 is_stmt 0 discriminator 2
	l32r	a8, .LC83
	addx4	a8, a2, a8
	l32i.n	a8, a8, 0
	bnez.n	a8, .L90
.L89:
	.loc 1 247 0 discriminator 4
	call8	esp_log_timestamp
.LVL142:
	l32r	a11, .LC85
	l32r	a2, .LC87
.LVL143:
	s32i.n	a2, sp, 4
	movi	a2, 0xf7
	s32i.n	a2, sp, 0
	l32r	a15, .LC84
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC86
	movi.n	a10, 1
	call8	esp_log_write
.LVL144:
	movi	a2, 0x102
	retw.n
.LVL145:
.L90:
	.loc 1 248 0 is_stmt 1
	movi.n	a9, 0x21
	bgeu	a9, a2, .L92
	.loc 1 248 0 is_stmt 0 discriminator 1
	bbci	a3, 1, .L92
	.loc 1 249 0 is_stmt 1 discriminator 1
	call8	esp_log_timestamp
.LVL146:
	l32r	a11, .LC85
	mov.n	a15, a2
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC89
	movi.n	a10, 1
	call8	esp_log_write
.LVL147:
	.loc 1 250 0 discriminator 1
	movi	a2, 0x102
.LVL148:
	retw.n
.LVL149:
.L92:
	.loc 1 253 0
	bbci	a3, 0, .L93
	.loc 1 254 0
	memw
	l32i.n	a10, a8, 0
	movi	a9, 0x200
	or	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	j	.L94
.L93:
	.loc 1 256 0
	memw
	l32i.n	a10, a8, 0
	movi	a9, -0x201
	and	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
.L94:
	.loc 1 258 0
	bbci	a3, 1, .L95
	.loc 1 259 0
	mov.n	a10, a2
	call8	gpio_output_enable
.LVL150:
	j	.L96
.L95:
	.loc 1 261 0
	mov.n	a10, a2
	call8	gpio_output_disable
.LVL151:
.L96:
	.loc 1 263 0
	bbci	a3, 2, .L97
	.loc 1 264 0
	addi	a2, a2, 32
.LVL152:
	l32r	a3, .LC90
.LVL153:
	addx4	a2, a2, a3
.LVL154:
	memw
	l32i.n	a8, a2, 8
	movi.n	a3, 4
	or	a3, a8, a3
	memw
	s32i.n	a3, a2, 8
	.loc 1 268 0
	movi.n	a2, 0
	retw.n
.LVL155:
.L97:
	.loc 1 266 0
	addi	a2, a2, 32
.LVL156:
	l32r	a3, .LC90
.LVL157:
	addx4	a2, a2, a3
.LVL158:
	memw
	l32i.n	a8, a2, 8
	movi.n	a3, -5
	and	a3, a8, a3
	memw
	s32i.n	a3, a2, 8
	.loc 1 268 0
	movi.n	a2, 0
	.loc 1 269 0
	retw.n
.LFE23:
	.size	gpio_set_direction, .-gpio_set_direction
	.section	.rodata.str1.4
	.align	4
.LC93:
	.string	"\033[0;31mE (%d) %s: GPIO_PIN mask error \033[0m\n"
	.align	4
.LC95:
	.string	"\033[0;31mE (%d) %s: GPIO34-39 can only be used as input mode\033[0m\n"
	.align	4
.LC100:
	.string	"\033[0;32mI (%d) %s: GPIO[%d]| InputEn: %d| OutputEn: %d| OpenDrain: %d| Pullup: %d| Pulldown: %d| Intr:%d \033[0m\n"
	.section	.text.gpio_config,"ax",@progbits
	.literal_position
	.literal .LC92, .LC4
	.literal .LC94, .LC93
	.literal .LC96, .LC95
	.literal .LC97, GPIO_PIN_MUX_REG
	.literal .LC98, rtc_gpio_desc
	.literal .LC99, GPIO
	.literal .LC101, .LC100
	.literal .LC102, -28673
	.literal .LC103, 8192
	.align	4
	.global	gpio_config
	.type	gpio_config, @function
gpio_config:
.LFB24:
	.loc 1 272 0
.LVL159:
	entry	sp, 80
.LCFI15:
	.loc 1 273 0
	l32i.n	a6, a2, 0
	l32i.n	a5, a2, 4
.LVL160:
	.loc 1 281 0
	addi.n	a4, a6, -1
	movi.n	a3, 1
	bltu	a4, a6, .L99
	movi.n	a3, 0
.L99:
	addi.n	a7, a5, -1
	add.n	a3, a3, a7
	movi	a7, 0xff
	bltu	a7, a3, .L125
	bne	a3, a7, .L100
	movi.n	a3, -2
	bgeu	a3, a4, .L100
.L125:
	.loc 1 282 0 discriminator 1
	call8	esp_log_timestamp
.LVL161:
	l32r	a11, .LC92
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC94
	movi.n	a10, 1
	call8	esp_log_write
.LVL162:
	.loc 1 283 0 discriminator 1
	movi	a2, 0x102
.LVL163:
	retw.n
.LVL164:
.L100:
	.loc 1 285 0
	l32i.n	a3, a2, 8
	bbci	a3, 1, .L121
	.loc 1 287 0
	movi	a3, 0xfc
	bnone	a3, a5, .L122
	.loc 1 288 0
	call8	esp_log_timestamp
.LVL165:
	l32r	a11, .LC92
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC96
	movi.n	a10, 1
	call8	esp_log_write
.LVL166:
	.loc 1 289 0
	movi	a2, 0x102
.LVL167:
	retw.n
.LVL168:
.L121:
	movi.n	a7, 0
	s32i.n	a7, sp, 44
	s32i.n	a7, sp, 40
	s32i.n	a7, sp, 36
	s32i.n	a7, sp, 32
	mov.n	a3, a7
	j	.L103
.L122:
	movi.n	a7, 0
	s32i.n	a7, sp, 44
	s32i.n	a7, sp, 40
	s32i.n	a7, sp, 36
	s32i.n	a7, sp, 32
	mov.n	a3, a7
.LVL169:
.L103:
	.loc 1 293 0
	l32r	a4, .LC97
	addx4	a4, a3, a4
	l32i.n	a4, a4, 0
.LVL170:
	.loc 1 294 0
	movi.n	a10, 0x20
	and	a10, a3, a10
	slli	a9, a5, 1
	movi.n	a8, -1
	xor	a8, a3, a8
	ssl	a8
	sll	a9, a9
	ssr	a3
	srl	a8, a6
	or	a8, a9, a8
	ssr	a3
	srl	a9, a5
	movnez	a8, a9, a10
	movi.n	a11, 0
	bbc	a8, a11, .L105
	beq	a4, a11, .L105
.LVL171:
.LBB28:
.LBB29:
	.loc 2 74 0
	movi.n	a8, 0x27
	bltu	a8, a3, .L123
	addx2	a9, a3, a3
	addx4	a9, a9, a3
	slli	a8, a9, 2
	l32r	a9, .LC98
	add.n	a8, a9, a8
	l32i.n	a8, a8, 0
	bne	a8, a11, .L124
	mov.n	a8, a11
	j	.L107
.L123:
	movi.n	a8, 0
	j	.L107
.L124:
	movi.n	a8, 1
.L107:
.LBE29:
.LBE28:
	.loc 1 295 0
	beqz.n	a8, .L108
	.loc 1 296 0
	mov.n	a10, a3
	call8	rtc_gpio_deinit
.LVL172:
.L108:
	.loc 1 298 0
	l32i.n	a8, a2, 8
	bbci	a8, 0, .L109
.LVL173:
	.loc 1 300 0
	memw
	l32i.n	a9, a4, 0
	movi	a8, 0x200
	or	a8, a9, a8
	memw
	s32i.n	a8, a4, 0
	.loc 1 299 0
	movi.n	a8, 1
	s32i.n	a8, sp, 32
	j	.L110
.LVL174:
.L109:
	.loc 1 302 0
	memw
	l32i.n	a9, a4, 0
	movi	a8, -0x201
	and	a8, a9, a8
	memw
	s32i.n	a8, a4, 0
.LVL175:
.L110:
	.loc 1 304 0
	l32i.n	a8, a2, 8
	bbci	a8, 2, .L111
.LVL176:
	.loc 1 306 0
	addi	a8, a3, 32
	l32r	a9, .LC99
	addx4	a8, a8, a9
	memw
	l32i.n	a10, a8, 8
	movi.n	a9, 4
	or	a9, a10, a9
	memw
	s32i.n	a9, a8, 8
	.loc 1 305 0
	movi.n	a8, 1
	s32i.n	a8, sp, 40
	j	.L112
.LVL177:
.L111:
	.loc 1 308 0
	addi	a8, a3, 32
	l32r	a9, .LC99
	addx4	a8, a8, a9
	memw
	l32i.n	a10, a8, 8
	movi.n	a9, -5
	and	a9, a10, a9
	memw
	s32i.n	a9, a8, 8
.LVL178:
.L112:
	.loc 1 310 0
	l32i.n	a8, a2, 8
	bbci	a8, 1, .L113
.LVL179:
	.loc 1 312 0
	mov.n	a10, a3
	call8	gpio_output_enable
.LVL180:
	.loc 1 311 0
	movi.n	a8, 1
	s32i.n	a8, sp, 36
	j	.L114
.LVL181:
.L113:
	.loc 1 314 0
	mov.n	a10, a3
	call8	gpio_output_disable
.LVL182:
.L114:
	.loc 1 316 0
	l32i.n	a8, a2, 12
	beqz.n	a8, .L115
.LVL183:
	.loc 1 318 0
	mov.n	a10, a3
	call8	gpio_pullup_en
.LVL184:
	.loc 1 317 0
	movi.n	a8, 1
	s32i.n	a8, sp, 44
	j	.L116
.LVL185:
.L115:
	.loc 1 320 0
	mov.n	a10, a3
	call8	gpio_pullup_dis
.LVL186:
.L116:
	.loc 1 322 0
	l32i.n	a8, a2, 16
	beqz.n	a8, .L117
.LVL187:
	.loc 1 324 0
	mov.n	a10, a3
	call8	gpio_pulldown_en
.LVL188:
	.loc 1 323 0
	movi.n	a7, 1
	j	.L118
.LVL189:
.L117:
	.loc 1 326 0
	mov.n	a10, a3
	call8	gpio_pulldown_dis
.LVL190:
.L118:
	.loc 1 328 0 discriminator 1
	call8	esp_log_timestamp
.LVL191:
	l32i.n	a8, a2, 20
	l32r	a11, .LC92
	s32i.n	a8, sp, 20
	s32i.n	a7, sp, 16
	l32i.n	a8, sp, 44
	s32i.n	a8, sp, 12
	l32i.n	a8, sp, 40
	s32i.n	a8, sp, 8
	l32i.n	a8, sp, 36
	s32i.n	a8, sp, 4
	l32i.n	a8, sp, 32
	s32i.n	a8, sp, 0
	mov.n	a15, a3
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC101
	movi.n	a10, 3
	call8	esp_log_write
.LVL192:
	.loc 1 329 0 discriminator 1
	l32i.n	a11, a2, 20
	mov.n	a10, a3
	call8	gpio_set_intr_type
.LVL193:
	.loc 1 330 0 discriminator 1
	l32i.n	a8, a2, 20
	beqz.n	a8, .L119
	.loc 1 331 0
	mov.n	a10, a3
	call8	gpio_intr_enable
.LVL194:
	j	.L120
.L119:
	.loc 1 333 0
	mov.n	a10, a3
	call8	gpio_intr_disable
.LVL195:
.L120:
	.loc 1 335 0
	memw
	l32i.n	a9, a4, 0
	l32r	a8, .LC102
	and	a9, a9, a8
	l32r	a8, .LC103
	or	a8, a9, a8
	memw
	s32i.n	a8, a4, 0
.LVL196:
.L105:
	.loc 1 337 0
	addi.n	a3, a3, 1
.LVL197:
	.loc 1 338 0
	movi.n	a4, 0x27
.LVL198:
	bgeu	a4, a3, .L103
	.loc 1 339 0
	movi.n	a2, 0
.LVL199:
	.loc 1 340 0
	retw.n
.LFE24:
	.size	gpio_config, .-gpio_config
	.section	.rodata.str1.4
	.align	4
.LC108:
	.string	"GPIO isr service is not installed, call gpio_install_isr_service() first"
	.section	.text.gpio_isr_handler_add,"ax",@progbits
	.literal_position
	.literal .LC104, gpio_isr_func
	.literal .LC105, __FUNCTION__$4721
	.literal .LC106, .LC4
	.literal .LC107, .LC6
	.literal .LC109, .LC108
	.literal .LC110, GPIO_PIN_MUX_REG
	.literal .LC111, .LC8
	.literal .LC112, gpio_spinlock
	.literal .LC113, gpio_isr_handle
	.align	4
	.global	gpio_isr_handler_add
	.type	gpio_isr_handler_add, @function
gpio_isr_handler_add:
.LFB26:
	.loc 1 376 0
.LVL200:
	entry	sp, 48
.LCFI16:
	.loc 1 377 0
	l32r	a8, .LC104
	l32i.n	a8, a8, 0
	bnez.n	a8, .L127
	.loc 1 377 0 discriminator 2
	call8	esp_log_timestamp
.LVL201:
	l32r	a11, .LC106
	l32r	a2, .LC109
.LVL202:
	s32i.n	a2, sp, 4
	movi	a2, 0x179
	s32i.n	a2, sp, 0
	l32r	a15, .LC105
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC107
	movi.n	a10, 1
	call8	esp_log_write
.LVL203:
	movi	a2, 0x103
	retw.n
.LVL204:
.L127:
	.loc 1 378 0
	movi.n	a8, 0x27
	bltu	a8, a2, .L129
	.loc 1 378 0 is_stmt 0 discriminator 2
	l32r	a8, .LC110
	addx4	a8, a2, a8
	l32i.n	a8, a8, 0
	bnez.n	a8, .L130
.L129:
	.loc 1 378 0 discriminator 4
	call8	esp_log_timestamp
.LVL205:
	l32r	a11, .LC106
	l32r	a2, .LC111
.LVL206:
	s32i.n	a2, sp, 4
	movi	a2, 0x17a
	s32i.n	a2, sp, 0
	l32r	a15, .LC105
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC107
	movi.n	a10, 1
	call8	esp_log_write
.LVL207:
	movi	a2, 0x102
	retw.n
.LVL208:
.L130:
	.loc 1 379 0 is_stmt 1
	l32r	a10, .LC112
	call8	vTaskEnterCritical
.LVL209:
	.loc 1 380 0
	mov.n	a10, a2
	call8	gpio_intr_disable
.LVL210:
	.loc 1 381 0
	l32r	a8, .LC104
	l32i.n	a8, a8, 0
	beqz.n	a8, .L131
	.loc 1 382 0
	addx8	a8, a2, a8
	s32i.n	a3, a8, 0
	.loc 1 383 0
	s32i.n	a4, a8, 4
.L131:
	.loc 1 385 0
	l32r	a3, .LC113
.LVL211:
	l32i.n	a10, a3, 0
	call8	esp_intr_get_cpu
.LVL212:
	mov.n	a11, a10
	mov.n	a10, a2
	call8	gpio_intr_enable_on_core
.LVL213:
	.loc 1 386 0
	l32r	a10, .LC112
	call8	vTaskExitCritical
.LVL214:
	.loc 1 387 0
	movi.n	a2, 0
.LVL215:
	.loc 1 388 0
	retw.n
.LFE26:
	.size	gpio_isr_handler_add, .-gpio_isr_handler_add
	.section	.text.gpio_isr_handler_remove,"ax",@progbits
	.literal_position
	.literal .LC114, gpio_isr_func
	.literal .LC115, __FUNCTION__$4725
	.literal .LC116, .LC4
	.literal .LC117, .LC6
	.literal .LC118, .LC108
	.literal .LC119, GPIO_PIN_MUX_REG
	.literal .LC120, .LC8
	.literal .LC121, gpio_spinlock
	.align	4
	.global	gpio_isr_handler_remove
	.type	gpio_isr_handler_remove, @function
gpio_isr_handler_remove:
.LFB27:
	.loc 1 391 0
.LVL216:
	entry	sp, 48
.LCFI17:
	.loc 1 392 0
	l32r	a8, .LC114
	l32i.n	a8, a8, 0
	bnez.n	a8, .L133
	.loc 1 392 0 discriminator 2
	call8	esp_log_timestamp
.LVL217:
	l32r	a11, .LC116
	l32r	a2, .LC118
.LVL218:
	s32i.n	a2, sp, 4
	movi	a2, 0x188
	s32i.n	a2, sp, 0
	l32r	a15, .LC115
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC117
	movi.n	a10, 1
	call8	esp_log_write
.LVL219:
	movi	a2, 0x103
	retw.n
.LVL220:
.L133:
	.loc 1 393 0
	movi.n	a8, 0x27
	bltu	a8, a2, .L135
	.loc 1 393 0 is_stmt 0 discriminator 2
	l32r	a8, .LC119
	addx4	a8, a2, a8
	l32i.n	a8, a8, 0
	bnez.n	a8, .L136
.L135:
	.loc 1 393 0 discriminator 4
	call8	esp_log_timestamp
.LVL221:
	l32r	a11, .LC116
	l32r	a2, .LC120
.LVL222:
	s32i.n	a2, sp, 4
	movi	a2, 0x189
	s32i.n	a2, sp, 0
	l32r	a15, .LC115
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC117
	movi.n	a10, 1
	call8	esp_log_write
.LVL223:
	movi	a2, 0x102
	retw.n
.LVL224:
.L136:
	.loc 1 394 0 is_stmt 1
	l32r	a10, .LC121
	call8	vTaskEnterCritical
.LVL225:
	.loc 1 395 0
	mov.n	a10, a2
	call8	gpio_intr_disable
.LVL226:
	.loc 1 396 0
	l32r	a8, .LC114
	l32i.n	a8, a8, 0
	beqz.n	a8, .L137
	.loc 1 397 0
	addx8	a2, a2, a8
.LVL227:
	movi.n	a8, 0
	s32i.n	a8, a2, 0
	.loc 1 398 0
	s32i.n	a8, a2, 4
.L137:
	.loc 1 400 0
	l32r	a10, .LC121
	call8	vTaskExitCritical
.LVL228:
	.loc 1 401 0
	movi.n	a2, 0
	.loc 1 402 0
	retw.n
.LFE27:
	.size	gpio_isr_handler_remove, .-gpio_isr_handler_remove
	.section	.text.gpio_uninstall_isr_service,"ax",@progbits
	.literal_position
	.literal .LC122, gpio_isr_func
	.literal .LC123, gpio_spinlock
	.literal .LC124, gpio_isr_handle
	.align	4
	.global	gpio_uninstall_isr_service
	.type	gpio_uninstall_isr_service, @function
gpio_uninstall_isr_service:
.LFB29:
	.loc 1 420 0
	entry	sp, 32
.LCFI18:
	.loc 1 421 0
	l32r	a2, .LC122
	l32i.n	a2, a2, 0
	beqz.n	a2, .L138
	.loc 1 424 0
	l32r	a2, .LC123
	mov.n	a10, a2
	call8	vTaskEnterCritical
.LVL229:
	.loc 1 425 0
	l32r	a3, .LC124
	l32i.n	a10, a3, 0
	call8	esp_intr_free
.LVL230:
	.loc 1 426 0
	l32r	a3, .LC122
	l32i.n	a10, a3, 0
	call8	free
.LVL231:
	.loc 1 427 0
	movi.n	a8, 0
	s32i.n	a8, a3, 0
	.loc 1 428 0
	mov.n	a10, a2
	call8	vTaskExitCritical
.LVL232:
.L138:
	retw.n
.LFE29:
	.size	gpio_uninstall_isr_service, .-gpio_uninstall_isr_service
	.section	.rodata.str1.4
	.align	4
.LC128:
	.string	"GPIO ISR null"
	.section	.text.gpio_isr_register,"ax",@progbits
	.literal_position
	.literal .LC125, __FUNCTION__$4740
	.literal .LC126, .LC4
	.literal .LC127, .LC6
	.literal .LC129, .LC128
	.align	4
	.global	gpio_isr_register
	.type	gpio_isr_register, @function
gpio_isr_register:
.LFB30:
	.loc 1 433 0
.LVL233:
	entry	sp, 48
.LCFI19:
	.loc 1 434 0
	bnez.n	a2, .L141
	.loc 1 434 0 is_stmt 0 discriminator 2
	call8	esp_log_timestamp
.LVL234:
	l32r	a11, .LC126
	l32r	a2, .LC129
.LVL235:
	s32i.n	a2, sp, 4
	movi	a2, 0x1b2
	s32i.n	a2, sp, 0
	l32r	a15, .LC125
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC127
	movi.n	a10, 1
	call8	esp_log_write
.LVL236:
	movi	a2, 0x102
	retw.n
.LVL237:
.L141:
	.loc 1 435 0 is_stmt 1
	mov.n	a14, a5
	mov.n	a13, a3
	mov.n	a12, a2
	mov.n	a11, a4
	movi.n	a10, 0x16
	call8	esp_intr_alloc
.LVL238:
	mov.n	a2, a10
.LVL239:
	.loc 1 436 0
	retw.n
.LFE30:
	.size	gpio_isr_register, .-gpio_isr_register
	.section	.rodata.str1.4
	.align	4
.LC134:
	.string	"GPIO isr service already installed"
	.section	.text.gpio_install_isr_service,"ax",@progbits
	.literal_position
	.literal .LC130, gpio_isr_func
	.literal .LC131, __FUNCTION__$4729
	.literal .LC132, .LC4
	.literal .LC133, .LC6
	.literal .LC135, .LC134
	.literal .LC136, gpio_spinlock
	.literal .LC137, gpio_isr_handle
	.literal .LC138, gpio_intr_service
	.align	4
	.global	gpio_install_isr_service
	.type	gpio_install_isr_service, @function
gpio_install_isr_service:
.LFB28:
	.loc 1 405 0
.LVL240:
	entry	sp, 48
.LCFI20:
	.loc 1 406 0
	l32r	a8, .LC130
	l32i.n	a8, a8, 0
	beqz.n	a8, .L144
	.loc 1 406 0 discriminator 2
	call8	esp_log_timestamp
.LVL241:
	l32r	a11, .LC132
	l32r	a2, .LC135
.LVL242:
	s32i.n	a2, sp, 4
	movi	a2, 0x196
	s32i.n	a2, sp, 0
	l32r	a15, .LC131
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC133
	movi.n	a10, 1
	call8	esp_log_write
.LVL243:
	movi.n	a2, -1
	retw.n
.LVL244:
.L144:
	.loc 1 408 0
	l32r	a10, .LC136
	call8	vTaskEnterCritical
.LVL245:
	.loc 1 409 0
	movi.n	a11, 8
	movi.n	a10, 0x28
	call8	calloc
.LVL246:
	l32r	a8, .LC130
	s32i.n	a10, a8, 0
	.loc 1 410 0
	beqz.n	a10, .L147
	.loc 1 413 0
	l32r	a13, .LC137
	mov.n	a12, a2
	movi.n	a11, 0
	l32r	a10, .LC138
	call8	gpio_isr_register
.LVL247:
	mov.n	a2, a10
.LVL248:
	j	.L146
.LVL249:
.L147:
	.loc 1 411 0
	movi	a2, 0x101
.LVL250:
.L146:
	.loc 1 415 0
	l32r	a10, .LC136
	call8	vTaskExitCritical
.LVL251:
	.loc 1 417 0
	retw.n
.LFE28:
	.size	gpio_install_isr_service, .-gpio_install_isr_service
	.section	.rodata.str1.4
	.align	4
.LC145:
	.string	"\033[0;31mE (%d) %s: GPIO wakeup only support Level mode,but edge mode set. gpio_num:%u\033[0m\n"
	.section	.text.gpio_wakeup_enable,"ax",@progbits
	.literal_position
	.literal .LC139, GPIO_PIN_MUX_REG
	.literal .LC140, __FUNCTION__$4745
	.literal .LC141, .LC4
	.literal .LC142, .LC6
	.literal .LC143, .LC8
	.literal .LC144, GPIO
	.literal .LC146, .LC145
	.align	4
	.global	gpio_wakeup_enable
	.type	gpio_wakeup_enable, @function
gpio_wakeup_enable:
.LFB31:
	.loc 1 440 0
.LVL252:
	entry	sp, 48
.LCFI21:
	.loc 1 441 0
	movi.n	a8, 0x27
	bltu	a8, a2, .L149
	.loc 1 441 0 is_stmt 0 discriminator 2
	l32r	a8, .LC139
	addx4	a8, a2, a8
	l32i.n	a8, a8, 0
	bnez.n	a8, .L150
.L149:
	.loc 1 441 0 discriminator 4
	call8	esp_log_timestamp
.LVL253:
	l32r	a11, .LC141
	l32r	a2, .LC143
.LVL254:
	s32i.n	a2, sp, 4
	movi	a2, 0x1b9
	s32i.n	a2, sp, 0
	l32r	a15, .LC140
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC142
	movi.n	a10, 1
	call8	esp_log_write
.LVL255:
	movi	a2, 0x102
	retw.n
.LVL256:
.L150:
	.loc 1 443 0 is_stmt 1
	addi	a8, a3, -4
	bgeui	a8, 2, .L152
	.loc 1 444 0
	addi	a2, a2, 32
.LVL257:
	l32r	a8, .LC144
	addx4	a2, a2, a8
.LVL258:
	memw
	l32i.n	a9, a2, 8
	extui	a3, a3, 0, 3
.LVL259:
	slli	a8, a3, 7
	movi	a3, -0x381
	and	a3, a9, a3
	or	a3, a3, a8
	memw
	s32i.n	a3, a2, 8
	.loc 1 445 0
	memw
	l32i.n	a8, a2, 8
	movi	a3, 0x400
	or	a3, a8, a3
	memw
	s32i.n	a3, a2, 8
	.loc 1 442 0
	movi.n	a2, 0
	retw.n
.LVL260:
.L152:
	.loc 1 447 0 discriminator 1
	call8	esp_log_timestamp
.LVL261:
	l32r	a11, .LC141
	mov.n	a15, a2
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC146
	movi.n	a10, 1
	call8	esp_log_write
.LVL262:
	.loc 1 448 0 discriminator 1
	movi	a2, 0x102
.LVL263:
	.loc 1 451 0 discriminator 1
	retw.n
.LFE31:
	.size	gpio_wakeup_enable, .-gpio_wakeup_enable
	.section	.text.gpio_wakeup_disable,"ax",@progbits
	.literal_position
	.literal .LC147, GPIO_PIN_MUX_REG
	.literal .LC148, __FUNCTION__$4750
	.literal .LC149, .LC4
	.literal .LC150, .LC6
	.literal .LC151, .LC8
	.literal .LC152, GPIO
	.align	4
	.global	gpio_wakeup_disable
	.type	gpio_wakeup_disable, @function
gpio_wakeup_disable:
.LFB32:
	.loc 1 454 0
.LVL264:
	entry	sp, 48
.LCFI22:
	.loc 1 455 0
	movi.n	a8, 0x27
	bltu	a8, a2, .L154
	.loc 1 455 0 is_stmt 0 discriminator 2
	l32r	a8, .LC147
	addx4	a8, a2, a8
	l32i.n	a8, a8, 0
	bnez.n	a8, .L155
.L154:
	.loc 1 455 0 discriminator 4
	call8	esp_log_timestamp
.LVL265:
	l32r	a11, .LC149
	l32r	a2, .LC151
.LVL266:
	s32i.n	a2, sp, 4
	movi	a2, 0x1c7
	s32i.n	a2, sp, 0
	l32r	a15, .LC148
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC150
	movi.n	a10, 1
	call8	esp_log_write
.LVL267:
	movi	a2, 0x102
	retw.n
.LVL268:
.L155:
	.loc 1 456 0 is_stmt 1
	addi	a2, a2, 32
.LVL269:
	l32r	a8, .LC152
	addx4	a2, a2, a8
.LVL270:
	memw
	l32i.n	a9, a2, 8
	movi	a8, -0x401
	and	a8, a9, a8
	memw
	s32i.n	a8, a2, 8
	.loc 1 457 0
	movi.n	a2, 0
	.loc 1 458 0
	retw.n
.LFE32:
	.size	gpio_wakeup_disable, .-gpio_wakeup_disable
	.section	.rodata.str1.4
	.align	4
.LC158:
	.string	"GPIO drive capability error"
	.section	.text.gpio_set_drive_capability,"ax",@progbits
	.literal_position
	.literal .LC153, GPIO_PIN_MUX_REG
	.literal .LC154, __FUNCTION__$4755
	.literal .LC155, .LC4
	.literal .LC156, .LC6
	.literal .LC157, .LC8
	.literal .LC159, .LC158
	.literal .LC160, rtc_gpio_desc
	.literal .LC161, -3073
	.align	4
	.global	gpio_set_drive_capability
	.type	gpio_set_drive_capability, @function
gpio_set_drive_capability:
.LFB33:
	.loc 1 461 0
.LVL271:
	entry	sp, 48
.LCFI23:
	.loc 1 462 0
	movi.n	a8, 0x27
	bltu	a8, a2, .L158
	.loc 1 462 0 is_stmt 0 discriminator 2
	l32r	a8, .LC153
	addx4	a8, a2, a8
	l32i.n	a8, a8, 0
	beqz.n	a8, .L158
	.loc 1 462 0 discriminator 4
	movi.n	a9, 0x21
	bgeu	a9, a2, .L159
.L158:
	.loc 1 462 0 discriminator 6
	call8	esp_log_timestamp
.LVL272:
	l32r	a11, .LC155
	l32r	a2, .LC157
.LVL273:
	s32i.n	a2, sp, 4
	movi	a2, 0x1ce
	s32i.n	a2, sp, 0
	l32r	a15, .LC154
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC156
	movi.n	a10, 1
	call8	esp_log_write
.LVL274:
	movi	a2, 0x102
	retw.n
.LVL275:
.L159:
	.loc 1 463 0 is_stmt 1
	bltui	a3, 4, .L161
	.loc 1 463 0 is_stmt 0 discriminator 2
	call8	esp_log_timestamp
.LVL276:
	l32r	a11, .LC155
	l32r	a2, .LC159
.LVL277:
	s32i.n	a2, sp, 4
	movi	a2, 0x1cf
	s32i.n	a2, sp, 0
	l32r	a15, .LC154
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC156
	movi.n	a10, 1
	call8	esp_log_write
.LVL278:
	movi	a2, 0x102
	retw.n
.LVL279:
.L161:
.LBB30:
.LBB31:
	.loc 2 74 0 is_stmt 1
	movi.n	a9, 0x27
	bltu	a9, a2, .L164
	addx2	a10, a2, a2
	addx4	a10, a10, a2
	slli	a9, a10, 2
	l32r	a10, .LC160
	add.n	a9, a10, a9
	l32i.n	a9, a9, 0
	bnez.n	a9, .L165
	j	.L162
.L164:
	movi.n	a9, 0
	j	.L162
.L165:
	movi.n	a9, 1
.L162:
.LBE31:
.LBE30:
	.loc 1 465 0
	beqz.n	a9, .L163
	.loc 1 466 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	rtc_gpio_set_drive_capability
.LVL280:
	.loc 1 470 0
	movi.n	a2, 0
.LVL281:
	retw.n
.LVL282:
.L163:
	.loc 1 468 0
	memw
	l32i.n	a9, a8, 0
	l32r	a2, .LC161
.LVL283:
	and	a2, a9, a2
	extui	a3, a3, 0, 2
.LVL284:
	slli	a3, a3, 10
	or	a2, a2, a3
	memw
	s32i.n	a2, a8, 0
	.loc 1 470 0
	movi.n	a2, 0
	.loc 1 471 0
	retw.n
.LFE33:
	.size	gpio_set_drive_capability, .-gpio_set_drive_capability
	.section	.rodata.str1.4
	.align	4
.LC167:
	.string	"GPIO drive capability pointer error"
	.section	.text.gpio_get_drive_capability,"ax",@progbits
	.literal_position
	.literal .LC162, GPIO_PIN_MUX_REG
	.literal .LC163, __FUNCTION__$4760
	.literal .LC164, .LC4
	.literal .LC165, .LC6
	.literal .LC166, .LC8
	.literal .LC168, .LC167
	.literal .LC169, rtc_gpio_desc
	.align	4
	.global	gpio_get_drive_capability
	.type	gpio_get_drive_capability, @function
gpio_get_drive_capability:
.LFB34:
	.loc 1 474 0
.LVL285:
	entry	sp, 48
.LCFI24:
	.loc 1 475 0
	movi.n	a8, 0x27
	bltu	a8, a2, .L167
	.loc 1 475 0 is_stmt 0 discriminator 2
	l32r	a8, .LC162
	addx4	a8, a2, a8
	l32i.n	a8, a8, 0
	beqz.n	a8, .L167
	.loc 1 475 0 discriminator 4
	movi.n	a9, 0x21
	bgeu	a9, a2, .L168
.L167:
	.loc 1 475 0 discriminator 6
	call8	esp_log_timestamp
.LVL286:
	l32r	a11, .LC164
	l32r	a2, .LC166
.LVL287:
	s32i.n	a2, sp, 4
	movi	a2, 0x1db
	s32i.n	a2, sp, 0
	l32r	a15, .LC163
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC165
	movi.n	a10, 1
	call8	esp_log_write
.LVL288:
	movi	a2, 0x102
	retw.n
.LVL289:
.L168:
	.loc 1 476 0 is_stmt 1
	bnez.n	a3, .L170
	.loc 1 476 0 discriminator 2
	call8	esp_log_timestamp
.LVL290:
	l32r	a11, .LC164
	l32r	a2, .LC168
.LVL291:
	s32i.n	a2, sp, 4
	movi	a2, 0x1dc
	s32i.n	a2, sp, 0
	l32r	a15, .LC163
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC165
	movi.n	a10, 1
	call8	esp_log_write
.LVL292:
	movi	a2, 0x102
	retw.n
.LVL293:
.L170:
.LBB32:
.LBB33:
	.loc 2 74 0
	movi.n	a9, 0x27
	bltu	a9, a2, .L173
	addx2	a10, a2, a2
	addx4	a10, a10, a2
	slli	a9, a10, 2
	l32r	a10, .LC169
	add.n	a9, a10, a9
	l32i.n	a9, a9, 0
	bnez.n	a9, .L174
	j	.L171
.L173:
	movi.n	a9, 0
	j	.L171
.L174:
	movi.n	a9, 1
.L171:
.LBE33:
.LBE32:
	.loc 1 478 0
	beqz.n	a9, .L172
	.loc 1 479 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	rtc_gpio_get_drive_capability
.LVL294:
	mov.n	a2, a10
.LVL295:
	retw.n
.LVL296:
.L172:
	.loc 1 481 0
	memw
	l32i.n	a2, a8, 0
.LVL297:
	extui	a2, a2, 10, 2
	s32i.n	a2, a3, 0
	.loc 1 483 0
	movi.n	a2, 0
	.loc 1 484 0
	retw.n
.LFE34:
	.size	gpio_get_drive_capability, .-gpio_get_drive_capability
	.section	.rodata.__FUNCTION__$4760,"a",@progbits
	.align	4
	.type	__FUNCTION__$4760, @object
	.size	__FUNCTION__$4760, 26
__FUNCTION__$4760:
	.string	"gpio_get_drive_capability"
	.section	.rodata.__FUNCTION__$4755,"a",@progbits
	.align	4
	.type	__FUNCTION__$4755, @object
	.size	__FUNCTION__$4755, 26
__FUNCTION__$4755:
	.string	"gpio_set_drive_capability"
	.section	.rodata.__FUNCTION__$4750,"a",@progbits
	.align	4
	.type	__FUNCTION__$4750, @object
	.size	__FUNCTION__$4750, 20
__FUNCTION__$4750:
	.string	"gpio_wakeup_disable"
	.section	.rodata.__FUNCTION__$4745,"a",@progbits
	.align	4
	.type	__FUNCTION__$4745, @object
	.size	__FUNCTION__$4745, 19
__FUNCTION__$4745:
	.string	"gpio_wakeup_enable"
	.section	.rodata.__FUNCTION__$4740,"a",@progbits
	.align	4
	.type	__FUNCTION__$4740, @object
	.size	__FUNCTION__$4740, 18
__FUNCTION__$4740:
	.string	"gpio_isr_register"
	.section	.rodata.__FUNCTION__$4729,"a",@progbits
	.align	4
	.type	__FUNCTION__$4729, @object
	.size	__FUNCTION__$4729, 25
__FUNCTION__$4729:
	.string	"gpio_install_isr_service"
	.section	.rodata.__FUNCTION__$4725,"a",@progbits
	.align	4
	.type	__FUNCTION__$4725, @object
	.size	__FUNCTION__$4725, 24
__FUNCTION__$4725:
	.string	"gpio_isr_handler_remove"
	.section	.rodata.__FUNCTION__$4721,"a",@progbits
	.align	4
	.type	__FUNCTION__$4721, @object
	.size	__FUNCTION__$4721, 21
__FUNCTION__$4721:
	.string	"gpio_isr_handler_add"
	.section	.rodata.__FUNCTION__$4664,"a",@progbits
	.align	4
	.type	__FUNCTION__$4664, @object
	.size	__FUNCTION__$4664, 20
__FUNCTION__$4664:
	.string	"gpio_output_disable"
	.section	.rodata.__FUNCTION__$4668,"a",@progbits
	.align	4
	.type	__FUNCTION__$4668, @object
	.size	__FUNCTION__$4668, 19
__FUNCTION__$4668:
	.string	"gpio_output_enable"
	.section	.rodata.__FUNCTION__$4693,"a",@progbits
	.align	4
	.type	__FUNCTION__$4693, @object
	.size	__FUNCTION__$4693, 19
__FUNCTION__$4693:
	.string	"gpio_set_direction"
	.section	.rodata.__FUNCTION__$4681,"a",@progbits
	.align	4
	.type	__FUNCTION__$4681, @object
	.size	__FUNCTION__$4681, 19
__FUNCTION__$4681:
	.string	"gpio_set_pull_mode"
	.section	.rodata.__FUNCTION__$4673,"a",@progbits
	.align	4
	.type	__FUNCTION__$4673, @object
	.size	__FUNCTION__$4673, 15
__FUNCTION__$4673:
	.string	"gpio_set_level"
	.section	.rodata.__FUNCTION__$4660,"a",@progbits
	.align	4
	.type	__FUNCTION__$4660, @object
	.size	__FUNCTION__$4660, 18
__FUNCTION__$4660:
	.string	"gpio_intr_disable"
	.section	.rodata.__FUNCTION__$4653,"a",@progbits
	.align	4
	.type	__FUNCTION__$4653, @object
	.size	__FUNCTION__$4653, 25
__FUNCTION__$4653:
	.string	"gpio_intr_enable_on_core"
	.section	.rodata.__FUNCTION__$4648,"a",@progbits
	.align	4
	.type	__FUNCTION__$4648, @object
	.size	__FUNCTION__$4648, 19
__FUNCTION__$4648:
	.string	"gpio_set_intr_type"
	.section	.rodata.__FUNCTION__$4643,"a",@progbits
	.align	4
	.type	__FUNCTION__$4643, @object
	.size	__FUNCTION__$4643, 18
__FUNCTION__$4643:
	.string	"gpio_pulldown_dis"
	.section	.rodata.__FUNCTION__$4639,"a",@progbits
	.align	4
	.type	__FUNCTION__$4639, @object
	.size	__FUNCTION__$4639, 17
__FUNCTION__$4639:
	.string	"gpio_pulldown_en"
	.section	.rodata.__FUNCTION__$4635,"a",@progbits
	.align	4
	.type	__FUNCTION__$4635, @object
	.size	__FUNCTION__$4635, 16
__FUNCTION__$4635:
	.string	"gpio_pullup_dis"
	.section	.rodata.__FUNCTION__$4631,"a",@progbits
	.align	4
	.type	__FUNCTION__$4631, @object
	.size	__FUNCTION__$4631, 15
__FUNCTION__$4631:
	.string	"gpio_pullup_en"
	.section	.data.gpio_spinlock,"aw",@progbits
	.align	4
	.type	gpio_spinlock, @object
	.size	gpio_spinlock, 8
gpio_spinlock:
	.word	-1287651329
	.word	0
	.section	.bss.gpio_isr_handle,"aw",@nobits
	.align	4
	.type	gpio_isr_handle, @object
	.size	gpio_isr_handle, 4
gpio_isr_handle:
	.zero	4
	.section	.bss.gpio_isr_func,"aw",@nobits
	.align	4
	.type	gpio_isr_func, @object
	.size	gpio_isr_func, 4
gpio_isr_func:
	.zero	4
	.global	GPIO_PIN_MUX_REG
	.section	.rodata.GPIO_PIN_MUX_REG,"a",@progbits
	.align	4
	.type	GPIO_PIN_MUX_REG, @object
	.size	GPIO_PIN_MUX_REG, 160
GPIO_PIN_MUX_REG:
	.word	1072992324
	.word	1072992392
	.word	1072992320
	.word	1072992388
	.word	1072992328
	.word	1072992364
	.word	1072992352
	.word	1072992356
	.word	1072992360
	.word	1072992340
	.word	1072992344
	.word	1072992348
	.word	1072992308
	.word	1072992312
	.word	1072992304
	.word	1072992316
	.word	1072992332
	.word	1072992336
	.word	1072992368
	.word	1072992372
	.word	0
	.word	1072992380
	.word	1072992384
	.word	1072992396
	.word	0
	.word	1072992292
	.word	1072992296
	.word	1072992300
	.word	0
	.word	0
	.word	0
	.word	0
	.word	1072992284
	.word	1072992288
	.word	1072992276
	.word	1072992280
	.word	1072992260
	.word	1072992264
	.word	1072992268
	.word	1072992272
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
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI1-.LFB15
	.byte	0xe
	.uleb128 0x30
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
	.uleb128 0x30
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
	.uleb128 0x30
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI4-.LFB10
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI5-.LFB11
	.byte	0xe
	.uleb128 0x30
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
	.uleb128 0x30
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI7-.LFB13
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI8-.LFB14
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI9-.LFB16
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI10-.LFB17
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI11-.LFB20
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI12-.LFB21
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI13-.LFB22
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI14-.LFB23
	.byte	0xe
	.uleb128 0x30
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
	.uleb128 0x50
	.align	4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI16-.LFB26
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI17-.LFB27
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI18-.LFB29
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI19-.LFB30
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE38:
.LSFDE40:
	.4byte	.LEFDE40-.LASFDE40
.LASFDE40:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI20-.LFB28
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE40:
.LSFDE42:
	.4byte	.LEFDE42-.LASFDE42
.LASFDE42:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI21-.LFB31
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE42:
.LSFDE44:
	.4byte	.LEFDE44-.LASFDE44
.LASFDE44:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI22-.LFB32
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE44:
.LSFDE46:
	.4byte	.LEFDE46-.LASFDE46
.LASFDE46:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI23-.LFB33
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE46:
.LSFDE48:
	.4byte	.LEFDE48-.LASFDE48
.LASFDE48:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI24-.LFB34
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE48:
	.text
.Letext0:
	.file 4 "C:/esp/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 5 "C:/esp/esp-idf/components/newlib/include/stdint.h"
	.file 6 "C:/esp/esp-idf/components/esp32/include/esp_err.h"
	.file 7 "C:/esp/esp-idf/components/esp32/include/esp_intr_alloc.h"
	.file 8 "C:/esp/esp-idf/components/freertos/include/freertos/portmacro.h"
	.file 9 "C:/esp/esp-idf/components/soc/esp32/include/soc/gpio_struct.h"
	.file 10 "C:/esp/esp-idf/components/driver/include/driver/gpio.h"
	.file 11 "C:/esp/esp-idf/components/log/include/esp_log.h"
	.file 12 "C:/esp/esp-idf/components/esp32/include/rom/gpio.h"
	.file 13 "C:/esp/esp-idf/components/newlib/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x24fa
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF253
	.byte	0xc
	.4byte	.LASF254
	.4byte	.LASF255
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x4
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
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x4
	.byte	0x19
	.4byte	0x57
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x4
	.byte	0x1a
	.4byte	0x69
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x4
	.byte	0x1e
	.4byte	0x82
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x5
	.byte	0x15
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x5
	.byte	0x2c
	.4byte	0x4c
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x5
	.byte	0x2d
	.4byte	0x5e
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x5
	.byte	0x39
	.4byte	0x77
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF15
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF16
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF17
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF18
	.uleb128 0x6
	.byte	0x4
	.4byte	0xd9
	.uleb128 0x7
	.4byte	0xcc
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x6
	.byte	0x18
	.4byte	0x94
	.uleb128 0x6
	.byte	0x4
	.4byte	0xef
	.uleb128 0x8
	.4byte	0xfa
	.uleb128 0x9
	.4byte	0xb5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x7
	.byte	0x56
	.4byte	0x105
	.uleb128 0xa
	.4byte	.LASF20
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x7
	.byte	0x57
	.4byte	0x115
	.uleb128 0x6
	.byte	0x4
	.4byte	0xfa
	.uleb128 0xb
	.byte	0x8
	.byte	0x8
	.byte	0x81
	.4byte	0x13c
	.uleb128 0xc
	.4byte	.LASF22
	.byte	0x8
	.byte	0x82
	.4byte	0x9f
	.byte	0
	.uleb128 0xc
	.4byte	.LASF23
	.byte	0x8
	.byte	0x83
	.4byte	0x9f
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x8
	.byte	0x88
	.4byte	0x11b
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.byte	0x1b
	.4byte	0x16e
	.uleb128 0xd
	.4byte	.LASF25
	.byte	0x9
	.byte	0x1c
	.4byte	0x9f
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.4byte	.LASF26
	.byte	0x9
	.byte	0x1d
	.4byte	0x9f
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.byte	0x9
	.byte	0x1a
	.4byte	0x187
	.uleb128 0xf
	.4byte	0x147
	.uleb128 0x10
	.string	"val"
	.byte	0x9
	.byte	0x1f
	.4byte	0x9f
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.byte	0x22
	.4byte	0x1ae
	.uleb128 0xd
	.4byte	.LASF25
	.byte	0x9
	.byte	0x23
	.4byte	0x9f
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.4byte	.LASF26
	.byte	0x9
	.byte	0x24
	.4byte	0x9f
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.byte	0x9
	.byte	0x21
	.4byte	0x1c7
	.uleb128 0xf
	.4byte	0x187
	.uleb128 0x10
	.string	"val"
	.byte	0x9
	.byte	0x26
	.4byte	0x9f
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.byte	0x29
	.4byte	0x1ee
	.uleb128 0xd
	.4byte	.LASF25
	.byte	0x9
	.byte	0x2a
	.4byte	0x9f
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.4byte	.LASF26
	.byte	0x9
	.byte	0x2b
	.4byte	0x9f
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.byte	0x9
	.byte	0x28
	.4byte	0x207
	.uleb128 0xf
	.4byte	0x1c7
	.uleb128 0x10
	.string	"val"
	.byte	0x9
	.byte	0x2d
	.4byte	0x9f
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.byte	0x30
	.4byte	0x22e
	.uleb128 0x11
	.string	"sel"
	.byte	0x9
	.byte	0x31
	.4byte	0x9f
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.4byte	.LASF26
	.byte	0x9
	.byte	0x32
	.4byte	0x9f
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.byte	0x9
	.byte	0x2f
	.4byte	0x247
	.uleb128 0xf
	.4byte	0x207
	.uleb128 0x10
	.string	"val"
	.byte	0x9
	.byte	0x34
	.4byte	0x9f
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.byte	0x3a
	.4byte	0x26e
	.uleb128 0xd
	.4byte	.LASF25
	.byte	0x9
	.byte	0x3b
	.4byte	0x9f
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.4byte	.LASF26
	.byte	0x9
	.byte	0x3c
	.4byte	0x9f
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.byte	0x9
	.byte	0x39
	.4byte	0x287
	.uleb128 0xf
	.4byte	0x247
	.uleb128 0x10
	.string	"val"
	.byte	0x9
	.byte	0x3e
	.4byte	0x9f
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.byte	0x41
	.4byte	0x2ae
	.uleb128 0xd
	.4byte	.LASF25
	.byte	0x9
	.byte	0x42
	.4byte	0x9f
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.4byte	.LASF26
	.byte	0x9
	.byte	0x43
	.4byte	0x9f
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.byte	0x9
	.byte	0x40
	.4byte	0x2c7
	.uleb128 0xf
	.4byte	0x287
	.uleb128 0x10
	.string	"val"
	.byte	0x9
	.byte	0x45
	.4byte	0x9f
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.byte	0x48
	.4byte	0x2ee
	.uleb128 0xd
	.4byte	.LASF25
	.byte	0x9
	.byte	0x49
	.4byte	0x9f
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.4byte	.LASF26
	.byte	0x9
	.byte	0x4a
	.4byte	0x9f
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.byte	0x9
	.byte	0x47
	.4byte	0x307
	.uleb128 0xf
	.4byte	0x2c7
	.uleb128 0x10
	.string	"val"
	.byte	0x9
	.byte	0x4c
	.4byte	0x9f
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.byte	0x4f
	.4byte	0x32e
	.uleb128 0xd
	.4byte	.LASF27
	.byte	0x9
	.byte	0x50
	.4byte	0x9f
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.4byte	.LASF28
	.byte	0x9
	.byte	0x51
	.4byte	0x9f
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.byte	0x9
	.byte	0x4e
	.4byte	0x347
	.uleb128 0xf
	.4byte	0x307
	.uleb128 0x10
	.string	"val"
	.byte	0x9
	.byte	0x53
	.4byte	0x9f
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.byte	0x57
	.4byte	0x36e
	.uleb128 0xd
	.4byte	.LASF25
	.byte	0x9
	.byte	0x58
	.4byte	0x9f
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.4byte	.LASF26
	.byte	0x9
	.byte	0x59
	.4byte	0x9f
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.byte	0x9
	.byte	0x56
	.4byte	0x387
	.uleb128 0xf
	.4byte	0x347
	.uleb128 0x10
	.string	"val"
	.byte	0x9
	.byte	0x5b
	.4byte	0x9f
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.byte	0x61
	.4byte	0x3ae
	.uleb128 0xd
	.4byte	.LASF29
	.byte	0x9
	.byte	0x62
	.4byte	0x9f
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.4byte	.LASF26
	.byte	0x9
	.byte	0x63
	.4byte	0x9f
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.byte	0x9
	.byte	0x60
	.4byte	0x3c7
	.uleb128 0xf
	.4byte	0x387
	.uleb128 0x10
	.string	"val"
	.byte	0x9
	.byte	0x65
	.4byte	0x9f
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.byte	0x68
	.4byte	0x3ee
	.uleb128 0xd
	.4byte	.LASF29
	.byte	0x9
	.byte	0x69
	.4byte	0x9f
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.4byte	.LASF26
	.byte	0x9
	.byte	0x6a
	.4byte	0x9f
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.byte	0x9
	.byte	0x67
	.4byte	0x407
	.uleb128 0xf
	.4byte	0x3c7
	.uleb128 0x10
	.string	"val"
	.byte	0x9
	.byte	0x6c
	.4byte	0x9f
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.byte	0x6f
	.4byte	0x42e
	.uleb128 0xd
	.4byte	.LASF29
	.byte	0x9
	.byte	0x70
	.4byte	0x9f
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.4byte	.LASF26
	.byte	0x9
	.byte	0x71
	.4byte	0x9f
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.byte	0x9
	.byte	0x6e
	.4byte	0x447
	.uleb128 0xf
	.4byte	0x407
	.uleb128 0x10
	.string	"val"
	.byte	0x9
	.byte	0x73
	.4byte	0x9f
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.byte	0x7c
	.4byte	0x46e
	.uleb128 0xd
	.4byte	.LASF30
	.byte	0x9
	.byte	0x7d
	.4byte	0x9f
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.4byte	.LASF26
	.byte	0x9
	.byte	0x7e
	.4byte	0x9f
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.byte	0x9
	.byte	0x7b
	.4byte	0x487
	.uleb128 0xf
	.4byte	0x447
	.uleb128 0x10
	.string	"val"
	.byte	0x9
	.byte	0x80
	.4byte	0x9f
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.byte	0x83
	.4byte	0x4ae
	.uleb128 0xd
	.4byte	.LASF30
	.byte	0x9
	.byte	0x84
	.4byte	0x9f
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.4byte	.LASF26
	.byte	0x9
	.byte	0x85
	.4byte	0x9f
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.byte	0x9
	.byte	0x82
	.4byte	0x4c7
	.uleb128 0xf
	.4byte	0x487
	.uleb128 0x10
	.string	"val"
	.byte	0x9
	.byte	0x87
	.4byte	0x9f
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.byte	0x8a
	.4byte	0x4ee
	.uleb128 0xd
	.4byte	.LASF30
	.byte	0x9
	.byte	0x8b
	.4byte	0x9f
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.4byte	.LASF26
	.byte	0x9
	.byte	0x8c
	.4byte	0x9f
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.byte	0x9
	.byte	0x89
	.4byte	0x507
	.uleb128 0xf
	.4byte	0x4c7
	.uleb128 0x10
	.string	"val"
	.byte	0x9
	.byte	0x8e
	.4byte	0x9f
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.byte	0x91
	.4byte	0x52e
	.uleb128 0xd
	.4byte	.LASF30
	.byte	0x9
	.byte	0x92
	.4byte	0x9f
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.4byte	.LASF26
	.byte	0x9
	.byte	0x93
	.4byte	0x9f
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.byte	0x9
	.byte	0x90
	.4byte	0x547
	.uleb128 0xf
	.4byte	0x507
	.uleb128 0x10
	.string	"val"
	.byte	0x9
	.byte	0x95
	.4byte	0x9f
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.byte	0x98
	.4byte	0x56e
	.uleb128 0xd
	.4byte	.LASF30
	.byte	0x9
	.byte	0x99
	.4byte	0x9f
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.4byte	.LASF26
	.byte	0x9
	.byte	0x9a
	.4byte	0x9f
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.byte	0x9
	.byte	0x97
	.4byte	0x587
	.uleb128 0xf
	.4byte	0x547
	.uleb128 0x10
	.string	"val"
	.byte	0x9
	.byte	0x9c
	.4byte	0x9f
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.byte	0x9f
	.4byte	0x608
	.uleb128 0xd
	.4byte	.LASF31
	.byte	0x9
	.byte	0xa0
	.4byte	0x9f
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0
	.uleb128 0xd
	.4byte	.LASF32
	.byte	0x9
	.byte	0xa1
	.4byte	0x9f
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xd
	.4byte	.LASF33
	.byte	0x9
	.byte	0xa2
	.4byte	0x9f
	.byte	0x4
	.byte	0x4
	.byte	0x19
	.byte	0
	.uleb128 0xd
	.4byte	.LASF34
	.byte	0x9
	.byte	0xa3
	.4byte	0x9f
	.byte	0x4
	.byte	0x3
	.byte	0x16
	.byte	0
	.uleb128 0xd
	.4byte	.LASF35
	.byte	0x9
	.byte	0xa4
	.4byte	0x9f
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xd
	.4byte	.LASF36
	.byte	0x9
	.byte	0xa5
	.4byte	0x9f
	.byte	0x4
	.byte	0x2
	.byte	0x13
	.byte	0
	.uleb128 0xd
	.4byte	.LASF37
	.byte	0x9
	.byte	0xa6
	.4byte	0x9f
	.byte	0x4
	.byte	0x5
	.byte	0xe
	.byte	0
	.uleb128 0xd
	.4byte	.LASF38
	.byte	0x9
	.byte	0xa7
	.4byte	0x9f
	.byte	0x4
	.byte	0xe
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.byte	0x9
	.byte	0x9e
	.4byte	0x621
	.uleb128 0xf
	.4byte	0x587
	.uleb128 0x10
	.string	"val"
	.byte	0x9
	.byte	0xa9
	.4byte	0x9f
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.byte	0xac
	.4byte	0x657
	.uleb128 0xd
	.4byte	.LASF39
	.byte	0x9
	.byte	0xad
	.4byte	0x9f
	.byte	0x4
	.byte	0xa
	.byte	0x16
	.byte	0
	.uleb128 0xd
	.4byte	.LASF40
	.byte	0x9
	.byte	0xae
	.4byte	0x9f
	.byte	0x4
	.byte	0x15
	.byte	0x1
	.byte	0
	.uleb128 0xd
	.4byte	.LASF41
	.byte	0x9
	.byte	0xaf
	.4byte	0x9f
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.byte	0x9
	.byte	0xab
	.4byte	0x670
	.uleb128 0xf
	.4byte	0x621
	.uleb128 0x10
	.string	"val"
	.byte	0x9
	.byte	0xb1
	.4byte	0x9f
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.byte	0xb4
	.4byte	0x6b5
	.uleb128 0xd
	.4byte	.LASF42
	.byte	0x9
	.byte	0xb5
	.4byte	0x9f
	.byte	0x4
	.byte	0x14
	.byte	0xc
	.byte	0
	.uleb128 0xd
	.4byte	.LASF43
	.byte	0x9
	.byte	0xb6
	.4byte	0x9f
	.byte	0x4
	.byte	0xa
	.byte	0x2
	.byte	0
	.uleb128 0xd
	.4byte	.LASF44
	.byte	0x9
	.byte	0xb7
	.4byte	0x9f
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xd
	.4byte	.LASF45
	.byte	0x9
	.byte	0xb8
	.4byte	0x9f
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.byte	0x9
	.byte	0xb3
	.4byte	0x6ce
	.uleb128 0xf
	.4byte	0x670
	.uleb128 0x10
	.string	"val"
	.byte	0x9
	.byte	0xba
	.4byte	0x9f
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.byte	0xbd
	.4byte	0x713
	.uleb128 0xd
	.4byte	.LASF46
	.byte	0x9
	.byte	0xbe
	.4byte	0x9f
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0
	.uleb128 0xd
	.4byte	.LASF47
	.byte	0x9
	.byte	0xbf
	.4byte	0x9f
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xd
	.4byte	.LASF48
	.byte	0x9
	.byte	0xc0
	.4byte	0x9f
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.4byte	.LASF26
	.byte	0x9
	.byte	0xc1
	.4byte	0x9f
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.byte	0x9
	.byte	0xbc
	.4byte	0x72c
	.uleb128 0xf
	.4byte	0x6ce
	.uleb128 0x10
	.string	"val"
	.byte	0x9
	.byte	0xc3
	.4byte	0x9f
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.byte	0xc6
	.4byte	0x780
	.uleb128 0xd
	.4byte	.LASF46
	.byte	0x9
	.byte	0xc7
	.4byte	0x9f
	.byte	0x4
	.byte	0x9
	.byte	0x17
	.byte	0
	.uleb128 0xd
	.4byte	.LASF49
	.byte	0x9
	.byte	0xc8
	.4byte	0x9f
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xd
	.4byte	.LASF50
	.byte	0x9
	.byte	0xc9
	.4byte	0x9f
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xd
	.4byte	.LASF51
	.byte	0x9
	.byte	0xca
	.4byte	0x9f
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xd
	.4byte	.LASF52
	.byte	0x9
	.byte	0xcb
	.4byte	0x9f
	.byte	0x4
	.byte	0x14
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.byte	0x9
	.byte	0xc5
	.4byte	0x799
	.uleb128 0xf
	.4byte	0x72c
	.uleb128 0x10
	.string	"val"
	.byte	0x9
	.byte	0xcd
	.4byte	0x9f
	.byte	0
	.uleb128 0x12
	.2byte	0x5d0
	.byte	0x9
	.byte	0x15
	.4byte	0x97a
	.uleb128 0xc
	.4byte	.LASF53
	.byte	0x9
	.byte	0x16
	.4byte	0x9f
	.byte	0
	.uleb128 0x13
	.string	"out"
	.byte	0x9
	.byte	0x17
	.4byte	0x9f
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF54
	.byte	0x9
	.byte	0x18
	.4byte	0x9f
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF55
	.byte	0x9
	.byte	0x19
	.4byte	0x9f
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF56
	.byte	0x9
	.byte	0x20
	.4byte	0x16e
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF57
	.byte	0x9
	.byte	0x27
	.4byte	0x1ae
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF58
	.byte	0x9
	.byte	0x2e
	.4byte	0x1ee
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF59
	.byte	0x9
	.byte	0x35
	.4byte	0x22e
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF60
	.byte	0x9
	.byte	0x36
	.4byte	0x9f
	.byte	0x20
	.uleb128 0xc
	.4byte	.LASF61
	.byte	0x9
	.byte	0x37
	.4byte	0x9f
	.byte	0x24
	.uleb128 0xc
	.4byte	.LASF62
	.byte	0x9
	.byte	0x38
	.4byte	0x9f
	.byte	0x28
	.uleb128 0xc
	.4byte	.LASF63
	.byte	0x9
	.byte	0x3f
	.4byte	0x26e
	.byte	0x2c
	.uleb128 0xc
	.4byte	.LASF64
	.byte	0x9
	.byte	0x46
	.4byte	0x2ae
	.byte	0x30
	.uleb128 0xc
	.4byte	.LASF65
	.byte	0x9
	.byte	0x4d
	.4byte	0x2ee
	.byte	0x34
	.uleb128 0xc
	.4byte	.LASF66
	.byte	0x9
	.byte	0x54
	.4byte	0x32e
	.byte	0x38
	.uleb128 0x13
	.string	"in"
	.byte	0x9
	.byte	0x55
	.4byte	0x9f
	.byte	0x3c
	.uleb128 0x13
	.string	"in1"
	.byte	0x9
	.byte	0x5c
	.4byte	0x36e
	.byte	0x40
	.uleb128 0xc
	.4byte	.LASF67
	.byte	0x9
	.byte	0x5d
	.4byte	0x9f
	.byte	0x44
	.uleb128 0xc
	.4byte	.LASF68
	.byte	0x9
	.byte	0x5e
	.4byte	0x9f
	.byte	0x48
	.uleb128 0xc
	.4byte	.LASF69
	.byte	0x9
	.byte	0x5f
	.4byte	0x9f
	.byte	0x4c
	.uleb128 0xc
	.4byte	.LASF70
	.byte	0x9
	.byte	0x66
	.4byte	0x3ae
	.byte	0x50
	.uleb128 0xc
	.4byte	.LASF71
	.byte	0x9
	.byte	0x6d
	.4byte	0x3ee
	.byte	0x54
	.uleb128 0xc
	.4byte	.LASF72
	.byte	0x9
	.byte	0x74
	.4byte	0x42e
	.byte	0x58
	.uleb128 0xc
	.4byte	.LASF73
	.byte	0x9
	.byte	0x75
	.4byte	0x9f
	.byte	0x5c
	.uleb128 0xc
	.4byte	.LASF74
	.byte	0x9
	.byte	0x76
	.4byte	0x9f
	.byte	0x60
	.uleb128 0xc
	.4byte	.LASF75
	.byte	0x9
	.byte	0x77
	.4byte	0x9f
	.byte	0x64
	.uleb128 0xc
	.4byte	.LASF76
	.byte	0x9
	.byte	0x78
	.4byte	0x9f
	.byte	0x68
	.uleb128 0xc
	.4byte	.LASF77
	.byte	0x9
	.byte	0x79
	.4byte	0x9f
	.byte	0x6c
	.uleb128 0xc
	.4byte	.LASF78
	.byte	0x9
	.byte	0x7a
	.4byte	0x9f
	.byte	0x70
	.uleb128 0xc
	.4byte	.LASF79
	.byte	0x9
	.byte	0x81
	.4byte	0x46e
	.byte	0x74
	.uleb128 0xc
	.4byte	.LASF80
	.byte	0x9
	.byte	0x88
	.4byte	0x4ae
	.byte	0x78
	.uleb128 0xc
	.4byte	.LASF81
	.byte	0x9
	.byte	0x8f
	.4byte	0x4ee
	.byte	0x7c
	.uleb128 0xc
	.4byte	.LASF82
	.byte	0x9
	.byte	0x96
	.4byte	0x52e
	.byte	0x80
	.uleb128 0xc
	.4byte	.LASF83
	.byte	0x9
	.byte	0x9d
	.4byte	0x56e
	.byte	0x84
	.uleb128 0x13
	.string	"pin"
	.byte	0x9
	.byte	0xaa
	.4byte	0x97a
	.byte	0x88
	.uleb128 0x14
	.4byte	.LASF84
	.byte	0x9
	.byte	0xb2
	.4byte	0x657
	.2byte	0x128
	.uleb128 0x14
	.4byte	.LASF85
	.byte	0x9
	.byte	0xbb
	.4byte	0x6b5
	.2byte	0x12c
	.uleb128 0x14
	.4byte	.LASF86
	.byte	0x9
	.byte	0xc4
	.4byte	0x98a
	.2byte	0x130
	.uleb128 0x14
	.4byte	.LASF87
	.byte	0x9
	.byte	0xce
	.4byte	0x99a
	.2byte	0x530
	.byte	0
	.uleb128 0x15
	.4byte	0x608
	.4byte	0x98a
	.uleb128 0x16
	.4byte	0xbe
	.byte	0x27
	.byte	0
	.uleb128 0x15
	.4byte	0x713
	.4byte	0x99a
	.uleb128 0x16
	.4byte	0xbe
	.byte	0xff
	.byte	0
	.uleb128 0x15
	.4byte	0x780
	.4byte	0x9aa
	.uleb128 0x16
	.4byte	0xbe
	.byte	0x27
	.byte	0
	.uleb128 0x3
	.4byte	.LASF88
	.byte	0x9
	.byte	0xcf
	.4byte	0x9b5
	.uleb128 0x17
	.4byte	0x799
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF89
	.uleb128 0x18
	.byte	0x4
	.4byte	0x69
	.byte	0xa
	.byte	0x81
	.4byte	0xaa0
	.uleb128 0x19
	.4byte	.LASF90
	.byte	0
	.uleb128 0x19
	.4byte	.LASF91
	.byte	0x1
	.uleb128 0x19
	.4byte	.LASF92
	.byte	0x2
	.uleb128 0x19
	.4byte	.LASF93
	.byte	0x3
	.uleb128 0x19
	.4byte	.LASF94
	.byte	0x4
	.uleb128 0x19
	.4byte	.LASF95
	.byte	0x5
	.uleb128 0x19
	.4byte	.LASF96
	.byte	0x6
	.uleb128 0x19
	.4byte	.LASF97
	.byte	0x7
	.uleb128 0x19
	.4byte	.LASF98
	.byte	0x8
	.uleb128 0x19
	.4byte	.LASF99
	.byte	0x9
	.uleb128 0x19
	.4byte	.LASF100
	.byte	0xa
	.uleb128 0x19
	.4byte	.LASF101
	.byte	0xb
	.uleb128 0x19
	.4byte	.LASF102
	.byte	0xc
	.uleb128 0x19
	.4byte	.LASF103
	.byte	0xd
	.uleb128 0x19
	.4byte	.LASF104
	.byte	0xe
	.uleb128 0x19
	.4byte	.LASF105
	.byte	0xf
	.uleb128 0x19
	.4byte	.LASF106
	.byte	0x10
	.uleb128 0x19
	.4byte	.LASF107
	.byte	0x11
	.uleb128 0x19
	.4byte	.LASF108
	.byte	0x12
	.uleb128 0x19
	.4byte	.LASF109
	.byte	0x13
	.uleb128 0x19
	.4byte	.LASF110
	.byte	0x15
	.uleb128 0x19
	.4byte	.LASF111
	.byte	0x16
	.uleb128 0x19
	.4byte	.LASF112
	.byte	0x17
	.uleb128 0x19
	.4byte	.LASF113
	.byte	0x19
	.uleb128 0x19
	.4byte	.LASF114
	.byte	0x1a
	.uleb128 0x19
	.4byte	.LASF115
	.byte	0x1b
	.uleb128 0x19
	.4byte	.LASF116
	.byte	0x20
	.uleb128 0x19
	.4byte	.LASF117
	.byte	0x21
	.uleb128 0x19
	.4byte	.LASF118
	.byte	0x22
	.uleb128 0x19
	.4byte	.LASF119
	.byte	0x23
	.uleb128 0x19
	.4byte	.LASF120
	.byte	0x24
	.uleb128 0x19
	.4byte	.LASF121
	.byte	0x25
	.uleb128 0x19
	.4byte	.LASF122
	.byte	0x26
	.uleb128 0x19
	.4byte	.LASF123
	.byte	0x27
	.uleb128 0x19
	.4byte	.LASF124
	.byte	0x28
	.byte	0
	.uleb128 0x3
	.4byte	.LASF125
	.byte	0xa
	.byte	0xae
	.4byte	0x9c1
	.uleb128 0x18
	.byte	0x4
	.4byte	0x69
	.byte	0xa
	.byte	0xb0
	.4byte	0xae2
	.uleb128 0x19
	.4byte	.LASF126
	.byte	0
	.uleb128 0x19
	.4byte	.LASF127
	.byte	0x1
	.uleb128 0x19
	.4byte	.LASF128
	.byte	0x2
	.uleb128 0x19
	.4byte	.LASF129
	.byte	0x3
	.uleb128 0x19
	.4byte	.LASF130
	.byte	0x4
	.uleb128 0x19
	.4byte	.LASF131
	.byte	0x5
	.uleb128 0x19
	.4byte	.LASF132
	.byte	0x6
	.byte	0
	.uleb128 0x3
	.4byte	.LASF133
	.byte	0xa
	.byte	0xb8
	.4byte	0xaab
	.uleb128 0x18
	.byte	0x4
	.4byte	0x69
	.byte	0xa
	.byte	0xba
	.4byte	0xb18
	.uleb128 0x19
	.4byte	.LASF134
	.byte	0x1
	.uleb128 0x19
	.4byte	.LASF135
	.byte	0x2
	.uleb128 0x19
	.4byte	.LASF136
	.byte	0x6
	.uleb128 0x19
	.4byte	.LASF137
	.byte	0x7
	.uleb128 0x19
	.4byte	.LASF138
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF139
	.byte	0xa
	.byte	0xc0
	.4byte	0xaed
	.uleb128 0x18
	.byte	0x4
	.4byte	0x69
	.byte	0xa
	.byte	0xc2
	.4byte	0xb3c
	.uleb128 0x19
	.4byte	.LASF140
	.byte	0
	.uleb128 0x19
	.4byte	.LASF141
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF142
	.byte	0xa
	.byte	0xc5
	.4byte	0xb23
	.uleb128 0x18
	.byte	0x4
	.4byte	0x69
	.byte	0xa
	.byte	0xc7
	.4byte	0xb60
	.uleb128 0x19
	.4byte	.LASF143
	.byte	0
	.uleb128 0x19
	.4byte	.LASF144
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF145
	.byte	0xa
	.byte	0xca
	.4byte	0xb47
	.uleb128 0xb
	.byte	0x18
	.byte	0xa
	.byte	0xcf
	.4byte	0xbb0
	.uleb128 0xc
	.4byte	.LASF146
	.byte	0xa
	.byte	0xd0
	.4byte	0xaa
	.byte	0
	.uleb128 0xc
	.4byte	.LASF147
	.byte	0xa
	.byte	0xd1
	.4byte	0xb18
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF148
	.byte	0xa
	.byte	0xd2
	.4byte	0xb3c
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF149
	.byte	0xa
	.byte	0xd3
	.4byte	0xb60
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF150
	.byte	0xa
	.byte	0xd4
	.4byte	0xae2
	.byte	0x14
	.byte	0
	.uleb128 0x3
	.4byte	.LASF151
	.byte	0xa
	.byte	0xd5
	.4byte	0xb6b
	.uleb128 0x18
	.byte	0x4
	.4byte	0x69
	.byte	0xa
	.byte	0xd7
	.4byte	0xbe0
	.uleb128 0x19
	.4byte	.LASF152
	.byte	0
	.uleb128 0x19
	.4byte	.LASF153
	.byte	0x1
	.uleb128 0x19
	.4byte	.LASF154
	.byte	0x2
	.uleb128 0x19
	.4byte	.LASF155
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF156
	.byte	0xa
	.byte	0xdc
	.4byte	0xbbb
	.uleb128 0x18
	.byte	0x4
	.4byte	0x69
	.byte	0xa
	.byte	0xde
	.4byte	0xc1c
	.uleb128 0x19
	.4byte	.LASF157
	.byte	0
	.uleb128 0x19
	.4byte	.LASF158
	.byte	0x1
	.uleb128 0x19
	.4byte	.LASF159
	.byte	0x2
	.uleb128 0x19
	.4byte	.LASF160
	.byte	0x2
	.uleb128 0x19
	.4byte	.LASF161
	.byte	0x3
	.uleb128 0x19
	.4byte	.LASF162
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF163
	.byte	0xa
	.byte	0xe5
	.4byte	0xbeb
	.uleb128 0x3
	.4byte	.LASF164
	.byte	0xa
	.byte	0xe7
	.4byte	0xe9
	.uleb128 0x3
	.4byte	.LASF165
	.byte	0xa
	.byte	0xe8
	.4byte	0x10a
	.uleb128 0xb
	.byte	0x34
	.byte	0x2
	.byte	0x21
	.4byte	0xce1
	.uleb128 0x13
	.string	"reg"
	.byte	0x2
	.byte	0x22
	.4byte	0x9f
	.byte	0
	.uleb128 0x13
	.string	"mux"
	.byte	0x2
	.byte	0x23
	.4byte	0x9f
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF166
	.byte	0x2
	.byte	0x24
	.4byte	0x9f
	.byte	0x8
	.uleb128 0x13
	.string	"ie"
	.byte	0x2
	.byte	0x25
	.4byte	0x9f
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF167
	.byte	0x2
	.byte	0x26
	.4byte	0x9f
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF168
	.byte	0x2
	.byte	0x27
	.4byte	0x9f
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF169
	.byte	0x2
	.byte	0x28
	.4byte	0x9f
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF170
	.byte	0x2
	.byte	0x29
	.4byte	0x9f
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF171
	.byte	0x2
	.byte	0x2a
	.4byte	0x9f
	.byte	0x20
	.uleb128 0xc
	.4byte	.LASF172
	.byte	0x2
	.byte	0x2b
	.4byte	0x9f
	.byte	0x24
	.uleb128 0xc
	.4byte	.LASF173
	.byte	0x2
	.byte	0x2c
	.4byte	0x9f
	.byte	0x28
	.uleb128 0xc
	.4byte	.LASF174
	.byte	0x2
	.byte	0x2d
	.4byte	0x9f
	.byte	0x2c
	.uleb128 0xc
	.4byte	.LASF175
	.byte	0x2
	.byte	0x2e
	.4byte	0x57
	.byte	0x30
	.byte	0
	.uleb128 0x3
	.4byte	.LASF176
	.byte	0x2
	.byte	0x2f
	.4byte	0xc3d
	.uleb128 0x18
	.byte	0x4
	.4byte	0x69
	.byte	0xb
	.byte	0x1f
	.4byte	0xd1d
	.uleb128 0x19
	.4byte	.LASF177
	.byte	0
	.uleb128 0x19
	.4byte	.LASF178
	.byte	0x1
	.uleb128 0x19
	.4byte	.LASF179
	.byte	0x2
	.uleb128 0x19
	.4byte	.LASF180
	.byte	0x3
	.uleb128 0x19
	.4byte	.LASF181
	.byte	0x4
	.uleb128 0x19
	.4byte	.LASF182
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF183
	.byte	0xb
	.byte	0x26
	.4byte	0xcec
	.uleb128 0xb
	.byte	0x8
	.byte	0x1
	.byte	0x4b
	.4byte	0xd48
	.uleb128 0x13
	.string	"fn"
	.byte	0x1
	.byte	0x4c
	.4byte	0xc27
	.byte	0
	.uleb128 0xc
	.4byte	.LASF184
	.byte	0x1
	.byte	0x4d
	.4byte	0xb5
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF185
	.byte	0x1
	.byte	0x4e
	.4byte	0xd28
	.uleb128 0x1a
	.4byte	.LASF256
	.byte	0x2
	.byte	0x47
	.4byte	0x9ba
	.byte	0x3
	.4byte	0xd6f
	.uleb128 0x1b
	.4byte	.LASF186
	.byte	0x2
	.byte	0x47
	.4byte	0xaa0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF257
	.byte	0x3
	.byte	0xc8
	.4byte	0x9f
	.byte	0x3
	.4byte	0xd8a
	.uleb128 0x1d
	.string	"id"
	.byte	0x3
	.byte	0xc9
	.4byte	0x57
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF258
	.byte	0x1
	.2byte	0x156
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xddd
	.uleb128 0x1f
	.string	"arg"
	.byte	0x1
	.2byte	0x156
	.4byte	0xb5
	.4byte	.LLST0
	.uleb128 0x20
	.4byte	.LASF186
	.byte	0x1
	.2byte	0x159
	.4byte	0x9f
	.4byte	.LLST1
	.uleb128 0x21
	.4byte	.LASF187
	.byte	0x1
	.2byte	0x15b
	.4byte	0x9f
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x21
	.4byte	.LASF188
	.byte	0x1
	.2byte	0x15e
	.4byte	0x9f
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.uleb128 0x22
	.4byte	.LASF191
	.byte	0x1
	.byte	0x88
	.4byte	0xde
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe71
	.uleb128 0x23
	.4byte	.LASF186
	.byte	0x1
	.byte	0x88
	.4byte	0xaa0
	.4byte	.LLST2
	.uleb128 0x23
	.4byte	.LASF189
	.byte	0x1
	.byte	0x88
	.4byte	0x9f
	.4byte	.LLST3
	.uleb128 0x24
	.4byte	.LASF190
	.4byte	0xe81
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$4653
	.uleb128 0x25
	.4byte	.LVL11
	.4byte	0x2441
	.uleb128 0x26
	.4byte	.LVL13
	.4byte	0x244c
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$4653
	.uleb128 0x27
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	0xcc
	.4byte	0xe81
	.uleb128 0x16
	.4byte	0xbe
	.byte	0x18
	.byte	0
	.uleb128 0x7
	.4byte	0xe71
	.uleb128 0x22
	.4byte	.LASF192
	.byte	0x1
	.byte	0x9f
	.4byte	0xde
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf0b
	.uleb128 0x23
	.4byte	.LASF186
	.byte	0x1
	.byte	0x9f
	.4byte	0xaa0
	.4byte	.LLST4
	.uleb128 0x24
	.4byte	.LASF190
	.4byte	0xf1b
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$4664
	.uleb128 0x25
	.4byte	.LVL23
	.4byte	0x2441
	.uleb128 0x26
	.4byte	.LVL25
	.4byte	0x244c
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$4664
	.uleb128 0x27
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	0xcc
	.4byte	0xf1b
	.uleb128 0x16
	.4byte	0xbe
	.byte	0x13
	.byte	0
	.uleb128 0x7
	.4byte	0xf0b
	.uleb128 0x22
	.4byte	.LASF193
	.byte	0x1
	.byte	0xaf
	.4byte	0xde
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfca
	.uleb128 0x23
	.4byte	.LASF186
	.byte	0x1
	.byte	0xaf
	.4byte	0xaa0
	.4byte	.LLST5
	.uleb128 0x24
	.4byte	.LASF190
	.4byte	0xfda
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$4668
	.uleb128 0x25
	.4byte	.LVL30
	.4byte	0x2441
	.uleb128 0x28
	.4byte	.LVL32
	.4byte	0x244c
	.4byte	0xfa8
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$4668
	.uleb128 0x27
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC25
	.byte	0
	.uleb128 0x26
	.4byte	.LVL34
	.4byte	0x2457
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x100
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	0xcc
	.4byte	0xfda
	.uleb128 0x16
	.4byte	0xbe
	.byte	0x12
	.byte	0
	.uleb128 0x7
	.4byte	0xfca
	.uleb128 0x29
	.4byte	.LASF194
	.byte	0x1
	.byte	0x54
	.4byte	0xde
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1095
	.uleb128 0x23
	.4byte	.LASF186
	.byte	0x1
	.byte	0x54
	.4byte	0xaa0
	.4byte	.LLST6
	.uleb128 0x24
	.4byte	.LASF190
	.4byte	0x10a5
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$4631
	.uleb128 0x2a
	.4byte	0xd53
	.4byte	.LBB18
	.4byte	.LBE18-.LBB18
	.byte	0x1
	.byte	0x57
	.4byte	0x1033
	.uleb128 0x2b
	.4byte	0xd63
	.4byte	.LLST7
	.byte	0
	.uleb128 0x25
	.4byte	.LVL37
	.4byte	0x2441
	.uleb128 0x28
	.4byte	.LVL39
	.4byte	0x244c
	.4byte	0x1084
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$4631
	.uleb128 0x27
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0
	.uleb128 0x26
	.4byte	.LVL41
	.4byte	0x2462
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	0xcc
	.4byte	0x10a5
	.uleb128 0x16
	.4byte	0xbe
	.byte	0xe
	.byte	0
	.uleb128 0x7
	.4byte	0x1095
	.uleb128 0x29
	.4byte	.LASF195
	.byte	0x1
	.byte	0x5f
	.4byte	0xde
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1160
	.uleb128 0x23
	.4byte	.LASF186
	.byte	0x1
	.byte	0x5f
	.4byte	0xaa0
	.4byte	.LLST8
	.uleb128 0x24
	.4byte	.LASF190
	.4byte	0x1170
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$4635
	.uleb128 0x2a
	.4byte	0xd53
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.byte	0x1
	.byte	0x62
	.4byte	0x10fe
	.uleb128 0x2b
	.4byte	0xd63
	.4byte	.LLST9
	.byte	0
	.uleb128 0x25
	.4byte	.LVL46
	.4byte	0x2441
	.uleb128 0x28
	.4byte	.LVL48
	.4byte	0x244c
	.4byte	0x114f
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$4635
	.uleb128 0x27
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0
	.uleb128 0x26
	.4byte	.LVL50
	.4byte	0x246d
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	0xcc
	.4byte	0x1170
	.uleb128 0x16
	.4byte	0xbe
	.byte	0xf
	.byte	0
	.uleb128 0x7
	.4byte	0x1160
	.uleb128 0x29
	.4byte	.LASF196
	.byte	0x1
	.byte	0x6a
	.4byte	0xde
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x122b
	.uleb128 0x23
	.4byte	.LASF186
	.byte	0x1
	.byte	0x6a
	.4byte	0xaa0
	.4byte	.LLST10
	.uleb128 0x24
	.4byte	.LASF190
	.4byte	0x123b
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$4639
	.uleb128 0x2a
	.4byte	0xd53
	.4byte	.LBB22
	.4byte	.LBE22-.LBB22
	.byte	0x1
	.byte	0x6d
	.4byte	0x11c9
	.uleb128 0x2b
	.4byte	0xd63
	.4byte	.LLST11
	.byte	0
	.uleb128 0x25
	.4byte	.LVL55
	.4byte	0x2441
	.uleb128 0x28
	.4byte	.LVL57
	.4byte	0x244c
	.4byte	0x121a
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$4639
	.uleb128 0x27
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0
	.uleb128 0x26
	.4byte	.LVL59
	.4byte	0x2478
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	0xcc
	.4byte	0x123b
	.uleb128 0x16
	.4byte	0xbe
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.4byte	0x122b
	.uleb128 0x29
	.4byte	.LASF197
	.byte	0x1
	.byte	0x75
	.4byte	0xde
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12f6
	.uleb128 0x23
	.4byte	.LASF186
	.byte	0x1
	.byte	0x75
	.4byte	0xaa0
	.4byte	.LLST12
	.uleb128 0x24
	.4byte	.LASF190
	.4byte	0x1306
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$4643
	.uleb128 0x2a
	.4byte	0xd53
	.4byte	.LBB24
	.4byte	.LBE24-.LBB24
	.byte	0x1
	.byte	0x78
	.4byte	0x1294
	.uleb128 0x2b
	.4byte	0xd63
	.4byte	.LLST13
	.byte	0
	.uleb128 0x25
	.4byte	.LVL64
	.4byte	0x2441
	.uleb128 0x28
	.4byte	.LVL66
	.4byte	0x244c
	.4byte	0x12e5
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$4643
	.uleb128 0x27
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0
	.uleb128 0x26
	.4byte	.LVL68
	.4byte	0x2483
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	0xcc
	.4byte	0x1306
	.uleb128 0x16
	.4byte	0xbe
	.byte	0x11
	.byte	0
	.uleb128 0x7
	.4byte	0x12f6
	.uleb128 0x29
	.4byte	.LASF198
	.byte	0x1
	.byte	0x80
	.4byte	0xde
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x13f0
	.uleb128 0x23
	.4byte	.LASF186
	.byte	0x1
	.byte	0x80
	.4byte	0xaa0
	.4byte	.LLST14
	.uleb128 0x23
	.4byte	.LASF150
	.byte	0x1
	.byte	0x80
	.4byte	0xae2
	.4byte	.LLST15
	.uleb128 0x24
	.4byte	.LASF190
	.4byte	0x13f0
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$4648
	.uleb128 0x25
	.4byte	.LVL73
	.4byte	0x2441
	.uleb128 0x28
	.4byte	.LVL75
	.4byte	0x244c
	.4byte	0x13a2
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$4648
	.uleb128 0x27
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0
	.uleb128 0x25
	.4byte	.LVL77
	.4byte	0x2441
	.uleb128 0x26
	.4byte	.LVL79
	.4byte	0x244c
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$4648
	.uleb128 0x27
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC57
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0xfca
	.uleb128 0x29
	.4byte	.LASF199
	.byte	0x1
	.byte	0x93
	.4byte	0xde
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1455
	.uleb128 0x23
	.4byte	.LASF186
	.byte	0x1
	.byte	0x93
	.4byte	0xaa0
	.4byte	.LLST16
	.uleb128 0x2a
	.4byte	0xd6f
	.4byte	.LBB26
	.4byte	.LBE26-.LBB26
	.byte	0x1
	.byte	0x95
	.4byte	0x1444
	.uleb128 0x2c
	.4byte	.LBB27
	.4byte	.LBE27-.LBB27
	.uleb128 0x2d
	.4byte	0xd7f
	.4byte	.LLST17
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL86
	.4byte	0xddd
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	.LASF200
	.byte	0x1
	.byte	0x98
	.4byte	0xde
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x14da
	.uleb128 0x23
	.4byte	.LASF186
	.byte	0x1
	.byte	0x98
	.4byte	0xaa0
	.4byte	.LLST18
	.uleb128 0x24
	.4byte	.LASF190
	.4byte	0x14da
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$4660
	.uleb128 0x25
	.4byte	.LVL89
	.4byte	0x2441
	.uleb128 0x26
	.4byte	.LVL91
	.4byte	0x244c
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$4660
	.uleb128 0x27
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0x12f6
	.uleb128 0x29
	.4byte	.LASF201
	.byte	0x1
	.byte	0xbb
	.4byte	0xde
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1573
	.uleb128 0x23
	.4byte	.LASF186
	.byte	0x1
	.byte	0xbb
	.4byte	0xaa0
	.4byte	.LLST19
	.uleb128 0x23
	.4byte	.LASF202
	.byte	0x1
	.byte	0xbb
	.4byte	0x9f
	.4byte	.LLST20
	.uleb128 0x24
	.4byte	.LASF190
	.4byte	0x1573
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$4673
	.uleb128 0x25
	.4byte	.LVL96
	.4byte	0x2441
	.uleb128 0x26
	.4byte	.LVL98
	.4byte	0x244c
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$4673
	.uleb128 0x27
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC25
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0x1095
	.uleb128 0x29
	.4byte	.LASF203
	.byte	0x1
	.byte	0xce
	.4byte	0x57
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x15a1
	.uleb128 0x23
	.4byte	.LASF186
	.byte	0x1
	.byte	0xce
	.4byte	0xaa0
	.4byte	.LLST21
	.byte	0
	.uleb128 0x29
	.4byte	.LASF204
	.byte	0x1
	.byte	0xd7
	.4byte	0xde
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1777
	.uleb128 0x23
	.4byte	.LASF186
	.byte	0x1
	.byte	0xd7
	.4byte	0xaa0
	.4byte	.LLST22
	.uleb128 0x2e
	.4byte	.LASF205
	.byte	0x1
	.byte	0xd7
	.4byte	0xbe0
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x24
	.4byte	.LASF190
	.4byte	0x1777
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$4681
	.uleb128 0x2f
	.string	"ret"
	.byte	0x1
	.byte	0xdb
	.4byte	0xde
	.4byte	.LLST23
	.uleb128 0x25
	.4byte	.LVL114
	.4byte	0x2441
	.uleb128 0x28
	.4byte	.LVL116
	.4byte	0x244c
	.4byte	0x1645
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$4681
	.uleb128 0x27
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0
	.uleb128 0x25
	.4byte	.LVL118
	.4byte	0x2441
	.uleb128 0x28
	.4byte	.LVL120
	.4byte	0x244c
	.4byte	0x1696
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$4681
	.uleb128 0x27
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC79
	.byte	0
	.uleb128 0x28
	.4byte	.LVL122
	.4byte	0x1240
	.4byte	0x16aa
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL123
	.4byte	0xfdf
	.4byte	0x16be
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL126
	.4byte	0x1175
	.4byte	0x16d2
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL127
	.4byte	0x10aa
	.4byte	0x16e6
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL130
	.4byte	0x1175
	.4byte	0x16fa
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL131
	.4byte	0xfdf
	.4byte	0x170e
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL134
	.4byte	0x1240
	.4byte	0x1722
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL135
	.4byte	0x10aa
	.4byte	0x1736
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL138
	.4byte	0x2441
	.uleb128 0x26
	.4byte	.LVL139
	.4byte	0x244c
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC81
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0xfca
	.uleb128 0x29
	.4byte	.LASF206
	.byte	0x1
	.byte	0xf5
	.4byte	0xde
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1881
	.uleb128 0x23
	.4byte	.LASF186
	.byte	0x1
	.byte	0xf5
	.4byte	0xaa0
	.4byte	.LLST24
	.uleb128 0x23
	.4byte	.LASF147
	.byte	0x1
	.byte	0xf5
	.4byte	0xb18
	.4byte	.LLST25
	.uleb128 0x24
	.4byte	.LASF190
	.4byte	0x1881
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$4693
	.uleb128 0x30
	.string	"ret"
	.byte	0x1
	.byte	0xfc
	.4byte	0xde
	.byte	0
	.uleb128 0x25
	.4byte	.LVL142
	.4byte	0x2441
	.uleb128 0x28
	.4byte	.LVL144
	.4byte	0x244c
	.4byte	0x181f
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$4693
	.uleb128 0x27
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0
	.uleb128 0x25
	.4byte	.LVL146
	.4byte	0x2441
	.uleb128 0x28
	.4byte	.LVL147
	.4byte	0x244c
	.4byte	0x185c
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC88
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL150
	.4byte	0xf20
	.4byte	0x1870
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL151
	.4byte	0xe86
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0xfca
	.uleb128 0x31
	.4byte	.LASF207
	.byte	0x1
	.2byte	0x10f
	.4byte	0xde
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1ae8
	.uleb128 0x32
	.4byte	.LASF208
	.byte	0x1
	.2byte	0x10f
	.4byte	0x1ae8
	.4byte	.LLST26
	.uleb128 0x21
	.4byte	.LASF209
	.byte	0x1
	.2byte	0x111
	.4byte	0xaa
	.uleb128 0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x20
	.4byte	.LASF210
	.byte	0x1
	.2byte	0x112
	.4byte	0x9f
	.4byte	.LLST27
	.uleb128 0x20
	.4byte	.LASF211
	.byte	0x1
	.2byte	0x113
	.4byte	0x9f
	.4byte	.LLST28
	.uleb128 0x20
	.4byte	.LASF212
	.byte	0x1
	.2byte	0x114
	.4byte	0x89
	.4byte	.LLST29
	.uleb128 0x20
	.4byte	.LASF213
	.byte	0x1
	.2byte	0x115
	.4byte	0x89
	.4byte	.LLST30
	.uleb128 0x20
	.4byte	.LASF214
	.byte	0x1
	.2byte	0x116
	.4byte	0x89
	.4byte	.LLST31
	.uleb128 0x20
	.4byte	.LASF215
	.byte	0x1
	.2byte	0x117
	.4byte	0x89
	.4byte	.LLST32
	.uleb128 0x20
	.4byte	.LASF216
	.byte	0x1
	.2byte	0x118
	.4byte	0x89
	.4byte	.LLST33
	.uleb128 0x33
	.4byte	0xd53
	.4byte	.LBB28
	.4byte	.LBE28-.LBB28
	.byte	0x1
	.2byte	0x127
	.4byte	0x1951
	.uleb128 0x2b
	.4byte	0xd63
	.4byte	.LLST34
	.byte	0
	.uleb128 0x25
	.4byte	.LVL161
	.4byte	0x2441
	.uleb128 0x28
	.4byte	.LVL162
	.4byte	0x244c
	.4byte	0x1988
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC93
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.uleb128 0x25
	.4byte	.LVL165
	.4byte	0x2441
	.uleb128 0x28
	.4byte	.LVL166
	.4byte	0x244c
	.4byte	0x19bf
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC95
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.uleb128 0x28
	.4byte	.LVL172
	.4byte	0x248e
	.4byte	0x19d3
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL180
	.4byte	0xf20
	.4byte	0x19e7
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL182
	.4byte	0xe86
	.4byte	0x19fb
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL184
	.4byte	0xfdf
	.4byte	0x1a0f
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL186
	.4byte	0x10aa
	.4byte	0x1a23
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL188
	.4byte	0x1175
	.4byte	0x1a37
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL190
	.4byte	0x1240
	.4byte	0x1a4b
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL191
	.4byte	0x2441
	.uleb128 0x28
	.4byte	.LVL192
	.4byte	0x244c
	.4byte	0x1aaf
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC100
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.uleb128 0x27
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.uleb128 0x27
	.uleb128 0x2
	.byte	0x71
	.sleb128 8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.uleb128 0x27
	.uleb128 0x2
	.byte	0x71
	.sleb128 12
	.uleb128 0x3
	.byte	0x91
	.sleb128 -36
	.byte	0x6
	.uleb128 0x27
	.uleb128 0x2
	.byte	0x71
	.sleb128 16
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL193
	.4byte	0x130b
	.4byte	0x1ac3
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL194
	.4byte	0x13f5
	.4byte	0x1ad7
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL195
	.4byte	0x1455
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1aee
	.uleb128 0x7
	.4byte	0xbb0
	.uleb128 0x31
	.4byte	.LASF217
	.byte	0x1
	.2byte	0x177
	.4byte	0xde
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c48
	.uleb128 0x32
	.4byte	.LASF186
	.byte	0x1
	.2byte	0x177
	.4byte	0xaa0
	.4byte	.LLST35
	.uleb128 0x32
	.4byte	.LASF218
	.byte	0x1
	.2byte	0x177
	.4byte	0xc27
	.4byte	.LLST36
	.uleb128 0x34
	.4byte	.LASF184
	.byte	0x1
	.2byte	0x177
	.4byte	0xb5
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x24
	.4byte	.LASF190
	.4byte	0x1c58
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$4721
	.uleb128 0x25
	.4byte	.LVL201
	.4byte	0x2441
	.uleb128 0x28
	.4byte	.LVL203
	.4byte	0x244c
	.4byte	0x1b9b
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$4721
	.uleb128 0x27
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC108
	.byte	0
	.uleb128 0x25
	.4byte	.LVL205
	.4byte	0x2441
	.uleb128 0x28
	.4byte	.LVL207
	.4byte	0x244c
	.4byte	0x1bec
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$4721
	.uleb128 0x27
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0
	.uleb128 0x28
	.4byte	.LVL209
	.4byte	0x2499
	.4byte	0x1c03
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	gpio_spinlock
	.byte	0
	.uleb128 0x28
	.4byte	.LVL210
	.4byte	0x1455
	.4byte	0x1c17
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL212
	.4byte	0x24a4
	.uleb128 0x28
	.4byte	.LVL213
	.4byte	0xddd
	.4byte	0x1c34
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL214
	.4byte	0x24af
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	gpio_spinlock
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	0xcc
	.4byte	0x1c58
	.uleb128 0x16
	.4byte	0xbe
	.byte	0x14
	.byte	0
	.uleb128 0x7
	.4byte	0x1c48
	.uleb128 0x31
	.4byte	.LASF219
	.byte	0x1
	.2byte	0x186
	.4byte	0xde
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1d77
	.uleb128 0x32
	.4byte	.LASF186
	.byte	0x1
	.2byte	0x186
	.4byte	0xaa0
	.4byte	.LLST37
	.uleb128 0x24
	.4byte	.LASF190
	.4byte	0x1d87
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$4725
	.uleb128 0x25
	.4byte	.LVL217
	.4byte	0x2441
	.uleb128 0x28
	.4byte	.LVL219
	.4byte	0x244c
	.4byte	0x1ce7
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$4725
	.uleb128 0x27
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC108
	.byte	0
	.uleb128 0x25
	.4byte	.LVL221
	.4byte	0x2441
	.uleb128 0x28
	.4byte	.LVL223
	.4byte	0x244c
	.4byte	0x1d38
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$4725
	.uleb128 0x27
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0
	.uleb128 0x28
	.4byte	.LVL225
	.4byte	0x2499
	.4byte	0x1d4f
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	gpio_spinlock
	.byte	0
	.uleb128 0x28
	.4byte	.LVL226
	.4byte	0x1455
	.4byte	0x1d63
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL228
	.4byte	0x24af
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	gpio_spinlock
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	0xcc
	.4byte	0x1d87
	.uleb128 0x16
	.4byte	0xbe
	.byte	0x17
	.byte	0
	.uleb128 0x7
	.4byte	0x1d77
	.uleb128 0x35
	.4byte	.LASF259
	.byte	0x1
	.2byte	0x1a3
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1dd9
	.uleb128 0x28
	.4byte	.LVL229
	.4byte	0x2499
	.4byte	0x1db6
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL230
	.4byte	0x24ba
	.uleb128 0x25
	.4byte	.LVL231
	.4byte	0x24c5
	.uleb128 0x26
	.4byte	.LVL232
	.4byte	0x24af
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LASF220
	.byte	0x1
	.2byte	0x1b0
	.4byte	0xde
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1eb4
	.uleb128 0x1f
	.string	"fn"
	.byte	0x1
	.2byte	0x1b0
	.4byte	0xe9
	.4byte	.LLST38
	.uleb128 0x36
	.string	"arg"
	.byte	0x1
	.2byte	0x1b0
	.4byte	0xb5
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x34
	.4byte	.LASF221
	.byte	0x1
	.2byte	0x1b0
	.4byte	0x57
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x34
	.4byte	.LASF222
	.byte	0x1
	.2byte	0x1b0
	.4byte	0x1eb4
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x24
	.4byte	.LASF190
	.4byte	0x1eba
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$4740
	.uleb128 0x25
	.4byte	.LVL234
	.4byte	0x2441
	.uleb128 0x28
	.4byte	.LVL236
	.4byte	0x244c
	.4byte	0x1e8c
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$4740
	.uleb128 0x27
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC128
	.byte	0
	.uleb128 0x26
	.4byte	.LVL238
	.4byte	0x24d0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x46
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xc32
	.uleb128 0x7
	.4byte	0x12f6
	.uleb128 0x31
	.4byte	.LASF223
	.byte	0x1
	.2byte	0x194
	.4byte	0xde
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1fc8
	.uleb128 0x32
	.4byte	.LASF221
	.byte	0x1
	.2byte	0x194
	.4byte	0x57
	.4byte	.LLST39
	.uleb128 0x24
	.4byte	.LASF190
	.4byte	0x1fc8
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$4729
	.uleb128 0x37
	.string	"ret"
	.byte	0x1
	.2byte	0x197
	.4byte	0xde
	.4byte	.LLST40
	.uleb128 0x25
	.4byte	.LVL241
	.4byte	0x2441
	.uleb128 0x28
	.4byte	.LVL243
	.4byte	0x244c
	.4byte	0x1f59
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$4729
	.uleb128 0x27
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC134
	.byte	0
	.uleb128 0x28
	.4byte	.LVL245
	.4byte	0x2499
	.4byte	0x1f70
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	gpio_spinlock
	.byte	0
	.uleb128 0x28
	.4byte	.LVL246
	.4byte	0x24db
	.4byte	0x1f89
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x28
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x28
	.4byte	.LVL247
	.4byte	0x1dd9
	.4byte	0x1fb4
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	gpio_intr_service
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	gpio_isr_handle
	.byte	0
	.uleb128 0x26
	.4byte	.LVL251
	.4byte	0x24af
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	gpio_spinlock
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0xe71
	.uleb128 0x31
	.4byte	.LASF224
	.byte	0x1
	.2byte	0x1b7
	.4byte	0xde
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x20b1
	.uleb128 0x32
	.4byte	.LASF186
	.byte	0x1
	.2byte	0x1b7
	.4byte	0xaa0
	.4byte	.LLST41
	.uleb128 0x32
	.4byte	.LASF150
	.byte	0x1
	.2byte	0x1b7
	.4byte	0xae2
	.4byte	.LLST42
	.uleb128 0x24
	.4byte	.LASF190
	.4byte	0x20b1
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$4745
	.uleb128 0x37
	.string	"ret"
	.byte	0x1
	.2byte	0x1ba
	.4byte	0xde
	.4byte	.LLST43
	.uleb128 0x25
	.4byte	.LVL253
	.4byte	0x2441
	.uleb128 0x28
	.4byte	.LVL255
	.4byte	0x244c
	.4byte	0x2077
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$4745
	.uleb128 0x27
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0
	.uleb128 0x25
	.4byte	.LVL261
	.4byte	0x2441
	.uleb128 0x26
	.4byte	.LVL262
	.4byte	0x244c
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC145
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0xfca
	.uleb128 0x31
	.4byte	.LASF225
	.byte	0x1
	.2byte	0x1c5
	.4byte	0xde
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x213d
	.uleb128 0x32
	.4byte	.LASF186
	.byte	0x1
	.2byte	0x1c5
	.4byte	0xaa0
	.4byte	.LLST44
	.uleb128 0x24
	.4byte	.LASF190
	.4byte	0x213d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$4750
	.uleb128 0x25
	.4byte	.LVL265
	.4byte	0x2441
	.uleb128 0x26
	.4byte	.LVL267
	.4byte	0x244c
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$4750
	.uleb128 0x27
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0xf0b
	.uleb128 0x31
	.4byte	.LASF226
	.byte	0x1
	.2byte	0x1cc
	.4byte	0xde
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2262
	.uleb128 0x32
	.4byte	.LASF186
	.byte	0x1
	.2byte	0x1cc
	.4byte	0xaa0
	.4byte	.LLST45
	.uleb128 0x32
	.4byte	.LASF227
	.byte	0x1
	.2byte	0x1cc
	.4byte	0xc1c
	.4byte	.LLST46
	.uleb128 0x24
	.4byte	.LASF190
	.4byte	0x2272
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$4755
	.uleb128 0x33
	.4byte	0xd53
	.4byte	.LBB30
	.4byte	.LBE30-.LBB30
	.byte	0x1
	.2byte	0x1d1
	.4byte	0x21a9
	.uleb128 0x2b
	.4byte	0xd63
	.4byte	.LLST47
	.byte	0
	.uleb128 0x25
	.4byte	.LVL272
	.4byte	0x2441
	.uleb128 0x28
	.4byte	.LVL274
	.4byte	0x244c
	.4byte	0x21fa
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$4755
	.uleb128 0x27
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0
	.uleb128 0x25
	.4byte	.LVL276
	.4byte	0x2441
	.uleb128 0x28
	.4byte	.LVL278
	.4byte	0x244c
	.4byte	0x224b
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$4755
	.uleb128 0x27
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC158
	.byte	0
	.uleb128 0x26
	.4byte	.LVL280
	.4byte	0x24e6
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	0xcc
	.4byte	0x2272
	.uleb128 0x16
	.4byte	0xbe
	.byte	0x19
	.byte	0
	.uleb128 0x7
	.4byte	0x2262
	.uleb128 0x31
	.4byte	.LASF228
	.byte	0x1
	.2byte	0x1d9
	.4byte	0xde
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2395
	.uleb128 0x32
	.4byte	.LASF186
	.byte	0x1
	.2byte	0x1d9
	.4byte	0xaa0
	.4byte	.LLST48
	.uleb128 0x34
	.4byte	.LASF227
	.byte	0x1
	.2byte	0x1d9
	.4byte	0x2395
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x24
	.4byte	.LASF190
	.4byte	0x239b
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$4760
	.uleb128 0x33
	.4byte	0xd53
	.4byte	.LBB32
	.4byte	.LBE32-.LBB32
	.byte	0x1
	.2byte	0x1de
	.4byte	0x22dc
	.uleb128 0x2b
	.4byte	0xd63
	.4byte	.LLST49
	.byte	0
	.uleb128 0x25
	.4byte	.LVL286
	.4byte	0x2441
	.uleb128 0x28
	.4byte	.LVL288
	.4byte	0x244c
	.4byte	0x232d
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$4760
	.uleb128 0x27
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0
	.uleb128 0x25
	.4byte	.LVL290
	.4byte	0x2441
	.uleb128 0x28
	.4byte	.LVL292
	.4byte	0x244c
	.4byte	0x237e
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$4760
	.uleb128 0x27
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC167
	.byte	0
	.uleb128 0x26
	.4byte	.LVL294
	.4byte	0x24f1
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xc1c
	.uleb128 0x7
	.4byte	0x2262
	.uleb128 0x38
	.4byte	.LASF229
	.byte	0x1
	.byte	0x19
	.4byte	0x23b2
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC4
	.byte	0x9f
	.uleb128 0x7
	.4byte	0xd3
	.uleb128 0x38
	.4byte	.LASF230
	.byte	0x1
	.byte	0x50
	.4byte	0x23c8
	.uleb128 0x5
	.byte	0x3
	.4byte	gpio_isr_func
	.uleb128 0x6
	.byte	0x4
	.4byte	0xd48
	.uleb128 0x38
	.4byte	.LASF231
	.byte	0x1
	.byte	0x51
	.4byte	0xc32
	.uleb128 0x5
	.byte	0x3
	.4byte	gpio_isr_handle
	.uleb128 0x38
	.4byte	.LASF232
	.byte	0x1
	.byte	0x52
	.4byte	0x13c
	.uleb128 0x5
	.byte	0x3
	.4byte	gpio_spinlock
	.uleb128 0x39
	.4byte	.LASF233
	.byte	0x9
	.byte	0xd0
	.4byte	0x9aa
	.uleb128 0x15
	.4byte	0x9f
	.4byte	0x240b
	.uleb128 0x16
	.4byte	0xbe
	.byte	0x27
	.byte	0
	.uleb128 0x3a
	.4byte	.LASF234
	.byte	0x1
	.byte	0x20
	.4byte	0x241c
	.uleb128 0x5
	.byte	0x3
	.4byte	GPIO_PIN_MUX_REG
	.uleb128 0x7
	.4byte	0x23fb
	.uleb128 0x15
	.4byte	0xce1
	.4byte	0x2431
	.uleb128 0x16
	.4byte	0xbe
	.byte	0x27
	.byte	0
	.uleb128 0x39
	.4byte	.LASF235
	.byte	0x2
	.byte	0x3f
	.4byte	0x243c
	.uleb128 0x7
	.4byte	0x2421
	.uleb128 0x3b
	.4byte	.LASF236
	.4byte	.LASF236
	.byte	0xb
	.byte	0x4c
	.uleb128 0x3b
	.4byte	.LASF237
	.4byte	.LASF237
	.byte	0xb
	.byte	0x60
	.uleb128 0x3b
	.4byte	.LASF238
	.4byte	.LASF238
	.byte	0xc
	.byte	0xea
	.uleb128 0x3b
	.4byte	.LASF239
	.4byte	.LASF239
	.byte	0x2
	.byte	0x9a
	.uleb128 0x3b
	.4byte	.LASF240
	.4byte	.LASF240
	.byte	0x2
	.byte	0xb6
	.uleb128 0x3b
	.4byte	.LASF241
	.4byte	.LASF241
	.byte	0x2
	.byte	0xa8
	.uleb128 0x3b
	.4byte	.LASF242
	.4byte	.LASF242
	.byte	0x2
	.byte	0xc4
	.uleb128 0x3b
	.4byte	.LASF243
	.4byte	.LASF243
	.byte	0x2
	.byte	0x65
	.uleb128 0x3b
	.4byte	.LASF244
	.4byte	.LASF244
	.byte	0x8
	.byte	0xd9
	.uleb128 0x3b
	.4byte	.LASF245
	.4byte	.LASF245
	.byte	0x7
	.byte	0xdd
	.uleb128 0x3b
	.4byte	.LASF246
	.4byte	.LASF246
	.byte	0x8
	.byte	0xd8
	.uleb128 0x3b
	.4byte	.LASF247
	.4byte	.LASF247
	.byte	0x7
	.byte	0xd3
	.uleb128 0x3b
	.4byte	.LASF248
	.4byte	.LASF248
	.byte	0xd
	.byte	0x5a
	.uleb128 0x3b
	.4byte	.LASF249
	.4byte	.LASF249
	.byte	0x7
	.byte	0x99
	.uleb128 0x3b
	.4byte	.LASF250
	.4byte	.LASF250
	.byte	0xd
	.byte	0x57
	.uleb128 0x3b
	.4byte	.LASF251
	.4byte	.LASF251
	.byte	0x2
	.byte	0xf8
	.uleb128 0x3c
	.4byte	.LASF252
	.4byte	.LASF252
	.byte	0x2
	.2byte	0x104
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
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
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
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
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x8
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
	.uleb128 0x17
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
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x5
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3b
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
	.4byte	.LFE25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL5
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL15
	.4byte	.LVL17
	.2byte	0x3
	.byte	0x72
	.sleb128 -32
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x3
	.byte	0x72
	.sleb128 -32
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL10
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL16
	.4byte	.LVL18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL20
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL22
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL24
	.4byte	.LVL26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x7
	.byte	0x72
	.sleb128 -268243276
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL29
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL35
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL36
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL38
	.4byte	.LVL40
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL40
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
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL40
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
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL45
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL47
	.4byte	.LVL49
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL49
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL53
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL49
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL53
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL54
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL56
	.4byte	.LVL58
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL58
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
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL58
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
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL63
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL65
	.4byte	.LVL67
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL67
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL69
	.4byte	.LVL70
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL71
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL67
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL69
	.4byte	.LVL70
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL71
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL72
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL74
	.4byte	.LVL76
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL76
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL78
	.4byte	.LVL80
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL80
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL81
	.4byte	.LVL82
	.2byte	0x3
	.byte	0x72
	.sleb128 -32
	.byte	0x9f
	.4byte	.LVL82
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL72
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL83
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL84
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL87
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL85
	.4byte	.LVL86-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL88
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL90
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
	.2byte	0x3
	.byte	0x72
	.sleb128 -32
	.byte	0x9f
	.4byte	.LVL94
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL95
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
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL101
	.4byte	.LVL102
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL102
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL103
	.4byte	.LVL104
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL104
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL106
	.4byte	.LVL107
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL107
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL108
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL95
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL100
	.4byte	.LVL104
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL104
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL105
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
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
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL113
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL115
	.4byte	.LVL117
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL117
	.4byte	.LVL119
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL119
	.4byte	.LVL121
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL121
	.4byte	.LVL124
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL124
	.4byte	.LVL125
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL125
	.4byte	.LVL128
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL128
	.4byte	.LVL129
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL129
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
	.4byte	.LVL136
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL136
	.4byte	.LVL137
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL137
	.4byte	.LVL140
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL140
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL121
	.4byte	.LVL139
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL139
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xa
	.2byte	0x102
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL141
	.4byte	.LVL143
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL143
	.4byte	.LVL145
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL145
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
	.4byte	.LVL152
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL152
	.4byte	.LVL154
	.2byte	0x3
	.byte	0x72
	.sleb128 -32
	.byte	0x9f
	.4byte	.LVL154
	.4byte	.LVL155
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL155
	.4byte	.LVL156
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL156
	.4byte	.LVL158
	.2byte	0x3
	.byte	0x72
	.sleb128 -32
	.byte	0x9f
	.4byte	.LVL158
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL141
	.4byte	.LVL153
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL153
	.4byte	.LVL155
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL155
	.4byte	.LVL157
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL157
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL159
	.4byte	.LVL163
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL163
	.4byte	.LVL164
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL164
	.4byte	.LVL167
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL167
	.4byte	.LVL168
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL168
	.4byte	.LVL199
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL199
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL160
	.4byte	.LVL169
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL170
	.4byte	.LVL198
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL198
	.4byte	.LFE24
	.2byte	0xa
	.byte	0x73
	.sleb128 -1
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	GPIO_PIN_MUX_REG
	.byte	0x22
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL160
	.4byte	.LVL169
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL169
	.4byte	.LFE24
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL160
	.4byte	.LVL169
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL169
	.4byte	.LVL173
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL173
	.4byte	.LVL174
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL174
	.4byte	.LFE24
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL160
	.4byte	.LVL169
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL169
	.4byte	.LVL179
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	.LVL179
	.4byte	.LVL181
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL181
	.4byte	.LFE24
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL160
	.4byte	.LVL169
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL169
	.4byte	.LVL176
	.2byte	0x2
	.byte	0x91
	.sleb128 -40
	.4byte	.LVL176
	.4byte	.LVL177
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL177
	.4byte	.LFE24
	.2byte	0x2
	.byte	0x91
	.sleb128 -40
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL160
	.4byte	.LVL169
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL169
	.4byte	.LVL183
	.2byte	0x2
	.byte	0x91
	.sleb128 -36
	.4byte	.LVL183
	.4byte	.LVL185
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL185
	.4byte	.LFE24
	.2byte	0x2
	.byte	0x91
	.sleb128 -36
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL160
	.4byte	.LVL169
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL169
	.4byte	.LVL187
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL187
	.4byte	.LVL189
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL189
	.4byte	.LFE24
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL171
	.4byte	.LVL196
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL200
	.4byte	.LVL202
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL202
	.4byte	.LVL204
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL204
	.4byte	.LVL206
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL206
	.4byte	.LVL208
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL208
	.4byte	.LVL215
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL215
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL200
	.4byte	.LVL211
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL211
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL216
	.4byte	.LVL218
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL218
	.4byte	.LVL220
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL220
	.4byte	.LVL222
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL222
	.4byte	.LVL224
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL224
	.4byte	.LVL227
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL227
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL233
	.4byte	.LVL235
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL235
	.4byte	.LVL237
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL237
	.4byte	.LVL239
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL239
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL240
	.4byte	.LVL242
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL242
	.4byte	.LVL244
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL244
	.4byte	.LVL248
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL248
	.4byte	.LVL249
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL249
	.4byte	.LVL250
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL250
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL248
	.4byte	.LVL249
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL250
	.4byte	.LFE28
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL252
	.4byte	.LVL254
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL254
	.4byte	.LVL256
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL256
	.4byte	.LVL257
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL257
	.4byte	.LVL258
	.2byte	0x3
	.byte	0x72
	.sleb128 -32
	.byte	0x9f
	.4byte	.LVL258
	.4byte	.LVL260
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL260
	.4byte	.LVL263
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL263
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL252
	.4byte	.LVL259
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL259
	.4byte	.LVL260
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL260
	.4byte	.LFE31
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL256
	.4byte	.LVL262
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL262
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xa
	.2byte	0x102
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL264
	.4byte	.LVL266
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL266
	.4byte	.LVL268
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL268
	.4byte	.LVL269
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL269
	.4byte	.LVL270
	.2byte	0x3
	.byte	0x72
	.sleb128 -32
	.byte	0x9f
	.4byte	.LVL270
	.4byte	.LFE32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL271
	.4byte	.LVL273
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL273
	.4byte	.LVL275
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL275
	.4byte	.LVL277
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL277
	.4byte	.LVL279
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL279
	.4byte	.LVL281
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL281
	.4byte	.LVL282
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL282
	.4byte	.LVL283
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL283
	.4byte	.LFE33
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL271
	.4byte	.LVL284
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL284
	.4byte	.LFE33
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL279
	.4byte	.LVL281
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL281
	.4byte	.LVL282
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL282
	.4byte	.LVL283
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL283
	.4byte	.LFE33
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL285
	.4byte	.LVL287
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL287
	.4byte	.LVL289
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL289
	.4byte	.LVL291
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL291
	.4byte	.LVL293
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL293
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
	.4byte	.LFE34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL293
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
	.4byte	.LFE34
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
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF202:
	.string	"level"
.LASF255:
	.string	"C:\\\\esp\\\\ArkPOS2-esp\\\\build\\\\driver"
.LASF216:
	.string	"pd_en"
.LASF235:
	.string	"rtc_gpio_desc"
.LASF16:
	.string	"sizetype"
.LASF41:
	.string	"start"
.LASF152:
	.string	"GPIO_PULLUP_ONLY"
.LASF85:
	.string	"cali_data"
.LASF22:
	.string	"owner"
.LASF37:
	.string	"int_ena"
.LASF143:
	.string	"GPIO_PULLDOWN_DISABLE"
.LASF130:
	.string	"GPIO_INTR_LOW_LEVEL"
.LASF12:
	.string	"int32_t"
.LASF167:
	.string	"pullup"
.LASF137:
	.string	"GPIO_MODE_INPUT_OUTPUT_OD"
.LASF127:
	.string	"GPIO_INTR_POSEDGE"
.LASF256:
	.string	"rtc_gpio_is_valid_gpio"
.LASF59:
	.string	"sdio_select"
.LASF245:
	.string	"esp_intr_get_cpu"
.LASF53:
	.string	"bt_select"
.LASF153:
	.string	"GPIO_PULLDOWN_ONLY"
.LASF209:
	.string	"gpio_pin_mask"
.LASF36:
	.string	"config"
.LASF73:
	.string	"reserved_5c"
.LASF186:
	.string	"gpio_num"
.LASF258:
	.string	"gpio_intr_service"
.LASF65:
	.string	"enable1_w1tc"
.LASF4:
	.string	"__uint8_t"
.LASF199:
	.string	"gpio_intr_enable"
.LASF210:
	.string	"io_reg"
.LASF64:
	.string	"enable1_w1ts"
.LASF30:
	.string	"intr"
.LASF128:
	.string	"GPIO_INTR_NEGEDGE"
.LASF84:
	.string	"cali_conf"
.LASF254:
	.string	"C:/esp/esp-idf/components/driver/gpio.c"
.LASF15:
	.string	"long int"
.LASF193:
	.string	"gpio_output_enable"
.LASF252:
	.string	"rtc_gpio_get_drive_capability"
.LASF34:
	.string	"int_type"
.LASF81:
	.string	"pcpu_int1"
.LASF196:
	.string	"gpio_pulldown_en"
.LASF194:
	.string	"gpio_pullup_en"
.LASF75:
	.string	"acpu_nmi_int"
.LASF188:
	.string	"gpio_intr_status_h"
.LASF134:
	.string	"GPIO_MODE_INPUT"
.LASF192:
	.string	"gpio_output_disable"
.LASF0:
	.string	"signed char"
.LASF42:
	.string	"value_sync2"
.LASF11:
	.string	"uint8_t"
.LASF218:
	.string	"isr_handler"
.LASF90:
	.string	"GPIO_NUM_0"
.LASF91:
	.string	"GPIO_NUM_1"
.LASF92:
	.string	"GPIO_NUM_2"
.LASF93:
	.string	"GPIO_NUM_3"
.LASF94:
	.string	"GPIO_NUM_4"
.LASF95:
	.string	"GPIO_NUM_5"
.LASF96:
	.string	"GPIO_NUM_6"
.LASF97:
	.string	"GPIO_NUM_7"
.LASF98:
	.string	"GPIO_NUM_8"
.LASF99:
	.string	"GPIO_NUM_9"
.LASF176:
	.string	"rtc_gpio_desc_t"
.LASF207:
	.string	"gpio_config"
.LASF151:
	.string	"gpio_config_t"
.LASF230:
	.string	"gpio_isr_func"
.LASF1:
	.string	"unsigned char"
.LASF164:
	.string	"gpio_isr_t"
.LASF135:
	.string	"GPIO_MODE_OUTPUT"
.LASF190:
	.string	"__FUNCTION__"
.LASF49:
	.string	"inv_sel"
.LASF177:
	.string	"ESP_LOG_NONE"
.LASF220:
	.string	"gpio_isr_register"
.LASF89:
	.string	"_Bool"
.LASF229:
	.string	"GPIO_TAG"
.LASF203:
	.string	"gpio_get_level"
.LASF18:
	.string	"char"
.LASF200:
	.string	"gpio_intr_disable"
.LASF126:
	.string	"GPIO_INTR_DISABLE"
.LASF189:
	.string	"core_id"
.LASF178:
	.string	"ESP_LOG_ERROR"
.LASF44:
	.string	"rdy_real"
.LASF162:
	.string	"GPIO_DRIVE_CAP_MAX"
.LASF165:
	.string	"gpio_isr_handle_t"
.LASF87:
	.string	"func_out_sel_cfg"
.LASF246:
	.string	"vTaskExitCritical"
.LASF163:
	.string	"gpio_drive_cap_t"
.LASF187:
	.string	"gpio_intr_status"
.LASF136:
	.string	"GPIO_MODE_OUTPUT_OD"
.LASF228:
	.string	"gpio_get_drive_capability"
.LASF212:
	.string	"input_en"
.LASF113:
	.string	"GPIO_NUM_25"
.LASF223:
	.string	"gpio_install_isr_service"
.LASF63:
	.string	"enable1"
.LASF82:
	.string	"pcpu_nmi_int1"
.LASF58:
	.string	"out1_w1tc"
.LASF174:
	.string	"drv_s"
.LASF57:
	.string	"out1_w1ts"
.LASF144:
	.string	"GPIO_PULLDOWN_ENABLE"
.LASF214:
	.string	"od_en"
.LASF240:
	.string	"rtc_gpio_pullup_dis"
.LASF248:
	.string	"free"
.LASF9:
	.string	"__uint64_t"
.LASF17:
	.string	"long unsigned int"
.LASF259:
	.string	"gpio_uninstall_isr_service"
.LASF234:
	.string	"GPIO_PIN_MUX_REG"
.LASF67:
	.string	"status"
.LASF213:
	.string	"output_en"
.LASF172:
	.string	"hold_force"
.LASF117:
	.string	"GPIO_NUM_33"
.LASF48:
	.string	"sig_in_sel"
.LASF125:
	.string	"gpio_num_t"
.LASF227:
	.string	"strength"
.LASF46:
	.string	"func_sel"
.LASF184:
	.string	"args"
.LASF141:
	.string	"GPIO_PULLUP_ENABLE"
.LASF6:
	.string	"__uint32_t"
.LASF80:
	.string	"acpu_nmi_int1"
.LASF133:
	.string	"gpio_int_type_t"
.LASF8:
	.string	"long long int"
.LASF175:
	.string	"rtc_num"
.LASF221:
	.string	"intr_alloc_flags"
.LASF60:
	.string	"enable"
.LASF20:
	.string	"intr_handle_data_t"
.LASF146:
	.string	"pin_bit_mask"
.LASF169:
	.string	"slpsel"
.LASF160:
	.string	"GPIO_DRIVE_CAP_DEFAULT"
.LASF138:
	.string	"GPIO_MODE_INPUT_OUTPUT"
.LASF19:
	.string	"esp_err_t"
.LASF100:
	.string	"GPIO_NUM_10"
.LASF101:
	.string	"GPIO_NUM_11"
.LASF102:
	.string	"GPIO_NUM_12"
.LASF103:
	.string	"GPIO_NUM_13"
.LASF104:
	.string	"GPIO_NUM_14"
.LASF105:
	.string	"GPIO_NUM_15"
.LASF106:
	.string	"GPIO_NUM_16"
.LASF107:
	.string	"GPIO_NUM_17"
.LASF108:
	.string	"GPIO_NUM_18"
.LASF109:
	.string	"GPIO_NUM_19"
.LASF124:
	.string	"GPIO_NUM_MAX"
.LASF253:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF158:
	.string	"GPIO_DRIVE_CAP_1"
.LASF159:
	.string	"GPIO_DRIVE_CAP_2"
.LASF161:
	.string	"GPIO_DRIVE_CAP_3"
.LASF40:
	.string	"reserved10"
.LASF56:
	.string	"out1"
.LASF52:
	.string	"reserved12"
.LASF28:
	.string	"reserved16"
.LASF38:
	.string	"reserved18"
.LASF23:
	.string	"count"
.LASF69:
	.string	"status_w1tc"
.LASF225:
	.string	"gpio_wakeup_disable"
.LASF148:
	.string	"pull_up_en"
.LASF7:
	.string	"unsigned int"
.LASF110:
	.string	"GPIO_NUM_21"
.LASF111:
	.string	"GPIO_NUM_22"
.LASF112:
	.string	"GPIO_NUM_23"
.LASF68:
	.string	"status_w1ts"
.LASF114:
	.string	"GPIO_NUM_26"
.LASF115:
	.string	"GPIO_NUM_27"
.LASF183:
	.string	"esp_log_level_t"
.LASF231:
	.string	"gpio_isr_handle"
.LASF43:
	.string	"reserved20"
.LASF156:
	.string	"gpio_pull_mode_t"
.LASF29:
	.string	"intr_st"
.LASF179:
	.string	"ESP_LOG_WARN"
.LASF155:
	.string	"GPIO_FLOATING"
.LASF116:
	.string	"GPIO_NUM_32"
.LASF50:
	.string	"oen_sel"
.LASF118:
	.string	"GPIO_NUM_34"
.LASF119:
	.string	"GPIO_NUM_35"
.LASF120:
	.string	"GPIO_NUM_36"
.LASF121:
	.string	"GPIO_NUM_37"
.LASF122:
	.string	"GPIO_NUM_38"
.LASF123:
	.string	"GPIO_NUM_39"
.LASF131:
	.string	"GPIO_INTR_HIGH_LEVEL"
.LASF173:
	.string	"drv_v"
.LASF185:
	.string	"gpio_isr_func_t"
.LASF32:
	.string	"pad_driver"
.LASF21:
	.string	"intr_handle_t"
.LASF182:
	.string	"ESP_LOG_VERBOSE"
.LASF45:
	.string	"rdy_sync2"
.LASF250:
	.string	"calloc"
.LASF39:
	.string	"rtc_max"
.LASF197:
	.string	"gpio_pulldown_dis"
.LASF222:
	.string	"handle"
.LASF83:
	.string	"cpusdio_int1"
.LASF236:
	.string	"esp_log_timestamp"
.LASF51:
	.string	"oen_inv_sel"
.LASF10:
	.string	"long long unsigned int"
.LASF170:
	.string	"slpie"
.LASF77:
	.string	"pcpu_nmi_int"
.LASF35:
	.string	"wakeup_enable"
.LASF243:
	.string	"rtc_gpio_deinit"
.LASF232:
	.string	"gpio_spinlock"
.LASF251:
	.string	"rtc_gpio_set_drive_capability"
.LASF47:
	.string	"sig_in_inv"
.LASF238:
	.string	"gpio_matrix_out"
.LASF88:
	.string	"gpio_dev_t"
.LASF24:
	.string	"portMUX_TYPE"
.LASF180:
	.string	"ESP_LOG_INFO"
.LASF86:
	.string	"func_in_sel_cfg"
.LASF204:
	.string	"gpio_set_pull_mode"
.LASF257:
	.string	"xPortGetCoreID"
.LASF145:
	.string	"gpio_pulldown_t"
.LASF249:
	.string	"esp_intr_alloc"
.LASF224:
	.string	"gpio_wakeup_enable"
.LASF139:
	.string	"gpio_mode_t"
.LASF72:
	.string	"status1_w1tc"
.LASF217:
	.string	"gpio_isr_handler_add"
.LASF71:
	.string	"status1_w1ts"
.LASF70:
	.string	"status1"
.LASF55:
	.string	"out_w1tc"
.LASF74:
	.string	"acpu_int"
.LASF54:
	.string	"out_w1ts"
.LASF154:
	.string	"GPIO_PULLUP_PULLDOWN"
.LASF244:
	.string	"vTaskEnterCritical"
.LASF239:
	.string	"rtc_gpio_pullup_en"
.LASF198:
	.string	"gpio_set_intr_type"
.LASF205:
	.string	"pull"
.LASF2:
	.string	"short int"
.LASF14:
	.string	"uint64_t"
.LASF147:
	.string	"mode"
.LASF166:
	.string	"func"
.LASF215:
	.string	"pu_en"
.LASF142:
	.string	"gpio_pullup_t"
.LASF149:
	.string	"pull_down_en"
.LASF168:
	.string	"pulldown"
.LASF62:
	.string	"enable_w1tc"
.LASF211:
	.string	"io_num"
.LASF61:
	.string	"enable_w1ts"
.LASF31:
	.string	"reserved0"
.LASF33:
	.string	"reserved3"
.LASF26:
	.string	"reserved8"
.LASF79:
	.string	"acpu_int1"
.LASF27:
	.string	"strapping"
.LASF181:
	.string	"ESP_LOG_DEBUG"
.LASF140:
	.string	"GPIO_PULLUP_DISABLE"
.LASF241:
	.string	"rtc_gpio_pulldown_en"
.LASF66:
	.string	"strap"
.LASF195:
	.string	"gpio_pullup_dis"
.LASF129:
	.string	"GPIO_INTR_ANYEDGE"
.LASF13:
	.string	"uint32_t"
.LASF157:
	.string	"GPIO_DRIVE_CAP_0"
.LASF201:
	.string	"gpio_set_level"
.LASF206:
	.string	"gpio_set_direction"
.LASF226:
	.string	"gpio_set_drive_capability"
.LASF3:
	.string	"short unsigned int"
.LASF247:
	.string	"esp_intr_free"
.LASF233:
	.string	"GPIO"
.LASF5:
	.string	"__int32_t"
.LASF219:
	.string	"gpio_isr_handler_remove"
.LASF171:
	.string	"hold"
.LASF132:
	.string	"GPIO_INTR_MAX"
.LASF242:
	.string	"rtc_gpio_pulldown_dis"
.LASF150:
	.string	"intr_type"
.LASF78:
	.string	"cpusdio_int"
.LASF237:
	.string	"esp_log_write"
.LASF191:
	.string	"gpio_intr_enable_on_core"
.LASF25:
	.string	"data"
.LASF76:
	.string	"pcpu_int"
.LASF208:
	.string	"pGPIOConfig"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-61-gab8375a) 5.2.0"
