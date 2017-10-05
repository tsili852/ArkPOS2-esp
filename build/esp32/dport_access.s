	.file	"dport_access.c"
	.text
.Ltext0:
	.section	.iram1,"ax",@progbits
	.align	4
	.global	esp_dport_access_stall_other_cpu_start
	.type	esp_dport_access_stall_other_cpu_start, @function
esp_dport_access_stall_other_cpu_start:
.LFB23:
	.file 1 "C:/esp/esp-idf/components/esp32/dport_access.c"
	.loc 1 71 0
	entry	sp, 32
.LCFI0:
	retw.n
.LFE23:
	.size	esp_dport_access_stall_other_cpu_start, .-esp_dport_access_stall_other_cpu_start
	.align	4
	.global	esp_dport_access_stall_other_cpu_end
	.type	esp_dport_access_stall_other_cpu_end, @function
esp_dport_access_stall_other_cpu_end:
.LFB24:
	.loc 1 116 0
	.loc 1 116 0
	entry	sp, 32
.LCFI1:
	retw.n
.LFE24:
	.size	esp_dport_access_stall_other_cpu_end, .-esp_dport_access_stall_other_cpu_end
	.align	4
	.global	esp_dport_access_stall_other_cpu_start_wrap
	.type	esp_dport_access_stall_other_cpu_start_wrap, @function
esp_dport_access_stall_other_cpu_start_wrap:
.LFB25:
	.loc 1 148 0
	.loc 1 148 0
	entry	sp, 32
.LCFI2:
	retw.n
.LFE25:
	.size	esp_dport_access_stall_other_cpu_start_wrap, .-esp_dport_access_stall_other_cpu_start_wrap
	.align	4
	.global	esp_dport_access_stall_other_cpu_end_wrap
	.type	esp_dport_access_stall_other_cpu_end_wrap, @function
esp_dport_access_stall_other_cpu_end_wrap:
.LFB26:
	.loc 1 153 0
	.loc 1 153 0
	entry	sp, 32
.LCFI3:
	retw.n
.LFE26:
	.size	esp_dport_access_stall_other_cpu_end_wrap, .-esp_dport_access_stall_other_cpu_end_wrap
	.section	.text.esp_dport_access_int_init,"ax",@progbits
	.align	4
	.global	esp_dport_access_int_init
	.type	esp_dport_access_int_init, @function
esp_dport_access_int_init:
.LFB27:
	.loc 1 184 0
	.loc 1 184 0
	entry	sp, 32
.LCFI4:
	retw.n
.LFE27:
	.size	esp_dport_access_int_init, .-esp_dport_access_int_init
	.section	.iram1
	.align	4
	.global	esp_dport_access_int_pause
	.type	esp_dport_access_int_pause, @function
esp_dport_access_int_pause:
.LFB28:
	.loc 1 192 0
	.loc 1 192 0
	entry	sp, 32
.LCFI5:
	retw.n
.LFE28:
	.size	esp_dport_access_int_pause, .-esp_dport_access_int_pause
	.align	4
	.global	esp_dport_access_int_abort
	.type	esp_dport_access_int_abort, @function
esp_dport_access_int_abort:
.LFB29:
	.loc 1 203 0
	.loc 1 203 0
	entry	sp, 32
.LCFI6:
	retw.n
.LFE29:
	.size	esp_dport_access_int_abort, .-esp_dport_access_int_abort
	.align	4
	.global	esp_dport_access_int_resume
	.type	esp_dport_access_int_resume, @function
esp_dport_access_int_resume:
.LFB30:
	.loc 1 211 0
	.loc 1 211 0
	entry	sp, 32
.LCFI7:
	retw.n
.LFE30:
	.size	esp_dport_access_int_resume, .-esp_dport_access_int_resume
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
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI0-.LFB23
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
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI2-.LFB25
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI3-.LFB26
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI4-.LFB27
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI5-.LFB28
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI6-.LFB29
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI7-.LFB30
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
	.text
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x105
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF20
	.byte	0xc
	.4byte	.LASF21
	.4byte	.LASF22
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
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF4
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
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF11
	.uleb128 0x4
	.4byte	.LASF12
	.byte	0x1
	.byte	0x46
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x1
	.byte	0x73
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x1
	.byte	0x93
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x1
	.byte	0x98
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x1
	.byte	0xb7
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x1
	.byte	0xbf
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x1
	.byte	0xca
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x1
	.byte	0xd2
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
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
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x54
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF5:
	.string	"long long int"
.LASF4:
	.string	"unsigned int"
.LASF1:
	.string	"unsigned char"
.LASF20:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF9:
	.string	"long unsigned int"
.LASF6:
	.string	"long long unsigned int"
.LASF18:
	.string	"esp_dport_access_int_abort"
.LASF16:
	.string	"esp_dport_access_int_init"
.LASF15:
	.string	"esp_dport_access_stall_other_cpu_end_wrap"
.LASF12:
	.string	"esp_dport_access_stall_other_cpu_start"
.LASF10:
	.string	"char"
.LASF7:
	.string	"long int"
.LASF11:
	.string	"_Bool"
.LASF3:
	.string	"short unsigned int"
.LASF0:
	.string	"signed char"
.LASF13:
	.string	"esp_dport_access_stall_other_cpu_end"
.LASF14:
	.string	"esp_dport_access_stall_other_cpu_start_wrap"
.LASF19:
	.string	"esp_dport_access_int_resume"
.LASF17:
	.string	"esp_dport_access_int_pause"
.LASF2:
	.string	"short int"
.LASF22:
	.string	"C:\\\\esp\\\\esp32-ArkPOS2\\\\ArkPOS2-esp\\\\build\\\\esp32"
.LASF21:
	.string	"C:/esp/esp-idf/components/esp32/dport_access.c"
.LASF8:
	.string	"sizetype"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-73-ge28a011) 5.2.0"
