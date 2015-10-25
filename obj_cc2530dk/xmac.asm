;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.4.0 #8981 (Oct 24 2015) (Linux)
; This file was generated Sun Oct 25 01:52:05 2015
;--------------------------------------------------------
	.module xmac
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _xmac_driver
	.globl _memb_alloc
	.globl _memb_init
	.globl _list_item_next
	.globl _list_add
	.globl _list_head
	.globl _list_init
	.globl _queuebuf_free
	.globl _queuebuf_to_packetbuf
	.globl _queuebuf_new_from_packetbuf
	.globl _packetbuf_addr
	.globl _packetbuf_set_addr
	.globl _packetbuf_attr
	.globl _packetbuf_set_attr
	.globl _packetbuf_compact
	.globl _packetbuf_totlen
	.globl _packetbuf_hdrptr
	.globl _packetbuf_dataptr
	.globl _rimeaddr_cmp
	.globl _rimeaddr_copy
	.globl _rtimer_set
	.globl _memcpy
	.globl _watchdog_periodic
	.globl _watchdog_start
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
	.globl _xmac_config
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
	.globl _xmac_set_announcement_radio_txpower
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
_rt:
	.ds 7
_pt:
	.ds 2
_is_listening:
	.ds 1
_encounter_memb_memb_count:
	.ds 4
_encounter_memb_memb_mem:
	.ds 28
_is_streaming:
	.ds 1
_is_streaming_to:
	.ds 2
_is_streaming_to_too:
	.ds 2
_stream_until:
	.ds 2
_received_seqnos:
	.ds 24
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_xmac_config::
	.ds 8
_xmac_is_on:
	.ds 1
_waiting_for_packet:
	.ds 1
_someone_is_sending:
	.ds 1
_we_are_sending:
	.ds 1
_radio_is_on:
	.ds 1
_encounter_list_list:
	.ds 3
_encounter_list:
	.ds 3
_encounter_memb:
	.ds 10
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
;Allocation info for local variables in function 'on'
;------------------------------------------------------------
;	../contiki-sensinode/core/net/mac/xmac.c:233: on(void)
;	-----------------------------------------
;	 function on
;	-----------------------------------------
_on:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	../contiki-sensinode/core/net/mac/xmac.c:235: if(xmac_is_on && radio_is_on == 0) {
	mov	dptr,#_xmac_is_on
	movx	a,@dptr
	mov	r7,a
	jz	00104$
	mov	dptr,#_radio_is_on
	movx	a,@dptr
	mov	r7,a
	jnz	00104$
;	../contiki-sensinode/core/net/mac/xmac.c:236: radio_is_on = 1;
	mov	dptr,#_radio_is_on
	mov	a,#0x01
	movx	@dptr,a
;	../contiki-sensinode/core/net/mac/xmac.c:237: NETSTACK_RADIO.on();
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
00104$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'off'
;------------------------------------------------------------
;	../contiki-sensinode/core/net/mac/xmac.c:243: off(void)
;	-----------------------------------------
;	 function off
;	-----------------------------------------
_off:
;	../contiki-sensinode/core/net/mac/xmac.c:245: if(xmac_is_on && radio_is_on != 0 && is_listening == 0 &&
	mov	dptr,#_xmac_is_on
	movx	a,@dptr
	mov	r7,a
	jz	00106$
	mov	dptr,#_radio_is_on
	movx	a,@dptr
	mov	r7,a
	jz	00106$
	mov	dptr,#_is_listening
	movx	a,@dptr
	mov	r7,a
	jnz	00106$
;	../contiki-sensinode/core/net/mac/xmac.c:246: is_streaming == 0) {
	mov	dptr,#_is_streaming
	movx	a,@dptr
	mov	r7,a
	jnz	00106$
;	../contiki-sensinode/core/net/mac/xmac.c:247: radio_is_on = 0;
	mov	dptr,#_radio_is_on
	clr	a
	movx	@dptr,a
;	../contiki-sensinode/core/net/mac/xmac.c:248: NETSTACK_RADIO.off();
	mov	dptr,#(_cc2530_rf_driver + 0x0012)
;	genFromRTrack removed	clr	a
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
00106$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'schedule_powercycle'
;------------------------------------------------------------
;time                      Allocated to stack - sp -6
;t                         Allocated to stack - sp -2
;r                         Allocated to registers 
;------------------------------------------------------------
;	../contiki-sensinode/core/net/mac/xmac.c:255: schedule_powercycle(struct rtimer *t, rtimer_clock_t time)
;	-----------------------------------------
;	 function schedule_powercycle
;	-----------------------------------------
_schedule_powercycle:
	push	dpl
	push	dph
	push	b
;	../contiki-sensinode/core/net/mac/xmac.c:258: if(xmac_is_on) {
	mov	dptr,#_xmac_is_on
	movx	a,@dptr
	mov	r4,a
	jz	00103$
;	../contiki-sensinode/core/net/mac/xmac.c:260: (void (*)(struct rtimer *, void *))powercycle, NULL);
	mov	r3,#_powercycle
	mov	r4,#(_powercycle >> 8)
;	../contiki-sensinode/core/net/mac/xmac.c:259: r = rtimer_set(t, RTIMER_TIME(t) + time, 1,
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
	mov	r7,a
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,@r0
	add	a,r2
	mov	r2,a
	inc	r0
	mov	a,@r0
	addc	a,r7
	mov	r7,a
	clr	a
	push	acc
	push	acc
	push	acc
	push	ar3
	push	ar4
	inc	a
	push	acc
	clr	a
	push	acc
	push	ar2
	push	ar7
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_rtimer_set
	mov	a,sp
	add	a,#0xf7
	mov	sp,a
;	../contiki-sensinode/core/net/mac/xmac.c:261: if(r) {
00103$:
	dec	sp
	dec	sp
	dec	sp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'powercycle_turn_radio_off'
;------------------------------------------------------------
;	../contiki-sensinode/core/net/mac/xmac.c:267: powercycle_turn_radio_off(void)
;	-----------------------------------------
;	 function powercycle_turn_radio_off
;	-----------------------------------------
_powercycle_turn_radio_off:
;	../contiki-sensinode/core/net/mac/xmac.c:269: if(we_are_sending == 0 &&
	mov	dptr,#_we_are_sending
	movx	a,@dptr
	mov	r7,a
	jnz	00104$
;	../contiki-sensinode/core/net/mac/xmac.c:270: waiting_for_packet == 0) {
	mov	dptr,#_waiting_for_packet
	movx	a,@dptr
	mov	r7,a
	jnz	00104$
;	../contiki-sensinode/core/net/mac/xmac.c:271: off();
	ljmp	_off
00104$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'powercycle_turn_radio_on'
;------------------------------------------------------------
;	../contiki-sensinode/core/net/mac/xmac.c:278: powercycle_turn_radio_on(void)
;	-----------------------------------------
;	 function powercycle_turn_radio_on
;	-----------------------------------------
_powercycle_turn_radio_on:
;	../contiki-sensinode/core/net/mac/xmac.c:280: if(we_are_sending == 0 &&
	mov	dptr,#_we_are_sending
	movx	a,@dptr
	mov	r7,a
	jnz	00104$
;	../contiki-sensinode/core/net/mac/xmac.c:281: waiting_for_packet == 0) {
	mov	dptr,#_waiting_for_packet
	movx	a,@dptr
	mov	r7,a
	jnz	00104$
;	../contiki-sensinode/core/net/mac/xmac.c:282: on();
	ljmp	_on
00104$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'powercycle'
;------------------------------------------------------------
;ptr                       Allocated to stack - sp -4
;t                         Allocated to registers r5 r6 r7 
;PT_YIELD_FLAG             Allocated to registers r4 
;------------------------------------------------------------
;	../contiki-sensinode/core/net/mac/xmac.c:286: powercycle(struct rtimer *t, void *ptr)
;	-----------------------------------------
;	 function powercycle
;	-----------------------------------------
_powercycle:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../contiki-sensinode/core/net/mac/xmac.c:288: if(is_streaming) {
	mov	dptr,#_is_streaming
	movx	a,@dptr
	mov	r4,a
	jz	00104$
;	../contiki-sensinode/core/net/mac/xmac.c:289: if(!RTIMER_CLOCK_LT(RTIMER_NOW(), stream_until)) {
	push	ar5
	push	ar6
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
	mov	dptr,#_stream_until
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r3
	clr	c
	subb	a,r6
	mov	a,r4
	subb	a,r7
	pop	ar7
	pop	ar6
	pop	ar5
	jb	acc.7,00104$
;	../contiki-sensinode/core/net/mac/xmac.c:290: is_streaming = 0;
	mov	dptr,#_is_streaming
	clr	a
	movx	@dptr,a
;	../contiki-sensinode/core/net/mac/xmac.c:291: rimeaddr_copy(&is_streaming_to, &rimeaddr_null);
	push	ar7
	push	ar6
	push	ar5
	mov	a,#_rimeaddr_null
	push	acc
	mov	a,#(_rimeaddr_null >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dptr,#_is_streaming_to
	mov	b,#0x00
	lcall	_rimeaddr_copy
	dec	sp
	dec	sp
	dec	sp
;	../contiki-sensinode/core/net/mac/xmac.c:292: rimeaddr_copy(&is_streaming_to_too, &rimeaddr_null);
	mov	a,#_rimeaddr_null
	push	acc
	mov	a,#(_rimeaddr_null >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dptr,#_is_streaming_to_too
	mov	b,#0x00
	lcall	_rimeaddr_copy
	dec	sp
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
00104$:
;	../contiki-sensinode/core/net/mac/xmac.c:296: PT_BEGIN(&pt);
	mov	r4,#0x01
	mov	dptr,#_pt
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	cjne	r2,#0x00,00174$
	cjne	r3,#0x00,00174$
	sjmp	00128$
00174$:
	cjne	r2,#0x33,00175$
	cjne	r3,#0x01,00175$
	sjmp	00108$
00175$:
	cjne	r2,#0x42,00176$
	cjne	r3,#0x01,00176$
	ljmp	00118$
00176$:
	ljmp	00130$
;	../contiki-sensinode/core/net/mac/xmac.c:298: while(1) {
00128$:
;	../contiki-sensinode/core/net/mac/xmac.c:300: if(someone_is_sending > 0) {
	mov	dptr,#_someone_is_sending
	movx	a,@dptr
	mov	r3,a
	jz	00107$
;	../contiki-sensinode/core/net/mac/xmac.c:301: someone_is_sending--;
	mov	dptr,#_someone_is_sending
	movx	a,@dptr
	dec	a
	movx	@dptr,a
00107$:
;	../contiki-sensinode/core/net/mac/xmac.c:305: powercycle_turn_radio_on();
	push	ar7
	push	ar6
	push	ar5
	lcall	_powercycle_turn_radio_on
	pop	ar5
	pop	ar6
	pop	ar7
;	../contiki-sensinode/core/net/mac/xmac.c:306: schedule_powercycle(t, xmac_config.on_time);
	mov	dptr,#_xmac_config
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	push	ar7
	push	ar6
	push	ar5
	push	ar2
	push	ar3
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_schedule_powercycle
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
;	../contiki-sensinode/core/net/mac/xmac.c:307: PT_YIELD(&pt);
	mov	r4,#0x00
	mov	dptr,#_pt
	mov	a,#0x33
	movx	@dptr,a
	mov	a,#0x01
	inc	dptr
	movx	@dptr,a
00108$:
	mov	a,r4
	jnz	00112$
	mov	dpl,#0x01
	ret
00112$:
;	../contiki-sensinode/core/net/mac/xmac.c:309: if(xmac_config.off_time > 0 && !NETSTACK_RADIO.receiving_packet()) {
	mov	dptr,#(_xmac_config + 0x0002)
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	orl	a,r2
	jz	00128$
	mov	dptr,#(_cc2530_rf_driver + 0x000c)
	clr	a
	movc	a,@a+dptr
	mov	r2,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r3,a
	push	ar7
	push	ar6
	push	ar5
	mov	dpl,r2
	mov	dph,r3
	lcall	__sdcc_call_dptr
	mov	r2,dpl
	mov	r3,dph
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r2
	orl	a,r3
	jz	00180$
	ljmp	00128$
00180$:
;	../contiki-sensinode/core/net/mac/xmac.c:310: powercycle_turn_radio_off();
	push	ar7
	push	ar6
	push	ar5
	lcall	_powercycle_turn_radio_off
	pop	ar5
	pop	ar6
	pop	ar7
;	../contiki-sensinode/core/net/mac/xmac.c:311: if(waiting_for_packet != 0) {
	mov	dptr,#_waiting_for_packet
	movx	a,@dptr
	mov	r3,a
	jz	00117$
;	../contiki-sensinode/core/net/mac/xmac.c:312: waiting_for_packet++;
	mov	dptr,#_waiting_for_packet
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
;	../contiki-sensinode/core/net/mac/xmac.c:313: if(waiting_for_packet > 2) {
	movx	a,@dptr
	mov  r3,a
	add	a,#0xff - 0x02
	jnc	00117$
;	../contiki-sensinode/core/net/mac/xmac.c:317: waiting_for_packet = 0;
	mov	dptr,#_waiting_for_packet
	clr	a
	movx	@dptr,a
;	../contiki-sensinode/core/net/mac/xmac.c:318: powercycle_turn_radio_off();
	push	ar7
	push	ar6
	push	ar5
	lcall	_powercycle_turn_radio_off
	pop	ar5
	pop	ar6
	pop	ar7
00117$:
;	../contiki-sensinode/core/net/mac/xmac.c:321: schedule_powercycle(t, xmac_config.off_time);
	mov	dptr,#(_xmac_config + 0x0002)
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	push	ar7
	push	ar6
	push	ar5
	push	ar2
	push	ar3
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_schedule_powercycle
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
;	../contiki-sensinode/core/net/mac/xmac.c:322: PT_YIELD(&pt);
	mov	r4,#0x00
	mov	dptr,#_pt
	mov	a,#0x42
	movx	@dptr,a
	mov	a,#0x01
	inc	dptr
	movx	@dptr,a
00118$:
	mov	a,r4
	jz	00183$
	ljmp	00128$
00183$:
	mov	dpl,#0x01
;	../contiki-sensinode/core/net/mac/xmac.c:326: PT_END(&pt);
	ret
00130$:
	mov	dptr,#_pt
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x03
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'register_encounter'
;------------------------------------------------------------
;time                      Allocated to stack - sp -6
;neighbor                  Allocated to stack - sp -2
;e                         Allocated to registers r2 r3 r4 
;------------------------------------------------------------
;	../contiki-sensinode/core/net/mac/xmac.c:391: register_encounter(const rimeaddr_t *neighbor, rtimer_clock_t time)
;	-----------------------------------------
;	 function register_encounter
;	-----------------------------------------
_register_encounter:
	push	dpl
	push	dph
	push	b
;	../contiki-sensinode/core/net/mac/xmac.c:396: for(e = list_head(encounter_list); e != NULL; e = list_item_next(e)) {
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
00109$:
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
;	../contiki-sensinode/core/net/mac/xmac.c:397: if(rimeaddr_cmp(neighbor, &e->neighbor)) {
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
	pop	ar2
	pop	ar3
	pop	ar4
	mov	a,r6
	orl	a,r7
	jz	00110$
;	../contiki-sensinode/core/net/mac/xmac.c:398: e->time = time;
	mov	a,#0x05
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
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
;	../contiki-sensinode/core/net/mac/xmac.c:399: break;
	sjmp	00103$
00110$:
;	../contiki-sensinode/core/net/mac/xmac.c:396: for(e = list_head(encounter_list); e != NULL; e = list_item_next(e)) {
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
	ljmp	00109$
00103$:
;	../contiki-sensinode/core/net/mac/xmac.c:403: if(e == NULL) {
	mov	a,r2
	orl	a,r3
	jz	00130$
	ljmp	00111$
00130$:
;	../contiki-sensinode/core/net/mac/xmac.c:404: e = memb_alloc(&encounter_memb);
	mov	dptr,#_encounter_memb
	mov	b,#0x00
	lcall	_memb_alloc
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	ar2,r5
	mov	ar3,r6
	mov	ar4,r7
;	../contiki-sensinode/core/net/mac/xmac.c:405: if(e == NULL) {
	mov	a,r2
	orl	a,r3
	jnz	00105$
;	../contiki-sensinode/core/net/mac/xmac.c:407: return;
	sjmp	00111$
00105$:
;	../contiki-sensinode/core/net/mac/xmac.c:409: rimeaddr_copy(&e->neighbor, neighbor);
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
	lcall	_rimeaddr_copy
	dec	sp
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar4
;	../contiki-sensinode/core/net/mac/xmac.c:410: e->time = time;
	mov	a,#0x05
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
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
;	../contiki-sensinode/core/net/mac/xmac.c:411: list_add(encounter_list, e);
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
	dec	sp
	dec	sp
	dec	sp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'detect_ack'
;------------------------------------------------------------
;wt                        Allocated to registers r5 r6 
;ack_received              Allocated to registers r7 
;len                       Allocated to registers r5 r6 
;ackbuf                    Allocated to stack - sp -4
;------------------------------------------------------------
;	../contiki-sensinode/core/net/mac/xmac.c:417: detect_ack(void)
;	-----------------------------------------
;	 function detect_ack
;	-----------------------------------------
_detect_ack:
	mov	a,sp
	add	a,#0x05
	mov	sp,a
;	../contiki-sensinode/core/net/mac/xmac.c:423: uint8_t ack_received = 0;
	mov	r7,#0x00
;	../contiki-sensinode/core/net/mac/xmac.c:425: wt = RTIMER_NOW();
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
;	../contiki-sensinode/core/net/mac/xmac.c:426: leds_on(LEDS_GREEN);
	mov	dpl,#0x02
	push	ar7
	push	ar6
	push	ar5
	lcall	_leds_on
	pop	ar5
	pop	ar6
	pop	ar7
;	../contiki-sensinode/core/net/mac/xmac.c:427: while(RTIMER_CLOCK_LT(RTIMER_NOW(), wt + INTER_PACKET_INTERVAL)) { }
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
;	../contiki-sensinode/core/net/mac/xmac.c:428: leds_off(LEDS_GREEN);
	mov	dpl,#0x02
	push	ar7
	lcall	_leds_off
;	../contiki-sensinode/core/net/mac/xmac.c:430: if((NETSTACK_RADIO.receiving_packet() ||
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
;	../contiki-sensinode/core/net/mac/xmac.c:431: NETSTACK_RADIO.pending_packet() ||
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
;	../contiki-sensinode/core/net/mac/xmac.c:432: NETSTACK_RADIO.channel_clear() == 0)) {
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
;	../contiki-sensinode/core/net/mac/xmac.c:436: wt = RTIMER_NOW();
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
;	../contiki-sensinode/core/net/mac/xmac.c:437: while(RTIMER_CLOCK_LT(RTIMER_NOW(), wt + AFTER_ACK_DETECTECT_WAIT_TIME)) { }
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
;	../contiki-sensinode/core/net/mac/xmac.c:439: len = NETSTACK_RADIO.read(ackbuf, ACK_LEN);
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
;	../contiki-sensinode/core/net/mac/xmac.c:440: if(len == ACK_LEN) {
	cjne	r5,#0x03,00110$
	cjne	r6,#0x00,00110$
;	../contiki-sensinode/core/net/mac/xmac.c:441: ack_received = 1;
	mov	r7,#0x01
00110$:
;	../contiki-sensinode/core/net/mac/xmac.c:444: if(ack_received) {
	mov	a,r7
	jz	00114$
;	../contiki-sensinode/core/net/mac/xmac.c:445: leds_toggle(LEDS_RED);
	mov	dpl,#0x01
	push	ar7
	lcall	_leds_toggle
	pop	ar7
00114$:
;	../contiki-sensinode/core/net/mac/xmac.c:447: return ack_received;
	mov	r6,#0x00
	mov	dpl,r7
	mov	dph,r6
	mov	a,sp
	add	a,#0xFB
	mov	sp,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'send_packet'
;------------------------------------------------------------
;t0                        Allocated to stack - sp -3
;t                         Allocated to stack - sp -1
;encounter_time            Allocated to registers 
;strobes                   Allocated to registers 
;ret                       Allocated to registers 
;got_strobe_ack            Allocated to stack - sp -69
;got_ack                   Allocated to stack - sp -68
;strobe                    Allocated to stack - sp -67
;strobe_len                Allocated to stack - sp -17
;len                       Allocated to stack - sp -15
;is_broadcast              Allocated to stack - sp -13
;e                         Allocated to stack - sp -11
;packet                    Allocated to stack - sp -8
;is_already_streaming      Allocated to stack - sp -5
;collisions                Allocated to registers r3 
;neighbor                  Allocated to registers r7 r6 r3 
;wait                      Allocated to registers r6 r7 
;now                       Allocated to registers r4 r3 
;expected                  Allocated to registers r6 r7 
;sloc0                     Allocated to stack - sp -72
;sloc1                     Allocated to stack - sp -71
;------------------------------------------------------------
;	../contiki-sensinode/core/net/mac/xmac.c:451: send_packet(void)
;	-----------------------------------------
;	 function send_packet
;	-----------------------------------------
_send_packet:
	mov	a,sp
	add	a,#0x49
;	../contiki-sensinode/core/net/mac/xmac.c:461: uint8_t got_strobe_ack = 0;
	mov	sp,a
	add	a,#0xbb
	mov	r0,a
	mov	@r0,#0x00
;	../contiki-sensinode/core/net/mac/xmac.c:462: uint8_t got_ack = 0;
	mov	a,sp
	add	a,#0xbc
	mov	r0,a
	mov	@r0,#0x00
;	../contiki-sensinode/core/net/mac/xmac.c:465: int is_broadcast = 0;
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
;	../contiki-sensinode/core/net/mac/xmac.c:469: int is_already_streaming = 0;
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
;	../contiki-sensinode/core/net/mac/xmac.c:473: packetbuf_set_addr(PACKETBUF_ADDR_SENDER, &rimeaddr_node_addr);
	mov	a,#_rimeaddr_node_addr
	push	acc
	mov	a,#(_rimeaddr_node_addr >> 8)
	push	acc
	clr	a
	push	acc
	mov	dpl,#0x18
	lcall	_packetbuf_set_addr
	dec	sp
	dec	sp
	dec	sp
;	../contiki-sensinode/core/net/mac/xmac.c:474: if(rimeaddr_cmp(packetbuf_addr(PACKETBUF_ADDR_RECEIVER), &rimeaddr_null)) {
	mov	dpl,#0x19
	lcall	_packetbuf_addr
	mov	r2,dpl
	mov	r3,dph
	mov	r6,b
	mov	a,#_rimeaddr_null
	push	acc
	mov	a,#(_rimeaddr_null >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r6
	lcall	_rimeaddr_cmp
	mov	r3,dpl
	mov	r6,dph
	dec	sp
	dec	sp
	dec	sp
	mov	a,r3
	orl	a,r6
	jz	00102$
;	../contiki-sensinode/core/net/mac/xmac.c:475: is_broadcast = 1;
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	mov	@r0,#0x01
	inc	r0
	mov	@r0,#0x00
00102$:
;	../contiki-sensinode/core/net/mac/xmac.c:497: packetbuf_set_attr(PACKETBUF_ATTR_MAC_ACK, 1);
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	mov	dpl,#0x0B
	lcall	_packetbuf_set_attr
	dec	sp
	dec	sp
;	../contiki-sensinode/core/net/mac/xmac.c:498: len = NETSTACK_FRAMER.create();
	mov	dptr,#_framer_802154
	clr	a
	movc	a,@a+dptr
	mov	r3,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	mov	dpl,r3
	mov	dph,r6
	lcall	__sdcc_call_dptr
	mov	r3,dpl
	mov	r6,dph
	mov	a,sp
	add	a,#0xf1
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar6
;	../contiki-sensinode/core/net/mac/xmac.c:499: strobe_len = len + sizeof(struct xmac_hdr);
	mov	a,sp
	add	a,#0xf1
	mov	r0,a
	mov	a,sp
	add	a,#0xef
	mov	r1,a
	mov	a,#0x02
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
;	../contiki-sensinode/core/net/mac/xmac.c:500: if(len < 0 || strobe_len > (int)sizeof(strobe)) {
	mov	a,sp
	add	a,#0xf1
	mov	r0,a
	inc	r0
	mov	a,@r0
	jb	acc.7,00103$
	mov	a,sp
	add	a,#0xef
	mov	r0,a
	clr	c
	mov	a,#0x32
	subb	a,@r0
	mov	a,#(0x00 ^ 0x80)
	inc	r0
	mov	b,@r0
	xrl	b,#0x80
	subb	a,b
	jnc	00104$
00103$:
;	../contiki-sensinode/core/net/mac/xmac.c:503: return MAC_TX_ERR_FATAL;
	mov	dptr,#0x0005
	ljmp	00170$
00104$:
;	../contiki-sensinode/core/net/mac/xmac.c:505: memcpy(strobe, packetbuf_hdrptr(), len);
	lcall	_packetbuf_hdrptr
	mov	r2,dpl
	mov	r4,dph
	mov	r5,b
	mov	a,sp
	add	a,#0xb8
	mov	r0,a
	mov	a,sp
	add	a,#0xBD
	mov	@r0,a
	mov	a,sp
	add	a,#0xb8
	mov	r0,a
	mov	ar3,@r0
	mov	r6,#0x00
	mov	r7,#0x40
	mov	a,sp
	add	a,#0xf1
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	push	ar2
	push	ar4
	push	ar5
	mov	dpl,r3
	mov	dph,r6
	mov	b,r7
	lcall	_memcpy
	mov	a,sp
	add	a,#0xfb
;	../contiki-sensinode/core/net/mac/xmac.c:506: strobe[len] = DISPATCH; /* dispatch */
	mov	sp,a
	add	a,#0xb8
	mov	r0,a
	mov	a,sp
	add	a,#0xf1
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	mov	r0,a
	mov	@r0,#0x00
;	../contiki-sensinode/core/net/mac/xmac.c:507: strobe[len + 1] = TYPE_STROBE; /* type */
	mov	a,sp
	add	a,#0xf1
	mov	r0,a
	mov	a,@r0
	inc	a
	xch	a,r0
	mov	a,sp
	add	a,#0xb8
	xch	a,r0
	add	a,@r0
	mov	r0,a
	mov	@r0,#0x10
;	../contiki-sensinode/core/net/mac/xmac.c:509: packetbuf_compact();
	lcall	_packetbuf_compact
;	../contiki-sensinode/core/net/mac/xmac.c:510: packet = queuebuf_new_from_packetbuf();
	lcall	_queuebuf_new_from_packetbuf
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	../contiki-sensinode/core/net/mac/xmac.c:511: if(packet == NULL) {
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00107$
;	../contiki-sensinode/core/net/mac/xmac.c:515: return MAC_TX_ERR;
	mov	dptr,#0x0004
	ljmp	00170$
00107$:
;	../contiki-sensinode/core/net/mac/xmac.c:519: if(is_streaming == 1 &&
	mov	dptr,#_is_streaming
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00109$
;	../contiki-sensinode/core/net/mac/xmac.c:521: &is_streaming_to) ||
;	../contiki-sensinode/core/net/mac/xmac.c:520: (rimeaddr_cmp(packetbuf_addr(PACKETBUF_ADDR_RECEIVER),
	mov	dpl,#0x19
	lcall	_packetbuf_addr
	mov	r3,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,#_is_streaming_to
	push	acc
	mov	a,#(_is_streaming_to >> 8)
	push	acc
	clr	a
	push	acc
	mov	dpl,r3
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
	jnz	00108$
;	../contiki-sensinode/core/net/mac/xmac.c:523: &is_streaming_to_too))) {
;	../contiki-sensinode/core/net/mac/xmac.c:522: rimeaddr_cmp(packetbuf_addr(PACKETBUF_ADDR_RECEIVER),
	mov	dpl,#0x19
	lcall	_packetbuf_addr
	mov	r3,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,#_is_streaming_to_too
	push	acc
	mov	a,#(_is_streaming_to_too >> 8)
	push	acc
	clr	a
	push	acc
	mov	dpl,r3
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
	jz	00109$
00108$:
;	../contiki-sensinode/core/net/mac/xmac.c:524: is_already_streaming = 1;
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	@r0,#0x01
	inc	r0
	mov	@r0,#0x00
00109$:
;	../contiki-sensinode/core/net/mac/xmac.c:526: if(packetbuf_attr(PACKETBUF_ATTR_PACKET_TYPE) ==
	mov	dpl,#0x0E
	lcall	_packetbuf_attr
	mov	r6,dpl
	mov	r7,dph
	cjne	r6,#0x02,00275$
	cjne	r7,#0x00,00275$
	sjmp	00276$
00275$:
	ljmp	00118$
00276$:
;	../contiki-sensinode/core/net/mac/xmac.c:528: is_streaming = 1;
	mov	dptr,#_is_streaming
	mov	a,#0x01
	movx	@dptr,a
;	../contiki-sensinode/core/net/mac/xmac.c:529: if(rimeaddr_cmp(&is_streaming_to, &rimeaddr_null)) {
	mov	a,#_rimeaddr_null
	push	acc
	mov	a,#(_rimeaddr_null >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dptr,#_is_streaming_to
	mov	b,#0x00
	lcall	_rimeaddr_cmp
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	mov	a,r6
	orl	a,r7
	jz	00115$
;	../contiki-sensinode/core/net/mac/xmac.c:530: rimeaddr_copy(&is_streaming_to, packetbuf_addr(PACKETBUF_ADDR_RECEIVER));
	mov	dpl,#0x19
	lcall	_packetbuf_addr
	mov	r3,dpl
	mov	r6,dph
	mov	r7,b
	push	ar3
	push	ar6
	push	ar7
	mov	dptr,#_is_streaming_to
	mov	b,#0x00
	lcall	_rimeaddr_copy
	dec	sp
	dec	sp
	dec	sp
	sjmp	00116$
00115$:
;	../contiki-sensinode/core/net/mac/xmac.c:531: } else if(!rimeaddr_cmp(&is_streaming_to, packetbuf_addr(PACKETBUF_ADDR_RECEIVER))) {
	mov	dpl,#0x19
	lcall	_packetbuf_addr
	mov	r3,dpl
	mov	r6,dph
	mov	r7,b
	push	ar3
	push	ar6
	push	ar7
	mov	dptr,#_is_streaming_to
	mov	b,#0x00
	lcall	_rimeaddr_cmp
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	mov	a,r6
	orl	a,r7
	jnz	00116$
;	../contiki-sensinode/core/net/mac/xmac.c:532: rimeaddr_copy(&is_streaming_to_too, packetbuf_addr(PACKETBUF_ADDR_RECEIVER));
	mov	dpl,#0x19
	lcall	_packetbuf_addr
	mov	r3,dpl
	mov	r6,dph
	mov	r7,b
	push	ar3
	push	ar6
	push	ar7
	mov	dptr,#_is_streaming_to_too
	mov	b,#0x00
	lcall	_rimeaddr_copy
	dec	sp
	dec	sp
	dec	sp
00116$:
;	../contiki-sensinode/core/net/mac/xmac.c:534: stream_until = RTIMER_NOW() + DEFAULT_STREAM_TIME;
	mov	r6,_T1CNTL
	mov	r7,#0x00
	mov	r2,_T1CNTH
	mov	ar3,r2
	clr	a
	mov	r2,a
	add	a,r6
	mov	r6,a
	mov	a,r3
	addc	a,r7
	mov	r7,a
	mov	dptr,#_stream_until
	mov	a,#0x09
	add	a,r6
	movx	@dptr,a
	mov	a,#0x3D
	addc	a,r7
	inc	dptr
	movx	@dptr,a
00118$:
;	../contiki-sensinode/core/net/mac/xmac.c:538: off();
	lcall	_off
;	../contiki-sensinode/core/net/mac/xmac.c:545: for(e = list_head(encounter_list); e != NULL; e = list_item_next(e)) {
	mov	dptr,#_encounter_list
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r3
	mov	dph,r6
	mov	b,r7
	lcall	_list_head
	mov	r3,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
00163$:
	mov	a,sp
	add	a,#0xf5
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
	jnz	00279$
	ljmp	00126$
00279$:
;	../contiki-sensinode/core/net/mac/xmac.c:546: const rimeaddr_t *neighbor = packetbuf_addr(PACKETBUF_ADDR_RECEIVER);
	mov	dpl,#0x19
	lcall	_packetbuf_addr
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	ar3,r5
;	../contiki-sensinode/core/net/mac/xmac.c:548: if(rimeaddr_cmp(neighbor, &e->neighbor)) {
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	a,#0x03
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar5,@r0
	push	ar2
	push	ar4
	push	ar5
	mov	dpl,r7
	mov	dph,r6
	mov	b,r3
	lcall	_rimeaddr_cmp
	mov	r4,dpl
	mov	r5,dph
	dec	sp
	dec	sp
	dec	sp
	mov	a,r4
	orl	a,r5
	jnz	00280$
	ljmp	00164$
00280$:
;	../contiki-sensinode/core/net/mac/xmac.c:558: now = RTIMER_NOW();
	mov	r2,_T1CNTL
	mov	r5,#0x00
	mov	r4,_T1CNTH
	mov	ar7,r4
	clr	a
	add	a,r2
	mov	r2,a
	mov	a,r7
	addc	a,r5
	mov	r5,a
	mov	ar4,r2
	mov	ar3,r5
;	../contiki-sensinode/core/net/mac/xmac.c:559: wait = ((rtimer_clock_t)(e->time - now)) % (DEFAULT_PERIOD);
	mov	a,sp
	add	a,#0xf5
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
	mov	a,r5
	clr	c
	subb	a,r4
	mov	r5,a
	mov	a,r6
	subb	a,r3
	mov	r6,a
	push	ar4
	push	ar3
	mov	a,#0xA1
	push	acc
	mov	a,#0x07
	push	acc
	mov	dpl,r5
	mov	dph,r6
	lcall	__moduint
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	pop	ar3
	pop	ar4
;	../contiki-sensinode/core/net/mac/xmac.c:560: if(wait < 2 * DEFAULT_ON_TIME) {
	clr	c
	mov	a,r6
	subb	a,#0xC2
	mov	a,r7
	subb	a,#0x00
	jnc	00120$
;	../contiki-sensinode/core/net/mac/xmac.c:561: wait = DEFAULT_PERIOD;
	mov	r6,#0xA1
	mov	r7,#0x07
00120$:
;	../contiki-sensinode/core/net/mac/xmac.c:563: expected = now + wait - 2 * DEFAULT_ON_TIME;
	mov	a,r6
	add	a,r4
	mov	r6,a
	mov	a,r7
	addc	a,r3
	mov	r7,a
	mov	a,r6
	add	a,#0x3E
	mov	r6,a
	mov	a,r7
	addc	a,#0xFF
	mov	r7,a
;	../contiki-sensinode/core/net/mac/xmac.c:576: while(RTIMER_CLOCK_LT(RTIMER_NOW(), expected));
00121$:
	mov	r2,_T1CNTL
	mov	r3,#0x00
	mov	r4,_T1CNTH
	mov	ar5,r4
	clr	a
	mov	r4,a
	add	a,r2
	mov	r2,a
	mov	a,r5
	addc	a,r3
	mov	r3,a
	mov	a,r2
	clr	c
	subb	a,r6
	mov	r2,a
	mov	a,r3
	subb	a,r7
	mov	r3,a
	jb	acc.7,00121$
00164$:
;	../contiki-sensinode/core/net/mac/xmac.c:545: for(e = list_head(encounter_list); e != NULL; e = list_item_next(e)) {
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	dpl,r3
	mov	dph,r6
	mov	b,r7
	lcall	_list_item_next
	mov	r3,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	ljmp	00163$
00126$:
;	../contiki-sensinode/core/net/mac/xmac.c:584: we_are_sending = 1;
	mov	dptr,#_we_are_sending
	mov	a,#0x01
	movx	@dptr,a
;	../contiki-sensinode/core/net/mac/xmac.c:586: t0 = RTIMER_NOW();
	mov	r6,_T1CNTL
	mov	r7,#0x00
	mov	r2,_T1CNTH
	mov	ar3,r2
	clr	a
	mov	r2,a
	add	a,r6
	mov	r6,a
	mov	a,r3
	addc	a,r7
	mov	r7,a
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	../contiki-sensinode/core/net/mac/xmac.c:595: collisions = 0;
	mov	r3,#0x00
;	../contiki-sensinode/core/net/mac/xmac.c:596: if(!is_already_streaming) {
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00283$
	ljmp	00142$
00283$:
;	../contiki-sensinode/core/net/mac/xmac.c:597: watchdog_stop();
	lcall	_watchdog_periodic
;	../contiki-sensinode/core/net/mac/xmac.c:598: got_strobe_ack = 0;
	mov	a,sp
	add	a,#0xbb
	mov	r0,a
	mov	@r0,#0x00
;	../contiki-sensinode/core/net/mac/xmac.c:599: t = RTIMER_NOW();
	mov	r2,_T1CNTL
	mov	r7,#0x00
	mov	r5,_T1CNTH
	mov	ar6,r5
	clr	a
	mov	r5,a
	add	a,r2
	mov	r2,a
	mov	a,r6
	addc	a,r7
	mov	r7,a
	mov	r0,sp
	dec	r0
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar7
;	../contiki-sensinode/core/net/mac/xmac.c:600: for(strobes = 0, collisions = 0;
	mov	r3,#0x00
	mov	a,sp
	add	a,#0xb8
	mov	r0,a
;	../contiki-sensinode/core/net/mac/xmac.c:757: return MAC_TX_COLLISION;
;	../contiki-sensinode/core/net/mac/xmac.c:600: for(strobes = 0, collisions = 0;
00168$:
;	../contiki-sensinode/core/net/mac/xmac.c:601: got_strobe_ack == 0 && collisions == 0 &&
	mov	a,sp
	add	a,#0xbb
	mov	r0,a
	cjne	@r0,#0x00,00284$
	sjmp	00285$
00284$:
	ljmp	00142$
00285$:
;	../contiki-sensinode/core/net/mac/xmac.c:602: RTIMER_CLOCK_LT(RTIMER_NOW(), t0 + xmac_config.strobe_time);
	push	ar3
	mov	r4,_T1CNTL
	mov	r5,#0x00
	mov	r2,_T1CNTH
	mov	ar3,r2
	clr	a
	add	a,r4
	mov	r4,a
	mov	a,r3
	addc	a,r5
	mov	r5,a
	mov	dptr,#(_xmac_config + 0x0004)
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,r2
	add	a,@r0
	mov	r2,a
	mov	a,r3
	inc	r0
	addc	a,@r0
	mov	r3,a
	mov	a,r4
	clr	c
	subb	a,r2
	mov	r2,a
	mov	a,r5
	subb	a,r3
	pop	ar3
	jb	acc.7,00286$
	ljmp	00142$
00286$:
;	../contiki-sensinode/core/net/mac/xmac.c:605: while(got_strobe_ack == 0 &&
00128$:
	mov	a,sp
	add	a,#0xbb
	mov	r0,a
	mov	a,@r0
	jnz	00130$
;	../contiki-sensinode/core/net/mac/xmac.c:606: RTIMER_CLOCK_LT(RTIMER_NOW(), t + xmac_config.strobe_wait_time)) {
	push	ar3
	mov	r4,_T1CNTL
	mov	r5,#0x00
	mov	r2,_T1CNTH
	mov	ar3,r2
	clr	a
	add	a,r4
	mov	r4,a
	mov	a,r3
	addc	a,r5
	mov	r5,a
	mov	dptr,#(_xmac_config + 0x0006)
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,r2
	add	a,@r0
	mov	r2,a
	mov	a,r3
	inc	r0
	addc	a,@r0
	mov	r3,a
	mov	a,r4
	clr	c
	subb	a,r2
	mov	r2,a
	mov	a,r5
	subb	a,r3
	pop	ar3
	jb	acc.7,00128$
00130$:
;	../contiki-sensinode/core/net/mac/xmac.c:638: t = RTIMER_NOW();
	push	ar3
	mov	r4,_T1CNTL
	mov	r5,#0x00
	mov	r2,_T1CNTH
	mov	ar3,r2
	clr	a
	mov	r2,a
	add	a,r4
	mov	r4,a
	mov	a,r3
	addc	a,r5
	mov	r5,a
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
;	../contiki-sensinode/core/net/mac/xmac.c:640: if(got_strobe_ack == 0 && collisions == 0) {
	pop	ar3
	mov	a,sp
	add	a,#0xbb
	mov	r0,a
	mov	a,@r0
	jz	00289$
	ljmp	00168$
00289$:
;	../contiki-sensinode/core/net/mac/xmac.c:642: if(is_broadcast) {
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00135$
;	../contiki-sensinode/core/net/mac/xmac.c:647: queuebuf_to_packetbuf(packet);
	push	ar3
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	push	ar3
	lcall	_queuebuf_to_packetbuf
	pop	ar3
;	../contiki-sensinode/core/net/mac/xmac.c:648: ret = NETSTACK_RADIO.send(packetbuf_hdrptr(), packetbuf_totlen());
	mov	dptr,#(_cc2530_rf_driver + 0x0006)
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	push	ar5
	push	ar4
	push	ar3
	lcall	_packetbuf_totlen
	xch	a,r0
	mov	a,sp
	add	a,#0xb5
	xch	a,r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	pop	ar3
	lcall	_packetbuf_hdrptr
	mov	r3,dpl
	mov	r6,dph
	mov	r7,b
	pop	ar4
	pop	ar5
	push	ar5
	push	ar4
	push	ar3
	mov	a,sp
	add	a,#0xb5
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	lcall	00291$
	sjmp	00292$
00291$:
	push	ar4
	push	ar5
	mov	dpl,r3
	mov	dph,r6
	mov	b,r7
	ret
00292$:
	dec	sp
	dec	sp
	pop	ar3
	pop	ar4
	pop	ar5
;	../contiki-sensinode/core/net/mac/xmac.c:650: off();
	push	ar3
	lcall	_off
	pop	ar3
	pop	ar3
	ljmp	00168$
00135$:
;	../contiki-sensinode/core/net/mac/xmac.c:655: on();
	push	ar3
	lcall	_on
	pop	ar3
;	../contiki-sensinode/core/net/mac/xmac.c:656: ret = NETSTACK_RADIO.send(strobe, strobe_len);
	mov	dptr,#(_cc2530_rf_driver + 0x0006)
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	a,sp
	add	a,#0xb8
	mov	r0,a
	mov	ar2,@r0
	mov	r4,#0x00
	mov	r5,#0x40
	push	ar7
	push	ar6
	push	ar3
	mov	a,sp
	add	a,#0xec
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	lcall	00293$
	sjmp	00294$
00293$:
	push	ar6
	push	ar7
	mov	dpl,r2
	mov	dph,r4
	mov	b,r5
	ret
00294$:
	dec	sp
	dec	sp
	pop	ar3
	pop	ar6
	pop	ar7
;	../contiki-sensinode/core/net/mac/xmac.c:672: if(detect_ack()) {
	push	ar3
	lcall	_detect_ack
	mov	a,dpl
	mov	b,dph
	pop	ar3
	orl	a,b
	jz	00132$
;	../contiki-sensinode/core/net/mac/xmac.c:673: got_strobe_ack = 1;
	mov	a,sp
	add	a,#0xbb
	mov	r0,a
	mov	@r0,#0x01
	ljmp	00168$
00132$:
;	../contiki-sensinode/core/net/mac/xmac.c:675: off();
	push	ar3
	lcall	_off
	pop	ar3
;	../contiki-sensinode/core/net/mac/xmac.c:603: strobes++) {
	ljmp	00168$
00142$:
;	../contiki-sensinode/core/net/mac/xmac.c:700: queuebuf_to_packetbuf(packet);
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	push	ar3
	lcall	_queuebuf_to_packetbuf
	pop	ar3
;	../contiki-sensinode/core/net/mac/xmac.c:701: queuebuf_free(packet);
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	push	ar3
	lcall	_queuebuf_free
	pop	ar3
;	../contiki-sensinode/core/net/mac/xmac.c:704: if((is_broadcast || got_strobe_ack || is_streaming) && collisions == 0) {
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00151$
	mov	a,sp
	add	a,#0xbb
	mov	r0,a
	mov	a,@r0
	jnz	00151$
	mov	dptr,#_is_streaming
	movx	a,@dptr
	mov	r7,a
	jnz	00298$
	ljmp	00148$
00298$:
00151$:
	mov	a,r3
	jz	00299$
	ljmp	00148$
00299$:
;	../contiki-sensinode/core/net/mac/xmac.c:705: ret = NETSTACK_RADIO.send(packetbuf_hdrptr(), packetbuf_totlen());
	push	ar3
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
	push	ar3
	lcall	_packetbuf_totlen
	xch	a,r0
	mov	a,sp
	add	a,#0xb5
	xch	a,r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	pop	ar3
	lcall	_packetbuf_hdrptr
	mov	r2,dpl
	mov	r3,dph
	mov	r5,b
	pop	ar6
	pop	ar7
	push	ar7
	push	ar6
	push	ar3
	mov	a,sp
	add	a,#0xb5
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	lcall	00300$
	sjmp	00301$
00300$:
	push	ar6
	push	ar7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r5
	ret
00301$:
	dec	sp
	dec	sp
	pop	ar3
	pop	ar6
	pop	ar7
;	../contiki-sensinode/core/net/mac/xmac.c:707: if(!is_broadcast) {
	pop	ar3
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00148$
;	../contiki-sensinode/core/net/mac/xmac.c:713: if(detect_ack()) {
	push	ar3
	lcall	_detect_ack
	mov	a,dpl
	mov	b,dph
	pop	ar3
	orl	a,b
	jz	00148$
;	../contiki-sensinode/core/net/mac/xmac.c:714: got_ack = 1;
	mov	a,sp
	add	a,#0xbc
	mov	r0,a
	mov	@r0,#0x01
00148$:
;	../contiki-sensinode/core/net/mac/xmac.c:719: off();
	push	ar3
	lcall	_off
	pop	ar3
;	../contiki-sensinode/core/net/mac/xmac.c:722: if(got_strobe_ack && !is_streaming) {
	mov	a,sp
	add	a,#0xbb
	mov	r0,a
	mov	a,@r0
	jz	00153$
	mov	dptr,#_is_streaming
	movx	a,@dptr
	mov	r7,a
	jnz	00153$
;	../contiki-sensinode/core/net/mac/xmac.c:723: register_encounter(packetbuf_addr(PACKETBUF_ADDR_RECEIVER), encounter_time);
	mov	dpl,#0x19
	push	ar3
	lcall	_packetbuf_addr
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	clr	a
	push	acc
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_register_encounter
	dec	sp
	dec	sp
	pop	ar3
00153$:
;	../contiki-sensinode/core/net/mac/xmac.c:726: watchdog_start();
	push	ar3
	lcall	_watchdog_start
	pop	ar3
;	../contiki-sensinode/core/net/mac/xmac.c:746: we_are_sending = 0;
	mov	dptr,#_we_are_sending
	clr	a
	movx	@dptr,a
;	../contiki-sensinode/core/net/mac/xmac.c:749: if(collisions == 0) {
	mov	a,r3
	jnz	00160$
;	../contiki-sensinode/core/net/mac/xmac.c:750: if(is_broadcast == 0 && got_ack == 0) {
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00156$
	mov	a,sp
	add	a,#0xbc
	mov	r0,a
	mov	a,@r0
	jnz	00156$
;	../contiki-sensinode/core/net/mac/xmac.c:751: return MAC_TX_NOACK;
	mov	dptr,#0x0002
	sjmp	00170$
00156$:
;	../contiki-sensinode/core/net/mac/xmac.c:753: return MAC_TX_OK;
	mov	dptr,#0x0000
	sjmp	00170$
00160$:
;	../contiki-sensinode/core/net/mac/xmac.c:756: someone_is_sending++;
	mov	dptr,#_someone_is_sending
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
;	../contiki-sensinode/core/net/mac/xmac.c:757: return MAC_TX_COLLISION;
	mov	dptr,#0x0001
00170$:
	mov	a,sp
	add	a,#0xB7
	mov	sp,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'qsend_packet'
;------------------------------------------------------------
;ptr                       Allocated to stack - sp -4
;sent                      Allocated to registers r6 r7 
;ret                       Allocated to registers r4 r5 
;------------------------------------------------------------
;	../contiki-sensinode/core/net/mac/xmac.c:763: qsend_packet(mac_callback_t sent, void *ptr)
;	-----------------------------------------
;	 function qsend_packet
;	-----------------------------------------
_qsend_packet:
	mov	r6,dpl
	mov	r7,dph
;	../contiki-sensinode/core/net/mac/xmac.c:767: if(someone_is_sending) {
	mov	dptr,#_someone_is_sending
	movx	a,@dptr
	mov	r5,a
	jz	00102$
;	../contiki-sensinode/core/net/mac/xmac.c:770: RIMESTATS_ADD(sendingdrop);
	mov	dptr,#(_rimestats + 0x003c)
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	r2
	cjne	r2,#0x00,00118$
	inc	r3
	cjne	r3,#0x00,00118$
	inc	r4
	cjne	r4,#0x00,00118$
	inc	r5
00118$:
	mov	dptr,#(_rimestats + 0x003c)
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	../contiki-sensinode/core/net/mac/xmac.c:771: ret = MAC_TX_COLLISION;
	mov	r4,#0x01
	mov	r5,#0x00
	sjmp	00106$
00102$:
;	../contiki-sensinode/core/net/mac/xmac.c:774: ret = send_packet();
	push	ar7
	push	ar6
	lcall	_send_packet
	mov	r2,dpl
	mov	r3,dph
	pop	ar6
	pop	ar7
	mov	ar4,r2
	mov	ar5,r3
;	../contiki-sensinode/core/net/mac/xmac.c:777: mac_call_sent_callback(sent, ptr, ret, 1);
00106$:
	mov	a,r6
	orl	a,r7
	jz	00109$
	push	ar7
	push	ar6
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	push	ar4
	push	ar5
	lcall	00120$
	sjmp	00121$
00120$:
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	ret
00121$:
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar6
	pop	ar7
00109$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'qsend_list'
;------------------------------------------------------------
;ptr                       Allocated to stack - sp -4
;buf_list                  Allocated to stack - sp -7
;sent                      Allocated to registers r6 r7 
;------------------------------------------------------------
;	../contiki-sensinode/core/net/mac/xmac.c:781: qsend_list(mac_callback_t sent, void *ptr, struct rdc_buf_list *buf_list)
;	-----------------------------------------
;	 function qsend_list
;	-----------------------------------------
_qsend_list:
	mov	r6,dpl
	mov	r7,dph
;	../contiki-sensinode/core/net/mac/xmac.c:783: if(buf_list != NULL) {
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00103$
;	../contiki-sensinode/core/net/mac/xmac.c:784: queuebuf_to_packetbuf(buf_list->buf);
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
;	../contiki-sensinode/core/net/mac/xmac.c:785: qsend_packet(sent, ptr);
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
	lcall	_qsend_packet
	dec	sp
	dec	sp
	dec	sp
00103$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'input_packet'
;------------------------------------------------------------
;hdr                       Allocated to registers r5 r6 r7 
;i                         Allocated to stack - sp -1
;sloc0                     Allocated to stack - sp -6
;sloc1                     Allocated to stack - sp +1
;sloc2                     Allocated to stack - sp +3
;sloc3                     Allocated to stack - sp -4
;sloc4                     Allocated to stack - sp +8
;------------------------------------------------------------
;	../contiki-sensinode/core/net/mac/xmac.c:790: input_packet(void)
;	-----------------------------------------
;	 function input_packet
;	-----------------------------------------
_input_packet:
	mov	a,sp
	add	a,#0x07
	mov	sp,a
;	../contiki-sensinode/core/net/mac/xmac.c:794: if(NETSTACK_FRAMER.parse() >= 0) {
	mov	dptr,#(_framer_802154 + 0x0002)
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
	mov	a,dph
	mov	r7,a
	jnb	acc.7,00165$
	ljmp	00126$
00165$:
;	../contiki-sensinode/core/net/mac/xmac.c:795: hdr = packetbuf_dataptr();
	lcall	_packetbuf_dataptr
;	../contiki-sensinode/core/net/mac/xmac.c:797: if(hdr->dispatch != DISPATCH) {
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	lcall	__gptrget
	jnz	00166$
	ljmp	00118$
00166$:
;	../contiki-sensinode/core/net/mac/xmac.c:798: someone_is_sending = 0;
	mov	dptr,#_someone_is_sending
	clr	a
	movx	@dptr,a
;	../contiki-sensinode/core/net/mac/xmac.c:800: &rimeaddr_node_addr) ||
;	../contiki-sensinode/core/net/mac/xmac.c:799: if(rimeaddr_cmp(packetbuf_addr(PACKETBUF_ADDR_RECEIVER),
	mov	dpl,#0x19
	lcall	_packetbuf_addr
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	a,#_rimeaddr_node_addr
	push	acc
	mov	a,#(_rimeaddr_node_addr >> 8)
	push	acc
	clr	a
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_rimeaddr_cmp
	mov	r3,dpl
	mov	r4,dph
	dec	sp
	dec	sp
	dec	sp
	mov	a,r3
	orl	a,r4
	jnz	00106$
;	../contiki-sensinode/core/net/mac/xmac.c:802: &rimeaddr_null)) {
;	../contiki-sensinode/core/net/mac/xmac.c:801: rimeaddr_cmp(packetbuf_addr(PACKETBUF_ADDR_RECEIVER),
	mov	dpl,#0x19
	lcall	_packetbuf_addr
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	a,#_rimeaddr_null
	push	acc
	mov	a,#(_rimeaddr_null >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_rimeaddr_cmp
	mov	r3,dpl
	mov	r4,dph
	dec	sp
	dec	sp
	dec	sp
	mov	a,r3
	orl	a,r4
	jnz	00168$
	ljmp	00126$
00168$:
00106$:
;	../contiki-sensinode/core/net/mac/xmac.c:808: off();
	lcall	_off
;	../contiki-sensinode/core/net/mac/xmac.c:814: for(i = 0; i < MAX_SEQNOS; ++i) {
	mov	r0,sp
	dec	r0
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
00122$:
;	../contiki-sensinode/core/net/mac/xmac.c:815: if(packetbuf_attr(PACKETBUF_ATTR_PACKET_ID) == received_seqnos[i].seqno &&
	mov	dpl,#0x0D
	lcall	_packetbuf_attr
	mov	r7,dpl
	mov	r6,dph
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,@r0
	add	a,#_received_seqnos
	mov	r3,a
	inc	r0
	mov	a,@r0
	addc	a,#(_received_seqnos >> 8)
	mov	r5,a
	mov	dpl,r3
	mov	dph,r5
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	r4,#0x00
	mov	a,r7
	cjne	a,ar2,00123$
	mov	a,r6
	cjne	a,ar4,00123$
;	../contiki-sensinode/core/net/mac/xmac.c:817: &received_seqnos[i].sender)) {
	mov	ar4,r5
	mov	ar7,r3
	mov	ar6,r4
	mov	r5,#0x00
;	../contiki-sensinode/core/net/mac/xmac.c:816: rimeaddr_cmp(packetbuf_addr(PACKETBUF_ADDR_SENDER),
	mov	dpl,#0x18
	push	ar7
	push	ar6
	push	ar5
	lcall	_packetbuf_addr
	lcall	_rimeaddr_cmp
	mov	r3,dpl
	mov	r4,dph
	dec	sp
	dec	sp
	dec	sp
	mov	a,r3
	orl	a,r4
	jz	00123$
;	../contiki-sensinode/core/net/mac/xmac.c:819: return;
	ljmp	00126$
00123$:
;	../contiki-sensinode/core/net/mac/xmac.c:814: for(i = 0; i < MAX_SEQNOS; ++i) {
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,#0x03
	add	a,@r0
	mov	@r0,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	@r0,a
	mov	r0,sp
	dec	r0
	inc	@r0
	cjne	@r0,#0x00,00172$
	inc	r0
	inc	@r0
00172$:
	mov	r0,sp
	dec	r0
	clr	c
	mov	a,@r0
	subb	a,#0x08
	inc	r0
	mov	a,@r0
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00173$
	ljmp	00122$
00173$:
;	../contiki-sensinode/core/net/mac/xmac.c:822: for(i = MAX_SEQNOS - 1; i > 0; --i) {
	mov	r0,sp
	dec	r0
	mov	@r0,#0x07
	inc	r0
	mov	@r0,#0x00
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	@r0,#0x15
	inc	r0
	mov	@r0,#0x00
00124$:
;	../contiki-sensinode/core/net/mac/xmac.c:823: memcpy(&received_seqnos[i], &received_seqnos[i - 1],
	mov	r0,sp
	dec	r0
	mov	a,@r0
	mov	r3,a
	dec	a
	clr	F0
	mov	b,#0x03
	jnb	acc.7,00174$
	cpl	F0
	cpl	a
	inc	a
00174$:
	mul	ab
	jnb	F0,00175$
	cpl	a
	add	a,#0x01
	xch	a,b
	cpl	a
	addc	a,#0x00
	xch	a,b
00175$:
	add	a,#_received_seqnos
	mov	r3,a
	mov	a,#(_received_seqnos >> 8)
	addc	a,b
	mov	r4,a
	mov	ar7,r3
	mov	ar6,r4
	mov	r5,#0x00
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	add	a,#_received_seqnos
	mov	r3,a
	inc	r0
	mov	a,@r0
	addc	a,#(_received_seqnos >> 8)
	mov	r4,a
	mov	r2,#0x00
	mov	a,#0x03
	push	acc
	clr	a
	push	acc
	push	ar7
	push	ar6
	push	ar5
	mov	dpl,r3
	mov	dph,r4
	mov	b,r2
	lcall	_memcpy
	mov	a,sp
	add	a,#0xfb
;	../contiki-sensinode/core/net/mac/xmac.c:822: for(i = MAX_SEQNOS - 1; i > 0; --i) {
	mov	sp,a
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	add	a,#0xFD
	mov	@r0,a
	inc	r0
	mov	a,@r0
	addc	a,#0xFF
	mov	@r0,a
	mov	r0,sp
	dec	r0
	dec	@r0
	cjne	@r0,#0xFF,00176$
	inc	r0
	dec	@r0
00176$:
	mov	r0,sp
	dec	r0
	clr	c
	clr	a
	subb	a,@r0
	mov	a,#(0x00 ^ 0x80)
	inc	r0
	mov	b,@r0
	xrl	b,#0x80
	subb	a,b
	jnc	00177$
	ljmp	00124$
00177$:
;	../contiki-sensinode/core/net/mac/xmac.c:826: received_seqnos[0].seqno = packetbuf_attr(PACKETBUF_ATTR_PACKET_ID);
	mov	dpl,#0x0D
	lcall	_packetbuf_attr
	mov	r3,dpl
	mov	dptr,#(_received_seqnos + 0x0002)
	mov	a,r3
	movx	@dptr,a
;	../contiki-sensinode/core/net/mac/xmac.c:828: packetbuf_addr(PACKETBUF_ADDR_SENDER));
	mov	dpl,#0x18
	lcall	_packetbuf_addr
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	../contiki-sensinode/core/net/mac/xmac.c:827: rimeaddr_copy(&received_seqnos[0].sender,
	push	ar2
	push	ar3
	push	ar4
	mov	dptr,#_received_seqnos
	mov	b,#0x00
	lcall	_rimeaddr_copy
	dec	sp
	dec	sp
	dec	sp
;	../contiki-sensinode/core/net/mac/xmac.c:845: waiting_for_packet = 0;
	mov	dptr,#_waiting_for_packet
	clr	a
	movx	@dptr,a
;	../contiki-sensinode/core/net/mac/xmac.c:848: NETSTACK_MAC.input();
	mov	dptr,#(_csma_driver + 0x0007)
;	genFromRTrack removed	clr	a
	movc	a,@a+dptr
	mov	r3,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	push	ar4
	push	ar3
	mov	dpl,r3
	mov	dph,r4
	lcall	__sdcc_call_dptr
	pop	ar3
	pop	ar4
;	../contiki-sensinode/core/net/mac/xmac.c:849: return;
	ljmp	00126$
00118$:
;	../contiki-sensinode/core/net/mac/xmac.c:854: } else if(hdr->type == TYPE_STROBE) {
	inc	r5
	cjne	r5,#0x00,00178$
	inc	r6
00178$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	cjne	r5,#0x10,00126$
;	../contiki-sensinode/core/net/mac/xmac.c:855: someone_is_sending = 2;
	mov	dptr,#_someone_is_sending
	mov	a,#0x02
	movx	@dptr,a
;	../contiki-sensinode/core/net/mac/xmac.c:858: &rimeaddr_node_addr)) {
;	../contiki-sensinode/core/net/mac/xmac.c:857: if(rimeaddr_cmp(packetbuf_addr(PACKETBUF_ADDR_RECEIVER),
	mov	dpl,#0x19
	lcall	_packetbuf_addr
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,#_rimeaddr_node_addr
	push	acc
	mov	a,#(_rimeaddr_node_addr >> 8)
	push	acc
	clr	a
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
	jz	00112$
;	../contiki-sensinode/core/net/mac/xmac.c:865: waiting_for_packet = 1;
	mov	dptr,#_waiting_for_packet
	mov	a,#0x01
	movx	@dptr,a
	sjmp	00113$
00112$:
;	../contiki-sensinode/core/net/mac/xmac.c:885: &rimeaddr_null)) {
;	../contiki-sensinode/core/net/mac/xmac.c:884: } else if(rimeaddr_cmp(packetbuf_addr(PACKETBUF_ADDR_RECEIVER),
	mov	dpl,#0x19
	lcall	_packetbuf_addr
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
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
	jz	00113$
;	../contiki-sensinode/core/net/mac/xmac.c:890: waiting_for_packet = 1;
	mov	dptr,#_waiting_for_packet
	mov	a,#0x01
	movx	@dptr,a
;	../contiki-sensinode/core/net/mac/xmac.c:891: on();
	lcall	_on
00113$:
;	../contiki-sensinode/core/net/mac/xmac.c:898: return;
;	../contiki-sensinode/core/net/mac/xmac.c:904: } else if(hdr->type == TYPE_STROBE_ACK) {
00126$:
	mov	a,sp
	add	a,#0xF9
	mov	sp,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'xmac_set_announcement_radio_txpower'
;------------------------------------------------------------
;txpower                   Allocated to registers 
;------------------------------------------------------------
;	../contiki-sensinode/core/net/mac/xmac.c:964: xmac_set_announcement_radio_txpower(int txpower)
;	-----------------------------------------
;	 function xmac_set_announcement_radio_txpower
;	-----------------------------------------
_xmac_set_announcement_radio_txpower:
;	../contiki-sensinode/core/net/mac/xmac.c:969: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'init'
;------------------------------------------------------------
;	../contiki-sensinode/core/net/mac/xmac.c:972: init(void)
;	-----------------------------------------
;	 function init
;	-----------------------------------------
_init:
;	../contiki-sensinode/core/net/mac/xmac.c:974: radio_is_on = 0;
	mov	dptr,#_radio_is_on
	clr	a
	movx	@dptr,a
;	../contiki-sensinode/core/net/mac/xmac.c:975: waiting_for_packet = 0;
	mov	dptr,#_waiting_for_packet
	movx	@dptr,a
;	../contiki-sensinode/core/net/mac/xmac.c:976: PT_INIT(&pt);
	mov	dptr,#_pt
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	../contiki-sensinode/core/net/mac/xmac.c:978: (void (*)(struct rtimer *, void *))powercycle, NULL);
	mov	r6,#_powercycle
	mov	r7,#(_powercycle >> 8)
;	../contiki-sensinode/core/net/mac/xmac.c:977: rtimer_set(&rt, RTIMER_NOW() + xmac_config.off_time, 1,
	mov	r4,_T1CNTL
	mov	r5,#0x00
	mov	r2,_T1CNTH
	mov	ar3,r2
	clr	a
	add	a,r4
	mov	r4,a
	mov	a,r3
	addc	a,r5
	mov	r5,a
	mov	dptr,#(_xmac_config + 0x0002)
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,r2
	add	a,r4
	mov	r2,a
	mov	a,r3
	addc	a,r5
	mov	r3,a
	clr	a
	push	acc
	push	acc
	push	acc
	push	ar6
	push	ar7
	inc	a
	push	acc
	clr	a
	push	acc
	push	ar2
	push	ar3
	mov	dptr,#_rt
	mov	b,#0x00
	lcall	_rtimer_set
	mov	a,sp
	add	a,#0xf7
	mov	sp,a
;	../contiki-sensinode/core/net/mac/xmac.c:980: xmac_is_on = 1;
	mov	dptr,#_xmac_is_on
	mov	a,#0x01
	movx	@dptr,a
;	../contiki-sensinode/core/net/mac/xmac.c:983: list_init(encounter_list);
	mov	dptr,#_encounter_list
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
;	../contiki-sensinode/core/net/mac/xmac.c:984: memb_init(&encounter_memb);
	mov	dptr,#_encounter_memb
	mov	b,#0x00
	ljmp	_memb_init
;------------------------------------------------------------
;Allocation info for local variables in function 'turn_on'
;------------------------------------------------------------
;	../contiki-sensinode/core/net/mac/xmac.c:995: turn_on(void)
;	-----------------------------------------
;	 function turn_on
;	-----------------------------------------
_turn_on:
;	../contiki-sensinode/core/net/mac/xmac.c:997: xmac_is_on = 1;
	mov	dptr,#_xmac_is_on
	mov	a,#0x01
	movx	@dptr,a
;	../contiki-sensinode/core/net/mac/xmac.c:999: (void (*)(struct rtimer *, void *))powercycle, NULL);
	mov	r6,#_powercycle
	mov	r7,#(_powercycle >> 8)
;	../contiki-sensinode/core/net/mac/xmac.c:998: rtimer_set(&rt, RTIMER_NOW() + xmac_config.off_time, 1,
	mov	r4,_T1CNTL
	mov	r5,#0x00
	mov	r2,_T1CNTH
	mov	ar3,r2
	clr	a
	add	a,r4
	mov	r4,a
	mov	a,r3
	addc	a,r5
	mov	r5,a
	mov	dptr,#(_xmac_config + 0x0002)
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,r2
	add	a,r4
	mov	r2,a
	mov	a,r3
	addc	a,r5
	mov	r3,a
	clr	a
	push	acc
	push	acc
	push	acc
	push	ar6
	push	ar7
	inc	a
	push	acc
	clr	a
	push	acc
	push	ar2
	push	ar3
	mov	dptr,#_rt
	mov	b,#0x00
	lcall	_rtimer_set
	mov	a,sp
	add	a,#0xf7
	mov	sp,a
;	../contiki-sensinode/core/net/mac/xmac.c:1000: return 1;
	mov	dptr,#0x0001
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'turn_off'
;------------------------------------------------------------
;keep_radio_on             Allocated to registers r6 r7 
;------------------------------------------------------------
;	../contiki-sensinode/core/net/mac/xmac.c:1004: turn_off(int keep_radio_on)
;	-----------------------------------------
;	 function turn_off
;	-----------------------------------------
_turn_off:
	mov	r6,dpl
	mov	r7,dph
;	../contiki-sensinode/core/net/mac/xmac.c:1006: xmac_is_on = 0;
	mov	dptr,#_xmac_is_on
	clr	a
	movx	@dptr,a
;	../contiki-sensinode/core/net/mac/xmac.c:1007: if(keep_radio_on) {
	mov	a,r6
	orl	a,r7
	jz	00102$
;	../contiki-sensinode/core/net/mac/xmac.c:1008: return NETSTACK_RADIO.on();
	mov	dptr,#(_cc2530_rf_driver + 0x0010)
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
00102$:
;	../contiki-sensinode/core/net/mac/xmac.c:1010: return NETSTACK_RADIO.off();
	mov	dptr,#(_cc2530_rf_driver + 0x0012)
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
;Allocation info for local variables in function 'channel_check_interval'
;------------------------------------------------------------
;	../contiki-sensinode/core/net/mac/xmac.c:1015: channel_check_interval(void)
;	-----------------------------------------
;	 function channel_check_interval
;	-----------------------------------------
_channel_check_interval:
;	../contiki-sensinode/core/net/mac/xmac.c:1017: return (1ul * CLOCK_SECOND * DEFAULT_PERIOD) / RTIMER_ARCH_SECOND;
	mov	dptr,#0x000F
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
_xmac_driver:
	.byte __str_0,(__str_0 >> 8),#0x80
	.byte _init,(_init >> 8)
	.byte _qsend_packet,(_qsend_packet >> 8)
	.byte _qsend_list,(_qsend_list >> 8)
	.byte _input_packet,(_input_packet >> 8)
	.byte _turn_on,(_turn_on >> 8)
	.byte _turn_off,(_turn_off >> 8)
	.byte _channel_check_interval,(_channel_check_interval >> 8)
__str_0:
	.ascii "X-MAC"
	.db 0x00
	.area XINIT   (CODE)
__xinit__xmac_config:
	.byte #0x61,#0x00	; 97
	.byte #0x40,#0x07	; 1856
	.byte #0xC4,#0x08	; 2244
	.byte #0x3C,#0x00	; 60
__xinit__xmac_is_on:
	.db #0x00	; 0
__xinit__waiting_for_packet:
	.db #0x00	; 0
__xinit__someone_is_sending:
	.db #0x00	; 0
__xinit__we_are_sending:
	.db #0x00	; 0
__xinit__radio_is_on:
	.db #0x00	; 0
__xinit__encounter_list_list:
; generic printIvalPtr
	.byte #0x00,#0x00,#0x00
__xinit__encounter_list:
	.byte _encounter_list_list,(_encounter_list_list >> 8),#0x00
__xinit__encounter_memb:
	.byte #0x07,#0x00	; 7
	.byte #0x04,#0x00	; 4
	.byte _encounter_memb_memb_count,(_encounter_memb_memb_count >> 8),#0x00
	.byte _encounter_memb_memb_mem,(_encounter_memb_memb_mem >> 8),#0x00
	.area CABS    (ABS,CODE)
