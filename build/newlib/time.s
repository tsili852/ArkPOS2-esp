	.file	"time.c"
	.text
.Ltext0:
	.section	.text.get_boot_time,"ax",@progbits
	.literal_position
	.literal .LC0, s_boot_time_lock
	.literal .LC1, 1072988244
	.literal .LC2, 1072988248
	.align	4
	.type	get_boot_time, @function
get_boot_time:
.LFB11:
	.file 1 "C:/esp/esp-idf/components/newlib/time.c"
	.loc 1 101 0
	entry	sp, 32
.LCFI0:
	.loc 1 103 0
	l32r	a10, .LC0
	call8	_lock_acquire
.LVL0:
	.loc 1 105 0
	l32r	a2, .LC1
	memw
	l32i.n	a2, a2, 0
	l32r	a3, .LC2
	memw
	l32i.n	a3, a3, 0
.LVL1:
	.loc 1 109 0
	l32r	a10, .LC0
	call8	_lock_release
.LVL2:
	.loc 1 111 0
	retw.n
.LFE11:
	.size	get_boot_time, .-get_boot_time
	.section	.text.set_boot_time,"ax",@progbits
	.literal_position
	.literal .LC3, s_boot_time_lock
	.literal .LC4, 1072988244
	.literal .LC5, 1072988248
	.align	4
	.type	set_boot_time, @function
set_boot_time:
.LFB10:
	.loc 1 89 0
.LVL3:
	entry	sp, 32
.LCFI1:
	.loc 1 90 0
	l32r	a4, .LC3
	mov.n	a10, a4
	call8	_lock_acquire
.LVL4:
	.loc 1 92 0
	l32r	a8, .LC4
	memw
	s32i.n	a2, a8, 0
	.loc 1 93 0
	l32r	a8, .LC5
	memw
	s32i.n	a3, a8, 0
	.loc 1 97 0
	mov.n	a10, a4
	call8	_lock_release
.LVL5:
	retw.n
.LFE10:
	.size	set_boot_time, .-set_boot_time
	.section	.text.get_time_since_boot,"ax",@progbits
	.literal_position
	.literal .LC6, s_microseconds_offset
	.align	4
	.type	get_time_since_boot, @function
get_time_since_boot:
.LFB16:
	.loc 1 162 0
	entry	sp, 32
.LCFI2:
.LVL6:
	.loc 1 165 0
	call8	esp_timer_get_time
.LVL7:
	l32r	a3, .LC6
	l32i.n	a2, a3, 0
	l32i.n	a8, a3, 4
	add.n	a2, a2, a10
	movi.n	a3, 1
	bltu	a2, a10, .L5
	movi.n	a3, 0
.L5:
	add.n	a11, a8, a11
	add.n	a3, a3, a11
.LVL8:
	.loc 1 170 0
	retw.n
.LFE16:
	.size	get_time_since_boot, .-get_time_since_boot
	.section	.text.esp_clk_slowclk_cal_set,"ax",@progbits
	.literal_position
	.literal .LC7, 1072988240
	.literal .LC9, 524287
	.align	4
	.global	esp_clk_slowclk_cal_set
	.type	esp_clk_slowclk_cal_set, @function
esp_clk_slowclk_cal_set:
.LFB12:
	.loc 1 116 0
.LVL9:
	entry	sp, 32
.LCFI3:
	.loc 1 125 0
	call8	rtc_time_get
.LVL10:
	.loc 1 126 0
	l32r	a3, .LC7
	memw
	l32i.n	a8, a3, 0
.LVL11:
	.loc 1 127 0
	sub	a8, a8, a2
.LVL12:
	.loc 1 128 0
	srai	a3, a8, 31
	mull	a3, a3, a10
	mull	a11, a8, a11
.LVL13:
	add.n	a11, a3, a11
	mull	a3, a8, a10
	muluh	a8, a8, a10
.LVL14:
	add.n	a8, a11, a8
	srai	a9, a8, 31
	l32r	a4, .LC9
	and	a4, a9, a4
	add.n	a3, a4, a3
	movi.n	a10, 1
	bltu	a3, a4, .L8
	movi.n	a10, 0
.L8:
	add.n	a8, a10, a8
	slli	a4, a8, 13
	extui	a3, a3, 19, 13
	or	a3, a4, a3
	srai	a4, a8, 19
.LVL15:
	.loc 1 129 0
	call8	get_boot_time
.LVL16:
	add.n	a3, a10, a3
.LVL17:
	movi.n	a9, 1
	bltu	a3, a10, .L9
	movi.n	a9, 0
.L9:
	add.n	a8, a11, a4
	add.n	a11, a9, a8
.LVL18:
	.loc 1 130 0
	mov.n	a10, a3
	call8	set_boot_time
.LVL19:
	.loc 1 132 0
	l32r	a3, .LC7
	memw
	s32i.n	a2, a3, 0
	retw.n
.LFE12:
	.size	esp_clk_slowclk_cal_set, .-esp_clk_slowclk_cal_set
	.section	.text.esp_clk_slowclk_cal_get,"ax",@progbits
	.literal_position
	.literal .LC10, 1072988240
	.align	4
	.global	esp_clk_slowclk_cal_get
	.type	esp_clk_slowclk_cal_get, @function
esp_clk_slowclk_cal_get:
.LFB13:
	.loc 1 136 0
	entry	sp, 32
.LCFI4:
	.loc 1 137 0
	l32r	a2, .LC10
	memw
	l32i.n	a2, a2, 0
	.loc 1 138 0
	retw.n
.LFE13:
	.size	esp_clk_slowclk_cal_get, .-esp_clk_slowclk_cal_get
	.section	.text.get_rtc_time_us,"ax",@progbits
	.align	4
	.type	get_rtc_time_us, @function
get_rtc_time_us:
.LFB9:
	.loc 1 50 0
	entry	sp, 32
.LCFI5:
	.loc 1 51 0
	call8	rtc_time_get
.LVL20:
	mov.n	a2, a10
	mov.n	a3, a11
.LVL21:
	.loc 1 52 0
	call8	esp_clk_slowclk_cal_get
.LVL22:
	.loc 1 66 0
	mull	a9, a2, a10
	muluh	a2, a2, a10
.LVL23:
	slli	a8, a2, 13
	extui	a9, a9, 19, 13
	or	a9, a8, a9
	extui	a8, a2, 19, 13
	.loc 1 67 0
	mull	a2, a3, a10
	muluh	a11, a3, a10
	extui	a3, a2, 19, 13
.LVL24:
	slli	a10, a11, 13
.LVL25:
	or	a10, a3, a10
	slli	a2, a2, 13
	.loc 1 66 0
	add.n	a2, a9, a2
	movi.n	a3, 1
	bltu	a2, a9, .L12
	movi.n	a3, 0
.L12:
	add.n	a10, a8, a10
	add.n	a3, a3, a10
	.loc 1 68 0
	retw.n
.LFE9:
	.size	get_rtc_time_us, .-get_rtc_time_us
	.section	.text.esp_set_time_from_rtc,"ax",@progbits
	.literal_position
	.literal .LC11, s_microseconds_offset
	.align	4
	.global	esp_set_time_from_rtc
	.type	esp_set_time_from_rtc, @function
esp_set_time_from_rtc:
.LFB14:
	.loc 1 141 0
	entry	sp, 32
.LCFI6:
	.loc 1 144 0
	call8	get_rtc_time_us
.LVL26:
	mov.n	a3, a10
	mov.n	a2, a11
	call8	esp_timer_get_time
.LVL27:
	sub	a10, a3, a10
	movi.n	a8, 1
	bltu	a3, a10, .L14
	movi.n	a8, 0
.L14:
	sub	a11, a2, a11
	sub	a8, a11, a8
	l32r	a2, .LC11
	s32i.n	a10, a2, 0
	s32i.n	a8, a2, 4
	retw.n
.LFE14:
	.size	esp_set_time_from_rtc, .-esp_set_time_from_rtc
	.global	__udivdi3
	.global	__umoddi3
	.section	.iram1,"ax",@progbits
	.literal_position
	.literal .LC12, 1000000, 0
	.align	4
	.global	_gettimeofday_r
	.type	_gettimeofday_r, @function
_gettimeofday_r:
.LFB17:
	.loc 1 174 0
.LVL28:
	entry	sp, 32
.LCFI7:
	.loc 1 177 0
	beqz.n	a3, .L16
.LBB2:
	.loc 1 178 0
	call8	get_boot_time
.LVL29:
	mov.n	a5, a10
	mov.n	a6, a11
	call8	get_time_since_boot
.LVL30:
	add.n	a4, a5, a10
.LVL31:
	movi.n	a2, 1
.LVL32:
	bltu	a4, a5, .L17
	movi.n	a2, 0
.L17:
	add.n	a11, a6, a11
	add.n	a2, a2, a11
	mov.n	a11, a2
.LVL33:
	.loc 1 179 0
	l32r	a12, .LC12
	l32r	a13, .LC12+4
	mov.n	a10, a4
	call8	__udivdi3
.LVL34:
	s32i.n	a10, a3, 0
	.loc 1 180 0
	l32r	a12, .LC12
	l32r	a13, .LC12+4
	mov.n	a10, a4
	mov.n	a11, a2
	call8	__umoddi3
.LVL35:
	s32i.n	a10, a3, 4
.LVL36:
.L16:
.LBE2:
	.loc 1 187 0
	movi.n	a2, 0
	retw.n
.LFE17:
	.size	_gettimeofday_r, .-_gettimeofday_r
	.align	4
	.global	_times_r
	.type	_times_r, @function
_times_r:
.LFB15:
	.loc 1 149 0
.LVL37:
	entry	sp, 48
.LCFI8:
	.loc 1 150 0
	call8	xTaskGetTickCount
.LVL38:
	addx4	a10, a10, a10
	slli	a8, a10, 1
.LVL39:
	.loc 1 151 0
	movi.n	a12, 0
	s32i.n	a12, a3, 12
	.loc 1 152 0
	s32i.n	a12, a3, 8
	.loc 1 153 0
	s32i.n	a8, a3, 4
	.loc 1 154 0
	s32i.n	a12, a3, 0
	.loc 1 155 0
	s32i.n	a12, sp, 0
	s32i.n	a12, sp, 4
	.loc 1 156 0
	mov.n	a11, sp
	mov.n	a10, a2
	call8	_gettimeofday_r
.LVL40:
	.loc 1 158 0
	l32i.n	a2, sp, 0
.LVL41:
	retw.n
.LFE15:
	.size	_times_r, .-_times_r
	.section	.text.settimeofday,"ax",@progbits
	.literal_position
	.literal .LC13, 1000000
	.align	4
	.global	settimeofday
	.type	settimeofday, @function
settimeofday:
.LFB18:
	.loc 1 190 0
.LVL42:
	entry	sp, 32
.LCFI9:
	.loc 1 193 0
	beqz.n	a2, .L20
.LBB3:
	.loc 1 194 0
	l32i.n	a9, a2, 0
	srai	a3, a9, 31
.LVL43:
	l32r	a8, .LC13
	mull	a3, a3, a8
	mull	a10, a9, a8
	muluh	a8, a9, a8
	add.n	a8, a3, a8
	l32i.n	a3, a2, 4
	srai	a9, a3, 31
	add.n	a3, a10, a3
	movi.n	a2, 1
.LVL44:
	bltu	a3, a10, .L21
	movi.n	a2, 0
.L21:
	add.n	a8, a8, a9
	add.n	a2, a2, a8
.LVL45:
	.loc 1 195 0
	call8	get_time_since_boot
.LVL46:
	.loc 1 196 0
	sub	a10, a3, a10
.LVL47:
	movi.n	a8, 1
	bltu	a3, a10, .L22
	movi.n	a8, 0
.L22:
	sub	a2, a2, a11
.LVL48:
	sub	a11, a2, a8
	call8	set_boot_time
.LVL49:
.L20:
.LBE3:
	.loc 1 203 0
	movi.n	a2, 0
	retw.n
.LFE18:
	.size	settimeofday, .-settimeofday
	.section	.text.usleep,"ax",@progbits
	.literal_position
	.literal .LC14, 9999
	.literal .LC15, -776530087
	.align	4
	.global	usleep
	.type	usleep, @function
usleep:
.LFB19:
	.loc 1 206 0
.LVL50:
	entry	sp, 32
.LCFI10:
.LVL51:
	.loc 1 208 0
	l32r	a8, .LC14
	bltu	a8, a2, .L24
	.loc 1 209 0
	mov.n	a10, a2
	call8	ets_delay_us
.LVL52:
	j	.L25
.L24:
	.loc 1 214 0
	l32r	a10, .LC14
	add.n	a2, a2, a10
.LVL53:
	l32r	a8, .LC15
	muluh	a10, a2, a8
	srli	a10, a10, 13
	call8	vTaskDelay
.LVL54:
.L25:
	.loc 1 217 0
	movi.n	a2, 0
	retw.n
.LFE19:
	.size	usleep, .-usleep
	.section	.text.sleep,"ax",@progbits
	.literal_position
	.literal .LC16, 1000000
	.align	4
	.global	sleep
	.type	sleep, @function
sleep:
.LFB20:
	.loc 1 220 0
.LVL55:
	entry	sp, 32
.LCFI11:
	.loc 1 221 0
	l32r	a10, .LC16
	mull	a10, a2, a10
	call8	usleep
.LVL56:
	.loc 1 223 0
	movi.n	a2, 0
.LVL57:
	retw.n
.LFE20:
	.size	sleep, .-sleep
	.section	.text.system_get_time,"ax",@progbits
	.align	4
	.global	system_get_time
	.type	system_get_time, @function
system_get_time:
.LFB21:
	.loc 1 226 0
	entry	sp, 32
.LCFI12:
	.loc 1 228 0
	call8	get_time_since_boot
.LVL58:
	.loc 1 232 0
	mov.n	a2, a10
	retw.n
.LFE21:
	.size	system_get_time, .-system_get_time
	.global	system_get_current_time
	.set	system_get_current_time,system_get_time
	.section	.text.system_relative_time,"ax",@progbits
	.align	4
	.global	system_relative_time
	.type	system_relative_time, @function
system_relative_time:
.LFB22:
	.loc 1 237 0
.LVL59:
	entry	sp, 32
.LCFI13:
	.loc 1 239 0
	call8	get_time_since_boot
.LVL60:
	.loc 1 243 0
	sub	a2, a10, a2
.LVL61:
	retw.n
.LFE22:
	.size	system_relative_time, .-system_relative_time
	.section	.text.system_get_rtc_time,"ax",@progbits
	.align	4
	.global	system_get_rtc_time
	.type	system_get_rtc_time, @function
system_get_rtc_time:
.LFB23:
	.loc 1 246 0
	entry	sp, 32
.LCFI14:
	.loc 1 248 0
	call8	get_rtc_time_us
.LVL62:
	.loc 1 252 0
	mov.n	a2, a10
	mov.n	a3, a11
	retw.n
.LFE23:
	.size	system_get_rtc_time, .-system_get_rtc_time
	.comm	s_microseconds_offset,8,8
	.section	.bss.s_boot_time_lock,"aw",@nobits
	.align	4
	.type	s_boot_time_lock, @object
	.size	s_boot_time_lock, 4
s_boot_time_lock:
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
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI1-.LFB10
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
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI3-.LFB12
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI4-.LFB13
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI5-.LFB9
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI6-.LFB14
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
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI8-.LFB15
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI9-.LFB18
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI10-.LFB19
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI11-.LFB20
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI12-.LFB21
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI13-.LFB22
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI14-.LFB23
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE28:
	.text
.Letext0:
	.file 2 "C:/esp/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "C:/esp/esp-idf/components/newlib/include/sys/lock.h"
	.file 4 "C:/esp/esp-idf/components/newlib/include/sys/_types.h"
	.file 5 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 6 "C:/esp/esp-idf/components/newlib/include/sys/reent.h"
	.file 7 "C:/esp/esp-idf/components/newlib/include/sys/types.h"
	.file 8 "C:/esp/esp-idf/components/newlib/include/sys/time.h"
	.file 9 "C:/esp/esp-idf/components/newlib/include/sys/times.h"
	.file 10 "C:/esp/esp-idf/components/newlib/include/stdint.h"
	.file 11 "C:/esp/esp-idf/components/esp32/include/rom/rtc.h"
	.file 12 "C:/esp/esp-idf/components/freertos/include/freertos/portmacro.h"
	.file 13 "c:\\esp\\esp-idf\\components\\esp32\\esp_timer.h"
	.file 14 "C:/esp/esp-idf/components/soc/esp32/include/soc/rtc.h"
	.file 15 "C:/esp/esp-idf/components/freertos/include/freertos/task.h"
	.file 16 "C:/esp/esp-idf/components/esp32/include/rom/ets_sys.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xea1
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF194
	.byte	0xc
	.4byte	.LASF195
	.4byte	.LASF196
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x2
	.byte	0x19
	.4byte	0x33
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x2
	.byte	0x1a
	.4byte	0x2c
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x2
	.byte	0x1d
	.4byte	0x77
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x4
	.4byte	.LASF10
	.byte	0x2
	.byte	0x1e
	.4byte	0x25
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x3
	.byte	0xb
	.4byte	0x33
	.uleb128 0x4
	.4byte	.LASF12
	.byte	0x3
	.byte	0xc
	.4byte	0x89
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x4
	.byte	0x10
	.4byte	0xaa
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF14
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x4
	.byte	0x27
	.4byte	0xaa
	.uleb128 0x5
	.4byte	.LASF16
	.byte	0x5
	.2byte	0x165
	.4byte	0x2c
	.uleb128 0x6
	.byte	0x4
	.byte	0x4
	.byte	0x4a
	.4byte	0xe7
	.uleb128 0x7
	.4byte	.LASF17
	.byte	0x4
	.byte	0x4c
	.4byte	0xbc
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x4
	.byte	0x4d
	.4byte	0xe7
	.byte	0
	.uleb128 0x8
	.4byte	0x48
	.4byte	0xf7
	.uleb128 0x9
	.4byte	0xf7
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF19
	.uleb128 0xa
	.byte	0x8
	.byte	0x4
	.byte	0x47
	.4byte	0x11f
	.uleb128 0xb
	.4byte	.LASF20
	.byte	0x4
	.byte	0x49
	.4byte	0x33
	.byte	0
	.uleb128 0xb
	.4byte	.LASF21
	.byte	0x4
	.byte	0x4e
	.4byte	0xc8
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF22
	.byte	0x4
	.byte	0x4f
	.4byte	0xfe
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0x4
	.byte	0x53
	.4byte	0x94
	.uleb128 0xc
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF24
	.byte	0x6
	.byte	0x16
	.4byte	0x142
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF25
	.uleb128 0xd
	.4byte	.LASF30
	.byte	0x18
	.byte	0x6
	.byte	0x2d
	.4byte	0x19c
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x6
	.byte	0x2f
	.4byte	0x19c
	.byte	0
	.uleb128 0xe
	.string	"_k"
	.byte	0x6
	.byte	0x30
	.4byte	0x33
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x6
	.byte	0x30
	.4byte	0x33
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x6
	.byte	0x30
	.4byte	0x33
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x6
	.byte	0x30
	.4byte	0x33
	.byte	0x10
	.uleb128 0xe
	.string	"_x"
	.byte	0x6
	.byte	0x31
	.4byte	0x1a2
	.byte	0x14
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x149
	.uleb128 0x8
	.4byte	0x137
	.4byte	0x1b2
	.uleb128 0x9
	.4byte	0xf7
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF31
	.byte	0x24
	.byte	0x6
	.byte	0x35
	.4byte	0x22b
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x6
	.byte	0x37
	.4byte	0x33
	.byte	0
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0x6
	.byte	0x38
	.4byte	0x33
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0x6
	.byte	0x39
	.4byte	0x33
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x6
	.byte	0x3a
	.4byte	0x33
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0x6
	.byte	0x3b
	.4byte	0x33
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x6
	.byte	0x3c
	.4byte	0x33
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0x6
	.byte	0x3d
	.4byte	0x33
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0x6
	.byte	0x3e
	.4byte	0x33
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0x6
	.byte	0x3f
	.4byte	0x33
	.byte	0x20
	.byte	0
	.uleb128 0x10
	.4byte	.LASF41
	.2byte	0x108
	.byte	0x6
	.byte	0x48
	.4byte	0x26b
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0x6
	.byte	0x49
	.4byte	0x26b
	.byte	0
	.uleb128 0xb
	.4byte	.LASF43
	.byte	0x6
	.byte	0x4a
	.4byte	0x26b
	.byte	0x80
	.uleb128 0x11
	.4byte	.LASF44
	.byte	0x6
	.byte	0x4c
	.4byte	0x137
	.2byte	0x100
	.uleb128 0x11
	.4byte	.LASF45
	.byte	0x6
	.byte	0x4f
	.4byte	0x137
	.2byte	0x104
	.byte	0
	.uleb128 0x8
	.4byte	0x135
	.4byte	0x27b
	.uleb128 0x9
	.4byte	0xf7
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.4byte	.LASF46
	.byte	0x8c
	.byte	0x6
	.byte	0x53
	.4byte	0x2b8
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x6
	.byte	0x54
	.4byte	0x2b8
	.byte	0
	.uleb128 0xb
	.4byte	.LASF47
	.byte	0x6
	.byte	0x55
	.4byte	0x33
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF48
	.byte	0x6
	.byte	0x56
	.4byte	0x2be
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0x6
	.byte	0x57
	.4byte	0x2d5
	.byte	0x88
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x27b
	.uleb128 0x8
	.4byte	0x2ce
	.4byte	0x2ce
	.uleb128 0x9
	.4byte	0xf7
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2d4
	.uleb128 0x12
	.uleb128 0xf
	.byte	0x4
	.4byte	0x22b
	.uleb128 0xd
	.4byte	.LASF50
	.byte	0x8
	.byte	0x6
	.byte	0x73
	.4byte	0x300
	.uleb128 0xb
	.4byte	.LASF51
	.byte	0x6
	.byte	0x74
	.4byte	0x300
	.byte	0
	.uleb128 0xb
	.4byte	.LASF52
	.byte	0x6
	.byte	0x75
	.4byte	0x33
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x48
	.uleb128 0x13
	.4byte	.LASF53
	.byte	0xf0
	.byte	0x6
	.2byte	0x172
	.4byte	0x44c
	.uleb128 0x14
	.4byte	.LASF54
	.byte	0x6
	.2byte	0x176
	.4byte	0x33
	.byte	0
	.uleb128 0x14
	.4byte	.LASF55
	.byte	0x6
	.2byte	0x17b
	.4byte	0x681
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF56
	.byte	0x6
	.2byte	0x17b
	.4byte	0x681
	.byte	0x8
	.uleb128 0x14
	.4byte	.LASF57
	.byte	0x6
	.2byte	0x17b
	.4byte	0x681
	.byte	0xc
	.uleb128 0x14
	.4byte	.LASF58
	.byte	0x6
	.2byte	0x17d
	.4byte	0x33
	.byte	0x10
	.uleb128 0x14
	.4byte	.LASF59
	.byte	0x6
	.2byte	0x17f
	.4byte	0x59a
	.byte	0x14
	.uleb128 0x14
	.4byte	.LASF60
	.byte	0x6
	.2byte	0x181
	.4byte	0x33
	.byte	0x18
	.uleb128 0x14
	.4byte	.LASF61
	.byte	0x6
	.2byte	0x183
	.4byte	0x33
	.byte	0x1c
	.uleb128 0x14
	.4byte	.LASF62
	.byte	0x6
	.2byte	0x184
	.4byte	0x5cb
	.byte	0x20
	.uleb128 0x15
	.string	"_mp"
	.byte	0x6
	.2byte	0x186
	.4byte	0x7ce
	.byte	0x24
	.uleb128 0x14
	.4byte	.LASF63
	.byte	0x6
	.2byte	0x188
	.4byte	0x7df
	.byte	0x28
	.uleb128 0x14
	.4byte	.LASF64
	.byte	0x6
	.2byte	0x18a
	.4byte	0x33
	.byte	0x2c
	.uleb128 0x14
	.4byte	.LASF65
	.byte	0x6
	.2byte	0x18d
	.4byte	0x33
	.byte	0x30
	.uleb128 0x14
	.4byte	.LASF66
	.byte	0x6
	.2byte	0x18e
	.4byte	0x59a
	.byte	0x34
	.uleb128 0x14
	.4byte	.LASF67
	.byte	0x6
	.2byte	0x190
	.4byte	0x7e5
	.byte	0x38
	.uleb128 0x14
	.4byte	.LASF68
	.byte	0x6
	.2byte	0x191
	.4byte	0x7eb
	.byte	0x3c
	.uleb128 0x14
	.4byte	.LASF69
	.byte	0x6
	.2byte	0x192
	.4byte	0x59a
	.byte	0x40
	.uleb128 0x14
	.4byte	.LASF70
	.byte	0x6
	.2byte	0x195
	.4byte	0x7fc
	.byte	0x44
	.uleb128 0x14
	.4byte	.LASF46
	.byte	0x6
	.2byte	0x199
	.4byte	0x2b8
	.byte	0x48
	.uleb128 0x14
	.4byte	.LASF71
	.byte	0x6
	.2byte	0x19a
	.4byte	0x27b
	.byte	0x4c
	.uleb128 0x14
	.4byte	.LASF72
	.byte	0x6
	.2byte	0x19d
	.4byte	0x646
	.byte	0xd8
	.uleb128 0x14
	.4byte	.LASF73
	.byte	0x6
	.2byte	0x19e
	.4byte	0x681
	.byte	0xe4
	.uleb128 0x14
	.4byte	.LASF74
	.byte	0x6
	.2byte	0x19f
	.4byte	0x808
	.byte	0xe8
	.uleb128 0x14
	.4byte	.LASF75
	.byte	0x6
	.2byte	0x1a0
	.4byte	0x59a
	.byte	0xec
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x306
	.uleb128 0xd
	.4byte	.LASF76
	.byte	0x68
	.byte	0x6
	.byte	0xb3
	.4byte	0x57c
	.uleb128 0xe
	.string	"_p"
	.byte	0x6
	.byte	0xb4
	.4byte	0x300
	.byte	0
	.uleb128 0xe
	.string	"_r"
	.byte	0x6
	.byte	0xb5
	.4byte	0x33
	.byte	0x4
	.uleb128 0xe
	.string	"_w"
	.byte	0x6
	.byte	0xb6
	.4byte	0x33
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF77
	.byte	0x6
	.byte	0xb7
	.4byte	0x4f
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF78
	.byte	0x6
	.byte	0xb8
	.4byte	0x4f
	.byte	0xe
	.uleb128 0xe
	.string	"_bf"
	.byte	0x6
	.byte	0xb9
	.4byte	0x2db
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF79
	.byte	0x6
	.byte	0xba
	.4byte	0x33
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF80
	.byte	0x6
	.byte	0xbd
	.4byte	0x44c
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF81
	.byte	0x6
	.byte	0xc1
	.4byte	0x135
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF82
	.byte	0x6
	.byte	0xc3
	.4byte	0x5a7
	.byte	0x24
	.uleb128 0xb
	.4byte	.LASF83
	.byte	0x6
	.byte	0xc5
	.4byte	0x5d6
	.byte	0x28
	.uleb128 0xb
	.4byte	.LASF84
	.byte	0x6
	.byte	0xc8
	.4byte	0x5fa
	.byte	0x2c
	.uleb128 0xb
	.4byte	.LASF85
	.byte	0x6
	.byte	0xc9
	.4byte	0x614
	.byte	0x30
	.uleb128 0xe
	.string	"_ub"
	.byte	0x6
	.byte	0xcc
	.4byte	0x2db
	.byte	0x34
	.uleb128 0xe
	.string	"_up"
	.byte	0x6
	.byte	0xcd
	.4byte	0x300
	.byte	0x3c
	.uleb128 0xe
	.string	"_ur"
	.byte	0x6
	.byte	0xce
	.4byte	0x33
	.byte	0x40
	.uleb128 0xb
	.4byte	.LASF86
	.byte	0x6
	.byte	0xd1
	.4byte	0x61a
	.byte	0x44
	.uleb128 0xb
	.4byte	.LASF87
	.byte	0x6
	.byte	0xd2
	.4byte	0x62a
	.byte	0x47
	.uleb128 0xe
	.string	"_lb"
	.byte	0x6
	.byte	0xd5
	.4byte	0x2db
	.byte	0x48
	.uleb128 0xb
	.4byte	.LASF88
	.byte	0x6
	.byte	0xd8
	.4byte	0x33
	.byte	0x50
	.uleb128 0xb
	.4byte	.LASF89
	.byte	0x6
	.byte	0xd9
	.4byte	0x9f
	.byte	0x54
	.uleb128 0xb
	.4byte	.LASF90
	.byte	0x6
	.byte	0xe0
	.4byte	0x12a
	.byte	0x58
	.uleb128 0xb
	.4byte	.LASF91
	.byte	0x6
	.byte	0xe2
	.4byte	0x11f
	.byte	0x5c
	.uleb128 0xb
	.4byte	.LASF92
	.byte	0x6
	.byte	0xe3
	.4byte	0x33
	.byte	0x64
	.byte	0
	.uleb128 0x16
	.4byte	0x33
	.4byte	0x59a
	.uleb128 0x17
	.4byte	0x44c
	.uleb128 0x17
	.4byte	0x135
	.uleb128 0x17
	.4byte	0x59a
	.uleb128 0x17
	.4byte	0x33
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x5a0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF93
	.uleb128 0xf
	.byte	0x4
	.4byte	0x57c
	.uleb128 0x16
	.4byte	0x33
	.4byte	0x5cb
	.uleb128 0x17
	.4byte	0x44c
	.uleb128 0x17
	.4byte	0x135
	.uleb128 0x17
	.4byte	0x5cb
	.uleb128 0x17
	.4byte	0x33
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x5d1
	.uleb128 0x18
	.4byte	0x5a0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x5ad
	.uleb128 0x16
	.4byte	0xb1
	.4byte	0x5fa
	.uleb128 0x17
	.4byte	0x44c
	.uleb128 0x17
	.4byte	0x135
	.uleb128 0x17
	.4byte	0xb1
	.uleb128 0x17
	.4byte	0x33
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x5dc
	.uleb128 0x16
	.4byte	0x33
	.4byte	0x614
	.uleb128 0x17
	.4byte	0x44c
	.uleb128 0x17
	.4byte	0x135
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x600
	.uleb128 0x8
	.4byte	0x48
	.4byte	0x62a
	.uleb128 0x9
	.4byte	0xf7
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.4byte	0x48
	.4byte	0x63a
	.uleb128 0x9
	.4byte	0xf7
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	.LASF94
	.byte	0x6
	.2byte	0x11d
	.4byte	0x452
	.uleb128 0x13
	.4byte	.LASF95
	.byte	0xc
	.byte	0x6
	.2byte	0x121
	.4byte	0x67b
	.uleb128 0x14
	.4byte	.LASF26
	.byte	0x6
	.2byte	0x123
	.4byte	0x67b
	.byte	0
	.uleb128 0x14
	.4byte	.LASF96
	.byte	0x6
	.2byte	0x124
	.4byte	0x33
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF97
	.byte	0x6
	.2byte	0x125
	.4byte	0x681
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x646
	.uleb128 0xf
	.byte	0x4
	.4byte	0x63a
	.uleb128 0x13
	.4byte	.LASF98
	.byte	0x18
	.byte	0x6
	.2byte	0x13d
	.4byte	0x6c9
	.uleb128 0x14
	.4byte	.LASF99
	.byte	0x6
	.2byte	0x13e
	.4byte	0x6c9
	.byte	0
	.uleb128 0x14
	.4byte	.LASF100
	.byte	0x6
	.2byte	0x13f
	.4byte	0x6c9
	.byte	0x6
	.uleb128 0x14
	.4byte	.LASF101
	.byte	0x6
	.2byte	0x140
	.4byte	0x3a
	.byte	0xc
	.uleb128 0x14
	.4byte	.LASF102
	.byte	0x6
	.2byte	0x143
	.4byte	0x25
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.4byte	0x3a
	.4byte	0x6d9
	.uleb128 0x9
	.4byte	0xf7
	.byte	0x2
	.byte	0
	.uleb128 0x13
	.4byte	.LASF103
	.byte	0x10
	.byte	0x6
	.2byte	0x156
	.4byte	0x71b
	.uleb128 0x14
	.4byte	.LASF104
	.byte	0x6
	.2byte	0x159
	.4byte	0x19c
	.byte	0
	.uleb128 0x14
	.4byte	.LASF105
	.byte	0x6
	.2byte	0x15a
	.4byte	0x33
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF106
	.byte	0x6
	.2byte	0x15b
	.4byte	0x19c
	.byte	0x8
	.uleb128 0x14
	.4byte	.LASF107
	.byte	0x6
	.2byte	0x15c
	.4byte	0x71b
	.byte	0xc
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x19c
	.uleb128 0x13
	.4byte	.LASF108
	.byte	0x50
	.byte	0x6
	.2byte	0x160
	.4byte	0x7be
	.uleb128 0x14
	.4byte	.LASF109
	.byte	0x6
	.2byte	0x163
	.4byte	0x59a
	.byte	0
	.uleb128 0x14
	.4byte	.LASF110
	.byte	0x6
	.2byte	0x164
	.4byte	0x11f
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF111
	.byte	0x6
	.2byte	0x165
	.4byte	0x11f
	.byte	0xc
	.uleb128 0x14
	.4byte	.LASF112
	.byte	0x6
	.2byte	0x166
	.4byte	0x11f
	.byte	0x14
	.uleb128 0x14
	.4byte	.LASF113
	.byte	0x6
	.2byte	0x167
	.4byte	0x7be
	.byte	0x1c
	.uleb128 0x14
	.4byte	.LASF114
	.byte	0x6
	.2byte	0x168
	.4byte	0x33
	.byte	0x24
	.uleb128 0x14
	.4byte	.LASF115
	.byte	0x6
	.2byte	0x169
	.4byte	0x11f
	.byte	0x28
	.uleb128 0x14
	.4byte	.LASF116
	.byte	0x6
	.2byte	0x16a
	.4byte	0x11f
	.byte	0x30
	.uleb128 0x14
	.4byte	.LASF117
	.byte	0x6
	.2byte	0x16b
	.4byte	0x11f
	.byte	0x38
	.uleb128 0x14
	.4byte	.LASF118
	.byte	0x6
	.2byte	0x16c
	.4byte	0x11f
	.byte	0x40
	.uleb128 0x14
	.4byte	.LASF119
	.byte	0x6
	.2byte	0x16d
	.4byte	0x11f
	.byte	0x48
	.byte	0
	.uleb128 0x8
	.4byte	0x5a0
	.4byte	0x7ce
	.uleb128 0x9
	.4byte	0xf7
	.byte	0x7
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x6d9
	.uleb128 0x19
	.4byte	0x7df
	.uleb128 0x17
	.4byte	0x44c
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x7d4
	.uleb128 0xf
	.byte	0x4
	.4byte	0x687
	.uleb128 0xf
	.byte	0x4
	.4byte	0x1b2
	.uleb128 0x19
	.4byte	0x7fc
	.uleb128 0x17
	.4byte	0x33
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x802
	.uleb128 0xf
	.byte	0x4
	.4byte	0x7f1
	.uleb128 0xf
	.byte	0x4
	.4byte	0x721
	.uleb128 0x4
	.4byte	.LASF120
	.byte	0x7
	.byte	0x75
	.4byte	0x142
	.uleb128 0x4
	.4byte	.LASF121
	.byte	0x7
	.byte	0x7a
	.4byte	0xaa
	.uleb128 0x5
	.4byte	.LASF122
	.byte	0x7
	.2byte	0x11c
	.4byte	0x142
	.uleb128 0x5
	.4byte	.LASF123
	.byte	0x7
	.2byte	0x11d
	.4byte	0xaa
	.uleb128 0xd
	.4byte	.LASF124
	.byte	0x8
	.byte	0x8
	.byte	0x11
	.4byte	0x861
	.uleb128 0xb
	.4byte	.LASF125
	.byte	0x8
	.byte	0x12
	.4byte	0x819
	.byte	0
	.uleb128 0xb
	.4byte	.LASF126
	.byte	0x8
	.byte	0x13
	.4byte	0x830
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.4byte	.LASF127
	.byte	0x8
	.byte	0x8
	.byte	0x37
	.4byte	0x886
	.uleb128 0xb
	.4byte	.LASF128
	.byte	0x8
	.byte	0x38
	.4byte	0x33
	.byte	0
	.uleb128 0xb
	.4byte	.LASF129
	.byte	0x8
	.byte	0x39
	.4byte	0x33
	.byte	0x4
	.byte	0
	.uleb128 0x1a
	.string	"tms"
	.byte	0x10
	.byte	0x9
	.byte	0x10
	.4byte	0x8c3
	.uleb128 0xb
	.4byte	.LASF130
	.byte	0x9
	.byte	0x11
	.4byte	0x80e
	.byte	0
	.uleb128 0xb
	.4byte	.LASF131
	.byte	0x9
	.byte	0x12
	.4byte	0x80e
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF132
	.byte	0x9
	.byte	0x13
	.4byte	0x80e
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF133
	.byte	0x9
	.byte	0x14
	.4byte	0x80e
	.byte	0xc
	.byte	0
	.uleb128 0x4
	.4byte	.LASF134
	.byte	0xa
	.byte	0x2c
	.4byte	0x56
	.uleb128 0x4
	.4byte	.LASF135
	.byte	0xa
	.byte	0x2d
	.4byte	0x61
	.uleb128 0x4
	.4byte	.LASF136
	.byte	0xa
	.byte	0x38
	.4byte	0x6c
	.uleb128 0x4
	.4byte	.LASF137
	.byte	0xa
	.byte	0x39
	.4byte	0x7e
	.uleb128 0x1b
	.byte	0x4
	.4byte	0x2c
	.byte	0xb
	.byte	0x63
	.4byte	0x947
	.uleb128 0x1c
	.4byte	.LASF138
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF139
	.byte	0x1
	.uleb128 0x1c
	.4byte	.LASF140
	.byte	0x2
	.uleb128 0x1c
	.4byte	.LASF141
	.byte	0x4
	.uleb128 0x1c
	.4byte	.LASF142
	.byte	0x8
	.uleb128 0x1c
	.4byte	.LASF143
	.byte	0x10
	.uleb128 0x1c
	.4byte	.LASF144
	.byte	0x20
	.uleb128 0x1c
	.4byte	.LASF145
	.byte	0x40
	.uleb128 0x1c
	.4byte	.LASF146
	.byte	0x80
	.uleb128 0x1d
	.4byte	.LASF147
	.2byte	0x100
	.uleb128 0x1d
	.4byte	.LASF148
	.2byte	0x200
	.uleb128 0x1d
	.4byte	.LASF149
	.2byte	0x400
	.byte	0
	.uleb128 0x1b
	.byte	0x4
	.4byte	0x2c
	.byte	0xb
	.byte	0x81
	.4byte	0x978
	.uleb128 0x1c
	.4byte	.LASF150
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF151
	.byte	0x1
	.uleb128 0x1c
	.4byte	.LASF152
	.byte	0x2
	.uleb128 0x1c
	.4byte	.LASF153
	.byte	0x4
	.uleb128 0x1c
	.4byte	.LASF154
	.byte	0x8
	.uleb128 0x1c
	.4byte	.LASF155
	.byte	0x10
	.byte	0
	.uleb128 0x4
	.4byte	.LASF156
	.byte	0xc
	.byte	0x73
	.4byte	0x8ce
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF157
	.uleb128 0x1e
	.4byte	.LASF158
	.byte	0x1
	.byte	0x64
	.4byte	0x8e4
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9e0
	.uleb128 0x1f
	.4byte	.LASF161
	.byte	0x1
	.byte	0x66
	.4byte	0x8e4
	.uleb128 0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x20
	.4byte	.LVL0
	.4byte	0xe53
	.4byte	0x9cc
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_boot_time_lock
	.byte	0
	.uleb128 0x22
	.4byte	.LVL2
	.4byte	0xe5e
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_boot_time_lock
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LASF159
	.byte	0x1
	.byte	0x58
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa2c
	.uleb128 0x24
	.4byte	.LASF163
	.byte	0x1
	.byte	0x58
	.4byte	0x8e4
	.uleb128 0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x20
	.4byte	.LVL4
	.4byte	0xe53
	.4byte	0xa1b
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL5
	.4byte	0xe5e
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF160
	.byte	0x1
	.byte	0xa1
	.4byte	0x8e4
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa5e
	.uleb128 0x25
	.4byte	.LASF162
	.byte	0x1
	.byte	0xa3
	.4byte	0x8e4
	.4byte	.LLST0
	.uleb128 0x26
	.4byte	.LVL7
	.4byte	0xe69
	.byte	0
	.uleb128 0x27
	.4byte	.LASF197
	.byte	0x1
	.byte	0x73
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xae7
	.uleb128 0x24
	.4byte	.LASF164
	.byte	0x1
	.byte	0x73
	.4byte	0x8ce
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x25
	.4byte	.LASF165
	.byte	0x1
	.byte	0x7d
	.4byte	0xae7
	.4byte	.LLST1
	.uleb128 0x25
	.4byte	.LASF166
	.byte	0x1
	.byte	0x7e
	.4byte	0xaec
	.4byte	.LLST2
	.uleb128 0x25
	.4byte	.LASF167
	.byte	0x1
	.byte	0x7f
	.4byte	0x8c3
	.4byte	.LLST3
	.uleb128 0x25
	.4byte	.LASF168
	.byte	0x1
	.byte	0x80
	.4byte	0x8d9
	.4byte	.LLST4
	.uleb128 0x25
	.4byte	.LASF169
	.byte	0x1
	.byte	0x81
	.4byte	0x8e4
	.4byte	.LLST5
	.uleb128 0x26
	.4byte	.LVL10
	.4byte	0xe74
	.uleb128 0x26
	.4byte	.LVL16
	.4byte	0x98a
	.uleb128 0x26
	.4byte	.LVL19
	.4byte	0x9e0
	.byte	0
	.uleb128 0x18
	.4byte	0x8d9
	.uleb128 0x18
	.4byte	0x8ce
	.uleb128 0x28
	.4byte	.LASF198
	.byte	0x1
	.byte	0x87
	.4byte	0x8ce
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1e
	.4byte	.LASF170
	.byte	0x1
	.byte	0x31
	.4byte	0x8e4
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb66
	.uleb128 0x25
	.4byte	.LASF165
	.byte	0x1
	.byte	0x33
	.4byte	0xb66
	.4byte	.LLST6
	.uleb128 0x29
	.string	"cal"
	.byte	0x1
	.byte	0x34
	.4byte	0xaec
	.4byte	.LLST7
	.uleb128 0x2a
	.4byte	.LASF171
	.byte	0x1
	.byte	0x40
	.4byte	0xb66
	.uleb128 0x2a
	.4byte	.LASF172
	.byte	0x1
	.byte	0x41
	.4byte	0xb66
	.uleb128 0x26
	.4byte	.LVL20
	.4byte	0xe74
	.uleb128 0x26
	.4byte	.LVL22
	.4byte	0xaf1
	.byte	0
	.uleb128 0x18
	.4byte	0x8e4
	.uleb128 0x2b
	.4byte	.LASF199
	.byte	0x1
	.byte	0x8c
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb93
	.uleb128 0x26
	.4byte	.LVL26
	.4byte	0xb06
	.uleb128 0x26
	.4byte	.LVL27
	.4byte	0xe69
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF173
	.byte	0x1
	.byte	0xad
	.4byte	0x33
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbff
	.uleb128 0x2d
	.string	"r"
	.byte	0x1
	.byte	0xad
	.4byte	0x44c
	.4byte	.LLST8
	.uleb128 0x2e
	.string	"tv"
	.byte	0x1
	.byte	0xad
	.4byte	0xbff
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2d
	.string	"tz"
	.byte	0x1
	.byte	0xad
	.4byte	0x135
	.4byte	.LLST9
	.uleb128 0x2f
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x25
	.4byte	.LASF162
	.byte	0x1
	.byte	0xb2
	.4byte	0x8e4
	.4byte	.LLST10
	.uleb128 0x26
	.4byte	.LVL29
	.4byte	0x98a
	.uleb128 0x26
	.4byte	.LVL30
	.4byte	0xa2c
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x83c
	.uleb128 0x30
	.4byte	.LASF174
	.byte	0x1
	.byte	0x94
	.4byte	0x80e
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc77
	.uleb128 0x2d
	.string	"r"
	.byte	0x1
	.byte	0x94
	.4byte	0x44c
	.4byte	.LLST11
	.uleb128 0x24
	.4byte	.LASF175
	.byte	0x1
	.byte	0x94
	.4byte	0xc77
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x29
	.string	"t"
	.byte	0x1
	.byte	0x96
	.4byte	0x80e
	.4byte	.LLST12
	.uleb128 0x31
	.string	"tv"
	.byte	0x1
	.byte	0x9b
	.4byte	0x83c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.4byte	.LVL38
	.4byte	0xe80
	.uleb128 0x22
	.4byte	.LVL40
	.4byte	0xb93
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x886
	.uleb128 0x30
	.4byte	.LASF176
	.byte	0x1
	.byte	0xbd
	.4byte	0x33
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xced
	.uleb128 0x2d
	.string	"tv"
	.byte	0x1
	.byte	0xbd
	.4byte	0xced
	.4byte	.LLST13
	.uleb128 0x2d
	.string	"tz"
	.byte	0x1
	.byte	0xbd
	.4byte	0xcf8
	.4byte	.LLST14
	.uleb128 0x2f
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0x29
	.string	"now"
	.byte	0x1
	.byte	0xc2
	.4byte	0x8e4
	.4byte	.LLST15
	.uleb128 0x25
	.4byte	.LASF177
	.byte	0x1
	.byte	0xc3
	.4byte	0x8e4
	.4byte	.LLST16
	.uleb128 0x26
	.4byte	.LVL46
	.4byte	0xa2c
	.uleb128 0x26
	.4byte	.LVL49
	.4byte	0x9e0
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xcf3
	.uleb128 0x18
	.4byte	0x83c
	.uleb128 0xf
	.byte	0x4
	.4byte	0xcfe
	.uleb128 0x18
	.4byte	0x861
	.uleb128 0x30
	.4byte	.LASF178
	.byte	0x1
	.byte	0xcd
	.4byte	0x33
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd75
	.uleb128 0x2d
	.string	"us"
	.byte	0x1
	.byte	0xcd
	.4byte	0x824
	.4byte	.LLST17
	.uleb128 0x32
	.4byte	.LASF179
	.byte	0x1
	.byte	0xcf
	.4byte	0xd75
	.2byte	0x2710
	.uleb128 0x20
	.4byte	.LVL52
	.4byte	0xe8c
	.4byte	0xd4b
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL54
	.4byte	0xe98
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1b
	.byte	0x72
	.sleb128 0
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0xf4
	.uleb128 0x25
	.byte	0x8
	.8byte	0xd1b71759
	.byte	0x1e
	.byte	0x8
	.byte	0x20
	.byte	0xf7
	.uleb128 0x25
	.byte	0x25
	.byte	0xf7
	.uleb128 0x2c
	.byte	0x3d
	.byte	0x25
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	0x33
	.uleb128 0x30
	.4byte	.LASF180
	.byte	0x1
	.byte	0xdb
	.4byte	0x2c
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdb9
	.uleb128 0x33
	.4byte	.LASF181
	.byte	0x1
	.byte	0xdb
	.4byte	0x2c
	.4byte	.LLST18
	.uleb128 0x22
	.4byte	.LVL56
	.4byte	0xd03
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x8
	.byte	0x72
	.sleb128 0
	.byte	0xc
	.4byte	0xf4240
	.byte	0x1e
	.byte	0
	.byte	0
	.uleb128 0x30
	.4byte	.LASF182
	.byte	0x1
	.byte	0xe1
	.4byte	0x8ce
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xddc
	.uleb128 0x26
	.4byte	.LVL58
	.4byte	0xa2c
	.byte	0
	.uleb128 0x30
	.4byte	.LASF183
	.byte	0x1
	.byte	0xec
	.4byte	0x8ce
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe0e
	.uleb128 0x33
	.4byte	.LASF184
	.byte	0x1
	.byte	0xec
	.4byte	0x8ce
	.4byte	.LLST19
	.uleb128 0x26
	.4byte	.LVL60
	.4byte	0xa2c
	.byte	0
	.uleb128 0x30
	.4byte	.LASF185
	.byte	0x1
	.byte	0xf5
	.4byte	0x8e4
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe31
	.uleb128 0x26
	.4byte	.LVL62
	.4byte	0xb06
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF186
	.byte	0x1
	.byte	0x50
	.4byte	0x89
	.uleb128 0x5
	.byte	0x3
	.4byte	s_boot_time_lock
	.uleb128 0x34
	.4byte	.LASF200
	.byte	0x1
	.byte	0x54
	.4byte	0x8e4
	.uleb128 0x5
	.byte	0x3
	.4byte	s_microseconds_offset
	.uleb128 0x35
	.4byte	.LASF187
	.4byte	.LASF187
	.byte	0x3
	.byte	0x20
	.uleb128 0x35
	.4byte	.LASF188
	.4byte	.LASF188
	.byte	0x3
	.byte	0x24
	.uleb128 0x35
	.4byte	.LASF189
	.4byte	.LASF189
	.byte	0xd
	.byte	0xc1
	.uleb128 0x36
	.4byte	.LASF190
	.4byte	.LASF190
	.byte	0xe
	.2byte	0x176
	.uleb128 0x36
	.4byte	.LASF191
	.4byte	.LASF191
	.byte	0xf
	.2byte	0x4d1
	.uleb128 0x36
	.4byte	.LASF192
	.4byte	.LASF192
	.byte	0x10
	.2byte	0x176
	.uleb128 0x36
	.4byte	.LASF193
	.4byte	.LASF193
	.byte	0xf
	.2byte	0x2d1
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
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x26
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x34
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
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0xa
	.byte	0x9e
	.uleb128 0x8
	.8byte	0
	.4byte	.LVL8
	.4byte	.LFE16
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL10
	.4byte	.LVL13
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL15
	.4byte	.LVL17
	.2byte	0x6
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL18
	.4byte	.LVL19-1
	.2byte	0x6
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL22
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL28
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL32
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL28
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL31
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL33
	.4byte	.LVL36
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL37
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL41
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL39
	.4byte	.LVL40-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL42
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL44
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL43
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL45
	.4byte	.LVL48
	.2byte	0x6
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL50
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x5
	.byte	0x72
	.sleb128 -9999
	.byte	0x9f
	.4byte	.LVL54
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL55
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL57
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL59
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL61
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
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
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
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
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB15
	.4byte	.LFE15
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
.LASF183:
	.string	"system_relative_time"
.LASF42:
	.string	"_fnargs"
.LASF195:
	.string	"C:/esp/esp-idf/components/newlib/time.c"
.LASF81:
	.string	"_cookie"
.LASF98:
	.string	"_rand48"
.LASF59:
	.string	"_emergency"
.LASF177:
	.string	"since_boot"
.LASF91:
	.string	"_mbstate"
.LASF176:
	.string	"settimeofday"
.LASF144:
	.string	"MAC_TRIG"
.LASF71:
	.string	"_atexit0"
.LASF170:
	.string	"get_rtc_time_us"
.LASF118:
	.string	"_wcrtomb_state"
.LASF119:
	.string	"_wcsrtombs_state"
.LASF0:
	.string	"long long unsigned int"
.LASF79:
	.string	"_lbfsize"
.LASF132:
	.string	"tms_cutime"
.LASF160:
	.string	"get_time_since_boot"
.LASF167:
	.string	"cal_diff"
.LASF152:
	.string	"REJECT_INT"
.LASF116:
	.string	"_mbrtowc_state"
.LASF190:
	.string	"rtc_time_get"
.LASF145:
	.string	"UART0_TRIG"
.LASF111:
	.string	"_wctomb_state"
.LASF32:
	.string	"__tm_sec"
.LASF13:
	.string	"_off_t"
.LASF85:
	.string	"_close"
.LASF3:
	.string	"signed char"
.LASF155:
	.string	"RTC_TIME_VALID_INT"
.LASF159:
	.string	"set_boot_time"
.LASF86:
	.string	"_ubuf"
.LASF193:
	.string	"vTaskDelay"
.LASF154:
	.string	"RTC_WDT_INT"
.LASF51:
	.string	"_base"
.LASF34:
	.string	"__tm_hour"
.LASF73:
	.string	"__sf"
.LASF41:
	.string	"_on_exit_args"
.LASF136:
	.string	"int64_t"
.LASF178:
	.string	"usleep"
.LASF72:
	.string	"__sglue"
.LASF200:
	.string	"s_microseconds_offset"
.LASF8:
	.string	"__int64_t"
.LASF14:
	.string	"long int"
.LASF131:
	.string	"tms_stime"
.LASF77:
	.string	"_flags"
.LASF45:
	.string	"_is_cxa"
.LASF55:
	.string	"_stdin"
.LASF105:
	.string	"_result_k"
.LASF11:
	.string	"_lock_t"
.LASF9:
	.string	"long long int"
.LASF123:
	.string	"suseconds_t"
.LASF66:
	.string	"_cvtbuf"
.LASF89:
	.string	"_offset"
.LASF146:
	.string	"UART1_TRIG"
.LASF163:
	.string	"time_us"
.LASF117:
	.string	"_mbsrtowcs_state"
.LASF109:
	.string	"_strtok_last"
.LASF115:
	.string	"_mbrlen_state"
.LASF140:
	.string	"EXT_EVENT1_TRIG"
.LASF138:
	.string	"NO_SLEEP"
.LASF173:
	.string	"_gettimeofday_r"
.LASF48:
	.string	"_fns"
.LASF150:
	.string	"NO_INT"
.LASF7:
	.string	"__uint32_t"
.LASF120:
	.string	"clock_t"
.LASF28:
	.string	"_sign"
.LASF127:
	.string	"timezone"
.LASF23:
	.string	"_flock_t"
.LASF57:
	.string	"_stderr"
.LASF30:
	.string	"_Bigint"
.LASF184:
	.string	"current_time"
.LASF166:
	.string	"cur_cal"
.LASF82:
	.string	"_read"
.LASF186:
	.string	"s_boot_time_lock"
.LASF31:
	.string	"__tm"
.LASF49:
	.string	"_on_exit_args_ptr"
.LASF153:
	.string	"SDIO_IDLE_INT"
.LASF18:
	.string	"__wchb"
.LASF56:
	.string	"_stdout"
.LASF65:
	.string	"_cvtlen"
.LASF188:
	.string	"_lock_release"
.LASF25:
	.string	"long unsigned int"
.LASF78:
	.string	"_file"
.LASF124:
	.string	"timeval"
.LASF80:
	.string	"_data"
.LASF96:
	.string	"_niobs"
.LASF189:
	.string	"esp_timer_get_time"
.LASF172:
	.string	"ticks_high"
.LASF180:
	.string	"sleep"
.LASF75:
	.string	"_signal_buf"
.LASF69:
	.string	"_asctime_buf"
.LASF104:
	.string	"_result"
.LASF17:
	.string	"__wch"
.LASF16:
	.string	"wint_t"
.LASF128:
	.string	"tz_minuteswest"
.LASF90:
	.string	"_lock"
.LASF191:
	.string	"xTaskGetTickCount"
.LASF100:
	.string	"_mult"
.LASF122:
	.string	"useconds_t"
.LASF158:
	.string	"get_boot_time"
.LASF83:
	.string	"_write"
.LASF37:
	.string	"__tm_year"
.LASF20:
	.string	"__count"
.LASF139:
	.string	"EXT_EVENT0_TRIG"
.LASF74:
	.string	"_misc"
.LASF19:
	.string	"sizetype"
.LASF165:
	.string	"ticks"
.LASF125:
	.string	"tv_sec"
.LASF181:
	.string	"seconds"
.LASF156:
	.string	"TickType_t"
.LASF137:
	.string	"uint64_t"
.LASF142:
	.string	"TIMER_EXPIRE"
.LASF187:
	.string	"_lock_acquire"
.LASF36:
	.string	"__tm_mon"
.LASF46:
	.string	"_atexit"
.LASF149:
	.string	"BT_TRIG"
.LASF60:
	.string	"__sdidinit"
.LASF64:
	.string	"_gamma_signgam"
.LASF148:
	.string	"SAR_TRIG"
.LASF121:
	.string	"time_t"
.LASF10:
	.string	"__uint64_t"
.LASF147:
	.string	"TOUCH_TRIG"
.LASF107:
	.string	"_freelist"
.LASF171:
	.string	"ticks_low"
.LASF12:
	.string	"_LOCK_RECURSIVE_T"
.LASF35:
	.string	"__tm_mday"
.LASF157:
	.string	"_Bool"
.LASF134:
	.string	"int32_t"
.LASF4:
	.string	"unsigned char"
.LASF97:
	.string	"_iobs"
.LASF169:
	.string	"boot_time_adj"
.LASF194:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF141:
	.string	"GPIO_TRIG"
.LASF39:
	.string	"__tm_yday"
.LASF50:
	.string	"__sbuf"
.LASF92:
	.string	"_flags2"
.LASF130:
	.string	"tms_utime"
.LASF94:
	.string	"__FILE"
.LASF22:
	.string	"_mbstate_t"
.LASF76:
	.string	"__sFILE"
.LASF179:
	.string	"us_per_tick"
.LASF102:
	.string	"_rand_next"
.LASF110:
	.string	"_mblen_state"
.LASF58:
	.string	"_inc"
.LASF47:
	.string	"_ind"
.LASF62:
	.string	"_current_locale"
.LASF43:
	.string	"_dso_handle"
.LASF63:
	.string	"__cleanup"
.LASF27:
	.string	"_maxwds"
.LASF53:
	.string	"_reent"
.LASF99:
	.string	"_seed"
.LASF126:
	.string	"tv_usec"
.LASF151:
	.string	"WAKEUP_INT"
.LASF21:
	.string	"__value"
.LASF196:
	.string	"C:\\\\esp\\\\ArkPOS2-esp\\\\build\\\\newlib"
.LASF84:
	.string	"_seek"
.LASF175:
	.string	"ptms"
.LASF38:
	.string	"__tm_wday"
.LASF15:
	.string	"_fpos_t"
.LASF54:
	.string	"_errno"
.LASF93:
	.string	"char"
.LASF88:
	.string	"_blksize"
.LASF52:
	.string	"_size"
.LASF1:
	.string	"unsigned int"
.LASF174:
	.string	"_times_r"
.LASF168:
	.string	"boot_time_diff"
.LASF143:
	.string	"SDIO_TRIG"
.LASF197:
	.string	"esp_clk_slowclk_cal_set"
.LASF6:
	.string	"__int32_t"
.LASF103:
	.string	"_mprec"
.LASF26:
	.string	"_next"
.LASF44:
	.string	"_fntypes"
.LASF108:
	.string	"_misc_reent"
.LASF2:
	.string	"short unsigned int"
.LASF101:
	.string	"_add"
.LASF24:
	.string	"__ULong"
.LASF114:
	.string	"_getdate_err"
.LASF133:
	.string	"tms_cstime"
.LASF61:
	.string	"_current_category"
.LASF135:
	.string	"uint32_t"
.LASF185:
	.string	"system_get_rtc_time"
.LASF29:
	.string	"_wds"
.LASF95:
	.string	"_glue"
.LASF198:
	.string	"esp_clk_slowclk_cal_get"
.LASF129:
	.string	"tz_dsttime"
.LASF113:
	.string	"_l64a_buf"
.LASF5:
	.string	"short int"
.LASF70:
	.string	"_sig_func"
.LASF199:
	.string	"esp_set_time_from_rtc"
.LASF87:
	.string	"_nbuf"
.LASF182:
	.string	"system_get_time"
.LASF40:
	.string	"__tm_isdst"
.LASF68:
	.string	"_localtime_buf"
.LASF33:
	.string	"__tm_min"
.LASF67:
	.string	"_r48"
.LASF164:
	.string	"new_cal"
.LASF112:
	.string	"_mbtowc_state"
.LASF162:
	.string	"microseconds"
.LASF106:
	.string	"_p5s"
.LASF192:
	.string	"ets_delay_us"
.LASF161:
	.string	"result"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-61-gab8375a) 5.2.0"
