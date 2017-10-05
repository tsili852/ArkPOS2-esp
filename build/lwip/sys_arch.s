	.file	"sys_arch.c"
	.text
.Ltext0:
	.section	.text.sys_thread_tls_free,"ax",@progbits
	.align	4
	.type	sys_thread_tls_free, @function
sys_thread_tls_free:
.LFB35:
	.file 1 "C:/esp/esp-idf/components/lwip/port/freertos/sys_arch.c"
	.loc 1 500 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LVL1:
	.loc 1 503 0
	beqz.n	a3, .L2
	.loc 1 503 0 is_stmt 0 discriminator 1
	l32i.n	a10, a3, 0
	beqz.n	a10, .L2
	.loc 1 505 0 is_stmt 1
	call8	vQueueDelete
.LVL2:
.L2:
	.loc 1 508 0
	beqz.n	a3, .L1
	.loc 1 510 0
	mov.n	a10, a3
	call8	free
.LVL3:
.L1:
	retw.n
.LFE35:
	.size	sys_thread_tls_free, .-sys_thread_tls_free
	.section	.text.sys_mutex_new,"ax",@progbits
	.align	4
	.global	sys_mutex_new
	.type	sys_mutex_new, @function
sys_mutex_new:
.LFB13:
	.loc 1 55 0
.LVL4:
	entry	sp, 32
.LCFI1:
.LVL5:
	.loc 1 58 0
	movi.n	a10, 1
	call8	xQueueCreateMutex
.LVL6:
	s32i.n	a10, a2, 0
	.loc 1 60 0
	bnez.n	a10, .L6
	.loc 1 56 0
	movi	a2, 0xff
.LVL7:
	retw.n
.LVL8:
.L6:
	.loc 1 61 0
	movi.n	a2, 0
.LVL9:
	.loc 1 67 0
	retw.n
.LFE13:
	.size	sys_mutex_new, .-sys_mutex_new
	.section	.text.sys_mutex_lock,"ax",@progbits
	.align	4
	.global	sys_mutex_lock
	.type	sys_mutex_lock, @function
sys_mutex_lock:
.LFB14:
	.loc 1 73 0
.LVL10:
	entry	sp, 32
.LCFI2:
.L8:
	.loc 1 74 0 discriminator 1
	movi.n	a13, 0
	movi.n	a12, -1
	mov.n	a11, a13
	l32i.n	a10, a2, 0
	call8	xQueueGenericReceive
.LVL11:
	bnei	a10, 1, .L8
	.loc 1 75 0
	retw.n
.LFE14:
	.size	sys_mutex_lock, .-sys_mutex_lock
	.section	.text.sys_mutex_trylock,"ax",@progbits
	.align	4
	.global	sys_mutex_trylock
	.type	sys_mutex_trylock, @function
sys_mutex_trylock:
.LFB15:
	.loc 1 79 0
.LVL12:
	entry	sp, 32
.LCFI3:
	.loc 1 80 0
	movi.n	a13, 0
	mov.n	a12, a13
	mov.n	a11, a13
	l32i.n	a10, a2, 0
	call8	xQueueGenericReceive
.LVL13:
	bnei	a10, 1, .L11
	.loc 1 80 0
	movi.n	a2, 0
.LVL14:
	retw.n
.LVL15:
.L11:
	.loc 1 81 0
	movi	a2, 0xff
.LVL16:
	.loc 1 82 0
	retw.n
.LFE15:
	.size	sys_mutex_trylock, .-sys_mutex_trylock
	.section	.text.sys_mutex_unlock,"ax",@progbits
	.align	4
	.global	sys_mutex_unlock
	.type	sys_mutex_unlock, @function
sys_mutex_unlock:
.LFB16:
	.loc 1 88 0
.LVL17:
	entry	sp, 32
.LCFI4:
	.loc 1 89 0
	movi.n	a13, 0
	mov.n	a12, a13
	mov.n	a11, a13
	l32i.n	a10, a2, 0
	call8	xQueueGenericSend
.LVL18:
	retw.n
.LFE16:
	.size	sys_mutex_unlock, .-sys_mutex_unlock
	.section	.text.sys_mutex_free,"ax",@progbits
	.align	4
	.global	sys_mutex_free
	.type	sys_mutex_free, @function
sys_mutex_free:
.LFB17:
	.loc 1 96 0
.LVL19:
	entry	sp, 32
.LCFI5:
	.loc 1 98 0
	l32i.n	a10, a2, 0
	call8	vQueueDelete
.LVL20:
	retw.n
.LFE17:
	.size	sys_mutex_free, .-sys_mutex_free
	.section	.text.sys_sem_new,"ax",@progbits
	.align	4
	.global	sys_sem_new
	.type	sys_sem_new, @function
sys_sem_new:
.LFB18:
	.loc 1 107 0
.LVL21:
	entry	sp, 32
.LCFI6:
	extui	a3, a3, 0, 8
.LVL22:
	.loc 1 109 0
	movi.n	a12, 3
	movi.n	a11, 0
	movi.n	a10, 1
	call8	xQueueGenericCreate
.LVL23:
	s32i.n	a10, a2, 0
	beqz.n	a10, .L15
	.loc 1 109 0 discriminator 1
	movi.n	a13, 0
	mov.n	a12, a13
	mov.n	a11, a13
	call8	xQueueGenericSend
.LVL24:
.L15:
	.loc 1 111 0
	l32i.n	a10, a2, 0
	beqz.n	a10, .L17
	.loc 1 112 0
	bnez.n	a3, .L18
	.loc 1 113 0
	movi.n	a13, 0
	movi.n	a12, 1
	mov.n	a11, a13
	call8	xQueueGenericReceive
.LVL25:
	.loc 1 116 0
	movi.n	a2, 0
.LVL26:
	retw.n
.LVL27:
.L17:
	.loc 1 108 0
	movi	a2, 0xff
.LVL28:
	retw.n
.LVL29:
.L18:
	.loc 1 116 0
	movi.n	a2, 0
.LVL30:
	.loc 1 122 0
	retw.n
.LFE18:
	.size	sys_sem_new, .-sys_sem_new
	.section	.text.sys_sem_signal,"ax",@progbits
	.align	4
	.global	sys_sem_signal
	.type	sys_sem_signal, @function
sys_sem_signal:
.LFB19:
	.loc 1 128 0
.LVL31:
	entry	sp, 32
.LCFI7:
	.loc 1 129 0
	movi.n	a13, 0
	mov.n	a12, a13
	mov.n	a11, a13
	l32i.n	a10, a2, 0
	call8	xQueueGenericSend
.LVL32:
	retw.n
.LFE19:
	.size	sys_sem_signal, .-sys_sem_signal
	.section	.text.sys_arch_sem_wait,"ax",@progbits
	.literal_position
	.literal .LC0, -858993459
	.align	4
	.global	sys_arch_sem_wait
	.type	sys_arch_sem_wait, @function
sys_arch_sem_wait:
.LFB20:
	.loc 1 150 0
.LVL33:
	entry	sp, 32
.LCFI8:
	.loc 1 154 0
	call8	xTaskGetTickCount
.LVL34:
	mov.n	a4, a10
.LVL35:
	.loc 1 156 0
	beqz.n	a3, .L21
	.loc 1 157 0
	l32r	a12, .LC0
	muluh	a12, a3, a12
	movi.n	a13, 0
	srli	a12, a12, 3
	mov.n	a11, a13
	l32i.n	a10, a2, 0
	call8	xQueueGenericReceive
.LVL36:
	bnei	a10, 1, .L23
	.loc 1 158 0
	call8	xTaskGetTickCount
.LVL37:
	.loc 1 159 0
	sub	a10, a10, a4
.LVL38:
	addx4	a10, a10, a10
	slli	a2, a10, 1
.LVL39:
	.loc 1 161 0
	beqz.n	a2, .L24
	retw.n
.LVL40:
.L21:
	.loc 1 170 0 discriminator 1
	movi.n	a13, 0
	movi.n	a12, -1
	mov.n	a11, a13
	l32i.n	a10, a2, 0
	call8	xQueueGenericReceive
.LVL41:
	bnei	a10, 1, .L21
	.loc 1 172 0
	call8	xTaskGetTickCount
.LVL42:
	.loc 1 173 0
	sub	a10, a10, a4
.LVL43:
	addx4	a10, a10, a10
	slli	a2, a10, 1
.LVL44:
	.loc 1 175 0
	beqz.n	a2, .L25
	retw.n
.LVL45:
.L23:
	.loc 1 167 0
	movi.n	a2, -1
.LVL46:
	retw.n
.LVL47:
.L24:
	.loc 1 162 0
	movi.n	a2, 1
.LVL48:
	retw.n
.LVL49:
.L25:
	.loc 1 176 0
	movi.n	a2, 1
.LVL50:
	.loc 1 183 0
	retw.n
.LFE20:
	.size	sys_arch_sem_wait, .-sys_arch_sem_wait
	.section	.text.sys_sem_free,"ax",@progbits
	.align	4
	.global	sys_sem_free
	.type	sys_sem_free, @function
sys_sem_free:
.LFB21:
	.loc 1 189 0
.LVL51:
	entry	sp, 32
.LCFI9:
	.loc 1 190 0
	l32i.n	a10, a2, 0
	call8	vQueueDelete
.LVL52:
	retw.n
.LFE21:
	.size	sys_sem_free, .-sys_sem_free
	.section	.text.sys_mbox_new,"ax",@progbits
	.align	4
	.global	sys_mbox_new
	.type	sys_mbox_new, @function
sys_mbox_new:
.LFB22:
	.loc 1 197 0
.LVL53:
	entry	sp, 32
.LCFI10:
	.loc 1 198 0
	movi.n	a10, 0xc
	call8	malloc
.LVL54:
	mov.n	a4, a10
	s32i.n	a10, a2, 0
	.loc 1 199 0
	beqz.n	a10, .L31
	.loc 1 204 0
	movi.n	a12, 0
	movi.n	a11, 4
	mov.n	a10, a3
	call8	xQueueGenericCreate
.LVL55:
	s32i.n	a10, a4, 0
	.loc 1 206 0
	l32i.n	a10, a2, 0
	l32i.n	a3, a10, 0
.LVL56:
	bnez.n	a3, .L29
	.loc 1 208 0
	call8	free
.LVL57:
	.loc 1 209 0
	movi	a10, 0xff
	j	.L28
.L29:
	.loc 1 212 0
	addi.n	a10, a10, 4
	call8	sys_mutex_new
.LVL58:
	extui	a10, a10, 0, 8
	beqz.n	a10, .L30
	.loc 1 214 0
	l32i.n	a3, a2, 0
	l32i.n	a10, a3, 0
	call8	vQueueDelete
.LVL59:
	.loc 1 215 0
	l32i.n	a10, a2, 0
	call8	free
.LVL60:
	.loc 1 216 0
	movi	a10, 0xff
	j	.L28
.L30:
	.loc 1 219 0
	l32i.n	a2, a2, 0
.LVL61:
	movi.n	a3, 1
	s8i	a3, a2, 8
	.loc 1 222 0
	j	.L28
.LVL62:
.L31:
	.loc 1 201 0
	movi	a10, 0xff
.LVL63:
.L28:
	.loc 1 223 0
	mov.n	a2, a10
	retw.n
.LFE22:
	.size	sys_mbox_new, .-sys_mbox_new
	.section	.text.sys_mbox_post,"ax",@progbits
	.align	4
	.global	sys_mbox_post
	.type	sys_mbox_post, @function
sys_mbox_post:
.LFB23:
	.loc 1 229 0
.LVL64:
	entry	sp, 48
.LCFI11:
	s32i.n	a3, sp, 0
.LVL65:
.L33:
	.loc 1 230 0 discriminator 1
	l32i.n	a8, a2, 0
	movi.n	a13, 0
	movi.n	a12, -1
	mov.n	a11, sp
.LVL66:
	l32i.n	a10, a8, 0
	call8	xQueueGenericSend
.LVL67:
	bnei	a10, 1, .L33
	.loc 1 231 0
	retw.n
.LFE23:
	.size	sys_mbox_post, .-sys_mbox_post
	.section	.text.sys_mbox_trypost,"ax",@progbits
	.align	4
	.global	sys_mbox_trypost
	.type	sys_mbox_trypost, @function
sys_mbox_trypost:
.LFB24:
	.loc 1 236 0
.LVL68:
	entry	sp, 48
.LCFI12:
	s32i.n	a3, sp, 0
	.loc 1 239 0
	l32i.n	a8, a2, 0
	movi.n	a13, 0
	mov.n	a12, a13
	mov.n	a11, sp
	l32i.n	a10, a8, 0
	call8	xQueueGenericSend
.LVL69:
	bnei	a10, 1, .L36
	.loc 1 240 0
	movi.n	a2, 0
.LVL70:
	retw.n
.LVL71:
.L36:
	.loc 1 243 0
	movi	a2, 0xff
.LVL72:
	.loc 1 247 0
	retw.n
.LFE24:
	.size	sys_mbox_trypost, .-sys_mbox_trypost
	.section	.text.sys_arch_mbox_fetch,"ax",@progbits
	.literal_position
	.literal .LC1, -858993459
	.align	4
	.global	sys_arch_mbox_fetch
	.type	sys_arch_mbox_fetch, @function
sys_arch_mbox_fetch:
.LFB25:
	.loc 1 267 0
.LVL73:
	entry	sp, 48
.LCFI13:
	.loc 1 272 0
	call8	xTaskGetTickCount
.LVL74:
	mov.n	a5, a10
.LVL75:
	.loc 1 273 0
	bnez.n	a3, .L38
	.loc 1 274 0
	mov.n	a3, sp
.LVL76:
.L38:
	.loc 1 277 0
	l32i.n	a10, a2, 0
	bnez.n	a10, .L39
	.loc 1 278 0
	movi.n	a2, 0
.LVL77:
	s32i.n	a2, a3, 0
	.loc 1 280 0
	movi.n	a2, -1
	retw.n
.LVL78:
.L39:
	.loc 1 283 0
	addi.n	a10, a10, 4
	call8	sys_mutex_lock
.LVL79:
	.loc 1 285 0
	beqz.n	a4, .L41
	.loc 1 286 0
	l32i.n	a8, a2, 0
	l32r	a12, .LC1
	muluh	a12, a4, a12
	movi.n	a13, 0
	srli	a12, a12, 3
	mov.n	a11, a3
	l32i.n	a10, a8, 0
	call8	xQueueGenericReceive
.LVL80:
	bnei	a10, 1, .L42
	.loc 1 287 0
	call8	xTaskGetTickCount
.LVL81:
	.loc 1 288 0
	sub	a10, a10, a5
.LVL82:
	addx4	a5, a10, a10
.LVL83:
	slli	a3, a5, 1
.LVL84:
	mov.n	a5, a3
.LVL85:
	.loc 1 290 0
	beqz.n	a3, .L46
	j	.L43
.LVL86:
.L42:
	.loc 1 296 0
	movi.n	a4, 0
.LVL87:
	s32i.n	a4, a3, 0
.LVL88:
	.loc 1 297 0
	movi.n	a3, -1
.LVL89:
	j	.L43
.LVL90:
.L41:
	.loc 1 303 0
	l32i.n	a8, a2, 0
	movi.n	a13, 0
	movi.n	a12, -1
	mov.n	a11, a3
	l32i.n	a10, a8, 0
	call8	xQueueGenericReceive
.LVL91:
	beqi	a10, 1, .L44
	.loc 1 308 0
	l32i.n	a8, a2, 0
	l8ui	a8, a8, 8
	bnez.n	a8, .L41
	.loc 1 310 0
	movi.n	a4, 0
.LVL92:
	s32i.n	a4, a3, 0
.L44:
	.loc 1 315 0
	call8	xTaskGetTickCount
.LVL93:
	.loc 1 316 0
	sub	a10, a10, a5
.LVL94:
	addx4	a10, a10, a10
	slli	a3, a10, 1
.LVL95:
	.loc 1 318 0
	beqz.n	a3, .L47
	j	.L43
.LVL96:
.L46:
	.loc 1 291 0
	movi.n	a3, 1
.LVL97:
	j	.L43
.LVL98:
.L47:
	.loc 1 319 0
	movi.n	a3, 1
.LVL99:
.L43:
	.loc 1 325 0
	l32i.n	a10, a2, 0
	addi.n	a10, a10, 4
	call8	sys_mutex_unlock
.LVL100:
	.loc 1 327 0
	mov.n	a2, a3
.LVL101:
	.loc 1 328 0
	retw.n
.LFE25:
	.size	sys_arch_mbox_fetch, .-sys_arch_mbox_fetch
	.section	.text.sys_arch_mbox_tryfetch,"ax",@progbits
	.align	4
	.global	sys_arch_mbox_tryfetch
	.type	sys_arch_mbox_tryfetch, @function
sys_arch_mbox_tryfetch:
.LFB26:
	.loc 1 333 0
.LVL102:
	entry	sp, 48
.LCFI14:
	mov.n	a11, a3
	.loc 1 337 0
	bnez.n	a3, .L49
	.loc 1 338 0
	mov.n	a11, sp
.L49:
.LVL103:
	.loc 1 341 0
	l32i.n	a8, a2, 0
	movi.n	a13, 0
	mov.n	a12, a13
	l32i.n	a10, a8, 0
	call8	xQueueGenericReceive
.LVL104:
	bnei	a10, 1, .L52
	.loc 1 342 0
	movi.n	a2, 0
.LVL105:
	retw.n
.LVL106:
.L52:
	.loc 1 344 0
	movi.n	a2, -1
.LVL107:
	.loc 1 348 0
	retw.n
.LFE26:
	.size	sys_arch_mbox_tryfetch, .-sys_arch_mbox_tryfetch
	.section	.text.sys_thread_new,"ax",@progbits
	.literal_position
	.literal .LC2, 2147483647
	.align	4
	.global	sys_thread_new
	.type	sys_thread_new, @function
sys_thread_new:
.LFB28:
	.loc 1 415 0
.LVL108:
	entry	sp, 64
.LCFI15:
	.loc 1 419 0
	l32r	a8, .LC2
	s32i.n	a8, sp, 0
	addi	a15, sp, 16
	mov.n	a14, a6
	mov.n	a13, a4
	mov.n	a12, a5
	mov.n	a11, a2
	mov.n	a10, a3
	call8	xTaskCreatePinnedToCore
.LVL109:
	.loc 1 421 0
	bnei	a10, 1, .L55
	.loc 1 422 0
	l32i.n	a2, sp, 16
.LVL110:
	retw.n
.LVL111:
.L55:
	.loc 1 424 0
	movi.n	a2, 0
.LVL112:
	.loc 1 426 0
	retw.n
.LFE28:
	.size	sys_thread_new, .-sys_thread_new
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC4:
	.string	"lwip_arch"
	.align	4
.LC6:
	.string	"\033[0;31mE (%d) %s: sys_init: failed to init lwip protect mutex\n\033[0m\n"
	.section	.text.sys_init,"ax",@progbits
	.literal_position
	.literal .LC3, g_lwip_protect_mutex
	.literal .LC5, .LC4
	.literal .LC7, .LC6
	.align	4
	.global	sys_init
	.type	sys_init, @function
sys_init:
.LFB29:
	.loc 1 432 0
	entry	sp, 32
.LCFI16:
	.loc 1 433 0
	l32r	a10, .LC3
	call8	sys_mutex_new
.LVL113:
	extui	a10, a10, 0, 8
	beqz.n	a10, .L56
	.loc 1 434 0 discriminator 1
	call8	esp_log_timestamp
.LVL114:
	l32r	a11, .LC5
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC7
	movi.n	a10, 1
	call8	esp_log_write
.LVL115:
.L56:
	retw.n
.LFE29:
	.size	sys_init, .-sys_init
	.section	.text.sys_jiffies,"ax",@progbits
	.align	4
	.global	sys_jiffies
	.type	sys_jiffies, @function
sys_jiffies:
.LFB30:
	.loc 1 441 0
	entry	sp, 32
.LCFI17:
	.loc 1 442 0
	call8	xTaskGetTickCount
.LVL116:
	.loc 1 443 0
	mov.n	a2, a10
	retw.n
.LFE30:
	.size	sys_jiffies, .-sys_jiffies
	.section	.text.sys_now,"ax",@progbits
	.align	4
	.global	sys_now
	.type	sys_now, @function
sys_now:
.LFB31:
	.loc 1 448 0
	entry	sp, 32
.LCFI18:
	.loc 1 449 0
	call8	xTaskGetTickCount
.LVL117:
	addx4	a10, a10, a10
	slli	a2, a10, 1
	.loc 1 450 0
	retw.n
.LFE31:
	.size	sys_now, .-sys_now
	.section	.text.sys_arch_protect,"ax",@progbits
	.literal_position
	.literal .LC8, g_lwip_protect_mutex
	.align	4
	.global	sys_arch_protect
	.type	sys_arch_protect, @function
sys_arch_protect:
.LFB32:
	.loc 1 467 0
	entry	sp, 32
.LCFI19:
	.loc 1 468 0
	l32r	a10, .LC8
	call8	sys_mutex_lock
.LVL118:
	.loc 1 470 0
	movi.n	a2, 1
	retw.n
.LFE32:
	.size	sys_arch_protect, .-sys_arch_protect
	.section	.text.sys_arch_unprotect,"ax",@progbits
	.literal_position
	.literal .LC9, g_lwip_protect_mutex
	.align	4
	.global	sys_arch_unprotect
	.type	sys_arch_unprotect, @function
sys_arch_unprotect:
.LFB33:
	.loc 1 481 0
.LVL119:
	entry	sp, 32
.LCFI20:
	.loc 1 482 0
	l32r	a10, .LC9
	call8	sys_mutex_unlock
.LVL120:
	retw.n
.LFE33:
	.size	sys_arch_unprotect, .-sys_arch_unprotect
	.section	.rodata.str1.4
	.align	4
.LC11:
	.string	"\033[0;31mE (%d) %s: thread_sem_init: out of memory\033[0m\n"
	.section	.text.sys_thread_sem_init,"ax",@progbits
	.literal_position
	.literal .LC10, .LC4
	.literal .LC12, .LC11
	.literal .LC13, sys_thread_tls_free
	.align	4
	.global	sys_thread_sem_init
	.type	sys_thread_sem_init, @function
sys_thread_sem_init:
.LFB36:
	.loc 1 515 0
	entry	sp, 32
.LCFI21:
	.loc 1 516 0
	movi.n	a10, 4
	call8	malloc
.LVL121:
	mov.n	a2, a10
.LVL122:
	.loc 1 518 0
	bnez.n	a10, .L63
	.loc 1 519 0 discriminator 1
	call8	esp_log_timestamp
.LVL123:
	l32r	a11, .LC10
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC12
	movi.n	a10, 1
	call8	esp_log_write
.LVL124:
	.loc 1 520 0 discriminator 1
	retw.n
.L63:
	.loc 1 523 0
	movi.n	a12, 3
	movi.n	a11, 0
	movi.n	a10, 1
	call8	xQueueGenericCreate
.LVL125:
	s32i.n	a10, a2, 0
	.loc 1 524 0
	bnez.n	a10, .L65
	.loc 1 525 0
	mov.n	a10, a2
	call8	free
.LVL126:
	.loc 1 526 0
	call8	esp_log_timestamp
.LVL127:
	l32r	a11, .LC10
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC12
	movi.n	a10, 1
	call8	esp_log_write
.LVL128:
	.loc 1 527 0
	movi.n	a2, 0
.LVL129:
	retw.n
.LVL130:
.L65:
	.loc 1 531 0
	call8	xTaskGetCurrentTaskHandle
.LVL131:
	l32r	a13, .LC13
	mov.n	a12, a2
	movi.n	a11, 0
	call8	vTaskSetThreadLocalStoragePointerAndDelCallback
.LVL132:
	.loc 1 534 0
	retw.n
.LFE36:
	.size	sys_thread_sem_init, .-sys_thread_sem_init
	.section	.text.sys_thread_sem_get,"ax",@progbits
	.align	4
	.global	sys_thread_sem_get
	.type	sys_thread_sem_get, @function
sys_thread_sem_get:
.LFB34:
	.loc 1 490 0
	entry	sp, 32
.LCFI22:
	.loc 1 491 0
	call8	xTaskGetCurrentTaskHandle
.LVL133:
	movi.n	a11, 0
	call8	pvTaskGetThreadLocalStoragePointer
.LVL134:
	.loc 1 492 0
	bnez.n	a10, .L67
	.loc 1 493 0
	call8	sys_thread_sem_init
.LVL135:
.L67:
	.loc 1 497 0
	mov.n	a2, a10
	retw.n
.LFE34:
	.size	sys_thread_sem_get, .-sys_thread_sem_get
	.section	.text.sys_thread_sem_deinit,"ax",@progbits
	.align	4
	.global	sys_thread_sem_deinit
	.type	sys_thread_sem_deinit, @function
sys_thread_sem_deinit:
.LFB37:
	.loc 1 537 0
	entry	sp, 32
.LCFI23:
	.loc 1 538 0
	call8	xTaskGetCurrentTaskHandle
.LVL136:
	movi.n	a11, 0
	call8	pvTaskGetThreadLocalStoragePointer
.LVL137:
	.loc 1 540 0
	mov.n	a11, a10
	movi.n	a10, 0
.LVL138:
	call8	sys_thread_tls_free
.LVL139:
	.loc 1 541 0
	call8	xTaskGetCurrentTaskHandle
.LVL140:
	movi.n	a13, 0
	mov.n	a12, a13
	mov.n	a11, a13
	call8	vTaskSetThreadLocalStoragePointerAndDelCallback
.LVL141:
	retw.n
.LFE37:
	.size	sys_thread_sem_deinit, .-sys_thread_sem_deinit
	.section	.text.sys_delay_ms,"ax",@progbits
	.literal_position
	.literal .LC14, -858993459
	.align	4
	.global	sys_delay_ms
	.type	sys_delay_ms, @function
sys_delay_ms:
.LFB38:
	.loc 1 547 0
.LVL142:
	entry	sp, 32
.LCFI24:
	.loc 1 548 0
	l32r	a8, .LC14
	muluh	a10, a2, a8
	srli	a10, a10, 3
	call8	vTaskDelay
.LVL143:
	retw.n
.LFE38:
	.size	sys_delay_ms, .-sys_delay_ms
	.section	.rodata.str1.4
	.align	4
.LC16:
	.string	"\033[0;33mW (%d) %s: WARNING: mbox %p had a consumer who never unblocked. Leaking!\n\033[0m\n"
	.section	.text.sys_mbox_free,"ax",@progbits
	.literal_position
	.literal .LC15, .LC4
	.literal .LC17, .LC16
	.align	4
	.global	sys_mbox_free
	.type	sys_mbox_free, @function
sys_mbox_free:
.LFB27:
	.loc 1 358 0
.LVL144:
	entry	sp, 32
.LCFI25:
.LVL145:
	.loc 1 365 0
	l32i.n	a3, a2, 0
	movi.n	a4, 0
	s8i	a4, a3, 8
	.loc 1 362 0
	movi.n	a4, 1
	.loc 1 361 0
	movi.n	a8, 0
	.loc 1 367 0
	j	.L71
.LVL146:
.L76:
	.loc 1 369 0
	l32i.n	a10, a2, 0
	addi.n	a10, a10, 4
	call8	sys_mutex_trylock
.LVL147:
	extui	a10, a10, 0, 8
	bnez.n	a10, .L72
	.loc 1 371 0
	l32i.n	a10, a2, 0
	addi.n	a10, a10, 4
	call8	sys_mutex_unlock
.LVL148:
	.loc 1 372 0
	j	.L73
.L72:
	.loc 1 375 0
	beqz.n	a4, .L74
	.loc 1 377 0
	movi.n	a11, 0
	mov.n	a10, a2
	call8	sys_mbox_trypost
.LVL149:
	extui	a10, a10, 0, 8
	bnez.n	a10, .L74
	.loc 1 381 0
	movi.n	a4, 0
.LVL150:
.L74:
	.loc 1 386 0
	movi	a8, 0x63
	bne	a3, a8, .L75
	.loc 1 387 0 discriminator 1
	call8	esp_log_timestamp
.LVL151:
	l32i.n	a8, a2, 0
	l32r	a11, .LC15
	l32i.n	a15, a8, 0
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC17
	movi.n	a10, 2
	call8	esp_log_write
.LVL152:
.L75:
	.loc 1 389 0
	movi.n	a10, 0x14
	call8	sys_delay_ms
.LVL153:
	.loc 1 367 0
	mov.n	a8, a3
.LVL154:
.L71:
	addi.n	a3, a8, 1
	extui	a3, a3, 0, 16
.LVL155:
	movi	a9, 0x63
	bgeu	a9, a8, .L76
.L73:
	.loc 1 394 0
	l32i.n	a3, a2, 0
.LVL156:
	l32i.n	a10, a3, 0
	call8	uxQueueMessagesWaiting
.LVL157:
	beqz.n	a10, .L77
	.loc 1 395 0
	l32i.n	a3, a2, 0
	movi.n	a11, 0
	l32i.n	a10, a3, 0
	call8	xQueueGenericReset
.LVL158:
	.loc 1 397 0
#APP
# 397 "C:/esp/esp-idf/components/lwip/port/freertos/sys_arch.c" 1
	nop
# 0 "" 2
#NO_APP
.L77:
	.loc 1 400 0
	l32i.n	a3, a2, 0
	l32i.n	a10, a3, 0
	call8	vQueueDelete
.LVL159:
	.loc 1 401 0
	l32i.n	a10, a2, 0
	addi.n	a10, a10, 4
	call8	sys_mutex_free
.LVL160:
	.loc 1 402 0
	l32i.n	a10, a2, 0
	call8	free
.LVL161:
	.loc 1 403 0
	movi.n	a3, 0
	s32i.n	a3, a2, 0
	retw.n
.LFE27:
	.size	sys_mbox_free, .-sys_mbox_free
	.section	.bss.g_lwip_protect_mutex,"aw",@nobits
	.align	4
	.type	g_lwip_protect_mutex, @object
	.size	g_lwip_protect_mutex, 4
g_lwip_protect_mutex:
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
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI0-.LFB35
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
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI2-.LFB14
	.byte	0xe
	.uleb128 0x20
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
	.uleb128 0x20
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
	.uleb128 0x20
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
	.uleb128 0x20
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
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI10-.LFB22
	.byte	0xe
	.uleb128 0x20
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
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI15-.LFB28
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI16-.LFB29
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI17-.LFB30
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI18-.LFB31
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI19-.LFB32
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE38:
.LSFDE40:
	.4byte	.LEFDE40-.LASFDE40
.LASFDE40:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI20-.LFB33
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE40:
.LSFDE42:
	.4byte	.LEFDE42-.LASFDE42
.LASFDE42:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI21-.LFB36
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE42:
.LSFDE44:
	.4byte	.LEFDE44-.LASFDE44
.LASFDE44:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI22-.LFB34
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE44:
.LSFDE46:
	.4byte	.LEFDE46-.LASFDE46
.LASFDE46:
	.4byte	.Lframe0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x4
	.4byte	.LCFI23-.LFB37
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE46:
.LSFDE48:
	.4byte	.LEFDE48-.LASFDE48
.LASFDE48:
	.4byte	.Lframe0
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x4
	.4byte	.LCFI24-.LFB38
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE48:
.LSFDE50:
	.4byte	.LEFDE50-.LASFDE50
.LASFDE50:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI25-.LFB27
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE50:
	.text
.Letext0:
	.file 2 "C:/esp/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "C:/esp/esp-idf/components/newlib/include/stdint.h"
	.file 4 "C:/esp/esp-idf/components/freertos/include/freertos/portmacro.h"
	.file 5 "C:/esp/esp-idf/components/freertos/include/freertos/task.h"
	.file 6 "C:/esp/esp-idf/components/freertos/include/freertos/queue.h"
	.file 7 "C:/esp/esp-idf/components/freertos/include/freertos/semphr.h"
	.file 8 "C:/esp/esp-idf/components/lwip/include/lwip/port/arch/sys_arch.h"
	.file 9 "C:/esp/esp-idf/components/lwip/include/lwip/port/arch/cc.h"
	.file 10 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/err.h"
	.file 11 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/sys.h"
	.file 12 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/memp.h"
	.file 13 "C:/esp/esp-idf/components/log/include/esp_log.h"
	.file 14 "C:/esp/esp-idf/components/newlib/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xec1
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF134
	.byte	0xc
	.4byte	.LASF135
	.4byte	.LASF136
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
	.4byte	.LASF3
	.byte	0x2
	.byte	0x11
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x2
	.byte	0x12
	.4byte	0x50
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x15
	.4byte	0x62
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x2
	.byte	0x16
	.4byte	0x74
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x2
	.byte	0x1a
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x14
	.4byte	0x33
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0x15
	.4byte	0x45
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x20
	.4byte	0x57
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x3
	.byte	0x21
	.4byte	0x69
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x3
	.byte	0x2d
	.4byte	0x82
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF17
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF18
	.uleb128 0x5
	.byte	0x4
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
	.4byte	0xd9
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF21
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x4
	.byte	0x6f
	.4byte	0x7b
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x4
	.byte	0x70
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x4
	.byte	0x76
	.4byte	0xc0
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x5
	.byte	0x6c
	.4byte	0xd9
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0x5
	.2byte	0x54d
	.4byte	0x144
	.uleb128 0x6
	.byte	0x4
	.4byte	0x14a
	.uleb128 0x8
	.4byte	0x15a
	.uleb128 0x9
	.4byte	0x7b
	.uleb128 0x9
	.4byte	0xd9
	.byte	0
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x6
	.byte	0x58
	.4byte	0xd9
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x7
	.byte	0x4f
	.4byte	0x15a
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0x8
	.byte	0x2e
	.4byte	0x165
	.uleb128 0x3
	.4byte	.LASF30
	.byte	0x8
	.byte	0x2f
	.4byte	0x165
	.uleb128 0x3
	.4byte	.LASF31
	.byte	0x8
	.byte	0x30
	.4byte	0x12d
	.uleb128 0xb
	.4byte	.LASF137
	.byte	0xc
	.byte	0x8
	.byte	0x32
	.4byte	0x1c2
	.uleb128 0xc
	.4byte	.LASF32
	.byte	0x8
	.byte	0x33
	.4byte	0x15a
	.byte	0
	.uleb128 0xc
	.4byte	.LASF33
	.byte	0x8
	.byte	0x34
	.4byte	0x17b
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF34
	.byte	0x8
	.byte	0x35
	.4byte	0x9f
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF35
	.byte	0x8
	.byte	0x36
	.4byte	0x1cd
	.uleb128 0x6
	.byte	0x4
	.4byte	0x191
	.uleb128 0x3
	.4byte	.LASF36
	.byte	0x9
	.byte	0x2e
	.4byte	0x9f
	.uleb128 0x3
	.4byte	.LASF37
	.byte	0x9
	.byte	0x2f
	.4byte	0x94
	.uleb128 0x3
	.4byte	.LASF38
	.byte	0x9
	.byte	0x31
	.4byte	0xaa
	.uleb128 0x3
	.4byte	.LASF39
	.byte	0x9
	.byte	0x32
	.4byte	0xc0
	.uleb128 0x3
	.4byte	.LASF40
	.byte	0x9
	.byte	0x36
	.4byte	0x7b
	.uleb128 0x3
	.4byte	.LASF41
	.byte	0xa
	.byte	0x2f
	.4byte	0x1de
	.uleb128 0x3
	.4byte	.LASF42
	.byte	0xb
	.byte	0x5d
	.4byte	0xf4
	.uleb128 0xd
	.byte	0x4
	.4byte	0x2c
	.byte	0xc
	.byte	0x2d
	.4byte	0x29f
	.uleb128 0xe
	.4byte	.LASF43
	.byte	0
	.uleb128 0xe
	.4byte	.LASF44
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF45
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF46
	.byte	0x3
	.uleb128 0xe
	.4byte	.LASF47
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF48
	.byte	0x5
	.uleb128 0xe
	.4byte	.LASF49
	.byte	0x6
	.uleb128 0xe
	.4byte	.LASF50
	.byte	0x7
	.uleb128 0xe
	.4byte	.LASF51
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF52
	.byte	0x9
	.uleb128 0xe
	.4byte	.LASF53
	.byte	0xa
	.uleb128 0xe
	.4byte	.LASF54
	.byte	0xb
	.uleb128 0xe
	.4byte	.LASF55
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF56
	.byte	0xd
	.uleb128 0xe
	.4byte	.LASF57
	.byte	0xe
	.uleb128 0xe
	.4byte	.LASF58
	.byte	0xf
	.uleb128 0xe
	.4byte	.LASF59
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF60
	.byte	0x11
	.uleb128 0xe
	.4byte	.LASF61
	.byte	0x12
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x2c
	.byte	0xd
	.byte	0x1f
	.4byte	0x2d0
	.uleb128 0xe
	.4byte	.LASF62
	.byte	0
	.uleb128 0xe
	.4byte	.LASF63
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF64
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF65
	.byte	0x3
	.uleb128 0xe
	.4byte	.LASF66
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF67
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF68
	.byte	0xd
	.byte	0x26
	.4byte	0x29f
	.uleb128 0xf
	.4byte	.LASF138
	.byte	0x1
	.2byte	0x1f3
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x335
	.uleb128 0x10
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x1f3
	.4byte	0x7b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x10
	.4byte	.LASF70
	.byte	0x1
	.2byte	0x1f3
	.4byte	0xd9
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x11
	.string	"sem"
	.byte	0x1
	.2byte	0x1f5
	.4byte	0x335
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x12
	.4byte	.LVL2
	.4byte	0xdfc
	.uleb128 0x13
	.4byte	.LVL3
	.4byte	0xe08
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x170
	.uleb128 0x15
	.4byte	.LASF73
	.byte	0x1
	.byte	0x36
	.4byte	0x20a
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x382
	.uleb128 0x16
	.4byte	.LASF71
	.byte	0x1
	.byte	0x36
	.4byte	0x382
	.4byte	.LLST0
	.uleb128 0x17
	.4byte	.LASF72
	.byte	0x1
	.byte	0x38
	.4byte	0x20a
	.4byte	.LLST1
	.uleb128 0x13
	.4byte	.LVL6
	.4byte	0xe13
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x17b
	.uleb128 0x18
	.4byte	.LASF75
	.byte	0x1
	.byte	0x48
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3c5
	.uleb128 0x19
	.4byte	.LASF71
	.byte	0x1
	.byte	0x48
	.4byte	0x382
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x13
	.4byte	.LVL11
	.4byte	0xe1f
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF74
	.byte	0x1
	.byte	0x4e
	.4byte	0x20a
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x407
	.uleb128 0x16
	.4byte	.LASF71
	.byte	0x1
	.byte	0x4e
	.4byte	0x382
	.4byte	.LLST2
	.uleb128 0x13
	.4byte	.LVL13
	.4byte	0xe1f
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF76
	.byte	0x1
	.byte	0x57
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x443
	.uleb128 0x19
	.4byte	.LASF71
	.byte	0x1
	.byte	0x57
	.4byte	0x382
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x13
	.4byte	.LVL18
	.4byte	0xe2b
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF77
	.byte	0x1
	.byte	0x5f
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x46f
	.uleb128 0x19
	.4byte	.LASF71
	.byte	0x1
	.byte	0x5f
	.4byte	0x382
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x12
	.4byte	.LVL20
	.4byte	0xdfc
	.byte	0
	.uleb128 0x15
	.4byte	.LASF78
	.byte	0x1
	.byte	0x6a
	.4byte	0x20a
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x507
	.uleb128 0x1a
	.string	"sem"
	.byte	0x1
	.byte	0x6a
	.4byte	0x335
	.4byte	.LLST3
	.uleb128 0x19
	.4byte	.LASF79
	.byte	0x1
	.byte	0x6a
	.4byte	0x1d3
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x17
	.4byte	.LASF72
	.byte	0x1
	.byte	0x6c
	.4byte	0x20a
	.4byte	.LLST4
	.uleb128 0x1b
	.4byte	.LVL23
	.4byte	0xe37
	.4byte	0x4d0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL24
	.4byte	0xe2b
	.4byte	0x4ed
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x13
	.4byte	.LVL25
	.4byte	0xe1f
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF80
	.byte	0x1
	.byte	0x7f
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x543
	.uleb128 0x1c
	.string	"sem"
	.byte	0x1
	.byte	0x7f
	.4byte	0x335
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x13
	.4byte	.LVL32
	.4byte	0xe2b
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF81
	.byte	0x1
	.byte	0x95
	.4byte	0x1f4
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x621
	.uleb128 0x1a
	.string	"sem"
	.byte	0x1
	.byte	0x95
	.4byte	0x335
	.4byte	.LLST5
	.uleb128 0x19
	.4byte	.LASF82
	.byte	0x1
	.byte	0x95
	.4byte	0x1f4
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1d
	.4byte	.LASF83
	.byte	0x1
	.byte	0x97
	.4byte	0x122
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x17
	.4byte	.LASF84
	.byte	0x1
	.byte	0x97
	.4byte	0x122
	.4byte	.LLST6
	.uleb128 0x17
	.4byte	.LASF85
	.byte	0x1
	.byte	0x97
	.4byte	0x122
	.4byte	.LLST7
	.uleb128 0x1d
	.4byte	.LASF86
	.byte	0x1
	.byte	0x98
	.4byte	0xdb
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x12
	.4byte	.LVL34
	.4byte	0xe43
	.uleb128 0x1b
	.4byte	.LVL36
	.4byte	0xe1f
	.4byte	0x5f0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1b
	.byte	0x73
	.sleb128 0
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0xf4
	.uleb128 0x25
	.byte	0x8
	.8byte	0xcccccccd
	.byte	0x1e
	.byte	0x8
	.byte	0x20
	.byte	0xf7
	.uleb128 0x25
	.byte	0x25
	.byte	0xf7
	.uleb128 0x2c
	.byte	0x33
	.byte	0x25
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x12
	.4byte	.LVL37
	.4byte	0xe43
	.uleb128 0x1b
	.4byte	.LVL41
	.4byte	0xe1f
	.4byte	0x617
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x12
	.4byte	.LVL42
	.4byte	0xe43
	.byte	0
	.uleb128 0x18
	.4byte	.LASF87
	.byte	0x1
	.byte	0xbc
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x64d
	.uleb128 0x1c
	.string	"sem"
	.byte	0x1
	.byte	0xbc
	.4byte	0x335
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x12
	.4byte	.LVL52
	.4byte	0xdfc
	.byte	0
	.uleb128 0x15
	.4byte	.LASF88
	.byte	0x1
	.byte	0xc4
	.4byte	0x20a
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6da
	.uleb128 0x16
	.4byte	.LASF89
	.byte	0x1
	.byte	0xc4
	.4byte	0x6da
	.4byte	.LLST8
	.uleb128 0x16
	.4byte	.LASF90
	.byte	0x1
	.byte	0xc4
	.4byte	0x7b
	.4byte	.LLST9
	.uleb128 0x1b
	.4byte	.LVL54
	.4byte	0xe4f
	.4byte	0x697
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL55
	.4byte	0xe37
	.4byte	0x6b5
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x12
	.4byte	.LVL57
	.4byte	0xe08
	.uleb128 0x12
	.4byte	.LVL58
	.4byte	0x33b
	.uleb128 0x12
	.4byte	.LVL59
	.4byte	0xdfc
	.uleb128 0x12
	.4byte	.LVL60
	.4byte	0xe08
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1c2
	.uleb128 0x18
	.4byte	.LASF91
	.byte	0x1
	.byte	0xe4
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x72d
	.uleb128 0x19
	.4byte	.LASF89
	.byte	0x1
	.byte	0xe4
	.4byte	0x6da
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1a
	.string	"msg"
	.byte	0x1
	.byte	0xe4
	.4byte	0xd9
	.4byte	.LLST10
	.uleb128 0x13
	.4byte	.LVL67
	.4byte	0xe2b
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF92
	.byte	0x1
	.byte	0xeb
	.4byte	0x20a
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x78a
	.uleb128 0x16
	.4byte	.LASF89
	.byte	0x1
	.byte	0xeb
	.4byte	0x6da
	.4byte	.LLST11
	.uleb128 0x1c
	.string	"msg"
	.byte	0x1
	.byte	0xeb
	.4byte	0xd9
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1d
	.4byte	.LASF72
	.byte	0x1
	.byte	0xed
	.4byte	0x20a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x13
	.4byte	.LVL69
	.4byte	0xe2b
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x10a
	.4byte	0x1f4
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8a8
	.uleb128 0x1f
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x10a
	.4byte	0x6da
	.4byte	.LLST12
	.uleb128 0x20
	.string	"msg"
	.byte	0x1
	.2byte	0x10a
	.4byte	0x8a8
	.4byte	.LLST13
	.uleb128 0x1f
	.4byte	.LASF82
	.byte	0x1
	.2byte	0x10a
	.4byte	0x1f4
	.4byte	.LLST14
	.uleb128 0x21
	.4byte	.LASF94
	.byte	0x1
	.2byte	0x10c
	.4byte	0xd9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x10d
	.4byte	0x122
	.4byte	.LLST15
	.uleb128 0x22
	.4byte	.LASF84
	.byte	0x1
	.2byte	0x10d
	.4byte	0x122
	.4byte	.LLST16
	.uleb128 0x22
	.4byte	.LASF85
	.byte	0x1
	.2byte	0x10d
	.4byte	0x122
	.4byte	.LLST17
	.uleb128 0x22
	.4byte	.LASF86
	.byte	0x1
	.2byte	0x10e
	.4byte	0xdb
	.4byte	.LLST18
	.uleb128 0x12
	.4byte	.LVL74
	.4byte	0xe43
	.uleb128 0x12
	.4byte	.LVL79
	.4byte	0x388
	.uleb128 0x1b
	.4byte	.LVL80
	.4byte	0xe1f
	.4byte	0x86d
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1b
	.byte	0x74
	.sleb128 0
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0xf4
	.uleb128 0x25
	.byte	0x8
	.8byte	0xcccccccd
	.byte	0x1e
	.byte	0x8
	.byte	0x20
	.byte	0xf7
	.uleb128 0x25
	.byte	0x25
	.byte	0xf7
	.uleb128 0x2c
	.byte	0x33
	.byte	0x25
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x12
	.4byte	.LVL81
	.4byte	0xe43
	.uleb128 0x1b
	.4byte	.LVL91
	.4byte	0xe1f
	.4byte	0x895
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x12
	.4byte	.LVL93
	.4byte	0xe43
	.uleb128 0x12
	.4byte	.LVL100
	.4byte	0x407
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xd9
	.uleb128 0x1e
	.4byte	.LASF95
	.byte	0x1
	.2byte	0x14c
	.4byte	0x1f4
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x91a
	.uleb128 0x1f
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x14c
	.4byte	0x6da
	.4byte	.LLST19
	.uleb128 0x20
	.string	"msg"
	.byte	0x1
	.2byte	0x14c
	.4byte	0x8a8
	.4byte	.LLST20
	.uleb128 0x21
	.4byte	.LASF96
	.byte	0x1
	.2byte	0x14e
	.4byte	0xd9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x21
	.4byte	.LASF86
	.byte	0x1
	.2byte	0x14f
	.4byte	0xdb
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x13
	.4byte	.LVL104
	.4byte	0xe1f
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF97
	.byte	0x1
	.2byte	0x19e
	.4byte	0x186
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9d2
	.uleb128 0x1f
	.4byte	.LASF98
	.byte	0x1
	.2byte	0x19e
	.4byte	0xe9
	.4byte	.LLST21
	.uleb128 0x10
	.4byte	.LASF99
	.byte	0x1
	.2byte	0x19e
	.4byte	0x215
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x23
	.string	"arg"
	.byte	0x1
	.2byte	0x19e
	.4byte	0xd9
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x10
	.4byte	.LASF100
	.byte	0x1
	.2byte	0x19e
	.4byte	0x7b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x10
	.4byte	.LASF101
	.byte	0x1
	.2byte	0x19e
	.4byte	0x7b
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x21
	.4byte	.LASF102
	.byte	0x1
	.2byte	0x1a0
	.4byte	0x12d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x21
	.4byte	.LASF103
	.byte	0x1
	.2byte	0x1a1
	.4byte	0x7b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x13
	.4byte	.LVL109
	.4byte	0xe5a
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x14
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x5
	.byte	0xc
	.4byte	0x7fffffff
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x1af
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa33
	.uleb128 0x1b
	.4byte	.LVL113
	.4byte	0x33b
	.4byte	0x9ff
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	g_lwip_protect_mutex
	.byte	0
	.uleb128 0x12
	.4byte	.LVL114
	.4byte	0xe66
	.uleb128 0x13
	.4byte	.LVL115
	.4byte	0xe71
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF105
	.byte	0x1
	.2byte	0x1b8
	.4byte	0x1f4
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa57
	.uleb128 0x12
	.4byte	.LVL116
	.4byte	0xe43
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF106
	.byte	0x1
	.2byte	0x1bf
	.4byte	0x1f4
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa7b
	.uleb128 0x12
	.4byte	.LVL117
	.4byte	0xe43
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF107
	.byte	0x1
	.2byte	0x1d2
	.4byte	0x1ff
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xaa9
	.uleb128 0x13
	.4byte	.LVL118
	.4byte	0x388
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	g_lwip_protect_mutex
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LASF108
	.byte	0x1
	.2byte	0x1e0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xae1
	.uleb128 0x10
	.4byte	.LASF109
	.byte	0x1
	.2byte	0x1e0
	.4byte	0x1ff
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x13
	.4byte	.LVL120
	.4byte	0x407
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	g_lwip_protect_mutex
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF110
	.byte	0x1
	.2byte	0x202
	.4byte	0x335
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbe5
	.uleb128 0x25
	.string	"sem"
	.byte	0x1
	.2byte	0x204
	.4byte	0x335
	.4byte	.LLST22
	.uleb128 0x1b
	.4byte	.LVL121
	.4byte	0xe4f
	.4byte	0xb1e
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x12
	.4byte	.LVL123
	.4byte	0xe66
	.uleb128 0x1b
	.4byte	.LVL124
	.4byte	0xe71
	.4byte	0xb55
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL125
	.4byte	0xe37
	.4byte	0xb72
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL126
	.4byte	0xe08
	.4byte	0xb86
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL127
	.4byte	0xe66
	.uleb128 0x1b
	.4byte	.LVL128
	.4byte	0xe71
	.4byte	0xbbd
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.uleb128 0x12
	.4byte	.LVL131
	.4byte	0xe7c
	.uleb128 0x13
	.4byte	.LVL132
	.4byte	0xe88
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	sys_thread_tls_free
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF111
	.byte	0x1
	.2byte	0x1e9
	.4byte	0x335
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc35
	.uleb128 0x25
	.string	"sem"
	.byte	0x1
	.2byte	0x1eb
	.4byte	0x335
	.4byte	.LLST23
	.uleb128 0x12
	.4byte	.LVL133
	.4byte	0xe7c
	.uleb128 0x1b
	.4byte	.LVL134
	.4byte	0xe94
	.4byte	0xc2b
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x12
	.4byte	.LVL135
	.4byte	0xae1
	.byte	0
	.uleb128 0x24
	.4byte	.LASF112
	.byte	0x1
	.2byte	0x218
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcad
	.uleb128 0x25
	.string	"sem"
	.byte	0x1
	.2byte	0x21a
	.4byte	0x335
	.4byte	.LLST24
	.uleb128 0x12
	.4byte	.LVL136
	.4byte	0xe7c
	.uleb128 0x1b
	.4byte	.LVL137
	.4byte	0xe94
	.4byte	0xc77
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL139
	.4byte	0x2db
	.4byte	0xc8a
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x12
	.4byte	.LVL140
	.4byte	0xe7c
	.uleb128 0x13
	.4byte	.LVL141
	.4byte	0xe88
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LASF113
	.byte	0x1
	.2byte	0x222
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcfa
	.uleb128 0x23
	.string	"ms"
	.byte	0x1
	.2byte	0x222
	.4byte	0xc0
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x13
	.4byte	.LVL143
	.4byte	0xea0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1b
	.byte	0x72
	.sleb128 0
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0xf4
	.uleb128 0x25
	.byte	0x8
	.8byte	0xcccccccd
	.byte	0x1e
	.byte	0x8
	.byte	0x20
	.byte	0xf7
	.uleb128 0x25
	.byte	0x25
	.byte	0xf7
	.uleb128 0x2c
	.byte	0x33
	.byte	0x25
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LASF114
	.byte	0x1
	.2byte	0x165
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdeb
	.uleb128 0x10
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x165
	.4byte	0x6da
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x22
	.4byte	.LASF79
	.byte	0x1
	.2byte	0x169
	.4byte	0xb5
	.4byte	.LLST25
	.uleb128 0x22
	.4byte	.LASF115
	.byte	0x1
	.2byte	0x16a
	.4byte	0x105
	.4byte	.LLST26
	.uleb128 0x12
	.4byte	.LVL147
	.4byte	0x3c5
	.uleb128 0x12
	.4byte	.LVL148
	.4byte	0x407
	.uleb128 0x1b
	.4byte	.LVL149
	.4byte	0x72d
	.4byte	0xd69
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x12
	.4byte	.LVL151
	.4byte	0xe66
	.uleb128 0x1b
	.4byte	.LVL152
	.4byte	0xe71
	.4byte	0xda0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC16
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL153
	.4byte	0xcad
	.4byte	0xdb3
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x44
	.byte	0
	.uleb128 0x12
	.4byte	.LVL157
	.4byte	0xeac
	.uleb128 0x1b
	.4byte	.LVL158
	.4byte	0xeb8
	.4byte	0xdcf
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x12
	.4byte	.LVL159
	.4byte	0xdfc
	.uleb128 0x12
	.4byte	.LVL160
	.4byte	0x443
	.uleb128 0x12
	.4byte	.LVL161
	.4byte	0xe08
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF116
	.byte	0x1
	.byte	0x2f
	.4byte	0x17b
	.uleb128 0x5
	.byte	0x3
	.4byte	g_lwip_protect_mutex
	.uleb128 0x26
	.4byte	.LASF117
	.4byte	.LASF117
	.byte	0x6
	.2byte	0x417
	.uleb128 0x27
	.4byte	.LASF118
	.4byte	.LASF118
	.byte	0xe
	.byte	0x5a
	.uleb128 0x26
	.4byte	.LASF119
	.4byte	.LASF119
	.byte	0x6
	.2byte	0x621
	.uleb128 0x26
	.4byte	.LASF120
	.4byte	.LASF120
	.byte	0x6
	.2byte	0x3e9
	.uleb128 0x26
	.4byte	.LASF121
	.4byte	.LASF121
	.byte	0x6
	.2byte	0x2a8
	.uleb128 0x26
	.4byte	.LASF122
	.4byte	.LASF122
	.byte	0x6
	.2byte	0x664
	.uleb128 0x26
	.4byte	.LASF123
	.4byte	.LASF123
	.byte	0x5
	.2byte	0x4d1
	.uleb128 0x27
	.4byte	.LASF124
	.4byte	.LASF124
	.byte	0xe
	.byte	0x65
	.uleb128 0x26
	.4byte	.LASF125
	.4byte	.LASF125
	.byte	0x5
	.2byte	0x17a
	.uleb128 0x27
	.4byte	.LASF126
	.4byte	.LASF126
	.byte	0xd
	.byte	0x4c
	.uleb128 0x27
	.4byte	.LASF127
	.4byte	.LASF127
	.byte	0xd
	.byte	0x60
	.uleb128 0x26
	.4byte	.LASF128
	.4byte	.LASF128
	.byte	0x5
	.2byte	0x83e
	.uleb128 0x26
	.4byte	.LASF129
	.4byte	.LASF129
	.byte	0x5
	.2byte	0x54e
	.uleb128 0x26
	.4byte	.LASF130
	.4byte	.LASF130
	.byte	0x5
	.2byte	0x54a
	.uleb128 0x26
	.4byte	.LASF131
	.4byte	.LASF131
	.byte	0x5
	.2byte	0x2d1
	.uleb128 0x26
	.4byte	.LASF132
	.4byte	.LASF132
	.byte	0x6
	.2byte	0x3f8
	.uleb128 0x26
	.4byte	.LASF133
	.4byte	.LASF133
	.byte	0x6
	.2byte	0x6f8
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
	.uleb128 0xe
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x12
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1d
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x23
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL4
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL9
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL5
	.4byte	.LVL9
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL16
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL21
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL30
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL22
	.4byte	.LVL30
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LFE18
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL33
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL40
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL46
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x5
	.byte	0x7a
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL50
	.4byte	.LFE20
	.2byte	0x5
	.byte	0x7a
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL53
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
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL53
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL56
	.4byte	.LVL62
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL63
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL64
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL66
	.4byte	.LVL67-1
	.2byte	0x2
	.byte	0x7b
	.sleb128 0
	.4byte	.LVL67-1
	.4byte	.LFE23
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST11:
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
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL73
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL78
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL101
	.4byte	.LFE25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL73
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL76
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL86
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL90
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL73
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL87
	.4byte	.LVL90
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL90
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL92
	.4byte	.LVL96
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL96
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL98
	.4byte	.LFE25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL75
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL86
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL98
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL81
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL93
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL85
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL95
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL97
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL98
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL88
	.4byte	.LVL90
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL99
	.4byte	.LFE25
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL102
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL105
	.4byte	.LVL106
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL106
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL107
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL102
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL103
	.4byte	.LVL104-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL108
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
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL122
	.4byte	.LVL129
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL130
	.4byte	.LFE36
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL134
	.4byte	.LVL135-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL135
	.4byte	.LFE34
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL137
	.4byte	.LVL138
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL138
	.4byte	.LVL139-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL145
	.4byte	.LVL146
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL146
	.4byte	.LVL154
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL154
	.4byte	.LVL155
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL155
	.4byte	.LVL156
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL145
	.4byte	.LVL146
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL146
	.4byte	.LFE27
	.2byte	0x1
	.byte	0x54
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
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
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
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB35
	.4byte	.LFE35
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
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LFB37
	.4byte	.LFE37
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF79:
	.string	"count"
.LASF124:
	.string	"malloc"
.LASF44:
	.string	"MEMP_UDP_PCB"
.LASF54:
	.string	"MEMP_SYS_TIMEOUT"
.LASF138:
	.string	"sys_thread_tls_free"
.LASF56:
	.string	"MEMP_ND6_QUEUE"
.LASF55:
	.string	"MEMP_NETDB"
.LASF93:
	.string	"sys_arch_mbox_fetch"
.LASF34:
	.string	"alive"
.LASF4:
	.string	"__uint8_t"
.LASF30:
	.string	"sys_mutex_t"
.LASF87:
	.string	"sys_sem_free"
.LASF0:
	.string	"long long unsigned int"
.LASF137:
	.string	"sys_mbox_s"
.LASF35:
	.string	"sys_mbox_t"
.LASF47:
	.string	"MEMP_TCP_SEG"
.LASF27:
	.string	"QueueHandle_t"
.LASF104:
	.string	"sys_init"
.LASF95:
	.string	"sys_arch_mbox_tryfetch"
.LASF118:
	.string	"free"
.LASF120:
	.string	"xQueueGenericReceive"
.LASF106:
	.string	"sys_now"
.LASF29:
	.string	"sys_sem_t"
.LASF66:
	.string	"ESP_LOG_DEBUG"
.LASF11:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF107:
	.string	"sys_arch_protect"
.LASF131:
	.string	"vTaskDelay"
.LASF83:
	.string	"StartTime"
.LASF57:
	.string	"MEMP_IP6_REASSDATA"
.LASF125:
	.string	"xTaskCreatePinnedToCore"
.LASF17:
	.string	"long int"
.LASF77:
	.string	"sys_mutex_free"
.LASF43:
	.string	"MEMP_RAW_PCB"
.LASF108:
	.string	"sys_arch_unprotect"
.LASF127:
	.string	"esp_log_write"
.LASF25:
	.string	"TaskHandle_t"
.LASF24:
	.string	"TickType_t"
.LASF15:
	.string	"uint16_t"
.LASF22:
	.string	"BaseType_t"
.LASF100:
	.string	"stacksize"
.LASF81:
	.string	"sys_arch_sem_wait"
.LASF73:
	.string	"sys_mutex_new"
.LASF10:
	.string	"__uint32_t"
.LASF6:
	.string	"__int16_t"
.LASF38:
	.string	"s16_t"
.LASF85:
	.string	"Elapsed"
.LASF136:
	.string	"C:\\\\esp\\\\esp32-ArkPOS2\\\\ArkPOS2-esp\\\\build\\\\lwip"
.LASF1:
	.string	"unsigned int"
.LASF36:
	.string	"u8_t"
.LASF72:
	.string	"xReturn"
.LASF53:
	.string	"MEMP_IGMP_GROUP"
.LASF110:
	.string	"sys_thread_sem_init"
.LASF97:
	.string	"sys_thread_new"
.LASF59:
	.string	"MEMP_PBUF"
.LASF19:
	.string	"long unsigned int"
.LASF39:
	.string	"u32_t"
.LASF82:
	.string	"timeout"
.LASF128:
	.string	"xTaskGetCurrentTaskHandle"
.LASF98:
	.string	"name"
.LASF45:
	.string	"MEMP_TCP_PCB"
.LASF121:
	.string	"xQueueGenericSend"
.LASF70:
	.string	"data"
.LASF90:
	.string	"size"
.LASF9:
	.string	"short unsigned int"
.LASF51:
	.string	"MEMP_TCPIP_MSG_INPKT"
.LASF119:
	.string	"xQueueCreateMutex"
.LASF114:
	.string	"sys_mbox_free"
.LASF123:
	.string	"xTaskGetTickCount"
.LASF105:
	.string	"sys_jiffies"
.LASF7:
	.string	"short int"
.LASF135:
	.string	"C:/esp/esp-idf/components/lwip/port/freertos/sys_arch.c"
.LASF71:
	.string	"pxMutex"
.LASF115:
	.string	"post_null"
.LASF92:
	.string	"sys_mbox_trypost"
.LASF65:
	.string	"ESP_LOG_INFO"
.LASF61:
	.string	"MEMP_MAX"
.LASF41:
	.string	"err_t"
.LASF18:
	.string	"sizetype"
.LASF42:
	.string	"lwip_thread_fn"
.LASF58:
	.string	"MEMP_MLD6_GROUP"
.LASF117:
	.string	"vQueueDelete"
.LASF40:
	.string	"sys_prot_t"
.LASF68:
	.string	"esp_log_level_t"
.LASF101:
	.string	"prio"
.LASF89:
	.string	"mbox"
.LASF112:
	.string	"sys_thread_sem_deinit"
.LASF99:
	.string	"thread"
.LASF21:
	.string	"_Bool"
.LASF3:
	.string	"__int8_t"
.LASF5:
	.string	"unsigned char"
.LASF76:
	.string	"sys_mutex_unlock"
.LASF134:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF116:
	.string	"g_lwip_protect_mutex"
.LASF113:
	.string	"sys_delay_ms"
.LASF126:
	.string	"esp_log_timestamp"
.LASF63:
	.string	"ESP_LOG_ERROR"
.LASF84:
	.string	"EndTime"
.LASF122:
	.string	"xQueueGenericCreate"
.LASF37:
	.string	"s8_t"
.LASF31:
	.string	"sys_thread_t"
.LASF80:
	.string	"sys_sem_signal"
.LASF91:
	.string	"sys_mbox_post"
.LASF111:
	.string	"sys_thread_sem_get"
.LASF50:
	.string	"MEMP_TCPIP_MSG_API"
.LASF133:
	.string	"xQueueGenericReset"
.LASF28:
	.string	"SemaphoreHandle_t"
.LASF20:
	.string	"char"
.LASF67:
	.string	"ESP_LOG_VERBOSE"
.LASF48:
	.string	"MEMP_NETBUF"
.LASF8:
	.string	"__uint16_t"
.LASF46:
	.string	"MEMP_TCP_PCB_LISTEN"
.LASF94:
	.string	"dummyptr"
.LASF69:
	.string	"index"
.LASF62:
	.string	"ESP_LOG_NONE"
.LASF109:
	.string	"pval"
.LASF60:
	.string	"MEMP_PBUF_POOL"
.LASF52:
	.string	"MEMP_ARP_QUEUE"
.LASF32:
	.string	"os_mbox"
.LASF14:
	.string	"int16_t"
.LASF75:
	.string	"sys_mutex_lock"
.LASF12:
	.string	"int8_t"
.LASF26:
	.string	"TlsDeleteCallbackFunction_t"
.LASF16:
	.string	"uint32_t"
.LASF78:
	.string	"sys_sem_new"
.LASF64:
	.string	"ESP_LOG_WARN"
.LASF129:
	.string	"vTaskSetThreadLocalStoragePointerAndDelCallback"
.LASF96:
	.string	"pvDummy"
.LASF49:
	.string	"MEMP_NETCONN"
.LASF13:
	.string	"uint8_t"
.LASF88:
	.string	"sys_mbox_new"
.LASF86:
	.string	"ulReturn"
.LASF130:
	.string	"pvTaskGetThreadLocalStoragePointer"
.LASF33:
	.string	"lock"
.LASF102:
	.string	"CreatedTask"
.LASF23:
	.string	"UBaseType_t"
.LASF132:
	.string	"uxQueueMessagesWaiting"
.LASF103:
	.string	"result"
.LASF74:
	.string	"sys_mutex_trylock"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-73-ge28a011) 5.2.0"
