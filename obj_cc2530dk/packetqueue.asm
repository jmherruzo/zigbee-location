;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.4.0 #8981 (Oct 24 2015) (Linux)
; This file was generated Sun Oct 25 01:52:11 2015
;--------------------------------------------------------
	.module packetqueue
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _queuebuf_free
	.globl _queuebuf_new_from_packetbuf
	.globl _memb_free
	.globl _memb_alloc
	.globl _memb_init
	.globl _list_length
	.globl _list_remove
	.globl _list_add
	.globl _list_head
	.globl _list_init
	.globl _ctimer_stop
	.globl _ctimer_set
	.globl _packetqueue_init
	.globl _packetqueue_enqueue_packetbuf
	.globl _packetqueue_first
	.globl _packetqueue_dequeue
	.globl _packetqueue_len
	.globl _packetqueue_queuebuf
	.globl _packetqueue_ptr
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
;Allocation info for local variables in function 'packetqueue_init'
;------------------------------------------------------------
;q                         Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../contiki-sensinode/core/net/packetqueue.c:49: packetqueue_init(struct packetqueue *q)
;	-----------------------------------------
;	 function packetqueue_init
;	-----------------------------------------
_packetqueue_init:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	../contiki-sensinode/core/net/packetqueue.c:51: list_init(*q->list);
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
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
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	_list_init
	pop	ar5
	pop	ar6
	pop	ar7
;	../contiki-sensinode/core/net/packetqueue.c:52: memb_init(q->memb);
	mov	a,#0x03
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
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
	ljmp	_memb_init
;------------------------------------------------------------
;Allocation info for local variables in function 'remove_queued_packet'
;------------------------------------------------------------
;item                      Allocated to registers r5 r6 r7 
;i                         Allocated to stack - sp -2
;q                         Allocated to stack - sp -5
;------------------------------------------------------------
;	../contiki-sensinode/core/net/packetqueue.c:56: remove_queued_packet(void *item)
;	-----------------------------------------
;	 function remove_queued_packet
;	-----------------------------------------
_remove_queued_packet:
	mov	a,sp
	add	a,#0x06
	mov	sp,a
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../contiki-sensinode/core/net/packetqueue.c:58: struct packetqueue_item *i = item;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	../contiki-sensinode/core/net/packetqueue.c:59: struct packetqueue *q = i->queue;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x06
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
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
;	../contiki-sensinode/core/net/packetqueue.c:61: list_remove(*q->list, i);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,sp
	add	a,#0xfb
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
	mov	r4,a
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
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_list_remove
	dec	sp
	dec	sp
	dec	sp
;	../contiki-sensinode/core/net/packetqueue.c:62: queuebuf_free(i->buf);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x03
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
	lcall	_queuebuf_free
;	../contiki-sensinode/core/net/packetqueue.c:63: ctimer_stop(&i->lifetimer);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x09
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
	lcall	_ctimer_stop
;	../contiki-sensinode/core/net/packetqueue.c:64: memb_free(q->memb, i);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x03
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
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_memb_free
	dec	sp
	dec	sp
	dec	sp
	mov	a,sp
	add	a,#0xFA
	mov	sp,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'packetqueue_enqueue_packetbuf'
;------------------------------------------------------------
;lifetime                  Allocated to stack - sp -9
;ptr                       Allocated to stack - sp -12
;q                         Allocated to stack - sp -5
;i                         Allocated to stack - sp -2
;------------------------------------------------------------
;	../contiki-sensinode/core/net/packetqueue.c:69: packetqueue_enqueue_packetbuf(struct packetqueue *q, clock_time_t lifetime,
;	-----------------------------------------
;	 function packetqueue_enqueue_packetbuf
;	-----------------------------------------
_packetqueue_enqueue_packetbuf:
	push	dpl
	push	dph
	push	b
	inc	sp
	inc	sp
	inc	sp
;	../contiki-sensinode/core/net/packetqueue.c:75: i = memb_alloc(q->memb);
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x03
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
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar4
	push	ar3
	push	ar2
	lcall	_memb_alloc
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	pop	ar2
	pop	ar3
	pop	ar4
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	../contiki-sensinode/core/net/packetqueue.c:77: if(i == NULL) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00102$
;	../contiki-sensinode/core/net/packetqueue.c:78: return 0;
	mov	dptr,#0x0000
	ljmp	00107$
00102$:
;	../contiki-sensinode/core/net/packetqueue.c:82: i->buf = queuebuf_new_from_packetbuf();
	push	ar2
	push	ar3
	push	ar4
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x03
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	push	ar4
	push	ar3
	push	ar2
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
;	../contiki-sensinode/core/net/packetqueue.c:84: if(i->buf == NULL) {
	pop	ar4
	pop	ar3
	pop	ar2
	mov	a,r5
	orl	a,r6
	jnz	00104$
;	../contiki-sensinode/core/net/packetqueue.c:85: memb_free(q->memb, i);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
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
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_memb_free
	dec	sp
	dec	sp
	dec	sp
;	../contiki-sensinode/core/net/packetqueue.c:86: return 0;
	mov	dptr,#0x0000
	ljmp	00107$
00104$:
;	../contiki-sensinode/core/net/packetqueue.c:89: i->queue = q;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x06
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
	mov	a,sp
	add	a,#0xfb
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
;	../contiki-sensinode/core/net/packetqueue.c:90: i->ptr = ptr;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x1E
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
	mov	a,sp
	add	a,#0xf4
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
;	../contiki-sensinode/core/net/packetqueue.c:95: if(lifetime > 0) {
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00106$
;	../contiki-sensinode/core/net/packetqueue.c:96: ctimer_set(&i->lifetimer, lifetime, remove_queued_packet, i);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x09
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
	mov	a,#_remove_queued_packet
	push	acc
	mov	a,#(_remove_queued_packet >> 8)
	push	acc
	mov	a,sp
	add	a,#0xf2
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
	mov	sp,a
00106$:
;	../contiki-sensinode/core/net/packetqueue.c:100: list_add(*q->list, i);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,sp
	add	a,#0xfb
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
	mov	r4,a
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
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_list_add
	dec	sp
	dec	sp
	dec	sp
;	../contiki-sensinode/core/net/packetqueue.c:102: return 1;
	mov	dptr,#0x0001
00107$:
	mov	a,sp
	add	a,#0xFA
	mov	sp,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'packetqueue_first'
;------------------------------------------------------------
;q                         Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../contiki-sensinode/core/net/packetqueue.c:106: packetqueue_first(struct packetqueue *q)
;	-----------------------------------------
;	 function packetqueue_first
;	-----------------------------------------
_packetqueue_first:
;	../contiki-sensinode/core/net/packetqueue.c:108: return list_head(*q->list);
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
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	ljmp	_list_head
;------------------------------------------------------------
;Allocation info for local variables in function 'packetqueue_dequeue'
;------------------------------------------------------------
;q                         Allocated to stack - sp -5
;i                         Allocated to stack - sp -2
;------------------------------------------------------------
;	../contiki-sensinode/core/net/packetqueue.c:112: packetqueue_dequeue(struct packetqueue *q)
;	-----------------------------------------
;	 function packetqueue_dequeue
;	-----------------------------------------
_packetqueue_dequeue:
	push	dpl
	push	dph
	push	b
	inc	sp
	inc	sp
	inc	sp
;	../contiki-sensinode/core/net/packetqueue.c:116: i = list_head(*q->list);
	mov	a,sp
	add	a,#0xfb
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
	mov	r4,a
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
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_list_head
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
;	../contiki-sensinode/core/net/packetqueue.c:117: if(i != NULL) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00108$
	ljmp	00103$
00108$:
;	../contiki-sensinode/core/net/packetqueue.c:118: list_remove(*q->list, i);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	a,sp
	add	a,#0xfb
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
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	push	ar2
	push	ar3
	push	ar4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_list_remove
	dec	sp
	dec	sp
	dec	sp
;	../contiki-sensinode/core/net/packetqueue.c:119: queuebuf_free(i->buf);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x03
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
	lcall	_queuebuf_free
;	../contiki-sensinode/core/net/packetqueue.c:120: ctimer_stop(&i->lifetimer);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x09
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
	lcall	_ctimer_stop
;	../contiki-sensinode/core/net/packetqueue.c:121: memb_free(q->memb, i);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x03
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
	push	ar2
	push	ar3
	push	ar4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_memb_free
	dec	sp
	dec	sp
	dec	sp
00103$:
	mov	a,sp
	add	a,#0xFA
	mov	sp,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'packetqueue_len'
;------------------------------------------------------------
;q                         Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../contiki-sensinode/core/net/packetqueue.c:126: packetqueue_len(struct packetqueue *q)
;	-----------------------------------------
;	 function packetqueue_len
;	-----------------------------------------
_packetqueue_len:
;	../contiki-sensinode/core/net/packetqueue.c:128: return list_length(*q->list);
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
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	ljmp	_list_length
;------------------------------------------------------------
;Allocation info for local variables in function 'packetqueue_queuebuf'
;------------------------------------------------------------
;i                         Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../contiki-sensinode/core/net/packetqueue.c:132: packetqueue_queuebuf(struct packetqueue_item *i)
;	-----------------------------------------
;	 function packetqueue_queuebuf
;	-----------------------------------------
_packetqueue_queuebuf:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../contiki-sensinode/core/net/packetqueue.c:134: if(i != NULL) {
	mov	a,r5
	orl	a,r6
	jz	00102$
;	../contiki-sensinode/core/net/packetqueue.c:135: return i->buf;
	mov	a,#0x03
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
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
	ret
00102$:
;	../contiki-sensinode/core/net/packetqueue.c:137: return NULL;
	mov	dptr,#0x0000
	mov	b,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'packetqueue_ptr'
;------------------------------------------------------------
;i                         Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../contiki-sensinode/core/net/packetqueue.c:142: packetqueue_ptr(struct packetqueue_item *i)
;	-----------------------------------------
;	 function packetqueue_ptr
;	-----------------------------------------
_packetqueue_ptr:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../contiki-sensinode/core/net/packetqueue.c:144: if(i != NULL) {
	mov	a,r5
	orl	a,r6
	jz	00102$
;	../contiki-sensinode/core/net/packetqueue.c:145: return i->ptr;
	mov	a,#0x1E
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
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
	ret
00102$:
;	../contiki-sensinode/core/net/packetqueue.c:147: return NULL;
	mov	dptr,#0x0000
	mov	b,#0x00
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
