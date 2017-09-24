	.file	"fast_aes-wrap.c"
	.text
.Ltext0:
	.section	.text.fast_aes_wrap,"ax",@progbits
	.align	4
	.global	fast_aes_wrap
	.type	fast_aes_wrap, @function
fast_aes_wrap:
.LFB10:
	.file 1 "C:/esp/esp-idf/components/wpa_supplicant/src/fast_crypto/fast_aes-wrap.c"
	.loc 1 32 0
.LVL0:
	entry	sp, 112
.LCFI0:
.LVL1:
	.loc 1 39 0
	addi.n	a6, a5, 8
	s32i	a6, sp, 64
.LVL2:
	.loc 1 42 0
	movi.n	a12, 8
	movi	a11, 0xa6
	mov.n	a10, a5
	call8	memset
.LVL3:
	.loc 1 43 0
	slli	a12, a3, 3
	mov.n	a11, a4
	l32i	a10, sp, 64
	call8	memcpy
.LVL4:
	.loc 1 45 0
	addi	a10, sp, 16
	call8	esp_aes_init
.LVL5:
	.loc 1 46 0
	movi	a12, 0x80
	mov.n	a11, a2
	addi	a10, sp, 16
	call8	esp_aes_setkey
.LVL6:
	mov.n	a2, a10
.LVL7:
	.loc 1 47 0
	bgez	a10, .L6
	.loc 1 48 0
	addi	a10, sp, 16
	call8	esp_aes_free
.LVL8:
	.loc 1 49 0
	retw.n
.LVL9:
.L4:
	.loc 1 62 0 discriminator 3
	movi.n	a2, 8
	mov.n	a12, a2
	mov.n	a11, a5
	mov.n	a10, sp
	call8	memcpy
.LVL10:
	.loc 1 63 0 discriminator 3
	mov.n	a12, a2
	mov.n	a11, a6
	add.n	a10, sp, a2
	call8	memcpy
.LVL11:
	.loc 1 64 0 discriminator 3
	mov.n	a12, sp
	mov.n	a11, sp
	addi	a10, sp, 16
	call8	esp_aes_encrypt
.LVL12:
	.loc 1 65 0 discriminator 3
	mov.n	a12, a2
	mov.n	a11, sp
	mov.n	a10, a5
	call8	memcpy
.LVL13:
	.loc 1 66 0 discriminator 3
	mul16u	a8, a3, a7
	add.n	a9, a8, a4
	l8ui	a8, a5, 7
	xor	a8, a9, a8
	s8i	a8, a5, 7
	.loc 1 67 0 discriminator 3
	mov.n	a12, a2
	add.n	a11, sp, a2
	mov.n	a10, a6
	call8	memcpy
.LVL14:
	.loc 1 68 0 discriminator 3
	add.n	a6, a6, a2
.LVL15:
	.loc 1 61 0 discriminator 3
	addi.n	a4, a4, 1
.LVL16:
	j	.L5
.LVL17:
.L7:
	l32i	a6, sp, 64
.LVL18:
	movi.n	a4, 1
.L5:
.LVL19:
	.loc 1 61 0 is_stmt 0 discriminator 1
	bge	a3, a4, .L4
	.loc 1 59 0 is_stmt 1 discriminator 2
	addi.n	a7, a7, 1
.LVL20:
	j	.L2
.LVL21:
.L6:
	movi.n	a7, 0
.LVL22:
.L2:
	.loc 1 59 0 is_stmt 0 discriminator 1
	blti	a7, 6, .L7
	.loc 1 71 0 is_stmt 1
	addi	a10, sp, 16
	call8	esp_aes_free
.LVL23:
	.loc 1 79 0
	movi.n	a2, 0
	.loc 1 80 0
	retw.n
.LFE10:
	.size	fast_aes_wrap, .-fast_aes_wrap
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
	.uleb128 0x70
	.align	4
.LEFDE0:
	.text
.Letext0:
	.file 2 "C:/esp/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "C:/esp/esp-idf/components/newlib/include/stdint.h"
	.file 4 "C:/esp/esp-idf/components/esp32/include/hwcrypto/aes.h"
	.file 5 "C:/esp/esp-idf/components/mbedtls/port/include/aes_alt.h"
	.file 6 "C:/esp/esp-idf/components/newlib/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x34d
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF26
	.byte	0xc
	.4byte	.LASF27
	.4byte	.LASF28
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
	.byte	0x3
	.byte	0x15
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x3
	.byte	0x2c
	.4byte	0x4c
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
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF15
	.uleb128 0x5
	.4byte	0x73
	.4byte	0xbc
	.uleb128 0x6
	.4byte	0x90
	.byte	0xf
	.byte	0
	.uleb128 0x7
	.byte	0x21
	.byte	0x4
	.byte	0x31
	.4byte	0xdd
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x4
	.byte	0x32
	.4byte	0x73
	.byte	0
	.uleb128 0x9
	.string	"key"
	.byte	0x4
	.byte	0x33
	.4byte	0xdd
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.4byte	0x73
	.4byte	0xed
	.uleb128 0x6
	.4byte	0x90
	.byte	0x1f
	.byte	0
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x4
	.byte	0x34
	.4byte	0xbc
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x5
	.byte	0x21
	.4byte	0xed
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0x1
	.byte	0x1f
	.4byte	0x57
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2ff
	.uleb128 0xb
	.string	"kek"
	.byte	0x1
	.byte	0x1f
	.4byte	0x2ff
	.4byte	.LLST0
	.uleb128 0xc
	.string	"n"
	.byte	0x1
	.byte	0x1f
	.4byte	0x57
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xd
	.4byte	.LASF19
	.byte	0x1
	.byte	0x1f
	.4byte	0x2ff
	.4byte	.LLST1
	.uleb128 0xe
	.4byte	.LASF20
	.byte	0x1
	.byte	0x1f
	.4byte	0x30a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xf
	.string	"a"
	.byte	0x1
	.byte	0x21
	.4byte	0x30a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x10
	.string	"r"
	.byte	0x1
	.byte	0x21
	.4byte	0x30a
	.4byte	.LLST2
	.uleb128 0xf
	.string	"b"
	.byte	0x1
	.byte	0x21
	.4byte	0xac
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x10
	.string	"i"
	.byte	0x1
	.byte	0x22
	.4byte	0x7e
	.4byte	.LLST3
	.uleb128 0x10
	.string	"j"
	.byte	0x1
	.byte	0x22
	.4byte	0x7e
	.4byte	.LLST4
	.uleb128 0x10
	.string	"ret"
	.byte	0x1
	.byte	0x23
	.4byte	0x7e
	.4byte	.LLST5
	.uleb128 0xf
	.string	"ctx"
	.byte	0x1
	.byte	0x24
	.4byte	0xf8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x11
	.4byte	.LVL3
	.4byte	0x310
	.4byte	0x1ce
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xa6
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x11
	.4byte	.LVL4
	.4byte	0x31b
	.4byte	0x1f1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x4
	.byte	0x73
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0
	.uleb128 0x11
	.4byte	.LVL5
	.4byte	0x324
	.4byte	0x206
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x11
	.4byte	.LVL6
	.4byte	0x32f
	.4byte	0x227
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x80
	.byte	0
	.uleb128 0x11
	.4byte	.LVL8
	.4byte	0x33a
	.4byte	0x23c
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x11
	.4byte	.LVL10
	.4byte	0x31b
	.4byte	0x25d
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL11
	.4byte	0x31b
	.4byte	0x283
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x8
	.byte	0x91
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x8
	.byte	0x70
	.byte	0x1c
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL12
	.4byte	0x345
	.4byte	0x2a6
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.uleb128 0x11
	.4byte	.LVL13
	.4byte	0x31b
	.4byte	0x2c7
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL14
	.4byte	0x31b
	.4byte	0x2ed
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x8
	.byte	0x91
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x8
	.byte	0x70
	.byte	0x1c
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL23
	.4byte	0x33a
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.byte	0
	.uleb128 0x14
	.byte	0x4
	.4byte	0x305
	.uleb128 0x15
	.4byte	0x73
	.uleb128 0x14
	.byte	0x4
	.4byte	0x73
	.uleb128 0x16
	.4byte	.LASF21
	.4byte	.LASF21
	.byte	0x6
	.byte	0x19
	.uleb128 0x17
	.4byte	.LASF30
	.4byte	.LASF30
	.uleb128 0x16
	.4byte	.LASF22
	.4byte	.LASF22
	.byte	0x4
	.byte	0x50
	.uleb128 0x16
	.4byte	.LASF23
	.4byte	.LASF23
	.byte	0x4
	.byte	0x62
	.uleb128 0x16
	.4byte	.LASF24
	.4byte	.LASF24
	.byte	0x4
	.byte	0x57
	.uleb128 0x16
	.4byte	.LASF25
	.4byte	.LASF25
	.byte	0x4
	.byte	0xf6
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0x18
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
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.4byte	.LVL0
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL7
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL9
	.4byte	.LVL21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL22
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL2
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL19
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL9
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL9
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL22
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL1
	.4byte	.LVL7
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x52
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
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF4:
	.string	"__uint8_t"
.LASF20:
	.string	"cipher"
.LASF27:
	.string	"C:/esp/esp-idf/components/wpa_supplicant/src/fast_crypto/fast_aes-wrap.c"
.LASF5:
	.string	"__int32_t"
.LASF16:
	.string	"key_bytes"
.LASF3:
	.string	"short unsigned int"
.LASF28:
	.string	"C:\\\\esp\\\\ArkPOS2-esp\\\\build\\\\wpa_supplicant"
.LASF26:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF25:
	.string	"esp_aes_encrypt"
.LASF8:
	.string	"long long unsigned int"
.LASF1:
	.string	"unsigned char"
.LASF18:
	.string	"mbedtls_aes_context"
.LASF21:
	.string	"memset"
.LASF13:
	.string	"long unsigned int"
.LASF22:
	.string	"esp_aes_init"
.LASF6:
	.string	"unsigned int"
.LASF14:
	.string	"char"
.LASF9:
	.string	"uint8_t"
.LASF10:
	.string	"int32_t"
.LASF12:
	.string	"sizetype"
.LASF7:
	.string	"long long int"
.LASF30:
	.string	"memcpy"
.LASF23:
	.string	"esp_aes_setkey"
.LASF17:
	.string	"esp_aes_context"
.LASF2:
	.string	"short int"
.LASF11:
	.string	"long int"
.LASF24:
	.string	"esp_aes_free"
.LASF0:
	.string	"signed char"
.LASF29:
	.string	"fast_aes_wrap"
.LASF15:
	.string	"_Bool"
.LASF19:
	.string	"plain"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-61-gab8375a) 5.2.0"
