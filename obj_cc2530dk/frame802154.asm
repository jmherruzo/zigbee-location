;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.4.0 #8981 (Oct 24 2015) (Linux)
; This file was generated Sun Oct 25 01:52:06 2015
;--------------------------------------------------------
	.module frame802154
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _rimeaddr_copy
	.globl _memset
	.globl _memcpy
	.globl _frame802154_hdrlen
	.globl _frame802154_create
	.globl _frame802154_parse
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
_flen:
	.ds 5
_fcf:
	.ds 8
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
;Allocation info for local variables in function 'addr_len'
;------------------------------------------------------------
;mode                      Allocated to registers r7 
;------------------------------------------------------------
;	../contiki-sensinode/core/net/mac/frame802154.c:84: addr_len(uint8_t mode)
;	-----------------------------------------
;	 function addr_len
;	-----------------------------------------
_addr_len:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,dpl
;	../contiki-sensinode/core/net/mac/frame802154.c:86: switch(mode) {
	cjne	r7,#0x02,00113$
	sjmp	00101$
00113$:
;	../contiki-sensinode/core/net/mac/frame802154.c:87: case FRAME802154_SHORTADDRMODE:  /* 16-bit address */
	cjne	r7,#0x03,00103$
	sjmp	00102$
00101$:
;	../contiki-sensinode/core/net/mac/frame802154.c:88: return 2;
	mov	dpl,#0x02
;	../contiki-sensinode/core/net/mac/frame802154.c:89: case FRAME802154_LONGADDRMODE:   /* 64-bit address */
	ret
00102$:
;	../contiki-sensinode/core/net/mac/frame802154.c:90: return 8;
	mov	dpl,#0x08
;	../contiki-sensinode/core/net/mac/frame802154.c:91: default:
	ret
00103$:
;	../contiki-sensinode/core/net/mac/frame802154.c:92: return 0;
	mov	dpl,#0x00
;	../contiki-sensinode/core/net/mac/frame802154.c:93: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'field_len'
;------------------------------------------------------------
;flen                      Allocated to stack - sp -15
;p                         Allocated to stack - sp -10
;sloc0                     Allocated to stack - sp -7
;sloc1                     Allocated to stack - sp -5
;sloc2                     Allocated to stack - sp -2
;------------------------------------------------------------
;	../contiki-sensinode/core/net/mac/frame802154.c:97: field_len(frame802154_t *p, field_length_t *flen)
;	-----------------------------------------
;	 function field_len
;	-----------------------------------------
_field_len:
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x08
;	../contiki-sensinode/core/net/mac/frame802154.c:100: memset(flen, 0, sizeof(field_length_t));
	mov	sp,a
	add	a,#0xf1
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	a,#0x05
	push	acc
	clr	a
	push	acc
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_memset
	dec	sp
	dec	sp
	dec	sp
;	../contiki-sensinode/core/net/mac/frame802154.c:103: if(p->fcf.dest_addr_mode & 3) {
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	a,#0x05
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
	anl	a,#0x03
	jz	00102$
;	../contiki-sensinode/core/net/mac/frame802154.c:104: flen->dest_pid_len = 2;
	mov	a,sp
	add	a,#0xf1
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x02
	lcall	__gptrput
00102$:
;	../contiki-sensinode/core/net/mac/frame802154.c:106: if(p->fcf.src_addr_mode & 3) {
	push	ar2
	push	ar3
	push	ar4
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	mov	a,sp
	add	a,#0xf8
	mov	r1,a
	mov	a,#0x07
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
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r4,a
	anl	a,#0x03
	jnz	00128$
	pop	ar4
	pop	ar3
	pop	ar2
	sjmp	00104$
00128$:
	pop	ar4
	pop	ar3
	pop	ar2
;	../contiki-sensinode/core/net/mac/frame802154.c:107: flen->src_pid_len = 2;
	mov	a,sp
	add	a,#0xf1
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,#0x02
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x02
	lcall	__gptrput
;	../contiki-sensinode/core/net/mac/frame802154.c:126: if(p->fcf.security_enabled & 1) {
;	../contiki-sensinode/core/net/mac/frame802154.c:107: flen->src_pid_len = 2;
00104$:
;	../contiki-sensinode/core/net/mac/frame802154.c:111: if(p->fcf.dest_addr_mode & 3 && p->fcf.src_addr_mode & 3 &&
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r7,a
	anl	a,#0x03
	jnz	00129$
	ljmp	00106$
00129$:
	push	ar2
	push	ar3
	push	ar4
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r4,a
	anl	a,#0x03
	jnz	00130$
	pop	ar4
	pop	ar3
	pop	ar2
	ljmp	00106$
00130$:
	pop	ar4
	pop	ar3
	pop	ar2
;	../contiki-sensinode/core/net/mac/frame802154.c:112: p->src_pid == p->dest_pid) {
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	a,#0x13
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
	add	a,#0xf9
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
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
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	a,@r0
	cjne	a,ar5,00131$
	inc	r0
	mov	a,@r0
	cjne	a,ar6,00131$
	sjmp	00132$
00131$:
	sjmp	00106$
00132$:
;	../contiki-sensinode/core/net/mac/frame802154.c:113: p->fcf.panid_compression = 1;
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
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
	mov	a,#0x01
	lcall	__gptrput
;	../contiki-sensinode/core/net/mac/frame802154.c:116: flen->src_pid_len = 0;
	mov	a,sp
	add	a,#0xf1
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,#0x02
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
	sjmp	00107$
00106$:
;	../contiki-sensinode/core/net/mac/frame802154.c:118: p->fcf.panid_compression = 0;
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
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
00107$:
;	../contiki-sensinode/core/net/mac/frame802154.c:122: flen->dest_addr_len = addr_len(p->fcf.dest_addr_mode & 3);
	mov	a,sp
	add	a,#0xf1
	mov	r0,a
	mov	r1,sp
	dec	r1
	dec	r1
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x01
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	anl	ar2,#0x03
	mov	dpl,r2
	push	ar7
	push	ar6
	push	ar5
	lcall	_addr_len
	mov	r4,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r4
	lcall	__gptrput
;	../contiki-sensinode/core/net/mac/frame802154.c:123: flen->src_addr_len = addr_len(p->fcf.src_addr_mode & 3);
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
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r4,a
	anl	ar4,#0x03
	mov	dpl,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	_addr_len
	mov	r4,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r4
	lcall	__gptrput
;	../contiki-sensinode/core/net/mac/frame802154.c:126: if(p->fcf.security_enabled & 1) {
	mov	a,sp
	add	a,#0xF5
	mov	sp,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'frame802154_hdrlen'
;------------------------------------------------------------
;p                         Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../contiki-sensinode/core/net/mac/frame802154.c:159: frame802154_hdrlen(frame802154_t *p)
;	-----------------------------------------
;	 function frame802154_hdrlen
;	-----------------------------------------
_frame802154_hdrlen:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../contiki-sensinode/core/net/mac/frame802154.c:161: field_len(p, &flen);
	mov	a,#_flen
	push	acc
	mov	a,#(_flen >> 8)
	push	acc
	clr	a
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_field_len
	dec	sp
	dec	sp
	dec	sp
;	../contiki-sensinode/core/net/mac/frame802154.c:162: return 3 + flen.dest_pid_len + flen.dest_addr_len +
	mov	dptr,#_flen
	movx	a,@dptr
	mov	r7,a
	inc	r7
	inc	r7
	inc	r7
	mov	dptr,#(_flen + 0x0001)
	movx	a,@dptr
	add	a,r7
	mov	r7,a
;	../contiki-sensinode/core/net/mac/frame802154.c:163: flen.src_pid_len + flen.src_addr_len + flen.aux_sec_len;
	mov	dptr,#(_flen + 0x0002)
	movx	a,@dptr
	add	a,r7
	mov	r7,a
	mov	dptr,#(_flen + 0x0003)
	movx	a,@dptr
	add	a,r7
	mov	r7,a
	mov	dptr,#(_flen + 0x0004)
	movx	a,@dptr
	add	a,r7
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'frame802154_create'
;------------------------------------------------------------
;buf                       Allocated to stack - sp -18
;buf_len                   Allocated to stack - sp -19
;p                         Allocated to stack - sp -13
;c                         Allocated to registers r7 r6 
;tx_frame_buffer           Allocated to stack - sp -3
;pos                       Allocated to stack - sp +0
;sloc0                     Allocated to stack - sp -10
;sloc1                     Allocated to stack - sp -9
;sloc2                     Allocated to stack - sp -6
;------------------------------------------------------------
;	../contiki-sensinode/core/net/mac/frame802154.c:181: frame802154_create(frame802154_t *p, uint8_t *buf, uint8_t buf_len)
;	-----------------------------------------
;	 function frame802154_create
;	-----------------------------------------
_frame802154_create:
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x0B
	mov	sp,a
;	../contiki-sensinode/core/net/mac/frame802154.c:187: field_len(p, &flen);
	mov	a,#_flen
	push	acc
	mov	a,#(_flen >> 8)
	push	acc
	clr	a
	push	acc
	mov	a,sp
	add	a,#0xf0
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_field_len
	dec	sp
	dec	sp
	dec	sp
;	../contiki-sensinode/core/net/mac/frame802154.c:189: if(3 + flen.dest_pid_len + flen.dest_addr_len +
	mov	dptr,#_flen
	movx	a,@dptr
	mov	r4,a
	mov	r3,#0x00
	mov	a,#0x03
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dptr,#(_flen + 0x0001)
	movx	a,@dptr
	mov	r2,a
	mov	r7,#0x00
	add	a,r4
	mov	r4,a
	mov	a,r7
	addc	a,r3
	mov	r3,a
;	../contiki-sensinode/core/net/mac/frame802154.c:190: flen.src_pid_len + flen.src_addr_len + flen.aux_sec_len > buf_len) {
	mov	dptr,#(_flen + 0x0002)
	movx	a,@dptr
	mov	r6,#0x00
	add	a,r4
	mov	r4,a
	mov	a,r6
	addc	a,r3
	mov	r3,a
	mov	dptr,#(_flen + 0x0003)
	movx	a,@dptr
	mov	r6,#0x00
	add	a,r4
	mov	r4,a
	mov	a,r6
	addc	a,r3
	mov	r3,a
	mov	dptr,#(_flen + 0x0004)
	movx	a,@dptr
	mov	r6,#0x00
	add	a,r4
	mov	r4,a
	mov	a,r6
	addc	a,r3
	mov	r3,a
	mov	a,sp
	add	a,#0xed
	mov	r0,a
	mov	ar6,@r0
	mov	r7,#0x00
	clr	c
	mov	a,r6
	subb	a,r4
	mov	a,r7
	xrl	a,#0x80
	mov	b,r3
	xrl	b,#0x80
	subb	a,b
	jnc	00102$
;	../contiki-sensinode/core/net/mac/frame802154.c:192: return 0;
	mov	dpl,#0x00
	ljmp	00115$
00102$:
;	../contiki-sensinode/core/net/mac/frame802154.c:197: tx_frame_buffer = buf;
	mov	a,sp
	add	a,#0xee
	mov	r0,a
	mov	a,sp
	add	a,#0xfd
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
;	../contiki-sensinode/core/net/mac/frame802154.c:198: tx_frame_buffer[0] = (p->fcf.frame_type & 7) |
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r4,a
	anl	ar4,#0x07
;	../contiki-sensinode/core/net/mac/frame802154.c:199: ((p->fcf.security_enabled & 1) << 3) |
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	mov	a,#0x01
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	__gptrget
	anl	a,#0x01
	swap	a
	rr	a
	anl	a,#0xF8
	orl	ar4,a
;	../contiki-sensinode/core/net/mac/frame802154.c:200: ((p->fcf.frame_pending & 1) << 4) |
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	mov	a,#0x02
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
	anl	a,#0x01
	swap	a
	anl	a,#0xF0
	orl	ar4,a
;	../contiki-sensinode/core/net/mac/frame802154.c:201: ((p->fcf.ack_required & 1) << 5) |
	mov	a,sp
	add	a,#0xf3
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
	anl	a,#0x01
	swap	a
	rl	a
	anl	a,#0xE0
	orl	ar4,a
;	../contiki-sensinode/core/net/mac/frame802154.c:202: ((p->fcf.panid_compression & 1) << 6);
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
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
	lcall	__gptrget
	anl	a,#0x01
	rr	a
	rr	a
	anl	a,#0xC0
	orl	ar4,a
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r4
	lcall	__gptrput
;	../contiki-sensinode/core/net/mac/frame802154.c:203: tx_frame_buffer[1] = ((p->fcf.dest_addr_mode & 3) << 2) |
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	a,#0x01
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	mov	a,#0x05
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
	anl	ar2,#0x03
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	a,r2
	add	a,r2
	add	a,acc
	mov	@r0,a
;	../contiki-sensinode/core/net/mac/frame802154.c:204: ((p->fcf.frame_version & 3) << 4) |
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
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
	lcall	__gptrget
	anl	a,#0x03
	swap	a
	anl	a,#0xF0
	mov	r2,a
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	a,r2
	orl	a,@r0
	mov	@r0,a
;	../contiki-sensinode/core/net/mac/frame802154.c:205: ((p->fcf.src_addr_mode & 3) << 6);
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	mov	a,#0x07
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
	anl	a,#0x03
	rr	a
	rr	a
	anl	a,#0xC0
	mov	r2,a
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	a,@r0
	orl	ar2,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r2
	lcall	__gptrput
;	../contiki-sensinode/core/net/mac/frame802154.c:208: tx_frame_buffer[2] = p->seq;
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
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
	add	a,#0xf3
	mov	r0,a
	mov	a,#0x08
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
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
;	../contiki-sensinode/core/net/mac/frame802154.c:209: pos = 3;
	mov	r0,sp
	mov	@r0,#0x03
;	../contiki-sensinode/core/net/mac/frame802154.c:212: if(flen.dest_pid_len == 2) {
	mov	dptr,#_flen
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x02,00104$
;	../contiki-sensinode/core/net/mac/frame802154.c:213: tx_frame_buffer[pos++] = p->dest_pid & 0xff;
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	a,sp
	add	a,#0xf7
	mov	r1,a
	mov	a,#0x03
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
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	mov	a,#0x09
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar6,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r6
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r4
	lcall	__gptrput
;	../contiki-sensinode/core/net/mac/frame802154.c:214: tx_frame_buffer[pos++] = (p->dest_pid >> 8) & 0xff;
	mov	r0,sp
	mov	@r0,#0x05
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	a,#0x04
	add	a,@r0
	mov	r4,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r6
	lcall	__gptrget
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	mov	r2,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r7
	lcall	__gptrput
00104$:
;	../contiki-sensinode/core/net/mac/frame802154.c:218: for(c = flen.dest_addr_len; c > 0; c--) {
	mov	dptr,#(_flen + 0x0001)
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	mov	a,sp
	add	a,#0xf7
	mov	r1,a
	mov	a,#0x0B
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
	mov	ar2,@r0
00110$:
	clr	c
	clr	a
	subb	a,r7
	mov	a,#(0x00 ^ 0x80)
	mov	b,r6
	xrl	b,#0x80
	subb	a,b
	jnc	00124$
;	../contiki-sensinode/core/net/mac/frame802154.c:219: tx_frame_buffer[pos++] = p->dest_addr[c - 1];
	mov	ar5,r2
	inc	r2
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	a,sp
	add	a,#0xfa
	mov	r1,a
	mov	a,r5
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
	mov	ar5,r7
	mov	a,r5
	dec	a
	xch	a,r0
	mov	a,sp
	add	a,#0xf7
	xch	a,r0
	add	a,@r0
	mov	r3,a
	inc	r0
	clr	a
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar5,@r0
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r3,a
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r3
	lcall	__gptrput
;	../contiki-sensinode/core/net/mac/frame802154.c:218: for(c = flen.dest_addr_len; c > 0; c--) {
	dec	r7
	cjne	r7,#0xFF,00144$
	dec	r6
00144$:
	sjmp	00110$
00124$:
	mov	r0,sp
	mov	@r0,ar2
;	../contiki-sensinode/core/net/mac/frame802154.c:223: if(flen.src_pid_len == 2) {
	mov	dptr,#(_flen + 0x0002)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x02,00107$
;	../contiki-sensinode/core/net/mac/frame802154.c:224: tx_frame_buffer[pos++] = p->src_pid & 0xff;
	mov	r0,sp
	mov	a,r2
	inc	a
	mov	@r0,a
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	a,sp
	add	a,#0xfa
	mov	r1,a
	mov	a,r2
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
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	mov	a,#0x13
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar5,@r0
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r6
	lcall	__gptrput
;	../contiki-sensinode/core/net/mac/frame802154.c:225: tx_frame_buffer[pos++] = (p->src_pid >> 8) & 0xff;
	mov	r0,sp
	mov	ar7,@r0
	mov	r0,sp
	inc	@r0
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	a,r7
	add	a,@r0
	mov	r7,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar2,@r0
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	r3,a
	mov	dpl,r7
	mov	dph,r6
	mov	b,r2
	lcall	__gptrput
00107$:
;	../contiki-sensinode/core/net/mac/frame802154.c:229: for(c = flen.src_addr_len; c > 0; c--) {
	mov	dptr,#(_flen + 0x0003)
	movx	a,@dptr
	mov	r6,a
	mov	r7,#0x00
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	mov	a,sp
	add	a,#0xfa
	mov	r1,a
	mov	a,#0x15
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
	mov	ar2,@r0
00113$:
	clr	c
	clr	a
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00108$
;	../contiki-sensinode/core/net/mac/frame802154.c:230: tx_frame_buffer[pos++] = p->src_addr[c - 1];
	mov	ar5,r2
	inc	r2
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	a,sp
	add	a,#0xf7
	mov	r1,a
	mov	a,r5
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
	mov	ar5,r6
	mov	a,r5
	dec	a
	xch	a,r0
	mov	a,sp
	add	a,#0xfa
	xch	a,r0
	add	a,@r0
	mov	r3,a
	inc	r0
	clr	a
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar5,@r0
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r3,a
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r3
	lcall	__gptrput
;	../contiki-sensinode/core/net/mac/frame802154.c:229: for(c = flen.src_addr_len; c > 0; c--) {
	dec	r6
	cjne	r6,#0xFF,00148$
	dec	r7
00148$:
	sjmp	00113$
00108$:
;	../contiki-sensinode/core/net/mac/frame802154.c:239: return pos;
	mov	dpl,r2
00115$:
	mov	a,sp
	add	a,#0xF2
	mov	sp,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'frame802154_parse'
;------------------------------------------------------------
;len                       Allocated to stack - sp -15
;pf                        Allocated to stack - sp -18
;data                      Allocated to stack - sp -12
;p                         Allocated to stack - sp -3
;c                         Allocated to stack - sp +0
;sloc0                     Allocated to stack - sp -9
;sloc1                     Allocated to stack - sp -6
;------------------------------------------------------------
;	../contiki-sensinode/core/net/mac/frame802154.c:252: frame802154_parse(uint8_t *data, uint8_t len, frame802154_t *pf)
;	-----------------------------------------
;	 function frame802154_parse
;	-----------------------------------------
_frame802154_parse:
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x0A
;	../contiki-sensinode/core/net/mac/frame802154.c:257: if(len < 3) {
	mov	sp,a
	add	a,#0xf1
	mov	r0,a
	cjne	@r0,#0x03,00173$
00173$:
	jnc	00102$
;	../contiki-sensinode/core/net/mac/frame802154.c:258: return 0;
	mov	dpl,#0x00
	ljmp	00128$
00102$:
;	../contiki-sensinode/core/net/mac/frame802154.c:263: memset(&fcf, 0, sizeof(fcf));
	mov	a,#0x08
	push	acc
	clr	a
	push	acc
	push	acc
	mov	dptr,#_fcf
	mov	b,#0x00
	lcall	_memset
	dec	sp
	dec	sp
	dec	sp
;	../contiki-sensinode/core/net/mac/frame802154.c:265: fcf.frame_type = p[0] & 7;
	mov	a,sp
	add	a,#0xf4
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r4,a
	anl	ar4,#0x07
	mov	dptr,#_fcf
	mov	a,r4
	movx	@dptr,a
;	../contiki-sensinode/core/net/mac/frame802154.c:266: fcf.security_enabled = (p[0] >> 3) & 1;
	mov	a,sp
	add	a,#0xf4
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	c,acc[3]
	clr	a
	rlc	a
	mov	dptr,#(_fcf + 0x0001)
	movx	@dptr,a
;	../contiki-sensinode/core/net/mac/frame802154.c:267: fcf.frame_pending = (p[0] >> 4) & 1;
	mov	a,sp
	add	a,#0xf4
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	swap	a
	anl	a,#0x01
	mov	dptr,#(_fcf + 0x0002)
	movx	@dptr,a
;	../contiki-sensinode/core/net/mac/frame802154.c:268: fcf.ack_required = (p[0] >> 5) & 1;
	mov	a,sp
	add	a,#0xf4
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	c,acc[5]
	clr	a
	rlc	a
	mov	dptr,#(_fcf + 0x0003)
	movx	@dptr,a
;	../contiki-sensinode/core/net/mac/frame802154.c:269: fcf.panid_compression = (p[0] >> 6) & 1;
	mov	a,sp
	add	a,#0xf4
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	rl	a
	rl	a
	anl	a,#0x01
	mov	dptr,#(_fcf + 0x0004)
	movx	@dptr,a
;	../contiki-sensinode/core/net/mac/frame802154.c:271: fcf.dest_addr_mode = (p[1] >> 2) & 3;
	mov	a,sp
	add	a,#0xf4
	mov	r0,a
	mov	a,#0x01
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
	rr	a
	rr	a
	anl	a,#0x3F
	mov	r7,a
	anl	ar7,#0x03
	mov	dptr,#(_fcf + 0x0005)
	mov	a,r7
	movx	@dptr,a
;	../contiki-sensinode/core/net/mac/frame802154.c:272: fcf.frame_version = (p[1] >> 4) & 3;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	swap	a
	anl	a,#0x0F
	mov	r7,a
	anl	ar7,#0x03
	mov	dptr,#(_fcf + 0x0006)
	mov	a,r7
	movx	@dptr,a
;	../contiki-sensinode/core/net/mac/frame802154.c:273: fcf.src_addr_mode = (p[1] >> 6) & 3;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	rl	a
	rl	a
	anl	a,#0x03
	mov	r2,a
	anl	ar2,#0x03
	mov	dptr,#(_fcf + 0x0007)
	mov	a,r2
	movx	@dptr,a
;	../contiki-sensinode/core/net/mac/frame802154.c:276: memcpy(&pf->fcf, &fcf, sizeof(frame802154_fcf_t));
	mov	a,sp
	add	a,#0xee
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	ar2,r5
	mov	ar3,r6
	mov	ar4,r7
	push	ar7
	push	ar6
	push	ar5
	mov	a,#0x08
	push	acc
	clr	a
	push	acc
	mov	a,#_fcf
	push	acc
	mov	a,#(_fcf >> 8)
	push	acc
	clr	a
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_memcpy
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar5
	pop	ar6
	pop	ar7
;	../contiki-sensinode/core/net/mac/frame802154.c:277: pf->seq = p[2];
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	a,#0x08
	add	a,r5
	mov	@r0,a
	clr	a
	addc	a,r6
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar7
	mov	a,sp
	add	a,#0xf4
	mov	r0,a
	mov	a,#0x02
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
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
;	../contiki-sensinode/core/net/mac/frame802154.c:278: p += 3;                             /* Skip first three bytes */
	mov	a,sp
	add	a,#0xf4
	mov	r0,a
	mov	a,sp
	add	a,#0xfd
	mov	r1,a
	mov	a,#0x03
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
;	../contiki-sensinode/core/net/mac/frame802154.c:281: if(fcf.dest_addr_mode) {
	mov	dptr,#(_fcf + 0x0005)
	movx	a,@dptr
	jnz	00175$
	ljmp	00110$
00175$:
;	../contiki-sensinode/core/net/mac/frame802154.c:283: pf->dest_pid = p[0] + (p[1] << 8);
	mov	a,#0x09
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	push	ar5
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r7,a
	mov	a,sp
	add	a,#0xf4
	mov	r0,a
	mov	@r0,ar7
	inc	r0
	mov	@r0,#0x00
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,#0x01
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
	mov	r7,a
	mov	r5,#0x00
	mov	a,sp
	add	a,#0xf4
	mov	r0,a
	mov	a,r5
	add	a,@r0
	mov	r5,a
	mov	a,r7
	inc	r0
	addc	a,@r0
	mov	r7,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	../contiki-sensinode/core/net/mac/frame802154.c:284: p += 2;
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,#0x02
	add	a,@r0
	mov	@r0,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	@r0,a
;	../contiki-sensinode/core/net/mac/frame802154.c:292: if(fcf.dest_addr_mode == FRAME802154_SHORTADDRMODE) {
	mov	dptr,#(_fcf + 0x0005)
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x02,00176$
	sjmp	00177$
00176$:
	pop	ar7
	pop	ar6
	pop	ar5
	ljmp	00107$
00177$:
	pop	ar7
	pop	ar6
	pop	ar5
;	../contiki-sensinode/core/net/mac/frame802154.c:293: rimeaddr_copy((rimeaddr_t *)&(pf->dest_addr), &rimeaddr_null);
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,#0x0B
	add	a,r5
	mov	@r0,a
	clr	a
	addc	a,r6
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar7
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	push	ar7
	push	ar6
	push	ar5
	mov	a,#_rimeaddr_null
	push	acc
	mov	a,#(_rimeaddr_null >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_rimeaddr_copy
	dec	sp
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
;	../contiki-sensinode/core/net/mac/frame802154.c:294: pf->dest_addr[0] = p[1];
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	a,#0x01
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
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
;	../contiki-sensinode/core/net/mac/frame802154.c:295: pf->dest_addr[1] = p[0];
	mov	a,#0x0C
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	push	ar5
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrput
;	../contiki-sensinode/core/net/mac/frame802154.c:296: p += 2;
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,#0x02
	add	a,@r0
	mov	@r0,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	@r0,a
	pop	ar7
	pop	ar6
	pop	ar5
	ljmp	00111$
00107$:
;	../contiki-sensinode/core/net/mac/frame802154.c:297: } else if(fcf.dest_addr_mode == FRAME802154_LONGADDRMODE) {
	cjne	r4,#0x03,00178$
	sjmp	00179$
00178$:
	ljmp	00111$
00179$:
;	../contiki-sensinode/core/net/mac/frame802154.c:298: for(c = 0; c < 8; c++) {
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,#0x0B
	add	a,r5
	mov	@r0,a
	clr	a
	addc	a,r6
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar7
	mov	r0,sp
	mov	@r0,#0x00
00124$:
;	../contiki-sensinode/core/net/mac/frame802154.c:299: pf->dest_addr[c] = p[7 - c];
	push	ar5
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	a,sp
	add	a,#0xfd
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar7,@r0
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	ar5,@r0
	mov	r6,#0x00
	mov	a,#0x07
	clr	c
	subb	a,r5
	mov	r5,a
	clr	a
	subb	a,r6
	mov	r6,a
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,r5
	add	a,@r0
	mov	r5,a
	mov	a,r6
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar6,@r0
	mov	dpl,r5
	mov	dph,r4
	mov	b,r6
	lcall	__gptrget
	mov	r5,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	__gptrput
;	../contiki-sensinode/core/net/mac/frame802154.c:298: for(c = 0; c < 8; c++) {
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	inc	@r0
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	cjne	@r0,#0x08,00180$
00180$:
	pop	ar7
	pop	ar6
	pop	ar5
	jc	00124$
;	../contiki-sensinode/core/net/mac/frame802154.c:301: p += 8;
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	a,#0x08
	add	a,@r0
	mov	@r0,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	@r0,a
	sjmp	00111$
00110$:
;	../contiki-sensinode/core/net/mac/frame802154.c:304: rimeaddr_copy((rimeaddr_t *)&(pf->dest_addr), &rimeaddr_null);
	mov	a,#0x0B
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	push	ar7
	push	ar6
	push	ar5
	mov	a,#_rimeaddr_null
	push	acc
	mov	a,#(_rimeaddr_null >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_rimeaddr_copy
	dec	sp
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
;	../contiki-sensinode/core/net/mac/frame802154.c:305: pf->dest_pid = 0;
	mov	a,#0x09
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
00111$:
;	../contiki-sensinode/core/net/mac/frame802154.c:309: if(fcf.src_addr_mode) {
	mov	dptr,#(_fcf + 0x0007)
	movx	a,@dptr
	jnz	00182$
	ljmp	00122$
00182$:
;	../contiki-sensinode/core/net/mac/frame802154.c:311: if(!fcf.panid_compression) {
	mov	dptr,#(_fcf + 0x0004)
	movx	a,@dptr
	jz	00183$
	ljmp	00113$
00183$:
;	../contiki-sensinode/core/net/mac/frame802154.c:312: pf->src_pid = p[0] + (p[1] << 8);
	mov	a,#0x13
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	push	ar5
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r7,a
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	@r0,ar7
	inc	r0
	mov	@r0,#0x00
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,#0x01
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
	mov	r7,a
	mov	r5,#0x00
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	a,r5
	add	a,@r0
	mov	r5,a
	mov	a,r7
	inc	r0
	addc	a,@r0
	mov	r7,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	../contiki-sensinode/core/net/mac/frame802154.c:313: p += 2;
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,#0x02
	add	a,@r0
	mov	@r0,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	@r0,a
	pop	ar7
	pop	ar6
	pop	ar5
	sjmp	00114$
00113$:
;	../contiki-sensinode/core/net/mac/frame802154.c:315: pf->src_pid = pf->dest_pid;
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,#0x13
	add	a,r5
	mov	@r0,a
	clr	a
	addc	a,r6
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar7
	mov	a,#0x09
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
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
00114$:
;	../contiki-sensinode/core/net/mac/frame802154.c:324: if(fcf.src_addr_mode == FRAME802154_SHORTADDRMODE) {
	mov	dptr,#(_fcf + 0x0007)
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x02,00184$
	sjmp	00185$
00184$:
	ljmp	00119$
00185$:
;	../contiki-sensinode/core/net/mac/frame802154.c:325: rimeaddr_copy((rimeaddr_t *)&(pf->src_addr), &rimeaddr_null);
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,#0x15
	add	a,r5
	mov	@r0,a
	clr	a
	addc	a,r6
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar7
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	push	ar7
	push	ar6
	push	ar5
	mov	a,#_rimeaddr_null
	push	acc
	mov	a,#(_rimeaddr_null >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_rimeaddr_copy
	dec	sp
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
;	../contiki-sensinode/core/net/mac/frame802154.c:326: pf->src_addr[0] = p[1];
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	a,#0x01
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
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
;	../contiki-sensinode/core/net/mac/frame802154.c:327: pf->src_addr[1] = p[0];
	mov	a,#0x16
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	push	ar5
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrput
;	../contiki-sensinode/core/net/mac/frame802154.c:328: p += 2;
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,#0x02
	add	a,@r0
	mov	@r0,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	@r0,a
	pop	ar7
	pop	ar6
	pop	ar5
	ljmp	00123$
00119$:
;	../contiki-sensinode/core/net/mac/frame802154.c:329: } else if(fcf.src_addr_mode == FRAME802154_LONGADDRMODE) {
	mov	dptr,#(_fcf + 0x0007)
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x03,00186$
	sjmp	00187$
00186$:
	ljmp	00123$
00187$:
;	../contiki-sensinode/core/net/mac/frame802154.c:330: for(c = 0; c < 8; c++) {
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,#0x15
	add	a,r5
	mov	@r0,a
	clr	a
	addc	a,r6
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar7
	mov	r0,sp
	mov	@r0,#0x00
00126$:
;	../contiki-sensinode/core/net/mac/frame802154.c:331: pf->src_addr[c] = p[7 - c];
	push	ar5
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	a,sp
	add	a,#0xfd
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar7,@r0
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	ar5,@r0
	mov	r6,#0x00
	mov	a,#0x07
	clr	c
	subb	a,r5
	mov	r5,a
	clr	a
	subb	a,r6
	mov	r6,a
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,r5
	add	a,@r0
	mov	r5,a
	mov	a,r6
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar6,@r0
	mov	dpl,r5
	mov	dph,r4
	mov	b,r6
	lcall	__gptrget
	mov	r5,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	__gptrput
;	../contiki-sensinode/core/net/mac/frame802154.c:330: for(c = 0; c < 8; c++) {
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	inc	@r0
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	cjne	@r0,#0x08,00188$
00188$:
	pop	ar7
	pop	ar6
	pop	ar5
	jc	00126$
;	../contiki-sensinode/core/net/mac/frame802154.c:333: p += 8;
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	a,#0x08
	add	a,@r0
	mov	@r0,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	@r0,a
	sjmp	00123$
00122$:
;	../contiki-sensinode/core/net/mac/frame802154.c:336: rimeaddr_copy((rimeaddr_t *)&(pf->src_addr), &rimeaddr_null);
	mov	a,#0x15
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	push	ar7
	push	ar6
	push	ar5
	mov	a,#_rimeaddr_null
	push	acc
	mov	a,#(_rimeaddr_null >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_rimeaddr_copy
	dec	sp
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
;	../contiki-sensinode/core/net/mac/frame802154.c:337: pf->src_pid = 0;
	mov	a,#0x13
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
00123$:
;	../contiki-sensinode/core/net/mac/frame802154.c:346: c = p - data;
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	a,sp
	add	a,#0xf4
	mov	r1,a
	mov	a,@r0
	clr	c
	subb	a,@r1
	mov	r3,a
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
;	../contiki-sensinode/core/net/mac/frame802154.c:348: pf->payload_len = len - c;
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,#0x30
	add	a,r5
	mov	@r0,a
	clr	a
	addc	a,r6
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar7
	mov	a,sp
	add	a,#0xf1
	mov	r0,a
	mov	a,@r0
	clr	c
	subb	a,r3
	mov	r4,a
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r4
	lcall	__gptrput
;	../contiki-sensinode/core/net/mac/frame802154.c:350: pf->payload = p;
	mov	a,#0x2D
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
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
;	../contiki-sensinode/core/net/mac/frame802154.c:353: return c > len ? 0 : c;
	mov	a,sp
	add	a,#0xf1
	mov	r0,a
	clr	c
	mov	a,@r0
	subb	a,r3
	jnc	00130$
	mov	r7,#0x00
	sjmp	00131$
00130$:
	mov	ar7,r3
00131$:
	mov	dpl,r7
00128$:
	mov	a,sp
	add	a,#0xF3
	mov	sp,a
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
