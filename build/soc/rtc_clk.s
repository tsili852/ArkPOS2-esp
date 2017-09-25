	.file	"rtc_clk.c"
	.text
.Ltext0:
	.section	.text.rtc_clk_32k_enable_internal,"ax",@progbits
	.literal_position
	.literal .LC0, 1072989324
	.literal .LC1, 393216
	.literal .LC2, -415629313
	.literal .LC3, -3145729
	.literal .LC4, 524288
	.align	4
	.type	rtc_clk_32k_enable_internal, @function
rtc_clk_32k_enable_internal:
.LFB3:
	.file 1 "C:/esp/esp-idf/components/soc/esp32/rtc_clk.c"
	.loc 1 91 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 92 0
	l32r	a8, .LC0
	memw
	l32i.n	a10, a8, 0
	l32r	a9, .LC1
	or	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 93 0
	memw
	l32i.n	a10, a8, 0
	l32r	a9, .LC2
	and	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 96 0
	memw
	l32i.n	a10, a8, 0
	l32r	a9, .LC3
	and	a9, a10, a9
	extui	a2, a2, 0, 2
.LVL1:
	slli	a2, a2, 20
	or	a9, a2, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 97 0
	memw
	l32i.n	a2, a8, 0
	movi.n	a9, -0x19
	and	a9, a2, a9
	extui	a3, a3, 0, 2
.LVL2:
	slli	a3, a3, 3
	or	a9, a3, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 98 0
	memw
	l32i.n	a2, a8, 0
	movi.n	a9, -7
	and	a9, a2, a9
	extui	a4, a4, 0, 2
.LVL3:
	slli	a4, a4, 1
	or	a9, a4, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 99 0
	memw
	l32i.n	a2, a8, 0
	l32r	a9, .LC4
	or	a9, a2, a9
	memw
	s32i.n	a9, a8, 0
	retw.n
.LFE3:
	.size	rtc_clk_32k_enable_internal, .-rtc_clk_32k_enable_internal
	.section	.text.clk_val_is_valid,"ax",@progbits
	.align	4
	.type	clk_val_is_valid, @function
clk_val_is_valid:
.LFB20:
	.loc 1 439 0
.LVL4:
	entry	sp, 32
.LCFI1:
	.loc 1 440 0
	extui	a9, a2, 0, 16
	extui	a8, a2, 16, 16
	.loc 1 441 0
	bne	a9, a8, .L4
	.loc 1 441 0 is_stmt 0 discriminator 1
	addi.n	a2, a2, -1
.LVL5:
	movi.n	a8, -3
	bgeu	a8, a2, .L5
	.loc 1 441 0
	movi.n	a2, 0
.LVL6:
	retw.n
.LVL7:
.L4:
	movi.n	a2, 0
.LVL8:
	retw.n
.L5:
	movi.n	a2, 1
	.loc 1 443 0 is_stmt 1
	retw.n
.LFE20:
	.size	clk_val_is_valid, .-clk_val_is_valid
	.section	.text.reg_val_to_clk_val,"ax",@progbits
	.align	4
	.type	reg_val_to_clk_val, @function
reg_val_to_clk_val:
.LFB21:
	.loc 1 445 0
.LVL9:
	entry	sp, 32
.LCFI2:
	.loc 1 447 0
	extui	a2, a2, 0, 16
.LVL10:
	retw.n
.LFE21:
	.size	reg_val_to_clk_val, .-reg_val_to_clk_val
	.section	.text.clk_val_to_reg_val,"ax",@progbits
	.align	4
	.type	clk_val_to_reg_val, @function
clk_val_to_reg_val:
.LFB22:
	.loc 1 449 0
.LVL11:
	entry	sp, 32
.LCFI3:
	.loc 1 450 0
	extui	a8, a2, 0, 16
	slli	a2, a2, 16
.LVL12:
	.loc 1 451 0
	or	a2, a8, a2
	retw.n
.LFE22:
	.size	clk_val_to_reg_val, .-clk_val_to_reg_val
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC6:
	.string	"rtc_clk"
	.align	4
.LC8:
	.string	"\033[0;33mW (%d) %s: Potentially bogus XTAL frequency: %d MHz, guessing 26 MHz\033[0m\n"
	.align	4
.LC10:
	.string	"\033[0;33mW (%d) %s: Potentially bogus XTAL frequency: %d MHz, guessing 40 MHz\033[0m\n"
	.align	4
.LC12:
	.string	"\033[0;33mW (%d) %s: Bogus XTAL frequency: %d MHz\033[0m\n"
	.section	.text.rtc_clk_xtal_freq_estimate,"ax",@progbits
	.literal_position
	.literal .LC5, .L11
	.literal .LC7, .LC6
	.literal .LC9, .LC8
	.literal .LC11, .LC10
	.literal .LC13, .LC12
	.align	4
	.type	rtc_clk_xtal_freq_estimate, @function
rtc_clk_xtal_freq_estimate:
.LFB25:
	.loc 1 470 0
	entry	sp, 32
.LCFI4:
	.loc 1 471 0
	movi.n	a11, 0xa
	movi.n	a10, 1
	call8	rtc_clk_cal_ratio
.LVL13:
	.loc 1 476 0
	extui	a2, a10, 29, 3
	slli	a10, a10, 3
.LVL14:
	slli	a2, a2, 24
	srli	a15, a10, 8
	or	a15, a2, a15
	extui	a2, a15, 19, 13
.LVL15:
	.loc 1 479 0
	addi	a8, a2, -21
	movi.n	a9, 0x18
	bltu	a9, a8, .L9
	l32r	a9, .LC5
	addx4	a8, a8, a9
	l32i.n	a8, a8, 0
	jx	a8
	.section	.rodata.rtc_clk_xtal_freq_estimate,"a",@progbits
	.align	4
	.align	4
.L11:
	.word	.L10
	.word	.L10
	.word	.L10
	.word	.L10
	.word	.L10
	.word	.L10
	.word	.L10
	.word	.L10
	.word	.L10
	.word	.L10
	.word	.L10
	.word	.L12
	.word	.L12
	.word	.L13
	.word	.L13
	.word	.L15
	.word	.L15
	.word	.L15
	.word	.L15
	.word	.L15
	.word	.L15
	.word	.L15
	.word	.L15
	.word	.L15
	.word	.L15
	.section	.text.rtc_clk_xtal_freq_estimate
.L10:
	.loc 1 481 0
	movi.n	a2, 0x1a
.LVL16:
	retw.n
.LVL17:
.L12:
	.loc 1 483 0 discriminator 1
	call8	esp_log_timestamp
.LVL18:
	l32r	a11, .LC7
	mov.n	a15, a2
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC9
	movi.n	a10, 2
	call8	esp_log_write
.LVL19:
	.loc 1 484 0 discriminator 1
	movi.n	a2, 0x1a
.LVL20:
	retw.n
.LVL21:
.L13:
	.loc 1 486 0 discriminator 1
	call8	esp_log_timestamp
.LVL22:
	l32r	a11, .LC7
	mov.n	a15, a2
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC11
	movi.n	a10, 2
	call8	esp_log_write
.LVL23:
	.loc 1 487 0 discriminator 1
	movi.n	a2, 0x28
.LVL24:
	retw.n
.LVL25:
.L9:
	.loc 1 491 0 discriminator 1
	call8	esp_log_timestamp
.LVL26:
	l32r	a11, .LC7
	mov.n	a15, a2
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC13
	movi.n	a10, 2
	call8	esp_log_write
.LVL27:
	.loc 1 492 0 discriminator 1
	movi.n	a2, 0
.LVL28:
	retw.n
.LVL29:
.L15:
	.loc 1 489 0
	movi.n	a2, 0x28
.LVL30:
	.loc 1 494 0
	retw.n
.LFE25:
	.size	rtc_clk_xtal_freq_estimate, .-rtc_clk_xtal_freq_estimate
	.section	.text.rtc_clk_32k_enable,"ax",@progbits
	.literal_position
	.literal .LC14, 1072989324
	.literal .LC15, -524289
	.align	4
	.global	rtc_clk_32k_enable
	.type	rtc_clk_32k_enable, @function
rtc_clk_32k_enable:
.LFB4:
	.loc 1 103 0
.LVL31:
	entry	sp, 32
.LCFI5:
	extui	a2, a2, 0, 8
	.loc 1 104 0
	beqz.n	a2, .L17
	.loc 1 105 0
	movi.n	a12, 0
	movi.n	a11, 3
	movi.n	a10, 1
	call8	rtc_clk_32k_enable_internal
.LVL32:
	retw.n
.L17:
	.loc 1 107 0
	l32r	a9, .LC14
	memw
	l32i.n	a2, a9, 0
.LVL33:
	l32r	a8, .LC15
	and	a8, a2, a8
	memw
	s32i.n	a8, a9, 0
	retw.n
.LFE4:
	.size	rtc_clk_32k_enable, .-rtc_clk_32k_enable
	.section	.text.rtc_clk_32k_bootstrap,"ax",@progbits
	.literal_position
	.literal .LC16, 1072989324
	.literal .LC17, -524289
	.literal .LC18, 272629760
	.align	4
	.global	rtc_clk_32k_bootstrap
	.type	rtc_clk_32k_bootstrap, @function
rtc_clk_32k_bootstrap:
.LFB5:
	.loc 1 112 0
	entry	sp, 32
.LCFI6:
	.loc 1 113 0
	l32r	a8, .LC16
	memw
	l32i.n	a10, a8, 0
	l32r	a9, .LC17
	and	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 114 0
	memw
	l32i.n	a10, a8, 0
	l32r	a9, .LC18
	or	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 115 0
	movi.n	a10, 7
	call8	ets_delay_us
.LVL34:
	.loc 1 116 0
	movi.n	a12, 0
	movi.n	a11, 3
	mov.n	a10, a11
	call8	rtc_clk_32k_enable_internal
.LVL35:
	retw.n
.LFE5:
	.size	rtc_clk_32k_bootstrap, .-rtc_clk_32k_bootstrap
	.section	.text.rtc_clk_32k_enabled,"ax",@progbits
	.literal_position
	.literal .LC19, 1072989324
	.literal .LC20, 524288
	.align	4
	.global	rtc_clk_32k_enabled
	.type	rtc_clk_32k_enabled, @function
rtc_clk_32k_enabled:
.LFB6:
	.loc 1 121 0
	entry	sp, 32
.LCFI7:
	.loc 1 122 0
	l32r	a2, .LC19
	memw
	l32i.n	a8, a2, 0
	l32r	a2, .LC20
	and	a8, a8, a2
	movi.n	a2, 0
	movi.n	a9, 1
	movnez	a2, a9, a8
	.loc 1 123 0
	retw.n
.LFE6:
	.size	rtc_clk_32k_enabled, .-rtc_clk_32k_enabled
	.section	.text.rtc_clk_8m_enable,"ax",@progbits
	.literal_position
	.literal .LC21, 1072988272
	.literal .LC22, 1072988188
	.literal .LC23, -16321
	.align	4
	.global	rtc_clk_8m_enable
	.type	rtc_clk_8m_enable, @function
rtc_clk_8m_enable:
.LFB7:
	.loc 1 126 0
.LVL36:
	entry	sp, 32
.LCFI8:
	extui	a2, a2, 0, 8
	extui	a3, a3, 0, 8
	.loc 1 127 0
	beqz.n	a2, .L22
	.loc 1 128 0
	l32r	a2, .LC21
.LVL37:
	memw
	l32i.n	a9, a2, 0
	movi	a8, -0x41
	and	a8, a9, a8
	memw
	s32i.n	a8, a2, 0
	.loc 1 130 0
	l32r	a2, .LC22
	memw
	l32i.n	a9, a2, 0
	l32r	a8, .LC23
	and	a9, a9, a8
	movi.n	a8, 0x40
	or	a8, a9, a8
	memw
	s32i.n	a8, a2, 0
	.loc 1 131 0
	beqz.n	a3, .L23
	.loc 1 132 0
	l32r	a3, .LC21
.LVL38:
	memw
	l32i.n	a8, a3, 0
	movi	a2, -0x81
	and	a2, a8, a2
	memw
	s32i.n	a2, a3, 0
	j	.L24
.L23:
	.loc 1 134 0
	l32r	a3, .LC21
	memw
	l32i.n	a8, a3, 0
	movi	a2, 0x80
	or	a2, a8, a2
	memw
	s32i.n	a2, a3, 0
.L24:
	.loc 1 136 0
	movi.n	a10, 0x32
	call8	ets_delay_us
.LVL39:
	retw.n
.L22:
	.loc 1 138 0
	l32r	a2, .LC21
	memw
	l32i.n	a3, a2, 0
	movi.n	a8, 0x40
	or	a8, a3, a8
	memw
	s32i.n	a8, a2, 0
	.loc 1 139 0
	l32r	a2, .LC22
	memw
	l32i.n	a9, a2, 0
	l32r	a8, .LC23
	and	a9, a9, a8
	movi	a8, 0x500
	or	a8, a9, a8
	memw
	s32i.n	a8, a2, 0
	retw.n
.LFE7:
	.size	rtc_clk_8m_enable, .-rtc_clk_8m_enable
	.section	.text.rtc_clk_8m_enabled,"ax",@progbits
	.literal_position
	.literal .LC24, 1072988272
	.align	4
	.global	rtc_clk_8m_enabled
	.type	rtc_clk_8m_enabled, @function
rtc_clk_8m_enabled:
.LFB8:
	.loc 1 144 0
	entry	sp, 32
.LCFI9:
	.loc 1 145 0
	l32r	a2, .LC24
	memw
	l32i.n	a8, a2, 0
	movi.n	a2, 0x40
	and	a8, a8, a2
	movi.n	a2, 0
	movi.n	a9, 1
	moveqz	a2, a9, a8
	.loc 1 146 0
	retw.n
.LFE8:
	.size	rtc_clk_8m_enabled, .-rtc_clk_8m_enabled
	.section	.text.rtc_clk_8md256_enabled,"ax",@progbits
	.literal_position
	.literal .LC25, 1072988272
	.align	4
	.global	rtc_clk_8md256_enabled
	.type	rtc_clk_8md256_enabled, @function
rtc_clk_8md256_enabled:
.LFB9:
	.loc 1 149 0
	entry	sp, 32
.LCFI10:
	.loc 1 150 0
	l32r	a2, .LC25
	memw
	l32i.n	a8, a2, 0
	movi	a2, 0x80
	and	a8, a8, a2
	movi.n	a2, 0
	movi.n	a9, 1
	moveqz	a2, a9, a8
	.loc 1 151 0
	retw.n
.LFE9:
	.size	rtc_clk_8md256_enabled, .-rtc_clk_8md256_enabled
	.section	.text.rtc_clk_apll_enable,"ax",@progbits
	.literal_position
	.literal .LC26, 8388608
	.literal .LC27, 262144
	.literal .LC28, 1072988208
	.literal .LC29, -8388609
	.literal .LC30, -16777217
	.literal .LC31, 1072988160
	.literal .LC32, -262145
	.literal .LC33, 1072988272
	.literal .LC34, 1073061900
	.align	4
	.global	rtc_clk_apll_enable
	.type	rtc_clk_apll_enable, @function
rtc_clk_apll_enable:
.LFB10:
	.loc 1 154 0
.LVL40:
	entry	sp, 32
.LCFI11:
	extui	a2, a2, 0, 8
	.loc 1 155 0
	l32r	a8, .LC28
	memw
	l32i.n	a9, a8, 0
	l32r	a8, .LC29
	and	a8, a9, a8
	beqz.n	a2, .L36
	movi.n	a9, 0
	j	.L29
.L36:
	l32r	a9, .LC26
.L29:
	.loc 1 155 0 is_stmt 0 discriminator 4
	or	a8, a9, a8
	l32r	a9, .LC28
	memw
	s32i.n	a8, a9, 0
	.loc 1 156 0 is_stmt 1 discriminator 4
	memw
	l32i.n	a10, a9, 0
	l32r	a8, .LC30
	and	a8, a10, a8
	slli	a10, a2, 24
	or	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
	.loc 1 157 0 discriminator 4
	l32r	a8, .LC31
	memw
	l32i.n	a9, a8, 0
	l32r	a8, .LC32
	and	a8, a9, a8
	beqz.n	a2, .L37
	.loc 1 157 0 is_stmt 0
	movi.n	a9, 0
	j	.L30
.L37:
	l32r	a9, .LC27
.L30:
	.loc 1 157 0 discriminator 4
	or	a8, a9, a8
	l32r	a9, .LC31
	memw
	s32i.n	a8, a9, 0
	.loc 1 159 0 is_stmt 1 discriminator 4
	bnez.n	a2, .L31
	.loc 1 160 0 discriminator 1
	l32r	a8, .LC33
	memw
	l32i.n	a8, a8, 0
	extui	a8, a8, 27, 2
	.loc 1 159 0 discriminator 1
	beqi	a8, 1, .L31
	.loc 1 161 0
	memw
	l32i.n	a10, a9, 0
	l32r	a8, .LC27
	or	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
.L31:
	.loc 1 164 0
	beqz.n	a2, .L28
.LVL41:
.LBB17:
	.loc 1 166 0
	l32r	a2, .LC34
.LVL42:
	memw
	l32i.n	a2, a2, 0
.LVL43:
	.loc 1 167 0
	bbci	a2, 15, .L38
	.loc 1 165 0
	movi.n	a2, 0x49
.LVL44:
	j	.L33
.LVL45:
.L38:
	.loc 1 170 0
	movi	a2, 0x69
.LVL46:
	.loc 1 169 0
	movi.n	a4, 0
.LVL47:
	.loc 1 168 0
	mov.n	a3, a4
.LVL48:
.L33:
	.loc 1 172 0
	extui	a15, a5, 0, 8
	movi.n	a14, 0
	movi.n	a13, 5
	movi.n	a12, 7
	movi.n	a11, 3
	movi	a10, 0x6d
	call8	rom_i2c_writeReg_Mask
.LVL49:
	.loc 1 173 0
	extui	a15, a3, 0, 8
	movi.n	a14, 0
	movi.n	a13, 7
	movi.n	a12, 9
	movi.n	a11, 3
	movi	a10, 0x6d
	call8	rom_i2c_writeReg_Mask
.LVL50:
	.loc 1 174 0
	extui	a15, a4, 0, 8
	movi.n	a14, 0
	movi.n	a13, 7
	movi.n	a12, 8
	movi.n	a11, 3
	movi	a10, 0x6d
	call8	rom_i2c_writeReg_Mask
.LVL51:
	.loc 1 175 0
	movi.n	a13, 9
	movi.n	a12, 5
	movi.n	a11, 3
	movi	a10, 0x6d
	call8	rom_i2c_writeReg
.LVL52:
	.loc 1 176 0
	mov.n	a13, a2
	movi.n	a12, 5
	movi.n	a11, 3
	movi	a10, 0x6d
	call8	rom_i2c_writeReg
.LVL53:
	.loc 1 177 0
	extui	a15, a6, 0, 8
	movi.n	a14, 0
	movi.n	a13, 4
	mov.n	a12, a13
	movi.n	a11, 3
	movi	a10, 0x6d
	call8	rom_i2c_writeReg_Mask
.LVL54:
	.loc 1 180 0
	movi.n	a13, 0xf
	movi.n	a12, 0
	movi.n	a11, 3
	movi	a10, 0x6d
	call8	rom_i2c_writeReg
.LVL55:
	.loc 1 181 0
	movi.n	a13, 0x3f
	movi.n	a12, 0
	movi.n	a11, 3
	movi	a10, 0x6d
	call8	rom_i2c_writeReg
.LVL56:
	.loc 1 182 0
	movi.n	a13, 0x1f
	movi.n	a12, 0
	movi.n	a11, 3
	movi	a10, 0x6d
	call8	rom_i2c_writeReg
.LVL57:
	.loc 1 185 0
	j	.L34
.L35:
	.loc 1 187 0
	movi.n	a10, 1
	call8	ets_delay_us
.LVL58:
.L34:
	.loc 1 185 0
	movi.n	a14, 7
	mov.n	a13, a14
	movi.n	a12, 3
	mov.n	a11, a12
	movi	a10, 0x6d
	call8	rom_i2c_readReg_Mask
.LVL59:
	beqz.n	a10, .L35
.LVL60:
.L28:
	retw.n
.LBE17:
.LFE10:
	.size	rtc_clk_apll_enable, .-rtc_clk_apll_enable
	.section	.text.rtc_clk_slow_freq_set,"ax",@progbits
	.literal_position
	.literal .LC35, 1072988272
	.literal .LC36, 1073741823
	.align	4
	.global	rtc_clk_slow_freq_set
	.type	rtc_clk_slow_freq_set, @function
rtc_clk_slow_freq_set:
.LFB11:
	.loc 1 193 0
.LVL61:
	entry	sp, 32
.LCFI12:
	.loc 1 194 0
	l32r	a9, .LC35
	memw
	l32i.n	a10, a9, 0
	l32r	a8, .LC36
	and	a8, a10, a8
	slli	a2, a2, 30
.LVL62:
	or	a2, a8, a2
	memw
	s32i.n	a2, a9, 0
	.loc 1 195 0
	movi	a10, 0x12c
	call8	ets_delay_us
.LVL63:
	retw.n
.LFE11:
	.size	rtc_clk_slow_freq_set, .-rtc_clk_slow_freq_set
	.section	.text.rtc_clk_slow_freq_get,"ax",@progbits
	.literal_position
	.literal .LC37, 1072988272
	.align	4
	.global	rtc_clk_slow_freq_get
	.type	rtc_clk_slow_freq_get, @function
rtc_clk_slow_freq_get:
.LFB12:
	.loc 1 199 0
	entry	sp, 32
.LCFI13:
	.loc 1 200 0
	l32r	a2, .LC37
	memw
	l32i.n	a2, a2, 0
	.loc 1 201 0
	extui	a2, a2, 30, 2
	retw.n
.LFE12:
	.size	rtc_clk_slow_freq_get, .-rtc_clk_slow_freq_get
	.section	.text.rtc_clk_slow_freq_get_hz,"ax",@progbits
	.literal_position
	.literal .LC38, 150000
	.literal .LC39, 32768
	.literal .LC40, 33203
	.align	4
	.global	rtc_clk_slow_freq_get_hz
	.type	rtc_clk_slow_freq_get_hz, @function
rtc_clk_slow_freq_get_hz:
.LFB13:
	.loc 1 204 0
	entry	sp, 32
.LCFI14:
	.loc 1 205 0
	call8	rtc_clk_slow_freq_get
.LVL64:
	beqi	a10, 1, .L46
	beqz.n	a10, .L44
	beqi	a10, 2, .L45
	j	.L47
.L44:
	.loc 1 206 0
	l32r	a2, .LC38
	retw.n
.L45:
	.loc 1 208 0
	l32r	a2, .LC40
	retw.n
.L47:
	.loc 1 210 0
	movi.n	a2, 0
	retw.n
.L46:
	.loc 1 207 0
	l32r	a2, .LC39
	.loc 1 211 0
	retw.n
.LFE13:
	.size	rtc_clk_slow_freq_get_hz, .-rtc_clk_slow_freq_get_hz
	.section	.text.rtc_clk_fast_freq_set,"ax",@progbits
	.literal_position
	.literal .LC41, 1072988272
	.literal .LC42, -536870913
	.align	4
	.global	rtc_clk_fast_freq_set
	.type	rtc_clk_fast_freq_set, @function
rtc_clk_fast_freq_set:
.LFB14:
	.loc 1 214 0
.LVL65:
	entry	sp, 32
.LCFI15:
	.loc 1 215 0
	l32r	a9, .LC41
	memw
	l32i.n	a10, a9, 0
	l32r	a8, .LC42
	and	a8, a10, a8
	extui	a2, a2, 0, 1
.LVL66:
	slli	a2, a2, 29
	or	a2, a8, a2
	memw
	s32i.n	a2, a9, 0
	.loc 1 216 0
	movi.n	a10, 3
	call8	ets_delay_us
.LVL67:
	retw.n
.LFE14:
	.size	rtc_clk_fast_freq_set, .-rtc_clk_fast_freq_set
	.section	.text.rtc_clk_fast_freq_get,"ax",@progbits
	.literal_position
	.literal .LC43, 1072988272
	.align	4
	.global	rtc_clk_fast_freq_get
	.type	rtc_clk_fast_freq_get, @function
rtc_clk_fast_freq_get:
.LFB15:
	.loc 1 220 0
	entry	sp, 32
.LCFI16:
	.loc 1 221 0
	l32r	a2, .LC43
	memw
	l32i.n	a2, a2, 0
	.loc 1 222 0
	extui	a2, a2, 29, 1
	retw.n
.LFE15:
	.size	rtc_clk_fast_freq_get, .-rtc_clk_fast_freq_get
	.section	.text.rtc_clk_bbpll_set,"ax",@progbits
	.literal_position
	.literal .LC44, 1072988284
	.literal .LC45, 14336
	.align	4
	.global	rtc_clk_bbpll_set
	.type	rtc_clk_bbpll_set, @function
rtc_clk_bbpll_set:
.LFB16:
	.loc 1 225 0
.LVL68:
	entry	sp, 32
.LCFI17:
	.loc 1 233 0
	beqi	a3, 3, .L51
	.loc 1 235 0
	movi.n	a3, 0x1a
.LVL69:
	beq	a2, a3, .L62
	movi.n	a3, 0x28
	beq	a2, a3, .L54
	movi.n	a3, 0x18
	bne	a2, a3, .L65
	j	.L55
.L54:
	.loc 1 242 0
	movi.n	a2, 3
.LVL70:
	.loc 1 241 0
	movi.n	a3, 6
	.loc 1 240 0
	movi.n	a7, 0
	.loc 1 239 0
	mov.n	a6, a7
	.loc 1 238 0
	movi.n	a4, 0x20
	.loc 1 237 0
	mov.n	a5, a7
	j	.L53
.LVL71:
.L55:
	.loc 1 258 0
	movi.n	a2, 1
.LVL72:
	.loc 1 257 0
	movi.n	a3, 0
	.loc 1 256 0
	mov.n	a7, a2
	.loc 1 255 0
	movi.n	a6, 4
	.loc 1 254 0
	movi	a4, 0xe0
	.loc 1 253 0
	movi.n	a5, 0xb
	.loc 1 259 0
	j	.L53
.LVL73:
.L65:
	.loc 1 266 0
	movi.n	a2, 0
.LVL74:
	.loc 1 265 0
	mov.n	a3, a2
	.loc 1 264 0
	mov.n	a7, a2
	.loc 1 263 0
	movi.n	a6, 4
	.loc 1 262 0
	movi	a4, 0xe0
	.loc 1 261 0
	movi.n	a5, 0xc
	.loc 1 267 0
	j	.L53
.LVL75:
.L62:
	.loc 1 250 0
	movi.n	a2, 1
.LVL76:
	.loc 1 249 0
	movi.n	a3, 0
	.loc 1 248 0
	mov.n	a7, a2
	.loc 1 247 0
	movi.n	a6, 4
	.loc 1 246 0
	movi	a4, 0xe0
	.loc 1 245 0
	movi.n	a5, 0xc
.L53:
.LVL77:
	.loc 1 269 0
	movi.n	a13, 0x43
	movi.n	a12, 0xb
	movi.n	a11, 4
	movi	a10, 0x66
	call8	rom_i2c_writeReg
.LVL78:
	.loc 1 270 0
	movi	a13, 0x84
	movi.n	a12, 9
	movi.n	a11, 4
	movi	a10, 0x66
	call8	rom_i2c_writeReg
.LVL79:
	j	.L56
.LVL80:
.L51:
	.loc 1 273 0
	l32r	a4, .LC44
	memw
	l32i.n	a5, a4, 0
	l32r	a3, .LC45
.LVL81:
	or	a3, a5, a3
	memw
	s32i.n	a3, a4, 0
	.loc 1 274 0
	movi.n	a10, 3
	call8	ets_delay_us
.LVL82:
	.loc 1 276 0
	movi.n	a3, 0x1a
	beq	a2, a3, .L63
	movi.n	a3, 0x28
	beq	a2, a3, .L59
	movi.n	a3, 0x18
	bne	a2, a3, .L66
	j	.L60
.L59:
	.loc 1 283 0
	movi.n	a2, 3
.LVL83:
	.loc 1 282 0
	movi.n	a3, 6
	.loc 1 281 0
	movi.n	a7, 0
	.loc 1 280 0
	mov.n	a6, a7
	.loc 1 279 0
	movi.n	a4, 0x1c
	.loc 1 278 0
	mov.n	a5, a7
	j	.L58
.LVL84:
.L60:
	.loc 1 299 0
	movi.n	a2, 1
.LVL85:
	.loc 1 298 0
	movi.n	a3, 0
	.loc 1 297 0
	mov.n	a7, a2
	.loc 1 296 0
	movi.n	a6, 4
	.loc 1 295 0
	movi	a4, 0x90
	.loc 1 294 0
	movi.n	a5, 0xb
	.loc 1 300 0
	j	.L58
.LVL86:
.L66:
	.loc 1 307 0
	movi.n	a2, 0
.LVL87:
	.loc 1 306 0
	mov.n	a3, a2
	.loc 1 305 0
	mov.n	a7, a2
	.loc 1 304 0
	movi.n	a6, 4
	.loc 1 303 0
	movi	a4, 0xe0
	.loc 1 302 0
	movi.n	a5, 0xc
	.loc 1 308 0
	j	.L58
.LVL88:
.L63:
	.loc 1 291 0
	movi.n	a2, 1
.LVL89:
	.loc 1 290 0
	movi.n	a3, 0
	.loc 1 289 0
	mov.n	a7, a2
	.loc 1 288 0
	movi.n	a6, 4
	.loc 1 287 0
	movi	a4, 0x90
	.loc 1 286 0
	movi.n	a5, 0xc
.L58:
.LVL90:
	.loc 1 310 0
	movi	a13, 0xc3
	movi.n	a12, 0xb
	movi.n	a11, 4
	movi	a10, 0x66
	call8	rom_i2c_writeReg
.LVL91:
	.loc 1 311 0
	movi	a13, 0x74
	movi.n	a12, 9
	movi.n	a11, 4
	movi	a10, 0x66
	call8	rom_i2c_writeReg
.LVL92:
.L56:
	.loc 1 314 0
	slli	a13, a7, 7
	slli	a8, a6, 4
	or	a13, a13, a8
.LVL93:
	.loc 1 316 0
	slli	a2, a2, 6
.LVL94:
	or	a2, a2, a3
.LVL95:
	.loc 1 317 0
	or	a13, a13, a5
.LVL96:
	movi.n	a12, 2
	movi.n	a11, 4
	movi	a10, 0x66
	call8	rom_i2c_writeReg
.LVL97:
	.loc 1 318 0
	mov.n	a13, a4
	movi.n	a12, 3
	movi.n	a11, 4
	movi	a10, 0x66
	call8	rom_i2c_writeReg
.LVL98:
	.loc 1 319 0
	mov.n	a13, a2
	movi.n	a12, 5
	movi.n	a11, 4
	movi	a10, 0x66
	call8	rom_i2c_writeReg
.LVL99:
	.loc 1 320 0
	call8	rtc_clk_slow_freq_get
.LVL100:
	bnez.n	a10, .L64
	movi.n	a10, 0x50
	j	.L61
.L64:
	movi	a10, 0xa0
.L61:
.LVL101:
	.loc 1 322 0 discriminator 4
	call8	ets_delay_us
.LVL102:
	retw.n
.LFE16:
	.size	rtc_clk_bbpll_set, .-rtc_clk_bbpll_set
	.section	.rodata.str1.4
	.align	4
.LC48:
	.string	"\033[0;33mW (%d) %s: invalid RTC_XTAL_FREQ_REG value: 0x%08x\033[0m\n"
	.section	.text.rtc_clk_xtal_freq_get,"ax",@progbits
	.literal_position
	.literal .LC46, 1072988336
	.literal .LC47, .LC6
	.literal .LC49, .LC48
	.align	4
	.global	rtc_clk_xtal_freq_get
	.type	rtc_clk_xtal_freq_get, @function
rtc_clk_xtal_freq_get:
.LFB23:
	.loc 1 454 0
	entry	sp, 32
.LCFI18:
	.loc 1 456 0
	l32r	a2, .LC46
	memw
	l32i.n	a2, a2, 0
.LVL103:
	.loc 1 457 0
	mov.n	a10, a2
	call8	clk_val_is_valid
.LVL104:
	bnez.n	a10, .L68
	.loc 1 458 0 discriminator 1
	call8	esp_log_timestamp
.LVL105:
	l32r	a11, .LC47
	mov.n	a15, a2
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC49
	movi.n	a10, 2
	call8	esp_log_write
.LVL106:
	.loc 1 459 0 discriminator 1
	movi.n	a2, 0
.LVL107:
	retw.n
.LVL108:
.L68:
	.loc 1 461 0
	mov.n	a10, a2
	call8	reg_val_to_clk_val
.LVL109:
	mov.n	a2, a10
.LVL110:
	.loc 1 462 0
	retw.n
.LFE23:
	.size	rtc_clk_xtal_freq_get, .-rtc_clk_xtal_freq_get
	.global	rtc_get_xtal
	.set	rtc_get_xtal,rtc_clk_xtal_freq_get
	.section	.rodata.str1.4
	.align	4
.LC52:
	.string	"false && \"unsupported frequency\""
	.align	4
.LC55:
	.string	"C:/esp/esp-idf/components/soc/esp32/rtc_clk.c"
	.section	.text.rtc_clk_cpu_freq_get,"ax",@progbits
	.literal_position
	.literal .LC50, 1072988272
	.literal .LC51, 1073111040
	.literal .LC53, .LC52
	.literal .LC54, __func__$2744
	.literal .LC56, .LC55
	.literal .LC57, 1072693308
	.align	4
	.global	rtc_clk_cpu_freq_get
	.type	rtc_clk_cpu_freq_get, @function
rtc_clk_cpu_freq_get:
.LFB18:
	.loc 1 381 0
	entry	sp, 32
.LCFI19:
	.loc 1 382 0
	l32r	a8, .LC50
	memw
	l32i.n	a8, a8, 0
	extui	a8, a8, 27, 2
.LVL111:
	.loc 1 383 0
	beqz.n	a8, .L72
	beqi	a8, 1, .L73
	j	.L80
.L72:
.LBB18:
	.loc 1 385 0
	l32r	a2, .LC51
	memw
	l32i.n	a2, a2, 0
	extui	a2, a2, 0, 10
.LVL112:
	.loc 1 386 0
	beqz.n	a2, .L75
	.loc 1 388 0
	call8	rtc_clk_xtal_freq_get
.LVL113:
	srli	a10, a10, 1
	addi.n	a10, a10, -1
	beq	a2, a10, .L76
	.loc 1 391 0
	l32r	a13, .LC53
	l32r	a12, .LC54
	movi	a11, 0x187
	l32r	a10, .LC56
	call8	__assert_func
.LVL114:
.L73:
.LBE18:
.LBB19:
.LBB20:
.LBB21:
	.file 2 "C:/esp/esp-idf/components/soc/esp32/include/soc/dport_access.h"
	.loc 2 48 0
	l32r	a2, .LC57
	memw
	l32i.n	a8, a2, 0
.LVL115:
.LBE21:
.LBE20:
	.loc 1 396 0
	extui	a8, a8, 0, 2
.LVL116:
	.loc 1 397 0
	beqz.n	a8, .L77
	.loc 1 399 0
	beqi	a8, 1, .L78
	.loc 1 401 0
	beqi	a8, 2, .L79
	.loc 1 404 0
	l32r	a13, .LC53
	l32r	a12, .LC54
	movi	a11, 0x194
	l32r	a10, .LC56
	call8	__assert_func
.LVL117:
.L80:
.LBE19:
	.loc 1 411 0
	l32r	a13, .LC53
	l32r	a12, .LC54
	movi	a11, 0x19b
	l32r	a10, .LC56
	call8	__assert_func
.LVL118:
.L75:
.LBB22:
	.loc 1 387 0
	movi.n	a2, 0
.LVL119:
	retw.n
.LVL120:
.L76:
	.loc 1 389 0
	movi.n	a2, 4
.LVL121:
	retw.n
.LVL122:
.L77:
.LBE22:
.LBB23:
	.loc 1 398 0
	movi.n	a2, 1
	retw.n
.L78:
	.loc 1 400 0
	movi.n	a2, 2
	retw.n
.L79:
	.loc 1 402 0
	movi.n	a2, 3
.LBE23:
	.loc 1 414 0
	retw.n
.LFE18:
	.size	rtc_clk_cpu_freq_get, .-rtc_clk_cpu_freq_get
	.section	.rodata.str1.4
	.align	4
.LC64:
	.string	"false && \"invalid rtc_cpu_freq_t value\""
	.section	.text.rtc_clk_cpu_freq_value,"ax",@progbits
	.literal_position
	.literal .LC58, 2000000
	.literal .LC59, 80000000
	.literal .LC60, 160000000
	.literal .LC61, 240000000
	.literal .LC62, .L84
	.literal .LC63, 1000000
	.literal .LC65, .LC64
	.literal .LC66, __func__$2759
	.literal .LC67, .LC55
	.align	4
	.global	rtc_clk_cpu_freq_value
	.type	rtc_clk_cpu_freq_value, @function
rtc_clk_cpu_freq_value:
.LFB19:
	.loc 1 417 0
.LVL123:
	entry	sp, 32
.LCFI20:
	.loc 1 418 0
	bgeui	a2, 5, .L82
	l32r	a8, .LC62
	addx4	a2, a2, a8
.LVL124:
	l32i.n	a2, a2, 0
	jx	a2
	.section	.rodata.rtc_clk_cpu_freq_value,"a",@progbits
	.align	4
	.align	4
.L84:
	.word	.L83
	.word	.L89
	.word	.L86
	.word	.L87
	.word	.L88
	.section	.text.rtc_clk_cpu_freq_value
.L83:
	.loc 1 420 0
	call8	rtc_clk_xtal_freq_get
.LVL125:
	l32r	a2, .LC63
	mull	a2, a10, a2
	retw.n
.L86:
	.loc 1 426 0
	l32r	a2, .LC60
	retw.n
.L87:
	.loc 1 428 0
	l32r	a2, .LC61
	retw.n
.LVL126:
.L82:
	.loc 1 430 0
	l32r	a13, .LC65
	l32r	a12, .LC66
	movi	a11, 0x1ae
	l32r	a10, .LC67
	call8	__assert_func
.LVL127:
.L88:
	.loc 1 422 0
	l32r	a2, .LC58
	retw.n
.L89:
	.loc 1 424 0
	l32r	a2, .LC59
	.loc 1 433 0
	retw.n
.LFE19:
	.size	rtc_clk_cpu_freq_value, .-rtc_clk_cpu_freq_value
	.section	.text.rtc_clk_xtal_freq_update,"ax",@progbits
	.literal_position
	.literal .LC68, 1072988336
	.align	4
	.global	rtc_clk_xtal_freq_update
	.type	rtc_clk_xtal_freq_update, @function
rtc_clk_xtal_freq_update:
.LFB24:
	.loc 1 465 0
.LVL128:
	entry	sp, 32
.LCFI21:
	.loc 1 466 0
	mov.n	a10, a2
	call8	clk_val_to_reg_val
.LVL129:
	l32r	a8, .LC68
	memw
	s32i.n	a10, a8, 0
	retw.n
.LFE24:
	.size	rtc_clk_xtal_freq_update, .-rtc_clk_xtal_freq_update
	.section	.text.rtc_clk_apb_freq_update,"ax",@progbits
	.literal_position
	.literal .LC69, 1072988340
	.align	4
	.global	rtc_clk_apb_freq_update
	.type	rtc_clk_apb_freq_update, @function
rtc_clk_apb_freq_update:
.LFB26:
	.loc 1 497 0
.LVL130:
	entry	sp, 32
.LCFI22:
	.loc 1 498 0
	srli	a10, a2, 12
	call8	clk_val_to_reg_val
.LVL131:
	l32r	a8, .LC69
	memw
	s32i.n	a10, a8, 0
	retw.n
.LFE26:
	.size	rtc_clk_apb_freq_update, .-rtc_clk_apb_freq_update
	.section	.text.rtc_clk_cpu_freq_set,"ax",@progbits
	.literal_position
	.literal .LC70, 1072988284
	.literal .LC71, -14337
	.literal .LC72, 8192
	.literal .LC73, 1072988272
	.literal .LC74, -402653185
	.literal .LC75, 1073111040
	.literal .LC76, 1072693308
	.literal .LC77, 1072988160
	.literal .LC78, 1000000
	.literal .LC79, 1072988208
	.literal .LC80, 262144
	.literal .LC81, 2000000
	.literal .LC82, 4096
	.literal .LC83, -263489
	.literal .LC84, 134217728
	.literal .LC85, 80000000
	.align	4
	.global	rtc_clk_cpu_freq_set
	.type	rtc_clk_cpu_freq_set, @function
rtc_clk_cpu_freq_set:
.LFB17:
	.loc 1 326 0
.LVL132:
	entry	sp, 32
.LCFI23:
	.loc 1 327 0
	call8	rtc_clk_xtal_freq_get
.LVL133:
	mov.n	a3, a10
.LVL134:
	.loc 1 329 0
	l32r	a10, .LC70
	memw
	l32i.n	a9, a10, 0
	l32r	a8, .LC71
	and	a9, a9, a8
	l32r	a8, .LC72
	or	a8, a9, a8
	memw
	s32i.n	a8, a10, 0
	.loc 1 330 0
	l32r	a9, .LC73
	memw
	l32i.n	a10, a9, 0
	l32r	a8, .LC74
	and	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
	.loc 1 331 0
	l32r	a9, .LC75
	memw
	l32i.n	a10, a9, 0
	movi	a8, -0x400
	and	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
	.loc 1 332 0
	mov.n	a10, a3
	call8	ets_update_cpu_frequency
.LVL135:
	.loc 1 333 0
	call8	rtc_clk_slow_freq_get
.LVL136:
	bnez.n	a10, .L100
	movi.n	a10, 0x50
	j	.L93
.L100:
	movi	a10, 0xa0
.L93:
.LVL137:
	.loc 1 335 0 discriminator 4
	call8	ets_delay_us
.LVL138:
.LBB24:
.LBB25:
	.loc 2 48 0 discriminator 4
	l32r	a9, .LC76
	memw
	l32i.n	a10, a9, 0
.LVL139:
.LBE25:
.LBE24:
	.loc 1 336 0 discriminator 4
	movi.n	a8, -4
	and	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
	.loc 1 337 0 discriminator 4
	l32r	a9, .LC77
	memw
	l32i.n	a10, a9, 0
.LVL140:
	movi	a8, 0x540
	or	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
	.loc 1 340 0 discriminator 4
	l32r	a10, .LC78
	mull	a10, a3, a10
	call8	rtc_clk_apb_freq_update
.LVL141:
	.loc 1 343 0 discriminator 4
	l32r	a8, .LC79
	memw
	l32i.n	a8, a8, 0
.LVL142:
	.loc 1 344 0 discriminator 4
	bbci	a8, 23, .L94
	.loc 1 346 0
	l32r	a9, .LC77
	memw
	l32i.n	a10, a9, 0
	l32r	a8, .LC80
.LVL143:
	or	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
.L94:
	.loc 1 349 0
	beqz.n	a2, .L92
	.loc 1 351 0
	bnei	a2, 4, .L96
	.loc 1 353 0
	l32r	a8, .LC75
	memw
	l32i.n	a9, a8, 0
	movi	a2, -0x400
.LVL144:
	and	a2, a9, a2
	srli	a3, a3, 1
.LVL145:
	addi.n	a3, a3, -1
	extui	a3, a3, 0, 10
	or	a2, a2, a3
	memw
	s32i.n	a2, a8, 0
	.loc 1 354 0
	movi.n	a10, 2
	call8	ets_update_cpu_frequency
.LVL146:
	.loc 1 355 0
	l32r	a10, .LC81
	call8	rtc_clk_apb_freq_update
.LVL147:
	.loc 1 357 0
	l32r	a8, .LC70
	memw
	l32i.n	a3, a8, 0
	l32r	a2, .LC71
	and	a3, a3, a2
	l32r	a2, .LC82
	or	a2, a3, a2
	memw
	s32i.n	a2, a8, 0
	retw.n
.LVL148:
.L96:
	.loc 1 360 0
	l32r	a9, .LC77
	memw
	l32i.n	a10, a9, 0
	l32r	a8, .LC83
	and	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
	.loc 1 363 0
	mov.n	a11, a2
	mov.n	a10, a3
	call8	rtc_clk_bbpll_set
.LVL149:
	.loc 1 364 0
	bnei	a2, 1, .L97
.LVL150:
.LBB26:
.LBB27:
	.loc 2 48 0
	l32r	a3, .LC76
.LVL151:
	memw
	l32i.n	a8, a3, 0
.LVL152:
.LBE27:
.LBE26:
	.loc 1 365 0
	movi.n	a2, -4
.LVL153:
	and	a2, a8, a2
	memw
	s32i.n	a2, a3, 0
	.loc 1 366 0
	movi.n	a10, 0x50
	call8	ets_update_cpu_frequency
.LVL154:
	j	.L98
.LVL155:
.L97:
	.loc 1 367 0
	bnei	a2, 2, .L99
.LVL156:
.LBB28:
.LBB29:
	.loc 2 48 0
	l32r	a8, .LC76
	memw
	l32i.n	a3, a8, 0
.LVL157:
.LBE29:
.LBE28:
	.loc 1 368 0
	movi.n	a2, -4
.LVL158:
	and	a3, a3, a2
.LVL159:
	movi.n	a2, 1
	or	a2, a3, a2
	memw
	s32i.n	a2, a8, 0
	.loc 1 369 0
	movi	a10, 0xa0
	call8	ets_update_cpu_frequency
.LVL160:
	j	.L98
.LVL161:
.L99:
	.loc 1 370 0
	bnei	a2, 3, .L98
.LVL162:
.LBB30:
.LBB31:
	.loc 2 48 0
	l32r	a8, .LC76
	memw
	l32i.n	a3, a8, 0
.LVL163:
.LBE31:
.LBE30:
	.loc 1 371 0
	movi.n	a2, -4
.LVL164:
	and	a3, a3, a2
.LVL165:
	movi.n	a2, 2
	or	a2, a3, a2
	memw
	s32i.n	a2, a8, 0
	.loc 1 372 0
	movi	a10, 0xf0
	call8	ets_update_cpu_frequency
.LVL166:
.L98:
	.loc 1 374 0
	l32r	a8, .LC73
	memw
	l32i.n	a3, a8, 0
	l32r	a2, .LC74
	and	a3, a3, a2
	l32r	a2, .LC84
	or	a2, a3, a2
	memw
	s32i.n	a2, a8, 0
	.loc 1 375 0
	movi.n	a10, 0xa
	call8	ets_delay_us
.LVL167:
	.loc 1 376 0
	l32r	a10, .LC85
	call8	rtc_clk_apb_freq_update
.LVL168:
.L92:
	retw.n
.LFE17:
	.size	rtc_clk_cpu_freq_set, .-rtc_clk_cpu_freq_set
	.section	.text.rtc_clk_apb_freq_get,"ax",@progbits
	.literal_position
	.literal .LC86, 1072988340
	.literal .LC87, 500000
	.literal .LC88, 1125899907
	.literal .LC89, 1000000
	.align	4
	.global	rtc_clk_apb_freq_get
	.type	rtc_clk_apb_freq_get, @function
rtc_clk_apb_freq_get:
.LFB27:
	.loc 1 502 0
	entry	sp, 32
.LCFI24:
	.loc 1 503 0
	l32r	a2, .LC86
	memw
	l32i.n	a10, a2, 0
	call8	reg_val_to_clk_val
.LVL169:
	slli	a10, a10, 12
.LVL170:
	.loc 1 505 0
	l32r	a8, .LC87
	add.n	a10, a10, a8
.LVL171:
	.loc 1 506 0
	l32r	a8, .LC88
	muluh	a10, a10, a8
.LVL172:
	extui	a10, a10, 18, 14
.LVL173:
	.loc 1 508 0
	l32r	a2, .LC89
	mull	a2, a10, a2
	retw.n
.LFE27:
	.size	rtc_clk_apb_freq_get, .-rtc_clk_apb_freq_get
	.section	.rodata.str1.4
	.align	4
.LC100:
	.string	"\033[0;33mW (%d) %s: Can't estimate XTAL frequency, assuming 26MHz\033[0m\n"
	.align	4
.LC102:
	.string	"\033[0;33mW (%d) %s: Possibly invalid CONFIG_ESP32_XTAL_FREQ setting (%dMHz). Detected %d MHz.\033[0m\n"
	.section	.text.rtc_clk_init,"ax",@progbits
	.literal_position
	.literal .LC90, 1072988272
	.literal .LC91, 1072988284
	.literal .LC92, -4177921
	.literal .LC93, -33423361
	.literal .LC94, -28673
	.literal .LC95, 1610670148
	.literal .LC96, 261888
	.literal .LC97, -147457
	.literal .LC98, 1072988336
	.literal .LC99, .LC6
	.literal .LC101, .LC100
	.literal .LC103, .LC102
	.literal .LC104, 1072955420
	.literal .LC105, 1000000
	.literal .LC106, 12288
	.literal .LC107, 4096
	.align	4
	.global	rtc_clk_init
	.type	rtc_clk_init, @function
rtc_clk_init:
.LFB28:
	.loc 1 512 0
	entry	sp, 64
.LCFI25:
	s32i.n	a2, sp, 16
	s32i.n	a3, sp, 20
	.loc 1 522 0
	l32r	a2, .LC90
	memw
	l32i.n	a2, a2, 0
	extui	a2, a2, 27, 2
	bnei	a2, 1, .L103
	.loc 1 523 0
	movi.n	a10, 0
	call8	rtc_clk_cpu_freq_set
.LVL174:
.L103:
	.loc 1 534 0
	l32r	a2, .LC91
	memw
	l32i.n	a9, a2, 0
	l32r	a8, .LC92
	and	a9, a9, a8
	l32i.n	a8, sp, 16
	extui	a8, a8, 17, 8
	slli	a8, a8, 14
	or	a8, a8, a9
	memw
	s32i.n	a8, a2, 0
	.loc 1 535 0
	l32r	a2, .LC90
	memw
	l32i.n	a9, a2, 0
	l32r	a8, .LC93
	and	a9, a9, a8
	l8ui	a8, sp, 20
	slli	a8, a8, 17
	or	a8, a8, a9
	memw
	s32i.n	a8, a2, 0
	.loc 1 538 0
	memw
	l32i.n	a9, a2, 0
	l32r	a8, .LC94
	and	a9, a9, a8
	l32i.n	a8, sp, 16
	extui	a8, a8, 14, 3
	slli	a8, a8, 12
	or	a8, a8, a9
	memw
	s32i.n	a8, a2, 0
	.loc 1 541 0
	l32r	a2, .LC95
	memw
	l32i.n	a3, a2, 0
	l32r	a8, .LC96
	or	a8, a3, a8
	memw
	s32i.n	a8, a2, 0
	.loc 1 542 0
	memw
	l32i.n	a3, a2, 0
	l32r	a8, .LC97
	and	a8, a3, a8
	memw
	s32i.n	a8, a2, 0
	.loc 1 545 0
	call8	rtc_clk_xtal_freq_estimate
.LVL175:
	mov.n	a3, a10
.LVL176:
	.loc 1 546 0
	l8ui	a2, sp, 16
.LVL177:
	.loc 1 547 0
	bnez.n	a2, .L104
	.loc 1 548 0
	l32r	a2, .LC98
.LVL178:
	memw
	l32i.n	a10, a2, 0
	call8	clk_val_is_valid
.LVL179:
	beqz.n	a10, .L105
	.loc 1 550 0
	call8	rtc_clk_xtal_freq_get
.LVL180:
	mov.n	a2, a10
.LVL181:
	j	.L107
.LVL182:
.L105:
	.loc 1 554 0
	bnez.n	a3, .L110
	.loc 1 555 0 discriminator 1
	call8	esp_log_timestamp
.LVL183:
	l32r	a11, .LC99
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC101
	movi.n	a10, 2
	call8	esp_log_write
.LVL184:
	.loc 1 556 0 discriminator 1
	movi.n	a2, 0x1a
	j	.L107
.LVL185:
.L104:
	.loc 1 559 0
	l32r	a8, .LC98
	memw
	l32i.n	a10, a8, 0
	call8	clk_val_is_valid
.LVL186:
	bnez.n	a10, .L107
	.loc 1 564 0 discriminator 1
	call8	esp_log_timestamp
.LVL187:
	l32r	a11, .LC99
	s32i.n	a3, sp, 0
	mov.n	a15, a2
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC103
	movi.n	a10, 2
	call8	esp_log_write
.LVL188:
	j	.L107
.LVL189:
.L110:
	.loc 1 553 0
	mov.n	a2, a3
.LVL190:
.L107:
.LBB32:
.LBB33:
	.file 3 "C:/esp/esp-idf/components/esp32/include/rom/uart.h"
	.loc 3 271 0
	l32r	a8, .LC104
	memw
	l32i.n	a8, a8, 0
	extui	a8, a8, 24, 4
	bnez.n	a8, .L107
.LBE33:
.LBE32:
	.loc 1 568 0
	mov.n	a10, a2
	call8	rtc_clk_xtal_freq_update
.LVL191:
	.loc 1 569 0
	l32r	a10, .LC105
	mull	a10, a2, a10
	call8	rtc_clk_apb_freq_update
.LVL192:
	.loc 1 571 0
	l32i.n	a10, sp, 16
	extui	a10, a10, 8, 3
	call8	rtc_clk_cpu_freq_set
.LVL193:
	.loc 1 574 0
	l32i.n	a3, sp, 16
.LVL194:
	l32r	a2, .LC106
	and	a2, a3, a2
	l32r	a8, .LC107
	bne	a2, a8, .L108
	.loc 1 575 0
	movi.n	a10, 1
	call8	rtc_clk_32k_enable
.LVL195:
.L108:
	.loc 1 577 0
	bbci	a3, 11, .L109
.LBB34:
	.loc 1 578 0
	addmi	a2, a2, -0x2000
	movi.n	a10, 1
	movi.n	a11, 0
	moveqz	a11, a10, a2
.LVL196:
	.loc 1 579 0
	call8	rtc_clk_8m_enable
.LVL197:
.L109:
.LBE34:
	.loc 1 581 0
	l32i.n	a10, sp, 16
	extui	a10, a10, 11, 1
	call8	rtc_clk_fast_freq_set
.LVL198:
	.loc 1 582 0
	l32i.n	a10, sp, 16
	extui	a10, a10, 12, 2
	call8	rtc_clk_slow_freq_set
.LVL199:
	retw.n
.LFE28:
	.size	rtc_clk_init, .-rtc_clk_init
	.section	.rodata.__func__$2759,"a",@progbits
	.align	4
	.type	__func__$2759, @object
	.size	__func__$2759, 23
__func__$2759:
	.string	"rtc_clk_cpu_freq_value"
	.section	.rodata.__func__$2744,"a",@progbits
	.align	4
	.type	__func__$2744, @object
	.size	__func__$2744, 21
__func__$2744:
	.string	"rtc_clk_cpu_freq_get"
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
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI0-.LFB3
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI1-.LFB20
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI2-.LFB21
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI3-.LFB22
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI4-.LFB25
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI5-.LFB4
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI6-.LFB5
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI7-.LFB6
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI8-.LFB7
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI9-.LFB8
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI10-.LFB9
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI11-.LFB10
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI12-.LFB11
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI13-.LFB12
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI14-.LFB13
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI15-.LFB14
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI16-.LFB15
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI17-.LFB16
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
	.uleb128 0x20
	.align	4
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI19-.LFB18
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE38:
.LSFDE40:
	.4byte	.LEFDE40-.LASFDE40
.LASFDE40:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI20-.LFB19
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE40:
.LSFDE42:
	.4byte	.LEFDE42-.LASFDE42
.LASFDE42:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI21-.LFB24
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE42:
.LSFDE44:
	.4byte	.LEFDE44-.LASFDE44
.LASFDE44:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI22-.LFB26
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE44:
.LSFDE46:
	.4byte	.LEFDE46-.LASFDE46
.LASFDE46:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI23-.LFB17
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE46:
.LSFDE48:
	.4byte	.LEFDE48-.LASFDE48
.LASFDE48:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI24-.LFB27
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE48:
.LSFDE50:
	.4byte	.LEFDE50-.LASFDE50
.LASFDE50:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI25-.LFB28
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE50:
	.text
.Letext0:
	.file 4 "C:/esp/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 5 "C:/esp/esp-idf/components/newlib/include/stdint.h"
	.file 6 "C:/esp/esp-idf/components/soc/esp32/include/soc/rtc.h"
	.file 7 "C:/esp/esp-idf/components/log/include/esp_log.h"
	.file 8 "C:/esp/esp-idf/components/esp32/include/rom/ets_sys.h"
	.file 9 "C:/esp/esp-idf/components/soc/esp32/i2c_rtc_clk.h"
	.file 10 "C:/esp/esp-idf/components/newlib/include/assert.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1192
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF122
	.byte	0xc
	.4byte	.LASF123
	.4byte	.LASF124
	.4byte	.Ldebug_ranges0+0x30
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
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x4
	.byte	0x1a
	.4byte	0x5e
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x4
	.byte	0x1e
	.4byte	0x77
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x5
	.byte	0x15
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x5
	.byte	0x2d
	.4byte	0x53
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x5
	.byte	0x39
	.4byte	0x6c
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF13
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF16
	.uleb128 0x5
	.byte	0x4
	.4byte	0xc1
	.uleb128 0x6
	.4byte	0xb4
	.uleb128 0x7
	.byte	0x4
	.4byte	0x5e
	.byte	0x6
	.byte	0x3c
	.4byte	0xeb
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x28
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x1a
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x6
	.byte	0x41
	.4byte	0xc6
	.uleb128 0x7
	.byte	0x4
	.4byte	0x5e
	.byte	0x6
	.byte	0x46
	.4byte	0x121
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF25
	.byte	0x3
	.uleb128 0x8
	.4byte	.LASF26
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x6
	.byte	0x4c
	.4byte	0xf6
	.uleb128 0x7
	.byte	0x4
	.4byte	0x5e
	.byte	0x6
	.byte	0x51
	.4byte	0x14b
	.uleb128 0x8
	.4byte	.LASF28
	.byte	0
	.uleb128 0x8
	.4byte	.LASF29
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF30
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF31
	.byte	0x6
	.byte	0x55
	.4byte	0x12c
	.uleb128 0x7
	.byte	0x4
	.4byte	0x5e
	.byte	0x6
	.byte	0x5a
	.4byte	0x16f
	.uleb128 0x8
	.4byte	.LASF32
	.byte	0
	.uleb128 0x8
	.4byte	.LASF33
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF34
	.byte	0x6
	.byte	0x5d
	.4byte	0x156
	.uleb128 0x7
	.byte	0x4
	.4byte	0x5e
	.byte	0x6
	.byte	0x65
	.4byte	0x199
	.uleb128 0x8
	.4byte	.LASF35
	.byte	0
	.uleb128 0x8
	.4byte	.LASF36
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF37
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.byte	0x6
	.byte	0x6e
	.4byte	0x20b
	.uleb128 0xa
	.4byte	.LASF38
	.byte	0x6
	.byte	0x6f
	.4byte	0xeb
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xa
	.4byte	.LASF39
	.byte	0x6
	.byte	0x70
	.4byte	0x121
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0xa
	.4byte	.LASF40
	.byte	0x6
	.byte	0x71
	.4byte	0x16f
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xa
	.4byte	.LASF41
	.byte	0x6
	.byte	0x72
	.4byte	0x14b
	.byte	0x4
	.byte	0x2
	.byte	0x12
	.byte	0
	.uleb128 0xa
	.4byte	.LASF42
	.byte	0x6
	.byte	0x73
	.4byte	0x89
	.byte	0x4
	.byte	0x3
	.byte	0xf
	.byte	0
	.uleb128 0xa
	.4byte	.LASF43
	.byte	0x6
	.byte	0x74
	.4byte	0x89
	.byte	0x4
	.byte	0x8
	.byte	0x7
	.byte	0
	.uleb128 0xa
	.4byte	.LASF44
	.byte	0x6
	.byte	0x75
	.4byte	0x89
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF45
	.byte	0x6
	.byte	0x76
	.4byte	0x199
	.uleb128 0x7
	.byte	0x4
	.4byte	0x5e
	.byte	0x7
	.byte	0x1f
	.4byte	0x247
	.uleb128 0x8
	.4byte	.LASF46
	.byte	0
	.uleb128 0x8
	.4byte	.LASF47
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF48
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF49
	.byte	0x3
	.uleb128 0x8
	.4byte	.LASF50
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF51
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF52
	.byte	0x7
	.byte	0x26
	.4byte	0x216
	.uleb128 0xb
	.4byte	.LASF125
	.byte	0x2
	.byte	0x2b
	.4byte	0x89
	.byte	0x3
	.4byte	0x279
	.uleb128 0xc
	.string	"reg"
	.byte	0x2
	.byte	0x2b
	.4byte	0x89
	.uleb128 0xd
	.string	"val"
	.byte	0x2
	.byte	0x2d
	.4byte	0x89
	.byte	0
	.uleb128 0xe
	.4byte	.LASF126
	.byte	0x3
	.2byte	0x10e
	.byte	0x3
	.4byte	0x293
	.uleb128 0xf
	.4byte	.LASF53
	.byte	0x3
	.2byte	0x10e
	.4byte	0x7e
	.byte	0
	.uleb128 0x10
	.4byte	.LASF60
	.byte	0x1
	.byte	0x5a
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2d6
	.uleb128 0x11
	.string	"dac"
	.byte	0x1
	.byte	0x5a
	.4byte	0x4c
	.4byte	.LLST0
	.uleb128 0x12
	.4byte	.LASF54
	.byte	0x1
	.byte	0x5a
	.4byte	0x4c
	.4byte	.LLST1
	.uleb128 0x12
	.4byte	.LASF55
	.byte	0x1
	.byte	0x5a
	.4byte	0x4c
	.4byte	.LLST2
	.byte	0
	.uleb128 0x13
	.4byte	.LASF57
	.byte	0x1
	.2byte	0x1b7
	.4byte	0x301
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x301
	.uleb128 0x14
	.string	"val"
	.byte	0x1
	.2byte	0x1b7
	.4byte	0x89
	.4byte	.LLST3
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF56
	.uleb128 0x13
	.4byte	.LASF58
	.byte	0x1
	.2byte	0x1bd
	.4byte	0x89
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x333
	.uleb128 0x14
	.string	"val"
	.byte	0x1
	.2byte	0x1bd
	.4byte	0x89
	.4byte	.LLST4
	.byte	0
	.uleb128 0x13
	.4byte	.LASF59
	.byte	0x1
	.2byte	0x1c1
	.4byte	0x89
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x35e
	.uleb128 0x14
	.string	"val"
	.byte	0x1
	.2byte	0x1c1
	.4byte	0x89
	.4byte	.LLST5
	.byte	0
	.uleb128 0x15
	.4byte	.LASF61
	.byte	0x1
	.2byte	0x1d5
	.4byte	0xeb
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x460
	.uleb128 0x16
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x1d7
	.4byte	0x94
	.uleb128 0x17
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x1dc
	.4byte	0x89
	.4byte	.LLST6
	.uleb128 0x18
	.4byte	.LVL13
	.4byte	0x112f
	.4byte	0x3ac
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL18
	.4byte	0x113b
	.uleb128 0x18
	.4byte	.LVL19
	.4byte	0x1146
	.4byte	0x3e9
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL22
	.4byte	0x113b
	.uleb128 0x18
	.4byte	.LVL23
	.4byte	0x1146
	.4byte	0x426
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL26
	.4byte	0x113b
	.uleb128 0x1b
	.4byte	.LVL27
	.4byte	0x1146
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC12
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF64
	.byte	0x1
	.byte	0x66
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x49e
	.uleb128 0x12
	.4byte	.LASF63
	.byte	0x1
	.byte	0x66
	.4byte	0x301
	.4byte	.LLST7
	.uleb128 0x1b
	.4byte	.LVL32
	.4byte	0x293
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF127
	.byte	0x1
	.byte	0x6f
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4e0
	.uleb128 0x18
	.4byte	.LVL34
	.4byte	0x1151
	.4byte	0x4c6
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x37
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL35
	.4byte	0x293
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF68
	.byte	0x1
	.byte	0x78
	.4byte	0x301
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1c
	.4byte	.LASF65
	.byte	0x1
	.byte	0x7d
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x539
	.uleb128 0x12
	.4byte	.LASF66
	.byte	0x1
	.byte	0x7d
	.4byte	0x301
	.4byte	.LLST8
	.uleb128 0x12
	.4byte	.LASF67
	.byte	0x1
	.byte	0x7d
	.4byte	0x301
	.4byte	.LLST9
	.uleb128 0x1b
	.4byte	.LVL39
	.4byte	0x1151
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF69
	.byte	0x1
	.byte	0x8f
	.4byte	0x301
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1e
	.4byte	.LASF70
	.byte	0x1
	.byte	0x94
	.4byte	0x301
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1c
	.4byte	.LASF71
	.byte	0x1
	.byte	0x99
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x794
	.uleb128 0x12
	.4byte	.LASF63
	.byte	0x1
	.byte	0x99
	.4byte	0x301
	.4byte	.LLST10
	.uleb128 0x12
	.4byte	.LASF72
	.byte	0x1
	.byte	0x99
	.4byte	0x89
	.4byte	.LLST11
	.uleb128 0x12
	.4byte	.LASF73
	.byte	0x1
	.byte	0x99
	.4byte	0x89
	.4byte	.LLST12
	.uleb128 0x1f
	.4byte	.LASF74
	.byte	0x1
	.byte	0x99
	.4byte	0x89
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1f
	.4byte	.LASF75
	.byte	0x1
	.byte	0x99
	.4byte	0x89
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x20
	.4byte	.LBB17
	.4byte	.LBE17-.LBB17
	.uleb128 0x21
	.4byte	.LASF77
	.byte	0x1
	.byte	0xa5
	.4byte	0x7e
	.4byte	.LLST13
	.uleb128 0x21
	.4byte	.LASF78
	.byte	0x1
	.byte	0xa6
	.4byte	0x89
	.4byte	.LLST14
	.uleb128 0x18
	.4byte	.LVL49
	.4byte	0x115d
	.4byte	0x617
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x6d
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x37
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x35
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x75
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0
	.uleb128 0x18
	.4byte	.LVL50
	.4byte	0x115d
	.4byte	0x648
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x6d
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x39
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x37
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0
	.uleb128 0x18
	.4byte	.LVL51
	.4byte	0x115d
	.4byte	0x679
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x6d
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x38
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x37
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x74
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0
	.uleb128 0x18
	.4byte	.LVL52
	.4byte	0x1168
	.4byte	0x69c
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x6d
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x35
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x39
	.byte	0
	.uleb128 0x18
	.4byte	.LVL53
	.4byte	0x1168
	.4byte	0x6c0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x6d
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x35
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL54
	.4byte	0x115d
	.4byte	0x6f1
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x6d
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x76
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0
	.uleb128 0x18
	.4byte	.LVL55
	.4byte	0x1168
	.4byte	0x714
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x6d
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x3f
	.byte	0
	.uleb128 0x18
	.4byte	.LVL56
	.4byte	0x1168
	.4byte	0x738
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x6d
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x8
	.byte	0x3f
	.byte	0
	.uleb128 0x18
	.4byte	.LVL57
	.4byte	0x1168
	.4byte	0x75b
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x6d
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x4f
	.byte	0
	.uleb128 0x18
	.4byte	.LVL58
	.4byte	0x1151
	.4byte	0x76e
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL59
	.4byte	0x1173
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x6d
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x37
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x37
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF79
	.byte	0x1
	.byte	0xc0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7ca
	.uleb128 0x12
	.4byte	.LASF41
	.byte	0x1
	.byte	0xc0
	.4byte	0x14b
	.4byte	.LLST15
	.uleb128 0x1b
	.4byte	.LVL63
	.4byte	0x1151
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0x12c
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF80
	.byte	0x1
	.byte	0xc6
	.4byte	0x14b
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x22
	.4byte	.LASF81
	.byte	0x1
	.byte	0xcb
	.4byte	0x89
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x802
	.uleb128 0x1a
	.4byte	.LVL64
	.4byte	0x7ca
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF82
	.byte	0x1
	.byte	0xd5
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x836
	.uleb128 0x12
	.4byte	.LASF40
	.byte	0x1
	.byte	0xd5
	.4byte	0x16f
	.4byte	.LLST16
	.uleb128 0x1b
	.4byte	.LVL67
	.4byte	0x1151
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF83
	.byte	0x1
	.byte	0xdb
	.4byte	0x16f
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1c
	.4byte	.LASF84
	.byte	0x1
	.byte	0xe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa3f
	.uleb128 0x12
	.4byte	.LASF38
	.byte	0x1
	.byte	0xe0
	.4byte	0xeb
	.4byte	.LLST17
	.uleb128 0x12
	.4byte	.LASF39
	.byte	0x1
	.byte	0xe0
	.4byte	0x121
	.4byte	.LLST18
	.uleb128 0x21
	.4byte	.LASF85
	.byte	0x1
	.byte	0xe2
	.4byte	0x7e
	.4byte	.LLST19
	.uleb128 0x21
	.4byte	.LASF86
	.byte	0x1
	.byte	0xe3
	.4byte	0x7e
	.4byte	.LLST20
	.uleb128 0x21
	.4byte	.LASF87
	.byte	0x1
	.byte	0xe4
	.4byte	0x7e
	.4byte	.LLST21
	.uleb128 0x21
	.4byte	.LASF88
	.byte	0x1
	.byte	0xe5
	.4byte	0x7e
	.4byte	.LLST22
	.uleb128 0x21
	.4byte	.LASF89
	.byte	0x1
	.byte	0xe6
	.4byte	0x7e
	.4byte	.LLST23
	.uleb128 0x23
	.string	"bw"
	.byte	0x1
	.byte	0xe7
	.4byte	0x7e
	.4byte	.LLST24
	.uleb128 0x17
	.4byte	.LASF90
	.byte	0x1
	.2byte	0x13a
	.4byte	0x7e
	.4byte	.LLST25
	.uleb128 0x24
	.4byte	.LASF91
	.byte	0x1
	.2byte	0x13b
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x24
	.4byte	.LASF92
	.byte	0x1
	.2byte	0x13c
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x17
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x140
	.4byte	0x89
	.4byte	.LLST26
	.uleb128 0x18
	.4byte	.LVL78
	.4byte	0x1168
	.4byte	0x937
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x66
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x3b
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x8
	.byte	0x43
	.byte	0
	.uleb128 0x18
	.4byte	.LVL79
	.4byte	0x1168
	.4byte	0x95b
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x66
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x39
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x8
	.byte	0x84
	.byte	0
	.uleb128 0x18
	.4byte	.LVL82
	.4byte	0x1151
	.4byte	0x96e
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x18
	.4byte	.LVL91
	.4byte	0x1168
	.4byte	0x992
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x66
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x3b
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x8
	.byte	0xc3
	.byte	0
	.uleb128 0x18
	.4byte	.LVL92
	.4byte	0x1168
	.4byte	0x9b6
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x66
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x39
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x8
	.byte	0x74
	.byte	0
	.uleb128 0x18
	.4byte	.LVL97
	.4byte	0x1168
	.4byte	0x9e4
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x66
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0xc
	.byte	0x77
	.sleb128 0
	.byte	0x37
	.byte	0x24
	.byte	0x76
	.sleb128 0
	.byte	0x34
	.byte	0x24
	.byte	0x21
	.byte	0x75
	.sleb128 0
	.byte	0x21
	.byte	0
	.uleb128 0x18
	.4byte	.LVL98
	.4byte	0x1168
	.4byte	0xa08
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x66
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL99
	.4byte	0x1168
	.4byte	0xa2c
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x66
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x35
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL100
	.4byte	0x7ca
	.uleb128 0x1a
	.4byte	.LVL102
	.4byte	0x1151
	.byte	0
	.uleb128 0x25
	.4byte	.LASF94
	.byte	0x1
	.2byte	0x1c5
	.4byte	0xeb
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xacb
	.uleb128 0x17
	.4byte	.LASF95
	.byte	0x1
	.2byte	0x1c8
	.4byte	0x89
	.4byte	.LLST27
	.uleb128 0x18
	.4byte	.LVL104
	.4byte	0x2d6
	.4byte	0xa7d
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL105
	.4byte	0x113b
	.uleb128 0x18
	.4byte	.LVL106
	.4byte	0x1146
	.4byte	0xaba
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC48
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL109
	.4byte	0x308
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LASF96
	.byte	0x1
	.2byte	0x17c
	.4byte	0x121
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbf7
	.uleb128 0x17
	.4byte	.LASF97
	.byte	0x1
	.2byte	0x17e
	.4byte	0x89
	.4byte	.LLST28
	.uleb128 0x26
	.4byte	.LASF98
	.4byte	0xc07
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2744
	.uleb128 0x27
	.4byte	.Ldebug_ranges0+0
	.4byte	0xb53
	.uleb128 0x17
	.4byte	.LASF99
	.byte	0x1
	.2byte	0x181
	.4byte	0x89
	.4byte	.LLST29
	.uleb128 0x1a
	.4byte	.LVL113
	.4byte	0xa3f
	.uleb128 0x1b
	.4byte	.LVL114
	.4byte	0x117e
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC55
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x187
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2744
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC52
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0xbca
	.uleb128 0x17
	.4byte	.LASF100
	.byte	0x1
	.2byte	0x18c
	.4byte	0x89
	.4byte	.LLST30
	.uleb128 0x28
	.4byte	0x252
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.byte	0x1
	.2byte	0x18c
	.4byte	0xb9d
	.uleb128 0x29
	.4byte	0x262
	.4byte	.LLST31
	.uleb128 0x20
	.4byte	.LBB21
	.4byte	.LBE21-.LBB21
	.uleb128 0x2a
	.4byte	0x26d
	.4byte	.LLST32
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL117
	.4byte	0x117e
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC55
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x194
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2744
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC52
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL118
	.4byte	0x117e
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC55
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x19b
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2744
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC52
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	0xb4
	.4byte	0xc07
	.uleb128 0x2c
	.4byte	0xa6
	.byte	0x14
	.byte	0
	.uleb128 0x6
	.4byte	0xbf7
	.uleb128 0x2d
	.4byte	.LASF128
	.byte	0x1
	.2byte	0x1a0
	.4byte	0x89
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc7b
	.uleb128 0x2e
	.4byte	.LASF39
	.byte	0x1
	.2byte	0x1a0
	.4byte	0x121
	.4byte	.LLST33
	.uleb128 0x26
	.4byte	.LASF98
	.4byte	0xc8b
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2759
	.uleb128 0x1a
	.4byte	.LVL125
	.4byte	0xa3f
	.uleb128 0x1b
	.4byte	.LVL127
	.4byte	0x117e
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC55
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1ae
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2759
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC64
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	0xb4
	.4byte	0xc8b
	.uleb128 0x2c
	.4byte	0xa6
	.byte	0x16
	.byte	0
	.uleb128 0x6
	.4byte	0xc7b
	.uleb128 0x2f
	.4byte	.LASF101
	.byte	0x1
	.2byte	0x1d0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcc5
	.uleb128 0x30
	.4byte	.LASF38
	.byte	0x1
	.2byte	0x1d0
	.4byte	0xeb
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1b
	.4byte	.LVL129
	.4byte	0x333
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF102
	.byte	0x1
	.2byte	0x1f0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcfc
	.uleb128 0x30
	.4byte	.LASF103
	.byte	0x1
	.2byte	0x1f0
	.4byte	0x89
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1b
	.4byte	.LVL131
	.4byte	0x333
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x4
	.byte	0x72
	.sleb128 0
	.byte	0x3c
	.byte	0x25
	.byte	0
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x145
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf06
	.uleb128 0x2e
	.4byte	.LASF39
	.byte	0x1
	.2byte	0x145
	.4byte	0x121
	.4byte	.LLST34
	.uleb128 0x17
	.4byte	.LASF38
	.byte	0x1
	.2byte	0x147
	.4byte	0xeb
	.4byte	.LLST35
	.uleb128 0x17
	.4byte	.LASF105
	.byte	0x1
	.2byte	0x14d
	.4byte	0x89
	.4byte	.LLST36
	.uleb128 0x17
	.4byte	.LASF106
	.byte	0x1
	.2byte	0x157
	.4byte	0x89
	.4byte	.LLST37
	.uleb128 0x28
	.4byte	0x252
	.4byte	.LBB24
	.4byte	.LBE24-.LBB24
	.byte	0x1
	.2byte	0x150
	.4byte	0xd83
	.uleb128 0x31
	.4byte	0x262
	.4byte	0x3ff0003c
	.uleb128 0x20
	.4byte	.LBB25
	.4byte	.LBE25-.LBB25
	.uleb128 0x2a
	.4byte	0x26d
	.4byte	.LLST38
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	0x252
	.4byte	.LBB26
	.4byte	.LBE26-.LBB26
	.byte	0x1
	.2byte	0x16d
	.4byte	0xdb4
	.uleb128 0x29
	.4byte	0x262
	.4byte	.LLST39
	.uleb128 0x20
	.4byte	.LBB27
	.4byte	.LBE27-.LBB27
	.uleb128 0x2a
	.4byte	0x26d
	.4byte	.LLST40
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	0x252
	.4byte	.LBB28
	.4byte	.LBE28-.LBB28
	.byte	0x1
	.2byte	0x170
	.4byte	0xde5
	.uleb128 0x29
	.4byte	0x262
	.4byte	.LLST41
	.uleb128 0x20
	.4byte	.LBB29
	.4byte	.LBE29-.LBB29
	.uleb128 0x2a
	.4byte	0x26d
	.4byte	.LLST42
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	0x252
	.4byte	.LBB30
	.4byte	.LBE30-.LBB30
	.byte	0x1
	.2byte	0x173
	.4byte	0xe16
	.uleb128 0x29
	.4byte	0x262
	.4byte	.LLST43
	.uleb128 0x20
	.4byte	.LBB31
	.4byte	.LBE31-.LBB31
	.uleb128 0x2a
	.4byte	0x26d
	.4byte	.LLST44
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL133
	.4byte	0xa3f
	.uleb128 0x18
	.4byte	.LVL135
	.4byte	0x1189
	.4byte	0xe33
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL136
	.4byte	0x7ca
	.uleb128 0x1a
	.4byte	.LVL138
	.4byte	0x1151
	.uleb128 0x18
	.4byte	.LVL141
	.4byte	0xcc5
	.4byte	0xe5f
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x8
	.byte	0x73
	.sleb128 0
	.byte	0xc
	.4byte	0xf4240
	.byte	0x1e
	.byte	0
	.uleb128 0x18
	.4byte	.LVL146
	.4byte	0x1189
	.4byte	0xe72
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x18
	.4byte	.LVL147
	.4byte	0xcc5
	.4byte	0xe89
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0xc
	.4byte	0x1e8480
	.byte	0
	.uleb128 0x18
	.4byte	.LVL149
	.4byte	0x84b
	.4byte	0xea3
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL154
	.4byte	0x1189
	.4byte	0xeb7
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x50
	.byte	0
	.uleb128 0x18
	.4byte	.LVL160
	.4byte	0x1189
	.4byte	0xecb
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0xa0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL166
	.4byte	0x1189
	.4byte	0xedf
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0xf0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL167
	.4byte	0x1151
	.4byte	0xef2
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL168
	.4byte	0xcc5
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0xc
	.4byte	0x4c4b400
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LASF107
	.byte	0x1
	.2byte	0x1f5
	.4byte	0x89
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf46
	.uleb128 0x17
	.4byte	.LASF108
	.byte	0x1
	.2byte	0x1f7
	.4byte	0x89
	.4byte	.LLST45
	.uleb128 0x16
	.4byte	.LASF109
	.byte	0x1
	.2byte	0x1fa
	.4byte	0x89
	.uleb128 0x1a
	.4byte	.LVL169
	.4byte	0x308
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF110
	.byte	0x1
	.2byte	0x1ff
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1118
	.uleb128 0x32
	.string	"cfg"
	.byte	0x1
	.2byte	0x1ff
	.4byte	0x20b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.4byte	.LASF111
	.byte	0x1
	.2byte	0x221
	.4byte	0xeb
	.4byte	.LLST46
	.uleb128 0x17
	.4byte	.LASF38
	.byte	0x1
	.2byte	0x222
	.4byte	0xeb
	.4byte	.LLST47
	.uleb128 0x28
	.4byte	0x279
	.4byte	.LBB32
	.4byte	.LBE32-.LBB32
	.byte	0x1
	.2byte	0x237
	.4byte	0xfa5
	.uleb128 0x33
	.4byte	0x286
	.byte	0
	.uleb128 0x34
	.4byte	.LBB34
	.4byte	.LBE34-.LBB34
	.4byte	0xfda
	.uleb128 0x17
	.4byte	.LASF112
	.byte	0x1
	.2byte	0x242
	.4byte	0x301
	.4byte	.LLST48
	.uleb128 0x1b
	.4byte	.LVL197
	.4byte	0x4f5
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x4
	.byte	0x72
	.sleb128 0
	.byte	0x30
	.byte	0x29
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL174
	.4byte	0xcfc
	.4byte	0xfed
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL175
	.4byte	0x35e
	.uleb128 0x1a
	.4byte	.LVL179
	.4byte	0x2d6
	.uleb128 0x1a
	.4byte	.LVL180
	.4byte	0xa3f
	.uleb128 0x1a
	.4byte	.LVL183
	.4byte	0x113b
	.uleb128 0x18
	.4byte	.LVL184
	.4byte	0x1146
	.4byte	0x103f
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC100
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL186
	.4byte	0x2d6
	.uleb128 0x1a
	.4byte	.LVL187
	.4byte	0x113b
	.uleb128 0x18
	.4byte	.LVL188
	.4byte	0x1146
	.4byte	0x108c
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC102
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL191
	.4byte	0xc90
	.4byte	0x10a0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL192
	.4byte	0xcc5
	.4byte	0x10ba
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x8
	.byte	0x72
	.sleb128 0
	.byte	0xc
	.4byte	0xf4240
	.byte	0x1e
	.byte	0
	.uleb128 0x18
	.4byte	.LVL193
	.4byte	0xcfc
	.4byte	0x10d4
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x8
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x9
	.byte	0xf9
	.byte	0x24
	.byte	0x31
	.byte	0x25
	.byte	0
	.uleb128 0x18
	.4byte	.LVL195
	.4byte	0x460
	.4byte	0x10e7
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x18
	.4byte	.LVL198
	.4byte	0x802
	.4byte	0x1101
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x8
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x9
	.byte	0xf8
	.byte	0x24
	.byte	0x33
	.byte	0x25
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL199
	.4byte	0x794
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x8
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x9
	.byte	0xf6
	.byte	0x24
	.byte	0x32
	.byte	0x25
	.byte	0
	.byte	0
	.uleb128 0x35
	.string	"TAG"
	.byte	0x1
	.byte	0x2a
	.4byte	0x112a
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC6
	.byte	0x9f
	.uleb128 0x6
	.4byte	0xbb
	.uleb128 0x36
	.4byte	.LASF113
	.4byte	.LASF113
	.byte	0x6
	.2byte	0x157
	.uleb128 0x37
	.4byte	.LASF114
	.4byte	.LASF114
	.byte	0x7
	.byte	0x4c
	.uleb128 0x37
	.4byte	.LASF115
	.4byte	.LASF115
	.byte	0x7
	.byte	0x60
	.uleb128 0x36
	.4byte	.LASF116
	.4byte	.LASF116
	.byte	0x8
	.2byte	0x176
	.uleb128 0x37
	.4byte	.LASF117
	.4byte	.LASF117
	.byte	0x9
	.byte	0x21
	.uleb128 0x37
	.4byte	.LASF118
	.4byte	.LASF118
	.byte	0x9
	.byte	0x20
	.uleb128 0x37
	.4byte	.LASF119
	.4byte	.LASF119
	.byte	0x9
	.byte	0x1f
	.uleb128 0x37
	.4byte	.LASF120
	.4byte	.LASF120
	.byte	0xa
	.byte	0x29
	.uleb128 0x36
	.4byte	.LASF121
	.4byte	.LASF121
	.byte	0x8
	.2byte	0x180
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x29
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x30
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
	.uleb128 0x31
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x6
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL1
	.4byte	.LFE3
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
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL3
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL8
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL10
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL12
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x5
	.byte	0x7f
	.sleb128 0
	.byte	0x43
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL21
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL25
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL30
	.4byte	.LFE25
	.2byte	0x5
	.byte	0x7f
	.sleb128 0
	.byte	0x43
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL33
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL37
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL36
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL38
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL40
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL42
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL40
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL48
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL40
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL41
	.4byte	.LVL48
	.2byte	0x3
	.byte	0x8
	.byte	0x49
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0xd
	.byte	0x72
	.sleb128 0
	.byte	0x9
	.byte	0xf4
	.byte	0x24
	.byte	0x33
	.byte	0x25
	.byte	0x30
	.byte	0x29
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0xd
	.byte	0x72
	.sleb128 0
	.byte	0x9
	.byte	0xf4
	.byte	0x24
	.byte	0x33
	.byte	0x25
	.byte	0x30
	.byte	0x29
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL62
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL66
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL68
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
	.4byte	.LVL73
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL73
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL74
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
	.4byte	.LVL80
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL80
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL83
	.4byte	.LVL84
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL84
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL85
	.4byte	.LVL86
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL87
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
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL69
	.4byte	.LVL80
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL80
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL81
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL71
	.4byte	.LVL73
	.2byte	0x2
	.byte	0x3b
	.byte	0x9f
	.4byte	.LVL73
	.4byte	.LVL75
	.2byte	0x2
	.byte	0x3c
	.byte	0x9f
	.4byte	.LVL77
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL84
	.4byte	.LVL86
	.2byte	0x2
	.byte	0x3b
	.byte	0x9f
	.4byte	.LVL86
	.4byte	.LVL88
	.2byte	0x2
	.byte	0x3c
	.byte	0x9f
	.4byte	.LVL90
	.4byte	.LFE16
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL71
	.4byte	.LVL75
	.2byte	0x3
	.byte	0x9
	.byte	0xe0
	.byte	0x9f
	.4byte	.LVL77
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL84
	.4byte	.LVL86
	.2byte	0x3
	.byte	0x9
	.byte	0x90
	.byte	0x9f
	.4byte	.LVL86
	.4byte	.LVL88
	.2byte	0x3
	.byte	0x9
	.byte	0xe0
	.byte	0x9f
	.4byte	.LVL90
	.4byte	.LFE16
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL71
	.4byte	.LVL75
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL77
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL84
	.4byte	.LVL88
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL90
	.4byte	.LFE16
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL71
	.4byte	.LVL73
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL73
	.4byte	.LVL75
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL77
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL84
	.4byte	.LVL86
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL86
	.4byte	.LVL88
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL90
	.4byte	.LFE16
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL71
	.4byte	.LVL75
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL77
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL84
	.4byte	.LVL88
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL90
	.4byte	.LFE16
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL71
	.4byte	.LVL73
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL73
	.4byte	.LVL75
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL77
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL84
	.4byte	.LVL86
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL86
	.4byte	.LVL88
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL90
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL93
	.4byte	.LVL96
	.2byte	0x6
	.byte	0x7d
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL96
	.4byte	.LVL97-1
	.2byte	0xb
	.byte	0x77
	.sleb128 0
	.byte	0x37
	.byte	0x24
	.byte	0x78
	.sleb128 0
	.byte	0x21
	.byte	0x75
	.sleb128 0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL97-1
	.4byte	.LFE16
	.2byte	0xd
	.byte	0x77
	.sleb128 0
	.byte	0x37
	.byte	0x24
	.byte	0x76
	.sleb128 0
	.byte	0x34
	.byte	0x24
	.byte	0x21
	.byte	0x75
	.sleb128 0
	.byte	0x21
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL101
	.4byte	.LVL102-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL103
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL108
	.4byte	.LVL110
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL111
	.4byte	.LVL113-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL114
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL117
	.4byte	.LVL118-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL118
	.4byte	.LVL120
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL112
	.4byte	.LVL114
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL118
	.4byte	.LVL119
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL120
	.4byte	.LVL121
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL116
	.4byte	.LVL117-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL122
	.4byte	.LFE18
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL114
	.4byte	.LVL117
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff0003c
	.byte	0x9f
	.4byte	.LVL122
	.4byte	.LFE18
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff0003c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL115
	.4byte	.LVL116
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL123
	.4byte	.LVL124
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL124
	.4byte	.LVL126
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL126
	.4byte	.LVL127
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL127
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL132
	.4byte	.LVL144
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL144
	.4byte	.LVL148
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL148
	.4byte	.LVL153
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL153
	.4byte	.LVL155
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL155
	.4byte	.LVL158
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL158
	.4byte	.LVL161
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL161
	.4byte	.LVL164
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL164
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL134
	.4byte	.LVL145
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL148
	.4byte	.LVL151
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL155
	.4byte	.LVL157
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL161
	.4byte	.LVL163
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL137
	.4byte	.LVL138-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL142
	.4byte	.LVL143
	.2byte	0x8
	.byte	0x78
	.sleb128 0
	.byte	0x9
	.byte	0xec
	.byte	0x24
	.byte	0x33
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL139
	.4byte	.LVL140
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL150
	.4byte	.LVL155
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff0003c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL152
	.4byte	.LVL154-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL156
	.4byte	.LVL161
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff0003c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL157
	.4byte	.LVL159
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL162
	.4byte	.LVL166
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff0003c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL163
	.4byte	.LVL165
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL170
	.4byte	.LVL172
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL176
	.4byte	.LVL194
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL177
	.4byte	.LVL178
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL178
	.4byte	.LVL181
	.2byte	0x8
	.byte	0x91
	.sleb128 -48
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL181
	.4byte	.LVL182
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL182
	.4byte	.LVL184
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL184
	.4byte	.LVL185
	.2byte	0x2
	.byte	0x4a
	.byte	0x9f
	.4byte	.LVL185
	.4byte	.LVL189
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL189
	.4byte	.LVL190
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL196
	.4byte	.LVL197-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL197-1
	.4byte	.LVL197
	.2byte	0x5
	.byte	0x72
	.sleb128 0
	.byte	0x30
	.byte	0x29
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0xe4
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
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
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB18
	.4byte	.LBE18
	.4byte	.LBB22
	.4byte	.LBE22
	.4byte	0
	.4byte	0
	.4byte	.LBB19
	.4byte	.LBE19
	.4byte	.LBB23
	.4byte	.LBE23
	.4byte	0
	.4byte	0
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
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
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF52:
	.string	"esp_log_level_t"
.LASF108:
	.string	"freq_hz"
.LASF122:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF30:
	.string	"RTC_SLOW_FREQ_8MD256"
.LASF124:
	.string	"C:\\\\esp\\\\ArkPOS2-esp\\\\build\\\\soc"
.LASF93:
	.string	"delay_pll_en"
.LASF102:
	.string	"rtc_clk_apb_freq_update"
.LASF28:
	.string	"RTC_SLOW_FREQ_RTC"
.LASF120:
	.string	"__assert_func"
.LASF60:
	.string	"rtc_clk_32k_enable_internal"
.LASF6:
	.string	"unsigned int"
.LASF114:
	.string	"esp_log_timestamp"
.LASF78:
	.string	"is_rev0"
.LASF103:
	.string	"apb_freq"
.LASF22:
	.string	"RTC_CPU_FREQ_XTAL"
.LASF117:
	.string	"rom_i2c_writeReg_Mask"
.LASF57:
	.string	"clk_val_is_valid"
.LASF109:
	.string	"remainder"
.LASF119:
	.string	"rom_i2c_readReg_Mask"
.LASF118:
	.string	"rom_i2c_writeReg"
.LASF128:
	.string	"rtc_clk_cpu_freq_value"
.LASF11:
	.string	"uint32_t"
.LASF99:
	.string	"pre_div"
.LASF80:
	.string	"rtc_clk_slow_freq_get"
.LASF126:
	.string	"uart_tx_wait_idle"
.LASF23:
	.string	"RTC_CPU_FREQ_80M"
.LASF58:
	.string	"reg_val_to_clk_val"
.LASF54:
	.string	"dres"
.LASF9:
	.string	"long long unsigned int"
.LASF121:
	.string	"ets_update_cpu_frequency"
.LASF17:
	.string	"RTC_XTAL_FREQ_AUTO"
.LASF84:
	.string	"rtc_clk_bbpll_set"
.LASF77:
	.string	"sdm_stop_val_2"
.LASF94:
	.string	"rtc_clk_xtal_freq_get"
.LASF64:
	.string	"rtc_clk_32k_enable"
.LASF48:
	.string	"ESP_LOG_WARN"
.LASF100:
	.string	"cpuperiod_sel"
.LASF63:
	.string	"enable"
.LASF81:
	.string	"rtc_clk_slow_freq_get_hz"
.LASF87:
	.string	"div10_8"
.LASF82:
	.string	"rtc_clk_fast_freq_set"
.LASF89:
	.string	"dcur"
.LASF20:
	.string	"RTC_XTAL_FREQ_24M"
.LASF56:
	.string	"_Bool"
.LASF104:
	.string	"rtc_clk_cpu_freq_set"
.LASF68:
	.string	"rtc_clk_32k_enabled"
.LASF8:
	.string	"__uint64_t"
.LASF34:
	.string	"rtc_fast_freq_t"
.LASF46:
	.string	"ESP_LOG_NONE"
.LASF90:
	.string	"i2c_bbpll_lref"
.LASF39:
	.string	"cpu_freq"
.LASF72:
	.string	"sdm0"
.LASF74:
	.string	"sdm2"
.LASF44:
	.string	"clk_8m_dfreq"
.LASF107:
	.string	"rtc_clk_apb_freq_get"
.LASF16:
	.string	"char"
.LASF32:
	.string	"RTC_FAST_FREQ_XTALD4"
.LASF59:
	.string	"clk_val_to_reg_val"
.LASF25:
	.string	"RTC_CPU_FREQ_240M"
.LASF27:
	.string	"rtc_cpu_freq_t"
.LASF85:
	.string	"div_ref"
.LASF10:
	.string	"uint8_t"
.LASF19:
	.string	"RTC_XTAL_FREQ_26M"
.LASF127:
	.string	"rtc_clk_32k_bootstrap"
.LASF70:
	.string	"rtc_clk_8md256_enabled"
.LASF69:
	.string	"rtc_clk_8m_enabled"
.LASF95:
	.string	"xtal_freq_reg"
.LASF7:
	.string	"long long int"
.LASF116:
	.string	"ets_delay_us"
.LASF71:
	.string	"rtc_clk_apll_enable"
.LASF125:
	.string	"DPORT_REG_READ"
.LASF40:
	.string	"fast_freq"
.LASF97:
	.string	"soc_clk_sel"
.LASF35:
	.string	"RTC_CAL_RTC_MUX"
.LASF83:
	.string	"rtc_clk_fast_freq_get"
.LASF49:
	.string	"ESP_LOG_INFO"
.LASF106:
	.string	"apll_fpd"
.LASF96:
	.string	"rtc_clk_cpu_freq_get"
.LASF43:
	.string	"slow_clk_dcap"
.LASF66:
	.string	"clk_8m_en"
.LASF33:
	.string	"RTC_FAST_FREQ_8M"
.LASF67:
	.string	"d256_en"
.LASF53:
	.string	"uart_no"
.LASF24:
	.string	"RTC_CPU_FREQ_160M"
.LASF65:
	.string	"rtc_clk_8m_enable"
.LASF86:
	.string	"div7_0"
.LASF21:
	.string	"rtc_xtal_freq_t"
.LASF36:
	.string	"RTC_CAL_8MD256"
.LASF73:
	.string	"sdm1"
.LASF2:
	.string	"short int"
.LASF13:
	.string	"long int"
.LASF31:
	.string	"rtc_slow_freq_t"
.LASF12:
	.string	"uint64_t"
.LASF75:
	.string	"o_div"
.LASF4:
	.string	"__uint8_t"
.LASF91:
	.string	"i2c_bbpll_div_7_0"
.LASF26:
	.string	"RTC_CPU_FREQ_2M"
.LASF55:
	.string	"dbias"
.LASF111:
	.string	"est_xtal_freq"
.LASF38:
	.string	"xtal_freq"
.LASF14:
	.string	"sizetype"
.LASF15:
	.string	"long unsigned int"
.LASF51:
	.string	"ESP_LOG_VERBOSE"
.LASF105:
	.string	"delay_xtal_switch"
.LASF62:
	.string	"cal_val"
.LASF101:
	.string	"rtc_clk_xtal_freq_update"
.LASF88:
	.string	"lref"
.LASF1:
	.string	"unsigned char"
.LASF5:
	.string	"__uint32_t"
.LASF41:
	.string	"slow_freq"
.LASF61:
	.string	"rtc_clk_xtal_freq_estimate"
.LASF113:
	.string	"rtc_clk_cal_ratio"
.LASF76:
	.string	"freq_mhz"
.LASF18:
	.string	"RTC_XTAL_FREQ_40M"
.LASF37:
	.string	"RTC_CAL_32K_XTAL"
.LASF92:
	.string	"i2c_bbpll_dcur"
.LASF50:
	.string	"ESP_LOG_DEBUG"
.LASF45:
	.string	"rtc_clk_config_t"
.LASF0:
	.string	"signed char"
.LASF123:
	.string	"C:/esp/esp-idf/components/soc/esp32/rtc_clk.c"
.LASF3:
	.string	"short unsigned int"
.LASF110:
	.string	"rtc_clk_init"
.LASF42:
	.string	"clk_8m_div"
.LASF98:
	.string	"__func__"
.LASF29:
	.string	"RTC_SLOW_FREQ_32K_XTAL"
.LASF115:
	.string	"esp_log_write"
.LASF112:
	.string	"need_8md256"
.LASF79:
	.string	"rtc_clk_slow_freq_set"
.LASF47:
	.string	"ESP_LOG_ERROR"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-61-gab8375a) 5.2.0"