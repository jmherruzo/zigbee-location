;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.4.0 #8981 (Oct 24 2015) (Linux)
; This file was generated Sun Oct 25 01:52:07 2015
;--------------------------------------------------------
	.module autostart
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _process_exit
	.globl _process_start
	.globl _autostart_start
	.globl _autostart_exit
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
;Allocation info for local variables in function 'autostart_start'
;------------------------------------------------------------
;processes                 Allocated to registers r5 r6 r7 
;i                         Allocated to registers 
;------------------------------------------------------------
;	../contiki-sensinode/core/sys/autostart.c:52: autostart_start(struct process * const processes[])
;	-----------------------------------------
;	 function autostart_start
;	-----------------------------------------
_autostart_start:
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
;	../contiki-sensinode/core/sys/autostart.c:56: for(i = 0; processes[i] != NULL; ++i) {
	mov	a,sp
	add	a,#0x04
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	mov	r3,#0x00
	mov	r4,#0x00
00103$:
	mov	a,r3
	add	a,r5
	mov	r0,a
	mov	a,r4
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
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	clr	a
	push	acc
	push	acc
	push	acc
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jz	00105$
;	../contiki-sensinode/core/sys/autostart.c:57: process_start(processes[i], NULL);
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	clr	a
	push	acc
	push	acc
	push	acc
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	_process_start
	dec	sp
	dec	sp
	dec	sp
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	../contiki-sensinode/core/sys/autostart.c:56: for(i = 0; processes[i] != NULL; ++i) {
	mov	a,#0x03
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	sjmp	00103$
00105$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'autostart_exit'
;------------------------------------------------------------
;processes                 Allocated to registers r5 r6 r7 
;i                         Allocated to registers 
;------------------------------------------------------------
;	../contiki-sensinode/core/sys/autostart.c:63: autostart_exit(struct process * const processes[])
;	-----------------------------------------
;	 function autostart_exit
;	-----------------------------------------
_autostart_exit:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../contiki-sensinode/core/sys/autostart.c:67: for(i = 0; processes[i] != NULL; ++i) {
	mov	a,sp
	add	a,#0x04
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	mov	r3,#0x00
	mov	r4,#0x00
00103$:
	mov	a,r3
	add	a,r5
	mov	r0,a
	mov	a,r4
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
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	clr	a
	push	acc
	push	acc
	push	acc
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jz	00105$
;	../contiki-sensinode/core/sys/autostart.c:68: process_exit(processes[i]);
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_process_exit
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	../contiki-sensinode/core/sys/autostart.c:67: for(i = 0; processes[i] != NULL; ++i) {
	mov	a,#0x03
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	sjmp	00103$
00105$:
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
