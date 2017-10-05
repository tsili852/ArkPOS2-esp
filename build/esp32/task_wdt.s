	.file	"task_wdt.c"
	.text
.Ltext0:
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC7:
	.string	"Task watchdog got triggered. The following tasks did not feed the watchdog in time:\n"
	.align	4
.LC10:
	.string	" - %s (%s)\n"
	.align	4
.LC13:
	.string	"CPU %d: %s\n"
	.section	.text.task_wdt_isr,"ax",@progbits
	.literal_position
	.literal .LC0, __c$5516
	.literal .LC1, __c$5518
	.literal .LC2, __c$5520
	.literal .LC3, TIMERG0
	.literal .LC4, 1356348065
	.literal .LC5, taskwdt_spinlock
	.literal .LC6, wdt_task_list
	.literal .LC8, .LC7
	.literal .LC9, 2147483647
	.literal .LC11, .LC10
	.literal .LC12, __c$5525
	.literal .LC14, .LC13
	.align	4
	.type	task_wdt_isr, @function
task_wdt_isr:
.LFB13:
	.file 1 "C:/esp/esp-idf/components/esp32/task_wdt.c"
	.loc 1 55 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 59 0
	l32r	a2, .LC3
.LVL1:
	l32r	a3, .LC4
	memw
	s32i	a3, a2, 100
	.loc 1 60 0
	movi.n	a3, 1
	memw
	s32i	a3, a2, 96
	.loc 1 61 0
	movi.n	a3, 0
	memw
	s32i	a3, a2, 100
	.loc 1 63 0
	memw
	l32i	a8, a2, 164
	movi.n	a3, 4
	or	a3, a8, a3
	memw
	s32i	a3, a2, 164
	.loc 1 68 0
	l32r	a10, .LC5
	call8	vTaskEnterCritical
.LVL2:
	.loc 1 69 0
	l32r	a2, .LC6
	l32i.n	a2, a2, 0
	bnez.n	a2, .L2
	.loc 1 71 0
	l32r	a10, .LC5
	call8	vTaskExitCritical
.LVL3:
	.loc 1 72 0
	retw.n
.L2:
	.loc 1 75 0
	l32r	a10, .LC8
	call8	ets_printf
.LVL4:
	.loc 1 76 0
	l32r	a2, .LC6
	l32i.n	a2, a2, 0
.LVL5:
	j	.L4
.L8:
	.loc 1 77 0
	l8ui	a8, a2, 4
	bnez.n	a8, .L5
	.loc 1 78 0
	l32i.n	a10, a2, 0
	call8	xTaskGetAffinity
.LVL6:
	bnez.n	a10, .L11
	l32r	a3, .LC0
	j	.L6
.L11:
	l32r	a3, .LC1
.L6:
.LVL7:
	.loc 1 79 0 discriminator 4
	l32i.n	a10, a2, 0
	call8	xTaskGetAffinity
.LVL8:
	l32r	a8, .LC9
	bne	a10, a8, .L7
	.loc 1 79 0 is_stmt 0
	l32r	a3, .LC2
.LVL9:
.L7:
	.loc 1 80 0 is_stmt 1
	l32i.n	a10, a2, 0
	call8	pcTaskGetTaskName
.LVL10:
	mov.n	a12, a3
	mov.n	a11, a10
	l32r	a10, .LC11
	call8	ets_printf
.LVL11:
.L5:
	.loc 1 76 0 discriminator 2
	l32i.n	a2, a2, 8
.LVL12:
.L4:
	.loc 1 76 0 discriminator 1
	bnez.n	a2, .L8
	.loc 1 83 0
	l32r	a10, .LC12
	call8	ets_printf
.LVL13:
.LBB4:
	.loc 1 84 0
	j	.L9
.LVL14:
.L10:
	.loc 1 85 0 discriminator 3
	mov.n	a10, a2
	call8	xTaskGetCurrentTaskHandleForCPU
.LVL15:
	call8	pcTaskGetTaskName
.LVL16:
	mov.n	a12, a10
	mov.n	a11, a2
	l32r	a10, .LC14
	call8	ets_printf
.LVL17:
	.loc 1 84 0 discriminator 3
	addi.n	a2, a2, 1
.LVL18:
.L9:
	.loc 1 84 0 is_stmt 0 discriminator 1
	blti	a2, 1, .L10
.LBE4:
	.loc 1 92 0 is_stmt 1
	l32r	a10, .LC5
	call8	vTaskExitCritical
.LVL19:
	retw.n
.LFE13:
	.size	task_wdt_isr, .-task_wdt_isr
	.section	.text.esp_task_wdt_feed,"ax",@progbits
	.literal_position
	.literal .LC15, taskwdt_spinlock
	.literal .LC16, wdt_task_list
	.literal .LC17, TIMERG0
	.literal .LC18, 1356348065
	.align	4
	.global	esp_task_wdt_feed
	.type	esp_task_wdt_feed, @function
esp_task_wdt_feed:
.LFB14:
	.loc 1 96 0
	entry	sp, 32
.LCFI1:
.LVL20:
	.loc 1 99 0
	call8	xTaskGetCurrentTaskHandle
.LVL21:
	mov.n	a2, a10
.LVL22:
	.loc 1 100 0
	l32r	a10, .LC15
	call8	vTaskEnterCritical
.LVL23:
	.loc 1 104 0
	l32r	a3, .LC16
	l32i.n	a3, a3, 0
.LVL24:
	mov.n	a8, a3
	.loc 1 98 0
	movi.n	a4, 1
	.loc 1 98 0
	movi.n	a10, 0
	.loc 1 104 0
	j	.L14
.LVL25:
.L17:
	.loc 1 106 0
	l32i.n	a9, a8, 0
	bne	a2, a9, .L15
	.loc 1 107 0
	movi.n	a9, 1
	s8i	a9, a8, 4
.LVL26:
	.loc 1 108 0
	movi.n	a10, 1
.LVL27:
.L15:
	.loc 1 111 0
	l8ui	a9, a8, 4
	bnez.n	a9, .L16
	movi.n	a4, 0
.LVL28:
.L16:
	.loc 1 104 0 discriminator 2
	l32i.n	a8, a8, 8
.LVL29:
.L14:
	.loc 1 104 0 discriminator 1
	bnez.n	a8, .L17
	.loc 1 114 0
	bnez.n	a10, .L18
.LBB5:
	.loc 1 117 0
	movi.n	a10, 0xc
.LVL30:
	call8	malloc
.LVL31:
	.loc 1 118 0
	movi.n	a8, 0
	s8i	a8, a10, 5
	s8i	a8, a10, 6
	s8i	a8, a10, 7
	s8i	a8, a10, 8
	s8i	a8, a10, 9
	s8i	a8, a10, 10
	s8i	a8, a10, 11
	.loc 1 119 0
	s32i.n	a2, a10, 0
	.loc 1 120 0
	movi.n	a2, 1
.LVL32:
	s8i	a2, a10, 4
	.loc 1 121 0
	bnez.n	a3, .L19
	.loc 1 122 0
	l32r	a2, .LC16
	s32i.n	a10, a2, 0
	j	.L18
.LVL33:
.L24:
	.loc 1 124 0
	mov.n	a3, a2
.LVL34:
.L19:
	.loc 1 124 0 discriminator 1
	l32i.n	a2, a3, 8
	bnez.n	a2, .L24
	.loc 1 125 0
	s32i.n	a10, a3, 8
.LVL35:
.L18:
.LBE5:
	.loc 1 128 0
	beqz.n	a4, .L20
	.loc 1 130 0
	l32r	a2, .LC17
	l32r	a3, .LC18
	memw
	s32i	a3, a2, 100
	.loc 1 131 0
	movi.n	a3, 1
	memw
	s32i	a3, a2, 96
	.loc 1 132 0
	movi.n	a3, 0
	memw
	s32i	a3, a2, 100
	.loc 1 134 0
	l32r	a2, .LC16
	l32i.n	a9, a2, 0
.LVL36:
	j	.L21
.L22:
	.loc 1 134 0 discriminator 3
	movi.n	a10, 0
	s8i	a10, a9, 4
.LVL37:
	mov.n	a9, a8
.LVL38:
.L21:
	.loc 1 134 0 discriminator 1
	l32i.n	a8, a9, 8
	bnez.n	a8, .L22
.LVL39:
.L20:
	.loc 1 136 0
	l32r	a10, .LC15
	call8	vTaskExitCritical
.LVL40:
	retw.n
.LFE14:
	.size	esp_task_wdt_feed, .-esp_task_wdt_feed
	.section	.text.idle_hook,"ax",@progbits
	.align	4
	.type	idle_hook, @function
idle_hook:
.LFB16:
	.loc 1 179 0
	entry	sp, 32
.LCFI2:
.LBB6:
.LBB7:
	.file 2 "C:/esp/esp-idf/components/freertos/include/freertos/portable.h"
	.loc 2 202 0
#APP
# 202 "C:/esp/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a8
 extui a8,a8,13,1
# 0 "" 2
.LVL41:
#NO_APP
.LBE7:
.LBE6:
	.loc 1 181 0
	bnez.n	a8, .L26
	.loc 1 183 0
	call8	esp_task_wdt_feed
.LVL42:
.L26:
	.loc 1 185 0
	movi.n	a2, 1
	retw.n
.LFE16:
	.size	idle_hook, .-idle_hook
	.section	.rodata.str1.4
	.align	4
.LC21:
	.string	"task_wdt"
	.align	4
.LC23:
	.string	"\033[0;31mE (%d) %s: task_wdt_delete: No tasks in list?\033[0m\n"
	.align	4
.LC25:
	.string	"\033[0;31mE (%d) %s: task_wdt_delete: Task never called task_wdt_feed!\033[0m\n"
	.section	.text.esp_task_wdt_delete,"ax",@progbits
	.literal_position
	.literal .LC19, wdt_task_list
	.literal .LC20, taskwdt_spinlock
	.literal .LC22, .LC21
	.literal .LC24, .LC23
	.literal .LC26, .LC25
	.align	4
	.global	esp_task_wdt_delete
	.type	esp_task_wdt_delete, @function
esp_task_wdt_delete:
.LFB15:
	.loc 1 139 0
	entry	sp, 32
.LCFI3:
	.loc 1 140 0
	call8	xTaskGetCurrentTaskHandle
.LVL43:
	mov.n	a3, a10
.LVL44:
	.loc 1 141 0
	l32r	a4, .LC19
	l32i.n	a2, a4, 0
.LVL45:
	.loc 1 142 0
	l32r	a10, .LC20
	call8	vTaskEnterCritical
.LVL46:
	.loc 1 145 0
	l32i.n	a10, a4, 0
	bnez.n	a10, .L28
	.loc 1 146 0 discriminator 1
	call8	esp_log_timestamp
.LVL47:
	l32r	a11, .LC22
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC24
	movi.n	a10, 1
	call8	esp_log_write
.LVL48:
	.loc 1 147 0 discriminator 1
	l32r	a10, .LC20
	call8	vTaskExitCritical
.LVL49:
	.loc 1 148 0 discriminator 1
	retw.n
.L28:
	.loc 1 150 0
	bne	a3, a10, .L30
	.loc 1 152 0
	l32i.n	a4, a10, 8
	l32r	a3, .LC19
.LVL50:
	s32i.n	a4, a3, 0
	.loc 1 153 0
	mov.n	a10, a2
	call8	free
.LVL51:
	j	.L31
.LVL52:
.L30:
.LBB8:
	.loc 1 156 0
	l32i.n	a4, a10, 0
	bne	a3, a4, .L32
.LVL53:
.LBB9:
	.loc 1 159 0
	l32i.n	a3, a10, 8
.LVL54:
	l32r	a2, .LC19
.LVL55:
	s32i.n	a3, a2, 0
	.loc 1 160 0
	call8	free
.LVL56:
	.loc 1 161 0
	l32r	a10, .LC20
	call8	vTaskExitCritical
.LVL57:
	.loc 1 162 0
	retw.n
.LVL58:
.L35:
.LBE9:
	.loc 1 164 0
	mov.n	a2, a10
.LVL59:
.L32:
	.loc 1 164 0 discriminator 1
	l32i.n	a10, a2, 8
	beqz.n	a10, .L33
	.loc 1 164 0 discriminator 2
	l32i.n	a8, a10, 0
	bne	a3, a8, .L35
.L33:
	.loc 1 165 0
	bnez.n	a10, .L34
	.loc 1 166 0 discriminator 1
	call8	esp_log_timestamp
.LVL60:
	l32r	a11, .LC22
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC26
	movi.n	a10, 1
	call8	esp_log_write
.LVL61:
	.loc 1 167 0 discriminator 1
	l32r	a10, .LC20
	call8	vTaskExitCritical
.LVL62:
	.loc 1 168 0 discriminator 1
	retw.n
.L34:
.LVL63:
	.loc 1 171 0
	l32i.n	a3, a10, 8
.LVL64:
	s32i.n	a3, a2, 8
	.loc 1 172 0
	call8	free
.LVL65:
.L31:
.LBE8:
	.loc 1 174 0
	l32r	a10, .LC20
	call8	vTaskExitCritical
.LVL66:
	retw.n
.LFE15:
	.size	esp_task_wdt_delete, .-esp_task_wdt_delete
	.section	.rodata.str1.4
	.align	4
.LC41:
	.string	"esp_intr_alloc(ETS_TG0_WDT_LEVEL_INTR_SOURCE, 0, task_wdt_isr, NULL, NULL)"
	.align	4
.LC44:
	.string	"C:/esp/esp-idf/components/esp32/task_wdt.c"
	.section	.text.esp_task_wdt_init,"ax",@progbits
	.literal_position
	.literal .LC27, TIMERG0
	.literal .LC28, 1356348065
	.literal .LC29, 229376
	.literal .LC30, 1835008
	.literal .LC31, 2097152
	.literal .LC32, -1610612737
	.literal .LC33, 536870912
	.literal .LC34, 402653184
	.literal .LC35, -1673527296
	.literal .LC36, 10000
	.literal .LC37, 20000
	.literal .LC38, -2147483648
	.literal .LC39, idle_hook
	.literal .LC40, task_wdt_isr
	.literal .LC42, .LC41
	.literal .LC43, __func__$5562
	.literal .LC45, .LC44
	.align	4
	.global	esp_task_wdt_init
	.type	esp_task_wdt_init, @function
esp_task_wdt_init:
.LFB17:
	.loc 1 189 0
	entry	sp, 32
.LCFI4:
	.loc 1 190 0
	l32r	a8, .LC27
	l32r	a2, .LC28
	memw
	s32i	a2, a8, 100
	.loc 1 191 0
	memw
	l32i	a9, a8, 72
	l32r	a2, .LC29
	or	a2, a9, a2
	memw
	s32i	a2, a8, 72
	.loc 1 192 0
	memw
	l32i	a9, a8, 72
	l32r	a2, .LC30
	or	a2, a9, a2
	memw
	s32i	a2, a8, 72
	.loc 1 193 0
	memw
	l32i	a9, a8, 72
	l32r	a2, .LC31
	or	a2, a9, a2
	memw
	s32i	a2, a8, 72
	.loc 1 194 0
	memw
	l32i	a9, a8, 72
	l32r	a2, .LC32
	and	a9, a9, a2
	l32r	a2, .LC33
	or	a2, a9, a2
	memw
	s32i	a2, a8, 72
	.loc 1 195 0
	memw
	l32i	a9, a8, 72
	l32r	a2, .LC34
	or	a2, a9, a2
	memw
	s32i	a2, a8, 72
	.loc 1 196 0
	memw
	l32i	a9, a8, 76
	extui	a9, a9, 0, 16
	l32r	a2, .LC35
	or	a2, a9, a2
	memw
	s32i	a2, a8, 76
	.loc 1 197 0
	l32r	a2, .LC36
	memw
	s32i	a2, a8, 80
	.loc 1 198 0
	l32r	a2, .LC37
	memw
	s32i	a2, a8, 84
	.loc 1 199 0
	memw
	l32i	a9, a8, 72
	l32r	a2, .LC38
	or	a2, a9, a2
	memw
	s32i	a2, a8, 72
	.loc 1 200 0
	movi.n	a2, 1
	memw
	s32i	a2, a8, 96
	.loc 1 201 0
	movi.n	a2, 0
	memw
	s32i	a2, a8, 100
	.loc 1 203 0
	l32r	a10, .LC39
	call8	esp_register_freertos_idle_hook
.LVL67:
.LBB10:
	.loc 1 205 0
	mov.n	a14, a2
	mov.n	a13, a2
	l32r	a12, .LC40
	mov.n	a11, a2
	movi.n	a10, 0x10
	call8	esp_intr_alloc
.LVL68:
	.loc 1 205 0
	beq	a10, a2, .L36
	.loc 1 205 0 is_stmt 0 discriminator 1
	l32r	a14, .LC42
	l32r	a13, .LC43
	movi	a12, 0xcd
	l32r	a11, .LC45
	call8	_esp_error_check_failed
.LVL69:
.L36:
	retw.n
.LBE10:
.LFE17:
	.size	esp_task_wdt_init, .-esp_task_wdt_init
	.section	.rodata.__func__$5562,"a",@progbits
	.align	4
	.type	__func__$5562, @object
	.size	__func__$5562, 18
__func__$5562:
	.string	"esp_task_wdt_init"
	.section	.dram1,"a",@progbits
	.align	4
	.type	__c$5525, @object
	.size	__c$5525, 26
__c$5525:
	.string	"Tasks currently running:\n"
	.align	4
	.type	__c$5520, @object
	.size	__c$5520, 8
__c$5520:
	.string	"CPU 0/1"
	.align	4
	.type	__c$5518, @object
	.size	__c$5518, 6
__c$5518:
	.string	"CPU 1"
	.align	4
	.type	__c$5516, @object
	.size	__c$5516, 6
__c$5516:
	.string	"CPU 0"
	.section	.data.taskwdt_spinlock,"aw",@progbits
	.align	4
	.type	taskwdt_spinlock, @object
	.size	taskwdt_spinlock, 8
taskwdt_spinlock:
	.word	-1287651329
	.word	0
	.section	.bss.wdt_task_list,"aw",@nobits
	.align	4
	.type	wdt_task_list, @object
	.size	wdt_task_list, 4
wdt_task_list:
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
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI0-.LFB13
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI1-.LFB14
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI2-.LFB16
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
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI4-.LFB17
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
	.text
.Letext0:
	.file 3 "C:/esp/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "C:/esp/esp-idf/components/newlib/include/stdint.h"
	.file 5 "C:/esp/esp-idf/components/freertos/include/freertos/portmacro.h"
	.file 6 "C:/esp/esp-idf/components/esp32/include/esp_err.h"
	.file 7 "C:/esp/esp-idf/components/freertos/include/freertos/task.h"
	.file 8 "C:/esp/esp-idf/components/soc/esp32/include/soc/timer_group_struct.h"
	.file 9 "C:/esp/esp-idf/components/log/include/esp_log.h"
	.file 10 "C:/esp/esp-idf/components/esp32/include/rom/ets_sys.h"
	.file 11 "C:/esp/esp-idf/components/newlib/include/stdlib.h"
	.file 12 "C:/esp/esp-idf/components/esp32/include/esp_intr_alloc.h"
	.file 13 "C:/esp/esp-idf/components/esp32/include/esp_freertos_hooks.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xf41
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF142
	.byte	0xc
	.4byte	.LASF143
	.4byte	.LASF144
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
	.byte	0x3
	.byte	0x19
	.4byte	0x4c
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x3
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
	.byte	0x2c
	.4byte	0x41
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x4
	.byte	0x2d
	.4byte	0x53
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0x6
	.byte	0x4
	.4byte	0xad
	.uleb128 0x7
	.4byte	0xa0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF15
	.uleb128 0x8
	.byte	0x8
	.byte	0x5
	.byte	0x84
	.4byte	0xda
	.uleb128 0x9
	.4byte	.LASF16
	.byte	0x5
	.byte	0x85
	.4byte	0x7e
	.byte	0
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x5
	.byte	0x86
	.4byte	0x7e
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x5
	.byte	0x8b
	.4byte	0xb9
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x6
	.byte	0x18
	.4byte	0x73
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x7
	.byte	0x6c
	.4byte	0x89
	.uleb128 0x7
	.4byte	0xa7
	.uleb128 0x8
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.4byte	0x181
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x8
	.byte	0x19
	.4byte	0x7e
	.byte	0x4
	.byte	0xa
	.byte	0x16
	.byte	0
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0x8
	.byte	0x1a
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0x8
	.byte	0x1b
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0x8
	.byte	0x1c
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0x8
	.byte	0x1d
	.4byte	0x7e
	.byte	0x4
	.byte	0x10
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0x8
	.byte	0x1e
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x8
	.byte	0x1f
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0x8
	.byte	0x20
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0x8
	.byte	0x17
	.4byte	0x19a
	.uleb128 0xc
	.4byte	0x100
	.uleb128 0xd
	.string	"val"
	.byte	0x8
	.byte	0x22
	.4byte	0x7e
	.byte	0
	.uleb128 0x8
	.byte	0x24
	.byte	0x8
	.byte	0x16
	.4byte	0x20f
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0x8
	.byte	0x23
	.4byte	0x181
	.byte	0
	.uleb128 0x9
	.4byte	.LASF30
	.byte	0x8
	.byte	0x24
	.4byte	0x7e
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF31
	.byte	0x8
	.byte	0x25
	.4byte	0x7e
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF32
	.byte	0x8
	.byte	0x26
	.4byte	0x7e
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF33
	.byte	0x8
	.byte	0x27
	.4byte	0x7e
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF34
	.byte	0x8
	.byte	0x28
	.4byte	0x7e
	.byte	0x14
	.uleb128 0x9
	.4byte	.LASF35
	.byte	0x8
	.byte	0x29
	.4byte	0x7e
	.byte	0x18
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0x8
	.byte	0x2a
	.4byte	0x7e
	.byte	0x1c
	.uleb128 0x9
	.4byte	.LASF37
	.byte	0x8
	.byte	0x2b
	.4byte	0x7e
	.byte	0x20
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.byte	0x8
	.byte	0x2e
	.4byte	0x2bc
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x8
	.byte	0x2f
	.4byte	0x7e
	.byte	0x4
	.byte	0xe
	.byte	0x12
	.byte	0
	.uleb128 0xa
	.4byte	.LASF38
	.byte	0x8
	.byte	0x30
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xa
	.4byte	.LASF39
	.byte	0x8
	.byte	0x31
	.4byte	0x7e
	.byte	0x4
	.byte	0x3
	.byte	0xe
	.byte	0
	.uleb128 0xa
	.4byte	.LASF40
	.byte	0x8
	.byte	0x32
	.4byte	0x7e
	.byte	0x4
	.byte	0x3
	.byte	0xb
	.byte	0
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0x8
	.byte	0x33
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0x8
	.byte	0x34
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xa
	.4byte	.LASF41
	.byte	0x8
	.byte	0x35
	.4byte	0x7e
	.byte	0x4
	.byte	0x2
	.byte	0x7
	.byte	0
	.uleb128 0xa
	.4byte	.LASF42
	.byte	0x8
	.byte	0x36
	.4byte	0x7e
	.byte	0x4
	.byte	0x2
	.byte	0x5
	.byte	0
	.uleb128 0xa
	.4byte	.LASF43
	.byte	0x8
	.byte	0x37
	.4byte	0x7e
	.byte	0x4
	.byte	0x2
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.4byte	.LASF44
	.byte	0x8
	.byte	0x38
	.4byte	0x7e
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.string	"en"
	.byte	0x8
	.byte	0x39
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0x8
	.byte	0x2d
	.4byte	0x2d5
	.uleb128 0xc
	.4byte	0x20f
	.uleb128 0xd
	.string	"val"
	.byte	0x8
	.byte	0x3b
	.4byte	0x7e
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.byte	0x8
	.byte	0x3e
	.4byte	0x2fc
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x8
	.byte	0x3f
	.4byte	0x7e
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.4byte	.LASF45
	.byte	0x8
	.byte	0x40
	.4byte	0x7e
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0x8
	.byte	0x3d
	.4byte	0x315
	.uleb128 0xc
	.4byte	0x2d5
	.uleb128 0xd
	.string	"val"
	.byte	0x8
	.byte	0x42
	.4byte	0x7e
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.byte	0x8
	.byte	0x4b
	.4byte	0x378
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x8
	.byte	0x4c
	.4byte	0x7e
	.byte	0x4
	.byte	0xc
	.byte	0x14
	.byte	0
	.uleb128 0xa
	.4byte	.LASF46
	.byte	0x8
	.byte	0x4d
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xa
	.4byte	.LASF47
	.byte	0x8
	.byte	0x4e
	.4byte	0x7e
	.byte	0x4
	.byte	0x2
	.byte	0x11
	.byte	0
	.uleb128 0xe
	.string	"rdy"
	.byte	0x8
	.byte	0x4f
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.string	"max"
	.byte	0x8
	.byte	0x50
	.4byte	0x7e
	.byte	0x4
	.byte	0xf
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.4byte	.LASF48
	.byte	0x8
	.byte	0x51
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0x8
	.byte	0x4a
	.4byte	0x391
	.uleb128 0xc
	.4byte	0x315
	.uleb128 0xd
	.string	"val"
	.byte	0x8
	.byte	0x53
	.4byte	0x7e
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.byte	0x8
	.byte	0x56
	.4byte	0x3b8
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x8
	.byte	0x57
	.4byte	0x7e
	.byte	0x4
	.byte	0x7
	.byte	0x19
	.byte	0
	.uleb128 0xa
	.4byte	.LASF49
	.byte	0x8
	.byte	0x58
	.4byte	0x7e
	.byte	0x4
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0x8
	.byte	0x55
	.4byte	0x3d1
	.uleb128 0xc
	.4byte	0x391
	.uleb128 0xd
	.string	"val"
	.byte	0x8
	.byte	0x5a
	.4byte	0x7e
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.byte	0x8
	.byte	0x5d
	.4byte	0x47e
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x8
	.byte	0x5e
	.4byte	0x7e
	.byte	0x4
	.byte	0x7
	.byte	0x19
	.byte	0
	.uleb128 0xa
	.4byte	.LASF50
	.byte	0x8
	.byte	0x5f
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xa
	.4byte	.LASF51
	.byte	0x8
	.byte	0x60
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xa
	.4byte	.LASF52
	.byte	0x8
	.byte	0x61
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0x8
	.byte	0x62
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0x8
	.byte	0x63
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0x8
	.byte	0x64
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0x8
	.byte	0x65
	.4byte	0x7e
	.byte	0x4
	.byte	0x10
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0x8
	.byte	0x66
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x8
	.byte	0x67
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.string	"en"
	.byte	0x8
	.byte	0x68
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0x8
	.byte	0x5c
	.4byte	0x497
	.uleb128 0xc
	.4byte	0x3d1
	.uleb128 0xd
	.string	"val"
	.byte	0x8
	.byte	0x6a
	.4byte	0x7e
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.byte	0x8
	.byte	0x6d
	.4byte	0x4be
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x8
	.byte	0x6e
	.4byte	0x7e
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0
	.uleb128 0xa
	.4byte	.LASF53
	.byte	0x8
	.byte	0x6f
	.4byte	0x7e
	.byte	0x4
	.byte	0x1a
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0x8
	.byte	0x6c
	.4byte	0x4d7
	.uleb128 0xc
	.4byte	0x497
	.uleb128 0xd
	.string	"val"
	.byte	0x8
	.byte	0x71
	.4byte	0x7e
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.byte	0x8
	.byte	0x7c
	.4byte	0x529
	.uleb128 0xe
	.string	"t0"
	.byte	0x8
	.byte	0x7d
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.string	"t1"
	.byte	0x8
	.byte	0x7e
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.string	"wdt"
	.byte	0x8
	.byte	0x7f
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xa
	.4byte	.LASF54
	.byte	0x8
	.byte	0x80
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xa
	.4byte	.LASF55
	.byte	0x8
	.byte	0x81
	.4byte	0x7e
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0x8
	.byte	0x7b
	.4byte	0x542
	.uleb128 0xc
	.4byte	0x4d7
	.uleb128 0xd
	.string	"val"
	.byte	0x8
	.byte	0x83
	.4byte	0x7e
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.byte	0x8
	.byte	0x86
	.4byte	0x594
	.uleb128 0xe
	.string	"t0"
	.byte	0x8
	.byte	0x87
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.string	"t1"
	.byte	0x8
	.byte	0x88
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.string	"wdt"
	.byte	0x8
	.byte	0x89
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xa
	.4byte	.LASF54
	.byte	0x8
	.byte	0x8a
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xa
	.4byte	.LASF55
	.byte	0x8
	.byte	0x8b
	.4byte	0x7e
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0x8
	.byte	0x85
	.4byte	0x5ad
	.uleb128 0xc
	.4byte	0x542
	.uleb128 0xd
	.string	"val"
	.byte	0x8
	.byte	0x8d
	.4byte	0x7e
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.byte	0x8
	.byte	0x90
	.4byte	0x5ff
	.uleb128 0xe
	.string	"t0"
	.byte	0x8
	.byte	0x91
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.string	"t1"
	.byte	0x8
	.byte	0x92
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.string	"wdt"
	.byte	0x8
	.byte	0x93
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xa
	.4byte	.LASF54
	.byte	0x8
	.byte	0x94
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xa
	.4byte	.LASF55
	.byte	0x8
	.byte	0x95
	.4byte	0x7e
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0x8
	.byte	0x8f
	.4byte	0x618
	.uleb128 0xc
	.4byte	0x5ad
	.uleb128 0xd
	.string	"val"
	.byte	0x8
	.byte	0x97
	.4byte	0x7e
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.byte	0x8
	.byte	0x9a
	.4byte	0x66a
	.uleb128 0xe
	.string	"t0"
	.byte	0x8
	.byte	0x9b
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.string	"t1"
	.byte	0x8
	.byte	0x9c
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.string	"wdt"
	.byte	0x8
	.byte	0x9d
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xa
	.4byte	.LASF54
	.byte	0x8
	.byte	0x9e
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xa
	.4byte	.LASF55
	.byte	0x8
	.byte	0x9f
	.4byte	0x7e
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0x8
	.byte	0x99
	.4byte	0x683
	.uleb128 0xc
	.4byte	0x618
	.uleb128 0xd
	.string	"val"
	.byte	0x8
	.byte	0xa1
	.4byte	0x7e
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.byte	0x8
	.byte	0xb8
	.4byte	0x6aa
	.uleb128 0xa
	.4byte	.LASF56
	.byte	0x8
	.byte	0xb9
	.4byte	0x7e
	.byte	0x4
	.byte	0x1c
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.4byte	.LASF57
	.byte	0x8
	.byte	0xba
	.4byte	0x7e
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0x8
	.byte	0xb7
	.4byte	0x6c3
	.uleb128 0xc
	.4byte	0x683
	.uleb128 0xd
	.string	"val"
	.byte	0x8
	.byte	0xbc
	.4byte	0x7e
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.byte	0x8
	.byte	0xbf
	.4byte	0x6e9
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x8
	.byte	0xc0
	.4byte	0x7e
	.byte	0x4
	.byte	0x1f
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.string	"en"
	.byte	0x8
	.byte	0xc1
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0x8
	.byte	0xbe
	.4byte	0x702
	.uleb128 0xc
	.4byte	0x6c3
	.uleb128 0xd
	.string	"val"
	.byte	0x8
	.byte	0xc3
	.4byte	0x7e
	.byte	0
	.uleb128 0xf
	.2byte	0x100
	.byte	0x8
	.byte	0x15
	.4byte	0x940
	.uleb128 0x9
	.4byte	.LASF58
	.byte	0x8
	.byte	0x2c
	.4byte	0x940
	.byte	0
	.uleb128 0x9
	.4byte	.LASF59
	.byte	0x8
	.byte	0x3c
	.4byte	0x2bc
	.byte	0x48
	.uleb128 0x9
	.4byte	.LASF60
	.byte	0x8
	.byte	0x43
	.4byte	0x2fc
	.byte	0x4c
	.uleb128 0x9
	.4byte	.LASF61
	.byte	0x8
	.byte	0x44
	.4byte	0x7e
	.byte	0x50
	.uleb128 0x9
	.4byte	.LASF62
	.byte	0x8
	.byte	0x45
	.4byte	0x7e
	.byte	0x54
	.uleb128 0x9
	.4byte	.LASF63
	.byte	0x8
	.byte	0x46
	.4byte	0x7e
	.byte	0x58
	.uleb128 0x9
	.4byte	.LASF64
	.byte	0x8
	.byte	0x47
	.4byte	0x7e
	.byte	0x5c
	.uleb128 0x9
	.4byte	.LASF65
	.byte	0x8
	.byte	0x48
	.4byte	0x7e
	.byte	0x60
	.uleb128 0x9
	.4byte	.LASF66
	.byte	0x8
	.byte	0x49
	.4byte	0x7e
	.byte	0x64
	.uleb128 0x9
	.4byte	.LASF67
	.byte	0x8
	.byte	0x54
	.4byte	0x378
	.byte	0x68
	.uleb128 0x9
	.4byte	.LASF68
	.byte	0x8
	.byte	0x5b
	.4byte	0x3b8
	.byte	0x6c
	.uleb128 0x9
	.4byte	.LASF69
	.byte	0x8
	.byte	0x6b
	.4byte	0x47e
	.byte	0x70
	.uleb128 0x9
	.4byte	.LASF70
	.byte	0x8
	.byte	0x72
	.4byte	0x4be
	.byte	0x74
	.uleb128 0x9
	.4byte	.LASF71
	.byte	0x8
	.byte	0x73
	.4byte	0x7e
	.byte	0x78
	.uleb128 0x9
	.4byte	.LASF72
	.byte	0x8
	.byte	0x74
	.4byte	0x7e
	.byte	0x7c
	.uleb128 0x9
	.4byte	.LASF73
	.byte	0x8
	.byte	0x75
	.4byte	0x7e
	.byte	0x80
	.uleb128 0x9
	.4byte	.LASF74
	.byte	0x8
	.byte	0x76
	.4byte	0x7e
	.byte	0x84
	.uleb128 0x9
	.4byte	.LASF75
	.byte	0x8
	.byte	0x77
	.4byte	0x7e
	.byte	0x88
	.uleb128 0x9
	.4byte	.LASF76
	.byte	0x8
	.byte	0x78
	.4byte	0x7e
	.byte	0x8c
	.uleb128 0x9
	.4byte	.LASF77
	.byte	0x8
	.byte	0x79
	.4byte	0x7e
	.byte	0x90
	.uleb128 0x9
	.4byte	.LASF78
	.byte	0x8
	.byte	0x7a
	.4byte	0x7e
	.byte	0x94
	.uleb128 0x9
	.4byte	.LASF79
	.byte	0x8
	.byte	0x84
	.4byte	0x529
	.byte	0x98
	.uleb128 0x9
	.4byte	.LASF80
	.byte	0x8
	.byte	0x8e
	.4byte	0x594
	.byte	0x9c
	.uleb128 0x9
	.4byte	.LASF81
	.byte	0x8
	.byte	0x98
	.4byte	0x5ff
	.byte	0xa0
	.uleb128 0x9
	.4byte	.LASF82
	.byte	0x8
	.byte	0xa2
	.4byte	0x66a
	.byte	0xa4
	.uleb128 0x9
	.4byte	.LASF83
	.byte	0x8
	.byte	0xa3
	.4byte	0x7e
	.byte	0xa8
	.uleb128 0x9
	.4byte	.LASF84
	.byte	0x8
	.byte	0xa4
	.4byte	0x7e
	.byte	0xac
	.uleb128 0x9
	.4byte	.LASF85
	.byte	0x8
	.byte	0xa5
	.4byte	0x7e
	.byte	0xb0
	.uleb128 0x9
	.4byte	.LASF86
	.byte	0x8
	.byte	0xa6
	.4byte	0x7e
	.byte	0xb4
	.uleb128 0x9
	.4byte	.LASF87
	.byte	0x8
	.byte	0xa7
	.4byte	0x7e
	.byte	0xb8
	.uleb128 0x9
	.4byte	.LASF88
	.byte	0x8
	.byte	0xa8
	.4byte	0x7e
	.byte	0xbc
	.uleb128 0x9
	.4byte	.LASF89
	.byte	0x8
	.byte	0xa9
	.4byte	0x7e
	.byte	0xc0
	.uleb128 0x9
	.4byte	.LASF90
	.byte	0x8
	.byte	0xaa
	.4byte	0x7e
	.byte	0xc4
	.uleb128 0x9
	.4byte	.LASF91
	.byte	0x8
	.byte	0xab
	.4byte	0x7e
	.byte	0xc8
	.uleb128 0x9
	.4byte	.LASF92
	.byte	0x8
	.byte	0xac
	.4byte	0x7e
	.byte	0xcc
	.uleb128 0x9
	.4byte	.LASF93
	.byte	0x8
	.byte	0xad
	.4byte	0x7e
	.byte	0xd0
	.uleb128 0x9
	.4byte	.LASF94
	.byte	0x8
	.byte	0xae
	.4byte	0x7e
	.byte	0xd4
	.uleb128 0x9
	.4byte	.LASF95
	.byte	0x8
	.byte	0xaf
	.4byte	0x7e
	.byte	0xd8
	.uleb128 0x9
	.4byte	.LASF96
	.byte	0x8
	.byte	0xb0
	.4byte	0x7e
	.byte	0xdc
	.uleb128 0x9
	.4byte	.LASF97
	.byte	0x8
	.byte	0xb1
	.4byte	0x7e
	.byte	0xe0
	.uleb128 0x9
	.4byte	.LASF98
	.byte	0x8
	.byte	0xb2
	.4byte	0x7e
	.byte	0xe4
	.uleb128 0x9
	.4byte	.LASF99
	.byte	0x8
	.byte	0xb3
	.4byte	0x7e
	.byte	0xe8
	.uleb128 0x9
	.4byte	.LASF100
	.byte	0x8
	.byte	0xb4
	.4byte	0x7e
	.byte	0xec
	.uleb128 0x9
	.4byte	.LASF101
	.byte	0x8
	.byte	0xb5
	.4byte	0x7e
	.byte	0xf0
	.uleb128 0x9
	.4byte	.LASF102
	.byte	0x8
	.byte	0xb6
	.4byte	0x7e
	.byte	0xf4
	.uleb128 0x9
	.4byte	.LASF103
	.byte	0x8
	.byte	0xbd
	.4byte	0x6aa
	.byte	0xf8
	.uleb128 0x10
	.string	"clk"
	.byte	0x8
	.byte	0xc4
	.4byte	0x6e9
	.byte	0xfc
	.byte	0
	.uleb128 0x11
	.4byte	0x19a
	.4byte	0x950
	.uleb128 0x12
	.4byte	0x92
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF104
	.byte	0x8
	.byte	0xc5
	.4byte	0x95b
	.uleb128 0x13
	.4byte	0x702
	.uleb128 0x14
	.byte	0x4
	.4byte	0x5e
	.byte	0x9
	.byte	0x1f
	.4byte	0x991
	.uleb128 0x15
	.4byte	.LASF105
	.byte	0
	.uleb128 0x15
	.4byte	.LASF106
	.byte	0x1
	.uleb128 0x15
	.4byte	.LASF107
	.byte	0x2
	.uleb128 0x15
	.4byte	.LASF108
	.byte	0x3
	.uleb128 0x15
	.4byte	.LASF109
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF110
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF111
	.byte	0x9
	.byte	0x26
	.4byte	0x960
	.uleb128 0x3
	.4byte	.LASF112
	.byte	0x1
	.byte	0x2c
	.4byte	0x9a7
	.uleb128 0x16
	.4byte	.LASF112
	.byte	0xc
	.byte	0x1
	.byte	0x2d
	.4byte	0x9d8
	.uleb128 0x9
	.4byte	.LASF113
	.byte	0x1
	.byte	0x2e
	.4byte	0xf0
	.byte	0
	.uleb128 0x9
	.4byte	.LASF114
	.byte	0x1
	.byte	0x2f
	.4byte	0xb2
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF115
	.byte	0x1
	.byte	0x30
	.4byte	0x9d8
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x99c
	.uleb128 0x17
	.4byte	.LASF145
	.byte	0x2
	.byte	0xc8
	.4byte	0x7e
	.byte	0x3
	.4byte	0x9f9
	.uleb128 0x18
	.string	"id"
	.byte	0x2
	.byte	0xc9
	.4byte	0x4c
	.byte	0
	.uleb128 0x19
	.4byte	.LASF146
	.byte	0x1
	.byte	0x37
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb34
	.uleb128 0x1a
	.string	"arg"
	.byte	0x1
	.byte	0x37
	.4byte	0x89
	.4byte	.LLST0
	.uleb128 0x1b
	.4byte	.LASF116
	.byte	0x1
	.byte	0x38
	.4byte	0x9d8
	.4byte	.LLST1
	.uleb128 0x1c
	.string	"cpu"
	.byte	0x1
	.byte	0x39
	.4byte	0xa7
	.4byte	.LLST2
	.uleb128 0x1d
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.4byte	0xa8c
	.uleb128 0x1c
	.string	"x"
	.byte	0x1
	.byte	0x54
	.4byte	0x4c
	.4byte	.LLST3
	.uleb128 0x1e
	.4byte	.LVL15
	.4byte	0xea6
	.4byte	0xa69
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL16
	.4byte	0xeb2
	.uleb128 0x21
	.4byte	.LVL17
	.4byte	0xebe
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC13
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL2
	.4byte	0xec9
	.4byte	0xaa3
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	taskwdt_spinlock
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL3
	.4byte	0xed4
	.4byte	0xaba
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	taskwdt_spinlock
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL4
	.4byte	0xebe
	.4byte	0xad1
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0
	.uleb128 0x20
	.4byte	.LVL6
	.4byte	0xedf
	.uleb128 0x20
	.4byte	.LVL8
	.4byte	0xedf
	.uleb128 0x20
	.4byte	.LVL10
	.4byte	0xeb2
	.uleb128 0x1e
	.4byte	.LVL11
	.4byte	0xebe
	.4byte	0xb09
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL13
	.4byte	0xebe
	.4byte	0xb20
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	__c$5525
	.byte	0
	.uleb128 0x21
	.4byte	.LVL19
	.4byte	0xed4
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	taskwdt_spinlock
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LASF121
	.byte	0x1
	.byte	0x60
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbe5
	.uleb128 0x1b
	.4byte	.LASF116
	.byte	0x1
	.byte	0x61
	.4byte	0x9d8
	.4byte	.LLST4
	.uleb128 0x1b
	.4byte	.LASF117
	.byte	0x1
	.byte	0x62
	.4byte	0xb2
	.4byte	.LLST5
	.uleb128 0x1b
	.4byte	.LASF118
	.byte	0x1
	.byte	0x62
	.4byte	0xb2
	.4byte	.LLST6
	.uleb128 0x1b
	.4byte	.LASF119
	.byte	0x1
	.byte	0x63
	.4byte	0xf0
	.4byte	.LLST7
	.uleb128 0x1d
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.4byte	0xbb1
	.uleb128 0x1b
	.4byte	.LASF120
	.byte	0x1
	.byte	0x75
	.4byte	0x9d8
	.4byte	.LLST8
	.uleb128 0x21
	.4byte	.LVL31
	.4byte	0xeeb
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL21
	.4byte	0xef6
	.uleb128 0x1e
	.4byte	.LVL23
	.4byte	0xec9
	.4byte	0xbd1
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	taskwdt_spinlock
	.byte	0
	.uleb128 0x21
	.4byte	.LVL40
	.4byte	0xed4
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	taskwdt_spinlock
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LASF147
	.byte	0x1
	.byte	0xb3
	.4byte	0xb2
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc2f
	.uleb128 0x24
	.4byte	0x9de
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.byte	0x1
	.byte	0xb5
	.4byte	0xc25
	.uleb128 0x25
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.uleb128 0x26
	.4byte	0x9ee
	.4byte	.LLST9
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL42
	.4byte	0xb34
	.byte	0
	.uleb128 0x22
	.4byte	.LASF122
	.byte	0x1
	.byte	0x8b
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xda5
	.uleb128 0x1b
	.4byte	.LASF119
	.byte	0x1
	.byte	0x8c
	.4byte	0xf0
	.4byte	.LLST10
	.uleb128 0x1b
	.4byte	.LASF116
	.byte	0x1
	.byte	0x8d
	.4byte	0x9d8
	.4byte	.LLST11
	.uleb128 0x1d
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.4byte	0xd0f
	.uleb128 0x1b
	.4byte	.LASF123
	.byte	0x1
	.byte	0xaa
	.4byte	0x9d8
	.4byte	.LLST12
	.uleb128 0x1d
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.4byte	0xcb7
	.uleb128 0x1b
	.4byte	.LASF123
	.byte	0x1
	.byte	0x9e
	.4byte	0x9d8
	.4byte	.LLST13
	.uleb128 0x20
	.4byte	.LVL56
	.4byte	0xf02
	.uleb128 0x21
	.4byte	.LVL57
	.4byte	0xed4
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	taskwdt_spinlock
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL60
	.4byte	0xf0d
	.uleb128 0x1e
	.4byte	.LVL61
	.4byte	0xf18
	.4byte	0xcee
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC21
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC25
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC21
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL62
	.4byte	0xed4
	.4byte	0xd05
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	taskwdt_spinlock
	.byte	0
	.uleb128 0x20
	.4byte	.LVL65
	.4byte	0xf02
	.byte	0
	.uleb128 0x20
	.4byte	.LVL43
	.4byte	0xef6
	.uleb128 0x1e
	.4byte	.LVL46
	.4byte	0xec9
	.4byte	0xd2f
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	taskwdt_spinlock
	.byte	0
	.uleb128 0x20
	.4byte	.LVL47
	.4byte	0xf0d
	.uleb128 0x1e
	.4byte	.LVL48
	.4byte	0xf18
	.4byte	0xd66
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC21
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC21
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL49
	.4byte	0xed4
	.4byte	0xd7d
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	taskwdt_spinlock
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL51
	.4byte	0xf02
	.4byte	0xd91
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL66
	.4byte	0xed4
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	taskwdt_spinlock
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LASF124
	.byte	0x1
	.byte	0xbd
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe52
	.uleb128 0x27
	.4byte	.LASF125
	.4byte	0xe62
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5562
	.uleb128 0x1d
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.4byte	0xe3e
	.uleb128 0x1c
	.string	"rc"
	.byte	0x1
	.byte	0xcd
	.4byte	0xe5
	.4byte	.LLST14
	.uleb128 0x1e
	.4byte	.LVL68
	.4byte	0xf23
	.4byte	0xe12
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x40
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	task_wdt_isr
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL69
	.4byte	0xf2e
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC44
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0xcd
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5562
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC41
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL67
	.4byte	0xf39
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	idle_hook
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	0xa0
	.4byte	0xe62
	.uleb128 0x12
	.4byte	0x92
	.byte	0x11
	.byte	0
	.uleb128 0x7
	.4byte	0xe52
	.uleb128 0x28
	.string	"TAG"
	.byte	0x1
	.byte	0x2a
	.4byte	0xfb
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC21
	.byte	0x9f
	.uleb128 0x29
	.4byte	.LASF126
	.byte	0x1
	.byte	0x33
	.4byte	0x9d8
	.uleb128 0x5
	.byte	0x3
	.4byte	wdt_task_list
	.uleb128 0x29
	.4byte	.LASF127
	.byte	0x1
	.byte	0x34
	.4byte	0xda
	.uleb128 0x5
	.byte	0x3
	.4byte	taskwdt_spinlock
	.uleb128 0x2a
	.4byte	.LASF148
	.byte	0x8
	.byte	0xc6
	.4byte	0x950
	.uleb128 0x2b
	.4byte	.LASF128
	.4byte	.LASF128
	.byte	0x7
	.2byte	0x848
	.uleb128 0x2b
	.4byte	.LASF129
	.4byte	.LASF129
	.byte	0x7
	.2byte	0x4fd
	.uleb128 0x2c
	.4byte	.LASF130
	.4byte	.LASF130
	.byte	0xa
	.byte	0xde
	.uleb128 0x2c
	.4byte	.LASF131
	.4byte	.LASF131
	.byte	0x5
	.byte	0xdc
	.uleb128 0x2c
	.4byte	.LASF132
	.4byte	.LASF132
	.byte	0x5
	.byte	0xdb
	.uleb128 0x2b
	.4byte	.LASF133
	.4byte	.LASF133
	.byte	0x7
	.2byte	0x877
	.uleb128 0x2c
	.4byte	.LASF134
	.4byte	.LASF134
	.byte	0xb
	.byte	0x65
	.uleb128 0x2b
	.4byte	.LASF135
	.4byte	.LASF135
	.byte	0x7
	.2byte	0x83e
	.uleb128 0x2c
	.4byte	.LASF136
	.4byte	.LASF136
	.byte	0xb
	.byte	0x5a
	.uleb128 0x2c
	.4byte	.LASF137
	.4byte	.LASF137
	.byte	0x9
	.byte	0x4c
	.uleb128 0x2c
	.4byte	.LASF138
	.4byte	.LASF138
	.byte	0x9
	.byte	0x60
	.uleb128 0x2c
	.4byte	.LASF139
	.4byte	.LASF139
	.byte	0xc
	.byte	0x99
	.uleb128 0x2c
	.4byte	.LASF140
	.4byte	.LASF140
	.byte	0x6
	.byte	0x2d
	.uleb128 0x2c
	.4byte	.LASF141
	.4byte	.LASF141
	.byte	0xd
	.byte	0x2e
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL5
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL7
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL20
	.4byte	.LVL21-1
	.2byte	0x5
	.byte	0x3
	.4byte	wdt_task_list
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL25
	.4byte	.LVL31-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL33
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL20
	.4byte	.LVL25
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL20
	.4byte	.LVL25
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL22
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL32
	.4byte	.LVL35
	.2byte	0x2
	.byte	0x7a
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL31
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL41
	.4byte	.LVL42-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL44
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL52
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL58
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL45
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL58
	.4byte	.LFE15
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL63
	.4byte	.LVL65-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL53
	.4byte	.LVL56-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL68
	.4byte	.LVL69-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL69
	.4byte	.LFE17
	.2byte	0x1
	.byte	0x5a
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
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF17:
	.string	"count"
.LASF36:
	.string	"load_high"
.LASF80:
	.string	"int_raw"
.LASF123:
	.string	"freeme"
.LASF92:
	.string	"reserved_cc"
.LASF115:
	.string	"next"
.LASF133:
	.string	"xTaskGetAffinity"
.LASF76:
	.string	"lactloadlo"
.LASF46:
	.string	"start_cycling"
.LASF93:
	.string	"reserved_d0"
.LASF143:
	.string	"C:/esp/esp-idf/components/esp32/task_wdt.c"
.LASF71:
	.string	"lactlo"
.LASF113:
	.string	"task_handle"
.LASF95:
	.string	"reserved_d8"
.LASF8:
	.string	"long long unsigned int"
.LASF60:
	.string	"wdt_config1"
.LASF61:
	.string	"wdt_config2"
.LASF62:
	.string	"wdt_config3"
.LASF63:
	.string	"wdt_config4"
.LASF64:
	.string	"wdt_config5"
.LASF109:
	.string	"ESP_LOG_DEBUG"
.LASF7:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF104:
	.string	"timg_dev_t"
.LASF96:
	.string	"reserved_dc"
.LASF118:
	.string	"do_feed_wdt"
.LASF35:
	.string	"load_low"
.LASF139:
	.string	"esp_intr_alloc"
.LASF131:
	.string	"vTaskEnterCritical"
.LASF97:
	.string	"reserved_e0"
.LASF121:
	.string	"esp_task_wdt_feed"
.LASF132:
	.string	"vTaskExitCritical"
.LASF11:
	.string	"long int"
.LASF98:
	.string	"reserved_e4"
.LASF99:
	.string	"reserved_e8"
.LASF138:
	.string	"esp_log_write"
.LASF20:
	.string	"TaskHandle_t"
.LASF28:
	.string	"enable"
.LASF136:
	.string	"free"
.LASF34:
	.string	"alarm_high"
.LASF94:
	.string	"reserved_d4"
.LASF18:
	.string	"portMUX_TYPE"
.LASF26:
	.string	"autoreload"
.LASF5:
	.string	"__uint32_t"
.LASF141:
	.string	"esp_register_freertos_idle_hook"
.LASF100:
	.string	"reserved_ec"
.LASF144:
	.string	"C:\\\\esp\\\\esp32-ArkPOS2\\\\ArkPOS2-esp\\\\build\\\\esp32"
.LASF27:
	.string	"increase"
.LASF54:
	.string	"lact"
.LASF49:
	.string	"value"
.LASF65:
	.string	"wdt_feed"
.LASF101:
	.string	"reserved_f0"
.LASF140:
	.string	"_esp_error_check_failed"
.LASF6:
	.string	"unsigned int"
.LASF23:
	.string	"level_int_en"
.LASF30:
	.string	"cnt_low"
.LASF13:
	.string	"long unsigned int"
.LASF37:
	.string	"reload"
.LASF135:
	.string	"xTaskGetCurrentTaskHandle"
.LASF120:
	.string	"newtask"
.LASF3:
	.string	"short unsigned int"
.LASF56:
	.string	"date"
.LASF81:
	.string	"int_st_timers"
.LASF58:
	.string	"hw_timer"
.LASF112:
	.string	"wdt_task_t"
.LASF128:
	.string	"xTaskGetCurrentTaskHandleForCPU"
.LASF78:
	.string	"lactload"
.LASF114:
	.string	"fed_watchdog"
.LASF126:
	.string	"wdt_task_list"
.LASF103:
	.string	"timg_date"
.LASF145:
	.string	"xPortGetCoreID"
.LASF67:
	.string	"rtc_cali_cfg"
.LASF119:
	.string	"handle"
.LASF108:
	.string	"ESP_LOG_INFO"
.LASF12:
	.string	"sizetype"
.LASF77:
	.string	"lactloadhi"
.LASF137:
	.string	"esp_log_timestamp"
.LASF79:
	.string	"int_ena"
.LASF33:
	.string	"alarm_low"
.LASF72:
	.string	"lacthi"
.LASF39:
	.string	"sys_reset_length"
.LASF130:
	.string	"ets_printf"
.LASF47:
	.string	"clk_sel"
.LASF31:
	.string	"cnt_high"
.LASF111:
	.string	"esp_log_level_t"
.LASF68:
	.string	"rtc_cali_cfg1"
.LASF122:
	.string	"esp_task_wdt_delete"
.LASF110:
	.string	"ESP_LOG_VERBOSE"
.LASF127:
	.string	"taskwdt_spinlock"
.LASF22:
	.string	"alarm_en"
.LASF15:
	.string	"_Bool"
.LASF9:
	.string	"int32_t"
.LASF1:
	.string	"unsigned char"
.LASF147:
	.string	"idle_hook"
.LASF57:
	.string	"reserved28"
.LASF142:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF51:
	.string	"cpst_en"
.LASF2:
	.string	"short int"
.LASF83:
	.string	"reserved_a8"
.LASF106:
	.string	"ESP_LOG_ERROR"
.LASF75:
	.string	"lactalarmhi"
.LASF74:
	.string	"lactalarmlo"
.LASF45:
	.string	"clk_prescale"
.LASF125:
	.string	"__func__"
.LASF85:
	.string	"reserved_b0"
.LASF134:
	.string	"malloc"
.LASF82:
	.string	"int_clr_timers"
.LASF66:
	.string	"wdt_wprotect"
.LASF38:
	.string	"flashboot_mod_en"
.LASF10:
	.string	"uint32_t"
.LASF21:
	.string	"reserved0"
.LASF16:
	.string	"owner"
.LASF105:
	.string	"ESP_LOG_NONE"
.LASF14:
	.string	"char"
.LASF84:
	.string	"reserved_ac"
.LASF4:
	.string	"__int32_t"
.LASF102:
	.string	"reserved_f4"
.LASF29:
	.string	"config"
.LASF129:
	.string	"pcTaskGetTaskName"
.LASF124:
	.string	"esp_task_wdt_init"
.LASF44:
	.string	"stg0"
.LASF43:
	.string	"stg1"
.LASF42:
	.string	"stg2"
.LASF41:
	.string	"stg3"
.LASF86:
	.string	"reserved_b4"
.LASF59:
	.string	"wdt_config0"
.LASF24:
	.string	"edge_int_en"
.LASF87:
	.string	"reserved_b8"
.LASF148:
	.string	"TIMERG0"
.LASF50:
	.string	"rtc_only"
.LASF69:
	.string	"lactconfig"
.LASF32:
	.string	"update"
.LASF107:
	.string	"ESP_LOG_WARN"
.LASF40:
	.string	"cpu_reset_length"
.LASF19:
	.string	"esp_err_t"
.LASF88:
	.string	"reserved_bc"
.LASF117:
	.string	"found_task"
.LASF25:
	.string	"divider"
.LASF73:
	.string	"lactupdate"
.LASF89:
	.string	"reserved_c0"
.LASF90:
	.string	"reserved_c4"
.LASF52:
	.string	"lac_en"
.LASF53:
	.string	"step_len"
.LASF146:
	.string	"task_wdt_isr"
.LASF91:
	.string	"reserved_c8"
.LASF55:
	.string	"reserved4"
.LASF48:
	.string	"start"
.LASF70:
	.string	"lactrtc"
.LASF116:
	.string	"wdttask"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-73-ge28a011) 5.2.0"
