	.file	"event_default_handlers.c"
	.text
.Ltext0:
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC1:
	.string	"\033[0;31mE (%d) %s: event is null!\033[0m\n"
	.align	4
.LC3:
	.string	"\033[0;33mW (%d) %s: unexpected system event %d!\033[0m\n"
	.section	.text.esp_system_event_debug,"ax",@progbits
	.literal_position
	.literal .LC0, TAG
	.literal .LC2, .LC1
	.literal .LC4, .LC3
	.align	4
	.type	esp_system_event_debug, @function
esp_system_event_debug:
.LFB22:
	.file 1 "C:/esp/esp-idf/components/esp32/event_default_handlers.c"
	.loc 1 237 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 238 0
	bnez.n	a2, .L2
	.loc 1 239 0 discriminator 1
	call8	esp_log_timestamp
.LVL1:
	l32r	a2, .LC0
.LVL2:
	l32i.n	a11, a2, 0
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC2
	movi.n	a10, 1
	call8	esp_log_write
.LVL3:
	.loc 1 240 0 discriminator 1
	movi.n	a2, -1
	retw.n
.LVL4:
.L2:
	.loc 1 243 0
	l32i.n	a8, a2, 0
	movi.n	a9, 0x17
	bgeu	a9, a8, .L6
	.loc 1 368 0 discriminator 1
	call8	esp_log_timestamp
.LVL5:
	l32r	a8, .LC0
	l32i.n	a11, a8, 0
	l32i.n	a15, a2, 0
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC4
	movi.n	a10, 2
	call8	esp_log_write
.LVL6:
	.loc 1 373 0 discriminator 1
	movi.n	a2, 0
.LVL7:
	.loc 1 369 0 discriminator 1
	retw.n
.LVL8:
.L6:
	.loc 1 373 0
	movi.n	a2, 0
.LVL9:
	.loc 1 374 0
	retw.n
.LFE22:
	.size	esp_system_event_debug, .-esp_system_event_debug
	.section	.rodata.str1.4
	.align	4
.LC6:
	.string	"\033[0;32mI (%d) %s: station ip lost\033[0m\n"
	.section	.text.system_event_sta_lost_ip_default,"ax",@progbits
	.literal_position
	.literal .LC5, TAG
	.literal .LC7, .LC6
	.align	4
	.type	system_event_sta_lost_ip_default, @function
system_event_sta_lost_ip_default:
.LFB15:
	.loc 1 140 0
.LVL10:
	entry	sp, 32
.LCFI1:
	.loc 1 141 0
	call8	esp_log_timestamp
.LVL11:
	l32r	a8, .LC5
	l32i.n	a11, a8, 0
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC7
	movi.n	a10, 3
	call8	esp_log_write
.LVL12:
	.loc 1 143 0
	movi.n	a2, 0
.LVL13:
	retw.n
.LFE15:
	.size	system_event_sta_lost_ip_default, .-system_event_sta_lost_ip_default
	.section	.rodata.str1.4
	.align	4
.LC10:
	.string	"\033[0;31mE (%d) %s: %s %d %s ret=%d\033[0m\n"
	.align	4
.LC12:
	.string	"esp_wifi_internal_reg_rxcb"
	.section	.text.system_event_ap_stop_handle_default,"ax",@progbits
	.literal_position
	.literal .LC8, TAG
	.literal .LC9, __FUNCTION__$6325
	.literal .LC11, .LC10
	.literal .LC13, .LC12
	.align	4
	.type	system_event_ap_stop_handle_default, @function
system_event_ap_stop_handle_default:
.LFB17:
	.loc 1 160 0
.LVL14:
	entry	sp, 48
.LCFI2:
.LBB2:
	.loc 1 161 0
	movi.n	a11, 0
	movi.n	a10, 1
	call8	esp_wifi_internal_reg_rxcb
.LVL15:
	mov.n	a2, a10
.LVL16:
	.loc 1 161 0
	beqz.n	a10, .L9
	.loc 1 161 0 is_stmt 0 discriminator 2
	call8	esp_log_timestamp
.LVL17:
	l32r	a8, .LC8
	l32i.n	a11, a8, 0
	s32i.n	a2, sp, 8
	l32r	a8, .LC13
	s32i.n	a8, sp, 4
	movi	a8, 0xa1
	s32i.n	a8, sp, 0
	l32r	a15, .LC9
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC11
	movi.n	a10, 1
	call8	esp_log_write
.LVL18:
	retw.n
.L9:
.LBE2:
	.loc 1 163 0 is_stmt 1
	movi.n	a10, 1
	call8	tcpip_adapter_stop
.LVL19:
	.loc 1 165 0
	movi.n	a2, 0
.LVL20:
	.loc 1 166 0
	retw.n
.LFE17:
	.size	system_event_ap_stop_handle_default, .-system_event_ap_stop_handle_default
	.section	.text.system_event_sta_stop_handle_default,"ax",@progbits
	.align	4
	.type	system_event_sta_stop_handle_default, @function
system_event_sta_stop_handle_default:
.LFB19:
	.loc 1 181 0
.LVL21:
	entry	sp, 32
.LCFI3:
	.loc 1 182 0
	movi.n	a10, 0
	call8	tcpip_adapter_stop
.LVL22:
	.loc 1 185 0
	movi.n	a2, 0
.LVL23:
	retw.n
.LFE19:
	.size	system_event_sta_stop_handle_default, .-system_event_sta_stop_handle_default
	.section	.text.system_event_eth_stop_handle_default,"ax",@progbits
	.align	4
	.type	system_event_eth_stop_handle_default, @function
system_event_eth_stop_handle_default:
.LFB11:
	.loc 1 84 0
.LVL24:
	entry	sp, 32
.LCFI4:
	.loc 1 85 0
	movi.n	a10, 2
	call8	tcpip_adapter_stop
.LVL25:
	.loc 1 88 0
	movi.n	a2, 0
.LVL26:
	retw.n
.LFE11:
	.size	system_event_eth_stop_handle_default, .-system_event_eth_stop_handle_default
	.section	.rodata.str1.4
	.align	4
.LC19:
	.string	"esp_wifi_mac_get"
	.section	.text.system_event_ap_start_handle_default,"ax",@progbits
	.literal_position
	.literal .LC14, tcpip_adapter_ap_input
	.literal .LC15, TAG
	.literal .LC16, __FUNCTION__$6319
	.literal .LC17, .LC10
	.literal .LC18, .LC12
	.literal .LC20, .LC19
	.align	4
	.type	system_event_ap_start_handle_default, @function
system_event_ap_start_handle_default:
.LFB16:
	.loc 1 146 0
.LVL27:
	entry	sp, 80
.LCFI5:
.LBB3:
	.loc 1 150 0
	l32r	a11, .LC14
	movi.n	a10, 1
	call8	esp_wifi_internal_reg_rxcb
.LVL28:
	mov.n	a2, a10
.LVL29:
	beqz.n	a10, .L14
	.loc 1 150 0 is_stmt 0 discriminator 2
	call8	esp_log_timestamp
.LVL30:
	l32r	a8, .LC15
	l32i.n	a11, a8, 0
	s32i.n	a2, sp, 8
	l32r	a8, .LC18
	s32i.n	a8, sp, 4
	movi	a8, 0x96
	s32i.n	a8, sp, 0
	l32r	a15, .LC16
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC17
	movi.n	a10, 1
	call8	esp_log_write
.LVL31:
	retw.n
.L14:
.LBE3:
.LBB4:
	.loc 1 151 0 is_stmt 1
	addi	a11, sp, 28
	movi.n	a10, 1
	call8	esp_wifi_get_mac
.LVL32:
	mov.n	a2, a10
.LVL33:
	beqz.n	a10, .L16
	.loc 1 151 0 is_stmt 0 discriminator 2
	call8	esp_log_timestamp
.LVL34:
	l32r	a8, .LC15
	l32i.n	a11, a8, 0
	s32i.n	a2, sp, 8
	l32r	a8, .LC20
	s32i.n	a8, sp, 4
	movi	a8, 0x97
	s32i.n	a8, sp, 0
	l32r	a15, .LC16
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC17
	movi.n	a10, 1
	call8	esp_log_write
.LVL35:
	retw.n
.L16:
.LBE4:
	.loc 1 153 0 is_stmt 1
	addi	a11, sp, 16
	movi.n	a10, 1
	call8	tcpip_adapter_get_ip_info
.LVL36:
	.loc 1 154 0
	addi	a11, sp, 16
	addi	a10, sp, 28
	call8	tcpip_adapter_ap_start
.LVL37:
	.loc 1 156 0
	movi.n	a2, 0
.LVL38:
	.loc 1 157 0
	retw.n
.LFE16:
	.size	system_event_ap_start_handle_default, .-system_event_ap_start_handle_default
	.section	.rodata.str1.4
	.align	4
.LC24:
	.string	"esp_wifi_internal_set_sta_ip"
	.align	4
.LC26:
	.string	"\033[0;32mI (%d) %s: ip: %d.%d.%d.%d, mask: %d.%d.%d.%d, gw: %d.%d.%d.%d\033[0m\n"
	.section	.text.system_event_sta_got_ip_default,"ax",@progbits
	.literal_position
	.literal .LC21, TAG
	.literal .LC22, __FUNCTION__$6309
	.literal .LC23, .LC10
	.literal .LC25, .LC24
	.literal .LC27, .LC26
	.align	4
	.type	system_event_sta_got_ip_default, @function
system_event_sta_got_ip_default:
.LFB14:
	.loc 1 128 0
.LVL39:
	entry	sp, 80
.LCFI6:
.LBB5:
	.loc 1 129 0
	call8	esp_wifi_internal_set_sta_ip
.LVL40:
	mov.n	a3, a10
.LVL41:
	beqz.n	a10, .L18
	.loc 1 129 0 is_stmt 0 discriminator 2
	call8	esp_log_timestamp
.LVL42:
	l32r	a2, .LC21
.LVL43:
	l32i.n	a11, a2, 0
	s32i.n	a3, sp, 8
	l32r	a2, .LC25
	s32i.n	a2, sp, 4
	movi	a2, 0x81
	s32i.n	a2, sp, 0
	l32r	a15, .LC22
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC23
	movi.n	a10, 1
	call8	esp_log_write
.LVL44:
	mov.n	a2, a3
	retw.n
.LVL45:
.L18:
.LBE5:
	.loc 1 131 0 is_stmt 1 discriminator 1
	call8	esp_log_timestamp
.LVL46:
	l32r	a3, .LC21
.LVL47:
	l32i.n	a11, a3, 0
	l8ui	a15, a2, 4
	l8ui	a3, a2, 5
	l8ui	a8, a2, 6
	l8ui	a9, a2, 7
	l8ui	a12, a2, 8
	l8ui	a13, a2, 9
	l8ui	a14, a2, 10
	l8ui	a4, a2, 11
	l8ui	a5, a2, 12
	l8ui	a6, a2, 13
	l8ui	a7, a2, 14
	l8ui	a2, a2, 15
.LVL48:
	s32i.n	a2, sp, 40
	s32i.n	a7, sp, 36
	s32i.n	a6, sp, 32
	s32i.n	a5, sp, 28
	s32i.n	a4, sp, 24
	s32i.n	a14, sp, 20
	s32i.n	a13, sp, 16
	s32i.n	a12, sp, 12
	s32i.n	a9, sp, 8
	s32i.n	a8, sp, 4
	s32i.n	a3, sp, 0
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC27
	movi.n	a10, 3
	call8	esp_log_write
.LVL49:
	.loc 1 136 0 discriminator 1
	movi.n	a2, 0
	.loc 1 137 0 discriminator 1
	retw.n
.LFE14:
	.size	system_event_sta_got_ip_default, .-system_event_sta_got_ip_default
	.section	.text.system_event_sta_disconnected_handle_default,"ax",@progbits
	.literal_position
	.literal .LC28, TAG
	.literal .LC29, __FUNCTION__$6349
	.literal .LC30, .LC10
	.literal .LC31, .LC12
	.align	4
	.type	system_event_sta_disconnected_handle_default, @function
system_event_sta_disconnected_handle_default:
.LFB21:
	.loc 1 230 0
.LVL50:
	entry	sp, 48
.LCFI7:
	.loc 1 231 0
	movi.n	a10, 0
	call8	tcpip_adapter_down
.LVL51:
.LBB6:
	.loc 1 232 0
	movi.n	a11, 0
	mov.n	a10, a11
	call8	esp_wifi_internal_reg_rxcb
.LVL52:
	mov.n	a2, a10
.LVL53:
	.loc 1 232 0
	beqz.n	a10, .L22
	.loc 1 232 0 is_stmt 0 discriminator 2
	call8	esp_log_timestamp
.LVL54:
	l32r	a8, .LC28
	l32i.n	a11, a8, 0
	s32i.n	a2, sp, 8
	l32r	a8, .LC31
	s32i.n	a8, sp, 4
	movi	a8, 0xe8
	s32i.n	a8, sp, 0
	l32r	a15, .LC29
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC30
	movi.n	a10, 1
	call8	esp_log_write
.LVL55:
	retw.n
.L22:
.LBE6:
	.loc 1 233 0 is_stmt 1
	movi.n	a2, 0
.LVL56:
	.loc 1 234 0
	retw.n
.LFE21:
	.size	system_event_sta_disconnected_handle_default, .-system_event_sta_disconnected_handle_default
	.section	.text.system_event_eth_disconnected_handle_default,"ax",@progbits
	.align	4
	.type	system_event_eth_disconnected_handle_default, @function
system_event_eth_disconnected_handle_default:
.LFB13:
	.loc 1 122 0
.LVL57:
	entry	sp, 32
.LCFI8:
	.loc 1 123 0
	movi.n	a10, 2
	call8	tcpip_adapter_down
.LVL58:
	.loc 1 125 0
	movi.n	a2, 0
.LVL59:
	retw.n
.LFE13:
	.size	system_event_eth_disconnected_handle_default, .-system_event_eth_disconnected_handle_default
	.section	.rodata.str1.4
	.align	4
.LC37:
	.string	"\033[0;31mE (%d) %s: invalid static ip\033[0m\n"
	.section	.text.system_event_sta_connected_handle_default,"ax",@progbits
	.literal_position
	.literal .LC32, tcpip_adapter_sta_input
	.literal .LC33, TAG
	.literal .LC34, __FUNCTION__$6341
	.literal .LC35, .LC10
	.literal .LC36, .LC12
	.literal .LC38, .LC37
	.align	4
	.type	system_event_sta_connected_handle_default, @function
system_event_sta_connected_handle_default:
.LFB20:
	.loc 1 188 0
.LVL60:
	entry	sp, 128
.LCFI9:
.LBB7:
	.loc 1 191 0
	l32r	a11, .LC32
	movi.n	a10, 0
	call8	esp_wifi_internal_reg_rxcb
.LVL61:
	mov.n	a2, a10
.LVL62:
	beqz.n	a10, .L25
	.loc 1 191 0 is_stmt 0 discriminator 2
	call8	esp_log_timestamp
.LVL63:
	l32r	a8, .LC33
	l32i.n	a11, a8, 0
	s32i.n	a2, sp, 8
	l32r	a8, .LC36
	s32i.n	a8, sp, 4
	movi	a8, 0xbf
	s32i.n	a8, sp, 0
	l32r	a15, .LC34
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC35
	movi.n	a10, 1
	call8	esp_log_write
.LVL64:
	retw.n
.L25:
.LBE7:
	.loc 1 193 0 is_stmt 1
	movi.n	a10, 0
	call8	tcpip_adapter_up
.LVL65:
	.loc 1 195 0
	addi	a11, sp, 16
	movi.n	a10, 0
	call8	tcpip_adapter_dhcpc_get_status
.LVL66:
	.loc 1 197 0
	l32i.n	a2, sp, 16
.LVL67:
	bnez.n	a2, .L27
	.loc 1 198 0
	movi.n	a10, 0
	call8	tcpip_adapter_dhcpc_start
.LVL68:
	retw.n
.L27:
	.loc 1 199 0
	bnei	a2, 2, .L31
.LBB8:
	.loc 1 203 0
	addi	a11, sp, 80
	movi.n	a10, 0
	call8	tcpip_adapter_get_ip_info
.LVL69:
	.loc 1 204 0
	addi	a11, sp, 68
	movi.n	a10, 0
	call8	tcpip_adapter_get_old_ip_info
.LVL70:
	.loc 1 206 0
	l32i	a2, sp, 80
	beqz.n	a2, .L28
	.loc 1 206 0 is_stmt 0 discriminator 1
	l32i	a2, sp, 84
	beqz.n	a2, .L28
	.loc 1 206 0 discriminator 2
	l32i	a2, sp, 88
	beqz.n	a2, .L28
.LBB9:
	.loc 1 209 0 is_stmt 1
	movi.n	a2, 7
	s32i.n	a2, sp, 20
	.loc 1 210 0
	movi.n	a2, 0
	s8i	a2, sp, 36
	.loc 1 212 0
	movi.n	a12, 0xc
	addi	a11, sp, 68
	addi	a10, sp, 80
	call8	memcmp
.LVL71:
	beqz.n	a10, .L29
	.loc 1 213 0
	movi.n	a2, 1
	s8i	a2, sp, 36
.L29:
	.loc 1 216 0
	l32i	a8, sp, 84
	l32i	a2, sp, 80
	s32i.n	a2, sp, 24
	l32i	a2, sp, 88
	s32i.n	a8, sp, 28
	s32i.n	a2, sp, 32
	.loc 1 217 0
	addi	a11, sp, 80
	movi.n	a10, 0
	call8	tcpip_adapter_set_old_ip_info
.LVL72:
	.loc 1 219 0
	addi	a10, sp, 20
	call8	esp_event_send
.LVL73:
.LBE9:
	.loc 1 206 0
	j	.L30
.L28:
	.loc 1 222 0 discriminator 1
	call8	esp_log_timestamp
.LVL74:
	l32r	a2, .LC33
	l32i.n	a11, a2, 0
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC38
	movi.n	a10, 1
	call8	esp_log_write
.LVL75:
.L30:
.LBE8:
	.loc 1 226 0 discriminator 1
	movi.n	a2, 0
	retw.n
.L31:
	.loc 1 226 0 is_stmt 0
	movi.n	a2, 0
	.loc 1 227 0 is_stmt 1
	retw.n
.LFE20:
	.size	system_event_sta_connected_handle_default, .-system_event_sta_connected_handle_default
	.section	.text.system_event_eth_connected_handle_default,"ax",@progbits
	.literal_position
	.literal .LC39, TAG
	.literal .LC40, .LC37
	.align	4
	.type	system_event_eth_connected_handle_default, @function
system_event_eth_connected_handle_default:
.LFB12:
	.loc 1 91 0
.LVL76:
	entry	sp, 96
.LCFI10:
	.loc 1 94 0
	movi.n	a10, 2
	call8	tcpip_adapter_up
.LVL77:
	.loc 1 96 0
	mov.n	a11, sp
	movi.n	a10, 2
	call8	tcpip_adapter_dhcpc_get_status
.LVL78:
	.loc 1 98 0
	l32i.n	a8, sp, 0
	bnez.n	a8, .L33
	.loc 1 99 0
	movi.n	a10, 2
	call8	tcpip_adapter_dhcpc_start
.LVL79:
	j	.L34
.L33:
	.loc 1 100 0
	bnei	a8, 2, .L34
.LBB10:
	.loc 1 103 0
	addi	a11, sp, 52
	movi.n	a10, 2
	call8	tcpip_adapter_get_ip_info
.LVL80:
	.loc 1 105 0
	l32i.n	a8, sp, 52
	beqz.n	a8, .L35
	.loc 1 105 0 is_stmt 0 discriminator 1
	l32i.n	a8, sp, 56
	beqz.n	a8, .L35
	.loc 1 105 0 discriminator 2
	l32i.n	a8, sp, 60
	beqz.n	a8, .L35
.LBB11:
	.loc 1 109 0 is_stmt 1
	movi.n	a8, 0x17
	s32i.n	a8, sp, 4
	.loc 1 110 0
	l32i.n	a9, sp, 56
	l32i.n	a8, sp, 52
	s32i.n	a8, sp, 8
	l32i.n	a8, sp, 60
	s32i.n	a9, sp, 12
	s32i.n	a8, sp, 16
	.loc 1 112 0
	addi.n	a10, sp, 4
	call8	esp_event_send
.LVL81:
.LBE11:
	.loc 1 105 0
	j	.L34
.L35:
	.loc 1 114 0 discriminator 1
	call8	esp_log_timestamp
.LVL82:
	l32r	a8, .LC39
	l32i.n	a11, a8, 0
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC40
	movi.n	a10, 1
	call8	esp_log_write
.LVL83:
.L34:
.LBE10:
	.loc 1 119 0
	movi.n	a2, 0
.LVL84:
	retw.n
.LFE12:
	.size	system_event_eth_connected_handle_default, .-system_event_eth_connected_handle_default
	.section	.text.system_event_sta_start_handle_default,"ax",@progbits
	.literal_position
	.literal .LC41, TAG
	.literal .LC42, __FUNCTION__$6332
	.literal .LC43, .LC10
	.literal .LC44, .LC19
	.align	4
	.type	system_event_sta_start_handle_default, @function
system_event_sta_start_handle_default:
.LFB18:
	.loc 1 169 0
.LVL85:
	entry	sp, 80
.LCFI11:
.LBB12:
	.loc 1 173 0
	addi	a11, sp, 28
	movi.n	a10, 0
	call8	esp_wifi_get_mac
.LVL86:
	mov.n	a2, a10
.LVL87:
	beqz.n	a10, .L38
	.loc 1 173 0 is_stmt 0 discriminator 2
	call8	esp_log_timestamp
.LVL88:
	l32r	a8, .LC41
	l32i.n	a11, a8, 0
	s32i.n	a2, sp, 8
	l32r	a8, .LC44
	s32i.n	a8, sp, 4
	movi	a8, 0xad
	s32i.n	a8, sp, 0
	l32r	a15, .LC42
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC43
	movi.n	a10, 1
	call8	esp_log_write
.LVL89:
	retw.n
.L38:
.LBE12:
	.loc 1 174 0 is_stmt 1
	addi	a11, sp, 16
	movi.n	a10, 0
	call8	tcpip_adapter_get_ip_info
.LVL90:
	.loc 1 175 0
	addi	a11, sp, 16
	addi	a10, sp, 28
	call8	tcpip_adapter_sta_start
.LVL91:
	.loc 1 177 0
	movi.n	a2, 0
.LVL92:
	.loc 1 178 0
	retw.n
.LFE18:
	.size	system_event_sta_start_handle_default, .-system_event_sta_start_handle_default
	.section	.text.system_event_eth_start_handle_default,"ax",@progbits
	.align	4
	.type	system_event_eth_start_handle_default, @function
system_event_eth_start_handle_default:
.LFB10:
	.loc 1 72 0
.LVL93:
	entry	sp, 64
.LCFI12:
	.loc 1 76 0
	addi.n	a10, sp, 12
	call8	esp_eth_get_mac
.LVL94:
	.loc 1 77 0
	mov.n	a11, sp
	movi.n	a10, 2
	call8	tcpip_adapter_get_ip_info
.LVL95:
	.loc 1 78 0
	mov.n	a11, sp
	addi.n	a10, sp, 12
	call8	tcpip_adapter_eth_start
.LVL96:
	.loc 1 81 0
	movi.n	a2, 0
.LVL97:
	retw.n
.LFE10:
	.size	system_event_eth_start_handle_default, .-system_event_eth_start_handle_default
	.section	.rodata.str1.4
	.align	4
.LC46:
	.string	"\033[0;31mE (%d) %s: Error: event is null!\033[0m\n"
	.align	4
.LC49:
	.string	"\033[0;31mE (%d) %s: mismatch or invalid event, id=%d\033[0m\n"
	.section	.text.esp_event_process_default,"ax",@progbits
	.literal_position
	.literal .LC45, TAG
	.literal .LC47, .LC46
	.literal .LC48, default_event_handlers
	.literal .LC50, .LC49
	.align	4
	.global	esp_event_process_default
	.type	esp_event_process_default, @function
esp_event_process_default:
.LFB23:
	.loc 1 377 0
.LVL98:
	entry	sp, 32
.LCFI13:
	.loc 1 378 0
	bnez.n	a2, .L42
	.loc 1 379 0 discriminator 1
	call8	esp_log_timestamp
.LVL99:
	l32r	a2, .LC45
.LVL100:
	l32i.n	a11, a2, 0
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC47
	movi.n	a10, 1
	call8	esp_log_write
.LVL101:
	.loc 1 380 0 discriminator 1
	movi.n	a2, -1
	retw.n
.LVL102:
.L42:
	.loc 1 383 0
	mov.n	a10, a2
	call8	esp_system_event_debug
.LVL103:
	.loc 1 384 0
	l32i.n	a8, a2, 0
	movi.n	a9, 0x17
	bltu	a9, a8, .L44
	.loc 1 385 0
	l32r	a9, .LC48
	addx4	a8, a8, a9
	l32i.n	a8, a8, 0
	beqz.n	a8, .L45
	.loc 1 387 0
	mov.n	a10, a2
	callx8	a8
.LVL104:
	.loc 1 394 0
	movi.n	a2, 0
.LVL105:
	retw.n
.LVL106:
.L44:
	.loc 1 391 0 discriminator 1
	call8	esp_log_timestamp
.LVL107:
	l32r	a8, .LC45
	l32i.n	a11, a8, 0
	l32i.n	a15, a2, 0
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC50
	movi.n	a10, 1
	call8	esp_log_write
.LVL108:
	.loc 1 392 0 discriminator 1
	movi.n	a2, -1
.LVL109:
	retw.n
.LVL110:
.L45:
	.loc 1 394 0
	movi.n	a2, 0
.LVL111:
	.loc 1 395 0
	retw.n
.LFE23:
	.size	esp_event_process_default, .-esp_event_process_default
	.section	.text.esp_event_set_default_wifi_handlers,"ax",@progbits
	.literal_position
	.literal .LC51, default_event_handlers
	.literal .LC52, system_event_sta_start_handle_default
	.literal .LC53, system_event_sta_stop_handle_default
	.literal .LC54, system_event_sta_connected_handle_default
	.literal .LC55, system_event_sta_disconnected_handle_default
	.literal .LC56, system_event_sta_got_ip_default
	.literal .LC57, system_event_sta_lost_ip_default
	.literal .LC58, system_event_ap_start_handle_default
	.literal .LC59, system_event_ap_stop_handle_default
	.literal .LC60, esp_wifi_stop
	.align	4
	.global	esp_event_set_default_wifi_handlers
	.type	esp_event_set_default_wifi_handlers, @function
esp_event_set_default_wifi_handlers:
.LFB24:
	.loc 1 398 0
	entry	sp, 32
.LCFI14:
	.loc 1 399 0
	l32r	a8, .LC51
	l32r	a9, .LC52
	s32i.n	a9, a8, 8
	.loc 1 400 0
	l32r	a9, .LC53
	s32i.n	a9, a8, 12
	.loc 1 401 0
	l32r	a9, .LC54
	s32i.n	a9, a8, 16
	.loc 1 402 0
	l32r	a9, .LC55
	s32i.n	a9, a8, 20
	.loc 1 403 0
	l32r	a9, .LC56
	s32i.n	a9, a8, 28
	.loc 1 404 0
	l32r	a9, .LC57
	s32i.n	a9, a8, 32
	.loc 1 405 0
	l32r	a9, .LC58
	s32i.n	a9, a8, 52
	.loc 1 406 0
	l32r	a9, .LC59
	s32i.n	a9, a8, 56
	.loc 1 408 0
	l32r	a10, .LC60
	call8	esp_register_shutdown_handler
.LVL112:
	retw.n
.LFE24:
	.size	esp_event_set_default_wifi_handlers, .-esp_event_set_default_wifi_handlers
	.section	.text.esp_event_set_default_eth_handlers,"ax",@progbits
	.literal_position
	.literal .LC61, default_event_handlers
	.literal .LC62, system_event_eth_start_handle_default
	.literal .LC63, system_event_eth_stop_handle_default
	.literal .LC64, system_event_eth_connected_handle_default
	.literal .LC65, system_event_eth_disconnected_handle_default
	.align	4
	.global	esp_event_set_default_eth_handlers
	.type	esp_event_set_default_eth_handlers, @function
esp_event_set_default_eth_handlers:
.LFB25:
	.loc 1 412 0
	entry	sp, 32
.LCFI15:
	.loc 1 413 0
	l32r	a8, .LC61
	l32r	a9, .LC62
	s32i	a9, a8, 76
	.loc 1 414 0
	l32r	a9, .LC63
	s32i	a9, a8, 80
	.loc 1 415 0
	l32r	a9, .LC64
	s32i	a9, a8, 84
	.loc 1 416 0
	l32r	a9, .LC65
	s32i	a9, a8, 88
	retw.n
.LFE25:
	.size	esp_event_set_default_eth_handlers, .-esp_event_set_default_eth_handlers
	.section	.rodata.__FUNCTION__$6332,"a",@progbits
	.align	4
	.type	__FUNCTION__$6332, @object
	.size	__FUNCTION__$6332, 38
__FUNCTION__$6332:
	.string	"system_event_sta_start_handle_default"
	.section	.rodata.__FUNCTION__$6341,"a",@progbits
	.align	4
	.type	__FUNCTION__$6341, @object
	.size	__FUNCTION__$6341, 42
__FUNCTION__$6341:
	.string	"system_event_sta_connected_handle_default"
	.section	.rodata.__FUNCTION__$6349,"a",@progbits
	.align	4
	.type	__FUNCTION__$6349, @object
	.size	__FUNCTION__$6349, 45
__FUNCTION__$6349:
	.string	"system_event_sta_disconnected_handle_default"
	.section	.rodata.__FUNCTION__$6309,"a",@progbits
	.align	4
	.type	__FUNCTION__$6309, @object
	.size	__FUNCTION__$6309, 32
__FUNCTION__$6309:
	.string	"system_event_sta_got_ip_default"
	.section	.rodata.__FUNCTION__$6319,"a",@progbits
	.align	4
	.type	__FUNCTION__$6319, @object
	.size	__FUNCTION__$6319, 37
__FUNCTION__$6319:
	.string	"system_event_ap_start_handle_default"
	.section	.rodata.__FUNCTION__$6325,"a",@progbits
	.align	4
	.type	__FUNCTION__$6325, @object
	.size	__FUNCTION__$6325, 36
__FUNCTION__$6325:
	.string	"system_event_ap_stop_handle_default"
	.section	.bss.default_event_handlers,"aw",@nobits
	.align	4
	.type	default_event_handlers, @object
	.size	default_event_handlers, 96
default_event_handlers:
	.zero	96
	.global	TAG
	.section	.rodata.str1.4
	.align	4
.LC66:
	.string	"event"
	.section	.data.TAG,"aw",@progbits
	.align	4
	.type	TAG, @object
	.size	TAG, 4
TAG:
	.word	.LC66
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
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI0-.LFB22
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI1-.LFB15
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI2-.LFB17
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI3-.LFB19
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI4-.LFB11
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI5-.LFB16
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI6-.LFB14
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI7-.LFB21
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI8-.LFB13
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI9-.LFB20
	.byte	0xe
	.uleb128 0x80
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI10-.LFB12
	.byte	0xe
	.uleb128 0x60
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
	.uleb128 0x50
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI12-.LFB10
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI13-.LFB23
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI14-.LFB24
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI15-.LFB25
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE30:
	.text
.Letext0:
	.file 2 "C:/esp/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "C:/esp/esp-idf/components/newlib/include/stdint.h"
	.file 4 "C:/esp/esp-idf/components/esp32/include/esp_err.h"
	.file 5 "C:/esp/esp-idf/components/esp32/include/esp_system.h"
	.file 6 "C:/esp/esp-idf/components/esp32/include/esp_interface.h"
	.file 7 "C:/esp/esp-idf/components/esp32/include/esp_wifi_types.h"
	.file 8 "C:/esp/esp-idf/components/lwip/include/lwip/port/arch/cc.h"
	.file 9 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/ip4_addr.h"
	.file 10 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/ip6_addr.h"
	.file 11 "C:/esp/esp-idf/components/tcpip_adapter/include/tcpip_adapter.h"
	.file 12 "C:/esp/esp-idf/components/esp32/include/esp_event.h"
	.file 13 "C:/esp/esp-idf/components/esp32/include/esp_wifi_internal.h"
	.file 14 "C:/esp/esp-idf/components/log/include/esp_log.h"
	.file 15 "C:/esp/esp-idf/components/esp32/include/esp_wifi.h"
	.file 16 "C:/esp/esp-idf/components/newlib/include/string.h"
	.file 17 "C:/esp/esp-idf/components/ethernet/include/esp_eth.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1295
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF177
	.byte	0xc
	.4byte	.LASF178
	.4byte	.LASF179
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x4
	.4byte	.LASF5
	.byte	0x2
	.byte	0x12
	.4byte	0x4c
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x2
	.byte	0x16
	.4byte	0x33
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x2
	.byte	0x19
	.4byte	0x25
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x2
	.byte	0x1a
	.4byte	0x2c
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa6
	.uleb128 0x7
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb4
	.uleb128 0x8
	.4byte	0xa7
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x3
	.byte	0x15
	.4byte	0x41
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x3
	.byte	0x21
	.4byte	0x5a
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x3
	.byte	0x2c
	.4byte	0x65
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x3
	.byte	0x2d
	.4byte	0x70
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x4
	.byte	0x18
	.4byte	0xcf
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF20
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x5
	.byte	0x34
	.4byte	0xa0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x2c
	.byte	0x6
	.byte	0x19
	.4byte	0x127
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
	.uleb128 0x9
	.byte	0x4
	.4byte	0x2c
	.byte	0x7
	.byte	0x32
	.4byte	0x15e
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF31
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF32
	.byte	0x6
	.byte	0
	.uleb128 0x4
	.4byte	.LASF33
	.byte	0x7
	.byte	0x3a
	.4byte	0x127
	.uleb128 0xb
	.4byte	0xb9
	.4byte	0x179
	.uleb128 0xc
	.4byte	0x90
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.4byte	0xb9
	.4byte	0x189
	.uleb128 0xc
	.4byte	0x90
	.byte	0x1f
	.byte	0
	.uleb128 0x4
	.4byte	.LASF34
	.byte	0x8
	.byte	0x2e
	.4byte	0xb9
	.uleb128 0x4
	.4byte	.LASF35
	.byte	0x8
	.byte	0x30
	.4byte	0xc4
	.uleb128 0x4
	.4byte	.LASF36
	.byte	0x8
	.byte	0x32
	.4byte	0xda
	.uleb128 0xd
	.4byte	.LASF38
	.byte	0x4
	.byte	0x9
	.byte	0x2e
	.4byte	0x1c3
	.uleb128 0xe
	.4byte	.LASF40
	.byte	0x9
	.byte	0x2f
	.4byte	0x19f
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF37
	.byte	0x9
	.byte	0x42
	.4byte	0x1aa
	.uleb128 0xd
	.4byte	.LASF39
	.byte	0x10
	.byte	0xa
	.byte	0x39
	.4byte	0x1e7
	.uleb128 0xe
	.4byte	.LASF40
	.byte	0xa
	.byte	0x3a
	.4byte	0x1e7
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0x19f
	.4byte	0x1f7
	.uleb128 0xc
	.4byte	0x90
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.4byte	.LASF41
	.byte	0xa
	.byte	0x4b
	.4byte	0x1ce
	.uleb128 0xf
	.byte	0xc
	.byte	0xb
	.byte	0x48
	.4byte	0x22d
	.uleb128 0x10
	.string	"ip"
	.byte	0xb
	.byte	0x49
	.4byte	0x1c3
	.byte	0
	.uleb128 0xe
	.4byte	.LASF42
	.byte	0xb
	.byte	0x4a
	.4byte	0x1c3
	.byte	0x4
	.uleb128 0x10
	.string	"gw"
	.byte	0xb
	.byte	0x4b
	.4byte	0x1c3
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.4byte	.LASF43
	.byte	0xb
	.byte	0x4c
	.4byte	0x202
	.uleb128 0xf
	.byte	0x10
	.byte	0xb
	.byte	0x4e
	.4byte	0x24c
	.uleb128 0x10
	.string	"ip"
	.byte	0xb
	.byte	0x4f
	.4byte	0x1f7
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF44
	.byte	0xb
	.byte	0x50
	.4byte	0x238
	.uleb128 0x9
	.byte	0x4
	.4byte	0x2c
	.byte	0xb
	.byte	0x6d
	.4byte	0x27c
	.uleb128 0xa
	.4byte	.LASF45
	.byte	0
	.uleb128 0xa
	.4byte	.LASF46
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF47
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF48
	.byte	0x3
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x2c
	.byte	0xb
	.byte	0x75
	.4byte	0x2a1
	.uleb128 0xa
	.4byte	.LASF49
	.byte	0
	.uleb128 0xa
	.4byte	.LASF50
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF51
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF52
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.4byte	.LASF53
	.byte	0xb
	.byte	0x7a
	.4byte	0x27c
	.uleb128 0x9
	.byte	0x4
	.4byte	0x2c
	.byte	0xc
	.byte	0x1d
	.4byte	0x34f
	.uleb128 0xa
	.4byte	.LASF54
	.byte	0
	.uleb128 0xa
	.4byte	.LASF55
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF56
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF57
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF58
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF59
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF60
	.byte	0x6
	.uleb128 0xa
	.4byte	.LASF61
	.byte	0x7
	.uleb128 0xa
	.4byte	.LASF62
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF63
	.byte	0x9
	.uleb128 0xa
	.4byte	.LASF64
	.byte	0xa
	.uleb128 0xa
	.4byte	.LASF65
	.byte	0xb
	.uleb128 0xa
	.4byte	.LASF66
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF67
	.byte	0xd
	.uleb128 0xa
	.4byte	.LASF68
	.byte	0xe
	.uleb128 0xa
	.4byte	.LASF69
	.byte	0xf
	.uleb128 0xa
	.4byte	.LASF70
	.byte	0x10
	.uleb128 0xa
	.4byte	.LASF71
	.byte	0x11
	.uleb128 0xa
	.4byte	.LASF72
	.byte	0x12
	.uleb128 0xa
	.4byte	.LASF73
	.byte	0x13
	.uleb128 0xa
	.4byte	.LASF74
	.byte	0x14
	.uleb128 0xa
	.4byte	.LASF75
	.byte	0x15
	.uleb128 0xa
	.4byte	.LASF76
	.byte	0x16
	.uleb128 0xa
	.4byte	.LASF77
	.byte	0x17
	.uleb128 0xa
	.4byte	.LASF78
	.byte	0x18
	.byte	0
	.uleb128 0x4
	.4byte	.LASF79
	.byte	0xc
	.byte	0x37
	.4byte	0x2ac
	.uleb128 0x9
	.byte	0x4
	.4byte	0x2c
	.byte	0xc
	.byte	0x39
	.4byte	0x379
	.uleb128 0xa
	.4byte	.LASF80
	.byte	0
	.uleb128 0xa
	.4byte	.LASF81
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF82
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF83
	.byte	0xc
	.byte	0x3d
	.4byte	0x35a
	.uleb128 0xf
	.byte	0x8
	.byte	0xc
	.byte	0x3e
	.4byte	0x3b1
	.uleb128 0xe
	.4byte	.LASF84
	.byte	0xc
	.byte	0x3f
	.4byte	0xda
	.byte	0
	.uleb128 0xe
	.4byte	.LASF85
	.byte	0xc
	.byte	0x40
	.4byte	0xb9
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF86
	.byte	0xc
	.byte	0x41
	.4byte	0xb9
	.byte	0x5
	.byte	0
	.uleb128 0x4
	.4byte	.LASF87
	.byte	0xc
	.byte	0x42
	.4byte	0x384
	.uleb128 0xf
	.byte	0x2c
	.byte	0xc
	.byte	0x44
	.4byte	0x401
	.uleb128 0xe
	.4byte	.LASF88
	.byte	0xc
	.byte	0x45
	.4byte	0x179
	.byte	0
	.uleb128 0xe
	.4byte	.LASF89
	.byte	0xc
	.byte	0x46
	.4byte	0xb9
	.byte	0x20
	.uleb128 0xe
	.4byte	.LASF90
	.byte	0xc
	.byte	0x47
	.4byte	0x169
	.byte	0x21
	.uleb128 0xe
	.4byte	.LASF91
	.byte	0xc
	.byte	0x48
	.4byte	0xb9
	.byte	0x27
	.uleb128 0xe
	.4byte	.LASF92
	.byte	0xc
	.byte	0x49
	.4byte	0x15e
	.byte	0x28
	.byte	0
	.uleb128 0x4
	.4byte	.LASF93
	.byte	0xc
	.byte	0x4a
	.4byte	0x3bc
	.uleb128 0xf
	.byte	0x28
	.byte	0xc
	.byte	0x4c
	.4byte	0x445
	.uleb128 0xe
	.4byte	.LASF88
	.byte	0xc
	.byte	0x4d
	.4byte	0x179
	.byte	0
	.uleb128 0xe
	.4byte	.LASF89
	.byte	0xc
	.byte	0x4e
	.4byte	0xb9
	.byte	0x20
	.uleb128 0xe
	.4byte	.LASF90
	.byte	0xc
	.byte	0x4f
	.4byte	0x169
	.byte	0x21
	.uleb128 0xe
	.4byte	.LASF94
	.byte	0xc
	.byte	0x50
	.4byte	0xb9
	.byte	0x27
	.byte	0
	.uleb128 0x4
	.4byte	.LASF95
	.byte	0xc
	.byte	0x51
	.4byte	0x40c
	.uleb128 0xf
	.byte	0x8
	.byte	0xc
	.byte	0x53
	.4byte	0x471
	.uleb128 0xe
	.4byte	.LASF96
	.byte	0xc
	.byte	0x54
	.4byte	0x15e
	.byte	0
	.uleb128 0xe
	.4byte	.LASF97
	.byte	0xc
	.byte	0x55
	.4byte	0x15e
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF98
	.byte	0xc
	.byte	0x56
	.4byte	0x450
	.uleb128 0xf
	.byte	0x10
	.byte	0xc
	.byte	0x58
	.4byte	0x49d
	.uleb128 0xe
	.4byte	.LASF99
	.byte	0xc
	.byte	0x59
	.4byte	0x22d
	.byte	0
	.uleb128 0xe
	.4byte	.LASF100
	.byte	0xc
	.byte	0x5a
	.4byte	0xf0
	.byte	0xc
	.byte	0
	.uleb128 0x4
	.4byte	.LASF101
	.byte	0xc
	.byte	0x5b
	.4byte	0x47c
	.uleb128 0xf
	.byte	0x8
	.byte	0xc
	.byte	0x5d
	.4byte	0x4bd
	.uleb128 0xe
	.4byte	.LASF102
	.byte	0xc
	.byte	0x5e
	.4byte	0x4bd
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0xb9
	.4byte	0x4cd
	.uleb128 0xc
	.4byte	0x90
	.byte	0x7
	.byte	0
	.uleb128 0x4
	.4byte	.LASF103
	.byte	0xc
	.byte	0x5f
	.4byte	0x4a8
	.uleb128 0xf
	.byte	0x10
	.byte	0xc
	.byte	0x61
	.4byte	0x4ed
	.uleb128 0xe
	.4byte	.LASF104
	.byte	0xc
	.byte	0x62
	.4byte	0x24c
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF105
	.byte	0xc
	.byte	0x63
	.4byte	0x4d8
	.uleb128 0xf
	.byte	0x7
	.byte	0xc
	.byte	0x65
	.4byte	0x519
	.uleb128 0x10
	.string	"mac"
	.byte	0xc
	.byte	0x66
	.4byte	0x169
	.byte	0
	.uleb128 0x10
	.string	"aid"
	.byte	0xc
	.byte	0x67
	.4byte	0xb9
	.byte	0x6
	.byte	0
	.uleb128 0x4
	.4byte	.LASF106
	.byte	0xc
	.byte	0x68
	.4byte	0x4f8
	.uleb128 0xf
	.byte	0x7
	.byte	0xc
	.byte	0x6a
	.4byte	0x545
	.uleb128 0x10
	.string	"mac"
	.byte	0xc
	.byte	0x6b
	.4byte	0x169
	.byte	0
	.uleb128 0x10
	.string	"aid"
	.byte	0xc
	.byte	0x6c
	.4byte	0xb9
	.byte	0x6
	.byte	0
	.uleb128 0x4
	.4byte	.LASF107
	.byte	0xc
	.byte	0x6d
	.4byte	0x524
	.uleb128 0xf
	.byte	0xc
	.byte	0xc
	.byte	0x6f
	.4byte	0x571
	.uleb128 0xe
	.4byte	.LASF108
	.byte	0xc
	.byte	0x70
	.4byte	0x25
	.byte	0
	.uleb128 0x10
	.string	"mac"
	.byte	0xc
	.byte	0x71
	.4byte	0x169
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF109
	.byte	0xc
	.byte	0x72
	.4byte	0x550
	.uleb128 0x11
	.byte	0x2c
	.byte	0xc
	.byte	0x74
	.4byte	0x5fe
	.uleb128 0x12
	.4byte	.LASF110
	.byte	0xc
	.byte	0x75
	.4byte	0x401
	.uleb128 0x12
	.4byte	.LASF111
	.byte	0xc
	.byte	0x76
	.4byte	0x445
	.uleb128 0x12
	.4byte	.LASF112
	.byte	0xc
	.byte	0x77
	.4byte	0x3b1
	.uleb128 0x12
	.4byte	.LASF113
	.byte	0xc
	.byte	0x78
	.4byte	0x471
	.uleb128 0x12
	.4byte	.LASF114
	.byte	0xc
	.byte	0x79
	.4byte	0x49d
	.uleb128 0x12
	.4byte	.LASF115
	.byte	0xc
	.byte	0x7a
	.4byte	0x4cd
	.uleb128 0x12
	.4byte	.LASF116
	.byte	0xc
	.byte	0x7b
	.4byte	0x379
	.uleb128 0x12
	.4byte	.LASF117
	.byte	0xc
	.byte	0x7c
	.4byte	0x519
	.uleb128 0x12
	.4byte	.LASF118
	.byte	0xc
	.byte	0x7d
	.4byte	0x545
	.uleb128 0x12
	.4byte	.LASF119
	.byte	0xc
	.byte	0x7e
	.4byte	0x571
	.uleb128 0x12
	.4byte	.LASF120
	.byte	0xc
	.byte	0x7f
	.4byte	0x4ed
	.byte	0
	.uleb128 0x4
	.4byte	.LASF121
	.byte	0xc
	.byte	0x80
	.4byte	0x57c
	.uleb128 0xf
	.byte	0x30
	.byte	0xc
	.byte	0x82
	.4byte	0x62a
	.uleb128 0xe
	.4byte	.LASF122
	.byte	0xc
	.byte	0x83
	.4byte	0x34f
	.byte	0
	.uleb128 0xe
	.4byte	.LASF123
	.byte	0xc
	.byte	0x84
	.4byte	0x5fe
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF124
	.byte	0xc
	.byte	0x85
	.4byte	0x609
	.uleb128 0x6
	.byte	0x4
	.4byte	0x63b
	.uleb128 0x13
	.4byte	0xe5
	.4byte	0x64a
	.uleb128 0x14
	.4byte	0x64a
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x62a
	.uleb128 0x4
	.4byte	.LASF125
	.byte	0xd
	.byte	0x63
	.4byte	0x65b
	.uleb128 0x6
	.byte	0x4
	.4byte	0x661
	.uleb128 0x13
	.4byte	0xe5
	.4byte	0x67a
	.uleb128 0x14
	.4byte	0x97
	.uleb128 0x14
	.4byte	0xc4
	.uleb128 0x14
	.4byte	0x97
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x2c
	.byte	0xe
	.byte	0x1f
	.4byte	0x6ab
	.uleb128 0xa
	.4byte	.LASF126
	.byte	0
	.uleb128 0xa
	.4byte	.LASF127
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF128
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF129
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF130
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF131
	.byte	0x5
	.byte	0
	.uleb128 0x4
	.4byte	.LASF132
	.byte	0xe
	.byte	0x26
	.4byte	0x67a
	.uleb128 0x15
	.4byte	.LASF133
	.byte	0x1
	.byte	0xec
	.4byte	0xe5
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x725
	.uleb128 0x16
	.4byte	.LASF135
	.byte	0x1
	.byte	0xec
	.4byte	0x64a
	.4byte	.LLST0
	.uleb128 0x17
	.4byte	.LVL1
	.4byte	0x11b5
	.uleb128 0x18
	.4byte	.LVL3
	.4byte	0x11c0
	.4byte	0x703
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x17
	.4byte	.LVL5
	.4byte	0x11b5
	.uleb128 0x1a
	.4byte	.LVL6
	.4byte	0x11c0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF134
	.byte	0x1
	.byte	0x8b
	.4byte	0xe5
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x76f
	.uleb128 0x16
	.4byte	.LASF135
	.byte	0x1
	.byte	0x8b
	.4byte	0x64a
	.4byte	.LLST1
	.uleb128 0x17
	.4byte	.LVL11
	.4byte	0x11b5
	.uleb128 0x1a
	.4byte	.LVL12
	.4byte	0x11c0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF136
	.byte	0x1
	.byte	0x9f
	.4byte	0xe5
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x82d
	.uleb128 0x16
	.4byte	.LASF135
	.byte	0x1
	.byte	0x9f
	.4byte	0x64a
	.4byte	.LLST2
	.uleb128 0x1b
	.4byte	.LASF143
	.4byte	0x83d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$6325
	.uleb128 0x1c
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0x81d
	.uleb128 0x1d
	.4byte	.LASF140
	.byte	0x1
	.byte	0xa1
	.4byte	0xe5
	.4byte	.LLST3
	.uleb128 0x18
	.4byte	.LVL15
	.4byte	0x11cb
	.4byte	0x7da
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x17
	.4byte	.LVL17
	.4byte	0x11b5
	.uleb128 0x1a
	.4byte	.LVL18
	.4byte	0x11c0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$6325
	.uleb128 0x19
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x8
	.byte	0xa1
	.uleb128 0x19
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC12
	.uleb128 0x19
	.uleb128 0x2
	.byte	0x71
	.sleb128 8
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL19
	.4byte	0x11d6
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0xa7
	.4byte	0x83d
	.uleb128 0xc
	.4byte	0x90
	.byte	0x23
	.byte	0
	.uleb128 0x8
	.4byte	0x82d
	.uleb128 0x15
	.4byte	.LASF137
	.byte	0x1
	.byte	0xb4
	.4byte	0xe5
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x87a
	.uleb128 0x16
	.4byte	.LASF135
	.byte	0x1
	.byte	0xb4
	.4byte	0x64a
	.4byte	.LLST4
	.uleb128 0x1a
	.4byte	.LVL22
	.4byte	0x11d6
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF138
	.byte	0x1
	.byte	0x53
	.4byte	0xe5
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8b2
	.uleb128 0x16
	.4byte	.LASF135
	.byte	0x1
	.byte	0x53
	.4byte	0x64a
	.4byte	.LLST5
	.uleb128 0x1a
	.4byte	.LVL25
	.4byte	0x11d6
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF139
	.byte	0x1
	.byte	0x91
	.4byte	0xe5
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa1f
	.uleb128 0x16
	.4byte	.LASF135
	.byte	0x1
	.byte	0x91
	.4byte	0x64a
	.4byte	.LLST6
	.uleb128 0x1e
	.4byte	.LASF141
	.byte	0x1
	.byte	0x93
	.4byte	0x22d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1e
	.4byte	.LASF142
	.byte	0x1
	.byte	0x94
	.4byte	0x169
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1b
	.4byte	.LASF143
	.4byte	0xa2f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$6319
	.uleb128 0x1c
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.4byte	0x977
	.uleb128 0x1d
	.4byte	.LASF140
	.byte	0x1
	.byte	0x96
	.4byte	0xe5
	.4byte	.LLST7
	.uleb128 0x18
	.4byte	.LVL28
	.4byte	0x11cb
	.4byte	0x934
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x17
	.4byte	.LVL30
	.4byte	0x11b5
	.uleb128 0x1a
	.4byte	.LVL31
	.4byte	0x11c0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$6319
	.uleb128 0x19
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x8
	.byte	0x96
	.uleb128 0x19
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC12
	.uleb128 0x19
	.uleb128 0x2
	.byte	0x71
	.sleb128 8
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.4byte	0x9ef
	.uleb128 0x1d
	.4byte	.LASF140
	.byte	0x1
	.byte	0x97
	.4byte	0xe5
	.4byte	.LLST8
	.uleb128 0x18
	.4byte	.LVL32
	.4byte	0x11e1
	.4byte	0x9ac
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x17
	.4byte	.LVL34
	.4byte	0x11b5
	.uleb128 0x1a
	.4byte	.LVL35
	.4byte	0x11c0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$6319
	.uleb128 0x19
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x8
	.byte	0x97
	.uleb128 0x19
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC19
	.uleb128 0x19
	.uleb128 0x2
	.byte	0x71
	.sleb128 8
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL36
	.4byte	0x11ed
	.4byte	0xa08
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL37
	.4byte	0x11f9
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0xa7
	.4byte	0xa2f
	.uleb128 0xc
	.4byte	0x90
	.byte	0x24
	.byte	0
	.uleb128 0x8
	.4byte	0xa1f
	.uleb128 0x15
	.4byte	.LASF144
	.byte	0x1
	.byte	0x7f
	.4byte	0xe5
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb1f
	.uleb128 0x16
	.4byte	.LASF135
	.byte	0x1
	.byte	0x7f
	.4byte	0x64a
	.4byte	.LLST9
	.uleb128 0x1b
	.4byte	.LASF143
	.4byte	0xb2f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$6309
	.uleb128 0x1c
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.4byte	0xad3
	.uleb128 0x1d
	.4byte	.LASF140
	.byte	0x1
	.byte	0x81
	.4byte	0xe5
	.4byte	.LLST10
	.uleb128 0x17
	.4byte	.LVL40
	.4byte	0x1204
	.uleb128 0x17
	.4byte	.LVL42
	.4byte	0x11b5
	.uleb128 0x1a
	.4byte	.LVL44
	.4byte	0x11c0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$6309
	.uleb128 0x19
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC24
	.uleb128 0x19
	.uleb128 0x2
	.byte	0x71
	.sleb128 8
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL46
	.4byte	0x11b5
	.uleb128 0x1a
	.4byte	.LVL49
	.4byte	0x11c0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC26
	.uleb128 0x19
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x2
	.byte	0x71
	.sleb128 24
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x2
	.byte	0x71
	.sleb128 28
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x2
	.byte	0x71
	.sleb128 32
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x2
	.byte	0x71
	.sleb128 36
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x2
	.byte	0x71
	.sleb128 40
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0xa7
	.4byte	0xb2f
	.uleb128 0xc
	.4byte	0x90
	.byte	0x1f
	.byte	0
	.uleb128 0x8
	.4byte	0xb1f
	.uleb128 0x15
	.4byte	.LASF145
	.byte	0x1
	.byte	0xe5
	.4byte	0xe5
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbf2
	.uleb128 0x16
	.4byte	.LASF135
	.byte	0x1
	.byte	0xe5
	.4byte	0x64a
	.4byte	.LLST11
	.uleb128 0x1b
	.4byte	.LASF143
	.4byte	0xc02
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$6349
	.uleb128 0x1c
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.4byte	0xbe2
	.uleb128 0x1d
	.4byte	.LASF140
	.byte	0x1
	.byte	0xe8
	.4byte	0xe5
	.4byte	.LLST12
	.uleb128 0x18
	.4byte	.LVL52
	.4byte	0x11cb
	.4byte	0xb9f
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x17
	.4byte	.LVL54
	.4byte	0x11b5
	.uleb128 0x1a
	.4byte	.LVL55
	.4byte	0x11c0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$6349
	.uleb128 0x19
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x8
	.byte	0xe8
	.uleb128 0x19
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC12
	.uleb128 0x19
	.uleb128 0x2
	.byte	0x71
	.sleb128 8
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL51
	.4byte	0x120f
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0xa7
	.4byte	0xc02
	.uleb128 0xc
	.4byte	0x90
	.byte	0x2c
	.byte	0
	.uleb128 0x8
	.4byte	0xbf2
	.uleb128 0x15
	.4byte	.LASF146
	.byte	0x1
	.byte	0x79
	.4byte	0xe5
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc3f
	.uleb128 0x16
	.4byte	.LASF135
	.byte	0x1
	.byte	0x79
	.4byte	0x64a
	.4byte	.LLST13
	.uleb128 0x1a
	.4byte	.LVL58
	.4byte	0x120f
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF147
	.byte	0x1
	.byte	0xbb
	.4byte	0xe5
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe17
	.uleb128 0x16
	.4byte	.LASF135
	.byte	0x1
	.byte	0xbb
	.4byte	0x64a
	.4byte	.LLST14
	.uleb128 0x1e
	.4byte	.LASF84
	.byte	0x1
	.byte	0xbd
	.4byte	0x2a1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x1b
	.4byte	.LASF143
	.4byte	0xe27
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$6341
	.uleb128 0x1c
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.4byte	0xcf7
	.uleb128 0x1d
	.4byte	.LASF140
	.byte	0x1
	.byte	0xbf
	.4byte	0xe5
	.4byte	.LLST15
	.uleb128 0x18
	.4byte	.LVL61
	.4byte	0x11cb
	.4byte	0xcb4
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x17
	.4byte	.LVL63
	.4byte	0x11b5
	.uleb128 0x1a
	.4byte	.LVL64
	.4byte	0x11c0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$6341
	.uleb128 0x19
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x8
	.byte	0xbf
	.uleb128 0x19
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC12
	.uleb128 0x19
	.uleb128 0x2
	.byte	0x71
	.sleb128 8
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.4byte	0xdda
	.uleb128 0x1e
	.4byte	.LASF148
	.byte	0x1
	.byte	0xc8
	.4byte	0x22d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1e
	.4byte	.LASF149
	.byte	0x1
	.byte	0xc9
	.4byte	0x22d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1c
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.4byte	0xd86
	.uleb128 0x1f
	.string	"evt"
	.byte	0x1
	.byte	0xcf
	.4byte	0x62a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x18
	.4byte	.LVL71
	.4byte	0x121b
	.4byte	0xd5b
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.uleb128 0x18
	.4byte	.LVL72
	.4byte	0x1226
	.4byte	0xd74
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL73
	.4byte	0x1232
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL69
	.4byte	0x11ed
	.4byte	0xd9f
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x18
	.4byte	.LVL70
	.4byte	0x123d
	.4byte	0xdb8
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.uleb128 0x17
	.4byte	.LVL74
	.4byte	0x11b5
	.uleb128 0x1a
	.4byte	.LVL75
	.4byte	0x11c0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC37
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL65
	.4byte	0x1249
	.4byte	0xded
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x18
	.4byte	.LVL66
	.4byte	0x1254
	.4byte	0xe07
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL68
	.4byte	0x1260
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0xa7
	.4byte	0xe27
	.uleb128 0xc
	.4byte	0x90
	.byte	0x29
	.byte	0
	.uleb128 0x8
	.4byte	0xe17
	.uleb128 0x15
	.4byte	.LASF150
	.byte	0x1
	.byte	0x5a
	.4byte	0xe5
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf24
	.uleb128 0x16
	.4byte	.LASF135
	.byte	0x1
	.byte	0x5a
	.4byte	0x64a
	.4byte	.LLST16
	.uleb128 0x1e
	.4byte	.LASF84
	.byte	0x1
	.byte	0x5c
	.4byte	0x2a1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1c
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.4byte	0xee7
	.uleb128 0x1e
	.4byte	.LASF151
	.byte	0x1
	.byte	0x65
	.4byte	0x22d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1c
	.4byte	.LBB11
	.4byte	.LBE11-.LBB11
	.4byte	0xeac
	.uleb128 0x1f
	.string	"evt"
	.byte	0x1
	.byte	0x6a
	.4byte	0x62a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x1a
	.4byte	.LVL81
	.4byte	0x1232
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL80
	.4byte	0x11ed
	.4byte	0xec5
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x17
	.4byte	.LVL82
	.4byte	0x11b5
	.uleb128 0x1a
	.4byte	.LVL83
	.4byte	0x11c0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC37
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL77
	.4byte	0x1249
	.4byte	0xefa
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x18
	.4byte	.LVL78
	.4byte	0x1254
	.4byte	0xf14
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL79
	.4byte	0x1260
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF152
	.byte	0x1
	.byte	0xa8
	.4byte	0xe5
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x101f
	.uleb128 0x16
	.4byte	.LASF135
	.byte	0x1
	.byte	0xa8
	.4byte	0x64a
	.4byte	.LLST17
	.uleb128 0x1e
	.4byte	.LASF148
	.byte	0x1
	.byte	0xaa
	.4byte	0x22d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1e
	.4byte	.LASF153
	.byte	0x1
	.byte	0xab
	.4byte	0x169
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1b
	.4byte	.LASF143
	.4byte	0x102f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$6332
	.uleb128 0x1c
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.4byte	0xfef
	.uleb128 0x1d
	.4byte	.LASF140
	.byte	0x1
	.byte	0xad
	.4byte	0xe5
	.4byte	.LLST18
	.uleb128 0x18
	.4byte	.LVL86
	.4byte	0x11e1
	.4byte	0xfac
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x17
	.4byte	.LVL88
	.4byte	0x11b5
	.uleb128 0x1a
	.4byte	.LVL89
	.4byte	0x11c0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$6332
	.uleb128 0x19
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x8
	.byte	0xad
	.uleb128 0x19
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC19
	.uleb128 0x19
	.uleb128 0x2
	.byte	0x71
	.sleb128 8
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL90
	.4byte	0x11ed
	.4byte	0x1008
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL91
	.4byte	0x126c
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0xa7
	.4byte	0x102f
	.uleb128 0xc
	.4byte	0x90
	.byte	0x25
	.byte	0
	.uleb128 0x8
	.4byte	0x101f
	.uleb128 0x15
	.4byte	.LASF154
	.byte	0x1
	.byte	0x47
	.4byte	0xe5
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10bc
	.uleb128 0x16
	.4byte	.LASF135
	.byte	0x1
	.byte	0x47
	.4byte	0x64a
	.4byte	.LLST19
	.uleb128 0x1e
	.4byte	.LASF151
	.byte	0x1
	.byte	0x49
	.4byte	0x22d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1e
	.4byte	.LASF155
	.byte	0x1
	.byte	0x4a
	.4byte	0x169
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x18
	.4byte	.LVL94
	.4byte	0x1277
	.4byte	0x108c
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x18
	.4byte	.LVL95
	.4byte	0x11ed
	.4byte	0x10a5
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL96
	.4byte	0x1282
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LASF180
	.byte	0x1
	.2byte	0x178
	.4byte	0xe5
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1151
	.uleb128 0x21
	.4byte	.LASF135
	.byte	0x1
	.2byte	0x178
	.4byte	0x64a
	.4byte	.LLST20
	.uleb128 0x17
	.4byte	.LVL99
	.4byte	0x11b5
	.uleb128 0x18
	.4byte	.LVL101
	.4byte	0x11c0
	.4byte	0x110b
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC46
	.byte	0
	.uleb128 0x18
	.4byte	.LVL103
	.4byte	0x6b6
	.4byte	0x111f
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL104
	.4byte	0x112f
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL107
	.4byte	0x11b5
	.uleb128 0x1a
	.4byte	.LVL108
	.4byte	0x11c0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC49
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LASF181
	.byte	0x1
	.2byte	0x18d
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1171
	.uleb128 0x17
	.4byte	.LVL112
	.4byte	0x128d
	.byte	0
	.uleb128 0x24
	.4byte	.LASF182
	.byte	0x1
	.2byte	0x19b
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xb
	.4byte	0x635
	.4byte	0x1193
	.uleb128 0xc
	.4byte	0x90
	.byte	0x17
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF156
	.byte	0x1
	.byte	0x45
	.4byte	0x1183
	.uleb128 0x5
	.byte	0x3
	.4byte	default_event_handlers
	.uleb128 0x25
	.string	"TAG"
	.byte	0x1
	.byte	0x26
	.4byte	0xae
	.uleb128 0x5
	.byte	0x3
	.4byte	TAG
	.uleb128 0x26
	.4byte	.LASF157
	.4byte	.LASF157
	.byte	0xe
	.byte	0x4c
	.uleb128 0x26
	.4byte	.LASF158
	.4byte	.LASF158
	.byte	0xe
	.byte	0x60
	.uleb128 0x26
	.4byte	.LASF159
	.4byte	.LASF159
	.byte	0xd
	.byte	0x71
	.uleb128 0x26
	.4byte	.LASF160
	.4byte	.LASF160
	.byte	0xb
	.byte	0xef
	.uleb128 0x27
	.4byte	.LASF161
	.4byte	.LASF161
	.byte	0xf
	.2byte	0x243
	.uleb128 0x27
	.4byte	.LASF162
	.4byte	.LASF162
	.byte	0xb
	.2byte	0x115
	.uleb128 0x26
	.4byte	.LASF163
	.4byte	.LASF163
	.byte	0xb
	.byte	0xe2
	.uleb128 0x26
	.4byte	.LASF164
	.4byte	.LASF164
	.byte	0xd
	.byte	0x7a
	.uleb128 0x27
	.4byte	.LASF165
	.4byte	.LASF165
	.byte	0xb
	.2byte	0x107
	.uleb128 0x26
	.4byte	.LASF166
	.4byte	.LASF166
	.byte	0x10
	.byte	0x16
	.uleb128 0x27
	.4byte	.LASF167
	.4byte	.LASF167
	.byte	0xb
	.2byte	0x143
	.uleb128 0x26
	.4byte	.LASF168
	.4byte	.LASF168
	.byte	0xc
	.byte	0x93
	.uleb128 0x27
	.4byte	.LASF169
	.4byte	.LASF169
	.byte	0xb
	.2byte	0x134
	.uleb128 0x26
	.4byte	.LASF170
	.4byte	.LASF170
	.byte	0xb
	.byte	0xfb
	.uleb128 0x27
	.4byte	.LASF171
	.4byte	.LASF171
	.byte	0xb
	.2byte	0x1a5
	.uleb128 0x27
	.4byte	.LASF172
	.4byte	.LASF172
	.byte	0xb
	.2byte	0x1c1
	.uleb128 0x26
	.4byte	.LASF173
	.4byte	.LASF173
	.byte	0xb
	.byte	0xd2
	.uleb128 0x26
	.4byte	.LASF174
	.4byte	.LASF174
	.byte	0x11
	.byte	0xb6
	.uleb128 0x26
	.4byte	.LASF175
	.4byte	.LASF175
	.byte	0xb
	.byte	0xc4
	.uleb128 0x26
	.4byte	.LASF176
	.4byte	.LASF176
	.byte	0x5
	.byte	0x3b
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x22
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.4byte	.LVL4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL9
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL10
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL13
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL14
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL16
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL16
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL23
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL24
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL26
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL27
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL29
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL29
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL33
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL39
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL43
	.4byte	.LVL45
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL48
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL41
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL50
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL53
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL53
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL56
	.4byte	.LFE21
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL57
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL59
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL60
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL62
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL62
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL76
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL84
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL85
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL87
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL87
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL93
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL97
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL98
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL100
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
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x94
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF182:
	.string	"esp_event_set_default_eth_handlers"
.LASF139:
	.string	"system_event_ap_start_handle_default"
.LASF171:
	.string	"tcpip_adapter_dhcpc_get_status"
.LASF48:
	.string	"TCPIP_ADAPTER_IF_MAX"
.LASF70:
	.string	"SYSTEM_EVENT_AP_STADISCONNECTED"
.LASF69:
	.string	"SYSTEM_EVENT_AP_STACONNECTED"
.LASF160:
	.string	"tcpip_adapter_stop"
.LASF140:
	.string	"__err"
.LASF5:
	.string	"__uint8_t"
.LASF149:
	.string	"sta_old_ip"
.LASF102:
	.string	"pin_code"
.LASF120:
	.string	"got_ip6"
.LASF170:
	.string	"tcpip_adapter_up"
.LASF51:
	.string	"TCPIP_ADAPTER_DHCP_STOPPED"
.LASF95:
	.string	"system_event_sta_disconnected_t"
.LASF148:
	.string	"sta_ip"
.LASF10:
	.string	"long long unsigned int"
.LASF146:
	.string	"system_event_eth_disconnected_handle_default"
.LASF155:
	.string	"eth_mac"
.LASF33:
	.string	"wifi_auth_mode_t"
.LASF162:
	.string	"tcpip_adapter_get_ip_info"
.LASF152:
	.string	"system_event_sta_start_handle_default"
.LASF136:
	.string	"system_event_ap_stop_handle_default"
.LASF135:
	.string	"event"
.LASF133:
	.string	"esp_system_event_debug"
.LASF49:
	.string	"TCPIP_ADAPTER_DHCP_INIT"
.LASF130:
	.string	"ESP_LOG_DEBUG"
.LASF9:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF72:
	.string	"SYSTEM_EVENT_AP_STA_GOT_IP6"
.LASF29:
	.string	"WIFI_AUTH_WPA2_PSK"
.LASF47:
	.string	"TCPIP_ADAPTER_IF_ETH"
.LASF65:
	.string	"SYSTEM_EVENT_STA_WPS_ER_TIMEOUT"
.LASF142:
	.string	"ap_mac"
.LASF93:
	.string	"system_event_sta_connected_t"
.LASF114:
	.string	"got_ip"
.LASF122:
	.string	"event_id"
.LASF11:
	.string	"long int"
.LASF144:
	.string	"system_event_sta_got_ip_default"
.LASF38:
	.string	"ip4_addr"
.LASF97:
	.string	"new_mode"
.LASF158:
	.string	"esp_log_write"
.LASF26:
	.string	"WIFI_AUTH_OPEN"
.LASF169:
	.string	"tcpip_adapter_get_old_ip_info"
.LASF57:
	.string	"SYSTEM_EVENT_STA_STOP"
.LASF52:
	.string	"TCPIP_ADAPTER_DHCP_STATUS_MAX"
.LASF105:
	.string	"system_event_ap_sta_got_ip6_t"
.LASF16:
	.string	"uint16_t"
.LASF41:
	.string	"ip6_addr_t"
.LASF53:
	.string	"tcpip_adapter_dhcp_status_t"
.LASF154:
	.string	"system_event_eth_start_handle_default"
.LASF86:
	.string	"scan_id"
.LASF31:
	.string	"WIFI_AUTH_WPA2_ENTERPRISE"
.LASF83:
	.string	"system_event_sta_wps_fail_reason_t"
.LASF8:
	.string	"__uint32_t"
.LASF32:
	.string	"WIFI_AUTH_MAX"
.LASF63:
	.string	"SYSTEM_EVENT_STA_WPS_ER_SUCCESS"
.LASF117:
	.string	"sta_connected"
.LASF62:
	.string	"SYSTEM_EVENT_STA_LOST_IP"
.LASF104:
	.string	"ip6_info"
.LASF0:
	.string	"unsigned int"
.LASF80:
	.string	"WPS_FAIL_REASON_NORMAL"
.LASF50:
	.string	"TCPIP_ADAPTER_DHCP_STARTED"
.LASF88:
	.string	"ssid"
.LASF161:
	.string	"esp_wifi_get_mac"
.LASF121:
	.string	"system_event_info_t"
.LASF13:
	.string	"long unsigned int"
.LASF36:
	.string	"u32_t"
.LASF115:
	.string	"sta_er_pin"
.LASF143:
	.string	"__FUNCTION__"
.LASF92:
	.string	"authmode"
.LASF106:
	.string	"system_event_ap_staconnected_t"
.LASF56:
	.string	"SYSTEM_EVENT_STA_START"
.LASF116:
	.string	"sta_er_fail_reason"
.LASF1:
	.string	"short unsigned int"
.LASF134:
	.string	"system_event_sta_lost_ip_default"
.LASF119:
	.string	"ap_probereqrecved"
.LASF43:
	.string	"tcpip_adapter_ip_info_t"
.LASF77:
	.string	"SYSTEM_EVENT_ETH_GOT_IP"
.LASF138:
	.string	"system_event_eth_stop_handle_default"
.LASF85:
	.string	"number"
.LASF181:
	.string	"esp_event_set_default_wifi_handlers"
.LASF89:
	.string	"ssid_len"
.LASF124:
	.string	"system_event_t"
.LASF30:
	.string	"WIFI_AUTH_WPA_WPA2_PSK"
.LASF129:
	.string	"ESP_LOG_INFO"
.LASF176:
	.string	"esp_register_shutdown_handler"
.LASF34:
	.string	"u8_t"
.LASF12:
	.string	"sizetype"
.LASF103:
	.string	"system_event_sta_wps_er_pin_t"
.LASF145:
	.string	"system_event_sta_disconnected_handle_default"
.LASF111:
	.string	"disconnected"
.LASF173:
	.string	"tcpip_adapter_sta_start"
.LASF75:
	.string	"SYSTEM_EVENT_ETH_CONNECTED"
.LASF178:
	.string	"C:/esp/esp-idf/components/esp32/event_default_handlers.c"
.LASF60:
	.string	"SYSTEM_EVENT_STA_AUTHMODE_CHANGE"
.LASF81:
	.string	"WPS_FAIL_REASON_RECV_M2D"
.LASF98:
	.string	"system_event_sta_authmode_change_t"
.LASF42:
	.string	"netmask"
.LASF167:
	.string	"tcpip_adapter_set_old_ip_info"
.LASF132:
	.string	"esp_log_level_t"
.LASF55:
	.string	"SYSTEM_EVENT_SCAN_DONE"
.LASF166:
	.string	"memcmp"
.LASF45:
	.string	"TCPIP_ADAPTER_IF_STA"
.LASF125:
	.string	"wifi_rxcb_t"
.LASF109:
	.string	"system_event_ap_probe_req_rx_t"
.LASF24:
	.string	"ESP_IF_ETH"
.LASF90:
	.string	"bssid"
.LASF100:
	.string	"ip_changed"
.LASF40:
	.string	"addr"
.LASF79:
	.string	"system_event_id_t"
.LASF20:
	.string	"_Bool"
.LASF17:
	.string	"int32_t"
.LASF3:
	.string	"unsigned char"
.LASF165:
	.string	"tcpip_adapter_down"
.LASF118:
	.string	"sta_disconnected"
.LASF99:
	.string	"ip_info"
.LASF177:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF168:
	.string	"esp_event_send"
.LASF4:
	.string	"short int"
.LASF150:
	.string	"system_event_eth_connected_handle_default"
.LASF157:
	.string	"esp_log_timestamp"
.LASF127:
	.string	"ESP_LOG_ERROR"
.LASF96:
	.string	"old_mode"
.LASF66:
	.string	"SYSTEM_EVENT_STA_WPS_ER_PIN"
.LASF46:
	.string	"TCPIP_ADAPTER_IF_AP"
.LASF94:
	.string	"reason"
.LASF91:
	.string	"channel"
.LASF179:
	.string	"C:\\\\esp\\\\ArkPOS2-esp\\\\build\\\\esp32"
.LASF113:
	.string	"auth_change"
.LASF78:
	.string	"SYSTEM_EVENT_MAX"
.LASF172:
	.string	"tcpip_adapter_dhcpc_start"
.LASF18:
	.string	"uint32_t"
.LASF74:
	.string	"SYSTEM_EVENT_ETH_STOP"
.LASF25:
	.string	"ESP_IF_MAX"
.LASF180:
	.string	"esp_event_process_default"
.LASF39:
	.string	"ip6_addr"
.LASF126:
	.string	"ESP_LOG_NONE"
.LASF14:
	.string	"char"
.LASF131:
	.string	"ESP_LOG_VERBOSE"
.LASF22:
	.string	"ESP_IF_WIFI_STA"
.LASF58:
	.string	"SYSTEM_EVENT_STA_CONNECTED"
.LASF68:
	.string	"SYSTEM_EVENT_AP_STOP"
.LASF6:
	.string	"__uint16_t"
.LASF112:
	.string	"scan_done"
.LASF28:
	.string	"WIFI_AUTH_WPA_PSK"
.LASF7:
	.string	"__int32_t"
.LASF76:
	.string	"SYSTEM_EVENT_ETH_DISCONNECTED"
.LASF163:
	.string	"tcpip_adapter_ap_start"
.LASF64:
	.string	"SYSTEM_EVENT_STA_WPS_ER_FAILED"
.LASF123:
	.string	"event_info"
.LASF101:
	.string	"system_event_sta_got_ip_t"
.LASF23:
	.string	"ESP_IF_WIFI_AP"
.LASF151:
	.string	"eth_ip"
.LASF137:
	.string	"system_event_sta_stop_handle_default"
.LASF175:
	.string	"tcpip_adapter_eth_start"
.LASF107:
	.string	"system_event_ap_stadisconnected_t"
.LASF37:
	.string	"ip4_addr_t"
.LASF21:
	.string	"shutdown_handler_t"
.LASF156:
	.string	"default_event_handlers"
.LASF110:
	.string	"connected"
.LASF35:
	.string	"u16_t"
.LASF44:
	.string	"tcpip_adapter_ip6_info_t"
.LASF128:
	.string	"ESP_LOG_WARN"
.LASF54:
	.string	"SYSTEM_EVENT_WIFI_READY"
.LASF84:
	.string	"status"
.LASF19:
	.string	"esp_err_t"
.LASF59:
	.string	"SYSTEM_EVENT_STA_DISCONNECTED"
.LASF73:
	.string	"SYSTEM_EVENT_ETH_START"
.LASF15:
	.string	"uint8_t"
.LASF153:
	.string	"sta_mac"
.LASF159:
	.string	"esp_wifi_internal_reg_rxcb"
.LASF141:
	.string	"ap_ip"
.LASF164:
	.string	"esp_wifi_internal_set_sta_ip"
.LASF108:
	.string	"rssi"
.LASF147:
	.string	"system_event_sta_connected_handle_default"
.LASF87:
	.string	"system_event_sta_scan_done_t"
.LASF174:
	.string	"esp_eth_get_mac"
.LASF61:
	.string	"SYSTEM_EVENT_STA_GOT_IP"
.LASF71:
	.string	"SYSTEM_EVENT_AP_PROBEREQRECVED"
.LASF82:
	.string	"WPS_FAIL_REASON_MAX"
.LASF67:
	.string	"SYSTEM_EVENT_AP_START"
.LASF27:
	.string	"WIFI_AUTH_WEP"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-61-gab8375a) 5.2.0"
