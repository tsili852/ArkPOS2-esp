	.file	"pkwrite.c"
	.text
.Ltext0:
	.section	.text.pk_write_rsa_pubkey,"ax",@progbits
	.align	4
	.type	pk_write_rsa_pubkey, @function
pk_write_rsa_pubkey:
.LFB10:
	.file 1 "C:/esp/esp-idf/components/mbedtls/library/pkwrite.c"
	.loc 1 66 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LVL1:
	.loc 1 70 0
	addi	a12, a4, 20
	mov.n	a11, a3
	mov.n	a10, a2
	call8	mbedtls_asn1_write_mpi
.LVL2:
	mov.n	a5, a10
.LVL3:
	bltz	a10, .L3
.LVL4:
	.loc 1 71 0 discriminator 2
	addi.n	a12, a4, 8
	mov.n	a11, a3
	mov.n	a10, a2
	call8	mbedtls_asn1_write_mpi
.LVL5:
	bltz	a10, .L4
	add.n	a5, a10, a5
.LVL6:
	.loc 1 73 0 discriminator 2
	mov.n	a12, a5
	mov.n	a11, a3
	mov.n	a10, a2
.LVL7:
	call8	mbedtls_asn1_write_len
.LVL8:
	bltz	a10, .L5
	add.n	a5, a10, a5
.LVL9:
	.loc 1 74 0 discriminator 2
	movi.n	a12, 0x30
	mov.n	a11, a3
	mov.n	a10, a2
.LVL10:
	call8	mbedtls_asn1_write_tag
.LVL11:
	bltz	a10, .L6
	add.n	a2, a10, a5
.LVL12:
	.loc 1 77 0 discriminator 2
	retw.n
.LVL13:
.L3:
	.loc 1 70 0
	mov.n	a2, a10
.LVL14:
	retw.n
.LVL15:
.L4:
	.loc 1 71 0
	mov.n	a2, a10
.LVL16:
	retw.n
.LVL17:
.L5:
	.loc 1 73 0
	mov.n	a2, a10
.LVL18:
	retw.n
.LVL19:
.L6:
	.loc 1 74 0
	mov.n	a2, a10
.LVL20:
	.loc 1 78 0
	retw.n
.LFE10:
	.size	pk_write_rsa_pubkey, .-pk_write_rsa_pubkey
	.section	.text.pk_write_ec_pubkey,"ax",@progbits
	.align	4
	.type	pk_write_ec_pubkey, @function
pk_write_ec_pubkey:
.LFB11:
	.loc 1 87 0
.LVL21:
	entry	sp, 176
.LCFI1:
	mov.n	a10, a4
	.loc 1 89 0
	movi.n	a12, 0
	s32i.n	a12, sp, 0
	.loc 1 92 0
	movi	a15, 0x85
	addi.n	a14, sp, 4
	mov.n	a13, sp
	movi	a11, 0x88
	add.n	a11, a4, a11
	call8	mbedtls_ecp_point_write_binary
.LVL22:
	bnez.n	a10, .L9
	.loc 1 99 0
	l32i.n	a8, a2, 0
	bltu	a8, a3, .L10
	.loc 1 99 0 is_stmt 0 discriminator 1
	sub	a3, a8, a3
.LVL23:
	l32i.n	a10, sp, 0
.LVL24:
	bltu	a3, a10, .L11
	.loc 1 102 0 is_stmt 1
	sub	a10, a8, a10
	s32i.n	a10, a2, 0
	.loc 1 103 0
	l32i.n	a12, sp, 0
	addi.n	a11, sp, 4
	call8	memcpy
.LVL25:
	.loc 1 105 0
	l32i.n	a2, sp, 0
.LVL26:
	retw.n
.LVL27:
.L9:
	.loc 1 96 0
	mov.n	a2, a10
.LVL28:
	retw.n
.LVL29:
.L10:
	.loc 1 100 0
	movi	a2, -0x6c
.LVL30:
	retw.n
.LVL31:
.L11:
	movi	a2, -0x6c
.LVL32:
	.loc 1 106 0
	retw.n
.LFE11:
	.size	pk_write_ec_pubkey, .-pk_write_ec_pubkey
	.section	.text.pk_write_ec_param,"ax",@progbits
	.align	4
	.type	pk_write_ec_param, @function
pk_write_ec_param:
.LFB12:
	.loc 1 115 0
.LVL33:
	entry	sp, 48
.LCFI2:
.LVL34:
	.loc 1 121 0
	addi.n	a12, sp, 4
	mov.n	a11, sp
	l32i.n	a10, a4, 0
	call8	mbedtls_oid_get_oid_by_ec_grp
.LVL35:
	bnez.n	a10, .L14
	.loc 1 124 0
	l32i.n	a13, sp, 4
	l32i.n	a12, sp, 0
	mov.n	a11, a3
	mov.n	a10, a2
.LVL36:
	call8	mbedtls_asn1_write_oid
.LVL37:
	mov.n	a2, a10
.LVL38:
	retw.n
.LVL39:
.L14:
	.loc 1 122 0
	mov.n	a2, a10
.LVL40:
	.loc 1 127 0
	retw.n
.LFE12:
	.size	pk_write_ec_param, .-pk_write_ec_param
	.section	.text.mbedtls_pk_write_pubkey,"ax",@progbits
	.literal_position
	.literal .LC0, -14720
	.align	4
	.global	mbedtls_pk_write_pubkey
	.type	mbedtls_pk_write_pubkey, @function
mbedtls_pk_write_pubkey:
.LFB13:
	.loc 1 132 0
.LVL41:
	entry	sp, 48
.LCFI3:
.LVL42:
	.loc 1 137 0
	mov.n	a10, a4
	call8	mbedtls_pk_get_type
.LVL43:
	bnei	a10, 1, .L16
	.loc 1 138 0
	l32i.n	a12, a4, 4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	pk_write_rsa_pubkey
.LVL44:
	bltz	a10, .L19
	.loc 1 138 0 is_stmt 0 discriminator 2
	mov.n	a2, a10
.LVL45:
	retw.n
.LVL46:
.L16:
	.loc 1 142 0 is_stmt 1
	mov.n	a10, a4
	call8	mbedtls_pk_get_type
.LVL47:
	bnei	a10, 2, .L20
	.loc 1 143 0
	l32i.n	a12, a4, 4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	pk_write_ec_pubkey
.LVL48:
	bltz	a10, .L21
	.loc 1 143 0 is_stmt 0 discriminator 2
	mov.n	a2, a10
.LVL49:
	.loc 1 148 0 is_stmt 1 discriminator 2
	retw.n
.LVL50:
.L19:
	.loc 1 138 0
	mov.n	a2, a10
.LVL51:
	retw.n
.LVL52:
.L20:
	.loc 1 146 0
	l32r	a2, .LC0
.LVL53:
	retw.n
.LVL54:
.L21:
	.loc 1 143 0
	mov.n	a2, a10
.LVL55:
	.loc 1 149 0
	retw.n
.LFE13:
	.size	mbedtls_pk_write_pubkey, .-mbedtls_pk_write_pubkey
	.section	.text.mbedtls_pk_write_pubkey_der,"ax",@progbits
	.align	4
	.global	mbedtls_pk_write_pubkey_der
	.type	mbedtls_pk_write_pubkey_der, @function
mbedtls_pk_write_pubkey_der:
.LFB14:
	.loc 1 152 0
.LVL56:
	entry	sp, 64
.LCFI4:
.LVL57:
	.loc 1 158 0
	add.n	a4, a3, a4
.LVL58:
	s32i.n	a4, sp, 0
	.loc 1 160 0
	mov.n	a12, a2
	mov.n	a11, a3
	mov.n	a10, sp
	call8	mbedtls_pk_write_pubkey
.LVL59:
	bltz	a10, .L25
.LVL60:
	.loc 1 162 0 discriminator 2
	l32i.n	a4, sp, 0
	sub	a8, a4, a3
	blti	a8, 1, .L26
	.loc 1 170 0
	addi.n	a4, a4, -1
	s32i.n	a4, sp, 0
	movi.n	a8, 0
	s8i	a8, a4, 0
	.loc 1 171 0
	addi.n	a4, a10, 1
.LVL61:
	.loc 1 173 0
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, sp
.LVL62:
	call8	mbedtls_asn1_write_len
.LVL63:
	bltz	a10, .L27
	.loc 1 173 0 is_stmt 0 discriminator 2
	add.n	a4, a10, a4
.LVL64:
	.loc 1 174 0 is_stmt 1 discriminator 2
	movi.n	a12, 3
	mov.n	a11, a3
	mov.n	a10, sp
.LVL65:
	call8	mbedtls_asn1_write_tag
.LVL66:
	bltz	a10, .L28
	add.n	a4, a10, a4
.LVL67:
	.loc 1 176 0 discriminator 2
	mov.n	a10, a2
.LVL68:
	call8	mbedtls_pk_get_type
.LVL69:
	addi.n	a12, sp, 4
	addi.n	a11, sp, 8
	call8	mbedtls_oid_get_oid_by_pk_alg
.LVL70:
	bnez.n	a10, .L29
	.loc 1 183 0
	mov.n	a10, a2
.LVL71:
	call8	mbedtls_pk_get_type
.LVL72:
	bnei	a10, 2, .L30
	.loc 1 185 0
	l32i.n	a12, a2, 4
	mov.n	a11, a3
	mov.n	a10, sp
	call8	pk_write_ec_param
.LVL73:
	bltz	a10, .L31
	.loc 1 185 0 is_stmt 0 discriminator 2
	mov.n	a14, a10
.LVL74:
	j	.L24
.LVL75:
.L30:
	.loc 1 155 0 is_stmt 1
	movi.n	a14, 0
.LVL76:
.L24:
	.loc 1 189 0
	l32i.n	a13, sp, 4
	l32i.n	a12, sp, 8
	mov.n	a11, a3
	mov.n	a10, sp
	call8	mbedtls_asn1_write_algorithm_identifier
.LVL77:
	bltz	a10, .L32
	.loc 1 189 0 is_stmt 0 discriminator 2
	add.n	a2, a10, a4
.LVL78:
	.loc 1 192 0 is_stmt 1 discriminator 2
	mov.n	a12, a2
	mov.n	a11, a3
	mov.n	a10, sp
.LVL79:
	call8	mbedtls_asn1_write_len
.LVL80:
	bltz	a10, .L33
	add.n	a2, a10, a2
.LVL81:
	.loc 1 193 0 discriminator 2
	movi.n	a12, 0x30
	mov.n	a11, a3
	mov.n	a10, sp
.LVL82:
	call8	mbedtls_asn1_write_tag
.LVL83:
	bltz	a10, .L34
	add.n	a2, a10, a2
.LVL84:
	.loc 1 196 0 discriminator 2
	retw.n
.LVL85:
.L25:
	.loc 1 160 0
	mov.n	a2, a10
.LVL86:
	retw.n
.LVL87:
.L26:
	.loc 1 163 0
	movi	a2, -0x6c
.LVL88:
	retw.n
.LVL89:
.L27:
	.loc 1 173 0
	mov.n	a2, a10
.LVL90:
	retw.n
.LVL91:
.L28:
	.loc 1 174 0
	mov.n	a2, a10
.LVL92:
	retw.n
.LVL93:
.L29:
	.loc 1 179 0
	mov.n	a2, a10
.LVL94:
	retw.n
.LVL95:
.L31:
	.loc 1 185 0
	mov.n	a2, a10
.LVL96:
	retw.n
.LVL97:
.L32:
	.loc 1 189 0
	mov.n	a2, a10
.LVL98:
	retw.n
.LVL99:
.L33:
	.loc 1 192 0
	mov.n	a2, a10
.LVL100:
	retw.n
.LVL101:
.L34:
	.loc 1 193 0
	mov.n	a2, a10
.LVL102:
	.loc 1 197 0
	retw.n
.LFE14:
	.size	mbedtls_pk_write_pubkey_der, .-mbedtls_pk_write_pubkey_der
	.section	.text.mbedtls_pk_write_key_der,"ax",@progbits
	.literal_position
	.literal .LC1, -14720
	.align	4
	.global	mbedtls_pk_write_key_der
	.type	mbedtls_pk_write_key_der, @function
mbedtls_pk_write_key_der:
.LFB15:
	.loc 1 200 0
.LVL103:
	entry	sp, 64
.LCFI5:
	.loc 1 202 0
	add.n	a4, a3, a4
.LVL104:
	s32i.n	a4, sp, 0
.LVL105:
	.loc 1 206 0
	mov.n	a10, a2
	call8	mbedtls_pk_get_type
.LVL106:
	bnei	a10, 1, .L36
.LBB14:
.LBB15:
.LBB16:
	.file 2 "C:/esp/esp-idf/components/mbedtls/include/mbedtls/pk.h"
	.loc 2 141 0
	l32i.n	a4, a2, 4
.LBE16:
.LBE15:
	.loc 1 210 0
	addi	a12, a4, 92
	mov.n	a11, a3
	mov.n	a10, sp
	call8	mbedtls_asn1_write_mpi
.LVL107:
	mov.n	a2, a10
.LVL108:
	bltz	a10, .L37
.LVL109:
	.loc 1 211 0 discriminator 2
	addi	a12, a4, 80
	mov.n	a11, a3
	mov.n	a10, sp
	call8	mbedtls_asn1_write_mpi
.LVL110:
	bltz	a10, .L40
	add.n	a2, a10, a2
.LVL111:
	.loc 1 212 0 discriminator 2
	addi	a12, a4, 68
	mov.n	a11, a3
	mov.n	a10, sp
.LVL112:
	call8	mbedtls_asn1_write_mpi
.LVL113:
	bltz	a10, .L41
	add.n	a2, a10, a2
.LVL114:
	.loc 1 213 0 discriminator 2
	addi	a12, a4, 56
	mov.n	a11, a3
	mov.n	a10, sp
.LVL115:
	call8	mbedtls_asn1_write_mpi
.LVL116:
	bltz	a10, .L42
	add.n	a2, a10, a2
.LVL117:
	.loc 1 214 0 discriminator 2
	addi	a12, a4, 44
	mov.n	a11, a3
	mov.n	a10, sp
.LVL118:
	call8	mbedtls_asn1_write_mpi
.LVL119:
	bltz	a10, .L43
	add.n	a2, a10, a2
.LVL120:
	.loc 1 215 0 discriminator 2
	addi	a12, a4, 32
	mov.n	a11, a3
	mov.n	a10, sp
.LVL121:
	call8	mbedtls_asn1_write_mpi
.LVL122:
	bltz	a10, .L44
	add.n	a2, a10, a2
.LVL123:
	.loc 1 216 0 discriminator 2
	addi	a12, a4, 20
	mov.n	a11, a3
	mov.n	a10, sp
.LVL124:
	call8	mbedtls_asn1_write_mpi
.LVL125:
	bltz	a10, .L45
	add.n	a2, a10, a2
.LVL126:
	.loc 1 217 0 discriminator 2
	addi.n	a12, a4, 8
	mov.n	a11, a3
	mov.n	a10, sp
.LVL127:
	call8	mbedtls_asn1_write_mpi
.LVL128:
	bltz	a10, .L46
	add.n	a2, a10, a2
.LVL129:
	.loc 1 218 0 discriminator 2
	movi.n	a12, 0
	mov.n	a11, a3
	mov.n	a10, sp
.LVL130:
	call8	mbedtls_asn1_write_int
.LVL131:
	bltz	a10, .L47
	add.n	a2, a10, a2
.LVL132:
	.loc 1 220 0 discriminator 2
	mov.n	a12, a2
	mov.n	a11, a3
	mov.n	a10, sp
.LVL133:
	call8	mbedtls_asn1_write_len
.LVL134:
	bltz	a10, .L48
	add.n	a2, a10, a2
.LVL135:
	.loc 1 221 0 discriminator 2
	movi.n	a12, 0x30
	mov.n	a11, a3
	mov.n	a10, sp
.LVL136:
	call8	mbedtls_asn1_write_tag
.LVL137:
	bltz	a10, .L49
	add.n	a10, a10, a2
.LVL138:
.LBE14:
	j	.L38
.LVL139:
.L36:
	.loc 1 227 0
	mov.n	a10, a2
	call8	mbedtls_pk_get_type
.LVL140:
	bnei	a10, 2, .L50
.LBB17:
.LBB18:
.LBB19:
	.loc 2 154 0
	l32i.n	a4, a2, 4
.LVL141:
.LBE19:
.LBE18:
	.loc 1 244 0
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, sp
	call8	pk_write_ec_pubkey
.LVL142:
	bltz	a10, .L51
.LVL143:
	.loc 1 246 0 discriminator 2
	l32i.n	a2, sp, 0
.LVL144:
	sub	a5, a2, a3
	blti	a5, 1, .L52
	.loc 1 248 0
	addi.n	a2, a2, -1
	s32i.n	a2, sp, 0
	movi.n	a5, 0
	s8i	a5, a2, 0
	.loc 1 249 0
	addi.n	a2, a10, 1
.LVL145:
	.loc 1 251 0
	mov.n	a12, a2
	mov.n	a11, a3
	mov.n	a10, sp
.LVL146:
	call8	mbedtls_asn1_write_len
.LVL147:
	bltz	a10, .L53
	.loc 1 251 0 is_stmt 0 discriminator 2
	add.n	a2, a10, a2
.LVL148:
	.loc 1 252 0 is_stmt 1 discriminator 2
	movi.n	a12, 3
	mov.n	a11, a3
	mov.n	a10, sp
.LVL149:
	call8	mbedtls_asn1_write_tag
.LVL150:
	bltz	a10, .L54
	add.n	a2, a10, a2
.LVL151:
	.loc 1 254 0 discriminator 2
	mov.n	a12, a2
	mov.n	a11, a3
	mov.n	a10, sp
.LVL152:
	call8	mbedtls_asn1_write_len
.LVL153:
	bltz	a10, .L55
	add.n	a2, a10, a2
.LVL154:
	.loc 1 255 0 discriminator 2
	movi	a12, 0xa1
	mov.n	a11, a3
	mov.n	a10, sp
.LVL155:
	call8	mbedtls_asn1_write_tag
.LVL156:
	bltz	a10, .L56
	add.n	a5, a10, a2
.LVL157:
	.loc 1 260 0 discriminator 2
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, sp
.LVL158:
	call8	pk_write_ec_param
.LVL159:
	mov.n	a2, a10
.LVL160:
	bltz	a10, .L37
.LVL161:
	.loc 1 262 0 discriminator 2
	mov.n	a12, a10
	mov.n	a11, a3
	mov.n	a10, sp
	call8	mbedtls_asn1_write_len
.LVL162:
	bltz	a10, .L58
	add.n	a2, a10, a2
.LVL163:
	.loc 1 263 0 discriminator 2
	movi	a12, 0xa0
	mov.n	a11, a3
	mov.n	a10, sp
.LVL164:
	call8	mbedtls_asn1_write_tag
.LVL165:
	bltz	a10, .L59
	add.n	a2, a10, a2
.LVL166:
	.loc 1 265 0 discriminator 2
	add.n	a2, a5, a2
.LVL167:
	.loc 1 268 0 discriminator 2
	addi	a12, a4, 124
	mov.n	a11, a3
	mov.n	a10, sp
.LVL168:
	call8	mbedtls_asn1_write_mpi
.LVL169:
	bltz	a10, .L60
	add.n	a2, a10, a2
.LVL170:
	.loc 1 269 0 discriminator 2
	movi.n	a5, 4
.LVL171:
	l32i.n	a4, sp, 0
	s8i	a5, a4, 0
	.loc 1 272 0 discriminator 2
	movi.n	a12, 1
	mov.n	a11, a3
	mov.n	a10, sp
.LVL172:
	call8	mbedtls_asn1_write_int
.LVL173:
	bltz	a10, .L61
	add.n	a2, a10, a2
.LVL174:
	.loc 1 274 0 discriminator 2
	mov.n	a12, a2
	mov.n	a11, a3
	mov.n	a10, sp
.LVL175:
	call8	mbedtls_asn1_write_len
.LVL176:
	bltz	a10, .L62
	add.n	a2, a10, a2
.LVL177:
	.loc 1 275 0 discriminator 2
	movi.n	a12, 0x30
	mov.n	a11, a3
	mov.n	a10, sp
.LVL178:
	call8	mbedtls_asn1_write_tag
.LVL179:
	bltz	a10, .L63
	add.n	a10, a10, a2
.LVL180:
.L38:
.LBE17:
	.loc 1 282 0
	mov.n	a2, a10
	retw.n
.LVL181:
.L40:
.LBB20:
	.loc 1 211 0
	mov.n	a2, a10
.LVL182:
	retw.n
.LVL183:
.L41:
	.loc 1 212 0
	mov.n	a2, a10
.LVL184:
	retw.n
.LVL185:
.L42:
	.loc 1 213 0
	mov.n	a2, a10
.LVL186:
	retw.n
.LVL187:
.L43:
	.loc 1 214 0
	mov.n	a2, a10
.LVL188:
	retw.n
.LVL189:
.L44:
	.loc 1 215 0
	mov.n	a2, a10
.LVL190:
	retw.n
.LVL191:
.L45:
	.loc 1 216 0
	mov.n	a2, a10
.LVL192:
	retw.n
.LVL193:
.L46:
	.loc 1 217 0
	mov.n	a2, a10
.LVL194:
	retw.n
.LVL195:
.L47:
	.loc 1 218 0
	mov.n	a2, a10
.LVL196:
	retw.n
.LVL197:
.L48:
	.loc 1 220 0
	mov.n	a2, a10
.LVL198:
	retw.n
.LVL199:
.L49:
	.loc 1 221 0
	mov.n	a2, a10
.LVL200:
	retw.n
.LVL201:
.L50:
.LBE20:
	.loc 1 280 0
	l32r	a2, .LC1
.LVL202:
	retw.n
.LVL203:
.L51:
.LBB21:
	.loc 1 244 0
	mov.n	a2, a10
.LVL204:
	retw.n
.LVL205:
.L52:
	.loc 1 247 0
	movi	a2, -0x6c
	retw.n
.LVL206:
.L53:
	.loc 1 251 0
	mov.n	a2, a10
.LVL207:
	retw.n
.LVL208:
.L54:
	.loc 1 252 0
	mov.n	a2, a10
.LVL209:
	retw.n
.LVL210:
.L55:
	.loc 1 254 0
	mov.n	a2, a10
.LVL211:
	retw.n
.LVL212:
.L56:
	.loc 1 255 0
	mov.n	a2, a10
.LVL213:
	retw.n
.LVL214:
.L58:
	.loc 1 262 0
	mov.n	a2, a10
.LVL215:
	retw.n
.LVL216:
.L59:
	.loc 1 263 0
	mov.n	a2, a10
.LVL217:
	retw.n
.LVL218:
.L60:
	.loc 1 268 0
	mov.n	a2, a10
.LVL219:
	retw.n
.LVL220:
.L61:
	.loc 1 272 0
	mov.n	a2, a10
.LVL221:
	retw.n
.LVL222:
.L62:
	.loc 1 274 0
	mov.n	a2, a10
.LVL223:
	retw.n
.LVL224:
.L63:
	.loc 1 275 0
	mov.n	a2, a10
.LVL225:
.L37:
.LBE21:
	.loc 1 283 0
	retw.n
.LFE15:
	.size	mbedtls_pk_write_key_der, .-mbedtls_pk_write_key_der
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC3:
	.string	"-----END PUBLIC KEY-----\n"
	.align	4
.LC5:
	.string	"-----BEGIN PUBLIC KEY-----\n"
	.section	.text.mbedtls_pk_write_pubkey_pem,"ax",@progbits
	.literal_position
	.literal .LC2, 2086
	.literal .LC4, .LC3
	.literal .LC6, .LC5
	.literal .LC7, 2088
	.align	4
	.global	mbedtls_pk_write_pubkey_pem
	.type	mbedtls_pk_write_pubkey_pem, @function
mbedtls_pk_write_pubkey_pem:
.LFB16:
	.loc 1 379 0
.LVL226:
	entry	sp, 2144
.LCFI6:
	.loc 1 382 0
	addi	a5, sp, 16
	addmi	a8, a5, 0x800
	movi.n	a9, 0
	s32i.n	a9, a8, 40
	.loc 1 384 0
	l32r	a12, .LC2
	mov.n	a11, a5
	mov.n	a10, a2
	call8	mbedtls_pk_write_pubkey_der
.LVL227:
	bltz	a10, .L66
	.loc 1 391 0
	l32r	a12, .LC2
	sub	a12, a12, a10
	.loc 1 390 0
	l32r	a2, .LC7
.LVL228:
	addi	a5, sp, 16
	add.n	a2, a5, a2
	s32i.n	a2, sp, 0
	mov.n	a15, a4
	mov.n	a14, a3
	mov.n	a13, a10
	add.n	a12, a5, a12
	l32r	a11, .LC4
	l32r	a10, .LC6
.LVL229:
	call8	mbedtls_pem_write_buffer
.LVL230:
	bnez.n	a10, .L67
	.loc 1 397 0
	movi.n	a2, 0
	retw.n
.LVL231:
.L66:
	.loc 1 387 0
	mov.n	a2, a10
.LVL232:
	retw.n
.L67:
	.loc 1 394 0
	mov.n	a2, a10
	.loc 1 398 0
	retw.n
.LFE16:
	.size	mbedtls_pk_write_pubkey_pem, .-mbedtls_pk_write_pubkey_pem
	.section	.rodata.str1.4
	.align	4
.LC8:
	.string	"-----END RSA PRIVATE KEY-----\n"
	.align	4
.LC10:
	.string	"-----BEGIN RSA PRIVATE KEY-----\n"
	.align	4
.LC12:
	.string	"-----END EC PRIVATE KEY-----\n"
	.align	4
.LC14:
	.string	"-----BEGIN EC PRIVATE KEY-----\n"
	.section	.text.mbedtls_pk_write_key_pem,"ax",@progbits
	.literal_position
	.literal .LC9, .LC8
	.literal .LC11, .LC10
	.literal .LC13, .LC12
	.literal .LC15, .LC14
	.literal .LC16, -14720
	.literal .LC17, 5679
	.literal .LC18, 5680
	.align	4
	.global	mbedtls_pk_write_key_pem
	.type	mbedtls_pk_write_key_pem, @function
mbedtls_pk_write_key_pem:
.LFB17:
	.loc 1 401 0
.LVL233:
	entry	sp, 5744
.LCFI7:
	.loc 1 405 0
	addi	a6, sp, 16
	addmi	a5, a6, 0x1600
	movi.n	a8, 0
	s32i.n	a8, a5, 48
	.loc 1 407 0
	l32r	a12, .LC17
	mov.n	a11, a6
	mov.n	a10, a2
	call8	mbedtls_pk_write_key_der
.LVL234:
	mov.n	a5, a10
.LVL235:
	bltz	a10, .L71
	.loc 1 411 0
	mov.n	a10, a2
	call8	mbedtls_pk_get_type
.LVL236:
	beqi	a10, 1, .L72
	.loc 1 419 0
	mov.n	a10, a2
	call8	mbedtls_pk_get_type
.LVL237:
	bnei	a10, 2, .L73
	.loc 1 422 0
	l32r	a11, .LC13
	.loc 1 421 0
	l32r	a10, .LC15
	j	.L70
.L72:
	.loc 1 414 0
	l32r	a11, .LC9
	.loc 1 413 0
	l32r	a10, .LC11
.L70:
.LVL238:
	.loc 1 429 0
	l32r	a12, .LC17
	sub	a12, a12, a5
	.loc 1 428 0
	l32r	a2, .LC18
.LVL239:
	addi	a6, sp, 16
	add.n	a2, a6, a2
	s32i.n	a2, sp, 0
	mov.n	a15, a4
	mov.n	a14, a3
	mov.n	a13, a5
	add.n	a12, a6, a12
	call8	mbedtls_pem_write_buffer
.LVL240:
	bnez.n	a10, .L74
	.loc 1 435 0
	movi.n	a2, 0
	retw.n
.LVL241:
.L71:
	.loc 1 408 0
	mov.n	a2, a10
.LVL242:
	retw.n
.LVL243:
.L73:
	.loc 1 426 0
	l32r	a2, .LC16
.LVL244:
	retw.n
.LVL245:
.L74:
	.loc 1 432 0
	mov.n	a2, a10
	.loc 1 436 0
	retw.n
.LFE17:
	.size	mbedtls_pk_write_key_pem, .-mbedtls_pk_write_key_pem
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
	.uleb128 0xb0
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
	.uleb128 0x30
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
	.uleb128 0x40
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
	.uleb128 0x40
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
	.uleb128 0x860
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
	.uleb128 0x1670
	.align	4
.LEFDE14:
	.text
.Letext0:
	.file 3 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 4 "C:/esp/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 5 "C:/esp/esp-idf/components/newlib/include/stdint.h"
	.file 6 "C:/esp/esp-idf/components/mbedtls/include/mbedtls/bignum.h"
	.file 7 "C:/esp/esp-idf/components/mbedtls/include/mbedtls/rsa.h"
	.file 8 "C:/esp/esp-idf/components/mbedtls/include/mbedtls/ecp.h"
	.file 9 "C:/esp/esp-idf/components/mbedtls/include/mbedtls/asn1write.h"
	.file 10 "C:/esp/esp-idf/components/mbedtls/include/mbedtls/oid.h"
	.file 11 "C:/esp/esp-idf/components/mbedtls/include/mbedtls/pem.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xf61
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF83
	.byte	0xc
	.4byte	.LASF84
	.4byte	.LASF85
	.4byte	.Ldebug_ranges0+0x30
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x3
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
	.uleb128 0x5
	.byte	0x4
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
	.byte	0x4
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
	.byte	0x5
	.byte	0x2d
	.4byte	0x5c
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
	.4byte	0x4e
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
	.byte	0x6
	.byte	0xa7
	.4byte	0x75
	.uleb128 0x8
	.byte	0xc
	.byte	0x6
	.byte	0xb5
	.4byte	0xdf
	.uleb128 0x9
	.string	"s"
	.byte	0x6
	.byte	0xb7
	.4byte	0x25
	.byte	0
	.uleb128 0x9
	.string	"n"
	.byte	0x6
	.byte	0xb8
	.4byte	0x2c
	.byte	0x4
	.uleb128 0x9
	.string	"p"
	.byte	0x6
	.byte	0xb9
	.4byte	0xdf
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xad
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x6
	.byte	0xbb
	.4byte	0xb8
	.uleb128 0x8
	.byte	0xac
	.byte	0x7
	.byte	0x4f
	.4byte	0x1b3
	.uleb128 0x9
	.string	"ver"
	.byte	0x7
	.byte	0x51
	.4byte	0x25
	.byte	0
	.uleb128 0x9
	.string	"len"
	.byte	0x7
	.byte	0x52
	.4byte	0x2c
	.byte	0x4
	.uleb128 0x9
	.string	"N"
	.byte	0x7
	.byte	0x54
	.4byte	0xe5
	.byte	0x8
	.uleb128 0x9
	.string	"E"
	.byte	0x7
	.byte	0x55
	.4byte	0xe5
	.byte	0x14
	.uleb128 0x9
	.string	"D"
	.byte	0x7
	.byte	0x57
	.4byte	0xe5
	.byte	0x20
	.uleb128 0x9
	.string	"P"
	.byte	0x7
	.byte	0x58
	.4byte	0xe5
	.byte	0x2c
	.uleb128 0x9
	.string	"Q"
	.byte	0x7
	.byte	0x59
	.4byte	0xe5
	.byte	0x38
	.uleb128 0x9
	.string	"DP"
	.byte	0x7
	.byte	0x5a
	.4byte	0xe5
	.byte	0x44
	.uleb128 0x9
	.string	"DQ"
	.byte	0x7
	.byte	0x5b
	.4byte	0xe5
	.byte	0x50
	.uleb128 0x9
	.string	"QP"
	.byte	0x7
	.byte	0x5c
	.4byte	0xe5
	.byte	0x5c
	.uleb128 0x9
	.string	"RN"
	.byte	0x7
	.byte	0x5e
	.4byte	0xe5
	.byte	0x68
	.uleb128 0x9
	.string	"RP"
	.byte	0x7
	.byte	0x5f
	.4byte	0xe5
	.byte	0x74
	.uleb128 0x9
	.string	"RQ"
	.byte	0x7
	.byte	0x60
	.4byte	0xe5
	.byte	0x80
	.uleb128 0x9
	.string	"Vi"
	.byte	0x7
	.byte	0x62
	.4byte	0xe5
	.byte	0x8c
	.uleb128 0x9
	.string	"Vf"
	.byte	0x7
	.byte	0x63
	.4byte	0xe5
	.byte	0x98
	.uleb128 0xa
	.4byte	.LASF16
	.byte	0x7
	.byte	0x65
	.4byte	0x25
	.byte	0xa4
	.uleb128 0xa
	.4byte	.LASF17
	.byte	0x7
	.byte	0x67
	.4byte	0x25
	.byte	0xa8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x7
	.byte	0x6f
	.4byte	0xf0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x37
	.byte	0x8
	.byte	0x3f
	.4byte	0x219
	.uleb128 0xc
	.4byte	.LASF19
	.byte	0
	.uleb128 0xc
	.4byte	.LASF20
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF21
	.byte	0x2
	.uleb128 0xc
	.4byte	.LASF22
	.byte	0x3
	.uleb128 0xc
	.4byte	.LASF23
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF24
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x6
	.uleb128 0xc
	.4byte	.LASF26
	.byte	0x7
	.uleb128 0xc
	.4byte	.LASF27
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF28
	.byte	0x9
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0xa
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0xb
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.4byte	.LASF32
	.byte	0x8
	.byte	0x4d
	.4byte	0x1be
	.uleb128 0x8
	.byte	0x24
	.byte	0x8
	.byte	0x6a
	.4byte	0x24b
	.uleb128 0x9
	.string	"X"
	.byte	0x8
	.byte	0x6c
	.4byte	0xe5
	.byte	0
	.uleb128 0x9
	.string	"Y"
	.byte	0x8
	.byte	0x6d
	.4byte	0xe5
	.byte	0xc
	.uleb128 0x9
	.string	"Z"
	.byte	0x8
	.byte	0x6e
	.4byte	0xe5
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.4byte	.LASF33
	.byte	0x8
	.byte	0x70
	.4byte	0x224
	.uleb128 0x8
	.byte	0x7c
	.byte	0x8
	.byte	0x8a
	.4byte	0x304
	.uleb128 0x9
	.string	"id"
	.byte	0x8
	.byte	0x8c
	.4byte	0x219
	.byte	0
	.uleb128 0x9
	.string	"P"
	.byte	0x8
	.byte	0x8d
	.4byte	0xe5
	.byte	0x4
	.uleb128 0x9
	.string	"A"
	.byte	0x8
	.byte	0x8e
	.4byte	0xe5
	.byte	0x10
	.uleb128 0x9
	.string	"B"
	.byte	0x8
	.byte	0x8f
	.4byte	0xe5
	.byte	0x1c
	.uleb128 0x9
	.string	"G"
	.byte	0x8
	.byte	0x90
	.4byte	0x24b
	.byte	0x28
	.uleb128 0x9
	.string	"N"
	.byte	0x8
	.byte	0x91
	.4byte	0xe5
	.byte	0x4c
	.uleb128 0xa
	.4byte	.LASF34
	.byte	0x8
	.byte	0x92
	.4byte	0x2c
	.byte	0x58
	.uleb128 0xa
	.4byte	.LASF35
	.byte	0x8
	.byte	0x93
	.4byte	0x2c
	.byte	0x5c
	.uleb128 0x9
	.string	"h"
	.byte	0x8
	.byte	0x94
	.4byte	0x37
	.byte	0x60
	.uleb128 0xa
	.4byte	.LASF36
	.byte	0x8
	.byte	0x95
	.4byte	0x319
	.byte	0x64
	.uleb128 0xa
	.4byte	.LASF37
	.byte	0x8
	.byte	0x96
	.4byte	0x339
	.byte	0x68
	.uleb128 0xa
	.4byte	.LASF38
	.byte	0x8
	.byte	0x97
	.4byte	0x339
	.byte	0x6c
	.uleb128 0xa
	.4byte	.LASF39
	.byte	0x8
	.byte	0x98
	.4byte	0x45
	.byte	0x70
	.uleb128 0x9
	.string	"T"
	.byte	0x8
	.byte	0x99
	.4byte	0x333
	.byte	0x74
	.uleb128 0xa
	.4byte	.LASF40
	.byte	0x8
	.byte	0x9a
	.4byte	0x2c
	.byte	0x78
	.byte	0
	.uleb128 0xd
	.4byte	0x25
	.4byte	0x313
	.uleb128 0xe
	.4byte	0x313
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xe5
	.uleb128 0x6
	.byte	0x4
	.4byte	0x304
	.uleb128 0xd
	.4byte	0x25
	.4byte	0x333
	.uleb128 0xe
	.4byte	0x333
	.uleb128 0xe
	.4byte	0x45
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x24b
	.uleb128 0x6
	.byte	0x4
	.4byte	0x31f
	.uleb128 0x3
	.4byte	.LASF41
	.byte	0x8
	.byte	0x9c
	.4byte	0x256
	.uleb128 0x8
	.byte	0xac
	.byte	0x8
	.byte	0xa5
	.4byte	0x373
	.uleb128 0x9
	.string	"grp"
	.byte	0x8
	.byte	0xa7
	.4byte	0x33f
	.byte	0
	.uleb128 0x9
	.string	"d"
	.byte	0x8
	.byte	0xa8
	.4byte	0xe5
	.byte	0x7c
	.uleb128 0x9
	.string	"Q"
	.byte	0x8
	.byte	0xa9
	.4byte	0x24b
	.byte	0x88
	.byte	0
	.uleb128 0x3
	.4byte	.LASF42
	.byte	0x8
	.byte	0xab
	.4byte	0x34a
	.uleb128 0xb
	.byte	0x4
	.4byte	0x37
	.byte	0x2
	.byte	0x4a
	.4byte	0x3b5
	.uleb128 0xc
	.4byte	.LASF43
	.byte	0
	.uleb128 0xc
	.4byte	.LASF44
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF45
	.byte	0x2
	.uleb128 0xc
	.4byte	.LASF46
	.byte	0x3
	.uleb128 0xc
	.4byte	.LASF47
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF48
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF49
	.byte	0x6
	.byte	0
	.uleb128 0x3
	.4byte	.LASF50
	.byte	0x2
	.byte	0x79
	.4byte	0x3c0
	.uleb128 0xf
	.4byte	.LASF50
	.uleb128 0x8
	.byte	0x8
	.byte	0x2
	.byte	0x7e
	.4byte	0x3e6
	.uleb128 0xa
	.4byte	.LASF51
	.byte	0x2
	.byte	0x80
	.4byte	0x3e6
	.byte	0
	.uleb128 0xa
	.4byte	.LASF52
	.byte	0x2
	.byte	0x81
	.4byte	0x45
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3ec
	.uleb128 0x7
	.4byte	0x3b5
	.uleb128 0x3
	.4byte	.LASF53
	.byte	0x2
	.byte	0x82
	.4byte	0x3c5
	.uleb128 0x10
	.4byte	.LASF54
	.byte	0x2
	.byte	0x8b
	.4byte	0x417
	.byte	0x3
	.4byte	0x417
	.uleb128 0x11
	.string	"pk"
	.byte	0x2
	.byte	0x8b
	.4byte	0x41d
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1b3
	.uleb128 0x7
	.4byte	0x3f1
	.uleb128 0x10
	.4byte	.LASF55
	.byte	0x2
	.byte	0x98
	.4byte	0x43d
	.byte	0x3
	.4byte	0x43d
	.uleb128 0x11
	.string	"pk"
	.byte	0x2
	.byte	0x98
	.4byte	0x41d
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x373
	.uleb128 0x12
	.4byte	.LASF57
	.byte	0x1
	.byte	0x40
	.4byte	0x25
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x51e
	.uleb128 0x13
	.string	"p"
	.byte	0x1
	.byte	0x40
	.4byte	0x51e
	.4byte	.LLST0
	.uleb128 0x14
	.4byte	.LASF56
	.byte	0x1
	.byte	0x40
	.4byte	0x95
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x15
	.string	"rsa"
	.byte	0x1
	.byte	0x41
	.4byte	0x417
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x16
	.string	"ret"
	.byte	0x1
	.byte	0x43
	.4byte	0x25
	.4byte	.LLST1
	.uleb128 0x16
	.string	"len"
	.byte	0x1
	.byte	0x44
	.4byte	0x2c
	.4byte	.LLST2
	.uleb128 0x17
	.4byte	.LVL2
	.4byte	0xede
	.4byte	0x4c1
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 20
	.byte	0
	.uleb128 0x17
	.4byte	.LVL5
	.4byte	0xede
	.4byte	0x4e1
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 8
	.byte	0
	.uleb128 0x17
	.4byte	.LVL8
	.4byte	0xee9
	.4byte	0x501
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL11
	.4byte	0xef4
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x95
	.uleb128 0x12
	.4byte	.LASF58
	.byte	0x1
	.byte	0x55
	.4byte	0x25
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5d8
	.uleb128 0x13
	.string	"p"
	.byte	0x1
	.byte	0x55
	.4byte	0x51e
	.4byte	.LLST3
	.uleb128 0x1a
	.4byte	.LASF56
	.byte	0x1
	.byte	0x55
	.4byte	0x95
	.4byte	.LLST4
	.uleb128 0x15
	.string	"ec"
	.byte	0x1
	.byte	0x56
	.4byte	0x43d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x16
	.string	"ret"
	.byte	0x1
	.byte	0x58
	.4byte	0x25
	.4byte	.LLST5
	.uleb128 0x1b
	.string	"len"
	.byte	0x1
	.byte	0x59
	.4byte	0x2c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x1b
	.string	"buf"
	.byte	0x1
	.byte	0x5a
	.4byte	0x5d8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -172
	.uleb128 0x17
	.4byte	.LVL22
	.4byte	0xeff
	.4byte	0x5c6
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x74
	.sleb128 136
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -172
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x8
	.byte	0x85
	.byte	0
	.uleb128 0x19
	.4byte	.LVL25
	.4byte	0xf0b
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -172
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	0x4e
	.4byte	0x5e8
	.uleb128 0x1d
	.4byte	0x87
	.byte	0x84
	.byte	0
	.uleb128 0x12
	.4byte	.LASF59
	.byte	0x1
	.byte	0x71
	.4byte	0x25
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x68f
	.uleb128 0x13
	.string	"p"
	.byte	0x1
	.byte	0x71
	.4byte	0x51e
	.4byte	.LLST6
	.uleb128 0x14
	.4byte	.LASF56
	.byte	0x1
	.byte	0x71
	.4byte	0x95
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x15
	.string	"ec"
	.byte	0x1
	.byte	0x72
	.4byte	0x43d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x16
	.string	"ret"
	.byte	0x1
	.byte	0x74
	.4byte	0x25
	.4byte	.LLST7
	.uleb128 0x1e
	.string	"len"
	.byte	0x1
	.byte	0x75
	.4byte	0x2c
	.byte	0
	.uleb128 0x1b
	.string	"oid"
	.byte	0x1
	.byte	0x76
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1f
	.4byte	.LASF60
	.byte	0x1
	.byte	0x77
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x17
	.4byte	.LVL35
	.4byte	0xf14
	.4byte	0x678
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x19
	.4byte	.LVL37
	.4byte	0xf20
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LASF61
	.byte	0x1
	.byte	0x82
	.4byte	0x25
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x746
	.uleb128 0x13
	.string	"p"
	.byte	0x1
	.byte	0x82
	.4byte	0x51e
	.4byte	.LLST8
	.uleb128 0x14
	.4byte	.LASF56
	.byte	0x1
	.byte	0x82
	.4byte	0x95
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x15
	.string	"key"
	.byte	0x1
	.byte	0x83
	.4byte	0x746
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x16
	.string	"ret"
	.byte	0x1
	.byte	0x85
	.4byte	0x25
	.4byte	.LLST9
	.uleb128 0x16
	.string	"len"
	.byte	0x1
	.byte	0x86
	.4byte	0x2c
	.4byte	.LLST10
	.uleb128 0x17
	.4byte	.LVL43
	.4byte	0xf2b
	.4byte	0x701
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL44
	.4byte	0x443
	.4byte	0x71b
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL47
	.4byte	0xf2b
	.4byte	0x72f
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL48
	.4byte	0x524
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x41d
	.uleb128 0x20
	.4byte	.LASF62
	.byte	0x1
	.byte	0x97
	.4byte	0x25
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8f7
	.uleb128 0x13
	.string	"key"
	.byte	0x1
	.byte	0x97
	.4byte	0x8f7
	.4byte	.LLST11
	.uleb128 0x15
	.string	"buf"
	.byte	0x1
	.byte	0x97
	.4byte	0x95
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1a
	.4byte	.LASF63
	.byte	0x1
	.byte	0x97
	.4byte	0x2c
	.4byte	.LLST12
	.uleb128 0x16
	.string	"ret"
	.byte	0x1
	.byte	0x99
	.4byte	0x25
	.4byte	.LLST13
	.uleb128 0x1b
	.string	"c"
	.byte	0x1
	.byte	0x9a
	.4byte	0x95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x16
	.string	"len"
	.byte	0x1
	.byte	0x9b
	.4byte	0x2c
	.4byte	.LLST14
	.uleb128 0x21
	.4byte	.LASF64
	.byte	0x1
	.byte	0x9b
	.4byte	0x2c
	.4byte	.LLST15
	.uleb128 0x1f
	.4byte	.LASF60
	.byte	0x1
	.byte	0x9b
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1b
	.string	"oid"
	.byte	0x1
	.byte	0x9c
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x17
	.4byte	.LVL59
	.4byte	0x68f
	.4byte	0x805
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL63
	.4byte	0xee9
	.4byte	0x825
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL66
	.4byte	0xef4
	.4byte	0x844
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x17
	.4byte	.LVL69
	.4byte	0xf2b
	.4byte	0x858
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL70
	.4byte	0xf37
	.4byte	0x872
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.uleb128 0x17
	.4byte	.LVL72
	.4byte	0xf2b
	.4byte	0x886
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL73
	.4byte	0x5e8
	.4byte	0x8a0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL77
	.4byte	0xf43
	.4byte	0x8ba
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL80
	.4byte	0xee9
	.4byte	0x8da
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL83
	.4byte	0xef4
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3f1
	.uleb128 0x20
	.4byte	.LASF65
	.byte	0x1
	.byte	0xc7
	.4byte	0x25
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xce8
	.uleb128 0x13
	.string	"key"
	.byte	0x1
	.byte	0xc7
	.4byte	0x8f7
	.4byte	.LLST16
	.uleb128 0x15
	.string	"buf"
	.byte	0x1
	.byte	0xc7
	.4byte	0x95
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1a
	.4byte	.LASF63
	.byte	0x1
	.byte	0xc7
	.4byte	0x2c
	.4byte	.LLST17
	.uleb128 0x16
	.string	"ret"
	.byte	0x1
	.byte	0xc9
	.4byte	0x25
	.4byte	.LLST18
	.uleb128 0x1b
	.string	"c"
	.byte	0x1
	.byte	0xca
	.4byte	0x95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x16
	.string	"len"
	.byte	0x1
	.byte	0xcb
	.4byte	0x2c
	.4byte	.LLST19
	.uleb128 0x22
	.4byte	.Ldebug_ranges0+0
	.4byte	0xafa
	.uleb128 0x23
	.string	"rsa"
	.byte	0x1
	.byte	0xd0
	.4byte	0x417
	.uleb128 0x24
	.4byte	0x3fc
	.4byte	.LBB15
	.4byte	.LBE15-.LBB15
	.byte	0x1
	.byte	0xd0
	.4byte	0x99b
	.uleb128 0x25
	.4byte	0x40c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x17
	.4byte	.LVL107
	.4byte	0xede
	.4byte	0x9bc
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x74
	.sleb128 92
	.byte	0
	.uleb128 0x17
	.4byte	.LVL110
	.4byte	0xede
	.4byte	0x9dd
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x74
	.sleb128 80
	.byte	0
	.uleb128 0x17
	.4byte	.LVL113
	.4byte	0xede
	.4byte	0x9fe
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x74
	.sleb128 68
	.byte	0
	.uleb128 0x17
	.4byte	.LVL116
	.4byte	0xede
	.4byte	0xa1e
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 56
	.byte	0
	.uleb128 0x17
	.4byte	.LVL119
	.4byte	0xede
	.4byte	0xa3e
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 44
	.byte	0
	.uleb128 0x17
	.4byte	.LVL122
	.4byte	0xede
	.4byte	0xa5e
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 32
	.byte	0
	.uleb128 0x17
	.4byte	.LVL125
	.4byte	0xede
	.4byte	0xa7e
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 20
	.byte	0
	.uleb128 0x17
	.4byte	.LVL128
	.4byte	0xede
	.4byte	0xa9e
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 8
	.byte	0
	.uleb128 0x17
	.4byte	.LVL131
	.4byte	0xf4e
	.4byte	0xabd
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x17
	.4byte	.LVL134
	.4byte	0xee9
	.4byte	0xadd
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL137
	.4byte	0xef4
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0xcc3
	.uleb128 0x23
	.string	"ec"
	.byte	0x1
	.byte	0xe5
	.4byte	0x43d
	.uleb128 0x21
	.4byte	.LASF66
	.byte	0x1
	.byte	0xe6
	.4byte	0x2c
	.4byte	.LLST20
	.uleb128 0x21
	.4byte	.LASF64
	.byte	0x1
	.byte	0xe6
	.4byte	0x2c
	.4byte	.LLST21
	.uleb128 0x24
	.4byte	0x422
	.4byte	.LBB18
	.4byte	.LBE18-.LBB18
	.byte	0x1
	.byte	0xe5
	.4byte	0xb47
	.uleb128 0x25
	.4byte	0x432
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.uleb128 0x17
	.4byte	.LVL142
	.4byte	0x524
	.4byte	0xb67
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL147
	.4byte	0xee9
	.4byte	0xb87
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL150
	.4byte	0xef4
	.4byte	0xba6
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x17
	.4byte	.LVL153
	.4byte	0xee9
	.4byte	0xbc6
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL156
	.4byte	0xef4
	.4byte	0xbe6
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0xa1
	.byte	0
	.uleb128 0x17
	.4byte	.LVL159
	.4byte	0x5e8
	.4byte	0xc06
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL162
	.4byte	0xee9
	.4byte	0xc26
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL165
	.4byte	0xef4
	.4byte	0xc46
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0xa0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL169
	.4byte	0xede
	.4byte	0xc67
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x74
	.sleb128 124
	.byte	0
	.uleb128 0x17
	.4byte	.LVL173
	.4byte	0xf4e
	.4byte	0xc86
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x17
	.4byte	.LVL176
	.4byte	0xee9
	.4byte	0xca6
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL179
	.4byte	0xef4
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL106
	.4byte	0xf2b
	.4byte	0xcd7
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL140
	.4byte	0xf2b
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x17a
	.4byte	0x25
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdae
	.uleb128 0x27
	.string	"key"
	.byte	0x1
	.2byte	0x17a
	.4byte	0x8f7
	.4byte	.LLST22
	.uleb128 0x28
	.string	"buf"
	.byte	0x1
	.2byte	0x17a
	.4byte	0x95
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x29
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x17a
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2a
	.string	"ret"
	.byte	0x1
	.2byte	0x17c
	.4byte	0x25
	.4byte	.LLST23
	.uleb128 0x2b
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x17d
	.4byte	0xdae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2128
	.uleb128 0x2b
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x17e
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x17
	.4byte	.LVL227
	.4byte	0x74c
	.4byte	0xd7e
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x826
	.byte	0
	.uleb128 0x19
	.4byte	.LVL230
	.4byte	0xf59
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	0x4e
	.4byte	0xdbf
	.uleb128 0x2c
	.4byte	0x87
	.2byte	0x825
	.byte	0
	.uleb128 0x26
	.4byte	.LASF70
	.byte	0x1
	.2byte	0x190
	.4byte	0x25
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xecd
	.uleb128 0x27
	.string	"key"
	.byte	0x1
	.2byte	0x190
	.4byte	0x8f7
	.4byte	.LLST24
	.uleb128 0x28
	.string	"buf"
	.byte	0x1
	.2byte	0x190
	.4byte	0x95
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x29
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x190
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2a
	.string	"ret"
	.byte	0x1
	.2byte	0x192
	.4byte	0x25
	.4byte	.LLST25
	.uleb128 0x2b
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x193
	.4byte	0xecd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -5728
	.uleb128 0x2d
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x194
	.4byte	0xa2
	.4byte	.LLST26
	.uleb128 0x2a
	.string	"end"
	.byte	0x1
	.2byte	0x194
	.4byte	0xa2
	.4byte	.LLST27
	.uleb128 0x2b
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x195
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.4byte	.LVL234
	.4byte	0x8fd
	.4byte	0xe75
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x162f
	.byte	0
	.uleb128 0x17
	.4byte	.LVL236
	.4byte	0xf2b
	.4byte	0xe89
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL237
	.4byte	0xf2b
	.4byte	0xe9d
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL240
	.4byte	0xf59
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x8
	.byte	0x76
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x162f
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	0x4e
	.4byte	0xede
	.uleb128 0x2c
	.4byte	0x87
	.2byte	0x162e
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF72
	.4byte	.LASF72
	.byte	0x9
	.byte	0x55
	.uleb128 0x2e
	.4byte	.LASF73
	.4byte	.LASF73
	.byte	0x9
	.byte	0x2d
	.uleb128 0x2e
	.4byte	.LASF74
	.4byte	.LASF74
	.byte	0x9
	.byte	0x39
	.uleb128 0x2f
	.4byte	.LASF75
	.4byte	.LASF75
	.byte	0x8
	.2byte	0x190
	.uleb128 0x30
	.4byte	.LASF86
	.4byte	.LASF86
	.uleb128 0x2f
	.4byte	.LASF76
	.4byte	.LASF76
	.byte	0xa
	.2byte	0x1d3
	.uleb128 0x2e
	.4byte	.LASF77
	.4byte	.LASF77
	.byte	0x9
	.byte	0x6e
	.uleb128 0x2f
	.4byte	.LASF78
	.4byte	.LASF78
	.byte	0x2
	.2byte	0x1ac
	.uleb128 0x2f
	.4byte	.LASF79
	.4byte	.LASF79
	.byte	0xa
	.2byte	0x1bc
	.uleb128 0x2e
	.4byte	.LASF80
	.4byte	.LASF80
	.byte	0x9
	.byte	0x7e
	.uleb128 0x2e
	.4byte	.LASF81
	.4byte	.LASF81
	.byte	0x9
	.byte	0x98
	.uleb128 0x2e
	.4byte	.LASF82
	.4byte	.LASF82
	.byte	0xb
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
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
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL15
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL4
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL21
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
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL23
	.4byte	.LVL27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL31
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL22
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL27
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL33
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
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL39
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL41
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL55
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL44
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL48
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL54
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL42
	.4byte	.LVL45
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL46
	.4byte	.LVL49
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL50
	.4byte	.LFE13
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL56
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL78
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
	.4byte	.LVL91
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL91
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
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL56
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL58
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL59
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL63
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL66
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL73
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL77
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL80
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL83
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL57
	.4byte	.LVL60
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL61
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL78
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL85
	.4byte	.LVL87
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL87
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL89
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL99
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL101
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL57
	.4byte	.LVL74
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL74
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL75
	.4byte	.LVL76
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL76
	.4byte	.LVL77-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL85
	.4byte	.LVL97
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL103
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL108
	.4byte	.LVL139
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL139
	.4byte	.LVL144
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL144
	.4byte	.LVL201
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL201
	.4byte	.LVL202
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL202
	.4byte	.LVL203
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL203
	.4byte	.LVL204
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL204
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL103
	.4byte	.LVL104
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL104
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL108
	.4byte	.LVL110
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL110
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL113
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL116
	.4byte	.LVL118
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL119
	.4byte	.LVL121
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL122
	.4byte	.LVL124
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL125
	.4byte	.LVL127
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL128
	.4byte	.LVL130
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL131
	.4byte	.LVL133
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL134
	.4byte	.LVL136
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL137
	.4byte	.LVL138
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL142
	.4byte	.LVL146
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL146
	.4byte	.LVL147
	.2byte	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL147
	.4byte	.LVL149
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL150
	.4byte	.LVL152
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL153
	.4byte	.LVL155
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL156
	.4byte	.LVL158
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL160
	.4byte	.LVL162
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL162
	.4byte	.LVL164
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL165
	.4byte	.LVL168
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL169
	.4byte	.LVL172
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL173
	.4byte	.LVL175
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL176
	.4byte	.LVL178
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL179
	.4byte	.LVL180
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL181
	.4byte	.LVL201
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL203
	.4byte	.LVL225
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL225
	.4byte	.LFE15
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL105
	.4byte	.LVL109
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL109
	.4byte	.LVL138
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL138
	.4byte	.LVL139
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL139
	.4byte	.LVL157
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL157
	.4byte	.LVL167
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL167
	.4byte	.LVL180
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL180
	.4byte	.LVL181
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL181
	.4byte	.LVL182
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL183
	.4byte	.LVL184
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL185
	.4byte	.LVL186
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL187
	.4byte	.LVL188
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL189
	.4byte	.LVL190
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL191
	.4byte	.LVL192
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL193
	.4byte	.LVL194
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL195
	.4byte	.LVL196
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL197
	.4byte	.LVL198
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL199
	.4byte	.LVL200
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL201
	.4byte	.LVL214
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL214
	.4byte	.LVL218
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL218
	.4byte	.LVL219
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL220
	.4byte	.LVL221
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL222
	.4byte	.LVL223
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL224
	.4byte	.LVL225
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL141
	.4byte	.LVL143
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL143
	.4byte	.LVL145
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL145
	.4byte	.LVL157
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL157
	.4byte	.LVL171
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL203
	.4byte	.LVL205
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL205
	.4byte	.LVL206
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL206
	.4byte	.LVL207
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL208
	.4byte	.LVL209
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL210
	.4byte	.LVL211
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL212
	.4byte	.LVL213
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL214
	.4byte	.LVL220
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL141
	.4byte	.LVL161
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL161
	.4byte	.LVL167
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL203
	.4byte	.LVL214
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL214
	.4byte	.LVL215
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL216
	.4byte	.LVL217
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL226
	.4byte	.LVL228
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL228
	.4byte	.LVL231
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL231
	.4byte	.LVL232
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL232
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL227
	.4byte	.LVL229
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL229
	.4byte	.LVL230-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL230
	.4byte	.LFE16
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL233
	.4byte	.LVL239
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL239
	.4byte	.LVL241
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL241
	.4byte	.LVL242
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL242
	.4byte	.LVL243
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL243
	.4byte	.LVL244
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL244
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL235
	.4byte	.LVL240
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL240
	.4byte	.LVL241
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL241
	.4byte	.LVL245
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL245
	.4byte	.LFE17
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL238
	.4byte	.LVL240-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL238
	.4byte	.LVL240-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x54
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
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB14
	.4byte	.LBE14
	.4byte	.LBB20
	.4byte	.LBE20
	.4byte	0
	.4byte	0
	.4byte	.LBB17
	.4byte	.LBE17
	.4byte	.LBB21
	.4byte	.LBE21
	.4byte	0
	.4byte	0
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF25:
	.string	"MBEDTLS_ECP_DP_BP256R1"
.LASF16:
	.string	"padding"
.LASF17:
	.string	"hash_id"
.LASF5:
	.string	"size_t"
.LASF68:
	.string	"output_buf"
.LASF70:
	.string	"mbedtls_pk_write_key_pem"
.LASF79:
	.string	"mbedtls_oid_get_oid_by_pk_alg"
.LASF72:
	.string	"mbedtls_asn1_write_mpi"
.LASF67:
	.string	"mbedtls_pk_write_pubkey_pem"
.LASF8:
	.string	"long long unsigned int"
.LASF78:
	.string	"mbedtls_pk_get_type"
.LASF39:
	.string	"t_data"
.LASF15:
	.string	"mbedtls_mpi"
.LASF18:
	.string	"mbedtls_rsa_context"
.LASF26:
	.string	"MBEDTLS_ECP_DP_BP384R1"
.LASF50:
	.string	"mbedtls_pk_info_t"
.LASF7:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF37:
	.string	"t_pre"
.LASF55:
	.string	"mbedtls_pk_ec"
.LASF19:
	.string	"MBEDTLS_ECP_DP_NONE"
.LASF22:
	.string	"MBEDTLS_ECP_DP_SECP256R1"
.LASF10:
	.string	"long int"
.LASF75:
	.string	"mbedtls_ecp_point_write_binary"
.LASF76:
	.string	"mbedtls_oid_get_oid_by_ec_grp"
.LASF60:
	.string	"oid_len"
.LASF86:
	.string	"memcpy"
.LASF21:
	.string	"MBEDTLS_ECP_DP_SECP224R1"
.LASF69:
	.string	"olen"
.LASF62:
	.string	"mbedtls_pk_write_pubkey_der"
.LASF6:
	.string	"__uint32_t"
.LASF20:
	.string	"MBEDTLS_ECP_DP_SECP192R1"
.LASF23:
	.string	"MBEDTLS_ECP_DP_SECP384R1"
.LASF35:
	.string	"nbits"
.LASF0:
	.string	"unsigned int"
.LASF71:
	.string	"begin"
.LASF12:
	.string	"long unsigned int"
.LASF29:
	.string	"MBEDTLS_ECP_DP_SECP192K1"
.LASF3:
	.string	"unsigned char"
.LASF63:
	.string	"size"
.LASF1:
	.string	"short unsigned int"
.LASF45:
	.string	"MBEDTLS_PK_ECKEY"
.LASF30:
	.string	"MBEDTLS_ECP_DP_SECP224K1"
.LASF43:
	.string	"MBEDTLS_PK_NONE"
.LASF85:
	.string	"C:\\\\esp\\\\ArkPOS2-esp\\\\build\\\\mbedtls"
.LASF64:
	.string	"par_len"
.LASF47:
	.string	"MBEDTLS_PK_ECDSA"
.LASF65:
	.string	"mbedtls_pk_write_key_der"
.LASF51:
	.string	"pk_info"
.LASF11:
	.string	"sizetype"
.LASF40:
	.string	"T_size"
.LASF57:
	.string	"pk_write_rsa_pubkey"
.LASF34:
	.string	"pbits"
.LASF27:
	.string	"MBEDTLS_ECP_DP_BP512R1"
.LASF53:
	.string	"mbedtls_pk_context"
.LASF82:
	.string	"mbedtls_pem_write_buffer"
.LASF14:
	.string	"mbedtls_mpi_uint"
.LASF32:
	.string	"mbedtls_ecp_group_id"
.LASF83:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF4:
	.string	"short int"
.LASF81:
	.string	"mbedtls_asn1_write_int"
.LASF31:
	.string	"MBEDTLS_ECP_DP_SECP256K1"
.LASF52:
	.string	"pk_ctx"
.LASF9:
	.string	"uint32_t"
.LASF42:
	.string	"mbedtls_ecp_keypair"
.LASF46:
	.string	"MBEDTLS_PK_ECKEY_DH"
.LASF24:
	.string	"MBEDTLS_ECP_DP_SECP521R1"
.LASF13:
	.string	"char"
.LASF84:
	.string	"C:/esp/esp-idf/components/mbedtls/library/pkwrite.c"
.LASF49:
	.string	"MBEDTLS_PK_RSASSA_PSS"
.LASF77:
	.string	"mbedtls_asn1_write_oid"
.LASF36:
	.string	"modp"
.LASF38:
	.string	"t_post"
.LASF59:
	.string	"pk_write_ec_param"
.LASF54:
	.string	"mbedtls_pk_rsa"
.LASF41:
	.string	"mbedtls_ecp_group"
.LASF73:
	.string	"mbedtls_asn1_write_len"
.LASF74:
	.string	"mbedtls_asn1_write_tag"
.LASF48:
	.string	"MBEDTLS_PK_RSA_ALT"
.LASF58:
	.string	"pk_write_ec_pubkey"
.LASF33:
	.string	"mbedtls_ecp_point"
.LASF28:
	.string	"MBEDTLS_ECP_DP_CURVE25519"
.LASF61:
	.string	"mbedtls_pk_write_pubkey"
.LASF66:
	.string	"pub_len"
.LASF56:
	.string	"start"
.LASF80:
	.string	"mbedtls_asn1_write_algorithm_identifier"
.LASF44:
	.string	"MBEDTLS_PK_RSA"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-61-gab8375a) 5.2.0"
