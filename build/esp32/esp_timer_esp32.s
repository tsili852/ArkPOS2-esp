	.file	"esp_timer_esp32.c"
	.text
.Ltext0:
	.section	.iram1,"ax",@progbits
	.literal_position
	.literal .LC0, s_time_update_lock
	.literal .LC1, 1072984104
	.literal .LC2, 1072984112
	.literal .LC3, s_mask_overflow
	.literal .LC4, s_time_base_us
	.literal .LC5, s_timer_us_per_overflow
	.literal .LC6, 1072984108
	.literal .LC7, s_alarm_handler
	.align	4
	.type	timer_alarm_isr, @function
timer_alarm_isr:
.LFB12:
	.file 1 "C:/esp/esp-idf/components/esp32/esp_timer_esp32.c"
	.loc 1 194 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 195 0
	l32r	a10, .LC0
	call8	vTaskEnterCritical
.LVL1:
.LBB11:
.LBB12:
	.loc 1 122 0
	l32r	a8, .LC1
	memw
	l32i.n	a8, a8, 0
	.loc 1 123 0
	bbci	a8, 8, .L5
	l32r	a8, .LC2
	memw
	l32i.n	a8, a8, 0
	.loc 1 122 0
	bnei	a8, -1, .L6
	.loc 1 124 0
	l32r	a8, .LC3
	l8ui	a8, a8, 0
	.loc 1 123 0
	beqz.n	a8, .L7
	movi.n	a8, 0
	j	.L2
.L5:
	movi.n	a8, 0
	j	.L2
.L6:
	movi.n	a8, 0
	j	.L2
.L7:
	movi.n	a8, 1
.L2:
.LBE12:
.LBE11:
	.loc 1 197 0
	beqz.n	a8, .L3
	.loc 1 198 0
	l32r	a8, .LC4
	l32r	a9, .LC5
	l32i.n	a9, a9, 0
	l32i.n	a11, a8, 0
	l32i.n	a10, a8, 4
	add.n	a9, a11, a9
	movi.n	a12, 1
	bltu	a9, a11, .L4
	movi.n	a12, 0
.L4:
	add.n	a10, a12, a10
	s32i.n	a9, a8, 0
	s32i.n	a10, a8, 4
.L3:
	.loc 1 200 0
	movi.n	a9, 0
	l32r	a8, .LC3
	s8i	a9, a8, 0
	.loc 1 202 0
	movi.n	a9, 1
	l32r	a8, .LC6
	memw
	s32i.n	a9, a8, 0
	.loc 1 205 0
	movi.n	a9, -1
	l32r	a8, .LC2
	memw
	s32i.n	a9, a8, 0
	.loc 1 206 0
	l32r	a10, .LC0
	call8	vTaskExitCritical
.LVL2:
	.loc 1 208 0
	l32r	a8, .LC7
	l32i.n	a8, a8, 0
	mov.n	a10, a2
	callx8	a8
.LVL3:
	retw.n
.LFE12:
	.size	timer_alarm_isr, .-timer_alarm_isr
	.literal_position
	.literal .LC9, 1072984100
	.literal .LC10, s_time_base_us
	.literal .LC11, 1072984104
	.literal .LC12, 1072984112
	.literal .LC13, s_mask_overflow
	.literal .LC14, s_timer_ticks_per_us
	.literal .LC15, s_timer_us_per_overflow
	.align	4
	.global	esp_timer_impl_get_time
	.type	esp_timer_impl_get_time, @function
esp_timer_impl_get_time:
.LFB10:
	.loc 1 128 0
	entry	sp, 32
.LCFI1:
.L10:
	.loc 1 137 0
	l32r	a8, .LC9
	memw
	l32i.n	a11, a8, 0
.LVL4:
	.loc 1 138 0
	l32r	a8, .LC10
	l32i.n	a12, a8, 0
	l32i.n	a13, a8, 4
.LVL5:
.LBB13:
.LBB14:
	.loc 1 122 0
	l32r	a8, .LC11
	memw
	l32i.n	a8, a8, 0
	.loc 1 123 0
	bbci	a8, 8, .L16
	l32r	a2, .LC12
	memw
	l32i.n	a2, a2, 0
	.loc 1 122 0
	bnei	a2, -1, .L17
	.loc 1 124 0
	l32r	a2, .LC13
	l8ui	a2, a2, 0
	.loc 1 123 0
	beqz.n	a2, .L18
	movi.n	a9, 0
	j	.L9
.L16:
	movi.n	a9, 0
	j	.L9
.L17:
	movi.n	a9, 0
	j	.L9
.L18:
	movi.n	a9, 1
.L9:
	.loc 1 122 0
	mov.n	a10, a9
.LBE14:
.LBE13:
	.loc 1 140 0
	l32r	a9, .LC14
	l32i.n	a8, a9, 0
.LVL6:
	.loc 1 141 0
	l32r	a9, .LC15
	l32i.n	a2, a9, 0
.LVL7:
	.loc 1 144 0
	l32r	a9, .LC9
	memw
	l32i.n	a9, a9, 0
	bgeu	a11, a9, .L10
	.loc 1 145 0 discriminator 1
	l32r	a9, .LC10
	memw
	l32i.n	a14, a9, 0
	memw
	l32i.n	a15, a9, 4
	.loc 1 144 0 discriminator 1
	bne	a12, a14, .L10
	bne	a13, a15, .L10
	.loc 1 146 0
	l32r	a9, .LC14
	memw
	l32i.n	a9, a9, 0
	.loc 1 145 0
	bne	a8, a9, .L10
.LBB15:
.LBB16:
	.loc 1 122 0
	l32r	a9, .LC11
	memw
	l32i.n	a9, a9, 0
	.loc 1 123 0
	bbci	a9, 8, .L19
	l32r	a9, .LC12
	memw
	l32i.n	a9, a9, 0
	.loc 1 122 0
	bnei	a9, -1, .L20
	.loc 1 124 0
	l32r	a9, .LC13
	l8ui	a9, a9, 0
	.loc 1 123 0
	beqz.n	a9, .L21
	movi.n	a9, 0
	j	.L12
.L19:
	movi.n	a9, 0
	j	.L12
.L20:
	movi.n	a9, 0
	j	.L12
.L21:
	movi.n	a9, 1
.L12:
.LBE16:
.LBE15:
	.loc 1 146 0
	bne	a10, a9, .L10
	.loc 1 155 0
	bnez.n	a10, .L22
	mov.n	a14, a10
	j	.L13
.L22:
	mov.n	a10, a2
	movi.n	a14, 0
.L13:
	.loc 1 155 0 is_stmt 0 discriminator 4
	add.n	a12, a10, a12
.LVL8:
	movi.n	a9, 1
	bltu	a12, a10, .L14
	movi.n	a9, 0
.L14:
	add.n	a13, a14, a13
.LVL9:
	add.n	a3, a9, a13
	.loc 1 156 0 is_stmt 1 discriminator 4
	quou	a8, a11, a8
.LVL10:
	.loc 1 154 0 discriminator 4
	add.n	a2, a12, a8
.LVL11:
	movi.n	a10, 1
	bltu	a2, a12, .L15
	movi.n	a10, 0
.L15:
.LVL12:
	.loc 1 158 0 discriminator 4
	add.n	a3, a10, a3
.LVL13:
	retw.n
.LFE10:
	.size	esp_timer_impl_get_time, .-esp_timer_impl_get_time
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC23:
	.string	"time_after_timebase_us > s_timer_us_per_overflow"
	.align	4
.LC26:
	.string	"C:/esp/esp-idf/components/esp32/esp_timer_esp32.c"
	.section	.iram1
	.literal_position
	.literal .LC16, -1, 0
	.literal .LC17, s_time_update_lock
	.literal .LC18, s_time_base_us
	.literal .LC19, 1072984104
	.literal .LC20, 1072984112
	.literal .LC21, s_mask_overflow
	.literal .LC22, s_timer_us_per_overflow
	.literal .LC24, .LC23
	.literal .LC25, __func__$5106
	.literal .LC27, .LC26
	.literal .LC28, s_timer_ticks_per_us
	.literal .LC29, 1072984100
	.align	4
	.global	esp_timer_impl_set_alarm
	.type	esp_timer_impl_set_alarm, @function
esp_timer_impl_set_alarm:
.LFB11:
	.loc 1 161 0
.LVL14:
	entry	sp, 32
.LCFI2:
	.loc 1 162 0
	l32r	a10, .LC17
	call8	vTaskEnterCritical
.LVL15:
	.loc 1 164 0
	l32r	a9, .LC18
	l32i.n	a8, a9, 0
	l32i.n	a10, a9, 4
	sub	a8, a2, a8
	movi.n	a9, 1
	bltu	a2, a8, .L24
	movi.n	a9, 0
.L24:
	sub	a3, a3, a10
	sub	a3, a3, a9
	mov.n	a11, a8
	mov.n	a9, a3
.LVL16:
.LBB17:
.LBB18:
	.loc 1 122 0
	l32r	a2, .LC19
.LVL17:
	memw
	l32i.n	a2, a2, 0
	.loc 1 123 0
	bbci	a2, 8, .L36
.LVL18:
	l32r	a2, .LC20
	memw
	l32i.n	a2, a2, 0
	.loc 1 122 0
	bnei	a2, -1, .L37
	.loc 1 124 0
	l32r	a2, .LC21
	l8ui	a2, a2, 0
	.loc 1 123 0
	beqz.n	a2, .L38
	movi.n	a2, 0
	j	.L25
.L36:
	movi.n	a2, 0
	j	.L25
.L37:
	movi.n	a2, 0
	j	.L25
.L38:
	movi.n	a2, 1
.L25:
.LBE18:
.LBE17:
	.loc 1 167 0
	beqz.n	a2, .L26
	.loc 1 168 0
	l32r	a2, .LC22
	l32i.n	a2, a2, 0
	bnez.n	a9, .L27
	bnez.n	a9, .L41
	bltu	a2, a11, .L27
.L41:
	.loc 1 168 0 is_stmt 0 discriminator 1
	l32r	a13, .LC24
	l32r	a12, .LC25
	movi	a11, 0xa8
	l32r	a10, .LC27
	call8	__assert_func
.LVL19:
.L27:
	.loc 1 169 0 is_stmt 1
	sub	a8, a8, a2
.LVL20:
	movi.n	a9, 1
	bltu	a11, a8, .L29
	movi.n	a9, 0
.L29:
	mov.n	a11, a8
.LVL21:
	sub	a9, a3, a9
.LVL22:
.L26:
	.loc 1 172 0
	l32r	a2, .LC28
	l32i.n	a3, a2, 0
	mull	a10, a9, a3
	muluh	a9, a11, a3
.LVL23:
	mull	a8, a11, a3
	add.n	a9, a10, a9
.LVL24:
	.loc 1 175 0
	bnez.n	a9, .L39
	bnez.n	a9, .L42
	movi.n	a2, -2
	bltu	a2, a8, .L39
.L42:
.LBB19:
	.loc 1 176 0
	l32r	a2, .LC29
	memw
	l32i.n	a11, a2, 0
.LVL25:
	.loc 1 181 0
	add.n	a11, a3, a11
.LVL26:
	movi.n	a10, 1
	bltu	a11, a3, .L32
	movi.n	a10, 0
.L32:
	mov.n	a3, a10
.LVL27:
	bltu	a9, a10, .L43
	bne	a10, a9, .L30
	bgeu	a8, a11, .L30
.L43:
.LVL28:
	.loc 1 183 0
	bnez.n	a3, .L40
	.loc 1 182 0
	mov.n	a8, a11
	j	.L30
.L40:
	.loc 1 184 0
	l32r	a8, .LC16
.LVL29:
	j	.L30
.LVL30:
.L39:
.LBE19:
	.loc 1 173 0
	movi.n	a8, -1
.LVL31:
.L30:
	.loc 1 189 0
	l32r	a2, .LC20
	memw
	s32i.n	a8, a2, 0
	.loc 1 190 0
	l32r	a10, .LC17
	call8	vTaskExitCritical
.LVL32:
	retw.n
.LFE11:
	.size	esp_timer_impl_set_alarm, .-esp_timer_impl_set_alarm
	.section	.rodata.str1.4
	.align	4
.LC35:
	.string	"esp_timer_impl"
	.align	4
.LC37:
	.string	"\033[0;31mE (%d) %s: esp_intr_alloc failed (0x%0x)\033[0m\n"
	.align	4
.LC41:
	.string	"s_timer_ticks_per_us > 0 && apb_freq % TIMER_DIV == 0 && \"APB frequency does not result in a valid ticks_per_us value\""
	.align	4
.LC52:
	.string	"esp_intr_enable(s_timer_interrupt_handle)"
	.section	.text.esp_timer_impl_init,"ax",@progbits
	.literal_position
	.literal .LC31, s_alarm_handler
	.literal .LC32, s_timer_interrupt_handle
	.literal .LC33, timer_alarm_isr
	.literal .LC34, 3072
	.literal .LC36, .LC35
	.literal .LC38, .LC37
	.literal .LC39, 1125899907
	.literal .LC40, s_timer_ticks_per_us
	.literal .LC42, .LC41
	.literal .LC43, __func__$5119
	.literal .LC44, .LC26
	.literal .LC45, s_timer_us_per_overflow
	.literal .LC46, s_time_base_us
	.literal .LC47, 0, 0
	.literal .LC48, 1072984112
	.literal .LC49, 1072984096
	.literal .LC50, 1072984104
	.literal .LC51, 1072984108
	.literal .LC53, .LC52
	.align	4
	.global	esp_timer_impl_init
	.type	esp_timer_impl_init, @function
esp_timer_impl_init:
.LFB13:
	.loc 1 213 0
.LVL33:
	entry	sp, 32
.LCFI3:
	.loc 1 214 0
	l32r	a8, .LC31
	s32i.n	a2, a8, 0
	.loc 1 216 0
	l32r	a14, .LC32
	movi.n	a13, 0
	l32r	a12, .LC33
	l32r	a11, .LC34
	movi.n	a10, 0x39
	call8	esp_intr_alloc
.LVL34:
	mov.n	a2, a10
.LVL35:
	.loc 1 220 0
	beqz.n	a10, .L45
	.loc 1 221 0 discriminator 1
	call8	esp_log_timestamp
.LVL36:
	mov.n	a13, a2
	l32r	a12, .LC36
	mov.n	a11, a10
	l32r	a10, .LC38
	call8	ets_printf
.LVL37:
	.loc 1 222 0 discriminator 1
	retw.n
.L45:
	.loc 1 225 0
	call8	rtc_clk_apb_freq_get
.LVL38:
	.loc 1 226 0
	l32r	a8, .LC39
	muluh	a10, a10, a8
.LVL39:
	extui	a10, a10, 18, 14
	l32r	a2, .LC40
.LVL40:
	s32i.n	a10, a2, 0
	.loc 1 227 0
	bnez.n	a10, .L47
	.loc 1 227 0 is_stmt 0 discriminator 1
	l32r	a13, .LC42
	l32r	a12, .LC43
	movi	a11, 0xe5
	l32r	a10, .LC44
	call8	__assert_func
.LVL41:
.L47:
	.loc 1 230 0 is_stmt 1
	movi.n	a2, -1
	quou	a10, a2, a10
	l32r	a8, .LC45
	s32i.n	a10, a8, 0
	.loc 1 231 0
	l32r	a10, .LC47
	l32r	a11, .LC47+4
	l32r	a8, .LC46
	s32i.n	a10, a8, 0
	s32i.n	a11, a8, 4
	.loc 1 233 0
	l32r	a8, .LC48
	memw
	s32i.n	a2, a8, 0
	.loc 1 234 0
	movi.n	a8, 0
	l32r	a2, .LC49
	memw
	s32i.n	a8, a2, 0
	.loc 1 235 0
	movi	a8, 0x81
	l32r	a2, .LC50
	memw
	s32i.n	a8, a2, 0
	.loc 1 237 0
	movi.n	a8, 1
	l32r	a2, .LC51
	memw
	s32i.n	a8, a2, 0
.LBB20:
	.loc 1 238 0
	l32r	a2, .LC32
	l32i.n	a10, a2, 0
	call8	esp_intr_enable
.LVL42:
	beqz.n	a10, .L48
	.loc 1 238 0 is_stmt 0 discriminator 1
	l32r	a14, .LC53
	l32r	a13, .LC43
	movi	a12, 0xee
	l32r	a11, .LC44
	call8	_esp_error_check_failed
.LVL43:
.L48:
.LBE20:
	.loc 1 240 0 is_stmt 1
	movi.n	a2, 0
	.loc 1 241 0
	retw.n
.LFE13:
	.size	esp_timer_impl_init, .-esp_timer_impl_init
	.section	.text.esp_timer_impl_deinit,"ax",@progbits
	.literal_position
	.literal .LC54, s_timer_interrupt_handle
	.literal .LC55, 1072984104
	.literal .LC56, 1072984112
	.literal .LC57, 1072984096
	.align	4
	.global	esp_timer_impl_deinit
	.type	esp_timer_impl_deinit, @function
esp_timer_impl_deinit:
.LFB14:
	.loc 1 244 0
	entry	sp, 32
.LCFI4:
	.loc 1 245 0
	l32r	a3, .LC54
	l32i.n	a10, a3, 0
	call8	esp_intr_disable
.LVL44:
	.loc 1 247 0
	movi.n	a2, 0
	l32r	a8, .LC55
	memw
	s32i.n	a2, a8, 0
	.loc 1 248 0
	l32r	a8, .LC56
	memw
	s32i.n	a2, a8, 0
	.loc 1 249 0
	l32r	a8, .LC57
	memw
	s32i.n	a2, a8, 0
	.loc 1 251 0
	l32i.n	a10, a3, 0
	call8	esp_intr_free
.LVL45:
	.loc 1 252 0
	s32i.n	a2, a3, 0
	retw.n
.LFE14:
	.size	esp_timer_impl_deinit, .-esp_timer_impl_deinit
	.section	.text.esp_timer_impl_get_min_period_us,"ax",@progbits
	.literal_position
	.literal .LC58, 50, 0
	.align	4
	.global	esp_timer_impl_get_min_period_us
	.type	esp_timer_impl_get_min_period_us, @function
esp_timer_impl_get_min_period_us:
.LFB15:
	.loc 1 259 0
	entry	sp, 32
.LCFI5:
	.loc 1 261 0
	l32r	a2, .LC58
	l32r	a3, .LC58+4
	retw.n
.LFE15:
	.size	esp_timer_impl_get_min_period_us, .-esp_timer_impl_get_min_period_us
	.section	.rodata.__func__$5119,"a",@progbits
	.align	4
	.type	__func__$5119, @object
	.size	__func__$5119, 20
__func__$5119:
	.string	"esp_timer_impl_init"
	.section	.rodata.__func__$5106,"a",@progbits
	.align	4
	.type	__func__$5106, @object
	.size	__func__$5106, 25
__func__$5106:
	.string	"esp_timer_impl_set_alarm"
	.global	s_time_update_lock
	.section	.data.s_time_update_lock,"aw",@progbits
	.align	4
	.type	s_time_update_lock, @object
	.size	s_time_update_lock, 8
s_time_update_lock:
	.word	-1287651329
	.word	0
	.section	.bss.s_mask_overflow,"aw",@nobits
	.type	s_mask_overflow, @object
	.size	s_mask_overflow, 1
s_mask_overflow:
	.zero	1
	.section	.bss.s_timer_us_per_overflow,"aw",@nobits
	.align	4
	.type	s_timer_us_per_overflow, @object
	.size	s_timer_us_per_overflow, 4
s_timer_us_per_overflow:
	.zero	4
	.section	.bss.s_timer_ticks_per_us,"aw",@nobits
	.align	4
	.type	s_timer_ticks_per_us, @object
	.size	s_timer_ticks_per_us, 4
s_timer_ticks_per_us:
	.zero	4
	.section	.bss.s_time_base_us,"aw",@nobits
	.align	8
	.type	s_time_base_us, @object
	.size	s_time_base_us, 8
s_time_base_us:
	.zero	8
	.section	.bss.s_alarm_handler,"aw",@nobits
	.align	4
	.type	s_alarm_handler, @object
	.size	s_alarm_handler, 4
s_alarm_handler:
	.zero	4
	.section	.bss.s_timer_interrupt_handle,"aw",@nobits
	.align	4
	.type	s_timer_interrupt_handle, @object
	.size	s_timer_interrupt_handle, 4
s_timer_interrupt_handle:
	.zero	4
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
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI1-.LFB10
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
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI3-.LFB13
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI4-.LFB14
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI5-.LFB15
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
	.text
.Letext0:
	.file 2 "C:/esp/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "C:/esp/esp-idf/components/newlib/include/stdint.h"
	.file 4 "C:/esp/esp-idf/components/esp32/include/esp_err.h"
	.file 5 "C:/esp/esp-idf/components/esp32/include/esp_intr_alloc.h"
	.file 6 "C:/esp/esp-idf/components/log/include/esp_log.h"
	.file 7 "C:/esp/esp-idf/components/freertos/include/freertos/portmacro.h"
	.file 8 "C:/esp/esp-idf/components/newlib/include/assert.h"
	.file 9 "C:/esp/esp-idf/components/esp32/include/rom/ets_sys.h"
	.file 10 "C:/esp/esp-idf/components/soc/esp32/include/soc/rtc.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x620
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF66
	.byte	0xc
	.4byte	.LASF67
	.4byte	.LASF68
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x19
	.4byte	0x53
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x1a
	.4byte	0x65
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
	.byte	0x2
	.byte	0x1e
	.4byte	0x25
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x3
	.byte	0x2c
	.4byte	0x48
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x3
	.byte	0x2d
	.4byte	0x5a
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x39
	.4byte	0x73
	.uleb128 0x5
	.byte	0x4
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
	.uleb128 0x6
	.byte	0x4
	.4byte	0xc3
	.uleb128 0x7
	.4byte	0xb6
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x4
	.byte	0x18
	.4byte	0x7e
	.uleb128 0x6
	.byte	0x4
	.4byte	0xd9
	.uleb128 0x8
	.4byte	0xe4
	.uleb128 0x9
	.4byte	0x9f
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF18
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x5
	.byte	0x53
	.4byte	0xd3
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x5
	.byte	0x56
	.4byte	0x101
	.uleb128 0xa
	.4byte	.LASF20
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x5
	.byte	0x57
	.4byte	0x111
	.uleb128 0x6
	.byte	0x4
	.4byte	0xf6
	.uleb128 0xb
	.byte	0x4
	.4byte	0x65
	.byte	0x6
	.byte	0x1f
	.4byte	0x148
	.uleb128 0xc
	.4byte	.LASF22
	.byte	0
	.uleb128 0xc
	.4byte	.LASF23
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF24
	.byte	0x2
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x3
	.uleb128 0xc
	.4byte	.LASF26
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF27
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x6
	.byte	0x26
	.4byte	0x117
	.uleb128 0xd
	.byte	0x8
	.byte	0x7
	.byte	0x81
	.4byte	0x174
	.uleb128 0xe
	.4byte	.LASF29
	.byte	0x7
	.byte	0x82
	.4byte	0x89
	.byte	0
	.uleb128 0xe
	.4byte	.LASF30
	.byte	0x7
	.byte	0x83
	.4byte	0x89
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF31
	.byte	0x7
	.byte	0x88
	.4byte	0x153
	.uleb128 0x7
	.4byte	0xbd
	.uleb128 0xf
	.4byte	.LASF69
	.byte	0x1
	.byte	0x78
	.4byte	0xe4
	.byte	0x3
	.uleb128 0x10
	.4byte	.LASF70
	.byte	0x1
	.byte	0xc1
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1fc
	.uleb128 0x11
	.string	"arg"
	.byte	0x1
	.byte	0xc1
	.4byte	0x9f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x12
	.4byte	0x184
	.4byte	.LBB11
	.4byte	.LBE11-.LBB11
	.byte	0x1
	.byte	0xc5
	.uleb128 0x13
	.4byte	.LVL1
	.4byte	0x5a8
	.4byte	0x1d8
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_time_update_lock
	.byte	0
	.uleb128 0x13
	.4byte	.LVL2
	.4byte	0x5b3
	.4byte	0x1ef
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_time_update_lock
	.byte	0
	.uleb128 0x15
	.4byte	.LVL3
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF38
	.byte	0x1
	.byte	0x7f
	.4byte	0x94
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x280
	.uleb128 0x17
	.4byte	.LASF32
	.byte	0x1
	.byte	0x81
	.4byte	0x89
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x18
	.4byte	.LASF33
	.byte	0x1
	.byte	0x82
	.4byte	0x94
	.4byte	.LLST0
	.uleb128 0x18
	.4byte	.LASF34
	.byte	0x1
	.byte	0x83
	.4byte	0x89
	.4byte	.LLST1
	.uleb128 0x19
	.4byte	.LASF35
	.byte	0x1
	.byte	0x84
	.4byte	0xe4
	.uleb128 0x19
	.4byte	.LASF36
	.byte	0x1
	.byte	0x85
	.4byte	0x94
	.uleb128 0x19
	.4byte	.LASF37
	.byte	0x1
	.byte	0x9a
	.4byte	0x94
	.uleb128 0x12
	.4byte	0x184
	.4byte	.LBB13
	.4byte	.LBE13-.LBB13
	.byte	0x1
	.byte	0x8b
	.uleb128 0x12
	.4byte	0x184
	.4byte	.LBB15
	.4byte	.LBE15-.LBB15
	.byte	0x1
	.byte	0x93
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF39
	.byte	0x1
	.byte	0xa0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x37c
	.uleb128 0x1b
	.4byte	.LASF40
	.byte	0x1
	.byte	0xa0
	.4byte	0x94
	.4byte	.LLST2
	.uleb128 0x18
	.4byte	.LASF41
	.byte	0x1
	.byte	0xa4
	.4byte	0x94
	.4byte	.LLST3
	.uleb128 0x19
	.4byte	.LASF35
	.byte	0x1
	.byte	0xa6
	.4byte	0xe4
	.uleb128 0x1c
	.4byte	.LASF42
	.4byte	0x38c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5106
	.uleb128 0x18
	.4byte	.LASF43
	.byte	0x1
	.byte	0xac
	.4byte	0x94
	.4byte	.LLST4
	.uleb128 0x18
	.4byte	.LASF44
	.byte	0x1
	.byte	0xad
	.4byte	0x89
	.4byte	.LLST5
	.uleb128 0x12
	.4byte	0x184
	.4byte	.LBB17
	.4byte	.LBE17-.LBB17
	.byte	0x1
	.byte	0xa6
	.uleb128 0x1d
	.4byte	.LBB19
	.4byte	.LBE19-.LBB19
	.4byte	0x322
	.uleb128 0x19
	.4byte	.LASF45
	.byte	0x1
	.byte	0xb0
	.4byte	0x94
	.uleb128 0x18
	.4byte	.LASF46
	.byte	0x1
	.byte	0xb4
	.4byte	0x89
	.4byte	.LLST6
	.byte	0
	.uleb128 0x13
	.4byte	.LVL15
	.4byte	0x5a8
	.4byte	0x339
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_time_update_lock
	.byte	0
	.uleb128 0x13
	.4byte	.LVL19
	.4byte	0x5be
	.4byte	0x368
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC26
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xa8
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5106
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL32
	.4byte	0x5b3
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_time_update_lock
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	0xb6
	.4byte	0x38c
	.uleb128 0x20
	.4byte	0xa8
	.byte	0x18
	.byte	0
	.uleb128 0x7
	.4byte	0x37c
	.uleb128 0x21
	.4byte	.LASF71
	.byte	0x1
	.byte	0xd4
	.4byte	0xc8
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4cc
	.uleb128 0x1b
	.4byte	.LASF47
	.byte	0x1
	.byte	0xd4
	.4byte	0xeb
	.4byte	.LLST7
	.uleb128 0x22
	.string	"err"
	.byte	0x1
	.byte	0xd8
	.4byte	0xc8
	.4byte	.LLST8
	.uleb128 0x18
	.4byte	.LASF48
	.byte	0x1
	.byte	0xe1
	.4byte	0x89
	.4byte	.LLST9
	.uleb128 0x1c
	.4byte	.LASF42
	.4byte	0x4dc
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5119
	.uleb128 0x1d
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.4byte	0x436
	.uleb128 0x22
	.string	"rc"
	.byte	0x1
	.byte	0xee
	.4byte	0xc8
	.4byte	.LLST10
	.uleb128 0x23
	.4byte	.LVL42
	.4byte	0x5c9
	.uleb128 0x1e
	.4byte	.LVL43
	.4byte	0x5d5
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC26
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0xee
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5119
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC52
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL34
	.4byte	0x5e0
	.4byte	0x468
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x39
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0xc00
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	timer_alarm_isr
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	s_timer_interrupt_handle
	.byte	0
	.uleb128 0x23
	.4byte	.LVL36
	.4byte	0x5eb
	.uleb128 0x13
	.4byte	.LVL37
	.4byte	0x5f6
	.4byte	0x497
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC37
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC35
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL38
	.4byte	0x601
	.uleb128 0x1e
	.4byte	.LVL41
	.4byte	0x5be
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC26
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xe5
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5119
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC41
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	0xb6
	.4byte	0x4dc
	.uleb128 0x20
	.4byte	0xa8
	.byte	0x13
	.byte	0
	.uleb128 0x7
	.4byte	0x4cc
	.uleb128 0x24
	.4byte	.LASF72
	.byte	0x1
	.byte	0xf3
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x509
	.uleb128 0x23
	.4byte	.LVL44
	.4byte	0x60d
	.uleb128 0x23
	.4byte	.LVL45
	.4byte	0x618
	.byte	0
	.uleb128 0x25
	.4byte	.LASF73
	.byte	0x1
	.2byte	0x102
	.4byte	0x94
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x26
	.string	"TAG"
	.byte	0x1
	.byte	0x53
	.4byte	0x17f
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC35
	.byte	0x9f
	.uleb128 0x17
	.4byte	.LASF49
	.byte	0x1
	.byte	0x56
	.4byte	0x106
	.uleb128 0x5
	.byte	0x3
	.4byte	s_timer_interrupt_handle
	.uleb128 0x17
	.4byte	.LASF50
	.byte	0x1
	.byte	0x5a
	.4byte	0xeb
	.uleb128 0x5
	.byte	0x3
	.4byte	s_alarm_handler
	.uleb128 0x17
	.4byte	.LASF51
	.byte	0x1
	.byte	0x5f
	.4byte	0x94
	.uleb128 0x5
	.byte	0x3
	.4byte	s_time_base_us
	.uleb128 0x17
	.4byte	.LASF52
	.byte	0x1
	.byte	0x62
	.4byte	0x89
	.uleb128 0x5
	.byte	0x3
	.4byte	s_timer_ticks_per_us
	.uleb128 0x17
	.4byte	.LASF53
	.byte	0x1
	.byte	0x66
	.4byte	0x89
	.uleb128 0x5
	.byte	0x3
	.4byte	s_timer_us_per_overflow
	.uleb128 0x17
	.4byte	.LASF54
	.byte	0x1
	.byte	0x71
	.4byte	0xe4
	.uleb128 0x5
	.byte	0x3
	.4byte	s_mask_overflow
	.uleb128 0x27
	.4byte	.LASF74
	.byte	0x1
	.byte	0x75
	.4byte	0x174
	.uleb128 0x5
	.byte	0x3
	.4byte	s_time_update_lock
	.uleb128 0x28
	.4byte	.LASF55
	.4byte	.LASF55
	.byte	0x7
	.byte	0xd9
	.uleb128 0x28
	.4byte	.LASF56
	.4byte	.LASF56
	.byte	0x7
	.byte	0xd8
	.uleb128 0x28
	.4byte	.LASF57
	.4byte	.LASF57
	.byte	0x8
	.byte	0x29
	.uleb128 0x29
	.4byte	.LASF58
	.4byte	.LASF58
	.byte	0x5
	.2byte	0x105
	.uleb128 0x28
	.4byte	.LASF59
	.4byte	.LASF59
	.byte	0x4
	.byte	0x2d
	.uleb128 0x28
	.4byte	.LASF60
	.4byte	.LASF60
	.byte	0x5
	.byte	0x99
	.uleb128 0x28
	.4byte	.LASF61
	.4byte	.LASF61
	.byte	0x6
	.byte	0x4c
	.uleb128 0x28
	.4byte	.LASF62
	.4byte	.LASF62
	.byte	0x9
	.byte	0xde
	.uleb128 0x29
	.4byte	.LASF63
	.4byte	.LASF63
	.byte	0xa
	.2byte	0x13d
	.uleb128 0x28
	.4byte	.LASF64
	.4byte	.LASF64
	.byte	0x5
	.byte	0xf8
	.uleb128 0x28
	.4byte	.LASF65
	.4byte	.LASF65
	.byte	0x5
	.byte	0xd3
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
	.uleb128 0xc
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x1d
	.byte	0
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x17
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.4byte	.LVL5
	.4byte	.LVL8
	.2byte	0x6
	.byte	0x5c
	.byte	0x93
	.uleb128 0x4
	.byte	0x5d
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0xa
	.byte	0x3
	.4byte	s_time_base_us
	.byte	0x93
	.uleb128 0x4
	.byte	0x5d
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL9
	.4byte	.LFE10
	.2byte	0xe
	.byte	0x3
	.4byte	s_time_base_us
	.byte	0x93
	.uleb128 0x4
	.byte	0x3
	.4byte	s_time_base_us+4
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL6
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL10
	.4byte	.LFE10
	.2byte	0x5
	.byte	0x3
	.4byte	s_timer_ticks_per_us
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL14
	.4byte	.LVL17
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL17
	.4byte	.LFE11
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL16
	.4byte	.LVL18
	.2byte	0x6
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL18
	.4byte	.LVL19-1
	.2byte	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x6
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x6
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.byte	0x59
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL24
	.4byte	.LVL28
	.2byte	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x59
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x59
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL24
	.4byte	.LVL29
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL32-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL25
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL27
	.4byte	.LVL30
	.2byte	0x5
	.byte	0x3
	.4byte	s_timer_ticks_per_us
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL33
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL35
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL35
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL42
	.4byte	.LVL43-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL43
	.4byte	.LFE13
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
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF19:
	.string	"intr_handler_t"
.LASF65:
	.string	"esp_intr_free"
.LASF37:
	.string	"result"
.LASF40:
	.string	"timestamp"
.LASF70:
	.string	"timer_alarm_isr"
.LASF27:
	.string	"ESP_LOG_VERBOSE"
.LASF12:
	.string	"uint64_t"
.LASF51:
	.string	"s_time_base_us"
.LASF55:
	.string	"vTaskEnterCritical"
.LASF14:
	.string	"sizetype"
.LASF43:
	.string	"compare_val"
.LASF72:
	.string	"esp_timer_impl_deinit"
.LASF52:
	.string	"s_timer_ticks_per_us"
.LASF6:
	.string	"__uint32_t"
.LASF73:
	.string	"esp_timer_impl_get_min_period_us"
.LASF25:
	.string	"ESP_LOG_INFO"
.LASF3:
	.string	"short int"
.LASF21:
	.string	"intr_handle_t"
.LASF31:
	.string	"portMUX_TYPE"
.LASF58:
	.string	"esp_intr_enable"
.LASF11:
	.string	"uint32_t"
.LASF20:
	.string	"intr_handle_data_t"
.LASF8:
	.string	"long long int"
.LASF68:
	.string	"C:\\\\esp\\\\ArkPOS2-esp\\\\build\\\\esp32"
.LASF53:
	.string	"s_timer_us_per_overflow"
.LASF47:
	.string	"alarm_handler"
.LASF13:
	.string	"long int"
.LASF46:
	.string	"offset"
.LASF39:
	.string	"esp_timer_impl_set_alarm"
.LASF33:
	.string	"time_base"
.LASF54:
	.string	"s_mask_overflow"
.LASF56:
	.string	"vTaskExitCritical"
.LASF41:
	.string	"time_after_timebase_us"
.LASF2:
	.string	"unsigned char"
.LASF42:
	.string	"__func__"
.LASF29:
	.string	"owner"
.LASF1:
	.string	"signed char"
.LASF0:
	.string	"long long unsigned int"
.LASF59:
	.string	"_esp_error_check_failed"
.LASF7:
	.string	"unsigned int"
.LASF48:
	.string	"apb_freq"
.LASF32:
	.string	"timer_val"
.LASF62:
	.string	"ets_printf"
.LASF4:
	.string	"short unsigned int"
.LASF16:
	.string	"char"
.LASF26:
	.string	"ESP_LOG_DEBUG"
.LASF10:
	.string	"int32_t"
.LASF22:
	.string	"ESP_LOG_NONE"
.LASF34:
	.string	"ticks_per_us"
.LASF35:
	.string	"overflow"
.LASF49:
	.string	"s_timer_interrupt_handle"
.LASF18:
	.string	"_Bool"
.LASF71:
	.string	"esp_timer_impl_init"
.LASF28:
	.string	"esp_log_level_t"
.LASF9:
	.string	"__uint64_t"
.LASF24:
	.string	"ESP_LOG_WARN"
.LASF63:
	.string	"rtc_clk_apb_freq_get"
.LASF15:
	.string	"long unsigned int"
.LASF64:
	.string	"esp_intr_disable"
.LASF44:
	.string	"alarm_reg_val"
.LASF38:
	.string	"esp_timer_impl_get_time"
.LASF67:
	.string	"C:/esp/esp-idf/components/esp32/esp_timer_esp32.c"
.LASF30:
	.string	"count"
.LASF5:
	.string	"__int32_t"
.LASF45:
	.string	"cur_count"
.LASF61:
	.string	"esp_log_timestamp"
.LASF74:
	.string	"s_time_update_lock"
.LASF57:
	.string	"__assert_func"
.LASF60:
	.string	"esp_intr_alloc"
.LASF66:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF69:
	.string	"timer_overflow_happened"
.LASF23:
	.string	"ESP_LOG_ERROR"
.LASF17:
	.string	"esp_err_t"
.LASF36:
	.string	"us_per_overflow"
.LASF50:
	.string	"s_alarm_handler"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-61-gab8375a) 5.2.0"
