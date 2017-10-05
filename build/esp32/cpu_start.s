	.file	"cpu_start.c"
	.text
.Ltext0:
	.section	.text.main_task,"ax",@progbits
	.literal_position
	.literal .LC1, 1073082440
	.literal .LC2, 1072988300
	.align	4
	.type	main_task, @function
main_task:
.LFB36:
	.file 1 "C:/esp/esp-idf/components/esp32/cpu_start.c"
	.loc 1 391 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 393 0
	l32r	a9, .LC1
	memw
	l32i.n	a10, a9, 0
	movi.n	a8, -0xf
	and	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
	.loc 1 394 0
	l32r	a9, .LC2
	memw
	l32i.n	a10, a9, 0
	movi	a8, -0x401
	and	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
	.loc 1 402 0
	call8	heap_caps_enable_nonos_stack_heaps
.LVL1:
	.loc 1 403 0
	call8	app_main
.LVL2:
	.loc 1 404 0
	movi.n	a10, 0
	call8	vTaskDelete
.LVL3:
	retw.n
.LFE36:
	.size	main_task, .-main_task
	.section	.text.intr_matrix_clear,"ax",@progbits
	.align	4
	.type	intr_matrix_clear, @function
intr_matrix_clear:
.LFB33:
	.loc 1 244 0
	entry	sp, 32
.LCFI1:
.LVL4:
.LBB13:
	.loc 1 246 0
	movi.n	a2, 0
	j	.L3
.LVL5:
.L4:
	.loc 1 247 0 discriminator 3
	movi.n	a12, 6
	mov.n	a11, a2
	movi.n	a10, 0
	call8	intr_matrix_set
.LVL6:
	.loc 1 246 0 discriminator 3
	addi.n	a2, a2, 1
.LVL7:
.L3:
	.loc 1 246 0 is_stmt 0 discriminator 1
	movi.n	a8, 0x44
	bge	a8, a2, .L4
.LBE13:
	.loc 1 252 0 is_stmt 1
	retw.n
.LFE33:
	.size	intr_matrix_clear, .-intr_matrix_clear
	.section	.text.do_global_ctors,"ax",@progbits
	.literal_position
	.literal .LC3, __init_array_end-4
	.literal .LC4, ob$7371
	.literal .LC5, __eh_frame
	.literal .LC6, __init_array_start
	.align	4
	.type	do_global_ctors, @function
do_global_ctors:
.LFB35:
	.loc 1 380 0
	entry	sp, 32
.LCFI2:
	.loc 1 382 0
	l32r	a11, .LC4
	l32r	a10, .LC5
	call8	__register_frame_info
.LVL8:
	.loc 1 385 0
	l32r	a2, .LC3
.LVL9:
	j	.L6
.L7:
	.loc 1 386 0 discriminator 3
	l32i.n	a8, a2, 0
	callx8	a8
.LVL10:
	.loc 1 385 0 discriminator 3
	addi	a2, a2, -4
.LVL11:
.L6:
	.loc 1 385 0 is_stmt 0 discriminator 1
	l32r	a8, .LC6
	bgeu	a2, a8, .L7
	.loc 1 388 0 is_stmt 1
	retw.n
.LFE35:
	.size	do_global_ctors, .-do_global_ctors
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC9:
	.string	"r"
	.align	4
.LC11:
	.string	"/dev/uart/0"
	.align	4
.LC13:
	.string	"w"
	.align	4
.LC15:
	.string	"err == ESP_OK && \"Failed to init pthread module!\""
	.align	4
.LC18:
	.string	"C:/esp/esp-idf/components/esp32/cpu_start.c"
	.align	4
.LC22:
	.string	"main"
	.align	4
.LC25:
	.string	"res == pdTRUE"
	.align	4
.LC27:
	.string	"cpu_start"
	.align	4
.LC29:
	.string	"\033[0;32mI (%d) %s: Starting scheduler on PRO CPU.\033[0m\n"
	.section	.iram1,"ax",@progbits
	.literal_position
	.literal .LC7, -1851608123
	.literal .LC8, _global_impure_ptr
	.literal .LC10, .LC9
	.literal .LC12, .LC11
	.literal .LC14, .LC13
	.literal .LC16, .LC15
	.literal .LC17, __func__$7366
	.literal .LC19, .LC18
	.literal .LC20, g_flash_guard_default_ops
	.literal .LC21, 4096
	.literal .LC23, .LC22
	.literal .LC24, main_task
	.literal .LC26, .LC25
	.literal .LC28, .LC27
	.literal .LC30, .LC29
	.align	4
	.global	start_cpu0_default
	.type	start_cpu0_default, @function
start_cpu0_default:
.LFB34:
	.loc 1 255 0
	entry	sp, 48
.LCFI3:
	.loc 1 257 0
	call8	esp_setup_syscall_table
.LVL12:
	.loc 1 286 0
	call8	esp_clk_init
.LVL13:
	.loc 1 287 0
	call8	esp_perip_clk_init
.LVL14:
	.loc 1 288 0
	call8	intr_matrix_clear
.LVL15:
	.loc 1 290 0
	call8	rtc_clk_apb_freq_get
.LVL16:
	slli	a10, a10, 4
	l32r	a2, .LC7
	muluh	a11, a10, a2
	extui	a11, a11, 16, 16
	movi.n	a10, 0
	call8	uart_div_modify
.LVL17:
	.loc 1 293 0
	call8	esp_brownout_init
.LVL18:
	.loc 1 298 0
	call8	rtc_gpio_force_hold_dis_all
.LVL19:
	.loc 1 299 0
	call8	esp_vfs_dev_uart_register
.LVL20:
	.loc 1 300 0
	l32r	a2, .LC8
	l32i.n	a10, a2, 0
	call8	esp_reent_init
.LVL21:
	.loc 1 303 0
	l32i.n	a4, a2, 0
	l32r	a3, .LC12
	l32r	a11, .LC10
	mov.n	a10, a3
	call8	fopen
.LVL22:
	s32i.n	a10, a4, 4
	.loc 1 304 0
	l32i.n	a5, a2, 0
	l32r	a4, .LC14
	mov.n	a11, a4
	mov.n	a10, a3
	call8	fopen
.LVL23:
	s32i.n	a10, a5, 8
	.loc 1 305 0
	l32i.n	a2, a2, 0
	mov.n	a11, a4
	mov.n	a10, a3
	call8	fopen
.LVL24:
	s32i.n	a10, a2, 12
	.loc 1 311 0
	call8	esp_timer_init
.LVL25:
	.loc 1 312 0
	call8	esp_set_time_from_rtc
.LVL26:
	.loc 1 320 0
	call8	esp_pthread_init
.LVL27:
	.loc 1 321 0
	beqz.n	a10, .L9
	.loc 1 321 0 is_stmt 0 discriminator 1
	l32r	a13, .LC16
	l32r	a12, .LC17
	movi	a11, 0x141
	l32r	a10, .LC19
.LVL28:
	call8	__assert_func
.LVL29:
.L9:
	.loc 1 323 0 is_stmt 1
	call8	do_global_ctors
.LVL30:
	.loc 1 325 0
	call8	esp_int_wdt_init
.LVL31:
	.loc 1 328 0
	call8	esp_task_wdt_init
.LVL32:
	.loc 1 330 0
	call8	esp_cache_err_int_init
.LVL33:
	.loc 1 331 0
	call8	esp_crosscore_int_init
.LVL34:
	.loc 1 332 0
	call8	esp_ipc_init
.LVL35:
	.loc 1 336 0
	call8	spi_flash_init
.LVL36:
	.loc 1 338 0
	l32r	a10, .LC20
	call8	spi_flash_guard_set
.LVL37:
	.loc 1 344 0
	movi.n	a13, 0
	s32i.n	a13, sp, 0
	mov.n	a15, a13
	movi.n	a14, 1
	l32r	a12, .LC21
	l32r	a11, .LC23
	l32r	a10, .LC24
	call8	xTaskCreatePinnedToCore
.LVL38:
	.loc 1 347 0
	beqi	a10, 1, .L10
	.loc 1 347 0 is_stmt 0 discriminator 1
	l32r	a13, .LC26
	l32r	a12, .LC17
	movi	a11, 0x15b
	l32r	a10, .LC19
.LVL39:
	call8	__assert_func
.LVL40:
.L10:
	.loc 1 348 0 is_stmt 1 discriminator 1
	call8	esp_log_timestamp
.LVL41:
	l32r	a11, .LC28
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC30
	movi.n	a10, 3
	call8	esp_log_write
.LVL42:
	.loc 1 349 0 discriminator 1
	call8	vTaskStartScheduler
.LVL43:
	.loc 1 350 0 discriminator 1
	call8	abort
.LVL44:
.LFE34:
	.size	start_cpu0_default, .-start_cpu0_default
	.weak	start_cpu0
	.set	start_cpu0,start_cpu0_default
	.section	.rodata.str1.4
	.align	4
.LC36:
	.string	"ERROR: Static .bss section extends past 0x3FFE0000. IDF cannot boot.\n"
	.align	4
.LC42:
	.string	"\033[0;32mI (%d) %s: Pro cpu up.\033[0m\n"
	.align	4
.LC44:
	.string	"\033[0;32mI (%d) %s: Single core mode\033[0m\n"
	.align	4
.LC47:
	.string	"\033[0;32mI (%d) %s: Pro cpu start user code\033[0m\n"
	.section	.rodata
	.align	4
.LC0:
	.word	0
	.word	-2147483648
	.word	-1610612736
	.word	-1073741824
	.word	-536870912
	.section	.iram1
	.literal_position
	.literal .LC31, .LC0
	.literal .LC32, 536870912
	.literal .LC33, _init_start
	.literal .LC34, _bss_end
	.literal .LC35, 1073610752
	.literal .LC37, .LC36
	.literal .LC38, _bss_start
	.literal .LC39, _rtc_bss_end
	.literal .LC40, _rtc_bss_start
	.literal .LC41, .LC27
	.literal .LC43, .LC42
	.literal .LC45, .LC44
	.literal .LC46, 1072693296
	.literal .LC48, .LC47
	.align	4
	.global	call_start_cpu0
	.type	call_start_cpu0, @function
call_start_cpu0:
.LFB32:
	.loc 1 109 0
	entry	sp, 64
.LCFI4:
.LBB27:
.LBB28:
	.file 2 "C:/esp/esp-idf/components/soc/esp32/include/soc/cpu.h"
	.loc 2 67 0
	movi.n	a12, 0x14
	l32r	a11, .LC31
	mov.n	a10, sp
	call8	memcpy
.LVL45:
.LBB29:
	.loc 2 68 0
	movi.n	a8, 0
	j	.L12
.LVL46:
.L13:
	.loc 2 69 0
	addx4	a9, a8, sp
	l32i.n	a9, a9, 0
.LVL47:
.LBB30:
.LBB31:
	.loc 2 45 0
	movi.n	a10, 0xf
#APP
# 45 "C:/esp/esp-idf/components/soc/esp32/include/soc/cpu.h" 1
	wdtlb  a10, a9; dsync

# 0 "" 2
.LVL48:
#NO_APP
.LBE31:
.LBE30:
.LBB32:
.LBB33:
	.loc 2 51 0
#APP
# 51 "C:/esp/esp-idf/components/soc/esp32/include/soc/cpu.h" 1
	witlb  a10, a9; isync

# 0 "" 2
#NO_APP
.LBE33:
.LBE32:
	.loc 2 68 0
	addi.n	a8, a8, 1
.LVL49:
.L12:
	bltui	a8, 5, .L13
.LVL50:
.LBE29:
.LBB34:
.LBB35:
	.loc 2 45 0
	l32r	a3, .LC32
	movi.n	a2, 0
#APP
# 45 "C:/esp/esp-idf/components/soc/esp32/include/soc/cpu.h" 1
	wdtlb  a2, a3; dsync

# 0 "" 2
.LVL51:
#NO_APP
.LBE35:
.LBE34:
.LBB36:
.LBB37:
	.loc 2 51 0
#APP
# 51 "C:/esp/esp-idf/components/soc/esp32/include/soc/cpu.h" 1
	witlb  a2, a3; isync

# 0 "" 2
#NO_APP
.LBE37:
.LBE36:
.LBE28:
.LBE27:
	.loc 1 118 0
	l32r	a3, .LC33
#APP
# 118 "C:/esp/esp-idf/components/esp32/cpu_start.c" 1
	wsr    a3, vecbase

# 0 "" 2
	.loc 1 122 0
#NO_APP
	mov.n	a10, a2
	call8	rtc_get_reset_reason
.LVL52:
	mov.n	a3, a10
	.loc 1 129 0
	addi	a11, a10, -9
	movi.n	a8, 1
	mov.n	a4, a2
	moveqz	a4, a8, a11
	addi	a9, a10, -7
	mov.n	a10, a2
	moveqz	a10, a8, a9
	or	a8, a4, a10
	beq	a8, a2, .L14
	.loc 1 134 0
	call8	esp_panic_wdt_stop
.LVL53:
.L14:
	.loc 1 138 0
	l32r	a12, .LC34
	l32r	a2, .LC35
	bge	a2, a12, .L15
	.loc 1 140 0
	l32r	a10, .LC37
	call8	ets_printf
.LVL54:
	.loc 1 141 0
	call8	abort
.LVL55:
.L15:
	.loc 1 145 0
	l32r	a10, .LC38
	sub	a12, a12, a10
	movi.n	a11, 0
	call8	memset
.LVL56:
	.loc 1 148 0
	beqi	a3, 5, .L16
	.loc 1 149 0
	l32r	a10, .LC40
	l32r	a12, .LC39
	sub	a12, a12, a10
	movi.n	a11, 0
	call8	memset
.LVL57:
.L16:
	.loc 1 159 0 discriminator 1
	call8	esp_log_timestamp
.LVL58:
	l32r	a2, .LC41
	mov.n	a12, a2
	mov.n	a11, a10
	l32r	a10, .LC43
	call8	ets_printf
.LVL59:
	.loc 1 183 0 discriminator 1
	call8	esp_log_timestamp
.LVL60:
	mov.n	a12, a2
	mov.n	a11, a10
	l32r	a10, .LC45
	call8	ets_printf
.LVL61:
.LBB38:
.LBB39:
	.file 3 "C:/esp/esp-idf/components/soc/esp32/include/soc/dport_access.h"
	.loc 3 102 0 discriminator 1
	l32r	a8, .LC46
	memw
	l32i.n	a9, a8, 0
.LVL62:
.LBE39:
.LBE38:
	.loc 1 184 0 discriminator 1
	movi.n	a3, -2
	and	a3, a9, a3
	memw
	s32i.n	a3, a8, 0
	.loc 1 204 0 discriminator 1
	call8	heap_caps_init
.LVL63:
	.loc 1 206 0 discriminator 1
	call8	esp_log_timestamp
.LVL64:
	mov.n	a12, a2
	mov.n	a11, a10
	l32r	a10, .LC48
	call8	ets_printf
.LVL65:
	.loc 1 207 0 discriminator 1
	call8	start_cpu0
.LVL66:
.LFE32:
	.size	call_start_cpu0, .-call_start_cpu0
	.section	.bss.ob$7371,"aw",@nobits
	.align	4
	.type	ob$7371, @object
	.size	ob$7371, 40
ob$7371:
	.zero	40
	.section	.rodata.__func__$7366,"a",@progbits
	.align	4
	.type	__func__$7366, @object
	.size	__func__$7366, 19
__func__$7366:
	.string	"start_cpu0_default"
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
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI0-.LFB36
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI1-.LFB33
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI2-.LFB35
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI3-.LFB34
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI4-.LFB32
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE8:
	.text
.Letext0:
	.file 4 "C:/esp/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 5 "C:/esp/esp-idf/components/newlib/include/stdint.h"
	.file 6 "C:/esp/esp-idf/components/newlib/include/sys/lock.h"
	.file 7 "C:/esp/esp-idf/components/newlib/include/sys/_types.h"
	.file 8 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 9 "C:/esp/esp-idf/components/newlib/include/sys/reent.h"
	.file 10 "C:/esp/esp-idf/components/esp32/include/esp_err.h"
	.file 11 "C:/esp/esp-idf/components/esp32/include/rom/rtc.h"
	.file 12 "C:/esp/esp-idf/components/driver/include/driver/rtc_io.h"
	.file 13 "C:/esp/esp-idf/components/freertos/include/freertos/portmacro.h"
	.file 14 "C:/esp/esp-idf/components/spi_flash/include/esp_spi_flash.h"
	.file 15 "C:/esp/esp-idf/components/log/include/esp_log.h"
	.file 16 "C:/esp/esp-idf/components/heap/include/esp_heap_caps_init.h"
	.file 17 "C:/esp/esp-idf/components/freertos/include/freertos/task.h"
	.file 18 "C:/esp/esp-idf/components/esp32/include/rom/ets_sys.h"
	.file 19 "C:/esp/esp-idf/components/newlib/platform_include/esp_newlib.h"
	.file 20 "C:/esp/esp-idf/components/esp32/include/esp_clk.h"
	.file 21 "C:/esp/esp-idf/components/soc/esp32/include/soc/rtc.h"
	.file 22 "C:/esp/esp-idf/components/esp32/include/rom/uart.h"
	.file 23 "C:/esp/esp-idf/components/esp32/include/esp_brownout.h"
	.file 24 "C:/esp/esp-idf/components/vfs/include/esp_vfs_dev.h"
	.file 25 "C:/esp/esp-idf/components/newlib/include/stdio.h"
	.file 26 "C:/esp/esp-idf/components/esp32/esp_timer.h"
	.file 27 "C:/esp/esp-idf/components/newlib/include/assert.h"
	.file 28 "C:/esp/esp-idf/components/esp32/include/esp_int_wdt.h"
	.file 29 "C:/esp/esp-idf/components/esp32/include/esp_task_wdt.h"
	.file 30 "C:/esp/esp-idf/components/esp32/include/esp_cache_err_int.h"
	.file 31 "C:/esp/esp-idf/components/esp32/include/esp_crosscore_int.h"
	.file 32 "C:/esp/esp-idf/components/esp32/include/esp_ipc.h"
	.file 33 "C:/esp/esp-idf/components/newlib/include/stdlib.h"
	.file 34 "C:/esp/esp-idf/components/esp32/include/esp_panic.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x12ac
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF229
	.byte	0xc
	.4byte	.LASF230
	.4byte	.LASF231
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
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
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x4
	.byte	0x19
	.4byte	0x4c
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x4
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
	.byte	0x4
	.byte	0x31
	.4byte	0x4c
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x5
	.byte	0x2c
	.4byte	0x41
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x5
	.byte	0x2d
	.4byte	0x53
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x5
	.byte	0xa9
	.4byte	0x73
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x6
	.byte	0xb
	.4byte	0x4c
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x6
	.byte	0xc
	.4byte	0x9f
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x7
	.byte	0x10
	.4byte	0xc0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF16
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x7
	.byte	0x27
	.4byte	0xc0
	.uleb128 0x5
	.4byte	.LASF18
	.byte	0x8
	.2byte	0x165
	.4byte	0x5e
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.byte	0x4a
	.4byte	0xfd
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x7
	.byte	0x4c
	.4byte	0xd2
	.uleb128 0x7
	.4byte	.LASF20
	.byte	0x7
	.byte	0x4d
	.4byte	0xfd
	.byte	0
	.uleb128 0x8
	.4byte	0x2c
	.4byte	0x10d
	.uleb128 0x9
	.4byte	0x10d
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF21
	.uleb128 0xa
	.byte	0x8
	.byte	0x7
	.byte	0x47
	.4byte	0x135
	.uleb128 0xb
	.4byte	.LASF22
	.byte	0x7
	.byte	0x49
	.4byte	0x4c
	.byte	0
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x7
	.byte	0x4e
	.4byte	0xde
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x7
	.byte	0x4f
	.4byte	0x114
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x7
	.byte	0x53
	.4byte	0xaa
	.uleb128 0xc
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x9
	.byte	0x16
	.4byte	0x158
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF27
	.uleb128 0xd
	.4byte	.LASF32
	.byte	0x18
	.byte	0x9
	.byte	0x2d
	.4byte	0x1b2
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x9
	.byte	0x2f
	.4byte	0x1b2
	.byte	0
	.uleb128 0xe
	.string	"_k"
	.byte	0x9
	.byte	0x30
	.4byte	0x4c
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x9
	.byte	0x30
	.4byte	0x4c
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x9
	.byte	0x30
	.4byte	0x4c
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x9
	.byte	0x30
	.4byte	0x4c
	.byte	0x10
	.uleb128 0xe
	.string	"_x"
	.byte	0x9
	.byte	0x31
	.4byte	0x1b8
	.byte	0x14
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x15f
	.uleb128 0x8
	.4byte	0x14d
	.4byte	0x1c8
	.uleb128 0x9
	.4byte	0x10d
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF33
	.byte	0x24
	.byte	0x9
	.byte	0x35
	.4byte	0x241
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0x9
	.byte	0x37
	.4byte	0x4c
	.byte	0
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x9
	.byte	0x38
	.4byte	0x4c
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0x9
	.byte	0x39
	.4byte	0x4c
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x9
	.byte	0x3a
	.4byte	0x4c
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0x9
	.byte	0x3b
	.4byte	0x4c
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0x9
	.byte	0x3c
	.4byte	0x4c
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0x9
	.byte	0x3d
	.4byte	0x4c
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF41
	.byte	0x9
	.byte	0x3e
	.4byte	0x4c
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0x9
	.byte	0x3f
	.4byte	0x4c
	.byte	0x20
	.byte	0
	.uleb128 0x10
	.4byte	.LASF43
	.2byte	0x108
	.byte	0x9
	.byte	0x48
	.4byte	0x281
	.uleb128 0xb
	.4byte	.LASF44
	.byte	0x9
	.byte	0x49
	.4byte	0x281
	.byte	0
	.uleb128 0xb
	.4byte	.LASF45
	.byte	0x9
	.byte	0x4a
	.4byte	0x281
	.byte	0x80
	.uleb128 0x11
	.4byte	.LASF46
	.byte	0x9
	.byte	0x4c
	.4byte	0x14d
	.2byte	0x100
	.uleb128 0x11
	.4byte	.LASF47
	.byte	0x9
	.byte	0x4f
	.4byte	0x14d
	.2byte	0x104
	.byte	0
	.uleb128 0x8
	.4byte	0x14b
	.4byte	0x291
	.uleb128 0x9
	.4byte	0x10d
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.4byte	.LASF48
	.byte	0x8c
	.byte	0x9
	.byte	0x53
	.4byte	0x2ce
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x9
	.byte	0x54
	.4byte	0x2ce
	.byte	0
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0x9
	.byte	0x55
	.4byte	0x4c
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF50
	.byte	0x9
	.byte	0x56
	.4byte	0x2d4
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF51
	.byte	0x9
	.byte	0x57
	.4byte	0x2eb
	.byte	0x88
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x291
	.uleb128 0x8
	.4byte	0x2e4
	.4byte	0x2e4
	.uleb128 0x9
	.4byte	0x10d
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2ea
	.uleb128 0x12
	.uleb128 0xf
	.byte	0x4
	.4byte	0x241
	.uleb128 0xd
	.4byte	.LASF52
	.byte	0x8
	.byte	0x9
	.byte	0x73
	.4byte	0x316
	.uleb128 0xb
	.4byte	.LASF53
	.byte	0x9
	.byte	0x74
	.4byte	0x316
	.byte	0
	.uleb128 0xb
	.4byte	.LASF54
	.byte	0x9
	.byte	0x75
	.4byte	0x4c
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2c
	.uleb128 0x13
	.4byte	.LASF55
	.byte	0xf0
	.byte	0x9
	.2byte	0x172
	.4byte	0x462
	.uleb128 0x14
	.4byte	.LASF56
	.byte	0x9
	.2byte	0x176
	.4byte	0x4c
	.byte	0
	.uleb128 0x14
	.4byte	.LASF57
	.byte	0x9
	.2byte	0x17b
	.4byte	0x697
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF58
	.byte	0x9
	.2byte	0x17b
	.4byte	0x697
	.byte	0x8
	.uleb128 0x14
	.4byte	.LASF59
	.byte	0x9
	.2byte	0x17b
	.4byte	0x697
	.byte	0xc
	.uleb128 0x14
	.4byte	.LASF60
	.byte	0x9
	.2byte	0x17d
	.4byte	0x4c
	.byte	0x10
	.uleb128 0x14
	.4byte	.LASF61
	.byte	0x9
	.2byte	0x17f
	.4byte	0x5b0
	.byte	0x14
	.uleb128 0x14
	.4byte	.LASF62
	.byte	0x9
	.2byte	0x181
	.4byte	0x4c
	.byte	0x18
	.uleb128 0x14
	.4byte	.LASF63
	.byte	0x9
	.2byte	0x183
	.4byte	0x4c
	.byte	0x1c
	.uleb128 0x14
	.4byte	.LASF64
	.byte	0x9
	.2byte	0x184
	.4byte	0x5e1
	.byte	0x20
	.uleb128 0x15
	.string	"_mp"
	.byte	0x9
	.2byte	0x186
	.4byte	0x7e4
	.byte	0x24
	.uleb128 0x14
	.4byte	.LASF65
	.byte	0x9
	.2byte	0x188
	.4byte	0x7f5
	.byte	0x28
	.uleb128 0x14
	.4byte	.LASF66
	.byte	0x9
	.2byte	0x18a
	.4byte	0x4c
	.byte	0x2c
	.uleb128 0x14
	.4byte	.LASF67
	.byte	0x9
	.2byte	0x18d
	.4byte	0x4c
	.byte	0x30
	.uleb128 0x14
	.4byte	.LASF68
	.byte	0x9
	.2byte	0x18e
	.4byte	0x5b0
	.byte	0x34
	.uleb128 0x14
	.4byte	.LASF69
	.byte	0x9
	.2byte	0x190
	.4byte	0x7fb
	.byte	0x38
	.uleb128 0x14
	.4byte	.LASF70
	.byte	0x9
	.2byte	0x191
	.4byte	0x801
	.byte	0x3c
	.uleb128 0x14
	.4byte	.LASF71
	.byte	0x9
	.2byte	0x192
	.4byte	0x5b0
	.byte	0x40
	.uleb128 0x14
	.4byte	.LASF72
	.byte	0x9
	.2byte	0x195
	.4byte	0x812
	.byte	0x44
	.uleb128 0x14
	.4byte	.LASF48
	.byte	0x9
	.2byte	0x199
	.4byte	0x2ce
	.byte	0x48
	.uleb128 0x14
	.4byte	.LASF73
	.byte	0x9
	.2byte	0x19a
	.4byte	0x291
	.byte	0x4c
	.uleb128 0x14
	.4byte	.LASF74
	.byte	0x9
	.2byte	0x19d
	.4byte	0x65c
	.byte	0xd8
	.uleb128 0x14
	.4byte	.LASF75
	.byte	0x9
	.2byte	0x19e
	.4byte	0x697
	.byte	0xe4
	.uleb128 0x14
	.4byte	.LASF76
	.byte	0x9
	.2byte	0x19f
	.4byte	0x81e
	.byte	0xe8
	.uleb128 0x14
	.4byte	.LASF77
	.byte	0x9
	.2byte	0x1a0
	.4byte	0x5b0
	.byte	0xec
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x31c
	.uleb128 0xd
	.4byte	.LASF78
	.byte	0x68
	.byte	0x9
	.byte	0xb3
	.4byte	0x592
	.uleb128 0xe
	.string	"_p"
	.byte	0x9
	.byte	0xb4
	.4byte	0x316
	.byte	0
	.uleb128 0xe
	.string	"_r"
	.byte	0x9
	.byte	0xb5
	.4byte	0x4c
	.byte	0x4
	.uleb128 0xe
	.string	"_w"
	.byte	0x9
	.byte	0xb6
	.4byte	0x4c
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF79
	.byte	0x9
	.byte	0xb7
	.4byte	0x33
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF80
	.byte	0x9
	.byte	0xb8
	.4byte	0x33
	.byte	0xe
	.uleb128 0xe
	.string	"_bf"
	.byte	0x9
	.byte	0xb9
	.4byte	0x2f1
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF81
	.byte	0x9
	.byte	0xba
	.4byte	0x4c
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF82
	.byte	0x9
	.byte	0xbd
	.4byte	0x462
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF83
	.byte	0x9
	.byte	0xc1
	.4byte	0x14b
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF84
	.byte	0x9
	.byte	0xc3
	.4byte	0x5bd
	.byte	0x24
	.uleb128 0xb
	.4byte	.LASF85
	.byte	0x9
	.byte	0xc5
	.4byte	0x5ec
	.byte	0x28
	.uleb128 0xb
	.4byte	.LASF86
	.byte	0x9
	.byte	0xc8
	.4byte	0x610
	.byte	0x2c
	.uleb128 0xb
	.4byte	.LASF87
	.byte	0x9
	.byte	0xc9
	.4byte	0x62a
	.byte	0x30
	.uleb128 0xe
	.string	"_ub"
	.byte	0x9
	.byte	0xcc
	.4byte	0x2f1
	.byte	0x34
	.uleb128 0xe
	.string	"_up"
	.byte	0x9
	.byte	0xcd
	.4byte	0x316
	.byte	0x3c
	.uleb128 0xe
	.string	"_ur"
	.byte	0x9
	.byte	0xce
	.4byte	0x4c
	.byte	0x40
	.uleb128 0xb
	.4byte	.LASF88
	.byte	0x9
	.byte	0xd1
	.4byte	0x630
	.byte	0x44
	.uleb128 0xb
	.4byte	.LASF89
	.byte	0x9
	.byte	0xd2
	.4byte	0x640
	.byte	0x47
	.uleb128 0xe
	.string	"_lb"
	.byte	0x9
	.byte	0xd5
	.4byte	0x2f1
	.byte	0x48
	.uleb128 0xb
	.4byte	.LASF90
	.byte	0x9
	.byte	0xd8
	.4byte	0x4c
	.byte	0x50
	.uleb128 0xb
	.4byte	.LASF91
	.byte	0x9
	.byte	0xd9
	.4byte	0xb5
	.byte	0x54
	.uleb128 0xb
	.4byte	.LASF92
	.byte	0x9
	.byte	0xe0
	.4byte	0x140
	.byte	0x58
	.uleb128 0xb
	.4byte	.LASF93
	.byte	0x9
	.byte	0xe2
	.4byte	0x135
	.byte	0x5c
	.uleb128 0xb
	.4byte	.LASF94
	.byte	0x9
	.byte	0xe3
	.4byte	0x4c
	.byte	0x64
	.byte	0
	.uleb128 0x16
	.4byte	0x4c
	.4byte	0x5b0
	.uleb128 0x17
	.4byte	0x462
	.uleb128 0x17
	.4byte	0x14b
	.uleb128 0x17
	.4byte	0x5b0
	.uleb128 0x17
	.4byte	0x4c
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x5b6
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF95
	.uleb128 0xf
	.byte	0x4
	.4byte	0x592
	.uleb128 0x16
	.4byte	0x4c
	.4byte	0x5e1
	.uleb128 0x17
	.4byte	0x462
	.uleb128 0x17
	.4byte	0x14b
	.uleb128 0x17
	.4byte	0x5e1
	.uleb128 0x17
	.4byte	0x4c
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x5e7
	.uleb128 0x18
	.4byte	0x5b6
	.uleb128 0xf
	.byte	0x4
	.4byte	0x5c3
	.uleb128 0x16
	.4byte	0xc7
	.4byte	0x610
	.uleb128 0x17
	.4byte	0x462
	.uleb128 0x17
	.4byte	0x14b
	.uleb128 0x17
	.4byte	0xc7
	.uleb128 0x17
	.4byte	0x4c
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x5f2
	.uleb128 0x16
	.4byte	0x4c
	.4byte	0x62a
	.uleb128 0x17
	.4byte	0x462
	.uleb128 0x17
	.4byte	0x14b
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x616
	.uleb128 0x8
	.4byte	0x2c
	.4byte	0x640
	.uleb128 0x9
	.4byte	0x10d
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.4byte	0x2c
	.4byte	0x650
	.uleb128 0x9
	.4byte	0x10d
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	.LASF96
	.byte	0x9
	.2byte	0x11d
	.4byte	0x468
	.uleb128 0x13
	.4byte	.LASF97
	.byte	0xc
	.byte	0x9
	.2byte	0x121
	.4byte	0x691
	.uleb128 0x14
	.4byte	.LASF28
	.byte	0x9
	.2byte	0x123
	.4byte	0x691
	.byte	0
	.uleb128 0x14
	.4byte	.LASF98
	.byte	0x9
	.2byte	0x124
	.4byte	0x4c
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF99
	.byte	0x9
	.2byte	0x125
	.4byte	0x697
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x65c
	.uleb128 0xf
	.byte	0x4
	.4byte	0x650
	.uleb128 0x13
	.4byte	.LASF100
	.byte	0x18
	.byte	0x9
	.2byte	0x13d
	.4byte	0x6df
	.uleb128 0x14
	.4byte	.LASF101
	.byte	0x9
	.2byte	0x13e
	.4byte	0x6df
	.byte	0
	.uleb128 0x14
	.4byte	.LASF102
	.byte	0x9
	.2byte	0x13f
	.4byte	0x6df
	.byte	0x6
	.uleb128 0x14
	.4byte	.LASF103
	.byte	0x9
	.2byte	0x140
	.4byte	0x3a
	.byte	0xc
	.uleb128 0x14
	.4byte	.LASF104
	.byte	0x9
	.2byte	0x143
	.4byte	0x6c
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.4byte	0x3a
	.4byte	0x6ef
	.uleb128 0x9
	.4byte	0x10d
	.byte	0x2
	.byte	0
	.uleb128 0x13
	.4byte	.LASF105
	.byte	0x10
	.byte	0x9
	.2byte	0x156
	.4byte	0x731
	.uleb128 0x14
	.4byte	.LASF106
	.byte	0x9
	.2byte	0x159
	.4byte	0x1b2
	.byte	0
	.uleb128 0x14
	.4byte	.LASF107
	.byte	0x9
	.2byte	0x15a
	.4byte	0x4c
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF108
	.byte	0x9
	.2byte	0x15b
	.4byte	0x1b2
	.byte	0x8
	.uleb128 0x14
	.4byte	.LASF109
	.byte	0x9
	.2byte	0x15c
	.4byte	0x731
	.byte	0xc
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x1b2
	.uleb128 0x13
	.4byte	.LASF110
	.byte	0x50
	.byte	0x9
	.2byte	0x160
	.4byte	0x7d4
	.uleb128 0x14
	.4byte	.LASF111
	.byte	0x9
	.2byte	0x163
	.4byte	0x5b0
	.byte	0
	.uleb128 0x14
	.4byte	.LASF112
	.byte	0x9
	.2byte	0x164
	.4byte	0x135
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF113
	.byte	0x9
	.2byte	0x165
	.4byte	0x135
	.byte	0xc
	.uleb128 0x14
	.4byte	.LASF114
	.byte	0x9
	.2byte	0x166
	.4byte	0x135
	.byte	0x14
	.uleb128 0x14
	.4byte	.LASF115
	.byte	0x9
	.2byte	0x167
	.4byte	0x7d4
	.byte	0x1c
	.uleb128 0x14
	.4byte	.LASF116
	.byte	0x9
	.2byte	0x168
	.4byte	0x4c
	.byte	0x24
	.uleb128 0x14
	.4byte	.LASF117
	.byte	0x9
	.2byte	0x169
	.4byte	0x135
	.byte	0x28
	.uleb128 0x14
	.4byte	.LASF118
	.byte	0x9
	.2byte	0x16a
	.4byte	0x135
	.byte	0x30
	.uleb128 0x14
	.4byte	.LASF119
	.byte	0x9
	.2byte	0x16b
	.4byte	0x135
	.byte	0x38
	.uleb128 0x14
	.4byte	.LASF120
	.byte	0x9
	.2byte	0x16c
	.4byte	0x135
	.byte	0x40
	.uleb128 0x14
	.4byte	.LASF121
	.byte	0x9
	.2byte	0x16d
	.4byte	0x135
	.byte	0x48
	.byte	0
	.uleb128 0x8
	.4byte	0x5b6
	.4byte	0x7e4
	.uleb128 0x9
	.4byte	0x10d
	.byte	0x7
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x6ef
	.uleb128 0x19
	.4byte	0x7f5
	.uleb128 0x17
	.4byte	0x462
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x7ea
	.uleb128 0xf
	.byte	0x4
	.4byte	0x69d
	.uleb128 0xf
	.byte	0x4
	.4byte	0x1c8
	.uleb128 0x19
	.4byte	0x812
	.uleb128 0x17
	.4byte	0x4c
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x818
	.uleb128 0xf
	.byte	0x4
	.4byte	0x807
	.uleb128 0xf
	.byte	0x4
	.4byte	0x737
	.uleb128 0x3
	.4byte	.LASF122
	.byte	0xa
	.byte	0x18
	.4byte	0x7e
	.uleb128 0x1a
	.byte	0x4
	.4byte	0x5e
	.byte	0xb
	.byte	0x50
	.4byte	0x89c
	.uleb128 0x1b
	.4byte	.LASF123
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF124
	.byte	0x1
	.uleb128 0x1b
	.4byte	.LASF125
	.byte	0x3
	.uleb128 0x1b
	.4byte	.LASF126
	.byte	0x4
	.uleb128 0x1b
	.4byte	.LASF127
	.byte	0x5
	.uleb128 0x1b
	.4byte	.LASF128
	.byte	0x6
	.uleb128 0x1b
	.4byte	.LASF129
	.byte	0x7
	.uleb128 0x1b
	.4byte	.LASF130
	.byte	0x8
	.uleb128 0x1b
	.4byte	.LASF131
	.byte	0x9
	.uleb128 0x1b
	.4byte	.LASF132
	.byte	0xa
	.uleb128 0x1b
	.4byte	.LASF133
	.byte	0xb
	.uleb128 0x1b
	.4byte	.LASF134
	.byte	0xc
	.uleb128 0x1b
	.4byte	.LASF135
	.byte	0xd
	.uleb128 0x1b
	.4byte	.LASF136
	.byte	0xe
	.uleb128 0x1b
	.4byte	.LASF137
	.byte	0xf
	.uleb128 0x1b
	.4byte	.LASF138
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.4byte	.LASF139
	.byte	0xb
	.byte	0x61
	.4byte	0x82f
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF140
	.uleb128 0xa
	.byte	0x34
	.byte	0xc
	.byte	0x21
	.4byte	0x952
	.uleb128 0xe
	.string	"reg"
	.byte	0xc
	.byte	0x22
	.4byte	0x89
	.byte	0
	.uleb128 0xe
	.string	"mux"
	.byte	0xc
	.byte	0x23
	.4byte	0x89
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF141
	.byte	0xc
	.byte	0x24
	.4byte	0x89
	.byte	0x8
	.uleb128 0xe
	.string	"ie"
	.byte	0xc
	.byte	0x25
	.4byte	0x89
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF142
	.byte	0xc
	.byte	0x26
	.4byte	0x89
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF143
	.byte	0xc
	.byte	0x27
	.4byte	0x89
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF144
	.byte	0xc
	.byte	0x28
	.4byte	0x89
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF145
	.byte	0xc
	.byte	0x29
	.4byte	0x89
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF146
	.byte	0xc
	.byte	0x2a
	.4byte	0x89
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF147
	.byte	0xc
	.byte	0x2b
	.4byte	0x89
	.byte	0x24
	.uleb128 0xb
	.4byte	.LASF148
	.byte	0xc
	.byte	0x2c
	.4byte	0x89
	.byte	0x28
	.uleb128 0xb
	.4byte	.LASF149
	.byte	0xc
	.byte	0x2d
	.4byte	0x89
	.byte	0x2c
	.uleb128 0xb
	.4byte	.LASF150
	.byte	0xc
	.byte	0x2e
	.4byte	0x4c
	.byte	0x30
	.byte	0
	.uleb128 0x3
	.4byte	.LASF151
	.byte	0xc
	.byte	0x2f
	.4byte	0x8ae
	.uleb128 0x3
	.4byte	.LASF152
	.byte	0xd
	.byte	0x6f
	.4byte	0x4c
	.uleb128 0x18
	.4byte	0x5e1
	.uleb128 0x5
	.4byte	.LASF153
	.byte	0xe
	.2byte	0x10c
	.4byte	0x2e4
	.uleb128 0x5
	.4byte	.LASF154
	.byte	0xe
	.2byte	0x110
	.4byte	0x2e4
	.uleb128 0x5
	.4byte	.LASF155
	.byte	0xe
	.2byte	0x114
	.4byte	0x2e4
	.uleb128 0x5
	.4byte	.LASF156
	.byte	0xe
	.2byte	0x118
	.4byte	0x2e4
	.uleb128 0x1c
	.byte	0x10
	.byte	0xe
	.2byte	0x132
	.4byte	0x9db
	.uleb128 0x14
	.4byte	.LASF157
	.byte	0xe
	.2byte	0x133
	.4byte	0x96d
	.byte	0
	.uleb128 0x15
	.string	"end"
	.byte	0xe
	.2byte	0x134
	.4byte	0x979
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF158
	.byte	0xe
	.2byte	0x135
	.4byte	0x985
	.byte	0x8
	.uleb128 0x14
	.4byte	.LASF159
	.byte	0xe
	.2byte	0x136
	.4byte	0x991
	.byte	0xc
	.byte	0
	.uleb128 0x5
	.4byte	.LASF160
	.byte	0xe
	.2byte	0x137
	.4byte	0x99d
	.uleb128 0x1a
	.byte	0x4
	.4byte	0x5e
	.byte	0xf
	.byte	0x1f
	.4byte	0xa18
	.uleb128 0x1b
	.4byte	.LASF161
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF162
	.byte	0x1
	.uleb128 0x1b
	.4byte	.LASF163
	.byte	0x2
	.uleb128 0x1b
	.4byte	.LASF164
	.byte	0x3
	.uleb128 0x1b
	.4byte	.LASF165
	.byte	0x4
	.uleb128 0x1b
	.4byte	.LASF166
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF167
	.byte	0xf
	.byte	0x26
	.4byte	0x9e7
	.uleb128 0xd
	.4byte	.LASF168
	.byte	0x28
	.byte	0x1
	.byte	0x63
	.4byte	0xa3c
	.uleb128 0xb
	.4byte	.LASF169
	.byte	0x1
	.byte	0x63
	.4byte	0xa3c
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0xc0
	.4byte	0xa4c
	.uleb128 0x9
	.4byte	0x10d
	.byte	0x9
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF171
	.byte	0x2
	.byte	0x31
	.byte	0x3
	.4byte	0xa6f
	.uleb128 0x1e
	.string	"vpn"
	.byte	0x2
	.byte	0x31
	.4byte	0x5e
	.uleb128 0x1f
	.4byte	.LASF170
	.byte	0x2
	.byte	0x31
	.4byte	0x5e
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF172
	.byte	0x2
	.byte	0x2b
	.byte	0x3
	.4byte	0xa92
	.uleb128 0x1e
	.string	"vpn"
	.byte	0x2
	.byte	0x2b
	.4byte	0x89
	.uleb128 0x1f
	.4byte	.LASF170
	.byte	0x2
	.byte	0x2b
	.4byte	0x5e
	.byte	0
	.uleb128 0x20
	.4byte	.LASF232
	.byte	0x3
	.byte	0x61
	.4byte	0x89
	.byte	0x3
	.4byte	0xab9
	.uleb128 0x1f
	.4byte	.LASF173
	.byte	0x3
	.byte	0x61
	.4byte	0x89
	.uleb128 0x21
	.string	"val"
	.byte	0x3
	.byte	0x63
	.4byte	0x89
	.byte	0
	.uleb128 0x22
	.4byte	.LASF174
	.byte	0x1
	.2byte	0x186
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xaff
	.uleb128 0x23
	.4byte	.LASF233
	.byte	0x1
	.2byte	0x186
	.4byte	0x14b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x24
	.4byte	.LVL1
	.4byte	0x1116
	.uleb128 0x24
	.4byte	.LVL2
	.4byte	0x1121
	.uleb128 0x25
	.4byte	.LVL3
	.4byte	0x112c
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LASF175
	.byte	0x1
	.byte	0xf3
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb46
	.uleb128 0x28
	.4byte	.LBB13
	.4byte	.LBE13-.LBB13
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.byte	0xf6
	.4byte	0x4c
	.4byte	.LLST0
	.uleb128 0x25
	.4byte	.LVL6
	.4byte	0x1138
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF176
	.byte	0x1
	.2byte	0x17b
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb8f
	.uleb128 0x2b
	.string	"ob"
	.byte	0x1
	.2byte	0x17d
	.4byte	0xa23
	.uleb128 0x5
	.byte	0x3
	.4byte	ob$7371
	.uleb128 0x2c
	.string	"p"
	.byte	0x1
	.2byte	0x180
	.4byte	0xb8f
	.4byte	.LLST1
	.uleb128 0x25
	.4byte	.LVL8
	.4byte	0x1144
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	ob$7371
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2e4
	.uleb128 0x2d
	.4byte	.LASF234
	.byte	0x1
	.byte	0xfe
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdea
	.uleb128 0x2c
	.string	"err"
	.byte	0x1
	.2byte	0x100
	.4byte	0x824
	.4byte	.LLST2
	.uleb128 0x2e
	.4byte	.LASF177
	.byte	0x1
	.2byte	0x12e
	.4byte	0x5e1
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC11
	.byte	0x9f
	.uleb128 0x2f
	.4byte	.LASF178
	.4byte	0xdfa
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$7366
	.uleb128 0x2c
	.string	"res"
	.byte	0x1
	.2byte	0x158
	.4byte	0x4c
	.4byte	.LLST3
	.uleb128 0x24
	.4byte	.LVL12
	.4byte	0x114f
	.uleb128 0x24
	.4byte	.LVL13
	.4byte	0x115a
	.uleb128 0x24
	.4byte	.LVL14
	.4byte	0x1165
	.uleb128 0x24
	.4byte	.LVL15
	.4byte	0xaff
	.uleb128 0x24
	.4byte	.LVL16
	.4byte	0x1170
	.uleb128 0x30
	.4byte	.LVL17
	.4byte	0x117c
	.4byte	0xc2c
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x24
	.4byte	.LVL18
	.4byte	0x1187
	.uleb128 0x24
	.4byte	.LVL19
	.4byte	0x1192
	.uleb128 0x24
	.4byte	.LVL20
	.4byte	0x119d
	.uleb128 0x24
	.4byte	.LVL21
	.4byte	0x11a8
	.uleb128 0x30
	.4byte	.LVL22
	.4byte	0x11b3
	.4byte	0xc6d
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.uleb128 0x30
	.4byte	.LVL23
	.4byte	0x11b3
	.4byte	0xc87
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.4byte	.LVL24
	.4byte	0x11b3
	.4byte	0xca1
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL25
	.4byte	0x11be
	.uleb128 0x24
	.4byte	.LVL26
	.4byte	0x11c9
	.uleb128 0x24
	.4byte	.LVL27
	.4byte	0x11d4
	.uleb128 0x30
	.4byte	.LVL29
	.4byte	0x11df
	.4byte	0xcec
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC18
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x141
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$7366
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.byte	0
	.uleb128 0x24
	.4byte	.LVL30
	.4byte	0xb46
	.uleb128 0x24
	.4byte	.LVL31
	.4byte	0x11ea
	.uleb128 0x24
	.4byte	.LVL32
	.4byte	0x11f5
	.uleb128 0x24
	.4byte	.LVL33
	.4byte	0x1200
	.uleb128 0x24
	.4byte	.LVL34
	.4byte	0x120b
	.uleb128 0x24
	.4byte	.LVL35
	.4byte	0x1216
	.uleb128 0x24
	.4byte	.LVL36
	.4byte	0x1221
	.uleb128 0x24
	.4byte	.LVL37
	.4byte	0x122c
	.uleb128 0x30
	.4byte	.LVL38
	.4byte	0x1238
	.4byte	0xd70
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	main_task
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC22
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1000
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x26
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x30
	.4byte	.LVL40
	.4byte	0x11df
	.4byte	0xda0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC18
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x15b
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$7366
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC25
	.byte	0
	.uleb128 0x24
	.4byte	.LVL41
	.4byte	0x1244
	.uleb128 0x30
	.4byte	.LVL42
	.4byte	0x124f
	.4byte	0xdd7
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC27
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC29
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC27
	.byte	0
	.uleb128 0x24
	.4byte	.LVL43
	.4byte	0x125a
	.uleb128 0x24
	.4byte	.LVL44
	.4byte	0x1266
	.byte	0
	.uleb128 0x8
	.4byte	0x5b6
	.4byte	0xdfa
	.uleb128 0x9
	.4byte	0x10d
	.byte	0x12
	.byte	0
	.uleb128 0x18
	.4byte	0xdea
	.uleb128 0x31
	.4byte	.LASF235
	.byte	0x2
	.byte	0x41
	.byte	0x3
	.4byte	0xe22
	.uleb128 0x32
	.4byte	.LASF179
	.byte	0x2
	.byte	0x43
	.4byte	0xe32
	.uleb128 0x33
	.uleb128 0x21
	.string	"i"
	.byte	0x2
	.byte	0x44
	.4byte	0x4c
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x89
	.4byte	0xe32
	.uleb128 0x9
	.4byte	0x10d
	.byte	0x4
	.byte	0
	.uleb128 0x18
	.4byte	0xe22
	.uleb128 0x34
	.4byte	.LASF236
	.byte	0x1
	.byte	0x6c
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1054
	.uleb128 0x32
	.4byte	.LASF180
	.byte	0x1
	.byte	0x6f
	.4byte	0x1054
	.uleb128 0x35
	.4byte	0xdff
	.4byte	.LBB27
	.4byte	.LBE27-.LBB27
	.byte	0x1
	.byte	0x73
	.4byte	0xf40
	.uleb128 0x28
	.4byte	.LBB28
	.4byte	.LBE28-.LBB28
	.uleb128 0x36
	.4byte	0xe0b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x37
	.4byte	.LBB29
	.4byte	.LBE29-.LBB29
	.4byte	0xeda
	.uleb128 0x38
	.4byte	0xe17
	.4byte	.LLST4
	.uleb128 0x35
	.4byte	0xa6f
	.4byte	.LBB30
	.4byte	.LBE30-.LBB30
	.byte	0x2
	.byte	0x45
	.4byte	0xeb7
	.uleb128 0x39
	.4byte	0xa86
	.4byte	.LLST5
	.uleb128 0x39
	.4byte	0xa7b
	.4byte	.LLST6
	.byte	0
	.uleb128 0x3a
	.4byte	0xa4c
	.4byte	.LBB32
	.4byte	.LBE32-.LBB32
	.byte	0x2
	.byte	0x46
	.uleb128 0x39
	.4byte	0xa63
	.4byte	.LLST7
	.uleb128 0x39
	.4byte	0xa58
	.4byte	.LLST8
	.byte	0
	.byte	0
	.uleb128 0x35
	.4byte	0xa6f
	.4byte	.LBB34
	.4byte	.LBE34-.LBB34
	.byte	0x2
	.byte	0x48
	.4byte	0xefd
	.uleb128 0x3b
	.4byte	0xa86
	.byte	0
	.uleb128 0x3c
	.4byte	0xa7b
	.4byte	0x20000000
	.byte	0
	.uleb128 0x35
	.4byte	0xa4c
	.4byte	.LBB36
	.4byte	.LBE36-.LBB36
	.byte	0x2
	.byte	0x49
	.4byte	0xf20
	.uleb128 0x3b
	.4byte	0xa63
	.byte	0
	.uleb128 0x3c
	.4byte	0xa58
	.4byte	0x20000000
	.byte	0
	.uleb128 0x25
	.4byte	.LVL45
	.4byte	0x1271
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x44
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x35
	.4byte	0xa92
	.4byte	.LBB38
	.4byte	.LBE38-.LBB38
	.byte	0x1
	.byte	0xb8
	.4byte	0xf70
	.uleb128 0x3c
	.4byte	0xaa2
	.4byte	0x3ff00030
	.uleb128 0x28
	.4byte	.LBB39
	.4byte	.LBE39-.LBB39
	.uleb128 0x38
	.4byte	0xaad
	.4byte	.LLST9
	.byte	0
	.byte	0
	.uleb128 0x30
	.4byte	.LVL52
	.4byte	0x127a
	.4byte	0xf84
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL53
	.4byte	0x1285
	.uleb128 0x30
	.4byte	.LVL54
	.4byte	0x1290
	.4byte	0xfa4
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC36
	.byte	0
	.uleb128 0x24
	.4byte	.LVL55
	.4byte	0x1266
	.uleb128 0x30
	.4byte	.LVL56
	.4byte	0x129b
	.4byte	0xfc0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x30
	.4byte	.LVL57
	.4byte	0x129b
	.4byte	0xfd3
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x24
	.4byte	.LVL58
	.4byte	0x1244
	.uleb128 0x30
	.4byte	.LVL59
	.4byte	0x1290
	.4byte	0xff9
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC42
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL60
	.4byte	0x1244
	.uleb128 0x30
	.4byte	.LVL61
	.4byte	0x1290
	.4byte	0x101f
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC44
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL63
	.4byte	0x12a4
	.uleb128 0x24
	.4byte	.LVL64
	.4byte	0x1244
	.uleb128 0x30
	.4byte	.LVL65
	.4byte	0x1290
	.4byte	0x104e
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC47
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x3d
	.4byte	.LVL66
	.byte	0
	.uleb128 0x8
	.4byte	0x89c
	.4byte	0x1064
	.uleb128 0x9
	.4byte	0x10d
	.byte	0
	.byte	0
	.uleb128 0x3e
	.string	"TAG"
	.byte	0x1
	.byte	0x61
	.4byte	0x968
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC27
	.byte	0x9f
	.uleb128 0x3f
	.4byte	.LASF181
	.byte	0x9
	.2byte	0x2fe
	.4byte	0x462
	.uleb128 0x8
	.4byte	0x952
	.4byte	0x1092
	.uleb128 0x9
	.4byte	0x10d
	.byte	0x27
	.byte	0
	.uleb128 0x40
	.4byte	.LASF182
	.byte	0xc
	.byte	0x3f
	.4byte	0x109d
	.uleb128 0x18
	.4byte	0x1082
	.uleb128 0x3f
	.4byte	.LASF183
	.byte	0xe
	.2byte	0x146
	.4byte	0x10ae
	.uleb128 0x18
	.4byte	0x9db
	.uleb128 0x40
	.4byte	.LASF184
	.byte	0x1
	.byte	0x58
	.4byte	0x4c
	.uleb128 0x40
	.4byte	.LASF185
	.byte	0x1
	.byte	0x59
	.4byte	0x4c
	.uleb128 0x40
	.4byte	.LASF186
	.byte	0x1
	.byte	0x5a
	.4byte	0x4c
	.uleb128 0x40
	.4byte	.LASF187
	.byte	0x1
	.byte	0x5b
	.4byte	0x4c
	.uleb128 0x40
	.4byte	.LASF188
	.byte	0x1
	.byte	0x5c
	.4byte	0x4c
	.uleb128 0x40
	.4byte	.LASF189
	.byte	0x1
	.byte	0x5d
	.4byte	0x2e4
	.uleb128 0x40
	.4byte	.LASF190
	.byte	0x1
	.byte	0x5e
	.4byte	0x2e4
	.uleb128 0x8
	.4byte	0x5b6
	.4byte	0x110b
	.uleb128 0x41
	.byte	0
	.uleb128 0x40
	.4byte	.LASF191
	.byte	0x1
	.byte	0x65
	.4byte	0x1100
	.uleb128 0x42
	.4byte	.LASF192
	.4byte	.LASF192
	.byte	0x10
	.byte	0x24
	.uleb128 0x42
	.4byte	.LASF193
	.4byte	.LASF193
	.byte	0x1
	.byte	0x55
	.uleb128 0x43
	.4byte	.LASF194
	.4byte	.LASF194
	.byte	0x11
	.2byte	0x29d
	.uleb128 0x43
	.4byte	.LASF195
	.4byte	.LASF195
	.byte	0x12
	.2byte	0x212
	.uleb128 0x42
	.4byte	.LASF196
	.4byte	.LASF196
	.byte	0x1
	.byte	0x64
	.uleb128 0x42
	.4byte	.LASF197
	.4byte	.LASF197
	.byte	0x13
	.byte	0x22
	.uleb128 0x42
	.4byte	.LASF198
	.4byte	.LASF198
	.byte	0x14
	.byte	0x20
	.uleb128 0x42
	.4byte	.LASF199
	.4byte	.LASF199
	.byte	0x14
	.byte	0x3f
	.uleb128 0x43
	.4byte	.LASF200
	.4byte	.LASF200
	.byte	0x15
	.2byte	0x13d
	.uleb128 0x42
	.4byte	.LASF201
	.4byte	.LASF201
	.byte	0x16
	.byte	0xc7
	.uleb128 0x42
	.4byte	.LASF202
	.4byte	.LASF202
	.byte	0x17
	.byte	0x13
	.uleb128 0x42
	.4byte	.LASF203
	.4byte	.LASF203
	.byte	0xc
	.byte	0xec
	.uleb128 0x42
	.4byte	.LASF204
	.4byte	.LASF204
	.byte	0x18
	.byte	0x22
	.uleb128 0x42
	.4byte	.LASF205
	.4byte	.LASF205
	.byte	0x13
	.byte	0x1a
	.uleb128 0x42
	.4byte	.LASF206
	.4byte	.LASF206
	.byte	0x19
	.byte	0xdd
	.uleb128 0x42
	.4byte	.LASF207
	.4byte	.LASF207
	.byte	0x1a
	.byte	0x65
	.uleb128 0x42
	.4byte	.LASF208
	.4byte	.LASF208
	.byte	0x13
	.byte	0x27
	.uleb128 0x42
	.4byte	.LASF209
	.4byte	.LASF209
	.byte	0x1
	.byte	0x56
	.uleb128 0x42
	.4byte	.LASF210
	.4byte	.LASF210
	.byte	0x1b
	.byte	0x29
	.uleb128 0x42
	.4byte	.LASF211
	.4byte	.LASF211
	.byte	0x1c
	.byte	0x2d
	.uleb128 0x42
	.4byte	.LASF212
	.4byte	.LASF212
	.byte	0x1d
	.byte	0x2e
	.uleb128 0x42
	.4byte	.LASF213
	.4byte	.LASF213
	.byte	0x1e
	.byte	0x17
	.uleb128 0x42
	.4byte	.LASF214
	.4byte	.LASF214
	.byte	0x1f
	.byte	0x1b
	.uleb128 0x42
	.4byte	.LASF215
	.4byte	.LASF215
	.byte	0x20
	.byte	0x2e
	.uleb128 0x42
	.4byte	.LASF216
	.4byte	.LASF216
	.byte	0xe
	.byte	0x2d
	.uleb128 0x43
	.4byte	.LASF217
	.4byte	.LASF217
	.byte	0xe
	.2byte	0x141
	.uleb128 0x43
	.4byte	.LASF218
	.4byte	.LASF218
	.byte	0x11
	.2byte	0x17a
	.uleb128 0x42
	.4byte	.LASF219
	.4byte	.LASF219
	.byte	0xf
	.byte	0x4c
	.uleb128 0x42
	.4byte	.LASF220
	.4byte	.LASF220
	.byte	0xf
	.byte	0x60
	.uleb128 0x43
	.4byte	.LASF221
	.4byte	.LASF221
	.byte	0x11
	.2byte	0x421
	.uleb128 0x42
	.4byte	.LASF222
	.4byte	.LASF222
	.byte	0x21
	.byte	0x47
	.uleb128 0x44
	.4byte	.LASF226
	.4byte	.LASF226
	.uleb128 0x42
	.4byte	.LASF223
	.4byte	.LASF223
	.byte	0xb
	.byte	0x9a
	.uleb128 0x42
	.4byte	.LASF224
	.4byte	.LASF224
	.byte	0x22
	.byte	0x44
	.uleb128 0x42
	.4byte	.LASF225
	.4byte	.LASF225
	.byte	0x12
	.byte	0xde
	.uleb128 0x44
	.4byte	.LASF227
	.4byte	.LASF227
	.uleb128 0x42
	.4byte	.LASF228
	.4byte	.LASF228
	.byte	0x10
	.byte	0x1a
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x16
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
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
	.uleb128 0x28
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x20
	.uleb128 0xb
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
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0xb
	.byte	0x1
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
	.uleb128 0xb
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
	.uleb128 0x35
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
	.uleb128 0x36
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x38
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x3a
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
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x3d
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x40
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
	.uleb128 0x41
	.uleb128 0x21
	.byte	0
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x43
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
	.uleb128 0x44
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
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LFE33
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL9
	.4byte	.LFE35
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL29
	.4byte	.LVL30-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL40
	.4byte	.LVL41-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL52-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL47
	.4byte	.LVL49
	.2byte	0x2
	.byte	0x3f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL47
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x2
	.byte	0x3f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL62
	.4byte	.LVL63-1
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x3c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF167:
	.string	"esp_log_level_t"
.LASF25:
	.string	"_flock_t"
.LASF158:
	.string	"op_lock"
.LASF76:
	.string	"_misc"
.LASF149:
	.string	"drv_s"
.LASF148:
	.string	"drv_v"
.LASF135:
	.string	"RTCWDT_CPU_RESET"
.LASF182:
	.string	"rtc_gpio_desc"
.LASF13:
	.string	"_lock_t"
.LASF43:
	.string	"_on_exit_args"
.LASF124:
	.string	"POWERON_RESET"
.LASF150:
	.string	"rtc_num"
.LASF113:
	.string	"_wctomb_state"
.LASF69:
	.string	"_r48"
.LASF210:
	.string	"__assert_func"
.LASF218:
	.string	"xTaskCreatePinnedToCore"
.LASF77:
	.string	"_signal_buf"
.LASF6:
	.string	"unsigned int"
.LASF188:
	.string	"_init_start"
.LASF81:
	.string	"_lbfsize"
.LASF79:
	.string	"_flags"
.LASF171:
	.string	"cpu_write_itlb"
.LASF4:
	.string	"__int32_t"
.LASF56:
	.string	"_errno"
.LASF234:
	.string	"start_cpu0_default"
.LASF219:
	.string	"esp_log_timestamp"
.LASF165:
	.string	"ESP_LOG_DEBUG"
.LASF211:
	.string	"esp_int_wdt_init"
.LASF93:
	.string	"_mbstate"
.LASF215:
	.string	"esp_ipc_init"
.LASF26:
	.string	"__ULong"
.LASF117:
	.string	"_mbrlen_state"
.LASF169:
	.string	"placeholder"
.LASF58:
	.string	"_stdout"
.LASF229:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF9:
	.string	"__intptr_t"
.LASF17:
	.string	"_fpos_t"
.LASF50:
	.string	"_fns"
.LASF83:
	.string	"_cookie"
.LASF184:
	.string	"_bss_start"
.LASF32:
	.string	"_Bigint"
.LASF202:
	.string	"esp_brownout_init"
.LASF40:
	.string	"__tm_wday"
.LASF106:
	.string	"_result"
.LASF11:
	.string	"uint32_t"
.LASF36:
	.string	"__tm_hour"
.LASF191:
	.string	"__eh_frame"
.LASF172:
	.string	"cpu_write_dtlb"
.LASF179:
	.string	"pages_to_protect"
.LASF22:
	.string	"__count"
.LASF35:
	.string	"__tm_min"
.LASF204:
	.string	"esp_vfs_dev_uart_register"
.LASF225:
	.string	"ets_printf"
.LASF190:
	.string	"__init_array_end"
.LASF154:
	.string	"spi_flash_guard_end_func_t"
.LASF8:
	.string	"long long unsigned int"
.LASF127:
	.string	"DEEPSLEEP_RESET"
.LASF71:
	.string	"_asctime_buf"
.LASF100:
	.string	"_rand48"
.LASF78:
	.string	"__sFILE"
.LASF31:
	.string	"_wds"
.LASF223:
	.string	"rtc_get_reset_reason"
.LASF170:
	.string	"attr"
.LASF96:
	.string	"__FILE"
.LASF91:
	.string	"_offset"
.LASF88:
	.string	"_ubuf"
.LASF130:
	.string	"TG1WDT_SYS_RESET"
.LASF209:
	.string	"esp_pthread_init"
.LASF61:
	.string	"_emergency"
.LASF222:
	.string	"abort"
.LASF197:
	.string	"esp_setup_syscall_table"
.LASF129:
	.string	"TG0WDT_SYS_RESET"
.LASF34:
	.string	"__tm_sec"
.LASF141:
	.string	"func"
.LASF41:
	.string	"__tm_yday"
.LASF60:
	.string	"_inc"
.LASF140:
	.string	"_Bool"
.LASF168:
	.string	"object"
.LASF196:
	.string	"__register_frame_info"
.LASF28:
	.string	"_next"
.LASF119:
	.string	"_mbsrtowcs_state"
.LASF180:
	.string	"rst_reas"
.LASF128:
	.string	"SDIO_RESET"
.LASF161:
	.string	"ESP_LOG_NONE"
.LASF136:
	.string	"EXT_CPU_RESET"
.LASF235:
	.string	"cpu_configure_region_protection"
.LASF94:
	.string	"_flags2"
.LASF23:
	.string	"__value"
.LASF108:
	.string	"_p5s"
.LASF200:
	.string	"rtc_clk_apb_freq_get"
.LASF121:
	.string	"_wcsrtombs_state"
.LASF112:
	.string	"_mblen_state"
.LASF228:
	.string	"heap_caps_init"
.LASF95:
	.string	"char"
.LASF37:
	.string	"__tm_mday"
.LASF72:
	.string	"_sig_func"
.LASF118:
	.string	"_mbrtowc_state"
.LASF73:
	.string	"_atexit0"
.LASF186:
	.string	"_rtc_bss_start"
.LASF107:
	.string	"_result_k"
.LASF144:
	.string	"slpsel"
.LASF189:
	.string	"__init_array_start"
.LASF19:
	.string	"__wch"
.LASF125:
	.string	"SW_RESET"
.LASF51:
	.string	"_on_exit_args_ptr"
.LASF183:
	.string	"g_flash_guard_default_ops"
.LASF214:
	.string	"esp_crosscore_int_init"
.LASF87:
	.string	"_close"
.LASF142:
	.string	"pullup"
.LASF62:
	.string	"__sdidinit"
.LASF145:
	.string	"slpie"
.LASF177:
	.string	"default_uart_dev"
.LASF57:
	.string	"_stdin"
.LASF66:
	.string	"_gamma_signgam"
.LASF7:
	.string	"long long int"
.LASF123:
	.string	"NO_MEAN"
.LASF12:
	.string	"intptr_t"
.LASF53:
	.string	"_base"
.LASF137:
	.string	"RTCWDT_BROWN_OUT_RESET"
.LASF109:
	.string	"_freelist"
.LASF187:
	.string	"_rtc_bss_end"
.LASF102:
	.string	"_mult"
.LASF103:
	.string	"_add"
.LASF120:
	.string	"_wcrtomb_state"
.LASF133:
	.string	"TGWDT_CPU_RESET"
.LASF152:
	.string	"BaseType_t"
.LASF80:
	.string	"_file"
.LASF198:
	.string	"esp_clk_init"
.LASF230:
	.string	"C:/esp/esp-idf/components/esp32/cpu_start.c"
.LASF192:
	.string	"heap_caps_enable_nonos_stack_heaps"
.LASF227:
	.string	"memset"
.LASF65:
	.string	"__cleanup"
.LASF24:
	.string	"_mbstate_t"
.LASF212:
	.string	"esp_task_wdt_init"
.LASF105:
	.string	"_mprec"
.LASF153:
	.string	"spi_flash_guard_start_func_t"
.LASF147:
	.string	"hold_force"
.LASF42:
	.string	"__tm_isdst"
.LASF164:
	.string	"ESP_LOG_INFO"
.LASF220:
	.string	"esp_log_write"
.LASF49:
	.string	"_ind"
.LASF199:
	.string	"esp_perip_clk_init"
.LASF205:
	.string	"esp_reent_init"
.LASF206:
	.string	"fopen"
.LASF38:
	.string	"__tm_mon"
.LASF233:
	.string	"args"
.LASF155:
	.string	"spi_flash_op_lock_func_t"
.LASF139:
	.string	"RESET_REASON"
.LASF174:
	.string	"main_task"
.LASF194:
	.string	"vTaskDelete"
.LASF52:
	.string	"__sbuf"
.LASF85:
	.string	"_write"
.LASF193:
	.string	"app_main"
.LASF216:
	.string	"spi_flash_init"
.LASF48:
	.string	"_atexit"
.LASF201:
	.string	"uart_div_modify"
.LASF2:
	.string	"short int"
.LASF16:
	.string	"long int"
.LASF75:
	.string	"__sf"
.LASF30:
	.string	"_sign"
.LASF64:
	.string	"_current_locale"
.LASF134:
	.string	"SW_CPU_RESET"
.LASF82:
	.string	"_data"
.LASF20:
	.string	"__wchb"
.LASF181:
	.string	"_global_impure_ptr"
.LASF146:
	.string	"hold"
.LASF126:
	.string	"OWDT_RESET"
.LASF39:
	.string	"__tm_year"
.LASF110:
	.string	"_misc_reent"
.LASF160:
	.string	"spi_flash_guard_funcs_t"
.LASF143:
	.string	"pulldown"
.LASF70:
	.string	"_localtime_buf"
.LASF67:
	.string	"_cvtlen"
.LASF29:
	.string	"_maxwds"
.LASF157:
	.string	"start"
.LASF63:
	.string	"_current_category"
.LASF131:
	.string	"RTCWDT_SYS_RESET"
.LASF90:
	.string	"_blksize"
.LASF33:
	.string	"__tm"
.LASF92:
	.string	"_lock"
.LASF138:
	.string	"RTCWDT_RTC_RESET"
.LASF21:
	.string	"sizetype"
.LASF27:
	.string	"long unsigned int"
.LASF231:
	.string	"C:\\\\esp\\\\esp32-ArkPOS2\\\\ArkPOS2-esp\\\\build\\\\esp32"
.LASF166:
	.string	"ESP_LOG_VERBOSE"
.LASF98:
	.string	"_niobs"
.LASF18:
	.string	"wint_t"
.LASF10:
	.string	"int32_t"
.LASF213:
	.string	"esp_cache_err_int_init"
.LASF45:
	.string	"_dso_handle"
.LASF221:
	.string	"vTaskStartScheduler"
.LASF68:
	.string	"_cvtbuf"
.LASF1:
	.string	"unsigned char"
.LASF163:
	.string	"ESP_LOG_WARN"
.LASF5:
	.string	"__uint32_t"
.LASF207:
	.string	"esp_timer_init"
.LASF176:
	.string	"do_global_ctors"
.LASF14:
	.string	"_LOCK_RECURSIVE_T"
.LASF203:
	.string	"rtc_gpio_force_hold_dis_all"
.LASF84:
	.string	"_read"
.LASF122:
	.string	"esp_err_t"
.LASF173:
	.string	"addr"
.LASF232:
	.string	"DPORT_READ_PERI_REG"
.LASF115:
	.string	"_l64a_buf"
.LASF97:
	.string	"_glue"
.LASF74:
	.string	"__sglue"
.LASF116:
	.string	"_getdate_err"
.LASF159:
	.string	"op_unlock"
.LASF111:
	.string	"_strtok_last"
.LASF114:
	.string	"_mbtowc_state"
.LASF132:
	.string	"INTRUSION_RESET"
.LASF44:
	.string	"_fnargs"
.LASF0:
	.string	"signed char"
.LASF55:
	.string	"_reent"
.LASF3:
	.string	"short unsigned int"
.LASF226:
	.string	"memcpy"
.LASF178:
	.string	"__func__"
.LASF217:
	.string	"spi_flash_guard_set"
.LASF46:
	.string	"_fntypes"
.LASF54:
	.string	"_size"
.LASF185:
	.string	"_bss_end"
.LASF224:
	.string	"esp_panic_wdt_stop"
.LASF15:
	.string	"_off_t"
.LASF89:
	.string	"_nbuf"
.LASF156:
	.string	"spi_flash_op_unlock_func_t"
.LASF175:
	.string	"intr_matrix_clear"
.LASF47:
	.string	"_is_cxa"
.LASF101:
	.string	"_seed"
.LASF236:
	.string	"call_start_cpu0"
.LASF104:
	.string	"_rand_next"
.LASF208:
	.string	"esp_set_time_from_rtc"
.LASF86:
	.string	"_seek"
.LASF151:
	.string	"rtc_gpio_desc_t"
.LASF59:
	.string	"_stderr"
.LASF99:
	.string	"_iobs"
.LASF195:
	.string	"intr_matrix_set"
.LASF162:
	.string	"ESP_LOG_ERROR"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-73-ge28a011) 5.2.0"
