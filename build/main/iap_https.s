	.file	"iap_https.c"
	.text
.Ltext0:
	.section	.text.iap_https_metadata_headers_callback,"ax",@progbits
	.align	4
	.global	iap_https_metadata_headers_callback
	.type	iap_https_metadata_headers_callback, @function
iap_https_metadata_headers_callback:
.LFB22:
	.file 1 "C:/esp/ArkPOS2-esp/main/iap_https.c"
	.loc 1 393 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 396 0
	movi.n	a2, 0
.LVL1:
	retw.n
.LFE22:
	.size	iap_https_metadata_headers_callback, .-iap_https_metadata_headers_callback
	.section	.text.iap_https_firmware_headers_callback,"ax",@progbits
	.align	4
	.global	iap_https_firmware_headers_callback
	.type	iap_https_firmware_headers_callback, @function
iap_https_firmware_headers_callback:
.LFB23:
	.loc 1 399 0
.LVL2:
	entry	sp, 32
.LCFI1:
	.loc 1 402 0
	movi.n	a2, 0
.LVL3:
	retw.n
.LFE23:
	.size	iap_https_firmware_headers_callback, .-iap_https_firmware_headers_callback
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC0:
	.string	"fwup_wifi"
	.align	4
.LC2:
	.string	"\033[0;31mE (%d) %s: iap_https_error_callback: error=%d additionalInfo=%d\033[0m\n"
	.align	4
.LC4:
	.string	"\033[0;31mE (%d) %s: HTTP status code 401: Unauthorized.\033[0m\n"
	.align	4
.LC6:
	.string	"\033[0;31mE (%d) %s: HTTP status code 403: The server is refusing to provide the resource.\033[0m\n"
	.align	4
.LC8:
	.string	"\033[0;31mE (%d) %s: HTTP status code 404: Resource not found on the server.\033[0m\n"
	.align	4
.LC10:
	.string	"\033[0;31mE (%d) %s: Non-200 status code received: %d\033[0m\n"
	.section	.text.iap_https_error_callback,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.literal .LC3, .LC2
	.literal .LC5, .LC4
	.literal .LC7, .LC6
	.literal .LC9, .LC8
	.literal .LC11, .LC10
	.align	4
	.global	iap_https_error_callback
	.type	iap_https_error_callback, @function
iap_https_error_callback:
.LFB24:
	.loc 1 405 0
.LVL4:
	entry	sp, 48
.LCFI2:
	.loc 1 406 0
	call8	esp_log_timestamp
.LVL5:
	l32r	a11, .LC1
	s32i.n	a4, sp, 0
	mov.n	a15, a3
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC3
	movi.n	a10, 1
	call8	esp_log_write
.LVL6:
	.loc 1 408 0
	movi	a8, 0x108
	bne	a3, a8, .L3
	.loc 1 409 0
	movi	a3, 0x193
.LVL7:
	beq	a4, a3, .L6
	movi	a3, 0x194
	beq	a4, a3, .L7
	movi	a3, 0x191
	bne	a4, a3, .L9
	.loc 1 411 0 discriminator 1
	call8	esp_log_timestamp
.LVL8:
	l32r	a11, .LC1
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC5
	movi.n	a10, 1
	call8	esp_log_write
.LVL9:
	.loc 1 412 0 discriminator 1
	retw.n
.L6:
	.loc 1 414 0 discriminator 1
	call8	esp_log_timestamp
.LVL10:
	l32r	a11, .LC1
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC7
	movi.n	a10, 1
	call8	esp_log_write
.LVL11:
	.loc 1 415 0 discriminator 1
	retw.n
.L7:
	.loc 1 417 0 discriminator 1
	call8	esp_log_timestamp
.LVL12:
	l32r	a11, .LC1
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC9
	movi.n	a10, 1
	call8	esp_log_write
.LVL13:
	.loc 1 418 0 discriminator 1
	retw.n
.L9:
	.loc 1 420 0 discriminator 1
	call8	esp_log_timestamp
.LVL14:
	l32r	a11, .LC1
	mov.n	a15, a4
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC11
	movi.n	a10, 1
	call8	esp_log_write
.LVL15:
.L3:
	retw.n
.LFE24:
	.size	iap_https_error_callback, .-iap_https_error_callback
	.section	.rodata.str1.4
	.align	4
.LC15:
	.string	"fwup_periodic_check"
	.align	4
.LC18:
	.string	"\033[0;31mE (%d) %s: iap_https_prepare_timer: failed to create the fwup_periodic_check timer!\033[0m\n"
	.align	4
.LC21:
	.string	"\033[0;31mE (%d) %s: iap_https_prepare_timer: failed to start the fwup_periodic_check timer!\033[0m\n"
	.section	.text.iap_https_prepare_timer,"ax",@progbits
	.literal_position
	.literal .LC12, fwupdater_config
	.literal .LC13, check_for_updates_timer
	.literal .LC14, iap_https_periodic_check_timer_callback
	.literal .LC16, .LC15
	.literal .LC17, .LC0
	.literal .LC19, .LC18
	.literal .LC20, 274877907
	.literal .LC22, .LC21
	.align	4
	.type	iap_https_prepare_timer, @function
iap_https_prepare_timer:
.LFB17:
	.loc 1 207 0
	entry	sp, 32
.LCFI3:
	.loc 1 210 0
	l32r	a8, .LC12
	l32i.n	a8, a8, 0
	l32i	a8, a8, 532
	beqz.n	a8, .L11
.LBB2:
	.loc 1 211 0
	l32r	a2, .LC13
	l32i.n	a2, a2, 0
	bnez.n	a2, .L12
.LVL16:
.LBB3:
	.loc 1 214 0
	l32r	a14, .LC14
	movi.n	a13, 0
	mov.n	a12, a13
	movi	a11, 0x3e8
	l32r	a10, .LC16
	call8	xTimerCreate
.LVL17:
	l32r	a2, .LC13
	s32i.n	a10, a2, 0
	.loc 1 215 0
	bnez.n	a10, .L12
	.loc 1 216 0 discriminator 1
	call8	esp_log_timestamp
.LVL18:
	l32r	a11, .LC17
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC19
	movi.n	a10, 1
	call8	esp_log_write
.LVL19:
	.loc 1 217 0 discriminator 1
	retw.n
.LVL20:
.L12:
.LBE3:
	.loc 1 223 0
	l32r	a2, .LC12
	l32i.n	a2, a2, 0
	l32i	a9, a2, 532
	slli	a8, a9, 5
	sub	a8, a8, a9
	addx4	a9, a8, a9
	slli	a8, a9, 3
.LVL21:
	.loc 1 225 0
	addx4	a8, a8, a8
.LVL22:
	addx4	a8, a8, a8
	slli	a12, a8, 2
	l32r	a8, .LC20
	muluh	a12, a12, a8
.LVL23:
	.loc 1 227 0
	l32r	a2, .LC13
	movi	a14, 0x1f4
	movi.n	a13, 0
	srli	a12, a12, 6
.LVL24:
	movi.n	a11, 4
	l32i.n	a10, a2, 0
	call8	xTimerGenericCommand
.LVL25:
	.loc 1 229 0
	l32i.n	a2, a2, 0
	call8	xTaskGetTickCount
.LVL26:
	movi	a14, 0x1f4
	movi.n	a13, 0
	mov.n	a12, a10
	movi.n	a11, 2
	mov.n	a10, a2
	call8	xTimerGenericCommand
.LVL27:
	bnez.n	a10, .L10
	.loc 1 230 0 discriminator 1
	call8	esp_log_timestamp
.LVL28:
	l32r	a11, .LC17
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC22
	movi.n	a10, 1
	call8	esp_log_write
.LVL29:
	retw.n
.L11:
.LBE2:
	.loc 1 238 0
	l32r	a2, .LC13
	l32i.n	a10, a2, 0
	beqz.n	a10, .L10
	.loc 1 240 0
	movi	a14, 0x1f4
	movi.n	a13, 0
	mov.n	a12, a13
	movi.n	a11, 5
	call8	xTimerGenericCommand
.LVL30:
	.loc 1 241 0
	movi.n	a8, 0
	l32r	a2, .LC13
	s32i.n	a8, a2, 0
.L10:
	retw.n
.LFE17:
	.size	iap_https_prepare_timer, .-iap_https_prepare_timer
	.section	.text.iap_https_periodic_check_timer_callback,"ax",@progbits
	.literal_position
	.literal .LC23, event_group
	.align	4
	.type	iap_https_periodic_check_timer_callback, @function
iap_https_periodic_check_timer_callback:
.LFB14:
	.loc 1 140 0
.LVL31:
	entry	sp, 32
.LCFI4:
	.loc 1 141 0
	movi.n	a11, 1
	l32r	a8, .LC23
	l32i.n	a10, a8, 0
	call8	xEventGroupSetBits
.LVL32:
	retw.n
.LFE14:
	.size	iap_https_periodic_check_timer_callback, .-iap_https_periodic_check_timer_callback
	.section	.rodata.str1.4
	.align	4
.LC26:
	.string	"\033[0;31mE (%d) %s: iap_https_check_for_update: failed to initiate SSL/TLS connection; wifi_tls_connect returned %d\033[0m\n"
	.align	4
.LC28:
	.string	"\033[0;32mI (%d) %s: Requesting firmware metadata from server.\033[0m\n"
	.align	4
.LC31:
	.string	"\033[0;31mE (%d) %s: iap_https_check_for_update: failed to send HTTPS metadata request; https_send_request returned %d\033[0m\n"
	.section	.text.iap_https_check_for_update,"ax",@progbits
	.literal_position
	.literal .LC24, tls_context
	.literal .LC25, .LC0
	.literal .LC27, .LC26
	.literal .LC29, .LC28
	.literal .LC30, http_metadata_request
	.literal .LC32, .LC31
	.align	4
	.type	iap_https_check_for_update, @function
iap_https_check_for_update:
.LFB18:
	.loc 1 246 0
	entry	sp, 32
.LCFI5:
	.loc 1 249 0
	l32r	a2, .LC24
	l32i.n	a10, a2, 0
	call8	wifi_tls_connect
.LVL33:
	mov.n	a2, a10
.LVL34:
	.loc 1 250 0
	beqz.n	a10, .L16
	.loc 1 251 0 discriminator 1
	call8	esp_log_timestamp
.LVL35:
	l32r	a11, .LC25
	mov.n	a15, a2
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC27
	movi.n	a10, 1
	call8	esp_log_write
.LVL36:
	.loc 1 252 0 discriminator 1
	retw.n
.L16:
	.loc 1 255 0 discriminator 1
	call8	esp_log_timestamp
.LVL37:
	l32r	a11, .LC25
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC29
	movi.n	a10, 3
	call8	esp_log_write
.LVL38:
	.loc 1 256 0 discriminator 1
	l32r	a11, .LC30
	l32r	a2, .LC24
.LVL39:
	l32i.n	a10, a2, 0
	call8	https_send_request
.LVL40:
	mov.n	a2, a10
.LVL41:
	.loc 1 257 0 discriminator 1
	beqz.n	a10, .L15
	.loc 1 258 0 discriminator 1
	call8	esp_log_timestamp
.LVL42:
	l32r	a11, .LC25
	mov.n	a15, a2
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC32
	movi.n	a10, 1
	call8	esp_log_write
.LVL43:
.L15:
	retw.n
.LFE18:
	.size	iap_https_check_for_update, .-iap_https_check_for_update
	.section	.text.iap_https_trigger_processing,"ax",@progbits
	.align	4
	.type	iap_https_trigger_processing, @function
iap_https_trigger_processing:
.LFB15:
	.loc 1 145 0
	entry	sp, 32
.LCFI6:
	.loc 1 147 0
	call8	iap_https_check_for_update
.LVL44:
	retw.n
.LFE15:
	.size	iap_https_trigger_processing, .-iap_https_trigger_processing
	.section	.rodata.str1.4
	.align	4
.LC33:
	.string	"INTERVAL="
	.align	4
.LC36:
	.string	"VERSION="
	.align	4
.LC39:
	.string	"\033[0;32mI (%d) %s: [VERSION=] '%d'\033[0m\n"
	.align	4
.LC41:
	.string	"FILE="
	.align	4
.LC43:
	.string	"\033[0;32mI (%d) %s: iap_https_metadata_body_callback: firmware version not provided, skipping firmware update\033[0m\n"
	.align	4
.LC45:
	.string	"\033[0;32mI (%d) %s: [FILE=] '%s'\033[0m\n"
	.align	4
.LC47:
	.string	"\033[0;32mI (%d) %s: iap_https_metadata_body_callback: firmware file name not provided, skipping firmware update\033[0m\n"
	.align	4
.LC49:
	.string	"\033[0;32mI (%d) %s: iap_https_metadata_body_callback: we're up-to-date!\033[0m\n"
	.section	.text.iap_https_metadata_body_callback,"ax",@progbits
	.literal_position
	.literal .LC34, .LC33
	.literal .LC35, fwupdater_config
	.literal .LC37, .LC36
	.literal .LC38, .LC0
	.literal .LC40, .LC39
	.literal .LC42, .LC41
	.literal .LC44, .LC43
	.literal .LC46, .LC45
	.literal .LC48, .LC47
	.literal .LC50, .LC49
	.literal .LC51, new_update
	.literal .LC52, event_group
	.align	4
	.global	iap_https_metadata_body_callback
	.type	iap_https_metadata_body_callback, @function
iap_https_metadata_body_callback:
.LFB20:
	.loc 1 280 0
.LVL45:
	entry	sp, 304
.LCFI7:
	.loc 1 286 0
	movi.n	a8, 0
	s32i.n	a8, sp, 0
	.loc 1 287 0
	mov.n	a12, sp
	l32r	a11, .LC34
	l32i.n	a10, a2, 12
	call8	http_parse_key_value_int
.LVL46:
	bnez.n	a10, .L20
	.loc 1 289 0
	l32r	a8, .LC35
	l32i.n	a8, a8, 0
	l32i	a10, a8, 532
	l32i.n	a9, sp, 0
	beq	a10, a9, .L20
	.loc 1 292 0
	s32i	a9, a8, 532
.L20:
	.loc 1 296 0
	movi.n	a8, 0
	s32i.n	a8, sp, 4
	.loc 1 297 0
	addi.n	a12, sp, 4
	l32r	a11, .LC37
	l32i.n	a10, a2, 12
	call8	http_parse_key_value_int
.LVL47:
	bnez.n	a10, .L21
	.loc 1 298 0 discriminator 1
	call8	esp_log_timestamp
.LVL48:
	l32r	a11, .LC38
	l32i.n	a15, sp, 4
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC40
	movi.n	a10, 3
	call8	esp_log_write
.LVL49:
	.loc 1 305 0 discriminator 1
	movi	a13, 0x100
	addi.n	a12, sp, 8
	l32r	a11, .LC42
	l32i.n	a10, a2, 12
	call8	http_parse_key_value_string
.LVL50:
	beqz.n	a10, .L22
	j	.L27
.L21:
	.loc 1 300 0 discriminator 1
	call8	esp_log_timestamp
.LVL51:
	l32r	a11, .LC38
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC44
	movi.n	a10, 3
	call8	esp_log_write
.LVL52:
	.loc 1 301 0 discriminator 1
	j	.L24
.L22:
	.loc 1 306 0 discriminator 1
	call8	esp_log_timestamp
.LVL53:
	l32r	a11, .LC38
	addi.n	a15, sp, 8
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC46
	movi.n	a10, 3
	call8	esp_log_write
.LVL54:
	.loc 1 307 0 discriminator 1
	l32r	a2, .LC35
.LVL55:
	l32i.n	a2, a2, 0
	movi	a12, 0x100
	addi.n	a11, sp, 8
	movi	a10, 0x114
	add.n	a10, a2, a10
	call8	strncpy
.LVL56:
	.loc 1 316 0 discriminator 1
	l32i.n	a8, a2, 0
	l32i.n	a2, sp, 4
	bne	a8, a2, .L28
	j	.L25
.LVL57:
.L27:
	.loc 1 309 0 discriminator 1
	call8	esp_log_timestamp
.LVL58:
	l32r	a11, .LC38
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC48
	movi.n	a10, 3
	call8	esp_log_write
.LVL59:
	.loc 1 310 0 discriminator 1
	j	.L24
.LVL60:
.L25:
	.loc 1 317 0 discriminator 1
	call8	esp_log_timestamp
.LVL61:
	l32r	a11, .LC38
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC50
	movi.n	a10, 3
	call8	esp_log_write
.LVL62:
	.loc 1 318 0 discriminator 1
	j	.L24
.L28:
	.loc 1 326 0
	movi.n	a8, 1
	l32r	a2, .LC51
	s32i.n	a8, a2, 0
	.loc 1 327 0
	movi.n	a11, 2
	l32r	a2, .LC52
	l32i.n	a10, a2, 0
	call8	xEventGroupSetBits
.LVL63:
.L24:
	.loc 1 330 0
	movi.n	a2, 1
	retw.n
.LFE20:
	.size	iap_https_metadata_body_callback, .-iap_https_metadata_body_callback
	.section	.rodata.str1.4
	.align	4
.LC55:
	.string	"\033[0;31mE (%d) %s: iap_https_firmware_body_callback: iap_begin failed (%d)!\033[0m\n"
	.align	4
.LC58:
	.string	"\033[0;31mE (%d) %s: iap_https_firmware_body_callback: write failed (%d), aborting firmware update!\033[0m\n"
	.align	4
.LC60:
	.string	"\033[0;31mE (%d) %s: iap_https_firmware_body_callback: closing the session has failed (%d)!\033[0m\n"
	.align	4
.LC64:
	.string	"\033[0;32mI (%d) %s: Automatic re-boot in 2 seconds - goodbye!...\033[0m\n"
	.align	4
.LC66:
	.string	"\033[0;31mE (%d) %s: iap_https_firmware_body_callback: something's not OK - the new firmware image is empty!\033[0m\n"
	.section	.text.iap_https_firmware_body_callback,"ax",@progbits
	.literal_position
	.literal .LC53, has_iap_session
	.literal .LC54, .LC0
	.literal .LC56, .LC55
	.literal .LC57, total_nof_bytes_received
	.literal .LC59, .LC58
	.literal .LC61, .LC60
	.literal .LC62, has_new_firmware
	.literal .LC63, fwupdater_config
	.literal .LC65, .LC64
	.literal .LC67, .LC66
	.align	4
	.global	iap_https_firmware_body_callback
	.type	iap_https_firmware_body_callback, @function
iap_https_firmware_body_callback:
.LFB21:
	.loc 1 333 0
.LVL64:
	entry	sp, 32
.LCFI8:
	.loc 1 337 0
	l32r	a8, .LC53
	l32i.n	a8, a8, 0
	bnez.n	a8, .L30
.LBB4:
	.loc 1 339 0
	call8	iap_begin
.LVL65:
	mov.n	a4, a10
.LVL66:
	.loc 1 340 0
	movi	a8, 0x103
	bne	a10, a8, .L31
	.loc 1 341 0
	call8	iap_abort
.LVL67:
	.loc 1 342 0
	call8	iap_begin
.LVL68:
	mov.n	a4, a10
.LVL69:
.L31:
	.loc 1 344 0
	beqz.n	a4, .L32
	.loc 1 345 0 discriminator 1
	call8	esp_log_timestamp
.LVL70:
	l32r	a11, .LC54
	mov.n	a15, a4
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC56
	movi.n	a10, 1
	call8	esp_log_write
.LVL71:
	.loc 1 346 0 discriminator 1
	movi.n	a2, 1
.LVL72:
	retw.n
.LVL73:
.L32:
	.loc 1 348 0
	movi.n	a8, 0
	l32r	a4, .LC57
.LVL74:
	s32i.n	a8, a4, 0
	.loc 1 349 0
	movi.n	a8, 1
	l32r	a4, .LC53
	s32i.n	a8, a4, 0
.LVL75:
.L30:
.LBE4:
	.loc 1 352 0
	beqz.n	a3, .L34
.LBB5:
	.loc 1 354 0
	extui	a11, a3, 0, 16
	l32i.n	a10, a2, 12
	call8	iap_write
.LVL76:
	mov.n	a4, a10
.LVL77:
	.loc 1 355 0
	l32r	a2, .LC57
.LVL78:
	l32i.n	a8, a2, 0
	add.n	a3, a8, a3
.LVL79:
	s32i.n	a3, a2, 0
	.loc 1 356 0
	beqz.n	a10, .L37
	.loc 1 357 0 discriminator 1
	call8	esp_log_timestamp
.LVL80:
	l32r	a11, .LC54
	mov.n	a15, a4
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC59
	movi.n	a10, 1
	call8	esp_log_write
.LVL81:
	.loc 1 358 0 discriminator 1
	call8	iap_abort
.LVL82:
	.loc 1 359 0 discriminator 1
	movi.n	a2, 1
	retw.n
.LVL83:
.L34:
.LBE5:
	.loc 1 368 0
	movi.n	a3, 0
.LVL84:
	l32r	a2, .LC53
.LVL85:
	s32i.n	a3, a2, 0
	.loc 1 370 0
	l32r	a2, .LC57
	l32i.n	a2, a2, 0
	blti	a2, 1, .L35
.LBB6:
	.loc 1 371 0
	call8	iap_commit
.LVL86:
	mov.n	a2, a10
.LVL87:
	.loc 1 372 0
	beq	a10, a3, .L36
	.loc 1 373 0 discriminator 1
	call8	esp_log_timestamp
.LVL88:
	l32r	a11, .LC54
	mov.n	a15, a2
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC61
	movi.n	a10, 1
	call8	esp_log_write
.LVL89:
.L36:
	.loc 1 376 0
	movi.n	a3, 1
	l32r	a2, .LC62
.LVL90:
	s32i.n	a3, a2, 0
	.loc 1 378 0
	l32r	a2, .LC63
	l32i.n	a2, a2, 0
	l32i	a2, a2, 536
	beqz.n	a2, .L38
	.loc 1 379 0 discriminator 1
	call8	esp_log_timestamp
.LVL91:
	l32r	a11, .LC54
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC65
	movi.n	a10, 3
	call8	esp_log_write
.LVL92:
	.loc 1 380 0 discriminator 1
	movi	a10, 0xc8
	call8	vTaskDelay
.LVL93:
	.loc 1 381 0 discriminator 1
	call8	esp_restart
.LVL94:
.L35:
.LBE6:
	.loc 1 385 0 discriminator 1
	call8	esp_log_timestamp
.LVL95:
	l32r	a11, .LC54
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC67
	movi.n	a10, 1
	call8	esp_log_write
.LVL96:
	.loc 1 386 0 discriminator 1
	call8	iap_abort
.LVL97:
	.loc 1 389 0 discriminator 1
	movi.n	a2, 1
	retw.n
.LVL98:
.L37:
.LBB7:
	.loc 1 361 0
	movi.n	a2, 0
	retw.n
.LVL99:
.L38:
.LBE7:
	.loc 1 389 0
	movi.n	a2, 1
	.loc 1 390 0
	retw.n
.LFE21:
	.size	iap_https_firmware_body_callback, .-iap_https_firmware_body_callback
	.section	.text.iap_https_init,"ax",@progbits
	.literal_position
	.literal .LC68, fwupdater_config
	.literal .LC69, tls_context
	.literal .LC70, http_metadata_request
	.literal .LC71, iap_https_error_callback
	.literal .LC72, iap_https_metadata_headers_callback
	.literal .LC73, iap_https_metadata_body_callback
	.literal .LC74, http_firmware_data_request
	.literal .LC75, 4096
	.literal .LC76, iap_https_firmware_headers_callback
	.literal .LC77, iap_https_firmware_body_callback
	.literal .LC78, event_group
	.align	4
	.global	iap_https_init
	.type	iap_https_init, @function
iap_https_init:
.LFB9:
	.loc 1 67 0
.LVL100:
	entry	sp, 48
.LCFI9:
	mov.n	a4, a2
	.loc 1 70 0
	call8	iap_init
.LVL101:
	.loc 1 72 0
	l32r	a2, .LC68
.LVL102:
	s32i.n	a4, a2, 0
	.loc 1 77 0
	l32i.n	a2, a4, 4
	.loc 1 76 0
	s32i.n	a2, sp, 0
	.loc 1 78 0
	l32i.n	a2, a4, 8
	.loc 1 76 0
	s32i.n	a2, sp, 4
	.loc 1 79 0
	l32i.n	a2, a4, 12
	.loc 1 76 0
	s32i.n	a2, sp, 8
	.loc 1 80 0
	l32i.n	a2, a4, 16
	.loc 1 76 0
	s32i.n	a2, sp, 12
	.loc 1 82 0
	mov.n	a10, sp
	call8	wifi_tls_create_context
.LVL103:
	l32r	a2, .LC69
	s32i.n	a10, a2, 0
	.loc 1 87 0
	l32r	a3, .LC70
	movi.n	a2, 0
	s32i.n	a2, a3, 0
	.loc 1 88 0
	l32i.n	a5, a4, 4
	s32i.n	a5, a3, 4
	.loc 1 89 0
	addi	a5, a4, 20
	s32i.n	a5, a3, 8
	.loc 1 90 0
	s32i.n	a2, a3, 28
	.loc 1 91 0
	movi	a10, 0x200
	s32i.n	a10, a3, 16
	.loc 1 92 0
	call8	malloc
.LVL104:
	s32i.n	a10, a3, 12
	.loc 1 93 0
	l32r	a5, .LC71
	s32i.n	a5, a3, 20
	.loc 1 94 0
	l32r	a8, .LC72
	s32i.n	a8, a3, 24
	.loc 1 95 0
	l32r	a8, .LC73
	s32i.n	a8, a3, 32
	.loc 1 97 0
	l32r	a3, .LC74
	s32i.n	a2, a3, 0
	.loc 1 98 0
	l32i.n	a8, a4, 4
	s32i.n	a8, a3, 4
	.loc 1 99 0
	movi	a8, 0x114
	add.n	a4, a4, a8
.LVL105:
	s32i.n	a4, a3, 8
	.loc 1 100 0
	movi.n	a4, 1
.LVL106:
	s32i.n	a4, a3, 28
	.loc 1 101 0
	l32r	a10, .LC75
	s32i.n	a10, a3, 16
	.loc 1 102 0
	call8	malloc
.LVL107:
	s32i.n	a10, a3, 12
	.loc 1 103 0
	s32i.n	a5, a3, 20
	.loc 1 104 0
	l32r	a4, .LC76
	s32i.n	a4, a3, 24
	.loc 1 105 0
	l32r	a4, .LC77
	s32i.n	a4, a3, 32
	.loc 1 109 0
	call8	xEventGroupCreate
.LVL108:
	l32r	a3, .LC78
	s32i.n	a10, a3, 0
	.loc 1 111 0
	call8	iap_https_prepare_timer
.LVL109:
	.loc 1 116 0
	retw.n
.LFE9:
	.size	iap_https_init, .-iap_https_init
	.section	.text.iap_https_check_now,"ax",@progbits
	.align	4
	.global	iap_https_check_now
	.type	iap_https_check_now, @function
iap_https_check_now:
.LFB10:
	.loc 1 119 0
	entry	sp, 32
.LCFI10:
	.loc 1 121 0
	call8	iap_https_trigger_processing
.LVL110:
	.loc 1 123 0
	movi.n	a2, 0
	retw.n
.LFE10:
	.size	iap_https_check_now, .-iap_https_check_now
	.section	.text.iap_https_update_in_progress,"ax",@progbits
	.literal_position
	.literal .LC79, has_iap_session
	.align	4
	.global	iap_https_update_in_progress
	.type	iap_https_update_in_progress, @function
iap_https_update_in_progress:
.LFB11:
	.loc 1 126 0
	entry	sp, 32
.LCFI11:
	.loc 1 128 0
	l32r	a8, .LC79
	l32i.n	a2, a8, 0
	retw.n
.LFE11:
	.size	iap_https_update_in_progress, .-iap_https_update_in_progress
	.section	.text.iap_https_new_firmware_installed,"ax",@progbits
	.literal_position
	.literal .LC80, has_new_firmware
	.align	4
	.global	iap_https_new_firmware_installed
	.type	iap_https_new_firmware_installed, @function
iap_https_new_firmware_installed:
.LFB12:
	.loc 1 131 0
	entry	sp, 32
.LCFI12:
	.loc 1 133 0
	l32r	a8, .LC80
	l32i.n	a2, a8, 0
	retw.n
.LFE12:
	.size	iap_https_new_firmware_installed, .-iap_https_new_firmware_installed
	.section	.text.iap_https_has_update,"ax",@progbits
	.literal_position
	.literal .LC81, new_update
	.align	4
	.global	iap_https_has_update
	.type	iap_https_has_update, @function
iap_https_has_update:
.LFB13:
	.loc 1 135 0
	entry	sp, 32
.LCFI13:
	.loc 1 137 0
	l32r	a8, .LC81
	l32i.n	a2, a8, 0
	retw.n
.LFE13:
	.size	iap_https_has_update, .-iap_https_has_update
	.section	.rodata.str1.4
	.align	4
.LC84:
	.string	"\033[0;31mE (%d) %s: iap_https_download_image: failed to initiate SSL/TLS connection; wifi_tls_connect returned %d\033[0m\n"
	.align	4
.LC88:
	.string	"\033[0;32mI (%d) %s: Requesting firmware image '%s' from web server.\033[0m\n"
	.align	4
.LC91:
	.string	"\033[0;31mE (%d) %s: iap_https_download_image: failed to send HTTPS firmware image request; https_send_request returned %d\033[0m\n"
	.section	.text.iap_https_download_image,"ax",@progbits
	.literal_position
	.literal .LC82, tls_context
	.literal .LC83, .LC0
	.literal .LC85, .LC84
	.literal .LC86, has_iap_session
	.literal .LC87, fwupdater_config
	.literal .LC89, .LC88
	.literal .LC90, http_firmware_data_request
	.literal .LC92, .LC91
	.align	4
	.global	iap_https_download_image
	.type	iap_https_download_image, @function
iap_https_download_image:
.LFB19:
	.loc 1 263 0
	entry	sp, 32
.LCFI14:
	.loc 1 264 0
	l32r	a2, .LC82
	l32i.n	a10, a2, 0
	call8	wifi_tls_connect
.LVL111:
	mov.n	a2, a10
.LVL112:
	.loc 1 265 0
	beqz.n	a10, .L45
	.loc 1 266 0 discriminator 1
	call8	esp_log_timestamp
.LVL113:
	l32r	a11, .LC83
	mov.n	a15, a2
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC85
	movi.n	a10, 1
	call8	esp_log_write
.LVL114:
.L45:
	.loc 1 270 0
	movi.n	a8, 0
	l32r	a2, .LC86
.LVL115:
	s32i.n	a8, a2, 0
	.loc 1 272 0
	call8	esp_log_timestamp
.LVL116:
	l32r	a2, .LC87
	l32i.n	a15, a2, 0
	l32r	a11, .LC83
	movi	a2, 0x114
	add.n	a15, a15, a2
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC89
	movi.n	a10, 3
	call8	esp_log_write
.LVL117:
	.loc 1 273 0
	l32r	a11, .LC90
	l32r	a2, .LC82
	l32i.n	a10, a2, 0
	call8	https_send_request
.LVL118:
	mov.n	a2, a10
.LVL119:
	.loc 1 274 0
	beqz.n	a10, .L44
	.loc 1 275 0 discriminator 1
	call8	esp_log_timestamp
.LVL120:
	l32r	a11, .LC83
	mov.n	a15, a2
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC92
	movi.n	a10, 1
	call8	esp_log_write
.LVL121:
.L44:
	retw.n
.LFE19:
	.size	iap_https_download_image, .-iap_https_download_image
	.section	.bss.total_nof_bytes_received,"aw",@nobits
	.align	4
	.type	total_nof_bytes_received, @object
	.size	total_nof_bytes_received, 4
total_nof_bytes_received:
	.zero	4
	.section	.bss.new_update,"aw",@nobits
	.align	4
	.type	new_update, @object
	.size	new_update, 4
new_update:
	.zero	4
	.section	.bss.has_new_firmware,"aw",@nobits
	.align	4
	.type	has_new_firmware, @object
	.size	has_new_firmware, 4
has_new_firmware:
	.zero	4
	.section	.bss.has_iap_session,"aw",@nobits
	.align	4
	.type	has_iap_session, @object
	.size	has_iap_session, 4
has_iap_session:
	.zero	4
	.section	.bss.check_for_updates_timer,"aw",@nobits
	.align	4
	.type	check_for_updates_timer, @object
	.size	check_for_updates_timer, 4
check_for_updates_timer:
	.zero	4
	.section	.bss.event_group,"aw",@nobits
	.align	4
	.type	event_group, @object
	.size	event_group, 4
event_group:
	.zero	4
	.section	.bss.http_firmware_data_request,"aw",@nobits
	.align	4
	.type	http_firmware_data_request, @object
	.size	http_firmware_data_request, 36
http_firmware_data_request:
	.zero	36
	.section	.bss.http_metadata_request,"aw",@nobits
	.align	4
	.type	http_metadata_request, @object
	.size	http_metadata_request, 36
http_metadata_request:
	.zero	36
	.section	.bss.fwupdater_config,"aw",@nobits
	.align	4
	.type	fwupdater_config, @object
	.size	fwupdater_config, 4
fwupdater_config:
	.zero	4
	.section	.bss.tls_context,"aw",@nobits
	.align	4
	.type	tls_context, @object
	.size	tls_context, 4
tls_context:
	.zero	4
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
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI1-.LFB23
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI2-.LFB24
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI3-.LFB17
	.byte	0xe
	.uleb128 0x20
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
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI5-.LFB18
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
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI7-.LFB20
	.byte	0xe
	.uleb128 0x130
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI8-.LFB21
	.byte	0xe
	.uleb128 0x20
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
	.uleb128 0x20
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
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI14-.LFB19
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE28:
	.text
.Letext0:
	.file 2 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 3 "C:/esp/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "C:/esp/esp-idf/components/newlib/include/stdint.h"
	.file 5 "C:/esp/esp-idf/components/freertos/include/freertos/portmacro.h"
	.file 6 "C:/esp/esp-idf/components/log/include/esp_log.h"
	.file 7 "C:/esp/esp-idf/components/freertos/include/freertos/timers.h"
	.file 8 "C:/esp/esp-idf/components/freertos/include/freertos/event_groups.h"
	.file 9 "C:/esp/ArkPOS2-esp/main/wifi_tls.h"
	.file 10 "C:/esp/ArkPOS2-esp/main/https_client.h"
	.file 11 "C:/esp/ArkPOS2-esp/main/iap.h"
	.file 12 "C:/esp/ArkPOS2-esp/main/iap_https.h"
	.file 13 "C:/esp/esp-idf/components/freertos/include/freertos/task.h"
	.file 14 "C:/esp/esp-idf/components/newlib/include/string.h"
	.file 15 "C:/esp/esp-idf/components/esp32/include/esp_system.h"
	.file 16 "C:/esp/esp-idf/components/newlib/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1015
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF129
	.byte	0xc
	.4byte	.LASF130
	.4byte	.LASF131
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF3
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
	.uleb128 0x3
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
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x3
	.byte	0x19
	.4byte	0x25
	.uleb128 0x3
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
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa6
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb3
	.uleb128 0x7
	.4byte	0xa6
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0x15
	.4byte	0x4c
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x4
	.byte	0x2c
	.4byte	0x65
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x4
	.byte	0x2d
	.4byte	0x70
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF18
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x5
	.byte	0x6c
	.4byte	0x25
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x5
	.byte	0x73
	.4byte	0xce
	.uleb128 0x8
	.byte	0x4
	.4byte	0x37
	.byte	0x6
	.byte	0x1f
	.4byte	0x127
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x6
	.byte	0x26
	.4byte	0xf6
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x7
	.byte	0x76
	.4byte	0x97
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0x8
	.byte	0x7a
	.4byte	0x97
	.uleb128 0xa
	.4byte	.LASF45
	.byte	0x10
	.byte	0x9
	.byte	0x21
	.4byte	0x185
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x9
	.byte	0x24
	.4byte	0xad
	.byte	0
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x9
	.byte	0x27
	.4byte	0xad
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x9
	.byte	0x2b
	.4byte	0xad
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0x9
	.byte	0x2f
	.4byte	0xad
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.4byte	.LASF34
	.byte	0x9
	.byte	0x31
	.4byte	0x148
	.uleb128 0x6
	.byte	0x4
	.4byte	0x196
	.uleb128 0xc
	.4byte	.LASF132
	.uleb128 0x3
	.4byte	.LASF35
	.byte	0xa
	.byte	0x23
	.4byte	0xc3
	.uleb128 0x8
	.byte	0x4
	.4byte	0x37
	.byte	0xa
	.byte	0x31
	.4byte	0x1b9
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF37
	.byte	0xa
	.byte	0x34
	.4byte	0x1a6
	.uleb128 0x8
	.byte	0x4
	.4byte	0x37
	.byte	0xa
	.byte	0x3c
	.4byte	0x1dd
	.uleb128 0x9
	.4byte	.LASF38
	.byte	0
	.uleb128 0x9
	.4byte	.LASF39
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF40
	.byte	0xa
	.byte	0x3f
	.4byte	0x1c4
	.uleb128 0x8
	.byte	0x4
	.4byte	0x37
	.byte	0xa
	.byte	0x47
	.4byte	0x201
	.uleb128 0x9
	.4byte	.LASF41
	.byte	0
	.uleb128 0x9
	.4byte	.LASF42
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF43
	.byte	0xa
	.byte	0x4a
	.4byte	0x1e8
	.uleb128 0x3
	.4byte	.LASF44
	.byte	0xa
	.byte	0x4f
	.4byte	0x217
	.uleb128 0x6
	.byte	0x4
	.4byte	0x21d
	.uleb128 0xd
	.4byte	0x201
	.4byte	0x236
	.uleb128 0xe
	.4byte	0x236
	.uleb128 0xe
	.4byte	0x25
	.uleb128 0xe
	.4byte	0x25
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x23c
	.uleb128 0xa
	.4byte	.LASF46
	.byte	0x24
	.byte	0xa
	.byte	0x53
	.4byte	0x2b5
	.uleb128 0xb
	.4byte	.LASF47
	.byte	0xa
	.byte	0x56
	.4byte	0x1b9
	.byte	0
	.uleb128 0xb
	.4byte	.LASF48
	.byte	0xa
	.byte	0x59
	.4byte	0xad
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0xa
	.byte	0x5c
	.4byte	0xad
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF50
	.byte	0xa
	.byte	0x5f
	.4byte	0xa0
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF51
	.byte	0xa
	.byte	0x63
	.4byte	0x2c
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF52
	.byte	0xa
	.byte	0x66
	.4byte	0x2da
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF53
	.byte	0xa
	.byte	0x6a
	.4byte	0x20c
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF54
	.byte	0xa
	.byte	0x70
	.4byte	0x1dd
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF55
	.byte	0xa
	.byte	0x76
	.4byte	0x2b5
	.byte	0x20
	.byte	0
	.uleb128 0x3
	.4byte	.LASF56
	.byte	0xa
	.byte	0x50
	.4byte	0x2c0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2c6
	.uleb128 0xd
	.4byte	0x201
	.4byte	0x2da
	.uleb128 0xe
	.4byte	0x236
	.uleb128 0xe
	.4byte	0x2c
	.byte	0
	.uleb128 0x3
	.4byte	.LASF57
	.byte	0xa
	.byte	0x51
	.4byte	0x2e5
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2eb
	.uleb128 0xf
	.4byte	0x300
	.uleb128 0xe
	.4byte	0x236
	.uleb128 0xe
	.4byte	0x19b
	.uleb128 0xe
	.4byte	0x25
	.byte	0
	.uleb128 0x3
	.4byte	.LASF58
	.byte	0xa
	.byte	0x78
	.4byte	0x23c
	.uleb128 0x3
	.4byte	.LASF59
	.byte	0xb
	.byte	0x1f
	.4byte	0xc3
	.uleb128 0x10
	.4byte	.LASF60
	.2byte	0x21c
	.byte	0xc
	.byte	0x1d
	.4byte	0x393
	.uleb128 0xb
	.4byte	.LASF61
	.byte	0xc
	.byte	0x20
	.4byte	0x25
	.byte	0
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0xc
	.byte	0x23
	.4byte	0xad
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0xc
	.byte	0x26
	.4byte	0xad
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0xc
	.byte	0x2a
	.4byte	0xad
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0xc
	.byte	0x2e
	.4byte	0xad
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF62
	.byte	0xc
	.byte	0x32
	.4byte	0x393
	.byte	0x14
	.uleb128 0x11
	.4byte	.LASF63
	.byte	0xc
	.byte	0x35
	.4byte	0x393
	.2byte	0x114
	.uleb128 0x11
	.4byte	.LASF64
	.byte	0xc
	.byte	0x3d
	.4byte	0xce
	.2byte	0x214
	.uleb128 0x11
	.4byte	.LASF65
	.byte	0xc
	.byte	0x42
	.4byte	0x25
	.2byte	0x218
	.byte	0
	.uleb128 0x12
	.4byte	0xa6
	.4byte	0x3a3
	.uleb128 0x13
	.4byte	0x90
	.byte	0xff
	.byte	0
	.uleb128 0x3
	.4byte	.LASF66
	.byte	0xc
	.byte	0x44
	.4byte	0x316
	.uleb128 0x14
	.4byte	.LASF70
	.byte	0x1
	.2byte	0x188
	.4byte	0x201
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3f5
	.uleb128 0x15
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x188
	.4byte	0x236
	.4byte	.LLST0
	.uleb128 0x16
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x188
	.4byte	0x25
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x16
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x188
	.4byte	0x25
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.uleb128 0x14
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x18e
	.4byte	0x201
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x43c
	.uleb128 0x15
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x18e
	.4byte	0x236
	.4byte	.LLST1
	.uleb128 0x16
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x18e
	.4byte	0x25
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x16
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x18e
	.4byte	0x25
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.uleb128 0x17
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x194
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5a1
	.uleb128 0x16
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x194
	.4byte	0x236
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x15
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x194
	.4byte	0x19b
	.4byte	.LLST2
	.uleb128 0x16
	.4byte	.LASF73
	.byte	0x1
	.2byte	0x194
	.4byte	0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x18
	.4byte	.LVL5
	.4byte	0xf2c
	.uleb128 0x19
	.4byte	.LVL6
	.4byte	0xf37
	.4byte	0x4c2
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL8
	.4byte	0xf2c
	.uleb128 0x19
	.4byte	.LVL9
	.4byte	0xf37
	.4byte	0x4f9
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL10
	.4byte	0xf2c
	.uleb128 0x19
	.4byte	.LVL11
	.4byte	0xf37
	.4byte	0x530
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL12
	.4byte	0xf2c
	.uleb128 0x19
	.4byte	.LVL13
	.4byte	0xf37
	.4byte	0x567
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL14
	.4byte	0xf2c
	.uleb128 0x1b
	.4byte	.LVL15
	.4byte	0xf37
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF78
	.byte	0x1
	.byte	0xce
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x704
	.uleb128 0x1d
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0x6e3
	.uleb128 0x1e
	.4byte	.LASF74
	.byte	0x1
	.byte	0xdf
	.4byte	0xce
	.4byte	.LLST3
	.uleb128 0x1e
	.4byte	.LASF75
	.byte	0x1
	.byte	0xe1
	.4byte	0xeb
	.4byte	.LLST4
	.uleb128 0x1d
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.4byte	0x662
	.uleb128 0x1e
	.4byte	.LASF76
	.byte	0x1
	.byte	0xd5
	.4byte	0xe0
	.4byte	.LLST5
	.uleb128 0x19
	.4byte	.LVL17
	.4byte	0xf42
	.4byte	0x62e
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x3e8
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	iap_https_periodic_check_timer_callback
	.byte	0
	.uleb128 0x18
	.4byte	.LVL18
	.4byte	0xf2c
	.uleb128 0x1b
	.4byte	.LVL19
	.4byte	0xf37
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC18
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL25
	.4byte	0xf4e
	.4byte	0x681
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1f4
	.byte	0
	.uleb128 0x18
	.4byte	.LVL26
	.4byte	0xf5a
	.uleb128 0x19
	.4byte	.LVL27
	.4byte	0xf4e
	.4byte	0x6af
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1f4
	.byte	0
	.uleb128 0x18
	.4byte	.LVL28
	.4byte	0xf2c
	.uleb128 0x1b
	.4byte	.LVL29
	.4byte	0xf37
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC21
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL30
	.4byte	0xf4e
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x35
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1f4
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF133
	.byte	0x1
	.byte	0x8b
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x736
	.uleb128 0x20
	.4byte	.LASF77
	.byte	0x1
	.byte	0x8b
	.4byte	0x132
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1b
	.4byte	.LVL32
	.4byte	0xf66
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF79
	.byte	0x1
	.byte	0xf5
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x836
	.uleb128 0x1e
	.4byte	.LASF80
	.byte	0x1
	.byte	0xf9
	.4byte	0x25
	.4byte	.LLST6
	.uleb128 0x21
	.4byte	.LASF81
	.byte	0x1
	.2byte	0x100
	.4byte	0x19b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x18
	.4byte	.LVL33
	.4byte	0xf72
	.uleb128 0x18
	.4byte	.LVL35
	.4byte	0xf2c
	.uleb128 0x19
	.4byte	.LVL36
	.4byte	0xf37
	.4byte	0x7ae
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC26
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL37
	.4byte	0xf2c
	.uleb128 0x19
	.4byte	.LVL38
	.4byte	0xf37
	.4byte	0x7e5
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC28
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL40
	.4byte	0xf7d
	.4byte	0x7fc
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	http_metadata_request
	.byte	0
	.uleb128 0x18
	.4byte	.LVL42
	.4byte	0xf2c
	.uleb128 0x1b
	.4byte	.LVL43
	.4byte	0xf37
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC31
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF82
	.byte	0x1
	.byte	0x90
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x855
	.uleb128 0x18
	.4byte	.LVL44
	.4byte	0x736
	.byte	0
	.uleb128 0x14
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x117
	.4byte	0x201
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa6b
	.uleb128 0x15
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x117
	.4byte	0x236
	.4byte	.LLST7
	.uleb128 0x16
	.4byte	.LASF84
	.byte	0x1
	.2byte	0x117
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x21
	.4byte	.LASF85
	.byte	0x1
	.2byte	0x11e
	.4byte	0x25
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x21
	.4byte	.LASF86
	.byte	0x1
	.2byte	0x128
	.4byte	0x25
	.uleb128 0x3
	.byte	0x91
	.sleb128 -300
	.uleb128 0x21
	.4byte	.LASF87
	.byte	0x1
	.2byte	0x130
	.4byte	0x393
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x19
	.4byte	.LVL46
	.4byte	0xf88
	.4byte	0x8db
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC33
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.byte	0
	.uleb128 0x19
	.4byte	.LVL47
	.4byte	0xf88
	.4byte	0x8f9
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC36
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -300
	.byte	0
	.uleb128 0x18
	.4byte	.LVL48
	.4byte	0xf2c
	.uleb128 0x19
	.4byte	.LVL49
	.4byte	0xf37
	.4byte	0x930
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC39
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL50
	.4byte	0xf93
	.4byte	0x955
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC41
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0xa
	.2byte	0x100
	.byte	0
	.uleb128 0x18
	.4byte	.LVL51
	.4byte	0xf2c
	.uleb128 0x19
	.4byte	.LVL52
	.4byte	0xf37
	.4byte	0x98c
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC43
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL53
	.4byte	0xf2c
	.uleb128 0x19
	.4byte	.LVL54
	.4byte	0xf37
	.4byte	0x9ca
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC45
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.byte	0
	.uleb128 0x19
	.4byte	.LVL56
	.4byte	0xf9e
	.4byte	0x9ed
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x72
	.sleb128 276
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x100
	.byte	0
	.uleb128 0x18
	.4byte	.LVL58
	.4byte	0xf2c
	.uleb128 0x19
	.4byte	.LVL59
	.4byte	0xf37
	.4byte	0xa24
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC47
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL61
	.4byte	0xf2c
	.uleb128 0x19
	.4byte	.LVL62
	.4byte	0xf37
	.4byte	0xa5b
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC49
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL63
	.4byte	0xf66
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	.LASF88
	.byte	0x1
	.2byte	0x14c
	.4byte	0x201
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc88
	.uleb128 0x15
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x14c
	.4byte	0x236
	.4byte	.LLST8
	.uleb128 0x15
	.4byte	.LASF84
	.byte	0x1
	.2byte	0x14c
	.4byte	0x2c
	.4byte	.LLST9
	.uleb128 0x1d
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.4byte	0xb17
	.uleb128 0x22
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x153
	.4byte	0x30b
	.4byte	.LLST10
	.uleb128 0x18
	.4byte	.LVL65
	.4byte	0xfa9
	.uleb128 0x18
	.4byte	.LVL67
	.4byte	0xfb4
	.uleb128 0x18
	.4byte	.LVL68
	.4byte	0xfa9
	.uleb128 0x18
	.4byte	.LVL70
	.4byte	0xf2c
	.uleb128 0x1b
	.4byte	.LVL71
	.4byte	0xf37
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC55
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.Ldebug_ranges0+0
	.4byte	0xb8f
	.uleb128 0x22
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x162
	.4byte	0x30b
	.4byte	.LLST11
	.uleb128 0x19
	.4byte	.LVL76
	.4byte	0xfbf
	.4byte	0xb48
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x6
	.byte	0x73
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0
	.uleb128 0x18
	.4byte	.LVL80
	.4byte	0xf2c
	.uleb128 0x19
	.4byte	.LVL81
	.4byte	0xf37
	.4byte	0xb85
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC58
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL82
	.4byte	0xfb4
	.byte	0
	.uleb128 0x1d
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.4byte	0xc47
	.uleb128 0x22
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x173
	.4byte	0x30b
	.4byte	.LLST12
	.uleb128 0x18
	.4byte	.LVL86
	.4byte	0xfca
	.uleb128 0x18
	.4byte	.LVL88
	.4byte	0xf2c
	.uleb128 0x19
	.4byte	.LVL89
	.4byte	0xf37
	.4byte	0xbf2
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC60
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL91
	.4byte	0xf2c
	.uleb128 0x19
	.4byte	.LVL92
	.4byte	0xf37
	.4byte	0xc29
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC64
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL93
	.4byte	0xfd5
	.4byte	0xc3d
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0xc8
	.byte	0
	.uleb128 0x18
	.4byte	.LVL94
	.4byte	0xfe1
	.byte	0
	.uleb128 0x18
	.4byte	.LVL95
	.4byte	0xf2c
	.uleb128 0x19
	.4byte	.LVL96
	.4byte	0xf37
	.4byte	0xc7e
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC66
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL97
	.4byte	0xfb4
	.byte	0
	.uleb128 0x24
	.4byte	.LASF90
	.byte	0x1
	.byte	0x42
	.4byte	0x25
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd18
	.uleb128 0x25
	.4byte	.LASF91
	.byte	0x1
	.byte	0x42
	.4byte	0xd18
	.4byte	.LLST13
	.uleb128 0x26
	.4byte	.LASF92
	.byte	0x1
	.byte	0x4c
	.4byte	0x185
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x18
	.4byte	.LVL101
	.4byte	0xfec
	.uleb128 0x19
	.4byte	.LVL103
	.4byte	0xff7
	.4byte	0xcdb
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x19
	.4byte	.LVL104
	.4byte	0x1002
	.4byte	0xcf0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0x200
	.byte	0
	.uleb128 0x19
	.4byte	.LVL107
	.4byte	0x1002
	.4byte	0xd05
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1000
	.byte	0
	.uleb128 0x18
	.4byte	.LVL108
	.4byte	0x100d
	.uleb128 0x18
	.4byte	.LVL109
	.4byte	0x5a1
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3a3
	.uleb128 0x27
	.4byte	.LASF94
	.byte	0x1
	.byte	0x76
	.4byte	0x25
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd41
	.uleb128 0x18
	.4byte	.LVL110
	.4byte	0x836
	.byte	0
	.uleb128 0x28
	.4byte	.LASF95
	.byte	0x1
	.byte	0x7d
	.4byte	0x25
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x28
	.4byte	.LASF96
	.byte	0x1
	.byte	0x82
	.4byte	0x25
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x28
	.4byte	.LASF97
	.byte	0x1
	.byte	0x87
	.4byte	0x25
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x29
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x106
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe82
	.uleb128 0x22
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x108
	.4byte	0x25
	.4byte	.LLST14
	.uleb128 0x21
	.4byte	.LASF81
	.byte	0x1
	.2byte	0x111
	.4byte	0x19b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x18
	.4byte	.LVL111
	.4byte	0xf72
	.uleb128 0x18
	.4byte	.LVL113
	.4byte	0xf2c
	.uleb128 0x19
	.4byte	.LVL114
	.4byte	0xf37
	.4byte	0xdfa
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC84
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL116
	.4byte	0xf2c
	.uleb128 0x19
	.4byte	.LVL117
	.4byte	0xf37
	.4byte	0xe31
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC88
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL118
	.4byte	0xf7d
	.4byte	0xe48
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	http_firmware_data_request
	.byte	0
	.uleb128 0x18
	.4byte	.LVL120
	.4byte	0xf2c
	.uleb128 0x1b
	.4byte	.LVL121
	.4byte	0xf37
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC91
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LASF98
	.byte	0x1
	.byte	0x1d
	.4byte	0x190
	.uleb128 0x5
	.byte	0x3
	.4byte	tls_context
	.uleb128 0x26
	.4byte	.LASF99
	.byte	0x1
	.byte	0x20
	.4byte	0xd18
	.uleb128 0x5
	.byte	0x3
	.4byte	fwupdater_config
	.uleb128 0x26
	.4byte	.LASF100
	.byte	0x1
	.byte	0x23
	.4byte	0x300
	.uleb128 0x5
	.byte	0x3
	.4byte	http_metadata_request
	.uleb128 0x26
	.4byte	.LASF101
	.byte	0x1
	.byte	0x26
	.4byte	0x300
	.uleb128 0x5
	.byte	0x3
	.4byte	http_firmware_data_request
	.uleb128 0x26
	.4byte	.LASF102
	.byte	0x1
	.byte	0x2b
	.4byte	0x13d
	.uleb128 0x5
	.byte	0x3
	.4byte	event_group
	.uleb128 0x26
	.4byte	.LASF103
	.byte	0x1
	.byte	0x2e
	.4byte	0x132
	.uleb128 0x5
	.byte	0x3
	.4byte	check_for_updates_timer
	.uleb128 0x26
	.4byte	.LASF104
	.byte	0x1
	.byte	0x30
	.4byte	0x25
	.uleb128 0x5
	.byte	0x3
	.4byte	has_iap_session
	.uleb128 0x26
	.4byte	.LASF105
	.byte	0x1
	.byte	0x31
	.4byte	0x25
	.uleb128 0x5
	.byte	0x3
	.4byte	has_new_firmware
	.uleb128 0x26
	.4byte	.LASF106
	.byte	0x1
	.byte	0x32
	.4byte	0x25
	.uleb128 0x5
	.byte	0x3
	.4byte	new_update
	.uleb128 0x26
	.4byte	.LASF107
	.byte	0x1
	.byte	0x33
	.4byte	0x25
	.uleb128 0x5
	.byte	0x3
	.4byte	total_nof_bytes_received
	.uleb128 0x2a
	.4byte	.LASF108
	.4byte	.LASF108
	.byte	0x6
	.byte	0x4c
	.uleb128 0x2a
	.4byte	.LASF109
	.4byte	.LASF109
	.byte	0x6
	.byte	0x60
	.uleb128 0x2b
	.4byte	.LASF110
	.4byte	.LASF110
	.byte	0x7
	.2byte	0x104
	.uleb128 0x2b
	.4byte	.LASF111
	.4byte	.LASF111
	.byte	0x7
	.2byte	0x45d
	.uleb128 0x2b
	.4byte	.LASF112
	.4byte	.LASF112
	.byte	0xd
	.2byte	0x4d1
	.uleb128 0x2b
	.4byte	.LASF113
	.4byte	.LASF113
	.byte	0x8
	.2byte	0x1cc
	.uleb128 0x2a
	.4byte	.LASF114
	.4byte	.LASF114
	.byte	0x9
	.byte	0x5c
	.uleb128 0x2a
	.4byte	.LASF115
	.4byte	.LASF115
	.byte	0xa
	.byte	0x7d
	.uleb128 0x2a
	.4byte	.LASF116
	.4byte	.LASF116
	.byte	0xa
	.byte	0x82
	.uleb128 0x2a
	.4byte	.LASF117
	.4byte	.LASF117
	.byte	0xa
	.byte	0x87
	.uleb128 0x2a
	.4byte	.LASF118
	.4byte	.LASF118
	.byte	0xe
	.byte	0x24
	.uleb128 0x2a
	.4byte	.LASF119
	.4byte	.LASF119
	.byte	0xb
	.byte	0x31
	.uleb128 0x2a
	.4byte	.LASF120
	.4byte	.LASF120
	.byte	0xb
	.byte	0x3c
	.uleb128 0x2a
	.4byte	.LASF121
	.4byte	.LASF121
	.byte	0xb
	.byte	0x36
	.uleb128 0x2a
	.4byte	.LASF122
	.4byte	.LASF122
	.byte	0xb
	.byte	0x39
	.uleb128 0x2b
	.4byte	.LASF123
	.4byte	.LASF123
	.byte	0xd
	.2byte	0x2d1
	.uleb128 0x2a
	.4byte	.LASF124
	.4byte	.LASF124
	.byte	0xf
	.byte	0x45
	.uleb128 0x2a
	.4byte	.LASF125
	.4byte	.LASF125
	.byte	0xb
	.byte	0x2d
	.uleb128 0x2a
	.4byte	.LASF126
	.4byte	.LASF126
	.byte	0x9
	.byte	0x54
	.uleb128 0x2a
	.4byte	.LASF127
	.4byte	.LASF127
	.byte	0x10
	.byte	0x65
	.uleb128 0x2a
	.4byte	.LASF128
	.4byte	.LASF128
	.byte	0x8
	.byte	0xb0
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
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x5
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x1d
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
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
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL1
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL3
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL4
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL7
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL22
	.4byte	.LVL25-1
	.2byte	0x5
	.byte	0x79
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x5
	.byte	0x7c
	.sleb128 0
	.byte	0x36
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL25-1
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL16
	.4byte	.LVL20
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL34
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL45
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL55
	.4byte	.LVL57
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL57
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL60
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL64
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
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL78
	.4byte	.LVL83
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL83
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL85
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL64
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL79
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
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL66
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL74
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL77
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL98
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL87
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL100
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL102
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL105
	.4byte	.LVL106
	.2byte	0x4
	.byte	0x74
	.sleb128 -276
	.byte	0x9f
	.4byte	.LVL106
	.4byte	.LVL107-1
	.2byte	0xb
	.byte	0x3
	.4byte	http_firmware_data_request+8
	.byte	0x6
	.byte	0xa
	.2byte	0x114
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL107-1
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL112
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x8c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
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
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB5
	.4byte	.LBE5
	.4byte	.LBB7
	.4byte	.LBE7
	.4byte	0
	.4byte	0
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB21
	.4byte	.LFE21
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
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF66:
	.string	"iap_https_config_t"
.LASF127:
	.string	"malloc"
.LASF75:
	.string	"timerPeriod"
.LASF45:
	.string	"wifi_tls_init_struct_"
.LASF3:
	.string	"size_t"
.LASF37:
	.string	"http_request_verb_t"
.LASF87:
	.string	"fileName"
.LASF40:
	.string	"http_response_mode_t"
.LASF4:
	.string	"__uint8_t"
.LASF73:
	.string	"additionalInfo"
.LASF118:
	.string	"strncpy"
.LASF49:
	.string	"path"
.LASF100:
	.string	"http_metadata_request"
.LASF35:
	.string	"http_err_t"
.LASF10:
	.string	"long long unsigned int"
.LASF93:
	.string	"iap_https_error_callback"
.LASF109:
	.string	"esp_log_write"
.LASF105:
	.string	"has_new_firmware"
.LASF92:
	.string	"tlsInitStruct"
.LASF25:
	.string	"ESP_LOG_DEBUG"
.LASF9:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF69:
	.string	"contentLength"
.LASF119:
	.string	"iap_begin"
.LASF123:
	.string	"vTaskDelay"
.LASF57:
	.string	"http_request_error_callback_t"
.LASF33:
	.string	"peer_public_key_pem"
.LASF11:
	.string	"long int"
.LASF58:
	.string	"http_request_t"
.LASF125:
	.string	"iap_init"
.LASF56:
	.string	"http_request_body_callback_t"
.LASF29:
	.string	"EventGroupHandle_t"
.LASF111:
	.string	"xTimerGenericCommand"
.LASF19:
	.string	"BaseType_t"
.LASF77:
	.string	"xTimer"
.LASF43:
	.string	"http_continue_receiving_t"
.LASF122:
	.string	"iap_commit"
.LASF106:
	.string	"new_update"
.LASF102:
	.string	"event_group"
.LASF8:
	.string	"__uint32_t"
.LASF71:
	.string	"iap_https_firmware_headers_callback"
.LASF61:
	.string	"current_software_version"
.LASF96:
	.string	"iap_https_new_firmware_installed"
.LASF41:
	.string	"HTTP_CONTINUE_RECEIVING"
.LASF48:
	.string	"host"
.LASF59:
	.string	"iap_err_t"
.LASF99:
	.string	"fwupdater_config"
.LASF0:
	.string	"unsigned int"
.LASF76:
	.string	"autoReload"
.LASF103:
	.string	"check_for_updates_timer"
.LASF13:
	.string	"long unsigned int"
.LASF44:
	.string	"http_request_headers_callback_t"
.LASF28:
	.string	"TimerHandle_t"
.LASF114:
	.string	"wifi_tls_connect"
.LASF54:
	.string	"response_mode"
.LASF36:
	.string	"HTTP_GET"
.LASF88:
	.string	"iap_https_firmware_body_callback"
.LASF84:
	.string	"bytesReceived"
.LASF53:
	.string	"headers_callback"
.LASF134:
	.string	"iap_https_download_image"
.LASF104:
	.string	"has_iap_session"
.LASF101:
	.string	"http_firmware_data_request"
.LASF34:
	.string	"wifi_tls_init_struct_t"
.LASF112:
	.string	"xTaskGetTickCount"
.LASF6:
	.string	"short int"
.LASF60:
	.string	"iap_https_config_"
.LASF51:
	.string	"response_buffer_len"
.LASF52:
	.string	"error_callback"
.LASF83:
	.string	"iap_https_metadata_body_callback"
.LASF42:
	.string	"HTTP_STOP_RECEIVING"
.LASF24:
	.string	"ESP_LOG_INFO"
.LASF86:
	.string	"version"
.LASF12:
	.string	"sizetype"
.LASF97:
	.string	"iap_https_has_update"
.LASF20:
	.string	"TickType_t"
.LASF132:
	.string	"wifi_tls_context_"
.LASF133:
	.string	"iap_https_periodic_check_timer_callback"
.LASF94:
	.string	"iap_https_check_now"
.LASF27:
	.string	"esp_log_level_t"
.LASF95:
	.string	"iap_https_update_in_progress"
.LASF32:
	.string	"server_root_ca_public_key_pem"
.LASF98:
	.string	"tls_context"
.LASF72:
	.string	"error"
.LASF120:
	.string	"iap_abort"
.LASF18:
	.string	"_Bool"
.LASF16:
	.string	"int32_t"
.LASF5:
	.string	"unsigned char"
.LASF113:
	.string	"xEventGroupSetBits"
.LASF129:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF46:
	.string	"http_request_"
.LASF131:
	.string	"C:\\\\esp\\\\ArkPOS2-esp\\\\build\\\\main"
.LASF78:
	.string	"iap_https_prepare_timer"
.LASF30:
	.string	"server_host_name"
.LASF108:
	.string	"esp_log_timestamp"
.LASF22:
	.string	"ESP_LOG_ERROR"
.LASF116:
	.string	"http_parse_key_value_int"
.LASF126:
	.string	"wifi_tls_create_context"
.LASF70:
	.string	"iap_https_metadata_headers_callback"
.LASF64:
	.string	"polling_interval_s"
.LASF38:
	.string	"HTTP_WAIT_FOR_COMPLETE_BODY"
.LASF90:
	.string	"iap_https_init"
.LASF47:
	.string	"verb"
.LASF31:
	.string	"server_port"
.LASF17:
	.string	"uint32_t"
.LASF80:
	.string	"tlsResult"
.LASF14:
	.string	"char"
.LASF26:
	.string	"ESP_LOG_VERBOSE"
.LASF91:
	.string	"config"
.LASF55:
	.string	"body_callback"
.LASF21:
	.string	"ESP_LOG_NONE"
.LASF7:
	.string	"__int32_t"
.LASF107:
	.string	"total_nof_bytes_received"
.LASF1:
	.string	"short unsigned int"
.LASF110:
	.string	"xTimerCreate"
.LASF67:
	.string	"request"
.LASF65:
	.string	"auto_reboot"
.LASF74:
	.string	"timerMillisec"
.LASF82:
	.string	"iap_https_trigger_processing"
.LASF39:
	.string	"HTTP_STREAM_BODY"
.LASF23:
	.string	"ESP_LOG_WARN"
.LASF63:
	.string	"server_firmware_path"
.LASF115:
	.string	"https_send_request"
.LASF50:
	.string	"response_buffer"
.LASF15:
	.string	"uint8_t"
.LASF62:
	.string	"server_metadata_path"
.LASF124:
	.string	"esp_restart"
.LASF81:
	.string	"httpResult"
.LASF85:
	.string	"intervalSeconds"
.LASF68:
	.string	"statusCode"
.LASF128:
	.string	"xEventGroupCreate"
.LASF89:
	.string	"result"
.LASF130:
	.string	"C:/esp/ArkPOS2-esp/main/iap_https.c"
.LASF117:
	.string	"http_parse_key_value_string"
.LASF79:
	.string	"iap_https_check_for_update"
.LASF121:
	.string	"iap_write"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-61-gab8375a) 5.2.0"
