;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.4.0 #8981 (Oct 24 2015) (Linux)
; This file was generated Sun Oct 25 01:52:06 2015
;--------------------------------------------------------
	.module nullrdc_noframer
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _nullrdc_noframer_driver
	.globl _queuebuf_to_packetbuf
	.globl _packetbuf_totlen
	.globl _packetbuf_hdrptr
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'send_packet'
;------------------------------------------------------------
;ptr                       Allocated to stack - sp -8
;sent                      Allocated to stack - sp -3
;ret                       Allocated to registers r6 r7 
;sloc0                     Allocated to stack - sp -1
;------------------------------------------------------------
;	../contiki-sensinode/core/net/mac/nullrdc-noframer.c:48: send_packet(mac_callback_t sent, void *ptr)
;	-----------------------------------------
;	 function send_packet
;	-----------------------------------------
_send_packet:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	push	dpl
	push	dph
	inc	sp
	inc	sp
;	../contiki-sensinode/core/net/mac/nullrdc-noframer.c:51: if(NETSTACK_RADIO.send(packetbuf_hdrptr(), packetbuf_totlen()) == RADIO_TX_OK) {
	mov	dptr,#(_cc2530_rf_driver + 0x0006)
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	push	ar5
	push	ar4
	lcall	_packetbuf_totlen
	mov	r0,sp
	dec	r0
	dec	r0
	dec	r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	lcall	_packetbuf_hdrptr
	mov	r3,dpl
	mov	r6,dph
	mov	r7,b
	pop	ar4
	pop	ar5
	mov	r0,sp
	dec	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	lcall	00117$
	sjmp	00118$
00117$:
	push	ar4
	push	ar5
	mov	dpl,r3
	mov	dph,r6
	mov	b,r7
	ret
00118$:
	mov	r4,dpl
	mov	r5,dph
	dec	sp
	dec	sp
	mov	a,r4
	orl	a,r5
;	../contiki-sensinode/core/net/mac/nullrdc-noframer.c:52: ret = MAC_TX_OK;
	jnz	00102$
	mov	r6,a
	mov	r7,a
	sjmp	00106$
00102$:
;	../contiki-sensinode/core/net/mac/nullrdc-noframer.c:54: ret =  MAC_TX_ERR;
	mov	r6,#0x04
	mov	r7,#0x00
;	../contiki-sensinode/core/net/mac/nullrdc-noframer.c:56: mac_call_sent_callback(sent, ptr, ret, 1);
00106$:
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00109$
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	push	ar6
	push	ar7
	lcall	00121$
	sjmp	00122$
00121$:
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,sp
	add	a,#0xf0
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	ret
00122$:
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
00109$:
	mov	a,sp
	add	a,#0xFC
	mov	sp,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'send_list'
;------------------------------------------------------------
;ptr                       Allocated to stack - sp -4
;buf_list                  Allocated to stack - sp -7
;sent                      Allocated to registers r6 r7 
;------------------------------------------------------------
;	../contiki-sensinode/core/net/mac/nullrdc-noframer.c:60: send_list(mac_callback_t sent, void *ptr, struct rdc_buf_list *buf_list)
;	-----------------------------------------
;	 function send_list
;	-----------------------------------------
_send_list:
	mov	r6,dpl
	mov	r7,dph
;	../contiki-sensinode/core/net/mac/nullrdc-noframer.c:62: if(buf_list != NULL) {
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00103$
;	../contiki-sensinode/core/net/mac/nullrdc-noframer.c:63: queuebuf_to_packetbuf(buf_list->buf);
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	mov	a,#0x03
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	push	ar7
	push	ar6
	lcall	_queuebuf_to_packetbuf
	pop	ar6
	pop	ar7
;	../contiki-sensinode/core/net/mac/nullrdc-noframer.c:64: send_packet(sent, ptr);
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r6
	mov	dph,r7
	lcall	_send_packet
	dec	sp
	dec	sp
	dec	sp
00103$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'packet_input'
;------------------------------------------------------------
;	../contiki-sensinode/core/net/mac/nullrdc-noframer.c:69: packet_input(void)
;	-----------------------------------------
;	 function packet_input
;	-----------------------------------------
_packet_input:
;	../contiki-sensinode/core/net/mac/nullrdc-noframer.c:71: NETSTACK_MAC.input();
	mov	dptr,#(_csma_driver + 0x0007)
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	push	ar7
	push	ar6
	mov	dpl,r6
	mov	dph,r7
	lcall	__sdcc_call_dptr
	pop	ar6
	pop	ar7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'on'
;------------------------------------------------------------
;	../contiki-sensinode/core/net/mac/nullrdc-noframer.c:75: on(void)
;	-----------------------------------------
;	 function on
;	-----------------------------------------
_on:
;	../contiki-sensinode/core/net/mac/nullrdc-noframer.c:77: return NETSTACK_RADIO.on();
	mov	dptr,#(_cc2530_rf_driver + 0x0010)
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	ljmp	__sdcc_call_dptr
;------------------------------------------------------------
;Allocation info for local variables in function 'off'
;------------------------------------------------------------
;keep_radio_on             Allocated to registers r6 r7 
;------------------------------------------------------------
;	../contiki-sensinode/core/net/mac/nullrdc-noframer.c:81: off(int keep_radio_on)
;	-----------------------------------------
;	 function off
;	-----------------------------------------
_off:
	mov	r6,dpl
	mov	r7,dph
;	../contiki-sensinode/core/net/mac/nullrdc-noframer.c:83: if(keep_radio_on) {
	mov	a,r6
	orl	a,r7
	jz	00102$
;	../contiki-sensinode/core/net/mac/nullrdc-noframer.c:84: return NETSTACK_RADIO.on();
	mov	dptr,#(_cc2530_rf_driver + 0x0010)
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	ljmp	__sdcc_call_dptr
00102$:
;	../contiki-sensinode/core/net/mac/nullrdc-noframer.c:86: return NETSTACK_RADIO.off();
	mov	dptr,#(_cc2530_rf_driver + 0x0012)
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	ljmp	__sdcc_call_dptr
;------------------------------------------------------------
;Allocation info for local variables in function 'channel_check_interval'
;------------------------------------------------------------
;	../contiki-sensinode/core/net/mac/nullrdc-noframer.c:91: channel_check_interval(void)
;	-----------------------------------------
;	 function channel_check_interval
;	-----------------------------------------
_channel_check_interval:
;	../contiki-sensinode/core/net/mac/nullrdc-noframer.c:93: return 0;
	mov	dptr,#0x0000
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'init'
;------------------------------------------------------------
;	../contiki-sensinode/core/net/mac/nullrdc-noframer.c:97: init(void)
;	-----------------------------------------
;	 function init
;	-----------------------------------------
_init:
;	../contiki-sensinode/core/net/mac/nullrdc-noframer.c:99: on();
	ljmp	_on
	.area CSEG    (CODE)
	.area CONST   (CODE)
_nullrdc_noframer_driver:
	.byte __str_0,(__str_0 >> 8),#0x80
	.byte _init,(_init >> 8)
	.byte _send_packet,(_send_packet >> 8)
	.byte _send_list,(_send_list >> 8)
	.byte _packet_input,(_packet_input >> 8)
	.byte _on,(_on >> 8)
	.byte _off,(_off >> 8)
	.byte _channel_check_interval,(_channel_check_interval >> 8)
__str_0:
	.ascii "nullrdc-noframer"
	.db 0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
