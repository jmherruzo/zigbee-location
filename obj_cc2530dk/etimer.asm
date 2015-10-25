;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.4.0 #8981 (Oct 24 2015) (Linux)
; This file was generated Sun Oct 25 01:52:09 2015
;--------------------------------------------------------
	.module etimer
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _process_poll
	.globl _process_post
	.globl _timer_expired
	.globl _timer_restart
	.globl _timer_reset
	.globl _timer_set
	.globl _clock_time
	.globl _etimer_process
	.globl _etimer_request_poll
	.globl _etimer_set
	.globl _etimer_reset
	.globl _etimer_restart
	.globl _etimer_adjust
	.globl _etimer_expired
	.globl _etimer_expiration_time
	.globl _etimer_start_time
	.globl _etimer_pending
	.globl _etimer_next_expiration_time
	.globl _etimer_stop
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
_timerlist:
	.ds 3
_next_expiration:
	.ds 2
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_etimer_process::
	.ds 9
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
;Allocation info for local variables in function 'update_time'
;------------------------------------------------------------
;tdist                     Allocated to stack - sp -3
;now                       Allocated to stack - sp -1
;t                         Allocated to stack - sp -6
;------------------------------------------------------------
;	../contiki-sensinode/core/sys/etimer.c:58: update_time(void)
;	-----------------------------------------
;	 function update_time
;	-----------------------------------------
_update_time:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	a,sp
	add	a,#0x07
	mov	sp,a
;	../contiki-sensinode/core/sys/etimer.c:64: if (timerlist == NULL) {
	mov	dptr,#_timerlist
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r5
	orl	a,r6
	jnz	00105$
;	../contiki-sensinode/core/sys/etimer.c:65: next_expiration = 0;
	mov	dptr,#_next_expiration
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	ljmp	00110$
00105$:
;	../contiki-sensinode/core/sys/etimer.c:67: now = clock_time();
	lcall	_clock_time
	mov	r6,dpl
	mov	r7,dph
	mov	r0,sp
	dec	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	../contiki-sensinode/core/sys/etimer.c:68: t = timerlist;
	mov	dptr,#_timerlist
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
;	../contiki-sensinode/core/sys/etimer.c:70: tdist = t->timer.start + t->timer.interval - now;
	mov	a,sp
	add	a,#0xfa
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
	mov	r7,a
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,#0x02
	add	a,@r0
	mov	r4,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar6,@r0
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	mov	a,r4
	add	a,r2
	mov	r2,a
	mov	a,r5
	addc	a,r7
	mov	r7,a
	mov	r0,sp
	dec	r0
	mov	a,r2
	clr	c
	subb	a,@r0
	mov	r2,a
	mov	a,r7
	inc	r0
	subb	a,@r0
	mov	r7,a
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar7
;	../contiki-sensinode/core/sys/etimer.c:71: for(t = t->next; t != NULL; t = t->next) {
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,#0x04
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
	mov	a,sp
	add	a,#0xfa
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
00108$:
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	clr	a
	push	acc
	push	acc
	push	acc
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jnz	00125$
	ljmp	00103$
00125$:
;	../contiki-sensinode/core/sys/etimer.c:72: if(t->timer.start + t->timer.interval - now < tdist) {
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,#0x02
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
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,r6
	add	a,r4
	mov	r2,a
	mov	a,r7
	addc	a,r5
	mov	r3,a
	mov	r0,sp
	dec	r0
	mov	a,r2
	clr	c
	subb	a,@r0
	mov	r2,a
	mov	a,r3
	inc	r0
	subb	a,@r0
	mov	r3,a
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	clr	c
	mov	a,r2
	subb	a,@r0
	mov	a,r3
	inc	r0
	subb	a,@r0
	jnc	00109$
;	../contiki-sensinode/core/sys/etimer.c:73: tdist = t->timer.start + t->timer.interval - now;
	mov	a,r6
	add	a,r4
	mov	r4,a
	mov	a,r7
	addc	a,r5
	mov	r5,a
	mov	r0,sp
	dec	r0
	mov	a,r4
	clr	c
	subb	a,@r0
	mov	r4,a
	mov	a,r5
	inc	r0
	subb	a,@r0
	mov	r5,a
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
00109$:
;	../contiki-sensinode/core/sys/etimer.c:71: for(t = t->next; t != NULL; t = t->next) {
	mov	a,sp
	add	a,#0xfa
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
	mov	a,sp
	add	a,#0xfa
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
	ljmp	00108$
00103$:
;	../contiki-sensinode/core/sys/etimer.c:76: next_expiration = now + tdist;
	mov	r0,sp
	dec	r0
	mov	a,sp
	add	a,#0xfd
	mov	r1,a
	mov	dptr,#_next_expiration
	mov	a,@r1
	add	a,@r0
	movx	@dptr,a
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	inc	dptr
	movx	@dptr,a
00110$:
	mov	a,sp
	add	a,#0xF9
	mov	sp,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'process_thread_etimer_process'
;------------------------------------------------------------
;ev                        Allocated to stack - sp -14
;data                      Allocated to stack - sp -17
;process_pt                Allocated to registers r5 r6 r7 
;t                         Allocated to stack - sp -5
;u                         Allocated to stack - sp -8
;PT_YIELD_FLAG             Allocated to registers r4 
;p                         Allocated to stack - sp -2
;sloc0                     Allocated to stack - sp -11
;------------------------------------------------------------
;	../contiki-sensinode/core/sys/etimer.c:80: PROCESS_THREAD(etimer_process, ev, data)
;	-----------------------------------------
;	 function process_thread_etimer_process
;	-----------------------------------------
_process_thread_etimer_process:
	mov	a,sp
	add	a,#0x0C
	mov	sp,a
;	../contiki-sensinode/core/sys/etimer.c:84: PROCESS_BEGIN();
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	r4,#0x01
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	cjne	r2,#0x00,00198$
	cjne	r3,#0x00,00198$
	sjmp	00101$
00198$:
	cjne	r2,#0x59,00199$
	cjne	r3,#0x00,00199$
	sjmp	00102$
00199$:
	ljmp	00138$
00101$:
;	../contiki-sensinode/core/sys/etimer.c:86: timerlist = NULL;
	mov	dptr,#_timerlist
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	../contiki-sensinode/core/sys/etimer.c:88: while(1) {
00136$:
;	../contiki-sensinode/core/sys/etimer.c:89: PROCESS_YIELD();
	mov	r4,#0x00
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x59
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
00102$:
	mov	a,r4
	jnz	00106$
	mov	dpl,#0x01
	ljmp	00142$
00106$:
;	../contiki-sensinode/core/sys/etimer.c:91: if(ev == PROCESS_EVENT_EXITED) {
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	cjne	@r0,#0x87,00201$
	sjmp	00202$
00201$:
	ljmp	00123$
00202$:
;	../contiki-sensinode/core/sys/etimer.c:92: struct process *p = data;
	mov	a,sp
	add	a,#0xef
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
;	../contiki-sensinode/core/sys/etimer.c:94: while(timerlist != NULL && timerlist->p == p) {
00109$:
	mov	dptr,#_timerlist
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,r2
	orl	a,r3
	jz	00111$
	push	ar5
	push	ar6
	push	ar7
	mov	a,#0x07
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
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
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jz	00205$
	pop	ar7
	pop	ar6
	pop	ar5
	sjmp	00111$
00205$:
	pop	ar7
	pop	ar6
	pop	ar5
;	../contiki-sensinode/core/sys/etimer.c:95: timerlist = timerlist->next;
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
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	dptr,#_timerlist
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	ljmp	00109$
00111$:
;	../contiki-sensinode/core/sys/etimer.c:98: if(timerlist != NULL) {
	mov	dptr,#_timerlist
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,r2
	orl	a,r3
	jnz	00206$
	ljmp	00136$
00206$:
;	../contiki-sensinode/core/sys/etimer.c:99: t = timerlist;
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
;	../contiki-sensinode/core/sys/etimer.c:100: while(t->next != NULL) {
00115$:
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
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
	add	a,#0xf5
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
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00207$
	ljmp	00136$
00207$:
;	../contiki-sensinode/core/sys/etimer.c:101: if(t->next->p == p) {
	push	ar5
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	a,#0x07
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
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jz	00209$
	pop	ar7
	pop	ar6
	pop	ar5
	sjmp	00113$
00209$:
;	../contiki-sensinode/core/sys/etimer.c:102: t->next = t->next->next;
	mov	a,sp
	add	a,#0xf2
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
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
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
	pop	ar7
	pop	ar6
	pop	ar5
	ljmp	00115$
00113$:
;	../contiki-sensinode/core/sys/etimer.c:104: t = t->next;
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
	ljmp	00115$
;	../contiki-sensinode/core/sys/etimer.c:107: continue;
00123$:
;	../contiki-sensinode/core/sys/etimer.c:108: } else if(ev != PROCESS_EVENT_POLL) {
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	cjne	@r0,#0x82,00210$
	sjmp	00211$
00210$:
	ljmp	00136$
00211$:
;	../contiki-sensinode/core/sys/etimer.c:112: again:
00125$:
;	../contiki-sensinode/core/sys/etimer.c:114: u = NULL;
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,#0x00
;	../contiki-sensinode/core/sys/etimer.c:116: for(t = timerlist; t != NULL; t = t->next) {
	mov	dptr,#_timerlist
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
00140$:
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	clr	a
	push	acc
	push	acc
	push	acc
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jnz	00212$
	ljmp	00136$
00212$:
;	../contiki-sensinode/core/sys/etimer.c:117: if(timer_expired(&t->timer)) {
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	push	ar7
	push	ar6
	push	ar5
	lcall	_timer_expired
	mov	a,dpl
	mov	b,dph
	pop	ar5
	pop	ar6
	pop	ar7
	orl	a,b
	jnz	00213$
	ljmp	00133$
00213$:
;	../contiki-sensinode/core/sys/etimer.c:118: if(process_post(t->p, PROCESS_EVENT_TIMER, t) == PROCESS_ERR_OK) {
	push	ar5
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,sp
	add	a,#0xf2
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
	add	a,#0xf2
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
	push	ar5
	push	ar2
	push	ar3
	push	ar4
	mov	a,#0x88
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_process_post
	mov	r6,dpl
	mov	r7,dph
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar5
	mov	a,r6
	orl	a,r7
	pop	ar7
	pop	ar6
	pop	ar5
	jz	00214$
	ljmp	00130$
00214$:
;	../contiki-sensinode/core/sys/etimer.c:123: t->p = PROCESS_NONE;
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	../contiki-sensinode/core/sys/etimer.c:124: if(u != NULL) {
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00127$
;	../contiki-sensinode/core/sys/etimer.c:125: u->next = t->next;
	push	ar5
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	a,#0x04
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	a,sp
	add	a,#0xf8
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
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
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
	pop	ar7
	pop	ar6
	pop	ar5
	sjmp	00128$
00127$:
;	../contiki-sensinode/core/sys/etimer.c:127: timerlist = t->next;
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
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
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	dptr,#_timerlist
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
00128$:
;	../contiki-sensinode/core/sys/etimer.c:129: t->next = NULL;
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
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
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	../contiki-sensinode/core/sys/etimer.c:130: update_time();
	push	ar7
	push	ar6
	push	ar5
	lcall	_update_time
	pop	ar5
	pop	ar6
	pop	ar7
;	../contiki-sensinode/core/sys/etimer.c:131: goto again;
	ljmp	00125$
00130$:
;	../contiki-sensinode/core/sys/etimer.c:133: etimer_request_poll();
	push	ar7
	push	ar6
	push	ar5
	lcall	_etimer_request_poll
	pop	ar5
	pop	ar6
	pop	ar7
00133$:
;	../contiki-sensinode/core/sys/etimer.c:136: u = t;
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,sp
	add	a,#0xf8
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
;	../contiki-sensinode/core/sys/etimer.c:116: for(t = timerlist; t != NULL; t = t->next) {
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
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
	ljmp	00140$
;	../contiki-sensinode/core/sys/etimer.c:141: PROCESS_END();
00138$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	mov	dpl,#0x03
00142$:
	mov	a,sp
	add	a,#0xF4
	mov	sp,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'etimer_request_poll'
;------------------------------------------------------------
;	../contiki-sensinode/core/sys/etimer.c:145: etimer_request_poll(void)
;	-----------------------------------------
;	 function etimer_request_poll
;	-----------------------------------------
_etimer_request_poll:
;	../contiki-sensinode/core/sys/etimer.c:147: process_poll(&etimer_process);
	mov	dptr,#_etimer_process
	mov	b,#0x00
	ljmp	_process_poll
;------------------------------------------------------------
;Allocation info for local variables in function 'add_timer'
;------------------------------------------------------------
;timer                     Allocated to stack - sp -2
;t                         Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../contiki-sensinode/core/sys/etimer.c:151: add_timer(struct etimer *timer)
;	-----------------------------------------
;	 function add_timer
;	-----------------------------------------
_add_timer:
	push	dpl
	push	dph
	push	b
;	../contiki-sensinode/core/sys/etimer.c:155: etimer_request_poll();
	lcall	_etimer_request_poll
;	../contiki-sensinode/core/sys/etimer.c:157: if(timer->p != PROCESS_NONE) {
	mov	r0,sp
	dec	r0
	dec	r0
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
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,r5
	orl	a,r6
	jz	00105$
;	../contiki-sensinode/core/sys/etimer.c:160: for(t = timerlist; t != NULL; t = t->next) {
	mov	dptr,#_timerlist
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
00107$:
	clr	a
	push	acc
	push	acc
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jz	00105$
;	../contiki-sensinode/core/sys/etimer.c:161: if(t == timer) {
	mov	r0,sp
	dec	r0
	dec	r0
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jz	00126$
	sjmp	00108$
00126$:
;	../contiki-sensinode/core/sys/etimer.c:163: update_time();
	lcall	_update_time
;	../contiki-sensinode/core/sys/etimer.c:164: return;
	ljmp	00109$
00108$:
;	../contiki-sensinode/core/sys/etimer.c:160: for(t = timerlist; t != NULL; t = t->next) {
	push	ar2
	push	ar3
	push	ar4
	mov	a,#0x04
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
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	pop	ar4
	pop	ar3
	pop	ar2
	sjmp	00107$
00105$:
;	../contiki-sensinode/core/sys/etimer.c:169: timer->p = PROCESS_CURRENT();
	mov	dptr,#_process_current
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
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
;	../contiki-sensinode/core/sys/etimer.c:170: timer->next = timerlist;
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
	mov	dptr,#_timerlist
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
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
;	../contiki-sensinode/core/sys/etimer.c:171: timerlist = timer;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dptr,#_timerlist
	mov	a,@r0
	movx	@dptr,a
	inc	r0
	mov	a,@r0
	inc	dptr
	movx	@dptr,a
	inc	r0
	mov	a,@r0
	inc	dptr
	movx	@dptr,a
;	../contiki-sensinode/core/sys/etimer.c:173: update_time();
	lcall	_update_time
00109$:
	dec	sp
	dec	sp
	dec	sp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'etimer_set'
;------------------------------------------------------------
;interval                  Allocated to stack - sp -3
;et                        Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../contiki-sensinode/core/sys/etimer.c:177: etimer_set(struct etimer *et, clock_time_t interval)
;	-----------------------------------------
;	 function etimer_set
;	-----------------------------------------
_etimer_set:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../contiki-sensinode/core/sys/etimer.c:179: timer_set(&et->timer, interval);
	push	ar7
	push	ar6
	push	ar5
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_timer_set
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
;	../contiki-sensinode/core/sys/etimer.c:180: add_timer(et);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	ljmp	_add_timer
;------------------------------------------------------------
;Allocation info for local variables in function 'etimer_reset'
;------------------------------------------------------------
;et                        Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../contiki-sensinode/core/sys/etimer.c:184: etimer_reset(struct etimer *et)
;	-----------------------------------------
;	 function etimer_reset
;	-----------------------------------------
_etimer_reset:
;	../contiki-sensinode/core/sys/etimer.c:186: timer_reset(&et->timer);
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	push	ar7
	push	ar6
	push	ar5
	lcall	_timer_reset
	pop	ar5
	pop	ar6
	pop	ar7
;	../contiki-sensinode/core/sys/etimer.c:187: add_timer(et);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	ljmp	_add_timer
;------------------------------------------------------------
;Allocation info for local variables in function 'etimer_restart'
;------------------------------------------------------------
;et                        Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../contiki-sensinode/core/sys/etimer.c:191: etimer_restart(struct etimer *et)
;	-----------------------------------------
;	 function etimer_restart
;	-----------------------------------------
_etimer_restart:
;	../contiki-sensinode/core/sys/etimer.c:193: timer_restart(&et->timer);
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	push	ar7
	push	ar6
	push	ar5
	lcall	_timer_restart
	pop	ar5
	pop	ar6
	pop	ar7
;	../contiki-sensinode/core/sys/etimer.c:194: add_timer(et);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	ljmp	_add_timer
;------------------------------------------------------------
;Allocation info for local variables in function 'etimer_adjust'
;------------------------------------------------------------
;timediff                  Allocated to stack - sp -6
;et                        Allocated to stack - sp -2
;------------------------------------------------------------
;	../contiki-sensinode/core/sys/etimer.c:198: etimer_adjust(struct etimer *et, int timediff)
;	-----------------------------------------
;	 function etimer_adjust
;	-----------------------------------------
_etimer_adjust:
	push	dpl
	push	dph
	push	b
;	../contiki-sensinode/core/sys/etimer.c:200: et->timer.start += timediff;
	mov	r0,sp
	dec	r0
	dec	r0
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
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,r2
	add	a,r3
	mov	r3,a
	mov	a,r7
	addc	a,r4
	mov	r4,a
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
;	../contiki-sensinode/core/sys/etimer.c:201: update_time();
	lcall	_update_time
	dec	sp
	dec	sp
	dec	sp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'etimer_expired'
;------------------------------------------------------------
;et                        Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../contiki-sensinode/core/sys/etimer.c:205: etimer_expired(struct etimer *et)
;	-----------------------------------------
;	 function etimer_expired
;	-----------------------------------------
_etimer_expired:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../contiki-sensinode/core/sys/etimer.c:207: return et->p == PROCESS_NONE;
	mov	a,#0x07
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
	clr	a
	push	acc
	push	acc
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jnz	00103$
	inc	a
	sjmp	00104$
00103$:
	clr	a
00104$:
	mov	r5,a
	rlc	a
	subb	a,acc
	mov	dpl,r5
	mov	dph,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'etimer_expiration_time'
;------------------------------------------------------------
;et                        Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../contiki-sensinode/core/sys/etimer.c:211: etimer_expiration_time(struct etimer *et)
;	-----------------------------------------
;	 function etimer_expiration_time
;	-----------------------------------------
_etimer_expiration_time:
;	../contiki-sensinode/core/sys/etimer.c:213: return et->timer.start + et->timer.interval;
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
	mov	dpl,r3
	mov	dph,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'etimer_start_time'
;------------------------------------------------------------
;et                        Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../contiki-sensinode/core/sys/etimer.c:217: etimer_start_time(struct etimer *et)
;	-----------------------------------------
;	 function etimer_start_time
;	-----------------------------------------
_etimer_start_time:
;	../contiki-sensinode/core/sys/etimer.c:219: return et->timer.start;
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	dpl,r5
	mov	dph,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'etimer_pending'
;------------------------------------------------------------
;	../contiki-sensinode/core/sys/etimer.c:223: etimer_pending(void)
;	-----------------------------------------
;	 function etimer_pending
;	-----------------------------------------
_etimer_pending:
;	../contiki-sensinode/core/sys/etimer.c:225: return timerlist != NULL;
	mov	dptr,#_timerlist
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	a
	push	acc
	push	acc
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jnz	00103$
	inc	a
	sjmp	00104$
00103$:
	clr	a
00104$:
	mov	r5,a
	cjne	a,#0x01,00105$
00105$:
	clr	a
	rlc	a
	mov	r5,a
	rlc	a
	subb	a,acc
	mov	dpl,r5
	mov	dph,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'etimer_next_expiration_time'
;------------------------------------------------------------
;	../contiki-sensinode/core/sys/etimer.c:229: etimer_next_expiration_time(void)
;	-----------------------------------------
;	 function etimer_next_expiration_time
;	-----------------------------------------
_etimer_next_expiration_time:
;	../contiki-sensinode/core/sys/etimer.c:231: return etimer_pending() ? next_expiration : 0;
	lcall	_etimer_pending
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jz	00103$
	mov	dptr,#_next_expiration
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	sjmp	00104$
00103$:
	mov	r6,#0x00
	mov	r7,#0x00
00104$:
	mov	dpl,r6
	mov	dph,r7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'etimer_stop'
;------------------------------------------------------------
;et                        Allocated to stack - sp -2
;t                         Allocated to registers r2 r3 r4 
;------------------------------------------------------------
;	../contiki-sensinode/core/sys/etimer.c:235: etimer_stop(struct etimer *et)
;	-----------------------------------------
;	 function etimer_stop
;	-----------------------------------------
_etimer_stop:
	push	dpl
	push	dph
	push	b
;	../contiki-sensinode/core/sys/etimer.c:240: if(et == timerlist) {
	mov	dptr,#_timerlist
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	r0,sp
	dec	r0
	dec	r0
	push	ar2
	push	ar3
	push	ar4
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jz	00129$
	sjmp	00105$
00129$:
;	../contiki-sensinode/core/sys/etimer.c:241: timerlist = timerlist->next;
	mov	a,#0x04
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
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
	mov	dptr,#_timerlist
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../contiki-sensinode/core/sys/etimer.c:242: update_time();
	lcall	_update_time
	ljmp	00106$
00105$:
;	../contiki-sensinode/core/sys/etimer.c:246: for(t = timerlist; t != NULL && t->next != et; t = t->next);
00109$:
	clr	a
	push	acc
	push	acc
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jz	00101$
	mov	a,#0x04
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
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
	mov	r0,sp
	dec	r0
	dec	r0
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jz	00101$
	mov	ar2,r5
	mov	ar3,r6
	mov	ar4,r7
	sjmp	00109$
00101$:
;	../contiki-sensinode/core/sys/etimer.c:248: if(t != NULL) {
	mov	a,r2
	orl	a,r3
	jz	00106$
;	../contiki-sensinode/core/sys/etimer.c:252: t->next = et->next;
	mov	a,#0x04
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
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
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
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
;	../contiki-sensinode/core/sys/etimer.c:254: update_time();
	lcall	_update_time
00106$:
;	../contiki-sensinode/core/sys/etimer.c:259: et->next = NULL;
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
	inc	dptr
	lcall	__gptrput
;	../contiki-sensinode/core/sys/etimer.c:261: et->p = PROCESS_NONE;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x07
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
	inc	dptr
	lcall	__gptrput
	dec	sp
	dec	sp
	dec	sp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
__xinit__etimer_process:
; generic printIvalPtr
	.byte #0x00,#0x00,#0x00
	.byte _process_thread_etimer_process,(_process_thread_etimer_process >> 8)
	.byte #0x00,#0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.area CABS    (ABS,CODE)
