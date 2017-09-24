	.file	"main.c"
	.text
.Ltext0:
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC0:
	.string	"main"
	.align	4
.LC2:
	.string	"\033[0;32mI (%d) %s: app_event_handler: event: %d\033[0m\n"
	.align	4
.LC4:
	.string	"\033[0;33mW (%d) %s: app_event_handler: unhandled event: %d\033[0m\n"
	.section	.text.app_event_handler,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.literal .LC3, .LC2
	.literal .LC5, .LC4
	.align	4
	.type	app_event_handler, @function
app_event_handler:
.LFB18:
	.file 1 "C:/esp/ArkPOS2-esp/main/main.c"
	.loc 1 313 0
.LVL0:
	entry	sp, 48
.LCFI0:
.LVL1:
	.loc 1 315 0
	movi.n	a8, 0
	s32i.n	a8, sp, 0
	.loc 1 317 0
	call8	esp_log_timestamp
.LVL2:
	l32r	a11, .LC1
	l32i.n	a15, a3, 0
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC3
	movi.n	a10, 3
	call8	esp_log_write
.LVL3:
	.loc 1 321 0
	mov.n	a12, sp
	mov.n	a11, a3
	mov.n	a10, a2
	call8	wifi_sta_handle_event
.LVL4:
	.loc 1 322 0
	bnez.n	a10, .L3
	.loc 1 322 0 is_stmt 0 discriminator 1
	l32i.n	a2, sp, 0
.LVL5:
	bnez.n	a2, .L4
	.loc 1 328 0 is_stmt 1 discriminator 1
	call8	esp_log_timestamp
.LVL6:
	l32r	a11, .LC1
	l32i.n	a15, a3, 0
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC5
	movi.n	a10, 2
	call8	esp_log_write
.LVL7:
	.loc 1 329 0 discriminator 1
	retw.n
.LVL8:
.L3:
	.loc 1 323 0
	mov.n	a2, a10
.LVL9:
	retw.n
.L4:
	mov.n	a2, a10
	.loc 1 330 0
	retw.n
.LFE18:
	.size	app_event_handler, .-app_event_handler
	.section	.rodata.str1.4
	.align	4
.LC7:
	.string	"\033[0;32mI (%d) %s: Initialize WIFI network connection.\033[0m\n"
	.align	4
.LC9:
	.string	"ProlecAdmin"
	.align	4
.LC11:
	.string	"\033[0;32mI (%d) %s: SSID: %s, Password: %s\033[0m\n"
	.align	4
.LC13:
	.string	"Car-Naval-015"
	.section	.text.init_wifi,"ax",@progbits
	.literal_position
	.literal .LC6, .LC0
	.literal .LC8, .LC7
	.literal .LC10, .LC9
	.literal .LC12, .LC11
	.literal .LC14, .LC13
	.literal .LC15, wifi_params
	.align	4
	.type	init_wifi, @function
init_wifi:
.LFB16:
	.loc 1 282 0
	entry	sp, 48
.LCFI1:
	.loc 1 283 0
	call8	esp_log_timestamp
.LVL10:
	l32r	a2, .LC6
	mov.n	a14, a2
	mov.n	a13, a10
	l32r	a12, .LC8
	mov.n	a11, a2
	movi.n	a10, 3
	call8	esp_log_write
.LVL11:
	.loc 1 284 0
	call8	esp_log_timestamp
.LVL12:
	l32r	a4, .LC10
	l32r	a3, .LC14
	s32i.n	a3, sp, 0
	mov.n	a15, a4
	mov.n	a14, a2
	mov.n	a13, a10
	l32r	a12, .LC12
	mov.n	a11, a2
	movi.n	a10, 3
	call8	esp_log_write
.LVL13:
	.loc 1 286 0
	l32r	a10, .LC15
	s32i.n	a4, a10, 0
	.loc 1 287 0
	s32i.n	a3, a10, 4
	.loc 1 289 0
	call8	wifi_sta_init
.LVL14:
	retw.n
.LFE16:
	.size	init_wifi, .-init_wifi
	.section	.rodata.str1.4
	.align	4
.LC17:
	.string	"\033[0;32mI (%d) %s: Initialising OTA firmware updating.\033[0m\n"
	.align	4
.LC20:
	.string	"ota-update.arkpos2.tests.saas.chb-technologies.ch"
	.align	4
.LC22:
	.string	"8883"
	.align	4
.LC24:
	.string	"/esp32-ota-https/final_binaries/ota.txt"
	.align	4
.LC28:
	.ascii	"-----BEGIN CERTIFICATE-----\nMIIEDTCCAvWgAwIBAgIJAMdYuHX70E/"
	.ascii	"rMA0GCSqGSIb3DQEBCwUAMIGcMQswCQYD\nVQQGEwJDSDEPMA0GA1UECAwGV"
	.ascii	"mFsYWlzMQ4wDAYDVQQKDAVDSEJTQTE6MDgGA1UE\nAwwxb3RhLXVwZGF0ZS5"
	.ascii	"hcmtwb3MyLnRlc3RzLnNhYXMuY2hiLXRlY2hub2xvZ2ll\ncy5jaDEwMC4GC"
	.ascii	"SqGSIb3DQEJARYhbmljay50c2lsaXZpc0BjaGItdGVjaG5vbG9n\naWVzLmN"
	.ascii	"oMB4XDTE3MDkxNTEyMTgxMloXDTM3MDkxMDEyMTgxMlowgZwxCzAJBgNV\nB"
	.ascii	"AYTAkNIMQ8wDQYDVQQIDAZWYWxhaXMxDjAMBgNVBAoMBUNIQlNBMTowOAYDV"
	.ascii	"QQD\nDDFvdGEtdXBkYXRlLmFya3BvczIudGVzdHMuc2Fhcy5jaGItdGVjaG5"
	.ascii	"vbG9naWVz\nLmNoMTAwLgYJKoZIhvcNAQkBFiFuaWNrLnRzaWxpdmlzQGNoY"
	.ascii	"i10ZWNobm9sb2dp\nZXMuY2gwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggE"
	.ascii	"KAoIBAQDVjnpJQdilX8n4\nrut+tMe0oq+3qSJjRhENVEdd3FpKYnPEEAtla"
	.ascii	"+MjIrx/biS9uzD1KZ4OJAjrbqaf\nSsQJ9ksusYEtEqPrNKy9t9GIbYXh+fQ"
	.ascii	"M0cJs/tDqklXcs8CbSo9JQEHa2HXDEGke\nyOojy1xJ7CzV+HJQp1QGbCRhk"
	.ascii	"JB77xtPV1AubMolk+yzN2jrfEHTj2QeOCFifVjD\n1t7RsA28RzYqtvoj35a"
	.ascii	"KxPkDzCSwf7wx68KFZK/vfv+6YjS8mxGuQhaPvDi7G2Ve\nQLFABvOKQyxaR"
	.ascii	"jMF2WCsZkRrjJac8/gKilDNM44GbRGxIhh+iCIELn6D203kAA/q\nNf7K/hJ"
	.ascii	"bAgMBAAGjUDBOMB0GA1UdDgQWBBRvxMQJatofmLiTMiko8mhvSH43ujAf\nB"
	.ascii	"gNVHSMEGDAWgBRvxMQJatofmLiTMiko8mhvSH43ujAMBgNVHRMEBTADAQH/M"
	.ascii	"A0G\nCSqGSIb3DQEBCwUAA4IBAQBvhNq1BJ0BcfrWe1l5TU/vg1r5CsvyD/E"
	.ascii	"s1sRQ2Ijm\npw/ztaXWTxRn6WGmSzKOwQNpz/GZ99hHgxAUKghm31qx8GeD5"
	.ascii	"v6EYd+mEkgRVS+f\nsd/fNWWuo3"
	.string	"pyHY+OMiiwKtD3XaaBqO3EoLJnPrePatJgSFSDz9/S26Nfj97+Hyy1\n+NmWdxlrqWKMkX0mDsfsO8fjJ8gPDRYmfYSOIENtEf3rRlNCKlurRQg4wQ6rHvR7\nzuIHtvIHR6dEKB5LNfZufPG17LARg4gXFZ/RvUY8P4vw2/iOXDu03jbIbfeYtMO2\n0+4TnKrOZL5rsiMliCTosf09bj9djicGD3ZFl30PqRIh\n-----END CERTIFICATE-----\n"
	.align	4
.LC30:
	.ascii	"-----BEGIN CERTIFICATE-----\nMIIDYTCCAkkCCQDG3Zr5jtYD1jANBgk"
	.ascii	"qhkiG9w0BAQsFADCBnDELMAkGA1UEBhMC\nQ0gxDzANBgNVBAgMBlZhbGFpc"
	.ascii	"zEOMAwGA1UECgwFQ0hCU0ExOjA4BgNVBAMMMW90\nYS11cGRhdGUuYXJrcG9"
	.ascii	"zMi50ZXN0cy5zYWFzLmNoYi10ZWNobm9sb2dpZXMuY2gx\nMDAuBgkqhkiG9"
	.ascii	"w0BCQEWIW5pY2sudHNpbGl2aXNAY2hiLXRlY2hub2xvZ2llcy5j\naDAeFw0"
	.ascii	"xNzA5MTUxNDMxNDFaFw0zNzA5MTAxNDMxNDFaMEgxCzAJBgNVBAYTAkNI\nM"
	.ascii	"Q8wDQYDVQQIDAZWQUxBSVMxDjAMBgNVBAoMBUNIQkFTMRgwFgYDVQQDDA9sb"
	.ascii	"2Nh\nbC5FU1AzMi5jb20wggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoI"
	.ascii	"BAQCvt/VE\nkG1s2OtbBx6/RpKrKoQQwkKsB2NqhSqFbAPeBDUOcjxNPhRNr"
	.ascii	"E+mc92MNvUqHw2X\ntb3OvkHS3KrS3OO8hgWnJRlCBrduzx+iF8m7EaVebbr"
	.ascii	"YG7CMwjsIhmmjKvXn0QXu\nD+mTJ2KfkS9/TSx0acWYJ2W7TyCH5nZICLxML"
	.ascii	"FctIzsWQ2rjtn06m0B/QKAuEs/s\nLO6s1bnnjuL4BzR6rOmmSnHEPfqoFbo"
	.ascii	"+Vwls3WG/zmn2pV5CMrs0ruJ1Fu1IyoiS\niKSUaEXZr66JGJcnLU6HxElRv"
	.ascii	"mJ1OJxD9m8jyxnu7Aydzj548CpoDov25ZlqsE6a\n/8UhvoXy8Hha+VqNAgM"
	.ascii	"BAAEwDQYJKoZIhvcNAQELBQADggEBAOEi8unc8HvEWvdR\nIHjIZaQyYXnNa"
	.ascii	"iuhu8Ao3EXY9ws0HgRW5+ewRxGBPtEjFw5CmLsnrAf2hu0sdSL3\nxblqbYB"
	.ascii	"r/OLob/cSf/xSGtb3K/kmJ8weS3p3eLL"
	.string	"fm8UDeH6rZrquENHXTlJ6jpgf\nM9h7ShpcZ1JujvJ6WJ1rZtiQ/sKsrcwumanbgJegsnGxgdti0FAqnX8ol9pthBS1\n9tbT7DAvCq+69Texk/feUB/dVVGdOIHTqxHrC1l2k6Wu1jrBulx1A5TyTxg4gbdt\nvj0czJYu9KZowhbLaRpDBI66rPFQPiHt9C9T/KJdA8dg1lS2zoZ1+cw3BNmEq288\nQmKOBXc=\n-----END CERTIFICATE-----\n"
	.section	.text.init_ota,"ax",@progbits
	.literal_position
	.literal .LC16, .LC0
	.literal .LC18, .LC17
	.literal .LC19, ota_config
	.literal .LC21, .LC20
	.literal .LC23, .LC22
	.literal .LC25, .LC24
	.literal .LC26, ota_config+20
	.literal .LC27, ota_config+276
	.literal .LC29, .LC28
	.literal .LC31, .LC30
	.align	4
	.type	init_ota, @function
init_ota:
.LFB17:
	.loc 1 293 0
	entry	sp, 32
.LCFI2:
	.loc 1 294 0
	call8	esp_log_timestamp
.LVL15:
	l32r	a11, .LC16
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC18
	movi.n	a10, 3
	call8	esp_log_write
.LVL16:
	.loc 1 296 0
	l32r	a2, .LC19
	movi.n	a3, 1
	s32i.n	a3, a2, 0
	.loc 1 297 0
	l32r	a8, .LC21
	s32i.n	a8, a2, 4
	.loc 1 298 0
	l32r	a8, .LC23
	s32i.n	a8, a2, 8
	.loc 1 299 0
	movi	a12, 0x100
	l32r	a11, .LC25
	l32r	a10, .LC26
	call8	strncpy
.LVL17:
	.loc 1 300 0
	movi	a12, 0x100
	movi.n	a11, 0
	l32r	a10, .LC27
	call8	memset
.LVL18:
	.loc 1 301 0
	l32r	a8, .LC29
	s32i.n	a8, a2, 12
	.loc 1 302 0
	l32r	a8, .LC31
	s32i.n	a8, a2, 16
	.loc 1 303 0
	movi.n	a8, 5
	s32i	a8, a2, 532
	.loc 1 304 0
	s32i	a3, a2, 536
	.loc 1 306 0
	mov.n	a10, a2
	call8	iap_https_init
.LVL19:
	.loc 1 309 0
	call8	iap_https_check_now
.LVL20:
	retw.n
.LFE17:
	.size	init_ota, .-init_ota
	.section	.rodata.str1.4
	.align	4
.LC34:
	.string	"\033[0;31mE (%d) %s: Wifi was not connected. Please reboot the device\n\033[0m\n"
	.align	4
.LC36:
	.string	"\033[0;32mI (%d) %s: We need to update\033[0m\n"
	.align	4
.LC38:
	.string	"\033[0;32mI (%d) %s: Firmaware is up-to-date\033[0m\n"
	.section	.text.check_for_updates,"ax",@progbits
	.literal_position
	.literal .LC32, app_event_handler
	.literal .LC33, .LC0
	.literal .LC35, .LC34
	.literal .LC37, .LC36
	.literal .LC39, .LC38
	.align	4
	.type	check_for_updates, @function
check_for_updates:
.LFB12:
	.loc 1 142 0
	entry	sp, 32
.LCFI3:
	.loc 1 148 0
	movi.n	a11, 0
	l32r	a10, .LC32
	call8	esp_event_loop_init
.LVL21:
	.loc 1 150 0
	call8	init_wifi
.LVL22:
	.loc 1 152 0
	call8	wifi_sta_get_event_group
.LVL23:
	movi.n	a14, -1
	movi.n	a13, 0
	mov.n	a12, a13
	movi.n	a11, 1
	call8	xEventGroupWaitBits
.LVL24:
	.loc 1 154 0
	call8	init_ota
.LVL25:
	.loc 1 156 0
	call8	wifi_sta_is_connected
.LVL26:
	bnez.n	a10, .L8
	.loc 1 158 0 discriminator 1
	call8	esp_log_timestamp
.LVL27:
	l32r	a11, .LC33
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC35
	movi.n	a10, 1
	call8	esp_log_write
.LVL28:
.L8:
	.loc 1 162 0
	call8	iap_https_has_update
.LVL29:
	beqz.n	a10, .L9
	.loc 1 164 0 discriminator 1
	call8	esp_log_timestamp
.LVL30:
	l32r	a11, .LC33
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC37
	movi.n	a10, 3
	call8	esp_log_write
.LVL31:
	.loc 1 165 0 discriminator 1
	call8	iap_https_download_image
.LVL32:
	retw.n
.L9:
	.loc 1 169 0 discriminator 1
	call8	esp_log_timestamp
.LVL33:
	l32r	a11, .LC33
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC39
	movi.n	a10, 3
	call8	esp_log_write
.LVL34:
	retw.n
.LFE12:
	.size	check_for_updates, .-check_for_updates
	.section	.rodata.str1.4
	.align	4
.LC40:
	.string	"Touch pad %d is too low: %d \nCannot use it for wake up\n"
	.align	4
.LC42:
	.string	"Touch pad %d threshold set to: %d\n"
	.section	.text.calibrate_touch_pads,"ax",@progbits
	.literal_position
	.literal .LC41, .LC40
	.literal .LC43, .LC42
	.align	4
	.type	calibrate_touch_pads, @function
calibrate_touch_pads:
.LFB15:
	.loc 1 222 0
	entry	sp, 48
.LCFI4:
.LVL35:
.LBB2:
	.loc 1 224 0
	movi.n	a4, 0
	j	.L12
.LVL36:
.L19:
	.loc 1 226 0
	movi.n	a9, 1
	movi.n	a3, 0
	mov.n	a2, a3
	moveqz	a2, a9, a4
	addi	a8, a4, -3
	moveqz	a3, a9, a8
	or	a2, a3, a2
	bnez.n	a2, .L13
	.loc 1 226 0 is_stmt 0 discriminator 1
	addi	a2, a4, -5
	movi.n	a3, 0
	mov.n	a5, a3
	moveqz	a5, a9, a2
	extui	a2, a5, 0, 8
	addi	a8, a4, -7
	moveqz	a3, a9, a8
	extui	a3, a3, 0, 8
	bnez.n	a2, .L13
	beqz.n	a3, .L14
.L13:
.LBB3:
	.loc 1 228 0 is_stmt 1
	movi.n	a11, 0
	mov.n	a10, a4
	call8	touch_pad_config
.LVL37:
	.loc 1 230 0
	movi.n	a10, 0xa
	call8	vTaskDelay
.LVL38:
.LBB4:
	.loc 1 234 0
	movi.n	a2, 0
.LBE4:
	.loc 1 232 0
	mov.n	a3, a2
.LBB6:
	.loc 1 234 0
	j	.L16
.LVL39:
.L17:
.LBB5:
	.loc 1 237 0 discriminator 3
	mov.n	a11, sp
	mov.n	a10, a4
	call8	touch_pad_read
.LVL40:
	.loc 1 238 0 discriminator 3
	l16ui	a8, sp, 0
	add.n	a3, a3, a8
.LVL41:
.LBE5:
	.loc 1 234 0 discriminator 3
	addi.n	a2, a2, 1
.LVL42:
.L16:
	.loc 1 234 0 is_stmt 0 discriminator 1
	movi	a8, 0x7f
	bgeu	a8, a2, .L17
.LBE6:
	.loc 1 240 0 is_stmt 1
	srli	a12, a3, 7
.LVL43:
	.loc 1 241 0
	movi	a2, 0x12b
.LVL44:
	blt	a2, a12, .L18
	.loc 1 243 0
	mov.n	a11, a4
	l32r	a10, .LC41
	call8	printf
.LVL45:
	.loc 1 245 0
	movi.n	a11, 0
	mov.n	a10, a4
	call8	touch_pad_config
.LVL46:
	j	.L14
.LVL47:
.L18:
.LBB7:
	.loc 1 249 0
	movi	a3, -0x7d0
	add.n	a3, a12, a3
.LVL48:
	.loc 1 250 0
	mov.n	a12, a3
.LVL49:
	mov.n	a11, a4
	l32r	a10, .LC43
	call8	printf
.LVL50:
	.loc 1 251 0
	extui	a11, a3, 0, 16
	mov.n	a10, a4
	call8	touch_pad_config
.LVL51:
.L14:
.LBE7:
.LBE3:
	.loc 1 224 0 discriminator 2
	addi.n	a4, a4, 1
.LVL52:
.L12:
	.loc 1 224 0 is_stmt 0 discriminator 1
	bltui	a4, 8, .L19
.LBE2:
	.loc 1 279 0 is_stmt 1
	retw.n
.LFE15:
	.size	calibrate_touch_pads, .-calibrate_touch_pads
	.section	.rodata.str1.4
	.align	4
.LC45:
	.string	"\033[0;32mI (%d) %s: Initialize LEDs\n\033[0m\n"
	.section	.text.init_led,"ax",@progbits
	.literal_position
	.literal .LC44, .LC0
	.literal .LC46, .LC45
	.align	4
	.type	init_led, @function
init_led:
.LFB14:
	.loc 1 202 0
	entry	sp, 32
.LCFI5:
	.loc 1 203 0
	call8	esp_log_timestamp
.LVL53:
	l32r	a11, .LC44
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC46
	movi.n	a10, 3
	call8	esp_log_write
.LVL54:
	.loc 1 205 0
	movi.n	a10, 0x16
	call8	gpio_pad_select_gpio
.LVL55:
	.loc 1 206 0
	movi.n	a11, 2
	movi.n	a10, 0x16
	call8	gpio_set_direction
.LVL56:
	.loc 1 207 0
	movi.n	a11, 0
	movi.n	a10, 0x16
	call8	gpio_set_level
.LVL57:
	.loc 1 209 0
	movi.n	a10, 0x17
	call8	gpio_pad_select_gpio
.LVL58:
	.loc 1 210 0
	movi.n	a11, 2
	movi.n	a10, 0x17
	call8	gpio_set_direction
.LVL59:
	.loc 1 211 0
	movi.n	a11, 0
	movi.n	a10, 0x17
	call8	gpio_set_level
.LVL60:
	.loc 1 213 0
	movi.n	a10, 0x1a
	call8	gpio_pad_select_gpio
.LVL61:
	.loc 1 214 0
	movi.n	a11, 2
	movi.n	a10, 0x1a
	call8	gpio_set_direction
.LVL62:
	.loc 1 215 0
	movi.n	a11, 0
	movi.n	a10, 0x1a
	call8	gpio_set_level
.LVL63:
	.loc 1 217 0
	movi.n	a10, 0x15
	call8	gpio_pad_select_gpio
.LVL64:
	.loc 1 218 0
	movi.n	a11, 2
	movi.n	a10, 0x15
	call8	gpio_set_direction
.LVL65:
	.loc 1 219 0
	movi.n	a11, 0
	movi.n	a10, 0x15
	call8	gpio_set_level
.LVL66:
	retw.n
.LFE14:
	.size	init_led, .-init_led
	.section	.rodata.str1.4
	.align	4
.LC50:
	.string	"Wake up for update check. Time in DS: %dms\n"
	.align	4
.LC52:
	.string	"Wake up from touch pad on T%d\n"
	.align	4
.LC54:
	.string	"Not a deep sleep reset"
	.align	4
.LC56:
	.string	"Wake up from EXT0"
	.align	4
.LC58:
	.string	"Wake up from EXT1"
	.align	4
.LC60:
	.string	"Wake up from ULP"
	.align	4
.LC63:
	.string	"\033[0;32mI (%d) %s: ---------- Intialization started ----------\033[0m\n"
	.align	4
.LC65:
	.string	"\033[0;32mI (%d) %s: ---------- Software version: %2d -----------\033[0m\n"
	.align	4
.LC68:
	.string	"nvs_flash_erase()"
	.align	4
.LC71:
	.string	"C:/esp/ArkPOS2-esp/main/main.c"
	.align	4
.LC73:
	.string	"err_nvs"
	.align	4
.LC76:
	.string	"Wake up timer set to %lld seconds.\n"
	.align	4
.LC81:
	.string	"T:%d\n"
	.align	4
.LC83:
	.string	"Touch pad wake up configured"
	.align	4
.LC85:
	.string	"Entering Deep Sleep"
	.section	.text.app_main,"ax",@progbits
	.literal_position
	.literal .LC47, sleep_enter_time
	.literal .LC48, 274877907
	.literal .LC49, .L24
	.literal .LC51, .LC50
	.literal .LC53, .LC52
	.literal .LC55, .LC54
	.literal .LC57, .LC56
	.literal .LC59, .LC58
	.literal .LC61, .LC60
	.literal .LC62, .LC0
	.literal .LC64, .LC63
	.literal .LC66, .LC65
	.literal .LC67, 4365
	.literal .LC69, .LC68
	.literal .LC70, __func__$6757
	.literal .LC72, .LC71
	.literal .LC74, .LC73
	.literal .LC75, 43200, 0
	.literal .LC77, .LC76
	.literal .LC78, 250327040, 10
	.literal .LC79, 65535
	.literal .LC80, 4096
	.literal .LC82, .LC81
	.literal .LC84, .LC83
	.literal .LC86, .LC85
	.align	4
	.global	app_main
	.type	app_main, @function
app_main:
.LFB11:
	.loc 1 60 0
	entry	sp, 48
.LCFI6:
	.loc 1 63 0
	movi.n	a11, 0
	mov.n	a10, sp
	call8	gettimeofday
.LVL67:
	.loc 1 64 0
	l32r	a8, .LC47
	l32i.n	a9, a8, 0
	l32i.n	a2, sp, 0
	sub	a9, a2, a9
	slli	a2, a9, 5
	sub	a2, a2, a9
	addx4	a9, a2, a9
	slli	a2, a9, 3
	l32i.n	a10, a8, 4
	l32i.n	a9, sp, 4
	sub	a10, a9, a10
	l32r	a9, .LC48
	mulsh	a9, a10, a9
	srai	a9, a9, 6
	srai	a10, a10, 31
	sub	a8, a9, a10
	add.n	a2, a2, a8
.LVL68:
	.loc 1 66 0
	call8	esp_sleep_get_wakeup_cause
.LVL69:
	bgeui	a10, 6, .L22
	l32r	a8, .LC49
	addx4	a10, a10, a8
	l32i.n	a8, a10, 0
	jx	a8
	.section	.rodata.app_main,"a",@progbits
	.align	4
	.align	4
.L24:
	.word	.L23
	.word	.L25
	.word	.L26
	.word	.L27
	.word	.L28
	.word	.L29
	.section	.text.app_main
.L27:
	.loc 1 69 0
	mov.n	a11, a2
	l32r	a10, .LC51
	call8	printf
.LVL70:
	.loc 1 71 0
	call8	check_for_updates
.LVL71:
	.loc 1 72 0
	j	.L22
.L28:
	.loc 1 76 0
	call8	esp_sleep_get_touchpad_wakeup_status
.LVL72:
	mov.n	a11, a10
	l32r	a10, .LC53
	call8	printf
.LVL73:
	.loc 1 82 0
	j	.L22
.L23:
	.loc 1 85 0
	l32r	a10, .LC55
	call8	puts
.LVL74:
	.loc 1 86 0
	j	.L22
.L25:
	.loc 1 89 0
	l32r	a10, .LC57
	call8	puts
.LVL75:
	.loc 1 90 0
	j	.L22
.L26:
	.loc 1 93 0
	l32r	a10, .LC59
	call8	puts
.LVL76:
	.loc 1 94 0
	j	.L22
.L29:
	.loc 1 97 0
	l32r	a10, .LC61
	call8	puts
.LVL77:
.L22:
	.loc 1 102 0 discriminator 1
	call8	esp_log_timestamp
.LVL78:
	l32r	a2, .LC62
.LVL79:
	mov.n	a14, a2
	mov.n	a13, a10
	l32r	a12, .LC64
	mov.n	a11, a2
	movi.n	a10, 3
	call8	esp_log_write
.LVL80:
	.loc 1 103 0 discriminator 1
	call8	esp_log_timestamp
.LVL81:
	movi.n	a15, 1
	mov.n	a14, a2
	mov.n	a13, a10
	l32r	a12, .LC66
	mov.n	a11, a2
	movi.n	a10, 3
	call8	esp_log_write
.LVL82:
	.loc 1 105 0 discriminator 1
	call8	nvs_flash_init
.LVL83:
	.loc 1 106 0 discriminator 1
	l32r	a2, .LC67
	bne	a10, a2, .L30
.LBB8:
	.loc 1 108 0
	call8	nvs_flash_erase
.LVL84:
	beqz.n	a10, .L31
	.loc 1 108 0 is_stmt 0 discriminator 1
	l32r	a14, .LC69
	l32r	a13, .LC70
	movi	a12, 0x6c
	l32r	a11, .LC72
	call8	_esp_error_check_failed
.LVL85:
.L31:
.LBE8:
	.loc 1 110 0 is_stmt 1
	call8	nvs_flash_init
.LVL86:
.L30:
.LBB9:
	.loc 1 112 0
	beqz.n	a10, .L32
	.loc 1 112 0 is_stmt 0 discriminator 1
	l32r	a14, .LC74
	l32r	a13, .LC70
	movi	a12, 0x70
	l32r	a11, .LC72
	call8	_esp_error_check_failed
.LVL87:
.L32:
.LBE9:
	.loc 1 118 0 is_stmt 1
	l32r	a12, .LC75
	l32r	a13, .LC75+4
	l32r	a10, .LC77
.LVL88:
	call8	printf
.LVL89:
	.loc 1 119 0
	l32r	a10, .LC78
	l32r	a11, .LC78+4
	call8	esp_sleep_enable_timer_wakeup
.LVL90:
	.loc 1 121 0
	call8	touch_pad_init
.LVL91:
	.loc 1 122 0
	movi.n	a10, 0xa
	call8	touch_pad_filter_start
.LVL92:
	.loc 1 123 0
	l32r	a11, .LC79
	l32r	a10, .LC80
	call8	touch_pad_set_meas_time
.LVL93:
	.loc 1 124 0
	movi.n	a12, 0
	movi.n	a11, 3
	mov.n	a10, a12
	call8	touch_pad_set_voltage
.LVL94:
	.loc 1 127 0
	addi.n	a11, sp, 8
	movi.n	a10, 0
	call8	touch_pad_read
.LVL95:
	.loc 1 128 0
	l16ui	a11, sp, 8
	l32r	a10, .LC82
	call8	printf
.LVL96:
	.loc 1 130 0
	call8	calibrate_touch_pads
.LVL97:
	.loc 1 132 0
	l32r	a10, .LC84
	call8	puts
.LVL98:
	.loc 1 133 0
	call8	esp_sleep_enable_touchpad_wakeup
.LVL99:
	.loc 1 135 0
	call8	init_led
.LVL100:
	.loc 1 137 0
	l32r	a10, .LC86
	call8	puts
.LVL101:
	.loc 1 138 0
	movi.n	a11, 0
	l32r	a10, .LC47
	call8	gettimeofday
.LVL102:
	.loc 1 139 0
	call8	esp_deep_sleep_start
.LVL103:
.LFE11:
	.size	app_main, .-app_main
	.section	.rodata.__func__$6757,"a",@progbits
	.align	4
	.type	__func__$6757, @object
	.size	__func__$6757, 9
__func__$6757:
	.string	"app_main"
	.section	.bss.ota_config,"aw",@nobits
	.align	4
	.type	ota_config, @object
	.size	ota_config, 540
ota_config:
	.zero	540
	.section	.bss.wifi_params,"aw",@nobits
	.align	4
	.type	wifi_params, @object
	.size	wifi_params, 8
wifi_params:
	.zero	8
	.section	.rtc.data,"aw",@progbits
	.align	4
	.type	sleep_enter_time, @object
	.size	sleep_enter_time, 8
sleep_enter_time:
	.zero	8
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
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI0-.LFB18
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI1-.LFB16
	.byte	0xe
	.uleb128 0x30
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
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI4-.LFB15
	.byte	0xe
	.uleb128 0x30
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
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI6-.LFB11
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE12:
	.text
.Letext0:
	.file 2 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 3 "C:/esp/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "C:/esp/esp-idf/components/newlib/include/stdint.h"
	.file 5 "C:/esp/esp-idf/components/freertos/include/freertos/portmacro.h"
	.file 6 "C:/esp/esp-idf/components/newlib/include/sys/types.h"
	.file 7 "C:/esp/esp-idf/components/esp32/include/esp_err.h"
	.file 8 "C:/esp/esp-idf/components/driver/include/driver/gpio.h"
	.file 9 "C:/esp/esp-idf/components/driver/include/driver/touch_pad.h"
	.file 10 "C:/esp/esp-idf/components/esp32/include/esp_sleep.h"
	.file 11 "C:/esp/esp-idf/components/log/include/esp_log.h"
	.file 12 "C:/esp/esp-idf/components/esp32/include/esp_wifi_types.h"
	.file 13 "C:/esp/esp-idf/components/newlib/include/sys/time.h"
	.file 14 "C:/esp/esp-idf/components/lwip/include/lwip/port/arch/cc.h"
	.file 15 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/ip4_addr.h"
	.file 16 "C:/esp/esp-idf/components/lwip/include/lwip/lwip/ip6_addr.h"
	.file 17 "C:/esp/esp-idf/components/tcpip_adapter/include/tcpip_adapter.h"
	.file 18 "C:/esp/esp-idf/components/esp32/include/esp_event.h"
	.file 19 "C:/esp/esp-idf/components/driver/include/driver/rtc_io.h"
	.file 20 "C:/esp/ArkPOS2-esp/main/wifi_sta.h"
	.file 21 "C:/esp/ArkPOS2-esp/main/iap_https.h"
	.file 22 "C:/esp/esp-idf/components/newlib/include/string.h"
	.file 23 "C:/esp/esp-idf/components/esp32/include/esp_event_loop.h"
	.file 24 "C:/esp/esp-idf/components/freertos/include/freertos/event_groups.h"
	.file 25 "C:/esp/esp-idf/components/newlib/include/stdio.h"
	.file 26 "C:/esp/esp-idf/components/freertos/include/freertos/task.h"
	.file 27 "C:/esp/esp-idf/components/esp32/include/rom/gpio.h"
	.file 28 "C:/esp/esp-idf/components/nvs_flash/include/nvs_flash.h"
	.file 29 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1416
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF229
	.byte	0xc
	.4byte	.LASF230
	.4byte	.LASF231
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
	.byte	0x16
	.4byte	0x3e
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x3
	.byte	0x19
	.4byte	0x25
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x3
	.byte	0x1a
	.4byte	0x37
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb8
	.uleb128 0x7
	.4byte	0xab
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x4
	.byte	0x15
	.4byte	0x4c
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x4
	.byte	0x21
	.4byte	0x65
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x4
	.byte	0x2c
	.4byte	0x70
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x4
	.byte	0x2d
	.4byte	0x7b
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x5
	.byte	0x6c
	.4byte	0x25
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x5
	.byte	0x73
	.4byte	0xde
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x6
	.byte	0x7a
	.4byte	0x94
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x6
	.2byte	0x11d
	.4byte	0x94
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x7
	.byte	0x18
	.4byte	0xd3
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF25
	.uleb128 0x9
	.byte	0x4
	.4byte	0x37
	.byte	0x8
	.byte	0xba
	.4byte	0x153
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0x6
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0x7
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0x3
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x25
	.byte	0x9
	.byte	0x27
	.4byte	0x184
	.uleb128 0xb
	.4byte	.LASF31
	.sleb128 -1
	.uleb128 0xa
	.4byte	.LASF32
	.byte	0
	.uleb128 0xa
	.4byte	.LASF33
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF34
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF35
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF36
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x25
	.byte	0x9
	.byte	0x30
	.4byte	0x1b5
	.uleb128 0xb
	.4byte	.LASF37
	.sleb128 -1
	.uleb128 0xa
	.4byte	.LASF38
	.byte	0
	.uleb128 0xa
	.4byte	.LASF39
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF40
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF41
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF42
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x25
	.byte	0x9
	.byte	0x39
	.4byte	0x1e6
	.uleb128 0xb
	.4byte	.LASF43
	.sleb128 -1
	.uleb128 0xa
	.4byte	.LASF44
	.byte	0
	.uleb128 0xa
	.4byte	.LASF45
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF46
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF47
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF48
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x37
	.byte	0xa
	.byte	0x38
	.4byte	0x217
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
	.uleb128 0xa
	.4byte	.LASF53
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF54
	.byte	0x5
	.byte	0
	.uleb128 0x7
	.4byte	0xb2
	.uleb128 0x9
	.byte	0x4
	.4byte	0x37
	.byte	0xb
	.byte	0x1f
	.4byte	0x24d
	.uleb128 0xa
	.4byte	.LASF55
	.byte	0
	.uleb128 0xa
	.4byte	.LASF56
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF57
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF58
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF59
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF60
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF61
	.byte	0xb
	.byte	0x26
	.4byte	0x21c
	.uleb128 0x9
	.byte	0x4
	.4byte	0x37
	.byte	0xc
	.byte	0x32
	.4byte	0x28f
	.uleb128 0xa
	.4byte	.LASF62
	.byte	0
	.uleb128 0xa
	.4byte	.LASF63
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF64
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF65
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF66
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF67
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF68
	.byte	0x6
	.byte	0
	.uleb128 0x3
	.4byte	.LASF69
	.byte	0xc
	.byte	0x3a
	.4byte	0x258
	.uleb128 0xc
	.4byte	0xbd
	.4byte	0x2aa
	.uleb128 0xd
	.4byte	0x9b
	.byte	0x5
	.byte	0
	.uleb128 0xc
	.4byte	0xbd
	.4byte	0x2ba
	.uleb128 0xd
	.4byte	0x9b
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.4byte	.LASF73
	.byte	0x8
	.byte	0xd
	.byte	0x11
	.4byte	0x2df
	.uleb128 0xf
	.4byte	.LASF70
	.byte	0xd
	.byte	0x12
	.4byte	0xff
	.byte	0
	.uleb128 0xf
	.4byte	.LASF71
	.byte	0xd
	.byte	0x13
	.4byte	0x10a
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF72
	.byte	0xe
	.byte	0x32
	.4byte	0xde
	.uleb128 0xe
	.4byte	.LASF74
	.byte	0x4
	.byte	0xf
	.byte	0x2e
	.4byte	0x303
	.uleb128 0xf
	.4byte	.LASF75
	.byte	0xf
	.byte	0x2f
	.4byte	0x2df
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF76
	.byte	0xf
	.byte	0x42
	.4byte	0x2ea
	.uleb128 0xe
	.4byte	.LASF77
	.byte	0x10
	.byte	0x10
	.byte	0x39
	.4byte	0x327
	.uleb128 0xf
	.4byte	.LASF75
	.byte	0x10
	.byte	0x3a
	.4byte	0x327
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	0x2df
	.4byte	0x337
	.uleb128 0xd
	.4byte	0x9b
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF78
	.byte	0x10
	.byte	0x4b
	.4byte	0x30e
	.uleb128 0x10
	.byte	0xc
	.byte	0x11
	.byte	0x48
	.4byte	0x36d
	.uleb128 0x11
	.string	"ip"
	.byte	0x11
	.byte	0x49
	.4byte	0x303
	.byte	0
	.uleb128 0xf
	.4byte	.LASF79
	.byte	0x11
	.byte	0x4a
	.4byte	0x303
	.byte	0x4
	.uleb128 0x11
	.string	"gw"
	.byte	0x11
	.byte	0x4b
	.4byte	0x303
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF80
	.byte	0x11
	.byte	0x4c
	.4byte	0x342
	.uleb128 0x10
	.byte	0x10
	.byte	0x11
	.byte	0x4e
	.4byte	0x38c
	.uleb128 0x11
	.string	"ip"
	.byte	0x11
	.byte	0x4f
	.4byte	0x337
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF81
	.byte	0x11
	.byte	0x50
	.4byte	0x378
	.uleb128 0x9
	.byte	0x4
	.4byte	0x37
	.byte	0x12
	.byte	0x1d
	.4byte	0x43a
	.uleb128 0xa
	.4byte	.LASF82
	.byte	0
	.uleb128 0xa
	.4byte	.LASF83
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF84
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF85
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF86
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF87
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF88
	.byte	0x6
	.uleb128 0xa
	.4byte	.LASF89
	.byte	0x7
	.uleb128 0xa
	.4byte	.LASF90
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF91
	.byte	0x9
	.uleb128 0xa
	.4byte	.LASF92
	.byte	0xa
	.uleb128 0xa
	.4byte	.LASF93
	.byte	0xb
	.uleb128 0xa
	.4byte	.LASF94
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF95
	.byte	0xd
	.uleb128 0xa
	.4byte	.LASF96
	.byte	0xe
	.uleb128 0xa
	.4byte	.LASF97
	.byte	0xf
	.uleb128 0xa
	.4byte	.LASF98
	.byte	0x10
	.uleb128 0xa
	.4byte	.LASF99
	.byte	0x11
	.uleb128 0xa
	.4byte	.LASF100
	.byte	0x12
	.uleb128 0xa
	.4byte	.LASF101
	.byte	0x13
	.uleb128 0xa
	.4byte	.LASF102
	.byte	0x14
	.uleb128 0xa
	.4byte	.LASF103
	.byte	0x15
	.uleb128 0xa
	.4byte	.LASF104
	.byte	0x16
	.uleb128 0xa
	.4byte	.LASF105
	.byte	0x17
	.uleb128 0xa
	.4byte	.LASF106
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.4byte	.LASF107
	.byte	0x12
	.byte	0x37
	.4byte	0x397
	.uleb128 0x9
	.byte	0x4
	.4byte	0x37
	.byte	0x12
	.byte	0x39
	.4byte	0x464
	.uleb128 0xa
	.4byte	.LASF108
	.byte	0
	.uleb128 0xa
	.4byte	.LASF109
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF110
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF111
	.byte	0x12
	.byte	0x3d
	.4byte	0x445
	.uleb128 0x10
	.byte	0x8
	.byte	0x12
	.byte	0x3e
	.4byte	0x49c
	.uleb128 0xf
	.4byte	.LASF112
	.byte	0x12
	.byte	0x3f
	.4byte	0xde
	.byte	0
	.uleb128 0xf
	.4byte	.LASF113
	.byte	0x12
	.byte	0x40
	.4byte	0xbd
	.byte	0x4
	.uleb128 0xf
	.4byte	.LASF114
	.byte	0x12
	.byte	0x41
	.4byte	0xbd
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF115
	.byte	0x12
	.byte	0x42
	.4byte	0x46f
	.uleb128 0x10
	.byte	0x2c
	.byte	0x12
	.byte	0x44
	.4byte	0x4ec
	.uleb128 0xf
	.4byte	.LASF116
	.byte	0x12
	.byte	0x45
	.4byte	0x2aa
	.byte	0
	.uleb128 0xf
	.4byte	.LASF117
	.byte	0x12
	.byte	0x46
	.4byte	0xbd
	.byte	0x20
	.uleb128 0xf
	.4byte	.LASF118
	.byte	0x12
	.byte	0x47
	.4byte	0x29a
	.byte	0x21
	.uleb128 0xf
	.4byte	.LASF119
	.byte	0x12
	.byte	0x48
	.4byte	0xbd
	.byte	0x27
	.uleb128 0xf
	.4byte	.LASF120
	.byte	0x12
	.byte	0x49
	.4byte	0x28f
	.byte	0x28
	.byte	0
	.uleb128 0x3
	.4byte	.LASF121
	.byte	0x12
	.byte	0x4a
	.4byte	0x4a7
	.uleb128 0x10
	.byte	0x28
	.byte	0x12
	.byte	0x4c
	.4byte	0x530
	.uleb128 0xf
	.4byte	.LASF116
	.byte	0x12
	.byte	0x4d
	.4byte	0x2aa
	.byte	0
	.uleb128 0xf
	.4byte	.LASF117
	.byte	0x12
	.byte	0x4e
	.4byte	0xbd
	.byte	0x20
	.uleb128 0xf
	.4byte	.LASF118
	.byte	0x12
	.byte	0x4f
	.4byte	0x29a
	.byte	0x21
	.uleb128 0xf
	.4byte	.LASF122
	.byte	0x12
	.byte	0x50
	.4byte	0xbd
	.byte	0x27
	.byte	0
	.uleb128 0x3
	.4byte	.LASF123
	.byte	0x12
	.byte	0x51
	.4byte	0x4f7
	.uleb128 0x10
	.byte	0x8
	.byte	0x12
	.byte	0x53
	.4byte	0x55c
	.uleb128 0xf
	.4byte	.LASF124
	.byte	0x12
	.byte	0x54
	.4byte	0x28f
	.byte	0
	.uleb128 0xf
	.4byte	.LASF125
	.byte	0x12
	.byte	0x55
	.4byte	0x28f
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF126
	.byte	0x12
	.byte	0x56
	.4byte	0x53b
	.uleb128 0x10
	.byte	0x10
	.byte	0x12
	.byte	0x58
	.4byte	0x588
	.uleb128 0xf
	.4byte	.LASF127
	.byte	0x12
	.byte	0x59
	.4byte	0x36d
	.byte	0
	.uleb128 0xf
	.4byte	.LASF128
	.byte	0x12
	.byte	0x5a
	.4byte	0x121
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.4byte	.LASF129
	.byte	0x12
	.byte	0x5b
	.4byte	0x567
	.uleb128 0x10
	.byte	0x8
	.byte	0x12
	.byte	0x5d
	.4byte	0x5a8
	.uleb128 0xf
	.4byte	.LASF130
	.byte	0x12
	.byte	0x5e
	.4byte	0x5a8
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	0xbd
	.4byte	0x5b8
	.uleb128 0xd
	.4byte	0x9b
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.4byte	.LASF131
	.byte	0x12
	.byte	0x5f
	.4byte	0x593
	.uleb128 0x10
	.byte	0x10
	.byte	0x12
	.byte	0x61
	.4byte	0x5d8
	.uleb128 0xf
	.4byte	.LASF132
	.byte	0x12
	.byte	0x62
	.4byte	0x38c
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF133
	.byte	0x12
	.byte	0x63
	.4byte	0x5c3
	.uleb128 0x10
	.byte	0x7
	.byte	0x12
	.byte	0x65
	.4byte	0x604
	.uleb128 0x11
	.string	"mac"
	.byte	0x12
	.byte	0x66
	.4byte	0x29a
	.byte	0
	.uleb128 0x11
	.string	"aid"
	.byte	0x12
	.byte	0x67
	.4byte	0xbd
	.byte	0x6
	.byte	0
	.uleb128 0x3
	.4byte	.LASF134
	.byte	0x12
	.byte	0x68
	.4byte	0x5e3
	.uleb128 0x10
	.byte	0x7
	.byte	0x12
	.byte	0x6a
	.4byte	0x630
	.uleb128 0x11
	.string	"mac"
	.byte	0x12
	.byte	0x6b
	.4byte	0x29a
	.byte	0
	.uleb128 0x11
	.string	"aid"
	.byte	0x12
	.byte	0x6c
	.4byte	0xbd
	.byte	0x6
	.byte	0
	.uleb128 0x3
	.4byte	.LASF135
	.byte	0x12
	.byte	0x6d
	.4byte	0x60f
	.uleb128 0x10
	.byte	0xc
	.byte	0x12
	.byte	0x6f
	.4byte	0x65c
	.uleb128 0xf
	.4byte	.LASF136
	.byte	0x12
	.byte	0x70
	.4byte	0x25
	.byte	0
	.uleb128 0x11
	.string	"mac"
	.byte	0x12
	.byte	0x71
	.4byte	0x29a
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF137
	.byte	0x12
	.byte	0x72
	.4byte	0x63b
	.uleb128 0x12
	.byte	0x2c
	.byte	0x12
	.byte	0x74
	.4byte	0x6e9
	.uleb128 0x13
	.4byte	.LASF138
	.byte	0x12
	.byte	0x75
	.4byte	0x4ec
	.uleb128 0x13
	.4byte	.LASF139
	.byte	0x12
	.byte	0x76
	.4byte	0x530
	.uleb128 0x13
	.4byte	.LASF140
	.byte	0x12
	.byte	0x77
	.4byte	0x49c
	.uleb128 0x13
	.4byte	.LASF141
	.byte	0x12
	.byte	0x78
	.4byte	0x55c
	.uleb128 0x13
	.4byte	.LASF142
	.byte	0x12
	.byte	0x79
	.4byte	0x588
	.uleb128 0x13
	.4byte	.LASF143
	.byte	0x12
	.byte	0x7a
	.4byte	0x5b8
	.uleb128 0x13
	.4byte	.LASF144
	.byte	0x12
	.byte	0x7b
	.4byte	0x464
	.uleb128 0x13
	.4byte	.LASF145
	.byte	0x12
	.byte	0x7c
	.4byte	0x604
	.uleb128 0x13
	.4byte	.LASF146
	.byte	0x12
	.byte	0x7d
	.4byte	0x630
	.uleb128 0x13
	.4byte	.LASF147
	.byte	0x12
	.byte	0x7e
	.4byte	0x65c
	.uleb128 0x13
	.4byte	.LASF148
	.byte	0x12
	.byte	0x7f
	.4byte	0x5d8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF149
	.byte	0x12
	.byte	0x80
	.4byte	0x667
	.uleb128 0x10
	.byte	0x30
	.byte	0x12
	.byte	0x82
	.4byte	0x715
	.uleb128 0xf
	.4byte	.LASF150
	.byte	0x12
	.byte	0x83
	.4byte	0x43a
	.byte	0
	.uleb128 0xf
	.4byte	.LASF151
	.byte	0x12
	.byte	0x84
	.4byte	0x6e9
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF152
	.byte	0x12
	.byte	0x85
	.4byte	0x6f4
	.uleb128 0x6
	.byte	0x4
	.4byte	0x715
	.uleb128 0x10
	.byte	0x34
	.byte	0x13
	.byte	0x21
	.4byte	0x7ca
	.uleb128 0x11
	.string	"reg"
	.byte	0x13
	.byte	0x22
	.4byte	0xde
	.byte	0
	.uleb128 0x11
	.string	"mux"
	.byte	0x13
	.byte	0x23
	.4byte	0xde
	.byte	0x4
	.uleb128 0xf
	.4byte	.LASF153
	.byte	0x13
	.byte	0x24
	.4byte	0xde
	.byte	0x8
	.uleb128 0x11
	.string	"ie"
	.byte	0x13
	.byte	0x25
	.4byte	0xde
	.byte	0xc
	.uleb128 0xf
	.4byte	.LASF154
	.byte	0x13
	.byte	0x26
	.4byte	0xde
	.byte	0x10
	.uleb128 0xf
	.4byte	.LASF155
	.byte	0x13
	.byte	0x27
	.4byte	0xde
	.byte	0x14
	.uleb128 0xf
	.4byte	.LASF156
	.byte	0x13
	.byte	0x28
	.4byte	0xde
	.byte	0x18
	.uleb128 0xf
	.4byte	.LASF157
	.byte	0x13
	.byte	0x29
	.4byte	0xde
	.byte	0x1c
	.uleb128 0xf
	.4byte	.LASF158
	.byte	0x13
	.byte	0x2a
	.4byte	0xde
	.byte	0x20
	.uleb128 0xf
	.4byte	.LASF159
	.byte	0x13
	.byte	0x2b
	.4byte	0xde
	.byte	0x24
	.uleb128 0xf
	.4byte	.LASF160
	.byte	0x13
	.byte	0x2c
	.4byte	0xde
	.byte	0x28
	.uleb128 0xf
	.4byte	.LASF161
	.byte	0x13
	.byte	0x2d
	.4byte	0xde
	.byte	0x2c
	.uleb128 0xf
	.4byte	.LASF162
	.byte	0x13
	.byte	0x2e
	.4byte	0x25
	.byte	0x30
	.byte	0
	.uleb128 0x3
	.4byte	.LASF163
	.byte	0x13
	.byte	0x2f
	.4byte	0x726
	.uleb128 0xe
	.4byte	.LASF164
	.byte	0x8
	.byte	0x14
	.byte	0x21
	.4byte	0x7fa
	.uleb128 0xf
	.4byte	.LASF165
	.byte	0x14
	.byte	0x24
	.4byte	0xb2
	.byte	0
	.uleb128 0xf
	.4byte	.LASF166
	.byte	0x14
	.byte	0x27
	.4byte	0xb2
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF167
	.byte	0x14
	.byte	0x29
	.4byte	0x7d5
	.uleb128 0x14
	.4byte	.LASF168
	.2byte	0x21c
	.byte	0x15
	.byte	0x1d
	.4byte	0x882
	.uleb128 0xf
	.4byte	.LASF169
	.byte	0x15
	.byte	0x20
	.4byte	0x25
	.byte	0
	.uleb128 0xf
	.4byte	.LASF170
	.byte	0x15
	.byte	0x23
	.4byte	0xb2
	.byte	0x4
	.uleb128 0xf
	.4byte	.LASF171
	.byte	0x15
	.byte	0x26
	.4byte	0xb2
	.byte	0x8
	.uleb128 0xf
	.4byte	.LASF172
	.byte	0x15
	.byte	0x2a
	.4byte	0xb2
	.byte	0xc
	.uleb128 0xf
	.4byte	.LASF173
	.byte	0x15
	.byte	0x2e
	.4byte	0xb2
	.byte	0x10
	.uleb128 0xf
	.4byte	.LASF174
	.byte	0x15
	.byte	0x32
	.4byte	0x882
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF175
	.byte	0x15
	.byte	0x35
	.4byte	0x882
	.2byte	0x114
	.uleb128 0x15
	.4byte	.LASF176
	.byte	0x15
	.byte	0x3d
	.4byte	0xde
	.2byte	0x214
	.uleb128 0x15
	.4byte	.LASF177
	.byte	0x15
	.byte	0x42
	.4byte	0x25
	.2byte	0x218
	.byte	0
	.uleb128 0xc
	.4byte	0xab
	.4byte	0x892
	.uleb128 0xd
	.4byte	0x9b
	.byte	0xff
	.byte	0
	.uleb128 0x3
	.4byte	.LASF178
	.byte	0x15
	.byte	0x44
	.4byte	0x805
	.uleb128 0x16
	.4byte	.LASF232
	.byte	0x1
	.2byte	0x138
	.4byte	0x116
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x97f
	.uleb128 0x17
	.string	"ctx"
	.byte	0x1
	.2byte	0x138
	.4byte	0xa2
	.4byte	.LLST0
	.uleb128 0x18
	.4byte	.LASF179
	.byte	0x1
	.2byte	0x138
	.4byte	0x720
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x19
	.4byte	.LASF180
	.byte	0x1
	.2byte	0x13a
	.4byte	0x116
	.4byte	.LLST1
	.uleb128 0x1a
	.4byte	.LASF181
	.byte	0x1
	.2byte	0x13b
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1b
	.4byte	.LVL2
	.4byte	0x1291
	.uleb128 0x1c
	.4byte	.LVL3
	.4byte	0x129c
	.4byte	0x92b
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL4
	.4byte	0x12a7
	.4byte	0x94b
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL6
	.4byte	0x1291
	.uleb128 0x1e
	.4byte	.LVL7
	.4byte	0x129c
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF182
	.byte	0x1
	.2byte	0x119
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa18
	.uleb128 0x1b
	.4byte	.LVL10
	.4byte	0x1291
	.uleb128 0x1c
	.4byte	.LVL11
	.4byte	0x129c
	.4byte	0x9c6
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL12
	.4byte	0x1291
	.uleb128 0x1c
	.4byte	.LVL13
	.4byte	0x129c
	.4byte	0xa04
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL14
	.4byte	0x12b2
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	wifi_params
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF183
	.byte	0x1
	.2byte	0x124
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xacd
	.uleb128 0x1b
	.4byte	.LVL15
	.4byte	0x1291
	.uleb128 0x1c
	.4byte	.LVL16
	.4byte	0x129c
	.4byte	0xa65
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL17
	.4byte	0x12bd
	.4byte	0xa8c
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	ota_config+20
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC24
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x100
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL18
	.4byte	0x12c8
	.4byte	0xaaf
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	ota_config+276
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x100
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL19
	.4byte	0x12d1
	.4byte	0xac3
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL20
	.4byte	0x12dc
	.byte	0
	.uleb128 0x20
	.4byte	.LASF184
	.byte	0x1
	.byte	0x8e
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbf9
	.uleb128 0x1c
	.4byte	.LVL21
	.4byte	0x12e7
	.4byte	0xafe
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	app_event_handler
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL22
	.4byte	0x97f
	.uleb128 0x1b
	.4byte	.LVL23
	.4byte	0x12f2
	.uleb128 0x1c
	.4byte	.LVL24
	.4byte	0x12fd
	.4byte	0xb33
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL25
	.4byte	0xa18
	.uleb128 0x1b
	.4byte	.LVL26
	.4byte	0x1309
	.uleb128 0x1b
	.4byte	.LVL27
	.4byte	0x1291
	.uleb128 0x1c
	.4byte	.LVL28
	.4byte	0x129c
	.4byte	0xb7c
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC34
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL29
	.4byte	0x1314
	.uleb128 0x1b
	.4byte	.LVL30
	.4byte	0x1291
	.uleb128 0x1c
	.4byte	.LVL31
	.4byte	0x129c
	.4byte	0xbbc
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC36
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL32
	.4byte	0x131f
	.uleb128 0x1b
	.4byte	.LVL33
	.4byte	0x1291
	.uleb128 0x1e
	.4byte	.LVL34
	.4byte	0x129c
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC38
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LASF185
	.byte	0x1
	.byte	0xde
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd53
	.uleb128 0x21
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x22
	.string	"j"
	.byte	0x1
	.byte	0xe0
	.4byte	0x2c
	.4byte	.LLST2
	.uleb128 0x21
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0x22
	.string	"avg"
	.byte	0x1
	.byte	0xe8
	.4byte	0x25
	.4byte	.LLST3
	.uleb128 0x23
	.4byte	.LASF186
	.byte	0x1
	.byte	0xe9
	.4byte	0xd53
	.4byte	.LLST4
	.uleb128 0x24
	.4byte	.Ldebug_ranges0+0
	.4byte	0xc90
	.uleb128 0x22
	.string	"i"
	.byte	0x1
	.byte	0xea
	.4byte	0x25
	.4byte	.LLST5
	.uleb128 0x21
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0x25
	.string	"val"
	.byte	0x1
	.byte	0xec
	.4byte	0xc8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1e
	.4byte	.LVL40
	.4byte	0x132a
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.4byte	0xcea
	.uleb128 0x23
	.4byte	.LASF187
	.byte	0x1
	.byte	0xf9
	.4byte	0x25
	.4byte	.LLST6
	.uleb128 0x1c
	.4byte	.LVL50
	.4byte	0x1335
	.4byte	0xccf
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC42
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL51
	.4byte	0x1340
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x6
	.byte	0x73
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL37
	.4byte	0x1340
	.4byte	0xd03
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL38
	.4byte	0x134b
	.4byte	0xd16
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL45
	.4byte	0x1335
	.4byte	0xd3b
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC40
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x4
	.byte	0x73
	.sleb128 0
	.byte	0x37
	.byte	0x25
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL46
	.4byte	0x1340
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0x2c
	.uleb128 0x20
	.4byte	.LASF188
	.byte	0x1
	.byte	0xca
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xead
	.uleb128 0x1b
	.4byte	.LVL53
	.4byte	0x1291
	.uleb128 0x1c
	.4byte	.LVL54
	.4byte	0x129c
	.4byte	0xda4
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC45
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL55
	.4byte	0x1357
	.4byte	0xdb7
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x46
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL56
	.4byte	0x1362
	.4byte	0xdcf
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x46
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL57
	.4byte	0x136e
	.4byte	0xde7
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x46
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL58
	.4byte	0x1357
	.4byte	0xdfa
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x47
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL59
	.4byte	0x1362
	.4byte	0xe12
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x47
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL60
	.4byte	0x136e
	.4byte	0xe2a
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x47
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL61
	.4byte	0x1357
	.4byte	0xe3d
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x4a
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL62
	.4byte	0x1362
	.4byte	0xe55
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x4a
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL63
	.4byte	0x136e
	.4byte	0xe6d
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x4a
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL64
	.4byte	0x1357
	.4byte	0xe80
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x45
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL65
	.4byte	0x1362
	.4byte	0xe98
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x45
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL66
	.4byte	0x136e
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x45
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LASF233
	.byte	0x1
	.byte	0x3b
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1200
	.uleb128 0x25
	.string	"now"
	.byte	0x1
	.byte	0x3e
	.4byte	0x2ba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.4byte	.LASF189
	.byte	0x1
	.byte	0x40
	.4byte	0x25
	.4byte	.LLST7
	.uleb128 0x23
	.4byte	.LASF190
	.byte	0x1
	.byte	0x69
	.4byte	0x116
	.4byte	.LLST8
	.uleb128 0x28
	.4byte	.LASF234
	.4byte	0x1210
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6757
	.uleb128 0x29
	.4byte	.LASF191
	.byte	0x1
	.byte	0x74
	.4byte	0x1215
	.2byte	0xa8c0
	.uleb128 0x2a
	.4byte	.LASF192
	.byte	0x1
	.byte	0x7e
	.4byte	0xc8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.4byte	0xf68
	.uleb128 0x22
	.string	"rc"
	.byte	0x1
	.byte	0x6c
	.4byte	0x116
	.4byte	.LLST9
	.uleb128 0x1b
	.4byte	.LVL84
	.4byte	0x137a
	.uleb128 0x1e
	.4byte	.LVL85
	.4byte	0x1385
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC71
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x6c
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6757
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC68
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.4byte	0xfaf
	.uleb128 0x22
	.string	"rc"
	.byte	0x1
	.byte	0x70
	.4byte	0x116
	.4byte	.LLST10
	.uleb128 0x1e
	.4byte	.LVL87
	.4byte	0x1385
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC71
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x70
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6757
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC73
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL67
	.4byte	0x1390
	.4byte	0xfc8
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL69
	.4byte	0x139b
	.uleb128 0x1c
	.4byte	.LVL70
	.4byte	0x1335
	.4byte	0xfee
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC50
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL71
	.4byte	0xacd
	.uleb128 0x1b
	.4byte	.LVL72
	.4byte	0x13a6
	.uleb128 0x1c
	.4byte	.LVL73
	.4byte	0x1335
	.4byte	0x1017
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC52
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL74
	.4byte	0x13b1
	.4byte	0x102e
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC54
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL75
	.4byte	0x13b1
	.4byte	0x1045
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC56
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL76
	.4byte	0x13b1
	.4byte	0x105c
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC58
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL77
	.4byte	0x13b1
	.4byte	0x1073
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC60
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL78
	.4byte	0x1291
	.uleb128 0x1c
	.4byte	.LVL80
	.4byte	0x129c
	.4byte	0x10a4
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC63
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL81
	.4byte	0x1291
	.uleb128 0x1c
	.4byte	.LVL82
	.4byte	0x129c
	.4byte	0x10da
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC65
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL83
	.4byte	0x13c0
	.uleb128 0x1b
	.4byte	.LVL86
	.4byte	0x13c0
	.uleb128 0x1c
	.4byte	.LVL89
	.4byte	0x1335
	.4byte	0x1103
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC76
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL90
	.4byte	0x13cb
	.uleb128 0x1b
	.4byte	.LVL91
	.4byte	0x13d6
	.uleb128 0x1c
	.4byte	.LVL92
	.4byte	0x13e1
	.4byte	0x1128
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL93
	.4byte	0x13ed
	.4byte	0x1144
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1000
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0xffff
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL94
	.4byte	0x13f8
	.4byte	0x1161
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL95
	.4byte	0x132a
	.4byte	0x117a
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL96
	.4byte	0x1335
	.4byte	0x1191
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC81
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL97
	.4byte	0xbf9
	.uleb128 0x1c
	.4byte	.LVL98
	.4byte	0x13b1
	.4byte	0x11b1
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC83
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL99
	.4byte	0x1403
	.uleb128 0x1b
	.4byte	.LVL100
	.4byte	0xd58
	.uleb128 0x1c
	.4byte	.LVL101
	.4byte	0x13b1
	.4byte	0x11da
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC85
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL102
	.4byte	0x1390
	.4byte	0x11f6
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	sleep_enter_time
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL103
	.4byte	0x140e
	.byte	0
	.uleb128 0xc
	.4byte	0xab
	.4byte	0x1210
	.uleb128 0xd
	.4byte	0x9b
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.4byte	0x1200
	.uleb128 0x7
	.4byte	0x86
	.uleb128 0x2a
	.4byte	.LASF172
	.byte	0x1
	.byte	0x28
	.4byte	0x217
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC28
	.byte	0x9f
	.uleb128 0x2a
	.4byte	.LASF173
	.byte	0x1
	.byte	0x29
	.4byte	0x217
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC30
	.byte	0x9f
	.uleb128 0x2a
	.4byte	.LASF193
	.byte	0x1
	.byte	0x2b
	.4byte	0x2ba
	.uleb128 0x5
	.byte	0x3
	.4byte	sleep_enter_time
	.uleb128 0x2a
	.4byte	.LASF194
	.byte	0x1
	.byte	0x2d
	.4byte	0x7fa
	.uleb128 0x5
	.byte	0x3
	.4byte	wifi_params
	.uleb128 0x2a
	.4byte	.LASF195
	.byte	0x1
	.byte	0x30
	.4byte	0x892
	.uleb128 0x5
	.byte	0x3
	.4byte	ota_config
	.uleb128 0xc
	.4byte	0x7ca
	.4byte	0x1281
	.uleb128 0xd
	.4byte	0x9b
	.byte	0x27
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF235
	.byte	0x13
	.byte	0x3f
	.4byte	0x128c
	.uleb128 0x7
	.4byte	0x1271
	.uleb128 0x2c
	.4byte	.LASF196
	.4byte	.LASF196
	.byte	0xb
	.byte	0x4c
	.uleb128 0x2c
	.4byte	.LASF197
	.4byte	.LASF197
	.byte	0xb
	.byte	0x60
	.uleb128 0x2c
	.4byte	.LASF198
	.4byte	.LASF198
	.byte	0x14
	.byte	0x30
	.uleb128 0x2c
	.4byte	.LASF199
	.4byte	.LASF199
	.byte	0x14
	.byte	0x2d
	.uleb128 0x2c
	.4byte	.LASF200
	.4byte	.LASF200
	.byte	0x16
	.byte	0x24
	.uleb128 0x2d
	.4byte	.LASF236
	.4byte	.LASF236
	.uleb128 0x2c
	.4byte	.LASF201
	.4byte	.LASF201
	.byte	0x15
	.byte	0x48
	.uleb128 0x2c
	.4byte	.LASF202
	.4byte	.LASF202
	.byte	0x15
	.byte	0x4d
	.uleb128 0x2c
	.4byte	.LASF203
	.4byte	.LASF203
	.byte	0x17
	.byte	0x33
	.uleb128 0x2c
	.4byte	.LASF204
	.4byte	.LASF204
	.byte	0x14
	.byte	0x36
	.uleb128 0x2e
	.4byte	.LASF205
	.4byte	.LASF205
	.byte	0x18
	.2byte	0x10e
	.uleb128 0x2c
	.4byte	.LASF206
	.4byte	.LASF206
	.byte	0x14
	.byte	0x33
	.uleb128 0x2c
	.4byte	.LASF207
	.4byte	.LASF207
	.byte	0x15
	.byte	0x56
	.uleb128 0x2c
	.4byte	.LASF208
	.4byte	.LASF208
	.byte	0x15
	.byte	0x58
	.uleb128 0x2c
	.4byte	.LASF209
	.4byte	.LASF209
	.byte	0x9
	.byte	0x99
	.uleb128 0x2c
	.4byte	.LASF210
	.4byte	.LASF210
	.byte	0x19
	.byte	0xb2
	.uleb128 0x2c
	.4byte	.LASF211
	.4byte	.LASF211
	.byte	0x9
	.byte	0x89
	.uleb128 0x2e
	.4byte	.LASF212
	.4byte	.LASF212
	.byte	0x1a
	.2byte	0x2d1
	.uleb128 0x2c
	.4byte	.LASF213
	.4byte	.LASF213
	.byte	0x1b
	.byte	0xf3
	.uleb128 0x2e
	.4byte	.LASF214
	.4byte	.LASF214
	.byte	0x8
	.2byte	0x144
	.uleb128 0x2e
	.4byte	.LASF215
	.4byte	.LASF215
	.byte	0x8
	.2byte	0x129
	.uleb128 0x2c
	.4byte	.LASF216
	.4byte	.LASF216
	.byte	0x1c
	.byte	0x56
	.uleb128 0x2c
	.4byte	.LASF217
	.4byte	.LASF217
	.byte	0x7
	.byte	0x2d
	.uleb128 0x2c
	.4byte	.LASF218
	.4byte	.LASF218
	.byte	0xd
	.byte	0x4d
	.uleb128 0x2c
	.4byte	.LASF219
	.4byte	.LASF219
	.byte	0xa
	.byte	0xf8
	.uleb128 0x2c
	.4byte	.LASF220
	.4byte	.LASF220
	.byte	0xa
	.byte	0x6c
	.uleb128 0x2f
	.4byte	.LASF237
	.4byte	.LASF238
	.byte	0x1d
	.byte	0
	.4byte	.LASF237
	.uleb128 0x2c
	.4byte	.LASF221
	.4byte	.LASF221
	.byte	0x1c
	.byte	0x24
	.uleb128 0x2c
	.4byte	.LASF222
	.4byte	.LASF222
	.byte	0xa
	.byte	0x55
	.uleb128 0x2c
	.4byte	.LASF223
	.4byte	.LASF223
	.byte	0x9
	.byte	0x76
	.uleb128 0x2e
	.4byte	.LASF224
	.4byte	.LASF224
	.byte	0x9
	.2byte	0x1de
	.uleb128 0x2c
	.4byte	.LASF225
	.4byte	.LASF225
	.byte	0x9
	.byte	0xd8
	.uleb128 0x2c
	.4byte	.LASF226
	.4byte	.LASF226
	.byte	0x9
	.byte	0xf0
	.uleb128 0x2c
	.4byte	.LASF227
	.4byte	.LASF227
	.byte	0xa
	.byte	0x63
	.uleb128 0x2c
	.4byte	.LASF228
	.4byte	.LASF228
	.byte	0xa
	.byte	0xc5
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
	.uleb128 0x16
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x87
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x1c
	.uleb128 0x5
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
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL5
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
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL4
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL6-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL8
	.4byte	.LFE18
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LFE15
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL43
	.4byte	.LVL45-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL45-1
	.4byte	.LVL47
	.2byte	0x5
	.byte	0x73
	.sleb128 0
	.byte	0x37
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL49
	.4byte	.LVL51
	.2byte	0x4
	.byte	0x73
	.sleb128 2000
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL38
	.4byte	.LVL51
	.2byte	0x3
	.byte	0x8
	.byte	0x80
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL48
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL68
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL83
	.4byte	.LVL84-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL86
	.4byte	.LVL87-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL87
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL84
	.4byte	.LVL85-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL85
	.4byte	.LVL86-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL86
	.4byte	.LVL87-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL87
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x4c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	.LBB6
	.4byte	.LBE6
	.4byte	0
	.4byte	0
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF210:
	.string	"printf"
.LASF178:
	.string	"iap_https_config_t"
.LASF47:
	.string	"TOUCH_HVOLT_ATTEN_0V"
.LASF115:
	.string	"system_event_sta_scan_done_t"
.LASF186:
	.string	"calibration_count"
.LASF171:
	.string	"server_port"
.LASF36:
	.string	"TOUCH_HVOLT_MAX"
.LASF3:
	.string	"size_t"
.LASF110:
	.string	"WPS_FAIL_REASON_MAX"
.LASF220:
	.string	"esp_sleep_get_touchpad_wakeup_status"
.LASF235:
	.string	"rtc_gpio_desc"
.LASF98:
	.string	"SYSTEM_EVENT_AP_STADISCONNECTED"
.LASF97:
	.string	"SYSTEM_EVENT_AP_STACONNECTED"
.LASF2:
	.string	"signed char"
.LASF4:
	.string	"__uint8_t"
.LASF130:
	.string	"pin_code"
.LASF154:
	.string	"pullup"
.LASF28:
	.string	"GPIO_MODE_OUTPUT_OD"
.LASF194:
	.string	"wifi_params"
.LASF123:
	.string	"system_event_sta_disconnected_t"
.LASF11:
	.string	"long long unsigned int"
.LASF137:
	.string	"system_event_ap_probe_req_rx_t"
.LASF75:
	.string	"addr"
.LASF131:
	.string	"system_event_sta_wps_er_pin_t"
.LASF100:
	.string	"SYSTEM_EVENT_AP_STA_GOT_IP6"
.LASF69:
	.string	"wifi_auth_mode_t"
.LASF127:
	.string	"ip_info"
.LASF162:
	.string	"rtc_num"
.LASF179:
	.string	"event"
.LASF191:
	.string	"wakeup_time_sec"
.LASF59:
	.string	"ESP_LOG_DEBUG"
.LASF10:
	.string	"long long int"
.LASF45:
	.string	"TOUCH_HVOLT_ATTEN_1V"
.LASF163:
	.string	"rtc_gpio_desc_t"
.LASF160:
	.string	"drv_v"
.LASF216:
	.string	"nvs_flash_erase"
.LASF212:
	.string	"vTaskDelay"
.LASF65:
	.string	"WIFI_AUTH_WPA2_PSK"
.LASF44:
	.string	"TOUCH_HVOLT_ATTEN_1V5"
.LASF93:
	.string	"SYSTEM_EVENT_STA_WPS_ER_TIMEOUT"
.LASF121:
	.string	"system_event_sta_connected_t"
.LASF142:
	.string	"got_ip"
.LASF215:
	.string	"gpio_set_level"
.LASF173:
	.string	"peer_public_key_pem"
.LASF12:
	.string	"long int"
.LASF52:
	.string	"ESP_SLEEP_WAKEUP_TIMER"
.LASF167:
	.string	"wifi_sta_init_struct_t"
.LASF74:
	.string	"ip4_addr"
.LASF60:
	.string	"ESP_LOG_VERBOSE"
.LASF138:
	.string	"connected"
.LASF125:
	.string	"new_mode"
.LASF197:
	.string	"esp_log_write"
.LASF62:
	.string	"WIFI_AUTH_OPEN"
.LASF6:
	.string	"short int"
.LASF133:
	.string	"system_event_ap_sta_got_ip6_t"
.LASF17:
	.string	"uint16_t"
.LASF78:
	.string	"ip6_addr_t"
.LASF31:
	.string	"TOUCH_HVOLT_KEEP"
.LASF20:
	.string	"BaseType_t"
.LASF188:
	.string	"init_led"
.LASF51:
	.string	"ESP_SLEEP_WAKEUP_EXT1"
.LASF114:
	.string	"scan_id"
.LASF233:
	.string	"app_main"
.LASF37:
	.string	"TOUCH_LVOLT_KEEP"
.LASF67:
	.string	"WIFI_AUTH_WPA2_ENTERPRISE"
.LASF156:
	.string	"slpsel"
.LASF193:
	.string	"sleep_enter_time"
.LASF111:
	.string	"system_event_sta_wps_fail_reason_t"
.LASF147:
	.string	"ap_probereqrecved"
.LASF148:
	.string	"got_ip6"
.LASF209:
	.string	"touch_pad_read"
.LASF183:
	.string	"init_ota"
.LASF68:
	.string	"WIFI_AUTH_MAX"
.LASF91:
	.string	"SYSTEM_EVENT_STA_WPS_ER_SUCCESS"
.LASF145:
	.string	"sta_connected"
.LASF169:
	.string	"current_software_version"
.LASF106:
	.string	"SYSTEM_EVENT_MAX"
.LASF23:
	.string	"suseconds_t"
.LASF165:
	.string	"network_ssid"
.LASF9:
	.string	"__uint32_t"
.LASF90:
	.string	"SYSTEM_EVENT_STA_LOST_IP"
.LASF132:
	.string	"ip6_info"
.LASF217:
	.string	"_esp_error_check_failed"
.LASF0:
	.string	"unsigned int"
.LASF200:
	.string	"strncpy"
.LASF219:
	.string	"esp_sleep_get_wakeup_cause"
.LASF116:
	.string	"ssid"
.LASF149:
	.string	"system_event_info_t"
.LASF46:
	.string	"TOUCH_HVOLT_ATTEN_0V5"
.LASF222:
	.string	"esp_sleep_enable_timer_wakeup"
.LASF32:
	.string	"TOUCH_HVOLT_2V4"
.LASF158:
	.string	"hold"
.LASF214:
	.string	"gpio_set_direction"
.LASF120:
	.string	"authmode"
.LASF134:
	.string	"system_event_ap_staconnected_t"
.LASF84:
	.string	"SYSTEM_EVENT_STA_START"
.LASF144:
	.string	"sta_er_fail_reason"
.LASF1:
	.string	"short unsigned int"
.LASF54:
	.string	"ESP_SLEEP_WAKEUP_ULP"
.LASF76:
	.string	"ip4_addr_t"
.LASF29:
	.string	"GPIO_MODE_INPUT_OUTPUT_OD"
.LASF80:
	.string	"tcpip_adapter_ip_info_t"
.LASF105:
	.string	"SYSTEM_EVENT_ETH_GOT_IP"
.LASF48:
	.string	"TOUCH_HVOLT_ATTEN_MAX"
.LASF112:
	.string	"status"
.LASF208:
	.string	"iap_https_download_image"
.LASF113:
	.string	"number"
.LASF218:
	.string	"gettimeofday"
.LASF198:
	.string	"wifi_sta_handle_event"
.LASF159:
	.string	"hold_force"
.LASF181:
	.string	"handled"
.LASF73:
	.string	"timeval"
.LASF238:
	.string	"__builtin_puts"
.LASF168:
	.string	"iap_https_config_"
.LASF190:
	.string	"err_nvs"
.LASF49:
	.string	"ESP_SLEEP_WAKEUP_UNDEFINED"
.LASF117:
	.string	"ssid_len"
.LASF152:
	.string	"system_event_t"
.LASF66:
	.string	"WIFI_AUTH_WPA_WPA2_PSK"
.LASF41:
	.string	"TOUCH_LVOLT_0V8"
.LASF157:
	.string	"slpie"
.LASF43:
	.string	"TOUCH_HVOLT_ATTEN_KEEP"
.LASF58:
	.string	"ESP_LOG_INFO"
.LASF237:
	.string	"puts"
.LASF232:
	.string	"app_event_handler"
.LASF108:
	.string	"WPS_FAIL_REASON_NORMAL"
.LASF13:
	.string	"sizetype"
.LASF50:
	.string	"ESP_SLEEP_WAKEUP_EXT0"
.LASF207:
	.string	"iap_https_has_update"
.LASF139:
	.string	"disconnected"
.LASF21:
	.string	"TickType_t"
.LASF103:
	.string	"SYSTEM_EVENT_ETH_CONNECTED"
.LASF88:
	.string	"SYSTEM_EVENT_STA_AUTHMODE_CHANGE"
.LASF109:
	.string	"WPS_FAIL_REASON_RECV_M2D"
.LASF126:
	.string	"system_event_sta_authmode_change_t"
.LASF202:
	.string	"iap_https_check_now"
.LASF79:
	.string	"netmask"
.LASF61:
	.string	"esp_log_level_t"
.LASF205:
	.string	"xEventGroupWaitBits"
.LASF135:
	.string	"system_event_ap_stadisconnected_t"
.LASF172:
	.string	"server_root_ca_public_key_pem"
.LASF155:
	.string	"pulldown"
.LASF22:
	.string	"time_t"
.LASF228:
	.string	"esp_deep_sleep_start"
.LASF70:
	.string	"tv_sec"
.LASF118:
	.string	"bssid"
.LASF128:
	.string	"ip_changed"
.LASF187:
	.string	"threshold"
.LASF107:
	.string	"system_event_id_t"
.LASF25:
	.string	"_Bool"
.LASF18:
	.string	"int32_t"
.LASF5:
	.string	"unsigned char"
.LASF192:
	.string	"touch_1_val"
.LASF146:
	.string	"sta_disconnected"
.LASF122:
	.string	"reason"
.LASF229:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF231:
	.string	"C:\\\\esp\\\\ArkPOS2-esp\\\\build\\\\main"
.LASF236:
	.string	"memset"
.LASF170:
	.string	"server_host_name"
.LASF221:
	.string	"nvs_flash_init"
.LASF196:
	.string	"esp_log_timestamp"
.LASF56:
	.string	"ESP_LOG_ERROR"
.LASF26:
	.string	"GPIO_MODE_INPUT"
.LASF124:
	.string	"old_mode"
.LASF94:
	.string	"SYSTEM_EVENT_STA_WPS_ER_PIN"
.LASF72:
	.string	"u32_t"
.LASF234:
	.string	"__func__"
.LASF199:
	.string	"wifi_sta_init"
.LASF230:
	.string	"C:/esp/ArkPOS2-esp/main/main.c"
.LASF176:
	.string	"polling_interval_s"
.LASF211:
	.string	"touch_pad_config"
.LASF201:
	.string	"iap_https_init"
.LASF119:
	.string	"channel"
.LASF150:
	.string	"event_id"
.LASF141:
	.string	"auth_change"
.LASF143:
	.string	"sta_er_pin"
.LASF223:
	.string	"touch_pad_init"
.LASF71:
	.string	"tv_usec"
.LASF19:
	.string	"uint32_t"
.LASF102:
	.string	"SYSTEM_EVENT_ETH_STOP"
.LASF161:
	.string	"drv_s"
.LASF77:
	.string	"ip6_addr"
.LASF14:
	.string	"long unsigned int"
.LASF55:
	.string	"ESP_LOG_NONE"
.LASF164:
	.string	"wifi_sta_init_struct_"
.LASF15:
	.string	"char"
.LASF153:
	.string	"func"
.LASF8:
	.string	"__int32_t"
.LASF86:
	.string	"SYSTEM_EVENT_STA_CONNECTED"
.LASF96:
	.string	"SYSTEM_EVENT_AP_STOP"
.LASF7:
	.string	"__uint16_t"
.LASF140:
	.string	"scan_done"
.LASF64:
	.string	"WIFI_AUTH_WPA_PSK"
.LASF85:
	.string	"SYSTEM_EVENT_STA_STOP"
.LASF38:
	.string	"TOUCH_LVOLT_0V5"
.LASF39:
	.string	"TOUCH_LVOLT_0V6"
.LASF40:
	.string	"TOUCH_LVOLT_0V7"
.LASF104:
	.string	"SYSTEM_EVENT_ETH_DISCONNECTED"
.LASF92:
	.string	"SYSTEM_EVENT_STA_WPS_ER_FAILED"
.LASF151:
	.string	"event_info"
.LASF129:
	.string	"system_event_sta_got_ip_t"
.LASF225:
	.string	"touch_pad_set_meas_time"
.LASF226:
	.string	"touch_pad_set_voltage"
.LASF27:
	.string	"GPIO_MODE_OUTPUT"
.LASF166:
	.string	"network_password"
.LASF53:
	.string	"ESP_SLEEP_WAKEUP_TOUCHPAD"
.LASF189:
	.string	"sleep_time_ms"
.LASF33:
	.string	"TOUCH_HVOLT_2V5"
.LASF34:
	.string	"TOUCH_HVOLT_2V6"
.LASF35:
	.string	"TOUCH_HVOLT_2V7"
.LASF184:
	.string	"check_for_updates"
.LASF203:
	.string	"esp_event_loop_init"
.LASF177:
	.string	"auto_reboot"
.LASF42:
	.string	"TOUCH_LVOLT_MAX"
.LASF81:
	.string	"tcpip_adapter_ip6_info_t"
.LASF57:
	.string	"ESP_LOG_WARN"
.LASF30:
	.string	"GPIO_MODE_INPUT_OUTPUT"
.LASF82:
	.string	"SYSTEM_EVENT_WIFI_READY"
.LASF175:
	.string	"server_firmware_path"
.LASF195:
	.string	"ota_config"
.LASF24:
	.string	"esp_err_t"
.LASF87:
	.string	"SYSTEM_EVENT_STA_DISCONNECTED"
.LASF101:
	.string	"SYSTEM_EVENT_ETH_START"
.LASF16:
	.string	"uint8_t"
.LASF174:
	.string	"server_metadata_path"
.LASF227:
	.string	"esp_sleep_enable_touchpad_wakeup"
.LASF224:
	.string	"touch_pad_filter_start"
.LASF185:
	.string	"calibrate_touch_pads"
.LASF136:
	.string	"rssi"
.LASF83:
	.string	"SYSTEM_EVENT_SCAN_DONE"
.LASF182:
	.string	"init_wifi"
.LASF213:
	.string	"gpio_pad_select_gpio"
.LASF89:
	.string	"SYSTEM_EVENT_STA_GOT_IP"
.LASF99:
	.string	"SYSTEM_EVENT_AP_PROBEREQRECVED"
.LASF180:
	.string	"result"
.LASF204:
	.string	"wifi_sta_get_event_group"
.LASF95:
	.string	"SYSTEM_EVENT_AP_START"
.LASF63:
	.string	"WIFI_AUTH_WEP"
.LASF206:
	.string	"wifi_sta_is_connected"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-61-gab8375a) 5.2.0"
