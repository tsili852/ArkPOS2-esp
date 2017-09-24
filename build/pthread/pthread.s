	.file	"pthread.c"
	.text
.Ltext0:
	.section	.text.pthread_find_list_item,"ax",@progbits
	.literal_position
	.literal .LC0, s_threads_list
	.literal .LC1, s_threads_list+8
	.align	4
	.type	pthread_find_list_item, @function
pthread_find_list_item:
.LFB10:
	.file 1 "C:/esp/esp-idf/components/pthread/pthread.c"
	.loc 1 88 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LVL1:
	.loc 1 90 0
	l32r	a4, .LC0
	l32i.n	a4, a4, 12
.LVL2:
	.loc 1 91 0
	j	.L2
.LVL3:
.L4:
.LBB7:
	.loc 1 92 0
	mov.n	a11, a3
	mov.n	a10, a4
	callx8	a2
.LVL4:
	.loc 1 93 0
	bnez.n	a10, .L5
	.loc 1 96 0
	l32i.n	a4, a4, 4
.LVL5:
.L2:
.LBE7:
	.loc 1 91 0
	l32r	a8, .LC1
.LVL6:
	bne	a4, a8, .L4
	.loc 1 98 0
	movi.n	a2, 0
.LVL7:
	retw.n
.LVL8:
.L5:
.LBB8:
	.loc 1 94 0
	mov.n	a2, a10
.LVL9:
.LBE8:
	.loc 1 99 0
	retw.n
.LFE10:
	.size	pthread_find_list_item, .-pthread_find_list_item
	.section	.text.pthread_get_handle_by_desc,"ax",@progbits
	.align	4
	.type	pthread_get_handle_by_desc, @function
pthread_get_handle_by_desc:
.LFB11:
	.loc 1 102 0
.LVL10:
	entry	sp, 32
.LCFI1:
	.loc 1 103 0
	l32i.n	a8, a2, 12
.LVL11:
	.loc 1 104 0
	bne	a8, a3, .L8
	.loc 1 105 0
	l32i.n	a2, a2, 0
.LVL12:
	retw.n
.LVL13:
.L8:
	.loc 1 107 0
	movi.n	a2, 0
.LVL14:
	.loc 1 108 0
	retw.n
.LFE11:
	.size	pthread_get_handle_by_desc, .-pthread_get_handle_by_desc
	.section	.text.pthread_get_desc_by_handle,"ax",@progbits
	.align	4
	.type	pthread_get_desc_by_handle, @function
pthread_get_desc_by_handle:
.LFB13:
	.loc 1 115 0
.LVL15:
	entry	sp, 32
.LCFI2:
.LVL16:
	.loc 1 117 0
	l32i.n	a8, a2, 0
.LVL17:
	.loc 1 118 0
	bne	a3, a8, .L11
	.loc 1 119 0
	l32i.n	a2, a2, 12
.LVL18:
	retw.n
.LVL19:
.L11:
	.loc 1 121 0
	movi.n	a2, 0
.LVL20:
	.loc 1 122 0
	retw.n
.LFE13:
	.size	pthread_get_desc_by_handle, .-pthread_get_desc_by_handle
	.section	.text.pthread_find,"ax",@progbits
	.literal_position
	.literal .LC2, pthread_get_desc_by_handle
	.align	4
	.type	pthread_find, @function
pthread_find:
.LFB14:
	.loc 1 124 0
.LVL21:
	entry	sp, 32
.LCFI3:
	.loc 1 125 0
	mov.n	a11, a2
	l32r	a10, .LC2
	call8	pthread_find_list_item
.LVL22:
	.loc 1 126 0
	mov.n	a2, a10
.LVL23:
	retw.n
.LFE14:
	.size	pthread_find, .-pthread_find
	.section	.text.mutexattr_check,"ax",@progbits
	.align	4
	.type	mutexattr_check, @function
mutexattr_check:
.LFB29:
	.loc 1 400 0
.LVL24:
	entry	sp, 32
.LCFI4:
	.loc 1 401 0
	l32i.n	a8, a2, 4
	bltui	a8, 2, .L15
	.loc 1 402 0
	movi.n	a2, 0x16
.LVL25:
	retw.n
.LVL26:
.L15:
	.loc 1 404 0
	movi.n	a2, 0
.LVL27:
	.loc 1 405 0
	retw.n
.LFE29:
	.size	mutexattr_check, .-mutexattr_check
	.section	.text.pthread_delete,"ax",@progbits
	.align	4
	.type	pthread_delete, @function
pthread_delete:
.LFB15:
	.loc 1 129 0
.LVL28:
	entry	sp, 32
.LCFI5:
	.loc 1 130 0
	mov.n	a10, a2
	call8	uxListRemove
.LVL29:
	.loc 1 131 0
	mov.n	a10, a2
	call8	free
.LVL30:
	retw.n
.LFE15:
	.size	pthread_delete, .-pthread_delete
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC4:
	.string	"false && \"Failed to lock threads list!\""
	.align	4
.LC7:
	.string	"C:/esp/esp-idf/components/pthread/pthread.c"
	.align	4
.LC9:
	.string	"false && \"Failed to find pthread for current task!\""
	.section	.text.pthread_task_func,"ax",@progbits
	.literal_position
	.literal .LC3, s_threads_mux
	.literal .LC5, .LC4
	.literal .LC6, __func__$5602
	.literal .LC8, .LC7
	.literal .LC10, .LC9
	.align	4
	.type	pthread_task_func, @function
pthread_task_func:
.LFB16:
	.loc 1 135 0
.LVL31:
	entry	sp, 32
.LCFI6:
.LVL32:
	.loc 1 141 0
	movi.n	a13, -1
	movi.n	a12, 0
	mov.n	a11, a12
	mov.n	a10, a12
	call8	xTaskNotifyWait
.LVL33:
	.loc 1 144 0
	l32i.n	a8, a2, 0
	l32i.n	a10, a2, 4
	callx8	a8
.LVL34:
	.loc 1 146 0
	mov.n	a10, a2
	call8	free
.LVL35:
	.loc 1 148 0
	movi.n	a13, 0
	movi.n	a12, -1
	mov.n	a11, a13
	l32r	a2, .LC3
.LVL36:
	l32i.n	a10, a2, 0
	call8	xQueueGenericReceive
.LVL37:
	beqi	a10, 1, .L18
	.loc 1 149 0
	l32r	a13, .LC5
	l32r	a12, .LC6
	movi	a11, 0x95
	l32r	a10, .LC8
	call8	__assert_func
.LVL38:
.L18:
	.loc 1 151 0
	call8	xTaskGetCurrentTaskHandle
.LVL39:
	call8	pthread_find
.LVL40:
	.loc 1 152 0
	bnez.n	a10, .L19
	.loc 1 153 0
	l32r	a13, .LC10
	l32r	a12, .LC6
	movi	a11, 0x99
	l32r	a10, .LC8
.LVL41:
	call8	__assert_func
.LVL42:
.L19:
	.loc 1 155 0
	l8ui	a2, a10, 28
	beqz.n	a2, .L20
	.loc 1 157 0
	call8	pthread_delete
.LVL43:
	j	.L21
.LVL44:
.L20:
	.loc 1 160 0
	l32i.n	a2, a10, 20
	beqz.n	a2, .L22
	.loc 1 162 0
	movi.n	a12, 0
	mov.n	a11, a12
	mov.n	a10, a2
.LVL45:
	call8	xTaskNotify
.LVL46:
	j	.L21
.LVL47:
.L22:
	.loc 1 164 0
	movi.n	a2, 1
	s32i.n	a2, a10, 24
.LVL48:
.L21:
	.loc 1 167 0
	movi.n	a13, 0
	mov.n	a12, a13
	mov.n	a11, a13
	l32r	a2, .LC3
	l32i.n	a10, a2, 0
	call8	xQueueGenericSend
.LVL49:
	.loc 1 169 0
	movi.n	a10, 0
	call8	vTaskDelete
.LVL50:
	retw.n
.LFE16:
	.size	pthread_task_func, .-pthread_task_func
	.section	.iram1,"ax",@progbits
	.align	4
	.type	pthread_mutex_lock_internal, @function
pthread_mutex_lock_internal:
.LFB32:
	.loc 1 471 0
.LVL51:
	entry	sp, 32
.LCFI7:
	.loc 1 472 0
	l32i.n	a8, a2, 24
	bnei	a8, 1, .L24
	.loc 1 473 0
	mov.n	a11, a3
	l32i.n	a10, a2, 20
	call8	xQueueTakeMutexRecursive
.LVL52:
	beqi	a10, 1, .L26
	.loc 1 474 0
	movi.n	a2, 0x10
.LVL53:
	retw.n
.LVL54:
.L24:
	.loc 1 477 0
	movi.n	a13, 0
	mov.n	a12, a3
	mov.n	a11, a13
	l32i.n	a10, a2, 20
	call8	xQueueGenericReceive
.LVL55:
	beqi	a10, 1, .L27
	.loc 1 478 0
	movi.n	a2, 0x10
.LVL56:
	retw.n
.LVL57:
.L26:
	.loc 1 482 0
	movi.n	a2, 0
.LVL58:
	retw.n
.LVL59:
.L27:
	movi.n	a2, 0
.LVL60:
	.loc 1 483 0
	retw.n
.LFE32:
	.size	pthread_mutex_lock_internal, .-pthread_mutex_lock_internal
	.section	.text.esp_pthread_init,"ax",@progbits
	.literal_position
	.literal .LC11, s_threads_list
	.literal .LC12, s_once_mux
	.literal .LC13, s_threads_mux
	.align	4
	.global	esp_pthread_init
	.type	esp_pthread_init, @function
esp_pthread_init:
.LFB9:
	.loc 1 73 0
	entry	sp, 32
.LCFI8:
	.loc 1 74 0
	l32r	a10, .LC11
	call8	vListInitialise
.LVL61:
	.loc 1 75 0
	movi.n	a10, 1
	call8	xQueueCreateMutex
.LVL62:
	l32r	a8, .LC12
	s32i.n	a10, a8, 0
	.loc 1 76 0
	beqz.n	a10, .L30
	.loc 1 79 0
	movi.n	a10, 1
	call8	xQueueCreateMutex
.LVL63:
	l32r	a2, .LC13
	s32i.n	a10, a2, 0
	.loc 1 80 0
	bnez.n	a10, .L31
	.loc 1 81 0
	l32r	a2, .LC12
	l32i.n	a10, a2, 0
	call8	vQueueDelete
.LVL64:
	.loc 1 82 0
	movi	a2, 0x101
	retw.n
.L30:
	.loc 1 77 0
	movi	a2, 0x101
	retw.n
.L31:
	.loc 1 84 0
	movi.n	a2, 0
	.loc 1 85 0
	retw.n
.LFE9:
	.size	esp_pthread_init, .-esp_pthread_init
	.section	.rodata.str1.4
	.align	4
.LC15:
	.string	"esp_pthread"
	.align	4
.LC17:
	.string	"\033[0;31mE (%d) %s: %s: attrs not supported!\033[0m\n"
	.align	4
.LC19:
	.string	"\033[0;31mE (%d) %s: Failed to allocate task args!\033[0m\n"
	.align	4
.LC21:
	.string	"\033[0;31mE (%d) %s: Failed to allocate pthread data!\033[0m\n"
	.align	4
.LC24:
	.string	"pthread"
	.align	4
.LC28:
	.string	"\033[0;31mE (%d) %s: Failed to create task!\033[0m\n"
	.section	.text.pthread_create,"ax",@progbits
	.literal_position
	.literal .LC14, __FUNCTION__$5612
	.literal .LC16, .LC15
	.literal .LC18, .LC17
	.literal .LC20, .LC19
	.literal .LC22, .LC21
	.literal .LC23, 2048
	.literal .LC25, .LC24
	.literal .LC26, pthread_task_func
	.literal .LC27, 2147483647
	.literal .LC29, .LC28
	.literal .LC30, s_threads_mux
	.literal .LC31, .LC4
	.literal .LC32, __func__$5616
	.literal .LC33, .LC7
	.literal .LC34, s_threads_list
	.align	4
	.global	pthread_create
	.type	pthread_create, @function
pthread_create:
.LFB17:
	.loc 1 176 0
.LVL65:
	entry	sp, 64
.LCFI9:
	.loc 1 177 0
	movi.n	a8, 0
	s32i.n	a8, sp, 16
	.loc 1 180 0
	beq	a3, a8, .L33
	.loc 1 181 0 discriminator 1
	call8	esp_log_timestamp
.LVL66:
	l32r	a11, .LC16
	l32r	a15, .LC14
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC18
	movi.n	a10, 1
	call8	esp_log_write
.LVL67:
	.loc 1 182 0 discriminator 1
	movi.n	a2, 0x58
.LVL68:
	retw.n
.LVL69:
.L33:
	.loc 1 184 0
	movi.n	a10, 8
	call8	malloc
.LVL70:
	mov.n	a3, a10
.LVL71:
	.loc 1 185 0
	bnez.n	a10, .L35
	.loc 1 186 0 discriminator 1
	call8	esp_log_timestamp
.LVL72:
	l32r	a11, .LC16
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC20
	movi.n	a10, 1
	call8	esp_log_write
.LVL73:
	.loc 1 187 0 discriminator 1
	movi.n	a2, 0xc
.LVL74:
	retw.n
.LVL75:
.L35:
	.loc 1 189 0
	movi.n	a8, 0
	s8i	a8, a10, 0
	s8i	a8, a10, 1
	s8i	a8, a10, 2
	s8i	a8, a10, 3
	s8i	a8, a10, 4
	s8i	a8, a10, 5
	s8i	a8, a10, 6
	s8i	a8, a10, 7
	.loc 1 190 0
	movi.n	a10, 0x20
	call8	malloc
.LVL76:
	mov.n	a6, a10
.LVL77:
	.loc 1 191 0
	bnez.n	a10, .L36
	.loc 1 192 0 discriminator 1
	call8	esp_log_timestamp
.LVL78:
	l32r	a11, .LC16
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC22
	movi.n	a10, 1
	call8	esp_log_write
.LVL79:
	.loc 1 193 0 discriminator 1
	mov.n	a10, a3
	call8	free
.LVL80:
	.loc 1 194 0 discriminator 1
	movi.n	a2, 0xc
.LVL81:
	retw.n
.LVL82:
.L36:
	.loc 1 196 0
	movi.n	a12, 0x20
	movi.n	a11, 0
	call8	memset
.LVL83:
	.loc 1 197 0
	s32i.n	a4, a3, 0
	.loc 1 198 0
	s32i.n	a5, a3, 4
	.loc 1 199 0
	l32r	a4, .LC27
.LVL84:
	s32i.n	a4, sp, 0
.LVL85:
	addi	a15, sp, 16
	movi.n	a14, 5
	mov.n	a13, a3
	l32r	a12, .LC23
	l32r	a11, .LC25
	l32r	a10, .LC26
	call8	xTaskCreatePinnedToCore
.LVL86:
	mov.n	a4, a10
.LVL87:
	.loc 1 201 0
	beqi	a10, 1, .L37
	.loc 1 202 0 discriminator 1
	call8	esp_log_timestamp
.LVL88:
	l32r	a11, .LC16
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC29
	movi.n	a10, 1
	call8	esp_log_write
.LVL89:
	.loc 1 203 0 discriminator 1
	mov.n	a10, a6
	call8	free
.LVL90:
	.loc 1 204 0 discriminator 1
	mov.n	a10, a3
	call8	free
.LVL91:
	.loc 1 205 0 discriminator 1
	bnei	a4, -1, .L39
	.loc 1 206 0
	movi.n	a2, 0xc
.LVL92:
	retw.n
.LVL93:
.L37:
	.loc 1 211 0
	mov.n	a10, a6
	call8	vListInitialiseItem
.LVL94:
	.loc 1 212 0
	s32i.n	a6, a6, 12
	.loc 1 213 0
	l32i.n	a3, sp, 16
.LVL95:
	s32i.n	a3, a6, 0
	.loc 1 215 0
	movi.n	a13, 0
	movi.n	a12, -1
	mov.n	a11, a13
	l32r	a3, .LC30
	l32i.n	a10, a3, 0
	call8	xQueueGenericReceive
.LVL96:
	beqi	a10, 1, .L38
	.loc 1 216 0
	l32r	a13, .LC31
	l32r	a12, .LC32
	movi	a11, 0xd8
	l32r	a10, .LC33
	call8	__assert_func
.LVL97:
.L38:
	.loc 1 218 0
	mov.n	a11, a6
	l32r	a10, .LC34
	call8	vListInsertEnd
.LVL98:
	.loc 1 219 0
	movi.n	a13, 0
	mov.n	a12, a13
	mov.n	a11, a13
	l32r	a3, .LC30
	l32i.n	a10, a3, 0
	call8	xQueueGenericSend
.LVL99:
	.loc 1 222 0
	movi.n	a12, 0
	mov.n	a11, a12
	l32i.n	a10, sp, 16
	call8	xTaskNotify
.LVL100:
	.loc 1 224 0
	s32i.n	a6, a2, 0
	.loc 1 228 0
	movi.n	a2, 0
.LVL101:
	retw.n
.LVL102:
.L39:
	.loc 1 208 0
	movi.n	a2, 0xb
.LVL103:
	.loc 1 229 0
	retw.n
.LFE17:
	.size	pthread_create, .-pthread_create
	.section	.text.pthread_join,"ax",@progbits
	.literal_position
	.literal .LC35, s_threads_mux
	.literal .LC36, .LC4
	.literal .LC37, __func__$5624
	.literal .LC38, .LC7
	.literal .LC39, pthread_get_handle_by_desc
	.align	4
	.global	pthread_join
	.type	pthread_join, @function
pthread_join:
.LFB18:
	.loc 1 232 0
.LVL104:
	entry	sp, 32
.LCFI10:
.LVL105:
	.loc 1 239 0
	movi.n	a13, 0
	movi.n	a12, -1
	mov.n	a11, a13
	l32r	a4, .LC35
	l32i.n	a10, a4, 0
	call8	xQueueGenericReceive
.LVL106:
	beqi	a10, 1, .L41
	.loc 1 240 0
	l32r	a13, .LC36
	l32r	a12, .LC37
	movi	a11, 0xf0
	l32r	a10, .LC38
	call8	__assert_func
.LVL107:
.L41:
.LBB9:
.LBB10:
	.loc 1 111 0
	mov.n	a11, a2
	l32r	a10, .LC39
	call8	pthread_find_list_item
.LVL108:
	mov.n	a4, a10
.LBE10:
.LBE9:
	.loc 1 243 0
	beqz.n	a10, .L48
	.loc 1 246 0
	l32i.n	a8, a2, 20
	bnez.n	a8, .L49
	.loc 1 249 0
	call8	xTaskGetCurrentTaskHandle
.LVL109:
	beq	a4, a10, .L50
.LBB11:
	.loc 1 253 0
	call8	xTaskGetCurrentTaskHandle
.LVL110:
	call8	pthread_find
.LVL111:
	.loc 1 254 0
	beqz.n	a10, .L43
	.loc 1 254 0 is_stmt 0 discriminator 1
	l32i.n	a8, a10, 20
	beq	a8, a4, .L51
.L43:
	.loc 1 258 0 is_stmt 1
	l32i.n	a4, a2, 24
	bnez.n	a4, .L44
	.loc 1 259 0
	call8	xTaskGetCurrentTaskHandle
.LVL112:
	s32i.n	a10, a2, 20
	j	.L42
.LVL113:
.L44:
	.loc 1 261 0
	mov.n	a10, a2
.LVL114:
	call8	pthread_delete
.LVL115:
.LBE11:
	.loc 1 234 0
	movi.n	a4, 0
	j	.L42
.L48:
	.loc 1 245 0
	movi.n	a4, 3
	j	.L42
.L49:
	.loc 1 248 0
	movi.n	a4, 0x16
	j	.L42
.L50:
	.loc 1 251 0
	movi.n	a4, 0x2d
	j	.L42
.LVL116:
.L51:
.LBB12:
	.loc 1 256 0
	movi.n	a4, 0x2d
.LVL117:
.L42:
.LBE12:
	.loc 1 265 0
	movi.n	a13, 0
	mov.n	a12, a13
	mov.n	a11, a13
	l32r	a8, .LC35
	l32i.n	a10, a8, 0
	call8	xQueueGenericSend
.LVL118:
	.loc 1 267 0
	bnez.n	a4, .L45
	.loc 1 267 0 is_stmt 0 discriminator 1
	l32i.n	a8, a2, 20
	beqz.n	a8, .L45
	.loc 1 268 0 is_stmt 1
	movi.n	a13, -1
	movi.n	a12, 0
	mov.n	a11, a12
	mov.n	a10, a12
	call8	xTaskNotifyWait
.LVL119:
	.loc 1 269 0
	movi.n	a13, 0
	movi.n	a12, -1
	mov.n	a11, a13
	l32r	a8, .LC35
	l32i.n	a10, a8, 0
	call8	xQueueGenericReceive
.LVL120:
	beqi	a10, 1, .L46
	.loc 1 270 0
	l32r	a13, .LC36
	l32r	a12, .LC37
	movi	a11, 0x10e
	l32r	a10, .LC38
	call8	__assert_func
.LVL121:
.L46:
	.loc 1 272 0
	mov.n	a10, a2
	call8	pthread_delete
.LVL122:
	.loc 1 273 0
	movi.n	a13, 0
	mov.n	a12, a13
	mov.n	a11, a13
	l32r	a2, .LC35
.LVL123:
	l32i.n	a10, a2, 0
	call8	xQueueGenericSend
.LVL124:
.L45:
	.loc 1 276 0
	beqz.n	a3, .L47
	.loc 1 277 0
	movi.n	a2, 0
	s32i.n	a2, a3, 0
.L47:
	.loc 1 282 0
	mov.n	a2, a4
	retw.n
.LFE18:
	.size	pthread_join, .-pthread_join
	.section	.text.pthread_detach,"ax",@progbits
	.literal_position
	.literal .LC40, s_threads_mux
	.literal .LC41, .LC4
	.literal .LC42, __func__$5632
	.literal .LC43, .LC7
	.literal .LC44, pthread_get_handle_by_desc
	.align	4
	.global	pthread_detach
	.type	pthread_detach, @function
pthread_detach:
.LFB19:
	.loc 1 285 0
.LVL125:
	entry	sp, 32
.LCFI11:
.LVL126:
	.loc 1 289 0
	movi.n	a13, 0
	movi.n	a12, -1
	mov.n	a11, a13
	l32r	a8, .LC40
	l32i.n	a10, a8, 0
	call8	xQueueGenericReceive
.LVL127:
	beqi	a10, 1, .L53
	.loc 1 290 0
	l32r	a13, .LC41
	l32r	a12, .LC42
	movi	a11, 0x122
	l32r	a10, .LC43
	call8	__assert_func
.LVL128:
.L53:
.LBB13:
.LBB14:
	.loc 1 111 0
	mov.n	a11, a2
	l32r	a10, .LC44
	call8	pthread_find_list_item
.LVL129:
.LBE14:
.LBE13:
	.loc 1 293 0
	beqz.n	a10, .L55
	.loc 1 296 0
	movi.n	a8, 1
	s8i	a8, a2, 28
	.loc 1 287 0
	movi.n	a2, 0
.LVL130:
	j	.L54
.LVL131:
.L55:
	.loc 1 294 0
	movi.n	a2, 3
.LVL132:
.L54:
	.loc 1 298 0
	movi.n	a13, 0
	mov.n	a12, a13
	mov.n	a11, a13
	l32r	a8, .LC40
	l32i.n	a10, a8, 0
	call8	xQueueGenericSend
.LVL133:
	.loc 1 301 0
	retw.n
.LFE19:
	.size	pthread_detach, .-pthread_detach
	.section	.rodata.str1.4
	.align	4
.LC47:
	.string	"\033[0;31mE (%d) %s: %s: not supported!\033[0m\n"
	.section	.text.pthread_cancel,"ax",@progbits
	.literal_position
	.literal .LC45, __FUNCTION__$5638
	.literal .LC46, .LC15
	.literal .LC48, .LC47
	.align	4
	.global	pthread_cancel
	.type	pthread_cancel, @function
pthread_cancel:
.LFB20:
	.loc 1 304 0
.LVL134:
	entry	sp, 32
.LCFI12:
	.loc 1 305 0
	call8	esp_log_timestamp
.LVL135:
	l32r	a11, .LC46
	l32r	a15, .LC45
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC48
	movi.n	a10, 1
	call8	esp_log_write
.LVL136:
	.loc 1 307 0
	movi.n	a2, 0x58
.LVL137:
	retw.n
.LFE20:
	.size	pthread_cancel, .-pthread_cancel
	.section	.text.sched_yield,"ax",@progbits
	.align	4
	.global	sched_yield
	.type	sched_yield, @function
sched_yield:
.LFB21:
	.loc 1 310 0
	entry	sp, 32
.LCFI13:
	.loc 1 311 0
	movi.n	a10, 0
	call8	vTaskDelay
.LVL138:
	.loc 1 313 0
	movi.n	a2, 0
	retw.n
.LFE21:
	.size	sched_yield, .-sched_yield
	.section	.rodata.str1.4
	.align	4
.LC53:
	.string	"false && \"Failed to find current thread ID!\""
	.section	.text.pthread_self,"ax",@progbits
	.literal_position
	.literal .LC49, s_threads_mux
	.literal .LC50, .LC4
	.literal .LC51, __func__$5645
	.literal .LC52, .LC7
	.literal .LC54, .LC53
	.align	4
	.global	pthread_self
	.type	pthread_self, @function
pthread_self:
.LFB22:
	.loc 1 316 0
	entry	sp, 32
.LCFI14:
	.loc 1 317 0
	movi.n	a13, 0
	movi.n	a12, -1
	mov.n	a11, a13
	l32r	a2, .LC49
	l32i.n	a10, a2, 0
	call8	xQueueGenericReceive
.LVL139:
	beqi	a10, 1, .L59
	.loc 1 318 0
	l32r	a13, .LC50
	l32r	a12, .LC51
	movi	a11, 0x13e
	l32r	a10, .LC52
	call8	__assert_func
.LVL140:
.L59:
	.loc 1 320 0
	call8	xTaskGetCurrentTaskHandle
.LVL141:
	call8	pthread_find
.LVL142:
	mov.n	a2, a10
.LVL143:
	.loc 1 321 0
	bnez.n	a10, .L60
	.loc 1 322 0
	l32r	a13, .LC54
	l32r	a12, .LC51
	movi	a11, 0x142
	l32r	a10, .LC52
	call8	__assert_func
.LVL144:
.L60:
	.loc 1 324 0
	movi.n	a13, 0
	mov.n	a12, a13
	mov.n	a11, a13
	l32r	a8, .LC49
	l32i.n	a10, a8, 0
	call8	xQueueGenericSend
.LVL145:
	.loc 1 326 0
	retw.n
.LFE22:
	.size	pthread_self, .-pthread_self
	.section	.text.pthread_equal,"ax",@progbits
	.align	4
	.global	pthread_equal
	.type	pthread_equal, @function
pthread_equal:
.LFB23:
	.loc 1 329 0
.LVL146:
	entry	sp, 32
.LCFI15:
	.loc 1 330 0
	sub	a3, a2, a3
.LVL147:
	movi.n	a2, 0
.LVL148:
	movi.n	a8, 1
	moveqz	a2, a8, a3
	.loc 1 331 0
	retw.n
.LFE23:
	.size	pthread_equal, .-pthread_equal
	.section	.rodata.str1.4
	.align	4
.LC58:
	.string	"\033[0;31mE (%d) %s: %s: multiple keys not supported!\033[0m\n"
	.section	.text.pthread_key_create,"ax",@progbits
	.literal_position
	.literal .LC55, s_created$5656
	.literal .LC56, __FUNCTION__$5657
	.literal .LC57, .LC15
	.literal .LC59, .LC58
	.align	4
	.global	pthread_key_create
	.type	pthread_key_create, @function
pthread_key_create:
.LFB24:
	.loc 1 335 0
.LVL149:
	entry	sp, 32
.LCFI16:
	.loc 1 339 0
	l32r	a8, .LC55
	l32i.n	a8, a8, 0
	beqz.n	a8, .L63
	.loc 1 341 0 discriminator 1
	call8	esp_log_timestamp
.LVL150:
	l32r	a11, .LC57
	l32r	a15, .LC56
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC59
	movi.n	a10, 1
	call8	esp_log_write
.LVL151:
	.loc 1 342 0 discriminator 1
	movi.n	a8, 0x58
	j	.L64
.L63:
	.loc 1 344 0
	movi.n	a9, 1
	s32i.n	a9, a2, 0
	.loc 1 345 0
	l32r	a2, .LC55
.LVL152:
	s32i.n	a9, a2, 0
.L64:
	.loc 1 347 0
	mov.n	a2, a8
	retw.n
.LFE24:
	.size	pthread_key_create, .-pthread_key_create
	.section	.text.pthread_key_delete,"ax",@progbits
	.literal_position
	.literal .LC60, __FUNCTION__$5661
	.literal .LC61, .LC15
	.literal .LC62, .LC47
	.align	4
	.global	pthread_key_delete
	.type	pthread_key_delete, @function
pthread_key_delete:
.LFB25:
	.loc 1 350 0
.LVL153:
	entry	sp, 32
.LCFI17:
	.loc 1 351 0
	call8	esp_log_timestamp
.LVL154:
	l32r	a11, .LC61
	l32r	a15, .LC60
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC62
	movi.n	a10, 1
	call8	esp_log_write
.LVL155:
	.loc 1 353 0
	movi.n	a2, 0x58
.LVL156:
	retw.n
.LFE25:
	.size	pthread_key_delete, .-pthread_key_delete
	.section	.text.pthread_getspecific,"ax",@progbits
	.literal_position
	.literal .LC63, __FUNCTION__$5665
	.literal .LC64, .LC15
	.literal .LC65, .LC47
	.align	4
	.global	pthread_getspecific
	.type	pthread_getspecific, @function
pthread_getspecific:
.LFB26:
	.loc 1 356 0
.LVL157:
	entry	sp, 32
.LCFI18:
	.loc 1 357 0
	call8	esp_log_timestamp
.LVL158:
	l32r	a11, .LC64
	l32r	a15, .LC63
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC65
	movi.n	a10, 1
	call8	esp_log_write
.LVL159:
	.loc 1 359 0
	movi.n	a2, 0
.LVL160:
	retw.n
.LFE26:
	.size	pthread_getspecific, .-pthread_getspecific
	.section	.text.pthread_setspecific,"ax",@progbits
	.literal_position
	.literal .LC66, __FUNCTION__$5670
	.literal .LC67, .LC15
	.literal .LC68, .LC47
	.align	4
	.global	pthread_setspecific
	.type	pthread_setspecific, @function
pthread_setspecific:
.LFB27:
	.loc 1 362 0
.LVL161:
	entry	sp, 32
.LCFI19:
	.loc 1 363 0
	call8	esp_log_timestamp
.LVL162:
	l32r	a11, .LC67
	l32r	a15, .LC66
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC68
	movi.n	a10, 1
	call8	esp_log_write
.LVL163:
	.loc 1 365 0
	movi.n	a2, 0x58
.LVL164:
	retw.n
.LFE27:
	.size	pthread_setspecific, .-pthread_setspecific
	.section	.rodata.str1.4
	.align	4
.LC71:
	.string	"\033[0;31mE (%d) %s: %s: Invalid args!\033[0m\n"
	.align	4
.LC74:
	.string	"\033[0;31mE (%d) %s: %s: Failed to lock!\033[0m\n"
	.section	.text.pthread_once,"ax",@progbits
	.literal_position
	.literal .LC69, __FUNCTION__$5676
	.literal .LC70, .LC15
	.literal .LC72, .LC71
	.literal .LC73, s_once_mux
	.literal .LC75, .LC74
	.align	4
	.global	pthread_once
	.type	pthread_once, @function
pthread_once:
.LFB28:
	.loc 1 369 0
.LVL165:
	entry	sp, 32
.LCFI20:
	.loc 1 370 0
	movi.n	a8, 1
	movi.n	a10, 0
	mov.n	a9, a10
	moveqz	a9, a8, a2
	.loc 1 370 0
	movnez	a8, a10, a3
	or	a8, a8, a9
	.loc 1 370 0
	bne	a8, a10, .L69
	.loc 1 370 0 discriminator 1
	l32i.n	a8, a2, 0
	bne	a8, a10, .L70
.L69:
	.loc 1 371 0 discriminator 1
	call8	esp_log_timestamp
.LVL166:
	l32r	a11, .LC70
	l32r	a15, .LC69
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC72
	movi.n	a10, 1
	call8	esp_log_write
.LVL167:
	.loc 1 372 0 discriminator 1
	movi.n	a2, 0x16
.LVL168:
	retw.n
.LVL169:
.L70:
	.loc 1 375 0
	call8	xTaskGetCurrentTaskHandle
.LVL170:
	mov.n	a4, a10
.LVL171:
	.loc 1 377 0
	call8	xTaskGetSchedulerState
.LVL172:
	beqi	a10, 1, .L72
	.loc 1 377 0 is_stmt 0 discriminator 1
	beqz.n	a4, .L72
	.loc 1 378 0 is_stmt 1
	movi.n	a13, 0
	movi.n	a12, -1
	mov.n	a11, a13
	l32r	a8, .LC73
	l32i.n	a10, a8, 0
	call8	xQueueGenericReceive
.LVL173:
	bnei	a10, 1, .L73
.L72:
	.loc 1 380 0
	l32i.n	a8, a2, 4
	bnez.n	a8, .L74
	.loc 1 382 0
	callx8	a3
.LVL174:
	.loc 1 383 0
	movi.n	a3, 1
.LVL175:
	s32i.n	a3, a2, 4
.L74:
	.loc 1 385 0
	beqz.n	a4, .L75
	.loc 1 386 0
	movi.n	a13, 0
	mov.n	a12, a13
	mov.n	a11, a13
	l32r	a2, .LC73
.LVL176:
	l32i.n	a10, a2, 0
	call8	xQueueGenericSend
.LVL177:
	.loc 1 395 0
	movi.n	a2, 0
	retw.n
.LVL178:
.L73:
	.loc 1 391 0 discriminator 1
	call8	esp_log_timestamp
.LVL179:
	l32r	a11, .LC70
	l32r	a15, .LC69
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC75
	movi.n	a10, 1
	call8	esp_log_write
.LVL180:
	.loc 1 392 0 discriminator 1
	movi.n	a2, 0x10
.LVL181:
	retw.n
.LVL182:
.L75:
	.loc 1 395 0
	movi.n	a2, 0
.LVL183:
	.loc 1 396 0
	retw.n
.LFE28:
	.size	pthread_once, .-pthread_once
	.section	.text.pthread_mutex_init,"ax",@progbits
	.align	4
	.global	pthread_mutex_init
	.type	pthread_mutex_init, @function
pthread_mutex_init:
.LFB30:
	.loc 1 408 0
.LVL184:
	entry	sp, 32
.LCFI21:
.LVL185:
	.loc 1 411 0
	beqz.n	a2, .L82
	.loc 1 415 0
	beqz.n	a3, .L83
.LBB15:
	.loc 1 416 0
	l32i.n	a8, a3, 0
	beqz.n	a8, .L84
	.loc 1 419 0
	mov.n	a10, a3
	call8	mutexattr_check
.LVL186:
	.loc 1 420 0
	bnez.n	a10, .L85
	.loc 1 423 0
	l32i.n	a4, a3, 4
.LVL187:
	j	.L78
.LVL188:
.L83:
.LBE15:
	.loc 1 409 0
	movi.n	a4, 0
.LVL189:
.L78:
	.loc 1 426 0
	movi.n	a10, 0x1c
	call8	malloc
.LVL190:
	mov.n	a3, a10
.LVL191:
	.loc 1 427 0
	beqz.n	a10, .L86
	.loc 1 430 0
	s32i.n	a4, a10, 24
	.loc 1 432 0
	bnei	a4, 1, .L79
	.loc 1 433 0
	movi.n	a10, 4
	call8	xQueueCreateMutex
.LVL192:
	s32i.n	a10, a3, 20
	j	.L80
.L79:
	.loc 1 435 0
	movi.n	a10, 1
	call8	xQueueCreateMutex
.LVL193:
	s32i.n	a10, a3, 20
.L80:
	.loc 1 437 0
	l32i.n	a4, a3, 20
.LVL194:
	bnez.n	a4, .L81
	.loc 1 438 0
	mov.n	a10, a3
	call8	free
.LVL195:
	.loc 1 439 0
	movi.n	a2, 0xb
.LVL196:
	retw.n
.LVL197:
.L81:
	.loc 1 442 0
	s32i.n	a3, a2, 0
	.loc 1 444 0
	movi.n	a2, 0
.LVL198:
	retw.n
.LVL199:
.L82:
	.loc 1 412 0
	movi.n	a2, 0x16
.LVL200:
	retw.n
.LVL201:
.L84:
.LBB16:
	.loc 1 417 0
	movi.n	a2, 0x16
.LVL202:
	retw.n
.LVL203:
.L85:
	.loc 1 421 0
	mov.n	a2, a10
.LVL204:
	retw.n
.LVL205:
.L86:
.LBE16:
	.loc 1 428 0
	movi.n	a2, 0xc
.LVL206:
	.loc 1 445 0
	retw.n
.LFE30:
	.size	pthread_mutex_init, .-pthread_mutex_init
	.section	.text.pthread_mutex_init_if_static,"ax",@progbits
	.literal_position
	.literal .LC76, s_mutex_init_lock
	.align	4
	.type	pthread_mutex_init_if_static, @function
pthread_mutex_init_if_static:
.LFB33:
	.loc 1 485 0
.LVL207:
	entry	sp, 32
.LCFI22:
.LVL208:
	.loc 1 487 0
	l32i.n	a8, a2, 0
	bnei	a8, -1, .L90
	.loc 1 488 0
	l32r	a10, .LC76
	call8	vTaskEnterCritical
.LVL209:
	.loc 1 489 0
	l32i.n	a8, a2, 0
	bnei	a8, -1, .L91
	.loc 1 490 0
	movi.n	a11, 0
	mov.n	a10, a2
	call8	pthread_mutex_init
.LVL210:
	mov.n	a2, a10
.LVL211:
	j	.L89
.LVL212:
.L91:
	.loc 1 486 0
	movi.n	a2, 0
.LVL213:
.L89:
	.loc 1 492 0
	l32r	a10, .LC76
	call8	vTaskExitCritical
.LVL214:
	retw.n
.LVL215:
.L90:
	.loc 1 486 0
	movi.n	a2, 0
.LVL216:
	.loc 1 495 0
	retw.n
.LFE33:
	.size	pthread_mutex_init_if_static, .-pthread_mutex_init_if_static
	.section	.text.pthread_mutex_destroy,"ax",@progbits
	.align	4
	.global	pthread_mutex_destroy
	.type	pthread_mutex_destroy, @function
pthread_mutex_destroy:
.LFB31:
	.loc 1 448 0
.LVL217:
	entry	sp, 32
.LCFI23:
	.loc 1 453 0
	beqz.n	a2, .L94
	.loc 1 456 0
	l32i.n	a2, a2, 0
.LVL218:
	.loc 1 459 0
	movi.n	a11, 0
	mov.n	a10, a2
	call8	pthread_mutex_lock_internal
.LVL219:
	.loc 1 460 0
	beqi	a10, 16, .L95
	.loc 1 464 0
	l32i.n	a10, a2, 20
.LVL220:
	call8	vQueueDelete
.LVL221:
	.loc 1 465 0
	mov.n	a10, a2
	call8	free
.LVL222:
	.loc 1 467 0
	movi.n	a2, 0
.LVL223:
	retw.n
.LVL224:
.L94:
	.loc 1 454 0
	movi.n	a2, 0x16
.LVL225:
	retw.n
.LVL226:
.L95:
	.loc 1 461 0
	movi.n	a2, 0x10
.LVL227:
	.loc 1 468 0
	retw.n
.LFE31:
	.size	pthread_mutex_destroy, .-pthread_mutex_destroy
	.section	.iram1
	.align	4
	.global	pthread_mutex_lock
	.type	pthread_mutex_lock, @function
pthread_mutex_lock:
.LFB34:
	.loc 1 498 0
.LVL228:
	entry	sp, 32
.LCFI24:
	.loc 1 499 0
	beqz.n	a2, .L98
	.loc 1 502 0
	mov.n	a10, a2
	call8	pthread_mutex_init_if_static
.LVL229:
	.loc 1 503 0
	bnez.n	a10, .L99
	.loc 1 506 0
	movi.n	a11, -1
	l32i.n	a10, a2, 0
.LVL230:
	call8	pthread_mutex_lock_internal
.LVL231:
	mov.n	a2, a10
.LVL232:
	retw.n
.LVL233:
.L98:
	.loc 1 500 0
	movi.n	a2, 0x16
.LVL234:
	retw.n
.LVL235:
.L99:
	.loc 1 504 0
	mov.n	a2, a10
.LVL236:
	.loc 1 507 0
	retw.n
.LFE34:
	.size	pthread_mutex_lock, .-pthread_mutex_lock
	.align	4
	.global	pthread_mutex_trylock
	.type	pthread_mutex_trylock, @function
pthread_mutex_trylock:
.LFB35:
	.loc 1 510 0
.LVL237:
	entry	sp, 32
.LCFI25:
	.loc 1 511 0
	beqz.n	a2, .L102
	.loc 1 514 0
	mov.n	a10, a2
	call8	pthread_mutex_init_if_static
.LVL238:
	.loc 1 515 0
	bnez.n	a10, .L103
	.loc 1 518 0
	movi.n	a11, 0
	l32i.n	a10, a2, 0
.LVL239:
	call8	pthread_mutex_lock_internal
.LVL240:
	mov.n	a2, a10
.LVL241:
	retw.n
.LVL242:
.L102:
	.loc 1 512 0
	movi.n	a2, 0x16
.LVL243:
	retw.n
.LVL244:
.L103:
	.loc 1 516 0
	mov.n	a2, a10
.LVL245:
	.loc 1 519 0
	retw.n
.LFE35:
	.size	pthread_mutex_trylock, .-pthread_mutex_trylock
	.align	4
	.global	pthread_mutex_unlock
	.type	pthread_mutex_unlock, @function
pthread_mutex_unlock:
.LFB36:
	.loc 1 522 0
.LVL246:
	entry	sp, 32
.LCFI26:
	.loc 1 525 0
	beqz.n	a2, .L107
	.loc 1 528 0
	l32i.n	a2, a2, 0
.LVL247:
	.loc 1 530 0
	l32i.n	a8, a2, 24
	bnei	a8, 1, .L106
	.loc 1 531 0
	l32i.n	a10, a2, 20
	call8	xQueueGiveMutexRecursive
.LVL248:
	.loc 1 535 0
	movi.n	a2, 0
.LVL249:
	retw.n
.LVL250:
.L106:
	.loc 1 533 0
	movi.n	a13, 0
	mov.n	a12, a13
	mov.n	a11, a13
	l32i.n	a10, a2, 20
	call8	xQueueGenericSend
.LVL251:
	.loc 1 535 0
	movi.n	a2, 0
.LVL252:
	retw.n
.LVL253:
.L107:
	.loc 1 526 0
	movi.n	a2, 0x16
.LVL254:
	.loc 1 536 0
	retw.n
.LFE36:
	.size	pthread_mutex_unlock, .-pthread_mutex_unlock
	.section	.text.pthread_mutexattr_init,"ax",@progbits
	.align	4
	.global	pthread_mutexattr_init
	.type	pthread_mutexattr_init, @function
pthread_mutexattr_init:
.LFB37:
	.loc 1 539 0
.LVL255:
	entry	sp, 32
.LCFI27:
	.loc 1 540 0
	beqz.n	a2, .L110
	.loc 1 543 0
	movi.n	a8, 0
	s32i.n	a8, a2, 4
	.loc 1 544 0
	movi.n	a9, 1
	s32i.n	a9, a2, 0
	.loc 1 545 0
	mov.n	a2, a8
.LVL256:
	retw.n
.LVL257:
.L110:
	.loc 1 541 0
	movi.n	a2, 0x16
.LVL258:
	.loc 1 546 0
	retw.n
.LFE37:
	.size	pthread_mutexattr_init, .-pthread_mutexattr_init
	.section	.text.pthread_mutexattr_destroy,"ax",@progbits
	.align	4
	.global	pthread_mutexattr_destroy
	.type	pthread_mutexattr_destroy, @function
pthread_mutexattr_destroy:
.LFB38:
	.loc 1 549 0
.LVL259:
	entry	sp, 32
.LCFI28:
	.loc 1 550 0
	beqz.n	a2, .L113
	.loc 1 553 0
	movi.n	a8, 0
	s32i.n	a8, a2, 0
	.loc 1 554 0
	mov.n	a2, a8
.LVL260:
	retw.n
.LVL261:
.L113:
	.loc 1 551 0
	movi.n	a2, 0x16
.LVL262:
	.loc 1 555 0
	retw.n
.LFE38:
	.size	pthread_mutexattr_destroy, .-pthread_mutexattr_destroy
	.section	.text.pthread_mutexattr_gettype,"ax",@progbits
	.literal_position
	.literal .LC77, __FUNCTION__$5724
	.literal .LC78, .LC15
	.literal .LC79, .LC47
	.align	4
	.global	pthread_mutexattr_gettype
	.type	pthread_mutexattr_gettype, @function
pthread_mutexattr_gettype:
.LFB39:
	.loc 1 558 0
.LVL263:
	entry	sp, 32
.LCFI29:
	.loc 1 559 0
	call8	esp_log_timestamp
.LVL264:
	l32r	a11, .LC78
	l32r	a15, .LC77
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC79
	movi.n	a10, 1
	call8	esp_log_write
.LVL265:
	.loc 1 561 0
	movi.n	a2, 0x58
.LVL266:
	retw.n
.LFE39:
	.size	pthread_mutexattr_gettype, .-pthread_mutexattr_gettype
	.section	.text.pthread_mutexattr_settype,"ax",@progbits
	.align	4
	.global	pthread_mutexattr_settype
	.type	pthread_mutexattr_settype, @function
pthread_mutexattr_settype:
.LFB40:
	.loc 1 564 0
.LVL267:
	entry	sp, 48
.LCFI30:
	.loc 1 565 0
	beqz.n	a2, .L117
	.loc 1 568 0
	movi.n	a8, 0
	s32i.n	a8, sp, 0
	s32i.n	a8, sp, 8
	s32i.n	a3, sp, 4
	.loc 1 569 0
	mov.n	a10, sp
	call8	mutexattr_check
.LVL268:
	.loc 1 570 0
	bnez.n	a10, .L118
	.loc 1 571 0
	s32i.n	a3, a2, 4
	.loc 1 573 0
	mov.n	a2, a10
.LVL269:
	retw.n
.LVL270:
.L117:
	.loc 1 566 0
	movi.n	a2, 0x16
.LVL271:
	retw.n
.LVL272:
.L118:
	.loc 1 573 0
	mov.n	a2, a10
.LVL273:
	.loc 1 574 0
	retw.n
.LFE40:
	.size	pthread_mutexattr_settype, .-pthread_mutexattr_settype
	.section	.rodata.__FUNCTION__$5724,"a",@progbits
	.align	4
	.type	__FUNCTION__$5724, @object
	.size	__FUNCTION__$5724, 26
__FUNCTION__$5724:
	.string	"pthread_mutexattr_gettype"
	.section	.rodata.__FUNCTION__$5676,"a",@progbits
	.align	4
	.type	__FUNCTION__$5676, @object
	.size	__FUNCTION__$5676, 13
__FUNCTION__$5676:
	.string	"pthread_once"
	.section	.rodata.__FUNCTION__$5670,"a",@progbits
	.align	4
	.type	__FUNCTION__$5670, @object
	.size	__FUNCTION__$5670, 20
__FUNCTION__$5670:
	.string	"pthread_setspecific"
	.section	.rodata.__FUNCTION__$5665,"a",@progbits
	.align	4
	.type	__FUNCTION__$5665, @object
	.size	__FUNCTION__$5665, 20
__FUNCTION__$5665:
	.string	"pthread_getspecific"
	.section	.rodata.__FUNCTION__$5661,"a",@progbits
	.align	4
	.type	__FUNCTION__$5661, @object
	.size	__FUNCTION__$5661, 19
__FUNCTION__$5661:
	.string	"pthread_key_delete"
	.section	.rodata.__FUNCTION__$5657,"a",@progbits
	.align	4
	.type	__FUNCTION__$5657, @object
	.size	__FUNCTION__$5657, 19
__FUNCTION__$5657:
	.string	"pthread_key_create"
	.section	.bss.s_created$5656,"aw",@nobits
	.align	4
	.type	s_created$5656, @object
	.size	s_created$5656, 4
s_created$5656:
	.zero	4
	.section	.rodata.__func__$5645,"a",@progbits
	.align	4
	.type	__func__$5645, @object
	.size	__func__$5645, 13
__func__$5645:
	.string	"pthread_self"
	.section	.rodata.__FUNCTION__$5638,"a",@progbits
	.align	4
	.type	__FUNCTION__$5638, @object
	.size	__FUNCTION__$5638, 15
__FUNCTION__$5638:
	.string	"pthread_cancel"
	.section	.rodata.__func__$5632,"a",@progbits
	.align	4
	.type	__func__$5632, @object
	.size	__func__$5632, 15
__func__$5632:
	.string	"pthread_detach"
	.section	.rodata.__func__$5624,"a",@progbits
	.align	4
	.type	__func__$5624, @object
	.size	__func__$5624, 13
__func__$5624:
	.string	"pthread_join"
	.section	.rodata.__func__$5602,"a",@progbits
	.align	4
	.type	__func__$5602, @object
	.size	__func__$5602, 18
__func__$5602:
	.string	"pthread_task_func"
	.section	.rodata.__func__$5616,"a",@progbits
	.align	4
	.type	__func__$5616, @object
	.size	__func__$5616, 15
__func__$5616:
	.string	"pthread_create"
	.section	.rodata.__FUNCTION__$5612,"a",@progbits
	.align	4
	.type	__FUNCTION__$5612, @object
	.size	__FUNCTION__$5612, 15
__FUNCTION__$5612:
	.string	"pthread_create"
	.section	.bss.s_threads_list,"aw",@nobits
	.align	4
	.type	s_threads_list, @object
	.size	s_threads_list, 20
s_threads_list:
	.zero	20
	.section	.data.s_mutex_init_lock,"aw",@progbits
	.align	4
	.type	s_mutex_init_lock, @object
	.size	s_mutex_init_lock, 8
s_mutex_init_lock:
	.word	-1287651329
	.word	0
	.section	.bss.s_threads_mux,"aw",@nobits
	.align	4
	.type	s_threads_mux, @object
	.size	s_threads_mux, 4
s_threads_mux:
	.zero	4
	.section	.bss.s_once_mux,"aw",@nobits
	.align	4
	.type	s_once_mux, @object
	.size	s_once_mux, 4
s_once_mux:
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
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI2-.LFB13
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI3-.LFB14
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI4-.LFB29
	.byte	0xe
	.uleb128 0x20
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
	.uleb128 0x20
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
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI7-.LFB32
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI8-.LFB9
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI9-.LFB17
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI10-.LFB18
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI11-.LFB19
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI12-.LFB20
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI13-.LFB21
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI14-.LFB22
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI15-.LFB23
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI16-.LFB24
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI17-.LFB25
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI18-.LFB26
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI19-.LFB27
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE38:
.LSFDE40:
	.4byte	.LEFDE40-.LASFDE40
.LASFDE40:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI20-.LFB28
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE40:
.LSFDE42:
	.4byte	.LEFDE42-.LASFDE42
.LASFDE42:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI21-.LFB30
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE42:
.LSFDE44:
	.4byte	.LEFDE44-.LASFDE44
.LASFDE44:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI22-.LFB33
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE44:
.LSFDE46:
	.4byte	.LEFDE46-.LASFDE46
.LASFDE46:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI23-.LFB31
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE46:
.LSFDE48:
	.4byte	.LEFDE48-.LASFDE48
.LASFDE48:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI24-.LFB34
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE48:
.LSFDE50:
	.4byte	.LEFDE50-.LASFDE50
.LASFDE50:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI25-.LFB35
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE50:
.LSFDE52:
	.4byte	.LEFDE52-.LASFDE52
.LASFDE52:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI26-.LFB36
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE52:
.LSFDE54:
	.4byte	.LEFDE54-.LASFDE54
.LASFDE54:
	.4byte	.Lframe0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x4
	.4byte	.LCFI27-.LFB37
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE54:
.LSFDE56:
	.4byte	.LEFDE56-.LASFDE56
.LASFDE56:
	.4byte	.Lframe0
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x4
	.4byte	.LCFI28-.LFB38
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE56:
.LSFDE58:
	.4byte	.LEFDE58-.LASFDE58
.LASFDE58:
	.4byte	.Lframe0
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x4
	.4byte	.LCFI29-.LFB39
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE58:
.LSFDE60:
	.4byte	.LEFDE60-.LASFDE60
.LASFDE60:
	.4byte	.Lframe0
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x4
	.4byte	.LCFI30-.LFB40
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE60:
	.text
.Letext0:
	.file 2 "C:/esp/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "C:/esp/esp-idf/components/newlib/include/sys/types.h"
	.file 4 "C:/esp/esp-idf/components/newlib/include/sys/sched.h"
	.file 5 "C:/esp/esp-idf/components/newlib/include/stdint.h"
	.file 6 "C:/esp/esp-idf/components/esp32/include/esp_err.h"
	.file 7 "C:/esp/esp-idf/components/freertos/include/freertos/portmacro.h"
	.file 8 "C:/esp/esp-idf/components/freertos/include/freertos/list.h"
	.file 9 "C:/esp/esp-idf/components/freertos/include/freertos/task.h"
	.file 10 "C:/esp/esp-idf/components/freertos/include/freertos/queue.h"
	.file 11 "C:/esp/esp-idf/components/freertos/include/freertos/semphr.h"
	.file 12 "C:/esp/esp-idf/components/log/include/esp_log.h"
	.file 13 "C:/esp/esp-idf/components/newlib/include/stdlib.h"
	.file 14 "C:/esp/esp-idf/components/newlib/include/assert.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1a95
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF168
	.byte	0xc
	.4byte	.LASF169
	.4byte	.LASF170
	.4byte	.Ldebug_ranges0+0x48
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
	.byte	0x19
	.4byte	0x25
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x2
	.byte	0x1a
	.4byte	0x2c
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x4
	.4byte	.LASF10
	.byte	0x2
	.byte	0x31
	.4byte	0x25
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
	.uleb128 0x9
	.4byte	.LASF45
	.byte	0x4
	.byte	0x4
	.byte	0x2e
	.4byte	0xd2
	.uleb128 0xa
	.4byte	.LASF16
	.byte	0x4
	.byte	0x2f
	.4byte	0x25
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	.LASF15
	.byte	0x3
	.2byte	0x134
	.4byte	0x65
	.uleb128 0xc
	.byte	0x20
	.byte	0x3
	.2byte	0x155
	.4byte	0x150
	.uleb128 0xd
	.4byte	.LASF17
	.byte	0x3
	.2byte	0x156
	.4byte	0x25
	.byte	0
	.uleb128 0xd
	.4byte	.LASF18
	.byte	0x3
	.2byte	0x157
	.4byte	0x97
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF19
	.byte	0x3
	.2byte	0x158
	.4byte	0x25
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF20
	.byte	0x3
	.2byte	0x159
	.4byte	0x25
	.byte	0xc
	.uleb128 0xd
	.4byte	.LASF21
	.byte	0x3
	.2byte	0x15a
	.4byte	0x25
	.byte	0x10
	.uleb128 0xd
	.4byte	.LASF22
	.byte	0x3
	.2byte	0x15b
	.4byte	0x25
	.byte	0x14
	.uleb128 0xd
	.4byte	.LASF23
	.byte	0x3
	.2byte	0x15c
	.4byte	0xb9
	.byte	0x18
	.uleb128 0xd
	.4byte	.LASF24
	.byte	0x3
	.2byte	0x165
	.4byte	0x25
	.byte	0x1c
	.byte	0
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x3
	.2byte	0x16b
	.4byte	0xde
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x3
	.2byte	0x1ba
	.4byte	0x65
	.uleb128 0xc
	.byte	0xc
	.byte	0x3
	.2byte	0x1bc
	.4byte	0x199
	.uleb128 0xd
	.4byte	.LASF17
	.byte	0x3
	.2byte	0x1bd
	.4byte	0x25
	.byte	0
	.uleb128 0xd
	.4byte	.LASF27
	.byte	0x3
	.2byte	0x1c6
	.4byte	0x25
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF28
	.byte	0x3
	.2byte	0x1c8
	.4byte	0x25
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x3
	.2byte	0x1c9
	.4byte	0x168
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x3
	.2byte	0x1d9
	.4byte	0x65
	.uleb128 0xc
	.byte	0x8
	.byte	0x3
	.2byte	0x1db
	.4byte	0x1d5
	.uleb128 0xd
	.4byte	.LASF17
	.byte	0x3
	.2byte	0x1dc
	.4byte	0x25
	.byte	0
	.uleb128 0xd
	.4byte	.LASF31
	.byte	0x3
	.2byte	0x1dd
	.4byte	0x25
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x3
	.2byte	0x1de
	.4byte	0x1b1
	.uleb128 0xe
	.4byte	0x1ec
	.uleb128 0xf
	.4byte	0x97
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1e1
	.uleb128 0x4
	.4byte	.LASF33
	.byte	0x5
	.byte	0x15
	.4byte	0x41
	.uleb128 0x4
	.4byte	.LASF34
	.byte	0x5
	.byte	0x2c
	.4byte	0x5a
	.uleb128 0x4
	.4byte	.LASF35
	.byte	0x5
	.byte	0x2d
	.4byte	0x65
	.uleb128 0x4
	.4byte	.LASF36
	.byte	0x5
	.byte	0xa9
	.4byte	0x7e
	.uleb128 0x6
	.byte	0x4
	.4byte	0x224
	.uleb128 0x10
	.uleb128 0x4
	.4byte	.LASF37
	.byte	0x6
	.byte	0x18
	.4byte	0x1fd
	.uleb128 0x4
	.4byte	.LASF38
	.byte	0x7
	.byte	0x6c
	.4byte	0x25
	.uleb128 0x4
	.4byte	.LASF39
	.byte	0x7
	.byte	0x6d
	.4byte	0x2c
	.uleb128 0x4
	.4byte	.LASF40
	.byte	0x7
	.byte	0x73
	.4byte	0x208
	.uleb128 0x11
	.byte	0x8
	.byte	0x7
	.byte	0x81
	.4byte	0x272
	.uleb128 0xa
	.4byte	.LASF41
	.byte	0x7
	.byte	0x82
	.4byte	0x208
	.byte	0
	.uleb128 0xa
	.4byte	.LASF42
	.byte	0x7
	.byte	0x83
	.4byte	0x208
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF43
	.byte	0x7
	.byte	0x88
	.4byte	0x251
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF44
	.uleb128 0x9
	.4byte	.LASF46
	.byte	0x14
	.byte	0x8
	.byte	0xb5
	.4byte	0x2cd
	.uleb128 0xa
	.4byte	.LASF47
	.byte	0x8
	.byte	0xb8
	.4byte	0x246
	.byte	0
	.uleb128 0xa
	.4byte	.LASF48
	.byte	0x8
	.byte	0xb9
	.4byte	0x2cd
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF49
	.byte	0x8
	.byte	0xba
	.4byte	0x2cd
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF50
	.byte	0x8
	.byte	0xbb
	.4byte	0x97
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF51
	.byte	0x8
	.byte	0xbc
	.4byte	0x97
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x284
	.uleb128 0x4
	.4byte	.LASF52
	.byte	0x8
	.byte	0xbf
	.4byte	0x284
	.uleb128 0x9
	.4byte	.LASF53
	.byte	0xc
	.byte	0x8
	.byte	0xc5
	.4byte	0x30f
	.uleb128 0xa
	.4byte	.LASF47
	.byte	0x8
	.byte	0xc8
	.4byte	0x246
	.byte	0
	.uleb128 0xa
	.4byte	.LASF48
	.byte	0x8
	.byte	0xc9
	.4byte	0x2cd
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF49
	.byte	0x8
	.byte	0xca
	.4byte	0x2cd
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.4byte	.LASF54
	.byte	0x8
	.byte	0xcc
	.4byte	0x2de
	.uleb128 0x9
	.4byte	.LASF55
	.byte	0x14
	.byte	0x8
	.byte	0xd6
	.4byte	0x34b
	.uleb128 0xa
	.4byte	.LASF56
	.byte	0x8
	.byte	0xd9
	.4byte	0x23b
	.byte	0
	.uleb128 0xa
	.4byte	.LASF57
	.byte	0x8
	.byte	0xda
	.4byte	0x34b
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF58
	.byte	0x8
	.byte	0xdb
	.4byte	0x30f
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2d3
	.uleb128 0x4
	.4byte	.LASF59
	.byte	0x8
	.byte	0xdd
	.4byte	0x31a
	.uleb128 0x4
	.4byte	.LASF60
	.byte	0x9
	.byte	0x6c
	.4byte	0x97
	.uleb128 0x12
	.byte	0x4
	.4byte	0x2c
	.byte	0x9
	.byte	0x80
	.4byte	0x392
	.uleb128 0x13
	.4byte	.LASF61
	.byte	0
	.uleb128 0x13
	.4byte	.LASF62
	.byte	0x1
	.uleb128 0x13
	.4byte	.LASF63
	.byte	0x2
	.uleb128 0x13
	.4byte	.LASF64
	.byte	0x3
	.uleb128 0x13
	.4byte	.LASF65
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.4byte	0xae
	.uleb128 0x4
	.4byte	.LASF66
	.byte	0xa
	.byte	0x58
	.4byte	0x97
	.uleb128 0x4
	.4byte	.LASF67
	.byte	0xb
	.byte	0x4f
	.4byte	0x397
	.uleb128 0x12
	.byte	0x4
	.4byte	0x2c
	.byte	0xc
	.byte	0x1f
	.4byte	0x3de
	.uleb128 0x13
	.4byte	.LASF68
	.byte	0
	.uleb128 0x13
	.4byte	.LASF69
	.byte	0x1
	.uleb128 0x13
	.4byte	.LASF70
	.byte	0x2
	.uleb128 0x13
	.4byte	.LASF71
	.byte	0x3
	.uleb128 0x13
	.4byte	.LASF72
	.byte	0x4
	.uleb128 0x13
	.4byte	.LASF73
	.byte	0x5
	.byte	0
	.uleb128 0x14
	.4byte	.LASF171
	.byte	0x4
	.4byte	0x2c
	.byte	0x1
	.byte	0x24
	.4byte	0x3fb
	.uleb128 0x13
	.4byte	.LASF74
	.byte	0
	.uleb128 0x13
	.4byte	.LASF75
	.byte	0x1
	.byte	0
	.uleb128 0x11
	.byte	0x20
	.byte	0x1
	.byte	0x2a
	.4byte	0x434
	.uleb128 0xa
	.4byte	.LASF76
	.byte	0x1
	.byte	0x2b
	.4byte	0x2d3
	.byte	0
	.uleb128 0xa
	.4byte	.LASF77
	.byte	0x1
	.byte	0x2c
	.4byte	0x35c
	.byte	0x14
	.uleb128 0xa
	.4byte	.LASF78
	.byte	0x1
	.byte	0x2d
	.4byte	0x3de
	.byte	0x18
	.uleb128 0xa
	.4byte	.LASF79
	.byte	0x1
	.byte	0x2e
	.4byte	0x27d
	.byte	0x1c
	.byte	0
	.uleb128 0x4
	.4byte	.LASF80
	.byte	0x1
	.byte	0x2f
	.4byte	0x3fb
	.uleb128 0x11
	.byte	0x8
	.byte	0x1
	.byte	0x32
	.4byte	0x460
	.uleb128 0xa
	.4byte	.LASF81
	.byte	0x1
	.byte	0x33
	.4byte	0x46f
	.byte	0
	.uleb128 0x15
	.string	"arg"
	.byte	0x1
	.byte	0x34
	.4byte	0x97
	.byte	0x4
	.byte	0
	.uleb128 0x16
	.4byte	0x97
	.4byte	0x46f
	.uleb128 0xf
	.4byte	0x97
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x460
	.uleb128 0x4
	.4byte	.LASF82
	.byte	0x1
	.byte	0x35
	.4byte	0x43f
	.uleb128 0x11
	.byte	0x1c
	.byte	0x1
	.byte	0x38
	.4byte	0x4ad
	.uleb128 0xa
	.4byte	.LASF76
	.byte	0x1
	.byte	0x39
	.4byte	0x2d3
	.byte	0
	.uleb128 0x15
	.string	"sem"
	.byte	0x1
	.byte	0x3a
	.4byte	0x3a2
	.byte	0x14
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x1
	.byte	0x3b
	.4byte	0x25
	.byte	0x18
	.byte	0
	.uleb128 0x4
	.4byte	.LASF83
	.byte	0x1
	.byte	0x3c
	.4byte	0x480
	.uleb128 0x17
	.4byte	.LASF172
	.byte	0x1
	.byte	0x6d
	.4byte	0x35c
	.byte	0x3
	.4byte	0x4d4
	.uleb128 0x18
	.4byte	.LASF103
	.byte	0x1
	.byte	0x6d
	.4byte	0xd2
	.byte	0
	.uleb128 0x19
	.4byte	.LASF87
	.byte	0x1
	.byte	0x57
	.4byte	0x97
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x54d
	.uleb128 0x1a
	.4byte	.LASF84
	.byte	0x1
	.byte	0x57
	.4byte	0x561
	.4byte	.LLST0
	.uleb128 0x1b
	.4byte	.LASF85
	.byte	0x1
	.byte	0x57
	.4byte	0x97
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1c
	.4byte	.LASF86
	.byte	0x1
	.byte	0x59
	.4byte	0x567
	.4byte	.LLST1
	.uleb128 0x1d
	.4byte	.LASF76
	.byte	0x1
	.byte	0x5a
	.4byte	0x34b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1e
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x1f
	.string	"val"
	.byte	0x1
	.byte	0x5c
	.4byte	0x97
	.4byte	.LLST2
	.uleb128 0x20
	.4byte	.LVL4
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	0x97
	.4byte	0x561
	.uleb128 0xf
	.4byte	0x34b
	.uleb128 0xf
	.4byte	0x97
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x54d
	.uleb128 0x6
	.byte	0x4
	.4byte	0x56d
	.uleb128 0x8
	.4byte	0x2d3
	.uleb128 0x19
	.4byte	.LASF88
	.byte	0x1
	.byte	0x65
	.4byte	0x97
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5b5
	.uleb128 0x1a
	.4byte	.LASF89
	.byte	0x1
	.byte	0x65
	.4byte	0x34b
	.4byte	.LLST3
	.uleb128 0x22
	.string	"arg"
	.byte	0x1
	.byte	0x65
	.4byte	0x97
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1d
	.4byte	.LASF90
	.byte	0x1
	.byte	0x67
	.4byte	0x5b5
	.uleb128 0x1
	.byte	0x58
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x434
	.uleb128 0x19
	.4byte	.LASF91
	.byte	0x1
	.byte	0x72
	.4byte	0x97
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x60b
	.uleb128 0x1a
	.4byte	.LASF89
	.byte	0x1
	.byte	0x72
	.4byte	0x34b
	.4byte	.LLST4
	.uleb128 0x22
	.string	"arg"
	.byte	0x1
	.byte	0x72
	.4byte	0x97
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1d
	.4byte	.LASF92
	.byte	0x1
	.byte	0x74
	.4byte	0x35c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1d
	.4byte	.LASF93
	.byte	0x1
	.byte	0x75
	.4byte	0x35c
	.uleb128 0x1
	.byte	0x58
	.byte	0
	.uleb128 0x19
	.4byte	.LASF94
	.byte	0x1
	.byte	0x7b
	.4byte	0x5b5
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x64d
	.uleb128 0x1a
	.4byte	.LASF92
	.byte	0x1
	.byte	0x7b
	.4byte	0x35c
	.4byte	.LLST5
	.uleb128 0x23
	.4byte	.LVL22
	.4byte	0x4d4
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	pthread_get_desc_by_handle
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LASF95
	.byte	0x1
	.2byte	0x18f
	.4byte	0x25
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x678
	.uleb128 0x25
	.4byte	.LASF96
	.byte	0x1
	.2byte	0x18f
	.4byte	0x678
	.4byte	.LLST6
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x67e
	.uleb128 0x8
	.4byte	0x199
	.uleb128 0x26
	.4byte	.LASF97
	.byte	0x1
	.byte	0x80
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6ca
	.uleb128 0x1b
	.4byte	.LASF90
	.byte	0x1
	.byte	0x80
	.4byte	0x5b5
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x27
	.4byte	.LVL29
	.4byte	0x1976
	.4byte	0x6b9
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL30
	.4byte	0x1982
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.LASF98
	.byte	0x1
	.byte	0x86
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x83d
	.uleb128 0x29
	.string	"arg"
	.byte	0x1
	.byte	0x86
	.4byte	0x97
	.4byte	.LLST7
	.uleb128 0x1c
	.4byte	.LASF99
	.byte	0x1
	.byte	0x88
	.4byte	0x83d
	.4byte	.LLST8
	.uleb128 0x2a
	.4byte	.LASF107
	.4byte	0x853
	.uleb128 0x2b
	.4byte	.LASF106
	.4byte	0x858
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5602
	.uleb128 0x1c
	.4byte	.LASF90
	.byte	0x1
	.byte	0x97
	.4byte	0x5b5
	.4byte	.LLST9
	.uleb128 0x27
	.4byte	.LVL33
	.4byte	0x198d
	.4byte	0x747
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x27
	.4byte	.LVL35
	.4byte	0x1982
	.4byte	0x75b
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL37
	.4byte	0x1999
	.4byte	0x779
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x27
	.4byte	.LVL38
	.4byte	0x19a5
	.4byte	0x7a8
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x95
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5602
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL39
	.4byte	0x19b0
	.uleb128 0x2c
	.4byte	.LVL40
	.4byte	0x60b
	.uleb128 0x27
	.4byte	.LVL42
	.4byte	0x19a5
	.4byte	0x7e9
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x99
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5602
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL43
	.4byte	0x683
	.uleb128 0x27
	.4byte	.LVL46
	.4byte	0x19bc
	.4byte	0x810
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x27
	.4byte	.LVL49
	.4byte	0x19c8
	.4byte	0x82d
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x23
	.4byte	.LVL50
	.4byte	0x19d4
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x475
	.uleb128 0x2d
	.4byte	0xa7
	.4byte	0x853
	.uleb128 0x2e
	.4byte	0x90
	.byte	0x11
	.byte	0
	.uleb128 0x8
	.4byte	0x843
	.uleb128 0x8
	.4byte	0x843
	.uleb128 0x24
	.4byte	.LASF100
	.byte	0x1
	.2byte	0x1d6
	.4byte	0x25
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8c4
	.uleb128 0x2f
	.string	"mux"
	.byte	0x1
	.2byte	0x1d6
	.4byte	0x8c4
	.4byte	.LLST10
	.uleb128 0x30
	.string	"tmo"
	.byte	0x1
	.2byte	0x1d6
	.4byte	0x246
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x27
	.4byte	.LVL52
	.4byte	0x19e0
	.4byte	0x8a9
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL55
	.4byte	0x1999
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4ad
	.uleb128 0x31
	.4byte	.LASF101
	.byte	0x1
	.byte	0x48
	.4byte	0x225
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x92a
	.uleb128 0x27
	.4byte	.LVL61
	.4byte	0x19ec
	.4byte	0x8fa
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_threads_list
	.byte	0
	.uleb128 0x27
	.4byte	.LVL62
	.4byte	0x19f8
	.4byte	0x90d
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x27
	.4byte	.LVL63
	.4byte	0x19f8
	.4byte	0x920
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL64
	.4byte	0x1a04
	.byte	0
	.uleb128 0x31
	.4byte	.LASF102
	.byte	0x1
	.byte	0xae
	.4byte	0x25
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc22
	.uleb128 0x1a
	.4byte	.LASF103
	.byte	0x1
	.byte	0xae
	.4byte	0xc22
	.4byte	.LLST11
	.uleb128 0x1a
	.4byte	.LASF96
	.byte	0x1
	.byte	0xae
	.4byte	0xc28
	.4byte	.LLST12
	.uleb128 0x1a
	.4byte	.LASF104
	.byte	0x1
	.byte	0xaf
	.4byte	0x46f
	.4byte	.LLST13
	.uleb128 0x22
	.string	"arg"
	.byte	0x1
	.byte	0xaf
	.4byte	0x97
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1d
	.4byte	.LASF105
	.byte	0x1
	.byte	0xb1
	.4byte	0x35c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.4byte	.LASF107
	.4byte	0xc43
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5612
	.uleb128 0x1c
	.4byte	.LASF99
	.byte	0x1
	.byte	0xb8
	.4byte	0x83d
	.4byte	.LLST14
	.uleb128 0x1d
	.4byte	.LASF90
	.byte	0x1
	.byte	0xbe
	.4byte	0x5b5
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x32
	.string	"res"
	.byte	0x1
	.byte	0xc7
	.4byte	0x230
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2b
	.4byte	.LASF106
	.4byte	0xc48
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5616
	.uleb128 0x2c
	.4byte	.LVL66
	.4byte	0x1a10
	.uleb128 0x27
	.4byte	.LVL67
	.4byte	0x1a1b
	.4byte	0xa12
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5612
	.byte	0
	.uleb128 0x27
	.4byte	.LVL70
	.4byte	0x1a26
	.4byte	0xa25
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL72
	.4byte	0x1a10
	.uleb128 0x27
	.4byte	.LVL73
	.4byte	0x1a1b
	.4byte	0xa5c
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC19
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.byte	0
	.uleb128 0x27
	.4byte	.LVL76
	.4byte	0x1a26
	.4byte	0xa70
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL78
	.4byte	0x1a10
	.uleb128 0x27
	.4byte	.LVL79
	.4byte	0x1a1b
	.4byte	0xaa7
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC21
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.byte	0
	.uleb128 0x27
	.4byte	.LVL80
	.4byte	0x1982
	.4byte	0xabb
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL83
	.4byte	0x1a31
	.4byte	0xad4
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x27
	.4byte	.LVL86
	.4byte	0x1a3a
	.4byte	0xb13
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	pthread_task_func
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC24
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x800
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x35
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x21
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL88
	.4byte	0x1a10
	.uleb128 0x27
	.4byte	.LVL89
	.4byte	0x1a1b
	.4byte	0xb4a
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC28
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.byte	0
	.uleb128 0x27
	.4byte	.LVL90
	.4byte	0x1982
	.4byte	0xb5e
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL91
	.4byte	0x1982
	.4byte	0xb72
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL94
	.4byte	0x1a46
	.4byte	0xb86
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL96
	.4byte	0x1999
	.4byte	0xba4
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x27
	.4byte	.LVL97
	.4byte	0x19a5
	.4byte	0xbd3
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xd8
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5616
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.uleb128 0x27
	.4byte	.LVL98
	.4byte	0x1a52
	.4byte	0xbf0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_threads_list
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL99
	.4byte	0x19c8
	.4byte	0xc0d
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x23
	.4byte	.LVL100
	.4byte	0x19bc
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xd2
	.uleb128 0x6
	.byte	0x4
	.4byte	0xc2e
	.uleb128 0x8
	.4byte	0x150
	.uleb128 0x2d
	.4byte	0xa7
	.4byte	0xc43
	.uleb128 0x2e
	.4byte	0x90
	.byte	0xe
	.byte	0
	.uleb128 0x8
	.4byte	0xc33
	.uleb128 0x8
	.4byte	0xc33
	.uleb128 0x31
	.4byte	.LASF108
	.byte	0x1
	.byte	0xe7
	.4byte	0x25
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe4f
	.uleb128 0x1a
	.4byte	.LASF103
	.byte	0x1
	.byte	0xe7
	.4byte	0xd2
	.4byte	.LLST15
	.uleb128 0x1b
	.4byte	.LASF109
	.byte	0x1
	.byte	0xe7
	.4byte	0xe4f
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1c
	.4byte	.LASF90
	.byte	0x1
	.byte	0xe9
	.4byte	0x5b5
	.4byte	.LLST16
	.uleb128 0x1f
	.string	"ret"
	.byte	0x1
	.byte	0xea
	.4byte	0x25
	.4byte	.LLST17
	.uleb128 0x2a
	.4byte	.LASF107
	.4byte	0xe65
	.uleb128 0x2b
	.4byte	.LASF106
	.4byte	0xe6a
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5624
	.uleb128 0x33
	.4byte	.LASF110
	.byte	0x1
	.byte	0xf2
	.4byte	0x35c
	.uleb128 0x34
	.4byte	0x4b8
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.byte	0x1
	.byte	0xf2
	.4byte	0xcf9
	.uleb128 0x35
	.4byte	0x4c8
	.4byte	.LLST18
	.uleb128 0x23
	.4byte	.LVL108
	.4byte	0x4d4
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	pthread_get_handle_by_desc
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0xd3d
	.uleb128 0x1c
	.4byte	.LASF111
	.byte	0x1
	.byte	0xfd
	.4byte	0x5b5
	.4byte	.LLST19
	.uleb128 0x2c
	.4byte	.LVL110
	.4byte	0x19b0
	.uleb128 0x2c
	.4byte	.LVL111
	.4byte	0x60b
	.uleb128 0x2c
	.4byte	.LVL112
	.4byte	0x19b0
	.uleb128 0x23
	.4byte	.LVL115
	.4byte	0x683
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL106
	.4byte	0x1999
	.4byte	0xd5b
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x27
	.4byte	.LVL107
	.4byte	0x19a5
	.4byte	0xd8a
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xf0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5624
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL109
	.4byte	0x19b0
	.uleb128 0x27
	.4byte	.LVL118
	.4byte	0x19c8
	.4byte	0xdb0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x27
	.4byte	.LVL119
	.4byte	0x198d
	.4byte	0xdd3
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x27
	.4byte	.LVL120
	.4byte	0x1999
	.4byte	0xdf1
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x27
	.4byte	.LVL121
	.4byte	0x19a5
	.4byte	0xe21
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x10e
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5624
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.uleb128 0x27
	.4byte	.LVL122
	.4byte	0x683
	.4byte	0xe35
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL124
	.4byte	0x19c8
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x97
	.uleb128 0x2d
	.4byte	0xa7
	.4byte	0xe65
	.uleb128 0x2e
	.4byte	0x90
	.byte	0xc
	.byte	0
	.uleb128 0x8
	.4byte	0xe55
	.uleb128 0x8
	.4byte	0xe55
	.uleb128 0x37
	.4byte	.LASF112
	.byte	0x1
	.2byte	0x11c
	.4byte	0x25
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf7c
	.uleb128 0x25
	.4byte	.LASF103
	.byte	0x1
	.2byte	0x11c
	.4byte	0xd2
	.4byte	.LLST20
	.uleb128 0x38
	.4byte	.LASF90
	.byte	0x1
	.2byte	0x11e
	.4byte	0x5b5
	.4byte	.LLST21
	.uleb128 0x39
	.string	"ret"
	.byte	0x1
	.2byte	0x11f
	.4byte	0x25
	.4byte	.LLST22
	.uleb128 0x2b
	.4byte	.LASF106
	.4byte	0xf7c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5632
	.uleb128 0x3a
	.4byte	.LASF110
	.byte	0x1
	.2byte	0x124
	.4byte	0x35c
	.uleb128 0x2a
	.4byte	.LASF107
	.4byte	0xf81
	.uleb128 0x3b
	.4byte	0x4b8
	.4byte	.LBB13
	.4byte	.LBE13-.LBB13
	.byte	0x1
	.2byte	0x124
	.4byte	0xf14
	.uleb128 0x35
	.4byte	0x4c8
	.4byte	.LLST23
	.uleb128 0x23
	.4byte	.LVL129
	.4byte	0x4d4
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	pthread_get_handle_by_desc
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL127
	.4byte	0x1999
	.4byte	0xf32
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x27
	.4byte	.LVL128
	.4byte	0x19a5
	.4byte	0xf62
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x122
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5632
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.uleb128 0x23
	.4byte	.LVL133
	.4byte	0x19c8
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0xc33
	.uleb128 0x8
	.4byte	0xc33
	.uleb128 0x37
	.4byte	.LASF113
	.byte	0x1
	.2byte	0x12f
	.4byte	0x25
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xffc
	.uleb128 0x25
	.4byte	.LASF103
	.byte	0x1
	.2byte	0x12f
	.4byte	0xd2
	.4byte	.LLST24
	.uleb128 0x2b
	.4byte	.LASF107
	.4byte	0xffc
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5638
	.uleb128 0x2c
	.4byte	.LVL135
	.4byte	0x1a10
	.uleb128 0x23
	.4byte	.LVL136
	.4byte	0x1a1b
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC47
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5638
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0xc33
	.uleb128 0x37
	.4byte	.LASF114
	.byte	0x1
	.2byte	0x135
	.4byte	0x25
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x102b
	.uleb128 0x23
	.4byte	.LVL138
	.4byte	0x1a5e
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x37
	.4byte	.LASF115
	.byte	0x1
	.2byte	0x13b
	.4byte	0xd2
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x110c
	.uleb128 0x2b
	.4byte	.LASF106
	.4byte	0x110c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5645
	.uleb128 0x3c
	.4byte	.LASF90
	.byte	0x1
	.2byte	0x140
	.4byte	0x5b5
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x27
	.4byte	.LVL139
	.4byte	0x1999
	.4byte	0x1080
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x27
	.4byte	.LVL140
	.4byte	0x19a5
	.4byte	0x10b0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x13e
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5645
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL141
	.4byte	0x19b0
	.uleb128 0x2c
	.4byte	.LVL142
	.4byte	0x60b
	.uleb128 0x27
	.4byte	.LVL144
	.4byte	0x19a5
	.4byte	0x10f2
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x142
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5645
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC53
	.byte	0
	.uleb128 0x23
	.4byte	.LVL145
	.4byte	0x19c8
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0xe55
	.uleb128 0x37
	.4byte	.LASF116
	.byte	0x1
	.2byte	0x148
	.4byte	0x25
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x114a
	.uleb128 0x2f
	.string	"t1"
	.byte	0x1
	.2byte	0x148
	.4byte	0xd2
	.4byte	.LLST25
	.uleb128 0x2f
	.string	"t2"
	.byte	0x1
	.2byte	0x148
	.4byte	0xd2
	.4byte	.LLST26
	.byte	0
	.uleb128 0x37
	.4byte	.LASF117
	.byte	0x1
	.2byte	0x14e
	.4byte	0x25
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x11e0
	.uleb128 0x2f
	.string	"key"
	.byte	0x1
	.2byte	0x14e
	.4byte	0x11e0
	.4byte	.LLST27
	.uleb128 0x3d
	.4byte	.LASF118
	.byte	0x1
	.2byte	0x14e
	.4byte	0x1ec
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3c
	.4byte	.LASF119
	.byte	0x1
	.2byte	0x150
	.4byte	0x25
	.uleb128 0x5
	.byte	0x3
	.4byte	s_created$5656
	.uleb128 0x2b
	.4byte	.LASF107
	.4byte	0x11f6
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5657
	.uleb128 0x2c
	.4byte	.LVL150
	.4byte	0x1a10
	.uleb128 0x23
	.4byte	.LVL151
	.4byte	0x1a1b
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC58
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5657
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1a5
	.uleb128 0x2d
	.4byte	0xa7
	.4byte	0x11f6
	.uleb128 0x2e
	.4byte	0x90
	.byte	0x12
	.byte	0
	.uleb128 0x8
	.4byte	0x11e6
	.uleb128 0x37
	.4byte	.LASF120
	.byte	0x1
	.2byte	0x15d
	.4byte	0x25
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1271
	.uleb128 0x2f
	.string	"key"
	.byte	0x1
	.2byte	0x15d
	.4byte	0x1a5
	.4byte	.LLST28
	.uleb128 0x2b
	.4byte	.LASF107
	.4byte	0x1271
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5661
	.uleb128 0x2c
	.4byte	.LVL154
	.4byte	0x1a10
	.uleb128 0x23
	.4byte	.LVL155
	.4byte	0x1a1b
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC47
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5661
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x11e6
	.uleb128 0x37
	.4byte	.LASF121
	.byte	0x1
	.2byte	0x163
	.4byte	0x97
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12ec
	.uleb128 0x2f
	.string	"key"
	.byte	0x1
	.2byte	0x163
	.4byte	0x1a5
	.4byte	.LLST29
	.uleb128 0x2b
	.4byte	.LASF107
	.4byte	0x12fc
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5665
	.uleb128 0x2c
	.4byte	.LVL158
	.4byte	0x1a10
	.uleb128 0x23
	.4byte	.LVL159
	.4byte	0x1a1b
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC47
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5665
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	0xa7
	.4byte	0x12fc
	.uleb128 0x2e
	.4byte	0x90
	.byte	0x13
	.byte	0
	.uleb128 0x8
	.4byte	0x12ec
	.uleb128 0x37
	.4byte	.LASF122
	.byte	0x1
	.2byte	0x169
	.4byte	0x25
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1385
	.uleb128 0x2f
	.string	"key"
	.byte	0x1
	.2byte	0x169
	.4byte	0x1a5
	.4byte	.LLST30
	.uleb128 0x3d
	.4byte	.LASF123
	.byte	0x1
	.2byte	0x169
	.4byte	0x21e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2b
	.4byte	.LASF107
	.4byte	0x1385
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5670
	.uleb128 0x2c
	.4byte	.LVL162
	.4byte	0x1a10
	.uleb128 0x23
	.4byte	.LVL163
	.4byte	0x1a1b
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC47
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5670
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x12ec
	.uleb128 0x3e
	.4byte	.LASF124
	.byte	0x1
	.2byte	0x170
	.4byte	0x25
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x14ab
	.uleb128 0x25
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x170
	.4byte	0x14ab
	.4byte	.LLST31
	.uleb128 0x25
	.4byte	.LASF126
	.byte	0x1
	.2byte	0x170
	.4byte	0xa0
	.4byte	.LLST32
	.uleb128 0x2b
	.4byte	.LASF107
	.4byte	0x14b1
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5676
	.uleb128 0x3c
	.4byte	.LASF127
	.byte	0x1
	.2byte	0x177
	.4byte	0x35c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2c
	.4byte	.LVL166
	.4byte	0x1a10
	.uleb128 0x27
	.4byte	.LVL167
	.4byte	0x1a1b
	.4byte	0x1421
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC71
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5676
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL170
	.4byte	0x19b0
	.uleb128 0x2c
	.4byte	.LVL172
	.4byte	0x1a6a
	.uleb128 0x27
	.4byte	.LVL173
	.4byte	0x1999
	.4byte	0x1451
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x27
	.4byte	.LVL177
	.4byte	0x19c8
	.4byte	0x146e
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL179
	.4byte	0x1a10
	.uleb128 0x23
	.4byte	.LVL180
	.4byte	0x1a1b
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC74
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5676
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1d5
	.uleb128 0x8
	.4byte	0xe55
	.uleb128 0x37
	.4byte	.LASF128
	.byte	0x1
	.2byte	0x197
	.4byte	0x25
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1584
	.uleb128 0x25
	.4byte	.LASF129
	.byte	0x1
	.2byte	0x197
	.4byte	0x1584
	.4byte	.LLST33
	.uleb128 0x25
	.4byte	.LASF96
	.byte	0x1
	.2byte	0x197
	.4byte	0x678
	.4byte	.LLST34
	.uleb128 0x38
	.4byte	.LASF27
	.byte	0x1
	.2byte	0x199
	.4byte	0x25
	.4byte	.LLST35
	.uleb128 0x39
	.string	"mux"
	.byte	0x1
	.2byte	0x1aa
	.4byte	0x8c4
	.4byte	.LLST36
	.uleb128 0x36
	.4byte	.Ldebug_ranges0+0x30
	.4byte	0x153a
	.uleb128 0x39
	.string	"res"
	.byte	0x1
	.2byte	0x1a3
	.4byte	0x25
	.4byte	.LLST37
	.uleb128 0x23
	.4byte	.LVL186
	.4byte	0x64d
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL190
	.4byte	0x1a26
	.4byte	0x154d
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x4c
	.byte	0
	.uleb128 0x27
	.4byte	.LVL192
	.4byte	0x19f8
	.4byte	0x1560
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x27
	.4byte	.LVL193
	.4byte	0x19f8
	.4byte	0x1573
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x23
	.4byte	.LVL195
	.4byte	0x1982
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x15c
	.uleb128 0x24
	.4byte	.LASF130
	.byte	0x1
	.2byte	0x1e5
	.4byte	0x25
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1608
	.uleb128 0x25
	.4byte	.LASF129
	.byte	0x1
	.2byte	0x1e5
	.4byte	0x1584
	.4byte	.LLST38
	.uleb128 0x39
	.string	"res"
	.byte	0x1
	.2byte	0x1e6
	.4byte	0x25
	.4byte	.LLST39
	.uleb128 0x27
	.4byte	.LVL209
	.4byte	0x1a76
	.4byte	0x15db
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_mutex_init_lock
	.byte	0
	.uleb128 0x27
	.4byte	.LVL210
	.4byte	0x14b6
	.4byte	0x15f4
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x23
	.4byte	.LVL214
	.4byte	0x1a81
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_mutex_init_lock
	.byte	0
	.byte	0
	.uleb128 0x37
	.4byte	.LASF131
	.byte	0x1
	.2byte	0x1bf
	.4byte	0x25
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x168e
	.uleb128 0x25
	.4byte	.LASF129
	.byte	0x1
	.2byte	0x1bf
	.4byte	0x1584
	.4byte	.LLST40
	.uleb128 0x39
	.string	"mux"
	.byte	0x1
	.2byte	0x1c1
	.4byte	0x8c4
	.4byte	.LLST41
	.uleb128 0x2a
	.4byte	.LASF107
	.4byte	0x169e
	.uleb128 0x39
	.string	"res"
	.byte	0x1
	.2byte	0x1cb
	.4byte	0x25
	.4byte	.LLST42
	.uleb128 0x27
	.4byte	.LVL219
	.4byte	0x85d
	.4byte	0x1674
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL221
	.4byte	0x1a04
	.uleb128 0x23
	.4byte	.LVL222
	.4byte	0x1982
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	0xa7
	.4byte	0x169e
	.uleb128 0x2e
	.4byte	0x90
	.byte	0x15
	.byte	0
	.uleb128 0x8
	.4byte	0x168e
	.uleb128 0x37
	.4byte	.LASF132
	.byte	0x1
	.2byte	0x1f1
	.4byte	0x25
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1702
	.uleb128 0x25
	.4byte	.LASF129
	.byte	0x1
	.2byte	0x1f1
	.4byte	0x1584
	.4byte	.LLST43
	.uleb128 0x39
	.string	"res"
	.byte	0x1
	.2byte	0x1f6
	.4byte	0x25
	.4byte	.LLST44
	.uleb128 0x27
	.4byte	.LVL229
	.4byte	0x158a
	.4byte	0x16f1
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL231
	.4byte	0x85d
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0
	.uleb128 0x37
	.4byte	.LASF133
	.byte	0x1
	.2byte	0x1fd
	.4byte	0x25
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1760
	.uleb128 0x25
	.4byte	.LASF129
	.byte	0x1
	.2byte	0x1fd
	.4byte	0x1584
	.4byte	.LLST45
	.uleb128 0x39
	.string	"res"
	.byte	0x1
	.2byte	0x202
	.4byte	0x25
	.4byte	.LLST46
	.uleb128 0x27
	.4byte	.LVL238
	.4byte	0x158a
	.4byte	0x1750
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL240
	.4byte	0x85d
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x37
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x209
	.4byte	0x25
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x17bd
	.uleb128 0x25
	.4byte	.LASF129
	.byte	0x1
	.2byte	0x209
	.4byte	0x1584
	.4byte	.LLST47
	.uleb128 0x39
	.string	"mux"
	.byte	0x1
	.2byte	0x20b
	.4byte	0x8c4
	.4byte	.LLST48
	.uleb128 0x2c
	.4byte	.LVL248
	.4byte	0x1a8c
	.uleb128 0x23
	.4byte	.LVL251
	.4byte	0x19c8
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x37
	.4byte	.LASF135
	.byte	0x1
	.2byte	0x21a
	.4byte	0x25
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x17e8
	.uleb128 0x25
	.4byte	.LASF96
	.byte	0x1
	.2byte	0x21a
	.4byte	0x17e8
	.4byte	.LLST49
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x199
	.uleb128 0x37
	.4byte	.LASF136
	.byte	0x1
	.2byte	0x224
	.4byte	0x25
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1819
	.uleb128 0x25
	.4byte	.LASF96
	.byte	0x1
	.2byte	0x224
	.4byte	0x17e8
	.4byte	.LLST50
	.byte	0
	.uleb128 0x37
	.4byte	.LASF137
	.byte	0x1
	.2byte	0x22d
	.4byte	0x25
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x189d
	.uleb128 0x25
	.4byte	.LASF96
	.byte	0x1
	.2byte	0x22d
	.4byte	0x678
	.4byte	.LLST51
	.uleb128 0x3d
	.4byte	.LASF27
	.byte	0x1
	.2byte	0x22d
	.4byte	0x189d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2b
	.4byte	.LASF107
	.4byte	0x18b3
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5724
	.uleb128 0x2c
	.4byte	.LVL264
	.4byte	0x1a10
	.uleb128 0x23
	.4byte	.LVL265
	.4byte	0x1a1b
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC47
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5724
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x25
	.uleb128 0x2d
	.4byte	0xa7
	.4byte	0x18b3
	.uleb128 0x2e
	.4byte	0x90
	.byte	0x19
	.byte	0
	.uleb128 0x8
	.4byte	0x18a3
	.uleb128 0x37
	.4byte	.LASF138
	.byte	0x1
	.2byte	0x233
	.4byte	0x25
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1920
	.uleb128 0x25
	.4byte	.LASF96
	.byte	0x1
	.2byte	0x233
	.4byte	0x17e8
	.4byte	.LLST52
	.uleb128 0x3d
	.4byte	.LASF27
	.byte	0x1
	.2byte	0x233
	.4byte	0x25
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3c
	.4byte	.LASF139
	.byte	0x1
	.2byte	0x238
	.4byte	0x199
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x39
	.string	"res"
	.byte	0x1
	.2byte	0x239
	.4byte	0x25
	.4byte	.LLST53
	.uleb128 0x23
	.4byte	.LVL268
	.4byte	0x64d
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x32
	.string	"TAG"
	.byte	0x1
	.byte	0x21
	.4byte	0x392
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC15
	.byte	0x9f
	.uleb128 0x1d
	.4byte	.LASF140
	.byte	0x1
	.byte	0x3f
	.4byte	0x3a2
	.uleb128 0x5
	.byte	0x3
	.4byte	s_once_mux
	.uleb128 0x1d
	.4byte	.LASF141
	.byte	0x1
	.byte	0x40
	.4byte	0x3a2
	.uleb128 0x5
	.byte	0x3
	.4byte	s_threads_mux
	.uleb128 0x1d
	.4byte	.LASF142
	.byte	0x1
	.byte	0x41
	.4byte	0x272
	.uleb128 0x5
	.byte	0x3
	.4byte	s_mutex_init_lock
	.uleb128 0x1d
	.4byte	.LASF143
	.byte	0x1
	.byte	0x43
	.4byte	0x351
	.uleb128 0x5
	.byte	0x3
	.4byte	s_threads_list
	.uleb128 0x3f
	.4byte	.LASF144
	.4byte	.LASF144
	.byte	0x8
	.2byte	0x1cb
	.uleb128 0x40
	.4byte	.LASF145
	.4byte	.LASF145
	.byte	0xd
	.byte	0x5a
	.uleb128 0x3f
	.4byte	.LASF146
	.4byte	.LASF146
	.byte	0x9
	.2byte	0x720
	.uleb128 0x3f
	.4byte	.LASF147
	.4byte	.LASF147
	.byte	0xa
	.2byte	0x3e9
	.uleb128 0x40
	.4byte	.LASF148
	.4byte	.LASF148
	.byte	0xe
	.byte	0x29
	.uleb128 0x3f
	.4byte	.LASF149
	.4byte	.LASF149
	.byte	0x9
	.2byte	0x83e
	.uleb128 0x3f
	.4byte	.LASF150
	.4byte	.LASF150
	.byte	0x9
	.2byte	0x67c
	.uleb128 0x3f
	.4byte	.LASF151
	.4byte	.LASF151
	.byte	0xa
	.2byte	0x2a8
	.uleb128 0x3f
	.4byte	.LASF152
	.4byte	.LASF152
	.byte	0x9
	.2byte	0x29d
	.uleb128 0x3f
	.4byte	.LASF153
	.4byte	.LASF153
	.byte	0xa
	.2byte	0x62b
	.uleb128 0x3f
	.4byte	.LASF154
	.4byte	.LASF154
	.byte	0x8
	.2byte	0x18f
	.uleb128 0x3f
	.4byte	.LASF155
	.4byte	.LASF155
	.byte	0xa
	.2byte	0x621
	.uleb128 0x3f
	.4byte	.LASF156
	.4byte	.LASF156
	.byte	0xa
	.2byte	0x417
	.uleb128 0x40
	.4byte	.LASF157
	.4byte	.LASF157
	.byte	0xc
	.byte	0x4c
	.uleb128 0x40
	.4byte	.LASF158
	.4byte	.LASF158
	.byte	0xc
	.byte	0x60
	.uleb128 0x40
	.4byte	.LASF159
	.4byte	.LASF159
	.byte	0xd
	.byte	0x65
	.uleb128 0x41
	.4byte	.LASF173
	.4byte	.LASF173
	.uleb128 0x3f
	.4byte	.LASF160
	.4byte	.LASF160
	.byte	0x9
	.2byte	0x17a
	.uleb128 0x3f
	.4byte	.LASF161
	.4byte	.LASF161
	.byte	0x8
	.2byte	0x19a
	.uleb128 0x3f
	.4byte	.LASF162
	.4byte	.LASF162
	.byte	0x8
	.2byte	0x1bc
	.uleb128 0x3f
	.4byte	.LASF163
	.4byte	.LASF163
	.byte	0x9
	.2byte	0x2d1
	.uleb128 0x3f
	.4byte	.LASF164
	.4byte	.LASF164
	.byte	0x9
	.2byte	0x860
	.uleb128 0x40
	.4byte	.LASF165
	.4byte	.LASF165
	.byte	0x7
	.byte	0xd9
	.uleb128 0x40
	.4byte	.LASF166
	.4byte	.LASF166
	.byte	0x7
	.byte	0xd8
	.uleb128 0x3f
	.4byte	.LASF167
	.4byte	.LASF167
	.byte	0xa
	.2byte	0x62c
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
	.uleb128 0xc
	.uleb128 0x13
	.byte	0x1
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x38
	.uleb128 0xb
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1c
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
	.uleb128 0x18
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
	.uleb128 0x20
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.uleb128 0x41
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
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x6
	.byte	0x3
	.4byte	s_threads_list+8
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL4-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL4-1
	.4byte	.LVL6
	.2byte	0x6
	.byte	0x3
	.4byte	s_threads_list+8
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL8
	.4byte	.LFE10
	.2byte	0x6
	.byte	0x3
	.4byte	s_threads_list+8
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL8
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL10
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
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL15
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
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL23
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL24
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
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL31
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL36
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL32
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL36
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL42
	.4byte	.LVL43-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL51
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
	.4byte	.LFE32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
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
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL74
	.4byte	.LVL75
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL75
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL81
	.4byte	.LVL82
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL82
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
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL103
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL65
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL71
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL65
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL84
	.4byte	.LVL85
	.2byte	0x2
	.byte	0x73
	.sleb128 0
	.4byte	.LVL85
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL71
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL102
	.4byte	.LFE17
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL104
	.4byte	.LVL123
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL123
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL105
	.4byte	.LVL123
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL123
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL105
	.4byte	.LVL117
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL117
	.4byte	.LFE18
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL107
	.4byte	.LVL123
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL123
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL111
	.4byte	.LVL112-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL113
	.4byte	.LVL114
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL116
	.4byte	.LVL117
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL125
	.4byte	.LVL130
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL130
	.4byte	.LVL131
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL131
	.4byte	.LVL132
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL132
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL126
	.4byte	.LVL130
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL130
	.4byte	.LVL131
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL131
	.4byte	.LVL132
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL132
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL126
	.4byte	.LVL132
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL132
	.4byte	.LFE19
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL128
	.4byte	.LVL130
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL130
	.4byte	.LVL131
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL131
	.4byte	.LVL132
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL132
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL134
	.4byte	.LVL137
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL137
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL146
	.4byte	.LVL148
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL148
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL146
	.4byte	.LVL147
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL147
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL149
	.4byte	.LVL152
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL152
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL153
	.4byte	.LVL156
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL156
	.4byte	.LFE25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL157
	.4byte	.LVL160
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL160
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL161
	.4byte	.LVL164
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL164
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL165
	.4byte	.LVL168
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL168
	.4byte	.LVL169
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL169
	.4byte	.LVL176
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL176
	.4byte	.LVL178
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL178
	.4byte	.LVL181
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL181
	.4byte	.LVL182
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL182
	.4byte	.LVL183
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL183
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL165
	.4byte	.LVL175
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL175
	.4byte	.LVL178
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL178
	.4byte	.LVL182
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL182
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL184
	.4byte	.LVL196
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL196
	.4byte	.LVL197
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL197
	.4byte	.LVL198
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL198
	.4byte	.LVL199
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL199
	.4byte	.LVL200
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL200
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
	.4byte	.LVL205
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL205
	.4byte	.LVL206
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL206
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL184
	.4byte	.LVL191
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL191
	.4byte	.LVL199
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL199
	.4byte	.LVL205
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL205
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL185
	.4byte	.LVL187
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL187
	.4byte	.LVL188
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL188
	.4byte	.LVL189
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL189
	.4byte	.LVL194
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL199
	.4byte	.LVL205
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL205
	.4byte	.LFE30
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL191
	.4byte	.LVL199
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL205
	.4byte	.LFE30
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL186
	.4byte	.LVL188
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL203
	.4byte	.LVL205
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL207
	.4byte	.LVL211
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL211
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
	.4byte	.LVL215
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL215
	.4byte	.LVL216
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL216
	.4byte	.LFE33
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL208
	.4byte	.LVL211
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL211
	.4byte	.LVL212
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL212
	.4byte	.LVL213
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL213
	.4byte	.LVL215
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL215
	.4byte	.LVL216
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL216
	.4byte	.LFE33
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL217
	.4byte	.LVL218
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL218
	.4byte	.LVL224
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL224
	.4byte	.LVL225
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL225
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL218
	.4byte	.LVL223
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL226
	.4byte	.LVL227
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL219
	.4byte	.LVL220
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL226
	.4byte	.LFE31
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL228
	.4byte	.LVL232
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL232
	.4byte	.LVL233
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL233
	.4byte	.LVL234
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL234
	.4byte	.LVL235
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL235
	.4byte	.LVL236
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL236
	.4byte	.LFE34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL229
	.4byte	.LVL230
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL235
	.4byte	.LFE34
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL237
	.4byte	.LVL241
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL241
	.4byte	.LVL242
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL242
	.4byte	.LVL243
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL243
	.4byte	.LVL244
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL244
	.4byte	.LVL245
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL245
	.4byte	.LFE35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL238
	.4byte	.LVL239
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL244
	.4byte	.LFE35
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL246
	.4byte	.LVL247
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL247
	.4byte	.LVL253
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL253
	.4byte	.LVL254
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL254
	.4byte	.LFE36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL247
	.4byte	.LVL249
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL250
	.4byte	.LVL252
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL255
	.4byte	.LVL256
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL256
	.4byte	.LVL257
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL257
	.4byte	.LVL258
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL258
	.4byte	.LFE37
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL259
	.4byte	.LVL260
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL260
	.4byte	.LVL261
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL261
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
.LLST51:
	.4byte	.LVL263
	.4byte	.LVL266
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL266
	.4byte	.LFE39
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL267
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
	.4byte	.LFE40
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL268
	.4byte	.LVL270
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL272
	.4byte	.LFE40
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x10c
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
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
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
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
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
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB7
	.4byte	.LBE7
	.4byte	.LBB8
	.4byte	.LBE8
	.4byte	0
	.4byte	0
	.4byte	.LBB11
	.4byte	.LBE11
	.4byte	.LBB12
	.4byte	.LBE12
	.4byte	0
	.4byte	0
	.4byte	.LBB15
	.4byte	.LBE15
	.4byte	.LBB16
	.4byte	.LBE16
	.4byte	0
	.4byte	0
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LFB9
	.4byte	.LFE9
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
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LFB31
	.4byte	.LFE31
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF113:
	.string	"pthread_cancel"
.LASF99:
	.string	"task_arg"
.LASF159:
	.string	"malloc"
.LASF79:
	.string	"detached"
.LASF31:
	.string	"init_executed"
.LASF54:
	.string	"MiniListItem_t"
.LASF130:
	.string	"pthread_mutex_init_if_static"
.LASF5:
	.string	"__uint8_t"
.LASF92:
	.string	"task_handle"
.LASF27:
	.string	"type"
.LASF121:
	.string	"pthread_getspecific"
.LASF17:
	.string	"is_initialized"
.LASF9:
	.string	"long long unsigned int"
.LASF133:
	.string	"pthread_mutex_trylock"
.LASF158:
	.string	"esp_log_write"
.LASF91:
	.string	"pthread_get_desc_by_handle"
.LASF29:
	.string	"pthread_mutexattr_t"
.LASF58:
	.string	"xListEnd"
.LASF66:
	.string	"QueueHandle_t"
.LASF90:
	.string	"pthread"
.LASF53:
	.string	"xMINI_LIST_ITEM"
.LASF60:
	.string	"TaskHandle_t"
.LASF147:
	.string	"xQueueGenericReceive"
.LASF132:
	.string	"pthread_mutex_lock"
.LASF25:
	.string	"pthread_attr_t"
.LASF72:
	.string	"ESP_LOG_DEBUG"
.LASF8:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF108:
	.string	"pthread_join"
.LASF101:
	.string	"esp_pthread_init"
.LASF163:
	.string	"vTaskDelay"
.LASF131:
	.string	"pthread_mutex_destroy"
.LASF84:
	.string	"item_check"
.LASF165:
	.string	"vTaskEnterCritical"
.LASF78:
	.string	"state"
.LASF160:
	.string	"xTaskCreatePinnedToCore"
.LASF11:
	.string	"long int"
.LASF62:
	.string	"eSetBits"
.LASF81:
	.string	"func"
.LASF148:
	.string	"__assert_func"
.LASF40:
	.string	"TickType_t"
.LASF109:
	.string	"retval"
.LASF117:
	.string	"pthread_key_create"
.LASF171:
	.string	"esp_pthread_task_state"
.LASF38:
	.string	"BaseType_t"
.LASF162:
	.string	"vListInsertEnd"
.LASF43:
	.string	"portMUX_TYPE"
.LASF76:
	.string	"list_item"
.LASF18:
	.string	"stackaddr"
.LASF42:
	.string	"count"
.LASF21:
	.string	"inheritsched"
.LASF7:
	.string	"__uint32_t"
.LASF10:
	.string	"__intptr_t"
.LASF75:
	.string	"PTHREAD_TASK_STATE_EXIT"
.LASF127:
	.string	"cur_task"
.LASF123:
	.string	"value"
.LASF96:
	.string	"attr"
.LASF82:
	.string	"esp_pthread_task_arg_t"
.LASF0:
	.string	"unsigned int"
.LASF153:
	.string	"xQueueTakeMutexRecursive"
.LASF97:
	.string	"pthread_delete"
.LASF115:
	.string	"pthread_self"
.LASF64:
	.string	"eSetValueWithOverwrite"
.LASF56:
	.string	"uxNumberOfItems"
.LASF13:
	.string	"long unsigned int"
.LASF122:
	.string	"pthread_setspecific"
.LASF107:
	.string	"__FUNCTION__"
.LASF151:
	.string	"xQueueGenericSend"
.LASF65:
	.string	"eSetValueWithoutOverwrite"
.LASF141:
	.string	"s_threads_mux"
.LASF1:
	.string	"short unsigned int"
.LASF22:
	.string	"schedpolicy"
.LASF155:
	.string	"xQueueCreateMutex"
.LASF98:
	.string	"pthread_task_func"
.LASF137:
	.string	"pthread_mutexattr_gettype"
.LASF16:
	.string	"sched_priority"
.LASF36:
	.string	"intptr_t"
.LASF4:
	.string	"short int"
.LASF89:
	.string	"item"
.LASF128:
	.string	"pthread_mutex_init"
.LASF136:
	.string	"pthread_mutexattr_destroy"
.LASF142:
	.string	"s_mutex_init_lock"
.LASF173:
	.string	"memset"
.LASF126:
	.string	"init_routine"
.LASF63:
	.string	"eIncrement"
.LASF71:
	.string	"ESP_LOG_INFO"
.LASF161:
	.string	"vListInitialiseItem"
.LASF125:
	.string	"once_control"
.LASF12:
	.string	"sizetype"
.LASF157:
	.string	"esp_log_timestamp"
.LASF114:
	.string	"sched_yield"
.LASF149:
	.string	"xTaskGetCurrentTaskHandle"
.LASF156:
	.string	"vQueueDelete"
.LASF145:
	.string	"free"
.LASF170:
	.string	"C:\\\\esp\\\\ArkPOS2-esp\\\\build\\\\pthread"
.LASF100:
	.string	"pthread_mutex_lock_internal"
.LASF140:
	.string	"s_once_mux"
.LASF52:
	.string	"ListItem_t"
.LASF49:
	.string	"pxPrevious"
.LASF143:
	.string	"s_threads_list"
.LASF24:
	.string	"detachstate"
.LASF104:
	.string	"start_routine"
.LASF50:
	.string	"pvOwner"
.LASF23:
	.string	"schedparam"
.LASF57:
	.string	"pxIndex"
.LASF51:
	.string	"pvContainer"
.LASF105:
	.string	"xHandle"
.LASF15:
	.string	"pthread_t"
.LASF44:
	.string	"_Bool"
.LASF34:
	.string	"int32_t"
.LASF111:
	.string	"cur_pthread"
.LASF74:
	.string	"PTHREAD_TASK_STATE_RUN"
.LASF168:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF80:
	.string	"esp_pthread_t"
.LASF116:
	.string	"pthread_equal"
.LASF88:
	.string	"pthread_get_handle_by_desc"
.LASF69:
	.string	"ESP_LOG_ERROR"
.LASF120:
	.string	"pthread_key_delete"
.LASF106:
	.string	"__func__"
.LASF55:
	.string	"xLIST"
.LASF167:
	.string	"xQueueGiveMutexRecursive"
.LASF59:
	.string	"List_t"
.LASF164:
	.string	"xTaskGetSchedulerState"
.LASF35:
	.string	"uint32_t"
.LASF41:
	.string	"owner"
.LASF138:
	.string	"pthread_mutexattr_settype"
.LASF94:
	.string	"pthread_find"
.LASF129:
	.string	"mutex"
.LASF68:
	.string	"ESP_LOG_NONE"
.LASF67:
	.string	"SemaphoreHandle_t"
.LASF14:
	.string	"char"
.LASF73:
	.string	"ESP_LOG_VERBOSE"
.LASF47:
	.string	"xItemValue"
.LASF118:
	.string	"destructor"
.LASF152:
	.string	"vTaskDelete"
.LASF166:
	.string	"vTaskExitCritical"
.LASF30:
	.string	"pthread_key_t"
.LASF6:
	.string	"__int32_t"
.LASF144:
	.string	"uxListRemove"
.LASF103:
	.string	"thread"
.LASF32:
	.string	"pthread_once_t"
.LASF169:
	.string	"C:/esp/esp-idf/components/pthread/pthread.c"
.LASF46:
	.string	"xLIST_ITEM"
.LASF119:
	.string	"s_created"
.LASF3:
	.string	"unsigned char"
.LASF26:
	.string	"pthread_mutex_t"
.LASF85:
	.string	"check_arg"
.LASF135:
	.string	"pthread_mutexattr_init"
.LASF87:
	.string	"pthread_find_list_item"
.LASF20:
	.string	"contentionscope"
.LASF83:
	.string	"esp_pthread_mutex_t"
.LASF70:
	.string	"ESP_LOG_WARN"
.LASF37:
	.string	"esp_err_t"
.LASF102:
	.string	"pthread_create"
.LASF95:
	.string	"mutexattr_check"
.LASF33:
	.string	"uint8_t"
.LASF139:
	.string	"tmp_attr"
.LASF93:
	.string	"cur_handle"
.LASF61:
	.string	"eNoAction"
.LASF48:
	.string	"pxNext"
.LASF154:
	.string	"vListInitialise"
.LASF110:
	.string	"handle"
.LASF146:
	.string	"xTaskNotifyWait"
.LASF172:
	.string	"pthread_find_handle"
.LASF28:
	.string	"recursive"
.LASF86:
	.string	"list_end"
.LASF112:
	.string	"pthread_detach"
.LASF134:
	.string	"pthread_mutex_unlock"
.LASF45:
	.string	"sched_param"
.LASF77:
	.string	"join_task"
.LASF124:
	.string	"pthread_once"
.LASF19:
	.string	"stacksize"
.LASF39:
	.string	"UBaseType_t"
.LASF150:
	.string	"xTaskNotify"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-61-gab8375a) 5.2.0"
