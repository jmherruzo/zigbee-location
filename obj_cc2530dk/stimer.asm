;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.4.0 #8981 (Oct 24 2015) (Linux)
; This file was generated Sun Oct 25 01:52:10 2015
;--------------------------------------------------------
	.module stimer
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _clock_seconds
	.globl _stimer_set
	.globl _stimer_reset
	.globl _stimer_restart
	.globl _stimer_expired
	.globl _stimer_remaining
	.globl _stimer_elapsed
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
;Allocation info for local variables in function 'stimer_set'
;------------------------------------------------------------
;interval                  Allocated to stack - sp -8
;t                         Allocated to stack - sp -2
;------------------------------------------------------------
;	../contiki-sensinode/core/sys/stimer.c:67: stimer_set(struct stimer *t, unsigned long interval)
;	-----------------------------------------
;	 function stimer_set
;	-----------------------------------------
_stimer_set:
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
	push	b
;	../contiki-sensinode/core/sys/stimer.c:69: t->interval = interval;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x04
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
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
;	../contiki-sensinode/core/sys/stimer.c:70: t->start = clock_seconds();
	lcall	_clock_seconds
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r7,a
	mov	r0,sp
	dec	r0
	dec	r0
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
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	dec	sp
	dec	sp
	dec	sp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'stimer_reset'
;------------------------------------------------------------
;t                         Allocated to stack - sp -6
;sloc0                     Allocated to stack - sp -3
;sloc1                     Allocated to stack - sp +1
;------------------------------------------------------------
;	../contiki-sensinode/core/sys/stimer.c:87: stimer_reset(struct stimer *t)
;	-----------------------------------------
;	 function stimer_reset
;	-----------------------------------------
_stimer_reset:
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x04
;	../contiki-sensinode/core/sys/stimer.c:89: t->start += t->interval;
	mov	sp,a
	add	a,#0xfa
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,sp
	add	a,#0xfd
	mov	r1,a
	lcall	__gptrget
	mov	@r1,a
	inc	dptr
	lcall	__gptrget
	inc	r1
	mov	@r1,a
	inc	dptr
	lcall	__gptrget
	inc	r1
	mov	@r1,a
	inc	dptr
	lcall	__gptrget
	inc	r1
	mov	@r1,a
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,#0x04
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
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	a,r2
	add	a,@r0
	mov	r2,a
	mov	a,r3
	inc	r0
	addc	a,@r0
	mov	r3,a
	mov	a,r4
	inc	r0
	addc	a,@r0
	mov	r4,a
	mov	a,r5
	inc	r0
	addc	a,@r0
	mov	r5,a
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
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
	mov	a,sp
	add	a,#0xF9
	mov	sp,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'stimer_restart'
;------------------------------------------------------------
;t                         Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../contiki-sensinode/core/sys/stimer.c:107: stimer_restart(struct stimer *t)
;	-----------------------------------------
;	 function stimer_restart
;	-----------------------------------------
_stimer_restart:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../contiki-sensinode/core/sys/stimer.c:109: t->start = clock_seconds();
	push	ar7
	push	ar6
	push	ar5
	lcall	_clock_seconds
	mov	r1,dpl
	mov	r2,dph
	mov	r3,b
	mov	r4,a
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r1
	lcall	__gptrput
	inc	dptr
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	ljmp	__gptrput
;------------------------------------------------------------
;Allocation info for local variables in function 'stimer_expired'
;------------------------------------------------------------
;t                         Allocated to registers r7 r6 r5 
;sloc0                     Allocated to stack - sp -11
;sloc1                     Allocated to stack - sp -7
;sloc2                     Allocated to stack - sp -3
;------------------------------------------------------------
;	../contiki-sensinode/core/sys/stimer.c:124: stimer_expired(struct stimer *t)
;	-----------------------------------------
;	 function stimer_expired
;	-----------------------------------------
_stimer_expired:
	mov	a,sp
	add	a,#0x0C
	mov	sp,a
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
;	../contiki-sensinode/core/sys/stimer.c:126: return SCLOCK_GEQ(clock_seconds(), t->start + t->interval);
	push	ar7
	push	ar6
	push	ar5
	lcall	_clock_seconds
	xch	a,r0
	mov	a,sp
	add	a,#0xf2
	xch	a,r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	inc	r0
	mov	@r0,b
	inc	r0
	mov	@r0,a
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	mov	a,sp
	add	a,#0xf9
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
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	mov	a,#0x04
	add	a,r7
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r5
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
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	a,r7
	add	a,@r0
	mov	r7,a
	mov	a,r6
	inc	r0
	addc	a,@r0
	mov	r6,a
	mov	a,r5
	inc	r0
	addc	a,@r0
	mov	r5,a
	mov	a,r4
	inc	r0
	addc	a,@r0
	mov	r4,a
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	a,sp
	add	a,#0xfd
	mov	r1,a
	mov	a,@r0
	clr	c
	subb	a,r7
	mov	@r1,a
	inc	r0
	mov	a,@r0
	subb	a,r6
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	subb	a,r5
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	subb	a,r4
	inc	r1
	mov	@r1,a
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	clr	c
	mov	a,@r0
	subb	a,#0xFF
	inc	r0
	mov	a,@r0
	subb	a,#0xFF
	inc	r0
	mov	a,@r0
	subb	a,#0xFF
	inc	r0
	mov	a,@r0
	subb	a,#0x7F
	clr	a
	rlc	a
	mov	r4,a
	rlc	a
	subb	a,acc
	mov	r3,a
	mov	dpl,r4
	mov	dph,r3
	mov	a,sp
	add	a,#0xF4
	mov	sp,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'stimer_remaining'
;------------------------------------------------------------
;t                         Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../contiki-sensinode/core/sys/stimer.c:140: stimer_remaining(struct stimer *t)
;	-----------------------------------------
;	 function stimer_remaining
;	-----------------------------------------
_stimer_remaining:
;	../contiki-sensinode/core/sys/stimer.c:142: return t->start + t->interval - clock_seconds();
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,#0x04
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,r0
	add	a,r1
	mov	r1,a
	mov	a,r5
	addc	a,r2
	mov	r2,a
	mov	a,r6
	addc	a,r3
	mov	r3,a
	mov	a,r7
	addc	a,r4
	mov	r4,a
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	lcall	_clock_seconds
	mov	r0,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	mov	a,r1
	clr	c
	subb	a,r0
	mov	r1,a
	mov	a,r2
	subb	a,r5
	mov	r2,a
	mov	a,r3
	subb	a,r6
	mov	r3,a
	mov	a,r4
	subb	a,r7
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'stimer_elapsed'
;------------------------------------------------------------
;t                         Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../contiki-sensinode/core/sys/stimer.c:156: stimer_elapsed(struct stimer *t)
;	-----------------------------------------
;	 function stimer_elapsed
;	-----------------------------------------
_stimer_elapsed:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../contiki-sensinode/core/sys/stimer.c:158: return clock_seconds() - t->start;
	push	ar7
	push	ar6
	push	ar5
	lcall	_clock_seconds
	mov	r1,dpl
	mov	r2,dph
	mov	r3,b
	mov	r4,a
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,r1
	clr	c
	subb	a,r0
	mov	r1,a
	mov	a,r2
	subb	a,r5
	mov	r2,a
	mov	a,r3
	subb	a,r6
	mov	r3,a
	mov	a,r4
	subb	a,r7
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
