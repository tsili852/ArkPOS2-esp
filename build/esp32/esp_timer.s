	.file	"esp_timer.c"
	.text
.Ltext0:
	.section	.text.timer_armed,"ax",@progbits
	.align	4
	.type	timer_armed, @function
timer_armed:
.LFB20:
	.file 1 "C:/esp/esp-idf/components/esp32/esp_timer.c"
	.loc 1 233 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 234 0
	l32i.n	a8, a2, 0
	l32i.n	a2, a2, 4
.LVL1:
	or	a8, a8, a2
	movi.n	a2, 0
	movi.n	a9, 1
	movnez	a2, a9, a8
	.loc 1 235 0
	retw.n
.LFE20:
	.size	timer_armed, .-timer_armed
	.section	.text.is_initialized,"ax",@progbits
	.literal_position
	.literal .LC0, s_timer_task
	.align	4
	.type	is_initialized, @function
is_initialized:
.LFB26:
	.loc 1 309 0
	entry	sp, 32
.LCFI1:
	.loc 1 310 0
	l32r	a2, .LC0
	l32i.n	a8, a2, 0
	movi.n	a2, 0
	movi.n	a9, 1
	movnez	a2, a9, a8
	.loc 1 311 0
	retw.n
.LFE26:
	.size	is_initialized, .-is_initialized
	.section	.text.timer_list_lock,"ax",@progbits
	.literal_position
	.literal .LC1, s_timer_lock
	.align	4
	.type	timer_list_lock, @function
timer_list_lock:
.LFB21:
	.loc 1 238 0
	entry	sp, 32
.LCFI2:
	.loc 1 239 0
	l32r	a10, .LC1
	call8	vTaskEnterCritical
.LVL2:
	retw.n
.LFE21:
	.size	timer_list_lock, .-timer_list_lock
	.section	.text.timer_list_unlock,"ax",@progbits
	.literal_position
	.literal .LC2, s_timer_lock
	.align	4
	.type	timer_list_unlock, @function
timer_list_unlock:
.LFB22:
	.loc 1 243 0
	entry	sp, 32
.LCFI3:
	.loc 1 244 0
	l32r	a10, .LC2
	call8	vTaskExitCritical
.LVL3:
	retw.n
.LFE22:
	.size	timer_list_unlock, .-timer_list_unlock
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC4:
	.string	"last"
	.align	4
.LC7:
	.string	"C:/esp/esp-idf/components/esp32/esp_timer.c"
	.section	.text.timer_insert,"ax",@progbits
	.literal_position
	.literal .LC3, s_timers
	.literal .LC5, .LC4
	.literal .LC6, __func__$5115
	.literal .LC8, .LC7
	.align	4
	.type	timer_insert, @function
timer_insert:
.LFB18:
	.loc 1 162 0
.LVL4:
	entry	sp, 32
.LCFI4:
	.loc 1 163 0
	call8	timer_list_lock
.LVL5:
	.loc 1 168 0
	l32r	a8, .LC3
	l32i.n	a8, a8, 0
	bnez.n	a8, .L16
	.loc 1 169 0
	s32i.n	a8, a2, 24
	beqz.n	a8, .L7
	.loc 1 169 0 discriminator 1
	addi	a9, a2, 24
	s32i.n	a9, a8, 28
.L7:
	.loc 1 169 0 is_stmt 0 discriminator 3
	l32r	a8, .LC3
	s32i.n	a2, a8, 0
	s32i.n	a8, a2, 28
	j	.L8
.LVL6:
.L12:
	.loc 1 172 0 is_stmt 1
	l32i.n	a13, a2, 0
	l32i.n	a9, a2, 4
	l32i.n	a12, a8, 0
	l32i.n	a10, a8, 4
	bltu	a9, a10, .L17
	bne	a10, a9, .L9
	bgeu	a13, a12, .L9
.L17:
	.loc 1 173 0
	l32i.n	a9, a8, 28
	s32i.n	a9, a2, 28
	s32i.n	a8, a2, 24
	l32i.n	a9, a8, 28
	s32i.n	a2, a9, 0
	addi	a9, a2, 24
	s32i.n	a9, a8, 28
	.loc 1 174 0
	j	.L11
.L9:
.LVL7:
	.loc 1 176 0 discriminator 2
	mov.n	a11, a8
	.loc 1 171 0 discriminator 2
	l32i.n	a8, a8, 24
.LVL8:
	j	.L6
.LVL9:
.L16:
	movi.n	a11, 0
.LVL10:
.L6:
	.loc 1 171 0 is_stmt 0 discriminator 1
	bnez.n	a8, .L12
.L11:
	.loc 1 178 0 is_stmt 1
	bnez.n	a8, .L8
	.loc 1 179 0
	bnez.n	a11, .L13
	.loc 1 179 0 is_stmt 0 discriminator 1
	l32r	a13, .LC5
	l32r	a12, .LC6
	movi	a11, 0xb3
.LVL11:
	l32r	a10, .LC8
	call8	__assert_func
.LVL12:
.L13:
	.loc 1 180 0 is_stmt 1
	l32i.n	a8, a11, 24
.LVL13:
	s32i.n	a8, a2, 24
	beqz.n	a8, .L14
	.loc 1 180 0 discriminator 1
	l32i.n	a8, a11, 24
	addi	a9, a2, 24
	s32i.n	a9, a8, 28
.L14:
	.loc 1 180 0 is_stmt 0 discriminator 3
	s32i.n	a2, a11, 24
	addi	a11, a11, 24
.LVL14:
	s32i.n	a11, a2, 28
.LVL15:
.L8:
	.loc 1 183 0 is_stmt 1
	l32r	a8, .LC3
	l32i.n	a8, a8, 0
	bne	a2, a8, .L15
	.loc 1 184 0
	l32i.n	a10, a2, 0
	l32i.n	a11, a2, 4
	call8	esp_timer_impl_set_alarm
.LVL16:
.L15:
	.loc 1 186 0
	call8	timer_list_unlock
.LVL17:
	.loc 1 188 0
	movi.n	a2, 0
.LVL18:
	retw.n
.LFE18:
	.size	timer_insert, .-timer_insert
	.section	.text.timer_remove,"ax",@progbits
	.literal_position
	.literal .LC9, 0, 0
	.align	4
	.type	timer_remove, @function
timer_remove:
.LFB19:
	.loc 1 191 0
.LVL19:
	entry	sp, 32
.LCFI5:
	.loc 1 192 0
	call8	timer_list_lock
.LVL20:
	.loc 1 193 0
	l32i.n	a8, a2, 24
	beqz.n	a8, .L19
	.loc 1 193 0 discriminator 1
	l32i.n	a9, a2, 28
	s32i.n	a9, a8, 28
.L19:
	.loc 1 193 0 is_stmt 0 discriminator 3
	l32i.n	a8, a2, 28
	l32i.n	a9, a2, 24
	s32i.n	a9, a8, 0
	.loc 1 194 0 is_stmt 1 discriminator 3
	l32r	a8, .LC9
	l32r	a9, .LC9+4
	s32i.n	a8, a2, 0
	s32i.n	a9, a2, 4
	.loc 1 195 0 discriminator 3
	s32i.n	a8, a2, 8
	s32i.n	a9, a2, 12
	.loc 1 199 0 discriminator 3
	call8	timer_list_unlock
.LVL21:
	.loc 1 201 0 discriminator 3
	movi.n	a2, 0
.LVL22:
	retw.n
.LFE19:
	.size	timer_remove, .-timer_remove
	.section	.iram1,"ax",@progbits
	.literal_position
	.literal .LC10, s_timer_semaphore
	.align	4
	.type	timer_alarm_handler, @function
timer_alarm_handler:
.LFB25:
	.loc 1 297 0
.LVL23:
	entry	sp, 48
.LCFI6:
	.loc 1 299 0
	mov.n	a11, sp
	l32r	a8, .LC10
	l32i.n	a10, a8, 0
	call8	xQueueGiveFromISR
.LVL24:
	bnei	a10, 1, .L20
	.loc 1 303 0
	l32i.n	a8, sp, 0
	bnei	a8, 1, .L20
	.loc 1 304 0
	call8	_frxt_setup_switch
.LVL25:
.L20:
	retw.n
.LFE25:
	.size	timer_alarm_handler, .-timer_alarm_handler
	.section	.text.timer_process_alarm,"ax",@progbits
	.literal_position
	.literal .LC11, s_timers
	.literal .LC12, 0, 0
	.align	4
	.type	timer_process_alarm, @function
timer_process_alarm:
.LFB23:
	.loc 1 248 0
.LVL26:
	entry	sp, 32
.LCFI7:
	.loc 1 252 0
	call8	timer_list_lock
.LVL27:
	.loc 1 253 0
	call8	esp_timer_impl_get_time
.LVL28:
	.loc 1 254 0
	l32r	a2, .LC11
.LVL29:
	l32i.n	a2, a2, 0
.LVL30:
	.loc 1 255 0
	j	.L25
.L32:
	.loc 1 257 0
	l32i.n	a8, a2, 24
	beqz.n	a8, .L26
	.loc 1 257 0 discriminator 1
	l32i.n	a9, a2, 28
	s32i.n	a9, a8, 28
.L26:
	.loc 1 257 0 is_stmt 0 discriminator 3
	l32i.n	a8, a2, 28
	l32i.n	a9, a2, 24
	s32i.n	a9, a8, 0
	.loc 1 258 0 is_stmt 1 discriminator 3
	l32i.n	a8, a2, 8
	l32i.n	a9, a2, 12
	or	a10, a8, a9
.LVL31:
	beqz.n	a10, .L27
	.loc 1 259 0 discriminator 3
	l32i.n	a11, a2, 0
	l32i.n	a12, a2, 4
	add.n	a8, a11, a8
	movi.n	a10, 1
	bltu	a8, a11, .L29
	.loc 1 259 0 is_stmt 0
	movi.n	a10, 0
.L29:
	add.n	a9, a12, a9
	add.n	a10, a10, a9
	s32i.n	a8, a2, 0
	s32i.n	a10, a2, 4
	.loc 1 260 0 is_stmt 1
	mov.n	a10, a2
	call8	timer_insert
.LVL32:
	j	.L30
.L27:
	.loc 1 262 0
	l32r	a8, .LC12
	l32r	a9, .LC12+4
	s32i.n	a8, a2, 0
	s32i.n	a9, a2, 4
.L30:
	.loc 1 270 0
	call8	timer_list_unlock
.LVL33:
	.loc 1 271 0
	l32i.n	a8, a2, 16
	l32i.n	a10, a2, 20
	callx8	a8
.LVL34:
	.loc 1 272 0
	call8	timer_list_lock
.LVL35:
	.loc 1 273 0
	call8	esp_timer_impl_get_time
.LVL36:
	.loc 1 278 0
	l32r	a2, .LC11
.LVL37:
	l32i.n	a2, a2, 0
.LVL38:
.L25:
	.loc 1 255 0
	beqz.n	a2, .L31
	.loc 1 256 0 discriminator 1
	l32i.n	a9, a2, 0
	l32i.n	a8, a2, 4
	.loc 1 255 0 discriminator 1
	bltu	a8, a11, .L32
	bne	a11, a8, .L31
	bltu	a9, a10, .L32
.L31:
	.loc 1 280 0
	l32r	a2, .LC11
.LVL39:
	l32i.n	a2, a2, 0
.LVL40:
	.loc 1 281 0
	beqz.n	a2, .L34
	.loc 1 282 0
	l32i.n	a10, a2, 0
.LVL41:
	l32i.n	a11, a2, 4
	call8	esp_timer_impl_set_alarm
.LVL42:
.L34:
	.loc 1 284 0
	call8	timer_list_unlock
.LVL43:
	retw.n
.LFE23:
	.size	timer_process_alarm, .-timer_process_alarm
	.section	.rodata.str1.4
	.align	4
.LC14:
	.string	"res == pdTRUE"
	.section	.text.timer_task,"ax",@progbits
	.literal_position
	.literal .LC13, s_timer_semaphore
	.literal .LC15, .LC14
	.literal .LC16, __func__$5139
	.literal .LC17, .LC7
	.align	4
	.type	timer_task, @function
timer_task:
.LFB24:
	.loc 1 288 0
.LVL44:
	entry	sp, 32
.LCFI8:
.L37:
.LBB2:
	.loc 1 290 0
	movi.n	a13, 0
	movi.n	a12, -1
	mov.n	a11, a13
	l32r	a8, .LC13
	l32i.n	a10, a8, 0
	call8	xQueueGenericReceive
.LVL45:
	.loc 1 291 0
	beqi	a10, 1, .L36
	.loc 1 291 0 is_stmt 0 discriminator 1
	l32r	a13, .LC15
	l32r	a12, .LC16
	movi	a11, 0x123
	l32r	a10, .LC17
.LVL46:
	call8	__assert_func
.LVL47:
.L36:
	.loc 1 292 0 is_stmt 1
	movi.n	a10, 0
.LVL48:
	call8	timer_process_alarm
.LVL49:
.LBE2:
	.loc 1 293 0
	j	.L37
.LFE24:
	.size	timer_task, .-timer_task
	.section	.rodata.str1.4
	.align	4
.LC18:
	.string	"timer@%p  %12lld  %12lld\n"
	.section	.text.print_timer_info,"ax",@progbits
	.literal_position
	.literal .LC19, .LC18
	.align	4
	.type	print_timer_info, @function
print_timer_info:
.LFB29:
	.loc 1 375 0
.LVL50:
	entry	sp, 48
.LCFI9:
	mov.n	a13, a2
	.loc 1 376 0
	l32i.n	a14, a2, 8
	l32i.n	a15, a2, 12
	l32i.n	a8, a2, 0
	l32i.n	a9, a2, 4
	s32i.n	a8, sp, 0
	s32i.n	a9, sp, 4
	l32r	a12, .LC19
	l32i.n	a11, a4, 0
	l32i.n	a10, a3, 0
	call8	snprintf
.LVL51:
	.loc 1 387 0
	l32i.n	a8, a3, 0
	add.n	a8, a8, a10
	s32i.n	a8, a3, 0
	.loc 1 388 0
	l32i.n	a3, a4, 0
.LVL52:
	sub	a10, a3, a10
.LVL53:
	s32i.n	a10, a4, 0
	retw.n
.LFE29:
	.size	print_timer_info, .-print_timer_info
	.section	.text.esp_timer_create,"ax",@progbits
	.align	4
	.global	esp_timer_create
	.type	esp_timer_create, @function
esp_timer_create:
.LFB13:
	.loc 1 90 0
.LVL54:
	entry	sp, 32
.LCFI10:
	.loc 1 91 0
	call8	is_initialized
.LVL55:
	beqz.n	a10, .L41
	.loc 1 94 0
	l32i.n	a4, a2, 0
	beqz.n	a4, .L42
	.loc 1 97 0
	movi.n	a11, 0x20
	movi.n	a10, 1
	call8	calloc
.LVL56:
	.loc 1 98 0
	beqz.n	a10, .L43
	.loc 1 101 0
	s32i.n	a4, a10, 16
	.loc 1 102 0
	l32i.n	a2, a2, 4
.LVL57:
	s32i.n	a2, a10, 20
	.loc 1 107 0
	s32i.n	a10, a3, 0
	.loc 1 108 0
	movi.n	a2, 0
	retw.n
.LVL58:
.L41:
	.loc 1 92 0
	movi	a2, 0x103
.LVL59:
	retw.n
.LVL60:
.L42:
	.loc 1 95 0
	movi	a2, 0x102
.LVL61:
	retw.n
.LVL62:
.L43:
	.loc 1 99 0
	movi	a2, 0x101
.LVL63:
	.loc 1 109 0
	retw.n
.LFE13:
	.size	esp_timer_create, .-esp_timer_create
	.section	.text.esp_timer_stop,"ax",@progbits
	.align	4
	.global	esp_timer_stop
	.type	esp_timer_stop, @function
esp_timer_stop:
.LFB16:
	.loc 1 139 0
.LVL64:
	entry	sp, 32
.LCFI11:
	.loc 1 140 0
	call8	is_initialized
.LVL65:
	beqz.n	a10, .L46
	.loc 1 140 0 is_stmt 0 discriminator 1
	mov.n	a10, a2
	call8	timer_armed
.LVL66:
	beqz.n	a10, .L47
	.loc 1 143 0 is_stmt 1
	mov.n	a10, a2
	call8	timer_remove
.LVL67:
	mov.n	a2, a10
.LVL68:
	retw.n
.LVL69:
.L46:
	.loc 1 141 0
	movi	a2, 0x103
.LVL70:
	retw.n
.LVL71:
.L47:
	movi	a2, 0x103
.LVL72:
	.loc 1 144 0
	retw.n
.LFE16:
	.size	esp_timer_stop, .-esp_timer_stop
	.section	.text.esp_timer_delete,"ax",@progbits
	.align	4
	.global	esp_timer_delete
	.type	esp_timer_delete, @function
esp_timer_delete:
.LFB17:
	.loc 1 147 0
.LVL73:
	entry	sp, 32
.LCFI12:
	.loc 1 148 0
	mov.n	a10, a2
	call8	timer_armed
.LVL74:
	bnez.n	a10, .L50
	.loc 1 154 0
	beqz.n	a2, .L51
	.loc 1 157 0
	mov.n	a10, a2
	call8	free
.LVL75:
	.loc 1 158 0
	movi.n	a2, 0
.LVL76:
	retw.n
.LVL77:
.L50:
	.loc 1 149 0
	movi	a2, 0x103
.LVL78:
	retw.n
.LVL79:
.L51:
	.loc 1 155 0
	movi	a2, 0x102
.LVL80:
	.loc 1 159 0
	retw.n
.LFE17:
	.size	esp_timer_delete, .-esp_timer_delete
	.section	.rodata.str1.4
	.align	4
.LC23:
	.string	"esp_timer"
	.section	.text.esp_timer_init,"ax",@progbits
	.literal_position
	.literal .LC20, s_timer_semaphore
	.literal .LC21, s_timer_task
	.literal .LC22, 4096
	.literal .LC24, .LC23
	.literal .LC25, timer_task
	.literal .LC26, timer_alarm_handler
	.align	4
	.global	esp_timer_init
	.type	esp_timer_init, @function
esp_timer_init:
.LFB27:
	.loc 1 315 0
	entry	sp, 48
.LCFI13:
	.loc 1 316 0
	call8	is_initialized
.LVL81:
	bnez.n	a10, .L55
	.loc 1 320 0
	movi.n	a11, 0
	movi.n	a10, 0x10
	call8	xQueueCreateCountingSemaphore
.LVL82:
	l32r	a2, .LC20
	s32i.n	a10, a2, 0
	.loc 1 321 0
	beqz.n	a10, .L56
	.loc 1 325 0
	movi.n	a13, 0
	s32i.n	a13, sp, 0
	l32r	a15, .LC21
	movi.n	a14, 0x16
	l32r	a12, .LC22
	l32r	a11, .LC24
	l32r	a10, .LC25
	call8	xTaskCreatePinnedToCore
.LVL83:
	.loc 1 327 0
	beqi	a10, 1, .L54
	.loc 1 328 0
	l32r	a2, .LC20
	l32i.n	a10, a2, 0
.LVL84:
	call8	vQueueDelete
.LVL85:
	.loc 1 329 0
	movi.n	a8, 0
	s32i.n	a8, a2, 0
	.loc 1 330 0
	movi	a2, 0x101
	retw.n
.LVL86:
.L54:
	.loc 1 333 0
	l32r	a10, .LC26
.LVL87:
	call8	esp_timer_impl_init
.LVL88:
	mov.n	a2, a10
.LVL89:
	.loc 1 334 0
	beqz.n	a10, .L57
	.loc 1 335 0
	l32r	a3, .LC21
	l32i.n	a10, a3, 0
	call8	vTaskDelete
.LVL90:
	.loc 1 336 0
	movi.n	a4, 0
	s32i.n	a4, a3, 0
	.loc 1 337 0
	l32r	a3, .LC20
	l32i.n	a10, a3, 0
	call8	vQueueDelete
.LVL91:
	.loc 1 338 0
	s32i.n	a4, a3, 0
	.loc 1 339 0
	retw.n
.LVL92:
.L55:
	.loc 1 317 0
	movi	a2, 0x103
	retw.n
.L56:
	.loc 1 322 0
	movi	a2, 0x101
	retw.n
.LVL93:
.L57:
	.loc 1 342 0
	movi.n	a2, 0
.LVL94:
	.loc 1 343 0
	retw.n
.LFE27:
	.size	esp_timer_init, .-esp_timer_init
	.section	.text.esp_timer_deinit,"ax",@progbits
	.literal_position
	.literal .LC27, s_timers
	.literal .LC28, s_timer_task
	.literal .LC29, s_timer_semaphore
	.align	4
	.global	esp_timer_deinit
	.type	esp_timer_deinit, @function
esp_timer_deinit:
.LFB28:
	.loc 1 346 0
	entry	sp, 32
.LCFI14:
	.loc 1 347 0
	call8	is_initialized
.LVL95:
	beqz.n	a10, .L60
	.loc 1 352 0
	l32r	a2, .LC27
	l32i.n	a2, a2, 0
	bnez.n	a2, .L61
	.loc 1 365 0
	call8	esp_timer_impl_deinit
.LVL96:
	.loc 1 367 0
	l32r	a3, .LC28
	l32i.n	a10, a3, 0
	call8	vTaskDelete
.LVL97:
	.loc 1 368 0
	s32i.n	a2, a3, 0
	.loc 1 369 0
	l32r	a3, .LC29
	l32i.n	a10, a3, 0
	call8	vQueueDelete
.LVL98:
	.loc 1 370 0
	s32i.n	a2, a3, 0
	.loc 1 371 0
	retw.n
.L60:
	.loc 1 348 0
	movi	a2, 0x103
	retw.n
.L61:
	.loc 1 353 0
	movi	a2, 0x103
	.loc 1 372 0
	retw.n
.LFE28:
	.size	esp_timer_deinit, .-esp_timer_deinit
	.section	.text.esp_timer_dump,"ax",@progbits
	.literal_position
	.literal .LC30, s_timers
	.align	4
	.global	esp_timer_dump
	.type	esp_timer_dump, @function
esp_timer_dump:
.LFB30:
	.loc 1 393 0
.LVL99:
	entry	sp, 48
.LCFI15:
.LVL100:
	.loc 1 404 0
	call8	timer_list_lock
.LVL101:
	.loc 1 405 0
	l32r	a3, .LC30
	l32i.n	a8, a3, 0
.LVL102:
	.loc 1 403 0
	movi.n	a3, 0
	.loc 1 405 0
	j	.L63
.LVL103:
.L64:
	.loc 1 406 0 discriminator 3
	addi.n	a3, a3, 1
.LVL104:
	.loc 1 405 0 discriminator 3
	l32i.n	a8, a8, 24
.LVL105:
.L63:
	.loc 1 405 0 is_stmt 0 discriminator 1
	bnez.n	a8, .L64
	.loc 1 413 0 is_stmt 1
	call8	timer_list_unlock
.LVL106:
	.loc 1 420 0
	addx2	a8, a3, a3
	subx8	a3, a8, a3
.LVL107:
	slli	a11, a3, 1
	movi	a3, 0x8a
	add.n	a11, a11, a3
	s32i.n	a11, sp, 0
	.loc 1 421 0
	addi.n	a11, a11, 1
	movi.n	a10, 1
	call8	calloc
.LVL108:
	mov.n	a4, a10
.LVL109:
	.loc 1 422 0
	beqz.n	a10, .L68
	.loc 1 427 0
	call8	timer_list_lock
.LVL110:
	.loc 1 428 0
	s32i.n	a4, sp, 4
	.loc 1 429 0
	l32r	a3, .LC30
	l32i.n	a3, a3, 0
.LVL111:
	j	.L66
.L67:
	.loc 1 430 0 discriminator 3
	mov.n	a12, sp
	addi.n	a11, sp, 4
	mov.n	a10, a3
	call8	print_timer_info
.LVL112:
	.loc 1 429 0 discriminator 3
	l32i.n	a3, a3, 24
.LVL113:
.L66:
	.loc 1 429 0 is_stmt 0 discriminator 1
	bnez.n	a3, .L67
	.loc 1 437 0 is_stmt 1
	call8	timer_list_unlock
.LVL114:
	.loc 1 440 0
	mov.n	a11, a2
	mov.n	a10, a4
	call8	fputs
.LVL115:
	.loc 1 442 0
	mov.n	a10, a4
	call8	free
.LVL116:
	.loc 1 443 0
	movi.n	a2, 0
.LVL117:
	retw.n
.LVL118:
.L68:
	.loc 1 423 0
	movi	a2, 0x101
.LVL119:
	.loc 1 444 0
	retw.n
.LFE30:
	.size	esp_timer_dump, .-esp_timer_dump
	.section	.iram1
	.align	4
	.global	esp_timer_get_time
	.type	esp_timer_get_time, @function
esp_timer_get_time:
.LFB31:
	.loc 1 447 0
	entry	sp, 32
.LCFI16:
	.loc 1 448 0
	call8	esp_timer_impl_get_time
.LVL120:
	.loc 1 449 0
	mov.n	a2, a10
	mov.n	a3, a11
	retw.n
.LFE31:
	.size	esp_timer_get_time, .-esp_timer_get_time
	.section	.text.esp_timer_start_once,"ax",@progbits
	.literal_position
	.literal .LC31, 0, 0
	.align	4
	.global	esp_timer_start_once
	.type	esp_timer_start_once, @function
esp_timer_start_once:
.LFB14:
	.loc 1 112 0
.LVL121:
	entry	sp, 32
.LCFI17:
	.loc 1 113 0
	call8	is_initialized
.LVL122:
	beqz.n	a10, .L73
	.loc 1 113 0 is_stmt 0 discriminator 1
	mov.n	a10, a2
	call8	timer_armed
.LVL123:
	bnez.n	a10, .L74
	.loc 1 116 0 is_stmt 1
	call8	esp_timer_get_time
.LVL124:
	add.n	a4, a10, a4
.LVL125:
	movi.n	a8, 1
	bltu	a4, a10, .L72
	movi.n	a8, 0
.L72:
	add.n	a5, a11, a5
	add.n	a8, a8, a5
	s32i.n	a4, a2, 0
	s32i.n	a8, a2, 4
	.loc 1 117 0
	l32r	a4, .LC31
	l32r	a5, .LC31+4
	s32i.n	a4, a2, 8
	s32i.n	a5, a2, 12
	.loc 1 121 0
	mov.n	a10, a2
	call8	timer_insert
.LVL126:
	mov.n	a2, a10
.LVL127:
	retw.n
.LVL128:
.L73:
	.loc 1 114 0
	movi	a2, 0x103
.LVL129:
	retw.n
.LVL130:
.L74:
	movi	a2, 0x103
.LVL131:
	.loc 1 122 0
	retw.n
.LFE14:
	.size	esp_timer_start_once, .-esp_timer_start_once
	.section	.text.esp_timer_start_periodic,"ax",@progbits
	.align	4
	.global	esp_timer_start_periodic
	.type	esp_timer_start_periodic, @function
esp_timer_start_periodic:
.LFB15:
	.loc 1 125 0
.LVL132:
	entry	sp, 32
.LCFI18:
	.loc 1 126 0
	call8	is_initialized
.LVL133:
	beqz.n	a10, .L80
	.loc 1 126 0 is_stmt 0 discriminator 1
	mov.n	a10, a2
	call8	timer_armed
.LVL134:
	bnez.n	a10, .L81
	.loc 1 129 0 is_stmt 1
	call8	esp_timer_impl_get_min_period_us
.LVL135:
	bltu	a11, a5, .L77
	bne	a5, a11, .L82
	bltu	a10, a4, .L77
.L82:
	.loc 1 129 0 is_stmt 0 discriminator 1
	call8	esp_timer_impl_get_min_period_us
.LVL136:
	mov.n	a4, a10
.LVL137:
	mov.n	a5, a11
.L77:
.LVL138:
	.loc 1 130 0 is_stmt 1 discriminator 4
	call8	esp_timer_get_time
.LVL139:
	add.n	a9, a10, a4
	movi.n	a8, 1
	bltu	a9, a10, .L79
	movi.n	a8, 0
.L79:
	add.n	a11, a11, a5
	add.n	a8, a8, a11
	s32i.n	a9, a2, 0
	s32i.n	a8, a2, 4
	.loc 1 131 0 discriminator 4
	s32i.n	a4, a2, 8
	s32i.n	a5, a2, 12
	.loc 1 135 0 discriminator 4
	mov.n	a10, a2
	call8	timer_insert
.LVL140:
	mov.n	a2, a10
.LVL141:
	retw.n
.LVL142:
.L80:
	.loc 1 127 0
	movi	a2, 0x103
.LVL143:
	retw.n
.LVL144:
.L81:
	movi	a2, 0x103
.LVL145:
	.loc 1 136 0
	retw.n
.LFE15:
	.size	esp_timer_start_periodic, .-esp_timer_start_periodic
	.section	.rodata.__func__$5139,"a",@progbits
	.align	4
	.type	__func__$5139, @object
	.size	__func__$5139, 11
__func__$5139:
	.string	"timer_task"
	.section	.rodata.__func__$5115,"a",@progbits
	.align	4
	.type	__func__$5115, @object
	.size	__func__$5115, 13
__func__$5115:
	.string	"timer_insert"
	.section	.data.s_timer_lock,"aw",@progbits
	.align	4
	.type	s_timer_lock, @object
	.size	s_timer_lock, 8
s_timer_lock:
	.word	-1287651329
	.word	0
	.section	.bss.s_timer_semaphore,"aw",@nobits
	.align	4
	.type	s_timer_semaphore, @object
	.size	s_timer_semaphore, 4
s_timer_semaphore:
	.zero	4
	.section	.bss.s_timer_task,"aw",@nobits
	.align	4
	.type	s_timer_task, @object
	.size	s_timer_task, 4
s_timer_task:
	.zero	4
	.section	.bss.s_timers,"aw",@nobits
	.align	4
	.type	s_timers, @object
	.size	s_timers, 4
s_timers:
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
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI0-.LFB20
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
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI4-.LFB18
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI5-.LFB19
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI6-.LFB25
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI7-.LFB23
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI8-.LFB24
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
	.uleb128 0x30
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI10-.LFB13
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI11-.LFB16
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI12-.LFB17
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI13-.LFB27
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI14-.LFB28
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI15-.LFB30
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI16-.LFB31
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI17-.LFB14
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI18-.LFB15
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE36:
	.text
.Letext0:
	.file 2 "C:/esp/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 4 "C:/esp/esp-idf/components/newlib/include/stdint.h"
	.file 5 "C:/esp/esp-idf/components/newlib/include/sys/lock.h"
	.file 6 "C:/esp/esp-idf/components/newlib/include/sys/_types.h"
	.file 7 "C:/esp/esp-idf/components/newlib/include/sys/reent.h"
	.file 8 "C:/esp/esp-idf/components/newlib/include/stdio.h"
	.file 9 "C:/esp/esp-idf/components/esp32/include/esp_err.h"
	.file 10 "C:/esp/esp-idf/components/esp32/esp_timer.h"
	.file 11 "C:/esp/esp-idf/components/log/include/esp_log.h"
	.file 12 "C:/esp/esp-idf/components/freertos/include/freertos/portmacro.h"
	.file 13 "C:/esp/esp-idf/components/freertos/include/freertos/task.h"
	.file 14 "C:/esp/esp-idf/components/freertos/include/freertos/queue.h"
	.file 15 "C:/esp/esp-idf/components/freertos/include/freertos/semphr.h"
	.file 16 "C:/esp/esp-idf/components/newlib/include/assert.h"
	.file 17 "C:/esp/esp-idf/components/esp32/esp_timer_impl.h"
	.file 18 "C:/esp/esp-idf/components/newlib/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x132f
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF214
	.byte	0xc
	.4byte	.LASF215
	.4byte	.LASF216
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
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x2
	.byte	0x1d
	.4byte	0x77
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x2
	.byte	0x1e
	.4byte	0x25
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x3
	.byte	0xd8
	.4byte	0x65
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x4
	.byte	0x2c
	.4byte	0x48
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x4
	.byte	0x2d
	.4byte	0x5a
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x4
	.byte	0x38
	.4byte	0x6c
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0x39
	.4byte	0x7e
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x5
	.byte	0xb
	.4byte	0x53
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x5
	.byte	0xc
	.4byte	0xc2
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x6
	.byte	0x10
	.4byte	0xe3
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF19
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x6
	.byte	0x27
	.4byte	0xe3
	.uleb128 0x6
	.4byte	.LASF21
	.byte	0x3
	.2byte	0x165
	.4byte	0x65
	.uleb128 0x7
	.byte	0x4
	.byte	0x6
	.byte	0x4a
	.4byte	0x120
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x6
	.byte	0x4c
	.4byte	0xf5
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x6
	.byte	0x4d
	.4byte	0x120
	.byte	0
	.uleb128 0x9
	.4byte	0x33
	.4byte	0x130
	.uleb128 0xa
	.4byte	0x130
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF24
	.uleb128 0xb
	.byte	0x8
	.byte	0x6
	.byte	0x47
	.4byte	0x158
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x6
	.byte	0x49
	.4byte	0x53
	.byte	0
	.uleb128 0xc
	.4byte	.LASF26
	.byte	0x6
	.byte	0x4e
	.4byte	0x101
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x6
	.byte	0x4f
	.4byte	0x137
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x6
	.byte	0x53
	.4byte	0xcd
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0x7
	.byte	0x16
	.4byte	0x179
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF30
	.uleb128 0xd
	.4byte	.LASF35
	.byte	0x18
	.byte	0x7
	.byte	0x2d
	.4byte	0x1d3
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x7
	.byte	0x2f
	.4byte	0x1d3
	.byte	0
	.uleb128 0xe
	.string	"_k"
	.byte	0x7
	.byte	0x30
	.4byte	0x53
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF32
	.byte	0x7
	.byte	0x30
	.4byte	0x53
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF33
	.byte	0x7
	.byte	0x30
	.4byte	0x53
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF34
	.byte	0x7
	.byte	0x30
	.4byte	0x53
	.byte	0x10
	.uleb128 0xe
	.string	"_x"
	.byte	0x7
	.byte	0x31
	.4byte	0x1d9
	.byte	0x14
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x180
	.uleb128 0x9
	.4byte	0x16e
	.4byte	0x1e9
	.uleb128 0xa
	.4byte	0x130
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF36
	.byte	0x24
	.byte	0x7
	.byte	0x35
	.4byte	0x262
	.uleb128 0xc
	.4byte	.LASF37
	.byte	0x7
	.byte	0x37
	.4byte	0x53
	.byte	0
	.uleb128 0xc
	.4byte	.LASF38
	.byte	0x7
	.byte	0x38
	.4byte	0x53
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF39
	.byte	0x7
	.byte	0x39
	.4byte	0x53
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF40
	.byte	0x7
	.byte	0x3a
	.4byte	0x53
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF41
	.byte	0x7
	.byte	0x3b
	.4byte	0x53
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF42
	.byte	0x7
	.byte	0x3c
	.4byte	0x53
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF43
	.byte	0x7
	.byte	0x3d
	.4byte	0x53
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF44
	.byte	0x7
	.byte	0x3e
	.4byte	0x53
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF45
	.byte	0x7
	.byte	0x3f
	.4byte	0x53
	.byte	0x20
	.byte	0
	.uleb128 0x10
	.4byte	.LASF46
	.2byte	0x108
	.byte	0x7
	.byte	0x48
	.4byte	0x2a2
	.uleb128 0xc
	.4byte	.LASF47
	.byte	0x7
	.byte	0x49
	.4byte	0x2a2
	.byte	0
	.uleb128 0xc
	.4byte	.LASF48
	.byte	0x7
	.byte	0x4a
	.4byte	0x2a2
	.byte	0x80
	.uleb128 0x11
	.4byte	.LASF49
	.byte	0x7
	.byte	0x4c
	.4byte	0x16e
	.2byte	0x100
	.uleb128 0x11
	.4byte	.LASF50
	.byte	0x7
	.byte	0x4f
	.4byte	0x16e
	.2byte	0x104
	.byte	0
	.uleb128 0x9
	.4byte	0xc0
	.4byte	0x2b2
	.uleb128 0xa
	.4byte	0x130
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.4byte	.LASF51
	.byte	0x8c
	.byte	0x7
	.byte	0x53
	.4byte	0x2ef
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x7
	.byte	0x54
	.4byte	0x2ef
	.byte	0
	.uleb128 0xc
	.4byte	.LASF52
	.byte	0x7
	.byte	0x55
	.4byte	0x53
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF53
	.byte	0x7
	.byte	0x56
	.4byte	0x2f5
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF54
	.byte	0x7
	.byte	0x57
	.4byte	0x30c
	.byte	0x88
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2b2
	.uleb128 0x9
	.4byte	0x305
	.4byte	0x305
	.uleb128 0xa
	.4byte	0x130
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x30b
	.uleb128 0x12
	.uleb128 0xf
	.byte	0x4
	.4byte	0x262
	.uleb128 0xd
	.4byte	.LASF55
	.byte	0x8
	.byte	0x7
	.byte	0x73
	.4byte	0x337
	.uleb128 0xc
	.4byte	.LASF56
	.byte	0x7
	.byte	0x74
	.4byte	0x337
	.byte	0
	.uleb128 0xc
	.4byte	.LASF57
	.byte	0x7
	.byte	0x75
	.4byte	0x53
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x33
	.uleb128 0x13
	.4byte	.LASF58
	.byte	0xf0
	.byte	0x7
	.2byte	0x172
	.4byte	0x483
	.uleb128 0x14
	.4byte	.LASF59
	.byte	0x7
	.2byte	0x176
	.4byte	0x53
	.byte	0
	.uleb128 0x14
	.4byte	.LASF60
	.byte	0x7
	.2byte	0x17b
	.4byte	0x6b8
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF61
	.byte	0x7
	.2byte	0x17b
	.4byte	0x6b8
	.byte	0x8
	.uleb128 0x14
	.4byte	.LASF62
	.byte	0x7
	.2byte	0x17b
	.4byte	0x6b8
	.byte	0xc
	.uleb128 0x14
	.4byte	.LASF63
	.byte	0x7
	.2byte	0x17d
	.4byte	0x53
	.byte	0x10
	.uleb128 0x14
	.4byte	.LASF64
	.byte	0x7
	.2byte	0x17f
	.4byte	0x5d1
	.byte	0x14
	.uleb128 0x14
	.4byte	.LASF65
	.byte	0x7
	.2byte	0x181
	.4byte	0x53
	.byte	0x18
	.uleb128 0x14
	.4byte	.LASF66
	.byte	0x7
	.2byte	0x183
	.4byte	0x53
	.byte	0x1c
	.uleb128 0x14
	.4byte	.LASF67
	.byte	0x7
	.2byte	0x184
	.4byte	0x602
	.byte	0x20
	.uleb128 0x15
	.string	"_mp"
	.byte	0x7
	.2byte	0x186
	.4byte	0x805
	.byte	0x24
	.uleb128 0x14
	.4byte	.LASF68
	.byte	0x7
	.2byte	0x188
	.4byte	0x816
	.byte	0x28
	.uleb128 0x14
	.4byte	.LASF69
	.byte	0x7
	.2byte	0x18a
	.4byte	0x53
	.byte	0x2c
	.uleb128 0x14
	.4byte	.LASF70
	.byte	0x7
	.2byte	0x18d
	.4byte	0x53
	.byte	0x30
	.uleb128 0x14
	.4byte	.LASF71
	.byte	0x7
	.2byte	0x18e
	.4byte	0x5d1
	.byte	0x34
	.uleb128 0x14
	.4byte	.LASF72
	.byte	0x7
	.2byte	0x190
	.4byte	0x81c
	.byte	0x38
	.uleb128 0x14
	.4byte	.LASF73
	.byte	0x7
	.2byte	0x191
	.4byte	0x822
	.byte	0x3c
	.uleb128 0x14
	.4byte	.LASF74
	.byte	0x7
	.2byte	0x192
	.4byte	0x5d1
	.byte	0x40
	.uleb128 0x14
	.4byte	.LASF75
	.byte	0x7
	.2byte	0x195
	.4byte	0x833
	.byte	0x44
	.uleb128 0x14
	.4byte	.LASF51
	.byte	0x7
	.2byte	0x199
	.4byte	0x2ef
	.byte	0x48
	.uleb128 0x14
	.4byte	.LASF76
	.byte	0x7
	.2byte	0x19a
	.4byte	0x2b2
	.byte	0x4c
	.uleb128 0x14
	.4byte	.LASF77
	.byte	0x7
	.2byte	0x19d
	.4byte	0x67d
	.byte	0xd8
	.uleb128 0x14
	.4byte	.LASF78
	.byte	0x7
	.2byte	0x19e
	.4byte	0x6b8
	.byte	0xe4
	.uleb128 0x14
	.4byte	.LASF79
	.byte	0x7
	.2byte	0x19f
	.4byte	0x83f
	.byte	0xe8
	.uleb128 0x14
	.4byte	.LASF80
	.byte	0x7
	.2byte	0x1a0
	.4byte	0x5d1
	.byte	0xec
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x33d
	.uleb128 0xd
	.4byte	.LASF81
	.byte	0x68
	.byte	0x7
	.byte	0xb3
	.4byte	0x5b3
	.uleb128 0xe
	.string	"_p"
	.byte	0x7
	.byte	0xb4
	.4byte	0x337
	.byte	0
	.uleb128 0xe
	.string	"_r"
	.byte	0x7
	.byte	0xb5
	.4byte	0x53
	.byte	0x4
	.uleb128 0xe
	.string	"_w"
	.byte	0x7
	.byte	0xb6
	.4byte	0x53
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF82
	.byte	0x7
	.byte	0xb7
	.4byte	0x3a
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF83
	.byte	0x7
	.byte	0xb8
	.4byte	0x3a
	.byte	0xe
	.uleb128 0xe
	.string	"_bf"
	.byte	0x7
	.byte	0xb9
	.4byte	0x312
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF84
	.byte	0x7
	.byte	0xba
	.4byte	0x53
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF85
	.byte	0x7
	.byte	0xbd
	.4byte	0x483
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF86
	.byte	0x7
	.byte	0xc1
	.4byte	0xc0
	.byte	0x20
	.uleb128 0xc
	.4byte	.LASF87
	.byte	0x7
	.byte	0xc3
	.4byte	0x5de
	.byte	0x24
	.uleb128 0xc
	.4byte	.LASF88
	.byte	0x7
	.byte	0xc5
	.4byte	0x60d
	.byte	0x28
	.uleb128 0xc
	.4byte	.LASF89
	.byte	0x7
	.byte	0xc8
	.4byte	0x631
	.byte	0x2c
	.uleb128 0xc
	.4byte	.LASF90
	.byte	0x7
	.byte	0xc9
	.4byte	0x64b
	.byte	0x30
	.uleb128 0xe
	.string	"_ub"
	.byte	0x7
	.byte	0xcc
	.4byte	0x312
	.byte	0x34
	.uleb128 0xe
	.string	"_up"
	.byte	0x7
	.byte	0xcd
	.4byte	0x337
	.byte	0x3c
	.uleb128 0xe
	.string	"_ur"
	.byte	0x7
	.byte	0xce
	.4byte	0x53
	.byte	0x40
	.uleb128 0xc
	.4byte	.LASF91
	.byte	0x7
	.byte	0xd1
	.4byte	0x651
	.byte	0x44
	.uleb128 0xc
	.4byte	.LASF92
	.byte	0x7
	.byte	0xd2
	.4byte	0x661
	.byte	0x47
	.uleb128 0xe
	.string	"_lb"
	.byte	0x7
	.byte	0xd5
	.4byte	0x312
	.byte	0x48
	.uleb128 0xc
	.4byte	.LASF93
	.byte	0x7
	.byte	0xd8
	.4byte	0x53
	.byte	0x50
	.uleb128 0xc
	.4byte	.LASF94
	.byte	0x7
	.byte	0xd9
	.4byte	0xd8
	.byte	0x54
	.uleb128 0xc
	.4byte	.LASF95
	.byte	0x7
	.byte	0xe0
	.4byte	0x163
	.byte	0x58
	.uleb128 0xc
	.4byte	.LASF96
	.byte	0x7
	.byte	0xe2
	.4byte	0x158
	.byte	0x5c
	.uleb128 0xc
	.4byte	.LASF97
	.byte	0x7
	.byte	0xe3
	.4byte	0x53
	.byte	0x64
	.byte	0
	.uleb128 0x16
	.4byte	0x53
	.4byte	0x5d1
	.uleb128 0x17
	.4byte	0x483
	.uleb128 0x17
	.4byte	0xc0
	.uleb128 0x17
	.4byte	0x5d1
	.uleb128 0x17
	.4byte	0x53
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x5d7
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF98
	.uleb128 0xf
	.byte	0x4
	.4byte	0x5b3
	.uleb128 0x16
	.4byte	0x53
	.4byte	0x602
	.uleb128 0x17
	.4byte	0x483
	.uleb128 0x17
	.4byte	0xc0
	.uleb128 0x17
	.4byte	0x602
	.uleb128 0x17
	.4byte	0x53
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x608
	.uleb128 0x18
	.4byte	0x5d7
	.uleb128 0xf
	.byte	0x4
	.4byte	0x5e4
	.uleb128 0x16
	.4byte	0xea
	.4byte	0x631
	.uleb128 0x17
	.4byte	0x483
	.uleb128 0x17
	.4byte	0xc0
	.uleb128 0x17
	.4byte	0xea
	.uleb128 0x17
	.4byte	0x53
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x613
	.uleb128 0x16
	.4byte	0x53
	.4byte	0x64b
	.uleb128 0x17
	.4byte	0x483
	.uleb128 0x17
	.4byte	0xc0
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x637
	.uleb128 0x9
	.4byte	0x33
	.4byte	0x661
	.uleb128 0xa
	.4byte	0x130
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.4byte	0x33
	.4byte	0x671
	.uleb128 0xa
	.4byte	0x130
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF99
	.byte	0x7
	.2byte	0x11d
	.4byte	0x489
	.uleb128 0x13
	.4byte	.LASF100
	.byte	0xc
	.byte	0x7
	.2byte	0x121
	.4byte	0x6b2
	.uleb128 0x14
	.4byte	.LASF31
	.byte	0x7
	.2byte	0x123
	.4byte	0x6b2
	.byte	0
	.uleb128 0x14
	.4byte	.LASF101
	.byte	0x7
	.2byte	0x124
	.4byte	0x53
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF102
	.byte	0x7
	.2byte	0x125
	.4byte	0x6b8
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x67d
	.uleb128 0xf
	.byte	0x4
	.4byte	0x671
	.uleb128 0x13
	.4byte	.LASF103
	.byte	0x18
	.byte	0x7
	.2byte	0x13d
	.4byte	0x700
	.uleb128 0x14
	.4byte	.LASF104
	.byte	0x7
	.2byte	0x13e
	.4byte	0x700
	.byte	0
	.uleb128 0x14
	.4byte	.LASF105
	.byte	0x7
	.2byte	0x13f
	.4byte	0x700
	.byte	0x6
	.uleb128 0x14
	.4byte	.LASF106
	.byte	0x7
	.2byte	0x140
	.4byte	0x41
	.byte	0xc
	.uleb128 0x14
	.4byte	.LASF107
	.byte	0x7
	.2byte	0x143
	.4byte	0x25
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.4byte	0x41
	.4byte	0x710
	.uleb128 0xa
	.4byte	0x130
	.byte	0x2
	.byte	0
	.uleb128 0x13
	.4byte	.LASF108
	.byte	0x10
	.byte	0x7
	.2byte	0x156
	.4byte	0x752
	.uleb128 0x14
	.4byte	.LASF109
	.byte	0x7
	.2byte	0x159
	.4byte	0x1d3
	.byte	0
	.uleb128 0x14
	.4byte	.LASF110
	.byte	0x7
	.2byte	0x15a
	.4byte	0x53
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF111
	.byte	0x7
	.2byte	0x15b
	.4byte	0x1d3
	.byte	0x8
	.uleb128 0x14
	.4byte	.LASF112
	.byte	0x7
	.2byte	0x15c
	.4byte	0x752
	.byte	0xc
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x1d3
	.uleb128 0x13
	.4byte	.LASF113
	.byte	0x50
	.byte	0x7
	.2byte	0x160
	.4byte	0x7f5
	.uleb128 0x14
	.4byte	.LASF114
	.byte	0x7
	.2byte	0x163
	.4byte	0x5d1
	.byte	0
	.uleb128 0x14
	.4byte	.LASF115
	.byte	0x7
	.2byte	0x164
	.4byte	0x158
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF116
	.byte	0x7
	.2byte	0x165
	.4byte	0x158
	.byte	0xc
	.uleb128 0x14
	.4byte	.LASF117
	.byte	0x7
	.2byte	0x166
	.4byte	0x158
	.byte	0x14
	.uleb128 0x14
	.4byte	.LASF118
	.byte	0x7
	.2byte	0x167
	.4byte	0x7f5
	.byte	0x1c
	.uleb128 0x14
	.4byte	.LASF119
	.byte	0x7
	.2byte	0x168
	.4byte	0x53
	.byte	0x24
	.uleb128 0x14
	.4byte	.LASF120
	.byte	0x7
	.2byte	0x169
	.4byte	0x158
	.byte	0x28
	.uleb128 0x14
	.4byte	.LASF121
	.byte	0x7
	.2byte	0x16a
	.4byte	0x158
	.byte	0x30
	.uleb128 0x14
	.4byte	.LASF122
	.byte	0x7
	.2byte	0x16b
	.4byte	0x158
	.byte	0x38
	.uleb128 0x14
	.4byte	.LASF123
	.byte	0x7
	.2byte	0x16c
	.4byte	0x158
	.byte	0x40
	.uleb128 0x14
	.4byte	.LASF124
	.byte	0x7
	.2byte	0x16d
	.4byte	0x158
	.byte	0x48
	.byte	0
	.uleb128 0x9
	.4byte	0x5d7
	.4byte	0x805
	.uleb128 0xa
	.4byte	0x130
	.byte	0x7
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x710
	.uleb128 0x19
	.4byte	0x816
	.uleb128 0x17
	.4byte	0x483
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x80b
	.uleb128 0xf
	.byte	0x4
	.4byte	0x6be
	.uleb128 0xf
	.byte	0x4
	.4byte	0x1e9
	.uleb128 0x19
	.4byte	0x833
	.uleb128 0x17
	.4byte	0x53
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x839
	.uleb128 0xf
	.byte	0x4
	.4byte	0x828
	.uleb128 0xf
	.byte	0x4
	.4byte	0x758
	.uleb128 0x3
	.4byte	.LASF125
	.byte	0x8
	.byte	0x34
	.4byte	0x671
	.uleb128 0x3
	.4byte	.LASF126
	.byte	0x9
	.byte	0x18
	.4byte	0x94
	.uleb128 0x3
	.4byte	.LASF127
	.byte	0xa
	.byte	0x38
	.4byte	0x866
	.uleb128 0xf
	.byte	0x4
	.4byte	0x86c
	.uleb128 0xd
	.4byte	.LASF128
	.byte	0x20
	.byte	0x1
	.byte	0x2a
	.4byte	0x8b5
	.uleb128 0xc
	.4byte	.LASF129
	.byte	0x1
	.byte	0x2b
	.4byte	0xb5
	.byte	0
	.uleb128 0xc
	.4byte	.LASF130
	.byte	0x1
	.byte	0x2c
	.4byte	0xb5
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF131
	.byte	0x1
	.byte	0x2d
	.4byte	0x8b5
	.byte	0x10
	.uleb128 0xe
	.string	"arg"
	.byte	0x1
	.byte	0x2e
	.4byte	0xc0
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF132
	.byte	0x1
	.byte	0x35
	.4byte	0x9d9
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.4byte	.LASF133
	.byte	0xa
	.byte	0x3e
	.4byte	0x8c0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x8c6
	.uleb128 0x19
	.4byte	0x8d1
	.uleb128 0x17
	.4byte	0xc0
	.byte	0
	.uleb128 0x1a
	.byte	0x4
	.4byte	0x65
	.byte	0xa
	.byte	0x44
	.4byte	0x8e4
	.uleb128 0x1b
	.4byte	.LASF138
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF134
	.byte	0xa
	.byte	0x4d
	.4byte	0x8d1
	.uleb128 0xb
	.byte	0x10
	.byte	0xa
	.byte	0x52
	.4byte	0x928
	.uleb128 0xc
	.4byte	.LASF131
	.byte	0xa
	.byte	0x53
	.4byte	0x8b5
	.byte	0
	.uleb128 0xe
	.string	"arg"
	.byte	0xa
	.byte	0x54
	.4byte	0xc0
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF135
	.byte	0xa
	.byte	0x55
	.4byte	0x8e4
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF136
	.byte	0xa
	.byte	0x56
	.4byte	0x602
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.4byte	.LASF137
	.byte	0xa
	.byte	0x57
	.4byte	0x8ef
	.uleb128 0x1a
	.byte	0x4
	.4byte	0x65
	.byte	0xb
	.byte	0x1f
	.4byte	0x964
	.uleb128 0x1b
	.4byte	.LASF139
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF140
	.byte	0x1
	.uleb128 0x1b
	.4byte	.LASF141
	.byte	0x2
	.uleb128 0x1b
	.4byte	.LASF142
	.byte	0x3
	.uleb128 0x1b
	.4byte	.LASF143
	.byte	0x4
	.uleb128 0x1b
	.4byte	.LASF144
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF145
	.byte	0xb
	.byte	0x26
	.4byte	0x933
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF146
	.uleb128 0x3
	.4byte	.LASF147
	.byte	0xc
	.byte	0x6f
	.4byte	0x53
	.uleb128 0x3
	.4byte	.LASF148
	.byte	0xc
	.byte	0x76
	.4byte	0x9f
	.uleb128 0xb
	.byte	0x8
	.byte	0xc
	.byte	0x84
	.4byte	0x9ad
	.uleb128 0xc
	.4byte	.LASF149
	.byte	0xc
	.byte	0x85
	.4byte	0x9f
	.byte	0
	.uleb128 0xc
	.4byte	.LASF150
	.byte	0xc
	.byte	0x86
	.4byte	0x9f
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF151
	.byte	0xc
	.byte	0x8b
	.4byte	0x98c
	.uleb128 0x3
	.4byte	.LASF152
	.byte	0xd
	.byte	0x6c
	.4byte	0xc0
	.uleb128 0x3
	.4byte	.LASF153
	.byte	0xe
	.byte	0x58
	.4byte	0xc0
	.uleb128 0x3
	.4byte	.LASF154
	.byte	0xf
	.byte	0x4f
	.4byte	0x9c3
	.uleb128 0xb
	.byte	0x8
	.byte	0x1
	.byte	0x35
	.4byte	0x9fa
	.uleb128 0xc
	.4byte	.LASF155
	.byte	0x1
	.byte	0x35
	.4byte	0x866
	.byte	0
	.uleb128 0xc
	.4byte	.LASF156
	.byte	0x1
	.byte	0x35
	.4byte	0x9fa
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x866
	.uleb128 0xd
	.4byte	.LASF157
	.byte	0x4
	.byte	0x1
	.byte	0x47
	.4byte	0xa19
	.uleb128 0xc
	.4byte	.LASF158
	.byte	0x1
	.byte	0x47
	.4byte	0x866
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF161
	.byte	0x1
	.byte	0xe8
	.4byte	0x96f
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa42
	.uleb128 0x1d
	.4byte	.LASF163
	.byte	0x1
	.byte	0xe8
	.4byte	0x85b
	.4byte	.LLST0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF217
	.byte	0x1
	.2byte	0x134
	.4byte	0x96f
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1f
	.4byte	.LASF159
	.byte	0x1
	.byte	0xed
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa81
	.uleb128 0x20
	.4byte	.LVL2
	.4byte	0x124b
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_timer_lock
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF160
	.byte	0x1
	.byte	0xf2
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xaaa
	.uleb128 0x20
	.4byte	.LVL3
	.4byte	0x1256
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_timer_lock
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF162
	.byte	0x1
	.byte	0xa1
	.4byte	0x850
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb49
	.uleb128 0x1d
	.4byte	.LASF163
	.byte	0x1
	.byte	0xa1
	.4byte	0x85b
	.4byte	.LLST1
	.uleb128 0x22
	.string	"it"
	.byte	0x1
	.byte	0xa7
	.4byte	0x85b
	.4byte	.LLST2
	.uleb128 0x23
	.4byte	.LASF164
	.byte	0x1
	.byte	0xa7
	.4byte	0x85b
	.4byte	.LLST3
	.uleb128 0x24
	.4byte	.LASF171
	.4byte	0xb59
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5115
	.uleb128 0x25
	.4byte	.LVL5
	.4byte	0xa58
	.uleb128 0x26
	.4byte	.LVL12
	.4byte	0x1261
	.4byte	0xb36
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xb3
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5115
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.uleb128 0x25
	.4byte	.LVL16
	.4byte	0x126c
	.uleb128 0x25
	.4byte	.LVL17
	.4byte	0xa81
	.byte	0
	.uleb128 0x9
	.4byte	0x5d7
	.4byte	0xb59
	.uleb128 0xa
	.4byte	0x130
	.byte	0xc
	.byte	0
	.uleb128 0x18
	.4byte	0xb49
	.uleb128 0x1c
	.4byte	.LASF165
	.byte	0x1
	.byte	0xbe
	.4byte	0x850
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb99
	.uleb128 0x1d
	.4byte	.LASF163
	.byte	0x1
	.byte	0xbe
	.4byte	0x85b
	.4byte	.LLST4
	.uleb128 0x25
	.4byte	.LVL20
	.4byte	0xa58
	.uleb128 0x25
	.4byte	.LVL21
	.4byte	0xa81
	.byte	0
	.uleb128 0x27
	.4byte	.LASF167
	.byte	0x1
	.2byte	0x128
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbea
	.uleb128 0x28
	.string	"arg"
	.byte	0x1
	.2byte	0x128
	.4byte	0xc0
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x29
	.4byte	.LASF166
	.byte	0x1
	.2byte	0x12a
	.4byte	0x53
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.4byte	.LVL24
	.4byte	0x1277
	.4byte	0xbe0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x25
	.4byte	.LVL25
	.4byte	0x1283
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF168
	.byte	0x1
	.byte	0xf7
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc8d
	.uleb128 0x1d
	.4byte	.LASF135
	.byte	0x1
	.byte	0xf7
	.4byte	0x8e4
	.4byte	.LLST5
	.uleb128 0x22
	.string	"now"
	.byte	0x1
	.byte	0xfd
	.4byte	0xb5
	.4byte	.LLST6
	.uleb128 0x22
	.string	"it"
	.byte	0x1
	.byte	0xfe
	.4byte	0x85b
	.4byte	.LLST7
	.uleb128 0x29
	.4byte	.LASF169
	.byte	0x1
	.2byte	0x118
	.4byte	0x85b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x25
	.4byte	.LVL27
	.4byte	0xa58
	.uleb128 0x25
	.4byte	.LVL28
	.4byte	0x128f
	.uleb128 0x26
	.4byte	.LVL32
	.4byte	0xaaa
	.4byte	0xc5f
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL33
	.4byte	0xa81
	.uleb128 0x25
	.4byte	.LVL35
	.4byte	0xa58
	.uleb128 0x25
	.4byte	.LVL36
	.4byte	0x128f
	.uleb128 0x25
	.4byte	.LVL42
	.4byte	0x126c
	.uleb128 0x25
	.4byte	.LVL43
	.4byte	0xa81
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF170
	.byte	0x1
	.2byte	0x11f
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd38
	.uleb128 0x28
	.string	"arg"
	.byte	0x1
	.2byte	0x11f
	.4byte	0xc0
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x24
	.4byte	.LASF171
	.4byte	0xd48
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5139
	.uleb128 0x2c
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x2d
	.string	"res"
	.byte	0x1
	.2byte	0x122
	.4byte	0x53
	.4byte	.LLST8
	.uleb128 0x26
	.4byte	.LVL45
	.4byte	0x129a
	.4byte	0xcf7
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x26
	.4byte	.LVL47
	.4byte	0x1261
	.4byte	0xd27
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x123
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5139
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.byte	0
	.uleb128 0x20
	.4byte	.LVL49
	.4byte	0xbea
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x5d7
	.4byte	0xd48
	.uleb128 0xa
	.4byte	0x130
	.byte	0xa
	.byte	0
	.uleb128 0x18
	.4byte	0xd38
	.uleb128 0x27
	.4byte	.LASF172
	.byte	0x1
	.2byte	0x176
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdb6
	.uleb128 0x28
	.string	"t"
	.byte	0x1
	.2byte	0x176
	.4byte	0x85b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2e
	.string	"dst"
	.byte	0x1
	.2byte	0x176
	.4byte	0xdb6
	.4byte	.LLST9
	.uleb128 0x2f
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x176
	.4byte	0xdbc
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2d
	.string	"cb"
	.byte	0x1
	.2byte	0x178
	.4byte	0x89
	.4byte	.LLST10
	.uleb128 0x20
	.4byte	.LVL51
	.4byte	0x12a6
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC18
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x5d1
	.uleb128 0xf
	.byte	0x4
	.4byte	0x89
	.uleb128 0x30
	.4byte	.LASF177
	.byte	0x1
	.byte	0x58
	.4byte	0x850
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe25
	.uleb128 0x1d
	.4byte	.LASF174
	.byte	0x1
	.byte	0x58
	.4byte	0xe25
	.4byte	.LLST11
	.uleb128 0x31
	.4byte	.LASF175
	.byte	0x1
	.byte	0x59
	.4byte	0xe30
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x23
	.4byte	.LASF176
	.byte	0x1
	.byte	0x61
	.4byte	0x85b
	.4byte	.LLST12
	.uleb128 0x25
	.4byte	.LVL55
	.4byte	0xa42
	.uleb128 0x20
	.4byte	.LVL56
	.4byte	0x12b2
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xe2b
	.uleb128 0x18
	.4byte	0x928
	.uleb128 0xf
	.byte	0x4
	.4byte	0x85b
	.uleb128 0x30
	.4byte	.LASF178
	.byte	0x1
	.byte	0x8a
	.4byte	0x850
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe8c
	.uleb128 0x1d
	.4byte	.LASF163
	.byte	0x1
	.byte	0x8a
	.4byte	0x85b
	.4byte	.LLST13
	.uleb128 0x25
	.4byte	.LVL65
	.4byte	0xa42
	.uleb128 0x26
	.4byte	.LVL66
	.4byte	0xa19
	.4byte	0xe7b
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL67
	.4byte	0xb5e
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x30
	.4byte	.LASF179
	.byte	0x1
	.byte	0x92
	.4byte	0x850
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xed9
	.uleb128 0x1d
	.4byte	.LASF163
	.byte	0x1
	.byte	0x92
	.4byte	0x85b
	.4byte	.LLST14
	.uleb128 0x26
	.4byte	.LVL74
	.4byte	0xa19
	.4byte	0xec8
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL75
	.4byte	0x12bd
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	.LASF180
	.byte	0x1
	.2byte	0x13a
	.4byte	0x850
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfa7
	.uleb128 0x2d
	.string	"ret"
	.byte	0x1
	.2byte	0x145
	.4byte	0x53
	.4byte	.LLST15
	.uleb128 0x2d
	.string	"err"
	.byte	0x1
	.2byte	0x14d
	.4byte	0x850
	.4byte	.LLST16
	.uleb128 0x25
	.4byte	.LVL81
	.4byte	0xa42
	.uleb128 0x26
	.4byte	.LVL82
	.4byte	0x12c8
	.4byte	0xf34
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x40
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x26
	.4byte	.LVL83
	.4byte	0x12d4
	.4byte	0xf74
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	timer_task
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1000
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x46
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	s_timer_task
	.uleb128 0x21
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x25
	.4byte	.LVL85
	.4byte	0x12e0
	.uleb128 0x26
	.4byte	.LVL88
	.4byte	0x12ec
	.4byte	0xf94
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	timer_alarm_handler
	.byte	0
	.uleb128 0x25
	.4byte	.LVL90
	.4byte	0x12f7
	.uleb128 0x25
	.4byte	.LVL91
	.4byte	0x12e0
	.byte	0
	.uleb128 0x32
	.4byte	.LASF181
	.byte	0x1
	.2byte	0x159
	.4byte	0x850
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfe6
	.uleb128 0x25
	.4byte	.LVL95
	.4byte	0xa42
	.uleb128 0x25
	.4byte	.LVL96
	.4byte	0x1303
	.uleb128 0x25
	.4byte	.LVL97
	.4byte	0x12f7
	.uleb128 0x25
	.4byte	.LVL98
	.4byte	0x12e0
	.byte	0
	.uleb128 0x32
	.4byte	.LASF182
	.byte	0x1
	.2byte	0x188
	.4byte	0x850
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10dd
	.uleb128 0x33
	.4byte	.LASF183
	.byte	0x1
	.2byte	0x188
	.4byte	0x10dd
	.4byte	.LLST17
	.uleb128 0x2d
	.string	"it"
	.byte	0x1
	.2byte	0x190
	.4byte	0x85b
	.4byte	.LLST18
	.uleb128 0x34
	.4byte	.LASF184
	.byte	0x1
	.2byte	0x193
	.4byte	0x89
	.4byte	.LLST19
	.uleb128 0x29
	.4byte	.LASF185
	.byte	0x1
	.2byte	0x1a4
	.4byte	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.4byte	.LASF186
	.byte	0x1
	.2byte	0x1a5
	.4byte	0x5d1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x35
	.string	"pos"
	.byte	0x1
	.2byte	0x1ac
	.4byte	0x5d1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x25
	.4byte	.LVL101
	.4byte	0xa58
	.uleb128 0x25
	.4byte	.LVL106
	.4byte	0xa81
	.uleb128 0x26
	.4byte	.LVL108
	.4byte	0x12b2
	.4byte	0x1080
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x25
	.4byte	.LVL110
	.4byte	0xa58
	.uleb128 0x26
	.4byte	.LVL112
	.4byte	0xd4d
	.4byte	0x10a9
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x25
	.4byte	.LVL114
	.4byte	0xa81
	.uleb128 0x26
	.4byte	.LVL115
	.4byte	0x130e
	.4byte	0x10cc
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL116
	.4byte	0x12bd
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x845
	.uleb128 0x36
	.4byte	.LASF218
	.byte	0x1
	.2byte	0x1be
	.4byte	0xaa
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1107
	.uleb128 0x25
	.4byte	.LVL120
	.4byte	0x128f
	.byte	0
	.uleb128 0x30
	.4byte	.LASF187
	.byte	0x1
	.byte	0x6f
	.4byte	0x850
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1175
	.uleb128 0x1d
	.4byte	.LASF163
	.byte	0x1
	.byte	0x6f
	.4byte	0x85b
	.4byte	.LLST20
	.uleb128 0x1d
	.4byte	.LASF188
	.byte	0x1
	.byte	0x6f
	.4byte	0xb5
	.4byte	.LLST21
	.uleb128 0x25
	.4byte	.LVL122
	.4byte	0xa42
	.uleb128 0x26
	.4byte	.LVL123
	.4byte	0xa19
	.4byte	0x115b
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL124
	.4byte	0x10e3
	.uleb128 0x20
	.4byte	.LVL126
	.4byte	0xaaa
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x30
	.4byte	.LASF189
	.byte	0x1
	.byte	0x7c
	.4byte	0x850
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x11f5
	.uleb128 0x1d
	.4byte	.LASF163
	.byte	0x1
	.byte	0x7c
	.4byte	0x85b
	.4byte	.LLST22
	.uleb128 0x1d
	.4byte	.LASF190
	.byte	0x1
	.byte	0x7c
	.4byte	0xb5
	.4byte	.LLST23
	.uleb128 0x25
	.4byte	.LVL133
	.4byte	0xa42
	.uleb128 0x26
	.4byte	.LVL134
	.4byte	0xa19
	.4byte	0x11c9
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL135
	.4byte	0x1319
	.uleb128 0x25
	.4byte	.LVL136
	.4byte	0x1319
	.uleb128 0x25
	.4byte	.LVL139
	.4byte	0x10e3
	.uleb128 0x20
	.4byte	.LVL140
	.4byte	0xaaa
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x37
	.string	"TAG"
	.byte	0x1
	.byte	0x44
	.4byte	0x602
	.uleb128 0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+4900
	.sleb128 0
	.uleb128 0x38
	.4byte	.LASF191
	.byte	0x1
	.byte	0x47
	.4byte	0xa00
	.uleb128 0x5
	.byte	0x3
	.4byte	s_timers
	.uleb128 0x38
	.4byte	.LASF192
	.byte	0x1
	.byte	0x50
	.4byte	0x9b8
	.uleb128 0x5
	.byte	0x3
	.4byte	s_timer_task
	.uleb128 0x38
	.4byte	.LASF193
	.byte	0x1
	.byte	0x52
	.4byte	0x9ce
	.uleb128 0x5
	.byte	0x3
	.4byte	s_timer_semaphore
	.uleb128 0x38
	.4byte	.LASF194
	.byte	0x1
	.byte	0x54
	.4byte	0x9ad
	.uleb128 0x5
	.byte	0x3
	.4byte	s_timer_lock
	.uleb128 0x39
	.4byte	.LASF195
	.4byte	.LASF195
	.byte	0xc
	.byte	0xdc
	.uleb128 0x39
	.4byte	.LASF196
	.4byte	.LASF196
	.byte	0xc
	.byte	0xdb
	.uleb128 0x39
	.4byte	.LASF197
	.4byte	.LASF197
	.byte	0x10
	.byte	0x29
	.uleb128 0x39
	.4byte	.LASF198
	.4byte	.LASF198
	.byte	0x11
	.byte	0x34
	.uleb128 0x3a
	.4byte	.LASF199
	.4byte	.LASF199
	.byte	0xe
	.2byte	0x595
	.uleb128 0x3a
	.4byte	.LASF200
	.4byte	.LASF200
	.byte	0xc
	.2byte	0x129
	.uleb128 0x39
	.4byte	.LASF201
	.4byte	.LASF201
	.byte	0x11
	.byte	0x3a
	.uleb128 0x3a
	.4byte	.LASF202
	.4byte	.LASF202
	.byte	0xe
	.2byte	0x3e9
	.uleb128 0x3a
	.4byte	.LASF203
	.4byte	.LASF203
	.byte	0x8
	.2byte	0x10c
	.uleb128 0x39
	.4byte	.LASF204
	.4byte	.LASF204
	.byte	0x12
	.byte	0x57
	.uleb128 0x39
	.4byte	.LASF205
	.4byte	.LASF205
	.byte	0x12
	.byte	0x5a
	.uleb128 0x3a
	.4byte	.LASF206
	.4byte	.LASF206
	.byte	0xe
	.2byte	0x623
	.uleb128 0x3a
	.4byte	.LASF207
	.4byte	.LASF207
	.byte	0xd
	.2byte	0x17a
	.uleb128 0x3a
	.4byte	.LASF208
	.4byte	.LASF208
	.byte	0xe
	.2byte	0x417
	.uleb128 0x39
	.4byte	.LASF209
	.4byte	.LASF209
	.byte	0x11
	.byte	0x24
	.uleb128 0x3a
	.4byte	.LASF210
	.4byte	.LASF210
	.byte	0xd
	.2byte	0x29d
	.uleb128 0x39
	.4byte	.LASF211
	.4byte	.LASF211
	.byte	0x11
	.byte	0x29
	.uleb128 0x39
	.4byte	.LASF212
	.4byte	.LASF212
	.byte	0x8
	.byte	0xc1
	.uleb128 0x39
	.4byte	.LASF213
	.4byte	.LASF213
	.byte	0x11
	.byte	0x44
	.uleb128 0x3b
	.uleb128 0xc
	.byte	0x9e
	.uleb128 0xa
	.byte	0x65
	.byte	0x73
	.byte	0x70
	.byte	0x5f
	.byte	0x74
	.byte	0x69
	.byte	0x6d
	.byte	0x65
	.byte	0x72
	.byte	0
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
	.uleb128 0x7
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
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
	.uleb128 0x1
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
	.uleb128 0x18
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x31
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x37
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
	.uleb128 0x3a
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
	.uleb128 0x3b
	.uleb128 0x36
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
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
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL4
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL18
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x2
	.byte	0x78
	.sleb128 24
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL10
	.4byte	.LVL12-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x3
	.byte	0x7b
	.sleb128 -24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL19
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL22
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL26
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL29
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL28
	.4byte	.LVL31
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL36
	.4byte	.LVL41
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL30
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL39
	.4byte	.LVL42-1
	.2byte	0x5
	.byte	0x3
	.4byte	s_timers
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL50
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL52
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL51
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL54
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
	.4byte	.LVL60
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL63
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL56
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL62
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL64
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL69
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
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL73
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
	.4byte	.LVL79
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL79
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL80
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL83
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL89
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL93
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL94
	.4byte	.LFE27
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL99
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
	.4byte	.LVL119
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL119
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL102
	.4byte	.LVL106-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL111
	.4byte	.LVL118
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL100
	.4byte	.LVL103
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL103
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL121
	.4byte	.LVL127
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL127
	.4byte	.LVL128
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL128
	.4byte	.LVL129
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL129
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
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL121
	.4byte	.LVL125
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL125
	.4byte	.LVL128
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x25
	.byte	0x9f
	.4byte	.LVL128
	.4byte	.LFE14
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL132
	.4byte	.LVL141
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL141
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
	.4byte	.LVL144
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL144
	.4byte	.LVL145
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL145
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL132
	.4byte	.LVL137
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL137
	.4byte	.LVL138
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x25
	.byte	0x9f
	.4byte	.LVL138
	.4byte	.LVL142
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL142
	.4byte	.LFE15
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0xac
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF150:
	.string	"count"
.LASF117:
	.string	"_mbtowc_state"
.LASF47:
	.string	"_fnargs"
.LASF11:
	.string	"size_t"
.LASF103:
	.string	"_rand48"
.LASF206:
	.string	"xQueueCreateCountingSemaphore"
.LASF64:
	.string	"_emergency"
.LASF15:
	.string	"uint64_t"
.LASF138:
	.string	"ESP_TIMER_TASK"
.LASF175:
	.string	"out_handle"
.LASF172:
	.string	"print_timer_info"
.LASF76:
	.string	"_atexit0"
.LASF183:
	.string	"stream"
.LASF123:
	.string	"_wcrtomb_state"
.LASF217:
	.string	"is_initialized"
.LASF124:
	.string	"_wcsrtombs_state"
.LASF0:
	.string	"long long unsigned int"
.LASF173:
	.string	"dst_size"
.LASF8:
	.string	"__int64_t"
.LASF153:
	.string	"QueueHandle_t"
.LASF121:
	.string	"_mbrtowc_state"
.LASF205:
	.string	"free"
.LASF116:
	.string	"_wctomb_state"
.LASF37:
	.string	"__tm_sec"
.LASF143:
	.string	"ESP_LOG_DEBUG"
.LASF90:
	.string	"_close"
.LASF1:
	.string	"signed char"
.LASF91:
	.string	"_ubuf"
.LASF184:
	.string	"timer_count"
.LASF56:
	.string	"_base"
.LASF211:
	.string	"esp_timer_impl_deinit"
.LASF39:
	.string	"__tm_hour"
.LASF78:
	.string	"__sf"
.LASF46:
	.string	"_on_exit_args"
.LASF195:
	.string	"vTaskEnterCritical"
.LASF86:
	.string	"_cookie"
.LASF77:
	.string	"__sglue"
.LASF164:
	.string	"last"
.LASF207:
	.string	"xTaskCreatePinnedToCore"
.LASF19:
	.string	"long int"
.LASF108:
	.string	"_mprec"
.LASF129:
	.string	"alarm"
.LASF82:
	.string	"_flags"
.LASF125:
	.string	"FILE"
.LASF191:
	.string	"s_timers"
.LASF99:
	.string	"__FILE"
.LASF152:
	.string	"TaskHandle_t"
.LASF110:
	.string	"_result_k"
.LASF16:
	.string	"_lock_t"
.LASF9:
	.string	"long long int"
.LASF133:
	.string	"esp_timer_cb_t"
.LASF147:
	.string	"BaseType_t"
.LASF71:
	.string	"_cvtbuf"
.LASF162:
	.string	"timer_insert"
.LASF151:
	.string	"portMUX_TYPE"
.LASF120:
	.string	"_mbrlen_state"
.LASF4:
	.string	"short unsigned int"
.LASF122:
	.string	"_mbsrtowcs_state"
.LASF53:
	.string	"_fns"
.LASF6:
	.string	"__uint32_t"
.LASF33:
	.string	"_sign"
.LASF62:
	.string	"_stderr"
.LASF216:
	.string	"C:\\\\esp\\\\esp32-ArkPOS2\\\\ArkPOS2-esp\\\\build\\\\esp32"
.LASF202:
	.string	"xQueueGenericReceive"
.LASF93:
	.string	"_blksize"
.LASF87:
	.string	"_read"
.LASF36:
	.string	"__tm"
.LASF54:
	.string	"_on_exit_args_ptr"
.LASF178:
	.string	"esp_timer_stop"
.LASF198:
	.string	"esp_timer_impl_set_alarm"
.LASF61:
	.string	"_stdout"
.LASF70:
	.string	"_cvtlen"
.LASF30:
	.string	"long unsigned int"
.LASF83:
	.string	"_file"
.LASF63:
	.string	"_inc"
.LASF136:
	.string	"name"
.LASF85:
	.string	"_data"
.LASF101:
	.string	"_niobs"
.LASF218:
	.string	"esp_timer_get_time"
.LASF179:
	.string	"esp_timer_delete"
.LASF107:
	.string	"_rand_next"
.LASF127:
	.string	"esp_timer_handle_t"
.LASF80:
	.string	"_signal_buf"
.LASF74:
	.string	"_asctime_buf"
.LASF59:
	.string	"_errno"
.LASF132:
	.string	"list_entry"
.LASF109:
	.string	"_result"
.LASF22:
	.string	"__wch"
.LASF131:
	.string	"callback"
.LASF190:
	.string	"period_us"
.LASF95:
	.string	"_lock"
.LASF105:
	.string	"_mult"
.LASF135:
	.string	"dispatch_method"
.LASF142:
	.string	"ESP_LOG_INFO"
.LASF88:
	.string	"_write"
.LASF155:
	.string	"le_next"
.LASF137:
	.string	"esp_timer_create_args_t"
.LASF156:
	.string	"le_prev"
.LASF79:
	.string	"_misc"
.LASF18:
	.string	"_off_t"
.LASF24:
	.string	"sizetype"
.LASF94:
	.string	"_offset"
.LASF185:
	.string	"buf_size"
.LASF208:
	.string	"vQueueDelete"
.LASF182:
	.string	"esp_timer_dump"
.LASF204:
	.string	"calloc"
.LASF186:
	.string	"print_buf"
.LASF145:
	.string	"esp_log_level_t"
.LASF188:
	.string	"timeout_us"
.LASF41:
	.string	"__tm_mon"
.LASF51:
	.string	"_atexit"
.LASF73:
	.string	"_localtime_buf"
.LASF65:
	.string	"__sdidinit"
.LASF69:
	.string	"_gamma_signgam"
.LASF134:
	.string	"esp_timer_dispatch_t"
.LASF21:
	.string	"wint_t"
.LASF10:
	.string	"__uint64_t"
.LASF112:
	.string	"_freelist"
.LASF43:
	.string	"__tm_wday"
.LASF209:
	.string	"esp_timer_impl_init"
.LASF17:
	.string	"_LOCK_RECURSIVE_T"
.LASF157:
	.string	"esp_timer_list"
.LASF158:
	.string	"lh_first"
.LASF40:
	.string	"__tm_mday"
.LASF146:
	.string	"_Bool"
.LASF12:
	.string	"int32_t"
.LASF2:
	.string	"unsigned char"
.LASF14:
	.string	"int64_t"
.LASF102:
	.string	"_iobs"
.LASF23:
	.string	"__wchb"
.LASF214:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF28:
	.string	"_flock_t"
.LASF44:
	.string	"__tm_yday"
.LASF181:
	.string	"esp_timer_deinit"
.LASF55:
	.string	"__sbuf"
.LASF97:
	.string	"_flags2"
.LASF199:
	.string	"xQueueGiveFromISR"
.LASF140:
	.string	"ESP_LOG_ERROR"
.LASF27:
	.string	"_mbstate_t"
.LASF81:
	.string	"__sFILE"
.LASF96:
	.string	"_mbstate"
.LASF171:
	.string	"__func__"
.LASF115:
	.string	"_mblen_state"
.LASF52:
	.string	"_ind"
.LASF67:
	.string	"_current_locale"
.LASF48:
	.string	"_dso_handle"
.LASF68:
	.string	"__cleanup"
.LASF192:
	.string	"s_timer_task"
.LASF32:
	.string	"_maxwds"
.LASF58:
	.string	"_reent"
.LASF104:
	.string	"_seed"
.LASF167:
	.string	"timer_alarm_handler"
.LASF25:
	.string	"__count"
.LASF26:
	.string	"__value"
.LASF89:
	.string	"_seek"
.LASF149:
	.string	"owner"
.LASF20:
	.string	"_fpos_t"
.LASF169:
	.string	"first"
.LASF189:
	.string	"esp_timer_start_periodic"
.LASF200:
	.string	"_frxt_setup_switch"
.LASF139:
	.string	"ESP_LOG_NONE"
.LASF154:
	.string	"SemaphoreHandle_t"
.LASF98:
	.string	"char"
.LASF144:
	.string	"ESP_LOG_VERBOSE"
.LASF57:
	.string	"_size"
.LASF7:
	.string	"unsigned int"
.LASF168:
	.string	"timer_process_alarm"
.LASF210:
	.string	"vTaskDelete"
.LASF196:
	.string	"vTaskExitCritical"
.LASF3:
	.string	"short int"
.LASF197:
	.string	"__assert_func"
.LASF5:
	.string	"__int32_t"
.LASF50:
	.string	"_is_cxa"
.LASF161:
	.string	"timer_armed"
.LASF130:
	.string	"period"
.LASF31:
	.string	"_next"
.LASF114:
	.string	"_strtok_last"
.LASF49:
	.string	"_fntypes"
.LASF113:
	.string	"_misc_reent"
.LASF213:
	.string	"esp_timer_impl_get_min_period_us"
.LASF106:
	.string	"_add"
.LASF29:
	.string	"__ULong"
.LASF119:
	.string	"_getdate_err"
.LASF203:
	.string	"snprintf"
.LASF174:
	.string	"args"
.LASF66:
	.string	"_current_category"
.LASF13:
	.string	"uint32_t"
.LASF170:
	.string	"timer_task"
.LASF141:
	.string	"ESP_LOG_WARN"
.LASF160:
	.string	"timer_list_unlock"
.LASF215:
	.string	"C:/esp/esp-idf/components/esp32/esp_timer.c"
.LASF126:
	.string	"esp_err_t"
.LASF180:
	.string	"esp_timer_init"
.LASF34:
	.string	"_wds"
.LASF100:
	.string	"_glue"
.LASF60:
	.string	"_stdin"
.LASF42:
	.string	"__tm_year"
.LASF193:
	.string	"s_timer_semaphore"
.LASF118:
	.string	"_l64a_buf"
.LASF35:
	.string	"_Bigint"
.LASF75:
	.string	"_sig_func"
.LASF163:
	.string	"timer"
.LASF148:
	.string	"TickType_t"
.LASF166:
	.string	"need_yield"
.LASF212:
	.string	"fputs"
.LASF92:
	.string	"_nbuf"
.LASF177:
	.string	"esp_timer_create"
.LASF45:
	.string	"__tm_isdst"
.LASF165:
	.string	"timer_remove"
.LASF38:
	.string	"__tm_min"
.LASF72:
	.string	"_r48"
.LASF201:
	.string	"esp_timer_impl_get_time"
.LASF194:
	.string	"s_timer_lock"
.LASF111:
	.string	"_p5s"
.LASF159:
	.string	"timer_list_lock"
.LASF84:
	.string	"_lbfsize"
.LASF187:
	.string	"esp_timer_start_once"
.LASF176:
	.string	"result"
.LASF128:
	.string	"esp_timer"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-73-ge28a011) 5.2.0"
