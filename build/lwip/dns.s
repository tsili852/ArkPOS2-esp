	.file	"dns.c"
	.text
.Ltext0:
	.section	.text.dns_stricmp,"ax",@progbits
	.align	4
	.type	dns_stricmp, @function
dns_stricmp:
.LFB13:
	.file 1 "C:/esp/esp-idf/components/lwip/core/dns.c"
	.loc 1 338 0
.LVL0:
	entry	sp, 32
.LCFI0:
.L4:
	.loc 1 342 0
	addi.n	a12, a2, 1
.LVL1:
	l8ui	a10, a2, 0
.LVL2:
	.loc 1 343 0
	addi.n	a11, a3, 1
.LVL3:
	l8ui	a3, a3, 0
.LVL4:
	.loc 1 344 0
	beq	a10, a3, .L2
.LBB2:
	.loc 1 345 0
	movi.n	a8, 0x20
	or	a8, a10, a8
	extui	a8, a8, 0, 8
.LVL5:
	.loc 1 346 0
	addi	a2, a8, -97
.LVL6:
	extui	a2, a2, 0, 8
	movi.n	a9, 0x19
	bltu	a9, a2, .L5
.LBB3:
	.loc 1 349 0
	movi.n	a9, 0x20
	or	a9, a3, a9
	extui	a9, a9, 0, 8
.LVL7:
	.loc 1 350 0
	bne	a8, a9, .L6
.LVL8:
.L2:
.LBE3:
.LBE2:
	.loc 1 342 0
	mov.n	a2, a12
	.loc 1 343 0
	mov.n	a3, a11
	.loc 1 360 0
	bnez.n	a10, .L4
.LVL9:
	.loc 1 361 0
	movi.n	a2, 0
.LVL10:
	retw.n
.LVL11:
.L5:
.LBB5:
	.loc 1 357 0
	movi.n	a2, 1
	retw.n
.LVL12:
.L6:
.LBB4:
	.loc 1 353 0
	movi.n	a2, 1
.LBE4:
.LBE5:
	.loc 1 362 0
	retw.n
.LFE13:
	.size	dns_stricmp, .-dns_stricmp
	.section	.text.dns_lookup,"ax",@progbits
	.literal_position
	.literal .LC0, dns_table
	.align	4
	.type	dns_lookup, @function
dns_lookup:
.LFB18:
	.loc 1 607 0
.LVL13:
	entry	sp, 32
.LCFI1:
.LVL14:
	.loc 1 623 0
	movi.n	a5, 0
	j	.L8
.LVL15:
.L14:
	.loc 1 624 0
	mov.n	a6, a5
	addx8	a9, a5, a5
	addx8	a9, a9, a5
	slli	a8, a9, 2
	l32r	a9, .LC0
	add.n	a8, a9, a8
	l8ui	a8, a8, 26
	bnei	a8, 3, .L9
	.loc 1 625 0 discriminator 1
	addx8	a8, a5, a5
	addx8	a8, a8, a5
	slli	a11, a8, 2
	addi	a11, a11, 32
	add.n	a11, a9, a11
	mov.n	a10, a2
	call8	dns_stricmp
.LVL16:
	.loc 1 624 0 discriminator 1
	bnez.n	a10, .L9
	.loc 1 626 0
	addx8	a9, a5, a5
	addx8	a9, a9, a5
	slli	a8, a9, 2
	l32r	a9, .LC0
	add.n	a8, a9, a8
	l8ui	a11, a8, 20
	.loc 1 625 0
	bnei	a11, 6, .L10
	.loc 1 626 0 discriminator 1
	addi	a8, a4, -3
	movi.n	a12, 1
	movi.n	a9, 0
	mov.n	a10, a9
	moveqz	a10, a12, a8
	mov.n	a8, a10
	addi.n	a10, a4, -1
	moveqz	a9, a12, a10
	or	a8, a9, a8
	j	.L11
.L10:
	.loc 1 626 0 is_stmt 0 discriminator 2
	addi	a9, a4, -3
	movi.n	a12, 1
	movi.n	a8, 0
	mov.n	a10, a8
	movnez	a10, a12, a9
	mov.n	a9, a10
	addi.n	a10, a4, -1
	movnez	a8, a12, a10
	and	a8, a8, a9
.L11:
	.loc 1 625 0 is_stmt 1 discriminator 4
	beqz.n	a8, .L9
	.loc 1 630 0
	beqz.n	a3, .L15
	.loc 1 631 0
	s8i	a11, a3, 16
	addx8	a4, a6, a6
.LVL17:
	addx8	a4, a4, a6
	slli	a2, a4, 2
.LVL18:
	l32r	a4, .LC0
	add.n	a2, a4, a2
	l8ui	a2, a2, 20
	bnei	a2, 6, .L13
	.loc 1 631 0 is_stmt 0 discriminator 1
	mov.n	a5, a4
.LVL19:
	addx8	a2, a6, a6
	slli	a2, a2, 3
	add.n	a8, a2, a6
	slli	a4, a8, 2
	add.n	a4, a5, a4
	l32i.n	a8, a4, 4
	s32i.n	a8, a3, 0
	l32i.n	a8, a4, 8
	s32i.n	a8, a3, 4
	l32i.n	a4, a4, 12
	s32i.n	a4, a3, 8
	add.n	a6, a2, a6
.LVL20:
	slli	a2, a6, 2
	mov.n	a6, a2
	add.n	a2, a5, a2
	l32i.n	a2, a2, 16
	s32i.n	a2, a3, 12
	.loc 1 633 0 is_stmt 1 discriminator 1
	movi.n	a2, 0
	retw.n
.LVL21:
.L13:
	.loc 1 631 0 discriminator 2
	addx8	a2, a6, a6
	addx8	a6, a2, a6
	slli	a2, a6, 2
	mov.n	a6, a2
	l32r	a4, .LC0
	add.n	a2, a4, a2
	l32i.n	a2, a2, 4
	s32i.n	a2, a3, 0
	.loc 1 633 0 discriminator 2
	movi.n	a2, 0
	retw.n
.LVL22:
.L9:
	.loc 1 623 0 discriminator 2
	addi.n	a5, a5, 1
.LVL23:
	extui	a5, a5, 0, 8
.LVL24:
.L8:
	.loc 1 623 0 is_stmt 0 discriminator 1
	bltui	a5, 4, .L14
	.loc 1 637 0 is_stmt 1
	movi	a2, 0xf1
.LVL25:
	retw.n
.LVL26:
.L15:
	.loc 1 633 0
	movi.n	a2, 0
.LVL27:
	.loc 1 638 0
	retw.n
.LFE18:
	.size	dns_lookup, .-dns_lookup
	.section	.text.dns_create_txid,"ax",@progbits
	.literal_position
	.literal .LC1, dns_table
	.align	4
	.type	dns_create_txid, @function
dns_create_txid:
.LFB25:
	.loc 1 935 0
.L17:
	entry	sp, 32
.LCFI2:
.L20:
	.loc 1 940 0
	call8	esp_random
.LVL28:
	extui	a2, a10, 0, 16
.LVL29:
	.loc 1 943 0
	movi.n	a8, 0
	j	.L18
.LVL30:
.L21:
	.loc 1 944 0
	addx8	a11, a8, a8
	addx8	a11, a11, a8
	slli	a9, a11, 2
	l32r	a11, .LC1
	add.n	a9, a11, a9
	l8ui	a9, a9, 26
	bnei	a9, 2, .L19
	.loc 1 945 0 discriminator 1
	addx8	a11, a8, a8
	addx8	a11, a11, a8
	slli	a9, a11, 2
	l32r	a10, .LC1
	add.n	a9, a10, a9
	l16ui	a9, a9, 24
	.loc 1 944 0 discriminator 1
	beq	a2, a9, .L20
.L19:
	.loc 1 943 0 discriminator 2
	addi.n	a8, a8, 1
.LVL31:
	extui	a8, a8, 0, 8
.LVL32:
.L18:
	.loc 1 943 0 is_stmt 0 discriminator 1
	bltui	a8, 4, .L21
	.loc 1 952 0 is_stmt 1
	retw.n
.LFE25:
	.size	dns_create_txid, .-dns_create_txid
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC3:
	.string	"invalid response"
	.align	4
.LC6:
	.string	"C:/esp/esp-idf/components/lwip/core/dns.c"
	.section	.text.dns_call_found,"ax",@progbits
	.literal_position
	.literal .LC2, dns_table
	.literal .LC4, .LC3
	.literal .LC5, __func__$6075
	.literal .LC7, .LC6
	.literal .LC8, dns_requests
	.literal .LC9, dns_pcbs
	.align	4
	.type	dns_call_found, @function
dns_call_found:
.LFB24:
	.loc 1 877 0
.LVL33:
	entry	sp, 32
.LCFI3:
	.loc 1 883 0
	beqz.n	a3, .L23
	.loc 1 885 0
	l8ui	a4, a3, 16
	bnei	a4, 6, .L24
	.loc 1 886 0
	addx8	a5, a2, a2
	addx8	a5, a5, a2
	slli	a4, a5, 2
	l32r	a5, .LC2
	add.n	a4, a5, a4
	movi	a5, 0x120
	add.n	a4, a4, a5
	l8ui	a4, a4, 0
	addi	a6, a4, -3
	movi.n	a8, 1
	movi.n	a7, 0
	mov.n	a5, a7
	movnez	a5, a8, a6
	mov.n	a6, a5
	addi.n	a5, a4, -1
	mov.n	a4, a7
	movnez	a4, a8, a5
	bnone	a6, a4, .L25
	.loc 1 886 0 is_stmt 0 discriminator 1
	l32r	a13, .LC4
	l32r	a12, .LC5
	movi	a11, 0x376
	l32r	a10, .LC7
	call8	__assert_func
.LVL34:
.L25:
	.loc 1 887 0 is_stmt 1
	addx8	a5, a2, a2
	addx8	a5, a5, a2
	slli	a4, a5, 2
	l32r	a5, .LC2
	add.n	a4, a5, a4
	movi	a5, 0x120
	add.n	a4, a4, a5
	movi.n	a5, 1
	s8i	a5, a4, 0
	j	.L23
.L24:
	.loc 1 889 0
	addx8	a5, a2, a2
	addx8	a5, a5, a2
	slli	a4, a5, 2
	l32r	a5, .LC2
	add.n	a4, a5, a4
	movi	a5, 0x120
	add.n	a4, a4, a5
	l8ui	a4, a4, 0
	addi	a6, a4, -3
	movi.n	a8, 1
	movi.n	a7, 0
	mov.n	a5, a7
	moveqz	a5, a8, a6
	mov.n	a6, a5
	addi.n	a5, a4, -1
	mov.n	a4, a7
	moveqz	a4, a8, a5
	or	a4, a6, a4
	beq	a4, a7, .L26
	.loc 1 889 0 is_stmt 0 discriminator 1
	l32r	a13, .LC4
	l32r	a12, .LC5
	movi	a11, 0x379
	l32r	a10, .LC7
	call8	__assert_func
.LVL35:
.L26:
	.loc 1 890 0 is_stmt 1
	addx8	a5, a2, a2
	addx8	a5, a5, a2
	slli	a4, a5, 2
	l32r	a5, .LC2
	add.n	a4, a5, a4
	movi	a5, 0x120
	add.n	a4, a4, a5
	movi.n	a5, 0
	s8i	a5, a4, 0
.L23:
	.loc 1 877 0 discriminator 1
	movi.n	a4, 0
	j	.L27
.LVL36:
.L29:
	.loc 1 897 0
	mov.n	a5, a4
	addx2	a9, a4, a4
	slli	a8, a9, 2
	l32r	a9, .LC8
	add.n	a8, a9, a8
	l32i.n	a13, a8, 0
	beqz.n	a13, .L28
	.loc 1 897 0 is_stmt 0 discriminator 1
	addx2	a9, a4, a4
	slli	a8, a9, 2
	l32r	a6, .LC8
	add.n	a8, a6, a8
	l8ui	a6, a8, 8
	bne	a2, a6, .L28
	.loc 1 898 0 is_stmt 1
	addx8	a6, a2, a2
	addx8	a6, a6, a2
	slli	a10, a6, 2
	addi	a10, a10, 32
	l32r	a6, .LC8
	slli	a7, a4, 1
	add.n	a9, a7, a4
	slli	a8, a9, 2
	add.n	a8, a6, a8
	l32i.n	a12, a8, 4
	mov.n	a11, a3
	l32r	a8, .LC2
	add.n	a10, a8, a10
	callx8	a13
.LVL37:
	.loc 1 900 0
	add.n	a5, a7, a4
	slli	a7, a5, 2
	add.n	a6, a6, a7
	movi.n	a5, 0
	s32i.n	a5, a6, 0
.L28:
	.loc 1 896 0 discriminator 2
	addi.n	a4, a4, 1
.LVL38:
	extui	a4, a4, 0, 8
.LVL39:
.L27:
	.loc 1 896 0 is_stmt 0 discriminator 1
	bltui	a4, 4, .L29
	movi.n	a4, 0
.LVL40:
	j	.L30
.LVL41:
.L33:
	.loc 1 912 0 is_stmt 1
	beq	a4, a2, .L31
	.loc 1 915 0
	addx8	a5, a4, a4
	addx8	a5, a5, a4
	slli	a3, a5, 2
	l32r	a5, .LC2
	add.n	a3, a5, a3
	l8ui	a3, a3, 26
	bnei	a3, 2, .L31
	.loc 1 916 0
	mov.n	a7, a5
	addx8	a6, a4, a4
	addx8	a6, a6, a4
	slli	a5, a6, 2
	add.n	a5, a7, a5
	l8ui	a6, a5, 31
	addx8	a5, a2, a2
	addx8	a5, a5, a2
	slli	a3, a5, 2
	mov.n	a5, a3
	add.n	a3, a7, a3
	l8ui	a3, a3, 31
	bne	a6, a3, .L31
	.loc 1 918 0
	add.n	a3, a7, a5
	movi.n	a4, 4
.LVL42:
	s8i	a4, a3, 31
	.loc 1 919 0
	j	.L32
.LVL43:
.L31:
	.loc 1 911 0 discriminator 2
	addi.n	a4, a4, 1
.LVL44:
	extui	a4, a4, 0, 8
.LVL45:
.L30:
	.loc 1 911 0 is_stmt 0 discriminator 1
	bltui	a4, 4, .L33
.LVL46:
.L32:
	.loc 1 923 0 is_stmt 1
	addx8	a4, a2, a2
	addx8	a4, a4, a2
	slli	a3, a4, 2
	l32r	a4, .LC2
	add.n	a3, a4, a3
	l8ui	a3, a3, 31
	bgeui	a3, 4, .L22
	.loc 1 925 0
	l32r	a5, .LC9
	addx4	a3, a3, a5
	l32i.n	a10, a3, 0
	call8	udp_remove
.LVL47:
	.loc 1 926 0
	l32r	a7, .LC2
	addx8	a4, a2, a2
	slli	a4, a4, 3
	add.n	a3, a4, a2
	slli	a6, a3, 2
	add.n	a6, a7, a6
	l8ui	a6, a6, 31
	addx4	a5, a6, a5
	movi.n	a3, 0
	s32i.n	a3, a5, 0
	.loc 1 927 0
	add.n	a2, a4, a2
.LVL48:
	slli	a3, a2, 2
	add.n	a3, a7, a3
	movi.n	a2, 4
	s8i	a2, a3, 31
.L22:
	retw.n
.LFE24:
	.size	dns_call_found, .-dns_call_found
	.section	.rodata.str1.4
	.align	4
.LC11:
	.string	"dns server out of array"
	.section	.text.dns_send,"ax",@progbits
	.literal_position
	.literal .LC10, dns_table
	.literal .LC12, .LC11
	.literal .LC13, __func__$6043
	.literal .LC14, .LC6
	.literal .LC15, dns_servers
	.literal .LC16, 7168
	.literal .LC17, dns_pcbs
	.align	4
	.type	dns_send, @function
dns_send:
.LFB21:
	.loc 1 718 0
.LVL49:
	entry	sp, 64
.LCFI4:
	s32i.n	a2, sp, 16
.LVL50:
	.loc 1 731 0
	addx8	a3, a2, a2
	addx8	a3, a3, a2
	slli	a2, a3, 2
.LVL51:
	l32r	a3, .LC10
	add.n	a2, a3, a2
	l8ui	a2, a2, 27
	bltui	a2, 2, .L36
	.loc 1 731 0 is_stmt 0 discriminator 1
	l32r	a13, .LC12
	l32r	a12, .LC13
	movi	a11, 0x2db
	l32r	a10, .LC14
	call8	__assert_func
.LVL52:
.L36:
	.loc 1 732 0 is_stmt 1
	addx4	a4, a2, a2
	slli	a3, a4, 2
	l32r	a4, .LC15
	add.n	a3, a4, a3
	l8ui	a3, a3, 16
	bnei	a3, 6, .L37
	.loc 1 732 0 is_stmt 0 discriminator 1
	addx4	a4, a2, a2
	slli	a3, a4, 2
	l32r	a4, .LC15
	add.n	a3, a4, a3
	l32i.n	a3, a3, 0
	bnez.n	a3, .L47
	.loc 1 732 0 discriminator 3
	addx4	a4, a2, a2
	slli	a3, a4, 2
	l32r	a4, .LC15
	add.n	a3, a4, a3
	l32i.n	a3, a3, 4
	bnez.n	a3, .L48
	.loc 1 732 0 discriminator 5
	addx4	a4, a2, a2
	slli	a3, a4, 2
	l32r	a4, .LC15
	add.n	a3, a4, a3
	l32i.n	a3, a3, 8
	bnez.n	a3, .L49
	.loc 1 732 0 discriminator 7
	addx4	a2, a2, a2
	slli	a3, a2, 2
	add.n	a3, a4, a3
	l32i.n	a2, a3, 12
	beqz.n	a2, .L50
	.loc 1 732 0
	movi.n	a2, 0
	j	.L39
.L47:
	movi.n	a2, 0
	j	.L39
.L48:
	movi.n	a2, 0
	j	.L39
.L49:
	movi.n	a2, 0
	j	.L39
.L50:
	movi.n	a2, 1
	j	.L39
.L37:
	.loc 1 732 0 discriminator 2
	addx4	a2, a2, a2
	slli	a3, a2, 2
	l32r	a2, .LC15
	add.n	a3, a2, a3
	l32i.n	a3, a3, 0
	movi.n	a2, 0
	movi.n	a4, 1
	moveqz	a2, a4, a3
	extui	a2, a2, 0, 8
.L39:
	.loc 1 732 0 discriminator 14
	beqz.n	a2, .L40
	.loc 1 735 0 is_stmt 1
	movi.n	a11, 0
	l32i.n	a10, sp, 16
	call8	dns_call_found
.LVL53:
	.loc 1 737 0
	l32i.n	a2, sp, 16
	addx8	a3, a2, a2
	addx8	a3, a3, a2
	slli	a2, a3, 2
	l32r	a3, .LC10
	add.n	a2, a3, a2
	movi.n	a3, 0
	s8i	a3, a2, 26
	.loc 1 738 0
	movi.n	a2, 0
	retw.n
.L40:
	.loc 1 742 0
	l32i.n	a4, sp, 16
	addx8	a3, a4, a4
	addx8	a3, a3, a4
	slli	a2, a3, 2
	addi	a2, a2, 32
	l32r	a3, .LC10
	add.n	a3, a2, a3
	mov.n	a10, a3
	call8	strlen
.LVL54:
	addi	a10, a10, 18
	movi.n	a12, 0
	extui	a11, a10, 0, 16
	mov.n	a10, a12
	call8	pbuf_alloc
.LVL55:
	mov.n	a6, a10
.LVL56:
	.loc 1 744 0
	beqz.n	a10, .L51
	.loc 1 746 0
	movi.n	a2, 0
	s32i.n	a2, sp, 0
	s32i.n	a2, sp, 4
	s32i.n	a2, sp, 8
	.loc 1 747 0
	l32i.n	a2, sp, 16
	addx8	a4, a2, a2
	addx8	a4, a4, a2
	slli	a2, a4, 2
	l32r	a4, .LC10
	add.n	a2, a4, a2
	l16ui	a10, a2, 24
	call8	lwip_htons
.LVL57:
	s16i	a10, sp, 0
	.loc 1 748 0
	movi.n	a2, 1
	s8i	a2, sp, 2
	.loc 1 749 0
	movi	a2, 0x100
	s16i	a2, sp, 4
	.loc 1 750 0
	movi.n	a12, 0xc
	mov.n	a11, sp
	mov.n	a10, a6
	call8	pbuf_take
.LVL58:
	.loc 1 752 0
	addi.n	a3, a3, -1
.LVL59:
	.loc 1 755 0
	movi.n	a4, 0xc
.LVL60:
.L44:
	.loc 1 757 0
	addi.n	a3, a3, 1
.LVL61:
	mov.n	a5, a3
	.loc 1 759 0
	movi.n	a2, 0
	j	.L42
.LVL62:
.L43:
	.loc 1 760 0 discriminator 3
	addi.n	a2, a2, 1
.LVL63:
	extui	a2, a2, 0, 8
.LVL64:
	.loc 1 759 0 discriminator 3
	addi.n	a3, a3, 1
.LVL65:
.L42:
	.loc 1 759 0 is_stmt 0 discriminator 1
	l8ui	a7, a3, 0
	addi	a8, a7, -46
	movi.n	a10, 1
	movi.n	a9, 0
	mov.n	a11, a9
	movnez	a11, a10, a8
	movnez	a9, a10, a7
	bany	a11, a9, .L43
	.loc 1 762 0 is_stmt 1
	sub	a7, a3, a5
.LVL66:
	.loc 1 763 0
	mov.n	a12, a2
	mov.n	a11, a4
	mov.n	a10, a6
	call8	pbuf_put_at
.LVL67:
	.loc 1 764 0
	addi.n	a13, a4, 1
	extui	a13, a13, 0, 16
	extui	a12, a7, 0, 16
	mov.n	a11, a5
	mov.n	a10, a6
	call8	pbuf_take_at
.LVL68:
	.loc 1 765 0
	add.n	a2, a4, a2
.LVL69:
	extui	a2, a2, 0, 16
	addi.n	a4, a2, 1
.LVL70:
	extui	a4, a4, 0, 16
.LVL71:
	.loc 1 766 0
	l8ui	a5, a3, 0
	bnez.n	a5, .L44
	.loc 1 767 0
	movi.n	a12, 0
	mov.n	a11, a4
	mov.n	a10, a6
	call8	pbuf_put_at
.LVL72:
	.loc 1 768 0
	addi.n	a2, a2, 2
	extui	a13, a2, 0, 16
.LVL73:
	.loc 1 771 0
	l32i.n	a2, sp, 16
.LVL74:
	addx8	a3, a2, a2
.LVL75:
	addx8	a3, a3, a2
	slli	a2, a3, 2
	l32r	a3, .LC10
	add.n	a2, a3, a2
	movi	a3, 0x120
	add.n	a2, a2, a3
	l8ui	a2, a2, 0
	addi	a4, a2, -3
	movi.n	a7, 1
.LVL76:
	mov.n	a3, a5
	moveqz	a3, a7, a4
	mov.n	a4, a3
	addi.n	a3, a2, -1
	mov.n	a2, a5
	moveqz	a2, a7, a3
	or	a2, a4, a2
	beq	a2, a5, .L45
	.loc 1 772 0
	l32r	a4, .LC16
	s16i	a4, sp, 12
	j	.L46
.L45:
	.loc 1 774 0
	movi	a2, 0x100
	s16i	a2, sp, 12
.L46:
	.loc 1 776 0
	movi	a2, 0x100
	s16i	a2, sp, 14
	.loc 1 777 0
	movi.n	a12, 4
	addi.n	a11, sp, 12
	mov.n	a10, a6
	call8	pbuf_take_at
.LVL77:
	.loc 1 780 0
	l32r	a5, .LC10
	l32i.n	a3, sp, 16
	addx8	a2, a3, a3
	slli	a2, a2, 3
	add.n	a3, a2, a3
	slli	a4, a3, 2
	add.n	a4, a5, a4
	l8ui	a4, a4, 31
.LVL78:
	.loc 1 787 0
	l32r	a3, .LC17
.LVL79:
	addx4	a4, a4, a3
	l32i.n	a3, sp, 16
	add.n	a2, a2, a3
.LVL80:
	slli	a3, a2, 2
.LVL81:
	add.n	a3, a5, a3
.LVL82:
	l8ui	a2, a3, 27
	addx4	a2, a2, a2
	slli	a3, a2, 2
.LVL83:
	movi.n	a13, 0x35
	l32r	a12, .LC15
	add.n	a12, a12, a3
	mov.n	a11, a6
	l32i.n	a10, a4, 0
	call8	udp_sendto
.LVL84:
	extui	a2, a10, 0, 8
.LVL85:
	.loc 1 790 0
	mov.n	a10, a6
.LVL86:
	call8	pbuf_free
.LVL87:
	retw.n
.LVL88:
.L51:
	.loc 1 792 0
	movi	a2, 0xff
	.loc 1 796 0
	retw.n
.LFE21:
	.size	dns_send, .-dns_send
	.section	.rodata.str1.4
	.align	4
.LC18:
	.string	"array index out of bounds"
	.align	4
.LC24:
	.string	"unknown dns_table entry state:"
	.section	.text.dns_check_entry,"ax",@progbits
	.literal_position
	.literal .LC19, .LC18
	.literal .LC20, __func__$6097
	.literal .LC21, .LC6
	.literal .LC22, dns_table
	.literal .LC23, dns_servers
	.literal .LC25, .LC24
	.align	4
	.type	dns_check_entry, @function
dns_check_entry:
.LFB26:
	.loc 1 965 0
.LVL89:
	entry	sp, 32
.LCFI5:
.LVL90:
	.loc 1 969 0
	bltui	a2, 4, .L53
	.loc 1 969 0 is_stmt 0 discriminator 1
	l32r	a13, .LC19
	l32r	a12, .LC20
	movi	a11, 0x3c9
	l32r	a10, .LC21
	call8	__assert_func
.LVL91:
.L53:
	.loc 1 971 0 is_stmt 1
	addx8	a9, a2, a2
	addx8	a9, a9, a2
	slli	a8, a9, 2
	l32r	a9, .LC22
	add.n	a8, a9, a8
	l8ui	a8, a8, 26
	beqi	a8, 1, .L55
	beqz.n	a8, .L52
	beqi	a8, 2, .L57
	beqi	a8, 3, .L58
	j	.L70
.L55:
.LBB6:
	.loc 1 976 0
	call8	dns_create_txid
.LVL92:
	.loc 1 977 0
	addx8	a9, a2, a2
	slli	a9, a9, 3
	add.n	a9, a9, a2
	slli	a8, a9, 2
	l32r	a9, .LC22
	add.n	a8, a9, a8
	s16i	a10, a8, 24
	.loc 1 978 0
	movi.n	a9, 2
	s8i	a9, a8, 26
	.loc 1 979 0
	movi.n	a9, 0
	s8i	a9, a8, 27
	.loc 1 980 0
	movi.n	a10, 1
.LVL93:
	s8i	a10, a8, 28
	.loc 1 981 0
	s8i	a9, a8, 29
	.loc 1 984 0
	mov.n	a10, a2
	call8	dns_send
.LVL94:
	retw.n
.L57:
.LBE6:
	.loc 1 993 0
	addx8	a8, a2, a2
	slli	a8, a8, 3
	add.n	a8, a8, a2
	slli	a9, a8, 2
	l32r	a8, .LC22
	add.n	a9, a8, a9
	l8ui	a8, a9, 28
	addi.n	a8, a8, -1
	extui	a8, a8, 0, 8
	s8i	a8, a9, 28
	bnez.n	a8, .L52
	.loc 1 994 0
	addx8	a8, a2, a2
	slli	a8, a8, 3
	add.n	a8, a8, a2
	slli	a9, a8, 2
	l32r	a8, .LC22
	add.n	a9, a8, a9
	l8ui	a8, a9, 29
	addi.n	a8, a8, 1
	extui	a8, a8, 0, 8
	s8i	a8, a9, 29
	bnei	a8, 4, .L59
	.loc 1 995 0
	addx8	a9, a2, a2
	addx8	a9, a9, a2
	slli	a8, a9, 2
	l32r	a9, .LC22
	add.n	a8, a9, a8
	l8ui	a9, a8, 27
	addi.n	a8, a9, 1
	bgei	a8, 2, .L60
	.loc 1 995 0 is_stmt 0 discriminator 1
	addx4	a11, a8, a8
	slli	a10, a11, 2
	l32r	a11, .LC23
	add.n	a10, a11, a10
	l8ui	a10, a10, 16
	bnei	a10, 6, .L61
	.loc 1 995 0 discriminator 2
	addx4	a11, a8, a8
	slli	a10, a11, 2
	l32r	a11, .LC23
	add.n	a10, a11, a10
	l32i.n	a10, a10, 0
	bnez.n	a10, .L66
	.loc 1 995 0 discriminator 5
	addx4	a11, a8, a8
	slli	a10, a11, 2
	l32r	a11, .LC23
	add.n	a10, a11, a10
	l32i.n	a10, a10, 4
	bnez.n	a10, .L67
	.loc 1 995 0 discriminator 7
	addx4	a11, a8, a8
	slli	a10, a11, 2
	l32r	a11, .LC23
	add.n	a10, a11, a10
	l32i.n	a10, a10, 8
	bnez.n	a10, .L68
	.loc 1 995 0 discriminator 9
	addx4	a8, a8, a8
	slli	a10, a8, 2
	add.n	a10, a11, a10
	l32i.n	a8, a10, 12
	beqz.n	a8, .L69
	.loc 1 995 0
	movi.n	a8, 1
	j	.L62
.L66:
	movi.n	a8, 1
	j	.L62
.L67:
	movi.n	a8, 1
	j	.L62
.L68:
	movi.n	a8, 1
	j	.L62
.L69:
	movi.n	a8, 0
.L62:
	.loc 1 995 0 discriminator 13
	bnez.n	a8, .L63
	j	.L60
.L61:
	.loc 1 995 0 discriminator 3
	addx4	a8, a8, a8
	slli	a10, a8, 2
	l32r	a8, .LC23
	add.n	a10, a8, a10
	l32i.n	a8, a10, 0
	beqz.n	a8, .L60
.L63:
	.loc 1 997 0 is_stmt 1
	addx8	a10, a2, a2
	slli	a10, a10, 3
	add.n	a10, a10, a2
	slli	a8, a10, 2
	l32r	a10, .LC22
	add.n	a8, a10, a8
	addi.n	a9, a9, 1
	s8i	a9, a8, 27
	.loc 1 998 0
	movi.n	a9, 1
	s8i	a9, a8, 28
	.loc 1 999 0
	movi.n	a9, 0
	s8i	a9, a8, 29
	j	.L64
.L60:
	.loc 1 1003 0
	movi.n	a11, 0
	mov.n	a10, a2
	call8	dns_call_found
.LVL95:
	.loc 1 1005 0
	addx8	a8, a2, a2
	addx8	a2, a8, a2
.LVL96:
	slli	a8, a2, 2
	l32r	a2, .LC22
	add.n	a8, a2, a8
	movi.n	a2, 0
	s8i	a2, a8, 26
	.loc 1 1006 0
	retw.n
.LVL97:
.L59:
	.loc 1 1010 0
	addx8	a10, a2, a2
	addx8	a10, a10, a2
	slli	a9, a10, 2
	l32r	a10, .LC22
	add.n	a9, a10, a9
	s8i	a8, a9, 28
.L64:
	.loc 1 1014 0
	mov.n	a10, a2
	call8	dns_send
.LVL98:
	retw.n
.L58:
	.loc 1 1023 0
	addx8	a9, a2, a2
	addx8	a9, a9, a2
	slli	a8, a9, 2
	l32r	a9, .LC22
	add.n	a8, a9, a8
	l32i.n	a8, a8, 0
	beqz.n	a8, .L65
	.loc 1 1023 0 is_stmt 0 discriminator 1
	addi.n	a8, a8, -1
	addx8	a10, a2, a2
	addx8	a10, a10, a2
	slli	a9, a10, 2
	l32r	a10, .LC22
	add.n	a9, a10, a9
	s32i.n	a8, a9, 0
	bnez.n	a8, .L52
.L65:
	.loc 1 1026 0 is_stmt 1
	addx8	a8, a2, a2
	addx8	a2, a8, a2
.LVL99:
	slli	a8, a2, 2
	l32r	a2, .LC22
	add.n	a8, a2, a8
	movi.n	a2, 0
	s8i	a2, a8, 26
	retw.n
.LVL100:
.L70:
	.loc 1 1033 0 discriminator 1
	l32r	a13, .LC25
	l32r	a12, .LC20
	movi	a11, 0x409
	l32r	a10, .LC21
	call8	__assert_func
.LVL101:
.L52:
	retw.n
.LFE26:
	.size	dns_check_entry, .-dns_check_entry
	.section	.text.dns_check_entries,"ax",@progbits
	.align	4
	.type	dns_check_entries, @function
dns_check_entries:
.LFB27:
	.loc 1 1043 0
	entry	sp, 32
.LCFI6:
.LVL102:
	.loc 1 1046 0
	movi.n	a2, 0
	j	.L72
.LVL103:
.L73:
	.loc 1 1047 0 discriminator 3
	mov.n	a10, a2
	call8	dns_check_entry
.LVL104:
	.loc 1 1046 0 discriminator 3
	addi.n	a2, a2, 1
.LVL105:
	extui	a2, a2, 0, 8
.LVL106:
.L72:
	.loc 1 1046 0 is_stmt 0 discriminator 1
	bltui	a2, 4, .L73
	.loc 1 1049 0 is_stmt 1
	retw.n
.LFE27:
	.size	dns_check_entries, .-dns_check_entries
	.section	.text.dns_alloc_random_port,"ax",@progbits
	.literal_position
	.literal .LC26, ip_addr_any_type
	.literal .LC27, dns_recv
	.align	4
	.type	dns_alloc_random_port, @function
dns_alloc_random_port:
.LFB22:
	.loc 1 801 0
	entry	sp, 32
.LCFI7:
	.loc 1 805 0
	movi.n	a10, 0x2e
	call8	udp_new_ip_type
.LVL107:
	mov.n	a2, a10
.LVL108:
	.loc 1 806 0
	beqz.n	a10, .L79
.L77:
.LBB7:
	.loc 1 811 0
	call8	esp_random
.LVL109:
	extui	a8, a10, 0, 16
.LVL110:
	.loc 1 812 0
	movi	a9, 0x3ff
	bgeu	a9, a8, .L80
	.loc 1 817 0
	mov.n	a12, a8
	l32r	a11, .LC26
	mov.n	a10, a2
.LVL111:
	call8	udp_bind
.LVL112:
	extui	a10, a10, 0, 8
.LVL113:
	j	.L76
.LVL114:
.L80:
	.loc 1 814 0
	movi	a10, 0xf8
.LVL115:
.L76:
.LBE7:
	.loc 1 818 0
	sext	a8, a10, 7
	movi.n	a9, -8
	beq	a8, a9, .L77
	.loc 1 819 0
	beqz.n	a10, .L78
	.loc 1 820 0
	mov.n	a10, a2
.LVL116:
	call8	udp_remove
.LVL117:
	.loc 1 821 0
	movi.n	a2, 0
.LVL118:
	retw.n
.LVL119:
.L78:
	.loc 1 823 0
	movi.n	a12, 0
	l32r	a11, .LC27
	mov.n	a10, a2
.LVL120:
	call8	udp_recv
.LVL121:
	.loc 1 824 0
	retw.n
.L79:
	.loc 1 808 0
	movi.n	a2, 0
.LVL122:
	.loc 1 825 0
	retw.n
.LFE22:
	.size	dns_alloc_random_port, .-dns_alloc_random_port
	.section	.text.dns_alloc_pcb,"ax",@progbits
	.literal_position
	.literal .LC28, dns_pcbs
	.literal .LC29, dns_last_pcb_idx
	.align	4
	.type	dns_alloc_pcb, @function
dns_alloc_pcb:
.LFB23:
	.loc 1 835 0
	entry	sp, 32
.LCFI8:
.LVL123:
	.loc 1 839 0
	movi.n	a2, 0
	j	.L82
.LVL124:
.L84:
	.loc 1 840 0
	l32r	a8, .LC28
	addx4	a8, a2, a8
	l32i.n	a8, a8, 0
	beqz.n	a8, .L83
	.loc 1 839 0 discriminator 2
	addi.n	a2, a2, 1
.LVL125:
	extui	a2, a2, 0, 8
.LVL126:
.L82:
	.loc 1 839 0 is_stmt 0 discriminator 1
	bltui	a2, 4, .L84
.L83:
	.loc 1 844 0 is_stmt 1
	bgeui	a2, 4, .L85
	.loc 1 845 0
	call8	dns_alloc_random_port
.LVL127:
	l32r	a8, .LC28
	addx4	a8, a2, a8
	s32i.n	a10, a8, 0
	.loc 1 846 0
	beqz.n	a10, .L85
	.loc 1 848 0
	l32r	a8, .LC29
	s8i	a2, a8, 0
	.loc 1 849 0
	retw.n
.L85:
.LVL128:
	.loc 1 854 0
	l32r	a2, .LC29
	l8ui	a2, a2, 0
	addi.n	a2, a2, 1
	extui	a2, a2, 0, 8
.LVL129:
	movi.n	a8, 0
	j	.L87
.LVL130:
.L90:
	.loc 1 855 0
	bltui	a2, 4, .L88
	.loc 1 856 0
	movi.n	a2, 0
.LVL131:
.L88:
	.loc 1 858 0
	l32r	a9, .LC28
	addx4	a9, a2, a9
	l32i.n	a9, a9, 0
	beqz.n	a9, .L89
	.loc 1 859 0
	l32r	a8, .LC29
.LVL132:
	s8i	a2, a8, 0
	.loc 1 860 0
	retw.n
.LVL133:
.L89:
	.loc 1 854 0 discriminator 2
	addi.n	a8, a8, 1
.LVL134:
	extui	a8, a8, 0, 8
.LVL135:
	addi.n	a2, a2, 1
.LVL136:
	extui	a2, a2, 0, 8
.LVL137:
.L87:
	.loc 1 854 0 is_stmt 0 discriminator 1
	bltui	a8, 4, .L90
	.loc 1 863 0 is_stmt 1
	movi.n	a2, 4
.LVL138:
	.loc 1 864 0
	retw.n
.LFE23:
	.size	dns_alloc_pcb, .-dns_alloc_pcb
	.section	.text.dns_enqueue,"ax",@progbits
	.literal_position
	.literal .LC30, dns_table
	.literal .LC31, dns_requests
	.literal .LC32, dns_seqno
	.align	4
	.type	dns_enqueue, @function
dns_enqueue:
.LFB29:
	.loc 1 1271 0
.LVL139:
	entry	sp, 48
.LCFI9:
	s32i.n	a3, sp, 4
	s32i.n	a5, sp, 0
.LVL140:
	.loc 1 1281 0
	movi.n	a3, 0
.LVL141:
	j	.L93
.LVL142:
.L99:
	.loc 1 1282 0
	addx8	a8, a3, a3
	addx8	a8, a8, a3
	slli	a7, a8, 2
	l32r	a8, .LC30
	add.n	a7, a8, a7
	l8ui	a7, a7, 26
	bnei	a7, 2, .L94
	.loc 1 1283 0 discriminator 1
	addx8	a7, a3, a3
	addx8	a7, a7, a3
	slli	a11, a7, 2
	addi	a11, a11, 32
	add.n	a11, a8, a11
	mov.n	a10, a2
	call8	dns_stricmp
.LVL143:
	.loc 1 1282 0 discriminator 1
	bnez.n	a10, .L94
	.loc 1 1285 0
	addx8	a7, a3, a3
	addx8	a5, a7, a3
	slli	a7, a5, 2
	l32r	a5, .LC30
	add.n	a7, a5, a7
	movi	a5, 0x120
	add.n	a7, a7, a5
	l8ui	a5, a7, 0
	bne	a5, a6, .L94
	movi.n	a5, 0
	j	.L95
.LVL144:
.L98:
	.loc 1 1294 0
	mov.n	a9, a5
	addx2	a8, a5, a5
	slli	a7, a8, 2
	l32r	a8, .LC31
	add.n	a7, a8, a7
	l32i.n	a7, a7, 0
	bnez.n	a7, .L96
	.loc 1 1295 0
	mov.n	a5, a8
.LVL145:
	slli	a7, a9, 1
	add.n	a8, a7, a9
	slli	a2, a8, 2
.LVL146:
	mov.n	a8, a2
	add.n	a2, a5, a2
	s32i.n	a4, a2, 0
	.loc 1 1296 0
	l32i.n	a4, sp, 0
.LVL147:
	s32i.n	a4, a2, 4
	.loc 1 1297 0
	s8i	a3, a2, 8
	.loc 1 1298 0
	add.n	a2, a5, a8
	s8i	a6, a2, 9
	.loc 1 1300 0
	movi	a2, 0xfb
.LVL148:
	retw.n
.LVL149:
.L96:
	.loc 1 1293 0 discriminator 2
	addi.n	a5, a5, 1
.LVL150:
	extui	a5, a5, 0, 8
.LVL151:
.L95:
	.loc 1 1293 0 is_stmt 0 discriminator 1
	bltui	a5, 4, .L98
.LVL152:
.L94:
	.loc 1 1281 0 is_stmt 1 discriminator 2
	addi.n	a3, a3, 1
.LVL153:
	extui	a3, a3, 0, 8
.LVL154:
.L93:
	.loc 1 1281 0 is_stmt 0 discriminator 1
	bltui	a3, 4, .L99
	movi.n	a7, 0
	movi.n	a9, 4
	mov.n	a10, a7
	mov.n	a5, a7
	j	.L100
.LVL155:
.L103:
	.loc 1 1312 0 is_stmt 1
	addx8	a3, a5, a5
	slli	a3, a3, 3
	add.n	a3, a3, a5
	slli	a7, a3, 2
.LVL156:
	l32r	a3, .LC30
	add.n	a7, a7, a3
.LVL157:
	.loc 1 1314 0
	l8ui	a3, a7, 26
	beqz.n	a3, .L101
	.loc 1 1318 0
	bnei	a3, 3, .L102
	.loc 1 1319 0
	addx8	a3, a5, a5
	addx8	a8, a3, a5
	slli	a3, a8, 2
	l32r	a8, .LC30
	add.n	a3, a8, a3
	l8ui	a8, a3, 30
	l32r	a3, .LC32
	l8ui	a3, a3, 0
	sub	a3, a3, a8
	extui	a3, a3, 0, 8
	bgeu	a10, a3, .L102
	.loc 1 1321 0
	mov.n	a9, a5
.LVL158:
	.loc 1 1320 0
	mov.n	a10, a3
.LVL159:
.L102:
	.loc 1 1311 0 discriminator 2
	addi.n	a5, a5, 1
.LVL160:
	extui	a5, a5, 0, 8
.LVL161:
.L100:
	.loc 1 1311 0 is_stmt 0 discriminator 1
	bltui	a5, 4, .L103
.L101:
	.loc 1 1327 0 is_stmt 1
	bnei	a5, 4, .L104
	.loc 1 1328 0
	bgeui	a9, 4, .L111
	.loc 1 1328 0 is_stmt 0 discriminator 1
	addx8	a5, a9, a9
.LVL162:
	addx8	a5, a5, a9
	slli	a3, a5, 2
	l32r	a5, .LC30
	add.n	a3, a5, a3
	l8ui	a3, a3, 26
	bnei	a3, 3, .L112
.LVL163:
	.loc 1 1335 0 is_stmt 1
	addx8	a3, a9, a9
	addx8	a3, a3, a9
	slli	a5, a3, 2
	l32r	a7, .LC30
.LVL164:
	add.n	a7, a5, a7
.LVL165:
	.loc 1 1334 0
	mov.n	a5, a9
.LVL166:
.L104:
	.loc 1 1342 0
	movi.n	a3, 0
	j	.L105
.LVL167:
.L108:
	.loc 1 1343 0
	addx2	a9, a3, a3
	slli	a8, a9, 2
	l32r	a9, .LC31
	add.n	a8, a9, a8
	l32i.n	a8, a8, 0
	bnez.n	a8, .L106
	.loc 1 1344 0
	addx2	a10, a3, a3
.LVL168:
	slli	a3, a10, 2
.LVL169:
	add.n	a3, a3, a9
.LVL170:
	.loc 1 1345 0
	j	.L107
.LVL171:
.L106:
	.loc 1 1342 0 discriminator 2
	addi.n	a3, a3, 1
.LVL172:
	extui	a3, a3, 0, 8
.LVL173:
.L105:
	.loc 1 1342 0 is_stmt 0 discriminator 1
	bltui	a3, 4, .L108
	.loc 1 1341 0 is_stmt 1
	movi.n	a3, 0
.LVL174:
.L107:
	.loc 1 1348 0
	beqz.n	a3, .L113
	.loc 1 1353 0
	s8i	a5, a3, 8
	.loc 1 1363 0
	movi.n	a8, 1
	s8i	a8, a7, 26
	.loc 1 1364 0
	l32r	a8, .LC32
	l8ui	a8, a8, 0
	s8i	a8, a7, 30
	.loc 1 1365 0
	addmi	a8, a7, 0x100
	s8i	a6, a8, 32
	.loc 1 1366 0
	s8i	a6, a3, 9
	.loc 1 1367 0
	s32i.n	a4, a3, 0
	.loc 1 1368 0
	l32i.n	a4, sp, 0
.LVL175:
	s32i.n	a4, a3, 4
	.loc 1 1369 0
	movi	a4, 0xff
	l32i.n	a6, sp, 4
.LVL176:
	minu	a4, a6, a4
.LVL177:
	.loc 1 1370 0
	mov.n	a12, a4
	mov.n	a11, a2
	addi	a10, a7, 32
	call8	memcpy
.LVL178:
	.loc 1 1371 0
	add.n	a4, a7, a4
.LVL179:
	movi.n	a2, 0
.LVL180:
	s8i	a2, a4, 32
	.loc 1 1374 0
	call8	dns_alloc_pcb
.LVL181:
	s8i	a10, a7, 31
	.loc 1 1375 0
	bltui	a10, 4, .L109
	.loc 1 1378 0
	s8i	a2, a7, 26
	.loc 1 1379 0
	movi.n	a2, 0
	s32i.n	a2, a3, 0
	.loc 1 1380 0
	movi	a2, 0xff
.LVL182:
	retw.n
.LVL183:
.L109:
	.loc 1 1385 0
	l32r	a3, .LC32
.LVL184:
	l8ui	a2, a3, 0
	addi.n	a2, a2, 1
	s8i	a2, a3, 0
	.loc 1 1388 0
	mov.n	a10, a5
	call8	dns_check_entry
.LVL185:
	.loc 1 1391 0
	movi	a2, 0xfb
	retw.n
.LVL186:
.L111:
	.loc 1 1331 0
	movi	a2, 0xff
.LVL187:
	retw.n
.LVL188:
.L112:
	movi	a2, 0xff
.LVL189:
	retw.n
.LVL190:
.L113:
	.loc 1 1351 0
	movi	a2, 0xff
.LVL191:
	.loc 1 1392 0
	retw.n
.LFE29:
	.size	dns_enqueue, .-dns_enqueue
	.section	.text.dns_compare_name,"ax",@progbits
	.literal_position
	.literal .LC33, 65535
	.align	4
	.type	dns_compare_name, @function
dns_compare_name:
.LFB19:
	.loc 1 653 0
.LVL192:
	entry	sp, 32
.LCFI10:
.LVL193:
.L118:
	.loc 1 658 0
	addi.n	a6, a4, 1
	extui	a6, a6, 0, 16
.LVL194:
	mov.n	a11, a4
	mov.n	a10, a3
	call8	pbuf_get_at
.LVL195:
	mov.n	a5, a10
.LVL196:
	.loc 1 660 0
	movi	a4, -0x40
	and	a4, a10, a4
	extui	a4, a4, 0, 8
	movi	a8, 0xc0
	beq	a4, a8, .L119
	mov.n	a4, a6
	j	.L116
.LVL197:
.L117:
	.loc 1 666 0
	l8ui	a6, a2, 0
	mov.n	a11, a4
	mov.n	a10, a3
	call8	pbuf_get_at
.LVL198:
	bne	a6, a10, .L120
	.loc 1 669 0
	addi.n	a4, a4, 1
.LVL199:
	extui	a4, a4, 0, 16
.LVL200:
	.loc 1 670 0
	addi.n	a2, a2, 1
.LVL201:
	.loc 1 671 0
	addi.n	a5, a5, -1
.LVL202:
	extui	a5, a5, 0, 8
.LVL203:
.L116:
	.loc 1 665 0
	bnez.n	a5, .L117
	.loc 1 673 0
	addi.n	a2, a2, 1
.LVL204:
	.loc 1 675 0
	mov.n	a11, a4
	mov.n	a10, a3
	call8	pbuf_get_at
.LVL205:
	bnez.n	a10, .L118
	.loc 1 677 0
	addi.n	a4, a4, 1
.LVL206:
	extui	a2, a4, 0, 16
.LVL207:
	retw.n
.LVL208:
.L119:
	.loc 1 662 0
	l32r	a2, .LC33
.LVL209:
	retw.n
.LVL210:
.L120:
	.loc 1 667 0
	l32r	a2, .LC33
.LVL211:
	.loc 1 678 0
	retw.n
.LFE19:
	.size	dns_compare_name, .-dns_compare_name
	.section	.text.dns_parse_name,"ax",@progbits
	.align	4
	.type	dns_parse_name, @function
dns_parse_name:
.LFB20:
	.loc 1 689 0
.LVL212:
	entry	sp, 32
.LCFI11:
.LVL213:
.L125:
	.loc 1 693 0
	addi.n	a4, a3, 1
	extui	a4, a4, 0, 16
.LVL214:
	mov.n	a11, a3
	mov.n	a10, a2
	call8	pbuf_get_at
.LVL215:
	.loc 1 695 0
	movi	a3, -0x40
	and	a3, a10, a3
	extui	a3, a3, 0, 8
	movi	a8, 0xc0
	beq	a3, a8, .L126
	mov.n	a3, a4
	j	.L123
.LVL216:
.L124:
	.loc 1 701 0
	addi.n	a3, a3, 1
.LVL217:
	extui	a3, a3, 0, 16
.LVL218:
	.loc 1 702 0
	addi.n	a10, a10, -1
.LVL219:
	extui	a10, a10, 0, 8
.LVL220:
.L123:
	.loc 1 700 0
	bnez.n	a10, .L124
	.loc 1 705 0
	mov.n	a11, a3
	mov.n	a10, a2
.LVL221:
	call8	pbuf_get_at
.LVL222:
	bnez.n	a10, .L125
	j	.L122
.LVL223:
.L126:
	.loc 1 693 0
	mov.n	a3, a4
.LVL224:
.L122:
	.loc 1 707 0
	addi.n	a2, a3, 1
.LVL225:
	.loc 1 708 0
	extui	a2, a2, 0, 16
	retw.n
.LFE20:
	.size	dns_parse_name, .-dns_parse_name
	.section	.text.dns_recv,"ax",@progbits
	.literal_position
	.literal .LC34, dns_table
	.literal .LC35, dns_servers
	.literal .LC36, 65535
	.literal .LC37, 7168
	.literal .LC38, 604800
	.literal .LC39, 4096
	.align	4
	.type	dns_recv, @function
dns_recv:
.LFB28:
	.loc 1 1058 0
.LVL226:
	entry	sp, 80
.LCFI12:
.LVL227:
	.loc 1 1072 0
	l16ui	a8, a4, 8
	movi.n	a9, 0xf
	bgeu	a9, a8, .L128
	.loc 1 1079 0
	movi.n	a13, 0
	movi.n	a12, 0xc
	mov.n	a11, sp
	mov.n	a10, a4
	call8	pbuf_copy_partial
.LVL228:
	bnei	a10, 12, .L128
	.loc 1 1081 0
	l16ui	a10, sp, 0
	call8	lwip_htons
.LVL229:
	.loc 1 1082 0
	movi.n	a8, 0
	j	.L129
.LVL230:
.L150:
.LBB8:
	.loc 1 1083 0
	mov.n	a2, a8
.LVL231:
	.loc 1 1085 0
	addx8	a11, a8, a8
	addx8	a11, a11, a8
	slli	a9, a11, 2
	l32r	a11, .LC34
	add.n	a9, a11, a9
	l8ui	a9, a9, 26
	bnei	a9, 2, .L130
.LVL232:
	.loc 1 1086 0 discriminator 1
	addx8	a11, a8, a8
	addx8	a11, a11, a8
	slli	a9, a11, 2
	l32r	a11, .LC34
	add.n	a9, a11, a9
	l16ui	a9, a9, 24
	.loc 1 1085 0 discriminator 1
	bne	a10, a9, .L130
.LBB9:
	.loc 1 1093 0
	l8ui	a6, sp, 3
.LVL233:
	extui	a6, a6, 0, 4
.LVL234:
	.loc 1 1097 0
	l16ui	a10, sp, 4
.LVL235:
	call8	lwip_htons
.LVL236:
	mov.n	a7, a10
.LVL237:
	.loc 1 1098 0
	l16ui	a10, sp, 6
	call8	lwip_htons
.LVL238:
	mov.n	a3, a10
.LVL239:
	.loc 1 1101 0
	l8ui	a8, sp, 2
	sext	a8, a8, 7
	bgez	a8, .L128
	.loc 1 1101 0 is_stmt 0 discriminator 1
	movi.n	a10, 1
	movi.n	a9, 0
	mov.n	a8, a9
	movnez	a8, a10, a6
	extui	a8, a8, 0, 8
	addi.n	a7, a7, -1
.LVL240:
	mov.n	a6, a9
.LVL241:
	movnez	a6, a10, a7
	extui	a6, a6, 0, 8
	bne	a8, a9, .L128
	bne	a6, a9, .L128
	.loc 1 1110 0 is_stmt 1
	addx8	a6, a2, a2
	slli	a6, a6, 3
	add.n	a6, a6, a2
	slli	a7, a6, 2
.LVL242:
	l32r	a6, .LC34
	add.n	a6, a6, a7
	movi.n	a7, 3
	s8i	a7, a6, 26
	.loc 1 1116 0
	l8ui	a7, a5, 16
	l8ui	a8, a6, 27
	addx4	a9, a8, a8
	slli	a6, a9, 2
	l32r	a9, .LC35
	add.n	a6, a9, a6
	l8ui	a6, a6, 16
	bne	a7, a6, .L151
	.loc 1 1116 0 is_stmt 0 discriminator 1
	bnei	a7, 6, .L132
	.loc 1 1116 0 discriminator 3
	l32i.n	a9, a5, 0
	addx4	a7, a8, a8
	slli	a6, a7, 2
	l32r	a7, .LC35
	add.n	a6, a7, a6
	l32i.n	a6, a6, 0
	bne	a9, a6, .L152
	.loc 1 1116 0 discriminator 6
	l32i.n	a9, a5, 4
	addx4	a7, a8, a8
	slli	a6, a7, 2
	l32r	a7, .LC35
	add.n	a6, a7, a6
	l32i.n	a6, a6, 4
	bne	a9, a6, .L153
	.loc 1 1116 0 discriminator 8
	l32i.n	a9, a5, 8
	addx4	a7, a8, a8
	slli	a6, a7, 2
	l32r	a7, .LC35
	add.n	a6, a7, a6
	l32i.n	a6, a6, 8
	bne	a9, a6, .L154
	.loc 1 1116 0 discriminator 10
	l32i.n	a6, a5, 12
	addx4	a8, a8, a8
	slli	a5, a8, 2
.LVL243:
	add.n	a5, a7, a5
	l32i.n	a5, a5, 12
	beq	a6, a5, .L155
	.loc 1 1116 0
	mov.n	a5, a10
	j	.L131
.LVL244:
.L152:
	movi.n	a5, 1
.LVL245:
	j	.L131
.LVL246:
.L153:
	movi.n	a5, 1
.LVL247:
	j	.L131
.LVL248:
.L154:
	movi.n	a5, 1
.LVL249:
	j	.L131
.L155:
	movi.n	a5, 0
	j	.L131
.LVL250:
.L132:
	.loc 1 1116 0 discriminator 4
	l32i.n	a5, a5, 0
.LVL251:
	addx4	a8, a8, a8
	slli	a6, a8, 2
	l32r	a7, .LC35
	add.n	a6, a7, a6
	l32i.n	a8, a6, 0
	sub	a8, a5, a8
	movi.n	a5, 0
	movi.n	a6, 1
	movnez	a5, a6, a8
	extui	a5, a5, 0, 8
	j	.L131
.LVL252:
.L151:
	.loc 1 1116 0
	movi.n	a5, 1
.LVL253:
.L131:
	.loc 1 1116 0 discriminator 18
	bnez.n	a5, .L134
	.loc 1 1123 0 is_stmt 1
	addx8	a6, a2, a2
	addx8	a6, a6, a2
	slli	a5, a6, 2
	addi	a5, a5, 32
	movi.n	a12, 0xc
	mov.n	a11, a4
	l32r	a10, .LC34
	add.n	a10, a10, a5
	call8	dns_compare_name
.LVL254:
	mov.n	a5, a10
.LVL255:
	.loc 1 1124 0
	l32r	a6, .LC36
	beq	a10, a6, .L134
	.loc 1 1131 0
	mov.n	a13, a10
	movi.n	a12, 4
	addi	a11, sp, 24
	mov.n	a10, a4
	call8	pbuf_copy_partial
.LVL256:
	.loc 1 1132 0
	l16ui	a6, sp, 26
	bnei	a6, 256, .L134
	.loc 1 1133 0 discriminator 1
	addx8	a7, a2, a2
	addx8	a7, a7, a2
	slli	a6, a7, 2
	l32r	a7, .LC34
	add.n	a6, a7, a6
	movi	a7, 0x120
	add.n	a6, a6, a7
	l8ui	a7, a6, 0
	addi	a10, a7, -3
	movi.n	a8, 1
	movi.n	a6, 0
	mov.n	a9, a6
	moveqz	a9, a8, a10
	mov.n	a10, a9
	addi.n	a9, a7, -1
	movnez	a8, a6, a9
	or	a8, a10, a8
	.loc 1 1132 0 discriminator 1
	beq	a8, a6, .L135
	.loc 1 1133 0
	l16ui	a8, sp, 24
	l32r	a6, .LC37
	bne	a8, a6, .L134
.L135:
	.loc 1 1134 0 discriminator 1
	addi	a8, a7, -3
	movi.n	a9, 1
	movi.n	a6, 0
	mov.n	a10, a6
	movnez	a10, a9, a8
	addi.n	a7, a7, -1
	movnez	a6, a9, a7
	.loc 1 1133 0 discriminator 1
	bnone	a10, a6, .L136
	.loc 1 1134 0
	l16ui	a6, sp, 24
	bnei	a6, 256, .L134
.L136:
	.loc 1 1140 0
	addi.n	a5, a5, 4
.LVL257:
	extui	a11, a5, 0, 16
.LVL258:
	.loc 1 1142 0
	j	.L137
.LVL259:
.L146:
	.loc 1 1144 0
	mov.n	a10, a4
	call8	dns_parse_name
.LVL260:
	mov.n	a5, a10
.LVL261:
	.loc 1 1147 0
	mov.n	a13, a10
	movi.n	a12, 0xa
	addi.n	a11, sp, 12
	mov.n	a10, a4
	call8	pbuf_copy_partial
.LVL262:
	.loc 1 1148 0
	l16ui	a6, sp, 14
	bnei	a6, 256, .L138
	.loc 1 1150 0
	l16ui	a8, sp, 12
	bnei	a8, 256, .L139
	.loc 1 1150 0 is_stmt 0 discriminator 1
	l16ui	a7, sp, 20
	movi	a6, 0x400
	bne	a7, a6, .L139
	.loc 1 1152 0 is_stmt 1
	addx8	a7, a2, a2
	addx8	a7, a7, a2
	slli	a6, a7, 2
	l32r	a7, .LC34
	add.n	a6, a7, a6
	movi	a7, 0x120
	add.n	a6, a6, a7
	l8ui	a6, a6, 0
	addi	a7, a6, -3
	movi.n	a10, 1
	movi.n	a9, 0
	mov.n	a11, a9
	movnez	a11, a10, a7
	mov.n	a7, a11
	addi.n	a6, a6, -1
	movnez	a9, a10, a6
	bnone	a11, a9, .L139
.LBB10:
	.loc 1 1156 0
	addi.n	a5, a5, 10
.LVL263:
	extui	a6, a5, 0, 16
.LVL264:
	.loc 1 1158 0
	l32i.n	a10, sp, 16
	call8	lwip_ntohl
.LVL265:
	addx8	a5, a2, a2
.LVL266:
	addx8	a5, a5, a2
	slli	a3, a5, 2
.LVL267:
	l32r	a5, .LC34
	add.n	a3, a5, a3
	s32i.n	a10, a3, 0
	.loc 1 1159 0
	l32r	a3, .LC38
	bgeu	a3, a10, .L140
	.loc 1 1160 0
	addx8	a5, a2, a2
	addx8	a5, a5, a2
	slli	a3, a5, 2
	l32r	a5, .LC34
	add.n	a3, a5, a3
	l32r	a5, .LC38
	s32i.n	a5, a3, 0
.L140:
	.loc 1 1163 0
	mov.n	a13, a6
	movi.n	a12, 4
	addi	a11, sp, 28
	mov.n	a10, a4
	call8	pbuf_copy_partial
.LVL268:
	.loc 1 1164 0
	addx8	a5, a2, a2
	slli	a5, a5, 3
	add.n	a5, a5, a2
	slli	a3, a5, 2
	l32r	a5, .LC34
	add.n	a3, a5, a3
	l32i.n	a5, sp, 28
	s32i.n	a5, a3, 4
	movi.n	a5, 0
	s8i	a5, a3, 20
	.loc 1 1169 0
	addi.n	a11, a3, 4
	mov.n	a10, a2
	call8	dns_call_found
.LVL269:
	.loc 1 1170 0
	l32i.n	a3, a3, 0
	bnez.n	a3, .L128
	j	.L142
.LVL270:
.L139:
.LBE10:
	.loc 1 1183 0
	l32r	a6, .LC37
	bne	a8, a6, .L138
	.loc 1 1183 0 is_stmt 0 discriminator 1
	l16ui	a7, sp, 20
	l32r	a6, .LC39
	bne	a7, a6, .L138
	.loc 1 1185 0 is_stmt 1
	addx8	a7, a2, a2
	addx8	a7, a7, a2
	slli	a6, a7, 2
	l32r	a7, .LC34
	add.n	a6, a7, a6
	movi	a7, 0x120
	add.n	a6, a6, a7
	l8ui	a6, a6, 0
	addi	a8, a6, -3
	movi.n	a10, 1
	movi.n	a9, 0
	mov.n	a11, a9
	moveqz	a11, a10, a8
	addi.n	a7, a6, -1
	mov.n	a6, a9
	moveqz	a6, a10, a7
	or	a6, a11, a6
	beq	a6, a9, .L138
.LBB11:
	.loc 1 1189 0
	addi.n	a3, a5, 10
.LVL271:
	extui	a3, a3, 0, 16
.LVL272:
	.loc 1 1191 0
	l32i.n	a10, sp, 16
	call8	lwip_ntohl
.LVL273:
	addx8	a6, a2, a2
	addx8	a6, a6, a2
	slli	a5, a6, 2
	l32r	a6, .LC34
	add.n	a5, a6, a5
	s32i.n	a10, a5, 0
	.loc 1 1192 0
	l32r	a5, .LC38
	bgeu	a5, a10, .L143
	.loc 1 1193 0
	addx8	a6, a2, a2
	addx8	a6, a6, a2
	slli	a5, a6, 2
	l32r	a6, .LC34
	add.n	a5, a6, a5
	l32r	a6, .LC38
	s32i.n	a6, a5, 0
.L143:
	.loc 1 1196 0
	mov.n	a13, a3
	movi.n	a12, 0x10
	addi	a11, sp, 28
	mov.n	a10, a4
	call8	pbuf_copy_partial
.LVL274:
	.loc 1 1197 0
	addx8	a5, a2, a2
	slli	a5, a5, 3
	add.n	a5, a5, a2
	slli	a3, a5, 2
.LVL275:
	l32r	a5, .LC34
	add.n	a3, a5, a3
	l32i.n	a5, sp, 28
	s32i.n	a5, a3, 4
	l32i.n	a5, sp, 32
	s32i.n	a5, a3, 8
	l32i.n	a5, sp, 36
	s32i.n	a5, a3, 12
	l32i.n	a5, sp, 40
	s32i.n	a5, a3, 16
	movi.n	a5, 6
	s8i	a5, a3, 20
	.loc 1 1202 0
	addi.n	a11, a3, 4
	mov.n	a10, a2
	call8	dns_call_found
.LVL276:
	.loc 1 1203 0
	l32i.n	a3, a3, 0
	bnez.n	a3, .L128
	j	.L142
.LVL277:
.L138:
.LBE11:
	.loc 1 1217 0
	l16ui	a10, sp, 20
	call8	lwip_htons
.LVL278:
	addi.n	a10, a10, 10
	add.n	a11, a5, a10
	extui	a11, a11, 0, 16
.LVL279:
	.loc 1 1218 0
	addi.n	a3, a3, -1
.LVL280:
	extui	a3, a3, 0, 16
.LVL281:
.L137:
	.loc 1 1142 0
	beqz.n	a3, .L145
	.loc 1 1142 0 is_stmt 0 discriminator 1
	l16ui	a5, a4, 8
	bltu	a11, a5, .L146
.L145:
	.loc 1 1221 0 is_stmt 1
	addx8	a5, a2, a2
	addx8	a5, a5, a2
	slli	a3, a5, 2
.LVL282:
	l32r	a5, .LC34
	add.n	a3, a5, a3
	movi	a5, 0x120
	add.n	a3, a3, a5
	l8ui	a5, a3, 0
	addi	a3, a5, -2
	extui	a3, a3, 0, 8
	bgeui	a3, 2, .L134
	.loc 1 1223 0
	bnei	a5, 2, .L147
	.loc 1 1225 0
	addx8	a5, a2, a2
	addx8	a5, a5, a2
	slli	a3, a5, 2
	l32r	a5, .LC34
	add.n	a3, a5, a3
	movi	a5, 0x120
	add.n	a3, a3, a5
	movi.n	a5, 1
	s8i	a5, a3, 0
	j	.L148
.L147:
	.loc 1 1228 0
	addx8	a5, a2, a2
	addx8	a5, a5, a2
	slli	a3, a5, 2
	l32r	a5, .LC34
	add.n	a3, a5, a3
	movi	a5, 0x120
	add.n	a3, a3, a5
	movi.n	a5, 0
	s8i	a5, a3, 0
.L148:
	.loc 1 1230 0
	mov.n	a10, a4
	call8	pbuf_free
.LVL283:
	.loc 1 1231 0
	addx8	a4, a2, a2
.LVL284:
	addx8	a4, a4, a2
	slli	a3, a4, 2
	l32r	a4, .LC34
	add.n	a3, a4, a3
	movi.n	a4, 1
	s8i	a4, a3, 26
	.loc 1 1232 0
	mov.n	a10, a2
	call8	dns_check_entry
.LVL285:
	.loc 1 1233 0
	retw.n
.LVL286:
.L130:
.LBE9:
.LBE8:
	.loc 1 1082 0 discriminator 2
	addi.n	a8, a8, 1
	extui	a8, a8, 0, 8
.LVL287:
.L129:
	.loc 1 1082 0 is_stmt 0 discriminator 1
	bltui	a8, 4, .L150
	j	.L128
.LVL288:
.L134:
	.loc 1 1248 0 is_stmt 1
	movi.n	a11, 0
	mov.n	a10, a2
	call8	dns_call_found
.LVL289:
.L142:
	.loc 1 1251 0
	addx8	a3, a2, a2
	addx8	a2, a3, a2
.LVL290:
	slli	a3, a2, 2
	l32r	a2, .LC34
	add.n	a3, a2, a3
	movi.n	a2, 0
	s8i	a2, a3, 26
.L128:
	.loc 1 1255 0
	mov.n	a10, a4
	call8	pbuf_free
.LVL291:
	retw.n
.LFE28:
	.size	dns_recv, .-dns_recv
	.section	.text.dns_init,"ax",@progbits
	.align	4
	.global	dns_init
	.type	dns_init, @function
dns_init:
.LFB14:
	.loc 1 371 0
	entry	sp, 32
.LCFI13:
	retw.n
.LFE14:
	.size	dns_init, .-dns_init
	.section	.text.dns_setserver,"ax",@progbits
	.literal_position
	.literal .LC40, dns_servers
	.literal .LC41, ip_addr_any
	.align	4
	.global	dns_setserver
	.type	dns_setserver, @function
dns_setserver:
.LFB15:
	.loc 1 416 0
.LVL292:
	.loc 1 416 0
	entry	sp, 32
.LCFI14:
	extui	a2, a2, 0, 8
	.loc 1 417 0
	bgeui	a2, 2, .L157
	.loc 1 418 0
	beqz.n	a3, .L159
	.loc 1 419 0
	addx4	a2, a2, a2
.LVL293:
	slli	a8, a2, 2
	mov.n	a2, a8
	movi.n	a12, 0x14
	mov.n	a11, a3
	l32r	a10, .LC40
	add.n	a10, a10, a8
	call8	memcpy
.LVL294:
	retw.n
.L159:
	.loc 1 421 0
	addx4	a2, a2, a2
	slli	a3, a2, 2
.LVL295:
	mov.n	a2, a3
	movi.n	a12, 0x14
	l32r	a11, .LC41
	l32r	a10, .LC40
	add.n	a10, a10, a3
	call8	memcpy
.LVL296:
.L157:
	retw.n
.LFE15:
	.size	dns_setserver, .-dns_setserver
	.section	.text.dns_getserver,"ax",@progbits
	.literal_position
	.literal .LC42, dns_servers
	.literal .LC43, ip_addr_any
	.align	4
	.global	dns_getserver
	.type	dns_getserver, @function
dns_getserver:
.LFB16:
	.loc 1 435 0
.LVL297:
	entry	sp, 32
.LCFI15:
	extui	a3, a3, 0, 8
	.loc 1 436 0
	bgeui	a3, 2, .L161
	.loc 1 437 0
	addx4	a3, a3, a3
.LVL298:
	slli	a8, a3, 2
	mov.n	a3, a8
	movi.n	a12, 0x14
	l32r	a11, .LC42
	add.n	a11, a11, a8
	mov.n	a10, a2
	call8	memcpy
.LVL299:
	retw.n
.L161:
	.loc 1 439 0
	movi.n	a12, 0x14
	l32r	a11, .LC43
	mov.n	a10, a2
	call8	memcpy
.LVL300:
	.loc 1 441 0
	retw.n
.LFE16:
	.size	dns_getserver, .-dns_getserver
	.section	.text.dns_tmr,"ax",@progbits
	.align	4
	.global	dns_tmr
	.type	dns_tmr, @function
dns_tmr:
.LFB17:
	.loc 1 449 0
	entry	sp, 32
.LCFI16:
	.loc 1 451 0
	call8	dns_check_entries
.LVL301:
	retw.n
.LFE17:
	.size	dns_tmr, .-dns_tmr
	.section	.text.dns_gethostbyname_addrtype,"ax",@progbits
	.literal_position
	.literal .LC44, dns_servers
	.align	4
	.global	dns_gethostbyname_addrtype
	.type	dns_gethostbyname_addrtype, @function
dns_gethostbyname_addrtype:
.LFB31:
	.loc 1 1429 0
.LVL302:
	entry	sp, 32
.LCFI17:
	extui	a6, a6, 0, 8
	.loc 1 1433 0
	movi.n	a8, 1
	movi.n	a10, 0
	mov.n	a9, a10
	moveqz	a9, a8, a3
	.loc 1 1434 0
	movnez	a8, a10, a2
	.loc 1 1433 0
	or	a8, a8, a9
	.loc 1 1433 0
	bne	a8, a10, .L174
	.loc 1 1434 0
	l8ui	a7, a2, 0
	beq	a7, a10, .L175
	.loc 1 1442 0
	mov.n	a10, a2
	call8	strlen
.LVL303:
	mov.n	a7, a10
.LVL304:
	.loc 1 1443 0
	movi	a8, 0xff
	bltu	a8, a10, .L176
	.loc 1 1457 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	ipaddr_aton
.LVL305:
	beqz.n	a10, .L166
	.loc 1 1459 0
	beqz.n	a3, .L167
	.loc 1 1459 0 discriminator 1
	l8ui	a8, a3, 16
	bnei	a8, 6, .L167
	.loc 1 1459 0 is_stmt 0 discriminator 3
	bnez.n	a6, .L177
.L167:
	.loc 1 1459 0 discriminator 5
	beqz.n	a3, .L168
	.loc 1 1460 0 is_stmt 1
	l8ui	a8, a3, 16
	.loc 1 1460 0
	beqi	a8, 6, .L166
.L168:
	.loc 1 1460 0 discriminator 1
	bnei	a6, 1, .L178
.L166:
	.loc 1 1467 0
	mov.n	a12, a6
	mov.n	a11, a3
	mov.n	a10, a2
	call8	dns_lookup
.LVL306:
	extui	a10, a10, 0, 8
	beqz.n	a10, .L165
	.loc 1 1471 0
	addi	a8, a6, -2
	extui	a8, a8, 0, 8
	bgeui	a8, 2, .L169
.LBB12:
	.loc 1 1474 0
	bnei	a6, 2, .L179
	.loc 1 1475 0
	movi.n	a12, 1
	j	.L170
.L179:
	.loc 1 1477 0
	movi.n	a12, 0
.L170:
.LVL307:
	.loc 1 1479 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	dns_lookup
.LVL308:
	extui	a10, a10, 0, 8
	beqz.n	a10, .L165
.L169:
.LBE12:
	.loc 1 1488 0
	l32r	a3, .LC44
.LVL309:
	l8ui	a3, a3, 16
	bnei	a3, 6, .L171
	.loc 1 1488 0 is_stmt 0 discriminator 1
	l32r	a3, .LC44
	l32i.n	a3, a3, 0
	bnez.n	a3, .L180
	.loc 1 1488 0 discriminator 3
	l32r	a3, .LC44
	l32i.n	a3, a3, 4
	bnez.n	a3, .L181
	.loc 1 1488 0 discriminator 5
	l32r	a3, .LC44
	l32i.n	a3, a3, 8
	bnez.n	a3, .L182
	.loc 1 1488 0 discriminator 7
	l32r	a3, .LC44
	l32i.n	a3, a3, 12
	beqz.n	a3, .L183
	.loc 1 1488 0
	movi.n	a3, 0
	j	.L173
.L180:
	movi.n	a3, 0
	j	.L173
.L181:
	movi.n	a3, 0
	j	.L173
.L182:
	movi.n	a3, 0
	j	.L173
.L183:
	movi.n	a3, 1
	j	.L173
.L171:
	.loc 1 1488 0 discriminator 2
	l32r	a3, .LC44
	l32i.n	a8, a3, 0
	movi.n	a3, 0
	movi.n	a9, 1
	moveqz	a3, a9, a8
	extui	a3, a3, 0, 8
.L173:
	.loc 1 1488 0 discriminator 14
	bnez.n	a3, .L184
	.loc 1 1493 0 is_stmt 1
	mov.n	a14, a6
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a7
	mov.n	a10, a2
	call8	dns_enqueue
.LVL310:
	extui	a10, a10, 0, 8
	j	.L165
.LVL311:
.L174:
	.loc 1 1435 0
	movi	a10, 0xf1
	j	.L165
.L175:
	movi	a10, 0xf1
	j	.L165
.LVL312:
.L176:
	.loc 1 1445 0
	movi	a10, 0xf1
	j	.L165
.L177:
	.loc 1 1463 0
	movi.n	a10, 0
	j	.L165
.L178:
	movi.n	a10, 0
	j	.L165
.LVL313:
.L184:
	.loc 1 1489 0
	movi	a10, 0xfa
.LVL314:
.L165:
	.loc 1 1494 0
	mov.n	a2, a10
.LVL315:
	retw.n
.LFE31:
	.size	dns_gethostbyname_addrtype, .-dns_gethostbyname_addrtype
	.section	.text.dns_gethostbyname,"ax",@progbits
	.align	4
	.global	dns_gethostbyname
	.type	dns_gethostbyname, @function
dns_gethostbyname:
.LFB30:
	.loc 1 1416 0
.LVL316:
	entry	sp, 32
.LCFI18:
	.loc 1 1417 0
	movi.n	a14, 2
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	dns_gethostbyname_addrtype
.LVL317:
	.loc 1 1418 0
	extui	a2, a10, 0, 8
.LVL318:
	retw.n
.LFE30:
	.size	dns_gethostbyname, .-dns_gethostbyname
	.section	.rodata.__func__$6043,"a",@progbits
	.align	4
	.type	__func__$6043, @object
	.size	__func__$6043, 9
__func__$6043:
	.string	"dns_send"
	.section	.rodata.__func__$6075,"a",@progbits
	.align	4
	.type	__func__$6075, @object
	.size	__func__$6075, 15
__func__$6075:
	.string	"dns_call_found"
	.section	.rodata.__func__$6097,"a",@progbits
	.align	4
	.type	__func__$6097, @object
	.size	__func__$6097, 16
__func__$6097:
	.string	"dns_check_entry"
	.section	.bss.dns_servers,"aw",@nobits
	.align	4
	.type	dns_servers, @object
	.size	dns_servers, 40
dns_servers:
	.zero	40
	.section	.bss.dns_requests,"aw",@nobits
	.align	4
	.type	dns_requests, @object
	.size	dns_requests, 48
dns_requests:
	.zero	48
	.section	.bss.dns_table,"aw",@nobits
	.align	4
	.type	dns_table, @object
	.size	dns_table, 1168
dns_table:
	.zero	1168
	.section	.bss.dns_seqno,"aw",@nobits
	.type	dns_seqno, @object
	.size	dns_seqno, 1
dns_seqno:
	.zero	1
	.section	.bss.dns_last_pcb_idx,"aw",@nobits
	.type	dns_last_pcb_idx, @object
	.size	dns_last_pcb_idx, 1
dns_last_pcb_idx:
	.zero	1
	.section	.bss.dns_pcbs,"aw",@nobits
	.align	4
	.type	dns_pcbs, @object
	.size	dns_pcbs, 16
dns_pcbs:
	.zero	16
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
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI1-.LFB18
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI2-.LFB25
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI3-.LFB24
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI4-.LFB21
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI5-.LFB26
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI6-.LFB27
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI7-.LFB22
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI8-.LFB23
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI9-.LFB29
	.byte	0xe
	.uleb128 0x30
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
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI12-.LFB28
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI13-.LFB14
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI14-.LFB15
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI15-.LFB16
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI16-.LFB17
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI17-.LFB31
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI18-.LFB30
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE36:
	.text
.Letext0:
	.file 2 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 3 "C:/esp/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "C:/esp/esp-idf/components/newlib/include/stdint.h"
	.file 5 "C:/esp/esp-idf/components/lwip/include/lwip/port/arch/cc.h"
	.file 6 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/err.h"
	.file 7 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/pbuf.h"
	.file 8 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/netif.h"
	.file 9 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/ip4_addr.h"
	.file 10 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/ip6_addr.h"
	.file 11 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/ip_addr.h"
	.file 12 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/memp.h"
	.file 13 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/udp.h"
	.file 14 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/dns.h"
	.file 15 "C:/esp/esp-idf/components/esp32/include/esp_system.h"
	.file 16 "C:/esp/esp-idf/components/newlib/include/assert.h"
	.file 17 "C:/esp/esp-idf/components/newlib/include/string.h"
	.file 18 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/def.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x19c1
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF212
	.byte	0xc
	.4byte	.LASF213
	.4byte	.LASF214
	.4byte	.Ldebug_ranges0+0x30
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF2
	.byte	0x2
	.byte	0xd8
	.4byte	0x30
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.4byte	.LASF3
	.byte	0x3
	.byte	0x11
	.4byte	0x50
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF4
	.uleb128 0x2
	.4byte	.LASF5
	.byte	0x3
	.byte	0x12
	.4byte	0x62
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF6
	.uleb128 0x2
	.4byte	.LASF7
	.byte	0x3
	.byte	0x15
	.4byte	0x74
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x2
	.4byte	.LASF9
	.byte	0x3
	.byte	0x16
	.4byte	0x37
	.uleb128 0x2
	.4byte	.LASF10
	.byte	0x3
	.byte	0x1a
	.4byte	0x30
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF13
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x6
	.byte	0x4
	.4byte	0xbc
	.uleb128 0x7
	.uleb128 0x6
	.byte	0x4
	.4byte	0xc3
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF16
	.uleb128 0x6
	.byte	0x4
	.4byte	0xd0
	.uleb128 0x8
	.4byte	0xc3
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x4
	.byte	0x14
	.4byte	0x45
	.uleb128 0x2
	.4byte	.LASF18
	.byte	0x4
	.byte	0x15
	.4byte	0x57
	.uleb128 0x2
	.4byte	.LASF19
	.byte	0x4
	.byte	0x20
	.4byte	0x69
	.uleb128 0x2
	.4byte	.LASF20
	.byte	0x4
	.byte	0x21
	.4byte	0x7b
	.uleb128 0x2
	.4byte	.LASF21
	.byte	0x4
	.byte	0x2d
	.4byte	0x86
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF22
	.uleb128 0x6
	.byte	0x4
	.4byte	0x119
	.uleb128 0x9
	.4byte	0x124
	.uleb128 0xa
	.4byte	0xad
	.byte	0
	.uleb128 0x2
	.4byte	.LASF23
	.byte	0x5
	.byte	0x2e
	.4byte	0xe0
	.uleb128 0x2
	.4byte	.LASF24
	.byte	0x5
	.byte	0x2f
	.4byte	0xd5
	.uleb128 0x2
	.4byte	.LASF25
	.byte	0x5
	.byte	0x30
	.4byte	0xf6
	.uleb128 0x2
	.4byte	.LASF26
	.byte	0x5
	.byte	0x31
	.4byte	0xeb
	.uleb128 0x2
	.4byte	.LASF27
	.byte	0x5
	.byte	0x32
	.4byte	0x101
	.uleb128 0x2
	.4byte	.LASF28
	.byte	0x6
	.byte	0x2f
	.4byte	0x12f
	.uleb128 0xb
	.byte	0x4
	.4byte	0x30
	.byte	0x7
	.byte	0x3f
	.4byte	0x191
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x2
	.uleb128 0xc
	.4byte	.LASF32
	.byte	0x3
	.uleb128 0xc
	.4byte	.LASF33
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x30
	.byte	0x7
	.byte	0x47
	.4byte	0x1b6
	.uleb128 0xc
	.4byte	.LASF34
	.byte	0
	.uleb128 0xc
	.4byte	.LASF35
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF36
	.byte	0x2
	.uleb128 0xc
	.4byte	.LASF37
	.byte	0x3
	.byte	0
	.uleb128 0xd
	.4byte	.LASF45
	.byte	0x18
	.byte	0x7
	.byte	0x6c
	.4byte	0x22f
	.uleb128 0xe
	.4byte	.LASF38
	.byte	0x7
	.byte	0x6e
	.4byte	0x22f
	.byte	0
	.uleb128 0xe
	.4byte	.LASF39
	.byte	0x7
	.byte	0x71
	.4byte	0xad
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF40
	.byte	0x7
	.byte	0x7a
	.4byte	0x13a
	.byte	0x8
	.uleb128 0xf
	.string	"len"
	.byte	0x7
	.byte	0x7d
	.4byte	0x13a
	.byte	0xa
	.uleb128 0xe
	.4byte	.LASF41
	.byte	0x7
	.byte	0x80
	.4byte	0x124
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF42
	.byte	0x7
	.byte	0x83
	.4byte	0x124
	.byte	0xd
	.uleb128 0xf
	.string	"ref"
	.byte	0x7
	.byte	0x8a
	.4byte	0x13a
	.byte	0xe
	.uleb128 0xe
	.4byte	.LASF43
	.byte	0x7
	.byte	0x8d
	.4byte	0x391
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF44
	.byte	0x7
	.byte	0x8e
	.4byte	0xad
	.byte	0x14
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1b6
	.uleb128 0xd
	.4byte	.LASF46
	.byte	0xc8
	.byte	0x8
	.byte	0xbd
	.4byte	0x391
	.uleb128 0xe
	.4byte	.LASF38
	.byte	0x8
	.byte	0xbf
	.4byte	0x391
	.byte	0
	.uleb128 0xe
	.4byte	.LASF47
	.byte	0x8
	.byte	0xc3
	.4byte	0x433
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF48
	.byte	0x8
	.byte	0xc4
	.4byte	0x433
	.byte	0x18
	.uleb128 0xf
	.string	"gw"
	.byte	0x8
	.byte	0xc5
	.4byte	0x433
	.byte	0x2c
	.uleb128 0xe
	.4byte	.LASF49
	.byte	0x8
	.byte	0xc9
	.4byte	0x5d0
	.byte	0x40
	.uleb128 0xe
	.4byte	.LASF50
	.byte	0x8
	.byte	0xcc
	.4byte	0x5e0
	.byte	0x7c
	.uleb128 0xe
	.4byte	.LASF51
	.byte	0x8
	.byte	0xce
	.4byte	0x600
	.byte	0x80
	.uleb128 0xe
	.4byte	.LASF52
	.byte	0x8
	.byte	0xd4
	.4byte	0x4bd
	.byte	0x84
	.uleb128 0xe
	.4byte	.LASF53
	.byte	0x8
	.byte	0xd9
	.4byte	0x4e2
	.byte	0x88
	.uleb128 0xe
	.4byte	.LASF54
	.byte	0x8
	.byte	0xde
	.4byte	0x54c
	.byte	0x8c
	.uleb128 0xe
	.4byte	.LASF55
	.byte	0x8
	.byte	0xe3
	.4byte	0x517
	.byte	0x90
	.uleb128 0xe
	.4byte	.LASF56
	.byte	0x8
	.byte	0xf5
	.4byte	0xad
	.byte	0x94
	.uleb128 0xe
	.4byte	.LASF57
	.byte	0x8
	.byte	0xf8
	.4byte	0x60b
	.byte	0x98
	.uleb128 0xe
	.4byte	.LASF58
	.byte	0x8
	.byte	0xfb
	.4byte	0x6ba
	.byte	0x9c
	.uleb128 0xe
	.4byte	.LASF59
	.byte	0x8
	.byte	0xfc
	.4byte	0x5c5
	.byte	0xa0
	.uleb128 0x10
	.4byte	.LASF60
	.byte	0x8
	.2byte	0x108
	.4byte	0x124
	.byte	0xa4
	.uleb128 0x10
	.4byte	.LASF61
	.byte	0x8
	.2byte	0x10d
	.4byte	0x124
	.byte	0xa5
	.uleb128 0x10
	.4byte	.LASF62
	.byte	0x8
	.2byte	0x117
	.4byte	0xca
	.byte	0xa8
	.uleb128 0x11
	.string	"mtu"
	.byte	0x8
	.2byte	0x11f
	.4byte	0x13a
	.byte	0xac
	.uleb128 0x10
	.4byte	.LASF63
	.byte	0x8
	.2byte	0x121
	.4byte	0x124
	.byte	0xae
	.uleb128 0x10
	.4byte	.LASF64
	.byte	0x8
	.2byte	0x123
	.4byte	0x6c0
	.byte	0xaf
	.uleb128 0x10
	.4byte	.LASF42
	.byte	0x8
	.2byte	0x125
	.4byte	0x124
	.byte	0xb5
	.uleb128 0x10
	.4byte	.LASF65
	.byte	0x8
	.2byte	0x127
	.4byte	0x6d0
	.byte	0xb6
	.uleb128 0x11
	.string	"num"
	.byte	0x8
	.2byte	0x129
	.4byte	0x124
	.byte	0xb8
	.uleb128 0x10
	.4byte	.LASF66
	.byte	0x8
	.2byte	0x139
	.4byte	0x571
	.byte	0xbc
	.uleb128 0x10
	.4byte	.LASF67
	.byte	0x8
	.2byte	0x13f
	.4byte	0x59b
	.byte	0xc0
	.uleb128 0x10
	.4byte	.LASF68
	.byte	0x8
	.2byte	0x14f
	.4byte	0x113
	.byte	0xc4
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x235
	.uleb128 0xd
	.4byte	.LASF69
	.byte	0x4
	.byte	0x9
	.byte	0x2e
	.4byte	0x3b0
	.uleb128 0xe
	.4byte	.LASF70
	.byte	0x9
	.byte	0x2f
	.4byte	0x150
	.byte	0
	.byte	0
	.uleb128 0x2
	.4byte	.LASF71
	.byte	0x9
	.byte	0x42
	.4byte	0x397
	.uleb128 0xd
	.4byte	.LASF49
	.byte	0x10
	.byte	0xa
	.byte	0x39
	.4byte	0x3d4
	.uleb128 0xe
	.4byte	.LASF70
	.byte	0xa
	.byte	0x3a
	.4byte	0x3d4
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	0x150
	.4byte	0x3e4
	.uleb128 0x13
	.4byte	0xa6
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.4byte	.LASF72
	.byte	0xa
	.byte	0x4b
	.4byte	0x3bb
	.uleb128 0x14
	.byte	0x10
	.byte	0xb
	.byte	0x37
	.4byte	0x40e
	.uleb128 0x15
	.string	"ip6"
	.byte	0xb
	.byte	0x38
	.4byte	0x3e4
	.uleb128 0x15
	.string	"ip4"
	.byte	0xb
	.byte	0x39
	.4byte	0x3b0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF73
	.byte	0x14
	.byte	0xb
	.byte	0x36
	.4byte	0x433
	.uleb128 0xe
	.4byte	.LASF74
	.byte	0xb
	.byte	0x3a
	.4byte	0x3ef
	.byte	0
	.uleb128 0xe
	.4byte	.LASF41
	.byte	0xb
	.byte	0x3b
	.4byte	0x124
	.byte	0x10
	.byte	0
	.uleb128 0x2
	.4byte	.LASF75
	.byte	0xb
	.byte	0x3c
	.4byte	0x40e
	.uleb128 0xb
	.byte	0x4
	.4byte	0x30
	.byte	0xc
	.byte	0x2d
	.4byte	0x4bd
	.uleb128 0xc
	.4byte	.LASF76
	.byte	0
	.uleb128 0xc
	.4byte	.LASF77
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF78
	.byte	0x2
	.uleb128 0xc
	.4byte	.LASF79
	.byte	0x3
	.uleb128 0xc
	.4byte	.LASF80
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF81
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF82
	.byte	0x6
	.uleb128 0xc
	.4byte	.LASF83
	.byte	0x7
	.uleb128 0xc
	.4byte	.LASF84
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF85
	.byte	0x9
	.uleb128 0xc
	.4byte	.LASF86
	.byte	0xa
	.uleb128 0xc
	.4byte	.LASF87
	.byte	0xb
	.uleb128 0xc
	.4byte	.LASF88
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF89
	.byte	0xd
	.uleb128 0xc
	.4byte	.LASF90
	.byte	0xe
	.uleb128 0xc
	.4byte	.LASF91
	.byte	0xf
	.uleb128 0xc
	.4byte	.LASF92
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF93
	.byte	0x11
	.uleb128 0xc
	.4byte	.LASF94
	.byte	0x12
	.byte	0
	.uleb128 0x2
	.4byte	.LASF95
	.byte	0x8
	.byte	0x83
	.4byte	0x4c8
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4ce
	.uleb128 0x16
	.4byte	0x15b
	.4byte	0x4e2
	.uleb128 0xa
	.4byte	0x22f
	.uleb128 0xa
	.4byte	0x391
	.byte	0
	.uleb128 0x2
	.4byte	.LASF96
	.byte	0x8
	.byte	0x8e
	.4byte	0x4ed
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4f3
	.uleb128 0x16
	.4byte	0x15b
	.4byte	0x50c
	.uleb128 0xa
	.4byte	0x391
	.uleb128 0xa
	.4byte	0x22f
	.uleb128 0xa
	.4byte	0x50c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x512
	.uleb128 0x8
	.4byte	0x3b0
	.uleb128 0x2
	.4byte	.LASF97
	.byte	0x8
	.byte	0x9b
	.4byte	0x522
	.uleb128 0x6
	.byte	0x4
	.4byte	0x528
	.uleb128 0x16
	.4byte	0x15b
	.4byte	0x541
	.uleb128 0xa
	.4byte	0x391
	.uleb128 0xa
	.4byte	0x22f
	.uleb128 0xa
	.4byte	0x541
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x547
	.uleb128 0x8
	.4byte	0x3e4
	.uleb128 0x2
	.4byte	.LASF98
	.byte	0x8
	.byte	0xa5
	.4byte	0x557
	.uleb128 0x6
	.byte	0x4
	.4byte	0x55d
	.uleb128 0x16
	.4byte	0x15b
	.4byte	0x571
	.uleb128 0xa
	.4byte	0x391
	.uleb128 0xa
	.4byte	0x22f
	.byte	0
	.uleb128 0x2
	.4byte	.LASF99
	.byte	0x8
	.byte	0xaa
	.4byte	0x57c
	.uleb128 0x6
	.byte	0x4
	.4byte	0x582
	.uleb128 0x16
	.4byte	0x15b
	.4byte	0x59b
	.uleb128 0xa
	.4byte	0x391
	.uleb128 0xa
	.4byte	0x50c
	.uleb128 0xa
	.4byte	0x124
	.byte	0
	.uleb128 0x2
	.4byte	.LASF100
	.byte	0x8
	.byte	0xaf
	.4byte	0x5a6
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5ac
	.uleb128 0x16
	.4byte	0x15b
	.4byte	0x5c5
	.uleb128 0xa
	.4byte	0x391
	.uleb128 0xa
	.4byte	0x541
	.uleb128 0xa
	.4byte	0x124
	.byte	0
	.uleb128 0x2
	.4byte	.LASF101
	.byte	0x8
	.byte	0xb6
	.4byte	0xb6
	.uleb128 0x12
	.4byte	0x433
	.4byte	0x5e0
	.uleb128 0x13
	.4byte	0xa6
	.byte	0x2
	.byte	0
	.uleb128 0x12
	.4byte	0x124
	.4byte	0x5f0
	.uleb128 0x13
	.4byte	0xa6
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.4byte	0x600
	.uleb128 0xa
	.4byte	0x391
	.uleb128 0xa
	.4byte	0x124
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5f0
	.uleb128 0x17
	.4byte	.LASF57
	.uleb128 0x6
	.byte	0x4
	.4byte	0x606
	.uleb128 0xd
	.4byte	.LASF102
	.byte	0x58
	.byte	0xd
	.byte	0x5b
	.4byte	0x6ba
	.uleb128 0xe
	.4byte	.LASF103
	.byte	0xd
	.byte	0x5d
	.4byte	0x433
	.byte	0
	.uleb128 0xe
	.4byte	.LASF104
	.byte	0xd
	.byte	0x5d
	.4byte	0x433
	.byte	0x14
	.uleb128 0xe
	.4byte	.LASF105
	.byte	0xd
	.byte	0x5d
	.4byte	0x124
	.byte	0x28
	.uleb128 0xf
	.string	"tos"
	.byte	0xd
	.byte	0x5d
	.4byte	0x124
	.byte	0x29
	.uleb128 0xf
	.string	"ttl"
	.byte	0xd
	.byte	0x5d
	.4byte	0x124
	.byte	0x2a
	.uleb128 0xe
	.4byte	.LASF38
	.byte	0xd
	.byte	0x61
	.4byte	0x6ba
	.byte	0x2c
	.uleb128 0xe
	.4byte	.LASF42
	.byte	0xd
	.byte	0x63
	.4byte	0x124
	.byte	0x30
	.uleb128 0xe
	.4byte	.LASF106
	.byte	0xd
	.byte	0x65
	.4byte	0x13a
	.byte	0x32
	.uleb128 0xe
	.4byte	.LASF107
	.byte	0xd
	.byte	0x65
	.4byte	0x13a
	.byte	0x34
	.uleb128 0xe
	.4byte	.LASF108
	.byte	0xd
	.byte	0x69
	.4byte	0x433
	.byte	0x38
	.uleb128 0xe
	.4byte	.LASF109
	.byte	0xd
	.byte	0x6b
	.4byte	0x124
	.byte	0x4c
	.uleb128 0xe
	.4byte	.LASF110
	.byte	0xd
	.byte	0x74
	.4byte	0x6e0
	.byte	0x50
	.uleb128 0xe
	.4byte	.LASF111
	.byte	0xd
	.byte	0x76
	.4byte	0xad
	.byte	0x54
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x611
	.uleb128 0x12
	.4byte	0x124
	.4byte	0x6d0
	.uleb128 0x13
	.4byte	0xa6
	.byte	0x5
	.byte	0
	.uleb128 0x12
	.4byte	0xc3
	.4byte	0x6e0
	.uleb128 0x13
	.4byte	0xa6
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.4byte	.LASF112
	.byte	0xd
	.byte	0x58
	.4byte	0x6eb
	.uleb128 0x6
	.byte	0x4
	.4byte	0x6f1
	.uleb128 0x9
	.4byte	0x710
	.uleb128 0xa
	.4byte	0xad
	.uleb128 0xa
	.4byte	0x6ba
	.uleb128 0xa
	.4byte	0x22f
	.uleb128 0xa
	.4byte	0x710
	.uleb128 0xa
	.4byte	0x13a
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x716
	.uleb128 0x8
	.4byte	0x433
	.uleb128 0x2
	.4byte	.LASF113
	.byte	0xe
	.byte	0x5e
	.4byte	0x726
	.uleb128 0x6
	.byte	0x4
	.4byte	0x72c
	.uleb128 0x9
	.4byte	0x741
	.uleb128 0xa
	.4byte	0xca
	.uleb128 0xa
	.4byte	0x710
	.uleb128 0xa
	.4byte	0xad
	.byte	0
	.uleb128 0xd
	.4byte	.LASF114
	.byte	0xc
	.byte	0x1
	.byte	0xd4
	.4byte	0x7a1
	.uleb128 0xf
	.string	"id"
	.byte	0x1
	.byte	0xd5
	.4byte	0x13a
	.byte	0
	.uleb128 0xe
	.4byte	.LASF115
	.byte	0x1
	.byte	0xd6
	.4byte	0x124
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF116
	.byte	0x1
	.byte	0xd7
	.4byte	0x124
	.byte	0x3
	.uleb128 0xe
	.4byte	.LASF117
	.byte	0x1
	.byte	0xd8
	.4byte	0x13a
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF118
	.byte	0x1
	.byte	0xd9
	.4byte	0x13a
	.byte	0x6
	.uleb128 0xe
	.4byte	.LASF119
	.byte	0x1
	.byte	0xda
	.4byte	0x13a
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF120
	.byte	0x1
	.byte	0xdb
	.4byte	0x13a
	.byte	0xa
	.byte	0
	.uleb128 0xd
	.4byte	.LASF121
	.byte	0x4
	.byte	0x1
	.byte	0xe5
	.4byte	0x7c6
	.uleb128 0xe
	.4byte	.LASF41
	.byte	0x1
	.byte	0xe8
	.4byte	0x13a
	.byte	0
	.uleb128 0xf
	.string	"cls"
	.byte	0x1
	.byte	0xe9
	.4byte	0x13a
	.byte	0x2
	.byte	0
	.uleb128 0xd
	.4byte	.LASF122
	.byte	0xc
	.byte	0x1
	.byte	0xef
	.4byte	0x803
	.uleb128 0xe
	.4byte	.LASF41
	.byte	0x1
	.byte	0xf2
	.4byte	0x13a
	.byte	0
	.uleb128 0xf
	.string	"cls"
	.byte	0x1
	.byte	0xf3
	.4byte	0x13a
	.byte	0x2
	.uleb128 0xf
	.string	"ttl"
	.byte	0x1
	.byte	0xf4
	.4byte	0x150
	.byte	0x4
	.uleb128 0xf
	.string	"len"
	.byte	0x1
	.byte	0xf5
	.4byte	0x13a
	.byte	0x8
	.byte	0
	.uleb128 0x18
	.4byte	.LASF123
	.2byte	0x124
	.byte	0x1
	.byte	0xfc
	.4byte	0x89e
	.uleb128 0xf
	.string	"ttl"
	.byte	0x1
	.byte	0xfd
	.4byte	0x150
	.byte	0
	.uleb128 0xe
	.4byte	.LASF124
	.byte	0x1
	.byte	0xfe
	.4byte	0x433
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF125
	.byte	0x1
	.byte	0xff
	.4byte	0x13a
	.byte	0x18
	.uleb128 0x10
	.4byte	.LASF56
	.byte	0x1
	.2byte	0x100
	.4byte	0x124
	.byte	0x1a
	.uleb128 0x10
	.4byte	.LASF126
	.byte	0x1
	.2byte	0x101
	.4byte	0x124
	.byte	0x1b
	.uleb128 0x11
	.string	"tmr"
	.byte	0x1
	.2byte	0x102
	.4byte	0x124
	.byte	0x1c
	.uleb128 0x10
	.4byte	.LASF127
	.byte	0x1
	.2byte	0x103
	.4byte	0x124
	.byte	0x1d
	.uleb128 0x10
	.4byte	.LASF128
	.byte	0x1
	.2byte	0x104
	.4byte	0x124
	.byte	0x1e
	.uleb128 0x10
	.4byte	.LASF129
	.byte	0x1
	.2byte	0x106
	.4byte	0x124
	.byte	0x1f
	.uleb128 0x10
	.4byte	.LASF65
	.byte	0x1
	.2byte	0x108
	.4byte	0x89e
	.byte	0x20
	.uleb128 0x19
	.4byte	.LASF130
	.byte	0x1
	.2byte	0x10a
	.4byte	0x124
	.2byte	0x120
	.byte	0
	.uleb128 0x12
	.4byte	0xc3
	.4byte	0x8ae
	.uleb128 0x13
	.4byte	0xa6
	.byte	0xff
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF131
	.byte	0xc
	.byte	0x1
	.2byte	0x110
	.4byte	0x8f0
	.uleb128 0x10
	.4byte	.LASF132
	.byte	0x1
	.2byte	0x112
	.4byte	0x71b
	.byte	0
	.uleb128 0x11
	.string	"arg"
	.byte	0x1
	.2byte	0x114
	.4byte	0xad
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF133
	.byte	0x1
	.2byte	0x116
	.4byte	0x124
	.byte	0x8
	.uleb128 0x10
	.4byte	.LASF130
	.byte	0x1
	.2byte	0x119
	.4byte	0x124
	.byte	0x9
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF138
	.byte	0x1
	.2byte	0x151
	.4byte	0x3e
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x975
	.uleb128 0x1c
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x151
	.4byte	0xca
	.4byte	.LLST0
	.uleb128 0x1c
	.4byte	.LASF135
	.byte	0x1
	.2byte	0x151
	.4byte	0xca
	.4byte	.LLST1
	.uleb128 0x1d
	.string	"c1"
	.byte	0x1
	.2byte	0x153
	.4byte	0xc3
	.4byte	.LLST2
	.uleb128 0x1d
	.string	"c2"
	.byte	0x1
	.2byte	0x153
	.4byte	0xc3
	.4byte	.LLST3
	.uleb128 0x1e
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x1f
	.4byte	.LASF136
	.byte	0x1
	.2byte	0x159
	.4byte	0xc3
	.4byte	.LLST4
	.uleb128 0x1e
	.4byte	.Ldebug_ranges0+0x18
	.uleb128 0x1f
	.4byte	.LASF137
	.byte	0x1
	.2byte	0x15d
	.4byte	0xc3
	.4byte	.LLST5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF139
	.byte	0x1
	.2byte	0x25e
	.4byte	0x15b
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9f4
	.uleb128 0x1c
	.4byte	.LASF65
	.byte	0x1
	.2byte	0x25e
	.4byte	0xca
	.4byte	.LLST6
	.uleb128 0x20
	.4byte	.LASF70
	.byte	0x1
	.2byte	0x25e
	.4byte	0x9f4
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1c
	.4byte	.LASF140
	.byte	0x1
	.2byte	0x25e
	.4byte	0x124
	.4byte	.LLST7
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.2byte	0x260
	.4byte	0x124
	.4byte	.LLST8
	.uleb128 0x21
	.4byte	.LVL16
	.4byte	0x8f0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x14
	.byte	0x75
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x33
	.byte	0x24
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	dns_table+32
	.byte	0x22
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x433
	.uleb128 0x1b
	.4byte	.LASF141
	.byte	0x1
	.2byte	0x3a6
	.4byte	0x13a
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa48
	.uleb128 0x1f
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x3a8
	.4byte	0x13a
	.4byte	.LLST9
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.2byte	0x3a9
	.4byte	0x124
	.4byte	.LLST10
	.uleb128 0x23
	.4byte	.LASF170
	.byte	0x1
	.2byte	0x3ab
	.4byte	.L17
	.uleb128 0x24
	.4byte	.LVL28
	.4byte	0x18f5
	.byte	0
	.uleb128 0x25
	.4byte	.LASF148
	.byte	0x1
	.2byte	0x36c
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb2d
	.uleb128 0x26
	.string	"idx"
	.byte	0x1
	.2byte	0x36c
	.4byte	0x124
	.4byte	.LLST11
	.uleb128 0x1c
	.4byte	.LASF70
	.byte	0x1
	.2byte	0x36c
	.4byte	0x9f4
	.4byte	.LLST12
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.2byte	0x36f
	.4byte	0x124
	.4byte	.LLST13
	.uleb128 0x27
	.4byte	.LASF145
	.4byte	0xb3d
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6075
	.uleb128 0x28
	.4byte	.LVL34
	.4byte	0x1900
	.4byte	0xacb
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x376
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6075
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x28
	.4byte	.LVL35
	.4byte	0x1900
	.4byte	0xafb
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x379
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6075
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x29
	.4byte	.LVL37
	.4byte	0xb23
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x14
	.byte	0x72
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x33
	.byte	0x24
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	dns_table+32
	.byte	0x22
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL47
	.4byte	0x190b
	.byte	0
	.uleb128 0x12
	.4byte	0xc3
	.4byte	0xb3d
	.uleb128 0x13
	.4byte	0xa6
	.byte	0xe
	.byte	0
	.uleb128 0x8
	.4byte	0xb2d
	.uleb128 0x1b
	.4byte	.LASF142
	.byte	0x1
	.2byte	0x2cd
	.4byte	0x15b
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd80
	.uleb128 0x26
	.string	"idx"
	.byte	0x1
	.2byte	0x2cd
	.4byte	0x124
	.4byte	.LLST14
	.uleb128 0x1d
	.string	"err"
	.byte	0x1
	.2byte	0x2cf
	.4byte	0x15b
	.4byte	.LLST15
	.uleb128 0x2a
	.string	"hdr"
	.byte	0x1
	.2byte	0x2d0
	.4byte	0x741
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2a
	.string	"qry"
	.byte	0x1
	.2byte	0x2d1
	.4byte	0x7a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2a
	.string	"p"
	.byte	0x1
	.2byte	0x2d2
	.4byte	0x22f
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x1f
	.4byte	.LASF143
	.byte	0x1
	.2byte	0x2d3
	.4byte	0x13a
	.4byte	.LLST16
	.uleb128 0x1f
	.4byte	.LASF144
	.byte	0x1
	.2byte	0x2d3
	.4byte	0x13a
	.4byte	.LLST17
	.uleb128 0x1f
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x2d4
	.4byte	0xca
	.4byte	.LLST18
	.uleb128 0x2b
	.4byte	.LASF146
	.byte	0x1
	.2byte	0x2d4
	.4byte	0xca
	.uleb128 0x1d
	.string	"n"
	.byte	0x1
	.2byte	0x2d5
	.4byte	0x124
	.4byte	.LLST19
	.uleb128 0x1f
	.4byte	.LASF129
	.byte	0x1
	.2byte	0x2d6
	.4byte	0x124
	.4byte	.LLST20
	.uleb128 0x1f
	.4byte	.LASF147
	.byte	0x1
	.2byte	0x2d7
	.4byte	0xd80
	.4byte	.LLST21
	.uleb128 0x27
	.4byte	.LASF145
	.4byte	0xd96
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6043
	.uleb128 0x28
	.4byte	.LVL52
	.4byte	0x1900
	.4byte	0xc4f
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x2db
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6043
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.byte	0
	.uleb128 0x28
	.4byte	.LVL53
	.4byte	0xa48
	.4byte	0xc69
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x28
	.4byte	.LVL54
	.4byte	0x1916
	.4byte	0xc7d
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL55
	.4byte	0x1921
	.4byte	0xc95
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x24
	.4byte	.LVL57
	.4byte	0x192c
	.uleb128 0x28
	.4byte	.LVL58
	.4byte	0x1937
	.4byte	0xcbd
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.uleb128 0x28
	.4byte	.LVL67
	.4byte	0x1942
	.4byte	0xcdd
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL68
	.4byte	0x194d
	.4byte	0xd0b
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x6
	.byte	0x77
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x6
	.byte	0x74
	.sleb128 1
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0
	.uleb128 0x28
	.4byte	.LVL72
	.4byte	0x1942
	.4byte	0xd2a
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x28
	.4byte	.LVL77
	.4byte	0x194d
	.4byte	0xd49
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x28
	.4byte	.LVL84
	.4byte	0x1958
	.4byte	0xd6f
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x8
	.byte	0x73
	.sleb128 0
	.byte	0x3
	.4byte	dns_servers
	.byte	0x22
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x8
	.byte	0x35
	.byte	0
	.uleb128 0x21
	.4byte	.LVL87
	.4byte	0x1963
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x803
	.uleb128 0x12
	.4byte	0xc3
	.4byte	0xd96
	.uleb128 0x13
	.4byte	0xa6
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.4byte	0xd86
	.uleb128 0x25
	.4byte	.LASF149
	.byte	0x1
	.2byte	0x3c4
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xeab
	.uleb128 0x26
	.string	"i"
	.byte	0x1
	.2byte	0x3c4
	.4byte	0x124
	.4byte	.LLST22
	.uleb128 0x2c
	.string	"err"
	.byte	0x1
	.2byte	0x3c6
	.4byte	0x15b
	.uleb128 0x1f
	.4byte	.LASF147
	.byte	0x1
	.2byte	0x3c7
	.4byte	0xd80
	.4byte	.LLST23
	.uleb128 0x27
	.4byte	.LASF145
	.4byte	0xebb
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6097
	.uleb128 0x2d
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.4byte	0xe21
	.uleb128 0x1f
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x3ce
	.4byte	0x13a
	.4byte	.LLST24
	.uleb128 0x24
	.4byte	.LVL92
	.4byte	0x9fa
	.uleb128 0x21
	.4byte	.LVL94
	.4byte	0xb42
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL91
	.4byte	0x1900
	.4byte	0xe51
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x3c9
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6097
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC18
	.byte	0
	.uleb128 0x28
	.4byte	.LVL95
	.4byte	0xa48
	.4byte	0xe6a
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x28
	.4byte	.LVL98
	.4byte	0xb42
	.4byte	0xe7e
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL101
	.4byte	0x1900
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x409
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6097
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC24
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	0xc3
	.4byte	0xebb
	.uleb128 0x13
	.4byte	0xa6
	.byte	0xf
	.byte	0
	.uleb128 0x8
	.4byte	0xeab
	.uleb128 0x25
	.4byte	.LASF150
	.byte	0x1
	.2byte	0x412
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xef5
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.2byte	0x414
	.4byte	0x124
	.4byte	.LLST25
	.uleb128 0x21
	.4byte	.LVL104
	.4byte	0xd9b
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF151
	.byte	0x1
	.2byte	0x320
	.4byte	0x6ba
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfad
	.uleb128 0x1d
	.string	"err"
	.byte	0x1
	.2byte	0x322
	.4byte	0x15b
	.4byte	.LLST26
	.uleb128 0x1d
	.string	"ret"
	.byte	0x1
	.2byte	0x323
	.4byte	0x6ba
	.4byte	.LLST27
	.uleb128 0x2d
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.4byte	0xf66
	.uleb128 0x1f
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x32b
	.4byte	0x13a
	.4byte	.LLST28
	.uleb128 0x24
	.4byte	.LVL109
	.4byte	0x18f5
	.uleb128 0x21
	.4byte	.LVL112
	.4byte	0x196e
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL107
	.4byte	0x1979
	.4byte	0xf7a
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x2e
	.byte	0
	.uleb128 0x28
	.4byte	.LVL117
	.4byte	0x190b
	.4byte	0xf8e
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL121
	.4byte	0x1984
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	dns_recv
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF153
	.byte	0x1
	.2byte	0x342
	.4byte	0x124
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfef
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.2byte	0x344
	.4byte	0x124
	.4byte	.LLST29
	.uleb128 0x1d
	.string	"idx"
	.byte	0x1
	.2byte	0x345
	.4byte	0x124
	.4byte	.LLST30
	.uleb128 0x24
	.4byte	.LVL127
	.4byte	0xef5
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF154
	.byte	0x1
	.2byte	0x4f5
	.4byte	0x15b
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1121
	.uleb128 0x1c
	.4byte	.LASF65
	.byte	0x1
	.2byte	0x4f5
	.4byte	0xca
	.4byte	.LLST31
	.uleb128 0x1c
	.4byte	.LASF155
	.byte	0x1
	.2byte	0x4f5
	.4byte	0x25
	.4byte	.LLST32
	.uleb128 0x1c
	.4byte	.LASF132
	.byte	0x1
	.2byte	0x4f5
	.4byte	0x71b
	.4byte	.LLST33
	.uleb128 0x1c
	.4byte	.LASF156
	.byte	0x1
	.2byte	0x4f6
	.4byte	0xad
	.4byte	.LLST34
	.uleb128 0x1c
	.4byte	.LASF140
	.byte	0x1
	.2byte	0x4f6
	.4byte	0x124
	.4byte	.LLST35
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.2byte	0x4f8
	.4byte	0x124
	.4byte	.LLST36
	.uleb128 0x1f
	.4byte	.LASF157
	.byte	0x1
	.2byte	0x4f9
	.4byte	0x124
	.4byte	.LLST37
	.uleb128 0x1f
	.4byte	.LASF158
	.byte	0x1
	.2byte	0x4f9
	.4byte	0x124
	.4byte	.LLST38
	.uleb128 0x1f
	.4byte	.LASF147
	.byte	0x1
	.2byte	0x4fa
	.4byte	0xd80
	.4byte	.LLST39
	.uleb128 0x1f
	.4byte	.LASF159
	.byte	0x1
	.2byte	0x4fb
	.4byte	0x25
	.4byte	.LLST40
	.uleb128 0x1d
	.string	"req"
	.byte	0x1
	.2byte	0x4fc
	.4byte	0x1121
	.4byte	.LLST41
	.uleb128 0x1d
	.string	"r"
	.byte	0x1
	.2byte	0x4ff
	.4byte	0x124
	.4byte	.LLST42
	.uleb128 0x28
	.4byte	.LVL143
	.4byte	0x8f0
	.4byte	0x10e7
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0xa
	.byte	0x77
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	dns_table+32
	.byte	0x22
	.byte	0
	.uleb128 0x28
	.4byte	.LVL178
	.4byte	0x198f
	.4byte	0x1107
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 32
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL181
	.4byte	0xfad
	.uleb128 0x21
	.4byte	.LVL185
	.4byte	0xd9b
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x8ae
	.uleb128 0x1b
	.4byte	.LASF160
	.byte	0x1
	.2byte	0x28c
	.4byte	0x13a
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x11d6
	.uleb128 0x1c
	.4byte	.LASF161
	.byte	0x1
	.2byte	0x28c
	.4byte	0xbd
	.4byte	.LLST43
	.uleb128 0x2e
	.string	"p"
	.byte	0x1
	.2byte	0x28c
	.4byte	0x22f
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1c
	.4byte	.LASF162
	.byte	0x1
	.2byte	0x28c
	.4byte	0x13a
	.4byte	.LLST44
	.uleb128 0x1d
	.string	"n"
	.byte	0x1
	.2byte	0x28e
	.4byte	0x62
	.4byte	.LLST45
	.uleb128 0x1f
	.4byte	.LASF163
	.byte	0x1
	.2byte	0x28f
	.4byte	0x13a
	.4byte	.LLST46
	.uleb128 0x28
	.4byte	.LVL195
	.4byte	0x1998
	.4byte	0x11a5
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL198
	.4byte	0x1998
	.4byte	0x11bf
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL205
	.4byte	0x1998
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF164
	.byte	0x1
	.2byte	0x2b0
	.4byte	0x13a
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x124d
	.uleb128 0x26
	.string	"p"
	.byte	0x1
	.2byte	0x2b0
	.4byte	0x22f
	.4byte	.LLST47
	.uleb128 0x1c
	.4byte	.LASF143
	.byte	0x1
	.2byte	0x2b0
	.4byte	0x13a
	.4byte	.LLST48
	.uleb128 0x1d
	.string	"n"
	.byte	0x1
	.2byte	0x2b2
	.4byte	0x62
	.4byte	.LLST49
	.uleb128 0x28
	.4byte	.LVL215
	.4byte	0x1998
	.4byte	0x1236
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL222
	.4byte	0x1998
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LASF165
	.byte	0x1
	.2byte	0x421
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1577
	.uleb128 0x26
	.string	"arg"
	.byte	0x1
	.2byte	0x421
	.4byte	0xad
	.4byte	.LLST50
	.uleb128 0x26
	.string	"pcb"
	.byte	0x1
	.2byte	0x421
	.4byte	0x6ba
	.4byte	.LLST51
	.uleb128 0x26
	.string	"p"
	.byte	0x1
	.2byte	0x421
	.4byte	0x22f
	.4byte	.LLST52
	.uleb128 0x1c
	.4byte	.LASF70
	.byte	0x1
	.2byte	0x421
	.4byte	0x710
	.4byte	.LLST53
	.uleb128 0x1c
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x421
	.4byte	0x13a
	.4byte	.LLST54
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.2byte	0x423
	.4byte	0x124
	.4byte	.LLST55
	.uleb128 0x1f
	.4byte	.LASF166
	.byte	0x1
	.2byte	0x423
	.4byte	0x124
	.4byte	.LLST56
	.uleb128 0x1f
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x424
	.4byte	0x13a
	.4byte	.LLST57
	.uleb128 0x1f
	.4byte	.LASF167
	.byte	0x1
	.2byte	0x425
	.4byte	0x13a
	.4byte	.LLST58
	.uleb128 0x2a
	.string	"hdr"
	.byte	0x1
	.2byte	0x426
	.4byte	0x741
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2a
	.string	"ans"
	.byte	0x1
	.2byte	0x427
	.4byte	0x7c6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2a
	.string	"qry"
	.byte	0x1
	.2byte	0x428
	.4byte	0x7a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1f
	.4byte	.LASF168
	.byte	0x1
	.2byte	0x429
	.4byte	0x13a
	.4byte	.LLST59
	.uleb128 0x1f
	.4byte	.LASF169
	.byte	0x1
	.2byte	0x429
	.4byte	0x13a
	.4byte	.LLST60
	.uleb128 0x23
	.4byte	.LASF171
	.byte	0x1
	.2byte	0x4e5
	.4byte	.L128
	.uleb128 0x23
	.4byte	.LASF172
	.byte	0x1
	.2byte	0x4de
	.4byte	.L134
	.uleb128 0x23
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x4e1
	.4byte	.L142
	.uleb128 0x2d
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.4byte	0x151f
	.uleb128 0x1f
	.4byte	.LASF147
	.byte	0x1
	.2byte	0x43b
	.4byte	0xd80
	.4byte	.LLST61
	.uleb128 0x2f
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.uleb128 0x1f
	.4byte	.LASF174
	.byte	0x1
	.2byte	0x43f
	.4byte	0x124
	.4byte	.LLST62
	.uleb128 0x2d
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.4byte	0x13f9
	.uleb128 0x30
	.4byte	.LASF175
	.byte	0x1
	.2byte	0x483
	.4byte	0x3b0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x24
	.4byte	.LVL265
	.4byte	0x19a3
	.uleb128 0x28
	.4byte	.LVL268
	.4byte	0x19ae
	.4byte	0x13e2
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL269
	.4byte	0xa48
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 4
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LBB11
	.4byte	.LBE11-.LBB11
	.4byte	0x145a
	.uleb128 0x30
	.4byte	.LASF176
	.byte	0x1
	.2byte	0x4a4
	.4byte	0x3e4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x24
	.4byte	.LVL273
	.4byte	0x19a3
	.uleb128 0x28
	.4byte	.LVL274
	.4byte	0x19ae
	.4byte	0x1443
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL276
	.4byte	0xa48
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 4
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL236
	.4byte	0x192c
	.uleb128 0x24
	.4byte	.LVL238
	.4byte	0x192c
	.uleb128 0x28
	.4byte	.LVL254
	.4byte	0x1127
	.4byte	0x1491
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x8
	.byte	0x75
	.sleb128 0
	.byte	0x3
	.4byte	dns_table
	.byte	0x22
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.uleb128 0x28
	.4byte	.LVL256
	.4byte	0x19ae
	.4byte	0x14b6
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL260
	.4byte	0x11d6
	.4byte	0x14ca
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL262
	.4byte	0x19ae
	.4byte	0x14f0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x3a
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL278
	.4byte	0x192c
	.uleb128 0x28
	.4byte	.LVL283
	.4byte	0x1963
	.4byte	0x150d
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL285
	.4byte	0xd9b
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL228
	.4byte	0x19ae
	.4byte	0x1544
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x3c
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x24
	.4byte	.LVL229
	.4byte	0x192c
	.uleb128 0x28
	.4byte	.LVL289
	.4byte	0xa48
	.4byte	0x1566
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x21
	.4byte	.LVL291
	.4byte	0x1963
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LASF177
	.byte	0x1
	.2byte	0x172
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1597
	.uleb128 0x32
	.4byte	.LASF145
	.4byte	0x1597
	.byte	0
	.uleb128 0x8
	.4byte	0xd86
	.uleb128 0x31
	.4byte	.LASF178
	.byte	0x1
	.2byte	0x19f
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1613
	.uleb128 0x1c
	.4byte	.LASF179
	.byte	0x1
	.2byte	0x19f
	.4byte	0x124
	.4byte	.LLST63
	.uleb128 0x1c
	.4byte	.LASF180
	.byte	0x1
	.2byte	0x19f
	.4byte	0x710
	.4byte	.LLST64
	.uleb128 0x28
	.4byte	.LVL294
	.4byte	0x198f
	.4byte	0x15f7
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x8
	.byte	0x72
	.sleb128 0
	.byte	0x3
	.4byte	dns_servers
	.byte	0x22
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x44
	.byte	0
	.uleb128 0x21
	.4byte	.LVL296
	.4byte	0x198f
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x8
	.byte	0x72
	.sleb128 0
	.byte	0x3
	.4byte	dns_servers
	.byte	0x22
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x44
	.byte	0
	.byte	0
	.uleb128 0x33
	.4byte	.LASF182
	.byte	0x1
	.2byte	0x1b2
	.4byte	0x433
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1678
	.uleb128 0x1c
	.4byte	.LASF179
	.byte	0x1
	.2byte	0x1b2
	.4byte	0x124
	.4byte	.LLST65
	.uleb128 0x28
	.4byte	.LVL299
	.4byte	0x198f
	.4byte	0x1662
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x8
	.byte	0x73
	.sleb128 0
	.byte	0x3
	.4byte	dns_servers
	.byte	0x22
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x44
	.byte	0
	.uleb128 0x21
	.4byte	.LVL300
	.4byte	0x198f
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x44
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LASF181
	.byte	0x1
	.2byte	0x1c0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1698
	.uleb128 0x24
	.4byte	.LVL301
	.4byte	0xec0
	.byte	0
	.uleb128 0x33
	.4byte	.LASF183
	.byte	0x1
	.2byte	0x593
	.4byte	0x15b
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x17b7
	.uleb128 0x1c
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x593
	.4byte	0xca
	.4byte	.LLST66
	.uleb128 0x1c
	.4byte	.LASF70
	.byte	0x1
	.2byte	0x593
	.4byte	0x9f4
	.4byte	.LLST67
	.uleb128 0x20
	.4byte	.LASF132
	.byte	0x1
	.2byte	0x593
	.4byte	0x71b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x20
	.4byte	.LASF156
	.byte	0x1
	.2byte	0x594
	.4byte	0xad
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x20
	.4byte	.LASF140
	.byte	0x1
	.2byte	0x594
	.4byte	0x124
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x1f
	.4byte	.LASF155
	.byte	0x1
	.2byte	0x596
	.4byte	0x25
	.4byte	.LLST68
	.uleb128 0x2d
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.4byte	0x1740
	.uleb128 0x1f
	.4byte	.LASF184
	.byte	0x1
	.2byte	0x5c1
	.4byte	0x124
	.4byte	.LLST69
	.uleb128 0x21
	.4byte	.LVL308
	.4byte	0x975
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL303
	.4byte	0x1916
	.4byte	0x1754
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL305
	.4byte	0x19b9
	.4byte	0x176e
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL306
	.4byte	0x975
	.4byte	0x178e
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL310
	.4byte	0xfef
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x33
	.4byte	.LASF185
	.byte	0x1
	.2byte	0x586
	.4byte	0x15b
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1833
	.uleb128 0x1c
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x586
	.4byte	0xca
	.4byte	.LLST70
	.uleb128 0x20
	.4byte	.LASF70
	.byte	0x1
	.2byte	0x586
	.4byte	0x9f4
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x20
	.4byte	.LASF132
	.byte	0x1
	.2byte	0x586
	.4byte	0x71b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x20
	.4byte	.LASF156
	.byte	0x1
	.2byte	0x587
	.4byte	0xad
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x21
	.4byte	.LVL317
	.4byte	0x1698
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	0x6ba
	.4byte	0x1843
	.uleb128 0x13
	.4byte	0xa6
	.byte	0x3
	.byte	0
	.uleb128 0x30
	.4byte	.LASF186
	.byte	0x1
	.2byte	0x142
	.4byte	0x1833
	.uleb128 0x5
	.byte	0x3
	.4byte	dns_pcbs
	.uleb128 0x30
	.4byte	.LASF187
	.byte	0x1
	.2byte	0x144
	.4byte	0x124
	.uleb128 0x5
	.byte	0x3
	.4byte	dns_last_pcb_idx
	.uleb128 0x30
	.4byte	.LASF188
	.byte	0x1
	.2byte	0x146
	.4byte	0x124
	.uleb128 0x5
	.byte	0x3
	.4byte	dns_seqno
	.uleb128 0x12
	.4byte	0x803
	.4byte	0x1889
	.uleb128 0x13
	.4byte	0xa6
	.byte	0x3
	.byte	0
	.uleb128 0x30
	.4byte	.LASF189
	.byte	0x1
	.2byte	0x147
	.4byte	0x1879
	.uleb128 0x5
	.byte	0x3
	.4byte	dns_table
	.uleb128 0x12
	.4byte	0x8ae
	.4byte	0x18ab
	.uleb128 0x13
	.4byte	0xa6
	.byte	0x3
	.byte	0
	.uleb128 0x30
	.4byte	.LASF190
	.byte	0x1
	.2byte	0x148
	.4byte	0x189b
	.uleb128 0x5
	.byte	0x3
	.4byte	dns_requests
	.uleb128 0x12
	.4byte	0x433
	.4byte	0x18cd
	.uleb128 0x13
	.4byte	0xa6
	.byte	0x1
	.byte	0
	.uleb128 0x30
	.4byte	.LASF191
	.byte	0x1
	.2byte	0x149
	.4byte	0x18bd
	.uleb128 0x5
	.byte	0x3
	.4byte	dns_servers
	.uleb128 0x34
	.4byte	.LASF192
	.byte	0xb
	.byte	0x3e
	.4byte	0x716
	.uleb128 0x34
	.4byte	.LASF193
	.byte	0xb
	.byte	0xf5
	.4byte	0x716
	.uleb128 0x35
	.4byte	.LASF194
	.4byte	.LASF194
	.byte	0xf
	.byte	0x8a
	.uleb128 0x35
	.4byte	.LASF195
	.4byte	.LASF195
	.byte	0x10
	.byte	0x29
	.uleb128 0x35
	.4byte	.LASF196
	.4byte	.LASF196
	.byte	0xd
	.byte	0x7f
	.uleb128 0x35
	.4byte	.LASF197
	.4byte	.LASF197
	.byte	0x11
	.byte	0x21
	.uleb128 0x35
	.4byte	.LASF198
	.4byte	.LASF198
	.byte	0x7
	.byte	0xc1
	.uleb128 0x35
	.4byte	.LASF199
	.4byte	.LASF199
	.byte	0x12
	.byte	0x6c
	.uleb128 0x35
	.4byte	.LASF200
	.4byte	.LASF200
	.byte	0x7
	.byte	0xd2
	.uleb128 0x35
	.4byte	.LASF201
	.4byte	.LASF201
	.byte	0x7
	.byte	0xdf
	.uleb128 0x35
	.4byte	.LASF202
	.4byte	.LASF202
	.byte	0x7
	.byte	0xd3
	.uleb128 0x35
	.4byte	.LASF203
	.4byte	.LASF203
	.byte	0xd
	.byte	0x8d
	.uleb128 0x35
	.4byte	.LASF204
	.4byte	.LASF204
	.byte	0x7
	.byte	0xcb
	.uleb128 0x35
	.4byte	.LASF205
	.4byte	.LASF205
	.byte	0xd
	.byte	0x80
	.uleb128 0x35
	.4byte	.LASF206
	.4byte	.LASF206
	.byte	0xd
	.byte	0x7e
	.uleb128 0x35
	.4byte	.LASF207
	.4byte	.LASF207
	.byte	0xd
	.byte	0x85
	.uleb128 0x36
	.4byte	.LASF215
	.4byte	.LASF215
	.uleb128 0x35
	.4byte	.LASF208
	.4byte	.LASF208
	.byte	0x7
	.byte	0xde
	.uleb128 0x35
	.4byte	.LASF209
	.4byte	.LASF209
	.byte	0x12
	.byte	0x6f
	.uleb128 0x35
	.4byte	.LASF210
	.4byte	.LASF210
	.byte	0x7
	.byte	0xd1
	.uleb128 0x35
	.4byte	.LASF211
	.4byte	.LASF211
	.byte	0xb
	.byte	0x9d
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
	.uleb128 0xe
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
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xe
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
	.uleb128 0x11
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x15
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
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x18
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
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x36
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
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL1
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL10
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL3
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL11
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL2
	.4byte	.LVL6
	.2byte	0x2
	.byte	0x72
	.sleb128 0
	.4byte	.LVL6
	.4byte	.LVL9
	.2byte	0x2
	.byte	0x7c
	.sleb128 -1
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x2
	.byte	0x72
	.sleb128 -1
	.4byte	.LVL10
	.4byte	.LFE13
	.2byte	0x2
	.byte	0x7c
	.sleb128 -1
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL4
	.4byte	.LVL9
	.2byte	0x2
	.byte	0x7b
	.sleb128 -1
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x2
	.byte	0x73
	.sleb128 -1
	.4byte	.LVL11
	.4byte	.LFE13
	.2byte	0x2
	.byte	0x7b
	.sleb128 -1
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL5
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL11
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL12
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL13
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL18
	.4byte	.LVL22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL27
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL13
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL17
	.4byte	.LVL22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LFE18
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL24
	.4byte	.LFE18
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL30
	.4byte	.LFE25
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x3
	.byte	0x78
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LFE25
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL33
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL48
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL33
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL41
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL36
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL49
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL51
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL85
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL86
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x2
	.byte	0x3c
	.byte	0x9f
	.4byte	.LVL60
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL71
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL73
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL74
	.4byte	.LVL77-1
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL66
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL58
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL62
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL64
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL78
	.4byte	.LVL79
	.2byte	0x9
	.byte	0x73
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1f
	.4byte	.LVL79
	.4byte	.LVL80
	.2byte	0xd
	.byte	0x72
	.sleb128 0
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x22
	.byte	0x32
	.byte	0x24
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1f
	.4byte	.LVL80
	.4byte	.LVL81
	.2byte	0x9
	.byte	0x72
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1f
	.4byte	.LVL81
	.4byte	.LVL82
	.2byte	0x7
	.byte	0x75
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1f
	.4byte	.LVL82
	.4byte	.LVL83
	.2byte	0x2
	.byte	0x73
	.sleb128 31
	.4byte	.LVL83
	.4byte	.LVL84-1
	.2byte	0x16
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x33
	.byte	0x24
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x22
	.byte	0x33
	.byte	0x24
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x22
	.byte	0x32
	.byte	0x24
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0xd
	.byte	0x72
	.sleb128 0
	.byte	0xa
	.2byte	0x124
	.byte	0x1e
	.byte	0x3
	.4byte	dns_table
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL51
	.4byte	.LFE21
	.2byte	0xe
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0xa
	.2byte	0x124
	.byte	0x1e
	.byte	0x3
	.4byte	dns_table
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL89
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
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL99
	.4byte	.LVL100
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL100
	.4byte	.LFE26
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL90
	.4byte	.LVL96
	.2byte	0xd
	.byte	0x72
	.sleb128 0
	.byte	0xa
	.2byte	0x124
	.byte	0x1e
	.byte	0x3
	.4byte	dns_table
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL97
	.4byte	.LVL99
	.2byte	0xd
	.byte	0x72
	.sleb128 0
	.byte	0xa
	.2byte	0x124
	.byte	0x1e
	.byte	0x3
	.4byte	dns_table
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL100
	.4byte	.LFE26
	.2byte	0xd
	.byte	0x72
	.sleb128 0
	.byte	0xa
	.2byte	0x124
	.byte	0x1e
	.byte	0x3
	.4byte	dns_table
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL92
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL93
	.4byte	.LVL94-1
	.2byte	0x2
	.byte	0x78
	.sleb128 24
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL102
	.4byte	.LVL103
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL103
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL105
	.4byte	.LVL106
	.2byte	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL106
	.4byte	.LFE27
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL113
	.4byte	.LVL114
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL115
	.4byte	.LVL116
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL119
	.4byte	.LVL120
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL108
	.4byte	.LVL118
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL119
	.4byte	.LVL122
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL122
	.4byte	.LFE22
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL110
	.4byte	.LVL111
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL111
	.4byte	.LVL112-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL114
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL123
	.4byte	.LVL124
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL124
	.4byte	.LVL125
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL125
	.4byte	.LVL126
	.2byte	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL126
	.4byte	.LVL128
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL128
	.4byte	.LVL130
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL130
	.4byte	.LVL132
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL133
	.4byte	.LVL134
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL134
	.4byte	.LVL135
	.2byte	0x3
	.byte	0x78
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL135
	.4byte	.LFE23
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL129
	.4byte	.LVL136
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL136
	.4byte	.LVL137
	.2byte	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL137
	.4byte	.LVL138
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL139
	.4byte	.LVL146
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL146
	.4byte	.LVL149
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL149
	.4byte	.LVL180
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL180
	.4byte	.LVL186
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL186
	.4byte	.LVL187
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL187
	.4byte	.LVL188
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL188
	.4byte	.LVL189
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL189
	.4byte	.LVL190
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL190
	.4byte	.LVL191
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL191
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL139
	.4byte	.LVL141
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL141
	.4byte	.LFE29
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL139
	.4byte	.LVL147
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL147
	.4byte	.LVL148
	.2byte	0x2
	.byte	0x72
	.sleb128 0
	.4byte	.LVL148
	.4byte	.LVL149
	.2byte	0x5
	.byte	0x75
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.4byte	.LVL149
	.4byte	.LVL175
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL175
	.4byte	.LVL178-1
	.2byte	0x2
	.byte	0x73
	.sleb128 0
	.4byte	.LVL178-1
	.4byte	.LVL186
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL186
	.4byte	.LFE29
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL139
	.4byte	.LVL142
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL142
	.4byte	.LFE29
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL139
	.4byte	.LVL176
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL176
	.4byte	.LVL178-1
	.2byte	0x2
	.byte	0x73
	.sleb128 9
	.4byte	.LVL178-1
	.4byte	.LVL186
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	.LVL186
	.4byte	.LFE29
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL140
	.4byte	.LVL142
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL142
	.4byte	.LVL153
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL153
	.4byte	.LVL154
	.2byte	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL154
	.4byte	.LVL155
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL155
	.4byte	.LVL160
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL160
	.4byte	.LVL161
	.2byte	0x3
	.byte	0x75
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL161
	.4byte	.LVL162
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL163
	.4byte	.LVL166
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL166
	.4byte	.LVL188
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL190
	.4byte	.LFE29
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL155
	.4byte	.LVL168
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL171
	.4byte	.LVL174
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL186
	.4byte	.LVL190
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL155
	.4byte	.LVL158
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL159
	.4byte	.LVL167
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL186
	.4byte	.LVL190
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL140
	.4byte	.LVL155
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL155
	.4byte	.LVL156
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL157
	.4byte	.LVL164
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL165
	.4byte	.LFE29
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL177
	.4byte	.LVL179
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL179
	.4byte	.LVL182
	.2byte	0x16
	.byte	0x76
	.sleb128 0
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x8
	.byte	0xff
	.byte	0x16
	.byte	0x14
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL182
	.4byte	.LVL183
	.2byte	0x16
	.byte	0x76
	.sleb128 0
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x72
	.sleb128 0
	.byte	0x16
	.byte	0x14
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL183
	.4byte	.LVL186
	.2byte	0x16
	.byte	0x76
	.sleb128 0
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x8
	.byte	0xff
	.byte	0x16
	.byte	0x14
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL166
	.4byte	.LVL170
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL170
	.4byte	.LVL171
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL171
	.4byte	.LVL174
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL174
	.4byte	.LVL184
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL190
	.4byte	.LFE29
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL144
	.4byte	.LVL145
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL145
	.4byte	.LVL149
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL149
	.4byte	.LVL150
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL150
	.4byte	.LVL151
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL151
	.4byte	.LVL152
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL166
	.4byte	.LVL167
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL167
	.4byte	.LVL169
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL171
	.4byte	.LVL172
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL172
	.4byte	.LVL173
	.2byte	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL173
	.4byte	.LVL174
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL192
	.4byte	.LVL201
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL201
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
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL192
	.4byte	.LVL193
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL193
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL196
	.4byte	.LVL202
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL202
	.4byte	.LVL203
	.2byte	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL203
	.4byte	.LFE19
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL193
	.4byte	.LVL194
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL194
	.4byte	.LVL197
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL197
	.4byte	.LVL199
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL199
	.4byte	.LVL200
	.2byte	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL200
	.4byte	.LVL206
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL206
	.4byte	.LVL208
	.2byte	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL208
	.4byte	.LVL210
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL210
	.4byte	.LFE19
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL212
	.4byte	.LVL225
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL225
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL212
	.4byte	.LVL213
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL213
	.4byte	.LVL214
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL214
	.4byte	.LVL216
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL216
	.4byte	.LVL217
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL217
	.4byte	.LVL218
	.2byte	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL218
	.4byte	.LVL223
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL223
	.4byte	.LVL224
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL224
	.4byte	.LFE20
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL215
	.4byte	.LVL219
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL219
	.4byte	.LVL220
	.2byte	0x3
	.byte	0x7a
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL220
	.4byte	.LVL221
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL223
	.4byte	.LVL224
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL226
	.4byte	.LVL230
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL230
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL226
	.4byte	.LVL239
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL239
	.4byte	.LVL286
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL286
	.4byte	.LVL288
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL288
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL226
	.4byte	.LVL284
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL284
	.4byte	.LVL286
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL286
	.4byte	.LFE28
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL226
	.4byte	.LVL243
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL243
	.4byte	.LVL244
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL244
	.4byte	.LVL245
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL245
	.4byte	.LVL246
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL246
	.4byte	.LVL247
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL247
	.4byte	.LVL248
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL248
	.4byte	.LVL249
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL249
	.4byte	.LVL250
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL250
	.4byte	.LVL251
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL251
	.4byte	.LVL252
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL252
	.4byte	.LVL253
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL253
	.4byte	.LVL286
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL286
	.4byte	.LVL288
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL288
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL226
	.4byte	.LVL233
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL233
	.4byte	.LVL286
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	.LVL286
	.4byte	.LVL288
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL288
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL229
	.4byte	.LVL230
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL230
	.4byte	.LVL232
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL232
	.4byte	.LVL287
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL287
	.4byte	.LVL288
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL288
	.4byte	.LVL290
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL227
	.4byte	.LVL230
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL231
	.4byte	.LVL287
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL288
	.4byte	.LVL290
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL229
	.4byte	.LVL235
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL286
	.4byte	.LVL288
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL255
	.4byte	.LVL257
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL257
	.4byte	.LVL258
	.2byte	0x3
	.byte	0x75
	.sleb128 -4
	.byte	0x9f
	.4byte	.LVL258
	.4byte	.LVL259
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL259
	.4byte	.LVL260-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL261
	.4byte	.LVL263
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL263
	.4byte	.LVL264
	.2byte	0x3
	.byte	0x75
	.sleb128 -10
	.byte	0x9f
	.4byte	.LVL264
	.4byte	.LVL266
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL266
	.4byte	.LVL270
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL270
	.4byte	.LVL272
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL272
	.4byte	.LVL275
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL277
	.4byte	.LVL279
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL279
	.4byte	.LVL283-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL237
	.4byte	.LVL240
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL240
	.4byte	.LVL242
	.2byte	0x3
	.byte	0x77
	.sleb128 1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL239
	.4byte	.LVL267
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL270
	.4byte	.LVL271
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL277
	.4byte	.LVL280
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL280
	.4byte	.LVL281
	.2byte	0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL281
	.4byte	.LVL282
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LVL231
	.4byte	.LVL287
	.2byte	0xd
	.byte	0x72
	.sleb128 0
	.byte	0xa
	.2byte	0x124
	.byte	0x1e
	.byte	0x3
	.4byte	dns_table
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL288
	.4byte	.LVL290
	.2byte	0xd
	.byte	0x72
	.sleb128 0
	.byte	0xa
	.2byte	0x124
	.byte	0x1e
	.byte	0x3
	.4byte	dns_table
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL234
	.4byte	.LVL241
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST63:
	.4byte	.LVL292
	.4byte	.LVL293
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL293
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST64:
	.4byte	.LVL292
	.4byte	.LVL295
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL295
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST65:
	.4byte	.LVL297
	.4byte	.LVL298
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL298
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST66:
	.4byte	.LVL302
	.4byte	.LVL315
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL315
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST67:
	.4byte	.LVL302
	.4byte	.LVL309
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL309
	.4byte	.LVL311
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL311
	.4byte	.LVL313
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL313
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST68:
	.4byte	.LVL304
	.4byte	.LVL311
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL312
	.4byte	.LVL314
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST69:
	.4byte	.LVL307
	.4byte	.LVL308-1
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST70:
	.4byte	.LVL316
	.4byte	.LVL318
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL318
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0xac
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB2
	.4byte	.LBE2
	.4byte	.LBB5
	.4byte	.LBE5
	.4byte	0
	.4byte	0
	.4byte	.LBB3
	.4byte	.LBE3
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	0
	.4byte	0
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF115:
	.string	"flags1"
.LASF99:
	.string	"netif_igmp_mac_filter_fn"
.LASF87:
	.string	"MEMP_SYS_TIMEOUT"
.LASF55:
	.string	"output_ip6"
.LASF45:
	.string	"pbuf"
.LASF61:
	.string	"rs_count"
.LASF2:
	.string	"size_t"
.LASF151:
	.string	"dns_alloc_random_port"
.LASF205:
	.string	"udp_bind"
.LASF156:
	.string	"callback_arg"
.LASF187:
	.string	"dns_last_pcb_idx"
.LASF5:
	.string	"__uint8_t"
.LASF41:
	.string	"type"
.LASF175:
	.string	"ip4addr"
.LASF73:
	.string	"_ip_addr"
.LASF177:
	.string	"dns_init"
.LASF147:
	.string	"entry"
.LASF12:
	.string	"long long unsigned int"
.LASF58:
	.string	"dhcps_pcb"
.LASF153:
	.string	"dns_alloc_pcb"
.LASF70:
	.string	"addr"
.LASF50:
	.string	"ip6_addr_state"
.LASF180:
	.string	"dnsserver"
.LASF171:
	.string	"memerr"
.LASF80:
	.string	"MEMP_TCP_SEG"
.LASF88:
	.string	"MEMP_NETDB"
.LASF3:
	.string	"__int8_t"
.LASF200:
	.string	"pbuf_take"
.LASF38:
	.string	"next"
.LASF85:
	.string	"MEMP_ARP_QUEUE"
.LASF19:
	.string	"int16_t"
.LASF11:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF178:
	.string	"dns_setserver"
.LASF106:
	.string	"local_port"
.LASF15:
	.string	"long unsigned int"
.LASF194:
	.string	"esp_random"
.LASF67:
	.string	"mld_mac_filter"
.LASF188:
	.string	"dns_seqno"
.LASF64:
	.string	"hwaddr"
.LASF126:
	.string	"server_idx"
.LASF154:
	.string	"dns_enqueue"
.LASF40:
	.string	"tot_len"
.LASF90:
	.string	"MEMP_IP6_REASSDATA"
.LASF118:
	.string	"numanswers"
.LASF56:
	.string	"state"
.LASF62:
	.string	"hostname"
.LASF13:
	.string	"long int"
.LASF30:
	.string	"PBUF_IP"
.LASF37:
	.string	"PBUF_POOL"
.LASF76:
	.string	"MEMP_RAW_PCB"
.LASF69:
	.string	"ip4_addr"
.LASF36:
	.string	"PBUF_REF"
.LASF162:
	.string	"start_offset"
.LASF101:
	.string	"dhcp_event_fn"
.LASF20:
	.string	"uint16_t"
.LASF63:
	.string	"hwaddr_len"
.LASF142:
	.string	"dns_send"
.LASF160:
	.string	"dns_compare_name"
.LASF179:
	.string	"numdns"
.LASF77:
	.string	"MEMP_UDP_PCB"
.LASF190:
	.string	"dns_requests"
.LASF48:
	.string	"netmask"
.LASF134:
	.string	"str1"
.LASF135:
	.string	"str2"
.LASF137:
	.string	"c2_upc"
.LASF10:
	.string	"__uint32_t"
.LASF7:
	.string	"__int16_t"
.LASF169:
	.string	"nanswers"
.LASF138:
	.string	"dns_stricmp"
.LASF157:
	.string	"lseq"
.LASF167:
	.string	"res_idx"
.LASF214:
	.string	"C:\\\\esp\\\\esp32-ArkPOS2\\\\ArkPOS2-esp\\\\build\\\\lwip"
.LASF0:
	.string	"unsigned int"
.LASF112:
	.string	"udp_recv_fn"
.LASF86:
	.string	"MEMP_IGMP_GROUP"
.LASF163:
	.string	"response_offset"
.LASF97:
	.string	"netif_output_ip6_fn"
.LASF92:
	.string	"MEMP_PBUF"
.LASF53:
	.string	"output"
.LASF148:
	.string	"dns_call_found"
.LASF110:
	.string	"recv"
.LASF210:
	.string	"pbuf_copy_partial"
.LASF65:
	.string	"name"
.LASF44:
	.string	"l2_buf"
.LASF78:
	.string	"MEMP_TCP_PCB"
.LASF186:
	.string	"dns_pcbs"
.LASF193:
	.string	"ip_addr_any"
.LASF1:
	.string	"short unsigned int"
.LASF182:
	.string	"dns_getserver"
.LASF71:
	.string	"ip4_addr_t"
.LASF89:
	.string	"MEMP_ND6_QUEUE"
.LASF202:
	.string	"pbuf_take_at"
.LASF204:
	.string	"pbuf_free"
.LASF152:
	.string	"port"
.LASF209:
	.string	"lwip_ntohl"
.LASF144:
	.string	"copy_len"
.LASF29:
	.string	"PBUF_TRANSPORT"
.LASF111:
	.string	"recv_arg"
.LASF122:
	.string	"dns_answer"
.LASF51:
	.string	"ipv6_addr_cb"
.LASF109:
	.string	"mcast_ttl"
.LASF116:
	.string	"flags2"
.LASF199:
	.string	"lwip_htons"
.LASF117:
	.string	"numquestions"
.LASF141:
	.string	"dns_create_txid"
.LASF176:
	.string	"ip6addr"
.LASF197:
	.string	"strlen"
.LASF94:
	.string	"MEMP_MAX"
.LASF158:
	.string	"lseqi"
.LASF127:
	.string	"retries"
.LASF143:
	.string	"query_idx"
.LASF24:
	.string	"s8_t"
.LASF28:
	.string	"err_t"
.LASF14:
	.string	"sizetype"
.LASF98:
	.string	"netif_linkoutput_fn"
.LASF211:
	.string	"ipaddr_aton"
.LASF46:
	.string	"netif"
.LASF196:
	.string	"udp_remove"
.LASF91:
	.string	"MEMP_MLD6_GROUP"
.LASF66:
	.string	"igmp_mac_filter"
.LASF39:
	.string	"payload"
.LASF149:
	.string	"dns_check_entry"
.LASF133:
	.string	"dns_table_idx"
.LASF166:
	.string	"entry_idx"
.LASF47:
	.string	"ip_addr"
.LASF35:
	.string	"PBUF_ROM"
.LASF206:
	.string	"udp_new_ip_type"
.LASF155:
	.string	"hostnamelen"
.LASF129:
	.string	"pcb_idx"
.LASF170:
	.string	"again"
.LASF120:
	.string	"numextrarr"
.LASF203:
	.string	"udp_sendto"
.LASF168:
	.string	"nquestions"
.LASF207:
	.string	"udp_recv"
.LASF150:
	.string	"dns_check_entries"
.LASF95:
	.string	"netif_input_fn"
.LASF31:
	.string	"PBUF_LINK"
.LASF59:
	.string	"dhcp_event"
.LASF131:
	.string	"dns_req_entry"
.LASF172:
	.string	"responseerr"
.LASF183:
	.string	"dns_gethostbyname_addrtype"
.LASF43:
	.string	"l2_owner"
.LASF108:
	.string	"multicast_ip"
.LASF22:
	.string	"_Bool"
.LASF195:
	.string	"__assert_func"
.LASF6:
	.string	"unsigned char"
.LASF103:
	.string	"local_ip"
.LASF212:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF189:
	.string	"dns_table"
.LASF8:
	.string	"short int"
.LASF96:
	.string	"netif_output_fn"
.LASF140:
	.string	"dns_addrtype"
.LASF123:
	.string	"dns_table_entry"
.LASF113:
	.string	"dns_found_callback"
.LASF27:
	.string	"u32_t"
.LASF145:
	.string	"__func__"
.LASF208:
	.string	"pbuf_get_at"
.LASF26:
	.string	"s16_t"
.LASF52:
	.string	"input"
.LASF34:
	.string	"PBUF_RAM"
.LASF100:
	.string	"netif_mld_mac_filter_fn"
.LASF173:
	.string	"flushentry"
.LASF33:
	.string	"PBUF_RAW"
.LASF32:
	.string	"PBUF_RAW_TX"
.LASF164:
	.string	"dns_parse_name"
.LASF21:
	.string	"uint32_t"
.LASF107:
	.string	"remote_port"
.LASF114:
	.string	"dns_hdr"
.LASF49:
	.string	"ip6_addr"
.LASF83:
	.string	"MEMP_TCPIP_MSG_API"
.LASF16:
	.string	"char"
.LASF201:
	.string	"pbuf_put_at"
.LASF119:
	.string	"numauthrr"
.LASF81:
	.string	"MEMP_NETBUF"
.LASF9:
	.string	"__uint16_t"
.LASF79:
	.string	"MEMP_TCP_PCB_LISTEN"
.LASF82:
	.string	"MEMP_NETCONN"
.LASF93:
	.string	"MEMP_PBUF_POOL"
.LASF75:
	.string	"ip_addr_t"
.LASF159:
	.string	"namelen"
.LASF184:
	.string	"fallback"
.LASF215:
	.string	"memcpy"
.LASF74:
	.string	"u_addr"
.LASF128:
	.string	"seqno"
.LASF105:
	.string	"so_options"
.LASF191:
	.string	"dns_servers"
.LASF17:
	.string	"int8_t"
.LASF130:
	.string	"reqaddrtype"
.LASF25:
	.string	"u16_t"
.LASF132:
	.string	"found"
.LASF121:
	.string	"dns_query"
.LASF72:
	.string	"ip6_addr_t"
.LASF192:
	.string	"ip_addr_any_type"
.LASF161:
	.string	"query"
.LASF174:
	.string	"dns_err"
.LASF181:
	.string	"dns_tmr"
.LASF125:
	.string	"txid"
.LASF124:
	.string	"ipaddr"
.LASF185:
	.string	"dns_gethostbyname"
.LASF18:
	.string	"uint8_t"
.LASF213:
	.string	"C:/esp/esp-idf/components/lwip/core/dns.c"
.LASF57:
	.string	"dhcp"
.LASF42:
	.string	"flags"
.LASF146:
	.string	"hostname_part"
.LASF102:
	.string	"udp_pcb"
.LASF68:
	.string	"l2_buffer_free_notify"
.LASF165:
	.string	"dns_recv"
.LASF60:
	.string	"ip6_autoconfig_enabled"
.LASF54:
	.string	"linkoutput"
.LASF104:
	.string	"remote_ip"
.LASF198:
	.string	"pbuf_alloc"
.LASF136:
	.string	"c1_upc"
.LASF23:
	.string	"u8_t"
.LASF139:
	.string	"dns_lookup"
.LASF84:
	.string	"MEMP_TCPIP_MSG_INPKT"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-73-ge28a011) 5.2.0"
