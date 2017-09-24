	.file	"flash_mmap.c"
	.text
.Ltext0:
	.section	.iram1,"ax",@progbits
	.literal_position
	.literal .LC0, s_mmap_page_refcnt
	.literal .LC1, 1072758784
	.literal .LC2, 1072766976
	.align	4
	.type	spi_flash_mmap_init, @function
spi_flash_mmap_init:
.LFB18:
	.file 1 "C:/esp/esp-idf/components/spi_flash/flash_mmap.c"
	.loc 1 77 0
	entry	sp, 32
.LCFI0:
	.loc 1 78 0
	l32r	a8, .LC0
	l8ui	a8, a8, 0
	bnez.n	a8, .L1
	movi.n	a9, 0
	j	.L3
.LVL0:
.L8:
.LBB16:
.LBB17:
	.loc 1 83 0
	slli	a11, a9, 2
	l32r	a10, .LC1
	add.n	a10, a11, a10
	memw
	l32i.n	a8, a10, 0
.LVL1:
	.loc 1 84 0
	l32r	a12, .LC2
	add.n	a11, a11, a12
	memw
	l32i.n	a12, a11, 0
.LVL2:
	.loc 1 85 0
	beq	a8, a12, .L4
.LVL3:
	.loc 1 88 0
	movi	a8, 0x100
	memw
	s32i.n	a8, a10, 0
.LVL4:
.L4:
	.loc 1 90 0
	bbsi	a8, 8, .L5
	.loc 1 90 0 is_stmt 0 discriminator 1
	movi.n	a15, 1
	movi.n	a12, 0
.LVL5:
	mov.n	a13, a12
	moveqz	a13, a15, a9
	addi	a14, a9, -77
	moveqz	a12, a15, a14
	or	a12, a12, a13
	bnez.n	a12, .L6
	.loc 1 90 0 discriminator 2
	beqz.n	a8, .L5
.L6:
	.loc 1 91 0 is_stmt 1
	l32r	a8, .LC0
.LVL6:
	add.n	a8, a8, a9
	movi.n	a10, 1
	s8i	a10, a8, 0
	j	.L7
.LVL7:
.L5:
	.loc 1 93 0
	movi	a8, 0x100
.LVL8:
	memw
	s32i.n	a8, a10, 0
	.loc 1 94 0
	memw
	s32i.n	a8, a11, 0
.L7:
.LBE17:
	.loc 1 82 0 discriminator 2
	addi.n	a9, a9, 1
.LVL9:
.L3:
	.loc 1 82 0 is_stmt 0 discriminator 1
	movi	a8, 0xff
	bge	a8, a9, .L8
.LVL10:
.L1:
	retw.n
.LBE16:
.LFE18:
	.size	spi_flash_mmap_init, .-spi_flash_mmap_init
	.literal_position
	.literal .LC3, -65536
	.literal .LC4, 65535
	.literal .LC5, written_pages
	.literal .LC6, 65536
	.align	4
	.type	spi_flash_ensure_unmodified_region, @function
spi_flash_ensure_unmodified_region:
.LFB24:
	.loc 1 309 0 is_stmt 1
.LVL11:
	entry	sp, 32
.LCFI1:
.LVL12:
.LBB24:
.LBB25:
	.loc 1 317 0
	l32r	a8, .LC3
	and	a13, a2, a8
.LVL13:
	.loc 1 318 0
	sub	a2, a2, a13
.LVL14:
	add.n	a3, a3, a2
.LVL15:
	.loc 1 319 0
	l32r	a12, .LC4
	add.n	a2, a3, a12
	and	a12, a2, a8
.LVL16:
.LBB26:
	.loc 1 320 0
	mov.n	a8, a13
	j	.L10
.LVL17:
.L13:
.LBB27:
	.loc 1 321 0
	extui	a9, a8, 16, 16
.LVL18:
	.loc 1 322 0
	movi	a10, 0xff
	blt	a10, a9, .L14
	.loc 1 326 0
	srli	a11, a9, 5
.LVL19:
	.loc 1 327 0
	movi.n	a10, 1
	ssl	a9
	sll	a9, a10
.LVL20:
	.loc 1 331 0
	l32r	a10, .LC5
	addx4	a10, a11, a10
	l32i.n	a10, a10, 0
	bnone	a9, a10, .L12
.LVL21:
.LBB28:
.LBB29:
	.file 2 "C:/esp/esp-idf/components/esp32/include/rom/cache.h"
	.loc 2 150 0
	movi.n	a10, 0
	call8	Cache_Flush_rom
.LVL22:
.LBE29:
.LBE28:
	.loc 1 344 0
	l32r	a2, .LC5
.LVL23:
	movi.n	a8, 0
	s32i.n	a8, a2, 0
	s32i.n	a8, a2, 4
	s32i.n	a8, a2, 8
	s32i.n	a8, a2, 12
	s32i.n	a8, a2, 16
	s32i.n	a8, a2, 20
	s32i.n	a8, a2, 24
	s32i.n	a8, a2, 28
	.loc 1 345 0
	movi.n	a2, 1
	retw.n
.LVL24:
.L12:
.LBE27:
	.loc 1 320 0
	l32r	a9, .LC6
.LVL25:
	add.n	a8, a8, a9
.LVL26:
.L10:
	add.n	a9, a13, a12
	bltu	a8, a9, .L13
.LBE26:
	.loc 1 348 0
	movi.n	a2, 0
	retw.n
.LVL27:
.L14:
.LBB31:
.LBB30:
	.loc 1 323 0
	movi.n	a2, 0
.LBE30:
.LBE31:
.LBE25:
.LBE24:
	.loc 1 311 0
	retw.n
.LFE24:
	.size	spi_flash_ensure_unmodified_region, .-spi_flash_ensure_unmodified_region
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC14:
	.string	"s_mmap_page_refcnt[i] == 0 || (DPORT_PRO_FLASH_MMU_TABLE[i] == pages[pageno] && DPORT_APP_FLASH_MMU_TABLE[i] == pages[pageno])"
	.align	4
.LC17:
	.string	"C:/esp/esp-idf/components/spi_flash/flash_mmap.c"
	.section	.iram1
	.literal_position
	.literal .LC7, 1061158912
	.literal .LC8, 1074593792
	.literal .LC9, g_rom_flashchip
	.literal .LC10, 65536
	.literal .LC11, 1072758784
	.literal .LC12, s_mmap_page_refcnt
	.literal .LC13, 1072766976
	.literal .LC15, .LC14
	.literal .LC16, __func__$5452
	.literal .LC18, .LC17
	.literal .LC19, s_mmap_entries_head
	.literal .LC20, s_mmap_last_handle
	.align	4
	.global	spi_flash_mmap_pages
	.type	spi_flash_mmap_pages, @function
spi_flash_mmap_pages:
.LFB20:
	.loc 1 127 0
.LVL28:
	entry	sp, 48
.LCFI2:
.LVL29:
	.loc 1 130 0
	beqz.n	a3, .L38
	movi.n	a8, 0
	j	.L17
.LVL30:
.L18:
.LBB32:
	.loc 1 134 0
	addx4	a7, a8, a2
	l32i.n	a7, a7, 0
	bltz	a7, .L39
	.loc 1 134 0 is_stmt 0 discriminator 1
	slli	a7, a7, 16
	l32r	a9, .LC9
	l32i.n	a9, a9, 4
	bgeu	a7, a9, .L40
	.loc 1 133 0 is_stmt 1 discriminator 2
	addi.n	a8, a8, 1
.LVL31:
.L17:
	.loc 1 133 0 is_stmt 0 discriminator 1
	bltu	a8, a3, .L18
.LBE32:
	.loc 1 138 0 is_stmt 1
	movi.n	a10, 0x14
	call8	malloc
.LVL32:
	s32i.n	a10, sp, 0
.LVL33:
	.loc 1 139 0
	beqz.n	a10, .L41
	.loc 1 143 0
	call8	spi_flash_disable_interrupts_caches_and_other_cpu
.LVL34:
.LBB33:
	.loc 1 146 0
	movi.n	a7, 0
.LBE33:
	.loc 1 145 0
	s32i.n	a7, sp, 4
	s32i.n	a4, sp, 8
	mov.n	a4, a7
.LVL35:
.LBB34:
	.loc 1 146 0
	j	.L19
.LVL36:
.L21:
	.loc 1 147 0
	addx4	a8, a7, a2
	l32i.n	a10, a8, 0
	l32r	a11, .LC10
	slli	a10, a10, 16
	call8	spi_flash_ensure_unmodified_region
.LVL37:
	beqz.n	a10, .L20
	.loc 1 148 0
	movi.n	a4, 1
.LVL38:
.L20:
	.loc 1 146 0 discriminator 2
	addi.n	a7, a7, 1
.LVL39:
.L19:
	.loc 1 146 0 is_stmt 0 discriminator 1
	bltu	a7, a3, .L21
	s32i.n	a4, sp, 4
	l32i.n	a4, sp, 8
.LVL40:
.LBE34:
	.loc 1 151 0 is_stmt 1
	call8	spi_flash_mmap_init
.LVL41:
	.loc 1 156 0
	bnez.n	a4, .L43
	.loc 1 160 0
	l32r	a4, .LC7
	s32i.n	a4, sp, 8
.LVL42:
	.loc 1 159 0
	movi.n	a4, 0x40
	.loc 1 158 0
	movi.n	a15, 0
	j	.L22
.LVL43:
.L43:
	.loc 1 165 0
	l32r	a8, .LC8
	s32i.n	a8, sp, 8
.LVL44:
	.loc 1 164 0
	movi	a4, 0x73
	.loc 1 163 0
	movi.n	a15, 0x4d
.L22:
.LVL45:
	.loc 1 167 0
	bltu	a4, a3, .L44
	.loc 1 174 0
	add.n	a4, a15, a4
.LVL46:
	sub	a10, a4, a3
.LVL47:
	.loc 1 175 0
	mov.n	a4, a15
	j	.L23
.LVL48:
.L26:
.LBB35:
.LBB36:
	.loc 1 179 0
	l32r	a8, .LC11
	addx4	a8, a7, a8
	memw
	l32i.n	a11, a8, 0
.LVL49:
	.loc 1 180 0
	l32r	a8, .LC12
	add.n	a8, a8, a7
	l8ui	a8, a8, 0
.LVL50:
	.loc 1 181 0
	beqz.n	a8, .L24
	.loc 1 181 0 is_stmt 0 discriminator 1
	addx4	a8, a9, a2
	l32i.n	a8, a8, 0
	bne	a11, a8, .L25
.L24:
.LBE36:
	.loc 1 178 0 is_stmt 1 discriminator 2
	addi.n	a7, a7, 1
.LVL51:
	addi.n	a9, a9, 1
.LVL52:
	j	.L28
.LVL53:
.L45:
.LBE35:
	mov.n	a7, a4
	movi.n	a9, 0
.L28:
.LVL54:
.LBB37:
	.loc 1 178 0 is_stmt 0 discriminator 1
	add.n	a8, a4, a3
	bltu	a7, a8, .L26
.L25:
	.loc 1 186 0 is_stmt 1
	sub	a7, a7, a4
.LVL55:
	beq	a3, a7, .L27
.LBE37:
	.loc 1 175 0 discriminator 2
	addi.n	a4, a4, 1
.LVL56:
.L23:
	.loc 1 175 0 is_stmt 0 discriminator 1
	blt	a4, a10, .L45
.L27:
	.loc 1 191 0 is_stmt 1
	bne	a4, a10, .L46
	.loc 1 192 0
	movi.n	a14, 0
	s32i.n	a14, a6, 0
	.loc 1 193 0
	s32i.n	a14, a5, 0
.LVL57:
	.loc 1 194 0
	movi	a2, 0x101
.LVL58:
	j	.L30
.LVL59:
.L35:
.LBB38:
.LBB39:
	.loc 1 200 0
	l32r	a8, .LC12
	add.n	a8, a8, a7
	l8ui	a8, a8, 0
	beqz.n	a8, .L31
	.loc 1 200 0 is_stmt 0 discriminator 1
	slli	a13, a9, 2
	l32r	a10, .LC11
	add.n	a10, a13, a10
	memw
	l32i.n	a10, a10, 0
	addx4	a12, a11, a2
	l32i.n	a12, a12, 0
	bne	a10, a12, .L32
	.loc 1 200 0 discriminator 3
	l32r	a10, .LC13
	add.n	a10, a13, a10
	memw
	l32i.n	a10, a10, 0
	beq	a12, a10, .L31
.L32:
	.loc 1 200 0 discriminator 4
	l32r	a13, .LC15
	l32r	a12, .LC16
	movi	a11, 0xca
.LVL60:
	l32r	a10, .LC18
	call8	__assert_func
.LVL61:
.L31:
	.loc 1 203 0 is_stmt 1
	bnez.n	a8, .L33
	.loc 1 204 0
	slli	a9, a9, 2
	l32r	a8, .LC11
	add.n	a8, a9, a8
	memw
	l32i.n	a12, a8, 0
	addx4	a10, a11, a2
	l32i.n	a13, a10, 0
	bne	a12, a13, .L34
	.loc 1 204 0 is_stmt 0 discriminator 1
	l32r	a12, .LC13
	add.n	a12, a9, a12
	memw
	l32i.n	a12, a12, 0
	beq	a13, a12, .L33
.L34:
	.loc 1 205 0 is_stmt 1
	memw
	s32i.n	a13, a8, 0
	.loc 1 206 0
	l32r	a8, .LC13
	add.n	a9, a9, a8
	l32i.n	a8, a10, 0
	memw
	s32i.n	a8, a9, 0
.LVL62:
	.loc 1 207 0
	movi.n	a14, 1
.LVL63:
.L33:
	.loc 1 210 0 discriminator 2
	l32r	a8, .LC12
	add.n	a8, a8, a7
	l8ui	a9, a8, 0
	addi.n	a9, a9, 1
	s8i	a9, a8, 0
	.loc 1 198 0 discriminator 2
	addi.n	a7, a7, 1
.LVL64:
	addi.n	a11, a11, 1
.LVL65:
	j	.L29
.LVL66:
.L46:
.LBE39:
.LBE38:
	mov.n	a7, a4
	movi.n	a11, 0
	mov.n	a14, a11
.LVL67:
.L29:
.LBB41:
.LBB40:
	.loc 1 198 0 is_stmt 0 discriminator 1
	add.n	a8, a4, a3
	mov.n	a9, a7
	bne	a8, a7, .L35
.LBE40:
	.loc 1 213 0 is_stmt 1
	l32r	a2, .LC19
.LVL68:
	l32i.n	a2, a2, 0
	l32i.n	a8, sp, 0
	s32i.n	a2, a8, 12
	beqz.n	a2, .L36
	.loc 1 213 0 discriminator 1
	addi.n	a7, a8, 12
.LVL69:
	s32i.n	a7, a2, 16
.L36:
	.loc 1 213 0 is_stmt 0 discriminator 3
	l32r	a2, .LC19
	l32i.n	a8, sp, 0
	s32i.n	a8, a2, 0
	s32i.n	a2, a8, 16
	.loc 1 214 0 is_stmt 1 discriminator 3
	s32i.n	a4, a8, 4
	.loc 1 215 0 discriminator 3
	s32i.n	a3, a8, 8
	.loc 1 216 0 discriminator 3
	l32r	a3, .LC20
.LVL70:
	l32i.n	a2, a3, 0
	addi.n	a2, a2, 1
	s32i.n	a2, a3, 0
	s32i.n	a2, a8, 0
	.loc 1 217 0 discriminator 3
	s32i.n	a2, a6, 0
.LVL71:
	.loc 1 218 0 discriminator 3
	sub	a2, a4, a15
	slli	a2, a2, 16
	l32i.n	a3, sp, 8
	add.n	a2, a2, a3
	s32i.n	a2, a5, 0
.LVL72:
	.loc 1 219 0 discriminator 3
	movi.n	a2, 0
.LVL73:
.L30:
.LBE41:
	.loc 1 228 0
	l32i.n	a4, sp, 4
.LVL74:
	bgeu	a4, a14, .L37
.LVL75:
.LBB42:
.LBB43:
	.loc 2 150 0
	movi.n	a10, 0
	call8	Cache_Flush_rom
.LVL76:
.LBE43:
.LBE42:
.LBB44:
.LBB45:
	movi.n	a10, 1
	call8	Cache_Flush_rom
.LVL77:
.L37:
.LBE45:
.LBE44:
	.loc 1 236 0
	call8	spi_flash_enable_interrupts_caches_and_other_cpu
.LVL78:
	.loc 1 237 0
	l32i.n	a3, a5, 0
	bnez.n	a3, .L16
	.loc 1 238 0
	l32i.n	a10, sp, 0
	call8	free
.LVL79:
	retw.n
.LVL80:
.L38:
	.loc 1 131 0
	movi	a2, 0x102
.LVL81:
	retw.n
.LVL82:
.L39:
.LBB46:
	.loc 1 135 0
	movi	a2, 0x102
.LVL83:
	retw.n
.LVL84:
.L40:
	movi	a2, 0x102
.LVL85:
	retw.n
.LVL86:
.L41:
.LBE46:
	.loc 1 140 0
	movi	a2, 0x101
.LVL87:
	retw.n
.LVL88:
.L44:
	.loc 1 168 0
	movi	a2, 0x101
.LVL89:
.L16:
	.loc 1 241 0
	retw.n
.LFE20:
	.size	spi_flash_mmap_pages, .-spi_flash_mmap_pages
	.literal_position
	.literal .LC21, g_rom_flashchip
	.literal .LC22, 65535
	.align	4
	.global	spi_flash_mmap
	.type	spi_flash_mmap, @function
spi_flash_mmap:
.LFB19:
	.loc 1 101 0
.LVL90:
	entry	sp, 48
.LCFI3:
	.loc 1 103 0
	extui	a7, a2, 0, 16
	bnez.n	a7, .L52
	.loc 1 106 0
	add.n	a7, a2, a3
	l32r	a8, .LC21
	l32i.n	a8, a8, 4
	bltu	a8, a7, .L53
	.loc 1 110 0
	extui	a2, a2, 16, 16
.LVL91:
	.loc 1 111 0
	l32r	a7, .LC22
	add.n	a3, a3, a7
.LVL92:
	extui	a3, a3, 16, 16
	s32i.n	a3, sp, 0
	mov.n	a7, a3
.LVL93:
	.loc 1 113 0
	slli	a10, a3, 2
	call8	malloc
.LVL94:
	mov.n	a3, a10
.LVL95:
	.loc 1 114 0
	beqz.n	a10, .L54
	movi.n	a8, 0
	j	.L50
.LVL96:
.L51:
.LBB47:
	.loc 1 118 0 discriminator 3
	addx4	a9, a8, a3
	add.n	a10, a8, a2
	s32i.n	a10, a9, 0
	.loc 1 117 0 discriminator 3
	addi.n	a8, a8, 1
.LVL97:
.L50:
	.loc 1 117 0 is_stmt 0 discriminator 1
	blt	a8, a7, .L51
.LBE47:
	.loc 1 120 0 is_stmt 1
	mov.n	a14, a6
	mov.n	a13, a5
	mov.n	a12, a4
	l32i.n	a11, sp, 0
	mov.n	a10, a3
	call8	spi_flash_mmap_pages
.LVL98:
	mov.n	a2, a10
.LVL99:
	.loc 1 121 0
	mov.n	a10, a3
	call8	free
.LVL100:
	.loc 1 122 0
	retw.n
.LVL101:
.L52:
	.loc 1 104 0
	movi	a2, 0x102
.LVL102:
	retw.n
.LVL103:
.L53:
	.loc 1 107 0
	movi	a2, 0x102
.LVL104:
	retw.n
.LVL105:
.L54:
	.loc 1 115 0
	movi	a2, 0x101
.LVL106:
	.loc 1 123 0
	retw.n
.LFE19:
	.size	spi_flash_mmap, .-spi_flash_mmap
	.section	.rodata.str1.4
	.align	4
.LC25:
	.string	"s_mmap_page_refcnt[i] > 0"
	.align	4
.LC31:
	.string	"0 && \"invalid handle, or handle already unmapped\""
	.section	.iram1
	.literal_position
	.literal .LC23, s_mmap_entries_head
	.literal .LC24, s_mmap_page_refcnt
	.literal .LC26, .LC25
	.literal .LC27, __func__$5461
	.literal .LC28, .LC17
	.literal .LC29, 1072758784
	.literal .LC30, 1072766976
	.literal .LC32, .LC31
	.align	4
	.global	spi_flash_munmap
	.type	spi_flash_munmap, @function
spi_flash_munmap:
.LFB21:
	.loc 1 244 0
.LVL107:
	entry	sp, 32
.LCFI4:
	.loc 1 245 0
	call8	spi_flash_disable_interrupts_caches_and_other_cpu
.LVL108:
	.loc 1 248 0
	l32r	a3, .LC23
	l32i.n	a3, a3, 0
.LVL109:
	j	.L56
.L64:
	.loc 1 249 0
	l32i.n	a8, a3, 0
	bne	a8, a2, .L57
.LBB48:
	.loc 1 253 0
	l32i.n	a9, a3, 4
.LVL110:
	j	.L58
.L61:
	.loc 1 254 0
	l32r	a8, .LC24
	add.n	a8, a8, a9
	l8ui	a8, a8, 0
	bnez.n	a8, .L59
	.loc 1 254 0 is_stmt 0 discriminator 1
	l32r	a13, .LC26
	l32r	a12, .LC27
	movi	a11, 0xfe
	l32r	a10, .LC28
	call8	__assert_func
.LVL111:
.L59:
	.loc 1 255 0 is_stmt 1
	addi.n	a8, a8, -1
	extui	a8, a8, 0, 8
	l32r	a10, .LC24
	add.n	a10, a10, a9
	s8i	a8, a10, 0
	bnez.n	a8, .L60
	.loc 1 256 0
	slli	a8, a9, 2
	l32r	a10, .LC29
	add.n	a10, a8, a10
	movi	a11, 0x100
	memw
	s32i.n	a11, a10, 0
	.loc 1 257 0
	l32r	a10, .LC30
	add.n	a8, a8, a10
	memw
	s32i.n	a11, a8, 0
.L60:
	.loc 1 253 0 discriminator 2
	addi.n	a9, a9, 1
.LVL112:
.L58:
	.loc 1 253 0 is_stmt 0 discriminator 1
	l32i.n	a10, a3, 4
	l32i.n	a8, a3, 8
	add.n	a8, a10, a8
	blt	a9, a8, .L61
.LBE48:
	.loc 1 260 0 is_stmt 1
	l32i.n	a2, a3, 12
.LVL113:
	beqz.n	a2, .L62
	.loc 1 260 0 discriminator 1
	l32i.n	a8, a3, 16
	s32i.n	a8, a2, 16
.L62:
	.loc 1 260 0 is_stmt 0 discriminator 3
	l32i.n	a2, a3, 16
	l32i.n	a8, a3, 12
	s32i.n	a8, a2, 0
	.loc 1 261 0 is_stmt 1 discriminator 3
	j	.L63
.LVL114:
.L57:
	.loc 1 248 0 discriminator 2
	l32i.n	a3, a3, 12
.LVL115:
.L56:
	.loc 1 248 0 discriminator 1
	bnez.n	a3, .L64
.LVL116:
.L63:
	.loc 1 264 0
	call8	spi_flash_enable_interrupts_caches_and_other_cpu
.LVL117:
	.loc 1 265 0
	bnez.n	a3, .L65
	.loc 1 266 0
	l32r	a13, .LC32
	l32r	a12, .LC27
	movi	a11, 0x10a
	l32r	a10, .LC28
	call8	__assert_func
.LVL118:
.L65:
	.loc 1 268 0
	mov.n	a10, a3
	call8	free
.LVL119:
	retw.n
.LFE21:
	.size	spi_flash_munmap, .-spi_flash_munmap
	.section	.rodata.str1.4
	.align	4
.LC34:
	.string	"handle=%d page=%d count=%d\n"
	.align	4
.LC38:
	.string	"page %d: refcnt=%d paddr=%d\n"
	.section	.text.spi_flash_mmap_dump,"ax",@progbits
	.literal_position
	.literal .LC33, s_mmap_entries_head
	.literal .LC35, .LC34
	.literal .LC36, s_mmap_page_refcnt
	.literal .LC37, 1072758784
	.literal .LC39, .LC38
	.align	4
	.global	spi_flash_mmap_dump
	.type	spi_flash_mmap_dump, @function
spi_flash_mmap_dump:
.LFB22:
	.loc 1 272 0
	entry	sp, 32
.LCFI5:
	.loc 1 273 0
	call8	spi_flash_mmap_init
.LVL120:
	.loc 1 275 0
	l32r	a2, .LC33
	l32i.n	a2, a2, 0
.LVL121:
	j	.L67
.L68:
	.loc 1 276 0 discriminator 3
	l32i.n	a13, a2, 8
	l32i.n	a12, a2, 4
	l32i.n	a11, a2, 0
	l32r	a10, .LC35
	call8	printf
.LVL122:
	.loc 1 275 0 discriminator 3
	l32i.n	a2, a2, 12
.LVL123:
.L67:
	.loc 1 275 0 discriminator 1
	bnez.n	a2, .L68
	j	.L69
.LVL124:
.L71:
.LBB49:
	.loc 1 279 0
	l32r	a8, .LC36
	add.n	a8, a8, a2
	l8ui	a12, a8, 0
	beqz.n	a12, .L70
	.loc 1 281 0
	l32r	a8, .LC37
	addx4	a8, a2, a8
	.loc 1 280 0
	memw
	l32i.n	a13, a8, 0
	mov.n	a11, a2
	l32r	a10, .LC39
	call8	printf
.LVL125:
.L70:
	.loc 1 278 0 discriminator 2
	addi.n	a2, a2, 1
.LVL126:
.L69:
	.loc 1 278 0 is_stmt 0 discriminator 1
	movi	a8, 0xff
	bge	a8, a2, .L71
.LBE49:
	.loc 1 284 0 is_stmt 1
	retw.n
.LFE22:
	.size	spi_flash_mmap_dump, .-spi_flash_mmap_dump
	.section	.iram1
	.literal_position
	.literal .LC40, -65536
	.literal .LC41, 65535
	.literal .LC42, written_pages
	.literal .LC43, 65536
	.align	4
	.global	spi_flash_mark_modified_region
	.type	spi_flash_mark_modified_region, @function
spi_flash_mark_modified_region:
.LFB23:
	.loc 1 304 0
.LVL127:
	entry	sp, 32
.LCFI6:
.LVL128:
.LBB56:
.LBB57:
	.loc 1 317 0
	l32r	a8, .LC40
	and	a12, a2, a8
.LVL129:
	.loc 1 318 0
	sub	a2, a2, a12
.LVL130:
	add.n	a3, a3, a2
.LVL131:
	.loc 1 319 0
	l32r	a13, .LC41
	add.n	a2, a3, a13
	and	a13, a2, a8
.LVL132:
.LBB58:
	.loc 1 320 0
	mov.n	a10, a12
	j	.L73
.LVL133:
.L75:
.LBB59:
	.loc 1 321 0
	extui	a11, a10, 16, 16
.LVL134:
	.loc 1 322 0
	movi	a8, 0xff
	blt	a8, a11, .L72
	.loc 1 326 0
	srli	a9, a11, 5
.LVL135:
	.loc 1 327 0
	movi.n	a8, 1
	ssl	a11
	sll	a8, a8
.LVL136:
	.loc 1 330 0
	l32r	a11, .LC42
.LVL137:
	addx4	a9, a9, a11
.LVL138:
	l32i.n	a11, a9, 0
	or	a8, a11, a8
.LVL139:
	s32i.n	a8, a9, 0
.LBE59:
	.loc 1 320 0
	l32r	a8, .LC43
	add.n	a10, a10, a8
.LVL140:
.L73:
	add.n	a8, a12, a13
	bltu	a10, a8, .L75
.L72:
	retw.n
.LBE58:
.LBE57:
.LBE56:
.LFE23:
	.size	spi_flash_mark_modified_region, .-spi_flash_mark_modified_region
	.section	.text.spi_flash_cache2phys,"ax",@progbits
	.literal_position
	.literal .LC44, -1073741824
	.literal .LC45, 851967
	.literal .LC46, 1074593791
	.literal .LC47, -1061158912
	.literal .LC48, 65535
	.literal .LC49, 1072758784
	.align	4
	.global	spi_flash_cache2phys
	.type	spi_flash_cache2phys, @function
spi_flash_cache2phys:
.LFB26:
	.loc 1 353 0
.LVL141:
	entry	sp, 32
.LCFI7:
.LVL142:
	.loc 1 356 0
	l32r	a8, .LC44
	add.n	a8, a2, a8
	l32r	a9, .LC45
	bgeu	a9, a8, .L80
	.loc 1 360 0
	l32r	a8, .LC46
	blt	a8, a2, .L78
	.loc 1 362 0
	l32r	a9, .LC47
	add.n	a9, a2, a9
	l32r	a8, .LC48
	add.n	a8, a9, a8
	movgez	a8, a9, a9
	srai	a8, a8, 16
.LVL143:
	j	.L79
.LVL144:
.L78:
	.loc 1 365 0
	l32r	a9, .LC44
	add.n	a9, a2, a9
	l32r	a8, .LC48
	add.n	a8, a9, a8
	movgez	a8, a9, a9
	srai	a8, a8, 16
	addi	a8, a8, 64
.LVL145:
.L79:
	.loc 1 368 0
	movi	a9, 0xff
	bltu	a9, a8, .L81
	.loc 1 372 0
	l32r	a9, .LC49
	addx4	a8, a8, a9
.LVL146:
	memw
	l32i.n	a8, a8, 0
.LVL147:
	.loc 1 373 0
	beqi	a8, 256, .L82
	.loc 1 377 0
	slli	a8, a8, 16
.LVL148:
	.loc 1 378 0
	extui	a2, a2, 0, 16
.LVL149:
	or	a2, a8, a2
	retw.n
.LVL150:
.L80:
	.loc 1 358 0
	movi.n	a2, -1
.LVL151:
	retw.n
.LVL152:
.L81:
	.loc 1 370 0
	movi.n	a2, -1
.LVL153:
	retw.n
.LVL154:
.L82:
	.loc 1 375 0
	movi.n	a2, -1
.LVL155:
	.loc 1 379 0
	retw.n
.LFE26:
	.size	spi_flash_cache2phys, .-spi_flash_cache2phys
	.section	.text.spi_flash_phys2cache,"ax",@progbits
	.literal_position
	.literal .LC50, 1061158912
	.literal .LC51, 1073741824
	.literal .LC52, 1072758784
	.align	4
	.global	spi_flash_phys2cache
	.type	spi_flash_phys2cache, @function
spi_flash_phys2cache:
.LFB27:
	.loc 1 383 0
.LVL156:
	entry	sp, 32
.LCFI8:
	.loc 1 384 0
	extui	a11, a2, 16, 16
.LVL157:
	.loc 1 388 0
	bnez.n	a3, .L89
	.loc 1 391 0
	l32r	a13, .LC50
	.loc 1 392 0
	movi.n	a12, 0
	.loc 1 390 0
	movi.n	a10, 0x40
	.loc 1 389 0
	mov.n	a8, a12
	j	.L85
.L89:
	.loc 1 396 0
	l32r	a13, .LC51
	.loc 1 397 0
	movi.n	a12, 0x40
	.loc 1 395 0
	movi	a10, 0x100
	.loc 1 394 0
	movi.n	a8, 0x4d
.LVL158:
.LBB60:
	.loc 1 400 0
	j	.L85
.LVL159:
.L88:
	.loc 1 401 0
	l32r	a9, .LC52
	addx4	a9, a8, a9
	memw
	l32i.n	a9, a9, 0
	bne	a11, a9, .L86
.LBB61:
	.loc 1 402 0
	sub	a8, a8, a12
.LVL160:
	.loc 1 403 0
	slli	a8, a8, 16
.LVL161:
	add.n	a8, a13, a8
.LVL162:
	.loc 1 404 0
	extui	a2, a2, 0, 16
.LVL163:
	or	a2, a8, a2
	retw.n
.LVL164:
.L86:
.LBE61:
	.loc 1 400 0 discriminator 2
	addi.n	a8, a8, 1
.LVL165:
.L85:
	.loc 1 400 0 is_stmt 0 discriminator 1
	blt	a8, a10, .L88
.LBE60:
	.loc 1 407 0 is_stmt 1
	movi.n	a2, 0
.LVL166:
	.loc 1 408 0
	retw.n
.LFE27:
	.size	spi_flash_phys2cache, .-spi_flash_phys2cache
	.section	.rodata.__func__$5461,"a",@progbits
	.align	4
	.type	__func__$5461, @object
	.size	__func__$5461, 17
__func__$5461:
	.string	"spi_flash_munmap"
	.section	.rodata.__func__$5452,"a",@progbits
	.align	4
	.type	__func__$5452, @object
	.size	__func__$5452, 21
__func__$5452:
	.string	"spi_flash_mmap_pages"
	.section	.bss.written_pages,"aw",@nobits
	.align	4
	.type	written_pages, @object
	.size	written_pages, 32
written_pages:
	.zero	32
	.section	.bss.s_mmap_last_handle,"aw",@nobits
	.align	4
	.type	s_mmap_last_handle, @object
	.size	s_mmap_last_handle, 4
s_mmap_last_handle:
	.zero	4
	.section	.bss.s_mmap_page_refcnt,"aw",@nobits
	.align	4
	.type	s_mmap_page_refcnt, @object
	.size	s_mmap_page_refcnt, 256
s_mmap_page_refcnt:
	.zero	256
	.section	.bss.s_mmap_entries_head,"aw",@nobits
	.align	4
	.type	s_mmap_entries_head, @object
	.size	s_mmap_entries_head, 4
s_mmap_entries_head:
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
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI0-.LFB18
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
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI2-.LFB20
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI3-.LFB19
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI4-.LFB21
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI5-.LFB22
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI6-.LFB23
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI7-.LFB26
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI8-.LFB27
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
	.text
.Letext0:
	.file 3 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 4 "C:/esp/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 5 "C:/esp/esp-idf/components/newlib/include/stdint.h"
	.file 6 "C:/esp/esp-idf/components/esp32/include/esp_err.h"
	.file 7 "C:/esp/esp-idf/components/esp32/include/rom/spi_flash.h"
	.file 8 "C:/esp/esp-idf/components/spi_flash/include/esp_spi_flash.h"
	.file 9 "C:/esp/esp-idf/components/newlib/include/assert.h"
	.file 10 "C:/esp/esp-idf/components/newlib/include/stdlib.h"
	.file 11 "C:/esp/esp-idf/components/spi_flash/cache_utils.h"
	.file 12 "C:/esp/esp-idf/components/newlib/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xb79
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF92
	.byte	0xc
	.4byte	.LASF93
	.4byte	.LASF94
	.4byte	.Ldebug_ranges0+0xa8
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF3
	.byte	0x3
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
	.byte	0x4
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
	.byte	0x4
	.byte	0x19
	.4byte	0x3e
	.uleb128 0x2
	.4byte	.LASF8
	.byte	0x4
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
	.byte	0x4
	.byte	0x31
	.4byte	0x3e
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x5
	.byte	0x4
	.4byte	0xb6
	.uleb128 0x6
	.uleb128 0x2
	.4byte	.LASF16
	.byte	0x5
	.byte	0x15
	.4byte	0x4c
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x5
	.byte	0x2c
	.4byte	0x65
	.uleb128 0x2
	.4byte	.LASF18
	.byte	0x5
	.byte	0x2d
	.4byte	0x70
	.uleb128 0x2
	.4byte	.LASF19
	.byte	0x5
	.byte	0xa9
	.4byte	0x89
	.uleb128 0x2
	.4byte	.LASF20
	.byte	0x6
	.byte	0x18
	.4byte	0xc2
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF21
	.uleb128 0x7
	.byte	0x18
	.byte	0x7
	.byte	0x87
	.4byte	0x146
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x7
	.byte	0x88
	.4byte	0xcd
	.byte	0
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x7
	.byte	0x89
	.4byte	0xcd
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x7
	.byte	0x8a
	.4byte	0xcd
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF25
	.byte	0x7
	.byte	0x8b
	.4byte	0xcd
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF26
	.byte	0x7
	.byte	0x8c
	.4byte	0xcd
	.byte	0x10
	.uleb128 0x8
	.4byte	.LASF27
	.byte	0x7
	.byte	0x8d
	.4byte	0xcd
	.byte	0x14
	.byte	0
	.uleb128 0x2
	.4byte	.LASF28
	.byte	0x7
	.byte	0x8e
	.4byte	0xf5
	.uleb128 0x9
	.byte	0x4
	.4byte	0x30
	.byte	0x8
	.byte	0x91
	.4byte	0x16a
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.4byte	.LASF31
	.byte	0x8
	.byte	0x94
	.4byte	0x151
	.uleb128 0x2
	.4byte	.LASF32
	.byte	0x8
	.byte	0x99
	.4byte	0xcd
	.uleb128 0x7
	.byte	0x8
	.byte	0x1
	.byte	0x42
	.4byte	0x1a1
	.uleb128 0x8
	.4byte	.LASF33
	.byte	0x1
	.byte	0x42
	.4byte	0x1de
	.byte	0
	.uleb128 0x8
	.4byte	.LASF34
	.byte	0x1
	.byte	0x42
	.4byte	0x1e4
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0x14
	.byte	0x1
	.byte	0x3e
	.4byte	0x1de
	.uleb128 0x8
	.4byte	.LASF35
	.byte	0x1
	.byte	0x3f
	.4byte	0xcd
	.byte	0
	.uleb128 0x8
	.4byte	.LASF36
	.byte	0x1
	.byte	0x40
	.4byte	0x3e
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF37
	.byte	0x1
	.byte	0x41
	.4byte	0x3e
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF38
	.byte	0x1
	.byte	0x42
	.4byte	0x180
	.byte	0xc
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1a1
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1de
	.uleb128 0x2
	.4byte	.LASF39
	.byte	0x1
	.byte	0x43
	.4byte	0x1a1
	.uleb128 0xb
	.4byte	.LASF41
	.byte	0x4
	.byte	0x1
	.byte	0x46
	.4byte	0x20e
	.uleb128 0x8
	.4byte	.LASF42
	.byte	0x1
	.byte	0x46
	.4byte	0x1de
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF95
	.byte	0x2
	.byte	0x92
	.byte	0x3
	.4byte	0x22e
	.uleb128 0xd
	.4byte	.LASF45
	.byte	0x2
	.byte	0x92
	.4byte	0x3e
	.uleb128 0xe
	.4byte	.LASF85
	.byte	0x2
	.byte	0x94
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF96
	.byte	0x1
	.byte	0x4c
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x283
	.uleb128 0x10
	.4byte	.LBB16
	.4byte	.LBE16-.LBB16
	.uleb128 0x11
	.string	"i"
	.byte	0x1
	.byte	0x52
	.4byte	0x3e
	.4byte	.LLST0
	.uleb128 0x10
	.4byte	.LBB17
	.4byte	.LBE17-.LBB17
	.uleb128 0x12
	.4byte	.LASF43
	.byte	0x1
	.byte	0x53
	.4byte	0xcd
	.4byte	.LLST1
	.uleb128 0x12
	.4byte	.LASF44
	.byte	0x1
	.byte	0x54
	.4byte	0xcd
	.4byte	.LLST2
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	.LASF97
	.byte	0x1
	.2byte	0x13a
	.4byte	0xee
	.byte	0x3
	.4byte	0x2f9
	.uleb128 0x14
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x13a
	.4byte	0x25
	.uleb128 0x14
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x13a
	.4byte	0x25
	.uleb128 0x14
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x13a
	.4byte	0xee
	.uleb128 0x15
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x13d
	.4byte	0xcd
	.uleb128 0x16
	.uleb128 0x15
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x140
	.4byte	0xcd
	.uleb128 0x16
	.uleb128 0x15
	.4byte	.LASF36
	.byte	0x1
	.2byte	0x141
	.4byte	0x3e
	.uleb128 0x17
	.string	"idx"
	.byte	0x1
	.2byte	0x146
	.4byte	0x3e
	.uleb128 0x17
	.string	"bit"
	.byte	0x1
	.2byte	0x147
	.4byte	0xcd
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF98
	.byte	0x1
	.2byte	0x134
	.4byte	0xee
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3d3
	.uleb128 0x19
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x134
	.4byte	0x25
	.4byte	.LLST3
	.uleb128 0x19
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x134
	.4byte	0x25
	.4byte	.LLST4
	.uleb128 0x1a
	.4byte	0x283
	.4byte	.LBB24
	.4byte	.LBE24-.LBB24
	.byte	0x1
	.2byte	0x136
	.uleb128 0x1b
	.4byte	0x2ac
	.byte	0
	.uleb128 0x1c
	.4byte	0x2a0
	.4byte	.LLST5
	.uleb128 0x1c
	.4byte	0x294
	.4byte	.LLST6
	.uleb128 0x10
	.4byte	.LBB25
	.4byte	.LBE25-.LBB25
	.uleb128 0x1d
	.4byte	0x2b8
	.4byte	.LLST7
	.uleb128 0x1e
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x1d
	.4byte	0x2c5
	.4byte	.LLST8
	.uleb128 0x1e
	.4byte	.Ldebug_ranges0+0x18
	.uleb128 0x1d
	.4byte	0x2d2
	.4byte	.LLST9
	.uleb128 0x1d
	.4byte	0x2de
	.4byte	.LLST10
	.uleb128 0x1d
	.4byte	0x2ea
	.4byte	.LLST11
	.uleb128 0x1a
	.4byte	0x20e
	.4byte	.LBB28
	.4byte	.LBE28-.LBB28
	.byte	0x1
	.2byte	0x154
	.uleb128 0x1c
	.4byte	0x21a
	.4byte	.LLST12
	.uleb128 0x10
	.4byte	.LBB29
	.4byte	.LBE29-.LBB29
	.uleb128 0x1f
	.4byte	.LVL22
	.4byte	0xb2f
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LASF67
	.byte	0x1
	.byte	0x7d
	.4byte	0xe3
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x65b
	.uleb128 0x22
	.4byte	.LASF51
	.byte	0x1
	.byte	0x7d
	.4byte	0x65b
	.4byte	.LLST13
	.uleb128 0x22
	.4byte	.LASF52
	.byte	0x1
	.byte	0x7d
	.4byte	0x25
	.4byte	.LLST14
	.uleb128 0x22
	.4byte	.LASF53
	.byte	0x1
	.byte	0x7d
	.4byte	0x16a
	.4byte	.LLST15
	.uleb128 0x23
	.4byte	.LASF54
	.byte	0x1
	.byte	0x7e
	.4byte	0x661
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x23
	.4byte	.LASF55
	.byte	0x1
	.byte	0x7e
	.4byte	0x667
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x11
	.string	"ret"
	.byte	0x1
	.byte	0x80
	.4byte	0xe3
	.4byte	.LLST16
	.uleb128 0x12
	.4byte	.LASF56
	.byte	0x1
	.byte	0x81
	.4byte	0xee
	.4byte	.LLST17
	.uleb128 0x12
	.4byte	.LASF57
	.byte	0x1
	.byte	0x81
	.4byte	0xee
	.4byte	.LLST18
	.uleb128 0x12
	.4byte	.LASF58
	.byte	0x1
	.byte	0x8a
	.4byte	0x66d
	.4byte	.LLST19
	.uleb128 0x12
	.4byte	.LASF59
	.byte	0x1
	.byte	0x99
	.4byte	0x3e
	.4byte	.LLST20
	.uleb128 0x12
	.4byte	.LASF60
	.byte	0x1
	.byte	0x9a
	.4byte	0x3e
	.4byte	.LLST21
	.uleb128 0x12
	.4byte	.LASF61
	.byte	0x1
	.byte	0x9b
	.4byte	0xcd
	.4byte	.LLST22
	.uleb128 0x12
	.4byte	.LASF62
	.byte	0x1
	.byte	0xad
	.4byte	0x3e
	.4byte	.LLST23
	.uleb128 0x11
	.string	"end"
	.byte	0x1
	.byte	0xae
	.4byte	0x3e
	.4byte	.LLST24
	.uleb128 0x24
	.4byte	.LASF63
	.4byte	0x683
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5452
	.uleb128 0x25
	.4byte	.Ldebug_ranges0+0x30
	.4byte	0x4e0
	.uleb128 0x11
	.string	"i"
	.byte	0x1
	.byte	0x85
	.4byte	0x3e
	.4byte	.LLST25
	.byte	0
	.uleb128 0x25
	.4byte	.Ldebug_ranges0+0x48
	.4byte	0x508
	.uleb128 0x11
	.string	"i"
	.byte	0x1
	.byte	0x92
	.4byte	0x3e
	.4byte	.LLST26
	.uleb128 0x1f
	.4byte	.LVL37
	.4byte	0x2f9
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x40
	.byte	0x3c
	.byte	0x24
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.Ldebug_ranges0+0x60
	.4byte	0x558
	.uleb128 0x12
	.4byte	.LASF64
	.byte	0x1
	.byte	0xb0
	.4byte	0x3e
	.4byte	.LLST27
	.uleb128 0x11
	.string	"pos"
	.byte	0x1
	.byte	0xb1
	.4byte	0x3e
	.4byte	.LLST28
	.uleb128 0x10
	.4byte	.LBB36
	.4byte	.LBE36-.LBB36
	.uleb128 0x12
	.4byte	.LASF65
	.byte	0x1
	.byte	0xb3
	.4byte	0x3e
	.4byte	.LLST29
	.uleb128 0x12
	.4byte	.LASF66
	.byte	0x1
	.byte	0xb4
	.4byte	0xb7
	.4byte	.LLST30
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.Ldebug_ranges0+0x78
	.4byte	0x5af
	.uleb128 0x12
	.4byte	.LASF64
	.byte	0x1
	.byte	0xc5
	.4byte	0xcd
	.4byte	.LLST31
	.uleb128 0x1e
	.4byte	.Ldebug_ranges0+0x90
	.uleb128 0x11
	.string	"i"
	.byte	0x1
	.byte	0xc6
	.4byte	0x3e
	.4byte	.LLST32
	.uleb128 0x1f
	.4byte	.LVL61
	.4byte	0xb3a
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xca
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5452
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	0x20e
	.4byte	.LBB42
	.4byte	.LBE42-.LBB42
	.byte	0x1
	.byte	0xe8
	.4byte	0x5e5
	.uleb128 0x1c
	.4byte	0x21a
	.4byte	.LLST33
	.uleb128 0x10
	.4byte	.LBB43
	.4byte	.LBE43-.LBB43
	.uleb128 0x1f
	.4byte	.LVL76
	.4byte	0xb2f
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	0x20e
	.4byte	.LBB44
	.4byte	.LBE44-.LBB44
	.byte	0x1
	.byte	0xe9
	.4byte	0x61b
	.uleb128 0x1c
	.4byte	0x21a
	.4byte	.LLST34
	.uleb128 0x10
	.4byte	.LBB45
	.4byte	.LBE45-.LBB45
	.uleb128 0x1f
	.4byte	.LVL77
	.4byte	0xb2f
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL32
	.4byte	0xb45
	.4byte	0x62e
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x44
	.byte	0
	.uleb128 0x28
	.4byte	.LVL34
	.4byte	0xb50
	.uleb128 0x28
	.4byte	.LVL41
	.4byte	0x22e
	.uleb128 0x28
	.4byte	.LVL78
	.4byte	0xb5b
	.uleb128 0x1f
	.4byte	.LVL79
	.4byte	0xb66
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x3e
	.uleb128 0x5
	.byte	0x4
	.4byte	0xb0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x175
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1ea
	.uleb128 0x29
	.4byte	0xa9
	.4byte	0x683
	.uleb128 0x2a
	.4byte	0x9b
	.byte	0x14
	.byte	0
	.uleb128 0x2b
	.4byte	0x673
	.uleb128 0x21
	.4byte	.LASF68
	.byte	0x1
	.byte	0x63
	.4byte	0xe3
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x791
	.uleb128 0x22
	.4byte	.LASF69
	.byte	0x1
	.byte	0x63
	.4byte	0x25
	.4byte	.LLST35
	.uleb128 0x22
	.4byte	.LASF70
	.byte	0x1
	.byte	0x63
	.4byte	0x25
	.4byte	.LLST36
	.uleb128 0x23
	.4byte	.LASF53
	.byte	0x1
	.byte	0x63
	.4byte	0x16a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x23
	.4byte	.LASF54
	.byte	0x1
	.byte	0x64
	.4byte	0x661
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x23
	.4byte	.LASF55
	.byte	0x1
	.byte	0x64
	.4byte	0x667
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x11
	.string	"ret"
	.byte	0x1
	.byte	0x66
	.4byte	0xe3
	.4byte	.LLST37
	.uleb128 0x12
	.4byte	.LASF71
	.byte	0x1
	.byte	0x6e
	.4byte	0x3e
	.4byte	.LLST38
	.uleb128 0x12
	.4byte	.LASF52
	.byte	0x1
	.byte	0x6f
	.4byte	0x3e
	.4byte	.LLST39
	.uleb128 0x12
	.4byte	.LASF51
	.byte	0x1
	.byte	0x71
	.4byte	0x65b
	.4byte	.LLST40
	.uleb128 0x2c
	.4byte	.LBB47
	.4byte	.LBE47-.LBB47
	.4byte	0x73d
	.uleb128 0x11
	.string	"i"
	.byte	0x1
	.byte	0x75
	.4byte	0x3e
	.4byte	.LLST41
	.byte	0
	.uleb128 0x27
	.4byte	.LVL94
	.4byte	0xb45
	.4byte	0x753
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x4
	.byte	0x73
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0
	.uleb128 0x27
	.4byte	.LVL98
	.4byte	0x3d3
	.4byte	0x780
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL100
	.4byte	0xb66
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF72
	.byte	0x1
	.byte	0xf3
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x869
	.uleb128 0x22
	.4byte	.LASF35
	.byte	0x1
	.byte	0xf3
	.4byte	0x175
	.4byte	.LLST42
	.uleb128 0x2e
	.string	"it"
	.byte	0x1
	.byte	0xf6
	.4byte	0x66d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x24
	.4byte	.LASF63
	.4byte	0x879
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5461
	.uleb128 0x2c
	.4byte	.LBB48
	.4byte	.LBE48-.LBB48
	.4byte	0x816
	.uleb128 0x11
	.string	"i"
	.byte	0x1
	.byte	0xfd
	.4byte	0x3e
	.4byte	.LLST43
	.uleb128 0x1f
	.4byte	.LVL111
	.4byte	0xb3a
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xfe
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5461
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC25
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL108
	.4byte	0xb50
	.uleb128 0x28
	.4byte	.LVL117
	.4byte	0xb5b
	.uleb128 0x27
	.4byte	.LVL118
	.4byte	0xb3a
	.4byte	0x858
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x10a
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5461
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC31
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL119
	.4byte	0xb66
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	0xa9
	.4byte	0x879
	.uleb128 0x2a
	.4byte	0x9b
	.byte	0x10
	.byte	0
	.uleb128 0x2b
	.4byte	0x869
	.uleb128 0x2f
	.4byte	.LASF99
	.byte	0x1
	.2byte	0x10f
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8f3
	.uleb128 0x30
	.string	"it"
	.byte	0x1
	.2byte	0x112
	.4byte	0x66d
	.4byte	.LLST44
	.uleb128 0x2c
	.4byte	.LBB49
	.4byte	.LBE49-.LBB49
	.4byte	0x8d6
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.2byte	0x116
	.4byte	0x3e
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1f
	.4byte	.LVL125
	.4byte	0xb71
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC38
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL120
	.4byte	0x22e
	.uleb128 0x1f
	.4byte	.LVL122
	.4byte	0xb71
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC34
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	.LASF73
	.byte	0x1
	.2byte	0x12f
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x99c
	.uleb128 0x19
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x12f
	.4byte	0x25
	.4byte	.LLST45
	.uleb128 0x19
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x12f
	.4byte	0x25
	.4byte	.LLST46
	.uleb128 0x1a
	.4byte	0x283
	.4byte	.LBB56
	.4byte	.LBE56-.LBB56
	.byte	0x1
	.2byte	0x131
	.uleb128 0x1b
	.4byte	0x2ac
	.byte	0x1
	.uleb128 0x1c
	.4byte	0x2a0
	.4byte	.LLST47
	.uleb128 0x1c
	.4byte	0x294
	.4byte	.LLST48
	.uleb128 0x10
	.4byte	.LBB57
	.4byte	.LBE57-.LBB57
	.uleb128 0x33
	.4byte	0x2b8
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x10
	.4byte	.LBB58
	.4byte	.LBE58-.LBB58
	.uleb128 0x1d
	.4byte	0x2c5
	.4byte	.LLST49
	.uleb128 0x10
	.4byte	.LBB59
	.4byte	.LBE59-.LBB59
	.uleb128 0x1d
	.4byte	0x2d2
	.4byte	.LLST50
	.uleb128 0x1d
	.4byte	0x2de
	.4byte	.LLST51
	.uleb128 0x1d
	.4byte	0x2ea
	.4byte	.LLST52
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x34
	.4byte	.LASF74
	.byte	0x1
	.2byte	0x160
	.4byte	0xcd
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa05
	.uleb128 0x19
	.4byte	.LASF75
	.byte	0x1
	.2byte	0x160
	.4byte	0xb0
	.4byte	.LLST53
	.uleb128 0x30
	.string	"c"
	.byte	0x1
	.2byte	0x162
	.4byte	0xd8
	.4byte	.LLST54
	.uleb128 0x35
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x163
	.4byte	0x25
	.4byte	.LLST55
	.uleb128 0x35
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x174
	.4byte	0xcd
	.4byte	.LLST56
	.uleb128 0x35
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x179
	.4byte	0xcd
	.4byte	.LLST57
	.byte	0
	.uleb128 0x34
	.4byte	.LASF78
	.byte	0x1
	.2byte	0x17e
	.4byte	0xb0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xabe
	.uleb128 0x19
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x17e
	.4byte	0xcd
	.4byte	.LLST58
	.uleb128 0x36
	.4byte	.LASF53
	.byte	0x1
	.2byte	0x17e
	.4byte	0x16a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x37
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x180
	.4byte	0xcd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x35
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x181
	.4byte	0x3e
	.4byte	.LLST59
	.uleb128 0x30
	.string	"end"
	.byte	0x1
	.2byte	0x181
	.4byte	0x3e
	.4byte	.LLST60
	.uleb128 0x35
	.4byte	.LASF79
	.byte	0x1
	.2byte	0x181
	.4byte	0x3e
	.4byte	.LLST61
	.uleb128 0x35
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x182
	.4byte	0xd8
	.4byte	.LLST62
	.uleb128 0x10
	.4byte	.LBB60
	.4byte	.LBE60-.LBB60
	.uleb128 0x30
	.string	"i"
	.byte	0x1
	.2byte	0x190
	.4byte	0x3e
	.4byte	.LLST63
	.uleb128 0x10
	.4byte	.LBB61
	.4byte	.LBE61-.LBB61
	.uleb128 0x35
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x193
	.4byte	0xd8
	.4byte	.LLST64
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	.LASF81
	.byte	0x1
	.byte	0x46
	.4byte	0x1f5
	.uleb128 0x5
	.byte	0x3
	.4byte	s_mmap_entries_head
	.uleb128 0x29
	.4byte	0xb7
	.4byte	0xadf
	.uleb128 0x2a
	.4byte	0x9b
	.byte	0xff
	.byte	0
	.uleb128 0x38
	.4byte	.LASF82
	.byte	0x1
	.byte	0x48
	.4byte	0xacf
	.uleb128 0x5
	.byte	0x3
	.4byte	s_mmap_page_refcnt
	.uleb128 0x38
	.4byte	.LASF83
	.byte	0x1
	.byte	0x49
	.4byte	0xcd
	.uleb128 0x5
	.byte	0x3
	.4byte	s_mmap_last_handle
	.uleb128 0x29
	.4byte	0xcd
	.4byte	0xb11
	.uleb128 0x2a
	.4byte	0x9b
	.byte	0x7
	.byte	0
	.uleb128 0x37
	.4byte	.LASF84
	.byte	0x1
	.2byte	0x12b
	.4byte	0xb01
	.uleb128 0x5
	.byte	0x3
	.4byte	written_pages
	.uleb128 0x39
	.4byte	.LASF100
	.byte	0x7
	.2byte	0x218
	.4byte	0x146
	.uleb128 0x3a
	.4byte	.LASF85
	.4byte	.LASF85
	.byte	0x2
	.byte	0x94
	.uleb128 0x3a
	.4byte	.LASF86
	.4byte	.LASF86
	.byte	0x9
	.byte	0x29
	.uleb128 0x3a
	.4byte	.LASF87
	.4byte	.LASF87
	.byte	0xa
	.byte	0x65
	.uleb128 0x3a
	.4byte	.LASF88
	.4byte	.LASF88
	.byte	0xb
	.byte	0x26
	.uleb128 0x3a
	.4byte	.LASF89
	.4byte	.LASF89
	.byte	0xb
	.byte	0x29
	.uleb128 0x3a
	.4byte	.LASF90
	.4byte	.LASF90
	.byte	0xa
	.byte	0x5a
	.uleb128 0x3a
	.4byte	.LASF91
	.4byte	.LASF91
	.byte	0xc
	.byte	0xb2
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x26
	.byte	0
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0xb
	.byte	0x1
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x1b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x31
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x4
	.byte	0xa
	.2byte	0x100
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL2
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL11
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL14
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL11
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL15
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL12
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL16
	.4byte	.LVL22-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL22-1
	.4byte	.LVL23
	.2byte	0x8
	.byte	0x72
	.sleb128 0
	.byte	0x11
	.sleb128 -65536
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0xa
	.byte	0x73
	.sleb128 65535
	.byte	0x11
	.sleb128 -65536
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LFE24
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL14
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL13
	.4byte	.LVL22-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL22-1
	.4byte	.LVL24
	.2byte	0x9
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x11
	.sleb128 -65536
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LFE24
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL17
	.4byte	.LVL22-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL24
	.4byte	.LFE24
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL18
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL20
	.4byte	.LVL22-1
	.2byte	0x5
	.byte	0x78
	.sleb128 0
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL26
	.2byte	0x5
	.byte	0x78
	.sleb128 0
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LFE24
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL19
	.4byte	.LVL22-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL24
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL20
	.4byte	.LVL22-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x7
	.byte	0x31
	.byte	0x78
	.sleb128 0
	.byte	0x40
	.byte	0x25
	.byte	0x24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL21
	.4byte	.LVL24
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL28
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL59
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL68
	.4byte	.LVL80
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL80
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
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL83
	.4byte	.LVL84
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL84
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
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL87
	.4byte	.LVL88
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL88
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL89
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL28
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x2
	.byte	0x78
	.sleb128 8
	.4byte	.LVL71
	.4byte	.LVL80
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL80
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL89
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL28
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL35
	.4byte	.LVL42
	.2byte	0x2
	.byte	0x91
	.sleb128 -40
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x2
	.byte	0x91
	.sleb128 -40
	.4byte	.LVL44
	.4byte	.LVL80
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL80
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL88
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL57
	.4byte	.LVL59
	.2byte	0x4
	.byte	0xa
	.2byte	0x101
	.byte	0x9f
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL73
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL34
	.4byte	.LVL36
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL40
	.4byte	.LVL80
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	.LVL88
	.4byte	.LFE20
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL29
	.4byte	.LVL59
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL59
	.4byte	.LVL61-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL63
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL67
	.4byte	.LVL76-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL80
	.4byte	.LVL89
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL33
	.4byte	.LVL34-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL34-1
	.4byte	.LVL80
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL86
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL88
	.4byte	.LFE20
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL45
	.4byte	.LVL61-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL61
	.4byte	.LVL76-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL88
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL88
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL45
	.4byte	.LVL80
	.2byte	0x2
	.byte	0x91
	.sleb128 -40
	.4byte	.LVL88
	.4byte	.LFE20
	.2byte	0x2
	.byte	0x91
	.sleb128 -40
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL48
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL47
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL30
	.4byte	.LVL32-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL82
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL34
	.4byte	.LVL36
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL88
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL48
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL54
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL48
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL49
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x8
	.byte	0x77
	.sleb128 0
	.byte	0x3
	.4byte	s_mmap_page_refcnt
	.byte	0x22
	.4byte	.LVL51
	.4byte	.LVL53
	.2byte	0x8
	.byte	0x77
	.sleb128 0
	.byte	0x3
	.4byte	s_mmap_page_refcnt-1
	.byte	0x22
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL61
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL67
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL59
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL67
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL69
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL75
	.4byte	.LVL77
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL76
	.4byte	.LVL77
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL90
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL91
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
	.4byte	.LVL103
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL103
	.4byte	.LVL104
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL104
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL90
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL92
	.4byte	.LVL101
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL101
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL105
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL99
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL91
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL99
	.4byte	.LVL101
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL105
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL106
	.4byte	.LFE19
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL93
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL95
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL105
	.4byte	.LFE19
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL95
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL105
	.4byte	.LFE19
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL96
	.4byte	.LVL98-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL107
	.4byte	.LVL113
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL113
	.4byte	.LVL114
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL114
	.4byte	.LVL116
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL116
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL110
	.4byte	.LVL111-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL111
	.4byte	.LVL114
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL121
	.4byte	.LVL124
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL127
	.4byte	.LVL130
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL130
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL127
	.4byte	.LVL131
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL131
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL128
	.4byte	.LVL132
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL132
	.4byte	.LFE23
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL128
	.4byte	.LVL130
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL130
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL132
	.4byte	.LVL133
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL133
	.4byte	.LFE23
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL134
	.4byte	.LVL137
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL137
	.4byte	.LVL140
	.2byte	0x5
	.byte	0x7a
	.sleb128 0
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL135
	.4byte	.LVL138
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL138
	.4byte	.LVL140
	.2byte	0x7
	.byte	0x7a
	.sleb128 0
	.byte	0x40
	.byte	0x25
	.byte	0x35
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL136
	.4byte	.LVL139
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL139
	.4byte	.LVL140
	.2byte	0x7
	.byte	0x31
	.byte	0x7a
	.sleb128 0
	.byte	0x40
	.byte	0x25
	.byte	0x24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL141
	.4byte	.LVL149
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL149
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
	.2byte	0x7
	.byte	0x78
	.sleb128 1073741824
	.byte	0x9f
	.4byte	.LVL152
	.4byte	.LVL153
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL153
	.4byte	.LVL154
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL154
	.4byte	.LVL155
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL155
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL142
	.4byte	.LVL149
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL149
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
	.2byte	0x7
	.byte	0x78
	.sleb128 1073741824
	.byte	0x9f
	.4byte	.LVL152
	.4byte	.LVL153
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL153
	.4byte	.LVL154
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL154
	.4byte	.LVL155
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL155
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL143
	.4byte	.LVL144
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL145
	.4byte	.LVL146
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL152
	.4byte	.LVL154
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL147
	.4byte	.LVL148
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL154
	.4byte	.LFE26
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL148
	.4byte	.LVL150
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL156
	.4byte	.LVL163
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL163
	.4byte	.LVL164
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL164
	.4byte	.LVL166
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL166
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL158
	.4byte	.LVL159
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL158
	.4byte	.LVL159
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LVL158
	.4byte	.LVL159
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL158
	.4byte	.LVL159
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST63:
	.4byte	.LVL158
	.4byte	.LVL161
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL164
	.4byte	.LFE27
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST64:
	.4byte	.LVL162
	.4byte	.LVL164
	.2byte	0x1
	.byte	0x58
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
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB26
	.4byte	.LBE26
	.4byte	.LBB31
	.4byte	.LBE31
	.4byte	0
	.4byte	0
	.4byte	.LBB27
	.4byte	.LBE27
	.4byte	.LBB30
	.4byte	.LBE30
	.4byte	0
	.4byte	0
	.4byte	.LBB32
	.4byte	.LBE32
	.4byte	.LBB46
	.4byte	.LBE46
	.4byte	0
	.4byte	0
	.4byte	.LBB33
	.4byte	.LBE33
	.4byte	.LBB34
	.4byte	.LBE34
	.4byte	0
	.4byte	0
	.4byte	.LBB35
	.4byte	.LBE35
	.4byte	.LBB37
	.4byte	.LBE37
	.4byte	0
	.4byte	0
	.4byte	.LBB38
	.4byte	.LBE38
	.4byte	.LBB41
	.4byte	.LBE41
	.4byte	0
	.4byte	0
	.4byte	.LBB39
	.4byte	.LBE39
	.4byte	.LBB40
	.4byte	.LBE40
	.4byte	0
	.4byte	0
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF78:
	.string	"spi_flash_phys2cache"
.LASF46:
	.string	"start_addr"
.LASF57:
	.string	"need_flush"
.LASF72:
	.string	"spi_flash_munmap"
.LASF24:
	.string	"block_size"
.LASF84:
	.string	"written_pages"
.LASF22:
	.string	"device_id"
.LASF68:
	.string	"spi_flash_mmap"
.LASF26:
	.string	"page_size"
.LASF6:
	.string	"short int"
.LASF3:
	.string	"size_t"
.LASF87:
	.string	"malloc"
.LASF13:
	.string	"sizetype"
.LASF11:
	.string	"__intptr_t"
.LASF27:
	.string	"status_mask"
.LASF75:
	.string	"cached"
.LASF8:
	.string	"__uint32_t"
.LASF43:
	.string	"entry_pro"
.LASF95:
	.string	"Cache_Flush"
.LASF73:
	.string	"spi_flash_mark_modified_region"
.LASF53:
	.string	"memory"
.LASF38:
	.string	"entries"
.LASF96:
	.string	"spi_flash_mmap_init"
.LASF100:
	.string	"g_rom_flashchip"
.LASF16:
	.string	"uint8_t"
.LASF77:
	.string	"phys_offs"
.LASF94:
	.string	"C:\\\\esp\\\\ArkPOS2-esp\\\\build\\\\spi_flash"
.LASF71:
	.string	"phys_page"
.LASF76:
	.string	"cache_page"
.LASF99:
	.string	"spi_flash_mmap_dump"
.LASF66:
	.string	"refcnt"
.LASF90:
	.string	"free"
.LASF23:
	.string	"chip_size"
.LASF19:
	.string	"intptr_t"
.LASF47:
	.string	"length"
.LASF93:
	.string	"C:/esp/esp-idf/components/spi_flash/flash_mmap.c"
.LASF59:
	.string	"region_begin"
.LASF9:
	.string	"long long int"
.LASF10:
	.string	"long long unsigned int"
.LASF28:
	.string	"esp_rom_spiflash_chip_t"
.LASF82:
	.string	"s_mmap_page_refcnt"
.LASF36:
	.string	"page"
.LASF12:
	.string	"long int"
.LASF80:
	.string	"base"
.LASF44:
	.string	"entry_app"
.LASF91:
	.string	"printf"
.LASF42:
	.string	"lh_first"
.LASF60:
	.string	"region_size"
.LASF85:
	.string	"Cache_Flush_rom"
.LASF4:
	.string	"__uint8_t"
.LASF25:
	.string	"sector_size"
.LASF31:
	.string	"spi_flash_mmap_memory_t"
.LASF48:
	.string	"mark"
.LASF5:
	.string	"unsigned char"
.LASF63:
	.string	"__func__"
.LASF61:
	.string	"region_addr"
.LASF41:
	.string	"mmap_entries_head"
.LASF52:
	.string	"page_count"
.LASF2:
	.string	"signed char"
.LASF86:
	.string	"__assert_func"
.LASF18:
	.string	"uint32_t"
.LASF45:
	.string	"cpu_no"
.LASF0:
	.string	"unsigned int"
.LASF30:
	.string	"SPI_FLASH_MMAP_INST"
.LASF62:
	.string	"start"
.LASF58:
	.string	"new_entry"
.LASF69:
	.string	"src_addr"
.LASF81:
	.string	"s_mmap_entries_head"
.LASF15:
	.string	"char"
.LASF17:
	.string	"int32_t"
.LASF67:
	.string	"spi_flash_mmap_pages"
.LASF1:
	.string	"short unsigned int"
.LASF50:
	.string	"addr"
.LASF21:
	.string	"_Bool"
.LASF54:
	.string	"out_ptr"
.LASF64:
	.string	"pageno"
.LASF39:
	.string	"mmap_entry_t"
.LASF56:
	.string	"did_flush"
.LASF49:
	.string	"page_start_addr"
.LASF14:
	.string	"long unsigned int"
.LASF65:
	.string	"table_val"
.LASF89:
	.string	"spi_flash_enable_interrupts_caches_and_other_cpu"
.LASF35:
	.string	"handle"
.LASF70:
	.string	"size"
.LASF37:
	.string	"count"
.LASF7:
	.string	"__int32_t"
.LASF88:
	.string	"spi_flash_disable_interrupts_caches_and_other_cpu"
.LASF98:
	.string	"spi_flash_ensure_unmodified_region"
.LASF79:
	.string	"page_delta"
.LASF40:
	.string	"mmap_entry_"
.LASF74:
	.string	"spi_flash_cache2phys"
.LASF55:
	.string	"out_handle"
.LASF97:
	.string	"update_written_pages"
.LASF32:
	.string	"spi_flash_mmap_handle_t"
.LASF83:
	.string	"s_mmap_last_handle"
.LASF92:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF51:
	.string	"pages"
.LASF29:
	.string	"SPI_FLASH_MMAP_DATA"
.LASF20:
	.string	"esp_err_t"
.LASF33:
	.string	"le_next"
.LASF34:
	.string	"le_prev"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-61-gab8375a) 5.2.0"
