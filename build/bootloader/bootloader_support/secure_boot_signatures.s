	.file	"secure_boot_signatures.c"
	.text
.Ltext0:
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC3:
	.string	"secure_boot"
	.align	4
.LC5:
	.string	"\033[0;31mE (%d) %s: Embedded public verification key has wrong length %d\033[0m\n"
	.align	4
.LC7:
	.string	"\033[0;31mE (%d) %s: image has invalid signature version field 0x%08x\033[0m\n"
	.section	.text.esp_secure_boot_verify_signature_block,"ax",@progbits
	.literal_position
	.literal .LC0, 8194
	.literal .LC1, _binary_signature_verification_key_bin_end
	.literal .LC2, _binary_signature_verification_key_bin_start
	.literal .LC4, .LC3
	.literal .LC6, .LC5
	.literal .LC8, .LC7
	.align	4
	.global	esp_secure_boot_verify_signature_block
	.type	esp_secure_boot_verify_signature_block, @function
esp_secure_boot_verify_signature_block:
.LFB2:
	.file 1 "C:/esp/esp-idf/components/bootloader_support/src/secure_boot_signatures.c"
	.loc 1 72 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 76 0
	l32r	a8, .LC2
	l32r	a4, .LC1
	sub	a4, a4, a8
.LVL1:
	.loc 1 77 0
	beqi	a4, 64, .L2
	.loc 1 78 0 discriminator 1
	call8	esp_log_timestamp
.LVL2:
	mov.n	a13, a4
	l32r	a12, .LC4
	mov.n	a11, a10
	l32r	a10, .LC6
	call8	ets_printf
.LVL3:
	.loc 1 79 0 discriminator 1
	movi.n	a2, -1
.LVL4:
	retw.n
.LVL5:
.L2:
	.loc 1 82 0
	l32i.n	a4, a2, 0
.LVL6:
	beqz.n	a4, .L4
	.loc 1 83 0 discriminator 1
	call8	esp_log_timestamp
.LVL7:
	l32i.n	a13, a2, 0
	l32r	a12, .LC4
	mov.n	a11, a10
	l32r	a10, .LC8
	call8	ets_printf
.LVL8:
	.loc 1 84 0 discriminator 1
	movi.n	a2, -1
.LVL9:
	retw.n
.LVL10:
.L4:
	.loc 1 90 0
	addi.n	a2, a2, 4
.LVL11:
	.loc 1 87 0
	call8	uECC_secp256r1
.LVL12:
	mov.n	a14, a10
	mov.n	a13, a2
	movi.n	a12, 0x20
	mov.n	a11, a3
	l32r	a10, .LC2
.LVL13:
	call8	uECC_verify
.LVL14:
	.loc 1 92 0
	beqz.n	a10, .L5
	movi.n	a2, 0
.LVL15:
	retw.n
.L5:
	l32r	a2, .LC0
	.loc 1 93 0
	retw.n
.LFE2:
	.size	esp_secure_boot_verify_signature_block, .-esp_secure_boot_verify_signature_block
	.section	.rodata.str1.4
	.align	4
.LC10:
	.string	"\033[0;31mE (%d) %s: bootloader_mmap(0x%x, 0x%x) failed\033[0m\n"
	.section	.text.esp_secure_boot_verify_signature,"ax",@progbits
	.literal_position
	.literal .LC9, .LC3
	.literal .LC11, .LC10
	.align	4
	.global	esp_secure_boot_verify_signature
	.type	esp_secure_boot_verify_signature, @function
esp_secure_boot_verify_signature:
.LFB1:
	.loc 1 41 0
.LVL16:
	entry	sp, 64
.LCFI1:
	.loc 1 48 0
	addi	a5, a3, 68
	mov.n	a11, a5
	mov.n	a10, a2
	call8	bootloader_mmap
.LVL17:
	mov.n	a4, a10
.LVL18:
	.loc 1 49 0
	bnez.n	a10, .L7
	.loc 1 50 0 discriminator 1
	call8	esp_log_timestamp
.LVL19:
	mov.n	a14, a5
	mov.n	a13, a2
	l32r	a12, .LC9
	mov.n	a11, a10
	l32r	a10, .LC11
	call8	ets_printf
.LVL20:
	.loc 1 51 0 discriminator 1
	movi.n	a2, -1
.LVL21:
	retw.n
.LVL22:
.L7:
	.loc 1 56 0
	call8	bootloader_sha256_start
.LVL23:
	mov.n	a2, a10
.LVL24:
	.loc 1 57 0
	mov.n	a12, a3
	mov.n	a11, a4
	call8	bootloader_sha256_data
.LVL25:
	.loc 1 58 0
	mov.n	a11, sp
	mov.n	a10, a2
	call8	bootloader_sha256_finish
.LVL26:
	.loc 1 66 0
	mov.n	a11, sp
	add.n	a10, a4, a3
.LVL27:
	call8	esp_secure_boot_verify_signature_block
.LVL28:
	mov.n	a2, a10
.LVL29:
	.loc 1 67 0
	mov.n	a10, a4
	call8	bootloader_munmap
.LVL30:
	.loc 1 69 0
	retw.n
.LFE1:
	.size	esp_secure_boot_verify_signature, .-esp_secure_boot_verify_signature
	.comm	esp_image_spi_freq_t,4,4
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
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI0-.LFB2
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x4
	.4byte	.LCFI1-.LFB1
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE2:
	.text
.Letext0:
	.file 2 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 3 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\machine\\_default_types.h"
	.file 4 "c:\\msys32\\opt\\xtensa-esp32-elf\\xtensa-esp32-elf\\include\\stdint.h"
	.file 5 "C:/esp/esp-idf/components/esp32/include/esp_err.h"
	.file 6 "C:/esp/esp-idf/components/bootloader_support/include_priv/bootloader_sha.h"
	.file 7 "C:/esp/esp-idf/components/log/include/esp_log.h"
	.file 8 "C:/esp/esp-idf/components/bootloader_support/include/esp_image_format.h"
	.file 9 "C:/esp/esp-idf/components/bootloader_support/include/esp_secure_boot.h"
	.file 10 "C:/esp/esp-idf/components/esp32/include/rom/ets_sys.h"
	.file 11 "C:/esp/esp-idf/components/micro-ecc/micro-ecc/uECC.h"
	.file 12 "C:/esp/esp-idf/components/bootloader_support/include_priv/bootloader_flash.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x47d
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF60
	.byte	0xc
	.4byte	.LASF61
	.4byte	.LASF62
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF3
	.byte	0x2
	.byte	0x95
	.4byte	0x30
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x2
	.4byte	.LASF4
	.byte	0x3
	.byte	0x12
	.4byte	0x57
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x2
	.4byte	.LASF7
	.byte	0x3
	.byte	0x19
	.4byte	0x30
	.uleb128 0x2
	.4byte	.LASF8
	.byte	0x3
	.byte	0x1a
	.4byte	0x37
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x2
	.4byte	.LASF11
	.byte	0x4
	.byte	0x15
	.4byte	0x4c
	.uleb128 0x2
	.4byte	.LASF12
	.byte	0x4
	.byte	0x2c
	.4byte	0x65
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x4
	.byte	0x2d
	.4byte	0x70
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF14
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF16
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF17
	.uleb128 0x6
	.byte	0x4
	.4byte	0xce
	.uleb128 0x7
	.4byte	0xc1
	.uleb128 0x2
	.4byte	.LASF18
	.byte	0x5
	.byte	0x18
	.4byte	0x94
	.uleb128 0x2
	.4byte	.LASF19
	.byte	0x6
	.byte	0x1a
	.4byte	0xaa
	.uleb128 0x8
	.byte	0x4
	.4byte	0x37
	.byte	0x7
	.byte	0x1f
	.4byte	0x11a
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x5
	.byte	0
	.uleb128 0x2
	.4byte	.LASF26
	.byte	0x7
	.byte	0x26
	.4byte	0xe9
	.uleb128 0x8
	.byte	0x4
	.4byte	0x37
	.byte	0x8
	.byte	0x27
	.4byte	0x14a
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF30
	.byte	0xf
	.byte	0
	.uleb128 0xa
	.byte	0x44
	.byte	0x9
	.byte	0x59
	.4byte	0x16b
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x9
	.byte	0x5a
	.4byte	0x9f
	.byte	0
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x9
	.byte	0x5b
	.4byte	0x16b
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.4byte	0x89
	.4byte	0x17b
	.uleb128 0xd
	.4byte	0xb3
	.byte	0x3f
	.byte	0
	.uleb128 0x2
	.4byte	.LASF33
	.byte	0x9
	.byte	0x5c
	.4byte	0x14a
	.uleb128 0x6
	.byte	0x4
	.4byte	0x18c
	.uleb128 0x7
	.4byte	0x89
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF34
	.uleb128 0xe
	.4byte	.LASF39
	.byte	0x1
	.byte	0x47
	.4byte	0xd3
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x26b
	.uleb128 0xf
	.4byte	.LASF35
	.byte	0x1
	.byte	0x47
	.4byte	0x26b
	.4byte	.LLST0
	.uleb128 0x10
	.4byte	.LASF36
	.byte	0x1
	.byte	0x47
	.4byte	0x186
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x11
	.4byte	.LASF37
	.byte	0x1
	.byte	0x49
	.4byte	0x25
	.4byte	.LLST1
	.uleb128 0x12
	.4byte	.LASF38
	.byte	0x1
	.byte	0x4a
	.4byte	0x191
	.uleb128 0x5
	.byte	0x7a
	.sleb128 0
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.uleb128 0x13
	.4byte	.LVL2
	.4byte	0x41c
	.uleb128 0x14
	.4byte	.LVL3
	.4byte	0x427
	.4byte	0x21c
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL7
	.4byte	0x41c
	.uleb128 0x14
	.4byte	.LVL8
	.4byte	0x427
	.4byte	0x245
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x13
	.4byte	.LVL12
	.4byte	0x432
	.uleb128 0x16
	.4byte	.LVL14
	.4byte	0x43d
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x271
	.uleb128 0x7
	.4byte	0x17b
	.uleb128 0xe
	.4byte	.LASF40
	.byte	0x1
	.byte	0x28
	.4byte	0xd3
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3b1
	.uleb128 0xf
	.4byte	.LASF41
	.byte	0x1
	.byte	0x28
	.4byte	0x9f
	.4byte	.LLST2
	.uleb128 0x10
	.4byte	.LASF42
	.byte	0x1
	.byte	0x28
	.4byte	0x9f
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x12
	.4byte	.LASF43
	.byte	0x1
	.byte	0x2a
	.4byte	0x3b1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x12
	.4byte	.LASF44
	.byte	0x1
	.byte	0x2b
	.4byte	0x186
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x11
	.4byte	.LASF45
	.byte	0x1
	.byte	0x2c
	.4byte	0x26b
	.4byte	.LLST3
	.uleb128 0x11
	.4byte	.LASF46
	.byte	0x1
	.byte	0x38
	.4byte	0xde
	.4byte	.LLST4
	.uleb128 0x17
	.string	"err"
	.byte	0x1
	.byte	0x42
	.4byte	0xd3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x14
	.4byte	.LVL17
	.4byte	0x449
	.4byte	0x30b
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL19
	.4byte	0x41c
	.uleb128 0x14
	.4byte	.LVL20
	.4byte	0x427
	.4byte	0x340
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL23
	.4byte	0x454
	.uleb128 0x14
	.4byte	.LVL25
	.4byte	0x45f
	.4byte	0x369
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL26
	.4byte	0x46a
	.4byte	0x383
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x14
	.4byte	.LVL28
	.4byte	0x198
	.4byte	0x3a0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x74
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x16
	.4byte	.LVL30
	.4byte	0x475
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	0x89
	.4byte	0x3c1
	.uleb128 0xd
	.4byte	0xb3
	.byte	0x1f
	.byte	0
	.uleb128 0x17
	.string	"TAG"
	.byte	0x1
	.byte	0x1f
	.4byte	0x3d3
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC3
	.byte	0x9f
	.uleb128 0x7
	.4byte	0xc8
	.uleb128 0x18
	.4byte	.LASF63
	.byte	0x8
	.byte	0x2c
	.4byte	0x125
	.uleb128 0x5
	.byte	0x3
	.4byte	esp_image_spi_freq_t
	.uleb128 0xc
	.4byte	0x89
	.4byte	0x3f4
	.uleb128 0x19
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF47
	.byte	0x1
	.byte	0x21
	.4byte	.LASF49
	.4byte	0x403
	.uleb128 0x7
	.4byte	0x3e9
	.uleb128 0x1a
	.4byte	.LASF48
	.byte	0x1
	.byte	0x22
	.4byte	.LASF50
	.4byte	0x417
	.uleb128 0x7
	.4byte	0x3e9
	.uleb128 0x1b
	.4byte	.LASF51
	.4byte	.LASF51
	.byte	0x7
	.byte	0x4c
	.uleb128 0x1b
	.4byte	.LASF52
	.4byte	.LASF52
	.byte	0xa
	.byte	0xde
	.uleb128 0x1b
	.4byte	.LASF53
	.4byte	.LASF53
	.byte	0xb
	.byte	0x5d
	.uleb128 0x1c
	.4byte	.LASF54
	.4byte	.LASF54
	.byte	0xb
	.2byte	0x160
	.uleb128 0x1b
	.4byte	.LASF55
	.4byte	.LASF55
	.byte	0xc
	.byte	0x31
	.uleb128 0x1b
	.4byte	.LASF56
	.4byte	.LASF56
	.byte	0x6
	.byte	0x1c
	.uleb128 0x1b
	.4byte	.LASF57
	.4byte	.LASF57
	.byte	0x6
	.byte	0x1e
	.uleb128 0x1b
	.4byte	.LASF58
	.4byte	.LASF58
	.byte	0x6
	.byte	0x20
	.uleb128 0x1b
	.4byte	.LASF59
	.4byte	.LASF59
	.byte	0xc
	.byte	0x39
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x5
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
	.4byte	.LVL15
	.2byte	0x3
	.byte	0x72
	.sleb128 -4
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL16
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL24
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL28-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL28-1
	.4byte	.LFE1
	.2byte	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL24
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x24
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF31:
	.string	"version"
.LASF36:
	.string	"image_digest"
.LASF6:
	.string	"short int"
.LASF15:
	.string	"sizetype"
.LASF29:
	.string	"ESP_IMAGE_SPI_SPEED_20M"
.LASF8:
	.string	"__uint32_t"
.LASF43:
	.string	"digest"
.LASF11:
	.string	"uint8_t"
.LASF60:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -ggdb -Og -Og -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF37:
	.string	"keylen"
.LASF45:
	.string	"sigblock"
.LASF9:
	.string	"long long int"
.LASF35:
	.string	"sig_block"
.LASF14:
	.string	"long int"
.LASF23:
	.string	"ESP_LOG_INFO"
.LASF41:
	.string	"src_addr"
.LASF4:
	.string	"__uint8_t"
.LASF63:
	.string	"esp_image_spi_freq_t"
.LASF40:
	.string	"esp_secure_boot_verify_signature"
.LASF50:
	.string	"_binary_signature_verification_key_bin_end"
.LASF30:
	.string	"ESP_IMAGE_SPI_SPEED_80M"
.LASF42:
	.string	"length"
.LASF5:
	.string	"unsigned char"
.LASF46:
	.string	"handle"
.LASF57:
	.string	"bootloader_sha256_data"
.LASF2:
	.string	"signed char"
.LASF10:
	.string	"long long unsigned int"
.LASF13:
	.string	"uint32_t"
.LASF56:
	.string	"bootloader_sha256_start"
.LASF0:
	.string	"unsigned int"
.LASF19:
	.string	"bootloader_sha256_handle_t"
.LASF52:
	.string	"ets_printf"
.LASF1:
	.string	"short unsigned int"
.LASF59:
	.string	"bootloader_munmap"
.LASF17:
	.string	"char"
.LASF24:
	.string	"ESP_LOG_DEBUG"
.LASF12:
	.string	"int32_t"
.LASF20:
	.string	"ESP_LOG_NONE"
.LASF33:
	.string	"esp_secure_boot_sig_block_t"
.LASF34:
	.string	"_Bool"
.LASF26:
	.string	"esp_log_level_t"
.LASF44:
	.string	"data"
.LASF22:
	.string	"ESP_LOG_WARN"
.LASF28:
	.string	"ESP_IMAGE_SPI_SPEED_26M"
.LASF54:
	.string	"uECC_verify"
.LASF16:
	.string	"long unsigned int"
.LASF39:
	.string	"esp_secure_boot_verify_signature_block"
.LASF25:
	.string	"ESP_LOG_VERBOSE"
.LASF47:
	.string	"signature_verification_key_start"
.LASF7:
	.string	"__int32_t"
.LASF32:
	.string	"signature"
.LASF51:
	.string	"esp_log_timestamp"
.LASF27:
	.string	"ESP_IMAGE_SPI_SPEED_40M"
.LASF53:
	.string	"uECC_secp256r1"
.LASF61:
	.string	"C:/esp/esp-idf/components/bootloader_support/src/secure_boot_signatures.c"
.LASF49:
	.string	"_binary_signature_verification_key_bin_start"
.LASF62:
	.string	"C:\\\\esp\\\\ArkPOS2-esp\\\\build\\\\bootloader\\\\bootloader_support"
.LASF3:
	.string	"ptrdiff_t"
.LASF38:
	.string	"is_valid"
.LASF48:
	.string	"signature_verification_key_end"
.LASF21:
	.string	"ESP_LOG_ERROR"
.LASF18:
	.string	"esp_err_t"
.LASF58:
	.string	"bootloader_sha256_finish"
.LASF55:
	.string	"bootloader_mmap"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-61-gab8375a) 5.2.0"
