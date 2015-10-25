;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.4.0 #8981 (Oct 24 2015) (Linux)
; This file was generated Sun Oct 25 01:52:01 2015
;--------------------------------------------------------
	.module route
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _rimeaddr_cmp
	.globl _rimeaddr_copy
	.globl _ctimer_set
	.globl _memb_free
	.globl _memb_alloc
	.globl _memb_init
	.globl _list_item_next
	.globl _list_remove
	.globl _list_chop
	.globl _list_push
	.globl _list_pop
	.globl _list_head
	.globl _list_init
	.globl _route_init
	.globl _route_add
	.globl _route_lookup
	.globl _route_refresh
	.globl _route_decay
	.globl _route_remove
	.globl _route_flush_all
	.globl _route_set_lifetime
	.globl _route_num
	.globl _route_get
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
_route_mem_memb_count:
	.ds 8
_route_mem_memb_mem:
	.ds 96
_t:
	.ds 21
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_route_table_list:
	.ds 3
_route_table:
	.ds 3
_route_mem:
	.ds 10
_max_time:
	.ds 2
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
;Allocation info for local variables in function 'periodic'
;------------------------------------------------------------
;ptr                       Allocated to registers 
;e                         Allocated to stack - sp -2
;------------------------------------------------------------
;	../contiki-sensinode/core/net/rime/route.c:92: periodic(void *ptr)
;	-----------------------------------------
;	 function periodic
;	-----------------------------------------
_periodic:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	inc	sp
	inc	sp
	inc	sp
;	../contiki-sensinode/core/net/rime/route.c:96: for(e = list_head(route_table); e != NULL; e = list_item_next(e)) {
	mov	dptr,#_route_table
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
	lcall	_list_head
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
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
	jnz	00118$
	ljmp	00103$
00118$:
;	../contiki-sensinode/core/net/rime/route.c:97: e->time++;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x09
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
	inc	r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r7
	lcall	__gptrput
;	../contiki-sensinode/core/net/rime/route.c:98: if(e->time >= max_time) {
	mov	dptr,#_max_time
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	r4,#0x00
	clr	c
	mov	a,r7
	subb	a,r5
	mov	a,r4
	xrl	a,#0x80
	mov	b,r6
	xrl	b,#0x80
	subb	a,b
	jc	00106$
;	../contiki-sensinode/core/net/rime/route.c:103: list_remove(route_table, e);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	dptr,#_route_table
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
	lcall	_list_remove
	dec	sp
	dec	sp
	dec	sp
;	../contiki-sensinode/core/net/rime/route.c:104: memb_free(&route_mem, e);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#_route_mem
	mov	b,#0x00
	lcall	_memb_free
	dec	sp
	dec	sp
	dec	sp
00106$:
;	../contiki-sensinode/core/net/rime/route.c:96: for(e = list_head(route_table); e != NULL; e = list_item_next(e)) {
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
	lcall	_list_item_next
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	ljmp	00105$
00103$:
;	../contiki-sensinode/core/net/rime/route.c:108: ctimer_set(&t, CLOCK_SECOND, periodic, NULL);
	clr	a
	push	acc
	push	acc
	push	acc
	mov	a,#_periodic
	push	acc
	mov	a,#(_periodic >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	clr	a
	push	acc
	mov	dptr,#_t
	mov	b,#0x00
	lcall	_ctimer_set
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	dec	sp
	dec	sp
	dec	sp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'route_init'
;------------------------------------------------------------
;	../contiki-sensinode/core/net/rime/route.c:112: route_init(void)
;	-----------------------------------------
;	 function route_init
;	-----------------------------------------
_route_init:
;	../contiki-sensinode/core/net/rime/route.c:114: list_init(route_table);
	mov	dptr,#_route_table
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
;	../contiki-sensinode/core/net/rime/route.c:115: memb_init(&route_mem);
	mov	dptr,#_route_mem
	mov	b,#0x00
	lcall	_memb_init
;	../contiki-sensinode/core/net/rime/route.c:117: ctimer_set(&t, CLOCK_SECOND, periodic, NULL);
	clr	a
	push	acc
	push	acc
	push	acc
	mov	a,#_periodic
	push	acc
	mov	a,#(_periodic >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	clr	a
	push	acc
	mov	dptr,#_t
	mov	b,#0x00
	lcall	_ctimer_set
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'route_add'
;------------------------------------------------------------
;nexthop                   Allocated to stack - sp -7
;cost                      Allocated to stack - sp -8
;seqno                     Allocated to stack - sp -9
;dest                      Allocated to registers r5 r6 r7 
;e                         Allocated to stack - sp -2
;------------------------------------------------------------
;	../contiki-sensinode/core/net/rime/route.c:121: route_add(const rimeaddr_t *dest, const rimeaddr_t *nexthop,
;	-----------------------------------------
;	 function route_add
;	-----------------------------------------
_route_add:
	inc	sp
	inc	sp
	inc	sp
;	../contiki-sensinode/core/net/rime/route.c:127: e = route_lookup(dest);
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	push	ar7
	push	ar6
	push	ar5
	lcall	_route_lookup
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	pop	ar5
	pop	ar6
	pop	ar7
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
;	../contiki-sensinode/core/net/rime/route.c:128: if(e != NULL && rimeaddr_cmp(&e->nexthop, nexthop)) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00118$
	ljmp	00104$
00118$:
	push	ar5
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xfb
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
	push	ar5
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
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_rimeaddr_cmp
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	pop	ar5
	mov	a,r6
	orl	a,r7
	pop	ar7
	pop	ar6
	pop	ar5
	jz	00104$
;	../contiki-sensinode/core/net/rime/route.c:129: list_remove(route_table, e);
	push	ar5
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	dptr,#_route_table
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	push	ar7
	push	ar6
	push	ar5
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
	pop	ar5
	pop	ar6
	pop	ar7
	pop	ar7
	pop	ar6
	pop	ar5
	sjmp	00105$
00104$:
;	../contiki-sensinode/core/net/rime/route.c:132: e = memb_alloc(&route_mem);
	mov	dptr,#_route_mem
	mov	b,#0x00
	push	ar7
	push	ar6
	push	ar5
	lcall	_memb_alloc
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	pop	ar5
	pop	ar6
	pop	ar7
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
;	../contiki-sensinode/core/net/rime/route.c:133: if(e == NULL) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00105$
;	../contiki-sensinode/core/net/rime/route.c:135: e = list_chop(route_table);
	mov	dptr,#_route_table
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	_list_chop
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	pop	ar5
	pop	ar6
	pop	ar7
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
00105$:
;	../contiki-sensinode/core/net/rime/route.c:143: rimeaddr_copy(&e->dest, dest);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x03
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_rimeaddr_copy
	dec	sp
	dec	sp
	dec	sp
;	../contiki-sensinode/core/net/rime/route.c:144: rimeaddr_copy(&e->nexthop, nexthop);
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
	lcall	_rimeaddr_copy
	dec	sp
	dec	sp
	dec	sp
;	../contiki-sensinode/core/net/rime/route.c:145: e->cost = cost;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x08
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
	add	a,#0xf8
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
;	../contiki-sensinode/core/net/rime/route.c:146: e->seqno = seqno;
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
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
;	../contiki-sensinode/core/net/rime/route.c:147: e->time = 0;
	mov	r0,sp
	dec	r0
	dec	r0
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
	clr	a
	lcall	__gptrput
;	../contiki-sensinode/core/net/rime/route.c:148: e->decay = 0;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x0A
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
;	../contiki-sensinode/core/net/rime/route.c:151: list_push(route_table, e);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	dptr,#_route_table
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
	lcall	_list_push
	dec	sp
	dec	sp
	dec	sp
;	../contiki-sensinode/core/net/rime/route.c:158: return 0;
	mov	dptr,#0x0000
	dec	sp
	dec	sp
	dec	sp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'route_lookup'
;------------------------------------------------------------
;dest                      Allocated to stack - sp -8
;e                         Allocated to stack - sp -5
;lowest_cost               Allocated to registers r4 
;best_entry                Allocated to stack - sp -2
;------------------------------------------------------------
;	../contiki-sensinode/core/net/rime/route.c:162: route_lookup(const rimeaddr_t *dest)
;	-----------------------------------------
;	 function route_lookup
;	-----------------------------------------
_route_lookup:
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x06
	mov	sp,a
;	../contiki-sensinode/core/net/rime/route.c:168: lowest_cost = -1;
	mov	r4,#0xFF
;	../contiki-sensinode/core/net/rime/route.c:169: best_entry = NULL;
	mov	r0,sp
	dec	r0
	dec	r0
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,#0x00
;	../contiki-sensinode/core/net/rime/route.c:172: for(e = list_head(route_table); e != NULL; e = list_item_next(e)) {
	mov	dptr,#_route_table
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	push	ar4
	lcall	_list_head
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	pop	ar4
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
00107$:
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
	jnz	00123$
	ljmp	00105$
00123$:
;	../contiki-sensinode/core/net/rime/route.c:176: if(rimeaddr_cmp(dest, &e->dest)) {
	push	ar4
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,#0x03
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	push	ar2
	push	ar3
	push	ar4
	mov	a,sp
	add	a,#0xf4
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_rimeaddr_cmp
	mov	r3,dpl
	mov	r4,dph
	dec	sp
	dec	sp
	dec	sp
	mov	a,r3
	orl	a,r4
	pop	ar4
	jz	00108$
;	../contiki-sensinode/core/net/rime/route.c:177: if(e->cost < lowest_cost) {
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x08
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
	mov	r7,a
	clr	c
	subb	a,r4
	jnc	00108$
;	../contiki-sensinode/core/net/rime/route.c:178: best_entry = e;
	mov	a,sp
	add	a,#0xfb
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
;	../contiki-sensinode/core/net/rime/route.c:179: lowest_cost = e->cost;
	mov	ar4,r7
00108$:
;	../contiki-sensinode/core/net/rime/route.c:172: for(e = list_head(route_table); e != NULL; e = list_item_next(e)) {
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar4
	lcall	_list_item_next
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	pop	ar4
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	ljmp	00107$
00105$:
;	../contiki-sensinode/core/net/rime/route.c:183: return best_entry;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	xch	a,r0
	mov	a,sp
	add	a,#0xF7
	mov	sp,a
	xch	a,r0
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'route_refresh'
;------------------------------------------------------------
;e                         Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../contiki-sensinode/core/net/rime/route.c:187: route_refresh(struct route_entry *e)
;	-----------------------------------------
;	 function route_refresh
;	-----------------------------------------
_route_refresh:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../contiki-sensinode/core/net/rime/route.c:189: if(e != NULL) {
	mov	a,r5
	orl	a,r6
	jz	00103$
;	../contiki-sensinode/core/net/rime/route.c:192: e->time = 0;
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
;	../contiki-sensinode/core/net/rime/route.c:193: e->decay = 0;
	mov	a,#0x0A
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	ljmp	__gptrput
00103$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'route_decay'
;------------------------------------------------------------
;e                         Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../contiki-sensinode/core/net/rime/route.c:205: route_decay(struct route_entry *e)
;	-----------------------------------------
;	 function route_decay
;	-----------------------------------------
_route_decay:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../contiki-sensinode/core/net/rime/route.c:216: if(e->time != e->time_last_decay) {
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
	mov	r4,a
	mov	a,#0x0B
	add	a,r5
	mov	r1,a
	clr	a
	addc	a,r6
	mov	r2,a
	mov	ar3,r7
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	r0,a
	mov	a,r4
	cjne	a,ar0,00113$
	ret
00113$:
;	../contiki-sensinode/core/net/rime/route.c:218: e->time_last_decay = e->time;
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	mov	a,r4
	lcall	__gptrput
;	../contiki-sensinode/core/net/rime/route.c:219: e->decay++;
	mov	a,#0x0A
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
	mov	r1,a
	inc	r1
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r1
	lcall	__gptrput
;	../contiki-sensinode/core/net/rime/route.c:221: if(e->decay >= DECAY_THRESHOLD) {
	cjne	r1,#0x08,00114$
00114$:
	jc	00105$
;	../contiki-sensinode/core/net/rime/route.c:226: route_remove(e);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	ljmp	_route_remove
00105$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'route_remove'
;------------------------------------------------------------
;e                         Allocated to registers r7 r5 r6 
;sloc0                     Allocated to stack - sp -2
;------------------------------------------------------------
;	../contiki-sensinode/core/net/rime/route.c:232: route_remove(struct route_entry *e)
;	-----------------------------------------
;	 function route_remove
;	-----------------------------------------
_route_remove:
	inc	sp
	inc	sp
	inc	sp
	mov	r7,dpl
	mov	r5,dph
	mov	r6,b
;	../contiki-sensinode/core/net/rime/route.c:234: list_remove(route_table, e);
	mov	ar2,r7
	mov	ar3,r5
	mov	ar4,r6
	mov	dptr,#_route_table
	mov	r0,sp
	dec	r0
	dec	r0
	movx	a,@dptr
	mov	@r0,a
	inc	dptr
	movx	a,@dptr
	inc	r0
	mov	@r0,a
	inc	dptr
	movx	a,@dptr
	inc	r0
	mov	@r0,a
	push	ar7
	push	ar6
	push	ar5
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
	lcall	_list_remove
	dec	sp
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
;	../contiki-sensinode/core/net/rime/route.c:235: memb_free(&route_mem, e);
	mov	ar4,r7
	push	ar4
	push	ar5
	push	ar6
	mov	dptr,#_route_mem
	mov	b,#0x00
	lcall	_memb_free
	dec	sp
	dec	sp
	dec	sp
	dec	sp
	dec	sp
	dec	sp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'route_flush_all'
;------------------------------------------------------------
;e                         Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../contiki-sensinode/core/net/rime/route.c:239: route_flush_all(void)
;	-----------------------------------------
;	 function route_flush_all
;	-----------------------------------------
_route_flush_all:
;	../contiki-sensinode/core/net/rime/route.c:243: while(1) {
00105$:
;	../contiki-sensinode/core/net/rime/route.c:244: e = list_pop(route_table);
	mov	dptr,#_route_table
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
	lcall	_list_pop
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../contiki-sensinode/core/net/rime/route.c:245: if(e != NULL) {
	mov	a,r5
	orl	a,r6
	jz	00107$
;	../contiki-sensinode/core/net/rime/route.c:246: memb_free(&route_mem, e);
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#_route_mem
	mov	b,#0x00
	lcall	_memb_free
	dec	sp
	dec	sp
	dec	sp
;	../contiki-sensinode/core/net/rime/route.c:248: break;
	sjmp	00105$
00107$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'route_set_lifetime'
;------------------------------------------------------------
;seconds                   Allocated to registers 
;------------------------------------------------------------
;	../contiki-sensinode/core/net/rime/route.c:254: route_set_lifetime(int seconds)
;	-----------------------------------------
;	 function route_set_lifetime
;	-----------------------------------------
_route_set_lifetime:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_max_time
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../contiki-sensinode/core/net/rime/route.c:256: max_time = seconds;
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'route_num'
;------------------------------------------------------------
;e                         Allocated to registers r5 r6 r7 
;i                         Allocated to stack - sp -1
;------------------------------------------------------------
;	../contiki-sensinode/core/net/rime/route.c:260: route_num(void)
;	-----------------------------------------
;	 function route_num
;	-----------------------------------------
_route_num:
	inc	sp
	inc	sp
;	../contiki-sensinode/core/net/rime/route.c:265: for(e = list_head(route_table); e != NULL; e = list_item_next(e)) {
	mov	dptr,#_route_table
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
	lcall	_list_head
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	r0,sp
	dec	r0
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
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
;	../contiki-sensinode/core/net/rime/route.c:266: i++;
	mov	r0,sp
	dec	r0
	inc	@r0
	cjne	@r0,#0x00,00115$
	inc	r0
	inc	@r0
00115$:
;	../contiki-sensinode/core/net/rime/route.c:265: for(e = list_head(route_table); e != NULL; e = list_item_next(e)) {
	mov	ar2,r5
	mov	ar3,r6
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_list_item_next
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	ar5,r2
	mov	ar6,r3
	mov	ar7,r4
	sjmp	00103$
00101$:
;	../contiki-sensinode/core/net/rime/route.c:268: return i;
	mov	r0,sp
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	dec	sp
	dec	sp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'route_get'
;------------------------------------------------------------
;num                       Allocated to stack - sp -3
;e                         Allocated to registers r3 r4 r5 
;i                         Allocated to stack - sp -1
;------------------------------------------------------------
;	../contiki-sensinode/core/net/rime/route.c:272: route_get(int num)
;	-----------------------------------------
;	 function route_get
;	-----------------------------------------
_route_get:
	push	dpl
	push	dph
	inc	sp
	inc	sp
;	../contiki-sensinode/core/net/rime/route.c:277: for(e = list_head(route_table); e != NULL; e = list_item_next(e)) {
	mov	dptr,#_route_table
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	_list_head
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	mov	r0,sp
	dec	r0
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
00105$:
	clr	a
	push	acc
	push	acc
	push	acc
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jz	00103$
;	../contiki-sensinode/core/net/rime/route.c:278: if(i == num) {
	mov	r0,sp
	dec	r0
	mov	a,sp
	add	a,#0xfd
	mov	r1,a
	mov	b,@r0
	mov	a,@r1
	cjne	a,b,00119$
	inc	r0
	mov	b,@r0
	inc	r1
	mov	a,@r1
	cjne	a,b,00119$
	sjmp	00120$
00119$:
	sjmp	00102$
00120$:
;	../contiki-sensinode/core/net/rime/route.c:279: return e;
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	sjmp	00107$
00102$:
;	../contiki-sensinode/core/net/rime/route.c:281: i++;
	mov	r0,sp
	dec	r0
	inc	@r0
	cjne	@r0,#0x00,00121$
	inc	r0
	inc	@r0
00121$:
;	../contiki-sensinode/core/net/rime/route.c:277: for(e = list_head(route_table); e != NULL; e = list_item_next(e)) {
	mov	ar2,r3
	mov	ar6,r4
	mov	ar7,r5
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	lcall	_list_item_next
	mov	r2,dpl
	mov	r6,dph
	mov	r7,b
	mov	ar3,r2
	mov	ar4,r6
	mov	ar5,r7
	sjmp	00105$
00103$:
;	../contiki-sensinode/core/net/rime/route.c:283: return NULL;
	mov	dptr,#0x0000
	mov	b,#0x00
00107$:
	xch	a,r0
	mov	a,sp
	add	a,#0xFC
	mov	sp,a
	xch	a,r0
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
__xinit__route_table_list:
; generic printIvalPtr
	.byte #0x00,#0x00,#0x00
__xinit__route_table:
	.byte _route_table_list,(_route_table_list >> 8),#0x00
__xinit__route_mem:
	.byte #0x0C,#0x00	; 12
	.byte #0x08,#0x00	; 8
	.byte _route_mem_memb_count,(_route_mem_memb_count >> 8),#0x00
	.byte _route_mem_memb_mem,(_route_mem_memb_mem >> 8),#0x00
__xinit__max_time:
	.byte #0x3C,#0x00	;  60
	.area CABS    (ABS,CODE)
