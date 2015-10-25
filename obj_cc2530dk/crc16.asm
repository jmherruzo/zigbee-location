;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.4.0 #8981 (Oct 24 2015) (Linux)
; This file was generated Sun Oct 25 01:52:10 2015
;--------------------------------------------------------
	.module crc16
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _crc16_data
	.globl _crc16_add
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
;Allocation info for local variables in function 'crc16_add'
;------------------------------------------------------------
;acc                       Allocated to stack - sp -3
;b                         Allocated to registers r7 
;------------------------------------------------------------
;	../contiki-sensinode/core/lib/crc16.c:47: crc16_add(unsigned char b, unsigned short acc)
;	-----------------------------------------
;	 function crc16_add
;	-----------------------------------------
_crc16_add:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,dpl
;	../contiki-sensinode/core/lib/crc16.c:57: acc ^= b;
	mov	r6,#0x00
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	a,r7
	xrl	a,@r0
	mov	@r0,a
	mov	a,r6
	inc	r0
	xrl	a,@r0
	mov	@r0,a
;	../contiki-sensinode/core/lib/crc16.c:58: acc  = (acc >> 8) | (acc << 8);
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	inc	r0
	dec	r0
	mov	a,@r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
;	../contiki-sensinode/core/lib/crc16.c:59: acc ^= (acc & 0xff00) << 4;
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	r6,#0x00
	inc	r0
	mov	a,@r0
	swap	a
	anl	a,#0xF0
	xch	a,r6
	swap	a
	xch	a,r6
	xrl	a,r6
	xch	a,r6
	anl	a,#0xF0
	xch	a,r6
	xrl	a,r6
	mov	r7,a
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	a,r6
	xrl	a,@r0
	mov	@r0,a
	mov	a,r7
	inc	r0
	xrl	a,@r0
	mov	@r0,a
;	../contiki-sensinode/core/lib/crc16.c:60: acc ^= (acc >> 8) >> 4;
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	inc	r0
	mov	ar6,@r0
	clr	a
	swap	a
	xch	a,r6
	swap	a
	anl	a,#0x0F
	xrl	a,r6
	xch	a,r6
	anl	a,#0x0F
	xch	a,r6
	xrl	a,r6
	xch	a,r6
	mov	r7,a
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	a,r6
	xrl	a,@r0
	mov	@r0,a
	mov	a,r7
	inc	r0
	xrl	a,@r0
	mov	@r0,a
;	../contiki-sensinode/core/lib/crc16.c:61: acc ^= (acc & 0xff00) >> 5;
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	r6,#0x00
	inc	r0
	mov	a,@r0
	swap	a
	rr	a
	xch	a,r6
	swap	a
	rr	a
	anl	a,#0x07
	xrl	a,r6
	xch	a,r6
	anl	a,#0x07
	xch	a,r6
	xrl	a,r6
	xch	a,r6
	mov	r7,a
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	a,r6
	xrl	a,@r0
	mov	@r0,a
	mov	a,r7
	inc	r0
	xrl	a,@r0
	mov	@r0,a
;	../contiki-sensinode/core/lib/crc16.c:62: return acc;
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'crc16_data'
;------------------------------------------------------------
;len                       Allocated to stack - sp -5
;acc                       Allocated to stack - sp -7
;data                      Allocated to registers 
;i                         Allocated to stack - sp -1
;------------------------------------------------------------
;	../contiki-sensinode/core/lib/crc16.c:66: crc16_data(const unsigned char *data, int len, unsigned short acc)
;	-----------------------------------------
;	 function crc16_data
;	-----------------------------------------
_crc16_data:
	inc	sp
	inc	sp
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../contiki-sensinode/core/lib/crc16.c:70: for(i = 0; i < len; ++i) {
	mov	r0,sp
	dec	r0
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
00103$:
	mov	r0,sp
	dec	r0
	mov	a,sp
	add	a,#0xfb
	mov	r1,a
	clr	c
	mov	a,@r0
	subb	a,@r1
	inc	r0
	mov	a,@r0
	xrl	a,#0x80
	inc	r1
	mov	b,@r1
	xrl	b,#0x80
	subb	a,b
	jnc	00101$
;	../contiki-sensinode/core/lib/crc16.c:71: acc = crc16_add(*data, acc);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
	push	ar7
	push	ar6
	push	ar5
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	lcall	_crc16_add
	mov	r2,dpl
	mov	r4,dph
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar4
;	../contiki-sensinode/core/lib/crc16.c:72: ++data;
;	../contiki-sensinode/core/lib/crc16.c:70: for(i = 0; i < len; ++i) {
	mov	r0,sp
	dec	r0
	inc	@r0
	cjne	@r0,#0x00,00115$
	inc	r0
	inc	@r0
00115$:
	sjmp	00103$
00101$:
;	../contiki-sensinode/core/lib/crc16.c:74: return acc;
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	dec	sp
	dec	sp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
