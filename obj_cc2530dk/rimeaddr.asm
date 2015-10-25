;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.4.0 #8981 (Oct 24 2015) (Linux)
; This file was generated Sun Oct 25 01:51:58 2015
;--------------------------------------------------------
	.module rimeaddr
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _rimeaddr_null
	.globl _rimeaddr_node_addr
	.globl _rimeaddr_copy
	.globl _rimeaddr_cmp
	.globl _rimeaddr_set_node_addr
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
_rimeaddr_node_addr::
	.ds 2
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
;Allocation info for local variables in function 'rimeaddr_copy'
;------------------------------------------------------------
;src                       Allocated to stack - sp -8
;dest                      Allocated to stack - sp -3
;i                         Allocated to stack - sp +0
;------------------------------------------------------------
;	../contiki-sensinode/core/net/rime/rimeaddr.c:59: rimeaddr_copy(rimeaddr_t *dest, const rimeaddr_t *src)
;	-----------------------------------------
;	 function rimeaddr_copy
;	-----------------------------------------
_rimeaddr_copy:
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
	inc	sp
;	../contiki-sensinode/core/net/rime/rimeaddr.c:62: for(i = 0; i < RIMEADDR_SIZE; i++) {
	mov	r0,sp
	mov	@r0,#0x00
00102$:
;	../contiki-sensinode/core/net/rime/rimeaddr.c:63: dest->u8[i] = src->u8[i];
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	r1,sp
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
	add	a,#0xf8
	mov	r0,a
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	mov	r0,sp
	mov	a,@r0
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r5
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r4,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	__gptrput
;	../contiki-sensinode/core/net/rime/rimeaddr.c:62: for(i = 0; i < RIMEADDR_SIZE; i++) {
	mov	r0,sp
	inc	@r0
	mov	r0,sp
	cjne	@r0,#0x02,00110$
00110$:
	jc	00102$
	mov	a,sp
	add	a,#0xFC
	mov	sp,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'rimeaddr_cmp'
;------------------------------------------------------------
;addr2                     Allocated to stack - sp -8
;addr1                     Allocated to stack - sp -3
;i                         Allocated to stack - sp +0
;------------------------------------------------------------
;	../contiki-sensinode/core/net/rime/rimeaddr.c:68: rimeaddr_cmp(const rimeaddr_t *addr1, const rimeaddr_t *addr2)
;	-----------------------------------------
;	 function rimeaddr_cmp
;	-----------------------------------------
_rimeaddr_cmp:
	push	dpl
	push	dph
	push	b
	inc	sp
;	../contiki-sensinode/core/net/rime/rimeaddr.c:71: for(i = 0; i < RIMEADDR_SIZE; i++) {
	mov	r0,sp
	mov	@r0,#0x00
00104$:
;	../contiki-sensinode/core/net/rime/rimeaddr.c:72: if(addr1->u8[i] != addr2->u8[i]) {
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	r1,sp
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
	add	a,#0xf8
	mov	r0,a
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	mov	r0,sp
	mov	a,@r0
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r5
	mov	r5,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r4,a
	mov	a,r2
	cjne	a,ar4,00117$
	sjmp	00105$
00117$:
;	../contiki-sensinode/core/net/rime/rimeaddr.c:73: return 0;
	mov	dptr,#0x0000
	sjmp	00106$
00105$:
;	../contiki-sensinode/core/net/rime/rimeaddr.c:71: for(i = 0; i < RIMEADDR_SIZE; i++) {
	mov	r0,sp
	inc	@r0
	mov	r0,sp
	cjne	@r0,#0x02,00118$
00118$:
	jc	00104$
;	../contiki-sensinode/core/net/rime/rimeaddr.c:76: return 1;
	mov	dptr,#0x0001
00106$:
	mov	a,sp
	add	a,#0xFC
	mov	sp,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'rimeaddr_set_node_addr'
;------------------------------------------------------------
;t                         Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../contiki-sensinode/core/net/rime/rimeaddr.c:80: rimeaddr_set_node_addr(rimeaddr_t *t)
;	-----------------------------------------
;	 function rimeaddr_set_node_addr
;	-----------------------------------------
_rimeaddr_set_node_addr:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../contiki-sensinode/core/net/rime/rimeaddr.c:82: rimeaddr_copy(&rimeaddr_node_addr, t);
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#_rimeaddr_node_addr
	mov	b,#0x00
	lcall	_rimeaddr_copy
	dec	sp
	dec	sp
	dec	sp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
_rimeaddr_null:
	.db #0x00	; 0
	.db #0x00	; 0
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
