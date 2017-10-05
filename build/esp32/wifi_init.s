	.file	"wifi_init.c"
	.text
.Ltext0:
	.section	.text.esp_wifi_init,"ax",@progbits
	.align	4
	.global	esp_wifi_init
	.type	esp_wifi_init, @function
esp_wifi_init:
.LFB13:
	.file 1 "C:/esp/esp-idf/components/esp32/wifi_init.c"
	.loc 1 20 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 21 0
	call8	esp_event_set_default_wifi_handlers
.LVL1:
	.loc 1 22 0
	mov.n	a10, a2
	call8	esp_wifi_init_internal
.LVL2:
	.loc 1 23 0
	mov.n	a2, a10
.LVL3:
	retw.n
.LFE13:
	.size	esp_wifi_init, .-esp_wifi_init
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
	.text
.Letext0:
	.file 2 "C:/esp/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "C:/esp/esp-idf/components/newlib/include/stdint.h"
	.file 4 "C:/esp/esp-idf/components/esp32/include/esp_err.h"
	.file 5 "C:/esp/esp-idf/components/esp32/include/esp_wifi_types.h"
	.file 6 "C:/esp/esp-idf/components/lwip/include/lwip/port/arch/cc.h"
	.file 7 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/ip4_addr.h"
	.file 8 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/ip6_addr.h"
	.file 9 "C:/esp/esp-idf/components/tcpip_adapter/include/tcpip_adapter.h"
	.file 10 "C:/esp/esp-idf/components/esp32/include/esp_event.h"
	.file 11 "C:/esp/esp-idf/components/esp32/include/esp_wifi_crypto_types.h"
	.file 12 "C:/esp/esp-idf/components/esp32/include/esp_wifi.h"
	.file 13 "C:/esp/esp-idf/components/esp32/include/esp_wifi_internal.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x7d1
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF133
	.byte	0xc
	.4byte	.LASF134
	.4byte	.LASF135
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
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x19
	.4byte	0x57
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x1a
	.4byte	0x69
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x3
	.byte	0x15
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x3
	.byte	0x2c
	.4byte	0x4c
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x2d
	.4byte	0x5e
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF13
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x6
	.byte	0x4
	.4byte	0x37
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF16
	.uleb128 0x6
	.byte	0x4
	.4byte	0xc9
	.uleb128 0x7
	.4byte	0xbc
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x4
	.byte	0x18
	.4byte	0x89
	.uleb128 0x8
	.byte	0x4
	.4byte	0x69
	.byte	0x5
	.byte	0x36
	.4byte	0x110
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x6
	.byte	0
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x5
	.byte	0x3e
	.4byte	0xd9
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF26
	.uleb128 0xa
	.4byte	0x7e
	.4byte	0x132
	.uleb128 0xb
	.4byte	0xa8
	.byte	0x5
	.byte	0
	.uleb128 0xa
	.4byte	0x7e
	.4byte	0x142
	.uleb128 0xb
	.4byte	0xa8
	.byte	0x1f
	.byte	0
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x6
	.byte	0x32
	.4byte	0x94
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x4
	.byte	0x7
	.byte	0x2e
	.4byte	0x166
	.uleb128 0xd
	.4byte	.LASF31
	.byte	0x7
	.byte	0x2f
	.4byte	0x142
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x7
	.byte	0x42
	.4byte	0x14d
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0x10
	.byte	0x8
	.byte	0x39
	.4byte	0x18a
	.uleb128 0xd
	.4byte	.LASF31
	.byte	0x8
	.byte	0x3a
	.4byte	0x18a
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	0x142
	.4byte	0x19a
	.uleb128 0xb
	.4byte	0xa8
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF32
	.byte	0x8
	.byte	0x4b
	.4byte	0x171
	.uleb128 0xe
	.byte	0xc
	.byte	0x9
	.byte	0x48
	.4byte	0x1d0
	.uleb128 0xf
	.string	"ip"
	.byte	0x9
	.byte	0x49
	.4byte	0x166
	.byte	0
	.uleb128 0xd
	.4byte	.LASF33
	.byte	0x9
	.byte	0x4a
	.4byte	0x166
	.byte	0x4
	.uleb128 0xf
	.string	"gw"
	.byte	0x9
	.byte	0x4b
	.4byte	0x166
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF34
	.byte	0x9
	.byte	0x4c
	.4byte	0x1a5
	.uleb128 0xe
	.byte	0x10
	.byte	0x9
	.byte	0x4e
	.4byte	0x1ef
	.uleb128 0xf
	.string	"ip"
	.byte	0x9
	.byte	0x4f
	.4byte	0x19a
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF35
	.byte	0x9
	.byte	0x50
	.4byte	0x1db
	.uleb128 0x8
	.byte	0x4
	.4byte	0x69
	.byte	0xa
	.byte	0x1d
	.4byte	0x29d
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0
	.uleb128 0x9
	.4byte	.LASF37
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF38
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF39
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF40
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF41
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF42
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF43
	.byte	0x7
	.uleb128 0x9
	.4byte	.LASF44
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF45
	.byte	0x9
	.uleb128 0x9
	.4byte	.LASF46
	.byte	0xa
	.uleb128 0x9
	.4byte	.LASF47
	.byte	0xb
	.uleb128 0x9
	.4byte	.LASF48
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF49
	.byte	0xd
	.uleb128 0x9
	.4byte	.LASF50
	.byte	0xe
	.uleb128 0x9
	.4byte	.LASF51
	.byte	0xf
	.uleb128 0x9
	.4byte	.LASF52
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF53
	.byte	0x11
	.uleb128 0x9
	.4byte	.LASF54
	.byte	0x12
	.uleb128 0x9
	.4byte	.LASF55
	.byte	0x13
	.uleb128 0x9
	.4byte	.LASF56
	.byte	0x14
	.uleb128 0x9
	.4byte	.LASF57
	.byte	0x15
	.uleb128 0x9
	.4byte	.LASF58
	.byte	0x16
	.uleb128 0x9
	.4byte	.LASF59
	.byte	0x17
	.uleb128 0x9
	.4byte	.LASF60
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.4byte	.LASF61
	.byte	0xa
	.byte	0x37
	.4byte	0x1fa
	.uleb128 0x8
	.byte	0x4
	.4byte	0x69
	.byte	0xa
	.byte	0x39
	.4byte	0x2c7
	.uleb128 0x9
	.4byte	.LASF62
	.byte	0
	.uleb128 0x9
	.4byte	.LASF63
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF64
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF65
	.byte	0xa
	.byte	0x3d
	.4byte	0x2a8
	.uleb128 0xe
	.byte	0x8
	.byte	0xa
	.byte	0x3e
	.4byte	0x2ff
	.uleb128 0xd
	.4byte	.LASF66
	.byte	0xa
	.byte	0x3f
	.4byte	0x94
	.byte	0
	.uleb128 0xd
	.4byte	.LASF67
	.byte	0xa
	.byte	0x40
	.4byte	0x7e
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF68
	.byte	0xa
	.byte	0x41
	.4byte	0x7e
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF69
	.byte	0xa
	.byte	0x42
	.4byte	0x2d2
	.uleb128 0xe
	.byte	0x2c
	.byte	0xa
	.byte	0x44
	.4byte	0x34f
	.uleb128 0xd
	.4byte	.LASF70
	.byte	0xa
	.byte	0x45
	.4byte	0x132
	.byte	0
	.uleb128 0xd
	.4byte	.LASF71
	.byte	0xa
	.byte	0x46
	.4byte	0x7e
	.byte	0x20
	.uleb128 0xd
	.4byte	.LASF72
	.byte	0xa
	.byte	0x47
	.4byte	0x122
	.byte	0x21
	.uleb128 0xd
	.4byte	.LASF73
	.byte	0xa
	.byte	0x48
	.4byte	0x7e
	.byte	0x27
	.uleb128 0xd
	.4byte	.LASF74
	.byte	0xa
	.byte	0x49
	.4byte	0x110
	.byte	0x28
	.byte	0
	.uleb128 0x3
	.4byte	.LASF75
	.byte	0xa
	.byte	0x4a
	.4byte	0x30a
	.uleb128 0xe
	.byte	0x28
	.byte	0xa
	.byte	0x4c
	.4byte	0x393
	.uleb128 0xd
	.4byte	.LASF70
	.byte	0xa
	.byte	0x4d
	.4byte	0x132
	.byte	0
	.uleb128 0xd
	.4byte	.LASF71
	.byte	0xa
	.byte	0x4e
	.4byte	0x7e
	.byte	0x20
	.uleb128 0xd
	.4byte	.LASF72
	.byte	0xa
	.byte	0x4f
	.4byte	0x122
	.byte	0x21
	.uleb128 0xd
	.4byte	.LASF76
	.byte	0xa
	.byte	0x50
	.4byte	0x7e
	.byte	0x27
	.byte	0
	.uleb128 0x3
	.4byte	.LASF77
	.byte	0xa
	.byte	0x51
	.4byte	0x35a
	.uleb128 0xe
	.byte	0x8
	.byte	0xa
	.byte	0x53
	.4byte	0x3bf
	.uleb128 0xd
	.4byte	.LASF78
	.byte	0xa
	.byte	0x54
	.4byte	0x110
	.byte	0
	.uleb128 0xd
	.4byte	.LASF79
	.byte	0xa
	.byte	0x55
	.4byte	0x110
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF80
	.byte	0xa
	.byte	0x56
	.4byte	0x39e
	.uleb128 0xe
	.byte	0x10
	.byte	0xa
	.byte	0x58
	.4byte	0x3eb
	.uleb128 0xd
	.4byte	.LASF81
	.byte	0xa
	.byte	0x59
	.4byte	0x1d0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF82
	.byte	0xa
	.byte	0x5a
	.4byte	0x11b
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.4byte	.LASF83
	.byte	0xa
	.byte	0x5b
	.4byte	0x3ca
	.uleb128 0xe
	.byte	0x8
	.byte	0xa
	.byte	0x5d
	.4byte	0x40b
	.uleb128 0xd
	.4byte	.LASF84
	.byte	0xa
	.byte	0x5e
	.4byte	0x40b
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	0x7e
	.4byte	0x41b
	.uleb128 0xb
	.4byte	0xa8
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.4byte	.LASF85
	.byte	0xa
	.byte	0x5f
	.4byte	0x3f6
	.uleb128 0xe
	.byte	0x10
	.byte	0xa
	.byte	0x61
	.4byte	0x43b
	.uleb128 0xd
	.4byte	.LASF86
	.byte	0xa
	.byte	0x62
	.4byte	0x1ef
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF87
	.byte	0xa
	.byte	0x63
	.4byte	0x426
	.uleb128 0xe
	.byte	0x7
	.byte	0xa
	.byte	0x65
	.4byte	0x467
	.uleb128 0xf
	.string	"mac"
	.byte	0xa
	.byte	0x66
	.4byte	0x122
	.byte	0
	.uleb128 0xf
	.string	"aid"
	.byte	0xa
	.byte	0x67
	.4byte	0x7e
	.byte	0x6
	.byte	0
	.uleb128 0x3
	.4byte	.LASF88
	.byte	0xa
	.byte	0x68
	.4byte	0x446
	.uleb128 0xe
	.byte	0x7
	.byte	0xa
	.byte	0x6a
	.4byte	0x493
	.uleb128 0xf
	.string	"mac"
	.byte	0xa
	.byte	0x6b
	.4byte	0x122
	.byte	0
	.uleb128 0xf
	.string	"aid"
	.byte	0xa
	.byte	0x6c
	.4byte	0x7e
	.byte	0x6
	.byte	0
	.uleb128 0x3
	.4byte	.LASF89
	.byte	0xa
	.byte	0x6d
	.4byte	0x472
	.uleb128 0xe
	.byte	0xc
	.byte	0xa
	.byte	0x6f
	.4byte	0x4bf
	.uleb128 0xd
	.4byte	.LASF90
	.byte	0xa
	.byte	0x70
	.4byte	0x57
	.byte	0
	.uleb128 0xf
	.string	"mac"
	.byte	0xa
	.byte	0x71
	.4byte	0x122
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF91
	.byte	0xa
	.byte	0x72
	.4byte	0x49e
	.uleb128 0x10
	.byte	0x2c
	.byte	0xa
	.byte	0x74
	.4byte	0x54c
	.uleb128 0x11
	.4byte	.LASF92
	.byte	0xa
	.byte	0x75
	.4byte	0x34f
	.uleb128 0x11
	.4byte	.LASF93
	.byte	0xa
	.byte	0x76
	.4byte	0x393
	.uleb128 0x11
	.4byte	.LASF94
	.byte	0xa
	.byte	0x77
	.4byte	0x2ff
	.uleb128 0x11
	.4byte	.LASF95
	.byte	0xa
	.byte	0x78
	.4byte	0x3bf
	.uleb128 0x11
	.4byte	.LASF96
	.byte	0xa
	.byte	0x79
	.4byte	0x3eb
	.uleb128 0x11
	.4byte	.LASF97
	.byte	0xa
	.byte	0x7a
	.4byte	0x41b
	.uleb128 0x11
	.4byte	.LASF98
	.byte	0xa
	.byte	0x7b
	.4byte	0x2c7
	.uleb128 0x11
	.4byte	.LASF99
	.byte	0xa
	.byte	0x7c
	.4byte	0x467
	.uleb128 0x11
	.4byte	.LASF100
	.byte	0xa
	.byte	0x7d
	.4byte	0x493
	.uleb128 0x11
	.4byte	.LASF101
	.byte	0xa
	.byte	0x7e
	.4byte	0x4bf
	.uleb128 0x11
	.4byte	.LASF102
	.byte	0xa
	.byte	0x7f
	.4byte	0x43b
	.byte	0
	.uleb128 0x3
	.4byte	.LASF103
	.byte	0xa
	.byte	0x80
	.4byte	0x4ca
	.uleb128 0xe
	.byte	0x30
	.byte	0xa
	.byte	0x82
	.4byte	0x578
	.uleb128 0xd
	.4byte	.LASF104
	.byte	0xa
	.byte	0x83
	.4byte	0x29d
	.byte	0
	.uleb128 0xd
	.4byte	.LASF105
	.byte	0xa
	.byte	0x84
	.4byte	0x54c
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF106
	.byte	0xa
	.byte	0x85
	.4byte	0x557
	.uleb128 0x3
	.4byte	.LASF107
	.byte	0xa
	.byte	0x87
	.4byte	0x58e
	.uleb128 0x6
	.byte	0x4
	.4byte	0x594
	.uleb128 0x12
	.4byte	0xce
	.4byte	0x5a3
	.uleb128 0x13
	.4byte	0x5a3
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x578
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5af
	.uleb128 0x7
	.4byte	0x37
	.uleb128 0x6
	.byte	0x4
	.4byte	0x57
	.uleb128 0x3
	.4byte	.LASF108
	.byte	0xb
	.byte	0x7d
	.4byte	0x5c5
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5cb
	.uleb128 0x12
	.4byte	0x5b4
	.4byte	0x5e9
	.uleb128 0x13
	.4byte	0x5a9
	.uleb128 0x13
	.4byte	0x57
	.uleb128 0x13
	.4byte	0x5a9
	.uleb128 0x13
	.4byte	0xb6
	.byte	0
	.uleb128 0x3
	.4byte	.LASF109
	.byte	0xb
	.byte	0x88
	.4byte	0x5c5
	.uleb128 0x3
	.4byte	.LASF110
	.byte	0xb
	.byte	0xcf
	.4byte	0x5ff
	.uleb128 0x6
	.byte	0x4
	.4byte	0x605
	.uleb128 0x12
	.4byte	0x9f
	.4byte	0x62d
	.uleb128 0x13
	.4byte	0x5a9
	.uleb128 0x13
	.4byte	0x57
	.uleb128 0x13
	.4byte	0x57
	.uleb128 0x13
	.4byte	0x62d
	.uleb128 0x13
	.4byte	0x633
	.uleb128 0x13
	.4byte	0xb6
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5a9
	.uleb128 0x6
	.byte	0x4
	.4byte	0x639
	.uleb128 0x7
	.4byte	0x57
	.uleb128 0x3
	.4byte	.LASF111
	.byte	0xb
	.byte	0xde
	.4byte	0x649
	.uleb128 0x6
	.byte	0x4
	.4byte	0x64f
	.uleb128 0x12
	.4byte	0x9f
	.4byte	0x67c
	.uleb128 0x13
	.4byte	0x5a9
	.uleb128 0x13
	.4byte	0x57
	.uleb128 0x13
	.4byte	0xc3
	.uleb128 0x13
	.4byte	0x5a9
	.uleb128 0x13
	.4byte	0x57
	.uleb128 0x13
	.4byte	0xb6
	.uleb128 0x13
	.4byte	0x57
	.byte	0
	.uleb128 0x14
	.byte	0x10
	.byte	0xb
	.2byte	0x104
	.4byte	0x6ba
	.uleb128 0x15
	.4byte	.LASF112
	.byte	0xb
	.2byte	0x105
	.4byte	0x5ba
	.byte	0
	.uleb128 0x15
	.4byte	.LASF113
	.byte	0xb
	.2byte	0x106
	.4byte	0x5e9
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF114
	.byte	0xb
	.2byte	0x107
	.4byte	0x5f4
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF115
	.byte	0xb
	.2byte	0x108
	.4byte	0x63e
	.byte	0xc
	.byte	0
	.uleb128 0x16
	.4byte	.LASF116
	.byte	0xb
	.2byte	0x109
	.4byte	0x67c
	.uleb128 0xe
	.byte	0x40
	.byte	0xc
	.byte	0x62
	.4byte	0x76b
	.uleb128 0xd
	.4byte	.LASF117
	.byte	0xc
	.byte	0x63
	.4byte	0x583
	.byte	0
	.uleb128 0xd
	.4byte	.LASF118
	.byte	0xc
	.byte	0x64
	.4byte	0x6ba
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF119
	.byte	0xc
	.byte	0x65
	.4byte	0x57
	.byte	0x14
	.uleb128 0xd
	.4byte	.LASF120
	.byte	0xc
	.byte	0x66
	.4byte	0x57
	.byte	0x18
	.uleb128 0xd
	.4byte	.LASF121
	.byte	0xc
	.byte	0x67
	.4byte	0x57
	.byte	0x1c
	.uleb128 0xd
	.4byte	.LASF122
	.byte	0xc
	.byte	0x68
	.4byte	0x57
	.byte	0x20
	.uleb128 0xd
	.4byte	.LASF123
	.byte	0xc
	.byte	0x69
	.4byte	0x57
	.byte	0x24
	.uleb128 0xd
	.4byte	.LASF124
	.byte	0xc
	.byte	0x6a
	.4byte	0x57
	.byte	0x28
	.uleb128 0xd
	.4byte	.LASF125
	.byte	0xc
	.byte	0x6b
	.4byte	0x57
	.byte	0x2c
	.uleb128 0xd
	.4byte	.LASF126
	.byte	0xc
	.byte	0x6c
	.4byte	0x57
	.byte	0x30
	.uleb128 0xd
	.4byte	.LASF127
	.byte	0xc
	.byte	0x6d
	.4byte	0x57
	.byte	0x34
	.uleb128 0xd
	.4byte	.LASF128
	.byte	0xc
	.byte	0x6e
	.4byte	0x57
	.byte	0x38
	.uleb128 0xd
	.4byte	.LASF129
	.byte	0xc
	.byte	0x6f
	.4byte	0x57
	.byte	0x3c
	.byte	0
	.uleb128 0x3
	.4byte	.LASF130
	.byte	0xc
	.byte	0x70
	.4byte	0x6c6
	.uleb128 0x17
	.4byte	.LASF136
	.byte	0x1
	.byte	0x13
	.4byte	0xce
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7b8
	.uleb128 0x18
	.4byte	.LASF137
	.byte	0x1
	.byte	0x13
	.4byte	0x7b8
	.4byte	.LLST0
	.uleb128 0x19
	.4byte	.LVL1
	.4byte	0x7be
	.uleb128 0x1a
	.4byte	.LVL2
	.4byte	0x7c9
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x76b
	.uleb128 0x1c
	.4byte	.LASF131
	.4byte	.LASF131
	.byte	0xa
	.byte	0xae
	.uleb128 0x1c
	.4byte	.LASF132
	.4byte	.LASF132
	.byte	0xd
	.byte	0x3d
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
	.uleb128 0x9
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL3
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF112:
	.string	"aes_wrap"
.LASF114:
	.string	"hmac_sha256_vector"
.LASF52:
	.string	"SYSTEM_EVENT_AP_STADISCONNECTED"
.LASF51:
	.string	"SYSTEM_EVENT_AP_STACONNECTED"
.LASF4:
	.string	"__uint8_t"
.LASF84:
	.string	"pin_code"
.LASF102:
	.string	"got_ip6"
.LASF115:
	.string	"sha256_prf"
.LASF77:
	.string	"system_event_sta_disconnected_t"
.LASF9:
	.string	"long long unsigned int"
.LASF91:
	.string	"system_event_ap_probe_req_rx_t"
.LASF31:
	.string	"addr"
.LASF85:
	.string	"system_event_sta_wps_er_pin_t"
.LASF75:
	.string	"system_event_sta_connected_t"
.LASF25:
	.string	"wifi_auth_mode_t"
.LASF81:
	.string	"ip_info"
.LASF108:
	.string	"esp_aes_wrap_t"
.LASF8:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF54:
	.string	"SYSTEM_EVENT_AP_STA_GOT_IP6"
.LASF21:
	.string	"WIFI_AUTH_WPA2_PSK"
.LASF47:
	.string	"SYSTEM_EVENT_STA_WPS_ER_TIMEOUT"
.LASF122:
	.string	"static_tx_buf_num"
.LASF96:
	.string	"got_ip"
.LASF104:
	.string	"event_id"
.LASF13:
	.string	"long int"
.LASF127:
	.string	"tx_ba_win"
.LASF29:
	.string	"ip4_addr"
.LASF79:
	.string	"new_mode"
.LASF18:
	.string	"WIFI_AUTH_OPEN"
.LASF39:
	.string	"SYSTEM_EVENT_STA_STOP"
.LASF87:
	.string	"system_event_ap_sta_got_ip6_t"
.LASF32:
	.string	"ip6_addr_t"
.LASF33:
	.string	"netmask"
.LASF23:
	.string	"WIFI_AUTH_WPA2_ENTERPRISE"
.LASF65:
	.string	"system_event_sta_wps_fail_reason_t"
.LASF6:
	.string	"__uint32_t"
.LASF109:
	.string	"esp_aes_unwrap_t"
.LASF24:
	.string	"WIFI_AUTH_MAX"
.LASF45:
	.string	"SYSTEM_EVENT_STA_WPS_ER_SUCCESS"
.LASF99:
	.string	"sta_connected"
.LASF135:
	.string	"C:\\\\esp\\\\esp32-ArkPOS2\\\\ArkPOS2-esp\\\\build\\\\esp32"
.LASF44:
	.string	"SYSTEM_EVENT_STA_LOST_IP"
.LASF86:
	.string	"ip6_info"
.LASF7:
	.string	"unsigned int"
.LASF70:
	.string	"ssid"
.LASF103:
	.string	"system_event_info_t"
.LASF15:
	.string	"long unsigned int"
.LASF27:
	.string	"u32_t"
.LASF97:
	.string	"sta_er_pin"
.LASF74:
	.string	"authmode"
.LASF88:
	.string	"system_event_ap_staconnected_t"
.LASF38:
	.string	"SYSTEM_EVENT_STA_START"
.LASF98:
	.string	"sta_er_fail_reason"
.LASF3:
	.string	"short unsigned int"
.LASF101:
	.string	"ap_probereqrecved"
.LASF34:
	.string	"tcpip_adapter_ip_info_t"
.LASF59:
	.string	"SYSTEM_EVENT_ETH_GOT_IP"
.LASF126:
	.string	"nano_enable"
.LASF67:
	.string	"number"
.LASF131:
	.string	"esp_event_set_default_wifi_handlers"
.LASF106:
	.string	"system_event_t"
.LASF22:
	.string	"WIFI_AUTH_WPA_WPA2_PSK"
.LASF113:
	.string	"aes_unwrap"
.LASF124:
	.string	"ampdu_enable"
.LASF62:
	.string	"WPS_FAIL_REASON_NORMAL"
.LASF14:
	.string	"sizetype"
.LASF117:
	.string	"event_handler"
.LASF121:
	.string	"tx_buf_type"
.LASF93:
	.string	"disconnected"
.LASF57:
	.string	"SYSTEM_EVENT_ETH_CONNECTED"
.LASF42:
	.string	"SYSTEM_EVENT_STA_AUTHMODE_CHANGE"
.LASF63:
	.string	"WPS_FAIL_REASON_RECV_M2D"
.LASF80:
	.string	"system_event_sta_authmode_change_t"
.LASF134:
	.string	"C:/esp/esp-idf/components/esp32/wifi_init.c"
.LASF118:
	.string	"wpa_crypto_funcs"
.LASF37:
	.string	"SYSTEM_EVENT_SCAN_DONE"
.LASF136:
	.string	"esp_wifi_init"
.LASF130:
	.string	"wifi_init_config_t"
.LASF120:
	.string	"dynamic_rx_buf_num"
.LASF72:
	.string	"bssid"
.LASF123:
	.string	"dynamic_tx_buf_num"
.LASF82:
	.string	"ip_changed"
.LASF110:
	.string	"esp_hmac_sha256_vector_t"
.LASF119:
	.string	"static_rx_buf_num"
.LASF61:
	.string	"system_event_id_t"
.LASF26:
	.string	"_Bool"
.LASF11:
	.string	"int32_t"
.LASF116:
	.string	"wpa_crypto_funcs_t"
.LASF100:
	.string	"sta_disconnected"
.LASF133:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF111:
	.string	"esp_sha256_prf_t"
.LASF2:
	.string	"short int"
.LASF71:
	.string	"ssid_len"
.LASF129:
	.string	"magic"
.LASF78:
	.string	"old_mode"
.LASF48:
	.string	"SYSTEM_EVENT_STA_WPS_ER_PIN"
.LASF76:
	.string	"reason"
.LASF73:
	.string	"channel"
.LASF95:
	.string	"auth_change"
.LASF60:
	.string	"SYSTEM_EVENT_MAX"
.LASF12:
	.string	"uint32_t"
.LASF56:
	.string	"SYSTEM_EVENT_ETH_STOP"
.LASF30:
	.string	"ip6_addr"
.LASF68:
	.string	"scan_id"
.LASF16:
	.string	"char"
.LASF40:
	.string	"SYSTEM_EVENT_STA_CONNECTED"
.LASF137:
	.string	"config"
.LASF90:
	.string	"rssi"
.LASF94:
	.string	"scan_done"
.LASF20:
	.string	"WIFI_AUTH_WPA_PSK"
.LASF125:
	.string	"nvs_enable"
.LASF5:
	.string	"__int32_t"
.LASF58:
	.string	"SYSTEM_EVENT_ETH_DISCONNECTED"
.LASF46:
	.string	"SYSTEM_EVENT_STA_WPS_ER_FAILED"
.LASF105:
	.string	"event_info"
.LASF83:
	.string	"system_event_sta_got_ip_t"
.LASF1:
	.string	"unsigned char"
.LASF89:
	.string	"system_event_ap_stadisconnected_t"
.LASF28:
	.string	"ip4_addr_t"
.LASF92:
	.string	"connected"
.LASF107:
	.string	"system_event_handler_t"
.LASF35:
	.string	"tcpip_adapter_ip6_info_t"
.LASF36:
	.string	"SYSTEM_EVENT_WIFI_READY"
.LASF66:
	.string	"status"
.LASF17:
	.string	"esp_err_t"
.LASF41:
	.string	"SYSTEM_EVENT_STA_DISCONNECTED"
.LASF55:
	.string	"SYSTEM_EVENT_ETH_START"
.LASF10:
	.string	"uint8_t"
.LASF128:
	.string	"rx_ba_win"
.LASF50:
	.string	"SYSTEM_EVENT_AP_STOP"
.LASF132:
	.string	"esp_wifi_init_internal"
.LASF64:
	.string	"WPS_FAIL_REASON_MAX"
.LASF69:
	.string	"system_event_sta_scan_done_t"
.LASF43:
	.string	"SYSTEM_EVENT_STA_GOT_IP"
.LASF53:
	.string	"SYSTEM_EVENT_AP_PROBEREQRECVED"
.LASF49:
	.string	"SYSTEM_EVENT_AP_START"
.LASF19:
	.string	"WIFI_AUTH_WEP"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-73-ge28a011) 5.2.0"
