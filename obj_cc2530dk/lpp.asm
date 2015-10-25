;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.4.0 #8981 (Oct 24 2015) (Linux)
; This file was generated Sun Oct 25 01:52:06 2015
;--------------------------------------------------------
	.module lpp
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _lpp_driver
	.globl _printf
	.globl _compower_attrconv
	.globl _compower_clear
	.globl _compower_accumulate
	.globl _queuebuf_addr
	.globl _queuebuf_datalen
	.globl _queuebuf_dataptr
	.globl _queuebuf_free
	.globl _queuebuf_to_packetbuf
	.globl _queuebuf_new_from_packetbuf
	.globl _packetbuf_addr
	.globl _packetbuf_set_addr
	.globl _packetbuf_attr
	.globl _packetbuf_set_attr
	.globl _packetbuf_hdrreduce
	.globl _packetbuf_hdralloc
	.globl _packetbuf_compact
	.globl _packetbuf_set_datalen
	.globl _packetbuf_totlen
	.globl _packetbuf_datalen
	.globl _packetbuf_hdrptr
	.globl _packetbuf_dataptr
	.globl _packetbuf_clear
	.globl _ctimer_stop
	.globl _ctimer_set
	.globl _clock_time
	.globl _announcement_register_listen_callback
	.globl _announcement_list
	.globl _rimeaddr_cmp
	.globl _rimeaddr_copy
	.globl _random_rand
	.globl _memb_free
	.globl _memb_alloc
	.globl _memb_init
	.globl _memcpy
	.globl _list_item_next
	.globl _list_length
	.globl _list_remove
	.globl _list_add
	.globl _list_head
	.globl _list_init
	.globl _leds_toggle
	.globl _leds_off
	.globl _leds_on
	.globl _ACTIVE
	.globl _TX_BYTE
	.globl _RX_BYTE
	.globl _ERR
	.globl _FE
	.globl _SLAVE
	.globl _RE
	.globl _MODE
	.globl _T3OVFIF
	.globl _T3CH0IF
	.globl _T3CH1IF
	.globl _T4OVFIF
	.globl _T4CH0IF
	.globl _T4CH1IF
	.globl _OVFIM
	.globl _B_0
	.globl _B_1
	.globl _B_2
	.globl _B_3
	.globl _B_4
	.globl _B_5
	.globl _B_6
	.globl _B_7
	.globl _P2IF
	.globl _UTX0IF
	.globl _UTX1IF
	.globl _P1IF
	.globl _WDTIF
	.globl _ACC_0
	.globl _ACC_1
	.globl _ACC_2
	.globl _ACC_3
	.globl _ACC_4
	.globl _ACC_5
	.globl _ACC_6
	.globl _ACC_7
	.globl _P
	.globl _F1
	.globl _OV
	.globl _RS0
	.globl _RS1
	.globl _F0
	.globl _AC
	.globl _CY
	.globl _DMAIF
	.globl _T1IF
	.globl _T2IF
	.globl _T3IF
	.globl _T4IF
	.globl _P0IF
	.globl _STIF
	.globl _DMAIE
	.globl _T1IE
	.globl _T2IE
	.globl _T3IE
	.globl _T4IE
	.globl _P0IE
	.globl _RFERRIE
	.globl _ADCIE
	.globl _URX0IE
	.globl _URX1IE
	.globl _ENCIE
	.globl _STIE
	.globl _EA
	.globl _P2_0
	.globl _P2_1
	.globl _P2_2
	.globl _P2_3
	.globl _P2_4
	.globl _P2_5
	.globl _P2_6
	.globl _P2_7
	.globl _ENCIF_0
	.globl _ENCIF_1
	.globl _P1_0
	.globl _P1_1
	.globl _P1_2
	.globl _P1_3
	.globl _P1_4
	.globl _P1_5
	.globl _P1_6
	.globl _P1_7
	.globl _IT0
	.globl _RFERRIF
	.globl _IT1
	.globl _URX0IF
	.globl _ADCIF
	.globl _URX1IF
	.globl _P0_0
	.globl _P0_1
	.globl _P0_2
	.globl _P0_3
	.globl _P0_4
	.globl _P0_5
	.globl _P0_6
	.globl _P0_7
	.globl _WDCTL
	.globl _U1GCR
	.globl _U1UCR
	.globl _U1BAUD
	.globl _U1DBUF
	.globl _U1CSR
	.globl _U0GCR
	.globl _U0UCR
	.globl _U0BAUD
	.globl _U0DBUF
	.globl _U0CSR
	.globl _TIMIF
	.globl _T4CC1
	.globl _T4CCTL1
	.globl _T4CC0
	.globl _T4CCTL0
	.globl _T4CTL
	.globl _T4CNT
	.globl _T3CC1
	.globl _T3CCTL1
	.globl _T3CC0
	.globl _T3CCTL0
	.globl _T3CTL
	.globl _T3CNT
	.globl _T2MSEL
	.globl _T2IRQM
	.globl _T2MOVF2
	.globl _T2MOVF1
	.globl _T2MOVF0
	.globl _T2M1
	.globl _T2M0
	.globl _T2IRQF
	.globl _T2EVTCFG
	.globl _T2CTRL
	.globl _T1STAT
	.globl _T1CCTL2
	.globl _T1CCTL1
	.globl _T1CCTL0
	.globl _T1CTL
	.globl _T1CNTH
	.globl _T1CNTL
	.globl _T1CC2H
	.globl _T1CC2L
	.globl _T1CC1H
	.globl _T1CC1L
	.globl _T1CC0H
	.globl _T1CC0L
	.globl _CLKCONSTA
	.globl _CLKCONCMD
	.globl _SLEEPSTA
	.globl _SLEEPCMD
	.globl _STLOAD
	.globl _ST2
	.globl _ST1
	.globl _ST0
	.globl _RFERRF
	.globl _RFIRQF0
	.globl _RFST
	.globl _RFD
	.globl _RFIRQF1
	.globl _PSBANK
	.globl _FMAP
	.globl _MEMCTR
	.globl __XPAGE
	.globl _MPAGE
	.globl _PMUX
	.globl _P2DIR
	.globl _P1DIR
	.globl _P0DIR
	.globl _P2INP
	.globl _P1INP
	.globl _P2SEL
	.globl _P1SEL
	.globl _P0SEL
	.globl _APCFG
	.globl _PERCFG
	.globl _P0INP
	.globl _P2IEN
	.globl _P1IEN
	.globl _P0IEN
	.globl _PICTL
	.globl _P2IFG
	.globl _P1IFG
	.globl _P0IFG
	.globl _DMAREQ
	.globl _DMAARM
	.globl _DMA0CFGH
	.globl _DMA0CFGL
	.globl _DMA1CFGH
	.globl _DMA1CFGL
	.globl _DMAIRQ
	.globl _ENCCS
	.globl _ENCDO
	.globl _ENCDI
	.globl _RNDH
	.globl _RNDL
	.globl _ADCH
	.globl _ADCL
	.globl _ADCCON3
	.globl _ADCCON2
	.globl _ADCCON1
	.globl _B
	.globl _IRCON2
	.globl _ACC
	.globl _PSW
	.globl _IRCON
	.globl _IP1
	.globl _IEN1
	.globl _IP0
	.globl _IEN0
	.globl _P2
	.globl _S1CON
	.globl _IEN2
	.globl _S0CON
	.globl _DPS
	.globl _P1
	.globl _TCON
	.globl _PCON
	.globl _DPH1
	.globl _DPL1
	.globl _DPH0
	.globl _DPL0
	.globl _SP
	.globl _P0
	.globl _X_IEEE_ADDR
	.globl _X_INFOPAGE
	.globl _X_P2DIR
	.globl _X_P1DIR
	.globl _X_P0DIR
	.globl _X_U1GCR
	.globl _X_U1UCR
	.globl _X_U1BAUD
	.globl _X_U1DBUF
	.globl _X_U1CSR
	.globl _X_P2INP
	.globl _X_P1INP
	.globl _X_P2SEL
	.globl _X_P1SEL
	.globl _X_P0SEL
	.globl _X_APCFG
	.globl _X_PERCFG
	.globl _X_T4CC1
	.globl _X_T4CCTL1
	.globl _X_T4CC0
	.globl _X_T4CCTL0
	.globl _X_T4CTL
	.globl _X_T4CNT
	.globl _X_RFIRQF0
	.globl _X_T1CCTL2
	.globl _X_T1CCTL1
	.globl _X_T1CCTL0
	.globl _X_T1CTL
	.globl _X_T1CNTH
	.globl _X_T1CNTL
	.globl _X_RFST
	.globl _X_T1CC2H
	.globl _X_T1CC2L
	.globl _X_T1CC1H
	.globl _X_T1CC1L
	.globl _X_T1CC0H
	.globl _X_T1CC0L
	.globl _X_RFD
	.globl _X_TIMIF
	.globl _X_DMAREQ
	.globl _X_DMAARM
	.globl _X_DMA0CFGH
	.globl _X_DMA0CFGL
	.globl _X_DMA1CFGH
	.globl _X_DMA1CFGL
	.globl _X_DMAIRQ
	.globl _X_T3CC1
	.globl _X_T3CCTL1
	.globl _X_T3CC0
	.globl _X_T3CCTL0
	.globl _X_T3CTL
	.globl _X_T3CNT
	.globl _X_WDCTL
	.globl _X_MEMCTR
	.globl _X_CLKCONCMD
	.globl _X_U0GCR
	.globl _X_U0UCR
	.globl _X_T2MSEL
	.globl _X_U0BAUD
	.globl _X_U0DBUF
	.globl _X_RFERRF
	.globl _X_SLEEPCMD
	.globl _X_RNDH
	.globl _X_RNDL
	.globl _X_ADCH
	.globl _X_ADCL
	.globl _X_ADCCON3
	.globl _X_ADCCON2
	.globl _X_ADCCON1
	.globl _X_ENCCS
	.globl _X_ENCDO
	.globl _X_ENCDI
	.globl _X_T1STAT
	.globl _X_PMUX
	.globl _X_STLOAD
	.globl _X_P2IEN
	.globl _X_P0IEN
	.globl _X_T2IRQM
	.globl _X_T2MOVF2
	.globl _X_T2MOVF1
	.globl _X_T2MOVF0
	.globl _X_T2M1
	.globl _X_T2M0
	.globl _X_T2IRQF
	.globl _X_P2
	.globl _X_PSBANK
	.globl _X_FMAP
	.globl _X_CLKCONSTA
	.globl _X_SLEEPSTA
	.globl _X_T2EVTCFG
	.globl _X_ST2
	.globl _X_ST1
	.globl _X_ST0
	.globl _X_T2CTRL
	.globl _X__XPAGE
	.globl _X_MPAGE
	.globl _X_RFIRQF1
	.globl _X_P1
	.globl _X_P0INP
	.globl _X_P1IEN
	.globl _X_PICTL
	.globl _X_P2IFG
	.globl _X_P1IFG
	.globl _X_P0IFG
	.globl _X_U0CSR
	.globl _X_P0
	.globl _USBF5
	.globl _USBF4
	.globl _USBF3
	.globl _USBF2
	.globl _USBF1
	.globl _USBF0
	.globl _USBCNTH
	.globl _USBCNTL
	.globl _USBCNT0
	.globl _USBCSOH
	.globl _USBCSOL
	.globl _USBMAXO
	.globl _USBCSIH
	.globl _USBCSIL
	.globl _USBCS0
	.globl _USBMAXI
	.globl _USBCTRL
	.globl _USBINDEX
	.globl _USBFRMH
	.globl _USBFRML
	.globl _USBCIE
	.globl _USBOIE
	.globl _USBIIE
	.globl _USBCIF
	.globl _USBOIF
	.globl _USBIIF
	.globl _USBPOW
	.globl _USBADDR
	.globl _CSPT
	.globl _CSPZ
	.globl _CSPY
	.globl _CSPX
	.globl _CSPSTAT
	.globl _CSPCTRL
	.globl _CSPPROG23
	.globl _CSPPROG22
	.globl _CSPPROG21
	.globl _CSPPROG20
	.globl _CSPPROG19
	.globl _CSPPROG18
	.globl _CSPPROG17
	.globl _CSPPROG16
	.globl _CSPPROG15
	.globl _CSPPROG14
	.globl _CSPPROG13
	.globl _CSPPROG12
	.globl _CSPPROG11
	.globl _CSPPROG10
	.globl _CSPPROG9
	.globl _CSPPROG8
	.globl _CSPPROG7
	.globl _CSPPROG6
	.globl _CSPPROG5
	.globl _CSPPROG4
	.globl _CSPPROG3
	.globl _CSPPROG2
	.globl _CSPPROG1
	.globl _CSPPROG0
	.globl _RFC_OBS_CTRL2
	.globl _RFC_OBS_CTRL1
	.globl _RFC_OBS_CTRL0
	.globl _TXFILTCFG
	.globl _PTEST1
	.globl _PTEST0
	.globl _ATEST
	.globl _DACTEST2
	.globl _DACTEST1
	.globl _DACTEST0
	.globl _MDMTEST1
	.globl _MDMTEST0
	.globl _ADCTEST2
	.globl _ADCTEST1
	.globl _ADCTEST0
	.globl _AGCCTRL3
	.globl _AGCCTRL2
	.globl _AGCCTRL1
	.globl _AGCCTRL0
	.globl _FSCAL3
	.globl _FSCAL2
	.globl _FSCAL1
	.globl _FSCAL0
	.globl _FSCTRL
	.globl _RXCTRL
	.globl _FREQEST
	.globl _MDMCTRL1
	.globl _MDMCTRL0
	.globl _RFRND
	.globl _RFERRM
	.globl _RFIRQM1
	.globl _RFIRQM0
	.globl _TXLAST_PTR
	.globl _TXFIRST_PTR
	.globl _RXP1_PTR
	.globl _RXLAST_PTR
	.globl _RXFIRST_PTR
	.globl _TXFIFOCNT
	.globl _RXFIFOCNT
	.globl _RXFIRST
	.globl _RSSISTAT
	.globl _RSSI
	.globl _CCACTRL1
	.globl _CCACTRL0
	.globl _FSMCTRL
	.globl _FIFOPCTRL
	.globl _FSMSTAT1
	.globl _FSMSTAT0
	.globl _TXCTRL
	.globl _TXPOWER
	.globl _FREQCTRL
	.globl _FREQTUNE
	.globl _RXMASKCLR
	.globl _RXMASKSET
	.globl _RXENABLE
	.globl _FRMCTRL1
	.globl _FRMCTRL0
	.globl _SRCEXTEN2
	.globl _SRCEXTEN1
	.globl _SRCEXTEN0
	.globl _SRCSHORTEN2
	.globl _SRCSHORTEN1
	.globl _SRCSHORTEN0
	.globl _SRCMATCH
	.globl _FRMFILT1
	.globl _FRMFILT0
	.globl _SHORT_ADDR1
	.globl _SHORT_ADDR0
	.globl _PAN_ID1
	.globl _PAN_ID0
	.globl _EXT_ADDR7
	.globl _EXT_ADDR6
	.globl _EXT_ADDR5
	.globl _EXT_ADDR4
	.globl _EXT_ADDR3
	.globl _EXT_ADDR2
	.globl _EXT_ADDR1
	.globl _EXT_ADDR0
	.globl _SRCSHORTPENDEN2
	.globl _SRCSHORTPENDEN1
	.globl _SRCSHORTPENDEN0
	.globl _SRCEXTPENDEN2
	.globl _SRCEXTPENDEN1
	.globl _SRCEXTPENDEN0
	.globl _SRCRESINDEX
	.globl _SRCRESMASK2
	.globl _SRCRESMASK1
	.globl _SRCRESMASK0
	.globl _SRC_ADDR_TABLE
	.globl _TXFIFO
	.globl _RXFIFO
	.globl _RFCORE_RAM
	.globl _CMPCTL
	.globl _OPAMPS
	.globl _OPAMPC
	.globl _STCV2
	.globl _STCV1
	.globl _STCV0
	.globl _STCS
	.globl _STCC
	.globl _T1CC4H
	.globl _T1CC4L
	.globl _T1CC3H
	.globl _T1CC3L
	.globl _XX_T1CC2H
	.globl _XX_T1CC2L
	.globl _XX_T1CC1H
	.globl _XX_T1CC1L
	.globl _XX_T1CC0H
	.globl _XX_T1CC0L
	.globl _T1CCTL4
	.globl _T1CCTL3
	.globl _XX_T1CCTL2
	.globl _XX_T1CCTL1
	.globl _XX_T1CCTL0
	.globl _CLD
	.globl _IRCTL
	.globl _CHIPINFO1
	.globl _CHIPINFO0
	.globl _FWDATA
	.globl _FADDRH
	.globl _FADDRL
	.globl _FCTL
	.globl _IVCTRL
	.globl _BATTMON
	.globl _SRCRC
	.globl _DBGDATA
	.globl _TESTREG0
	.globl _CHIPID
	.globl _CHVER
	.globl _OBSSEL5
	.globl _OBSSEL4
	.globl _OBSSEL3
	.globl _OBSSEL2
	.globl _OBSSEL1
	.globl _OBSSEL0
	.globl _I2CIO
	.globl _I2CWC
	.globl _I2CADDR
	.globl _I2CDATA
	.globl _I2CSTAT
	.globl _I2CCFG
	.globl _OPAMPMC
	.globl _MONMUX
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL0	=	0x0082
_DPH0	=	0x0083
_DPL1	=	0x0084
_DPH1	=	0x0085
_PCON	=	0x0087
_TCON	=	0x0088
_P1	=	0x0090
_DPS	=	0x0092
_S0CON	=	0x0098
_IEN2	=	0x009a
_S1CON	=	0x009b
_P2	=	0x00a0
_IEN0	=	0x00a8
_IP0	=	0x00a9
_IEN1	=	0x00b8
_IP1	=	0x00b9
_IRCON	=	0x00c0
_PSW	=	0x00d0
_ACC	=	0x00e0
_IRCON2	=	0x00e8
_B	=	0x00f0
_ADCCON1	=	0x00b4
_ADCCON2	=	0x00b5
_ADCCON3	=	0x00b6
_ADCL	=	0x00ba
_ADCH	=	0x00bb
_RNDL	=	0x00bc
_RNDH	=	0x00bd
_ENCDI	=	0x00b1
_ENCDO	=	0x00b2
_ENCCS	=	0x00b3
_DMAIRQ	=	0x00d1
_DMA1CFGL	=	0x00d2
_DMA1CFGH	=	0x00d3
_DMA0CFGL	=	0x00d4
_DMA0CFGH	=	0x00d5
_DMAARM	=	0x00d6
_DMAREQ	=	0x00d7
_P0IFG	=	0x0089
_P1IFG	=	0x008a
_P2IFG	=	0x008b
_PICTL	=	0x008c
_P0IEN	=	0x00ab
_P1IEN	=	0x008d
_P2IEN	=	0x00ac
_P0INP	=	0x008f
_PERCFG	=	0x00f1
_APCFG	=	0x00f2
_P0SEL	=	0x00f3
_P1SEL	=	0x00f4
_P2SEL	=	0x00f5
_P1INP	=	0x00f6
_P2INP	=	0x00f7
_P0DIR	=	0x00fd
_P1DIR	=	0x00fe
_P2DIR	=	0x00ff
_PMUX	=	0x00ae
_MPAGE	=	0x0093
__XPAGE	=	0x0093
_MEMCTR	=	0x00c7
_FMAP	=	0x009f
_PSBANK	=	0x009f
_RFIRQF1	=	0x0091
_RFD	=	0x00d9
_RFST	=	0x00e1
_RFIRQF0	=	0x00e9
_RFERRF	=	0x00bf
_ST0	=	0x0095
_ST1	=	0x0096
_ST2	=	0x0097
_STLOAD	=	0x00ad
_SLEEPCMD	=	0x00be
_SLEEPSTA	=	0x009d
_CLKCONCMD	=	0x00c6
_CLKCONSTA	=	0x009e
_T1CC0L	=	0x00da
_T1CC0H	=	0x00db
_T1CC1L	=	0x00dc
_T1CC1H	=	0x00dd
_T1CC2L	=	0x00de
_T1CC2H	=	0x00df
_T1CNTL	=	0x00e2
_T1CNTH	=	0x00e3
_T1CTL	=	0x00e4
_T1CCTL0	=	0x00e5
_T1CCTL1	=	0x00e6
_T1CCTL2	=	0x00e7
_T1STAT	=	0x00af
_T2CTRL	=	0x0094
_T2EVTCFG	=	0x009c
_T2IRQF	=	0x00a1
_T2M0	=	0x00a2
_T2M1	=	0x00a3
_T2MOVF0	=	0x00a4
_T2MOVF1	=	0x00a5
_T2MOVF2	=	0x00a6
_T2IRQM	=	0x00a7
_T2MSEL	=	0x00c3
_T3CNT	=	0x00ca
_T3CTL	=	0x00cb
_T3CCTL0	=	0x00cc
_T3CC0	=	0x00cd
_T3CCTL1	=	0x00ce
_T3CC1	=	0x00cf
_T4CNT	=	0x00ea
_T4CTL	=	0x00eb
_T4CCTL0	=	0x00ec
_T4CC0	=	0x00ed
_T4CCTL1	=	0x00ee
_T4CC1	=	0x00ef
_TIMIF	=	0x00d8
_U0CSR	=	0x0086
_U0DBUF	=	0x00c1
_U0BAUD	=	0x00c2
_U0UCR	=	0x00c4
_U0GCR	=	0x00c5
_U1CSR	=	0x00f8
_U1DBUF	=	0x00f9
_U1BAUD	=	0x00fa
_U1UCR	=	0x00fb
_U1GCR	=	0x00fc
_WDCTL	=	0x00c9
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_7	=	0x0087
_P0_6	=	0x0086
_P0_5	=	0x0085
_P0_4	=	0x0084
_P0_3	=	0x0083
_P0_2	=	0x0082
_P0_1	=	0x0081
_P0_0	=	0x0080
_URX1IF	=	0x008f
_ADCIF	=	0x008d
_URX0IF	=	0x008b
_IT1	=	0x008a
_RFERRIF	=	0x0089
_IT0	=	0x0088
_P1_7	=	0x0097
_P1_6	=	0x0096
_P1_5	=	0x0095
_P1_4	=	0x0094
_P1_3	=	0x0093
_P1_2	=	0x0092
_P1_1	=	0x0091
_P1_0	=	0x0090
_ENCIF_1	=	0x0099
_ENCIF_0	=	0x0098
_P2_7	=	0x00a7
_P2_6	=	0x00a6
_P2_5	=	0x00a5
_P2_4	=	0x00a4
_P2_3	=	0x00a3
_P2_2	=	0x00a2
_P2_1	=	0x00a1
_P2_0	=	0x00a0
_EA	=	0x00af
_STIE	=	0x00ad
_ENCIE	=	0x00ac
_URX1IE	=	0x00ab
_URX0IE	=	0x00aa
_ADCIE	=	0x00a9
_RFERRIE	=	0x00a8
_P0IE	=	0x00bd
_T4IE	=	0x00bc
_T3IE	=	0x00bb
_T2IE	=	0x00ba
_T1IE	=	0x00b9
_DMAIE	=	0x00b8
_STIF	=	0x00c7
_P0IF	=	0x00c5
_T4IF	=	0x00c4
_T3IF	=	0x00c3
_T2IF	=	0x00c2
_T1IF	=	0x00c1
_DMAIF	=	0x00c0
_CY	=	0x00d7
_AC	=	0x00d6
_F0	=	0x00d5
_RS1	=	0x00d4
_RS0	=	0x00d3
_OV	=	0x00d2
_F1	=	0x00d1
_P	=	0x00d0
_ACC_7	=	0x00e7
_ACC_6	=	0x00e6
_ACC_5	=	0x00e5
_ACC_4	=	0x00e4
_ACC_3	=	0x00e3
_ACC_2	=	0x00e2
_ACC_1	=	0x00e1
_ACC_0	=	0x00e0
_WDTIF	=	0x00ec
_P1IF	=	0x00eb
_UTX1IF	=	0x00ea
_UTX0IF	=	0x00e9
_P2IF	=	0x00e8
_B_7	=	0x00f7
_B_6	=	0x00f6
_B_5	=	0x00f5
_B_4	=	0x00f4
_B_3	=	0x00f3
_B_2	=	0x00f2
_B_1	=	0x00f1
_B_0	=	0x00f0
_OVFIM	=	0x00de
_T4CH1IF	=	0x00dd
_T4CH0IF	=	0x00dc
_T4OVFIF	=	0x00db
_T3CH1IF	=	0x00da
_T3CH0IF	=	0x00d9
_T3OVFIF	=	0x00d8
_MODE	=	0x00ff
_RE	=	0x00fe
_SLAVE	=	0x00fd
_FE	=	0x00fc
_ERR	=	0x00fb
_RX_BYTE	=	0x00fa
_TX_BYTE	=	0x00f9
_ACTIVE	=	0x00f8
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
_MONMUX	=	0x61a6
_OPAMPMC	=	0x61a6
_I2CCFG	=	0x6230
_I2CSTAT	=	0x6231
_I2CDATA	=	0x6232
_I2CADDR	=	0x6233
_I2CWC	=	0x6234
_I2CIO	=	0x6235
_OBSSEL0	=	0x6243
_OBSSEL1	=	0x6244
_OBSSEL2	=	0x6245
_OBSSEL3	=	0x6246
_OBSSEL4	=	0x6247
_OBSSEL5	=	0x6248
_CHVER	=	0x6249
_CHIPID	=	0x624a
_TESTREG0	=	0x624b
_DBGDATA	=	0x6260
_SRCRC	=	0x6262
_BATTMON	=	0x6264
_IVCTRL	=	0x6265
_FCTL	=	0x6270
_FADDRL	=	0x6271
_FADDRH	=	0x6272
_FWDATA	=	0x6273
_CHIPINFO0	=	0x6276
_CHIPINFO1	=	0x6277
_IRCTL	=	0x6281
_CLD	=	0x6290
_XX_T1CCTL0	=	0x62a0
_XX_T1CCTL1	=	0x62a1
_XX_T1CCTL2	=	0x62a2
_T1CCTL3	=	0x62a3
_T1CCTL4	=	0x62a4
_XX_T1CC0L	=	0x62a6
_XX_T1CC0H	=	0x62a7
_XX_T1CC1L	=	0x62a8
_XX_T1CC1H	=	0x62a9
_XX_T1CC2L	=	0x62aa
_XX_T1CC2H	=	0x62ab
_T1CC3L	=	0x62ac
_T1CC3H	=	0x62ad
_T1CC4L	=	0x62ae
_T1CC4H	=	0x62af
_STCC	=	0x62b0
_STCS	=	0x62b1
_STCV0	=	0x62b2
_STCV1	=	0x62b3
_STCV2	=	0x62b4
_OPAMPC	=	0x62c0
_OPAMPS	=	0x62c1
_CMPCTL	=	0x62d0
_RFCORE_RAM	=	0x6000
_RXFIFO	=	0x6000
_TXFIFO	=	0x6080
_SRC_ADDR_TABLE	=	0x6100
_SRCRESMASK0	=	0x6160
_SRCRESMASK1	=	0x6161
_SRCRESMASK2	=	0x6162
_SRCRESINDEX	=	0x6163
_SRCEXTPENDEN0	=	0x6164
_SRCEXTPENDEN1	=	0x6165
_SRCEXTPENDEN2	=	0x6166
_SRCSHORTPENDEN0	=	0x6167
_SRCSHORTPENDEN1	=	0x6168
_SRCSHORTPENDEN2	=	0x6169
_EXT_ADDR0	=	0x616a
_EXT_ADDR1	=	0x616b
_EXT_ADDR2	=	0x616c
_EXT_ADDR3	=	0x616d
_EXT_ADDR4	=	0x616e
_EXT_ADDR5	=	0x616f
_EXT_ADDR6	=	0x6170
_EXT_ADDR7	=	0x6171
_PAN_ID0	=	0x6172
_PAN_ID1	=	0x6173
_SHORT_ADDR0	=	0x6174
_SHORT_ADDR1	=	0x6175
_FRMFILT0	=	0x6180
_FRMFILT1	=	0x6181
_SRCMATCH	=	0x6182
_SRCSHORTEN0	=	0x6183
_SRCSHORTEN1	=	0x6184
_SRCSHORTEN2	=	0x6185
_SRCEXTEN0	=	0x6186
_SRCEXTEN1	=	0x6187
_SRCEXTEN2	=	0x6188
_FRMCTRL0	=	0x6189
_FRMCTRL1	=	0x618a
_RXENABLE	=	0x618b
_RXMASKSET	=	0x618c
_RXMASKCLR	=	0x618d
_FREQTUNE	=	0x618e
_FREQCTRL	=	0x618f
_TXPOWER	=	0x6190
_TXCTRL	=	0x6191
_FSMSTAT0	=	0x6192
_FSMSTAT1	=	0x6193
_FIFOPCTRL	=	0x6194
_FSMCTRL	=	0x6195
_CCACTRL0	=	0x6196
_CCACTRL1	=	0x6197
_RSSI	=	0x6198
_RSSISTAT	=	0x6199
_RXFIRST	=	0x619a
_RXFIFOCNT	=	0x619b
_TXFIFOCNT	=	0x619c
_RXFIRST_PTR	=	0x619d
_RXLAST_PTR	=	0x619e
_RXP1_PTR	=	0x619f
_TXFIRST_PTR	=	0x61a1
_TXLAST_PTR	=	0x61a2
_RFIRQM0	=	0x61a3
_RFIRQM1	=	0x61a4
_RFERRM	=	0x61a5
_RFRND	=	0x61a7
_MDMCTRL0	=	0x61a8
_MDMCTRL1	=	0x61a9
_FREQEST	=	0x61aa
_RXCTRL	=	0x61ab
_FSCTRL	=	0x61ac
_FSCAL0	=	0x61ad
_FSCAL1	=	0x61ae
_FSCAL2	=	0x61af
_FSCAL3	=	0x61b0
_AGCCTRL0	=	0x61b1
_AGCCTRL1	=	0x61b2
_AGCCTRL2	=	0x61b3
_AGCCTRL3	=	0x61b4
_ADCTEST0	=	0x61b5
_ADCTEST1	=	0x61b6
_ADCTEST2	=	0x61b7
_MDMTEST0	=	0x61b8
_MDMTEST1	=	0x61b9
_DACTEST0	=	0x61ba
_DACTEST1	=	0x61bb
_DACTEST2	=	0x61bc
_ATEST	=	0x61bd
_PTEST0	=	0x61be
_PTEST1	=	0x61bf
_TXFILTCFG	=	0x61fa
_RFC_OBS_CTRL0	=	0x61eb
_RFC_OBS_CTRL1	=	0x61ec
_RFC_OBS_CTRL2	=	0x61ed
_CSPPROG0	=	0x61c0
_CSPPROG1	=	0x61c1
_CSPPROG2	=	0x61c2
_CSPPROG3	=	0x61c3
_CSPPROG4	=	0x61c4
_CSPPROG5	=	0x61c5
_CSPPROG6	=	0x61c6
_CSPPROG7	=	0x61c7
_CSPPROG8	=	0x61c8
_CSPPROG9	=	0x61c9
_CSPPROG10	=	0x61ca
_CSPPROG11	=	0x61cb
_CSPPROG12	=	0x61cc
_CSPPROG13	=	0x61cd
_CSPPROG14	=	0x61ce
_CSPPROG15	=	0x61cf
_CSPPROG16	=	0x61d0
_CSPPROG17	=	0x61d1
_CSPPROG18	=	0x61d2
_CSPPROG19	=	0x61d3
_CSPPROG20	=	0x61d4
_CSPPROG21	=	0x61d5
_CSPPROG22	=	0x61d6
_CSPPROG23	=	0x61d7
_CSPCTRL	=	0x61e0
_CSPSTAT	=	0x61e1
_CSPX	=	0x61e2
_CSPY	=	0x61e3
_CSPZ	=	0x61e4
_CSPT	=	0x61e5
_USBADDR	=	0x6200
_USBPOW	=	0x6201
_USBIIF	=	0x6202
_USBOIF	=	0x6204
_USBCIF	=	0x6206
_USBIIE	=	0x6207
_USBOIE	=	0x6209
_USBCIE	=	0x620b
_USBFRML	=	0x620c
_USBFRMH	=	0x620d
_USBINDEX	=	0x620e
_USBCTRL	=	0x620f
_USBMAXI	=	0x6210
_USBCS0	=	0x6211
_USBCSIL	=	0x6211
_USBCSIH	=	0x6212
_USBMAXO	=	0x6213
_USBCSOL	=	0x6214
_USBCSOH	=	0x6215
_USBCNT0	=	0x6216
_USBCNTL	=	0x6216
_USBCNTH	=	0x6217
_USBF0	=	0x6220
_USBF1	=	0x6222
_USBF2	=	0x6224
_USBF3	=	0x6226
_USBF4	=	0x6228
_USBF5	=	0x622a
_X_P0	=	0x7080
_X_U0CSR	=	0x7086
_X_P0IFG	=	0x7089
_X_P1IFG	=	0x708a
_X_P2IFG	=	0x708b
_X_PICTL	=	0x708c
_X_P1IEN	=	0x708d
_X_P0INP	=	0x708f
_X_P1	=	0x7090
_X_RFIRQF1	=	0x7091
_X_MPAGE	=	0x7093
_X__XPAGE	=	0x7093
_X_T2CTRL	=	0x7094
_X_ST0	=	0x7095
_X_ST1	=	0x7096
_X_ST2	=	0x7097
_X_T2EVTCFG	=	0x709c
_X_SLEEPSTA	=	0x709d
_X_CLKCONSTA	=	0x709e
_X_FMAP	=	0x709f
_X_PSBANK	=	0x709f
_X_P2	=	0x70a0
_X_T2IRQF	=	0x70a1
_X_T2M0	=	0x70a2
_X_T2M1	=	0x70a3
_X_T2MOVF0	=	0x70a4
_X_T2MOVF1	=	0x70a5
_X_T2MOVF2	=	0x70a6
_X_T2IRQM	=	0x70a7
_X_P0IEN	=	0x70ab
_X_P2IEN	=	0x70ac
_X_STLOAD	=	0x70ad
_X_PMUX	=	0x70ae
_X_T1STAT	=	0x70af
_X_ENCDI	=	0x70b1
_X_ENCDO	=	0x70b2
_X_ENCCS	=	0x70b3
_X_ADCCON1	=	0x70b4
_X_ADCCON2	=	0x70b5
_X_ADCCON3	=	0x70b6
_X_ADCL	=	0x70ba
_X_ADCH	=	0x70bb
_X_RNDL	=	0x70bc
_X_RNDH	=	0x70bd
_X_SLEEPCMD	=	0x70be
_X_RFERRF	=	0x70bf
_X_U0DBUF	=	0x70c1
_X_U0BAUD	=	0x70c2
_X_T2MSEL	=	0x70c3
_X_U0UCR	=	0x70c4
_X_U0GCR	=	0x70c5
_X_CLKCONCMD	=	0x70c6
_X_MEMCTR	=	0x70c7
_X_WDCTL	=	0x70c9
_X_T3CNT	=	0x70ca
_X_T3CTL	=	0x70cb
_X_T3CCTL0	=	0x70cc
_X_T3CC0	=	0x70cd
_X_T3CCTL1	=	0x70ce
_X_T3CC1	=	0x70cf
_X_DMAIRQ	=	0x70d1
_X_DMA1CFGL	=	0x70d2
_X_DMA1CFGH	=	0x70d3
_X_DMA0CFGL	=	0x70d4
_X_DMA0CFGH	=	0x70d5
_X_DMAARM	=	0x70d6
_X_DMAREQ	=	0x70d7
_X_TIMIF	=	0x70d8
_X_RFD	=	0x70d9
_X_T1CC0L	=	0x70da
_X_T1CC0H	=	0x70db
_X_T1CC1L	=	0x70dc
_X_T1CC1H	=	0x70dd
_X_T1CC2L	=	0x70de
_X_T1CC2H	=	0x70df
_X_RFST	=	0x70e1
_X_T1CNTL	=	0x70e2
_X_T1CNTH	=	0x70e3
_X_T1CTL	=	0x70e4
_X_T1CCTL0	=	0x70e5
_X_T1CCTL1	=	0x70e6
_X_T1CCTL2	=	0x70e7
_X_RFIRQF0	=	0x70e9
_X_T4CNT	=	0x70ea
_X_T4CTL	=	0x70eb
_X_T4CCTL0	=	0x70ec
_X_T4CC0	=	0x70ed
_X_T4CCTL1	=	0x70ee
_X_T4CC1	=	0x70ef
_X_PERCFG	=	0x70f1
_X_APCFG	=	0x70f2
_X_P0SEL	=	0x70f3
_X_P1SEL	=	0x70f4
_X_P2SEL	=	0x70f5
_X_P1INP	=	0x70f6
_X_P2INP	=	0x70f7
_X_U1CSR	=	0x70f8
_X_U1DBUF	=	0x70f9
_X_U1BAUD	=	0x70fa
_X_U1UCR	=	0x70fb
_X_U1GCR	=	0x70fc
_X_P0DIR	=	0x70fd
_X_P1DIR	=	0x70fe
_X_P2DIR	=	0x70ff
_X_INFOPAGE	=	0x7800
_X_IEEE_ADDR	=	0x780c
_lpp_is_on:
	.ds 1
_current_packet:
	.ds 8
_dutycycle_pt:
	.ds 2
_timer:
	.ds 21
_queued_packets_memb_memb_count:
	.ds 4
_queued_packets_memb_memb_mem:
	.ds 164
_encounter_memb_memb_count:
	.ds 4
_encounter_memb_memb_mem:
	.ds 196
_stream_probe_timer:
	.ds 21
_stream_off_timer:
	.ds 21
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_is_listening:
	.ds 1
_off_time_adjustment:
	.ds 2
_off_time:
	.ds 2
_pending_packets_list_list:
	.ds 3
_pending_packets_list:
	.ds 3
_queued_packets_list_list:
	.ds 3
_queued_packets_list:
	.ds 3
_queued_packets_memb:
	.ds 10
_encounter_list_list:
	.ds 3
_encounter_list:
	.ds 3
_encounter_memb:
	.ds 10
_is_streaming:
	.ds 1
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
;Allocation info for local variables in function 'turn_radio_on'
;------------------------------------------------------------
;	../contiki-sensinode/core/net/mac/lpp.c:191: turn_radio_on(void)
;	-----------------------------------------
;	 function turn_radio_on
;	-----------------------------------------
_turn_radio_on:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	../contiki-sensinode/core/net/mac/lpp.c:193: NETSTACK_RADIO.on();
	mov	dptr,#(_cc2530_rf_driver + 0x0010)
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
;Allocation info for local variables in function 'turn_radio_off'
;------------------------------------------------------------
;	../contiki-sensinode/core/net/mac/lpp.c:198: turn_radio_off(void)
;	-----------------------------------------
;	 function turn_radio_off
;	-----------------------------------------
_turn_radio_off:
;	../contiki-sensinode/core/net/mac/lpp.c:200: if(lpp_is_on && is_streaming == 0) {
	mov	dptr,#_lpp_is_on
	movx	a,@dptr
	mov	r7,a
	jz	00104$
	mov	dptr,#_is_streaming
	movx	a,@dptr
	mov	r7,a
	jnz	00104$
;	../contiki-sensinode/core/net/mac/lpp.c:201: NETSTACK_RADIO.off();
	mov	dptr,#(_cc2530_rf_driver + 0x0012)
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
00104$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'remove_encounter'
;------------------------------------------------------------
;encounter                 Allocated to registers r5 r6 r7 
;e                         Allocated to stack - sp -2
;------------------------------------------------------------
;	../contiki-sensinode/core/net/mac/lpp.c:207: remove_encounter(void *encounter)
;	-----------------------------------------
;	 function remove_encounter
;	-----------------------------------------
_remove_encounter:
	inc	sp
	inc	sp
	inc	sp
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../contiki-sensinode/core/net/mac/lpp.c:209: struct encounter *e = encounter;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	../contiki-sensinode/core/net/mac/lpp.c:211: ctimer_stop(&e->remove_timer);
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
	lcall	_ctimer_stop
;	../contiki-sensinode/core/net/mac/lpp.c:212: ctimer_stop(&e->turn_on_radio_timer);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x1C
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
	lcall	_ctimer_stop
;	../contiki-sensinode/core/net/mac/lpp.c:213: list_remove(encounter_list, e);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	dptr,#_encounter_list
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
;	../contiki-sensinode/core/net/mac/lpp.c:214: memb_free(&encounter_memb, e);
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
	mov	dptr,#_encounter_memb
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
;Allocation info for local variables in function 'register_encounter'
;------------------------------------------------------------
;time                      Allocated to stack - sp -9
;neighbor                  Allocated to stack - sp -5
;e                         Allocated to stack - sp -2
;------------------------------------------------------------
;	../contiki-sensinode/core/net/mac/lpp.c:218: register_encounter(rimeaddr_t *neighbor, clock_time_t time)
;	-----------------------------------------
;	 function register_encounter
;	-----------------------------------------
_register_encounter:
	push	dpl
	push	dph
	push	b
	inc	sp
	inc	sp
	inc	sp
;	../contiki-sensinode/core/net/mac/lpp.c:223: for(e = list_head(encounter_list); e != NULL; e = list_item_next(e)) {
	mov	dptr,#_encounter_list
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
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
00109$:
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
	jnz	00128$
	ljmp	00103$
00128$:
;	../contiki-sensinode/core/net/mac/lpp.c:224: if(rimeaddr_cmp(neighbor, &e->neighbor)) {
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
	push	ar5
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_rimeaddr_cmp
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	mov	a,r6
	orl	a,r7
	jz	00110$
;	../contiki-sensinode/core/net/mac/lpp.c:225: e->time = time;
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
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
;	../contiki-sensinode/core/net/mac/lpp.c:226: ctimer_set(&e->remove_timer, ENCOUNTER_LIFETIME, remove_encounter, e);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
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
	push	ar5
	push	ar6
	push	ar7
	mov	a,#_remove_encounter
	push	acc
	mov	a,#(_remove_encounter >> 8)
	push	acc
	mov	a,#0xF0
	push	acc
	clr	a
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_ctimer_set
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
;	../contiki-sensinode/core/net/mac/lpp.c:227: break;
	sjmp	00103$
00110$:
;	../contiki-sensinode/core/net/mac/lpp.c:223: for(e = list_head(encounter_list); e != NULL; e = list_item_next(e)) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
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
	ljmp	00109$
00103$:
;	../contiki-sensinode/core/net/mac/lpp.c:231: if(e == NULL) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00130$
	ljmp	00111$
00130$:
;	../contiki-sensinode/core/net/mac/lpp.c:232: e = memb_alloc(&encounter_memb);
	mov	dptr,#_encounter_memb
	mov	b,#0x00
	lcall	_memb_alloc
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
;	../contiki-sensinode/core/net/mac/lpp.c:233: if(e == NULL) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00105$
;	../contiki-sensinode/core/net/mac/lpp.c:235: return;
	ljmp	00111$
00105$:
;	../contiki-sensinode/core/net/mac/lpp.c:237: rimeaddr_copy(&e->neighbor, neighbor);
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
	lcall	_rimeaddr_copy
	dec	sp
	dec	sp
	dec	sp
;	../contiki-sensinode/core/net/mac/lpp.c:238: e->time = time;
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
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
;	../contiki-sensinode/core/net/mac/lpp.c:239: ctimer_set(&e->remove_timer, ENCOUNTER_LIFETIME, remove_encounter, e);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
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
	push	ar2
	push	ar3
	push	ar4
	mov	a,#_remove_encounter
	push	acc
	mov	a,#(_remove_encounter >> 8)
	push	acc
	mov	a,#0xF0
	push	acc
	clr	a
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_ctimer_set
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
;	../contiki-sensinode/core/net/mac/lpp.c:240: list_add(encounter_list, e);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	dptr,#_encounter_list
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
00111$:
	mov	a,sp
	add	a,#0xFA
	mov	sp,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'stream_off'
;------------------------------------------------------------
;dummy                     Allocated to registers 
;------------------------------------------------------------
;	../contiki-sensinode/core/net/mac/lpp.c:261: stream_off(void *dummy)
;	-----------------------------------------
;	 function stream_off
;	-----------------------------------------
_stream_off:
;	../contiki-sensinode/core/net/mac/lpp.c:263: is_streaming = 0;
	mov	dptr,#_is_streaming
	clr	a
	movx	@dptr,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'turn_radio_on_for_neighbor'
;------------------------------------------------------------
;i                         Allocated to stack - sp -4
;neighbor                  Allocated to registers r5 r6 r7 
;sloc0                     Allocated to stack - sp +4
;------------------------------------------------------------
;	../contiki-sensinode/core/net/mac/lpp.c:276: turn_radio_on_for_neighbor(rimeaddr_t *neighbor, struct queue_list_item *i)
;	-----------------------------------------
;	 function turn_radio_on_for_neighbor
;	-----------------------------------------
_turn_radio_on_for_neighbor:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../contiki-sensinode/core/net/mac/lpp.c:280: if(packetbuf_attr(PACKETBUF_ATTR_PACKET_TYPE) ==
	mov	dpl,#0x0E
	push	ar7
	push	ar6
	push	ar5
	lcall	_packetbuf_attr
	mov	r3,dpl
	mov	r4,dph
	pop	ar5
	pop	ar6
	pop	ar7
	cjne	r3,#0x02,00102$
	cjne	r4,#0x00,00102$
;	../contiki-sensinode/core/net/mac/lpp.c:282: is_streaming = 1;
	mov	dptr,#_is_streaming
	mov	a,#0x01
	movx	@dptr,a
;	../contiki-sensinode/core/net/mac/lpp.c:283: turn_radio_on();
	lcall	_turn_radio_on
;	../contiki-sensinode/core/net/mac/lpp.c:284: list_add(queued_packets_list, i);
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	ar7,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar5,@r0
	mov	dptr,#_queued_packets_list
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
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_list_add
	dec	sp
	dec	sp
	dec	sp
;	../contiki-sensinode/core/net/mac/lpp.c:285: ctimer_set(&stream_off_timer, STREAM_OFF_TIME,
	clr	a
	push	acc
	push	acc
	push	acc
	mov	a,#_stream_off
	push	acc
	mov	a,#(_stream_off >> 8)
	push	acc
	mov	a,#0x40
	push	acc
	clr	a
	push	acc
	mov	dptr,#_stream_off_timer
	mov	b,#0x00
	lcall	_ctimer_set
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
;	../contiki-sensinode/core/net/mac/lpp.c:287: return;
	ret
00102$:
;	../contiki-sensinode/core/net/mac/lpp.c:291: if(rimeaddr_cmp(neighbor, &rimeaddr_null)) {
	mov	a,#_rimeaddr_null
	push	acc
	mov	a,#(_rimeaddr_null >> 8)
	push	acc
	mov	a,#0x80
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
	mov	a,r6
	orl	a,r7
	jz	00104$
;	../contiki-sensinode/core/net/mac/lpp.c:295: turn_radio_on();
	lcall	_turn_radio_on
;	../contiki-sensinode/core/net/mac/lpp.c:297: list_add(queued_packets_list, i);
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	dptr,#_queued_packets_list
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
	lcall	_list_add
	dec	sp
	dec	sp
	dec	sp
;	../contiki-sensinode/core/net/mac/lpp.c:298: return;
	ret
00104$:
;	../contiki-sensinode/core/net/mac/lpp.c:346: turn_radio_on();
	lcall	_turn_radio_on
;	../contiki-sensinode/core/net/mac/lpp.c:347: list_add(queued_packets_list, i);
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	dptr,#_queued_packets_list
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
	lcall	_list_add
	dec	sp
	dec	sp
	dec	sp
;	../contiki-sensinode/core/net/mac/lpp.c:348: return;
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'remove_queued_packet'
;------------------------------------------------------------
;tx_ok                     Allocated to stack - sp -10
;i                         Allocated to stack - sp -7
;sent                      Allocated to stack - sp -4
;ptr                       Allocated to stack - sp -2
;num_transmissions         Allocated to registers r2 r5 
;status                    Allocated to registers r6 r7 
;------------------------------------------------------------
;	../contiki-sensinode/core/net/mac/lpp.c:352: remove_queued_packet(struct queue_list_item *i, uint8_t tx_ok)
;	-----------------------------------------
;	 function remove_queued_packet
;	-----------------------------------------
_remove_queued_packet:
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x05
;	../contiki-sensinode/core/net/mac/lpp.c:363: queuebuf_to_packetbuf(i->packet);
	mov	sp,a
	add	a,#0xf9
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
	lcall	_queuebuf_to_packetbuf
	pop	ar2
	pop	ar3
	pop	ar4
;	../contiki-sensinode/core/net/mac/lpp.c:365: ctimer_stop(&i->removal_timer);
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
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
	push	ar4
	push	ar3
	push	ar2
	lcall	_ctimer_stop
	pop	ar2
	pop	ar3
	pop	ar4
;	../contiki-sensinode/core/net/mac/lpp.c:366: queuebuf_free(i->packet);
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
	lcall	_queuebuf_free
;	../contiki-sensinode/core/net/mac/lpp.c:367: list_remove(pending_packets_list, i);
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	dptr,#_pending_packets_list
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
;	../contiki-sensinode/core/net/mac/lpp.c:368: list_remove(queued_packets_list, i);
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	dptr,#_queued_packets_list
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
;	../contiki-sensinode/core/net/mac/lpp.c:371: if(list_length(queued_packets_list) == 0 && is_listening == 0) {
	mov	dptr,#_queued_packets_list
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
	lcall	_list_length
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jnz	00102$
	mov	dptr,#_is_listening
	movx	a,@dptr
	mov	r7,a
	jnz	00102$
;	../contiki-sensinode/core/net/mac/lpp.c:372: turn_radio_off();
	lcall	_turn_radio_off
;	../contiki-sensinode/core/net/mac/lpp.c:373: compower_accumulate(&i->compower);
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
	lcall	_compower_accumulate
00102$:
;	../contiki-sensinode/core/net/mac/lpp.c:376: sent = i->sent_callback;
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	a,#0x23
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
	add	a,#0xfc
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
;	../contiki-sensinode/core/net/mac/lpp.c:377: ptr = i->sent_callback_ptr;
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	a,#0x25
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
	mov	r0,sp
	dec	r0
	dec	r0
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
;	../contiki-sensinode/core/net/mac/lpp.c:378: num_transmissions = i->num_transmissions;
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	a,#0x28
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar5,@r0
	mov	dpl,r2
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r2,a
	mov	r5,#0x00
;	../contiki-sensinode/core/net/mac/lpp.c:379: memb_free(&queued_packets_memb, i);
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar7,@r0
	push	ar5
	push	ar2
	push	ar3
	push	ar4
	push	ar7
	mov	dptr,#_queued_packets_memb
	mov	b,#0x00
	lcall	_memb_free
	dec	sp
	dec	sp
	dec	sp
	pop	ar2
	pop	ar5
;	../contiki-sensinode/core/net/mac/lpp.c:380: if(num_transmissions == 0 || tx_ok == 0) {
	mov	a,r2
	orl	a,r5
	jz	00104$
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	a,@r0
	jnz	00105$
00104$:
;	../contiki-sensinode/core/net/mac/lpp.c:381: status = MAC_TX_NOACK;
	mov	r6,#0x02
	mov	r7,#0x00
	sjmp	00110$
00105$:
;	../contiki-sensinode/core/net/mac/lpp.c:383: status = MAC_TX_OK;
	mov	r6,#0x00
	mov	r7,#0x00
;	../contiki-sensinode/core/net/mac/lpp.c:385: mac_call_sent_callback(sent, ptr, status, num_transmissions);
00110$:
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00113$
	push	ar2
	push	ar5
	push	ar6
	push	ar7
	lcall	00132$
	sjmp	00133$
00132$:
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	ret
00133$:
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
00113$:
	mov	a,sp
	add	a,#0xF8
	mov	sp,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'remove_queued_old_packet_callback'
;------------------------------------------------------------
;item                      Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../contiki-sensinode/core/net/mac/lpp.c:389: remove_queued_old_packet_callback(void *item)
;	-----------------------------------------
;	 function remove_queued_old_packet_callback
;	-----------------------------------------
_remove_queued_old_packet_callback:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../contiki-sensinode/core/net/mac/lpp.c:391: remove_queued_packet(item, 0);
	clr	a
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_remove_queued_packet
	dec	sp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'listen_callback'
;------------------------------------------------------------
;periods                   Allocated to registers r6 r7 
;------------------------------------------------------------
;	../contiki-sensinode/core/net/mac/lpp.c:412: listen_callback(int periods)
;	-----------------------------------------
;	 function listen_callback
;	-----------------------------------------
_listen_callback:
	mov	r6,dpl
;	../contiki-sensinode/core/net/mac/lpp.c:414: is_listening = periods;
	mov	dptr,#_is_listening
	mov	a,r6
	movx	@dptr,a
;	../contiki-sensinode/core/net/mac/lpp.c:415: turn_radio_on();
	ljmp	_turn_radio_on
;------------------------------------------------------------
;Allocation info for local variables in function 'send_probe'
;------------------------------------------------------------
;hdr                       Allocated to registers r5 r6 r7 
;adata                     Allocated to stack - sp -5
;a                         Allocated to stack - sp -2
;hdrlen                    Allocated to registers r3 r4 
;sloc0                     Allocated to stack - sp -8
;------------------------------------------------------------
;	../contiki-sensinode/core/net/mac/lpp.c:422: send_probe(void)
;	-----------------------------------------
;	 function send_probe
;	-----------------------------------------
_send_probe:
	mov	a,sp
	add	a,#0x09
	mov	sp,a
;	../contiki-sensinode/core/net/mac/lpp.c:429: packetbuf_clear();
	lcall	_packetbuf_clear
;	../contiki-sensinode/core/net/mac/lpp.c:430: packetbuf_set_datalen(sizeof(struct lpp_hdr));
	mov	dptr,#0x0006
	lcall	_packetbuf_set_datalen
;	../contiki-sensinode/core/net/mac/lpp.c:431: hdr = packetbuf_dataptr();
	lcall	_packetbuf_dataptr
;	../contiki-sensinode/core/net/mac/lpp.c:432: hdr->type = TYPE_PROBE;
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,#0x01
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
;	../contiki-sensinode/core/net/mac/lpp.c:433: rimeaddr_copy(&hdr->sender, &rimeaddr_node_addr);
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
	pop	ar5
	pop	ar6
	pop	ar7
;	../contiki-sensinode/core/net/mac/lpp.c:435: rimeaddr_copy(&hdr->receiver, &rimeaddr_null);
	mov	a,#0x04
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	push	ar7
	push	ar6
	push	ar5
	mov	a,#_rimeaddr_null
	push	acc
	mov	a,#(_rimeaddr_null >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_rimeaddr_copy
	dec	sp
	dec	sp
	dec	sp
;	../contiki-sensinode/core/net/mac/lpp.c:437: packetbuf_set_addr(PACKETBUF_ADDR_RECEIVER, &rimeaddr_null);
	mov	a,#_rimeaddr_null
	push	acc
	mov	a,#(_rimeaddr_null >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dpl,#0x19
	lcall	_packetbuf_set_addr
	dec	sp
	dec	sp
	dec	sp
;	../contiki-sensinode/core/net/mac/lpp.c:439: int hdrlen = NETSTACK_FRAMER.create();
	mov	dptr,#_framer_802154
	clr	a
	movc	a,@a+dptr
	mov	r3,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	lcall	__sdcc_call_dptr
	mov	r3,dpl
	mov	r4,dph
	pop	ar5
	pop	ar6
	pop	ar7
;	../contiki-sensinode/core/net/mac/lpp.c:440: if(hdrlen < 0) {
	mov	a,r4
	jnb	acc.7,00102$
;	../contiki-sensinode/core/net/mac/lpp.c:442: return;
	ljmp	00110$
00102$:
;	../contiki-sensinode/core/net/mac/lpp.c:447: adata = (struct announcement_msg *)((char *)hdr + sizeof(struct lpp_hdr));
	mov	a,#0x06
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	../contiki-sensinode/core/net/mac/lpp.c:449: adata->num = 0;
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
;	../contiki-sensinode/core/net/mac/lpp.c:450: for(a = announcement_list(); a != NULL; a = list_item_next(a)) {
	lcall	_announcement_list
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
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x02
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
00108$:
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
	jnz	00125$
	ljmp	00103$
00125$:
;	../contiki-sensinode/core/net/mac/lpp.c:451: adata->data[adata->num].id = a->id;
	mov	a,sp
	add	a,#0xfb
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
	xch	a,r6
	add	a,acc
	xch	a,r6
	rlc	a
	xch	a,r6
	add	a,acc
	xch	a,r6
	rlc	a
	mov	r7,a
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,r6
	add	a,r2
	mov	@r0,a
	mov	a,r7
	addc	a,r3
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar4
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
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
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
;	../contiki-sensinode/core/net/mac/lpp.c:452: adata->data[adata->num].value = a->value;
	mov	a,sp
	add	a,#0xfb
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
	xch	a,r6
	add	a,acc
	xch	a,r6
	rlc	a
	xch	a,r6
	add	a,acc
	xch	a,r6
	rlc	a
	mov	r7,a
	mov	a,r6
	add	a,r2
	mov	r6,a
	mov	a,r7
	addc	a,r3
	mov	r7,a
	mov	ar5,r4
	mov	a,#0x02
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	push	ar2
	push	ar3
	push	ar4
	mov	a,sp
	add	a,#0xfb
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
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
;	../contiki-sensinode/core/net/mac/lpp.c:453: adata->num++;
	mov	a,sp
	add	a,#0xf8
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
	inc	r6
	cjne	r6,#0x00,00126$
	inc	r7
00126$:
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	../contiki-sensinode/core/net/mac/lpp.c:450: for(a = announcement_list(); a != NULL; a = list_item_next(a)) {
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar4
	push	ar3
	push	ar2
	lcall	_list_item_next
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	pop	ar2
	pop	ar3
	pop	ar4
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	pop	ar4
	pop	ar3
	pop	ar2
	ljmp	00108$
00103$:
;	../contiki-sensinode/core/net/mac/lpp.c:458: sizeof(struct announcement_data) * adata->num);
	mov	a,sp
	add	a,#0xfb
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
	xch	a,r6
	add	a,acc
	xch	a,r6
	rlc	a
	xch	a,r6
	add	a,acc
	xch	a,r6
	rlc	a
	mov	r7,a
	mov	a,#0x08
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	lcall	_packetbuf_set_datalen
;	../contiki-sensinode/core/net/mac/lpp.c:464: if(NETSTACK_RADIO.channel_clear()) {
	mov	dptr,#(_cc2530_rf_driver + 0x000a)
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
	mov	a,r6
	orl	a,r7
	jz	00105$
;	../contiki-sensinode/core/net/mac/lpp.c:465: NETSTACK_RADIO.send(packetbuf_hdrptr(), packetbuf_totlen());
	mov	dptr,#(_cc2530_rf_driver + 0x0006)
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	push	ar7
	push	ar6
	lcall	_packetbuf_totlen
	xch	a,r0
	mov	a,sp
	add	a,#0xf6
	xch	a,r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	lcall	_packetbuf_hdrptr
	mov	r2,dpl
	mov	r3,dph
	mov	r5,b
	pop	ar6
	pop	ar7
	push	ar7
	push	ar6
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	lcall	00128$
	sjmp	00129$
00128$:
	push	ar6
	push	ar7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r5
	ret
00129$:
	dec	sp
	dec	sp
	pop	ar6
	pop	ar7
	sjmp	00106$
00105$:
;	../contiki-sensinode/core/net/mac/lpp.c:467: off_time_adjustment = random_rand() % (OFF_TIME / 2);
	lcall	_random_rand
	mov	r6,dpl
	mov	r7,dph
	mov	a,#0x07
	push	acc
	clr	a
	push	acc
	mov	dpl,r6
	mov	dph,r7
	lcall	__moduint
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	mov	dptr,#_off_time_adjustment
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
00106$:
;	../contiki-sensinode/core/net/mac/lpp.c:470: compower_accumulate(&compower_idle_activity);
	mov	dptr,#_compower_idle_activity
	mov	b,#0x00
	lcall	_compower_accumulate
00110$:
	mov	a,sp
	add	a,#0xF7
	mov	sp,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'send_stream_probe'
;------------------------------------------------------------
;dummy                     Allocated to registers 
;------------------------------------------------------------
;	../contiki-sensinode/core/net/mac/lpp.c:474: send_stream_probe(void *dummy)
;	-----------------------------------------
;	 function send_stream_probe
;	-----------------------------------------
_send_stream_probe:
;	../contiki-sensinode/core/net/mac/lpp.c:478: turn_radio_on();
	lcall	_turn_radio_on
;	../contiki-sensinode/core/net/mac/lpp.c:481: send_probe();
	lcall	_send_probe
;	../contiki-sensinode/core/net/mac/lpp.c:484: is_streaming = 1;
	mov	dptr,#_is_streaming
	mov	a,#0x01
	movx	@dptr,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'num_packets_to_send'
;------------------------------------------------------------
;	../contiki-sensinode/core/net/mac/lpp.c:489: num_packets_to_send(void)
;	-----------------------------------------
;	 function num_packets_to_send
;	-----------------------------------------
_num_packets_to_send:
;	../contiki-sensinode/core/net/mac/lpp.c:503: return list_length(queued_packets_list);
	mov	dptr,#_queued_packets_list
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
	ljmp	_list_length
;------------------------------------------------------------
;Allocation info for local variables in function 'dutycycle'
;------------------------------------------------------------
;ptr                       Allocated to registers r5 r6 r7 
;t                         Allocated to stack - sp -2
;PT_YIELD_FLAG             Allocated to registers r4 
;current_off_time          Allocated to registers r7 r4 
;sloc0                     Allocated to stack - sp -5
;------------------------------------------------------------
;	../contiki-sensinode/core/net/mac/lpp.c:513: dutycycle(void *ptr)
;	-----------------------------------------
;	 function dutycycle
;	-----------------------------------------
_dutycycle:
	mov	a,sp
	add	a,#0x06
	mov	sp,a
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../contiki-sensinode/core/net/mac/lpp.c:515: struct ctimer *t = ptr;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	../contiki-sensinode/core/net/mac/lpp.c:517: PT_BEGIN(&dutycycle_pt);
	mov	r4,#0x01
	mov	dptr,#_dutycycle_pt
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	cjne	r2,#0x00,00184$
	cjne	r3,#0x00,00184$
	sjmp	00137$
00184$:
	cjne	r2,#0x21,00185$
	cjne	r3,#0x02,00185$
	sjmp	00102$
00185$:
	cjne	r2,#0x48,00186$
	cjne	r3,#0x02,00186$
	ljmp	00112$
00186$:
	cjne	r2,#0x56,00187$
	cjne	r3,#0x02,00187$
	ljmp	00118$
00187$:
	cjne	r2,#0x5C,00188$
	cjne	r3,#0x02,00188$
	ljmp	00127$
00188$:
	ljmp	00139$
;	../contiki-sensinode/core/net/mac/lpp.c:519: while(1) {
00137$:
;	../contiki-sensinode/core/net/mac/lpp.c:538: turn_radio_on();
	lcall	_turn_radio_on
;	../contiki-sensinode/core/net/mac/lpp.c:541: send_probe();
	lcall	_send_probe
;	../contiki-sensinode/core/net/mac/lpp.c:544: ctimer_set(t, LISTEN_TIME, (void (*)(void *))dutycycle, t);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	ar4,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar2,@r0
	mov	r5,#_dutycycle
	mov	r6,#(_dutycycle >> 8)
	mov	r7,#0x80
	push	ar4
	push	ar3
	push	ar2
	push	ar5
	push	ar6
	push	ar7
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_ctimer_set
	mov	a,sp
	add	a,#0xf8
	mov	sp,a
;	../contiki-sensinode/core/net/mac/lpp.c:545: PT_YIELD(&dutycycle_pt);
	mov	r4,#0x00
	mov	dptr,#_dutycycle_pt
	mov	a,#0x21
	movx	@dptr,a
	mov	a,#0x02
	inc	dptr
	movx	@dptr,a
00102$:
	mov	a,r4
	jnz	00106$
	mov	dptr,#0x0001
	ljmp	00140$
00106$:
;	../contiki-sensinode/core/net/mac/lpp.c:568: if(num_packets_to_send() == 0) {
	lcall	_num_packets_to_send
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jz	00190$
	ljmp	00134$
00190$:
;	../contiki-sensinode/core/net/mac/lpp.c:572: if(is_listening == 0) {
	mov	dptr,#_is_listening
	movx	a,@dptr
	mov	r7,a
	jz	00191$
	ljmp	00125$
00191$:
;	../contiki-sensinode/core/net/mac/lpp.c:574: if(!NETSTACK_RADIO.receiving_packet()) {
	mov	dptr,#(_cc2530_rf_driver + 0x000c)
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	lcall	__sdcc_call_dptr
	mov	r5,dpl
	mov	r6,dph
	mov	a,r5
	orl	a,r6
	jnz	00109$
;	../contiki-sensinode/core/net/mac/lpp.c:575: turn_radio_off();
	lcall	_turn_radio_off
;	../contiki-sensinode/core/net/mac/lpp.c:576: compower_accumulate(&compower_idle_activity);
	mov	dptr,#_compower_idle_activity
	mov	b,#0x00
	lcall	_compower_accumulate
00109$:
;	../contiki-sensinode/core/net/mac/lpp.c:578: current_off_time = off_time - off_time_adjustment;
	mov	dptr,#_off_time_adjustment
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_off_time
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,r2
	clr	c
	subb	a,r5
	mov	r5,a
	mov	a,r3
	subb	a,r6
	mov	r6,a
	mov	ar7,r5
	mov	ar4,r6
;	../contiki-sensinode/core/net/mac/lpp.c:579: if(current_off_time < LISTEN_TIME * 2) {
	clr	c
	mov	a,r7
	subb	a,#0x02
	mov	a,r4
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00111$
;	../contiki-sensinode/core/net/mac/lpp.c:580: current_off_time = LISTEN_TIME * 2;
	mov	r7,#0x02
	mov	r4,#0x00
00111$:
;	../contiki-sensinode/core/net/mac/lpp.c:582: off_time_adjustment = 0;
	mov	dptr,#_off_time_adjustment
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	../contiki-sensinode/core/net/mac/lpp.c:583: ctimer_set(t, current_off_time, (void (*)(void *))dutycycle, t);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,sp
	add	a,#0xfb
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
	mov	r5,#_dutycycle
	mov	r6,#(_dutycycle >> 8)
	mov	r3,#0x80
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
	push	ar5
	push	ar6
	push	ar3
	push	ar7
	push	ar4
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_ctimer_set
	mov	a,sp
	add	a,#0xf8
	mov	sp,a
;	../contiki-sensinode/core/net/mac/lpp.c:584: PT_YIELD(&dutycycle_pt);
	mov	r4,#0x00
	mov	dptr,#_dutycycle_pt
	mov	a,#0x48
	movx	@dptr,a
	mov	a,#0x02
	inc	dptr
	movx	@dptr,a
00112$:
	mov	a,r4
	jz	00194$
	ljmp	00137$
00194$:
	mov	dptr,#0x0001
	ljmp	00140$
00125$:
;	../contiki-sensinode/core/net/mac/lpp.c:596: is_listening--;
	mov	a,r7
	dec	a
	mov	dptr,#_is_listening
	movx	@dptr,a
;	../contiki-sensinode/core/net/mac/lpp.c:597: ctimer_set(t, OFF_TIME, (void (*)(void *))dutycycle, t);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar4,@r0
	mov	r2,#_dutycycle
	mov	r3,#(_dutycycle >> 8)
	mov	r7,#0x80
	push	ar5
	push	ar6
	push	ar4
	push	ar2
	push	ar3
	push	ar7
	mov	a,#0x0F
	push	acc
	clr	a
	push	acc
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_ctimer_set
	mov	a,sp
	add	a,#0xf8
	mov	sp,a
;	../contiki-sensinode/core/net/mac/lpp.c:598: PT_YIELD(&dutycycle_pt);
	mov	r4,#0x00
	mov	dptr,#_dutycycle_pt
	mov	a,#0x56
	movx	@dptr,a
	mov	a,#0x02
	inc	dptr
	movx	@dptr,a
00118$:
	mov	a,r4
	jz	00195$
	ljmp	00137$
00195$:
	mov	dptr,#0x0001
	sjmp	00140$
00134$:
;	../contiki-sensinode/core/net/mac/lpp.c:603: ctimer_set(t, off_time, (void (*)(void *))dutycycle, t);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar4,@r0
	mov	r2,#_dutycycle
	mov	r3,#(_dutycycle >> 8)
	mov	r7,#0x80
	push	ar5
	push	ar6
	push	ar4
	push	ar2
	push	ar3
	push	ar7
	mov	dptr,#_off_time
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_ctimer_set
	mov	a,sp
	add	a,#0xf8
	mov	sp,a
;	../contiki-sensinode/core/net/mac/lpp.c:604: PT_YIELD(&dutycycle_pt);
	mov	r4,#0x00
	mov	dptr,#_dutycycle_pt
	mov	a,#0x5C
	movx	@dptr,a
	mov	a,#0x02
	inc	dptr
	movx	@dptr,a
00127$:
	mov	a,r4
	jz	00196$
	ljmp	00137$
00196$:
	mov	dptr,#0x0001
;	../contiki-sensinode/core/net/mac/lpp.c:608: PT_END(&dutycycle_pt);
	sjmp	00140$
00139$:
	mov	dptr,#_dutycycle_pt
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x0003
00140$:
	mov	a,sp
	add	a,#0xFA
	mov	sp,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'restart_dutycycle'
;------------------------------------------------------------
;initial_wait              Allocated to registers r6 r7 
;------------------------------------------------------------
;	../contiki-sensinode/core/net/mac/lpp.c:612: restart_dutycycle(clock_time_t initial_wait)
;	-----------------------------------------
;	 function restart_dutycycle
;	-----------------------------------------
_restart_dutycycle:
	mov	r6,dpl
	mov	r7,dph
;	../contiki-sensinode/core/net/mac/lpp.c:614: PT_INIT(&dutycycle_pt);
	mov	dptr,#_dutycycle_pt
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	../contiki-sensinode/core/net/mac/lpp.c:615: ctimer_set(&timer, initial_wait, (void (*)(void *))dutycycle, &timer);  
	mov	r4,#_dutycycle
	mov	r5,#(_dutycycle >> 8)
	mov	r3,#0x80
	mov	a,#_timer
	push	acc
	mov	a,#(_timer >> 8)
	push	acc
	clr	a
	push	acc
	push	ar4
	push	ar5
	push	ar3
	push	ar6
	push	ar7
	mov	dptr,#_timer
	mov	b,#0x00
	lcall	_ctimer_set
	mov	a,sp
	add	a,#0xf8
	mov	sp,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'send_packet'
;------------------------------------------------------------
;ptr                       Allocated to stack - sp -19
;sent                      Allocated to stack - sp -14
;hdr                       Allocated to stack - sp -11
;timeout                   Allocated to stack - sp -5
;is_broadcast              Allocated to stack - sp -3
;hdrlen                    Allocated to registers r6 r7 
;i                         Allocated to stack - sp -2
;sloc0                     Allocated to stack - sp -12
;------------------------------------------------------------
;	../contiki-sensinode/core/net/mac/lpp.c:633: send_packet(mac_callback_t sent, void *ptr)
;	-----------------------------------------
;	 function send_packet
;	-----------------------------------------
_send_packet:
	push	dpl
	push	dph
	mov	a,sp
	add	a,#0x0D
;	../contiki-sensinode/core/net/mac/lpp.c:637: uint8_t is_broadcast = 0;
	mov	sp,a
	add	a,#0xfd
	mov	r0,a
	mov	@r0,#0x00
;	../contiki-sensinode/core/net/mac/lpp.c:639: rimeaddr_copy(&hdr.sender, &rimeaddr_node_addr);
	mov	a,sp
	add	a,#0xF5
	mov	r1,a
	add	a,#0x02
	mov	r4,a
	mov	r3,#0x00
	mov	r2,#0x40
	push	ar1
	mov	a,#_rimeaddr_node_addr
	push	acc
	mov	a,#(_rimeaddr_node_addr >> 8)
	push	acc
	clr	a
	push	acc
	mov	dpl,r4
	mov	dph,r3
	mov	b,r2
	lcall	_rimeaddr_copy
	dec	sp
	dec	sp
	dec	sp
;	../contiki-sensinode/core/net/mac/lpp.c:640: rimeaddr_copy(&hdr.receiver, packetbuf_addr(PACKETBUF_ADDR_RECEIVER));
	mov	dpl,#0x19
	lcall	_packetbuf_addr
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	pop	ar1
	mov	a,sp
	add	a,#0xf4
	mov	r0,a
	mov	a,#0x04
	add	a,r1
	mov	@r0,a
	mov	a,sp
	add	a,#0xf4
	mov	r0,a
	mov	ar5,@r0
	mov	r6,#0x00
	mov	r7,#0x40
	push	ar1
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
	pop	ar1
;	../contiki-sensinode/core/net/mac/lpp.c:641: if(rimeaddr_cmp(&hdr.receiver, &rimeaddr_null)) {
	mov	a,sp
	add	a,#0xf4
	mov	r0,a
	mov	ar7,@r0
	mov	r6,#0x00
	mov	r5,#0x40
	push	ar1
	mov	a,#_rimeaddr_null
	push	acc
	mov	a,#(_rimeaddr_null >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	_rimeaddr_cmp
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	pop	ar1
	mov	a,r6
	orl	a,r7
	jz	00102$
;	../contiki-sensinode/core/net/mac/lpp.c:642: is_broadcast = 1;
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	@r0,#0x01
00102$:
;	../contiki-sensinode/core/net/mac/lpp.c:644: hdr.type = TYPE_DATA;
	mov	@r1,#0x02
	inc	r1
	mov	@r1,#0x00
	dec	r1
;	../contiki-sensinode/core/net/mac/lpp.c:646: packetbuf_hdralloc(sizeof(struct lpp_hdr));
	mov	dptr,#0x0006
	push	ar1
	lcall	_packetbuf_hdralloc
	pop	ar1
;	../contiki-sensinode/core/net/mac/lpp.c:647: memcpy(packetbuf_hdrptr(), &hdr, sizeof(struct lpp_hdr));
	mov	ar7,r1
	mov	r6,#0x00
	mov	r5,#0x40
	push	ar7
	push	ar6
	push	ar5
	lcall	_packetbuf_hdrptr
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,#0x06
	push	acc
	clr	a
	push	acc
	push	ar7
	push	ar6
	push	ar5
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_memcpy
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	../contiki-sensinode/core/net/mac/lpp.c:648: packetbuf_compact();
	lcall	_packetbuf_compact
;	../contiki-sensinode/core/net/mac/lpp.c:650: packetbuf_set_attr(PACKETBUF_ATTR_MAC_ACK, 1);
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	mov	dpl,#0x0B
	lcall	_packetbuf_set_attr
	dec	sp
	dec	sp
;	../contiki-sensinode/core/net/mac/lpp.c:653: int hdrlen = NETSTACK_FRAMER.create();
	mov	dptr,#_framer_802154
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
;	../contiki-sensinode/core/net/mac/lpp.c:654: if(hdrlen < 0) {
	mov	a,dph
	mov	r7,a
	jnb	acc.7,00109$
;	../contiki-sensinode/core/net/mac/lpp.c:656: mac_call_sent_callback(sent, ptr, MAC_TX_ERR_FATAL, 0);
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00106$
	clr	a
	push	acc
	push	acc
	mov	a,#0x05
	push	acc
	clr	a
	push	acc
	lcall	00158$
	sjmp	00159$
00158$:
	mov	a,sp
	add	a,#0xec
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,sp
	add	a,#0xe5
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	ret
00159$:
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
00106$:
;	../contiki-sensinode/core/net/mac/lpp.c:657: return;
	ljmp	00129$
00109$:
;	../contiki-sensinode/core/net/mac/lpp.c:681: i = memb_alloc(&queued_packets_memb);
	mov	dptr,#_queued_packets_memb
	mov	b,#0x00
	lcall	_memb_alloc
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
;	../contiki-sensinode/core/net/mac/lpp.c:682: if(i != NULL) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00160$
	ljmp	00127$
00160$:
;	../contiki-sensinode/core/net/mac/lpp.c:683: i->sent_callback = sent;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x23
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
	add	a,#0xf2
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
;	../contiki-sensinode/core/net/mac/lpp.c:684: i->sent_callback_ptr = ptr;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x25
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
	add	a,#0xed
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
;	../contiki-sensinode/core/net/mac/lpp.c:685: i->num_transmissions = 0;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x28
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
;	../contiki-sensinode/core/net/mac/lpp.c:686: i->packet = queuebuf_new_from_packetbuf();
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
	push	ar4
	push	ar3
	push	ar2
	lcall	_queuebuf_new_from_packetbuf
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	pop	ar2
	pop	ar3
	pop	ar4
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
;	../contiki-sensinode/core/net/mac/lpp.c:687: if(i->packet == NULL) {
	mov	a,r5
	orl	a,r6
	jnz	00119$
;	../contiki-sensinode/core/net/mac/lpp.c:688: memb_free(&queued_packets_memb, i);
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
	mov	dptr,#_queued_packets_memb
	mov	b,#0x00
	lcall	_memb_free
	dec	sp
	dec	sp
	dec	sp
;	../contiki-sensinode/core/net/mac/lpp.c:689: printf("null packet\n");
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	../contiki-sensinode/core/net/mac/lpp.c:690: mac_call_sent_callback(sent, ptr, MAC_TX_ERR, 0);
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00113$
	clr	a
	push	acc
	push	acc
	mov	a,#0x04
	push	acc
	clr	a
	push	acc
	lcall	00163$
	sjmp	00164$
00163$:
	mov	a,sp
	add	a,#0xec
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,sp
	add	a,#0xe5
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	ret
00164$:
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
00113$:
;	../contiki-sensinode/core/net/mac/lpp.c:691: return;
	ljmp	00129$
00119$:
;	../contiki-sensinode/core/net/mac/lpp.c:693: if(is_broadcast) {
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	jz	00116$
;	../contiki-sensinode/core/net/mac/lpp.c:694: timeout = PACKET_LIFETIME;
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	@r0,#0x10
	inc	r0
	mov	@r0,#0x00
	sjmp	00117$
00116$:
;	../contiki-sensinode/core/net/mac/lpp.c:708: timeout = UNICAST_TIMEOUT;
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	@r0,#0x18
	inc	r0
	mov	@r0,#0x00
00117$:
;	../contiki-sensinode/core/net/mac/lpp.c:714: remove_queued_old_packet_callback, i);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
;	../contiki-sensinode/core/net/mac/lpp.c:713: ctimer_set(&i->removal_timer, timeout,
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
	push	ar3
	push	ar4
	push	ar5
	mov	a,#_remove_queued_old_packet_callback
	push	acc
	mov	a,#(_remove_queued_old_packet_callback >> 8)
	push	acc
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	lcall	_ctimer_set
	mov	a,sp
	add	a,#0xf9
;	../contiki-sensinode/core/net/mac/lpp.c:719: turn_radio_on_for_neighbor(&hdr.receiver, i);
	mov	sp,a
	add	a,#0xf4
	mov	r0,a
	mov	ar7,@r0
	mov	r6,#0x00
	mov	r5,#0x40
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	_turn_radio_on_for_neighbor
	dec	sp
	dec	sp
	dec	sp
	sjmp	00129$
00127$:
;	../contiki-sensinode/core/net/mac/lpp.c:723: printf("i == NULL\n");
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	../contiki-sensinode/core/net/mac/lpp.c:724: mac_call_sent_callback(sent, ptr, MAC_TX_ERR, 0);
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00129$
	clr	a
	push	acc
	push	acc
	mov	a,#0x04
	push	acc
	clr	a
	push	acc
	lcall	00167$
	sjmp	00168$
00167$:
	mov	a,sp
	add	a,#0xec
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,sp
	add	a,#0xe5
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	ret
00168$:
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
00129$:
	mov	a,sp
	add	a,#0xF1
	mov	sp,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'send_list'
;------------------------------------------------------------
;ptr                       Allocated to stack - sp -4
;buf_list                  Allocated to stack - sp -7
;sent                      Allocated to registers r6 r7 
;------------------------------------------------------------
;	../contiki-sensinode/core/net/mac/lpp.c:730: send_list(mac_callback_t sent, void *ptr, struct rdc_buf_list *buf_list)
;	-----------------------------------------
;	 function send_list
;	-----------------------------------------
_send_list:
	mov	r6,dpl
	mov	r7,dph
;	../contiki-sensinode/core/net/mac/lpp.c:732: if(buf_list != NULL) {
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00103$
;	../contiki-sensinode/core/net/mac/lpp.c:733: queuebuf_to_packetbuf(buf_list->buf);
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	mov	a,#0x03
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
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
	push	ar7
	push	ar6
	lcall	_queuebuf_to_packetbuf
	pop	ar6
	pop	ar7
;	../contiki-sensinode/core/net/mac/lpp.c:734: send_packet(sent, ptr);
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
	mov	dpl,r6
	mov	dph,r7
	lcall	_send_packet
	dec	sp
	dec	sp
	dec	sp
00103$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'detect_ack'
;------------------------------------------------------------
;wt                        Allocated to registers r5 r6 
;ack_received              Allocated to registers r7 
;len                       Allocated to registers r5 r6 
;ackbuf                    Allocated to stack - sp -4
;------------------------------------------------------------
;	../contiki-sensinode/core/net/mac/lpp.c:739: detect_ack(void)
;	-----------------------------------------
;	 function detect_ack
;	-----------------------------------------
_detect_ack:
	mov	a,sp
	add	a,#0x05
	mov	sp,a
;	../contiki-sensinode/core/net/mac/lpp.c:745: uint8_t ack_received = 0;
	mov	r7,#0x00
;	../contiki-sensinode/core/net/mac/lpp.c:747: wt = RTIMER_NOW();
	mov	r5,_T1CNTL
	mov	r6,#0x00
	mov	r3,_T1CNTH
	mov	ar4,r3
	clr	a
	add	a,r5
	mov	r5,a
	mov	a,r4
	addc	a,r6
	mov	r6,a
;	../contiki-sensinode/core/net/mac/lpp.c:748: leds_on(LEDS_GREEN);
	mov	dpl,#0x02
	push	ar7
	push	ar6
	push	ar5
	lcall	_leds_on
	pop	ar5
	pop	ar6
	pop	ar7
;	../contiki-sensinode/core/net/mac/lpp.c:749: while(RTIMER_CLOCK_LT(RTIMER_NOW(), wt + INTER_PACKET_INTERVAL)) { }
	mov	a,#0x03
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
00101$:
	push	ar7
	mov	r3,_T1CNTL
	mov	r4,#0x00
	mov	r2,_T1CNTH
	mov	ar7,r2
	clr	a
	mov	r2,a
	add	a,r3
	mov	r3,a
	mov	a,r7
	addc	a,r4
	mov	r4,a
	mov	a,r3
	clr	c
	subb	a,r5
	mov	r3,a
	mov	a,r4
	subb	a,r6
	mov	r4,a
	pop	ar7
	jb	acc.7,00101$
;	../contiki-sensinode/core/net/mac/lpp.c:750: leds_off(LEDS_GREEN);
	mov	dpl,#0x02
	push	ar7
	lcall	_leds_off
;	../contiki-sensinode/core/net/mac/lpp.c:752: if((NETSTACK_RADIO.receiving_packet() ||
	mov	dptr,#(_cc2530_rf_driver + 0x000c)
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	lcall	__sdcc_call_dptr
	mov	r5,dpl
	mov	r6,dph
	pop	ar7
	mov	a,r5
	orl	a,r6
	jnz	00109$
;	../contiki-sensinode/core/net/mac/lpp.c:753: NETSTACK_RADIO.pending_packet() ||
	mov	dptr,#(_cc2530_rf_driver + 0x000e)
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	push	ar7
	mov	dpl,r5
	mov	dph,r6
	lcall	__sdcc_call_dptr
	mov	r5,dpl
	mov	r6,dph
	pop	ar7
	mov	a,r5
	orl	a,r6
	jnz	00109$
;	../contiki-sensinode/core/net/mac/lpp.c:754: NETSTACK_RADIO.channel_clear() == 0)) {
	mov	dptr,#(_cc2530_rf_driver + 0x000a)
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	push	ar7
	mov	dpl,r5
	mov	dph,r6
	lcall	__sdcc_call_dptr
	mov	r5,dpl
	mov	r6,dph
	pop	ar7
	mov	a,r5
	orl	a,r6
	jnz	00110$
00109$:
;	../contiki-sensinode/core/net/mac/lpp.c:758: wt = RTIMER_NOW();
	mov	r5,_T1CNTL
	mov	r6,#0x00
	mov	r3,_T1CNTH
	mov	ar4,r3
	clr	a
	mov	r3,a
	add	a,r5
	mov	r5,a
	mov	a,r4
	addc	a,r6
	mov	r6,a
;	../contiki-sensinode/core/net/mac/lpp.c:759: while(RTIMER_CLOCK_LT(RTIMER_NOW(), wt + AFTER_ACK_DETECTECT_WAIT_TIME)) { }
	mov	a,#0x0F
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
00104$:
	push	ar7
	mov	r3,_T1CNTL
	mov	r4,#0x00
	mov	r2,_T1CNTH
	mov	ar7,r2
	clr	a
	mov	r2,a
	add	a,r3
	mov	r3,a
	mov	a,r7
	addc	a,r4
	mov	r4,a
	mov	a,r3
	clr	c
	subb	a,r5
	mov	r3,a
	mov	a,r4
	subb	a,r6
	mov	r4,a
	pop	ar7
	jb	acc.7,00104$
;	../contiki-sensinode/core/net/mac/lpp.c:761: len = NETSTACK_RADIO.read(ackbuf, ACK_LEN);
	mov	dptr,#(_cc2530_rf_driver + 0x0008)
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	mov	a,sp
	add	a,#0xFC
	mov	r4,a
	mov	r3,#0x00
	mov	r2,#0x40
	push	ar7
	mov	a,#0x03
	push	acc
	clr	a
	push	acc
	lcall	00146$
	sjmp	00147$
00146$:
	push	ar5
	push	ar6
	mov	dpl,r4
	mov	dph,r3
	mov	b,r2
	ret
00147$:
	mov	r5,dpl
	mov	r6,dph
	dec	sp
	dec	sp
	pop	ar7
;	../contiki-sensinode/core/net/mac/lpp.c:762: if(len == ACK_LEN) {
	cjne	r5,#0x03,00110$
	cjne	r6,#0x00,00110$
;	../contiki-sensinode/core/net/mac/lpp.c:763: ack_received = 1;
	mov	r7,#0x01
00110$:
;	../contiki-sensinode/core/net/mac/lpp.c:766: if(ack_received) {
	mov	a,r7
	jz	00114$
;	../contiki-sensinode/core/net/mac/lpp.c:767: leds_toggle(LEDS_RED);
	mov	dpl,#0x01
	push	ar7
	lcall	_leds_toggle
	pop	ar7
00114$:
;	../contiki-sensinode/core/net/mac/lpp.c:769: return ack_received;
	mov	r6,#0x00
	mov	dpl,r7
	mov	dph,r6
	mov	a,sp
	add	a,#0xFB
	mov	sp,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'input_packet'
;------------------------------------------------------------
;hdr                       Allocated to stack - sp -13
;reception_time            Allocated to registers 
;ret                       Allocated to registers 
;adata                     Allocated to stack - sp -7
;i                         Allocated to stack - sp -5
;receiver                  Allocated to stack - sp -2
;sent                      Allocated to registers 
;sloc0                     Allocated to stack - sp +4
;sloc1                     Allocated to stack - sp -15
;------------------------------------------------------------
;	../contiki-sensinode/core/net/mac/lpp.c:779: input_packet(void)
;	-----------------------------------------
;	 function input_packet
;	-----------------------------------------
_input_packet:
	mov	a,sp
	add	a,#0x10
	mov	sp,a
;	../contiki-sensinode/core/net/mac/lpp.c:785: reception_time = clock_time();
	lcall	_clock_time
	mov	r6,dpl
	mov	r7,dph
;	../contiki-sensinode/core/net/mac/lpp.c:787: if(NETSTACK_FRAMER.parse() < 0) {
	mov	dptr,#(_framer_802154 + 0x0002)
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	push	ar7
	push	ar6
	mov	dpl,r4
	mov	dph,r5
	lcall	__sdcc_call_dptr
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
	mov	a,r5
	jnb	acc.7,00102$
;	../contiki-sensinode/core/net/mac/lpp.c:788: printf("lpp input_packet framer error\n");
	push	ar7
	push	ar6
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar6
	pop	ar7
00102$:
;	../contiki-sensinode/core/net/mac/lpp.c:791: memcpy(&hdr, packetbuf_dataptr(), sizeof(struct lpp_hdr));;
	push	ar6
	push	ar7
	push	ar7
	push	ar6
	lcall	_packetbuf_dataptr
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	pop	ar6
	pop	ar7
	mov	a,sp
	add	a,#0xF1
	mov	r1,a
	mov	r2,a
	mov	r6,#0x00
	mov	r7,#0x40
	push	ar7
	push	ar6
	push	ar1
	mov	a,#0x06
	push	acc
	clr	a
	push	acc
	push	ar3
	push	ar4
	push	ar5
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	lcall	_memcpy
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	../contiki-sensinode/core/net/mac/lpp.c:792: packetbuf_hdrreduce(sizeof(struct lpp_hdr));
	mov	dptr,#0x0006
	lcall	_packetbuf_hdrreduce
	pop	ar1
	pop	ar6
	pop	ar7
;	../contiki-sensinode/core/net/mac/lpp.c:795: if(hdr.type == TYPE_PROBE) {
	mov	ar5,@r1
	inc	r1
	mov	ar4,@r1
	dec	r1
	cjne	r5,#0x01,00175$
	cjne	r4,#0x00,00175$
	sjmp	00176$
00175$:
	pop	ar7
	pop	ar6
	ljmp	00125$
00176$:
	pop	ar7
	pop	ar6
;	../contiki-sensinode/core/net/mac/lpp.c:800: register_encounter(&hdr.sender, reception_time);
	mov	a,#0x02
	add	a,r1
	mov	r5,a
	mov	r2,a
	mov	r3,#0x00
	mov	r4,#0x40
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_register_encounter
	dec	sp
	dec	sp
;	../contiki-sensinode/core/net/mac/lpp.c:804: MIN(packetbuf_datalen(), sizeof(adata)));
	lcall	_packetbuf_datalen
	mov	r6,dpl
	mov	r7,dph
	pop	ar5
	clr	c
	mov	a,r6
	subb	a,#0x02
	mov	a,r7
	subb	a,#0x00
	jnc	00132$
	push	ar5
	lcall	_packetbuf_datalen
	xch	a,r0
	mov	a,sp
	add	a,#0xf0
	xch	a,r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	pop	ar5
	sjmp	00133$
00132$:
	mov	a,sp
	add	a,#0xf1
	mov	r0,a
	mov	@r0,#0x02
	inc	r0
	mov	@r0,#0x00
00133$:
;	../contiki-sensinode/core/net/mac/lpp.c:803: memcpy(&adata, packetbuf_dataptr(),
	push	ar5
	push	ar5
	lcall	_packetbuf_dataptr
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	pop	ar5
	mov	a,sp
	add	a,#0xF8
	mov	r5,a
	mov	r6,#0x00
	mov	r7,#0x40
	push	ar5
	mov	a,sp
	add	a,#0xef
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
	lcall	_memcpy
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar5
;	../contiki-sensinode/core/net/mac/lpp.c:831: if(list_length(queued_packets_list) > 0) {
	mov	dptr,#_queued_packets_list
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
	push	ar5
	lcall	_list_length
	mov	r6,dpl
	mov	r7,dph
	pop	ar5
	clr	c
	clr	a
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	pop	ar5
	jc	00178$
	ljmp	00130$
00178$:
;	../contiki-sensinode/core/net/mac/lpp.c:833: for(i = list_head(queued_packets_list); i != NULL; i = list_item_next(i)) {
	mov	dptr,#_queued_packets_list
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r4
	mov	dph,r6
	mov	b,r7
	push	ar5
	lcall	_list_head
	mov	r4,dpl
	mov	r6,dph
	mov	r7,b
	pop	ar5
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
00128$:
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
	jnz	00179$
	ljmp	00130$
00179$:
;	../contiki-sensinode/core/net/mac/lpp.c:839: receiver = queuebuf_addr(i->packet, PACKETBUF_ADDR_RECEIVER);
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x03
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
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	push	ar5
	mov	a,#0x19
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	_queuebuf_addr
	mov	r4,dpl
	mov	r6,dph
	mov	r7,b
	dec	sp
	pop	ar5
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	../contiki-sensinode/core/net/mac/lpp.c:840: if(rimeaddr_cmp(receiver, &hdr.sender) ||
	mov	ar2,r5
	mov	r3,#0x00
	mov	r7,#0x40
	push	ar5
	push	ar2
	push	ar3
	push	ar7
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_rimeaddr_cmp
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	pop	ar5
	mov	a,r6
	orl	a,r7
	jnz	00112$
;	../contiki-sensinode/core/net/mac/lpp.c:841: rimeaddr_cmp(receiver, &rimeaddr_null)) {
	push	ar5
	mov	a,#_rimeaddr_null
	push	acc
	mov	a,#(_rimeaddr_null >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_rimeaddr_cmp
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	pop	ar5
	mov	a,r6
	orl	a,r7
	jnz	00181$
	ljmp	00129$
00181$:
00112$:
;	../contiki-sensinode/core/net/mac/lpp.c:842: queuebuf_to_packetbuf(i->packet);
	push	ar5
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,#0x03
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
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r5
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_queuebuf_to_packetbuf
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	../contiki-sensinode/core/net/mac/lpp.c:862: i->num_transmissions = 1;
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,#0x28
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar5,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r5
	mov	a,#0x01
	lcall	__gptrput
;	../contiki-sensinode/core/net/mac/lpp.c:863: ret = NETSTACK_RADIO.send(queuebuf_dataptr(i->packet),
	mov	dptr,#(_cc2530_rf_driver + 0x0006)
	mov	a,sp
	add	a,#0xf0
	mov	r0,a
	clr	a
	movc	a,@a+dptr
	mov	@r0,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	inc	r0
	mov	@r0,a
;	../contiki-sensinode/core/net/mac/lpp.c:864: queuebuf_datalen(i->packet));
	mov	dpl,r4
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r5
	push	ar7
	push	ar6
	push	ar4
	lcall	_queuebuf_datalen
	mov	r3,dpl
	mov	r5,dph
	pop	ar4
	pop	ar6
	pop	ar7
;	../contiki-sensinode/core/net/mac/lpp.c:863: ret = NETSTACK_RADIO.send(queuebuf_dataptr(i->packet),
	mov	dpl,r4
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	dpl,r4
	mov	dph,r6
	mov	b,r7
	push	ar5
	push	ar3
	lcall	_queuebuf_dataptr
	mov	r4,dpl
	mov	r6,dph
	mov	r7,b
	pop	ar3
	pop	ar5
	push	ar5
	push	ar3
	push	ar5
	lcall	00182$
	sjmp	00183$
00182$:
	mov	a,sp
	add	a,#0xeb
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r4
	mov	dph,r6
	mov	b,r7
	ret
00183$:
	dec	sp
	dec	sp
	pop	ar5
;	../contiki-sensinode/core/net/mac/lpp.c:875: compower_accumulate(&i->compower);
	mov	a,sp
	add	a,#0xfa
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
	push	ar5
	lcall	_compower_accumulate
;	../contiki-sensinode/core/net/mac/lpp.c:881: if(!rimeaddr_cmp(receiver, &rimeaddr_null)) {
	mov	a,#_rimeaddr_null
	push	acc
	mov	a,#(_rimeaddr_null >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_rimeaddr_cmp
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	pop	ar5
	pop	ar5
	mov	a,r6
	orl	a,r7
	jnz	00129$
;	../contiki-sensinode/core/net/mac/lpp.c:890: if(detect_ack()) {
	push	ar5
	lcall	_detect_ack
	mov	a,dpl
	mov	b,dph
	pop	ar5
	orl	a,b
	jz	00104$
;	../contiki-sensinode/core/net/mac/lpp.c:891: remove_queued_packet(i, 1);
	push	ar5
	mov	a,#0x01
	push	acc
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_remove_queued_packet
	dec	sp
	pop	ar5
	sjmp	00105$
00104$:
;	../contiki-sensinode/core/net/mac/lpp.c:893: remove_queued_packet(i, 0);
	push	ar5
	clr	a
	push	acc
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_remove_queued_packet
	dec	sp
	pop	ar5
00105$:
;	../contiki-sensinode/core/net/mac/lpp.c:905: if(is_streaming) {
	mov	dptr,#_is_streaming
	movx	a,@dptr
	mov	r7,a
	jz	00129$
;	../contiki-sensinode/core/net/mac/lpp.c:906: ctimer_set(&stream_probe_timer, STREAM_PROBE_TIME,
	push	ar5
	clr	a
	push	acc
	push	acc
	push	acc
	mov	a,#_send_stream_probe
	push	acc
	mov	a,#(_send_stream_probe >> 8)
	push	acc
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	mov	dptr,#_stream_probe_timer
	mov	b,#0x00
	lcall	_ctimer_set
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	pop	ar5
;	../contiki-sensinode/core/net/mac/lpp.c:913: turn_radio_off();
00129$:
;	../contiki-sensinode/core/net/mac/lpp.c:833: for(i = list_head(queued_packets_list); i != NULL; i = list_item_next(i)) {
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	ar4,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	dpl,r4
	mov	dph,r6
	mov	b,r7
	push	ar5
	lcall	_list_item_next
	mov	r4,dpl
	mov	r6,dph
	mov	r7,b
	pop	ar5
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	ljmp	00128$
00125$:
;	../contiki-sensinode/core/net/mac/lpp.c:929: } else if(hdr.type == TYPE_DATA) {
	cjne	r5,#0x02,00187$
	cjne	r4,#0x00,00187$
	sjmp	00188$
00187$:
	ljmp	00130$
00188$:
;	../contiki-sensinode/core/net/mac/lpp.c:930: turn_radio_off();
	push	ar1
	lcall	_turn_radio_off
	pop	ar1
;	../contiki-sensinode/core/net/mac/lpp.c:931: if(!rimeaddr_cmp(&hdr.receiver, &rimeaddr_null)) {
	mov	a,#0x04
	add	a,r1
	mov	r7,a
	mov	r4,a
	mov	r5,#0x00
	mov	r6,#0x40
	push	ar7
	push	ar1
	mov	a,#_rimeaddr_null
	push	acc
	mov	a,#(_rimeaddr_null >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	_rimeaddr_cmp
	mov	r5,dpl
	mov	r6,dph
	dec	sp
	dec	sp
	dec	sp
	pop	ar1
	pop	ar7
	mov	a,r5
	orl	a,r6
;	../contiki-sensinode/core/net/mac/lpp.c:932: if(!rimeaddr_cmp(&hdr.receiver, &rimeaddr_node_addr)) {
	jnz	00121$
	mov	ar6,r7
	mov	r5,a
	mov	r4,#0x40
	push	ar7
	push	ar1
	mov	a,#_rimeaddr_node_addr
	push	acc
	mov	a,#(_rimeaddr_node_addr >> 8)
	push	acc
	clr	a
	push	acc
	mov	dpl,r6
	mov	dph,r5
	mov	b,r4
	lcall	_rimeaddr_cmp
	mov	r5,dpl
	mov	r6,dph
	dec	sp
	dec	sp
	dec	sp
	pop	ar1
	pop	ar7
	mov	a,r5
	orl	a,r6
;	../contiki-sensinode/core/net/mac/lpp.c:937: return;
	jz	00130$
;	../contiki-sensinode/core/net/mac/lpp.c:939: packetbuf_set_addr(PACKETBUF_ADDR_RECEIVER, &hdr.receiver);
	mov	r6,#0x00
	mov	r5,#0x40
	push	ar1
	push	ar7
	push	ar6
	push	ar5
	mov	dpl,#0x19
	lcall	_packetbuf_set_addr
	dec	sp
	dec	sp
	dec	sp
	pop	ar1
00121$:
;	../contiki-sensinode/core/net/mac/lpp.c:941: packetbuf_set_addr(PACKETBUF_ADDR_SENDER, &hdr.sender);
	mov	a,#0x02
	add	a,r1
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	push	ar7
	push	ar6
	push	ar5
	mov	dpl,#0x18
	lcall	_packetbuf_set_addr
	dec	sp
	dec	sp
	dec	sp
;	../contiki-sensinode/core/net/mac/lpp.c:948: compower_accumulate(&current_packet);
	mov	dptr,#_current_packet
	mov	b,#0x00
	lcall	_compower_accumulate
;	../contiki-sensinode/core/net/mac/lpp.c:953: compower_attrconv(&current_packet);
	mov	dptr,#_current_packet
	mov	b,#0x00
	lcall	_compower_attrconv
;	../contiki-sensinode/core/net/mac/lpp.c:957: compower_clear(&current_packet);
	mov	dptr,#_current_packet
	mov	b,#0x00
	lcall	_compower_clear
;	../contiki-sensinode/core/net/mac/lpp.c:1000: NETSTACK_MAC.input();
	mov	dptr,#(_csma_driver + 0x0007)
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
00130$:
	mov	a,sp
	add	a,#0xF0
	mov	sp,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'on'
;------------------------------------------------------------
;	../contiki-sensinode/core/net/mac/lpp.c:1005: on(void)
;	-----------------------------------------
;	 function on
;	-----------------------------------------
_on:
;	../contiki-sensinode/core/net/mac/lpp.c:1007: lpp_is_on = 1;
	mov	dptr,#_lpp_is_on
	mov	a,#0x01
	movx	@dptr,a
;	../contiki-sensinode/core/net/mac/lpp.c:1008: turn_radio_on();
	lcall	_turn_radio_on
;	../contiki-sensinode/core/net/mac/lpp.c:1009: return 1;
	mov	dptr,#0x0001
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'off'
;------------------------------------------------------------
;keep_radio_on             Allocated to registers r6 r7 
;------------------------------------------------------------
;	../contiki-sensinode/core/net/mac/lpp.c:1013: off(int keep_radio_on)
;	-----------------------------------------
;	 function off
;	-----------------------------------------
_off:
	mov	r6,dpl
	mov	r7,dph
;	../contiki-sensinode/core/net/mac/lpp.c:1015: lpp_is_on = 0;
	mov	dptr,#_lpp_is_on
	clr	a
	movx	@dptr,a
;	../contiki-sensinode/core/net/mac/lpp.c:1016: if(keep_radio_on) {
	mov	a,r6
	orl	a,r7
	jz	00102$
;	../contiki-sensinode/core/net/mac/lpp.c:1017: turn_radio_on();
	lcall	_turn_radio_on
	sjmp	00103$
00102$:
;	../contiki-sensinode/core/net/mac/lpp.c:1019: turn_radio_off();
	lcall	_turn_radio_off
00103$:
;	../contiki-sensinode/core/net/mac/lpp.c:1021: return 1;
	mov	dptr,#0x0001
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'channel_check_interval'
;------------------------------------------------------------
;	../contiki-sensinode/core/net/mac/lpp.c:1025: channel_check_interval(void)
;	-----------------------------------------
;	 function channel_check_interval
;	-----------------------------------------
_channel_check_interval:
;	../contiki-sensinode/core/net/mac/lpp.c:1027: return OFF_TIME + LISTEN_TIME;
	mov	dptr,#0x0010
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'init'
;------------------------------------------------------------
;	../contiki-sensinode/core/net/mac/lpp.c:1031: init(void)
;	-----------------------------------------
;	 function init
;	-----------------------------------------
_init:
;	../contiki-sensinode/core/net/mac/lpp.c:1033: restart_dutycycle(random_rand() % OFF_TIME);
	lcall	_random_rand
	mov	r6,dpl
	mov	r7,dph
	mov	a,#0x0F
	push	acc
	clr	a
	push	acc
	mov	dpl,r6
	mov	dph,r7
	lcall	__moduint
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	mov	dpl,r6
	mov	dph,r7
	lcall	_restart_dutycycle
;	../contiki-sensinode/core/net/mac/lpp.c:1035: lpp_is_on = 1;
	mov	dptr,#_lpp_is_on
	mov	a,#0x01
	movx	@dptr,a
;	../contiki-sensinode/core/net/mac/lpp.c:1037: announcement_register_listen_callback(listen_callback);
	mov	dptr,#_listen_callback
	lcall	_announcement_register_listen_callback
;	../contiki-sensinode/core/net/mac/lpp.c:1039: memb_init(&queued_packets_memb);
	mov	dptr,#_queued_packets_memb
	mov	b,#0x00
	lcall	_memb_init
;	../contiki-sensinode/core/net/mac/lpp.c:1040: list_init(queued_packets_list);
	mov	dptr,#_queued_packets_list
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
;	../contiki-sensinode/core/net/mac/lpp.c:1041: list_init(pending_packets_list);
	mov	dptr,#_pending_packets_list
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
	ljmp	_list_init
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "null packet"
	.db 0x0A
	.db 0x00
___str_1:
	.ascii "i == NULL"
	.db 0x0A
	.db 0x00
___str_2:
	.ascii "lpp input_packet framer error"
	.db 0x0A
	.db 0x00
_lpp_driver:
	.byte __str_3,(__str_3 >> 8),#0x80
	.byte _init,(_init >> 8)
	.byte _send_packet,(_send_packet >> 8)
	.byte _send_list,(_send_list >> 8)
	.byte _input_packet,(_input_packet >> 8)
	.byte _on,(_on >> 8)
	.byte _off,(_off >> 8)
	.byte _channel_check_interval,(_channel_check_interval >> 8)
__str_3:
	.ascii "LPP"
	.db 0x00
	.area XINIT   (CODE)
__xinit__is_listening:
	.db #0x00	; 0
__xinit__off_time_adjustment:
	.byte #0x00,#0x00	; 0
__xinit__off_time:
	.byte #0x0F,#0x00	; 15
__xinit__pending_packets_list_list:
; generic printIvalPtr
	.byte #0x00,#0x00,#0x00
__xinit__pending_packets_list:
	.byte _pending_packets_list_list,(_pending_packets_list_list >> 8),#0x00
__xinit__queued_packets_list_list:
; generic printIvalPtr
	.byte #0x00,#0x00,#0x00
__xinit__queued_packets_list:
	.byte _queued_packets_list_list,(_queued_packets_list_list >> 8),#0x00
__xinit__queued_packets_memb:
	.byte #0x29,#0x00	; 41
	.byte #0x04,#0x00	; 4
	.byte _queued_packets_memb_memb_count,(_queued_packets_memb_memb_count >> 8),#0x00
	.byte _queued_packets_memb_memb_mem,(_queued_packets_memb_memb_mem >> 8),#0x00
__xinit__encounter_list_list:
; generic printIvalPtr
	.byte #0x00,#0x00,#0x00
__xinit__encounter_list:
	.byte _encounter_list_list,(_encounter_list_list >> 8),#0x00
__xinit__encounter_memb:
	.byte #0x31,#0x00	; 49
	.byte #0x04,#0x00	; 4
	.byte _encounter_memb_memb_count,(_encounter_memb_memb_count >> 8),#0x00
	.byte _encounter_memb_memb_mem,(_encounter_memb_memb_mem >> 8),#0x00
__xinit__is_streaming:
	.db #0x00	; 0
	.area CABS    (ABS,CODE)
