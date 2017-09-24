	.file	"x509write_crt.c"
	.text
.Ltext0:
	.section	.text.mbedtls_zeroize,"ax",@progbits
	.align	4
	.type	mbedtls_zeroize, @function
mbedtls_zeroize:
.LFB10:
	.file 1 "C:/esp/esp-idf/components/mbedtls/library/x509write_crt.c"
	.loc 1 48 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LVL1:
	.loc 1 49 0
	j	.L2
.LVL2:
.L3:
	.loc 1 49 0 is_stmt 0 discriminator 3
	movi.n	a3, 0
	memw
	s8i	a3, a2, 0
	mov.n	a3, a8
	addi.n	a2, a2, 1
.LVL3:
.L2:
	.loc 1 49 0 discriminator 1
	addi.n	a8, a3, -1
.LVL4:
	bnez.n	a3, .L3
	.loc 1 50 0 is_stmt 1
	retw.n
.LFE10:
	.size	mbedtls_zeroize, .-mbedtls_zeroize
	.section	.text.x509_write_time,"ax",@progbits
	.align	4
	.type	x509_write_time, @function
x509_write_time:
.LFB27:
	.loc 1 268 0
.LVL5:
	entry	sp, 32
.LCFI1:
.LVL6:
	.loc 1 275 0
	l8ui	a9, a4, 0
	movi.n	a8, 0x32
	bne	a9, a8, .L5
	.loc 1 275 0 is_stmt 0 discriminator 1
	l8ui	a9, a4, 1
	movi.n	a8, 0x30
	bne	a9, a8, .L5
	.loc 1 275 0 discriminator 2
	l8ui	a8, a4, 2
	movi.n	a9, 0x34
	bltu	a9, a8, .L5
	.loc 1 277 0 is_stmt 1
	addi	a13, a5, -2
	addi.n	a12, a4, 2
	mov.n	a11, a3
	mov.n	a10, a2
	call8	mbedtls_asn1_write_raw_buffer
.LVL7:
	mov.n	a4, a10
.LVL8:
	bltz	a10, .L8
.LVL9:
	.loc 1 280 0 discriminator 2
	mov.n	a12, a10
	mov.n	a11, a3
	mov.n	a10, a2
	call8	mbedtls_asn1_write_len
.LVL10:
	bltz	a10, .L9
	add.n	a4, a10, a4
.LVL11:
	.loc 1 281 0 discriminator 2
	movi.n	a12, 0x17
	mov.n	a11, a3
	mov.n	a10, a2
.LVL12:
	call8	mbedtls_asn1_write_tag
.LVL13:
	bltz	a10, .L10
	add.n	a10, a10, a4
.LVL14:
	j	.L7
.LVL15:
.L5:
	.loc 1 285 0
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	mbedtls_asn1_write_raw_buffer
.LVL16:
	mov.n	a4, a10
.LVL17:
	bltz	a10, .L11
.LVL18:
	.loc 1 288 0 discriminator 2
	mov.n	a12, a10
	mov.n	a11, a3
	mov.n	a10, a2
	call8	mbedtls_asn1_write_len
.LVL19:
	bltz	a10, .L12
	add.n	a4, a10, a4
.LVL20:
	.loc 1 289 0 discriminator 2
	movi.n	a12, 0x18
	mov.n	a11, a3
	mov.n	a10, a2
.LVL21:
	call8	mbedtls_asn1_write_tag
.LVL22:
	bltz	a10, .L13
	add.n	a10, a10, a4
.LVL23:
.L7:
	.loc 1 292 0
	mov.n	a2, a10
.LVL24:
	retw.n
.LVL25:
.L8:
	.loc 1 277 0
	mov.n	a2, a10
.LVL26:
	retw.n
.LVL27:
.L9:
	.loc 1 280 0
	mov.n	a2, a10
.LVL28:
	retw.n
.LVL29:
.L10:
	.loc 1 281 0
	mov.n	a2, a10
.LVL30:
	retw.n
.LVL31:
.L11:
	.loc 1 285 0
	mov.n	a2, a10
.LVL32:
	retw.n
.LVL33:
.L12:
	.loc 1 288 0
	mov.n	a2, a10
.LVL34:
	retw.n
.LVL35:
.L13:
	.loc 1 289 0
	mov.n	a2, a10
.LVL36:
	.loc 1 293 0
	retw.n
.LFE27:
	.size	x509_write_time, .-x509_write_time
	.section	.text.mbedtls_x509write_crt_init,"ax",@progbits
	.align	4
	.global	mbedtls_x509write_crt_init
	.type	mbedtls_x509write_crt_init, @function
mbedtls_x509write_crt_init:
.LFB11:
	.loc 1 53 0
.LVL37:
	entry	sp, 32
.LCFI2:
	.loc 1 54 0
	movi.n	a12, 0x48
	movi.n	a11, 0
	mov.n	a10, a2
	call8	memset
.LVL38:
	.loc 1 56 0
	addi.n	a10, a2, 4
	call8	mbedtls_mpi_init
.LVL39:
	.loc 1 57 0
	movi.n	a8, 2
	s32i.n	a8, a2, 0
	retw.n
.LFE11:
	.size	mbedtls_x509write_crt_init, .-mbedtls_x509write_crt_init
	.section	.text.mbedtls_x509write_crt_free,"ax",@progbits
	.align	4
	.global	mbedtls_x509write_crt_free
	.type	mbedtls_x509write_crt_free, @function
mbedtls_x509write_crt_free:
.LFB12:
	.loc 1 61 0
.LVL40:
	entry	sp, 32
.LCFI3:
	.loc 1 62 0
	addi.n	a10, a2, 4
	call8	mbedtls_mpi_free
.LVL41:
	.loc 1 64 0
	addi	a10, a2, 24
	call8	mbedtls_asn1_free_named_data_list
.LVL42:
	.loc 1 65 0
	addi	a10, a2, 28
	call8	mbedtls_asn1_free_named_data_list
.LVL43:
	.loc 1 66 0
	addi	a10, a2, 68
	call8	mbedtls_asn1_free_named_data_list
.LVL44:
	.loc 1 68 0
	movi.n	a11, 0x48
	mov.n	a10, a2
	call8	mbedtls_zeroize
.LVL45:
	retw.n
.LFE12:
	.size	mbedtls_x509write_crt_free, .-mbedtls_x509write_crt_free
	.section	.text.mbedtls_x509write_crt_set_version,"ax",@progbits
	.align	4
	.global	mbedtls_x509write_crt_set_version
	.type	mbedtls_x509write_crt_set_version, @function
mbedtls_x509write_crt_set_version:
.LFB13:
	.loc 1 72 0
.LVL46:
	entry	sp, 32
.LCFI4:
	.loc 1 73 0
	s32i.n	a3, a2, 0
	retw.n
.LFE13:
	.size	mbedtls_x509write_crt_set_version, .-mbedtls_x509write_crt_set_version
	.section	.text.mbedtls_x509write_crt_set_md_alg,"ax",@progbits
	.align	4
	.global	mbedtls_x509write_crt_set_md_alg
	.type	mbedtls_x509write_crt_set_md_alg, @function
mbedtls_x509write_crt_set_md_alg:
.LFB14:
	.loc 1 77 0
.LVL47:
	entry	sp, 32
.LCFI5:
	.loc 1 78 0
	s32i.n	a3, a2, 32
	retw.n
.LFE14:
	.size	mbedtls_x509write_crt_set_md_alg, .-mbedtls_x509write_crt_set_md_alg
	.section	.text.mbedtls_x509write_crt_set_subject_key,"ax",@progbits
	.align	4
	.global	mbedtls_x509write_crt_set_subject_key
	.type	mbedtls_x509write_crt_set_subject_key, @function
mbedtls_x509write_crt_set_subject_key:
.LFB15:
	.loc 1 82 0
.LVL48:
	entry	sp, 32
.LCFI6:
	.loc 1 83 0
	s32i.n	a3, a2, 16
	retw.n
.LFE15:
	.size	mbedtls_x509write_crt_set_subject_key, .-mbedtls_x509write_crt_set_subject_key
	.section	.text.mbedtls_x509write_crt_set_issuer_key,"ax",@progbits
	.align	4
	.global	mbedtls_x509write_crt_set_issuer_key
	.type	mbedtls_x509write_crt_set_issuer_key, @function
mbedtls_x509write_crt_set_issuer_key:
.LFB16:
	.loc 1 87 0
.LVL49:
	entry	sp, 32
.LCFI7:
	.loc 1 88 0
	s32i.n	a3, a2, 20
	retw.n
.LFE16:
	.size	mbedtls_x509write_crt_set_issuer_key, .-mbedtls_x509write_crt_set_issuer_key
	.section	.text.mbedtls_x509write_crt_set_subject_name,"ax",@progbits
	.align	4
	.global	mbedtls_x509write_crt_set_subject_name
	.type	mbedtls_x509write_crt_set_subject_name, @function
mbedtls_x509write_crt_set_subject_name:
.LFB17:
	.loc 1 93 0
.LVL50:
	entry	sp, 32
.LCFI8:
	.loc 1 94 0
	mov.n	a11, a3
	addi	a10, a2, 24
	call8	mbedtls_x509_string_to_names
.LVL51:
	.loc 1 95 0
	mov.n	a2, a10
.LVL52:
	retw.n
.LFE17:
	.size	mbedtls_x509write_crt_set_subject_name, .-mbedtls_x509write_crt_set_subject_name
	.section	.text.mbedtls_x509write_crt_set_issuer_name,"ax",@progbits
	.align	4
	.global	mbedtls_x509write_crt_set_issuer_name
	.type	mbedtls_x509write_crt_set_issuer_name, @function
mbedtls_x509write_crt_set_issuer_name:
.LFB18:
	.loc 1 99 0
.LVL53:
	entry	sp, 32
.LCFI9:
	.loc 1 100 0
	mov.n	a11, a3
	addi	a10, a2, 28
	call8	mbedtls_x509_string_to_names
.LVL54:
	.loc 1 101 0
	mov.n	a2, a10
.LVL55:
	retw.n
.LFE18:
	.size	mbedtls_x509write_crt_set_issuer_name, .-mbedtls_x509write_crt_set_issuer_name
	.section	.text.mbedtls_x509write_crt_set_serial,"ax",@progbits
	.align	4
	.global	mbedtls_x509write_crt_set_serial
	.type	mbedtls_x509write_crt_set_serial, @function
mbedtls_x509write_crt_set_serial:
.LFB19:
	.loc 1 104 0
.LVL56:
	entry	sp, 32
.LCFI10:
	.loc 1 107 0
	mov.n	a11, a3
	addi.n	a10, a2, 4
	call8	mbedtls_mpi_copy
.LVL57:
	bnez.n	a10, .L24
	.loc 1 110 0
	movi.n	a2, 0
.LVL58:
	retw.n
.LVL59:
.L24:
	.loc 1 108 0
	mov.n	a2, a10
.LVL60:
	.loc 1 111 0
	retw.n
.LFE19:
	.size	mbedtls_x509write_crt_set_serial, .-mbedtls_x509write_crt_set_serial
	.section	.text.mbedtls_x509write_crt_set_validity,"ax",@progbits
	.literal_position
	.literal .LC0, -10240
	.align	4
	.global	mbedtls_x509write_crt_set_validity
	.type	mbedtls_x509write_crt_set_validity, @function
mbedtls_x509write_crt_set_validity:
.LFB20:
	.loc 1 115 0
.LVL61:
	entry	sp, 32
.LCFI11:
	.loc 1 116 0
	mov.n	a10, a3
	call8	strlen
.LVL62:
	movi.n	a8, 0xe
	bne	a10, a8, .L27
	.loc 1 117 0 discriminator 1
	mov.n	a10, a4
	call8	strlen
.LVL63:
	.loc 1 116 0 discriminator 1
	movi.n	a8, 0xe
	bne	a10, a8, .L28
	.loc 1 121 0
	movi.n	a12, 0xf
	mov.n	a11, a3
	addi	a10, a2, 36
	call8	strncpy
.LVL64:
	.loc 1 122 0
	movi.n	a12, 0xf
	mov.n	a11, a4
	addi	a10, a2, 52
	call8	strncpy
.LVL65:
	.loc 1 123 0
	movi.n	a3, 0x5a
.LVL66:
	s8i	a3, a2, 50
	.loc 1 124 0
	s8i	a3, a2, 66
	.loc 1 126 0
	movi.n	a2, 0
.LVL67:
	retw.n
.LVL68:
.L27:
	.loc 1 119 0
	l32r	a2, .LC0
.LVL69:
	retw.n
.LVL70:
.L28:
	l32r	a2, .LC0
.LVL71:
	.loc 1 127 0
	retw.n
.LFE20:
	.size	mbedtls_x509write_crt_set_validity, .-mbedtls_x509write_crt_set_validity
	.section	.text.mbedtls_x509write_crt_set_extension,"ax",@progbits
	.align	4
	.global	mbedtls_x509write_crt_set_extension
	.type	mbedtls_x509write_crt_set_extension, @function
mbedtls_x509write_crt_set_extension:
.LFB21:
	.loc 1 133 0
.LVL72:
	entry	sp, 32
.LCFI12:
	mov.n	a15, a7
	.loc 1 134 0
	mov.n	a14, a6
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a3
	addi	a10, a2, 68
	call8	mbedtls_x509_set_extension
.LVL73:
	.loc 1 136 0
	mov.n	a2, a10
.LVL74:
	retw.n
.LFE21:
	.size	mbedtls_x509write_crt_set_extension, .-mbedtls_x509write_crt_set_extension
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC2:
	.string	"U\035\023"
	.section	.text.mbedtls_x509write_crt_set_basic_constraints,"ax",@progbits
	.literal_position
	.literal .LC1, -10240
	.literal .LC3, .LC2
	.align	4
	.global	mbedtls_x509write_crt_set_basic_constraints
	.type	mbedtls_x509write_crt_set_basic_constraints, @function
mbedtls_x509write_crt_set_basic_constraints:
.LFB22:
	.loc 1 140 0
.LVL75:
	entry	sp, 48
.LCFI13:
	.loc 1 143 0
	addi.n	a8, sp, 9
	s32i.n	a8, sp, 12
.LVL76:
	.loc 1 146 0
	movi.n	a8, 0
	s32i.n	a8, sp, 0
	s32i.n	a8, sp, 4
	s8i	a8, sp, 8
	.loc 1 148 0
	movi.n	a9, 1
	movnez	a8, a9, a3
	extui	a8, a8, 0, 8
	movi	a10, 0x7f
	blt	a10, a4, .L31
	movi.n	a9, 0
.L31:
	bany	a8, a9, .L35
	.loc 1 151 0
	beqz.n	a3, .L36
	.loc 1 153 0
	bltz	a4, .L37
	.loc 1 155 0
	mov.n	a12, a4
	mov.n	a11, sp
	addi.n	a10, sp, 12
	call8	mbedtls_asn1_write_int
.LVL77:
	bltz	a10, .L38
	.loc 1 155 0 is_stmt 0 discriminator 2
	mov.n	a3, a10
.LVL78:
	j	.L34
.LVL79:
.L37:
	.loc 1 144 0 is_stmt 1
	movi.n	a3, 0
.LVL80:
.L34:
	.loc 1 157 0
	movi.n	a12, 1
	mov.n	a11, sp
	addi.n	a10, sp, 12
	call8	mbedtls_asn1_write_bool
.LVL81:
	bltz	a10, .L39
	.loc 1 157 0 is_stmt 0 discriminator 2
	add.n	a3, a10, a3
.LVL82:
	j	.L33
.LVL83:
.L36:
	.loc 1 144 0 is_stmt 1
	movi.n	a3, 0
.LVL84:
.L33:
	.loc 1 160 0
	mov.n	a12, a3
	mov.n	a11, sp
	addi.n	a10, sp, 12
	call8	mbedtls_asn1_write_len
.LVL85:
	bltz	a10, .L40
	.loc 1 160 0 is_stmt 0 discriminator 2
	add.n	a3, a10, a3
.LVL86:
	.loc 1 161 0 is_stmt 1 discriminator 2
	movi.n	a12, 0x30
	mov.n	a11, sp
	addi.n	a10, sp, 12
.LVL87:
	call8	mbedtls_asn1_write_tag
.LVL88:
	bltz	a10, .L41
	add.n	a15, a10, a3
.LVL89:
	.loc 1 166 0 discriminator 2
	movi.n	a14, 9
	sub	a14, a14, a15
	.loc 1 164 0 discriminator 2
	add.n	a14, sp, a14
	movi.n	a13, 0
	movi.n	a12, 3
	l32r	a11, .LC3
	mov.n	a10, a2
.LVL90:
	call8	mbedtls_x509write_crt_set_extension
.LVL91:
	mov.n	a2, a10
.LVL92:
	retw.n
.LVL93:
.L35:
	.loc 1 149 0
	l32r	a2, .LC1
.LVL94:
	retw.n
.LVL95:
.L38:
	.loc 1 155 0
	mov.n	a2, a10
.LVL96:
	retw.n
.LVL97:
.L39:
	.loc 1 157 0
	mov.n	a2, a10
.LVL98:
	retw.n
.LVL99:
.L40:
	.loc 1 160 0
	mov.n	a2, a10
.LVL100:
	retw.n
.LVL101:
.L41:
	.loc 1 161 0
	mov.n	a2, a10
.LVL102:
	.loc 1 167 0
	retw.n
.LFE22:
	.size	mbedtls_x509write_crt_set_basic_constraints, .-mbedtls_x509write_crt_set_basic_constraints
	.section	.rodata.str1.4
	.align	4
.LC5:
	.string	"U\035\016"
	.section	.text.mbedtls_x509write_crt_set_subject_key_identifier,"ax",@progbits
	.literal_position
	.literal .LC4, 2068
	.literal .LC6, .LC5
	.align	4
	.global	mbedtls_x509write_crt_set_subject_key_identifier
	.type	mbedtls_x509write_crt_set_subject_key_identifier, @function
mbedtls_x509write_crt_set_subject_key_identifier:
.LFB23:
	.loc 1 171 0
.LVL103:
	entry	sp, 2112
.LCFI14:
	.loc 1 174 0
	l32r	a12, .LC4
	add.n	a3, sp, a12
	addmi	a8, sp, 0x800
	s32i.n	a3, a8, 20
.LVL104:
	.loc 1 177 0
	movi.n	a11, 0
	mov.n	a10, sp
	call8	memset
.LVL105:
	.loc 1 178 0
	l32i.n	a12, a2, 16
	mov.n	a11, sp
	mov.n	a10, a3
	call8	mbedtls_pk_write_pubkey
.LVL106:
	bltz	a10, .L44
.LVL107:
	.loc 1 180 0 discriminator 2
	l32r	a4, .LC4
	sub	a8, a4, a10
	addmi	a3, sp, 0x800
	mov.n	a12, a3
	mov.n	a11, a10
	add.n	a10, sp, a8
.LVL108:
	call8	mbedtls_sha1
.LVL109:
	.loc 1 181 0 discriminator 2
	s32i.n	a3, a3, 20
.LVL110:
	.loc 1 184 0 discriminator 2
	movi.n	a12, 0x14
	mov.n	a11, sp
	add.n	a10, sp, a4
	call8	mbedtls_asn1_write_len
.LVL111:
	bltz	a10, .L45
	addi	a3, a10, 20
.LVL112:
	.loc 1 185 0 discriminator 2
	movi.n	a12, 4
	mov.n	a11, sp
	l32r	a10, .LC4
.LVL113:
	add.n	a10, sp, a10
	call8	mbedtls_asn1_write_tag
.LVL114:
	bltz	a10, .L46
	add.n	a15, a10, a3
.LVL115:
	.loc 1 189 0 discriminator 2
	l32r	a14, .LC4
	sub	a14, a14, a15
	.loc 1 187 0 discriminator 2
	add.n	a14, sp, a14
	movi.n	a13, 0
	movi.n	a12, 3
	l32r	a11, .LC6
	mov.n	a10, a2
.LVL116:
	call8	mbedtls_x509write_crt_set_extension
.LVL117:
	mov.n	a2, a10
.LVL118:
	retw.n
.LVL119:
.L44:
	.loc 1 178 0
	mov.n	a2, a10
.LVL120:
	retw.n
.LVL121:
.L45:
	.loc 1 184 0
	mov.n	a2, a10
.LVL122:
	retw.n
.LVL123:
.L46:
	.loc 1 185 0
	mov.n	a2, a10
.LVL124:
	.loc 1 190 0
	retw.n
.LFE23:
	.size	mbedtls_x509write_crt_set_subject_key_identifier, .-mbedtls_x509write_crt_set_subject_key_identifier
	.section	.rodata.str1.4
	.align	4
.LC8:
	.string	"U\035#"
	.section	.text.mbedtls_x509write_crt_set_authority_key_identifier,"ax",@progbits
	.literal_position
	.literal .LC7, 2068
	.literal .LC9, .LC8
	.align	4
	.global	mbedtls_x509write_crt_set_authority_key_identifier
	.type	mbedtls_x509write_crt_set_authority_key_identifier, @function
mbedtls_x509write_crt_set_authority_key_identifier:
.LFB24:
	.loc 1 193 0
.LVL125:
	entry	sp, 2112
.LCFI15:
	.loc 1 196 0
	l32r	a12, .LC7
	add.n	a3, sp, a12
	addmi	a8, sp, 0x800
	s32i.n	a3, a8, 20
.LVL126:
	.loc 1 199 0
	movi.n	a11, 0
	mov.n	a10, sp
	call8	memset
.LVL127:
	.loc 1 200 0
	l32i.n	a12, a2, 20
	mov.n	a11, sp
	mov.n	a10, a3
	call8	mbedtls_pk_write_pubkey
.LVL128:
	bltz	a10, .L49
.LVL129:
	.loc 1 202 0 discriminator 2
	l32r	a4, .LC7
	sub	a8, a4, a10
	addmi	a3, sp, 0x800
	mov.n	a12, a3
	mov.n	a11, a10
	add.n	a10, sp, a8
.LVL130:
	call8	mbedtls_sha1
.LVL131:
	.loc 1 203 0 discriminator 2
	s32i.n	a3, a3, 20
.LVL132:
	.loc 1 206 0 discriminator 2
	movi.n	a12, 0x14
	mov.n	a11, sp
	add.n	a10, sp, a4
	call8	mbedtls_asn1_write_len
.LVL133:
	bltz	a10, .L50
	addi	a3, a10, 20
.LVL134:
	.loc 1 207 0 discriminator 2
	movi	a12, 0x80
	mov.n	a11, sp
	l32r	a10, .LC7
.LVL135:
	add.n	a10, sp, a10
	call8	mbedtls_asn1_write_tag
.LVL136:
	bltz	a10, .L51
	add.n	a3, a10, a3
.LVL137:
	.loc 1 209 0 discriminator 2
	mov.n	a12, a3
	mov.n	a11, sp
	l32r	a10, .LC7
.LVL138:
	add.n	a10, sp, a10
	call8	mbedtls_asn1_write_len
.LVL139:
	bltz	a10, .L52
	add.n	a3, a10, a3
.LVL140:
	.loc 1 210 0 discriminator 2
	movi.n	a12, 0x30
	mov.n	a11, sp
	l32r	a10, .LC7
.LVL141:
	add.n	a10, sp, a10
	call8	mbedtls_asn1_write_tag
.LVL142:
	bltz	a10, .L53
	add.n	a15, a10, a3
.LVL143:
	.loc 1 215 0 discriminator 2
	l32r	a14, .LC7
	sub	a14, a14, a15
	.loc 1 213 0 discriminator 2
	add.n	a14, sp, a14
	movi.n	a13, 0
	movi.n	a12, 3
	l32r	a11, .LC9
	mov.n	a10, a2
.LVL144:
	call8	mbedtls_x509write_crt_set_extension
.LVL145:
	mov.n	a2, a10
.LVL146:
	retw.n
.LVL147:
.L49:
	.loc 1 200 0
	mov.n	a2, a10
.LVL148:
	retw.n
.LVL149:
.L50:
	.loc 1 206 0
	mov.n	a2, a10
.LVL150:
	retw.n
.LVL151:
.L51:
	.loc 1 207 0
	mov.n	a2, a10
.LVL152:
	retw.n
.LVL153:
.L52:
	.loc 1 209 0
	mov.n	a2, a10
.LVL154:
	retw.n
.LVL155:
.L53:
	.loc 1 210 0
	mov.n	a2, a10
.LVL156:
	.loc 1 216 0
	retw.n
.LFE24:
	.size	mbedtls_x509write_crt_set_authority_key_identifier, .-mbedtls_x509write_crt_set_authority_key_identifier
	.section	.rodata.str1.4
	.align	4
.LC11:
	.string	"U\035\017"
	.section	.text.mbedtls_x509write_crt_set_key_usage,"ax",@progbits
	.literal_position
	.literal .LC10, -8320
	.literal .LC12, .LC11
	.align	4
	.global	mbedtls_x509write_crt_set_key_usage
	.type	mbedtls_x509write_crt_set_key_usage, @function
mbedtls_x509write_crt_set_key_usage:
.LFB25:
	.loc 1 221 0
.LVL157:
	entry	sp, 48
.LCFI16:
	.loc 1 227 0
	movi	a8, -0xff
	bany	a3, a8, .L56
	.loc 1 230 0
	addi.n	a12, sp, 4
	s32i.n	a12, sp, 8
	.loc 1 231 0
	s8i	a3, sp, 4
	.loc 1 233 0
	movi.n	a13, 7
	mov.n	a11, sp
	addi.n	a10, sp, 8
	call8	mbedtls_asn1_write_bitstring
.LVL158:
	bnei	a10, 4, .L57
	.loc 1 236 0
	movi.n	a15, 4
	mov.n	a14, sp
	movi.n	a13, 1
	movi.n	a12, 3
	l32r	a11, .LC12
	mov.n	a10, a2
.LVL159:
	call8	mbedtls_x509write_crt_set_extension
.LVL160:
	.loc 1 239 0
	bnez.n	a10, .L58
	.loc 1 242 0
	movi.n	a2, 0
.LVL161:
	retw.n
.LVL162:
.L56:
	.loc 1 228 0
	l32r	a2, .LC10
.LVL163:
	retw.n
.LVL164:
.L57:
	.loc 1 234 0
	mov.n	a2, a10
.LVL165:
	retw.n
.LVL166:
.L58:
	.loc 1 240 0
	mov.n	a2, a10
.LVL167:
	.loc 1 243 0
	retw.n
.LFE25:
	.size	mbedtls_x509write_crt_set_key_usage, .-mbedtls_x509write_crt_set_key_usage
	.section	.rodata.str1.4
	.align	4
.LC13:
	.string	"`\206H\001\206\370B\001\001"
	.section	.text.mbedtls_x509write_crt_set_ns_cert_type,"ax",@progbits
	.literal_position
	.literal .LC14, .LC13
	.align	4
	.global	mbedtls_x509write_crt_set_ns_cert_type
	.type	mbedtls_x509write_crt_set_ns_cert_type, @function
mbedtls_x509write_crt_set_ns_cert_type:
.LFB26:
	.loc 1 247 0
.LVL168:
	entry	sp, 64
.LCFI17:
	s8i	a3, sp, 16
	.loc 1 252 0
	addi.n	a10, sp, 4
	s32i.n	a10, sp, 4
	.loc 1 254 0
	movi.n	a13, 8
	addi	a12, sp, 16
	mov.n	a11, sp
	call8	mbedtls_asn1_write_bitstring
.LVL169:
	bnei	a10, 4, .L61
	.loc 1 257 0
	movi.n	a15, 4
	mov.n	a14, sp
	movi.n	a13, 0
	movi.n	a12, 9
	l32r	a11, .LC14
	mov.n	a10, a2
.LVL170:
	call8	mbedtls_x509write_crt_set_extension
.LVL171:
	.loc 1 260 0
	bnez.n	a10, .L62
	.loc 1 263 0
	movi.n	a2, 0
.LVL172:
	retw.n
.LVL173:
.L61:
	.loc 1 255 0
	mov.n	a2, a10
.LVL174:
	retw.n
.LVL175:
.L62:
	.loc 1 261 0
	mov.n	a2, a10
.LVL176:
	.loc 1 264 0
	retw.n
.LFE26:
	.size	mbedtls_x509write_crt_set_ns_cert_type, .-mbedtls_x509write_crt_set_ns_cert_type
	.section	.text.mbedtls_x509write_crt_der,"ax",@progbits
	.literal_position
	.literal .LC15, 3152
	.literal .LC16, 3184
	.align	4
	.global	mbedtls_x509write_crt_der
	.type	mbedtls_x509write_crt_der, @function
mbedtls_x509write_crt_der:
.LFB28:
	.loc 1 298 0
.LVL177:
	entry	sp, 3232
.LCFI18:
	.loc 1 301 0
	movi.n	a7, 0
	s32i.n	a7, sp, 20
.LVL178:
	.loc 1 313 0
	movi	a7, 0x450
	addi	a8, sp, 16
	add.n	a7, a8, a7
	addmi	a7, a7, 0x800
	s32i.n	a7, sp, 24
	.loc 1 316 0
	l32i.n	a10, a2, 20
	call8	mbedtls_pk_get_type
.LVL179:
	.loc 1 317 0
	bnei	a10, 2, .L64
	.loc 1 318 0
	movi.n	a10, 4
.LVL180:
.L64:
	.loc 1 320 0
	addi	a13, sp, 20
	addi	a12, sp, 16
	l32i.n	a11, a2, 32
	call8	mbedtls_oid_get_oid_by_sig_alg
.LVL181:
	bnez.n	a10, .L67
	.loc 1 329 0
	l32i	a12, a2, 68
	movi	a11, 0x450
	addi	a9, sp, 16
	add.n	a11, a9, a11
	addi	a10, sp, 24
.LVL182:
	call8	mbedtls_x509_write_extensions
.LVL183:
	mov.n	a7, a10
.LVL184:
	bltz	a10, .L68
.LVL185:
	.loc 1 330 0 discriminator 2
	mov.n	a12, a10
	movi	a11, 0x450
	addi	a8, sp, 16
	add.n	a11, a8, a11
	addi	a10, sp, 24
	call8	mbedtls_asn1_write_len
.LVL186:
	bltz	a10, .L69
	add.n	a7, a10, a7
.LVL187:
	.loc 1 331 0 discriminator 2
	movi.n	a12, 0x30
	movi	a11, 0x450
	addi	a9, sp, 16
	add.n	a11, a9, a11
	addi	a10, sp, 24
.LVL188:
	call8	mbedtls_asn1_write_tag
.LVL189:
	bltz	a10, .L70
	add.n	a7, a10, a7
.LVL190:
	.loc 1 333 0 discriminator 2
	mov.n	a12, a7
	movi	a11, 0x450
	addi	a8, sp, 16
	add.n	a11, a8, a11
	addi	a10, sp, 24
.LVL191:
	call8	mbedtls_asn1_write_len
.LVL192:
	bltz	a10, .L71
	add.n	a7, a10, a7
.LVL193:
	.loc 1 334 0 discriminator 2
	movi	a12, 0xa3
	movi	a11, 0x450
	addi	a9, sp, 16
	add.n	a11, a9, a11
	addi	a10, sp, 24
.LVL194:
	call8	mbedtls_asn1_write_tag
.LVL195:
	bltz	a10, .L72
	add.n	a7, a10, a7
.LVL196:
	.loc 1 340 0 discriminator 2
	movi	a11, 0x450
	addi	a8, sp, 16
	add.n	a11, a8, a11
	l32i.n	a12, sp, 24
	sub	a12, a12, a11
	l32i.n	a10, a2, 16
.LVL197:
	call8	mbedtls_pk_write_pubkey_der
.LVL198:
	bltz	a10, .L73
.LVL199:
	.loc 1 342 0 discriminator 2
	l32i.n	a8, sp, 24
	sub	a8, a8, a10
	s32i.n	a8, sp, 24
	.loc 1 343 0 discriminator 2
	add.n	a7, a7, a10
.LVL200:
	.loc 1 348 0 discriminator 2
	l32i.n	a12, a2, 24
	movi	a11, 0x450
	addi	a9, sp, 16
	add.n	a11, a9, a11
	addi	a10, sp, 24
.LVL201:
	call8	mbedtls_x509_write_names
.LVL202:
	bltz	a10, .L74
	add.n	a9, a10, a7
	l32r	a8, .LC16
	add.n	a8, a8, sp
	s32i.n	a9, a8, 0
.LVL203:
	.loc 1 357 0 discriminator 2
	movi.n	a13, 0xf
	addi	a12, a2, 52
	movi	a11, 0x450
	addi	a8, sp, 16
	add.n	a11, a8, a11
	addi	a10, sp, 24
.LVL204:
	call8	x509_write_time
.LVL205:
	mov.n	a7, a10
.LVL206:
	bltz	a10, .L75
.LVL207:
	.loc 1 360 0 discriminator 2
	movi.n	a13, 0xf
	addi	a12, a2, 36
	movi	a11, 0x450
	addi	a9, sp, 16
	add.n	a11, a9, a11
	addi	a10, sp, 24
	call8	x509_write_time
.LVL208:
	bltz	a10, .L76
	add.n	a12, a10, a7
.LVL209:
	.loc 1 363 0 discriminator 2
	l32r	a8, .LC16
	add.n	a8, a8, sp
	l32i.n	a8, a8, 0
	add.n	a7, a8, a12
.LVL210:
	.loc 1 364 0 discriminator 2
	movi	a11, 0x450
	addi	a9, sp, 16
	add.n	a11, a9, a11
	addi	a10, sp, 24
.LVL211:
	call8	mbedtls_asn1_write_len
.LVL212:
	bltz	a10, .L77
	add.n	a7, a10, a7
.LVL213:
	.loc 1 365 0 discriminator 2
	movi.n	a12, 0x30
	movi	a11, 0x450
	addi	a8, sp, 16
	add.n	a11, a8, a11
	addi	a10, sp, 24
.LVL214:
	call8	mbedtls_asn1_write_tag
.LVL215:
	bltz	a10, .L78
	add.n	a7, a10, a7
.LVL216:
	.loc 1 371 0 discriminator 2
	l32i.n	a12, a2, 28
	movi	a11, 0x450
	addi	a9, sp, 16
	add.n	a11, a9, a11
	addi	a10, sp, 24
.LVL217:
	call8	mbedtls_x509_write_names
.LVL218:
	bltz	a10, .L79
	add.n	a9, a10, a7
	l32r	a8, .LC16
	add.n	a8, a8, sp
	s32i.n	a9, a8, 0
.LVL219:
	.loc 1 376 0 discriminator 2
	l32i.n	a7, sp, 16
	mov.n	a10, a7
.LVL220:
	call8	strlen
.LVL221:
	movi.n	a14, 0
	mov.n	a13, a10
	mov.n	a12, a7
	movi	a11, 0x450
	addi	a8, sp, 16
	add.n	a11, a8, a11
	addi	a10, sp, 24
	call8	mbedtls_asn1_write_algorithm_identifier
.LVL222:
	bltz	a10, .L80
	l32r	a9, .LC16
	add.n	a9, a9, sp
	l32i.n	a9, a9, 0
	add.n	a7, a10, a9
.LVL223:
	.loc 1 382 0 discriminator 2
	addi.n	a12, a2, 4
	movi	a11, 0x450
	addi	a8, sp, 16
	add.n	a11, a8, a11
	addi	a10, sp, 24
.LVL224:
	call8	mbedtls_asn1_write_mpi
.LVL225:
	bltz	a10, .L81
	add.n	a7, a10, a7
.LVL226:
	.loc 1 388 0 discriminator 2
	l32i.n	a12, a2, 0
	movi	a11, 0x450
	addi	a9, sp, 16
	add.n	a11, a9, a11
	addi	a10, sp, 24
.LVL227:
	call8	mbedtls_asn1_write_int
.LVL228:
	bltz	a10, .L82
.LVL229:
	.loc 1 389 0 discriminator 2
	add.n	a7, a7, a10
.LVL230:
	.loc 1 390 0 discriminator 2
	mov.n	a12, a10
	movi	a11, 0x450
	addi	a8, sp, 16
	add.n	a11, a8, a11
	addi	a10, sp, 24
.LVL231:
	call8	mbedtls_asn1_write_len
.LVL232:
	bltz	a10, .L83
	add.n	a7, a10, a7
.LVL233:
	.loc 1 391 0 discriminator 2
	movi	a12, 0xa0
	movi	a11, 0x450
	addi	a9, sp, 16
	add.n	a11, a9, a11
	addi	a10, sp, 24
.LVL234:
	call8	mbedtls_asn1_write_tag
.LVL235:
	bltz	a10, .L84
	add.n	a7, a10, a7
.LVL236:
	.loc 1 394 0 discriminator 2
	mov.n	a12, a7
	movi	a11, 0x450
	addi	a8, sp, 16
	add.n	a11, a8, a11
	addi	a10, sp, 24
.LVL237:
	call8	mbedtls_asn1_write_len
.LVL238:
	bltz	a10, .L85
	add.n	a7, a10, a7
.LVL239:
	.loc 1 395 0 discriminator 2
	movi.n	a12, 0x30
	movi	a11, 0x450
	addi	a9, sp, 16
	add.n	a11, a9, a11
	addi	a10, sp, 24
.LVL240:
	call8	mbedtls_asn1_write_tag
.LVL241:
	bltz	a10, .L86
	add.n	a7, a10, a7
.LVL242:
	.loc 1 401 0 discriminator 2
	l32i.n	a10, a2, 32
.LVL243:
	call8	mbedtls_md_info_from_type
.LVL244:
	addi	a13, sp, 32
	mov.n	a12, a7
	l32i.n	a11, sp, 24
	call8	mbedtls_md
.LVL245:
	.loc 1 403 0 discriminator 2
	l32i.n	a10, a2, 20
	l32i.n	a11, a2, 32
	s32i.n	a6, sp, 4
	s32i.n	a5, sp, 0
	l32r	a15, .LC15
	addi	a2, sp, 16
.LVL246:
	add.n	a15, a2, a15
	addi	a14, sp, 96
	movi.n	a13, 0
	addi	a12, sp, 32
	call8	mbedtls_pk_sign
.LVL247:
	bnez.n	a10, .L87
	.loc 1 412 0
	add.n	a4, a3, a4
.LVL248:
	s32i.n	a4, sp, 28
	.loc 1 413 0
	addi	a4, sp, 16
	addmi	a2, a4, 0xc00
	l32i	a15, a2, 80
	addi	a14, sp, 96
	l32i.n	a13, sp, 20
	l32i.n	a12, sp, 16
	mov.n	a11, a3
	addi	a10, sp, 28
.LVL249:
	call8	mbedtls_x509_write_sig
.LVL250:
	mov.n	a2, a10
.LVL251:
	bltz	a10, .L65
.LVL252:
	.loc 1 416 0 discriminator 2
	l32i.n	a10, sp, 28
	sub	a4, a10, a3
	bltu	a4, a7, .L89
	.loc 1 419 0
	sub	a10, a10, a7
	s32i.n	a10, sp, 28
	.loc 1 420 0
	mov.n	a12, a7
	l32i.n	a11, sp, 24
	call8	memcpy
.LVL253:
	.loc 1 422 0
	add.n	a2, a7, a2
.LVL254:
	.loc 1 423 0
	mov.n	a12, a2
	mov.n	a11, a3
	addi	a10, sp, 28
	call8	mbedtls_asn1_write_len
.LVL255:
	bltz	a10, .L90
	.loc 1 423 0 is_stmt 0 discriminator 2
	add.n	a2, a10, a2
.LVL256:
	.loc 1 424 0 is_stmt 1 discriminator 2
	movi.n	a12, 0x30
	mov.n	a11, a3
	addi	a10, sp, 28
.LVL257:
	call8	mbedtls_asn1_write_tag
.LVL258:
	bltz	a10, .L91
	add.n	a2, a10, a2
.LVL259:
	.loc 1 427 0 discriminator 2
	retw.n
.LVL260:
.L67:
	.loc 1 323 0
	mov.n	a2, a10
.LVL261:
	retw.n
.LVL262:
.L68:
	.loc 1 329 0
	mov.n	a2, a10
.LVL263:
	retw.n
.LVL264:
.L69:
	.loc 1 330 0
	mov.n	a2, a10
.LVL265:
	retw.n
.LVL266:
.L70:
	.loc 1 331 0
	mov.n	a2, a10
.LVL267:
	retw.n
.LVL268:
.L71:
	.loc 1 333 0
	mov.n	a2, a10
.LVL269:
	retw.n
.LVL270:
.L72:
	.loc 1 334 0
	mov.n	a2, a10
.LVL271:
	retw.n
.LVL272:
.L73:
	.loc 1 340 0
	mov.n	a2, a10
.LVL273:
	retw.n
.LVL274:
.L74:
	.loc 1 348 0
	mov.n	a2, a10
.LVL275:
	retw.n
.LVL276:
.L75:
	.loc 1 357 0
	mov.n	a2, a10
.LVL277:
	retw.n
.LVL278:
.L76:
	.loc 1 360 0
	mov.n	a2, a10
.LVL279:
	retw.n
.LVL280:
.L77:
	.loc 1 364 0
	mov.n	a2, a10
.LVL281:
	retw.n
.LVL282:
.L78:
	.loc 1 365 0
	mov.n	a2, a10
.LVL283:
	retw.n
.LVL284:
.L79:
	.loc 1 371 0
	mov.n	a2, a10
.LVL285:
	retw.n
.LVL286:
.L80:
	.loc 1 376 0
	mov.n	a2, a10
.LVL287:
	retw.n
.LVL288:
.L81:
	.loc 1 382 0
	mov.n	a2, a10
.LVL289:
	retw.n
.LVL290:
.L82:
	.loc 1 388 0
	mov.n	a2, a10
.LVL291:
	retw.n
.LVL292:
.L83:
	.loc 1 390 0
	mov.n	a2, a10
.LVL293:
	retw.n
.LVL294:
.L84:
	.loc 1 391 0
	mov.n	a2, a10
.LVL295:
	retw.n
.LVL296:
.L85:
	.loc 1 394 0
	mov.n	a2, a10
.LVL297:
	retw.n
.LVL298:
.L86:
	.loc 1 395 0
	mov.n	a2, a10
.LVL299:
	retw.n
.L87:
	.loc 1 406 0
	mov.n	a2, a10
	retw.n
.LVL300:
.L89:
	.loc 1 417 0
	movi	a2, -0x6c
.LVL301:
	retw.n
.LVL302:
.L90:
	.loc 1 423 0
	mov.n	a2, a10
.LVL303:
	retw.n
.LVL304:
.L91:
	.loc 1 424 0
	mov.n	a2, a10
.LVL305:
.L65:
	.loc 1 428 0
	retw.n
.LFE28:
	.size	mbedtls_x509write_crt_der, .-mbedtls_x509write_crt_der
	.section	.rodata.str1.4
	.align	4
.LC18:
	.string	"-----END CERTIFICATE-----\n"
	.align	4
.LC20:
	.string	"-----BEGIN CERTIFICATE-----\n"
	.section	.text.mbedtls_x509write_crt_pem,"ax",@progbits
	.literal_position
	.literal .LC17, 4096
	.literal .LC19, .LC18
	.literal .LC21, .LC20
	.align	4
	.global	mbedtls_x509write_crt_pem
	.type	mbedtls_x509write_crt_pem, @function
mbedtls_x509write_crt_pem:
.LFB29:
	.loc 1 437 0
.LVL306:
	entry	sp, 4160
.LCFI19:
	.loc 1 440 0
	addi	a9, sp, 16
	addmi	a8, a9, 0x1000
	movi.n	a9, 0
	s32i.n	a9, a8, 0
	.loc 1 442 0
	mov.n	a14, a6
	mov.n	a13, a5
	l32r	a12, .LC17
	addi	a11, sp, 16
	mov.n	a10, a2
	call8	mbedtls_x509write_crt_der
.LVL307:
	bltz	a10, .L94
	.loc 1 449 0
	l32r	a12, .LC17
	sub	a12, a12, a10
	.loc 1 448 0
	addi	a5, sp, 16
.LVL308:
	addmi	a2, a5, 0x1000
.LVL309:
	s32i.n	a2, sp, 0
	mov.n	a15, a4
	mov.n	a14, a3
	mov.n	a13, a10
	add.n	a12, a5, a12
	l32r	a11, .LC19
	l32r	a10, .LC21
.LVL310:
	call8	mbedtls_pem_write_buffer
.LVL311:
	bnez.n	a10, .L95
	.loc 1 455 0
	movi.n	a2, 0
	retw.n
.LVL312:
.L94:
	.loc 1 445 0
	mov.n	a2, a10
.LVL313:
	retw.n
.LVL314:
.L95:
	.loc 1 452 0
	mov.n	a2, a10
	.loc 1 456 0
	retw.n
.LFE29:
	.size	mbedtls_x509write_crt_pem, .-mbedtls_x509write_crt_pem
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
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI1-.LFB27
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
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI5-.LFB14
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI6-.LFB15
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI7-.LFB16
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI8-.LFB17
	.byte	0xe
	.uleb128 0x20
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
	.uleb128 0x30
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
	.uleb128 0x840
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI15-.LFB24
	.byte	0xe
	.uleb128 0x840
	.align	4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI16-.LFB25
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI17-.LFB26
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI18-.LFB28
	.byte	0xe
	.uleb128 0xca0
	.align	4
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI19-.LFB29
	.byte	0xe
	.uleb128 0x1040
	.align	4
.LEFDE38:
	.text
.Letext0:
	.file 2 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 3 "C:/esp/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "C:/esp/esp-idf/components/newlib/include/stdint.h"
	.file 5 "C:/esp/esp-idf/components/mbedtls/include/mbedtls/bignum.h"
	.file 6 "C:/esp/esp-idf/components/mbedtls/include/mbedtls/asn1.h"
	.file 7 "C:/esp/esp-idf/components/mbedtls/include/mbedtls/md.h"
	.file 8 "C:/esp/esp-idf/components/mbedtls/include/mbedtls/pk.h"
	.file 9 "C:/esp/esp-idf/components/mbedtls/include/mbedtls/x509_crt.h"
	.file 10 "C:/esp/esp-idf/components/mbedtls/include/mbedtls/asn1write.h"
	.file 11 "C:/esp/esp-idf/components/mbedtls/include/mbedtls/x509.h"
	.file 12 "C:/esp/esp-idf/components/newlib/include/string.h"
	.file 13 "C:/esp/esp-idf/components/mbedtls/include/mbedtls/sha1.h"
	.file 14 "C:/esp/esp-idf/components/mbedtls/include/mbedtls/oid.h"
	.file 15 "C:/esp/esp-idf/components/mbedtls/include/mbedtls/pem.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1516
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF126
	.byte	0xc
	.4byte	.LASF127
	.4byte	.LASF128
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0xd8
	.4byte	0x37
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
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x3
	.byte	0x1a
	.4byte	0x37
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x4
	.byte	0x2d
	.4byte	0x5a
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x6
	.4byte	0x4c
	.4byte	0x97
	.uleb128 0x7
	.4byte	0x97
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x8
	.byte	0x4
	.4byte	0x4c
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.uleb128 0x8
	.byte	0x4
	.4byte	0xb8
	.uleb128 0x9
	.4byte	0xab
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x5
	.byte	0xa7
	.4byte	0x73
	.uleb128 0xa
	.byte	0xc
	.byte	0x5
	.byte	0xb5
	.4byte	0xef
	.uleb128 0xb
	.string	"s"
	.byte	0x5
	.byte	0xb7
	.4byte	0x25
	.byte	0
	.uleb128 0xb
	.string	"n"
	.byte	0x5
	.byte	0xb8
	.4byte	0x2c
	.byte	0x4
	.uleb128 0xb
	.string	"p"
	.byte	0x5
	.byte	0xb9
	.4byte	0xef
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xbd
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x5
	.byte	0xbb
	.4byte	0xc8
	.uleb128 0xc
	.4byte	.LASF16
	.byte	0xc
	.byte	0x6
	.byte	0x76
	.4byte	0x12f
	.uleb128 0xb
	.string	"tag"
	.byte	0x6
	.byte	0x78
	.4byte	0x25
	.byte	0
	.uleb128 0xb
	.string	"len"
	.byte	0x6
	.byte	0x79
	.4byte	0x2c
	.byte	0x4
	.uleb128 0xb
	.string	"p"
	.byte	0x6
	.byte	0x7a
	.4byte	0xa5
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x6
	.byte	0x7c
	.4byte	0x100
	.uleb128 0xc
	.4byte	.LASF17
	.byte	0x20
	.byte	0x6
	.byte	0x96
	.4byte	0x177
	.uleb128 0xb
	.string	"oid"
	.byte	0x6
	.byte	0x98
	.4byte	0x12f
	.byte	0
	.uleb128 0xb
	.string	"val"
	.byte	0x6
	.byte	0x99
	.4byte	0x12f
	.byte	0xc
	.uleb128 0xd
	.4byte	.LASF18
	.byte	0x6
	.byte	0x9a
	.4byte	0x177
	.byte	0x18
	.uleb128 0xd
	.4byte	.LASF19
	.byte	0x6
	.byte	0x9b
	.4byte	0x4c
	.byte	0x1c
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x13a
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x6
	.byte	0x9d
	.4byte	0x13a
	.uleb128 0xe
	.byte	0x4
	.4byte	0x37
	.byte	0x7
	.byte	0x27
	.4byte	0x1d1
	.uleb128 0xf
	.4byte	.LASF20
	.byte	0
	.uleb128 0xf
	.4byte	.LASF21
	.byte	0x1
	.uleb128 0xf
	.4byte	.LASF22
	.byte	0x2
	.uleb128 0xf
	.4byte	.LASF23
	.byte	0x3
	.uleb128 0xf
	.4byte	.LASF24
	.byte	0x4
	.uleb128 0xf
	.4byte	.LASF25
	.byte	0x5
	.uleb128 0xf
	.4byte	.LASF26
	.byte	0x6
	.uleb128 0xf
	.4byte	.LASF27
	.byte	0x7
	.uleb128 0xf
	.4byte	.LASF28
	.byte	0x8
	.uleb128 0xf
	.4byte	.LASF29
	.byte	0x9
	.byte	0
	.uleb128 0x3
	.4byte	.LASF30
	.byte	0x7
	.byte	0x32
	.4byte	0x188
	.uleb128 0xe
	.byte	0x4
	.4byte	0x37
	.byte	0x8
	.byte	0x4a
	.4byte	0x213
	.uleb128 0xf
	.4byte	.LASF31
	.byte	0
	.uleb128 0xf
	.4byte	.LASF32
	.byte	0x1
	.uleb128 0xf
	.4byte	.LASF33
	.byte	0x2
	.uleb128 0xf
	.4byte	.LASF34
	.byte	0x3
	.uleb128 0xf
	.4byte	.LASF35
	.byte	0x4
	.uleb128 0xf
	.4byte	.LASF36
	.byte	0x5
	.uleb128 0xf
	.4byte	.LASF37
	.byte	0x6
	.byte	0
	.uleb128 0x3
	.4byte	.LASF38
	.byte	0x8
	.byte	0x52
	.4byte	0x1dc
	.uleb128 0x3
	.4byte	.LASF39
	.byte	0x8
	.byte	0x79
	.4byte	0x229
	.uleb128 0x10
	.4byte	.LASF39
	.uleb128 0xa
	.byte	0x8
	.byte	0x8
	.byte	0x7e
	.4byte	0x24f
	.uleb128 0xd
	.4byte	.LASF40
	.byte	0x8
	.byte	0x80
	.4byte	0x24f
	.byte	0
	.uleb128 0xd
	.4byte	.LASF41
	.byte	0x8
	.byte	0x81
	.4byte	0x7e
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x255
	.uleb128 0x9
	.4byte	0x21e
	.uleb128 0x3
	.4byte	.LASF42
	.byte	0x8
	.byte	0x82
	.4byte	0x22e
	.uleb128 0x8
	.byte	0x4
	.4byte	0x26b
	.uleb128 0x9
	.4byte	0x4c
	.uleb128 0x8
	.byte	0x4
	.4byte	0x276
	.uleb128 0x11
	.4byte	0x25
	.4byte	0x28f
	.uleb128 0x12
	.4byte	0x7e
	.uleb128 0x12
	.4byte	0xa5
	.uleb128 0x12
	.4byte	0x2c
	.byte	0
	.uleb128 0xc
	.4byte	.LASF43
	.byte	0x48
	.byte	0x9
	.byte	0x82
	.4byte	0x314
	.uleb128 0xd
	.4byte	.LASF44
	.byte	0x9
	.byte	0x84
	.4byte	0x25
	.byte	0
	.uleb128 0xd
	.4byte	.LASF45
	.byte	0x9
	.byte	0x85
	.4byte	0xf5
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF46
	.byte	0x9
	.byte	0x86
	.4byte	0x314
	.byte	0x10
	.uleb128 0xd
	.4byte	.LASF47
	.byte	0x9
	.byte	0x87
	.4byte	0x314
	.byte	0x14
	.uleb128 0xd
	.4byte	.LASF48
	.byte	0x9
	.byte	0x88
	.4byte	0x31a
	.byte	0x18
	.uleb128 0xd
	.4byte	.LASF49
	.byte	0x9
	.byte	0x89
	.4byte	0x31a
	.byte	0x1c
	.uleb128 0xd
	.4byte	.LASF50
	.byte	0x9
	.byte	0x8a
	.4byte	0x1d1
	.byte	0x20
	.uleb128 0xd
	.4byte	.LASF51
	.byte	0x9
	.byte	0x8b
	.4byte	0x320
	.byte	0x24
	.uleb128 0xd
	.4byte	.LASF52
	.byte	0x9
	.byte	0x8c
	.4byte	0x320
	.byte	0x34
	.uleb128 0xd
	.4byte	.LASF53
	.byte	0x9
	.byte	0x8d
	.4byte	0x31a
	.byte	0x44
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x25a
	.uleb128 0x8
	.byte	0x4
	.4byte	0x17d
	.uleb128 0x6
	.4byte	0xab
	.4byte	0x330
	.uleb128 0x7
	.4byte	0x97
	.byte	0xf
	.byte	0
	.uleb128 0x3
	.4byte	.LASF43
	.byte	0x9
	.byte	0x8f
	.4byte	0x28f
	.uleb128 0x6
	.4byte	0x4c
	.4byte	0x34b
	.uleb128 0x7
	.4byte	0x97
	.byte	0x3f
	.byte	0
	.uleb128 0x13
	.4byte	.LASF129
	.byte	0x1
	.byte	0x30
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x388
	.uleb128 0x14
	.string	"v"
	.byte	0x1
	.byte	0x30
	.4byte	0x7e
	.4byte	.LLST0
	.uleb128 0x14
	.string	"n"
	.byte	0x1
	.byte	0x30
	.4byte	0x2c
	.4byte	.LLST1
	.uleb128 0x15
	.string	"p"
	.byte	0x1
	.byte	0x31
	.4byte	0x388
	.4byte	.LLST2
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x38e
	.uleb128 0x16
	.4byte	0x4c
	.uleb128 0x17
	.4byte	.LASF130
	.byte	0x1
	.2byte	0x10a
	.4byte	0x25
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4cc
	.uleb128 0x18
	.string	"p"
	.byte	0x1
	.2byte	0x10a
	.4byte	0x4cc
	.4byte	.LLST3
	.uleb128 0x19
	.4byte	.LASF54
	.byte	0x1
	.2byte	0x10a
	.4byte	0xa5
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x18
	.string	"t"
	.byte	0x1
	.2byte	0x10b
	.4byte	0xb2
	.4byte	.LLST4
	.uleb128 0x19
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x10b
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1a
	.string	"ret"
	.byte	0x1
	.2byte	0x10d
	.4byte	0x25
	.4byte	.LLST5
	.uleb128 0x1a
	.string	"len"
	.byte	0x1
	.2byte	0x10e
	.4byte	0x2c
	.4byte	.LLST6
	.uleb128 0x1b
	.4byte	.LVL7
	.4byte	0x13c8
	.4byte	0x42b
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 2
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 -2
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL10
	.4byte	0x13d3
	.4byte	0x44b
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL13
	.4byte	0x13de
	.4byte	0x46a
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x47
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL16
	.4byte	0x13c8
	.4byte	0x490
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL19
	.4byte	0x13d3
	.4byte	0x4b0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL22
	.4byte	0x13de
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x48
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xa5
	.uleb128 0x1e
	.4byte	.LASF56
	.byte	0x1
	.byte	0x34
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x524
	.uleb128 0x1f
	.string	"ctx"
	.byte	0x1
	.byte	0x34
	.4byte	0x524
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1b
	.4byte	.LVL38
	.4byte	0x13e9
	.4byte	0x513
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x48
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL39
	.4byte	0x13f2
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 4
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x330
	.uleb128 0x1e
	.4byte	.LASF57
	.byte	0x1
	.byte	0x3c
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5b4
	.uleb128 0x1f
	.string	"ctx"
	.byte	0x1
	.byte	0x3c
	.4byte	0x524
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1b
	.4byte	.LVL41
	.4byte	0x13fd
	.4byte	0x560
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 4
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL42
	.4byte	0x1408
	.4byte	0x574
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 24
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL43
	.4byte	0x1408
	.4byte	0x588
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 28
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL44
	.4byte	0x1408
	.4byte	0x59d
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x72
	.sleb128 68
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL45
	.4byte	0x34b
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x48
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF58
	.byte	0x1
	.byte	0x47
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5e4
	.uleb128 0x1f
	.string	"ctx"
	.byte	0x1
	.byte	0x47
	.4byte	0x524
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x20
	.4byte	.LASF44
	.byte	0x1
	.byte	0x47
	.4byte	0x25
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF59
	.byte	0x1
	.byte	0x4c
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x614
	.uleb128 0x1f
	.string	"ctx"
	.byte	0x1
	.byte	0x4c
	.4byte	0x524
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x20
	.4byte	.LASF50
	.byte	0x1
	.byte	0x4c
	.4byte	0x1d1
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF60
	.byte	0x1
	.byte	0x51
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x644
	.uleb128 0x1f
	.string	"ctx"
	.byte	0x1
	.byte	0x51
	.4byte	0x524
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1f
	.string	"key"
	.byte	0x1
	.byte	0x51
	.4byte	0x314
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF61
	.byte	0x1
	.byte	0x56
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x674
	.uleb128 0x1f
	.string	"ctx"
	.byte	0x1
	.byte	0x56
	.4byte	0x524
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1f
	.string	"key"
	.byte	0x1
	.byte	0x56
	.4byte	0x314
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x21
	.4byte	.LASF63
	.byte	0x1
	.byte	0x5b
	.4byte	0x25
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6c0
	.uleb128 0x14
	.string	"ctx"
	.byte	0x1
	.byte	0x5b
	.4byte	0x524
	.4byte	.LLST7
	.uleb128 0x20
	.4byte	.LASF62
	.byte	0x1
	.byte	0x5c
	.4byte	0xb2
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1d
	.4byte	.LVL51
	.4byte	0x1414
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 24
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LASF64
	.byte	0x1
	.byte	0x61
	.4byte	0x25
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x70c
	.uleb128 0x14
	.string	"ctx"
	.byte	0x1
	.byte	0x61
	.4byte	0x524
	.4byte	.LLST8
	.uleb128 0x20
	.4byte	.LASF65
	.byte	0x1
	.byte	0x62
	.4byte	0xb2
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1d
	.4byte	.LVL54
	.4byte	0x1414
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 28
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LASF66
	.byte	0x1
	.byte	0x67
	.4byte	0x25
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x765
	.uleb128 0x14
	.string	"ctx"
	.byte	0x1
	.byte	0x67
	.4byte	0x524
	.4byte	.LLST9
	.uleb128 0x20
	.4byte	.LASF45
	.byte	0x1
	.byte	0x67
	.4byte	0x765
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x22
	.string	"ret"
	.byte	0x1
	.byte	0x69
	.4byte	0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1d
	.4byte	.LVL57
	.4byte	0x1420
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 4
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x76b
	.uleb128 0x9
	.4byte	0xf5
	.uleb128 0x21
	.4byte	.LASF67
	.byte	0x1
	.byte	0x71
	.4byte	0x25
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x817
	.uleb128 0x14
	.string	"ctx"
	.byte	0x1
	.byte	0x71
	.4byte	0x524
	.4byte	.LLST10
	.uleb128 0x23
	.4byte	.LASF51
	.byte	0x1
	.byte	0x71
	.4byte	0xb2
	.4byte	.LLST11
	.uleb128 0x20
	.4byte	.LASF52
	.byte	0x1
	.byte	0x72
	.4byte	0xb2
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1b
	.4byte	.LVL62
	.4byte	0x142b
	.4byte	0x7c8
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL63
	.4byte	0x142b
	.4byte	0x7dc
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL64
	.4byte	0x1436
	.4byte	0x7fb
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 36
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x3f
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL65
	.4byte	0x1436
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 52
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x3f
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LASF68
	.byte	0x1
	.byte	0x81
	.4byte	0x25
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8b0
	.uleb128 0x14
	.string	"ctx"
	.byte	0x1
	.byte	0x81
	.4byte	0x524
	.4byte	.LLST12
	.uleb128 0x1f
	.string	"oid"
	.byte	0x1
	.byte	0x82
	.4byte	0xb2
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x20
	.4byte	.LASF69
	.byte	0x1
	.byte	0x82
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x20
	.4byte	.LASF70
	.byte	0x1
	.byte	0x83
	.4byte	0x25
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1f
	.string	"val"
	.byte	0x1
	.byte	0x84
	.4byte	0x265
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x20
	.4byte	.LASF71
	.byte	0x1
	.byte	0x84
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x1d
	.4byte	.LVL73
	.4byte	0x1441
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x72
	.sleb128 68
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LASF72
	.byte	0x1
	.byte	0x8a
	.4byte	0x25
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9cf
	.uleb128 0x14
	.string	"ctx"
	.byte	0x1
	.byte	0x8a
	.4byte	0x524
	.4byte	.LLST13
	.uleb128 0x23
	.4byte	.LASF73
	.byte	0x1
	.byte	0x8b
	.4byte	0x25
	.4byte	.LLST14
	.uleb128 0x20
	.4byte	.LASF74
	.byte	0x1
	.byte	0x8b
	.4byte	0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x15
	.string	"ret"
	.byte	0x1
	.byte	0x8d
	.4byte	0x25
	.4byte	.LLST15
	.uleb128 0x22
	.string	"buf"
	.byte	0x1
	.byte	0x8e
	.4byte	0x9cf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.string	"c"
	.byte	0x1
	.byte	0x8f
	.4byte	0xa5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x15
	.string	"len"
	.byte	0x1
	.byte	0x90
	.4byte	0x2c
	.4byte	.LLST16
	.uleb128 0x1b
	.4byte	.LVL77
	.4byte	0x144d
	.4byte	0x94c
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL81
	.4byte	0x1458
	.4byte	0x96b
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL85
	.4byte	0x13d3
	.4byte	0x98b
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL88
	.4byte	0x13de
	.4byte	0x9ab
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL91
	.4byte	0x817
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	0x4c
	.4byte	0x9df
	.uleb128 0x7
	.4byte	0x97
	.byte	0x8
	.byte	0
	.uleb128 0x21
	.4byte	.LASF75
	.byte	0x1
	.byte	0xaa
	.4byte	0x25
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb02
	.uleb128 0x14
	.string	"ctx"
	.byte	0x1
	.byte	0xaa
	.4byte	0x524
	.4byte	.LLST17
	.uleb128 0x15
	.string	"ret"
	.byte	0x1
	.byte	0xac
	.4byte	0x25
	.4byte	.LLST18
	.uleb128 0x22
	.string	"buf"
	.byte	0x1
	.byte	0xad
	.4byte	0xb02
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2112
	.uleb128 0x22
	.string	"c"
	.byte	0x1
	.byte	0xae
	.4byte	0xa5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x15
	.string	"len"
	.byte	0x1
	.byte	0xaf
	.4byte	0x2c
	.4byte	.LLST19
	.uleb128 0x1b
	.4byte	.LVL105
	.4byte	0x13e9
	.4byte	0xa61
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2112
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x814
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL106
	.4byte	0x1463
	.4byte	0xa7c
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2112
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL109
	.4byte	0x146f
	.4byte	0xa90
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL111
	.4byte	0x13d3
	.4byte	0xab7
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x9
	.byte	0x91
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0xa
	.2byte	0x840
	.byte	0x1c
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2112
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x44
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL114
	.4byte	0x13de
	.4byte	0xade
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x9
	.byte	0x91
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0xa
	.2byte	0x840
	.byte	0x1c
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2112
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL117
	.4byte	0x817
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	0x4c
	.4byte	0xb13
	.uleb128 0x24
	.4byte	0x97
	.2byte	0x813
	.byte	0
	.uleb128 0x21
	.4byte	.LASF76
	.byte	0x1
	.byte	0xc0
	.4byte	0x25
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc87
	.uleb128 0x14
	.string	"ctx"
	.byte	0x1
	.byte	0xc0
	.4byte	0x524
	.4byte	.LLST20
	.uleb128 0x15
	.string	"ret"
	.byte	0x1
	.byte	0xc2
	.4byte	0x25
	.4byte	.LLST21
	.uleb128 0x22
	.string	"buf"
	.byte	0x1
	.byte	0xc3
	.4byte	0xb02
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2112
	.uleb128 0x22
	.string	"c"
	.byte	0x1
	.byte	0xc4
	.4byte	0xa5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x15
	.string	"len"
	.byte	0x1
	.byte	0xc5
	.4byte	0x2c
	.4byte	.LLST22
	.uleb128 0x1b
	.4byte	.LVL127
	.4byte	0x13e9
	.4byte	0xb95
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2112
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x814
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL128
	.4byte	0x1463
	.4byte	0xbb0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2112
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL131
	.4byte	0x146f
	.4byte	0xbc4
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL133
	.4byte	0x13d3
	.4byte	0xbeb
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x9
	.byte	0x91
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0xa
	.2byte	0x840
	.byte	0x1c
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2112
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x44
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL136
	.4byte	0x13de
	.4byte	0xc13
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x9
	.byte	0x91
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0xa
	.2byte	0x840
	.byte	0x1c
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2112
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x80
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL139
	.4byte	0x13d3
	.4byte	0xc3b
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x9
	.byte	0x91
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0xa
	.2byte	0x840
	.byte	0x1c
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2112
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL142
	.4byte	0x13de
	.4byte	0xc63
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x9
	.byte	0x91
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0xa
	.2byte	0x840
	.byte	0x1c
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2112
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL145
	.4byte	0x817
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LASF77
	.byte	0x1
	.byte	0xdb
	.4byte	0x25
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd46
	.uleb128 0x14
	.string	"ctx"
	.byte	0x1
	.byte	0xdb
	.4byte	0x524
	.4byte	.LLST23
	.uleb128 0x20
	.4byte	.LASF78
	.byte	0x1
	.byte	0xdc
	.4byte	0x37
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x22
	.string	"buf"
	.byte	0x1
	.byte	0xde
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.string	"ku"
	.byte	0x1
	.byte	0xde
	.4byte	0x4c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x22
	.string	"c"
	.byte	0x1
	.byte	0xdf
	.4byte	0xa5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x15
	.string	"ret"
	.byte	0x1
	.byte	0xe0
	.4byte	0x25
	.4byte	.LLST24
	.uleb128 0x1b
	.4byte	.LVL158
	.4byte	0x147a
	.4byte	0xd17
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x37
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL160
	.4byte	0x817
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LASF79
	.byte	0x1
	.byte	0xf5
	.4byte	0x25
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdf8
	.uleb128 0x14
	.string	"ctx"
	.byte	0x1
	.byte	0xf5
	.4byte	0x524
	.4byte	.LLST25
	.uleb128 0x20
	.4byte	.LASF80
	.byte	0x1
	.byte	0xf6
	.4byte	0x4c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x22
	.string	"buf"
	.byte	0x1
	.byte	0xf8
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x22
	.string	"c"
	.byte	0x1
	.byte	0xf9
	.4byte	0xa5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x15
	.string	"ret"
	.byte	0x1
	.byte	0xfa
	.4byte	0x25
	.4byte	.LLST26
	.uleb128 0x1b
	.4byte	.LVL169
	.4byte	0x147a
	.4byte	0xdc9
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL171
	.4byte	0x817
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC13
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x39
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LASF81
	.byte	0x1
	.2byte	0x127
	.4byte	0x25
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12a4
	.uleb128 0x18
	.string	"ctx"
	.byte	0x1
	.2byte	0x127
	.4byte	0x524
	.4byte	.LLST27
	.uleb128 0x26
	.string	"buf"
	.byte	0x1
	.2byte	0x127
	.4byte	0xa5
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x27
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x127
	.4byte	0x2c
	.4byte	.LLST28
	.uleb128 0x19
	.4byte	.LASF82
	.byte	0x1
	.2byte	0x128
	.4byte	0x270
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x19
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x129
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x1a
	.string	"ret"
	.byte	0x1
	.2byte	0x12b
	.4byte	0x25
	.4byte	.LLST29
	.uleb128 0x28
	.4byte	.LASF84
	.byte	0x1
	.2byte	0x12c
	.4byte	0xb2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3216
	.uleb128 0x28
	.4byte	.LASF85
	.byte	0x1
	.2byte	0x12d
	.4byte	0x2c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3212
	.uleb128 0x29
	.string	"c"
	.byte	0x1
	.2byte	0x12e
	.4byte	0xa5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3208
	.uleb128 0x29
	.string	"c2"
	.byte	0x1
	.2byte	0x12e
	.4byte	0xa5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3204
	.uleb128 0x28
	.4byte	.LASF86
	.byte	0x1
	.2byte	0x12f
	.4byte	0x33b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3200
	.uleb128 0x29
	.string	"sig"
	.byte	0x1
	.2byte	0x130
	.4byte	0x12a4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3136
	.uleb128 0x28
	.4byte	.LASF87
	.byte	0x1
	.2byte	0x131
	.4byte	0x12b5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2112
	.uleb128 0x2a
	.4byte	.LASF88
	.byte	0x1
	.2byte	0x132
	.4byte	0x2c
	.4byte	.LLST30
	.uleb128 0x2a
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x132
	.4byte	0x2c
	.4byte	.LLST31
	.uleb128 0x2a
	.4byte	.LASF90
	.byte	0x1
	.2byte	0x132
	.4byte	0x2c
	.4byte	.LLST32
	.uleb128 0x28
	.4byte	.LASF91
	.byte	0x1
	.2byte	0x132
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1a
	.string	"len"
	.byte	0x1
	.2byte	0x133
	.4byte	0x2c
	.4byte	.LLST33
	.uleb128 0x2a
	.4byte	.LASF92
	.byte	0x1
	.2byte	0x134
	.4byte	0x213
	.4byte	.LLST34
	.uleb128 0x2b
	.4byte	.LVL179
	.4byte	0x1485
	.uleb128 0x1b
	.4byte	.LVL181
	.4byte	0x1491
	.4byte	0xf5d
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x77
	.sleb128 -3152
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3212
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL183
	.4byte	0x149d
	.4byte	0xf79
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3208
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x77
	.sleb128 -2048
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL186
	.4byte	0x13d3
	.4byte	0xf9b
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3208
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2112
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL189
	.4byte	0x13de
	.4byte	0xfbd
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3208
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2112
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL192
	.4byte	0x13d3
	.4byte	0xfdf
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3208
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2112
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL195
	.4byte	0x13de
	.4byte	0x1001
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3208
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2112
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0xa3
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL198
	.4byte	0x14a9
	.4byte	0x1016
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2112
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL202
	.4byte	0x14b5
	.4byte	0x1032
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3208
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2112
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL205
	.4byte	0x393
	.4byte	0x1059
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3208
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2112
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 52
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x3f
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL208
	.4byte	0x393
	.4byte	0x1080
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3208
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2112
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 36
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x3f
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL212
	.4byte	0x13d3
	.4byte	0x109c
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3208
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2112
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL215
	.4byte	0x13de
	.4byte	0x10be
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3208
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2112
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL218
	.4byte	0x14b5
	.4byte	0x10da
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3208
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2112
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL221
	.4byte	0x142b
	.4byte	0x10ee
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL222
	.4byte	0x14c1
	.4byte	0x1115
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3208
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2112
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL225
	.4byte	0x14cc
	.4byte	0x1137
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3208
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2112
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 4
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL228
	.4byte	0x144d
	.4byte	0x1153
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3208
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2112
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL232
	.4byte	0x13d3
	.4byte	0x116f
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3208
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2112
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL235
	.4byte	0x13de
	.4byte	0x1191
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3208
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2112
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0xa0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL238
	.4byte	0x13d3
	.4byte	0x11b3
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3208
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2112
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL241
	.4byte	0x13de
	.4byte	0x11d5
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3208
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2112
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL244
	.4byte	0x14d7
	.uleb128 0x1b
	.4byte	.LVL245
	.4byte	0x14e2
	.4byte	0x11f9
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3200
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL247
	.4byte	0x14ed
	.4byte	0x122f
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3200
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3136
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x3
	.byte	0x72
	.sleb128 3152
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL250
	.4byte	0x14f9
	.4byte	0x1251
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3204
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3136
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL253
	.4byte	0x1505
	.4byte	0x1265
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL255
	.4byte	0x13d3
	.4byte	0x1286
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3204
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL258
	.4byte	0x13de
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3204
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	0x4c
	.4byte	0x12b5
	.uleb128 0x24
	.4byte	0x97
	.2byte	0x3ff
	.byte	0
	.uleb128 0x6
	.4byte	0x4c
	.4byte	0x12c6
	.uleb128 0x24
	.4byte	0x97
	.2byte	0x7ff
	.byte	0
	.uleb128 0x25
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x1b2
	.4byte	0x25
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x13b7
	.uleb128 0x18
	.string	"crt"
	.byte	0x1
	.2byte	0x1b2
	.4byte	0x524
	.4byte	.LLST35
	.uleb128 0x26
	.string	"buf"
	.byte	0x1
	.2byte	0x1b2
	.4byte	0xa5
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x19
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x1b2
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x27
	.4byte	.LASF82
	.byte	0x1
	.2byte	0x1b3
	.4byte	0x270
	.4byte	.LLST36
	.uleb128 0x19
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x1b4
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x1a
	.string	"ret"
	.byte	0x1
	.2byte	0x1b6
	.4byte	0x25
	.4byte	.LLST37
	.uleb128 0x28
	.4byte	.LASF94
	.byte	0x1
	.2byte	0x1b7
	.4byte	0x13b7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4144
	.uleb128 0x28
	.4byte	.LASF95
	.byte	0x1
	.2byte	0x1b8
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1b
	.4byte	.LVL307
	.4byte	0xdf8
	.4byte	0x1387
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4144
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1000
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL311
	.4byte	0x150e
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC20
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC18
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	0x4c
	.4byte	0x13c8
	.uleb128 0x24
	.4byte	0x97
	.2byte	0xfff
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF96
	.4byte	.LASF96
	.byte	0xa
	.byte	0x47
	.uleb128 0x2c
	.4byte	.LASF97
	.4byte	.LASF97
	.byte	0xa
	.byte	0x2d
	.uleb128 0x2c
	.4byte	.LASF98
	.4byte	.LASF98
	.byte	0xa
	.byte	0x39
	.uleb128 0x2d
	.4byte	.LASF123
	.4byte	.LASF123
	.uleb128 0x2c
	.4byte	.LASF99
	.4byte	.LASF99
	.byte	0x5
	.byte	0xc4
	.uleb128 0x2c
	.4byte	.LASF100
	.4byte	.LASF100
	.byte	0x5
	.byte	0xcb
	.uleb128 0x2e
	.4byte	.LASF101
	.4byte	.LASF101
	.byte	0x6
	.2byte	0x150
	.uleb128 0x2e
	.4byte	.LASF102
	.4byte	.LASF102
	.byte	0xb
	.2byte	0x133
	.uleb128 0x2c
	.4byte	.LASF103
	.4byte	.LASF103
	.byte	0x5
	.byte	0xec
	.uleb128 0x2c
	.4byte	.LASF104
	.4byte	.LASF104
	.byte	0xc
	.byte	0x21
	.uleb128 0x2c
	.4byte	.LASF105
	.4byte	.LASF105
	.byte	0xc
	.byte	0x24
	.uleb128 0x2e
	.4byte	.LASF106
	.4byte	.LASF106
	.byte	0xb
	.2byte	0x134
	.uleb128 0x2c
	.4byte	.LASF107
	.4byte	.LASF107
	.byte	0xa
	.byte	0x98
	.uleb128 0x2c
	.4byte	.LASF108
	.4byte	.LASF108
	.byte	0xa
	.byte	0x8c
	.uleb128 0x2e
	.4byte	.LASF109
	.4byte	.LASF109
	.byte	0x8
	.2byte	0x258
	.uleb128 0x2c
	.4byte	.LASF110
	.4byte	.LASF110
	.byte	0xd
	.byte	0x7b
	.uleb128 0x2c
	.4byte	.LASF111
	.4byte	.LASF111
	.byte	0xa
	.byte	0xc4
	.uleb128 0x2e
	.4byte	.LASF112
	.4byte	.LASF112
	.byte	0x8
	.2byte	0x1ac
	.uleb128 0x2e
	.4byte	.LASF113
	.4byte	.LASF113
	.byte	0xe
	.2byte	0x1f8
	.uleb128 0x2e
	.4byte	.LASF114
	.4byte	.LASF114
	.byte	0xb
	.2byte	0x137
	.uleb128 0x2e
	.4byte	.LASF115
	.4byte	.LASF115
	.byte	0x8
	.2byte	0x21f
	.uleb128 0x2e
	.4byte	.LASF116
	.4byte	.LASF116
	.byte	0xb
	.2byte	0x139
	.uleb128 0x2c
	.4byte	.LASF117
	.4byte	.LASF117
	.byte	0xa
	.byte	0x7e
	.uleb128 0x2c
	.4byte	.LASF118
	.4byte	.LASF118
	.byte	0xa
	.byte	0x55
	.uleb128 0x2c
	.4byte	.LASF119
	.4byte	.LASF119
	.byte	0x7
	.byte	0x69
	.uleb128 0x2c
	.4byte	.LASF120
	.4byte	.LASF120
	.byte	0x7
	.byte	0xff
	.uleb128 0x2e
	.4byte	.LASF121
	.4byte	.LASF121
	.byte	0x8
	.2byte	0x159
	.uleb128 0x2e
	.4byte	.LASF122
	.4byte	.LASF122
	.byte	0xb
	.2byte	0x13b
	.uleb128 0x2d
	.4byte	.LASF124
	.4byte	.LASF124
	.uleb128 0x2c
	.4byte	.LASF125
	.4byte	.LASF125
	.byte	0xf
	.byte	0x78
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xf
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x5
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
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x26
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL4
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL5
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL36
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL5
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL8
	.4byte	.LVL15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL17
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL17
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL25
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL27
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL33
	.4byte	.LFE27
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL6
	.4byte	.LVL9
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL15
	.4byte	.LVL18
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL23
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL25
	.4byte	.LVL27
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LFE27
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL50
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL52
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL53
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL55
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL56
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL60
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL61
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL67
	.4byte	.LVL68
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL69
	.4byte	.LVL70
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL71
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL61
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL66
	.4byte	.LVL68
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL68
	.4byte	.LFE20
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL72
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL74
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL75
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL92
	.4byte	.LVL93
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL93
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL94
	.4byte	.LVL95
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL95
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL96
	.4byte	.LVL97
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL97
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL98
	.4byte	.LVL99
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL99
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL100
	.4byte	.LVL101
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL101
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL102
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL75
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL78
	.4byte	.LVL79
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL79
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL80
	.4byte	.LVL83
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL83
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL84
	.4byte	.LVL93
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL93
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL97
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL77
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL81
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL85
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL88
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL95
	.4byte	.LFE22
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL76
	.4byte	.LVL78
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL78
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL79
	.4byte	.LVL80
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL80
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL83
	.4byte	.LVL84
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL84
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL89
	.4byte	.LVL91-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL93
	.4byte	.LVL97
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL97
	.4byte	.LFE22
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL103
	.4byte	.LVL118
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL118
	.4byte	.LVL119
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL119
	.4byte	.LVL120
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL120
	.4byte	.LVL121
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL121
	.4byte	.LVL122
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL122
	.4byte	.LVL123
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL123
	.4byte	.LVL124
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL124
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL106
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL108
	.4byte	.LVL109-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL111
	.4byte	.LVL113
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL113
	.4byte	.LVL114
	.2byte	0x3
	.byte	0x73
	.sleb128 -20
	.byte	0x9f
	.4byte	.LVL114
	.4byte	.LVL116
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL119
	.4byte	.LFE23
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL104
	.4byte	.LVL107
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL107
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL108
	.4byte	.LVL109-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL110
	.4byte	.LVL112
	.2byte	0x2
	.byte	0x44
	.byte	0x9f
	.4byte	.LVL112
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL115
	.4byte	.LVL117-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL119
	.4byte	.LVL121
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL121
	.4byte	.LVL123
	.2byte	0x2
	.byte	0x44
	.byte	0x9f
	.4byte	.LVL123
	.4byte	.LFE23
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL125
	.4byte	.LVL146
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL146
	.4byte	.LVL147
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL147
	.4byte	.LVL148
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL148
	.4byte	.LVL149
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL149
	.4byte	.LVL150
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL150
	.4byte	.LVL151
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL151
	.4byte	.LVL152
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL152
	.4byte	.LVL153
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL153
	.4byte	.LVL154
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL154
	.4byte	.LVL155
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL155
	.4byte	.LVL156
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL156
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL128
	.4byte	.LVL130
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL130
	.4byte	.LVL131-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL133
	.4byte	.LVL135
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL135
	.4byte	.LVL136
	.2byte	0x3
	.byte	0x73
	.sleb128 -20
	.byte	0x9f
	.4byte	.LVL136
	.4byte	.LVL138
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL139
	.4byte	.LVL141
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL142
	.4byte	.LVL144
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL147
	.4byte	.LFE24
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL126
	.4byte	.LVL129
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL129
	.4byte	.LVL130
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL130
	.4byte	.LVL131-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL132
	.4byte	.LVL134
	.2byte	0x2
	.byte	0x44
	.byte	0x9f
	.4byte	.LVL134
	.4byte	.LVL143
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL143
	.4byte	.LVL145-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL147
	.4byte	.LVL149
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL149
	.4byte	.LVL151
	.2byte	0x2
	.byte	0x44
	.byte	0x9f
	.4byte	.LVL151
	.4byte	.LFE24
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL157
	.4byte	.LVL161
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL161
	.4byte	.LVL162
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL162
	.4byte	.LVL163
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL163
	.4byte	.LVL164
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL164
	.4byte	.LVL165
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL165
	.4byte	.LVL166
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL166
	.4byte	.LVL167
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL167
	.4byte	.LFE25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL158
	.4byte	.LVL159
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL160
	.4byte	.LVL162
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL164
	.4byte	.LFE25
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL168
	.4byte	.LVL172
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL172
	.4byte	.LVL173
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL173
	.4byte	.LVL174
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL174
	.4byte	.LVL175
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL175
	.4byte	.LVL176
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL176
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL169
	.4byte	.LVL170
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL171
	.4byte	.LFE26
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL177
	.4byte	.LVL246
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL246
	.4byte	.LVL260
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL260
	.4byte	.LVL261
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL261
	.4byte	.LVL262
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL262
	.4byte	.LVL263
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL263
	.4byte	.LVL264
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL264
	.4byte	.LVL265
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL265
	.4byte	.LVL266
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL266
	.4byte	.LVL267
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL267
	.4byte	.LVL268
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL268
	.4byte	.LVL269
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL269
	.4byte	.LVL270
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL270
	.4byte	.LVL271
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL271
	.4byte	.LVL272
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL272
	.4byte	.LVL273
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL273
	.4byte	.LVL274
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL274
	.4byte	.LVL275
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL275
	.4byte	.LVL276
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL276
	.4byte	.LVL277
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL277
	.4byte	.LVL278
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL278
	.4byte	.LVL279
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL279
	.4byte	.LVL280
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL280
	.4byte	.LVL281
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL281
	.4byte	.LVL282
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL282
	.4byte	.LVL283
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL283
	.4byte	.LVL284
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL284
	.4byte	.LVL285
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL285
	.4byte	.LVL286
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL286
	.4byte	.LVL287
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL287
	.4byte	.LVL288
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL288
	.4byte	.LVL289
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL289
	.4byte	.LVL290
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL290
	.4byte	.LVL291
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL291
	.4byte	.LVL292
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL292
	.4byte	.LVL293
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL293
	.4byte	.LVL294
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL294
	.4byte	.LVL295
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL295
	.4byte	.LVL296
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL296
	.4byte	.LVL297
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL297
	.4byte	.LVL298
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL298
	.4byte	.LVL299
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL299
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL177
	.4byte	.LVL248
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL248
	.4byte	.LVL260
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL260
	.4byte	.LVL300
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL300
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL181
	.4byte	.LVL182
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL184
	.4byte	.LVL186
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL186
	.4byte	.LVL188
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL189
	.4byte	.LVL191
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL192
	.4byte	.LVL194
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL195
	.4byte	.LVL197
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL198
	.4byte	.LVL201
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL202
	.4byte	.LVL204
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL206
	.4byte	.LVL208
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL208
	.4byte	.LVL211
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL212
	.4byte	.LVL214
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL215
	.4byte	.LVL217
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL218
	.4byte	.LVL220
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL222
	.4byte	.LVL224
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL225
	.4byte	.LVL227
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL228
	.4byte	.LVL231
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL231
	.4byte	.LVL232-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL232
	.4byte	.LVL234
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL235
	.4byte	.LVL237
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL238
	.4byte	.LVL240
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL241
	.4byte	.LVL243
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL247
	.4byte	.LVL249
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL251
	.4byte	.LVL254
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL255
	.4byte	.LVL257
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL258
	.4byte	.LVL262
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL262
	.4byte	.LVL264
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL264
	.4byte	.LVL276
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL276
	.4byte	.LVL278
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL278
	.4byte	.LVL300
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL300
	.4byte	.LVL301
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL302
	.4byte	.LVL305
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL305
	.4byte	.LFE28
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL178
	.4byte	.LVL207
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL207
	.4byte	.LVL209
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL209
	.4byte	.LVL212-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL226
	.4byte	.LVL229
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL229
	.4byte	.LVL231
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL231
	.4byte	.LVL232-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL260
	.4byte	.LVL278
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL278
	.4byte	.LVL280
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL290
	.4byte	.LVL292
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL178
	.4byte	.LVL199
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL199
	.4byte	.LVL201
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL260
	.4byte	.LVL274
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL178
	.4byte	.LVL252
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL252
	.4byte	.LVL254
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL260
	.4byte	.LVL300
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL300
	.4byte	.LVL301
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL178
	.4byte	.LVL185
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL185
	.4byte	.LVL203
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL203
	.4byte	.LVL210
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL210
	.4byte	.LVL219
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL219
	.4byte	.LVL223
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL223
	.4byte	.LVL254
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL254
	.4byte	.LVL259
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL260
	.4byte	.LVL264
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL264
	.4byte	.LVL276
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL276
	.4byte	.LVL280
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL280
	.4byte	.LVL286
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL286
	.4byte	.LVL288
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL288
	.4byte	.LVL302
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL302
	.4byte	.LVL303
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL304
	.4byte	.LVL305
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL179
	.4byte	.LVL181-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL306
	.4byte	.LVL309
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL309
	.4byte	.LVL312
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL312
	.4byte	.LVL313
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL313
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL306
	.4byte	.LVL308
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL308
	.4byte	.LVL312
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL312
	.4byte	.LVL314
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL314
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL307
	.4byte	.LVL310
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL310
	.4byte	.LVL311-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL311
	.4byte	.LFE29
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0xb4
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
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
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB27
	.4byte	.LFE27
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
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF126:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF90:
	.string	"sig_and_oid_len"
.LASF46:
	.string	"subject_key"
.LASF104:
	.string	"strlen"
.LASF34:
	.string	"MBEDTLS_PK_ECKEY_DH"
.LASF67:
	.string	"mbedtls_x509write_crt_set_validity"
.LASF30:
	.string	"mbedtls_md_type_t"
.LASF0:
	.string	"unsigned int"
.LASF18:
	.string	"next"
.LASF44:
	.string	"version"
.LASF129:
	.string	"mbedtls_zeroize"
.LASF48:
	.string	"subject"
.LASF66:
	.string	"mbedtls_x509write_crt_set_serial"
.LASF84:
	.string	"sig_oid"
.LASF98:
	.string	"mbedtls_asn1_write_tag"
.LASF62:
	.string	"subject_name"
.LASF50:
	.string	"md_alg"
.LASF32:
	.string	"MBEDTLS_PK_RSA"
.LASF25:
	.string	"MBEDTLS_MD_SHA224"
.LASF56:
	.string	"mbedtls_x509write_crt_init"
.LASF122:
	.string	"mbedtls_x509_write_sig"
.LASF95:
	.string	"olen"
.LASF9:
	.string	"uint32_t"
.LASF97:
	.string	"mbedtls_asn1_write_len"
.LASF112:
	.string	"mbedtls_pk_get_type"
.LASF42:
	.string	"mbedtls_pk_context"
.LASF74:
	.string	"max_pathlen"
.LASF8:
	.string	"long long unsigned int"
.LASF105:
	.string	"strncpy"
.LASF28:
	.string	"MBEDTLS_MD_SHA512"
.LASF33:
	.string	"MBEDTLS_PK_ECKEY"
.LASF83:
	.string	"p_rng"
.LASF77:
	.string	"mbedtls_x509write_crt_set_key_usage"
.LASF79:
	.string	"mbedtls_x509write_crt_set_ns_cert_type"
.LASF78:
	.string	"key_usage"
.LASF36:
	.string	"MBEDTLS_PK_RSA_ALT"
.LASF14:
	.string	"mbedtls_mpi_uint"
.LASF5:
	.string	"size_t"
.LASF118:
	.string	"mbedtls_asn1_write_mpi"
.LASF19:
	.string	"next_merged"
.LASF26:
	.string	"MBEDTLS_MD_SHA256"
.LASF102:
	.string	"mbedtls_x509_string_to_names"
.LASF64:
	.string	"mbedtls_x509write_crt_set_issuer_name"
.LASF35:
	.string	"MBEDTLS_PK_ECDSA"
.LASF31:
	.string	"MBEDTLS_PK_NONE"
.LASF13:
	.string	"char"
.LASF68:
	.string	"mbedtls_x509write_crt_set_extension"
.LASF61:
	.string	"mbedtls_x509write_crt_set_issuer_key"
.LASF59:
	.string	"mbedtls_x509write_crt_set_md_alg"
.LASF103:
	.string	"mbedtls_mpi_copy"
.LASF100:
	.string	"mbedtls_mpi_free"
.LASF38:
	.string	"mbedtls_pk_type_t"
.LASF120:
	.string	"mbedtls_md"
.LASF69:
	.string	"oid_len"
.LASF111:
	.string	"mbedtls_asn1_write_bitstring"
.LASF70:
	.string	"critical"
.LASF49:
	.string	"issuer"
.LASF116:
	.string	"mbedtls_x509_write_names"
.LASF107:
	.string	"mbedtls_asn1_write_int"
.LASF108:
	.string	"mbedtls_asn1_write_bool"
.LASF109:
	.string	"mbedtls_pk_write_pubkey"
.LASF92:
	.string	"pk_alg"
.LASF80:
	.string	"ns_cert_type"
.LASF7:
	.string	"long long int"
.LASF75:
	.string	"mbedtls_x509write_crt_set_subject_key_identifier"
.LASF47:
	.string	"issuer_key"
.LASF53:
	.string	"extensions"
.LASF20:
	.string	"MBEDTLS_MD_NONE"
.LASF96:
	.string	"mbedtls_asn1_write_raw_buffer"
.LASF123:
	.string	"memset"
.LASF37:
	.string	"MBEDTLS_PK_RSASSA_PSS"
.LASF124:
	.string	"memcpy"
.LASF55:
	.string	"size"
.LASF114:
	.string	"mbedtls_x509_write_extensions"
.LASF106:
	.string	"mbedtls_x509_set_extension"
.LASF94:
	.string	"output_buf"
.LASF39:
	.string	"mbedtls_pk_info_t"
.LASF60:
	.string	"mbedtls_x509write_crt_set_subject_key"
.LASF93:
	.string	"mbedtls_x509write_crt_pem"
.LASF87:
	.string	"tmp_buf"
.LASF43:
	.string	"mbedtls_x509write_cert"
.LASF72:
	.string	"mbedtls_x509write_crt_set_basic_constraints"
.LASF125:
	.string	"mbedtls_pem_write_buffer"
.LASF88:
	.string	"sub_len"
.LASF91:
	.string	"sig_len"
.LASF117:
	.string	"mbedtls_asn1_write_algorithm_identifier"
.LASF40:
	.string	"pk_info"
.LASF4:
	.string	"short int"
.LASF10:
	.string	"long int"
.LASF86:
	.string	"hash"
.LASF16:
	.string	"mbedtls_asn1_buf"
.LASF71:
	.string	"val_len"
.LASF128:
	.string	"C:\\\\esp\\\\ArkPOS2-esp\\\\build\\\\mbedtls"
.LASF57:
	.string	"mbedtls_x509write_crt_free"
.LASF82:
	.string	"f_rng"
.LASF76:
	.string	"mbedtls_x509write_crt_set_authority_key_identifier"
.LASF54:
	.string	"start"
.LASF24:
	.string	"MBEDTLS_MD_SHA1"
.LASF65:
	.string	"issuer_name"
.LASF21:
	.string	"MBEDTLS_MD_MD2"
.LASF22:
	.string	"MBEDTLS_MD_MD4"
.LASF23:
	.string	"MBEDTLS_MD_MD5"
.LASF11:
	.string	"sizetype"
.LASF12:
	.string	"long unsigned int"
.LASF58:
	.string	"mbedtls_x509write_crt_set_version"
.LASF63:
	.string	"mbedtls_x509write_crt_set_subject_name"
.LASF45:
	.string	"serial"
.LASF127:
	.string	"C:/esp/esp-idf/components/mbedtls/library/x509write_crt.c"
.LASF41:
	.string	"pk_ctx"
.LASF3:
	.string	"unsigned char"
.LASF6:
	.string	"__uint32_t"
.LASF119:
	.string	"mbedtls_md_info_from_type"
.LASF85:
	.string	"sig_oid_len"
.LASF101:
	.string	"mbedtls_asn1_free_named_data_list"
.LASF52:
	.string	"not_after"
.LASF81:
	.string	"mbedtls_x509write_crt_der"
.LASF51:
	.string	"not_before"
.LASF115:
	.string	"mbedtls_pk_write_pubkey_der"
.LASF17:
	.string	"mbedtls_asn1_named_data"
.LASF130:
	.string	"x509_write_time"
.LASF2:
	.string	"signed char"
.LASF15:
	.string	"mbedtls_mpi"
.LASF29:
	.string	"MBEDTLS_MD_RIPEMD160"
.LASF1:
	.string	"short unsigned int"
.LASF27:
	.string	"MBEDTLS_MD_SHA384"
.LASF121:
	.string	"mbedtls_pk_sign"
.LASF89:
	.string	"pub_len"
.LASF113:
	.string	"mbedtls_oid_get_oid_by_sig_alg"
.LASF73:
	.string	"is_ca"
.LASF110:
	.string	"mbedtls_sha1"
.LASF99:
	.string	"mbedtls_mpi_init"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-61-gab8375a) 5.2.0"
