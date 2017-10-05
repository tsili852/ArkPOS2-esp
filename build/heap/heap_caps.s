	.file	"heap_caps.c"
	.text
.Ltext0:
	.section	.iram1,"ax",@progbits
	.literal_position
	.literal .LC0, registered_heaps
	.align	4
	.type	find_containing_heap, @function
find_containing_heap:
.LFB20:
	.file 1 "C:/esp/esp-idf/components/heap/heap_caps.c"
	.loc 1 199 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LVL1:
	.loc 1 202 0
	l32r	a8, .LC0
	l32i.n	a8, a8, 0
.LVL2:
	j	.L2
.L5:
	.loc 1 203 0
	l32i.n	a9, a8, 28
	beqz.n	a9, .L3
	.loc 1 203 0 discriminator 1
	l32i.n	a9, a8, 12
	blt	a2, a9, .L3
	.loc 1 203 0 is_stmt 0 discriminator 2
	l32i.n	a9, a8, 16
	blt	a2, a9, .L6
.L3:
	.loc 1 202 0 is_stmt 1 discriminator 2
	l32i.n	a8, a8, 32
.LVL3:
.L2:
	.loc 1 202 0 is_stmt 0 discriminator 1
	bnez.n	a8, .L5
	.loc 1 207 0 is_stmt 1
	movi.n	a2, 0
.LVL4:
	retw.n
.LVL5:
.L6:
	.loc 1 204 0
	mov.n	a2, a8
.LVL6:
	.loc 1 208 0
	retw.n
.LFE20:
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
	.literal .LC4, __func__$4854
	.literal .LC6, .LC5
	.literal .LC7, 1073741820
	.literal .LC9, .LC8
	.literal .LC11, .LC10
	.literal .LC13, .LC12
	.literal .LC14, -2146828292
	.align	4
	.type	dram_alloc_to_iram_addr, @function
dram_alloc_to_iram_addr:
.LFB13:
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
.LFE13:
	.size	dram_alloc_to_iram_addr, .-dram_alloc_to_iram_addr
	.section	.text.heap_caps_match,"ax",@progbits
	.align	4
	.global	heap_caps_match
	.type	heap_caps_match, @function
heap_caps_match:
.LFB15:
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
.LFE15:
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
.LFB16:
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
.LFE16:
	.size	heap_caps_malloc, .-heap_caps_malloc
	.section	.text.heap_caps_malloc_extmem_enable,"ax",@progbits
	.literal_position
	.literal .LC18, malloc_alwaysinternal_limit
	.align	4
	.global	heap_caps_malloc_extmem_enable
	.type	heap_caps_malloc_extmem_enable, @function
heap_caps_malloc_extmem_enable:
.LFB17:
	.loc 1 142 0
.LVL54:
	entry	sp, 32
.LCFI4:
	.loc 1 143 0
	l32r	a8, .LC18
	s32i.n	a2, a8, 0
	retw.n
.LFE17:
	.size	heap_caps_malloc_extmem_enable, .-heap_caps_malloc_extmem_enable
	.section	.iram1
	.literal_position
	.literal .LC19, malloc_alwaysinternal_limit
	.literal .LC20, 6144
	.literal .LC21, 5120
	.literal .LC22, 4096
	.align	4
	.global	heap_caps_malloc_default
	.type	heap_caps_malloc_default, @function
heap_caps_malloc_default:
.LFB18:
	.loc 1 150 0
.LVL55:
	entry	sp, 32
.LCFI5:
	.loc 1 151 0
	l32r	a8, .LC19
	l32i.n	a8, a8, 0
	bnei	a8, -1, .L36
	.loc 1 152 0
	l32r	a11, .LC20
	mov.n	a10, a2
	call8	heap_caps_malloc
.LVL56:
	mov.n	a2, a10
.LVL57:
	retw.n
.LVL58:
.L36:
.LBB23:
	.loc 1 155 0
	bltu	a8, a2, .L38
	.loc 1 156 0
	l32r	a11, .LC20
	mov.n	a10, a2
	call8	heap_caps_malloc
.LVL59:
	j	.L39
.LVL60:
.L38:
	.loc 1 158 0
	l32r	a11, .LC21
	mov.n	a10, a2
	call8	heap_caps_malloc
.LVL61:
.L39:
	.loc 1 160 0
	bnez.n	a10, .L40
	.loc 1 162 0
	l32r	a11, .LC22
	mov.n	a10, a2
.LVL62:
	call8	heap_caps_malloc
.LVL63:
	mov.n	a2, a10
.LVL64:
	retw.n
.LVL65:
.L40:
	mov.n	a2, a10
.LVL66:
.LBE23:
	.loc 1 166 0
	retw.n
.LFE18:
	.size	heap_caps_malloc_default, .-heap_caps_malloc_default
	.section	.rodata.str1.4
	.align	4
.LC25:
	.string	"heap != NULL && \"free() target pointer is outside heap areas\""
	.section	.iram1
	.literal_position
	.literal .LC23, -1074397184
	.literal .LC24, 131068
	.literal .LC26, .LC25
	.literal .LC27, __func__$4915
	.literal .LC28, .LC5
	.align	4
	.global	heap_caps_free
	.type	heap_caps_free, @function
heap_caps_free:
.LFB21:
	.loc 1 211 0
.LVL67:
	entry	sp, 32
.LCFI6:
.LVL68:
	.loc 1 214 0
	beqz.n	a2, .L41
	.loc 1 218 0
	l32r	a8, .LC23
	add.n	a8, a2, a8
	l32r	a9, .LC24
	bltu	a9, a8, .L43
.LVL69:
.LBB24:
	.loc 1 223 0
	addi	a2, a2, -4
.LVL70:
	l32i.n	a2, a2, 0
.LVL71:
.L43:
.LBE24:
	.loc 1 226 0
	mov.n	a10, a2
	call8	find_containing_heap
.LVL72:
	.loc 1 227 0
	bnez.n	a10, .L44
	.loc 1 227 0 is_stmt 0 discriminator 1
	l32r	a13, .LC26
	l32r	a12, .LC27
	movi	a11, 0xe3
	l32r	a10, .LC28
.LVL73:
	call8	__assert_func
.LVL74:
.L44:
	.loc 1 228 0 is_stmt 1
	mov.n	a11, a2
	l32i.n	a10, a10, 28
.LVL75:
	call8	multi_heap_free
.LVL76:
.L41:
	retw.n
.LFE21:
	.size	heap_caps_free, .-heap_caps_free
	.section	.rodata.str1.4
	.align	4
.LC29:
	.string	"heap != NULL && \"realloc() pointer is outside heap areas\""
	.align	4
.LC33:
	.string	"old_size > 0"
	.section	.iram1
	.literal_position
	.literal .LC30, .LC29
	.literal .LC31, __func__$4922
	.literal .LC32, .LC5
	.literal .LC34, .LC33
	.align	4
	.global	heap_caps_realloc
	.type	heap_caps_realloc, @function
heap_caps_realloc:
.LFB22:
	.loc 1 232 0
.LVL77:
	entry	sp, 32
.LCFI7:
	.loc 1 233 0
	bnez.n	a2, .L46
	.loc 1 234 0
	mov.n	a11, a4
	mov.n	a10, a3
	call8	heap_caps_malloc
.LVL78:
	mov.n	a2, a10
.LVL79:
	retw.n
.LVL80:
.L46:
	.loc 1 237 0
	bnez.n	a3, .L48
	.loc 1 238 0
	mov.n	a10, a2
	call8	heap_caps_free
.LVL81:
	.loc 1 239 0
	movi.n	a2, 0
.LVL82:
	retw.n
.LVL83:
.L48:
	.loc 1 242 0
	mov.n	a10, a2
	call8	find_containing_heap
.LVL84:
	mov.n	a5, a10
.LVL85:
	.loc 1 244 0
	bnez.n	a10, .L49
	.loc 1 244 0 is_stmt 0 discriminator 1
	l32r	a13, .LC30
	l32r	a12, .LC31
	movi	a11, 0xf4
	l32r	a10, .LC32
	call8	__assert_func
.LVL86:
.L49:
.LBB25:
.LBB26:
	.loc 1 61 0 is_stmt 1
	l32i.n	a10, a10, 28
	beqz.n	a10, .L55
	movi.n	a8, 0
	mov.n	a9, a8
	j	.L51
.LVL87:
.L52:
.LBB27:
	.loc 1 66 0
	addx4	a11, a8, a5
	l32i.n	a11, a11, 0
	or	a9, a9, a11
.LVL88:
	.loc 1 65 0
	addi.n	a8, a8, 1
.LVL89:
.L51:
	blti	a8, 3, .L52
	j	.L50
.LVL90:
.L55:
.LBE27:
	.loc 1 62 0
	movi.n	a9, 0
.L50:
.LBE26:
.LBE25:
	.loc 1 248 0
	and	a9, a4, a9
.LVL91:
	.loc 1 250 0
	bne	a4, a9, .L53
.LBB28:
	.loc 1 253 0
	mov.n	a12, a3
	mov.n	a11, a2
	call8	multi_heap_realloc
.LVL92:
	.loc 1 254 0
	bnez.n	a10, .L56
.LVL93:
.L53:
.LBE28:
	.loc 1 261 0
	mov.n	a11, a4
	mov.n	a10, a3
	call8	heap_caps_malloc
.LVL94:
	mov.n	a3, a10
.LVL95:
	.loc 1 262 0
	beqz.n	a10, .L57
.LBB29:
	.loc 1 263 0
	mov.n	a11, a2
	l32i.n	a10, a5, 28
	call8	multi_heap_get_allocated_size
.LVL96:
	.loc 1 264 0
	bnez.n	a10, .L54
	.loc 1 264 0 is_stmt 0 discriminator 1
	l32r	a13, .LC34
	l32r	a12, .LC31
	movi	a11, 0x108
	l32r	a10, .LC32
.LVL97:
	call8	__assert_func
.LVL98:
.L54:
	.loc 1 265 0 is_stmt 1
	mov.n	a12, a10
	mov.n	a11, a2
	mov.n	a10, a3
.LVL99:
	call8	memcpy
.LVL100:
	.loc 1 266 0
	mov.n	a10, a2
	call8	heap_caps_free
.LVL101:
	.loc 1 267 0
	mov.n	a2, a3
.LVL102:
	retw.n
.LVL103:
.L56:
.LBE29:
.LBB30:
	.loc 1 255 0
	mov.n	a2, a10
.LVL104:
	retw.n
.LVL105:
.L57:
.LBE30:
	.loc 1 269 0
	movi.n	a2, 0
.LVL106:
	.loc 1 270 0
	retw.n
.LFE22:
	.size	heap_caps_realloc, .-heap_caps_realloc
	.literal_position
	.literal .LC35, malloc_alwaysinternal_limit
	.literal .LC36, 6144
	.literal .LC37, 5120
	.literal .LC38, 4096
	.align	4
	.global	heap_caps_realloc_default
	.type	heap_caps_realloc_default, @function
heap_caps_realloc_default:
.LFB19:
	.loc 1 173 0
.LVL107:
	entry	sp, 32
.LCFI8:
	.loc 1 174 0
	l32r	a8, .LC35
	l32i.n	a8, a8, 0
	bnei	a8, -1, .L59
	.loc 1 175 0
	l32r	a12, .LC36
	mov.n	a11, a3
	mov.n	a10, a2
	call8	heap_caps_realloc
.LVL108:
	mov.n	a2, a10
.LVL109:
	retw.n
.LVL110:
.L59:
.LBB31:
	.loc 1 178 0
	bltu	a8, a3, .L61
	.loc 1 179 0
	l32r	a12, .LC36
	mov.n	a11, a3
	mov.n	a10, a2
	call8	heap_caps_realloc
.LVL111:
	j	.L62
.LVL112:
.L61:
	.loc 1 181 0
	l32r	a12, .LC37
	mov.n	a11, a3
	mov.n	a10, a2
	call8	heap_caps_realloc
.LVL113:
.L62:
	.loc 1 183 0
	movi.n	a8, 1
	movi.n	a9, 0
	mov.n	a11, a9
	moveqz	a11, a8, a10
	.loc 1 183 0
	moveqz	a8, a9, a3
	.loc 1 183 0
	bnone	a8, a11, .L63
	.loc 1 185 0
	l32r	a12, .LC38
	mov.n	a11, a3
	mov.n	a10, a2
.LVL114:
	call8	heap_caps_realloc
.LVL115:
	mov.n	a2, a10
.LVL116:
	retw.n
.LVL117:
.L63:
	mov.n	a2, a10
.LVL118:
.LBE31:
	.loc 1 189 0
	retw.n
.LFE19:
	.size	heap_caps_realloc_default, .-heap_caps_realloc_default
	.section	.text.heap_caps_get_free_size,"ax",@progbits
	.literal_position
	.literal .LC39, registered_heaps
	.align	4
	.global	heap_caps_get_free_size
	.type	heap_caps_get_free_size, @function
heap_caps_get_free_size:
.LFB23:
	.loc 1 273 0
.LVL119:
	entry	sp, 32
.LCFI9:
.LVL120:
	.loc 1 276 0
	l32r	a3, .LC39
	l32i.n	a3, a3, 0
.LVL121:
	.loc 1 274 0
	movi.n	a4, 0
	.loc 1 276 0
	j	.L65
.LVL122:
.L67:
	.loc 1 277 0
	mov.n	a11, a2
	mov.n	a10, a3
	call8	heap_caps_match
.LVL123:
	beqz.n	a10, .L66
	.loc 1 278 0
	l32i.n	a10, a3, 28
	call8	multi_heap_free_size
.LVL124:
	add.n	a4, a4, a10
.LVL125:
.L66:
	.loc 1 276 0 discriminator 2
	l32i.n	a3, a3, 32
.LVL126:
.L65:
	.loc 1 276 0 is_stmt 0 discriminator 1
	bnez.n	a3, .L67
	.loc 1 282 0 is_stmt 1
	mov.n	a2, a4
.LVL127:
	retw.n
.LFE23:
	.size	heap_caps_get_free_size, .-heap_caps_get_free_size
	.section	.text.heap_caps_get_minimum_free_size,"ax",@progbits
	.literal_position
	.literal .LC40, registered_heaps
	.align	4
	.global	heap_caps_get_minimum_free_size
	.type	heap_caps_get_minimum_free_size, @function
heap_caps_get_minimum_free_size:
.LFB24:
	.loc 1 285 0
.LVL128:
	entry	sp, 32
.LCFI10:
.LVL129:
	.loc 1 288 0
	l32r	a3, .LC40
	l32i.n	a3, a3, 0
.LVL130:
	.loc 1 286 0
	movi.n	a4, 0
	.loc 1 288 0
	j	.L69
.LVL131:
.L71:
	.loc 1 289 0
	mov.n	a11, a2
	mov.n	a10, a3
	call8	heap_caps_match
.LVL132:
	beqz.n	a10, .L70
	.loc 1 290 0
	l32i.n	a10, a3, 28
	call8	multi_heap_minimum_free_size
.LVL133:
	add.n	a4, a4, a10
.LVL134:
.L70:
	.loc 1 288 0 discriminator 2
	l32i.n	a3, a3, 32
.LVL135:
.L69:
	.loc 1 288 0 is_stmt 0 discriminator 1
	bnez.n	a3, .L71
	.loc 1 294 0 is_stmt 1
	mov.n	a2, a4
.LVL136:
	retw.n
.LFE24:
	.size	heap_caps_get_minimum_free_size, .-heap_caps_get_minimum_free_size
	.section	.text.heap_caps_get_info,"ax",@progbits
	.literal_position
	.literal .LC41, registered_heaps
	.align	4
	.global	heap_caps_get_info
	.type	heap_caps_get_info, @function
heap_caps_get_info:
.LFB26:
	.loc 1 304 0
.LVL137:
	entry	sp, 64
.LCFI11:
	.loc 1 305 0
	movi.n	a12, 0x1c
	movi.n	a11, 0
	mov.n	a10, a2
	call8	memset
.LVL138:
	.loc 1 308 0
	l32r	a4, .LC41
	l32i.n	a4, a4, 0
.LVL139:
	j	.L73
.L75:
	.loc 1 309 0
	mov.n	a11, a3
	mov.n	a10, a4
	call8	heap_caps_match
.LVL140:
	beqz.n	a10, .L74
.LBB32:
	.loc 1 311 0
	mov.n	a11, sp
	l32i.n	a10, a4, 28
	call8	multi_heap_get_info
.LVL141:
	.loc 1 313 0
	l32i.n	a9, a2, 0
	l32i.n	a8, sp, 0
	add.n	a8, a9, a8
	s32i.n	a8, a2, 0
	.loc 1 314 0
	l32i.n	a9, a2, 4
	l32i.n	a8, sp, 4
	add.n	a8, a9, a8
	s32i.n	a8, a2, 4
	.loc 1 315 0
	l32i.n	a8, a2, 8
	l32i.n	a9, sp, 8
	maxu	a8, a9, a8
	s32i.n	a8, a2, 8
	.loc 1 317 0
	l32i.n	a9, a2, 12
	l32i.n	a8, sp, 12
	add.n	a8, a9, a8
	s32i.n	a8, a2, 12
	.loc 1 318 0
	l32i.n	a9, a2, 16
	l32i.n	a8, sp, 16
	add.n	a8, a9, a8
	s32i.n	a8, a2, 16
	.loc 1 319 0
	l32i.n	a9, a2, 20
	l32i.n	a8, sp, 20
	add.n	a8, a9, a8
	s32i.n	a8, a2, 20
	.loc 1 320 0
	l32i.n	a9, a2, 24
	l32i.n	a8, sp, 24
	add.n	a8, a9, a8
	s32i.n	a8, a2, 24
.L74:
.LBE32:
	.loc 1 308 0 discriminator 2
	l32i.n	a4, a4, 32
.LVL142:
.L73:
	.loc 1 308 0 is_stmt 0 discriminator 1
	bnez.n	a4, .L75
	.loc 1 323 0 is_stmt 1
	retw.n
.LFE26:
	.size	heap_caps_get_info, .-heap_caps_get_info
	.section	.text.heap_caps_get_largest_free_block,"ax",@progbits
	.align	4
	.global	heap_caps_get_largest_free_block
	.type	heap_caps_get_largest_free_block, @function
heap_caps_get_largest_free_block:
.LFB25:
	.loc 1 297 0
.LVL143:
	entry	sp, 64
.LCFI12:
	.loc 1 299 0
	mov.n	a11, a2
	mov.n	a10, sp
	call8	heap_caps_get_info
.LVL144:
	.loc 1 301 0
	l32i.n	a2, sp, 8
.LVL145:
	retw.n
.LFE25:
	.size	heap_caps_get_largest_free_block, .-heap_caps_get_largest_free_block
	.section	.rodata.str1.4
	.align	4
.LC42:
	.string	"Heap summary for capabilities 0x%08X:\n"
	.align	4
.LC45:
	.string	"  At 0x%08x len %d free %d allocated %d min_free %d\n"
	.align	4
.LC47:
	.string	"    largest_free_block %d alloc_blocks %d free_blocks %d total_blocks %d\n"
	.align	4
.LC49:
	.string	"  Totals:"
	.align	4
.LC51:
	.string	"    free %d allocated %d min_free %d largest_free_block %d\n"
	.section	.text.heap_caps_print_heap_info,"ax",@progbits
	.literal_position
	.literal .LC43, .LC42
	.literal .LC44, registered_heaps
	.literal .LC46, .LC45
	.literal .LC48, .LC47
	.literal .LC50, .LC49
	.literal .LC52, .LC51
	.align	4
	.global	heap_caps_print_heap_info
	.type	heap_caps_print_heap_info, @function
heap_caps_print_heap_info:
.LFB27:
	.loc 1 326 0
.LVL146:
	entry	sp, 64
.LCFI13:
	.loc 1 328 0
	mov.n	a11, a2
	l32r	a10, .LC43
	call8	printf
.LVL147:
	.loc 1 330 0
	l32r	a3, .LC44
	l32i.n	a3, a3, 0
.LVL148:
	j	.L78
.L80:
	.loc 1 331 0
	mov.n	a11, a2
	mov.n	a10, a3
	call8	heap_caps_match
.LVL149:
	beqz.n	a10, .L79
	.loc 1 332 0
	mov.n	a11, sp
	l32i.n	a10, a3, 28
	call8	multi_heap_get_info
.LVL150:
	.loc 1 335 0
	l32i.n	a12, a3, 16
	l32i.n	a11, a3, 12
	.loc 1 334 0
	l32i.n	a15, sp, 12
	l32i.n	a14, sp, 4
	l32i.n	a13, sp, 0
	sub	a12, a12, a11
	l32r	a10, .LC46
	call8	printf
.LVL151:
	.loc 1 336 0
	l32i.n	a14, sp, 24
	l32i.n	a13, sp, 20
	l32i.n	a12, sp, 16
	l32i.n	a11, sp, 8
	l32r	a10, .LC48
	call8	printf
.LVL152:
.L79:
	.loc 1 330 0 discriminator 2
	l32i.n	a3, a3, 32
.LVL153:
.L78:
	.loc 1 330 0 is_stmt 0 discriminator 1
	bnez.n	a3, .L80
	.loc 1 341 0 is_stmt 1
	l32r	a10, .LC50
	call8	puts
.LVL154:
	.loc 1 342 0
	mov.n	a11, a2
	mov.n	a10, sp
	call8	heap_caps_get_info
.LVL155:
	.loc 1 344 0
	l32i.n	a14, sp, 8
	l32i.n	a13, sp, 12
	l32i.n	a12, sp, 4
	l32i.n	a11, sp, 0
	l32r	a10, .LC52
	call8	printf
.LVL156:
	retw.n
.LFE27:
	.size	heap_caps_print_heap_info, .-heap_caps_print_heap_info
	.section	.text.heap_caps_check_integrity,"ax",@progbits
	.literal_position
	.literal .LC53, -2147483648
	.literal .LC54, registered_heaps
	.align	4
	.global	heap_caps_check_integrity
	.type	heap_caps_check_integrity, @function
heap_caps_check_integrity:
.LFB28:
	.loc 1 348 0
.LVL157:
	entry	sp, 32
.LCFI14:
	mov.n	a5, a2
	extui	a3, a3, 0, 8
	.loc 1 349 0
	l32r	a6, .LC53
	and	a6, a2, a6
.LVL158:
	.loc 1 353 0
	l32r	a2, .LC54
.LVL159:
	l32i.n	a4, a2, 0
.LVL160:
	.loc 1 350 0
	movi.n	a2, 1
	.loc 1 353 0
	j	.L82
.LVL161:
.L89:
	.loc 1 354 0
	l32i.n	a10, a4, 28
	beqz.n	a10, .L83
	.loc 1 355 0
	bnez.n	a6, .L84
.LVL162:
.LBB33:
.LBB34:
	.loc 1 61 0
	beqz.n	a10, .L90
	movi.n	a8, 0
	mov.n	a9, a8
	j	.L86
.LVL163:
.L87:
.LBB35:
	.loc 1 66 0
	addx4	a11, a8, a4
	l32i.n	a11, a11, 0
	or	a9, a9, a11
.LVL164:
	.loc 1 65 0
	addi.n	a8, a8, 1
.LVL165:
.L86:
	blti	a8, 3, .L87
	j	.L85
.LVL166:
.L90:
.LBE35:
	.loc 1 62 0
	mov.n	a9, a6
.L85:
.LBE34:
.LBE33:
	.loc 1 355 0
	and	a9, a5, a9
	bne	a5, a9, .L83
.LVL167:
.L84:
	.loc 1 356 0
	mov.n	a11, a3
	call8	multi_heap_check
.LVL168:
	beqz.n	a10, .L91
	.loc 1 356 0 is_stmt 0 discriminator 1
	bnez.n	a2, .L92
	j	.L83
.L91:
	.loc 1 356 0
	movi.n	a2, 0
.LVL169:
	j	.L83
.LVL170:
.L92:
	movi.n	a2, 1
.LVL171:
.L83:
	.loc 1 353 0 is_stmt 1 discriminator 2
	l32i.n	a4, a4, 32
.LVL172:
.L82:
	.loc 1 353 0 is_stmt 0 discriminator 1
	bnez.n	a4, .L89
	.loc 1 361 0 is_stmt 1
	retw.n
.LFE28:
	.size	heap_caps_check_integrity, .-heap_caps_check_integrity
	.section	.rodata.__func__$4922,"a",@progbits
	.align	4
	.type	__func__$4922, @object
	.size	__func__$4922, 18
__func__$4922:
	.string	"heap_caps_realloc"
	.section	.rodata.__func__$4915,"a",@progbits
	.align	4
	.type	__func__$4915, @object
	.size	__func__$4915, 15
__func__$4915:
	.string	"heap_caps_free"
	.section	.rodata.__func__$4854,"a",@progbits
	.align	4
	.type	__func__$4854, @object
	.size	__func__$4854, 24
__func__$4854:
	.string	"dram_alloc_to_iram_addr"
	.section	.data.malloc_alwaysinternal_limit,"aw",@progbits
	.align	4
	.type	malloc_alwaysinternal_limit, @object
	.size	malloc_alwaysinternal_limit, 4
malloc_alwaysinternal_limit:
	.word	-1
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
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI0-.LFB20
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
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI2-.LFB15
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI3-.LFB16
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI4-.LFB17
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI5-.LFB18
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
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI7-.LFB22
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI8-.LFB19
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI9-.LFB23
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
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI11-.LFB26
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
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI13-.LFB27
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI14-.LFB28
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE28:
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
	.4byte	0xdd6
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF87
	.byte	0xc
	.4byte	.LASF88
	.4byte	.LASF89
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
	.4byte	.LASF90
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
	.uleb128 0xa
	.4byte	0x9c
	.4byte	0x140
	.uleb128 0xb
	.4byte	0x85
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF25
	.uleb128 0x8
	.byte	0x8
	.byte	0x6
	.byte	0x84
	.4byte	0x168
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x6
	.byte	0x85
	.4byte	0x9c
	.byte	0
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0x6
	.byte	0x86
	.4byte	0x9c
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x6
	.byte	0x8b
	.4byte	0x147
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
	.4byte	0x130
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
	.4byte	0x168
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
	.4byte	.LASF91
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
	.byte	0xc6
	.4byte	0x289
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x289
	.uleb128 0x14
	.string	"ptr"
	.byte	0x1
	.byte	0xc6
	.4byte	0x8c
	.4byte	.LLST0
	.uleb128 0x15
	.string	"p"
	.byte	0x1
	.byte	0xc8
	.4byte	0xa7
	.4byte	.LLST1
	.uleb128 0x16
	.4byte	.LASF33
	.byte	0x1
	.byte	0xc9
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
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
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
	.4byte	__func__$4854
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
	.4byte	0xd4a
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
	.4byte	__func__$4854
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL12
	.4byte	0xd4a
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
	.4byte	__func__$4854
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL13
	.4byte	0xd4a
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
	.4byte	__func__$4854
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL14
	.4byte	0xd4a
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
	.4byte	__func__$4854
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
	.4byte	0x140
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
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
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
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
	.4byte	0xd55
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
	.4byte	0xd55
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
	.uleb128 0x24
	.4byte	.LASF55
	.byte	0x1
	.byte	0x8d
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x542
	.uleb128 0x1e
	.4byte	.LASF53
	.byte	0x1
	.byte	0x8d
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF54
	.byte	0x1
	.byte	0x95
	.4byte	0x8c
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5ea
	.uleb128 0x17
	.4byte	.LASF51
	.byte	0x1
	.byte	0x95
	.4byte	0x2c
	.4byte	.LLST16
	.uleb128 0x25
	.4byte	.LBB23
	.4byte	.LBE23-.LBB23
	.4byte	0x5d2
	.uleb128 0x15
	.string	"r"
	.byte	0x1
	.byte	0x9a
	.4byte	0x8c
	.4byte	.LLST17
	.uleb128 0x1a
	.4byte	.LVL59
	.4byte	0x456
	.4byte	0x59f
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
	.2byte	0x1800
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL61
	.4byte	0x456
	.4byte	0x5ba
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
	.2byte	0x1400
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL63
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
	.2byte	0x1000
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL56
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
	.2byte	0x1800
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LASF56
	.byte	0x1
	.byte	0xd2
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6aa
	.uleb128 0x14
	.string	"ptr"
	.byte	0x1
	.byte	0xd2
	.4byte	0x8c
	.4byte	.LLST18
	.uleb128 0x15
	.string	"p"
	.byte	0x1
	.byte	0xd4
	.4byte	0xa7
	.4byte	.LLST19
	.uleb128 0x18
	.4byte	.LASF33
	.byte	0x1
	.byte	0xe2
	.4byte	0x289
	.4byte	.LLST20
	.uleb128 0x19
	.4byte	.LASF46
	.4byte	0x6ba
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$4915
	.uleb128 0x25
	.4byte	.LBB24
	.4byte	.LBE24-.LBB24
	.4byte	0x656
	.uleb128 0x18
	.4byte	.LASF57
	.byte	0x1
	.byte	0xde
	.4byte	0x3db
	.4byte	.LLST21
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL72
	.4byte	0x246
	.4byte	0x66a
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL74
	.4byte	0xd4a
	.4byte	0x699
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
	.byte	0xe3
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$4915
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC25
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL76
	.4byte	0xd60
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
	.4byte	0x6ba
	.uleb128 0xb
	.4byte	0x85
	.byte	0xe
	.byte	0
	.uleb128 0x12
	.4byte	0x6aa
	.uleb128 0x1d
	.4byte	.LASF58
	.byte	0x1
	.byte	0xe7
	.4byte	0x8c
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8c0
	.uleb128 0x14
	.string	"ptr"
	.byte	0x1
	.byte	0xe7
	.4byte	0x8c
	.4byte	.LLST22
	.uleb128 0x17
	.4byte	.LASF51
	.byte	0x1
	.byte	0xe7
	.4byte	0x2c
	.4byte	.LLST23
	.uleb128 0x1e
	.4byte	.LASF30
	.byte	0x1
	.byte	0xe7
	.4byte	0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x16
	.4byte	.LASF33
	.byte	0x1
	.byte	0xf2
	.4byte	0x289
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x19
	.4byte	.LASF46
	.4byte	0x8d0
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$4922
	.uleb128 0x18
	.4byte	.LASF59
	.byte	0x1
	.byte	0xf8
	.4byte	0x140
	.4byte	.LLST24
	.uleb128 0x26
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x105
	.4byte	0x8c
	.4byte	.LLST25
	.uleb128 0x27
	.4byte	0x207
	.4byte	.LBB25
	.4byte	.LBE25-.LBB25
	.byte	0x1
	.byte	0xf8
	.4byte	0x77f
	.uleb128 0x28
	.4byte	0x217
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x21
	.4byte	.LBB26
	.4byte	.LBE26-.LBB26
	.uleb128 0x22
	.4byte	0x222
	.4byte	.LLST26
	.uleb128 0x21
	.4byte	.LBB27
	.4byte	.LBE27-.LBB27
	.uleb128 0x22
	.4byte	0x22e
	.4byte	.LLST27
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	.Ldebug_ranges0+0x50
	.4byte	0x7ac
	.uleb128 0x15
	.string	"r"
	.byte	0x1
	.byte	0xfd
	.4byte	0x8c
	.4byte	.LLST28
	.uleb128 0x1c
	.4byte	.LVL92
	.4byte	0xd6b
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
	.4byte	.LBB29
	.4byte	.LBE29-.LBB29
	.4byte	0x838
	.uleb128 0x26
	.4byte	.LASF61
	.byte	0x1
	.2byte	0x107
	.4byte	0x2c
	.4byte	.LLST29
	.uleb128 0x1a
	.4byte	.LVL96
	.4byte	0xd76
	.4byte	0x7dd
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL98
	.4byte	0xd4a
	.4byte	0x80d
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x108
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$4922
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC33
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL100
	.4byte	0xd81
	.4byte	0x827
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
	.4byte	.LVL101
	.4byte	0x5ea
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL78
	.4byte	0x456
	.4byte	0x852
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
	.4byte	.LVL81
	.4byte	0x5ea
	.4byte	0x866
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL84
	.4byte	0x246
	.4byte	0x87a
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL86
	.4byte	0xd4a
	.4byte	0x8a9
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
	.byte	0xf4
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$4922
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC29
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL94
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
	.4byte	0x8d0
	.uleb128 0xb
	.4byte	0x85
	.byte	0x11
	.byte	0
	.uleb128 0x12
	.4byte	0x8c0
	.uleb128 0x1d
	.4byte	.LASF62
	.byte	0x1
	.byte	0xac
	.4byte	0x8c
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9a2
	.uleb128 0x14
	.string	"ptr"
	.byte	0x1
	.byte	0xac
	.4byte	0x8c
	.4byte	.LLST30
	.uleb128 0x1e
	.4byte	.LASF51
	.byte	0x1
	.byte	0xac
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x25
	.4byte	.LBB31
	.4byte	.LBE31-.LBB31
	.4byte	0x984
	.uleb128 0x15
	.string	"r"
	.byte	0x1
	.byte	0xb1
	.4byte	0x8c
	.4byte	.LLST31
	.uleb128 0x1a
	.4byte	.LVL111
	.4byte	0x6bf
	.4byte	0x945
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
	.2byte	0x1800
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL113
	.4byte	0x6bf
	.4byte	0x966
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
	.2byte	0x1400
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL115
	.4byte	0x6bf
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
	.2byte	0x1000
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL108
	.4byte	0x6bf
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
	.2byte	0x1800
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x110
	.4byte	0x2c
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa0e
	.uleb128 0x2b
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x110
	.4byte	0x9c
	.4byte	.LLST32
	.uleb128 0x2c
	.string	"ret"
	.byte	0x1
	.2byte	0x112
	.4byte	0x2c
	.4byte	.LLST33
	.uleb128 0x2d
	.4byte	.LASF33
	.byte	0x1
	.2byte	0x113
	.4byte	0x289
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1a
	.4byte	.LVL123
	.4byte	0x3e1
	.4byte	0xa04
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
	.uleb128 0x2e
	.4byte	.LVL124
	.4byte	0xd8a
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x11c
	.4byte	0x2c
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa7a
	.uleb128 0x2b
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x11c
	.4byte	0x9c
	.4byte	.LLST34
	.uleb128 0x2c
	.string	"ret"
	.byte	0x1
	.2byte	0x11e
	.4byte	0x2c
	.4byte	.LLST35
	.uleb128 0x2d
	.4byte	.LASF33
	.byte	0x1
	.2byte	0x11f
	.4byte	0x289
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1a
	.4byte	.LVL132
	.4byte	0x3e1
	.4byte	0xa70
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
	.uleb128 0x2e
	.4byte	.LVL133
	.4byte	0xd95
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF65
	.byte	0x1
	.2byte	0x12f
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb1c
	.uleb128 0x30
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x12f
	.4byte	0xb1c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x30
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x12f
	.4byte	0x9c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2d
	.4byte	.LASF33
	.byte	0x1
	.2byte	0x133
	.4byte	0x289
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x25
	.4byte	.LBB32
	.4byte	.LBE32-.LBB32
	.4byte	0xae7
	.uleb128 0x2d
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x136
	.4byte	0x125
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1c
	.4byte	.LVL141
	.4byte	0xda0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL138
	.4byte	0xdab
	.4byte	0xb05
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
	.4byte	.LVL140
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
	.uleb128 0x2a
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x128
	.4byte	0x2c
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb72
	.uleb128 0x2b
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x128
	.4byte	0x9c
	.4byte	.LLST36
	.uleb128 0x2d
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x12a
	.4byte	0x125
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1c
	.4byte	.LVL144
	.4byte	0xa7a
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
	.uleb128 0x2f
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x145
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc71
	.uleb128 0x30
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x145
	.4byte	0x9c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2d
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x147
	.4byte	0x125
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2d
	.4byte	.LASF33
	.byte	0x1
	.2byte	0x149
	.4byte	0x289
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1a
	.4byte	.LVL147
	.4byte	0xdb4
	.4byte	0xbd0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC42
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL149
	.4byte	0x3e1
	.4byte	0xbea
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
	.4byte	.LVL150
	.4byte	0xda0
	.4byte	0xbfe
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL151
	.4byte	0xdb4
	.4byte	0xc15
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC45
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL152
	.4byte	0xdb4
	.4byte	0xc2c
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC47
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL154
	.4byte	0xdbf
	.4byte	0xc43
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC49
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL155
	.4byte	0xa7a
	.4byte	0xc5d
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
	.4byte	.LVL156
	.4byte	0xdb4
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC51
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF70
	.byte	0x1
	.2byte	0x15b
	.4byte	0x140
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd2e
	.uleb128 0x2b
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x15b
	.4byte	0x9c
	.4byte	.LLST37
	.uleb128 0x30
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x15b
	.4byte	0x140
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2d
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x15d
	.4byte	0x140
	.uleb128 0x5
	.byte	0x76
	.sleb128 0
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.uleb128 0x26
	.4byte	.LASF73
	.byte	0x1
	.2byte	0x15e
	.4byte	0x140
	.4byte	.LLST38
	.uleb128 0x2d
	.4byte	.LASF33
	.byte	0x1
	.2byte	0x160
	.4byte	0x289
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x31
	.4byte	0x207
	.4byte	.LBB33
	.4byte	.LBE33-.LBB33
	.byte	0x1
	.2byte	0x163
	.4byte	0xd1d
	.uleb128 0x20
	.4byte	0x217
	.4byte	.LLST39
	.uleb128 0x21
	.4byte	.LBB34
	.4byte	.LBE34-.LBB34
	.uleb128 0x22
	.4byte	0x222
	.4byte	.LLST40
	.uleb128 0x21
	.4byte	.LBB35
	.4byte	.LBE35-.LBB35
	.uleb128 0x22
	.4byte	0x22e
	.4byte	.LLST41
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL168
	.4byte	0xdce
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF74
	.byte	0x1
	.byte	0x8b
	.4byte	0x25
	.uleb128 0x5
	.byte	0x3
	.4byte	malloc_alwaysinternal_limit
	.uleb128 0x32
	.4byte	.LASF92
	.byte	0x7
	.byte	0x2f
	.4byte	0x1ee
	.uleb128 0x33
	.4byte	.LASF75
	.4byte	.LASF75
	.byte	0x8
	.byte	0x29
	.uleb128 0x33
	.4byte	.LASF76
	.4byte	.LASF76
	.byte	0x5
	.byte	0x29
	.uleb128 0x33
	.4byte	.LASF77
	.4byte	.LASF77
	.byte	0x5
	.byte	0x32
	.uleb128 0x33
	.4byte	.LASF78
	.4byte	.LASF78
	.byte	0x5
	.byte	0x3e
	.uleb128 0x33
	.4byte	.LASF79
	.4byte	.LASF79
	.byte	0x5
	.byte	0x49
	.uleb128 0x34
	.4byte	.LASF83
	.4byte	.LASF83
	.uleb128 0x33
	.4byte	.LASF80
	.4byte	.LASF80
	.byte	0x5
	.byte	0x85
	.uleb128 0x33
	.4byte	.LASF81
	.4byte	.LASF81
	.byte	0x5
	.byte	0x91
	.uleb128 0x33
	.4byte	.LASF82
	.4byte	.LASF82
	.byte	0x5
	.byte	0xa5
	.uleb128 0x34
	.4byte	.LASF84
	.4byte	.LASF84
	.uleb128 0x33
	.4byte	.LASF85
	.4byte	.LASF85
	.byte	0x9
	.byte	0xb2
	.uleb128 0x35
	.4byte	.LASF93
	.4byte	.LASF94
	.byte	0xa
	.byte	0
	.4byte	.LASF93
	.uleb128 0x33
	.4byte	.LASF86
	.4byte	.LASF86
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
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
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
	.uleb128 0x2e
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x3c
	.uleb128 0x19
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
	.4byte	.LFE20
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
	.4byte	.LFE20
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
	.4byte	.LFE13
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
	.4byte	.LFE13
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
	.4byte	.LFE13
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
	.4byte	.LFE13
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
	.4byte	.LFE15
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
	.4byte	.LFE15
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
	.4byte	.LFE16
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
	.4byte	.LFE16
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
	.4byte	.LFE16
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
	.4byte	.LVL55
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
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL64
	.4byte	.LVL65
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL66
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL65
	.4byte	.LFE18
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL67
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x3
	.byte	0x72
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL71
	.4byte	.LFE21
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL68
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x3
	.byte	0x72
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL71
	.4byte	.LVL72-1
	.2byte	0x7
	.byte	0x78
	.sleb128 1074397184
	.byte	0x9f
	.4byte	.LVL72-1
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL74
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL69
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x3
	.byte	0x72
	.sleb128 4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL77
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL79
	.4byte	.LVL80
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL80
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL82
	.4byte	.LVL83
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL83
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
	.4byte	.LVL105
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL105
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL106
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL77
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL95
	.4byte	.LVL103
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL103
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL105
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL91
	.4byte	.LVL92-1
	.2byte	0x6
	.byte	0x79
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x29
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL95
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL105
	.4byte	.LFE22
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL87
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL87
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL92
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL103
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL96
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL98
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL99
	.4byte	.LVL100-1
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL107
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL109
	.4byte	.LVL110
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL110
	.4byte	.LVL116
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL116
	.4byte	.LVL117
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL117
	.4byte	.LVL118
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL118
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL111
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL113
	.4byte	.LVL114
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL117
	.4byte	.LFE19
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL119
	.4byte	.LVL127
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL127
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL120
	.4byte	.LVL122
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL122
	.4byte	.LFE23
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL128
	.4byte	.LVL136
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL136
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL129
	.4byte	.LVL131
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL131
	.4byte	.LFE24
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL143
	.4byte	.LVL145
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL145
	.4byte	.LFE25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL157
	.4byte	.LVL159
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL159
	.4byte	.LFE28
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL158
	.4byte	.LVL161
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL161
	.4byte	.LVL169
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL170
	.4byte	.LFE28
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL162
	.4byte	.LVL167
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL163
	.4byte	.LVL166
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL163
	.4byte	.LVL166
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x8c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
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
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
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
	.4byte	.LBB28
	.4byte	.LBE28
	.4byte	.LBB30
	.4byte	.LBE30
	.4byte	0
	.4byte	0
	.4byte	.LFB20
	.4byte	.LFE20
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
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF50:
	.string	"heap_caps_malloc"
.LASF71:
	.string	"print_errors"
.LASF73:
	.string	"valid"
.LASF43:
	.string	"addr"
.LASF35:
	.string	"heap_t"
.LASF77:
	.string	"multi_heap_free"
.LASF34:
	.string	"next"
.LASF62:
	.string	"heap_caps_realloc_default"
.LASF5:
	.string	"size_t"
.LASF11:
	.string	"sizetype"
.LASF92:
	.string	"registered_heaps"
.LASF42:
	.string	"dram_alloc_to_iram_addr"
.LASF47:
	.string	"istart"
.LASF6:
	.string	"__uint32_t"
.LASF61:
	.string	"old_size"
.LASF83:
	.string	"memcpy"
.LASF68:
	.string	"heap_caps_get_largest_free_block"
.LASF19:
	.string	"largest_free_block"
.LASF82:
	.string	"multi_heap_get_info"
.LASF55:
	.string	"heap_caps_malloc_extmem_enable"
.LASF9:
	.string	"__intptr_t"
.LASF80:
	.string	"multi_heap_free_size"
.LASF74:
	.string	"malloc_alwaysinternal_limit"
.LASF33:
	.string	"heap"
.LASF88:
	.string	"C:/esp/esp-idf/components/heap/heap_caps.c"
.LASF15:
	.string	"intptr_t"
.LASF18:
	.string	"total_allocated_bytes"
.LASF7:
	.string	"long long int"
.LASF48:
	.string	"iptr"
.LASF53:
	.string	"limit"
.LASF56:
	.string	"heap_caps_free"
.LASF91:
	.string	"get_all_caps"
.LASF84:
	.string	"memset"
.LASF10:
	.string	"long int"
.LASF44:
	.string	"dstart"
.LASF65:
	.string	"heap_caps_get_info"
.LASF85:
	.string	"printf"
.LASF49:
	.string	"heap_caps_match"
.LASF4:
	.string	"short int"
.LASF69:
	.string	"heap_caps_print_heap_info"
.LASF3:
	.string	"unsigned char"
.LASF30:
	.string	"caps"
.LASF64:
	.string	"heap_caps_get_minimum_free_size"
.LASF78:
	.string	"multi_heap_realloc"
.LASF86:
	.string	"multi_heap_check"
.LASF46:
	.string	"__func__"
.LASF26:
	.string	"owner"
.LASF17:
	.string	"total_free_bytes"
.LASF81:
	.string	"multi_heap_minimum_free_size"
.LASF87:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF70:
	.string	"heap_caps_check_integrity"
.LASF2:
	.string	"signed char"
.LASF8:
	.string	"long long unsigned int"
.LASF79:
	.string	"multi_heap_get_allocated_size"
.LASF14:
	.string	"uint32_t"
.LASF28:
	.string	"portMUX_TYPE"
.LASF58:
	.string	"heap_caps_realloc"
.LASF0:
	.string	"unsigned int"
.LASF39:
	.string	"all_caps"
.LASF37:
	.string	"registered_heap_ll"
.LASF57:
	.string	"dramAddrPtr"
.LASF93:
	.string	"puts"
.LASF38:
	.string	"slh_first"
.LASF31:
	.string	"start"
.LASF54:
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
.LASF67:
	.string	"hinfo"
.LASF1:
	.string	"short unsigned int"
.LASF25:
	.string	"_Bool"
.LASF24:
	.string	"multi_heap_info_t"
.LASF76:
	.string	"multi_heap_malloc"
.LASF16:
	.string	"multi_heap_handle_t"
.LASF32:
	.string	"heap_mux"
.LASF12:
	.string	"long unsigned int"
.LASF89:
	.string	"C:\\\\esp\\\\esp32-ArkPOS2\\\\ArkPOS2-esp\\\\build\\\\heap"
.LASF21:
	.string	"allocated_blocks"
.LASF29:
	.string	"sle_next"
.LASF23:
	.string	"total_blocks"
.LASF27:
	.string	"count"
.LASF66:
	.string	"info"
.LASF60:
	.string	"new_p"
.LASF41:
	.string	"find_containing_heap"
.LASF52:
	.string	"remCaps"
.LASF94:
	.string	"__builtin_puts"
.LASF75:
	.string	"__assert_func"
.LASF72:
	.string	"all_heaps"
.LASF59:
	.string	"compatible_caps"
.LASF40:
	.string	"prio"
.LASF90:
	.string	"multi_heap_info"
.LASF63:
	.string	"heap_caps_get_free_size"
.LASF22:
	.string	"free_blocks"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-73-ge28a011) 5.2.0"
