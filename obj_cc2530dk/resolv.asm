;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.4.0 #8981 (Oct 24 2015) (Linux)
; This file was generated Sun Oct 25 01:52:17 2015
;--------------------------------------------------------
	.module resolv
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _tcpip_poll_udp
	.globl _udp_new
	.globl _uip_htons
	.globl _uip_send
	.globl _etimer_set
	.globl _process_alloc_event
	.globl _process_post
	.globl _memset
	.globl _strcmp
	.globl _strncpy
	.globl _memcpy
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
	.globl _resolv_process
	.globl _resolv_event_found
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
	.globl _resolv_query
	.globl _resolv_lookup
	.globl _resolv_getserver
	.globl _resolv_conf
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
_names:
	.ds 164
_seqno:
	.ds 1
_retry:
	.ds 10
_resolv_event_found::
	.ds 1
_check_entries_endquery_4_138:
	.ds 5
_newdata_nquestions_1_140:
	.ds 1
_newdata_nanswers_1_140:
	.ds 1
_newdata_i_1_140:
	.ds 1
_resolv_query_i_1_167:
	.ds 1
_resolv_query_lseq_1_167:
	.ds 1
_resolv_query_lseqi_1_167:
	.ds 1
_resolv_lookup_i_1_174:
	.ds 1
_resolv_conf_server_1_181:
	.ds 4
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_resolv_conn:
	.ds 3
_resolv_process::
	.ds 9
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
;------------------------------------------------------------
;Allocation info for local variables in function 'check_entries'
;------------------------------------------------------------
;hdr                       Allocated to stack - sp -6
;query                     Allocated to registers r7 r6 r5 
;nptr                      Allocated to stack - sp -3
;nameptr                   Allocated to stack - sp +0
;i                         Allocated to registers r7 
;n                         Allocated to registers r3 
;namemapptr                Allocated to stack - sp +3
;sloc0                     Allocated to stack - sp -15
;sloc1                     Allocated to stack - sp -12
;sloc2                     Allocated to stack - sp -9
;endquery                  Allocated with name '_check_entries_endquery_4_138'
;------------------------------------------------------------
;	../contiki-sensinode/core/net/resolv.c:258: static unsigned char endquery[] =
	mov	dptr,#_check_entries_endquery_4_138
	clr	a
	movx	@dptr,a
	mov	dptr,#(_check_entries_endquery_4_138 + 0x0001)
	movx	@dptr,a
	mov	dptr,#(_check_entries_endquery_4_138 + 0x0002)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_check_entries_endquery_4_138 + 0x0003)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_check_entries_endquery_4_138 + 0x0004)
	inc	a
	movx	@dptr,a
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
;Allocation info for local variables in function 'parse_name'
;------------------------------------------------------------
;query                     Allocated to registers r5 r6 r7 
;n                         Allocated to registers 
;------------------------------------------------------------
;	../contiki-sensinode/core/net/resolv.c:181: parse_name(unsigned char *query)
;	-----------------------------------------
;	 function parse_name
;	-----------------------------------------
_parse_name:
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
;	../contiki-sensinode/core/net/resolv.c:185: do {
00104$:
;	../contiki-sensinode/core/net/resolv.c:186: n = *query++;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
;	../contiki-sensinode/core/net/resolv.c:188: while(n > 0) {
	mov	ar1,r5
	mov	ar2,r6
	mov	ar3,r7
00101$:
	mov	a,r4
	jz	00113$
;	../contiki-sensinode/core/net/resolv.c:190: ++query;
	inc	r1
	cjne	r1,#0x00,00123$
	inc	r2
00123$:
;	../contiki-sensinode/core/net/resolv.c:191: --n;
	dec	r4
	sjmp	00101$
00113$:
	mov	ar5,r1
	mov	ar6,r2
	mov	ar7,r3
;	../contiki-sensinode/core/net/resolv.c:194: } while(*query != 0);
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	jnz	00104$
;	../contiki-sensinode/core/net/resolv.c:196: return query + 1;
	inc	r1
	cjne	r1,#0x00,00125$
	inc	r2
00125$:
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'check_entries'
;------------------------------------------------------------
;hdr                       Allocated to stack - sp -11
;query                     Allocated to registers r7 r6 r5 
;nptr                      Allocated to stack - sp -8
;nameptr                   Allocated to stack - sp -5
;i                         Allocated to registers r7 
;n                         Allocated to registers r3 
;namemapptr                Allocated to stack - sp -2
;sloc0                     Allocated to stack - sp -20
;sloc1                     Allocated to stack - sp -17
;sloc2                     Allocated to stack - sp -14
;endquery                  Allocated with name '_check_entries_endquery_4_138'
;------------------------------------------------------------
;	../contiki-sensinode/core/net/resolv.c:205: check_entries(void)
;	-----------------------------------------
;	 function check_entries
;	-----------------------------------------
_check_entries:
	mov	a,sp
	add	a,#0x15
	mov	sp,a
;	../contiki-sensinode/core/net/resolv.c:213: for(i = 0; i < RESOLV_ENTRIES; ++i) {
	mov	r7,#0x00
	mov	r6,#0x00
00122$:
;	../contiki-sensinode/core/net/resolv.c:214: namemapptr = &names[i];
	mov	a,r6
	mov	b,#0x29
	mul	ab
	add	a,#_names
	mov	r4,a
	mov	a,#(_names >> 8)
	addc	a,b
	mov	r5,a
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,#0x00
;	../contiki-sensinode/core/net/resolv.c:215: if(namemapptr->state == STATE_NEW ||
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
	cjne	r2,#0x01,00156$
	sjmp	00113$
00156$:
;	../contiki-sensinode/core/net/resolv.c:216: namemapptr->state == STATE_ASKING) {
	cjne	r2,#0x02,00157$
	sjmp	00158$
00157$:
	ljmp	00116$
00158$:
00113$:
;	../contiki-sensinode/core/net/resolv.c:217: etimer_set(&retry, CLOCK_SECOND);
	push	ar7
	push	ar6
	mov	a,#0x80
	push	acc
	clr	a
	push	acc
	mov	dptr,#_retry
	mov	b,#0x00
	lcall	_etimer_set
	dec	sp
	dec	sp
	pop	ar6
	pop	ar7
;	../contiki-sensinode/core/net/resolv.c:218: if(namemapptr->state == STATE_ASKING) {
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
	cjne	r2,#0x02,00159$
	sjmp	00160$
00159$:
	ljmp	00107$
00160$:
;	../contiki-sensinode/core/net/resolv.c:219: if(--namemapptr->tmr == 0) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,sp
	add	a,#0xec
	mov	r1,a
	mov	a,#0x01
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
	mov	a,sp
	add	a,#0xec
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	dec	r2
	mov	a,sp
	add	a,#0xec
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
	jz	00161$
	ljmp	00116$
00161$:
;	../contiki-sensinode/core/net/resolv.c:220: if(++namemapptr->retries == MAX_RETRIES) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x02
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar3,@r0
	mov	dpl,r5
	mov	dph,r4
	mov	b,r3
	lcall	__gptrget
	mov	r2,a
	inc	r2
	mov	dpl,r5
	mov	dph,r4
	mov	b,r3
	mov	a,r2
	lcall	__gptrput
	cjne	r2,#0x08,00102$
;	../contiki-sensinode/core/net/resolv.c:221: namemapptr->state = STATE_ERROR;
	push	ar6
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,#0x04
	lcall	__gptrput
;	../contiki-sensinode/core/net/resolv.c:222: resolv_found(namemapptr->name, NULL);
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	a,#0x05
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar6,@r0
	push	ar6
	clr	a
	push	acc
	push	acc
	push	acc
	mov	dpl,r2
	mov	dph,r5
	mov	b,r6
	lcall	_resolv_found
	dec	sp
	dec	sp
	dec	sp
	pop	ar6
;	../contiki-sensinode/core/net/resolv.c:223: continue;
	pop	ar6
	ljmp	00116$
00102$:
;	../contiki-sensinode/core/net/resolv.c:225: namemapptr->tmr = namemapptr->retries;
	mov	dpl,r5
	mov	dph,r4
	mov	b,r3
	lcall	__gptrget
	mov	r5,a
	mov	a,sp
	add	a,#0xec
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r5
	lcall	__gptrput
;	../contiki-sensinode/core/net/resolv.c:230: continue;
	sjmp	00108$
00107$:
;	../contiki-sensinode/core/net/resolv.c:233: namemapptr->state = STATE_ASKING;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,#0x02
	lcall	__gptrput
;	../contiki-sensinode/core/net/resolv.c:234: namemapptr->tmr = 1;
	mov	r0,sp
	dec	r0
	dec	r0
	dec	a
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
	mov	a,#0x01
	lcall	__gptrput
;	../contiki-sensinode/core/net/resolv.c:235: namemapptr->retries = 0;
	mov	r0,sp
	dec	r0
	dec	r0
	inc	a
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
	clr	a
	lcall	__gptrput
00108$:
;	../contiki-sensinode/core/net/resolv.c:237: hdr = (struct dns_hdr *)uip_appdata;
	mov	dptr,#_uip_appdata
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
;	../contiki-sensinode/core/net/resolv.c:238: memset(hdr, 0, sizeof(struct dns_hdr));
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	push	ar7
	mov	a,#0x0C
	push	acc
	clr	a
	push	acc
	push	acc
	mov	dpl,r2
	mov	dph,r4
	mov	b,r5
	lcall	_memset
	dec	sp
	dec	sp
	dec	sp
	pop	ar7
;	../contiki-sensinode/core/net/resolv.c:239: hdr->id = uip_htons(i);
	mov	ar4,r7
	mov	r5,#0x00
	mov	dpl,r4
	mov	dph,r5
	lcall	_uip_htons
	mov	r4,dpl
	mov	r5,dph
	mov	a,sp
	add	a,#0xf5
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
;	../contiki-sensinode/core/net/resolv.c:240: hdr->flags1 = DNS_FLAG1_RD;
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	a,#0x02
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
	mov	a,#0x01
	lcall	__gptrput
;	../contiki-sensinode/core/net/resolv.c:241: hdr->numquestions = UIP_HTONS(1);
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	a,#0x04
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
	clr	a
	lcall	__gptrput
	inc	dptr
	inc	a
	lcall	__gptrput
;	../contiki-sensinode/core/net/resolv.c:242: query = (char *)uip_appdata + 12;
	mov	dptr,#_uip_appdata
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,#0x0C
	add	a,r3
	mov	r7,a
	clr	a
	addc	a,r4
	mov	r6,a
;	../contiki-sensinode/core/net/resolv.c:243: nameptr = namemapptr->name;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,sp
	add	a,#0xfb
	mov	r1,a
	mov	a,#0x05
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
;	../contiki-sensinode/core/net/resolv.c:244: --nameptr;
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	dec	@r0
	cjne	@r0,#0xFF,00164$
	inc	r0
	dec	@r0
00164$:
;	../contiki-sensinode/core/net/resolv.c:246: do {
00110$:
;	../contiki-sensinode/core/net/resolv.c:247: ++nameptr;
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00165$
	inc	r0
	inc	@r0
00165$:
;	../contiki-sensinode/core/net/resolv.c:248: nptr = query;
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	@r0,ar7
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar5
;	../contiki-sensinode/core/net/resolv.c:249: ++query;
	inc	r7
	cjne	r7,#0x00,00166$
	inc	r6
00166$:
;	../contiki-sensinode/core/net/resolv.c:250: for(n = 0; *nameptr != '.' && *nameptr != 0; ++nameptr) {
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	@r0,ar7
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar5
	mov	r3,#0x00
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,sp
	add	a,#0xef
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
00120$:
	mov	a,sp
	add	a,#0xef
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r7,a
	cjne	r7,#0x2E,00167$
	sjmp	00135$
00167$:
	cjne	r7,#0x00,00168$
	sjmp	00135$
00168$:
;	../contiki-sensinode/core/net/resolv.c:251: *query = *nameptr;
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r7
	lcall	__gptrput
	inc	dptr
	dec	r0
	dec	r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
;	../contiki-sensinode/core/net/resolv.c:252: ++query;
;	../contiki-sensinode/core/net/resolv.c:253: ++n;
	inc	r3
;	../contiki-sensinode/core/net/resolv.c:250: for(n = 0; *nameptr != '.' && *nameptr != 0; ++nameptr) {
	mov	a,sp
	add	a,#0xef
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00169$
	inc	r0
	inc	@r0
00169$:
	sjmp	00120$
00135$:
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	ar7,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar5,@r0
	mov	a,sp
	add	a,#0xef
	mov	r0,a
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
;	../contiki-sensinode/core/net/resolv.c:255: *nptr = n;
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
;	../contiki-sensinode/core/net/resolv.c:256: } while(*nameptr != 0);
	mov	a,sp
	add	a,#0xef
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	jz	00170$
	ljmp	00110$
00170$:
;	../contiki-sensinode/core/net/resolv.c:260: memcpy(query, endquery, 5);
	mov	ar3,r7
	mov	ar4,r6
	mov	a,#0x05
	push	acc
	clr	a
	push	acc
	mov	a,#_check_entries_endquery_4_138
	push	acc
	mov	a,#(_check_entries_endquery_4_138 >> 8)
	push	acc
	clr	a
	push	acc
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	_memcpy
	mov	a,sp
	add	a,#0xfb
;	../contiki-sensinode/core/net/resolv.c:262: uip_udp_send((unsigned char)(query + 5 - (char *)uip_appdata));
	mov	sp,a
	add	a,#0xf2
	mov	r0,a
	mov	a,#0x05
	add	a,@r0
	mov	r7,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar2,@r0
	mov	dptr,#_uip_appdata
	mov	a,sp
	add	a,#0xef
	mov	r0,a
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
	mov	a,sp
	add	a,#0xef
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	mov	a,r7
	clr	c
	subb	a,r3
	mov	r3,a
	mov	a,r6
	subb	a,r4
	mov	r7,#0x00
	mov	a,sp
	add	a,#0xef
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	push	ar3
	push	ar7
	mov	dpl,r2
	mov	dph,r4
	mov	b,r5
	lcall	_uip_send
	dec	sp
	dec	sp
;	../contiki-sensinode/core/net/resolv.c:263: break;
	sjmp	00123$
00116$:
;	../contiki-sensinode/core/net/resolv.c:213: for(i = 0; i < RESOLV_ENTRIES; ++i) {
	inc	r6
	mov	ar7,r6
	cjne	r6,#0x04,00171$
00171$:
	jnc	00172$
	ljmp	00122$
00172$:
00123$:
	mov	a,sp
	add	a,#0xEB
	mov	sp,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'newdata'
;------------------------------------------------------------
;nameptr                   Allocated to registers r3 r5 r6 
;ans                       Allocated to registers r2 r4 r7 
;hdr                       Allocated to stack - sp -5
;namemapptr                Allocated to stack - sp -2
;sloc0                     Allocated to stack - sp -11
;sloc1                     Allocated to stack - sp -8
;sloc2                     Allocated to stack - sp +7
;nquestions                Allocated with name '_newdata_nquestions_1_140'
;nanswers                  Allocated with name '_newdata_nanswers_1_140'
;i                         Allocated with name '_newdata_i_1_140'
;------------------------------------------------------------
;	../contiki-sensinode/core/net/resolv.c:273: newdata(void)
;	-----------------------------------------
;	 function newdata
;	-----------------------------------------
_newdata:
	mov	a,sp
	add	a,#0x0C
	mov	sp,a
;	../contiki-sensinode/core/net/resolv.c:282: hdr = (struct dns_hdr *)uip_appdata;
	mov	dptr,#_uip_appdata
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	../contiki-sensinode/core/net/resolv.c:295: i = (uint8_t)uip_htons(hdr->id);
	mov	a,sp
	add	a,#0xfb
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
	mov	dpl,r3
	mov	dph,r4
	lcall	_uip_htons
	mov	r3,dpl
	mov	dptr,#_newdata_i_1_140
	mov	a,r3
	movx	@dptr,a
;	../contiki-sensinode/core/net/resolv.c:296: namemapptr = &names[i];
	mov	a,r3
	mov	b,#0x29
	mul	ab
	add	a,#_names
	mov	r2,a
	mov	a,#(_names >> 8)
	addc	a,b
	mov	r4,a
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,#0x00
;	../contiki-sensinode/core/net/resolv.c:297: if(i < RESOLV_ENTRIES &&
	cjne	r3,#0x04,00155$
00155$:
	jc	00156$
	ljmp	00120$
00156$:
;	../contiki-sensinode/core/net/resolv.c:298: namemapptr->state == STATE_ASKING) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r6,a
	cjne	r6,#0x02,00157$
	sjmp	00158$
00157$:
	ljmp	00120$
00158$:
;	../contiki-sensinode/core/net/resolv.c:301: namemapptr->state = STATE_DONE;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,#0x03
	lcall	__gptrput
;	../contiki-sensinode/core/net/resolv.c:302: namemapptr->err = hdr->flags2 & DNS_FLAG2_ERR_MASK;
	mov	r0,sp
	dec	r0
	dec	r0
	inc	a
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar6,@r0
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x03
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r2
	mov	dph,r4
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	anl	ar2,#0x0F
	mov	dpl,r3
	mov	dph,r5
	mov	b,r6
;	../contiki-sensinode/core/net/resolv.c:305: if(namemapptr->err != 0) {
	mov	a,r2
	lcall	__gptrput
	jz	00102$
;	../contiki-sensinode/core/net/resolv.c:306: namemapptr->state = STATE_ERROR;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,#0x04
	lcall	__gptrput
;	../contiki-sensinode/core/net/resolv.c:307: resolv_found(namemapptr->name, NULL);
	mov	r0,sp
	dec	r0
	dec	r0
	inc	a
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar6,@r0
	clr	a
	push	acc
	push	acc
	push	acc
	mov	dpl,r3
	mov	dph,r5
	mov	b,r6
	lcall	_resolv_found
	dec	sp
	dec	sp
	dec	sp
;	../contiki-sensinode/core/net/resolv.c:308: return;
	ljmp	00120$
00102$:
;	../contiki-sensinode/core/net/resolv.c:313: nquestions = (uint8_t)uip_htons(hdr->numquestions);
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x04
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar6,@r0
	mov	dpl,r3
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	mov	dpl,r3
	mov	dph,r5
	lcall	_uip_htons
	mov	r5,dpl
	mov	dptr,#_newdata_nquestions_1_140
	mov	a,r5
	movx	@dptr,a
;	../contiki-sensinode/core/net/resolv.c:314: nanswers = (uint8_t)uip_htons(hdr->numanswers);
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x06
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar6,@r0
	mov	dpl,r3
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	mov	dpl,r3
	mov	dph,r5
	lcall	_uip_htons
	mov	r5,dpl
	mov	dptr,#_newdata_nanswers_1_140
	mov	a,r5
	movx	@dptr,a
;	../contiki-sensinode/core/net/resolv.c:319: nameptr = parse_name((uint8_t *)uip_appdata + 12) + 4;
	mov	dptr,#_uip_appdata
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,#0x0C
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r5
	mov	r5,a
	mov	dpl,r3
	mov	dph,r5
	mov	b,r6
	lcall	_parse_name
	mov	r3,dpl
	mov	r5,dph
	mov	r6,b
	mov	a,#0x04
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r5
	mov	r5,a
;	../contiki-sensinode/core/net/resolv.c:321: while(nanswers > 0) {
00112$:
	mov	dptr,#_newdata_nanswers_1_140
	movx	a,@dptr
	mov	r7,a
	jnz	00160$
	ljmp	00120$
00160$:
;	../contiki-sensinode/core/net/resolv.c:324: if(*nameptr & 0xc0) {
	mov	dpl,r3
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r7,a
	anl	a,#0xC0
	jz	00104$
;	../contiki-sensinode/core/net/resolv.c:326: nameptr +=2;
	mov	a,#0x02
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r5
	mov	r5,a
	sjmp	00105$
00104$:
;	../contiki-sensinode/core/net/resolv.c:330: nameptr = parse_name((uint8_t *)nameptr);
	mov	dpl,r3
	mov	dph,r5
	mov	b,r6
	lcall	_parse_name
	mov	r2,dpl
	mov	r4,dph
	mov	r7,b
	mov	ar3,r2
	mov	ar5,r4
	mov	ar6,r7
00105$:
;	../contiki-sensinode/core/net/resolv.c:333: ans = (struct dns_answer *)nameptr;
	mov	ar2,r3
	mov	ar4,r5
	mov	ar7,r6
;	../contiki-sensinode/core/net/resolv.c:340: if(ans->type == UIP_HTONS(1) &&
	push	ar3
	push	ar5
	push	ar6
	mov	dpl,r2
	mov	dph,r4
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	cjne	r5,#0x00,00162$
	cjne	r6,#0x01,00162$
	sjmp	00163$
00162$:
	pop	ar6
	pop	ar5
	pop	ar3
	ljmp	00108$
00163$:
;	../contiki-sensinode/core/net/resolv.c:341: ans->class == UIP_HTONS(1) &&
	mov	a,#0x02
	add	a,r2
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r5,a
	mov	ar6,r7
	mov	dpl,r3
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	cjne	r3,#0x00,00164$
	cjne	r5,#0x01,00164$
	sjmp	00165$
00164$:
	pop	ar6
	pop	ar5
	pop	ar3
	ljmp	00108$
00165$:
;	../contiki-sensinode/core/net/resolv.c:342: ans->len == UIP_HTONS(4)) {
	mov	a,#0x08
	add	a,r2
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r5,a
	mov	ar6,r7
	mov	dpl,r3
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	cjne	r3,#0x00,00166$
	cjne	r5,#0x04,00166$
	sjmp	00167$
00166$:
	pop	ar6
	pop	ar5
	pop	ar3
	ljmp	00108$
00167$:
	pop	ar6
	pop	ar5
	pop	ar3
;	../contiki-sensinode/core/net/resolv.c:350: for(i = 0; i < 4; i++) {
	mov	dptr,#_newdata_i_1_140
	clr	a
	movx	@dptr,a
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	a,#0x0A
	add	a,r2
	mov	@r0,a
	clr	a
	addc	a,r4
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar7
00118$:
;	../contiki-sensinode/core/net/resolv.c:351: namemapptr->ipaddr.u8[i] = ans->ipaddr[i];
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x25
	add	a,@r0
	mov	r7,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar5,@r0
	mov	dptr,#_newdata_i_1_140
	movx	a,@dptr
	mov	r4,a
	add	a,r7
	mov	r3,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	a,r4
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r2
	mov	dph,r4
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	mov	dpl,r3
	mov	dph,r6
	mov	b,r5
	lcall	__gptrput
;	../contiki-sensinode/core/net/resolv.c:350: for(i = 0; i < 4; i++) {
	mov	dptr,#_newdata_i_1_140
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x04,00168$
00168$:
	jc	00118$
;	../contiki-sensinode/core/net/resolv.c:354: resolv_found(namemapptr->name, &namemapptr->ipaddr);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x25
	add	a,@r0
	mov	r6,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar3,@r0
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x05
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar7,@r0
	push	ar6
	push	ar5
	push	ar3
	mov	dpl,r2
	mov	dph,r4
	mov	b,r7
	lcall	_resolv_found
	dec	sp
	dec	sp
	dec	sp
;	../contiki-sensinode/core/net/resolv.c:355: return;
	sjmp	00120$
00108$:
;	../contiki-sensinode/core/net/resolv.c:357: nameptr = nameptr + 10 + uip_htons(ans->len);
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,#0x0A
	add	a,r3
	mov	@r0,a
	clr	a
	addc	a,r5
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar6
	mov	a,#0x08
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	dpl,r2
	mov	dph,r4
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	dpl,r2
	mov	dph,r4
	lcall	_uip_htons
	mov	r4,dpl
	mov	r7,dph
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,r4
	add	a,@r0
	mov	r4,a
	mov	a,r7
	inc	r0
	addc	a,@r0
	mov	r7,a
	inc	r0
	mov	ar2,@r0
	mov	ar3,r4
	mov	ar5,r7
	mov	ar6,r2
;	../contiki-sensinode/core/net/resolv.c:359: --nanswers;
	mov	dptr,#_newdata_nanswers_1_140
	movx	a,@dptr
	dec	a
	movx	@dptr,a
	ljmp	00112$
00120$:
	mov	a,sp
	add	a,#0xF4
	mov	sp,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'process_thread_resolv_process'
;------------------------------------------------------------
;ev                        Allocated to stack - sp -4
;data                      Allocated to stack - sp -7
;process_pt                Allocated to registers r5 r6 r7 
;i                         Allocated to stack - sp -1
;PT_YIELD_FLAG             Allocated to registers r4 
;------------------------------------------------------------
;	../contiki-sensinode/core/net/resolv.c:368: PROCESS_THREAD(resolv_process, ev, data)
;	-----------------------------------------
;	 function process_thread_resolv_process
;	-----------------------------------------
_process_thread_resolv_process:
	inc	sp
	inc	sp
;	../contiki-sensinode/core/net/resolv.c:372: PROCESS_BEGIN();
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	r4,#0x01
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	cjne	r2,#0x00,00178$
	cjne	r3,#0x00,00178$
	sjmp	00137$
00178$:
	cjne	r2,#0x7E,00179$
	cjne	r3,#0x01,00179$
	sjmp	00103$
00179$:
	ljmp	00130$
;	../contiki-sensinode/core/net/resolv.c:374: for(i = 0; i < RESOLV_ENTRIES; ++i) {
00137$:
	mov	r0,sp
	dec	r0
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	mov	r2,#0x00
	mov	r3,#0x00
00131$:
;	../contiki-sensinode/core/net/resolv.c:375: names[i].state = STATE_UNUSED;
	mov	a,r2
	add	a,#_names
	mov	dpl,a
	mov	a,r3
	addc	a,#(_names >> 8)
	mov	dph,a
	clr	a
	movx	@dptr,a
;	../contiki-sensinode/core/net/resolv.c:374: for(i = 0; i < RESOLV_ENTRIES; ++i) {
	mov	a,#0x29
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	r0,sp
	dec	r0
	inc	@r0
	cjne	@r0,#0x00,00180$
	inc	r0
	inc	@r0
00180$:
	mov	r0,sp
	dec	r0
	clr	c
	mov	a,@r0
	subb	a,#0x04
	inc	r0
	mov	a,@r0
	xrl	a,#0x80
	subb	a,#0x80
	jc	00131$
;	../contiki-sensinode/core/net/resolv.c:377: resolv_conn = NULL;
	mov	dptr,#_resolv_conn
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	../contiki-sensinode/core/net/resolv.c:378: resolv_event_found = process_alloc_event();
	push	ar7
	push	ar6
	push	ar5
	lcall	_process_alloc_event
	mov	a,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dptr,#_resolv_event_found
	movx	@dptr,a
;	../contiki-sensinode/core/net/resolv.c:381: while(1) {
00128$:
;	../contiki-sensinode/core/net/resolv.c:382: PROCESS_WAIT_EVENT();
	mov	r4,#0x00
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x7E
	lcall	__gptrput
	inc	dptr
	mov	a,#0x01
	lcall	__gptrput
00103$:
	mov	a,r4
	jnz	00107$
	mov	dpl,#0x01
	ljmp	00133$
00107$:
;	../contiki-sensinode/core/net/resolv.c:384: if(ev == PROCESS_EVENT_TIMER) {
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	cjne	@r0,#0x88,00125$
;	../contiki-sensinode/core/net/resolv.c:385: if(resolv_conn != NULL) {
	mov	dptr,#_resolv_conn
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,r2
	orl	a,r3
	jz	00128$
;	../contiki-sensinode/core/net/resolv.c:386: tcpip_poll_udp(resolv_conn);
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	_tcpip_poll_udp
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00128$
00125$:
;	../contiki-sensinode/core/net/resolv.c:389: } else if(ev == EVENT_NEW_SERVER) {
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	jnz	00122$
;	../contiki-sensinode/core/net/resolv.c:390: if(resolv_conn != NULL) {
	mov	dptr,#_resolv_conn
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,r2
	orl	a,r3
	jz	00112$
;	../contiki-sensinode/core/net/resolv.c:391: uip_udp_remove(resolv_conn);
	mov	a,#0x04
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
00112$:
;	../contiki-sensinode/core/net/resolv.c:393: resolv_conn = udp_new((uip_ipaddr_t *)data, UIP_HTONS(53), NULL);
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	push	ar7
	push	ar6
	push	ar5
	clr	a
	push	acc
	push	acc
	push	acc
	push	acc
	mov	a,#0x35
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_udp_new
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dptr,#_resolv_conn
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	ljmp	00128$
00122$:
;	../contiki-sensinode/core/net/resolv.c:395: } else if(ev == tcpip_event) {
	mov	dptr,#_tcpip_event
	movx	a,@dptr
	mov	r4,a
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	cjne	a,ar4,00188$
	sjmp	00189$
00188$:
	ljmp	00128$
00189$:
;	../contiki-sensinode/core/net/resolv.c:396: if(uip_udp_conn->rport == UIP_HTONS(53)) {
	mov	dptr,#_uip_udp_conn
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,#0x06
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
	cjne	r2,#0x00,00190$
	cjne	r3,#0x35,00190$
	sjmp	00191$
00190$:
	ljmp	00128$
00191$:
;	../contiki-sensinode/core/net/resolv.c:397: if(uip_poll()) {
	mov	dptr,#_uip_flags
	movx	a,@dptr
	mov	r4,a
	jnb	acc.3,00114$
;	../contiki-sensinode/core/net/resolv.c:398: check_entries();
	push	ar7
	push	ar6
	push	ar5
	lcall	_check_entries
	pop	ar5
	pop	ar6
	pop	ar7
00114$:
;	../contiki-sensinode/core/net/resolv.c:400: if(uip_newdata()) {
	mov	dptr,#_uip_flags
	movx	a,@dptr
	mov	r4,a
	jb	acc.1,00193$
	ljmp	00128$
00193$:
;	../contiki-sensinode/core/net/resolv.c:401: newdata();
	push	ar7
	push	ar6
	push	ar5
	lcall	_newdata
	pop	ar5
	pop	ar6
	pop	ar7
	ljmp	00128$
;	../contiki-sensinode/core/net/resolv.c:407: PROCESS_END();
00130$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	mov	dpl,#0x03
00133$:
	dec	sp
	dec	sp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'resolv_query'
;------------------------------------------------------------
;name                      Allocated to stack - sp -5
;nameptr                   Allocated to stack - sp -2
;sloc0                     Allocated to stack - sp +1
;i                         Allocated with name '_resolv_query_i_1_167'
;lseq                      Allocated with name '_resolv_query_lseq_1_167'
;lseqi                     Allocated with name '_resolv_query_lseqi_1_167'
;------------------------------------------------------------
;	../contiki-sensinode/core/net/resolv.c:417: resolv_query(const char *name)
;	-----------------------------------------
;	 function resolv_query
;	-----------------------------------------
_resolv_query:
	push	dpl
	push	dph
	push	b
	inc	sp
	inc	sp
	inc	sp
;	../contiki-sensinode/core/net/resolv.c:423: lseq = lseqi = 0;
	mov	dptr,#_resolv_query_lseqi_1_167
	clr	a
	movx	@dptr,a
	mov	dptr,#_resolv_query_lseq_1_167
	movx	@dptr,a
;	../contiki-sensinode/core/net/resolv.c:426: for(i = 0; i < RESOLV_ENTRIES; ++i) {
	mov	dptr,#_resolv_query_i_1_167
	movx	@dptr,a
00110$:
;	../contiki-sensinode/core/net/resolv.c:427: nameptr = &names[i];
	mov	dptr,#_resolv_query_i_1_167
	movx	a,@dptr
	mov	r4,a
	mov	b,#0x29
	mul	ab
	add	a,#_names
	mov	r2,a
	mov	a,#(_names >> 8)
	addc	a,b
	mov	r3,a
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,#0x00
;	../contiki-sensinode/core/net/resolv.c:428: if(nameptr->state == STATE_UNUSED) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	jz	00105$
;	../contiki-sensinode/core/net/resolv.c:431: if(seqno - nameptr->seqno > lseq) {
	push	ar4
	mov	dptr,#_seqno
	movx	a,@dptr
	mov	r6,a
	mov	r4,a
	mov	r5,#0x00
	mov	a,sp
	add	a,#0xfd
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
	mov	r3,a
	mov	r7,#0x00
	mov	a,r4
	clr	c
	subb	a,r3
	mov	r4,a
	mov	a,r5
	subb	a,r7
	mov	r5,a
	mov	dptr,#_resolv_query_lseq_1_167
	movx	a,@dptr
	mov	r7,a
	mov	r3,#0x00
	clr	c
	mov	a,r7
	subb	a,r4
	mov	a,r3
	xrl	a,#0x80
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
	pop	ar4
	jnc	00111$
;	../contiki-sensinode/core/net/resolv.c:432: lseq = seqno - nameptr->seqno;
	mov	dptr,#_resolv_query_lseq_1_167
	mov	a,r6
	clr	c
	subb	a,r2
	movx	@dptr,a
;	../contiki-sensinode/core/net/resolv.c:433: lseqi = i;
	mov	dptr,#_resolv_query_lseqi_1_167
	mov	a,r4
	movx	@dptr,a
00111$:
;	../contiki-sensinode/core/net/resolv.c:426: for(i = 0; i < RESOLV_ENTRIES; ++i) {
	mov	dptr,#_resolv_query_i_1_167
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x04,00131$
00131$:
	jnc	00132$
	ljmp	00110$
00132$:
00105$:
;	../contiki-sensinode/core/net/resolv.c:437: if(i == RESOLV_ENTRIES) {
	mov	dptr,#_resolv_query_i_1_167
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x04,00107$
;	../contiki-sensinode/core/net/resolv.c:438: i = lseqi;
	mov	dptr,#_resolv_query_lseqi_1_167
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_resolv_query_i_1_167
	movx	@dptr,a
;	../contiki-sensinode/core/net/resolv.c:439: nameptr = &names[i];
	mov	a,r7
	mov	b,#0x29
	mul	ab
	add	a,#_names
	mov	r6,a
	mov	a,#(_names >> 8)
	addc	a,b
	mov	r7,a
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	inc	r0
	mov	@r0,#0x00
00107$:
;	../contiki-sensinode/core/net/resolv.c:442: strncpy(nameptr->name, name, sizeof(nameptr->name));
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
	mov	a,#0x20
	push	acc
	clr	a
	push	acc
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
	lcall	_strncpy
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	../contiki-sensinode/core/net/resolv.c:443: nameptr->state = STATE_NEW;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,#0x01
	lcall	__gptrput
;	../contiki-sensinode/core/net/resolv.c:444: nameptr->seqno = seqno;
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
	mov	dptr,#_seqno
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
;	../contiki-sensinode/core/net/resolv.c:445: ++seqno;
	mov	dptr,#_seqno
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
;	../contiki-sensinode/core/net/resolv.c:447: if(resolv_conn != NULL) {
	mov	dptr,#_resolv_conn
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r5
	orl	a,r6
	jz	00112$
;	../contiki-sensinode/core/net/resolv.c:448: tcpip_poll_udp(resolv_conn);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_tcpip_poll_udp
00112$:
	mov	a,sp
	add	a,#0xFA
	mov	sp,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'resolv_lookup'
;------------------------------------------------------------
;name                      Allocated to stack - sp -2
;nameptr                   Allocated to registers r3 r2 r4 
;i                         Allocated with name '_resolv_lookup_i_1_174'
;------------------------------------------------------------
;	../contiki-sensinode/core/net/resolv.c:466: resolv_lookup(const char *name)
;	-----------------------------------------
;	 function resolv_lookup
;	-----------------------------------------
_resolv_lookup:
	push	dpl
	push	dph
	push	b
;	../contiki-sensinode/core/net/resolv.c:473: for(i = 0; i < RESOLV_ENTRIES; ++i) {
	mov	dptr,#_resolv_lookup_i_1_174
	clr	a
	movx	@dptr,a
00105$:
;	../contiki-sensinode/core/net/resolv.c:474: nameptr = &names[i];
	mov	dptr,#_resolv_lookup_i_1_174
	movx	a,@dptr
	mov	b,#0x29
	mul	ab
	add	a,#_names
	mov	r3,a
	mov	a,#(_names >> 8)
	addc	a,b
	mov	r2,a
	mov	r4,#0x00
;	../contiki-sensinode/core/net/resolv.c:475: if(nameptr->state == STATE_DONE &&
	mov	dpl,r3
	mov	dph,r2
	mov	b,r4
	lcall	__gptrget
	mov	r7,a
	cjne	r7,#0x03,00106$
;	../contiki-sensinode/core/net/resolv.c:476: strcmp(name, nameptr->name) == 0) {
	mov	a,#0x05
	add	a,r3
	mov	r5,a
	clr	a
	addc	a,r2
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
	lcall	_strcmp
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
	jnz	00106$
;	../contiki-sensinode/core/net/resolv.c:477: return &nameptr->ipaddr;
	mov	a,#0x25
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r2
	mov	r2,a
	mov	dpl,r3
	mov	dph,r2
	mov	b,r4
	sjmp	00107$
00106$:
;	../contiki-sensinode/core/net/resolv.c:473: for(i = 0; i < RESOLV_ENTRIES; ++i) {
	mov	dptr,#_resolv_lookup_i_1_174
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x04,00124$
00124$:
	jnc	00125$
	ljmp	00105$
00125$:
;	../contiki-sensinode/core/net/resolv.c:480: return NULL;
	mov	dptr,#0x0000
	mov	b,#0x00
00107$:
	dec	sp
	dec	sp
	dec	sp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'resolv_getserver'
;------------------------------------------------------------
;	../contiki-sensinode/core/net/resolv.c:492: resolv_getserver(void)
;	-----------------------------------------
;	 function resolv_getserver
;	-----------------------------------------
_resolv_getserver:
;	../contiki-sensinode/core/net/resolv.c:494: if(resolv_conn == NULL) {
	mov	dptr,#_resolv_conn
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r5
	orl	a,r6
;	../contiki-sensinode/core/net/resolv.c:495: return NULL;
	jnz	00102$
	mov	dptr,#0x0000
	mov	b,a
	ret
00102$:
;	../contiki-sensinode/core/net/resolv.c:497: return &resolv_conn->ripaddr;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'resolv_conf'
;------------------------------------------------------------
;dnsserver                 Allocated to registers r5 r6 r7 
;server                    Allocated with name '_resolv_conf_server_1_181'
;------------------------------------------------------------
;	../contiki-sensinode/core/net/resolv.c:508: resolv_conf(const uip_ipaddr_t *dnsserver)
;	-----------------------------------------
;	 function resolv_conf
;	-----------------------------------------
_resolv_conf:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../contiki-sensinode/core/net/resolv.c:511: uip_ipaddr_copy(&server, dnsserver);
	mov	a,#0x04
	push	acc
	clr	a
	push	acc
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#_resolv_conf_server_1_181
	mov	b,#0x00
	lcall	_memcpy
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	../contiki-sensinode/core/net/resolv.c:512: process_post(&resolv_process, EVENT_NEW_SERVER, &server);
	mov	a,#_resolv_conf_server_1_181
	push	acc
	mov	a,#(_resolv_conf_server_1_181 >> 8)
	push	acc
	clr	a
	push	acc
	push	acc
	mov	dptr,#_resolv_process
	mov	b,#0x00
	lcall	_process_post
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'resolv_found'
;------------------------------------------------------------
;ipaddr                    Allocated to stack - sp -4
;name                      Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../contiki-sensinode/core/net/resolv.c:527: resolv_found(char *name, uip_ipaddr_t *ipaddr)
;	-----------------------------------------
;	 function resolv_found
;	-----------------------------------------
_resolv_found:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../contiki-sensinode/core/net/resolv.c:529: process_post(PROCESS_BROADCAST, resolv_event_found, name);
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#_resolv_event_found
	movx	a,@dptr
	push	acc
	mov	dptr,#0x0000
	mov	b,#0x00
	lcall	_process_post
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
__xinit__resolv_conn:
; generic printIvalPtr
	.byte #0x00,#0x00,#0x00
__xinit__resolv_process:
; generic printIvalPtr
	.byte #0x00,#0x00,#0x00
	.byte _process_thread_resolv_process,(_process_thread_resolv_process >> 8)
	.byte #0x00,#0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.area CABS    (ABS,CODE)
