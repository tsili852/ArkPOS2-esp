	.file	"sha.c"
	.text
.Ltext0:
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC4:
	.string	"!engine->in_use && \"in_use flag should be cleared\""
	.align	4
.LC7:
	.string	"C:/esp/esp-idf/components/esp32/hwcrypto/sha.c"
	.section	.text.esp_sha_lock_engine_inner,"ax",@progbits
	.literal_position
	.literal .LC0, state_change_lock
	.literal .LC1, engine_states
	.literal .LC2, 1072693276
	.literal .LC3, 1072693280
	.literal .LC5, .LC4
	.literal .LC6, __func__$3338
	.literal .LC8, .LC7
	.align	4
	.type	esp_sha_lock_engine_inner, @function
esp_sha_lock_engine_inner:
.LFB14:
	.file 1 "C:/esp/esp-idf/components/esp32/hwcrypto/sha.c"
	.loc 1 158 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 159 0
	l32r	a10, .LC0
	call8	_lock_acquire
.LVL1:
.LBB37:
.LBB38:
	.loc 1 131 0
	l32r	a8, .LC1
	l8ui	a8, a8, 4
	.loc 1 133 0
	bnez.n	a8, .L5
	.loc 1 132 0
	l32r	a8, .LC1
	l8ui	a8, a8, 12
	bnez.n	a8, .L6
	.loc 1 133 0
	l32r	a8, .LC1
	l8ui	a8, a8, 20
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
.LBE38:
.LBE37:
	.loc 1 161 0
	beqz.n	a8, .L3
	.loc 1 165 0
	l32r	a9, .LC2
	memw
	l32i.n	a10, a9, 0
	movi.n	a8, 2
	or	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
	.loc 1 167 0
	l32r	a9, .LC3
	memw
	l32i.n	a10, a9, 0
	movi.n	a8, -0xb
	and	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
	.loc 1 170 0
	call8	ets_sha_enable
.LVL2:
.L3:
	.loc 1 175 0
	l8ui	a8, a2, 4
	beqz.n	a8, .L4
	.loc 1 175 0 is_stmt 0 discriminator 1
	l32r	a13, .LC5
	l32r	a12, .LC6
	movi	a11, 0xaf
	l32r	a10, .LC8
	call8	__assert_func
.LVL3:
.L4:
	.loc 1 176 0 is_stmt 1
	movi.n	a8, 1
	s8i	a8, a2, 4
	.loc 1 178 0
	l32r	a10, .LC0
	call8	_lock_release
.LVL4:
	retw.n
.LFE14:
	.size	esp_sha_lock_engine_inner, .-esp_sha_lock_engine_inner
	.section	.text.esp_sha_lock_memory_block,"ax",@progbits
	.literal_position
	.literal .LC9, memory_block_lock
	.align	4
	.global	esp_sha_lock_memory_block
	.type	esp_sha_lock_memory_block, @function
esp_sha_lock_memory_block:
.LFB9:
	.loc 1 116 0
	entry	sp, 32
.LCFI1:
	.loc 1 117 0
	l32r	a10, .LC9
	call8	_lock_acquire
.LVL5:
	retw.n
.LFE9:
	.size	esp_sha_lock_memory_block, .-esp_sha_lock_memory_block
	.section	.text.esp_sha_unlock_memory_block,"ax",@progbits
	.literal_position
	.literal .LC10, memory_block_lock
	.align	4
	.global	esp_sha_unlock_memory_block
	.type	esp_sha_unlock_memory_block, @function
esp_sha_unlock_memory_block:
.LFB10:
	.loc 1 121 0
	entry	sp, 32
.LCFI2:
	.loc 1 122 0
	l32r	a10, .LC10
	call8	_lock_release
.LVL6:
	retw.n
.LFE10:
	.size	esp_sha_unlock_memory_block, .-esp_sha_unlock_memory_block
	.section	.text.esp_sha_try_lock_engine,"ax",@progbits
	.literal_position
	.literal .LC11, engine_states
	.align	4
	.global	esp_sha_try_lock_engine
	.type	esp_sha_try_lock_engine, @function
esp_sha_try_lock_engine:
.LFB12:
	.loc 1 139 0
.LVL7:
	entry	sp, 32
.LCFI3:
.LVL8:
.LBB39:
.LBB40:
	.loc 1 75 0
	beqz.n	a2, .L12
	beqi	a2, 1, .L15
	j	.L17
.L12:
	.loc 1 77 0
	movi.n	a2, 0
.LVL9:
	j	.L13
.LVL10:
.L17:
	.loc 1 81 0
	movi.n	a2, 2
.LVL11:
	j	.L13
.LVL12:
.L15:
	.loc 1 79 0
	movi.n	a2, 1
.LVL13:
.L13:
.LBE40:
.LBE39:
	.loc 1 140 0
	l32r	a8, .LC11
	addx8	a2, a2, a8
.LVL14:
	.loc 1 141 0
	mov.n	a10, a2
	call8	_lock_try_acquire
.LVL15:
	bnez.n	a10, .L16
	.loc 1 145 0
	mov.n	a10, a2
	call8	esp_sha_lock_engine_inner
.LVL16:
	.loc 1 146 0
	movi.n	a2, 1
.LVL17:
	retw.n
.LVL18:
.L16:
	.loc 1 143 0
	movi.n	a2, 0
.LVL19:
	.loc 1 148 0
	retw.n
.LFE12:
	.size	esp_sha_try_lock_engine, .-esp_sha_try_lock_engine
	.section	.text.esp_sha_lock_engine,"ax",@progbits
	.literal_position
	.literal .LC12, engine_states
	.align	4
	.global	esp_sha_lock_engine
	.type	esp_sha_lock_engine, @function
esp_sha_lock_engine:
.LFB13:
	.loc 1 151 0
.LVL20:
	entry	sp, 32
.LCFI4:
.LVL21:
.LBB41:
.LBB42:
	.loc 1 75 0
	beqz.n	a2, .L20
	beqi	a2, 1, .L22
	j	.L23
.L20:
	.loc 1 77 0
	movi.n	a2, 0
.LVL22:
	j	.L21
.LVL23:
.L23:
	.loc 1 81 0
	movi.n	a2, 2
.LVL24:
	j	.L21
.LVL25:
.L22:
	.loc 1 79 0
	movi.n	a2, 1
.LVL26:
.L21:
.LBE42:
.LBE41:
	.loc 1 152 0
	l32r	a8, .LC12
	addx8	a2, a2, a8
.LVL27:
	.loc 1 153 0
	mov.n	a10, a2
	call8	_lock_acquire
.LVL28:
	.loc 1 154 0
	mov.n	a10, a2
	call8	esp_sha_lock_engine_inner
.LVL29:
	retw.n
.LFE13:
	.size	esp_sha_lock_engine, .-esp_sha_lock_engine
	.section	.rodata.str1.4
	.align	4
.LC15:
	.string	"engine->in_use && \"in_use flag should be set\""
	.section	.text.esp_sha_unlock_engine,"ax",@progbits
	.literal_position
	.literal .LC13, state_change_lock
	.literal .LC14, engine_states
	.literal .LC16, .LC15
	.literal .LC17, __func__$3343
	.literal .LC18, .LC7
	.literal .LC19, 1072693280
	.literal .LC20, 1072693276
	.align	4
	.global	esp_sha_unlock_engine
	.type	esp_sha_unlock_engine, @function
esp_sha_unlock_engine:
.LFB15:
	.loc 1 183 0
.LVL30:
	entry	sp, 32
.LCFI5:
.LVL31:
.LBB43:
.LBB44:
	.loc 1 75 0
	beqz.n	a2, .L26
	beqi	a2, 1, .L31
	j	.L35
.L26:
	.loc 1 77 0
	movi.n	a2, 0
.LVL32:
	j	.L27
.LVL33:
.L35:
	.loc 1 81 0
	movi.n	a2, 2
.LVL34:
	j	.L27
.LVL35:
.L31:
	.loc 1 79 0
	movi.n	a2, 1
.LVL36:
.L27:
.LBE44:
.LBE43:
	.loc 1 186 0
	l32r	a10, .LC13
	call8	_lock_acquire
.LVL37:
	.loc 1 188 0
	l32r	a8, .LC14
	addx8	a8, a2, a8
	l8ui	a8, a8, 4
	bnez.n	a8, .L28
	.loc 1 188 0 is_stmt 0 discriminator 1
	l32r	a13, .LC16
	l32r	a12, .LC17
	movi	a11, 0xbc
	l32r	a10, .LC18
	call8	__assert_func
.LVL38:
.L28:
	.loc 1 189 0 is_stmt 1
	l32r	a8, .LC14
	addx8	a9, a2, a8
	movi.n	a10, 0
	s8i	a10, a9, 4
.LBB45:
.LBB46:
	.loc 1 131 0
	l8ui	a8, a8, 4
	.loc 1 133 0
	bnez.n	a8, .L32
	.loc 1 132 0
	l32r	a8, .LC14
	l8ui	a8, a8, 12
	bnez.n	a8, .L33
	.loc 1 133 0
	l32r	a8, .LC14
	l8ui	a8, a8, 20
	beqz.n	a8, .L34
	movi.n	a8, 0
	j	.L29
.L32:
	movi.n	a8, 0
	j	.L29
.L33:
	movi.n	a8, 0
	j	.L29
.L34:
	movi.n	a8, 1
.L29:
.LBE46:
.LBE45:
	.loc 1 191 0
	beqz.n	a8, .L30
	.loc 1 196 0
	l32r	a9, .LC19
	memw
	l32i.n	a10, a9, 0
	movi.n	a8, 2
	or	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
	.loc 1 197 0
	l32r	a9, .LC20
	memw
	l32i.n	a10, a9, 0
	movi.n	a8, -3
	and	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
.L30:
	.loc 1 202 0
	l32r	a10, .LC13
	call8	_lock_release
.LVL39:
	.loc 1 204 0
	l32r	a10, .LC14
	addx8	a10, a2, a10
	call8	_lock_release
.LVL40:
	retw.n
.LFE15:
	.size	esp_sha_unlock_engine, .-esp_sha_unlock_engine
	.section	.text.esp_sha_wait_idle,"ax",@progbits
	.literal_position
	.literal .LC21, 1072705676
	.literal .LC22, 1072705692
	.literal .LC23, 1072705708
	.literal .LC24, 1072705724
	.align	4
	.global	esp_sha_wait_idle
	.type	esp_sha_wait_idle, @function
esp_sha_wait_idle:
.LFB16:
	.loc 1 208 0
	entry	sp, 32
.LCFI6:
.L37:
	.loc 1 211 0
	l32r	a8, .LC21
	memw
	l32i.n	a8, a8, 0
	bnez.n	a8, .L37
	.loc 1 212 0
	l32r	a8, .LC22
	memw
	l32i.n	a8, a8, 0
	bnez.n	a8, .L37
	.loc 1 213 0
	l32r	a8, .LC23
	memw
	l32i.n	a8, a8, 0
	bnez.n	a8, .L37
	.loc 1 214 0
	l32r	a8, .LC24
	memw
	l32i.n	a8, a8, 0
	bnez.n	a8, .L37
	.loc 1 219 0
	retw.n
.LFE16:
	.size	esp_sha_wait_idle, .-esp_sha_wait_idle
	.section	.rodata.str1.4
	.align	4
.LC26:
	.string	"engine->in_use && \"SHA engine should be locked\""
	.section	.text.esp_sha_read_digest_state,"ax",@progbits
	.literal_position
	.literal .LC25, engine_states
	.literal .LC27, .LC26
	.literal .LC28, __func__$3354
	.literal .LC29, .LC7
	.literal .LC30, 1072705672
	.literal .LC31, 1072705676
	.literal .LC32, 1072705536
	.align	4
	.global	esp_sha_read_digest_state
	.type	esp_sha_read_digest_state, @function
esp_sha_read_digest_state:
.LFB17:
	.loc 1 222 0
.LVL41:
	entry	sp, 32
.LCFI7:
.LVL42:
.LBB47:
.LBB48:
	.loc 1 75 0
	beqz.n	a2, .L43
	beqi	a2, 1, .L63
	j	.L67
.L43:
	.loc 1 77 0
	movi.n	a8, 0
	j	.L44
.L67:
	.loc 1 81 0
	movi.n	a8, 2
	j	.L44
.L63:
	.loc 1 79 0
	movi.n	a8, 1
.L44:
.LVL43:
.LBE48:
.LBE47:
	.loc 1 224 0
	l32r	a9, .LC25
	addx8	a8, a8, a9
.LVL44:
	l8ui	a8, a8, 4
	bnez.n	a8, .L45
	.loc 1 224 0 is_stmt 0 discriminator 1
	l32r	a13, .LC27
	l32r	a12, .LC28
	movi	a11, 0xe0
	l32r	a10, .LC29
	call8	__assert_func
.LVL45:
.L45:
	.loc 1 226 0 is_stmt 1
	call8	esp_sha_lock_memory_block
.LVL46:
.LBB49:
	.loc 1 230 0
	call8	esp_sha_wait_idle
.LVL47:
.LBB50:
.LBB51:
	.loc 1 40 0
	slli	a9, a2, 4
	l32r	a8, .LC30
	add.n	a8, a9, a8
.LBE51:
.LBE50:
	.loc 1 232 0
	movi.n	a10, 1
	memw
	s32i.n	a10, a8, 0
.L46:
.LVL48:
.LBB52:
.LBB53:
	.loc 1 44 0 discriminator 1
	l32r	a8, .LC31
	add.n	a8, a9, a8
.LBE53:
.LBE52:
	.loc 1 233 0 discriminator 1
	memw
	l32i.n	a8, a8, 0
	beqi	a8, 1, .L46
.LVL49:
	.loc 1 237 0
	addi	a8, a2, -2
	bgeui	a8, 2, .L68
	j	.L64
.LVL50:
.L55:
.LBB54:
	.loc 1 240 0 discriminator 3
	addi.n	a10, a8, 1
	slli	a11, a10, 2
	add.n	a12, a3, a11
	slli	a9, a8, 2
	l32r	a10, .LC32
	add.n	a13, a9, a10
	l32i.n	a13, a13, 0
	s32i.n	a13, a12, 0
	.loc 1 241 0 discriminator 3
	add.n	a9, a3, a9
	add.n	a10, a11, a10
	l32i.n	a10, a10, 0
	s32i.n	a10, a9, 0
	.loc 1 239 0 discriminator 3
	addi.n	a8, a8, 2
.LVL51:
	j	.L47
.LVL52:
.L64:
.LBE54:
	movi.n	a8, 0
.L47:
.LVL53:
.LBB57:
.LBB55:
.LBB56:
	.loc 1 87 0 discriminator 1
	beqi	a2, 1, .L65
	bgei	a2, 2, .L51
	beqz.n	a2, .L52
	j	.L49
.L51:
	beqi	a2, 2, .L53
	beqi	a2, 3, .L54
	j	.L49
.L52:
	.loc 1 89 0
	movi.n	a9, 0x14
	j	.L50
.L53:
	.loc 1 93 0
	movi.n	a9, 0x30
	j	.L50
.L54:
	.loc 1 95 0
	movi.n	a9, 0x40
	j	.L50
.L49:
	.loc 1 97 0
	movi.n	a9, 0
	j	.L50
.L65:
	.loc 1 91 0
	movi.n	a9, 0x20
.L50:
.LBE56:
.LBE55:
	.loc 1 239 0
	srli	a9, a9, 2
	bltu	a8, a9, .L55
	j	.L56
.LVL54:
.L68:
.LBE57:
.LBB58:
.LBB59:
	.loc 1 87 0
	beqi	a2, 1, .L66
	bgei	a2, 2, .L59
	beqz.n	a2, .L60
	j	.L57
.L59:
	beqi	a2, 2, .L61
	beqi	a2, 3, .L62
	j	.L57
.L60:
	.loc 1 89 0
	movi.n	a12, 0x14
	j	.L58
.L61:
	.loc 1 93 0
	movi.n	a12, 0x30
	j	.L58
.L62:
	.loc 1 95 0
	movi.n	a12, 0x40
	j	.L58
.L57:
	.loc 1 97 0
	movi.n	a12, 0
	j	.L58
.L66:
	.loc 1 91 0
	movi.n	a12, 0x20
.L58:
.LBE59:
.LBE58:
	.loc 1 244 0
	l32r	a11, .LC32
	mov.n	a10, a3
	call8	memcpy
.LVL55:
.L56:
.LBE49:
	.loc 1 249 0
	call8	esp_sha_unlock_memory_block
.LVL56:
	retw.n
.LFE17:
	.size	esp_sha_read_digest_state, .-esp_sha_read_digest_state
	.section	.text.esp_sha_block,"ax",@progbits
	.literal_position
	.literal .LC33, engine_states
	.literal .LC34, .LC26
	.literal .LC35, __func__$3370
	.literal .LC36, .LC7
	.literal .LC37, 1072705536
	.literal .LC38, 16711680
	.literal .LC39, 65280
	.literal .LC40, 67044104
	.literal .LC41, 1072705668
	.align	4
	.global	esp_sha_block
	.type	esp_sha_block, @function
esp_sha_block:
.LFB18:
	.loc 1 253 0
.LVL57:
	entry	sp, 32
.LCFI8:
	extui	a4, a4, 0, 8
.LVL58:
.LBB60:
.LBB61:
	.loc 1 75 0
	beqz.n	a2, .L71
	beqi	a2, 1, .L81
	j	.L83
.L71:
	.loc 1 77 0
	movi.n	a8, 0
	j	.L72
.L83:
	.loc 1 81 0
	movi.n	a8, 2
	j	.L72
.L81:
	.loc 1 79 0
	movi.n	a8, 1
.L72:
.LVL59:
.LBE61:
.LBE60:
	.loc 1 255 0
	l32r	a9, .LC33
	addx8	a8, a8, a9
.LVL60:
	l8ui	a8, a8, 4
	bnez.n	a8, .L73
	.loc 1 255 0 is_stmt 0 discriminator 1
	l32r	a13, .LC34
	l32r	a12, .LC35
	movi	a11, 0xff
	l32r	a10, .LC36
	call8	__assert_func
.LVL61:
.L73:
	.loc 1 257 0 is_stmt 1
	call8	esp_sha_lock_memory_block
.LVL62:
	.loc 1 259 0
	call8	esp_sha_wait_idle
.LVL63:
.LBB62:
	.loc 1 264 0
	movi.n	a11, 0
	j	.L74
.LVL64:
.L78:
	.loc 1 265 0 discriminator 3
	slli	a8, a11, 2
	l32r	a12, .LC37
	add.n	a12, a8, a12
.LBB63:
	add.n	a8, a3, a8
	l32i.n	a8, a8, 0
.LVL65:
	extui	a10, a8, 24, 8
	l32r	a9, .LC38
	and	a9, a8, a9
	srli	a9, a9, 8
	or	a10, a10, a9
	l32r	a9, .LC39
	and	a9, a8, a9
	slli	a9, a9, 8
	or	a9, a10, a9
	slli	a8, a8, 24
.LVL66:
	or	a8, a9, a8
.LBE63:
	s32i.n	a8, a12, 0
.LVL67:
	.loc 1 264 0 discriminator 3
	addi.n	a11, a11, 1
.LVL68:
.L74:
.LBB64:
.LBB65:
	.loc 1 103 0 discriminator 1
	bltz	a2, .L75
	blti	a2, 2, .L76
	blti	a2, 4, .L84
	j	.L75
.L76:
	.loc 1 106 0
	movi.n	a8, 0x40
	j	.L77
.L75:
	.loc 1 111 0
	movi.n	a8, 0
	j	.L77
.L84:
	.loc 1 109 0
	movi	a8, 0x80
.L77:
.LBE65:
.LBE64:
	.loc 1 264 0
	srli	a8, a8, 2
	bltu	a11, a8, .L78
.LBE62:
	.loc 1 267 0
#APP
# 267 "C:/esp/esp-idf/components/esp32/hwcrypto/sha.c" 1
	memw
# 0 "" 2
	.loc 1 269 0
#NO_APP
	beqz.n	a4, .L79
.LVL69:
.LBB66:
.LBB67:
	.loc 1 48 0
	l32r	a3, .LC40
.LVL70:
	add.n	a2, a2, a3
.LVL71:
	slli	a2, a2, 4
.LVL72:
.LBE67:
.LBE66:
	.loc 1 270 0
	movi.n	a3, 1
	memw
	s32i.n	a3, a2, 0
	j	.L80
.LVL73:
.L79:
.LBB68:
.LBB69:
	.loc 1 52 0
	slli	a2, a2, 4
.LVL74:
	l32r	a3, .LC41
.LVL75:
	add.n	a2, a2, a3
.LBE69:
.LBE68:
	.loc 1 272 0
	movi.n	a3, 1
	memw
	s32i.n	a3, a2, 0
.LVL76:
.L80:
	.loc 1 275 0
	call8	esp_sha_unlock_memory_block
.LVL77:
	retw.n
.LFE18:
	.size	esp_sha_block, .-esp_sha_block
	.section	.text.esp_sha,"ax",@progbits
	.align	4
	.global	esp_sha
	.type	esp_sha, @function
esp_sha:
.LFB19:
	.loc 1 284 0
.LVL78:
	entry	sp, 64
.LCFI9:
.LVL79:
.LBB70:
.LBB71:
	.loc 1 103 0
	bltz	a2, .L86
	blti	a2, 2, .L87
	blti	a2, 4, .L92
	j	.L86
.L87:
	.loc 1 106 0
	movi.n	a7, 0x40
	j	.L88
.L86:
	.loc 1 111 0
	movi.n	a7, 0
	j	.L88
.L92:
	.loc 1 109 0
	movi	a7, 0x80
.L88:
.LBE71:
.LBE70:
	.loc 1 287 0
	mov.n	a10, a2
	call8	esp_sha_lock_engine
.LVL80:
	.loc 1 290 0
	mov.n	a10, sp
	call8	ets_sha_init
.LVL81:
	.loc 1 291 0
	j	.L89
.L90:
.LBB72:
	.loc 1 292 0
	minu	a6, a4, a7
.LVL82:
	.loc 1 293 0
	call8	esp_sha_lock_memory_block
.LVL83:
	.loc 1 294 0
	call8	esp_sha_wait_idle
.LVL84:
	.loc 1 298 0
	slli	a13, a6, 3
	mov.n	a12, a3
	mov.n	a11, a2
	mov.n	a10, sp
	call8	ets_sha_update
.LVL85:
	.loc 1 301 0
	call8	esp_sha_unlock_memory_block
.LVL86:
	.loc 1 302 0
	add.n	a3, a3, a6
.LVL87:
	.loc 1 303 0
	sub	a4, a4, a6
.LVL88:
.L89:
.LBE72:
	.loc 1 291 0
	bnez.n	a4, .L90
	.loc 1 305 0
	call8	esp_sha_lock_memory_block
.LVL89:
	.loc 1 306 0
	call8	esp_sha_wait_idle
.LVL90:
	.loc 1 309 0
	mov.n	a12, a5
	mov.n	a11, a2
	mov.n	a10, sp
	call8	ets_sha_finish
.LVL91:
	.loc 1 312 0
	call8	esp_sha_unlock_memory_block
.LVL92:
	.loc 1 314 0
	mov.n	a10, a2
	call8	esp_sha_unlock_engine
.LVL93:
	retw.n
.LFE19:
	.size	esp_sha, .-esp_sha
	.section	.rodata.__func__$3370,"a",@progbits
	.align	4
	.type	__func__$3370, @object
	.size	__func__$3370, 14
__func__$3370:
	.string	"esp_sha_block"
	.section	.rodata.__func__$3354,"a",@progbits
	.align	4
	.type	__func__$3354, @object
	.size	__func__$3354, 26
__func__$3354:
	.string	"esp_sha_read_digest_state"
	.section	.rodata.__func__$3343,"a",@progbits
	.align	4
	.type	__func__$3343, @object
	.size	__func__$3343, 22
__func__$3343:
	.string	"esp_sha_unlock_engine"
	.section	.rodata.__func__$3338,"a",@progbits
	.align	4
	.type	__func__$3338, @object
	.size	__func__$3338, 26
__func__$3338:
	.string	"esp_sha_lock_engine_inner"
	.section	.bss.state_change_lock,"aw",@nobits
	.align	4
	.type	state_change_lock, @object
	.size	state_change_lock, 4
state_change_lock:
	.zero	4
	.section	.bss.engine_states,"aw",@nobits
	.align	4
	.type	engine_states, @object
	.size	engine_states, 24
engine_states:
	.zero	24
	.section	.bss.memory_block_lock,"aw",@nobits
	.align	4
	.type	memory_block_lock, @object
	.size	memory_block_lock, 4
memory_block_lock:
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
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI0-.LFB14
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI1-.LFB9
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI2-.LFB10
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI3-.LFB12
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI4-.LFB13
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
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI6-.LFB16
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI7-.LFB17
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI8-.LFB18
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI9-.LFB19
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE18:
	.text
.Letext0:
	.file 2 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 3 "C:/esp/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "C:/esp/esp-idf/components/newlib/include/sys/lock.h"
	.file 5 "C:/esp/esp-idf/components/newlib/include/stdint.h"
	.file 6 "C:/esp/esp-idf/components/esp32/include/rom/sha.h"
	.file 7 "C:/esp/esp-idf/components/esp32/include/hwcrypto/sha.h"
	.file 8 "C:/esp/esp-idf/components/newlib/include/assert.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xa58
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF69
	.byte	0xc
	.4byte	.LASF70
	.4byte	.LASF71
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
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
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x3
	.byte	0x1a
	.4byte	0x37
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x4
	.byte	0xb
	.4byte	0x25
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4c
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa8
	.uleb128 0x7
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x5
	.byte	0x2d
	.4byte	0x5a
	.uleb128 0x8
	.4byte	.LASF72
	.byte	0x14
	.byte	0x6
	.byte	0x20
	.4byte	0xd9
	.uleb128 0x9
	.4byte	.LASF15
	.byte	0x6
	.byte	0x21
	.4byte	0xd9
	.byte	0
	.uleb128 0x9
	.4byte	.LASF16
	.byte	0x6
	.byte	0x22
	.4byte	0xe0
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF17
	.uleb128 0xa
	.4byte	0xa9
	.4byte	0xf0
	.uleb128 0xb
	.4byte	0x85
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x6
	.byte	0x23
	.4byte	0xb4
	.uleb128 0xc
	.4byte	.LASF73
	.byte	0x4
	.4byte	0x25
	.byte	0x6
	.byte	0x25
	.4byte	0x12a
	.uleb128 0xd
	.4byte	.LASF19
	.byte	0
	.uleb128 0xd
	.4byte	.LASF20
	.byte	0x1
	.uleb128 0xd
	.4byte	.LASF21
	.byte	0x2
	.uleb128 0xd
	.4byte	.LASF22
	.byte	0x3
	.uleb128 0xe
	.4byte	.LASF23
	.sleb128 -1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x7
	.byte	0x2f
	.4byte	0xfb
	.uleb128 0xf
	.byte	0x8
	.byte	0x1
	.byte	0x3b
	.4byte	0x156
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x1
	.byte	0x3c
	.4byte	0x73
	.byte	0
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x1
	.byte	0x3d
	.4byte	0xd9
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x1
	.byte	0x3e
	.4byte	0x135
	.uleb128 0x10
	.4byte	.LASF74
	.byte	0x1
	.byte	0x82
	.4byte	0xd9
	.byte	0x3
	.uleb128 0x11
	.4byte	.LASF28
	.byte	0x1
	.byte	0x4a
	.4byte	0x2c
	.byte	0x3
	.4byte	0x189
	.uleb128 0x12
	.4byte	.LASF30
	.byte	0x1
	.byte	0x4a
	.4byte	0x12a
	.byte	0
	.uleb128 0x11
	.4byte	.LASF29
	.byte	0x1
	.byte	0x27
	.4byte	0xa9
	.byte	0x3
	.4byte	0x1a5
	.uleb128 0x12
	.4byte	.LASF31
	.byte	0x1
	.byte	0x27
	.4byte	0x12a
	.byte	0
	.uleb128 0x11
	.4byte	.LASF32
	.byte	0x1
	.byte	0x2b
	.4byte	0xa9
	.byte	0x3
	.4byte	0x1c1
	.uleb128 0x12
	.4byte	.LASF31
	.byte	0x1
	.byte	0x2b
	.4byte	0x12a
	.byte	0
	.uleb128 0x11
	.4byte	.LASF33
	.byte	0x1
	.byte	0x56
	.4byte	0x2c
	.byte	0x3
	.4byte	0x1dd
	.uleb128 0x12
	.4byte	.LASF30
	.byte	0x1
	.byte	0x56
	.4byte	0x12a
	.byte	0
	.uleb128 0x11
	.4byte	.LASF34
	.byte	0x1
	.byte	0x66
	.4byte	0x2c
	.byte	0x3
	.4byte	0x1f9
	.uleb128 0x12
	.4byte	.LASF30
	.byte	0x1
	.byte	0x66
	.4byte	0x12a
	.byte	0
	.uleb128 0x11
	.4byte	.LASF35
	.byte	0x1
	.byte	0x2f
	.4byte	0xa9
	.byte	0x3
	.4byte	0x215
	.uleb128 0x12
	.4byte	.LASF31
	.byte	0x1
	.byte	0x2f
	.4byte	0x12a
	.byte	0
	.uleb128 0x11
	.4byte	.LASF36
	.byte	0x1
	.byte	0x33
	.4byte	0xa9
	.byte	0x3
	.4byte	0x231
	.uleb128 0x12
	.4byte	.LASF31
	.byte	0x1
	.byte	0x33
	.4byte	0x12a
	.byte	0
	.uleb128 0x13
	.4byte	.LASF75
	.byte	0x1
	.byte	0x9d
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2d4
	.uleb128 0x14
	.4byte	.LASF39
	.byte	0x1
	.byte	0x9d
	.4byte	0x2d4
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x15
	.4byte	.LASF42
	.4byte	0x2ea
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3338
	.uleb128 0x16
	.4byte	0x161
	.4byte	.LBB37
	.4byte	.LBE37-.LBB37
	.byte	0x1
	.byte	0xa1
	.uleb128 0x17
	.4byte	.LVL1
	.4byte	0x9fa
	.4byte	0x288
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	state_change_lock
	.byte	0
	.uleb128 0x19
	.4byte	.LVL2
	.4byte	0xa05
	.uleb128 0x17
	.4byte	.LVL3
	.4byte	0xa10
	.4byte	0x2c0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xaf
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3338
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL4
	.4byte	0xa1b
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	state_change_lock
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x156
	.uleb128 0xa
	.4byte	0x9b
	.4byte	0x2ea
	.uleb128 0xb
	.4byte	0x85
	.byte	0x19
	.byte	0
	.uleb128 0x1b
	.4byte	0x2da
	.uleb128 0x1c
	.4byte	.LASF37
	.byte	0x1
	.byte	0x73
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x318
	.uleb128 0x1a
	.4byte	.LVL5
	.4byte	0x9fa
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	memory_block_lock
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF38
	.byte	0x1
	.byte	0x78
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x341
	.uleb128 0x1a
	.4byte	.LVL6
	.4byte	0xa1b
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	memory_block_lock
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF76
	.byte	0x1
	.byte	0x8a
	.4byte	0xd9
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3ba
	.uleb128 0x1e
	.4byte	.LASF31
	.byte	0x1
	.byte	0x8a
	.4byte	0x12a
	.4byte	.LLST0
	.uleb128 0x1f
	.4byte	.LASF39
	.byte	0x1
	.byte	0x8c
	.4byte	0x2d4
	.4byte	.LLST1
	.uleb128 0x20
	.4byte	0x16d
	.4byte	.LBB39
	.4byte	.LBE39-.LBB39
	.byte	0x1
	.byte	0x8c
	.4byte	0x395
	.uleb128 0x21
	.4byte	0x17d
	.4byte	.LLST2
	.byte	0
	.uleb128 0x17
	.4byte	.LVL15
	.4byte	0xa26
	.4byte	0x3a9
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL16
	.4byte	0x231
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF40
	.byte	0x1
	.byte	0x96
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x42d
	.uleb128 0x1e
	.4byte	.LASF31
	.byte	0x1
	.byte	0x96
	.4byte	0x12a
	.4byte	.LLST3
	.uleb128 0x22
	.4byte	.LASF39
	.byte	0x1
	.byte	0x98
	.4byte	0x2d4
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x20
	.4byte	0x16d
	.4byte	.LBB41
	.4byte	.LBE41-.LBB41
	.byte	0x1
	.byte	0x98
	.4byte	0x408
	.uleb128 0x21
	.4byte	0x17d
	.4byte	.LLST4
	.byte	0
	.uleb128 0x17
	.4byte	.LVL28
	.4byte	0x9fa
	.4byte	0x41c
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL29
	.4byte	0x231
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF41
	.byte	0x1
	.byte	0xb6
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x519
	.uleb128 0x1e
	.4byte	.LASF31
	.byte	0x1
	.byte	0xb6
	.4byte	0x12a
	.4byte	.LLST5
	.uleb128 0x22
	.4byte	.LASF39
	.byte	0x1
	.byte	0xb8
	.4byte	0x2d4
	.uleb128 0xb
	.byte	0x72
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x3
	.4byte	engine_states
	.byte	0x22
	.byte	0x9f
	.uleb128 0x15
	.4byte	.LASF42
	.4byte	0x529
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3343
	.uleb128 0x20
	.4byte	0x16d
	.4byte	.LBB43
	.4byte	.LBE43-.LBB43
	.byte	0x1
	.byte	0xb8
	.4byte	0x494
	.uleb128 0x21
	.4byte	0x17d
	.4byte	.LLST6
	.byte	0
	.uleb128 0x16
	.4byte	0x161
	.4byte	.LBB45
	.4byte	.LBE45-.LBB45
	.byte	0x1
	.byte	0xbf
	.uleb128 0x17
	.4byte	.LVL37
	.4byte	0x9fa
	.4byte	0x4ba
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	state_change_lock
	.byte	0
	.uleb128 0x17
	.4byte	.LVL38
	.4byte	0xa10
	.4byte	0x4e9
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xbc
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3343
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.byte	0
	.uleb128 0x17
	.4byte	.LVL39
	.4byte	0xa1b
	.4byte	0x500
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	state_change_lock
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL40
	.4byte	0xa1b
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0xa
	.byte	0x72
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x3
	.4byte	engine_states
	.byte	0x22
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	0x9b
	.4byte	0x529
	.uleb128 0xb
	.4byte	0x85
	.byte	0x15
	.byte	0
	.uleb128 0x1b
	.4byte	0x519
	.uleb128 0x23
	.4byte	.LASF77
	.byte	0x1
	.byte	0xcf
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1c
	.4byte	.LASF43
	.byte	0x1
	.byte	0xdd
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6b8
	.uleb128 0x14
	.4byte	.LASF31
	.byte	0x1
	.byte	0xdd
	.4byte	0x12a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x14
	.4byte	.LASF44
	.byte	0x1
	.byte	0xdd
	.4byte	0x8c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1f
	.4byte	.LASF39
	.byte	0x1
	.byte	0xdf
	.4byte	0x2d4
	.4byte	.LLST7
	.uleb128 0x15
	.4byte	.LASF42
	.4byte	0x6b8
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3354
	.uleb128 0x20
	.4byte	0x16d
	.4byte	.LBB47
	.4byte	.LBE47-.LBB47
	.byte	0x1
	.byte	0xdf
	.4byte	0x5a7
	.uleb128 0x24
	.4byte	0x17d
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x25
	.4byte	.LBB49
	.4byte	.LBE49-.LBB49
	.4byte	0x676
	.uleb128 0x22
	.4byte	.LASF45
	.byte	0x1
	.byte	0xeb
	.4byte	0x6bd
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x26
	.4byte	.LASF46
	.byte	0x1
	.byte	0xec
	.4byte	0x6bd
	.4byte	0x3ff03000
	.uleb128 0x20
	.4byte	0x189
	.4byte	.LBB50
	.4byte	.LBE50-.LBB50
	.byte	0x1
	.byte	0xe8
	.4byte	0x5eb
	.uleb128 0x24
	.4byte	0x199
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x20
	.4byte	0x1a5
	.4byte	.LBB52
	.4byte	.LBE52-.LBB52
	.byte	0x1
	.byte	0xe9
	.4byte	0x606
	.uleb128 0x24
	.4byte	0x1b5
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x27
	.4byte	.Ldebug_ranges0+0
	.4byte	0x636
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.byte	0xef
	.4byte	0x25
	.4byte	.LLST8
	.uleb128 0x29
	.4byte	0x1c1
	.4byte	.LBB55
	.4byte	.LBE55-.LBB55
	.byte	0x1
	.byte	0xef
	.uleb128 0x21
	.4byte	0x1d1
	.4byte	.LLST9
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	0x1c1
	.4byte	.LBB58
	.4byte	.LBE58-.LBB58
	.byte	0x1
	.byte	0xf4
	.4byte	0x653
	.uleb128 0x21
	.4byte	0x1d1
	.4byte	.LLST10
	.byte	0
	.uleb128 0x19
	.4byte	.LVL47
	.4byte	0x52e
	.uleb128 0x1a
	.4byte	.LVL55
	.4byte	0xa31
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0xc
	.4byte	0x3ff03000
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL45
	.4byte	0xa10
	.4byte	0x6a5
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xe0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3354
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC26
	.byte	0
	.uleb128 0x19
	.4byte	.LVL46
	.4byte	0x2ef
	.uleb128 0x19
	.4byte	.LVL56
	.4byte	0x318
	.byte	0
	.uleb128 0x1b
	.4byte	0x2da
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa9
	.uleb128 0x1c
	.4byte	.LASF47
	.byte	0x1
	.byte	0xfc
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x839
	.uleb128 0x1e
	.4byte	.LASF31
	.byte	0x1
	.byte	0xfc
	.4byte	0x12a
	.4byte	.LLST11
	.uleb128 0x1e
	.4byte	.LASF48
	.byte	0x1
	.byte	0xfc
	.4byte	0xa2
	.4byte	.LLST12
	.uleb128 0x14
	.4byte	.LASF49
	.byte	0x1
	.byte	0xfc
	.4byte	0xd9
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1f
	.4byte	.LASF39
	.byte	0x1
	.byte	0xfe
	.4byte	0x2d4
	.4byte	.LLST13
	.uleb128 0x15
	.4byte	.LASF42
	.4byte	0x849
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3370
	.uleb128 0x2a
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x106
	.4byte	0x6bd
	.4byte	0x3ff03000
	.uleb128 0x2b
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x107
	.4byte	0x6bd
	.4byte	.LLST14
	.uleb128 0x20
	.4byte	0x16d
	.4byte	.LBB60
	.4byte	.LBE60-.LBB60
	.byte	0x1
	.byte	0xfe
	.4byte	0x75e
	.uleb128 0x21
	.4byte	0x17d
	.4byte	.LLST15
	.byte	0
	.uleb128 0x25
	.4byte	.LBB62
	.4byte	.LBE62-.LBB62
	.4byte	0x7b2
	.uleb128 0x2c
	.string	"i"
	.byte	0x1
	.2byte	0x108
	.4byte	0x25
	.4byte	.LLST16
	.uleb128 0x25
	.4byte	.LBB63
	.4byte	.LBE63-.LBB63
	.4byte	0x797
	.uleb128 0x2b
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x109
	.4byte	0x37
	.4byte	.LLST17
	.byte	0
	.uleb128 0x2d
	.4byte	0x1dd
	.4byte	.LBB64
	.4byte	.LBE64-.LBB64
	.byte	0x1
	.2byte	0x108
	.uleb128 0x21
	.4byte	0x1ed
	.4byte	.LLST18
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	0x1f9
	.4byte	.LBB66
	.4byte	.LBE66-.LBB66
	.byte	0x1
	.2byte	0x10e
	.4byte	0x7d0
	.uleb128 0x21
	.4byte	0x209
	.4byte	.LLST19
	.byte	0
	.uleb128 0x2e
	.4byte	0x215
	.4byte	.LBB68
	.4byte	.LBE68-.LBB68
	.byte	0x1
	.2byte	0x110
	.4byte	0x7ee
	.uleb128 0x21
	.4byte	0x225
	.4byte	.LLST20
	.byte	0
	.uleb128 0x17
	.4byte	.LVL61
	.4byte	0xa10
	.4byte	0x81d
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xff
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3370
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC26
	.byte	0
	.uleb128 0x19
	.4byte	.LVL62
	.4byte	0x2ef
	.uleb128 0x19
	.4byte	.LVL63
	.4byte	0x52e
	.uleb128 0x19
	.4byte	.LVL77
	.4byte	0x318
	.byte	0
	.uleb128 0xa
	.4byte	0x9b
	.4byte	0x849
	.uleb128 0xb
	.4byte	0x85
	.byte	0xd
	.byte	0
	.uleb128 0x1b
	.4byte	0x839
	.uleb128 0x2f
	.4byte	.LASF52
	.byte	0x1
	.2byte	0x11b
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9ac
	.uleb128 0x30
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x11b
	.4byte	0x12a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x31
	.4byte	.LASF53
	.byte	0x1
	.2byte	0x11b
	.4byte	0x9ac
	.4byte	.LLST21
	.uleb128 0x31
	.4byte	.LASF54
	.byte	0x1
	.2byte	0x11b
	.4byte	0x2c
	.4byte	.LLST22
	.uleb128 0x30
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x11b
	.4byte	0x95
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x32
	.4byte	.LASF56
	.byte	0x1
	.2byte	0x11d
	.4byte	0x2c
	.uleb128 0x33
	.string	"ctx"
	.byte	0x1
	.2byte	0x121
	.4byte	0xf0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2e
	.4byte	0x1dd
	.4byte	.LBB70
	.4byte	.LBE70-.LBB70
	.byte	0x1
	.2byte	0x11d
	.4byte	0x8d7
	.uleb128 0x24
	.4byte	0x1ed
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x25
	.4byte	.LBB72
	.4byte	.LBE72-.LBB72
	.4byte	0x938
	.uleb128 0x2b
	.4byte	.LASF57
	.byte	0x1
	.2byte	0x124
	.4byte	0x2c
	.4byte	.LLST23
	.uleb128 0x19
	.4byte	.LVL83
	.4byte	0x2ef
	.uleb128 0x19
	.4byte	.LVL84
	.4byte	0x52e
	.uleb128 0x17
	.4byte	.LVL85
	.4byte	0xa3a
	.4byte	0x92e
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x4
	.byte	0x76
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0
	.uleb128 0x19
	.4byte	.LVL86
	.4byte	0x318
	.byte	0
	.uleb128 0x17
	.4byte	.LVL80
	.4byte	0x3ba
	.4byte	0x94c
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL81
	.4byte	0xa45
	.4byte	0x960
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x19
	.4byte	.LVL89
	.4byte	0x2ef
	.uleb128 0x19
	.4byte	.LVL90
	.4byte	0x52e
	.uleb128 0x17
	.4byte	.LVL91
	.4byte	0xa50
	.4byte	0x992
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL92
	.4byte	0x318
	.uleb128 0x1a
	.4byte	.LVL93
	.4byte	0x42d
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x9b2
	.uleb128 0x1b
	.4byte	0x4c
	.uleb128 0x22
	.4byte	.LASF58
	.byte	0x1
	.byte	0x39
	.4byte	0x73
	.uleb128 0x5
	.byte	0x3
	.4byte	memory_block_lock
	.uleb128 0xa
	.4byte	0x156
	.4byte	0x9d8
	.uleb128 0xb
	.4byte	0x85
	.byte	0x2
	.byte	0
	.uleb128 0x22
	.4byte	.LASF59
	.byte	0x1
	.byte	0x47
	.4byte	0x9c8
	.uleb128 0x5
	.byte	0x3
	.4byte	engine_states
	.uleb128 0x22
	.4byte	.LASF60
	.byte	0x1
	.byte	0x80
	.4byte	0x73
	.uleb128 0x5
	.byte	0x3
	.4byte	state_change_lock
	.uleb128 0x34
	.4byte	.LASF61
	.4byte	.LASF61
	.byte	0x4
	.byte	0x20
	.uleb128 0x34
	.4byte	.LASF62
	.4byte	.LASF62
	.byte	0x6
	.byte	0x31
	.uleb128 0x34
	.4byte	.LASF63
	.4byte	.LASF63
	.byte	0x8
	.byte	0x29
	.uleb128 0x34
	.4byte	.LASF64
	.4byte	.LASF64
	.byte	0x4
	.byte	0x24
	.uleb128 0x34
	.4byte	.LASF65
	.4byte	.LASF65
	.byte	0x4
	.byte	0x22
	.uleb128 0x35
	.4byte	.LASF78
	.4byte	.LASF78
	.uleb128 0x34
	.4byte	.LASF66
	.4byte	.LASF66
	.byte	0x6
	.byte	0x35
	.uleb128 0x34
	.4byte	.LASF67
	.4byte	.LASF67
	.byte	0x6
	.byte	0x2f
	.uleb128 0x34
	.4byte	.LASF68
	.4byte	.LASF68
	.byte	0x6
	.byte	0x37
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
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0xd
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x11
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x17
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
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x1c
	.uleb128 0x6
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL13
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL14
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL13
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL20
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL26
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL26
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL30
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL36
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL36
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0xb
	.byte	0x78
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x3
	.4byte	engine_states
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL50
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL50
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL57
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x6
	.byte	0x72
	.sleb128 -67044104
	.byte	0x9f
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
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL57
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL70
	.4byte	.LVL73
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL73
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL75
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0xb
	.byte	0x78
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x3
	.4byte	engine_states
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL63
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL70
	.4byte	.LVL73
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL73
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL75
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL58
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x6
	.byte	0x72
	.sleb128 -67044104
	.byte	0x9f
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
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL64
	.4byte	.LVL77-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0xb
	.byte	0x7c
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0xc
	.4byte	0x3ff03000
	.byte	0x1c
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL64
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x6
	.byte	0x72
	.sleb128 -67044104
	.byte	0x9f
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
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL69
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x6
	.byte	0x72
	.sleb128 -67044104
	.byte	0x9f
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL73
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
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL78
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL87
	.4byte	.LFE19
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL78
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL88
	.4byte	.LFE19
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL82
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x64
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
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
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB54
	.4byte	.LBE54
	.4byte	.LBB57
	.4byte	.LBE57
	.4byte	0
	.4byte	0
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB13
	.4byte	.LFE13
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF5:
	.string	"size_t"
.LASF48:
	.string	"data_block"
.LASF30:
	.string	"type"
.LASF33:
	.string	"sha_length"
.LASF8:
	.string	"long long unsigned int"
.LASF42:
	.string	"__func__"
.LASF72:
	.string	"SHAContext"
.LASF22:
	.string	"SHA2_512"
.LASF7:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF45:
	.string	"digest_state_words"
.LASF68:
	.string	"ets_sha_finish"
.LASF10:
	.string	"long int"
.LASF20:
	.string	"SHA2_256"
.LASF78:
	.string	"memcpy"
.LASF9:
	.string	"_lock_t"
.LASF67:
	.string	"ets_sha_init"
.LASF57:
	.string	"chunk_len"
.LASF56:
	.string	"block_len"
.LASF73:
	.string	"SHA_TYPE"
.LASF58:
	.string	"memory_block_lock"
.LASF44:
	.string	"digest_state"
.LASF18:
	.string	"SHA_CTX"
.LASF6:
	.string	"__uint32_t"
.LASF71:
	.string	"C:\\\\esp\\\\esp32-ArkPOS2\\\\ArkPOS2-esp\\\\build\\\\esp32"
.LASF0:
	.string	"unsigned int"
.LASF51:
	.string	"__bsx"
.LASF12:
	.string	"long unsigned int"
.LASF75:
	.string	"esp_sha_lock_engine_inner"
.LASF1:
	.string	"short unsigned int"
.LASF21:
	.string	"SHA2_384"
.LASF38:
	.string	"esp_sha_unlock_memory_block"
.LASF70:
	.string	"C:/esp/esp-idf/components/esp32/hwcrypto/sha.c"
.LASF24:
	.string	"esp_sha_type"
.LASF55:
	.string	"output"
.LASF34:
	.string	"block_length"
.LASF29:
	.string	"SHA_LOAD_REG"
.LASF11:
	.string	"sizetype"
.LASF50:
	.string	"data_words"
.LASF32:
	.string	"SHA_BUSY_REG"
.LASF66:
	.string	"ets_sha_update"
.LASF52:
	.string	"esp_sha"
.LASF61:
	.string	"_lock_acquire"
.LASF77:
	.string	"esp_sha_wait_idle"
.LASF39:
	.string	"engine"
.LASF41:
	.string	"esp_sha_unlock_engine"
.LASF43:
	.string	"esp_sha_read_digest_state"
.LASF35:
	.string	"SHA_START_REG"
.LASF46:
	.string	"reg_addr_buf"
.LASF17:
	.string	"_Bool"
.LASF63:
	.string	"__assert_func"
.LASF3:
	.string	"unsigned char"
.LASF69:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF4:
	.string	"short int"
.LASF76:
	.string	"esp_sha_try_lock_engine"
.LASF59:
	.string	"engine_states"
.LASF74:
	.string	"sha_engines_all_idle"
.LASF37:
	.string	"esp_sha_lock_memory_block"
.LASF53:
	.string	"input"
.LASF65:
	.string	"_lock_try_acquire"
.LASF26:
	.string	"in_use"
.LASF14:
	.string	"uint32_t"
.LASF40:
	.string	"esp_sha_lock_engine"
.LASF31:
	.string	"sha_type"
.LASF13:
	.string	"char"
.LASF28:
	.string	"sha_engine_index"
.LASF49:
	.string	"is_first_block"
.LASF23:
	.string	"SHA_INVALID"
.LASF16:
	.string	"total_input_bits"
.LASF47:
	.string	"esp_sha_block"
.LASF64:
	.string	"_lock_release"
.LASF36:
	.string	"SHA_CONTINUE_REG"
.LASF54:
	.string	"ilen"
.LASF60:
	.string	"state_change_lock"
.LASF27:
	.string	"sha_engine_state"
.LASF62:
	.string	"ets_sha_enable"
.LASF15:
	.string	"start"
.LASF19:
	.string	"SHA1"
.LASF25:
	.string	"lock"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-73-ge28a011) 5.2.0"
