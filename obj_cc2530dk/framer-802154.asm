;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.4.0 #8981 (Oct 24 2015) (Linux)
; This file was generated Sun Oct 25 01:52:06 2015
;--------------------------------------------------------
	.module framer_802154
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _framer_802154
	.globl _random_rand
	.globl _packetbuf_addr
	.globl _packetbuf_set_addr
	.globl _packetbuf_attr
	.globl _packetbuf_set_attr
	.globl _packetbuf_hdrreduce
	.globl _packetbuf_hdralloc
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
_frame:
	.ds 49
_len:
	.ds 1
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_initialized:
	.ds 1
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
;	../contiki-sensinode/core/net/mac/framer-802154.c:68: is_broadcast_addr(uint8_t mode, uint8_t *addr)
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
;	../contiki-sensinode/core/net/mac/framer-802154.c:70: int i = mode == FRAME802154_SHORTADDRMODE ? 2 : 8;
	cjne	r7,#0x02,00108$
	mov	r7,#0x02
	sjmp	00109$
00108$:
	mov	r7,#0x08
00109$:
	mov	ar6,r7
	mov	r7,#0x00
;	../contiki-sensinode/core/net/mac/framer-802154.c:71: while(i-- > 0) {
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
;	../contiki-sensinode/core/net/mac/framer-802154.c:72: if(addr[i] != 0xff) {
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
;	../contiki-sensinode/core/net/mac/framer-802154.c:73: return 0;
	mov	dptr,#0x0000
	ret
00105$:
;	../contiki-sensinode/core/net/mac/framer-802154.c:76: return 1;
	mov	dptr,#0x0001
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'create'
;------------------------------------------------------------
;	../contiki-sensinode/core/net/mac/framer-802154.c:80: create(void)
;	-----------------------------------------
;	 function create
;	-----------------------------------------
_create:
;	../contiki-sensinode/core/net/mac/framer-802154.c:84: memset(&frame, 0, sizeof(frame));
	mov	a,#0x31
	push	acc
	clr	a
	push	acc
	push	acc
	mov	dptr,#_frame
	mov	b,#0x00
	lcall	_memset
	dec	sp
	dec	sp
	dec	sp
;	../contiki-sensinode/core/net/mac/framer-802154.c:86: if(!initialized) {
	mov	dptr,#_initialized
	movx	a,@dptr
	mov	r7,a
	jnz	00102$
;	../contiki-sensinode/core/net/mac/framer-802154.c:87: initialized = 1;
	mov	dptr,#_initialized
	mov	a,#0x01
	movx	@dptr,a
;	../contiki-sensinode/core/net/mac/framer-802154.c:88: mac_dsn = random_rand() & 0xff;
	lcall	_random_rand
	mov	a,dpl
	mov	b,dph
	mov	r6,a
	mov	r7,#0x00
	mov	dptr,#_mac_dsn
	mov	a,r6
	movx	@dptr,a
00102$:
;	../contiki-sensinode/core/net/mac/framer-802154.c:92: frame.fcf.frame_type = FRAME802154_DATAFRAME;
	mov	dptr,#_frame
	mov	a,#0x01
	movx	@dptr,a
;	../contiki-sensinode/core/net/mac/framer-802154.c:93: frame.fcf.security_enabled = 0;
	mov	dptr,#(_frame + 0x0001)
	clr	a
	movx	@dptr,a
;	../contiki-sensinode/core/net/mac/framer-802154.c:94: frame.fcf.frame_pending = packetbuf_attr(PACKETBUF_ATTR_PENDING);
	mov	dpl,#0x12
	lcall	_packetbuf_attr
	mov	r6,dpl
	mov	dptr,#(_frame + 0x0002)
	mov	a,r6
	movx	@dptr,a
;	../contiki-sensinode/core/net/mac/framer-802154.c:95: if(rimeaddr_cmp(packetbuf_addr(PACKETBUF_ADDR_RECEIVER), &rimeaddr_null)) {
	mov	dpl,#0x19
	lcall	_packetbuf_addr
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,#_rimeaddr_null
	push	acc
	mov	a,#(_rimeaddr_null >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_rimeaddr_cmp
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	mov	a,r6
	orl	a,r7
	jz	00104$
;	../contiki-sensinode/core/net/mac/framer-802154.c:96: frame.fcf.ack_required = 0;
	mov	dptr,#(_frame + 0x0003)
	clr	a
	movx	@dptr,a
	sjmp	00105$
00104$:
;	../contiki-sensinode/core/net/mac/framer-802154.c:98: frame.fcf.ack_required = packetbuf_attr(PACKETBUF_ATTR_MAC_ACK);
	mov	dpl,#0x0B
	lcall	_packetbuf_attr
	mov	r6,dpl
	mov	r7,dph
	mov	dptr,#(_frame + 0x0003)
	mov	a,r6
	movx	@dptr,a
00105$:
;	../contiki-sensinode/core/net/mac/framer-802154.c:100: frame.fcf.panid_compression = 0;
	mov	dptr,#(_frame + 0x0004)
	clr	a
	movx	@dptr,a
;	../contiki-sensinode/core/net/mac/framer-802154.c:103: frame.fcf.frame_version = FRAME802154_IEEE802154_2003;
	mov	dptr,#(_frame + 0x0006)
	movx	@dptr,a
;	../contiki-sensinode/core/net/mac/framer-802154.c:106: if(packetbuf_attr(PACKETBUF_ATTR_MAC_SEQNO)) {
	mov	dpl,#0x0A
	lcall	_packetbuf_attr
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jz	00107$
;	../contiki-sensinode/core/net/mac/framer-802154.c:107: frame.seq = packetbuf_attr(PACKETBUF_ATTR_MAC_SEQNO);
	mov	dpl,#0x0A
	lcall	_packetbuf_attr
	mov	r6,dpl
	mov	r7,dph
	mov	dptr,#(_frame + 0x0008)
	mov	a,r6
	movx	@dptr,a
	sjmp	00108$
00107$:
;	../contiki-sensinode/core/net/mac/framer-802154.c:109: frame.seq = mac_dsn++;
	mov	dptr,#_mac_dsn
	movx	a,@dptr
	mov	r7,a
	inc	a
	movx	@dptr,a
	mov	dptr,#(_frame + 0x0008)
	mov	a,r7
	movx	@dptr,a
;	../contiki-sensinode/core/net/mac/framer-802154.c:110: packetbuf_set_attr(PACKETBUF_ATTR_MAC_SEQNO, frame.seq);
	mov	r6,#0x00
	push	ar7
	push	ar6
	mov	dpl,#0x0A
	lcall	_packetbuf_set_attr
	dec	sp
	dec	sp
00108$:
;	../contiki-sensinode/core/net/mac/framer-802154.c:120: frame.fcf.src_addr_mode = FRAME802154_SHORTADDRMODE;
	mov	dptr,#(_frame + 0x0007)
	mov	a,#0x02
	movx	@dptr,a
;	../contiki-sensinode/core/net/mac/framer-802154.c:124: frame.dest_pid = IEEE802154_PANID;
	mov	dptr,#(_frame + 0x0009)
	mov	a,#0x49
	movx	@dptr,a
	mov	a,#0x54
	inc	dptr
	movx	@dptr,a
;	../contiki-sensinode/core/net/mac/framer-802154.c:130: if(rimeaddr_cmp(packetbuf_addr(PACKETBUF_ADDR_RECEIVER), &rimeaddr_null)) {
	mov	dpl,#0x19
	lcall	_packetbuf_addr
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,#_rimeaddr_null
	push	acc
	mov	a,#(_rimeaddr_null >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_rimeaddr_cmp
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	mov	a,r6
	orl	a,r7
	jz	00110$
;	../contiki-sensinode/core/net/mac/framer-802154.c:132: frame.fcf.dest_addr_mode = FRAME802154_SHORTADDRMODE;
	mov	dptr,#(_frame + 0x0005)
	mov	a,#0x02
	movx	@dptr,a
;	../contiki-sensinode/core/net/mac/framer-802154.c:133: frame.dest_addr[0] = 0xFF;
	mov	dptr,#(_frame + 0x000b)
	mov	a,#0xFF
	movx	@dptr,a
;	../contiki-sensinode/core/net/mac/framer-802154.c:134: frame.dest_addr[1] = 0xFF;
	mov	dptr,#(_frame + 0x000c)
	movx	@dptr,a
	sjmp	00111$
00110$:
;	../contiki-sensinode/core/net/mac/framer-802154.c:138: packetbuf_addr(PACKETBUF_ADDR_RECEIVER));
	mov	dpl,#0x19
	lcall	_packetbuf_addr
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../contiki-sensinode/core/net/mac/framer-802154.c:137: rimeaddr_copy((rimeaddr_t *)&frame.dest_addr,
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#(_frame + 0x000b)
	mov	b,#0x00
	lcall	_rimeaddr_copy
	dec	sp
	dec	sp
	dec	sp
;	../contiki-sensinode/core/net/mac/framer-802154.c:141: frame.fcf.dest_addr_mode = FRAME802154_SHORTADDRMODE;
	mov	dptr,#(_frame + 0x0005)
	mov	a,#0x02
	movx	@dptr,a
00111$:
;	../contiki-sensinode/core/net/mac/framer-802154.c:148: frame.src_pid = IEEE802154_PANID;
	mov	dptr,#(_frame + 0x0013)
	mov	a,#0x49
	movx	@dptr,a
	mov	a,#0x54
	inc	dptr
	movx	@dptr,a
;	../contiki-sensinode/core/net/mac/framer-802154.c:154: rimeaddr_copy((rimeaddr_t *)&frame.src_addr, &rimeaddr_node_addr);
	mov	a,#_rimeaddr_node_addr
	push	acc
	mov	a,#(_rimeaddr_node_addr >> 8)
	push	acc
	clr	a
	push	acc
	mov	dptr,#(_frame + 0x0015)
	mov	b,#0x00
	lcall	_rimeaddr_copy
	dec	sp
	dec	sp
	dec	sp
;	../contiki-sensinode/core/net/mac/framer-802154.c:156: frame.payload = packetbuf_dataptr();
	lcall	_packetbuf_dataptr
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	dptr,#(_frame + 0x002d)
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../contiki-sensinode/core/net/mac/framer-802154.c:157: frame.payload_len = packetbuf_datalen();
	lcall	_packetbuf_datalen
	mov	r6,dpl
	mov	dptr,#(_frame + 0x0030)
	mov	a,r6
	movx	@dptr,a
;	../contiki-sensinode/core/net/mac/framer-802154.c:158: len = frame802154_hdrlen(&frame);
	mov	dptr,#_frame
	mov	b,#0x00
	lcall	_frame802154_hdrlen
	mov	r7,dpl
	mov	dptr,#_len
	mov	a,r7
	movx	@dptr,a
;	../contiki-sensinode/core/net/mac/framer-802154.c:159: if(packetbuf_hdralloc(len)) {
	mov	r6,#0x00
	mov	dpl,r7
	mov	dph,r6
	lcall	_packetbuf_hdralloc
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jz	00113$
;	../contiki-sensinode/core/net/mac/framer-802154.c:160: frame802154_create(&frame, packetbuf_hdrptr(), len);
	mov	dptr,#_len
	movx	a,@dptr
	mov	r7,a
	push	ar7
	lcall	_packetbuf_hdrptr
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	push	ar4
	push	ar5
	push	ar6
	mov	dptr,#_frame
	mov	b,#0x00
	lcall	_frame802154_create
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	../contiki-sensinode/core/net/mac/framer-802154.c:166: return len;
	mov	dptr,#_len
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	dpl,r7
	mov	dph,r6
	ret
00113$:
;	../contiki-sensinode/core/net/mac/framer-802154.c:169: return FRAMER_FAILED;
	mov	dptr,#0xFFFF
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'parse'
;------------------------------------------------------------
;	../contiki-sensinode/core/net/mac/framer-802154.c:174: parse(void)
;	-----------------------------------------
;	 function parse
;	-----------------------------------------
_parse:
;	../contiki-sensinode/core/net/mac/framer-802154.c:176: len = packetbuf_datalen();
	lcall	_packetbuf_datalen
	mov	r6,dpl
	mov	dptr,#_len
	mov	a,r6
	movx	@dptr,a
;	../contiki-sensinode/core/net/mac/framer-802154.c:177: if(frame802154_parse(packetbuf_dataptr(), len, &frame) &&
	push	ar6
	lcall	_packetbuf_dataptr
	mov	r4,dpl
	mov	r5,dph
	mov	r7,b
	pop	ar6
	mov	a,#_frame
	push	acc
	mov	a,#(_frame >> 8)
	push	acc
	clr	a
	push	acc
	push	ar6
	mov	dpl,r4
	mov	dph,r5
	mov	b,r7
	lcall	_frame802154_parse
	mov	r7,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r7
	jnz	00131$
	ljmp	00109$
00131$:
;	../contiki-sensinode/core/net/mac/framer-802154.c:178: packetbuf_hdrreduce(len - frame.payload_len)) {
	mov	dptr,#_len
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	dptr,#(_frame + 0x0030)
	movx	a,@dptr
	mov	r5,a
	mov	r4,#0x00
	mov	a,r7
	clr	c
	subb	a,r5
	mov	r7,a
	mov	a,r6
	subb	a,r4
	mov	r6,a
	mov	dpl,r7
	mov	dph,r6
	lcall	_packetbuf_hdrreduce
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jnz	00132$
	ljmp	00109$
00132$:
;	../contiki-sensinode/core/net/mac/framer-802154.c:179: if(frame.fcf.dest_addr_mode) {
	mov	dptr,#(_frame + 0x0005)
	movx	a,@dptr
	mov	r7,a
	jz	00107$
;	../contiki-sensinode/core/net/mac/framer-802154.c:180: if(frame.dest_pid != IEEE802154_PANID &&
	mov	dptr,#(_frame + 0x0009)
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	cjne	r5,#0x49,00134$
	cjne	r6,#0x54,00134$
	sjmp	00102$
00134$:
;	../contiki-sensinode/core/net/mac/framer-802154.c:181: frame.dest_pid != FRAME802154_BROADCASTPANDID) {
	cjne	r5,#0xFF,00135$
	cjne	r6,#0xFF,00135$
	sjmp	00102$
00135$:
;	../contiki-sensinode/core/net/mac/framer-802154.c:184: return FRAMER_FAILED;
	mov	dptr,#0xFFFF
	ret
00102$:
;	../contiki-sensinode/core/net/mac/framer-802154.c:186: if(!is_broadcast_addr(frame.fcf.dest_addr_mode, frame.dest_addr)) {
	mov	a,#(_frame + 0x000b)
	push	acc
	mov	a,#((_frame + 0x000b) >> 8)
	push	acc
	clr	a
	push	acc
	mov	dpl,r7
	lcall	_is_broadcast_addr
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	mov	a,r6
	orl	a,r7
	jnz	00107$
;	../contiki-sensinode/core/net/mac/framer-802154.c:187: packetbuf_set_addr(PACKETBUF_ADDR_RECEIVER, (rimeaddr_t *)&frame.dest_addr);
	mov	a,#(_frame + 0x000b)
	push	acc
	mov	a,#((_frame + 0x000b) >> 8)
	push	acc
	clr	a
	push	acc
	mov	dpl,#0x19
	lcall	_packetbuf_set_addr
	dec	sp
	dec	sp
	dec	sp
00107$:
;	../contiki-sensinode/core/net/mac/framer-802154.c:190: packetbuf_set_addr(PACKETBUF_ADDR_SENDER, (rimeaddr_t *)&frame.src_addr);
	mov	a,#(_frame + 0x0015)
	push	acc
	mov	a,#((_frame + 0x0015) >> 8)
	push	acc
	clr	a
	push	acc
	mov	dpl,#0x18
	lcall	_packetbuf_set_addr
	dec	sp
	dec	sp
	dec	sp
;	../contiki-sensinode/core/net/mac/framer-802154.c:191: packetbuf_set_attr(PACKETBUF_ATTR_PENDING, frame.fcf.frame_pending);
	mov	dptr,#(_frame + 0x0002)
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	push	ar7
	push	ar6
	mov	dpl,#0x12
	lcall	_packetbuf_set_attr
	dec	sp
	dec	sp
;	../contiki-sensinode/core/net/mac/framer-802154.c:193: packetbuf_set_attr(PACKETBUF_ATTR_PACKET_ID, frame.seq);
	mov	dptr,#(_frame + 0x0008)
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	push	ar7
	push	ar6
	mov	dpl,#0x0D
	lcall	_packetbuf_set_attr
	dec	sp
	dec	sp
;	../contiki-sensinode/core/net/mac/framer-802154.c:200: return len - frame.payload_len;
	mov	dptr,#_len
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	dptr,#(_frame + 0x0030)
	movx	a,@dptr
	mov	r5,a
	mov	r4,#0x00
	mov	a,r7
	clr	c
	subb	a,r5
	mov	r7,a
	mov	a,r6
	subb	a,r4
	mov	r6,a
	mov	dpl,r7
	mov	dph,r6
	ret
00109$:
;	../contiki-sensinode/core/net/mac/framer-802154.c:202: return FRAMER_FAILED;
	mov	dptr,#0xFFFF
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
_framer_802154:
	.byte _create,(_create >> 8)
	.byte _parse,(_parse >> 8)
	.area XINIT   (CODE)
__xinit__initialized:
	.db #0x00	; 0
	.area CABS    (ABS,CODE)
