;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.4.0 #8981 (Oct 24 2015) (Linux)
; This file was generated Sun Oct 25 01:52:10 2015
;--------------------------------------------------------
	.module ifft
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ifft
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
;Allocation info for local variables in function 'bitrev'
;------------------------------------------------------------
;nu                        Allocated to stack - sp -5
;j                         Allocated to stack - sp -1
;k                         Allocated to registers r7 r6 
;------------------------------------------------------------
;	../contiki-sensinode/core/lib/ifft.c:62: static uint16_t bitrev(uint16_t j, uint16_t nu)
;	-----------------------------------------
;	 function bitrev
;	-----------------------------------------
_bitrev:
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
;	../contiki-sensinode/core/lib/ifft.c:65: k = 0;
	clr	a
	mov	r7,a
	mov	r6,a
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
00103$:
;	../contiki-sensinode/core/lib/ifft.c:66: for (; nu > 0; nu--) {
	mov	a,r2
	orl	a,r3
	jz	00101$
;	../contiki-sensinode/core/lib/ifft.c:67: k  = (k << 1) + (j & 1);
	mov	ar4,r7
	mov	a,r6
	xch	a,r4
	add	a,acc
	xch	a,r4
	rlc	a
	mov	r5,a
	mov	r0,sp
	dec	r0
	mov	a,#0x01
	anl	a,@r0
	mov	r7,#0x00
	add	a,r4
	mov	r4,a
	mov	a,r7
	addc	a,r5
	mov	r5,a
	mov	ar7,r4
	mov	ar6,r5
;	../contiki-sensinode/core/lib/ifft.c:68: j = j >> 1;
	mov	r0,sp
	mov	a,@r0
	dec	r0
	clr	c
	rrc	a
	xch	a,@r0
	rrc	a
	xch	a,@r0
	inc	r0
	mov	@r0,a
;	../contiki-sensinode/core/lib/ifft.c:66: for (; nu > 0; nu--) {
	dec	r2
	cjne	r2,#0xFF,00117$
	dec	r3
00117$:
	sjmp	00103$
00101$:
;	../contiki-sensinode/core/lib/ifft.c:70: return k;
	mov	dpl,r7
	mov	dph,r6
	dec	sp
	dec	sp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sinI'
;------------------------------------------------------------
;angleMilli                Allocated to registers r6 r7 
;pos                       Allocated to registers r4 r5 
;------------------------------------------------------------
;	../contiki-sensinode/core/lib/ifft.c:75: static int16_t sinI(uint16_t angleMilli)
;	-----------------------------------------
;	 function sinI
;	-----------------------------------------
_sinI:
	mov	r6,dpl
	mov	r7,dph
;	../contiki-sensinode/core/lib/ifft.c:78: pos = (uint16_t) ((SIN_TAB_LEN * (uint32_t) angleMilli) / 1000);
	mov	r5,#0x00
	mov	r4,#0x00
	push	ar6
	push	ar7
	push	ar5
	push	ar4
	mov	dptr,#(0x78&0x00ff)
	clr	a
	mov	b,a
	lcall	__mullong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,#0xE8
	push	acc
	mov	a,#0x03
	push	acc
	clr	a
	push	acc
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	__divulong
	mov	r4,dpl
	mov	r5,dph
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	../contiki-sensinode/core/lib/ifft.c:79: return SIN_TAB[pos % SIN_TAB_LEN];
	mov	a,#0x78
	push	acc
	clr	a
	push	acc
	mov	dpl,r4
	mov	dph,r5
	lcall	__moduint
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	mov	a,r6
	add	a,#_SIN_TAB
	mov	dpl,a
	mov	a,r7
	addc	a,#(_SIN_TAB >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	rlc	a
	subb	a,acc
	mov	dpl,r7
	mov	dph,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'cosI'
;------------------------------------------------------------
;angleMilli                Allocated to registers r6 r7 
;------------------------------------------------------------
;	../contiki-sensinode/core/lib/ifft.c:82: static int16_t cosI(uint16_t angleMilli)
;	-----------------------------------------
;	 function cosI
;	-----------------------------------------
_cosI:
	mov	r6,dpl
	mov	r7,dph
;	../contiki-sensinode/core/lib/ifft.c:84: return sinI(angleMilli + 250);
	mov	a,#0xFA
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	ljmp	_sinI
;------------------------------------------------------------
;Allocation info for local variables in function 'ilog2'
;------------------------------------------------------------
;val                       Allocated to registers r6 r7 
;log                       Allocated to registers r4 r5 
;------------------------------------------------------------
;	../contiki-sensinode/core/lib/ifft.c:87: static uint16_t ilog2(uint16_t val)
;	-----------------------------------------
;	 function ilog2
;	-----------------------------------------
_ilog2:
	mov	r6,dpl
;	../contiki-sensinode/core/lib/ifft.c:91: val = val >> 1; /* The 20 = 1 => log = 0 => val = 0 */
	mov	a,dph
	clr	c
	rrc	a
	xch	a,r6
	rrc	a
	xch	a,r6
	mov	r7,a
;	../contiki-sensinode/core/lib/ifft.c:92: while (val > 0) {
	mov	r4,#0x00
	mov	r5,#0x00
00101$:
	mov	a,r6
	orl	a,r7
	jz	00103$
;	../contiki-sensinode/core/lib/ifft.c:93: val = val >> 1;
	mov	a,r7
	clr	c
	rrc	a
	xch	a,r6
	rrc	a
	xch	a,r6
	mov	r7,a
;	../contiki-sensinode/core/lib/ifft.c:94: log++;
	inc	r4
	cjne	r4,#0x00,00101$
	inc	r5
	sjmp	00101$
00103$:
;	../contiki-sensinode/core/lib/ifft.c:96: return log;
	mov	dpl,r4
	mov	dph,r5
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ifft'
;------------------------------------------------------------
;xim                       Allocated to stack - sp -55
;n                         Allocated to stack - sp -57
;xre                       Allocated to stack - sp -50
;nu                        Allocated to stack - sp -17
;n2                        Allocated to stack - sp -15
;nu1                       Allocated to registers r7 r5 
;p                         Allocated to stack - sp -13
;k                         Allocated to registers r3 r7 
;l                         Allocated to stack - sp -11
;i                         Allocated to stack - sp -9
;c                         Allocated to registers r7 r4 r3 r2 
;s                         Allocated to stack - sp -7
;tr                        Allocated to stack - sp -3
;ti                        Allocated to registers r7 r4 r3 r2 
;sloc0                     Allocated to stack - sp -47
;sloc1                     Allocated to stack - sp -45
;sloc2                     Allocated to stack - sp -43
;sloc3                     Allocated to stack - sp -41
;sloc4                     Allocated to stack - sp -39
;sloc5                     Allocated to stack - sp -36
;sloc6                     Allocated to stack - sp -32
;sloc7                     Allocated to stack - sp -28
;sloc8                     Allocated to stack - sp -25
;sloc9                     Allocated to stack - sp -21
;------------------------------------------------------------
;	../contiki-sensinode/core/lib/ifft.c:114: ifft(int16_t xre[], int16_t xim[], uint16_t n)
;	-----------------------------------------
;	 function ifft
;	-----------------------------------------
_ifft:
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x30
;	../contiki-sensinode/core/lib/ifft.c:122: nu = ilog2(n);
	mov	sp,a
	add	a,#0xc7
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	_ilog2
	mov	r3,dpl
	mov	r4,dph
	mov	a,sp
	add	a,#0xef
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
;	../contiki-sensinode/core/lib/ifft.c:123: nu1 = nu - 1;
	mov	a,sp
	add	a,#0xef
	mov	r0,a
	mov	a,@r0
	add	a,#0xFF
	mov	r7,a
	inc	r0
	mov	a,@r0
	addc	a,#0xFF
	mov	r5,a
;	../contiki-sensinode/core/lib/ifft.c:124: n2 = n / 2;
	mov	a,sp
	add	a,#0xc7
	mov	r0,a
	mov	a,sp
	add	a,#0xd3
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	mov	a,@r0
	clr	c
	rrc	a
	xch	a,@r1
	rrc	a
	xch	a,@r1
	inc	r1
	mov	@r1,a
	mov	a,sp
	add	a,#0xd3
	mov	r0,a
	mov	a,sp
	add	a,#0xf1
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
;	../contiki-sensinode/core/lib/ifft.c:126: for (i = 0; i < n; i++)
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
00110$:
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar4,@r0
	mov	a,sp
	add	a,#0xc7
	mov	r0,a
	clr	c
	mov	a,r2
	subb	a,@r0
	mov	a,r4
	inc	r0
	subb	a,@r0
	jnc	00101$
;	../contiki-sensinode/core/lib/ifft.c:127: xim[i] = 0;
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	a,@r0
	xch	a,r2
	add	a,acc
	xch	a,r2
	rlc	a
	mov	r4,a
	mov	a,sp
	add	a,#0xc9
	mov	r0,a
	mov	a,r2
	add	a,@r0
	mov	r2,a
	mov	a,r4
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar6,@r0
	mov	dpl,r2
	mov	dph,r4
	mov	b,r6
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	../contiki-sensinode/core/lib/ifft.c:126: for (i = 0; i < n; i++)
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00184$
	inc	r0
	inc	@r0
00184$:
	sjmp	00110$
00101$:
;	../contiki-sensinode/core/lib/ifft.c:129: for (l = 1; l <= nu; l++) {
	mov	a,sp
	add	a,#0xd5
	mov	r0,a
	mov	@r0,ar7
	inc	r0
	mov	@r0,ar5
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	@r0,#0x01
	inc	r0
	mov	@r0,#0x00
00119$:
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar4,@r0
	mov	a,sp
	add	a,#0xef
	mov	r0,a
	clr	c
	mov	a,@r0
	subb	a,r2
	inc	r0
	mov	a,@r0
	subb	a,r4
	jnc	00185$
	ljmp	00104$
00185$:
;	../contiki-sensinode/core/lib/ifft.c:130: for (k = 0; k < n; k += n2) {
	mov	r3,#0x00
	mov	r7,#0x00
00116$:
	mov	ar2,r3
	mov	ar4,r7
	mov	a,sp
	add	a,#0xc7
	mov	r0,a
	clr	c
	mov	a,r2
	subb	a,@r0
	mov	a,r4
	inc	r0
	subb	a,@r0
	jc	00186$
	ljmp	00103$
00186$:
;	../contiki-sensinode/core/lib/ifft.c:131: for (i = 1; i <= n2; i++) {
	mov	a,sp
	add	a,#0xd1
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar7
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	@r0,#0x01
	inc	r0
	mov	@r0,#0x00
00113$:
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	mov	a,sp
	add	a,#0xf1
	mov	r0,a
	clr	c
	mov	a,@r0
	subb	a,r5
	inc	r0
	mov	a,@r0
	subb	a,r6
	jnc	00187$
	ljmp	00117$
00187$:
;	../contiki-sensinode/core/lib/ifft.c:132: p = bitrev(k >> nu1, nu);
	mov	a,sp
	add	a,#0xd5
	mov	r0,a
	mov	b,@r0
	inc	b
	mov	a,sp
	add	a,#0xd1
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar4,@r0
	mov	a,@r0
	rlc	a
	mov	ov,c
	sjmp	00189$
00188$:
	mov	c,ov
	mov	a,r4
	rrc	a
	mov	r4,a
	mov	a,r2
	rrc	a
	mov	r2,a
00189$:
	djnz	b,00188$
	mov	a,sp
	add	a,#0xef
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r4
	lcall	_bitrev
	mov	r2,dpl
	mov	r4,dph
	dec	sp
	dec	sp
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar4
;	../contiki-sensinode/core/lib/ifft.c:133: c = cosI((1000 * p) / n);
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dptr,#0x03E8
	lcall	__mulint
	mov	r5,dpl
	mov	r6,dph
	dec	sp
	dec	sp
	mov	a,sp
	add	a,#0xc7
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r5
	mov	dph,r6
	lcall	__divuint
	xch	a,r0
	mov	a,sp
	add	a,#0xd5
	xch	a,r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	dec	sp
	dec	sp
	mov	a,sp
	add	a,#0xd7
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	_cosI
	mov	r5,dpl
	mov	r6,dph
	mov	ar7,r5
	mov	a,r6
	mov	r4,a
	rlc	a
	subb	a,acc
	mov	r3,a
	mov	r2,a
;	../contiki-sensinode/core/lib/ifft.c:134: s = sinI((1000 * p) / n);
	mov	a,sp
	add	a,#0xd7
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	push	ar7
	push	ar4
	push	ar3
	push	ar2
	lcall	_sinI
	mov	r5,dpl
	mov	r6,dph
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar7
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	mov	a,r6
	rlc	a
	subb	a,acc
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
;	../contiki-sensinode/core/lib/ifft.c:136: tr = ((xre[k + n2] * c + xim[k + n2] * s) >> RESOLUTION);
	mov	a,sp
	add	a,#0xd1
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	mov	a,sp
	add	a,#0xf1
	mov	r0,a
	mov	a,@r0
	add	a,r5
	mov	r5,a
	inc	r0
	mov	a,@r0
	addc	a,r6
	mov	r6,a
	mov	a,sp
	add	a,#0xd7
	mov	r0,a
	mov	@r0,ar5
	mov	a,r6
	xch	a,@r0
	add	a,acc
	xch	a,@r0
	rlc	a
	inc	r0
	mov	@r0,a
	mov	a,sp
	add	a,#0xce
	mov	r0,a
	mov	a,sp
	add	a,#0xd7
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	push	acc
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,sp
	add	a,#0xd8
	mov	r0,a
	pop	acc
	mov	@r0,a
	dec	r0
	pop	acc
	mov	@r0,a
	dec	r0
	pop	acc
	mov	@r0,a
	mov	a,sp
	add	a,#0xd9
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
	mov	a,sp
	add	a,#0xdc
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	mov	a,r6
	rlc	a
	subb	a,acc
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	push	ar7
	push	ar4
	push	ar3
	push	ar2
	push	ar7
	push	ar4
	push	ar3
	push	ar2
	mov	a,sp
	add	a,#0xd4
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	__mullong
	xch	a,r0
	mov	a,sp
	add	a,#0xd8
	xch	a,r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	inc	r0
	mov	@r0,b
	inc	r0
	mov	@r0,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar7
	mov	a,sp
	add	a,#0xc9
	mov	r0,a
	mov	a,sp
	add	a,#0xd7
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	push	acc
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,sp
	add	a,#0xe3
	mov	r0,a
	pop	acc
	mov	@r0,a
	dec	r0
	pop	acc
	mov	@r0,a
	dec	r0
	pop	acc
	mov	@r0,a
	mov	a,sp
	add	a,#0xe4
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
	mov	a,sp
	add	a,#0xe7
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	mov	a,r6
	rlc	a
	subb	a,acc
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	push	ar7
	push	ar4
	push	ar3
	push	ar2
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,sp
	add	a,#0xdf
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	__mullong
	xch	a,r0
	mov	a,sp
	add	a,#0xe3
	xch	a,r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	inc	r0
	mov	@r0,b
	inc	r0
	mov	@r0,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar7
	mov	a,sp
	add	a,#0xe0
	mov	r0,a
	mov	a,sp
	add	a,#0xeb
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	mov	@r1,a
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	mov	@r1,a
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	mov	@r1,a
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	mov	@r1,a
	mov	a,sp
	add	a,#0xeb
	mov	r0,a
	mov	a,sp
	add	a,#0xfd
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	mov	a,@r0
	mov	c,acc.7
	xch	a,@r1
	rlc	a
	xch	a,@r1
	rlc	a
	xch	a,@r1
	anl	a,#0x01
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	add	a,acc
	orl	a,@r1
	mov	@r1,a
	mov	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	mov	c,acc.7
	xch	a,@r1
	rlc	a
	xch	a,@r1
	rlc	a
	xch	a,@r1
	anl	a,#0x01
	jnb	acc.0,00190$
	orl	a,#0xFE
00190$:
	inc	r1
	mov	@r1,a
;	../contiki-sensinode/core/lib/ifft.c:137: ti = ((xim[k + n2] * c - xre[k + n2] * s) >> RESOLUTION);
	push	ar7
	push	ar4
	push	ar3
	push	ar2
	mov	a,sp
	add	a,#0xe3
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	__mullong
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	r4,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,sp
	add	a,#0xd4
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	__mullong
	xch	a,r0
	mov	a,sp
	add	a,#0xdf
	xch	a,r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	inc	r0
	mov	@r0,b
	inc	r0
	mov	@r0,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,sp
	add	a,#0xe7
	mov	r0,a
	mov	a,sp
	add	a,#0xeb
	mov	r1,a
	mov	a,r7
	clr	c
	subb	a,@r0
	mov	@r1,a
	mov	a,r6
	inc	r0
	subb	a,@r0
	inc	r1
	mov	@r1,a
	mov	a,r5
	inc	r0
	subb	a,@r0
	inc	r1
	mov	@r1,a
	mov	a,r4
	inc	r0
	subb	a,@r0
	inc	r1
	mov	@r1,a
	mov	a,sp
	add	a,#0xeb
	mov	r0,a
	mov	ar7,@r0
	inc	r0
	mov	a,@r0
	mov	c,acc.7
	xch	a,r7
	rlc	a
	xch	a,r7
	rlc	a
	xch	a,r7
	anl	a,#0x01
	mov	r4,a
	inc	r0
	mov	a,@r0
	add	a,acc
	orl	a,r4
	mov	r4,a
	mov	ar3,@r0
	inc	r0
	mov	a,@r0
	mov	c,acc.7
	xch	a,r3
	rlc	a
	xch	a,r3
	rlc	a
	xch	a,r3
	anl	a,#0x01
	jnb	acc.0,00191$
	orl	a,#0xFE
00191$:
	mov	r2,a
;	../contiki-sensinode/core/lib/ifft.c:139: xre[k + n2] = xre[k] - tr;
	mov	a,sp
	add	a,#0xd1
	mov	r0,a
	mov	a,sp
	add	a,#0xeb
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	mov	a,@r0
	xch	a,@r1
	add	a,acc
	xch	a,@r1
	rlc	a
	inc	r1
	mov	@r1,a
	mov	a,sp
	add	a,#0xce
	mov	r0,a
	mov	a,sp
	add	a,#0xeb
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	push	acc
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,sp
	add	a,#0xe6
	mov	r0,a
	pop	acc
	mov	@r0,a
	dec	r0
	pop	acc
	mov	@r0,a
	dec	r0
	pop	acc
	mov	@r0,a
	mov	a,sp
	add	a,#0xe7
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
	mov	a,sp
	add	a,#0xe0
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	mov	a,r6
	rlc	a
	subb	a,acc
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	mov	a,sp
	add	a,#0xe0
	mov	r0,a
	mov	a,sp
	add	a,#0xfd
	mov	r1,a
	mov	a,@r0
	clr	c
	subb	a,@r1
	mov	@r0,a
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	mov	@r0,a
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	mov	@r0,a
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	mov	@r0,a
	mov	a,sp
	add	a,#0xe0
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	mov	a,sp
	add	a,#0xd9
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
;	../contiki-sensinode/core/lib/ifft.c:140: xim[k + n2] = xim[k] - ti;
	mov	a,sp
	add	a,#0xc9
	mov	r0,a
	mov	a,sp
	add	a,#0xeb
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	push	acc
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,sp
	add	a,#0xea
	mov	r0,a
	pop	acc
	mov	@r0,a
	dec	r0
	pop	acc
	mov	@r0,a
	dec	r0
	pop	acc
	mov	@r0,a
	mov	a,sp
	add	a,#0xeb
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
	mov	a,sp
	add	a,#0xe0
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	mov	a,r6
	rlc	a
	subb	a,acc
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	mov	a,sp
	add	a,#0xe0
	mov	r0,a
	mov	a,@r0
	clr	c
	subb	a,r7
	mov	@r0,a
	inc	r0
	mov	a,@r0
	subb	a,r4
	mov	@r0,a
	inc	r0
	mov	a,@r0
	subb	a,r3
	mov	@r0,a
	inc	r0
	mov	a,@r0
	subb	a,r2
	mov	@r0,a
	mov	a,sp
	add	a,#0xe0
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	mov	a,sp
	add	a,#0xe4
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
;	../contiki-sensinode/core/lib/ifft.c:141: xre[k] += tr;
	mov	a,sp
	add	a,#0xe7
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
	mov	a,sp
	add	a,#0xe0
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	mov	a,r6
	rlc	a
	subb	a,acc
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	mov	a,sp
	add	a,#0xe0
	mov	r0,a
	mov	a,sp
	add	a,#0xfd
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	mov	@r0,a
	mov	a,sp
	add	a,#0xe0
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	mov	a,sp
	add	a,#0xe7
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
;	../contiki-sensinode/core/lib/ifft.c:142: xim[k] += ti;
	mov	a,sp
	add	a,#0xeb
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
	mov	a,sp
	add	a,#0xe7
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	mov	a,r6
	rlc	a
	subb	a,acc
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	mov	a,sp
	add	a,#0xe7
	mov	r0,a
	mov	a,r7
	add	a,@r0
	mov	r7,a
	mov	a,r4
	inc	r0
	addc	a,@r0
	mov	r4,a
	mov	a,r3
	inc	r0
	addc	a,@r0
	mov	a,r2
	inc	r0
	addc	a,@r0
	mov	ar5,r7
	mov	ar6,r4
	mov	a,sp
	add	a,#0xeb
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
;	../contiki-sensinode/core/lib/ifft.c:143: k++;
	mov	a,sp
	add	a,#0xd1
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00192$
	inc	r0
	inc	@r0
00192$:
;	../contiki-sensinode/core/lib/ifft.c:131: for (i = 1; i <= n2; i++) {
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00193$
	inc	r0
	inc	@r0
00193$:
	ljmp	00113$
00117$:
;	../contiki-sensinode/core/lib/ifft.c:130: for (k = 0; k < n; k += n2) {
	mov	a,sp
	add	a,#0xd1
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	mov	a,sp
	add	a,#0xf1
	mov	r0,a
	mov	a,@r0
	add	a,r5
	mov	r5,a
	inc	r0
	mov	a,@r0
	addc	a,r6
	mov	r6,a
	mov	ar3,r5
	mov	ar7,r6
	ljmp	00116$
00103$:
;	../contiki-sensinode/core/lib/ifft.c:146: nu1--;
	mov	a,sp
	add	a,#0xd5
	mov	r0,a
	dec	@r0
	cjne	@r0,#0xFF,00194$
	inc	r0
	dec	@r0
00194$:
;	../contiki-sensinode/core/lib/ifft.c:147: n2 = n2 / 2;
	mov	a,sp
	add	a,#0xf1
	mov	r0,a
	inc	r0
	mov	a,@r0
	dec	r0
	clr	c
	rrc	a
	xch	a,@r0
	rrc	a
	xch	a,@r0
	inc	r0
	mov	@r0,a
;	../contiki-sensinode/core/lib/ifft.c:129: for (l = 1; l <= nu; l++) {
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00195$
	inc	r0
	inc	@r0
00195$:
	ljmp	00119$
00104$:
;	../contiki-sensinode/core/lib/ifft.c:150: for (k = 0; k < n; k++) {
	mov	r6,#0x00
	mov	r7,#0x00
00122$:
	mov	ar3,r6
	mov	ar5,r7
	mov	a,sp
	add	a,#0xc7
	mov	r0,a
	clr	c
	mov	a,r3
	subb	a,@r0
	mov	a,r5
	inc	r0
	subb	a,@r0
	jc	00196$
	ljmp	00107$
00196$:
;	../contiki-sensinode/core/lib/ifft.c:151: p = bitrev(k, nu);
	push	ar7
	push	ar6
	mov	a,sp
	add	a,#0xed
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r6
	mov	dph,r7
	lcall	_bitrev
	mov	r3,dpl
	mov	r5,dph
	dec	sp
	dec	sp
	pop	ar6
	pop	ar7
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar5
;	../contiki-sensinode/core/lib/ifft.c:152: if (p > k) {
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	clr	c
	mov	a,r6
	subb	a,@r0
	mov	a,r7
	xrl	a,#0x80
	inc	r0
	mov	b,@r0
	xrl	b,#0x80
	subb	a,b
	jc	00197$
	ljmp	00123$
00197$:
;	../contiki-sensinode/core/lib/ifft.c:153: n2 = xre[k];
	mov	a,sp
	add	a,#0xeb
	mov	r0,a
	mov	@r0,ar6
	mov	a,r7
	xch	a,@r0
	add	a,acc
	xch	a,@r0
	rlc	a
	inc	r0
	mov	@r0,a
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xcc
	mov	r0,a
	mov	a,sp
	add	a,#0xe9
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	mov	r4,a
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r4
	mov	dph,r6
	mov	b,r7
	mov	a,sp
	add	a,#0xef
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
;	../contiki-sensinode/core/lib/ifft.c:154: xre[k] = xre[p];
	mov	a,sp
	add	a,#0xf1
	mov	r0,a
	mov	a,sp
	add	a,#0xe5
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	mov	a,@r0
	xch	a,@r1
	add	a,acc
	xch	a,@r1
	rlc	a
	inc	r1
	mov	@r1,a
	mov	a,sp
	add	a,#0xcc
	mov	r0,a
	mov	a,sp
	add	a,#0xe5
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	push	acc
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,sp
	add	a,#0xe1
	mov	r0,a
	pop	acc
	mov	@r0,a
	dec	r0
	pop	acc
	mov	@r0,a
	dec	r0
	pop	acc
	mov	@r0,a
	mov	a,sp
	add	a,#0xe2
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	mov	dpl,r4
	mov	dph,r6
	mov	b,r7
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
;	../contiki-sensinode/core/lib/ifft.c:155: xre[p] = n2;
	mov	a,sp
	add	a,#0xe2
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,sp
	add	a,#0xef
	mov	r1,a
	mov	a,@r1
	lcall	__gptrput
	inc	dptr
	inc	r1
	mov	a,@r1
	lcall	__gptrput
;	../contiki-sensinode/core/lib/ifft.c:157: n2 = xim[k];
	mov	a,sp
	add	a,#0xc7
	mov	r0,a
	mov	a,sp
	add	a,#0xe9
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	mov	r5,a
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,sp
	add	a,#0xef
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
;	../contiki-sensinode/core/lib/ifft.c:158: xim[k] = xim[p];
	mov	a,sp
	add	a,#0xc7
	mov	r0,a
	mov	a,sp
	add	a,#0xe5
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	push	acc
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,sp
	add	a,#0xe8
	mov	r0,a
	pop	acc
	mov	@r0,a
	dec	r0
	pop	acc
	mov	@r0,a
	dec	r0
	pop	acc
	mov	@r0,a
	mov	a,sp
	add	a,#0xe9
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
;	../contiki-sensinode/core/lib/ifft.c:159: xim[p] = n2;
	mov	a,sp
	add	a,#0xe9
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,sp
	add	a,#0xef
	mov	r1,a
	mov	a,@r1
	lcall	__gptrput
	inc	dptr
	inc	r1
	mov	a,@r1
	lcall	__gptrput
;	../contiki-sensinode/core/lib/ifft.c:165: for (i = 0, n2 = n / 2; i < n2; i++) {
	pop	ar7
	pop	ar6
;	../contiki-sensinode/core/lib/ifft.c:159: xim[p] = n2;
00123$:
;	../contiki-sensinode/core/lib/ifft.c:150: for (k = 0; k < n; k++) {
	inc	r6
	cjne	r6,#0x00,00198$
	inc	r7
00198$:
	ljmp	00122$
00107$:
;	../contiki-sensinode/core/lib/ifft.c:165: for (i = 0, n2 = n / 2; i < n2; i++) {
	mov	a,sp
	add	a,#0xd3
	mov	r0,a
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,sp
	add	a,#0xf1
	mov	r0,a
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
00125$:
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	mov	a,sp
	add	a,#0xf1
	mov	r0,a
	clr	c
	mov	a,r4
	subb	a,@r0
	mov	a,r5
	inc	r0
	subb	a,@r0
	jc	00199$
	ljmp	00127$
00199$:
;	../contiki-sensinode/core/lib/ifft.c:166: xre[i] = (ABS(xre[i]) + ABS(xim[i]));
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	ar4,@r0
	inc	r0
	mov	a,@r0
	xch	a,r4
	add	a,acc
	xch	a,r4
	rlc	a
	mov	r5,a
	mov	a,sp
	add	a,#0xce
	mov	r0,a
	mov	a,r4
	add	a,@r0
	mov	r4,a
	mov	a,r5
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar5,@r0
	mov	dpl,r4
	mov	dph,r3
	mov	b,r5
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	jnb	acc.7,00129$
	mov	dpl,r4
	mov	dph,r3
	mov	b,r5
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	clr	c
	clr	a
	subb	a,r2
	mov	r6,a
	clr	a
	subb	a,r7
	mov	r7,a
	sjmp	00130$
00129$:
	mov	dpl,r4
	mov	dph,r3
	mov	b,r5
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
00130$:
	push	ar4
	push	ar3
	push	ar5
	mov	a,sp
	add	a,#0xf4
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	a,@r0
	xch	a,r2
	add	a,acc
	xch	a,r2
	rlc	a
	mov	r5,a
	mov	a,sp
	add	a,#0xc6
	mov	r0,a
	mov	a,r2
	add	a,@r0
	mov	r2,a
	mov	a,r5
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r5
	mov	b,r4
	mov	a,sp
	add	a,#0xe4
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	mov	a,sp
	add	a,#0xe4
	mov	r0,a
	inc	r0
	mov	a,@r0
	pop	ar5
	pop	ar3
	pop	ar4
	jnb	acc.7,00131$
	mov	a,sp
	add	a,#0xe7
	mov	r0,a
	mov	a,sp
	add	a,#0xe4
	mov	r1,a
	clr	c
	clr	a
	subb	a,@r0
	mov	@r1,a
	inc	r0
	clr	a
	subb	a,@r0
	inc	r1
	mov	@r1,a
	sjmp	00132$
00131$:
	mov	a,sp
	add	a,#0xe7
	mov	r0,a
	mov	a,sp
	add	a,#0xe4
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
00132$:
	mov	a,sp
	add	a,#0xe4
	mov	r0,a
	mov	a,@r0
	add	a,r6
	mov	r2,a
	inc	r0
	mov	a,@r0
	addc	a,r7
	mov	r7,a
	mov	dpl,r4
	mov	dph,r3
	mov	b,r5
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	../contiki-sensinode/core/lib/ifft.c:165: for (i = 0, n2 = n / 2; i < n2; i++) {
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00202$
	inc	r0
	inc	@r0
00202$:
	ljmp	00125$
00127$:
	mov	a,sp
	add	a,#0xCD
	mov	sp,a
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
_SIN_TAB:
	.db #0x00	;  0
	.db #0x06	;  6
	.db #0x0D	;  13
	.db #0x14	;  20
	.db #0x1A	;  26
	.db #0x21	;  33
	.db #0x27	;  39
	.db #0x2D	;  45
	.db #0x34	;  52	'4'
	.db #0x3A	;  58
	.db #0x3F	;  63
	.db #0x45	;  69	'E'
	.db #0x4B	;  75	'K'
	.db #0x50	;  80	'P'
	.db #0x55	;  85	'U'
	.db #0x5A	;  90	'Z'
	.db #0x5F	;  95
	.db #0x63	;  99	'c'
	.db #0x67	;  103	'g'
	.db #0x6B	;  107	'k'
	.db #0x6E	;  110	'n'
	.db #0x72	;  114	'r'
	.db #0x74	;  116	't'
	.db #0x77	;  119	'w'
	.db #0x79	;  121	'y'
	.db #0x7B	;  123
	.db #0x7D	;  125
	.db #0x7E	;  126
	.db #0x7F	;  127
	.db #0x7F	;  127
	.db #0x7F	;  127
	.db #0x7F	;  127
	.db #0x7F	;  127
	.db #0x7E	;  126
	.db #0x7D	;  125
	.db #0x7B	;  123
	.db #0x79	;  121	'y'
	.db #0x77	;  119	'w'
	.db #0x74	;  116	't'
	.db #0x72	;  114	'r'
	.db #0x6E	;  110	'n'
	.db #0x6B	;  107	'k'
	.db #0x67	;  103	'g'
	.db #0x63	;  99	'c'
	.db #0x5F	;  95
	.db #0x5A	;  90	'Z'
	.db #0x55	;  85	'U'
	.db #0x50	;  80	'P'
	.db #0x4B	;  75	'K'
	.db #0x45	;  69	'E'
	.db #0x3F	;  63
	.db #0x3A	;  58
	.db #0x34	;  52	'4'
	.db #0x2D	;  45
	.db #0x27	;  39
	.db #0x21	;  33
	.db #0x1A	;  26
	.db #0x14	;  20
	.db #0x0D	;  13
	.db #0x06	;  6
	.db #0x00	;  0
	.db #0xFA	; -6
	.db #0xF3	; -13
	.db #0xEC	; -20
	.db #0xE6	; -26
	.db #0xDF	; -33
	.db #0xD9	; -39
	.db #0xD3	; -45
	.db #0xCC	; -52
	.db #0xC6	; -58
	.db #0xC1	; -63
	.db #0xBB	; -69
	.db #0xB5	; -75
	.db #0xB0	; -80
	.db #0xAB	; -85
	.db #0xA6	; -90
	.db #0xA1	; -95
	.db #0x9D	; -99
	.db #0x99	; -103
	.db #0x95	; -107
	.db #0x92	; -110
	.db #0x8E	; -114
	.db #0x8C	; -116
	.db #0x89	; -119
	.db #0x87	; -121
	.db #0x85	; -123
	.db #0x83	; -125
	.db #0x82	; -126
	.db #0x81	; -127
	.db #0x81	; -127
	.db #0x81	; -127
	.db #0x81	; -127
	.db #0x81	; -127
	.db #0x82	; -126
	.db #0x83	; -125
	.db #0x85	; -123
	.db #0x87	; -121
	.db #0x89	; -119
	.db #0x8C	; -116
	.db #0x8E	; -114
	.db #0x92	; -110
	.db #0x95	; -107
	.db #0x99	; -103
	.db #0x9D	; -99
	.db #0xA1	; -95
	.db #0xA6	; -90
	.db #0xAB	; -85
	.db #0xB0	; -80
	.db #0xB5	; -75
	.db #0xBB	; -69
	.db #0xC1	; -63
	.db #0xC6	; -58
	.db #0xCC	; -52
	.db #0xD3	; -45
	.db #0xD9	; -39
	.db #0xDF	; -33
	.db #0xE6	; -26
	.db #0xEC	; -20
	.db #0xF3	; -13
	.db #0xFA	; -6
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
