	.file	"crypto_internal-rsa.c"
	.text
.Ltext0:
	.section	.text.crypto_public_key_import,"ax",@progbits
	.align	4
	.global	crypto_public_key_import
	.type	crypto_public_key_import, @function
crypto_public_key_import:
.LFB10:
	.file 1 "C:/esp/esp-idf/components/wpa_supplicant/src/crypto/crypto_internal-rsa.c"
	.loc 1 26 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 27 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	crypto_rsa_import_public_key
.LVL1:
	.loc 1 29 0
	mov.n	a2, a10
.LVL2:
	retw.n
.LFE10:
	.size	crypto_public_key_import, .-crypto_public_key_import
	.section	.text.crypto_private_key_import,"ax",@progbits
	.align	4
	.global	crypto_private_key_import
	.type	crypto_private_key_import, @function
crypto_private_key_import:
.LFB11:
	.loc 1 35 0
.LVL3:
	entry	sp, 32
.LCFI1:
	.loc 1 39 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	pkcs8_key_import
.LVL4:
	.loc 1 40 0
	bnez.n	a10, .L5
	.loc 1 43 0
	beqz.n	a4, .L4
	.loc 1 45 0
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
.LVL5:
	call8	pkcs8_enc_key_import
.LVL6:
	.loc 1 46 0
	bnez.n	a10, .L6
.L4:
	.loc 1 53 0
	mov.n	a11, a3
	mov.n	a10, a2
.LVL7:
	call8	crypto_rsa_import_private_key
.LVL8:
	mov.n	a2, a10
.LVL9:
	retw.n
.LVL10:
.L5:
	.loc 1 41 0
	mov.n	a2, a10
.LVL11:
	retw.n
.LVL12:
.L6:
	.loc 1 47 0
	mov.n	a2, a10
.LVL13:
	.loc 1 55 0
	retw.n
.LFE11:
	.size	crypto_private_key_import, .-crypto_private_key_import
	.section	.text.crypto_public_key_from_cert,"ax",@progbits
	.align	4
	.global	crypto_public_key_from_cert
	.type	crypto_public_key_from_cert, @function
crypto_public_key_from_cert:
.LFB12:
	.loc 1 60 0
.LVL14:
	entry	sp, 32
.LCFI2:
	.loc 1 63 0
	movi.n	a2, 0
.LVL15:
	retw.n
.LFE12:
	.size	crypto_public_key_from_cert, .-crypto_public_key_from_cert
	.section	.text.crypto_public_key_encrypt_pkcs1_v15,"ax",@progbits
	.align	4
	.global	crypto_public_key_encrypt_pkcs1_v15
	.type	crypto_public_key_encrypt_pkcs1_v15, @function
crypto_public_key_encrypt_pkcs1_v15:
.LFB13:
	.loc 1 69 0
.LVL16:
	entry	sp, 48
.LCFI3:
	.loc 1 70 0
	s32i.n	a6, sp, 0
	mov.n	a15, a5
	mov.n	a14, a4
	mov.n	a13, a3
	movi.n	a12, 0
	mov.n	a11, a2
	movi.n	a10, 2
	call8	pkcs1_encrypt
.LVL17:
	.loc 1 72 0
	mov.n	a2, a10
.LVL18:
	retw.n
.LFE13:
	.size	crypto_public_key_encrypt_pkcs1_v15, .-crypto_public_key_encrypt_pkcs1_v15
	.section	.text.crypto_private_key_decrypt_pkcs1_v15,"ax",@progbits
	.align	4
	.global	crypto_private_key_decrypt_pkcs1_v15
	.type	crypto_private_key_decrypt_pkcs1_v15, @function
crypto_private_key_decrypt_pkcs1_v15:
.LFB14:
	.loc 1 78 0
.LVL19:
	entry	sp, 32
.LCFI4:
	.loc 1 79 0
	mov.n	a14, a6
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	pkcs1_v15_private_key_decrypt
.LVL20:
	.loc 1 81 0
	mov.n	a2, a10
.LVL21:
	retw.n
.LFE14:
	.size	crypto_private_key_decrypt_pkcs1_v15, .-crypto_private_key_decrypt_pkcs1_v15
	.section	.text.crypto_private_key_sign_pkcs1,"ax",@progbits
	.align	4
	.global	crypto_private_key_sign_pkcs1
	.type	crypto_private_key_sign_pkcs1, @function
crypto_private_key_sign_pkcs1:
.LFB15:
	.loc 1 87 0
.LVL22:
	entry	sp, 48
.LCFI5:
	.loc 1 88 0
	s32i.n	a6, sp, 0
	mov.n	a15, a5
	mov.n	a14, a4
	mov.n	a13, a3
	movi.n	a12, 1
	mov.n	a11, a2
	mov.n	a10, a12
	call8	pkcs1_encrypt
.LVL23:
	.loc 1 90 0
	mov.n	a2, a10
.LVL24:
	retw.n
.LFE15:
	.size	crypto_private_key_sign_pkcs1, .-crypto_private_key_sign_pkcs1
	.section	.text.crypto_public_key_free,"ax",@progbits
	.align	4
	.global	crypto_public_key_free
	.type	crypto_public_key_free, @function
crypto_public_key_free:
.LFB16:
	.loc 1 94 0
.LVL25:
	entry	sp, 32
.LCFI6:
	.loc 1 95 0
	mov.n	a10, a2
	call8	crypto_rsa_free
.LVL26:
	retw.n
.LFE16:
	.size	crypto_public_key_free, .-crypto_public_key_free
	.section	.text.crypto_private_key_free,"ax",@progbits
	.align	4
	.global	crypto_private_key_free
	.type	crypto_private_key_free, @function
crypto_private_key_free:
.LFB17:
	.loc 1 100 0
.LVL27:
	entry	sp, 32
.LCFI7:
	.loc 1 101 0
	mov.n	a10, a2
	call8	crypto_rsa_free
.LVL28:
	retw.n
.LFE17:
	.size	crypto_private_key_free, .-crypto_private_key_free
	.section	.text.crypto_public_key_decrypt_pkcs1,"ax",@progbits
	.align	4
	.global	crypto_public_key_decrypt_pkcs1
	.type	crypto_public_key_decrypt_pkcs1, @function
crypto_public_key_decrypt_pkcs1:
.LFB18:
	.loc 1 108 0
.LVL29:
	entry	sp, 32
.LCFI8:
	.loc 1 109 0
	mov.n	a14, a6
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	pkcs1_decrypt_public_key
.LVL30:
	.loc 1 111 0
	mov.n	a2, a10
.LVL31:
	retw.n
.LFE18:
	.size	crypto_public_key_decrypt_pkcs1, .-crypto_public_key_decrypt_pkcs1
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
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI0-.LFB10
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI1-.LFB11
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI2-.LFB12
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI3-.LFB13
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI4-.LFB14
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI5-.LFB15
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI6-.LFB16
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
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI8-.LFB18
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
	.text
.Letext0:
	.file 2 "C:/esp/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 4 "C:/esp/esp-idf/components/newlib/include/stdint.h"
	.file 5 "C:/esp/esp-idf/components/wpa_supplicant/include/wpa2/tls/rsa.h"
	.file 6 "C:/esp/esp-idf/components/wpa_supplicant/include/wpa2/tls/pkcs8.h"
	.file 7 "C:/esp/esp-idf/components/wpa_supplicant/include/wpa2/tls/pkcs1.h"
	.file 8 "C:/esp/esp-idf/components/wpa_supplicant/include/crypto/common.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x4e9
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF41
	.byte	0xc
	.4byte	.LASF42
	.4byte	.LASF43
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF7
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
	.uleb128 0x4
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
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x3
	.byte	0xd8
	.4byte	0x53
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x4
	.byte	0x15
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.uleb128 0x5
	.byte	0x4
	.4byte	0xa0
	.uleb128 0x6
	.4byte	0x93
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF14
	.uleb128 0x7
	.string	"u8"
	.byte	0x8
	.byte	0xa8
	.4byte	0x73
	.uleb128 0x8
	.4byte	.LASF15
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x1
	.byte	0x19
	.4byte	0x107
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x107
	.uleb128 0xa
	.string	"key"
	.byte	0x1
	.byte	0x19
	.4byte	0x10d
	.4byte	.LLST0
	.uleb128 0xb
	.string	"len"
	.byte	0x1
	.byte	0x19
	.4byte	0x68
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xc
	.4byte	.LVL1
	.4byte	0x494
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xb6
	.uleb128 0x5
	.byte	0x4
	.4byte	0x113
	.uleb128 0x6
	.4byte	0xac
	.uleb128 0x8
	.4byte	.LASF16
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x1
	.byte	0x20
	.4byte	0x1bf
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1bf
	.uleb128 0xa
	.string	"key"
	.byte	0x1
	.byte	0x20
	.4byte	0x10d
	.4byte	.LLST1
	.uleb128 0xb
	.string	"len"
	.byte	0x1
	.byte	0x21
	.4byte	0x68
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xe
	.4byte	.LASF19
	.byte	0x1
	.byte	0x22
	.4byte	0x9a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xf
	.string	"res"
	.byte	0x1
	.byte	0x24
	.4byte	0x1bf
	.4byte	.LLST2
	.uleb128 0x10
	.4byte	.LVL4
	.4byte	0x49f
	.4byte	0x188
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x10
	.4byte	.LVL6
	.4byte	0x4aa
	.4byte	0x1a8
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0xc
	.4byte	.LVL8
	.4byte	0x4b5
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x118
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x1
	.byte	0x3a
	.4byte	0x107
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1fb
	.uleb128 0xa
	.string	"buf"
	.byte	0x1
	.byte	0x3a
	.4byte	0x10d
	.4byte	.LLST3
	.uleb128 0xb
	.string	"len"
	.byte	0x1
	.byte	0x3b
	.4byte	0x68
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x1
	.byte	0x42
	.4byte	0x4c
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x28a
	.uleb128 0xa
	.string	"key"
	.byte	0x1
	.byte	0x42
	.4byte	0x107
	.4byte	.LLST4
	.uleb128 0xb
	.string	"in"
	.byte	0x1
	.byte	0x43
	.4byte	0x10d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xe
	.4byte	.LASF22
	.byte	0x1
	.byte	0x43
	.4byte	0x68
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xb
	.string	"out"
	.byte	0x1
	.byte	0x44
	.4byte	0x28a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xe
	.4byte	.LASF23
	.byte	0x1
	.byte	0x44
	.4byte	0x290
	.uleb128 0x1
	.byte	0x56
	.uleb128 0xc
	.4byte	.LVL17
	.4byte	0x4c0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xac
	.uleb128 0x5
	.byte	0x4
	.4byte	0x68
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x1
	.byte	0x4b
	.4byte	0x4c
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x31a
	.uleb128 0xa
	.string	"key"
	.byte	0x1
	.byte	0x4b
	.4byte	0x1bf
	.4byte	.LLST5
	.uleb128 0xb
	.string	"in"
	.byte	0x1
	.byte	0x4c
	.4byte	0x10d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xe
	.4byte	.LASF22
	.byte	0x1
	.byte	0x4c
	.4byte	0x68
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xb
	.string	"out"
	.byte	0x1
	.byte	0x4d
	.4byte	0x28a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xe
	.4byte	.LASF23
	.byte	0x1
	.byte	0x4d
	.4byte	0x290
	.uleb128 0x1
	.byte	0x56
	.uleb128 0xc
	.4byte	.LVL20
	.4byte	0x4cb
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x1
	.byte	0x54
	.4byte	0x4c
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3a9
	.uleb128 0xa
	.string	"key"
	.byte	0x1
	.byte	0x54
	.4byte	0x1bf
	.4byte	.LLST6
	.uleb128 0xb
	.string	"in"
	.byte	0x1
	.byte	0x55
	.4byte	0x10d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xe
	.4byte	.LASF22
	.byte	0x1
	.byte	0x55
	.4byte	0x68
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xb
	.string	"out"
	.byte	0x1
	.byte	0x56
	.4byte	0x28a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xe
	.4byte	.LASF23
	.byte	0x1
	.byte	0x56
	.4byte	0x290
	.uleb128 0x1
	.byte	0x56
	.uleb128 0xc
	.4byte	.LVL23
	.4byte	0x4c0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	.LASF26
	.byte	0x1
	.byte	0x5d
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3dc
	.uleb128 0xb
	.string	"key"
	.byte	0x1
	.byte	0x5d
	.4byte	0x107
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xc
	.4byte	.LVL26
	.4byte	0x4d6
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	.LASF27
	.byte	0x1
	.byte	0x63
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x40f
	.uleb128 0xb
	.string	"key"
	.byte	0x1
	.byte	0x63
	.4byte	0x1bf
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xc
	.4byte	.LVL28
	.4byte	0x4d6
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0x1
	.byte	0x69
	.4byte	0x4c
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x494
	.uleb128 0xa
	.string	"key"
	.byte	0x1
	.byte	0x69
	.4byte	0x107
	.4byte	.LLST7
	.uleb128 0xe
	.4byte	.LASF29
	.byte	0x1
	.byte	0x6a
	.4byte	0x10d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xe
	.4byte	.LASF30
	.byte	0x1
	.byte	0x6a
	.4byte	0x68
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xe
	.4byte	.LASF31
	.byte	0x1
	.byte	0x6b
	.4byte	0x28a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xe
	.4byte	.LASF32
	.byte	0x1
	.byte	0x6b
	.4byte	0x290
	.uleb128 0x1
	.byte	0x56
	.uleb128 0xc
	.4byte	.LVL30
	.4byte	0x4e1
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF33
	.4byte	.LASF33
	.byte	0x5
	.byte	0xf
	.uleb128 0x12
	.4byte	.LASF34
	.4byte	.LASF34
	.byte	0x6
	.byte	0xc
	.uleb128 0x12
	.4byte	.LASF35
	.4byte	.LASF35
	.byte	0x6
	.byte	0xe
	.uleb128 0x12
	.4byte	.LASF36
	.4byte	.LASF36
	.byte	0x5
	.byte	0x11
	.uleb128 0x12
	.4byte	.LASF37
	.4byte	.LASF37
	.byte	0x7
	.byte	0xc
	.uleb128 0x12
	.4byte	.LASF38
	.4byte	.LASF38
	.byte	0x7
	.byte	0xf
	.uleb128 0x12
	.4byte	.LASF39
	.4byte	.LASF39
	.byte	0x5
	.byte	0x15
	.uleb128 0x12
	.4byte	.LASF40
	.4byte	.LASF40
	.byte	0x7
	.byte	0x12
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x16
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
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL2
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL3
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL10
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
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL13
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL10
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL15
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL16
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL18
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL21
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL22
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL24
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL29
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL31
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x5c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF31:
	.string	"plain"
.LASF33:
	.string	"crypto_rsa_import_public_key"
.LASF7:
	.string	"__uint8_t"
.LASF8:
	.string	"size_t"
.LASF19:
	.string	"passwd"
.LASF28:
	.string	"crypto_public_key_decrypt_pkcs1"
.LASF39:
	.string	"crypto_rsa_free"
.LASF32:
	.string	"plain_len"
.LASF34:
	.string	"pkcs8_key_import"
.LASF4:
	.string	"unsigned int"
.LASF30:
	.string	"crypt_len"
.LASF29:
	.string	"crypt"
.LASF20:
	.string	"crypto_public_key_from_cert"
.LASF41:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF38:
	.string	"pkcs1_v15_private_key_decrypt"
.LASF21:
	.string	"crypto_public_key_encrypt_pkcs1_v15"
.LASF6:
	.string	"long long unsigned int"
.LASF1:
	.string	"unsigned char"
.LASF24:
	.string	"crypto_private_key_decrypt_pkcs1_v15"
.LASF12:
	.string	"long unsigned int"
.LASF3:
	.string	"short unsigned int"
.LASF16:
	.string	"crypto_private_key"
.LASF22:
	.string	"inlen"
.LASF42:
	.string	"C:/esp/esp-idf/components/wpa_supplicant/src/crypto/crypto_internal-rsa.c"
.LASF37:
	.string	"pkcs1_encrypt"
.LASF27:
	.string	"crypto_private_key_free"
.LASF13:
	.string	"char"
.LASF9:
	.string	"uint8_t"
.LASF26:
	.string	"crypto_public_key_free"
.LASF35:
	.string	"pkcs8_enc_key_import"
.LASF43:
	.string	"C:\\\\esp\\\\ArkPOS2-esp\\\\build\\\\wpa_supplicant"
.LASF11:
	.string	"sizetype"
.LASF5:
	.string	"long long int"
.LASF18:
	.string	"crypto_private_key_import"
.LASF2:
	.string	"short int"
.LASF36:
	.string	"crypto_rsa_import_private_key"
.LASF17:
	.string	"crypto_public_key_import"
.LASF25:
	.string	"crypto_private_key_sign_pkcs1"
.LASF10:
	.string	"long int"
.LASF0:
	.string	"signed char"
.LASF40:
	.string	"pkcs1_decrypt_public_key"
.LASF15:
	.string	"crypto_public_key"
.LASF23:
	.string	"outlen"
.LASF14:
	.string	"_Bool"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-61-gab8375a) 5.2.0"
