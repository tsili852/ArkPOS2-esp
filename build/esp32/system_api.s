	.file	"system_api.c"
	.text
.Ltext0:
	.section	.text.get_chip_info_esp32,"ax",@progbits
	.literal_position
	.literal .LC0, 1073061900
	.literal .LC2, 3584
	.align	4
	.type	get_chip_info_esp32, @function
get_chip_info_esp32:
.LFB41:
	.file 1 "C:/esp/esp-idf/components/esp32/system_api.c"
	.loc 1 384 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 385 0
	movi.n	a8, 1
	s32i.n	a8, a2, 0
	.loc 1 386 0
	l32r	a8, .LC0
	memw
	l32i.n	a9, a8, 0
.LVL1:
	.loc 1 387 0
	movi.n	a8, 0
	s8i	a8, a2, 0
	s8i	a8, a2, 1
	s8i	a8, a2, 2
	s8i	a8, a2, 3
	s8i	a8, a2, 4
	s8i	a8, a2, 5
	s8i	a8, a2, 6
	s8i	a8, a2, 7
	s8i	a8, a2, 8
	s8i	a8, a2, 9
	s8i	a8, a2, 10
	s8i	a8, a2, 11
	.loc 1 388 0
	bbci	a9, 15, .L2
	.loc 1 389 0
	movi.n	a8, 1
	s8i	a8, a2, 9
.L2:
	.loc 1 391 0
	bbsi	a9, 0, .L3
	.loc 1 392 0
	movi.n	a8, 2
	s8i	a8, a2, 8
	j	.L4
.L3:
	.loc 1 394 0
	movi.n	a8, 1
	s8i	a8, a2, 8
.L4:
	.loc 1 396 0
	movi.n	a8, 2
	s32i.n	a8, a2, 4
	.loc 1 397 0
	bany	a9, a8, .L5
	.loc 1 398 0
	movi.n	a8, 0x32
	s32i.n	a8, a2, 4
.L5:
	.loc 1 400 0
	l32r	a8, .LC2
	and	a8, a9, a8
	srli	a8, a8, 9
	bnei	a8, 2, .L1
	.loc 1 402 0
	l32i.n	a9, a2, 4
.LVL2:
	movi.n	a8, 1
	or	a8, a9, a8
	s32i.n	a8, a2, 4
.L1:
	retw.n
.LFE41:
	.size	get_chip_info_esp32, .-get_chip_info_esp32
	.section	.text.system_init,"ax",@progbits
	.align	4
	.global	system_init
	.type	system_init, @function
system_init:
.LFB26:
	.loc 1 47 0
	entry	sp, 32
.LCFI1:
	retw.n
.LFE26:
	.size	system_init, .-system_init
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC3:
	.string	"system_api"
	.align	4
.LC5:
	.string	"\033[0;31mE (%d) %s: Base MAC address is NULL\033[0m\n"
	.section	.text.esp_base_mac_addr_set,"ax",@progbits
	.literal_position
	.literal .LC4, .LC3
	.literal .LC6, .LC5
	.literal .LC7, base_mac_addr
	.align	4
	.global	esp_base_mac_addr_set
	.type	esp_base_mac_addr_set, @function
esp_base_mac_addr_set:
.LFB27:
	.loc 1 51 0
.LVL3:
	.loc 1 51 0
	entry	sp, 32
.LCFI2:
	.loc 1 52 0
	bnez.n	a2, .L9
	.loc 1 53 0 discriminator 1
	call8	esp_log_timestamp
.LVL4:
	l32r	a11, .LC4
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC6
	movi.n	a10, 1
	call8	esp_log_write
.LVL5:
	.loc 1 54 0 discriminator 1
	call8	abort
.LVL6:
.L9:
	.loc 1 57 0
	movi.n	a12, 6
	mov.n	a11, a2
	l32r	a10, .LC7
	call8	memcpy
.LVL7:
	.loc 1 60 0
	movi.n	a2, 0
.LVL8:
	retw.n
.LFE27:
	.size	esp_base_mac_addr_set, .-esp_base_mac_addr_set
	.section	.rodata.str1.4
	.align	4
.LC10:
	.string	"\033[0;32mI (%d) %s: Base MAC address is not set, read default base MAC address from BLK0 of EFUSE\033[0m\n"
	.section	.text.esp_base_mac_addr_get,"ax",@progbits
	.literal_position
	.literal .LC8, base_mac_addr
	.literal .LC9, .LC3
	.literal .LC11, .LC10
	.align	4
	.global	esp_base_mac_addr_get
	.type	esp_base_mac_addr_get, @function
esp_base_mac_addr_get:
.LFB28:
	.loc 1 63 0
.LVL9:
	entry	sp, 48
.LCFI3:
	.loc 1 64 0
	movi.n	a8, 0
	s32i.n	a8, sp, 0
	s16i	a8, sp, 4
	.loc 1 66 0
	movi.n	a12, 6
	mov.n	a11, sp
	l32r	a10, .LC8
	call8	memcmp
.LVL10:
	bnez.n	a10, .L11
	.loc 1 67 0 discriminator 1
	call8	esp_log_timestamp
.LVL11:
	l32r	a11, .LC9
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC11
	movi.n	a10, 3
	call8	esp_log_write
.LVL12:
	.loc 1 68 0 discriminator 1
	movi	a2, 0x10b
.LVL13:
	retw.n
.LVL14:
.L11:
	.loc 1 71 0
	movi.n	a12, 6
	l32r	a11, .LC8
	mov.n	a10, a2
	call8	memcpy
.LVL15:
	.loc 1 73 0
	movi.n	a2, 0
.LVL16:
	.loc 1 74 0
	retw.n
.LFE28:
	.size	esp_base_mac_addr_get, .-esp_base_mac_addr_get
	.section	.rodata.str1.4
	.align	4
.LC14:
	.string	"\033[0;31mE (%d) %s: Base MAC address from BLK3 of EFUSE version error, version = %d\033[0m\n"
	.align	4
.LC18:
	.string	"\033[0;31mE (%d) %s: Base MAC address from BLK3 of EFUSE CRC error, efuse_crc = 0x%02x; calc_crc = 0x%02x\033[0m\n"
	.section	.text.esp_efuse_mac_get_custom,"ax",@progbits
	.literal_position
	.literal .LC12, 1073062028
	.literal .LC13, .LC3
	.literal .LC15, .LC14
	.literal .LC16, 1073062012
	.literal .LC17, 1073062008
	.literal .LC19, .LC18
	.align	4
	.global	esp_efuse_mac_get_custom
	.type	esp_efuse_mac_get_custom, @function
esp_efuse_mac_get_custom:
.LFB29:
	.loc 1 77 0
.LVL17:
	entry	sp, 48
.LCFI4:
	.loc 1 83 0
	l32r	a3, .LC12
	memw
	l32i.n	a3, a3, 0
	extui	a3, a3, 24, 8
	extui	a8, a3, 0, 8
.LVL18:
	.loc 1 85 0
	beqi	a8, 1, .L14
	.loc 1 86 0 discriminator 1
	call8	esp_log_timestamp
.LVL19:
	l32r	a11, .LC13
	mov.n	a15, a3
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC15
	movi.n	a10, 1
	call8	esp_log_write
.LVL20:
	.loc 1 87 0 discriminator 1
	movi	a2, 0x10a
.LVL21:
	retw.n
.LVL22:
.L14:
	.loc 1 90 0
	l32r	a3, .LC16
.LVL23:
	memw
	l32i.n	a3, a3, 0
.LVL24:
	.loc 1 91 0
	l32r	a4, .LC17
	memw
	l32i.n	a4, a4, 0
.LVL25:
	.loc 1 93 0
	srli	a8, a4, 8
.LVL26:
	s8i	a8, a2, 0
	.loc 1 94 0
	extui	a8, a4, 16, 16
	s8i	a8, a2, 1
	.loc 1 95 0
	extui	a8, a4, 24, 8
	s8i	a8, a2, 2
	.loc 1 96 0
	s8i	a3, a2, 3
	.loc 1 97 0
	srli	a8, a3, 8
	s8i	a8, a2, 4
	.loc 1 98 0
	extui	a3, a3, 16, 16
.LVL27:
	s8i	a3, a2, 5
	.loc 1 100 0
	extui	a3, a4, 0, 8
.LVL28:
	.loc 1 102 0
	movi.n	a11, 6
	mov.n	a10, a2
	call8	esp_crc8
.LVL29:
	mov.n	a2, a10
.LVL30:
	.loc 1 104 0
	beq	a3, a10, .L16
	.loc 1 105 0 discriminator 1
	call8	esp_log_timestamp
.LVL31:
	l32r	a11, .LC13
	s32i.n	a2, sp, 0
	mov.n	a15, a3
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC19
	movi.n	a10, 1
	call8	esp_log_write
.LVL32:
	.loc 1 106 0 discriminator 1
	movi	a2, 0x109
.LVL33:
	retw.n
.LVL34:
.L16:
	.loc 1 108 0
	movi.n	a2, 0
.LVL35:
	.loc 1 109 0
	retw.n
.LFE29:
	.size	esp_efuse_mac_get_custom, .-esp_efuse_mac_get_custom
	.section	.rodata.str1.4
	.align	4
.LC24:
	.string	"\033[0;31mE (%d) %s: Base MAC address from BLK0 of EFUSE CRC error, efuse_crc = 0x%02x; calc_crc = 0x%02x\033[0m\n"
	.section	.text.esp_efuse_mac_get_default,"ax",@progbits
	.literal_position
	.literal .LC20, 1073061892
	.literal .LC21, 1073061896
	.literal .LC22, 6398
	.literal .LC23, .LC3
	.literal .LC25, .LC24
	.align	4
	.global	esp_efuse_mac_get_default
	.type	esp_efuse_mac_get_default, @function
esp_efuse_mac_get_default:
.LFB30:
	.loc 1 112 0
.LVL36:
	entry	sp, 48
.LCFI5:
	mov.n	a10, a2
	.loc 1 118 0
	l32r	a2, .LC20
.LVL37:
	memw
	l32i.n	a8, a2, 0
.LVL38:
	.loc 1 119 0
	l32r	a2, .LC21
	memw
	l32i.n	a2, a2, 0
.LVL39:
	.loc 1 121 0
	srli	a3, a2, 8
	s8i	a3, a10, 0
	.loc 1 122 0
	s8i	a2, a10, 1
	.loc 1 123 0
	extui	a3, a8, 24, 8
	s8i	a3, a10, 2
	.loc 1 124 0
	extui	a3, a8, 16, 16
	s8i	a3, a10, 3
	.loc 1 125 0
	srli	a3, a8, 8
	s8i	a3, a10, 4
	.loc 1 126 0
	s8i	a8, a10, 5
	.loc 1 128 0
	extui	a3, a2, 16, 16
	extui	a5, a3, 0, 8
.LVL40:
	.loc 1 130 0
	movi.n	a11, 6
	call8	esp_crc8
.LVL41:
	mov.n	a4, a10
.LVL42:
	.loc 1 132 0
	beq	a5, a10, .L18
	.loc 1 135 0
	extui	a2, a2, 0, 16
.LVL43:
	l32r	a5, .LC22
	beq	a2, a5, .L18
	.loc 1 140 0 discriminator 1
	call8	esp_log_timestamp
.LVL44:
	l32r	a11, .LC23
	s32i.n	a4, sp, 0
	extui	a15, a3, 0, 8
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC25
	movi.n	a10, 1
	call8	esp_log_write
.LVL45:
	.loc 1 141 0 discriminator 1
	call8	abort
.LVL46:
.L18:
	.loc 1 145 0
	movi.n	a2, 0
	retw.n
.LFE30:
	.size	esp_efuse_mac_get_default, .-esp_efuse_mac_get_default
	.global	esp_efuse_read_mac
	.set	esp_efuse_read_mac,esp_efuse_mac_get_default
	.global	system_efuse_read_mac
	.set	system_efuse_read_mac,esp_efuse_mac_get_default
	.section	.rodata.str1.4
	.align	4
.LC27:
	.string	"\033[0;31mE (%d) %s: mac address param is NULL\033[0m\n"
	.section	.text.esp_derive_mac,"ax",@progbits
	.literal_position
	.literal .LC26, .LC3
	.literal .LC28, .LC27
	.align	4
	.global	esp_derive_mac
	.type	esp_derive_mac, @function
esp_derive_mac:
.LFB31:
	.loc 1 151 0
.LVL47:
	entry	sp, 32
.LCFI6:
	.loc 1 154 0
	movi.n	a4, 1
	movi.n	a9, 0
	mov.n	a8, a9
	moveqz	a8, a4, a2
	.loc 1 154 0
	movnez	a4, a9, a3
	or	a4, a4, a8
	.loc 1 154 0
	beq	a4, a9, .L20
	.loc 1 155 0 discriminator 1
	call8	esp_log_timestamp
.LVL48:
	l32r	a11, .LC26
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC28
	movi.n	a10, 1
	call8	esp_log_write
.LVL49:
	.loc 1 156 0 discriminator 1
	movi	a2, 0x102
.LVL50:
	retw.n
.LVL51:
.L20:
	.loc 1 159 0
	movi.n	a12, 6
	mov.n	a11, a3
	mov.n	a10, a2
	call8	memcpy
.LVL52:
	.loc 1 160 0
	movi.n	a4, 0
	j	.L22
.LVL53:
.L23:
	.loc 1 161 0
	l8ui	a9, a3, 0
	movi.n	a8, 2
	or	a8, a9, a8
	extui	a8, a8, 0, 8
	.loc 1 162 0
	slli	a9, a4, 2
	xor	a8, a8, a9
	s8i	a8, a2, 0
	.loc 1 164 0
	movi.n	a12, 6
	mov.n	a11, a3
	mov.n	a10, a2
	call8	memcmp
.LVL54:
	bnez.n	a10, .L24
	.loc 1 160 0 discriminator 2
	addi.n	a4, a4, 1
.LVL55:
	extui	a4, a4, 0, 8
.LVL56:
.L22:
	.loc 1 160 0 is_stmt 0 discriminator 1
	movi.n	a8, 0x3f
	bgeu	a8, a4, .L23
	.loc 1 169 0 is_stmt 1
	movi.n	a2, 0
.LVL57:
	retw.n
.LVL58:
.L24:
	movi.n	a2, 0
.LVL59:
	.loc 1 170 0
	retw.n
.LFE31:
	.size	esp_derive_mac, .-esp_derive_mac
	.section	.rodata.str1.4
	.align	4
.LC31:
	.string	"\033[0;31mE (%d) %s: mac type is incorrect\033[0m\n"
	.align	4
.LC33:
	.string	"\033[0;33mW (%d) %s: incorrect mac type\033[0m\n"
	.section	.text.esp_read_mac,"ax",@progbits
	.literal_position
	.literal .LC29, .LC3
	.literal .LC30, .LC27
	.literal .LC32, .LC31
	.literal .LC34, .LC33
	.align	4
	.global	esp_read_mac
	.type	esp_read_mac, @function
esp_read_mac:
.LFB32:
	.loc 1 173 0
.LVL60:
	entry	sp, 48
.LCFI7:
	.loc 1 176 0
	bnez.n	a2, .L26
	.loc 1 177 0 discriminator 1
	call8	esp_log_timestamp
.LVL61:
	l32r	a11, .LC29
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC30
	movi.n	a10, 1
	call8	esp_log_write
.LVL62:
	.loc 1 178 0 discriminator 1
	movi	a2, 0x102
.LVL63:
	retw.n
.LVL64:
.L26:
	.loc 1 181 0
	bltui	a3, 4, .L28
	.loc 1 182 0 discriminator 1
	call8	esp_log_timestamp
.LVL65:
	l32r	a11, .LC29
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC32
	movi.n	a10, 1
	call8	esp_log_write
.LVL66:
	.loc 1 183 0 discriminator 1
	movi	a2, 0x102
.LVL67:
	retw.n
.LVL68:
.L28:
	.loc 1 190 0
	mov.n	a10, sp
	call8	esp_base_mac_addr_get
.LVL69:
	beqz.n	a10, .L29
	.loc 1 191 0
	mov.n	a10, sp
	call8	esp_efuse_mac_get_default
.LVL70:
.L29:
	.loc 1 194 0
	beqi	a3, 1, .L31
	beqz.n	a3, .L32
	beqi	a3, 2, .L33
	beqi	a3, 3, .L34
	j	.L35
.L32:
	.loc 1 196 0
	movi.n	a12, 6
	mov.n	a11, sp
	mov.n	a10, a2
	call8	memcpy
.LVL71:
	.loc 1 231 0
	movi.n	a2, 0
.LVL72:
	.loc 1 197 0
	retw.n
.LVL73:
.L31:
	.loc 1 200 0
	movi.n	a12, 6
	mov.n	a11, sp
	mov.n	a10, a2
	call8	memcpy
.LVL74:
	.loc 1 201 0
	l8ui	a3, a2, 5
.LVL75:
	addi.n	a3, a3, 1
	s8i	a3, a2, 5
	.loc 1 231 0
	movi.n	a2, 0
.LVL76:
	.loc 1 206 0
	retw.n
.LVL77:
.L33:
	.loc 1 208 0
	movi.n	a12, 6
	mov.n	a11, sp
	mov.n	a10, a2
	call8	memcpy
.LVL78:
	.loc 1 210 0
	l8ui	a3, a2, 5
.LVL79:
	addi.n	a3, a3, 2
	s8i	a3, a2, 5
	.loc 1 231 0
	movi.n	a2, 0
.LVL80:
	retw.n
.LVL81:
.L34:
	.loc 1 218 0
	movi.n	a12, 6
	mov.n	a11, sp
	mov.n	a10, a2
	call8	memcpy
.LVL82:
	.loc 1 219 0
	l8ui	a3, a2, 5
.LVL83:
	addi.n	a3, a3, 3
	s8i	a3, a2, 5
	.loc 1 231 0
	movi.n	a2, 0
.LVL84:
	.loc 1 225 0
	retw.n
.LVL85:
.L35:
	.loc 1 227 0 discriminator 1
	call8	esp_log_timestamp
.LVL86:
	l32r	a11, .LC29
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC34
	movi.n	a10, 2
	call8	esp_log_write
.LVL87:
	.loc 1 231 0 discriminator 1
	movi.n	a2, 0
.LVL88:
	.loc 1 232 0 discriminator 1
	retw.n
.LFE32:
	.size	esp_read_mac, .-esp_read_mac
	.section	.text.esp_register_shutdown_handler,"ax",@progbits
	.literal_position
	.literal .LC35, shutdown_handlers
	.align	4
	.global	esp_register_shutdown_handler
	.type	esp_register_shutdown_handler, @function
esp_register_shutdown_handler:
.LFB33:
	.loc 1 235 0
.LVL89:
	entry	sp, 32
.LCFI8:
.LVL90:
	.loc 1 237 0
	movi.n	a8, 0
	j	.L37
.LVL91:
.L40:
	.loc 1 238 0
	l32r	a9, .LC35
	addx4	a9, a8, a9
	l32i.n	a9, a9, 0
	bnez.n	a9, .L38
	.loc 1 239 0
	l32r	a9, .LC35
	addx4	a8, a8, a9
.LVL92:
	s32i.n	a2, a8, 0
	.loc 1 240 0
	movi.n	a2, 0
.LVL93:
	retw.n
.LVL94:
.L38:
	.loc 1 237 0 discriminator 2
	addi.n	a8, a8, 1
.LVL95:
.L37:
	.loc 1 237 0 is_stmt 0 discriminator 1
	blti	a8, 2, .L40
	.loc 1 243 0 is_stmt 1
	movi.n	a2, -1
.LVL96:
	.loc 1 244 0
	retw.n
.LFE33:
	.size	esp_register_shutdown_handler, .-esp_register_shutdown_handler
	.section	.iram1,"ax",@progbits
	.literal_position
	.literal .LC36, 1072988324
	.literal .LC37, 1356348065
	.literal .LC38, 1072988300
	.literal .LC39, 939543552
	.literal .LC40, 1072988304
	.literal .LC41, TIMERG0
	.literal .LC42, 2147483647
	.literal .LC43, TIMERG1
	.literal .LC44, 1072955420
	.literal .LC45, 1073020956
	.literal .LC46, 1073143836
	.literal .LC47, 1072693456
	.literal .LC48, 1072693444
	.literal .LC49, 1072693304
	.literal .LC50, 1072988160
	.align	4
	.global	esp_restart_noos
	.type	esp_restart_noos, @function
esp_restart_noos:
.LFB35:
	.loc 1 268 0
	entry	sp, 32
.LCFI9:
.LBB18:
.LBB19:
	.file 2 "C:/esp/esp-idf/components/freertos/include/freertos/portable.h"
	.loc 2 202 0
#APP
# 202 "C:/esp/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a5
 extui a5,a5,13,1
# 0 "" 2
.LVL97:
	.loc 2 206 0
#NO_APP
	mov.n	a3, a5
.LBE19:
.LBE18:
	.loc 1 270 0
	movi.n	a4, 1
	movi.n	a2, 0
	mov.n	a10, a2
	moveqz	a10, a4, a5
.LVL98:
	.loc 1 271 0
	call8	esp_cpu_stall
.LVL99:
	.loc 1 274 0
	call8	esp_dport_access_int_pause
.LVL100:
	.loc 1 278 0
	l32r	a5, .LC37
.LVL101:
	l32r	a8, .LC36
	memw
	s32i.n	a5, a8, 0
	.loc 1 279 0
	l32r	a9, .LC39
	l32r	a8, .LC38
	memw
	s32i.n	a9, a8, 0
	.loc 1 285 0
	call8	rtc_clk_slow_freq_get_hz
.LVL102:
	l32r	a8, .LC40
	memw
	s32i.n	a10, a8, 0
	.loc 1 288 0
	l32r	a9, .LC41
	memw
	s32i	a5, a9, 100
	.loc 1 289 0
	memw
	l32i	a11, a9, 72
	l32r	a8, .LC42
	and	a10, a11, a8
	memw
	s32i	a10, a9, 72
	.loc 1 290 0
	memw
	s32i	a2, a9, 100
	.loc 1 291 0
	l32r	a9, .LC43
	memw
	s32i	a5, a9, 100
	.loc 1 292 0
	memw
	l32i	a5, a9, 72
	and	a8, a5, a8
	memw
	s32i	a8, a9, 72
	.loc 1 293 0
	memw
	s32i	a2, a9, 100
	.loc 1 296 0
	movi.n	a10, -1
	call8	xt_ints_off
.LVL103:
.LBB20:
.LBB21:
	.file 3 "C:/esp/esp-idf/components/esp32/include/rom/cache.h"
	.loc 3 166 0
	mov.n	a10, a2
	call8	Cache_Read_Disable_rom
.LVL104:
.LBE21:
.LBE20:
.LBB22:
.LBB23:
	mov.n	a10, a4
	call8	Cache_Read_Disable_rom
.LVL105:
.L42:
.LBE23:
.LBE22:
.LBB24:
.LBB25:
	.file 4 "C:/esp/esp-idf/components/esp32/include/rom/uart.h"
	.loc 4 271 0
	l32r	a2, .LC44
	memw
	l32i.n	a2, a2, 0
	extui	a2, a2, 24, 4
	bnez.n	a2, .L42
.L43:
.LBE25:
.LBE24:
.LBB26:
.LBB27:
	l32r	a2, .LC45
	memw
	l32i.n	a2, a2, 0
	extui	a2, a2, 24, 4
	bnez.n	a2, .L43
.L44:
.LBE27:
.LBE26:
.LBB28:
.LBB29:
	l32r	a2, .LC46
	memw
	l32i.n	a2, a2, 0
	extui	a2, a2, 24, 4
	bnez.n	a2, .L44
.LVL106:
.LBE29:
.LBE28:
.LBB30:
.LBB31:
	.file 5 "C:/esp/esp-idf/components/soc/esp32/include/soc/dport_access.h"
	.loc 5 102 0
	l32r	a4, .LC47
.LVL107:
	memw
	l32i.n	a5, a4, 0
.LVL108:
.LBE31:
.LBE30:
	.loc 1 319 0
	movi	a2, 0x7ff
	or	a2, a5, a2
	memw
	s32i.n	a2, a4, 0
	.loc 1 324 0
	movi.n	a2, 0
.LVL109:
	memw
	s32i.n	a2, a4, 0
.LVL110:
.LBB32:
.LBB33:
	.loc 5 102 0
	l32r	a4, .LC48
	memw
	l32i.n	a8, a4, 0
.LVL111:
.LBE33:
.LBE32:
	.loc 1 327 0
	movi.n	a5, 7
.LVL112:
	or	a5, a8, a5
	memw
	s32i.n	a5, a4, 0
	.loc 1 329 0
	memw
	s32i.n	a2, a4, 0
	.loc 1 332 0
	mov.n	a10, a2
	call8	rtc_clk_cpu_freq_set
.LVL113:
	.loc 1 335 0
	l32r	a4, .LC49
	memw
	s32i.n	a2, a4, 0
	.loc 1 338 0
	bne	a3, a2, .L45
	.loc 1 340 0
	l32r	a3, .LC50
.LVL114:
	memw
	l32i.n	a4, a3, 0
	movi.n	a2, 0x30
	or	a2, a4, a2
	memw
	s32i.n	a2, a3, 0
	j	.L46
.LVL115:
.L45:
	.loc 1 345 0
	l32r	a2, .LC50
.LVL116:
	memw
	l32i.n	a4, a2, 0
.LVL117:
	movi.n	a3, 0x20
.LVL118:
	or	a3, a4, a3
	memw
	s32i.n	a3, a2, 0
	.loc 1 346 0
	movi.n	a10, 0
	call8	esp_cpu_unstall
.LVL119:
	.loc 1 347 0
	memw
	l32i.n	a4, a2, 0
	movi.n	a3, 0x10
	or	a3, a4, a3
	memw
	s32i.n	a3, a2, 0
.L46:
	j	.L46
.LFE35:
	.size	esp_restart_noos, .-esp_restart_noos
	.literal_position
	.literal .LC51, shutdown_handlers
	.align	4
	.global	esp_restart
	.type	esp_restart, @function
esp_restart:
.LFB34:
	.loc 1 249 0
	entry	sp, 32
.LCFI10:
.LVL120:
	.loc 1 251 0
	movi.n	a2, 0
	j	.L48
.LVL121:
.L50:
	.loc 1 252 0
	l32r	a8, .LC51
	addx4	a8, a2, a8
	l32i.n	a8, a8, 0
	beqz.n	a8, .L49
	.loc 1 253 0
	callx8	a8
.LVL122:
.L49:
	.loc 1 251 0 discriminator 2
	addi.n	a2, a2, 1
.LVL123:
.L48:
	.loc 1 251 0 is_stmt 0 discriminator 1
	blti	a2, 2, .L50
	.loc 1 258 0 is_stmt 1
	call8	vTaskSuspendAll
.LVL124:
	.loc 1 260 0
	call8	esp_restart_noos
.LVL125:
.LFE34:
	.size	esp_restart, .-esp_restart
	.global	system_restart
	.set	system_restart,esp_restart
	.section	.text.system_restore,"ax",@progbits
	.align	4
	.global	system_restore
	.type	system_restore, @function
system_restore:
.LFB36:
	.loc 1 357 0
	entry	sp, 32
.LCFI11:
	.loc 1 358 0
	call8	esp_wifi_restore
.LVL126:
	retw.n
.LFE36:
	.size	system_restore, .-system_restore
	.section	.text.esp_get_free_heap_size,"ax",@progbits
	.literal_position
	.literal .LC52, 4096
	.align	4
	.global	esp_get_free_heap_size
	.type	esp_get_free_heap_size, @function
esp_get_free_heap_size:
.LFB37:
	.loc 1 362 0
	entry	sp, 32
.LCFI12:
	.loc 1 363 0
	l32r	a10, .LC52
	call8	heap_caps_get_free_size
.LVL127:
	.loc 1 364 0
	mov.n	a2, a10
	retw.n
.LFE37:
	.size	esp_get_free_heap_size, .-esp_get_free_heap_size
	.global	system_get_free_heap_size
	.set	system_get_free_heap_size,esp_get_free_heap_size
	.section	.text.esp_get_minimum_free_heap_size,"ax",@progbits
	.literal_position
	.literal .LC53, 4096
	.align	4
	.global	esp_get_minimum_free_heap_size
	.type	esp_get_minimum_free_heap_size, @function
esp_get_minimum_free_heap_size:
.LFB38:
	.loc 1 367 0
	entry	sp, 32
.LCFI13:
	.loc 1 368 0
	l32r	a10, .LC53
	call8	heap_caps_get_minimum_free_size
.LVL128:
	.loc 1 369 0
	mov.n	a2, a10
	retw.n
.LFE38:
	.size	esp_get_minimum_free_heap_size, .-esp_get_minimum_free_heap_size
	.section	.rodata.str1.4
	.align	4
.LC54:
	.string	"master"
	.section	.text.system_get_sdk_version,"ax",@progbits
	.literal_position
	.literal .LC55, .LC54
	.align	4
	.global	system_get_sdk_version
	.type	system_get_sdk_version, @function
system_get_sdk_version:
.LFB39:
	.loc 1 374 0
	entry	sp, 32
.LCFI14:
	.loc 1 376 0
	l32r	a2, .LC55
	retw.n
.LFE39:
	.size	system_get_sdk_version, .-system_get_sdk_version
	.section	.rodata.str1.4
	.align	4
.LC56:
	.string	"v3.0-dev-782-ge6afe28b"
	.section	.text.esp_get_idf_version,"ax",@progbits
	.literal_position
	.literal .LC57, .LC56
	.align	4
	.global	esp_get_idf_version
	.type	esp_get_idf_version, @function
esp_get_idf_version:
.LFB40:
	.loc 1 379 0
	entry	sp, 32
.LCFI15:
	.loc 1 381 0
	l32r	a2, .LC57
	retw.n
.LFE40:
	.size	esp_get_idf_version, .-esp_get_idf_version
	.section	.text.esp_chip_info,"ax",@progbits
	.align	4
	.global	esp_chip_info
	.type	esp_chip_info, @function
esp_chip_info:
.LFB42:
	.loc 1 407 0
.LVL129:
	entry	sp, 32
.LCFI16:
	.loc 1 410 0
	mov.n	a10, a2
	call8	get_chip_info_esp32
.LVL130:
	retw.n
.LFE42:
	.size	esp_chip_info, .-esp_chip_info
	.section	.bss.shutdown_handlers,"aw",@nobits
	.align	4
	.type	shutdown_handlers, @object
	.size	shutdown_handlers, 8
shutdown_handlers:
	.zero	8
	.section	.bss.base_mac_addr,"aw",@nobits
	.align	4
	.type	base_mac_addr, @object
	.size	base_mac_addr, 6
base_mac_addr:
	.zero	6
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
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.byte	0x4
	.4byte	.LCFI0-.LFB41
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
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI2-.LFB27
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI3-.LFB28
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI4-.LFB29
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI5-.LFB30
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI6-.LFB31
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI7-.LFB32
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI8-.LFB33
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI9-.LFB35
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI10-.LFB34
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI11-.LFB36
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x4
	.4byte	.LCFI12-.LFB37
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x4
	.4byte	.LCFI13-.LFB38
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x4
	.4byte	.LCFI14-.LFB39
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x4
	.4byte	.LCFI15-.LFB40
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.byte	0x4
	.4byte	.LCFI16-.LFB42
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE32:
	.text
.Letext0:
	.file 6 "C:/esp/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 7 "C:/esp/esp-idf/components/newlib/include/stdint.h"
	.file 8 "C:/esp/esp-idf/components/esp32/include/esp_err.h"
	.file 9 "C:/esp/esp-idf/components/esp32/include/esp_system.h"
	.file 10 "C:/esp/esp-idf/components/log/include/esp_log.h"
	.file 11 "C:/esp/esp-idf/components/soc/esp32/include/soc/timer_group_struct.h"
	.file 12 "C:/esp/esp-idf/components/soc/esp32/include/soc/rtc.h"
	.file 13 "C:/esp/esp-idf/components/newlib/include/stdlib.h"
	.file 14 "C:/esp/esp-idf/components/newlib/include/string.h"
	.file 15 "C:/esp/esp-idf/components/esp32/include/rom/efuse.h"
	.file 16 "C:/esp/esp-idf/components/soc/esp32/include/soc/cpu.h"
	.file 17 "C:/esp/esp-idf/components/esp32/include/esp_dport_access.h"
	.file 18 "C:/esp/esp-idf/components/freertos/include/freertos/xtensa_api.h"
	.file 19 "C:/esp/esp-idf/components/freertos/include/freertos/task.h"
	.file 20 "C:/esp/esp-idf/components/esp32/include/esp_wifi.h"
	.file 21 "C:/esp/esp-idf/components/heap/include/esp_heap_caps.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x14b9
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF183
	.byte	0xc
	.4byte	.LASF184
	.4byte	.LASF185
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x4
	.4byte	.LASF5
	.byte	0x6
	.byte	0x12
	.4byte	0x4c
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x6
	.byte	0x19
	.4byte	0x25
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x6
	.byte	0x1a
	.4byte	0x2c
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x5
	.byte	0x4
	.4byte	0x99
	.uleb128 0x6
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.uleb128 0x5
	.byte	0x4
	.4byte	0xa7
	.uleb128 0x7
	.4byte	0x9a
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x7
	.byte	0x15
	.4byte	0x41
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x7
	.byte	0x2c
	.4byte	0x5a
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x7
	.byte	0x2d
	.4byte	0x65
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x8
	.byte	0x18
	.4byte	0xb7
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF18
	.uleb128 0x8
	.byte	0x4
	.4byte	0x2c
	.byte	0x9
	.byte	0x1b
	.4byte	0x104
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0x9
	.byte	0x20
	.4byte	0xdf
	.uleb128 0x4
	.4byte	.LASF24
	.byte	0x9
	.byte	0x34
	.4byte	0x93
	.uleb128 0xa
	.byte	0x4
	.4byte	0x2c
	.byte	0x9
	.2byte	0x107
	.4byte	0x12e
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x9
	.2byte	0x109
	.4byte	0x11a
	.uleb128 0xc
	.byte	0xc
	.byte	0x9
	.2byte	0x116
	.4byte	0x178
	.uleb128 0xd
	.4byte	.LASF27
	.byte	0x9
	.2byte	0x117
	.4byte	0x12e
	.byte	0
	.uleb128 0xd
	.4byte	.LASF28
	.byte	0x9
	.2byte	0x118
	.4byte	0xc2
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF29
	.byte	0x9
	.2byte	0x119
	.4byte	0xac
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF30
	.byte	0x9
	.2byte	0x11a
	.4byte	0xac
	.byte	0x9
	.byte	0
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x9
	.2byte	0x11b
	.4byte	0x13a
	.uleb128 0x5
	.byte	0x4
	.4byte	0xac
	.uleb128 0xe
	.4byte	0xac
	.4byte	0x19a
	.uleb128 0xf
	.4byte	0x85
	.byte	0x5
	.byte	0
	.uleb128 0x7
	.4byte	0xa1
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1a5
	.uleb128 0x7
	.4byte	0xac
	.uleb128 0x8
	.byte	0x4
	.4byte	0x2c
	.byte	0xa
	.byte	0x1f
	.4byte	0x1db
	.uleb128 0x9
	.4byte	.LASF32
	.byte	0
	.uleb128 0x9
	.4byte	.LASF33
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF34
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF35
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF37
	.byte	0x5
	.byte	0
	.uleb128 0x4
	.4byte	.LASF38
	.byte	0xa
	.byte	0x26
	.4byte	0x1aa
	.uleb128 0x10
	.byte	0x4
	.byte	0xb
	.byte	0x18
	.4byte	0x267
	.uleb128 0x11
	.4byte	.LASF39
	.byte	0xb
	.byte	0x19
	.4byte	0xc2
	.byte	0x4
	.byte	0xa
	.byte	0x16
	.byte	0
	.uleb128 0x11
	.4byte	.LASF40
	.byte	0xb
	.byte	0x1a
	.4byte	0xc2
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x11
	.4byte	.LASF41
	.byte	0xb
	.byte	0x1b
	.4byte	0xc2
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x11
	.4byte	.LASF42
	.byte	0xb
	.byte	0x1c
	.4byte	0xc2
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x11
	.4byte	.LASF43
	.byte	0xb
	.byte	0x1d
	.4byte	0xc2
	.byte	0x4
	.byte	0x10
	.byte	0x3
	.byte	0
	.uleb128 0x11
	.4byte	.LASF44
	.byte	0xb
	.byte	0x1e
	.4byte	0xc2
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x11
	.4byte	.LASF45
	.byte	0xb
	.byte	0x1f
	.4byte	0xc2
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x11
	.4byte	.LASF46
	.byte	0xb
	.byte	0x20
	.4byte	0xc2
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.byte	0x4
	.byte	0xb
	.byte	0x17
	.4byte	0x280
	.uleb128 0x13
	.4byte	0x1e6
	.uleb128 0x14
	.string	"val"
	.byte	0xb
	.byte	0x22
	.4byte	0xc2
	.byte	0
	.uleb128 0x10
	.byte	0x24
	.byte	0xb
	.byte	0x16
	.4byte	0x2f5
	.uleb128 0x15
	.4byte	.LASF47
	.byte	0xb
	.byte	0x23
	.4byte	0x267
	.byte	0
	.uleb128 0x15
	.4byte	.LASF48
	.byte	0xb
	.byte	0x24
	.4byte	0xc2
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF49
	.byte	0xb
	.byte	0x25
	.4byte	0xc2
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF50
	.byte	0xb
	.byte	0x26
	.4byte	0xc2
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF51
	.byte	0xb
	.byte	0x27
	.4byte	0xc2
	.byte	0x10
	.uleb128 0x15
	.4byte	.LASF52
	.byte	0xb
	.byte	0x28
	.4byte	0xc2
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF53
	.byte	0xb
	.byte	0x29
	.4byte	0xc2
	.byte	0x18
	.uleb128 0x15
	.4byte	.LASF54
	.byte	0xb
	.byte	0x2a
	.4byte	0xc2
	.byte	0x1c
	.uleb128 0x15
	.4byte	.LASF55
	.byte	0xb
	.byte	0x2b
	.4byte	0xc2
	.byte	0x20
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.byte	0xb
	.byte	0x2e
	.4byte	0x3a2
	.uleb128 0x11
	.4byte	.LASF39
	.byte	0xb
	.byte	0x2f
	.4byte	0xc2
	.byte	0x4
	.byte	0xe
	.byte	0x12
	.byte	0
	.uleb128 0x11
	.4byte	.LASF56
	.byte	0xb
	.byte	0x30
	.4byte	0xc2
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x11
	.4byte	.LASF57
	.byte	0xb
	.byte	0x31
	.4byte	0xc2
	.byte	0x4
	.byte	0x3
	.byte	0xe
	.byte	0
	.uleb128 0x11
	.4byte	.LASF58
	.byte	0xb
	.byte	0x32
	.4byte	0xc2
	.byte	0x4
	.byte	0x3
	.byte	0xb
	.byte	0
	.uleb128 0x11
	.4byte	.LASF41
	.byte	0xb
	.byte	0x33
	.4byte	0xc2
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x11
	.4byte	.LASF42
	.byte	0xb
	.byte	0x34
	.4byte	0xc2
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0x11
	.4byte	.LASF59
	.byte	0xb
	.byte	0x35
	.4byte	0xc2
	.byte	0x4
	.byte	0x2
	.byte	0x7
	.byte	0
	.uleb128 0x11
	.4byte	.LASF60
	.byte	0xb
	.byte	0x36
	.4byte	0xc2
	.byte	0x4
	.byte	0x2
	.byte	0x5
	.byte	0
	.uleb128 0x11
	.4byte	.LASF61
	.byte	0xb
	.byte	0x37
	.4byte	0xc2
	.byte	0x4
	.byte	0x2
	.byte	0x3
	.byte	0
	.uleb128 0x11
	.4byte	.LASF62
	.byte	0xb
	.byte	0x38
	.4byte	0xc2
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0
	.uleb128 0x16
	.string	"en"
	.byte	0xb
	.byte	0x39
	.4byte	0xc2
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.byte	0x4
	.byte	0xb
	.byte	0x2d
	.4byte	0x3bb
	.uleb128 0x13
	.4byte	0x2f5
	.uleb128 0x14
	.string	"val"
	.byte	0xb
	.byte	0x3b
	.4byte	0xc2
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.byte	0xb
	.byte	0x3e
	.4byte	0x3e2
	.uleb128 0x11
	.4byte	.LASF39
	.byte	0xb
	.byte	0x3f
	.4byte	0xc2
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.4byte	.LASF63
	.byte	0xb
	.byte	0x40
	.4byte	0xc2
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.byte	0x4
	.byte	0xb
	.byte	0x3d
	.4byte	0x3fb
	.uleb128 0x13
	.4byte	0x3bb
	.uleb128 0x14
	.string	"val"
	.byte	0xb
	.byte	0x42
	.4byte	0xc2
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.byte	0xb
	.byte	0x4b
	.4byte	0x45e
	.uleb128 0x11
	.4byte	.LASF39
	.byte	0xb
	.byte	0x4c
	.4byte	0xc2
	.byte	0x4
	.byte	0xc
	.byte	0x14
	.byte	0
	.uleb128 0x11
	.4byte	.LASF64
	.byte	0xb
	.byte	0x4d
	.4byte	0xc2
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x11
	.4byte	.LASF65
	.byte	0xb
	.byte	0x4e
	.4byte	0xc2
	.byte	0x4
	.byte	0x2
	.byte	0x11
	.byte	0
	.uleb128 0x16
	.string	"rdy"
	.byte	0xb
	.byte	0x4f
	.4byte	0xc2
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x16
	.string	"max"
	.byte	0xb
	.byte	0x50
	.4byte	0xc2
	.byte	0x4
	.byte	0xf
	.byte	0x1
	.byte	0
	.uleb128 0x11
	.4byte	.LASF66
	.byte	0xb
	.byte	0x51
	.4byte	0xc2
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.byte	0x4
	.byte	0xb
	.byte	0x4a
	.4byte	0x477
	.uleb128 0x13
	.4byte	0x3fb
	.uleb128 0x14
	.string	"val"
	.byte	0xb
	.byte	0x53
	.4byte	0xc2
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.byte	0xb
	.byte	0x56
	.4byte	0x49e
	.uleb128 0x11
	.4byte	.LASF39
	.byte	0xb
	.byte	0x57
	.4byte	0xc2
	.byte	0x4
	.byte	0x7
	.byte	0x19
	.byte	0
	.uleb128 0x11
	.4byte	.LASF67
	.byte	0xb
	.byte	0x58
	.4byte	0xc2
	.byte	0x4
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.byte	0x4
	.byte	0xb
	.byte	0x55
	.4byte	0x4b7
	.uleb128 0x13
	.4byte	0x477
	.uleb128 0x14
	.string	"val"
	.byte	0xb
	.byte	0x5a
	.4byte	0xc2
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.byte	0xb
	.byte	0x5d
	.4byte	0x564
	.uleb128 0x11
	.4byte	.LASF39
	.byte	0xb
	.byte	0x5e
	.4byte	0xc2
	.byte	0x4
	.byte	0x7
	.byte	0x19
	.byte	0
	.uleb128 0x11
	.4byte	.LASF68
	.byte	0xb
	.byte	0x5f
	.4byte	0xc2
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x11
	.4byte	.LASF69
	.byte	0xb
	.byte	0x60
	.4byte	0xc2
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x11
	.4byte	.LASF70
	.byte	0xb
	.byte	0x61
	.4byte	0xc2
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x11
	.4byte	.LASF40
	.byte	0xb
	.byte	0x62
	.4byte	0xc2
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x11
	.4byte	.LASF41
	.byte	0xb
	.byte	0x63
	.4byte	0xc2
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x11
	.4byte	.LASF42
	.byte	0xb
	.byte	0x64
	.4byte	0xc2
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x11
	.4byte	.LASF43
	.byte	0xb
	.byte	0x65
	.4byte	0xc2
	.byte	0x4
	.byte	0x10
	.byte	0x3
	.byte	0
	.uleb128 0x11
	.4byte	.LASF44
	.byte	0xb
	.byte	0x66
	.4byte	0xc2
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x11
	.4byte	.LASF45
	.byte	0xb
	.byte	0x67
	.4byte	0xc2
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x16
	.string	"en"
	.byte	0xb
	.byte	0x68
	.4byte	0xc2
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.byte	0x4
	.byte	0xb
	.byte	0x5c
	.4byte	0x57d
	.uleb128 0x13
	.4byte	0x4b7
	.uleb128 0x14
	.string	"val"
	.byte	0xb
	.byte	0x6a
	.4byte	0xc2
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.byte	0xb
	.byte	0x6d
	.4byte	0x5a4
	.uleb128 0x11
	.4byte	.LASF39
	.byte	0xb
	.byte	0x6e
	.4byte	0xc2
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0
	.uleb128 0x11
	.4byte	.LASF71
	.byte	0xb
	.byte	0x6f
	.4byte	0xc2
	.byte	0x4
	.byte	0x1a
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.byte	0x4
	.byte	0xb
	.byte	0x6c
	.4byte	0x5bd
	.uleb128 0x13
	.4byte	0x57d
	.uleb128 0x14
	.string	"val"
	.byte	0xb
	.byte	0x71
	.4byte	0xc2
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.byte	0xb
	.byte	0x7c
	.4byte	0x60f
	.uleb128 0x16
	.string	"t0"
	.byte	0xb
	.byte	0x7d
	.4byte	0xc2
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x16
	.string	"t1"
	.byte	0xb
	.byte	0x7e
	.4byte	0xc2
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x16
	.string	"wdt"
	.byte	0xb
	.byte	0x7f
	.4byte	0xc2
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x11
	.4byte	.LASF72
	.byte	0xb
	.byte	0x80
	.4byte	0xc2
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x11
	.4byte	.LASF73
	.byte	0xb
	.byte	0x81
	.4byte	0xc2
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.byte	0x4
	.byte	0xb
	.byte	0x7b
	.4byte	0x628
	.uleb128 0x13
	.4byte	0x5bd
	.uleb128 0x14
	.string	"val"
	.byte	0xb
	.byte	0x83
	.4byte	0xc2
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.byte	0xb
	.byte	0x86
	.4byte	0x67a
	.uleb128 0x16
	.string	"t0"
	.byte	0xb
	.byte	0x87
	.4byte	0xc2
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x16
	.string	"t1"
	.byte	0xb
	.byte	0x88
	.4byte	0xc2
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x16
	.string	"wdt"
	.byte	0xb
	.byte	0x89
	.4byte	0xc2
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x11
	.4byte	.LASF72
	.byte	0xb
	.byte	0x8a
	.4byte	0xc2
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x11
	.4byte	.LASF73
	.byte	0xb
	.byte	0x8b
	.4byte	0xc2
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.byte	0x4
	.byte	0xb
	.byte	0x85
	.4byte	0x693
	.uleb128 0x13
	.4byte	0x628
	.uleb128 0x14
	.string	"val"
	.byte	0xb
	.byte	0x8d
	.4byte	0xc2
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.byte	0xb
	.byte	0x90
	.4byte	0x6e5
	.uleb128 0x16
	.string	"t0"
	.byte	0xb
	.byte	0x91
	.4byte	0xc2
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x16
	.string	"t1"
	.byte	0xb
	.byte	0x92
	.4byte	0xc2
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x16
	.string	"wdt"
	.byte	0xb
	.byte	0x93
	.4byte	0xc2
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x11
	.4byte	.LASF72
	.byte	0xb
	.byte	0x94
	.4byte	0xc2
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x11
	.4byte	.LASF73
	.byte	0xb
	.byte	0x95
	.4byte	0xc2
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.byte	0x4
	.byte	0xb
	.byte	0x8f
	.4byte	0x6fe
	.uleb128 0x13
	.4byte	0x693
	.uleb128 0x14
	.string	"val"
	.byte	0xb
	.byte	0x97
	.4byte	0xc2
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.byte	0xb
	.byte	0x9a
	.4byte	0x750
	.uleb128 0x16
	.string	"t0"
	.byte	0xb
	.byte	0x9b
	.4byte	0xc2
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x16
	.string	"t1"
	.byte	0xb
	.byte	0x9c
	.4byte	0xc2
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x16
	.string	"wdt"
	.byte	0xb
	.byte	0x9d
	.4byte	0xc2
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x11
	.4byte	.LASF72
	.byte	0xb
	.byte	0x9e
	.4byte	0xc2
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x11
	.4byte	.LASF73
	.byte	0xb
	.byte	0x9f
	.4byte	0xc2
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.byte	0x4
	.byte	0xb
	.byte	0x99
	.4byte	0x769
	.uleb128 0x13
	.4byte	0x6fe
	.uleb128 0x14
	.string	"val"
	.byte	0xb
	.byte	0xa1
	.4byte	0xc2
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.byte	0xb
	.byte	0xb8
	.4byte	0x790
	.uleb128 0x11
	.4byte	.LASF74
	.byte	0xb
	.byte	0xb9
	.4byte	0xc2
	.byte	0x4
	.byte	0x1c
	.byte	0x4
	.byte	0
	.uleb128 0x11
	.4byte	.LASF75
	.byte	0xb
	.byte	0xba
	.4byte	0xc2
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.byte	0x4
	.byte	0xb
	.byte	0xb7
	.4byte	0x7a9
	.uleb128 0x13
	.4byte	0x769
	.uleb128 0x14
	.string	"val"
	.byte	0xb
	.byte	0xbc
	.4byte	0xc2
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.byte	0xb
	.byte	0xbf
	.4byte	0x7cf
	.uleb128 0x11
	.4byte	.LASF39
	.byte	0xb
	.byte	0xc0
	.4byte	0xc2
	.byte	0x4
	.byte	0x1f
	.byte	0x1
	.byte	0
	.uleb128 0x16
	.string	"en"
	.byte	0xb
	.byte	0xc1
	.4byte	0xc2
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.byte	0x4
	.byte	0xb
	.byte	0xbe
	.4byte	0x7e8
	.uleb128 0x13
	.4byte	0x7a9
	.uleb128 0x14
	.string	"val"
	.byte	0xb
	.byte	0xc3
	.4byte	0xc2
	.byte	0
	.uleb128 0x17
	.2byte	0x100
	.byte	0xb
	.byte	0x15
	.4byte	0xa26
	.uleb128 0x15
	.4byte	.LASF76
	.byte	0xb
	.byte	0x2c
	.4byte	0xa26
	.byte	0
	.uleb128 0x15
	.4byte	.LASF77
	.byte	0xb
	.byte	0x3c
	.4byte	0x3a2
	.byte	0x48
	.uleb128 0x15
	.4byte	.LASF78
	.byte	0xb
	.byte	0x43
	.4byte	0x3e2
	.byte	0x4c
	.uleb128 0x15
	.4byte	.LASF79
	.byte	0xb
	.byte	0x44
	.4byte	0xc2
	.byte	0x50
	.uleb128 0x15
	.4byte	.LASF80
	.byte	0xb
	.byte	0x45
	.4byte	0xc2
	.byte	0x54
	.uleb128 0x15
	.4byte	.LASF81
	.byte	0xb
	.byte	0x46
	.4byte	0xc2
	.byte	0x58
	.uleb128 0x15
	.4byte	.LASF82
	.byte	0xb
	.byte	0x47
	.4byte	0xc2
	.byte	0x5c
	.uleb128 0x15
	.4byte	.LASF83
	.byte	0xb
	.byte	0x48
	.4byte	0xc2
	.byte	0x60
	.uleb128 0x15
	.4byte	.LASF84
	.byte	0xb
	.byte	0x49
	.4byte	0xc2
	.byte	0x64
	.uleb128 0x15
	.4byte	.LASF85
	.byte	0xb
	.byte	0x54
	.4byte	0x45e
	.byte	0x68
	.uleb128 0x15
	.4byte	.LASF86
	.byte	0xb
	.byte	0x5b
	.4byte	0x49e
	.byte	0x6c
	.uleb128 0x15
	.4byte	.LASF87
	.byte	0xb
	.byte	0x6b
	.4byte	0x564
	.byte	0x70
	.uleb128 0x15
	.4byte	.LASF88
	.byte	0xb
	.byte	0x72
	.4byte	0x5a4
	.byte	0x74
	.uleb128 0x15
	.4byte	.LASF89
	.byte	0xb
	.byte	0x73
	.4byte	0xc2
	.byte	0x78
	.uleb128 0x15
	.4byte	.LASF90
	.byte	0xb
	.byte	0x74
	.4byte	0xc2
	.byte	0x7c
	.uleb128 0x15
	.4byte	.LASF91
	.byte	0xb
	.byte	0x75
	.4byte	0xc2
	.byte	0x80
	.uleb128 0x15
	.4byte	.LASF92
	.byte	0xb
	.byte	0x76
	.4byte	0xc2
	.byte	0x84
	.uleb128 0x15
	.4byte	.LASF93
	.byte	0xb
	.byte	0x77
	.4byte	0xc2
	.byte	0x88
	.uleb128 0x15
	.4byte	.LASF94
	.byte	0xb
	.byte	0x78
	.4byte	0xc2
	.byte	0x8c
	.uleb128 0x15
	.4byte	.LASF95
	.byte	0xb
	.byte	0x79
	.4byte	0xc2
	.byte	0x90
	.uleb128 0x15
	.4byte	.LASF96
	.byte	0xb
	.byte	0x7a
	.4byte	0xc2
	.byte	0x94
	.uleb128 0x15
	.4byte	.LASF97
	.byte	0xb
	.byte	0x84
	.4byte	0x60f
	.byte	0x98
	.uleb128 0x15
	.4byte	.LASF98
	.byte	0xb
	.byte	0x8e
	.4byte	0x67a
	.byte	0x9c
	.uleb128 0x15
	.4byte	.LASF99
	.byte	0xb
	.byte	0x98
	.4byte	0x6e5
	.byte	0xa0
	.uleb128 0x15
	.4byte	.LASF100
	.byte	0xb
	.byte	0xa2
	.4byte	0x750
	.byte	0xa4
	.uleb128 0x15
	.4byte	.LASF101
	.byte	0xb
	.byte	0xa3
	.4byte	0xc2
	.byte	0xa8
	.uleb128 0x15
	.4byte	.LASF102
	.byte	0xb
	.byte	0xa4
	.4byte	0xc2
	.byte	0xac
	.uleb128 0x15
	.4byte	.LASF103
	.byte	0xb
	.byte	0xa5
	.4byte	0xc2
	.byte	0xb0
	.uleb128 0x15
	.4byte	.LASF104
	.byte	0xb
	.byte	0xa6
	.4byte	0xc2
	.byte	0xb4
	.uleb128 0x15
	.4byte	.LASF105
	.byte	0xb
	.byte	0xa7
	.4byte	0xc2
	.byte	0xb8
	.uleb128 0x15
	.4byte	.LASF106
	.byte	0xb
	.byte	0xa8
	.4byte	0xc2
	.byte	0xbc
	.uleb128 0x15
	.4byte	.LASF107
	.byte	0xb
	.byte	0xa9
	.4byte	0xc2
	.byte	0xc0
	.uleb128 0x15
	.4byte	.LASF108
	.byte	0xb
	.byte	0xaa
	.4byte	0xc2
	.byte	0xc4
	.uleb128 0x15
	.4byte	.LASF109
	.byte	0xb
	.byte	0xab
	.4byte	0xc2
	.byte	0xc8
	.uleb128 0x15
	.4byte	.LASF110
	.byte	0xb
	.byte	0xac
	.4byte	0xc2
	.byte	0xcc
	.uleb128 0x15
	.4byte	.LASF111
	.byte	0xb
	.byte	0xad
	.4byte	0xc2
	.byte	0xd0
	.uleb128 0x15
	.4byte	.LASF112
	.byte	0xb
	.byte	0xae
	.4byte	0xc2
	.byte	0xd4
	.uleb128 0x15
	.4byte	.LASF113
	.byte	0xb
	.byte	0xaf
	.4byte	0xc2
	.byte	0xd8
	.uleb128 0x15
	.4byte	.LASF114
	.byte	0xb
	.byte	0xb0
	.4byte	0xc2
	.byte	0xdc
	.uleb128 0x15
	.4byte	.LASF115
	.byte	0xb
	.byte	0xb1
	.4byte	0xc2
	.byte	0xe0
	.uleb128 0x15
	.4byte	.LASF116
	.byte	0xb
	.byte	0xb2
	.4byte	0xc2
	.byte	0xe4
	.uleb128 0x15
	.4byte	.LASF117
	.byte	0xb
	.byte	0xb3
	.4byte	0xc2
	.byte	0xe8
	.uleb128 0x15
	.4byte	.LASF118
	.byte	0xb
	.byte	0xb4
	.4byte	0xc2
	.byte	0xec
	.uleb128 0x15
	.4byte	.LASF119
	.byte	0xb
	.byte	0xb5
	.4byte	0xc2
	.byte	0xf0
	.uleb128 0x15
	.4byte	.LASF120
	.byte	0xb
	.byte	0xb6
	.4byte	0xc2
	.byte	0xf4
	.uleb128 0x15
	.4byte	.LASF121
	.byte	0xb
	.byte	0xbd
	.4byte	0x790
	.byte	0xf8
	.uleb128 0x18
	.string	"clk"
	.byte	0xb
	.byte	0xc4
	.4byte	0x7cf
	.byte	0xfc
	.byte	0
	.uleb128 0xe
	.4byte	0x280
	.4byte	0xa36
	.uleb128 0xf
	.4byte	0x85
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF122
	.byte	0xb
	.byte	0xc5
	.4byte	0xa41
	.uleb128 0x19
	.4byte	0x7e8
	.uleb128 0x8
	.byte	0x4
	.4byte	0x2c
	.byte	0xc
	.byte	0x46
	.4byte	0xa71
	.uleb128 0x9
	.4byte	.LASF123
	.byte	0
	.uleb128 0x9
	.4byte	.LASF124
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF125
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF126
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF127
	.byte	0x4
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF186
	.byte	0x5
	.byte	0x61
	.4byte	0xc2
	.byte	0x3
	.4byte	0xa98
	.uleb128 0x1b
	.4byte	.LASF128
	.byte	0x5
	.byte	0x61
	.4byte	0xc2
	.uleb128 0x1c
	.string	"val"
	.byte	0x5
	.byte	0x63
	.4byte	0xc2
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF130
	.byte	0x4
	.2byte	0x10e
	.byte	0x3
	.4byte	0xab2
	.uleb128 0x1e
	.4byte	.LASF129
	.byte	0x4
	.2byte	0x10e
	.4byte	0xac
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF131
	.byte	0x3
	.byte	0xa2
	.byte	0x3
	.4byte	0xad2
	.uleb128 0x1b
	.4byte	.LASF132
	.byte	0x3
	.byte	0xa2
	.4byte	0x25
	.uleb128 0x20
	.4byte	.LASF172
	.byte	0x3
	.byte	0xa4
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LASF133
	.byte	0x2
	.byte	0xc8
	.4byte	0xc2
	.byte	0x3
	.4byte	0xaed
	.uleb128 0x1c
	.string	"id"
	.byte	0x2
	.byte	0xc9
	.4byte	0x25
	.byte	0
	.uleb128 0x22
	.4byte	.LASF187
	.byte	0x1
	.2byte	0x17f
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb22
	.uleb128 0x23
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x17f
	.4byte	0xb22
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x24
	.string	"reg"
	.byte	0x1
	.2byte	0x182
	.4byte	0xc2
	.4byte	.LLST0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x178
	.uleb128 0x25
	.4byte	.LASF188
	.byte	0x1
	.byte	0x2e
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x26
	.4byte	.LASF135
	.byte	0x1
	.byte	0x32
	.4byte	0xcd
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbc0
	.uleb128 0x27
	.string	"mac"
	.byte	0x1
	.byte	0x32
	.4byte	0x184
	.4byte	.LLST1
	.uleb128 0x28
	.4byte	.LVL4
	.4byte	0x1400
	.uleb128 0x29
	.4byte	.LVL5
	.4byte	0x140b
	.4byte	0xb98
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x28
	.4byte	.LVL6
	.4byte	0x1416
	.uleb128 0x2b
	.4byte	.LVL7
	.4byte	0x1421
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	base_mac_addr
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LASF136
	.byte	0x1
	.byte	0x3e
	.4byte	0xcd
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc6e
	.uleb128 0x27
	.string	"mac"
	.byte	0x1
	.byte	0x3e
	.4byte	0x184
	.4byte	.LLST2
	.uleb128 0x2c
	.4byte	.LASF137
	.byte	0x1
	.byte	0x40
	.4byte	0x18a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.4byte	.LVL10
	.4byte	0x142a
	.4byte	0xc18
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	base_mac_addr
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.uleb128 0x28
	.4byte	.LVL11
	.4byte	0x1400
	.uleb128 0x29
	.4byte	.LVL12
	.4byte	0x140b
	.4byte	0xc4f
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL15
	.4byte	0x1421
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	base_mac_addr
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LASF138
	.byte	0x1
	.byte	0x4c
	.4byte	0xcd
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd74
	.uleb128 0x27
	.string	"mac"
	.byte	0x1
	.byte	0x4c
	.4byte	0x184
	.4byte	.LLST3
	.uleb128 0x2d
	.4byte	.LASF139
	.byte	0x1
	.byte	0x4e
	.4byte	0xc2
	.4byte	.LLST4
	.uleb128 0x2c
	.4byte	.LASF140
	.byte	0x1
	.byte	0x4f
	.4byte	0xc2
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2c
	.4byte	.LASF141
	.byte	0x1
	.byte	0x50
	.4byte	0xac
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2d
	.4byte	.LASF142
	.byte	0x1
	.byte	0x51
	.4byte	0xac
	.4byte	.LLST5
	.uleb128 0x2d
	.4byte	.LASF143
	.byte	0x1
	.byte	0x53
	.4byte	0xac
	.4byte	.LLST6
	.uleb128 0x28
	.4byte	.LVL19
	.4byte	0x1400
	.uleb128 0x29
	.4byte	.LVL20
	.4byte	0x140b
	.4byte	0xd1a
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL29
	.4byte	0x1435
	.4byte	0xd33
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.uleb128 0x28
	.4byte	.LVL31
	.4byte	0x1400
	.uleb128 0x2b
	.4byte	.LVL32
	.4byte	0x140b
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC18
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LASF144
	.byte	0x1
	.byte	0x6f
	.4byte	0xcd
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe3f
	.uleb128 0x27
	.string	"mac"
	.byte	0x1
	.byte	0x6f
	.4byte	0x184
	.4byte	.LLST7
	.uleb128 0x2d
	.4byte	.LASF139
	.byte	0x1
	.byte	0x71
	.4byte	0xc2
	.4byte	.LLST8
	.uleb128 0x2d
	.4byte	.LASF140
	.byte	0x1
	.byte	0x72
	.4byte	0xc2
	.4byte	.LLST9
	.uleb128 0x2c
	.4byte	.LASF141
	.byte	0x1
	.byte	0x73
	.4byte	0xac
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2c
	.4byte	.LASF142
	.byte	0x1
	.byte	0x74
	.4byte	0xac
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x29
	.4byte	.LVL41
	.4byte	0x1435
	.4byte	0xdee
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.uleb128 0x28
	.4byte	.LVL44
	.4byte	0x1400
	.uleb128 0x29
	.4byte	.LVL45
	.4byte	0x140b
	.4byte	0xe35
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC24
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.uleb128 0x2a
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL46
	.4byte	0x1416
	.byte	0
	.uleb128 0x26
	.4byte	.LASF145
	.byte	0x1
	.byte	0x96
	.4byte	0xcd
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xef5
	.uleb128 0x2e
	.4byte	.LASF146
	.byte	0x1
	.byte	0x96
	.4byte	0x184
	.4byte	.LLST10
	.uleb128 0x2f
	.4byte	.LASF147
	.byte	0x1
	.byte	0x96
	.4byte	0x19f
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x30
	.string	"idx"
	.byte	0x1
	.byte	0x98
	.4byte	0xac
	.4byte	.LLST11
	.uleb128 0x28
	.4byte	.LVL48
	.4byte	0x1400
	.uleb128 0x29
	.4byte	.LVL49
	.4byte	0x140b
	.4byte	0xeba
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC27
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x29
	.4byte	.LVL52
	.4byte	0x1421
	.4byte	0xed9
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL54
	.4byte	0x142a
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LASF148
	.byte	0x1
	.byte	0xac
	.4byte	0xcd
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1080
	.uleb128 0x27
	.string	"mac"
	.byte	0x1
	.byte	0xac
	.4byte	0x184
	.4byte	.LLST12
	.uleb128 0x2e
	.4byte	.LASF149
	.byte	0x1
	.byte	0xac
	.4byte	0x104
	.4byte	.LLST13
	.uleb128 0x2c
	.4byte	.LASF150
	.byte	0x1
	.byte	0xae
	.4byte	0x18a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.4byte	.LVL61
	.4byte	0x1400
	.uleb128 0x29
	.4byte	.LVL62
	.4byte	0x140b
	.4byte	0xf71
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC27
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x28
	.4byte	.LVL65
	.4byte	0x1400
	.uleb128 0x29
	.4byte	.LVL66
	.4byte	0x140b
	.4byte	0xfa8
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC31
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x29
	.4byte	.LVL69
	.4byte	0xbc0
	.4byte	0xfbc
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x29
	.4byte	.LVL70
	.4byte	0xd74
	.4byte	0xfd0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x29
	.4byte	.LVL71
	.4byte	0x1421
	.4byte	0xfef
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.uleb128 0x29
	.4byte	.LVL74
	.4byte	0x1421
	.4byte	0x100e
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.uleb128 0x29
	.4byte	.LVL78
	.4byte	0x1421
	.4byte	0x102d
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.uleb128 0x29
	.4byte	.LVL82
	.4byte	0x1421
	.4byte	0x104c
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.uleb128 0x28
	.4byte	.LVL86
	.4byte	0x1400
	.uleb128 0x2b
	.4byte	.LVL87
	.4byte	0x140b
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC33
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LASF151
	.byte	0x1
	.byte	0xea
	.4byte	0xcd
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10b6
	.uleb128 0x2e
	.4byte	.LASF152
	.byte	0x1
	.byte	0xea
	.4byte	0x10f
	.4byte	.LLST14
	.uleb128 0x30
	.string	"i"
	.byte	0x1
	.byte	0xec
	.4byte	0x25
	.4byte	.LLST15
	.byte	0
	.uleb128 0x31
	.4byte	.LASF156
	.byte	0x1
	.2byte	0x10b
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1293
	.uleb128 0x32
	.4byte	.LASF153
	.byte	0x1
	.2byte	0x10d
	.4byte	0x1293
	.uleb128 0x33
	.4byte	.LASF154
	.byte	0x1
	.2byte	0x10e
	.4byte	0x1293
	.4byte	.LLST16
	.uleb128 0x34
	.4byte	0xad2
	.4byte	.LBB18
	.4byte	.LBE18-.LBB18
	.byte	0x1
	.2byte	0x10d
	.4byte	0x1110
	.uleb128 0x35
	.4byte	.LBB19
	.4byte	.LBE19-.LBB19
	.uleb128 0x36
	.4byte	0xae2
	.4byte	.LLST17
	.byte	0
	.byte	0
	.uleb128 0x34
	.4byte	0xab2
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.byte	0x1
	.2byte	0x12b
	.4byte	0x1145
	.uleb128 0x37
	.4byte	0xabe
	.byte	0
	.uleb128 0x35
	.4byte	.LBB21
	.4byte	.LBE21-.LBB21
	.uleb128 0x2b
	.4byte	.LVL104
	.4byte	0x1440
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x34
	.4byte	0xab2
	.4byte	.LBB22
	.4byte	.LBE22-.LBB22
	.byte	0x1
	.2byte	0x12c
	.4byte	0x117a
	.uleb128 0x37
	.4byte	0xabe
	.byte	0x1
	.uleb128 0x35
	.4byte	.LBB23
	.4byte	.LBE23-.LBB23
	.uleb128 0x2b
	.4byte	.LVL105
	.4byte	0x1440
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x34
	.4byte	0xa98
	.4byte	.LBB24
	.4byte	.LBE24-.LBB24
	.byte	0x1
	.2byte	0x13a
	.4byte	0x1194
	.uleb128 0x38
	.4byte	0xaa5
	.byte	0
	.uleb128 0x34
	.4byte	0xa98
	.4byte	.LBB26
	.4byte	.LBE26-.LBB26
	.byte	0x1
	.2byte	0x13b
	.4byte	0x11ae
	.uleb128 0x38
	.4byte	0xaa5
	.byte	0
	.uleb128 0x34
	.4byte	0xa98
	.4byte	.LBB28
	.4byte	.LBE28-.LBB28
	.byte	0x1
	.2byte	0x13c
	.4byte	0x11c8
	.uleb128 0x38
	.4byte	0xaa5
	.byte	0
	.uleb128 0x34
	.4byte	0xa71
	.4byte	.LBB30
	.4byte	.LBE30-.LBB30
	.byte	0x1
	.2byte	0x13f
	.4byte	0x11f9
	.uleb128 0x39
	.4byte	0xa81
	.4byte	0x3ff000d0
	.uleb128 0x35
	.4byte	.LBB31
	.4byte	.LBE31-.LBB31
	.uleb128 0x36
	.4byte	0xa8c
	.4byte	.LLST18
	.byte	0
	.byte	0
	.uleb128 0x34
	.4byte	0xa71
	.4byte	.LBB32
	.4byte	.LBE32-.LBB32
	.byte	0x1
	.2byte	0x147
	.4byte	0x122a
	.uleb128 0x39
	.4byte	0xa81
	.4byte	0x3ff000c4
	.uleb128 0x35
	.4byte	.LBB33
	.4byte	.LBE33-.LBB33
	.uleb128 0x36
	.4byte	0xa8c
	.4byte	.LLST19
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL99
	.4byte	0x144b
	.4byte	0x1249
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0xd
	.byte	0x74
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x30
	.byte	0x29
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0
	.uleb128 0x28
	.4byte	.LVL100
	.4byte	0x1456
	.uleb128 0x28
	.4byte	.LVL102
	.4byte	0x1461
	.uleb128 0x29
	.4byte	.LVL103
	.4byte	0x146c
	.4byte	0x126f
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x29
	.4byte	.LVL113
	.4byte	0x1477
	.4byte	0x1283
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL119
	.4byte	0x1483
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0xc2
	.uleb128 0x3a
	.4byte	.LASF155
	.byte	0x1
	.byte	0xf8
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12cd
	.uleb128 0x30
	.string	"i"
	.byte	0x1
	.byte	0xfa
	.4byte	0x25
	.4byte	.LLST20
	.uleb128 0x28
	.4byte	.LVL124
	.4byte	0x148e
	.uleb128 0x28
	.4byte	.LVL125
	.4byte	0x10b6
	.byte	0
	.uleb128 0x3b
	.4byte	.LASF157
	.byte	0x1
	.2byte	0x164
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12ed
	.uleb128 0x28
	.4byte	.LVL126
	.4byte	0x149a
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF158
	.byte	0x1
	.2byte	0x169
	.4byte	0xc2
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1319
	.uleb128 0x2b
	.4byte	.LVL127
	.4byte	0x14a6
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1000
	.byte	0
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF159
	.byte	0x1
	.2byte	0x16e
	.4byte	0xc2
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1345
	.uleb128 0x2b
	.4byte	.LVL128
	.4byte	0x14b1
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1000
	.byte	0
	.byte	0
	.uleb128 0x3d
	.4byte	.LASF160
	.byte	0x1
	.2byte	0x175
	.4byte	0xa1
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3d
	.4byte	.LASF161
	.byte	0x1
	.2byte	0x17a
	.4byte	0xa1
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3b
	.4byte	.LASF162
	.byte	0x1
	.2byte	0x196
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x13a6
	.uleb128 0x23
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x196
	.4byte	0xb22
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2b
	.4byte	.LVL130
	.4byte	0xaed
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3e
	.string	"TAG"
	.byte	0x1
	.byte	0x27
	.4byte	0x19a
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC3
	.byte	0x9f
	.uleb128 0x2c
	.4byte	.LASF163
	.byte	0x1
	.byte	0x29
	.4byte	0x18a
	.uleb128 0x5
	.byte	0x3
	.4byte	base_mac_addr
	.uleb128 0xe
	.4byte	0x10f
	.4byte	0x13d9
	.uleb128 0xf
	.4byte	0x85
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF164
	.byte	0x1
	.byte	0x2c
	.4byte	0x13c9
	.uleb128 0x5
	.byte	0x3
	.4byte	shutdown_handlers
	.uleb128 0x3f
	.4byte	.LASF165
	.byte	0xb
	.byte	0xc6
	.4byte	0xa36
	.uleb128 0x3f
	.4byte	.LASF166
	.byte	0xb
	.byte	0xc7
	.4byte	0xa36
	.uleb128 0x40
	.4byte	.LASF167
	.4byte	.LASF167
	.byte	0xa
	.byte	0x4c
	.uleb128 0x40
	.4byte	.LASF168
	.4byte	.LASF168
	.byte	0xa
	.byte	0x60
	.uleb128 0x40
	.4byte	.LASF169
	.4byte	.LASF169
	.byte	0xd
	.byte	0x47
	.uleb128 0x41
	.4byte	.LASF189
	.4byte	.LASF189
	.uleb128 0x40
	.4byte	.LASF170
	.4byte	.LASF170
	.byte	0xe
	.byte	0x16
	.uleb128 0x40
	.4byte	.LASF171
	.4byte	.LASF171
	.byte	0xf
	.byte	0x6b
	.uleb128 0x40
	.4byte	.LASF172
	.4byte	.LASF172
	.byte	0x3
	.byte	0xa4
	.uleb128 0x40
	.4byte	.LASF173
	.4byte	.LASF173
	.byte	0x10
	.byte	0x50
	.uleb128 0x40
	.4byte	.LASF174
	.4byte	.LASF174
	.byte	0x11
	.byte	0x1b
	.uleb128 0x40
	.4byte	.LASF175
	.4byte	.LASF175
	.byte	0xc
	.byte	0xfd
	.uleb128 0x40
	.4byte	.LASF176
	.4byte	.LASF176
	.byte	0x12
	.byte	0x5f
	.uleb128 0x42
	.4byte	.LASF177
	.4byte	.LASF177
	.byte	0xc
	.2byte	0x115
	.uleb128 0x40
	.4byte	.LASF178
	.4byte	.LASF178
	.byte	0x10
	.byte	0x56
	.uleb128 0x42
	.4byte	.LASF179
	.4byte	.LASF179
	.byte	0x13
	.2byte	0x48c
	.uleb128 0x42
	.4byte	.LASF180
	.4byte	.LASF180
	.byte	0x14
	.2byte	0x110
	.uleb128 0x40
	.4byte	.LASF181
	.4byte	.LASF181
	.byte	0x15
	.byte	0x63
	.uleb128 0x40
	.4byte	.LASF182
	.4byte	.LASF182
	.byte	0x15
	.byte	0x75
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
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
	.uleb128 0x9
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x13
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x17
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
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x35
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x6
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
	.uleb128 0xb
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3b
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
	.uleb128 0x3d
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
	.byte	0
	.byte	0
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.uleb128 0x41
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
	.uleb128 0x42
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
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL3
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL8
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL9
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL16
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL17
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL30
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL24
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL30
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL35
	.4byte	.LFE29
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL18
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL23
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL37
	.4byte	.LVL41-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL41-1
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL38
	.4byte	.LVL41-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL39
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL47
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL51
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
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL56
	.4byte	.LFE31
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL60
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL64
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL67
	.4byte	.LVL68
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL68
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
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL80
	.4byte	.LVL81
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL81
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL84
	.4byte	.LVL85
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL85
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL88
	.4byte	.LFE32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL60
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL75
	.4byte	.LVL77
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL77
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL79
	.4byte	.LVL81
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL81
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL83
	.4byte	.LVL85
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL85
	.4byte	.LFE32
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL89
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL93
	.4byte	.LVL94
	.2byte	0x2
	.byte	0x78
	.sleb128 0
	.4byte	.LVL94
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL96
	.4byte	.LFE33
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL90
	.4byte	.LVL91
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL91
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL94
	.4byte	.LFE33
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL98
	.4byte	.LVL99-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL99-1
	.4byte	.LVL101
	.2byte	0xe
	.byte	0x74
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x30
	.byte	0x29
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL101
	.4byte	.LVL105
	.2byte	0xe
	.byte	0x74
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x30
	.byte	0x29
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL105
	.4byte	.LVL107
	.2byte	0xd
	.byte	0x74
	.sleb128 0
	.byte	0x30
	.byte	0x73
	.sleb128 0
	.byte	0x30
	.byte	0x29
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL107
	.4byte	.LVL109
	.2byte	0x5
	.byte	0x73
	.sleb128 0
	.byte	0x30
	.byte	0x29
	.byte	0x9f
	.4byte	.LVL109
	.4byte	.LVL114
	.2byte	0xd
	.byte	0x31
	.byte	0x72
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x30
	.byte	0x29
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL115
	.4byte	.LVL116
	.2byte	0xd
	.byte	0x31
	.byte	0x72
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x30
	.byte	0x29
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL116
	.4byte	.LVL117
	.2byte	0xe
	.byte	0x31
	.byte	0x74
	.sleb128 0
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x30
	.byte	0x29
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL117
	.4byte	.LVL118
	.2byte	0x11
	.byte	0x31
	.byte	0xc
	.4byte	0x3ff00038
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x30
	.byte	0x29
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL97
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL101
	.4byte	.LVL114
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL115
	.4byte	.LVL118
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL108
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL111
	.4byte	.LVL113-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL120
	.4byte	.LVL121
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL121
	.4byte	.LFE34
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x9c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
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
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB27
	.4byte	.LFE27
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
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	.LFB37
	.4byte	.LFE37
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF139:
	.string	"mac_low"
.LASF54:
	.string	"load_high"
.LASF146:
	.string	"local_mac"
.LASF171:
	.string	"esp_crc8"
.LASF110:
	.string	"reserved_cc"
.LASF98:
	.string	"int_raw"
.LASF94:
	.string	"lactloadlo"
.LASF130:
	.string	"uart_tx_wait_idle"
.LASF22:
	.string	"ESP_MAC_ETH"
.LASF5:
	.string	"__uint8_t"
.LASF64:
	.string	"start_cycling"
.LASF111:
	.string	"reserved_d0"
.LASF30:
	.string	"revision"
.LASF89:
	.string	"lactlo"
.LASF112:
	.string	"reserved_d4"
.LASF21:
	.string	"ESP_MAC_BT"
.LASF113:
	.string	"reserved_d8"
.LASF9:
	.string	"long long unsigned int"
.LASF128:
	.string	"addr"
.LASF77:
	.string	"wdt_config0"
.LASF78:
	.string	"wdt_config1"
.LASF188:
	.string	"system_init"
.LASF80:
	.string	"wdt_config3"
.LASF81:
	.string	"wdt_config4"
.LASF82:
	.string	"wdt_config5"
.LASF125:
	.string	"RTC_CPU_FREQ_160M"
.LASF160:
	.string	"system_get_sdk_version"
.LASF176:
	.string	"xt_ints_off"
.LASF36:
	.string	"ESP_LOG_DEBUG"
.LASF8:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF122:
	.string	"timg_dev_t"
.LASF117:
	.string	"reserved_e8"
.LASF114:
	.string	"reserved_dc"
.LASF27:
	.string	"model"
.LASF53:
	.string	"load_low"
.LASF115:
	.string	"reserved_e0"
.LASF10:
	.string	"long int"
.LASF116:
	.string	"reserved_e4"
.LASF162:
	.string	"esp_chip_info"
.LASF51:
	.string	"alarm_low"
.LASF168:
	.string	"esp_log_write"
.LASF25:
	.string	"CHIP_ESP32"
.LASF189:
	.string	"memcpy"
.LASF184:
	.string	"C:/esp/esp-idf/components/esp32/system_api.c"
.LASF174:
	.string	"esp_dport_access_int_pause"
.LASF46:
	.string	"enable"
.LASF140:
	.string	"mac_high"
.LASF180:
	.string	"esp_wifi_restore"
.LASF44:
	.string	"autoreload"
.LASF1:
	.string	"short unsigned int"
.LASF181:
	.string	"heap_caps_get_free_size"
.LASF145:
	.string	"esp_derive_mac"
.LASF7:
	.string	"__uint32_t"
.LASF175:
	.string	"rtc_clk_slow_freq_get_hz"
.LASF118:
	.string	"reserved_ec"
.LASF185:
	.string	"C:\\\\esp\\\\esp32-ArkPOS2\\\\ArkPOS2-esp\\\\build\\\\esp32"
.LASF26:
	.string	"esp_chip_model_t"
.LASF72:
	.string	"lact"
.LASF67:
	.string	"value"
.LASF83:
	.string	"wdt_feed"
.LASF142:
	.string	"calc_crc"
.LASF119:
	.string	"reserved_f0"
.LASF0:
	.string	"unsigned int"
.LASF41:
	.string	"level_int_en"
.LASF48:
	.string	"cnt_low"
.LASF167:
	.string	"esp_log_timestamp"
.LASF164:
	.string	"shutdown_handlers"
.LASF12:
	.string	"long unsigned int"
.LASF55:
	.string	"reload"
.LASF29:
	.string	"cores"
.LASF126:
	.string	"RTC_CPU_FREQ_240M"
.LASF153:
	.string	"core_id"
.LASF137:
	.string	"null_mac"
.LASF74:
	.string	"date"
.LASF157:
	.string	"system_restore"
.LASF20:
	.string	"ESP_MAC_WIFI_SOFTAP"
.LASF99:
	.string	"int_st_timers"
.LASF149:
	.string	"type"
.LASF76:
	.string	"hw_timer"
.LASF144:
	.string	"esp_efuse_mac_get_default"
.LASF96:
	.string	"lactload"
.LASF45:
	.string	"increase"
.LASF6:
	.string	"__int32_t"
.LASF121:
	.string	"timg_date"
.LASF133:
	.string	"xPortGetCoreID"
.LASF85:
	.string	"rtc_cali_cfg"
.LASF28:
	.string	"features"
.LASF152:
	.string	"handler"
.LASF156:
	.string	"esp_restart_noos"
.LASF35:
	.string	"ESP_LOG_INFO"
.LASF187:
	.string	"get_chip_info_esp32"
.LASF143:
	.string	"version"
.LASF158:
	.string	"esp_get_free_heap_size"
.LASF151:
	.string	"esp_register_shutdown_handler"
.LASF11:
	.string	"sizetype"
.LASF95:
	.string	"lactloadhi"
.LASF124:
	.string	"RTC_CPU_FREQ_80M"
.LASF177:
	.string	"rtc_clk_cpu_freq_set"
.LASF97:
	.string	"int_ena"
.LASF127:
	.string	"RTC_CPU_FREQ_2M"
.LASF90:
	.string	"lacthi"
.LASF57:
	.string	"sys_reset_length"
.LASF65:
	.string	"clk_sel"
.LASF49:
	.string	"cnt_high"
.LASF38:
	.string	"esp_log_level_t"
.LASF86:
	.string	"rtc_cali_cfg1"
.LASF150:
	.string	"efuse_mac"
.LASF132:
	.string	"cpu_no"
.LASF23:
	.string	"esp_mac_type_t"
.LASF37:
	.string	"ESP_LOG_VERBOSE"
.LASF178:
	.string	"esp_cpu_unstall"
.LASF141:
	.string	"efuse_crc"
.LASF102:
	.string	"reserved_ac"
.LASF40:
	.string	"alarm_en"
.LASF18:
	.string	"_Bool"
.LASF15:
	.string	"int32_t"
.LASF123:
	.string	"RTC_CPU_FREQ_XTAL"
.LASF75:
	.string	"reserved28"
.LASF183:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF69:
	.string	"cpst_en"
.LASF4:
	.string	"short int"
.LASF154:
	.string	"other_core_id"
.LASF101:
	.string	"reserved_a8"
.LASF33:
	.string	"ESP_LOG_ERROR"
.LASF134:
	.string	"out_info"
.LASF93:
	.string	"lactalarmhi"
.LASF92:
	.string	"lactalarmlo"
.LASF63:
	.string	"clk_prescale"
.LASF103:
	.string	"reserved_b0"
.LASF172:
	.string	"Cache_Read_Disable_rom"
.LASF100:
	.string	"int_clr_timers"
.LASF84:
	.string	"wdt_wprotect"
.LASF56:
	.string	"flashboot_mod_en"
.LASF138:
	.string	"esp_efuse_mac_get_custom"
.LASF16:
	.string	"uint32_t"
.LASF39:
	.string	"reserved0"
.LASF135:
	.string	"esp_base_mac_addr_set"
.LASF186:
	.string	"DPORT_READ_PERI_REG"
.LASF173:
	.string	"esp_cpu_stall"
.LASF129:
	.string	"uart_no"
.LASF32:
	.string	"ESP_LOG_NONE"
.LASF13:
	.string	"char"
.LASF31:
	.string	"esp_chip_info_t"
.LASF52:
	.string	"alarm_high"
.LASF120:
	.string	"reserved_f4"
.LASF47:
	.string	"config"
.LASF161:
	.string	"esp_get_idf_version"
.LASF169:
	.string	"abort"
.LASF68:
	.string	"rtc_only"
.LASF62:
	.string	"stg0"
.LASF61:
	.string	"stg1"
.LASF60:
	.string	"stg2"
.LASF59:
	.string	"stg3"
.LASF104:
	.string	"reserved_b4"
.LASF170:
	.string	"memcmp"
.LASF42:
	.string	"edge_int_en"
.LASF105:
	.string	"reserved_b8"
.LASF79:
	.string	"wdt_config2"
.LASF165:
	.string	"TIMERG0"
.LASF166:
	.string	"TIMERG1"
.LASF131:
	.string	"Cache_Read_Disable"
.LASF3:
	.string	"unsigned char"
.LASF163:
	.string	"base_mac_addr"
.LASF87:
	.string	"lactconfig"
.LASF24:
	.string	"shutdown_handler_t"
.LASF50:
	.string	"update"
.LASF179:
	.string	"vTaskSuspendAll"
.LASF19:
	.string	"ESP_MAC_WIFI_STA"
.LASF34:
	.string	"ESP_LOG_WARN"
.LASF58:
	.string	"cpu_reset_length"
.LASF159:
	.string	"esp_get_minimum_free_heap_size"
.LASF148:
	.string	"esp_read_mac"
.LASF17:
	.string	"esp_err_t"
.LASF106:
	.string	"reserved_bc"
.LASF182:
	.string	"heap_caps_get_minimum_free_size"
.LASF14:
	.string	"uint8_t"
.LASF136:
	.string	"esp_base_mac_addr_get"
.LASF155:
	.string	"esp_restart"
.LASF43:
	.string	"divider"
.LASF91:
	.string	"lactupdate"
.LASF107:
	.string	"reserved_c0"
.LASF147:
	.string	"universal_mac"
.LASF108:
	.string	"reserved_c4"
.LASF70:
	.string	"lac_en"
.LASF71:
	.string	"step_len"
.LASF109:
	.string	"reserved_c8"
.LASF73:
	.string	"reserved4"
.LASF66:
	.string	"start"
.LASF88:
	.string	"lactrtc"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-73-ge28a011) 5.2.0"
