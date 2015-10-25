;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.4.0 #8981 (Oct 24 2015) (Linux)
; This file was generated Sun Oct 25 01:52:22 2015
;--------------------------------------------------------
	.module usb_serial
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _usb_serial_init
	.globl _usb_serial_set_input
	.globl _usb_serial_writeb
	.globl _usb_serial_flush
	.globl _usb_class_get_string_descriptor
	.globl _usb_cdc_acm_setup
	.globl _usb_get_ep_events
	.globl _usb_get_global_events
	.globl _usb_set_global_event_process
	.globl _usb_set_ep_event_process
	.globl _usb_submit_xmit_buffer
	.globl _usb_submit_recv_buffer
	.globl _usb_setup_bulk_endpoint
	.globl _usb_setup
	.globl _process_start
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
	.globl _usb_serial_process
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
_data_rx_urb:
	.ds 14
_data_tx_urb:
	.ds 14
_usb_rx_data:
	.ds 64
_usb_tx_data:
	.ds 64
_input_handler:
	.ds 2
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_string_serial_nr:
	.ds 34
_enabled:
	.ds 1
_buffered_data:
	.ds 1
_usb_serial_process::
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
;Allocation info for local variables in function 'usb_class_get_string_descriptor'
;------------------------------------------------------------
;string                    Allocated to stack - sp -2
;lang                      Allocated to registers 
;------------------------------------------------------------
;	../contiki-sensinode/platform/cc2530dk/dev/usb-serial.c:110: usb_class_get_string_descriptor(uint16_t lang, uint8_t string)
;	-----------------------------------------
;	 function usb_class_get_string_descriptor
;	-----------------------------------------
_usb_class_get_string_descriptor:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	../contiki-sensinode/platform/cc2530dk/dev/usb-serial.c:112: switch (string) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,@r0
	add	a,#0xff - 0x03
	jc	00105$
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,@r0
	add	a,@r0
	add	a,@r0
	mov	dptr,#00113$
	jmp	@a+dptr
00113$:
	ljmp	00101$
	ljmp	00102$
	ljmp	00103$
	ljmp	00104$
;	../contiki-sensinode/platform/cc2530dk/dev/usb-serial.c:113: case 0:
00101$:
;	../contiki-sensinode/platform/cc2530dk/dev/usb-serial.c:114: return (uint8_t *)&lang_id;
	mov	dptr,#_lang_id
	mov	b,#0x80
;	../contiki-sensinode/platform/cc2530dk/dev/usb-serial.c:115: case 1:
	ret
00102$:
;	../contiki-sensinode/platform/cc2530dk/dev/usb-serial.c:116: return (uint8_t *)&string_manufacturer;
	mov	dptr,#_string_manufacturer
	mov	b,#0x80
;	../contiki-sensinode/platform/cc2530dk/dev/usb-serial.c:117: case 2:
	ret
00103$:
;	../contiki-sensinode/platform/cc2530dk/dev/usb-serial.c:118: return (uint8_t *)&string_product;
	mov	dptr,#_string_product
	mov	b,#0x80
;	../contiki-sensinode/platform/cc2530dk/dev/usb-serial.c:119: case 3:
	ret
00104$:
;	../contiki-sensinode/platform/cc2530dk/dev/usb-serial.c:120: return (uint8_t *)&string_serial_nr;
	mov	dptr,#_string_serial_nr
	mov	b,#0x00
;	../contiki-sensinode/platform/cc2530dk/dev/usb-serial.c:121: default:
	ret
00105$:
;	../contiki-sensinode/platform/cc2530dk/dev/usb-serial.c:122: return NULL;
	mov	dptr,#0x0000
	mov	b,#0x00
;	../contiki-sensinode/platform/cc2530dk/dev/usb-serial.c:123: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'set_serial_number'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;ieee                      Allocated to registers 
;lown                      Allocated to registers r6 
;highn                     Allocated to registers r5 
;c                         Allocated to registers r6 
;------------------------------------------------------------
;	../contiki-sensinode/platform/cc2530dk/dev/usb-serial.c:127: set_serial_number(void)
;	-----------------------------------------
;	 function set_serial_number
;	-----------------------------------------
_set_serial_number:
;	../contiki-sensinode/platform/cc2530dk/dev/usb-serial.c:130: uint8_t *ieee = &X_IEEE_ADDR;
;	../contiki-sensinode/platform/cc2530dk/dev/usb-serial.c:134: for(i = 0; i < 8; i++) {
	mov	r7,#0x00
00102$:
;	../contiki-sensinode/platform/cc2530dk/dev/usb-serial.c:135: lown = ieee[i] & 0x0F;
	mov	a,r7
	add	a,#_X_IEEE_ADDR
	mov	r4,a
	clr	a
	addc	a,#(_X_IEEE_ADDR >> 8)
	mov	r5,a
	mov	r6,#0x00
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r4,a
	mov	a,#0x0F
	anl	a,r4
	mov	r6,a
;	../contiki-sensinode/platform/cc2530dk/dev/usb-serial.c:136: highn = ieee[i] >> 4;
	mov	a,r4
	swap	a
	anl	a,#0x0F
	mov	r5,a
;	../contiki-sensinode/platform/cc2530dk/dev/usb-serial.c:137: c = lown > 9 ? 'A' + lown - 0xA : lown + '0';
	mov	a,r6
	add	a,#0xff - 0x09
	jnc	00106$
	mov	ar4,r6
	mov	a,#0x37
	add	a,r4
	mov	r4,a
	sjmp	00107$
00106$:
	mov	a,#0x30
	add	a,r6
	mov	r4,a
00107$:
	mov	ar6,r4
;	../contiki-sensinode/platform/cc2530dk/dev/usb-serial.c:138: string_serial_nr.string[14 - i * 2 + 1] = c;
	mov	a,r7
	add	a,r7
	mov	r4,a
	mov	a,#0x0F
	clr	c
	subb	a,r4
	add	a,acc
	add	a,#(_string_serial_nr + 0x0002)
	mov	r4,a
	clr	a
	addc	a,#((_string_serial_nr + 0x0002) >> 8)
	mov	r3,a
	push	ar7
	mov	ar2,r6
	mov	r7,#0x00
	mov	dpl,r4
	mov	dph,r3
	mov	a,r2
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../contiki-sensinode/platform/cc2530dk/dev/usb-serial.c:139: c = highn > 9 ? 'A' + highn - 0xA : highn + '0';
	clr	c
	mov	a,#0x09
	subb	a,r5
	pop	ar7
	jnc	00108$
	mov	ar4,r5
	mov	a,#0x37
	add	a,r4
	mov	r4,a
	sjmp	00109$
00108$:
	mov	a,#0x30
	add	a,r5
	mov	r4,a
00109$:
	mov	ar6,r4
;	../contiki-sensinode/platform/cc2530dk/dev/usb-serial.c:140: string_serial_nr.string[14 - i * 2] = c;
	mov	a,r7
	add	a,r7
	mov	r5,a
	mov	a,#0x0E
	clr	c
	subb	a,r5
	add	a,acc
	add	a,#(_string_serial_nr + 0x0002)
	mov	r5,a
	clr	a
	addc	a,#((_string_serial_nr + 0x0002) >> 8)
	mov	r4,a
	mov	r3,#0x00
	mov	dpl,r5
	mov	dph,r4
	mov	a,r6
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
;	../contiki-sensinode/platform/cc2530dk/dev/usb-serial.c:134: for(i = 0; i < 8; i++) {
	inc	r7
	cjne	r7,#0x08,00122$
00122$:
	jnc	00123$
	ljmp	00102$
00123$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'queue_rx_urb'
;------------------------------------------------------------
;	../contiki-sensinode/platform/cc2530dk/dev/usb-serial.c:145: queue_rx_urb(void)
;	-----------------------------------------
;	 function queue_rx_urb
;	-----------------------------------------
_queue_rx_urb:
;	../contiki-sensinode/platform/cc2530dk/dev/usb-serial.c:147: data_rx_urb.flags = USB_BUFFER_PACKET_END;    /* Make sure we are getting immediately the packet. */
	mov	dptr,#(_data_rx_urb + 0x0008)
	mov	a,#0x04
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	../contiki-sensinode/platform/cc2530dk/dev/usb-serial.c:148: data_rx_urb.flags |= USB_BUFFER_NOTIFY;
	mov	dptr,#(_data_rx_urb + 0x0008)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	ar6,#0x08
	mov	dptr,#(_data_rx_urb + 0x0008)
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../contiki-sensinode/platform/cc2530dk/dev/usb-serial.c:149: data_rx_urb.data = usb_rx_data;
	mov	dptr,#(_data_rx_urb + 0x0003)
	mov	a,#_usb_rx_data
	movx	@dptr,a
	mov	a,#(_usb_rx_data >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	../contiki-sensinode/platform/cc2530dk/dev/usb-serial.c:150: data_rx_urb.left = BUFFER_SIZE;
	mov	dptr,#(_data_rx_urb + 0x0006)
	mov	a,#0x40
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	../contiki-sensinode/platform/cc2530dk/dev/usb-serial.c:151: data_rx_urb.next = NULL;
	mov	dptr,#_data_rx_urb
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	../contiki-sensinode/platform/cc2530dk/dev/usb-serial.c:152: usb_submit_recv_buffer(EPOUT, &data_rx_urb);
	mov	a,#_data_rx_urb
	push	acc
	mov	a,#(_data_rx_urb >> 8)
	push	acc
	clr	a
	push	acc
	mov	dpl,#0x03
	lcall	_usb_submit_recv_buffer
	dec	sp
	dec	sp
	dec	sp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'do_work'
;------------------------------------------------------------
;events                    Allocated to registers r6 r7 
;len                       Allocated to registers r7 
;i                         Allocated to registers r6 
;------------------------------------------------------------
;	../contiki-sensinode/platform/cc2530dk/dev/usb-serial.c:156: do_work(void)
;	-----------------------------------------
;	 function do_work
;	-----------------------------------------
_do_work:
;	../contiki-sensinode/platform/cc2530dk/dev/usb-serial.c:160: events = usb_get_global_events();
	lcall	_usb_get_global_events
	mov	r6,dpl
	mov	r7,dph
;	../contiki-sensinode/platform/cc2530dk/dev/usb-serial.c:161: if(events & USB_EVENT_CONFIG) {
	mov	a,r6
	jnb	acc.0,00102$
;	../contiki-sensinode/platform/cc2530dk/dev/usb-serial.c:163: enabled = 1;
	mov	dptr,#_enabled
	mov	a,#0x01
	movx	@dptr,a
;	../contiki-sensinode/platform/cc2530dk/dev/usb-serial.c:164: usb_setup_bulk_endpoint(EPIN);
	mov	dpl,#0x82
	push	ar7
	push	ar6
	lcall	_usb_setup_bulk_endpoint
;	../contiki-sensinode/platform/cc2530dk/dev/usb-serial.c:165: usb_setup_bulk_endpoint(EPOUT);
	mov	dpl,#0x03
	lcall	_usb_setup_bulk_endpoint
;	../contiki-sensinode/platform/cc2530dk/dev/usb-serial.c:167: queue_rx_urb();
	lcall	_queue_rx_urb
	pop	ar6
	pop	ar7
00102$:
;	../contiki-sensinode/platform/cc2530dk/dev/usb-serial.c:169: if(events & USB_EVENT_RESET) {
	mov	a,r6
	jnb	acc.3,00104$
;	../contiki-sensinode/platform/cc2530dk/dev/usb-serial.c:170: enabled = 0;
	mov	dptr,#_enabled
	clr	a
	movx	@dptr,a
00104$:
;	../contiki-sensinode/platform/cc2530dk/dev/usb-serial.c:173: if(!enabled) {
	mov	dptr,#_enabled
	movx	a,@dptr
	mov	r5,a
	jnz	00106$
;	../contiki-sensinode/platform/cc2530dk/dev/usb-serial.c:174: return;
	ret
00106$:
;	../contiki-sensinode/platform/cc2530dk/dev/usb-serial.c:177: events = usb_get_ep_events(EPOUT);
	mov	dpl,#0x03
	lcall	_usb_get_ep_events
	mov	r4,dpl
	mov	r5,dph
	mov	ar6,r4
	mov	ar7,r5
;	../contiki-sensinode/platform/cc2530dk/dev/usb-serial.c:178: if((events & USB_EP_EVENT_NOTIFICATION)
	mov	a,r6
	jnb	acc.0,00118$
;	../contiki-sensinode/platform/cc2530dk/dev/usb-serial.c:179: && !(data_rx_urb.flags & USB_BUFFER_SUBMITTED)) {
	mov	dptr,#(_data_rx_urb + 0x0008)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r6
	jb	acc.0,00118$
;	../contiki-sensinode/platform/cc2530dk/dev/usb-serial.c:180: if(!(data_rx_urb.flags & USB_BUFFER_FAILED)) {
	mov	a,r6
	jb	acc.7,00111$
;	../contiki-sensinode/platform/cc2530dk/dev/usb-serial.c:181: if(input_handler) {
	mov	dptr,#_input_handler
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jz	00111$
;	../contiki-sensinode/platform/cc2530dk/dev/usb-serial.c:185: len = BUFFER_SIZE - data_rx_urb.left;
	mov	dptr,#(_data_rx_urb + 0x0006)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	a,#0x40
	clr	c
	subb	a,r6
	mov	r7,a
;	../contiki-sensinode/platform/cc2530dk/dev/usb-serial.c:186: for(i = 0; i < len; i++) {
	mov	r6,#0x00
00116$:
	clr	c
	mov	a,r6
	subb	a,r7
	jnc	00111$
;	../contiki-sensinode/platform/cc2530dk/dev/usb-serial.c:187: input_handler(usb_rx_data[i]);
	mov	a,r6
	add	a,#_usb_rx_data
	mov	dpl,a
	clr	a
	addc	a,#(_usb_rx_data >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	push	ar7
	push	ar6
	lcall	00156$
	sjmp	00157$
00156$:
	mov	dptr,#_input_handler
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	dpl,r5
	ret
00157$:
	pop	ar6
	pop	ar7
;	../contiki-sensinode/platform/cc2530dk/dev/usb-serial.c:186: for(i = 0; i < len; i++) {
	inc	r6
	sjmp	00116$
00111$:
;	../contiki-sensinode/platform/cc2530dk/dev/usb-serial.c:191: queue_rx_urb();
	ljmp	_queue_rx_urb
00118$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usb_serial_flush'
;------------------------------------------------------------
;	../contiki-sensinode/platform/cc2530dk/dev/usb-serial.c:197: usb_serial_flush()
;	-----------------------------------------
;	 function usb_serial_flush
;	-----------------------------------------
_usb_serial_flush:
;	../contiki-sensinode/platform/cc2530dk/dev/usb-serial.c:199: if(buffered_data == BUFFER_SIZE) {
	mov	dptr,#_buffered_data
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x40,00102$
;	../contiki-sensinode/platform/cc2530dk/dev/usb-serial.c:200: data_tx_urb.flags = 0;
	mov	dptr,#(_data_tx_urb + 0x0008)
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	sjmp	00103$
00102$:
;	../contiki-sensinode/platform/cc2530dk/dev/usb-serial.c:202: data_tx_urb.flags = USB_BUFFER_SHORT_END;
	mov	dptr,#(_data_tx_urb + 0x0008)
	mov	a,#0x02
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
00103$:
;	../contiki-sensinode/platform/cc2530dk/dev/usb-serial.c:204: data_tx_urb.flags |= USB_BUFFER_NOTIFY;
	mov	dptr,#(_data_tx_urb + 0x0008)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	ar6,#0x08
	mov	dptr,#(_data_tx_urb + 0x0008)
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../contiki-sensinode/platform/cc2530dk/dev/usb-serial.c:205: data_tx_urb.next = NULL;
	mov	dptr,#_data_tx_urb
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	../contiki-sensinode/platform/cc2530dk/dev/usb-serial.c:206: data_tx_urb.data = usb_tx_data;
	mov	dptr,#(_data_tx_urb + 0x0003)
	mov	a,#_usb_tx_data
	movx	@dptr,a
	mov	a,#(_usb_tx_data >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	../contiki-sensinode/platform/cc2530dk/dev/usb-serial.c:207: data_tx_urb.left = buffered_data;
	mov	dptr,#_buffered_data
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	dptr,#(_data_tx_urb + 0x0006)
	mov	a,r7
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
;	../contiki-sensinode/platform/cc2530dk/dev/usb-serial.c:208: buffered_data = 0;
	mov	dptr,#_buffered_data
	movx	@dptr,a
;	../contiki-sensinode/platform/cc2530dk/dev/usb-serial.c:209: usb_submit_xmit_buffer(EPIN, &data_tx_urb);
	mov	a,#_data_tx_urb
	push	acc
	mov	a,#(_data_tx_urb >> 8)
	push	acc
	clr	a
	push	acc
	mov	dpl,#0x82
	lcall	_usb_submit_xmit_buffer
	dec	sp
	dec	sp
	dec	sp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usb_serial_writeb'
;------------------------------------------------------------
;b                         Allocated to registers r7 
;------------------------------------------------------------
;	../contiki-sensinode/platform/cc2530dk/dev/usb-serial.c:213: usb_serial_writeb(uint8_t b)
;	-----------------------------------------
;	 function usb_serial_writeb
;	-----------------------------------------
_usb_serial_writeb:
	mov	r7,dpl
;	../contiki-sensinode/platform/cc2530dk/dev/usb-serial.c:215: if(!enabled) {
	mov	dptr,#_enabled
	movx	a,@dptr
	mov	r6,a
	jnz	00102$
;	../contiki-sensinode/platform/cc2530dk/dev/usb-serial.c:216: buffered_data = 0;
	mov	dptr,#_buffered_data
	clr	a
	movx	@dptr,a
;	../contiki-sensinode/platform/cc2530dk/dev/usb-serial.c:217: return;
	ret
00102$:
;	../contiki-sensinode/platform/cc2530dk/dev/usb-serial.c:220: usb_tx_data[buffered_data] = b;
	mov	dptr,#_buffered_data
	movx	a,@dptr
	add	a,#_usb_tx_data
	mov	dpl,a
	clr	a
	addc	a,#(_usb_tx_data >> 8)
	mov	dph,a
	mov	a,r7
	movx	@dptr,a
;	../contiki-sensinode/platform/cc2530dk/dev/usb-serial.c:221: buffered_data++;
	mov	dptr,#_buffered_data
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
;	../contiki-sensinode/platform/cc2530dk/dev/usb-serial.c:223: if(buffered_data == BUFFER_SIZE || b == SLIP_END || b == '\n') {
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x40,00119$
	sjmp	00103$
00119$:
	cjne	r7,#0xC0,00120$
	sjmp	00103$
00120$:
	cjne	r7,#0x0A,00107$
00103$:
;	../contiki-sensinode/platform/cc2530dk/dev/usb-serial.c:224: usb_serial_flush();
	ljmp	_usb_serial_flush
00107$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'process_thread_usb_serial_process'
;------------------------------------------------------------
;ev                        Allocated to stack - sp -2
;data                      Allocated to stack - sp -5
;process_pt                Allocated to registers r5 r6 r7 
;PT_YIELD_FLAG             Allocated to registers r4 
;------------------------------------------------------------
;	../contiki-sensinode/platform/cc2530dk/dev/usb-serial.c:247: PROCESS_THREAD(usb_serial_process, ev, data)
;	-----------------------------------------
;	 function process_thread_usb_serial_process
;	-----------------------------------------
_process_thread_usb_serial_process:
;	../contiki-sensinode/platform/cc2530dk/dev/usb-serial.c:250: PROCESS_BEGIN();
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	r4,#0x01
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	cjne	r2,#0x00,00136$
	cjne	r3,#0x00,00136$
	sjmp	00101$
00136$:
	cjne	r2,#0x05,00137$
	cjne	r3,#0x01,00137$
	sjmp	00102$
00137$:
	ljmp	00115$
00101$:
;	../contiki-sensinode/platform/cc2530dk/dev/usb-serial.c:252: set_serial_number();
	push	ar7
	push	ar6
	push	ar5
	lcall	_set_serial_number
;	../contiki-sensinode/platform/cc2530dk/dev/usb-serial.c:254: usb_setup();
	lcall	_usb_setup
;	../contiki-sensinode/platform/cc2530dk/dev/usb-serial.c:255: usb_cdc_acm_setup();
	lcall	_usb_cdc_acm_setup
;	../contiki-sensinode/platform/cc2530dk/dev/usb-serial.c:256: usb_set_global_event_process(&usb_serial_process);
	mov	dptr,#_usb_serial_process
	mov	b,#0x00
	lcall	_usb_set_global_event_process
;	../contiki-sensinode/platform/cc2530dk/dev/usb-serial.c:257: usb_set_ep_event_process(EPIN, &usb_serial_process);
	mov	a,#_usb_serial_process
	push	acc
	mov	a,#(_usb_serial_process >> 8)
	push	acc
	clr	a
	push	acc
	mov	dpl,#0x82
	lcall	_usb_set_ep_event_process
	dec	sp
	dec	sp
	dec	sp
;	../contiki-sensinode/platform/cc2530dk/dev/usb-serial.c:258: usb_set_ep_event_process(EPOUT, &usb_serial_process);
	mov	a,#_usb_serial_process
	push	acc
	mov	a,#(_usb_serial_process >> 8)
	push	acc
	clr	a
	push	acc
	mov	dpl,#0x03
	lcall	_usb_set_ep_event_process
	dec	sp
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
;	../contiki-sensinode/platform/cc2530dk/dev/usb-serial.c:260: while(1) {
00113$:
;	../contiki-sensinode/platform/cc2530dk/dev/usb-serial.c:261: PROCESS_WAIT_EVENT();
	mov	r4,#0x00
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x05
	lcall	__gptrput
	inc	dptr
	mov	a,#0x01
	lcall	__gptrput
00102$:
	mov	a,r4
	jnz	00106$
	mov	dpl,#0x01
	ret
00106$:
;	../contiki-sensinode/platform/cc2530dk/dev/usb-serial.c:262: if(ev == PROCESS_EVENT_EXIT) {
	mov	r0,sp
	dec	r0
	dec	r0
	cjne	@r0,#0x83,00139$
	sjmp	00115$
00139$:
;	../contiki-sensinode/platform/cc2530dk/dev/usb-serial.c:265: if(ev == PROCESS_EVENT_POLL) {
	mov	r0,sp
	dec	r0
	dec	r0
	cjne	@r0,#0x82,00113$
;	../contiki-sensinode/platform/cc2530dk/dev/usb-serial.c:266: do_work();
	push	ar7
	push	ar6
	push	ar5
	lcall	_do_work
	pop	ar5
	pop	ar6
	pop	ar7
;	../contiki-sensinode/platform/cc2530dk/dev/usb-serial.c:270: PROCESS_END();
	sjmp	00113$
00115$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	mov	dpl,#0x03
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usb_serial_set_input'
;------------------------------------------------------------
;input                     Allocated to registers r6 r7 
;------------------------------------------------------------
;	../contiki-sensinode/platform/cc2530dk/dev/usb-serial.c:274: usb_serial_set_input(int (* input)(unsigned char c))
;	-----------------------------------------
;	 function usb_serial_set_input
;	-----------------------------------------
_usb_serial_set_input:
	mov	r6,dpl
	mov	r7,dph
;	../contiki-sensinode/platform/cc2530dk/dev/usb-serial.c:276: input_handler = input;
	mov	dptr,#_input_handler
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usb_serial_init'
;------------------------------------------------------------
;	../contiki-sensinode/platform/cc2530dk/dev/usb-serial.c:280: usb_serial_init()
;	-----------------------------------------
;	 function usb_serial_init
;	-----------------------------------------
_usb_serial_init:
;	../contiki-sensinode/platform/cc2530dk/dev/usb-serial.c:282: process_start(&usb_serial_process, NULL);
	clr	a
	push	acc
	push	acc
	push	acc
	mov	dptr,#_usb_serial_process
	mov	b,#0x00
	lcall	_process_start
	dec	sp
	dec	sp
	dec	sp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
_lang_id:
	.db #0x04	; 4
	.db #0x03	; 3
	.byte #0x09,#0x04	; 1033
_string_manufacturer:
	.db #0x16	; 22
	.db #0x03	; 3
	.byte #0x45,#0x00	; 69
	.byte #0x50,#0x00	; 80
	.byte #0x46,#0x00	; 70
	.byte #0x4C,#0x00	; 76
	.byte #0x2D,#0x00	; 45
	.byte #0x4C,#0x00	; 76
	.byte #0x53,#0x00	; 83
	.byte #0x52,#0x00	; 82
	.byte #0x4F,#0x00	; 79
	.byte #0x31,#0x00	; 49
_string_product:
	.db #0x26	; 38
	.db #0x03	; 3
	.byte #0x43,#0x00	; 67
	.byte #0x43,#0x00	; 67
	.byte #0x32,#0x00	; 50
	.byte #0x35,#0x00	; 53
	.byte #0x33,#0x00	; 51
	.byte #0x31,#0x00	; 49
	.byte #0x20,#0x00	; 32
	.byte #0x44,#0x00	; 68
	.byte #0x65,#0x00	; 101
	.byte #0x76,#0x00	; 118
	.byte #0x65,#0x00	; 101
	.byte #0x6C,#0x00	; 108
	.byte #0x2D,#0x00	; 45
	.byte #0x42,#0x00	; 66
	.byte #0x6F,#0x00	; 111
	.byte #0x61,#0x00	; 97
	.byte #0x72,#0x00	; 114
	.byte #0x64,#0x00	; 100
	.area XINIT   (CODE)
__xinit__string_serial_nr:
	.db #0x22	; 34
	.db #0x03	; 3
	.byte #0x41,#0x00	; 65
	.byte #0x41,#0x00	; 65
	.byte #0x41,#0x00	; 65
	.byte #0x41,#0x00	; 65
	.byte #0x41,#0x00	; 65
	.byte #0x41,#0x00	; 65
	.byte #0x41,#0x00	; 65
	.byte #0x41,#0x00	; 65
	.byte #0x41,#0x00	; 65
	.byte #0x41,#0x00	; 65
	.byte #0x41,#0x00	; 65
	.byte #0x41,#0x00	; 65
	.byte #0x41,#0x00	; 65
	.byte #0x41,#0x00	; 65
	.byte #0x41,#0x00	; 65
	.byte #0x41,#0x00	; 65
__xinit__enabled:
	.db #0x00	; 0
__xinit__buffered_data:
	.db #0x00	; 0
__xinit__usb_serial_process:
; generic printIvalPtr
	.byte #0x00,#0x00,#0x00
	.byte _process_thread_usb_serial_process,(_process_thread_usb_serial_process >> 8)
	.byte #0x00,#0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.area CABS    (ABS,CODE)
