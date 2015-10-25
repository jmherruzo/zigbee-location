;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.4.0 #8981 (Oct 24 2015) (Linux)
; This file was generated Sun Oct 25 01:52:06 2015
;--------------------------------------------------------
	.module framer_nullmac
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _framer_nullmac
	.globl _packetbuf_addr
	.globl _packetbuf_set_addr
	.globl _packetbuf_hdrreduce
	.globl _packetbuf_hdralloc
	.globl _packetbuf_hdrptr
	.globl _packetbuf_dataptr
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
;Allocation info for local variables in function 'create'
;------------------------------------------------------------
;hdr                       Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../contiki-sensinode/core/net/mac/framer-nullmac.c:60: create(void)
;	-----------------------------------------
;	 function create
;	-----------------------------------------
_create:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	../contiki-sensinode/core/net/mac/framer-nullmac.c:64: if(packetbuf_hdralloc(sizeof(struct nullmac_hdr))) {
	mov	dptr,#0x0004
	lcall	_packetbuf_hdralloc
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jz	00102$
;	../contiki-sensinode/core/net/mac/framer-nullmac.c:65: hdr = packetbuf_hdrptr();
	lcall	_packetbuf_hdrptr
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../contiki-sensinode/core/net/mac/framer-nullmac.c:66: rimeaddr_copy(&(hdr->sender), &rimeaddr_node_addr);
	mov	a,#0x02
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	push	ar7
	push	ar6
	push	ar5
	mov	a,#_rimeaddr_node_addr
	push	acc
	mov	a,#(_rimeaddr_node_addr >> 8)
	push	acc
	clr	a
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_rimeaddr_copy
	dec	sp
	dec	sp
	dec	sp
;	../contiki-sensinode/core/net/mac/framer-nullmac.c:67: rimeaddr_copy(&(hdr->receiver), packetbuf_addr(PACKETBUF_ADDR_RECEIVER));
	mov	dpl,#0x19
	lcall	_packetbuf_addr
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	pop	ar5
	pop	ar6
	pop	ar7
	push	ar2
	push	ar3
	push	ar4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_rimeaddr_copy
	dec	sp
	dec	sp
	dec	sp
;	../contiki-sensinode/core/net/mac/framer-nullmac.c:68: return sizeof(struct nullmac_hdr);
	mov	dptr,#0x0004
	ret
00102$:
;	../contiki-sensinode/core/net/mac/framer-nullmac.c:71: return FRAMER_FAILED;
	mov	dptr,#0xFFFF
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'parse'
;------------------------------------------------------------
;hdr                       Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../contiki-sensinode/core/net/mac/framer-nullmac.c:75: parse(void)
;	-----------------------------------------
;	 function parse
;	-----------------------------------------
_parse:
;	../contiki-sensinode/core/net/mac/framer-nullmac.c:78: hdr = packetbuf_dataptr();
	lcall	_packetbuf_dataptr
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../contiki-sensinode/core/net/mac/framer-nullmac.c:79: if(packetbuf_hdrreduce(sizeof(struct nullmac_hdr))) {
	mov	dptr,#0x0004
	push	ar7
	push	ar6
	push	ar5
	lcall	_packetbuf_hdrreduce
	mov	a,dpl
	mov	b,dph
	pop	ar5
	pop	ar6
	pop	ar7
	orl	a,b
	jz	00102$
;	../contiki-sensinode/core/net/mac/framer-nullmac.c:80: packetbuf_set_addr(PACKETBUF_ADDR_SENDER, &(hdr->sender));
	mov	a,#0x02
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar2
	push	ar3
	push	ar4
	mov	dpl,#0x18
	lcall	_packetbuf_set_addr
	dec	sp
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
;	../contiki-sensinode/core/net/mac/framer-nullmac.c:81: packetbuf_set_addr(PACKETBUF_ADDR_RECEIVER, &(hdr->receiver));
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,#0x19
	lcall	_packetbuf_set_addr
	dec	sp
	dec	sp
	dec	sp
;	../contiki-sensinode/core/net/mac/framer-nullmac.c:88: return sizeof(struct nullmac_hdr);
	mov	dptr,#0x0004
	ret
00102$:
;	../contiki-sensinode/core/net/mac/framer-nullmac.c:90: return FRAMER_FAILED;
	mov	dptr,#0xFFFF
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
_framer_nullmac:
	.byte _create,(_create >> 8)
	.byte _parse,(_parse >> 8)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
