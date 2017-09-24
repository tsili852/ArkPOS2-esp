	.file	"pcnt.c"
	.text
.Ltext0:
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC1:
	.string	"pcnt"
	.align	4
.LC3:
	.string	"\033[0;31mE (%d) %s: %s(%d): %s\033[0m\n"
	.align	4
.LC5:
	.string	"PCNT UNIT ERROR"
	.align	4
.LC7:
	.string	"PCNT CHANNEL ERROR"
	.align	4
.LC9:
	.string	"PCNT COUNTER MODE ERROR"
	.align	4
.LC11:
	.string	"PCNT CTRL MODE ERROR"
	.section	.text.pcnt_set_mode,"ax",@progbits
	.literal_position
	.literal .LC0, __FUNCTION__$5021
	.literal .LC2, .LC1
	.literal .LC4, .LC3
	.literal .LC6, .LC5
	.literal .LC8, .LC7
	.literal .LC10, .LC9
	.literal .LC12, .LC11
	.literal .LC13, PCNT
	.literal .LC14, -786433
	.literal .LC15, -196609
	.literal .LC16, -3145729
	.literal .LC17, -12582913
	.literal .LC18, -201326593
	.literal .LC19, -50331649
	.literal .LC20, -805306369
	.literal .LC21, 1073741823
	.align	4
	.global	pcnt_set_mode
	.type	pcnt_set_mode, @function
pcnt_set_mode:
.LFB12:
	.file 1 "C:/esp/esp-idf/components/driver/pcnt.c"
	.loc 1 73 0
.LVL0:
	entry	sp, 48
.LCFI0:
	mov.n	a8, a7
	.loc 1 74 0
	bltui	a2, 8, .L2
	.loc 1 74 0 is_stmt 0 discriminator 2
	call8	esp_log_timestamp
.LVL1:
	l32r	a11, .LC2
	l32r	a2, .LC6
.LVL2:
	s32i.n	a2, sp, 4
	movi.n	a2, 0x4a
	s32i.n	a2, sp, 0
	l32r	a15, .LC0
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC4
	movi.n	a10, 1
	call8	esp_log_write
.LVL3:
	movi	a2, 0x102
	retw.n
.LVL4:
.L2:
	.loc 1 75 0 is_stmt 1
	bltui	a3, 2, .L4
	.loc 1 75 0 is_stmt 0 discriminator 2
	call8	esp_log_timestamp
.LVL5:
	l32r	a11, .LC2
	l32r	a2, .LC8
.LVL6:
	s32i.n	a2, sp, 4
	movi.n	a2, 0x4b
	s32i.n	a2, sp, 0
	l32r	a15, .LC0
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC4
	movi.n	a10, 1
	call8	esp_log_write
.LVL7:
	movi	a2, 0x102
	retw.n
.LVL8:
.L4:
	.loc 1 76 0 is_stmt 1
	movi.n	a9, 1
	bgeui	a4, 3, .L5
	movi.n	a9, 0
.L5:
	extui	a10, a9, 0, 8
	movi.n	a9, 1
	bgeui	a5, 3, .L6
	movi.n	a9, 0
.L6:
	extui	a9, a9, 0, 8
	or	a9, a10, a9
	beqz.n	a9, .L7
	.loc 1 76 0 is_stmt 0 discriminator 2
	call8	esp_log_timestamp
.LVL9:
	l32r	a11, .LC2
	l32r	a2, .LC10
.LVL10:
	s32i.n	a2, sp, 4
	movi.n	a2, 0x4c
	s32i.n	a2, sp, 0
	l32r	a15, .LC0
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC4
	movi.n	a10, 1
	call8	esp_log_write
.LVL11:
	movi	a2, 0x102
	retw.n
.LVL12:
.L7:
	.loc 1 77 0 is_stmt 1
	movi.n	a9, 1
	bgeui	a6, 3, .L8
	movi.n	a9, 0
.L8:
	extui	a10, a9, 0, 8
	movi.n	a9, 1
	bgeui	a8, 3, .L9
	movi.n	a9, 0
.L9:
	extui	a9, a9, 0, 8
	or	a9, a10, a9
	beqz.n	a9, .L10
	.loc 1 77 0 is_stmt 0 discriminator 2
	call8	esp_log_timestamp
.LVL13:
	l32r	a11, .LC2
	l32r	a2, .LC12
.LVL14:
	s32i.n	a2, sp, 4
	movi.n	a2, 0x4d
	s32i.n	a2, sp, 0
	l32r	a15, .LC0
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC4
	movi.n	a10, 1
	call8	esp_log_write
.LVL15:
	movi	a2, 0x102
	retw.n
.LVL16:
.L10:
	.loc 1 79 0 is_stmt 1
	bnez.n	a3, .L11
	.loc 1 80 0
	l32r	a9, .LC13
	slli	a8, a2, 1
	add.n	a10, a8, a2
	slli	a3, a10, 2
.LVL17:
	add.n	a3, a9, a3
	memw
	l32i.n	a11, a3, 0
	extui	a4, a4, 0, 2
.LVL18:
	slli	a10, a4, 18
	l32r	a4, .LC14
	and	a4, a11, a4
	or	a4, a4, a10
	memw
	s32i.n	a4, a3, 0
	.loc 1 81 0
	memw
	l32i.n	a10, a3, 0
	extui	a5, a5, 0, 2
.LVL19:
	slli	a5, a5, 16
	l32r	a4, .LC15
	and	a4, a10, a4
	or	a4, a4, a5
	memw
	s32i.n	a4, a3, 0
	.loc 1 82 0
	memw
	l32i.n	a5, a3, 0
	extui	a6, a6, 0, 2
.LVL20:
	slli	a6, a6, 20
	l32r	a4, .LC16
	and	a4, a5, a4
	or	a4, a4, a6
	mov.n	a5, a4
	memw
	s32i.n	a4, a3, 0
	.loc 1 83 0
	add.n	a2, a8, a2
.LVL21:
	slli	a3, a2, 2
	add.n	a9, a9, a3
	memw
	l32i.n	a3, a9, 0
	extui	a7, a7, 0, 2
.LVL22:
	slli	a7, a7, 22
	l32r	a2, .LC17
	and	a2, a3, a2
	or	a2, a2, a7
	mov.n	a3, a2
	memw
	s32i.n	a2, a9, 0
	.loc 1 90 0
	movi.n	a2, 0
	retw.n
.LVL23:
.L11:
	.loc 1 85 0
	l32r	a9, .LC13
	slli	a10, a2, 1
	add.n	a3, a10, a2
.LVL24:
	slli	a8, a3, 2
	add.n	a8, a9, a8
	memw
	l32i.n	a11, a8, 0
	extui	a4, a4, 0, 2
.LVL25:
	slli	a4, a4, 26
	l32r	a3, .LC18
	and	a3, a11, a3
	or	a3, a3, a4
	memw
	s32i.n	a3, a8, 0
	.loc 1 86 0
	memw
	l32i.n	a4, a8, 0
	extui	a5, a5, 0, 2
.LVL26:
	slli	a5, a5, 24
	l32r	a3, .LC19
	and	a3, a4, a3
	or	a3, a3, a5
	memw
	s32i.n	a3, a8, 0
	.loc 1 87 0
	memw
	l32i.n	a4, a8, 0
	extui	a6, a6, 0, 2
.LVL27:
	slli	a6, a6, 28
	l32r	a3, .LC20
	and	a3, a4, a3
	or	a3, a3, a6
	mov.n	a4, a3
	memw
	s32i.n	a3, a8, 0
	.loc 1 88 0
	memw
	l32i.n	a3, a8, 0
	slli	a7, a7, 30
.LVL28:
	l32r	a2, .LC21
.LVL29:
	and	a2, a3, a2
	or	a7, a2, a7
	mov.n	a3, a7
	memw
	s32i.n	a7, a8, 0
	.loc 1 90 0
	movi.n	a2, 0
	.loc 1 91 0
	retw.n
.LFE12:
	.size	pcnt_set_mode, .-pcnt_set_mode
	.section	.rodata.str1.4
	.align	4
.LC28:
	.string	"PCNT GPIO NUM ERROR"
	.section	.text.pcnt_set_pin,"ax",@progbits
	.literal_position
	.literal .LC22, __FUNCTION__$5028
	.literal .LC23, .LC1
	.literal .LC24, .LC3
	.literal .LC25, .LC5
	.literal .LC26, .LC7
	.literal .LC27, GPIO_PIN_MUX_REG
	.literal .LC29, .LC28
	.literal .LC30, -28673
	.literal .LC31, 8192
	.align	4
	.global	pcnt_set_pin
	.type	pcnt_set_pin, @function
pcnt_set_pin:
.LFB13:
	.loc 1 94 0
.LVL30:
	entry	sp, 48
.LCFI1:
	.loc 1 95 0
	bltui	a2, 8, .L13
	.loc 1 95 0 is_stmt 0 discriminator 2
	call8	esp_log_timestamp
.LVL31:
	l32r	a11, .LC23
	l32r	a2, .LC25
.LVL32:
	s32i.n	a2, sp, 4
	movi.n	a2, 0x5f
	s32i.n	a2, sp, 0
	l32r	a15, .LC22
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC24
	movi.n	a10, 1
	call8	esp_log_write
.LVL33:
	movi	a2, 0x102
	retw.n
.LVL34:
.L13:
	.loc 1 96 0 is_stmt 1
	bltui	a3, 2, .L15
	.loc 1 96 0 is_stmt 0 discriminator 2
	call8	esp_log_timestamp
.LVL35:
	l32r	a11, .LC23
	l32r	a2, .LC26
.LVL36:
	s32i.n	a2, sp, 4
	movi	a2, 0x60
	s32i.n	a2, sp, 0
	l32r	a15, .LC22
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC24
	movi.n	a10, 1
	call8	esp_log_write
.LVL37:
	movi	a2, 0x102
	retw.n
.LVL38:
.L15:
	.loc 1 97 0 is_stmt 1
	movi.n	a8, 0x27
	blt	a8, a4, .L16
	.loc 1 97 0 is_stmt 0 discriminator 2
	l32r	a8, .LC27
	addx4	a8, a4, a8
	l32i.n	a8, a8, 0
	bnez.n	a8, .L17
.L16:
	.loc 1 97 0 discriminator 3
	bltz	a4, .L17
	.loc 1 97 0 discriminator 5
	call8	esp_log_timestamp
.LVL39:
	l32r	a11, .LC23
	l32r	a2, .LC29
.LVL40:
	s32i.n	a2, sp, 4
	movi	a2, 0x61
	s32i.n	a2, sp, 0
	l32r	a15, .LC22
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC24
	movi.n	a10, 1
	call8	esp_log_write
.LVL41:
	movi	a2, 0x102
	retw.n
.LVL42:
.L17:
	.loc 1 98 0 is_stmt 1
	movi.n	a8, 0x27
	blt	a8, a5, .L18
	.loc 1 98 0 is_stmt 0 discriminator 2
	l32r	a8, .LC27
	addx4	a8, a5, a8
	l32i.n	a6, a8, 0
	bnez.n	a6, .L19
.L18:
	.loc 1 98 0 discriminator 3
	bltz	a5, .L19
	.loc 1 98 0 discriminator 5
	call8	esp_log_timestamp
.LVL43:
	l32r	a11, .LC23
	l32r	a2, .LC29
.LVL44:
	s32i.n	a2, sp, 4
	movi	a2, 0x62
	s32i.n	a2, sp, 0
	l32r	a15, .LC22
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC24
	movi.n	a10, 1
	call8	esp_log_write
.LVL45:
	movi	a2, 0x102
	retw.n
.LVL46:
.L19:
	.loc 1 100 0 is_stmt 1
	bnez.n	a3, .L24
	movi.n	a11, 0x27
	j	.L20
.L24:
	movi.n	a11, 0x28
.L20:
.LVL47:
	.loc 1 101 0 discriminator 4
	bnez.n	a3, .L25
	.loc 1 101 0 is_stmt 0
	movi.n	a3, 0x29
.LVL48:
	j	.L21
.LVL49:
.L25:
	movi.n	a3, 0x2a
.LVL50:
.L21:
	.loc 1 102 0 is_stmt 1 discriminator 4
	bltui	a2, 5, .L22
	.loc 1 103 0
	addi.n	a11, a11, 12
.LVL51:
	.loc 1 104 0
	addi.n	a3, a3, 12
.LVL52:
.L22:
	.loc 1 106 0
	slli	a2, a2, 2
.LVL53:
	add.n	a6, a11, a2
.LVL54:
	.loc 1 107 0
	add.n	a2, a3, a2
.LVL55:
	.loc 1 109 0
	bltz	a4, .L23
	.loc 1 110 0
	l32r	a3, .LC27
.LVL56:
	addx4	a3, a4, a3
	l32i.n	a9, a3, 0
	memw
	l32i.n	a8, a9, 0
	l32r	a3, .LC30
	and	a8, a8, a3
	l32r	a3, .LC31
	or	a3, a8, a3
	memw
	s32i.n	a3, a9, 0
	.loc 1 111 0
	movi.n	a11, 1
.LVL57:
	mov.n	a10, a4
	call8	gpio_set_direction
.LVL58:
	.loc 1 112 0
	movi.n	a11, 0
	mov.n	a10, a4
	call8	gpio_set_pull_mode
.LVL59:
	.loc 1 113 0
	movi.n	a12, 0
	mov.n	a11, a6
	mov.n	a10, a4
	call8	gpio_matrix_in
.LVL60:
.L23:
	.loc 1 115 0
	bltz	a5, .L26
	.loc 1 116 0
	l32r	a3, .LC27
	addx4	a3, a5, a3
	l32i.n	a6, a3, 0
.LVL61:
	memw
	l32i.n	a4, a6, 0
.LVL62:
	l32r	a3, .LC30
	and	a4, a4, a3
	l32r	a3, .LC31
	or	a3, a4, a3
	memw
	s32i.n	a3, a6, 0
	.loc 1 117 0
	movi.n	a11, 1
	mov.n	a10, a5
	call8	gpio_set_direction
.LVL63:
	.loc 1 118 0
	movi.n	a11, 0
	mov.n	a10, a5
	call8	gpio_set_pull_mode
.LVL64:
	.loc 1 119 0
	movi.n	a12, 0
	mov.n	a11, a2
	mov.n	a10, a5
	call8	gpio_matrix_in
.LVL65:
	.loc 1 121 0
	movi.n	a2, 0
.LVL66:
	retw.n
.LVL67:
.L26:
	movi.n	a2, 0
.LVL68:
	.loc 1 122 0
	retw.n
.LFE13:
	.size	pcnt_set_pin, .-pcnt_set_pin
	.section	.rodata.str1.4
	.align	4
.LC36:
	.string	"PCNT ADDRESS ERROR"
	.section	.text.pcnt_get_counter_value,"ax",@progbits
	.literal_position
	.literal .LC32, __FUNCTION__$5037
	.literal .LC33, .LC1
	.literal .LC34, .LC3
	.literal .LC35, .LC5
	.literal .LC37, .LC36
	.literal .LC38, PCNT
	.align	4
	.global	pcnt_get_counter_value
	.type	pcnt_get_counter_value, @function
pcnt_get_counter_value:
.LFB14:
	.loc 1 125 0
.LVL69:
	entry	sp, 48
.LCFI2:
	.loc 1 126 0
	bltui	a2, 8, .L28
	.loc 1 126 0 is_stmt 0 discriminator 2
	call8	esp_log_timestamp
.LVL70:
	l32r	a11, .LC33
	l32r	a2, .LC35
.LVL71:
	s32i.n	a2, sp, 4
	movi	a2, 0x7e
	s32i.n	a2, sp, 0
	l32r	a15, .LC32
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC34
	movi.n	a10, 1
	call8	esp_log_write
.LVL72:
	movi	a2, 0x102
	retw.n
.LVL73:
.L28:
	.loc 1 127 0 is_stmt 1
	bnez.n	a3, .L30
	.loc 1 127 0 discriminator 2
	call8	esp_log_timestamp
.LVL74:
	l32r	a11, .LC33
	l32r	a2, .LC37
.LVL75:
	s32i.n	a2, sp, 4
	movi	a2, 0x7f
	s32i.n	a2, sp, 0
	l32r	a15, .LC32
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC34
	movi.n	a10, 1
	call8	esp_log_write
.LVL76:
	movi	a2, 0x102
	retw.n
.LVL77:
.L30:
	.loc 1 128 0
	addi	a2, a2, 24
.LVL78:
	l32r	a8, .LC38
	addx4	a2, a2, a8
.LVL79:
	memw
	l32i.n	a2, a2, 0
	s16i	a2, a3, 0
	.loc 1 129 0
	movi.n	a2, 0
	.loc 1 130 0
	retw.n
.LFE14:
	.size	pcnt_get_counter_value, .-pcnt_get_counter_value
	.section	.text.pcnt_counter_pause,"ax",@progbits
	.literal_position
	.literal .LC39, __FUNCTION__$5041
	.literal .LC40, .LC1
	.literal .LC41, .LC3
	.literal .LC42, .LC5
	.literal .LC43, pcnt_spinlock
	.literal .LC44, PCNT
	.align	4
	.global	pcnt_counter_pause
	.type	pcnt_counter_pause, @function
pcnt_counter_pause:
.LFB15:
	.loc 1 133 0
.LVL80:
	entry	sp, 48
.LCFI3:
	.loc 1 134 0
	bltui	a2, 8, .L32
	.loc 1 134 0 is_stmt 0 discriminator 2
	call8	esp_log_timestamp
.LVL81:
	l32r	a11, .LC40
	l32r	a2, .LC42
.LVL82:
	s32i.n	a2, sp, 4
	movi	a2, 0x86
	s32i.n	a2, sp, 0
	l32r	a15, .LC39
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC41
	movi.n	a10, 1
	call8	esp_log_write
.LVL83:
	movi	a2, 0x102
	retw.n
.LVL84:
.L32:
	.loc 1 135 0 is_stmt 1
	l32r	a3, .LC43
	mov.n	a10, a3
	call8	vTaskEnterCritical
.LVL85:
	.loc 1 136 0
	l32r	a9, .LC44
	memw
	l32i	a10, a9, 176
	slli	a2, a2, 1
.LVL86:
	addi.n	a2, a2, 1
	movi.n	a8, 1
	ssl	a2
	sll	a2, a8
	or	a2, a10, a2
	memw
	s32i	a2, a9, 176
	.loc 1 137 0
	mov.n	a10, a3
	call8	vTaskExitCritical
.LVL87:
	.loc 1 138 0
	movi.n	a2, 0
	.loc 1 139 0
	retw.n
.LFE15:
	.size	pcnt_counter_pause, .-pcnt_counter_pause
	.section	.text.pcnt_counter_resume,"ax",@progbits
	.literal_position
	.literal .LC45, __FUNCTION__$5045
	.literal .LC46, .LC1
	.literal .LC47, .LC3
	.literal .LC48, .LC5
	.literal .LC49, pcnt_spinlock
	.literal .LC50, PCNT
	.align	4
	.global	pcnt_counter_resume
	.type	pcnt_counter_resume, @function
pcnt_counter_resume:
.LFB16:
	.loc 1 142 0
.LVL88:
	entry	sp, 48
.LCFI4:
	.loc 1 143 0
	bltui	a2, 8, .L35
	.loc 1 143 0 is_stmt 0 discriminator 2
	call8	esp_log_timestamp
.LVL89:
	l32r	a11, .LC46
	l32r	a2, .LC48
.LVL90:
	s32i.n	a2, sp, 4
	movi	a2, 0x8f
	s32i.n	a2, sp, 0
	l32r	a15, .LC45
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC47
	movi.n	a10, 1
	call8	esp_log_write
.LVL91:
	movi	a2, 0x102
	retw.n
.LVL92:
.L35:
	.loc 1 144 0 is_stmt 1
	l32r	a3, .LC49
	mov.n	a10, a3
	call8	vTaskEnterCritical
.LVL93:
	.loc 1 145 0
	l32r	a9, .LC50
	memw
	l32i	a10, a9, 176
	slli	a2, a2, 1
.LVL94:
	addi.n	a2, a2, 1
	movi.n	a8, 1
	ssl	a2
	sll	a2, a8
	movi.n	a8, -1
	xor	a2, a8, a2
	and	a2, a10, a2
	memw
	s32i	a2, a9, 176
	.loc 1 146 0
	mov.n	a10, a3
	call8	vTaskExitCritical
.LVL95:
	.loc 1 147 0
	movi.n	a2, 0
	.loc 1 148 0
	retw.n
.LFE16:
	.size	pcnt_counter_resume, .-pcnt_counter_resume
	.section	.text.pcnt_counter_clear,"ax",@progbits
	.literal_position
	.literal .LC51, __FUNCTION__$5049
	.literal .LC52, .LC1
	.literal .LC53, .LC3
	.literal .LC54, .LC5
	.literal .LC55, pcnt_spinlock
	.literal .LC56, PCNT
	.align	4
	.global	pcnt_counter_clear
	.type	pcnt_counter_clear, @function
pcnt_counter_clear:
.LFB17:
	.loc 1 151 0
.LVL96:
	entry	sp, 48
.LCFI5:
	.loc 1 152 0
	bltui	a2, 8, .L38
	.loc 1 152 0 is_stmt 0 discriminator 2
	call8	esp_log_timestamp
.LVL97:
	l32r	a11, .LC52
	l32r	a2, .LC54
.LVL98:
	s32i.n	a2, sp, 4
	movi	a2, 0x98
	s32i.n	a2, sp, 0
	l32r	a15, .LC51
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC53
	movi.n	a10, 1
	call8	esp_log_write
.LVL99:
	movi	a2, 0x102
	retw.n
.LVL100:
.L38:
	.loc 1 153 0 is_stmt 1
	l32r	a3, .LC55
	mov.n	a10, a3
	call8	vTaskEnterCritical
.LVL101:
	.loc 1 154 0
	slli	a2, a2, 1
.LVL102:
	movi.n	a8, 1
	ssl	a2
	sll	a2, a8
.LVL103:
	.loc 1 155 0
	l32r	a8, .LC56
	memw
	l32i	a9, a8, 176
	or	a9, a2, a9
	memw
	s32i	a9, a8, 176
	.loc 1 156 0
	memw
	l32i	a9, a8, 176
	movi.n	a10, -1
	xor	a2, a10, a2
.LVL104:
	and	a2, a9, a2
	memw
	s32i	a2, a8, 176
	.loc 1 157 0
	mov.n	a10, a3
	call8	vTaskExitCritical
.LVL105:
	.loc 1 158 0
	movi.n	a2, 0
	.loc 1 159 0
	retw.n
.LFE17:
	.size	pcnt_counter_clear, .-pcnt_counter_clear
	.section	.text.pcnt_intr_enable,"ax",@progbits
	.literal_position
	.literal .LC57, __FUNCTION__$5054
	.literal .LC58, .LC1
	.literal .LC59, .LC3
	.literal .LC60, .LC5
	.literal .LC61, pcnt_spinlock
	.literal .LC62, PCNT
	.align	4
	.global	pcnt_intr_enable
	.type	pcnt_intr_enable, @function
pcnt_intr_enable:
.LFB18:
	.loc 1 162 0
.LVL106:
	entry	sp, 48
.LCFI6:
	.loc 1 163 0
	bltui	a2, 8, .L41
	.loc 1 163 0 is_stmt 0 discriminator 2
	call8	esp_log_timestamp
.LVL107:
	l32r	a11, .LC58
	l32r	a2, .LC60
.LVL108:
	s32i.n	a2, sp, 4
	movi	a2, 0xa3
	s32i.n	a2, sp, 0
	l32r	a15, .LC57
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC59
	movi.n	a10, 1
	call8	esp_log_write
.LVL109:
	movi	a2, 0x102
	retw.n
.LVL110:
.L41:
	.loc 1 164 0 is_stmt 1
	l32r	a3, .LC61
	mov.n	a10, a3
	call8	vTaskEnterCritical
.LVL111:
	.loc 1 165 0
	l32r	a9, .LC62
	memw
	l32i	a10, a9, 136
	movi.n	a8, 1
	ssl	a2
	sll	a2, a8
.LVL112:
	or	a2, a10, a2
	memw
	s32i	a2, a9, 136
	.loc 1 166 0
	mov.n	a10, a3
	call8	vTaskExitCritical
.LVL113:
	.loc 1 167 0
	movi.n	a2, 0
	.loc 1 168 0
	retw.n
.LFE18:
	.size	pcnt_intr_enable, .-pcnt_intr_enable
	.section	.text.pcnt_intr_disable,"ax",@progbits
	.literal_position
	.literal .LC63, __FUNCTION__$5058
	.literal .LC64, .LC1
	.literal .LC65, .LC3
	.literal .LC66, .LC5
	.literal .LC67, pcnt_spinlock
	.literal .LC68, PCNT
	.align	4
	.global	pcnt_intr_disable
	.type	pcnt_intr_disable, @function
pcnt_intr_disable:
.LFB19:
	.loc 1 171 0
.LVL114:
	entry	sp, 48
.LCFI7:
	.loc 1 172 0
	bltui	a2, 8, .L44
	.loc 1 172 0 is_stmt 0 discriminator 2
	call8	esp_log_timestamp
.LVL115:
	l32r	a11, .LC64
	l32r	a2, .LC66
.LVL116:
	s32i.n	a2, sp, 4
	movi	a2, 0xac
	s32i.n	a2, sp, 0
	l32r	a15, .LC63
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC65
	movi.n	a10, 1
	call8	esp_log_write
.LVL117:
	movi	a2, 0x102
	retw.n
.LVL118:
.L44:
	.loc 1 173 0 is_stmt 1
	l32r	a3, .LC67
	mov.n	a10, a3
	call8	vTaskEnterCritical
.LVL119:
	.loc 1 174 0
	l32r	a9, .LC68
	memw
	l32i	a10, a9, 136
	movi.n	a8, 1
	ssl	a2
	sll	a2, a8
.LVL120:
	movi.n	a8, -1
	xor	a8, a8, a2
	and	a8, a10, a8
	memw
	s32i	a8, a9, 136
	.loc 1 175 0
	mov.n	a10, a3
	call8	vTaskExitCritical
.LVL121:
	.loc 1 176 0
	movi.n	a2, 0
	.loc 1 177 0
	retw.n
.LFE19:
	.size	pcnt_intr_disable, .-pcnt_intr_disable
	.section	.rodata.str1.4
	.align	4
.LC73:
	.string	"PCNT value type error"
	.section	.text.pcnt_event_enable,"ax",@progbits
	.literal_position
	.literal .LC69, __FUNCTION__$5063
	.literal .LC70, .LC1
	.literal .LC71, .LC3
	.literal .LC72, .LC5
	.literal .LC74, .LC73
	.literal .LC75, PCNT
	.literal .LC76, 8192
	.literal .LC77, 4096
	.literal .LC78, 16384
	.literal .LC79, 32768
	.literal .LC80, 2048
	.align	4
	.global	pcnt_event_enable
	.type	pcnt_event_enable, @function
pcnt_event_enable:
.LFB20:
	.loc 1 180 0
.LVL122:
	entry	sp, 48
.LCFI8:
	.loc 1 181 0
	bltui	a2, 8, .L47
	.loc 1 181 0 is_stmt 0 discriminator 2
	call8	esp_log_timestamp
.LVL123:
	l32r	a11, .LC70
	l32r	a2, .LC72
.LVL124:
	s32i.n	a2, sp, 4
	movi	a2, 0xb5
	s32i.n	a2, sp, 0
	l32r	a15, .LC69
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC71
	movi.n	a10, 1
	call8	esp_log_write
.LVL125:
	movi	a2, 0x102
	retw.n
.LVL126:
.L47:
	.loc 1 182 0 is_stmt 1
	bltui	a3, 5, .L49
	.loc 1 182 0 is_stmt 0 discriminator 2
	call8	esp_log_timestamp
.LVL127:
	l32r	a11, .LC70
	l32r	a2, .LC74
.LVL128:
	s32i.n	a2, sp, 4
	movi	a2, 0xb6
	s32i.n	a2, sp, 0
	l32r	a15, .LC69
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC71
	movi.n	a10, 1
	call8	esp_log_write
.LVL129:
	movi	a2, 0x102
	retw.n
.LVL130:
.L49:
	.loc 1 183 0 is_stmt 1
	bnez.n	a3, .L50
	.loc 1 184 0
	addx2	a2, a2, a2
.LVL131:
	slli	a3, a2, 2
.LVL132:
	l32r	a2, .LC75
	add.n	a2, a2, a3
	memw
	l32i.n	a8, a2, 0
	l32r	a3, .LC76
	or	a3, a8, a3
	memw
	s32i.n	a3, a2, 0
	.loc 1 194 0
	movi.n	a2, 0
	retw.n
.LVL133:
.L50:
	.loc 1 185 0
	bnei	a3, 1, .L51
	.loc 1 186 0
	addx2	a2, a2, a2
.LVL134:
	slli	a3, a2, 2
.LVL135:
	l32r	a2, .LC75
	add.n	a2, a2, a3
	memw
	l32i.n	a8, a2, 0
	l32r	a3, .LC77
	or	a3, a8, a3
	memw
	s32i.n	a3, a2, 0
	.loc 1 194 0
	movi.n	a2, 0
	retw.n
.LVL136:
.L51:
	.loc 1 187 0
	bnei	a3, 2, .L52
	.loc 1 188 0
	addx2	a2, a2, a2
.LVL137:
	slli	a3, a2, 2
.LVL138:
	l32r	a2, .LC75
	add.n	a2, a2, a3
	memw
	l32i.n	a8, a2, 0
	l32r	a3, .LC78
	or	a3, a8, a3
	memw
	s32i.n	a3, a2, 0
	.loc 1 194 0
	movi.n	a2, 0
	retw.n
.LVL139:
.L52:
	.loc 1 189 0
	bnei	a3, 3, .L53
	.loc 1 190 0
	addx2	a2, a2, a2
.LVL140:
	slli	a3, a2, 2
.LVL141:
	l32r	a2, .LC75
	add.n	a2, a2, a3
	memw
	l32i.n	a8, a2, 0
	l32r	a3, .LC79
	or	a3, a8, a3
	memw
	s32i.n	a3, a2, 0
	.loc 1 194 0
	movi.n	a2, 0
	retw.n
.LVL142:
.L53:
	.loc 1 191 0
	bnei	a3, 4, .L54
	.loc 1 192 0
	addx2	a2, a2, a2
.LVL143:
	slli	a3, a2, 2
.LVL144:
	l32r	a2, .LC75
	add.n	a2, a2, a3
	memw
	l32i.n	a8, a2, 0
	l32r	a3, .LC80
	or	a3, a8, a3
	memw
	s32i.n	a3, a2, 0
	.loc 1 194 0
	movi.n	a2, 0
	retw.n
.LVL145:
.L54:
	movi.n	a2, 0
.LVL146:
	.loc 1 195 0
	retw.n
.LFE20:
	.size	pcnt_event_enable, .-pcnt_event_enable
	.section	.text.pcnt_event_disable,"ax",@progbits
	.literal_position
	.literal .LC81, __FUNCTION__$5068
	.literal .LC82, .LC1
	.literal .LC83, .LC3
	.literal .LC84, .LC5
	.literal .LC85, .LC73
	.literal .LC86, PCNT
	.literal .LC87, -8193
	.literal .LC88, -4097
	.literal .LC89, -16385
	.literal .LC90, -32769
	.literal .LC91, -2049
	.align	4
	.global	pcnt_event_disable
	.type	pcnt_event_disable, @function
pcnt_event_disable:
.LFB21:
	.loc 1 198 0
.LVL147:
	entry	sp, 48
.LCFI9:
	.loc 1 199 0
	bltui	a2, 8, .L56
	.loc 1 199 0 is_stmt 0 discriminator 2
	call8	esp_log_timestamp
.LVL148:
	l32r	a11, .LC82
	l32r	a2, .LC84
.LVL149:
	s32i.n	a2, sp, 4
	movi	a2, 0xc7
	s32i.n	a2, sp, 0
	l32r	a15, .LC81
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC83
	movi.n	a10, 1
	call8	esp_log_write
.LVL150:
	movi	a2, 0x102
	retw.n
.LVL151:
.L56:
	.loc 1 200 0 is_stmt 1
	bltui	a3, 5, .L58
	.loc 1 200 0 is_stmt 0 discriminator 2
	call8	esp_log_timestamp
.LVL152:
	l32r	a11, .LC82
	l32r	a2, .LC85
.LVL153:
	s32i.n	a2, sp, 4
	movi	a2, 0xc8
	s32i.n	a2, sp, 0
	l32r	a15, .LC81
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC83
	movi.n	a10, 1
	call8	esp_log_write
.LVL154:
	movi	a2, 0x102
	retw.n
.LVL155:
.L58:
	.loc 1 201 0 is_stmt 1
	bnez.n	a3, .L59
	.loc 1 202 0
	addx2	a2, a2, a2
.LVL156:
	slli	a3, a2, 2
.LVL157:
	l32r	a2, .LC86
	add.n	a2, a2, a3
	memw
	l32i.n	a8, a2, 0
	l32r	a3, .LC87
	and	a3, a8, a3
	memw
	s32i.n	a3, a2, 0
	.loc 1 212 0
	movi.n	a2, 0
	retw.n
.LVL158:
.L59:
	.loc 1 203 0
	bnei	a3, 1, .L60
	.loc 1 204 0
	addx2	a2, a2, a2
.LVL159:
	slli	a3, a2, 2
.LVL160:
	l32r	a2, .LC86
	add.n	a2, a2, a3
	memw
	l32i.n	a8, a2, 0
	l32r	a3, .LC88
	and	a3, a8, a3
	memw
	s32i.n	a3, a2, 0
	.loc 1 212 0
	movi.n	a2, 0
	retw.n
.LVL161:
.L60:
	.loc 1 205 0
	bnei	a3, 2, .L61
	.loc 1 206 0
	addx2	a2, a2, a2
.LVL162:
	slli	a3, a2, 2
.LVL163:
	l32r	a2, .LC86
	add.n	a2, a2, a3
	memw
	l32i.n	a8, a2, 0
	l32r	a3, .LC89
	and	a3, a8, a3
	memw
	s32i.n	a3, a2, 0
	.loc 1 212 0
	movi.n	a2, 0
	retw.n
.LVL164:
.L61:
	.loc 1 207 0
	bnei	a3, 3, .L62
	.loc 1 208 0
	addx2	a2, a2, a2
.LVL165:
	slli	a3, a2, 2
.LVL166:
	l32r	a2, .LC86
	add.n	a2, a2, a3
	memw
	l32i.n	a8, a2, 0
	l32r	a3, .LC90
	and	a3, a8, a3
	memw
	s32i.n	a3, a2, 0
	.loc 1 212 0
	movi.n	a2, 0
	retw.n
.LVL167:
.L62:
	.loc 1 209 0
	bnei	a3, 4, .L63
	.loc 1 210 0
	addx2	a2, a2, a2
.LVL168:
	slli	a3, a2, 2
.LVL169:
	l32r	a2, .LC86
	add.n	a2, a2, a3
	memw
	l32i.n	a8, a2, 0
	l32r	a3, .LC91
	and	a3, a8, a3
	memw
	s32i.n	a3, a2, 0
	.loc 1 212 0
	movi.n	a2, 0
	retw.n
.LVL170:
.L63:
	movi.n	a2, 0
.LVL171:
	.loc 1 213 0
	retw.n
.LFE21:
	.size	pcnt_event_disable, .-pcnt_event_disable
	.section	.text.pcnt_set_event_value,"ax",@progbits
	.literal_position
	.literal .LC92, __FUNCTION__$5074
	.literal .LC93, .LC1
	.literal .LC94, .LC3
	.literal .LC95, .LC5
	.literal .LC96, .LC73
	.literal .LC97, PCNT
	.literal .LC98, -65536
	.align	4
	.global	pcnt_set_event_value
	.type	pcnt_set_event_value, @function
pcnt_set_event_value:
.LFB22:
	.loc 1 216 0
.LVL172:
	entry	sp, 48
.LCFI10:
	sext	a4, a4, 15
	.loc 1 217 0
	bltui	a2, 8, .L65
	.loc 1 217 0 is_stmt 0 discriminator 2
	call8	esp_log_timestamp
.LVL173:
	l32r	a11, .LC93
	l32r	a2, .LC95
.LVL174:
	s32i.n	a2, sp, 4
	movi	a2, 0xd9
	s32i.n	a2, sp, 0
	l32r	a15, .LC92
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC94
	movi.n	a10, 1
	call8	esp_log_write
.LVL175:
	movi	a2, 0x102
	retw.n
.LVL176:
.L65:
	.loc 1 218 0 is_stmt 1
	bltui	a3, 5, .L67
	.loc 1 218 0 is_stmt 0 discriminator 2
	call8	esp_log_timestamp
.LVL177:
	l32r	a11, .LC93
	l32r	a2, .LC96
.LVL178:
	s32i.n	a2, sp, 4
	movi	a2, 0xda
	s32i.n	a2, sp, 0
	l32r	a15, .LC92
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC94
	movi.n	a10, 1
	call8	esp_log_write
.LVL179:
	movi	a2, 0x102
	retw.n
.LVL180:
.L67:
	.loc 1 219 0 is_stmt 1
	bnez.n	a3, .L68
	.loc 1 220 0
	addx2	a2, a2, a2
.LVL181:
	slli	a3, a2, 2
.LVL182:
	l32r	a2, .LC97
	add.n	a2, a2, a3
	memw
	l32i.n	a3, a2, 8
	slli	a4, a4, 16
.LVL183:
	extui	a3, a3, 0, 16
	or	a4, a3, a4
	mov.n	a3, a4
	memw
	s32i.n	a4, a2, 8
	.loc 1 228 0
	movi.n	a2, 0
	retw.n
.LVL184:
.L68:
	.loc 1 221 0
	bnei	a3, 1, .L69
	.loc 1 222 0
	addx2	a2, a2, a2
.LVL185:
	slli	a3, a2, 2
.LVL186:
	l32r	a2, .LC97
	add.n	a2, a2, a3
	memw
	l32i.n	a8, a2, 8
	extui	a4, a4, 0, 16
	l32r	a3, .LC98
	and	a3, a8, a3
	or	a4, a3, a4
	memw
	s32i.n	a4, a2, 8
	.loc 1 228 0
	movi.n	a2, 0
	retw.n
.LVL187:
.L69:
	.loc 1 223 0
	bnei	a3, 2, .L70
	.loc 1 224 0
	addx2	a2, a2, a2
.LVL188:
	slli	a3, a2, 2
.LVL189:
	l32r	a2, .LC97
	add.n	a2, a2, a3
	memw
	l32i.n	a8, a2, 4
	extui	a4, a4, 0, 16
	l32r	a3, .LC98
	and	a3, a8, a3
	or	a4, a3, a4
	memw
	s32i.n	a4, a2, 4
	.loc 1 228 0
	movi.n	a2, 0
	retw.n
.LVL190:
.L70:
	.loc 1 225 0
	bnei	a3, 3, .L71
	.loc 1 226 0
	addx2	a2, a2, a2
.LVL191:
	slli	a3, a2, 2
.LVL192:
	l32r	a2, .LC97
	add.n	a2, a2, a3
	memw
	l32i.n	a3, a2, 4
	slli	a4, a4, 16
	extui	a3, a3, 0, 16
	or	a4, a3, a4
	mov.n	a3, a4
	memw
	s32i.n	a4, a2, 4
	.loc 1 228 0
	movi.n	a2, 0
	retw.n
.LVL193:
.L71:
	movi.n	a2, 0
.LVL194:
	.loc 1 229 0
	retw.n
.LFE22:
	.size	pcnt_set_event_value, .-pcnt_set_event_value
	.section	.text.pcnt_get_event_value,"ax",@progbits
	.literal_position
	.literal .LC99, __FUNCTION__$5080
	.literal .LC100, .LC1
	.literal .LC101, .LC3
	.literal .LC102, .LC5
	.literal .LC103, .LC73
	.literal .LC104, .LC36
	.literal .LC105, PCNT
	.align	4
	.global	pcnt_get_event_value
	.type	pcnt_get_event_value, @function
pcnt_get_event_value:
.LFB23:
	.loc 1 232 0
.LVL195:
	entry	sp, 48
.LCFI11:
	.loc 1 233 0
	bltui	a2, 8, .L73
	.loc 1 233 0 is_stmt 0 discriminator 2
	call8	esp_log_timestamp
.LVL196:
	l32r	a11, .LC100
	l32r	a2, .LC102
.LVL197:
	s32i.n	a2, sp, 4
	movi	a2, 0xe9
	s32i.n	a2, sp, 0
	l32r	a15, .LC99
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC101
	movi.n	a10, 1
	call8	esp_log_write
.LVL198:
	movi	a2, 0x102
	retw.n
.LVL199:
.L73:
	.loc 1 234 0 is_stmt 1
	bltui	a3, 5, .L75
	.loc 1 234 0 is_stmt 0 discriminator 2
	call8	esp_log_timestamp
.LVL200:
	l32r	a11, .LC100
	l32r	a2, .LC103
.LVL201:
	s32i.n	a2, sp, 4
	movi	a2, 0xea
	s32i.n	a2, sp, 0
	l32r	a15, .LC99
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC101
	movi.n	a10, 1
	call8	esp_log_write
.LVL202:
	movi	a2, 0x102
	retw.n
.LVL203:
.L75:
	.loc 1 235 0 is_stmt 1
	bnez.n	a4, .L76
	.loc 1 235 0 discriminator 2
	call8	esp_log_timestamp
.LVL204:
	l32r	a11, .LC100
	l32r	a2, .LC104
.LVL205:
	s32i.n	a2, sp, 4
	movi	a2, 0xeb
	s32i.n	a2, sp, 0
	l32r	a15, .LC99
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC101
	movi.n	a10, 1
	call8	esp_log_write
.LVL206:
	movi	a2, 0x102
	retw.n
.LVL207:
.L76:
	.loc 1 237 0
	bnez.n	a3, .L77
	.loc 1 238 0
	addx2	a2, a2, a2
.LVL208:
	slli	a3, a2, 2
.LVL209:
	l32r	a2, .LC105
	add.n	a3, a2, a3
	memw
	l32i.n	a2, a3, 8
	extui	a2, a2, 16, 16
	s16i	a2, a4, 0
	.loc 1 248 0
	movi.n	a2, 0
	retw.n
.LVL210:
.L77:
	.loc 1 239 0
	bnei	a3, 1, .L78
	.loc 1 240 0
	addx2	a2, a2, a2
.LVL211:
	slli	a3, a2, 2
.LVL212:
	l32r	a2, .LC105
	add.n	a3, a2, a3
	memw
	l32i.n	a2, a3, 8
	s16i	a2, a4, 0
	.loc 1 248 0
	movi.n	a2, 0
	retw.n
.LVL213:
.L78:
	.loc 1 241 0
	bnei	a3, 2, .L79
	.loc 1 242 0
	addx2	a2, a2, a2
.LVL214:
	slli	a3, a2, 2
.LVL215:
	l32r	a2, .LC105
	add.n	a3, a2, a3
	memw
	l32i.n	a2, a3, 4
	s16i	a2, a4, 0
	.loc 1 248 0
	movi.n	a2, 0
	retw.n
.LVL216:
.L79:
	.loc 1 243 0
	bnei	a3, 3, .L80
	.loc 1 244 0
	addx2	a2, a2, a2
.LVL217:
	slli	a3, a2, 2
.LVL218:
	l32r	a2, .LC105
	add.n	a3, a2, a3
	memw
	l32i.n	a2, a3, 4
	extui	a2, a2, 16, 16
	s16i	a2, a4, 0
	.loc 1 248 0
	movi.n	a2, 0
	retw.n
.LVL219:
.L80:
	.loc 1 246 0
	movi.n	a2, 0
.LVL220:
	s16i	a2, a4, 0
	.loc 1 248 0
	movi.n	a2, 0
	.loc 1 249 0
	retw.n
.LFE23:
	.size	pcnt_get_event_value, .-pcnt_get_event_value
	.section	.rodata.str1.4
	.align	4
.LC110:
	.string	"PCNT PARAM ERROR"
	.section	.text.pcnt_set_filter_value,"ax",@progbits
	.literal_position
	.literal .LC106, __FUNCTION__$5085
	.literal .LC107, .LC1
	.literal .LC108, .LC3
	.literal .LC109, .LC5
	.literal .LC111, .LC110
	.literal .LC112, PCNT
	.align	4
	.global	pcnt_set_filter_value
	.type	pcnt_set_filter_value, @function
pcnt_set_filter_value:
.LFB24:
	.loc 1 252 0
.LVL221:
	entry	sp, 48
.LCFI12:
	extui	a3, a3, 0, 16
	.loc 1 253 0
	bltui	a2, 8, .L82
	.loc 1 253 0 is_stmt 0 discriminator 2
	call8	esp_log_timestamp
.LVL222:
	l32r	a11, .LC107
	l32r	a2, .LC109
.LVL223:
	s32i.n	a2, sp, 4
	movi	a2, 0xfd
	s32i.n	a2, sp, 0
	l32r	a15, .LC106
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC108
	movi.n	a10, 1
	call8	esp_log_write
.LVL224:
	movi	a2, 0x102
	retw.n
.LVL225:
.L82:
	.loc 1 254 0 is_stmt 1
	movi	a8, 0x3ff
	bgeu	a8, a3, .L84
	.loc 1 254 0 is_stmt 0 discriminator 2
	call8	esp_log_timestamp
.LVL226:
	l32r	a11, .LC107
	l32r	a2, .LC111
.LVL227:
	s32i.n	a2, sp, 4
	movi	a2, 0xfe
	s32i.n	a2, sp, 0
	l32r	a15, .LC106
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC108
	movi.n	a10, 1
	call8	esp_log_write
.LVL228:
	movi	a2, 0x102
	retw.n
.LVL229:
.L84:
	.loc 1 255 0 is_stmt 1
	addx2	a2, a2, a2
.LVL230:
	slli	a8, a2, 2
	l32r	a2, .LC112
	add.n	a2, a2, a8
	memw
	l32i.n	a9, a2, 0
	extui	a3, a3, 0, 10
.LVL231:
	movi	a8, -0x400
	and	a8, a9, a8
	or	a3, a8, a3
	memw
	s32i.n	a3, a2, 0
	.loc 1 256 0
	movi.n	a2, 0
	.loc 1 257 0
	retw.n
.LFE24:
	.size	pcnt_set_filter_value, .-pcnt_set_filter_value
	.section	.text.pcnt_get_filter_value,"ax",@progbits
	.literal_position
	.literal .LC113, __FUNCTION__$5090
	.literal .LC114, .LC1
	.literal .LC115, .LC3
	.literal .LC116, .LC5
	.literal .LC117, .LC36
	.literal .LC118, PCNT
	.align	4
	.global	pcnt_get_filter_value
	.type	pcnt_get_filter_value, @function
pcnt_get_filter_value:
.LFB25:
	.loc 1 260 0
.LVL232:
	entry	sp, 48
.LCFI13:
	.loc 1 261 0
	bltui	a2, 8, .L86
	.loc 1 261 0 is_stmt 0 discriminator 2
	call8	esp_log_timestamp
.LVL233:
	l32r	a11, .LC114
	l32r	a2, .LC116
.LVL234:
	s32i.n	a2, sp, 4
	movi	a2, 0x105
	s32i.n	a2, sp, 0
	l32r	a15, .LC113
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC115
	movi.n	a10, 1
	call8	esp_log_write
.LVL235:
	movi	a2, 0x102
	retw.n
.LVL236:
.L86:
	.loc 1 262 0 is_stmt 1
	bnez.n	a3, .L88
	.loc 1 262 0 discriminator 2
	call8	esp_log_timestamp
.LVL237:
	l32r	a11, .LC114
	l32r	a2, .LC117
.LVL238:
	s32i.n	a2, sp, 4
	movi	a2, 0x106
	s32i.n	a2, sp, 0
	l32r	a15, .LC113
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC115
	movi.n	a10, 1
	call8	esp_log_write
.LVL239:
	movi	a2, 0x102
	retw.n
.LVL240:
.L88:
	.loc 1 264 0
	addx2	a2, a2, a2
.LVL241:
	slli	a8, a2, 2
	l32r	a2, .LC118
	add.n	a8, a2, a8
	memw
	l32i.n	a2, a8, 0
	extui	a2, a2, 0, 10
	s16i	a2, a3, 0
	.loc 1 265 0
	movi.n	a2, 0
	.loc 1 266 0
	retw.n
.LFE25:
	.size	pcnt_get_filter_value, .-pcnt_get_filter_value
	.section	.text.pcnt_filter_enable,"ax",@progbits
	.literal_position
	.literal .LC119, __FUNCTION__$5094
	.literal .LC120, .LC1
	.literal .LC121, .LC3
	.literal .LC122, .LC5
	.literal .LC123, PCNT
	.align	4
	.global	pcnt_filter_enable
	.type	pcnt_filter_enable, @function
pcnt_filter_enable:
.LFB26:
	.loc 1 269 0
.LVL242:
	entry	sp, 48
.LCFI14:
	.loc 1 270 0
	bltui	a2, 8, .L90
	.loc 1 270 0 is_stmt 0 discriminator 2
	call8	esp_log_timestamp
.LVL243:
	l32r	a11, .LC120
	l32r	a2, .LC122
.LVL244:
	s32i.n	a2, sp, 4
	movi	a2, 0x10e
	s32i.n	a2, sp, 0
	l32r	a15, .LC119
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC121
	movi.n	a10, 1
	call8	esp_log_write
.LVL245:
	movi	a2, 0x102
	retw.n
.LVL246:
.L90:
	.loc 1 271 0 is_stmt 1
	addx2	a2, a2, a2
.LVL247:
	slli	a8, a2, 2
	l32r	a2, .LC123
	add.n	a2, a2, a8
	memw
	l32i.n	a9, a2, 0
	movi	a8, 0x400
	or	a8, a9, a8
	memw
	s32i.n	a8, a2, 0
	.loc 1 272 0
	movi.n	a2, 0
	.loc 1 273 0
	retw.n
.LFE26:
	.size	pcnt_filter_enable, .-pcnt_filter_enable
	.section	.text.pcnt_filter_disable,"ax",@progbits
	.literal_position
	.literal .LC124, __FUNCTION__$5098
	.literal .LC125, .LC1
	.literal .LC126, .LC3
	.literal .LC127, .LC5
	.literal .LC128, PCNT
	.align	4
	.global	pcnt_filter_disable
	.type	pcnt_filter_disable, @function
pcnt_filter_disable:
.LFB27:
	.loc 1 276 0
.LVL248:
	entry	sp, 48
.LCFI15:
	.loc 1 277 0
	bltui	a2, 8, .L93
	.loc 1 277 0 is_stmt 0 discriminator 2
	call8	esp_log_timestamp
.LVL249:
	l32r	a11, .LC125
	l32r	a2, .LC127
.LVL250:
	s32i.n	a2, sp, 4
	movi	a2, 0x115
	s32i.n	a2, sp, 0
	l32r	a15, .LC124
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC126
	movi.n	a10, 1
	call8	esp_log_write
.LVL251:
	movi	a2, 0x102
	retw.n
.LVL252:
.L93:
	.loc 1 278 0 is_stmt 1
	addx2	a2, a2, a2
.LVL253:
	slli	a8, a2, 2
	l32r	a2, .LC128
	add.n	a2, a2, a8
	memw
	l32i.n	a9, a2, 0
	movi	a8, -0x401
	and	a8, a9, a8
	memw
	s32i.n	a8, a2, 0
	.loc 1 279 0
	movi.n	a2, 0
	.loc 1 280 0
	retw.n
.LFE27:
	.size	pcnt_filter_disable, .-pcnt_filter_disable
	.section	.rodata.str1.4
	.align	4
.LC135:
	.string	"PCNT pluse input io error"
	.align	4
.LC137:
	.string	"PCNT ctrl io error"
	.section	.text.pcnt_unit_config,"ax",@progbits
	.literal_position
	.literal .LC129, __FUNCTION__$5012
	.literal .LC130, .LC1
	.literal .LC131, .LC3
	.literal .LC132, .LC5
	.literal .LC133, .LC7
	.literal .LC134, GPIO_PIN_MUX_REG
	.literal .LC136, .LC135
	.literal .LC138, .LC137
	.literal .LC139, .LC9
	.literal .LC140, .LC11
	.align	4
	.global	pcnt_unit_config
	.type	pcnt_unit_config, @function
pcnt_unit_config:
.LFB11:
	.loc 1 43 0
.LVL254:
	entry	sp, 48
.LCFI16:
	.loc 1 44 0
	l32i.n	a3, a2, 28
	extui	a8, a3, 0, 8
.LVL255:
	.loc 1 45 0
	l32i.n	a4, a2, 32
	extui	a9, a4, 0, 8
.LVL256:
	.loc 1 46 0
	l32i.n	a5, a2, 0
.LVL257:
	.loc 1 47 0
	l32i.n	a6, a2, 4
.LVL258:
	.loc 1 49 0
	bltui	a8, 8, .L96
	.loc 1 49 0 is_stmt 0 discriminator 2
	call8	esp_log_timestamp
.LVL259:
	l32r	a11, .LC130
	l32r	a2, .LC132
.LVL260:
	s32i.n	a2, sp, 4
	movi.n	a2, 0x31
	s32i.n	a2, sp, 0
	l32r	a15, .LC129
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC131
	movi.n	a10, 1
	call8	esp_log_write
.LVL261:
	movi	a2, 0x102
	retw.n
.LVL262:
.L96:
	.loc 1 50 0 is_stmt 1
	bltui	a9, 2, .L98
	.loc 1 50 0 is_stmt 0 discriminator 2
	call8	esp_log_timestamp
.LVL263:
	l32r	a11, .LC130
	l32r	a2, .LC133
.LVL264:
	s32i.n	a2, sp, 4
	movi.n	a2, 0x32
	s32i.n	a2, sp, 0
	l32r	a15, .LC129
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC131
	movi.n	a10, 1
	call8	esp_log_write
.LVL265:
	movi	a2, 0x102
	retw.n
.LVL266:
.L98:
	.loc 1 51 0 is_stmt 1
	bltz	a5, .L99
	.loc 1 51 0 is_stmt 0 discriminator 1
	movi.n	a8, 0x27
	blt	a8, a5, .L100
	.loc 1 51 0 discriminator 3
	l32r	a8, .LC134
	addx4	a8, a5, a8
	l32i.n	a8, a8, 0
	beqz.n	a8, .L100
	.loc 1 51 0 discriminator 5
	bne	a5, a6, .L99
.L100:
	.loc 1 51 0 discriminator 7
	call8	esp_log_timestamp
.LVL267:
	l32r	a11, .LC130
	l32r	a2, .LC136
.LVL268:
	s32i.n	a2, sp, 4
	movi.n	a2, 0x33
	s32i.n	a2, sp, 0
	l32r	a15, .LC129
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC131
	movi.n	a10, 1
	call8	esp_log_write
.LVL269:
	movi	a2, 0x102
	retw.n
.LVL270:
.L99:
	.loc 1 52 0 is_stmt 1
	bltz	a6, .L101
	.loc 1 52 0 is_stmt 0 discriminator 1
	movi.n	a8, 0x27
	blt	a8, a6, .L102
	.loc 1 52 0 discriminator 3
	l32r	a8, .LC134
	addx4	a8, a6, a8
	l32i.n	a8, a8, 0
	bnez.n	a8, .L101
.L102:
	.loc 1 52 0 discriminator 5
	call8	esp_log_timestamp
.LVL271:
	l32r	a11, .LC130
	l32r	a2, .LC138
.LVL272:
	s32i.n	a2, sp, 4
	movi.n	a2, 0x34
	s32i.n	a2, sp, 0
	l32r	a15, .LC129
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC131
	movi.n	a10, 1
	call8	esp_log_write
.LVL273:
	movi	a2, 0x102
	retw.n
.LVL274:
.L101:
	.loc 1 53 0 is_stmt 1
	l32i.n	a8, a2, 16
	bgeui	a8, 3, .L103
	.loc 1 53 0 is_stmt 0 discriminator 2
	l32i.n	a8, a2, 20
	bltui	a8, 3, .L104
.L103:
	.loc 1 53 0 discriminator 4
	call8	esp_log_timestamp
.LVL275:
	l32r	a11, .LC130
	l32r	a2, .LC139
.LVL276:
	s32i.n	a2, sp, 4
	movi.n	a2, 0x35
	s32i.n	a2, sp, 0
	l32r	a15, .LC129
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC131
	movi.n	a10, 1
	call8	esp_log_write
.LVL277:
	movi	a2, 0x102
	retw.n
.LVL278:
.L104:
	.loc 1 54 0 is_stmt 1
	l32i.n	a8, a2, 12
	bgeui	a8, 3, .L105
	.loc 1 54 0 is_stmt 0 discriminator 2
	l32i.n	a8, a2, 8
	bltui	a8, 3, .L106
.L105:
	.loc 1 54 0 discriminator 4
	call8	esp_log_timestamp
.LVL279:
	l32r	a11, .LC130
	l32r	a2, .LC140
.LVL280:
	s32i.n	a2, sp, 4
	movi.n	a2, 0x36
	s32i.n	a2, sp, 0
	l32r	a15, .LC129
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC131
	movi.n	a10, 1
	call8	esp_log_write
.LVL281:
	movi	a2, 0x102
	retw.n
.LVL282:
.L106:
	.loc 1 56 0 is_stmt 1
	movi.n	a10, 0x11
	call8	periph_module_enable
.LVL283:
	extui	a3, a3, 0, 8
.LVL284:
	.loc 1 58 0
	l16si	a12, a2, 24
	movi.n	a11, 1
	mov.n	a10, a3
	call8	pcnt_set_event_value
.LVL285:
	.loc 1 59 0
	l16si	a12, a2, 26
	movi.n	a11, 0
	mov.n	a10, a3
	call8	pcnt_set_event_value
.LVL286:
	.loc 1 61 0
	movi.n	a11, 1
	mov.n	a10, a3
	call8	pcnt_event_disable
.LVL287:
	.loc 1 62 0
	movi.n	a11, 0
	mov.n	a10, a3
	call8	pcnt_event_disable
.LVL288:
	.loc 1 63 0
	movi.n	a11, 4
	mov.n	a10, a3
	call8	pcnt_event_disable
.LVL289:
	.loc 1 64 0
	mov.n	a10, a3
	call8	pcnt_filter_disable
.LVL290:
	extui	a4, a4, 0, 8
.LVL291:
	.loc 1 66 0
	l32i.n	a15, a2, 8
	l32i.n	a14, a2, 12
	l32i.n	a13, a2, 20
	l32i.n	a12, a2, 16
	mov.n	a11, a4
	mov.n	a10, a3
	call8	pcnt_set_mode
.LVL292:
	.loc 1 68 0
	mov.n	a13, a6
	mov.n	a12, a5
	mov.n	a11, a4
	mov.n	a10, a3
	call8	pcnt_set_pin
.LVL293:
	.loc 1 69 0
	movi.n	a2, 0
.LVL294:
	.loc 1 70 0
	retw.n
.LFE11:
	.size	pcnt_unit_config, .-pcnt_unit_config
	.section	.text.pcnt_isr_register,"ax",@progbits
	.literal_position
	.literal .LC141, __FUNCTION__$5106
	.literal .LC142, .LC1
	.literal .LC143, .LC3
	.literal .LC144, .LC36
	.align	4
	.global	pcnt_isr_register
	.type	pcnt_isr_register, @function
pcnt_isr_register:
.LFB28:
	.loc 1 283 0
.LVL295:
	entry	sp, 48
.LCFI17:
	.loc 1 284 0
	bnez.n	a2, .L108
	.loc 1 284 0 discriminator 2
	call8	esp_log_timestamp
.LVL296:
	l32r	a11, .LC142
	l32r	a2, .LC144
.LVL297:
	s32i.n	a2, sp, 4
	movi	a2, 0x11c
	s32i.n	a2, sp, 0
	l32r	a15, .LC141
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC143
	movi.n	a10, 1
	call8	esp_log_write
.LVL298:
	movi	a2, 0x102
	retw.n
.LVL299:
.L108:
	.loc 1 285 0
	mov.n	a14, a5
	mov.n	a13, a3
	mov.n	a12, a2
	mov.n	a11, a4
	movi.n	a10, 0x30
	call8	esp_intr_alloc
.LVL300:
	mov.n	a2, a10
.LVL301:
	.loc 1 286 0
	retw.n
.LFE28:
	.size	pcnt_isr_register, .-pcnt_isr_register
	.section	.rodata.__FUNCTION__$5106,"a",@progbits
	.align	4
	.type	__FUNCTION__$5106, @object
	.size	__FUNCTION__$5106, 18
__FUNCTION__$5106:
	.string	"pcnt_isr_register"
	.section	.rodata.__FUNCTION__$5098,"a",@progbits
	.align	4
	.type	__FUNCTION__$5098, @object
	.size	__FUNCTION__$5098, 20
__FUNCTION__$5098:
	.string	"pcnt_filter_disable"
	.section	.rodata.__FUNCTION__$5094,"a",@progbits
	.align	4
	.type	__FUNCTION__$5094, @object
	.size	__FUNCTION__$5094, 19
__FUNCTION__$5094:
	.string	"pcnt_filter_enable"
	.section	.rodata.__FUNCTION__$5090,"a",@progbits
	.align	4
	.type	__FUNCTION__$5090, @object
	.size	__FUNCTION__$5090, 22
__FUNCTION__$5090:
	.string	"pcnt_get_filter_value"
	.section	.rodata.__FUNCTION__$5085,"a",@progbits
	.align	4
	.type	__FUNCTION__$5085, @object
	.size	__FUNCTION__$5085, 22
__FUNCTION__$5085:
	.string	"pcnt_set_filter_value"
	.section	.rodata.__FUNCTION__$5080,"a",@progbits
	.align	4
	.type	__FUNCTION__$5080, @object
	.size	__FUNCTION__$5080, 21
__FUNCTION__$5080:
	.string	"pcnt_get_event_value"
	.section	.rodata.__FUNCTION__$5074,"a",@progbits
	.align	4
	.type	__FUNCTION__$5074, @object
	.size	__FUNCTION__$5074, 21
__FUNCTION__$5074:
	.string	"pcnt_set_event_value"
	.section	.rodata.__FUNCTION__$5068,"a",@progbits
	.align	4
	.type	__FUNCTION__$5068, @object
	.size	__FUNCTION__$5068, 19
__FUNCTION__$5068:
	.string	"pcnt_event_disable"
	.section	.rodata.__FUNCTION__$5063,"a",@progbits
	.align	4
	.type	__FUNCTION__$5063, @object
	.size	__FUNCTION__$5063, 18
__FUNCTION__$5063:
	.string	"pcnt_event_enable"
	.section	.rodata.__FUNCTION__$5058,"a",@progbits
	.align	4
	.type	__FUNCTION__$5058, @object
	.size	__FUNCTION__$5058, 18
__FUNCTION__$5058:
	.string	"pcnt_intr_disable"
	.section	.rodata.__FUNCTION__$5054,"a",@progbits
	.align	4
	.type	__FUNCTION__$5054, @object
	.size	__FUNCTION__$5054, 17
__FUNCTION__$5054:
	.string	"pcnt_intr_enable"
	.section	.rodata.__FUNCTION__$5049,"a",@progbits
	.align	4
	.type	__FUNCTION__$5049, @object
	.size	__FUNCTION__$5049, 19
__FUNCTION__$5049:
	.string	"pcnt_counter_clear"
	.section	.rodata.__FUNCTION__$5045,"a",@progbits
	.align	4
	.type	__FUNCTION__$5045, @object
	.size	__FUNCTION__$5045, 20
__FUNCTION__$5045:
	.string	"pcnt_counter_resume"
	.section	.rodata.__FUNCTION__$5041,"a",@progbits
	.align	4
	.type	__FUNCTION__$5041, @object
	.size	__FUNCTION__$5041, 19
__FUNCTION__$5041:
	.string	"pcnt_counter_pause"
	.section	.rodata.__FUNCTION__$5037,"a",@progbits
	.align	4
	.type	__FUNCTION__$5037, @object
	.size	__FUNCTION__$5037, 23
__FUNCTION__$5037:
	.string	"pcnt_get_counter_value"
	.section	.rodata.__FUNCTION__$5028,"a",@progbits
	.align	4
	.type	__FUNCTION__$5028, @object
	.size	__FUNCTION__$5028, 13
__FUNCTION__$5028:
	.string	"pcnt_set_pin"
	.section	.rodata.__FUNCTION__$5021,"a",@progbits
	.align	4
	.type	__FUNCTION__$5021, @object
	.size	__FUNCTION__$5021, 14
__FUNCTION__$5021:
	.string	"pcnt_set_mode"
	.section	.rodata.__FUNCTION__$5012,"a",@progbits
	.align	4
	.type	__FUNCTION__$5012, @object
	.size	__FUNCTION__$5012, 17
__FUNCTION__$5012:
	.string	"pcnt_unit_config"
	.section	.data.pcnt_spinlock,"aw",@progbits
	.align	4
	.type	pcnt_spinlock, @object
	.size	pcnt_spinlock, 8
pcnt_spinlock:
	.word	-1287651329
	.word	0
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
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI0-.LFB12
	.byte	0xe
	.uleb128 0x30
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
	.uleb128 0x30
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI2-.LFB14
	.byte	0xe
	.uleb128 0x30
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
	.uleb128 0x30
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI4-.LFB16
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI5-.LFB17
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI6-.LFB18
	.byte	0xe
	.uleb128 0x30
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
	.uleb128 0x30
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
	.uleb128 0x30
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
	.uleb128 0x30
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI10-.LFB22
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI11-.LFB23
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI12-.LFB24
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI13-.LFB25
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI14-.LFB26
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI15-.LFB27
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI16-.LFB11
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI17-.LFB28
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE34:
	.text
.Letext0:
	.file 2 "C:/esp/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "C:/esp/esp-idf/components/newlib/include/stdint.h"
	.file 4 "C:/esp/esp-idf/components/log/include/esp_log.h"
	.file 5 "C:/esp/esp-idf/components/esp32/include/esp_err.h"
	.file 6 "C:/esp/esp-idf/components/esp32/include/esp_intr_alloc.h"
	.file 7 "C:/esp/esp-idf/components/freertos/include/freertos/portmacro.h"
	.file 8 "C:/esp/esp-idf/components/driver/include/driver/gpio.h"
	.file 9 "C:/esp/esp-idf/components/soc/esp32/include/soc/pcnt_struct.h"
	.file 10 "C:/esp/esp-idf/components/driver/include/driver/pcnt.h"
	.file 11 "C:/esp/esp-idf/components/driver/include/driver/periph_ctrl.h"
	.file 12 "C:/esp/esp-idf/components/esp32/include/rom/gpio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2161
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF246
	.byte	0xc
	.4byte	.LASF247
	.4byte	.LASF248
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF2
	.byte	0x2
	.byte	0x12
	.4byte	0x37
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x2
	.byte	0x15
	.4byte	0x49
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x16
	.4byte	0x5b
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0x19
	.4byte	0x6d
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x2
	.byte	0x1a
	.4byte	0x7f
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x15
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0x20
	.4byte	0x3e
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x21
	.4byte	0x50
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x3
	.byte	0x2c
	.4byte	0x62
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x3
	.byte	0x2d
	.4byte	0x74
	.uleb128 0x5
	.byte	0x4
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
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF20
	.uleb128 0x6
	.byte	0x4
	.4byte	0xef
	.uleb128 0x7
	.4byte	0xe2
	.uleb128 0x6
	.byte	0x4
	.4byte	0xfa
	.uleb128 0x8
	.4byte	0x105
	.uleb128 0x9
	.4byte	0xcb
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x7f
	.byte	0x4
	.byte	0x1f
	.4byte	0x136
	.uleb128 0xb
	.4byte	.LASF21
	.byte	0
	.uleb128 0xb
	.4byte	.LASF22
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x3
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x4
	.byte	0x26
	.4byte	0x105
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x5
	.byte	0x18
	.4byte	0xb5
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0x6
	.byte	0x56
	.4byte	0x157
	.uleb128 0xc
	.4byte	.LASF29
	.uleb128 0x3
	.4byte	.LASF30
	.byte	0x6
	.byte	0x57
	.4byte	0x167
	.uleb128 0x6
	.byte	0x4
	.4byte	0x14c
	.uleb128 0xd
	.byte	0x8
	.byte	0x7
	.byte	0x81
	.4byte	0x18e
	.uleb128 0xe
	.4byte	.LASF31
	.byte	0x7
	.byte	0x82
	.4byte	0xc0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF32
	.byte	0x7
	.byte	0x83
	.4byte	0xc0
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF33
	.byte	0x7
	.byte	0x88
	.4byte	0x16d
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF34
	.uleb128 0xa
	.byte	0x4
	.4byte	0x7f
	.byte	0x8
	.byte	0xba
	.4byte	0x1cb
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x6
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0x7
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x7f
	.byte	0x8
	.byte	0xd7
	.4byte	0x1f0
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0
	.uleb128 0xb
	.4byte	.LASF41
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF43
	.byte	0x3
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.byte	0x9
	.byte	0x18
	.4byte	0x2da
	.uleb128 0xf
	.4byte	.LASF44
	.byte	0x9
	.byte	0x19
	.4byte	0xc0
	.byte	0x4
	.byte	0xa
	.byte	0x16
	.byte	0
	.uleb128 0xf
	.4byte	.LASF45
	.byte	0x9
	.byte	0x1a
	.4byte	0xc0
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xf
	.4byte	.LASF46
	.byte	0x9
	.byte	0x1b
	.4byte	0xc0
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xf
	.4byte	.LASF47
	.byte	0x9
	.byte	0x1c
	.4byte	0xc0
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xf
	.4byte	.LASF48
	.byte	0x9
	.byte	0x1d
	.4byte	0xc0
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xf
	.4byte	.LASF49
	.byte	0x9
	.byte	0x1e
	.4byte	0xc0
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xf
	.4byte	.LASF50
	.byte	0x9
	.byte	0x1f
	.4byte	0xc0
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.4byte	.LASF51
	.byte	0x9
	.byte	0x20
	.4byte	0xc0
	.byte	0x4
	.byte	0x2
	.byte	0xe
	.byte	0
	.uleb128 0xf
	.4byte	.LASF52
	.byte	0x9
	.byte	0x21
	.4byte	0xc0
	.byte	0x4
	.byte	0x2
	.byte	0xc
	.byte	0
	.uleb128 0xf
	.4byte	.LASF53
	.byte	0x9
	.byte	0x22
	.4byte	0xc0
	.byte	0x4
	.byte	0x2
	.byte	0xa
	.byte	0
	.uleb128 0xf
	.4byte	.LASF54
	.byte	0x9
	.byte	0x23
	.4byte	0xc0
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.4byte	.LASF55
	.byte	0x9
	.byte	0x24
	.4byte	0xc0
	.byte	0x4
	.byte	0x2
	.byte	0x6
	.byte	0
	.uleb128 0xf
	.4byte	.LASF56
	.byte	0x9
	.byte	0x25
	.4byte	0xc0
	.byte	0x4
	.byte	0x2
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.4byte	.LASF57
	.byte	0x9
	.byte	0x26
	.4byte	0xc0
	.byte	0x4
	.byte	0x2
	.byte	0x2
	.byte	0
	.uleb128 0xf
	.4byte	.LASF58
	.byte	0x9
	.byte	0x27
	.4byte	0xc0
	.byte	0x4
	.byte	0x2
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.byte	0x9
	.byte	0x17
	.4byte	0x2f3
	.uleb128 0x11
	.4byte	0x1f0
	.uleb128 0x12
	.string	"val"
	.byte	0x9
	.byte	0x29
	.4byte	0xc0
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.byte	0x9
	.byte	0x2c
	.4byte	0x31a
	.uleb128 0xf
	.4byte	.LASF59
	.byte	0x9
	.byte	0x2d
	.4byte	0xc0
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.4byte	.LASF60
	.byte	0x9
	.byte	0x2e
	.4byte	0xc0
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.byte	0x9
	.byte	0x2b
	.4byte	0x333
	.uleb128 0x11
	.4byte	0x2f3
	.uleb128 0x12
	.string	"val"
	.byte	0x9
	.byte	0x30
	.4byte	0xc0
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.byte	0x9
	.byte	0x33
	.4byte	0x35a
	.uleb128 0xf
	.4byte	.LASF61
	.byte	0x9
	.byte	0x34
	.4byte	0xc0
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.4byte	.LASF62
	.byte	0x9
	.byte	0x35
	.4byte	0xc0
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.byte	0x9
	.byte	0x32
	.4byte	0x373
	.uleb128 0x11
	.4byte	0x333
	.uleb128 0x12
	.string	"val"
	.byte	0x9
	.byte	0x37
	.4byte	0xc0
	.byte	0
	.uleb128 0xd
	.byte	0xc
	.byte	0x9
	.byte	0x16
	.4byte	0x3a0
	.uleb128 0xe
	.4byte	.LASF63
	.byte	0x9
	.byte	0x2a
	.4byte	0x2da
	.byte	0
	.uleb128 0xe
	.4byte	.LASF64
	.byte	0x9
	.byte	0x31
	.4byte	0x31a
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF65
	.byte	0x9
	.byte	0x38
	.4byte	0x35a
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.byte	0x9
	.byte	0x3b
	.4byte	0x3c7
	.uleb128 0xf
	.4byte	.LASF66
	.byte	0x9
	.byte	0x3c
	.4byte	0xc0
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.4byte	.LASF67
	.byte	0x9
	.byte	0x3d
	.4byte	0xc0
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.byte	0x9
	.byte	0x3a
	.4byte	0x3e0
	.uleb128 0x11
	.4byte	0x3a0
	.uleb128 0x12
	.string	"val"
	.byte	0x9
	.byte	0x3f
	.4byte	0xc0
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.byte	0x9
	.byte	0x42
	.4byte	0x470
	.uleb128 0xf
	.4byte	.LASF68
	.byte	0x9
	.byte	0x43
	.4byte	0xc0
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.4byte	.LASF69
	.byte	0x9
	.byte	0x44
	.4byte	0xc0
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xf
	.4byte	.LASF70
	.byte	0x9
	.byte	0x45
	.4byte	0xc0
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xf
	.4byte	.LASF71
	.byte	0x9
	.byte	0x46
	.4byte	0xc0
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xf
	.4byte	.LASF72
	.byte	0x9
	.byte	0x47
	.4byte	0xc0
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xf
	.4byte	.LASF73
	.byte	0x9
	.byte	0x48
	.4byte	0xc0
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xf
	.4byte	.LASF74
	.byte	0x9
	.byte	0x49
	.4byte	0xc0
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xf
	.4byte	.LASF75
	.byte	0x9
	.byte	0x4a
	.4byte	0xc0
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.4byte	.LASF76
	.byte	0x9
	.byte	0x4b
	.4byte	0xc0
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.byte	0x9
	.byte	0x41
	.4byte	0x489
	.uleb128 0x11
	.4byte	0x3e0
	.uleb128 0x12
	.string	"val"
	.byte	0x9
	.byte	0x4d
	.4byte	0xc0
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.byte	0x9
	.byte	0x50
	.4byte	0x519
	.uleb128 0xf
	.4byte	.LASF68
	.byte	0x9
	.byte	0x51
	.4byte	0xc0
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.4byte	.LASF69
	.byte	0x9
	.byte	0x52
	.4byte	0xc0
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xf
	.4byte	.LASF70
	.byte	0x9
	.byte	0x53
	.4byte	0xc0
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xf
	.4byte	.LASF71
	.byte	0x9
	.byte	0x54
	.4byte	0xc0
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xf
	.4byte	.LASF72
	.byte	0x9
	.byte	0x55
	.4byte	0xc0
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xf
	.4byte	.LASF73
	.byte	0x9
	.byte	0x56
	.4byte	0xc0
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xf
	.4byte	.LASF74
	.byte	0x9
	.byte	0x57
	.4byte	0xc0
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xf
	.4byte	.LASF75
	.byte	0x9
	.byte	0x58
	.4byte	0xc0
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.4byte	.LASF76
	.byte	0x9
	.byte	0x59
	.4byte	0xc0
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.byte	0x9
	.byte	0x4f
	.4byte	0x532
	.uleb128 0x11
	.4byte	0x489
	.uleb128 0x12
	.string	"val"
	.byte	0x9
	.byte	0x5b
	.4byte	0xc0
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.byte	0x9
	.byte	0x5e
	.4byte	0x5c2
	.uleb128 0xf
	.4byte	.LASF68
	.byte	0x9
	.byte	0x5f
	.4byte	0xc0
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.4byte	.LASF69
	.byte	0x9
	.byte	0x60
	.4byte	0xc0
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xf
	.4byte	.LASF70
	.byte	0x9
	.byte	0x61
	.4byte	0xc0
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xf
	.4byte	.LASF71
	.byte	0x9
	.byte	0x62
	.4byte	0xc0
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xf
	.4byte	.LASF72
	.byte	0x9
	.byte	0x63
	.4byte	0xc0
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xf
	.4byte	.LASF73
	.byte	0x9
	.byte	0x64
	.4byte	0xc0
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xf
	.4byte	.LASF74
	.byte	0x9
	.byte	0x65
	.4byte	0xc0
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xf
	.4byte	.LASF75
	.byte	0x9
	.byte	0x66
	.4byte	0xc0
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.4byte	.LASF76
	.byte	0x9
	.byte	0x67
	.4byte	0xc0
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.byte	0x9
	.byte	0x5d
	.4byte	0x5db
	.uleb128 0x11
	.4byte	0x532
	.uleb128 0x12
	.string	"val"
	.byte	0x9
	.byte	0x69
	.4byte	0xc0
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.byte	0x9
	.byte	0x6c
	.4byte	0x66b
	.uleb128 0xf
	.4byte	.LASF68
	.byte	0x9
	.byte	0x6d
	.4byte	0xc0
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.4byte	.LASF69
	.byte	0x9
	.byte	0x6e
	.4byte	0xc0
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xf
	.4byte	.LASF70
	.byte	0x9
	.byte	0x6f
	.4byte	0xc0
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xf
	.4byte	.LASF71
	.byte	0x9
	.byte	0x70
	.4byte	0xc0
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xf
	.4byte	.LASF72
	.byte	0x9
	.byte	0x71
	.4byte	0xc0
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xf
	.4byte	.LASF73
	.byte	0x9
	.byte	0x72
	.4byte	0xc0
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xf
	.4byte	.LASF74
	.byte	0x9
	.byte	0x73
	.4byte	0xc0
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xf
	.4byte	.LASF75
	.byte	0x9
	.byte	0x74
	.4byte	0xc0
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.4byte	.LASF76
	.byte	0x9
	.byte	0x75
	.4byte	0xc0
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.byte	0x9
	.byte	0x6b
	.4byte	0x684
	.uleb128 0x11
	.4byte	0x5db
	.uleb128 0x12
	.string	"val"
	.byte	0x9
	.byte	0x77
	.4byte	0xc0
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.byte	0x9
	.byte	0x7a
	.4byte	0x6f6
	.uleb128 0xf
	.4byte	.LASF77
	.byte	0x9
	.byte	0x7b
	.4byte	0xc0
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0
	.uleb128 0xf
	.4byte	.LASF78
	.byte	0x9
	.byte	0x7c
	.4byte	0xc0
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xf
	.4byte	.LASF79
	.byte	0x9
	.byte	0x7d
	.4byte	0xc0
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xf
	.4byte	.LASF80
	.byte	0x9
	.byte	0x7e
	.4byte	0xc0
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xf
	.4byte	.LASF81
	.byte	0x9
	.byte	0x7f
	.4byte	0xc0
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xf
	.4byte	.LASF82
	.byte	0x9
	.byte	0x80
	.4byte	0xc0
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xf
	.4byte	.LASF83
	.byte	0x9
	.byte	0x81
	.4byte	0xc0
	.byte	0x4
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.byte	0x9
	.byte	0x79
	.4byte	0x70f
	.uleb128 0x11
	.4byte	0x684
	.uleb128 0x12
	.string	"val"
	.byte	0x9
	.byte	0x83
	.4byte	0xc0
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.byte	0x9
	.byte	0x86
	.4byte	0x826
	.uleb128 0xf
	.4byte	.LASF84
	.byte	0x9
	.byte	0x87
	.4byte	0xc0
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.4byte	.LASF85
	.byte	0x9
	.byte	0x88
	.4byte	0xc0
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xf
	.4byte	.LASF86
	.byte	0x9
	.byte	0x89
	.4byte	0xc0
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xf
	.4byte	.LASF87
	.byte	0x9
	.byte	0x8a
	.4byte	0xc0
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xf
	.4byte	.LASF88
	.byte	0x9
	.byte	0x8b
	.4byte	0xc0
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xf
	.4byte	.LASF89
	.byte	0x9
	.byte	0x8c
	.4byte	0xc0
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xf
	.4byte	.LASF90
	.byte	0x9
	.byte	0x8d
	.4byte	0xc0
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xf
	.4byte	.LASF91
	.byte	0x9
	.byte	0x8e
	.4byte	0xc0
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.4byte	.LASF92
	.byte	0x9
	.byte	0x8f
	.4byte	0xc0
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xf
	.4byte	.LASF93
	.byte	0x9
	.byte	0x90
	.4byte	0xc0
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xf
	.4byte	.LASF94
	.byte	0x9
	.byte	0x91
	.4byte	0xc0
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xf
	.4byte	.LASF95
	.byte	0x9
	.byte	0x92
	.4byte	0xc0
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xf
	.4byte	.LASF96
	.byte	0x9
	.byte	0x93
	.4byte	0xc0
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xf
	.4byte	.LASF97
	.byte	0x9
	.byte	0x94
	.4byte	0xc0
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xf
	.4byte	.LASF98
	.byte	0x9
	.byte	0x95
	.4byte	0xc0
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xf
	.4byte	.LASF99
	.byte	0x9
	.byte	0x96
	.4byte	0xc0
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.4byte	.LASF100
	.byte	0x9
	.byte	0x97
	.4byte	0xc0
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xf
	.4byte	.LASF101
	.byte	0x9
	.byte	0x98
	.4byte	0xc0
	.byte	0x4
	.byte	0xf
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.byte	0x9
	.byte	0x85
	.4byte	0x83f
	.uleb128 0x11
	.4byte	0x70f
	.uleb128 0x12
	.string	"val"
	.byte	0x9
	.byte	0x9a
	.4byte	0xc0
	.byte	0
	.uleb128 0x13
	.2byte	0x100
	.byte	0x9
	.byte	0x15
	.4byte	0x98d
	.uleb128 0xe
	.4byte	.LASF102
	.byte	0x9
	.byte	0x39
	.4byte	0x98d
	.byte	0
	.uleb128 0xe
	.4byte	.LASF103
	.byte	0x9
	.byte	0x40
	.4byte	0x99d
	.byte	0x60
	.uleb128 0xe
	.4byte	.LASF104
	.byte	0x9
	.byte	0x4e
	.4byte	0x470
	.byte	0x80
	.uleb128 0xe
	.4byte	.LASF105
	.byte	0x9
	.byte	0x5c
	.4byte	0x519
	.byte	0x84
	.uleb128 0xe
	.4byte	.LASF106
	.byte	0x9
	.byte	0x6a
	.4byte	0x5c2
	.byte	0x88
	.uleb128 0xe
	.4byte	.LASF107
	.byte	0x9
	.byte	0x78
	.4byte	0x66b
	.byte	0x8c
	.uleb128 0xe
	.4byte	.LASF108
	.byte	0x9
	.byte	0x84
	.4byte	0x9ad
	.byte	0x90
	.uleb128 0xe
	.4byte	.LASF109
	.byte	0x9
	.byte	0x9b
	.4byte	0x826
	.byte	0xb0
	.uleb128 0xe
	.4byte	.LASF110
	.byte	0x9
	.byte	0x9c
	.4byte	0xc0
	.byte	0xb4
	.uleb128 0xe
	.4byte	.LASF111
	.byte	0x9
	.byte	0x9d
	.4byte	0xc0
	.byte	0xb8
	.uleb128 0xe
	.4byte	.LASF112
	.byte	0x9
	.byte	0x9e
	.4byte	0xc0
	.byte	0xbc
	.uleb128 0xe
	.4byte	.LASF113
	.byte	0x9
	.byte	0x9f
	.4byte	0xc0
	.byte	0xc0
	.uleb128 0xe
	.4byte	.LASF114
	.byte	0x9
	.byte	0xa0
	.4byte	0xc0
	.byte	0xc4
	.uleb128 0xe
	.4byte	.LASF115
	.byte	0x9
	.byte	0xa1
	.4byte	0xc0
	.byte	0xc8
	.uleb128 0xe
	.4byte	.LASF116
	.byte	0x9
	.byte	0xa2
	.4byte	0xc0
	.byte	0xcc
	.uleb128 0xe
	.4byte	.LASF117
	.byte	0x9
	.byte	0xa3
	.4byte	0xc0
	.byte	0xd0
	.uleb128 0xe
	.4byte	.LASF118
	.byte	0x9
	.byte	0xa4
	.4byte	0xc0
	.byte	0xd4
	.uleb128 0xe
	.4byte	.LASF119
	.byte	0x9
	.byte	0xa5
	.4byte	0xc0
	.byte	0xd8
	.uleb128 0xe
	.4byte	.LASF120
	.byte	0x9
	.byte	0xa6
	.4byte	0xc0
	.byte	0xdc
	.uleb128 0xe
	.4byte	.LASF121
	.byte	0x9
	.byte	0xa7
	.4byte	0xc0
	.byte	0xe0
	.uleb128 0xe
	.4byte	.LASF122
	.byte	0x9
	.byte	0xa8
	.4byte	0xc0
	.byte	0xe4
	.uleb128 0xe
	.4byte	.LASF123
	.byte	0x9
	.byte	0xa9
	.4byte	0xc0
	.byte	0xe8
	.uleb128 0xe
	.4byte	.LASF124
	.byte	0x9
	.byte	0xaa
	.4byte	0xc0
	.byte	0xec
	.uleb128 0xe
	.4byte	.LASF125
	.byte	0x9
	.byte	0xab
	.4byte	0xc0
	.byte	0xf0
	.uleb128 0xe
	.4byte	.LASF126
	.byte	0x9
	.byte	0xac
	.4byte	0xc0
	.byte	0xf4
	.uleb128 0xe
	.4byte	.LASF127
	.byte	0x9
	.byte	0xad
	.4byte	0xc0
	.byte	0xf8
	.uleb128 0xe
	.4byte	.LASF128
	.byte	0x9
	.byte	0xae
	.4byte	0xc0
	.byte	0xfc
	.byte	0
	.uleb128 0x14
	.4byte	0x373
	.4byte	0x99d
	.uleb128 0x15
	.4byte	0xd4
	.byte	0x7
	.byte	0
	.uleb128 0x14
	.4byte	0x3c7
	.4byte	0x9ad
	.uleb128 0x15
	.4byte	0xd4
	.byte	0x7
	.byte	0
	.uleb128 0x14
	.4byte	0x6f6
	.4byte	0x9bd
	.uleb128 0x15
	.4byte	0xd4
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.4byte	.LASF129
	.byte	0x9
	.byte	0xaf
	.4byte	0x9c8
	.uleb128 0x16
	.4byte	0x83f
	.uleb128 0xa
	.byte	0x4
	.4byte	0x7f
	.byte	0xa
	.byte	0x17
	.4byte	0x9f2
	.uleb128 0xb
	.4byte	.LASF130
	.byte	0
	.uleb128 0xb
	.4byte	.LASF131
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF132
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF133
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF134
	.byte	0xa
	.byte	0x1c
	.4byte	0x9cd
	.uleb128 0xa
	.byte	0x4
	.4byte	0x7f
	.byte	0xa
	.byte	0x1e
	.4byte	0xa22
	.uleb128 0xb
	.4byte	.LASF135
	.byte	0
	.uleb128 0xb
	.4byte	.LASF136
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF137
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF138
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF139
	.byte	0xa
	.byte	0x23
	.4byte	0x9fd
	.uleb128 0xa
	.byte	0x4
	.4byte	0x7f
	.byte	0xa
	.byte	0x25
	.4byte	0xa70
	.uleb128 0xb
	.4byte	.LASF140
	.byte	0
	.uleb128 0xb
	.4byte	.LASF141
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF142
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF143
	.byte	0x3
	.uleb128 0xb
	.4byte	.LASF144
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF145
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF146
	.byte	0x6
	.uleb128 0xb
	.4byte	.LASF147
	.byte	0x7
	.uleb128 0xb
	.4byte	.LASF148
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF149
	.byte	0xa
	.byte	0x2f
	.4byte	0xa2d
	.uleb128 0xa
	.byte	0x4
	.4byte	0x7f
	.byte	0xa
	.byte	0x31
	.4byte	0xa9a
	.uleb128 0xb
	.4byte	.LASF150
	.byte	0
	.uleb128 0xb
	.4byte	.LASF151
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF152
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF153
	.byte	0xa
	.byte	0x35
	.4byte	0xa7b
	.uleb128 0xa
	.byte	0x4
	.4byte	0x7f
	.byte	0xa
	.byte	0x37
	.4byte	0xad6
	.uleb128 0xb
	.4byte	.LASF154
	.byte	0
	.uleb128 0xb
	.4byte	.LASF155
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF156
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF157
	.byte	0x3
	.uleb128 0xb
	.4byte	.LASF158
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF159
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF160
	.byte	0xa
	.byte	0x3e
	.4byte	0xaa5
	.uleb128 0xd
	.byte	0x24
	.byte	0xa
	.byte	0x43
	.4byte	0xb62
	.uleb128 0xe
	.4byte	.LASF161
	.byte	0xa
	.byte	0x44
	.4byte	0x6d
	.byte	0
	.uleb128 0xe
	.4byte	.LASF162
	.byte	0xa
	.byte	0x45
	.4byte	0x6d
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF163
	.byte	0xa
	.byte	0x46
	.4byte	0x9f2
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF164
	.byte	0xa
	.byte	0x47
	.4byte	0x9f2
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF165
	.byte	0xa
	.byte	0x48
	.4byte	0xa22
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF166
	.byte	0xa
	.byte	0x49
	.4byte	0xa22
	.byte	0x14
	.uleb128 0xe
	.4byte	.LASF167
	.byte	0xa
	.byte	0x4a
	.4byte	0x9f
	.byte	0x18
	.uleb128 0xe
	.4byte	.LASF168
	.byte	0xa
	.byte	0x4b
	.4byte	0x9f
	.byte	0x1a
	.uleb128 0xe
	.4byte	.LASF169
	.byte	0xa
	.byte	0x4c
	.4byte	0xa70
	.byte	0x1c
	.uleb128 0xe
	.4byte	.LASF170
	.byte	0xa
	.byte	0x4d
	.4byte	0xa9a
	.byte	0x20
	.byte	0
	.uleb128 0x3
	.4byte	.LASF171
	.byte	0xa
	.byte	0x4e
	.4byte	0xae1
	.uleb128 0x3
	.4byte	.LASF172
	.byte	0xa
	.byte	0x50
	.4byte	0x15c
	.uleb128 0xa
	.byte	0x4
	.4byte	0x7f
	.byte	0xb
	.byte	0x19
	.4byte	0xc21
	.uleb128 0xb
	.4byte	.LASF173
	.byte	0
	.uleb128 0xb
	.4byte	.LASF174
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF175
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF176
	.byte	0x3
	.uleb128 0xb
	.4byte	.LASF177
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF178
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF179
	.byte	0x6
	.uleb128 0xb
	.4byte	.LASF180
	.byte	0x7
	.uleb128 0xb
	.4byte	.LASF181
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF182
	.byte	0x9
	.uleb128 0xb
	.4byte	.LASF183
	.byte	0xa
	.uleb128 0xb
	.4byte	.LASF184
	.byte	0xb
	.uleb128 0xb
	.4byte	.LASF185
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF186
	.byte	0xd
	.uleb128 0xb
	.4byte	.LASF187
	.byte	0xe
	.uleb128 0xb
	.4byte	.LASF188
	.byte	0xf
	.uleb128 0xb
	.4byte	.LASF189
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF190
	.byte	0x11
	.uleb128 0xb
	.4byte	.LASF191
	.byte	0x12
	.uleb128 0xb
	.4byte	.LASF192
	.byte	0x13
	.uleb128 0xb
	.4byte	.LASF193
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF194
	.byte	0x15
	.uleb128 0xb
	.4byte	.LASF195
	.byte	0x16
	.uleb128 0xb
	.4byte	.LASF196
	.byte	0x17
	.uleb128 0xb
	.4byte	.LASF197
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF198
	.byte	0x19
	.byte	0
	.uleb128 0x17
	.4byte	.LASF199
	.byte	0x1
	.byte	0x48
	.4byte	0x141
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xde4
	.uleb128 0x18
	.4byte	.LASF169
	.byte	0x1
	.byte	0x48
	.4byte	0xa70
	.4byte	.LLST0
	.uleb128 0x18
	.4byte	.LASF170
	.byte	0x1
	.byte	0x48
	.4byte	0xa9a
	.4byte	.LLST1
	.uleb128 0x18
	.4byte	.LASF165
	.byte	0x1
	.byte	0x48
	.4byte	0xa22
	.4byte	.LLST2
	.uleb128 0x18
	.4byte	.LASF166
	.byte	0x1
	.byte	0x48
	.4byte	0xa22
	.4byte	.LLST3
	.uleb128 0x18
	.4byte	.LASF164
	.byte	0x1
	.byte	0x48
	.4byte	0x9f2
	.4byte	.LLST4
	.uleb128 0x18
	.4byte	.LASF163
	.byte	0x1
	.byte	0x48
	.4byte	0x9f2
	.4byte	.LLST5
	.uleb128 0x19
	.4byte	.LASF203
	.4byte	0xdf4
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5021
	.uleb128 0x1a
	.4byte	.LVL1
	.4byte	0x20ff
	.uleb128 0x1b
	.4byte	.LVL3
	.4byte	0x210a
	.4byte	0xcf4
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5021
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL5
	.4byte	0x20ff
	.uleb128 0x1b
	.4byte	.LVL7
	.4byte	0x210a
	.4byte	0xd45
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5021
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL9
	.4byte	0x20ff
	.uleb128 0x1b
	.4byte	.LVL11
	.4byte	0x210a
	.4byte	0xd96
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5021
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL13
	.4byte	0x20ff
	.uleb128 0x1d
	.4byte	.LVL15
	.4byte	0x210a
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5021
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	0xe2
	.4byte	0xdf4
	.uleb128 0x15
	.4byte	0xd4
	.byte	0xd
	.byte	0
	.uleb128 0x7
	.4byte	0xde4
	.uleb128 0x17
	.4byte	.LASF200
	.byte	0x1
	.byte	0x5d
	.4byte	0x141
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x107a
	.uleb128 0x18
	.4byte	.LASF169
	.byte	0x1
	.byte	0x5d
	.4byte	0xa70
	.4byte	.LLST6
	.uleb128 0x18
	.4byte	.LASF170
	.byte	0x1
	.byte	0x5d
	.4byte	0xa9a
	.4byte	.LLST7
	.uleb128 0x18
	.4byte	.LASF201
	.byte	0x1
	.byte	0x5d
	.4byte	0x6d
	.4byte	.LLST8
	.uleb128 0x1e
	.4byte	.LASF202
	.byte	0x1
	.byte	0x5d
	.4byte	0x6d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x19
	.4byte	.LASF203
	.4byte	0x108a
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5028
	.uleb128 0x1f
	.4byte	.LASF204
	.byte	0x1
	.byte	0x64
	.4byte	0x6d
	.4byte	.LLST9
	.uleb128 0x1f
	.4byte	.LASF205
	.byte	0x1
	.byte	0x65
	.4byte	0x6d
	.4byte	.LLST10
	.uleb128 0x1f
	.4byte	.LASF206
	.byte	0x1
	.byte	0x6a
	.4byte	0x6d
	.4byte	.LLST11
	.uleb128 0x1f
	.4byte	.LASF207
	.byte	0x1
	.byte	0x6b
	.4byte	0x6d
	.4byte	.LLST12
	.uleb128 0x1a
	.4byte	.LVL31
	.4byte	0x20ff
	.uleb128 0x1b
	.4byte	.LVL33
	.4byte	0x210a
	.4byte	0xee8
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5028
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL35
	.4byte	0x20ff
	.uleb128 0x1b
	.4byte	.LVL37
	.4byte	0x210a
	.4byte	0xf39
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5028
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL39
	.4byte	0x20ff
	.uleb128 0x1b
	.4byte	.LVL41
	.4byte	0x210a
	.4byte	0xf8a
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5028
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC28
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL43
	.4byte	0x20ff
	.uleb128 0x1b
	.4byte	.LVL45
	.4byte	0x210a
	.4byte	0xfdb
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5028
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC28
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL58
	.4byte	0x2115
	.4byte	0xff4
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
	.byte	0x31
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL59
	.4byte	0x2121
	.4byte	0x100d
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
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL60
	.4byte	0x212d
	.4byte	0x102c
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL63
	.4byte	0x2115
	.4byte	0x1045
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL64
	.4byte	0x2121
	.4byte	0x105e
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL65
	.4byte	0x212d
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	0xe2
	.4byte	0x108a
	.uleb128 0x15
	.4byte	0xd4
	.byte	0xc
	.byte	0
	.uleb128 0x7
	.4byte	0x107a
	.uleb128 0x17
	.4byte	.LASF208
	.byte	0x1
	.byte	0x7c
	.4byte	0x141
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1172
	.uleb128 0x18
	.4byte	.LASF209
	.byte	0x1
	.byte	0x7c
	.4byte	0xa70
	.4byte	.LLST13
	.uleb128 0x1e
	.4byte	.LASF32
	.byte	0x1
	.byte	0x7c
	.4byte	0x1172
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x19
	.4byte	.LASF203
	.4byte	0x1188
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5037
	.uleb128 0x1a
	.4byte	.LVL70
	.4byte	0x20ff
	.uleb128 0x1b
	.4byte	.LVL72
	.4byte	0x210a
	.4byte	0x1124
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5037
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL74
	.4byte	0x20ff
	.uleb128 0x1d
	.4byte	.LVL76
	.4byte	0x210a
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5037
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC36
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x9f
	.uleb128 0x14
	.4byte	0xe2
	.4byte	0x1188
	.uleb128 0x15
	.4byte	0xd4
	.byte	0x16
	.byte	0
	.uleb128 0x7
	.4byte	0x1178
	.uleb128 0x17
	.4byte	.LASF210
	.byte	0x1
	.byte	0x84
	.4byte	0x141
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x123a
	.uleb128 0x18
	.4byte	.LASF209
	.byte	0x1
	.byte	0x84
	.4byte	0xa70
	.4byte	.LLST14
	.uleb128 0x19
	.4byte	.LASF203
	.4byte	0x124a
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5041
	.uleb128 0x1a
	.4byte	.LVL81
	.4byte	0x20ff
	.uleb128 0x1b
	.4byte	.LVL83
	.4byte	0x210a
	.4byte	0x1215
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5041
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL85
	.4byte	0x2138
	.4byte	0x1229
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL87
	.4byte	0x2143
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	0xe2
	.4byte	0x124a
	.uleb128 0x15
	.4byte	0xd4
	.byte	0x12
	.byte	0
	.uleb128 0x7
	.4byte	0x123a
	.uleb128 0x17
	.4byte	.LASF211
	.byte	0x1
	.byte	0x8d
	.4byte	0x141
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12fc
	.uleb128 0x18
	.4byte	.LASF209
	.byte	0x1
	.byte	0x8d
	.4byte	0xa70
	.4byte	.LLST15
	.uleb128 0x19
	.4byte	.LASF203
	.4byte	0x130c
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5045
	.uleb128 0x1a
	.4byte	.LVL89
	.4byte	0x20ff
	.uleb128 0x1b
	.4byte	.LVL91
	.4byte	0x210a
	.4byte	0x12d7
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5045
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL93
	.4byte	0x2138
	.4byte	0x12eb
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL95
	.4byte	0x2143
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	0xe2
	.4byte	0x130c
	.uleb128 0x15
	.4byte	0xd4
	.byte	0x13
	.byte	0
	.uleb128 0x7
	.4byte	0x12fc
	.uleb128 0x17
	.4byte	.LASF212
	.byte	0x1
	.byte	0x96
	.4byte	0x141
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x13cd
	.uleb128 0x18
	.4byte	.LASF209
	.byte	0x1
	.byte	0x96
	.4byte	0xa70
	.4byte	.LLST16
	.uleb128 0x19
	.4byte	.LASF203
	.4byte	0x13cd
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5049
	.uleb128 0x1f
	.4byte	.LASF213
	.byte	0x1
	.byte	0x9a
	.4byte	0xc0
	.4byte	.LLST17
	.uleb128 0x1a
	.4byte	.LVL97
	.4byte	0x20ff
	.uleb128 0x1b
	.4byte	.LVL99
	.4byte	0x210a
	.4byte	0x13a8
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5049
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL101
	.4byte	0x2138
	.4byte	0x13bc
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL105
	.4byte	0x2143
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0x123a
	.uleb128 0x17
	.4byte	.LASF214
	.byte	0x1
	.byte	0xa1
	.4byte	0x141
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x147f
	.uleb128 0x18
	.4byte	.LASF209
	.byte	0x1
	.byte	0xa1
	.4byte	0xa70
	.4byte	.LLST18
	.uleb128 0x19
	.4byte	.LASF203
	.4byte	0x148f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5054
	.uleb128 0x1a
	.4byte	.LVL107
	.4byte	0x20ff
	.uleb128 0x1b
	.4byte	.LVL109
	.4byte	0x210a
	.4byte	0x145a
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5054
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL111
	.4byte	0x2138
	.4byte	0x146e
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL113
	.4byte	0x2143
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	0xe2
	.4byte	0x148f
	.uleb128 0x15
	.4byte	0xd4
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.4byte	0x147f
	.uleb128 0x17
	.4byte	.LASF215
	.byte	0x1
	.byte	0xaa
	.4byte	0x141
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1541
	.uleb128 0x18
	.4byte	.LASF209
	.byte	0x1
	.byte	0xaa
	.4byte	0xa70
	.4byte	.LLST19
	.uleb128 0x19
	.4byte	.LASF203
	.4byte	0x1551
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5058
	.uleb128 0x1a
	.4byte	.LVL115
	.4byte	0x20ff
	.uleb128 0x1b
	.4byte	.LVL117
	.4byte	0x210a
	.4byte	0x151c
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5058
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL119
	.4byte	0x2138
	.4byte	0x1530
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL121
	.4byte	0x2143
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	0xe2
	.4byte	0x1551
	.uleb128 0x15
	.4byte	0xd4
	.byte	0x11
	.byte	0
	.uleb128 0x7
	.4byte	0x1541
	.uleb128 0x17
	.4byte	.LASF216
	.byte	0x1
	.byte	0xb3
	.4byte	0x141
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x163b
	.uleb128 0x18
	.4byte	.LASF169
	.byte	0x1
	.byte	0xb3
	.4byte	0xa70
	.4byte	.LLST20
	.uleb128 0x18
	.4byte	.LASF217
	.byte	0x1
	.byte	0xb3
	.4byte	0xad6
	.4byte	.LLST21
	.uleb128 0x19
	.4byte	.LASF203
	.4byte	0x163b
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5063
	.uleb128 0x1a
	.4byte	.LVL123
	.4byte	0x20ff
	.uleb128 0x1b
	.4byte	.LVL125
	.4byte	0x210a
	.4byte	0x15ed
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5063
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL127
	.4byte	0x20ff
	.uleb128 0x1d
	.4byte	.LVL129
	.4byte	0x210a
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5063
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC73
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0x1541
	.uleb128 0x17
	.4byte	.LASF218
	.byte	0x1
	.byte	0xc5
	.4byte	0x141
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1725
	.uleb128 0x18
	.4byte	.LASF169
	.byte	0x1
	.byte	0xc5
	.4byte	0xa70
	.4byte	.LLST22
	.uleb128 0x18
	.4byte	.LASF217
	.byte	0x1
	.byte	0xc5
	.4byte	0xad6
	.4byte	.LLST23
	.uleb128 0x19
	.4byte	.LASF203
	.4byte	0x1725
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5068
	.uleb128 0x1a
	.4byte	.LVL148
	.4byte	0x20ff
	.uleb128 0x1b
	.4byte	.LVL150
	.4byte	0x210a
	.4byte	0x16d7
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5068
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL152
	.4byte	0x20ff
	.uleb128 0x1d
	.4byte	.LVL154
	.4byte	0x210a
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5068
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC73
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0x123a
	.uleb128 0x17
	.4byte	.LASF219
	.byte	0x1
	.byte	0xd7
	.4byte	0x141
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x181e
	.uleb128 0x18
	.4byte	.LASF169
	.byte	0x1
	.byte	0xd7
	.4byte	0xa70
	.4byte	.LLST24
	.uleb128 0x18
	.4byte	.LASF217
	.byte	0x1
	.byte	0xd7
	.4byte	0xad6
	.4byte	.LLST25
	.uleb128 0x18
	.4byte	.LASF220
	.byte	0x1
	.byte	0xd7
	.4byte	0x9f
	.4byte	.LLST26
	.uleb128 0x19
	.4byte	.LASF203
	.4byte	0x182e
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5074
	.uleb128 0x1a
	.4byte	.LVL173
	.4byte	0x20ff
	.uleb128 0x1b
	.4byte	.LVL175
	.4byte	0x210a
	.4byte	0x17d0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5074
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL177
	.4byte	0x20ff
	.uleb128 0x1d
	.4byte	.LVL179
	.4byte	0x210a
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5074
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC73
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	0xe2
	.4byte	0x182e
	.uleb128 0x15
	.4byte	0xd4
	.byte	0x14
	.byte	0
	.uleb128 0x7
	.4byte	0x181e
	.uleb128 0x17
	.4byte	.LASF221
	.byte	0x1
	.byte	0xe7
	.4byte	0x141
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1976
	.uleb128 0x18
	.4byte	.LASF169
	.byte	0x1
	.byte	0xe7
	.4byte	0xa70
	.4byte	.LLST27
	.uleb128 0x18
	.4byte	.LASF217
	.byte	0x1
	.byte	0xe7
	.4byte	0xad6
	.4byte	.LLST28
	.uleb128 0x1e
	.4byte	.LASF220
	.byte	0x1
	.byte	0xe7
	.4byte	0x1172
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x19
	.4byte	.LASF203
	.4byte	0x1976
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5080
	.uleb128 0x1a
	.4byte	.LVL196
	.4byte	0x20ff
	.uleb128 0x1b
	.4byte	.LVL198
	.4byte	0x210a
	.4byte	0x18d7
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5080
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL200
	.4byte	0x20ff
	.uleb128 0x1b
	.4byte	.LVL202
	.4byte	0x210a
	.4byte	0x1928
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5080
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC73
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL204
	.4byte	0x20ff
	.uleb128 0x1d
	.4byte	.LVL206
	.4byte	0x210a
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5080
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC36
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0x181e
	.uleb128 0x17
	.4byte	.LASF222
	.byte	0x1
	.byte	0xfb
	.4byte	0x141
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a60
	.uleb128 0x18
	.4byte	.LASF169
	.byte	0x1
	.byte	0xfb
	.4byte	0xa70
	.4byte	.LLST29
	.uleb128 0x18
	.4byte	.LASF223
	.byte	0x1
	.byte	0xfb
	.4byte	0xaa
	.4byte	.LLST30
	.uleb128 0x19
	.4byte	.LASF203
	.4byte	0x1a70
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5085
	.uleb128 0x1a
	.4byte	.LVL222
	.4byte	0x20ff
	.uleb128 0x1b
	.4byte	.LVL224
	.4byte	0x210a
	.4byte	0x1a12
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5085
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL226
	.4byte	0x20ff
	.uleb128 0x1d
	.4byte	.LVL228
	.4byte	0x210a
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5085
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC110
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	0xe2
	.4byte	0x1a70
	.uleb128 0x15
	.4byte	0xd4
	.byte	0x15
	.byte	0
	.uleb128 0x7
	.4byte	0x1a60
	.uleb128 0x20
	.4byte	.LASF224
	.byte	0x1
	.2byte	0x103
	.4byte	0x141
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1b5b
	.uleb128 0x21
	.4byte	.LASF169
	.byte	0x1
	.2byte	0x103
	.4byte	0xa70
	.4byte	.LLST31
	.uleb128 0x22
	.4byte	.LASF223
	.byte	0x1
	.2byte	0x103
	.4byte	0x1b5b
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x19
	.4byte	.LASF203
	.4byte	0x1b61
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5090
	.uleb128 0x1a
	.4byte	.LVL233
	.4byte	0x20ff
	.uleb128 0x1b
	.4byte	.LVL235
	.4byte	0x210a
	.4byte	0x1b0d
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5090
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL237
	.4byte	0x20ff
	.uleb128 0x1d
	.4byte	.LVL239
	.4byte	0x210a
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5090
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC36
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xaa
	.uleb128 0x7
	.4byte	0x1a60
	.uleb128 0x20
	.4byte	.LASF225
	.byte	0x1
	.2byte	0x10c
	.4byte	0x141
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1bed
	.uleb128 0x21
	.4byte	.LASF169
	.byte	0x1
	.2byte	0x10c
	.4byte	0xa70
	.4byte	.LLST32
	.uleb128 0x19
	.4byte	.LASF203
	.4byte	0x1bed
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5094
	.uleb128 0x1a
	.4byte	.LVL243
	.4byte	0x20ff
	.uleb128 0x1d
	.4byte	.LVL245
	.4byte	0x210a
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5094
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0x123a
	.uleb128 0x20
	.4byte	.LASF226
	.byte	0x1
	.2byte	0x113
	.4byte	0x141
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c79
	.uleb128 0x21
	.4byte	.LASF169
	.byte	0x1
	.2byte	0x113
	.4byte	0xa70
	.4byte	.LLST33
	.uleb128 0x19
	.4byte	.LASF203
	.4byte	0x1c79
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5098
	.uleb128 0x1a
	.4byte	.LVL249
	.4byte	0x20ff
	.uleb128 0x1d
	.4byte	.LVL251
	.4byte	0x210a
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5098
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0x12fc
	.uleb128 0x17
	.4byte	.LASF227
	.byte	0x1
	.byte	0x2a
	.4byte	0x141
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1fb4
	.uleb128 0x18
	.4byte	.LASF228
	.byte	0x1
	.byte	0x2a
	.4byte	0x1fb4
	.4byte	.LLST34
	.uleb128 0x1f
	.4byte	.LASF169
	.byte	0x1
	.byte	0x2c
	.4byte	0x94
	.4byte	.LLST35
	.uleb128 0x1f
	.4byte	.LASF170
	.byte	0x1
	.byte	0x2d
	.4byte	0x94
	.4byte	.LLST36
	.uleb128 0x23
	.4byte	.LASF229
	.byte	0x1
	.byte	0x2e
	.4byte	0x6d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x23
	.4byte	.LASF202
	.byte	0x1
	.byte	0x2f
	.4byte	0x6d
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x19
	.4byte	.LASF203
	.4byte	0x1fbf
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5012
	.uleb128 0x1a
	.4byte	.LVL259
	.4byte	0x20ff
	.uleb128 0x1b
	.4byte	.LVL261
	.4byte	0x210a
	.4byte	0x1d3e
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5012
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL263
	.4byte	0x20ff
	.uleb128 0x1b
	.4byte	.LVL265
	.4byte	0x210a
	.4byte	0x1d8f
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5012
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL267
	.4byte	0x20ff
	.uleb128 0x1b
	.4byte	.LVL269
	.4byte	0x210a
	.4byte	0x1de0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5012
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC135
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL271
	.4byte	0x20ff
	.uleb128 0x1b
	.4byte	.LVL273
	.4byte	0x210a
	.4byte	0x1e31
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5012
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC137
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL275
	.4byte	0x20ff
	.uleb128 0x1b
	.4byte	.LVL277
	.4byte	0x210a
	.4byte	0x1e82
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5012
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL279
	.4byte	0x20ff
	.uleb128 0x1b
	.4byte	.LVL281
	.4byte	0x210a
	.4byte	0x1ed3
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5012
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL283
	.4byte	0x214e
	.4byte	0x1ee6
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x41
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL285
	.4byte	0x172a
	.4byte	0x1eff
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL286
	.4byte	0x172a
	.4byte	0x1f18
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL287
	.4byte	0x1640
	.4byte	0x1f31
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL288
	.4byte	0x1640
	.4byte	0x1f4a
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL289
	.4byte	0x1640
	.4byte	0x1f63
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL290
	.4byte	0x1bf2
	.4byte	0x1f77
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL292
	.4byte	0xc21
	.4byte	0x1f91
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL293
	.4byte	0xdf9
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1fba
	.uleb128 0x7
	.4byte	0xb62
	.uleb128 0x7
	.4byte	0x147f
	.uleb128 0x20
	.4byte	.LASF230
	.byte	0x1
	.2byte	0x11a
	.4byte	0x141
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x20a1
	.uleb128 0x24
	.string	"fun"
	.byte	0x1
	.2byte	0x11a
	.4byte	0xf4
	.4byte	.LLST37
	.uleb128 0x25
	.string	"arg"
	.byte	0x1
	.2byte	0x11a
	.4byte	0xcb
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x22
	.4byte	.LASF231
	.byte	0x1
	.2byte	0x11a
	.4byte	0x6d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x22
	.4byte	.LASF232
	.byte	0x1
	.2byte	0x11a
	.4byte	0x20a1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x19
	.4byte	.LASF203
	.4byte	0x20a7
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5106
	.uleb128 0x1a
	.4byte	.LVL296
	.4byte	0x20ff
	.uleb128 0x1b
	.4byte	.LVL298
	.4byte	0x210a
	.4byte	0x2078
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5106
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC36
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL300
	.4byte	0x2159
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb6d
	.uleb128 0x7
	.4byte	0x1541
	.uleb128 0x23
	.4byte	.LASF233
	.byte	0x1
	.byte	0x1c
	.4byte	0x20be
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC1
	.byte	0x9f
	.uleb128 0x7
	.4byte	0xe9
	.uleb128 0x23
	.4byte	.LASF234
	.byte	0x1
	.byte	0x23
	.4byte	0x18e
	.uleb128 0x5
	.byte	0x3
	.4byte	pcnt_spinlock
	.uleb128 0x14
	.4byte	0xc0
	.4byte	0x20e4
	.uleb128 0x15
	.4byte	0xd4
	.byte	0x27
	.byte	0
	.uleb128 0x26
	.4byte	.LASF235
	.byte	0x8
	.byte	0x7d
	.4byte	0x20ef
	.uleb128 0x7
	.4byte	0x20d4
	.uleb128 0x26
	.4byte	.LASF236
	.byte	0x9
	.byte	0xb0
	.4byte	0x9bd
	.uleb128 0x27
	.4byte	.LASF237
	.4byte	.LASF237
	.byte	0x4
	.byte	0x4c
	.uleb128 0x27
	.4byte	.LASF238
	.4byte	.LASF238
	.byte	0x4
	.byte	0x60
	.uleb128 0x28
	.4byte	.LASF239
	.4byte	.LASF239
	.byte	0x8
	.2byte	0x144
	.uleb128 0x28
	.4byte	.LASF240
	.4byte	.LASF240
	.byte	0x8
	.2byte	0x153
	.uleb128 0x27
	.4byte	.LASF241
	.4byte	.LASF241
	.byte	0xc
	.byte	0xda
	.uleb128 0x27
	.4byte	.LASF242
	.4byte	.LASF242
	.byte	0x7
	.byte	0xd9
	.uleb128 0x27
	.4byte	.LASF243
	.4byte	.LASF243
	.byte	0x7
	.byte	0xd8
	.uleb128 0x27
	.4byte	.LASF244
	.4byte	.LASF244
	.byte	0xb
	.byte	0x3f
	.uleb128 0x27
	.4byte	.LASF245
	.4byte	.LASF245
	.byte	0x6
	.byte	0x99
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
	.uleb128 0xb
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0xd
	.byte	0
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x24
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.4byte	.LVL4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL14
	.4byte	.LVL16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL29
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL17
	.4byte	.LVL23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL24
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL18
	.4byte	.LVL23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL25
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL19
	.4byte	.LVL23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL26
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL0
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL20
	.4byte	.LVL23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL27
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL0
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL28
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL30
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL32
	.4byte	.LVL34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL36
	.4byte	.LVL38
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL40
	.4byte	.LVL42
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL44
	.4byte	.LVL46
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL53
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL30
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL50
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL30
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL62
	.4byte	.LVL67
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL67
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL47
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL50
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL54
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL67
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL55
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL67
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL69
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL71
	.4byte	.LVL73
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL73
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL75
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
	.4byte	.LVL79
	.2byte	0x3
	.byte	0x72
	.sleb128 -24
	.byte	0x9f
	.4byte	.LVL79
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL80
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL82
	.4byte	.LVL84
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL84
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL86
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
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
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL94
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL96
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL98
	.4byte	.LVL100
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL100
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL102
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL103
	.4byte	.LVL104
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL104
	.4byte	.LFE17
	.2byte	0x8
	.byte	0x31
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x31
	.byte	0x24
	.byte	0x24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL106
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL108
	.4byte	.LVL110
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL110
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL112
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL114
	.4byte	.LVL116
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL116
	.4byte	.LVL118
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL118
	.4byte	.LVL120
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL120
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL122
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
	.4byte	.LVL128
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL128
	.4byte	.LVL130
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL130
	.4byte	.LVL131
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL131
	.4byte	.LVL133
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL133
	.4byte	.LVL134
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL134
	.4byte	.LVL136
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL136
	.4byte	.LVL137
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL137
	.4byte	.LVL139
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL139
	.4byte	.LVL140
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL140
	.4byte	.LVL142
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL142
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
	.4byte	.LVL146
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL146
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL122
	.4byte	.LVL132
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL132
	.4byte	.LVL133
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL133
	.4byte	.LVL135
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL135
	.4byte	.LVL136
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL136
	.4byte	.LVL138
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL138
	.4byte	.LVL139
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL139
	.4byte	.LVL141
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL141
	.4byte	.LVL142
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL142
	.4byte	.LVL144
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL144
	.4byte	.LVL145
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL145
	.4byte	.LFE20
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL147
	.4byte	.LVL149
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL149
	.4byte	.LVL151
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL151
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
	.4byte	.LVL156
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL156
	.4byte	.LVL158
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL158
	.4byte	.LVL159
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL159
	.4byte	.LVL161
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL161
	.4byte	.LVL162
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL162
	.4byte	.LVL164
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL164
	.4byte	.LVL165
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL165
	.4byte	.LVL167
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL167
	.4byte	.LVL168
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL168
	.4byte	.LVL170
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL170
	.4byte	.LVL171
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL171
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL147
	.4byte	.LVL157
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL157
	.4byte	.LVL158
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL158
	.4byte	.LVL160
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL160
	.4byte	.LVL161
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL161
	.4byte	.LVL163
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL163
	.4byte	.LVL164
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL164
	.4byte	.LVL166
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL166
	.4byte	.LVL167
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL167
	.4byte	.LVL169
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL169
	.4byte	.LVL170
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL170
	.4byte	.LFE21
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL172
	.4byte	.LVL174
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL174
	.4byte	.LVL176
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL176
	.4byte	.LVL178
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL178
	.4byte	.LVL180
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL180
	.4byte	.LVL181
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL181
	.4byte	.LVL184
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL184
	.4byte	.LVL185
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL185
	.4byte	.LVL187
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL187
	.4byte	.LVL188
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL188
	.4byte	.LVL190
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL190
	.4byte	.LVL191
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL191
	.4byte	.LVL193
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL193
	.4byte	.LVL194
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL194
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL172
	.4byte	.LVL182
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL182
	.4byte	.LVL184
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL184
	.4byte	.LVL186
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL186
	.4byte	.LVL187
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL187
	.4byte	.LVL189
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL189
	.4byte	.LVL190
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL190
	.4byte	.LVL192
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL192
	.4byte	.LVL193
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL193
	.4byte	.LFE22
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL172
	.4byte	.LVL183
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL183
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL195
	.4byte	.LVL197
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL197
	.4byte	.LVL199
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL199
	.4byte	.LVL201
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL201
	.4byte	.LVL203
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL203
	.4byte	.LVL205
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL205
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
	.4byte	.LVL210
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL210
	.4byte	.LVL211
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL211
	.4byte	.LVL213
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL213
	.4byte	.LVL214
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL214
	.4byte	.LVL216
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL216
	.4byte	.LVL217
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL217
	.4byte	.LVL219
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL219
	.4byte	.LVL220
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL220
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL195
	.4byte	.LVL209
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL209
	.4byte	.LVL210
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL210
	.4byte	.LVL212
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL212
	.4byte	.LVL213
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL213
	.4byte	.LVL215
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL215
	.4byte	.LVL216
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL216
	.4byte	.LVL218
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL218
	.4byte	.LVL219
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL219
	.4byte	.LFE23
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL221
	.4byte	.LVL223
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL223
	.4byte	.LVL225
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL225
	.4byte	.LVL227
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL227
	.4byte	.LVL229
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL229
	.4byte	.LVL230
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL230
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL221
	.4byte	.LVL231
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL231
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL232
	.4byte	.LVL234
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL234
	.4byte	.LVL236
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL236
	.4byte	.LVL238
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL238
	.4byte	.LVL240
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL240
	.4byte	.LVL241
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL241
	.4byte	.LFE25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL242
	.4byte	.LVL244
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL244
	.4byte	.LVL246
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL246
	.4byte	.LVL247
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL247
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL248
	.4byte	.LVL250
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL250
	.4byte	.LVL252
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL252
	.4byte	.LVL253
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL253
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL254
	.4byte	.LVL260
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL260
	.4byte	.LVL262
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL262
	.4byte	.LVL264
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL264
	.4byte	.LVL266
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL266
	.4byte	.LVL268
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL268
	.4byte	.LVL270
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL270
	.4byte	.LVL272
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL272
	.4byte	.LVL274
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL274
	.4byte	.LVL276
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL276
	.4byte	.LVL278
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL278
	.4byte	.LVL280
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL280
	.4byte	.LVL282
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL282
	.4byte	.LVL294
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL294
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL255
	.4byte	.LVL284
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL256
	.4byte	.LVL291
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL295
	.4byte	.LVL297
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL297
	.4byte	.LVL299
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL299
	.4byte	.LVL301
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL301
	.4byte	.LFE28
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
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
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
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF140:
	.string	"PCNT_UNIT_0"
.LASF141:
	.string	"PCNT_UNIT_1"
.LASF32:
	.string	"count"
.LASF143:
	.string	"PCNT_UNIT_3"
.LASF144:
	.string	"PCNT_UNIT_4"
.LASF145:
	.string	"PCNT_UNIT_5"
.LASF104:
	.string	"int_raw"
.LASF147:
	.string	"PCNT_UNIT_7"
.LASF154:
	.string	"PCNT_EVT_L_LIM"
.LASF193:
	.string	"PERIPH_VSPI_MODULE"
.LASF217:
	.string	"evt_type"
.LASF248:
	.string	"C:\\\\esp\\\\ArkPOS2-esp\\\\build\\\\driver"
.LASF84:
	.string	"cnt_rst_u0"
.LASF86:
	.string	"cnt_rst_u1"
.LASF88:
	.string	"cnt_rst_u2"
.LASF90:
	.string	"cnt_rst_u3"
.LASF92:
	.string	"cnt_rst_u4"
.LASF94:
	.string	"cnt_rst_u5"
.LASF96:
	.string	"cnt_rst_u6"
.LASF98:
	.string	"cnt_rst_u7"
.LASF186:
	.string	"PERIPH_PWM3_MODULE"
.LASF41:
	.string	"GPIO_PULLDOWN_ONLY"
.LASF79:
	.string	"thres0_lat"
.LASF2:
	.string	"__uint8_t"
.LASF169:
	.string	"unit"
.LASF117:
	.string	"reserved_d0"
.LASF188:
	.string	"PERIPH_UHCI1_MODULE"
.LASF213:
	.string	"reset_bit"
.LASF221:
	.string	"pcnt_get_event_value"
.LASF171:
	.string	"pcnt_config_t"
.LASF37:
	.string	"GPIO_MODE_OUTPUT_OD"
.LASF119:
	.string	"reserved_d8"
.LASF185:
	.string	"PERIPH_PWM2_MODULE"
.LASF156:
	.string	"PCNT_EVT_THRES_0"
.LASF157:
	.string	"PCNT_EVT_THRES_1"
.LASF64:
	.string	"conf1"
.LASF174:
	.string	"PERIPH_UART0_MODULE"
.LASF234:
	.string	"pcnt_spinlock"
.LASF11:
	.string	"long long unsigned int"
.LASF218:
	.string	"pcnt_event_disable"
.LASF134:
	.string	"pcnt_ctrl_mode_t"
.LASF176:
	.string	"PERIPH_UART2_MODULE"
.LASF210:
	.string	"pcnt_counter_pause"
.LASF60:
	.string	"cnt_thres1"
.LASF13:
	.string	"int16_t"
.LASF25:
	.string	"ESP_LOG_DEBUG"
.LASF10:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF230:
	.string	"pcnt_isr_register"
.LASF120:
	.string	"reserved_dc"
.LASF102:
	.string	"conf_unit"
.LASF85:
	.string	"cnt_pause_u0"
.LASF116:
	.string	"reserved_cc"
.LASF87:
	.string	"cnt_pause_u1"
.LASF89:
	.string	"cnt_pause_u2"
.LASF91:
	.string	"cnt_pause_u3"
.LASF178:
	.string	"PERIPH_I2C1_MODULE"
.LASF63:
	.string	"conf0"
.LASF146:
	.string	"PCNT_UNIT_6"
.LASF242:
	.string	"vTaskEnterCritical"
.LASF65:
	.string	"conf2"
.LASF233:
	.string	"PCNT_TAG"
.LASF121:
	.string	"reserved_e0"
.LASF243:
	.string	"vTaskExitCritical"
.LASF17:
	.string	"long int"
.LASF207:
	.string	"ctrl_sig_index"
.LASF123:
	.string	"reserved_e8"
.LASF62:
	.string	"cnt_l_lim"
.LASF238:
	.string	"esp_log_write"
.LASF212:
	.string	"pcnt_counter_clear"
.LASF247:
	.string	"C:/esp/esp-idf/components/driver/pcnt.c"
.LASF133:
	.string	"PCNT_MODE_MAX"
.LASF129:
	.string	"pcnt_dev_t"
.LASF14:
	.string	"uint16_t"
.LASF148:
	.string	"PCNT_UNIT_MAX"
.LASF118:
	.string	"reserved_d4"
.LASF199:
	.string	"pcnt_set_mode"
.LASF33:
	.string	"portMUX_TYPE"
.LASF222:
	.string	"pcnt_set_filter_value"
.LASF196:
	.string	"PERIPH_SDIO_SLAVE_MODULE"
.LASF165:
	.string	"pos_mode"
.LASF5:
	.string	"__uint16_t"
.LASF158:
	.string	"PCNT_EVT_ZERO"
.LASF8:
	.string	"__uint32_t"
.LASF138:
	.string	"PCNT_COUNT_MAX"
.LASF124:
	.string	"reserved_ec"
.LASF68:
	.string	"cnt_thr_event_u0"
.LASF69:
	.string	"cnt_thr_event_u1"
.LASF170:
	.string	"channel"
.LASF71:
	.string	"cnt_thr_event_u3"
.LASF72:
	.string	"cnt_thr_event_u4"
.LASF73:
	.string	"cnt_thr_event_u5"
.LASF74:
	.string	"cnt_thr_event_u6"
.LASF75:
	.string	"cnt_thr_event_u7"
.LASF220:
	.string	"value"
.LASF204:
	.string	"sig_base"
.LASF164:
	.string	"hctrl_mode"
.LASF142:
	.string	"PCNT_UNIT_2"
.LASF9:
	.string	"unsigned int"
.LASF126:
	.string	"reserved_f4"
.LASF240:
	.string	"gpio_set_pull_mode"
.LASF163:
	.string	"lctrl_mode"
.LASF209:
	.string	"pcnt_unit"
.LASF19:
	.string	"long unsigned int"
.LASF139:
	.string	"pcnt_count_mode_t"
.LASF81:
	.string	"h_lim_lat"
.LASF187:
	.string	"PERIPH_UHCI0_MODULE"
.LASF203:
	.string	"__FUNCTION__"
.LASF30:
	.string	"intr_handle_t"
.LASF227:
	.string	"pcnt_unit_config"
.LASF46:
	.string	"thr_zero_en"
.LASF226:
	.string	"pcnt_filter_disable"
.LASF6:
	.string	"short unsigned int"
.LASF128:
	.string	"date"
.LASF137:
	.string	"PCNT_COUNT_DEC"
.LASF38:
	.string	"GPIO_MODE_INPUT_OUTPUT_OD"
.LASF97:
	.string	"cnt_pause_u6"
.LASF216:
	.string	"pcnt_event_enable"
.LASF175:
	.string	"PERIPH_UART1_MODULE"
.LASF105:
	.string	"int_st"
.LASF198:
	.string	"PERIPH_EMAC_MODULE"
.LASF189:
	.string	"PERIPH_RMT_MODULE"
.LASF153:
	.string	"pcnt_channel_t"
.LASF51:
	.string	"ch0_neg_mode"
.LASF177:
	.string	"PERIPH_I2C0_MODULE"
.LASF55:
	.string	"ch1_neg_mode"
.LASF24:
	.string	"ESP_LOG_INFO"
.LASF103:
	.string	"cnt_unit"
.LASF78:
	.string	"thres1_lat"
.LASF155:
	.string	"PCNT_EVT_H_LIM"
.LASF18:
	.string	"sizetype"
.LASF77:
	.string	"cnt_mode"
.LASF237:
	.string	"esp_log_timestamp"
.LASF159:
	.string	"PCNT_EVT_MAX"
.LASF61:
	.string	"cnt_h_lim"
.LASF106:
	.string	"int_ena"
.LASF67:
	.string	"reserved16"
.LASF101:
	.string	"reserved17"
.LASF59:
	.string	"cnt_thres0"
.LASF229:
	.string	"input_io"
.LASF202:
	.string	"ctrl_io"
.LASF192:
	.string	"PERIPH_HSPI_MODULE"
.LASF53:
	.string	"ch0_hctrl_mode"
.LASF27:
	.string	"esp_log_level_t"
.LASF3:
	.string	"__int16_t"
.LASF54:
	.string	"ch0_lctrl_mode"
.LASF40:
	.string	"GPIO_PULLUP_ONLY"
.LASF180:
	.string	"PERIPH_I2S1_MODULE"
.LASF160:
	.string	"pcnt_evt_type_t"
.LASF26:
	.string	"ESP_LOG_VERBOSE"
.LASF182:
	.string	"PERIPH_TIMG1_MODULE"
.LASF194:
	.string	"PERIPH_SPI_DMA_MODULE"
.LASF228:
	.string	"pcnt_config"
.LASF45:
	.string	"filter_en"
.LASF173:
	.string	"PERIPH_LEDC_MODULE"
.LASF241:
	.string	"gpio_matrix_in"
.LASF150:
	.string	"PCNT_CHANNEL_0"
.LASF34:
	.string	"_Bool"
.LASF15:
	.string	"int32_t"
.LASF1:
	.string	"unsigned char"
.LASF184:
	.string	"PERIPH_PWM1_MODULE"
.LASF211:
	.string	"pcnt_counter_resume"
.LASF151:
	.string	"PCNT_CHANNEL_1"
.LASF107:
	.string	"int_clr"
.LASF152:
	.string	"PCNT_CHANNEL_MAX"
.LASF246:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF4:
	.string	"short int"
.LASF66:
	.string	"cnt_val"
.LASF136:
	.string	"PCNT_COUNT_INC"
.LASF29:
	.string	"intr_handle_data_t"
.LASF22:
	.string	"ESP_LOG_ERROR"
.LASF35:
	.string	"GPIO_MODE_INPUT"
.LASF52:
	.string	"ch0_pos_mode"
.LASF215:
	.string	"pcnt_intr_disable"
.LASF56:
	.string	"ch1_pos_mode"
.LASF132:
	.string	"PCNT_MODE_DISABLE"
.LASF206:
	.string	"input_sig_index"
.LASF58:
	.string	"ch1_lctrl_mode"
.LASF197:
	.string	"PERIPH_CAN_MODULE"
.LASF50:
	.string	"thr_thres1_en"
.LASF195:
	.string	"PERIPH_SDMMC_MODULE"
.LASF16:
	.string	"uint32_t"
.LASF223:
	.string	"filter_val"
.LASF31:
	.string	"owner"
.LASF82:
	.string	"zero_lat"
.LASF166:
	.string	"neg_mode"
.LASF125:
	.string	"reserved_f0"
.LASF149:
	.string	"pcnt_unit_t"
.LASF21:
	.string	"ESP_LOG_NONE"
.LASF20:
	.string	"char"
.LASF70:
	.string	"cnt_thr_event_u2"
.LASF205:
	.string	"ctrl_base"
.LASF172:
	.string	"pcnt_isr_handle_t"
.LASF200:
	.string	"pcnt_set_pin"
.LASF44:
	.string	"filter_thres"
.LASF127:
	.string	"reserved_f8"
.LASF224:
	.string	"pcnt_get_filter_value"
.LASF130:
	.string	"PCNT_MODE_KEEP"
.LASF168:
	.string	"counter_l_lim"
.LASF7:
	.string	"__int32_t"
.LASF161:
	.string	"pulse_gpio_num"
.LASF110:
	.string	"reserved_b4"
.LASF111:
	.string	"reserved_b8"
.LASF122:
	.string	"reserved_e4"
.LASF36:
	.string	"GPIO_MODE_OUTPUT"
.LASF109:
	.string	"ctrl"
.LASF167:
	.string	"counter_h_lim"
.LASF245:
	.string	"esp_intr_alloc"
.LASF49:
	.string	"thr_thres0_en"
.LASF83:
	.string	"reserved7"
.LASF179:
	.string	"PERIPH_I2S0_MODULE"
.LASF23:
	.string	"ESP_LOG_WARN"
.LASF39:
	.string	"GPIO_MODE_INPUT_OUTPUT"
.LASF239:
	.string	"gpio_set_direction"
.LASF219:
	.string	"pcnt_set_event_value"
.LASF28:
	.string	"esp_err_t"
.LASF181:
	.string	"PERIPH_TIMG0_MODULE"
.LASF47:
	.string	"thr_h_lim_en"
.LASF112:
	.string	"reserved_bc"
.LASF214:
	.string	"pcnt_intr_enable"
.LASF12:
	.string	"uint8_t"
.LASF131:
	.string	"PCNT_MODE_REVERSE"
.LASF57:
	.string	"ch1_hctrl_mode"
.LASF80:
	.string	"l_lim_lat"
.LASF201:
	.string	"pulse_io"
.LASF235:
	.string	"GPIO_PIN_MUX_REG"
.LASF113:
	.string	"reserved_c0"
.LASF191:
	.string	"PERIPH_SPI_MODULE"
.LASF114:
	.string	"reserved_c4"
.LASF232:
	.string	"handle"
.LASF115:
	.string	"reserved_c8"
.LASF190:
	.string	"PERIPH_PCNT_MODULE"
.LASF208:
	.string	"pcnt_get_counter_value"
.LASF183:
	.string	"PERIPH_PWM0_MODULE"
.LASF135:
	.string	"PCNT_COUNT_DIS"
.LASF231:
	.string	"intr_alloc_flags"
.LASF108:
	.string	"status_unit"
.LASF76:
	.string	"reserved8"
.LASF93:
	.string	"cnt_pause_u4"
.LASF95:
	.string	"cnt_pause_u5"
.LASF42:
	.string	"GPIO_PULLUP_PULLDOWN"
.LASF99:
	.string	"cnt_pause_u7"
.LASF100:
	.string	"clk_en"
.LASF162:
	.string	"ctrl_gpio_num"
.LASF244:
	.string	"periph_module_enable"
.LASF236:
	.string	"PCNT"
.LASF48:
	.string	"thr_l_lim_en"
.LASF43:
	.string	"GPIO_FLOATING"
.LASF225:
	.string	"pcnt_filter_enable"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-61-gab8375a) 5.2.0"
