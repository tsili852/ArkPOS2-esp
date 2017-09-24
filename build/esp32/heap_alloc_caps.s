	.file	"heap_alloc_caps.c"
	.text
.Ltext0:
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC1:
	.string	"heap_alloc_caps"
	.align	4
.LC3:
	.string	"\033[0;31mE (%d) %s: region %d: hole punching is not supported!\033[0m\n"
	.section	.text.disable_mem_region,"ax",@progbits
	.literal_position
	.literal .LC0, regions
	.literal .LC2, .LC1
	.literal .LC4, .LC3
	.align	4
	.type	disable_mem_region, @function
disable_mem_region:
.LFB5:
	.file 1 "C:/Users/nickt/git/esp-idf/components/esp32/heap_alloc_caps.c"
	.loc 1 153 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 156 0
	movi.n	a4, -4
	and	a2, a2, a4
.LVL1:
	mov.n	a6, a2
.LVL2:
	.loc 1 157 0
	addi.n	a3, a3, 3
.LVL3:
	and	a3, a3, a4
.LVL4:
	mov.n	a5, a3
.LVL5:
	.loc 1 158 0
	movi.n	a4, 0
	j	.L2
.LVL6:
.L12:
.LBB2:
	.loc 1 159 0
	slli	a8, a4, 4
	l32r	a9, .LC0
	add.n	a8, a9, a8
	l32i.n	a9, a8, 0
.LVL7:
	.loc 1 160 0
	add.n	a10, a9, a11
.LVL8:
	.loc 1 161 0
	movi.n	a8, 1
	bgeu	a9, a6, .L3
	movi.n	a8, 0
.L3:
	extui	a8, a8, 0, 8
	movi.n	a12, 1
	bgeu	a5, a10, .L4
	movi.n	a12, 0
.L4:
	bnone	a8, a12, .L5
	.loc 1 163 0
	slli	a8, a4, 4
	l32r	a9, .LC0
.LVL9:
	add.n	a8, a9, a8
	movi.n	a9, -1
.LVL10:
	s32i.n	a9, a8, 8
	j	.L6
.LVL11:
.L5:
	.loc 1 164 0
	movi.n	a12, 1
	bltu	a5, a10, .L7
	movi.n	a12, 0
.L7:
	extui	a12, a12, 0, 8
	bnone	a8, a12, .L8
	.loc 1 164 0 is_stmt 0 discriminator 1
	bgeu	a9, a5, .L8
.LBB3:
	.loc 1 166 0 is_stmt 1
	sub	a12, a3, a9
	.loc 1 167 0
	slli	a8, a4, 4
	l32r	a10, .LC0
.LVL12:
	add.n	a8, a10, a8
	add.n	a9, a9, a12
.LVL13:
	s32i.n	a9, a8, 0
.LVL14:
	.loc 1 168 0
	sub	a10, a11, a12
	s32i.n	a10, a8, 4
	.loc 1 169 0
	l32i.n	a8, a8, 12
	beqz.n	a8, .L6
	.loc 1 169 0 is_stmt 0 discriminator 1
	slli	a9, a4, 4
	l32r	a10, .LC0
	add.n	a9, a10, a9
	add.n	a8, a12, a8
	s32i.n	a8, a9, 12
	j	.L6
.LVL15:
.L8:
.LBE3:
	.loc 1 170 0 is_stmt 1
	movi.n	a8, 1
	bltu	a9, a6, .L9
	movi.n	a8, 0
.L9:
	extui	a8, a8, 0, 8
	movi.n	a9, 1
.LVL16:
	bltu	a6, a10, .L10
	movi.n	a9, 0
.L10:
	bnone	a8, a9, .L11
	.loc 1 170 0 is_stmt 0 discriminator 1
	bltu	a5, a10, .L11
	.loc 1 172 0 is_stmt 1
	sub	a10, a2, a10
.LVL17:
	slli	a8, a4, 4
	l32r	a9, .LC0
.LVL18:
	add.n	a8, a9, a8
	add.n	a10, a10, a11
	s32i.n	a10, a8, 4
	j	.L6
.LVL19:
.L11:
	.loc 1 173 0
	bnone	a12, a8, .L6
	.loc 1 175 0 discriminator 1
	call8	esp_log_timestamp
.LVL20:
	mov.n	a13, a4
	l32r	a12, .LC2
	mov.n	a11, a10
	l32r	a10, .LC4
	call8	ets_printf
.LVL21:
	.loc 1 176 0 discriminator 1
	slli	a8, a4, 4
	l32r	a9, .LC0
	add.n	a8, a9, a8
	movi.n	a9, -1
	s32i.n	a9, a8, 8
.L6:
.LBE2:
	.loc 1 158 0 discriminator 2
	addi.n	a4, a4, 1
.LVL22:
.L2:
	.loc 1 158 0 is_stmt 0 discriminator 1
	slli	a8, a4, 4
	l32r	a9, .LC0
	add.n	a8, a9, a8
	l32i.n	a11, a8, 4
	bnez.n	a11, .L12
	.loc 1 179 0 is_stmt 1
	retw.n
.LFE5:
	.size	disable_mem_region, .-disable_mem_region
	.section	.rodata.str1.4
	.align	4
.LC7:
	.string	"C:/Users/nickt/git/esp-idf/components/esp32/heap_alloc_caps.c"
	.align	4
.LC9:
	.string	"%s:%d (%s)- assert failed!\n"
	.section	.text.dram_alloc_to_iram_addr,"ax",@progbits
	.literal_position
	.literal .LC5, 1073610751
	.literal .LC6, __FUNCTION__$3055
	.literal .LC8, .LC7
	.literal .LC10, .LC9
	.literal .LC11, 1073741820
	.literal .LC12, -2146828292
	.align	4
	.type	dram_alloc_to_iram_addr, @function
dram_alloc_to_iram_addr:
.LFB7:
	.loc 1 288 0
.LVL23:
	entry	sp, 32
.LCFI1:
.LVL24:
	.loc 1 290 0
	add.n	a3, a2, a3
.LVL25:
	addi	a3, a3, -4
.LVL26:
	.loc 1 291 0
	l32r	a9, .LC5
	bltu	a9, a2, .L14
	.loc 1 291 0 is_stmt 0 discriminator 1
	l32r	a13, .LC6
	movi	a12, 0x123
	l32r	a11, .LC8
	l32r	a10, .LC10
	call8	ets_printf
.LVL27:
	call8	abort
.LVL28:
.L14:
	.loc 1 292 0 is_stmt 1
	l32r	a8, .LC11
	bgeu	a8, a3, .L15
	.loc 1 292 0 is_stmt 0 discriminator 1
	l32r	a13, .LC6
	movi	a12, 0x124
	l32r	a11, .LC8
	l32r	a10, .LC10
	call8	ets_printf
.LVL29:
	call8	abort
.LVL30:
.L15:
	.loc 1 293 0 is_stmt 1
	extui	a8, a2, 0, 2
	beqz.n	a8, .L16
	.loc 1 293 0 is_stmt 0 discriminator 1
	l32r	a13, .LC6
	movi	a12, 0x125
	l32r	a11, .LC8
	l32r	a10, .LC10
	call8	ets_printf
.LVL31:
	call8	abort
.LVL32:
.L16:
	.loc 1 294 0 is_stmt 1
	extui	a8, a3, 0, 2
	beqz.n	a8, .L17
	.loc 1 294 0 is_stmt 0 discriminator 1
	l32r	a13, .LC6
	movi	a12, 0x126
	l32r	a11, .LC8
	l32r	a10, .LC10
	call8	ets_printf
.LVL33:
	call8	abort
.LVL34:
.L17:
	.loc 1 295 0 is_stmt 1
	l32r	a8, .LC12
	sub	a3, a8, a3
.LVL35:
	.loc 1 297 0
	s32i.n	a2, a3, 0
	.loc 1 299 0
	addi.n	a2, a3, 4
.LVL36:
	retw.n
.LFE7:
	.size	dram_alloc_to_iram_addr, .-dram_alloc_to_iram_addr
	.section	.text.heap_alloc_enable_nonos_stack_tag,"ax",@progbits
	.literal_position
	.literal .LC13, nonos_stack_in_use
	.align	4
	.global	heap_alloc_enable_nonos_stack_tag
	.type	heap_alloc_enable_nonos_stack_tag, @function
heap_alloc_enable_nonos_stack_tag:
.LFB4:
	.loc 1 148 0
	entry	sp, 32
.LCFI2:
	.loc 1 149 0
	movi.n	a9, 0
	l32r	a8, .LC13
	s8i	a9, a8, 0
	retw.n
.LFE4:
	.size	heap_alloc_enable_nonos_stack_tag, .-heap_alloc_enable_nonos_stack_tag
	.section	.rodata.str1.4
	.align	4
.LC31:
	.string	"\033[0;32mI (%d) %s: Initializing. RAM available for dynamic allocation:\033[0m\n"
	.align	4
.LC33:
	.string	"\033[0;32mI (%d) %s: At %08X len %08X (%d KiB): %s\033[0m\n"
	.section	.text.heap_alloc_caps_init,"ax",@progbits
	.literal_position
	.literal .LC14, _heap_start
	.literal .LC15, _data_start
	.literal .LC16, _iram_text_end
	.literal .LC17, _init_start
	.literal .LC18, 1074233344
	.literal .LC19, 1074200576
	.literal .LC20, 1074266112
	.literal .LC21, 1073611840
	.literal .LC22, 1073610752
	.literal .LC23, 1073627984
	.literal .LC24, 1073627136
	.literal .LC25, 1073406624
	.literal .LC26, 1073405952
	.literal .LC27, 1065484288
	.literal .LC28, 1065353216
	.literal .LC29, regions
	.literal .LC30, .LC1
	.literal .LC32, .LC31
	.literal .LC34, .LC33
	.literal .LC35, tag_desc
	.align	4
	.global	heap_alloc_caps_init
	.type	heap_alloc_caps_init, @function
heap_alloc_caps_init:
.LFB6:
	.loc 1 195 0
	entry	sp, 48
.LCFI3:
	.loc 1 200 0
	l32r	a11, .LC14
	l32r	a10, .LC15
	call8	disable_mem_region
.LVL37:
	.loc 1 201 0
	l32r	a11, .LC16
	l32r	a10, .LC17
	call8	disable_mem_region
.LVL38:
	.loc 1 202 0
	l32r	a2, .LC18
	mov.n	a11, a2
	l32r	a10, .LC19
	call8	disable_mem_region
.LVL39:
	.loc 1 203 0
	l32r	a11, .LC20
	mov.n	a10, a2
	call8	disable_mem_region
.LVL40:
	.loc 1 218 0
	l32r	a11, .LC21
	l32r	a10, .LC22
	call8	disable_mem_region
.LVL41:
	.loc 1 219 0
	l32r	a11, .LC23
	l32r	a10, .LC24
	call8	disable_mem_region
.LVL42:
	.loc 1 231 0
	l32r	a11, .LC25
	l32r	a10, .LC26
	call8	disable_mem_region
.LVL43:
	.loc 1 245 0
	l32r	a11, .LC27
	l32r	a10, .LC28
	call8	disable_mem_region
.LVL44:
	.loc 1 251 0
	movi.n	a2, 1
	j	.L20
.LVL45:
.L22:
	.loc 1 252 0
	l32r	a10, .LC29
	slli	a9, a2, 4
	add.n	a9, a10, a9
	l32i.n	a12, a9, 0
	addi.n	a9, a2, -1
	slli	a8, a9, 4
	add.n	a8, a10, a8
	l32i.n	a10, a8, 0
	l32i.n	a8, a8, 4
	add.n	a8, a10, a8
	bne	a12, a8, .L21
	.loc 1 253 0 discriminator 1
	l32r	a12, .LC29
	slli	a10, a2, 4
	add.n	a10, a12, a10
	l32i.n	a10, a10, 8
	slli	a8, a9, 4
	add.n	a8, a12, a8
	l32i.n	a8, a8, 8
	.loc 1 252 0 discriminator 1
	bne	a10, a8, .L21
	.loc 1 254 0
	mov.n	a10, a12
	slli	a9, a9, 4
	add.n	a9, a12, a9
	movi.n	a8, -1
	s32i.n	a8, a9, 8
	.loc 1 255 0
	l32i.n	a12, a9, 0
	slli	a8, a2, 4
	add.n	a8, a10, a8
	s32i.n	a12, a8, 0
	.loc 1 256 0
	l32i.n	a9, a9, 4
	add.n	a11, a11, a9
	s32i.n	a11, a8, 4
.L21:
	.loc 1 251 0 discriminator 2
	addi.n	a2, a2, 1
.LVL46:
.L20:
	.loc 1 251 0 is_stmt 0 discriminator 1
	slli	a8, a2, 4
	l32r	a9, .LC29
	add.n	a8, a9, a8
	l32i.n	a11, a8, 4
	bnez.n	a11, .L22
	.loc 1 260 0 is_stmt 1 discriminator 1
	call8	esp_log_timestamp
.LVL47:
	l32r	a12, .LC30
	mov.n	a11, a10
	l32r	a10, .LC32
	call8	ets_printf
.LVL48:
	.loc 1 261 0 discriminator 1
	movi.n	a2, 0
	j	.L23
.LVL49:
.L25:
	.loc 1 262 0
	slli	a8, a2, 4
	l32r	a9, .LC29
	add.n	a8, a9, a8
	l32i.n	a8, a8, 8
	beqi	a8, -1, .L24
	.loc 1 263 0 discriminator 1
	call8	esp_log_timestamp
.LVL50:
	slli	a8, a2, 4
	l32r	a9, .LC29
	add.n	a8, a9, a8
	l32i.n	a13, a8, 0
	l32i.n	a14, a8, 4
	l32i.n	a8, a8, 8
	addx4	a8, a8, a8
	slli	a9, a8, 2
	l32r	a8, .LC35
	add.n	a9, a8, a9
	l32i.n	a8, a9, 0
	s32i.n	a8, sp, 0
	srli	a15, a14, 10
	l32r	a12, .LC30
	mov.n	a11, a10
	l32r	a10, .LC34
	call8	ets_printf
.LVL51:
.L24:
	.loc 1 261 0 discriminator 2
	addi.n	a2, a2, 1
.LVL52:
.L23:
	.loc 1 261 0 is_stmt 0 discriminator 1
	slli	a8, a2, 4
	l32r	a9, .LC29
	add.n	a8, a9, a8
	l32i.n	a8, a8, 4
	bnez.n	a8, .L25
	.loc 1 268 0 is_stmt 1
	mov.n	a10, a9
	call8	vPortDefineHeapRegionsTagged
.LVL53:
	retw.n
.LFE6:
	.size	heap_alloc_caps_init, .-heap_alloc_caps_init
	.section	.text.vPortFree,"ax",@progbits
	.literal_position
	.literal .LC36, -1074397184
	.literal .LC37, 131068
	.align	4
	.global	vPortFree
	.type	vPortFree, @function
vPortFree:
.LFB9:
	.loc 1 314 0
.LVL54:
	entry	sp, 32
.LCFI4:
	.loc 1 315 0
	l32r	a8, .LC36
	add.n	a8, a2, a8
	l32r	a9, .LC37
	bltu	a9, a8, .L27
.LVL55:
.LBB4:
	.loc 1 320 0
	addi	a2, a2, -4
.LVL56:
	l32i.n	a10, a2, 0
	call8	vPortFreeTagged
.LVL57:
	retw.n
.LVL58:
.L27:
.LBE4:
	.loc 1 323 0
	mov.n	a10, a2
	call8	vPortFreeTagged
.LVL59:
	retw.n
.LFE9:
	.size	vPortFree, .-vPortFree
	.section	.text.pvPortMallocCaps,"ax",@progbits
	.literal_position
	.literal .LC38, nonos_stack_in_use
	.literal .LC39, tag_desc
	.literal .LC40, -2147483648
	.align	4
	.global	pvPortMallocCaps
	.type	pvPortMallocCaps, @function
pvPortMallocCaps:
.LFB10:
	.loc 1 330 0
.LVL60:
	entry	sp, 32
.LCFI5:
.LVL61:
	.loc 1 335 0
	extui	a6, a3, 0, 1
	beqz.n	a6, .L30
	.loc 1 340 0
	movi.n	a4, 0xc
	bany	a3, a4, .L41
	.loc 1 344 0
	addi.n	a2, a2, 3
.LVL62:
	movi.n	a4, -4
	and	a2, a2, a4
.LVL63:
.L30:
	.loc 1 346 0
	movi.n	a5, 0
	j	.L32
.LVL64:
.L39:
	.loc 1 349 0
	l32r	a9, .LC38
	l8ui	a9, a9, 0
	beqz.n	a9, .L33
	.loc 1 349 0 is_stmt 0 discriminator 1
	beqi	a4, 1, .L34
.L33:
	.loc 1 353 0 is_stmt 1
	bnone	a3, a8, .L34
	.loc 1 356 0
	movi.n	a10, -1
	xor	a10, a10, a8
	and	a10, a3, a10
.LVL65:
	.loc 1 357 0
	addi.n	a11, a5, 1
.LVL66:
	.loc 1 358 0
	j	.L35
.L37:
	.loc 1 359 0
	addx4	a8, a4, a4
	add.n	a8, a8, a11
	l32r	a9, .LC39
	addx4	a8, a8, a9
	l32i.n	a8, a8, 4
	movi.n	a9, -1
	xor	a8, a9, a8
	and	a10, a10, a8
.LVL67:
	.loc 1 360 0
	addi.n	a11, a11, 1
.LVL68:
.L35:
	.loc 1 358 0
	movi.n	a9, 1
	movi.n	a8, 0
	movnez	a8, a9, a10
	extui	a8, a8, 0, 8
	blti	a11, 3, .L36
	movi.n	a9, 0
.L36:
	bany	a8, a9, .L37
	.loc 1 362 0
	bnez.n	a10, .L34
	.loc 1 364 0
	beqz.n	a6, .L38
	.loc 1 364 0 is_stmt 0 discriminator 1
	addx4	a9, a4, a4
	slli	a8, a9, 2
	l32r	a9, .LC39
	add.n	a8, a9, a8
	l8ui	a8, a8, 16
	beqz.n	a8, .L38
	.loc 1 368 0 is_stmt 1
	addi.n	a7, a2, 4
	mov.n	a11, a4
.LVL69:
	mov.n	a10, a7
.LVL70:
	call8	pvPortMallocTagged
.LVL71:
	.loc 1 369 0
	beqz.n	a10, .L34
	.loc 1 369 0 discriminator 1
	mov.n	a11, a7
	call8	dram_alloc_to_iram_addr
.LVL72:
	mov.n	a2, a10
.LVL73:
	retw.n
.LVL74:
.L38:
	.loc 1 372 0
	mov.n	a11, a4
.LVL75:
	mov.n	a10, a2
.LVL76:
	call8	pvPortMallocTagged
.LVL77:
	.loc 1 373 0
	bnez.n	a10, .L42
.LVL78:
.L34:
	.loc 1 348 0 discriminator 2
	addi.n	a4, a4, 1
.LVL79:
	j	.L40
.LVL80:
.L43:
	movi.n	a4, 0
.L40:
.LVL81:
	.loc 1 348 0 is_stmt 0 discriminator 1
	addx4	a8, a4, a4
	add.n	a8, a8, a5
	l32r	a9, .LC39
	addx4	a8, a8, a9
	l32i.n	a8, a8, 4
	l32r	a9, .LC40
	bne	a8, a9, .L39
	.loc 1 346 0 is_stmt 1 discriminator 2
	addi.n	a5, a5, 1
.LVL82:
.L32:
	.loc 1 346 0 is_stmt 0 discriminator 1
	blti	a5, 3, .L43
	.loc 1 380 0 is_stmt 1
	movi.n	a2, 0
.LVL83:
	retw.n
.LVL84:
.L41:
	.loc 1 341 0
	movi.n	a2, 0
.LVL85:
	retw.n
.LVL86:
.L42:
	.loc 1 373 0
	mov.n	a2, a10
.LVL87:
	.loc 1 381 0
	retw.n
.LFE10:
	.size	pvPortMallocCaps, .-pvPortMallocCaps
	.section	.text.pvPortMalloc,"ax",@progbits
	.align	4
	.global	pvPortMalloc
	.type	pvPortMalloc, @function
pvPortMalloc:
.LFB8:
	.loc 1 305 0
.LVL88:
	entry	sp, 32
.LCFI6:
	.loc 1 306 0
	movi.n	a11, 4
	mov.n	a10, a2
	call8	pvPortMallocCaps
.LVL89:
	.loc 1 307 0
	mov.n	a2, a10
.LVL90:
	retw.n
.LFE8:
	.size	pvPortMalloc, .-pvPortMalloc
	.section	.text.xPortGetFreeHeapSizeCaps,"ax",@progbits
	.literal_position
	.literal .LC41, tag_desc
	.literal .LC42, -2147483648
	.align	4
	.global	xPortGetFreeHeapSizeCaps
	.type	xPortGetFreeHeapSizeCaps, @function
xPortGetFreeHeapSizeCaps:
.LFB11:
	.loc 1 385 0
.LVL91:
	entry	sp, 32
.LCFI7:
.LVL92:
	.loc 1 388 0
	movi.n	a5, 0
	.loc 1 389 0
	mov.n	a4, a5
	j	.L46
.LVL93:
.L48:
	.loc 1 392 0
	bnone	a8, a2, .L47
	.loc 1 393 0
	mov.n	a10, a3
	call8	xPortGetFreeHeapSizeTagged
.LVL94:
	add.n	a5, a5, a10
.LVL95:
.L47:
	.loc 1 391 0 discriminator 2
	addi.n	a3, a3, 1
.LVL96:
	j	.L49
.LVL97:
.L50:
	movi.n	a3, 0
.L49:
.LVL98:
	.loc 1 391 0 is_stmt 0 discriminator 1
	addx4	a8, a3, a3
	add.n	a8, a8, a4
	l32r	a9, .LC41
	addx4	a8, a8, a9
	l32i.n	a8, a8, 4
	l32r	a9, .LC42
	bne	a8, a9, .L48
	.loc 1 389 0 is_stmt 1 discriminator 2
	addi.n	a4, a4, 1
.LVL99:
.L46:
	.loc 1 389 0 is_stmt 0 discriminator 1
	blti	a4, 3, .L50
	.loc 1 398 0 is_stmt 1
	mov.n	a2, a5
.LVL100:
	retw.n
.LFE11:
	.size	xPortGetFreeHeapSizeCaps, .-xPortGetFreeHeapSizeCaps
	.section	.text.xPortGetMinimumEverFreeHeapSizeCaps,"ax",@progbits
	.literal_position
	.literal .LC43, tag_desc
	.literal .LC44, -2147483648
	.align	4
	.global	xPortGetMinimumEverFreeHeapSizeCaps
	.type	xPortGetMinimumEverFreeHeapSizeCaps, @function
xPortGetMinimumEverFreeHeapSizeCaps:
.LFB12:
	.loc 1 401 0
.LVL101:
	entry	sp, 32
.LCFI8:
.LVL102:
	.loc 1 404 0
	movi.n	a5, 0
	.loc 1 405 0
	mov.n	a4, a5
	j	.L52
.LVL103:
.L54:
	.loc 1 408 0
	bnone	a8, a2, .L53
	.loc 1 409 0
	mov.n	a10, a3
	call8	xPortGetMinimumEverFreeHeapSizeTagged
.LVL104:
	add.n	a5, a5, a10
.LVL105:
.L53:
	.loc 1 407 0 discriminator 2
	addi.n	a3, a3, 1
.LVL106:
	j	.L55
.LVL107:
.L56:
	movi.n	a3, 0
.L55:
.LVL108:
	.loc 1 407 0 is_stmt 0 discriminator 1
	addx4	a8, a3, a3
	add.n	a8, a8, a4
	l32r	a9, .LC43
	addx4	a8, a8, a9
	l32i.n	a8, a8, 4
	l32r	a9, .LC44
	bne	a8, a9, .L54
	.loc 1 405 0 is_stmt 1 discriminator 2
	addi.n	a4, a4, 1
.LVL109:
.L52:
	.loc 1 405 0 is_stmt 0 discriminator 1
	blti	a4, 3, .L56
	.loc 1 414 0 is_stmt 1
	mov.n	a2, a5
.LVL110:
	retw.n
.LFE12:
	.size	xPortGetMinimumEverFreeHeapSizeCaps, .-xPortGetMinimumEverFreeHeapSizeCaps
	.section	.text.xPortGetFreeHeapSize,"ax",@progbits
	.align	4
	.global	xPortGetFreeHeapSize
	.type	xPortGetFreeHeapSize, @function
xPortGetFreeHeapSize:
.LFB13:
	.loc 1 417 0
	entry	sp, 32
.LCFI9:
	.loc 1 418 0
	movi.n	a10, 4
	call8	xPortGetFreeHeapSizeCaps
.LVL111:
	.loc 1 419 0
	mov.n	a2, a10
	retw.n
.LFE13:
	.size	xPortGetFreeHeapSize, .-xPortGetFreeHeapSize
	.section	.text.xPortGetMinimumEverFreeHeapSize,"ax",@progbits
	.align	4
	.global	xPortGetMinimumEverFreeHeapSize
	.type	xPortGetMinimumEverFreeHeapSize, @function
xPortGetMinimumEverFreeHeapSize:
.LFB14:
	.loc 1 422 0
	entry	sp, 32
.LCFI10:
	.loc 1 423 0
	movi.n	a10, 4
	call8	xPortGetMinimumEverFreeHeapSizeCaps
.LVL112:
	.loc 1 424 0
	mov.n	a2, a10
	retw.n
.LFE14:
	.size	xPortGetMinimumEverFreeHeapSize, .-xPortGetMinimumEverFreeHeapSize
	.section	.rodata.__FUNCTION__$3055,"a",@progbits
	.align	4
	.type	__FUNCTION__$3055, @object
	.size	__FUNCTION__$3055, 24
__FUNCTION__$3055:
	.string	"dram_alloc_to_iram_addr"
	.section	.data.nonos_stack_in_use,"aw",@progbits
	.type	nonos_stack_in_use, @object
	.size	nonos_stack_in_use, 1
nonos_stack_in_use:
	.byte	1
	.section	.data.regions,"aw",@progbits
	.align	4
	.type	regions, @object
	.size	regions, 720
regions:
	.word	1065353216
	.word	131072
	.word	15
	.word	0
	.word	1073405952
	.word	8192
	.word	0
	.word	0
	.word	1073414144
	.word	32768
	.word	0
	.word	0
	.word	1073446912
	.word	32768
	.word	0
	.word	0
	.word	1073479680
	.word	8192
	.word	0
	.word	0
	.word	1073487872
	.word	8192
	.word	0
	.word	0
	.word	1073496064
	.word	8192
	.word	0
	.word	0
	.word	1073504256
	.word	8192
	.word	0
	.word	0
	.word	1073512448
	.word	8192
	.word	0
	.word	0
	.word	1073520640
	.word	8192
	.word	0
	.word	0
	.word	1073528832
	.word	8192
	.word	0
	.word	0
	.word	1073537024
	.word	8192
	.word	0
	.word	0
	.word	1073545216
	.word	8192
	.word	0
	.word	0
	.word	1073553408
	.word	8192
	.word	0
	.word	0
	.word	1073561600
	.word	8192
	.word	0
	.word	0
	.word	1073569792
	.word	8192
	.word	0
	.word	0
	.word	1073577984
	.word	8192
	.word	0
	.word	0
	.word	1073586176
	.word	8192
	.word	0
	.word	0
	.word	1073594368
	.word	8192
	.word	0
	.word	0
	.word	1073602560
	.word	8192
	.word	0
	.word	0
	.word	1073610752
	.word	16384
	.word	1
	.word	1074511872
	.word	1073627136
	.word	16384
	.word	1
	.word	1074495488
	.word	1073643520
	.word	32768
	.word	1
	.word	1074462720
	.word	1073676288
	.word	32768
	.word	1
	.word	1074429952
	.word	1073709056
	.word	16384
	.word	1
	.word	1074413568
	.word	1073725440
	.word	16384
	.word	1
	.word	1074397184
	.word	1074200576
	.word	32768
	.word	2
	.word	0
	.word	1074233344
	.word	32768
	.word	2
	.word	0
	.word	1074266112
	.word	8192
	.word	2
	.word	0
	.word	1074274304
	.word	8192
	.word	2
	.word	0
	.word	1074282496
	.word	8192
	.word	2
	.word	0
	.word	1074290688
	.word	8192
	.word	2
	.word	0
	.word	1074298880
	.word	8192
	.word	2
	.word	0
	.word	1074307072
	.word	8192
	.word	2
	.word	0
	.word	1074315264
	.word	8192
	.word	2
	.word	0
	.word	1074323456
	.word	8192
	.word	2
	.word	0
	.word	1074331648
	.word	8192
	.word	2
	.word	0
	.word	1074339840
	.word	8192
	.word	2
	.word	0
	.word	1074348032
	.word	8192
	.word	2
	.word	0
	.word	1074356224
	.word	8192
	.word	2
	.word	0
	.word	1074364416
	.word	8192
	.word	2
	.word	0
	.word	1074372608
	.word	8192
	.word	2
	.word	0
	.word	1074380800
	.word	8192
	.word	2
	.word	0
	.word	1074388992
	.word	8192
	.word	2
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.section	.rodata.str1.4
	.align	4
.LC45:
	.string	"DRAM"
	.align	4
.LC46:
	.string	"D/IRAM"
	.align	4
.LC47:
	.string	"IRAM"
	.align	4
.LC48:
	.string	"PID2IRAM"
	.align	4
.LC49:
	.string	"PID3IRAM"
	.align	4
.LC50:
	.string	"PID4IRAM"
	.align	4
.LC51:
	.string	"PID5IRAM"
	.align	4
.LC52:
	.string	"PID6IRAM"
	.align	4
.LC53:
	.string	"PID7IRAM"
	.align	4
.LC54:
	.string	"PID2DRAM"
	.align	4
.LC55:
	.string	"PID3DRAM"
	.align	4
.LC56:
	.string	"PID4DRAM"
	.align	4
.LC57:
	.string	"PID5DRAM"
	.align	4
.LC58:
	.string	"PID6DRAM"
	.align	4
.LC59:
	.string	"PID7DRAM"
	.align	4
.LC60:
	.string	"SPISRAM"
	.align	4
.LC61:
	.string	""
	.section	.rodata.tag_desc,"a",@progbits
	.align	4
	.type	tag_desc, @object
	.size	tag_desc, 340
tag_desc:
	.word	.LC45
	.word	12
	.word	2
	.word	0
	.byte	0
	.zero	3
	.word	.LC46
	.word	0
	.word	12
	.word	3
	.byte	1
	.zero	3
	.word	.LC47
	.word	3
	.word	0
	.word	0
	.byte	0
	.zero	3
	.word	.LC48
	.word	16
	.word	0
	.word	3
	.byte	0
	.zero	3
	.word	.LC49
	.word	32
	.word	0
	.word	3
	.byte	0
	.zero	3
	.word	.LC50
	.word	64
	.word	0
	.word	3
	.byte	0
	.zero	3
	.word	.LC51
	.word	128
	.word	0
	.word	3
	.byte	0
	.zero	3
	.word	.LC52
	.word	256
	.word	0
	.word	3
	.byte	0
	.zero	3
	.word	.LC53
	.word	512
	.word	0
	.word	3
	.byte	0
	.zero	3
	.word	.LC54
	.word	16
	.word	4
	.word	2
	.byte	0
	.zero	3
	.word	.LC55
	.word	32
	.word	4
	.word	2
	.byte	0
	.zero	3
	.word	.LC56
	.word	64
	.word	4
	.word	2
	.byte	0
	.zero	3
	.word	.LC57
	.word	128
	.word	4
	.word	2
	.byte	0
	.zero	3
	.word	.LC58
	.word	256
	.word	4
	.word	2
	.byte	0
	.zero	3
	.word	.LC59
	.word	512
	.word	4
	.word	2
	.byte	0
	.zero	3
	.word	.LC60
	.word	1024
	.word	0
	.word	14
	.byte	0
	.zero	3
	.word	.LC61
	.word	-2147483648
	.word	-2147483648
	.word	-2147483648
	.byte	0
	.zero	3
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
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI0-.LFB5
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI1-.LFB7
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI2-.LFB4
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI3-.LFB6
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI4-.LFB9
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI5-.LFB10
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI6-.LFB8
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI7-.LFB11
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI8-.LFB12
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI9-.LFB13
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI10-.LFB14
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
	.text
.Letext0:
	.file 2 "C:/Users/nickt/git/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "C:/Users/nickt/git/esp-idf/components/newlib/include/stdint.h"
	.file 4 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 5 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/portmacro.h"
	.file 6 "C:/Users/nickt/git/esp-idf/components/freertos/include/freertos/heap_regions.h"
	.file 7 "C:/Users/nickt/git/esp-idf/components/log/include/esp_log.h"
	.file 8 "C:/Users/nickt/git/esp-idf/components/esp32/include/rom/ets_sys.h"
	.file 9 "C:/Users/nickt/git/esp-idf/components/newlib/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x8b8
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF69
	.byte	0xc
	.4byte	.LASF70
	.4byte	.LASF71
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x2
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
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x1a
	.4byte	0x5e
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x3
	.byte	0x15
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x3
	.byte	0x2d
	.4byte	0x53
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x4
	.byte	0xd8
	.4byte	0x5e
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb8
	.uleb128 0x7
	.4byte	0xab
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x5
	.byte	0x6c
	.4byte	0x4c
	.uleb128 0x6
	.byte	0x4
	.4byte	0x73
	.uleb128 0x8
	.4byte	.LASF72
	.byte	0x10
	.byte	0x6
	.byte	0x19
	.4byte	0x10b
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x6
	.byte	0x1b
	.4byte	0xc8
	.byte	0
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x6
	.byte	0x1c
	.4byte	0x8b
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x6
	.byte	0x1d
	.4byte	0xbd
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x6
	.byte	0x1e
	.4byte	0x7e
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x6
	.byte	0x1f
	.4byte	0xce
	.uleb128 0xa
	.byte	0x4
	.4byte	0x5e
	.byte	0x7
	.byte	0x1f
	.4byte	0x147
	.uleb128 0xb
	.4byte	.LASF22
	.byte	0
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x3
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x7
	.byte	0x26
	.4byte	0x116
	.uleb128 0xc
	.byte	0x14
	.byte	0x1
	.byte	0x28
	.4byte	0x17f
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0x1
	.byte	0x29
	.4byte	0xb2
	.byte	0
	.uleb128 0x9
	.4byte	.LASF30
	.byte	0x1
	.byte	0x2a
	.4byte	0x17f
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF31
	.byte	0x1
	.byte	0x2b
	.4byte	0x18f
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.4byte	0x7e
	.4byte	0x18f
	.uleb128 0xe
	.4byte	0x9d
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF32
	.uleb128 0x3
	.4byte	.LASF33
	.byte	0x1
	.byte	0x2c
	.4byte	0x152
	.uleb128 0xf
	.4byte	.LASF73
	.byte	0x1
	.byte	0x99
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x24d
	.uleb128 0x10
	.4byte	.LASF34
	.byte	0x1
	.byte	0x99
	.4byte	0x89
	.4byte	.LLST0
	.uleb128 0x11
	.string	"to"
	.byte	0x1
	.byte	0x99
	.4byte	0x89
	.4byte	.LLST1
	.uleb128 0x12
	.string	"i"
	.byte	0x1
	.byte	0x9a
	.4byte	0x4c
	.4byte	.LLST2
	.uleb128 0x13
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x14
	.4byte	.LASF35
	.byte	0x1
	.byte	0x9f
	.4byte	0x89
	.4byte	.LLST3
	.uleb128 0x14
	.4byte	.LASF36
	.byte	0x1
	.byte	0xa0
	.4byte	0x89
	.4byte	.LLST4
	.uleb128 0x15
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.4byte	0x220
	.uleb128 0x16
	.4byte	.LASF40
	.byte	0x1
	.byte	0xa6
	.4byte	0x4c
	.byte	0
	.uleb128 0x17
	.4byte	.LVL20
	.4byte	0x863
	.uleb128 0x18
	.4byte	.LVL21
	.4byte	0x86e
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF74
	.byte	0x1
	.2byte	0x11f
	.4byte	0x89
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3b7
	.uleb128 0x1b
	.4byte	.LASF37
	.byte	0x1
	.2byte	0x11f
	.4byte	0x89
	.4byte	.LLST5
	.uleb128 0x1c
	.string	"len"
	.byte	0x1
	.2byte	0x11f
	.4byte	0x8b
	.4byte	.LLST6
	.uleb128 0x1d
	.4byte	.LASF38
	.byte	0x1
	.2byte	0x121
	.4byte	0x7e
	.4byte	.LLST7
	.uleb128 0x1d
	.4byte	.LASF39
	.byte	0x1
	.2byte	0x122
	.4byte	0x7e
	.4byte	.LLST8
	.uleb128 0x1e
	.4byte	.LASF41
	.4byte	0x3c7
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$3055
	.uleb128 0x1f
	.4byte	.LASF42
	.byte	0x1
	.2byte	0x127
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1f
	.4byte	.LASF43
	.byte	0x1
	.2byte	0x128
	.4byte	0x3cc
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x20
	.4byte	.LVL27
	.4byte	0x86e
	.4byte	0x302
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x123
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$3055
	.byte	0
	.uleb128 0x17
	.4byte	.LVL28
	.4byte	0x879
	.uleb128 0x20
	.4byte	.LVL29
	.4byte	0x86e
	.4byte	0x33b
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x124
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$3055
	.byte	0
	.uleb128 0x17
	.4byte	.LVL30
	.4byte	0x879
	.uleb128 0x20
	.4byte	.LVL31
	.4byte	0x86e
	.4byte	0x374
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x125
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$3055
	.byte	0
	.uleb128 0x17
	.4byte	.LVL32
	.4byte	0x879
	.uleb128 0x20
	.4byte	.LVL33
	.4byte	0x86e
	.4byte	0x3ad
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x126
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$3055
	.byte	0
	.uleb128 0x17
	.4byte	.LVL34
	.4byte	0x879
	.byte	0
	.uleb128 0xd
	.4byte	0xab
	.4byte	0x3c7
	.uleb128 0xe
	.4byte	0x9d
	.byte	0x17
	.byte	0
	.uleb128 0x7
	.4byte	0x3b7
	.uleb128 0x6
	.byte	0x4
	.4byte	0x7e
	.uleb128 0x21
	.4byte	.LASF75
	.byte	0x1
	.byte	0x93
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x22
	.4byte	.LASF76
	.byte	0x1
	.byte	0xc3
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x536
	.uleb128 0x12
	.string	"i"
	.byte	0x1
	.byte	0xc4
	.4byte	0x4c
	.4byte	.LLST9
	.uleb128 0x17
	.4byte	.LVL37
	.4byte	0x1a1
	.uleb128 0x17
	.4byte	.LVL38
	.4byte	0x1a1
	.uleb128 0x20
	.4byte	.LVL39
	.4byte	0x1a1
	.4byte	0x434
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0xc
	.4byte	0x40070000
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL40
	.4byte	0x1a1
	.4byte	0x451
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0xc
	.4byte	0x40080000
	.byte	0
	.uleb128 0x20
	.4byte	.LVL41
	.4byte	0x1a1
	.4byte	0x471
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0xc
	.4byte	0x3ffe0000
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0xc
	.4byte	0x3ffe0440
	.byte	0
	.uleb128 0x20
	.4byte	.LVL42
	.4byte	0x1a1
	.4byte	0x491
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0xc
	.4byte	0x3ffe4000
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0xc
	.4byte	0x3ffe4350
	.byte	0
	.uleb128 0x20
	.4byte	.LVL43
	.4byte	0x1a1
	.4byte	0x4b1
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0xc
	.4byte	0x3ffae000
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0xc
	.4byte	0x3ffae2a0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL44
	.4byte	0x1a1
	.4byte	0x4d0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x4
	.byte	0x8
	.byte	0xfe
	.byte	0x46
	.byte	0x24
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0xc
	.4byte	0x3f820000
	.byte	0
	.uleb128 0x17
	.4byte	.LVL47
	.4byte	0x863
	.uleb128 0x20
	.4byte	.LVL48
	.4byte	0x86e
	.4byte	0x4f9
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC31
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x17
	.4byte	.LVL50
	.4byte	0x863
	.uleb128 0x20
	.4byte	.LVL51
	.4byte	0x86e
	.4byte	0x522
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC33
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x18
	.4byte	.LVL53
	.4byte	0x884
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	regions
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x139
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x593
	.uleb128 0x1c
	.string	"pv"
	.byte	0x1
	.2byte	0x139
	.4byte	0x89
	.4byte	.LLST10
	.uleb128 0x15
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.4byte	0x582
	.uleb128 0x1d
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x13f
	.4byte	0x3cc
	.4byte	.LLST11
	.uleb128 0x17
	.4byte	.LVL57
	.4byte	0x88f
	.byte	0
	.uleb128 0x18
	.4byte	.LVL59
	.4byte	0x88f
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x149
	.4byte	0x89
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x65e
	.uleb128 0x1b
	.4byte	.LASF45
	.byte	0x1
	.2byte	0x149
	.4byte	0x8b
	.4byte	.LLST12
	.uleb128 0x25
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x149
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1d
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x14b
	.4byte	0x4c
	.4byte	.LLST13
	.uleb128 0x26
	.string	"tag"
	.byte	0x1
	.2byte	0x14c
	.4byte	0x4c
	.4byte	.LLST14
	.uleb128 0x26
	.string	"j"
	.byte	0x1
	.2byte	0x14c
	.4byte	0x4c
	.4byte	.LLST15
	.uleb128 0x26
	.string	"ret"
	.byte	0x1
	.2byte	0x14d
	.4byte	0x89
	.4byte	.LLST16
	.uleb128 0x1d
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x14e
	.4byte	0x7e
	.4byte	.LLST17
	.uleb128 0x20
	.4byte	.LVL71
	.4byte	0x89a
	.4byte	0x633
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL72
	.4byte	0x24d
	.4byte	0x647
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL77
	.4byte	0x89a
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x130
	.4byte	0x89
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x69e
	.uleb128 0x1b
	.4byte	.LASF45
	.byte	0x1
	.2byte	0x130
	.4byte	0x8b
	.4byte	.LLST18
	.uleb128 0x18
	.4byte	.LVL89
	.4byte	0x593
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x180
	.4byte	0x8b
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x709
	.uleb128 0x1b
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x180
	.4byte	0x7e
	.4byte	.LLST19
	.uleb128 0x1d
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x182
	.4byte	0x4c
	.4byte	.LLST20
	.uleb128 0x26
	.string	"tag"
	.byte	0x1
	.2byte	0x183
	.4byte	0x4c
	.4byte	.LLST21
	.uleb128 0x26
	.string	"ret"
	.byte	0x1
	.2byte	0x184
	.4byte	0x8b
	.4byte	.LLST22
	.uleb128 0x18
	.4byte	.LVL94
	.4byte	0x8a5
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x190
	.4byte	0x8b
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x774
	.uleb128 0x1b
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x190
	.4byte	0x7e
	.4byte	.LLST23
	.uleb128 0x1d
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x192
	.4byte	0x4c
	.4byte	.LLST24
	.uleb128 0x26
	.string	"tag"
	.byte	0x1
	.2byte	0x193
	.4byte	0x4c
	.4byte	.LLST25
	.uleb128 0x26
	.string	"ret"
	.byte	0x1
	.2byte	0x194
	.4byte	0x8b
	.4byte	.LLST26
	.uleb128 0x18
	.4byte	.LVL104
	.4byte	0x8b0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LASF52
	.byte	0x1
	.2byte	0x1a0
	.4byte	0x8b
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x79e
	.uleb128 0x18
	.4byte	.LVL111
	.4byte	0x69e
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LASF53
	.byte	0x1
	.2byte	0x1a5
	.4byte	0x8b
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7c8
	.uleb128 0x18
	.4byte	.LVL112
	.4byte	0x709
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.byte	0
	.uleb128 0x27
	.string	"TAG"
	.byte	0x1
	.byte	0x17
	.4byte	0x7da
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC1
	.byte	0x9f
	.uleb128 0x7
	.4byte	0xb2
	.uleb128 0xd
	.4byte	0x196
	.4byte	0x7ef
	.uleb128 0xe
	.4byte	0x9d
	.byte	0x10
	.byte	0
	.uleb128 0x28
	.4byte	.LASF54
	.byte	0x1
	.byte	0x36
	.4byte	0x800
	.uleb128 0x5
	.byte	0x3
	.4byte	tag_desc
	.uleb128 0x7
	.4byte	0x7df
	.uleb128 0xd
	.4byte	0x10b
	.4byte	0x815
	.uleb128 0xe
	.4byte	0x9d
	.byte	0x2c
	.byte	0
	.uleb128 0x28
	.4byte	.LASF55
	.byte	0x1
	.byte	0x5d
	.4byte	0x805
	.uleb128 0x5
	.byte	0x3
	.4byte	regions
	.uleb128 0x28
	.4byte	.LASF56
	.byte	0x1
	.byte	0x91
	.4byte	0x18f
	.uleb128 0x5
	.byte	0x3
	.4byte	nonos_stack_in_use
	.uleb128 0x29
	.4byte	.LASF57
	.byte	0x1
	.byte	0xbb
	.4byte	0x4c
	.uleb128 0x29
	.4byte	.LASF58
	.byte	0x1
	.byte	0xbb
	.4byte	0x4c
	.uleb128 0x29
	.4byte	.LASF59
	.byte	0x1
	.byte	0xbb
	.4byte	0x4c
	.uleb128 0x29
	.4byte	.LASF60
	.byte	0x1
	.byte	0xbb
	.4byte	0x4c
	.uleb128 0x2a
	.4byte	.LASF61
	.4byte	.LASF61
	.byte	0x7
	.byte	0x4c
	.uleb128 0x2a
	.4byte	.LASF62
	.4byte	.LASF62
	.byte	0x8
	.byte	0xde
	.uleb128 0x2a
	.4byte	.LASF63
	.4byte	.LASF63
	.byte	0x9
	.byte	0x47
	.uleb128 0x2a
	.4byte	.LASF64
	.4byte	.LASF64
	.byte	0x6
	.byte	0x2b
	.uleb128 0x2a
	.4byte	.LASF65
	.4byte	.LASF65
	.byte	0x6
	.byte	0x44
	.uleb128 0x2a
	.4byte	.LASF66
	.4byte	.LASF66
	.byte	0x6
	.byte	0x3b
	.uleb128 0x2a
	.4byte	.LASF67
	.4byte	.LASF67
	.byte	0x6
	.byte	0x5d
	.uleb128 0x2a
	.4byte	.LASF68
	.4byte	.LASF68
	.byte	0x6
	.byte	0x51
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
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x18
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x3
	.byte	0x73
	.sleb128 -3
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x7
	.byte	0x74
	.sleb128 0
	.byte	0x34
	.byte	0x24
	.byte	0x79
	.sleb128 0
	.byte	0x22
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0xa
	.byte	0x74
	.sleb128 0
	.byte	0x34
	.byte	0x24
	.byte	0x3
	.4byte	regions
	.byte	0x22
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x7
	.byte	0x74
	.sleb128 0
	.byte	0x34
	.byte	0x24
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL16
	.4byte	.LVL18
	.2byte	0xa
	.byte	0x74
	.sleb128 0
	.byte	0x34
	.byte	0x24
	.byte	0x3
	.4byte	regions
	.byte	0x22
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x7
	.byte	0x74
	.sleb128 0
	.byte	0x34
	.byte	0x24
	.byte	0x79
	.sleb128 0
	.byte	0x22
	.4byte	.LVL19
	.4byte	.LVL20-1
	.2byte	0xa
	.byte	0x74
	.sleb128 0
	.byte	0x34
	.byte	0x24
	.byte	0x3
	.4byte	regions
	.byte	0x22
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL8
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x6
	.byte	0x79
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0xc
	.byte	0x74
	.sleb128 0
	.byte	0x34
	.byte	0x24
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.byte	0x6
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0xf
	.byte	0x74
	.sleb128 0
	.byte	0x34
	.byte	0x24
	.byte	0x3
	.4byte	regions
	.byte	0x22
	.byte	0x6
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0xc
	.byte	0x74
	.sleb128 0
	.byte	0x34
	.byte	0x24
	.byte	0x79
	.sleb128 0
	.byte	0x22
	.byte	0x6
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL20-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL23
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL36
	.4byte	.LFE7
	.2byte	0x2
	.byte	0x73
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL23
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL25
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL24
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL36
	.4byte	.LFE7
	.2byte	0x2
	.byte	0x73
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL26
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x9
	.byte	0x72
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x22
	.byte	0x34
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LFE7
	.2byte	0xa
	.byte	0x73
	.sleb128 0
	.byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x22
	.byte	0x34
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL49
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL54
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL56
	.4byte	.LVL58
	.2byte	0x3
	.byte	0x72
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL56
	.4byte	.LVL58
	.2byte	0x3
	.byte	0x72
	.sleb128 4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL60
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x3
	.byte	0x72
	.sleb128 -3
	.byte	0x9f
	.4byte	.LVL63
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL73
	.4byte	.LVL74
	.2byte	0x3
	.byte	0x77
	.sleb128 -4
	.byte	0x9f
	.4byte	.LVL74
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x52
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
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL64
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL86
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL64
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL81
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL86
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL66
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL74
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL61
	.4byte	.LVL64
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL71
	.4byte	.LVL72-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL84
	.4byte	.LVL86
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL86
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL65
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL74
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL88
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL90
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL91
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL100
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL92
	.4byte	.LVL93
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL93
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL93
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL98
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL92
	.4byte	.LVL93
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL93
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL101
	.4byte	.LVL110
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL110
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL102
	.4byte	.LVL103
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL103
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL103
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL108
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL102
	.4byte	.LVL103
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL103
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x55
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
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF59:
	.string	"_init_start"
.LASF64:
	.string	"vPortDefineHeapRegionsTagged"
.LASF31:
	.string	"aliasedIram"
.LASF2:
	.string	"short int"
.LASF11:
	.string	"size_t"
.LASF13:
	.string	"sizetype"
.LASF74:
	.string	"dram_alloc_to_iram_addr"
.LASF42:
	.string	"istart"
.LASF5:
	.string	"__uint32_t"
.LASF72:
	.string	"HeapRegionTagged"
.LASF20:
	.string	"xExecAddr"
.LASF60:
	.string	"_iram_text_end"
.LASF40:
	.string	"overlap"
.LASF9:
	.string	"uint8_t"
.LASF35:
	.string	"regStart"
.LASF0:
	.string	"signed char"
.LASF65:
	.string	"vPortFreeTagged"
.LASF7:
	.string	"long long int"
.LASF71:
	.string	"C:\\\\esp\\\\ArkPOS2-esp\\\\build\\\\esp32"
.LASF43:
	.string	"iptr"
.LASF68:
	.string	"xPortGetMinimumEverFreeHeapSizeTagged"
.LASF50:
	.string	"xPortGetFreeHeapSizeCaps"
.LASF38:
	.string	"dstart"
.LASF37:
	.string	"addr"
.LASF25:
	.string	"ESP_LOG_INFO"
.LASF41:
	.string	"__FUNCTION__"
.LASF73:
	.string	"disable_mem_region"
.LASF52:
	.string	"xPortGetFreeHeapSize"
.LASF17:
	.string	"pucStartAddress"
.LASF53:
	.string	"xPortGetMinimumEverFreeHeapSize"
.LASF46:
	.string	"caps"
.LASF55:
	.string	"regions"
.LASF1:
	.string	"unsigned char"
.LASF63:
	.string	"abort"
.LASF48:
	.string	"pvPortMallocCaps"
.LASF57:
	.string	"_data_start"
.LASF8:
	.string	"long long unsigned int"
.LASF10:
	.string	"uint32_t"
.LASF6:
	.string	"unsigned int"
.LASF16:
	.string	"BaseType_t"
.LASF44:
	.string	"dramAddrPtr"
.LASF56:
	.string	"nonos_stack_in_use"
.LASF62:
	.string	"ets_printf"
.LASF54:
	.string	"tag_desc"
.LASF3:
	.string	"short unsigned int"
.LASF15:
	.string	"char"
.LASF12:
	.string	"long int"
.LASF33:
	.string	"tag_desc_t"
.LASF26:
	.string	"ESP_LOG_DEBUG"
.LASF39:
	.string	"dend"
.LASF22:
	.string	"ESP_LOG_NONE"
.LASF32:
	.string	"_Bool"
.LASF21:
	.string	"HeapRegionTagged_t"
.LASF66:
	.string	"pvPortMallocTagged"
.LASF28:
	.string	"esp_log_level_t"
.LASF24:
	.string	"ESP_LOG_WARN"
.LASF67:
	.string	"xPortGetFreeHeapSizeTagged"
.LASF76:
	.string	"heap_alloc_caps_init"
.LASF14:
	.string	"long unsigned int"
.LASF75:
	.string	"heap_alloc_enable_nonos_stack_tag"
.LASF77:
	.string	"vPortFree"
.LASF70:
	.string	"C:/Users/nickt/git/esp-idf/components/esp32/heap_alloc_caps.c"
.LASF27:
	.string	"ESP_LOG_VERBOSE"
.LASF29:
	.string	"name"
.LASF61:
	.string	"esp_log_timestamp"
.LASF58:
	.string	"_heap_start"
.LASF19:
	.string	"xTag"
.LASF47:
	.string	"remCaps"
.LASF51:
	.string	"xPortGetMinimumEverFreeHeapSizeCaps"
.LASF36:
	.string	"regEnd"
.LASF45:
	.string	"xWantedSize"
.LASF69:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF49:
	.string	"pvPortMalloc"
.LASF23:
	.string	"ESP_LOG_ERROR"
.LASF30:
	.string	"prio"
.LASF34:
	.string	"from"
.LASF18:
	.string	"xSizeInBytes"
.LASF4:
	.string	"__uint8_t"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-61-gab8375a) 5.2.0"
