;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.4.0 #8981 (Oct 24 2015) (Linux)
; This file was generated Sun Oct 25 01:52:09 2015
;--------------------------------------------------------
	.module timer
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _clock_time
	.globl _timer_set
	.globl _timer_reset
	.globl _timer_restart
	.globl _timer_expired
	.globl _timer_remaining
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
;Allocation info for local variables in function 'timer_set'
;------------------------------------------------------------
;interval                  Allocated to stack - sp -3
;t                         Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../contiki-sensinode/core/sys/timer.c:64: timer_set(struct timer *t, clock_time_t interval)
;	-----------------------------------------
;	 function timer_set
;	-----------------------------------------
_timer_set:
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
;	../contiki-sensinode/core/sys/timer.c:66: t->interval = interval;
	mov	a,#0x02
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
;	../contiki-sensinode/core/sys/timer.c:67: t->start = clock_time();
	push	ar7
	push	ar6
	push	ar5
	lcall	_clock_time
	mov	r3,dpl
	mov	r4,dph
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	ljmp	__gptrput
;------------------------------------------------------------
;Allocation info for local variables in function 'timer_reset'
;------------------------------------------------------------
;t                         Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../contiki-sensinode/core/sys/timer.c:84: timer_reset(struct timer *t)
;	-----------------------------------------
;	 function timer_reset
;	-----------------------------------------
_timer_reset:
;	../contiki-sensinode/core/sys/timer.c:86: t->start += t->interval;
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,#0x02
	add	a,r5
	mov	r0,a
	clr	a
	addc	a,r6
	mov	r1,a
	mov	ar2,r7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	mov	a,r0
	add	a,r3
	mov	r3,a
	mov	a,r1
	addc	a,r4
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	ljmp	__gptrput
;------------------------------------------------------------
;Allocation info for local variables in function 'timer_restart'
;------------------------------------------------------------
;t                         Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../contiki-sensinode/core/sys/timer.c:104: timer_restart(struct timer *t)
;	-----------------------------------------
;	 function timer_restart
;	-----------------------------------------
_timer_restart:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../contiki-sensinode/core/sys/timer.c:106: t->start = clock_time();
	push	ar7
	push	ar6
	push	ar5
	lcall	_clock_time
	mov	r3,dpl
	mov	r4,dph
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	ljmp	__gptrput
;------------------------------------------------------------
;Allocation info for local variables in function 'timer_expired'
;------------------------------------------------------------
;t                         Allocated to stack - sp -2
;diff                      Allocated to registers r3 r4 
;------------------------------------------------------------
;	../contiki-sensinode/core/sys/timer.c:121: timer_expired(struct timer *t)
;	-----------------------------------------
;	 function timer_expired
;	-----------------------------------------
_timer_expired:
	push	dpl
	push	dph
	push	b
;	../contiki-sensinode/core/sys/timer.c:125: clock_time_t diff = (clock_time() - t->start) + 1;
	lcall	_clock_time
	mov	r3,dpl
	mov	r4,dph
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,r3
	clr	c
	subb	a,r2
	mov	r3,a
	mov	a,r4
	subb	a,r7
	mov	r4,a
	inc	r3
	cjne	r3,#0x00,00103$
	inc	r4
00103$:
;	../contiki-sensinode/core/sys/timer.c:126: return t->interval < diff;
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
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	clr	c
	mov	a,r5
	subb	a,r3
	mov	a,r6
	subb	a,r4
	clr	a
	rlc	a
	mov	r3,a
	rlc	a
	subb	a,acc
	mov	r7,a
	mov	dpl,r3
	mov	dph,r7
	dec	sp
	dec	sp
	dec	sp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'timer_remaining'
;------------------------------------------------------------
;t                         Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../contiki-sensinode/core/sys/timer.c:141: timer_remaining(struct timer *t)
;	-----------------------------------------
;	 function timer_remaining
;	-----------------------------------------
_timer_remaining:
;	../contiki-sensinode/core/sys/timer.c:143: return t->start + t->interval - clock_time();
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,#0x02
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
	mov	a,r5
	add	a,r3
	mov	r3,a
	mov	a,r6
	addc	a,r4
	mov	r4,a
	push	ar4
	push	ar3
	lcall	_clock_time
	mov	r6,dpl
	mov	r7,dph
	pop	ar3
	pop	ar4
	mov	a,r3
	clr	c
	subb	a,r6
	mov	r3,a
	mov	a,r4
	subb	a,r7
	mov	dpl,r3
	mov	dph,a
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
