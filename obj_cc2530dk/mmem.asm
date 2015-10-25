;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.4.0 #8981 (Oct 24 2015) (Linux)
; This file was generated Sun Oct 25 01:52:09 2015
;--------------------------------------------------------
	.module mmem
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _memmove
	.globl _list_remove
	.globl _list_add
	.globl _list_init
	.globl _avail_memory
	.globl _mmem_alloc
	.globl _mmem_free
	.globl _mmem_init
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
_avail_memory::
	.ds 2
_memory:
	.ds 4096
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_mmemlist_list:
	.ds 3
_mmemlist:
	.ds 3
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
;Allocation info for local variables in function 'mmem_alloc'
;------------------------------------------------------------
;size                      Allocated to stack - sp -6
;m                         Allocated to stack - sp -2
;------------------------------------------------------------
;	../contiki-sensinode/core/lib/mmem.c:83: mmem_alloc(struct mmem *m, unsigned int size)
;	-----------------------------------------
;	 function mmem_alloc
;	-----------------------------------------
_mmem_alloc:
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
;	../contiki-sensinode/core/lib/mmem.c:86: if(avail_memory < size) {
	mov	dptr,#_avail_memory
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	clr	c
	mov	a,r3
	subb	a,@r0
	mov	a,r4
	inc	r0
	subb	a,@r0
	jnc	00102$
;	../contiki-sensinode/core/lib/mmem.c:87: return 0;
	mov	dptr,#0x0000
	ljmp	00103$
00102$:
;	../contiki-sensinode/core/lib/mmem.c:92: list_add(mmemlist, m);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	dptr,#_mmemlist
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	push	ar2
	push	ar3
	push	ar4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_list_add
	dec	sp
	dec	sp
	dec	sp
;	../contiki-sensinode/core/lib/mmem.c:96: m->ptr = &memory[MMEM_SIZE - avail_memory];
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x05
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dptr,#_avail_memory
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	clr	a
	clr	c
	subb	a,r3
	mov	r3,a
	mov	a,#0x10
	subb	a,r4
	mov	r4,a
	mov	a,r3
	add	a,#_memory
	mov	r3,a
	mov	a,r4
	addc	a,#(_memory >> 8)
	mov	r4,a
	mov	r2,#0x00
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r2
	lcall	__gptrput
;	../contiki-sensinode/core/lib/mmem.c:99: m->size = size;
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
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
;	../contiki-sensinode/core/lib/mmem.c:102: avail_memory -= size;
	mov	dptr,#_avail_memory
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	dptr,#_avail_memory
	mov	a,r6
	clr	c
	subb	a,@r0
	movx	@dptr,a
	mov	a,r7
	inc	r0
	subb	a,@r0
	inc	dptr
	movx	@dptr,a
;	../contiki-sensinode/core/lib/mmem.c:106: return 1;
	mov	dptr,#0x0001
00103$:
	dec	sp
	dec	sp
	dec	sp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'mmem_free'
;------------------------------------------------------------
;m                         Allocated to stack - sp -13
;n                         Allocated to stack - sp -2
;sloc0                     Allocated to stack - sp -10
;sloc1                     Allocated to stack - sp -8
;sloc2                     Allocated to stack - sp -5
;------------------------------------------------------------
;	../contiki-sensinode/core/lib/mmem.c:119: mmem_free(struct mmem *m)
;	-----------------------------------------
;	 function mmem_free
;	-----------------------------------------
_mmem_free:
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x0B
;	../contiki-sensinode/core/lib/mmem.c:123: if(m->next != NULL) {
	mov	sp,a
	add	a,#0xf3
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
	mov	a,r2
	orl	a,r3
	jnz	00118$
	ljmp	00103$
00118$:
;	../contiki-sensinode/core/lib/mmem.c:127: &memory[MMEM_SIZE - avail_memory] - (char *)m->next->ptr);
	mov	dptr,#_avail_memory
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	a
	clr	c
	subb	a,r6
	mov	r6,a
	mov	a,#0x10
	subb	a,r7
	mov	r7,a
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	a,r6
	add	a,#_memory
	mov	@r0,a
	mov	a,r7
	addc	a,#(_memory >> 8)
	inc	r0
	mov	@r0,a
	mov	a,#0x05
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
	mov	ar5,r2
	mov	ar6,r3
	mov	ar7,r4
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	a,@r0
	clr	c
	subb	a,r5
	mov	@r0,a
	inc	r0
	mov	a,@r0
	subb	a,r6
	mov	@r0,a
;	../contiki-sensinode/core/lib/mmem.c:126: memmove(m->ptr, m->next->ptr,
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	mov	a,#0x05
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
	add	a,#0xf6
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	push	ar2
	push	ar3
	push	ar4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_memmove
	mov	a,sp
	add	a,#0xfb
;	../contiki-sensinode/core/lib/mmem.c:131: for(n = m->next; n != NULL; n = n->next) {
	mov	sp,a
	add	a,#0xf3
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r1,sp
	dec	r1
	dec	r1
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
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	mov	a,sp
	add	a,#0xf8
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
00105$:
	mov	r0,sp
	dec	r0
	dec	r0
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
	jnz	00119$
	ljmp	00103$
00119$:
;	../contiki-sensinode/core/lib/mmem.c:132: n->ptr = (void *)((char *)n->ptr - m->size);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x05
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
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	mov	a,sp
	add	a,#0xf8
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
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	clr	c
	subb	a,r3
	mov	r3,a
	inc	r0
	mov	a,@r0
	subb	a,r4
	mov	r4,a
	inc	r0
	mov	ar2,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r2
	lcall	__gptrput
;	../contiki-sensinode/core/lib/mmem.c:131: for(n = m->next; n != NULL; n = n->next) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	dec	r0
	dec	r0
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	ljmp	00105$
00103$:
;	../contiki-sensinode/core/lib/mmem.c:136: avail_memory += m->size;
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
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	dptr,#_avail_memory
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_avail_memory
	mov	a,r5
	add	a,r4
	movx	@dptr,a
	mov	a,r6
	addc	a,r7
	inc	dptr
	movx	@dptr,a
;	../contiki-sensinode/core/lib/mmem.c:139: list_remove(mmemlist, m);
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	dptr,#_mmemlist
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
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
	mov	a,sp
	add	a,#0xF2
	mov	sp,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'mmem_init'
;------------------------------------------------------------
;	../contiki-sensinode/core/lib/mmem.c:152: mmem_init(void)
;	-----------------------------------------
;	 function mmem_init
;	-----------------------------------------
_mmem_init:
;	../contiki-sensinode/core/lib/mmem.c:154: list_init(mmemlist);
	mov	dptr,#_mmemlist
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_list_init
;	../contiki-sensinode/core/lib/mmem.c:155: avail_memory = MMEM_SIZE;
	mov	dptr,#_avail_memory
	clr	a
	movx	@dptr,a
	mov	a,#0x10
	inc	dptr
	movx	@dptr,a
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
__xinit__mmemlist_list:
; generic printIvalPtr
	.byte #0x00,#0x00,#0x00
__xinit__mmemlist:
	.byte _mmemlist_list,(_mmemlist_list >> 8),#0x00
	.area CABS    (ABS,CODE)
