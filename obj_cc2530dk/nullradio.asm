;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.4.0 #8981 (Oct 24 2015) (Linux)
; This file was generated Sun Oct 25 01:52:21 2015
;--------------------------------------------------------
	.module nullradio
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _nullradio_driver
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
;Allocation info for local variables in function 'init'
;------------------------------------------------------------
;	../contiki-sensinode/core/dev/nullradio.c:6: init(void)
;	-----------------------------------------
;	 function init
;	-----------------------------------------
_init:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	../contiki-sensinode/core/dev/nullradio.c:8: return 0;
	mov	dptr,#0x0000
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'prepare'
;------------------------------------------------------------
;payload_len               Allocated to stack - sp -3
;payload                   Allocated to registers 
;------------------------------------------------------------
;	../contiki-sensinode/core/dev/nullradio.c:12: prepare(const void *payload, unsigned short payload_len)
;	-----------------------------------------
;	 function prepare
;	-----------------------------------------
_prepare:
;	../contiki-sensinode/core/dev/nullradio.c:14: return 1;
	mov	dptr,#0x0001
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'transmit'
;------------------------------------------------------------
;transmit_len              Allocated to registers 
;------------------------------------------------------------
;	../contiki-sensinode/core/dev/nullradio.c:18: transmit(unsigned short transmit_len)
;	-----------------------------------------
;	 function transmit
;	-----------------------------------------
_transmit:
;	../contiki-sensinode/core/dev/nullradio.c:20: return RADIO_TX_OK;
	mov	dptr,#0x0000
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'send'
;------------------------------------------------------------
;payload_len               Allocated to stack - sp -3
;payload                   Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../contiki-sensinode/core/dev/nullradio.c:24: send(const void *payload, unsigned short payload_len)
;	-----------------------------------------
;	 function send
;	-----------------------------------------
_send:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../contiki-sensinode/core/dev/nullradio.c:26: prepare(payload, payload_len);
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_prepare
	dec	sp
	dec	sp
;	../contiki-sensinode/core/dev/nullradio.c:27: return transmit(payload_len);
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	ljmp	_transmit
;------------------------------------------------------------
;Allocation info for local variables in function 'read'
;------------------------------------------------------------
;buf_len                   Allocated to stack - sp -3
;buf                       Allocated to registers 
;------------------------------------------------------------
;	../contiki-sensinode/core/dev/nullradio.c:31: read(void *buf, unsigned short buf_len)
;	-----------------------------------------
;	 function read
;	-----------------------------------------
_read:
;	../contiki-sensinode/core/dev/nullradio.c:33: return 0;
	mov	dptr,#0x0000
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'channel_clear'
;------------------------------------------------------------
;	../contiki-sensinode/core/dev/nullradio.c:37: channel_clear(void)
;	-----------------------------------------
;	 function channel_clear
;	-----------------------------------------
_channel_clear:
;	../contiki-sensinode/core/dev/nullradio.c:39: return 1;
	mov	dptr,#0x0001
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'receiving_packet'
;------------------------------------------------------------
;	../contiki-sensinode/core/dev/nullradio.c:43: receiving_packet(void)
;	-----------------------------------------
;	 function receiving_packet
;	-----------------------------------------
_receiving_packet:
;	../contiki-sensinode/core/dev/nullradio.c:45: return 0;
	mov	dptr,#0x0000
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'pending_packet'
;------------------------------------------------------------
;	../contiki-sensinode/core/dev/nullradio.c:49: pending_packet(void)
;	-----------------------------------------
;	 function pending_packet
;	-----------------------------------------
_pending_packet:
;	../contiki-sensinode/core/dev/nullradio.c:51: return 0;
	mov	dptr,#0x0000
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'on'
;------------------------------------------------------------
;	../contiki-sensinode/core/dev/nullradio.c:55: on(void)
;	-----------------------------------------
;	 function on
;	-----------------------------------------
_on:
;	../contiki-sensinode/core/dev/nullradio.c:57: return 0;
	mov	dptr,#0x0000
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'off'
;------------------------------------------------------------
;	../contiki-sensinode/core/dev/nullradio.c:61: off(void)
;	-----------------------------------------
;	 function off
;	-----------------------------------------
_off:
;	../contiki-sensinode/core/dev/nullradio.c:63: return 0;
	mov	dptr,#0x0000
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
_nullradio_driver:
	.byte _init,(_init >> 8)
	.byte _prepare,(_prepare >> 8)
	.byte _transmit,(_transmit >> 8)
	.byte _send,(_send >> 8)
	.byte _read,(_read >> 8)
	.byte _channel_clear,(_channel_clear >> 8)
	.byte _receiving_packet,(_receiving_packet >> 8)
	.byte _pending_packet,(_pending_packet >> 8)
	.byte _on,(_on >> 8)
	.byte _off,(_off >> 8)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
