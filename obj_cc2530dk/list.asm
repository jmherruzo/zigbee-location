;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.4.0 #8981 (Oct 24 2015) (Linux)
; This file was generated Sun Oct 25 01:52:09 2015
;--------------------------------------------------------
	.module list
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _list_init
	.globl _list_head
	.globl _list_copy
	.globl _list_tail
	.globl _list_add
	.globl _list_push
	.globl _list_chop
	.globl _list_pop
	.globl _list_remove
	.globl _list_length
	.globl _list_insert
	.globl _list_item_next
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
;Allocation info for local variables in function 'list_init'
;------------------------------------------------------------
;list                      Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../contiki-sensinode/core/lib/list.c:65: list_init(list_t list)
;	-----------------------------------------
;	 function list_init
;	-----------------------------------------
_list_init:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	../contiki-sensinode/core/lib/list.c:67: *list = NULL;
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	ljmp	__gptrput
;------------------------------------------------------------
;Allocation info for local variables in function 'list_head'
;------------------------------------------------------------
;list                      Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../contiki-sensinode/core/lib/list.c:82: list_head(list_t list)
;	-----------------------------------------
;	 function list_head
;	-----------------------------------------
_list_head:
;	../contiki-sensinode/core/lib/list.c:84: return *list;
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
;------------------------------------------------------------
;Allocation info for local variables in function 'list_copy'
;------------------------------------------------------------
;src                       Allocated to stack - sp -4
;dest                      Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../contiki-sensinode/core/lib/list.c:100: list_copy(list_t dest, list_t src)
;	-----------------------------------------
;	 function list_copy
;	-----------------------------------------
_list_copy:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../contiki-sensinode/core/lib/list.c:102: *dest = *src;
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
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
	ljmp	__gptrput
;------------------------------------------------------------
;Allocation info for local variables in function 'list_tail'
;------------------------------------------------------------
;list                      Allocated to registers r5 r6 r7 
;l                         Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../contiki-sensinode/core/lib/list.c:117: list_tail(list_t list)
;	-----------------------------------------
;	 function list_tail
;	-----------------------------------------
_list_tail:
;	../contiki-sensinode/core/lib/list.c:121: if(*list == NULL) {
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
;	../contiki-sensinode/core/lib/list.c:122: return NULL;
	jnz	00102$
	mov	dptr,#0x0000
	mov	b,a
	ret
00102$:
;	../contiki-sensinode/core/lib/list.c:125: for(l = *list; l->next != NULL; l = l->next);
00105$:
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
	jz	00103$
	mov	ar5,r2
	mov	ar6,r3
	mov	ar7,r4
	sjmp	00105$
00103$:
;	../contiki-sensinode/core/lib/list.c:127: return l;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'list_add'
;------------------------------------------------------------
;item                      Allocated to stack - sp -4
;list                      Allocated to registers r5 r6 r7 
;l                         Allocated to registers r2 r3 r4 
;------------------------------------------------------------
;	../contiki-sensinode/core/lib/list.c:142: list_add(list_t list, void *item)
;	-----------------------------------------
;	 function list_add
;	-----------------------------------------
_list_add:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../contiki-sensinode/core/lib/list.c:147: list_remove(list, item);
	push	ar7
	push	ar6
	push	ar5
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_list_remove
	dec	sp
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
;	../contiki-sensinode/core/lib/list.c:149: ((struct list *)item)->next = NULL;
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
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
;	../contiki-sensinode/core/lib/list.c:151: l = list_tail(list);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar7
	push	ar6
	push	ar5
	lcall	_list_tail
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	pop	ar5
	pop	ar6
	pop	ar7
;	../contiki-sensinode/core/lib/list.c:153: if(l == NULL) {
	mov	a,r2
	orl	a,r3
	jnz	00102$
;	../contiki-sensinode/core/lib/list.c:154: *list = item;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,sp
	add	a,#0xfc
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
	ljmp	__gptrput
00102$:
;	../contiki-sensinode/core/lib/list.c:156: l->next = item;
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
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
	ljmp	__gptrput
;------------------------------------------------------------
;Allocation info for local variables in function 'list_push'
;------------------------------------------------------------
;item                      Allocated to stack - sp -7
;list                      Allocated to stack - sp -2
;------------------------------------------------------------
;	../contiki-sensinode/core/lib/list.c:164: list_push(list_t list, void *item)
;	-----------------------------------------
;	 function list_push
;	-----------------------------------------
_list_push:
	push	dpl
	push	dph
	push	b
;	../contiki-sensinode/core/lib/list.c:169: list_remove(list, item);
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_list_remove
	dec	sp
	dec	sp
	dec	sp
;	../contiki-sensinode/core/lib/list.c:171: ((struct list *)item)->next = *list;
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	r0,sp
	dec	r0
	dec	r0
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
;	../contiki-sensinode/core/lib/list.c:172: *list = item;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,sp
	add	a,#0xf9
	mov	r1,a
	mov	a,@r1
	lcall	__gptrput
	inc	dptr
	inc	r1
	mov	a,@r1
	lcall	__gptrput
	inc	dptr
	inc	r1
	mov	a,@r1
	lcall	__gptrput
	dec	sp
	dec	sp
	dec	sp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'list_chop'
;------------------------------------------------------------
;list                      Allocated to stack - sp -5
;l                         Allocated to stack - sp -2
;r                         Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../contiki-sensinode/core/lib/list.c:185: list_chop(list_t list)
;	-----------------------------------------
;	 function list_chop
;	-----------------------------------------
_list_chop:
	push	dpl
	push	dph
	push	b
	inc	sp
	inc	sp
	inc	sp
;	../contiki-sensinode/core/lib/list.c:189: if(*list == NULL) {
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
	mov	a,r2
	orl	a,r3
;	../contiki-sensinode/core/lib/list.c:190: return NULL;
	jnz	00102$
	mov	dptr,#0x0000
	mov	b,a
	ljmp	00109$
00102$:
;	../contiki-sensinode/core/lib/list.c:192: if(((struct list *)*list)->next == NULL) {
	mov	ar5,r2
	mov	ar6,r3
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
	mov	a,r5
	orl	a,r6
	jnz	00104$
;	../contiki-sensinode/core/lib/list.c:193: l = *list;
	mov	ar5,r2
	mov	ar6,r3
	mov	ar7,r4
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	../contiki-sensinode/core/lib/list.c:194: *list = NULL;
	mov	a,sp
	add	a,#0xfb
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
;	../contiki-sensinode/core/lib/list.c:195: return l;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	ljmp	00109$
00104$:
;	../contiki-sensinode/core/lib/list.c:198: for(l = *list; l->next->next != NULL; l = l->next);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
00107$:
	mov	r0,sp
	dec	r0
	dec	r0
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
	sjmp	00107$
00105$:
;	../contiki-sensinode/core/lib/list.c:200: r = l->next;
	mov	r0,sp
	dec	r0
	dec	r0
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
;	../contiki-sensinode/core/lib/list.c:201: l->next = NULL;
	mov	r0,sp
	dec	r0
	dec	r0
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
;	../contiki-sensinode/core/lib/list.c:203: return r;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
00109$:
	mov	a,sp
	add	a,#0xFA
	mov	sp,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'list_pop'
;------------------------------------------------------------
;list                      Allocated to registers r5 r6 r7 
;l                         Allocated to stack - sp -2
;------------------------------------------------------------
;	../contiki-sensinode/core/lib/list.c:217: list_pop(list_t list)
;	-----------------------------------------
;	 function list_pop
;	-----------------------------------------
_list_pop:
	inc	sp
	inc	sp
	inc	sp
;	../contiki-sensinode/core/lib/list.c:220: l = *list;
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
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
;	../contiki-sensinode/core/lib/list.c:221: if(*list != NULL) {
	mov	a,r2
	orl	a,r3
	jz	00102$
;	../contiki-sensinode/core/lib/list.c:222: *list = ((struct list *)*list)->next;
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
00102$:
;	../contiki-sensinode/core/lib/list.c:225: return l;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	dec	sp
	dec	sp
	dec	sp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'list_remove'
;------------------------------------------------------------
;item                      Allocated to stack - sp -10
;list                      Allocated to stack - sp -5
;l                         Allocated to stack - sp -2
;r                         Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../contiki-sensinode/core/lib/list.c:239: list_remove(list_t list, void *item)
;	-----------------------------------------
;	 function list_remove
;	-----------------------------------------
_list_remove:
	push	dpl
	push	dph
	push	b
	inc	sp
	inc	sp
	inc	sp
;	../contiki-sensinode/core/lib/list.c:243: if(*list == NULL) {
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
	mov	a,r2
	orl	a,r3
	jnz	00102$
;	../contiki-sensinode/core/lib/list.c:244: return;
	ljmp	00112$
00102$:
;	../contiki-sensinode/core/lib/list.c:247: r = NULL;
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
;	../contiki-sensinode/core/lib/list.c:248: for(l = *list; l != NULL; l = l->next) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
00110$:
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
	jnz	00130$
	ljmp	00112$
00130$:
;	../contiki-sensinode/core/lib/list.c:249: if(l == item) {
	push	ar5
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
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
	jz	00132$
	pop	ar7
	pop	ar6
	pop	ar5
	ljmp	00107$
00132$:
	pop	ar7
	pop	ar6
	pop	ar5
;	../contiki-sensinode/core/lib/list.c:250: if(r == NULL) {
	mov	a,r5
	orl	a,r6
	jnz	00104$
;	../contiki-sensinode/core/lib/list.c:252: *list = l->next;
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
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,sp
	add	a,#0xfb
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
	sjmp	00105$
00104$:
;	../contiki-sensinode/core/lib/list.c:255: r->next = l->next;
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
	mov	r3,a
	inc	dptr
	lcall	__gptrget
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
00105$:
;	../contiki-sensinode/core/lib/list.c:257: l->next = NULL;
	mov	r0,sp
	dec	r0
	dec	r0
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
;	../contiki-sensinode/core/lib/list.c:258: return;
	sjmp	00112$
00107$:
;	../contiki-sensinode/core/lib/list.c:260: r = l;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
;	../contiki-sensinode/core/lib/list.c:248: for(l = *list; l != NULL; l = l->next) {
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
	ljmp	00110$
00112$:
	mov	a,sp
	add	a,#0xFA
	mov	sp,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'list_length'
;------------------------------------------------------------
;list                      Allocated to registers r5 r6 r7 
;l                         Allocated to registers r5 r6 r7 
;n                         Allocated to registers r3 r4 
;------------------------------------------------------------
;	../contiki-sensinode/core/lib/list.c:274: list_length(list_t list)
;	-----------------------------------------
;	 function list_length
;	-----------------------------------------
_list_length:
;	../contiki-sensinode/core/lib/list.c:279: for(l = *list; l != NULL; l = l->next) {
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	r3,#0x00
	mov	r4,#0x00
00103$:
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
	jz	00101$
;	../contiki-sensinode/core/lib/list.c:280: ++n;
	inc	r3
	cjne	r3,#0x00,00115$
	inc	r4
00115$:
;	../contiki-sensinode/core/lib/list.c:279: for(l = *list; l != NULL; l = l->next) {
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
	sjmp	00103$
00101$:
;	../contiki-sensinode/core/lib/list.c:283: return n;
	mov	dpl,r3
	mov	dph,r4
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'list_insert'
;------------------------------------------------------------
;previtem                  Allocated to stack - sp -7
;newitem                   Allocated to stack - sp -10
;list                      Allocated to registers r5 r6 r7 
;sloc0                     Allocated to stack - sp -2
;------------------------------------------------------------
;	../contiki-sensinode/core/lib/list.c:302: list_insert(list_t list, void *previtem, void *newitem)
;	-----------------------------------------
;	 function list_insert
;	-----------------------------------------
_list_insert:
	inc	sp
	inc	sp
	inc	sp
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../contiki-sensinode/core/lib/list.c:304: if(previtem == NULL) {
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00102$
;	../contiki-sensinode/core/lib/list.c:305: list_push(list, newitem);
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_list_push
	dec	sp
	dec	sp
	dec	sp
	sjmp	00104$
00102$:
;	../contiki-sensinode/core/lib/list.c:308: ((struct list *)newitem)->next = ((struct list *)previtem)->next;
	mov	a,sp
	add	a,#0xf6
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
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
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
	mov	r0,sp
	dec	r0
	dec	r0
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
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	../contiki-sensinode/core/lib/list.c:309: ((struct list *)previtem)->next = newitem;
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
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
00104$:
	dec	sp
	dec	sp
	dec	sp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'list_item_next'
;------------------------------------------------------------
;item                      Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../contiki-sensinode/core/lib/list.c:324: list_item_next(void *item)
;	-----------------------------------------
;	 function list_item_next
;	-----------------------------------------
_list_item_next:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../contiki-sensinode/core/lib/list.c:326: return item == NULL? NULL: ((struct list *)item)->next;
	mov	a,r5
	orl	a,r6
	cjne	a,#0x01,00108$
00108$:
	clr	a
	rlc	a
	mov	r4,a
	jz	00103$
	mov	r2,#0x00
	mov	r3,#0x00
	mov	r4,#0x00
	sjmp	00104$
00103$:
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
00104$:
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
