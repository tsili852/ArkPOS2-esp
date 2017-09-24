	.file	"syscall.c"
	.text
.Ltext0:
	.section	.text.ff_cre_syncobj,"ax",@progbits
	.align	4
	.global	ff_cre_syncobj
	.type	ff_cre_syncobj, @function
ff_cre_syncobj:
.LFB9:
	.file 1 "C:/esp/esp-idf/components/fatfs/src/option/syscall.c"
	.loc 1 23 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 24 0
	movi.n	a10, 1
	call8	xQueueCreateMutex
.LVL1:
	s32i.n	a10, a3, 0
	.loc 1 25 0
	movi.n	a2, 0
.LVL2:
	movi.n	a8, 1
	movnez	a2, a8, a10
	.loc 1 26 0
	retw.n
.LFE9:
	.size	ff_cre_syncobj, .-ff_cre_syncobj
	.section	.text.ff_del_syncobj,"ax",@progbits
	.align	4
	.global	ff_del_syncobj
	.type	ff_del_syncobj, @function
ff_del_syncobj:
.LFB10:
	.loc 1 41 0
.LVL3:
	entry	sp, 32
.LCFI1:
	.loc 1 42 0
	mov.n	a10, a2
	call8	vQueueDelete
.LVL4:
	.loc 1 44 0
	movi.n	a2, 1
.LVL5:
	retw.n
.LFE10:
	.size	ff_del_syncobj, .-ff_del_syncobj
	.section	.text.ff_req_grant,"ax",@progbits
	.align	4
	.global	ff_req_grant
	.type	ff_req_grant, @function
ff_req_grant:
.LFB11:
	.loc 1 58 0
.LVL6:
	entry	sp, 32
.LCFI2:
	.loc 1 59 0
	movi.n	a13, 0
	movi	a12, 0x3e8
	mov.n	a11, a13
	mov.n	a10, a2
	call8	xQueueGenericReceive
.LVL7:
	.loc 1 59 0
	addi.n	a10, a10, -1
	movi.n	a2, 0
.LVL8:
	movi.n	a8, 1
	moveqz	a2, a8, a10
	.loc 1 60 0
	retw.n
.LFE11:
	.size	ff_req_grant, .-ff_req_grant
	.section	.text.ff_rel_grant,"ax",@progbits
	.align	4
	.global	ff_rel_grant
	.type	ff_rel_grant, @function
ff_rel_grant:
.LFB12:
	.loc 1 73 0
.LVL9:
	entry	sp, 32
.LCFI3:
	.loc 1 74 0
	movi.n	a13, 0
	mov.n	a12, a13
	mov.n	a11, a13
	mov.n	a10, a2
	call8	xQueueGenericSend
.LVL10:
	retw.n
.LFE12:
	.size	ff_rel_grant, .-ff_rel_grant
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
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI0-.LFB9
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
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI2-.LFB11
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
	.text
.Letext0:
	.file 2 "c:\\esp\\esp-idf\\components\\fatfs\\src\\integer.h"
	.file 3 "C:/esp/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "C:/esp/esp-idf/components/newlib/include/stdint.h"
	.file 5 "C:/esp/esp-idf/components/freertos/include/freertos/portmacro.h"
	.file 6 "C:/esp/esp-idf/components/freertos/include/freertos/queue.h"
	.file 7 "C:/esp/esp-idf/components/freertos/include/freertos/semphr.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x222
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF29
	.byte	0xc
	.4byte	.LASF30
	.4byte	.LASF31
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
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x2
	.byte	0x16
	.4byte	0x3e
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF7
	.uleb128 0x4
	.4byte	.LASF9
	.byte	0x3
	.byte	0x12
	.4byte	0x3e
	.uleb128 0x4
	.4byte	.LASF10
	.byte	0x3
	.byte	0x1a
	.4byte	0x2c
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x4
	.byte	0x15
	.4byte	0x6f
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x4
	.byte	0x2d
	.4byte	0x7a
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x5
	.byte	0x6c
	.4byte	0x25
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x5
	.byte	0x73
	.4byte	0xa7
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF18
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x6
	.byte	0x58
	.4byte	0x93
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x7
	.byte	0x4f
	.4byte	0xcf
	.uleb128 0x6
	.4byte	.LASF22
	.byte	0x1
	.byte	0x13
	.4byte	0x25
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12a
	.uleb128 0x7
	.string	"vol"
	.byte	0x1
	.byte	0x14
	.4byte	0x33
	.4byte	.LLST0
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x1
	.byte	0x15
	.4byte	0x12a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x9
	.4byte	.LVL1
	.4byte	0x1f5
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0xda
	.uleb128 0x6
	.4byte	.LASF23
	.byte	0x1
	.byte	0x26
	.4byte	0x25
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x169
	.uleb128 0xc
	.4byte	.LASF21
	.byte	0x1
	.byte	0x27
	.4byte	0xda
	.4byte	.LLST1
	.uleb128 0x9
	.4byte	.LVL4
	.4byte	0x201
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF24
	.byte	0x1
	.byte	0x37
	.4byte	0x25
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1b3
	.uleb128 0xc
	.4byte	.LASF21
	.byte	0x1
	.byte	0x38
	.4byte	0xda
	.4byte	.LLST2
	.uleb128 0x9
	.4byte	.LVL7
	.4byte	0x20d
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x3e8
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF32
	.byte	0x1
	.byte	0x46
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1f5
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x1
	.byte	0x47
	.4byte	0xda
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.4byte	.LVL10
	.4byte	0x219
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF25
	.4byte	.LASF25
	.byte	0x6
	.2byte	0x621
	.uleb128 0xe
	.4byte	.LASF26
	.4byte	.LASF26
	.byte	0x6
	.2byte	0x417
	.uleb128 0xe
	.4byte	.LASF27
	.4byte	.LASF27
	.byte	0x6
	.2byte	0x3e9
	.uleb128 0xe
	.4byte	.LASF28
	.4byte	.LASF28
	.byte	0x6
	.2byte	0x2a8
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL2
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL3
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL5
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL8
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x34
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF11:
	.string	"long long int"
.LASF9:
	.string	"__uint8_t"
.LASF17:
	.string	"TickType_t"
.LASF23:
	.string	"ff_del_syncobj"
.LASF19:
	.string	"QueueHandle_t"
.LASF8:
	.string	"BYTE"
.LASF29:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF26:
	.string	"vQueueDelete"
.LASF6:
	.string	"long long unsigned int"
.LASF1:
	.string	"unsigned char"
.LASF32:
	.string	"ff_rel_grant"
.LASF5:
	.string	"long unsigned int"
.LASF27:
	.string	"xQueueGenericReceive"
.LASF3:
	.string	"short unsigned int"
.LASF20:
	.string	"SemaphoreHandle_t"
.LASF10:
	.string	"__uint32_t"
.LASF0:
	.string	"unsigned int"
.LASF13:
	.string	"char"
.LASF14:
	.string	"uint8_t"
.LASF24:
	.string	"ff_req_grant"
.LASF12:
	.string	"sizetype"
.LASF31:
	.string	"C:\\\\esp\\\\ArkPOS2-esp\\\\build\\\\fatfs"
.LASF21:
	.string	"sobj"
.LASF28:
	.string	"xQueueGenericSend"
.LASF2:
	.string	"short int"
.LASF15:
	.string	"uint32_t"
.LASF4:
	.string	"long int"
.LASF22:
	.string	"ff_cre_syncobj"
.LASF25:
	.string	"xQueueCreateMutex"
.LASF7:
	.string	"signed char"
.LASF18:
	.string	"_Bool"
.LASF16:
	.string	"BaseType_t"
.LASF30:
	.string	"C:/esp/esp-idf/components/fatfs/src/option/syscall.c"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-61-gab8375a) 5.2.0"
