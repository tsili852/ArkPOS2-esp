	.file	"tcpip_adapter_lwip.c"
	.text
.Ltext0:
	.section	.text.tcpip_adapter_reset_ip_info,"ax",@progbits
	.literal_position
	.literal .LC0, esp_ip
	.align	4
	.type	tcpip_adapter_reset_ip_info, @function
tcpip_adapter_reset_ip_info:
.LFB58:
	.file 1 "C:/esp/esp-idf/components/tcpip_adapter/tcpip_adapter_lwip.c"
	.loc 1 1043 0
.LVL0:
	entry	sp, 32
.LCFI0:
	mov.n	a8, a2
	.loc 1 1044 0
	l32r	a10, .LC0
	slli	a11, a2, 1
	add.n	a2, a11, a2
.LVL1:
	slli	a9, a2, 2
	add.n	a9, a10, a9
	movi.n	a2, 0
	s32i.n	a2, a9, 0
	.loc 1 1045 0
	s32i.n	a2, a9, 8
	.loc 1 1046 0
	add.n	a8, a11, a8
.LVL2:
	slli	a9, a8, 2
	add.n	a9, a10, a9
	s32i.n	a2, a9, 4
	.loc 1 1048 0
	retw.n
.LFE58:
	.size	tcpip_adapter_reset_ip_info, .-tcpip_adapter_reset_ip_info
	.section	.text.tcpip_adapter_set_old_ip_info_api,"ax",@progbits
	.literal_position
	.literal .LC1, esp_ip_old
	.align	4
	.global	tcpip_adapter_set_old_ip_info_api
	.type	tcpip_adapter_set_old_ip_info_api, @function
tcpip_adapter_set_old_ip_info_api:
.LFB25:
	.loc 1 321 0
.LVL3:
	entry	sp, 32
.LCFI1:
	.loc 1 322 0
	l32i.n	a8, a2, 12
	addx2	a8, a8, a8
	slli	a9, a8, 2
	movi.n	a12, 0xc
	l32i.n	a11, a2, 16
	l32r	a10, .LC1
	add.n	a10, a10, a9
	call8	memcpy
.LVL4:
	.loc 1 324 0
	movi.n	a2, 0
.LVL5:
	retw.n
.LFE25:
	.size	tcpip_adapter_set_old_ip_info_api, .-tcpip_adapter_set_old_ip_info_api
	.section	.text.tcpip_adapter_ipc_check,"ax",@progbits
	.literal_position
	.literal .LC2, g_lwip_task
	.literal .LC3, api_lock_sem
	.literal .LC4, api_sync_sem
	.literal .LC5, tcpip_adapter_api_cb
	.align	4
	.type	tcpip_adapter_ipc_check, @function
tcpip_adapter_ipc_check:
.LFB12:
	.loc 1 123 0
.LVL6:
	entry	sp, 32
.LCFI2:
	.loc 1 125 0
	call8	xTaskGetCurrentTaskHandle
.LVL7:
	.loc 1 127 0
	l32r	a3, .LC2
	l32i.n	a3, a3, 0
	beq	a3, a10, .L5
	.loc 1 131 0
	l32r	a3, .LC3
	movi.n	a11, 0
	mov.n	a10, a3
.LVL8:
	call8	sys_arch_sem_wait
.LVL9:
	.loc 1 132 0
	l32r	a12, .LC4
	mov.n	a11, a2
	l32r	a10, .LC5
	call8	tcpip_send_api_msg
.LVL10:
	.loc 1 133 0
	mov.n	a10, a3
	call8	sys_sem_signal
.LVL11:
	.loc 1 135 0
	movi.n	a2, 1
.LVL12:
	retw.n
.LVL13:
.L5:
	.loc 1 128 0
	movi.n	a2, 0
.LVL14:
	.loc 1 139 0
	retw.n
.LFE12:
	.size	tcpip_adapter_ipc_check, .-tcpip_adapter_ipc_check
	.section	.text.tcpip_adapter_api_cb,"ax",@progbits
	.literal_position
	.literal .LC6, api_sync_sem
	.align	4
	.type	tcpip_adapter_api_cb, @function
tcpip_adapter_api_cb:
.LFB9:
	.loc 1 72 0
.LVL15:
	entry	sp, 32
.LCFI3:
.LVL16:
	.loc 1 75 0
	beqz.n	a2, .L6
	.loc 1 75 0 is_stmt 0 discriminator 1
	l32i.n	a8, a2, 8
	beqz.n	a8, .L6
	.loc 1 80 0 is_stmt 1
	mov.n	a10, a2
	callx8	a8
.LVL17:
	s32i.n	a10, a2, 4
	.loc 1 82 0
	l32r	a10, .LC6
	call8	sys_sem_signal
.LVL18:
.L6:
	retw.n
.LFE9:
	.size	tcpip_adapter_api_cb, .-tcpip_adapter_api_cb
	.section	.text.tcpip_adapter_update_default_netif,"ax",@progbits
	.literal_position
	.literal .LC7, esp_netif
	.align	4
	.type	tcpip_adapter_update_default_netif, @function
tcpip_adapter_update_default_netif:
.LFB13:
	.loc 1 142 0
	entry	sp, 32
.LCFI4:
	.loc 1 143 0
	l32r	a8, .LC7
	l32i.n	a10, a8, 0
	beqz.n	a10, .L9
	.loc 1 143 0 is_stmt 0 discriminator 1
	l8ui	a8, a10, 181
	bbci	a8, 0, .L9
	.loc 1 144 0 is_stmt 1
	call8	netif_set_default
.LVL19:
	j	.L10
.L9:
	.loc 1 145 0
	l32r	a8, .LC7
	l32i.n	a10, a8, 8
	beqz.n	a10, .L11
	.loc 1 145 0 is_stmt 0 discriminator 1
	l8ui	a8, a10, 181
	bbci	a8, 0, .L11
	.loc 1 146 0 is_stmt 1
	call8	netif_set_default
.LVL20:
	j	.L10
.L11:
	.loc 1 147 0
	l32r	a8, .LC7
	l32i.n	a10, a8, 4
	beqz.n	a10, .L10
	.loc 1 147 0 is_stmt 0 discriminator 1
	l8ui	a8, a10, 181
	bbci	a8, 0, .L10
	.loc 1 148 0 is_stmt 1
	call8	netif_set_default
.LVL21:
.L10:
	.loc 1 152 0
	movi.n	a2, 0
	retw.n
.LFE13:
	.size	tcpip_adapter_update_default_netif, .-tcpip_adapter_update_default_netif
	.section	.text.tcpip_adapter_start_ip_lost_timer,"ax",@progbits
	.literal_position
	.literal .LC8, esp_netif
	.literal .LC9, esp_ip_lost_timer
	.literal .LC10, esp_ip_old
	.literal .LC11, tcpip_adapter_ip_lost_timer
	.literal .LC12, 120000
	.align	4
	.type	tcpip_adapter_start_ip_lost_timer, @function
tcpip_adapter_start_ip_lost_timer:
.LFB43:
	.loc 1 781 0
.LVL22:
	entry	sp, 32
.LCFI5:
.LVL23:
	.loc 1 783 0
	l32r	a8, .LC8
	addx4	a8, a2, a8
	l32i.n	a9, a8, 0
.LVL24:
	.loc 1 786 0
	bnez.n	a2, .L13
	.loc 1 791 0
	l32r	a8, .LC9
	add.n	a8, a8, a2
	l8ui	a8, a8, 0
	bnez.n	a8, .L13
	.loc 1 796 0
	beqz.n	a9, .L13
	.loc 1 796 0 is_stmt 0 discriminator 1
	addx2	a9, a2, a2
.LVL25:
	slli	a8, a9, 2
	l32r	a9, .LC10
	add.n	a8, a9, a8
	l32i.n	a8, a8, 0
	beqz.n	a8, .L13
	.loc 1 797 0 is_stmt 1
	l32r	a8, .LC9
	add.n	a8, a8, a2
	movi.n	a9, 1
	s8i	a9, a8, 0
	.loc 1 798 0
	mov.n	a12, a2
	l32r	a11, .LC11
	l32r	a10, .LC12
	call8	sys_timeout
.LVL26:
.L13:
	.loc 1 807 0
	movi.n	a2, 0
.LVL27:
	retw.n
.LFE43:
	.size	tcpip_adapter_start_ip_lost_timer, .-tcpip_adapter_start_ip_lost_timer
	.section	.text.tcpip_adapter_ip_lost_timer,"ax",@progbits
	.literal_position
	.literal .LC13, esp_ip_lost_timer
	.literal .LC14, esp_netif
	.literal .LC15, ip_addr_any
	.literal .LC16, esp_ip_old
	.align	4
	.type	tcpip_adapter_ip_lost_timer, @function
tcpip_adapter_ip_lost_timer:
.LFB44:
	.loc 1 810 0
.LVL28:
	entry	sp, 80
.LCFI6:
.LVL29:
	.loc 1 814 0
	l32r	a8, .LC13
	add.n	a8, a8, a2
	movi.n	a9, 0
	s8i	a9, a8, 0
	.loc 1 816 0
	bnez.n	a2, .L14
.LBB5:
	.loc 1 817 0
	l32r	a8, .LC14
	addx4	a8, a2, a8
	l32i.n	a8, a8, 0
.LVL30:
	.loc 1 819 0
	beqz.n	a8, .L16
	.loc 1 819 0 is_stmt 0 discriminator 1
	l32i.n	a9, a8, 4
	l32r	a8, .LC15
.LVL31:
	l32i.n	a8, a8, 0
	bne	a9, a8, .L14
.L16:
.LBB6:
	.loc 1 823 0 is_stmt 1
	addx2	a2, a2, a2
.LVL32:
	slli	a8, a2, 2
	l32r	a2, .LC16
	add.n	a2, a8, a2
	movi.n	a8, 0
	s8i	a8, a2, 0
	s8i	a8, a2, 1
	s8i	a8, a2, 2
	s8i	a8, a2, 3
	s8i	a8, a2, 4
	s8i	a8, a2, 5
	s8i	a8, a2, 6
	s8i	a8, a2, 7
	s8i	a8, a2, 8
	s8i	a8, a2, 9
	s8i	a8, a2, 10
	s8i	a8, a2, 11
	.loc 1 824 0
	movi.n	a2, 8
	s32i.n	a2, sp, 0
	.loc 1 825 0
	mov.n	a10, sp
	call8	esp_event_send
.LVL33:
.L14:
	retw.n
.LBE6:
.LBE5:
.LFE44:
	.size	tcpip_adapter_ip_lost_timer, .-tcpip_adapter_ip_lost_timer
	.section	.text.tcpip_adapter_nd6_cb,"ax",@progbits
	.literal_position
	.literal .LC17, esp_ip6
	.literal .LC18, esp_ip6+16
	.literal .LC19, esp_netif
	.align	4
	.type	tcpip_adapter_nd6_cb, @function
tcpip_adapter_nd6_cb:
.LFB31:
	.loc 1 436 0
.LVL34:
	entry	sp, 80
.LCFI7:
	extui	a3, a3, 0, 8
	.loc 1 439 0
	beqz.n	a2, .L17
	.loc 1 444 0
	l32r	a8, .LC19
	l32i.n	a8, a8, 0
	beq	a2, a8, .L25
	.loc 1 446 0
	l32r	a8, .LC19
	l32i.n	a8, a8, 4
	bne	a2, a8, .L17
	.loc 1 447 0
	l32r	a9, .LC18
	j	.L19
.L25:
	.loc 1 445 0
	l32r	a9, .LC17
.L19:
.LVL35:
	.loc 1 454 0
	addx4	a10, a3, a3
	slli	a8, a10, 2
	mov.n	a10, a8
	addi	a8, a8, 64
	add.n	a8, a2, a8
	.loc 1 454 0
	beqz.n	a8, .L26
	.loc 1 454 0 is_stmt 0 discriminator 1
	add.n	a10, a2, a10
	l32i	a10, a10, 64
	j	.L20
.L26:
	.loc 1 454 0
	movi.n	a10, 0
.L20:
	.loc 1 454 0 is_stmt 1 discriminator 4
	s32i.n	a10, a9, 0
	.loc 1 454 0 discriminator 4
	beqz.n	a8, .L27
	.loc 1 454 0 is_stmt 0 discriminator 5
	addx4	a11, a3, a3
	slli	a10, a11, 2
	add.n	a10, a2, a10
	l32i	a10, a10, 68
	j	.L21
.L27:
	.loc 1 454 0
	movi.n	a10, 0
.L21:
	.loc 1 454 0 is_stmt 1 discriminator 8
	s32i.n	a10, a9, 4
	.loc 1 454 0 discriminator 8
	beqz.n	a8, .L28
	.loc 1 454 0 is_stmt 0 discriminator 9
	addx4	a11, a3, a3
	slli	a10, a11, 2
	add.n	a10, a2, a10
	l32i	a10, a10, 72
	j	.L22
.L28:
	.loc 1 454 0
	movi.n	a10, 0
.L22:
	.loc 1 454 0 is_stmt 1 discriminator 12
	s32i.n	a10, a9, 8
	.loc 1 454 0 discriminator 12
	beqz.n	a8, .L29
	.loc 1 454 0 is_stmt 0 discriminator 13
	addx4	a3, a3, a3
.LVL36:
	slli	a8, a3, 2
	add.n	a2, a2, a8
.LVL37:
	l32i	a2, a2, 76
	j	.L23
.LVL38:
.L29:
	.loc 1 454 0
	movi.n	a2, 0
.LVL39:
.L23:
	.loc 1 454 0 is_stmt 1 discriminator 16
	s32i.n	a2, a9, 12
	.loc 1 457 0 discriminator 16
	movi.n	a2, 0x12
	s32i.n	a2, sp, 0
	.loc 1 458 0 discriminator 16
	l32i.n	a3, a9, 0
	l32i.n	a2, a9, 4
	s32i.n	a3, sp, 4
	l32i.n	a3, a9, 8
	s32i.n	a2, sp, 8
	l32i.n	a2, a9, 12
	s32i.n	a3, sp, 12
	s32i.n	a2, sp, 16
	.loc 1 459 0 discriminator 16
	mov.n	a10, sp
	call8	esp_event_send
.LVL40:
.L17:
	retw.n
.LFE31:
	.size	tcpip_adapter_nd6_cb, .-tcpip_adapter_nd6_cb
	.section	.text.tcpip_adapter_dhcpc_cb,"ax",@progbits
	.literal_position
	.literal .LC20, esp_netif
	.literal .LC21, esp_ip
	.literal .LC22, esp_ip_old
	.literal .LC23, ip_addr_any
	.align	4
	.type	tcpip_adapter_dhcpc_cb, @function
tcpip_adapter_dhcpc_cb:
.LFB42:
	.loc 1 721 0
.LVL41:
	entry	sp, 80
.LCFI8:
.LVL42:
	.loc 1 726 0
	beqz.n	a2, .L30
	.loc 1 731 0
	l32r	a8, .LC20
	l32i.n	a8, a8, 0
	beq	a2, a8, .L39
	.loc 1 733 0
	l32r	a3, .LC20
	l32i.n	a3, a3, 8
	bne	a2, a3, .L30
	.loc 1 734 0
	movi.n	a10, 2
	j	.L32
.L39:
	.loc 1 732 0
	movi.n	a10, 0
.L32:
.LVL43:
	.loc 1 741 0
	slli	a8, a10, 1
	add.n	a4, a8, a10
	slli	a3, a4, 2
	l32r	a4, .LC21
	add.n	a3, a3, a4
.LVL44:
	.loc 1 742 0
	add.n	a8, a8, a10
	slli	a4, a8, 2
	l32r	a8, .LC22
	add.n	a4, a4, a8
.LVL45:
	.loc 1 744 0
	l32i.n	a11, a2, 4
	l32r	a8, .LC23
	l32i.n	a8, a8, 0
	beq	a11, a8, .L33
	.loc 1 747 0
	l32i.n	a8, a3, 0
	bne	a11, a8, .L34
	.loc 1 748 0 discriminator 1
	l32i.n	a12, a2, 24
	l32i.n	a8, a3, 4
	.loc 1 747 0 discriminator 1
	bne	a12, a8, .L34
	.loc 1 749 0
	l32i.n	a12, a2, 44
	l32i.n	a8, a3, 8
	.loc 1 748 0
	beq	a12, a8, .L30
.L34:
.LBB7:
	.loc 1 752 0
	addi.n	a8, a2, 4
	.loc 1 752 0
	bnez.n	a8, .L35
	movi.n	a11, 0
.L35:
	.loc 1 752 0 discriminator 4
	slli	a9, a10, 1
	add.n	a9, a9, a10
	slli	a8, a9, 2
	l32r	a9, .LC21
	add.n	a8, a9, a8
	s32i.n	a11, a8, 0
	.loc 1 753 0 discriminator 4
	addi	a8, a2, 24
	.loc 1 753 0 discriminator 4
	beqz.n	a8, .L40
	.loc 1 753 0 is_stmt 0 discriminator 1
	l32i.n	a11, a2, 24
	j	.L36
.L40:
	.loc 1 753 0
	movi.n	a11, 0
.L36:
	.loc 1 753 0 is_stmt 1 discriminator 4
	slli	a9, a10, 1
	add.n	a9, a9, a10
	slli	a8, a9, 2
	l32r	a9, .LC21
	add.n	a8, a9, a8
	s32i.n	a11, a8, 4
	.loc 1 754 0 discriminator 4
	addi	a8, a2, 44
	.loc 1 754 0 discriminator 4
	beqz.n	a8, .L41
	.loc 1 754 0 is_stmt 0 discriminator 1
	l32i.n	a9, a2, 44
	j	.L37
.L41:
	.loc 1 754 0
	movi.n	a9, 0
.L37:
	.loc 1 754 0 is_stmt 1 discriminator 4
	slli	a2, a10, 1
.LVL46:
	add.n	a10, a2, a10
.LVL47:
	slli	a2, a10, 2
	l32r	a8, .LC21
.LVL48:
	add.n	a2, a8, a2
	s32i.n	a9, a2, 8
	.loc 1 757 0 discriminator 4
	movi.n	a2, 7
	s32i.n	a2, sp, 0
	.loc 1 758 0 discriminator 4
	movi.n	a2, 0
	s8i	a2, sp, 16
	.loc 1 760 0 discriminator 4
	movi.n	a12, 0xc
	mov.n	a11, a4
	mov.n	a10, a3
	call8	memcmp
.LVL49:
	beqz.n	a10, .L38
	.loc 1 761 0
	movi.n	a2, 1
	s8i	a2, sp, 16
.L38:
	.loc 1 764 0
	movi.n	a2, 0xc
	mov.n	a12, a2
	mov.n	a11, a3
	addi.n	a10, sp, 4
	call8	memcpy
.LVL50:
	.loc 1 765 0
	mov.n	a12, a2
	mov.n	a11, a3
	mov.n	a10, a4
	call8	memcpy
.LVL51:
	.loc 1 767 0
	mov.n	a10, sp
	call8	esp_event_send
.LVL52:
.LBE7:
	.loc 1 749 0
	retw.n
.LVL53:
.L33:
	.loc 1 772 0
	slli	a3, a10, 1
.LVL54:
	add.n	a3, a3, a10
	slli	a2, a3, 2
.LVL55:
	l32r	a3, .LC21
.LVL56:
	add.n	a2, a3, a2
	l32i.n	a2, a2, 0
	beq	a8, a2, .L30
	.loc 1 773 0
	call8	tcpip_adapter_start_ip_lost_timer
.LVL57:
.L30:
	retw.n
.LFE42:
	.size	tcpip_adapter_dhcpc_cb, .-tcpip_adapter_dhcpc_cb
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC30:
	.string	"tcpip_adapter"
	.align	4
.LC32:
	.string	"\033[0;31mE (%d) %s: tcpip adatper api sync sem init fail\033[0m\n"
	.align	4
.LC35:
	.string	"\033[0;31mE (%d) %s: tcpip adatper api lock sem init fail\033[0m\n"
	.section	.text.tcpip_adapter_init,"ax",@progbits
	.literal_position
	.literal .LC24, tcpip_inited
	.literal .LC25, esp_ip
	.literal .LC26, esp_ip_old
	.literal .LC27, 17082560
	.literal .LC28, 16777215
	.literal .LC29, api_sync_sem
	.literal .LC31, .LC30
	.literal .LC33, .LC32
	.literal .LC34, api_lock_sem
	.literal .LC36, .LC35
	.align	4
	.global	tcpip_adapter_init
	.type	tcpip_adapter_init, @function
tcpip_adapter_init:
.LFB10:
	.loc 1 88 0
	entry	sp, 32
.LCFI9:
	.loc 1 91 0
	l32r	a8, .LC24
	l8ui	a8, a8, 0
	bnez.n	a8, .L42
	.loc 1 92 0
	movi.n	a9, 1
	l32r	a8, .LC24
	s8i	a9, a8, 0
	.loc 1 94 0
	movi.n	a11, 0
	mov.n	a10, a11
	call8	tcpip_init
.LVL58:
	.loc 1 96 0
	l32r	a8, .LC25
	movi.n	a11, 0
	s32i.n	a11, a8, 0
	s32i.n	a11, a8, 4
	s32i.n	a11, a8, 8
	s32i.n	a11, a8, 24
	s32i.n	a11, a8, 28
	s32i.n	a11, a8, 32
	.loc 1 97 0
	l32r	a9, .LC26
	s32i.n	a11, a9, 0
	s32i.n	a11, a9, 4
	s32i.n	a11, a9, 8
	s32i.n	a11, a9, 12
	s32i.n	a11, a9, 16
	s32i.n	a11, a9, 20
	s32i.n	a11, a9, 24
	s32i.n	a11, a9, 28
	s32i.n	a11, a9, 32
	.loc 1 99 0
	l32r	a9, .LC27
	s32i.n	a9, a8, 12
	.loc 1 100 0
	s32i.n	a9, a8, 20
	.loc 1 101 0
	l32r	a9, .LC28
	s32i.n	a9, a8, 16
	.loc 1 102 0
	l32r	a10, .LC29
	call8	sys_sem_new
.LVL59:
	extui	a10, a10, 0, 8
.LVL60:
	.loc 1 103 0
	beqz.n	a10, .L44
	.loc 1 104 0 discriminator 1
	call8	esp_log_timestamp
.LVL61:
	l32r	a11, .LC31
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC33
	movi.n	a10, 1
	call8	esp_log_write
.LVL62:
.L44:
	.loc 1 107 0
	movi.n	a11, 1
	l32r	a10, .LC34
	call8	sys_sem_new
.LVL63:
	extui	a10, a10, 0, 8
.LVL64:
	.loc 1 108 0
	beqz.n	a10, .L42
	.loc 1 109 0 discriminator 1
	call8	esp_log_timestamp
.LVL65:
	l32r	a11, .LC31
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC36
	movi.n	a10, 1
	call8	esp_log_write
.LVL66:
.L42:
	retw.n
.LFE10:
	.size	tcpip_adapter_init, .-tcpip_adapter_init
	.section	.rodata.str1.4
	.align	4
.LC40:
	.string	"\033[0;31mE (%d) %s: tcpip_adapter is not initialized!\033[0m\n"
	.align	4
.LC45:
	.string	"netif_init != NULL"
	.align	4
.LC48:
	.string	"C:/esp/esp-idf/components/tcpip_adapter/tcpip_adapter_lwip.c"
	.section	.text.tcpip_adapter_start,"ax",@progbits
	.literal_position
	.literal .LC37, 20480
	.literal .LC38, tcpip_inited
	.literal .LC39, .LC30
	.literal .LC41, .LC40
	.literal .LC42, tcpip_adapter_start_api
	.literal .LC43, esp_netif
	.literal .LC44, esp_netif_init_fn
	.literal .LC46, .LC45
	.literal .LC47, __func__$7151
	.literal .LC49, .LC48
	.literal .LC50, tcpip_input
	.literal .LC51, dhcps_status
	.align	4
	.global	tcpip_adapter_start
	.type	tcpip_adapter_start, @function
tcpip_adapter_start:
.LFB14:
	.loc 1 155 0
.LVL67:
	entry	sp, 80
.LCFI10:
.LBB8:
	.loc 1 158 0
	l32r	a8, .LC38
	l8ui	a8, a8, 0
	bnez.n	a8, .L46
	.loc 1 158 0 discriminator 3
	call8	esp_log_timestamp
.LVL68:
	l32r	a11, .LC39
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC41
	movi.n	a10, 1
	call8	esp_log_write
.LVL69:
	call8	abort
.LVL70:
.L46:
	.loc 1 158 0 is_stmt 0 discriminator 2
	movi.n	a8, 0
	s32i.n	a8, sp, 16
	s32i.n	a8, sp, 20
	s32i.n	a8, sp, 40
	s32i.n	a2, sp, 28
	s32i.n	a3, sp, 36
	s32i.n	a4, sp, 32
	l32r	a8, .LC42
	s32i.n	a8, sp, 24
	addi	a10, sp, 16
	call8	tcpip_adapter_ipc_check
.LVL71:
	bnei	a10, 1, .L47
	.loc 1 158 0 discriminator 10
	l32i.n	a2, sp, 20
.LVL72:
	retw.n
.LVL73:
.L47:
.LBE8:
	.loc 1 160 0 is_stmt 1
	movi.n	a8, 1
	bgeui	a2, 3, .L49
	movi.n	a8, 0
.L49:
	extui	a8, a8, 0, 8
	movi.n	a10, 0
	movi.n	a9, 1
	movnez	a9, a10, a3
	or	a8, a9, a8
	bne	a8, a10, .L56
	.loc 1 160 0 discriminator 1
	beq	a4, a10, .L57
	.loc 1 164 0
	l32r	a8, .LC43
	addx4	a8, a2, a8
	l32i.n	a8, a8, 0
	beq	a8, a10, .L50
	.loc 1 164 0 discriminator 1
	beq	a8, a10, .L50
	.loc 1 164 0 is_stmt 0 discriminator 2
	l8ui	a5, a8, 181
	bbs	a5, a10, .L51
.L50:
	.loc 1 165 0 is_stmt 1
	bnez.n	a8, .L52
	.loc 1 166 0
	movi	a11, 0xc8
	movi.n	a10, 1
	call8	calloc
.LVL74:
	l32r	a5, .LC43
	addx4	a5, a2, a5
	s32i.n	a10, a5, 0
.L52:
	.loc 1 169 0
	l32r	a8, .LC43
	addx4	a8, a2, a8
	l32i.n	a5, a8, 0
	beqz.n	a5, .L58
	.loc 1 172 0
	movi.n	a12, 6
	mov.n	a11, a3
	movi	a10, 0xaf
	add.n	a10, a5, a10
	call8	memcpy
.LVL75:
.LBB9:
.LBB10:
	.loc 1 116 0
	bgeui	a2, 3, .L59
	.loc 1 117 0
	l32r	a3, .LC44
.LVL76:
	addx4	a3, a2, a3
	l32i.n	a15, a3, 0
	j	.L53
.LVL77:
.L59:
	.loc 1 119 0
	movi.n	a15, 0
.LVL78:
.L53:
.LBE10:
.LBE9:
	.loc 1 175 0
	bnez.n	a15, .L54
	.loc 1 175 0 is_stmt 0 discriminator 1
	l32r	a13, .LC46
	l32r	a12, .LC47
	movi	a11, 0xaf
	l32r	a10, .LC49
	call8	__assert_func
.LVL79:
.L54:
	.loc 1 176 0 is_stmt 1
	l32r	a3, .LC50
	s32i.n	a3, sp, 0
	movi.n	a14, 0
	addi.n	a13, a4, 8
	addi.n	a12, a4, 4
	mov.n	a11, a4
	mov.n	a10, a5
	call8	netif_add
.LVL80:
.L51:
	.loc 1 179 0
	bnei	a2, 1, .L55
	.loc 1 180 0
	l32r	a3, .LC43
	addx4	a3, a2, a3
	l32i.n	a10, a3, 0
	call8	netif_set_up
.LVL81:
	.loc 1 182 0
	l32r	a3, .LC51
	l32i.n	a3, a3, 0
	bnez.n	a3, .L55
	.loc 1 183 0
	l32r	a3, .LC43
	addx4	a2, a2, a3
.LVL82:
	l32i.n	a11, a4, 0
	l32i.n	a10, a2, 0
	call8	dhcps_start
.LVL83:
	.loc 1 188 0
	movi.n	a3, 1
	l32r	a2, .LC51
	s32i.n	a3, a2, 0
.L55:
	.loc 1 192 0
	call8	tcpip_adapter_update_default_netif
.LVL84:
	.loc 1 194 0
	movi.n	a2, 0
	retw.n
.LVL85:
.L56:
	.loc 1 161 0
	l32r	a2, .LC37
.LVL86:
	retw.n
.LVL87:
.L57:
	l32r	a2, .LC37
.LVL88:
	retw.n
.LVL89:
.L58:
	.loc 1 170 0
	movi	a2, 0x101
.LVL90:
	.loc 1 195 0
	retw.n
.LFE14:
	.size	tcpip_adapter_start, .-tcpip_adapter_start
	.section	.text.tcpip_adapter_start_api,"ax",@progbits
	.align	4
	.type	tcpip_adapter_start_api, @function
tcpip_adapter_start_api:
.LFB18:
	.loc 1 216 0
.LVL91:
	entry	sp, 32
.LCFI11:
	.loc 1 217 0
	l32i.n	a12, a2, 16
	l32i.n	a11, a2, 20
	l32i.n	a10, a2, 12
	call8	tcpip_adapter_start
.LVL92:
	.loc 1 218 0
	mov.n	a2, a10
.LVL93:
	retw.n
.LFE18:
	.size	tcpip_adapter_start_api, .-tcpip_adapter_start_api
	.section	.text.tcpip_adapter_eth_start,"ax",@progbits
	.literal_position
	.literal .LC52, esp_netif_init_fn
	.literal .LC53, ethernetif_init
	.align	4
	.global	tcpip_adapter_eth_start
	.type	tcpip_adapter_eth_start, @function
tcpip_adapter_eth_start:
.LFB15:
	.loc 1 198 0
.LVL94:
	entry	sp, 32
.LCFI12:
	.loc 1 199 0
	l32r	a9, .LC53
	l32r	a8, .LC52
	s32i.n	a9, a8, 8
	.loc 1 200 0
	mov.n	a12, a3
	mov.n	a11, a2
	movi.n	a10, 2
	call8	tcpip_adapter_start
.LVL95:
	.loc 1 201 0
	mov.n	a2, a10
.LVL96:
	retw.n
.LFE15:
	.size	tcpip_adapter_eth_start, .-tcpip_adapter_eth_start
	.section	.text.tcpip_adapter_sta_start,"ax",@progbits
	.literal_position
	.literal .LC54, esp_netif_init_fn
	.literal .LC55, wlanif_init_sta
	.align	4
	.global	tcpip_adapter_sta_start
	.type	tcpip_adapter_sta_start, @function
tcpip_adapter_sta_start:
.LFB16:
	.loc 1 204 0
.LVL97:
	entry	sp, 32
.LCFI13:
	.loc 1 205 0
	l32r	a9, .LC55
	l32r	a8, .LC54
	s32i.n	a9, a8, 0
	.loc 1 206 0
	mov.n	a12, a3
	mov.n	a11, a2
	movi.n	a10, 0
	call8	tcpip_adapter_start
.LVL98:
	.loc 1 207 0
	mov.n	a2, a10
.LVL99:
	retw.n
.LFE16:
	.size	tcpip_adapter_sta_start, .-tcpip_adapter_sta_start
	.section	.text.tcpip_adapter_ap_start,"ax",@progbits
	.literal_position
	.literal .LC56, esp_netif_init_fn
	.literal .LC57, wlanif_init_ap
	.align	4
	.global	tcpip_adapter_ap_start
	.type	tcpip_adapter_ap_start, @function
tcpip_adapter_ap_start:
.LFB17:
	.loc 1 210 0
.LVL100:
	entry	sp, 32
.LCFI14:
	.loc 1 211 0
	l32r	a9, .LC57
	l32r	a8, .LC56
	s32i.n	a9, a8, 4
	.loc 1 212 0
	mov.n	a12, a3
	mov.n	a11, a2
	movi.n	a10, 1
	call8	tcpip_adapter_start
.LVL101:
	.loc 1 213 0
	mov.n	a2, a10
.LVL102:
	retw.n
.LFE17:
	.size	tcpip_adapter_ap_start, .-tcpip_adapter_ap_start
	.section	.text.tcpip_adapter_stop,"ax",@progbits
	.literal_position
	.literal .LC58, 20480
	.literal .LC59, 20481
	.literal .LC60, tcpip_inited
	.literal .LC61, .LC30
	.literal .LC62, .LC40
	.literal .LC63, tcpip_adapter_stop_api
	.literal .LC64, esp_netif
	.literal .LC65, dhcps_status
	.literal .LC66, dhcpc_status
	.align	4
	.global	tcpip_adapter_stop
	.type	tcpip_adapter_stop, @function
tcpip_adapter_stop:
.LFB19:
	.loc 1 221 0
.LVL103:
	entry	sp, 64
.LCFI15:
.LBB11:
	.loc 1 222 0
	l32r	a8, .LC60
	l8ui	a8, a8, 0
	bnez.n	a8, .L65
	.loc 1 222 0 discriminator 3
	call8	esp_log_timestamp
.LVL104:
	l32r	a11, .LC61
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC62
	movi.n	a10, 1
	call8	esp_log_write
.LVL105:
	call8	abort
.LVL106:
.L65:
	.loc 1 222 0 is_stmt 0 discriminator 2
	movi.n	a8, 0
	s32i.n	a8, sp, 0
	s32i.n	a8, sp, 4
	s32i.n	a8, sp, 16
	s32i.n	a8, sp, 20
	s32i.n	a8, sp, 24
	s32i.n	a2, sp, 12
	l32r	a8, .LC63
	s32i.n	a8, sp, 8
	mov.n	a10, sp
	call8	tcpip_adapter_ipc_check
.LVL107:
	bnei	a10, 1, .L66
	.loc 1 222 0 discriminator 10
	l32i.n	a2, sp, 4
.LVL108:
	retw.n
.LVL109:
.L66:
.LBE11:
	.loc 1 224 0 is_stmt 1
	bgeui	a2, 3, .L72
	.loc 1 228 0
	l32r	a8, .LC64
	addx4	a8, a2, a8
	l32i.n	a10, a8, 0
	beqz.n	a10, .L73
	.loc 1 232 0
	beqz.n	a10, .L68
	.loc 1 232 0 is_stmt 0 discriminator 1
	l8ui	a8, a10, 181
	bbsi	a8, 0, .L69
.L68:
	.loc 1 233 0 is_stmt 1
	call8	netif_remove
.LVL110:
	.loc 1 234 0
	l32r	a2, .LC59
.LVL111:
	retw.n
.LVL112:
.L69:
	.loc 1 237 0
	bnei	a2, 1, .L70
	.loc 1 238 0
	call8	dhcps_stop
.LVL113:
	.loc 1 239 0
	l32r	a3, .LC65
	l32i.n	a3, a3, 0
	beqi	a3, 2, .L71
	.loc 1 240 0
	movi.n	a4, 0
	l32r	a3, .LC65
	s32i.n	a4, a3, 0
	j	.L71
.L70:
	.loc 1 242 0
	movi.n	a12, 1
	movi.n	a8, 0
	mov.n	a9, a8
	moveqz	a9, a12, a2
	addi	a11, a2, -2
	moveqz	a8, a12, a11
	or	a8, a8, a9
	beqz.n	a8, .L71
	.loc 1 243 0
	call8	dhcp_release
.LVL114:
	.loc 1 244 0
	slli	a3, a2, 2
	l32r	a4, .LC64
	add.n	a4, a4, a3
	l32i.n	a10, a4, 0
	call8	dhcp_stop
.LVL115:
	.loc 1 245 0
	l32i.n	a10, a4, 0
	call8	dhcp_cleanup
.LVL116:
	.loc 1 247 0
	l32r	a4, .LC66
	add.n	a3, a4, a3
	movi.n	a4, 0
	s32i.n	a4, a3, 0
	.loc 1 249 0
	mov.n	a10, a2
	call8	tcpip_adapter_reset_ip_info
.LVL117:
.L71:
	.loc 1 252 0
	l32r	a8, .LC64
	addx4	a2, a2, a8
.LVL118:
	l32i.n	a10, a2, 0
	call8	netif_set_down
.LVL119:
	.loc 1 253 0
	l32i.n	a10, a2, 0
	call8	netif_remove
.LVL120:
	.loc 1 254 0
	call8	tcpip_adapter_update_default_netif
.LVL121:
	.loc 1 256 0
	movi.n	a2, 0
	retw.n
.LVL122:
.L72:
	.loc 1 225 0
	l32r	a2, .LC58
.LVL123:
	retw.n
.LVL124:
.L73:
	.loc 1 229 0
	l32r	a2, .LC59
.LVL125:
	.loc 1 257 0
	retw.n
.LFE19:
	.size	tcpip_adapter_stop, .-tcpip_adapter_stop
	.section	.text.tcpip_adapter_stop_api,"ax",@progbits
	.align	4
	.type	tcpip_adapter_stop_api, @function
tcpip_adapter_stop_api:
.LFB20:
	.loc 1 260 0
.LVL126:
	entry	sp, 32
.LCFI16:
	.loc 1 261 0
	l32i.n	a10, a2, 12
	call8	tcpip_adapter_stop
.LVL127:
	s32i.n	a10, a2, 4
	.loc 1 263 0
	mov.n	a2, a10
.LVL128:
	retw.n
.LFE20:
	.size	tcpip_adapter_stop_api, .-tcpip_adapter_stop_api
	.section	.text.tcpip_adapter_up,"ax",@progbits
	.literal_position
	.literal .LC67, 20481
	.literal .LC68, tcpip_inited
	.literal .LC69, .LC30
	.literal .LC70, .LC40
	.literal .LC71, tcpip_adapter_up_api
	.literal .LC72, esp_netif
	.literal .LC73, esp_ip
	.align	4
	.global	tcpip_adapter_up
	.type	tcpip_adapter_up, @function
tcpip_adapter_up:
.LFB21:
	.loc 1 266 0
.LVL129:
	entry	sp, 64
.LCFI17:
.LBB12:
	.loc 1 267 0
	l32r	a8, .LC68
	l8ui	a8, a8, 0
	bnez.n	a8, .L76
	.loc 1 267 0 discriminator 3
	call8	esp_log_timestamp
.LVL130:
	l32r	a11, .LC69
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC70
	movi.n	a10, 1
	call8	esp_log_write
.LVL131:
	call8	abort
.LVL132:
.L76:
	.loc 1 267 0 is_stmt 0 discriminator 2
	movi.n	a8, 0
	s32i.n	a8, sp, 0
	s32i.n	a8, sp, 4
	s32i.n	a8, sp, 16
	s32i.n	a8, sp, 20
	s32i.n	a8, sp, 24
	s32i.n	a2, sp, 12
	l32r	a8, .LC71
	s32i.n	a8, sp, 8
	mov.n	a10, sp
	call8	tcpip_adapter_ipc_check
.LVL133:
	bnei	a10, 1, .L77
	.loc 1 267 0 discriminator 10
	l32i.n	a2, sp, 4
.LVL134:
	retw.n
.LVL135:
.L77:
.LBE12:
	.loc 1 269 0 is_stmt 1
	movi.n	a11, 1
	movi.n	a8, 0
	mov.n	a9, a8
	moveqz	a9, a11, a2
	addi	a10, a2, -2
	moveqz	a8, a11, a10
	or	a8, a8, a9
	beqz.n	a8, .L79
	.loc 1 270 0
	l32r	a8, .LC72
	addx4	a8, a2, a8
	l32i.n	a10, a8, 0
	beqz.n	a10, .L80
	.loc 1 275 0
	addx2	a8, a2, a2
	l32r	a11, .LC73
	addx4	a11, a8, a11
	addi.n	a13, a11, 8
	addi.n	a12, a11, 4
	call8	netif_set_addr
.LVL136:
	.loc 1 276 0
	l32r	a8, .LC72
	addx4	a2, a2, a8
.LVL137:
	l32i.n	a10, a2, 0
	call8	netif_set_up
.LVL138:
.L79:
	.loc 1 279 0
	call8	tcpip_adapter_update_default_netif
.LVL139:
	.loc 1 281 0
	movi.n	a2, 0
	retw.n
.LVL140:
.L80:
	.loc 1 271 0
	l32r	a2, .LC67
.LVL141:
	.loc 1 282 0
	retw.n
.LFE21:
	.size	tcpip_adapter_up, .-tcpip_adapter_up
	.section	.text.tcpip_adapter_up_api,"ax",@progbits
	.align	4
	.type	tcpip_adapter_up_api, @function
tcpip_adapter_up_api:
.LFB22:
	.loc 1 285 0
.LVL142:
	entry	sp, 32
.LCFI18:
	.loc 1 286 0
	l32i.n	a10, a2, 12
	call8	tcpip_adapter_up
.LVL143:
	s32i.n	a10, a2, 4
	.loc 1 288 0
	mov.n	a2, a10
.LVL144:
	retw.n
.LFE22:
	.size	tcpip_adapter_up_api, .-tcpip_adapter_up_api
	.section	.text.tcpip_adapter_down,"ax",@progbits
	.literal_position
	.literal .LC74, 20481
	.literal .LC75, tcpip_inited
	.literal .LC76, .LC30
	.literal .LC77, .LC40
	.literal .LC78, tcpip_adapter_down_api
	.literal .LC79, esp_netif
	.literal .LC80, dhcpc_status
	.literal .LC81, ip_addr_any
	.align	4
	.global	tcpip_adapter_down
	.type	tcpip_adapter_down, @function
tcpip_adapter_down:
.LFB23:
	.loc 1 291 0
.LVL145:
	entry	sp, 64
.LCFI19:
.LBB13:
	.loc 1 292 0
	l32r	a8, .LC75
	l8ui	a8, a8, 0
	bnez.n	a8, .L83
	.loc 1 292 0 discriminator 3
	call8	esp_log_timestamp
.LVL146:
	l32r	a11, .LC76
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC77
	movi.n	a10, 1
	call8	esp_log_write
.LVL147:
	call8	abort
.LVL148:
.L83:
	.loc 1 292 0 is_stmt 0 discriminator 2
	movi.n	a8, 0
	s32i.n	a8, sp, 0
	s32i.n	a8, sp, 4
	s32i.n	a8, sp, 16
	s32i.n	a8, sp, 20
	s32i.n	a8, sp, 24
	s32i.n	a2, sp, 12
	l32r	a8, .LC78
	s32i.n	a8, sp, 8
	mov.n	a10, sp
	call8	tcpip_adapter_ipc_check
.LVL149:
	bnei	a10, 1, .L84
	.loc 1 292 0 discriminator 10
	l32i.n	a2, sp, 4
.LVL150:
	retw.n
.LVL151:
.L84:
.LBE13:
	.loc 1 294 0 is_stmt 1
	movi.n	a11, 1
	movi.n	a8, 0
	mov.n	a9, a8
	moveqz	a9, a11, a2
	addi	a10, a2, -2
	moveqz	a8, a11, a10
	or	a8, a8, a9
	beqz.n	a8, .L87
	.loc 1 295 0
	l32r	a8, .LC79
	addx4	a8, a2, a8
	l32i.n	a10, a8, 0
	beqz.n	a10, .L88
	.loc 1 299 0
	l32r	a3, .LC80
	addx4	a3, a2, a3
	l32i.n	a3, a3, 0
	bne	a3, a11, .L86
	.loc 1 300 0
	call8	dhcp_stop
.LVL152:
	.loc 1 302 0
	l32r	a3, .LC80
	addx4	a3, a2, a3
	movi.n	a8, 0
	s32i.n	a8, a3, 0
	.loc 1 304 0
	mov.n	a10, a2
	call8	tcpip_adapter_reset_ip_info
.LVL153:
.L86:
	.loc 1 307 0
	l32r	a11, .LC81
	l32r	a3, .LC79
	addx4	a3, a2, a3
	mov.n	a13, a11
	mov.n	a12, a11
	l32i.n	a10, a3, 0
	call8	netif_set_addr
.LVL154:
	.loc 1 308 0
	l32i.n	a10, a3, 0
	call8	netif_set_down
.LVL155:
	.loc 1 309 0
	mov.n	a10, a2
	call8	tcpip_adapter_start_ip_lost_timer
.LVL156:
	.loc 1 312 0
	movi.n	a2, 0
.LVL157:
	retw.n
.LVL158:
.L87:
	movi.n	a2, 0
.LVL159:
	retw.n
.LVL160:
.L88:
	.loc 1 296 0
	l32r	a2, .LC74
.LVL161:
	.loc 1 313 0
	retw.n
.LFE23:
	.size	tcpip_adapter_down, .-tcpip_adapter_down
	.section	.text.tcpip_adapter_down_api,"ax",@progbits
	.align	4
	.type	tcpip_adapter_down_api, @function
tcpip_adapter_down_api:
.LFB24:
	.loc 1 316 0
.LVL162:
	entry	sp, 32
.LCFI20:
	.loc 1 317 0
	l32i.n	a10, a2, 12
	call8	tcpip_adapter_down
.LVL163:
	.loc 1 318 0
	mov.n	a2, a10
.LVL164:
	retw.n
.LFE24:
	.size	tcpip_adapter_down_api, .-tcpip_adapter_down_api
	.section	.text.tcpip_adapter_set_old_ip_info,"ax",@progbits
	.literal_position
	.literal .LC82, 20480
	.literal .LC83, tcpip_inited
	.literal .LC84, .LC30
	.literal .LC85, .LC40
	.literal .LC86, tcpip_adapter_set_old_ip_info_api
	.align	4
	.global	tcpip_adapter_set_old_ip_info
	.type	tcpip_adapter_set_old_ip_info, @function
tcpip_adapter_set_old_ip_info:
.LFB26:
	.loc 1 327 0
.LVL165:
	entry	sp, 64
.LCFI21:
	.loc 1 328 0
	movi.n	a8, 1
	bgeui	a2, 3, .L91
	movi.n	a8, 0
.L91:
	extui	a8, a8, 0, 8
	movi.n	a10, 0
	movi.n	a9, 1
	movnez	a9, a10, a3
	or	a8, a9, a8
	bne	a8, a10, .L95
.LBB14:
	.loc 1 332 0
	l32r	a8, .LC83
	l8ui	a8, a8, 0
	bne	a8, a10, .L93
	.loc 1 332 0 discriminator 3
	call8	esp_log_timestamp
.LVL166:
	l32r	a11, .LC84
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC85
	movi.n	a10, 1
	call8	esp_log_write
.LVL167:
	call8	abort
.LVL168:
.L93:
	.loc 1 332 0 is_stmt 0 discriminator 2
	movi.n	a8, 0
	s32i.n	a8, sp, 0
	s32i.n	a8, sp, 4
	s32i.n	a8, sp, 20
	s32i.n	a8, sp, 24
	s32i.n	a2, sp, 12
	s32i.n	a3, sp, 16
	l32r	a2, .LC86
.LVL169:
	s32i.n	a2, sp, 8
	mov.n	a10, sp
	call8	tcpip_adapter_ipc_check
.LVL170:
	bnei	a10, 1, .L94
	.loc 1 332 0 discriminator 10
	l32i.n	a2, sp, 4
	retw.n
.L94:
.LBE14:
	.loc 1 334 0 is_stmt 1
	movi.n	a2, 0
	retw.n
.LVL171:
.L95:
	.loc 1 329 0
	l32r	a2, .LC82
.LVL172:
	.loc 1 335 0
	retw.n
.LFE26:
	.size	tcpip_adapter_set_old_ip_info, .-tcpip_adapter_set_old_ip_info
	.section	.text.tcpip_adapter_get_old_ip_info,"ax",@progbits
	.literal_position
	.literal .LC87, 20480
	.literal .LC88, esp_ip_old
	.align	4
	.global	tcpip_adapter_get_old_ip_info
	.type	tcpip_adapter_get_old_ip_info, @function
tcpip_adapter_get_old_ip_info:
.LFB27:
	.loc 1 338 0
.LVL173:
	entry	sp, 32
.LCFI22:
	.loc 1 339 0
	movi.n	a8, 1
	bgeui	a2, 3, .L97
	movi.n	a8, 0
.L97:
	extui	a8, a8, 0, 8
	movi.n	a10, 0
	movi.n	a9, 1
	movnez	a9, a10, a3
	or	a8, a9, a8
	bne	a8, a10, .L99
	.loc 1 343 0
	addx2	a2, a2, a2
.LVL174:
	slli	a8, a2, 2
	movi.n	a12, 0xc
	l32r	a11, .LC88
	add.n	a11, a11, a8
	mov.n	a10, a3
	call8	memcpy
.LVL175:
	.loc 1 344 0
	movi.n	a2, 0
	retw.n
.LVL176:
.L99:
	.loc 1 340 0
	l32r	a2, .LC87
.LVL177:
	.loc 1 345 0
	retw.n
.LFE27:
	.size	tcpip_adapter_get_old_ip_info, .-tcpip_adapter_get_old_ip_info
	.section	.text.tcpip_adapter_get_ip_info,"ax",@progbits
	.literal_position
	.literal .LC89, 20480
	.literal .LC90, esp_netif
	.literal .LC91, esp_ip
	.align	4
	.global	tcpip_adapter_get_ip_info
	.type	tcpip_adapter_get_ip_info, @function
tcpip_adapter_get_ip_info:
.LFB28:
	.loc 1 348 0
.LVL178:
	entry	sp, 32
.LCFI23:
	.loc 1 351 0
	movi.n	a8, 1
	bgeui	a2, 3, .L101
	movi.n	a8, 0
.L101:
	extui	a8, a8, 0, 8
	movi.n	a10, 0
	movi.n	a9, 1
	movnez	a9, a10, a3
	or	a8, a9, a8
	bne	a8, a10, .L107
	.loc 1 355 0
	l32r	a8, .LC90
	addx4	a8, a2, a8
	l32i.n	a8, a8, 0
.LVL179:
	.loc 1 357 0
	beq	a8, a10, .L103
	.loc 1 357 0 discriminator 1
	l8ui	a9, a8, 181
	bbc	a9, a10, .L103
	.loc 1 358 0
	addi.n	a2, a8, 4
.LVL180:
	.loc 1 358 0
	beq	a2, a10, .L108
	.loc 1 358 0 is_stmt 0 discriminator 1
	l32i.n	a2, a8, 4
	j	.L104
.L108:
	.loc 1 358 0
	movi.n	a2, 0
.L104:
	.loc 1 358 0 is_stmt 1 discriminator 4
	s32i.n	a2, a3, 0
	.loc 1 359 0 discriminator 4
	addi	a2, a8, 24
	.loc 1 359 0 discriminator 4
	beqz.n	a2, .L109
	.loc 1 359 0 is_stmt 0 discriminator 1
	l32i.n	a2, a8, 24
	j	.L105
.L109:
	.loc 1 359 0
	movi.n	a2, 0
.L105:
	.loc 1 359 0 is_stmt 1 discriminator 4
	s32i.n	a2, a3, 4
	.loc 1 360 0 discriminator 4
	addi	a2, a8, 44
	.loc 1 360 0 discriminator 4
	beqz.n	a2, .L110
	.loc 1 360 0 is_stmt 0 discriminator 1
	l32i.n	a2, a8, 44
	j	.L106
.L110:
	.loc 1 360 0
	movi.n	a2, 0
.L106:
	.loc 1 360 0 is_stmt 1 discriminator 4
	s32i.n	a2, a3, 8
	.loc 1 362 0 discriminator 4
	movi.n	a2, 0
	retw.n
.LVL181:
.L103:
	.loc 1 365 0
	l32r	a9, .LC91
	slli	a10, a2, 1
	add.n	a11, a10, a2
	slli	a8, a11, 2
.LVL182:
	add.n	a8, a9, a8
	l32i.n	a11, a8, 0
	s32i.n	a11, a3, 0
	.loc 1 366 0
	l32i.n	a8, a8, 8
	s32i.n	a8, a3, 8
	.loc 1 367 0
	add.n	a2, a10, a2
.LVL183:
	slli	a8, a2, 2
	add.n	a8, a9, a8
	l32i.n	a2, a8, 4
	s32i.n	a2, a3, 4
	.loc 1 369 0
	movi.n	a2, 0
	retw.n
.LVL184:
.L107:
	.loc 1 352 0
	l32r	a2, .LC89
.LVL185:
	.loc 1 370 0
	retw.n
.LFE28:
	.size	tcpip_adapter_get_ip_info, .-tcpip_adapter_get_ip_info
	.section	.text.tcpip_adapter_create_ip6_linklocal,"ax",@progbits
	.literal_position
	.literal .LC92, 20480
	.literal .LC93, tcpip_inited
	.literal .LC94, .LC30
	.literal .LC95, .LC40
	.literal .LC96, tcpip_adapter_create_ip6_linklocal_api
	.literal .LC97, esp_netif
	.literal .LC98, tcpip_adapter_nd6_cb
	.align	4
	.global	tcpip_adapter_create_ip6_linklocal
	.type	tcpip_adapter_create_ip6_linklocal, @function
tcpip_adapter_create_ip6_linklocal:
.LFB32:
	.loc 1 463 0
.LVL186:
	entry	sp, 64
.LCFI24:
.LBB15:
	.loc 1 466 0
	l32r	a8, .LC93
	l8ui	a8, a8, 0
	bnez.n	a8, .L112
	.loc 1 466 0 discriminator 3
	call8	esp_log_timestamp
.LVL187:
	l32r	a11, .LC94
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC95
	movi.n	a10, 1
	call8	esp_log_write
.LVL188:
	call8	abort
.LVL189:
.L112:
	.loc 1 466 0 is_stmt 0 discriminator 2
	movi.n	a8, 0
	s32i.n	a8, sp, 0
	s32i.n	a8, sp, 4
	s32i.n	a8, sp, 16
	s32i.n	a8, sp, 20
	s32i.n	a8, sp, 24
	s32i.n	a2, sp, 12
	l32r	a8, .LC96
	s32i.n	a8, sp, 8
	mov.n	a10, sp
	call8	tcpip_adapter_ipc_check
.LVL190:
	bnei	a10, 1, .L113
	.loc 1 466 0 discriminator 10
	l32i.n	a2, sp, 4
.LVL191:
	retw.n
.LVL192:
.L113:
.LBE15:
	.loc 1 468 0 is_stmt 1
	bgeui	a2, 3, .L115
	.loc 1 472 0
	l32r	a8, .LC97
	addx4	a2, a2, a8
.LVL193:
	l32i.n	a2, a2, 0
.LVL194:
	.loc 1 473 0
	beqz.n	a2, .L116
	.loc 1 473 0 discriminator 1
	l8ui	a8, a2, 181
	bbci	a8, 0, .L117
	.loc 1 474 0
	movi.n	a11, 1
	mov.n	a10, a2
	call8	netif_create_ip6_linklocal_address
.LVL195:
	.loc 1 475 0
	l32r	a11, .LC98
	mov.n	a10, a2
	call8	nd6_set_cb
.LVL196:
	.loc 1 477 0
	movi.n	a2, 0
.LVL197:
	retw.n
.LVL198:
.L115:
	.loc 1 469 0
	l32r	a2, .LC92
.LVL199:
	retw.n
.LVL200:
.L116:
	.loc 1 479 0
	movi.n	a2, -1
.LVL201:
	retw.n
.LVL202:
.L117:
	movi.n	a2, -1
.LVL203:
	.loc 1 481 0
	retw.n
.LFE32:
	.size	tcpip_adapter_create_ip6_linklocal, .-tcpip_adapter_create_ip6_linklocal
	.section	.text.tcpip_adapter_create_ip6_linklocal_api,"ax",@progbits
	.align	4
	.type	tcpip_adapter_create_ip6_linklocal_api, @function
tcpip_adapter_create_ip6_linklocal_api:
.LFB33:
	.loc 1 484 0
.LVL204:
	entry	sp, 32
.LCFI25:
	.loc 1 485 0
	l32i.n	a10, a2, 12
	call8	tcpip_adapter_create_ip6_linklocal
.LVL205:
	.loc 1 486 0
	mov.n	a2, a10
.LVL206:
	retw.n
.LFE33:
	.size	tcpip_adapter_create_ip6_linklocal_api, .-tcpip_adapter_create_ip6_linklocal_api
	.section	.text.tcpip_adapter_get_ip6_linklocal,"ax",@progbits
	.literal_position
	.literal .LC99, 20480
	.literal .LC100, esp_netif
	.align	4
	.global	tcpip_adapter_get_ip6_linklocal
	.type	tcpip_adapter_get_ip6_linklocal, @function
tcpip_adapter_get_ip6_linklocal:
.LFB34:
	.loc 1 489 0
.LVL207:
	entry	sp, 32
.LCFI26:
	.loc 1 492 0
	movi.n	a8, 1
	bgeui	a2, 3, .L120
	movi.n	a8, 0
.L120:
	extui	a8, a8, 0, 8
	movi.n	a10, 0
	movi.n	a9, 1
	movnez	a9, a10, a3
	or	a8, a9, a8
	bne	a8, a10, .L122
	.loc 1 496 0
	l32r	a8, .LC100
	addx4	a2, a2, a8
.LVL208:
	l32i.n	a11, a2, 0
.LVL209:
	.loc 1 497 0
	beq	a11, a10, .L123
	.loc 1 497 0 discriminator 1
	l8ui	a2, a11, 181
	bbc	a2, a10, .L124
	.loc 1 497 0 is_stmt 0 discriminator 2
	l8ui	a8, a11, 124
	movi.n	a2, 0x30
	bne	a8, a2, .L125
	.loc 1 498 0 is_stmt 1
	movi.n	a12, 0x10
	addi	a11, a11, 64
.LVL210:
	mov.n	a10, a3
	call8	memcpy
.LVL211:
	.loc 1 502 0
	movi.n	a2, 0
	retw.n
.LVL212:
.L122:
	.loc 1 493 0
	l32r	a2, .LC99
.LVL213:
	retw.n
.LVL214:
.L123:
	.loc 1 500 0
	movi.n	a2, -1
	retw.n
.L124:
	movi.n	a2, -1
	retw.n
.L125:
	movi.n	a2, -1
	.loc 1 503 0
	retw.n
.LFE34:
	.size	tcpip_adapter_get_ip6_linklocal, .-tcpip_adapter_get_ip6_linklocal
	.section	.text.tcpip_adapter_dhcps_option,"ax",@progbits
	.literal_position
	.literal .LC101, 20480
	.literal .LC102, 20484
	.literal .LC103, 20483
	.literal .LC104, dhcps_status
	.align	4
	.global	tcpip_adapter_dhcps_option
	.type	tcpip_adapter_dhcps_option, @function
tcpip_adapter_dhcps_option:
.LFB35:
	.loc 1 546 0
.LVL215:
	entry	sp, 48
.LCFI27:
	.loc 1 547 0
	mov.n	a11, a5
	extui	a10, a3, 0, 8
	call8	dhcps_option_info
.LVL216:
	mov.n	a6, a10
.LVL217:
	.loc 1 549 0
	movi.n	a8, 1
	movi.n	a10, 0
	mov.n	a9, a10
	moveqz	a9, a8, a6
	.loc 1 549 0
	movnez	a8, a10, a4
	or	a8, a8, a9
	.loc 1 549 0
	bne	a8, a10, .L140
	.loc 1 553 0
	bnei	a2, 2, .L128
	.loc 1 554 0
	l32r	a2, .LC104
.LVL218:
	l32i.n	a2, a2, 0
	beqi	a2, 2, .L141
	.loc 1 558 0
	movi.n	a2, 0x32
	beq	a3, a2, .L129
	movi.n	a2, 0x33
	beq	a3, a2, .L130
	bnei	a3, 32, .L146
	j	.L131
.L130:
	.loc 1 560 0
	l32i.n	a2, a6, 0
	s32i.n	a2, a4, 0
	.loc 1 633 0
	movi.n	a2, 0
	.loc 1 561 0
	retw.n
.L129:
	.loc 1 564 0
	mov.n	a12, a5
	mov.n	a11, a6
	mov.n	a10, a4
	call8	memcpy
.LVL219:
	.loc 1 633 0
	movi.n	a2, 0
	.loc 1 565 0
	retw.n
.L131:
	.loc 1 568 0
	l8ui	a2, a6, 0
	extui	a2, a2, 0, 1
	s8i	a2, a4, 0
	.loc 1 633 0
	movi.n	a2, 0
	.loc 1 569 0
	retw.n
.LVL220:
.L128:
	.loc 1 574 0
	bnei	a2, 1, .L143
	.loc 1 575 0
	l32r	a2, .LC104
.LVL221:
	l32i.n	a2, a2, 0
	beqi	a2, 1, .L144
	.loc 1 579 0
	movi.n	a2, 0x32
	beq	a3, a2, .L132
	movi.n	a2, 0x33
	beq	a3, a2, .L133
	bnei	a3, 32, .L147
	j	.L134
.L133:
	.loc 1 581 0
	l32i.n	a2, a4, 0
	beqz.n	a2, .L135
	.loc 1 582 0
	s32i.n	a2, a6, 0
	.loc 1 633 0
	movi.n	a2, 0
	retw.n
.L135:
	.loc 1 584 0
	movi	a2, 0x78
	s32i.n	a2, a6, 0
	.loc 1 633 0
	movi.n	a2, 0
	retw.n
.L132:
.LVL222:
.LBB16:
	.loc 1 595 0
	l8ui	a2, a4, 0
	beqz.n	a2, .L136
	.loc 1 596 0
	movi.n	a2, 0
	s32i.n	a2, sp, 0
	s32i.n	a2, sp, 4
	s32i.n	a2, sp, 8
	.loc 1 597 0
	mov.n	a11, sp
	movi.n	a10, 1
	call8	tcpip_adapter_get_ip_info
.LVL223:
	.loc 1 598 0
	l32i.n	a10, sp, 0
	call8	lwip_htonl
.LVL224:
	mov.n	a2, a10
.LVL225:
	.loc 1 599 0
	l32i.n	a10, a4, 4
	call8	lwip_htonl
.LVL226:
	mov.n	a3, a10
.LVL227:
	.loc 1 600 0
	l32i.n	a10, a4, 8
	call8	lwip_htonl
.LVL228:
	.loc 1 603 0
	movi.n	a8, 1
	bgeu	a2, a3, .L137
	movi.n	a8, 0
.L137:
	extui	a8, a8, 0, 8
	movi.n	a9, 1
	bgeu	a10, a2, .L138
	movi.n	a9, 0
.L138:
	bany	a8, a9, .L139
	.loc 1 608 0
	srli	a2, a2, 8
.LVL229:
	.loc 1 609 0
	srli	a8, a3, 8
	bne	a2, a8, .L139
	.loc 1 610 0
	srli	a8, a10, 8
	bne	a2, a8, .L139
	.loc 1 614 0
	sub	a3, a10, a3
.LVL230:
	movi	a2, 0x64
.LVL231:
	bltu	a2, a3, .L139
.LVL232:
.L136:
	.loc 1 619 0
	mov.n	a12, a5
	mov.n	a11, a4
	mov.n	a10, a6
	call8	memcpy
.LVL233:
.LBE16:
	.loc 1 633 0
	movi.n	a2, 0
	retw.n
.LVL234:
.L139:
.LBB17:
	.loc 1 604 0 discriminator 1
	l32r	a2, .LC101
	retw.n
.LVL235:
.L134:
.LBE17:
	.loc 1 623 0
	l8ui	a2, a4, 0
	extui	a2, a2, 0, 1
	s8i	a2, a6, 0
	.loc 1 633 0
	movi.n	a2, 0
	.loc 1 624 0
	retw.n
.LVL236:
.L140:
	.loc 1 550 0
	l32r	a2, .LC101
.LVL237:
	retw.n
.L141:
	.loc 1 555 0
	l32r	a2, .LC102
	retw.n
.L146:
	.loc 1 633 0
	movi.n	a2, 0
	retw.n
.LVL238:
.L143:
	.loc 1 630 0
	l32r	a2, .LC101
.LVL239:
	retw.n
.L144:
	.loc 1 576 0
	l32r	a2, .LC103
	retw.n
.L147:
	.loc 1 633 0
	movi.n	a2, 0
	.loc 1 634 0
	retw.n
.LFE35:
	.size	tcpip_adapter_dhcps_option, .-tcpip_adapter_dhcps_option
	.section	.text.tcpip_adapter_dhcps_get_status,"ax",@progbits
	.literal_position
	.literal .LC105, dhcps_status
	.align	4
	.global	tcpip_adapter_dhcps_get_status
	.type	tcpip_adapter_dhcps_get_status, @function
tcpip_adapter_dhcps_get_status:
.LFB36:
	.loc 1 637 0
.LVL240:
	entry	sp, 32
.LCFI28:
	.loc 1 638 0
	l32r	a8, .LC105
	l32i.n	a8, a8, 0
	s32i.n	a8, a3, 0
	.loc 1 641 0
	movi.n	a2, 0
.LVL241:
	retw.n
.LFE36:
	.size	tcpip_adapter_dhcps_get_status, .-tcpip_adapter_dhcps_get_status
	.section	.text.tcpip_adapter_dhcps_start,"ax",@progbits
	.literal_position
	.literal .LC106, 20480
	.literal .LC107, 20483
	.literal .LC108, tcpip_inited
	.literal .LC109, .LC30
	.literal .LC110, .LC40
	.literal .LC111, tcpip_adapter_dhcps_start_api
	.literal .LC112, dhcps_status
	.literal .LC113, esp_netif
	.align	4
	.global	tcpip_adapter_dhcps_start
	.type	tcpip_adapter_dhcps_start, @function
tcpip_adapter_dhcps_start:
.LFB37:
	.loc 1 644 0
.LVL242:
	entry	sp, 64
.LCFI29:
.LBB18:
	.loc 1 645 0
	l32r	a8, .LC108
	l8ui	a8, a8, 0
	bnez.n	a8, .L150
	.loc 1 645 0 discriminator 3
	call8	esp_log_timestamp
.LVL243:
	l32r	a11, .LC109
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC110
	movi.n	a10, 1
	call8	esp_log_write
.LVL244:
	call8	abort
.LVL245:
.L150:
	.loc 1 645 0 is_stmt 0 discriminator 2
	movi.n	a8, 0
	s32i.n	a8, sp, 0
	s32i.n	a8, sp, 4
	s32i.n	a8, sp, 16
	s32i.n	a8, sp, 20
	s32i.n	a8, sp, 24
	s32i.n	a2, sp, 12
	l32r	a8, .LC111
	s32i.n	a8, sp, 8
	mov.n	a10, sp
	call8	tcpip_adapter_ipc_check
.LVL246:
	bnei	a10, 1, .L151
	.loc 1 645 0 discriminator 10
	l32i.n	a2, sp, 4
.LVL247:
	retw.n
.LVL248:
.L151:
.LBE18:
	.loc 1 648 0 is_stmt 1
	bnei	a2, 1, .L154
	.loc 1 653 0
	l32r	a8, .LC112
	l32i.n	a8, a8, 0
	beqi	a8, 1, .L155
.LBB19:
	.loc 1 654 0
	l32r	a8, .LC113
	addx4	a2, a2, a8
.LVL249:
	l32i.n	a2, a2, 0
.LVL250:
	.loc 1 656 0
	beqz.n	a2, .L153
	.loc 1 656 0 discriminator 1
	l8ui	a8, a2, 181
	bbci	a8, 0, .L153
.LBB20:
	.loc 1 658 0
	mov.n	a11, sp
	movi.n	a10, 1
	call8	tcpip_adapter_get_ip_info
.LVL251:
	.loc 1 659 0
	l32i.n	a11, sp, 0
	mov.n	a10, a2
	call8	dhcps_start
.LVL252:
	.loc 1 660 0
	movi.n	a8, 1
	l32r	a2, .LC112
.LVL253:
	s32i.n	a8, a2, 0
	.loc 1 662 0
	movi.n	a2, 0
	retw.n
.LVL254:
.L153:
.LBE20:
	.loc 1 665 0
	movi.n	a2, 0
.LVL255:
	l32r	a8, .LC112
	s32i.n	a2, a8, 0
	.loc 1 666 0
	retw.n
.LVL256:
.L154:
.LBE19:
	.loc 1 650 0
	l32r	a2, .LC106
.LVL257:
	retw.n
.LVL258:
.L155:
	.loc 1 671 0
	l32r	a2, .LC107
.LVL259:
	.loc 1 672 0
	retw.n
.LFE37:
	.size	tcpip_adapter_dhcps_start, .-tcpip_adapter_dhcps_start
	.section	.text.tcpip_adapter_dhcps_start_api,"ax",@progbits
	.align	4
	.type	tcpip_adapter_dhcps_start_api, @function
tcpip_adapter_dhcps_start_api:
.LFB38:
	.loc 1 675 0
.LVL260:
	entry	sp, 32
.LCFI30:
	.loc 1 676 0
	l32i.n	a10, a2, 12
	call8	tcpip_adapter_dhcps_start
.LVL261:
	.loc 1 677 0
	mov.n	a2, a10
.LVL262:
	retw.n
.LFE38:
	.size	tcpip_adapter_dhcps_start_api, .-tcpip_adapter_dhcps_start_api
	.section	.text.tcpip_adapter_dhcps_stop,"ax",@progbits
	.literal_position
	.literal .LC114, 20480
	.literal .LC115, 20481
	.literal .LC116, 20484
	.literal .LC117, tcpip_inited
	.literal .LC118, .LC30
	.literal .LC119, .LC40
	.literal .LC120, tcpip_adapter_dhcps_stop_api
	.literal .LC121, dhcps_status
	.literal .LC122, esp_netif
	.align	4
	.global	tcpip_adapter_dhcps_stop
	.type	tcpip_adapter_dhcps_stop, @function
tcpip_adapter_dhcps_stop:
.LFB39:
	.loc 1 681 0
.LVL263:
	entry	sp, 64
.LCFI31:
.LBB21:
	.loc 1 682 0
	l32r	a8, .LC117
	l8ui	a8, a8, 0
	bnez.n	a8, .L158
	.loc 1 682 0 discriminator 3
	call8	esp_log_timestamp
.LVL264:
	l32r	a11, .LC118
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC119
	movi.n	a10, 1
	call8	esp_log_write
.LVL265:
	call8	abort
.LVL266:
.L158:
	.loc 1 682 0 is_stmt 0 discriminator 2
	movi.n	a8, 0
	s32i.n	a8, sp, 0
	s32i.n	a8, sp, 4
	s32i.n	a8, sp, 16
	s32i.n	a8, sp, 20
	s32i.n	a8, sp, 24
	s32i.n	a2, sp, 12
	l32r	a8, .LC120
	s32i.n	a8, sp, 8
	mov.n	a10, sp
	call8	tcpip_adapter_ipc_check
.LVL267:
	bnei	a10, 1, .L159
	.loc 1 682 0 discriminator 10
	l32i.n	a2, sp, 4
.LVL268:
	retw.n
.LVL269:
.L159:
.LBE21:
	.loc 1 685 0 is_stmt 1
	bnei	a2, 1, .L163
	.loc 1 690 0
	l32r	a8, .LC121
	l32i.n	a8, a8, 0
	bnei	a8, 1, .L161
.LBB22:
	.loc 1 691 0
	l32r	a8, .LC122
	addx4	a2, a2, a8
.LVL270:
	l32i.n	a10, a2, 0
.LVL271:
	.loc 1 693 0
	beqz.n	a10, .L164
	.loc 1 694 0
	call8	dhcps_stop
.LVL272:
.LBE22:
	j	.L162
.LVL273:
.L161:
	.loc 1 699 0
	beqi	a8, 2, .L165
.LVL274:
.L162:
	.loc 1 705 0
	movi.n	a8, 2
	l32r	a2, .LC121
	s32i.n	a8, a2, 0
	.loc 1 706 0
	movi.n	a2, 0
	retw.n
.LVL275:
.L163:
	.loc 1 687 0
	l32r	a2, .LC114
.LVL276:
	retw.n
.LVL277:
.L164:
.LBB23:
	.loc 1 697 0
	l32r	a2, .LC115
	retw.n
.LVL278:
.L165:
.LBE23:
	.loc 1 701 0
	l32r	a2, .LC116
.LVL279:
	.loc 1 707 0
	retw.n
.LFE39:
	.size	tcpip_adapter_dhcps_stop, .-tcpip_adapter_dhcps_stop
	.section	.text.tcpip_adapter_dhcps_stop_api,"ax",@progbits
	.align	4
	.type	tcpip_adapter_dhcps_stop_api, @function
tcpip_adapter_dhcps_stop_api:
.LFB40:
	.loc 1 710 0
.LVL280:
	entry	sp, 32
.LCFI32:
	.loc 1 711 0
	l32i.n	a10, a2, 12
	call8	tcpip_adapter_dhcps_stop
.LVL281:
	.loc 1 712 0
	mov.n	a2, a10
.LVL282:
	retw.n
.LFE40:
	.size	tcpip_adapter_dhcps_stop_api, .-tcpip_adapter_dhcps_stop_api
	.section	.text.tcpip_adapter_dhcpc_option,"ax",@progbits
	.align	4
	.global	tcpip_adapter_dhcpc_option
	.type	tcpip_adapter_dhcpc_option, @function
tcpip_adapter_dhcpc_option:
.LFB41:
	.loc 1 715 0
.LVL283:
	entry	sp, 32
.LCFI33:
	.loc 1 718 0
	movi.n	a2, 0
.LVL284:
	retw.n
.LFE41:
	.size	tcpip_adapter_dhcpc_option, .-tcpip_adapter_dhcpc_option
	.section	.text.tcpip_adapter_dhcpc_get_status,"ax",@progbits
	.literal_position
	.literal .LC123, dhcpc_status
	.align	4
	.global	tcpip_adapter_dhcpc_get_status
	.type	tcpip_adapter_dhcpc_get_status, @function
tcpip_adapter_dhcpc_get_status:
.LFB45:
	.loc 1 835 0
.LVL285:
	entry	sp, 32
.LCFI34:
	.loc 1 836 0
	l32r	a8, .LC123
	addx4	a2, a2, a8
.LVL286:
	l32i.n	a2, a2, 0
	s32i.n	a2, a3, 0
	.loc 1 839 0
	movi.n	a2, 0
	retw.n
.LFE45:
	.size	tcpip_adapter_dhcpc_get_status, .-tcpip_adapter_dhcpc_get_status
	.section	.text.tcpip_adapter_set_ip_info,"ax",@progbits
	.literal_position
	.literal .LC124, 20480
	.literal .LC125, 20486
	.literal .LC126, tcpip_inited
	.literal .LC127, .LC30
	.literal .LC128, .LC40
	.literal .LC129, tcpip_adapter_set_ip_info_api
	.literal .LC130, esp_ip
	.literal .LC131, esp_netif
	.literal .LC132, esp_ip_old
	.align	4
	.global	tcpip_adapter_set_ip_info
	.type	tcpip_adapter_set_ip_info, @function
tcpip_adapter_set_ip_info:
.LFB29:
	.loc 1 373 0
.LVL287:
	entry	sp, 96
.LCFI35:
.LBB24:
	.loc 1 377 0
	l32r	a8, .LC126
	l8ui	a8, a8, 0
	bnez.n	a8, .L170
	.loc 1 377 0 discriminator 3
	call8	esp_log_timestamp
.LVL288:
	l32r	a11, .LC127
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC128
	movi.n	a10, 1
	call8	esp_log_write
.LVL289:
	call8	abort
.LVL290:
.L170:
	.loc 1 377 0 is_stmt 0 discriminator 2
	movi.n	a8, 0
	s32i.n	a8, sp, 4
	s32i.n	a8, sp, 8
	s32i.n	a8, sp, 24
	s32i.n	a8, sp, 28
	s32i.n	a2, sp, 16
	s32i.n	a3, sp, 20
	l32r	a8, .LC129
	s32i.n	a8, sp, 12
	addi.n	a10, sp, 4
	call8	tcpip_adapter_ipc_check
.LVL291:
	bnei	a10, 1, .L171
	.loc 1 377 0 discriminator 10
	l32i.n	a2, sp, 8
.LVL292:
	retw.n
.LVL293:
.L171:
.LBE24:
	.loc 1 379 0 is_stmt 1
	movi.n	a8, 1
	bgeui	a2, 3, .L173
	movi.n	a8, 0
.L173:
	extui	a8, a8, 0, 8
	movi.n	a10, 0
	movi.n	a9, 1
	movnez	a9, a10, a3
	or	a8, a9, a8
	bne	a8, a10, .L179
	.loc 1 383 0
	bnei	a2, 1, .L174
	.loc 1 384 0
	mov.n	a11, sp
	mov.n	a10, a2
	call8	tcpip_adapter_dhcps_get_status
.LVL294:
	.loc 1 386 0
	l32i.n	a4, sp, 0
	bnei	a4, 2, .L180
	j	.L175
.L174:
	.loc 1 389 0
	movi.n	a11, 1
	movi.n	a8, 0
	mov.n	a9, a8
	moveqz	a9, a11, a2
	addi	a10, a2, -2
	moveqz	a8, a11, a10
	or	a8, a8, a9
	beqz.n	a8, .L175
.LBB25:
	.loc 1 390 0
	mov.n	a11, sp
	mov.n	a10, a2
	call8	tcpip_adapter_dhcpc_get_status
.LVL295:
	.loc 1 392 0
	l32i.n	a4, sp, 0
	bnei	a4, 2, .L181
	movi.n	a4, 0
	j	.L176
.LVL296:
.L177:
	.loc 1 398 0 discriminator 3
	movi.n	a11, 0
	mov.n	a10, a4
	call8	dns_setserver
.LVL297:
	.loc 1 397 0 discriminator 3
	addi.n	a4, a4, 1
.LVL298:
	extui	a4, a4, 0, 8
.LVL299:
.L176:
	.loc 1 397 0 is_stmt 0 discriminator 1
	bltui	a4, 2, .L177
.LVL300:
.L175:
.LBE25:
	.loc 1 403 0 is_stmt 1
	l32i.n	a9, a3, 0
	addx2	a8, a2, a2
	l32r	a10, .LC130
	addx4	a8, a8, a10
	s32i.n	a9, a8, 0
	.loc 1 404 0
	l32i.n	a9, a3, 8
	s32i.n	a9, a8, 8
	.loc 1 405 0
	l32i.n	a9, a3, 4
	s32i.n	a9, a8, 4
	.loc 1 407 0
	l32r	a8, .LC131
	addx4	a8, a2, a8
	l32i.n	a10, a8, 0
.LVL301:
	.loc 1 409 0
	beqz.n	a10, .L182
	.loc 1 409 0 discriminator 1
	l8ui	a8, a10, 181
	bbci	a8, 0, .L183
	.loc 1 410 0
	addi.n	a13, a3, 8
	addi.n	a12, a3, 4
	mov.n	a11, a3
	call8	netif_set_addr
.LVL302:
	.loc 1 411 0
	l32i.n	a4, a3, 0
	beqz.n	a4, .L184
.LBB26:
	.loc 1 413 0
	movi.n	a4, 7
	s32i.n	a4, sp, 4
	.loc 1 414 0
	movi.n	a4, 0
	s8i	a4, sp, 20
	.loc 1 416 0
	addx2	a2, a2, a2
.LVL303:
	l32r	a4, .LC132
	addx4	a2, a2, a4
	movi.n	a12, 0xc
	mov.n	a11, a2
	mov.n	a10, a3
	call8	memcmp
.LVL304:
	beqz.n	a10, .L178
	.loc 1 417 0
	movi.n	a4, 1
	s8i	a4, sp, 20
.L178:
	.loc 1 420 0
	movi.n	a4, 0xc
	mov.n	a12, a4
	mov.n	a11, a3
	addi.n	a10, sp, 8
	call8	memcpy
.LVL305:
	.loc 1 421 0
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	memcpy
.LVL306:
	.loc 1 422 0
	addi.n	a10, sp, 4
	call8	esp_event_send
.LVL307:
.LBE26:
	.loc 1 427 0
	movi.n	a2, 0
	retw.n
.LVL308:
.L179:
	.loc 1 380 0
	l32r	a2, .LC124
.LVL309:
	retw.n
.LVL310:
.L180:
	.loc 1 387 0
	l32r	a2, .LC125
.LVL311:
	retw.n
.LVL312:
.L181:
.LBB27:
	.loc 1 393 0
	l32r	a2, .LC125
.LVL313:
	retw.n
.LVL314:
.L182:
.LBE27:
	.loc 1 427 0
	movi.n	a2, 0
.LVL315:
	retw.n
.LVL316:
.L183:
	movi.n	a2, 0
.LVL317:
	retw.n
.LVL318:
.L184:
	movi.n	a2, 0
.LVL319:
	.loc 1 428 0
	retw.n
.LFE29:
	.size	tcpip_adapter_set_ip_info, .-tcpip_adapter_set_ip_info
	.section	.text.tcpip_adapter_set_ip_info_api,"ax",@progbits
	.align	4
	.type	tcpip_adapter_set_ip_info_api, @function
tcpip_adapter_set_ip_info_api:
.LFB30:
	.loc 1 431 0
.LVL320:
	entry	sp, 32
.LCFI36:
	.loc 1 432 0
	l32i.n	a11, a2, 16
	l32i.n	a10, a2, 12
	call8	tcpip_adapter_set_ip_info
.LVL321:
	.loc 1 433 0
	mov.n	a2, a10
.LVL322:
	retw.n
.LFE30:
	.size	tcpip_adapter_set_ip_info_api, .-tcpip_adapter_set_ip_info_api
	.section	.text.tcpip_adapter_dhcpc_start,"ax",@progbits
	.literal_position
	.literal .LC133, 20480
	.literal .LC134, 20482
	.literal .LC135, 20483
	.literal .LC136, tcpip_inited
	.literal .LC137, .LC30
	.literal .LC138, .LC40
	.literal .LC139, tcpip_adapter_dhcpc_start_api
	.literal .LC140, dhcpc_status
	.literal .LC141, esp_netif
	.literal .LC142, tcpip_adapter_dhcpc_cb
	.align	4
	.global	tcpip_adapter_dhcpc_start
	.type	tcpip_adapter_dhcpc_start, @function
tcpip_adapter_dhcpc_start:
.LFB46:
	.loc 1 842 0
.LVL323:
	entry	sp, 64
.LCFI37:
.LBB28:
	.loc 1 843 0
	l32r	a8, .LC136
	l8ui	a8, a8, 0
	bnez.n	a8, .L187
	.loc 1 843 0 discriminator 3
	call8	esp_log_timestamp
.LVL324:
	l32r	a11, .LC137
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC138
	movi.n	a10, 1
	call8	esp_log_write
.LVL325:
	call8	abort
.LVL326:
.L187:
	.loc 1 843 0 is_stmt 0 discriminator 2
	movi.n	a8, 0
	s32i.n	a8, sp, 0
	s32i.n	a8, sp, 4
	s32i.n	a8, sp, 16
	s32i.n	a8, sp, 20
	s32i.n	a8, sp, 24
	s32i.n	a2, sp, 12
	l32r	a8, .LC139
	s32i.n	a8, sp, 8
	mov.n	a10, sp
	call8	tcpip_adapter_ipc_check
.LVL327:
	bnei	a10, 1, .L188
	.loc 1 843 0 discriminator 10
	l32i.n	a2, sp, 4
.LVL328:
	retw.n
.LVL329:
.L188:
.LBE28:
	.loc 1 845 0 is_stmt 1
	movi.n	a10, 1
	movi.n	a8, 0
	mov.n	a11, a8
	movnez	a11, a10, a2
	addi	a9, a2, -2
	movnez	a8, a10, a9
	bany	a8, a11, .L196
	.loc 1 845 0 is_stmt 0 discriminator 1
	bgeui	a2, 3, .L197
	.loc 1 850 0 is_stmt 1
	l32r	a3, .LC140
	addx4	a3, a2, a3
	l32i.n	a3, a3, 0
	beq	a3, a10, .L198
.LBB29:
	.loc 1 851 0
	l32r	a3, .LC141
	addx4	a3, a2, a3
	l32i.n	a3, a3, 0
.LVL330:
	.loc 1 853 0
	mov.n	a10, a2
	call8	tcpip_adapter_reset_ip_info
.LVL331:
	.loc 1 855 0
	beqz.n	a3, .L190
	.loc 1 856 0
	beqz.n	a3, .L191
	.loc 1 856 0 is_stmt 0 discriminator 1
	l8ui	a8, a3, 181
	bbci	a8, 0, .L191
	.loc 1 858 0 is_stmt 1
	movi.n	a8, 0
	s32i.n	a8, a3, 4
	s32i.n	a8, a3, 8
	s32i.n	a8, a3, 12
	s32i.n	a8, a3, 16
	addi.n	a8, a3, 4
	beqz.n	a8, .L192
	.loc 1 858 0 discriminator 1
	movi.n	a8, 0
	s8i	a8, a3, 20
.L192:
	.loc 1 859 0
	movi.n	a8, 0
	s32i.n	a8, a3, 24
	s32i.n	a8, a3, 28
	s32i.n	a8, a3, 32
	s32i.n	a8, a3, 36
	addi	a8, a3, 24
	beqz.n	a8, .L193
	.loc 1 859 0 discriminator 1
	movi.n	a8, 0
	s8i	a8, a3, 40
.L193:
	.loc 1 860 0
	movi.n	a8, 0
	s32i.n	a8, a3, 44
	s32i.n	a8, a3, 48
	s32i.n	a8, a3, 52
	s32i.n	a8, a3, 56
	addi	a8, a3, 44
	beqz.n	a8, .L194
	.loc 1 860 0 discriminator 1
	movi.n	a8, 0
	s8i	a8, a3, 60
.L194:
	.loc 1 861 0
	mov.n	a10, a2
	call8	tcpip_adapter_start_ip_lost_timer
.LVL332:
	.loc 1 868 0
	mov.n	a10, a3
	call8	dhcp_start
.LVL333:
	extui	a10, a10, 0, 8
	bnez.n	a10, .L199
	j	.L200
.L191:
	.loc 1 864 0
	l32r	a3, .LC140
.LVL334:
	addx4	a3, a2, a3
	movi.n	a2, 0
.LVL335:
	s32i.n	a2, a3, 0
	.loc 1 865 0
	retw.n
.LVL336:
.L200:
	.loc 1 873 0
	l32r	a11, .LC142
	mov.n	a10, a3
	call8	dhcp_set_cb
.LVL337:
	.loc 1 876 0
	l32r	a3, .LC140
.LVL338:
	addx4	a2, a2, a3
.LVL339:
	movi.n	a3, 1
	s32i.n	a3, a2, 0
	.loc 1 877 0
	movi.n	a2, 0
	retw.n
.LVL340:
.L190:
	.loc 1 880 0
	l32r	a8, .LC140
	addx4	a8, a2, a8
	movi.n	a2, 0
.LVL341:
	s32i.n	a2, a8, 0
	.loc 1 881 0
	retw.n
.LVL342:
.L196:
.LBE29:
	.loc 1 847 0
	l32r	a2, .LC133
.LVL343:
	retw.n
.LVL344:
.L197:
	l32r	a2, .LC133
.LVL345:
	retw.n
.LVL346:
.L198:
	.loc 1 886 0
	l32r	a2, .LC135
.LVL347:
	retw.n
.LVL348:
.L199:
.LBB30:
	.loc 1 870 0
	l32r	a2, .LC134
.LVL349:
.LBE30:
	.loc 1 887 0
	retw.n
.LFE46:
	.size	tcpip_adapter_dhcpc_start, .-tcpip_adapter_dhcpc_start
	.section	.text.tcpip_adapter_dhcpc_start_api,"ax",@progbits
	.align	4
	.type	tcpip_adapter_dhcpc_start_api, @function
tcpip_adapter_dhcpc_start_api:
.LFB47:
	.loc 1 890 0
.LVL350:
	entry	sp, 32
.LCFI38:
	.loc 1 891 0
	l32i.n	a10, a2, 12
	call8	tcpip_adapter_dhcpc_start
.LVL351:
	.loc 1 892 0
	mov.n	a2, a10
.LVL352:
	retw.n
.LFE47:
	.size	tcpip_adapter_dhcpc_start_api, .-tcpip_adapter_dhcpc_start_api
	.section	.text.tcpip_adapter_dhcpc_stop,"ax",@progbits
	.literal_position
	.literal .LC143, 20480
	.literal .LC144, 20481
	.literal .LC145, 20484
	.literal .LC146, tcpip_inited
	.literal .LC147, .LC30
	.literal .LC148, .LC40
	.literal .LC149, tcpip_adapter_dhcpc_stop_api
	.literal .LC150, dhcpc_status
	.literal .LC151, esp_netif
	.align	4
	.global	tcpip_adapter_dhcpc_stop
	.type	tcpip_adapter_dhcpc_stop, @function
tcpip_adapter_dhcpc_stop:
.LFB48:
	.loc 1 895 0
.LVL353:
	entry	sp, 64
.LCFI39:
.LBB31:
	.loc 1 896 0
	l32r	a8, .LC146
	l8ui	a8, a8, 0
	bnez.n	a8, .L203
	.loc 1 896 0 discriminator 3
	call8	esp_log_timestamp
.LVL354:
	l32r	a11, .LC147
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC148
	movi.n	a10, 1
	call8	esp_log_write
.LVL355:
	call8	abort
.LVL356:
.L203:
	.loc 1 896 0 is_stmt 0 discriminator 2
	movi.n	a8, 0
	s32i.n	a8, sp, 0
	s32i.n	a8, sp, 4
	s32i.n	a8, sp, 16
	s32i.n	a8, sp, 20
	s32i.n	a8, sp, 24
	s32i.n	a2, sp, 12
	l32r	a8, .LC149
	s32i.n	a8, sp, 8
	mov.n	a10, sp
	call8	tcpip_adapter_ipc_check
.LVL357:
	bnei	a10, 1, .L204
	.loc 1 896 0 discriminator 10
	l32i.n	a2, sp, 4
.LVL358:
	retw.n
.LVL359:
.L204:
.LBE31:
	.loc 1 898 0 is_stmt 1
	movi.n	a10, 1
	movi.n	a8, 0
	mov.n	a11, a8
	movnez	a11, a10, a2
	addi	a9, a2, -2
	movnez	a8, a10, a9
	bany	a8, a11, .L208
	.loc 1 898 0 is_stmt 0 discriminator 1
	bgeui	a2, 3, .L209
	.loc 1 903 0 is_stmt 1
	l32r	a8, .LC150
	addx4	a8, a2, a8
	l32i.n	a8, a8, 0
	bne	a8, a10, .L206
.LBB32:
	.loc 1 904 0
	l32r	a8, .LC151
	addx4	a8, a2, a8
	l32i.n	a10, a8, 0
.LVL360:
	.loc 1 906 0
	beqz.n	a10, .L210
	.loc 1 907 0
	call8	dhcp_stop
.LVL361:
	.loc 1 908 0
	mov.n	a10, a2
	call8	tcpip_adapter_reset_ip_info
.LVL362:
	.loc 1 909 0
	mov.n	a10, a2
	call8	tcpip_adapter_start_ip_lost_timer
.LVL363:
.LBE32:
	j	.L207
.L206:
	.loc 1 914 0
	beqi	a8, 2, .L211
.L207:
	.loc 1 920 0
	l32r	a8, .LC150
	addx4	a2, a2, a8
.LVL364:
	movi.n	a8, 2
	s32i.n	a8, a2, 0
	.loc 1 921 0
	movi.n	a2, 0
	retw.n
.LVL365:
.L208:
	.loc 1 900 0
	l32r	a2, .LC143
.LVL366:
	retw.n
.LVL367:
.L209:
	l32r	a2, .LC143
.LVL368:
	retw.n
.LVL369:
.L210:
.LBB33:
	.loc 1 912 0
	l32r	a2, .LC144
.LVL370:
	retw.n
.LVL371:
.L211:
.LBE33:
	.loc 1 916 0
	l32r	a2, .LC145
.LVL372:
	.loc 1 922 0
	retw.n
.LFE48:
	.size	tcpip_adapter_dhcpc_stop, .-tcpip_adapter_dhcpc_stop
	.section	.text.tcpip_adapter_dhcpc_stop_api,"ax",@progbits
	.align	4
	.type	tcpip_adapter_dhcpc_stop_api, @function
tcpip_adapter_dhcpc_stop_api:
.LFB49:
	.loc 1 925 0
.LVL373:
	entry	sp, 32
.LCFI40:
	.loc 1 926 0
	l32i.n	a10, a2, 12
	call8	tcpip_adapter_dhcpc_stop
.LVL374:
	.loc 1 927 0
	mov.n	a2, a10
.LVL375:
	retw.n
.LFE49:
	.size	tcpip_adapter_dhcpc_stop_api, .-tcpip_adapter_dhcpc_stop_api
	.section	.text.tcpip_adapter_eth_input,"ax",@progbits
	.literal_position
	.literal .LC152, esp_netif
	.align	4
	.global	tcpip_adapter_eth_input
	.type	tcpip_adapter_eth_input, @function
tcpip_adapter_eth_input:
.LFB50:
	.loc 1 930 0
.LVL376:
	entry	sp, 32
.LCFI41:
	.loc 1 931 0
	extui	a12, a3, 0, 16
	mov.n	a11, a2
	l32r	a8, .LC152
	l32i.n	a10, a8, 8
	call8	ethernetif_input
.LVL377:
	.loc 1 933 0
	movi.n	a2, 0
.LVL378:
	retw.n
.LFE50:
	.size	tcpip_adapter_eth_input, .-tcpip_adapter_eth_input
	.section	.text.tcpip_adapter_sta_input,"ax",@progbits
	.literal_position
	.literal .LC153, esp_netif
	.align	4
	.global	tcpip_adapter_sta_input
	.type	tcpip_adapter_sta_input, @function
tcpip_adapter_sta_input:
.LFB51:
	.loc 1 936 0
.LVL379:
	entry	sp, 32
.LCFI42:
	.loc 1 937 0
	mov.n	a13, a4
	extui	a12, a3, 0, 16
	mov.n	a11, a2
	l32r	a8, .LC153
	l32i.n	a10, a8, 0
	call8	wlanif_input
.LVL380:
	.loc 1 939 0
	movi.n	a2, 0
.LVL381:
	retw.n
.LFE51:
	.size	tcpip_adapter_sta_input, .-tcpip_adapter_sta_input
	.section	.text.tcpip_adapter_ap_input,"ax",@progbits
	.literal_position
	.literal .LC154, esp_netif
	.align	4
	.global	tcpip_adapter_ap_input
	.type	tcpip_adapter_ap_input, @function
tcpip_adapter_ap_input:
.LFB52:
	.loc 1 942 0
.LVL382:
	entry	sp, 32
.LCFI43:
	.loc 1 943 0
	mov.n	a13, a4
	extui	a12, a3, 0, 16
	mov.n	a11, a2
	l32r	a8, .LC154
	l32i.n	a10, a8, 4
	call8	wlanif_input
.LVL383:
	.loc 1 945 0
	movi.n	a2, 0
.LVL384:
	retw.n
.LFE52:
	.size	tcpip_adapter_ap_input, .-tcpip_adapter_ap_input
	.section	.text.tcpip_adapter_get_esp_if,"ax",@progbits
	.literal_position
	.literal .LC155, esp_netif
	.align	4
	.global	tcpip_adapter_get_esp_if
	.type	tcpip_adapter_get_esp_if, @function
tcpip_adapter_get_esp_if:
.LFB53:
	.loc 1 956 0
.LVL385:
	entry	sp, 32
.LCFI44:
.LVL386:
	.loc 1 959 0
	l32r	a8, .LC155
	l32i.n	a8, a8, 0
	beq	a2, a8, .L218
	.loc 1 961 0
	l32r	a8, .LC155
	l32i.n	a8, a8, 4
	beq	a2, a8, .L219
	.loc 1 963 0
	l32r	a8, .LC155
	l32i.n	a8, a8, 8
	bne	a2, a8, .L220
	.loc 1 964 0
	movi.n	a2, 2
.LVL387:
	retw.n
.LVL388:
.L218:
	.loc 1 960 0
	movi.n	a2, 0
.LVL389:
	retw.n
.LVL390:
.L219:
	.loc 1 962 0
	movi.n	a2, 1
.LVL391:
	retw.n
.LVL392:
.L220:
	.loc 1 967 0
	movi.n	a2, 3
.LVL393:
	.loc 1 968 0
	retw.n
.LFE53:
	.size	tcpip_adapter_get_esp_if, .-tcpip_adapter_get_esp_if
	.section	.text.tcpip_adapter_get_sta_list,"ax",@progbits
	.literal_position
	.literal .LC156, 20480
	.align	4
	.global	tcpip_adapter_get_sta_list
	.type	tcpip_adapter_get_sta_list, @function
tcpip_adapter_get_sta_list:
.LFB54:
	.loc 1 971 0
.LVL394:
	entry	sp, 32
.LCFI45:
	.loc 1 974 0
	movi.n	a4, 1
	movi.n	a8, 0
	mov.n	a5, a8
	moveqz	a5, a4, a2
	.loc 1 974 0
	movnez	a4, a8, a3
	or	a4, a4, a5
	.loc 1 974 0
	bne	a4, a8, .L225
	.loc 1 978 0
	movi	a12, 0x7c
	mov.n	a11, a8
	mov.n	a10, a3
	call8	memset
.LVL395:
	.loc 1 979 0
	l32i.n	a4, a2, 60
	s32i	a4, a3, 120
.LVL396:
	.loc 1 980 0
	movi.n	a5, 0
	j	.L223
.LVL397:
.L224:
	.loc 1 981 0 discriminator 3
	slli	a8, a5, 1
	add.n	a9, a8, a5
	slli	a4, a9, 2
	add.n	a4, a3, a4
	add.n	a8, a8, a5
	slli	a11, a8, 1
	movi.n	a12, 6
	add.n	a11, a2, a11
	mov.n	a10, a4
	call8	memcpy
.LVL398:
	.loc 1 982 0 discriminator 3
	addi.n	a11, a4, 8
	mov.n	a10, a4
	call8	dhcp_search_ip_on_mac
.LVL399:
	.loc 1 980 0 discriminator 3
	addi.n	a5, a5, 1
.LVL400:
.L223:
	.loc 1 980 0 is_stmt 0 discriminator 1
	l32i.n	a4, a2, 60
	blt	a5, a4, .L224
	.loc 1 985 0 is_stmt 1
	movi.n	a2, 0
.LVL401:
	retw.n
.LVL402:
.L225:
	.loc 1 975 0
	l32r	a2, .LC156
.LVL403:
	.loc 1 986 0
	retw.n
.LFE54:
	.size	tcpip_adapter_get_sta_list, .-tcpip_adapter_get_sta_list
	.section	.text.tcpip_adapter_set_hostname,"ax",@progbits
	.literal_position
	.literal .LC157, 20480
	.literal .LC158, 20481
	.literal .LC159, tcpip_inited
	.literal .LC160, .LC30
	.literal .LC161, .LC40
	.literal .LC162, tcpip_adapter_set_hostname_api
	.literal .LC163, esp_netif
	.literal .LC164, hostinfo$7359
	.align	4
	.global	tcpip_adapter_set_hostname
	.type	tcpip_adapter_set_hostname, @function
tcpip_adapter_set_hostname:
.LFB55:
	.loc 1 989 0
.LVL404:
	entry	sp, 64
.LCFI46:
.LBB34:
	.loc 1 991 0
	l32r	a8, .LC159
	l8ui	a8, a8, 0
	bnez.n	a8, .L227
	.loc 1 991 0 discriminator 3
	call8	esp_log_timestamp
.LVL405:
	l32r	a11, .LC160
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC161
	movi.n	a10, 1
	call8	esp_log_write
.LVL406:
	call8	abort
.LVL407:
.L227:
	.loc 1 991 0 is_stmt 0 discriminator 2
	movi.n	a8, 0
	s32i.n	a8, sp, 0
	s32i.n	a8, sp, 4
	s32i.n	a8, sp, 16
	s32i.n	a8, sp, 20
	s32i.n	a2, sp, 12
	s32i.n	a3, sp, 24
	l32r	a8, .LC162
	s32i.n	a8, sp, 8
	mov.n	a10, sp
	call8	tcpip_adapter_ipc_check
.LVL408:
	bnei	a10, 1, .L228
	.loc 1 991 0 discriminator 10
	l32i.n	a2, sp, 4
.LVL409:
	retw.n
.LVL410:
.L228:
.LBE34:
	.loc 1 995 0 is_stmt 1
	movi.n	a8, 1
	bgeui	a2, 3, .L230
	movi.n	a8, 0
.L230:
	extui	a8, a8, 0, 8
	movi.n	a10, 0
	movi.n	a9, 1
	movnez	a9, a10, a3
	or	a8, a9, a8
	bne	a8, a10, .L231
	.loc 1 999 0
	mov.n	a10, a3
	call8	strlen
.LVL411:
	movi.n	a8, 0x20
	bltu	a8, a10, .L232
	.loc 1 1003 0
	l32r	a8, .LC163
	addx4	a8, a2, a8
	l32i.n	a4, a8, 0
.LVL412:
	.loc 1 1004 0
	beqz.n	a4, .L233
	.loc 1 1005 0
	slli	a5, a2, 5
	add.n	a2, a5, a2
.LVL413:
	l32r	a8, .LC164
	add.n	a2, a2, a8
	movi.n	a5, 0x21
	mov.n	a12, a5
	movi.n	a11, 0
	mov.n	a10, a2
	call8	memset
.LVL414:
	.loc 1 1006 0
	mov.n	a12, a5
	mov.n	a11, a3
	mov.n	a10, a2
	call8	strlcpy
.LVL415:
	.loc 1 1007 0
	s32i	a2, a4, 168
	.loc 1 1008 0
	movi.n	a2, 0
	retw.n
.LVL416:
.L231:
	.loc 1 996 0
	l32r	a2, .LC157
.LVL417:
	retw.n
.LVL418:
.L232:
	.loc 1 1000 0
	l32r	a2, .LC157
.LVL419:
	retw.n
.LVL420:
.L233:
	.loc 1 1010 0
	l32r	a2, .LC158
.LVL421:
	.loc 1 1015 0
	retw.n
.LFE55:
	.size	tcpip_adapter_set_hostname, .-tcpip_adapter_set_hostname
	.section	.text.tcpip_adapter_set_hostname_api,"ax",@progbits
	.align	4
	.type	tcpip_adapter_set_hostname_api, @function
tcpip_adapter_set_hostname_api:
.LFB56:
	.loc 1 1018 0
.LVL422:
	entry	sp, 32
.LCFI47:
	.loc 1 1019 0
	l32i.n	a11, a2, 24
	l32i.n	a10, a2, 12
	call8	tcpip_adapter_set_hostname
.LVL423:
	.loc 1 1020 0
	mov.n	a2, a10
.LVL424:
	retw.n
.LFE56:
	.size	tcpip_adapter_set_hostname_api, .-tcpip_adapter_set_hostname_api
	.section	.text.tcpip_adapter_get_hostname,"ax",@progbits
	.literal_position
	.literal .LC165, 20480
	.literal .LC166, esp_netif
	.align	4
	.global	tcpip_adapter_get_hostname
	.type	tcpip_adapter_get_hostname, @function
tcpip_adapter_get_hostname:
.LFB57:
	.loc 1 1023 0
.LVL425:
	entry	sp, 32
.LCFI48:
.LVL426:
	.loc 1 1026 0
	movi.n	a8, 1
	bgeui	a2, 3, .L236
	movi.n	a8, 0
.L236:
	extui	a8, a8, 0, 8
	movi.n	a10, 0
	movi.n	a9, 1
	movnez	a9, a10, a3
	or	a8, a9, a8
	bne	a8, a10, .L238
	.loc 1 1030 0
	l32r	a8, .LC166
	addx4	a2, a2, a8
.LVL427:
	l32i.n	a2, a2, 0
.LVL428:
	.loc 1 1031 0
	beq	a2, a10, .L239
	.loc 1 1032 0
	l32i	a2, a2, 168
.LVL429:
	s32i.n	a2, a3, 0
	.loc 1 1033 0
	mov.n	a2, a10
	retw.n
.LVL430:
.L238:
	.loc 1 1027 0
	l32r	a2, .LC165
.LVL431:
	retw.n
.LVL432:
.L239:
	.loc 1 1035 0
	l32r	a2, .LC165
.LVL433:
	.loc 1 1040 0
	retw.n
.LFE57:
	.size	tcpip_adapter_get_hostname, .-tcpip_adapter_get_hostname
	.section	.bss.hostinfo$7359,"aw",@nobits
	.align	4
	.type	hostinfo$7359, @object
	.size	hostinfo$7359, 99
hostinfo$7359:
	.zero	99
	.section	.rodata.__func__$7151,"a",@progbits
	.align	4
	.type	__func__$7151, @object
	.size	__func__$7151, 20
__func__$7151:
	.string	"tcpip_adapter_start"
	.section	.bss.api_lock_sem,"aw",@nobits
	.align	4
	.type	api_lock_sem, @object
	.size	api_lock_sem, 4
api_lock_sem:
	.zero	4
	.section	.bss.tcpip_inited,"aw",@nobits
	.type	tcpip_inited, @object
	.size	tcpip_inited, 1
tcpip_inited:
	.zero	1
	.section	.bss.api_sync_sem,"aw",@nobits
	.align	4
	.type	api_sync_sem, @object
	.size	api_sync_sem, 4
api_sync_sem:
	.zero	4
	.section	.bss.dhcpc_status,"aw",@nobits
	.align	4
	.type	dhcpc_status, @object
	.size	dhcpc_status, 12
dhcpc_status:
	.zero	12
	.section	.bss.dhcps_status,"aw",@nobits
	.align	4
	.type	dhcps_status, @object
	.size	dhcps_status, 4
dhcps_status:
	.zero	4
	.section	.bss.esp_ip_lost_timer,"aw",@nobits
	.align	4
	.type	esp_ip_lost_timer, @object
	.size	esp_ip_lost_timer, 3
esp_ip_lost_timer:
	.zero	3
	.section	.bss.esp_netif_init_fn,"aw",@nobits
	.align	4
	.type	esp_netif_init_fn, @object
	.size	esp_netif_init_fn, 12
esp_netif_init_fn:
	.zero	12
	.section	.bss.esp_ip6,"aw",@nobits
	.align	4
	.type	esp_ip6, @object
	.size	esp_ip6, 48
esp_ip6:
	.zero	48
	.section	.bss.esp_ip_old,"aw",@nobits
	.align	4
	.type	esp_ip_old, @object
	.size	esp_ip_old, 36
esp_ip_old:
	.zero	36
	.section	.bss.esp_ip,"aw",@nobits
	.align	4
	.type	esp_ip, @object
	.size	esp_ip, 36
esp_ip:
	.zero	36
	.section	.bss.esp_netif,"aw",@nobits
	.align	4
	.type	esp_netif, @object
	.size	esp_netif, 12
esp_netif:
	.zero	12
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
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.byte	0x4
	.4byte	.LCFI0-.LFB58
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI1-.LFB25
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
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI3-.LFB9
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
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.byte	0x4
	.4byte	.LCFI5-.LFB43
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.byte	0x4
	.4byte	.LCFI6-.LFB44
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI7-.LFB31
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.byte	0x4
	.4byte	.LCFI8-.LFB42
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI9-.LFB10
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI10-.LFB14
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI11-.LFB18
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI12-.LFB15
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI13-.LFB16
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI14-.LFB17
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI15-.LFB19
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI16-.LFB20
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI17-.LFB21
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI18-.LFB22
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI19-.LFB23
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE38:
.LSFDE40:
	.4byte	.LEFDE40-.LASFDE40
.LASFDE40:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI20-.LFB24
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE40:
.LSFDE42:
	.4byte	.LEFDE42-.LASFDE42
.LASFDE42:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI21-.LFB26
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE42:
.LSFDE44:
	.4byte	.LEFDE44-.LASFDE44
.LASFDE44:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI22-.LFB27
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE44:
.LSFDE46:
	.4byte	.LEFDE46-.LASFDE46
.LASFDE46:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI23-.LFB28
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE46:
.LSFDE48:
	.4byte	.LEFDE48-.LASFDE48
.LASFDE48:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI24-.LFB32
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE48:
.LSFDE50:
	.4byte	.LEFDE50-.LASFDE50
.LASFDE50:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI25-.LFB33
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE50:
.LSFDE52:
	.4byte	.LEFDE52-.LASFDE52
.LASFDE52:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI26-.LFB34
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE52:
.LSFDE54:
	.4byte	.LEFDE54-.LASFDE54
.LASFDE54:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI27-.LFB35
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE54:
.LSFDE56:
	.4byte	.LEFDE56-.LASFDE56
.LASFDE56:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI28-.LFB36
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE56:
.LSFDE58:
	.4byte	.LEFDE58-.LASFDE58
.LASFDE58:
	.4byte	.Lframe0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x4
	.4byte	.LCFI29-.LFB37
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE58:
.LSFDE60:
	.4byte	.LEFDE60-.LASFDE60
.LASFDE60:
	.4byte	.Lframe0
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x4
	.4byte	.LCFI30-.LFB38
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE60:
.LSFDE62:
	.4byte	.LEFDE62-.LASFDE62
.LASFDE62:
	.4byte	.Lframe0
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x4
	.4byte	.LCFI31-.LFB39
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE62:
.LSFDE64:
	.4byte	.LEFDE64-.LASFDE64
.LASFDE64:
	.4byte	.Lframe0
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x4
	.4byte	.LCFI32-.LFB40
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE64:
.LSFDE66:
	.4byte	.LEFDE66-.LASFDE66
.LASFDE66:
	.4byte	.Lframe0
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.byte	0x4
	.4byte	.LCFI33-.LFB41
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE66:
.LSFDE68:
	.4byte	.LEFDE68-.LASFDE68
.LASFDE68:
	.4byte	.Lframe0
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.byte	0x4
	.4byte	.LCFI34-.LFB45
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE68:
.LSFDE70:
	.4byte	.LEFDE70-.LASFDE70
.LASFDE70:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI35-.LFB29
	.byte	0xe
	.uleb128 0x60
	.align	4
.LEFDE70:
.LSFDE72:
	.4byte	.LEFDE72-.LASFDE72
.LASFDE72:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI36-.LFB30
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE72:
.LSFDE74:
	.4byte	.LEFDE74-.LASFDE74
.LASFDE74:
	.4byte	.Lframe0
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.byte	0x4
	.4byte	.LCFI37-.LFB46
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE74:
.LSFDE76:
	.4byte	.LEFDE76-.LASFDE76
.LASFDE76:
	.4byte	.Lframe0
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.byte	0x4
	.4byte	.LCFI38-.LFB47
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE76:
.LSFDE78:
	.4byte	.LEFDE78-.LASFDE78
.LASFDE78:
	.4byte	.Lframe0
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.byte	0x4
	.4byte	.LCFI39-.LFB48
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE78:
.LSFDE80:
	.4byte	.LEFDE80-.LASFDE80
.LASFDE80:
	.4byte	.Lframe0
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.byte	0x4
	.4byte	.LCFI40-.LFB49
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE80:
.LSFDE82:
	.4byte	.LEFDE82-.LASFDE82
.LASFDE82:
	.4byte	.Lframe0
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.byte	0x4
	.4byte	.LCFI41-.LFB50
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE82:
.LSFDE84:
	.4byte	.LEFDE84-.LASFDE84
.LASFDE84:
	.4byte	.Lframe0
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.byte	0x4
	.4byte	.LCFI42-.LFB51
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE84:
.LSFDE86:
	.4byte	.LEFDE86-.LASFDE86
.LASFDE86:
	.4byte	.Lframe0
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.byte	0x4
	.4byte	.LCFI43-.LFB52
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE86:
.LSFDE88:
	.4byte	.LEFDE88-.LASFDE88
.LASFDE88:
	.4byte	.Lframe0
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.byte	0x4
	.4byte	.LCFI44-.LFB53
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE88:
.LSFDE90:
	.4byte	.LEFDE90-.LASFDE90
.LASFDE90:
	.4byte	.Lframe0
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.byte	0x4
	.4byte	.LCFI45-.LFB54
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE90:
.LSFDE92:
	.4byte	.LEFDE92-.LASFDE92
.LASFDE92:
	.4byte	.Lframe0
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.byte	0x4
	.4byte	.LCFI46-.LFB55
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE92:
.LSFDE94:
	.4byte	.LEFDE94-.LASFDE94
.LASFDE94:
	.4byte	.Lframe0
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.byte	0x4
	.4byte	.LCFI47-.LFB56
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE94:
.LSFDE96:
	.4byte	.LEFDE96-.LASFDE96
.LASFDE96:
	.4byte	.Lframe0
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.byte	0x4
	.4byte	.LCFI48-.LFB57
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE96:
	.text
.Letext0:
	.file 2 "C:/esp/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "C:/esp/esp-idf/components/newlib/include/stdint.h"
	.file 4 "C:/esp/esp-idf/components/esp32/include/esp_err.h"
	.file 5 "C:/esp/esp-idf/components/esp32/include/esp_interface.h"
	.file 6 "C:/esp/esp-idf/components/esp32/include/esp_wifi_types.h"
	.file 7 "C:/esp/esp-idf/components/freertos/include/freertos/task.h"
	.file 8 "C:/esp/esp-idf/components/freertos/include/freertos/queue.h"
	.file 9 "C:/esp/esp-idf/components/freertos/include/freertos/semphr.h"
	.file 10 "C:/esp/esp-idf/components/lwip/include/lwip/port/arch/sys_arch.h"
	.file 11 "C:/esp/esp-idf/components/lwip/include/lwip/port/arch/cc.h"
	.file 12 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/ip4_addr.h"
	.file 13 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/ip6_addr.h"
	.file 14 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/ip_addr.h"
	.file 15 "C:/esp/esp-idf/components/lwip/include/lwip/apps/dhcpserver.h"
	.file 16 "C:/esp/esp-idf/components/tcpip_adapter/include/tcpip_adapter.h"
	.file 17 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/err.h"
	.file 18 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/pbuf.h"
	.file 19 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/netif.h"
	.file 20 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/memp.h"
	.file 21 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/dhcp.h"
	.file 22 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/udp.h"
	.file 23 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/tcpip.h"
	.file 24 "C:/esp/esp-idf/components/esp32/include/esp_event.h"
	.file 25 "C:/esp/esp-idf/components/lwip/include/lwip/apps/dhcpserver_options.h"
	.file 26 "C:/esp/esp-idf/components/log/include/esp_log.h"
	.file 27 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/sys.h"
	.file 28 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/priv/tcpip_priv.h"
	.file 29 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/timers.h"
	.file 30 "C:/esp/esp-idf/components/newlib/include/string.h"
	.file 31 "C:/esp/esp-idf/components/newlib/include/stdlib.h"
	.file 32 "C:/esp/esp-idf/components/newlib/include/assert.h"
	.file 33 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/nd6.h"
	.file 34 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/def.h"
	.file 35 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/dns.h"
	.file 36 "C:/esp/esp-idf/components/lwip/include/lwip/port/netif/ethernetif.h"
	.file 37 "C:/esp/esp-idf/components/lwip/include/lwip/port/netif/wlanif.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2fd0
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF489
	.byte	0xc
	.4byte	.LASF490
	.4byte	.LASF491
	.4byte	.Ldebug_ranges0+0x78
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF0
	.byte	0x2
	.byte	0x11
	.4byte	0x30
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x2
	.4byte	.LASF1
	.byte	0x2
	.byte	0x12
	.4byte	0x42
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x2
	.4byte	.LASF5
	.byte	0x2
	.byte	0x16
	.4byte	0x5b
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x2
	.4byte	.LASF7
	.byte	0x2
	.byte	0x19
	.4byte	0x6d
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.4byte	.LASF8
	.byte	0x2
	.byte	0x1a
	.4byte	0x7f
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb1
	.uleb128 0x7
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x6
	.byte	0x4
	.4byte	0xbf
	.uleb128 0x8
	.4byte	0xb2
	.uleb128 0x2
	.4byte	.LASF16
	.byte	0x3
	.byte	0x14
	.4byte	0x25
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x3
	.byte	0x15
	.4byte	0x37
	.uleb128 0x2
	.4byte	.LASF18
	.byte	0x3
	.byte	0x21
	.4byte	0x50
	.uleb128 0x2
	.4byte	.LASF19
	.byte	0x3
	.byte	0x2c
	.4byte	0x62
	.uleb128 0x2
	.4byte	.LASF20
	.byte	0x3
	.byte	0x2d
	.4byte	0x74
	.uleb128 0x2
	.4byte	.LASF21
	.byte	0x4
	.byte	0x18
	.4byte	0xe5
	.uleb128 0x9
	.byte	0x4
	.4byte	0x7f
	.byte	0x5
	.byte	0x19
	.4byte	0x12b
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.4byte	.LASF26
	.byte	0x5
	.byte	0x1e
	.4byte	0x106
	.uleb128 0x9
	.byte	0x4
	.4byte	0x7f
	.byte	0x6
	.byte	0x32
	.4byte	0x16d
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF31
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF32
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF33
	.byte	0x6
	.byte	0
	.uleb128 0x2
	.4byte	.LASF34
	.byte	0x6
	.byte	0x3a
	.4byte	0x136
	.uleb128 0x6
	.byte	0x4
	.4byte	0xcf
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF35
	.uleb128 0xb
	.4byte	0xcf
	.4byte	0x195
	.uleb128 0xc
	.4byte	0x9d
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.4byte	0xcf
	.4byte	0x1a5
	.uleb128 0xc
	.4byte	0x9d
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.byte	0x6
	.byte	0x6
	.byte	0xba
	.4byte	0x1ba
	.uleb128 0xe
	.string	"mac"
	.byte	0x6
	.byte	0xbb
	.4byte	0x185
	.byte	0
	.byte	0
	.uleb128 0x2
	.4byte	.LASF36
	.byte	0x6
	.byte	0xbc
	.4byte	0x1a5
	.uleb128 0xd
	.byte	0x40
	.byte	0x6
	.byte	0xc0
	.4byte	0x1e6
	.uleb128 0xe
	.string	"sta"
	.byte	0x6
	.byte	0xc1
	.4byte	0x1e6
	.byte	0
	.uleb128 0xe
	.string	"num"
	.byte	0x6
	.byte	0xc2
	.4byte	0x6d
	.byte	0x3c
	.byte	0
	.uleb128 0xb
	.4byte	0x1ba
	.4byte	0x1f6
	.uleb128 0xc
	.4byte	0x9d
	.byte	0x9
	.byte	0
	.uleb128 0x2
	.4byte	.LASF37
	.byte	0x6
	.byte	0xc3
	.4byte	0x1c5
	.uleb128 0x6
	.byte	0x4
	.4byte	0x207
	.uleb128 0xf
	.4byte	0x212
	.uleb128 0x10
	.4byte	0x94
	.byte	0
	.uleb128 0x2
	.4byte	.LASF38
	.byte	0x7
	.byte	0x6c
	.4byte	0x94
	.uleb128 0x2
	.4byte	.LASF39
	.byte	0x8
	.byte	0x58
	.4byte	0x94
	.uleb128 0x2
	.4byte	.LASF40
	.byte	0x9
	.byte	0x4f
	.4byte	0x21d
	.uleb128 0x2
	.4byte	.LASF41
	.byte	0xa
	.byte	0x2e
	.4byte	0x228
	.uleb128 0x2
	.4byte	.LASF42
	.byte	0xa
	.byte	0x30
	.4byte	0x212
	.uleb128 0x2
	.4byte	.LASF43
	.byte	0xb
	.byte	0x2e
	.4byte	0xcf
	.uleb128 0x2
	.4byte	.LASF44
	.byte	0xb
	.byte	0x2f
	.4byte	0xc4
	.uleb128 0x2
	.4byte	.LASF45
	.byte	0xb
	.byte	0x30
	.4byte	0xda
	.uleb128 0x2
	.4byte	.LASF46
	.byte	0xb
	.byte	0x32
	.4byte	0xf0
	.uleb128 0x11
	.4byte	.LASF48
	.byte	0x4
	.byte	0xc
	.byte	0x2e
	.4byte	0x28e
	.uleb128 0x12
	.4byte	.LASF47
	.byte	0xc
	.byte	0x2f
	.4byte	0x26a
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	.LASF49
	.byte	0x4
	.byte	0xc
	.byte	0x38
	.4byte	0x2a7
	.uleb128 0x12
	.4byte	.LASF47
	.byte	0xc
	.byte	0x39
	.4byte	0x26a
	.byte	0
	.byte	0
	.uleb128 0x2
	.4byte	.LASF50
	.byte	0xc
	.byte	0x42
	.4byte	0x275
	.uleb128 0x2
	.4byte	.LASF51
	.byte	0xc
	.byte	0x43
	.4byte	0x28e
	.uleb128 0x11
	.4byte	.LASF52
	.byte	0x10
	.byte	0xd
	.byte	0x39
	.4byte	0x2d6
	.uleb128 0x12
	.4byte	.LASF47
	.byte	0xd
	.byte	0x3a
	.4byte	0x2d6
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0x26a
	.4byte	0x2e6
	.uleb128 0xc
	.4byte	0x9d
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.4byte	.LASF53
	.byte	0xd
	.byte	0x4b
	.4byte	0x2bd
	.uleb128 0x13
	.byte	0x10
	.byte	0xe
	.byte	0x37
	.4byte	0x310
	.uleb128 0x14
	.string	"ip6"
	.byte	0xe
	.byte	0x38
	.4byte	0x2e6
	.uleb128 0x14
	.string	"ip4"
	.byte	0xe
	.byte	0x39
	.4byte	0x2a7
	.byte	0
	.uleb128 0x11
	.4byte	.LASF54
	.byte	0x14
	.byte	0xe
	.byte	0x36
	.4byte	0x335
	.uleb128 0x12
	.4byte	.LASF55
	.byte	0xe
	.byte	0x3a
	.4byte	0x2f1
	.byte	0
	.uleb128 0x12
	.4byte	.LASF56
	.byte	0xe
	.byte	0x3b
	.4byte	0x249
	.byte	0x10
	.byte	0
	.uleb128 0x2
	.4byte	.LASF57
	.byte	0xe
	.byte	0x3c
	.4byte	0x310
	.uleb128 0xb
	.4byte	0x249
	.4byte	0x350
	.uleb128 0xc
	.4byte	0x9d
	.byte	0xf
	.byte	0
	.uleb128 0xb
	.4byte	0x249
	.4byte	0x360
	.uleb128 0xc
	.4byte	0x9d
	.byte	0x3f
	.byte	0
	.uleb128 0xb
	.4byte	0x249
	.4byte	0x370
	.uleb128 0xc
	.4byte	0x9d
	.byte	0x7f
	.byte	0
	.uleb128 0xd
	.byte	0xc
	.byte	0xf
	.byte	0x28
	.4byte	0x39d
	.uleb128 0x12
	.4byte	.LASF58
	.byte	0xf
	.byte	0x29
	.4byte	0x17e
	.byte	0
	.uleb128 0x12
	.4byte	.LASF59
	.byte	0xf
	.byte	0x2a
	.4byte	0x2a7
	.byte	0x4
	.uleb128 0x12
	.4byte	.LASF60
	.byte	0xf
	.byte	0x2b
	.4byte	0x2a7
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.4byte	.LASF61
	.byte	0xf
	.byte	0x2c
	.4byte	0x370
	.uleb128 0x15
	.4byte	.LASF492
	.byte	0x4
	.4byte	0x7f
	.byte	0xf
	.byte	0x2e
	.4byte	0x3cb
	.uleb128 0xa
	.4byte	.LASF62
	.byte	0
	.uleb128 0xa
	.4byte	.LASF63
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF64
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.4byte	0x249
	.4byte	0x3db
	.uleb128 0xc
	.4byte	0x9d
	.byte	0x5
	.byte	0
	.uleb128 0xd
	.byte	0xc
	.byte	0x10
	.byte	0x48
	.4byte	0x406
	.uleb128 0xe
	.string	"ip"
	.byte	0x10
	.byte	0x49
	.4byte	0x2a7
	.byte	0
	.uleb128 0x12
	.4byte	.LASF65
	.byte	0x10
	.byte	0x4a
	.4byte	0x2a7
	.byte	0x4
	.uleb128 0xe
	.string	"gw"
	.byte	0x10
	.byte	0x4b
	.4byte	0x2a7
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.4byte	.LASF66
	.byte	0x10
	.byte	0x4c
	.4byte	0x3db
	.uleb128 0xd
	.byte	0x10
	.byte	0x10
	.byte	0x4e
	.4byte	0x425
	.uleb128 0xe
	.string	"ip"
	.byte	0x10
	.byte	0x4f
	.4byte	0x2e6
	.byte	0
	.byte	0
	.uleb128 0x2
	.4byte	.LASF67
	.byte	0x10
	.byte	0x50
	.4byte	0x411
	.uleb128 0xd
	.byte	0xc
	.byte	0x10
	.byte	0x55
	.4byte	0x450
	.uleb128 0xe
	.string	"mac"
	.byte	0x10
	.byte	0x56
	.4byte	0x185
	.byte	0
	.uleb128 0xe
	.string	"ip"
	.byte	0x10
	.byte	0x57
	.4byte	0x2a7
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.4byte	.LASF68
	.byte	0x10
	.byte	0x58
	.4byte	0x430
	.uleb128 0xd
	.byte	0x7c
	.byte	0x10
	.byte	0x5a
	.4byte	0x47c
	.uleb128 0xe
	.string	"sta"
	.byte	0x10
	.byte	0x5b
	.4byte	0x47c
	.byte	0
	.uleb128 0xe
	.string	"num"
	.byte	0x10
	.byte	0x5c
	.4byte	0x6d
	.byte	0x78
	.byte	0
	.uleb128 0xb
	.4byte	0x450
	.4byte	0x48c
	.uleb128 0xc
	.4byte	0x9d
	.byte	0x9
	.byte	0
	.uleb128 0x2
	.4byte	.LASF69
	.byte	0x10
	.byte	0x5d
	.4byte	0x45b
	.uleb128 0x9
	.byte	0x4
	.4byte	0x7f
	.byte	0x10
	.byte	0x6d
	.4byte	0x4bc
	.uleb128 0xa
	.4byte	.LASF70
	.byte	0
	.uleb128 0xa
	.4byte	.LASF71
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF72
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF73
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.4byte	.LASF74
	.byte	0x10
	.byte	0x72
	.4byte	0x497
	.uleb128 0x9
	.byte	0x4
	.4byte	0x7f
	.byte	0x10
	.byte	0x75
	.4byte	0x4ec
	.uleb128 0xa
	.4byte	.LASF75
	.byte	0
	.uleb128 0xa
	.4byte	.LASF76
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF77
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF78
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.4byte	.LASF79
	.byte	0x10
	.byte	0x7a
	.4byte	0x4c7
	.uleb128 0x9
	.byte	0x4
	.4byte	0x7f
	.byte	0x10
	.byte	0x7d
	.4byte	0x51c
	.uleb128 0xa
	.4byte	.LASF80
	.byte	0
	.uleb128 0xa
	.4byte	.LASF81
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF82
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF83
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.4byte	.LASF84
	.byte	0x10
	.byte	0x82
	.4byte	0x4f7
	.uleb128 0x9
	.byte	0x4
	.4byte	0x7f
	.byte	0x10
	.byte	0x84
	.4byte	0x54c
	.uleb128 0xa
	.4byte	.LASF85
	.byte	0x20
	.uleb128 0xa
	.4byte	.LASF86
	.byte	0x32
	.uleb128 0xa
	.4byte	.LASF87
	.byte	0x33
	.uleb128 0xa
	.4byte	.LASF88
	.byte	0x34
	.byte	0
	.uleb128 0x2
	.4byte	.LASF89
	.byte	0x10
	.byte	0x89
	.4byte	0x527
	.uleb128 0x2
	.4byte	.LASF90
	.byte	0x10
	.byte	0x8c
	.4byte	0x562
	.uleb128 0x6
	.byte	0x4
	.4byte	0x568
	.uleb128 0x16
	.4byte	0x6d
	.4byte	0x577
	.uleb128 0x10
	.4byte	0x577
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x57d
	.uleb128 0x11
	.4byte	.LASF91
	.byte	0x1c
	.byte	0x10
	.byte	0x8d
	.4byte	0x5de
	.uleb128 0x12
	.4byte	.LASF56
	.byte	0x10
	.byte	0x8e
	.4byte	0x6d
	.byte	0
	.uleb128 0xe
	.string	"ret"
	.byte	0x10
	.byte	0x8f
	.4byte	0x6d
	.byte	0x4
	.uleb128 0x12
	.4byte	.LASF92
	.byte	0x10
	.byte	0x90
	.4byte	0x557
	.byte	0x8
	.uleb128 0x12
	.4byte	.LASF93
	.byte	0x10
	.byte	0x91
	.4byte	0x4bc
	.byte	0xc
	.uleb128 0x12
	.4byte	.LASF94
	.byte	0x10
	.byte	0x92
	.4byte	0x5de
	.byte	0x10
	.uleb128 0xe
	.string	"mac"
	.byte	0x10
	.byte	0x93
	.4byte	0x178
	.byte	0x14
	.uleb128 0x12
	.4byte	.LASF95
	.byte	0x10
	.byte	0x94
	.4byte	0xb9
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x406
	.uleb128 0x2
	.4byte	.LASF96
	.byte	0x10
	.byte	0x95
	.4byte	0x57d
	.uleb128 0x11
	.4byte	.LASF97
	.byte	0x1
	.byte	0x10
	.byte	0xaf
	.4byte	0x608
	.uleb128 0x12
	.4byte	.LASF98
	.byte	0x10
	.byte	0xb0
	.4byte	0x17e
	.byte	0
	.byte	0
	.uleb128 0x2
	.4byte	.LASF99
	.byte	0x10
	.byte	0xb1
	.4byte	0x5ef
	.uleb128 0x2
	.4byte	.LASF100
	.byte	0x11
	.byte	0x2f
	.4byte	0x254
	.uleb128 0x11
	.4byte	.LASF101
	.byte	0x18
	.byte	0x12
	.byte	0x6c
	.4byte	0x697
	.uleb128 0x12
	.4byte	.LASF102
	.byte	0x12
	.byte	0x6e
	.4byte	0x697
	.byte	0
	.uleb128 0x12
	.4byte	.LASF103
	.byte	0x12
	.byte	0x71
	.4byte	0x94
	.byte	0x4
	.uleb128 0x12
	.4byte	.LASF104
	.byte	0x12
	.byte	0x7a
	.4byte	0x25f
	.byte	0x8
	.uleb128 0xe
	.string	"len"
	.byte	0x12
	.byte	0x7d
	.4byte	0x25f
	.byte	0xa
	.uleb128 0x12
	.4byte	.LASF56
	.byte	0x12
	.byte	0x80
	.4byte	0x249
	.byte	0xc
	.uleb128 0x12
	.4byte	.LASF105
	.byte	0x12
	.byte	0x83
	.4byte	0x249
	.byte	0xd
	.uleb128 0xe
	.string	"ref"
	.byte	0x12
	.byte	0x8a
	.4byte	0x25f
	.byte	0xe
	.uleb128 0x12
	.4byte	.LASF106
	.byte	0x12
	.byte	0x8d
	.4byte	0x7f9
	.byte	0x10
	.uleb128 0x12
	.4byte	.LASF107
	.byte	0x12
	.byte	0x8e
	.4byte	0x94
	.byte	0x14
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x61e
	.uleb128 0x11
	.4byte	.LASF108
	.byte	0xc8
	.byte	0x13
	.byte	0xbd
	.4byte	0x7f9
	.uleb128 0x12
	.4byte	.LASF102
	.byte	0x13
	.byte	0xbf
	.4byte	0x7f9
	.byte	0
	.uleb128 0x12
	.4byte	.LASF109
	.byte	0x13
	.byte	0xc3
	.4byte	0x335
	.byte	0x4
	.uleb128 0x12
	.4byte	.LASF65
	.byte	0x13
	.byte	0xc4
	.4byte	0x335
	.byte	0x18
	.uleb128 0xe
	.string	"gw"
	.byte	0x13
	.byte	0xc5
	.4byte	0x335
	.byte	0x2c
	.uleb128 0x12
	.4byte	.LASF52
	.byte	0x13
	.byte	0xc9
	.4byte	0x9c2
	.byte	0x40
	.uleb128 0x12
	.4byte	.LASF110
	.byte	0x13
	.byte	0xcc
	.4byte	0x9d2
	.byte	0x7c
	.uleb128 0x12
	.4byte	.LASF111
	.byte	0x13
	.byte	0xce
	.4byte	0x9f2
	.byte	0x80
	.uleb128 0x12
	.4byte	.LASF112
	.byte	0x13
	.byte	0xd4
	.4byte	0x89e
	.byte	0x84
	.uleb128 0x12
	.4byte	.LASF113
	.byte	0x13
	.byte	0xd9
	.4byte	0x8c3
	.byte	0x88
	.uleb128 0x12
	.4byte	.LASF114
	.byte	0x13
	.byte	0xde
	.4byte	0x92d
	.byte	0x8c
	.uleb128 0x12
	.4byte	.LASF115
	.byte	0x13
	.byte	0xe3
	.4byte	0x8f8
	.byte	0x90
	.uleb128 0x12
	.4byte	.LASF116
	.byte	0x13
	.byte	0xf5
	.4byte	0x94
	.byte	0x94
	.uleb128 0x12
	.4byte	.LASF117
	.byte	0x13
	.byte	0xf8
	.4byte	0xb24
	.byte	0x98
	.uleb128 0x12
	.4byte	.LASF118
	.byte	0x13
	.byte	0xfb
	.4byte	0xbd3
	.byte	0x9c
	.uleb128 0x12
	.4byte	.LASF119
	.byte	0x13
	.byte	0xfc
	.4byte	0x9b7
	.byte	0xa0
	.uleb128 0x17
	.4byte	.LASF120
	.byte	0x13
	.2byte	0x108
	.4byte	0x249
	.byte	0xa4
	.uleb128 0x17
	.4byte	.LASF121
	.byte	0x13
	.2byte	0x10d
	.4byte	0x249
	.byte	0xa5
	.uleb128 0x17
	.4byte	.LASF95
	.byte	0x13
	.2byte	0x117
	.4byte	0xb9
	.byte	0xa8
	.uleb128 0x18
	.string	"mtu"
	.byte	0x13
	.2byte	0x11f
	.4byte	0x25f
	.byte	0xac
	.uleb128 0x17
	.4byte	.LASF122
	.byte	0x13
	.2byte	0x121
	.4byte	0x249
	.byte	0xae
	.uleb128 0x17
	.4byte	.LASF123
	.byte	0x13
	.2byte	0x123
	.4byte	0x3cb
	.byte	0xaf
	.uleb128 0x17
	.4byte	.LASF105
	.byte	0x13
	.2byte	0x125
	.4byte	0x249
	.byte	0xb5
	.uleb128 0x17
	.4byte	.LASF124
	.byte	0x13
	.2byte	0x127
	.4byte	0xbd9
	.byte	0xb6
	.uleb128 0x18
	.string	"num"
	.byte	0x13
	.2byte	0x129
	.4byte	0x249
	.byte	0xb8
	.uleb128 0x17
	.4byte	.LASF125
	.byte	0x13
	.2byte	0x139
	.4byte	0x963
	.byte	0xbc
	.uleb128 0x17
	.4byte	.LASF126
	.byte	0x13
	.2byte	0x13f
	.4byte	0x98d
	.byte	0xc0
	.uleb128 0x17
	.4byte	.LASF127
	.byte	0x13
	.2byte	0x14f
	.4byte	0x201
	.byte	0xc4
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x69d
	.uleb128 0x9
	.byte	0x4
	.4byte	0x7f
	.byte	0x14
	.byte	0x2d
	.4byte	0x87e
	.uleb128 0xa
	.4byte	.LASF128
	.byte	0
	.uleb128 0xa
	.4byte	.LASF129
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF130
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF131
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF132
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF133
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF134
	.byte	0x6
	.uleb128 0xa
	.4byte	.LASF135
	.byte	0x7
	.uleb128 0xa
	.4byte	.LASF136
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF137
	.byte	0x9
	.uleb128 0xa
	.4byte	.LASF138
	.byte	0xa
	.uleb128 0xa
	.4byte	.LASF139
	.byte	0xb
	.uleb128 0xa
	.4byte	.LASF140
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF141
	.byte	0xd
	.uleb128 0xa
	.4byte	.LASF142
	.byte	0xe
	.uleb128 0xa
	.4byte	.LASF143
	.byte	0xf
	.uleb128 0xa
	.4byte	.LASF144
	.byte	0x10
	.uleb128 0xa
	.4byte	.LASF145
	.byte	0x11
	.uleb128 0xa
	.4byte	.LASF146
	.byte	0x12
	.byte	0
	.uleb128 0x2
	.4byte	.LASF147
	.byte	0x13
	.byte	0x7c
	.4byte	0x889
	.uleb128 0x6
	.byte	0x4
	.4byte	0x88f
	.uleb128 0x16
	.4byte	0x613
	.4byte	0x89e
	.uleb128 0x10
	.4byte	0x7f9
	.byte	0
	.uleb128 0x2
	.4byte	.LASF148
	.byte	0x13
	.byte	0x83
	.4byte	0x8a9
	.uleb128 0x6
	.byte	0x4
	.4byte	0x8af
	.uleb128 0x16
	.4byte	0x613
	.4byte	0x8c3
	.uleb128 0x10
	.4byte	0x697
	.uleb128 0x10
	.4byte	0x7f9
	.byte	0
	.uleb128 0x2
	.4byte	.LASF149
	.byte	0x13
	.byte	0x8e
	.4byte	0x8ce
	.uleb128 0x6
	.byte	0x4
	.4byte	0x8d4
	.uleb128 0x16
	.4byte	0x613
	.4byte	0x8ed
	.uleb128 0x10
	.4byte	0x7f9
	.uleb128 0x10
	.4byte	0x697
	.uleb128 0x10
	.4byte	0x8ed
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x8f3
	.uleb128 0x8
	.4byte	0x2a7
	.uleb128 0x2
	.4byte	.LASF150
	.byte	0x13
	.byte	0x9b
	.4byte	0x903
	.uleb128 0x6
	.byte	0x4
	.4byte	0x909
	.uleb128 0x16
	.4byte	0x613
	.4byte	0x922
	.uleb128 0x10
	.4byte	0x7f9
	.uleb128 0x10
	.4byte	0x697
	.uleb128 0x10
	.4byte	0x922
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x928
	.uleb128 0x8
	.4byte	0x2e6
	.uleb128 0x2
	.4byte	.LASF151
	.byte	0x13
	.byte	0xa5
	.4byte	0x938
	.uleb128 0x6
	.byte	0x4
	.4byte	0x93e
	.uleb128 0x16
	.4byte	0x613
	.4byte	0x952
	.uleb128 0x10
	.4byte	0x7f9
	.uleb128 0x10
	.4byte	0x697
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x958
	.uleb128 0xf
	.4byte	0x963
	.uleb128 0x10
	.4byte	0x7f9
	.byte	0
	.uleb128 0x2
	.4byte	.LASF152
	.byte	0x13
	.byte	0xaa
	.4byte	0x96e
	.uleb128 0x6
	.byte	0x4
	.4byte	0x974
	.uleb128 0x16
	.4byte	0x613
	.4byte	0x98d
	.uleb128 0x10
	.4byte	0x7f9
	.uleb128 0x10
	.4byte	0x8ed
	.uleb128 0x10
	.4byte	0x249
	.byte	0
	.uleb128 0x2
	.4byte	.LASF153
	.byte	0x13
	.byte	0xaf
	.4byte	0x998
	.uleb128 0x6
	.byte	0x4
	.4byte	0x99e
	.uleb128 0x16
	.4byte	0x613
	.4byte	0x9b7
	.uleb128 0x10
	.4byte	0x7f9
	.uleb128 0x10
	.4byte	0x922
	.uleb128 0x10
	.4byte	0x249
	.byte	0
	.uleb128 0x2
	.4byte	.LASF154
	.byte	0x13
	.byte	0xb6
	.4byte	0xab
	.uleb128 0xb
	.4byte	0x335
	.4byte	0x9d2
	.uleb128 0xc
	.4byte	0x9d
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.4byte	0x249
	.4byte	0x9e2
	.uleb128 0xc
	.4byte	0x9d
	.byte	0x2
	.byte	0
	.uleb128 0xf
	.4byte	0x9f2
	.uleb128 0x10
	.4byte	0x7f9
	.uleb128 0x10
	.4byte	0x249
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x9e2
	.uleb128 0x11
	.4byte	.LASF117
	.byte	0x60
	.byte	0x15
	.byte	0x3a
	.4byte	0xb24
	.uleb128 0xe
	.string	"xid"
	.byte	0x15
	.byte	0x3d
	.4byte	0x26a
	.byte	0
	.uleb128 0x12
	.4byte	.LASF155
	.byte	0x15
	.byte	0x3f
	.4byte	0xcfc
	.byte	0x4
	.uleb128 0x12
	.4byte	.LASF156
	.byte	0x15
	.byte	0x41
	.4byte	0x249
	.byte	0x8
	.uleb128 0x12
	.4byte	.LASF116
	.byte	0x15
	.byte	0x43
	.4byte	0x249
	.byte	0x9
	.uleb128 0x12
	.4byte	.LASF157
	.byte	0x15
	.byte	0x45
	.4byte	0x249
	.byte	0xa
	.uleb128 0x12
	.4byte	.LASF158
	.byte	0x15
	.byte	0x49
	.4byte	0x249
	.byte	0xb
	.uleb128 0x12
	.4byte	.LASF159
	.byte	0x15
	.byte	0x4b
	.4byte	0x697
	.byte	0xc
	.uleb128 0x12
	.4byte	.LASF160
	.byte	0x15
	.byte	0x4c
	.4byte	0xcfc
	.byte	0x10
	.uleb128 0x12
	.4byte	.LASF161
	.byte	0x15
	.byte	0x4d
	.4byte	0x25f
	.byte	0x14
	.uleb128 0x12
	.4byte	.LASF162
	.byte	0x15
	.byte	0x4e
	.4byte	0x25f
	.byte	0x16
	.uleb128 0x12
	.4byte	.LASF163
	.byte	0x15
	.byte	0x4f
	.4byte	0x26a
	.byte	0x18
	.uleb128 0x12
	.4byte	.LASF164
	.byte	0x15
	.byte	0x50
	.4byte	0x26a
	.byte	0x1c
	.uleb128 0x12
	.4byte	.LASF165
	.byte	0x15
	.byte	0x51
	.4byte	0x26a
	.byte	0x20
	.uleb128 0x12
	.4byte	.LASF166
	.byte	0x15
	.byte	0x52
	.4byte	0x26a
	.byte	0x24
	.uleb128 0x12
	.4byte	.LASF167
	.byte	0x15
	.byte	0x53
	.4byte	0x26a
	.byte	0x28
	.uleb128 0x12
	.4byte	.LASF168
	.byte	0x15
	.byte	0x54
	.4byte	0x26a
	.byte	0x2c
	.uleb128 0x12
	.4byte	.LASF169
	.byte	0x15
	.byte	0x55
	.4byte	0x335
	.byte	0x30
	.uleb128 0x12
	.4byte	.LASF170
	.byte	0x15
	.byte	0x56
	.4byte	0x2a7
	.byte	0x44
	.uleb128 0x12
	.4byte	.LASF171
	.byte	0x15
	.byte	0x57
	.4byte	0x2a7
	.byte	0x48
	.uleb128 0x12
	.4byte	.LASF172
	.byte	0x15
	.byte	0x58
	.4byte	0x2a7
	.byte	0x4c
	.uleb128 0x12
	.4byte	.LASF173
	.byte	0x15
	.byte	0x5a
	.4byte	0x26a
	.byte	0x50
	.uleb128 0x12
	.4byte	.LASF174
	.byte	0x15
	.byte	0x5b
	.4byte	0x26a
	.byte	0x54
	.uleb128 0x12
	.4byte	.LASF175
	.byte	0x15
	.byte	0x5c
	.4byte	0x26a
	.byte	0x58
	.uleb128 0xe
	.string	"cb"
	.byte	0x15
	.byte	0x64
	.4byte	0x952
	.byte	0x5c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x9f8
	.uleb128 0x11
	.4byte	.LASF176
	.byte	0x58
	.byte	0x16
	.byte	0x5b
	.4byte	0xbd3
	.uleb128 0x12
	.4byte	.LASF177
	.byte	0x16
	.byte	0x5d
	.4byte	0x335
	.byte	0
	.uleb128 0x12
	.4byte	.LASF178
	.byte	0x16
	.byte	0x5d
	.4byte	0x335
	.byte	0x14
	.uleb128 0x12
	.4byte	.LASF179
	.byte	0x16
	.byte	0x5d
	.4byte	0x249
	.byte	0x28
	.uleb128 0xe
	.string	"tos"
	.byte	0x16
	.byte	0x5d
	.4byte	0x249
	.byte	0x29
	.uleb128 0xe
	.string	"ttl"
	.byte	0x16
	.byte	0x5d
	.4byte	0x249
	.byte	0x2a
	.uleb128 0x12
	.4byte	.LASF102
	.byte	0x16
	.byte	0x61
	.4byte	0xbd3
	.byte	0x2c
	.uleb128 0x12
	.4byte	.LASF105
	.byte	0x16
	.byte	0x63
	.4byte	0x249
	.byte	0x30
	.uleb128 0x12
	.4byte	.LASF180
	.byte	0x16
	.byte	0x65
	.4byte	0x25f
	.byte	0x32
	.uleb128 0x12
	.4byte	.LASF181
	.byte	0x16
	.byte	0x65
	.4byte	0x25f
	.byte	0x34
	.uleb128 0x12
	.4byte	.LASF182
	.byte	0x16
	.byte	0x69
	.4byte	0x335
	.byte	0x38
	.uleb128 0x12
	.4byte	.LASF183
	.byte	0x16
	.byte	0x6b
	.4byte	0x249
	.byte	0x4c
	.uleb128 0x12
	.4byte	.LASF184
	.byte	0x16
	.byte	0x74
	.4byte	0xbf4
	.byte	0x50
	.uleb128 0x12
	.4byte	.LASF185
	.byte	0x16
	.byte	0x76
	.4byte	0x94
	.byte	0x54
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb2a
	.uleb128 0xb
	.4byte	0xb2
	.4byte	0xbe9
	.uleb128 0xc
	.4byte	0x9d
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.4byte	.LASF186
	.byte	0x17
	.byte	0x35
	.4byte	0x201
	.uleb128 0x2
	.4byte	.LASF187
	.byte	0x16
	.byte	0x58
	.4byte	0xbff
	.uleb128 0x6
	.byte	0x4
	.4byte	0xc05
	.uleb128 0xf
	.4byte	0xc24
	.uleb128 0x10
	.4byte	0x94
	.uleb128 0x10
	.4byte	0xbd3
	.uleb128 0x10
	.4byte	0x697
	.uleb128 0x10
	.4byte	0xc24
	.uleb128 0x10
	.4byte	0x25f
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xc2a
	.uleb128 0x8
	.4byte	0x335
	.uleb128 0x19
	.4byte	.LASF188
	.2byte	0x134
	.byte	0x15
	.byte	0x71
	.4byte	0xcfc
	.uleb128 0xe
	.string	"op"
	.byte	0x15
	.byte	0x73
	.4byte	0x249
	.byte	0
	.uleb128 0x12
	.4byte	.LASF189
	.byte	0x15
	.byte	0x74
	.4byte	0x249
	.byte	0x1
	.uleb128 0x12
	.4byte	.LASF190
	.byte	0x15
	.byte	0x75
	.4byte	0x249
	.byte	0x2
	.uleb128 0x12
	.4byte	.LASF191
	.byte	0x15
	.byte	0x76
	.4byte	0x249
	.byte	0x3
	.uleb128 0xe
	.string	"xid"
	.byte	0x15
	.byte	0x77
	.4byte	0x26a
	.byte	0x4
	.uleb128 0x12
	.4byte	.LASF192
	.byte	0x15
	.byte	0x78
	.4byte	0x25f
	.byte	0x8
	.uleb128 0x12
	.4byte	.LASF105
	.byte	0x15
	.byte	0x79
	.4byte	0x25f
	.byte	0xa
	.uleb128 0x12
	.4byte	.LASF193
	.byte	0x15
	.byte	0x7a
	.4byte	0x2b2
	.byte	0xc
	.uleb128 0x12
	.4byte	.LASF194
	.byte	0x15
	.byte	0x7b
	.4byte	0x2b2
	.byte	0x10
	.uleb128 0x12
	.4byte	.LASF195
	.byte	0x15
	.byte	0x7c
	.4byte	0x2b2
	.byte	0x14
	.uleb128 0x12
	.4byte	.LASF196
	.byte	0x15
	.byte	0x7d
	.4byte	0x2b2
	.byte	0x18
	.uleb128 0x12
	.4byte	.LASF197
	.byte	0x15
	.byte	0x7e
	.4byte	0x340
	.byte	0x1c
	.uleb128 0x12
	.4byte	.LASF198
	.byte	0x15
	.byte	0x7f
	.4byte	0x350
	.byte	0x2c
	.uleb128 0x12
	.4byte	.LASF199
	.byte	0x15
	.byte	0x80
	.4byte	0x360
	.byte	0x6c
	.uleb128 0x12
	.4byte	.LASF200
	.byte	0x15
	.byte	0x81
	.4byte	0x26a
	.byte	0xec
	.uleb128 0x12
	.4byte	.LASF201
	.byte	0x15
	.byte	0x8c
	.4byte	0xd02
	.byte	0xf0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xc2f
	.uleb128 0xb
	.4byte	0x249
	.4byte	0xd12
	.uleb128 0xc
	.4byte	0x9d
	.byte	0x43
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x7f
	.byte	0x18
	.byte	0x1d
	.4byte	0xdb5
	.uleb128 0xa
	.4byte	.LASF202
	.byte	0
	.uleb128 0xa
	.4byte	.LASF203
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF204
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF205
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF206
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF207
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF208
	.byte	0x6
	.uleb128 0xa
	.4byte	.LASF209
	.byte	0x7
	.uleb128 0xa
	.4byte	.LASF210
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF211
	.byte	0x9
	.uleb128 0xa
	.4byte	.LASF212
	.byte	0xa
	.uleb128 0xa
	.4byte	.LASF213
	.byte	0xb
	.uleb128 0xa
	.4byte	.LASF214
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF215
	.byte	0xd
	.uleb128 0xa
	.4byte	.LASF216
	.byte	0xe
	.uleb128 0xa
	.4byte	.LASF217
	.byte	0xf
	.uleb128 0xa
	.4byte	.LASF218
	.byte	0x10
	.uleb128 0xa
	.4byte	.LASF219
	.byte	0x11
	.uleb128 0xa
	.4byte	.LASF220
	.byte	0x12
	.uleb128 0xa
	.4byte	.LASF221
	.byte	0x13
	.uleb128 0xa
	.4byte	.LASF222
	.byte	0x14
	.uleb128 0xa
	.4byte	.LASF223
	.byte	0x15
	.uleb128 0xa
	.4byte	.LASF224
	.byte	0x16
	.uleb128 0xa
	.4byte	.LASF225
	.byte	0x17
	.uleb128 0xa
	.4byte	.LASF226
	.byte	0x18
	.byte	0
	.uleb128 0x2
	.4byte	.LASF227
	.byte	0x18
	.byte	0x37
	.4byte	0xd12
	.uleb128 0x9
	.byte	0x4
	.4byte	0x7f
	.byte	0x18
	.byte	0x39
	.4byte	0xddf
	.uleb128 0xa
	.4byte	.LASF228
	.byte	0
	.uleb128 0xa
	.4byte	.LASF229
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF230
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.4byte	.LASF231
	.byte	0x18
	.byte	0x3d
	.4byte	0xdc0
	.uleb128 0xd
	.byte	0x8
	.byte	0x18
	.byte	0x3e
	.4byte	0xe17
	.uleb128 0x12
	.4byte	.LASF232
	.byte	0x18
	.byte	0x3f
	.4byte	0xf0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF233
	.byte	0x18
	.byte	0x40
	.4byte	0xcf
	.byte	0x4
	.uleb128 0x12
	.4byte	.LASF234
	.byte	0x18
	.byte	0x41
	.4byte	0xcf
	.byte	0x5
	.byte	0
	.uleb128 0x2
	.4byte	.LASF235
	.byte	0x18
	.byte	0x42
	.4byte	0xdea
	.uleb128 0xd
	.byte	0x2c
	.byte	0x18
	.byte	0x44
	.4byte	0xe67
	.uleb128 0x12
	.4byte	.LASF236
	.byte	0x18
	.byte	0x45
	.4byte	0x195
	.byte	0
	.uleb128 0x12
	.4byte	.LASF237
	.byte	0x18
	.byte	0x46
	.4byte	0xcf
	.byte	0x20
	.uleb128 0x12
	.4byte	.LASF238
	.byte	0x18
	.byte	0x47
	.4byte	0x185
	.byte	0x21
	.uleb128 0x12
	.4byte	.LASF239
	.byte	0x18
	.byte	0x48
	.4byte	0xcf
	.byte	0x27
	.uleb128 0x12
	.4byte	.LASF240
	.byte	0x18
	.byte	0x49
	.4byte	0x16d
	.byte	0x28
	.byte	0
	.uleb128 0x2
	.4byte	.LASF241
	.byte	0x18
	.byte	0x4a
	.4byte	0xe22
	.uleb128 0xd
	.byte	0x28
	.byte	0x18
	.byte	0x4c
	.4byte	0xeab
	.uleb128 0x12
	.4byte	.LASF236
	.byte	0x18
	.byte	0x4d
	.4byte	0x195
	.byte	0
	.uleb128 0x12
	.4byte	.LASF237
	.byte	0x18
	.byte	0x4e
	.4byte	0xcf
	.byte	0x20
	.uleb128 0x12
	.4byte	.LASF238
	.byte	0x18
	.byte	0x4f
	.4byte	0x185
	.byte	0x21
	.uleb128 0x12
	.4byte	.LASF242
	.byte	0x18
	.byte	0x50
	.4byte	0xcf
	.byte	0x27
	.byte	0
	.uleb128 0x2
	.4byte	.LASF243
	.byte	0x18
	.byte	0x51
	.4byte	0xe72
	.uleb128 0xd
	.byte	0x8
	.byte	0x18
	.byte	0x53
	.4byte	0xed7
	.uleb128 0x12
	.4byte	.LASF244
	.byte	0x18
	.byte	0x54
	.4byte	0x16d
	.byte	0
	.uleb128 0x12
	.4byte	.LASF245
	.byte	0x18
	.byte	0x55
	.4byte	0x16d
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF246
	.byte	0x18
	.byte	0x56
	.4byte	0xeb6
	.uleb128 0xd
	.byte	0x10
	.byte	0x18
	.byte	0x58
	.4byte	0xf03
	.uleb128 0x12
	.4byte	.LASF94
	.byte	0x18
	.byte	0x59
	.4byte	0x406
	.byte	0
	.uleb128 0x12
	.4byte	.LASF247
	.byte	0x18
	.byte	0x5a
	.4byte	0x17e
	.byte	0xc
	.byte	0
	.uleb128 0x2
	.4byte	.LASF248
	.byte	0x18
	.byte	0x5b
	.4byte	0xee2
	.uleb128 0xd
	.byte	0x8
	.byte	0x18
	.byte	0x5d
	.4byte	0xf23
	.uleb128 0x12
	.4byte	.LASF249
	.byte	0x18
	.byte	0x5e
	.4byte	0xf23
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0xcf
	.4byte	0xf33
	.uleb128 0xc
	.4byte	0x9d
	.byte	0x7
	.byte	0
	.uleb128 0x2
	.4byte	.LASF250
	.byte	0x18
	.byte	0x5f
	.4byte	0xf0e
	.uleb128 0xd
	.byte	0x10
	.byte	0x18
	.byte	0x61
	.4byte	0xf53
	.uleb128 0x12
	.4byte	.LASF251
	.byte	0x18
	.byte	0x62
	.4byte	0x425
	.byte	0
	.byte	0
	.uleb128 0x2
	.4byte	.LASF252
	.byte	0x18
	.byte	0x63
	.4byte	0xf3e
	.uleb128 0xd
	.byte	0x7
	.byte	0x18
	.byte	0x65
	.4byte	0xf7f
	.uleb128 0xe
	.string	"mac"
	.byte	0x18
	.byte	0x66
	.4byte	0x185
	.byte	0
	.uleb128 0xe
	.string	"aid"
	.byte	0x18
	.byte	0x67
	.4byte	0xcf
	.byte	0x6
	.byte	0
	.uleb128 0x2
	.4byte	.LASF253
	.byte	0x18
	.byte	0x68
	.4byte	0xf5e
	.uleb128 0xd
	.byte	0x7
	.byte	0x18
	.byte	0x6a
	.4byte	0xfab
	.uleb128 0xe
	.string	"mac"
	.byte	0x18
	.byte	0x6b
	.4byte	0x185
	.byte	0
	.uleb128 0xe
	.string	"aid"
	.byte	0x18
	.byte	0x6c
	.4byte	0xcf
	.byte	0x6
	.byte	0
	.uleb128 0x2
	.4byte	.LASF254
	.byte	0x18
	.byte	0x6d
	.4byte	0xf8a
	.uleb128 0xd
	.byte	0xc
	.byte	0x18
	.byte	0x6f
	.4byte	0xfd7
	.uleb128 0x12
	.4byte	.LASF255
	.byte	0x18
	.byte	0x70
	.4byte	0x6d
	.byte	0
	.uleb128 0xe
	.string	"mac"
	.byte	0x18
	.byte	0x71
	.4byte	0x185
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF256
	.byte	0x18
	.byte	0x72
	.4byte	0xfb6
	.uleb128 0x13
	.byte	0x2c
	.byte	0x18
	.byte	0x74
	.4byte	0x1064
	.uleb128 0x1a
	.4byte	.LASF257
	.byte	0x18
	.byte	0x75
	.4byte	0xe67
	.uleb128 0x1a
	.4byte	.LASF258
	.byte	0x18
	.byte	0x76
	.4byte	0xeab
	.uleb128 0x1a
	.4byte	.LASF259
	.byte	0x18
	.byte	0x77
	.4byte	0xe17
	.uleb128 0x1a
	.4byte	.LASF260
	.byte	0x18
	.byte	0x78
	.4byte	0xed7
	.uleb128 0x1a
	.4byte	.LASF261
	.byte	0x18
	.byte	0x79
	.4byte	0xf03
	.uleb128 0x1a
	.4byte	.LASF262
	.byte	0x18
	.byte	0x7a
	.4byte	0xf33
	.uleb128 0x1a
	.4byte	.LASF263
	.byte	0x18
	.byte	0x7b
	.4byte	0xddf
	.uleb128 0x1a
	.4byte	.LASF264
	.byte	0x18
	.byte	0x7c
	.4byte	0xf7f
	.uleb128 0x1a
	.4byte	.LASF265
	.byte	0x18
	.byte	0x7d
	.4byte	0xfab
	.uleb128 0x1a
	.4byte	.LASF266
	.byte	0x18
	.byte	0x7e
	.4byte	0xfd7
	.uleb128 0x1a
	.4byte	.LASF267
	.byte	0x18
	.byte	0x7f
	.4byte	0xf53
	.byte	0
	.uleb128 0x2
	.4byte	.LASF268
	.byte	0x18
	.byte	0x80
	.4byte	0xfe2
	.uleb128 0xd
	.byte	0x30
	.byte	0x18
	.byte	0x82
	.4byte	0x1090
	.uleb128 0x12
	.4byte	.LASF269
	.byte	0x18
	.byte	0x83
	.4byte	0xdb5
	.byte	0
	.uleb128 0x12
	.4byte	.LASF270
	.byte	0x18
	.byte	0x84
	.4byte	0x1064
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF271
	.byte	0x18
	.byte	0x85
	.4byte	0x106f
	.uleb128 0x9
	.byte	0x4
	.4byte	0x7f
	.byte	0x19
	.byte	0x15
	.4byte	0x12c4
	.uleb128 0x1b
	.string	"PAD"
	.byte	0
	.uleb128 0x1b
	.string	"END"
	.byte	0xff
	.uleb128 0xa
	.4byte	.LASF272
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF273
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF274
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF275
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF276
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF277
	.byte	0x6
	.uleb128 0xa
	.4byte	.LASF278
	.byte	0x7
	.uleb128 0xa
	.4byte	.LASF279
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF280
	.byte	0x9
	.uleb128 0xa
	.4byte	.LASF281
	.byte	0xa
	.uleb128 0xa
	.4byte	.LASF282
	.byte	0xb
	.uleb128 0xa
	.4byte	.LASF283
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF284
	.byte	0xd
	.uleb128 0xa
	.4byte	.LASF285
	.byte	0xe
	.uleb128 0xa
	.4byte	.LASF286
	.byte	0xf
	.uleb128 0xa
	.4byte	.LASF287
	.byte	0x10
	.uleb128 0xa
	.4byte	.LASF288
	.byte	0x11
	.uleb128 0xa
	.4byte	.LASF289
	.byte	0x12
	.uleb128 0xa
	.4byte	.LASF290
	.byte	0x13
	.uleb128 0xa
	.4byte	.LASF291
	.byte	0x14
	.uleb128 0xa
	.4byte	.LASF292
	.byte	0x15
	.uleb128 0xa
	.4byte	.LASF293
	.byte	0x16
	.uleb128 0xa
	.4byte	.LASF294
	.byte	0x17
	.uleb128 0xa
	.4byte	.LASF295
	.byte	0x18
	.uleb128 0xa
	.4byte	.LASF296
	.byte	0x19
	.uleb128 0xa
	.4byte	.LASF297
	.byte	0x1a
	.uleb128 0xa
	.4byte	.LASF298
	.byte	0x1b
	.uleb128 0xa
	.4byte	.LASF299
	.byte	0x1c
	.uleb128 0xa
	.4byte	.LASF300
	.byte	0x1d
	.uleb128 0xa
	.4byte	.LASF301
	.byte	0x1e
	.uleb128 0xa
	.4byte	.LASF302
	.byte	0x1f
	.uleb128 0xa
	.4byte	.LASF303
	.byte	0x20
	.uleb128 0xa
	.4byte	.LASF304
	.byte	0x21
	.uleb128 0xa
	.4byte	.LASF305
	.byte	0x22
	.uleb128 0xa
	.4byte	.LASF306
	.byte	0x23
	.uleb128 0xa
	.4byte	.LASF307
	.byte	0x24
	.uleb128 0xa
	.4byte	.LASF308
	.byte	0x25
	.uleb128 0xa
	.4byte	.LASF309
	.byte	0x26
	.uleb128 0xa
	.4byte	.LASF310
	.byte	0x27
	.uleb128 0xa
	.4byte	.LASF311
	.byte	0x28
	.uleb128 0xa
	.4byte	.LASF312
	.byte	0x29
	.uleb128 0xa
	.4byte	.LASF313
	.byte	0x2a
	.uleb128 0xa
	.4byte	.LASF314
	.byte	0x2b
	.uleb128 0xa
	.4byte	.LASF315
	.byte	0x2c
	.uleb128 0xa
	.4byte	.LASF316
	.byte	0x2d
	.uleb128 0xa
	.4byte	.LASF317
	.byte	0x2e
	.uleb128 0xa
	.4byte	.LASF318
	.byte	0x2f
	.uleb128 0xa
	.4byte	.LASF319
	.byte	0x30
	.uleb128 0xa
	.4byte	.LASF320
	.byte	0x31
	.uleb128 0xa
	.4byte	.LASF321
	.byte	0x40
	.uleb128 0xa
	.4byte	.LASF322
	.byte	0x41
	.uleb128 0xa
	.4byte	.LASF323
	.byte	0x44
	.uleb128 0xa
	.4byte	.LASF324
	.byte	0x45
	.uleb128 0xa
	.4byte	.LASF325
	.byte	0x46
	.uleb128 0xa
	.4byte	.LASF326
	.byte	0x47
	.uleb128 0xa
	.4byte	.LASF327
	.byte	0x48
	.uleb128 0xa
	.4byte	.LASF328
	.byte	0x49
	.uleb128 0xa
	.4byte	.LASF329
	.byte	0x4a
	.uleb128 0xa
	.4byte	.LASF330
	.byte	0x4b
	.uleb128 0xa
	.4byte	.LASF331
	.byte	0x4c
	.uleb128 0xa
	.4byte	.LASF332
	.byte	0x32
	.uleb128 0xa
	.4byte	.LASF333
	.byte	0x33
	.uleb128 0xa
	.4byte	.LASF334
	.byte	0x34
	.uleb128 0xa
	.4byte	.LASF335
	.byte	0x42
	.uleb128 0xa
	.4byte	.LASF336
	.byte	0x43
	.uleb128 0xa
	.4byte	.LASF337
	.byte	0x35
	.uleb128 0xa
	.4byte	.LASF338
	.byte	0x36
	.uleb128 0xa
	.4byte	.LASF339
	.byte	0x37
	.uleb128 0xa
	.4byte	.LASF340
	.byte	0x38
	.uleb128 0xa
	.4byte	.LASF341
	.byte	0x39
	.uleb128 0xa
	.4byte	.LASF342
	.byte	0x3a
	.uleb128 0xa
	.4byte	.LASF343
	.byte	0x3b
	.uleb128 0xa
	.4byte	.LASF344
	.byte	0x3c
	.uleb128 0xa
	.4byte	.LASF345
	.byte	0x3d
	.uleb128 0xa
	.4byte	.LASF346
	.byte	0x4d
	.uleb128 0xa
	.4byte	.LASF347
	.byte	0x51
	.uleb128 0xa
	.4byte	.LASF348
	.byte	0x52
	.uleb128 0xa
	.4byte	.LASF349
	.byte	0x55
	.uleb128 0xa
	.4byte	.LASF350
	.byte	0x56
	.uleb128 0xa
	.4byte	.LASF351
	.byte	0x57
	.uleb128 0xa
	.4byte	.LASF352
	.byte	0x5b
	.uleb128 0xa
	.4byte	.LASF353
	.byte	0x5c
	.uleb128 0xa
	.4byte	.LASF354
	.byte	0x62
	.uleb128 0xa
	.4byte	.LASF355
	.byte	0x74
	.uleb128 0xa
	.4byte	.LASF356
	.byte	0x75
	.uleb128 0xa
	.4byte	.LASF357
	.byte	0x76
	.uleb128 0xa
	.4byte	.LASF358
	.byte	0x77
	.uleb128 0xa
	.4byte	.LASF359
	.byte	0x79
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x7f
	.byte	0x1a
	.byte	0x1f
	.4byte	0x12f5
	.uleb128 0xa
	.4byte	.LASF360
	.byte	0
	.uleb128 0xa
	.4byte	.LASF361
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF362
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF363
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF364
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF365
	.byte	0x5
	.byte	0
	.uleb128 0x2
	.4byte	.LASF366
	.byte	0x1a
	.byte	0x26
	.4byte	0x12c4
	.uleb128 0x1c
	.4byte	.LASF493
	.byte	0x1
	.byte	0x72
	.4byte	0x87e
	.byte	0x3
	.4byte	0x131c
	.uleb128 0x1d
	.4byte	.LASF93
	.byte	0x1
	.byte	0x72
	.4byte	0x4bc
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF367
	.byte	0x1
	.2byte	0x412
	.4byte	0xfb
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1347
	.uleb128 0x1f
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x412
	.4byte	0x4bc
	.4byte	.LLST0
	.byte	0
	.uleb128 0x20
	.4byte	.LASF380
	.byte	0x1
	.2byte	0x140
	.4byte	0xfb
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1381
	.uleb128 0x21
	.string	"msg"
	.byte	0x1
	.2byte	0x140
	.4byte	0x1381
	.4byte	.LLST1
	.uleb128 0x22
	.4byte	.LVL4
	.4byte	0x2e21
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5e4
	.uleb128 0x24
	.4byte	.LASF368
	.byte	0x1
	.byte	0x7a
	.4byte	0x6d
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1417
	.uleb128 0x25
	.string	"msg"
	.byte	0x1
	.byte	0x7a
	.4byte	0x1381
	.4byte	.LLST2
	.uleb128 0x26
	.4byte	.LASF370
	.byte	0x1
	.byte	0x7d
	.4byte	0x212
	.4byte	.LLST3
	.uleb128 0x27
	.4byte	.LVL7
	.4byte	0x2e2a
	.uleb128 0x28
	.4byte	.LVL9
	.4byte	0x2e36
	.4byte	0x13e0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x28
	.4byte	.LVL10
	.4byte	0x2e41
	.4byte	0x1406
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	tcpip_adapter_api_cb
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	api_sync_sem
	.byte	0
	.uleb128 0x22
	.4byte	.LVL11
	.4byte	0x2e4c
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	.LASF374
	.byte	0x1
	.byte	0x47
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x146a
	.uleb128 0x2a
	.4byte	.LASF369
	.byte	0x1
	.byte	0x47
	.4byte	0x94
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2b
	.string	"msg"
	.byte	0x1
	.byte	0x49
	.4byte	0x1381
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2c
	.4byte	.LVL17
	.4byte	0x1456
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL18
	.4byte	0x2e4c
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	api_sync_sem
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LASF371
	.byte	0x1
	.byte	0x8d
	.4byte	0xfb
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x149f
	.uleb128 0x27
	.4byte	.LVL19
	.4byte	0x2e57
	.uleb128 0x27
	.4byte	.LVL20
	.4byte	0x2e57
	.uleb128 0x27
	.4byte	.LVL21
	.4byte	0x2e57
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF372
	.byte	0x1
	.2byte	0x30c
	.4byte	0xfb
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x150c
	.uleb128 0x1f
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x30c
	.4byte	0x4bc
	.4byte	.LLST4
	.uleb128 0x2d
	.4byte	.LASF373
	.byte	0x1
	.2byte	0x30e
	.4byte	0x5de
	.4byte	.LLST5
	.uleb128 0x2d
	.4byte	.LASF108
	.byte	0x1
	.2byte	0x30f
	.4byte	0x7f9
	.4byte	.LLST6
	.uleb128 0x22
	.4byte	.LVL26
	.4byte	0x2e63
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0xc
	.4byte	0x1d4c0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	tcpip_adapter_ip_lost_timer
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF375
	.byte	0x1
	.2byte	0x329
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1588
	.uleb128 0x21
	.string	"arg"
	.byte	0x1
	.2byte	0x329
	.4byte	0x94
	.4byte	.LLST7
	.uleb128 0x2d
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x32b
	.4byte	0x4bc
	.4byte	.LLST8
	.uleb128 0x2f
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0x2d
	.4byte	.LASF108
	.byte	0x1
	.2byte	0x331
	.4byte	0x7f9
	.4byte	.LLST9
	.uleb128 0x2f
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.uleb128 0x30
	.string	"evt"
	.byte	0x1
	.2byte	0x334
	.4byte	0x1090
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x22
	.4byte	.LVL33
	.4byte	0x2e6e
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF376
	.byte	0x1
	.2byte	0x1b3
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x15f0
	.uleb128 0x1f
	.4byte	.LASF377
	.byte	0x1
	.2byte	0x1b3
	.4byte	0x7f9
	.4byte	.LLST10
	.uleb128 0x1f
	.4byte	.LASF378
	.byte	0x1
	.2byte	0x1b3
	.4byte	0xcf
	.4byte	.LLST11
	.uleb128 0x2d
	.4byte	.LASF251
	.byte	0x1
	.2byte	0x1b5
	.4byte	0x15f0
	.4byte	.LLST12
	.uleb128 0x30
	.string	"evt"
	.byte	0x1
	.2byte	0x1c4
	.4byte	0x1090
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x22
	.4byte	.LVL40
	.4byte	0x2e6e
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x425
	.uleb128 0x2e
	.4byte	.LASF379
	.byte	0x1
	.2byte	0x2d0
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x16e5
	.uleb128 0x1f
	.4byte	.LASF108
	.byte	0x1
	.2byte	0x2d0
	.4byte	0x7f9
	.4byte	.LLST13
	.uleb128 0x2d
	.4byte	.LASF373
	.byte	0x1
	.2byte	0x2d2
	.4byte	0x5de
	.4byte	.LLST14
	.uleb128 0x2d
	.4byte	.LASF94
	.byte	0x1
	.2byte	0x2d3
	.4byte	0x5de
	.4byte	.LLST15
	.uleb128 0x2d
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x2d4
	.4byte	0x4bc
	.4byte	.LLST16
	.uleb128 0x31
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.4byte	0x16db
	.uleb128 0x30
	.string	"evt"
	.byte	0x1
	.2byte	0x2ee
	.4byte	0x1090
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x28
	.4byte	.LVL49
	.4byte	0x2e79
	.4byte	0x1688
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.uleb128 0x28
	.4byte	.LVL50
	.4byte	0x2e21
	.4byte	0x16a9
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL51
	.4byte	0x2e21
	.4byte	0x16c9
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL52
	.4byte	0x2e6e
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL57
	.4byte	0x149f
	.byte	0
	.uleb128 0x32
	.4byte	.LASF494
	.byte	0x1
	.byte	0x57
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x17c4
	.uleb128 0x33
	.string	"ret"
	.byte	0x1
	.byte	0x59
	.4byte	0x6d
	.4byte	.LLST17
	.uleb128 0x28
	.4byte	.LVL58
	.4byte	0x2e84
	.4byte	0x1721
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x28
	.4byte	.LVL59
	.4byte	0x2e8f
	.4byte	0x173d
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	api_sync_sem
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x27
	.4byte	.LVL61
	.4byte	0x2e9a
	.uleb128 0x28
	.4byte	.LVL62
	.4byte	0x2ea5
	.4byte	0x1774
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC30
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC32
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC30
	.byte	0
	.uleb128 0x28
	.4byte	.LVL63
	.4byte	0x2e8f
	.4byte	0x1790
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	api_lock_sem
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x27
	.4byte	.LVL65
	.4byte	0x2e9a
	.uleb128 0x22
	.4byte	.LVL66
	.4byte	0x2ea5
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC30
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC35
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC30
	.byte	0
	.byte	0
	.uleb128 0x34
	.4byte	.LASF381
	.byte	0x1
	.byte	0x9a
	.4byte	0xfb
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1961
	.uleb128 0x35
	.4byte	.LASF93
	.byte	0x1
	.byte	0x9a
	.4byte	0x4bc
	.4byte	.LLST18
	.uleb128 0x25
	.string	"mac"
	.byte	0x1
	.byte	0x9a
	.4byte	0x178
	.4byte	.LLST19
	.uleb128 0x2a
	.4byte	.LASF94
	.byte	0x1
	.byte	0x9a
	.4byte	0x5de
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x36
	.4byte	.LASF382
	.byte	0x1
	.byte	0x9c
	.4byte	0x87e
	.uleb128 0x37
	.4byte	.LASF383
	.4byte	0x1971
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$7151
	.uleb128 0x31
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.4byte	0x188e
	.uleb128 0x2b
	.string	"msg"
	.byte	0x1
	.byte	0x9e
	.4byte	0x5e4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x27
	.4byte	.LVL68
	.4byte	0x2e9a
	.uleb128 0x28
	.4byte	.LVL69
	.4byte	0x2ea5
	.4byte	0x1874
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC30
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC40
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC30
	.byte	0
	.uleb128 0x27
	.4byte	.LVL70
	.4byte	0x2eb0
	.uleb128 0x22
	.4byte	.LVL71
	.4byte	0x1387
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0x1300
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.byte	0x1
	.byte	0xae
	.4byte	0x18ab
	.uleb128 0x39
	.4byte	0x1310
	.4byte	.LLST20
	.byte	0
	.uleb128 0x28
	.4byte	.LVL74
	.4byte	0x2ebb
	.4byte	0x18c4
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xc8
	.byte	0
	.uleb128 0x28
	.4byte	.LVL75
	.4byte	0x2e21
	.4byte	0x18e4
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x75
	.sleb128 175
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.uleb128 0x28
	.4byte	.LVL79
	.4byte	0x2ec6
	.4byte	0x1913
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC48
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xaf
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$7151
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC45
	.byte	0
	.uleb128 0x28
	.4byte	.LVL80
	.4byte	0x2ed1
	.4byte	0x1945
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 4
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 8
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x23
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL81
	.4byte	0x2edd
	.uleb128 0x27
	.4byte	.LVL83
	.4byte	0x2ee9
	.uleb128 0x27
	.4byte	.LVL84
	.4byte	0x146a
	.byte	0
	.uleb128 0xb
	.4byte	0xb2
	.4byte	0x1971
	.uleb128 0xc
	.4byte	0x9d
	.byte	0x13
	.byte	0
	.uleb128 0x8
	.4byte	0x1961
	.uleb128 0x24
	.4byte	.LASF384
	.byte	0x1
	.byte	0xd7
	.4byte	0xfb
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x19a8
	.uleb128 0x25
	.string	"msg"
	.byte	0x1
	.byte	0xd7
	.4byte	0x1381
	.4byte	.LLST21
	.uleb128 0x27
	.4byte	.LVL92
	.4byte	0x17c4
	.byte	0
	.uleb128 0x34
	.4byte	.LASF385
	.byte	0x1
	.byte	0xc5
	.4byte	0xfb
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x19f9
	.uleb128 0x25
	.string	"mac"
	.byte	0x1
	.byte	0xc5
	.4byte	0x178
	.4byte	.LLST22
	.uleb128 0x2a
	.4byte	.LASF94
	.byte	0x1
	.byte	0xc5
	.4byte	0x5de
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x22
	.4byte	.LVL95
	.4byte	0x17c4
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x34
	.4byte	.LASF386
	.byte	0x1
	.byte	0xcb
	.4byte	0xfb
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a4a
	.uleb128 0x25
	.string	"mac"
	.byte	0x1
	.byte	0xcb
	.4byte	0x178
	.4byte	.LLST23
	.uleb128 0x2a
	.4byte	.LASF94
	.byte	0x1
	.byte	0xcb
	.4byte	0x5de
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x22
	.4byte	.LVL98
	.4byte	0x17c4
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x34
	.4byte	.LASF387
	.byte	0x1
	.byte	0xd1
	.4byte	0xfb
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a9b
	.uleb128 0x25
	.string	"mac"
	.byte	0x1
	.byte	0xd1
	.4byte	0x178
	.4byte	.LLST24
	.uleb128 0x2a
	.4byte	.LASF94
	.byte	0x1
	.byte	0xd1
	.4byte	0x5de
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x22
	.4byte	.LVL101
	.4byte	0x17c4
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x34
	.4byte	.LASF388
	.byte	0x1
	.byte	0xdc
	.4byte	0xfb
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1b8c
	.uleb128 0x35
	.4byte	.LASF93
	.byte	0x1
	.byte	0xdc
	.4byte	0x4bc
	.4byte	.LLST25
	.uleb128 0x31
	.4byte	.LBB11
	.4byte	.LBE11-.LBB11
	.4byte	0x1b2f
	.uleb128 0x2b
	.string	"msg"
	.byte	0x1
	.byte	0xde
	.4byte	0x5e4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x27
	.4byte	.LVL104
	.4byte	0x2e9a
	.uleb128 0x28
	.4byte	.LVL105
	.4byte	0x2ea5
	.4byte	0x1b15
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC30
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC40
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC30
	.byte	0
	.uleb128 0x27
	.4byte	.LVL106
	.4byte	0x2eb0
	.uleb128 0x22
	.4byte	.LVL107
	.4byte	0x1387
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL110
	.4byte	0x2ef4
	.uleb128 0x27
	.4byte	.LVL113
	.4byte	0x2f00
	.uleb128 0x27
	.4byte	.LVL114
	.4byte	0x2f0b
	.uleb128 0x27
	.4byte	.LVL115
	.4byte	0x2f16
	.uleb128 0x27
	.4byte	.LVL116
	.4byte	0x2f21
	.uleb128 0x28
	.4byte	.LVL117
	.4byte	0x131c
	.4byte	0x1b70
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL119
	.4byte	0x2f2c
	.uleb128 0x27
	.4byte	.LVL120
	.4byte	0x2ef4
	.uleb128 0x27
	.4byte	.LVL121
	.4byte	0x146a
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF389
	.byte	0x1
	.2byte	0x103
	.4byte	0xfb
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1bc0
	.uleb128 0x21
	.string	"msg"
	.byte	0x1
	.2byte	0x103
	.4byte	0x1381
	.4byte	.LLST26
	.uleb128 0x27
	.4byte	.LVL127
	.4byte	0x1a9b
	.byte	0
	.uleb128 0x20
	.4byte	.LASF390
	.byte	0x1
	.2byte	0x109
	.4byte	0xfb
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1cb1
	.uleb128 0x1f
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x109
	.4byte	0x4bc
	.4byte	.LLST27
	.uleb128 0x31
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.4byte	0x1c57
	.uleb128 0x30
	.string	"msg"
	.byte	0x1
	.2byte	0x10b
	.4byte	0x5e4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x27
	.4byte	.LVL130
	.4byte	0x2e9a
	.uleb128 0x28
	.4byte	.LVL131
	.4byte	0x2ea5
	.4byte	0x1c3d
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC30
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC40
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC30
	.byte	0
	.uleb128 0x27
	.4byte	.LVL132
	.4byte	0x2eb0
	.uleb128 0x22
	.4byte	.LVL133
	.4byte	0x1387
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL136
	.4byte	0x2f38
	.4byte	0x1c9e
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0xf
	.byte	0x72
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	esp_ip
	.byte	0x22
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0xf
	.byte	0x72
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	esp_ip+4
	.byte	0x22
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0xf
	.byte	0x72
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	esp_ip+8
	.byte	0x22
	.byte	0
	.uleb128 0x27
	.4byte	.LVL138
	.4byte	0x2edd
	.uleb128 0x27
	.4byte	.LVL139
	.4byte	0x146a
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF391
	.byte	0x1
	.2byte	0x11c
	.4byte	0xfb
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1ce5
	.uleb128 0x21
	.string	"msg"
	.byte	0x1
	.2byte	0x11c
	.4byte	0x1381
	.4byte	.LLST28
	.uleb128 0x27
	.4byte	.LVL143
	.4byte	0x1bc0
	.byte	0
	.uleb128 0x20
	.4byte	.LASF392
	.byte	0x1
	.2byte	0x122
	.4byte	0xfb
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1dbc
	.uleb128 0x1f
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x122
	.4byte	0x4bc
	.4byte	.LLST29
	.uleb128 0x31
	.4byte	.LBB13
	.4byte	.LBE13-.LBB13
	.4byte	0x1d7c
	.uleb128 0x30
	.string	"msg"
	.byte	0x1
	.2byte	0x124
	.4byte	0x5e4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x27
	.4byte	.LVL146
	.4byte	0x2e9a
	.uleb128 0x28
	.4byte	.LVL147
	.4byte	0x2ea5
	.4byte	0x1d62
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC30
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC40
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC30
	.byte	0
	.uleb128 0x27
	.4byte	.LVL148
	.4byte	0x2eb0
	.uleb128 0x22
	.4byte	.LVL149
	.4byte	0x1387
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL152
	.4byte	0x2f16
	.uleb128 0x28
	.4byte	.LVL153
	.4byte	0x131c
	.4byte	0x1d99
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL154
	.4byte	0x2f38
	.uleb128 0x27
	.4byte	.LVL155
	.4byte	0x2f2c
	.uleb128 0x22
	.4byte	.LVL156
	.4byte	0x149f
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF393
	.byte	0x1
	.2byte	0x13b
	.4byte	0xfb
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1df0
	.uleb128 0x21
	.string	"msg"
	.byte	0x1
	.2byte	0x13b
	.4byte	0x1381
	.4byte	.LLST30
	.uleb128 0x27
	.4byte	.LVL163
	.4byte	0x1ce5
	.byte	0
	.uleb128 0x20
	.4byte	.LASF394
	.byte	0x1
	.2byte	0x146
	.4byte	0xfb
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1e92
	.uleb128 0x1f
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x146
	.4byte	0x4bc
	.4byte	.LLST31
	.uleb128 0x3a
	.4byte	.LASF94
	.byte	0x1
	.2byte	0x146
	.4byte	0x5de
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2f
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.uleb128 0x30
	.string	"msg"
	.byte	0x1
	.2byte	0x14c
	.4byte	0x5e4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x27
	.4byte	.LVL166
	.4byte	0x2e9a
	.uleb128 0x28
	.4byte	.LVL167
	.4byte	0x2ea5
	.4byte	0x1e77
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC30
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC40
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC30
	.byte	0
	.uleb128 0x27
	.4byte	.LVL168
	.4byte	0x2eb0
	.uleb128 0x22
	.4byte	.LVL170
	.4byte	0x1387
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LASF395
	.byte	0x1
	.2byte	0x151
	.4byte	0xfb
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1eee
	.uleb128 0x1f
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x151
	.4byte	0x4bc
	.4byte	.LLST32
	.uleb128 0x3a
	.4byte	.LASF94
	.byte	0x1
	.2byte	0x151
	.4byte	0x5de
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x22
	.4byte	.LVL175
	.4byte	0x2e21
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0xa
	.byte	0x72
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	esp_ip_old
	.byte	0x22
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LASF396
	.byte	0x1
	.2byte	0x15b
	.4byte	0xfb
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1f37
	.uleb128 0x1f
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x15b
	.4byte	0x4bc
	.4byte	.LLST33
	.uleb128 0x3a
	.4byte	.LASF94
	.byte	0x1
	.2byte	0x15b
	.4byte	0x5de
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2d
	.4byte	.LASF377
	.byte	0x1
	.2byte	0x15d
	.4byte	0x7f9
	.4byte	.LLST34
	.byte	0
	.uleb128 0x20
	.4byte	.LASF397
	.byte	0x1
	.2byte	0x1ce
	.4byte	0xfb
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2011
	.uleb128 0x1f
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x1ce
	.4byte	0x4bc
	.4byte	.LLST35
	.uleb128 0x2d
	.4byte	.LASF377
	.byte	0x1
	.2byte	0x1d0
	.4byte	0x7f9
	.4byte	.LLST36
	.uleb128 0x31
	.4byte	.LBB15
	.4byte	.LBE15-.LBB15
	.4byte	0x1fde
	.uleb128 0x30
	.string	"msg"
	.byte	0x1
	.2byte	0x1d2
	.4byte	0x5e4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x27
	.4byte	.LVL187
	.4byte	0x2e9a
	.uleb128 0x28
	.4byte	.LVL188
	.4byte	0x2ea5
	.4byte	0x1fc4
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC30
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC40
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC30
	.byte	0
	.uleb128 0x27
	.4byte	.LVL189
	.4byte	0x2eb0
	.uleb128 0x22
	.4byte	.LVL190
	.4byte	0x1387
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL195
	.4byte	0x2f44
	.4byte	0x1ff7
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x22
	.4byte	.LVL196
	.4byte	0x2f50
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	tcpip_adapter_nd6_cb
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF398
	.byte	0x1
	.2byte	0x1e3
	.4byte	0xfb
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2045
	.uleb128 0x21
	.string	"msg"
	.byte	0x1
	.2byte	0x1e3
	.4byte	0x1381
	.4byte	.LLST37
	.uleb128 0x27
	.4byte	.LVL205
	.4byte	0x1f37
	.byte	0
	.uleb128 0x20
	.4byte	.LASF399
	.byte	0x1
	.2byte	0x1e8
	.4byte	0xfb
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x20a3
	.uleb128 0x1f
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x1e8
	.4byte	0x4bc
	.4byte	.LLST38
	.uleb128 0x3a
	.4byte	.LASF400
	.byte	0x1
	.2byte	0x1e8
	.4byte	0x20a3
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2d
	.4byte	.LASF377
	.byte	0x1
	.2byte	0x1ea
	.4byte	0x7f9
	.4byte	.LLST39
	.uleb128 0x22
	.4byte	.LVL211
	.4byte	0x2e21
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2e6
	.uleb128 0x20
	.4byte	.LASF401
	.byte	0x1
	.2byte	0x221
	.4byte	0xfb
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x21f0
	.uleb128 0x1f
	.4byte	.LASF402
	.byte	0x1
	.2byte	0x221
	.4byte	0x51c
	.4byte	.LLST40
	.uleb128 0x1f
	.4byte	.LASF403
	.byte	0x1
	.2byte	0x221
	.4byte	0x54c
	.4byte	.LLST41
	.uleb128 0x3a
	.4byte	.LASF404
	.byte	0x1
	.2byte	0x221
	.4byte	0x94
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3a
	.4byte	.LASF405
	.byte	0x1
	.2byte	0x221
	.4byte	0xf0
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3b
	.4byte	.LASF406
	.byte	0x1
	.2byte	0x223
	.4byte	0x94
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x3c
	.4byte	.Ldebug_ranges0+0
	.4byte	0x21b6
	.uleb128 0x3b
	.4byte	.LASF407
	.byte	0x1
	.2byte	0x24d
	.4byte	0x406
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2d
	.4byte	.LASF408
	.byte	0x1
	.2byte	0x24e
	.4byte	0xf0
	.4byte	.LLST42
	.uleb128 0x2d
	.4byte	.LASF59
	.byte	0x1
	.2byte	0x24f
	.4byte	0xf0
	.4byte	.LLST43
	.uleb128 0x2d
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x250
	.4byte	0xf0
	.4byte	.LLST44
	.uleb128 0x2d
	.4byte	.LASF409
	.byte	0x1
	.2byte	0x251
	.4byte	0x21f0
	.4byte	.LLST45
	.uleb128 0x28
	.4byte	.LVL223
	.4byte	0x1eee
	.4byte	0x217e
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x27
	.4byte	.LVL224
	.4byte	0x2f5c
	.uleb128 0x27
	.4byte	.LVL226
	.4byte	0x2f5c
	.uleb128 0x27
	.4byte	.LVL228
	.4byte	0x2f5c
	.uleb128 0x22
	.4byte	.LVL233
	.4byte	0x2e21
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL216
	.4byte	0x2f67
	.4byte	0x21d3
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL219
	.4byte	0x2e21
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x39d
	.uleb128 0x20
	.4byte	.LASF410
	.byte	0x1
	.2byte	0x27c
	.4byte	0xfb
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x222f
	.uleb128 0x1f
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x27c
	.4byte	0x4bc
	.4byte	.LLST46
	.uleb128 0x3a
	.4byte	.LASF232
	.byte	0x1
	.2byte	0x27c
	.4byte	0x222f
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4ec
	.uleb128 0x20
	.4byte	.LASF411
	.byte	0x1
	.2byte	0x283
	.4byte	0xfb
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2329
	.uleb128 0x1f
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x283
	.4byte	0x4bc
	.4byte	.LLST47
	.uleb128 0x31
	.4byte	.LBB18
	.4byte	.LBE18-.LBB18
	.4byte	0x22cc
	.uleb128 0x30
	.string	"msg"
	.byte	0x1
	.2byte	0x285
	.4byte	0x5e4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x27
	.4byte	.LVL243
	.4byte	0x2e9a
	.uleb128 0x28
	.4byte	.LVL244
	.4byte	0x2ea5
	.4byte	0x22b2
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC30
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC40
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC30
	.byte	0
	.uleb128 0x27
	.4byte	.LVL245
	.4byte	0x2eb0
	.uleb128 0x22
	.4byte	.LVL246
	.4byte	0x1387
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x2f
	.4byte	.LBB19
	.4byte	.LBE19-.LBB19
	.uleb128 0x2d
	.4byte	.LASF377
	.byte	0x1
	.2byte	0x28e
	.4byte	0x7f9
	.4byte	.LLST48
	.uleb128 0x2f
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.uleb128 0x3b
	.4byte	.LASF412
	.byte	0x1
	.2byte	0x291
	.4byte	0x406
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.4byte	.LVL251
	.4byte	0x1eee
	.4byte	0x2316
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x22
	.4byte	.LVL252
	.4byte	0x2ee9
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF413
	.byte	0x1
	.2byte	0x2a2
	.4byte	0xfb
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x235d
	.uleb128 0x21
	.string	"msg"
	.byte	0x1
	.2byte	0x2a2
	.4byte	0x1381
	.4byte	.LLST49
	.uleb128 0x27
	.4byte	.LVL261
	.4byte	0x2235
	.byte	0
	.uleb128 0x20
	.4byte	.LASF414
	.byte	0x1
	.2byte	0x2a8
	.4byte	0xfb
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2414
	.uleb128 0x1f
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x2a8
	.4byte	0x4bc
	.4byte	.LLST50
	.uleb128 0x31
	.4byte	.LBB21
	.4byte	.LBE21-.LBB21
	.4byte	0x23f4
	.uleb128 0x30
	.string	"msg"
	.byte	0x1
	.2byte	0x2aa
	.4byte	0x5e4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x27
	.4byte	.LVL264
	.4byte	0x2e9a
	.uleb128 0x28
	.4byte	.LVL265
	.4byte	0x2ea5
	.4byte	0x23da
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC30
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC40
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC30
	.byte	0
	.uleb128 0x27
	.4byte	.LVL266
	.4byte	0x2eb0
	.uleb128 0x22
	.4byte	.LVL267
	.4byte	0x1387
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x3d
	.4byte	.Ldebug_ranges0+0x18
	.uleb128 0x2d
	.4byte	.LASF377
	.byte	0x1
	.2byte	0x2b3
	.4byte	0x7f9
	.4byte	.LLST51
	.uleb128 0x27
	.4byte	.LVL272
	.4byte	0x2f00
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF415
	.byte	0x1
	.2byte	0x2c5
	.4byte	0xfb
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2448
	.uleb128 0x21
	.string	"msg"
	.byte	0x1
	.2byte	0x2c5
	.4byte	0x1381
	.4byte	.LLST52
	.uleb128 0x27
	.4byte	.LVL281
	.4byte	0x235d
	.byte	0
	.uleb128 0x20
	.4byte	.LASF416
	.byte	0x1
	.2byte	0x2ca
	.4byte	0xfb
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x249d
	.uleb128 0x1f
	.4byte	.LASF402
	.byte	0x1
	.2byte	0x2ca
	.4byte	0x51c
	.4byte	.LLST53
	.uleb128 0x3a
	.4byte	.LASF403
	.byte	0x1
	.2byte	0x2ca
	.4byte	0x54c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3a
	.4byte	.LASF404
	.byte	0x1
	.2byte	0x2ca
	.4byte	0x94
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3a
	.4byte	.LASF405
	.byte	0x1
	.2byte	0x2ca
	.4byte	0xf0
	.uleb128 0x1
	.byte	0x55
	.byte	0
	.uleb128 0x20
	.4byte	.LASF417
	.byte	0x1
	.2byte	0x342
	.4byte	0xfb
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x24d6
	.uleb128 0x1f
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x342
	.4byte	0x4bc
	.4byte	.LLST54
	.uleb128 0x3a
	.4byte	.LASF232
	.byte	0x1
	.2byte	0x342
	.4byte	0x222f
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x20
	.4byte	.LASF418
	.byte	0x1
	.2byte	0x174
	.4byte	0xfb
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x26ae
	.uleb128 0x1f
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x174
	.4byte	0x4bc
	.4byte	.LLST55
	.uleb128 0x3a
	.4byte	.LASF94
	.byte	0x1
	.2byte	0x174
	.4byte	0x5de
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2d
	.4byte	.LASF377
	.byte	0x1
	.2byte	0x176
	.4byte	0x7f9
	.4byte	.LLST56
	.uleb128 0x3b
	.4byte	.LASF232
	.byte	0x1
	.2byte	0x177
	.4byte	0x4ec
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x31
	.4byte	.LBB24
	.4byte	.LBE24-.LBB24
	.4byte	0x259d
	.uleb128 0x30
	.string	"msg"
	.byte	0x1
	.2byte	0x179
	.4byte	0x5e4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x27
	.4byte	.LVL288
	.4byte	0x2e9a
	.uleb128 0x28
	.4byte	.LVL289
	.4byte	0x2ea5
	.4byte	0x2582
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC30
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC40
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC30
	.byte	0
	.uleb128 0x27
	.4byte	.LVL290
	.4byte	0x2eb0
	.uleb128 0x22
	.4byte	.LVL291
	.4byte	0x1387
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.byte	0
	.byte	0
	.uleb128 0x3c
	.4byte	.Ldebug_ranges0+0x30
	.4byte	0x25e7
	.uleb128 0x2d
	.4byte	.LASF419
	.byte	0x1
	.2byte	0x18c
	.4byte	0x249
	.4byte	.LLST57
	.uleb128 0x28
	.4byte	.LVL295
	.4byte	0x249d
	.4byte	0x25d1
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x22
	.4byte	.LVL297
	.4byte	0x2f72
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LBB26
	.4byte	.LBE26-.LBB26
	.4byte	0x2676
	.uleb128 0x30
	.string	"evt"
	.byte	0x1
	.2byte	0x19c
	.4byte	0x1090
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x28
	.4byte	.LVL304
	.4byte	0x2e79
	.4byte	0x2623
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.uleb128 0x28
	.4byte	.LVL305
	.4byte	0x2e21
	.4byte	0x2644
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL306
	.4byte	0x2e21
	.4byte	0x2664
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL307
	.4byte	0x2e6e
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL294
	.4byte	0x21f6
	.4byte	0x2691
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x22
	.4byte	.LVL302
	.4byte	0x2f38
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 4
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 8
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF420
	.byte	0x1
	.2byte	0x1ae
	.4byte	0xfb
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x26e2
	.uleb128 0x21
	.string	"msg"
	.byte	0x1
	.2byte	0x1ae
	.4byte	0x1381
	.4byte	.LLST58
	.uleb128 0x27
	.4byte	.LVL321
	.4byte	0x24d6
	.byte	0
	.uleb128 0x20
	.4byte	.LASF421
	.byte	0x1
	.2byte	0x349
	.4byte	0xfb
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x27e5
	.uleb128 0x1f
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x349
	.4byte	0x4bc
	.4byte	.LLST59
	.uleb128 0x31
	.4byte	.LBB28
	.4byte	.LBE28-.LBB28
	.4byte	0x2779
	.uleb128 0x30
	.string	"msg"
	.byte	0x1
	.2byte	0x34b
	.4byte	0x5e4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x27
	.4byte	.LVL324
	.4byte	0x2e9a
	.uleb128 0x28
	.4byte	.LVL325
	.4byte	0x2ea5
	.4byte	0x275f
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC30
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC40
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC30
	.byte	0
	.uleb128 0x27
	.4byte	.LVL326
	.4byte	0x2eb0
	.uleb128 0x22
	.4byte	.LVL327
	.4byte	0x1387
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x3d
	.4byte	.Ldebug_ranges0+0x48
	.uleb128 0x2d
	.4byte	.LASF377
	.byte	0x1
	.2byte	0x353
	.4byte	0x7f9
	.4byte	.LLST60
	.uleb128 0x28
	.4byte	.LVL331
	.4byte	0x131c
	.4byte	0x27a2
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL332
	.4byte	0x149f
	.4byte	0x27b6
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL333
	.4byte	0x2f7d
	.4byte	0x27ca
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL337
	.4byte	0x2f88
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	tcpip_adapter_dhcpc_cb
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF422
	.byte	0x1
	.2byte	0x379
	.4byte	0xfb
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2819
	.uleb128 0x21
	.string	"msg"
	.byte	0x1
	.2byte	0x379
	.4byte	0x1381
	.4byte	.LLST61
	.uleb128 0x27
	.4byte	.LVL351
	.4byte	0x26e2
	.byte	0
	.uleb128 0x20
	.4byte	.LASF423
	.byte	0x1
	.2byte	0x37e
	.4byte	0xfb
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x28f4
	.uleb128 0x1f
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x37e
	.4byte	0x4bc
	.4byte	.LLST62
	.uleb128 0x31
	.4byte	.LBB31
	.4byte	.LBE31-.LBB31
	.4byte	0x28b0
	.uleb128 0x30
	.string	"msg"
	.byte	0x1
	.2byte	0x380
	.4byte	0x5e4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x27
	.4byte	.LVL354
	.4byte	0x2e9a
	.uleb128 0x28
	.4byte	.LVL355
	.4byte	0x2ea5
	.4byte	0x2896
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC30
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC40
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC30
	.byte	0
	.uleb128 0x27
	.4byte	.LVL356
	.4byte	0x2eb0
	.uleb128 0x22
	.4byte	.LVL357
	.4byte	0x1387
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x3d
	.4byte	.Ldebug_ranges0+0x60
	.uleb128 0x2d
	.4byte	.LASF377
	.byte	0x1
	.2byte	0x388
	.4byte	0x7f9
	.4byte	.LLST63
	.uleb128 0x27
	.4byte	.LVL361
	.4byte	0x2f16
	.uleb128 0x28
	.4byte	.LVL362
	.4byte	0x131c
	.4byte	0x28e2
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL363
	.4byte	0x149f
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF424
	.byte	0x1
	.2byte	0x39c
	.4byte	0xfb
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2928
	.uleb128 0x21
	.string	"msg"
	.byte	0x1
	.2byte	0x39c
	.4byte	0x1381
	.4byte	.LLST64
	.uleb128 0x27
	.4byte	.LVL374
	.4byte	0x2819
	.byte	0
	.uleb128 0x20
	.4byte	.LASF425
	.byte	0x1
	.2byte	0x3a1
	.4byte	0xfb
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2988
	.uleb128 0x1f
	.4byte	.LASF426
	.byte	0x1
	.2byte	0x3a1
	.4byte	0x94
	.4byte	.LLST65
	.uleb128 0x3e
	.string	"len"
	.byte	0x1
	.2byte	0x3a1
	.4byte	0xda
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3e
	.string	"eb"
	.byte	0x1
	.2byte	0x3a1
	.4byte	0x94
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x22
	.4byte	.LVL377
	.4byte	0x2f93
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x6
	.byte	0x73
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LASF427
	.byte	0x1
	.2byte	0x3a7
	.4byte	0xfb
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x29ee
	.uleb128 0x1f
	.4byte	.LASF426
	.byte	0x1
	.2byte	0x3a7
	.4byte	0x94
	.4byte	.LLST66
	.uleb128 0x3e
	.string	"len"
	.byte	0x1
	.2byte	0x3a7
	.4byte	0xda
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3e
	.string	"eb"
	.byte	0x1
	.2byte	0x3a7
	.4byte	0x94
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x22
	.4byte	.LVL380
	.4byte	0x2f9e
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x6
	.byte	0x73
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LASF428
	.byte	0x1
	.2byte	0x3ad
	.4byte	0xfb
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2a54
	.uleb128 0x1f
	.4byte	.LASF426
	.byte	0x1
	.2byte	0x3ad
	.4byte	0x94
	.4byte	.LLST67
	.uleb128 0x3e
	.string	"len"
	.byte	0x1
	.2byte	0x3ad
	.4byte	0xda
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3e
	.string	"eb"
	.byte	0x1
	.2byte	0x3ad
	.4byte	0x94
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x22
	.4byte	.LVL383
	.4byte	0x2f9e
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x6
	.byte	0x73
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LASF429
	.byte	0x1
	.2byte	0x3bb
	.4byte	0x12b
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2a8f
	.uleb128 0x21
	.string	"dev"
	.byte	0x1
	.2byte	0x3bb
	.4byte	0x94
	.4byte	.LLST68
	.uleb128 0x2d
	.4byte	.LASF377
	.byte	0x1
	.2byte	0x3bd
	.4byte	0x7f9
	.4byte	.LLST69
	.byte	0
	.uleb128 0x20
	.4byte	.LASF430
	.byte	0x1
	.2byte	0x3ca
	.4byte	0xfb
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2b34
	.uleb128 0x1f
	.4byte	.LASF431
	.byte	0x1
	.2byte	0x3ca
	.4byte	0x2b34
	.4byte	.LLST70
	.uleb128 0x3a
	.4byte	.LASF432
	.byte	0x1
	.2byte	0x3ca
	.4byte	0x2b3a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3f
	.string	"i"
	.byte	0x1
	.2byte	0x3cc
	.4byte	0x6d
	.4byte	.LLST71
	.uleb128 0x28
	.4byte	.LVL395
	.4byte	0x2fa9
	.4byte	0x2af4
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x7c
	.byte	0
	.uleb128 0x28
	.4byte	.LVL398
	.4byte	0x2e21
	.4byte	0x2b1d
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0xc
	.byte	0x75
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x24
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.uleb128 0x22
	.4byte	.LVL399
	.4byte	0x2fb2
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 8
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1f6
	.uleb128 0x6
	.byte	0x4
	.4byte	0x48c
	.uleb128 0x20
	.4byte	.LASF433
	.byte	0x1
	.2byte	0x3dc
	.4byte	0xfb
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2c57
	.uleb128 0x1f
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x3dc
	.4byte	0x4bc
	.4byte	.LLST72
	.uleb128 0x3a
	.4byte	.LASF95
	.byte	0x1
	.2byte	0x3dc
	.4byte	0xb9
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2d
	.4byte	.LASF377
	.byte	0x1
	.2byte	0x3e0
	.4byte	0x7f9
	.4byte	.LLST73
	.uleb128 0x3b
	.4byte	.LASF434
	.byte	0x1
	.2byte	0x3e1
	.4byte	0x2c57
	.uleb128 0x5
	.byte	0x3
	.4byte	hostinfo$7359
	.uleb128 0x31
	.4byte	.LBB34
	.4byte	.LBE34-.LBB34
	.4byte	0x2c07
	.uleb128 0x30
	.string	"msg"
	.byte	0x1
	.2byte	0x3df
	.4byte	0x5e4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x27
	.4byte	.LVL405
	.4byte	0x2e9a
	.uleb128 0x28
	.4byte	.LVL406
	.4byte	0x2ea5
	.4byte	0x2bed
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC30
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC40
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC30
	.byte	0
	.uleb128 0x27
	.4byte	.LVL407
	.4byte	0x2eb0
	.uleb128 0x22
	.4byte	.LVL408
	.4byte	0x1387
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL411
	.4byte	0x2fbd
	.4byte	0x2c1b
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL414
	.4byte	0x2fa9
	.4byte	0x2c3a
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL415
	.4byte	0x2fc8
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0xb2
	.4byte	0x2c6d
	.uleb128 0xc
	.4byte	0x9d
	.byte	0x2
	.uleb128 0xc
	.4byte	0x9d
	.byte	0x20
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF435
	.byte	0x1
	.2byte	0x3f9
	.4byte	0xfb
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2ca1
	.uleb128 0x21
	.string	"msg"
	.byte	0x1
	.2byte	0x3f9
	.4byte	0x1381
	.4byte	.LLST74
	.uleb128 0x27
	.4byte	.LVL423
	.4byte	0x2b40
	.byte	0
	.uleb128 0x20
	.4byte	.LASF436
	.byte	0x1
	.2byte	0x3fe
	.4byte	0xfb
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2cea
	.uleb128 0x1f
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x3fe
	.4byte	0x4bc
	.4byte	.LLST75
	.uleb128 0x3a
	.4byte	.LASF95
	.byte	0x1
	.2byte	0x3fe
	.4byte	0x2cea
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2d
	.4byte	.LASF377
	.byte	0x1
	.2byte	0x401
	.4byte	0x7f9
	.4byte	.LLST76
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb9
	.uleb128 0xb
	.4byte	0x7f9
	.4byte	0x2d00
	.uleb128 0xc
	.4byte	0x9d
	.byte	0x2
	.byte	0
	.uleb128 0x40
	.4byte	.LASF437
	.byte	0x1
	.byte	0x29
	.4byte	0x2cf0
	.uleb128 0x5
	.byte	0x3
	.4byte	esp_netif
	.uleb128 0xb
	.4byte	0x406
	.4byte	0x2d21
	.uleb128 0xc
	.4byte	0x9d
	.byte	0x2
	.byte	0
	.uleb128 0x40
	.4byte	.LASF438
	.byte	0x1
	.byte	0x2a
	.4byte	0x2d11
	.uleb128 0x5
	.byte	0x3
	.4byte	esp_ip
	.uleb128 0x40
	.4byte	.LASF439
	.byte	0x1
	.byte	0x2b
	.4byte	0x2d11
	.uleb128 0x5
	.byte	0x3
	.4byte	esp_ip_old
	.uleb128 0xb
	.4byte	0x425
	.4byte	0x2d53
	.uleb128 0xc
	.4byte	0x9d
	.byte	0x2
	.byte	0
	.uleb128 0x40
	.4byte	.LASF440
	.byte	0x1
	.byte	0x2c
	.4byte	0x2d43
	.uleb128 0x5
	.byte	0x3
	.4byte	esp_ip6
	.uleb128 0xb
	.4byte	0x87e
	.4byte	0x2d74
	.uleb128 0xc
	.4byte	0x9d
	.byte	0x2
	.byte	0
	.uleb128 0x40
	.4byte	.LASF441
	.byte	0x1
	.byte	0x2d
	.4byte	0x2d64
	.uleb128 0x5
	.byte	0x3
	.4byte	esp_netif_init_fn
	.uleb128 0xb
	.4byte	0x608
	.4byte	0x2d95
	.uleb128 0xc
	.4byte	0x9d
	.byte	0x2
	.byte	0
	.uleb128 0x40
	.4byte	.LASF442
	.byte	0x1
	.byte	0x2e
	.4byte	0x2d85
	.uleb128 0x5
	.byte	0x3
	.4byte	esp_ip_lost_timer
	.uleb128 0x40
	.4byte	.LASF443
	.byte	0x1
	.byte	0x30
	.4byte	0x4ec
	.uleb128 0x5
	.byte	0x3
	.4byte	dhcps_status
	.uleb128 0xb
	.4byte	0x4ec
	.4byte	0x2dc7
	.uleb128 0xc
	.4byte	0x9d
	.byte	0x2
	.byte	0
	.uleb128 0x40
	.4byte	.LASF444
	.byte	0x1
	.byte	0x31
	.4byte	0x2db7
	.uleb128 0x5
	.byte	0x3
	.4byte	dhcpc_status
	.uleb128 0x40
	.4byte	.LASF445
	.byte	0x1
	.byte	0x40
	.4byte	0x233
	.uleb128 0x5
	.byte	0x3
	.4byte	api_sync_sem
	.uleb128 0x40
	.4byte	.LASF446
	.byte	0x1
	.byte	0x41
	.4byte	0x17e
	.uleb128 0x5
	.byte	0x3
	.4byte	tcpip_inited
	.uleb128 0x40
	.4byte	.LASF447
	.byte	0x1
	.byte	0x42
	.4byte	0x233
	.uleb128 0x5
	.byte	0x3
	.4byte	api_lock_sem
	.uleb128 0x41
	.4byte	.LASF448
	.byte	0xe
	.byte	0xf5
	.4byte	0xc2a
	.uleb128 0x41
	.4byte	.LASF449
	.byte	0x1
	.byte	0x43
	.4byte	0x23e
	.uleb128 0x42
	.4byte	.LASF484
	.4byte	.LASF484
	.uleb128 0x43
	.4byte	.LASF450
	.4byte	.LASF450
	.byte	0x7
	.2byte	0x83e
	.uleb128 0x44
	.4byte	.LASF451
	.4byte	.LASF451
	.byte	0x1b
	.byte	0x9c
	.uleb128 0x44
	.4byte	.LASF452
	.4byte	.LASF452
	.byte	0x1c
	.byte	0x63
	.uleb128 0x44
	.4byte	.LASF453
	.4byte	.LASF453
	.byte	0x1b
	.byte	0x96
	.uleb128 0x43
	.4byte	.LASF454
	.4byte	.LASF454
	.byte	0x13
	.2byte	0x174
	.uleb128 0x44
	.4byte	.LASF455
	.4byte	.LASF455
	.byte	0x1d
	.byte	0x53
	.uleb128 0x44
	.4byte	.LASF456
	.4byte	.LASF456
	.byte	0x18
	.byte	0x93
	.uleb128 0x44
	.4byte	.LASF457
	.4byte	.LASF457
	.byte	0x1e
	.byte	0x16
	.uleb128 0x44
	.4byte	.LASF458
	.4byte	.LASF458
	.byte	0x17
	.byte	0x3a
	.uleb128 0x44
	.4byte	.LASF459
	.4byte	.LASF459
	.byte	0x1b
	.byte	0x93
	.uleb128 0x44
	.4byte	.LASF460
	.4byte	.LASF460
	.byte	0x1a
	.byte	0x4c
	.uleb128 0x44
	.4byte	.LASF461
	.4byte	.LASF461
	.byte	0x1a
	.byte	0x60
	.uleb128 0x44
	.4byte	.LASF462
	.4byte	.LASF462
	.byte	0x1f
	.byte	0x47
	.uleb128 0x44
	.4byte	.LASF463
	.4byte	.LASF463
	.byte	0x1f
	.byte	0x57
	.uleb128 0x44
	.4byte	.LASF464
	.4byte	.LASF464
	.byte	0x20
	.byte	0x29
	.uleb128 0x43
	.4byte	.LASF465
	.4byte	.LASF465
	.byte	0x13
	.2byte	0x163
	.uleb128 0x43
	.4byte	.LASF466
	.4byte	.LASF466
	.byte	0x13
	.2byte	0x181
	.uleb128 0x44
	.4byte	.LASF467
	.4byte	.LASF467
	.byte	0xf
	.byte	0x49
	.uleb128 0x43
	.4byte	.LASF468
	.4byte	.LASF468
	.byte	0x13
	.2byte	0x16c
	.uleb128 0x44
	.4byte	.LASF469
	.4byte	.LASF469
	.byte	0xf
	.byte	0x4a
	.uleb128 0x44
	.4byte	.LASF470
	.4byte	.LASF470
	.byte	0x15
	.byte	0xa4
	.uleb128 0x44
	.4byte	.LASF471
	.4byte	.LASF471
	.byte	0x15
	.byte	0xa6
	.uleb128 0x44
	.4byte	.LASF472
	.4byte	.LASF472
	.byte	0x15
	.byte	0x96
	.uleb128 0x43
	.4byte	.LASF473
	.4byte	.LASF473
	.byte	0x13
	.2byte	0x182
	.uleb128 0x43
	.4byte	.LASF474
	.4byte	.LASF474
	.byte	0x13
	.2byte	0x169
	.uleb128 0x43
	.4byte	.LASF475
	.4byte	.LASF475
	.byte	0x13
	.2byte	0x1b4
	.uleb128 0x43
	.4byte	.LASF476
	.4byte	.LASF476
	.byte	0x21
	.2byte	0x165
	.uleb128 0x44
	.4byte	.LASF477
	.4byte	.LASF477
	.byte	0x22
	.byte	0x6e
	.uleb128 0x44
	.4byte	.LASF478
	.4byte	.LASF478
	.byte	0xf
	.byte	0x4b
	.uleb128 0x44
	.4byte	.LASF479
	.4byte	.LASF479
	.byte	0x23
	.byte	0x62
	.uleb128 0x44
	.4byte	.LASF480
	.4byte	.LASF480
	.byte	0x15
	.byte	0xa0
	.uleb128 0x44
	.4byte	.LASF481
	.4byte	.LASF481
	.byte	0x15
	.byte	0x9a
	.uleb128 0x44
	.4byte	.LASF482
	.4byte	.LASF482
	.byte	0x24
	.byte	0x1b
	.uleb128 0x44
	.4byte	.LASF483
	.4byte	.LASF483
	.byte	0x25
	.byte	0x20
	.uleb128 0x42
	.4byte	.LASF485
	.4byte	.LASF485
	.uleb128 0x44
	.4byte	.LASF486
	.4byte	.LASF486
	.byte	0xf
	.byte	0x4c
	.uleb128 0x44
	.4byte	.LASF487
	.4byte	.LASF487
	.byte	0x1e
	.byte	0x21
	.uleb128 0x44
	.4byte	.LASF488
	.4byte	.LASF488
	.byte	0x1e
	.byte	0x77
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
	.uleb128 0xa
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.uleb128 0x41
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
	.uleb128 0x42
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
	.uleb128 0x43
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
	.uleb128 0x44
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
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL2
	.4byte	.LFE58
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
	.byte	0x52
	.4byte	.LVL5
	.4byte	.LFE25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL6
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
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL13
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL22
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL27
	.4byte	.LFE43
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL23
	.4byte	.LVL27
	.2byte	0xb
	.byte	0x72
	.sleb128 0
	.byte	0x3c
	.byte	0x1e
	.byte	0x3
	.4byte	esp_ip_old
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LFE43
	.2byte	0xc
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x3c
	.byte	0x1e
	.byte	0x3
	.4byte	esp_ip_old
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL25
	.4byte	.LVL26-1
	.2byte	0xa
	.byte	0x72
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	esp_netif
	.byte	0x22
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL28
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL32
	.4byte	.LFE44
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL29
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL32
	.4byte	.LFE44
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0xa
	.byte	0x72
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	esp_netif
	.byte	0x22
	.4byte	.LVL32
	.4byte	.LVL33-1
	.2byte	0xb
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	esp_netif
	.byte	0x22
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL34
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL39
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL34
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL36
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL35
	.4byte	.LVL40-1
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL41
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL46
	.4byte	.LVL48
	.2byte	0x3
	.byte	0x78
	.sleb128 -44
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LVL53
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL55
	.4byte	.LFE42
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL42
	.4byte	.LVL45
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL42
	.4byte	.LVL44
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL44
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL54
	.4byte	.LVL56
	.2byte	0xf
	.byte	0x74
	.sleb128 0
	.byte	0x3
	.4byte	esp_ip
	.byte	0x22
	.byte	0x3
	.4byte	esp_ip_old
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0xc
	.byte	0x73
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x3
	.4byte	esp_ip_old
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL43
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL53
	.4byte	.LVL57-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL60
	.4byte	.LVL61-1
	.2byte	0x7
	.byte	0x7a
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL64
	.4byte	.LVL65-1
	.2byte	0x7
	.byte	0x7a
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x26
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL67
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL73
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL82
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
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL67
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL76
	.4byte	.LVL77
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL78
	.4byte	.LVL85
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL85
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL75
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL91
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL93
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL94
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL96
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL97
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL99
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL100
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL102
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL103
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL108
	.4byte	.LVL109
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL109
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
	.4byte	.LVL118
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL118
	.4byte	.LVL122
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL122
	.4byte	.LVL123
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL123
	.4byte	.LVL124
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL124
	.4byte	.LVL125
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL125
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL126
	.4byte	.LVL128
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL128
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL129
	.4byte	.LVL134
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL134
	.4byte	.LVL135
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL135
	.4byte	.LVL137
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL137
	.4byte	.LVL140
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL140
	.4byte	.LVL141
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL141
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL142
	.4byte	.LVL144
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL144
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL145
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
	.4byte	.LVL157
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL157
	.4byte	.LVL158
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL158
	.4byte	.LVL159
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL159
	.4byte	.LVL160
	.2byte	0x3
	.byte	0x7a
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL160
	.4byte	.LVL161
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL161
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL162
	.4byte	.LVL164
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL164
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL165
	.4byte	.LVL169
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL169
	.4byte	.LVL170-1
	.2byte	0x2
	.byte	0x91
	.sleb128 -52
	.4byte	.LVL170-1
	.4byte	.LVL171
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL171
	.4byte	.LVL172
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL172
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL173
	.4byte	.LVL174
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL174
	.4byte	.LVL176
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL176
	.4byte	.LVL177
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL177
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL178
	.4byte	.LVL180
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL180
	.4byte	.LVL181
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL181
	.4byte	.LVL183
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL183
	.4byte	.LVL184
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL184
	.4byte	.LVL185
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL185
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL179
	.4byte	.LVL182
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL182
	.4byte	.LVL183
	.2byte	0xa
	.byte	0x72
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	esp_netif
	.byte	0x22
	.4byte	.LVL183
	.4byte	.LVL184
	.2byte	0xb
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	esp_netif
	.byte	0x22
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL186
	.4byte	.LVL191
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL191
	.4byte	.LVL192
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL192
	.4byte	.LVL193
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL193
	.4byte	.LVL198
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL198
	.4byte	.LVL199
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL199
	.4byte	.LFE32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL194
	.4byte	.LVL197
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL200
	.4byte	.LVL201
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL201
	.4byte	.LVL202
	.2byte	0x8
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x32
	.byte	0x24
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.4byte	.LVL202
	.4byte	.LVL203
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL203
	.4byte	.LFE32
	.2byte	0xb
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	esp_netif
	.byte	0x22
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL204
	.4byte	.LVL206
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL206
	.4byte	.LFE33
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL207
	.4byte	.LVL208
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL208
	.4byte	.LVL212
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL212
	.4byte	.LVL213
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL213
	.4byte	.LFE34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL209
	.4byte	.LVL210
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL210
	.4byte	.LVL211-1
	.2byte	0x3
	.byte	0x7b
	.sleb128 -64
	.byte	0x9f
	.4byte	.LVL214
	.4byte	.LFE34
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL215
	.4byte	.LVL218
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL218
	.4byte	.LVL220
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL220
	.4byte	.LVL221
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL221
	.4byte	.LVL236
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL236
	.4byte	.LVL237
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL237
	.4byte	.LVL238
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL238
	.4byte	.LVL239
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL239
	.4byte	.LFE35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL215
	.4byte	.LVL227
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL227
	.4byte	.LVL235
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL235
	.4byte	.LFE35
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL222
	.4byte	.LVL225
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL225
	.4byte	.LVL231
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL222
	.4byte	.LVL227
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL227
	.4byte	.LVL230
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL222
	.4byte	.LVL228
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL228
	.4byte	.LVL232
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL234
	.4byte	.LVL235
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL222
	.4byte	.LVL235
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL240
	.4byte	.LVL241
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL241
	.4byte	.LFE36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL242
	.4byte	.LVL247
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL247
	.4byte	.LVL248
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL248
	.4byte	.LVL249
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL249
	.4byte	.LVL256
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL256
	.4byte	.LVL257
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL257
	.4byte	.LVL258
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL258
	.4byte	.LVL259
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL259
	.4byte	.LFE37
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL250
	.4byte	.LVL253
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL254
	.4byte	.LVL255
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL255
	.4byte	.LVL256
	.2byte	0xb
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	esp_netif
	.byte	0x22
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL260
	.4byte	.LVL262
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL262
	.4byte	.LFE38
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL263
	.4byte	.LVL268
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL268
	.4byte	.LVL269
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL269
	.4byte	.LVL270
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL270
	.4byte	.LVL273
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL273
	.4byte	.LVL274
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL274
	.4byte	.LVL275
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL275
	.4byte	.LVL276
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL276
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
	.4byte	.LFE39
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL271
	.4byte	.LVL272-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL277
	.4byte	.LVL278
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL280
	.4byte	.LVL282
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL282
	.4byte	.LFE40
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL283
	.4byte	.LVL284
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL284
	.4byte	.LFE41
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL285
	.4byte	.LVL286
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL286
	.4byte	.LFE45
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL287
	.4byte	.LVL292
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL292
	.4byte	.LVL293
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL293
	.4byte	.LVL303
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL303
	.4byte	.LVL308
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL308
	.4byte	.LVL309
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL309
	.4byte	.LVL310
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL310
	.4byte	.LVL311
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL311
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
	.4byte	.LVL314
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL314
	.4byte	.LVL315
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL315
	.4byte	.LVL316
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL316
	.4byte	.LVL317
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL317
	.4byte	.LVL318
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL318
	.4byte	.LVL319
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL319
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL301
	.4byte	.LVL302-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL314
	.4byte	.LVL318
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL296
	.4byte	.LVL298
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL298
	.4byte	.LVL299
	.2byte	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL299
	.4byte	.LVL300
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL320
	.4byte	.LVL322
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL322
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL323
	.4byte	.LVL328
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL328
	.4byte	.LVL329
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL329
	.4byte	.LVL335
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL335
	.4byte	.LVL336
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL336
	.4byte	.LVL339
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL339
	.4byte	.LVL340
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL340
	.4byte	.LVL341
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL341
	.4byte	.LVL342
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL342
	.4byte	.LVL343
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL343
	.4byte	.LVL344
	.2byte	0x3
	.byte	0x79
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL344
	.4byte	.LVL345
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL345
	.4byte	.LVL346
	.2byte	0x3
	.byte	0x79
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL346
	.4byte	.LVL347
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL347
	.4byte	.LVL348
	.2byte	0x3
	.byte	0x79
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL348
	.4byte	.LVL349
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL349
	.4byte	.LFE46
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL330
	.4byte	.LVL334
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL336
	.4byte	.LVL338
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL340
	.4byte	.LVL342
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL348
	.4byte	.LFE46
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LVL350
	.4byte	.LVL352
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL352
	.4byte	.LFE47
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL353
	.4byte	.LVL358
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL358
	.4byte	.LVL359
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL359
	.4byte	.LVL364
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL364
	.4byte	.LVL365
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL365
	.4byte	.LVL366
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL366
	.4byte	.LVL367
	.2byte	0x3
	.byte	0x79
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL367
	.4byte	.LVL368
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL368
	.4byte	.LVL369
	.2byte	0x3
	.byte	0x79
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL369
	.4byte	.LVL370
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL370
	.4byte	.LVL371
	.2byte	0x3
	.byte	0x79
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL371
	.4byte	.LVL372
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL372
	.4byte	.LFE48
	.2byte	0x3
	.byte	0x79
	.sleb128 2
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST63:
	.4byte	.LVL360
	.4byte	.LVL361-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL369
	.4byte	.LVL371
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST64:
	.4byte	.LVL373
	.4byte	.LVL375
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL375
	.4byte	.LFE49
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST65:
	.4byte	.LVL376
	.4byte	.LVL378
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL378
	.4byte	.LFE50
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST66:
	.4byte	.LVL379
	.4byte	.LVL381
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL381
	.4byte	.LFE51
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST67:
	.4byte	.LVL382
	.4byte	.LVL384
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL384
	.4byte	.LFE52
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST68:
	.4byte	.LVL385
	.4byte	.LVL387
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL387
	.4byte	.LVL388
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL388
	.4byte	.LVL389
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL389
	.4byte	.LVL390
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL390
	.4byte	.LVL391
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL391
	.4byte	.LVL392
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL392
	.4byte	.LVL393
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL393
	.4byte	.LFE53
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST69:
	.4byte	.LVL386
	.4byte	.LVL387
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL387
	.4byte	.LVL388
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL388
	.4byte	.LVL389
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL389
	.4byte	.LVL390
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL390
	.4byte	.LVL391
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL391
	.4byte	.LVL392
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL392
	.4byte	.LVL393
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL393
	.4byte	.LFE53
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST70:
	.4byte	.LVL394
	.4byte	.LVL401
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL401
	.4byte	.LVL402
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL402
	.4byte	.LVL403
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL403
	.4byte	.LFE54
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST71:
	.4byte	.LVL396
	.4byte	.LVL397
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL397
	.4byte	.LVL402
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST72:
	.4byte	.LVL404
	.4byte	.LVL409
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL409
	.4byte	.LVL410
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL410
	.4byte	.LVL413
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL413
	.4byte	.LVL416
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL416
	.4byte	.LVL417
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL417
	.4byte	.LVL418
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL418
	.4byte	.LVL419
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL419
	.4byte	.LVL420
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL420
	.4byte	.LVL421
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL421
	.4byte	.LFE55
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST73:
	.4byte	.LVL412
	.4byte	.LVL416
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL420
	.4byte	.LFE55
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST74:
	.4byte	.LVL422
	.4byte	.LVL424
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL424
	.4byte	.LFE56
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST75:
	.4byte	.LVL425
	.4byte	.LVL427
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL427
	.4byte	.LVL430
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL430
	.4byte	.LVL431
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL431
	.4byte	.LFE57
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST76:
	.4byte	.LVL426
	.4byte	.LVL428
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL428
	.4byte	.LVL429
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL429
	.4byte	.LVL430
	.2byte	0x8
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x32
	.byte	0x24
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.4byte	.LVL430
	.4byte	.LVL432
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL432
	.4byte	.LVL433
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL433
	.4byte	.LFE57
	.2byte	0x8
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x32
	.byte	0x24
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x19c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
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
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB16
	.4byte	.LBE16
	.4byte	.LBB17
	.4byte	.LBE17
	.4byte	0
	.4byte	0
	.4byte	.LBB22
	.4byte	.LBE22
	.4byte	.LBB23
	.4byte	.LBE23
	.4byte	0
	.4byte	0
	.4byte	.LBB25
	.4byte	.LBE25
	.4byte	.LBB27
	.4byte	.LBE27
	.4byte	0
	.4byte	0
	.4byte	.LBB29
	.4byte	.LBE29
	.4byte	.LBB30
	.4byte	.LBE30
	.4byte	0
	.4byte	0
	.4byte	.LBB32
	.4byte	.LBE32
	.4byte	.LBB33
	.4byte	.LBE33
	.4byte	0
	.4byte	0
	.4byte	.LFB58
	.4byte	.LFE58
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB43
	.4byte	.LFE43
	.4byte	.LFB44
	.4byte	.LFE44
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB17
	.4byte	.LFE17
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
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	.LFB37
	.4byte	.LFE37
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LFB45
	.4byte	.LFE45
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB46
	.4byte	.LFE46
	.4byte	.LFB47
	.4byte	.LFE47
	.4byte	.LFB48
	.4byte	.LFE48
	.4byte	.LFB49
	.4byte	.LFE49
	.4byte	.LFB50
	.4byte	.LFE50
	.4byte	.LFB51
	.4byte	.LFE51
	.4byte	.LFB52
	.4byte	.LFE52
	.4byte	.LFB53
	.4byte	.LFE53
	.4byte	.LFB54
	.4byte	.LFE54
	.4byte	.LFB55
	.4byte	.LFE55
	.4byte	.LFB56
	.4byte	.LFE56
	.4byte	.LFB57
	.4byte	.LFE57
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF84:
	.string	"tcpip_adapter_option_mode_t"
.LASF135:
	.string	"MEMP_TCPIP_MSG_API"
.LASF197:
	.string	"chaddr"
.LASF383:
	.string	"__func__"
.LASF191:
	.string	"hops"
.LASF25:
	.string	"ESP_IF_MAX"
.LASF228:
	.string	"WPS_FAIL_REASON_NORMAL"
.LASF435:
	.string	"tcpip_adapter_set_hostname_api"
.LASF490:
	.string	"C:/esp/esp-idf/components/tcpip_adapter/tcpip_adapter_lwip.c"
.LASF236:
	.string	"ssid"
.LASF257:
	.string	"connected"
.LASF1:
	.string	"__uint8_t"
.LASF97:
	.string	"tcpip_adatper_ip_lost_timer_s"
.LASF35:
	.string	"_Bool"
.LASF103:
	.string	"payload"
.LASF494:
	.string	"tcpip_adapter_init"
.LASF410:
	.string	"tcpip_adapter_dhcps_get_status"
.LASF397:
	.string	"tcpip_adapter_create_ip6_linklocal"
.LASF109:
	.string	"ip_addr"
.LASF247:
	.string	"ip_changed"
.LASF312:
	.string	"NETWORK_INFORMATION_SERVERS"
.LASF68:
	.string	"tcpip_adapter_sta_info_t"
.LASF18:
	.string	"uint16_t"
.LASF318:
	.string	"NETBIOS_OVER_TCP_IP_SCOPE"
.LASF194:
	.string	"yiaddr"
.LASF179:
	.string	"so_options"
.LASF471:
	.string	"dhcp_stop"
.LASF390:
	.string	"tcpip_adapter_up"
.LASF102:
	.string	"next"
.LASF457:
	.string	"memcmp"
.LASF332:
	.string	"REQUESTED_IP_ADDRESS"
.LASF463:
	.string	"calloc"
.LASF86:
	.string	"TCPIP_ADAPTER_REQUESTED_IP_ADDRESS"
.LASF121:
	.string	"rs_count"
.LASF333:
	.string	"IP_ADDRESS_LEASE_TIME"
.LASF393:
	.string	"tcpip_adapter_down_api"
.LASF483:
	.string	"wlanif_input"
.LASF381:
	.string	"tcpip_adapter_start"
.LASF100:
	.string	"err_t"
.LASF27:
	.string	"WIFI_AUTH_OPEN"
.LASF272:
	.string	"SUBNET_MASK"
.LASF217:
	.string	"SYSTEM_EVENT_AP_STACONNECTED"
.LASF184:
	.string	"recv"
.LASF493:
	.string	"tcpip_if_to_netif_init_fn"
.LASF465:
	.string	"netif_add"
.LASF335:
	.string	"TFTP_SERVER_NAME"
.LASF368:
	.string	"tcpip_adapter_ipc_check"
.LASF360:
	.string	"ESP_LOG_NONE"
.LASF118:
	.string	"dhcps_pcb"
.LASF74:
	.string	"tcpip_adapter_if_t"
.LASF222:
	.string	"SYSTEM_EVENT_ETH_STOP"
.LASF287:
	.string	"SWAP_SERVER"
.LASF29:
	.string	"WIFI_AUTH_WPA_PSK"
.LASF396:
	.string	"tcpip_adapter_get_ip_info"
.LASF234:
	.string	"scan_id"
.LASF422:
	.string	"tcpip_adapter_dhcpc_start_api"
.LASF19:
	.string	"int32_t"
.LASF155:
	.string	"msg_in"
.LASF254:
	.string	"system_event_ap_stadisconnected_t"
.LASF479:
	.string	"dns_setserver"
.LASF380:
	.string	"tcpip_adapter_set_old_ip_info_api"
.LASF134:
	.string	"MEMP_NETCONN"
.LASF43:
	.string	"u8_t"
.LASF484:
	.string	"memcpy"
.LASF285:
	.string	"MERIT_DUMP_FILE"
.LASF492:
	.string	"dhcps_offer_option"
.LASF376:
	.string	"tcpip_adapter_nd6_cb"
.LASF268:
	.string	"system_event_info_t"
.LASF462:
	.string	"abort"
.LASF367:
	.string	"tcpip_adapter_reset_ip_info"
.LASF278:
	.string	"LOG_SERVER"
.LASF152:
	.string	"netif_igmp_mac_filter_fn"
.LASF44:
	.string	"s8_t"
.LASF229:
	.string	"WPS_FAIL_REASON_RECV_M2D"
.LASF71:
	.string	"TCPIP_ADAPTER_IF_AP"
.LASF63:
	.string	"OFFER_ROUTER"
.LASF165:
	.string	"t1_renew_time"
.LASF394:
	.string	"tcpip_adapter_set_old_ip_info"
.LASF227:
	.string	"system_event_id_t"
.LASF466:
	.string	"netif_set_up"
.LASF160:
	.string	"msg_out"
.LASF369:
	.string	"api_msg"
.LASF443:
	.string	"dhcps_status"
.LASF51:
	.string	"ip4_addr_p_t"
.LASF449:
	.string	"g_lwip_task"
.LASF117:
	.string	"dhcp"
.LASF56:
	.string	"type"
.LASF311:
	.string	"NETWORK_INFORMATION_SERVICE_DOMAIN"
.LASF303:
	.string	"ROUTER_SOLICITATION_ADDRESS"
.LASF5:
	.string	"__uint16_t"
.LASF331:
	.string	"STREETTALK_DIRECTORY_ASSISTANCE_SERVER"
.LASF230:
	.string	"WPS_FAIL_REASON_MAX"
.LASF98:
	.string	"timer_running"
.LASF78:
	.string	"TCPIP_ADAPTER_DHCP_STATUS_MAX"
.LASF416:
	.string	"tcpip_adapter_dhcpc_option"
.LASF99:
	.string	"tcpip_adapter_ip_lost_timer_t"
.LASF150:
	.string	"netif_output_ip6_fn"
.LASF320:
	.string	"X_WINDOW_SYSTEM_DISPLAY_MANAGER"
.LASF136:
	.string	"MEMP_TCPIP_MSG_INPKT"
.LASF58:
	.string	"enable"
.LASF407:
	.string	"info"
.LASF271:
	.string	"system_event_t"
.LASF3:
	.string	"unsigned char"
.LASF70:
	.string	"TCPIP_ADAPTER_IF_STA"
.LASF436:
	.string	"tcpip_adapter_get_hostname"
.LASF263:
	.string	"sta_er_fail_reason"
.LASF284:
	.string	"BOOT_FILE_SIZE"
.LASF113:
	.string	"output"
.LASF344:
	.string	"VENDOR_CLASS_IDENTIFIER"
.LASF352:
	.string	"CLIENT_LAST_TRANSACTION_TIME"
.LASF354:
	.string	"USER_AUTHENTICATION_PROTOCOL"
.LASF195:
	.string	"siaddr"
.LASF65:
	.string	"netmask"
.LASF83:
	.string	"TCPIP_ADAPTER_OP_MAX"
.LASF233:
	.string	"number"
.LASF276:
	.string	"NAME_SERVER"
.LASF144:
	.string	"MEMP_PBUF"
.LASF266:
	.string	"ap_probereqrecved"
.LASF382:
	.string	"netif_init"
.LASF186:
	.string	"tcpip_callback_fn"
.LASF26:
	.string	"esp_interface_t"
.LASF141:
	.string	"MEMP_ND6_QUEUE"
.LASF336:
	.string	"BOOTFILE_NAME"
.LASF363:
	.string	"ESP_LOG_INFO"
.LASF429:
	.string	"tcpip_adapter_get_esp_if"
.LASF477:
	.string	"lwip_htonl"
.LASF264:
	.string	"sta_connected"
.LASF131:
	.string	"MEMP_TCP_PCB_LISTEN"
.LASF245:
	.string	"new_mode"
.LASF452:
	.string	"tcpip_send_api_msg"
.LASF322:
	.string	"NETWORK_INFORMATION_SERVICE_PLUS_SERVERS"
.LASF210:
	.string	"SYSTEM_EVENT_STA_LOST_IP"
.LASF193:
	.string	"ciaddr"
.LASF448:
	.string	"ip_addr_any"
.LASF455:
	.string	"sys_timeout"
.LASF340:
	.string	"MESSAGE"
.LASF105:
	.string	"flags"
.LASF54:
	.string	"_ip_addr"
.LASF440:
	.string	"esp_ip6"
.LASF115:
	.string	"output_ip6"
.LASF385:
	.string	"tcpip_adapter_eth_start"
.LASF295:
	.string	"PATH_MTU_AGING_TIMEOUT"
.LASF225:
	.string	"SYSTEM_EVENT_ETH_GOT_IP"
.LASF346:
	.string	"USER_CLASS"
.LASF277:
	.string	"DOMAIN_NAME_SERVER"
.LASF60:
	.string	"end_ip"
.LASF261:
	.string	"got_ip"
.LASF122:
	.string	"hwaddr_len"
.LASF475:
	.string	"netif_create_ip6_linklocal_address"
.LASF79:
	.string	"tcpip_adapter_dhcp_status_t"
.LASF488:
	.string	"strlcpy"
.LASF470:
	.string	"dhcp_release"
.LASF17:
	.string	"uint8_t"
.LASF91:
	.string	"tcpip_adapter_api_msg_s"
.LASF96:
	.string	"tcpip_adapter_api_msg_t"
.LASF427:
	.string	"tcpip_adapter_sta_input"
.LASF73:
	.string	"TCPIP_ADAPTER_IF_MAX"
.LASF50:
	.string	"ip4_addr_t"
.LASF168:
	.string	"t0_timeout"
.LASF341:
	.string	"MAXIMUM_DHCP_MESSAGE_SIZE"
.LASF88:
	.string	"TCPIP_ADAPTER_IP_REQUEST_RETRY_TIME"
.LASF163:
	.string	"t1_timeout"
.LASF413:
	.string	"tcpip_adapter_dhcps_start_api"
.LASF164:
	.string	"t2_timeout"
.LASF291:
	.string	"NON_LOCAL_SOURCE_ROUTING"
.LASF424:
	.string	"tcpip_adapter_dhcpc_stop_api"
.LASF139:
	.string	"MEMP_SYS_TIMEOUT"
.LASF468:
	.string	"netif_remove"
.LASF302:
	.string	"PERFORM_ROUTER_DISCOVERY"
.LASF47:
	.string	"addr"
.LASF149:
	.string	"netif_output_fn"
.LASF289:
	.string	"EXTENSIONS_PATH"
.LASF166:
	.string	"t2_rebind_time"
.LASF327:
	.string	"DEFAULT_WWW_SERVER"
.LASF202:
	.string	"SYSTEM_EVENT_WIFI_READY"
.LASF138:
	.string	"MEMP_IGMP_GROUP"
.LASF384:
	.string	"tcpip_adapter_start_api"
.LASF45:
	.string	"u16_t"
.LASF241:
	.string	"system_event_sta_connected_t"
.LASF343:
	.string	"REBINDING_T2_TIME_VALUE"
.LASF274:
	.string	"ROUTER"
.LASF330:
	.string	"STREETTALK_SERVER"
.LASF107:
	.string	"l2_buf"
.LASF283:
	.string	"HOST_NAME"
.LASF180:
	.string	"local_port"
.LASF199:
	.string	"file"
.LASF256:
	.string	"system_event_ap_probe_req_rx_t"
.LASF395:
	.string	"tcpip_adapter_get_old_ip_info"
.LASF265:
	.string	"sta_disconnected"
.LASF22:
	.string	"ESP_IF_WIFI_STA"
.LASF53:
	.string	"ip6_addr_t"
.LASF338:
	.string	"SERVER_IDENTIFIER"
.LASF474:
	.string	"netif_set_addr"
.LASF442:
	.string	"esp_ip_lost_timer"
.LASF430:
	.string	"tcpip_adapter_get_sta_list"
.LASF49:
	.string	"ip4_addr_packed"
.LASF218:
	.string	"SYSTEM_EVENT_AP_STADISCONNECTED"
.LASF269:
	.string	"event_id"
.LASF486:
	.string	"dhcp_search_ip_on_mac"
.LASF456:
	.string	"esp_event_send"
.LASF169:
	.string	"server_ip_addr"
.LASF259:
	.string	"scan_done"
.LASF137:
	.string	"MEMP_ARP_QUEUE"
.LASF301:
	.string	"MASK_SUPPLIER"
.LASF313:
	.string	"NETWORK_TIME_PROTOCOL_SERVERS"
.LASF181:
	.string	"remote_port"
.LASF337:
	.string	"DHCP_MESSAGE_TYPE"
.LASF246:
	.string	"system_event_sta_authmode_change_t"
.LASF171:
	.string	"offered_sn_mask"
.LASF145:
	.string	"MEMP_PBUF_POOL"
.LASF159:
	.string	"p_out"
.LASF110:
	.string	"ip6_addr_state"
.LASF420:
	.string	"tcpip_adapter_set_ip_info_api"
.LASF299:
	.string	"BROADCAST_ADDRESS"
.LASF157:
	.string	"tries"
.LASF476:
	.string	"nd6_set_cb"
.LASF239:
	.string	"channel"
.LASF401:
	.string	"tcpip_adapter_dhcps_option"
.LASF235:
	.string	"system_event_sta_scan_done_t"
.LASF161:
	.string	"options_out_len"
.LASF316:
	.string	"NETBIOS_OVER_TCP_IP_DATAGRAM_DISTRIBUTION_SERVER"
.LASF339:
	.string	"PARAMETER_REQUEST_LIST"
.LASF314:
	.string	"VENDOR_SPECIFIC_INFORMATION"
.LASF31:
	.string	"WIFI_AUTH_WPA_WPA2_PSK"
.LASF267:
	.string	"got_ip6"
.LASF459:
	.string	"sys_sem_new"
.LASF48:
	.string	"ip4_addr"
.LASF204:
	.string	"SYSTEM_EVENT_STA_START"
.LASF454:
	.string	"netif_set_default"
.LASF485:
	.string	"memset"
.LASF286:
	.string	"DOMAIN_NAME"
.LASF212:
	.string	"SYSTEM_EVENT_STA_WPS_ER_FAILED"
.LASF124:
	.string	"name"
.LASF16:
	.string	"int8_t"
.LASF61:
	.string	"dhcps_lease_t"
.LASF62:
	.string	"OFFER_START"
.LASF123:
	.string	"hwaddr"
.LASF92:
	.string	"api_fn"
.LASF434:
	.string	"hostinfo"
.LASF205:
	.string	"SYSTEM_EVENT_STA_STOP"
.LASF439:
	.string	"esp_ip_old"
.LASF183:
	.string	"mcast_ttl"
.LASF214:
	.string	"SYSTEM_EVENT_STA_WPS_ER_PIN"
.LASF464:
	.string	"__assert_func"
.LASF38:
	.string	"TaskHandle_t"
.LASF173:
	.string	"offered_t0_lease"
.LASF13:
	.string	"sizetype"
.LASF67:
	.string	"tcpip_adapter_ip6_info_t"
.LASF353:
	.string	"ASSOCIATED_IP"
.LASF342:
	.string	"RENEWAL_T1_TIME_VALUE"
.LASF6:
	.string	"short unsigned int"
.LASF388:
	.string	"tcpip_adapter_stop"
.LASF2:
	.string	"signed char"
.LASF170:
	.string	"offered_ip_addr"
.LASF190:
	.string	"hlen"
.LASF40:
	.string	"SemaphoreHandle_t"
.LASF252:
	.string	"system_event_ap_sta_got_ip6_t"
.LASF279:
	.string	"COOKIE_SERVER"
.LASF24:
	.string	"ESP_IF_ETH"
.LASF39:
	.string	"QueueHandle_t"
.LASF162:
	.string	"request_timeout"
.LASF232:
	.string	"status"
.LASF460:
	.string	"esp_log_timestamp"
.LASF365:
	.string	"ESP_LOG_VERBOSE"
.LASF55:
	.string	"u_addr"
.LASF446:
	.string	"tcpip_inited"
.LASF127:
	.string	"l2_buffer_free_notify"
.LASF431:
	.string	"wifi_sta_list"
.LASF198:
	.string	"sname"
.LASF64:
	.string	"OFFER_END"
.LASF116:
	.string	"state"
.LASF409:
	.string	"poll"
.LASF223:
	.string	"SYSTEM_EVENT_ETH_CONNECTED"
.LASF258:
	.string	"disconnected"
.LASF192:
	.string	"secs"
.LASF34:
	.string	"wifi_auth_mode_t"
.LASF37:
	.string	"wifi_sta_list_t"
.LASF366:
	.string	"esp_log_level_t"
.LASF112:
	.string	"input"
.LASF188:
	.string	"dhcp_msg"
.LASF224:
	.string	"SYSTEM_EVENT_ETH_DISCONNECTED"
.LASF260:
	.string	"auth_change"
.LASF130:
	.string	"MEMP_TCP_PCB"
.LASF290:
	.string	"IP_FORWARDING"
.LASF309:
	.string	"TCP_KEEPALIVE_INTERVAL"
.LASF151:
	.string	"netif_linkoutput_fn"
.LASF33:
	.string	"WIFI_AUTH_MAX"
.LASF12:
	.string	"long int"
.LASF59:
	.string	"start_ip"
.LASF203:
	.string	"SYSTEM_EVENT_SCAN_DONE"
.LASF421:
	.string	"tcpip_adapter_dhcpc_start"
.LASF345:
	.string	"CLIENT_IDENTIFIER"
.LASF419:
	.string	"numdns"
.LASF399:
	.string	"tcpip_adapter_get_ip6_linklocal"
.LASF310:
	.string	"TCP_KEEPALIVE_GARBAGE"
.LASF404:
	.string	"opt_val"
.LASF76:
	.string	"TCPIP_ADAPTER_DHCP_STARTED"
.LASF23:
	.string	"ESP_IF_WIFI_AP"
.LASF226:
	.string	"SYSTEM_EVENT_MAX"
.LASF69:
	.string	"tcpip_adapter_sta_list_t"
.LASF20:
	.string	"uint32_t"
.LASF28:
	.string	"WIFI_AUTH_WEP"
.LASF288:
	.string	"ROOT_PATH"
.LASF249:
	.string	"pin_code"
.LASF491:
	.string	"C:\\\\esp\\\\ArkPOS2-esp\\\\build\\\\tcpip_adapter"
.LASF174:
	.string	"offered_t1_renew"
.LASF14:
	.string	"long unsigned int"
.LASF30:
	.string	"WIFI_AUTH_WPA2_PSK"
.LASF77:
	.string	"TCPIP_ADAPTER_DHCP_STOPPED"
.LASF472:
	.string	"dhcp_cleanup"
.LASF273:
	.string	"TIME_OFFSET"
.LASF358:
	.string	"DOMAIN_SEARCH"
.LASF242:
	.string	"reason"
.LASF433:
	.string	"tcpip_adapter_set_hostname"
.LASF154:
	.string	"dhcp_event_fn"
.LASF15:
	.string	"char"
.LASF481:
	.string	"dhcp_set_cb"
.LASF250:
	.string	"system_event_sta_wps_er_pin_t"
.LASF253:
	.string	"system_event_ap_staconnected_t"
.LASF355:
	.string	"AUTO_CONFIGURE"
.LASF219:
	.string	"SYSTEM_EVENT_AP_PROBEREQRECVED"
.LASF262:
	.string	"sta_er_pin"
.LASF220:
	.string	"SYSTEM_EVENT_AP_STA_GOT_IP6"
.LASF101:
	.string	"pbuf"
.LASF438:
	.string	"esp_ip"
.LASF106:
	.string	"l2_owner"
.LASF307:
	.string	"ETHERNET_ENCAPSULATION"
.LASF196:
	.string	"giaddr"
.LASF315:
	.string	"NETBIOS_OVER_TCP_IP_NAME_SERVER"
.LASF255:
	.string	"rssi"
.LASF445:
	.string	"api_sync_sem"
.LASF216:
	.string	"SYSTEM_EVENT_AP_STOP"
.LASF147:
	.string	"netif_init_fn"
.LASF200:
	.string	"cookie"
.LASF140:
	.string	"MEMP_NETDB"
.LASF487:
	.string	"strlen"
.LASF398:
	.string	"tcpip_adapter_create_ip6_linklocal_api"
.LASF293:
	.string	"MAXIMUM_DATAGRAM_REASSEMBLY_SIZE"
.LASF426:
	.string	"buffer"
.LASF328:
	.string	"DEFAULT_FINGER_SERVER"
.LASF418:
	.string	"tcpip_adapter_set_ip_info"
.LASF348:
	.string	"DHCP_AGENT_OPTIONS"
.LASF308:
	.string	"TCP_DEFAULT_TTL"
.LASF405:
	.string	"opt_len"
.LASF321:
	.string	"NETWORK_INFORMATION_SERVICE_PLUS_DOMAIN"
.LASF406:
	.string	"opt_info"
.LASF133:
	.string	"MEMP_NETBUF"
.LASF441:
	.string	"esp_netif_init_fn"
.LASF146:
	.string	"MEMP_MAX"
.LASF461:
	.string	"esp_log_write"
.LASF450:
	.string	"xTaskGetCurrentTaskHandle"
.LASF177:
	.string	"local_ip"
.LASF473:
	.string	"netif_set_down"
.LASF251:
	.string	"ip6_info"
.LASF432:
	.string	"tcpip_sta_list"
.LASF119:
	.string	"dhcp_event"
.LASF158:
	.string	"subnet_mask_given"
.LASF57:
	.string	"ip_addr_t"
.LASF187:
	.string	"udp_recv_fn"
.LASF349:
	.string	"NDS_SERVERS"
.LASF82:
	.string	"TCPIP_ADAPTER_OP_GET"
.LASF231:
	.string	"system_event_sta_wps_fail_reason_t"
.LASF125:
	.string	"igmp_mac_filter"
.LASF323:
	.string	"MOBILE_IP_HOME_AGENT"
.LASF292:
	.string	"POLICY_FILTER"
.LASF357:
	.string	"SUBNET_SELECTION"
.LASF408:
	.string	"softap_ip"
.LASF153:
	.string	"netif_mld_mac_filter_fn"
.LASF95:
	.string	"hostname"
.LASF428:
	.string	"tcpip_adapter_ap_input"
.LASF207:
	.string	"SYSTEM_EVENT_STA_DISCONNECTED"
.LASF7:
	.string	"__int32_t"
.LASF414:
	.string	"tcpip_adapter_dhcps_stop"
.LASF389:
	.string	"tcpip_adapter_stop_api"
.LASF8:
	.string	"__uint32_t"
.LASF129:
	.string	"MEMP_UDP_PCB"
.LASF248:
	.string	"system_event_sta_got_ip_t"
.LASF324:
	.string	"SMTP_SERVER"
.LASF208:
	.string	"SYSTEM_EVENT_STA_AUTHMODE_CHANGE"
.LASF350:
	.string	"NDS_TREE_NAME"
.LASF411:
	.string	"tcpip_adapter_dhcps_start"
.LASF66:
	.string	"tcpip_adapter_ip_info_t"
.LASF32:
	.string	"WIFI_AUTH_WPA2_ENTERPRISE"
.LASF93:
	.string	"tcpip_if"
.LASF319:
	.string	"X_WINDOW_SYSTEM_FONT_SERVER"
.LASF371:
	.string	"tcpip_adapter_update_default_netif"
.LASF304:
	.string	"STATIC_ROUTE"
.LASF387:
	.string	"tcpip_adapter_ap_start"
.LASF453:
	.string	"sys_sem_signal"
.LASF87:
	.string	"TCPIP_ADAPTER_IP_ADDRESS_LEASE_TIME"
.LASF104:
	.string	"tot_len"
.LASF142:
	.string	"MEMP_IP6_REASSDATA"
.LASF275:
	.string	"TIME_SERVER"
.LASF356:
	.string	"NAME_SERVICE_SEARCH"
.LASF425:
	.string	"tcpip_adapter_eth_input"
.LASF415:
	.string	"tcpip_adapter_dhcps_stop_api"
.LASF306:
	.string	"ARP_CACHE_TIMEOUT"
.LASF143:
	.string	"MEMP_MLD6_GROUP"
.LASF489:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF215:
	.string	"SYSTEM_EVENT_AP_START"
.LASF478:
	.string	"dhcps_option_info"
.LASF206:
	.string	"SYSTEM_EVENT_STA_CONNECTED"
.LASF364:
	.string	"ESP_LOG_DEBUG"
.LASF209:
	.string	"SYSTEM_EVENT_STA_GOT_IP"
.LASF423:
	.string	"tcpip_adapter_dhcpc_stop"
.LASF280:
	.string	"LPR_SERVER"
.LASF185:
	.string	"recv_arg"
.LASF243:
	.string	"system_event_sta_disconnected_t"
.LASF85:
	.string	"TCPIP_ADAPTER_ROUTER_SOLICITATION_ADDRESS"
.LASF482:
	.string	"ethernetif_input"
.LASF296:
	.string	"PATH_MTU_PLATEAU_TABLE"
.LASF11:
	.string	"long long unsigned int"
.LASF237:
	.string	"ssid_len"
.LASF282:
	.string	"RESOURCE_LOCATION_SERVER"
.LASF41:
	.string	"sys_sem_t"
.LASF391:
	.string	"tcpip_adapter_up_api"
.LASF211:
	.string	"SYSTEM_EVENT_STA_WPS_ER_SUCCESS"
.LASF317:
	.string	"NETBIOS_OVER_TCP_IP_NODE_TYPE"
.LASF297:
	.string	"INTERFACE_MTU"
.LASF480:
	.string	"dhcp_start"
.LASF403:
	.string	"opt_id"
.LASF111:
	.string	"ipv6_addr_cb"
.LASF377:
	.string	"p_netif"
.LASF213:
	.string	"SYSTEM_EVENT_STA_WPS_ER_TIMEOUT"
.LASF80:
	.string	"TCPIP_ADAPTER_OP_START"
.LASF182:
	.string	"multicast_ip"
.LASF359:
	.string	"CLASSLESS_ROUTE"
.LASF294:
	.string	"DEFAULT_IP_TIME_TO_LIVE"
.LASF361:
	.string	"ESP_LOG_ERROR"
.LASF305:
	.string	"TRAILER_ENCAPSULATION"
.LASF437:
	.string	"esp_netif"
.LASF334:
	.string	"OPTION_OVERLOAD"
.LASF467:
	.string	"dhcps_start"
.LASF400:
	.string	"if_ip6"
.LASF178:
	.string	"remote_ip"
.LASF451:
	.string	"sys_arch_sem_wait"
.LASF386:
	.string	"tcpip_adapter_sta_start"
.LASF148:
	.string	"netif_input_fn"
.LASF172:
	.string	"offered_gw_addr"
.LASF238:
	.string	"bssid"
.LASF326:
	.string	"NNTP_SERVER"
.LASF52:
	.string	"ip6_addr"
.LASF72:
	.string	"TCPIP_ADAPTER_IF_ETH"
.LASF120:
	.string	"ip6_autoconfig_enabled"
.LASF126:
	.string	"mld_mac_filter"
.LASF447:
	.string	"api_lock_sem"
.LASF10:
	.string	"long long int"
.LASF75:
	.string	"TCPIP_ADAPTER_DHCP_INIT"
.LASF94:
	.string	"ip_info"
.LASF244:
	.string	"old_mode"
.LASF132:
	.string	"MEMP_TCP_SEG"
.LASF412:
	.string	"default_ip"
.LASF378:
	.string	"ip_idex"
.LASF81:
	.string	"TCPIP_ADAPTER_OP_SET"
.LASF298:
	.string	"ALL_SUBNETS_ARE_LOCAL"
.LASF375:
	.string	"tcpip_adapter_ip_lost_timer"
.LASF373:
	.string	"ip_info_old"
.LASF270:
	.string	"event_info"
.LASF221:
	.string	"SYSTEM_EVENT_ETH_START"
.LASF42:
	.string	"sys_thread_t"
.LASF374:
	.string	"tcpip_adapter_api_cb"
.LASF189:
	.string	"htype"
.LASF469:
	.string	"dhcps_stop"
.LASF89:
	.string	"tcpip_adapter_option_id_t"
.LASF240:
	.string	"authmode"
.LASF128:
	.string	"MEMP_RAW_PCB"
.LASF392:
	.string	"tcpip_adapter_down"
.LASF402:
	.string	"opt_op"
.LASF0:
	.string	"__int8_t"
.LASF444:
	.string	"dhcpc_status"
.LASF417:
	.string	"tcpip_adapter_dhcpc_get_status"
.LASF329:
	.string	"DEFAULT_IRC_SERVER"
.LASF46:
	.string	"u32_t"
.LASF21:
	.string	"esp_err_t"
.LASF379:
	.string	"tcpip_adapter_dhcpc_cb"
.LASF9:
	.string	"unsigned int"
.LASF351:
	.string	"NDS_CONTEXT"
.LASF176:
	.string	"udp_pcb"
.LASF167:
	.string	"lease_used"
.LASF372:
	.string	"tcpip_adapter_start_ip_lost_timer"
.LASF175:
	.string	"offered_t2_rebind"
.LASF90:
	.string	"tcpip_adapter_api_fn"
.LASF4:
	.string	"short int"
.LASF300:
	.string	"PERFORM_MASK_DISCOVERY"
.LASF325:
	.string	"POP3_SERVER"
.LASF347:
	.string	"FQDN"
.LASF156:
	.string	"pcb_allocated"
.LASF370:
	.string	"local_task"
.LASF201:
	.string	"options"
.LASF108:
	.string	"netif"
.LASF114:
	.string	"linkoutput"
.LASF362:
	.string	"ESP_LOG_WARN"
.LASF36:
	.string	"wifi_sta_info_t"
.LASF281:
	.string	"IMPRESS_SERVER"
.LASF458:
	.string	"tcpip_init"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-61-gab8375a) 5.2.0"
