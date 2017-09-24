	.file	"flash_ops.c"
	.text
.Ltext0:
	.section	.iram1,"ax",@progbits
	.literal_position
	.literal .LC0, 65554
	.literal .LC1, 65553
	.align	4
	.type	spi_flash_translate_rc, @function
spi_flash_translate_rc:
.LFB31:
	.file 1 "C:/esp/esp-idf/components/spi_flash/flash_ops.c"
	.loc 1 476 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 477 0
	beqz.n	a2, .L3
	beqi	a2, 2, .L5
	j	.L6
.L3:
	.loc 1 479 0
	movi.n	a2, 0
.LVL1:
	retw.n
.LVL2:
.L6:
	.loc 1 484 0
	l32r	a2, .LC1
.LVL3:
	retw.n
.LVL4:
.L5:
	.loc 1 481 0
	l32r	a2, .LC0
.LVL5:
	.loc 1 486 0
	retw.n
.LFE31:
	.size	spi_flash_translate_rc, .-spi_flash_translate_rc
	.literal_position
	.literal .LC2, unlocked$5380
	.literal .LC3, s_flash_guard_ops
	.align	4
	.type	spi_flash_unlock, @function
spi_flash_unlock:
.LFB24:
	.loc 1 132 0
	entry	sp, 32
.LCFI1:
	.loc 1 134 0
	l32r	a2, .LC2
	l8ui	a2, a2, 0
	bnez.n	a2, .L11
.LBB56:
.LBB57:
.LBB58:
	.loc 1 105 0
	l32r	a2, .LC3
	l32i.n	a2, a2, 0
	beqz.n	a2, .L9
	l32i.n	a2, a2, 0
	beqz.n	a2, .L9
	.loc 1 106 0
	callx8	a2
.LVL6:
.L9:
.LBE58:
.LBE57:
	.loc 1 136 0
	call8	esp_rom_spiflash_unlock
.LVL7:
	mov.n	a2, a10
.LVL8:
.LBB59:
.LBB60:
	.loc 1 112 0
	l32r	a8, .LC3
	l32i.n	a8, a8, 0
	beqz.n	a8, .L10
	l32i.n	a8, a8, 4
	beqz.n	a8, .L10
	.loc 1 113 0
	callx8	a8
.LVL9:
.L10:
.LBE60:
.LBE59:
	.loc 1 138 0
	bnez.n	a2, .L8
	.loc 1 141 0
	movi.n	a8, 1
	l32r	a2, .LC2
.LVL10:
	s8i	a8, a2, 0
.LBE56:
	.loc 1 143 0
	movi.n	a2, 0
	retw.n
.L11:
	movi.n	a2, 0
.L8:
	.loc 1 144 0
	retw.n
.LFE24:
	.size	spi_flash_unlock, .-spi_flash_unlock
	.section	.text.spi_flash_init,"ax",@progbits
	.align	4
	.global	spi_flash_init
	.type	spi_flash_init, @function
spi_flash_init:
.LFB17:
	.loc 1 86 0
	entry	sp, 32
.LCFI2:
	.loc 1 87 0
	call8	spi_flash_init_lock
.LVL11:
	retw.n
.LFE17:
	.size	spi_flash_init, .-spi_flash_init
	.section	.iram1
	.literal_position
	.literal .LC4, s_flash_guard_ops
	.align	4
	.global	spi_flash_guard_set
	.type	spi_flash_guard_set, @function
spi_flash_guard_set:
.LFB18:
	.loc 1 94 0
.LVL12:
	entry	sp, 32
.LCFI3:
	.loc 1 95 0
	l32r	a8, .LC4
	s32i.n	a2, a8, 0
	retw.n
.LFE18:
	.size	spi_flash_guard_set, .-spi_flash_guard_set
	.literal_position
	.literal .LC5, g_rom_flashchip
	.align	4
	.global	spi_flash_get_chip_size
	.type	spi_flash_get_chip_size, @function
spi_flash_get_chip_size:
.LFB19:
	.loc 1 99 0
	entry	sp, 32
.LCFI4:
	.loc 1 101 0
	l32r	a8, .LC5
	l32i.n	a2, a8, 4
	retw.n
.LFE19:
	.size	spi_flash_get_chip_size, .-spi_flash_get_chip_size
	.literal_position
	.literal .LC6, s_flash_guard_ops
	.align	4
	.global	spi_flash_erase_range
	.type	spi_flash_erase_range, @function
spi_flash_erase_range:
.LFB26:
	.loc 1 152 0
.LVL13:
	entry	sp, 32
.LCFI5:
	.loc 1 153 0
	extui	a8, a2, 0, 12
	bnez.n	a8, .L25
	.loc 1 156 0
	extui	a8, a3, 0, 12
	bnez.n	a8, .L26
	.loc 1 159 0
	add.n	a4, a2, a3
	call8	spi_flash_get_chip_size
.LVL14:
	bltu	a10, a4, .L27
	.loc 1 162 0
	srli	a2, a2, 12
.LVL15:
	.loc 1 163 0
	srli	a3, a3, 12
.LVL16:
	add.n	a3, a2, a3
.LVL17:
	.loc 1 167 0
	call8	spi_flash_unlock
.LVL18:
	mov.n	a5, a10
.LVL19:
	.loc 1 168 0
	beqz.n	a10, .L18
.LBB61:
	j	.L19
.LVL20:
.L24:
.LBB62:
.LBB63:
	.loc 1 105 0
	l32r	a4, .LC6
	l32i.n	a4, a4, 0
	beqz.n	a4, .L20
	l32i.n	a4, a4, 0
	beqz.n	a4, .L20
	.loc 1 106 0
	callx8	a4
.LVL21:
.L20:
.LBE63:
.LBE62:
	.loc 1 171 0
	extui	a4, a2, 0, 4
	bnez.n	a4, .L21
	.loc 1 171 0 is_stmt 0 discriminator 1
	sub	a4, a3, a2
	movi.n	a5, 0x10
.LVL22:
	bgeu	a5, a4, .L21
	.loc 1 172 0 is_stmt 1
	srli	a10, a2, 4
	call8	esp_rom_spiflash_erase_block
.LVL23:
	mov.n	a5, a10
.LVL24:
	.loc 1 173 0
	addi	a2, a2, 16
.LVL25:
	j	.L22
.LVL26:
.L21:
	.loc 1 176 0
	mov.n	a10, a2
	call8	esp_rom_spiflash_erase_sector
.LVL27:
	mov.n	a5, a10
.LVL28:
	.loc 1 177 0
	addi.n	a2, a2, 1
.LVL29:
.L22:
.LBB64:
.LBB65:
	.loc 1 112 0
	l32r	a4, .LC6
	l32i.n	a4, a4, 0
	beqz.n	a4, .L18
	l32i.n	a4, a4, 4
	beqz.n	a4, .L18
	.loc 1 113 0
	callx8	a4
.LVL30:
.L18:
.LBE65:
.LBE64:
	.loc 1 169 0 discriminator 1
	sub	a4, a2, a3
	movi.n	a8, 1
	movi.n	a9, 0
	mov.n	a6, a9
	movnez	a6, a8, a4
	mov.n	a4, a6
	movnez	a8, a9, a5
	bany	a8, a6, .L24
.LVL31:
.L19:
.LBE61:
	.loc 1 184 0
	mov.n	a10, a5
	call8	spi_flash_translate_rc
.LVL32:
	mov.n	a2, a10
	retw.n
.LVL33:
.L25:
	.loc 1 154 0
	movi	a2, 0x102
.LVL34:
	retw.n
.LVL35:
.L26:
	.loc 1 157 0
	movi	a2, 0x104
.LVL36:
	retw.n
.LVL37:
.L27:
	.loc 1 160 0
	movi	a2, 0x104
.LVL38:
	.loc 1 185 0
	retw.n
.LFE26:
	.size	spi_flash_erase_range, .-spi_flash_erase_range
	.literal_position
	.literal .LC7, 4096
	.align	4
	.global	spi_flash_erase_sector
	.type	spi_flash_erase_sector, @function
spi_flash_erase_sector:
.LFB25:
	.loc 1 147 0
.LVL39:
	entry	sp, 32
.LCFI6:
	.loc 1 148 0
	l32r	a11, .LC7
	slli	a10, a2, 12
	call8	spi_flash_erase_range
.LVL40:
	.loc 1 149 0
	mov.n	a2, a10
.LVL41:
	retw.n
.LFE25:
	.size	spi_flash_erase_sector, .-spi_flash_erase_sector
	.literal_position
	.literal .LC8, g_rom_flashchip
	.literal .LC9, s_flash_guard_ops
	.literal .LC10, -1073405952
	.literal .LC11, 335871
	.literal .LC12, 8192
	.align	4
	.global	spi_flash_write
	.type	spi_flash_write, @function
spi_flash_write:
.LFB27:
	.loc 1 188 0
.LVL42:
	entry	sp, 80
.LCFI7:
	.loc 1 191 0
	add.n	a5, a2, a4
	l32r	a6, .LC8
	l32i.n	a6, a6, 4
	bltu	a6, a5, .L48
	.loc 1 194 0
	beqz.n	a4, .L49
.LVL43:
	.loc 1 207 0
	movi.n	a6, -4
	and	a5, a2, a6
	s32i.n	a5, sp, 32
.LVL44:
	.loc 1 208 0
	addi.n	a5, a2, 3
.LVL45:
	and	a5, a5, a6
	sub	a5, a5, a2
	minu	a5, a4, a5
.LVL46:
	.loc 1 210 0
	sub	a7, a4, a5
	and	a6, a7, a6
.LVL47:
	.loc 1 211 0
	add.n	a8, a5, a6
	s32i.n	a8, sp, 44
.LVL48:
	.loc 1 212 0
	sub	a7, a4, a6
	sub	a9, a7, a5
	s32i.n	a9, sp, 40
.LVL49:
	.loc 1 214 0
	call8	spi_flash_unlock
.LVL50:
	mov.n	a7, a10
.LVL51:
	.loc 1 215 0
	bnez.n	a10, .L31
	.loc 1 218 0
	beqz.n	a5, .L32
.LBB66:
	.loc 1 219 0
	movi.n	a7, -1
.LVL52:
	s32i.n	a7, sp, 0
	.loc 1 220 0
	l32i.n	a8, sp, 32
	sub	a10, a2, a8
.LVL53:
	mov.n	a12, a5
	mov.n	a11, a3
	add.n	a10, sp, a10
	call8	memcpy
.LVL54:
.LBB67:
.LBB68:
	.loc 1 105 0
	l32r	a7, .LC9
	l32i.n	a7, a7, 0
	beqz.n	a7, .L33
	l32i.n	a7, a7, 0
	beqz.n	a7, .L33
	.loc 1 106 0
	callx8	a7
.LVL55:
.L33:
.LBE68:
.LBE67:
	.loc 1 222 0
	movi.n	a12, 4
	mov.n	a11, sp
	l32i.n	a10, sp, 32
	call8	esp_rom_spiflash_write
.LVL56:
	mov.n	a7, a10
.LVL57:
.LBB69:
.LBB70:
	.loc 1 112 0
	l32r	a8, .LC9
	l32i.n	a8, a8, 0
	beqz.n	a8, .L34
	l32i.n	a8, a8, 4
	beqz.n	a8, .L34
	.loc 1 113 0
	callx8	a8
.LVL58:
.L34:
.LBE70:
.LBE69:
	.loc 1 224 0
	bnez.n	a7, .L31
.L32:
.LBE66:
	.loc 1 229 0
	beqz.n	a6, .L36
.LBB71:
	.loc 1 234 0
	l32r	a8, .LC10
	add.n	a8, a3, a8
	.loc 1 235 0
	l32r	a9, .LC11
	bltu	a9, a8, .L50
	.loc 1 235 0 is_stmt 0 discriminator 1
	add.n	a8, a3, a5
	extui	a8, a8, 0, 2
	beqz.n	a8, .L51
	.loc 1 235 0
	movi.n	a8, 0
	j	.L37
.L50:
	movi.n	a8, 0
	j	.L37
.L51:
	movi.n	a8, 1
.L37:
	.loc 1 233 0 is_stmt 1
	s32i.n	a8, sp, 36
.LVL59:
	.loc 1 239 0
	j	.L38
.LVL60:
.L42:
.LBB72:
	.loc 1 241 0
	l32r	a7, .LC12
.LVL61:
	minu	a9, a6, a7
	s32i.n	a9, sp, 32
.LVL62:
	.loc 1 242 0
	add.n	a7, a3, a5
.LVL63:
	.loc 1 243 0
	l32i.n	a8, sp, 36
	bnez.n	a8, .L39
	.loc 1 244 0
	movi.n	a8, 0x20
	minu	a9, a9, a8
.LVL64:
	s32i.n	a9, sp, 32
.LVL65:
	.loc 1 245 0
	mov.n	a12, a9
	mov.n	a11, a7
	mov.n	a10, sp
	call8	memcpy
.LVL66:
	.loc 1 246 0
	mov.n	a7, sp
.LVL67:
.L39:
.LBB73:
.LBB74:
	.loc 1 105 0
	l32r	a8, .LC9
	l32i.n	a8, a8, 0
	beqz.n	a8, .L40
	l32i.n	a8, a8, 0
	beqz.n	a8, .L40
	.loc 1 106 0
	callx8	a8
.LVL68:
.L40:
.LBE74:
.LBE73:
	.loc 1 249 0
	l32i.n	a12, sp, 32
	mov.n	a11, a7
	add.n	a10, a5, a2
	call8	esp_rom_spiflash_write
.LVL69:
	mov.n	a7, a10
.LVL70:
.LBB75:
.LBB76:
	.loc 1 112 0
	l32r	a8, .LC9
	l32i.n	a8, a8, 0
	beqz.n	a8, .L41
	l32i.n	a8, a8, 4
	beqz.n	a8, .L41
	.loc 1 113 0
	callx8	a8
.LVL71:
.L41:
.LBE76:
.LBE75:
	.loc 1 252 0
	l32i.n	a9, sp, 32
	sub	a6, a6, a9
.LVL72:
	.loc 1 253 0
	add.n	a5, a5, a9
.LVL73:
.L38:
.LBE72:
	.loc 1 239 0
	movi.n	a8, 1
	movi.n	a9, 0
	mov.n	a10, a9
	movnez	a10, a8, a6
	movnez	a8, a9, a7
	bany	a8, a10, .L42
	.loc 1 255 0
	bne	a7, a9, .L31
.LVL74:
.L36:
.LBE71:
	.loc 1 260 0
	l32i.n	a5, sp, 40
.LVL75:
	beqz.n	a5, .L31
.LBB77:
	.loc 1 261 0
	movi.n	a5, -1
	s32i.n	a5, sp, 0
	.loc 1 262 0
	l32i.n	a12, sp, 40
	l32i.n	a5, sp, 44
	add.n	a11, a3, a5
	mov.n	a10, sp
	call8	memcpy
.LVL76:
.LBB78:
.LBB79:
	.loc 1 105 0
	l32r	a3, .LC9
.LVL77:
	l32i.n	a3, a3, 0
	beqz.n	a3, .L43
	l32i.n	a3, a3, 0
	beqz.n	a3, .L43
	.loc 1 106 0
	callx8	a3
.LVL78:
.L43:
.LBE79:
.LBE78:
	.loc 1 264 0
	movi.n	a12, 4
	mov.n	a11, sp
	l32i.n	a3, sp, 44
	add.n	a10, a2, a3
	call8	esp_rom_spiflash_write
.LVL79:
	mov.n	a7, a10
.LVL80:
.LBB80:
.LBB81:
	.loc 1 112 0
	l32r	a3, .LC9
	l32i.n	a3, a3, 0
	beqz.n	a3, .L31
	l32i.n	a3, a3, 4
	beqz.n	a3, .L31
	.loc 1 113 0
	callx8	a3
.LVL81:
.L31:
.LBE81:
.LBE80:
.LBE77:
.LBB82:
.LBB83:
	.loc 1 119 0
	l32r	a3, .LC9
	l32i.n	a3, a3, 0
	beqz.n	a3, .L46
	l32i.n	a3, a3, 8
	beqz.n	a3, .L46
	.loc 1 120 0
	callx8	a3
.LVL82:
.L46:
.LBE83:
.LBE82:
	.loc 1 275 0
	mov.n	a11, a4
	mov.n	a10, a2
	call8	spi_flash_mark_modified_region
.LVL83:
.LBB84:
.LBB85:
	.loc 1 126 0
	l32r	a2, .LC9
.LVL84:
	l32i.n	a2, a2, 0
	beqz.n	a2, .L47
	l32i.n	a2, a2, 12
	beqz.n	a2, .L47
	.loc 1 127 0
	callx8	a2
.LVL85:
.L47:
.LBE85:
.LBE84:
	.loc 1 278 0
	mov.n	a10, a7
	call8	spi_flash_translate_rc
.LVL86:
	mov.n	a2, a10
	retw.n
.LVL87:
.L48:
	.loc 1 192 0
	movi	a2, 0x104
.LVL88:
	retw.n
.LVL89:
.L49:
	.loc 1 195 0
	movi.n	a2, 0
.LVL90:
	.loc 1 279 0
	retw.n
.LFE27:
	.size	spi_flash_write, .-spi_flash_write
	.literal_position
	.literal .LC13, g_rom_flashchip
	.literal .LC14, s_flash_guard_ops
	.literal .LC15, 16384
	.align	4
	.global	spi_flash_read
	.type	spi_flash_read, @function
spi_flash_read:
.LFB29:
	.loc 1 347 0
.LVL91:
	entry	sp, 96
.LCFI8:
	.loc 1 350 0
	add.n	a5, a2, a4
	l32r	a6, .LC13
	l32i.n	a6, a6, 4
	bltu	a6, a5, .L70
	.loc 1 353 0
	beqz.n	a4, .L71
.LVL92:
.LBB86:
.LBB87:
	.loc 1 105 0
	l32r	a5, .LC14
	l32i.n	a5, a5, 0
	beqz.n	a5, .L54
	l32i.n	a5, a5, 0
	beqz.n	a5, .L54
	.loc 1 106 0
	callx8	a5
.LVL93:
.L54:
.LBE87:
.LBE86:
	.loc 1 361 0
	movi.n	a5, 0xf
	bltu	a5, a4, .L55
.LBB88:
	.loc 1 363 0
	movi.n	a10, -4
.LVL94:
	.loc 1 364 0
	extui	a5, a2, 0, 2
.LVL95:
	.loc 1 365 0
	add.n	a12, a4, a5
	addi.n	a12, a12, 3
.LVL96:
	.loc 1 366 0
	and	a12, a12, a10
.LVL97:
	mov.n	a11, sp
	and	a10, a2, a10
.LVL98:
	call8	esp_rom_spiflash_read
.LVL99:
	mov.n	a6, a10
.LVL100:
	.loc 1 367 0
	bnez.n	a10, .L57
	.loc 1 371 0
	mov.n	a12, a4
	add.n	a11, sp, a5
	mov.n	a10, a3
	call8	memcpy
.LVL101:
	.loc 1 372 0
	j	.L57
.LVL102:
.L55:
.LBE88:
	.loc 1 381 0
	extui	a5, a2, 0, 2
	beqz.n	a5, .L72
	.loc 1 381 0 is_stmt 0 discriminator 1
	movi.n	a6, 4
	sub	a6, a6, a5
	s32i.n	a6, sp, 36
	j	.L58
.L72:
	.loc 1 381 0
	movi.n	a5, 0
	s32i.n	a5, sp, 36
.L58:
.LVL103:
	.loc 1 382 0 is_stmt 1 discriminator 4
	extui	a5, a3, 0, 2
	beqz.n	a5, .L73
	.loc 1 382 0 is_stmt 0 discriminator 1
	srai	a7, a3, 31
	extui	a7, a7, 30, 2
	add.n	a5, a3, a7
	extui	a5, a5, 0, 2
	sub	a5, a5, a7
	movi.n	a7, 4
	sub	a7, a7, a5
	j	.L59
.L73:
	.loc 1 382 0
	movi.n	a7, 0
.L59:
.LVL104:
	.loc 1 383 0 is_stmt 1 discriminator 4
	l32i.n	a5, sp, 36
	maxu	a6, a5, a7
	sub	a6, a4, a6
	movi.n	a5, -4
	and	a6, a6, a5
	s32i.n	a6, sp, 40
.LVL105:
	.loc 1 388 0 discriminator 4
	and	a6, a2, a5
.LVL106:
	s32i.n	a6, sp, 56
.LVL107:
	.loc 1 395 0 discriminator 4
	l32i.n	a6, sp, 36
.LVL108:
	add.n	a6, a6, a2
	s32i.n	a6, sp, 32
	l32i.n	a8, sp, 40
	add.n	a6, a8, a6
	and	a5, a6, a5
	s32i.n	a5, sp, 44
.LVL109:
	.loc 1 396 0 discriminator 4
	sub	a2, a5, a2
.LVL110:
	s32i.n	a2, sp, 48
.LVL111:
	.loc 1 397 0 discriminator 4
	sub	a4, a4, a2
.LVL112:
	s32i.n	a4, sp, 52
.LVL113:
	.loc 1 398 0 discriminator 4
	bnez.n	a8, .L74
	.loc 1 357 0
	movi.n	a6, 0
	j	.L61
.LVL114:
.L64:
.LBB89:
.LBB90:
	.loc 1 402 0
	l32r	a2, .LC15
	minu	a2, a4, a2
.LVL115:
	.loc 1 403 0
	add.n	a11, a5, a7
	mov.n	a12, a2
	add.n	a11, a3, a11
	l32i.n	a6, sp, 32
.LVL116:
	add.n	a10, a5, a6
	call8	esp_rom_spiflash_read
.LVL117:
	mov.n	a6, a10
.LVL118:
	.loc 1 404 0
	bnez.n	a10, .L57
	.loc 1 407 0
	sub	a4, a4, a2
.LVL119:
	.loc 1 408 0
	add.n	a5, a5, a2
.LVL120:
	.loc 1 409 0
	beqz.n	a4, .L60
.LBB91:
.LBB92:
	.loc 1 112 0
	l32r	a2, .LC14
.LVL121:
	l32i.n	a2, a2, 0
	beqz.n	a2, .L63
	l32i.n	a2, a2, 4
	beqz.n	a2, .L63
	.loc 1 113 0
	callx8	a2
.LVL122:
.L63:
.LBE92:
.LBE91:
.LBB93:
.LBB94:
	.loc 1 105 0
	l32r	a2, .LC14
	l32i.n	a2, a2, 0
	beqz.n	a2, .L60
	l32i.n	a2, a2, 0
	beqz.n	a2, .L60
	.loc 1 106 0
	callx8	a2
.LVL123:
	j	.L60
.LVL124:
.L74:
.LBE94:
.LBE93:
.LBE90:
.LBE89:
	l32i.n	a4, sp, 40
.LVL125:
	movi.n	a5, 0
.LVL126:
	mov.n	a6, a5
.LVL127:
.L60:
.LBB95:
	.loc 1 401 0
	bnez.n	a4, .L64
	.loc 1 421 0
	l32i.n	a2, sp, 36
	beq	a2, a7, .L61
	.loc 1 422 0
	l32i.n	a12, sp, 40
	add.n	a11, a3, a7
	add.n	a10, a3, a2
	call8	memmove
.LVL128:
.L61:
.LBE95:
	.loc 1 425 0
	l32i.n	a5, sp, 36
	beqz.n	a5, .L65
.LBB96:
	.loc 1 427 0
	movi.n	a12, 4
	mov.n	a11, sp
	l32i.n	a10, sp, 56
	call8	esp_rom_spiflash_read
.LVL129:
	mov.n	a6, a10
.LVL130:
	.loc 1 428 0
	bnez.n	a10, .L57
	.loc 1 432 0
	movi.n	a11, 4
	sub	a11, a11, a5
	l32i.n	a12, sp, 36
	add.n	a11, sp, a11
	mov.n	a10, a3
	call8	memcpy
.LVL131:
.L65:
.LBE96:
	.loc 1 434 0
	l32i.n	a2, sp, 52
	beqz.n	a2, .L57
.LBB97:
	.loc 1 436 0
	bgeui	a2, 5, .L75
	movi.n	a12, 4
	j	.L67
.L75:
	movi.n	a12, 8
.L67:
.LVL132:
	.loc 1 437 0 discriminator 4
	mov.n	a11, sp
	l32i.n	a10, sp, 44
	call8	esp_rom_spiflash_read
.LVL133:
	mov.n	a6, a10
.LVL134:
	.loc 1 438 0 discriminator 4
	bnez.n	a10, .L57
	.loc 1 442 0
	l32i.n	a12, sp, 52
	mov.n	a11, sp
	l32i.n	a5, sp, 48
	add.n	a10, a3, a5
	call8	memcpy
.LVL135:
.L57:
.LBE97:
.LBB98:
.LBB99:
	.loc 1 112 0
	l32r	a2, .LC14
	l32i.n	a2, a2, 0
	beqz.n	a2, .L69
	l32i.n	a2, a2, 4
	beqz.n	a2, .L69
	.loc 1 113 0
	callx8	a2
.LVL136:
.L69:
.LBE99:
.LBE98:
	.loc 1 447 0
	mov.n	a10, a6
	call8	spi_flash_translate_rc
.LVL137:
	mov.n	a2, a10
	retw.n
.LVL138:
.L70:
	.loc 1 351 0
	movi	a2, 0x104
.LVL139:
	retw.n
.LVL140:
.L71:
	.loc 1 354 0
	movi.n	a2, 0
.LVL141:
	.loc 1 448 0
	retw.n
.LFE29:
	.size	spi_flash_read, .-spi_flash_read
	.literal_position
	.literal .LC16, g_rom_flashchip
	.literal .LC17, -65536
	.align	4
	.global	spi_flash_read_encrypted
	.type	spi_flash_read_encrypted, @function
spi_flash_read_encrypted:
.LFB30:
	.loc 1 451 0
.LVL142:
	entry	sp, 48
.LCFI9:
	.loc 1 452 0
	add.n	a5, a2, a4
	l32r	a8, .LC16
	l32i.n	a8, a8, 4
	bltu	a8, a5, .L79
	.loc 1 455 0
	beqz.n	a4, .L80
	.loc 1 462 0
	l32r	a10, .LC17
	and	a10, a2, a10
.LVL143:
	.loc 1 463 0
	sub	a5, a2, a10
.LVL144:
	.loc 1 465 0
	addi.n	a14, sp, 4
	mov.n	a13, sp
	movi.n	a12, 0
	add.n	a11, a4, a5
.LVL145:
	call8	spi_flash_mmap
.LVL146:
	mov.n	a2, a10
.LVL147:
	.loc 1 466 0
	bnez.n	a10, .L78
	.loc 1 469 0
	mov.n	a12, a4
	l32i.n	a11, sp, 0
	add.n	a11, a11, a5
	mov.n	a10, a3
	call8	memcpy
.LVL148:
	.loc 1 470 0
	l32i.n	a10, sp, 4
	call8	spi_flash_munmap
.LVL149:
	.loc 1 471 0
	retw.n
.LVL150:
.L79:
	.loc 1 453 0
	movi	a2, 0x104
.LVL151:
	retw.n
.LVL152:
.L80:
	.loc 1 456 0
	movi.n	a2, 0
.LVL153:
.L78:
	.loc 1 472 0
	retw.n
.LFE30:
	.size	spi_flash_read_encrypted, .-spi_flash_read_encrypted
	.literal_position
	.literal .LC18, s_flash_guard_ops
	.align	4
	.global	spi_flash_write_encrypted
	.type	spi_flash_write_encrypted, @function
spi_flash_write_encrypted:
.LFB28:
	.loc 1 282 0
.LVL154:
	entry	sp, 64
.LCFI10:
.LVL155:
	.loc 1 284 0
	extui	a5, a2, 0, 4
	bnez.n	a5, .L95
	.loc 1 287 0
	extui	a5, a4, 0, 4
	bnez.n	a5, .L96
	.loc 1 293 0
	call8	spi_flash_unlock
.LVL156:
	mov.n	a7, a10
.LVL157:
	.loc 1 294 0
	beqz.n	a10, .L97
	j	.L85
.LVL158:
.L92:
.LBB100:
.LBB101:
.LBB102:
	.loc 1 305 0
	add.n	a7, a5, a2
.LVL159:
	.loc 1 306 0
	bnez.n	a5, .L86
	.loc 1 306 0 is_stmt 0 discriminator 1
	extui	a6, a7, 0, 5
	beqz.n	a6, .L86
.LVL160:
	.loc 1 309 0 is_stmt 1
	addi	a7, a7, -16
.LVL161:
	.loc 1 311 0
	movi.n	a6, 0x10
	mov.n	a12, a6
	add.n	a11, a3, a5
	add.n	a10, sp, a6
	call8	memcpy
.LVL162:
	.loc 1 313 0
	mov.n	a12, a6
	mov.n	a11, sp
	mov.n	a10, a7
	call8	spi_flash_read_encrypted
.LVL163:
	j	.L87
.LVL164:
.L86:
	.loc 1 314 0
	sub	a6, a4, a5
	bnei	a6, 16, .L88
.LVL165:
	.loc 1 318 0
	mov.n	a12, a6
	add.n	a11, a3, a5
	mov.n	a10, sp
	call8	memcpy
.LVL166:
	.loc 1 320 0
	mov.n	a12, a6
	add.n	a11, sp, a6
	add.n	a10, a7, a6
	call8	spi_flash_read_encrypted
.LVL167:
	j	.L87
.LVL168:
.L88:
	.loc 1 324 0
	movi.n	a6, 0x20
	mov.n	a12, a6
	add.n	a11, a3, a5
	mov.n	a10, sp
	call8	memcpy
.LVL169:
.L87:
.LBB103:
.LBB104:
	.loc 1 105 0
	l32r	a8, .LC18
	l32i.n	a8, a8, 0
	beqz.n	a8, .L89
	l32i.n	a8, a8, 0
	beqz.n	a8, .L89
	.loc 1 106 0
	callx8	a8
.LVL170:
.L89:
.LBE104:
.LBE103:
	.loc 1 328 0
	movi.n	a12, 0x20
	mov.n	a11, sp
	mov.n	a10, a7
	call8	esp_rom_spiflash_write_encrypted
.LVL171:
	mov.n	a7, a10
.LVL172:
.LBB105:
.LBB106:
	.loc 1 112 0
	l32r	a8, .LC18
	l32i.n	a8, a8, 0
	beqz.n	a8, .L90
	l32i.n	a8, a8, 4
	beqz.n	a8, .L90
	.loc 1 113 0
	callx8	a8
.LVL173:
.L90:
.LBE106:
.LBE105:
	.loc 1 330 0
	bnez.n	a7, .L91
.LBE102:
	.loc 1 304 0 discriminator 2
	add.n	a5, a5, a6
.LVL174:
	j	.L84
.LVL175:
.L97:
.LBE101:
.LBE100:
	movi.n	a5, 0
.L84:
.LVL176:
.LBB108:
.LBB107:
	.loc 1 304 0 is_stmt 0 discriminator 1
	bltu	a5, a4, .L92
.L91:
.LBE107:
	.loc 1 334 0 is_stmt 1
	movi.n	a3, 0
.LVL177:
	s32i.n	a3, sp, 0
	s32i.n	a3, sp, 4
	s32i.n	a3, sp, 8
	s32i.n	a3, sp, 12
	s32i.n	a3, sp, 16
	s32i.n	a3, sp, 20
	s32i.n	a3, sp, 24
	s32i.n	a3, sp, 28
.LVL178:
.L85:
.LBE108:
.LBB109:
.LBB110:
	.loc 1 119 0
	l32r	a3, .LC18
	l32i.n	a3, a3, 0
	beqz.n	a3, .L93
	l32i.n	a3, a3, 8
	beqz.n	a3, .L93
	.loc 1 120 0
	callx8	a3
.LVL179:
.L93:
.LBE110:
.LBE109:
	.loc 1 340 0
	mov.n	a11, a4
	mov.n	a10, a2
	call8	spi_flash_mark_modified_region
.LVL180:
.LBB111:
.LBB112:
	.loc 1 126 0
	l32r	a2, .LC18
.LVL181:
	l32i.n	a2, a2, 0
	beqz.n	a2, .L94
	l32i.n	a2, a2, 12
	beqz.n	a2, .L94
	.loc 1 127 0
	callx8	a2
.LVL182:
.L94:
.LBE112:
.LBE111:
	.loc 1 343 0
	mov.n	a10, a7
	call8	spi_flash_translate_rc
.LVL183:
	mov.n	a2, a10
	retw.n
.LVL184:
.L95:
	.loc 1 285 0
	movi	a2, 0x102
.LVL185:
	retw.n
.LVL186:
.L96:
	.loc 1 288 0
	movi	a2, 0x104
.LVL187:
	.loc 1 344 0
	retw.n
.LFE28:
	.size	spi_flash_write_encrypted, .-spi_flash_write_encrypted
	.section	.bss.unlocked$5380,"aw",@nobits
	.type	unlocked$5380, @object
	.size	unlocked$5380, 1
unlocked$5380:
	.zero	1
	.section	.bss.s_flash_guard_ops,"aw",@nobits
	.align	4
	.type	s_flash_guard_ops, @object
	.size	s_flash_guard_ops, 4
s_flash_guard_ops:
	.zero	4
	.global	g_flash_guard_no_os_ops
	.section	.dram1,"a",@progbits
	.align	4
	.type	g_flash_guard_no_os_ops, @object
	.size	g_flash_guard_no_os_ops, 16
g_flash_guard_no_os_ops:
	.word	spi_flash_disable_interrupts_caches_and_other_cpu_no_os
	.word	spi_flash_enable_interrupts_caches_no_os
	.word	0
	.word	0
	.global	g_flash_guard_default_ops
	.align	4
	.type	g_flash_guard_default_ops, @object
	.size	g_flash_guard_default_ops, 16
g_flash_guard_default_ops:
	.word	spi_flash_disable_interrupts_caches_and_other_cpu
	.word	spi_flash_enable_interrupts_caches_and_other_cpu
	.word	spi_flash_op_lock
	.word	spi_flash_op_unlock
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
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI0-.LFB31
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI1-.LFB24
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI2-.LFB17
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI3-.LFB18
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI4-.LFB19
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI5-.LFB26
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
	.uleb128 0x50
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI8-.LFB29
	.byte	0xe
	.uleb128 0x60
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI9-.LFB30
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI10-.LFB28
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE20:
	.text
.Letext0:
	.file 2 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 3 "C:/esp/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "C:/esp/esp-idf/components/newlib/include/stdint.h"
	.file 5 "C:/esp/esp-idf/components/esp32/include/esp_err.h"
	.file 6 "C:/esp/esp-idf/components/esp32/include/rom/spi_flash.h"
	.file 7 "C:/esp/esp-idf/components/spi_flash/include/esp_spi_flash.h"
	.file 8 "C:/esp/esp-idf/components/spi_flash/cache_utils.h"
	.file 9 "C:/esp/esp-idf/components/newlib/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xf5d
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF111
	.byte	0xc
	.4byte	.LASF112
	.4byte	.LASF113
	.4byte	.Ldebug_ranges0+0x48
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF3
	.byte	0x2
	.byte	0xd8
	.4byte	0x30
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x2
	.4byte	.LASF4
	.byte	0x3
	.byte	0x12
	.4byte	0x57
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x2
	.4byte	.LASF7
	.byte	0x3
	.byte	0x19
	.4byte	0x3e
	.uleb128 0x2
	.4byte	.LASF8
	.byte	0x3
	.byte	0x1a
	.4byte	0x30
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x2
	.4byte	.LASF11
	.byte	0x3
	.byte	0x31
	.4byte	0x3e
	.uleb128 0x2
	.4byte	.LASF12
	.byte	0x3
	.byte	0x32
	.4byte	0x30
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF13
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x6
	.byte	0x4
	.4byte	0xbc
	.uleb128 0x7
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF16
	.uleb128 0x6
	.byte	0x4
	.4byte	0xca
	.uleb128 0x8
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x4
	.byte	0x15
	.4byte	0x4c
	.uleb128 0x2
	.4byte	.LASF18
	.byte	0x4
	.byte	0x2c
	.4byte	0x65
	.uleb128 0x2
	.4byte	.LASF19
	.byte	0x4
	.byte	0x2d
	.4byte	0x70
	.uleb128 0x2
	.4byte	.LASF20
	.byte	0x4
	.byte	0xa9
	.4byte	0x89
	.uleb128 0x2
	.4byte	.LASF21
	.byte	0x4
	.byte	0xaa
	.4byte	0x94
	.uleb128 0x2
	.4byte	.LASF22
	.byte	0x5
	.byte	0x18
	.4byte	0xd6
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF23
	.uleb128 0x9
	.byte	0x4
	.4byte	0x30
	.byte	0x6
	.byte	0x81
	.4byte	0x133
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.4byte	.LASF27
	.byte	0x6
	.byte	0x85
	.4byte	0x114
	.uleb128 0xb
	.byte	0x18
	.byte	0x6
	.byte	0x87
	.4byte	0x18f
	.uleb128 0xc
	.4byte	.LASF28
	.byte	0x6
	.byte	0x88
	.4byte	0xe1
	.byte	0
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x6
	.byte	0x89
	.4byte	0xe1
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0x6
	.byte	0x8a
	.4byte	0xe1
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x6
	.byte	0x8b
	.4byte	0xe1
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF32
	.byte	0x6
	.byte	0x8c
	.4byte	0xe1
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF33
	.byte	0x6
	.byte	0x8d
	.4byte	0xe1
	.byte	0x14
	.byte	0
	.uleb128 0x2
	.4byte	.LASF34
	.byte	0x6
	.byte	0x8e
	.4byte	0x13e
	.uleb128 0x9
	.byte	0x4
	.4byte	0x30
	.byte	0x7
	.byte	0x91
	.4byte	0x1b3
	.uleb128 0xa
	.4byte	.LASF35
	.byte	0
	.uleb128 0xa
	.4byte	.LASF36
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.4byte	.LASF37
	.byte	0x7
	.byte	0x99
	.4byte	0xe1
	.uleb128 0xd
	.4byte	.LASF38
	.byte	0x7
	.2byte	0x10c
	.4byte	0xb6
	.uleb128 0xd
	.4byte	.LASF39
	.byte	0x7
	.2byte	0x110
	.4byte	0xb6
	.uleb128 0xd
	.4byte	.LASF40
	.byte	0x7
	.2byte	0x114
	.4byte	0xb6
	.uleb128 0xd
	.4byte	.LASF41
	.byte	0x7
	.2byte	0x118
	.4byte	0xb6
	.uleb128 0xe
	.byte	0x10
	.byte	0x7
	.2byte	0x132
	.4byte	0x22c
	.uleb128 0xf
	.4byte	.LASF42
	.byte	0x7
	.2byte	0x133
	.4byte	0x1be
	.byte	0
	.uleb128 0x10
	.string	"end"
	.byte	0x7
	.2byte	0x134
	.4byte	0x1ca
	.byte	0x4
	.uleb128 0xf
	.4byte	.LASF43
	.byte	0x7
	.2byte	0x135
	.4byte	0x1d6
	.byte	0x8
	.uleb128 0xf
	.4byte	.LASF44
	.byte	0x7
	.2byte	0x136
	.4byte	0x1e2
	.byte	0xc
	.byte	0
	.uleb128 0xd
	.4byte	.LASF45
	.byte	0x7
	.2byte	0x137
	.4byte	0x1ee
	.uleb128 0x11
	.4byte	.LASF46
	.byte	0x1
	.byte	0x6e
	.byte	0x3
	.uleb128 0x11
	.4byte	.LASF47
	.byte	0x1
	.byte	0x67
	.byte	0x3
	.uleb128 0x11
	.4byte	.LASF48
	.byte	0x1
	.byte	0x7c
	.byte	0x3
	.uleb128 0x11
	.4byte	.LASF49
	.byte	0x1
	.byte	0x75
	.byte	0x3
	.uleb128 0x12
	.4byte	.LASF114
	.byte	0x1
	.2byte	0x1db
	.4byte	0x102
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x282
	.uleb128 0x13
	.string	"rc"
	.byte	0x1
	.2byte	0x1db
	.4byte	0x133
	.4byte	.LLST0
	.byte	0
	.uleb128 0x14
	.4byte	.LASF115
	.byte	0x1
	.byte	0x83
	.4byte	0x133
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2f9
	.uleb128 0x15
	.4byte	.LASF50
	.byte	0x1
	.byte	0x85
	.4byte	0x10d
	.uleb128 0x5
	.byte	0x3
	.4byte	unlocked$5380
	.uleb128 0x16
	.4byte	.LBB56
	.4byte	.LBE56-.LBB56
	.uleb128 0x17
	.string	"rc"
	.byte	0x1
	.byte	0x88
	.4byte	0x133
	.4byte	.LLST1
	.uleb128 0x18
	.4byte	0x240
	.4byte	.LBB57
	.4byte	.LBE57-.LBB57
	.byte	0x1
	.byte	0x87
	.4byte	0x2df
	.uleb128 0x19
	.4byte	.LVL6
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	0x238
	.4byte	.LBB59
	.4byte	.LBE59-.LBB59
	.byte	0x1
	.byte	0x89
	.uleb128 0x1b
	.4byte	.LVL7
	.4byte	0xed8
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF116
	.byte	0x1
	.byte	0x55
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x318
	.uleb128 0x1b
	.4byte	.LVL11
	.4byte	0xee4
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF117
	.byte	0x1
	.byte	0x5d
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x33b
	.uleb128 0x1e
	.4byte	.LASF51
	.byte	0x1
	.byte	0x5d
	.4byte	0x33b
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x341
	.uleb128 0x1f
	.4byte	0x22c
	.uleb128 0x20
	.4byte	.LASF118
	.byte	0x1
	.byte	0x62
	.4byte	0x25
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x21
	.4byte	.LASF56
	.byte	0x1
	.byte	0x97
	.4byte	0x102
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x46b
	.uleb128 0x22
	.4byte	.LASF52
	.byte	0x1
	.byte	0x97
	.4byte	0xe1
	.4byte	.LLST2
	.uleb128 0x22
	.4byte	.LASF53
	.byte	0x1
	.byte	0x97
	.4byte	0xe1
	.4byte	.LLST3
	.uleb128 0x23
	.4byte	.LASF42
	.byte	0x1
	.byte	0xa2
	.4byte	0x25
	.4byte	.LLST4
	.uleb128 0x17
	.string	"end"
	.byte	0x1
	.byte	0xa3
	.4byte	0x25
	.4byte	.LLST5
	.uleb128 0x23
	.4byte	.LASF54
	.byte	0x1
	.byte	0xa4
	.4byte	0x46b
	.4byte	.LLST6
	.uleb128 0x17
	.string	"rc"
	.byte	0x1
	.byte	0xa6
	.4byte	0x133
	.4byte	.LLST7
	.uleb128 0x24
	.4byte	.LBB61
	.4byte	.LBE61-.LBB61
	.4byte	0x448
	.uleb128 0x23
	.4byte	.LASF55
	.byte	0x1
	.byte	0xa9
	.4byte	0x25
	.4byte	.LLST8
	.uleb128 0x18
	.4byte	0x240
	.4byte	.LBB62
	.4byte	.LBE62-.LBB62
	.byte	0x1
	.byte	0xaa
	.4byte	0x405
	.uleb128 0x19
	.4byte	.LVL21
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	0x238
	.4byte	.LBB64
	.4byte	.LBE64-.LBB64
	.byte	0x1
	.byte	0xb4
	.4byte	0x421
	.uleb128 0x19
	.4byte	.LVL30
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL23
	.4byte	0xeef
	.4byte	0x437
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x4
	.byte	0x72
	.sleb128 0
	.byte	0x34
	.byte	0x25
	.byte	0
	.uleb128 0x27
	.4byte	.LVL27
	.4byte	0xefb
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL14
	.4byte	0x346
	.uleb128 0x1b
	.4byte	.LVL18
	.4byte	0x282
	.uleb128 0x27
	.4byte	.LVL32
	.4byte	0x258
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	0x25
	.uleb128 0x21
	.4byte	.LASF57
	.byte	0x1
	.byte	0x92
	.4byte	0x102
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4b2
	.uleb128 0x28
	.string	"sec"
	.byte	0x1
	.byte	0x92
	.4byte	0x25
	.4byte	.LLST9
	.uleb128 0x27
	.4byte	.LVL40
	.4byte	0x35b
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x4
	.byte	0x72
	.sleb128 0
	.byte	0x3c
	.byte	0x24
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1000
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	.LASF58
	.byte	0x1
	.byte	0xbb
	.4byte	0x102
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7c2
	.uleb128 0x28
	.string	"dst"
	.byte	0x1
	.byte	0xbb
	.4byte	0x25
	.4byte	.LLST10
	.uleb128 0x22
	.4byte	.LASF59
	.byte	0x1
	.byte	0xbb
	.4byte	0xc4
	.4byte	.LLST11
	.uleb128 0x1e
	.4byte	.LASF53
	.byte	0x1
	.byte	0xbb
	.4byte	0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x17
	.string	"rc"
	.byte	0x1
	.byte	0xc6
	.4byte	0x133
	.4byte	.LLST12
	.uleb128 0x23
	.4byte	.LASF60
	.byte	0x1
	.byte	0xc8
	.4byte	0x7c2
	.4byte	.LLST13
	.uleb128 0x23
	.4byte	.LASF61
	.byte	0x1
	.byte	0xcf
	.4byte	0x25
	.4byte	.LLST14
	.uleb128 0x23
	.4byte	.LASF62
	.byte	0x1
	.byte	0xd0
	.4byte	0x25
	.4byte	.LLST15
	.uleb128 0x23
	.4byte	.LASF63
	.byte	0x1
	.byte	0xd1
	.4byte	0x25
	.4byte	.LLST16
	.uleb128 0x23
	.4byte	.LASF64
	.byte	0x1
	.byte	0xd2
	.4byte	0x25
	.4byte	.LLST17
	.uleb128 0x23
	.4byte	.LASF65
	.byte	0x1
	.byte	0xd3
	.4byte	0x25
	.4byte	.LLST18
	.uleb128 0x23
	.4byte	.LASF66
	.byte	0x1
	.byte	0xd4
	.4byte	0x25
	.4byte	.LLST19
	.uleb128 0x2a
	.string	"out"
	.byte	0x1
	.2byte	0x10f
	.4byte	.L31
	.uleb128 0x24
	.4byte	.LBB66
	.4byte	.LBE66-.LBB66
	.4byte	0x606
	.uleb128 0x2b
	.string	"t"
	.byte	0x1
	.byte	0xdb
	.4byte	0xe1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x18
	.4byte	0x240
	.4byte	.LBB67
	.4byte	.LBE67-.LBB67
	.byte	0x1
	.byte	0xdd
	.4byte	0x5af
	.uleb128 0x19
	.4byte	.LVL55
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	0x238
	.4byte	.LBB69
	.4byte	.LBE69-.LBB69
	.byte	0x1
	.byte	0xdf
	.uleb128 0x25
	.4byte	.LVL54
	.4byte	0xf07
	.4byte	0x5e8
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0xc
	.byte	0x91
	.sleb128 0
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x1c
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x8
	.byte	0x50
	.byte	0x1c
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL56
	.4byte	0xf10
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LBB71
	.4byte	.LBE71-.LBB71
	.4byte	0x6ba
	.uleb128 0x23
	.4byte	.LASF67
	.byte	0x1
	.byte	0xe9
	.4byte	0x10d
	.4byte	.LLST20
	.uleb128 0x16
	.4byte	.LBB72
	.4byte	.LBE72-.LBB72
	.uleb128 0x15
	.4byte	.LASF68
	.byte	0x1
	.byte	0xf0
	.4byte	0x7cd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x23
	.4byte	.LASF69
	.byte	0x1
	.byte	0xf1
	.4byte	0xe1
	.4byte	.LLST21
	.uleb128 0x23
	.4byte	.LASF70
	.byte	0x1
	.byte	0xf2
	.4byte	0x7c2
	.4byte	.LLST22
	.uleb128 0x1a
	.4byte	0x240
	.4byte	.LBB73
	.4byte	.LBE73-.LBB73
	.byte	0x1
	.byte	0xf8
	.uleb128 0x1a
	.4byte	0x238
	.4byte	.LBB75
	.4byte	.LBE75-.LBB75
	.byte	0x1
	.byte	0xfa
	.uleb128 0x25
	.4byte	.LVL66
	.4byte	0xf07
	.4byte	0x698
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0
	.uleb128 0x27
	.4byte	.LVL69
	.4byte	0xf10
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x75
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LBB77
	.4byte	.LBE77-.LBB77
	.4byte	0x754
	.uleb128 0x2c
	.string	"t"
	.byte	0x1
	.2byte	0x105
	.4byte	0xe1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2d
	.4byte	0x240
	.4byte	.LBB78
	.4byte	.LBE78-.LBB78
	.byte	0x1
	.2byte	0x107
	.4byte	0x6f2
	.uleb128 0x19
	.4byte	.LVL78
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.4byte	0x238
	.4byte	.LBB80
	.4byte	.LBE80-.LBB80
	.byte	0x1
	.2byte	0x109
	.4byte	0x70f
	.uleb128 0x19
	.4byte	.LVL81
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL76
	.4byte	0xf07
	.4byte	0x734
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x73
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.byte	0
	.uleb128 0x27
	.4byte	.LVL79
	.4byte	0xf10
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x72
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	0x250
	.4byte	.LBB82
	.4byte	.LBE82-.LBB82
	.byte	0x1
	.2byte	0x112
	.4byte	0x771
	.uleb128 0x19
	.4byte	.LVL82
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.4byte	0x248
	.4byte	.LBB84
	.4byte	.LBE84-.LBB84
	.byte	0x1
	.2byte	0x114
	.4byte	0x78e
	.uleb128 0x19
	.4byte	.LVL85
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL50
	.4byte	0x282
	.uleb128 0x25
	.4byte	.LVL83
	.4byte	0xf1c
	.4byte	0x7b1
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL86
	.4byte	0x258
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x7c8
	.uleb128 0x1f
	.4byte	0xcb
	.uleb128 0x2e
	.4byte	0xe1
	.4byte	0x7dd
	.uleb128 0x2f
	.4byte	0xa6
	.byte	0x7
	.byte	0
	.uleb128 0x30
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x15a
	.4byte	0x102
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb58
	.uleb128 0x13
	.string	"src"
	.byte	0x1
	.2byte	0x15a
	.4byte	0x25
	.4byte	.LLST23
	.uleb128 0x31
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x15a
	.4byte	0xad
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x32
	.4byte	.LASF53
	.byte	0x1
	.2byte	0x15a
	.4byte	0x25
	.4byte	.LLST24
	.uleb128 0x33
	.string	"rc"
	.byte	0x1
	.2byte	0x165
	.4byte	0x133
	.4byte	.LLST25
	.uleb128 0x2a
	.string	"out"
	.byte	0x1
	.2byte	0x1bc
	.4byte	.L57
	.uleb128 0x34
	.4byte	.LASF73
	.byte	0x1
	.2byte	0x176
	.4byte	0xb58
	.4byte	.LLST26
	.uleb128 0x34
	.4byte	.LASF74
	.byte	0x1
	.2byte	0x177
	.4byte	0xec
	.4byte	.LLST26
	.uleb128 0x34
	.4byte	.LASF75
	.byte	0x1
	.2byte	0x17d
	.4byte	0x25
	.4byte	.LLST28
	.uleb128 0x34
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x17e
	.4byte	0x25
	.4byte	.LLST29
	.uleb128 0x34
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x17f
	.4byte	0x25
	.4byte	.LLST30
	.uleb128 0x34
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x184
	.4byte	0x25
	.4byte	.LLST31
	.uleb128 0x34
	.4byte	.LASF78
	.byte	0x1
	.2byte	0x185
	.4byte	0x25
	.4byte	.LLST32
	.uleb128 0x34
	.4byte	.LASF79
	.byte	0x1
	.2byte	0x18b
	.4byte	0x25
	.4byte	.LLST33
	.uleb128 0x34
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x18c
	.4byte	0x25
	.4byte	.LLST34
	.uleb128 0x34
	.4byte	.LASF81
	.byte	0x1
	.2byte	0x18d
	.4byte	0x25
	.4byte	.LLST35
	.uleb128 0x2d
	.4byte	0x240
	.4byte	.LBB86
	.4byte	.LBE86-.LBB86
	.byte	0x1
	.2byte	0x167
	.4byte	0x8fd
	.uleb128 0x19
	.4byte	.LVL93
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LBB88
	.4byte	.LBE88-.LBB88
	.4byte	0x997
	.uleb128 0x2c
	.string	"t"
	.byte	0x1
	.2byte	0x16a
	.4byte	0xb5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x34
	.4byte	.LASF82
	.byte	0x1
	.2byte	0x16b
	.4byte	0xe1
	.4byte	.LLST36
	.uleb128 0x34
	.4byte	.LASF61
	.byte	0x1
	.2byte	0x16c
	.4byte	0xe1
	.4byte	.LLST37
	.uleb128 0x34
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x16d
	.4byte	0xe1
	.4byte	.LLST38
	.uleb128 0x25
	.4byte	.LVL99
	.4byte	0xf27
	.4byte	0x974
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x72
	.sleb128 0
	.byte	0x9
	.byte	0xfc
	.byte	0x1a
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0xa
	.byte	0x74
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x3
	.byte	0x9
	.byte	0xfc
	.byte	0x1a
	.byte	0
	.uleb128 0x27
	.4byte	.LVL101
	.4byte	0xf07
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x8
	.byte	0x91
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x8
	.byte	0x60
	.byte	0x1c
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x35
	.4byte	.Ldebug_ranges0+0
	.4byte	0xa61
	.uleb128 0x34
	.4byte	.LASF84
	.byte	0x1
	.2byte	0x18f
	.4byte	0xe1
	.4byte	.LLST39
	.uleb128 0x34
	.4byte	.LASF85
	.byte	0x1
	.2byte	0x190
	.4byte	0xe1
	.4byte	.LLST40
	.uleb128 0x24
	.4byte	.LBB90
	.4byte	.LBE90-.LBB90
	.4byte	0xa3d
	.uleb128 0x34
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x192
	.4byte	0xe1
	.4byte	.LLST41
	.uleb128 0x2d
	.4byte	0x238
	.4byte	.LBB91
	.4byte	.LBE91-.LBB91
	.byte	0x1
	.2byte	0x19b
	.4byte	0x9fa
	.uleb128 0x19
	.4byte	.LVL122
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.4byte	0x240
	.4byte	.LBB93
	.4byte	.LBE93-.LBB93
	.byte	0x1
	.2byte	0x19c
	.4byte	0xa17
	.uleb128 0x19
	.4byte	.LVL123
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL117
	.4byte	0xf27
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x75
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x8
	.byte	0x73
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL128
	.4byte	0xf33
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x73
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x73
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -56
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LBB96
	.4byte	.LBE96-.LBB96
	.4byte	0xac1
	.uleb128 0x2c
	.string	"t"
	.byte	0x1
	.2byte	0x1aa
	.4byte	0xe1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x25
	.4byte	.LVL129
	.4byte	0xf27
	.4byte	0xa9d
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x27
	.4byte	.LVL131
	.4byte	0xf07
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x8
	.byte	0x91
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x1c
	.byte	0x8
	.byte	0x5c
	.byte	0x1c
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -60
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LBB97
	.4byte	.LBE97-.LBB97
	.4byte	0xb2a
	.uleb128 0x2c
	.string	"t"
	.byte	0x1
	.2byte	0x1b3
	.4byte	0xb6e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x34
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x1b4
	.4byte	0xd6
	.4byte	.LLST42
	.uleb128 0x25
	.4byte	.LVL133
	.4byte	0xf27
	.4byte	0xb08
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -52
	.byte	0x6
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x27
	.4byte	.LVL135
	.4byte	0xf07
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x73
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	0x238
	.4byte	.LBB98
	.4byte	.LBE98-.LBB98
	.byte	0x1
	.2byte	0x1bd
	.4byte	0xb47
	.uleb128 0x19
	.4byte	.LVL136
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL137
	.4byte	0x258
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xcb
	.uleb128 0x2e
	.4byte	0xe1
	.4byte	0xb6e
	.uleb128 0x2f
	.4byte	0xa6
	.byte	0x5
	.byte	0
	.uleb128 0x2e
	.4byte	0xe1
	.4byte	0xb7e
	.uleb128 0x2f
	.4byte	0xa6
	.byte	0x1
	.byte	0
	.uleb128 0x30
	.4byte	.LASF86
	.byte	0x1
	.2byte	0x1c2
	.4byte	0x102
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc69
	.uleb128 0x13
	.string	"src"
	.byte	0x1
	.2byte	0x1c2
	.4byte	0x25
	.4byte	.LLST43
	.uleb128 0x31
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x1c2
	.4byte	0xad
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x31
	.4byte	.LASF53
	.byte	0x1
	.2byte	0x1c2
	.4byte	0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x33
	.string	"err"
	.byte	0x1
	.2byte	0x1cb
	.4byte	0x102
	.4byte	.LLST44
	.uleb128 0x2c
	.string	"map"
	.byte	0x1
	.2byte	0x1cc
	.4byte	0x7c2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x36
	.4byte	.LASF87
	.byte	0x1
	.2byte	0x1cd
	.4byte	0x1b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x34
	.4byte	.LASF88
	.byte	0x1
	.2byte	0x1ce
	.4byte	0x25
	.4byte	.LLST45
	.uleb128 0x34
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x1cf
	.4byte	0x25
	.4byte	.LLST46
	.uleb128 0x25
	.4byte	.LVL146
	.4byte	0xf3e
	.4byte	0xc45
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x7
	.byte	0x72
	.sleb128 0
	.byte	0x11
	.sleb128 -65536
	.byte	0x1a
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x74
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x25
	.4byte	.LVL148
	.4byte	0xf07
	.4byte	0xc5f
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL149
	.4byte	0xf49
	.byte	0
	.uleb128 0x37
	.4byte	.LASF90
	.byte	0x1
	.2byte	0x119
	.4byte	0x102
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe89
	.uleb128 0x32
	.4byte	.LASF91
	.byte	0x1
	.2byte	0x119
	.4byte	0x25
	.4byte	.LLST47
	.uleb128 0x13
	.string	"src"
	.byte	0x1
	.2byte	0x119
	.4byte	0xc4
	.4byte	.LLST48
	.uleb128 0x31
	.4byte	.LASF53
	.byte	0x1
	.2byte	0x119
	.4byte	0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x34
	.4byte	.LASF92
	.byte	0x1
	.2byte	0x11b
	.4byte	0x7c2
	.4byte	.LLST49
	.uleb128 0x33
	.string	"rc"
	.byte	0x1
	.2byte	0x124
	.4byte	0x133
	.4byte	.LLST50
	.uleb128 0x35
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0xe1b
	.uleb128 0x36
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x12e
	.4byte	0xe89
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x34
	.4byte	.LASF94
	.byte	0x1
	.2byte	0x12f
	.4byte	0xe1
	.4byte	.LLST51
	.uleb128 0x38
	.4byte	.Ldebug_ranges0+0x30
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.2byte	0x130
	.4byte	0x25
	.4byte	.LLST52
	.uleb128 0x16
	.4byte	.LBB102
	.4byte	.LBE102-.LBB102
	.uleb128 0x34
	.4byte	.LASF95
	.byte	0x1
	.2byte	0x131
	.4byte	0xe1
	.4byte	.LLST53
	.uleb128 0x39
	.4byte	0x240
	.4byte	.LBB103
	.4byte	.LBE103-.LBB103
	.byte	0x1
	.2byte	0x147
	.uleb128 0x39
	.4byte	0x238
	.4byte	.LBB105
	.4byte	.LBE105-.LBB105
	.byte	0x1
	.2byte	0x149
	.uleb128 0x25
	.4byte	.LVL162
	.4byte	0xf07
	.4byte	0xd6d
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x8
	.byte	0x91
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x8
	.byte	0x40
	.byte	0x1c
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x73
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL163
	.4byte	0xb7e
	.4byte	0xd8d
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL166
	.4byte	0xf07
	.4byte	0xdb0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x73
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL167
	.4byte	0xb7e
	.4byte	0xdd9
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x77
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x8
	.byte	0x91
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x8
	.byte	0x40
	.byte	0x1c
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL169
	.4byte	0xf07
	.4byte	0xdfc
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x73
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL171
	.4byte	0xf54
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	0x250
	.4byte	.LBB109
	.4byte	.LBE109-.LBB109
	.byte	0x1
	.2byte	0x153
	.4byte	0xe38
	.uleb128 0x19
	.4byte	.LVL179
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.4byte	0x248
	.4byte	.LBB111
	.4byte	.LBE111-.LBB111
	.byte	0x1
	.2byte	0x155
	.4byte	0xe55
	.uleb128 0x19
	.4byte	.LVL182
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL156
	.4byte	0x282
	.uleb128 0x25
	.4byte	.LVL180
	.4byte	0xf1c
	.4byte	0xe78
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL183
	.4byte	0x258
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	0xcb
	.4byte	0xe99
	.uleb128 0x2f
	.4byte	0xa6
	.byte	0x1f
	.byte	0
	.uleb128 0x15
	.4byte	.LASF96
	.byte	0x1
	.byte	0x53
	.4byte	0x33b
	.uleb128 0x5
	.byte	0x3
	.4byte	s_flash_guard_ops
	.uleb128 0x3a
	.4byte	.LASF97
	.byte	0x6
	.2byte	0x218
	.4byte	0x18f
	.uleb128 0x3b
	.4byte	.LASF98
	.byte	0x1
	.byte	0x45
	.4byte	0x341
	.uleb128 0x5
	.byte	0x3
	.4byte	g_flash_guard_default_ops
	.uleb128 0x3b
	.4byte	.LASF99
	.byte	0x1
	.byte	0x4c
	.4byte	0x341
	.uleb128 0x5
	.byte	0x3
	.4byte	g_flash_guard_no_os_ops
	.uleb128 0x3c
	.4byte	.LASF100
	.4byte	.LASF100
	.byte	0x6
	.2byte	0x146
	.uleb128 0x3d
	.4byte	.LASF101
	.4byte	.LASF101
	.byte	0x8
	.byte	0x1a
	.uleb128 0x3c
	.4byte	.LASF102
	.4byte	.LASF102
	.byte	0x6
	.2byte	0x182
	.uleb128 0x3c
	.4byte	.LASF103
	.4byte	.LASF103
	.byte	0x6
	.2byte	0x18f
	.uleb128 0x3e
	.4byte	.LASF119
	.4byte	.LASF119
	.uleb128 0x3c
	.4byte	.LASF104
	.4byte	.LASF104
	.byte	0x6
	.2byte	0x1ad
	.uleb128 0x3d
	.4byte	.LASF105
	.4byte	.LASF105
	.byte	0x8
	.byte	0x39
	.uleb128 0x3c
	.4byte	.LASF106
	.4byte	.LASF106
	.byte	0x6
	.2byte	0x1bd
	.uleb128 0x3d
	.4byte	.LASF107
	.4byte	.LASF107
	.byte	0x9
	.byte	0x18
	.uleb128 0x3d
	.4byte	.LASF108
	.4byte	.LASF108
	.byte	0x7
	.byte	0xb0
	.uleb128 0x3d
	.4byte	.LASF109
	.4byte	.LASF109
	.byte	0x7
	.byte	0xd4
	.uleb128 0x3c
	.4byte	.LASF110
	.4byte	.LASF110
	.byte	0x6
	.2byte	0x1f3
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
	.uleb128 0x3
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
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x4109
	.byte	0
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x18
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x18
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x39
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
	.uleb128 0x5
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL5
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL15
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
	.4byte	.LVL37
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL38
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL13
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL16
	.4byte	.LVL33
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LFE26
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL15
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL20
	.4byte	.LVL33
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x3c
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL17
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL17
	.4byte	.LVL33
	.2byte	0x2
	.byte	0x40
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL19
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL24
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL28
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL20
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL39
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL41
	.4byte	.LFE25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL42
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL84
	.4byte	.LVL87
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL87
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL88
	.4byte	.LVL89
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL89
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL90
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL42
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL77
	.4byte	.LVL87
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL87
	.4byte	.LFE27
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL43
	.4byte	.LVL51
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL57
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL70
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL43
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL77
	.4byte	.LVL87
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL45
	.4byte	.LVL60
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL60
	.4byte	.LVL84
	.2byte	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x9
	.byte	0xfc
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL84
	.4byte	.LVL87
	.2byte	0x7
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9
	.byte	0xfc
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL46
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL60
	.4byte	.LVL84
	.2byte	0x1c
	.byte	0x72
	.sleb128 3
	.byte	0x9
	.byte	0xfc
	.byte	0x1a
	.byte	0x72
	.sleb128 0
	.byte	0x1c
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x74
	.sleb128 0
	.byte	0x16
	.byte	0x14
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL84
	.4byte	.LVL87
	.2byte	0x20
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x23
	.uleb128 0x3
	.byte	0x9
	.byte	0xfc
	.byte	0x1a
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x1c
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x74
	.sleb128 0
	.byte	0x16
	.byte	0x14
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL46
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL47
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL48
	.4byte	.LVL50-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL50-1
	.4byte	.LVL87
	.2byte	0x2
	.byte	0x91
	.sleb128 -36
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL49
	.4byte	.LVL50-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL50-1
	.4byte	.LVL87
	.2byte	0x2
	.byte	0x91
	.sleb128 -40
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL59
	.4byte	.LVL74
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL62
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL64
	.4byte	.LVL65
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL65
	.4byte	.LVL66-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL66-1
	.4byte	.LVL73
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL63
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x4
	.byte	0x91
	.sleb128 -80
	.byte	0x9f
	.4byte	.LVL67
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL91
	.4byte	.LVL110
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL110
	.4byte	.LVL138
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL138
	.4byte	.LVL139
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL139
	.4byte	.LVL140
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL140
	.4byte	.LVL141
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL141
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL91
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL112
	.4byte	.LVL138
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL138
	.4byte	.LFE29
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL92
	.4byte	.LVL100
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL100
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL102
	.4byte	.LVL114
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL114
	.4byte	.LVL116
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL118
	.4byte	.LVL124
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL124
	.4byte	.LVL127
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL127
	.4byte	.LVL138
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL102
	.4byte	.LVL135
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL103
	.4byte	.LVL135
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL104
	.4byte	.LVL135
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL105
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL106
	.4byte	.LVL124
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	.LVL124
	.4byte	.LVL127
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL127
	.4byte	.LVL135
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL107
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL108
	.4byte	.LVL135
	.2byte	0x2
	.byte	0x91
	.sleb128 -40
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL107
	.4byte	.LVL135
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL109
	.4byte	.LVL114
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL114
	.4byte	.LVL124
	.2byte	0x2
	.byte	0x91
	.sleb128 -52
	.4byte	.LVL124
	.4byte	.LVL126
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL126
	.4byte	.LVL135
	.2byte	0x2
	.byte	0x91
	.sleb128 -52
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL111
	.4byte	.LVL114
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL114
	.4byte	.LVL124
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL124
	.4byte	.LVL127
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL127
	.4byte	.LVL135
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL113
	.4byte	.LVL114
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL114
	.4byte	.LVL124
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	.LVL124
	.4byte	.LVL125
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL125
	.4byte	.LVL135
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL94
	.4byte	.LVL98
	.2byte	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL98
	.4byte	.LVL99-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL99-1
	.4byte	.LVL102
	.2byte	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x9
	.byte	0xfc
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL95
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL96
	.4byte	.LVL97
	.2byte	0x6
	.byte	0x7c
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL97
	.4byte	.LVL99-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL99-1
	.4byte	.LVL102
	.2byte	0xb
	.byte	0x74
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x3
	.byte	0x9
	.byte	0xfc
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL114
	.4byte	.LVL124
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL127
	.4byte	.LVL128
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL114
	.4byte	.LVL124
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL127
	.4byte	.LVL128
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL115
	.4byte	.LVL121
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL132
	.4byte	.LVL133-1
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL142
	.4byte	.LVL147
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL147
	.4byte	.LVL150
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL150
	.4byte	.LVL151
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL151
	.4byte	.LVL152
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL152
	.4byte	.LVL153
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL153
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL147
	.4byte	.LVL150
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL143
	.4byte	.LVL146-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL146-1
	.4byte	.LVL147
	.2byte	0x8
	.byte	0x72
	.sleb128 0
	.byte	0x11
	.sleb128 -65536
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL147
	.4byte	.LVL150
	.2byte	0x9
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x11
	.sleb128 -65536
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL144
	.4byte	.LVL145
	.2byte	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL145
	.4byte	.LVL146-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL146-1
	.4byte	.LVL150
	.2byte	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL154
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
	.4byte	.LVL186
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL186
	.4byte	.LVL187
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL187
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL154
	.4byte	.LVL177
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL177
	.4byte	.LVL184
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL184
	.4byte	.LFE28
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL155
	.4byte	.LVL177
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL177
	.4byte	.LVL184
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL184
	.4byte	.LFE28
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL157
	.4byte	.LVL159
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL172
	.4byte	.LVL184
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL160
	.4byte	.LVL164
	.2byte	0x2
	.byte	0x40
	.byte	0x9f
	.4byte	.LVL165
	.4byte	.LVL168
	.2byte	0x2
	.byte	0x40
	.byte	0x9f
	.4byte	.LVL168
	.4byte	.LVL169
	.2byte	0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.4byte	.LVL169
	.4byte	.LVL175
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL158
	.4byte	.LVL175
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL176
	.4byte	.LVL178
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL159
	.4byte	.LVL172
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x6c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB89
	.4byte	.LBE89
	.4byte	.LBB95
	.4byte	.LBE95
	.4byte	0
	.4byte	0
	.4byte	.LBB100
	.4byte	.LBE100
	.4byte	.LBB108
	.4byte	.LBE108
	.4byte	0
	.4byte	0
	.4byte	.LBB101
	.4byte	.LBE101
	.4byte	.LBB107
	.4byte	.LBE107
	.4byte	0
	.4byte	0
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF70:
	.string	"write_src"
.LASF3:
	.string	"size_t"
.LASF21:
	.string	"uintptr_t"
.LASF32:
	.string	"page_size"
.LASF51:
	.string	"funcs"
.LASF22:
	.string	"esp_err_t"
.LASF4:
	.string	"__uint8_t"
.LASF93:
	.string	"encrypt_buf"
.LASF10:
	.string	"long long unsigned int"
.LASF37:
	.string	"spi_flash_mmap_handle_t"
.LASF115:
	.string	"spi_flash_unlock"
.LASF100:
	.string	"esp_rom_spiflash_unlock"
.LASF56:
	.string	"spi_flash_erase_range"
.LASF73:
	.string	"dstc"
.LASF20:
	.string	"intptr_t"
.LASF40:
	.string	"spi_flash_op_lock_func_t"
.LASF9:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF28:
	.string	"device_id"
.LASF110:
	.string	"esp_rom_spiflash_write_encrypted"
.LASF104:
	.string	"esp_rom_spiflash_write"
.LASF113:
	.string	"C:\\\\esp\\\\ArkPOS2-esp\\\\build\\\\spi_flash"
.LASF72:
	.string	"dstv"
.LASF99:
	.string	"g_flash_guard_no_os_ops"
.LASF47:
	.string	"spi_flash_guard_start"
.LASF13:
	.string	"long int"
.LASF41:
	.string	"spi_flash_op_unlock_func_t"
.LASF62:
	.string	"left_size"
.LASF119:
	.string	"memcpy"
.LASF114:
	.string	"spi_flash_translate_rc"
.LASF61:
	.string	"left_off"
.LASF105:
	.string	"spi_flash_mark_modified_region"
.LASF74:
	.string	"dsti"
.LASF87:
	.string	"map_handle"
.LASF34:
	.string	"esp_rom_spiflash_chip_t"
.LASF88:
	.string	"map_src"
.LASF45:
	.string	"spi_flash_guard_funcs_t"
.LASF8:
	.string	"__uint32_t"
.LASF11:
	.string	"__intptr_t"
.LASF43:
	.string	"op_lock"
.LASF96:
	.string	"s_flash_guard_ops"
.LASF85:
	.string	"mid_read"
.LASF82:
	.string	"read_src"
.LASF89:
	.string	"map_size"
.LASF0:
	.string	"unsigned int"
.LASF86:
	.string	"spi_flash_read_encrypted"
.LASF71:
	.string	"spi_flash_read"
.LASF66:
	.string	"right_size"
.LASF15:
	.string	"long unsigned int"
.LASF84:
	.string	"mid_remaining"
.LASF78:
	.string	"pad_left_size"
.LASF26:
	.string	"ESP_ROM_SPIFLASH_RESULT_TIMEOUT"
.LASF53:
	.string	"size"
.LASF1:
	.string	"short unsigned int"
.LASF44:
	.string	"op_unlock"
.LASF118:
	.string	"spi_flash_get_chip_size"
.LASF75:
	.string	"src_mid_off"
.LASF90:
	.string	"spi_flash_write_encrypted"
.LASF55:
	.string	"sector"
.LASF108:
	.string	"spi_flash_mmap"
.LASF30:
	.string	"block_size"
.LASF97:
	.string	"g_rom_flashchip"
.LASF33:
	.string	"status_mask"
.LASF27:
	.string	"esp_rom_spiflash_result_t"
.LASF68:
	.string	"write_buf"
.LASF14:
	.string	"sizetype"
.LASF48:
	.string	"spi_flash_guard_op_unlock"
.LASF92:
	.string	"ssrc"
.LASF67:
	.string	"direct_write"
.LASF35:
	.string	"SPI_FLASH_MMAP_DATA"
.LASF36:
	.string	"SPI_FLASH_MMAP_INST"
.LASF54:
	.string	"sectors_per_block"
.LASF29:
	.string	"chip_size"
.LASF106:
	.string	"esp_rom_spiflash_read"
.LASF103:
	.string	"esp_rom_spiflash_erase_sector"
.LASF65:
	.string	"right_off"
.LASF39:
	.string	"spi_flash_guard_end_func_t"
.LASF77:
	.string	"pad_left_src"
.LASF101:
	.string	"spi_flash_init_lock"
.LASF31:
	.string	"sector_size"
.LASF112:
	.string	"C:/esp/esp-idf/components/spi_flash/flash_ops.c"
.LASF23:
	.string	"_Bool"
.LASF18:
	.string	"int32_t"
.LASF5:
	.string	"unsigned char"
.LASF46:
	.string	"spi_flash_guard_end"
.LASF52:
	.string	"start_addr"
.LASF111:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF6:
	.string	"short int"
.LASF102:
	.string	"esp_rom_spiflash_erase_block"
.LASF12:
	.string	"__uintptr_t"
.LASF76:
	.string	"dst_mid_off"
.LASF60:
	.string	"srcc"
.LASF19:
	.string	"uint32_t"
.LASF79:
	.string	"pad_right_src"
.LASF63:
	.string	"mid_off"
.LASF16:
	.string	"char"
.LASF98:
	.string	"g_flash_guard_default_ops"
.LASF64:
	.string	"mid_size"
.LASF59:
	.string	"srcv"
.LASF24:
	.string	"ESP_ROM_SPIFLASH_RESULT_OK"
.LASF94:
	.string	"row_size"
.LASF116:
	.string	"spi_flash_init"
.LASF95:
	.string	"row_addr"
.LASF50:
	.string	"unlocked"
.LASF7:
	.string	"__int32_t"
.LASF38:
	.string	"spi_flash_guard_start_func_t"
.LASF109:
	.string	"spi_flash_munmap"
.LASF49:
	.string	"spi_flash_guard_op_lock"
.LASF25:
	.string	"ESP_ROM_SPIFLASH_RESULT_ERR"
.LASF91:
	.string	"dest_addr"
.LASF58:
	.string	"spi_flash_write"
.LASF80:
	.string	"pad_right_off"
.LASF107:
	.string	"memmove"
.LASF17:
	.string	"uint8_t"
.LASF83:
	.string	"read_size"
.LASF69:
	.string	"write_size"
.LASF42:
	.string	"start"
.LASF117:
	.string	"spi_flash_guard_set"
.LASF57:
	.string	"spi_flash_erase_sector"
.LASF81:
	.string	"pad_right_size"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-61-gab8375a) 5.2.0"
