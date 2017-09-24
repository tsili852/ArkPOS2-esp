	.file	"cache_utils.c"
	.text
.Ltext0:
	.section	.iram1,"ax",@progbits
	.literal_position
	.literal .LC0, 1072693316
	.literal .LC1, 1072694256
	.literal .LC2, 1072693312
	.literal .LC3, 1072693340
	.literal .LC4, 1072694296
	.literal .LC5, 1072693336
	.align	4
	.type	spi_flash_disable_cache, @function
spi_flash_disable_cache:
.LFB24:
	.file 1 "C:/esp/esp-idf/components/spi_flash/cache_utils.c"
	.loc 1 258 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LVL1:
	.loc 1 260 0
	bnez.n	a2, .L2
.LVL2:
.LBB26:
.LBB27:
	.file 2 "C:/esp/esp-idf/components/soc/esp32/include/soc/dport_access.h"
	.loc 2 102 0
	l32r	a8, .LC0
	memw
	l32i.n	a9, a8, 0
.LVL3:
.LBE27:
.LBE26:
	.loc 1 261 0
	extui	a9, a9, 0, 6
.LVL4:
.L3:
.LBB28:
.LBB29:
	.loc 2 102 0 discriminator 1
	l32r	a8, .LC1
	memw
	l32i.n	a8, a8, 0
.LVL5:
.LBE29:
.LBE28:
	.loc 1 262 0 discriminator 1
	extui	a8, a8, 7, 12
.LVL6:
	bnei	a8, 1, .L3
.LVL7:
.LBB30:
.LBB31:
	.loc 2 102 0
	l32r	a10, .LC2
	memw
	l32i.n	a11, a10, 0
.LVL8:
.LBE31:
.LBE30:
	.loc 1 265 0
	movi.n	a8, -9
	and	a8, a11, a8
	memw
	s32i.n	a8, a10, 0
	j	.L4
.LVL9:
.L2:
.LBB32:
.LBB33:
	.loc 2 102 0
	l32r	a8, .LC3
	memw
	l32i.n	a9, a8, 0
.LVL10:
.LBE33:
.LBE32:
	.loc 1 267 0
	extui	a9, a9, 0, 6
.LVL11:
.L5:
.LBB34:
.LBB35:
	.loc 2 102 0 discriminator 1
	l32r	a8, .LC4
	memw
	l32i.n	a8, a8, 0
.LVL12:
.LBE35:
.LBE34:
	.loc 1 268 0 discriminator 1
	extui	a8, a8, 7, 12
.LVL13:
	bnei	a8, 1, .L5
.LVL14:
.LBB36:
.LBB37:
	.loc 2 102 0
	l32r	a10, .LC5
	memw
	l32i.n	a11, a10, 0
.LVL15:
.LBE37:
.LBE36:
	.loc 1 271 0
	movi.n	a8, -9
	and	a8, a11, a8
	memw
	s32i.n	a8, a10, 0
.LVL16:
.L4:
	.loc 1 273 0
	s32i.n	a9, a3, 0
	retw.n
.LFE24:
	.size	spi_flash_disable_cache, .-spi_flash_disable_cache
	.literal_position
	.literal .LC6, 1072693312
	.literal .LC7, 1072693316
	.literal .LC8, 1072693336
	.literal .LC9, 1072693340
	.align	4
	.type	spi_flash_restore_cache, @function
spi_flash_restore_cache:
.LFB25:
	.loc 1 277 0
.LVL17:
	entry	sp, 32
.LCFI1:
	.loc 1 278 0
	bnez.n	a2, .L7
.LVL18:
.LBB38:
.LBB39:
	.loc 2 102 0
	l32r	a9, .LC6
	memw
	l32i.n	a10, a9, 0
.LVL19:
.LBE39:
.LBE38:
	.loc 1 279 0
	movi.n	a8, 8
	or	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
.LVL20:
.LBB40:
.LBB41:
	.loc 2 102 0
	l32r	a9, .LC7
	memw
	l32i.n	a10, a9, 0
.LVL21:
.LBE41:
.LBE40:
	.loc 1 280 0
	movi	a8, -0x40
	and	a8, a10, a8
	extui	a3, a3, 0, 6
.LVL22:
	or	a3, a8, a3
	memw
	s32i.n	a3, a9, 0
	retw.n
.LVL23:
.L7:
.LBB42:
.LBB43:
	.loc 2 102 0
	l32r	a9, .LC8
	memw
	l32i.n	a10, a9, 0
.LVL24:
.LBE43:
.LBE42:
	.loc 1 282 0
	movi.n	a8, 8
	or	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
.LVL25:
.LBB44:
.LBB45:
	.loc 2 102 0
	l32r	a9, .LC9
	memw
	l32i.n	a10, a9, 0
.LVL26:
.LBE45:
.LBE44:
	.loc 1 283 0
	movi	a8, -0x40
	and	a8, a10, a8
	extui	a3, a3, 0, 6
.LVL27:
	or	a3, a8, a3
	memw
	s32i.n	a3, a9, 0
	retw.n
.LFE25:
	.size	spi_flash_restore_cache, .-spi_flash_restore_cache
	.section	.text.spi_flash_init_lock,"ax",@progbits
	.align	4
	.global	spi_flash_init_lock
	.type	spi_flash_init_lock, @function
spi_flash_init_lock:
.LFB17:
	.loc 1 201 0
	entry	sp, 32
.LCFI2:
	retw.n
.LFE17:
	.size	spi_flash_init_lock, .-spi_flash_init_lock
	.section	.text.spi_flash_op_lock,"ax",@progbits
	.align	4
	.global	spi_flash_op_lock
	.type	spi_flash_op_lock, @function
spi_flash_op_lock:
.LFB18:
	.loc 1 205 0
	.loc 1 205 0
	entry	sp, 32
.LCFI3:
	.loc 1 206 0
	call8	vTaskSuspendAll
.LVL28:
	retw.n
.LFE18:
	.size	spi_flash_op_lock, .-spi_flash_op_lock
	.section	.text.spi_flash_op_unlock,"ax",@progbits
	.align	4
	.global	spi_flash_op_unlock
	.type	spi_flash_op_unlock, @function
spi_flash_op_unlock:
.LFB19:
	.loc 1 210 0
	entry	sp, 32
.LCFI4:
	.loc 1 211 0
	call8	xTaskResumeAll
.LVL29:
	retw.n
.LFE19:
	.size	spi_flash_op_unlock, .-spi_flash_op_unlock
	.section	.iram1
	.literal_position
	.literal .LC10, s_flash_op_cache_state
	.align	4
	.global	spi_flash_disable_interrupts_caches_and_other_cpu
	.type	spi_flash_disable_interrupts_caches_and_other_cpu, @function
spi_flash_disable_interrupts_caches_and_other_cpu:
.LFB20:
	.loc 1 216 0
	entry	sp, 32
.LCFI5:
	.loc 1 217 0
	call8	spi_flash_op_lock
.LVL30:
	.loc 1 218 0
	call8	esp_intr_noniram_disable
.LVL31:
	.loc 1 219 0
	l32r	a11, .LC10
	movi.n	a10, 0
	call8	spi_flash_disable_cache
.LVL32:
	retw.n
.LFE20:
	.size	spi_flash_disable_interrupts_caches_and_other_cpu, .-spi_flash_disable_interrupts_caches_and_other_cpu
	.literal_position
	.literal .LC11, s_flash_op_cache_state
	.align	4
	.global	spi_flash_enable_interrupts_caches_and_other_cpu
	.type	spi_flash_enable_interrupts_caches_and_other_cpu, @function
spi_flash_enable_interrupts_caches_and_other_cpu:
.LFB21:
	.loc 1 223 0
	entry	sp, 32
.LCFI6:
	.loc 1 224 0
	l32r	a8, .LC11
	l32i.n	a11, a8, 0
	movi.n	a10, 0
	call8	spi_flash_restore_cache
.LVL33:
	.loc 1 225 0
	call8	esp_intr_noniram_enable
.LVL34:
	.loc 1 226 0
	call8	spi_flash_op_unlock
.LVL35:
	retw.n
.LFE21:
	.size	spi_flash_enable_interrupts_caches_and_other_cpu, .-spi_flash_enable_interrupts_caches_and_other_cpu
	.literal_position
	.literal .LC12, s_flash_op_cache_state
	.align	4
	.global	spi_flash_disable_interrupts_caches_and_other_cpu_no_os
	.type	spi_flash_disable_interrupts_caches_and_other_cpu_no_os, @function
spi_flash_disable_interrupts_caches_and_other_cpu_no_os:
.LFB22:
	.loc 1 230 0
	entry	sp, 32
.LCFI7:
	.loc 1 232 0
	call8	esp_intr_noniram_disable
.LVL36:
	.loc 1 234 0
	l32r	a11, .LC12
	movi.n	a10, 0
	call8	spi_flash_disable_cache
.LVL37:
	retw.n
.LFE22:
	.size	spi_flash_disable_interrupts_caches_and_other_cpu_no_os, .-spi_flash_disable_interrupts_caches_and_other_cpu_no_os
	.literal_position
	.literal .LC13, s_flash_op_cache_state
	.align	4
	.global	spi_flash_enable_interrupts_caches_no_os
	.type	spi_flash_enable_interrupts_caches_no_os, @function
spi_flash_enable_interrupts_caches_no_os:
.LFB23:
	.loc 1 238 0
	entry	sp, 32
.LCFI8:
	.loc 1 240 0
	l32r	a8, .LC13
	l32i.n	a11, a8, 0
	movi.n	a10, 0
	call8	spi_flash_restore_cache
.LVL38:
	.loc 1 242 0
	call8	esp_intr_noniram_enable
.LVL39:
	retw.n
.LFE23:
	.size	spi_flash_enable_interrupts_caches_no_os, .-spi_flash_enable_interrupts_caches_no_os
	.literal_position
	.literal .LC14, 1072693312
	.literal .LC15, 1072693336
	.align	4
	.global	spi_flash_cache_enabled
	.type	spi_flash_cache_enabled, @function
spi_flash_cache_enabled:
.LFB26:
	.loc 1 289 0
	entry	sp, 32
.LCFI9:
.LVL40:
.LBB46:
.LBB47:
	.loc 2 48 0
	l32r	a8, .LC14
	memw
	l32i.n	a8, a8, 0
.LVL41:
.LBE47:
.LBE46:
	.loc 1 291 0
	bbci	a8, 3, .L18
.LVL42:
.LBB48:
.LBB49:
	.loc 2 48 0
	l32r	a2, .LC15
	memw
	l32i.n	a2, a2, 0
.LVL43:
.LBE49:
.LBE48:
	.loc 1 291 0
	bbci	a2, 3, .L19
	movi.n	a2, 1
.LVL44:
	retw.n
.LVL45:
.L18:
	movi.n	a2, 0
	retw.n
.LVL46:
.L19:
	movi.n	a2, 0
.LVL47:
	.loc 1 292 0
	retw.n
.LFE26:
	.size	spi_flash_cache_enabled, .-spi_flash_cache_enabled
	.section	.bss.s_flash_op_cache_state,"aw",@nobits
	.align	4
	.type	s_flash_op_cache_state, @object
	.size	s_flash_op_cache_state, 8
s_flash_op_cache_state:
	.zero	8
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
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI0-.LFB24
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI1-.LFB25
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
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI5-.LFB20
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
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI8-.LFB23
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI9-.LFB26
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
	.text
.Letext0:
	.file 3 "C:/esp/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "C:/esp/esp-idf/components/newlib/include/stdint.h"
	.file 5 "C:/esp/esp-idf/components/freertos/include/freertos/task.h"
	.file 6 "C:/esp/esp-idf/components/esp32/include/esp_intr_alloc.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x54b
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF33
	.byte	0xc
	.4byte	.LASF34
	.4byte	.LASF35
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
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x3
	.byte	0x1a
	.4byte	0x25
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x4
	.4byte	.LASF12
	.byte	0x4
	.byte	0x2d
	.4byte	0x4f
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF13
	.uleb128 0x5
	.4byte	.LASF14
	.byte	0x2
	.byte	0x61
	.4byte	0x84
	.byte	0x3
	.4byte	0xbd
	.uleb128 0x6
	.4byte	.LASF16
	.byte	0x2
	.byte	0x61
	.4byte	0x84
	.uleb128 0x7
	.string	"val"
	.byte	0x2
	.byte	0x63
	.4byte	0x84
	.byte	0
	.uleb128 0x5
	.4byte	.LASF15
	.byte	0x2
	.byte	0x2b
	.4byte	0x84
	.byte	0x3
	.4byte	0xe4
	.uleb128 0x8
	.string	"reg"
	.byte	0x2
	.byte	0x2b
	.4byte	0x84
	.uleb128 0x7
	.string	"val"
	.byte	0x2
	.byte	0x2d
	.4byte	0x84
	.byte	0
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x1
	.2byte	0x101
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x249
	.uleb128 0xa
	.4byte	.LASF17
	.byte	0x1
	.2byte	0x101
	.4byte	0x84
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xa
	.4byte	.LASF18
	.byte	0x1
	.2byte	0x101
	.4byte	0x249
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xb
	.string	"ret"
	.byte	0x1
	.2byte	0x103
	.4byte	0x84
	.4byte	.LLST0
	.uleb128 0xc
	.4byte	0x96
	.4byte	.LBB26
	.4byte	.LBE26-.LBB26
	.byte	0x1
	.2byte	0x105
	.4byte	0x157
	.uleb128 0xd
	.4byte	0xa6
	.4byte	.LLST1
	.uleb128 0xe
	.4byte	.LBB27
	.4byte	.LBE27-.LBB27
	.uleb128 0xf
	.4byte	0xb1
	.4byte	.LLST2
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	0x96
	.4byte	.LBB28
	.4byte	.LBE28-.LBB28
	.byte	0x1
	.2byte	0x106
	.4byte	0x188
	.uleb128 0xd
	.4byte	0xa6
	.4byte	.LLST3
	.uleb128 0xe
	.4byte	.LBB29
	.4byte	.LBE29-.LBB29
	.uleb128 0xf
	.4byte	0xb1
	.4byte	.LLST4
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	0x96
	.4byte	.LBB30
	.4byte	.LBE30-.LBB30
	.byte	0x1
	.2byte	0x109
	.4byte	0x1b9
	.uleb128 0xd
	.4byte	0xa6
	.4byte	.LLST5
	.uleb128 0xe
	.4byte	.LBB31
	.4byte	.LBE31-.LBB31
	.uleb128 0xf
	.4byte	0xb1
	.4byte	.LLST6
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	0x96
	.4byte	.LBB32
	.4byte	.LBE32-.LBB32
	.byte	0x1
	.2byte	0x10b
	.4byte	0x1ea
	.uleb128 0xd
	.4byte	0xa6
	.4byte	.LLST7
	.uleb128 0xe
	.4byte	.LBB33
	.4byte	.LBE33-.LBB33
	.uleb128 0xf
	.4byte	0xb1
	.4byte	.LLST8
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	0x96
	.4byte	.LBB34
	.4byte	.LBE34-.LBB34
	.byte	0x1
	.2byte	0x10c
	.4byte	0x21b
	.uleb128 0xd
	.4byte	0xa6
	.4byte	.LLST9
	.uleb128 0xe
	.4byte	.LBB35
	.4byte	.LBE35-.LBB35
	.uleb128 0xf
	.4byte	0xb1
	.4byte	.LLST10
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	0x96
	.4byte	.LBB36
	.4byte	.LBE36-.LBB36
	.byte	0x1
	.2byte	0x10f
	.uleb128 0xd
	.4byte	0xa6
	.4byte	.LLST11
	.uleb128 0xe
	.4byte	.LBB37
	.4byte	.LBE37-.LBB37
	.uleb128 0xf
	.4byte	0xb1
	.4byte	.LLST12
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.4byte	0x84
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x1
	.2byte	0x114
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x342
	.uleb128 0xa
	.4byte	.LASF17
	.byte	0x1
	.2byte	0x114
	.4byte	0x84
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x12
	.4byte	.LASF18
	.byte	0x1
	.2byte	0x114
	.4byte	0x84
	.4byte	.LLST13
	.uleb128 0xc
	.4byte	0x96
	.4byte	.LBB38
	.4byte	.LBE38-.LBB38
	.byte	0x1
	.2byte	0x117
	.4byte	0x2b4
	.uleb128 0xd
	.4byte	0xa6
	.4byte	.LLST14
	.uleb128 0xe
	.4byte	.LBB39
	.4byte	.LBE39-.LBB39
	.uleb128 0xf
	.4byte	0xb1
	.4byte	.LLST15
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	0x96
	.4byte	.LBB40
	.4byte	.LBE40-.LBB40
	.byte	0x1
	.2byte	0x118
	.4byte	0x2e5
	.uleb128 0xd
	.4byte	0xa6
	.4byte	.LLST16
	.uleb128 0xe
	.4byte	.LBB41
	.4byte	.LBE41-.LBB41
	.uleb128 0xf
	.4byte	0xb1
	.4byte	.LLST17
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	0x96
	.4byte	.LBB42
	.4byte	.LBE42-.LBB42
	.byte	0x1
	.2byte	0x11a
	.4byte	0x316
	.uleb128 0x13
	.4byte	0xa6
	.4byte	0x3ff00058
	.uleb128 0xe
	.4byte	.LBB43
	.4byte	.LBE43-.LBB43
	.uleb128 0xf
	.4byte	0xb1
	.4byte	.LLST18
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	0x96
	.4byte	.LBB44
	.4byte	.LBE44-.LBB44
	.byte	0x1
	.2byte	0x11b
	.uleb128 0x13
	.4byte	0xa6
	.4byte	0x3ff0005c
	.uleb128 0xe
	.4byte	.LBB45
	.4byte	.LBE45-.LBB45
	.uleb128 0x14
	.4byte	0xb1
	.uleb128 0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF36
	.byte	0x1
	.byte	0xc8
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x16
	.4byte	.LASF21
	.byte	0x1
	.byte	0xcc
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x372
	.uleb128 0x17
	.4byte	.LVL28
	.4byte	0x51e
	.byte	0
	.uleb128 0x16
	.4byte	.LASF22
	.byte	0x1
	.byte	0xd1
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x391
	.uleb128 0x17
	.4byte	.LVL29
	.4byte	0x52a
	.byte	0
	.uleb128 0x16
	.4byte	.LASF23
	.byte	0x1
	.byte	0xd7
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3d1
	.uleb128 0x17
	.4byte	.LVL30
	.4byte	0x353
	.uleb128 0x17
	.4byte	.LVL31
	.4byte	0x536
	.uleb128 0x18
	.4byte	.LVL32
	.4byte	0xe4
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	s_flash_op_cache_state
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF24
	.byte	0x1
	.byte	0xde
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x40c
	.uleb128 0x1a
	.4byte	.LVL33
	.4byte	0x24f
	.4byte	0x3f9
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x17
	.4byte	.LVL34
	.4byte	0x542
	.uleb128 0x17
	.4byte	.LVL35
	.4byte	0x372
	.byte	0
	.uleb128 0x16
	.4byte	.LASF25
	.byte	0x1
	.byte	0xe5
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x443
	.uleb128 0x17
	.4byte	.LVL36
	.4byte	0x536
	.uleb128 0x18
	.4byte	.LVL37
	.4byte	0xe4
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	s_flash_op_cache_state
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF26
	.byte	0x1
	.byte	0xed
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x475
	.uleb128 0x1a
	.4byte	.LVL38
	.4byte	0x24f
	.4byte	0x46b
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x17
	.4byte	.LVL39
	.4byte	0x542
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF37
	.byte	0x1
	.2byte	0x120
	.4byte	0x8f
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4ec
	.uleb128 0xc
	.4byte	0xbd
	.4byte	.LBB46
	.4byte	.LBE46-.LBB46
	.byte	0x1
	.2byte	0x122
	.4byte	0x4be
	.uleb128 0x13
	.4byte	0xcd
	.4byte	0x3ff00040
	.uleb128 0xe
	.4byte	.LBB47
	.4byte	.LBE47-.LBB47
	.uleb128 0x14
	.4byte	0xd8
	.uleb128 0x1
	.byte	0x58
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	0xbd
	.4byte	.LBB48
	.4byte	.LBE48-.LBB48
	.byte	0x1
	.2byte	0x123
	.uleb128 0xd
	.4byte	0xcd
	.4byte	.LLST19
	.uleb128 0xe
	.4byte	.LBB49
	.4byte	.LBE49-.LBB49
	.uleb128 0xf
	.4byte	0xd8
	.4byte	.LLST20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	0x84
	.4byte	0x4fc
	.uleb128 0x1d
	.4byte	0x6f
	.byte	0x1
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF27
	.byte	0x1
	.byte	0x26
	.4byte	0x4ec
	.uleb128 0x5
	.byte	0x3
	.4byte	s_flash_op_cache_state
	.uleb128 0x1f
	.4byte	.LASF28
	.byte	0x1
	.byte	0xfd
	.4byte	0x519
	.byte	0x3f
	.uleb128 0x20
	.4byte	0x84
	.uleb128 0x21
	.4byte	.LASF29
	.4byte	.LASF29
	.byte	0x5
	.2byte	0x48c
	.uleb128 0x21
	.4byte	.LASF30
	.4byte	.LASF30
	.byte	0x5
	.2byte	0x4c2
	.uleb128 0x21
	.4byte	.LASF31
	.4byte	.LASF31
	.byte	0x6
	.2byte	0x10b
	.uleb128 0x21
	.4byte	.LASF32
	.4byte	.LASF32
	.byte	0x6
	.2byte	0x111
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.4byte	.LVL4
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LFE24
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL9
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff00044
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL4
	.4byte	.LVL9
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff003f0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff00040
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL9
	.4byte	.LVL16
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff0005c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL11
	.4byte	.LVL16
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff00418
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL14
	.4byte	.LVL16
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff00058
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL17
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL27
	.4byte	.LFE25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL18
	.4byte	.LVL23
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff00040
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL20
	.4byte	.LVL23
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff00044
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL24
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL42
	.4byte	.LVL45
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff00058
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LFE26
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff00058
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x64
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF14:
	.string	"DPORT_READ_PERI_REG"
.LASF28:
	.string	"cache_mask"
.LASF29:
	.string	"vTaskSuspendAll"
.LASF18:
	.string	"saved_state"
.LASF22:
	.string	"spi_flash_op_unlock"
.LASF26:
	.string	"spi_flash_enable_interrupts_caches_no_os"
.LASF1:
	.string	"short unsigned int"
.LASF30:
	.string	"xTaskResumeAll"
.LASF23:
	.string	"spi_flash_disable_interrupts_caches_and_other_cpu"
.LASF34:
	.string	"C:/esp/esp-idf/components/spi_flash/cache_utils.c"
.LASF33:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF37:
	.string	"spi_flash_cache_enabled"
.LASF21:
	.string	"spi_flash_op_lock"
.LASF2:
	.string	"signed char"
.LASF3:
	.string	"unsigned char"
.LASF9:
	.string	"long unsigned int"
.LASF16:
	.string	"addr"
.LASF20:
	.string	"spi_flash_restore_cache"
.LASF27:
	.string	"s_flash_op_cache_state"
.LASF19:
	.string	"spi_flash_disable_cache"
.LASF11:
	.string	"__uint32_t"
.LASF17:
	.string	"cpuid"
.LASF0:
	.string	"unsigned int"
.LASF10:
	.string	"char"
.LASF24:
	.string	"spi_flash_enable_interrupts_caches_and_other_cpu"
.LASF8:
	.string	"sizetype"
.LASF5:
	.string	"long long int"
.LASF36:
	.string	"spi_flash_init_lock"
.LASF4:
	.string	"short int"
.LASF25:
	.string	"spi_flash_disable_interrupts_caches_and_other_cpu_no_os"
.LASF31:
	.string	"esp_intr_noniram_disable"
.LASF35:
	.string	"C:\\\\esp\\\\ArkPOS2-esp\\\\build\\\\spi_flash"
.LASF12:
	.string	"uint32_t"
.LASF7:
	.string	"long int"
.LASF15:
	.string	"DPORT_REG_READ"
.LASF32:
	.string	"esp_intr_noniram_enable"
.LASF13:
	.string	"_Bool"
.LASF6:
	.string	"long long unsigned int"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-61-gab8375a) 5.2.0"
