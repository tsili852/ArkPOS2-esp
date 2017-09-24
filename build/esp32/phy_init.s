	.file	"phy_init.c"
	.text
.Ltext0:
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC0:
	.string	"cal_version"
	.align	4
.LC3:
	.string	"cal_mac"
	.align	4
.LC6:
	.string	"phy_init"
	.align	4
.LC8:
	.string	"\033[0;31mE (%d) %s: %s: calibration data MAC check failed: expected %02x:%02x:%02x:%02x:%02x:%02x, found %02x:%02x:%02x:%02x:%02x:%02x\033[0m\n"
	.align	4
.LC10:
	.string	"cal_data"
	.align	4
.LC12:
	.string	"\033[0;31mE (%d) %s: %s: failed to get cal_data(0x%x)\033[0m\n"
	.section	.text.load_cal_data_from_nvs_handle,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.literal .LC2, -65537
	.literal .LC4, .LC3
	.literal .LC5, __func__$5036
	.literal .LC7, .LC6
	.literal .LC9, .LC8
	.literal .LC11, .LC10
	.literal .LC13, .LC12
	.align	4
	.type	load_cal_data_from_nvs_handle, @function
load_cal_data_from_nvs_handle:
.LFB14:
	.file 1 "C:/esp/esp-idf/components/esp32/phy_init.c"
	.loc 1 192 0
.LVL0:
	entry	sp, 112
.LCFI0:
	mov.n	a4, a2
	.loc 1 195 0
	addi	a12, sp, 48
	l32r	a11, .LC1
	mov.n	a10, a2
	call8	nvs_get_u32
.LVL1:
	.loc 1 196 0
	bnez.n	a10, .L5
	.loc 1 200 0
	call8	phy_get_rf_cal_version
.LVL2:
	l32r	a2, .LC2
.LVL3:
	and	a10, a10, a2
.LVL4:
	.loc 1 202 0
	l32i.n	a2, sp, 48
	bne	a10, a2, .L6
	.loc 1 208 0
	movi.n	a2, 6
	s32i.n	a2, sp, 60
	.loc 1 209 0
	addi	a13, sp, 60
	addi	a12, sp, 52
	l32r	a11, .LC4
	mov.n	a10, a4
.LVL5:
	call8	nvs_get_blob
.LVL6:
	.loc 1 210 0
	bnez.n	a10, .L7
	.loc 1 214 0
	l32i.n	a2, sp, 60
	bnei	a2, 6, .L8
	.loc 1 219 0
	addi	a10, sp, 64
.LVL7:
	call8	esp_efuse_mac_get_default
.LVL8:
	.loc 1 220 0
	movi.n	a12, 6
	addi	a11, sp, 52
	addi	a10, sp, 64
	call8	memcmp
.LVL9:
	mov.n	a2, a10
	beqz.n	a10, .L3
	.loc 1 221 0 discriminator 1
	call8	esp_log_timestamp
.LVL10:
	l8ui	a2, sp, 64
	l8ui	a3, sp, 65
.LVL11:
	l8ui	a4, sp, 66
.LVL12:
	l8ui	a8, sp, 67
	l8ui	a9, sp, 68
	l8ui	a12, sp, 69
	l8ui	a13, sp, 52
	l8ui	a14, sp, 53
	l8ui	a15, sp, 54
	l8ui	a5, sp, 55
	l8ui	a6, sp, 56
	l8ui	a7, sp, 57
	l32r	a11, .LC7
	s32i.n	a7, sp, 44
	s32i.n	a6, sp, 40
	s32i.n	a5, sp, 36
	s32i.n	a15, sp, 32
	s32i.n	a14, sp, 28
	s32i.n	a13, sp, 24
	s32i.n	a12, sp, 20
	s32i.n	a9, sp, 16
	s32i.n	a8, sp, 12
	s32i.n	a4, sp, 8
	s32i.n	a3, sp, 4
	s32i.n	a2, sp, 0
	l32r	a15, .LC5
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC9
	movi.n	a10, 1
	call8	esp_log_write
.LVL13:
	.loc 1 224 0 discriminator 1
	movi.n	a2, -1
	retw.n
.LVL14:
.L3:
	.loc 1 226 0
	movi	a8, 0x770
	s32i.n	a8, sp, 60
	.loc 1 227 0
	addi	a13, sp, 60
	mov.n	a12, a3
	l32r	a11, .LC11
	mov.n	a10, a4
	call8	nvs_get_blob
.LVL15:
	mov.n	a3, a10
.LVL16:
	.loc 1 228 0
	beqz.n	a10, .L4
	.loc 1 229 0 discriminator 1
	call8	esp_log_timestamp
.LVL17:
	l32r	a11, .LC7
	s32i.n	a3, sp, 0
	l32r	a15, .LC5
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC13
	movi.n	a10, 1
	call8	esp_log_write
.LVL18:
	.loc 1 230 0 discriminator 1
	mov.n	a2, a3
	retw.n
.L4:
	.loc 1 232 0
	movi	a3, 0x770
.LVL19:
	l32i.n	a4, sp, 60
.LVL20:
	beq	a4, a3, .L2
	.loc 1 234 0
	movi	a2, 0x104
	retw.n
.LVL21:
.L5:
	.loc 1 198 0
	mov.n	a2, a10
.LVL22:
	retw.n
.LVL23:
.L6:
	.loc 1 205 0
	movi.n	a2, -1
	retw.n
.LVL24:
.L7:
	.loc 1 212 0
	mov.n	a2, a10
	retw.n
.L8:
	.loc 1 216 0
	movi	a2, 0x104
.LVL25:
.L2:
	.loc 1 237 0
	retw.n
.LFE14:
	.size	load_cal_data_from_nvs_handle, .-load_cal_data_from_nvs_handle
	.section	.text.store_cal_data_to_nvs_handle,"ax",@progbits
	.literal_position
	.literal .LC14, -65537
	.literal .LC15, .LC0
	.literal .LC16, .LC3
	.literal .LC17, .LC10
	.align	4
	.type	store_cal_data_to_nvs_handle, @function
store_cal_data_to_nvs_handle:
.LFB15:
	.loc 1 241 0
.LVL26:
	entry	sp, 48
.LCFI1:
	.loc 1 243 0
	call8	phy_get_rf_cal_version
.LVL27:
	.loc 1 245 0
	l32r	a12, .LC14
	and	a12, a10, a12
.LVL28:
	l32r	a11, .LC15
	mov.n	a10, a2
	call8	nvs_set_u32
.LVL29:
	.loc 1 246 0
	bnez.n	a10, .L11
	.loc 1 250 0
	mov.n	a10, sp
.LVL30:
	call8	esp_efuse_mac_get_default
.LVL31:
	.loc 1 251 0
	movi.n	a13, 6
	mov.n	a12, sp
	l32r	a11, .LC16
	mov.n	a10, a2
	call8	nvs_set_blob
.LVL32:
	.loc 1 252 0
	bnez.n	a10, .L12
	.loc 1 255 0
	movi	a13, 0x770
	mov.n	a12, a3
	l32r	a11, .LC17
	mov.n	a10, a2
.LVL33:
	call8	nvs_set_blob
.LVL34:
	mov.n	a2, a10
.LVL35:
	.loc 1 256 0
	retw.n
.LVL36:
.L11:
	.loc 1 247 0
	mov.n	a2, a10
.LVL37:
	retw.n
.LVL38:
.L12:
	.loc 1 253 0
	mov.n	a2, a10
.LVL39:
	.loc 1 257 0
	retw.n
.LFE15:
	.size	store_cal_data_to_nvs_handle, .-store_cal_data_to_nvs_handle
	.section	.rodata.str1.4
	.align	4
.LC19:
	.string	"(s_phy_rf_init_count <= 1) && (s_phy_rf_init_count >= 0)"
	.align	4
.LC22:
	.string	"C:/esp/esp-idf/components/esp32/phy_init.c"
	.section	.text.esp_phy_rf_init,"ax",@progbits
	.literal_position
	.literal .LC18, s_phy_rf_init_count
	.literal .LC20, .LC19
	.literal .LC21, __func__$4998
	.literal .LC23, .LC22
	.literal .LC24, s_phy_rf_init_lock
	.literal .LC25, 1072693452
	.literal .LC26, 34767
	.align	4
	.global	esp_phy_rf_init
	.type	esp_phy_rf_init, @function
esp_phy_rf_init:
.LFB8:
	.loc 1 48 0
.LVL40:
	entry	sp, 32
.LCFI2:
	.loc 1 49 0
	l32r	a8, .LC18
	l32i.n	a8, a8, 0
	bltui	a8, 2, .L14
	.loc 1 49 0 is_stmt 0 discriminator 1
	l32r	a13, .LC20
	l32r	a12, .LC21
	movi.n	a11, 0x31
	l32r	a10, .LC23
	call8	__assert_func
.LVL41:
.L14:
	.loc 1 51 0 is_stmt 1
	l32r	a10, .LC24
	call8	_lock_acquire
.LVL42:
	.loc 1 52 0
	l32r	a8, .LC18
	l32i.n	a8, a8, 0
	bnez.n	a8, .L15
.LVL43:
.LBB6:
.LBB7:
	.file 2 "C:/esp/esp-idf/components/soc/esp32/include/soc/dport_access.h"
	.loc 2 102 0
	l32r	a9, .LC25
	memw
	l32i.n	a10, a9, 0
.LVL44:
.LBE7:
.LBE6:
	.loc 1 54 0
	l32r	a8, .LC26
	or	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
	.loc 1 57 0
	movi.n	a10, 0
.LVL45:
	call8	phy_set_wifi_mode_only
.LVL46:
	.loc 1 58 0
	mov.n	a12, a3
	mov.n	a11, a4
	mov.n	a10, a2
	call8	register_chipv7_phy
.LVL47:
	.loc 1 59 0
	call8	coex_bt_high_prio
.LVL48:
.L15:
	.loc 1 65 0
	l32r	a9, .LC18
	l32i.n	a8, a9, 0
	addi.n	a8, a8, 1
	s32i.n	a8, a9, 0
	.loc 1 66 0
	l32r	a10, .LC24
	call8	_lock_release
.LVL49:
	.loc 1 68 0
	movi.n	a2, 0
.LVL50:
	retw.n
.LFE8:
	.size	esp_phy_rf_init, .-esp_phy_rf_init
	.section	.rodata.str1.4
	.align	4
.LC28:
	.string	"(s_phy_rf_init_count <= 2) && (s_phy_rf_init_count >= 1)"
	.section	.text.esp_phy_rf_deinit,"ax",@progbits
	.literal_position
	.literal .LC27, s_phy_rf_init_count
	.literal .LC29, .LC28
	.literal .LC30, __func__$5002
	.literal .LC31, .LC22
	.literal .LC32, s_phy_rf_init_lock
	.literal .LC33, 1072693452
	.align	4
	.global	esp_phy_rf_deinit
	.type	esp_phy_rf_deinit, @function
esp_phy_rf_deinit:
.LFB9:
	.loc 1 71 0
	entry	sp, 32
.LCFI3:
	.loc 1 72 0
	l32r	a8, .LC27
	l32i.n	a8, a8, 0
	addi.n	a8, a8, -1
	bltui	a8, 2, .L17
	.loc 1 72 0 is_stmt 0 discriminator 1
	l32r	a13, .LC29
	l32r	a12, .LC30
	movi.n	a11, 0x48
	l32r	a10, .LC31
	call8	__assert_func
.LVL51:
.L17:
	.loc 1 74 0 is_stmt 1
	l32r	a10, .LC32
	call8	_lock_acquire
.LVL52:
	.loc 1 75 0
	l32r	a8, .LC27
	l32i.n	a8, a8, 0
	bnei	a8, 1, .L18
	.loc 1 77 0
	call8	phy_close_rf
.LVL53:
.LBB8:
.LBB9:
	.loc 2 102 0
	l32r	a9, .LC33
	memw
	l32i.n	a10, a9, 0
.LVL54:
.LBE9:
.LBE8:
	.loc 1 79 0
	movi	a8, -0x7d0
	and	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
.LVL55:
.L18:
	.loc 1 85 0
	l32r	a9, .LC27
	l32i.n	a8, a9, 0
	addi.n	a8, a8, -1
	s32i.n	a8, a9, 0
	.loc 1 86 0
	l32r	a10, .LC32
	call8	_lock_release
.LVL56:
	.loc 1 88 0
	movi.n	a2, 0
	retw.n
.LFE9:
	.size	esp_phy_rf_deinit, .-esp_phy_rf_deinit
	.section	.text.esp_phy_get_init_data,"ax",@progbits
	.literal_position
	.literal .LC34, phy_init_data
	.align	4
	.global	esp_phy_get_init_data
	.type	esp_phy_get_init_data, @function
esp_phy_get_init_data:
.LFB10:
	.loc 1 135 0
	entry	sp, 32
.LCFI4:
	.loc 1 138 0
	l32r	a2, .LC34
	retw.n
.LFE10:
	.size	esp_phy_get_init_data, .-esp_phy_get_init_data
	.section	.text.esp_phy_release_init_data,"ax",@progbits
	.align	4
	.global	esp_phy_release_init_data
	.type	esp_phy_release_init_data, @function
esp_phy_release_init_data:
.LFB11:
	.loc 1 141 0
.LVL57:
	entry	sp, 32
.LCFI5:
	retw.n
.LFE11:
	.size	esp_phy_release_init_data, .-esp_phy_release_init_data
	.section	.rodata.str1.4
	.align	4
.LC35:
	.string	"phy"
	.align	4
.LC40:
	.string	"\033[0;31mE (%d) %s: %s: NVS has not been initialized. Call nvs_flash_init before starting WiFi/BT.\033[0m\n"
	.section	.text.esp_phy_load_cal_data_from_nvs,"ax",@progbits
	.literal_position
	.literal .LC36, .LC35
	.literal .LC37, 4353
	.literal .LC38, __func__$5023
	.literal .LC39, .LC6
	.literal .LC41, .LC40
	.align	4
	.global	esp_phy_load_cal_data_from_nvs
	.type	esp_phy_load_cal_data_from_nvs, @function
esp_phy_load_cal_data_from_nvs:
.LFB12:
	.loc 1 160 0
.LVL58:
	.loc 1 160 0
	entry	sp, 48
.LCFI6:
	.loc 1 162 0
	mov.n	a12, sp
	movi.n	a11, 0
	l32r	a10, .LC36
	call8	nvs_open
.LVL59:
	.loc 1 163 0
	l32r	a8, .LC37
	bne	a10, a8, .L22
	.loc 1 164 0 discriminator 1
	call8	esp_log_timestamp
.LVL60:
	l32r	a11, .LC39
	l32r	a15, .LC38
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC41
	movi.n	a10, 1
	call8	esp_log_write
.LVL61:
	j	.L23
.LVL62:
.L22:
	.loc 1 166 0
	bnez.n	a10, .L25
.LVL63:
.L23:
	.loc 1 170 0
	mov.n	a11, a2
	l32i.n	a10, sp, 0
	call8	load_cal_data_from_nvs_handle
.LVL64:
	mov.n	a2, a10
.LVL65:
	.loc 1 171 0
	l32i.n	a10, sp, 0
	call8	nvs_close
.LVL66:
	.loc 1 172 0
	retw.n
.LVL67:
.L25:
	.loc 1 168 0
	mov.n	a2, a10
.LVL68:
	.loc 1 173 0
	retw.n
.LFE12:
	.size	esp_phy_load_cal_data_from_nvs, .-esp_phy_load_cal_data_from_nvs
	.section	.text.esp_phy_store_cal_data_to_nvs,"ax",@progbits
	.literal_position
	.literal .LC42, .LC35
	.align	4
	.global	esp_phy_store_cal_data_to_nvs
	.type	esp_phy_store_cal_data_to_nvs, @function
esp_phy_store_cal_data_to_nvs:
.LFB13:
	.loc 1 176 0
.LVL69:
	entry	sp, 48
.LCFI7:
	.loc 1 178 0
	mov.n	a12, sp
	movi.n	a11, 1
	l32r	a10, .LC42
	call8	nvs_open
.LVL70:
	.loc 1 179 0
	bnez.n	a10, .L28
	.loc 1 184 0
	mov.n	a11, a2
	l32i.n	a10, sp, 0
.LVL71:
	call8	store_cal_data_to_nvs_handle
.LVL72:
	mov.n	a2, a10
.LVL73:
	.loc 1 185 0
	l32i.n	a10, sp, 0
	call8	nvs_close
.LVL74:
	.loc 1 186 0
	retw.n
.LVL75:
.L28:
	.loc 1 181 0
	mov.n	a2, a10
.LVL76:
	.loc 1 188 0
	retw.n
.LFE13:
	.size	esp_phy_store_cal_data_to_nvs, .-esp_phy_store_cal_data_to_nvs
	.section	.rodata.str1.4
	.align	4
.LC44:
	.string	"\033[0;31mE (%d) %s: failed to allocate memory for RF calibration data\033[0m\n"
	.align	4
.LC46:
	.string	"\033[0;31mE (%d) %s: failed to obtain PHY init data\033[0m\n"
	.align	4
.LC48:
	.string	"\033[0;33mW (%d) %s: failed to load RF calibration data (0x%x), falling back to full calibration\033[0m\n"
	.section	.text.esp_phy_load_cal_and_init,"ax",@progbits
	.literal_position
	.literal .LC43, .LC6
	.literal .LC45, .LC44
	.literal .LC47, .LC46
	.literal .LC49, .LC48
	.align	4
	.global	esp_phy_load_cal_and_init
	.type	esp_phy_load_cal_and_init, @function
esp_phy_load_cal_and_init:
.LFB16:
	.loc 1 260 0
	entry	sp, 32
.LCFI8:
	.loc 1 261 0
	movi.n	a11, 1
	movi	a10, 0x770
	call8	calloc
.LVL77:
	mov.n	a3, a10
.LVL78:
	.loc 1 263 0
	bnez.n	a10, .L30
	.loc 1 264 0 discriminator 1
	call8	esp_log_timestamp
.LVL79:
	l32r	a11, .LC43
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC45
	movi.n	a10, 1
	call8	esp_log_write
.LVL80:
	.loc 1 265 0 discriminator 1
	call8	abort
.LVL81:
.L30:
	.loc 1 270 0
	movi.n	a10, 0
	call8	rtc_get_reset_reason
.LVL82:
	beqi	a10, 5, .L35
	.loc 1 269 0
	movi.n	a2, 0
	j	.L31
.L35:
	.loc 1 271 0
	movi.n	a2, 1
.L31:
.LVL83:
	.loc 1 273 0
	call8	esp_phy_get_init_data
.LVL84:
	mov.n	a5, a10
.LVL85:
	.loc 1 274 0
	bnez.n	a10, .L32
	.loc 1 275 0 discriminator 1
	call8	esp_log_timestamp
.LVL86:
	l32r	a11, .LC43
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC47
	movi.n	a10, 1
	call8	esp_log_write
.LVL87:
	.loc 1 276 0 discriminator 1
	call8	abort
.LVL88:
.L32:
	.loc 1 279 0
	mov.n	a10, a3
	call8	esp_phy_load_cal_data_from_nvs
.LVL89:
	mov.n	a4, a10
.LVL90:
	.loc 1 280 0
	beqz.n	a10, .L33
	.loc 1 281 0 discriminator 1
	call8	esp_log_timestamp
.LVL91:
	l32r	a11, .LC43
	mov.n	a15, a4
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC49
	movi.n	a10, 2
	call8	esp_log_write
.LVL92:
	.loc 1 282 0 discriminator 1
	movi.n	a2, 2
.LVL93:
.L33:
	.loc 1 285 0
	mov.n	a12, a3
	mov.n	a11, a2
	mov.n	a10, a5
	call8	esp_phy_rf_init
.LVL94:
	.loc 1 287 0
	addi.n	a2, a2, -1
.LVL95:
	movi.n	a9, 1
	movi.n	a8, 0
	mov.n	a5, a8
.LVL96:
	movnez	a5, a9, a2
	mov.n	a2, a5
.LVL97:
	movnez	a8, a9, a4
	mov.n	a4, a8
.LVL98:
	bnone	a8, a5, .L34
	.loc 1 288 0
	mov.n	a10, a3
	call8	esp_phy_store_cal_data_to_nvs
.LVL99:
.L34:
	.loc 1 297 0
	mov.n	a10, a3
	call8	free
.LVL100:
	retw.n
.LFE16:
	.size	esp_phy_load_cal_and_init, .-esp_phy_load_cal_and_init
	.section	.rodata.__func__$5036,"a",@progbits
	.align	4
	.type	__func__$5036, @object
	.size	__func__$5036, 30
__func__$5036:
	.string	"load_cal_data_from_nvs_handle"
	.section	.rodata.__func__$5023,"a",@progbits
	.align	4
	.type	__func__$5023, @object
	.size	__func__$5023, 31
__func__$5023:
	.string	"esp_phy_load_cal_data_from_nvs"
	.section	.rodata.__func__$5002,"a",@progbits
	.align	4
	.type	__func__$5002, @object
	.size	__func__$5002, 18
__func__$5002:
	.string	"esp_phy_rf_deinit"
	.section	.rodata.__func__$4998,"a",@progbits
	.align	4
	.type	__func__$4998, @object
	.size	__func__$4998, 16
__func__$4998:
	.string	"esp_phy_rf_init"
	.section	.bss.s_phy_rf_init_lock,"aw",@nobits
	.align	4
	.type	s_phy_rf_init_lock, @object
	.size	s_phy_rf_init_lock, 4
s_phy_rf_init_lock:
	.zero	4
	.section	.bss.s_phy_rf_init_count,"aw",@nobits
	.align	4
	.type	s_phy_rf_init_count, @object
	.size	s_phy_rf_init_count, 4
s_phy_rf_init_count:
	.zero	4
	.section	.rodata.phy_init_data,"a",@progbits
	.align	4
	.type	phy_init_data, @object
	.size	phy_init_data, 128
phy_init_data:
	.byte	1
	.byte	3
	.byte	5
	.byte	4
	.byte	6
	.byte	5
	.byte	1
	.byte	6
	.byte	5
	.byte	4
	.byte	6
	.byte	4
	.byte	5
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	5
	.byte	4
	.byte	6
	.byte	5
	.byte	1
	.byte	6
	.byte	5
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	10
	.byte	10
	.byte	12
	.byte	-16
	.byte	-16
	.byte	-16
	.byte	-32
	.byte	-32
	.byte	-32
	.byte	24
	.byte	24
	.byte	24
	.byte	78
	.byte	76
	.byte	74
	.byte	68
	.byte	60
	.byte	52
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	5
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.zero	22
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
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI0-.LFB14
	.byte	0xe
	.uleb128 0x70
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
	.uleb128 0x30
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI2-.LFB8
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
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI4-.LFB10
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI5-.LFB11
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI6-.LFB12
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI7-.LFB13
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI8-.LFB16
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
	.text
.Letext0:
	.file 3 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 4 "C:/esp/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 5 "C:/esp/esp-idf/components/newlib/include/sys/lock.h"
	.file 6 "C:/esp/esp-idf/components/newlib/include/stdint.h"
	.file 7 "C:/esp/esp-idf/components/esp32/include/esp_err.h"
	.file 8 "C:/esp/esp-idf/components/esp32/include/esp_phy_init.h"
	.file 9 "C:/esp/esp-idf/components/esp32/include/rom/rtc.h"
	.file 10 "C:/esp/esp-idf/components/log/include/esp_log.h"
	.file 11 "C:/esp/esp-idf/components/nvs_flash/include/nvs.h"
	.file 12 "C:/esp/esp-idf/components/esp32/phy_init_data.h"
	.file 13 "C:/esp/esp-idf/components/esp32/phy.h"
	.file 14 "C:/esp/esp-idf/components/esp32/include/esp_system.h"
	.file 15 "C:/esp/esp-idf/components/newlib/include/string.h"
	.file 16 "C:/esp/esp-idf/components/newlib/include/assert.h"
	.file 17 "C:/esp/esp-idf/components/newlib/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1183
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF212
	.byte	0xc
	.4byte	.LASF213
	.4byte	.LASF214
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF3
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
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x4
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
	.byte	0x4
	.byte	0x19
	.4byte	0x25
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x4
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
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x5
	.byte	0xb
	.4byte	0x25
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x5
	.byte	0x4
	.4byte	0xb6
	.uleb128 0x6
	.4byte	0xa9
	.uleb128 0x7
	.4byte	0xa9
	.4byte	0xcb
	.uleb128 0x8
	.4byte	0x9b
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x6
	.byte	0x15
	.4byte	0x4c
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x6
	.byte	0x2c
	.4byte	0x65
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x6
	.byte	0x2d
	.4byte	0x70
	.uleb128 0x9
	.byte	0x4
	.4byte	0x37
	.byte	0x9
	.byte	0x50
	.4byte	0x159
	.uleb128 0xa
	.4byte	.LASF19
	.byte	0
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0x6
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0x7
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x9
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0xa
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0xb
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF31
	.byte	0xd
	.uleb128 0xa
	.4byte	.LASF32
	.byte	0xe
	.uleb128 0xa
	.4byte	.LASF33
	.byte	0xf
	.uleb128 0xa
	.4byte	.LASF34
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.4byte	.LASF35
	.byte	0x7
	.byte	0x18
	.4byte	0xd6
	.uleb128 0xb
	.byte	0x80
	.byte	0x8
	.byte	0x20
	.4byte	0x665
	.uleb128 0xc
	.4byte	.LASF36
	.byte	0x8
	.byte	0x21
	.4byte	0xcb
	.byte	0
	.uleb128 0xc
	.4byte	.LASF37
	.byte	0x8
	.byte	0x22
	.4byte	0xcb
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF38
	.byte	0x8
	.byte	0x23
	.4byte	0xcb
	.byte	0x2
	.uleb128 0xc
	.4byte	.LASF39
	.byte	0x8
	.byte	0x24
	.4byte	0xcb
	.byte	0x3
	.uleb128 0xc
	.4byte	.LASF40
	.byte	0x8
	.byte	0x25
	.4byte	0xcb
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF41
	.byte	0x8
	.byte	0x26
	.4byte	0xcb
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF42
	.byte	0x8
	.byte	0x27
	.4byte	0xcb
	.byte	0x6
	.uleb128 0xc
	.4byte	.LASF43
	.byte	0x8
	.byte	0x28
	.4byte	0xcb
	.byte	0x7
	.uleb128 0xc
	.4byte	.LASF44
	.byte	0x8
	.byte	0x29
	.4byte	0xcb
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF45
	.byte	0x8
	.byte	0x2a
	.4byte	0xcb
	.byte	0x9
	.uleb128 0xc
	.4byte	.LASF46
	.byte	0x8
	.byte	0x2b
	.4byte	0xcb
	.byte	0xa
	.uleb128 0xc
	.4byte	.LASF47
	.byte	0x8
	.byte	0x2c
	.4byte	0xcb
	.byte	0xb
	.uleb128 0xc
	.4byte	.LASF48
	.byte	0x8
	.byte	0x2d
	.4byte	0xcb
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF49
	.byte	0x8
	.byte	0x2e
	.4byte	0xcb
	.byte	0xd
	.uleb128 0xc
	.4byte	.LASF50
	.byte	0x8
	.byte	0x2f
	.4byte	0xcb
	.byte	0xe
	.uleb128 0xc
	.4byte	.LASF51
	.byte	0x8
	.byte	0x30
	.4byte	0xcb
	.byte	0xf
	.uleb128 0xc
	.4byte	.LASF52
	.byte	0x8
	.byte	0x31
	.4byte	0xcb
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF53
	.byte	0x8
	.byte	0x32
	.4byte	0xcb
	.byte	0x11
	.uleb128 0xc
	.4byte	.LASF54
	.byte	0x8
	.byte	0x33
	.4byte	0xcb
	.byte	0x12
	.uleb128 0xc
	.4byte	.LASF55
	.byte	0x8
	.byte	0x34
	.4byte	0xcb
	.byte	0x13
	.uleb128 0xc
	.4byte	.LASF56
	.byte	0x8
	.byte	0x35
	.4byte	0xcb
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF57
	.byte	0x8
	.byte	0x36
	.4byte	0xcb
	.byte	0x15
	.uleb128 0xc
	.4byte	.LASF58
	.byte	0x8
	.byte	0x37
	.4byte	0xcb
	.byte	0x16
	.uleb128 0xc
	.4byte	.LASF59
	.byte	0x8
	.byte	0x38
	.4byte	0xcb
	.byte	0x17
	.uleb128 0xc
	.4byte	.LASF60
	.byte	0x8
	.byte	0x39
	.4byte	0xcb
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF61
	.byte	0x8
	.byte	0x3a
	.4byte	0xcb
	.byte	0x19
	.uleb128 0xc
	.4byte	.LASF62
	.byte	0x8
	.byte	0x3b
	.4byte	0xcb
	.byte	0x1a
	.uleb128 0xc
	.4byte	.LASF63
	.byte	0x8
	.byte	0x3c
	.4byte	0xcb
	.byte	0x1b
	.uleb128 0xc
	.4byte	.LASF64
	.byte	0x8
	.byte	0x3d
	.4byte	0xcb
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF65
	.byte	0x8
	.byte	0x3e
	.4byte	0xcb
	.byte	0x1d
	.uleb128 0xc
	.4byte	.LASF66
	.byte	0x8
	.byte	0x3f
	.4byte	0xcb
	.byte	0x1e
	.uleb128 0xc
	.4byte	.LASF67
	.byte	0x8
	.byte	0x40
	.4byte	0xcb
	.byte	0x1f
	.uleb128 0xc
	.4byte	.LASF68
	.byte	0x8
	.byte	0x41
	.4byte	0xcb
	.byte	0x20
	.uleb128 0xc
	.4byte	.LASF69
	.byte	0x8
	.byte	0x42
	.4byte	0xcb
	.byte	0x21
	.uleb128 0xc
	.4byte	.LASF70
	.byte	0x8
	.byte	0x43
	.4byte	0xcb
	.byte	0x22
	.uleb128 0xc
	.4byte	.LASF71
	.byte	0x8
	.byte	0x44
	.4byte	0xcb
	.byte	0x23
	.uleb128 0xc
	.4byte	.LASF72
	.byte	0x8
	.byte	0x45
	.4byte	0xcb
	.byte	0x24
	.uleb128 0xc
	.4byte	.LASF73
	.byte	0x8
	.byte	0x46
	.4byte	0xcb
	.byte	0x25
	.uleb128 0xc
	.4byte	.LASF74
	.byte	0x8
	.byte	0x47
	.4byte	0xcb
	.byte	0x26
	.uleb128 0xc
	.4byte	.LASF75
	.byte	0x8
	.byte	0x48
	.4byte	0xcb
	.byte	0x27
	.uleb128 0xc
	.4byte	.LASF76
	.byte	0x8
	.byte	0x49
	.4byte	0xcb
	.byte	0x28
	.uleb128 0xc
	.4byte	.LASF77
	.byte	0x8
	.byte	0x4a
	.4byte	0xcb
	.byte	0x29
	.uleb128 0xc
	.4byte	.LASF78
	.byte	0x8
	.byte	0x4b
	.4byte	0xcb
	.byte	0x2a
	.uleb128 0xc
	.4byte	.LASF79
	.byte	0x8
	.byte	0x4c
	.4byte	0xcb
	.byte	0x2b
	.uleb128 0xc
	.4byte	.LASF80
	.byte	0x8
	.byte	0x4d
	.4byte	0xcb
	.byte	0x2c
	.uleb128 0xc
	.4byte	.LASF81
	.byte	0x8
	.byte	0x4e
	.4byte	0xcb
	.byte	0x2d
	.uleb128 0xc
	.4byte	.LASF82
	.byte	0x8
	.byte	0x4f
	.4byte	0xcb
	.byte	0x2e
	.uleb128 0xc
	.4byte	.LASF83
	.byte	0x8
	.byte	0x50
	.4byte	0xcb
	.byte	0x2f
	.uleb128 0xc
	.4byte	.LASF84
	.byte	0x8
	.byte	0x51
	.4byte	0xcb
	.byte	0x30
	.uleb128 0xc
	.4byte	.LASF85
	.byte	0x8
	.byte	0x52
	.4byte	0xcb
	.byte	0x31
	.uleb128 0xc
	.4byte	.LASF86
	.byte	0x8
	.byte	0x53
	.4byte	0xcb
	.byte	0x32
	.uleb128 0xc
	.4byte	.LASF87
	.byte	0x8
	.byte	0x54
	.4byte	0xcb
	.byte	0x33
	.uleb128 0xc
	.4byte	.LASF88
	.byte	0x8
	.byte	0x55
	.4byte	0xcb
	.byte	0x34
	.uleb128 0xc
	.4byte	.LASF89
	.byte	0x8
	.byte	0x56
	.4byte	0xcb
	.byte	0x35
	.uleb128 0xc
	.4byte	.LASF90
	.byte	0x8
	.byte	0x57
	.4byte	0xcb
	.byte	0x36
	.uleb128 0xc
	.4byte	.LASF91
	.byte	0x8
	.byte	0x58
	.4byte	0xcb
	.byte	0x37
	.uleb128 0xc
	.4byte	.LASF92
	.byte	0x8
	.byte	0x59
	.4byte	0xcb
	.byte	0x38
	.uleb128 0xc
	.4byte	.LASF93
	.byte	0x8
	.byte	0x5a
	.4byte	0xcb
	.byte	0x39
	.uleb128 0xc
	.4byte	.LASF94
	.byte	0x8
	.byte	0x5b
	.4byte	0xcb
	.byte	0x3a
	.uleb128 0xc
	.4byte	.LASF95
	.byte	0x8
	.byte	0x5c
	.4byte	0xcb
	.byte	0x3b
	.uleb128 0xc
	.4byte	.LASF96
	.byte	0x8
	.byte	0x5d
	.4byte	0xcb
	.byte	0x3c
	.uleb128 0xc
	.4byte	.LASF97
	.byte	0x8
	.byte	0x5e
	.4byte	0xcb
	.byte	0x3d
	.uleb128 0xc
	.4byte	.LASF98
	.byte	0x8
	.byte	0x5f
	.4byte	0xcb
	.byte	0x3e
	.uleb128 0xc
	.4byte	.LASF99
	.byte	0x8
	.byte	0x60
	.4byte	0xcb
	.byte	0x3f
	.uleb128 0xc
	.4byte	.LASF100
	.byte	0x8
	.byte	0x61
	.4byte	0xcb
	.byte	0x40
	.uleb128 0xc
	.4byte	.LASF101
	.byte	0x8
	.byte	0x62
	.4byte	0xcb
	.byte	0x41
	.uleb128 0xc
	.4byte	.LASF102
	.byte	0x8
	.byte	0x63
	.4byte	0xcb
	.byte	0x42
	.uleb128 0xc
	.4byte	.LASF103
	.byte	0x8
	.byte	0x64
	.4byte	0xcb
	.byte	0x43
	.uleb128 0xc
	.4byte	.LASF104
	.byte	0x8
	.byte	0x65
	.4byte	0xcb
	.byte	0x44
	.uleb128 0xc
	.4byte	.LASF105
	.byte	0x8
	.byte	0x66
	.4byte	0xcb
	.byte	0x45
	.uleb128 0xc
	.4byte	.LASF106
	.byte	0x8
	.byte	0x67
	.4byte	0xcb
	.byte	0x46
	.uleb128 0xc
	.4byte	.LASF107
	.byte	0x8
	.byte	0x68
	.4byte	0xcb
	.byte	0x47
	.uleb128 0xc
	.4byte	.LASF108
	.byte	0x8
	.byte	0x69
	.4byte	0xcb
	.byte	0x48
	.uleb128 0xc
	.4byte	.LASF109
	.byte	0x8
	.byte	0x6a
	.4byte	0xcb
	.byte	0x49
	.uleb128 0xc
	.4byte	.LASF110
	.byte	0x8
	.byte	0x6b
	.4byte	0xcb
	.byte	0x4a
	.uleb128 0xc
	.4byte	.LASF111
	.byte	0x8
	.byte	0x6c
	.4byte	0xcb
	.byte	0x4b
	.uleb128 0xc
	.4byte	.LASF112
	.byte	0x8
	.byte	0x6d
	.4byte	0xcb
	.byte	0x4c
	.uleb128 0xc
	.4byte	.LASF113
	.byte	0x8
	.byte	0x6e
	.4byte	0xcb
	.byte	0x4d
	.uleb128 0xc
	.4byte	.LASF114
	.byte	0x8
	.byte	0x6f
	.4byte	0xcb
	.byte	0x4e
	.uleb128 0xc
	.4byte	.LASF115
	.byte	0x8
	.byte	0x70
	.4byte	0xcb
	.byte	0x4f
	.uleb128 0xc
	.4byte	.LASF116
	.byte	0x8
	.byte	0x71
	.4byte	0xcb
	.byte	0x50
	.uleb128 0xc
	.4byte	.LASF117
	.byte	0x8
	.byte	0x72
	.4byte	0xcb
	.byte	0x51
	.uleb128 0xc
	.4byte	.LASF118
	.byte	0x8
	.byte	0x73
	.4byte	0xcb
	.byte	0x52
	.uleb128 0xc
	.4byte	.LASF119
	.byte	0x8
	.byte	0x74
	.4byte	0xcb
	.byte	0x53
	.uleb128 0xc
	.4byte	.LASF120
	.byte	0x8
	.byte	0x75
	.4byte	0xcb
	.byte	0x54
	.uleb128 0xc
	.4byte	.LASF121
	.byte	0x8
	.byte	0x76
	.4byte	0xcb
	.byte	0x55
	.uleb128 0xc
	.4byte	.LASF122
	.byte	0x8
	.byte	0x77
	.4byte	0xcb
	.byte	0x56
	.uleb128 0xc
	.4byte	.LASF123
	.byte	0x8
	.byte	0x78
	.4byte	0xcb
	.byte	0x57
	.uleb128 0xc
	.4byte	.LASF124
	.byte	0x8
	.byte	0x79
	.4byte	0xcb
	.byte	0x58
	.uleb128 0xc
	.4byte	.LASF125
	.byte	0x8
	.byte	0x7a
	.4byte	0xcb
	.byte	0x59
	.uleb128 0xc
	.4byte	.LASF126
	.byte	0x8
	.byte	0x7b
	.4byte	0xcb
	.byte	0x5a
	.uleb128 0xc
	.4byte	.LASF127
	.byte	0x8
	.byte	0x7c
	.4byte	0xcb
	.byte	0x5b
	.uleb128 0xc
	.4byte	.LASF128
	.byte	0x8
	.byte	0x7d
	.4byte	0xcb
	.byte	0x5c
	.uleb128 0xc
	.4byte	.LASF129
	.byte	0x8
	.byte	0x7e
	.4byte	0xcb
	.byte	0x5d
	.uleb128 0xc
	.4byte	.LASF130
	.byte	0x8
	.byte	0x7f
	.4byte	0xcb
	.byte	0x5e
	.uleb128 0xc
	.4byte	.LASF131
	.byte	0x8
	.byte	0x80
	.4byte	0xcb
	.byte	0x5f
	.uleb128 0xc
	.4byte	.LASF132
	.byte	0x8
	.byte	0x81
	.4byte	0xcb
	.byte	0x60
	.uleb128 0xc
	.4byte	.LASF133
	.byte	0x8
	.byte	0x82
	.4byte	0xcb
	.byte	0x61
	.uleb128 0xc
	.4byte	.LASF134
	.byte	0x8
	.byte	0x83
	.4byte	0xcb
	.byte	0x62
	.uleb128 0xc
	.4byte	.LASF135
	.byte	0x8
	.byte	0x84
	.4byte	0xcb
	.byte	0x63
	.uleb128 0xc
	.4byte	.LASF136
	.byte	0x8
	.byte	0x85
	.4byte	0xcb
	.byte	0x64
	.uleb128 0xc
	.4byte	.LASF137
	.byte	0x8
	.byte	0x86
	.4byte	0xcb
	.byte	0x65
	.uleb128 0xc
	.4byte	.LASF138
	.byte	0x8
	.byte	0x87
	.4byte	0xcb
	.byte	0x66
	.uleb128 0xc
	.4byte	.LASF139
	.byte	0x8
	.byte	0x88
	.4byte	0xcb
	.byte	0x67
	.uleb128 0xc
	.4byte	.LASF140
	.byte	0x8
	.byte	0x89
	.4byte	0xcb
	.byte	0x68
	.uleb128 0xc
	.4byte	.LASF141
	.byte	0x8
	.byte	0x8a
	.4byte	0x665
	.byte	0x69
	.byte	0
	.uleb128 0x7
	.4byte	0xcb
	.4byte	0x675
	.uleb128 0x8
	.4byte	0x9b
	.byte	0x16
	.byte	0
	.uleb128 0x3
	.4byte	.LASF142
	.byte	0x8
	.byte	0x8b
	.4byte	0x164
	.uleb128 0xd
	.2byte	0x770
	.byte	0x8
	.byte	0x90
	.4byte	0x696
	.uleb128 0xc
	.4byte	.LASF143
	.byte	0x8
	.byte	0x91
	.4byte	0x696
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0xcb
	.4byte	0x6a7
	.uleb128 0xe
	.4byte	0x9b
	.2byte	0x76f
	.byte	0
	.uleb128 0x3
	.4byte	.LASF144
	.byte	0x8
	.byte	0x92
	.4byte	0x680
	.uleb128 0x9
	.byte	0x4
	.4byte	0x37
	.byte	0x8
	.byte	0x94
	.4byte	0x6d1
	.uleb128 0xa
	.4byte	.LASF145
	.byte	0
	.uleb128 0xa
	.4byte	.LASF146
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF147
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF148
	.byte	0x8
	.byte	0x98
	.4byte	0x6b2
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF149
	.uleb128 0x9
	.byte	0x4
	.4byte	0x37
	.byte	0xa
	.byte	0x1f
	.4byte	0x714
	.uleb128 0xa
	.4byte	.LASF150
	.byte	0
	.uleb128 0xa
	.4byte	.LASF151
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF152
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF153
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF154
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF155
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF156
	.byte	0xa
	.byte	0x26
	.4byte	0x6e3
	.uleb128 0x3
	.4byte	.LASF157
	.byte	0xb
	.byte	0x1d
	.4byte	0xe1
	.uleb128 0x9
	.byte	0x4
	.4byte	0x37
	.byte	0xb
	.byte	0x35
	.4byte	0x743
	.uleb128 0xa
	.4byte	.LASF158
	.byte	0
	.uleb128 0xa
	.4byte	.LASF159
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.4byte	.LASF215
	.byte	0x2
	.byte	0x61
	.4byte	0xe1
	.byte	0x3
	.4byte	0x76a
	.uleb128 0x10
	.4byte	.LASF216
	.byte	0x2
	.byte	0x61
	.4byte	0xe1
	.uleb128 0x11
	.string	"val"
	.byte	0x2
	.byte	0x63
	.4byte	0xe1
	.byte	0
	.uleb128 0x12
	.4byte	.LASF168
	.byte	0x1
	.byte	0xbe
	.4byte	0x159
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x965
	.uleb128 0x13
	.4byte	.LASF160
	.byte	0x1
	.byte	0xbe
	.4byte	0x71f
	.4byte	.LLST0
	.uleb128 0x13
	.4byte	.LASF161
	.byte	0x1
	.byte	0xbf
	.4byte	0x965
	.4byte	.LLST1
	.uleb128 0x14
	.string	"err"
	.byte	0x1
	.byte	0xc1
	.4byte	0x159
	.4byte	.LLST2
	.uleb128 0x15
	.4byte	.LASF162
	.byte	0x1
	.byte	0xc2
	.4byte	0xe1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x16
	.4byte	.LASF163
	.4byte	0x97b
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5036
	.uleb128 0x17
	.4byte	.LASF164
	.byte	0x1
	.byte	0xc8
	.4byte	0xe1
	.4byte	.LLST3
	.uleb128 0x15
	.4byte	.LASF165
	.byte	0x1
	.byte	0xcf
	.4byte	0x980
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x15
	.4byte	.LASF166
	.byte	0x1
	.byte	0xd0
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x15
	.4byte	.LASF167
	.byte	0x1
	.byte	0xda
	.4byte	0x980
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x18
	.4byte	.LVL1
	.4byte	0x1092
	.4byte	0x829
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL2
	.4byte	0x109d
	.uleb128 0x18
	.4byte	.LVL6
	.4byte	0x10a8
	.4byte	0x85b
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x18
	.4byte	.LVL8
	.4byte	0x10b4
	.4byte	0x86f
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x18
	.4byte	.LVL9
	.4byte	0x10bf
	.4byte	0x88e
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
	.byte	0x36
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL10
	.4byte	0x10ca
	.uleb128 0x18
	.4byte	.LVL13
	.4byte	0x10d5
	.4byte	0x8f8
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5036
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
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x2
	.byte	0x71
	.sleb128 8
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x2
	.byte	0x71
	.sleb128 36
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x2
	.byte	0x71
	.sleb128 40
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x2
	.byte	0x71
	.sleb128 44
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL15
	.4byte	0x10a8
	.4byte	0x921
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL17
	.4byte	0x10ca
	.uleb128 0x1b
	.4byte	.LVL18
	.4byte	0x10d5
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC12
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5036
	.uleb128 0x19
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x6a7
	.uleb128 0x7
	.4byte	0xa9
	.4byte	0x97b
	.uleb128 0x8
	.4byte	0x9b
	.byte	0x1d
	.byte	0
	.uleb128 0x6
	.4byte	0x96b
	.uleb128 0x7
	.4byte	0xcb
	.4byte	0x990
	.uleb128 0x8
	.4byte	0x9b
	.byte	0x5
	.byte	0
	.uleb128 0x12
	.4byte	.LASF169
	.byte	0x1
	.byte	0xef
	.4byte	0x159
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa7a
	.uleb128 0x13
	.4byte	.LASF160
	.byte	0x1
	.byte	0xef
	.4byte	0x71f
	.4byte	.LLST4
	.uleb128 0x1c
	.4byte	.LASF170
	.byte	0x1
	.byte	0xf0
	.4byte	0xa7a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x14
	.string	"err"
	.byte	0x1
	.byte	0xf2
	.4byte	0x159
	.4byte	.LLST5
	.uleb128 0x17
	.4byte	.LASF164
	.byte	0x1
	.byte	0xf3
	.4byte	0xe1
	.4byte	.LLST6
	.uleb128 0x15
	.4byte	.LASF167
	.byte	0x1
	.byte	0xf9
	.4byte	0x980
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1a
	.4byte	.LVL27
	.4byte	0x109d
	.uleb128 0x18
	.4byte	.LVL29
	.4byte	0x10e0
	.4byte	0xa17
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL31
	.4byte	0x10b4
	.4byte	0xa2b
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x18
	.4byte	.LVL32
	.4byte	0x10eb
	.4byte	0xa53
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL34
	.4byte	0x10eb
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0xa
	.2byte	0x770
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xa80
	.uleb128 0x6
	.4byte	0x6a7
	.uleb128 0x1d
	.4byte	.LASF174
	.byte	0x1
	.byte	0x2e
	.4byte	0x159
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb9c
	.uleb128 0x13
	.4byte	.LASF171
	.byte	0x1
	.byte	0x2e
	.4byte	0xb9c
	.4byte	.LLST7
	.uleb128 0x1c
	.4byte	.LASF172
	.byte	0x1
	.byte	0x2f
	.4byte	0x6d1
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1c
	.4byte	.LASF173
	.byte	0x1
	.byte	0x2f
	.4byte	0x965
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x16
	.4byte	.LASF163
	.4byte	0xbb7
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$4998
	.uleb128 0x1e
	.4byte	0x743
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.byte	0x1
	.byte	0x36
	.4byte	0xb06
	.uleb128 0x1f
	.4byte	0x753
	.4byte	.LLST8
	.uleb128 0x20
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.uleb128 0x21
	.4byte	0x75e
	.4byte	.LLST9
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL41
	.4byte	0x10f6
	.4byte	0xb35
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC22
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x31
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$4998
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC19
	.byte	0
	.uleb128 0x18
	.4byte	.LVL42
	.4byte	0x1101
	.4byte	0xb4c
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_phy_rf_init_lock
	.byte	0
	.uleb128 0x18
	.4byte	.LVL46
	.4byte	0x110c
	.4byte	0xb5f
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x18
	.4byte	.LVL47
	.4byte	0x1117
	.4byte	0xb7f
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL48
	.4byte	0x1122
	.uleb128 0x1b
	.4byte	.LVL49
	.4byte	0x112d
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_phy_rf_init_lock
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xba2
	.uleb128 0x6
	.4byte	0x675
	.uleb128 0x7
	.4byte	0xa9
	.4byte	0xbb7
	.uleb128 0x8
	.4byte	0x9b
	.byte	0xf
	.byte	0
	.uleb128 0x6
	.4byte	0xba7
	.uleb128 0x1d
	.4byte	.LASF175
	.byte	0x1
	.byte	0x46
	.4byte	0x159
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc77
	.uleb128 0x16
	.4byte	.LASF163
	.4byte	0xc87
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5002
	.uleb128 0x1e
	.4byte	0x743
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.byte	0x1
	.byte	0x4f
	.4byte	0xc14
	.uleb128 0x1f
	.4byte	0x753
	.4byte	.LLST10
	.uleb128 0x20
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.uleb128 0x21
	.4byte	0x75e
	.4byte	.LLST11
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL51
	.4byte	0x10f6
	.4byte	0xc43
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC22
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x48
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5002
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC28
	.byte	0
	.uleb128 0x18
	.4byte	.LVL52
	.4byte	0x1101
	.4byte	0xc5a
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_phy_rf_init_lock
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL53
	.4byte	0x1138
	.uleb128 0x1b
	.4byte	.LVL56
	.4byte	0x112d
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_phy_rf_init_lock
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0xa9
	.4byte	0xc87
	.uleb128 0x8
	.4byte	0x9b
	.byte	0x11
	.byte	0
	.uleb128 0x6
	.4byte	0xc77
	.uleb128 0x22
	.4byte	.LASF217
	.byte	0x1
	.byte	0x86
	.4byte	0xb9c
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x23
	.4byte	.LASF178
	.byte	0x1
	.byte	0x8c
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcc4
	.uleb128 0x1c
	.4byte	.LASF171
	.byte	0x1
	.byte	0x8c
	.4byte	0xb9c
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF176
	.byte	0x1
	.byte	0x9f
	.4byte	0x159
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd98
	.uleb128 0x13
	.4byte	.LASF161
	.byte	0x1
	.byte	0x9f
	.4byte	0x965
	.4byte	.LLST12
	.uleb128 0x15
	.4byte	.LASF160
	.byte	0x1
	.byte	0xa1
	.4byte	0x71f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x14
	.string	"err"
	.byte	0x1
	.byte	0xa2
	.4byte	0x159
	.4byte	.LLST13
	.uleb128 0x16
	.4byte	.LASF163
	.4byte	0xda8
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5023
	.uleb128 0x18
	.4byte	.LVL59
	.4byte	0x1143
	.4byte	0xd3a
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC35
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL60
	.4byte	0x10ca
	.uleb128 0x18
	.4byte	.LVL61
	.4byte	0x10d5
	.4byte	0xd7a
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC40
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5023
	.byte	0
	.uleb128 0x18
	.4byte	.LVL64
	.4byte	0x76a
	.4byte	0xd8e
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL66
	.4byte	0x114e
	.byte	0
	.uleb128 0x7
	.4byte	0xa9
	.4byte	0xda8
	.uleb128 0x8
	.4byte	0x9b
	.byte	0x1e
	.byte	0
	.uleb128 0x6
	.4byte	0xd98
	.uleb128 0x1d
	.4byte	.LASF177
	.byte	0x1
	.byte	0xaf
	.4byte	0x159
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe3b
	.uleb128 0x13
	.4byte	.LASF170
	.byte	0x1
	.byte	0xaf
	.4byte	0xa7a
	.4byte	.LLST14
	.uleb128 0x15
	.4byte	.LASF160
	.byte	0x1
	.byte	0xb1
	.4byte	0x71f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x14
	.string	"err"
	.byte	0x1
	.byte	0xb2
	.4byte	0x159
	.4byte	.LLST15
	.uleb128 0x24
	.4byte	.LASF163
	.4byte	0xe3b
	.uleb128 0x18
	.4byte	.LVL70
	.4byte	0x1143
	.4byte	0xe1d
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC35
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x18
	.4byte	.LVL72
	.4byte	0x990
	.4byte	0xe31
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL74
	.4byte	0x114e
	.byte	0
	.uleb128 0x6
	.4byte	0x96b
	.uleb128 0x25
	.4byte	.LASF179
	.byte	0x1
	.2byte	0x103
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfe0
	.uleb128 0x26
	.4byte	.LASF170
	.byte	0x1
	.2byte	0x105
	.4byte	0x965
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x27
	.4byte	.LASF180
	.byte	0x1
	.2byte	0x10d
	.4byte	0x6d1
	.4byte	.LLST16
	.uleb128 0x27
	.4byte	.LASF171
	.byte	0x1
	.2byte	0x111
	.4byte	0xb9c
	.4byte	.LLST17
	.uleb128 0x28
	.string	"err"
	.byte	0x1
	.2byte	0x117
	.4byte	0x159
	.4byte	.LLST18
	.uleb128 0x18
	.4byte	.LVL77
	.4byte	0x115a
	.4byte	0xeae
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0x770
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL79
	.4byte	0x10ca
	.uleb128 0x18
	.4byte	.LVL80
	.4byte	0x10d5
	.4byte	0xee5
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC44
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL81
	.4byte	0x1165
	.uleb128 0x18
	.4byte	.LVL82
	.4byte	0x1170
	.4byte	0xf01
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL84
	.4byte	0xc8c
	.uleb128 0x1a
	.4byte	.LVL86
	.4byte	0x10ca
	.uleb128 0x18
	.4byte	.LVL87
	.4byte	0x10d5
	.4byte	0xf41
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC46
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL88
	.4byte	0x1165
	.uleb128 0x18
	.4byte	.LVL89
	.4byte	0xcc4
	.4byte	0xf5e
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL91
	.4byte	0x10ca
	.uleb128 0x18
	.4byte	.LVL92
	.4byte	0x10d5
	.4byte	0xf9b
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC48
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL94
	.4byte	0xa85
	.4byte	0xfbb
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL99
	.4byte	0xdad
	.4byte	0xfcf
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL100
	.4byte	0x117b
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	.LASF181
	.byte	0xc
	.byte	0x18
	.4byte	0xfeb
	.uleb128 0x6
	.4byte	0xbb
	.uleb128 0x15
	.4byte	.LASF182
	.byte	0xc
	.byte	0x1d
	.4byte	0xba2
	.uleb128 0x5
	.byte	0x3
	.4byte	phy_init_data
	.uleb128 0x29
	.4byte	.LASF183
	.byte	0xc
	.byte	0x8a
	.4byte	0x100c
	.uleb128 0x6
	.4byte	0xbb
	.uleb128 0x2a
	.string	"TAG"
	.byte	0x1
	.byte	0x27
	.4byte	0x1023
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC6
	.byte	0x9f
	.uleb128 0x6
	.4byte	0xb0
	.uleb128 0x15
	.4byte	.LASF184
	.byte	0x1
	.byte	0x2a
	.4byte	0x25
	.uleb128 0x5
	.byte	0x3
	.4byte	s_phy_rf_init_count
	.uleb128 0x15
	.4byte	.LASF185
	.byte	0x1
	.byte	0x2c
	.4byte	0x89
	.uleb128 0x5
	.byte	0x3
	.4byte	s_phy_rf_init_lock
	.uleb128 0x15
	.4byte	.LASF186
	.byte	0x1
	.byte	0x94
	.4byte	0x1023
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC35
	.byte	0x9f
	.uleb128 0x15
	.4byte	.LASF187
	.byte	0x1
	.byte	0x95
	.4byte	0x1023
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC0
	.byte	0x9f
	.uleb128 0x15
	.4byte	.LASF188
	.byte	0x1
	.byte	0x96
	.4byte	0x1023
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC3
	.byte	0x9f
	.uleb128 0x15
	.4byte	.LASF189
	.byte	0x1
	.byte	0x97
	.4byte	0x1023
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC10
	.byte	0x9f
	.uleb128 0x2b
	.4byte	.LASF190
	.4byte	.LASF190
	.byte	0xb
	.byte	0xe2
	.uleb128 0x2b
	.4byte	.LASF191
	.4byte	.LASF191
	.byte	0xd
	.byte	0x2d
	.uleb128 0x2c
	.4byte	.LASF192
	.4byte	.LASF192
	.byte	0xb
	.2byte	0x121
	.uleb128 0x2b
	.4byte	.LASF193
	.4byte	.LASF193
	.byte	0xe
	.byte	0xbc
	.uleb128 0x2b
	.4byte	.LASF194
	.4byte	.LASF194
	.byte	0xf
	.byte	0x16
	.uleb128 0x2b
	.4byte	.LASF195
	.4byte	.LASF195
	.byte	0xa
	.byte	0x4c
	.uleb128 0x2b
	.4byte	.LASF196
	.4byte	.LASF196
	.byte	0xa
	.byte	0x60
	.uleb128 0x2b
	.4byte	.LASF197
	.4byte	.LASF197
	.byte	0xb
	.byte	0x95
	.uleb128 0x2b
	.4byte	.LASF198
	.4byte	.LASF198
	.byte	0xb
	.byte	0xb5
	.uleb128 0x2b
	.4byte	.LASF199
	.4byte	.LASF199
	.byte	0x10
	.byte	0x29
	.uleb128 0x2b
	.4byte	.LASF200
	.4byte	.LASF200
	.byte	0x5
	.byte	0x20
	.uleb128 0x2b
	.4byte	.LASF201
	.4byte	.LASF201
	.byte	0xd
	.byte	0x34
	.uleb128 0x2b
	.4byte	.LASF202
	.4byte	.LASF202
	.byte	0xd
	.byte	0x27
	.uleb128 0x2b
	.4byte	.LASF203
	.4byte	.LASF203
	.byte	0xd
	.byte	0x3a
	.uleb128 0x2b
	.4byte	.LASF204
	.4byte	.LASF204
	.byte	0x5
	.byte	0x24
	.uleb128 0x2b
	.4byte	.LASF205
	.4byte	.LASF205
	.byte	0xd
	.byte	0x3f
	.uleb128 0x2b
	.4byte	.LASF206
	.4byte	.LASF206
	.byte	0xb
	.byte	0x55
	.uleb128 0x2c
	.4byte	.LASF207
	.4byte	.LASF207
	.byte	0xb
	.2byte	0x165
	.uleb128 0x2b
	.4byte	.LASF208
	.4byte	.LASF208
	.byte	0x11
	.byte	0x57
	.uleb128 0x2b
	.4byte	.LASF209
	.4byte	.LASF209
	.byte	0x11
	.byte	0x47
	.uleb128 0x2b
	.4byte	.LASF210
	.4byte	.LASF210
	.byte	0x9
	.byte	0x9a
	.uleb128 0x2b
	.4byte	.LASF211
	.4byte	.LASF211
	.byte	0x11
	.byte	0x5a
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x13
	.byte	0x1
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
	.uleb128 0xe
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x17
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x24
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0xb
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL3
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL22
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL25
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL11
	.4byte	.LVL14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL16
	.4byte	.LVL21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL25
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL2-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL16
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL19
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL24
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL26
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL36
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
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL36
	.4byte	.LFE15
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x8
	.byte	0x7a
	.sleb128 0
	.byte	0x11
	.sleb128 -65537
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL29-1
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL40
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL50
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL43
	.4byte	.LVL48
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff000cc
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL53
	.4byte	.LVL55
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff000cc
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL58
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL65
	.4byte	.LVL67
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL67
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL68
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL59
	.4byte	.LVL60-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL65
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL67
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL69
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL73
	.4byte	.LVL75
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL75
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL76
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL73
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL75
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL81
	.4byte	.LVL83
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL83
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL92
	.4byte	.LVL93
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL93
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL95
	.4byte	.LVL97
	.2byte	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL85
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL90
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x5c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
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
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB15
	.4byte	.LFE15
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
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF189:
	.string	"PHY_CAL_DATA_KEY"
.LASF3:
	.string	"size_t"
.LASF198:
	.string	"nvs_set_blob"
.LASF173:
	.string	"calibration_data"
.LASF35:
	.string	"esp_err_t"
.LASF4:
	.string	"__uint8_t"
.LASF140:
	.string	"spur_freq_en_l_3"
.LASF186:
	.string	"PHY_NAMESPACE"
.LASF151:
	.string	"ESP_LOG_ERROR"
.LASF22:
	.string	"OWDT_RESET"
.LASF70:
	.string	"gain_cmp_11"
.LASF184:
	.string	"s_phy_rf_init_count"
.LASF143:
	.string	"opaque"
.LASF10:
	.string	"long long unsigned int"
.LASF119:
	.string	"chan8_rate_backoff_index"
.LASF109:
	.string	"chan12_power_backoff_qdb"
.LASF21:
	.string	"SW_RESET"
.LASF188:
	.string	"PHY_CAL_MAC_KEY"
.LASF128:
	.string	"spur_freq_cfg_div_1"
.LASF133:
	.string	"spur_freq_cfg_div_2"
.LASF138:
	.string	"spur_freq_cfg_div_3"
.LASF175:
	.string	"esp_phy_rf_deinit"
.LASF168:
	.string	"load_cal_data_from_nvs_handle"
.LASF117:
	.string	"chan6_rate_backoff_index"
.LASF19:
	.string	"NO_MEAN"
.LASF75:
	.string	"gain_cmp_ext3_6"
.LASF30:
	.string	"SW_CPU_RESET"
.LASF103:
	.string	"chan6_power_backoff_qdb"
.LASF191:
	.string	"phy_get_rf_cal_version"
.LASF154:
	.string	"ESP_LOG_DEBUG"
.LASF9:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF124:
	.string	"chan13_rate_backoff_index"
.LASF26:
	.string	"TG1WDT_SYS_RESET"
.LASF177:
	.string	"esp_phy_store_cal_data_to_nvs"
.LASF183:
	.string	"phy_init_magic_post"
.LASF24:
	.string	"SDIO_RESET"
.LASF185:
	.string	"s_phy_rf_init_lock"
.LASF12:
	.string	"long int"
.LASF196:
	.string	"esp_log_write"
.LASF11:
	.string	"_lock_t"
.LASF206:
	.string	"nvs_open"
.LASF161:
	.string	"out_cal_data"
.LASF145:
	.string	"PHY_RF_CAL_PARTIAL"
.LASF74:
	.string	"gain_cmp_ext3_1"
.LASF170:
	.string	"cal_data"
.LASF190:
	.string	"nvs_get_u32"
.LASF130:
	.string	"spur_freq_en_l_1"
.LASF135:
	.string	"spur_freq_en_l_2"
.LASF32:
	.string	"EXT_CPU_RESET"
.LASF95:
	.string	"pwr_ind_11b_0"
.LASF126:
	.string	"spur_freq_cfg_msb_1"
.LASF131:
	.string	"spur_freq_cfg_msb_2"
.LASF136:
	.string	"spur_freq_cfg_msb_3"
.LASF71:
	.string	"gain_cmp_ext2_1"
.LASF141:
	.string	"reserved"
.LASF144:
	.string	"esp_phy_calibration_data_t"
.LASF72:
	.string	"gain_cmp_ext2_6"
.LASF20:
	.string	"POWERON_RESET"
.LASF180:
	.string	"calibration_mode"
.LASF172:
	.string	"mode"
.LASF169:
	.string	"store_cal_data_to_nvs_handle"
.LASF79:
	.string	"gain_cmp_bt_ofs_11"
.LASF171:
	.string	"init_data"
.LASF86:
	.string	"target_power_index_mcs0"
.LASF87:
	.string	"target_power_index_mcs1"
.LASF104:
	.string	"chan7_power_backoff_qdb"
.LASF89:
	.string	"target_power_index_mcs3"
.LASF90:
	.string	"target_power_index_mcs4"
.LASF110:
	.string	"chan13_power_backoff_qdb"
.LASF92:
	.string	"target_power_index_mcs6"
.LASF93:
	.string	"target_power_index_mcs7"
.LASF14:
	.string	"long unsigned int"
.LASF33:
	.string	"RTCWDT_BROWN_OUT_RESET"
.LASF167:
	.string	"sta_mac"
.LASF165:
	.string	"cal_data_mac"
.LASF100:
	.string	"chan3_power_backoff_qdb"
.LASF62:
	.string	"bt_rx_gain_swp_step_10"
.LASF63:
	.string	"bt_rx_gain_swp_step_11"
.LASF64:
	.string	"bt_rx_gain_swp_step_12"
.LASF65:
	.string	"bt_rx_gain_swp_step_13"
.LASF66:
	.string	"bt_rx_gain_swp_step_14"
.LASF67:
	.string	"bt_rx_gain_swp_step_15"
.LASF80:
	.string	"target_power_qdb_0"
.LASF81:
	.string	"target_power_qdb_1"
.LASF82:
	.string	"target_power_qdb_2"
.LASF99:
	.string	"chan2_power_backoff_qdb"
.LASF84:
	.string	"target_power_qdb_4"
.LASF85:
	.string	"target_power_qdb_5"
.LASF207:
	.string	"nvs_close"
.LASF77:
	.string	"gain_cmp_bt_ofs_1"
.LASF193:
	.string	"esp_efuse_mac_get_default"
.LASF78:
	.string	"gain_cmp_bt_ofs_6"
.LASF120:
	.string	"chan9_rate_backoff_index"
.LASF162:
	.string	"cal_data_version"
.LASF112:
	.string	"chan1_rate_backoff_index"
.LASF116:
	.string	"chan5_rate_backoff_index"
.LASF115:
	.string	"chan4_rate_backoff_index"
.LASF176:
	.string	"esp_phy_load_cal_data_from_nvs"
.LASF7:
	.string	"__int32_t"
.LASF122:
	.string	"chan11_rate_backoff_index"
.LASF153:
	.string	"ESP_LOG_INFO"
.LASF69:
	.string	"gain_cmp_6"
.LASF125:
	.string	"chan14_rate_backoff_index"
.LASF205:
	.string	"phy_close_rf"
.LASF157:
	.string	"nvs_handle"
.LASF13:
	.string	"sizetype"
.LASF148:
	.string	"esp_phy_calibration_mode_t"
.LASF121:
	.string	"chan10_rate_backoff_index"
.LASF129:
	.string	"spur_freq_en_h_1"
.LASF211:
	.string	"free"
.LASF91:
	.string	"target_power_index_mcs5"
.LASF94:
	.string	"pwr_ind_11b_en"
.LASF156:
	.string	"esp_log_level_t"
.LASF200:
	.string	"_lock_acquire"
.LASF29:
	.string	"TGWDT_CPU_RESET"
.LASF27:
	.string	"RTCWDT_SYS_RESET"
.LASF118:
	.string	"chan7_rate_backoff_index"
.LASF213:
	.string	"C:/esp/esp-idf/components/esp32/phy_init.c"
.LASF147:
	.string	"PHY_RF_CAL_FULL"
.LASF114:
	.string	"chan3_rate_backoff_index"
.LASF107:
	.string	"chan10_power_backoff_qdb"
.LASF111:
	.string	"chan14_power_backoff_qdb"
.LASF197:
	.string	"nvs_set_u32"
.LASF178:
	.string	"esp_phy_release_init_data"
.LASF31:
	.string	"RTCWDT_CPU_RESET"
.LASF192:
	.string	"nvs_get_blob"
.LASF101:
	.string	"chan4_power_backoff_qdb"
.LASF105:
	.string	"chan8_power_backoff_qdb"
.LASF216:
	.string	"addr"
.LASF201:
	.string	"phy_set_wifi_mode_only"
.LASF149:
	.string	"_Bool"
.LASF17:
	.string	"int32_t"
.LASF5:
	.string	"unsigned char"
.LASF36:
	.string	"param_ver_id"
.LASF25:
	.string	"TG0WDT_SYS_RESET"
.LASF47:
	.string	"wifi_rx_gain_swp_step_10"
.LASF48:
	.string	"wifi_rx_gain_swp_step_11"
.LASF49:
	.string	"wifi_rx_gain_swp_step_12"
.LASF50:
	.string	"wifi_rx_gain_swp_step_13"
.LASF51:
	.string	"wifi_rx_gain_swp_step_14"
.LASF52:
	.string	"wifi_rx_gain_swp_step_15"
.LASF28:
	.string	"INTRUSION_RESET"
.LASF6:
	.string	"short int"
.LASF96:
	.string	"pwr_ind_11b_1"
.LASF83:
	.string	"target_power_qdb_3"
.LASF195:
	.string	"esp_log_timestamp"
.LASF127:
	.string	"spur_freq_cfg_1"
.LASF132:
	.string	"spur_freq_cfg_2"
.LASF137:
	.string	"spur_freq_cfg_3"
.LASF163:
	.string	"__func__"
.LASF158:
	.string	"NVS_READONLY"
.LASF76:
	.string	"gain_cmp_ext3_11"
.LASF214:
	.string	"C:\\\\esp\\\\ArkPOS2-esp\\\\build\\\\esp32"
.LASF18:
	.string	"uint32_t"
.LASF203:
	.string	"coex_bt_high_prio"
.LASF164:
	.string	"cal_format_version"
.LASF181:
	.string	"phy_init_magic_pre"
.LASF150:
	.string	"ESP_LOG_NONE"
.LASF15:
	.string	"char"
.LASF155:
	.string	"ESP_LOG_VERBOSE"
.LASF68:
	.string	"gain_cmp_1"
.LASF0:
	.string	"unsigned int"
.LASF88:
	.string	"target_power_index_mcs2"
.LASF113:
	.string	"chan2_rate_backoff_index"
.LASF134:
	.string	"spur_freq_en_h_2"
.LASF139:
	.string	"spur_freq_en_h_3"
.LASF38:
	.string	"wifi_rx_gain_swp_step_1"
.LASF39:
	.string	"wifi_rx_gain_swp_step_2"
.LASF40:
	.string	"wifi_rx_gain_swp_step_3"
.LASF41:
	.string	"wifi_rx_gain_swp_step_4"
.LASF42:
	.string	"wifi_rx_gain_swp_step_5"
.LASF43:
	.string	"wifi_rx_gain_swp_step_6"
.LASF44:
	.string	"wifi_rx_gain_swp_step_7"
.LASF45:
	.string	"wifi_rx_gain_swp_step_8"
.LASF46:
	.string	"wifi_rx_gain_swp_step_9"
.LASF8:
	.string	"__uint32_t"
.LASF187:
	.string	"PHY_CAL_VERSION_KEY"
.LASF194:
	.string	"memcmp"
.LASF37:
	.string	"crystal_select"
.LASF73:
	.string	"gain_cmp_ext2_11"
.LASF123:
	.string	"chan12_rate_backoff_index"
.LASF182:
	.string	"phy_init_data"
.LASF1:
	.string	"short unsigned int"
.LASF215:
	.string	"DPORT_READ_PERI_REG"
.LASF57:
	.string	"bt_rx_gain_swp_step_5"
.LASF23:
	.string	"DEEPSLEEP_RESET"
.LASF202:
	.string	"register_chipv7_phy"
.LASF166:
	.string	"length"
.LASF108:
	.string	"chan11_power_backoff_qdb"
.LASF204:
	.string	"_lock_release"
.LASF34:
	.string	"RTCWDT_RTC_RESET"
.LASF152:
	.string	"ESP_LOG_WARN"
.LASF98:
	.string	"chan1_power_backoff_qdb"
.LASF174:
	.string	"esp_phy_rf_init"
.LASF97:
	.string	"chan_backoff_en"
.LASF210:
	.string	"rtc_get_reset_reason"
.LASF106:
	.string	"chan9_power_backoff_qdb"
.LASF208:
	.string	"calloc"
.LASF16:
	.string	"uint8_t"
.LASF142:
	.string	"esp_phy_init_data_t"
.LASF217:
	.string	"esp_phy_get_init_data"
.LASF146:
	.string	"PHY_RF_CAL_NONE"
.LASF199:
	.string	"__assert_func"
.LASF212:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF160:
	.string	"handle"
.LASF179:
	.string	"esp_phy_load_cal_and_init"
.LASF102:
	.string	"chan5_power_backoff_qdb"
.LASF159:
	.string	"NVS_READWRITE"
.LASF53:
	.string	"bt_rx_gain_swp_step_1"
.LASF54:
	.string	"bt_rx_gain_swp_step_2"
.LASF55:
	.string	"bt_rx_gain_swp_step_3"
.LASF56:
	.string	"bt_rx_gain_swp_step_4"
.LASF209:
	.string	"abort"
.LASF58:
	.string	"bt_rx_gain_swp_step_6"
.LASF59:
	.string	"bt_rx_gain_swp_step_7"
.LASF60:
	.string	"bt_rx_gain_swp_step_8"
.LASF61:
	.string	"bt_rx_gain_swp_step_9"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-61-gab8375a) 5.2.0"
