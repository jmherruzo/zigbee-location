;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.4.0 #8981 (Oct 24 2015) (Linux)
; This file was generated Sun Oct 25 01:52:01 2015
;--------------------------------------------------------
	.module trickle
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _random_rand
	.globl _queuebuf_free
	.globl _queuebuf_to_packetbuf
	.globl _queuebuf_new_from_packetbuf
	.globl _broadcast_send
	.globl _broadcast_close
	.globl _broadcast_open
	.globl _channel_set_attributes
	.globl _packetbuf_attr
	.globl _packetbuf_set_attr
	.globl _ctimer_stop
	.globl _ctimer_set
	.globl _trickle_open
	.globl _trickle_close
	.globl _trickle_send
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
;ptr                       Allocated to registers r5 r6 r7 
;c                         Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../contiki-sensinode/core/net/rime/trickle.c:76: send(void *ptr)
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
;	../contiki-sensinode/core/net/rime/trickle.c:78: struct trickle_conn *c = ptr;
;	../contiki-sensinode/core/net/rime/trickle.c:80: if(c->q != NULL) {
	mov	a,#0x53
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
	mov	a,r2
	orl	a,r3
	jz	00103$
;	../contiki-sensinode/core/net/rime/trickle.c:81: queuebuf_to_packetbuf(c->q);
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	_queuebuf_to_packetbuf
	pop	ar5
	pop	ar6
	pop	ar7
;	../contiki-sensinode/core/net/rime/trickle.c:82: broadcast_send(&c->c);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	ljmp	_broadcast_send
00103$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'timer_callback'
;------------------------------------------------------------
;ptr                       Allocated to registers r5 r6 r7 
;c                         Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../contiki-sensinode/core/net/rime/trickle.c:90: timer_callback(void *ptr)
;	-----------------------------------------
;	 function timer_callback
;	-----------------------------------------
_timer_callback:
;	../contiki-sensinode/core/net/rime/trickle.c:92: struct trickle_conn *c = ptr;
;	../contiki-sensinode/core/net/rime/trickle.c:93: run_trickle(c);
	ljmp	_run_trickle
;------------------------------------------------------------
;Allocation info for local variables in function 'reset_interval'
;------------------------------------------------------------
;c                         Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../contiki-sensinode/core/net/rime/trickle.c:97: reset_interval(struct trickle_conn *c)
;	-----------------------------------------
;	 function reset_interval
;	-----------------------------------------
_reset_interval:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../contiki-sensinode/core/net/rime/trickle.c:99: PT_INIT(&c->pt);
	mov	a,#0x51
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	../contiki-sensinode/core/net/rime/trickle.c:100: run_trickle(c);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	ljmp	_run_trickle
;------------------------------------------------------------
;Allocation info for local variables in function 'set_timer'
;------------------------------------------------------------
;t                         Allocated to stack - sp -4
;i                         Allocated to stack - sp -6
;c                         Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../contiki-sensinode/core/net/rime/trickle.c:104: set_timer(struct trickle_conn *c, struct ctimer *t, clock_time_t i)
;	-----------------------------------------
;	 function set_timer
;	-----------------------------------------
_set_timer:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../contiki-sensinode/core/net/rime/trickle.c:106: ctimer_set(t, i, timer_callback, c);
	push	ar5
	push	ar6
	push	ar7
	mov	a,#_timer_callback
	push	acc
	mov	a,#(_timer_callback >> 8)
	push	acc
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_ctimer_set
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'run_trickle'
;------------------------------------------------------------
;c                         Allocated to stack - sp -3
;interval                  Allocated to registers r4 r3 
;PT_YIELD_FLAG             Allocated to stack - sp +0
;sloc0                     Allocated to stack - sp +3
;sloc1                     Allocated to stack - sp +5
;------------------------------------------------------------
;	../contiki-sensinode/core/net/rime/trickle.c:110: run_trickle(struct trickle_conn *c)
;	-----------------------------------------
;	 function run_trickle
;	-----------------------------------------
_run_trickle:
	push	dpl
	push	dph
	push	b
	inc	sp
;	../contiki-sensinode/core/net/rime/trickle.c:113: PT_BEGIN(&c->pt);
	mov	r0,sp
	mov	@r0,#0x01
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	a,#0x51
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r7,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	cjne	r7,#0x00,00148$
	cjne	r6,#0x00,00148$
	sjmp	00119$
00148$:
	cjne	r7,#0x79,00149$
	cjne	r6,#0x00,00149$
	ljmp	00102$
00149$:
	cjne	r7,#0x7D,00150$
	cjne	r6,#0x00,00150$
	ljmp	00110$
00150$:
	ljmp	00121$
;	../contiki-sensinode/core/net/rime/trickle.c:115: while(1) {
00119$:
;	../contiki-sensinode/core/net/rime/trickle.c:116: interval = c->interval << c->interval_scaling;
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	a,#0x56
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
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	a,#0x59
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
	lcall	__gptrget
	mov	r5,a
	mov	b,r5
	inc	b
	mov	r5,ar4
	mov	r7,ar3
	sjmp	00152$
00151$:
	mov	a,r5
	add	a,r5
	mov	r5,a
	mov	a,r7
	rlc	a
	mov	r7,a
00152$:
	djnz	b,00151$
	mov	ar4,r5
	mov	ar3,r7
;	../contiki-sensinode/core/net/rime/trickle.c:117: set_timer(c, &c->interval_timer, interval);
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	a,#0x27
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	push	ar4
	push	ar3
	push	ar4
	push	ar3
	push	ar5
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_set_timer
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar3
	pop	ar4
;	../contiki-sensinode/core/net/rime/trickle.c:118: set_timer(c, &c->t, interval / 2 + (random_rand() % (interval / 2)));
	mov	a,r3
	clr	c
	rrc	a
	xch	a,r4
	rrc	a
	xch	a,r4
	mov	r3,a
	push	ar4
	push	ar3
	lcall	_random_rand
	mov	r5,dpl
	mov	r7,dph
	pop	ar3
	pop	ar4
	push	ar4
	push	ar3
	push	ar4
	push	ar3
	mov	dpl,r5
	mov	dph,r7
	lcall	__moduint
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	pop	ar3
	pop	ar4
	mov	a,r6
	add	a,r4
	mov	r4,a
	mov	a,r7
	addc	a,r3
	mov	r3,a
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	a,#0x12
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	push	ar4
	push	ar3
	push	ar5
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_set_timer
	mov	a,sp
	add	a,#0xfb
;	../contiki-sensinode/core/net/rime/trickle.c:120: c->duplicates = 0;
	mov	sp,a
	add	a,#0xfd
	mov	r0,a
	mov	a,#0x5A
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
;	../contiki-sensinode/core/net/rime/trickle.c:121: PT_YIELD(&c->pt); /* Wait until listen timeout */
	mov	r0,sp
	mov	@r0,#0x00
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	a,#0x51
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
	mov	a,#0x79
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
00102$:
	mov	r0,sp
	mov	a,@r0
	jnz	00106$
	mov	dptr,#0x0001
	ljmp	00122$
00106$:
;	../contiki-sensinode/core/net/rime/trickle.c:122: if(c->duplicates < DUPLICATE_THRESHOLD) {
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	a,#0x5A
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
	lcall	__gptrget
	mov	r5,a
	cjne	r5,#0x01,00154$
00154$:
	jnc	00113$
;	../contiki-sensinode/core/net/rime/trickle.c:123: send(c);
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_send
;	../contiki-sensinode/core/net/rime/trickle.c:125: PT_YIELD(&c->pt); /* Wait until interval timer expired. */
00113$:
	mov	r0,sp
	mov	@r0,#0x00
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	a,#0x51
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
	mov	a,#0x7D
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
00110$:
	mov	r0,sp
	mov	a,@r0
	jnz	00114$
	mov	dptr,#0x0001
	sjmp	00122$
00114$:
;	../contiki-sensinode/core/net/rime/trickle.c:126: if(c->interval_scaling < INTERVAL_MAX) {
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	a,#0x59
	add	a,@r0
	mov	r6,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r6
	mov	dph,r5
	mov	b,r4
	lcall	__gptrget
	mov	r7,a
	cjne	r7,#0x04,00157$
00157$:
	jc	00158$
	ljmp	00119$
00158$:
;	../contiki-sensinode/core/net/rime/trickle.c:127: c->interval_scaling++;
	inc	r7
	mov	dpl,r6
	mov	dph,r5
	mov	b,r4
	mov	a,r7
	lcall	__gptrput
	ljmp	00119$
;	../contiki-sensinode/core/net/rime/trickle.c:131: PT_END(&c->pt);
00121$:
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	mov	dptr,#0x0003
00122$:
	mov	a,sp
	add	a,#0xFC
	mov	sp,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'recv'
;------------------------------------------------------------
;from                      Allocated to stack - sp -12
;bc                        Allocated to registers r5 r6 r7 
;c                         Allocated to stack - sp -4
;seqno                     Allocated to stack - sp -1
;sloc0                     Allocated to stack - sp +1
;sloc1                     Allocated to stack - sp -7
;------------------------------------------------------------
;	../contiki-sensinode/core/net/rime/trickle.c:135: recv(struct broadcast_conn *bc, const rimeaddr_t *from)
;	-----------------------------------------
;	 function recv
;	-----------------------------------------
_recv:
	mov	a,sp
	add	a,#0x08
	mov	sp,a
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../contiki-sensinode/core/net/rime/trickle.c:137: struct trickle_conn *c = (struct trickle_conn *)bc;
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	../contiki-sensinode/core/net/rime/trickle.c:138: uint16_t seqno = packetbuf_attr(PACKETBUF_ATTR_EPACKET_ID);
	mov	dpl,#0x15
	lcall	_packetbuf_attr
	mov	r3,dpl
	mov	r4,dph
	mov	r0,sp
	dec	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
;	../contiki-sensinode/core/net/rime/trickle.c:148: if(seqno == c->seqno) {
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,#0x58
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
	mov	r6,a
	mov	r7,#0x00
	mov	r0,sp
	dec	r0
	mov	a,@r0
	cjne	a,ar6,00120$
	inc	r0
	mov	a,@r0
	cjne	a,ar7,00120$
	sjmp	00121$
00120$:
	sjmp	00107$
00121$:
;	../contiki-sensinode/core/net/rime/trickle.c:150: ++c->duplicates;
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,#0x5A
	add	a,@r0
	mov	r6,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r6
	mov	dph,r5
	mov	b,r4
	lcall	__gptrget
	mov	r7,a
	inc	r7
	mov	dpl,r6
	mov	dph,r5
	mov	b,r4
	mov	a,r7
	lcall	__gptrput
	ljmp	00109$
00107$:
;	../contiki-sensinode/core/net/rime/trickle.c:151: } else if(SEQNO_LT(seqno, c->seqno)) {
	mov	r0,sp
	dec	r0
	mov	a,@r0
	mov	r7,a
	clr	c
	subb	a,r5
	mov	r6,a
	jnb	acc.7,00104$
;	../contiki-sensinode/core/net/rime/trickle.c:152: c->interval_scaling = 0;
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,#0x59
	add	a,@r0
	mov	r7,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar5,@r0
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	clr	a
	lcall	__gptrput
;	../contiki-sensinode/core/net/rime/trickle.c:153: send(c);
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_send
	ljmp	00109$
00104$:
;	../contiki-sensinode/core/net/rime/trickle.c:158: c->seqno = seqno;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r7
	lcall	__gptrput
;	../contiki-sensinode/core/net/rime/trickle.c:160: if(c->q != NULL) {
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,#0x53
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
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,r2
	orl	a,r3
	jz	00102$
;	../contiki-sensinode/core/net/rime/trickle.c:161: queuebuf_free(c->q);
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	_queuebuf_free
	pop	ar5
	pop	ar6
	pop	ar7
00102$:
;	../contiki-sensinode/core/net/rime/trickle.c:163: c->q = queuebuf_new_from_packetbuf();
	push	ar7
	push	ar6
	push	ar5
	lcall	_queuebuf_new_from_packetbuf
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
;	../contiki-sensinode/core/net/rime/trickle.c:164: c->interval_scaling = 0;
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,#0x59
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
;	../contiki-sensinode/core/net/rime/trickle.c:165: reset_interval(c);
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_reset_interval
;	../contiki-sensinode/core/net/rime/trickle.c:167: send, c);
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
;	../contiki-sensinode/core/net/rime/trickle.c:166: ctimer_set(&c->first_transmission_timer, random_rand() % c->interval,
	push	ar7
	push	ar6
	push	ar5
	lcall	_random_rand
	xch	a,r0
	mov	a,sp
	add	a,#0xf6
	xch	a,r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,#0x56
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	push	ar7
	push	ar6
	push	ar5
	push	ar2
	push	ar3
	mov	a,sp
	add	a,#0xf4
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	__moduint
	xch	a,r0
	mov	a,sp
	add	a,#0xf4
	xch	a,r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,#0x3C
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
	mov	a,#_send
	push	acc
	mov	a,#(_send >> 8)
	push	acc
	mov	a,sp
	add	a,#0xf4
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_ctimer_set
	mov	a,sp
	add	a,#0xf9
;	../contiki-sensinode/core/net/rime/trickle.c:168: c->cb->recv(c);
	mov	sp,a
	add	a,#0xfc
	mov	r0,a
	mov	a,#0x0F
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
	push	ar6
	push	ar5
	lcall	00124$
	sjmp	00125$
00124$:
	push	ar5
	push	ar6
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	ret
00125$:
	pop	ar5
	pop	ar6
00109$:
	mov	a,sp
	add	a,#0xF8
	mov	sp,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'trickle_open'
;------------------------------------------------------------
;interval                  Allocated to stack - sp -3
;channel                   Allocated to stack - sp -5
;cb                        Allocated to stack - sp -8
;c                         Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../contiki-sensinode/core/net/rime/trickle.c:175: trickle_open(struct trickle_conn *c, clock_time_t interval,
;	-----------------------------------------
;	 function trickle_open
;	-----------------------------------------
_trickle_open:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../contiki-sensinode/core/net/rime/trickle.c:178: broadcast_open(&c->c, channel, &bc);
	push	ar7
	push	ar6
	push	ar5
	mov	a,#_bc
	push	acc
	mov	a,#(_bc >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_broadcast_open
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar5
	pop	ar6
	pop	ar7
;	../contiki-sensinode/core/net/rime/trickle.c:179: c->cb = cb;
	mov	a,#0x0F
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
;	../contiki-sensinode/core/net/rime/trickle.c:180: c->q = NULL;
	mov	a,#0x53
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	../contiki-sensinode/core/net/rime/trickle.c:181: c->interval = interval;
	mov	a,#0x56
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
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
;	../contiki-sensinode/core/net/rime/trickle.c:182: c->interval_scaling = 0;
	mov	a,#0x59
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
;	../contiki-sensinode/core/net/rime/trickle.c:183: channel_set_attributes(channel, attributes);
	mov	a,#_attributes
	push	acc
	mov	a,#(_attributes >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	_channel_set_attributes
	dec	sp
	dec	sp
	dec	sp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'trickle_close'
;------------------------------------------------------------
;c                         Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../contiki-sensinode/core/net/rime/trickle.c:187: trickle_close(struct trickle_conn *c)
;	-----------------------------------------
;	 function trickle_close
;	-----------------------------------------
_trickle_close:
;	../contiki-sensinode/core/net/rime/trickle.c:189: broadcast_close(&c->c);
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	push	ar7
	push	ar6
	push	ar5
	lcall	_broadcast_close
	pop	ar5
	pop	ar6
	pop	ar7
;	../contiki-sensinode/core/net/rime/trickle.c:190: ctimer_stop(&c->t);
	mov	a,#0x12
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	_ctimer_stop
	pop	ar5
	pop	ar6
	pop	ar7
;	../contiki-sensinode/core/net/rime/trickle.c:191: ctimer_stop(&c->interval_timer);
	mov	a,#0x27
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	ljmp	_ctimer_stop
;------------------------------------------------------------
;Allocation info for local variables in function 'trickle_send'
;------------------------------------------------------------
;c                         Allocated to stack - sp -5
;sloc0                     Allocated to stack - sp -2
;------------------------------------------------------------
;	../contiki-sensinode/core/net/rime/trickle.c:195: trickle_send(struct trickle_conn *c)
;	-----------------------------------------
;	 function trickle_send
;	-----------------------------------------
_trickle_send:
	push	dpl
	push	dph
	push	b
	inc	sp
	inc	sp
	inc	sp
;	../contiki-sensinode/core/net/rime/trickle.c:197: if(c->q != NULL) {
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x53
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r7,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	mov	a,r7
	orl	a,r6
	jz	00102$
;	../contiki-sensinode/core/net/rime/trickle.c:198: queuebuf_free(c->q);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	push	ar4
	push	ar3
	push	ar2
	lcall	_queuebuf_free
	pop	ar2
	pop	ar3
	pop	ar4
00102$:
;	../contiki-sensinode/core/net/rime/trickle.c:200: c->seqno++;
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	r1,sp
	dec	r1
	dec	r1
	mov	a,#0x58
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
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r7,a
	inc	r7
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r7
	lcall	__gptrput
;	../contiki-sensinode/core/net/rime/trickle.c:201: packetbuf_set_attr(PACKETBUF_ATTR_EPACKET_ID, c->seqno);
	mov	r6,#0x00
	push	ar4
	push	ar3
	push	ar2
	push	ar7
	push	ar6
	mov	dpl,#0x15
	lcall	_packetbuf_set_attr
	dec	sp
	dec	sp
;	../contiki-sensinode/core/net/rime/trickle.c:202: c->q = queuebuf_new_from_packetbuf();
	lcall	_queuebuf_new_from_packetbuf
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	pop	ar2
	pop	ar3
	pop	ar4
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	../contiki-sensinode/core/net/rime/trickle.c:206: reset_interval(c);
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_reset_interval
;	../contiki-sensinode/core/net/rime/trickle.c:207: send(c);
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_send
	mov	a,sp
	add	a,#0xFA
	mov	sp,a
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
_attributes:
	.db #0x15	; 21
	.db #0x08	; 8
	.db #0x18	; 24
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x00	; 0
_bc:
	.byte _recv,(_recv >> 8)
	.byte #0x00,#0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
