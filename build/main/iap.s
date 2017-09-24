	.file	"iap.c"
	.text
.Ltext0:
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC0:
	.string	"factory"
	.align	4
.LC2:
	.string	"ota_0"
	.align	4
.LC4:
	.string	"ota_1"
	.section	.text.iap_find_next_boot_partition,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.literal .LC3, .LC2
	.literal .LC5, .LC4
	.align	4
	.type	iap_find_next_boot_partition, @function
iap_find_next_boot_partition:
.LFB7:
	.file 1 "C:/esp/ArkPOS2-esp/main/iap.c"
	.loc 1 275 0
	entry	sp, 32
.LCFI0:
	.loc 1 280 0
	call8	esp_ota_get_boot_partition
.LVL0:
	.loc 1 283 0
	addi	a3, a10, 16
	mov.n	a11, a3
	l32r	a10, .LC1
.LVL1:
	call8	strcmp
.LVL2:
	bnez.n	a10, .L5
	.loc 1 284 0
	l32r	a12, .LC3
	movi	a11, 0xff
	call8	esp_partition_find_first
.LVL3:
	mov.n	a2, a10
.LVL4:
	j	.L2
.LVL5:
.L5:
	.loc 1 281 0
	movi.n	a2, 0
.LVL6:
.L2:
	.loc 1 287 0
	mov.n	a11, a3
	l32r	a10, .LC3
	call8	strcmp
.LVL7:
	bnez.n	a10, .L3
	.loc 1 288 0
	l32r	a12, .LC5
	movi	a11, 0xff
	call8	esp_partition_find_first
.LVL8:
	mov.n	a2, a10
.LVL9:
.L3:
	.loc 1 291 0
	mov.n	a11, a3
	l32r	a10, .LC5
	call8	strcmp
.LVL10:
	bnez.n	a10, .L4
	.loc 1 292 0
	l32r	a12, .LC3
	movi	a11, 0xff
	call8	esp_partition_find_first
.LVL11:
	mov.n	a2, a10
.LVL12:
.L4:
	.loc 1 296 0
	retw.n
.LFE7:
	.size	iap_find_next_boot_partition, .-iap_find_next_boot_partition
	.section	.rodata.str1.4
	.align	4
.LC7:
	.string	"iap"
	.align	4
.LC9:
	.string	"\033[0;31mE (%d) %s: iap_write_page_buffer: write failed in esp_ota_write (%d)!\033[0m\n"
	.section	.text.iap_write_page_buffer,"ax",@progbits
	.literal_position
	.literal .LC6, iap_state
	.literal .LC8, .LC7
	.literal .LC10, .LC9
	.align	4
	.type	iap_write_page_buffer, @function
iap_write_page_buffer:
.LFB5:
	.loc 1 207 0
	entry	sp, 32
.LCFI1:
	.loc 1 209 0
	l32r	a8, .LC6
	l16ui	a12, a8, 20
	beqz.n	a12, .L9
	.loc 1 215 0
	l32i.n	a11, a8, 16
	l32i.n	a10, a8, 8
	call8	esp_ota_write
.LVL13:
	mov.n	a2, a10
.LVL14:
	.loc 1 216 0
	beqz.n	a10, .L8
	.loc 1 217 0 discriminator 1
	call8	esp_log_timestamp
.LVL15:
	l32r	a11, .LC8
	mov.n	a15, a2
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC10
	movi.n	a10, 1
	call8	esp_log_write
.LVL16:
	.loc 1 218 0 discriminator 1
	movi	a2, 0x107
.LVL17:
	retw.n
.LVL18:
.L8:
	.loc 1 221 0
	l32r	a2, .LC6
.LVL19:
	l16ui	a8, a2, 20
	l32i.n	a9, a2, 12
	add.n	a8, a9, a8
	s32i.n	a8, a2, 12
	.loc 1 224 0
	movi.n	a8, 0
	s16i	a8, a2, 20
	.loc 1 226 0
	movi.n	a2, 0
	retw.n
.LVL20:
.L9:
	.loc 1 210 0
	movi.n	a2, 0
	.loc 1 227 0
	retw.n
.LFE5:
	.size	iap_write_page_buffer, .-iap_write_page_buffer
	.section	.rodata.str1.4
	.align	4
.LC13:
	.string	"\033[0;31mE (%d) %s: iap_finish: the module hasn't been initialized!\033[0m\n"
	.align	4
.LC15:
	.string	"\033[0;31mE (%d) %s: iap_finish: programming session not open!\033[0m\n"
	.align	4
.LC17:
	.string	"\033[0;31mE (%d) %s: iap_finish: esp_ota_end failed (%d)!\033[0m\n"
	.align	4
.LC19:
	.string	"\033[0;31mE (%d) %s: iap_finish: esp_ota_set_boot_partition failed (%d)!\033[0m\n"
	.section	.text.iap_finish,"ax",@progbits
	.literal_position
	.literal .LC11, iap_state
	.literal .LC12, .LC7
	.literal .LC14, .LC13
	.literal .LC16, .LC15
	.literal .LC18, .LC17
	.literal .LC20, .LC19
	.align	4
	.type	iap_finish, @function
iap_finish:
.LFB6:
	.loc 1 230 0
.LVL21:
	entry	sp, 32
.LCFI2:
	.loc 1 232 0
	l32r	a8, .LC11
	l8ui	a8, a8, 0
	bbsi	a8, 0, .L11
	.loc 1 233 0 discriminator 1
	call8	esp_log_timestamp
.LVL22:
	l32r	a11, .LC12
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC14
	movi.n	a10, 1
	call8	esp_log_write
.LVL23:
	.loc 1 234 0 discriminator 1
	movi	a2, 0x102
.LVL24:
	retw.n
.LVL25:
.L11:
	.loc 1 238 0
	bbsi	a8, 1, .L13
	.loc 1 239 0 discriminator 1
	call8	esp_log_timestamp
.LVL26:
	l32r	a11, .LC12
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC16
	movi.n	a10, 1
	call8	esp_log_write
.LVL27:
	.loc 1 240 0 discriminator 1
	movi	a2, 0x105
.LVL28:
	retw.n
.LVL29:
.L13:
	.loc 1 243 0
	l32r	a3, .LC11
	l32i.n	a10, a3, 16
	call8	free
.LVL30:
	.loc 1 244 0
	movi.n	a8, 0
	s32i.n	a8, a3, 16
	.loc 1 245 0
	s16i	a8, a3, 20
	.loc 1 246 0
	s32i.n	a8, a3, 12
	.loc 1 252 0
	l32i.n	a10, a3, 8
	call8	esp_ota_end
.LVL31:
	mov.n	a3, a10
.LVL32:
	.loc 1 254 0
	beqz.n	a2, .L14
	.loc 1 255 0
	beqz.n	a10, .L15
	.loc 1 256 0 discriminator 1
	call8	esp_log_timestamp
.LVL33:
	l32r	a11, .LC12
	mov.n	a15, a3
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC18
	movi.n	a10, 1
	call8	esp_log_write
.LVL34:
	.loc 1 257 0 discriminator 1
	movi.n	a2, -1
.LVL35:
	retw.n
.LVL36:
.L15:
	.loc 1 260 0
	l32r	a2, .LC11
.LVL37:
	l32i.n	a10, a2, 4
	call8	esp_ota_set_boot_partition
.LVL38:
	mov.n	a2, a10
.LVL39:
	.loc 1 261 0
	beqz.n	a10, .L14
	.loc 1 262 0 discriminator 1
	call8	esp_log_timestamp
.LVL40:
	l32r	a11, .LC12
	mov.n	a15, a2
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC20
	movi.n	a10, 1
	call8	esp_log_write
.LVL41:
	.loc 1 263 0 discriminator 1
	movi.n	a2, -1
.LVL42:
	retw.n
.LVL43:
.L14:
	.loc 1 267 0
	l32r	a3, .LC11
	movi.n	a2, 0
	s32i.n	a2, a3, 8
	.loc 1 268 0
	s32i.n	a2, a3, 4
	.loc 1 269 0
	l8ui	a9, a3, 0
	movi.n	a8, -3
	and	a8, a9, a8
	s8i	a8, a3, 0
	.loc 1 272 0
	retw.n
.LFE6:
	.size	iap_finish, .-iap_finish
	.section	.rodata.str1.4
	.align	4
.LC23:
	.string	"\033[0;31mE (%d) %s: iap_init: The module has already been initialized!\033[0m\n"
	.section	.text.iap_init,"ax",@progbits
	.literal_position
	.literal .LC21, iap_state
	.literal .LC22, .LC7
	.literal .LC24, .LC23
	.align	4
	.global	iap_init
	.type	iap_init, @function
iap_init:
.LFB0:
	.loc 1 62 0
	entry	sp, 32
.LCFI3:
	.loc 1 66 0
	l32r	a8, .LC21
	l8ui	a8, a8, 0
	bbci	a8, 0, .L17
	.loc 1 67 0 discriminator 1
	call8	esp_log_timestamp
.LVL44:
	l32r	a11, .LC22
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC24
	movi.n	a10, 1
	call8	esp_log_write
.LVL45:
	.loc 1 68 0 discriminator 1
	movi	a2, 0x101
	retw.n
.L17:
	.loc 1 71 0
	movi.n	a8, 1
	l32r	a2, .LC21
	s8i	a8, a2, 0
	.loc 1 73 0
	movi.n	a2, 0
	.loc 1 74 0
	retw.n
.LFE0:
	.size	iap_init, .-iap_init
	.section	.rodata.str1.4
	.align	4
.LC27:
	.string	"\033[0;31mE (%d) %s: iap_begin: the module hasn't been initialized!\033[0m\n"
	.align	4
.LC29:
	.string	"\033[0;31mE (%d) %s: iap_begin: Session already open!\033[0m\n"
	.align	4
.LC32:
	.string	"\033[0;31mE (%d) %s: iap_begin: not enough heap memory to allocate the page buffer!\033[0m\n"
	.align	4
.LC34:
	.string	"\033[0;31mE (%d) %s: iap_begin: partition for firmware update not found!\033[0m\n"
	.align	4
.LC37:
	.string	"\033[0;31mE (%d) %s: iap_begin: esp_ota_begin failed (%d)!\033[0m\n"
	.align	4
.LC39:
	.string	"\033[0;32mI (%d) %s: iap_begin: opened IAP session for partition '%s', address 0x%08x.\033[0m\n"
	.section	.text.iap_begin,"ax",@progbits
	.literal_position
	.literal .LC25, iap_state
	.literal .LC26, .LC7
	.literal .LC28, .LC27
	.literal .LC30, .LC29
	.literal .LC31, 4096
	.literal .LC33, .LC32
	.literal .LC35, .LC34
	.literal .LC36, iap_state+8
	.literal .LC38, .LC37
	.literal .LC40, .LC39
	.align	4
	.global	iap_begin
	.type	iap_begin, @function
iap_begin:
.LFB1:
	.loc 1 77 0
	entry	sp, 48
.LCFI4:
	.loc 1 81 0
	l32r	a8, .LC25
	l8ui	a8, a8, 0
	bbsi	a8, 0, .L20
	.loc 1 82 0 discriminator 1
	call8	esp_log_timestamp
.LVL46:
	l32r	a11, .LC26
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC28
	movi.n	a10, 1
	call8	esp_log_write
.LVL47:
	.loc 1 83 0 discriminator 1
	movi	a2, 0x102
	retw.n
.L20:
	.loc 1 87 0
	bbci	a8, 1, .L22
	.loc 1 88 0 discriminator 1
	call8	esp_log_timestamp
.LVL48:
	l32r	a11, .LC26
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC30
	movi.n	a10, 1
	call8	esp_log_write
.LVL49:
	.loc 1 89 0 discriminator 1
	movi	a2, 0x103
	retw.n
.L22:
	.loc 1 93 0
	l32r	a2, .LC25
	movi.n	a8, 0
	s16i	a8, a2, 20
	.loc 1 94 0
	l32r	a10, .LC31
	call8	malloc
.LVL50:
	s32i.n	a10, a2, 16
	.loc 1 95 0
	bnez.n	a10, .L23
	.loc 1 96 0 discriminator 1
	call8	esp_log_timestamp
.LVL51:
	l32r	a11, .LC26
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC33
	movi.n	a10, 1
	call8	esp_log_write
.LVL52:
	.loc 1 97 0 discriminator 1
	movi	a2, 0x104
	retw.n
.L23:
	.loc 1 100 0
	call8	iap_find_next_boot_partition
.LVL53:
	l32r	a2, .LC25
	s32i.n	a10, a2, 4
	.loc 1 101 0
	bnez.n	a10, .L24
	.loc 1 102 0 discriminator 1
	call8	esp_log_timestamp
.LVL54:
	l32r	a11, .LC26
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC35
	movi.n	a10, 1
	call8	esp_log_write
.LVL55:
	.loc 1 103 0 discriminator 1
	l32r	a2, .LC25
	l32i.n	a10, a2, 16
	call8	free
.LVL56:
	.loc 1 104 0 discriminator 1
	movi	a2, 0x106
	retw.n
.L24:
	.loc 1 109 0
	l32i.n	a8, a10, 8
	l32r	a2, .LC25
	s32i.n	a8, a2, 12
	.loc 1 111 0
	l32r	a12, .LC36
	movi.n	a11, 0
	call8	esp_ota_begin
.LVL57:
	mov.n	a2, a10
.LVL58:
	.loc 1 112 0
	beqz.n	a10, .L25
	.loc 1 113 0 discriminator 1
	call8	esp_log_timestamp
.LVL59:
	l32r	a11, .LC26
	mov.n	a15, a2
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC38
	movi.n	a10, 1
	call8	esp_log_write
.LVL60:
	.loc 1 114 0 discriminator 1
	l32r	a2, .LC25
.LVL61:
	l32i.n	a10, a2, 16
	call8	free
.LVL62:
	.loc 1 115 0 discriminator 1
	movi.n	a2, -1
	retw.n
.LVL63:
.L25:
	.loc 1 118 0 discriminator 1
	call8	esp_log_timestamp
.LVL64:
	l32r	a2, .LC25
.LVL65:
	l32i.n	a15, a2, 4
	l32r	a11, .LC26
	l32i.n	a8, a2, 12
	s32i.n	a8, sp, 0
	addi	a15, a15, 16
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC40
	movi.n	a10, 3
	call8	esp_log_write
.LVL66:
	.loc 1 121 0 discriminator 1
	l8ui	a9, a2, 0
	movi.n	a8, 2
	or	a8, a9, a8
	s8i	a8, a2, 0
	.loc 1 122 0 discriminator 1
	movi.n	a2, 0
	.loc 1 123 0 discriminator 1
	retw.n
.LFE1:
	.size	iap_begin, .-iap_begin
	.section	.rodata.str1.4
	.align	4
.LC43:
	.string	"\033[0;31mE (%d) %s: iap_write: the module hasn't been initialized!\033[0m\n"
	.align	4
.LC45:
	.string	"\033[0;31mE (%d) %s: iap_write: programming session not open!\033[0m\n"
	.align	4
.LC48:
	.string	"\033[0;31mE (%d) %s: iap_write: write failed (%d)!\033[0m\n"
	.section	.text.iap_write,"ax",@progbits
	.literal_position
	.literal .LC41, iap_state
	.literal .LC42, .LC7
	.literal .LC44, .LC43
	.literal .LC46, .LC45
	.literal .LC47, 4096
	.literal .LC49, .LC48
	.align	4
	.global	iap_write
	.type	iap_write, @function
iap_write:
.LFB2:
	.loc 1 126 0
.LVL67:
	entry	sp, 32
.LCFI5:
	extui	a3, a3, 0, 16
	.loc 1 130 0
	l32r	a4, .LC41
	l8ui	a4, a4, 0
	bbsi	a4, 0, .L27
	.loc 1 131 0 discriminator 1
	call8	esp_log_timestamp
.LVL68:
	l32r	a11, .LC42
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC44
	movi.n	a10, 1
	call8	esp_log_write
.LVL69:
	.loc 1 132 0 discriminator 1
	movi	a2, 0x102
.LVL70:
	retw.n
.LVL71:
.L27:
	.loc 1 136 0
	bbsi	a4, 1, .L29
	.loc 1 137 0 discriminator 1
	call8	esp_log_timestamp
.LVL72:
	l32r	a11, .LC42
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC46
	movi.n	a10, 1
	call8	esp_log_write
.LVL73:
	.loc 1 138 0 discriminator 1
	movi	a2, 0x105
.LVL74:
	retw.n
.LVL75:
.L31:
.LBB2:
	.loc 1 145 0
	l32r	a6, .LC41
	l16ui	a8, a6, 20
	l32r	a5, .LC47
	sub	a4, a5, a8
	extui	a4, a4, 0, 16
.LVL76:
	.loc 1 146 0
	minu	a4, a3, a4
.LVL77:
	.loc 1 148 0
	l32i.n	a10, a6, 16
	mov.n	a12, a4
	mov.n	a11, a2
	add.n	a10, a10, a8
	call8	memcpy
.LVL78:
	.loc 1 150 0
	l16ui	a8, a6, 20
	add.n	a8, a4, a8
	extui	a8, a8, 0, 16
	s16i	a8, a6, 20
	.loc 1 151 0
	add.n	a2, a2, a4
.LVL79:
	.loc 1 152 0
	sub	a3, a3, a4
.LVL80:
	extui	a3, a3, 0, 16
.LVL81:
	.loc 1 155 0
	extui	a5, a5, 0, 16
	bne	a8, a5, .L29
.LBB3:
	.loc 1 164 0
	call8	iap_write_page_buffer
.LVL82:
	mov.n	a4, a10
.LVL83:
	.loc 1 166 0
	beqz.n	a10, .L29
	.loc 1 167 0 discriminator 1
	call8	esp_log_timestamp
.LVL84:
	l32r	a11, .LC42
	mov.n	a15, a4
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC49
	movi.n	a10, 1
	call8	esp_log_write
.LVL85:
	.loc 1 168 0 discriminator 1
	movi	a2, 0x107
.LVL86:
	retw.n
.LVL87:
.L29:
.LBE3:
.LBE2:
	.loc 1 143 0
	bnez.n	a3, .L31
	.loc 1 173 0
	movi.n	a2, 0
.LVL88:
	.loc 1 174 0
	retw.n
.LFE2:
	.size	iap_write, .-iap_write
	.section	.rodata.str1.4
	.align	4
.LC51:
	.string	"\033[0;31mE (%d) %s: iap_commit: programming session failed in final write.\033[0m\n"
	.align	4
.LC53:
	.string	"\033[0;31mE (%d) %s: iap_commit: programming session failed in iap_finish.\033[0m\n"
	.align	4
.LC55:
	.string	"\033[0;32mI (%d) %s: iap_commit: programming session successfully completed, partition activated.\033[0m\n"
	.section	.text.iap_commit,"ax",@progbits
	.literal_position
	.literal .LC50, .LC7
	.literal .LC52, .LC51
	.literal .LC54, .LC53
	.literal .LC56, .LC55
	.align	4
	.global	iap_commit
	.type	iap_commit, @function
iap_commit:
.LFB3:
	.loc 1 177 0
	entry	sp, 32
.LCFI6:
	.loc 1 180 0
	call8	iap_write_page_buffer
.LVL89:
	.loc 1 181 0
	beqz.n	a10, .L33
	.loc 1 182 0 discriminator 1
	call8	esp_log_timestamp
.LVL90:
	l32r	a11, .LC50
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC52
	movi.n	a10, 1
	call8	esp_log_write
.LVL91:
.L33:
	.loc 1 185 0
	movi.n	a10, 1
	call8	iap_finish
.LVL92:
	mov.n	a2, a10
.LVL93:
	.loc 1 186 0
	beqz.n	a10, .L34
	.loc 1 187 0 discriminator 1
	call8	esp_log_timestamp
.LVL94:
	l32r	a11, .LC50
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC54
	movi.n	a10, 1
	call8	esp_log_write
.LVL95:
.L34:
	.loc 1 190 0 discriminator 1
	call8	esp_log_timestamp
.LVL96:
	l32r	a11, .LC50
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC56
	movi.n	a10, 3
	call8	esp_log_write
.LVL97:
	.loc 1 192 0 discriminator 1
	retw.n
.LFE3:
	.size	iap_commit, .-iap_commit
	.section	.rodata.str1.4
	.align	4
.LC58:
	.string	"\033[0;32mI (%d) %s: iap_abort: programming session successfully aborted.\033[0m\n"
	.section	.text.iap_abort,"ax",@progbits
	.literal_position
	.literal .LC57, .LC7
	.literal .LC59, .LC58
	.align	4
	.global	iap_abort
	.type	iap_abort, @function
iap_abort:
.LFB4:
	.loc 1 195 0
	entry	sp, 32
.LCFI7:
	.loc 1 198 0
	movi.n	a10, 0
	call8	iap_finish
.LVL98:
	mov.n	a2, a10
.LVL99:
	.loc 1 199 0
	bnez.n	a10, .L36
	.loc 1 200 0 discriminator 1
	call8	esp_log_timestamp
.LVL100:
	l32r	a11, .LC57
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC59
	movi.n	a10, 3
	call8	esp_log_write
.LVL101:
.L36:
	.loc 1 204 0
	retw.n
.LFE4:
	.size	iap_abort, .-iap_abort
	.section	.bss.iap_state,"aw",@nobits
	.align	4
	.type	iap_state, @object
	.size	iap_state, 24
iap_state:
	.zero	24
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
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI0-.LFB7
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI1-.LFB5
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI2-.LFB6
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x4
	.4byte	.LCFI3-.LFB0
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x4
	.4byte	.LCFI4-.LFB1
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI5-.LFB2
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI6-.LFB3
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI7-.LFB4
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
	.text
.Letext0:
	.file 2 "C:/esp/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "C:/esp/esp-idf/components/newlib/include/stdint.h"
	.file 4 "C:/esp/esp-idf/components/esp32/include/esp_err.h"
	.file 5 "C:/esp/esp-idf/components/spi_flash/include/esp_partition.h"
	.file 6 "C:/esp/esp-idf/components/app_update/include/esp_ota_ops.h"
	.file 7 "C:/esp/esp-idf/components/log/include/esp_log.h"
	.file 8 "C:/esp/ArkPOS2-esp/main/iap.h"
	.file 9 "C:/esp/esp-idf/components/newlib/include/string.h"
	.file 10 "C:/esp/esp-idf/components/newlib/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xaba
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
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x4
	.4byte	.LASF5
	.byte	0x2
	.byte	0x12
	.4byte	0x4c
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x2
	.byte	0x16
	.4byte	0x2c
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x2
	.byte	0x19
	.4byte	0x33
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x2
	.byte	0x1a
	.4byte	0x25
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x3
	.byte	0x15
	.4byte	0x41
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x3
	.byte	0x21
	.4byte	0x5a
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x3
	.byte	0x2c
	.4byte	0x65
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x3
	.byte	0x2d
	.4byte	0x70
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x4
	.byte	0x18
	.4byte	0xbb
	.uleb128 0x5
	.byte	0x4
	.4byte	0x25
	.byte	0x5
	.byte	0x26
	.4byte	0xf5
	.uleb128 0x6
	.4byte	.LASF20
	.byte	0
	.uleb128 0x6
	.4byte	.LASF21
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF22
	.byte	0x5
	.byte	0x29
	.4byte	0xdc
	.uleb128 0x5
	.byte	0x4
	.4byte	0x25
	.byte	0x5
	.byte	0x2f
	.4byte	0x1b5
	.uleb128 0x6
	.4byte	.LASF23
	.byte	0
	.uleb128 0x6
	.4byte	.LASF24
	.byte	0x10
	.uleb128 0x6
	.4byte	.LASF25
	.byte	0x10
	.uleb128 0x6
	.4byte	.LASF26
	.byte	0x11
	.uleb128 0x6
	.4byte	.LASF27
	.byte	0x12
	.uleb128 0x6
	.4byte	.LASF28
	.byte	0x13
	.uleb128 0x6
	.4byte	.LASF29
	.byte	0x14
	.uleb128 0x6
	.4byte	.LASF30
	.byte	0x15
	.uleb128 0x6
	.4byte	.LASF31
	.byte	0x16
	.uleb128 0x6
	.4byte	.LASF32
	.byte	0x17
	.uleb128 0x6
	.4byte	.LASF33
	.byte	0x18
	.uleb128 0x6
	.4byte	.LASF34
	.byte	0x19
	.uleb128 0x6
	.4byte	.LASF35
	.byte	0x1a
	.uleb128 0x6
	.4byte	.LASF36
	.byte	0x1b
	.uleb128 0x6
	.4byte	.LASF37
	.byte	0x1c
	.uleb128 0x6
	.4byte	.LASF38
	.byte	0x1d
	.uleb128 0x6
	.4byte	.LASF39
	.byte	0x1e
	.uleb128 0x6
	.4byte	.LASF40
	.byte	0x1f
	.uleb128 0x6
	.4byte	.LASF41
	.byte	0x20
	.uleb128 0x6
	.4byte	.LASF42
	.byte	0x20
	.uleb128 0x6
	.4byte	.LASF43
	.byte	0
	.uleb128 0x6
	.4byte	.LASF44
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF45
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF46
	.byte	0x3
	.uleb128 0x6
	.4byte	.LASF47
	.byte	0x80
	.uleb128 0x6
	.4byte	.LASF48
	.byte	0x81
	.uleb128 0x6
	.4byte	.LASF49
	.byte	0x82
	.uleb128 0x6
	.4byte	.LASF50
	.byte	0xff
	.byte	0
	.uleb128 0x4
	.4byte	.LASF51
	.byte	0x5
	.byte	0x4f
	.4byte	0x100
	.uleb128 0x7
	.byte	0x24
	.byte	0x5
	.byte	0x62
	.4byte	0x211
	.uleb128 0x8
	.4byte	.LASF52
	.byte	0x5
	.byte	0x63
	.4byte	0xf5
	.byte	0
	.uleb128 0x8
	.4byte	.LASF53
	.byte	0x5
	.byte	0x64
	.4byte	0x1b5
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF54
	.byte	0x5
	.byte	0x65
	.4byte	0xc6
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF55
	.byte	0x5
	.byte	0x66
	.4byte	0xc6
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF56
	.byte	0x5
	.byte	0x67
	.4byte	0x211
	.byte	0x10
	.uleb128 0x8
	.4byte	.LASF57
	.byte	0x5
	.byte	0x68
	.4byte	0x221
	.byte	0x21
	.byte	0
	.uleb128 0x9
	.4byte	0x9e
	.4byte	0x221
	.uleb128 0xa
	.4byte	0x90
	.byte	0x10
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF58
	.uleb128 0x4
	.4byte	.LASF59
	.byte	0x5
	.byte	0x69
	.4byte	0x1c0
	.uleb128 0x4
	.4byte	.LASF60
	.byte	0x6
	.byte	0x2b
	.4byte	0xc6
	.uleb128 0x5
	.byte	0x4
	.4byte	0x25
	.byte	0x7
	.byte	0x1f
	.4byte	0x26f
	.uleb128 0x6
	.4byte	.LASF61
	.byte	0
	.uleb128 0x6
	.4byte	.LASF62
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF63
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF64
	.byte	0x3
	.uleb128 0x6
	.4byte	.LASF65
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF66
	.byte	0x5
	.byte	0
	.uleb128 0x4
	.4byte	.LASF67
	.byte	0x7
	.byte	0x26
	.4byte	0x23e
	.uleb128 0x4
	.4byte	.LASF68
	.byte	0x8
	.byte	0x1f
	.4byte	0xbb
	.uleb128 0xb
	.4byte	.LASF104
	.byte	0x18
	.byte	0x1
	.byte	0x20
	.4byte	0x2da
	.uleb128 0x8
	.4byte	.LASF69
	.byte	0x1
	.byte	0x23
	.4byte	0xa5
	.byte	0
	.uleb128 0x8
	.4byte	.LASF70
	.byte	0x1
	.byte	0x26
	.4byte	0x2da
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF71
	.byte	0x1
	.byte	0x29
	.4byte	0x233
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF72
	.byte	0x1
	.byte	0x2c
	.4byte	0xc6
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF73
	.byte	0x1
	.byte	0x2f
	.4byte	0x2e5
	.byte	0x10
	.uleb128 0x8
	.4byte	.LASF74
	.byte	0x1
	.byte	0x32
	.4byte	0xb0
	.byte	0x14
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x2e0
	.uleb128 0xd
	.4byte	0x228
	.uleb128 0xc
	.byte	0x4
	.4byte	0xa5
	.uleb128 0x4
	.4byte	.LASF75
	.byte	0x1
	.byte	0x34
	.4byte	0x285
	.uleb128 0xe
	.4byte	.LASF78
	.byte	0x1
	.2byte	0x112
	.4byte	0x2da
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3e4
	.uleb128 0xf
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x118
	.4byte	0x2da
	.4byte	.LLST0
	.uleb128 0xf
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x119
	.4byte	0x2da
	.4byte	.LLST1
	.uleb128 0x10
	.4byte	.LVL0
	.4byte	0xa3b
	.uleb128 0x11
	.4byte	.LVL2
	.4byte	0xa46
	.4byte	0x356
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL3
	.4byte	0xa51
	.4byte	0x373
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xff
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x11
	.4byte	.LVL7
	.4byte	0xa46
	.4byte	0x390
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL8
	.4byte	0xa51
	.4byte	0x3ad
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xff
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.uleb128 0x11
	.4byte	.LVL10
	.4byte	0xa46
	.4byte	0x3ca
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL11
	.4byte	0xa51
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xff
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	.LASF79
	.byte	0x1
	.byte	0xce
	.4byte	0x27a
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x44f
	.uleb128 0x15
	.4byte	.LASF80
	.byte	0x1
	.byte	0xd7
	.4byte	0xd1
	.4byte	.LLST2
	.uleb128 0x10
	.4byte	.LVL13
	.4byte	0xa5c
	.uleb128 0x10
	.4byte	.LVL15
	.4byte	0xa67
	.uleb128 0x13
	.4byte	.LVL16
	.4byte	0xa72
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF105
	.byte	0x1
	.byte	0xe5
	.4byte	0x27a
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x586
	.uleb128 0x17
	.4byte	.LASF83
	.byte	0x1
	.byte	0xe5
	.4byte	0x33
	.4byte	.LLST3
	.uleb128 0x15
	.4byte	.LASF80
	.byte	0x1
	.byte	0xfc
	.4byte	0xd1
	.4byte	.LLST4
	.uleb128 0x10
	.4byte	.LVL22
	.4byte	0xa67
	.uleb128 0x11
	.4byte	.LVL23
	.4byte	0xa72
	.4byte	0x4bd
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC13
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0
	.uleb128 0x10
	.4byte	.LVL26
	.4byte	0xa67
	.uleb128 0x11
	.4byte	.LVL27
	.4byte	0xa72
	.4byte	0x4f4
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0
	.uleb128 0x10
	.4byte	.LVL30
	.4byte	0xa7d
	.uleb128 0x10
	.4byte	.LVL31
	.4byte	0xa88
	.uleb128 0x10
	.4byte	.LVL33
	.4byte	0xa67
	.uleb128 0x11
	.4byte	.LVL34
	.4byte	0xa72
	.4byte	0x543
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x10
	.4byte	.LVL38
	.4byte	0xa93
	.uleb128 0x10
	.4byte	.LVL40
	.4byte	0xa67
	.uleb128 0x13
	.4byte	.LVL41
	.4byte	0xa72
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC19
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF81
	.byte	0x1
	.byte	0x3d
	.4byte	0x27a
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5d3
	.uleb128 0x10
	.4byte	.LVL44
	.4byte	0xa67
	.uleb128 0x13
	.4byte	.LVL45
	.4byte	0xa72
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF82
	.byte	0x1
	.byte	0x4c
	.4byte	0x27a
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x794
	.uleb128 0x15
	.4byte	.LASF80
	.byte	0x1
	.byte	0x6f
	.4byte	0xd1
	.4byte	.LLST5
	.uleb128 0x10
	.4byte	.LVL46
	.4byte	0xa67
	.uleb128 0x11
	.4byte	.LVL47
	.4byte	0xa72
	.4byte	0x632
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC27
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0
	.uleb128 0x10
	.4byte	.LVL48
	.4byte	0xa67
	.uleb128 0x11
	.4byte	.LVL49
	.4byte	0xa72
	.4byte	0x669
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC29
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0
	.uleb128 0x11
	.4byte	.LVL50
	.4byte	0xa9e
	.4byte	0x67e
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1000
	.byte	0
	.uleb128 0x10
	.4byte	.LVL51
	.4byte	0xa67
	.uleb128 0x11
	.4byte	.LVL52
	.4byte	0xa72
	.4byte	0x6b5
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC32
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0
	.uleb128 0x10
	.4byte	.LVL53
	.4byte	0x2f6
	.uleb128 0x10
	.4byte	.LVL54
	.4byte	0xa67
	.uleb128 0x11
	.4byte	.LVL55
	.4byte	0xa72
	.4byte	0x6f5
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC34
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0
	.uleb128 0x10
	.4byte	.LVL56
	.4byte	0xa7d
	.uleb128 0x11
	.4byte	.LVL57
	.4byte	0xaa9
	.4byte	0x71a
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	iap_state+8
	.byte	0
	.uleb128 0x10
	.4byte	.LVL59
	.4byte	0xa67
	.uleb128 0x11
	.4byte	.LVL60
	.4byte	0xa72
	.4byte	0x757
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC37
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x10
	.4byte	.LVL62
	.4byte	0xa7d
	.uleb128 0x10
	.4byte	.LVL64
	.4byte	0xa67
	.uleb128 0x13
	.4byte	.LVL66
	.4byte	0xa72
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC39
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LASF106
	.byte	0x1
	.byte	0x7d
	.4byte	0x27a
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8d7
	.uleb128 0x17
	.4byte	.LASF84
	.byte	0x1
	.byte	0x7d
	.4byte	0x2e5
	.4byte	.LLST6
	.uleb128 0x1a
	.string	"len"
	.byte	0x1
	.byte	0x7d
	.4byte	0xb0
	.4byte	.LLST7
	.uleb128 0x1b
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0x86c
	.uleb128 0x15
	.4byte	.LASF85
	.byte	0x1
	.byte	0x91
	.4byte	0xb0
	.4byte	.LLST8
	.uleb128 0x15
	.4byte	.LASF86
	.byte	0x1
	.byte	0x92
	.4byte	0xb0
	.4byte	.LLST9
	.uleb128 0x1b
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.4byte	0x855
	.uleb128 0x15
	.4byte	.LASF80
	.byte	0x1
	.byte	0xa4
	.4byte	0xd1
	.4byte	.LLST10
	.uleb128 0x10
	.4byte	.LVL82
	.4byte	0x3e4
	.uleb128 0x10
	.4byte	.LVL84
	.4byte	0xa67
	.uleb128 0x13
	.4byte	.LVL85
	.4byte	0xa72
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC48
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL78
	.4byte	0xab4
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	.LVL68
	.4byte	0xa67
	.uleb128 0x11
	.4byte	.LVL69
	.4byte	0xa72
	.4byte	0x8a3
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC43
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0
	.uleb128 0x10
	.4byte	.LVL72
	.4byte	0xa67
	.uleb128 0x13
	.4byte	.LVL73
	.4byte	0xa72
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC45
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF87
	.byte	0x1
	.byte	0xb0
	.4byte	0x27a
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9bd
	.uleb128 0x15
	.4byte	.LASF80
	.byte	0x1
	.byte	0xb4
	.4byte	0x27a
	.4byte	.LLST11
	.uleb128 0x10
	.4byte	.LVL89
	.4byte	0x3e4
	.uleb128 0x10
	.4byte	.LVL90
	.4byte	0xa67
	.uleb128 0x11
	.4byte	.LVL91
	.4byte	0xa72
	.4byte	0x93f
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC51
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0
	.uleb128 0x11
	.4byte	.LVL92
	.4byte	0x44f
	.4byte	0x952
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x10
	.4byte	.LVL94
	.4byte	0xa67
	.uleb128 0x11
	.4byte	.LVL95
	.4byte	0xa72
	.4byte	0x989
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC53
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0
	.uleb128 0x10
	.4byte	.LVL96
	.4byte	0xa67
	.uleb128 0x13
	.4byte	.LVL97
	.4byte	0xa72
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC55
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF88
	.byte	0x1
	.byte	0xc2
	.4byte	0x27a
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa2a
	.uleb128 0x1c
	.4byte	.LASF80
	.byte	0x1
	.byte	0xc6
	.4byte	0x27a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x11
	.4byte	.LVL98
	.4byte	0x44f
	.4byte	0x9f6
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x10
	.4byte	.LVL100
	.4byte	0xa67
	.uleb128 0x13
	.4byte	.LVL101
	.4byte	0xa72
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC58
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF89
	.byte	0x1
	.byte	0x35
	.4byte	0x2eb
	.uleb128 0x5
	.byte	0x3
	.4byte	iap_state
	.uleb128 0x1d
	.4byte	.LASF90
	.4byte	.LASF90
	.byte	0x6
	.byte	0x8d
	.uleb128 0x1d
	.4byte	.LASF91
	.4byte	.LASF91
	.byte	0x9
	.byte	0x1c
	.uleb128 0x1d
	.4byte	.LASF92
	.4byte	.LASF92
	.byte	0x5
	.byte	0x89
	.uleb128 0x1d
	.4byte	.LASF93
	.4byte	.LASF93
	.byte	0x6
	.byte	0x5a
	.uleb128 0x1d
	.4byte	.LASF94
	.4byte	.LASF94
	.byte	0x7
	.byte	0x4c
	.uleb128 0x1d
	.4byte	.LASF95
	.4byte	.LASF95
	.byte	0x7
	.byte	0x60
	.uleb128 0x1d
	.4byte	.LASF96
	.4byte	.LASF96
	.byte	0xa
	.byte	0x5a
	.uleb128 0x1d
	.4byte	.LASF97
	.4byte	.LASF97
	.byte	0x6
	.byte	0x6a
	.uleb128 0x1d
	.4byte	.LASF98
	.4byte	.LASF98
	.byte	0x6
	.byte	0x7a
	.uleb128 0x1d
	.4byte	.LASF99
	.4byte	.LASF99
	.byte	0xa
	.byte	0x65
	.uleb128 0x1d
	.4byte	.LASF100
	.4byte	.LASF100
	.byte	0x6
	.byte	0x46
	.uleb128 0x1e
	.4byte	.LASF107
	.4byte	.LASF107
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
	.uleb128 0x4
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
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x38
	.uleb128 0xb
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x26
	.byte	0
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
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
	.uleb128 0x2117
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
	.uleb128 0x17
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
	.uleb128 0x19
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.byte	0x5a
	.4byte	.LVL1
	.4byte	.LFE7
	.2byte	0x3
	.byte	0x73
	.sleb128 -16
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL4
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL14
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL21
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
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL32
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL39
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL43
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL58
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL63
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL67
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
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL87
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL67
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL81
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL76
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL77
	.4byte	.LVL78-1
	.2byte	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL77
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL83
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL89
	.4byte	.LVL90-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL93
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x54
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF32:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_7"
.LASF33:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_8"
.LASF34:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_9"
.LASF105:
	.string	"iap_finish"
.LASF80:
	.string	"result"
.LASF23:
	.string	"ESP_PARTITION_SUBTYPE_APP_FACTORY"
.LASF83:
	.string	"commit"
.LASF45:
	.string	"ESP_PARTITION_SUBTYPE_DATA_NVS"
.LASF4:
	.string	"short int"
.LASF99:
	.string	"malloc"
.LASF12:
	.string	"sizetype"
.LASF77:
	.string	"nextBootPartition"
.LASF92:
	.string	"esp_partition_find_first"
.LASF73:
	.string	"page_buffer"
.LASF9:
	.string	"long long int"
.LASF8:
	.string	"__uint32_t"
.LASF19:
	.string	"esp_err_t"
.LASF97:
	.string	"esp_ota_end"
.LASF6:
	.string	"__uint16_t"
.LASF107:
	.string	"memcpy"
.LASF93:
	.string	"esp_ota_write"
.LASF76:
	.string	"currentBootPartition"
.LASF43:
	.string	"ESP_PARTITION_SUBTYPE_DATA_OTA"
.LASF15:
	.string	"uint8_t"
.LASF35:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_10"
.LASF36:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_11"
.LASF37:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_12"
.LASF38:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_13"
.LASF39:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_14"
.LASF40:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_15"
.LASF21:
	.string	"ESP_PARTITION_TYPE_DATA"
.LASF87:
	.string	"iap_commit"
.LASF71:
	.string	"ota_handle"
.LASF50:
	.string	"ESP_PARTITION_SUBTYPE_ANY"
.LASF22:
	.string	"esp_partition_type_t"
.LASF11:
	.string	"long int"
.LASF59:
	.string	"esp_partition_t"
.LASF54:
	.string	"address"
.LASF72:
	.string	"cur_flash_address"
.LASF64:
	.string	"ESP_LOG_INFO"
.LASF69:
	.string	"module_state_flags"
.LASF5:
	.string	"__uint8_t"
.LASF81:
	.string	"iap_init"
.LASF86:
	.string	"nofBytesToCopy"
.LASF82:
	.string	"iap_begin"
.LASF89:
	.string	"iap_state"
.LASF70:
	.string	"partition_to_program"
.LASF41:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_MAX"
.LASF3:
	.string	"unsigned char"
.LASF98:
	.string	"esp_ota_set_boot_partition"
.LASF2:
	.string	"signed char"
.LASF10:
	.string	"long long unsigned int"
.LASF18:
	.string	"uint32_t"
.LASF49:
	.string	"ESP_PARTITION_SUBTYPE_DATA_SPIFFS"
.LASF20:
	.string	"ESP_PARTITION_TYPE_APP"
.LASF0:
	.string	"unsigned int"
.LASF16:
	.string	"uint16_t"
.LASF79:
	.string	"iap_write_page_buffer"
.LASF13:
	.string	"long unsigned int"
.LASF47:
	.string	"ESP_PARTITION_SUBTYPE_DATA_ESPHTTPD"
.LASF90:
	.string	"esp_ota_get_boot_partition"
.LASF95:
	.string	"esp_log_write"
.LASF42:
	.string	"ESP_PARTITION_SUBTYPE_APP_TEST"
.LASF85:
	.string	"spaceRemaining"
.LASF14:
	.string	"char"
.LASF51:
	.string	"esp_partition_subtype_t"
.LASF106:
	.string	"iap_write"
.LASF52:
	.string	"type"
.LASF17:
	.string	"int32_t"
.LASF61:
	.string	"ESP_LOG_NONE"
.LASF102:
	.string	"C:/esp/ArkPOS2-esp/main/iap.c"
.LASF58:
	.string	"_Bool"
.LASF67:
	.string	"esp_log_level_t"
.LASF63:
	.string	"ESP_LOG_WARN"
.LASF103:
	.string	"C:\\\\esp\\\\ArkPOS2-esp\\\\build\\\\main"
.LASF1:
	.string	"short unsigned int"
.LASF65:
	.string	"ESP_LOG_DEBUG"
.LASF24:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_MIN"
.LASF84:
	.string	"bytes"
.LASF100:
	.string	"esp_ota_begin"
.LASF55:
	.string	"size"
.LASF56:
	.string	"label"
.LASF88:
	.string	"iap_abort"
.LASF66:
	.string	"ESP_LOG_VERBOSE"
.LASF75:
	.string	"iap_internal_state_t"
.LASF7:
	.string	"__int32_t"
.LASF60:
	.string	"esp_ota_handle_t"
.LASF53:
	.string	"subtype"
.LASF91:
	.string	"strcmp"
.LASF94:
	.string	"esp_log_timestamp"
.LASF44:
	.string	"ESP_PARTITION_SUBTYPE_DATA_PHY"
.LASF57:
	.string	"encrypted"
.LASF46:
	.string	"ESP_PARTITION_SUBTYPE_DATA_COREDUMP"
.LASF78:
	.string	"iap_find_next_boot_partition"
.LASF68:
	.string	"iap_err_t"
.LASF74:
	.string	"page_buffer_ix"
.LASF101:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF96:
	.string	"free"
.LASF104:
	.string	"iap_internal_state_"
.LASF48:
	.string	"ESP_PARTITION_SUBTYPE_DATA_FAT"
.LASF62:
	.string	"ESP_LOG_ERROR"
.LASF25:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_0"
.LASF26:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_1"
.LASF27:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_2"
.LASF28:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_3"
.LASF29:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_4"
.LASF30:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_5"
.LASF31:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_6"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-61-gab8375a) 5.2.0"
