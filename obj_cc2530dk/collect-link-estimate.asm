;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.4.0 #8981 (Oct 24 2015) (Linux)
; This file was generated Sun Oct 25 01:52:03 2015
;--------------------------------------------------------
	.module collect_link_estimate
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _collect_link_estimate_new
	.globl _collect_link_estimate_update_tx
	.globl _collect_link_estimate_update_tx_fail
	.globl _collect_link_estimate_update_rx
	.globl _collect_link_estimate
	.globl _collect_link_estimate_num_estimates
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
;Allocation info for local variables in function 'collect_link_estimate_new'
;------------------------------------------------------------
;le                        Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../contiki-sensinode/core/net/rime/collect-link-estimate.c:63: collect_link_estimate_new(struct collect_link_estimate *le)
;	-----------------------------------------
;	 function collect_link_estimate_new
;	-----------------------------------------
_collect_link_estimate_new:
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
;	../contiki-sensinode/core/net/rime/collect-link-estimate.c:65: if(le == NULL) {
	mov	a,r5
	orl	a,r6
	jnz	00102$
;	../contiki-sensinode/core/net/rime/collect-link-estimate.c:66: return;
	ret
00102$:
;	../contiki-sensinode/core/net/rime/collect-link-estimate.c:68: le->num_estimates = 0;
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
	clr	a
	lcall	__gptrput
;	../contiki-sensinode/core/net/rime/collect-link-estimate.c:69: le->etx_accumulator = COLLECT_LINK_ESTIMATE_UNIT;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x08
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	ljmp	__gptrput
;------------------------------------------------------------
;Allocation info for local variables in function 'collect_link_estimate_update_tx'
;------------------------------------------------------------
;tx                        Allocated to stack - sp -9
;le                        Allocated to stack - sp -6
;sloc0                     Allocated to stack - sp -3
;------------------------------------------------------------
;	../contiki-sensinode/core/net/rime/collect-link-estimate.c:73: collect_link_estimate_update_tx(struct collect_link_estimate *le, uint8_t tx)
;	-----------------------------------------
;	 function collect_link_estimate_update_tx
;	-----------------------------------------
_collect_link_estimate_update_tx:
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x04
;	../contiki-sensinode/core/net/rime/collect-link-estimate.c:75: if(le == NULL) {
	mov	sp,a
	add	a,#0xfa
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00102$
;	../contiki-sensinode/core/net/rime/collect-link-estimate.c:76: return;
	ljmp	00111$
00102$:
;	../contiki-sensinode/core/net/rime/collect-link-estimate.c:78: if(tx == 0) {
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	a,@r0
	jnz	00104$
;	../contiki-sensinode/core/net/rime/collect-link-estimate.c:80: return;
	ljmp	00111$
00104$:
;	../contiki-sensinode/core/net/rime/collect-link-estimate.c:82: if(le != NULL) {
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00130$
	ljmp	00111$
00130$:
;	../contiki-sensinode/core/net/rime/collect-link-estimate.c:83: if(le->num_estimates == 0) {
	mov	a,sp
	add	a,#0xfa
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
	jnz	00106$
;	../contiki-sensinode/core/net/rime/collect-link-estimate.c:84: le->etx_accumulator = tx * COLLECT_LINK_ESTIMATE_UNIT;
	push	ar2
	push	ar3
	push	ar4
	mov	a,sp
	add	a,#0xf4
	mov	r0,a
	mov	a,@r0
	mov	b,#0x08
	mul	ab
	mov	r3,a
	mov	r4,b
	mov	a,r4
	mov	r2,a
	rlc	a
	subb	a,acc
	mov	r4,a
	mov	r7,a
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	../contiki-sensinode/core/net/rime/collect-link-estimate.c:93: le->etx_accumulator * (COLLECT_LINK_ESTIMATE_UNIT -
	pop	ar4
	pop	ar3
	pop	ar2
;	../contiki-sensinode/core/net/rime/collect-link-estimate.c:84: le->etx_accumulator = tx * COLLECT_LINK_ESTIMATE_UNIT;
00106$:
;	../contiki-sensinode/core/net/rime/collect-link-estimate.c:87: if(le->num_estimates < MAX_ESTIMATES) {
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r7,a
	cjne	r7,#0xFF,00132$
00132$:
	jnc	00108$
;	../contiki-sensinode/core/net/rime/collect-link-estimate.c:88: le->num_estimates++;
	inc	r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r7
	lcall	__gptrput
00108$:
;	../contiki-sensinode/core/net/rime/collect-link-estimate.c:91: le->etx_accumulator = (((uint32_t)tx * COLLECT_LINK_ESTIMATE_UNIT) *
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	ar4,@r0
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
	push	ar4
	push	ar5
	push	ar6
	push	ar7
;	../contiki-sensinode/core/net/rime/collect-link-estimate.c:93: le->etx_accumulator * (COLLECT_LINK_ESTIMATE_UNIT -
	mov	dptr,#(0x18&0x00ff)
	clr	a
	mov	b,a
	lcall	__mullong
	xch	a,r0
	mov	a,sp
	add	a,#0xf9
	xch	a,r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	inc	r0
	mov	@r0,b
	inc	r0
	mov	@r0,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
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
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	push	ar2
	push	ar3
	push	ar6
	push	ar7
	mov	dptr,#(0x05&0x00ff)
	clr	a
	mov	b,a
	lcall	__mullong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	add	a,#0xfd
	mov	r0,a
	mov	a,r4
	add	a,@r0
	mov	r4,a
	mov	a,r5
	inc	r0
	addc	a,@r0
	mov	r5,a
	mov	a,r6
	inc	r0
	addc	a,@r0
	mov	r6,a
	mov	a,r7
	inc	r0
	addc	a,@r0
	mov	r7,a
	mov	a,r5
	swap	a
	rl	a
	xch	a,r4
	swap	a
	rl	a
	anl	a,#0x1F
	xrl	a,r4
	xch	a,r4
	anl	a,#0x1F
	xch	a,r4
	xrl	a,r4
	xch	a,r4
	mov	r5,a
	mov	a,r6
	swap	a
	rl	a
	anl	a,#0xE0
	orl	a,r5
	mov	r5,a
	mov	a,r7
	swap	a
	rl	a
	xch	a,r6
	swap	a
	rl	a
	anl	a,#0x1F
	xrl	a,r6
	xch	a,r6
	anl	a,#0x1F
	xch	a,r6
	xrl	a,r6
	xch	a,r6
	mov	r7,a
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
00111$:
	mov	a,sp
	add	a,#0xF9
	mov	sp,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'collect_link_estimate_update_tx_fail'
;------------------------------------------------------------
;tx                        Allocated to stack - sp -2
;le                        Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../contiki-sensinode/core/net/rime/collect-link-estimate.c:101: collect_link_estimate_update_tx_fail(struct collect_link_estimate *le,
;	-----------------------------------------
;	 function collect_link_estimate_update_tx_fail
;	-----------------------------------------
_collect_link_estimate_update_tx_fail:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../contiki-sensinode/core/net/rime/collect-link-estimate.c:104: if(le == NULL) {
	mov	a,r5
	orl	a,r6
	jnz	00102$
;	../contiki-sensinode/core/net/rime/collect-link-estimate.c:105: return;
	ret
00102$:
;	../contiki-sensinode/core/net/rime/collect-link-estimate.c:107: collect_link_estimate_update_tx(le, tx * 2);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,@r0
	add	a,acc
	mov	r4,a
	push	ar4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_collect_link_estimate_update_tx
	dec	sp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'collect_link_estimate_update_rx'
;------------------------------------------------------------
;n                         Allocated to registers 
;------------------------------------------------------------
;	../contiki-sensinode/core/net/rime/collect-link-estimate.c:111: collect_link_estimate_update_rx(struct collect_link_estimate *n)
;	-----------------------------------------
;	 function collect_link_estimate_update_rx
;	-----------------------------------------
_collect_link_estimate_update_rx:
;	../contiki-sensinode/core/net/rime/collect-link-estimate.c:114: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'collect_link_estimate'
;------------------------------------------------------------
;le                        Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../contiki-sensinode/core/net/rime/collect-link-estimate.c:117: collect_link_estimate(struct collect_link_estimate *le)
;	-----------------------------------------
;	 function collect_link_estimate
;	-----------------------------------------
_collect_link_estimate:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../contiki-sensinode/core/net/rime/collect-link-estimate.c:119: if(le == NULL) {
	mov	a,r5
	orl	a,r6
	jnz	00102$
;	../contiki-sensinode/core/net/rime/collect-link-estimate.c:120: return 0;
	mov	dptr,#0x0000
	ret
00102$:
;	../contiki-sensinode/core/net/rime/collect-link-estimate.c:122: if(le->num_estimates == 0) {
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
	jnz	00104$
;	../contiki-sensinode/core/net/rime/collect-link-estimate.c:123: return INITIAL_LINK_ESTIMATE * COLLECT_LINK_ESTIMATE_UNIT;
	mov	dptr,#0x0080
	ret
00104$:
;	../contiki-sensinode/core/net/rime/collect-link-estimate.c:126: return le->etx_accumulator;
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
	inc	dptr
	lcall	__gptrget
	mov	dpl,r5
	mov	dph,r6
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'collect_link_estimate_num_estimates'
;------------------------------------------------------------
;le                        Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../contiki-sensinode/core/net/rime/collect-link-estimate.c:130: collect_link_estimate_num_estimates(struct collect_link_estimate *le)
;	-----------------------------------------
;	 function collect_link_estimate_num_estimates
;	-----------------------------------------
_collect_link_estimate_num_estimates:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../contiki-sensinode/core/net/rime/collect-link-estimate.c:132: if(le != NULL) {
	mov	a,r5
	orl	a,r6
	jz	00102$
;	../contiki-sensinode/core/net/rime/collect-link-estimate.c:133: return le->num_estimates;
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
	mov	r5,a
	mov	r7,#0x00
	mov	dpl,r5
	mov	dph,r7
	ret
00102$:
;	../contiki-sensinode/core/net/rime/collect-link-estimate.c:135: return 0;
	mov	dptr,#0x0000
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
