;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.4.0 #8981 (Oct 24 2015) (Linux)
; This file was generated Sun Oct 25 01:52:07 2015
;--------------------------------------------------------
	.module csma
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _csma_driver
	.globl _memb_free
	.globl _memb_alloc
	.globl _memb_init
	.globl _list_item_next
	.globl _list_length
	.globl _list_remove
	.globl _list_add
	.globl _list_push
	.globl _list_pop
	.globl _list_head
	.globl _list_init
	.globl _random_rand
	.globl _ctimer_stop
	.globl _ctimer_set
	.globl _queuebuf_free
	.globl _queuebuf_update_attr_from_packetbuf
	.globl _queuebuf_new_from_packetbuf
	.globl _packetbuf_addr
	.globl _packetbuf_attr
	.globl _rimeaddr_cmp
	.globl _rimeaddr_copy
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
_neighbor_memb_memb_count:
	.ds 2
_neighbor_memb_memb_mem:
	.ds 70
_packet_memb_memb_count:
	.ds 8
_packet_memb_memb_mem:
	.ds 72
_metadata_memb_memb_count:
	.ds 8
_metadata_memb_memb_mem:
	.ds 48
_mac_status:
	.ds 2
_packet_sent_cb_sent_1_189:
	.ds 2
_packet_sent_cb_cptr_1_189:
	.ds 3
_packet_sent_cb_num_tx_1_189:
	.ds 2
_send_packet_addr_2_205:
	.ds 3
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_neighbor_memb:
	.ds 10
_packet_memb:
	.ds 10
_metadata_memb:
	.ds 10
_neighbor_list_list:
	.ds 3
_neighbor_list:
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
;Allocation info for local variables in function 'neighbor_queue_from_addr'
;------------------------------------------------------------
;addr                      Allocated to stack - sp -2
;n                         Allocated to registers r2 r3 r4 
;------------------------------------------------------------
;	../contiki-sensinode/core/net/mac/csma.c:123: neighbor_queue *neighbor_queue_from_addr(const rimeaddr_t *addr) {
;	-----------------------------------------
;	 function neighbor_queue_from_addr
;	-----------------------------------------
_neighbor_queue_from_addr:
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
;	../contiki-sensinode/core/net/mac/csma.c:124: struct neighbor_queue *n = list_head(neighbor_list);
	mov	dptr,#_neighbor_list
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
	lcall	_list_head
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	../contiki-sensinode/core/net/mac/csma.c:125: while(n != NULL) {
00103$:
	mov	a,r2
	orl	a,r3
	jz	00105$
;	../contiki-sensinode/core/net/mac/csma.c:126: if(rimeaddr_cmp(&n->addr, addr)) {
	mov	a,#0x03
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	push	ar4
	push	ar3
	push	ar2
	mov	a,sp
	add	a,#0xfb
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
	pop	ar2
	pop	ar3
	pop	ar4
	mov	a,r6
	orl	a,r7
	jz	00102$
;	../contiki-sensinode/core/net/mac/csma.c:127: return n;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	sjmp	00106$
00102$:
;	../contiki-sensinode/core/net/mac/csma.c:129: n = list_item_next(n);
	mov	ar5,r2
	mov	ar6,r3
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_list_item_next
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	ar2,r5
	mov	ar3,r6
	mov	ar4,r7
	sjmp	00103$
00105$:
;	../contiki-sensinode/core/net/mac/csma.c:131: return NULL;
	mov	dptr,#0x0000
	mov	b,#0x00
00106$:
	dec	sp
	dec	sp
	dec	sp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'default_timebase'
;------------------------------------------------------------
;time                      Allocated to registers r6 r7 
;------------------------------------------------------------
;	../contiki-sensinode/core/net/mac/csma.c:135: default_timebase(void)
;	-----------------------------------------
;	 function default_timebase
;	-----------------------------------------
_default_timebase:
;	../contiki-sensinode/core/net/mac/csma.c:140: time = NETSTACK_RDC.channel_check_interval();
	mov	dptr,#(_nullrdc_driver + 0x000f)
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	lcall	__sdcc_call_dptr
	mov	r6,dpl
	mov	r7,dph
;	../contiki-sensinode/core/net/mac/csma.c:145: if(time == 0) {
	mov	a,r6
	orl	a,r7
;	../contiki-sensinode/core/net/mac/csma.c:146: time = CLOCK_SECOND / NETSTACK_RDC_CHANNEL_CHECK_RATE;
	jnz	00102$
	mov	r6,#0x10
	mov	r7,a
00102$:
;	../contiki-sensinode/core/net/mac/csma.c:148: return time;
	mov	dpl,r6
	mov	dph,r7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'transmit_packet_list'
;------------------------------------------------------------
;ptr                       Allocated to registers r5 r6 r7 
;n                         Allocated to stack - sp -5
;q                         Allocated to stack - sp -2
;------------------------------------------------------------
;	../contiki-sensinode/core/net/mac/csma.c:152: transmit_packet_list(void *ptr)
;	-----------------------------------------
;	 function transmit_packet_list
;	-----------------------------------------
_transmit_packet_list:
	mov	a,sp
	add	a,#0x06
	mov	sp,a
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../contiki-sensinode/core/net/mac/csma.c:154: struct neighbor_queue *n = ptr;
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	../contiki-sensinode/core/net/mac/csma.c:155: if(n) {
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00113$
	ljmp	00105$
00113$:
;	../contiki-sensinode/core/net/mac/csma.c:156: struct rdc_buf_list *q = list_head(n->queued_packet_list);
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x20
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
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_list_head
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
;	../contiki-sensinode/core/net/mac/csma.c:157: if(q != NULL) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00105$
;	../contiki-sensinode/core/net/mac/csma.c:161: NETSTACK_RDC.send_list(packet_sent, n, q);
	mov	dptr,#(_nullrdc_driver + 0x0007)
	clr	a
	movc	a,@a+dptr
	mov	r3,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	push	ar4
	push	ar3
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	push	ar2
	push	ar6
	push	ar7
	lcall	00115$
	sjmp	00116$
00115$:
	push	ar3
	push	ar4
	mov	dptr,#_packet_sent
	ret
00116$:
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	pop	ar3
	pop	ar4
;	../contiki-sensinode/core/net/mac/csma.c:163: packet_sent_cb(n, mac_status);
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	dptr,#_mac_status
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_packet_sent_cb
	dec	sp
	dec	sp
00105$:
	mov	a,sp
	add	a,#0xFA
	mov	sp,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'free_first_packet'
;------------------------------------------------------------
;n                         Allocated to stack - sp -7
;q                         Allocated to stack - sp -2
;sloc0                     Allocated to stack - sp -4
;------------------------------------------------------------
;	../contiki-sensinode/core/net/mac/csma.c:170: free_first_packet(struct neighbor_queue *n)
;	-----------------------------------------
;	 function free_first_packet
;	-----------------------------------------
_free_first_packet:
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x05
;	../contiki-sensinode/core/net/mac/csma.c:172: struct rdc_buf_list *q = list_head(n->queued_packet_list);
	mov	sp,a
	add	a,#0xf9
	mov	r0,a
	mov	a,#0x20
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
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar4
	push	ar3
	push	ar2
	lcall	_list_head
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	pop	ar2
	pop	ar3
	pop	ar4
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	../contiki-sensinode/core/net/mac/csma.c:173: if(q != NULL) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00114$
	ljmp	00106$
00114$:
;	../contiki-sensinode/core/net/mac/csma.c:175: queuebuf_free(q->buf);
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
	push	ar4
	push	ar3
	push	ar2
	lcall	_queuebuf_free
	pop	ar2
	pop	ar3
	pop	ar4
;	../contiki-sensinode/core/net/mac/csma.c:176: list_pop(n->queued_packet_list);
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
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar4
	push	ar3
	push	ar2
	lcall	_list_pop
	pop	ar2
	pop	ar3
	pop	ar4
;	../contiki-sensinode/core/net/mac/csma.c:177: memb_free(&metadata_memb, q->ptr);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x06
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
	push	ar4
	push	ar3
	push	ar2
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#_metadata_memb
	mov	b,#0x00
	lcall	_memb_free
	dec	sp
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar4
;	../contiki-sensinode/core/net/mac/csma.c:178: memb_free(&packet_memb, q);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	push	ar4
	push	ar3
	push	ar2
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#_packet_memb
	mov	b,#0x00
	lcall	_memb_free
	dec	sp
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar4
;	../contiki-sensinode/core/net/mac/csma.c:181: if(list_head(n->queued_packet_list)) {
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
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_list_head
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,r5
	orl	a,r6
	jnz	00115$
	ljmp	00102$
00115$:
;	../contiki-sensinode/core/net/mac/csma.c:183: n->transmissions = 0;
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	a,#0x1A
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
;	../contiki-sensinode/core/net/mac/csma.c:184: n->collisions = 0;
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	a,#0x1B
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
;	../contiki-sensinode/core/net/mac/csma.c:185: n->deferrals = 0;
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	a,#0x1C
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
;	../contiki-sensinode/core/net/mac/csma.c:187: ctimer_set(&n->transmit_timer, default_timebase(), transmit_packet_list, n);
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	push	ar7
	push	ar6
	push	ar5
	lcall	_default_timebase
	xch	a,r0
	mov	a,sp
	add	a,#0xf9
	xch	a,r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	a,#0x05
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
	mov	a,#_transmit_packet_list
	push	acc
	mov	a,#(_transmit_packet_list >> 8)
	push	acc
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_ctimer_set
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	sjmp	00106$
00102$:
;	../contiki-sensinode/core/net/mac/csma.c:190: ctimer_stop(&n->transmit_timer);
	mov	a,sp
	add	a,#0xf9
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
	lcall	_ctimer_stop
;	../contiki-sensinode/core/net/mac/csma.c:191: list_remove(neighbor_list, n);
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	dptr,#_neighbor_list
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
;	../contiki-sensinode/core/net/mac/csma.c:192: memb_free(&neighbor_memb, n);
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#_neighbor_memb
	mov	b,#0x00
	lcall	_memb_free
	dec	sp
	dec	sp
	dec	sp
00106$:
	mov	a,sp
	add	a,#0xF8
	mov	sp,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'packet_sent'
;------------------------------------------------------------
;status                    Allocated to stack - sp -3
;num_transmissions         Allocated to stack - sp -5
;ptr                       Allocated to registers 
;------------------------------------------------------------
;	../contiki-sensinode/core/net/mac/csma.c:201: packet_sent(void *ptr, int status, int num_transmissions)
;	-----------------------------------------
;	 function packet_sent
;	-----------------------------------------
_packet_sent:
;	../contiki-sensinode/core/net/mac/csma.c:203: mac_status = status;
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	dptr,#_mac_status
	mov	a,@r0
	movx	@dptr,a
	inc	r0
	mov	a,@r0
	inc	dptr
	movx	@dptr,a
;	../contiki-sensinode/core/net/mac/csma.c:204: return;
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'packet_sent_cb'
;------------------------------------------------------------
;status                    Allocated to stack - sp -16
;ptr                       Allocated to registers r5 r6 r7 
;n                         Allocated to stack - sp -10
;q                         Allocated to stack - sp -7
;metadata                  Allocated to stack - sp -4
;time                      Allocated to stack - sp -1
;backoff_transmissions     Allocated to registers r3 r4 
;sloc0                     Allocated to stack - sp -12
;sent                      Allocated with name '_packet_sent_cb_sent_1_189'
;cptr                      Allocated with name '_packet_sent_cb_cptr_1_189'
;num_tx                    Allocated with name '_packet_sent_cb_num_tx_1_189'
;------------------------------------------------------------
;	../contiki-sensinode/core/net/mac/csma.c:208: packet_sent_cb(void *ptr, int status)
;	-----------------------------------------
;	 function packet_sent_cb
;	-----------------------------------------
_packet_sent_cb:
	mov	a,sp
	add	a,#0x0D
	mov	sp,a
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../contiki-sensinode/core/net/mac/csma.c:214: struct neighbor_queue *n = ptr;
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	../contiki-sensinode/core/net/mac/csma.c:215: struct rdc_buf_list *q = list_head(n->queued_packet_list);
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	a,#0x20
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
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_list_head
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
;	../contiki-sensinode/core/net/mac/csma.c:216: struct qbuf_metadata *metadata = (struct qbuf_metadata *)q->ptr;
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	a,#0x06
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
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
;	../contiki-sensinode/core/net/mac/csma.c:223: switch(status) {
	mov	a,sp
	add	a,#0xf0
	mov	r0,a
	cjne	@r0,#0x00,00159$
	inc	r0
	cjne	@r0,#0x00,00159$
	sjmp	00102$
00159$:
	mov	a,sp
	add	a,#0xf0
	mov	r0,a
	cjne	@r0,#0x01,00160$
	inc	r0
	cjne	@r0,#0x00,00160$
	sjmp	00103$
00160$:
	mov	a,sp
	add	a,#0xf0
	mov	r0,a
	cjne	@r0,#0x02,00161$
	inc	r0
	cjne	@r0,#0x00,00161$
	sjmp	00102$
00161$:
	mov	a,sp
	add	a,#0xf0
	mov	r0,a
;	../contiki-sensinode/core/net/mac/csma.c:225: case MAC_TX_NOACK:
	cjne	@r0,#0x03,00105$
	inc	r0
	cjne	@r0,#0x00,00105$
	sjmp	00104$
00102$:
;	../contiki-sensinode/core/net/mac/csma.c:226: n->transmissions++;
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	a,#0x1A
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
;	../contiki-sensinode/core/net/mac/csma.c:227: break;
;	../contiki-sensinode/core/net/mac/csma.c:228: case MAC_TX_COLLISION:
	sjmp	00105$
00103$:
;	../contiki-sensinode/core/net/mac/csma.c:229: n->collisions++;
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	a,#0x1B
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
	mov	r4,a
	inc	r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r4
	lcall	__gptrput
;	../contiki-sensinode/core/net/mac/csma.c:230: break;
;	../contiki-sensinode/core/net/mac/csma.c:231: case MAC_TX_DEFERRED:
	sjmp	00105$
00104$:
;	../contiki-sensinode/core/net/mac/csma.c:232: n->deferrals++;
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	a,#0x1C
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
	mov	r4,a
	inc	r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r4
	lcall	__gptrput
;	../contiki-sensinode/core/net/mac/csma.c:295: mac_call_sent_callback(sent, cptr, status, num_tx);
;	../contiki-sensinode/core/net/mac/csma.c:234: }
00105$:
;	../contiki-sensinode/core/net/mac/csma.c:236: sent = metadata->sent;
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	dptr,#_packet_sent_cb_sent_1_189
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../contiki-sensinode/core/net/mac/csma.c:237: cptr = metadata->cptr;
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
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
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	dptr,#_packet_sent_cb_cptr_1_189
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../contiki-sensinode/core/net/mac/csma.c:238: num_tx = n->transmissions;
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	a,#0x1A
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
	mov	r4,a
	mov	dptr,#_packet_sent_cb_num_tx_1_189
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	../contiki-sensinode/core/net/mac/csma.c:240: if(status == MAC_TX_COLLISION ||
	mov	a,sp
	add	a,#0xf0
	mov	r0,a
	cjne	@r0,#0x01,00163$
	inc	r0
	cjne	@r0,#0x00,00163$
	sjmp	00109$
00163$:
;	../contiki-sensinode/core/net/mac/csma.c:241: status == MAC_TX_NOACK) {
	mov	a,sp
	add	a,#0xf0
	mov	r0,a
	cjne	@r0,#0x02,00164$
	inc	r0
	cjne	@r0,#0x00,00164$
	sjmp	00165$
00164$:
	ljmp	00126$
00165$:
;	../contiki-sensinode/core/net/mac/csma.c:255: }
00109$:
;	../contiki-sensinode/core/net/mac/csma.c:259: time = default_timebase();
	push	ar7
	push	ar6
	push	ar5
	lcall	_default_timebase
	mov	r4,dpl
	mov	r3,dph
	pop	ar5
	pop	ar6
	pop	ar7
	mov	r0,sp
	dec	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar3
;	../contiki-sensinode/core/net/mac/csma.c:264: backoff_transmissions = n->transmissions + 1;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	push	ar5
	push	ar6
	push	ar7
	mov	r7,#0x00
	mov	a,#0x01
	add	a,r2
	mov	r3,a
	clr	a
	addc	a,r7
	mov	r4,a
;	../contiki-sensinode/core/net/mac/csma.c:269: if(backoff_transmissions > 3) {
	clr	c
	mov	a,#0x03
	subb	a,r3
	mov	a,#(0x00 ^ 0x80)
	mov	b,r4
	xrl	b,#0x80
	subb	a,b
	pop	ar7
	pop	ar6
	pop	ar5
	jnc	00111$
;	../contiki-sensinode/core/net/mac/csma.c:270: backoff_transmissions = 3;
	mov	r3,#0x03
	mov	r4,#0x00
00111$:
;	../contiki-sensinode/core/net/mac/csma.c:273: time = time + (random_rand() % (backoff_transmissions * time));
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_random_rand
	xch	a,r0
	mov	a,sp
	add	a,#0xef
	xch	a,r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	pop	ar3
	pop	ar4
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r3
	mov	dph,r4
	lcall	__mulint
	mov	r3,dpl
	mov	r4,dph
	dec	sp
	dec	sp
	push	ar3
	push	ar4
	mov	a,sp
	add	a,#0xef
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	__moduint
	mov	r3,dpl
	mov	r4,dph
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
	mov	r0,sp
	dec	r0
	mov	a,r3
	add	a,@r0
	mov	@r0,a
	mov	a,r4
	inc	r0
	addc	a,@r0
	mov	@r0,a
;	../contiki-sensinode/core/net/mac/csma.c:275: if(n->transmissions < metadata->max_transmissions) {
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,#0x05
	add	a,@r0
	mov	r4,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r4
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	clr	c
	mov	a,r5
	subb	a,r4
	jnc	00118$
;	../contiki-sensinode/core/net/mac/csma.c:278: transmit_packet_list, n);
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
;	../contiki-sensinode/core/net/mac/csma.c:277: ctimer_set(&n->transmit_timer, time,
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	a,#0x05
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
	mov	a,#_transmit_packet_list
	push	acc
	mov	a,#(_transmit_packet_list >> 8)
	push	acc
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_ctimer_set
	mov	a,sp
	add	a,#0xf9
;	../contiki-sensinode/core/net/mac/csma.c:281: queuebuf_update_attr_from_packetbuf(q->buf);
	mov	sp,a
	add	a,#0xf9
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
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_queuebuf_update_attr_from_packetbuf
	ljmp	00129$
00118$:
;	../contiki-sensinode/core/net/mac/csma.c:285: free_first_packet(n);
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_free_first_packet
;	../contiki-sensinode/core/net/mac/csma.c:286: mac_call_sent_callback(sent, cptr, status, num_tx);
	mov	dptr,#_packet_sent_cb_sent_1_189
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jnz	00168$
	ljmp	00129$
00168$:
	mov	dptr,#_packet_sent_cb_cptr_1_189
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_packet_sent_cb_num_tx_1_189
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	a,sp
	add	a,#0xee
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	lcall	00169$
	sjmp	00170$
00169$:
	mov	dptr,#_packet_sent_cb_sent_1_189
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	ret
00170$:
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	sjmp	00129$
00126$:
;	../contiki-sensinode/core/net/mac/csma.c:294: free_first_packet(n);
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_free_first_packet
;	../contiki-sensinode/core/net/mac/csma.c:295: mac_call_sent_callback(sent, cptr, status, num_tx);
	mov	dptr,#_packet_sent_cb_sent_1_189
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jz	00129$
	mov	dptr,#_packet_sent_cb_cptr_1_189
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_packet_sent_cb_num_tx_1_189
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	a,sp
	add	a,#0xee
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	lcall	00172$
	sjmp	00173$
00172$:
	mov	dptr,#_packet_sent_cb_sent_1_189
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	ret
00173$:
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
00129$:
	mov	a,sp
	add	a,#0xF3
	mov	sp,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'send_packet'
;------------------------------------------------------------
;ptr                       Allocated to stack - sp -15
;sent                      Allocated to stack - sp -10
;q                         Allocated to stack - sp -2
;n                         Allocated to stack - sp -5
;metadata                  Allocated to registers r7 r6 r2 
;sloc0                     Allocated to stack - sp -8
;addr                      Allocated with name '_send_packet_addr_2_205'
;------------------------------------------------------------
;	../contiki-sensinode/core/net/mac/csma.c:300: send_packet(mac_callback_t sent, void *ptr)
;	-----------------------------------------
;	 function send_packet
;	-----------------------------------------
_send_packet:
	push	dpl
	push	dph
	mov	a,sp
	add	a,#0x09
	mov	sp,a
;	../contiki-sensinode/core/net/mac/csma.c:308: &rimeaddr_null)) {
;	../contiki-sensinode/core/net/mac/csma.c:307: if(!rimeaddr_cmp(packetbuf_addr(PACKETBUF_ADDR_RECEIVER),
	mov	dpl,#0x19
	lcall	_packetbuf_addr
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	mov	a,#_rimeaddr_null
	push	acc
	mov	a,#(_rimeaddr_null >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	_rimeaddr_cmp
	mov	r4,dpl
	mov	r5,dph
	dec	sp
	dec	sp
	dec	sp
	mov	a,r4
	orl	a,r5
	jz	00177$
	ljmp	00134$
00177$:
;	../contiki-sensinode/core/net/mac/csma.c:310: addr = packetbuf_addr(PACKETBUF_ADDR_RECEIVER);
	mov	dpl,#0x19
	lcall	_packetbuf_addr
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	mov	dptr,#_send_packet_addr_2_205
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	../contiki-sensinode/core/net/mac/csma.c:313: n = neighbor_queue_from_addr(addr);
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	_neighbor_queue_from_addr
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
;	../contiki-sensinode/core/net/mac/csma.c:314: if(n == NULL) {
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00178$
	ljmp	00107$
00178$:
;	../contiki-sensinode/core/net/mac/csma.c:316: n = memb_alloc(&neighbor_memb);
	mov	dptr,#_neighbor_memb
	mov	b,#0x00
	lcall	_memb_alloc
	mov	r2,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	../contiki-sensinode/core/net/mac/csma.c:317: if(n != NULL) {
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00179$
	ljmp	00107$
00179$:
;	../contiki-sensinode/core/net/mac/csma.c:319: rimeaddr_copy(&n->addr, addr);
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x03
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dptr,#_send_packet_addr_2_205
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	lcall	_rimeaddr_copy
	dec	sp
	dec	sp
	dec	sp
;	../contiki-sensinode/core/net/mac/csma.c:320: n->transmissions = 0;
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x1A
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
;	../contiki-sensinode/core/net/mac/csma.c:321: n->collisions = 0;
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x1B
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
;	../contiki-sensinode/core/net/mac/csma.c:322: n->deferrals = 0;
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x1C
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
;	../contiki-sensinode/core/net/mac/csma.c:324: LIST_STRUCT_INIT(n, queued_packet_list);
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x20
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x1D
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar5,@r0
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	_list_init
;	../contiki-sensinode/core/net/mac/csma.c:326: list_add(neighbor_list, n);
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	mov	dptr,#_neighbor_list
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	push	ar3
	push	ar4
	push	ar5
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	lcall	_list_add
	dec	sp
	dec	sp
	dec	sp
;	../contiki-sensinode/core/net/mac/csma.c:384: sent(ptr, mac_status, 1);
;	../contiki-sensinode/core/net/mac/csma.c:326: list_add(neighbor_list, n);
00107$:
;	../contiki-sensinode/core/net/mac/csma.c:330: if(n != NULL) {
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00180$
	ljmp	00128$
00180$:
;	../contiki-sensinode/core/net/mac/csma.c:332: q = memb_alloc(&packet_memb);
	mov	dptr,#_packet_memb
	mov	b,#0x00
	lcall	_memb_alloc
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
;	../contiki-sensinode/core/net/mac/csma.c:333: if(q != NULL) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00181$
	ljmp	00121$
00181$:
;	../contiki-sensinode/core/net/mac/csma.c:334: q->ptr = memb_alloc(&metadata_memb);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x06
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dptr,#_metadata_memb
	mov	b,#0x00
	push	ar7
	push	ar6
	push	ar2
	lcall	_memb_alloc
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	pop	ar2
	pop	ar6
	pop	ar7
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
;	../contiki-sensinode/core/net/mac/csma.c:335: if(q->ptr != NULL) {
	mov	a,r3
	orl	a,r4
	jnz	00182$
	ljmp	00119$
00182$:
;	../contiki-sensinode/core/net/mac/csma.c:336: q->buf = queuebuf_new_from_packetbuf();
	mov	r0,sp
	dec	r0
	dec	r0
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
	push	ar7
	push	ar6
	push	ar2
	lcall	_queuebuf_new_from_packetbuf
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	pop	ar2
	pop	ar6
	pop	ar7
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
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
	inc	dptr
	mov	a,r5
	lcall	__gptrput
;	../contiki-sensinode/core/net/mac/csma.c:337: if(q->buf != NULL) {
	mov	a,r3
	orl	a,r4
	jnz	00183$
	ljmp	00117$
00183$:
;	../contiki-sensinode/core/net/mac/csma.c:338: struct qbuf_metadata *metadata = (struct qbuf_metadata *)q->ptr;
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	mov	ar7,r3
	mov	ar6,r4
	mov	ar2,r5
;	../contiki-sensinode/core/net/mac/csma.c:340: if(packetbuf_attr(PACKETBUF_ATTR_MAX_MAC_TRANSMISSIONS) == 0) {
	mov	dpl,#0x09
	push	ar7
	push	ar6
	push	ar2
	lcall	_packetbuf_attr
	mov	a,dpl
	mov	b,dph
	pop	ar2
	pop	ar6
	pop	ar7
	orl	a,b
	jnz	00109$
;	../contiki-sensinode/core/net/mac/csma.c:342: metadata->max_transmissions = CSMA_MAX_MAC_TRANSMISSIONS;
	mov	a,#0x05
	add	a,r7
	mov	r3,a
	clr	a
	addc	a,r6
	mov	r4,a
	mov	ar5,r2
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,#0x03
	lcall	__gptrput
	sjmp	00110$
00109$:
;	../contiki-sensinode/core/net/mac/csma.c:344: metadata->max_transmissions =
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,#0x05
	add	a,r7
	mov	@r0,a
	clr	a
	addc	a,r6
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar2
;	../contiki-sensinode/core/net/mac/csma.c:345: packetbuf_attr(PACKETBUF_ATTR_MAX_MAC_TRANSMISSIONS);
	mov	dpl,#0x09
	push	ar7
	push	ar6
	push	ar2
	lcall	_packetbuf_attr
	mov	r4,dpl
	mov	r5,dph
	pop	ar2
	pop	ar6
	pop	ar7
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r4
	lcall	__gptrput
00110$:
;	../contiki-sensinode/core/net/mac/csma.c:347: metadata->sent = sent;
	mov	dpl,r7
	mov	dph,r6
	mov	b,r2
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
;	../contiki-sensinode/core/net/mac/csma.c:348: metadata->cptr = ptr;
	mov	a,#0x02
	add	a,r7
	mov	r3,a
	clr	a
	addc	a,r6
	mov	r4,a
	mov	ar5,r2
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,sp
	add	a,#0xf1
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
;	../contiki-sensinode/core/net/mac/csma.c:350: if(packetbuf_attr(PACKETBUF_ATTR_PACKET_TYPE) ==
	mov	dpl,#0x0E
	lcall	_packetbuf_attr
	mov	r4,dpl
	mov	r5,dph
	cjne	r4,#0x01,00112$
	cjne	r5,#0x00,00112$
;	../contiki-sensinode/core/net/mac/csma.c:352: list_push(n->queued_packet_list, q);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	ar7,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar2,@r0
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x20
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
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	push	ar7
	push	ar6
	push	ar2
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	_list_push
	dec	sp
	dec	sp
	dec	sp
	sjmp	00113$
00112$:
;	../contiki-sensinode/core/net/mac/csma.c:354: list_add(n->queued_packet_list, q);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	ar7,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar2,@r0
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x20
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
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	push	ar7
	push	ar6
	push	ar2
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	_list_add
	dec	sp
	dec	sp
	dec	sp
00113$:
;	../contiki-sensinode/core/net/mac/csma.c:358: if(list_head(n->queued_packet_list) == q) {
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x20
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
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	_list_head
	mov	r7,dpl
	mov	r6,dph
	mov	r2,b
	mov	r0,sp
	dec	r0
	dec	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	push	ar3
	push	ar4
	push	ar5
	mov	dpl,r7
	mov	dph,r6
	mov	b,r2
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jz	00188$
	sjmp	00115$
00188$:
;	../contiki-sensinode/core/net/mac/csma.c:359: ctimer_set(&n->transmit_timer, 0, transmit_packet_list, n);
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	ar7,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar2,@r0
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x05
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar5,@r0
	push	ar7
	push	ar6
	push	ar2
	mov	a,#_transmit_packet_list
	push	acc
	mov	a,#(_transmit_packet_list >> 8)
	push	acc
	clr	a
	push	acc
	push	acc
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	_ctimer_set
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
00115$:
;	../contiki-sensinode/core/net/mac/csma.c:361: return;
	ljmp	00136$
00117$:
;	../contiki-sensinode/core/net/mac/csma.c:363: memb_free(&metadata_memb, q->ptr);
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	push	ar2
	push	ar6
	push	ar7
	mov	dptr,#_metadata_memb
	mov	b,#0x00
	lcall	_memb_free
	dec	sp
	dec	sp
	dec	sp
00119$:
;	../contiki-sensinode/core/net/mac/csma.c:366: memb_free(&packet_memb, q);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	push	ar3
	push	ar4
	push	ar5
	mov	dptr,#_packet_memb
	mov	b,#0x00
	lcall	_memb_free
	dec	sp
	dec	sp
	dec	sp
00121$:
;	../contiki-sensinode/core/net/mac/csma.c:370: if(list_length(n->queued_packet_list) == 0) {
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x20
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
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_list_length
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jnz	00128$
;	../contiki-sensinode/core/net/mac/csma.c:371: list_remove(neighbor_list, n);
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	mov	dptr,#_neighbor_list
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	push	ar3
	push	ar4
	push	ar5
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	lcall	_list_remove
	dec	sp
	dec	sp
	dec	sp
;	../contiki-sensinode/core/net/mac/csma.c:372: memb_free(&neighbor_memb, n);
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	push	ar3
	push	ar4
	push	ar5
	mov	dptr,#_neighbor_memb
	mov	b,#0x00
	lcall	_memb_free
	dec	sp
	dec	sp
	dec	sp
;	../contiki-sensinode/core/net/mac/csma.c:378: mac_call_sent_callback(sent, ptr, MAC_TX_ERR, 1);
00128$:
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00190$
	ljmp	00136$
00190$:
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	mov	a,#0x04
	push	acc
	clr	a
	push	acc
	lcall	00191$
	sjmp	00192$
00191$:
	mov	a,sp
	add	a,#0xf0
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,sp
	add	a,#0xe9
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	ret
00192$:
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	sjmp	00136$
00134$:
;	../contiki-sensinode/core/net/mac/csma.c:382: NETSTACK_RDC.send(packet_sent, ptr);
	mov	dptr,#(_nullrdc_driver + 0x0005)
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	push	ar7
	push	ar6
	mov	a,sp
	add	a,#0xef
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	lcall	00193$
	sjmp	00194$
00193$:
	push	ar6
	push	ar7
	mov	dptr,#_packet_sent
	ret
00194$:
	dec	sp
	dec	sp
	dec	sp
	pop	ar6
	pop	ar7
;	../contiki-sensinode/core/net/mac/csma.c:383: if(sent) {
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00136$
;	../contiki-sensinode/core/net/mac/csma.c:384: sent(ptr, mac_status, 1);
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	mov	dptr,#_mac_status
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	lcall	00196$
	sjmp	00197$
00196$:
	mov	a,sp
	add	a,#0xf0
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,sp
	add	a,#0xe9
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	ret
00197$:
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
00136$:
	mov	a,sp
	add	a,#0xF5
	mov	sp,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'input_packet'
;------------------------------------------------------------
;	../contiki-sensinode/core/net/mac/csma.c:393: input_packet(void)
;	-----------------------------------------
;	 function input_packet
;	-----------------------------------------
_input_packet:
;	../contiki-sensinode/core/net/mac/csma.c:395: NETSTACK_NETWORK.input();
	mov	dptr,#(_rime_driver + 0x0005)
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	push	ar7
	push	ar6
	mov	dpl,r6
	mov	dph,r7
	lcall	__sdcc_call_dptr
	pop	ar6
	pop	ar7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'on'
;------------------------------------------------------------
;	../contiki-sensinode/core/net/mac/csma.c:399: on(void)
;	-----------------------------------------
;	 function on
;	-----------------------------------------
_on:
;	../contiki-sensinode/core/net/mac/csma.c:401: return NETSTACK_RDC.on();
	mov	dptr,#(_nullrdc_driver + 0x000b)
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	ljmp	__sdcc_call_dptr
;------------------------------------------------------------
;Allocation info for local variables in function 'off'
;------------------------------------------------------------
;keep_radio_on             Allocated to registers r6 r7 
;------------------------------------------------------------
;	../contiki-sensinode/core/net/mac/csma.c:405: off(int keep_radio_on)
;	-----------------------------------------
;	 function off
;	-----------------------------------------
_off:
	mov	r6,dpl
	mov	r7,dph
;	../contiki-sensinode/core/net/mac/csma.c:407: return NETSTACK_RDC.off(keep_radio_on);
	mov	dptr,#(_nullrdc_driver + 0x000d)
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	lcall	00103$
	sjmp	00104$
00103$:
	push	ar4
	push	ar5
	mov	dpl,r6
	mov	dph,r7
	ret
00104$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'channel_check_interval'
;------------------------------------------------------------
;	../contiki-sensinode/core/net/mac/csma.c:411: channel_check_interval(void)
;	-----------------------------------------
;	 function channel_check_interval
;	-----------------------------------------
_channel_check_interval:
;	../contiki-sensinode/core/net/mac/csma.c:413: if(NETSTACK_RDC.channel_check_interval) {
	mov	dptr,#(_nullrdc_driver + 0x000f)
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	orl	a,r6
	jz	00102$
;	../contiki-sensinode/core/net/mac/csma.c:414: return NETSTACK_RDC.channel_check_interval();
	mov	dpl,r6
	mov	dph,r7
	ljmp	__sdcc_call_dptr
00102$:
;	../contiki-sensinode/core/net/mac/csma.c:416: return 0;
	mov	dptr,#0x0000
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'init'
;------------------------------------------------------------
;	../contiki-sensinode/core/net/mac/csma.c:420: init(void)
;	-----------------------------------------
;	 function init
;	-----------------------------------------
_init:
;	../contiki-sensinode/core/net/mac/csma.c:422: memb_init(&packet_memb);
	mov	dptr,#_packet_memb
	mov	b,#0x00
	lcall	_memb_init
;	../contiki-sensinode/core/net/mac/csma.c:423: memb_init(&metadata_memb);
	mov	dptr,#_metadata_memb
	mov	b,#0x00
	lcall	_memb_init
;	../contiki-sensinode/core/net/mac/csma.c:424: memb_init(&neighbor_memb);
	mov	dptr,#_neighbor_memb
	mov	b,#0x00
	ljmp	_memb_init
	.area CSEG    (CODE)
	.area CONST   (CODE)
_csma_driver:
	.byte __str_0,(__str_0 >> 8),#0x80
	.byte _init,(_init >> 8)
	.byte _send_packet,(_send_packet >> 8)
	.byte _input_packet,(_input_packet >> 8)
	.byte _on,(_on >> 8)
	.byte _off,(_off >> 8)
	.byte _channel_check_interval,(_channel_check_interval >> 8)
__str_0:
	.ascii "CSMA"
	.db 0x00
	.area XINIT   (CODE)
__xinit__neighbor_memb:
	.byte #0x23,#0x00	; 35
	.byte #0x02,#0x00	; 2
	.byte _neighbor_memb_memb_count,(_neighbor_memb_memb_count >> 8),#0x00
	.byte _neighbor_memb_memb_mem,(_neighbor_memb_memb_mem >> 8),#0x00
__xinit__packet_memb:
	.byte #0x09,#0x00	; 9
	.byte #0x08,#0x00	; 8
	.byte _packet_memb_memb_count,(_packet_memb_memb_count >> 8),#0x00
	.byte _packet_memb_memb_mem,(_packet_memb_memb_mem >> 8),#0x00
__xinit__metadata_memb:
	.byte #0x06,#0x00	; 6
	.byte #0x08,#0x00	; 8
	.byte _metadata_memb_memb_count,(_metadata_memb_memb_count >> 8),#0x00
	.byte _metadata_memb_memb_mem,(_metadata_memb_memb_mem >> 8),#0x00
__xinit__neighbor_list_list:
; generic printIvalPtr
	.byte #0x00,#0x00,#0x00
__xinit__neighbor_list:
	.byte _neighbor_list_list,(_neighbor_list_list >> 8),#0x00
	.area CABS    (ABS,CODE)
