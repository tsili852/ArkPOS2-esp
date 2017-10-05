	.file	"bootloader_flash.c"
	.text
.Ltext0:
	.section	.text.spi_to_esp_err,"ax",@progbits
	.literal_position
	.literal .LC0, 65553
	.literal .LC1, 65554
	.align	4
	.type	spi_to_esp_err, @function
spi_to_esp_err:
.LFB11:
	.file 1 "C:/esp/esp-idf/components/bootloader_support/src/bootloader_flash.c"
	.loc 1 139 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 140 0
	beqi	a2, 1, .L6
	beqz.n	a2, .L4
	beqi	a2, 2, .L5
	j	.L7
.L4:
	.loc 1 142 0
	movi.n	a2, 0
.LVL1:
	retw.n
.LVL2:
.L5:
	.loc 1 146 0
	l32r	a2, .LC1
.LVL3:
	retw.n
.LVL4:
.L7:
	.loc 1 148 0
	movi.n	a2, -1
.LVL5:
	retw.n
.LVL6:
.L6:
	.loc 1 144 0
	l32r	a2, .LC0
.LVL7:
	.loc 1 150 0
	retw.n
.LFE11:
	.size	spi_to_esp_err, .-spi_to_esp_err
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC5:
	.string	"bootloader_flash"
	.align	4
.LC7:
	.string	"\033[0;31mE (%d) %s: cache_flash_mmu_set failed: %d\n\033[0m\n"
	.section	.text.bootloader_flash_read_allow_decrypt,"ax",@progbits
	.literal_position
	.literal .LC2, -65536
	.literal .LC3, current_read_mapping
	.literal .LC4, 1064435712
	.literal .LC6, .LC5
	.literal .LC8, .LC7
	.align	4
	.type	bootloader_flash_read_allow_decrypt, @function
bootloader_flash_read_allow_decrypt:
.LFB13:
	.loc 1 163 0
.LVL8:
	entry	sp, 48
.LCFI1:
	s32i.n	a2, sp, 0
	s32i.n	a3, sp, 4
.LVL9:
.LBB35:
	.loc 1 169 0
	movi.n	a3, 0
.LVL10:
	j	.L9
.LVL11:
.L13:
.LBB36:
	.loc 1 170 0
	l32i.n	a2, sp, 0
	addx4	a5, a3, a2
.LVL12:
	.loc 1 171 0
	l32r	a2, .LC2
	and	a2, a5, a2
.LVL13:
	.loc 1 173 0
	l32r	a7, .LC3
	l32i.n	a7, a7, 0
	beq	a2, a7, .L10
.LVL14:
.LBB37:
.LBB38:
.LBB39:
	.file 2 "C:/esp/esp-idf/components/esp32/include/rom/cache.h"
	.loc 2 166 0
	movi.n	a10, 0
	call8	Cache_Read_Disable_rom
.LVL15:
.LBE39:
.LBE38:
.LBB40:
.LBB41:
	.loc 2 150 0
	movi.n	a10, 0
	call8	Cache_Flush_rom
.LVL16:
.LBE41:
.LBE40:
.LBB42:
.LBB43:
	.loc 2 76 0
	movi.n	a15, 1
	movi.n	a14, 0x40
	mov.n	a13, a2
	l32r	a12, .LC4
	movi.n	a11, 0
	mov.n	a10, a11
	call8	cache_flash_mmu_set_rom
.LVL17:
	mov.n	a7, a10
.LVL18:
.LBE43:
.LBE42:
	.loc 1 179 0
	beqz.n	a10, .L11
	.loc 1 180 0 discriminator 1
	call8	esp_log_timestamp
.LVL19:
	mov.n	a13, a7
	l32r	a12, .LC6
	mov.n	a11, a10
	l32r	a10, .LC8
	call8	ets_printf
.LVL20:
.LBB44:
.LBB45:
	.loc 2 182 0 discriminator 1
	movi.n	a10, 0
	call8	Cache_Read_Enable_rom
.LVL21:
.LBE45:
.LBE44:
	.loc 1 182 0 discriminator 1
	movi.n	a2, -1
.LVL22:
	retw.n
.LVL23:
.L11:
	.loc 1 184 0
	l32r	a7, .LC3
.LVL24:
	s32i.n	a2, a7, 0
.LVL25:
.LBB46:
.LBB47:
	.loc 2 182 0
	movi.n	a10, 0
.LVL26:
	call8	Cache_Read_Enable_rom
.LVL27:
.L10:
.LBE47:
.LBE46:
.LBE37:
	.loc 1 187 0 discriminator 2
	sub	a2, a5, a2
.LVL28:
	l32r	a5, .LC4
.LVL29:
	add.n	a2, a2, a5
.LVL30:
	.loc 1 188 0 discriminator 2
	l32i.n	a5, sp, 4
	addx4	a6, a6, a5
	l32i.n	a2, a2, 0
.LVL31:
	s32i.n	a2, a6, 0
.LBE36:
	.loc 1 169 0 discriminator 2
	addi.n	a3, a3, 1
.LVL32:
.L9:
	.loc 1 169 0 is_stmt 0 discriminator 1
	srli	a2, a4, 2
	mov.n	a6, a3
	bltu	a3, a2, .L13
.LBE35:
	.loc 1 190 0 is_stmt 1
	movi.n	a2, 0
	.loc 1 191 0
	retw.n
.LFE13:
	.size	bootloader_flash_read_allow_decrypt, .-bootloader_flash_read_allow_decrypt
	.section	.text.bootloader_flash_read_no_decrypt,"ax",@progbits
	.align	4
	.type	bootloader_flash_read_no_decrypt, @function
bootloader_flash_read_no_decrypt:
.LFB12:
	.loc 1 153 0
.LVL33:
	entry	sp, 32
.LCFI2:
.LVL34:
.LBB48:
.LBB49:
	.loc 2 166 0
	movi.n	a10, 0
	call8	Cache_Read_Disable_rom
.LVL35:
.LBE49:
.LBE48:
.LBB50:
.LBB51:
	.loc 2 150 0
	movi.n	a10, 0
	call8	Cache_Flush_rom
.LVL36:
.LBE51:
.LBE50:
	.loc 1 156 0
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	esp_rom_spiflash_read
.LVL37:
	mov.n	a2, a10
.LVL38:
.LBB52:
.LBB53:
	.loc 2 182 0
	movi.n	a10, 0
	call8	Cache_Read_Enable_rom
.LVL39:
.LBE53:
.LBE52:
	.loc 1 159 0
	mov.n	a10, a2
	call8	spi_to_esp_err
.LVL40:
	.loc 1 160 0
	mov.n	a2, a10
.LVL41:
	retw.n
.LFE12:
	.size	bootloader_flash_read_no_decrypt, .-bootloader_flash_read_no_decrypt
	.section	.rodata.str1.4
	.align	4
.LC11:
	.string	"\033[0;31mE (%d) %s: tried to bootloader_mmap twice\033[0m\n"
	.align	4
.LC14:
	.string	"\033[0;31mE (%d) %s: bootloader_mmap excess size %x\033[0m\n"
	.section	.text.bootloader_mmap,"ax",@progbits
	.literal_position
	.literal .LC9, mapped
	.literal .LC10, .LC5
	.literal .LC12, .LC11
	.literal .LC13, 3276800
	.literal .LC15, .LC14
	.literal .LC16, -65536
	.literal .LC17, 65535
	.literal .LC18, 1061158912
	.literal .LC19, .LC7
	.align	4
	.global	bootloader_mmap
	.type	bootloader_mmap, @function
bootloader_mmap:
.LFB9:
	.loc 1 97 0
.LVL42:
	entry	sp, 32
.LCFI3:
	.loc 1 98 0
	l32r	a4, .LC9
	l8ui	a4, a4, 0
	beqz.n	a4, .L16
	.loc 1 99 0 discriminator 1
	call8	esp_log_timestamp
.LVL43:
	l32r	a12, .LC10
	mov.n	a11, a10
	l32r	a10, .LC12
	call8	ets_printf
.LVL44:
	.loc 1 100 0 discriminator 1
	movi.n	a2, 0
.LVL45:
	retw.n
.LVL46:
.L16:
	.loc 1 102 0
	l32r	a4, .LC13
	bgeu	a4, a3, .L18
	.loc 1 104 0 discriminator 1
	call8	esp_log_timestamp
.LVL47:
	mov.n	a13, a3
	l32r	a12, .LC10
	mov.n	a11, a10
	l32r	a10, .LC15
	call8	ets_printf
.LVL48:
	.loc 1 105 0 discriminator 1
	movi.n	a2, 0
.LVL49:
	retw.n
.LVL50:
.L18:
	.loc 1 108 0
	l32r	a4, .LC16
	and	a4, a2, a4
.LVL51:
	.loc 1 109 0
	sub	a2, a2, a4
.LVL52:
	add.n	a3, a3, a2
.LVL53:
	l32r	a8, .LC17
	add.n	a3, a3, a8
	extui	a3, a3, 16, 16
.LVL54:
.LBB54:
.LBB55:
	.loc 2 166 0
	movi.n	a10, 0
	call8	Cache_Read_Disable_rom
.LVL55:
.LBE55:
.LBE54:
.LBB56:
.LBB57:
	.loc 2 150 0
	movi.n	a10, 0
	call8	Cache_Flush_rom
.LVL56:
.LBE57:
.LBE56:
.LBB58:
.LBB59:
	.loc 2 76 0
	mov.n	a15, a3
	movi.n	a14, 0x40
	mov.n	a13, a4
	l32r	a12, .LC18
	movi.n	a11, 0
	mov.n	a10, a11
	call8	cache_flash_mmu_set_rom
.LVL57:
	mov.n	a3, a10
.LVL58:
.LBE59:
.LBE58:
	.loc 1 114 0
	beqz.n	a10, .L19
	.loc 1 115 0 discriminator 1
	call8	esp_log_timestamp
.LVL59:
	mov.n	a13, a3
	l32r	a12, .LC10
	mov.n	a11, a10
	l32r	a10, .LC19
	call8	ets_printf
.LVL60:
.LBB60:
.LBB61:
	.loc 2 182 0 discriminator 1
	movi.n	a10, 0
	call8	Cache_Read_Enable_rom
.LVL61:
.LBE61:
.LBE60:
	.loc 1 117 0 discriminator 1
	movi.n	a2, 0
.LVL62:
	retw.n
.LVL63:
.L19:
.LBB62:
.LBB63:
	.loc 2 182 0
	movi.n	a10, 0
	call8	Cache_Read_Enable_rom
.LVL64:
.LBE63:
.LBE62:
	.loc 1 121 0
	movi.n	a4, 1
.LVL65:
	l32r	a3, .LC9
.LVL66:
	s8i	a4, a3, 0
	.loc 1 123 0
	l32r	a3, .LC18
	add.n	a2, a2, a3
.LVL67:
	.loc 1 124 0
	retw.n
.LFE9:
	.size	bootloader_mmap, .-bootloader_mmap
	.section	.text.bootloader_munmap,"ax",@progbits
	.literal_position
	.literal .LC20, mapped
	.literal .LC21, current_read_mapping
	.align	4
	.global	bootloader_munmap
	.type	bootloader_munmap, @function
bootloader_munmap:
.LFB10:
	.loc 1 127 0
.LVL68:
	entry	sp, 32
.LCFI4:
	.loc 1 128 0
	l32r	a8, .LC20
	l8ui	a8, a8, 0
	beqz.n	a8, .L20
.LVL69:
.LBB64:
.LBB65:
	.loc 2 166 0
	movi.n	a10, 0
	call8	Cache_Read_Disable_rom
.LVL70:
.LBE65:
.LBE64:
.LBB66:
.LBB67:
	.loc 2 150 0
	movi.n	a10, 0
	call8	Cache_Flush_rom
.LVL71:
.LBE67:
.LBE66:
	.loc 1 132 0
	movi.n	a10, 0
	call8	mmu_init
.LVL72:
	.loc 1 133 0
	movi.n	a9, 0
	l32r	a8, .LC20
	s8i	a9, a8, 0
	.loc 1 134 0
	movi.n	a9, -1
	l32r	a8, .LC21
	s32i.n	a9, a8, 0
.LVL73:
.L20:
	retw.n
.LFE10:
	.size	bootloader_munmap, .-bootloader_munmap
	.section	.rodata.str1.4
	.align	4
.LC23:
	.string	"\033[0;31mE (%d) %s: bootloader_flash_read src_addr 0x%x not 4-byte aligned\033[0m\n"
	.align	4
.LC25:
	.string	"\033[0;31mE (%d) %s: bootloader_flash_read size 0x%x not 4-byte aligned\033[0m\n"
	.align	4
.LC27:
	.string	"\033[0;31mE (%d) %s: bootloader_flash_read dest 0x%x not 4-byte aligned\033[0m\n"
	.section	.text.bootloader_flash_read,"ax",@progbits
	.literal_position
	.literal .LC22, .LC5
	.literal .LC24, .LC23
	.literal .LC26, .LC25
	.literal .LC28, .LC27
	.align	4
	.global	bootloader_flash_read
	.type	bootloader_flash_read, @function
bootloader_flash_read:
.LFB14:
	.loc 1 194 0
.LVL74:
	entry	sp, 32
.LCFI5:
	extui	a5, a5, 0, 8
	.loc 1 195 0
	extui	a8, a2, 0, 2
	beqz.n	a8, .L23
	.loc 1 196 0 discriminator 1
	call8	esp_log_timestamp
.LVL75:
	mov.n	a13, a2
	l32r	a12, .LC22
	mov.n	a11, a10
	l32r	a10, .LC24
	call8	ets_printf
.LVL76:
	.loc 1 197 0 discriminator 1
	movi.n	a2, -1
.LVL77:
	retw.n
.LVL78:
.L23:
	.loc 1 199 0
	extui	a8, a4, 0, 2
	beqz.n	a8, .L25
	.loc 1 200 0 discriminator 1
	call8	esp_log_timestamp
.LVL79:
	mov.n	a13, a4
	l32r	a12, .LC22
	mov.n	a11, a10
	l32r	a10, .LC26
	call8	ets_printf
.LVL80:
	.loc 1 201 0 discriminator 1
	movi.n	a2, -1
.LVL81:
	retw.n
.LVL82:
.L25:
	.loc 1 203 0
	extui	a8, a3, 0, 2
	beqz.n	a8, .L26
	.loc 1 204 0 discriminator 1
	call8	esp_log_timestamp
.LVL83:
	mov.n	a13, a3
	l32r	a12, .LC22
	mov.n	a11, a10
	l32r	a10, .LC28
	call8	ets_printf
.LVL84:
	.loc 1 205 0 discriminator 1
	movi.n	a2, -1
.LVL85:
	retw.n
.LVL86:
.L26:
	.loc 1 208 0
	beqz.n	a5, .L27
	.loc 1 209 0
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	bootloader_flash_read_allow_decrypt
.LVL87:
	mov.n	a2, a10
.LVL88:
	retw.n
.LVL89:
.L27:
	.loc 1 211 0
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	bootloader_flash_read_no_decrypt
.LVL90:
	mov.n	a2, a10
.LVL91:
	.loc 1 213 0
	retw.n
.LFE14:
	.size	bootloader_flash_read, .-bootloader_flash_read
	.section	.rodata.str1.4
	.align	4
.LC30:
	.string	"\033[0;31mE (%d) %s: bootloader_flash_write dest_addr 0x%x not %d-byte aligned\033[0m\n"
	.align	4
.LC32:
	.string	"\033[0;31mE (%d) %s: bootloader_flash_write size 0x%x not %d-byte aligned\033[0m\n"
	.align	4
.LC34:
	.string	"\033[0;31mE (%d) %s: bootloader_flash_write src 0x%x not 4 byte aligned\033[0m\n"
	.section	.text.bootloader_flash_write,"ax",@progbits
	.literal_position
	.literal .LC29, .LC5
	.literal .LC31, .LC30
	.literal .LC33, .LC32
	.literal .LC35, .LC34
	.align	4
	.global	bootloader_flash_write
	.type	bootloader_flash_write, @function
bootloader_flash_write:
.LFB15:
	.loc 1 216 0
.LVL92:
	entry	sp, 32
.LCFI6:
	extui	a5, a5, 0, 8
	.loc 1 218 0
	beqz.n	a5, .L35
	movi.n	a6, 0x20
	j	.L29
.L35:
	movi.n	a6, 4
.L29:
.LVL93:
	.loc 1 219 0 discriminator 4
	remu	a8, a2, a6
	beqz.n	a8, .L30
	.loc 1 220 0 discriminator 1
	call8	esp_log_timestamp
.LVL94:
	mov.n	a14, a6
	mov.n	a13, a2
	l32r	a12, .LC29
	mov.n	a11, a10
	l32r	a10, .LC31
	call8	ets_printf
.LVL95:
	.loc 1 221 0 discriminator 1
	movi.n	a2, -1
.LVL96:
	retw.n
.LVL97:
.L30:
	.loc 1 223 0
	remu	a8, a4, a6
	beqz.n	a8, .L32
	.loc 1 224 0 discriminator 1
	call8	esp_log_timestamp
.LVL98:
	mov.n	a14, a6
	mov.n	a13, a4
	l32r	a12, .LC29
	mov.n	a11, a10
	l32r	a10, .LC33
	call8	ets_printf
.LVL99:
	.loc 1 225 0 discriminator 1
	movi.n	a2, -1
.LVL100:
	retw.n
.LVL101:
.L32:
	.loc 1 227 0
	extui	a6, a3, 0, 2
.LVL102:
	beqz.n	a6, .L33
	.loc 1 228 0 discriminator 1
	call8	esp_log_timestamp
.LVL103:
	mov.n	a13, a3
	l32r	a12, .LC29
	mov.n	a11, a10
	l32r	a10, .LC35
	call8	ets_printf
.LVL104:
	.loc 1 229 0 discriminator 1
	movi.n	a2, -1
.LVL105:
	retw.n
.LVL106:
.L33:
	.loc 1 232 0
	call8	esp_rom_spiflash_unlock
.LVL107:
	call8	spi_to_esp_err
.LVL108:
	.loc 1 233 0
	bnez.n	a10, .L36
	.loc 1 237 0
	beqz.n	a5, .L34
	.loc 1 238 0
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
.LVL109:
	call8	esp_rom_spiflash_write_encrypted
.LVL110:
	call8	spi_to_esp_err
.LVL111:
	mov.n	a2, a10
.LVL112:
	retw.n
.LVL113:
.L34:
	.loc 1 240 0
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
.LVL114:
	call8	esp_rom_spiflash_write
.LVL115:
	call8	spi_to_esp_err
.LVL116:
	mov.n	a2, a10
.LVL117:
	retw.n
.LVL118:
.L36:
	.loc 1 234 0
	mov.n	a2, a10
.LVL119:
	.loc 1 242 0
	retw.n
.LFE15:
	.size	bootloader_flash_write, .-bootloader_flash_write
	.section	.text.bootloader_flash_erase_sector,"ax",@progbits
	.align	4
	.global	bootloader_flash_erase_sector
	.type	bootloader_flash_erase_sector, @function
bootloader_flash_erase_sector:
.LFB16:
	.loc 1 245 0
.LVL120:
	entry	sp, 32
.LCFI7:
	.loc 1 246 0
	mov.n	a10, a2
	call8	esp_rom_spiflash_erase_sector
.LVL121:
	call8	spi_to_esp_err
.LVL122:
	.loc 1 247 0
	mov.n	a2, a10
.LVL123:
	retw.n
.LFE16:
	.size	bootloader_flash_erase_sector, .-bootloader_flash_erase_sector
	.section	.data.current_read_mapping,"aw",@progbits
	.align	4
	.type	current_read_mapping, @object
	.size	current_read_mapping, 4
current_read_mapping:
	.word	-1
	.section	.bss.mapped,"aw",@nobits
	.type	mapped, @object
	.size	mapped, 1
mapped:
	.zero	1
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
	.uleb128 0x30
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI2-.LFB12
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI3-.LFB9
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI4-.LFB10
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI5-.LFB14
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI6-.LFB15
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI7-.LFB16
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
	.text
.Letext0:
	.file 3 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 4 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\machine\\_default_types.h"
	.file 5 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\stdint.h"
	.file 6 "C:/esp/esp-idf/components/esp32/include/esp_err.h"
	.file 7 "C:/esp/esp-idf/components/log/include/esp_log.h"
	.file 8 "C:/esp/esp-idf/components/esp32/include/rom/spi_flash.h"
	.file 9 "C:/esp/esp-idf/components/esp32/include/rom/ets_sys.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xc01
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF75
	.byte	0xc
	.4byte	.LASF76
	.4byte	.LASF77
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF5
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
	.byte	0x4
	.byte	0x19
	.4byte	0x25
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x4
	.byte	0x1a
	.4byte	0x37
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x4
	.byte	0x31
	.4byte	0x25
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x5
	.byte	0x2c
	.4byte	0x5a
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x5
	.byte	0x2d
	.4byte	0x65
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x5
	.byte	0xa9
	.4byte	0x7e
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF14
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF16
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF17
	.uleb128 0x6
	.byte	0x4
	.4byte	0xce
	.uleb128 0x7
	.4byte	0xc1
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x6
	.byte	0x18
	.4byte	0x89
	.uleb128 0x8
	.byte	0x4
	.4byte	0x37
	.byte	0x7
	.byte	0x1f
	.4byte	0x10f
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
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x7
	.byte	0x26
	.4byte	0xde
	.uleb128 0x8
	.byte	0x4
	.4byte	0x37
	.byte	0x8
	.byte	0x81
	.4byte	0x139
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0x8
	.byte	0x85
	.4byte	0x11a
	.uleb128 0xa
	.4byte	.LASF78
	.byte	0x2
	.byte	0x45
	.4byte	0x37
	.byte	0x3
	.4byte	0x1ae
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x2
	.byte	0x45
	.4byte	0x25
	.uleb128 0xc
	.string	"pid"
	.byte	0x2
	.byte	0x45
	.4byte	0x25
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x2
	.byte	0x45
	.4byte	0x37
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x2
	.byte	0x45
	.4byte	0x37
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0x2
	.byte	0x45
	.4byte	0x25
	.uleb128 0xc
	.string	"num"
	.byte	0x2
	.byte	0x45
	.4byte	0x25
	.uleb128 0xd
	.4byte	.LASF66
	.byte	0x2
	.byte	0x47
	.4byte	0x37
	.byte	0
	.uleb128 0xe
	.string	"ret"
	.byte	0x2
	.byte	0x49
	.4byte	0x37
	.byte	0
	.uleb128 0xf
	.4byte	.LASF34
	.byte	0x2
	.byte	0x92
	.byte	0x3
	.4byte	0x1ce
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x2
	.byte	0x92
	.4byte	0x25
	.uleb128 0x10
	.4byte	.LASF36
	.byte	0x2
	.byte	0x94
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF35
	.byte	0x2
	.byte	0xa2
	.byte	0x3
	.4byte	0x1ee
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x2
	.byte	0xa2
	.4byte	0x25
	.uleb128 0x10
	.4byte	.LASF37
	.byte	0x2
	.byte	0xa4
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF38
	.byte	0x2
	.byte	0xb2
	.byte	0x3
	.4byte	0x20e
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x2
	.byte	0xb2
	.4byte	0x25
	.uleb128 0x10
	.4byte	.LASF39
	.byte	0x2
	.byte	0xb4
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	.LASF40
	.byte	0x1
	.byte	0x8a
	.4byte	0xd3
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x235
	.uleb128 0x12
	.string	"r"
	.byte	0x1
	.byte	0x8a
	.4byte	0x139
	.4byte	.LLST0
	.byte	0
	.uleb128 0x11
	.4byte	.LASF41
	.byte	0x1
	.byte	0xa2
	.4byte	0xd3
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x47a
	.uleb128 0x13
	.4byte	.LASF42
	.byte	0x1
	.byte	0xa2
	.4byte	0x2c
	.4byte	.LLST1
	.uleb128 0x13
	.4byte	.LASF43
	.byte	0x1
	.byte	0xa2
	.4byte	0xaa
	.4byte	.LLST2
	.uleb128 0x14
	.4byte	.LASF44
	.byte	0x1
	.byte	0xa2
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x15
	.4byte	.LASF45
	.byte	0x1
	.byte	0xa4
	.4byte	0x47a
	.4byte	.LLST3
	.uleb128 0x16
	.4byte	.LBB35
	.4byte	.LBE35-.LBB35
	.uleb128 0x15
	.4byte	.LASF46
	.byte	0x1
	.byte	0xa9
	.4byte	0x25
	.4byte	.LLST4
	.uleb128 0x16
	.4byte	.LBB36
	.4byte	.LBE36-.LBB36
	.uleb128 0x15
	.4byte	.LASF47
	.byte	0x1
	.byte	0xaa
	.4byte	0x94
	.4byte	.LLST5
	.uleb128 0x15
	.4byte	.LASF48
	.byte	0x1
	.byte	0xab
	.4byte	0x94
	.4byte	.LLST6
	.uleb128 0x15
	.4byte	.LASF49
	.byte	0x1
	.byte	0xac
	.4byte	0x47a
	.4byte	.LLST7
	.uleb128 0x16
	.4byte	.LBB37
	.4byte	.LBE37-.LBB37
	.uleb128 0x17
	.string	"e"
	.byte	0x1
	.byte	0xb2
	.4byte	0x25
	.4byte	.LLST8
	.uleb128 0x18
	.4byte	0x1ce
	.4byte	.LBB38
	.4byte	.LBE38-.LBB38
	.byte	0x1
	.byte	0xaf
	.4byte	0x322
	.uleb128 0x19
	.4byte	0x1da
	.4byte	.LLST9
	.uleb128 0x16
	.4byte	.LBB39
	.4byte	.LBE39-.LBB39
	.uleb128 0x1a
	.4byte	.LVL15
	.4byte	0xb7b
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	0x1ae
	.4byte	.LBB40
	.4byte	.LBE40-.LBB40
	.byte	0x1
	.byte	0xb0
	.4byte	0x358
	.uleb128 0x19
	.4byte	0x1ba
	.4byte	.LLST10
	.uleb128 0x16
	.4byte	.LBB41
	.4byte	.LBE41-.LBB41
	.uleb128 0x1a
	.4byte	.LVL16
	.4byte	0xb86
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	0x144
	.4byte	.LBB42
	.4byte	.LBE42-.LBB42
	.byte	0x1
	.byte	0xb2
	.4byte	0x3df
	.uleb128 0x19
	.4byte	0x18b
	.4byte	.LLST11
	.uleb128 0x19
	.4byte	0x180
	.4byte	.LLST12
	.uleb128 0x19
	.4byte	0x175
	.4byte	.LLST13
	.uleb128 0x19
	.4byte	0x16a
	.4byte	.LLST14
	.uleb128 0x19
	.4byte	0x15f
	.4byte	.LLST15
	.uleb128 0x19
	.4byte	0x154
	.4byte	.LLST15
	.uleb128 0x16
	.4byte	.LBB43
	.4byte	.LBE43-.LBB43
	.uleb128 0x1c
	.4byte	0x1a2
	.uleb128 0x1a
	.4byte	.LVL17
	.4byte	0xb91
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0xc
	.4byte	0x3f720000
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	0x1ee
	.4byte	.LBB44
	.4byte	.LBE44-.LBB44
	.byte	0x1
	.byte	0xb5
	.4byte	0x415
	.uleb128 0x19
	.4byte	0x1fa
	.4byte	.LLST17
	.uleb128 0x16
	.4byte	.LBB45
	.4byte	.LBE45-.LBB45
	.uleb128 0x1a
	.4byte	.LVL21
	.4byte	0xb9c
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	0x1ee
	.4byte	.LBB46
	.4byte	.LBE46-.LBB46
	.byte	0x1
	.byte	0xb9
	.4byte	0x44b
	.uleb128 0x19
	.4byte	0x1fa
	.4byte	.LLST18
	.uleb128 0x16
	.4byte	.LBB47
	.4byte	.LBE47-.LBB47
	.uleb128 0x1a
	.4byte	.LVL27
	.4byte	0xb9c
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL19
	.4byte	0xba7
	.uleb128 0x1a
	.4byte	.LVL20
	.4byte	0xbb2
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x94
	.uleb128 0x11
	.4byte	.LASF50
	.byte	0x1
	.byte	0x98
	.4byte	0xd3
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x599
	.uleb128 0x13
	.4byte	.LASF42
	.byte	0x1
	.byte	0x98
	.4byte	0x2c
	.4byte	.LLST19
	.uleb128 0x14
	.4byte	.LASF43
	.byte	0x1
	.byte	0x98
	.4byte	0xaa
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x14
	.4byte	.LASF44
	.byte	0x1
	.byte	0x98
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x17
	.string	"r"
	.byte	0x1
	.byte	0x9c
	.4byte	0x139
	.4byte	.LLST20
	.uleb128 0x18
	.4byte	0x1ce
	.4byte	.LBB48
	.4byte	.LBE48-.LBB48
	.byte	0x1
	.byte	0x9a
	.4byte	0x502
	.uleb128 0x1e
	.4byte	0x1da
	.byte	0
	.uleb128 0x16
	.4byte	.LBB49
	.4byte	.LBE49-.LBB49
	.uleb128 0x1a
	.4byte	.LVL35
	.4byte	0xb7b
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	0x1ae
	.4byte	.LBB50
	.4byte	.LBE50-.LBB50
	.byte	0x1
	.byte	0x9b
	.4byte	0x535
	.uleb128 0x1e
	.4byte	0x1ba
	.byte	0
	.uleb128 0x16
	.4byte	.LBB51
	.4byte	.LBE51-.LBB51
	.uleb128 0x1a
	.4byte	.LVL36
	.4byte	0xb86
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	0x1ee
	.4byte	.LBB52
	.4byte	.LBE52-.LBB52
	.byte	0x1
	.byte	0x9d
	.4byte	0x568
	.uleb128 0x1e
	.4byte	0x1fa
	.byte	0
	.uleb128 0x16
	.4byte	.LBB53
	.4byte	.LBE53-.LBB53
	.uleb128 0x1a
	.4byte	.LVL39
	.4byte	0xb9c
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL37
	.4byte	0xbbd
	.4byte	0x588
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL40
	.4byte	0x20e
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LASF54
	.byte	0x1
	.byte	0x60
	.4byte	0x7cc
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7cc
	.uleb128 0x13
	.4byte	.LASF42
	.byte	0x1
	.byte	0x60
	.4byte	0x94
	.4byte	.LLST21
	.uleb128 0x13
	.4byte	.LASF44
	.byte	0x1
	.byte	0x60
	.4byte	0x94
	.4byte	.LLST22
	.uleb128 0x15
	.4byte	.LASF51
	.byte	0x1
	.byte	0x6c
	.4byte	0x94
	.4byte	.LLST23
	.uleb128 0x15
	.4byte	.LASF52
	.byte	0x1
	.byte	0x6d
	.4byte	0x94
	.4byte	.LLST24
	.uleb128 0x17
	.string	"e"
	.byte	0x1
	.byte	0x71
	.4byte	0x25
	.4byte	.LLST25
	.uleb128 0x18
	.4byte	0x1ce
	.4byte	.LBB54
	.4byte	.LBE54-.LBB54
	.byte	0x1
	.byte	0x6e
	.4byte	0x62e
	.uleb128 0x1e
	.4byte	0x1da
	.byte	0
	.uleb128 0x16
	.4byte	.LBB55
	.4byte	.LBE55-.LBB55
	.uleb128 0x1a
	.4byte	.LVL55
	.4byte	0xb7b
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	0x1ae
	.4byte	.LBB56
	.4byte	.LBE56-.LBB56
	.byte	0x1
	.byte	0x6f
	.4byte	0x661
	.uleb128 0x1e
	.4byte	0x1ba
	.byte	0
	.uleb128 0x16
	.4byte	.LBB57
	.4byte	.LBE57-.LBB57
	.uleb128 0x1a
	.4byte	.LVL56
	.4byte	0xb86
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	0x144
	.4byte	.LBB58
	.4byte	.LBE58-.LBB58
	.byte	0x1
	.byte	0x71
	.4byte	0x6df
	.uleb128 0x19
	.4byte	0x18b
	.4byte	.LLST26
	.uleb128 0x1e
	.4byte	0x180
	.byte	0x40
	.uleb128 0x19
	.4byte	0x175
	.4byte	.LLST27
	.uleb128 0x21
	.4byte	0x16a
	.4byte	0x3f400000
	.uleb128 0x1e
	.4byte	0x15f
	.byte	0
	.uleb128 0x1e
	.4byte	0x154
	.byte	0
	.uleb128 0x16
	.4byte	.LBB59
	.4byte	.LBE59-.LBB59
	.uleb128 0x1c
	.4byte	0x1a2
	.uleb128 0x1a
	.4byte	.LVL57
	.4byte	0xb91
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x4
	.byte	0x8
	.byte	0xfd
	.byte	0x46
	.byte	0x24
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	0x1ee
	.4byte	.LBB60
	.4byte	.LBE60-.LBB60
	.byte	0x1
	.byte	0x74
	.4byte	0x715
	.uleb128 0x19
	.4byte	0x1fa
	.4byte	.LLST28
	.uleb128 0x16
	.4byte	.LBB61
	.4byte	.LBE61-.LBB61
	.uleb128 0x1a
	.4byte	.LVL61
	.4byte	0xb9c
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	0x1ee
	.4byte	.LBB62
	.4byte	.LBE62-.LBB62
	.byte	0x1
	.byte	0x77
	.4byte	0x748
	.uleb128 0x1e
	.4byte	0x1fa
	.byte	0
	.uleb128 0x16
	.4byte	.LBB63
	.4byte	.LBE63-.LBB63
	.uleb128 0x1a
	.4byte	.LVL64
	.4byte	0xb9c
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL43
	.4byte	0xba7
	.uleb128 0x1f
	.4byte	.LVL44
	.4byte	0xbb2
	.4byte	0x771
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL47
	.4byte	0xba7
	.uleb128 0x1f
	.4byte	.LVL48
	.4byte	0xbb2
	.4byte	0x7a0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL59
	.4byte	0xba7
	.uleb128 0x1a
	.4byte	.LVL60
	.4byte	0xbb2
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x7d2
	.uleb128 0x22
	.uleb128 0x23
	.4byte	.LASF79
	.byte	0x1
	.byte	0x7e
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x871
	.uleb128 0x14
	.4byte	.LASF53
	.byte	0x1
	.byte	0x7e
	.4byte	0x7cc
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x18
	.4byte	0x1ce
	.4byte	.LBB64
	.4byte	.LBE64-.LBB64
	.byte	0x1
	.byte	0x82
	.4byte	0x82b
	.uleb128 0x19
	.4byte	0x1da
	.4byte	.LLST29
	.uleb128 0x16
	.4byte	.LBB65
	.4byte	.LBE65-.LBB65
	.uleb128 0x1a
	.4byte	.LVL70
	.4byte	0xb7b
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	0x1ae
	.4byte	.LBB66
	.4byte	.LBE66-.LBB66
	.byte	0x1
	.byte	0x83
	.4byte	0x861
	.uleb128 0x19
	.4byte	0x1ba
	.4byte	.LLST30
	.uleb128 0x16
	.4byte	.LBB67
	.4byte	.LBE67-.LBB67
	.uleb128 0x1a
	.4byte	.LVL71
	.4byte	0xb86
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL72
	.4byte	0xbc9
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LASF55
	.byte	0x1
	.byte	0xc1
	.4byte	0xd3
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x98a
	.uleb128 0x13
	.4byte	.LASF42
	.byte	0x1
	.byte	0xc1
	.4byte	0x2c
	.4byte	.LLST31
	.uleb128 0x14
	.4byte	.LASF43
	.byte	0x1
	.byte	0xc1
	.4byte	0xaa
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x14
	.4byte	.LASF44
	.byte	0x1
	.byte	0xc1
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x14
	.4byte	.LASF56
	.byte	0x1
	.byte	0xc1
	.4byte	0x98a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1d
	.4byte	.LVL75
	.4byte	0xba7
	.uleb128 0x1f
	.4byte	.LVL76
	.4byte	0xbb2
	.4byte	0x8ef
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL79
	.4byte	0xba7
	.uleb128 0x1f
	.4byte	.LVL80
	.4byte	0xbb2
	.4byte	0x91e
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC25
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL83
	.4byte	0xba7
	.uleb128 0x1f
	.4byte	.LVL84
	.4byte	0xbb2
	.4byte	0x94d
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC27
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL87
	.4byte	0x235
	.4byte	0x96d
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL90
	.4byte	0x480
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF57
	.uleb128 0x20
	.4byte	.LASF58
	.byte	0x1
	.byte	0xd7
	.4byte	0xd3
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xafc
	.uleb128 0x13
	.4byte	.LASF59
	.byte	0x1
	.byte	0xd7
	.4byte	0x2c
	.4byte	.LLST32
	.uleb128 0x24
	.string	"src"
	.byte	0x1
	.byte	0xd7
	.4byte	0xaa
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x14
	.4byte	.LASF44
	.byte	0x1
	.byte	0xd7
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x14
	.4byte	.LASF60
	.byte	0x1
	.byte	0xd7
	.4byte	0x98a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x17
	.string	"err"
	.byte	0x1
	.byte	0xd9
	.4byte	0xd3
	.4byte	.LLST33
	.uleb128 0x15
	.4byte	.LASF61
	.byte	0x1
	.byte	0xda
	.4byte	0x2c
	.4byte	.LLST34
	.uleb128 0x1d
	.4byte	.LVL94
	.4byte	0xba7
	.uleb128 0x1f
	.4byte	.LVL95
	.4byte	0xbb2
	.4byte	0xa33
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC30
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL98
	.4byte	0xba7
	.uleb128 0x1f
	.4byte	.LVL99
	.4byte	0xbb2
	.4byte	0xa68
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC32
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL103
	.4byte	0xba7
	.uleb128 0x1f
	.4byte	.LVL104
	.4byte	0xbb2
	.4byte	0xa97
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC34
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL107
	.4byte	0xbd4
	.uleb128 0x1d
	.4byte	.LVL108
	.4byte	0x20e
	.uleb128 0x1f
	.4byte	.LVL110
	.4byte	0xbe0
	.4byte	0xac9
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL111
	.4byte	0x20e
	.uleb128 0x1f
	.4byte	.LVL115
	.4byte	0xbec
	.4byte	0xaf2
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL116
	.4byte	0x20e
	.byte	0
	.uleb128 0x20
	.4byte	.LASF62
	.byte	0x1
	.byte	0xf4
	.4byte	0xd3
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb42
	.uleb128 0x13
	.4byte	.LASF63
	.byte	0x1
	.byte	0xf4
	.4byte	0x2c
	.4byte	.LLST35
	.uleb128 0x1f
	.4byte	.LVL121
	.4byte	0xbf8
	.4byte	0xb38
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL122
	.4byte	0x20e
	.byte	0
	.uleb128 0x25
	.string	"TAG"
	.byte	0x1
	.byte	0x51
	.4byte	0xb54
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC5
	.byte	0x9f
	.uleb128 0x7
	.4byte	0xc8
	.uleb128 0x26
	.4byte	.LASF64
	.byte	0x1
	.byte	0x5b
	.4byte	0x98a
	.uleb128 0x5
	.byte	0x3
	.4byte	mapped
	.uleb128 0x26
	.4byte	.LASF65
	.byte	0x1
	.byte	0x5e
	.4byte	0x94
	.uleb128 0x5
	.byte	0x3
	.4byte	current_read_mapping
	.uleb128 0x27
	.4byte	.LASF37
	.4byte	.LASF37
	.byte	0x2
	.byte	0xa4
	.uleb128 0x27
	.4byte	.LASF36
	.4byte	.LASF36
	.byte	0x2
	.byte	0x94
	.uleb128 0x27
	.4byte	.LASF66
	.4byte	.LASF66
	.byte	0x2
	.byte	0x47
	.uleb128 0x27
	.4byte	.LASF39
	.4byte	.LASF39
	.byte	0x2
	.byte	0xb4
	.uleb128 0x27
	.4byte	.LASF67
	.4byte	.LASF67
	.byte	0x7
	.byte	0x4c
	.uleb128 0x27
	.4byte	.LASF68
	.4byte	.LASF68
	.byte	0x9
	.byte	0xde
	.uleb128 0x28
	.4byte	.LASF69
	.4byte	.LASF69
	.byte	0x8
	.2byte	0x1bd
	.uleb128 0x27
	.4byte	.LASF70
	.4byte	.LASF70
	.byte	0x2
	.byte	0x28
	.uleb128 0x28
	.4byte	.LASF71
	.4byte	.LASF71
	.byte	0x8
	.2byte	0x146
	.uleb128 0x28
	.4byte	.LASF72
	.4byte	.LASF72
	.byte	0x8
	.2byte	0x1f3
	.uleb128 0x28
	.4byte	.LASF73
	.4byte	.LASF73
	.byte	0x8
	.2byte	0x1ad
	.uleb128 0x28
	.4byte	.LASF74
	.4byte	.LASF74
	.byte	0x8
	.2byte	0x18f
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x25
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
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x5
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
	.4byte	.LVL6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL7
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL8
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL11
	.4byte	.LFE13
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL10
	.4byte	.LFE13
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL10
	.4byte	.LFE13
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL12
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL29
	.4byte	.LVL32
	.2byte	0x9
	.byte	0x73
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL13
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x8
	.byte	0x75
	.sleb128 0
	.byte	0x11
	.sleb128 -65536
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x8
	.byte	0x75
	.sleb128 0
	.byte	0x11
	.sleb128 -65536
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL32
	.2byte	0xe
	.byte	0x73
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x22
	.byte	0x11
	.sleb128 -65536
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x13
	.byte	0x73
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x22
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x23
	.uleb128 0x3f720000
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL18
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL24
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL14
	.4byte	.LVL27
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL15
	.4byte	.LVL27
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL16
	.4byte	.LVL27
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL16
	.4byte	.LVL27
	.2byte	0x3
	.byte	0x8
	.byte	0x40
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL16
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x8
	.byte	0x75
	.sleb128 0
	.byte	0x11
	.sleb128 -65536
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL16
	.4byte	.LVL27
	.2byte	0x6
	.byte	0xc
	.4byte	0x3f720000
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL16
	.4byte	.LVL27
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL20
	.4byte	.LVL23
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL25
	.4byte	.LVL27
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL33
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL38
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL38
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL42
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL46
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
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL52
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL42
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL53
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL51
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL65
	.4byte	.LFE9
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
.LLST24:
	.4byte	.LVL54
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL58
	.4byte	.LVL62
	.2byte	0xd
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0xffff
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x11
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x22
	.byte	0x23
	.uleb128 0xffff
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL63
	.4byte	.LVL67
	.2byte	0xd
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0xffff
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL67
	.4byte	.LFE9
	.2byte	0xf
	.byte	0x72
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x22
	.byte	0xc
	.4byte	0x3f3f0001
	.byte	0x1c
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL58
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL56
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL58
	.4byte	.LVL62
	.2byte	0xd
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0xffff
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x11
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x22
	.byte	0x23
	.uleb128 0xffff
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL63
	.4byte	.LVL67
	.2byte	0xd
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0xffff
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL67
	.4byte	.LFE9
	.2byte	0xf
	.byte	0x72
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x22
	.byte	0xc
	.4byte	0x3f3f0001
	.byte	0x1c
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL56
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL65
	.4byte	.LFE9
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
.LLST28:
	.4byte	.LVL60
	.4byte	.LVL63
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL69
	.4byte	.LVL73
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL70
	.4byte	.LVL73
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL74
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
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL81
	.4byte	.LVL82
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL82
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL85
	.4byte	.LVL86
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL86
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
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL91
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL92
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL96
	.4byte	.LVL97
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL97
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
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL112
	.4byte	.LVL113
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL113
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
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL108
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL113
	.4byte	.LVL114
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL118
	.4byte	.LFE15
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL93
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL120
	.4byte	.LVL123
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL123
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
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
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF46:
	.string	"word"
.LASF64:
	.string	"mapped"
.LASF32:
	.string	"paddr"
.LASF26:
	.string	"ESP_ROM_SPIFLASH_RESULT_OK"
.LASF59:
	.string	"dest_addr"
.LASF74:
	.string	"esp_rom_spiflash_erase_sector"
.LASF51:
	.string	"src_addr_aligned"
.LASF24:
	.string	"ESP_LOG_VERBOSE"
.LASF4:
	.string	"short int"
.LASF5:
	.string	"size_t"
.LASF13:
	.string	"intptr_t"
.LASF7:
	.string	"__uint32_t"
.LASF43:
	.string	"dest"
.LASF34:
	.string	"Cache_Flush"
.LASF73:
	.string	"esp_rom_spiflash_write"
.LASF47:
	.string	"word_src"
.LASF10:
	.string	"__intptr_t"
.LASF29:
	.string	"esp_rom_spiflash_result_t"
.LASF75:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -ggdb -Og -Og -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF72:
	.string	"esp_rom_spiflash_write_encrypted"
.LASF70:
	.string	"mmu_init"
.LASF63:
	.string	"sector"
.LASF38:
	.string	"Cache_Read_Enable"
.LASF45:
	.string	"dest_words"
.LASF77:
	.string	"C:\\\\esp\\\\esp32-ArkPOS2\\\\ArkPOS2-esp\\\\build\\\\bootloader\\\\bootloader_support"
.LASF8:
	.string	"long long int"
.LASF36:
	.string	"Cache_Flush_rom"
.LASF14:
	.string	"long int"
.LASF15:
	.string	"sizetype"
.LASF22:
	.string	"ESP_LOG_INFO"
.LASF39:
	.string	"Cache_Read_Enable_rom"
.LASF42:
	.string	"src_addr"
.LASF53:
	.string	"mapping"
.LASF27:
	.string	"ESP_ROM_SPIFLASH_RESULT_ERR"
.LASF65:
	.string	"current_read_mapping"
.LASF61:
	.string	"alignment"
.LASF55:
	.string	"bootloader_flash_read"
.LASF66:
	.string	"cache_flash_mmu_set_rom"
.LASF3:
	.string	"unsigned char"
.LASF50:
	.string	"bootloader_flash_read_no_decrypt"
.LASF2:
	.string	"signed char"
.LASF9:
	.string	"long long unsigned int"
.LASF12:
	.string	"uint32_t"
.LASF30:
	.string	"cpu_no"
.LASF0:
	.string	"unsigned int"
.LASF35:
	.string	"Cache_Read_Disable"
.LASF68:
	.string	"ets_printf"
.LASF57:
	.string	"_Bool"
.LASF1:
	.string	"short unsigned int"
.LASF62:
	.string	"bootloader_flash_erase_sector"
.LASF79:
	.string	"bootloader_munmap"
.LASF17:
	.string	"char"
.LASF37:
	.string	"Cache_Read_Disable_rom"
.LASF31:
	.string	"vaddr"
.LASF23:
	.string	"ESP_LOG_DEBUG"
.LASF11:
	.string	"int32_t"
.LASF19:
	.string	"ESP_LOG_NONE"
.LASF48:
	.string	"map_at"
.LASF25:
	.string	"esp_log_level_t"
.LASF21:
	.string	"ESP_LOG_WARN"
.LASF58:
	.string	"bootloader_flash_write"
.LASF71:
	.string	"esp_rom_spiflash_unlock"
.LASF16:
	.string	"long unsigned int"
.LASF78:
	.string	"cache_flash_mmu_set"
.LASF44:
	.string	"size"
.LASF41:
	.string	"bootloader_flash_read_allow_decrypt"
.LASF52:
	.string	"count"
.LASF60:
	.string	"write_encrypted"
.LASF6:
	.string	"__int32_t"
.LASF49:
	.string	"map_ptr"
.LASF67:
	.string	"esp_log_timestamp"
.LASF76:
	.string	"C:/esp/esp-idf/components/bootloader_support/src/bootloader_flash.c"
.LASF28:
	.string	"ESP_ROM_SPIFLASH_RESULT_TIMEOUT"
.LASF33:
	.string	"psize"
.LASF69:
	.string	"esp_rom_spiflash_read"
.LASF20:
	.string	"ESP_LOG_ERROR"
.LASF40:
	.string	"spi_to_esp_err"
.LASF56:
	.string	"allow_decrypt"
.LASF18:
	.string	"esp_err_t"
.LASF54:
	.string	"bootloader_mmap"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-73-ge28a011) 5.2.0"
