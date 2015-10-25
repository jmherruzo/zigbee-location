;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.4.0 #8981 (Oct 24 2015) (Linux)
; This file was generated Sun Oct 25 01:52:06 2015
;--------------------------------------------------------
	.module sicslowmac
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _sicslowmac_driver
	.globl _send_list
	.globl _random_rand
	.globl _queuebuf_to_packetbuf
	.globl _packetbuf_addr
	.globl _packetbuf_set_addr
	.globl _packetbuf_attr
	.globl _packetbuf_hdrreduce
	.globl _packetbuf_hdralloc
	.globl _packetbuf_totlen
	.globl _packetbuf_datalen
	.globl _packetbuf_hdrptr
	.globl _packetbuf_dataptr
	.globl _frame802154_parse
	.globl _frame802154_create
	.globl _frame802154_hdrlen
	.globl _rimeaddr_cmp
	.globl _rimeaddr_copy
	.globl _memset
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
_mac_dsn:
	.ds 1
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_mac_dst_pan_id:
	.ds 2
_mac_src_pan_id:
	.ds 2
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
;Allocation info for local variables in function 'is_broadcast_addr'
;------------------------------------------------------------
;addr                      Allocated to stack - sp -4
;mode                      Allocated to registers r7 
;i                         Allocated to registers 
;------------------------------------------------------------
;	../contiki-sensinode/core/net/mac/sicslowmac.c:85: is_broadcast_addr(uint8_t mode, uint8_t *addr)
;	-----------------------------------------
;	 function is_broadcast_addr
;	-----------------------------------------
_is_broadcast_addr:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,dpl
;	../contiki-sensinode/core/net/mac/sicslowmac.c:87: int i = mode == FRAME802154_SHORTADDRMODE ? 2 : 8;
	cjne	r7,#0x02,00108$
	mov	r7,#0x02
	sjmp	00109$
00108$:
	mov	r7,#0x08
00109$:
	mov	ar6,r7
	mov	r7,#0x00
;	../contiki-sensinode/core/net/mac/sicslowmac.c:88: while(i-- > 0) {
00103$:
	mov	ar4,r6
	mov	ar5,r7
	dec	r6
	cjne	r6,#0xFF,00124$
	dec	r7
00124$:
	clr	c
	clr	a
	subb	a,r4
	mov	a,#(0x00 ^ 0x80)
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
	jnc	00105$
;	../contiki-sensinode/core/net/mac/sicslowmac.c:89: if(addr[i] != 0xff) {
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,r6
	add	a,@r0
	mov	r3,a
	mov	a,r7
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar5,@r0
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r3,a
	cjne	r3,#0xFF,00126$
	sjmp	00103$
00126$:
;	../contiki-sensinode/core/net/mac/sicslowmac.c:90: return 0;
	mov	dptr,#0x0000
	ret
00105$:
;	../contiki-sensinode/core/net/mac/sicslowmac.c:93: return 1;
	mov	dptr,#0x0001
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'send_packet'
;------------------------------------------------------------
;ptr                       Allocated to stack - sp -58
;sent                      Allocated to stack - sp -53
;params                    Allocated to stack - sp -48
;len                       Allocated to stack - sp -49
;ret                       Allocated to registers r6 r7 
;sloc0                     Allocated to stack - sp -51
;------------------------------------------------------------
;	../contiki-sensinode/core/net/mac/sicslowmac.c:97: send_packet(mac_callback_t sent, void *ptr)
;	-----------------------------------------
;	 function send_packet
;	-----------------------------------------
_send_packet:
	push	dpl
	push	dph
	mov	a,sp
	add	a,#0x34
;	../contiki-sensinode/core/net/mac/sicslowmac.c:103: memset(&params, 0, sizeof(params));
	mov	sp,a
	add	a,#0xD0
	mov	r1,a
	mov	r3,a
	mov	r4,#0x00
	mov	r5,#0x40
	push	ar1
	mov	a,#0x31
	push	acc
	clr	a
	push	acc
	push	acc
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	_memset
	dec	sp
	dec	sp
	dec	sp
	pop	ar1
;	../contiki-sensinode/core/net/mac/sicslowmac.c:106: params.fcf.frame_type = FRAME802154_DATAFRAME;
	mov	@r1,#0x01
;	../contiki-sensinode/core/net/mac/sicslowmac.c:107: params.fcf.security_enabled = 0;
	mov	a,r1
	inc	a
	mov	r0,a
	mov	@r0,#0x00
;	../contiki-sensinode/core/net/mac/sicslowmac.c:108: params.fcf.frame_pending = 0;
	mov	a,#0x02
	add	a,r1
	mov	r0,a
	mov	@r0,#0x00
;	../contiki-sensinode/core/net/mac/sicslowmac.c:109: params.fcf.ack_required = packetbuf_attr(PACKETBUF_ATTR_RELIABLE);
	mov	a,#0x03
	add	a,r1
	mov	r0,a
	mov	dpl,#0x0C
	push	ar1
	push	ar0
	lcall	_packetbuf_attr
	mov	r4,dpl
	pop	ar0
	pop	ar1
	mov	@r0,ar4
;	../contiki-sensinode/core/net/mac/sicslowmac.c:110: params.fcf.panid_compression = 0;
	mov	a,#0x04
	add	a,r1
	mov	r0,a
	mov	@r0,#0x00
;	../contiki-sensinode/core/net/mac/sicslowmac.c:113: params.fcf.frame_version = FRAME802154_IEEE802154_2003;
	mov	a,#0x06
	add	a,r1
	mov	r0,a
	mov	@r0,#0x00
;	../contiki-sensinode/core/net/mac/sicslowmac.c:116: params.seq = mac_dsn++;
	mov	a,#0x08
	add	a,r1
	mov	r0,a
	mov	dptr,#_mac_dsn
	movx	a,@dptr
	mov	r5,a
	inc	a
	movx	@dptr,a
	mov	@r0,ar5
;	../contiki-sensinode/core/net/mac/sicslowmac.c:123: params.fcf.src_addr_mode = FRAME802154_LONGADDRMODE;
	mov	a,#0x07
	add	a,r1
	mov	r0,a
	mov	@r0,#0x03
;	../contiki-sensinode/core/net/mac/sicslowmac.c:124: params.dest_pid = mac_dst_pan_id;
	mov	a,#0x09
	add	a,r1
	mov	r0,a
	mov	dptr,#_mac_dst_pan_id
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
;	../contiki-sensinode/core/net/mac/sicslowmac.c:130: if(rimeaddr_cmp(packetbuf_addr(PACKETBUF_ADDR_RECEIVER), &rimeaddr_null)) {
	mov	dpl,#0x19
	push	ar1
	lcall	_packetbuf_addr
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	mov	a,#_rimeaddr_null
	push	acc
	mov	a,#(_rimeaddr_null >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	_rimeaddr_cmp
	mov	r4,dpl
	mov	r5,dph
	dec	sp
	dec	sp
	dec	sp
	pop	ar1
	mov	a,r4
	orl	a,r5
	jz	00102$
;	../contiki-sensinode/core/net/mac/sicslowmac.c:132: params.fcf.dest_addr_mode = FRAME802154_SHORTADDRMODE;
	mov	a,#0x05
	add	a,r1
	mov	r0,a
	mov	@r0,#0x02
;	../contiki-sensinode/core/net/mac/sicslowmac.c:133: params.dest_addr[0] = 0xFF;
	mov	a,#0x0B
	add	a,r1
	mov	r0,a
	mov	@r0,#0xFF
;	../contiki-sensinode/core/net/mac/sicslowmac.c:134: params.dest_addr[1] = 0xFF;
	mov	a,#0x0C
	add	a,r1
	mov	r0,a
	mov	@r0,#0xFF
	sjmp	00103$
00102$:
;	../contiki-sensinode/core/net/mac/sicslowmac.c:138: packetbuf_addr(PACKETBUF_ADDR_RECEIVER));
	mov	dpl,#0x19
	push	ar1
	lcall	_packetbuf_addr
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	pop	ar1
;	../contiki-sensinode/core/net/mac/sicslowmac.c:137: rimeaddr_copy((rimeaddr_t *)&params.dest_addr,
	mov	a,#0x0B
	add	a,r1
	mov	r2,a
	mov	r6,#0x00
	mov	r7,#0x40
	push	ar1
	push	ar3
	push	ar4
	push	ar5
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	lcall	_rimeaddr_copy
	dec	sp
	dec	sp
	dec	sp
	pop	ar1
;	../contiki-sensinode/core/net/mac/sicslowmac.c:139: params.fcf.dest_addr_mode = FRAME802154_LONGADDRMODE;
	mov	a,#0x05
	add	a,r1
	mov	r0,a
	mov	@r0,#0x03
;	../contiki-sensinode/core/net/mac/sicslowmac.c:171: }
;	../contiki-sensinode/core/net/mac/sicslowmac.c:139: params.fcf.dest_addr_mode = FRAME802154_LONGADDRMODE;
00103$:
;	../contiki-sensinode/core/net/mac/sicslowmac.c:143: params.src_pid = mac_src_pan_id;
	mov	a,#0x13
	add	a,r1
	mov	r0,a
	mov	dptr,#_mac_src_pan_id
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
;	../contiki-sensinode/core/net/mac/sicslowmac.c:149: rimeaddr_copy((rimeaddr_t *)&params.src_addr, &rimeaddr_node_addr);
	mov	a,#0x15
	add	a,r1
	mov	r5,a
	mov	r4,#0x00
	mov	r3,#0x40
	push	ar1
	mov	a,#_rimeaddr_node_addr
	push	acc
	mov	a,#(_rimeaddr_node_addr >> 8)
	push	acc
	clr	a
	push	acc
	mov	dpl,r5
	mov	dph,r4
	mov	b,r3
	lcall	_rimeaddr_copy
	dec	sp
	dec	sp
	dec	sp
	pop	ar1
;	../contiki-sensinode/core/net/mac/sicslowmac.c:151: params.payload = packetbuf_dataptr();
	mov	a,#0x2D
	add	a,r1
	mov	r0,a
	push	ar1
	push	ar0
	lcall	_packetbuf_dataptr
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	pop	ar0
	pop	ar1
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
;	../contiki-sensinode/core/net/mac/sicslowmac.c:152: params.payload_len = packetbuf_datalen();
	mov	a,#0x30
	add	a,r1
	mov	r0,a
	push	ar1
	push	ar0
	lcall	_packetbuf_datalen
	mov	r4,dpl
	pop	ar0
	pop	ar1
	mov	@r0,ar4
;	../contiki-sensinode/core/net/mac/sicslowmac.c:153: len = frame802154_hdrlen(&params);
	mov	ar5,r1
	mov	r4,#0x00
	mov	r3,#0x40
	mov	dpl,r5
	mov	dph,r4
	mov	b,r3
	push	ar1
	lcall	_frame802154_hdrlen
	mov	r5,dpl
	pop	ar1
	mov	a,sp
	add	a,#0xcf
	mov	r0,a
	mov	@r0,ar5
;	../contiki-sensinode/core/net/mac/sicslowmac.c:154: if(packetbuf_hdralloc(len)) {
	mov	a,sp
	add	a,#0xcf
	mov	r0,a
	mov	ar3,@r0
	mov	r4,#0x00
	mov	dpl,r3
	mov	dph,r4
	push	ar1
	lcall	_packetbuf_hdralloc
	mov	a,dpl
	mov	b,dph
	pop	ar1
	orl	a,b
	jnz	00129$
	ljmp	00111$
00129$:
;	../contiki-sensinode/core/net/mac/sicslowmac.c:156: frame802154_create(&params, packetbuf_hdrptr(), len);
	push	ar1
	lcall	_packetbuf_hdrptr
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	pop	ar1
	mov	ar5,r1
	mov	r6,#0x00
	mov	r7,#0x40
	mov	a,sp
	add	a,#0xcf
	mov	r0,a
	mov	a,@r0
	push	acc
	push	ar2
	push	ar3
	push	ar4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_frame802154_create
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	../contiki-sensinode/core/net/mac/sicslowmac.c:162: ret = NETSTACK_RADIO.send(packetbuf_hdrptr(), packetbuf_totlen());
	mov	dptr,#(_cc2530_rf_driver + 0x0006)
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	push	ar7
	push	ar6
	lcall	_packetbuf_totlen
	xch	a,r0
	mov	a,sp
	add	a,#0xcb
	xch	a,r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	lcall	_packetbuf_hdrptr
	mov	r2,dpl
	mov	r3,dph
	mov	r5,b
	pop	ar6
	pop	ar7
	mov	a,sp
	add	a,#0xcd
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	lcall	00130$
	sjmp	00131$
00130$:
	push	ar6
	push	ar7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r5
	ret
00131$:
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
;	../contiki-sensinode/core/net/mac/sicslowmac.c:163: if(sent) {
	mov	a,sp
	add	a,#0xcb
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00111$
;	../contiki-sensinode/core/net/mac/sicslowmac.c:164: switch(ret) {
	cjne	r6,#0x00,00133$
	cjne	r7,#0x00,00133$
	sjmp	00104$
00133$:
;	../contiki-sensinode/core/net/mac/sicslowmac.c:165: case RADIO_TX_OK:
	cjne	r6,#0x01,00111$
	cjne	r7,#0x00,00111$
	sjmp	00105$
00104$:
;	../contiki-sensinode/core/net/mac/sicslowmac.c:166: sent(ptr, MAC_TX_OK, 1);
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	push	acc
	push	acc
	lcall	00135$
	sjmp	00136$
00135$:
	mov	a,sp
	add	a,#0xc5
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,sp
	add	a,#0xbe
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	ret
00136$:
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	../contiki-sensinode/core/net/mac/sicslowmac.c:167: break;
;	../contiki-sensinode/core/net/mac/sicslowmac.c:168: case RADIO_TX_ERR:
	sjmp	00111$
00105$:
;	../contiki-sensinode/core/net/mac/sicslowmac.c:169: sent(ptr, MAC_TX_ERR, 1);
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	mov	a,#0x04
	push	acc
	clr	a
	push	acc
	lcall	00137$
	sjmp	00138$
00137$:
	mov	a,sp
	add	a,#0xc5
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,sp
	add	a,#0xbe
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	ret
00138$:
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	../contiki-sensinode/core/net/mac/sicslowmac.c:171: }
00111$:
	mov	a,sp
	add	a,#0xCA
	mov	sp,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'send_list'
;------------------------------------------------------------
;ptr                       Allocated to stack - sp -4
;buf_list                  Allocated to stack - sp -7
;sent                      Allocated to registers r6 r7 
;------------------------------------------------------------
;	../contiki-sensinode/core/net/mac/sicslowmac.c:179: send_list(mac_callback_t sent, void *ptr, struct rdc_buf_list *buf_list)
;	-----------------------------------------
;	 function send_list
;	-----------------------------------------
_send_list:
	mov	r6,dpl
	mov	r7,dph
;	../contiki-sensinode/core/net/mac/sicslowmac.c:181: if(buf_list != NULL) {
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00103$
;	../contiki-sensinode/core/net/mac/sicslowmac.c:182: queuebuf_to_packetbuf(buf_list->buf);
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
;	../contiki-sensinode/core/net/mac/sicslowmac.c:183: send_packet(sent, ptr);
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
;Allocation info for local variables in function 'input_packet'
;------------------------------------------------------------
;frame                     Allocated to stack - sp -48
;len                       Allocated to registers r3 r2 
;sloc0                     Allocated to stack - sp -52
;sloc1                     Allocated to stack - sp -51
;------------------------------------------------------------
;	../contiki-sensinode/core/net/mac/sicslowmac.c:188: input_packet(void)
;	-----------------------------------------
;	 function input_packet
;	-----------------------------------------
_input_packet:
	mov	a,sp
	add	a,#0x35
	mov	sp,a
;	../contiki-sensinode/core/net/mac/sicslowmac.c:193: len = packetbuf_datalen();
	lcall	_packetbuf_datalen
	mov	r6,dpl
	mov	r7,dph
	mov	ar3,r6
	mov	ar2,r7
;	../contiki-sensinode/core/net/mac/sicslowmac.c:195: if(frame802154_parse(packetbuf_dataptr(), len, &frame) &&
	mov	a,sp
	add	a,#0xD0
	mov	r5,a
	mov	a,sp
	add	a,#0xcd
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x40
	mov	a,sp
	add	a,#0xcc
	mov	r0,a
	mov	@r0,ar3
	push	ar5
	push	ar3
	push	ar2
	lcall	_packetbuf_dataptr
	mov	r4,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,sp
	add	a,#0xca
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,sp
	add	a,#0xc6
	mov	r0,a
	mov	a,@r0
	push	acc
	mov	dpl,r4
	mov	dph,r6
	mov	b,r7
	lcall	_frame802154_parse
	mov	r7,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar2
	pop	ar3
	pop	ar5
	mov	a,r7
	jnz	00136$
	ljmp	00113$
00136$:
;	../contiki-sensinode/core/net/mac/sicslowmac.c:196: packetbuf_hdrreduce(len - frame.payload_len)) {
	mov	a,#0x30
	add	a,r5
	mov	r1,a
	mov	ar7,@r1
	mov	r6,#0x00
	mov	a,r3
	clr	c
	subb	a,r7
	mov	r7,a
	mov	a,r2
	subb	a,r6
	mov	r6,a
	mov	dpl,r7
	mov	dph,r6
	push	ar5
	lcall	_packetbuf_hdrreduce
	mov	a,dpl
	mov	b,dph
	pop	ar5
	orl	a,b
	jnz	00137$
	ljmp	00113$
00137$:
;	../contiki-sensinode/core/net/mac/sicslowmac.c:197: if(frame.fcf.dest_addr_mode) {
	mov	a,#0x05
	add	a,r5
	mov	r1,a
	mov	a,@r1
	mov	r7,a
	jnz	00138$
	ljmp	00109$
00138$:
;	../contiki-sensinode/core/net/mac/sicslowmac.c:198: if(frame.dest_pid != mac_src_pan_id &&
	mov	a,#0x09
	add	a,r5
	mov	r1,a
	mov	ar4,@r1
	inc	r1
	mov	ar6,@r1
	mov	dptr,#_mac_src_pan_id
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,r4
	cjne	a,ar2,00139$
	mov	a,r6
	cjne	a,ar3,00139$
	sjmp	00102$
00139$:
;	../contiki-sensinode/core/net/mac/sicslowmac.c:199: frame.dest_pid != FRAME802154_BROADCASTPANDID) {
	cjne	r4,#0xFF,00140$
	cjne	r6,#0xFF,00140$
	sjmp	00102$
00140$:
;	../contiki-sensinode/core/net/mac/sicslowmac.c:202: return;
	ljmp	00113$
00102$:
;	../contiki-sensinode/core/net/mac/sicslowmac.c:204: if(!is_broadcast_addr(frame.fcf.dest_addr_mode, frame.dest_addr)) {
	mov	a,#0x0B
	add	a,r5
	mov	r6,a
	mov	r4,#0x00
	mov	r3,#0x40
	push	ar5
	push	ar6
	push	ar4
	push	ar3
	mov	dpl,r7
	lcall	_is_broadcast_addr
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	pop	ar5
	mov	a,r6
	orl	a,r7
	jnz	00109$
;	../contiki-sensinode/core/net/mac/sicslowmac.c:205: packetbuf_set_addr(PACKETBUF_ADDR_RECEIVER, (rimeaddr_t *)&frame.dest_addr);
	mov	a,#0x0B
	add	a,r5
	mov	r7,a
	mov	r6,#0x00
	mov	r4,#0x40
	push	ar5
	push	ar7
	push	ar6
	push	ar4
	mov	dpl,#0x19
	lcall	_packetbuf_set_addr
	dec	sp
	dec	sp
	dec	sp
;	../contiki-sensinode/core/net/mac/sicslowmac.c:207: &rimeaddr_node_addr)) {
;	../contiki-sensinode/core/net/mac/sicslowmac.c:206: if(!rimeaddr_cmp(packetbuf_addr(PACKETBUF_ADDR_RECEIVER),
	mov	dpl,#0x19
	lcall	_packetbuf_addr
	mov	r4,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,#_rimeaddr_node_addr
	push	acc
	mov	a,#(_rimeaddr_node_addr >> 8)
	push	acc
	clr	a
	push	acc
	mov	dpl,r4
	mov	dph,r6
	mov	b,r7
	lcall	_rimeaddr_cmp
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	pop	ar5
	mov	a,r6
	orl	a,r7
;	../contiki-sensinode/core/net/mac/sicslowmac.c:210: return;
	jz	00113$
00109$:
;	../contiki-sensinode/core/net/mac/sicslowmac.c:214: packetbuf_set_addr(PACKETBUF_ADDR_SENDER, (rimeaddr_t *)&frame.src_addr);
	mov	a,#0x15
	add	a,r5
	mov	r5,a
	mov	r7,#0x00
	mov	r6,#0x40
	push	ar5
	push	ar7
	push	ar6
	mov	dpl,#0x18
	lcall	_packetbuf_set_addr
	dec	sp
	dec	sp
	dec	sp
;	../contiki-sensinode/core/net/mac/sicslowmac.c:220: NETSTACK_MAC.input();
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
00113$:
	mov	a,sp
	add	a,#0xCB
	mov	sp,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'on'
;------------------------------------------------------------
;	../contiki-sensinode/core/net/mac/sicslowmac.c:227: on(void)
;	-----------------------------------------
;	 function on
;	-----------------------------------------
_on:
;	../contiki-sensinode/core/net/mac/sicslowmac.c:229: return NETSTACK_RADIO.on();
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
;	../contiki-sensinode/core/net/mac/sicslowmac.c:233: off(int keep_radio_on)
;	-----------------------------------------
;	 function off
;	-----------------------------------------
_off:
	mov	r6,dpl
	mov	r7,dph
;	../contiki-sensinode/core/net/mac/sicslowmac.c:235: if(keep_radio_on) {
	mov	a,r6
	orl	a,r7
	jz	00102$
;	../contiki-sensinode/core/net/mac/sicslowmac.c:236: return NETSTACK_RADIO.on();
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
;	../contiki-sensinode/core/net/mac/sicslowmac.c:238: return NETSTACK_RADIO.off();
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
;Allocation info for local variables in function 'init'
;------------------------------------------------------------
;	../contiki-sensinode/core/net/mac/sicslowmac.c:243: init(void)
;	-----------------------------------------
;	 function init
;	-----------------------------------------
_init:
;	../contiki-sensinode/core/net/mac/sicslowmac.c:245: mac_dsn = random_rand() % 256;
	lcall	_random_rand
	mov	a,dpl
	mov	b,dph
	mov	r6,a
	mov	dptr,#_mac_dsn
	mov	a,r6
	movx	@dptr,a
;	../contiki-sensinode/core/net/mac/sicslowmac.c:247: NETSTACK_RADIO.on();
	mov	dptr,#(_cc2530_rf_driver + 0x0010)
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
;Allocation info for local variables in function 'channel_check_interval'
;------------------------------------------------------------
;	../contiki-sensinode/core/net/mac/sicslowmac.c:251: channel_check_interval(void)
;	-----------------------------------------
;	 function channel_check_interval
;	-----------------------------------------
_channel_check_interval:
;	../contiki-sensinode/core/net/mac/sicslowmac.c:253: return 0;
	mov	dptr,#0x0000
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
_sicslowmac_driver:
	.byte __str_0,(__str_0 >> 8),#0x80
	.byte _init,(_init >> 8)
	.byte _send_packet,(_send_packet >> 8)
	.byte _send_list,(_send_list >> 8)
	.byte _input_packet,(_input_packet >> 8)
	.byte _on,(_on >> 8)
	.byte _off,(_off >> 8)
	.byte _channel_check_interval,(_channel_check_interval >> 8)
__str_0:
	.ascii "sicslowmac"
	.db 0x00
	.area XINIT   (CODE)
__xinit__mac_dst_pan_id:
	.byte #0x49,#0x54	; 21577
__xinit__mac_src_pan_id:
	.byte #0x49,#0x54	; 21577
	.area CABS    (ABS,CODE)
