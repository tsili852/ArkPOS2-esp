	.file	"esp_ota_ops.c"
	.text
.Ltext0:
	.section	.text.is_ota_partition,"ax",@progbits
	.align	4
	.type	is_ota_partition, @function
is_ota_partition:
.LFB13:
	.file 1 "C:/esp/esp-idf/components/app_update/esp_ota_ops.c"
	.loc 1 72 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 76 0
	beqz.n	a2, .L3
	.loc 1 74 0
	l32i.n	a8, a2, 0
	bnez.n	a8, .L4
	.loc 1 75 0
	l32i.n	a2, a2, 4
.LVL1:
	movi.n	a8, 0xf
	bgeu	a8, a2, .L5
	.loc 1 76 0 discriminator 3
	movi.n	a8, 0x1f
	bgeu	a8, a2, .L6
	.loc 1 76 0 is_stmt 0
	movi.n	a2, 0
	retw.n
.LVL2:
.L3:
	movi.n	a2, 0
.LVL3:
	retw.n
.LVL4:
.L4:
	movi.n	a2, 0
.LVL5:
	retw.n
.L5:
	movi.n	a2, 0
	retw.n
.L6:
	movi.n	a2, 1
	.loc 1 77 0 is_stmt 1
	retw.n
.LFE13:
	.size	is_ota_partition, .-is_ota_partition
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC0:
	.string	"ota_app_count < 16 && \"must erase the partition before writing to it\""
	.align	4
.LC3:
	.string	"C:/esp/esp-idf/components/app_update/esp_ota_ops.c"
	.section	.text.get_ota_partition_count,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.literal .LC2, __func__$5367
	.literal .LC4, .LC3
	.align	4
	.type	get_ota_partition_count, @function
get_ota_partition_count:
.LFB20:
	.loc 1 286 0
	entry	sp, 32
.LCFI1:
.LVL6:
	.loc 1 287 0
	movi.n	a2, 0
	.loc 1 288 0
	j	.L8
.LVL7:
.L10:
	.loc 1 289 0
	movi.n	a8, 0xf
	bgeu	a8, a2, .L9
	.loc 1 289 0 is_stmt 0 discriminator 1
	l32r	a13, .LC1
	l32r	a12, .LC2
	movi	a11, 0x121
	l32r	a10, .LC4
	call8	__assert_func
.LVL8:
.L9:
	.loc 1 290 0 is_stmt 1
	addi.n	a2, a2, 1
.LVL9:
	extui	a2, a2, 0, 16
.LVL10:
.L8:
	.loc 1 288 0
	movi.n	a12, 0
	addi	a11, a2, 16
	mov.n	a10, a12
	call8	esp_partition_find_first
.LVL11:
	bnez.n	a10, .L10
	.loc 1 293 0
	extui	a2, a2, 0, 8
.LVL12:
	retw.n
.LFE20:
	.size	get_ota_partition_count, .-get_ota_partition_count
	.section	.rodata.str1.4
	.align	4
.LC5:
	.string	"esp_ota_ops"
	.align	4
.LC7:
	.string	"\033[0;31mE (%d) %s: invalid partition table, no app partitions\033[0m\n"
	.section	.text.find_default_boot_partition,"ax",@progbits
	.literal_position
	.literal .LC6, .LC5
	.literal .LC8, .LC7
	.align	4
	.type	find_default_boot_partition, @function
find_default_boot_partition:
.LFB23:
	.loc 1 417 0
	entry	sp, 32
.LCFI2:
	.loc 1 421 0
	movi.n	a12, 0
	mov.n	a11, a12
	mov.n	a10, a12
	call8	esp_partition_find_first
.LVL13:
	.loc 1 422 0
	bnez.n	a10, .L15
	movi.n	a2, 0x10
	j	.L13
.LVL14:
.L14:
.LBB5:
	.loc 1 428 0
	movi.n	a12, 0
	mov.n	a11, a2
	mov.n	a10, a12
.LVL15:
	call8	esp_partition_find_first
.LVL16:
	.loc 1 429 0
	bnez.n	a10, .L16
	.loc 1 427 0 discriminator 2
	addi.n	a2, a2, 1
.LVL17:
.L13:
	.loc 1 427 0 is_stmt 0 discriminator 1
	bnei	a2, 32, .L14
.LBE5:
	.loc 1 435 0 is_stmt 1
	movi.n	a12, 0
	movi.n	a11, 0x20
	mov.n	a10, a12
.LVL18:
	call8	esp_partition_find_first
.LVL19:
	.loc 1 436 0
	bnez.n	a10, .L17
	.loc 1 440 0 discriminator 1
	call8	esp_log_timestamp
.LVL20:
	l32r	a11, .LC6
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC8
	movi.n	a10, 1
	call8	esp_log_write
.LVL21:
	.loc 1 441 0 discriminator 1
	movi.n	a2, 0
.LVL22:
	retw.n
.LVL23:
.L15:
	.loc 1 423 0
	mov.n	a2, a10
	retw.n
.LVL24:
.L16:
.LBB6:
	.loc 1 430 0
	mov.n	a2, a10
.LVL25:
	retw.n
.LVL26:
.L17:
.LBE6:
	.loc 1 437 0
	mov.n	a2, a10
.LVL27:
	.loc 1 442 0
	retw.n
.LFE23:
	.size	find_default_boot_partition, .-find_default_boot_partition
	.section	.text.ota_select_crc,"ax",@progbits
	.align	4
	.type	ota_select_crc, @function
ota_select_crc:
.LFB17:
	.loc 1 258 0
.LVL28:
	entry	sp, 32
.LCFI3:
	.loc 1 259 0
	movi.n	a12, 4
	mov.n	a11, a2
	movi.n	a10, -1
	call8	crc32_le
.LVL29:
	.loc 1 260 0
	mov.n	a2, a10
.LVL30:
	retw.n
.LFE17:
	.size	ota_select_crc, .-ota_select_crc
	.section	.text.ota_select_valid,"ax",@progbits
	.align	4
	.type	ota_select_valid, @function
ota_select_valid:
.LFB18:
	.loc 1 263 0
.LVL31:
	entry	sp, 32
.LCFI4:
	.loc 1 264 0
	l32i.n	a8, a2, 0
	beqi	a8, -1, .L21
	.loc 1 264 0 is_stmt 0 discriminator 1
	l32i.n	a3, a2, 28
	mov.n	a10, a2
	call8	ota_select_crc
.LVL32:
	bne	a3, a10, .L22
	.loc 1 264 0
	movi.n	a2, 1
.LVL33:
	retw.n
.LVL34:
.L21:
	movi.n	a2, 0
.LVL35:
	retw.n
.LVL36:
.L22:
	movi.n	a2, 0
.LVL37:
	.loc 1 265 0 is_stmt 1
	retw.n
.LFE18:
	.size	ota_select_valid, .-ota_select_valid
	.section	.text.rewrite_ota_seq,"ax",@progbits
	.literal_position
	.literal .LC9, s_ota_select
	.literal .LC10, 4096
	.align	4
	.type	rewrite_ota_seq, @function
rewrite_ota_seq:
.LFB19:
	.loc 1 268 0
.LVL38:
	entry	sp, 32
.LCFI5:
	.loc 1 271 0
	bgeui	a3, 2, .L25
	.loc 1 272 0
	slli	a5, a3, 5
	l32r	a8, .LC9
	add.n	a5, a8, a5
	s32i.n	a2, a5, 0
	.loc 1 273 0
	mov.n	a10, a5
	call8	ota_select_crc
.LVL39:
	s32i.n	a10, a5, 28
	.loc 1 274 0
	slli	a2, a3, 12
.LVL40:
	l32r	a12, .LC10
	mov.n	a11, a2
	mov.n	a10, a4
	call8	esp_partition_erase_range
.LVL41:
	.loc 1 275 0
	bnez.n	a10, .L26
	.loc 1 278 0
	slli	a3, a3, 5
.LVL42:
	movi.n	a13, 0x20
	l32r	a12, .LC9
	add.n	a12, a12, a3
	mov.n	a11, a2
	mov.n	a10, a4
.LVL43:
	call8	esp_partition_write
.LVL44:
	mov.n	a2, a10
	retw.n
.LVL45:
.L25:
	.loc 1 281 0
	movi	a2, 0x102
.LVL46:
	retw.n
.LVL47:
.L26:
	.loc 1 276 0
	mov.n	a2, a10
	.loc 1 283 0
	retw.n
.LFE19:
	.size	rewrite_ota_seq, .-rewrite_ota_seq
	.section	.text.esp_rewrite_ota_data,"ax",@progbits
	.literal_position
	.literal .LC11, ota_data_map$5379
	.literal .LC12, s_ota_select
	.literal .LC13, s_ota_select+32
	.align	4
	.type	esp_rewrite_ota_data, @function
esp_rewrite_ota_data:
.LFB21:
	.loc 1 296 0
.LVL48:
	entry	sp, 48
.LCFI6:
.LVL49:
	.loc 1 303 0
	movi.n	a11, 0
	s32i.n	a11, sp, 0
	.loc 1 305 0
	mov.n	a12, a11
	movi.n	a10, 1
	call8	esp_partition_find_first
.LVL50:
	mov.n	a3, a10
.LVL51:
	.loc 1 306 0
	beqz.n	a10, .L39
	.loc 1 307 0
	call8	get_ota_partition_count
.LVL52:
	.loc 1 323 0
	extui	a2, a2, 0, 4
.LVL53:
	mov.n	a4, a10
	bgeu	a2, a10, .L40
	.loc 1 327 0
	l32r	a15, .LC11
	mov.n	a14, sp
	movi.n	a13, 0
	l32i.n	a12, a3, 12
	mov.n	a11, a13
	mov.n	a10, a3
.LVL54:
	call8	esp_partition_mmap
.LVL55:
	.loc 1 328 0
	bnez.n	a10, .L41
	.loc 1 332 0
	l32i.n	a6, sp, 0
	l32r	a5, .LC12
	movi.n	a7, 0x20
	mov.n	a12, a7
	mov.n	a11, a6
	mov.n	a10, a5
.LVL56:
	call8	memcpy
.LVL57:
	.loc 1 333 0
	mov.n	a12, a7
	addmi	a11, a6, 0x1000
	l32r	a10, .LC13
	call8	memcpy
.LVL58:
	.loc 1 334 0
	l32r	a6, .LC11
	l32i.n	a10, a6, 0
	call8	spi_flash_munmap
.LVL59:
	.loc 1 337 0
	mov.n	a10, a5
	call8	ota_select_valid
.LVL60:
	beqz.n	a10, .L29
	.loc 1 337 0 is_stmt 0 discriminator 1
	l32r	a10, .LC13
	call8	ota_select_valid
.LVL61:
	beqz.n	a10, .L29
	.loc 1 338 0 is_stmt 1
	l32r	a5, .LC12
	l32i.n	a6, a5, 0
	l32i.n	a5, a5, 32
	maxu	a11, a6, a5
.LVL62:
	.loc 1 300 0
	movi.n	a9, 0
	.loc 1 339 0
	j	.L30
.LVL63:
.L31:
	.loc 1 340 0
	addi.n	a9, a9, 1
.LVL64:
.L30:
	.loc 1 339 0
	addi.n	a10, a2, 1
	remu	a10, a10, a4
	mull	a8, a9, a4
	add.n	a10, a10, a8
	bltu	a10, a11, .L31
	.loc 1 343 0
	bltu	a6, a5, .L32
	.loc 1 344 0
	mov.n	a12, a3
	movi.n	a11, 1
.LVL65:
	call8	rewrite_ota_seq
.LVL66:
	mov.n	a2, a10
	retw.n
.LVL67:
.L32:
	.loc 1 346 0
	mov.n	a12, a3
	movi.n	a11, 0
.LVL68:
	call8	rewrite_ota_seq
.LVL69:
	mov.n	a2, a10
	retw.n
.LVL70:
.L29:
	.loc 1 349 0
	l32r	a10, .LC12
	call8	ota_select_valid
.LVL71:
	bnez.n	a10, .L42
	j	.L44
.LVL72:
.L35:
	.loc 1 351 0
	addi.n	a9, a9, 1
.LVL73:
	j	.L33
.LVL74:
.L42:
	movi.n	a9, 0
.LVL75:
.L33:
	.loc 1 350 0
	l32r	a8, .LC12
	l32i.n	a11, a8, 0
	addi.n	a10, a2, 1
	remu	a10, a10, a4
	mull	a8, a9, a4
	add.n	a10, a10, a8
	bltu	a10, a11, .L35
	.loc 1 353 0
	mov.n	a12, a3
	movi.n	a11, 1
	call8	rewrite_ota_seq
.LVL76:
	mov.n	a2, a10
	retw.n
.LVL77:
.L44:
	.loc 1 355 0
	l32r	a10, .LC13
	call8	ota_select_valid
.LVL78:
	bnez.n	a10, .L43
	j	.L45
.LVL79:
.L38:
	.loc 1 357 0
	addi.n	a9, a9, 1
.LVL80:
	j	.L36
.LVL81:
.L43:
	movi.n	a9, 0
.LVL82:
.L36:
	.loc 1 356 0
	l32r	a8, .LC12
	l32i.n	a11, a8, 32
	addi.n	a10, a2, 1
	remu	a10, a10, a4
	mull	a8, a9, a4
	add.n	a10, a10, a8
	bltu	a10, a11, .L38
	.loc 1 359 0
	mov.n	a12, a3
	movi.n	a11, 0
	call8	rewrite_ota_seq
.LVL83:
	mov.n	a2, a10
	retw.n
.LVL84:
.L45:
	.loc 1 363 0
	mov.n	a12, a3
	movi.n	a11, 0
	addi.n	a10, a2, 1
	call8	rewrite_ota_seq
.LVL85:
	mov.n	a2, a10
	retw.n
.LVL86:
.L39:
	.loc 1 367 0
	movi	a2, 0x105
.LVL87:
	retw.n
.LVL88:
.L40:
	.loc 1 324 0
	movi	a2, 0x102
	retw.n
.LVL89:
.L41:
	.loc 1 330 0
	mov.n	a2, a10
	.loc 1 369 0
	retw.n
.LFE21:
	.size	esp_rewrite_ota_data, .-esp_rewrite_ota_data
	.section	.rodata.str1.4
	.align	4
.LC15:
	.string	"phys_offs != SPI_FLASH_CACHE2PHYS_FAIL"
	.align	4
.LC19:
	.string	"it != NULL"
	.section	.text.esp_ota_get_running_partition,"ax",@progbits
	.literal_position
	.literal .LC14, esp_ota_get_running_partition
	.literal .LC16, .LC15
	.literal .LC17, __func__$5416
	.literal .LC18, .LC3
	.literal .LC20, .LC19
	.align	4
	.global	esp_ota_get_running_partition
	.type	esp_ota_get_running_partition, @function
esp_ota_get_running_partition:
.LFB25:
	.loc 1 503 0
	entry	sp, 32
.LCFI7:
	.loc 1 507 0
	l32r	a10, .LC14
	call8	spi_flash_cache2phys
.LVL90:
	mov.n	a4, a10
.LVL91:
	.loc 1 509 0
	bnei	a10, -1, .L47
	.loc 1 509 0 is_stmt 0 discriminator 1
	l32r	a13, .LC16
	l32r	a12, .LC17
	movi	a11, 0x1fd
	l32r	a10, .LC18
	call8	__assert_func
.LVL92:
.L47:
	.loc 1 511 0 is_stmt 1
	movi.n	a12, 0
	movi	a11, 0xff
	mov.n	a10, a12
	call8	esp_partition_find
.LVL93:
	mov.n	a3, a10
.LVL94:
	.loc 1 514 0
	bnez.n	a10, .L48
	.loc 1 514 0 is_stmt 0 discriminator 1
	l32r	a13, .LC20
	l32r	a12, .LC17
	movi	a11, 0x202
	l32r	a10, .LC18
	call8	__assert_func
.LVL95:
.L50:
.LBB7:
	.loc 1 517 0 is_stmt 1
	mov.n	a10, a3
	call8	esp_partition_get
.LVL96:
	mov.n	a2, a10
.LVL97:
	.loc 1 518 0
	l32i.n	a9, a10, 8
	bltu	a4, a9, .L49
	.loc 1 518 0 is_stmt 0 discriminator 1
	l32i.n	a8, a10, 12
	add.n	a8, a9, a8
	bgeu	a4, a8, .L49
	.loc 1 519 0 is_stmt 1
	mov.n	a10, a3
	call8	esp_partition_iterator_release
.LVL98:
	.loc 1 520 0
	retw.n
.L49:
	.loc 1 522 0
	mov.n	a10, a3
	call8	esp_partition_next
.LVL99:
	mov.n	a3, a10
.LVL100:
.L48:
.LBE7:
	.loc 1 516 0
	bnez.n	a3, .L50
	.loc 1 525 0
	call8	abort
.LVL101:
.LFE25:
	.size	esp_ota_get_running_partition, .-esp_ota_get_running_partition
	.section	.text.esp_ota_begin,"ax",@progbits
	.literal_position
	.literal .LC21, 5377
	.literal .LC22, s_ota_ops_entries_head
	.literal .LC23, s_ota_ops_last_handle
	.align	4
	.global	esp_ota_begin
	.type	esp_ota_begin, @function
esp_ota_begin:
.LFB14:
	.loc 1 80 0
.LVL102:
	entry	sp, 32
.LCFI8:
.LVL103:
	.loc 1 84 0
	movi.n	a8, 1
	movi.n	a11, 0
	mov.n	a9, a11
	moveqz	a9, a8, a2
	.loc 1 84 0
	movnez	a8, a11, a4
	or	a8, a8, a9
	.loc 1 84 0
	bne	a8, a11, .L59
	.loc 1 88 0
	mov.n	a10, a2
	call8	esp_partition_verify
.LVL104:
	mov.n	a2, a10
.LVL105:
	.loc 1 89 0
	beqz.n	a10, .L60
	.loc 1 93 0
	call8	is_ota_partition
.LVL106:
	beqz.n	a10, .L61
	.loc 1 97 0
	call8	esp_ota_get_running_partition
.LVL107:
	beq	a2, a10, .L62
	.loc 1 102 0
	addi.n	a5, a3, -1
	movi.n	a8, -3
	bgeu	a8, a5, .L54
	.loc 1 103 0
	l32i.n	a12, a2, 12
	movi.n	a11, 0
	mov.n	a10, a2
	call8	esp_partition_erase_range
.LVL108:
	j	.L55
.LVL109:
.L54:
	.loc 1 105 0
	srli	a12, a3, 12
	addi.n	a12, a12, 1
	slli	a12, a12, 12
	movi.n	a11, 0
	mov.n	a10, a2
	call8	esp_partition_erase_range
.LVL110:
.L55:
	.loc 1 108 0
	bnez.n	a10, .L63
	.loc 1 112 0
	movi.n	a11, 1
	movi.n	a10, 0x2c
.LVL111:
	call8	calloc
.LVL112:
	.loc 1 113 0
	beqz.n	a10, .L64
	.loc 1 117 0
	l32r	a8, .LC22
	l32i.n	a8, a8, 0
	s32i.n	a8, a10, 36
	beqz.n	a8, .L56
	.loc 1 117 0 discriminator 1
	addi	a9, a10, 36
	s32i.n	a9, a8, 40
.L56:
	.loc 1 117 0 is_stmt 0 discriminator 3
	l32r	a8, .LC22
	s32i.n	a10, a8, 0
	s32i.n	a8, a10, 40
	.loc 1 119 0 is_stmt 1 discriminator 3
	movi.n	a8, -3
	bgeu	a8, a5, .L57
	.loc 1 120 0
	l32i.n	a3, a2, 12
.LVL113:
	s32i.n	a3, a10, 8
	j	.L58
.LVL114:
.L57:
	.loc 1 122 0
	s32i.n	a3, a10, 8
.LVL115:
.L58:
	.loc 1 125 0
	s32i.n	a2, a10, 4
	.loc 1 126 0
	l32r	a3, .LC23
	l32i.n	a2, a3, 0
.LVL116:
	addi.n	a2, a2, 1
	s32i.n	a2, a3, 0
	s32i.n	a2, a10, 0
	.loc 1 127 0
	s32i.n	a2, a4, 0
.LVL117:
	.loc 1 128 0
	movi.n	a2, 0
	retw.n
.LVL118:
.L59:
	.loc 1 85 0
	movi	a2, 0x102
.LVL119:
	retw.n
.LVL120:
.L60:
	.loc 1 90 0
	movi	a2, 0x105
.LVL121:
	retw.n
.LVL122:
.L61:
	.loc 1 94 0
	movi	a2, 0x102
.LVL123:
	retw.n
.LVL124:
.L62:
	.loc 1 98 0
	l32r	a2, .LC21
.LVL125:
	retw.n
.LVL126:
.L63:
	.loc 1 109 0
	mov.n	a2, a10
.LVL127:
	retw.n
.LVL128:
.L64:
	.loc 1 114 0
	movi	a2, 0x101
.LVL129:
	.loc 1 129 0
	retw.n
.LFE14:
	.size	esp_ota_begin, .-esp_ota_begin
	.section	.rodata.str1.4
	.align	4
.LC26:
	.string	"\033[0;31mE (%d) %s: write data is invalid\033[0m\n"
	.align	4
.LC29:
	.string	"it->erased_size > 0 && \"must erase the partition before writing to it\""
	.align	4
.LC33:
	.string	"\033[0;31mE (%d) %s: OTA image has invalid magic byte (expected 0xE9, saw 0x%02x\033[0m\n"
	.align	4
.LC36:
	.string	"\033[0;31mE (%d) %s: not found the handle\033[0m\n"
	.section	.text.esp_ota_write,"ax",@progbits
	.literal_position
	.literal .LC24, 5379
	.literal .LC25, .LC5
	.literal .LC27, .LC26
	.literal .LC28, s_ota_ops_entries_head
	.literal .LC30, .LC29
	.literal .LC31, __func__$5335
	.literal .LC32, .LC3
	.literal .LC34, .LC33
	.literal .LC35, 1073061888
	.literal .LC37, .LC36
	.align	4
	.global	esp_ota_write
	.type	esp_ota_write, @function
esp_ota_write:
.LFB15:
	.loc 1 132 0
.LVL130:
	entry	sp, 32
.LCFI9:
.LVL131:
	.loc 1 137 0
	bnez.n	a3, .L66
	.loc 1 138 0 discriminator 1
	call8	esp_log_timestamp
.LVL132:
	l32r	a11, .LC25
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC27
	movi.n	a10, 1
	call8	esp_log_write
.LVL133:
	.loc 1 139 0 discriminator 1
	movi	a2, 0x102
.LVL134:
	retw.n
.LVL135:
.L66:
	.loc 1 143 0
	l32r	a5, .LC28
	l32i.n	a5, a5, 0
.LVL136:
	j	.L68
.L77:
	.loc 1 144 0
	l32i.n	a8, a5, 0
	bne	a8, a2, .L69
	.loc 1 146 0
	l32i.n	a2, a5, 8
.LVL137:
	bnez.n	a2, .L70
	.loc 1 146 0 is_stmt 0 discriminator 1
	l32r	a13, .LC30
	l32r	a12, .LC31
	movi	a11, 0x92
	l32r	a10, .LC32
	call8	__assert_func
.LVL138:
.L70:
	.loc 1 148 0 is_stmt 1
	l32i.n	a2, a5, 12
	bnez.n	a2, .L71
	.loc 1 148 0 is_stmt 0 discriminator 1
	beqz.n	a4, .L71
	.loc 1 148 0 discriminator 2
	l8ui	a6, a3, 0
	movi	a2, 0xe9
	beq	a6, a2, .L71
	.loc 1 149 0 is_stmt 1 discriminator 1
	call8	esp_log_timestamp
.LVL139:
	l32r	a11, .LC25
	l8ui	a15, a3, 0
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC34
	movi.n	a10, 1
	call8	esp_log_write
.LVL140:
	.loc 1 150 0 discriminator 1
	l32r	a2, .LC24
	retw.n
.L71:
.LBB8:
.LBB9:
	.file 2 "C:/esp/esp-idf/components/bootloader_support/include/esp_flash_encrypt.h"
	.loc 2 37 0
	l32r	a2, .LC35
	memw
	l32i.n	a8, a2, 0
	extui	a8, a8, 20, 8
.LVL141:
	.loc 2 39 0
	movi.n	a2, 0
	j	.L72
.LVL142:
.L74:
	.loc 2 41 0
	bbci	a8, 0, .L73
	.loc 2 42 0
	movi.n	a9, 1
	xor	a2, a2, a9
.LVL143:
	extui	a2, a2, 0, 8
.LVL144:
.L73:
	.loc 2 44 0
	srli	a8, a8, 1
.LVL145:
.L72:
	.loc 2 40 0
	bnez.n	a8, .L74
.LBE9:
.LBE8:
	.loc 1 153 0
	beqz.n	a2, .L75
.LBB10:
	.loc 1 158 0
	l8ui	a10, a5, 16
	beqz.n	a10, .L76
	.loc 1 159 0
	movi.n	a2, 0x10
.LVL146:
	sub	a2, a2, a10
	minu	a2, a4, a2
.LVL147:
	.loc 1 160 0
	addi	a6, a5, 17
	mov.n	a12, a2
	mov.n	a11, a3
	add.n	a10, a6, a10
	call8	memcpy
.LVL148:
	.loc 1 161 0
	l8ui	a8, a5, 16
	add.n	a8, a2, a8
	extui	a8, a8, 0, 8
	s8i	a8, a5, 16
	.loc 1 162 0
	bnei	a8, 16, .L78
	.loc 1 166 0
	movi.n	a13, 0x10
	mov.n	a12, a6
	l32i.n	a11, a5, 12
	l32i.n	a10, a5, 4
	call8	esp_partition_write
.LVL149:
	.loc 1 167 0
	bnez.n	a10, .L79
	.loc 1 170 0
	movi.n	a8, 0
	s8i	a8, a5, 16
	.loc 1 171 0
	movi.n	a12, 0x10
	movi	a11, 0xff
	mov.n	a10, a6
.LVL150:
	call8	memset
.LVL151:
	.loc 1 172 0
	l32i.n	a6, a5, 12
	addi	a6, a6, 16
	s32i.n	a6, a5, 12
	.loc 1 173 0
	add.n	a3, a3, a2
.LVL152:
	.loc 1 174 0
	sub	a4, a4, a2
.LVL153:
.L76:
	.loc 1 178 0
	extui	a12, a4, 0, 4
	s8i	a12, a5, 16
	.loc 1 179 0
	beqz.n	a12, .L75
	.loc 1 180 0
	sub	a4, a4, a12
.LVL154:
	.loc 1 181 0
	add.n	a11, a3, a4
	addi	a10, a5, 17
	call8	memcpy
.LVL155:
.L75:
.LBE10:
	.loc 1 185 0
	mov.n	a13, a4
	mov.n	a12, a3
	l32i.n	a11, a5, 12
	l32i.n	a10, a5, 4
	call8	esp_partition_write
.LVL156:
	.loc 1 186 0
	bnez.n	a10, .L80
	.loc 1 187 0
	l32i.n	a2, a5, 12
	add.n	a4, a2, a4
.LVL157:
	s32i.n	a4, a5, 12
	.loc 1 189 0
	mov.n	a2, a10
	retw.n
.LVL158:
.L69:
	.loc 1 143 0 discriminator 2
	l32i.n	a5, a5, 36
.LVL159:
.L68:
	.loc 1 143 0 discriminator 1
	bnez.n	a5, .L77
	.loc 1 194 0 discriminator 1
	call8	esp_log_timestamp
.LVL160:
	l32r	a11, .LC25
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC37
	movi.n	a10, 1
	call8	esp_log_write
.LVL161:
	.loc 1 195 0 discriminator 1
	movi	a2, 0x102
.LVL162:
	retw.n
.LVL163:
.L78:
.LBB11:
	.loc 1 163 0
	movi.n	a2, 0
.LVL164:
	retw.n
.LVL165:
.L79:
	.loc 1 168 0
	mov.n	a2, a10
.LVL166:
	retw.n
.LVL167:
.L80:
.LBE11:
	.loc 1 189 0
	mov.n	a2, a10
	.loc 1 196 0
	retw.n
.LFE15:
	.size	esp_ota_write, .-esp_ota_write
	.section	.text.esp_ota_end,"ax",@progbits
	.literal_position
	.literal .LC38, 5379
	.literal .LC39, s_ota_ops_entries_head
	.align	4
	.global	esp_ota_end
	.type	esp_ota_end, @function
esp_ota_end:
.LFB16:
	.loc 1 199 0
.LVL168:
	entry	sp, 272
.LCFI10:
.LVL169:
	.loc 1 203 0
	l32r	a3, .LC39
	l32i.n	a3, a3, 0
.LVL170:
	j	.L82
.L84:
	.loc 1 204 0
	l32i.n	a8, a3, 0
	beq	a8, a2, .L83
	.loc 1 203 0 discriminator 2
	l32i.n	a3, a3, 36
.LVL171:
.L82:
	.loc 1 203 0 discriminator 1
	bnez.n	a3, .L84
.L83:
	.loc 1 209 0
	beqz.n	a3, .L89
	.loc 1 216 0
	l32i.n	a2, a3, 8
.LVL172:
	beqz.n	a2, .L90
	.loc 1 216 0 is_stmt 0 discriminator 1
	l32i.n	a11, a3, 12
	beqz.n	a11, .L91
	.loc 1 221 0 is_stmt 1
	l8ui	a2, a3, 16
	beqz.n	a2, .L92
	.loc 1 223 0
	movi.n	a13, 0x10
	addi	a12, a3, 17
	l32i.n	a10, a3, 4
	call8	esp_partition_write
.LVL173:
	mov.n	a2, a10
.LVL174:
	.loc 1 224 0
	bnez.n	a10, .L93
	.loc 1 228 0
	l32i.n	a8, a3, 12
	addi	a8, a8, 16
	s32i.n	a8, a3, 12
	.loc 1 229 0
	movi.n	a8, 0
	s8i	a8, a3, 16
	j	.L87
.LVL175:
.L92:
	.loc 1 201 0
	movi.n	a2, 0
.LVL176:
.L87:
	.loc 1 234 0
	l32i.n	a8, a3, 4
	l32i.n	a9, a8, 8
	.loc 1 233 0
	s32i	a9, sp, 224
	.loc 1 235 0
	l32i.n	a8, a8, 12
	.loc 1 233 0
	s32i	a8, sp, 228
	.loc 1 238 0
	mov.n	a12, sp
	movi	a11, 0xe0
	add.n	a11, a11, sp
	movi.n	a10, 0
	call8	esp_image_load
.LVL177:
	bnez.n	a10, .L94
	j	.L86
.LVL178:
.L90:
	.loc 1 217 0
	movi	a2, 0x102
	j	.L86
.L91:
	movi	a2, 0x102
	j	.L86
.LVL179:
.L93:
	.loc 1 225 0
	movi	a2, 0x103
.LVL180:
	j	.L86
.LVL181:
.L94:
	.loc 1 239 0
	l32r	a2, .LC38
.LVL182:
.L86:
	.loc 1 252 0
	l32i.n	a8, a3, 36
	beqz.n	a8, .L88
	.loc 1 252 0 discriminator 1
	l32i.n	a9, a3, 40
	s32i.n	a9, a8, 40
.L88:
	.loc 1 252 0 is_stmt 0 discriminator 3
	l32i.n	a8, a3, 40
	l32i.n	a9, a3, 36
	s32i.n	a9, a8, 0
	.loc 1 253 0 is_stmt 1 discriminator 3
	mov.n	a10, a3
	call8	free
.LVL183:
	.loc 1 254 0 discriminator 3
	retw.n
.LVL184:
.L89:
	.loc 1 210 0
	movi	a2, 0x105
.LVL185:
	.loc 1 255 0
	retw.n
.LFE16:
	.size	esp_ota_end, .-esp_ota_end
	.section	.text.esp_ota_set_boot_partition,"ax",@progbits
	.literal_position
	.literal .LC40, 5379
	.align	4
	.global	esp_ota_set_boot_partition
	.type	esp_ota_set_boot_partition, @function
esp_ota_set_boot_partition:
.LFB22:
	.loc 1 372 0
.LVL186:
	entry	sp, 272
.LCFI11:
.LVL187:
	.loc 1 374 0
	beqz.n	a2, .L98
	.loc 1 380 0
	l32i.n	a8, a2, 8
	.loc 1 379 0
	s32i	a8, sp, 224
	.loc 1 381 0
	l32i.n	a8, a2, 12
	.loc 1 379 0
	s32i	a8, sp, 228
	.loc 1 383 0
	mov.n	a12, sp
	movi	a11, 0xe0
	add.n	a11, a11, sp
	movi.n	a10, 0
	call8	esp_image_load
.LVL188:
	bnez.n	a10, .L99
	.loc 1 394 0
	l32i.n	a8, a2, 0
	bnez.n	a8, .L100
	.loc 1 395 0
	l32i.n	a8, a2, 4
	bnez.n	a8, .L97
	.loc 1 396 0
	movi.n	a12, 0
	mov.n	a11, a12
	movi.n	a10, 1
	call8	esp_partition_find_first
.LVL189:
	.loc 1 397 0
	beqz.n	a10, .L101
	.loc 1 398 0
	l32i.n	a12, a10, 12
	movi.n	a11, 0
	call8	esp_partition_erase_range
.LVL190:
	mov.n	a2, a10
.LVL191:
	retw.n
.LVL192:
.L97:
	.loc 1 404 0
	movi.n	a12, 0
	mov.n	a11, a12
	movi.n	a10, 1
	call8	esp_partition_find_first
.LVL193:
	.loc 1 405 0
	beqz.n	a10, .L102
	.loc 1 406 0
	l32i.n	a10, a2, 4
.LVL194:
	call8	esp_rewrite_ota_data
.LVL195:
	mov.n	a2, a10
.LVL196:
	retw.n
.LVL197:
.L98:
	.loc 1 375 0
	movi	a2, 0x102
.LVL198:
	retw.n
.LVL199:
.L99:
	.loc 1 384 0
	l32r	a2, .LC40
.LVL200:
	retw.n
.LVL201:
.L100:
	.loc 1 412 0
	movi	a2, 0x102
.LVL202:
	retw.n
.LVL203:
.L101:
	.loc 1 400 0
	movi	a2, 0x105
.LVL204:
	retw.n
.LVL205:
.L102:
	.loc 1 408 0
	movi	a2, 0x105
.LVL206:
	.loc 1 414 0
	retw.n
.LFE22:
	.size	esp_ota_set_boot_partition, .-esp_ota_set_boot_partition
	.section	.rodata.str1.4
	.align	4
.LC42:
	.string	"\033[0;31mE (%d) %s: not found ota data\033[0m\n"
	.align	4
.LC45:
	.string	"\033[0;31mE (%d) %s: mmap ota data filed\033[0m\n"
	.align	4
.LC49:
	.string	"\033[0;31mE (%d) %s: ota data invalid, no current app. Assuming factory\033[0m\n"
	.section	.text.esp_ota_get_boot_partition,"ax",@progbits
	.literal_position
	.literal .LC41, .LC5
	.literal .LC43, .LC42
	.literal .LC44, ota_data_map$5409
	.literal .LC46, .LC45
	.literal .LC47, s_ota_select
	.literal .LC48, s_ota_select+32
	.literal .LC50, .LC49
	.align	4
	.global	esp_ota_get_boot_partition
	.type	esp_ota_get_boot_partition, @function
esp_ota_get_boot_partition:
.LFB24:
	.loc 1 445 0
	entry	sp, 48
.LCFI12:
.LVL207:
	.loc 1 449 0
	movi.n	a11, 0
	s32i.n	a11, sp, 0
.LVL208:
	.loc 1 451 0
	mov.n	a12, a11
	movi.n	a10, 1
	call8	esp_partition_find_first
.LVL209:
	.loc 1 453 0
	bnez.n	a10, .L104
	.loc 1 454 0 discriminator 1
	call8	esp_log_timestamp
.LVL210:
	l32r	a11, .LC41
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC43
	movi.n	a10, 1
	call8	esp_log_write
.LVL211:
	.loc 1 455 0 discriminator 1
	movi.n	a2, 0
	retw.n
.LVL212:
.L104:
	.loc 1 458 0
	l32r	a15, .LC44
	mov.n	a14, sp
	movi.n	a13, 0
	l32i.n	a12, a10, 12
	mov.n	a11, a13
	call8	esp_partition_mmap
.LVL213:
	.loc 1 459 0
	beqz.n	a10, .L106
	.loc 1 460 0
	l32r	a2, .LC44
	l32i.n	a10, a2, 0
.LVL214:
	call8	spi_flash_munmap
.LVL215:
	.loc 1 461 0
	call8	esp_log_timestamp
.LVL216:
	l32r	a11, .LC41
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC46
	movi.n	a10, 1
	call8	esp_log_write
.LVL217:
	.loc 1 462 0
	movi.n	a2, 0
	retw.n
.LVL218:
.L106:
	.loc 1 464 0
	l32i.n	a3, sp, 0
	l32r	a2, .LC47
	movi.n	a4, 0x20
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
.LVL219:
	call8	memcpy
.LVL220:
	.loc 1 465 0
	mov.n	a12, a4
	addmi	a11, a3, 0x1000
	l32r	a10, .LC48
	call8	memcpy
.LVL221:
	.loc 1 466 0
	l32r	a3, .LC44
	l32i.n	a10, a3, 0
	call8	spi_flash_munmap
.LVL222:
	.loc 1 468 0
	call8	get_ota_partition_count
.LVL223:
	mov.n	a3, a10
.LVL224:
	.loc 1 472 0
	l32i.n	a2, a2, 0
	bnei	a2, -1, .L107
	.loc 1 472 0 is_stmt 0 discriminator 1
	l32r	a2, .LC47
	l32i.n	a2, a2, 32
	bnei	a2, -1, .L107
	.loc 1 474 0 is_stmt 1
	call8	find_default_boot_partition
.LVL225:
	mov.n	a2, a10
	retw.n
.L107:
	.loc 1 475 0
	l32r	a10, .LC47
	call8	ota_select_valid
.LVL226:
	beqz.n	a10, .L108
	.loc 1 475 0 is_stmt 0 discriminator 1
	l32r	a10, .LC48
	call8	ota_select_valid
.LVL227:
	beqz.n	a10, .L108
	.loc 1 480 0 is_stmt 1
	l32r	a2, .LC47
	l32i.n	a11, a2, 0
	l32i.n	a2, a2, 32
	maxu	a11, a11, a2
	addi.n	a11, a11, -1
	remu	a11, a11, a3
	.loc 1 479 0
	movi.n	a12, 0
	addi	a11, a11, 16
	mov.n	a10, a12
	call8	esp_partition_find_first
.LVL228:
	mov.n	a2, a10
	retw.n
.L108:
	.loc 1 481 0
	l32r	a10, .LC47
	call8	ota_select_valid
.LVL229:
	beqz.n	a10, .L109
	.loc 1 486 0
	l32r	a2, .LC47
	l32i.n	a11, a2, 0
	addi.n	a11, a11, -1
	remu	a11, a11, a3
	.loc 1 485 0
	movi.n	a12, 0
	addi	a11, a11, 16
	mov.n	a10, a12
	call8	esp_partition_find_first
.LVL230:
	mov.n	a2, a10
	retw.n
.L109:
	.loc 1 488 0
	l32r	a10, .LC48
	call8	ota_select_valid
.LVL231:
	beqz.n	a10, .L110
	.loc 1 493 0
	l32r	a2, .LC47
	l32i.n	a11, a2, 32
	addi.n	a11, a11, -1
	remu	a11, a11, a3
	.loc 1 492 0
	movi.n	a12, 0
	addi	a11, a11, 16
	mov.n	a10, a12
	call8	esp_partition_find_first
.LVL232:
	mov.n	a2, a10
	retw.n
.L110:
	.loc 1 496 0 discriminator 1
	call8	esp_log_timestamp
.LVL233:
	l32r	a11, .LC41
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC50
	movi.n	a10, 1
	call8	esp_log_write
.LVL234:
	.loc 1 497 0 discriminator 1
	call8	find_default_boot_partition
.LVL235:
	mov.n	a2, a10
	.loc 1 499 0 discriminator 1
	retw.n
.LFE24:
	.size	esp_ota_get_boot_partition, .-esp_ota_get_boot_partition
	.section	.rodata.str1.4
	.align	4
.LC51:
	.string	"start_from != NULL"
	.section	.text.esp_ota_get_next_update_partition,"ax",@progbits
	.literal_position
	.literal .LC52, .LC51
	.literal .LC53, __func__$5427
	.literal .LC54, .LC3
	.align	4
	.global	esp_ota_get_next_update_partition
	.type	esp_ota_get_next_update_partition, @function
esp_ota_get_next_update_partition:
.LFB26:
	.loc 1 530 0
.LVL236:
	entry	sp, 32
.LCFI13:
.LVL237:
	.loc 1 533 0
	bnez.n	a2, .L112
	.loc 1 534 0
	call8	esp_ota_get_running_partition
.LVL238:
	mov.n	a5, a10
.LVL239:
	j	.L113
.LVL240:
.L112:
	.loc 1 536 0
	mov.n	a10, a2
	call8	esp_partition_verify
.LVL241:
	mov.n	a5, a10
.LVL242:
.L113:
	.loc 1 538 0
	bnez.n	a5, .L119
	.loc 1 538 0 is_stmt 0 discriminator 1
	l32r	a13, .LC52
	l32r	a12, .LC53
	movi	a11, 0x21a
	l32r	a10, .LC54
	call8	__assert_func
.LVL243:
.L118:
.LBB12:
.LBB13:
	.loc 1 553 0 is_stmt 1
	movi.n	a12, 0
	mov.n	a11, a3
	mov.n	a10, a12
	call8	esp_partition_find_first
.LVL244:
	.loc 1 554 0
	beqz.n	a10, .L115
	.loc 1 558 0
	bnez.n	a2, .L116
	.loc 1 561 0
	mov.n	a2, a10
.LVL245:
.L116:
	.loc 1 564 0
	beq	a5, a10, .L121
	.loc 1 568 0
	beqz.n	a4, .L115
	j	.L122
.L121:
	.loc 1 566 0
	movi.n	a4, 1
.LVL246:
.L115:
.LBE13:
	.loc 1 552 0
	addi.n	a3, a3, 1
.LVL247:
	j	.L114
.LVL248:
.L119:
.LBE12:
	movi.n	a3, 0x10
	movi.n	a4, 0
	mov.n	a2, a4
.LVL249:
.L114:
.LBB15:
	.loc 1 550 0 discriminator 1
	bnei	a3, 32, .L118
	retw.n
.LVL250:
.L122:
.LBB14:
	.loc 1 569 0
	mov.n	a2, a10
.LVL251:
.LBE14:
.LBE15:
	.loc 1 575 0
	retw.n
.LFE26:
	.size	esp_ota_get_next_update_partition, .-esp_ota_get_next_update_partition
	.section	.rodata.__func__$5427,"a",@progbits
	.align	4
	.type	__func__$5427, @object
	.size	__func__$5427, 34
__func__$5427:
	.string	"esp_ota_get_next_update_partition"
	.section	.rodata.__func__$5416,"a",@progbits
	.align	4
	.type	__func__$5416, @object
	.size	__func__$5416, 30
__func__$5416:
	.string	"esp_ota_get_running_partition"
	.section	.bss.ota_data_map$5409,"aw",@nobits
	.align	4
	.type	ota_data_map$5409, @object
	.size	ota_data_map$5409, 4
ota_data_map$5409:
	.zero	4
	.section	.rodata.__func__$5367,"a",@progbits
	.align	4
	.type	__func__$5367, @object
	.size	__func__$5367, 24
__func__$5367:
	.string	"get_ota_partition_count"
	.section	.bss.ota_data_map$5379,"aw",@nobits
	.align	4
	.type	ota_data_map$5379, @object
	.size	ota_data_map$5379, 4
ota_data_map$5379:
	.zero	4
	.section	.rodata.__func__$5335,"a",@progbits
	.align	4
	.type	__func__$5335, @object
	.size	__func__$5335, 14
__func__$5335:
	.string	"esp_ota_write"
	.section	.bss.s_ota_select,"aw",@nobits
	.align	4
	.type	s_ota_select, @object
	.size	s_ota_select, 64
s_ota_select:
	.zero	64
	.section	.bss.s_ota_ops_last_handle,"aw",@nobits
	.align	4
	.type	s_ota_ops_last_handle, @object
	.size	s_ota_ops_last_handle, 4
s_ota_ops_last_handle:
	.zero	4
	.section	.bss.s_ota_ops_entries_head,"aw",@nobits
	.align	4
	.type	s_ota_ops_entries_head, @object
	.size	s_ota_ops_entries_head, 4
s_ota_ops_entries_head:
	.zero	4
	.comm	esp_image_spi_freq_t,4,4
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
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI0-.LFB13
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
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI2-.LFB23
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI3-.LFB17
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
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI6-.LFB21
	.byte	0xe
	.uleb128 0x30
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
	.uleb128 0x20
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
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI9-.LFB15
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI10-.LFB16
	.byte	0xe
	.uleb128 0x110
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI11-.LFB22
	.byte	0xe
	.uleb128 0x110
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
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI13-.LFB26
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE26:
	.text
.Letext0:
	.file 3 "C:/esp/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "C:/esp/esp-idf/components/newlib/include/stdint.h"
	.file 5 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 6 "C:/esp/esp-idf/components/esp32/include/esp_err.h"
	.file 7 "C:/esp/esp-idf/components/spi_flash/include/esp_spi_flash.h"
	.file 8 "C:/esp/esp-idf/components/spi_flash/include/esp_partition.h"
	.file 9 "C:/esp/esp-idf/components/esp32/include/esp_flash_data_types.h"
	.file 10 "C:/esp/esp-idf/components/bootloader_support/include/esp_image_format.h"
	.file 11 "C:/esp/esp-idf/components/app_update/include/esp_ota_ops.h"
	.file 12 "C:/esp/esp-idf/components/log/include/esp_log.h"
	.file 13 "C:/esp/esp-idf/components/newlib/include/assert.h"
	.file 14 "C:/esp/esp-idf/components/esp32/include/rom/crc.h"
	.file 15 "C:/esp/esp-idf/components/newlib/include/stdlib.h"
	.file 16 "C:/esp/esp-idf/components/newlib/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1553
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF175
	.byte	0xc
	.4byte	.LASF176
	.4byte	.LASF177
	.4byte	.Ldebug_ranges0+0x60
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x3
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
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x3
	.byte	0x16
	.4byte	0x50
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x3
	.byte	0x19
	.4byte	0x62
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x3
	.byte	0x1a
	.4byte	0x74
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x4
	.byte	0x15
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x4
	.byte	0x21
	.4byte	0x45
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x4
	.byte	0x2c
	.4byte	0x57
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x4
	.byte	0x2d
	.4byte	0x69
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x5
	.byte	0xd8
	.4byte	0x74
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF16
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF17
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF18
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF19
	.uleb128 0x5
	.byte	0x4
	.4byte	0xe2
	.uleb128 0x6
	.4byte	0xd5
	.uleb128 0x5
	.byte	0x4
	.4byte	0xed
	.uleb128 0x7
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x6
	.byte	0x18
	.4byte	0x9f
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF21
	.uleb128 0x8
	.4byte	0x89
	.4byte	0x110
	.uleb128 0x9
	.4byte	0xc7
	.byte	0xf
	.byte	0
	.uleb128 0x6
	.4byte	0xdc
	.uleb128 0xa
	.byte	0x4
	.4byte	0x74
	.byte	0x7
	.byte	0x91
	.4byte	0x12e
	.uleb128 0xb
	.4byte	.LASF22
	.byte	0
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x7
	.byte	0x94
	.4byte	0x115
	.uleb128 0xa
	.byte	0x4
	.4byte	0x74
	.byte	0x8
	.byte	0x26
	.4byte	0x152
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x8
	.byte	0x29
	.4byte	0x139
	.uleb128 0xa
	.byte	0x4
	.4byte	0x74
	.byte	0x8
	.byte	0x2f
	.4byte	0x212
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x11
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x12
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0x13
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x15
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0x16
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x17
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0x19
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0x1a
	.uleb128 0xb
	.4byte	.LASF41
	.byte	0x1b
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF43
	.byte	0x1d
	.uleb128 0xb
	.4byte	.LASF44
	.byte	0x1e
	.uleb128 0xb
	.4byte	.LASF45
	.byte	0x1f
	.uleb128 0xb
	.4byte	.LASF46
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF47
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF48
	.byte	0
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF50
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF51
	.byte	0x3
	.uleb128 0xb
	.4byte	.LASF52
	.byte	0x80
	.uleb128 0xb
	.4byte	.LASF53
	.byte	0x81
	.uleb128 0xb
	.4byte	.LASF54
	.byte	0x82
	.uleb128 0xb
	.4byte	.LASF55
	.byte	0xff
	.byte	0
	.uleb128 0x3
	.4byte	.LASF56
	.byte	0x8
	.byte	0x4f
	.4byte	0x15d
	.uleb128 0x3
	.4byte	.LASF57
	.byte	0x8
	.byte	0x59
	.4byte	0x228
	.uleb128 0x5
	.byte	0x4
	.4byte	0x22e
	.uleb128 0xc
	.4byte	.LASF178
	.uleb128 0xd
	.byte	0x24
	.byte	0x8
	.byte	0x62
	.4byte	0x284
	.uleb128 0xe
	.4byte	.LASF58
	.byte	0x8
	.byte	0x63
	.4byte	0x152
	.byte	0
	.uleb128 0xe
	.4byte	.LASF59
	.byte	0x8
	.byte	0x64
	.4byte	0x212
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF60
	.byte	0x8
	.byte	0x65
	.4byte	0xaa
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF61
	.byte	0x8
	.byte	0x66
	.4byte	0xaa
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF62
	.byte	0x8
	.byte	0x67
	.4byte	0x284
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF63
	.byte	0x8
	.byte	0x68
	.4byte	0xf9
	.byte	0x21
	.byte	0
	.uleb128 0x8
	.4byte	0xd5
	.4byte	0x294
	.uleb128 0x9
	.4byte	0xc7
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.4byte	.LASF64
	.byte	0x8
	.byte	0x69
	.4byte	0x233
	.uleb128 0x8
	.4byte	0x89
	.4byte	0x2af
	.uleb128 0x9
	.4byte	0xc7
	.byte	0x17
	.byte	0
	.uleb128 0xd
	.byte	0x8
	.byte	0x9
	.byte	0x24
	.4byte	0x2d0
	.uleb128 0xe
	.4byte	.LASF65
	.byte	0x9
	.byte	0x25
	.4byte	0xaa
	.byte	0
	.uleb128 0xe
	.4byte	.LASF61
	.byte	0x9
	.byte	0x26
	.4byte	0xaa
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF66
	.byte	0x9
	.byte	0x27
	.4byte	0x2af
	.uleb128 0xa
	.byte	0x4
	.4byte	0x74
	.byte	0xa
	.byte	0x27
	.4byte	0x300
	.uleb128 0xb
	.4byte	.LASF67
	.byte	0
	.uleb128 0xb
	.4byte	.LASF68
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF69
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF70
	.byte	0xf
	.byte	0
	.uleb128 0xd
	.byte	0x18
	.byte	0xa
	.byte	0x3b
	.4byte	0x387
	.uleb128 0xe
	.4byte	.LASF71
	.byte	0xa
	.byte	0x3c
	.4byte	0x89
	.byte	0
	.uleb128 0xe
	.4byte	.LASF72
	.byte	0xa
	.byte	0x3d
	.4byte	0x89
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF73
	.byte	0xa
	.byte	0x3f
	.4byte	0x89
	.byte	0x2
	.uleb128 0xf
	.4byte	.LASF74
	.byte	0xa
	.byte	0x41
	.4byte	0x89
	.byte	0x1
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0xf
	.4byte	.LASF75
	.byte	0xa
	.byte	0x43
	.4byte	0x89
	.byte	0x1
	.byte	0x4
	.byte	0
	.byte	0x3
	.uleb128 0xe
	.4byte	.LASF76
	.byte	0xa
	.byte	0x44
	.4byte	0xaa
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF77
	.byte	0xa
	.byte	0x47
	.4byte	0x89
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF78
	.byte	0xa
	.byte	0x49
	.4byte	0x387
	.byte	0x9
	.uleb128 0xe
	.4byte	.LASF79
	.byte	0xa
	.byte	0x4b
	.4byte	0x397
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF80
	.byte	0xa
	.byte	0x4f
	.4byte	0x89
	.byte	0x17
	.byte	0
	.uleb128 0x8
	.4byte	0x89
	.4byte	0x397
	.uleb128 0x9
	.4byte	0xc7
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.4byte	0x89
	.4byte	0x3a7
	.uleb128 0x9
	.4byte	0xc7
	.byte	0xa
	.byte	0
	.uleb128 0x3
	.4byte	.LASF81
	.byte	0xa
	.byte	0x50
	.4byte	0x300
	.uleb128 0xd
	.byte	0x8
	.byte	0xa
	.byte	0x55
	.4byte	0x3d3
	.uleb128 0xe
	.4byte	.LASF82
	.byte	0xa
	.byte	0x56
	.4byte	0xaa
	.byte	0
	.uleb128 0xe
	.4byte	.LASF83
	.byte	0xa
	.byte	0x57
	.4byte	0xaa
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF84
	.byte	0xa
	.byte	0x58
	.4byte	0x3b2
	.uleb128 0xd
	.byte	0xe0
	.byte	0xa
	.byte	0x5d
	.4byte	0x423
	.uleb128 0xe
	.4byte	.LASF85
	.byte	0xa
	.byte	0x5e
	.4byte	0xaa
	.byte	0
	.uleb128 0xe
	.4byte	.LASF86
	.byte	0xa
	.byte	0x5f
	.4byte	0x3a7
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF87
	.byte	0xa
	.byte	0x60
	.4byte	0x423
	.byte	0x1c
	.uleb128 0xe
	.4byte	.LASF88
	.byte	0xa
	.byte	0x61
	.4byte	0x433
	.byte	0x9c
	.uleb128 0xe
	.4byte	.LASF89
	.byte	0xa
	.byte	0x62
	.4byte	0xaa
	.byte	0xdc
	.byte	0
	.uleb128 0x8
	.4byte	0x3d3
	.4byte	0x433
	.uleb128 0x9
	.4byte	0xc7
	.byte	0xf
	.byte	0
	.uleb128 0x8
	.4byte	0xaa
	.4byte	0x443
	.uleb128 0x9
	.4byte	0xc7
	.byte	0xf
	.byte	0
	.uleb128 0x3
	.4byte	.LASF90
	.byte	0xa
	.byte	0x63
	.4byte	0x3de
	.uleb128 0xa
	.byte	0x4
	.4byte	0x74
	.byte	0xa
	.byte	0x66
	.4byte	0x467
	.uleb128 0xb
	.4byte	.LASF91
	.byte	0
	.uleb128 0xb
	.4byte	.LASF92
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF93
	.byte	0xb
	.byte	0x2b
	.4byte	0xaa
	.uleb128 0xa
	.byte	0x4
	.4byte	0x74
	.byte	0xc
	.byte	0x1f
	.4byte	0x4a3
	.uleb128 0xb
	.4byte	.LASF94
	.byte	0
	.uleb128 0xb
	.4byte	.LASF95
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF96
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF97
	.byte	0x3
	.uleb128 0xb
	.4byte	.LASF98
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF99
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF100
	.byte	0xc
	.byte	0x26
	.4byte	0x472
	.uleb128 0xd
	.byte	0x8
	.byte	0x1
	.byte	0x33
	.4byte	0x4cf
	.uleb128 0xe
	.4byte	.LASF101
	.byte	0x1
	.byte	0x33
	.4byte	0x530
	.byte	0
	.uleb128 0xe
	.4byte	.LASF102
	.byte	0x1
	.byte	0x33
	.4byte	0x536
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.4byte	.LASF114
	.byte	0x2c
	.byte	0x1
	.byte	0x2c
	.4byte	0x530
	.uleb128 0xe
	.4byte	.LASF103
	.byte	0x1
	.byte	0x2d
	.4byte	0xaa
	.byte	0
	.uleb128 0xe
	.4byte	.LASF104
	.byte	0x1
	.byte	0x2e
	.4byte	0x53c
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF105
	.byte	0x1
	.byte	0x2f
	.4byte	0xaa
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF106
	.byte	0x1
	.byte	0x30
	.4byte	0xaa
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF107
	.byte	0x1
	.byte	0x31
	.4byte	0x89
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF108
	.byte	0x1
	.byte	0x32
	.4byte	0x100
	.byte	0x11
	.uleb128 0xe
	.4byte	.LASF109
	.byte	0x1
	.byte	0x33
	.4byte	0x4ae
	.byte	0x24
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x4cf
	.uleb128 0x5
	.byte	0x4
	.4byte	0x530
	.uleb128 0x5
	.byte	0x4
	.4byte	0x542
	.uleb128 0x6
	.4byte	0x294
	.uleb128 0x3
	.4byte	.LASF110
	.byte	0x1
	.byte	0x34
	.4byte	0x4cf
	.uleb128 0xd
	.byte	0x20
	.byte	0x1
	.byte	0x38
	.4byte	0x57f
	.uleb128 0xe
	.4byte	.LASF111
	.byte	0x1
	.byte	0x39
	.4byte	0xaa
	.byte	0
	.uleb128 0xe
	.4byte	.LASF112
	.byte	0x1
	.byte	0x3a
	.4byte	0x29f
	.byte	0x4
	.uleb128 0x11
	.string	"crc"
	.byte	0x1
	.byte	0x3b
	.4byte	0xaa
	.byte	0x1c
	.byte	0
	.uleb128 0x3
	.4byte	.LASF113
	.byte	0x1
	.byte	0x3c
	.4byte	0x552
	.uleb128 0x10
	.4byte	.LASF115
	.byte	0x4
	.byte	0x1
	.byte	0x3e
	.4byte	0x5a3
	.uleb128 0xe
	.4byte	.LASF116
	.byte	0x1
	.byte	0x3e
	.4byte	0x530
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF179
	.byte	0x2
	.byte	0x24
	.4byte	0xf9
	.byte	0x3
	.4byte	0x5ca
	.uleb128 0x13
	.4byte	.LASF117
	.byte	0x2
	.byte	0x25
	.4byte	0xaa
	.uleb128 0x13
	.4byte	.LASF118
	.byte	0x2
	.byte	0x27
	.4byte	0xf9
	.byte	0
	.uleb128 0x14
	.4byte	.LASF119
	.byte	0x1
	.byte	0x47
	.4byte	0xf9
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5f1
	.uleb128 0x15
	.string	"p"
	.byte	0x1
	.byte	0x47
	.4byte	0x53c
	.4byte	.LLST0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF120
	.byte	0x1
	.2byte	0x11d
	.4byte	0x89
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x675
	.uleb128 0x17
	.4byte	.LASF123
	.byte	0x1
	.2byte	0x11f
	.4byte	0x94
	.4byte	.LLST1
	.uleb128 0x18
	.4byte	.LASF121
	.4byte	0x685
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5367
	.uleb128 0x19
	.4byte	.LVL8
	.4byte	0x146f
	.4byte	0x65a
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x121
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5367
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL11
	.4byte	0x147a
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 16
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0xd5
	.4byte	0x685
	.uleb128 0x9
	.4byte	0xc7
	.byte	0x17
	.byte	0
	.uleb128 0x6
	.4byte	0x675
	.uleb128 0x16
	.4byte	.LASF122
	.byte	0x1
	.2byte	0x1a0
	.4byte	0x53c
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x755
	.uleb128 0x17
	.4byte	.LASF124
	.byte	0x1
	.2byte	0x1a5
	.4byte	0x53c
	.4byte	.LLST2
	.uleb128 0x1c
	.4byte	.Ldebug_ranges0+0
	.4byte	0x6e6
	.uleb128 0x1d
	.string	"s"
	.byte	0x1
	.2byte	0x1ab
	.4byte	0x212
	.4byte	.LLST3
	.uleb128 0x1b
	.4byte	.LVL16
	.4byte	0x147a
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL13
	.4byte	0x147a
	.4byte	0x703
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x19
	.4byte	.LVL19
	.4byte	0x147a
	.4byte	0x721
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL20
	.4byte	0x1485
	.uleb128 0x1b
	.4byte	.LVL21
	.4byte	0x1490
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x101
	.4byte	0xaa
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x799
	.uleb128 0x1f
	.string	"s"
	.byte	0x1
	.2byte	0x101
	.4byte	0x799
	.4byte	.LLST4
	.uleb128 0x1b
	.4byte	.LVL29
	.4byte	0x149b
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x79f
	.uleb128 0x6
	.4byte	0x57f
	.uleb128 0x16
	.4byte	.LASF126
	.byte	0x1
	.2byte	0x106
	.4byte	0xf9
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7dd
	.uleb128 0x1f
	.string	"s"
	.byte	0x1
	.2byte	0x106
	.4byte	0x799
	.4byte	.LLST5
	.uleb128 0x1b
	.4byte	.LVL32
	.4byte	0x755
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF127
	.byte	0x1
	.2byte	0x10b
	.4byte	0xee
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x88d
	.uleb128 0x1f
	.string	"seq"
	.byte	0x1
	.2byte	0x10b
	.4byte	0xaa
	.4byte	.LLST6
	.uleb128 0x20
	.4byte	.LASF128
	.byte	0x1
	.2byte	0x10b
	.4byte	0x89
	.4byte	.LLST7
	.uleb128 0x21
	.4byte	.LASF129
	.byte	0x1
	.2byte	0x10b
	.4byte	0x53c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1d
	.string	"ret"
	.byte	0x1
	.2byte	0x10d
	.4byte	0xee
	.4byte	.LLST8
	.uleb128 0x19
	.4byte	.LVL39
	.4byte	0x755
	.4byte	0x849
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL41
	.4byte	0x14a6
	.4byte	0x86a
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1000
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL44
	.4byte	0x14b2
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF130
	.byte	0x1
	.2byte	0x127
	.4byte	0xee
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa9c
	.uleb128 0x20
	.4byte	.LASF59
	.byte	0x1
	.2byte	0x127
	.4byte	0x212
	.4byte	.LLST9
	.uleb128 0x1d
	.string	"ret"
	.byte	0x1
	.2byte	0x129
	.4byte	0xee
	.4byte	.LLST10
	.uleb128 0x17
	.4byte	.LASF131
	.byte	0x1
	.2byte	0x12a
	.4byte	0x53c
	.4byte	.LLST11
	.uleb128 0x17
	.4byte	.LASF123
	.byte	0x1
	.2byte	0x12b
	.4byte	0x94
	.4byte	.LLST12
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.2byte	0x12c
	.4byte	0xaa
	.4byte	.LLST13
	.uleb128 0x1d
	.string	"seq"
	.byte	0x1
	.2byte	0x12d
	.4byte	0xaa
	.4byte	.LLST14
	.uleb128 0x22
	.4byte	.LASF132
	.byte	0x1
	.2byte	0x12e
	.4byte	0x12e
	.uleb128 0x5
	.byte	0x3
	.4byte	ota_data_map$5379
	.uleb128 0x22
	.4byte	.LASF124
	.byte	0x1
	.2byte	0x12f
	.4byte	0xe7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x19
	.4byte	.LVL50
	.4byte	0x147a
	.4byte	0x943
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL52
	.4byte	0x5f1
	.uleb128 0x19
	.4byte	.LVL55
	.4byte	0x14bd
	.4byte	0x979
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	ota_data_map$5379
	.byte	0
	.uleb128 0x19
	.4byte	.LVL57
	.4byte	0x14c9
	.4byte	0x999
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL58
	.4byte	0x14c9
	.4byte	0x9bd
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_ota_select+32
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x76
	.sleb128 4096
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL59
	.4byte	0x14d2
	.uleb128 0x19
	.4byte	.LVL60
	.4byte	0x7a4
	.4byte	0x9da
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL61
	.4byte	0x7a4
	.4byte	0x9f1
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_ota_select+32
	.byte	0
	.uleb128 0x19
	.4byte	.LVL66
	.4byte	0x7dd
	.4byte	0xa0a
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL69
	.4byte	0x7dd
	.4byte	0xa23
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL71
	.4byte	0x7a4
	.4byte	0xa37
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL76
	.4byte	0x7dd
	.4byte	0xa50
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL78
	.4byte	0x7a4
	.4byte	0xa67
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_ota_select+32
	.byte	0
	.uleb128 0x19
	.4byte	.LVL83
	.4byte	0x7dd
	.4byte	0xa80
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL85
	.4byte	0x7dd
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 1
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x1f6
	.4byte	0x53c
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbd3
	.uleb128 0x22
	.4byte	.LASF133
	.byte	0x1
	.2byte	0x1fb
	.4byte	0xb5
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x18
	.4byte	.LASF121
	.4byte	0xbe3
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5416
	.uleb128 0x24
	.string	"it"
	.byte	0x1
	.2byte	0x1ff
	.4byte	0x21d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x25
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.4byte	0xb34
	.uleb128 0x1d
	.string	"p"
	.byte	0x1
	.2byte	0x205
	.4byte	0x53c
	.4byte	.LLST15
	.uleb128 0x19
	.4byte	.LVL96
	.4byte	0x14dd
	.4byte	0xb0f
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL98
	.4byte	0x14e8
	.4byte	0xb23
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL99
	.4byte	0x14f3
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL90
	.4byte	0x14fe
	.4byte	0xb4b
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	esp_ota_get_running_partition
	.byte	0
	.uleb128 0x19
	.4byte	.LVL92
	.4byte	0x146f
	.4byte	0xb7b
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1fd
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5416
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.byte	0
	.uleb128 0x19
	.4byte	.LVL93
	.4byte	0x1509
	.4byte	0xb99
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xff
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x19
	.4byte	.LVL95
	.4byte	0x146f
	.4byte	0xbc9
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x202
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5416
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC19
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL101
	.4byte	0x1514
	.byte	0
	.uleb128 0x8
	.4byte	0xd5
	.4byte	0xbe3
	.uleb128 0x9
	.4byte	0xc7
	.byte	0x1d
	.byte	0
	.uleb128 0x6
	.4byte	0xbd3
	.uleb128 0x26
	.4byte	.LASF135
	.byte	0x1
	.byte	0x4f
	.4byte	0xee
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xccf
	.uleb128 0x27
	.4byte	.LASF136
	.byte	0x1
	.byte	0x4f
	.4byte	0x53c
	.4byte	.LLST16
	.uleb128 0x27
	.4byte	.LASF137
	.byte	0x1
	.byte	0x4f
	.4byte	0xb5
	.4byte	.LLST17
	.uleb128 0x28
	.4byte	.LASF138
	.byte	0x1
	.byte	0x4f
	.4byte	0xccf
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x29
	.4byte	.LASF139
	.byte	0x1
	.byte	0x51
	.4byte	0xcd5
	.4byte	.LLST18
	.uleb128 0x2a
	.string	"ret"
	.byte	0x1
	.byte	0x52
	.4byte	0xee
	.4byte	.LLST19
	.uleb128 0x19
	.4byte	.LVL104
	.4byte	0x151f
	.4byte	0xc5e
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL106
	.4byte	0x5ca
	.4byte	0xc72
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL107
	.4byte	0xa9c
	.uleb128 0x19
	.4byte	.LVL108
	.4byte	0x14a6
	.4byte	0xc94
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x19
	.4byte	.LVL110
	.4byte	0x14a6
	.4byte	0xcb9
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x8
	.byte	0x73
	.sleb128 0
	.byte	0x3c
	.byte	0x25
	.byte	0x23
	.uleb128 0x1
	.byte	0x3c
	.byte	0x24
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL112
	.4byte	0x152a
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x2c
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x467
	.uleb128 0x5
	.byte	0x4
	.4byte	0x547
	.uleb128 0x26
	.4byte	.LASF140
	.byte	0x1
	.byte	0x83
	.4byte	0xee
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xef7
	.uleb128 0x27
	.4byte	.LASF103
	.byte	0x1
	.byte	0x83
	.4byte	0x467
	.4byte	.LLST20
	.uleb128 0x27
	.4byte	.LASF141
	.byte	0x1
	.byte	0x83
	.4byte	0xe7
	.4byte	.LLST21
	.uleb128 0x27
	.4byte	.LASF61
	.byte	0x1
	.byte	0x83
	.4byte	0xb5
	.4byte	.LLST22
	.uleb128 0x2b
	.4byte	.LASF142
	.byte	0x1
	.byte	0x85
	.4byte	0xef7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2a
	.string	"ret"
	.byte	0x1
	.byte	0x86
	.4byte	0xee
	.4byte	.LLST23
	.uleb128 0x2c
	.string	"it"
	.byte	0x1
	.byte	0x87
	.4byte	0xcd5
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x18
	.4byte	.LASF121
	.4byte	0xf12
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5335
	.uleb128 0x2d
	.4byte	0x5a3
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.byte	0x1
	.byte	0x99
	.4byte	0xd88
	.uleb128 0x2e
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.uleb128 0x2f
	.4byte	0x5b3
	.4byte	.LLST24
	.uleb128 0x2f
	.4byte	0x5be
	.4byte	.LLST25
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0xe0c
	.uleb128 0x29
	.4byte	.LASF143
	.byte	0x1
	.byte	0x9b
	.4byte	0xb5
	.4byte	.LLST26
	.uleb128 0x19
	.4byte	.LVL148
	.4byte	0x14c9
	.4byte	0xdba
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL149
	.4byte	0x14b2
	.4byte	0xdd3
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x19
	.4byte	.LVL151
	.4byte	0x1535
	.4byte	0xdf2
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xff
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL155
	.4byte	0x14c9
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 17
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x73
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL132
	.4byte	0x1485
	.uleb128 0x19
	.4byte	.LVL133
	.4byte	0x1490
	.4byte	0xe43
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC26
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.uleb128 0x19
	.4byte	.LVL138
	.4byte	0x146f
	.4byte	0xe72
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x92
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5335
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC29
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL139
	.4byte	0x1485
	.uleb128 0x19
	.4byte	.LVL140
	.4byte	0x1490
	.4byte	0xea9
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC33
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.uleb128 0x19
	.4byte	.LVL156
	.4byte	0x14b2
	.4byte	0xec3
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL160
	.4byte	0x1485
	.uleb128 0x1b
	.4byte	.LVL161
	.4byte	0x1490
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC36
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xefd
	.uleb128 0x6
	.4byte	0x89
	.uleb128 0x8
	.4byte	0xd5
	.4byte	0xf12
	.uleb128 0x9
	.4byte	0xc7
	.byte	0xd
	.byte	0
	.uleb128 0x6
	.4byte	0xf02
	.uleb128 0x26
	.4byte	.LASF144
	.byte	0x1
	.byte	0xc6
	.4byte	0xee
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfcc
	.uleb128 0x27
	.4byte	.LASF103
	.byte	0x1
	.byte	0xc6
	.4byte	0x467
	.4byte	.LLST27
	.uleb128 0x2c
	.string	"it"
	.byte	0x1
	.byte	0xc8
	.4byte	0xcd5
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2a
	.string	"ret"
	.byte	0x1
	.byte	0xc9
	.4byte	0xee
	.4byte	.LLST28
	.uleb128 0x30
	.4byte	.LASF180
	.byte	0x1
	.byte	0xfb
	.4byte	.L86
	.uleb128 0x2b
	.4byte	.LASF141
	.byte	0x1
	.byte	0xe8
	.4byte	0x443
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x2b
	.4byte	.LASF145
	.byte	0x1
	.byte	0xe9
	.4byte	0xfcc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x19
	.4byte	.LVL173
	.4byte	0x14b2
	.4byte	0xf9b
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 17
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x19
	.4byte	.LVL177
	.4byte	0x1540
	.4byte	0xfbb
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL183
	.4byte	0x154b
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	0x2d0
	.uleb128 0x23
	.4byte	.LASF146
	.byte	0x1
	.2byte	0x173
	.4byte	0xee
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10a1
	.uleb128 0x20
	.4byte	.LASF136
	.byte	0x1
	.2byte	0x173
	.4byte	0x53c
	.4byte	.LLST29
	.uleb128 0x17
	.4byte	.LASF131
	.byte	0x1
	.2byte	0x175
	.4byte	0x53c
	.4byte	.LLST30
	.uleb128 0x22
	.4byte	.LASF141
	.byte	0x1
	.2byte	0x17a
	.4byte	0x443
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x22
	.4byte	.LASF145
	.byte	0x1
	.2byte	0x17b
	.4byte	0xfcc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x19
	.4byte	.LVL188
	.4byte	0x1540
	.4byte	0x104a
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.byte	0
	.uleb128 0x19
	.4byte	.LVL189
	.4byte	0x147a
	.4byte	0x1067
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x19
	.4byte	.LVL190
	.4byte	0x14a6
	.4byte	0x107a
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x19
	.4byte	.LVL193
	.4byte	0x147a
	.4byte	0x1097
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL195
	.4byte	0x88d
	.byte	0
	.uleb128 0x23
	.4byte	.LASF147
	.byte	0x1
	.2byte	0x1bc
	.4byte	0x53c
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x130b
	.uleb128 0x1d
	.string	"ret"
	.byte	0x1
	.2byte	0x1be
	.4byte	0xee
	.4byte	.LLST31
	.uleb128 0x17
	.4byte	.LASF131
	.byte	0x1
	.2byte	0x1bf
	.4byte	0x53c
	.4byte	.LLST32
	.uleb128 0x22
	.4byte	.LASF132
	.byte	0x1
	.2byte	0x1c0
	.4byte	0x12e
	.uleb128 0x5
	.byte	0x3
	.4byte	ota_data_map$5409
	.uleb128 0x22
	.4byte	.LASF124
	.byte	0x1
	.2byte	0x1c1
	.4byte	0xe7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.4byte	.LASF123
	.byte	0x1
	.2byte	0x1c2
	.4byte	0x94
	.4byte	.LLST33
	.uleb128 0x19
	.4byte	.LVL209
	.4byte	0x147a
	.4byte	0x1129
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL210
	.4byte	0x1485
	.uleb128 0x19
	.4byte	.LVL211
	.4byte	0x1490
	.4byte	0x1160
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC42
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.uleb128 0x19
	.4byte	.LVL213
	.4byte	0x14bd
	.4byte	0x1187
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	ota_data_map$5409
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL215
	.4byte	0x14d2
	.uleb128 0x1e
	.4byte	.LVL216
	.4byte	0x1485
	.uleb128 0x19
	.4byte	.LVL217
	.4byte	0x1490
	.4byte	0x11c7
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC45
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.uleb128 0x19
	.4byte	.LVL220
	.4byte	0x14c9
	.4byte	0x11e7
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL221
	.4byte	0x14c9
	.4byte	0x120b
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_ota_select+32
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x73
	.sleb128 4096
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL222
	.4byte	0x14d2
	.uleb128 0x1e
	.4byte	.LVL223
	.4byte	0x5f1
	.uleb128 0x1e
	.4byte	.LVL225
	.4byte	0x68a
	.uleb128 0x19
	.4byte	.LVL226
	.4byte	0x7a4
	.4byte	0x123d
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_ota_select
	.byte	0
	.uleb128 0x19
	.4byte	.LVL227
	.4byte	0x7a4
	.4byte	0x1254
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_ota_select+32
	.byte	0
	.uleb128 0x19
	.4byte	.LVL228
	.4byte	0x147a
	.4byte	0x126c
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x19
	.4byte	.LVL229
	.4byte	0x7a4
	.4byte	0x1283
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_ota_select
	.byte	0
	.uleb128 0x19
	.4byte	.LVL230
	.4byte	0x147a
	.4byte	0x129b
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x19
	.4byte	.LVL231
	.4byte	0x7a4
	.4byte	0x12b2
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_ota_select+32
	.byte	0
	.uleb128 0x19
	.4byte	.LVL232
	.4byte	0x147a
	.4byte	0x12ca
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL233
	.4byte	0x1485
	.uleb128 0x19
	.4byte	.LVL234
	.4byte	0x1490
	.4byte	0x1301
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC49
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL235
	.4byte	0x68a
	.byte	0
	.uleb128 0x23
	.4byte	.LASF148
	.byte	0x1
	.2byte	0x211
	.4byte	0x53c
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x13f4
	.uleb128 0x20
	.4byte	.LASF149
	.byte	0x1
	.2byte	0x211
	.4byte	0x53c
	.4byte	.LLST34
	.uleb128 0x17
	.4byte	.LASF150
	.byte	0x1
	.2byte	0x213
	.4byte	0x53c
	.4byte	.LLST35
	.uleb128 0x17
	.4byte	.LASF151
	.byte	0x1
	.2byte	0x214
	.4byte	0xf9
	.4byte	.LLST36
	.uleb128 0x18
	.4byte	.LASF121
	.4byte	0x1404
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5427
	.uleb128 0x1c
	.4byte	.Ldebug_ranges0+0x30
	.4byte	0x13aa
	.uleb128 0x1d
	.string	"t"
	.byte	0x1
	.2byte	0x226
	.4byte	0x212
	.4byte	.LLST37
	.uleb128 0x31
	.4byte	.Ldebug_ranges0+0x48
	.uleb128 0x1d
	.string	"p"
	.byte	0x1
	.2byte	0x229
	.4byte	0x53c
	.4byte	.LLST38
	.uleb128 0x1b
	.4byte	.LVL244
	.4byte	0x147a
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL238
	.4byte	0xa9c
	.uleb128 0x19
	.4byte	.LVL241
	.4byte	0x151f
	.4byte	0x13c7
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL243
	.4byte	0x146f
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x21a
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5427
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC51
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0xd5
	.4byte	0x1404
	.uleb128 0x9
	.4byte	0xc7
	.byte	0x21
	.byte	0
	.uleb128 0x6
	.4byte	0x13f4
	.uleb128 0x2b
	.4byte	.LASF152
	.byte	0x1
	.byte	0x3e
	.4byte	0x58a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_ota_ops_entries_head
	.uleb128 0x2b
	.4byte	.LASF153
	.byte	0x1
	.byte	0x41
	.4byte	0xaa
	.uleb128 0x5
	.byte	0x3
	.4byte	s_ota_ops_last_handle
	.uleb128 0x8
	.4byte	0x57f
	.4byte	0x143b
	.uleb128 0x9
	.4byte	0xc7
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF154
	.byte	0x1
	.byte	0x42
	.4byte	0x142b
	.uleb128 0x5
	.byte	0x3
	.4byte	s_ota_select
	.uleb128 0x2c
	.string	"TAG"
	.byte	0x1
	.byte	0x44
	.4byte	0x110
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC5
	.byte	0x9f
	.uleb128 0x32
	.4byte	.LASF181
	.byte	0xa
	.byte	0x2c
	.4byte	0x2db
	.uleb128 0x5
	.byte	0x3
	.4byte	esp_image_spi_freq_t
	.uleb128 0x33
	.4byte	.LASF155
	.4byte	.LASF155
	.byte	0xd
	.byte	0x29
	.uleb128 0x33
	.4byte	.LASF156
	.4byte	.LASF156
	.byte	0x8
	.byte	0x89
	.uleb128 0x33
	.4byte	.LASF157
	.4byte	.LASF157
	.byte	0xc
	.byte	0x4c
	.uleb128 0x33
	.4byte	.LASF158
	.4byte	.LASF158
	.byte	0xc
	.byte	0x60
	.uleb128 0x33
	.4byte	.LASF159
	.4byte	.LASF159
	.byte	0xe
	.byte	0x33
	.uleb128 0x34
	.4byte	.LASF160
	.4byte	.LASF160
	.byte	0x8
	.2byte	0x101
	.uleb128 0x33
	.4byte	.LASF161
	.4byte	.LASF161
	.byte	0x8
	.byte	0xee
	.uleb128 0x34
	.4byte	.LASF162
	.4byte	.LASF162
	.byte	0x8
	.2byte	0x11d
	.uleb128 0x35
	.4byte	.LASF182
	.4byte	.LASF182
	.uleb128 0x33
	.4byte	.LASF163
	.4byte	.LASF163
	.byte	0x7
	.byte	0xd4
	.uleb128 0x33
	.4byte	.LASF164
	.4byte	.LASF164
	.byte	0x8
	.byte	0x93
	.uleb128 0x33
	.4byte	.LASF165
	.4byte	.LASF165
	.byte	0x8
	.byte	0xa6
	.uleb128 0x33
	.4byte	.LASF166
	.4byte	.LASF166
	.byte	0x8
	.byte	0x9e
	.uleb128 0x33
	.4byte	.LASF167
	.4byte	.LASF167
	.byte	0x7
	.byte	0xed
	.uleb128 0x33
	.4byte	.LASF168
	.4byte	.LASF168
	.byte	0x8
	.byte	0x7a
	.uleb128 0x33
	.4byte	.LASF169
	.4byte	.LASF169
	.byte	0xf
	.byte	0x47
	.uleb128 0x33
	.4byte	.LASF170
	.4byte	.LASF170
	.byte	0x8
	.byte	0xba
	.uleb128 0x33
	.4byte	.LASF171
	.4byte	.LASF171
	.byte	0xf
	.byte	0x57
	.uleb128 0x33
	.4byte	.LASF172
	.4byte	.LASF172
	.byte	0x10
	.byte	0x19
	.uleb128 0x33
	.4byte	.LASF173
	.4byte	.LASF173
	.byte	0xa
	.byte	0x85
	.uleb128 0x33
	.4byte	.LASF174
	.4byte	.LASF174
	.byte	0xf
	.byte	0x5a
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
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x38
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
	.uleb128 0x13
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x24
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x5
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
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL16
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL19
	.4byte	.LVL20-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL23
	.4byte	.LFE23
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL14
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL28
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL30
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL37
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL38
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL40
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
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL38
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL42
	.4byte	.LVL45
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LFE19
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL41
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL47
	.4byte	.LFE19
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL48
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL53
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
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL89
	.4byte	.LFE21
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL49
	.4byte	.LVL51
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL51
	.4byte	.LFE21
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL49
	.4byte	.LVL52
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL52
	.4byte	.LVL54
	.2byte	0x6
	.byte	0x7a
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL86
	.4byte	.LVL88
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL88
	.4byte	.LVL89
	.2byte	0x6
	.byte	0x7a
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL49
	.4byte	.LVL63
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL63
	.4byte	.LVL66-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL67
	.4byte	.LVL69-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL70
	.4byte	.LVL72
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL72
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL74
	.4byte	.LVL75
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL75
	.4byte	.LVL76-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL77
	.4byte	.LVL79
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL79
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL81
	.4byte	.LVL82
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL82
	.4byte	.LVL83-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL84
	.4byte	.LFE21
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL62
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL65
	.4byte	.LVL67
	.2byte	0x16
	.byte	0x76
	.sleb128 0
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x75
	.sleb128 0
	.byte	0x16
	.byte	0x14
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x2b
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL67
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL68
	.4byte	.LVL70
	.2byte	0x16
	.byte	0x76
	.sleb128 0
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x75
	.sleb128 0
	.byte	0x16
	.byte	0x14
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x2b
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL97
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL102
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL105
	.4byte	.LVL116
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL116
	.4byte	.LVL117
	.2byte	0x2
	.byte	0x7a
	.sleb128 4
	.4byte	.LVL118
	.4byte	.LVL119
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL119
	.4byte	.LVL120
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL120
	.4byte	.LVL121
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL121
	.4byte	.LVL122
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL122
	.4byte	.LVL123
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL124
	.4byte	.LVL125
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL126
	.4byte	.LVL127
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL128
	.4byte	.LVL129
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL102
	.4byte	.LVL113
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL113
	.4byte	.LVL114
	.2byte	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL114
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL115
	.4byte	.LVL118
	.2byte	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL118
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL112
	.4byte	.LVL118
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL128
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL103
	.4byte	.LVL108
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL108
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL109
	.4byte	.LVL110
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL110
	.4byte	.LVL111
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL118
	.4byte	.LVL126
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL126
	.4byte	.LVL128
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL130
	.4byte	.LVL134
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL134
	.4byte	.LVL135
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL135
	.4byte	.LVL137
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL137
	.4byte	.LVL158
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL158
	.4byte	.LVL162
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL162
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL130
	.4byte	.LVL152
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL152
	.4byte	.LVL158
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL158
	.4byte	.LVL167
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL167
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL130
	.4byte	.LVL153
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL153
	.4byte	.LVL157
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL158
	.4byte	.LFE15
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL149
	.4byte	.LVL150
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL156
	.4byte	.LVL158
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL165
	.4byte	.LFE15
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL141
	.4byte	.LVL148-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL141
	.4byte	.LVL142
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL142
	.4byte	.LVL143
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL144
	.4byte	.LVL146
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL147
	.4byte	.LVL153
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL163
	.4byte	.LVL164
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL165
	.4byte	.LVL166
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL168
	.4byte	.LVL172
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL172
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
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL169
	.4byte	.LVL174
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL174
	.4byte	.LVL175
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL175
	.4byte	.LVL176
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL176
	.4byte	.LVL178
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL178
	.4byte	.LVL179
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL179
	.4byte	.LVL180
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL180
	.4byte	.LVL181
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL181
	.4byte	.LVL184
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL184
	.4byte	.LFE16
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL186
	.4byte	.LVL191
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL191
	.4byte	.LVL192
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL192
	.4byte	.LVL196
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL196
	.4byte	.LVL197
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL197
	.4byte	.LVL198
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL198
	.4byte	.LVL199
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL199
	.4byte	.LVL200
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL200
	.4byte	.LVL201
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL201
	.4byte	.LVL202
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL202
	.4byte	.LVL203
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL203
	.4byte	.LVL204
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL204
	.4byte	.LVL205
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL205
	.4byte	.LVL206
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL206
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL187
	.4byte	.LVL189
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL189
	.4byte	.LVL190-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL192
	.4byte	.LVL193
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL193
	.4byte	.LVL194
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL197
	.4byte	.LVL203
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL203
	.4byte	.LFE22
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL213
	.4byte	.LVL214
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL218
	.4byte	.LVL219
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL207
	.4byte	.LVL209
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL209
	.4byte	.LVL210-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL212
	.4byte	.LVL213-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL208
	.4byte	.LVL224
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL224
	.4byte	.LFE24
	.2byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL236
	.4byte	.LVL239
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL239
	.4byte	.LVL240
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL240
	.4byte	.LVL242
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL242
	.4byte	.LFE26
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL237
	.4byte	.LVL243
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL243
	.4byte	.LVL248
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL248
	.4byte	.LVL249
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL249
	.4byte	.LVL251
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL237
	.4byte	.LVL243
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL243
	.4byte	.LVL248
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL248
	.4byte	.LVL249
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL249
	.4byte	.LFE26
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL243
	.4byte	.LVL248
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL249
	.4byte	.LFE26
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL244
	.4byte	.LVL248
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL250
	.4byte	.LFE26
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x84
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB5
	.4byte	.LBE5
	.4byte	.LBB6
	.4byte	.LBE6
	.4byte	0
	.4byte	0
	.4byte	.LBB10
	.4byte	.LBE10
	.4byte	.LBB11
	.4byte	.LBE11
	.4byte	0
	.4byte	0
	.4byte	.LBB12
	.4byte	.LBE12
	.4byte	.LBB15
	.4byte	.LBE15
	.4byte	0
	.4byte	0
	.4byte	.LBB13
	.4byte	.LBE13
	.4byte	.LBB14
	.4byte	.LBE14
	.4byte	0
	.4byte	0
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF149:
	.string	"start_from"
.LASF173:
	.string	"esp_image_load"
.LASF151:
	.string	"next_is_result"
.LASF15:
	.string	"size_t"
.LASF176:
	.string	"C:/esp/esp-idf/components/app_update/esp_ota_ops.c"
.LASF162:
	.string	"esp_partition_mmap"
.LASF138:
	.string	"out_handle"
.LASF3:
	.string	"__uint8_t"
.LASF112:
	.string	"seq_label"
.LASF140:
	.string	"esp_ota_write"
.LASF58:
	.string	"type"
.LASF134:
	.string	"esp_ota_get_running_partition"
.LASF76:
	.string	"entry_addr"
.LASF133:
	.string	"phys_offs"
.LASF136:
	.string	"partition"
.LASF10:
	.string	"long long unsigned int"
.LASF122:
	.string	"find_default_boot_partition"
.LASF141:
	.string	"data"
.LASF74:
	.string	"spi_speed"
.LASF6:
	.string	"__int32_t"
.LASF57:
	.string	"esp_partition_iterator_t"
.LASF89:
	.string	"image_len"
.LASF144:
	.string	"esp_ota_end"
.LASF174:
	.string	"free"
.LASF148:
	.string	"esp_ota_get_next_update_partition"
.LASF108:
	.string	"partial_data"
.LASF9:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF181:
	.string	"esp_image_spi_freq_t"
.LASF24:
	.string	"spi_flash_mmap_memory_t"
.LASF126:
	.string	"ota_select_valid"
.LASF66:
	.string	"esp_partition_pos_t"
.LASF55:
	.string	"ESP_PARTITION_SUBTYPE_ANY"
.LASF16:
	.string	"long int"
.LASF71:
	.string	"magic"
.LASF146:
	.string	"esp_ota_set_boot_partition"
.LASF158:
	.string	"esp_log_write"
.LASF182:
	.string	"memcpy"
.LASF119:
	.string	"is_ota_partition"
.LASF139:
	.string	"new_entry"
.LASF46:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_MAX"
.LASF12:
	.string	"uint16_t"
.LASF43:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_13"
.LASF92:
	.string	"ESP_IMAGE_VERIFY_SILENT"
.LASF117:
	.string	"flash_crypt_cnt"
.LASF150:
	.string	"default_ota"
.LASF147:
	.string	"esp_ota_get_boot_partition"
.LASF29:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_MIN"
.LASF7:
	.string	"__uint32_t"
.LASF65:
	.string	"offset"
.LASF79:
	.string	"reserved"
.LASF107:
	.string	"partial_bytes"
.LASF82:
	.string	"load_addr"
.LASF170:
	.string	"esp_partition_verify"
.LASF111:
	.string	"ota_seq"
.LASF153:
	.string	"s_ota_ops_last_handle"
.LASF8:
	.string	"unsigned int"
.LASF130:
	.string	"esp_rewrite_ota_data"
.LASF27:
	.string	"esp_partition_type_t"
.LASF18:
	.string	"long unsigned int"
.LASF56:
	.string	"esp_partition_subtype_t"
.LASF105:
	.string	"erased_size"
.LASF125:
	.string	"ota_select_crc"
.LASF53:
	.string	"ESP_PARTITION_SUBTYPE_DATA_FAT"
.LASF61:
	.string	"size"
.LASF5:
	.string	"short unsigned int"
.LASF131:
	.string	"find_partition"
.LASF52:
	.string	"ESP_PARTITION_SUBTYPE_DATA_ESPHTTPD"
.LASF166:
	.string	"esp_partition_next"
.LASF178:
	.string	"esp_partition_iterator_opaque_"
.LASF165:
	.string	"esp_partition_iterator_release"
.LASF106:
	.string	"wrote_size"
.LASF96:
	.string	"ESP_LOG_WARN"
.LASF62:
	.string	"label"
.LASF2:
	.string	"short int"
.LASF159:
	.string	"crc32_le"
.LASF114:
	.string	"ota_ops_entry_"
.LASF59:
	.string	"subtype"
.LASF167:
	.string	"spi_flash_cache2phys"
.LASF115:
	.string	"ota_ops_entries_head"
.LASF156:
	.string	"esp_partition_find_first"
.LASF135:
	.string	"esp_ota_begin"
.LASF97:
	.string	"ESP_LOG_INFO"
.LASF120:
	.string	"get_ota_partition_count"
.LASF67:
	.string	"ESP_IMAGE_SPI_SPEED_40M"
.LASF102:
	.string	"le_prev"
.LASF109:
	.string	"entries"
.LASF17:
	.string	"sizetype"
.LASF143:
	.string	"copy_len"
.LASF49:
	.string	"ESP_PARTITION_SUBTYPE_DATA_PHY"
.LASF60:
	.string	"address"
.LASF22:
	.string	"SPI_FLASH_MMAP_DATA"
.LASF80:
	.string	"hash_appended"
.LASF26:
	.string	"ESP_PARTITION_TYPE_DATA"
.LASF154:
	.string	"s_ota_select"
.LASF123:
	.string	"ota_app_count"
.LASF91:
	.string	"ESP_IMAGE_VERIFY"
.LASF100:
	.string	"esp_log_level_t"
.LASF23:
	.string	"SPI_FLASH_MMAP_INST"
.LASF180:
	.string	"cleanup"
.LASF101:
	.string	"le_next"
.LASF128:
	.string	"sec_id"
.LASF25:
	.string	"ESP_PARTITION_TYPE_APP"
.LASF93:
	.string	"esp_ota_handle_t"
.LASF72:
	.string	"segment_count"
.LASF127:
	.string	"rewrite_ota_seq"
.LASF116:
	.string	"lh_first"
.LASF81:
	.string	"esp_image_header_t"
.LASF21:
	.string	"_Bool"
.LASF13:
	.string	"int32_t"
.LASF68:
	.string	"ESP_IMAGE_SPI_SPEED_26M"
.LASF30:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_0"
.LASF85:
	.string	"start_addr"
.LASF32:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_2"
.LASF86:
	.string	"image"
.LASF34:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_4"
.LASF35:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_5"
.LASF36:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_6"
.LASF37:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_7"
.LASF38:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_8"
.LASF39:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_9"
.LASF145:
	.string	"part_pos"
.LASF157:
	.string	"esp_log_timestamp"
.LASF95:
	.string	"ESP_LOG_ERROR"
.LASF113:
	.string	"ota_select"
.LASF121:
	.string	"__func__"
.LASF83:
	.string	"data_len"
.LASF50:
	.string	"ESP_PARTITION_SUBTYPE_DATA_NVS"
.LASF88:
	.string	"segment_data"
.LASF171:
	.string	"calloc"
.LASF84:
	.string	"esp_image_segment_header_t"
.LASF63:
	.string	"encrypted"
.LASF179:
	.string	"esp_flash_encryption_enabled"
.LASF78:
	.string	"spi_pin_drv"
.LASF14:
	.string	"uint32_t"
.LASF118:
	.string	"enabled"
.LASF73:
	.string	"spi_mode"
.LASF19:
	.string	"char"
.LASF99:
	.string	"ESP_LOG_VERBOSE"
.LASF132:
	.string	"ota_data_map"
.LASF70:
	.string	"ESP_IMAGE_SPI_SPEED_80M"
.LASF28:
	.string	"ESP_PARTITION_SUBTYPE_APP_FACTORY"
.LASF4:
	.string	"__uint16_t"
.LASF94:
	.string	"ESP_LOG_NONE"
.LASF160:
	.string	"esp_partition_erase_range"
.LASF169:
	.string	"abort"
.LASF161:
	.string	"esp_partition_write"
.LASF90:
	.string	"esp_image_metadata_t"
.LASF31:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_1"
.LASF177:
	.string	"C:\\\\esp\\\\ArkPOS2-esp\\\\build\\\\app_update"
.LASF33:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_3"
.LASF163:
	.string	"spi_flash_munmap"
.LASF164:
	.string	"esp_partition_get"
.LASF129:
	.string	"ota_data_partition"
.LASF1:
	.string	"unsigned char"
.LASF104:
	.string	"part"
.LASF77:
	.string	"wp_pin"
.LASF47:
	.string	"ESP_PARTITION_SUBTYPE_APP_TEST"
.LASF69:
	.string	"ESP_IMAGE_SPI_SPEED_20M"
.LASF110:
	.string	"ota_ops_entry_t"
.LASF137:
	.string	"image_size"
.LASF40:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_10"
.LASF41:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_11"
.LASF42:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_12"
.LASF172:
	.string	"memset"
.LASF44:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_14"
.LASF45:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_15"
.LASF48:
	.string	"ESP_PARTITION_SUBTYPE_DATA_OTA"
.LASF20:
	.string	"esp_err_t"
.LASF51:
	.string	"ESP_PARTITION_SUBTYPE_DATA_COREDUMP"
.LASF75:
	.string	"spi_size"
.LASF87:
	.string	"segments"
.LASF11:
	.string	"uint8_t"
.LASF54:
	.string	"ESP_PARTITION_SUBTYPE_DATA_SPIFFS"
.LASF155:
	.string	"__assert_func"
.LASF175:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF103:
	.string	"handle"
.LASF152:
	.string	"s_ota_ops_entries_head"
.LASF64:
	.string	"esp_partition_t"
.LASF168:
	.string	"esp_partition_find"
.LASF98:
	.string	"ESP_LOG_DEBUG"
.LASF142:
	.string	"data_bytes"
.LASF124:
	.string	"result"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-61-gab8375a) 5.2.0"
