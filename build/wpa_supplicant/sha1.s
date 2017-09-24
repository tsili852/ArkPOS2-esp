	.file	"sha1.c"
	.text
.Ltext0:
	.section	.text.hmac_sha1_vector,"ax",@progbits
	.align	4
	.global	hmac_sha1_vector
	.type	hmac_sha1_vector, @function
hmac_sha1_vector:
.LFB10:
	.file 1 "C:/esp/esp-idf/components/wpa_supplicant/src/crypto/sha1.c"
	.loc 1 35 0
.LVL0:
	entry	sp, 192
.LCFI0:
	s32i	a2, sp, 144
	s32i	a3, sp, 148
	.loc 1 41 0
	bgeui	a4, 6, .L10
	.loc 1 50 0
	movi.n	a8, 0x40
	bgeu	a8, a3, .L3
	.loc 1 51 0
	add.n	a13, sp, a8
	movi	a12, 0x94
	add.n	a12, sp, a12
	movi	a11, 0x90
	add.n	a11, sp, a11
	movi.n	a10, 1
	call8	sha1_vector
.LVL1:
	bnez.n	a10, .L11
	.loc 1 53 0
	addi	a2, sp, 64
.LVL2:
	s32i	a2, sp, 144
	.loc 1 54 0
	movi.n	a2, 0x14
	s32i	a2, sp, 148
.L3:
	.loc 1 67 0
	movi.n	a12, 0x40
	movi.n	a11, 0
	mov.n	a10, sp
	call8	memset
.LVL3:
	.loc 1 68 0
	l32i	a12, sp, 148
	l32i	a11, sp, 144
	mov.n	a10, sp
	call8	memcpy
.LVL4:
	.loc 1 70 0
	movi.n	a8, 0
	j	.L4
.LVL5:
.L5:
	.loc 1 71 0 discriminator 3
	add.n	a10, sp, a8
	l8ui	a11, a10, 0
	movi.n	a9, 0x36
	xor	a9, a11, a9
	s8i	a9, a10, 0
	.loc 1 70 0 discriminator 3
	addi.n	a8, a8, 1
.LVL6:
.L4:
	.loc 1 70 0 is_stmt 0 discriminator 1
	movi.n	a9, 0x3f
	bgeu	a9, a8, .L5
	.loc 1 74 0 is_stmt 1
	s32i	sp, sp, 84
	.loc 1 75 0
	movi.n	a2, 0x40
	s32i	a2, sp, 108
.LVL7:
	.loc 1 76 0
	movi.n	a8, 0
	j	.L6
.LVL8:
.L7:
	.loc 1 77 0 discriminator 3
	addi.n	a9, a8, 1
	slli	a8, a8, 2
.LVL9:
	add.n	a10, a5, a8
	l32i.n	a11, a10, 0
	addx4	a10, a9, sp
	s32i	a11, a10, 84
	.loc 1 78 0 discriminator 3
	add.n	a8, a6, a8
	l32i.n	a8, a8, 0
	s32i	a8, a10, 108
.LVL10:
	.loc 1 76 0 discriminator 3
	mov.n	a8, a9
.LVL11:
.L6:
	.loc 1 76 0 is_stmt 0 discriminator 1
	bltu	a8, a4, .L7
	.loc 1 80 0 is_stmt 1
	mov.n	a13, a7
	addi	a12, sp, 108
	addi	a11, sp, 84
	addi.n	a10, a4, 1
	call8	sha1_vector
.LVL12:
	bnez.n	a10, .L12
	.loc 1 83 0
	movi.n	a12, 0x40
	movi.n	a11, 0
	mov.n	a10, sp
	call8	memset
.LVL13:
	.loc 1 84 0
	l32i	a12, sp, 148
	l32i	a11, sp, 144
	mov.n	a10, sp
	call8	memcpy
.LVL14:
	.loc 1 86 0
	movi.n	a4, 0
.LVL15:
	j	.L8
.LVL16:
.L9:
	.loc 1 87 0 discriminator 3
	add.n	a6, sp, a4
	l8ui	a8, a6, 0
	movi.n	a5, 0x5c
	xor	a5, a8, a5
	s8i	a5, a6, 0
	.loc 1 86 0 discriminator 3
	addi.n	a4, a4, 1
.LVL17:
.L8:
	.loc 1 86 0 is_stmt 0 discriminator 1
	movi.n	a5, 0x3f
	bgeu	a5, a4, .L9
	.loc 1 90 0 is_stmt 1
	s32i	sp, sp, 84
	.loc 1 91 0
	movi.n	a2, 0x40
	s32i	a2, sp, 108
	.loc 1 92 0
	s32i	a7, sp, 88
	.loc 1 93 0
	movi.n	a2, 0x14
	s32i	a2, sp, 112
	.loc 1 94 0
	mov.n	a13, a7
	addi	a12, sp, 108
	addi	a11, sp, 84
	movi.n	a10, 2
	call8	sha1_vector
.LVL18:
	mov.n	a2, a10
	retw.n
.LVL19:
.L10:
	.loc 1 46 0
	movi.n	a2, -1
.LVL20:
	retw.n
.LVL21:
.L11:
	.loc 1 52 0
	movi.n	a2, -1
	retw.n
.L12:
	.loc 1 81 0
	movi.n	a2, -1
	.loc 1 95 0
	retw.n
.LFE10:
	.size	hmac_sha1_vector, .-hmac_sha1_vector
	.section	.text.hmac_sha1,"ax",@progbits
	.align	4
	.global	hmac_sha1
	.type	hmac_sha1, @function
hmac_sha1:
.LFB11:
	.loc 1 110 0
.LVL22:
	entry	sp, 48
.LCFI1:
	s32i.n	a4, sp, 0
	s32i.n	a5, sp, 4
	.loc 1 111 0
	mov.n	a15, a6
	addi.n	a14, sp, 4
	mov.n	a13, sp
	movi.n	a12, 1
	mov.n	a11, a3
	mov.n	a10, a2
	call8	hmac_sha1_vector
.LVL23:
	.loc 1 112 0
	mov.n	a2, a10
.LVL24:
	retw.n
.LFE11:
	.size	hmac_sha1, .-hmac_sha1
	.section	.text.sha1_prf,"ax",@progbits
	.align	4
	.global	sha1_prf
	.type	sha1_prf, @function
sha1_prf:
.LFB12:
	.loc 1 131 0
.LVL25:
	entry	sp, 96
.LCFI2:
	s32i.n	a7, sp, 48
	s32i.n	a6, sp, 52
	l32i.n	a7, sp, 48
	l32i	a6, sp, 96
.LVL26:
	.loc 1 132 0
	movi.n	a8, 0
	s8i	a8, sp, 0
	.loc 1 135 0
	mov.n	a10, a4
	call8	strlen
.LVL27:
	addi.n	a10, a10, 1
.LVL28:
	.loc 1 139 0
	s32i.n	a4, sp, 24
	.loc 1 140 0
	s32i.n	a10, sp, 36
	.loc 1 141 0
	s32i.n	a5, sp, 28
	.loc 1 142 0
	l32i.n	a4, sp, 52
.LVL29:
	s32i.n	a4, sp, 40
	.loc 1 143 0
	s32i.n	sp, sp, 32
	.loc 1 144 0
	movi.n	a4, 1
	s32i.n	a4, sp, 44
.LVL30:
	.loc 1 146 0
	movi.n	a4, 0
	.loc 1 147 0
	j	.L15
.LVL31:
.L18:
	.loc 1 148 0
	sub	a5, a6, a4
.LVL32:
	.loc 1 149 0
	movi.n	a8, 0x13
	bgeu	a8, a5, .L16
	.loc 1 150 0
	add.n	a15, a7, a4
	addi	a14, sp, 36
	addi	a13, sp, 24
	movi.n	a12, 3
	mov.n	a11, a3
	mov.n	a10, a2
	call8	hmac_sha1_vector
.LVL33:
	bnez.n	a10, .L19
	.loc 1 153 0
	addi	a4, a4, 20
.LVL34:
	.loc 1 161 0
	l8ui	a5, sp, 0
.LVL35:
	addi.n	a5, a5, 1
	s8i	a5, sp, 0
	j	.L15
.LVL36:
.L16:
	.loc 1 155 0
	addi.n	a15, sp, 1
	addi	a14, sp, 36
	addi	a13, sp, 24
	movi.n	a12, 3
	mov.n	a11, a3
	mov.n	a10, a2
	call8	hmac_sha1_vector
.LVL37:
	mov.n	a2, a10
.LVL38:
	bnez.n	a10, .L20
	.loc 1 158 0
	mov.n	a12, a5
	addi.n	a11, sp, 1
	l32i.n	a3, sp, 48
.LVL39:
	add.n	a10, a3, a4
	call8	memcpy
.LVL40:
	.loc 1 159 0
	retw.n
.LVL41:
.L15:
	.loc 1 147 0
	bltu	a4, a6, .L18
	.loc 1 164 0
	movi.n	a2, 0
.LVL42:
	retw.n
.LVL43:
.L19:
	.loc 1 152 0
	movi.n	a2, -1
.LVL44:
	retw.n
.L20:
	.loc 1 157 0
	movi.n	a2, -1
	.loc 1 165 0
	retw.n
.LFE12:
	.size	sha1_prf, .-sha1_prf
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
	.uleb128 0xc0
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
	.uleb128 0x30
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
	.uleb128 0x60
	.align	4
.LEFDE4:
	.text
.Letext0:
	.file 2 "C:/esp/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "C:/esp/esp-idf/components/newlib/include/stdint.h"
	.file 4 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 5 "C:/esp/esp-idf/components/wpa_supplicant/include/crypto/crypto.h"
	.file 6 "C:/esp/esp-idf/components/newlib/include/string.h"
	.file 7 "C:/esp/esp-idf/components/wpa_supplicant/include/crypto/common.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x51b
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF36
	.byte	0xc
	.4byte	.LASF37
	.4byte	.LASF38
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
	.byte	0x15
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x4
	.byte	0xd8
	.4byte	0x53
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
	.byte	0x7
	.byte	0xa8
	.4byte	0x68
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x1
	.byte	0x21
	.4byte	0x4c
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x24b
	.uleb128 0x9
	.string	"key"
	.byte	0x1
	.byte	0x21
	.4byte	0x24b
	.4byte	.LLST0
	.uleb128 0xa
	.4byte	.LASF15
	.byte	0x1
	.byte	0x21
	.4byte	0x73
	.4byte	.LLST1
	.uleb128 0xa
	.4byte	.LASF16
	.byte	0x1
	.byte	0x21
	.4byte	0x73
	.4byte	.LLST2
	.uleb128 0xa
	.4byte	.LASF17
	.byte	0x1
	.byte	0x22
	.4byte	0x256
	.4byte	.LLST3
	.uleb128 0x9
	.string	"len"
	.byte	0x1
	.byte	0x22
	.4byte	0x25c
	.4byte	.LLST4
	.uleb128 0xb
	.string	"mac"
	.byte	0x1
	.byte	0x22
	.4byte	0x267
	.uleb128 0x1
	.byte	0x57
	.uleb128 0xc
	.4byte	.LASF18
	.byte	0x1
	.byte	0x24
	.4byte	0x26d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0xd
	.string	"tk"
	.byte	0x1
	.byte	0x25
	.4byte	0x27d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0xc
	.4byte	.LASF19
	.byte	0x1
	.byte	0x26
	.4byte	0x28d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0xc
	.4byte	.LASF20
	.byte	0x1
	.byte	0x27
	.4byte	0x29d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0xe
	.string	"i"
	.byte	0x1
	.byte	0x27
	.4byte	0x73
	.4byte	.LLST5
	.uleb128 0xf
	.4byte	.LVL1
	.4byte	0x4f6
	.4byte	0x195
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.byte	0
	.uleb128 0xf
	.4byte	.LVL3
	.4byte	0x501
	.4byte	0x1b5
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.uleb128 0xf
	.4byte	.LVL4
	.4byte	0x50a
	.4byte	0x1ca
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.byte	0
	.uleb128 0xf
	.4byte	.LVL12
	.4byte	0x4f6
	.4byte	0x1f2
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 1
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL13
	.4byte	0x501
	.4byte	0x212
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL14
	.4byte	0x50a
	.4byte	0x227
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.byte	0
	.uleb128 0x11
	.4byte	.LVL18
	.4byte	0x4f6
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x251
	.uleb128 0x6
	.4byte	0xac
	.uleb128 0x5
	.byte	0x4
	.4byte	0x24b
	.uleb128 0x5
	.byte	0x4
	.4byte	0x262
	.uleb128 0x6
	.4byte	0x73
	.uleb128 0x5
	.byte	0x4
	.4byte	0xac
	.uleb128 0x12
	.4byte	0x37
	.4byte	0x27d
	.uleb128 0x13
	.4byte	0x85
	.byte	0x3f
	.byte	0
	.uleb128 0x12
	.4byte	0x37
	.4byte	0x28d
	.uleb128 0x13
	.4byte	0x85
	.byte	0x13
	.byte	0
	.uleb128 0x12
	.4byte	0x24b
	.4byte	0x29d
	.uleb128 0x13
	.4byte	0x85
	.byte	0x5
	.byte	0
	.uleb128 0x12
	.4byte	0x73
	.4byte	0x2ad
	.uleb128 0x13
	.4byte	0x85
	.byte	0x5
	.byte	0
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x1
	.byte	0x6c
	.4byte	0x4c
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x337
	.uleb128 0x9
	.string	"key"
	.byte	0x1
	.byte	0x6c
	.4byte	0x24b
	.4byte	.LLST6
	.uleb128 0x14
	.4byte	.LASF15
	.byte	0x1
	.byte	0x6c
	.4byte	0x73
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x14
	.4byte	.LASF23
	.byte	0x1
	.byte	0x6c
	.4byte	0x24b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x14
	.4byte	.LASF24
	.byte	0x1
	.byte	0x6c
	.4byte	0x73
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xb
	.string	"mac"
	.byte	0x1
	.byte	0x6d
	.4byte	0x267
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x11
	.4byte	.LVL23
	.4byte	0xb6
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	.LASF25
	.byte	0x1
	.byte	0x81
	.4byte	0x4c
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4bb
	.uleb128 0x9
	.string	"key"
	.byte	0x1
	.byte	0x81
	.4byte	0x24b
	.4byte	.LLST7
	.uleb128 0xa
	.4byte	.LASF15
	.byte	0x1
	.byte	0x81
	.4byte	0x73
	.4byte	.LLST8
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0x1
	.byte	0x81
	.4byte	0x9a
	.4byte	.LLST9
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0x1
	.byte	0x82
	.4byte	0x24b
	.4byte	.LLST10
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0x1
	.byte	0x82
	.4byte	0x73
	.4byte	.LLST11
	.uleb128 0xb
	.string	"buf"
	.byte	0x1
	.byte	0x82
	.4byte	0x267
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x14
	.4byte	.LASF27
	.byte	0x1
	.byte	0x82
	.4byte	0x73
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xc
	.4byte	.LASF28
	.byte	0x1
	.byte	0x84
	.4byte	0xac
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0xe
	.string	"pos"
	.byte	0x1
	.byte	0x85
	.4byte	0x73
	.4byte	.LLST12
	.uleb128 0x15
	.4byte	.LASF29
	.byte	0x1
	.byte	0x85
	.4byte	0x73
	.4byte	.LLST13
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0x1
	.byte	0x86
	.4byte	0x4bb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -95
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.byte	0x87
	.4byte	0x73
	.4byte	.LLST14
	.uleb128 0xc
	.4byte	.LASF17
	.byte	0x1
	.byte	0x88
	.4byte	0x4cb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0xd
	.string	"len"
	.byte	0x1
	.byte	0x89
	.4byte	0x4e6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0xf
	.4byte	.LVL27
	.4byte	0x513
	.4byte	0x432
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL33
	.4byte	0xb6
	.4byte	0x467
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x77
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0
	.uleb128 0xf
	.4byte	.LVL37
	.4byte	0xb6
	.4byte	0x49a
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -95
	.byte	0
	.uleb128 0x11
	.4byte	.LVL40
	.4byte	0x50a
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x73
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -95
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	0xac
	.4byte	0x4cb
	.uleb128 0x13
	.4byte	0x85
	.byte	0x13
	.byte	0
	.uleb128 0x12
	.4byte	0x4db
	.4byte	0x4db
	.uleb128 0x13
	.4byte	0x85
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x4e1
	.uleb128 0x6
	.4byte	0x37
	.uleb128 0x12
	.4byte	0x73
	.4byte	0x4f6
	.uleb128 0x13
	.4byte	0x85
	.byte	0x2
	.byte	0
	.uleb128 0x16
	.4byte	.LASF34
	.4byte	.LASF34
	.byte	0x5
	.byte	0x4a
	.uleb128 0x17
	.4byte	.LASF32
	.4byte	.LASF32
	.uleb128 0x17
	.4byte	.LASF33
	.4byte	.LASF33
	.uleb128 0x16
	.4byte	.LASF35
	.4byte	.LASF35
	.byte	0x6
	.byte	0x21
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x17
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
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL2
	.4byte	.LVL19
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL20
	.4byte	.LFE10
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL21
	.4byte	.LFE10
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL15
	.4byte	.LVL19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL16
	.4byte	.LVL19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL0
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL16
	.4byte	.LVL19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x3
	.byte	0x79
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL11
	.4byte	.LVL12-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL14
	.4byte	.LVL16
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL22
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL24
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL25
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL38
	.4byte	.LVL41
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL44
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL25
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL39
	.4byte	.LVL41
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL41
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL25
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL29
	.4byte	.LVL31
	.2byte	0x3
	.byte	0x91
	.sleb128 -72
	.4byte	.LVL31
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL25
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL31
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL26
	.4byte	.LFE12
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL32
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x9
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x14
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL43
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL28
	.4byte	.LVL31
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
.LASF7:
	.string	"__uint8_t"
.LASF9:
	.string	"size_t"
.LASF3:
	.string	"short unsigned int"
.LASF23:
	.string	"data"
.LASF20:
	.string	"_len"
.LASF24:
	.string	"data_len"
.LASF35:
	.string	"strlen"
.LASF28:
	.string	"counter"
.LASF6:
	.string	"long long unsigned int"
.LASF1:
	.string	"unsigned char"
.LASF12:
	.string	"long unsigned int"
.LASF17:
	.string	"addr"
.LASF27:
	.string	"buf_len"
.LASF32:
	.string	"memset"
.LASF21:
	.string	"hmac_sha1_vector"
.LASF22:
	.string	"hmac_sha1"
.LASF2:
	.string	"short int"
.LASF15:
	.string	"key_len"
.LASF4:
	.string	"unsigned int"
.LASF13:
	.string	"char"
.LASF8:
	.string	"uint8_t"
.LASF34:
	.string	"sha1_vector"
.LASF30:
	.string	"hash"
.LASF38:
	.string	"C:\\\\esp\\\\ArkPOS2-esp\\\\build\\\\wpa_supplicant"
.LASF11:
	.string	"sizetype"
.LASF5:
	.string	"long long int"
.LASF36:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF33:
	.string	"memcpy"
.LASF16:
	.string	"num_elem"
.LASF25:
	.string	"sha1_prf"
.LASF29:
	.string	"plen"
.LASF37:
	.string	"C:/esp/esp-idf/components/wpa_supplicant/src/crypto/sha1.c"
.LASF10:
	.string	"long int"
.LASF0:
	.string	"signed char"
.LASF31:
	.string	"label_len"
.LASF26:
	.string	"label"
.LASF18:
	.string	"k_pad"
.LASF14:
	.string	"_Bool"
.LASF19:
	.string	"_addr"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-61-gab8375a) 5.2.0"
