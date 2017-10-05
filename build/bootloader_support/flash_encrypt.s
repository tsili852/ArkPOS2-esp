	.file	"flash_encrypt.c"
	.text
.Ltext0:
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC10:
	.string	"flash_encrypt"
	.align	4
.LC12:
	.string	"\033[0;32mI (%d) %s: Generating new flash encryption key...\033[0m\n"
	.align	4
.LC15:
	.string	"\033[0;32mI (%d) %s: Read & write protecting new key...\033[0m\n"
	.align	4
.LC19:
	.string	"\033[0;31mE (%d) %s: Flash encryption key has to be either unset or both read and write protected\033[0m\n"
	.align	4
.LC21:
	.string	"\033[0;33mW (%d) %s: Using pre-loaded flash encryption key in EFUSE block 1\033[0m\n"
	.align	4
.LC23:
	.string	"\033[0;32mI (%d) %s: Setting CRYPT_CONFIG efuse to 0xF\033[0m\n"
	.align	4
.LC27:
	.string	"\033[0;32mI (%d) %s: Disable UART bootloader encryption...\033[0m\n"
	.align	4
.LC29:
	.string	"\033[0;32mI (%d) %s: Disable UART bootloader decryption...\033[0m\n"
	.align	4
.LC31:
	.string	"\033[0;32mI (%d) %s: Disable UART bootloader MMU cache...\033[0m\n"
	.align	4
.LC33:
	.string	"\033[0;32mI (%d) %s: Disable JTAG...\033[0m\n"
	.align	4
.LC35:
	.string	"\033[0;32mI (%d) %s: Disable ROM BASIC interpreter fallback...\033[0m\n"
	.section	.text.initialise_flash_encryption,"ax",@progbits
	.literal_position
	.literal .LC0, 1073061888
	.literal .LC1, 65536
	.literal .LC2, 1073061944
	.literal .LC3, 1073061948
	.literal .LC4, 1073061952
	.literal .LC5, 1073061956
	.literal .LC6, 1073061960
	.literal .LC7, 1073061964
	.literal .LC8, 1073061968
	.literal .LC9, 1073061972
	.literal .LC11, .LC10
	.literal .LC13, .LC12
	.literal .LC14, 268265510
	.literal .LC16, .LC15
	.literal .LC17, 1073061916
	.literal .LC18, 65664
	.literal .LC20, .LC19
	.literal .LC22, .LC21
	.literal .LC24, .LC23
	.literal .LC25, 1073061936
	.literal .LC26, -268435456
	.literal .LC28, .LC27
	.literal .LC30, .LC29
	.literal .LC32, .LC31
	.literal .LC34, .LC33
	.literal .LC36, .LC35
	.literal .LC37, 1073061940
	.align	4
	.type	initialise_flash_encryption, @function
initialise_flash_encryption:
.LFB11:
	.file 1 "C:/esp/esp-idf/components/bootloader_support/src/flash_encrypt.c"
	.loc 1 64 0
	entry	sp, 64
.LCFI0:
	.loc 1 68 0
	l32r	a2, .LC0
	memw
	l32i.n	a8, a2, 0
.LVL0:
	.loc 1 69 0
	l32r	a10, .LC1
	and	a10, a8, a10
.LVL1:
	.loc 1 70 0
	movi	a9, 0x80
	and	a9, a8, a9
.LVL2:
	.loc 1 71 0
	movi.n	a8, 1
.LVL3:
	movi.n	a2, 0
	mov.n	a3, a2
	moveqz	a3, a8, a10
	extui	a10, a3, 0, 8
.LVL4:
	.loc 1 72 0
	movnez	a8, a2, a9
	extui	a8, a8, 0, 8
	.loc 1 71 0
	bnone	a10, a8, .L2
	.loc 1 73 0
	l32r	a2, .LC2
	memw
	l32i.n	a2, a2, 0
	bnez.n	a2, .L2
	.loc 1 74 0
	l32r	a2, .LC3
	memw
	l32i.n	a2, a2, 0
	bnez.n	a2, .L2
	.loc 1 75 0
	l32r	a2, .LC4
	memw
	l32i.n	a2, a2, 0
	bnez.n	a2, .L2
	.loc 1 76 0
	l32r	a2, .LC5
	memw
	l32i.n	a2, a2, 0
	bnez.n	a2, .L2
	.loc 1 77 0
	l32r	a2, .LC6
	memw
	l32i.n	a2, a2, 0
	bnez.n	a2, .L2
	.loc 1 78 0
	l32r	a2, .LC7
	memw
	l32i.n	a2, a2, 0
	bnez.n	a2, .L2
	.loc 1 79 0
	l32r	a2, .LC8
	memw
	l32i.n	a2, a2, 0
	bnez.n	a2, .L2
	.loc 1 80 0
	l32r	a2, .LC9
	memw
	l32i.n	a2, a2, 0
	bnez.n	a2, .L2
.LBB4:
	.loc 1 81 0 discriminator 1
	call8	esp_log_timestamp
.LVL5:
	l32r	a11, .LC11
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC13
	movi.n	a10, 3
	call8	esp_log_write
.LVL6:
	.loc 1 83 0 discriminator 1
	movi.n	a11, 0x20
	mov.n	a10, sp
	call8	bootloader_fill_random
.LVL7:
.LBB5:
	.loc 1 84 0 discriminator 1
	movi.n	a8, 0
	j	.L3
.LVL8:
.L4:
	.loc 1 86 0 discriminator 2
	l32r	a2, .LC14
	add.n	a2, a8, a2
	slli	a2, a2, 2
	addx4	a9, a8, sp
	l32i.n	a9, a9, 0
	memw
	s32i.n	a9, a2, 0
	.loc 1 84 0 discriminator 2
	addi.n	a8, a8, 1
.LVL9:
.L3:
	.loc 1 84 0 is_stmt 0 discriminator 1
	blti	a8, 8, .L4
.LBE5:
	.loc 1 88 0 is_stmt 1
	movi.n	a2, 0
	s32i.n	a2, sp, 0
	s32i.n	a2, sp, 4
	s32i.n	a2, sp, 8
	s32i.n	a2, sp, 12
	s32i.n	a2, sp, 16
	s32i.n	a2, sp, 20
	s32i.n	a2, sp, 24
	s32i.n	a2, sp, 28
	.loc 1 89 0
	call8	esp_efuse_burn_new_values
.LVL10:
	.loc 1 91 0
	call8	esp_log_timestamp
.LVL11:
	l32r	a11, .LC11
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC16
	movi.n	a10, 3
	call8	esp_log_write
.LVL12:
	.loc 1 92 0
	l32r	a8, .LC18
	l32r	a2, .LC17
	memw
	s32i.n	a8, a2, 0
	.loc 1 93 0
	call8	esp_efuse_burn_new_values
.LVL13:
.LBE4:
	.loc 1 80 0
	j	.L5
.LVL14:
.L2:
	.loc 1 96 0
	or	a8, a10, a8
	beqz.n	a8, .L6
	.loc 1 97 0 discriminator 1
	call8	esp_log_timestamp
.LVL15:
	l32r	a11, .LC11
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC20
	movi.n	a10, 1
	call8	esp_log_write
.LVL16:
	.loc 1 98 0 discriminator 1
	movi	a2, 0x103
	retw.n
.LVL17:
.L6:
	.loc 1 100 0 discriminator 1
	call8	esp_log_timestamp
.LVL18:
	l32r	a11, .LC11
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC22
	movi.n	a10, 2
	call8	esp_log_write
.LVL19:
.L5:
	.loc 1 113 0 discriminator 1
	call8	esp_log_timestamp
.LVL20:
	l32r	a2, .LC11
	mov.n	a14, a2
	mov.n	a13, a10
	l32r	a12, .LC24
	mov.n	a11, a2
	movi.n	a10, 3
	call8	esp_log_write
.LVL21:
	.loc 1 114 0 discriminator 1
	l32r	a9, .LC26
	l32r	a8, .LC25
	memw
	s32i.n	a9, a8, 0
	.loc 1 115 0 discriminator 1
	call8	esp_efuse_burn_new_values
.LVL22:
	.loc 1 119 0 discriminator 1
	call8	esp_log_timestamp
.LVL23:
	mov.n	a14, a2
	mov.n	a13, a10
	l32r	a12, .LC28
	mov.n	a11, a2
	movi.n	a10, 3
	call8	esp_log_write
.LVL24:
	.loc 1 125 0 discriminator 1
	call8	esp_log_timestamp
.LVL25:
	mov.n	a14, a2
	mov.n	a13, a10
	l32r	a12, .LC30
	mov.n	a11, a2
	movi.n	a10, 3
	call8	esp_log_write
.LVL26:
	.loc 1 131 0 discriminator 1
	call8	esp_log_timestamp
.LVL27:
	mov.n	a14, a2
	mov.n	a13, a10
	l32r	a12, .LC32
	mov.n	a11, a2
	movi.n	a10, 3
	call8	esp_log_write
.LVL28:
	.loc 1 137 0 discriminator 1
	call8	esp_log_timestamp
.LVL29:
	mov.n	a14, a2
	mov.n	a13, a10
	l32r	a12, .LC34
	mov.n	a11, a2
	movi.n	a10, 3
	call8	esp_log_write
.LVL30:
	.loc 1 143 0 discriminator 1
	call8	esp_log_timestamp
.LVL31:
	mov.n	a14, a2
	mov.n	a13, a10
	l32r	a12, .LC36
	mov.n	a11, a2
	movi.n	a10, 3
	call8	esp_log_write
.LVL32:
	.loc 1 150 0 discriminator 1
	movi	a8, 0x3c4
	l32r	a2, .LC37
	memw
	s32i.n	a8, a2, 0
	.loc 1 151 0 discriminator 1
	call8	esp_efuse_burn_new_values
.LVL33:
	.loc 1 154 0 discriminator 1
	movi.n	a2, 0
	.loc 1 155 0 discriminator 1
	retw.n
.LFE11:
	.size	initialise_flash_encryption, .-initialise_flash_encryption
	.section	.rodata.str1.4
	.align	4
.LC39:
	.string	"\033[0;31mE (%d) %s: esp_flash_encrypt_region bad src_addr 0x%x\033[0m\n"
	.align	4
.LC42:
	.string	"\033[0;31mE (%d) %s: flash operation failed: 0x%x\033[0m\n"
	.section	.text.esp_flash_encrypt_region,"ax",@progbits
	.literal_position
	.literal .LC38, .LC10
	.literal .LC40, .LC39
	.literal .LC41, 4096
	.literal .LC43, .LC42
	.align	4
	.global	esp_flash_encrypt_region
	.type	esp_flash_encrypt_region, @function
esp_flash_encrypt_region:
.LFB16:
	.loc 1 310 0
.LVL34:
	entry	sp, 4128
.LCFI1:
	.loc 1 314 0
	extui	a4, a2, 0, 12
	beqz.n	a4, .L13
	.loc 1 315 0 discriminator 1
	call8	esp_log_timestamp
.LVL35:
	l32r	a11, .LC38
	mov.n	a15, a2
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC40
	movi.n	a10, 1
	call8	esp_log_write
.LVL36:
	.loc 1 316 0 discriminator 1
	movi.n	a2, -1
.LVL37:
	retw.n
.LVL38:
.L12:
.LBB6:
.LBB7:
	.loc 1 320 0
	add.n	a6, a5, a2
.LVL39:
	.loc 1 321 0
	movi.n	a13, 0
	l32r	a12, .LC41
	mov.n	a11, sp
	mov.n	a10, a6
	call8	bootloader_flash_read
.LVL40:
	mov.n	a4, a10
.LVL41:
	.loc 1 322 0
	bnez.n	a10, .L11
	.loc 1 325 0
	srli	a10, a6, 12
	call8	bootloader_flash_erase_sector
.LVL42:
	mov.n	a4, a10
.LVL43:
	.loc 1 326 0
	bnez.n	a10, .L11
	.loc 1 329 0
	movi.n	a13, 1
	l32r	a12, .LC41
	mov.n	a11, sp
	mov.n	a10, a6
	call8	bootloader_flash_write
.LVL44:
	mov.n	a4, a10
.LVL45:
	.loc 1 330 0
	bnez.n	a10, .L11
.LBE7:
	.loc 1 319 0 discriminator 2
	addmi	a5, a5, 0x1000
.LVL46:
	j	.L9
.LVL47:
.L13:
.LBE6:
	movi.n	a5, 0
.L9:
.LVL48:
.LBB8:
	.loc 1 319 0 is_stmt 0 discriminator 1
	bltu	a5, a3, .L12
.LBE8:
	.loc 1 334 0 is_stmt 1
	movi.n	a2, 0
.LVL49:
	retw.n
.LVL50:
.L11:
	.loc 1 337 0 discriminator 1
	call8	esp_log_timestamp
.LVL51:
	l32r	a11, .LC38
	mov.n	a15, a4
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC43
	movi.n	a10, 1
	call8	esp_log_write
.LVL52:
	.loc 1 338 0 discriminator 1
	mov.n	a2, a4
.LVL53:
	.loc 1 339 0 discriminator 1
	retw.n
.LFE16:
	.size	esp_flash_encrypt_region, .-esp_flash_encrypt_region
	.section	.rodata.str1.4
	.align	4
.LC46:
	.string	"\033[0;31mE (%d) %s: Failed to encrypt bootloader in place: 0x%x\033[0m\n"
	.align	4
.LC49:
	.string	"\033[0;31mE (%d) %s: Failed to encrypt bootloader IV & digest in place: 0x%x\033[0m\n"
	.align	4
.LC51:
	.string	"\033[0;33mW (%d) %s: no valid bootloader was found\033[0m\n"
	.section	.text.encrypt_bootloader,"ax",@progbits
	.literal_position
	.literal .LC44, 4096
	.literal .LC45, .LC10
	.literal .LC47, .LC46
	.literal .LC48, 1073061912
	.literal .LC50, .LC49
	.literal .LC52, .LC51
	.align	4
	.type	encrypt_bootloader, @function
encrypt_bootloader:
.LFB13:
	.loc 1 216 0
	entry	sp, 48
.LCFI2:
	.loc 1 220 0
	mov.n	a10, sp
	call8	esp_image_verify_bootloader
.LVL54:
	mov.n	a2, a10
	bnez.n	a10, .L15
	.loc 1 222 0
	l32i.n	a11, sp, 0
	l32r	a10, .LC44
	call8	esp_flash_encrypt_region
.LVL55:
	mov.n	a3, a10
.LVL56:
	.loc 1 223 0
	beqz.n	a10, .L16
	.loc 1 224 0 discriminator 1
	call8	esp_log_timestamp
.LVL57:
	l32r	a11, .LC45
	mov.n	a15, a3
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC47
	movi.n	a10, 1
	call8	esp_log_write
.LVL58:
	.loc 1 225 0 discriminator 1
	mov.n	a2, a3
	retw.n
.L16:
.LBB9:
.LBB10:
	.file 2 "C:/esp/esp-idf/components/bootloader_support/include/esp_secure_boot.h"
	.loc 2 38 0
	l32r	a3, .LC48
.LVL59:
	memw
	l32i.n	a3, a3, 0
.LBE10:
.LBE9:
	.loc 1 228 0
	bbci	a3, 4, .L17
	.loc 1 233 0
	l32r	a11, .LC44
	movi.n	a10, 0
.LVL60:
	call8	esp_flash_encrypt_region
.LVL61:
	mov.n	a3, a10
.LVL62:
	.loc 1 235 0
	beqz.n	a10, .L17
	.loc 1 236 0 discriminator 1
	call8	esp_log_timestamp
.LVL63:
	l32r	a11, .LC45
	mov.n	a15, a3
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC50
	movi.n	a10, 1
	call8	esp_log_write
.LVL64:
	.loc 1 237 0 discriminator 1
	mov.n	a2, a3
	retw.n
.LVL65:
.L15:
	.loc 1 242 0 discriminator 1
	call8	esp_log_timestamp
.LVL66:
	l32r	a11, .LC45
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC52
	movi.n	a10, 2
	call8	esp_log_write
.LVL67:
	.loc 1 245 0 discriminator 1
	movi.n	a2, 0
.L17:
	.loc 1 246 0
	retw.n
.LFE13:
	.size	encrypt_bootloader, .-encrypt_bootloader
	.section	.rodata.str1.4
	.align	4
.LC56:
	.string	"\033[0;31mE (%d) %s: Failed to read partition table data\033[0m\n"
	.align	4
.LC59:
	.string	"\033[0;31mE (%d) %s: Failed to encrypt partition table in place. %x\033[0m\n"
	.align	4
.LC61:
	.string	"\033[0;31mE (%d) %s: Failed to read partition table data - not plaintext?\033[0m\n"
	.section	.text.encrypt_and_load_partition_table,"ax",@progbits
	.literal_position
	.literal .LC53, 3072
	.literal .LC54, 32768
	.literal .LC55, .LC10
	.literal .LC57, .LC56
	.literal .LC58, 4096
	.literal .LC60, .LC59
	.literal .LC62, .LC61
	.align	4
	.type	encrypt_and_load_partition_table, @function
encrypt_and_load_partition_table:
.LFB14:
	.loc 1 249 0
.LVL68:
	entry	sp, 32
.LCFI3:
	.loc 1 252 0
	movi.n	a13, 0
	l32r	a12, .LC53
	mov.n	a11, a2
	l32r	a10, .LC54
	call8	bootloader_flash_read
.LVL69:
	mov.n	a4, a10
.LVL70:
	.loc 1 253 0
	beqz.n	a10, .L19
	.loc 1 254 0 discriminator 1
	call8	esp_log_timestamp
.LVL71:
	l32r	a11, .LC55
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC57
	movi.n	a10, 1
	call8	esp_log_write
.LVL72:
	.loc 1 255 0 discriminator 1
	mov.n	a2, a4
.LVL73:
	retw.n
.LVL74:
.L19:
	.loc 1 257 0
	mov.n	a12, a3
	movi.n	a11, 0
	mov.n	a10, a2
	call8	esp_partition_table_basic_verify
.LVL75:
	mov.n	a2, a10
.LVL76:
	bnez.n	a10, .L21
.LBB11:
	.loc 1 259 0
	l32r	a11, .LC58
	l32r	a10, .LC54
	call8	esp_flash_encrypt_region
.LVL77:
	mov.n	a3, a10
.LVL78:
	.loc 1 261 0
	beqz.n	a10, .L20
	.loc 1 262 0 discriminator 1
	call8	esp_log_timestamp
.LVL79:
	l32r	a11, .LC55
	mov.n	a15, a3
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC60
	movi.n	a10, 1
	call8	esp_log_write
.LVL80:
	.loc 1 263 0 discriminator 1
	mov.n	a2, a3
	retw.n
.LVL81:
.L21:
.LBE11:
	.loc 1 267 0 discriminator 1
	call8	esp_log_timestamp
.LVL82:
	l32r	a11, .LC55
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC62
	movi.n	a10, 1
	call8	esp_log_write
.LVL83:
	.loc 1 268 0 discriminator 1
	movi	a2, 0x103
.LVL84:
.L20:
	.loc 1 273 0
	retw.n
.LFE14:
	.size	encrypt_and_load_partition_table, .-encrypt_and_load_partition_table
	.section	.rodata.str1.4
	.align	4
.LC66:
	.string	"\033[0;32mI (%d) %s: Encrypting partition %d at offset 0x%x...\033[0m\n"
	.align	4
.LC68:
	.string	"\033[0;31mE (%d) %s: Failed to encrypt partition %d\033[0m\n"
	.section	.text.encrypt_partition,"ax",@progbits
	.literal_position
	.literal .LC63, -65536
	.literal .LC64, 65536
	.literal .LC65, .LC10
	.literal .LC67, .LC66
	.literal .LC69, .LC68
	.align	4
	.type	encrypt_partition, @function
encrypt_partition:
.LFB15:
	.loc 1 277 0
.LVL85:
	entry	sp, 272
.LCFI4:
	.loc 1 279 0
	l32i.n	a10, a3, 28
	extui	a10, a10, 0, 1
.LVL86:
	.loc 1 281 0
	l8ui	a8, a3, 2
	bnez.n	a8, .L23
.LBB12:
	.loc 1 284 0
	addi	a12, sp, 16
	addi.n	a11, a3, 4
	movi.n	a10, 0
.LVL87:
	call8	esp_image_load
.LVL88:
	.loc 1 287 0
	movi.n	a8, 0
	movi.n	a9, 1
	moveqz	a8, a9, a10
	extui	a10, a8, 0, 8
.LVL89:
.LBE12:
	j	.L24
.LVL90:
.L23:
	.loc 1 288 0
	l32i.n	a9, a3, 0
	l32r	a8, .LC63
	and	a8, a9, a8
	l32r	a9, .LC64
	bne	a8, a9, .L24
	.loc 1 290 0
	movi.n	a10, 1
.LVL91:
.L24:
	.loc 1 293 0
	beqz.n	a10, .L27
	.loc 1 298 0 discriminator 1
	call8	esp_log_timestamp
.LVL92:
	l32r	a11, .LC65
	l32i.n	a8, a3, 4
	s32i.n	a8, sp, 0
	mov.n	a15, a2
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC67
	movi.n	a10, 3
	call8	esp_log_write
.LVL93:
	.loc 1 300 0 discriminator 1
	l32i.n	a11, a3, 8
	l32i.n	a10, a3, 4
	call8	esp_flash_encrypt_region
.LVL94:
	mov.n	a3, a10
.LVL95:
	.loc 1 301 0 discriminator 1
	beqz.n	a10, .L28
	.loc 1 302 0 discriminator 1
	call8	esp_log_timestamp
.LVL96:
	l32r	a11, .LC65
	mov.n	a15, a2
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC69
	movi.n	a10, 1
	call8	esp_log_write
.LVL97:
	.loc 1 304 0 discriminator 1
	mov.n	a2, a3
.LVL98:
	retw.n
.LVL99:
.L27:
	.loc 1 294 0
	movi.n	a2, 0
.LVL100:
	retw.n
.LVL101:
.L28:
	.loc 1 304 0
	mov.n	a2, a10
.LVL102:
	.loc 1 306 0
	retw.n
.LFE15:
	.size	encrypt_partition, .-encrypt_partition
	.section	.rodata.str1.4
	.align	4
.LC71:
	.string	"\033[0;31mE (%d) %s: Cannot re-encrypt data (FLASH_CRYPT_CNT 0x%02x write disabled %d\033[0m\n"
	.align	4
.LC75:
	.string	"\033[0;32mI (%d) %s: Flash encryption completed\033[0m\n"
	.section	.text.encrypt_flash_contents,"ax",@progbits
	.literal_position
	.literal .LC70, .LC10
	.literal .LC72, .LC71
	.literal .LC73, 1073061916
	.literal .LC74, -267386881
	.literal .LC76, .LC75
	.align	4
	.type	encrypt_flash_contents, @function
encrypt_flash_contents:
.LFB12:
	.loc 1 159 0
.LVL103:
	entry	sp, 3136
.LCFI5:
	.loc 1 166 0
	movi	a8, -0xff
	add.n	a9, a2, a8
	movi.n	a8, 0
	movi.n	a10, 1
	moveqz	a8, a10, a9
	or	a8, a8, a3
	beqz.n	a8, .L30
	.loc 1 167 0 discriminator 1
	call8	esp_log_timestamp
.LVL104:
	l32r	a11, .LC70
	s32i.n	a3, sp, 0
	mov.n	a15, a2
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC72
	movi.n	a10, 1
	call8	esp_log_write
.LVL105:
	.loc 1 168 0 discriminator 1
	movi.n	a2, -1
.LVL106:
	retw.n
.LVL107:
.L30:
	.loc 1 171 0
	bnez.n	a2, .L32
	.loc 1 173 0
	call8	initialise_flash_encryption
.LVL108:
	.loc 1 174 0
	bnez.n	a10, .L35
.LVL109:
.L32:
	.loc 1 179 0
	call8	encrypt_bootloader
.LVL110:
	.loc 1 180 0
	bnez.n	a10, .L36
	.loc 1 184 0
	addi	a3, sp, 16
.LVL111:
	addmi	a11, a3, 0xc00
	mov.n	a10, a3
.LVL112:
	call8	encrypt_and_load_partition_table
.LVL113:
	.loc 1 185 0
	bnez.n	a10, .L37
	movi.n	a3, 0
	j	.L33
.LVL114:
.L34:
.LBB13:
	.loc 1 194 0
	slli	a11, a3, 5
	addi	a4, sp, 16
	add.n	a11, a4, a11
	mov.n	a10, a3
.LVL115:
	call8	encrypt_partition
.LVL116:
	.loc 1 195 0
	bnez.n	a10, .L38
	.loc 1 193 0 discriminator 2
	addi.n	a3, a3, 1
.LVL117:
.L33:
	.loc 1 193 0 is_stmt 0 discriminator 1
	addi	a4, sp, 16
	addmi	a8, a4, 0xc00
	l32i.n	a8, a8, 0
	blt	a3, a8, .L34
.LBE13:
	.loc 1 203 0 is_stmt 1
	movi.n	a8, -1
	xor	a8, a8, a2
	extui	a8, a8, 0, 8
	neg	a3, a8
.LVL118:
	and	a3, a3, a8
	nsau	a3, a3
	neg	a3, a3
.LVL119:
	.loc 1 205 0
	addi	a8, a3, 31
	movi.n	a3, 1
.LVL120:
	ssl	a8
	sll	a3, a3
	add.n	a2, a2, a3
.LVL121:
	.loc 1 207 0
	l32r	a8, .LC73
.LVL122:
	memw
	l32i.n	a9, a8, 0
	l32r	a3, .LC74
	and	a3, a9, a3
	extui	a2, a2, 0, 8
.LVL123:
	slli	a2, a2, 20
	or	a2, a3, a2
	memw
	s32i.n	a2, a8, 0
	.loc 1 208 0
	call8	esp_efuse_burn_new_values
.LVL124:
	.loc 1 210 0
	call8	esp_log_timestamp
.LVL125:
	l32r	a11, .LC70
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC76
	movi.n	a10, 3
	call8	esp_log_write
.LVL126:
	.loc 1 212 0
	movi.n	a2, 0
	retw.n
.LVL127:
.L35:
	.loc 1 175 0
	mov.n	a2, a10
.LVL128:
	retw.n
.LVL129:
.L36:
	.loc 1 181 0
	mov.n	a2, a10
.LVL130:
	retw.n
.LVL131:
.L37:
	.loc 1 186 0
	mov.n	a2, a10
.LVL132:
	retw.n
.LVL133:
.L38:
.LBB14:
	.loc 1 196 0
	mov.n	a2, a10
.LVL134:
.LBE14:
	.loc 1 213 0
	retw.n
.LFE12:
	.size	encrypt_flash_contents, .-encrypt_flash_contents
	.global	__paritysi2
	.global	__popcountsi2
	.section	.rodata.str1.4
	.align	4
.LC80:
	.string	"\033[0;32mI (%d) %s: flash encryption is enabled (%d plaintext flashes left)\033[0m\n"
	.section	.text.esp_flash_encrypt_check_and_update,"ax",@progbits
	.literal_position
	.literal .LC77, 1073061888
	.literal .LC78, 267386880
	.literal .LC79, .LC10
	.literal .LC81, .LC80
	.align	4
	.global	esp_flash_encrypt_check_and_update
	.type	esp_flash_encrypt_check_and_update, @function
esp_flash_encrypt_check_and_update:
.LFB10:
	.loc 1 41 0
	entry	sp, 32
.LCFI6:
	.loc 1 42 0
	l32r	a2, .LC77
	memw
	l32i.n	a3, a2, 0
.LVL135:
	.loc 1 44 0
	l32r	a2, .LC78
	and	a2, a3, a2
	extui	a2, a2, 20, 12
.LVL136:
	.loc 1 45 0
	movi.n	a4, 4
	and	a4, a3, a4
	movi.n	a11, 0
	movi.n	a8, 1
	movnez	a11, a8, a4
	extui	a3, a11, 0, 8
.LVL137:
	.loc 1 48 0
	mov.n	a10, a2
	call8	__paritysi2
.LVL138:
	bnei	a10, 1, .L40
.LBB15:
	.loc 1 50 0
	mov.n	a10, a2
	call8	__popcountsi2
.LVL139:
	movi.n	a2, 7
.LVL140:
	sub	a10, a2, a10
	extui	a2, a10, 31, 1
	add.n	a10, a2, a10
	srai	a2, a10, 1
.LVL141:
	.loc 1 51 0
	beqz.n	a4, .L41
	.loc 1 52 0
	movi.n	a2, 0
.LVL142:
.L41:
	.loc 1 54 0 discriminator 1
	call8	esp_log_timestamp
.LVL143:
	l32r	a11, .LC79
	mov.n	a15, a2
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC81
	movi.n	a10, 3
	call8	esp_log_write
.LVL144:
	.loc 1 55 0 discriminator 1
	movi.n	a2, 0
.LVL145:
	retw.n
.LVL146:
.L40:
.LBE15:
	.loc 1 59 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	encrypt_flash_contents
.LVL147:
	mov.n	a2, a10
.LVL148:
	.loc 1 61 0
	retw.n
.LFE10:
	.size	esp_flash_encrypt_check_and_update, .-esp_flash_encrypt_check_and_update
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
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI0-.LFB11
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI1-.LFB16
	.byte	0xe
	.uleb128 0x1020
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
	.uleb128 0x30
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI3-.LFB14
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI4-.LFB15
	.byte	0xe
	.uleb128 0x110
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI5-.LFB12
	.byte	0xe
	.uleb128 0xc40
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI6-.LFB10
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
	.text
.Letext0:
	.file 3 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 4 "C:/esp/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 5 "C:/esp/esp-idf/components/newlib/include/stdint.h"
	.file 6 "C:/esp/esp-idf/components/esp32/include/esp_err.h"
	.file 7 "C:/esp/esp-idf/components/esp32/include/esp_flash_data_types.h"
	.file 8 "C:/esp/esp-idf/components/bootloader_support/include/esp_image_format.h"
	.file 9 "C:/esp/esp-idf/components/log/include/esp_log.h"
	.file 10 "C:/esp/esp-idf/components/bootloader_support/include_priv/bootloader_random.h"
	.file 11 "C:/esp/esp-idf/components/bootloader_support/include/esp_efuse.h"
	.file 12 "C:/esp/esp-idf/components/bootloader_support/include_priv/bootloader_flash.h"
	.file 13 "C:/esp/esp-idf/components/bootloader_support/include/esp_flash_partitions.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xe40
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF99
	.byte	0xc
	.4byte	.LASF100
	.4byte	.LASF101
	.4byte	.Ldebug_ranges0+0x30
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
	.byte	0x19
	.4byte	0x25
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x4
	.byte	0x1a
	.4byte	0x37
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x5
	.byte	0x4
	.4byte	0xb6
	.uleb128 0x6
	.4byte	0xa9
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
	.byte	0x2c
	.4byte	0x70
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x5
	.byte	0x2d
	.4byte	0x7b
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x6
	.byte	0x18
	.4byte	0xd1
	.uleb128 0x7
	.byte	0x8
	.byte	0x7
	.byte	0x24
	.4byte	0x113
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x7
	.byte	0x25
	.4byte	0xdc
	.byte	0
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x7
	.byte	0x26
	.4byte	0xdc
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x7
	.byte	0x27
	.4byte	0xf2
	.uleb128 0x7
	.byte	0x20
	.byte	0x7
	.byte	0x2c
	.4byte	0x16f
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x7
	.byte	0x2d
	.4byte	0xc6
	.byte	0
	.uleb128 0x8
	.4byte	.LASF25
	.byte	0x7
	.byte	0x2e
	.4byte	0xbb
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF26
	.byte	0x7
	.byte	0x2f
	.4byte	0xbb
	.byte	0x3
	.uleb128 0x9
	.string	"pos"
	.byte	0x7
	.byte	0x30
	.4byte	0x113
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF27
	.byte	0x7
	.byte	0x31
	.4byte	0x16f
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF28
	.byte	0x7
	.byte	0x32
	.4byte	0xdc
	.byte	0x1c
	.byte	0
	.uleb128 0xa
	.4byte	0xbb
	.4byte	0x17f
	.uleb128 0xb
	.4byte	0x9b
	.byte	0xf
	.byte	0
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0x7
	.byte	0x33
	.4byte	0x11e
	.uleb128 0xc
	.byte	0x4
	.4byte	0x37
	.byte	0x8
	.byte	0x27
	.4byte	0x1af
	.uleb128 0xd
	.4byte	.LASF30
	.byte	0
	.uleb128 0xd
	.4byte	.LASF31
	.byte	0x1
	.uleb128 0xd
	.4byte	.LASF32
	.byte	0x2
	.uleb128 0xd
	.4byte	.LASF33
	.byte	0xf
	.byte	0
	.uleb128 0x7
	.byte	0x18
	.byte	0x8
	.byte	0x3b
	.4byte	0x236
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x8
	.byte	0x3c
	.4byte	0xbb
	.byte	0
	.uleb128 0x8
	.4byte	.LASF34
	.byte	0x8
	.byte	0x3d
	.4byte	0xbb
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF35
	.byte	0x8
	.byte	0x3f
	.4byte	0xbb
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF36
	.byte	0x8
	.byte	0x41
	.4byte	0xbb
	.byte	0x1
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0xe
	.4byte	.LASF37
	.byte	0x8
	.byte	0x43
	.4byte	0xbb
	.byte	0x1
	.byte	0x4
	.byte	0
	.byte	0x3
	.uleb128 0x8
	.4byte	.LASF38
	.byte	0x8
	.byte	0x44
	.4byte	0xdc
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF39
	.byte	0x8
	.byte	0x47
	.4byte	0xbb
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF40
	.byte	0x8
	.byte	0x49
	.4byte	0x236
	.byte	0x9
	.uleb128 0x8
	.4byte	.LASF41
	.byte	0x8
	.byte	0x4b
	.4byte	0x246
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF42
	.byte	0x8
	.byte	0x4f
	.4byte	0xbb
	.byte	0x17
	.byte	0
	.uleb128 0xa
	.4byte	0xbb
	.4byte	0x246
	.uleb128 0xb
	.4byte	0x9b
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.4byte	0xbb
	.4byte	0x256
	.uleb128 0xb
	.4byte	0x9b
	.byte	0xa
	.byte	0
	.uleb128 0x3
	.4byte	.LASF43
	.byte	0x8
	.byte	0x50
	.4byte	0x1af
	.uleb128 0x7
	.byte	0x8
	.byte	0x8
	.byte	0x55
	.4byte	0x282
	.uleb128 0x8
	.4byte	.LASF44
	.byte	0x8
	.byte	0x56
	.4byte	0xdc
	.byte	0
	.uleb128 0x8
	.4byte	.LASF45
	.byte	0x8
	.byte	0x57
	.4byte	0xdc
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF46
	.byte	0x8
	.byte	0x58
	.4byte	0x261
	.uleb128 0x7
	.byte	0xe0
	.byte	0x8
	.byte	0x5d
	.4byte	0x2d2
	.uleb128 0x8
	.4byte	.LASF47
	.byte	0x8
	.byte	0x5e
	.4byte	0xdc
	.byte	0
	.uleb128 0x8
	.4byte	.LASF48
	.byte	0x8
	.byte	0x5f
	.4byte	0x256
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF49
	.byte	0x8
	.byte	0x60
	.4byte	0x2d2
	.byte	0x1c
	.uleb128 0x8
	.4byte	.LASF50
	.byte	0x8
	.byte	0x61
	.4byte	0x2e2
	.byte	0x9c
	.uleb128 0x8
	.4byte	.LASF51
	.byte	0x8
	.byte	0x62
	.4byte	0xdc
	.byte	0xdc
	.byte	0
	.uleb128 0xa
	.4byte	0x282
	.4byte	0x2e2
	.uleb128 0xb
	.4byte	0x9b
	.byte	0xf
	.byte	0
	.uleb128 0xa
	.4byte	0xdc
	.4byte	0x2f2
	.uleb128 0xb
	.4byte	0x9b
	.byte	0xf
	.byte	0
	.uleb128 0x3
	.4byte	.LASF52
	.byte	0x8
	.byte	0x63
	.4byte	0x28d
	.uleb128 0xc
	.byte	0x4
	.4byte	0x37
	.byte	0x8
	.byte	0x66
	.4byte	0x316
	.uleb128 0xd
	.4byte	.LASF53
	.byte	0
	.uleb128 0xd
	.4byte	.LASF54
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x37
	.byte	0x9
	.byte	0x1f
	.4byte	0x347
	.uleb128 0xd
	.4byte	.LASF55
	.byte	0
	.uleb128 0xd
	.4byte	.LASF56
	.byte	0x1
	.uleb128 0xd
	.4byte	.LASF57
	.byte	0x2
	.uleb128 0xd
	.4byte	.LASF58
	.byte	0x3
	.uleb128 0xd
	.4byte	.LASF59
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF60
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF61
	.byte	0x9
	.byte	0x26
	.4byte	0x316
	.uleb128 0xf
	.4byte	.LASF102
	.byte	0x2
	.byte	0x25
	.4byte	0x35e
	.byte	0x3
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF62
	.uleb128 0x10
	.4byte	.LASF71
	.byte	0x1
	.byte	0x3f
	.4byte	0xe7
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x632
	.uleb128 0x11
	.4byte	.LASF63
	.byte	0x1
	.byte	0x44
	.4byte	0xdc
	.4byte	.LLST0
	.uleb128 0x11
	.4byte	.LASF64
	.byte	0x1
	.byte	0x45
	.4byte	0x35e
	.4byte	.LLST1
	.uleb128 0x11
	.4byte	.LASF65
	.byte	0x1
	.byte	0x46
	.4byte	0x35e
	.4byte	.LLST2
	.uleb128 0x11
	.4byte	.LASF66
	.byte	0x1
	.byte	0x75
	.4byte	0xdc
	.4byte	.LLST3
	.uleb128 0x12
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.4byte	0x48b
	.uleb128 0x13
	.string	"buf"
	.byte	0x1
	.byte	0x52
	.4byte	0x632
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x12
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.4byte	0x3f0
	.uleb128 0x14
	.string	"i"
	.byte	0x1
	.byte	0x54
	.4byte	0x25
	.4byte	.LLST4
	.byte	0
	.uleb128 0x15
	.4byte	.LVL5
	.4byte	0xdd5
	.uleb128 0x16
	.4byte	.LVL6
	.4byte	0xde0
	.4byte	0x427
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC12
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0
	.uleb128 0x16
	.4byte	.LVL7
	.4byte	0xdeb
	.4byte	0x441
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x15
	.4byte	.LVL10
	.4byte	0xdf6
	.uleb128 0x15
	.4byte	.LVL11
	.4byte	0xdd5
	.uleb128 0x16
	.4byte	.LVL12
	.4byte	0xde0
	.4byte	0x481
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0
	.uleb128 0x15
	.4byte	.LVL13
	.4byte	0xdf6
	.byte	0
	.uleb128 0x15
	.4byte	.LVL15
	.4byte	0xdd5
	.uleb128 0x16
	.4byte	.LVL16
	.4byte	0xde0
	.4byte	0x4c2
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC19
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0
	.uleb128 0x15
	.4byte	.LVL18
	.4byte	0xdd5
	.uleb128 0x16
	.4byte	.LVL19
	.4byte	0xde0
	.4byte	0x4f9
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC21
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0
	.uleb128 0x15
	.4byte	.LVL20
	.4byte	0xdd5
	.uleb128 0x16
	.4byte	.LVL21
	.4byte	0xde0
	.4byte	0x52a
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL22
	.4byte	0xdf6
	.uleb128 0x15
	.4byte	.LVL23
	.4byte	0xdd5
	.uleb128 0x16
	.4byte	.LVL24
	.4byte	0xde0
	.4byte	0x564
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC27
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL25
	.4byte	0xdd5
	.uleb128 0x16
	.4byte	.LVL26
	.4byte	0xde0
	.4byte	0x595
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC29
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL27
	.4byte	0xdd5
	.uleb128 0x16
	.4byte	.LVL28
	.4byte	0xde0
	.4byte	0x5c6
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC31
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL29
	.4byte	0xdd5
	.uleb128 0x16
	.4byte	.LVL30
	.4byte	0xde0
	.4byte	0x5f7
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC33
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL31
	.4byte	0xdd5
	.uleb128 0x16
	.4byte	.LVL32
	.4byte	0xde0
	.4byte	0x628
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC35
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL33
	.4byte	0xdf6
	.byte	0
	.uleb128 0xa
	.4byte	0xdc
	.4byte	0x642
	.uleb128 0xb
	.4byte	0x9b
	.byte	0x7
	.byte	0
	.uleb128 0x18
	.4byte	.LASF85
	.byte	0x1
	.2byte	0x135
	.4byte	0xe7
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7af
	.uleb128 0x19
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x135
	.4byte	0xdc
	.4byte	.LLST5
	.uleb128 0x1a
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x135
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1b
	.string	"err"
	.byte	0x1
	.2byte	0x137
	.4byte	0xe7
	.4byte	.LLST6
	.uleb128 0x1c
	.string	"buf"
	.byte	0x1
	.2byte	0x138
	.4byte	0x7af
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4128
	.uleb128 0x1d
	.4byte	.LASF103
	.byte	0x1
	.2byte	0x150
	.4byte	.L11
	.uleb128 0x1e
	.4byte	.Ldebug_ranges0+0
	.4byte	0x738
	.uleb128 0x1b
	.string	"i"
	.byte	0x1
	.2byte	0x13f
	.4byte	0x2c
	.4byte	.LLST7
	.uleb128 0x1f
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.uleb128 0x20
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x140
	.4byte	0xdc
	.4byte	.LLST8
	.uleb128 0x16
	.4byte	.LVL40
	.4byte	0xe01
	.4byte	0x6fd
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4128
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1000
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x16
	.4byte	.LVL42
	.4byte	0xe0c
	.4byte	0x713
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x4
	.byte	0x76
	.sleb128 0
	.byte	0x3c
	.byte	0x25
	.byte	0
	.uleb128 0x21
	.4byte	.LVL44
	.4byte	0xe17
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4128
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1000
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL35
	.4byte	0xdd5
	.uleb128 0x16
	.4byte	.LVL36
	.4byte	0xde0
	.4byte	0x775
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC39
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL51
	.4byte	0xdd5
	.uleb128 0x21
	.4byte	.LVL52
	.4byte	0xde0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC42
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	0xdc
	.4byte	0x7c0
	.uleb128 0x22
	.4byte	0x9b
	.2byte	0x3ff
	.byte	0
	.uleb128 0x23
	.4byte	.LASF104
	.byte	0x1
	.byte	0xd7
	.4byte	0xe7
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8f6
	.uleb128 0x14
	.string	"err"
	.byte	0x1
	.byte	0xd9
	.4byte	0xe7
	.4byte	.LLST9
	.uleb128 0x24
	.4byte	.LASF70
	.byte	0x1
	.byte	0xda
	.4byte	0xdc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.4byte	0x352
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.byte	0x1
	.byte	0xe4
	.uleb128 0x16
	.4byte	.LVL54
	.4byte	0xe22
	.4byte	0x819
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x16
	.4byte	.LVL55
	.4byte	0x642
	.4byte	0x82e
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1000
	.byte	0
	.uleb128 0x15
	.4byte	.LVL57
	.4byte	0xdd5
	.uleb128 0x16
	.4byte	.LVL58
	.4byte	0xde0
	.4byte	0x86b
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC46
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL61
	.4byte	0x642
	.4byte	0x885
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1000
	.byte	0
	.uleb128 0x15
	.4byte	.LVL63
	.4byte	0xdd5
	.uleb128 0x16
	.4byte	.LVL64
	.4byte	0xde0
	.4byte	0x8c2
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC49
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL66
	.4byte	0xdd5
	.uleb128 0x21
	.4byte	.LVL67
	.4byte	0xde0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC51
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	.LASF72
	.byte	0x1
	.byte	0xf8
	.4byte	0xe7
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa5e
	.uleb128 0x26
	.4byte	.LASF73
	.byte	0x1
	.byte	0xf8
	.4byte	0xa5e
	.4byte	.LLST10
	.uleb128 0x26
	.4byte	.LASF74
	.byte	0x1
	.byte	0xf8
	.4byte	0xa64
	.4byte	.LLST11
	.uleb128 0x13
	.string	"err"
	.byte	0x1
	.byte	0xfa
	.4byte	0xe7
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x12
	.4byte	.LBB11
	.4byte	.LBE11-.LBB11
	.4byte	0x9ad
	.uleb128 0x1b
	.string	"err"
	.byte	0x1
	.2byte	0x103
	.4byte	0xe7
	.4byte	.LLST12
	.uleb128 0x16
	.4byte	.LVL77
	.4byte	0x642
	.4byte	0x973
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0x8000
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1000
	.byte	0
	.uleb128 0x15
	.4byte	.LVL79
	.4byte	0xdd5
	.uleb128 0x21
	.4byte	.LVL80
	.4byte	0xde0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC59
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL69
	.4byte	0xe01
	.4byte	0x9d4
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0x8000
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0xc00
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x15
	.4byte	.LVL71
	.4byte	0xdd5
	.uleb128 0x16
	.4byte	.LVL72
	.4byte	0xde0
	.4byte	0xa0b
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC56
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0
	.uleb128 0x16
	.4byte	.LVL75
	.4byte	0xe2d
	.4byte	0xa2a
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL82
	.4byte	0xdd5
	.uleb128 0x21
	.4byte	.LVL83
	.4byte	0xde0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC61
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x17f
	.uleb128 0x5
	.byte	0x4
	.4byte	0x25
	.uleb128 0x27
	.4byte	.LASF75
	.byte	0x1
	.2byte	0x114
	.4byte	0xe7
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb7e
	.uleb128 0x19
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x114
	.4byte	0x25
	.4byte	.LLST13
	.uleb128 0x19
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x114
	.4byte	0xb7e
	.4byte	.LLST14
	.uleb128 0x1b
	.string	"err"
	.byte	0x1
	.2byte	0x116
	.4byte	0xe7
	.4byte	.LLST15
	.uleb128 0x20
	.4byte	.LASF78
	.byte	0x1
	.2byte	0x117
	.4byte	0x35e
	.4byte	.LLST16
	.uleb128 0x12
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.4byte	0xafe
	.uleb128 0x28
	.4byte	.LASF79
	.byte	0x1
	.2byte	0x11b
	.4byte	0x2f2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x21
	.4byte	.LVL88
	.4byte	0xe38
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 4
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL92
	.4byte	0xdd5
	.uleb128 0x16
	.4byte	.LVL93
	.4byte	0xde0
	.4byte	0xb3b
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC66
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL94
	.4byte	0x642
	.uleb128 0x15
	.4byte	.LVL96
	.4byte	0xdd5
	.uleb128 0x21
	.4byte	.LVL97
	.4byte	0xde0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC68
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xb84
	.uleb128 0x6
	.4byte	0x17f
	.uleb128 0x10
	.4byte	.LASF80
	.byte	0x1
	.byte	0x9e
	.4byte	0xe7
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcea
	.uleb128 0x26
	.4byte	.LASF81
	.byte	0x1
	.byte	0x9e
	.4byte	0xdc
	.4byte	.LLST17
	.uleb128 0x26
	.4byte	.LASF82
	.byte	0x1
	.byte	0x9e
	.4byte	0x35e
	.4byte	.LLST18
	.uleb128 0x14
	.string	"err"
	.byte	0x1
	.byte	0xa0
	.4byte	0xe7
	.4byte	.LLST19
	.uleb128 0x24
	.4byte	.LASF73
	.byte	0x1
	.byte	0xa1
	.4byte	0xcea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3120
	.uleb128 0x24
	.4byte	.LASF74
	.byte	0x1
	.byte	0xa2
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x11
	.4byte	.LASF83
	.byte	0x1
	.byte	0xcb
	.4byte	0x25
	.4byte	.LLST20
	.uleb128 0x11
	.4byte	.LASF84
	.byte	0x1
	.byte	0xcd
	.4byte	0xdc
	.4byte	.LLST21
	.uleb128 0x1e
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0xc3c
	.uleb128 0x14
	.string	"i"
	.byte	0x1
	.byte	0xc1
	.4byte	0x25
	.4byte	.LLST22
	.uleb128 0x21
	.4byte	.LVL116
	.4byte	0xa6a
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x7
	.byte	0x73
	.sleb128 0
	.byte	0x35
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL104
	.4byte	0xdd5
	.uleb128 0x16
	.4byte	.LVL105
	.4byte	0xde0
	.4byte	0xc80
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC71
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL108
	.4byte	0x365
	.uleb128 0x15
	.4byte	.LVL110
	.4byte	0x7c0
	.uleb128 0x16
	.4byte	.LVL113
	.4byte	0x8f6
	.4byte	0xcad
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x73
	.sleb128 3072
	.byte	0
	.uleb128 0x15
	.4byte	.LVL124
	.4byte	0xdf6
	.uleb128 0x15
	.4byte	.LVL125
	.4byte	0xdd5
	.uleb128 0x21
	.4byte	.LVL126
	.4byte	0xde0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC75
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	0x17f
	.4byte	0xcfa
	.uleb128 0xb
	.4byte	0x9b
	.byte	0x5f
	.byte	0
	.uleb128 0x29
	.4byte	.LASF86
	.byte	0x1
	.byte	0x28
	.4byte	0xe7
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdad
	.uleb128 0x11
	.4byte	.LASF87
	.byte	0x1
	.byte	0x2a
	.4byte	0xdc
	.4byte	.LLST23
	.uleb128 0x11
	.4byte	.LASF81
	.byte	0x1
	.byte	0x2c
	.4byte	0xdc
	.4byte	.LLST24
	.uleb128 0x11
	.4byte	.LASF82
	.byte	0x1
	.byte	0x2d
	.4byte	0x35e
	.4byte	.LLST25
	.uleb128 0x12
	.4byte	.LBB15
	.4byte	.LBE15-.LBB15
	.4byte	0xd96
	.uleb128 0x11
	.4byte	.LASF88
	.byte	0x1
	.byte	0x32
	.4byte	0x25
	.4byte	.LLST26
	.uleb128 0x15
	.4byte	.LVL143
	.4byte	0xdd5
	.uleb128 0x21
	.4byte	.LVL144
	.4byte	0xde0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC80
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL147
	.4byte	0xb89
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x13
	.string	"TAG"
	.byte	0x1
	.byte	0x1f
	.4byte	0xdbf
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC10
	.byte	0x9f
	.uleb128 0x6
	.4byte	0xb0
	.uleb128 0x2a
	.4byte	.LASF105
	.byte	0x8
	.byte	0x2c
	.4byte	0x18a
	.uleb128 0x5
	.byte	0x3
	.4byte	esp_image_spi_freq_t
	.uleb128 0x2b
	.4byte	.LASF89
	.4byte	.LASF89
	.byte	0x9
	.byte	0x4c
	.uleb128 0x2b
	.4byte	.LASF90
	.4byte	.LASF90
	.byte	0x9
	.byte	0x60
	.uleb128 0x2b
	.4byte	.LASF91
	.4byte	.LASF91
	.byte	0xa
	.byte	0x31
	.uleb128 0x2b
	.4byte	.LASF92
	.4byte	.LASF92
	.byte	0xb
	.byte	0x2a
	.uleb128 0x2b
	.4byte	.LASF93
	.4byte	.LASF93
	.byte	0xc
	.byte	0x4a
	.uleb128 0x2b
	.4byte	.LASF94
	.4byte	.LASF94
	.byte	0xc
	.byte	0x65
	.uleb128 0x2b
	.4byte	.LASF95
	.4byte	.LASF95
	.byte	0xc
	.byte	0x5c
	.uleb128 0x2b
	.4byte	.LASF96
	.4byte	.LASF96
	.byte	0x8
	.byte	0x8f
	.uleb128 0x2b
	.4byte	.LASF97
	.4byte	.LASF97
	.byte	0xd
	.byte	0x26
	.uleb128 0x2b
	.4byte	.LASF98
	.4byte	.LASF98
	.byte	0x8
	.byte	0x85
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
	.uleb128 0xf
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x28
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
	.uleb128 0x2b
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
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL4
	.2byte	0x5
	.byte	0x7a
	.sleb128 0
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL2
	.4byte	.LVL5-1
	.2byte	0x5
	.byte	0x79
	.sleb128 0
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL15-1
	.2byte	0x5
	.byte	0x79
	.sleb128 0
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL18-1
	.2byte	0x5
	.byte	0x79
	.sleb128 0
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL22
	.4byte	.LVL24
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL26
	.2byte	0x3
	.byte	0x8
	.byte	0x80
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL28
	.2byte	0x4
	.byte	0xa
	.2byte	0x180
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL30
	.2byte	0x4
	.byte	0xa
	.2byte	0x380
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL32
	.2byte	0x4
	.byte	0xa
	.2byte	0x3c0
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xa
	.2byte	0x3c4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL10-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL34
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL50
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL53
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL41
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL50
	.4byte	.LFE16
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL38
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL48
	.4byte	.LFE16
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL39
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL50
	.4byte	.LFE16
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL56
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL62
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL68
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL73
	.4byte	.LVL74
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL74
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL76
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL68
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL78
	.4byte	.LVL81
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL81
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL84
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL78
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL85
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL98
	.4byte	.LVL99
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL99
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL100
	.4byte	.LVL101
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL101
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL102
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL85
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL95
	.4byte	.LVL99
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL99
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL101
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL88
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL95
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL101
	.4byte	.LFE15
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL87
	.4byte	.LVL88-1
	.2byte	0x6
	.byte	0x73
	.sleb128 28
	.byte	0x6
	.byte	0x31
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL89
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL90
	.4byte	.LVL92-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL99
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL103
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL106
	.4byte	.LVL107
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL107
	.4byte	.LVL121
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL121
	.4byte	.LVL127
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL127
	.4byte	.LVL128
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL128
	.4byte	.LVL129
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL129
	.4byte	.LVL130
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL130
	.4byte	.LVL131
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL131
	.4byte	.LVL132
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL132
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
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL103
	.4byte	.LVL111
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL111
	.4byte	.LVL127
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL127
	.4byte	.LVL131
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL131
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL108
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL110
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL113
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL116
	.4byte	.LVL124-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL127
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL119
	.4byte	.LVL120
	.2byte	0x3
	.byte	0x73
	.sleb128 32
	.byte	0x9f
	.4byte	.LVL120
	.4byte	.LVL122
	.2byte	0x3
	.byte	0x78
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL122
	.4byte	.LVL127
	.2byte	0x33
	.byte	0x8
	.byte	0x20
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x20
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x20
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x1f
	.byte	0x1a
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x12
	.byte	0x28
	.2byte	0x6
	.byte	0x13
	.byte	0x8
	.byte	0x20
	.byte	0x2f
	.2byte	0x14
	.byte	0x30
	.byte	0x16
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x1a
	.byte	0x28
	.2byte	0x9
	.byte	0x31
	.byte	0x24
	.byte	0x16
	.byte	0x23
	.uleb128 0x1
	.byte	0x16
	.byte	0x2f
	.2byte	0xffef
	.byte	0x13
	.byte	0x96
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL121
	.4byte	.LVL123
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL123
	.4byte	.LVL127
	.2byte	0x38
	.byte	0x31
	.byte	0x4f
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x20
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x20
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x1f
	.byte	0x1a
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x12
	.byte	0x28
	.2byte	0x6
	.byte	0x13
	.byte	0x8
	.byte	0x20
	.byte	0x2f
	.2byte	0x14
	.byte	0x30
	.byte	0x16
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x1a
	.byte	0x28
	.2byte	0x9
	.byte	0x31
	.byte	0x24
	.byte	0x16
	.byte	0x23
	.uleb128 0x1
	.byte	0x16
	.byte	0x2f
	.2byte	0xffef
	.byte	0x13
	.byte	0x96
	.byte	0x1c
	.byte	0x24
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL114
	.4byte	.LVL118
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL133
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL135
	.4byte	.LVL137
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL136
	.4byte	.LVL140
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL146
	.4byte	.LVL148
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL137
	.4byte	.LVL138-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL138-1
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL141
	.4byte	.LVL145
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x4c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB6
	.4byte	.LBE6
	.4byte	.LBB8
	.4byte	.LBE8
	.4byte	0
	.4byte	0
	.4byte	.LBB13
	.4byte	.LBE13
	.4byte	.LBB14
	.4byte	.LBE14
	.4byte	0
	.4byte	0
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF47:
	.string	"start_addr"
.LASF40:
	.string	"spi_pin_drv"
.LASF86:
	.string	"esp_flash_encrypt_check_and_update"
.LASF84:
	.string	"new_flash_crypt_cnt"
.LASF93:
	.string	"bootloader_flash_read"
.LASF35:
	.string	"spi_mode"
.LASF2:
	.string	"signed char"
.LASF74:
	.string	"num_partitions"
.LASF69:
	.string	"sec_start"
.LASF96:
	.string	"esp_image_verify_bootloader"
.LASF34:
	.string	"segment_count"
.LASF6:
	.string	"short int"
.LASF3:
	.string	"size_t"
.LASF27:
	.string	"label"
.LASF103:
	.string	"flash_failed"
.LASF32:
	.string	"ESP_IMAGE_SPI_SPEED_20M"
.LASF68:
	.string	"data_length"
.LASF13:
	.string	"sizetype"
.LASF7:
	.string	"__uint16_t"
.LASF9:
	.string	"__uint32_t"
.LASF37:
	.string	"spi_size"
.LASF50:
	.string	"segment_data"
.LASF76:
	.string	"index"
.LASF92:
	.string	"esp_efuse_burn_new_values"
.LASF101:
	.string	"C:\\\\esp\\\\esp32-ArkPOS2\\\\ArkPOS2-esp\\\\build\\\\bootloader_support"
.LASF85:
	.string	"esp_flash_encrypt_region"
.LASF83:
	.string	"ffs_inv"
.LASF46:
	.string	"esp_image_segment_header_t"
.LASF29:
	.string	"esp_partition_info_t"
.LASF10:
	.string	"long long int"
.LASF77:
	.string	"partition"
.LASF87:
	.string	"efuse_blk0"
.LASF12:
	.string	"long int"
.LASF78:
	.string	"should_encrypt"
.LASF21:
	.string	"offset"
.LASF58:
	.string	"ESP_LOG_INFO"
.LASF18:
	.string	"int32_t"
.LASF67:
	.string	"src_addr"
.LASF4:
	.string	"__uint8_t"
.LASF70:
	.string	"image_length"
.LASF105:
	.string	"esp_image_spi_freq_t"
.LASF45:
	.string	"data_len"
.LASF33:
	.string	"ESP_IMAGE_SPI_SPEED_80M"
.LASF23:
	.string	"esp_partition_pos_t"
.LASF72:
	.string	"encrypt_and_load_partition_table"
.LASF98:
	.string	"esp_image_load"
.LASF5:
	.string	"unsigned char"
.LASF42:
	.string	"hash_appended"
.LASF100:
	.string	"C:/esp/esp-idf/components/bootloader_support/src/flash_encrypt.c"
.LASF91:
	.string	"bootloader_fill_random"
.LASF28:
	.string	"flags"
.LASF11:
	.string	"long long unsigned int"
.LASF19:
	.string	"uint32_t"
.LASF0:
	.string	"unsigned int"
.LASF17:
	.string	"uint16_t"
.LASF66:
	.string	"new_wdata6"
.LASF14:
	.string	"long unsigned int"
.LASF36:
	.string	"spi_speed"
.LASF39:
	.string	"wp_pin"
.LASF54:
	.string	"ESP_IMAGE_VERIFY_SILENT"
.LASF53:
	.string	"ESP_IMAGE_VERIFY"
.LASF90:
	.string	"esp_log_write"
.LASF64:
	.string	"efuse_key_read_protected"
.LASF44:
	.string	"load_addr"
.LASF15:
	.string	"char"
.LASF25:
	.string	"type"
.LASF88:
	.string	"left"
.LASF55:
	.string	"ESP_LOG_NONE"
.LASF38:
	.string	"entry_addr"
.LASF1:
	.string	"short unsigned int"
.LASF63:
	.string	"dis_reg"
.LASF62:
	.string	"_Bool"
.LASF65:
	.string	"efuse_key_write_protected"
.LASF61:
	.string	"esp_log_level_t"
.LASF104:
	.string	"encrypt_bootloader"
.LASF57:
	.string	"ESP_LOG_WARN"
.LASF51:
	.string	"image_len"
.LASF31:
	.string	"ESP_IMAGE_SPI_SPEED_26M"
.LASF95:
	.string	"bootloader_flash_write"
.LASF102:
	.string	"esp_secure_boot_enabled"
.LASF71:
	.string	"initialise_flash_encryption"
.LASF80:
	.string	"encrypt_flash_contents"
.LASF94:
	.string	"bootloader_flash_erase_sector"
.LASF52:
	.string	"esp_image_metadata_t"
.LASF81:
	.string	"flash_crypt_cnt"
.LASF48:
	.string	"image"
.LASF22:
	.string	"size"
.LASF82:
	.string	"flash_crypt_wr_dis"
.LASF60:
	.string	"ESP_LOG_VERBOSE"
.LASF8:
	.string	"__int32_t"
.LASF79:
	.string	"data_ignored"
.LASF26:
	.string	"subtype"
.LASF16:
	.string	"uint8_t"
.LASF89:
	.string	"esp_log_timestamp"
.LASF59:
	.string	"ESP_LOG_DEBUG"
.LASF49:
	.string	"segments"
.LASF75:
	.string	"encrypt_partition"
.LASF30:
	.string	"ESP_IMAGE_SPI_SPEED_40M"
.LASF24:
	.string	"magic"
.LASF73:
	.string	"partition_table"
.LASF99:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF41:
	.string	"reserved"
.LASF56:
	.string	"ESP_LOG_ERROR"
.LASF20:
	.string	"esp_err_t"
.LASF97:
	.string	"esp_partition_table_basic_verify"
.LASF43:
	.string	"esp_image_header_t"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-73-ge28a011) 5.2.0"
