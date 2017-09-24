	.file	"asn1parse.c"
	.text
.Ltext0:
	.section	.text.mbedtls_zeroize,"ax",@progbits
	.align	4
	.type	mbedtls_zeroize, @function
mbedtls_zeroize:
.LFB0:
	.file 1 "C:/esp/esp-idf/components/mbedtls/library/asn1parse.c"
	.loc 1 47 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LVL1:
	.loc 1 48 0
	j	.L2
.LVL2:
.L3:
	.loc 1 48 0 is_stmt 0 discriminator 3
	movi.n	a3, 0
	memw
	s8i	a3, a2, 0
	mov.n	a3, a8
	addi.n	a2, a2, 1
.LVL3:
.L2:
	.loc 1 48 0 discriminator 1
	addi.n	a8, a3, -1
.LVL4:
	bnez.n	a3, .L3
	.loc 1 49 0 is_stmt 1
	retw.n
.LFE0:
	.size	mbedtls_zeroize, .-mbedtls_zeroize
	.section	.text.mbedtls_asn1_get_len,"ax",@progbits
	.align	4
	.global	mbedtls_asn1_get_len
	.type	mbedtls_asn1_get_len, @function
mbedtls_asn1_get_len:
.LFB1:
	.loc 1 57 0
.LVL5:
	entry	sp, 32
.LCFI1:
	.loc 1 58 0
	l32i.n	a8, a2, 0
	sub	a10, a3, a8
	blti	a10, 1, .L13
	.loc 1 61 0
	l8ui	a9, a8, 0
	sext	a11, a9, 7
	bltz	a11, .L6
	.loc 1 62 0
	addi.n	a9, a8, 1
	s32i.n	a9, a2, 0
	l8ui	a8, a8, 0
	s32i.n	a8, a4, 0
	j	.L7
.L6:
	.loc 1 65 0
	extui	a9, a9, 0, 7
	beqi	a9, 2, .L8
	bgeui	a9, 3, .L9
	beqi	a9, 1, .L10
	j	.L14
.L9:
	beqi	a9, 3, .L11
	beqi	a9, 4, .L12
	j	.L14
.L10:
	.loc 1 68 0
	blti	a10, 2, .L15
	.loc 1 71 0
	l8ui	a8, a8, 1
	s32i.n	a8, a4, 0
	.loc 1 72 0
	l32i.n	a8, a2, 0
	addi.n	a8, a8, 2
	s32i.n	a8, a2, 0
	.loc 1 73 0
	j	.L7
.L8:
	.loc 1 76 0
	blti	a10, 3, .L16
	.loc 1 79 0
	l8ui	a9, a8, 1
	slli	a9, a9, 8
	l8ui	a8, a8, 2
	or	a8, a8, a9
	s32i.n	a8, a4, 0
	.loc 1 80 0
	l32i.n	a8, a2, 0
	addi.n	a8, a8, 3
	s32i.n	a8, a2, 0
	.loc 1 81 0
	j	.L7
.L11:
	.loc 1 84 0
	blti	a10, 4, .L17
	.loc 1 87 0
	l8ui	a9, a8, 1
	slli	a10, a9, 16
	.loc 1 88 0
	l8ui	a9, a8, 2
	slli	a9, a9, 8
	.loc 1 87 0
	or	a9, a10, a9
	.loc 1 88 0
	l8ui	a8, a8, 3
	or	a8, a8, a9
	.loc 1 87 0
	s32i.n	a8, a4, 0
	.loc 1 89 0
	l32i.n	a8, a2, 0
	addi.n	a8, a8, 4
	s32i.n	a8, a2, 0
	.loc 1 90 0
	j	.L7
.L12:
	.loc 1 93 0
	blti	a10, 5, .L18
	.loc 1 96 0
	l8ui	a10, a8, 1
	slli	a10, a10, 24
	l8ui	a9, a8, 2
	slli	a9, a9, 16
	or	a10, a10, a9
	.loc 1 97 0
	l8ui	a9, a8, 3
	slli	a9, a9, 8
	.loc 1 96 0
	or	a9, a10, a9
	.loc 1 97 0
	l8ui	a8, a8, 4
	or	a8, a8, a9
	.loc 1 96 0
	s32i.n	a8, a4, 0
	.loc 1 98 0
	l32i.n	a8, a2, 0
	addi.n	a8, a8, 5
	s32i.n	a8, a2, 0
.L7:
	.loc 1 106 0
	l32i.n	a4, a4, 0
.LVL6:
	l32i.n	a2, a2, 0
.LVL7:
	sub	a3, a3, a2
.LVL8:
	bgeu	a3, a4, .L19
	.loc 1 107 0
	movi	a2, -0x60
	retw.n
.LVL9:
.L13:
	.loc 1 59 0
	movi	a2, -0x60
.LVL10:
	retw.n
.LVL11:
.L14:
	.loc 1 102 0
	movi	a2, -0x64
.LVL12:
	retw.n
.LVL13:
.L15:
	.loc 1 69 0
	movi	a2, -0x60
.LVL14:
	retw.n
.LVL15:
.L16:
	.loc 1 77 0
	movi	a2, -0x60
.LVL16:
	retw.n
.LVL17:
.L17:
	.loc 1 85 0
	movi	a2, -0x60
.LVL18:
	retw.n
.LVL19:
.L18:
	.loc 1 94 0
	movi	a2, -0x60
.LVL20:
	retw.n
.LVL21:
.L19:
	.loc 1 109 0
	movi.n	a2, 0
	.loc 1 110 0
	retw.n
.LFE1:
	.size	mbedtls_asn1_get_len, .-mbedtls_asn1_get_len
	.section	.text.mbedtls_asn1_get_tag,"ax",@progbits
	.align	4
	.global	mbedtls_asn1_get_tag
	.type	mbedtls_asn1_get_tag, @function
mbedtls_asn1_get_tag:
.LFB2:
	.loc 1 115 0
.LVL22:
	entry	sp, 32
.LCFI2:
	.loc 1 116 0
	l32i.n	a8, a2, 0
	sub	a9, a3, a8
	blti	a9, 1, .L22
	.loc 1 119 0
	l8ui	a9, a8, 0
	bne	a9, a5, .L23
	.loc 1 122 0
	addi.n	a8, a8, 1
	s32i.n	a8, a2, 0
	.loc 1 124 0
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	mbedtls_asn1_get_len
.LVL23:
	mov.n	a2, a10
.LVL24:
	retw.n
.LVL25:
.L22:
	.loc 1 117 0
	movi	a2, -0x60
.LVL26:
	retw.n
.LVL27:
.L23:
	.loc 1 120 0
	movi	a2, -0x62
.LVL28:
	.loc 1 125 0
	retw.n
.LFE2:
	.size	mbedtls_asn1_get_tag, .-mbedtls_asn1_get_tag
	.section	.text.mbedtls_asn1_get_bool,"ax",@progbits
	.align	4
	.global	mbedtls_asn1_get_bool
	.type	mbedtls_asn1_get_bool, @function
mbedtls_asn1_get_bool:
.LFB3:
	.loc 1 130 0
.LVL29:
	entry	sp, 48
.LCFI3:
	.loc 1 134 0
	movi.n	a13, 1
	mov.n	a12, sp
	mov.n	a11, a3
	mov.n	a10, a2
	call8	mbedtls_asn1_get_tag
.LVL30:
	bnez.n	a10, .L26
	.loc 1 137 0
	l32i.n	a8, sp, 0
	bnei	a8, 1, .L27
	.loc 1 140 0
	l32i.n	a8, a2, 0
	l8ui	a8, a8, 0
	movi.n	a9, 1
	moveqz	a9, a10, a8
	s32i.n	a9, a4, 0
	.loc 1 141 0
	l32i.n	a8, a2, 0
	addi.n	a8, a8, 1
	s32i.n	a8, a2, 0
	.loc 1 143 0
	mov.n	a2, a10
.LVL31:
	retw.n
.LVL32:
.L26:
	.loc 1 135 0
	mov.n	a2, a10
.LVL33:
	retw.n
.LVL34:
.L27:
	.loc 1 138 0
	movi	a2, -0x64
.LVL35:
	.loc 1 144 0
	retw.n
.LFE3:
	.size	mbedtls_asn1_get_bool, .-mbedtls_asn1_get_bool
	.section	.text.mbedtls_asn1_get_int,"ax",@progbits
	.align	4
	.global	mbedtls_asn1_get_int
	.type	mbedtls_asn1_get_int, @function
mbedtls_asn1_get_int:
.LFB4:
	.loc 1 149 0
.LVL36:
	entry	sp, 48
.LCFI4:
	.loc 1 153 0
	movi.n	a13, 2
	mov.n	a12, sp
	mov.n	a11, a3
	mov.n	a10, a2
	call8	mbedtls_asn1_get_tag
.LVL37:
	bnez.n	a10, .L32
	.loc 1 156 0
	l32i.n	a8, sp, 0
	addi.n	a8, a8, -1
	bgeui	a8, 4, .L33
	.loc 1 156 0 is_stmt 0 discriminator 1
	l32i.n	a8, a2, 0
	l8ui	a8, a8, 0
	sext	a8, a8, 7
	bltz	a8, .L34
	.loc 1 159 0 is_stmt 1
	movi.n	a8, 0
	s32i.n	a8, a4, 0
	.loc 1 161 0
	j	.L30
.L31:
	.loc 1 163 0
	l32i.n	a8, a4, 0
	slli	a8, a8, 8
	l32i.n	a9, a2, 0
	l8ui	a9, a9, 0
	or	a8, a9, a8
	s32i.n	a8, a4, 0
	.loc 1 164 0
	l32i.n	a8, a2, 0
	addi.n	a8, a8, 1
	s32i.n	a8, a2, 0
.L30:
	.loc 1 161 0
	l32i.n	a8, sp, 0
	addi.n	a9, a8, -1
	s32i.n	a9, sp, 0
	bnez.n	a8, .L31
	.loc 1 167 0
	movi.n	a2, 0
.LVL38:
	retw.n
.LVL39:
.L32:
	.loc 1 154 0
	mov.n	a2, a10
.LVL40:
	retw.n
.LVL41:
.L33:
	.loc 1 157 0
	movi	a2, -0x64
.LVL42:
	retw.n
.LVL43:
.L34:
	movi	a2, -0x64
.LVL44:
	.loc 1 168 0
	retw.n
.LFE4:
	.size	mbedtls_asn1_get_int, .-mbedtls_asn1_get_int
	.section	.text.mbedtls_asn1_get_mpi,"ax",@progbits
	.align	4
	.global	mbedtls_asn1_get_mpi
	.type	mbedtls_asn1_get_mpi, @function
mbedtls_asn1_get_mpi:
.LFB5:
	.loc 1 174 0
.LVL45:
	entry	sp, 48
.LCFI5:
	.loc 1 178 0
	movi.n	a13, 2
	mov.n	a12, sp
	mov.n	a11, a3
	mov.n	a10, a2
	call8	mbedtls_asn1_get_tag
.LVL46:
	bnez.n	a10, .L37
	.loc 1 181 0
	l32i.n	a12, sp, 0
	l32i.n	a11, a2, 0
	mov.n	a10, a4
.LVL47:
	call8	mbedtls_mpi_read_binary
.LVL48:
	.loc 1 183 0
	l32i.n	a4, a2, 0
.LVL49:
	l32i.n	a8, sp, 0
	add.n	a8, a4, a8
	s32i.n	a8, a2, 0
	.loc 1 185 0
	mov.n	a2, a10
.LVL50:
	retw.n
.LVL51:
.L37:
	.loc 1 179 0
	mov.n	a2, a10
.LVL52:
	.loc 1 186 0
	retw.n
.LFE5:
	.size	mbedtls_asn1_get_mpi, .-mbedtls_asn1_get_mpi
	.section	.text.mbedtls_asn1_get_bitstring,"ax",@progbits
	.align	4
	.global	mbedtls_asn1_get_bitstring
	.type	mbedtls_asn1_get_bitstring, @function
mbedtls_asn1_get_bitstring:
.LFB6:
	.loc 1 191 0
.LVL53:
	entry	sp, 32
.LCFI6:
	.loc 1 195 0
	movi.n	a13, 3
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	mbedtls_asn1_get_tag
.LVL54:
	bnez.n	a10, .L40
	.loc 1 199 0
	l32i.n	a8, a4, 0
	beqz.n	a8, .L41
	.loc 1 201 0
	addi.n	a8, a8, -1
	s32i.n	a8, a4, 0
	.loc 1 204 0
	l32i.n	a8, a2, 0
	l8ui	a8, a8, 0
	s8i	a8, a4, 4
	.loc 1 205 0
	bgeui	a8, 8, .L42
	.loc 1 207 0
	l32i.n	a8, a2, 0
	addi.n	a8, a8, 1
	s32i.n	a8, a2, 0
	.loc 1 210 0
	s32i.n	a8, a4, 8
	.loc 1 211 0
	l32i.n	a8, a2, 0
	l32i.n	a4, a4, 0
.LVL55:
	add.n	a4, a8, a4
	s32i.n	a4, a2, 0
	.loc 1 213 0
	beq	a3, a4, .L43
	.loc 1 214 0
	movi	a2, -0x66
.LVL56:
	retw.n
.LVL57:
.L40:
	.loc 1 196 0
	mov.n	a2, a10
.LVL58:
	retw.n
.LVL59:
.L41:
	.loc 1 200 0
	movi	a2, -0x60
.LVL60:
	retw.n
.LVL61:
.L42:
	.loc 1 206 0
	movi	a2, -0x64
.LVL62:
	retw.n
.LVL63:
.L43:
	.loc 1 216 0
	movi.n	a2, 0
.LVL64:
	.loc 1 217 0
	retw.n
.LFE6:
	.size	mbedtls_asn1_get_bitstring, .-mbedtls_asn1_get_bitstring
	.section	.text.mbedtls_asn1_get_bitstring_null,"ax",@progbits
	.align	4
	.global	mbedtls_asn1_get_bitstring_null
	.type	mbedtls_asn1_get_bitstring_null, @function
mbedtls_asn1_get_bitstring_null:
.LFB7:
	.loc 1 224 0
.LVL65:
	entry	sp, 32
.LCFI7:
	.loc 1 227 0
	movi.n	a13, 3
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	mbedtls_asn1_get_tag
.LVL66:
	bnez.n	a10, .L46
	.loc 1 230 0
	l32i.n	a8, a4, 0
	addi.n	a9, a8, -1
	s32i.n	a9, a4, 0
	bltui	a8, 2, .L47
	.loc 1 230 0 is_stmt 0 discriminator 1
	l32i.n	a4, a2, 0
.LVL67:
	addi.n	a8, a4, 1
	s32i.n	a8, a2, 0
	l8ui	a2, a4, 0
.LVL68:
	bnez.n	a2, .L48
	retw.n
.LVL69:
.L46:
	.loc 1 228 0 is_stmt 1
	mov.n	a2, a10
.LVL70:
	retw.n
.LVL71:
.L47:
	.loc 1 231 0
	movi	a2, -0x68
.LVL72:
	retw.n
.LVL73:
.L48:
	movi	a2, -0x68
	.loc 1 234 0
	retw.n
.LFE7:
	.size	mbedtls_asn1_get_bitstring_null, .-mbedtls_asn1_get_bitstring_null
	.section	.text.mbedtls_asn1_get_sequence_of,"ax",@progbits
	.align	4
	.global	mbedtls_asn1_get_sequence_of
	.type	mbedtls_asn1_get_sequence_of, @function
mbedtls_asn1_get_sequence_of:
.LFB8:
	.loc 1 245 0
.LVL74:
	entry	sp, 48
.LCFI8:
	.loc 1 251 0
	movi.n	a13, 0x30
	mov.n	a12, sp
	mov.n	a11, a3
	mov.n	a10, a2
	call8	mbedtls_asn1_get_tag
.LVL75:
	bnez.n	a10, .L54
	.loc 1 255 0
	l32i.n	a9, a2, 0
	l32i.n	a8, sp, 0
	add.n	a8, a9, a8
	beq	a3, a8, .L52
	j	.L55
.LVL76:
.L53:
	.loc 1 261 0
	l8ui	a8, a8, 0
	s32i.n	a8, a4, 0
	.loc 1 263 0
	mov.n	a13, a5
	addi.n	a12, a4, 4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	mbedtls_asn1_get_tag
.LVL77:
	bnez.n	a10, .L56
	.loc 1 266 0
	l32i.n	a8, a2, 0
	s32i.n	a8, a4, 8
	.loc 1 267 0
	l32i.n	a9, a2, 0
	l32i.n	a8, a4, 4
	add.n	a8, a9, a8
	s32i.n	a8, a2, 0
	.loc 1 270 0
	bgeu	a8, a3, .L52
	.loc 1 272 0
	movi.n	a11, 0x10
	movi.n	a10, 1
.LVL78:
	call8	calloc
.LVL79:
	s32i.n	a10, a4, 12
	.loc 1 275 0
	beqz.n	a10, .L57
	.loc 1 278 0
	mov.n	a4, a10
.LVL80:
.L52:
	.loc 1 258 0
	l32i.n	a8, a2, 0
	bltu	a8, a3, .L53
	.loc 1 283 0
	movi.n	a5, 0
.LVL81:
	s32i.n	a5, a4, 12
	.loc 1 285 0
	l32i.n	a2, a2, 0
.LVL82:
	beq	a3, a2, .L58
	.loc 1 286 0
	movi	a2, -0x66
	retw.n
.LVL83:
.L54:
	.loc 1 253 0
	mov.n	a2, a10
.LVL84:
	retw.n
.LVL85:
.L55:
	.loc 1 256 0
	movi	a2, -0x66
.LVL86:
	retw.n
.LVL87:
.L56:
	.loc 1 264 0
	mov.n	a2, a10
.LVL88:
	retw.n
.LVL89:
.L57:
	.loc 1 276 0
	movi	a2, -0x6a
.LVL90:
	retw.n
.LVL91:
.L58:
	.loc 1 288 0
	movi.n	a2, 0
	.loc 1 289 0
	retw.n
.LFE8:
	.size	mbedtls_asn1_get_sequence_of, .-mbedtls_asn1_get_sequence_of
	.section	.text.mbedtls_asn1_get_alg,"ax",@progbits
	.align	4
	.global	mbedtls_asn1_get_alg
	.type	mbedtls_asn1_get_alg, @function
mbedtls_asn1_get_alg:
.LFB9:
	.loc 1 294 0
.LVL92:
	entry	sp, 48
.LCFI9:
	.loc 1 298 0
	movi.n	a13, 0x30
	mov.n	a12, sp
	mov.n	a11, a3
	mov.n	a10, a2
	call8	mbedtls_asn1_get_tag
.LVL93:
	bnez.n	a10, .L62
	.loc 1 302 0
	l32i.n	a8, a2, 0
	sub	a3, a3, a8
.LVL94:
	blti	a3, 1, .L63
	.loc 1 305 0
	l8ui	a3, a8, 0
	s32i.n	a3, a4, 0
	.loc 1 306 0
	l32i.n	a8, a2, 0
	l32i.n	a3, sp, 0
	add.n	a3, a8, a3
.LVL95:
	.loc 1 308 0
	movi.n	a13, 6
	addi.n	a12, a4, 4
	mov.n	a11, a3
	mov.n	a10, a2
.LVL96:
	call8	mbedtls_asn1_get_tag
.LVL97:
	bnez.n	a10, .L64
	.loc 1 311 0
	l32i.n	a8, a2, 0
	s32i.n	a8, a4, 8
	.loc 1 312 0
	l32i.n	a8, a2, 0
	l32i.n	a4, a4, 4
.LVL98:
	add.n	a4, a8, a4
	s32i.n	a4, a2, 0
	.loc 1 314 0
	bne	a3, a4, .L61
	.loc 1 316 0
	movi.n	a11, 0xc
	mov.n	a10, a5
.LVL99:
	call8	mbedtls_zeroize
.LVL100:
	.loc 1 317 0
	movi.n	a2, 0
.LVL101:
	retw.n
.LVL102:
.L61:
	.loc 1 320 0
	l8ui	a4, a4, 0
	s32i.n	a4, a5, 0
	.loc 1 321 0
	l32i.n	a4, a2, 0
	addi.n	a4, a4, 1
	s32i.n	a4, a2, 0
	.loc 1 323 0
	addi.n	a12, a5, 4
	mov.n	a11, a3
	mov.n	a10, a2
.LVL103:
	call8	mbedtls_asn1_get_len
.LVL104:
	bnez.n	a10, .L65
	.loc 1 326 0
	l32i.n	a4, a2, 0
	s32i.n	a4, a5, 8
	.loc 1 327 0
	l32i.n	a8, a2, 0
	l32i.n	a4, a5, 4
	add.n	a4, a8, a4
	s32i.n	a4, a2, 0
	.loc 1 329 0
	beq	a3, a4, .L66
	.loc 1 330 0
	movi	a2, -0x66
.LVL105:
	retw.n
.LVL106:
.L62:
	.loc 1 300 0
	mov.n	a2, a10
.LVL107:
	retw.n
.LVL108:
.L63:
	.loc 1 303 0
	movi	a2, -0x60
.LVL109:
	retw.n
.LVL110:
.L64:
	.loc 1 309 0
	mov.n	a2, a10
.LVL111:
	retw.n
.LVL112:
.L65:
	.loc 1 324 0
	mov.n	a2, a10
.LVL113:
	retw.n
.LVL114:
.L66:
	.loc 1 332 0
	movi.n	a2, 0
.LVL115:
	.loc 1 333 0
	retw.n
.LFE9:
	.size	mbedtls_asn1_get_alg, .-mbedtls_asn1_get_alg
	.section	.text.mbedtls_asn1_get_alg_null,"ax",@progbits
	.align	4
	.global	mbedtls_asn1_get_alg_null
	.type	mbedtls_asn1_get_alg_null, @function
mbedtls_asn1_get_alg_null:
.LFB10:
	.loc 1 338 0
.LVL116:
	entry	sp, 48
.LCFI10:
	.loc 1 342 0
	movi.n	a8, 0
	s32i.n	a8, sp, 0
	s32i.n	a8, sp, 4
	s32i.n	a8, sp, 8
	.loc 1 344 0
	mov.n	a13, sp
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	mbedtls_asn1_get_alg
.LVL117:
	bnez.n	a10, .L69
	.loc 1 347 0
	l32i.n	a2, sp, 0
.LVL118:
	addi	a8, a2, -5
	movi.n	a10, 1
.LVL119:
	movi.n	a9, 0
	mov.n	a3, a9
.LVL120:
	movnez	a3, a10, a8
	movnez	a9, a10, a2
	bany	a3, a9, .L70
	.loc 1 347 0 is_stmt 0 discriminator 1
	l32i.n	a2, sp, 4
	beqz.n	a2, .L71
	.loc 1 348 0 is_stmt 1
	movi	a2, -0x68
	retw.n
.LVL121:
.L69:
	.loc 1 345 0
	mov.n	a2, a10
.LVL122:
	retw.n
.LVL123:
.L70:
	.loc 1 348 0
	movi	a2, -0x68
	retw.n
.L71:
	.loc 1 350 0
	movi.n	a2, 0
	.loc 1 351 0
	retw.n
.LFE10:
	.size	mbedtls_asn1_get_alg_null, .-mbedtls_asn1_get_alg_null
	.section	.text.mbedtls_asn1_free_named_data,"ax",@progbits
	.align	4
	.global	mbedtls_asn1_free_named_data
	.type	mbedtls_asn1_free_named_data, @function
mbedtls_asn1_free_named_data:
.LFB11:
	.loc 1 354 0
.LVL124:
	entry	sp, 32
.LCFI11:
	.loc 1 355 0
	beqz.n	a2, .L72
	.loc 1 358 0
	l32i.n	a10, a2, 8
	call8	free
.LVL125:
	.loc 1 359 0
	l32i.n	a10, a2, 20
	call8	free
.LVL126:
	.loc 1 361 0
	movi.n	a11, 0x20
	mov.n	a10, a2
	call8	mbedtls_zeroize
.LVL127:
.L72:
	retw.n
.LFE11:
	.size	mbedtls_asn1_free_named_data, .-mbedtls_asn1_free_named_data
	.section	.text.mbedtls_asn1_free_named_data_list,"ax",@progbits
	.align	4
	.global	mbedtls_asn1_free_named_data_list
	.type	mbedtls_asn1_free_named_data_list, @function
mbedtls_asn1_free_named_data_list:
.LFB12:
	.loc 1 365 0
.LVL128:
	entry	sp, 32
.LCFI12:
	.loc 1 368 0
	j	.L75
.LVL129:
.L76:
	.loc 1 370 0
	l32i.n	a8, a3, 24
	s32i.n	a8, a2, 0
	.loc 1 371 0
	mov.n	a10, a3
	call8	mbedtls_asn1_free_named_data
.LVL130:
	.loc 1 372 0
	mov.n	a10, a3
	call8	free
.LVL131:
.L75:
	.loc 1 368 0
	l32i.n	a3, a2, 0
.LVL132:
	bnez.n	a3, .L76
	.loc 1 374 0
	retw.n
.LFE12:
	.size	mbedtls_asn1_free_named_data_list, .-mbedtls_asn1_free_named_data_list
	.section	.text.mbedtls_asn1_find_named_data,"ax",@progbits
	.align	4
	.global	mbedtls_asn1_find_named_data
	.type	mbedtls_asn1_find_named_data, @function
mbedtls_asn1_find_named_data:
.LFB13:
	.loc 1 378 0
.LVL133:
	entry	sp, 32
.LCFI13:
	.loc 1 379 0
	j	.L78
.L81:
	.loc 1 381 0
	l32i.n	a8, a2, 4
	bne	a8, a4, .L79
	.loc 1 382 0 discriminator 1
	mov.n	a12, a4
	mov.n	a11, a3
	l32i.n	a10, a2, 8
	call8	memcmp
.LVL134:
	.loc 1 381 0 discriminator 1
	beqz.n	a10, .L80
.L79:
	.loc 1 387 0
	l32i.n	a2, a2, 24
.LVL135:
.L78:
	.loc 1 379 0
	bnez.n	a2, .L81
.L80:
	.loc 1 391 0
	retw.n
.LFE13:
	.size	mbedtls_asn1_find_named_data, .-mbedtls_asn1_find_named_data
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
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x4
	.4byte	.LCFI0-.LFB0
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
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI2-.LFB2
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI3-.LFB3
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI4-.LFB4
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI5-.LFB5
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI6-.LFB6
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI7-.LFB7
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI8-.LFB8
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI9-.LFB9
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI10-.LFB10
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI11-.LFB11
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI12-.LFB12
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI13-.LFB13
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE26:
	.text
.Letext0:
	.file 2 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 3 "C:/esp/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "C:/esp/esp-idf/components/newlib/include/stdint.h"
	.file 5 "C:/esp/esp-idf/components/mbedtls/include/mbedtls/bignum.h"
	.file 6 "C:/esp/esp-idf/components/mbedtls/include/mbedtls/asn1.h"
	.file 7 "C:/esp/esp-idf/components/newlib/include/stdlib.h"
	.file 8 "C:/esp/esp-idf/components/newlib/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x917
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF43
	.byte	0xc
	.4byte	.LASF44
	.4byte	.LASF45
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
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4c
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa8
	.uleb128 0x7
	.4byte	0x9b
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x5
	.byte	0xa7
	.4byte	0x73
	.uleb128 0x8
	.byte	0xc
	.byte	0x5
	.byte	0xb5
	.4byte	0xdf
	.uleb128 0x9
	.string	"s"
	.byte	0x5
	.byte	0xb7
	.4byte	0x25
	.byte	0
	.uleb128 0x9
	.string	"n"
	.byte	0x5
	.byte	0xb8
	.4byte	0x2c
	.byte	0x4
	.uleb128 0x9
	.string	"p"
	.byte	0x5
	.byte	0xb9
	.4byte	0xdf
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xad
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x5
	.byte	0xbb
	.4byte	0xb8
	.uleb128 0xa
	.4byte	.LASF16
	.byte	0xc
	.byte	0x6
	.byte	0x76
	.4byte	0x11f
	.uleb128 0x9
	.string	"tag"
	.byte	0x6
	.byte	0x78
	.4byte	0x25
	.byte	0
	.uleb128 0x9
	.string	"len"
	.byte	0x6
	.byte	0x79
	.4byte	0x2c
	.byte	0x4
	.uleb128 0x9
	.string	"p"
	.byte	0x6
	.byte	0x7a
	.4byte	0x95
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x6
	.byte	0x7c
	.4byte	0xf0
	.uleb128 0xa
	.4byte	.LASF17
	.byte	0xc
	.byte	0x6
	.byte	0x81
	.4byte	0x159
	.uleb128 0x9
	.string	"len"
	.byte	0x6
	.byte	0x83
	.4byte	0x2c
	.byte	0
	.uleb128 0xb
	.4byte	.LASF18
	.byte	0x6
	.byte	0x84
	.4byte	0x4c
	.byte	0x4
	.uleb128 0x9
	.string	"p"
	.byte	0x6
	.byte	0x85
	.4byte	0x95
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x6
	.byte	0x87
	.4byte	0x12a
	.uleb128 0xa
	.4byte	.LASF19
	.byte	0x10
	.byte	0x6
	.byte	0x8c
	.4byte	0x189
	.uleb128 0x9
	.string	"buf"
	.byte	0x6
	.byte	0x8e
	.4byte	0x11f
	.byte	0
	.uleb128 0xb
	.4byte	.LASF20
	.byte	0x6
	.byte	0x8f
	.4byte	0x189
	.byte	0xc
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x164
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x6
	.byte	0x91
	.4byte	0x164
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x20
	.byte	0x6
	.byte	0x96
	.4byte	0x1d7
	.uleb128 0x9
	.string	"oid"
	.byte	0x6
	.byte	0x98
	.4byte	0x11f
	.byte	0
	.uleb128 0x9
	.string	"val"
	.byte	0x6
	.byte	0x99
	.4byte	0x11f
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF20
	.byte	0x6
	.byte	0x9a
	.4byte	0x1d7
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF22
	.byte	0x6
	.byte	0x9b
	.4byte	0x4c
	.byte	0x1c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x19a
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x6
	.byte	0x9d
	.4byte	0x19a
	.uleb128 0xc
	.4byte	.LASF46
	.byte	0x1
	.byte	0x2f
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x225
	.uleb128 0xd
	.string	"v"
	.byte	0x1
	.byte	0x2f
	.4byte	0x7e
	.4byte	.LLST0
	.uleb128 0xd
	.string	"n"
	.byte	0x1
	.byte	0x2f
	.4byte	0x2c
	.4byte	.LLST1
	.uleb128 0xe
	.string	"p"
	.byte	0x1
	.byte	0x30
	.4byte	0x225
	.4byte	.LLST2
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x22b
	.uleb128 0xf
	.4byte	0x4c
	.uleb128 0x10
	.4byte	.LASF23
	.byte	0x1
	.byte	0x36
	.4byte	0x25
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x275
	.uleb128 0xd
	.string	"p"
	.byte	0x1
	.byte	0x36
	.4byte	0x275
	.4byte	.LLST3
	.uleb128 0xd
	.string	"end"
	.byte	0x1
	.byte	0x37
	.4byte	0x27b
	.4byte	.LLST4
	.uleb128 0xd
	.string	"len"
	.byte	0x1
	.byte	0x38
	.4byte	0x286
	.4byte	.LLST5
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x95
	.uleb128 0x6
	.byte	0x4
	.4byte	0x281
	.uleb128 0x7
	.4byte	0x4c
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2c
	.uleb128 0x10
	.4byte	.LASF24
	.byte	0x1
	.byte	0x70
	.4byte	0x25
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2f6
	.uleb128 0xd
	.string	"p"
	.byte	0x1
	.byte	0x70
	.4byte	0x275
	.4byte	.LLST6
	.uleb128 0x11
	.string	"end"
	.byte	0x1
	.byte	0x71
	.4byte	0x27b
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x11
	.string	"len"
	.byte	0x1
	.byte	0x72
	.4byte	0x286
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x11
	.string	"tag"
	.byte	0x1
	.byte	0x72
	.4byte	0x25
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x12
	.4byte	.LVL23
	.4byte	0x230
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	.LASF25
	.byte	0x1
	.byte	0x7f
	.4byte	0x25
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x373
	.uleb128 0xd
	.string	"p"
	.byte	0x1
	.byte	0x7f
	.4byte	0x275
	.4byte	.LLST7
	.uleb128 0x11
	.string	"end"
	.byte	0x1
	.byte	0x80
	.4byte	0x27b
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x11
	.string	"val"
	.byte	0x1
	.byte	0x81
	.4byte	0x373
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x14
	.string	"ret"
	.byte	0x1
	.byte	0x83
	.4byte	0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x14
	.string	"len"
	.byte	0x1
	.byte	0x84
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x12
	.4byte	.LVL30
	.4byte	0x28c
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x25
	.uleb128 0x10
	.4byte	.LASF26
	.byte	0x1
	.byte	0x92
	.4byte	0x25
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3f6
	.uleb128 0xd
	.string	"p"
	.byte	0x1
	.byte	0x92
	.4byte	0x275
	.4byte	.LLST8
	.uleb128 0x11
	.string	"end"
	.byte	0x1
	.byte	0x93
	.4byte	0x27b
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x11
	.string	"val"
	.byte	0x1
	.byte	0x94
	.4byte	0x373
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x14
	.string	"ret"
	.byte	0x1
	.byte	0x96
	.4byte	0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x14
	.string	"len"
	.byte	0x1
	.byte	0x97
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x12
	.4byte	.LVL37
	.4byte	0x28c
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	.LASF27
	.byte	0x1
	.byte	0xab
	.4byte	0x25
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x489
	.uleb128 0xd
	.string	"p"
	.byte	0x1
	.byte	0xab
	.4byte	0x275
	.4byte	.LLST9
	.uleb128 0x11
	.string	"end"
	.byte	0x1
	.byte	0xac
	.4byte	0x27b
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xd
	.string	"X"
	.byte	0x1
	.byte	0xad
	.4byte	0x489
	.4byte	.LLST10
	.uleb128 0xe
	.string	"ret"
	.byte	0x1
	.byte	0xaf
	.4byte	0x25
	.4byte	.LLST11
	.uleb128 0x14
	.string	"len"
	.byte	0x1
	.byte	0xb0
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x15
	.4byte	.LVL46
	.4byte	0x28c
	.4byte	0x478
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x12
	.4byte	.LVL48
	.4byte	0x8ed
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xe5
	.uleb128 0x10
	.4byte	.LASF28
	.byte	0x1
	.byte	0xbd
	.4byte	0x25
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4ff
	.uleb128 0xd
	.string	"p"
	.byte	0x1
	.byte	0xbd
	.4byte	0x275
	.4byte	.LLST12
	.uleb128 0x11
	.string	"end"
	.byte	0x1
	.byte	0xbd
	.4byte	0x27b
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xd
	.string	"bs"
	.byte	0x1
	.byte	0xbe
	.4byte	0x4ff
	.4byte	.LLST13
	.uleb128 0x14
	.string	"ret"
	.byte	0x1
	.byte	0xc0
	.4byte	0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x12
	.4byte	.LVL54
	.4byte	0x28c
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x159
	.uleb128 0x10
	.4byte	.LASF29
	.byte	0x1
	.byte	0xde
	.4byte	0x25
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x576
	.uleb128 0xd
	.string	"p"
	.byte	0x1
	.byte	0xde
	.4byte	0x275
	.4byte	.LLST14
	.uleb128 0x11
	.string	"end"
	.byte	0x1
	.byte	0xde
	.4byte	0x27b
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xd
	.string	"len"
	.byte	0x1
	.byte	0xdf
	.4byte	0x286
	.4byte	.LLST15
	.uleb128 0x14
	.string	"ret"
	.byte	0x1
	.byte	0xe1
	.4byte	0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x12
	.4byte	.LVL66
	.4byte	0x28c
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	.LASF30
	.byte	0x1
	.byte	0xf1
	.4byte	0x25
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x654
	.uleb128 0xd
	.string	"p"
	.byte	0x1
	.byte	0xf1
	.4byte	0x275
	.4byte	.LLST16
	.uleb128 0x11
	.string	"end"
	.byte	0x1
	.byte	0xf2
	.4byte	0x27b
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xd
	.string	"cur"
	.byte	0x1
	.byte	0xf3
	.4byte	0x654
	.4byte	.LLST17
	.uleb128 0xd
	.string	"tag"
	.byte	0x1
	.byte	0xf4
	.4byte	0x25
	.4byte	.LLST18
	.uleb128 0xe
	.string	"ret"
	.byte	0x1
	.byte	0xf6
	.4byte	0x25
	.4byte	.LLST19
	.uleb128 0x14
	.string	"len"
	.byte	0x1
	.byte	0xf7
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xe
	.string	"buf"
	.byte	0x1
	.byte	0xf8
	.4byte	0x65a
	.4byte	.LLST20
	.uleb128 0x15
	.4byte	.LVL75
	.4byte	0x28c
	.4byte	0x619
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.uleb128 0x15
	.4byte	.LVL77
	.4byte	0x28c
	.4byte	0x63f
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 4
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL79
	.4byte	0x8f9
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x18f
	.uleb128 0x6
	.byte	0x4
	.4byte	0x11f
	.uleb128 0x16
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x123
	.4byte	0x25
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x756
	.uleb128 0x17
	.string	"p"
	.byte	0x1
	.2byte	0x123
	.4byte	0x275
	.4byte	.LLST21
	.uleb128 0x17
	.string	"end"
	.byte	0x1
	.2byte	0x124
	.4byte	0x27b
	.4byte	.LLST22
	.uleb128 0x17
	.string	"alg"
	.byte	0x1
	.2byte	0x125
	.4byte	0x65a
	.4byte	.LLST23
	.uleb128 0x18
	.4byte	.LASF32
	.byte	0x1
	.2byte	0x125
	.4byte	0x65a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x19
	.string	"ret"
	.byte	0x1
	.2byte	0x127
	.4byte	0x25
	.4byte	.LLST24
	.uleb128 0x1a
	.string	"len"
	.byte	0x1
	.2byte	0x128
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x15
	.4byte	.LVL93
	.4byte	0x28c
	.4byte	0x6fb
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.uleb128 0x15
	.4byte	.LVL97
	.4byte	0x28c
	.4byte	0x720
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 4
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.uleb128 0x15
	.4byte	.LVL100
	.4byte	0x1e8
	.4byte	0x739
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.uleb128 0x12
	.4byte	.LVL104
	.4byte	0x230
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 4
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF33
	.byte	0x1
	.2byte	0x14f
	.4byte	0x25
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7de
	.uleb128 0x17
	.string	"p"
	.byte	0x1
	.2byte	0x14f
	.4byte	0x275
	.4byte	.LLST25
	.uleb128 0x17
	.string	"end"
	.byte	0x1
	.2byte	0x150
	.4byte	0x27b
	.4byte	.LLST26
	.uleb128 0x1b
	.string	"alg"
	.byte	0x1
	.2byte	0x151
	.4byte	0x65a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x19
	.string	"ret"
	.byte	0x1
	.2byte	0x153
	.4byte	0x25
	.4byte	.LLST27
	.uleb128 0x1c
	.4byte	.LASF32
	.byte	0x1
	.2byte	0x154
	.4byte	0x11f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x12
	.4byte	.LVL117
	.4byte	0x660
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF34
	.byte	0x1
	.2byte	0x161
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x82b
	.uleb128 0x1b
	.string	"cur"
	.byte	0x1
	.2byte	0x161
	.4byte	0x82b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1e
	.4byte	.LVL125
	.4byte	0x904
	.uleb128 0x1e
	.4byte	.LVL126
	.4byte	0x904
	.uleb128 0x12
	.4byte	.LVL127
	.4byte	0x1e8
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1dd
	.uleb128 0x1d
	.4byte	.LASF35
	.byte	0x1
	.2byte	0x16c
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x88a
	.uleb128 0x18
	.4byte	.LASF36
	.byte	0x1
	.2byte	0x16c
	.4byte	0x88a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x19
	.string	"cur"
	.byte	0x1
	.2byte	0x16e
	.4byte	0x82b
	.4byte	.LLST28
	.uleb128 0x15
	.4byte	.LVL130
	.4byte	0x7de
	.4byte	0x879
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL131
	.4byte	0x904
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x82b
	.uleb128 0x16
	.4byte	.LASF37
	.byte	0x1
	.2byte	0x178
	.4byte	0x82b
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8ed
	.uleb128 0x1f
	.4byte	.LASF38
	.byte	0x1
	.2byte	0x178
	.4byte	0x82b
	.4byte	.LLST29
	.uleb128 0x1b
	.string	"oid"
	.byte	0x1
	.2byte	0x179
	.4byte	0xa2
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1b
	.string	"len"
	.byte	0x1
	.2byte	0x179
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x12
	.4byte	.LVL134
	.4byte	0x90f
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LASF39
	.4byte	.LASF39
	.byte	0x5
	.2byte	0x1aa
	.uleb128 0x21
	.4byte	.LASF40
	.4byte	.LASF40
	.byte	0x7
	.byte	0x57
	.uleb128 0x21
	.4byte	.LASF41
	.4byte	.LASF41
	.byte	0x7
	.byte	0x5a
	.uleb128 0x21
	.4byte	.LASF42
	.4byte	.LASF42
	.byte	0x8
	.byte	0x16
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
	.uleb128 0xd
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
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.4byte	.LFE0
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
	.4byte	.LFE0
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
	.4byte	.LFE0
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL20
	.4byte	.LFE1
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
	.byte	0x53
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL21
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL6
	.4byte	.LVL9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL21
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL22
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
	.4byte	.LFE2
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
	.4byte	.LVL32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL35
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL36
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL40
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
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL45
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL52
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL45
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL49
	.4byte	.LVL51
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL51
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL48
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL53
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL57
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
	.4byte	.LVL61
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL64
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL53
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL55
	.4byte	.LVL57
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL57
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL63
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL65
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL69
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL72
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL65
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL67
	.4byte	.LVL69
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL69
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL73
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL74
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL82
	.4byte	.LVL83
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL83
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL84
	.4byte	.LVL85
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL85
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL87
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL88
	.4byte	.LVL89
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL89
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL90
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL74
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL80
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL74
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL81
	.4byte	.LVL83
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL83
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL91
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL75
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL83
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL76
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL87
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL92
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL101
	.4byte	.LVL102
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL102
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL105
	.4byte	.LVL106
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL106
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL107
	.4byte	.LVL108
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL108
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL109
	.4byte	.LVL110
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL110
	.4byte	.LVL111
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL111
	.4byte	.LVL112
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL112
	.4byte	.LVL113
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL113
	.4byte	.LVL114
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL114
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL115
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL92
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL94
	.4byte	.LVL95
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL95
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL108
	.4byte	.LVL110
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL110
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL92
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL98
	.4byte	.LVL106
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL106
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL112
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL93
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL97
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL102
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL104
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL116
	.4byte	.LVL118
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL118
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
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL116
	.4byte	.LVL120
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL120
	.4byte	.LVL121
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL121
	.4byte	.LVL123
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL123
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL117
	.4byte	.LVL119
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL121
	.4byte	.LVL123
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL129
	.4byte	.LVL131
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL132
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL133
	.4byte	.LVL135
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL135
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x84
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF40:
	.string	"calloc"
.LASF20:
	.string	"next"
.LASF16:
	.string	"mbedtls_asn1_buf"
.LASF26:
	.string	"mbedtls_asn1_get_int"
.LASF31:
	.string	"mbedtls_asn1_get_alg"
.LASF44:
	.string	"C:/esp/esp-idf/components/mbedtls/library/asn1parse.c"
.LASF43:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF38:
	.string	"list"
.LASF30:
	.string	"mbedtls_asn1_get_sequence_of"
.LASF3:
	.string	"unsigned char"
.LASF36:
	.string	"head"
.LASF17:
	.string	"mbedtls_asn1_bitstring"
.LASF19:
	.string	"mbedtls_asn1_sequence"
.LASF12:
	.string	"long unsigned int"
.LASF23:
	.string	"mbedtls_asn1_get_len"
.LASF1:
	.string	"short unsigned int"
.LASF5:
	.string	"size_t"
.LASF14:
	.string	"mbedtls_mpi_uint"
.LASF32:
	.string	"params"
.LASF42:
	.string	"memcmp"
.LASF27:
	.string	"mbedtls_asn1_get_mpi"
.LASF6:
	.string	"__uint32_t"
.LASF15:
	.string	"mbedtls_mpi"
.LASF0:
	.string	"unsigned int"
.LASF18:
	.string	"unused_bits"
.LASF8:
	.string	"long long unsigned int"
.LASF45:
	.string	"C:\\\\esp\\\\ArkPOS2-esp\\\\build\\\\mbedtls"
.LASF37:
	.string	"mbedtls_asn1_find_named_data"
.LASF29:
	.string	"mbedtls_asn1_get_bitstring_null"
.LASF11:
	.string	"sizetype"
.LASF28:
	.string	"mbedtls_asn1_get_bitstring"
.LASF41:
	.string	"free"
.LASF7:
	.string	"long long int"
.LASF33:
	.string	"mbedtls_asn1_get_alg_null"
.LASF46:
	.string	"mbedtls_zeroize"
.LASF34:
	.string	"mbedtls_asn1_free_named_data"
.LASF21:
	.string	"mbedtls_asn1_named_data"
.LASF4:
	.string	"short int"
.LASF35:
	.string	"mbedtls_asn1_free_named_data_list"
.LASF39:
	.string	"mbedtls_mpi_read_binary"
.LASF25:
	.string	"mbedtls_asn1_get_bool"
.LASF10:
	.string	"long int"
.LASF13:
	.string	"char"
.LASF2:
	.string	"signed char"
.LASF9:
	.string	"uint32_t"
.LASF24:
	.string	"mbedtls_asn1_get_tag"
.LASF22:
	.string	"next_merged"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-61-gab8375a) 5.2.0"
