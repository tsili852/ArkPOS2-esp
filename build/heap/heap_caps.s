	.file	"heap_caps.c"
	.text
.Ltext0:
	.section	.iram1,"ax",@progbits
	.literal_position
	.literal .LC0, registered_heaps
	.align	4
	.type	find_containing_heap, @function
find_containing_heap:
.LFB18:
	.file 1 "C:/esp/esp-idf/components/heap/heap_caps.c"
	.loc 1 161 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LVL1:
	.loc 1 164 0
	l32r	a8, .LC0
	l32i.n	a8, a8, 0
.LVL2:
	j	.L2
.L5:
	.loc 1 165 0
	l32i.n	a9, a8, 28
	beqz.n	a9, .L3
	.loc 1 165 0 discriminator 1
	l32i.n	a9, a8, 12
	blt	a2, a9, .L3
	.loc 1 165 0 is_stmt 0 discriminator 2
	l32i.n	a9, a8, 16
	blt	a2, a9, .L6
.L3:
	.loc 1 164 0 is_stmt 1 discriminator 2
	l32i.n	a8, a8, 32
.LVL3:
.L2:
	.loc 1 164 0 is_stmt 0 discriminator 1
	bnez.n	a8, .L5
	.loc 1 169 0 is_stmt 1
	movi.n	a2, 0
.LVL4:
	retw.n
.LVL5:
.L6:
	.loc 1 166 0
	mov.n	a2, a8
.LVL6:
	.loc 1 170 0
	retw.n
.LFE18:
	.size	find_containing_heap, .-find_containing_heap
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC2:
	.string	"dstart >= SOC_DIRAM_DRAM_LOW"
	.align	4
.LC5:
	.string	"C:/esp/esp-idf/components/heap/heap_caps.c"
	.align	4
.LC8:
	.string	"dend <= SOC_DIRAM_DRAM_HIGH"
	.align	4
.LC10:
	.string	"(dstart & 3) == 0"
	.align	4
.LC12:
	.string	"(dend & 3) == 0"
	.section	.iram1
	.literal_position
	.literal .LC1, 1073610751
	.literal .LC3, .LC2
	.literal .LC4, __func__$4847
	.literal .LC6, .LC5
	.literal .LC7, 1073741820
	.literal .LC9, .LC8
	.literal .LC11, .LC10
	.literal .LC13, .LC12
	.literal .LC14, -2146828292
	.align	4
	.type	dram_alloc_to_iram_addr, @function
dram_alloc_to_iram_addr:
.LFB12:
	.loc 1 45 0
.LVL7:
	entry	sp, 32
.LCFI1:
.LVL8:
	.loc 1 47 0
	add.n	a3, a2, a3
.LVL9:
	addi	a3, a3, -4
.LVL10:
	.loc 1 48 0
	l32r	a9, .LC1
	bltu	a9, a2, .L8
	.loc 1 48 0 is_stmt 0 discriminator 1
	l32r	a13, .LC3
	l32r	a12, .LC4
	movi.n	a11, 0x30
	l32r	a10, .LC6
	call8	__assert_func
.LVL11:
.L8:
	.loc 1 49 0 is_stmt 1
	l32r	a8, .LC7
	bgeu	a8, a3, .L9
	.loc 1 49 0 is_stmt 0 discriminator 1
	l32r	a13, .LC9
	l32r	a12, .LC4
	movi.n	a11, 0x31
	l32r	a10, .LC6
	call8	__assert_func
.LVL12:
.L9:
	.loc 1 50 0 is_stmt 1
	extui	a8, a2, 0, 2
	beqz.n	a8, .L10
	.loc 1 50 0 is_stmt 0 discriminator 1
	l32r	a13, .LC11
	l32r	a12, .LC4
	movi.n	a11, 0x32
	l32r	a10, .LC6
	call8	__assert_func
.LVL13:
.L10:
	.loc 1 51 0 is_stmt 1
	extui	a8, a3, 0, 2
	beqz.n	a8, .L11
	.loc 1 51 0 is_stmt 0 discriminator 1
	l32r	a13, .LC13
	l32r	a12, .LC4
	movi.n	a11, 0x33
	l32r	a10, .LC6
	call8	__assert_func
.LVL14:
.L11:
	.loc 1 52 0 is_stmt 1
	l32r	a8, .LC14
	sub	a3, a8, a3
.LVL15:
	.loc 1 54 0
	s32i.n	a2, a3, 0
	.loc 1 56 0
	addi.n	a2, a3, 4
.LVL16:
	retw.n
.LFE12:
	.size	dram_alloc_to_iram_addr, .-dram_alloc_to_iram_addr
	.section	.text.heap_caps_match,"ax",@progbits
	.align	4
	.global	heap_caps_match
	.type	heap_caps_match, @function
heap_caps_match:
.LFB14:
	.loc 1 72 0
.LVL17:
	entry	sp, 32
.LCFI2:
	.loc 1 73 0
	l32i.n	a8, a2, 28
	.loc 1 73 0
	beqz.n	a8, .L17
.LVL18:
.LBB13:
.LBB14:
	.loc 1 61 0
	beqz.n	a8, .L18
	movi.n	a8, 0
	mov.n	a9, a8
	j	.L15
.LVL19:
.L16:
.LBB15:
	.loc 1 66 0
	addx4	a10, a8, a2
	l32i.n	a10, a10, 0
	or	a9, a9, a10
.LVL20:
	.loc 1 65 0
	addi.n	a8, a8, 1
.LVL21:
.L15:
	blti	a8, 3, .L16
	j	.L14
.LVL22:
.L18:
.LBE15:
	.loc 1 62 0
	movi.n	a9, 0
.L14:
.LBE14:
.LBE13:
	.loc 1 73 0
	and	a9, a3, a9
	bne	a3, a9, .L19
	movi.n	a2, 1
.LVL23:
	retw.n
.LVL24:
.L17:
	movi.n	a2, 0
.LVL25:
	retw.n
.LVL26:
.L19:
	movi.n	a2, 0
.LVL27:
	.loc 1 74 0
	retw.n
.LFE14:
	.size	heap_caps_match, .-heap_caps_match
	.section	.iram1
	.literal_position
	.literal .LC15, registered_heaps
	.literal .LC16, 1073610751
	.literal .LC17, 1073741819
	.align	4
	.global	heap_caps_malloc
	.type	heap_caps_malloc, @function
heap_caps_malloc:
.LFB15:
	.loc 1 80 0
.LVL28:
	entry	sp, 32
.LCFI3:
.LVL29:
	.loc 1 84 0
	extui	a6, a3, 0, 1
	beqz.n	a6, .L21
	.loc 1 89 0
	movi.n	a4, 0xc
	bany	a3, a4, .L32
	.loc 1 93 0
	addi.n	a2, a2, 3
.LVL30:
	movi.n	a4, -4
	and	a2, a2, a4
.LVL31:
.L21:
.LBB16:
	.loc 1 95 0
	movi.n	a5, 0
	j	.L23
.LVL32:
.L31:
.LBB17:
	.loc 1 98 0
	l32r	a4, .LC15
	l32i.n	a4, a4, 0
.LVL33:
	j	.L24
.L30:
	.loc 1 99 0
	l32i.n	a10, a4, 28
	beqz.n	a10, .L25
	.loc 1 102 0
	addx4	a7, a5, a4
	l32i.n	a7, a7, 0
	bnone	a3, a7, .L25
.LBB18:
	.loc 1 105 0
	movi.n	a11, -1
	xor	a11, a11, a7
	and	a11, a3, a11
.LVL34:
	.loc 1 106 0
	addi.n	a7, a5, 1
.LVL35:
	.loc 1 107 0
	j	.L26
.L28:
	.loc 1 108 0
	addx4	a8, a7, a4
	l32i.n	a8, a8, 0
	movi.n	a9, -1
	xor	a8, a9, a8
	and	a11, a11, a8
.LVL36:
	.loc 1 109 0
	addi.n	a7, a7, 1
.LVL37:
.L26:
	.loc 1 107 0
	movi.n	a9, 1
	movi.n	a8, 0
	movnez	a8, a9, a11
	extui	a8, a8, 0, 8
	blti	a7, 3, .L27
	movi.n	a9, 0
.L27:
	bany	a8, a9, .L28
	.loc 1 111 0
	bnez.n	a11, .L25
	.loc 1 113 0
	beqz.n	a6, .L29
	.loc 1 113 0 is_stmt 0 discriminator 1
	l32i.n	a7, a4, 12
.LVL38:
	l32r	a8, .LC16
	bge	a8, a7, .L29
	.loc 1 113 0 discriminator 2
	l32r	a8, .LC17
	blt	a8, a7, .L29
	.loc 1 117 0 is_stmt 1
	addi.n	a7, a2, 4
	mov.n	a11, a7
.LVL39:
	call8	multi_heap_malloc
.LVL40:
	.loc 1 118 0
	beqz.n	a10, .L25
	.loc 1 119 0
	mov.n	a11, a7
	call8	dram_alloc_to_iram_addr
.LVL41:
	mov.n	a2, a10
.LVL42:
	retw.n
.LVL43:
.L29:
	.loc 1 123 0
	mov.n	a11, a2
.LVL44:
	call8	multi_heap_malloc
.LVL45:
	.loc 1 124 0
	bnez.n	a10, .L33
.LVL46:
.L25:
.LBE18:
	.loc 1 98 0 discriminator 2
	l32i.n	a4, a4, 32
.LVL47:
.L24:
	.loc 1 98 0 is_stmt 0 discriminator 1
	bnez.n	a4, .L30
.LBE17:
	.loc 1 95 0 is_stmt 1 discriminator 2
	addi.n	a5, a5, 1
.LVL48:
.L23:
	.loc 1 95 0 is_stmt 0 discriminator 1
	blti	a5, 3, .L31
.LBE16:
	.loc 1 133 0 is_stmt 1
	movi.n	a2, 0
.LVL49:
.LBB21:
	retw.n
.LVL50:
.L32:
.LBE21:
	.loc 1 90 0
	movi.n	a2, 0
.LVL51:
	retw.n
.LVL52:
.L33:
.LBB22:
.LBB20:
.LBB19:
	.loc 1 125 0
	mov.n	a2, a10
.LVL53:
.LBE19:
.LBE20:
.LBE22:
	.loc 1 134 0
	retw.n
.LFE15:
	.size	heap_caps_malloc, .-heap_caps_malloc
	.literal_position
	.literal .LC18, 2052
	.align	4
	.global	heap_caps_malloc_default
	.type	heap_caps_malloc_default, @function
heap_caps_malloc_default:
.LFB16:
	.loc 1 140 0
.LVL54:
	entry	sp, 32
.LCFI4:
	.loc 1 141 0
	l32r	a11, .LC18
	mov.n	a10, a2
	call8	heap_caps_malloc
.LVL55:
	.loc 1 142 0
	mov.n	a2, a10
.LVL56:
	retw.n
.LFE16:
	.size	heap_caps_malloc_default, .-heap_caps_malloc_default
	.section	.rodata.str1.4
	.align	4
.LC21:
	.string	"heap != NULL && \"free() target pointer is outside heap areas\""
	.section	.iram1
	.literal_position
	.literal .LC19, -1074397184
	.literal .LC20, 131068
	.literal .LC22, .LC21
	.literal .LC23, __func__$4902
	.literal .LC24, .LC5
	.align	4
	.global	heap_caps_free
	.type	heap_caps_free, @function
heap_caps_free:
.LFB19:
	.loc 1 173 0
.LVL57:
	entry	sp, 32
.LCFI5:
.LVL58:
	.loc 1 176 0
	beqz.n	a2, .L35
	.loc 1 180 0
	l32r	a8, .LC19
	add.n	a8, a2, a8
	l32r	a9, .LC20
	bltu	a9, a8, .L37
.LVL59:
.LBB23:
	.loc 1 185 0
	addi	a2, a2, -4
.LVL60:
	l32i.n	a2, a2, 0
.LVL61:
.L37:
.LBE23:
	.loc 1 188 0
	mov.n	a10, a2
	call8	find_containing_heap
.LVL62:
	.loc 1 189 0
	bnez.n	a10, .L38
	.loc 1 189 0 is_stmt 0 discriminator 1
	l32r	a13, .LC22
	l32r	a12, .LC23
	movi	a11, 0xbd
	l32r	a10, .LC24
.LVL63:
	call8	__assert_func
.LVL64:
.L38:
	.loc 1 190 0 is_stmt 1
	mov.n	a11, a2
	l32i.n	a10, a10, 28
.LVL65:
	call8	multi_heap_free
.LVL66:
.L35:
	retw.n
.LFE19:
	.size	heap_caps_free, .-heap_caps_free
	.section	.rodata.str1.4
	.align	4
.LC25:
	.string	"heap != NULL && \"realloc() pointer is outside heap areas\""
	.align	4
.LC29:
	.string	"old_size > 0"
	.section	.iram1
	.literal_position
	.literal .LC26, .LC25
	.literal .LC27, __func__$4909
	.literal .LC28, .LC5
	.literal .LC30, .LC29
	.align	4
	.global	heap_caps_realloc
	.type	heap_caps_realloc, @function
heap_caps_realloc:
.LFB20:
	.loc 1 194 0
.LVL67:
	entry	sp, 32
.LCFI6:
	.loc 1 195 0
	bnez.n	a2, .L40
	.loc 1 196 0
	mov.n	a11, a4
	mov.n	a10, a3
	call8	heap_caps_malloc
.LVL68:
	mov.n	a2, a10
.LVL69:
	retw.n
.LVL70:
.L40:
	.loc 1 199 0
	bnez.n	a3, .L42
	.loc 1 200 0
	mov.n	a10, a2
	call8	heap_caps_free
.LVL71:
	.loc 1 201 0
	movi.n	a2, 0
.LVL72:
	retw.n
.LVL73:
.L42:
	.loc 1 204 0
	mov.n	a10, a2
	call8	find_containing_heap
.LVL74:
	mov.n	a5, a10
.LVL75:
	.loc 1 206 0
	bnez.n	a10, .L43
	.loc 1 206 0 is_stmt 0 discriminator 1
	l32r	a13, .LC26
	l32r	a12, .LC27
	movi	a11, 0xce
	l32r	a10, .LC28
	call8	__assert_func
.LVL76:
.L43:
.LBB24:
.LBB25:
	.loc 1 61 0 is_stmt 1
	l32i.n	a10, a10, 28
	beqz.n	a10, .L49
	movi.n	a8, 0
	mov.n	a9, a8
	j	.L45
.LVL77:
.L46:
.LBB26:
	.loc 1 66 0
	addx4	a11, a8, a5
	l32i.n	a11, a11, 0
	or	a9, a9, a11
.LVL78:
	.loc 1 65 0
	addi.n	a8, a8, 1
.LVL79:
.L45:
	blti	a8, 3, .L46
	j	.L44
.LVL80:
.L49:
.LBE26:
	.loc 1 62 0
	movi.n	a9, 0
.L44:
.LBE25:
.LBE24:
	.loc 1 210 0
	and	a9, a4, a9
.LVL81:
	.loc 1 212 0
	bne	a4, a9, .L47
.LBB27:
	.loc 1 215 0
	mov.n	a12, a3
	mov.n	a11, a2
	call8	multi_heap_realloc
.LVL82:
	.loc 1 216 0
	bnez.n	a10, .L50
.LVL83:
.L47:
.LBE27:
	.loc 1 223 0
	mov.n	a11, a4
	mov.n	a10, a3
	call8	heap_caps_malloc
.LVL84:
	mov.n	a3, a10
.LVL85:
	.loc 1 224 0
	beqz.n	a10, .L51
.LBB28:
	.loc 1 225 0
	mov.n	a11, a2
	l32i.n	a10, a5, 28
	call8	multi_heap_get_allocated_size
.LVL86:
	.loc 1 226 0
	bnez.n	a10, .L48
	.loc 1 226 0 is_stmt 0 discriminator 1
	l32r	a13, .LC30
	l32r	a12, .LC27
	movi	a11, 0xe2
	l32r	a10, .LC28
.LVL87:
	call8	__assert_func
.LVL88:
.L48:
	.loc 1 227 0 is_stmt 1
	mov.n	a12, a10
	mov.n	a11, a2
	mov.n	a10, a3
.LVL89:
	call8	memcpy
.LVL90:
	.loc 1 228 0
	mov.n	a10, a2
	call8	heap_caps_free
.LVL91:
	.loc 1 229 0
	mov.n	a2, a3
.LVL92:
	retw.n
.LVL93:
.L50:
.LBE28:
.LBB29:
	.loc 1 217 0
	mov.n	a2, a10
.LVL94:
	retw.n
.LVL95:
.L51:
.LBE29:
	.loc 1 231 0
	movi.n	a2, 0
.LVL96:
	.loc 1 232 0
	retw.n
.LFE20:
	.size	heap_caps_realloc, .-heap_caps_realloc
	.literal_position
	.literal .LC31, 2052
	.align	4
	.global	heap_caps_realloc_default
	.type	heap_caps_realloc_default, @function
heap_caps_realloc_default:
.LFB17:
	.loc 1 149 0
.LVL97:
	entry	sp, 32
.LCFI7:
	.loc 1 150 0
	l32r	a12, .LC31
	mov.n	a11, a3
	mov.n	a10, a2
	call8	heap_caps_realloc
.LVL98:
	.loc 1 151 0
	mov.n	a2, a10
.LVL99:
	retw.n
.LFE17:
	.size	heap_caps_realloc_default, .-heap_caps_realloc_default
	.section	.text.heap_caps_get_free_size,"ax",@progbits
	.literal_position
	.literal .LC32, registered_heaps
	.align	4
	.global	heap_caps_get_free_size
	.type	heap_caps_get_free_size, @function
heap_caps_get_free_size:
.LFB21:
	.loc 1 235 0
.LVL100:
	entry	sp, 32
.LCFI8:
.LVL101:
	.loc 1 238 0
	l32r	a3, .LC32
	l32i.n	a3, a3, 0
.LVL102:
	.loc 1 236 0
	movi.n	a4, 0
	.loc 1 238 0
	j	.L54
.LVL103:
.L56:
	.loc 1 239 0
	mov.n	a11, a2
	mov.n	a10, a3
	call8	heap_caps_match
.LVL104:
	beqz.n	a10, .L55
	.loc 1 240 0
	l32i.n	a10, a3, 28
	call8	multi_heap_free_size
.LVL105:
	add.n	a4, a4, a10
.LVL106:
.L55:
	.loc 1 238 0 discriminator 2
	l32i.n	a3, a3, 32
.LVL107:
.L54:
	.loc 1 238 0 is_stmt 0 discriminator 1
	bnez.n	a3, .L56
	.loc 1 244 0 is_stmt 1
	mov.n	a2, a4
.LVL108:
	retw.n
.LFE21:
	.size	heap_caps_get_free_size, .-heap_caps_get_free_size
	.section	.text.heap_caps_get_minimum_free_size,"ax",@progbits
	.literal_position
	.literal .LC33, registered_heaps
	.align	4
	.global	heap_caps_get_minimum_free_size
	.type	heap_caps_get_minimum_free_size, @function
heap_caps_get_minimum_free_size:
.LFB22:
	.loc 1 247 0
.LVL109:
	entry	sp, 32
.LCFI9:
.LVL110:
	.loc 1 250 0
	l32r	a3, .LC33
	l32i.n	a3, a3, 0
.LVL111:
	.loc 1 248 0
	movi.n	a4, 0
	.loc 1 250 0
	j	.L58
.LVL112:
.L60:
	.loc 1 251 0
	mov.n	a11, a2
	mov.n	a10, a3
	call8	heap_caps_match
.LVL113:
	beqz.n	a10, .L59
	.loc 1 252 0
	l32i.n	a10, a3, 28
	call8	multi_heap_minimum_free_size
.LVL114:
	add.n	a4, a4, a10
.LVL115:
.L59:
	.loc 1 250 0 discriminator 2
	l32i.n	a3, a3, 32
.LVL116:
.L58:
	.loc 1 250 0 is_stmt 0 discriminator 1
	bnez.n	a3, .L60
	.loc 1 256 0 is_stmt 1
	mov.n	a2, a4
.LVL117:
	retw.n
.LFE22:
	.size	heap_caps_get_minimum_free_size, .-heap_caps_get_minimum_free_size
	.section	.text.heap_caps_get_info,"ax",@progbits
	.literal_position
	.literal .LC34, registered_heaps
	.align	4
	.global	heap_caps_get_info
	.type	heap_caps_get_info, @function
heap_caps_get_info:
.LFB24:
	.loc 1 266 0
.LVL118:
	entry	sp, 64
.LCFI10:
	.loc 1 267 0
	movi.n	a12, 0x1c
	movi.n	a11, 0
	mov.n	a10, a2
	call8	memset
.LVL119:
	.loc 1 270 0
	l32r	a4, .LC34
	l32i.n	a4, a4, 0
.LVL120:
	j	.L62
.L64:
	.loc 1 271 0
	mov.n	a11, a3
	mov.n	a10, a4
	call8	heap_caps_match
.LVL121:
	beqz.n	a10, .L63
.LBB30:
	.loc 1 273 0
	mov.n	a11, sp
	l32i.n	a10, a4, 28
	call8	multi_heap_get_info
.LVL122:
	.loc 1 275 0
	l32i.n	a9, a2, 0
	l32i.n	a8, sp, 0
	add.n	a8, a9, a8
	s32i.n	a8, a2, 0
	.loc 1 276 0
	l32i.n	a9, a2, 4
	l32i.n	a8, sp, 4
	add.n	a8, a9, a8
	s32i.n	a8, a2, 4
	.loc 1 277 0
	l32i.n	a8, a2, 8
	l32i.n	a9, sp, 8
	maxu	a8, a9, a8
	s32i.n	a8, a2, 8
	.loc 1 279 0
	l32i.n	a9, a2, 12
	l32i.n	a8, sp, 12
	add.n	a8, a9, a8
	s32i.n	a8, a2, 12
	.loc 1 280 0
	l32i.n	a9, a2, 16
	l32i.n	a8, sp, 16
	add.n	a8, a9, a8
	s32i.n	a8, a2, 16
	.loc 1 281 0
	l32i.n	a9, a2, 20
	l32i.n	a8, sp, 20
	add.n	a8, a9, a8
	s32i.n	a8, a2, 20
	.loc 1 282 0
	l32i.n	a9, a2, 24
	l32i.n	a8, sp, 24
	add.n	a8, a9, a8
	s32i.n	a8, a2, 24
.L63:
.LBE30:
	.loc 1 270 0 discriminator 2
	l32i.n	a4, a4, 32
.LVL123:
.L62:
	.loc 1 270 0 is_stmt 0 discriminator 1
	bnez.n	a4, .L64
	.loc 1 285 0 is_stmt 1
	retw.n
.LFE24:
	.size	heap_caps_get_info, .-heap_caps_get_info
	.section	.text.heap_caps_get_largest_free_block,"ax",@progbits
	.align	4
	.global	heap_caps_get_largest_free_block
	.type	heap_caps_get_largest_free_block, @function
heap_caps_get_largest_free_block:
.LFB23:
	.loc 1 259 0
.LVL124:
	entry	sp, 64
.LCFI11:
	.loc 1 261 0
	mov.n	a11, a2
	mov.n	a10, sp
	call8	heap_caps_get_info
.LVL125:
	.loc 1 263 0
	l32i.n	a2, sp, 8
.LVL126:
	retw.n
.LFE23:
	.size	heap_caps_get_largest_free_block, .-heap_caps_get_largest_free_block
	.section	.rodata.str1.4
	.align	4
.LC35:
	.string	"Heap summary for capabilities 0x%08X:\n"
	.align	4
.LC38:
	.string	"  At 0x%08x len %d free %d allocated %d min_free %d\n"
	.align	4
.LC40:
	.string	"    largest_free_block %d alloc_blocks %d free_blocks %d total_blocks %d\n"
	.align	4
.LC42:
	.string	"  Totals:"
	.align	4
.LC44:
	.string	"    free %d allocated %d min_free %d largest_free_block %d\n"
	.section	.text.heap_caps_print_heap_info,"ax",@progbits
	.literal_position
	.literal .LC36, .LC35
	.literal .LC37, registered_heaps
	.literal .LC39, .LC38
	.literal .LC41, .LC40
	.literal .LC43, .LC42
	.literal .LC45, .LC44
	.align	4
	.global	heap_caps_print_heap_info
	.type	heap_caps_print_heap_info, @function
heap_caps_print_heap_info:
.LFB25:
	.loc 1 288 0
.LVL127:
	entry	sp, 64
.LCFI12:
	.loc 1 290 0
	mov.n	a11, a2
	l32r	a10, .LC36
	call8	printf
.LVL128:
	.loc 1 292 0
	l32r	a3, .LC37
	l32i.n	a3, a3, 0
.LVL129:
	j	.L67
.L69:
	.loc 1 293 0
	mov.n	a11, a2
	mov.n	a10, a3
	call8	heap_caps_match
.LVL130:
	beqz.n	a10, .L68
	.loc 1 294 0
	mov.n	a11, sp
	l32i.n	a10, a3, 28
	call8	multi_heap_get_info
.LVL131:
	.loc 1 297 0
	l32i.n	a12, a3, 16
	l32i.n	a11, a3, 12
	.loc 1 296 0
	l32i.n	a15, sp, 12
	l32i.n	a14, sp, 4
	l32i.n	a13, sp, 0
	sub	a12, a12, a11
	l32r	a10, .LC39
	call8	printf
.LVL132:
	.loc 1 298 0
	l32i.n	a14, sp, 24
	l32i.n	a13, sp, 20
	l32i.n	a12, sp, 16
	l32i.n	a11, sp, 8
	l32r	a10, .LC41
	call8	printf
.LVL133:
.L68:
	.loc 1 292 0 discriminator 2
	l32i.n	a3, a3, 32
.LVL134:
.L67:
	.loc 1 292 0 is_stmt 0 discriminator 1
	bnez.n	a3, .L69
	.loc 1 303 0 is_stmt 1
	l32r	a10, .LC43
	call8	puts
.LVL135:
	.loc 1 304 0
	mov.n	a11, a2
	mov.n	a10, sp
	call8	heap_caps_get_info
.LVL136:
	.loc 1 306 0
	l32i.n	a14, sp, 8
	l32i.n	a13, sp, 12
	l32i.n	a12, sp, 4
	l32i.n	a11, sp, 0
	l32r	a10, .LC45
	call8	printf
.LVL137:
	retw.n
.LFE25:
	.size	heap_caps_print_heap_info, .-heap_caps_print_heap_info
	.section	.text.heap_caps_check_integrity,"ax",@progbits
	.literal_position
	.literal .LC46, -2147483648
	.literal .LC47, registered_heaps
	.align	4
	.global	heap_caps_check_integrity
	.type	heap_caps_check_integrity, @function
heap_caps_check_integrity:
.LFB26:
	.loc 1 310 0
.LVL138:
	entry	sp, 32
.LCFI13:
	mov.n	a5, a2
	extui	a3, a3, 0, 8
	.loc 1 311 0
	l32r	a6, .LC46
	and	a6, a2, a6
.LVL139:
	.loc 1 315 0
	l32r	a2, .LC47
.LVL140:
	l32i.n	a4, a2, 0
.LVL141:
	.loc 1 312 0
	movi.n	a2, 1
	.loc 1 315 0
	j	.L71
.LVL142:
.L78:
	.loc 1 316 0
	l32i.n	a10, a4, 28
	beqz.n	a10, .L72
	.loc 1 317 0
	bnez.n	a6, .L73
.LVL143:
.LBB31:
.LBB32:
	.loc 1 61 0
	beqz.n	a10, .L79
	movi.n	a8, 0
	mov.n	a9, a8
	j	.L75
.LVL144:
.L76:
.LBB33:
	.loc 1 66 0
	addx4	a11, a8, a4
	l32i.n	a11, a11, 0
	or	a9, a9, a11
.LVL145:
	.loc 1 65 0
	addi.n	a8, a8, 1
.LVL146:
.L75:
	blti	a8, 3, .L76
	j	.L74
.LVL147:
.L79:
.LBE33:
	.loc 1 62 0
	mov.n	a9, a6
.L74:
.LBE32:
.LBE31:
	.loc 1 317 0
	and	a9, a5, a9
	bne	a5, a9, .L72
.LVL148:
.L73:
	.loc 1 318 0
	mov.n	a11, a3
	call8	multi_heap_check
.LVL149:
	beqz.n	a10, .L80
	.loc 1 318 0 is_stmt 0 discriminator 1
	bnez.n	a2, .L81
	j	.L72
.L80:
	.loc 1 318 0
	movi.n	a2, 0
.LVL150:
	j	.L72
.LVL151:
.L81:
	movi.n	a2, 1
.LVL152:
.L72:
	.loc 1 315 0 is_stmt 1 discriminator 2
	l32i.n	a4, a4, 32
.LVL153:
.L71:
	.loc 1 315 0 is_stmt 0 discriminator 1
	bnez.n	a4, .L78
	.loc 1 323 0 is_stmt 1
	retw.n
.LFE26:
	.size	heap_caps_check_integrity, .-heap_caps_check_integrity
	.section	.rodata.__func__$4909,"a",@progbits
	.align	4
	.type	__func__$4909, @object
	.size	__func__$4909, 18
__func__$4909:
	.string	"heap_caps_realloc"
	.section	.rodata.__func__$4902,"a",@progbits
	.align	4
	.type	__func__$4902, @object
	.size	__func__$4902, 15
__func__$4902:
	.string	"heap_caps_free"
	.section	.rodata.__func__$4847,"a",@progbits
	.align	4
	.type	__func__$4847, @object
	.size	__func__$4847, 24
__func__$4847:
	.string	"dram_alloc_to_iram_addr"
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
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI2-.LFB14
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
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI4-.LFB16
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
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI6-.LFB20
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
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI8-.LFB21
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI9-.LFB22
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI10-.LFB24
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI11-.LFB23
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI12-.LFB25
	.byte	0xe
	.uleb128 0x40
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
	.file 2 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 3 "C:/esp/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "C:/esp/esp-idf/components/newlib/include/stdint.h"
	.file 5 "C:/esp/esp-idf/components/heap/include/multi_heap.h"
	.file 6 "C:/esp/esp-idf/components/freertos/include/freertos/portmacro.h"
	.file 7 "C:/esp/esp-idf/components/heap/heap_private.h"
	.file 8 "C:/esp/esp-idf/components/newlib/include/assert.h"
	.file 9 "C:/esp/esp-idf/components/newlib/include/stdio.h"
	.file 10 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xcb5
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF84
	.byte	0xc
	.4byte	.LASF85
	.4byte	.LASF86
	.4byte	.Ldebug_ranges0+0x68
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
	.byte	0x3
	.byte	0x31
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
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x4
	.byte	0x2d
	.4byte	0x5a
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0xa9
	.4byte	0x73
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x5
	.byte	0x1e
	.4byte	0xbd
	.uleb128 0x6
	.byte	0x4
	.4byte	0xc3
	.uleb128 0x7
	.4byte	.LASF87
	.uleb128 0x8
	.byte	0x1c
	.byte	0x5
	.byte	0x94
	.4byte	0x125
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x5
	.byte	0x95
	.4byte	0x2c
	.byte	0
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x5
	.byte	0x96
	.4byte	0x2c
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x5
	.byte	0x97
	.4byte	0x2c
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x5
	.byte	0x98
	.4byte	0x2c
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x5
	.byte	0x99
	.4byte	0x2c
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x5
	.byte	0x9a
	.4byte	0x2c
	.byte	0x14
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x5
	.byte	0x9b
	.4byte	0x2c
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x5
	.byte	0x9c
	.4byte	0xc8
	.uleb128 0x8
	.byte	0x8
	.byte	0x6
	.byte	0x81
	.4byte	0x151
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x6
	.byte	0x82
	.4byte	0x9c
	.byte	0
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x6
	.byte	0x83
	.4byte	0x9c
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x6
	.byte	0x88
	.4byte	0x130
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF28
	.uleb128 0xa
	.4byte	0x9c
	.4byte	0x173
	.uleb128 0xb
	.4byte	0x85
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.byte	0x7
	.byte	0x26
	.4byte	0x188
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0x7
	.byte	0x26
	.4byte	0x1dd
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF36
	.byte	0x24
	.byte	0x7
	.byte	0x20
	.4byte	0x1dd
	.uleb128 0x9
	.4byte	.LASF30
	.byte	0x7
	.byte	0x21
	.4byte	0x163
	.byte	0
	.uleb128 0x9
	.4byte	.LASF31
	.byte	0x7
	.byte	0x22
	.4byte	0xa7
	.byte	0xc
	.uleb128 0xd
	.string	"end"
	.byte	0x7
	.byte	0x23
	.4byte	0xa7
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF32
	.byte	0x7
	.byte	0x24
	.4byte	0x151
	.byte	0x14
	.uleb128 0x9
	.4byte	.LASF33
	.byte	0x7
	.byte	0x25
	.4byte	0xb2
	.byte	0x1c
	.uleb128 0x9
	.4byte	.LASF34
	.byte	0x7
	.byte	0x26
	.4byte	0x173
	.byte	0x20
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x188
	.uleb128 0x3
	.4byte	.LASF35
	.byte	0x7
	.byte	0x27
	.4byte	0x188
	.uleb128 0xc
	.4byte	.LASF37
	.byte	0x4
	.byte	0x7
	.byte	0x2f
	.4byte	0x207
	.uleb128 0x9
	.4byte	.LASF38
	.byte	0x7
	.byte	0x2f
	.4byte	0x1dd
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF88
	.byte	0x1
	.byte	0x3b
	.4byte	0x9c
	.byte	0x3
	.4byte	0x23b
	.uleb128 0xf
	.4byte	.LASF33
	.byte	0x1
	.byte	0x3b
	.4byte	0x23b
	.uleb128 0x10
	.4byte	.LASF39
	.byte	0x1
	.byte	0x40
	.4byte	0x9c
	.uleb128 0x11
	.uleb128 0x10
	.4byte	.LASF40
	.byte	0x1
	.byte	0x41
	.4byte	0x25
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x241
	.uleb128 0x12
	.4byte	0x1e3
	.uleb128 0x13
	.4byte	.LASF41
	.byte	0x1
	.byte	0xa0
	.4byte	0x289
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x289
	.uleb128 0x14
	.string	"ptr"
	.byte	0x1
	.byte	0xa0
	.4byte	0x8c
	.4byte	.LLST0
	.uleb128 0x15
	.string	"p"
	.byte	0x1
	.byte	0xa2
	.4byte	0xa7
	.4byte	.LLST1
	.uleb128 0x16
	.4byte	.LASF33
	.byte	0x1
	.byte	0xa3
	.4byte	0x289
	.uleb128 0x1
	.byte	0x58
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1e3
	.uleb128 0x13
	.4byte	.LASF42
	.byte	0x1
	.byte	0x2c
	.4byte	0x8c
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3c6
	.uleb128 0x17
	.4byte	.LASF43
	.byte	0x1
	.byte	0x2c
	.4byte	0x8c
	.4byte	.LLST2
	.uleb128 0x14
	.string	"len"
	.byte	0x1
	.byte	0x2c
	.4byte	0x2c
	.4byte	.LLST3
	.uleb128 0x18
	.4byte	.LASF44
	.byte	0x1
	.byte	0x2e
	.4byte	0x9c
	.4byte	.LLST4
	.uleb128 0x18
	.4byte	.LASF45
	.byte	0x1
	.byte	0x2f
	.4byte	0x9c
	.4byte	.LLST5
	.uleb128 0x19
	.4byte	.LASF46
	.4byte	0x3d6
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$4847
	.uleb128 0x16
	.4byte	.LASF47
	.byte	0x1
	.byte	0x34
	.4byte	0x9c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x16
	.4byte	.LASF48
	.byte	0x1
	.byte	0x35
	.4byte	0x3db
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1a
	.4byte	.LVL11
	.4byte	0xc29
	.4byte	0x33c
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$4847
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL12
	.4byte	0xc29
	.4byte	0x36b
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x31
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$4847
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL13
	.4byte	0xc29
	.4byte	0x39a
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x32
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$4847
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL14
	.4byte	0xc29
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x33
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$4847
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC12
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	0x95
	.4byte	0x3d6
	.uleb128 0xb
	.4byte	0x85
	.byte	0x17
	.byte	0
	.uleb128 0x12
	.4byte	0x3c6
	.uleb128 0x6
	.byte	0x4
	.4byte	0x9c
	.uleb128 0x1d
	.4byte	.LASF49
	.byte	0x1
	.byte	0x47
	.4byte	0x15c
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x456
	.uleb128 0x17
	.4byte	.LASF33
	.byte	0x1
	.byte	0x47
	.4byte	0x23b
	.4byte	.LLST6
	.uleb128 0x1e
	.4byte	.LASF30
	.byte	0x1
	.byte	0x47
	.4byte	0x9c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1f
	.4byte	0x207
	.4byte	.LBB13
	.4byte	.LBE13-.LBB13
	.byte	0x1
	.byte	0x49
	.uleb128 0x20
	.4byte	0x217
	.4byte	.LLST7
	.uleb128 0x21
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.uleb128 0x22
	.4byte	0x222
	.4byte	.LLST8
	.uleb128 0x21
	.4byte	.LBB15
	.4byte	.LBE15-.LBB15
	.uleb128 0x22
	.4byte	0x22e
	.4byte	.LLST9
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF50
	.byte	0x1
	.byte	0x4f
	.4byte	0x8c
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x51f
	.uleb128 0x17
	.4byte	.LASF51
	.byte	0x1
	.byte	0x4f
	.4byte	0x2c
	.4byte	.LLST10
	.uleb128 0x1e
	.4byte	.LASF30
	.byte	0x1
	.byte	0x4f
	.4byte	0x9c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x15
	.string	"ret"
	.byte	0x1
	.byte	0x51
	.4byte	0x8c
	.4byte	.LLST11
	.uleb128 0x18
	.4byte	.LASF52
	.byte	0x1
	.byte	0x52
	.4byte	0x9c
	.4byte	.LLST12
	.uleb128 0x23
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x18
	.4byte	.LASF40
	.byte	0x1
	.byte	0x5f
	.4byte	0x25
	.4byte	.LLST13
	.uleb128 0x23
	.4byte	.Ldebug_ranges0+0x20
	.uleb128 0x18
	.4byte	.LASF33
	.byte	0x1
	.byte	0x61
	.4byte	0x289
	.4byte	.LLST14
	.uleb128 0x23
	.4byte	.Ldebug_ranges0+0x38
	.uleb128 0x15
	.string	"j"
	.byte	0x1
	.byte	0x6a
	.4byte	0x25
	.4byte	.LLST15
	.uleb128 0x1a
	.4byte	.LVL40
	.4byte	0xc34
	.4byte	0x4f7
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL41
	.4byte	0x28f
	.4byte	0x50b
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL45
	.4byte	0xc34
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF53
	.byte	0x1
	.byte	0x8b
	.4byte	0x8c
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x55f
	.uleb128 0x17
	.4byte	.LASF51
	.byte	0x1
	.byte	0x8b
	.4byte	0x2c
	.4byte	.LLST16
	.uleb128 0x1c
	.4byte	.LVL55
	.4byte	0x456
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x804
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LASF62
	.byte	0x1
	.byte	0xac
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x61f
	.uleb128 0x14
	.string	"ptr"
	.byte	0x1
	.byte	0xac
	.4byte	0x8c
	.4byte	.LLST17
	.uleb128 0x15
	.string	"p"
	.byte	0x1
	.byte	0xae
	.4byte	0xa7
	.4byte	.LLST18
	.uleb128 0x18
	.4byte	.LASF33
	.byte	0x1
	.byte	0xbc
	.4byte	0x289
	.4byte	.LLST19
	.uleb128 0x19
	.4byte	.LASF46
	.4byte	0x62f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$4902
	.uleb128 0x25
	.4byte	.LBB23
	.4byte	.LBE23-.LBB23
	.4byte	0x5cb
	.uleb128 0x18
	.4byte	.LASF54
	.byte	0x1
	.byte	0xb8
	.4byte	0x3db
	.4byte	.LLST20
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL62
	.4byte	0x246
	.4byte	0x5df
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL64
	.4byte	0xc29
	.4byte	0x60e
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xbd
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$4902
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC21
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL66
	.4byte	0xc3f
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	0x95
	.4byte	0x62f
	.uleb128 0xb
	.4byte	0x85
	.byte	0xe
	.byte	0
	.uleb128 0x12
	.4byte	0x61f
	.uleb128 0x1d
	.4byte	.LASF55
	.byte	0x1
	.byte	0xc1
	.4byte	0x8c
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x832
	.uleb128 0x14
	.string	"ptr"
	.byte	0x1
	.byte	0xc1
	.4byte	0x8c
	.4byte	.LLST21
	.uleb128 0x17
	.4byte	.LASF51
	.byte	0x1
	.byte	0xc1
	.4byte	0x2c
	.4byte	.LLST22
	.uleb128 0x1e
	.4byte	.LASF30
	.byte	0x1
	.byte	0xc1
	.4byte	0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x16
	.4byte	.LASF33
	.byte	0x1
	.byte	0xcc
	.4byte	0x289
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x19
	.4byte	.LASF46
	.4byte	0x842
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$4909
	.uleb128 0x18
	.4byte	.LASF56
	.byte	0x1
	.byte	0xd2
	.4byte	0x15c
	.4byte	.LLST23
	.uleb128 0x18
	.4byte	.LASF57
	.byte	0x1
	.byte	0xdf
	.4byte	0x8c
	.4byte	.LLST24
	.uleb128 0x26
	.4byte	0x207
	.4byte	.LBB24
	.4byte	.LBE24-.LBB24
	.byte	0x1
	.byte	0xd2
	.4byte	0x6f3
	.uleb128 0x27
	.4byte	0x217
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x21
	.4byte	.LBB25
	.4byte	.LBE25-.LBB25
	.uleb128 0x22
	.4byte	0x222
	.4byte	.LLST25
	.uleb128 0x21
	.4byte	.LBB26
	.4byte	.LBE26-.LBB26
	.uleb128 0x22
	.4byte	0x22e
	.4byte	.LLST26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.Ldebug_ranges0+0x50
	.4byte	0x720
	.uleb128 0x15
	.string	"r"
	.byte	0x1
	.byte	0xd7
	.4byte	0x8c
	.4byte	.LLST27
	.uleb128 0x1c
	.4byte	.LVL82
	.4byte	0xc4a
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LBB28
	.4byte	.LBE28-.LBB28
	.4byte	0x7aa
	.uleb128 0x18
	.4byte	.LASF58
	.byte	0x1
	.byte	0xe1
	.4byte	0x2c
	.4byte	.LLST28
	.uleb128 0x1a
	.4byte	.LVL86
	.4byte	0xc55
	.4byte	0x750
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL88
	.4byte	0xc29
	.4byte	0x77f
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xe2
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$4909
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC29
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL90
	.4byte	0xc60
	.4byte	0x799
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL91
	.4byte	0x55f
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL68
	.4byte	0x456
	.4byte	0x7c4
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL71
	.4byte	0x55f
	.4byte	0x7d8
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL74
	.4byte	0x246
	.4byte	0x7ec
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL76
	.4byte	0xc29
	.4byte	0x81b
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xce
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$4909
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC25
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL84
	.4byte	0x456
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	0x95
	.4byte	0x842
	.uleb128 0xb
	.4byte	0x85
	.byte	0x11
	.byte	0
	.uleb128 0x12
	.4byte	0x832
	.uleb128 0x1d
	.4byte	.LASF59
	.byte	0x1
	.byte	0x94
	.4byte	0x8c
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x89a
	.uleb128 0x14
	.string	"ptr"
	.byte	0x1
	.byte	0x94
	.4byte	0x8c
	.4byte	.LLST29
	.uleb128 0x1e
	.4byte	.LASF51
	.byte	0x1
	.byte	0x94
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1c
	.4byte	.LVL98
	.4byte	0x634
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
	.uleb128 0x3
	.byte	0xa
	.2byte	0x804
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF60
	.byte	0x1
	.byte	0xea
	.4byte	0x2c
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x902
	.uleb128 0x17
	.4byte	.LASF30
	.byte	0x1
	.byte	0xea
	.4byte	0x9c
	.4byte	.LLST30
	.uleb128 0x15
	.string	"ret"
	.byte	0x1
	.byte	0xec
	.4byte	0x2c
	.4byte	.LLST31
	.uleb128 0x16
	.4byte	.LASF33
	.byte	0x1
	.byte	0xed
	.4byte	0x289
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1a
	.4byte	.LVL104
	.4byte	0x3e1
	.4byte	0x8f8
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL105
	.4byte	0xc69
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF61
	.byte	0x1
	.byte	0xf6
	.4byte	0x2c
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x96a
	.uleb128 0x17
	.4byte	.LASF30
	.byte	0x1
	.byte	0xf6
	.4byte	0x9c
	.4byte	.LLST32
	.uleb128 0x15
	.string	"ret"
	.byte	0x1
	.byte	0xf8
	.4byte	0x2c
	.4byte	.LLST33
	.uleb128 0x16
	.4byte	.LASF33
	.byte	0x1
	.byte	0xf9
	.4byte	0x289
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1a
	.4byte	.LVL113
	.4byte	0x3e1
	.4byte	0x960
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL114
	.4byte	0xc74
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x109
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa0c
	.uleb128 0x2b
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x109
	.4byte	0xa0c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2b
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x109
	.4byte	0x9c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2c
	.4byte	.LASF33
	.byte	0x1
	.2byte	0x10d
	.4byte	0x289
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x25
	.4byte	.LBB30
	.4byte	.LBE30-.LBB30
	.4byte	0x9d7
	.uleb128 0x2c
	.4byte	.LASF65
	.byte	0x1
	.2byte	0x110
	.4byte	0x125
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1c
	.4byte	.LVL122
	.4byte	0xc7f
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL119
	.4byte	0xc8a
	.4byte	0x9f5
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x4c
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL121
	.4byte	0x3e1
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x125
	.uleb128 0x2d
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x102
	.4byte	0x2c
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa62
	.uleb128 0x2e
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x102
	.4byte	0x9c
	.4byte	.LLST34
	.uleb128 0x2c
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x104
	.4byte	0x125
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1c
	.4byte	.LVL125
	.4byte	0x96a
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x11f
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb61
	.uleb128 0x2b
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x11f
	.4byte	0x9c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2c
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x121
	.4byte	0x125
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2c
	.4byte	.LASF33
	.byte	0x1
	.2byte	0x123
	.4byte	0x289
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1a
	.4byte	.LVL128
	.4byte	0xc93
	.4byte	0xac0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC35
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL130
	.4byte	0x3e1
	.4byte	0xada
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL131
	.4byte	0xc7f
	.4byte	0xaee
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL132
	.4byte	0xc93
	.4byte	0xb05
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC38
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL133
	.4byte	0xc93
	.4byte	0xb1c
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC40
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL135
	.4byte	0xc9e
	.4byte	0xb33
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC42
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL136
	.4byte	0x96a
	.4byte	0xb4d
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL137
	.4byte	0xc93
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC44
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x135
	.4byte	0x15c
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc1e
	.uleb128 0x2e
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x135
	.4byte	0x9c
	.4byte	.LLST35
	.uleb128 0x2b
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x135
	.4byte	0x15c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2c
	.4byte	.LASF70
	.byte	0x1
	.2byte	0x137
	.4byte	0x15c
	.uleb128 0x5
	.byte	0x76
	.sleb128 0
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.uleb128 0x2f
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x138
	.4byte	0x15c
	.4byte	.LLST36
	.uleb128 0x2c
	.4byte	.LASF33
	.byte	0x1
	.2byte	0x13a
	.4byte	0x289
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x30
	.4byte	0x207
	.4byte	.LBB31
	.4byte	.LBE31-.LBB31
	.byte	0x1
	.2byte	0x13d
	.4byte	0xc0d
	.uleb128 0x20
	.4byte	0x217
	.4byte	.LLST37
	.uleb128 0x21
	.4byte	.LBB32
	.4byte	.LBE32-.LBB32
	.uleb128 0x22
	.4byte	0x222
	.4byte	.LLST38
	.uleb128 0x21
	.4byte	.LBB33
	.4byte	.LBE33-.LBB33
	.uleb128 0x22
	.4byte	0x22e
	.4byte	.LLST39
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL149
	.4byte	0xcad
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LASF89
	.byte	0x7
	.byte	0x2f
	.4byte	0x1ee
	.uleb128 0x32
	.4byte	.LASF72
	.4byte	.LASF72
	.byte	0x8
	.byte	0x29
	.uleb128 0x32
	.4byte	.LASF73
	.4byte	.LASF73
	.byte	0x5
	.byte	0x29
	.uleb128 0x32
	.4byte	.LASF74
	.4byte	.LASF74
	.byte	0x5
	.byte	0x32
	.uleb128 0x32
	.4byte	.LASF75
	.4byte	.LASF75
	.byte	0x5
	.byte	0x3e
	.uleb128 0x32
	.4byte	.LASF76
	.4byte	.LASF76
	.byte	0x5
	.byte	0x49
	.uleb128 0x33
	.4byte	.LASF80
	.4byte	.LASF80
	.uleb128 0x32
	.4byte	.LASF77
	.4byte	.LASF77
	.byte	0x5
	.byte	0x85
	.uleb128 0x32
	.4byte	.LASF78
	.4byte	.LASF78
	.byte	0x5
	.byte	0x91
	.uleb128 0x32
	.4byte	.LASF79
	.4byte	.LASF79
	.byte	0x5
	.byte	0xa5
	.uleb128 0x33
	.4byte	.LASF81
	.4byte	.LASF81
	.uleb128 0x32
	.4byte	.LASF82
	.4byte	.LASF82
	.byte	0x9
	.byte	0xb2
	.uleb128 0x34
	.4byte	.LASF90
	.4byte	.LASF91
	.byte	0xa
	.byte	0
	.4byte	.LASF90
	.uleb128 0x32
	.4byte	.LASF83
	.4byte	.LASF83
	.byte	0x5
	.byte	0x77
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
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x6e
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
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL6
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL6
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL7
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL16
	.4byte	.LFE12
	.2byte	0x2
	.byte	0x73
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL9
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL8
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL16
	.4byte	.LFE12
	.2byte	0x2
	.byte	0x73
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL10
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL15
	.4byte	.LVL16
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
	.4byte	.LVL16
	.4byte	.LFE12
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
.LLST6:
	.4byte	.LVL17
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL27
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL18
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL27
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL19
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL19
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL28
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x3
	.byte	0x72
	.sleb128 -3
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x3
	.byte	0x77
	.sleb128 -4
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL29
	.4byte	.LVL32
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL40
	.4byte	.LVL41-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL50
	.4byte	.LVL52
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL52
	.4byte	.LFE15
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL34
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL52
	.4byte	.LFE15
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL33
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL52
	.4byte	.LFE15
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL35
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL54
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL56
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL57
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x3
	.byte	0x72
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL61
	.4byte	.LFE19
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL58
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x3
	.byte	0x72
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL61
	.4byte	.LVL62-1
	.2byte	0x7
	.byte	0x78
	.sleb128 1074397184
	.byte	0x9f
	.4byte	.LVL62-1
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL64
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x3
	.byte	0x72
	.sleb128 4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL67
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL69
	.4byte	.LVL70
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL70
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
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL92
	.4byte	.LVL93
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL93
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL94
	.4byte	.LVL95
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL95
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL96
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL67
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL85
	.4byte	.LVL93
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL93
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL95
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL81
	.4byte	.LVL82-1
	.2byte	0x6
	.byte	0x79
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x29
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL85
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL95
	.4byte	.LFE20
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL77
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL77
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL82
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL93
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL88
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL89
	.4byte	.LVL90-1
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL97
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL99
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL100
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL108
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL101
	.4byte	.LVL103
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL103
	.4byte	.LFE21
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL109
	.4byte	.LVL117
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL117
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL110
	.4byte	.LVL112
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL112
	.4byte	.LFE22
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL124
	.4byte	.LVL126
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL126
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL138
	.4byte	.LVL140
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL140
	.4byte	.LFE26
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL139
	.4byte	.LVL142
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL142
	.4byte	.LVL150
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL151
	.4byte	.LFE26
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL143
	.4byte	.LVL148
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL144
	.4byte	.LVL147
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL144
	.4byte	.LVL147
	.2byte	0x1
	.byte	0x58
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
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB16
	.4byte	.LBE16
	.4byte	.LBB21
	.4byte	.LBE21
	.4byte	.LBB22
	.4byte	.LBE22
	.4byte	0
	.4byte	0
	.4byte	.LBB17
	.4byte	.LBE17
	.4byte	.LBB20
	.4byte	.LBE20
	.4byte	0
	.4byte	0
	.4byte	.LBB18
	.4byte	.LBE18
	.4byte	.LBB19
	.4byte	.LBE19
	.4byte	0
	.4byte	0
	.4byte	.LBB27
	.4byte	.LBE27
	.4byte	.LBB29
	.4byte	.LBE29
	.4byte	0
	.4byte	0
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF50:
	.string	"heap_caps_malloc"
.LASF69:
	.string	"print_errors"
.LASF71:
	.string	"valid"
.LASF43:
	.string	"addr"
.LASF35:
	.string	"heap_t"
.LASF74:
	.string	"multi_heap_free"
.LASF34:
	.string	"next"
.LASF59:
	.string	"heap_caps_realloc_default"
.LASF5:
	.string	"size_t"
.LASF11:
	.string	"sizetype"
.LASF89:
	.string	"registered_heaps"
.LASF42:
	.string	"dram_alloc_to_iram_addr"
.LASF47:
	.string	"istart"
.LASF6:
	.string	"__uint32_t"
.LASF58:
	.string	"old_size"
.LASF80:
	.string	"memcpy"
.LASF66:
	.string	"heap_caps_get_largest_free_block"
.LASF19:
	.string	"largest_free_block"
.LASF79:
	.string	"multi_heap_get_info"
.LASF29:
	.string	"sle_next"
.LASF9:
	.string	"__intptr_t"
.LASF77:
	.string	"multi_heap_free_size"
.LASF33:
	.string	"heap"
.LASF85:
	.string	"C:/esp/esp-idf/components/heap/heap_caps.c"
.LASF15:
	.string	"intptr_t"
.LASF18:
	.string	"total_allocated_bytes"
.LASF7:
	.string	"long long int"
.LASF48:
	.string	"iptr"
.LASF62:
	.string	"heap_caps_free"
.LASF88:
	.string	"get_all_caps"
.LASF81:
	.string	"memset"
.LASF10:
	.string	"long int"
.LASF44:
	.string	"dstart"
.LASF63:
	.string	"heap_caps_get_info"
.LASF82:
	.string	"printf"
.LASF49:
	.string	"heap_caps_match"
.LASF4:
	.string	"short int"
.LASF67:
	.string	"heap_caps_print_heap_info"
.LASF3:
	.string	"unsigned char"
.LASF30:
	.string	"caps"
.LASF61:
	.string	"heap_caps_get_minimum_free_size"
.LASF75:
	.string	"multi_heap_realloc"
.LASF83:
	.string	"multi_heap_check"
.LASF46:
	.string	"__func__"
.LASF25:
	.string	"owner"
.LASF17:
	.string	"total_free_bytes"
.LASF78:
	.string	"multi_heap_minimum_free_size"
.LASF84:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF68:
	.string	"heap_caps_check_integrity"
.LASF2:
	.string	"signed char"
.LASF8:
	.string	"long long unsigned int"
.LASF76:
	.string	"multi_heap_get_allocated_size"
.LASF86:
	.string	"C:\\\\esp\\\\ArkPOS2-esp\\\\build\\\\heap"
.LASF27:
	.string	"portMUX_TYPE"
.LASF55:
	.string	"heap_caps_realloc"
.LASF0:
	.string	"unsigned int"
.LASF39:
	.string	"all_caps"
.LASF37:
	.string	"registered_heap_ll"
.LASF54:
	.string	"dramAddrPtr"
.LASF90:
	.string	"puts"
.LASF38:
	.string	"slh_first"
.LASF31:
	.string	"start"
.LASF53:
	.string	"heap_caps_malloc_default"
.LASF51:
	.string	"size"
.LASF36:
	.string	"heap_t_"
.LASF13:
	.string	"char"
.LASF20:
	.string	"minimum_free_bytes"
.LASF45:
	.string	"dend"
.LASF65:
	.string	"hinfo"
.LASF1:
	.string	"short unsigned int"
.LASF28:
	.string	"_Bool"
.LASF24:
	.string	"multi_heap_info_t"
.LASF73:
	.string	"multi_heap_malloc"
.LASF16:
	.string	"multi_heap_handle_t"
.LASF14:
	.string	"uint32_t"
.LASF32:
	.string	"heap_mux"
.LASF12:
	.string	"long unsigned int"
.LASF21:
	.string	"allocated_blocks"
.LASF23:
	.string	"total_blocks"
.LASF26:
	.string	"count"
.LASF64:
	.string	"info"
.LASF57:
	.string	"new_p"
.LASF41:
	.string	"find_containing_heap"
.LASF52:
	.string	"remCaps"
.LASF91:
	.string	"__builtin_puts"
.LASF72:
	.string	"__assert_func"
.LASF70:
	.string	"all_heaps"
.LASF56:
	.string	"compatible_caps"
.LASF40:
	.string	"prio"
.LASF87:
	.string	"multi_heap_info"
.LASF60:
	.string	"heap_caps_get_free_size"
.LASF22:
	.string	"free_blocks"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-61-gab8375a) 5.2.0"
