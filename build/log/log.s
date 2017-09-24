	.file	"log.c"
	.text
.Ltext0:
	.section	.text.heap_bubble_down,"ax",@progbits
	.literal_position
	.literal .LC0, s_log_cache
	.align	4
	.type	heap_bubble_down, @function
heap_bubble_down:
.LFB20:
	.file 1 "C:/esp/esp-idf/components/log/log.c"
	.loc 1 288 0
.LVL0:
	entry	sp, 48
.LCFI0:
	.loc 1 289 0
	j	.L2
.L4:
.LBB21:
	.loc 1 290 0
	slli	a9, a2, 1
	addi.n	a11, a9, 1
.LVL1:
	.loc 1 291 0
	addi.n	a9, a9, 2
.LVL2:
	.loc 1 292 0
	l32r	a8, .LC0
	addx8	a10, a11, a8
	l32i.n	a10, a10, 4
	srli	a10, a10, 3
	addx8	a8, a9, a8
	l32i.n	a8, a8, 4
	srli	a8, a8, 3
	bge	a10, a8, .L3
	mov.n	a9, a11
.LVL3:
.L3:
.LBB22:
.LBB23:
	.loc 1 300 0 discriminator 4
	l32r	a8, .LC0
	addx8	a2, a2, a8
.LVL4:
	l32i.n	a11, a2, 0
.LVL5:
	l32i.n	a10, a2, 4
	s32i.n	a11, sp, 0
	s32i.n	a10, sp, 4
	.loc 1 301 0 discriminator 4
	addx8	a8, a9, a8
	l32i.n	a13, a8, 0
	l32i.n	a12, a8, 4
	s32i.n	a13, a2, 0
	s32i.n	a12, a2, 4
	.loc 1 302 0 discriminator 4
	s32i.n	a11, a8, 0
	s32i.n	a10, a8, 4
.LVL6:
.LBE23:
.LBE22:
	.loc 1 294 0 discriminator 4
	mov.n	a2, a9
.LVL7:
.L2:
.LBE21:
	.loc 1 289 0
	movi.n	a8, 0xe
	bge	a8, a2, .L4
	.loc 1 296 0
	retw.n
.LFE20:
	.size	heap_bubble_down, .-heap_bubble_down
	.section	.text.esp_log_set_vprintf,"ax",@progbits
	.literal_position
	.literal .LC1, s_log_print_func
	.align	4
	.global	esp_log_set_vprintf
	.type	esp_log_set_vprintf, @function
esp_log_set_vprintf:
.LFB12:
	.loc 1 110 0
.LVL8:
	entry	sp, 32
.LCFI1:
	.loc 1 111 0
	l32r	a8, .LC1
	s32i.n	a2, a8, 0
	retw.n
.LFE12:
	.size	esp_log_set_vprintf, .-esp_log_set_vprintf
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC3:
	.string	"*"
	.section	.text.esp_log_level_set,"ax",@progbits
	.literal_position
	.literal .LC2, s_log_mutex
	.literal .LC4, .LC3
	.literal .LC5, s_log_default_level
	.literal .LC6, s_log_tags
	.literal .LC7, s_log_cache_entry_count
	.literal .LC8, s_log_cache_max_generation
	.literal .LC9, s_log_cache
	.align	4
	.global	esp_log_level_set
	.type	esp_log_level_set, @function
esp_log_level_set:
.LFB13:
	.loc 1 115 0
.LVL9:
	entry	sp, 32
.LCFI2:
	.loc 1 116 0
	l32r	a4, .LC2
	l32i.n	a4, a4, 0
	bnez.n	a4, .L7
	.loc 1 117 0
	movi.n	a10, 1
	call8	xQueueCreateMutex
.LVL10:
	l32r	a4, .LC2
	s32i.n	a10, a4, 0
.L7:
	.loc 1 119 0
	movi.n	a13, 0
	movi.n	a12, -1
	mov.n	a11, a13
	l32r	a4, .LC2
	l32i.n	a10, a4, 0
	call8	xQueueGenericReceive
.LVL11:
	.loc 1 122 0
	l32r	a11, .LC4
	mov.n	a10, a2
	call8	strcmp
.LVL12:
	bnez.n	a10, .L8
	.loc 1 123 0
	l32r	a2, .LC5
.LVL13:
	s32i.n	a3, a2, 0
	j	.L9
.LVL14:
.L10:
.LBB24:
.LBB25:
	.loc 1 169 0
	l32i.n	a3, a2, 0
	l32r	a2, .LC6
	s32i.n	a3, a2, 0
.L9:
	.loc 1 168 0
	l32r	a2, .LC6
	l32i.n	a2, a2, 0
	bnez.n	a2, .L10
	.loc 1 171 0
	movi.n	a11, 0
	l32r	a2, .LC7
	s32i.n	a11, a2, 0
	.loc 1 172 0
	l32r	a2, .LC8
	s32i.n	a11, a2, 0
.LBE25:
.LBE24:
	.loc 1 125 0
	mov.n	a13, a11
	mov.n	a12, a11
	l32r	a2, .LC2
	l32i.n	a10, a2, 0
	call8	xQueueGenericSend
.LVL15:
	.loc 1 126 0
	retw.n
.LVL16:
.L8:
	.loc 1 131 0
	l32r	a4, .LC6
	l32i.n	a5, a4, 0
.LVL17:
	mov.n	a4, a5
	j	.L12
.LVL18:
.L15:
	.loc 1 132 0
	mov.n	a11, a2
	addi.n	a10, a4, 5
	call8	strcmp
.LVL19:
	bnez.n	a10, .L13
	.loc 1 134 0
	s8i	a3, a4, 4
	.loc 1 136 0
	j	.L14
.L13:
	.loc 1 131 0 discriminator 2
	l32i.n	a4, a4, 0
.LVL20:
.L12:
	.loc 1 131 0 is_stmt 0 discriminator 1
	bnez.n	a4, .L15
.L14:
	.loc 1 140 0 is_stmt 1
	bnez.n	a4, .L16
.LBB26:
	.loc 1 142 0
	mov.n	a10, a2
	call8	strlen
.LVL21:
	.loc 1 143 0
	addi.n	a10, a10, 6
.LVL22:
	call8	malloc
.LVL23:
	mov.n	a4, a10
.LVL24:
	.loc 1 144 0
	bnez.n	a10, .L17
	.loc 1 145 0
	movi.n	a13, 0
	mov.n	a12, a13
	mov.n	a11, a13
	l32r	a2, .LC2
.LVL25:
	l32i.n	a10, a2, 0
	call8	xQueueGenericSend
.LVL26:
	.loc 1 146 0
	retw.n
.LVL27:
.L17:
	.loc 1 148 0
	s8i	a3, a10, 4
	.loc 1 149 0
	mov.n	a11, a2
	addi.n	a10, a10, 5
	call8	strcpy
.LVL28:
	.loc 1 150 0
	s32i.n	a5, a4, 0
	l32r	a5, .LC6
	s32i.n	a4, a5, 0
.LVL29:
.L16:
.LBE26:
.LBB27:
	.loc 1 154 0
	movi.n	a8, 0
	j	.L18
.LVL30:
.L21:
	.loc 1 158 0
	l32r	a4, .LC9
	addx8	a4, a8, a4
	l32i.n	a4, a4, 0
	bne	a2, a4, .L19
	.loc 1 159 0
	l32r	a2, .LC9
.LVL31:
	addx8	a8, a8, a2
.LVL32:
	extui	a3, a3, 0, 3
.LVL33:
	l32i.n	a4, a8, 4
	movi.n	a2, -8
	and	a2, a4, a2
	or	a3, a2, a3
	s32i.n	a3, a8, 4
	.loc 1 160 0
	j	.L20
.LVL34:
.L19:
	.loc 1 154 0 discriminator 2
	addi.n	a8, a8, 1
.LVL35:
.L18:
	.loc 1 154 0 is_stmt 0 discriminator 1
	l32r	a4, .LC7
	l32i.n	a4, a4, 0
	bltu	a8, a4, .L21
.LVL36:
.L20:
.LBE27:
	.loc 1 163 0 is_stmt 1
	movi.n	a13, 0
	mov.n	a12, a13
	mov.n	a11, a13
	l32r	a2, .LC2
	l32i.n	a10, a2, 0
	call8	xQueueGenericSend
.LVL37:
	retw.n
.LFE13:
	.size	esp_log_level_set, .-esp_log_level_set
	.section	.iram1,"ax",@progbits
	.literal_position
	.literal .LC10, s_log_mutex
	.literal .LC11, s_log_cache
	.literal .LC12, s_log_cache_entry_count
	.literal .LC13, s_log_cache_max_generation
	.literal .LC14, s_log_tags
	.literal .LC15, s_log_default_level
	.literal .LC16, s_log_print_func
	.align	4
	.global	esp_log_write
	.type	esp_log_write, @function
esp_log_write:
.LFB15:
	.loc 1 181 0
.LVL38:
	entry	sp, 80
.LCFI3:
	.loc 1 205 0
	s32i.n	a5, sp, 28
	s32i.n	a6, sp, 32
	s32i.n	a7, sp, 36
	.loc 1 182 0
	l32r	a5, .LC10
	l32i.n	a5, a5, 0
	bnez.n	a5, .L23
	.loc 1 183 0
	movi.n	a10, 1
	call8	xQueueCreateMutex
.LVL39:
	l32r	a5, .LC10
	s32i.n	a10, a5, 0
.L23:
	.loc 1 185 0
	movi.n	a13, 0
	movi.n	a12, 1
	mov.n	a11, a13
	l32r	a5, .LC10
	l32i.n	a10, a5, 0
	call8	xQueueGenericReceive
.LVL40:
	beqz.n	a10, .L22
.LBB34:
.LBB35:
	.loc 1 214 0
	movi.n	a10, 0
	j	.L25
.LVL41:
.L27:
	.loc 1 218 0
	l32r	a8, .LC11
	addx8	a8, a10, a8
	l32i.n	a8, a8, 0
	beq	a3, a8, .L26
	.loc 1 214 0
	addi.n	a10, a10, 1
.LVL42:
.L25:
	mov.n	a5, a10
	l32r	a8, .LC12
	l32i.n	a9, a8, 0
	bltu	a10, a9, .L27
.L26:
	.loc 1 222 0
	beq	a5, a9, .L37
	.loc 1 226 0
	l32r	a5, .LC11
	addx8	a5, a10, a5
	l32i.n	a7, a5, 4
	extui	a7, a7, 0, 3
.LVL43:
	.loc 1 232 0
	movi.n	a5, 0x1f
	bne	a9, a5, .L38
	.loc 1 234 0
	l32r	a6, .LC13
	l32i.n	a5, a6, 0
	addi.n	a8, a5, 1
	s32i.n	a8, a6, 0
	l32r	a6, .LC11
	addx8	a6, a10, a6
	slli	a5, a5, 3
	l32i.n	a8, a6, 4
	extui	a8, a8, 0, 3
	or	a5, a8, a5
	s32i.n	a5, a6, 4
	.loc 1 236 0
	call8	heap_bubble_down
.LVL44:
	.loc 1 238 0
	movi.n	a6, 1
	j	.L28
.LVL45:
.L37:
	.loc 1 223 0
	movi.n	a6, 0
	j	.L28
.LVL46:
.L38:
	.loc 1 238 0
	movi.n	a6, 1
.LVL47:
.L28:
.LBE35:
.LBE34:
	.loc 1 190 0
	bnez.n	a6, .L29
.LVL48:
.LBB36:
.LBB37:
	.loc 1 273 0
	l32r	a5, .LC14
	l32i.n	a5, a5, 0
.LVL49:
	j	.L30
.L33:
	.loc 1 274 0
	addi.n	a11, a5, 5
	mov.n	a10, a3
	call8	strcmp
.LVL50:
	bnez.n	a10, .L31
.LVL51:
	.loc 1 275 0
	l8ui	a7, a5, 4
.LVL52:
	.loc 1 276 0
	movi.n	a6, 1
	j	.L32
.L31:
	.loc 1 273 0
	l32i.n	a5, a5, 0
.LVL53:
.L30:
	bnez.n	a5, .L33
.L32:
.LBE37:
.LBE36:
	.loc 1 191 0
	bnez.n	a6, .L34
	.loc 1 192 0
	l32r	a5, .LC15
.LVL54:
	l32i.n	a7, a5, 0
.LVL55:
.L34:
.LBB38:
.LBB39:
	.loc 1 243 0
	l32r	a6, .LC13
	l32i.n	a5, a6, 0
	addi.n	a8, a5, 1
	s32i.n	a8, a6, 0
.LVL56:
	.loc 1 247 0
	l32r	a6, .LC12
	l32i.n	a6, a6, 0
	movi.n	a8, 0x1e
	bltu	a8, a6, .L35
	.loc 1 248 0
	l32r	a8, .LC11
	addx8	a8, a6, a8
	s32i.n	a3, a8, 0
	slli	a5, a5, 3
.LVL57:
	extui	a3, a7, 0, 3
.LVL58:
	or	a3, a3, a5
	s32i.n	a3, a8, 4
	.loc 1 253 0
	addi.n	a6, a6, 1
	l32r	a3, .LC12
	s32i.n	a6, a3, 0
	j	.L29
.LVL59:
.L35:
	.loc 1 260 0
	l32r	a6, .LC11
	s32i.n	a3, a6, 0
	slli	a5, a5, 3
.LVL60:
	extui	a3, a7, 0, 3
.LVL61:
	or	a3, a3, a5
	s32i.n	a3, a6, 4
	.loc 1 265 0
	movi.n	a10, 0
	call8	heap_bubble_down
.LVL62:
.L29:
.LBE39:
.LBE38:
	.loc 1 199 0
	movi.n	a13, 0
	mov.n	a12, a13
	mov.n	a11, a13
	l32r	a3, .LC10
	l32i.n	a10, a3, 0
	call8	xQueueGenericSend
.LVL63:
	.loc 1 200 0
	bltu	a7, a2, .L22
	.loc 1 205 0
	addi	a12, sp, 16
	s32i.n	a12, sp, 4
	addi	a11, sp, 48
	s32i.n	a11, sp, 0
	movi.n	a13, 0xc
	s32i.n	a13, sp, 8
	.loc 1 206 0
	l32r	a2, .LC16
.LVL64:
	l32i.n	a2, a2, 0
	mov.n	a10, a4
	callx8	a2
.LVL65:
.L22:
	retw.n
.LFE15:
	.size	esp_log_write, .-esp_log_write
	.literal_position
	.literal .LC17, -1588477135
	.align	4
	.global	esp_log_early_timestamp
	.type	esp_log_early_timestamp, @function
esp_log_early_timestamp:
.LFB22:
	.loc 1 315 0
	entry	sp, 32
.LCFI4:
	.loc 1 316 0
	call8	xthal_get_ccount
.LVL66:
	l32r	a2, .LC17
	muluh	a2, a10, a2
	.loc 1 317 0
	srli	a2, a2, 14
	retw.n
.LFE22:
	.size	esp_log_early_timestamp, .-esp_log_early_timestamp
	.literal_position
	.literal .LC18, base$5262
	.align	4
	.global	esp_log_timestamp
	.type	esp_log_timestamp, @function
esp_log_timestamp:
.LFB23:
	.loc 1 322 0
	entry	sp, 32
.LCFI5:
	.loc 1 323 0
	call8	xTaskGetSchedulerState
.LVL67:
	bnei	a10, 1, .L41
	.loc 1 324 0
	call8	esp_log_early_timestamp
.LVL68:
	mov.n	a2, a10
	retw.n
.L41:
	.loc 1 327 0
	l32r	a2, .LC18
	l32i.n	a2, a2, 0
	bnez.n	a2, .L43
	.loc 1 328 0
	call8	esp_log_early_timestamp
.LVL69:
	l32r	a2, .LC18
	s32i.n	a10, a2, 0
.L43:
	.loc 1 330 0
	call8	xTaskGetTickCount
.LVL70:
	addx4	a10, a10, a10
	slli	a8, a10, 1
	l32r	a2, .LC18
	l32i.n	a2, a2, 0
	add.n	a2, a8, a2
	.loc 1 331 0
	retw.n
.LFE23:
	.size	esp_log_timestamp, .-esp_log_timestamp
	.section	.rodata.str1.4
	.align	4
.LC21:
	.string	"%02x "
	.align	4
.LC23:
	.string	"\033[0;31mE (%d) %s: %s\033[0m\n"
	.align	4
.LC25:
	.string	"\033[0;33mW (%d) %s: %s\033[0m\n"
	.align	4
.LC27:
	.string	"D (%d) %s: %s\033[0m\n"
	.align	4
.LC29:
	.string	"V (%d) %s: %s\033[0m\n"
	.align	4
.LC31:
	.string	"\033[0;32mI (%d) %s: %s\033[0m\n"
	.section	.text.esp_log_buffer_hex_internal,"ax",@progbits
	.literal_position
	.literal .LC19, -1073405952
	.literal .LC20, 335871
	.literal .LC22, .LC21
	.literal .LC24, .LC23
	.literal .LC26, .LC25
	.literal .LC28, .LC27
	.literal .LC30, .LC29
	.literal .LC32, .LC31
	.align	4
	.global	esp_log_buffer_hex_internal
	.type	esp_log_buffer_hex_internal, @function
esp_log_buffer_hex_internal:
.LFB24:
	.loc 1 341 0
.LVL71:
	entry	sp, 128
.LCFI6:
	s32i	a2, sp, 80
	extui	a4, a4, 0, 16
	.loc 1 342 0
	beqz.n	a4, .L44
.LVL72:
.L55:
	.loc 1 349 0
	movi.n	a2, 0x10
	bltu	a2, a4, .L57
	.loc 1 352 0
	mov.n	a6, a4
.LVL73:
	j	.L46
.LVL74:
.L57:
	.loc 1 350 0
	movi.n	a6, 0x10
.L46:
.LVL75:
.LBB40:
.LBB41:
	.file 2 "C:/esp/esp-idf/components/soc/include/soc/soc_memory_layout.h"
	.loc 2 77 0
	l32r	a2, .LC19
	add.n	a2, a3, a2
.LBE41:
.LBE40:
	.loc 1 354 0
	l32r	a7, .LC20
	bgeu	a7, a2, .L58
	.loc 1 356 0
	addi.n	a2, a6, 3
	addi.n	a12, a6, 6
	movgez	a12, a2, a2
	srai	a12, a12, 2
	slli	a12, a12, 2
	mov.n	a11, a3
	mov.n	a10, sp
	call8	memcpy
.LVL76:
	.loc 1 357 0
	mov.n	a7, sp
.LVL77:
	j	.L47
.LVL78:
.L58:
	.loc 1 359 0
	mov.n	a7, a3
.L47:
.LVL79:
.LBB42:
	.loc 1 362 0
	movi.n	a2, 0
	j	.L48
.LVL80:
.L49:
	.loc 1 363 0 discriminator 3
	addx2	a10, a2, a2
	add.n	a8, a7, a2
	l8ui	a12, a8, 0
	l32r	a11, .LC22
	addi	a8, sp, 19
	add.n	a10, a8, a10
	call8	sprintf
.LVL81:
	.loc 1 362 0 discriminator 3
	addi.n	a2, a2, 1
.LVL82:
.L48:
	.loc 1 362 0 is_stmt 0 discriminator 1
	blt	a2, a6, .L49
.LBE42:
	.loc 1 365 0 is_stmt 1
	bnei	a5, 1, .L50
	.loc 1 365 0 is_stmt 0 discriminator 1
	call8	esp_log_timestamp
.LVL83:
	addi	a15, sp, 19
	l32i	a14, sp, 80
	mov.n	a13, a10
	l32r	a12, .LC24
	mov.n	a11, a14
	movi.n	a10, 1
	call8	esp_log_write
.LVL84:
	j	.L51
.L50:
	.loc 1 365 0 discriminator 2
	bnei	a5, 2, .L52
	.loc 1 365 0 discriminator 3
	call8	esp_log_timestamp
.LVL85:
	addi	a15, sp, 19
	l32i	a14, sp, 80
	mov.n	a13, a10
	l32r	a12, .LC26
	mov.n	a11, a14
	movi.n	a10, 2
	call8	esp_log_write
.LVL86:
	j	.L51
.L52:
	.loc 1 365 0 discriminator 4
	bnei	a5, 4, .L53
	.loc 1 365 0 discriminator 5
	call8	esp_log_timestamp
.LVL87:
	addi	a15, sp, 19
	l32i	a14, sp, 80
	mov.n	a13, a10
	l32r	a12, .LC28
	mov.n	a11, a14
	movi.n	a10, 4
	call8	esp_log_write
.LVL88:
	j	.L51
.L53:
	.loc 1 365 0 discriminator 6
	bnei	a5, 5, .L54
	.loc 1 365 0 discriminator 7
	call8	esp_log_timestamp
.LVL89:
	addi	a15, sp, 19
	l32i	a14, sp, 80
	mov.n	a13, a10
	l32r	a12, .LC30
	mov.n	a11, a14
	movi.n	a10, 5
	call8	esp_log_write
.LVL90:
	j	.L51
.L54:
	.loc 1 365 0 discriminator 8
	call8	esp_log_timestamp
.LVL91:
	addi	a15, sp, 19
	l32i	a14, sp, 80
	mov.n	a13, a10
	l32r	a12, .LC32
	mov.n	a11, a14
	movi.n	a10, 3
	call8	esp_log_write
.LVL92:
.L51:
	.loc 1 366 0 is_stmt 1
	add.n	a3, a3, a6
.LVL93:
	.loc 1 367 0
	sub	a4, a4, a6
.LVL94:
	extui	a4, a4, 0, 16
.LVL95:
	.loc 1 368 0
	bnez.n	a4, .L55
.LVL96:
.L44:
	retw.n
.LFE24:
	.size	esp_log_buffer_hex_internal, .-esp_log_buffer_hex_internal
	.section	.rodata.str1.4
	.align	4
.LC35:
	.string	"%c"
	.section	.text.esp_log_buffer_char_internal,"ax",@progbits
	.literal_position
	.literal .LC33, -1073405952
	.literal .LC34, 335871
	.literal .LC36, .LC35
	.literal .LC37, .LC23
	.literal .LC38, .LC25
	.literal .LC39, .LC27
	.literal .LC40, .LC29
	.literal .LC41, .LC31
	.align	4
	.global	esp_log_buffer_char_internal
	.type	esp_log_buffer_char_internal, @function
esp_log_buffer_char_internal:
.LFB25:
	.loc 1 373 0
.LVL97:
	entry	sp, 96
.LCFI7:
	s32i.n	a2, sp, 48
	extui	a4, a4, 0, 16
	.loc 1 374 0
	beqz.n	a4, .L59
.LVL98:
.L70:
	.loc 1 381 0
	movi.n	a2, 0x10
	bltu	a2, a4, .L72
	.loc 1 384 0
	mov.n	a6, a4
.LVL99:
	j	.L61
.LVL100:
.L72:
	.loc 1 382 0
	movi.n	a6, 0x10
.L61:
.LVL101:
.LBB43:
.LBB44:
	.loc 2 77 0
	l32r	a2, .LC33
	add.n	a2, a3, a2
.LBE44:
.LBE43:
	.loc 1 386 0
	l32r	a7, .LC34
	bgeu	a7, a2, .L73
	.loc 1 388 0
	addi.n	a2, a6, 3
	addi.n	a12, a6, 6
	movgez	a12, a2, a2
	srai	a12, a12, 2
	slli	a12, a12, 2
	mov.n	a11, a3
	mov.n	a10, sp
	call8	memcpy
.LVL102:
	.loc 1 389 0
	mov.n	a7, sp
.LVL103:
	j	.L62
.LVL104:
.L73:
	.loc 1 391 0
	mov.n	a7, a3
.L62:
.LVL105:
.LBB45:
	.loc 1 394 0
	movi.n	a2, 0
	j	.L63
.LVL106:
.L64:
	.loc 1 395 0 discriminator 3
	add.n	a8, a7, a2
	l8ui	a12, a8, 0
	l32r	a11, .LC36
	addi	a8, sp, 19
	add.n	a10, a8, a2
	call8	sprintf
.LVL107:
	.loc 1 394 0 discriminator 3
	addi.n	a2, a2, 1
.LVL108:
.L63:
	.loc 1 394 0 is_stmt 0 discriminator 1
	blt	a2, a6, .L64
.LBE45:
	.loc 1 397 0 is_stmt 1
	bnei	a5, 1, .L65
	.loc 1 397 0 is_stmt 0 discriminator 1
	call8	esp_log_timestamp
.LVL109:
	addi	a15, sp, 19
	l32i.n	a14, sp, 48
	mov.n	a13, a10
	l32r	a12, .LC37
	mov.n	a11, a14
	movi.n	a10, 1
	call8	esp_log_write
.LVL110:
	j	.L66
.L65:
	.loc 1 397 0 discriminator 2
	bnei	a5, 2, .L67
	.loc 1 397 0 discriminator 3
	call8	esp_log_timestamp
.LVL111:
	addi	a15, sp, 19
	l32i.n	a14, sp, 48
	mov.n	a13, a10
	l32r	a12, .LC38
	mov.n	a11, a14
	movi.n	a10, 2
	call8	esp_log_write
.LVL112:
	j	.L66
.L67:
	.loc 1 397 0 discriminator 4
	bnei	a5, 4, .L68
	.loc 1 397 0 discriminator 5
	call8	esp_log_timestamp
.LVL113:
	addi	a15, sp, 19
	l32i.n	a14, sp, 48
	mov.n	a13, a10
	l32r	a12, .LC39
	mov.n	a11, a14
	movi.n	a10, 4
	call8	esp_log_write
.LVL114:
	j	.L66
.L68:
	.loc 1 397 0 discriminator 6
	bnei	a5, 5, .L69
	.loc 1 397 0 discriminator 7
	call8	esp_log_timestamp
.LVL115:
	addi	a15, sp, 19
	l32i.n	a14, sp, 48
	mov.n	a13, a10
	l32r	a12, .LC40
	mov.n	a11, a14
	movi.n	a10, 5
	call8	esp_log_write
.LVL116:
	j	.L66
.L69:
	.loc 1 397 0 discriminator 8
	call8	esp_log_timestamp
.LVL117:
	addi	a15, sp, 19
	l32i.n	a14, sp, 48
	mov.n	a13, a10
	l32r	a12, .LC41
	mov.n	a11, a14
	movi.n	a10, 3
	call8	esp_log_write
.LVL118:
.L66:
	.loc 1 398 0 is_stmt 1
	add.n	a3, a3, a6
.LVL119:
	.loc 1 399 0
	sub	a4, a4, a6
.LVL120:
	extui	a4, a4, 0, 16
.LVL121:
	.loc 1 400 0
	bnez.n	a4, .L70
.LVL122:
.L59:
	retw.n
.LFE25:
	.size	esp_log_buffer_char_internal, .-esp_log_buffer_char_internal
	.section	.rodata.str1.4
	.align	4
.LC44:
	.string	"%p "
	.align	4
.LC46:
	.string	" "
	.align	4
.LC48:
	.string	" %02x"
	.align	4
.LC50:
	.string	"   "
	.align	4
.LC52:
	.string	"  |"
	.align	4
.LC56:
	.string	"."
	.align	4
.LC58:
	.string	"|"
	.section	.text.esp_log_buffer_hexdump_internal,"ax",@progbits
	.literal_position
	.literal .LC42, -1073405952
	.literal .LC43, 335871
	.literal .LC45, .LC44
	.literal .LC47, .LC46
	.literal .LC49, .LC48
	.literal .LC51, .LC50
	.literal .LC53, .LC52
	.literal .LC54, __ctype_ptr__
	.literal .LC55, .LC35
	.literal .LC57, .LC56
	.literal .LC59, .LC58
	.literal .LC60, .LC23
	.literal .LC61, .LC25
	.literal .LC62, .LC27
	.literal .LC63, .LC29
	.literal .LC64, .LC31
	.align	4
	.global	esp_log_buffer_hexdump_internal
	.type	esp_log_buffer_hexdump_internal, @function
esp_log_buffer_hexdump_internal:
.LFB26:
	.loc 1 404 0
.LVL123:
	entry	sp, 160
.LCFI8:
	s32i	a2, sp, 116
	s32i	a5, sp, 112
	extui	a4, a4, 0, 16
	.loc 1 406 0
	beqz.n	a4, .L74
.LVL124:
.L92:
	.loc 1 416 0
	movi.n	a2, 0x10
	bltu	a2, a4, .L94
	.loc 1 419 0
	mov.n	a5, a4
.LVL125:
	j	.L76
.LVL126:
.L94:
	.loc 1 417 0
	movi.n	a5, 0x10
.L76:
.LVL127:
.LBB46:
.LBB47:
	.loc 2 77 0
	l32r	a2, .LC42
	add.n	a2, a3, a2
.LBE47:
.LBE46:
	.loc 1 421 0
	l32r	a6, .LC43
	bgeu	a6, a2, .L95
	.loc 1 423 0
	addi.n	a2, a5, 3
	addi.n	a12, a5, 6
	movgez	a12, a2, a2
	srai	a12, a12, 2
	slli	a12, a12, 2
	mov.n	a11, a3
	mov.n	a10, sp
	call8	memcpy
.LVL128:
	.loc 1 424 0
	mov.n	a6, sp
.LVL129:
	j	.L77
.LVL130:
.L95:
	.loc 1 426 0
	mov.n	a6, a3
.L77:
.LVL131:
	.loc 1 430 0
	mov.n	a12, a3
	l32r	a11, .LC45
	addi	a10, sp, 19
.LVL132:
	call8	sprintf
.LVL133:
	addi	a8, sp, 19
.LVL134:
	add.n	a2, a8, a10
.LVL135:
.LBB48:
	.loc 1 431 0
	movi.n	a7, 0
	j	.L78
.LVL136:
.L82:
	.loc 1 432 0
	extui	a8, a7, 0, 3
	bnez.n	a8, .L79
	.loc 1 433 0
	l32r	a8, .LC47
	l8ui	a9, a8, 0
	l8ui	a8, a8, 1
	s8i	a9, a2, 0
	s8i	a8, a2, 1
	addi.n	a2, a2, 1
.LVL137:
.L79:
	.loc 1 435 0
	bge	a7, a5, .L80
	.loc 1 436 0
	add.n	a8, a6, a7
	l8ui	a12, a8, 0
	l32r	a11, .LC49
	mov.n	a10, a2
	call8	sprintf
.LVL138:
	add.n	a2, a2, a10
.LVL139:
	j	.L81
.L80:
	.loc 1 438 0
	l32r	a8, .LC51
	l8ui	a9, a8, 0
	l8ui	a10, a8, 1
	s8i	a9, a2, 0
	l8ui	a9, a8, 2
	s8i	a10, a2, 1
	l8ui	a8, a8, 3
	s8i	a9, a2, 2
	s8i	a8, a2, 3
	addi.n	a2, a2, 3
.LVL140:
.L81:
	.loc 1 431 0 discriminator 2
	addi.n	a7, a7, 1
.LVL141:
.L78:
	.loc 1 431 0 is_stmt 0 discriminator 1
	movi.n	a8, 0xf
	bge	a8, a7, .L82
.LBE48:
	.loc 1 441 0 is_stmt 1
	l32r	a7, .LC53
.LVL142:
	l8ui	a8, a7, 0
	l8ui	a9, a7, 1
	s8i	a8, a2, 0
	l8ui	a8, a7, 2
	s8i	a9, a2, 1
	l8ui	a7, a7, 3
	s8i	a8, a2, 2
	s8i	a7, a2, 3
	addi.n	a2, a2, 3
.LVL143:
.LBB49:
	.loc 1 442 0
	movi.n	a7, 0
	j	.L83
.LVL144:
.L86:
	.loc 1 443 0
	add.n	a8, a6, a7
	l8ui	a12, a8, 0
	l32r	a8, .LC54
	l32i.n	a8, a8, 0
	add.n	a8, a8, a12
	l8ui	a9, a8, 1
	movi	a8, -0x69
	bnone	a9, a8, .L84
	.loc 1 444 0
	l32r	a11, .LC55
	mov.n	a10, a2
	call8	sprintf
.LVL145:
	add.n	a2, a2, a10
.LVL146:
	j	.L85
.L84:
	.loc 1 446 0
	l32r	a8, .LC57
	l8ui	a9, a8, 0
	l8ui	a8, a8, 1
	s8i	a9, a2, 0
	s8i	a8, a2, 1
.LVL147:
	addi.n	a2, a2, 1
.LVL148:
.L85:
	.loc 1 442 0 discriminator 2
	addi.n	a7, a7, 1
.LVL149:
.L83:
	.loc 1 442 0 is_stmt 0 discriminator 1
	blt	a7, a5, .L86
.LBE49:
	.loc 1 449 0 is_stmt 1
	l32r	a6, .LC59
.LVL150:
	l8ui	a7, a6, 0
.LVL151:
	l8ui	a6, a6, 1
	s8i	a7, a2, 0
	s8i	a6, a2, 1
.LVL152:
	.loc 1 451 0
	l32i	a2, sp, 112
.LVL153:
	bnei	a2, 1, .L87
	.loc 1 451 0 is_stmt 0 discriminator 1
	call8	esp_log_timestamp
.LVL154:
	addi	a15, sp, 19
	l32i	a14, sp, 116
	mov.n	a13, a10
	l32r	a12, .LC60
	mov.n	a11, a14
	movi.n	a10, 1
	call8	esp_log_write
.LVL155:
	j	.L88
.L87:
	.loc 1 451 0 discriminator 2
	l32i	a2, sp, 112
	bnei	a2, 2, .L89
	.loc 1 451 0 discriminator 3
	call8	esp_log_timestamp
.LVL156:
	addi	a15, sp, 19
	l32i	a14, sp, 116
	mov.n	a13, a10
	l32r	a12, .LC61
	mov.n	a11, a14
	movi.n	a10, 2
	call8	esp_log_write
.LVL157:
	j	.L88
.L89:
	.loc 1 451 0 discriminator 4
	l32i	a2, sp, 112
	bnei	a2, 4, .L90
	.loc 1 451 0 discriminator 5
	call8	esp_log_timestamp
.LVL158:
	addi	a15, sp, 19
	l32i	a14, sp, 116
	mov.n	a13, a10
	l32r	a12, .LC62
	mov.n	a11, a14
	movi.n	a10, 4
	call8	esp_log_write
.LVL159:
	j	.L88
.L90:
	.loc 1 451 0 discriminator 6
	l32i	a2, sp, 112
	bnei	a2, 5, .L91
	.loc 1 451 0 discriminator 7
	call8	esp_log_timestamp
.LVL160:
	addi	a15, sp, 19
	l32i	a14, sp, 116
	mov.n	a13, a10
	l32r	a12, .LC63
	mov.n	a11, a14
	movi.n	a10, 5
	call8	esp_log_write
.LVL161:
	j	.L88
.L91:
	.loc 1 451 0 discriminator 8
	call8	esp_log_timestamp
.LVL162:
	addi	a15, sp, 19
	l32i	a14, sp, 116
	mov.n	a13, a10
	l32r	a12, .LC64
	mov.n	a11, a14
	movi.n	a10, 3
	call8	esp_log_write
.LVL163:
.L88:
	.loc 1 452 0 is_stmt 1
	add.n	a3, a3, a5
.LVL164:
	.loc 1 453 0
	sub	a4, a4, a5
.LVL165:
	extui	a4, a4, 0, 16
.LVL166:
	.loc 1 454 0
	bnez.n	a4, .L92
.LVL167:
.L74:
	retw.n
.LFE26:
	.size	esp_log_buffer_hexdump_internal, .-esp_log_buffer_hexdump_internal
	.section	.bss.base$5262,"aw",@nobits
	.align	4
	.type	base$5262, @object
	.size	base$5262, 4
base$5262:
	.zero	4
	.section	.bss.s_log_mutex,"aw",@nobits
	.align	4
	.type	s_log_mutex, @object
	.size	s_log_mutex, 4
s_log_mutex:
	.zero	4
	.section	.data.s_log_print_func,"aw",@progbits
	.align	4
	.type	s_log_print_func, @object
	.size	s_log_print_func, 4
s_log_print_func:
	.word	vprintf
	.section	.bss.s_log_cache_entry_count,"aw",@nobits
	.align	4
	.type	s_log_cache_entry_count, @object
	.size	s_log_cache_entry_count, 4
s_log_cache_entry_count:
	.zero	4
	.section	.bss.s_log_cache_max_generation,"aw",@nobits
	.align	4
	.type	s_log_cache_max_generation, @object
	.size	s_log_cache_max_generation, 4
s_log_cache_max_generation:
	.zero	4
	.section	.bss.s_log_cache,"aw",@nobits
	.align	4
	.type	s_log_cache, @object
	.size	s_log_cache, 248
s_log_cache:
	.zero	248
	.section	.bss.s_log_tags,"aw",@nobits
	.align	4
	.type	s_log_tags, @object
	.size	s_log_tags, 4
s_log_tags:
	.zero	4
	.section	.data.s_log_default_level,"aw",@progbits
	.align	4
	.type	s_log_default_level, @object
	.size	s_log_default_level, 4
s_log_default_level:
	.word	5
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
	.uleb128 0x30
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI1-.LFB12
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI2-.LFB13
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
	.uleb128 0x50
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI4-.LFB22
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
	.uleb128 0x80
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI7-.LFB25
	.byte	0xe
	.uleb128 0x60
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI8-.LFB26
	.byte	0xe
	.uleb128 0xa0
	.align	4
.LEFDE16:
	.text
.Letext0:
	.file 3 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 4 "C:/esp/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 5 "C:/esp/esp-idf/components/newlib/include/stdint.h"
	.file 6 "C:/esp/esp-idf/components/freertos/include/freertos/portmacro.h"
	.file 7 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stdarg.h"
	.file 8 "<built-in>"
	.file 9 "C:/esp/esp-idf/components/freertos/include/freertos/queue.h"
	.file 10 "C:/esp/esp-idf/components/freertos/include/freertos/semphr.h"
	.file 11 "C:/esp/esp-idf/components/log/include/esp_log.h"
	.file 12 "C:/esp/esp-idf/components/newlib/include/string.h"
	.file 13 "C:/esp/esp-idf/components/newlib/include/stdlib.h"
	.file 14 "C:/esp/esp-idf/components/esp32/include/xtensa/hal.h"
	.file 15 "C:/esp/esp-idf/components/freertos/include/freertos/task.h"
	.file 16 "C:/esp/esp-idf/components/newlib/include/stdio.h"
	.file 17 "C:/esp/esp-idf/components/newlib/include/ctype.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1062
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF101
	.byte	0xc
	.4byte	.LASF102
	.4byte	.LASF103
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x3
	.byte	0xd8
	.4byte	0x37
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x4
	.byte	0x12
	.4byte	0x57
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x4
	.byte	0x16
	.4byte	0x3e
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x4
	.byte	0x1a
	.4byte	0x37
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x4
	.byte	0x31
	.4byte	0x25
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb1
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x6
	.byte	0x4
	.4byte	0xbe
	.uleb128 0x7
	.4byte	0xb1
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x5
	.byte	0x15
	.4byte	0x4c
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x5
	.byte	0x21
	.4byte	0x65
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x5
	.byte	0x2d
	.4byte	0x70
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x5
	.byte	0xa9
	.4byte	0x89
	.uleb128 0x6
	.byte	0x4
	.4byte	0xf5
	.uleb128 0x8
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x6
	.byte	0x6c
	.4byte	0x25
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x6
	.byte	0x73
	.4byte	0xd9
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x7
	.byte	0x28
	.4byte	0x117
	.uleb128 0x9
	.4byte	.LASF42
	.byte	0xc
	.byte	0x8
	.byte	0
	.4byte	0x148
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0x8
	.byte	0
	.4byte	0xa2
	.byte	0
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0x8
	.byte	0
	.4byte	0xa2
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0x8
	.byte	0
	.4byte	0x25
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF26
	.uleb128 0x7
	.4byte	0xb8
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x9
	.byte	0x58
	.4byte	0xa2
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0xa
	.byte	0x4f
	.4byte	0x154
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0x7
	.byte	0x62
	.4byte	0x10c
	.uleb128 0xb
	.byte	0x4
	.4byte	0x37
	.byte	0xb
	.byte	0x1f
	.4byte	0x1a6
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF32
	.byte	0x2
	.uleb128 0xc
	.4byte	.LASF33
	.byte	0x3
	.uleb128 0xc
	.4byte	.LASF34
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF35
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF36
	.byte	0xb
	.byte	0x26
	.4byte	0x175
	.uleb128 0x3
	.4byte	.LASF37
	.byte	0xb
	.byte	0x28
	.4byte	0x1bc
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1c2
	.uleb128 0xd
	.4byte	0x25
	.4byte	0x1d6
	.uleb128 0xe
	.4byte	0xb8
	.uleb128 0xe
	.4byte	0x16a
	.byte	0
	.uleb128 0xf
	.byte	0x8
	.byte	0x1
	.byte	0x4d
	.4byte	0x209
	.uleb128 0x10
	.string	"tag"
	.byte	0x1
	.byte	0x4e
	.4byte	0xb8
	.byte	0
	.uleb128 0x11
	.4byte	.LASF38
	.byte	0x1
	.byte	0x4f
	.4byte	0xd9
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0x4
	.uleb128 0x11
	.4byte	.LASF39
	.byte	0x1
	.byte	0x50
	.4byte	0xd9
	.byte	0x4
	.byte	0x1d
	.byte	0
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF40
	.byte	0x1
	.byte	0x51
	.4byte	0x1d6
	.uleb128 0xf
	.byte	0x4
	.byte	0x1
	.byte	0x54
	.4byte	0x229
	.uleb128 0xa
	.4byte	.LASF41
	.byte	0x1
	.byte	0x54
	.4byte	0x25a
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	.LASF43
	.byte	0x8
	.byte	0x1
	.byte	0x53
	.4byte	0x25a
	.uleb128 0xa
	.4byte	.LASF44
	.byte	0x1
	.byte	0x54
	.4byte	0x214
	.byte	0
	.uleb128 0xa
	.4byte	.LASF38
	.byte	0x1
	.byte	0x55
	.4byte	0xc3
	.byte	0x4
	.uleb128 0x10
	.string	"tag"
	.byte	0x1
	.byte	0x56
	.4byte	0x260
	.byte	0x5
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x229
	.uleb128 0x12
	.4byte	0xb1
	.4byte	0x26f
	.uleb128 0x13
	.4byte	0x9b
	.byte	0
	.uleb128 0x3
	.4byte	.LASF45
	.byte	0x1
	.byte	0x57
	.4byte	0x229
	.uleb128 0x9
	.4byte	.LASF46
	.byte	0x4
	.byte	0x1
	.byte	0x5a
	.4byte	0x293
	.uleb128 0xa
	.4byte	.LASF47
	.byte	0x1
	.byte	0x5a
	.4byte	0x25a
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x12a
	.byte	0x3
	.4byte	0x2c1
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.2byte	0x12a
	.4byte	0x25
	.uleb128 0x15
	.string	"j"
	.byte	0x1
	.2byte	0x12a
	.4byte	0x25
	.uleb128 0x16
	.string	"tmp"
	.byte	0x1
	.2byte	0x12c
	.4byte	0x209
	.byte	0
	.uleb128 0x17
	.4byte	.LASF104
	.byte	0x1
	.byte	0xa6
	.byte	0x3
	.uleb128 0x18
	.4byte	.LASF59
	.byte	0x1
	.2byte	0x11a
	.4byte	0x148
	.byte	0x3
	.4byte	0x2f3
	.uleb128 0x19
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x11a
	.4byte	0x1a6
	.uleb128 0x19
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x11a
	.4byte	0x1a6
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF105
	.byte	0x2
	.byte	0x4a
	.4byte	0x148
	.byte	0x3
	.4byte	0x30d
	.uleb128 0x1b
	.string	"p"
	.byte	0x2
	.byte	0x4a
	.4byte	0xef
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF106
	.byte	0x1
	.2byte	0x11f
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3a3
	.uleb128 0x1d
	.4byte	.LASF53
	.byte	0x1
	.2byte	0x11f
	.4byte	0x25
	.4byte	.LLST0
	.uleb128 0x1e
	.4byte	.LBB21
	.4byte	.LBE21-.LBB21
	.uleb128 0x1f
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x122
	.4byte	0x25
	.4byte	.LLST1
	.uleb128 0x1f
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x123
	.4byte	0x25
	.4byte	.LLST2
	.uleb128 0x1f
	.4byte	.LASF52
	.byte	0x1
	.2byte	0x124
	.4byte	0x25
	.4byte	.LLST3
	.uleb128 0x20
	.4byte	0x293
	.4byte	.LBB22
	.4byte	.LBE22-.LBB22
	.byte	0x1
	.2byte	0x125
	.uleb128 0x21
	.4byte	0x2aa
	.4byte	.LLST3
	.uleb128 0x21
	.4byte	0x2a0
	.4byte	.LLST5
	.uleb128 0x1e
	.4byte	.LBB23
	.4byte	.LBE23-.LBB23
	.uleb128 0x22
	.4byte	0x2b4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LASF55
	.byte	0x1
	.byte	0x6d
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3c6
	.uleb128 0x24
	.4byte	.LASF54
	.byte	0x1
	.byte	0x6d
	.4byte	0x1b1
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x23
	.4byte	.LASF56
	.byte	0x1
	.byte	0x72
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x54c
	.uleb128 0x25
	.string	"tag"
	.byte	0x1
	.byte	0x72
	.4byte	0xb8
	.4byte	.LLST6
	.uleb128 0x26
	.4byte	.LASF38
	.byte	0x1
	.byte	0x72
	.4byte	0x1a6
	.4byte	.LLST7
	.uleb128 0x27
	.string	"it"
	.byte	0x1
	.byte	0x82
	.4byte	0x54c
	.4byte	.LLST8
	.uleb128 0x28
	.4byte	0x2c1
	.4byte	.LBB24
	.4byte	.LBE24-.LBB24
	.byte	0x1
	.byte	0x7c
	.uleb128 0x29
	.4byte	.LBB26
	.4byte	.LBE26-.LBB26
	.4byte	0x492
	.uleb128 0x2a
	.4byte	.LASF57
	.byte	0x1
	.byte	0x8e
	.4byte	0x2c
	.4byte	.LLST9
	.uleb128 0x2a
	.4byte	.LASF58
	.byte	0x1
	.byte	0x8f
	.4byte	0x54c
	.4byte	.LLST10
	.uleb128 0x2b
	.4byte	.LVL21
	.4byte	0xfdd
	.4byte	0x455
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL23
	.4byte	0xfe8
	.uleb128 0x2b
	.4byte	.LVL26
	.4byte	0xff3
	.4byte	0x47b
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL28
	.4byte	0xfff
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 5
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	.LBB27
	.4byte	.LBE27-.LBB27
	.4byte	0x4ad
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.byte	0x9a
	.4byte	0x25
	.4byte	.LLST11
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL10
	.4byte	0x100a
	.4byte	0x4c0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL11
	.4byte	0x1016
	.4byte	0x4de
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL12
	.4byte	0x1022
	.4byte	0x4fb
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL15
	.4byte	0xff3
	.4byte	0x518
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL19
	.4byte	0x1022
	.4byte	0x532
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 5
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL37
	.4byte	0xff3
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x26f
	.uleb128 0x2f
	.4byte	.LASF60
	.byte	0x1
	.byte	0xd2
	.4byte	0x148
	.byte	0x3
	.4byte	0x582
	.uleb128 0x1b
	.string	"tag"
	.byte	0x1
	.byte	0xd2
	.4byte	0xb8
	.uleb128 0x30
	.4byte	.LASF38
	.byte	0x1
	.byte	0xd2
	.4byte	0x582
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.byte	0xd5
	.4byte	0x25
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1a6
	.uleb128 0x18
	.4byte	.LASF61
	.byte	0x1
	.2byte	0x10c
	.4byte	0x148
	.byte	0x3
	.4byte	0x5bd
	.uleb128 0x15
	.string	"tag"
	.byte	0x1
	.2byte	0x10c
	.4byte	0xb8
	.uleb128 0x19
	.4byte	.LASF38
	.byte	0x1
	.2byte	0x10c
	.4byte	0x582
	.uleb128 0x16
	.string	"it"
	.byte	0x1
	.2byte	0x110
	.4byte	0x54c
	.byte	0
	.uleb128 0x32
	.4byte	.LASF63
	.byte	0x1
	.byte	0xf1
	.byte	0x3
	.4byte	0x5eb
	.uleb128 0x1b
	.string	"tag"
	.byte	0x1
	.byte	0xf1
	.4byte	0xb8
	.uleb128 0x30
	.4byte	.LASF38
	.byte	0x1
	.byte	0xf1
	.4byte	0x1a6
	.uleb128 0x33
	.4byte	.LASF39
	.byte	0x1
	.byte	0xf3
	.4byte	0xd9
	.byte	0
	.uleb128 0x23
	.4byte	.LASF64
	.byte	0x1
	.byte	0xb2
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x778
	.uleb128 0x26
	.4byte	.LASF38
	.byte	0x1
	.byte	0xb2
	.4byte	0x1a6
	.4byte	.LLST12
	.uleb128 0x25
	.string	"tag"
	.byte	0x1
	.byte	0xb3
	.4byte	0xb8
	.4byte	.LLST13
	.uleb128 0x24
	.4byte	.LASF65
	.byte	0x1
	.byte	0xb4
	.4byte	0xb8
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x34
	.uleb128 0x2a
	.4byte	.LASF49
	.byte	0x1
	.byte	0xbc
	.4byte	0x1a6
	.4byte	.LLST14
	.uleb128 0x35
	.4byte	.LASF66
	.byte	0x1
	.byte	0xcc
	.4byte	0x16a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x36
	.4byte	0x552
	.4byte	.LBB34
	.4byte	.LBE34-.LBB34
	.byte	0x1
	.byte	0xbe
	.4byte	0x684
	.uleb128 0x37
	.4byte	0x56d
	.uleb128 0x37
	.4byte	0x562
	.uleb128 0x1e
	.4byte	.LBB35
	.4byte	.LBE35-.LBB35
	.uleb128 0x38
	.4byte	0x578
	.4byte	.LLST15
	.uleb128 0x2d
	.4byte	.LVL44
	.4byte	0x30d
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	0x588
	.4byte	.LBB36
	.4byte	.LBE36-.LBB36
	.byte	0x1
	.byte	0xbf
	.4byte	0x6d3
	.uleb128 0x21
	.4byte	0x5a5
	.4byte	.LLST16
	.uleb128 0x21
	.4byte	0x599
	.4byte	.LLST17
	.uleb128 0x1e
	.4byte	.LBB37
	.4byte	.LBE37-.LBB37
	.uleb128 0x38
	.4byte	0x5b1
	.4byte	.LLST18
	.uleb128 0x2e
	.4byte	.LVL50
	.4byte	0x1022
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	0x5bd
	.4byte	.LBB38
	.4byte	.LBE38-.LBB38
	.byte	0x1
	.byte	0xc2
	.4byte	0x71b
	.uleb128 0x21
	.4byte	0x5d4
	.4byte	.LLST19
	.uleb128 0x21
	.4byte	0x5c9
	.4byte	.LLST20
	.uleb128 0x1e
	.4byte	.LBB39
	.4byte	.LBE39-.LBB39
	.uleb128 0x38
	.4byte	0x5df
	.4byte	.LLST21
	.uleb128 0x2e
	.4byte	.LVL62
	.4byte	0x30d
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL39
	.4byte	0x100a
	.4byte	0x72e
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL40
	.4byte	0x1016
	.4byte	0x74b
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL63
	.4byte	0xff3
	.4byte	0x768
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x39
	.4byte	.LVL65
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3a
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x13a
	.4byte	0xd9
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x79c
	.uleb128 0x2d
	.4byte	.LVL66
	.4byte	0x102d
	.byte	0
	.uleb128 0x3a
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x141
	.4byte	0xd9
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7ed
	.uleb128 0x3b
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x146
	.4byte	0xd9
	.uleb128 0x5
	.byte	0x3
	.4byte	base$5262
	.uleb128 0x2d
	.4byte	.LVL67
	.4byte	0x1039
	.uleb128 0x2d
	.4byte	.LVL68
	.4byte	0x778
	.uleb128 0x2d
	.4byte	.LVL69
	.4byte	0x778
	.uleb128 0x2d
	.4byte	.LVL70
	.4byte	0x1045
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF70
	.byte	0x1
	.2byte	0x153
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa2e
	.uleb128 0x3d
	.string	"tag"
	.byte	0x1
	.2byte	0x153
	.4byte	0xb8
	.4byte	.LLST22
	.uleb128 0x1d
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x153
	.4byte	0xef
	.4byte	.LLST23
	.uleb128 0x1d
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x153
	.4byte	0xce
	.4byte	.LLST24
	.uleb128 0x3e
	.4byte	.LASF73
	.byte	0x1
	.2byte	0x154
	.4byte	0x1a6
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3b
	.4byte	.LASF74
	.byte	0x1
	.2byte	0x157
	.4byte	0xa2e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x3b
	.4byte	.LASF75
	.byte	0x1
	.2byte	0x158
	.4byte	0xa3e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -109
	.uleb128 0x1f
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x159
	.4byte	0xb8
	.4byte	.LLST25
	.uleb128 0x1f
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x15a
	.4byte	0x25
	.4byte	.LLST26
	.uleb128 0x3f
	.4byte	0x2f3
	.4byte	.LBB40
	.4byte	.LBE40-.LBB40
	.byte	0x1
	.2byte	0x162
	.4byte	0x89f
	.uleb128 0x21
	.4byte	0x303
	.4byte	.LLST27
	.byte	0
	.uleb128 0x29
	.4byte	.LBB42
	.4byte	.LBE42-.LBB42
	.4byte	0x8df
	.uleb128 0x40
	.string	"i"
	.byte	0x1
	.2byte	0x16a
	.4byte	0x25
	.4byte	.LLST28
	.uleb128 0x2e
	.4byte	.LVL81
	.4byte	0x1051
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0xd
	.byte	0x72
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x91
	.sleb128 0
	.byte	0x22
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x8
	.byte	0x6d
	.byte	0x1c
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC21
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL76
	.4byte	0x105c
	.4byte	0x90f
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x11
	.byte	0x76
	.sleb128 6
	.byte	0x72
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x30
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x32
	.byte	0x26
	.byte	0x32
	.byte	0x24
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL83
	.4byte	0x79c
	.uleb128 0x2b
	.4byte	.LVL84
	.4byte	0x5eb
	.4byte	0x949
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -109
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL85
	.4byte	0x79c
	.uleb128 0x2b
	.4byte	.LVL86
	.4byte	0x5eb
	.4byte	0x983
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC25
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -109
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL87
	.4byte	0x79c
	.uleb128 0x2b
	.4byte	.LVL88
	.4byte	0x5eb
	.4byte	0x9bd
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC27
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -109
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL89
	.4byte	0x79c
	.uleb128 0x2b
	.4byte	.LVL90
	.4byte	0x5eb
	.4byte	0x9f7
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x35
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC29
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -109
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL91
	.4byte	0x79c
	.uleb128 0x2e
	.4byte	.LVL92
	.4byte	0x5eb
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC31
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -109
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	0xb1
	.4byte	0xa3e
	.uleb128 0x41
	.4byte	0x9b
	.byte	0x12
	.byte	0
	.uleb128 0x12
	.4byte	0xb1
	.4byte	0xa4e
	.uleb128 0x41
	.4byte	0x9b
	.byte	0x30
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF78
	.byte	0x1
	.2byte	0x173
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc8a
	.uleb128 0x3d
	.string	"tag"
	.byte	0x1
	.2byte	0x173
	.4byte	0xb8
	.4byte	.LLST29
	.uleb128 0x1d
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x173
	.4byte	0xef
	.4byte	.LLST30
	.uleb128 0x1d
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x173
	.4byte	0xce
	.4byte	.LLST31
	.uleb128 0x3e
	.4byte	.LASF73
	.byte	0x1
	.2byte	0x174
	.4byte	0x1a6
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3b
	.4byte	.LASF74
	.byte	0x1
	.2byte	0x177
	.4byte	0xa2e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x3b
	.4byte	.LASF79
	.byte	0x1
	.2byte	0x178
	.4byte	0xc8a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -77
	.uleb128 0x1f
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x179
	.4byte	0xb8
	.4byte	.LLST32
	.uleb128 0x1f
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x17a
	.4byte	0x25
	.4byte	.LLST33
	.uleb128 0x3f
	.4byte	0x2f3
	.4byte	.LBB43
	.4byte	.LBE43-.LBB43
	.byte	0x1
	.2byte	0x182
	.4byte	0xb00
	.uleb128 0x21
	.4byte	0x303
	.4byte	.LLST34
	.byte	0
	.uleb128 0x29
	.4byte	.LBB45
	.4byte	.LBE45-.LBB45
	.4byte	0xb3b
	.uleb128 0x40
	.string	"i"
	.byte	0x1
	.2byte	0x18a
	.4byte	0x25
	.4byte	.LLST35
	.uleb128 0x2e
	.4byte	.LVL107
	.4byte	0x1051
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x8
	.byte	0x91
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x8
	.byte	0x4d
	.byte	0x1c
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC35
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL102
	.4byte	0x105c
	.4byte	0xb6b
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x11
	.byte	0x76
	.sleb128 6
	.byte	0x72
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x30
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x32
	.byte	0x26
	.byte	0x32
	.byte	0x24
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL109
	.4byte	0x79c
	.uleb128 0x2b
	.4byte	.LVL110
	.4byte	0x5eb
	.4byte	0xba5
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -77
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL111
	.4byte	0x79c
	.uleb128 0x2b
	.4byte	.LVL112
	.4byte	0x5eb
	.4byte	0xbdf
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC25
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -77
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL113
	.4byte	0x79c
	.uleb128 0x2b
	.4byte	.LVL114
	.4byte	0x5eb
	.4byte	0xc19
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC27
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -77
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL115
	.4byte	0x79c
	.uleb128 0x2b
	.4byte	.LVL116
	.4byte	0x5eb
	.4byte	0xc53
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x35
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC29
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -77
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL117
	.4byte	0x79c
	.uleb128 0x2e
	.4byte	.LVL118
	.4byte	0x5eb
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC31
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -77
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	0xb1
	.4byte	0xc9a
	.uleb128 0x41
	.4byte	0x9b
	.byte	0x10
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x193
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf3b
	.uleb128 0x3d
	.string	"tag"
	.byte	0x1
	.2byte	0x193
	.4byte	0xb8
	.4byte	.LLST36
	.uleb128 0x1d
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x193
	.4byte	0xef
	.4byte	.LLST37
	.uleb128 0x1d
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x193
	.4byte	0xce
	.4byte	.LLST38
	.uleb128 0x1d
	.4byte	.LASF73
	.byte	0x1
	.2byte	0x193
	.4byte	0x1a6
	.4byte	.LLST39
	.uleb128 0x3b
	.4byte	.LASF74
	.byte	0x1
	.2byte	0x197
	.4byte	0xa2e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x1f
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x198
	.4byte	0xb8
	.4byte	.LLST40
	.uleb128 0x3b
	.4byte	.LASF81
	.byte	0x1
	.2byte	0x19b
	.4byte	0xf3b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -141
	.uleb128 0x1f
	.4byte	.LASF82
	.byte	0x1
	.2byte	0x19c
	.4byte	0xab
	.4byte	.LLST41
	.uleb128 0x1f
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x19d
	.4byte	0x25
	.4byte	.LLST42
	.uleb128 0x3f
	.4byte	0x2f3
	.4byte	.LBB46
	.4byte	.LBE46-.LBB46
	.byte	0x1
	.2byte	0x1a5
	.4byte	0xd5e
	.uleb128 0x21
	.4byte	0x303
	.4byte	.LLST43
	.byte	0
	.uleb128 0x29
	.4byte	.LBB48
	.4byte	.LBE48-.LBB48
	.4byte	0xd93
	.uleb128 0x40
	.string	"i"
	.byte	0x1
	.2byte	0x1af
	.4byte	0x25
	.4byte	.LLST44
	.uleb128 0x2e
	.4byte	.LVL138
	.4byte	0x1051
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC48
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	.LBB49
	.4byte	.LBE49-.LBB49
	.4byte	0xdc8
	.uleb128 0x40
	.string	"i"
	.byte	0x1
	.2byte	0x1ba
	.4byte	0x25
	.4byte	.LLST45
	.uleb128 0x2e
	.4byte	.LVL145
	.4byte	0x1051
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC35
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL128
	.4byte	0x105c
	.4byte	0xdf8
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x11
	.byte	0x75
	.sleb128 6
	.byte	0x72
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x30
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x32
	.byte	0x26
	.byte	0x32
	.byte	0x24
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL133
	.4byte	0x1051
	.4byte	0xe1c
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -141
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC44
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL154
	.4byte	0x79c
	.uleb128 0x2b
	.4byte	.LVL155
	.4byte	0x5eb
	.4byte	0xe56
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -141
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL156
	.4byte	0x79c
	.uleb128 0x2b
	.4byte	.LVL157
	.4byte	0x5eb
	.4byte	0xe90
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC25
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -141
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL158
	.4byte	0x79c
	.uleb128 0x2b
	.4byte	.LVL159
	.4byte	0x5eb
	.4byte	0xeca
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC27
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -141
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL160
	.4byte	0x79c
	.uleb128 0x2b
	.4byte	.LVL161
	.4byte	0x5eb
	.4byte	0xf04
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x35
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC29
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -141
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL162
	.4byte	0x79c
	.uleb128 0x2e
	.4byte	.LVL163
	.4byte	0x5eb
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC31
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -141
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	0xb1
	.4byte	0xf4b
	.uleb128 0x41
	.4byte	0x9b
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	.LASF83
	.byte	0x1
	.byte	0x59
	.4byte	0x1a6
	.uleb128 0x5
	.byte	0x3
	.4byte	s_log_default_level
	.uleb128 0x35
	.4byte	.LASF84
	.byte	0x1
	.byte	0x5a
	.4byte	0x27a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_log_tags
	.uleb128 0x12
	.4byte	0x209
	.4byte	0xf7d
	.uleb128 0x41
	.4byte	0x9b
	.byte	0x1e
	.byte	0
	.uleb128 0x35
	.4byte	.LASF85
	.byte	0x1
	.byte	0x5b
	.4byte	0xf6d
	.uleb128 0x5
	.byte	0x3
	.4byte	s_log_cache
	.uleb128 0x35
	.4byte	.LASF86
	.byte	0x1
	.byte	0x5c
	.4byte	0xd9
	.uleb128 0x5
	.byte	0x3
	.4byte	s_log_cache_max_generation
	.uleb128 0x35
	.4byte	.LASF87
	.byte	0x1
	.byte	0x5d
	.4byte	0xd9
	.uleb128 0x5
	.byte	0x3
	.4byte	s_log_cache_entry_count
	.uleb128 0x35
	.4byte	.LASF88
	.byte	0x1
	.byte	0x5e
	.4byte	0x1b1
	.uleb128 0x5
	.byte	0x3
	.4byte	s_log_print_func
	.uleb128 0x35
	.4byte	.LASF89
	.byte	0x1
	.byte	0x5f
	.4byte	0x15f
	.uleb128 0x5
	.byte	0x3
	.4byte	s_log_mutex
	.uleb128 0x42
	.4byte	.LASF107
	.byte	0x11
	.byte	0x2d
	.4byte	0x14f
	.uleb128 0x43
	.4byte	.LASF90
	.4byte	.LASF90
	.byte	0xc
	.byte	0x21
	.uleb128 0x43
	.4byte	.LASF91
	.4byte	.LASF91
	.byte	0xd
	.byte	0x65
	.uleb128 0x44
	.4byte	.LASF92
	.4byte	.LASF92
	.byte	0x9
	.2byte	0x2a8
	.uleb128 0x43
	.4byte	.LASF93
	.4byte	.LASF93
	.byte	0xc
	.byte	0x1e
	.uleb128 0x44
	.4byte	.LASF94
	.4byte	.LASF94
	.byte	0x9
	.2byte	0x621
	.uleb128 0x44
	.4byte	.LASF95
	.4byte	.LASF95
	.byte	0x9
	.2byte	0x3e9
	.uleb128 0x43
	.4byte	.LASF96
	.4byte	.LASF96
	.byte	0xc
	.byte	0x1c
	.uleb128 0x44
	.4byte	.LASF97
	.4byte	.LASF97
	.byte	0xe
	.2byte	0x2d4
	.uleb128 0x44
	.4byte	.LASF98
	.4byte	.LASF98
	.byte	0xf
	.2byte	0x860
	.uleb128 0x44
	.4byte	.LASF99
	.4byte	.LASF99
	.byte	0xf
	.2byte	0x4d1
	.uleb128 0x43
	.4byte	.LASF100
	.4byte	.LASF100
	.byte	0x10
	.byte	0xde
	.uleb128 0x45
	.4byte	.LASF108
	.4byte	.LASF108
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
	.uleb128 0x8
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
	.uleb128 0xe
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
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0x38
	.uleb128 0xb
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
	.uleb128 0xe
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0x5
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
	.uleb128 0x5
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
	.uleb128 0x8
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
	.uleb128 0x1d
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x18
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x34
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0x18
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
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x18
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
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x41
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x42
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x44
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
	.uleb128 0x45
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
	.4byte	.LVL0
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL7
	.4byte	.LFE20
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL3
	.4byte	.LVL5
	.2byte	0x3
	.byte	0x7b
	.sleb128 1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL3
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL9
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL13
	.4byte	.LVL16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL25
	.4byte	.LVL27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL31
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
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL9
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL14
	.4byte	.LVL15-1
	.2byte	0x5
	.byte	0x3
	.4byte	s_log_default_level
	.4byte	.LVL15-1
	.4byte	.LVL16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL36
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL18
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x3
	.byte	0x7a
	.sleb128 6
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL23-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL24
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL34
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL38
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL64
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL38
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x2
	.byte	0x78
	.sleb128 0
	.4byte	.LVL59
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL61
	.4byte	.LVL62-1
	.2byte	0x5
	.byte	0x3
	.4byte	s_log_cache
	.4byte	.LVL62-1
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL43
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL46
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x8
	.byte	0x75
	.sleb128 4
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL52
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL42
	.4byte	.LVL44-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL48
	.4byte	.LVL62
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+1580
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL48
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x2
	.byte	0x78
	.sleb128 0
	.4byte	.LVL59
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL61
	.4byte	.LVL62-1
	.2byte	0x5
	.byte	0x3
	.4byte	s_log_cache
	.4byte	.LVL62-1
	.4byte	.LVL62
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL49
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL55
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL55
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x2
	.byte	0x78
	.sleb128 0
	.4byte	.LVL59
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL61
	.4byte	.LVL62-1
	.2byte	0x5
	.byte	0x3
	.4byte	s_log_cache
	.4byte	.LVL62-1
	.4byte	.LVL62
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL57
	.4byte	.LVL59
	.2byte	0x9
	.byte	0x3
	.4byte	s_log_cache_max_generation
	.byte	0x6
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL60
	.4byte	.LVL62-1
	.2byte	0x9
	.byte	0x3
	.4byte	s_log_cache_max_generation
	.byte	0x6
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL72
	.4byte	.LFE24
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL71
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL93
	.4byte	.LFE24
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL72
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL95
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL76
	.4byte	.LVL77
	.2byte	0x4
	.byte	0x91
	.sleb128 -128
	.byte	0x9f
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL79
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL73
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL75
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL75
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL79
	.4byte	.LVL80
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL80
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL97
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL98
	.4byte	.LFE25
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL97
	.4byte	.LVL119
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL119
	.4byte	.LFE25
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL97
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL98
	.4byte	.LVL120
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL121
	.4byte	.LVL122
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL102
	.4byte	.LVL103
	.2byte	0x4
	.byte	0x91
	.sleb128 -96
	.byte	0x9f
	.4byte	.LVL103
	.4byte	.LVL104
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL105
	.4byte	.LVL122
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL99
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL101
	.4byte	.LVL122
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL101
	.4byte	.LVL119
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL105
	.4byte	.LVL106
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL106
	.4byte	.LVL122
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL123
	.4byte	.LVL124
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL124
	.4byte	.LFE26
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL123
	.4byte	.LVL164
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL164
	.4byte	.LFE26
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL123
	.4byte	.LVL124
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL124
	.4byte	.LVL165
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL166
	.4byte	.LVL167
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL123
	.4byte	.LVL124
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL124
	.4byte	.LFE26
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL128
	.4byte	.LVL129
	.2byte	0x4
	.byte	0x91
	.sleb128 -160
	.byte	0x9f
	.4byte	.LVL129
	.4byte	.LVL130
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL131
	.4byte	.LVL150
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL131
	.4byte	.LVL132
	.2byte	0x4
	.byte	0x91
	.sleb128 -141
	.byte	0x9f
	.4byte	.LVL132
	.4byte	.LVL133-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL133-1
	.4byte	.LVL134
	.2byte	0x4
	.byte	0x91
	.sleb128 -141
	.byte	0x9f
	.4byte	.LVL134
	.4byte	.LVL135
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL135
	.4byte	.LVL145
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL145
	.4byte	.LVL146
	.2byte	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL146
	.4byte	.LVL147
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL147
	.4byte	.LVL148
	.2byte	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL148
	.4byte	.LVL152
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL152
	.4byte	.LVL153
	.2byte	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL125
	.4byte	.LVL126
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL127
	.4byte	.LVL167
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL127
	.4byte	.LVL164
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL135
	.4byte	.LVL136
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL136
	.4byte	.LVL142
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL143
	.4byte	.LVL144
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL144
	.4byte	.LVL151
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x5c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
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
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB15
	.4byte	.LFE15
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF59:
	.string	"should_output"
.LASF81:
	.string	"hd_buffer"
.LASF89:
	.string	"s_log_mutex"
.LASF85:
	.string	"s_log_cache"
.LASF63:
	.string	"add_to_cache"
.LASF75:
	.string	"hex_buffer"
.LASF80:
	.string	"esp_log_buffer_hexdump_internal"
.LASF39:
	.string	"generation"
.LASF83:
	.string	"s_log_default_level"
.LASF53:
	.string	"index"
.LASF6:
	.string	"short int"
.LASF3:
	.string	"size_t"
.LASF91:
	.string	"malloc"
.LASF13:
	.string	"sizetype"
.LASF62:
	.string	"heap_swap"
.LASF98:
	.string	"xTaskGetSchedulerState"
.LASF107:
	.string	"__ctype_ptr__"
.LASF25:
	.string	"__va_ndx"
.LASF55:
	.string	"esp_log_set_vprintf"
.LASF9:
	.string	"long long int"
.LASF8:
	.string	"__uint32_t"
.LASF104:
	.string	"clear_log_level_list"
.LASF7:
	.string	"__uint16_t"
.LASF29:
	.string	"va_list"
.LASF42:
	.string	"__va_list_tag"
.LASF108:
	.string	"memcpy"
.LASF66:
	.string	"list"
.LASF16:
	.string	"uint8_t"
.LASF11:
	.string	"__intptr_t"
.LASF102:
	.string	"C:/esp/esp-idf/components/log/log.c"
.LASF64:
	.string	"esp_log_write"
.LASF92:
	.string	"xQueueGenericSend"
.LASF19:
	.string	"intptr_t"
.LASF78:
	.string	"esp_log_buffer_char_internal"
.LASF0:
	.string	"unsigned int"
.LASF45:
	.string	"uncached_tag_entry_t"
.LASF65:
	.string	"format"
.LASF10:
	.string	"long long unsigned int"
.LASF94:
	.string	"xQueueCreateMutex"
.LASF12:
	.string	"long int"
.LASF33:
	.string	"ESP_LOG_INFO"
.LASF4:
	.string	"__uint8_t"
.LASF99:
	.string	"xTaskGetTickCount"
.LASF27:
	.string	"QueueHandle_t"
.LASF72:
	.string	"buff_len"
.LASF46:
	.string	"log_tags_head"
.LASF88:
	.string	"s_log_print_func"
.LASF40:
	.string	"cached_tag_entry_t"
.LASF100:
	.string	"sprintf"
.LASF28:
	.string	"SemaphoreHandle_t"
.LASF5:
	.string	"unsigned char"
.LASF54:
	.string	"func"
.LASF2:
	.string	"signed char"
.LASF44:
	.string	"entries"
.LASF87:
	.string	"s_log_cache_entry_count"
.LASF18:
	.string	"uint32_t"
.LASF43:
	.string	"uncached_tag_entry_"
.LASF60:
	.string	"get_cached_log_level"
.LASF17:
	.string	"uint16_t"
.LASF20:
	.string	"BaseType_t"
.LASF57:
	.string	"entry_size"
.LASF90:
	.string	"strlen"
.LASF76:
	.string	"ptr_line"
.LASF21:
	.string	"TickType_t"
.LASF47:
	.string	"slh_first"
.LASF68:
	.string	"esp_log_timestamp"
.LASF58:
	.string	"new_entry"
.LASF61:
	.string	"get_uncached_log_level"
.LASF15:
	.string	"char"
.LASF48:
	.string	"level_for_message"
.LASF34:
	.string	"ESP_LOG_DEBUG"
.LASF105:
	.string	"esp_ptr_byte_accesible"
.LASF30:
	.string	"ESP_LOG_NONE"
.LASF73:
	.string	"log_level"
.LASF1:
	.string	"short unsigned int"
.LASF93:
	.string	"strcpy"
.LASF97:
	.string	"xthal_get_ccount"
.LASF26:
	.string	"_Bool"
.LASF67:
	.string	"esp_log_early_timestamp"
.LASF36:
	.string	"esp_log_level_t"
.LASF77:
	.string	"bytes_cur_line"
.LASF32:
	.string	"ESP_LOG_WARN"
.LASF95:
	.string	"xQueueGenericReceive"
.LASF71:
	.string	"buffer"
.LASF51:
	.string	"right_index"
.LASF103:
	.string	"C:\\\\esp\\\\ArkPOS2-esp\\\\build\\\\log"
.LASF14:
	.string	"long unsigned int"
.LASF49:
	.string	"level_for_tag"
.LASF50:
	.string	"left_index"
.LASF23:
	.string	"__va_stk"
.LASF41:
	.string	"sle_next"
.LASF35:
	.string	"ESP_LOG_VERBOSE"
.LASF38:
	.string	"level"
.LASF96:
	.string	"strcmp"
.LASF74:
	.string	"temp_buffer"
.LASF22:
	.string	"__gnuc_va_list"
.LASF24:
	.string	"__va_reg"
.LASF106:
	.string	"heap_bubble_down"
.LASF37:
	.string	"vprintf_like_t"
.LASF84:
	.string	"s_log_tags"
.LASF70:
	.string	"esp_log_buffer_hex_internal"
.LASF82:
	.string	"ptr_hd"
.LASF69:
	.string	"base"
.LASF101:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF79:
	.string	"char_buffer"
.LASF31:
	.string	"ESP_LOG_ERROR"
.LASF52:
	.string	"next"
.LASF86:
	.string	"s_log_cache_max_generation"
.LASF56:
	.string	"esp_log_level_set"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-61-gab8375a) 5.2.0"
