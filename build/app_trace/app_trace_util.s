	.file	"app_trace_util.c"
	.text
.Ltext0:
	.section	.text.esp_apptrace_tmo_check,"ax",@progbits
	.literal_position
	.literal .LC0, -2004318071
	.align	4
	.global	esp_apptrace_tmo_check
	.type	esp_apptrace_tmo_check, @function
esp_apptrace_tmo_check:
.LFB17:
	.file 1 "C:/esp/esp-idf/components/app_trace/app_trace_util.c"
	.loc 1 28 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 29 0
	l32i.n	a8, a2, 4
	beqi	a8, -1, .L5
.LBB6:
	.loc 1 30 0
	call8	xthal_get_ccount
.LVL1:
	.loc 1 31 0
	l32i.n	a8, a2, 0
	bltu	a10, a8, .L3
	.loc 1 32 0
	sub	a10, a10, a8
.LVL2:
	l32r	a8, .LC0
	muluh	a10, a10, a8
	srli	a10, a10, 7
	s32i.n	a10, a2, 8
	j	.L4
.LVL3:
.L3:
	.loc 1 34 0
	sub	a10, a10, a8
.LVL4:
	addi.n	a10, a10, -1
	l32r	a8, .LC0
	muluh	a10, a10, a8
	srli	a10, a10, 7
	s32i.n	a10, a2, 8
.L4:
	.loc 1 36 0
	l32i.n	a8, a2, 8
	l32i.n	a2, a2, 4
.LVL5:
	bltu	a8, a2, .L6
	.loc 1 37 0
	movi	a2, 0x107
	retw.n
.LVL6:
.L5:
.LBE6:
	.loc 1 40 0
	movi.n	a2, 0
.LVL7:
	retw.n
.L6:
	movi.n	a2, 0
	.loc 1 41 0
	retw.n
.LFE17:
	.size	esp_apptrace_tmo_check, .-esp_apptrace_tmo_check
	.section	.text.esp_apptrace_lock_take,"ax",@progbits
	.align	4
	.global	esp_apptrace_lock_take
	.type	esp_apptrace_lock_take, @function
esp_apptrace_lock_take:
.LFB18:
	.loc 1 48 0
.LVL8:
	entry	sp, 32
.LCFI1:
.L10:
.LBB7:
.LBB8:
.LBB9:
.LBB10:
	.file 2 "C:/esp/esp-idf/components/freertos/include/freertos/portmacro.h"
	.loc 2 244 0
#APP
# 244 "C:/esp/esp-idf/components/freertos/include/freertos/portmacro.h" 1
	rsil	a4, 3

# 0 "" 2
#NO_APP
	mov.n	a5, a4
.LVL9:
.LBE10:
.LBE9:
.LBE8:
	.loc 1 57 0
	movi.n	a11, 0
	mov.n	a10, a2
	call8	vPortCPUAcquireMutexTimeout
.LVL10:
	.loc 1 58 0
	beqz.n	a10, .L8
	.loc 1 59 0
	s32i.n	a4, a2, 8
	.loc 1 60 0
	movi.n	a2, 0
.LVL11:
	retw.n
.LVL12:
.L8:
	.loc 1 62 0
	mov.n	a10, a4
.LVL13:
	call8	_xtos_set_intlevel
.LVL14:
	.loc 1 64 0
	mov.n	a10, a3
	call8	esp_apptrace_tmo_check
.LVL15:
	.loc 1 65 0
	beqz.n	a10, .L10
.LBE7:
	.loc 1 69 0
	mov.n	a2, a10
.LVL16:
	.loc 1 70 0
	retw.n
.LFE18:
	.size	esp_apptrace_lock_take, .-esp_apptrace_lock_take
	.section	.text.esp_apptrace_lock_give,"ax",@progbits
	.align	4
	.global	esp_apptrace_lock_give
	.type	esp_apptrace_lock_give, @function
esp_apptrace_lock_give:
.LFB19:
	.loc 1 73 0
.LVL17:
	entry	sp, 32
.LCFI2:
	mov.n	a10, a2
	.loc 1 75 0
	l32i.n	a2, a2, 8
.LVL18:
	.loc 1 78 0
	call8	vPortCPUReleaseMutex
.LVL19:
	.loc 1 79 0
	mov.n	a10, a2
	call8	_xtos_set_intlevel
.LVL20:
	.loc 1 81 0
	movi.n	a2, 0
.LVL21:
	retw.n
.LFE19:
	.size	esp_apptrace_lock_give, .-esp_apptrace_lock_give
	.section	.text.esp_apptrace_rb_produce,"ax",@progbits
	.align	4
	.global	esp_apptrace_rb_produce
	.type	esp_apptrace_rb_produce, @function
esp_apptrace_rb_produce:
.LFB20:
	.loc 1 88 0
.LVL22:
	entry	sp, 32
.LCFI3:
	mov.n	a8, a2
	.loc 1 89 0
	l32i.n	a2, a2, 0
.LVL23:
	memw
	l32i.n	a9, a8, 16
	add.n	a11, a2, a9
.LVL24:
	.loc 1 91 0
	memw
	l32i.n	a9, a8, 12
	memw
	l32i.n	a10, a8, 16
	bltu	a10, a9, .L13
	.loc 1 93 0
	memw
	l32i.n	a9, a8, 16
	add.n	a9, a9, a3
	memw
	l32i.n	a10, a8, 4
	bltu	a9, a10, .L14
	.loc 1 94 0
	memw
	l32i.n	a9, a8, 12
	beqz.n	a9, .L18
	.loc 1 97 0
	memw
	l32i.n	a9, a8, 16
	add.n	a9, a3, a9
	memw
	l32i.n	a10, a8, 4
	bne	a9, a10, .L16
	.loc 1 98 0
	movi.n	a2, 0
	memw
	s32i.n	a2, a8, 16
	.loc 1 89 0
	mov.n	a2, a11
	retw.n
.L16:
	.loc 1 101 0
	memw
	l32i.n	a9, a8, 12
	addi.n	a9, a9, -1
	bltu	a9, a3, .L19
	.loc 1 105 0
	memw
	l32i.n	a9, a8, 16
	memw
	s32i.n	a9, a8, 8
	.loc 1 106 0
	movi.n	a9, 0
	memw
	s32i.n	a9, a8, 16
.LVL25:
	.loc 1 108 0
	memw
	l32i.n	a10, a8, 12
	memw
	l32i.n	a9, a8, 8
	bne	a10, a9, .L17
	.loc 1 109 0
	movi.n	a9, 0
	memw
	s32i.n	a9, a8, 12
	.loc 1 110 0
	memw
	l32i.n	a10, a8, 8
	memw
	l32i.n	a9, a8, 4
	bgeu	a10, a9, .L17
	.loc 1 111 0
	memw
	l32i.n	a9, a8, 4
	memw
	s32i.n	a9, a8, 8
.L17:
	.loc 1 114 0
	memw
	l32i.n	a9, a8, 16
	add.n	a3, a3, a9
.LVL26:
	memw
	s32i.n	a3, a8, 16
	retw.n
.LVL27:
.L14:
	.loc 1 117 0
	memw
	l32i.n	a2, a8, 16
	add.n	a3, a3, a2
.LVL28:
	memw
	s32i.n	a3, a8, 16
	.loc 1 89 0
	mov.n	a2, a11
	retw.n
.LVL29:
.L13:
	.loc 1 121 0
	memw
	l32i.n	a2, a8, 12
	memw
	l32i.n	a9, a8, 16
	sub	a2, a2, a9
	addi.n	a2, a2, -1
	bltu	a2, a3, .L20
	.loc 1 124 0
	memw
	l32i.n	a2, a8, 16
	add.n	a3, a3, a2
.LVL30:
	memw
	s32i.n	a3, a8, 16
	.loc 1 89 0
	mov.n	a2, a11
	retw.n
.LVL31:
.L18:
	.loc 1 95 0
	movi.n	a2, 0
	retw.n
.L19:
	.loc 1 102 0
	movi.n	a2, 0
	retw.n
.L20:
	.loc 1 122 0
	movi.n	a2, 0
	.loc 1 127 0
	retw.n
.LFE20:
	.size	esp_apptrace_rb_produce, .-esp_apptrace_rb_produce
	.section	.text.esp_apptrace_rb_consume,"ax",@progbits
	.align	4
	.global	esp_apptrace_rb_consume
	.type	esp_apptrace_rb_consume, @function
esp_apptrace_rb_consume:
.LFB21:
	.loc 1 130 0
.LVL32:
	entry	sp, 32
.LCFI4:
	.loc 1 131 0
	l32i.n	a10, a2, 0
	memw
	l32i.n	a8, a2, 12
	add.n	a10, a10, a8
.LVL33:
	.loc 1 132 0
	memw
	l32i.n	a8, a2, 12
	memw
	l32i.n	a9, a2, 16
	bltu	a9, a8, .L22
	.loc 1 134 0
	memw
	l32i.n	a8, a2, 12
	add.n	a8, a8, a3
	memw
	l32i.n	a9, a2, 16
	bltu	a9, a8, .L26
	.loc 1 137 0
	memw
	l32i.n	a8, a2, 12
	add.n	a3, a3, a8
.LVL34:
	memw
	s32i.n	a3, a2, 12
	.loc 1 152 0
	mov.n	a2, a10
.LVL35:
	retw.n
.LVL36:
.L22:
	.loc 1 140 0
	memw
	l32i.n	a8, a2, 12
	add.n	a8, a3, a8
	memw
	l32i.n	a9, a2, 8
	bltu	a9, a8, .L27
	.loc 1 142 0
	memw
	l32i.n	a8, a2, 12
	add.n	a8, a3, a8
	memw
	l32i.n	a9, a2, 8
	bne	a8, a9, .L24
	.loc 1 144 0
	memw
	l32i.n	a8, a2, 8
	memw
	l32i.n	a3, a2, 4
.LVL37:
	bgeu	a8, a3, .L25
	.loc 1 145 0
	memw
	l32i.n	a3, a2, 4
	memw
	s32i.n	a3, a2, 8
.L25:
	.loc 1 147 0
	movi.n	a3, 0
	memw
	s32i.n	a3, a2, 12
	.loc 1 152 0
	mov.n	a2, a10
.LVL38:
	retw.n
.LVL39:
.L24:
	.loc 1 149 0
	memw
	l32i.n	a8, a2, 12
	add.n	a3, a3, a8
.LVL40:
	memw
	s32i.n	a3, a2, 12
	.loc 1 152 0
	mov.n	a2, a10
.LVL41:
	retw.n
.LVL42:
.L26:
	.loc 1 135 0
	movi.n	a2, 0
.LVL43:
	retw.n
.LVL44:
.L27:
	.loc 1 141 0
	movi.n	a2, 0
.LVL45:
	.loc 1 153 0
	retw.n
.LFE21:
	.size	esp_apptrace_rb_consume, .-esp_apptrace_rb_consume
	.section	.text.esp_apptrace_rb_read_size_get,"ax",@progbits
	.align	4
	.global	esp_apptrace_rb_read_size_get
	.type	esp_apptrace_rb_read_size_get, @function
esp_apptrace_rb_read_size_get:
.LFB22:
	.loc 1 156 0
.LVL46:
	entry	sp, 32
.LCFI5:
.LVL47:
	.loc 1 158 0
	memw
	l32i.n	a8, a2, 12
	memw
	l32i.n	a9, a2, 16
	bltu	a9, a8, .L29
	.loc 1 160 0
	memw
	l32i.n	a8, a2, 16
	memw
	l32i.n	a2, a2, 12
.LVL48:
	sub	a2, a8, a2
.LVL49:
	retw.n
.LVL50:
.L29:
	.loc 1 163 0
	memw
	l32i.n	a8, a2, 8
	memw
	l32i.n	a2, a2, 12
.LVL51:
	sub	a2, a8, a2
.LVL52:
	.loc 1 166 0
	retw.n
.LFE22:
	.size	esp_apptrace_rb_read_size_get, .-esp_apptrace_rb_read_size_get
	.section	.text.esp_apptrace_rb_write_size_get,"ax",@progbits
	.align	4
	.global	esp_apptrace_rb_write_size_get
	.type	esp_apptrace_rb_write_size_get, @function
esp_apptrace_rb_write_size_get:
.LFB23:
	.loc 1 169 0
.LVL53:
	entry	sp, 32
.LCFI6:
.LVL54:
	.loc 1 171 0
	memw
	l32i.n	a8, a2, 12
	memw
	l32i.n	a9, a2, 16
	bltu	a9, a8, .L32
	.loc 1 173 0
	memw
	l32i.n	a8, a2, 4
	memw
	l32i.n	a9, a2, 16
	sub	a8, a8, a9
.LVL55:
	.loc 1 174 0
	beqz.n	a8, .L33
	.loc 1 174 0 is_stmt 0 discriminator 1
	memw
	l32i.n	a2, a2, 12
.LVL56:
	bnez.n	a2, .L33
	.loc 1 175 0 is_stmt 1
	addi.n	a8, a8, -1
.LVL57:
	j	.L33
.LVL58:
.L32:
	.loc 1 179 0
	memw
	l32i.n	a8, a2, 12
	memw
	l32i.n	a2, a2, 16
.LVL59:
	sub	a8, a8, a2
	addi.n	a8, a8, -1
.LVL60:
.L33:
	.loc 1 182 0
	mov.n	a2, a8
	retw.n
.LFE23:
	.size	esp_apptrace_rb_write_size_get, .-esp_apptrace_rb_write_size_get
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
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI0-.LFB17
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI1-.LFB18
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI2-.LFB19
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI3-.LFB20
	.byte	0xe
	.uleb128 0x20
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
	.text
.Letext0:
	.file 3 "C:/esp/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "C:/esp/esp-idf/components/newlib/include/stdint.h"
	.file 5 "C:/esp/esp-idf/components/esp32/include/esp_err.h"
	.file 6 "C:/esp/esp-idf/components/app_trace/include/esp_app_trace_util.h"
	.file 7 "C:/esp/esp-idf/components/esp32/include/xtensa/hal.h"
	.file 8 "C:/esp/esp-idf/components/esp32/include/xtensa/xtruntime.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x497
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF46
	.byte	0xc
	.4byte	.LASF47
	.4byte	.LASF48
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
	.byte	0x3
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
	.byte	0x3
	.byte	0x19
	.4byte	0x25
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x3
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
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x4
	.byte	0x15
	.4byte	0x41
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x4
	.byte	0x2c
	.4byte	0x5a
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x4
	.byte	0x2d
	.4byte	0x65
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF17
	.uleb128 0x5
	.byte	0x8
	.byte	0x2
	.byte	0x84
	.4byte	0xe3
	.uleb128 0x6
	.4byte	.LASF18
	.byte	0x2
	.byte	0x85
	.4byte	0xb0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0x2
	.byte	0x86
	.4byte	0xb0
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x2
	.byte	0x8b
	.4byte	0xc2
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x5
	.byte	0x18
	.4byte	0xa5
	.uleb128 0x7
	.4byte	0xb0
	.uleb128 0x5
	.byte	0xc
	.byte	0x6
	.byte	0x1c
	.4byte	0x12b
	.uleb128 0x6
	.4byte	.LASF22
	.byte	0x6
	.byte	0x1d
	.4byte	0xb0
	.byte	0
	.uleb128 0x8
	.string	"tmo"
	.byte	0x6
	.byte	0x1e
	.4byte	0xb0
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF23
	.byte	0x6
	.byte	0x1f
	.4byte	0xb0
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.4byte	.LASF24
	.byte	0x6
	.byte	0x20
	.4byte	0xfe
	.uleb128 0x5
	.byte	0xc
	.byte	0x6
	.byte	0x3d
	.4byte	0x157
	.uleb128 0x8
	.string	"mux"
	.byte	0x6
	.byte	0x3e
	.4byte	0xe3
	.byte	0
	.uleb128 0x6
	.4byte	.LASF25
	.byte	0x6
	.byte	0x3f
	.4byte	0x2c
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.4byte	.LASF26
	.byte	0x6
	.byte	0x40
	.4byte	0x136
	.uleb128 0x5
	.byte	0x14
	.byte	0x6
	.byte	0x65
	.4byte	0x1a5
	.uleb128 0x6
	.4byte	.LASF27
	.byte	0x6
	.byte	0x66
	.4byte	0x1a5
	.byte	0
	.uleb128 0x6
	.4byte	.LASF28
	.byte	0x6
	.byte	0x67
	.4byte	0xf9
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF29
	.byte	0x6
	.byte	0x68
	.4byte	0xf9
	.byte	0x8
	.uleb128 0x8
	.string	"rd"
	.byte	0x6
	.byte	0x69
	.4byte	0xf9
	.byte	0xc
	.uleb128 0x8
	.string	"wr"
	.byte	0x6
	.byte	0x6a
	.4byte	0xf9
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x9a
	.uleb128 0x4
	.4byte	.LASF30
	.byte	0x6
	.byte	0x6b
	.4byte	0x162
	.uleb128 0xa
	.4byte	.LASF49
	.byte	0x2
	.byte	0xf4
	.4byte	0x2c
	.byte	0x3
	.4byte	0x1df
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x2
	.byte	0xf4
	.4byte	0x2c
	.uleb128 0xc
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x2
	.byte	0xf4
	.4byte	0x2c
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF33
	.byte	0x1
	.byte	0x1b
	.4byte	0xee
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x22a
	.uleb128 0xe
	.string	"tmo"
	.byte	0x1
	.byte	0x1b
	.4byte	0x22a
	.4byte	.LLST0
	.uleb128 0xf
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.uleb128 0x10
	.string	"cur"
	.byte	0x1
	.byte	0x1e
	.4byte	0x2c
	.4byte	.LLST1
	.uleb128 0x11
	.4byte	.LVL1
	.4byte	0x46d
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x12b
	.uleb128 0xd
	.4byte	.LASF34
	.byte	0x1
	.byte	0x2f
	.4byte	0xee
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x30c
	.uleb128 0x12
	.4byte	.LASF35
	.byte	0x1
	.byte	0x2f
	.4byte	0x30c
	.4byte	.LLST2
	.uleb128 0x13
	.string	"tmo"
	.byte	0x1
	.byte	0x2f
	.4byte	0x22a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x14
	.string	"res"
	.byte	0x1
	.byte	0x31
	.4byte	0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0xf
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.uleb128 0x15
	.4byte	.LASF25
	.byte	0x1
	.byte	0x35
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x16
	.4byte	.LASF36
	.byte	0x1
	.byte	0x39
	.4byte	0xbb
	.4byte	.LLST3
	.uleb128 0x17
	.4byte	0x1b6
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.byte	0x1
	.byte	0x35
	.4byte	0x2cd
	.uleb128 0xf
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.uleb128 0x18
	.4byte	0x1c6
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xf
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.uleb128 0x18
	.4byte	0x1d2
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL10
	.4byte	0x479
	.4byte	0x2e6
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
	.4byte	.LVL14
	.4byte	0x484
	.4byte	0x2fa
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL15
	.4byte	0x1df
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x157
	.uleb128 0xd
	.4byte	.LASF37
	.byte	0x1
	.byte	0x48
	.4byte	0xee
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x36f
	.uleb128 0x12
	.4byte	.LASF35
	.byte	0x1
	.byte	0x48
	.4byte	0x30c
	.4byte	.LLST4
	.uleb128 0x16
	.4byte	.LASF25
	.byte	0x1
	.byte	0x4b
	.4byte	0x2c
	.4byte	.LLST5
	.uleb128 0x19
	.4byte	.LVL19
	.4byte	0x48f
	.4byte	0x35e
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL20
	.4byte	0x484
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF38
	.byte	0x1
	.byte	0x57
	.4byte	0x1a5
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3b5
	.uleb128 0xe
	.string	"rb"
	.byte	0x1
	.byte	0x57
	.4byte	0x3b5
	.4byte	.LLST6
	.uleb128 0x12
	.4byte	.LASF28
	.byte	0x1
	.byte	0x57
	.4byte	0xb0
	.4byte	.LLST7
	.uleb128 0x10
	.string	"ptr"
	.byte	0x1
	.byte	0x59
	.4byte	0x1a5
	.4byte	.LLST8
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x1ab
	.uleb128 0xd
	.4byte	.LASF39
	.byte	0x1
	.byte	0x81
	.4byte	0x1a5
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3ff
	.uleb128 0xe
	.string	"rb"
	.byte	0x1
	.byte	0x81
	.4byte	0x3b5
	.4byte	.LLST9
	.uleb128 0x12
	.4byte	.LASF28
	.byte	0x1
	.byte	0x81
	.4byte	0xb0
	.4byte	.LLST10
	.uleb128 0x14
	.string	"ptr"
	.byte	0x1
	.byte	0x83
	.4byte	0x1a5
	.uleb128 0x1
	.byte	0x5a
	.byte	0
	.uleb128 0xd
	.4byte	.LASF40
	.byte	0x1
	.byte	0x9b
	.4byte	0xb0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x436
	.uleb128 0xe
	.string	"rb"
	.byte	0x1
	.byte	0x9b
	.4byte	0x3b5
	.4byte	.LLST11
	.uleb128 0x16
	.4byte	.LASF28
	.byte	0x1
	.byte	0x9d
	.4byte	0xb0
	.4byte	.LLST12
	.byte	0
	.uleb128 0xd
	.4byte	.LASF41
	.byte	0x1
	.byte	0xa8
	.4byte	0xb0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x46d
	.uleb128 0xe
	.string	"rb"
	.byte	0x1
	.byte	0xa8
	.4byte	0x3b5
	.4byte	.LLST13
	.uleb128 0x16
	.4byte	.LASF28
	.byte	0x1
	.byte	0xaa
	.4byte	0xb0
	.4byte	.LLST14
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF42
	.4byte	.LASF42
	.byte	0x7
	.2byte	0x2d4
	.uleb128 0x1d
	.4byte	.LASF43
	.4byte	.LASF43
	.byte	0x2
	.byte	0xe7
	.uleb128 0x1d
	.4byte	.LASF44
	.4byte	.LASF44
	.byte	0x8
	.byte	0x99
	.uleb128 0x1d
	.4byte	.LASF45
	.4byte	.LASF45
	.byte	0x2
	.byte	0xe8
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
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x18
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
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
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL8
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL16
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL10
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL18
	.4byte	.LVL19-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL19-1
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL18
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL23
	.4byte	.LFE20
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL22
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LFE20
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL25
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL27
	.4byte	.LFE20
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL32
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
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL45
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL32
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL34
	.4byte	.LVL36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL37
	.4byte	.LVL39
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL40
	.4byte	.LVL42
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LFE21
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL46
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL48
	.4byte	.LVL50
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL51
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL47
	.4byte	.LVL49
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL50
	.4byte	.LVL52
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL52
	.4byte	.LFE22
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL53
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL56
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
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL55
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL58
	.4byte	.LVL60
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL60
	.4byte	.LFE23
	.2byte	0x1
	.byte	0x58
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
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF36:
	.string	"success"
.LASF41:
	.string	"esp_apptrace_rb_write_size_get"
.LASF5:
	.string	"__uint8_t"
.LASF37:
	.string	"esp_apptrace_lock_give"
.LASF31:
	.string	"state"
.LASF19:
	.string	"count"
.LASF20:
	.string	"portMUX_TYPE"
.LASF22:
	.string	"start"
.LASF1:
	.string	"short unsigned int"
.LASF6:
	.string	"__int32_t"
.LASF39:
	.string	"esp_apptrace_rb_consume"
.LASF46:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF33:
	.string	"esp_apptrace_tmo_check"
.LASF43:
	.string	"vPortCPUAcquireMutexTimeout"
.LASF45:
	.string	"vPortCPUReleaseMutex"
.LASF27:
	.string	"data"
.LASF9:
	.string	"long long unsigned int"
.LASF3:
	.string	"unsigned char"
.LASF29:
	.string	"cur_size"
.LASF7:
	.string	"__uint32_t"
.LASF12:
	.string	"long unsigned int"
.LASF34:
	.string	"esp_apptrace_lock_take"
.LASF47:
	.string	"C:/esp/esp-idf/components/app_trace/app_trace_util.c"
.LASF25:
	.string	"int_state"
.LASF48:
	.string	"C:\\\\esp\\\\esp32-ArkPOS2\\\\ArkPOS2-esp\\\\build\\\\app_trace"
.LASF26:
	.string	"esp_apptrace_lock_t"
.LASF42:
	.string	"xthal_get_ccount"
.LASF18:
	.string	"owner"
.LASF0:
	.string	"unsigned int"
.LASF49:
	.string	"portENTER_CRITICAL_NESTED"
.LASF24:
	.string	"esp_apptrace_tmo_t"
.LASF13:
	.string	"char"
.LASF14:
	.string	"uint8_t"
.LASF23:
	.string	"elapsed"
.LASF40:
	.string	"esp_apptrace_rb_read_size_get"
.LASF21:
	.string	"esp_err_t"
.LASF15:
	.string	"int32_t"
.LASF11:
	.string	"sizetype"
.LASF44:
	.string	"_xtos_set_intlevel"
.LASF8:
	.string	"long long int"
.LASF4:
	.string	"short int"
.LASF32:
	.string	"__tmp"
.LASF16:
	.string	"uint32_t"
.LASF10:
	.string	"long int"
.LASF2:
	.string	"signed char"
.LASF35:
	.string	"lock"
.LASF28:
	.string	"size"
.LASF17:
	.string	"_Bool"
.LASF38:
	.string	"esp_apptrace_rb_produce"
.LASF30:
	.string	"esp_apptrace_rb_t"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-73-ge28a011) 5.2.0"
