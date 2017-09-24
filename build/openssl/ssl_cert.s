	.file	"ssl_cert.c"
	.text
.Ltext0:
	.section	.text.__ssl_cert_new,"ax",@progbits
	.align	4
	.global	__ssl_cert_new
	.type	__ssl_cert_new, @function
__ssl_cert_new:
.LFB1:
	.file 1 "C:/esp/esp-idf/components/openssl/library/ssl_cert.c"
	.loc 1 25 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 31 0
	movi.n	a10, 0xc
	call8	ssl_mem_zalloc
.LVL1:
	mov.n	a3, a10
.LVL2:
	.loc 1 32 0
	beqz.n	a10, .L6
	.loc 1 37 0
	beqz.n	a2, .L7
	.loc 1 38 0
	l32i.n	a10, a2, 8
.LVL3:
	.loc 1 39 0
	l32i.n	a2, a2, 4
.LVL4:
	j	.L3
.LVL5:
.L7:
	.loc 1 41 0
	movi.n	a10, 0
	.loc 1 42 0
	mov.n	a2, a10
.LVL6:
.L3:
	.loc 1 45 0
	call8	__EVP_PKEY_new
.LVL7:
	s32i.n	a10, a3, 8
	.loc 1 46 0
	beqz.n	a10, .L4
	.loc 1 51 0
	mov.n	a10, a2
	call8	__X509_new
.LVL8:
	s32i.n	a10, a3, 4
	.loc 1 52 0
	bnez.n	a10, .L8
.L5:
	.loc 1 60 0
	l32i.n	a10, a3, 8
	call8	EVP_PKEY_free
.LVL9:
.L4:
	.loc 1 62 0
	mov.n	a10, a3
	call8	free
.LVL10:
	.loc 1 64 0
	movi.n	a2, 0
.LVL11:
	retw.n
.LVL12:
.L6:
	movi.n	a2, 0
.LVL13:
	retw.n
.LVL14:
.L8:
	.loc 1 57 0
	mov.n	a2, a3
.LVL15:
	.loc 1 65 0
	retw.n
.LFE1:
	.size	__ssl_cert_new, .-__ssl_cert_new
	.section	.text.ssl_cert_new,"ax",@progbits
	.align	4
	.global	ssl_cert_new
	.type	ssl_cert_new, @function
ssl_cert_new:
.LFB2:
	.loc 1 71 0
	entry	sp, 32
.LCFI1:
	.loc 1 72 0
	movi.n	a10, 0
	call8	__ssl_cert_new
.LVL16:
	.loc 1 73 0
	mov.n	a2, a10
	retw.n
.LFE2:
	.size	ssl_cert_new, .-ssl_cert_new
	.section	.text.ssl_cert_free,"ax",@progbits
	.align	4
	.global	ssl_cert_free
	.type	ssl_cert_free, @function
ssl_cert_free:
.LFB3:
	.loc 1 79 0
.LVL17:
	entry	sp, 32
.LCFI2:
	.loc 1 82 0
	l32i.n	a10, a2, 4
	call8	X509_free
.LVL18:
	.loc 1 84 0
	l32i.n	a10, a2, 8
	call8	EVP_PKEY_free
.LVL19:
	.loc 1 86 0
	mov.n	a10, a2
	call8	free
.LVL20:
	retw.n
.LFE3:
	.size	ssl_cert_free, .-ssl_cert_free
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
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x4
	.4byte	.LCFI0-.LFB1
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI1-.LFB2
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI2-.LFB3
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
	.text
.Letext0:
	.file 2 "C:/esp/esp-idf/components/openssl/include/internal/ssl_types.h"
	.file 3 "C:/esp/esp-idf/components/openssl/include/platform/ssl_port.h"
	.file 4 "C:/esp/esp-idf/components/openssl/include/internal/ssl_pkey.h"
	.file 5 "C:/esp/esp-idf/components/openssl/include/internal/ssl_x509.h"
	.file 6 "C:/esp/esp-idf/components/newlib/include/malloc.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x3e5
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF45
	.byte	0xc
	.4byte	.LASF46
	.4byte	.LASF47
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.4byte	.LASF4
	.byte	0x2
	.byte	0x43
	.4byte	0x3e
	.uleb128 0x5
	.4byte	.LASF6
	.byte	0xc
	.byte	0x2
	.byte	0x6c
	.4byte	0x6f
	.uleb128 0x6
	.4byte	.LASF1
	.byte	0x2
	.byte	0x6e
	.4byte	0x2c
	.byte	0
	.uleb128 0x6
	.4byte	.LASF2
	.byte	0x2
	.byte	0x70
	.4byte	0x17b
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF3
	.byte	0x2
	.byte	0x72
	.4byte	0x181
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.4byte	.LASF5
	.byte	0x2
	.byte	0x46
	.4byte	0x7a
	.uleb128 0x5
	.4byte	.LASF7
	.byte	0x8
	.byte	0x2
	.byte	0x64
	.4byte	0x9f
	.uleb128 0x6
	.4byte	.LASF8
	.byte	0x2
	.byte	0x67
	.4byte	0x163
	.byte	0
	.uleb128 0x6
	.4byte	.LASF9
	.byte	0x2
	.byte	0x69
	.4byte	0x170
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF10
	.byte	0x2
	.byte	0x4c
	.4byte	0xaa
	.uleb128 0x5
	.4byte	.LASF11
	.byte	0x8
	.byte	0x2
	.byte	0x5d
	.4byte	0xcf
	.uleb128 0x6
	.4byte	.LASF12
	.byte	0x2
	.byte	0x5f
	.4byte	0x163
	.byte	0
	.uleb128 0x6
	.4byte	.LASF9
	.byte	0x2
	.byte	0x61
	.4byte	0x165
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x2
	.byte	0x4f
	.4byte	0xda
	.uleb128 0x7
	.4byte	.LASF14
	.byte	0x10
	.byte	0x2
	.2byte	0x104
	.4byte	0x11c
	.uleb128 0x8
	.4byte	.LASF15
	.byte	0x2
	.2byte	0x106
	.4byte	0x1af
	.byte	0
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x2
	.2byte	0x108
	.4byte	0x1c0
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x2
	.2byte	0x10a
	.4byte	0x1f1
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x2
	.2byte	0x10c
	.4byte	0x206
	.byte	0xc
	.byte	0
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x2
	.byte	0x52
	.4byte	0x127
	.uleb128 0x7
	.4byte	.LASF20
	.byte	0xc
	.byte	0x2
	.2byte	0x10f
	.4byte	0x15c
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x2
	.2byte	0x111
	.4byte	0x220
	.byte	0
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x2
	.2byte	0x113
	.4byte	0x231
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x2
	.2byte	0x115
	.4byte	0x250
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF24
	.uleb128 0x9
	.byte	0x4
	.uleb128 0xa
	.byte	0x4
	.4byte	0x16b
	.uleb128 0xb
	.4byte	0x11c
	.uleb128 0xa
	.byte	0x4
	.4byte	0x176
	.uleb128 0xb
	.4byte	0xcf
	.uleb128 0xa
	.byte	0x4
	.4byte	0x6f
	.uleb128 0xa
	.byte	0x4
	.4byte	0x9f
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF25
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF26
	.uleb128 0xa
	.byte	0x4
	.4byte	0x33
	.uleb128 0xc
	.4byte	0x2c
	.4byte	0x1af
	.uleb128 0xd
	.4byte	0x17b
	.uleb128 0xd
	.4byte	0x17b
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x19b
	.uleb128 0xe
	.4byte	0x1c0
	.uleb128 0xd
	.4byte	0x17b
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x1b5
	.uleb128 0xc
	.4byte	0x2c
	.4byte	0x1df
	.uleb128 0xd
	.4byte	0x17b
	.uleb128 0xd
	.4byte	0x1df
	.uleb128 0xd
	.4byte	0x2c
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x1ec
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF27
	.uleb128 0xb
	.4byte	0x1e5
	.uleb128 0xa
	.byte	0x4
	.4byte	0x1c6
	.uleb128 0xc
	.4byte	0x2c
	.4byte	0x206
	.uleb128 0xd
	.4byte	0x17b
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x1f7
	.uleb128 0xc
	.4byte	0x2c
	.4byte	0x220
	.uleb128 0xd
	.4byte	0x181
	.uleb128 0xd
	.4byte	0x181
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x20c
	.uleb128 0xe
	.4byte	0x231
	.uleb128 0xd
	.4byte	0x181
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x226
	.uleb128 0xc
	.4byte	0x2c
	.4byte	0x250
	.uleb128 0xd
	.4byte	0x181
	.uleb128 0xd
	.4byte	0x1df
	.uleb128 0xd
	.4byte	0x2c
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x237
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF28
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF29
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF30
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF31
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF32
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF33
	.uleb128 0xf
	.4byte	.LASF37
	.byte	0x1
	.byte	0x18
	.4byte	0x195
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x338
	.uleb128 0x10
	.string	"ic"
	.byte	0x1
	.byte	0x18
	.4byte	0x195
	.4byte	.LLST0
	.uleb128 0x11
	.4byte	.LASF34
	.byte	0x1
	.byte	0x1a
	.4byte	0x195
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x12
	.string	"ix"
	.byte	0x1
	.byte	0x1c
	.4byte	0x17b
	.4byte	.LLST1
	.uleb128 0x12
	.string	"ipk"
	.byte	0x1
	.byte	0x1d
	.4byte	0x181
	.4byte	.LLST2
	.uleb128 0x13
	.4byte	.LASF48
	.byte	0x1
	.byte	0x3f
	.uleb128 0x14
	.4byte	.LASF35
	.byte	0x1
	.byte	0x3d
	.4byte	.L4
	.uleb128 0x14
	.4byte	.LASF36
	.byte	0x1
	.byte	0x3b
	.4byte	.L5
	.uleb128 0x15
	.4byte	.LVL1
	.4byte	0x3a6
	.4byte	0x301
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.uleb128 0x17
	.4byte	.LVL7
	.4byte	0x3b1
	.uleb128 0x15
	.4byte	.LVL8
	.4byte	0x3bc
	.4byte	0x31e
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL9
	.4byte	0x3c7
	.uleb128 0x18
	.4byte	.LVL10
	.4byte	0x3d2
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF38
	.byte	0x1
	.byte	0x46
	.4byte	0x195
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x361
	.uleb128 0x18
	.4byte	.LVL16
	.4byte	0x280
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LASF49
	.byte	0x1
	.byte	0x4e
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3a6
	.uleb128 0x1a
	.4byte	.LASF34
	.byte	0x1
	.byte	0x4e
	.4byte	0x195
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x17
	.4byte	.LVL18
	.4byte	0x3dd
	.uleb128 0x17
	.4byte	.LVL19
	.4byte	0x3c7
	.uleb128 0x18
	.4byte	.LVL20
	.4byte	0x3d2
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF39
	.4byte	.LASF39
	.byte	0x3
	.byte	0x1b
	.uleb128 0x1b
	.4byte	.LASF40
	.4byte	.LASF40
	.byte	0x4
	.byte	0x1f
	.uleb128 0x1b
	.4byte	.LASF41
	.4byte	.LASF41
	.byte	0x5
	.byte	0x22
	.uleb128 0x1b
	.4byte	.LASF42
	.4byte	.LASF42
	.byte	0x4
	.byte	0x41
	.uleb128 0x1b
	.4byte	.LASF43
	.4byte	.LASF43
	.byte	0x6
	.byte	0x2d
	.uleb128 0x1b
	.4byte	.LASF44
	.4byte	.LASF44
	.byte	0x5
	.byte	0x40
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.4byte	.LVL12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL13
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL6
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL3
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL6
	.4byte	.LVL7-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x2c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF48:
	.string	"no_mem"
.LASF42:
	.string	"EVP_PKEY_free"
.LASF34:
	.string	"cert"
.LASF12:
	.string	"pkey_pm"
.LASF18:
	.string	"x509_show_info"
.LASF15:
	.string	"x509_new"
.LASF13:
	.string	"X509_METHOD"
.LASF8:
	.string	"x509_pm"
.LASF9:
	.string	"method"
.LASF5:
	.string	"X509"
.LASF27:
	.string	"unsigned char"
.LASF26:
	.string	"long unsigned int"
.LASF30:
	.string	"short unsigned int"
.LASF3:
	.string	"pkey"
.LASF49:
	.string	"ssl_cert_free"
.LASF35:
	.string	"pkey_err"
.LASF7:
	.string	"x509_st"
.LASF4:
	.string	"CERT"
.LASF22:
	.string	"pkey_free"
.LASF0:
	.string	"unsigned int"
.LASF46:
	.string	"C:/esp/esp-idf/components/openssl/library/ssl_cert.c"
.LASF38:
	.string	"ssl_cert_new"
.LASF32:
	.string	"long long unsigned int"
.LASF44:
	.string	"X509_free"
.LASF17:
	.string	"x509_load"
.LASF40:
	.string	"__EVP_PKEY_new"
.LASF23:
	.string	"pkey_load"
.LASF10:
	.string	"EVP_PKEY"
.LASF14:
	.string	"x509_method_st"
.LASF47:
	.string	"C:\\\\esp\\\\ArkPOS2-esp\\\\build\\\\openssl"
.LASF45:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF19:
	.string	"PKEY_METHOD"
.LASF43:
	.string	"free"
.LASF31:
	.string	"long long int"
.LASF11:
	.string	"evp_pkey_st"
.LASF24:
	.string	"char"
.LASF1:
	.string	"sec_level"
.LASF33:
	.string	"sizetype"
.LASF6:
	.string	"cert_st"
.LASF21:
	.string	"pkey_new"
.LASF29:
	.string	"short int"
.LASF41:
	.string	"__X509_new"
.LASF39:
	.string	"ssl_mem_zalloc"
.LASF25:
	.string	"long int"
.LASF20:
	.string	"pkey_method_st"
.LASF28:
	.string	"signed char"
.LASF37:
	.string	"__ssl_cert_new"
.LASF16:
	.string	"x509_free"
.LASF2:
	.string	"x509"
.LASF36:
	.string	"x509_err"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-61-gab8375a) 5.2.0"
