;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.4.0 #8981 (Oct 24 2015) (Linux)
; This file was generated Sun Oct 25 01:52:00 2015
;--------------------------------------------------------
	.module netflood
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _netflood_cancel
	.globl _ipolite_cancel
	.globl _ipolite_send
	.globl _ipolite_close
	.globl _ipolite_open
	.globl _queuebuf_free
	.globl _queuebuf_to_packetbuf
	.globl _queuebuf_new_from_packetbuf
	.globl _packetbuf_hdrreduce
	.globl _packetbuf_hdralloc
	.globl _packetbuf_hdrptr
	.globl _packetbuf_dataptr
	.globl _rimeaddr_cmp
	.globl _rimeaddr_copy
	.globl _memcpy
	.globl _netflood_open
	.globl _netflood_close
	.globl _netflood_send
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
;Allocation info for local variables in function 'send'
;------------------------------------------------------------
;c                         Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../contiki-sensinode/core/net/rime/netflood.c:67: send(struct netflood_conn *c)
;	-----------------------------------------
;	 function send
;	-----------------------------------------
_send:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../contiki-sensinode/core/net/rime/netflood.c:71: return ipolite_send(&c->c, c->queue_time, 4);
	mov	a,#0x30
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	mov	a,#0x04
	push	acc
	push	ar2
	push	ar3
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_ipolite_send
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	mov	dpl,r6
	mov	dph,r7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'recv_from_ipolite'
;------------------------------------------------------------
;from                      Allocated to stack - sp -21
;ipolite                   Allocated to registers r5 r6 r7 
;c                         Allocated to stack - sp -12
;hdr                       Allocated to stack - sp -9
;hops                      Allocated to stack - sp -3
;queuebuf                  Allocated to stack - sp -2
;sloc0                     Allocated to stack - sp -16
;sloc1                     Allocated to stack - sp -13
;------------------------------------------------------------
;	../contiki-sensinode/core/net/rime/netflood.c:75: recv_from_ipolite(struct ipolite_conn *ipolite, const rimeaddr_t *from)
;	-----------------------------------------
;	 function recv_from_ipolite
;	-----------------------------------------
_recv_from_ipolite:
	mov	a,sp
	add	a,#0x11
	mov	sp,a
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../contiki-sensinode/core/net/rime/netflood.c:77: struct netflood_conn *c = (struct netflood_conn *)ipolite;
	mov	a,sp
	add	a,#0xf4
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	../contiki-sensinode/core/net/rime/netflood.c:82: memcpy(&hdr, packetbuf_dataptr(), sizeof(struct netflood_hdr));
	lcall	_packetbuf_dataptr
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	a,sp
	add	a,#0xF7
	mov	r1,a
	mov	r5,a
	mov	r6,#0x00
	mov	r7,#0x40
	push	ar1
	mov	a,#0x06
	push	acc
	clr	a
	push	acc
	push	ar2
	push	ar3
	push	ar4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_memcpy
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar1
;	../contiki-sensinode/core/net/rime/netflood.c:83: hops = hdr.hops;
	mov	a,#0x04
	add	a,r1
	mov	r0,a
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	dec	r0
	push	ar0
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	@r0,ar6
	pop	ar0
;	../contiki-sensinode/core/net/rime/netflood.c:86: queuebuf = queuebuf_new_from_packetbuf();
	push	ar1
	push	ar0
	lcall	_queuebuf_new_from_packetbuf
	mov	r4,dpl
	mov	r5,dph
	mov	r7,b
	pop	ar0
	pop	ar1
	push	ar0
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar7
	pop	ar0
;	../contiki-sensinode/core/net/rime/netflood.c:88: packetbuf_hdrreduce(sizeof(struct netflood_hdr));
	mov	dptr,#0x0006
	push	ar1
	push	ar0
	lcall	_packetbuf_hdrreduce
	pop	ar0
	pop	ar1
;	../contiki-sensinode/core/net/rime/netflood.c:89: if(c->u->recv != NULL) {
	push	ar0
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	push	ar1
	mov	a,sp
	add	a,#0xee
	mov	r1,a
	mov	a,#0x2D
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	pop	ar1
	mov	a,sp
	add	a,#0xef
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	pop	ar0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r6
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	orl	a,r2
	jnz	00134$
	ljmp	00111$
00134$:
;	../contiki-sensinode/core/net/rime/netflood.c:90: if(!(rimeaddr_cmp(&hdr.originator, &c->last_originator) &&
	push	ar0
	push	ar0
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	a,#0x32
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar6,@r0
	mov	a,sp
	add	a,#0xf1
	mov	r0,a
	mov	a,#0x02
	add	a,r1
	mov	@r0,a
	mov	a,sp
	add	a,#0xf1
	mov	r0,a
	mov	ar4,@r0
	mov	r5,#0x00
	mov	r7,#0x40
	pop	ar0
	push	ar1
	push	ar0
	push	ar2
	push	ar3
	push	ar6
	mov	dpl,r4
	mov	dph,r5
	mov	b,r7
	lcall	_rimeaddr_cmp
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	pop	ar0
	pop	ar1
	pop	ar0
	mov	a,r6
	orl	a,r7
	jz	00107$
;	../contiki-sensinode/core/net/rime/netflood.c:91: hdr.originator_seqno <= c->last_originator_seqno)) {
	mov	ar6,@r1
	inc	r1
	mov	ar7,@r1
	dec	r1
	push	ar0
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	mov	a,#0x34
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar5,@r0
	pop	ar0
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r3,a
	mov	r5,#0x00
	clr	c
	mov	a,r3
	subb	a,r6
	mov	a,r5
	subb	a,r7
	jc	00136$
	ljmp	00111$
00136$:
00107$:
;	../contiki-sensinode/core/net/rime/netflood.c:93: if(c->u->recv(c, from, &hdr.originator, hdr.originator_seqno,
	push	ar0
	mov	a,sp
	add	a,#0xef
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	ar4,@r1
	inc	r1
	mov	ar7,@r1
	dec	r1
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	ar7,@r0
	pop	ar0
	mov	r3,#0x00
	mov	r2,#0x40
	push	ar1
	push	ar0
	mov	b,ar0
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	push	acc
	mov	r0,b
	push	ar4
	push	ar7
	push	ar3
	push	ar2
	mov	b,ar0
	mov	a,sp
	add	a,#0xe4
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	r0,b
	lcall	00137$
	sjmp	00138$
00137$:
	push	ar5
	push	ar6
	push	ar0
	mov	a,sp
	add	a,#0xe5
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	pop	ar0
	ret
00138$:
	mov	r5,dpl
	mov	r6,dph
	mov	a,sp
	add	a,#0xf8
	mov	sp,a
	pop	ar0
	pop	ar1
	mov	a,r5
	orl	a,r6
	jnz	00139$
	ljmp	00111$
00139$:
;	../contiki-sensinode/core/net/rime/netflood.c:96: if(queuebuf != NULL) {
	push	ar0
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	pop	ar0
	jnz	00140$
	ljmp	00111$
00140$:
;	../contiki-sensinode/core/net/rime/netflood.c:97: queuebuf_to_packetbuf(queuebuf);
	push	ar0
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	pop	ar0
	push	ar1
	push	ar0
	lcall	_queuebuf_to_packetbuf
	pop	ar0
	pop	ar1
;	../contiki-sensinode/core/net/rime/netflood.c:98: queuebuf_free(queuebuf);
	push	ar0
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	pop	ar0
	push	ar1
	push	ar0
	lcall	_queuebuf_free
	pop	ar0
	pop	ar1
;	../contiki-sensinode/core/net/rime/netflood.c:99: queuebuf = NULL;
	push	ar0
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,#0x00
	pop	ar0
;	../contiki-sensinode/core/net/rime/netflood.c:100: memcpy(&hdr, packetbuf_dataptr(), sizeof(struct netflood_hdr));
	push	ar1
	push	ar0
	lcall	_packetbuf_dataptr
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	pop	ar0
	pop	ar1
	mov	ar4,r1
	mov	r3,#0x00
	mov	r2,#0x40
	push	ar1
	push	ar0
	mov	a,#0x06
	push	acc
	clr	a
	push	acc
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r4
	mov	dph,r3
	mov	b,r2
	lcall	_memcpy
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar0
	pop	ar1
;	../contiki-sensinode/core/net/rime/netflood.c:103: if(hops < HOPS_MAX) {
	push	ar0
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	cjne	@r0,#0x10,00141$
00141$:
	pop	ar0
	jc	00142$
	ljmp	00111$
00142$:
;	../contiki-sensinode/core/net/rime/netflood.c:111: hdr.hops++;
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	dec	r0
	inc	r6
	cjne	r6,#0x00,00143$
	inc	r7
00143$:
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	../contiki-sensinode/core/net/rime/netflood.c:112: memcpy(packetbuf_dataptr(), &hdr, sizeof(struct netflood_hdr));
	mov	ar7,r1
	mov	r6,#0x00
	mov	r5,#0x40
	push	ar7
	push	ar6
	push	ar5
	push	ar1
	lcall	_packetbuf_dataptr
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	pop	ar1
	pop	ar5
	pop	ar6
	pop	ar7
	push	ar1
	mov	a,#0x06
	push	acc
	clr	a
	push	acc
	push	ar7
	push	ar6
	push	ar5
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_memcpy
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar1
;	../contiki-sensinode/core/net/rime/netflood.c:113: send(c);
	mov	a,sp
	add	a,#0xf4
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	push	ar1
	lcall	_send
	pop	ar1
;	../contiki-sensinode/core/net/rime/netflood.c:114: rimeaddr_copy(&c->last_originator, &hdr.originator);
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	mov	ar7,@r0
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,sp
	add	a,#0xf4
	mov	r0,a
	mov	a,#0x32
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	push	ar1
	push	ar7
	push	ar6
	push	ar5
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_rimeaddr_copy
	dec	sp
	dec	sp
	dec	sp
	pop	ar1
;	../contiki-sensinode/core/net/rime/netflood.c:115: c->last_originator_seqno = hdr.originator_seqno;
	mov	a,sp
	add	a,#0xf4
	mov	r0,a
	mov	a,#0x34
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	ar3,@r1
	inc	r1
	mov	ar4,@r1
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r3
	lcall	__gptrput
00111$:
;	../contiki-sensinode/core/net/rime/netflood.c:121: if(queuebuf != NULL) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00114$
;	../contiki-sensinode/core/net/rime/netflood.c:122: queuebuf_free(queuebuf);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_queuebuf_free
00114$:
	mov	a,sp
	add	a,#0xEF
	mov	sp,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sent'
;------------------------------------------------------------
;ipolite                   Allocated to registers r5 r6 r7 
;c                         Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../contiki-sensinode/core/net/rime/netflood.c:127: sent(struct ipolite_conn *ipolite)
;	-----------------------------------------
;	 function sent
;	-----------------------------------------
_sent:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../contiki-sensinode/core/net/rime/netflood.c:129: struct netflood_conn *c = (struct netflood_conn *)ipolite;
;	../contiki-sensinode/core/net/rime/netflood.c:130: if(c->u->sent != NULL) {
	mov	a,#0x2D
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,#0x02
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	orl	a,r3
	jz	00103$
;	../contiki-sensinode/core/net/rime/netflood.c:131: c->u->sent(c);
	push	ar4
	push	ar3
	lcall	00109$
	sjmp	00110$
00109$:
	push	ar3
	push	ar4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	ret
00110$:
	pop	ar3
	pop	ar4
00103$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'dropped'
;------------------------------------------------------------
;ipolite                   Allocated to registers r5 r6 r7 
;c                         Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../contiki-sensinode/core/net/rime/netflood.c:136: dropped(struct ipolite_conn *ipolite)
;	-----------------------------------------
;	 function dropped
;	-----------------------------------------
_dropped:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../contiki-sensinode/core/net/rime/netflood.c:138: struct netflood_conn *c = (struct netflood_conn *)ipolite;
;	../contiki-sensinode/core/net/rime/netflood.c:139: if(c->u->dropped != NULL) {
	mov	a,#0x2D
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,#0x04
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	orl	a,r3
	jz	00103$
;	../contiki-sensinode/core/net/rime/netflood.c:140: c->u->dropped(c);
	push	ar4
	push	ar3
	lcall	00109$
	sjmp	00110$
00109$:
	push	ar3
	push	ar4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	ret
00110$:
	pop	ar3
	pop	ar4
00103$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'netflood_open'
;------------------------------------------------------------
;queue_time                Allocated to stack - sp -3
;channel                   Allocated to stack - sp -5
;u                         Allocated to stack - sp -8
;c                         Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../contiki-sensinode/core/net/rime/netflood.c:147: netflood_open(struct netflood_conn *c, clock_time_t queue_time,
;	-----------------------------------------
;	 function netflood_open
;	-----------------------------------------
_netflood_open:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../contiki-sensinode/core/net/rime/netflood.c:150: ipolite_open(&c->c, channel, 1, &netflood);
	push	ar7
	push	ar6
	push	ar5
	mov	a,#_netflood
	push	acc
	mov	a,#(_netflood >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	rl	a
	push	acc
	mov	a,sp
	add	a,#0xf4
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_ipolite_open
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	pop	ar5
	pop	ar6
	pop	ar7
;	../contiki-sensinode/core/net/rime/netflood.c:151: c->u = u;
	mov	a,#0x2D
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
;	../contiki-sensinode/core/net/rime/netflood.c:152: c->queue_time = queue_time;
	mov	a,#0x30
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	ljmp	__gptrput
;------------------------------------------------------------
;Allocation info for local variables in function 'netflood_close'
;------------------------------------------------------------
;c                         Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../contiki-sensinode/core/net/rime/netflood.c:156: netflood_close(struct netflood_conn *c)
;	-----------------------------------------
;	 function netflood_close
;	-----------------------------------------
_netflood_close:
;	../contiki-sensinode/core/net/rime/netflood.c:158: ipolite_close(&c->c);
	ljmp	_ipolite_close
;------------------------------------------------------------
;Allocation info for local variables in function 'netflood_send'
;------------------------------------------------------------
;seqno                     Allocated to stack - sp -8
;c                         Allocated to stack - sp -5
;hdr                       Allocated to stack - sp -2
;------------------------------------------------------------
;	../contiki-sensinode/core/net/rime/netflood.c:162: netflood_send(struct netflood_conn *c, uint8_t seqno)
;	-----------------------------------------
;	 function netflood_send
;	-----------------------------------------
_netflood_send:
	push	dpl
	push	dph
	push	b
	inc	sp
	inc	sp
	inc	sp
;	../contiki-sensinode/core/net/rime/netflood.c:164: if(packetbuf_hdralloc(sizeof(struct netflood_hdr))) {
	mov	dptr,#0x0006
	lcall	_packetbuf_hdralloc
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jnz	00108$
	ljmp	00102$
00108$:
;	../contiki-sensinode/core/net/rime/netflood.c:165: struct netflood_hdr *hdr = packetbuf_hdrptr();
	lcall	_packetbuf_hdrptr
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
;	../contiki-sensinode/core/net/rime/netflood.c:166: rimeaddr_copy(&hdr->originator, &rimeaddr_node_addr);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x02
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,#_rimeaddr_node_addr
	push	acc
	mov	a,#(_rimeaddr_node_addr >> 8)
	push	acc
	clr	a
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_rimeaddr_copy
	dec	sp
	dec	sp
	dec	sp
;	../contiki-sensinode/core/net/rime/netflood.c:167: rimeaddr_copy(&c->last_originator, &hdr->originator);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x02
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x32
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_rimeaddr_copy
	dec	sp
	dec	sp
	dec	sp
;	../contiki-sensinode/core/net/rime/netflood.c:168: c->last_originator_seqno = hdr->originator_seqno = seqno;
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x34
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	ar3,@r0
	mov	r4,#0x00
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r3
	lcall	__gptrput
;	../contiki-sensinode/core/net/rime/netflood.c:169: hdr->hops = 0;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x04
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	../contiki-sensinode/core/net/rime/netflood.c:173: return ipolite_send(&c->c, 0, 4);
	mov	a,#0x04
	push	acc
	clr	a
	push	acc
	push	acc
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_ipolite_send
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	mov	dpl,r6
	mov	dph,r7
	sjmp	00103$
00102$:
;	../contiki-sensinode/core/net/rime/netflood.c:175: return 0;
	mov	dptr,#0x0000
00103$:
	mov	a,sp
	add	a,#0xFA
	mov	sp,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'netflood_cancel'
;------------------------------------------------------------
;c                         Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../contiki-sensinode/core/net/rime/netflood.c:179: netflood_cancel(struct netflood_conn *c)
;	-----------------------------------------
;	 function netflood_cancel
;	-----------------------------------------
_netflood_cancel:
;	../contiki-sensinode/core/net/rime/netflood.c:181: ipolite_cancel(&c->c);
	ljmp	_ipolite_cancel
	.area CSEG    (CODE)
	.area CONST   (CODE)
_netflood:
	.byte _recv_from_ipolite,(_recv_from_ipolite >> 8)
	.byte _sent,(_sent >> 8)
	.byte _dropped,(_dropped >> 8)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
