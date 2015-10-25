;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.4.0 #8981 (Oct 24 2015) (Linux)
; This file was generated Sun Oct 25 01:52:24 2015
;--------------------------------------------------------
	.module usb_arch
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _usb_arch_setup_iso_endpoint
	.globl _cc253x_p2_register_handler
	.globl _usb_disable_endpoint
	.globl _process_poll
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
	.globl _event_process
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
	.globl _usb_set_ep_event_process
	.globl _usb_arch_set_global_event_process
	.globl _usb_arch_get_global_events
	.globl _usb_get_ep_events
	.globl _usb_arch_setup
	.globl _usb_submit_recv_buffer
	.globl _usb_submit_xmit_buffer
	.globl _usb_arch_setup_control_endpoint
	.globl _usb_arch_setup_bulk_endpoint
	.globl _usb_arch_setup_interrupt_endpoint
	.globl _usb_arch_disable_endpoint
	.globl _usb_arch_discard_all_buffers
	.globl _usb_arch_control_stall
	.globl _usb_arch_halt_endpoint
	.globl _usb_arch_set_configuration
	.globl _usb_arch_get_ep_status
	.globl _usb_arch_set_address
	.globl _usb_arch_send_pending
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
_ep0status:
	.ds 1
_usb_endpoints:
	.ds 52
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_usb_irq_handler:
	.ds 5
_event_process::
	.ds 3
_events:
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
;Allocation info for local variables in function 'notify_process'
;------------------------------------------------------------
;e                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:186: notify_process(unsigned int e)
;	-----------------------------------------
;	 function notify_process
;	-----------------------------------------
_notify_process:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r6,dpl
	mov	r7,dph
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:188: events |= e;
	mov	dptr,#_events
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_events
	mov	a,r6
	orl	a,r4
	movx	@dptr,a
	mov	a,r7
	orl	a,r5
	inc	dptr
	movx	@dptr,a
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:189: if(event_process) {
	mov	dptr,#_event_process
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
	jz	00103$
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:190: process_poll(event_process);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	ljmp	_process_poll
00103$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'notify_ep_process'
;------------------------------------------------------------
;e                         Allocated to stack - sp -6
;ep                        Allocated to stack - sp -2
;------------------------------------------------------------
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:195: notify_ep_process(USBEndpoint * ep, unsigned int e)
;	-----------------------------------------
;	 function notify_ep_process
;	-----------------------------------------
_notify_ep_process:
	push	dpl
	push	dph
	push	b
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:197: ep->events |= e;
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
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,@r0
	orl	ar6,a
	inc	r0
	mov	a,@r0
	orl	ar7,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:198: if(ep->event_process) {
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
	mov	a,r5
	orl	a,r6
	jz	00103$
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:199: process_poll(ep->event_process);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_process_poll
00103$:
	dec	sp
	dec	sp
	dec	sp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usb_set_ep_event_process'
;------------------------------------------------------------
;p                         Allocated to stack - sp -4
;addr                      Allocated to registers r7 
;ep                        Allocated to registers r6 r7 r5 
;------------------------------------------------------------
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:205: usb_set_ep_event_process(unsigned char addr, struct process *p)
;	-----------------------------------------
;	 function usb_set_ep_event_process
;	-----------------------------------------
_usb_set_ep_event_process:
	mov	r7,dpl
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:207: USBEndpoint *ep = EP_STRUCT(addr);
	mov	a,#0x7F
	anl	a,r7
	mov	b,#0x0D
	mul	ab
	add	a,#_usb_endpoints
	mov	r6,a
	mov	a,#(_usb_endpoints >> 8)
	addc	a,b
	mov	r7,a
	mov	r5,#0x00
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:209: ep->event_process = p;
	mov	a,#0x06
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
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
;------------------------------------------------------------
;Allocation info for local variables in function 'usb_arch_set_global_event_process'
;------------------------------------------------------------
;p                         Allocated to registers 
;------------------------------------------------------------
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:214: usb_arch_set_global_event_process(struct process *p)
;	-----------------------------------------
;	 function usb_arch_set_global_event_process
;	-----------------------------------------
_usb_arch_set_global_event_process:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_event_process
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:216: event_process = p;
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usb_arch_get_global_events'
;------------------------------------------------------------
;flag                      Allocated to registers r7 
;e                         Allocated to stack - sp -1
;------------------------------------------------------------
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:220: usb_arch_get_global_events(void)
;	-----------------------------------------
;	 function usb_arch_get_global_events
;	-----------------------------------------
_usb_arch_get_global_events:
	inc	sp
	inc	sp
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:225: usb_irq_disable(flag);
	mov	a,#0x02
	anl	a,_IEN2
	mov	r7,a
	mov	r6,_IEN2
	mov	a,#0xFD
	anl	a,r6
	mov	_IEN2,a
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:226: e = events;
	mov	dptr,#_events
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	r0,sp
	dec	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:227: events = 0;
	mov	dptr,#_events
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:228: usb_irq_enable(flag);
	mov	a,r7
	orl	_IEN2,a
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:230: return e;
	mov	r0,sp
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	dec	sp
	dec	sp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usb_get_ep_events'
;------------------------------------------------------------
;addr                      Allocated to registers r7 
;e                         Allocated to stack - sp -1
;flag                      Allocated to registers r4 
;ep                        Allocated to registers r6 r7 r5 
;------------------------------------------------------------
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:234: usb_get_ep_events(uint8_t addr)
;	-----------------------------------------
;	 function usb_get_ep_events
;	-----------------------------------------
_usb_get_ep_events:
	inc	sp
	inc	sp
	mov	r7,dpl
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:238: USBEndpoint *ep = EP_STRUCT(addr);
	mov	a,#0x7F
	anl	a,r7
	mov	b,#0x0D
	mul	ab
	add	a,#_usb_endpoints
	mov	r6,a
	mov	a,#(_usb_endpoints >> 8)
	addc	a,b
	mov	r7,a
	mov	r5,#0x00
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:240: usb_irq_disable(flag);
	mov	a,#0x02
	anl	a,_IEN2
	mov	r4,a
	mov	r3,_IEN2
	mov	a,#0xFD
	anl	a,r3
	mov	_IEN2,a
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:241: e = ep->events;
	mov	a,#0x09
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	mov	r0,sp
	dec	r0
	lcall	__gptrget
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:242: ep->events = 0;
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:243: usb_irq_enable(flag);
	mov	a,r4
	orl	_IEN2,a
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:245: return e;
	mov	r0,sp
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	dec	sp
	dec	sp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'read_hw_buffer_dma'
;------------------------------------------------------------
;th                        Allocated to stack - sp -2
;xptr                      Allocated to stack - sp -4
;len                       Allocated to stack - sp -6
;tl                        Allocated to registers r7 
;------------------------------------------------------------
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:252: read_hw_buffer_dma(uint8_t tl, uint8_t th, uint8_t __xdata * xptr,
;	-----------------------------------------
;	 function read_hw_buffer_dma
;	-----------------------------------------
_read_hw_buffer_dma:
	mov	r7,dpl
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:255: dma_conf[DMA_USB_CHANNEL].src_h = ((uint16_t) xptr) >> 8;
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	mov	ar4,r6
	mov	dptr,#_dma_conf
	mov	a,r4
	movx	@dptr,a
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:256: dma_conf[DMA_USB_CHANNEL].src_l = ((uint16_t) xptr) & 0xFF;
	mov	dptr,#(_dma_conf + 0x0001)
	mov	a,r5
	movx	@dptr,a
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:257: dma_conf[DMA_USB_CHANNEL].dst_h = th;
	mov	dptr,#(_dma_conf + 0x0002)
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,@r0
	movx	@dptr,a
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:258: dma_conf[DMA_USB_CHANNEL].dst_l = tl;
	mov	dptr,#(_dma_conf + 0x0003)
	mov	a,r7
	movx	@dptr,a
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:261: dma_conf[DMA_USB_CHANNEL].len_h = len >> 8;
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	inc	r0
	mov	ar7,@r0
	mov	dptr,#(_dma_conf + 0x0004)
	mov	a,r7
	movx	@dptr,a
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:262: dma_conf[DMA_USB_CHANNEL].len_l = len & 0xFF;
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	ar6,@r0
	mov	r7,#0x00
	mov	dptr,#(_dma_conf + 0x0005)
	mov	a,r6
	movx	@dptr,a
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:263: dma_conf[DMA_USB_CHANNEL].wtt = DMA_T_NONE | DMA_BLOCK;
	mov	dptr,#(_dma_conf + 0x0006)
	mov	a,#0x20
	movx	@dptr,a
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:265: dma_conf[DMA_USB_CHANNEL].inc_prio =
	mov	dptr,#(_dma_conf + 0x0007)
	mov	a,#0x12
	movx	@dptr,a
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:268: DMA_ARM(DMA_USB_CHANNEL);
	orl	_DMAARM,#0x01
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:270: while(!(DMAARM & (1 << DMA_USB_CHANNEL)));
00101$:
	mov	a,_DMAARM
	mov	r7,a
	jnb	acc.0,00101$
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:272: DMA_TRIGGER(DMA_USB_CHANNEL);
	orl	_DMAREQ,#0x01
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:276: while(DMAARM & (1 << DMA_USB_CHANNEL));
00104$:
	mov	a,_DMAARM
	mov	r7,a
	jb	acc.0,00104$
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:278: DMAIRQ = ~(1 << DMA_USB_CHANNEL);
	mov	_DMAIRQ,#0xFE
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'write_hw_buffer_dma'
;------------------------------------------------------------
;fl                        Allocated to stack - sp -2
;fh                        Allocated to stack - sp -3
;len                       Allocated to stack - sp -5
;xptr                      Allocated to registers r6 r7 
;------------------------------------------------------------
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:281: write_hw_buffer_dma(uint8_t __xdata * xptr, uint8_t fl, uint8_t fh,
;	-----------------------------------------
;	 function write_hw_buffer_dma
;	-----------------------------------------
_write_hw_buffer_dma:
	mov	r6,dpl
	mov	r7,dph
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:284: dma_conf[DMA_USB_CHANNEL].src_h = fh;
	mov	dptr,#_dma_conf
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	movx	@dptr,a
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:285: dma_conf[DMA_USB_CHANNEL].src_l = fl;
	mov	dptr,#(_dma_conf + 0x0001)
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,@r0
	movx	@dptr,a
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:286: dma_conf[DMA_USB_CHANNEL].dst_h = ((uint16_t) xptr) >> 8;
	mov	ar5,r7
	mov	dptr,#(_dma_conf + 0x0002)
	mov	a,r5
	movx	@dptr,a
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:287: dma_conf[DMA_USB_CHANNEL].dst_l = ((uint16_t) xptr) & 0xFF;
	mov	dptr,#(_dma_conf + 0x0003)
	mov	a,r6
	movx	@dptr,a
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:290: dma_conf[DMA_USB_CHANNEL].len_h = len >> 8;
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	inc	r0
	mov	ar7,@r0
	mov	dptr,#(_dma_conf + 0x0004)
	mov	a,r7
	movx	@dptr,a
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:291: dma_conf[DMA_USB_CHANNEL].len_l = len & 0xFF;
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	ar6,@r0
	mov	r7,#0x00
	mov	dptr,#(_dma_conf + 0x0005)
	mov	a,r6
	movx	@dptr,a
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:292: dma_conf[DMA_USB_CHANNEL].wtt = DMA_T_NONE | DMA_BLOCK;
	mov	dptr,#(_dma_conf + 0x0006)
	mov	a,#0x20
	movx	@dptr,a
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:294: dma_conf[DMA_USB_CHANNEL].inc_prio =
	mov	dptr,#(_dma_conf + 0x0007)
	mov	a,#0x42
	movx	@dptr,a
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:297: DMA_ARM(DMA_USB_CHANNEL);
	orl	_DMAARM,#0x01
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:299: while(!(DMAARM & (1 << DMA_USB_CHANNEL)));
00101$:
	mov	a,_DMAARM
	mov	r7,a
	jnb	acc.0,00101$
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:301: DMA_TRIGGER(DMA_USB_CHANNEL);
	orl	_DMAREQ,#0x01
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:303: while(DMAARM & (1 << DMA_USB_CHANNEL));
00104$:
	mov	a,_DMAARM
	mov	r7,a
	jb	acc.0,00104$
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:306: DMAIRQ = ~(1 << DMA_USB_CHANNEL);
	mov	_DMAIRQ,#0xFE
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'read_hw_buffer'
;------------------------------------------------------------
;hw_ep                     Allocated to stack - sp -9
;len                       Allocated to stack - sp -11
;to                        Allocated to stack - sp -6
;from                      Allocated to stack - sp -1
;sloc0                     Allocated to stack - sp -3
;------------------------------------------------------------
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:311: read_hw_buffer(uint8_t * to, uint8_t hw_ep, unsigned int len)
;	-----------------------------------------
;	 function read_hw_buffer
;	-----------------------------------------
_read_hw_buffer:
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x04
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:313: __xdata uint8_t *from = &USBF0 + (hw_ep << 1);
	mov	sp,a
	add	a,#0xf7
	mov	r0,a
	mov	ar6,@r0
	clr	a
	xch	a,r6
	add	a,acc
	xch	a,r6
	rlc	a
	mov	r7,a
	mov	a,r6
	add	a,#_USBF0
	mov	r6,a
	mov	a,r7
	addc	a,#(_USBF0 >> 8)
	mov	r7,a
	mov	r0,sp
	dec	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:318: if(len > 8 && ((uint8_t *) & to)[2] == 0x0 /* x data pointer */ ) {
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	clr	c
	mov	a,#0x08
	subb	a,@r0
	clr	a
	inc	r0
	subb	a,@r0
	jnc	00112$
	mov	a,sp
	add	a,#0xFA
	mov	r5,a
	mov	r4,a
	add	a,#0x02
	mov	r1,a
	mov	a,@r1
	jnz	00112$
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:319: read_hw_buffer_dma(((uint8_t *) & to)[0], ((uint8_t *) & to)[1], from,
	mov	ar4,r5
	mov	a,r4
	inc	a
	mov	r1,a
	mov	ar4,@r1
	mov	ar1,r5
	mov	ar5,@r1
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	push	ar4
	mov	dpl,r5
	lcall	_read_hw_buffer_dma
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:321: return;
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:324: while(len--) {
	sjmp	00107$
00112$:
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	a,sp
	add	a,#0xfd
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
00104$:
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	dec	@r0
	cjne	@r0,#0xFF,00124$
	inc	r0
	dec	@r0
00124$:
	mov	a,r2
	orl	a,r7
	jz	00113$
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:325: *to++ = *from;
	mov	r0,sp
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrput
	inc	dptr
	mov	r3,dpl
	mov	r4,dph
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	sjmp	00104$
00113$:
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
00107$:
	mov	a,sp
	add	a,#0xF9
	mov	sp,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'write_hw_buffer'
;------------------------------------------------------------
;from                      Allocated to stack - sp -8
;len                       Allocated to stack - sp -10
;hw_ep                     Allocated to registers r7 
;to                        Allocated to stack - sp -1
;sloc0                     Allocated to stack - sp -3
;------------------------------------------------------------
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:330: write_hw_buffer(uint8_t hw_ep, uint8_t * from, unsigned int len)
;	-----------------------------------------
;	 function write_hw_buffer
;	-----------------------------------------
_write_hw_buffer:
	mov	a,sp
	add	a,#0x04
	mov	sp,a
	mov	r7,dpl
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:332: __xdata uint8_t *to = &USBF0 + (hw_ep << 1);
	clr	a
	xch	a,r7
	add	a,acc
	xch	a,r7
	rlc	a
	mov	r6,a
	mov	a,r7
	add	a,#_USBF0
	mov	r7,a
	mov	a,r6
	addc	a,#(_USBF0 >> 8)
	mov	r6,a
	mov	r0,sp
	dec	r0
	mov	@r0,ar7
	inc	r0
	mov	@r0,ar6
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:336: if(len > 8 && ((uint8_t *) & from)[2] == 0x0 /* x data pointer */ ) {
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	clr	c
	mov	a,#0x08
	subb	a,@r0
	clr	a
	inc	r0
	subb	a,@r0
	jnc	00112$
	mov	a,sp
	add	a,#0xF8
	mov	r5,a
	mov	r4,a
	add	a,#0x02
	mov	r1,a
	mov	a,@r1
	jnz	00112$
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:337: write_hw_buffer_dma(to, ((uint8_t *) & from)[0], ((uint8_t *) & from)[1],
	mov	ar4,r5
	mov	a,r4
	inc	a
	mov	r1,a
	mov	ar4,@r1
	mov	ar1,r5
	mov	ar5,@r1
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	push	ar4
	push	ar5
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	_write_hw_buffer_dma
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:339: return;
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:342: while(len--) {
	sjmp	00107$
00112$:
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	a,sp
	add	a,#0xfd
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
00104$:
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	dec	@r0
	cjne	@r0,#0xFF,00124$
	inc	r0
	dec	@r0
00124$:
	mov	a,r2
	orl	a,r7
	jz	00113$
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:343: *to = *from++;
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r7,a
	inc	dptr
	mov	r3,dpl
	mov	r4,dph
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	mov	r0,sp
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	mov	a,r7
	movx	@dptr,a
	sjmp	00104$
00113$:
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
00107$:
	mov	a,sp
	add	a,#0xFC
	mov	sp,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usb_arch_reset'
;------------------------------------------------------------
;e                         Allocated to registers r7 
;buffer                    Allocated to stack - sp -2
;------------------------------------------------------------
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:348: usb_arch_reset(void)
;	-----------------------------------------
;	 function usb_arch_reset
;	-----------------------------------------
_usb_arch_reset:
	inc	sp
	inc	sp
	inc	sp
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:352: for(e = 0; e < USB_MAX_ENDPOINTS; e++) {
	mov	r7,#0x00
00107$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:353: if(usb_endpoints[e].flags & USB_EP_FLAGS_ENABLED) {
	mov	a,r7
	mov	b,#0x0D
	mul	ab
	add	a,#_usb_endpoints
	mov	r5,a
	mov	a,#(_usb_endpoints >> 8)
	addc	a,b
	mov	r6,a
	mov	a,#0x02
	add	a,r5
	mov	r3,a
	clr	a
	addc	a,r6
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	movx	a,@dptr
	mov	r2,a
	jb	acc.2,00127$
	ljmp	00108$
00127$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:354: USBBuffer *buffer = usb_endpoints[e].buffer;
	mov	dpl,r5
	mov	dph,r6
	inc	dptr
	inc	dptr
	inc	dptr
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
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:356: usb_endpoints[e].flags = 0;
	mov	dpl,r3
	mov	dph,r4
	clr	a
	movx	@dptr,a
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:357: usb_disable_endpoint(e);
	mov	dpl,r7
	push	ar7
	lcall	_usb_disable_endpoint
	pop	ar7
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:358: while(buffer) {
00101$:
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00108$
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:359: buffer->flags &= ~USB_BUFFER_SUBMITTED;
	push	ar7
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	a,#0x08
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r3
	mov	dph,r4
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	anl	ar5,#0xFE
	mov	dpl,r3
	mov	dph,r4
	mov	b,r7
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:360: buffer = buffer->next;
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
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
	pop	ar7
	sjmp	00101$
00108$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:352: for(e = 0; e < USB_MAX_ENDPOINTS; e++) {
	inc	r7
	cjne	r7,#0x04,00129$
00129$:
	jnc	00130$
	ljmp	00107$
00130$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:364: usb_arch_setup_control_endpoint(0);
	mov	dpl,#0x00
	lcall	_usb_arch_setup_control_endpoint
	dec	sp
	dec	sp
	dec	sp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usb_arch_setup'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;------------------------------------------------------------
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:369: usb_arch_setup(void)
;	-----------------------------------------
;	 function usb_arch_setup
;	-----------------------------------------
_usb_arch_setup:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:374: USBCTRL = USBCTRL_USB_EN | USBCTRL_PLL_EN;
	mov	dptr,#_USBCTRL
	mov	a,#0x03
	movx	@dptr,a
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:377: while(!(USBCTRL & USBCTRL_PLL_LOCKED));
00101$:
	mov	dptr,#_USBCTRL
	movx	a,@dptr
	mov	r7,a
	jnb	acc.7,00101$
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:380: PORT_SET(USB_PULLUP_PORT, USB_PULLUP_PIN);
	setb	_P1_0
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:381: PORT_DIR_OUTPUT(USB_PULLUP_PORT, USB_PULLUP_PIN);
	orl	_P1DIR,#0x01
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:383: for(i = 0; i < USB_MAX_ENDPOINTS; i++) {
	mov	r7,#0x00
00114$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:384: usb_endpoints[i].flags = 0;
	mov	a,r7
	mov	b,#0x0D
	mul	ab
	add	a,#_usb_endpoints
	mov	r5,a
	mov	a,#(_usb_endpoints >> 8)
	addc	a,b
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	inc	dptr
	inc	dptr
	clr	a
	movx	@dptr,a
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:385: usb_endpoints[i].event_process = 0;
	mov	a,#0x06
	add	a,r5
	mov	dpl,a
	clr	a
	addc	a,r6
	mov	dph,a
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:383: for(i = 0; i < USB_MAX_ENDPOINTS; i++) {
	inc	r7
	cjne	r7,#0x04,00132$
00132$:
	jc	00114$
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:388: usb_arch_reset();
	lcall	_usb_arch_reset
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:392: USBIIE = 0;
	mov	dptr,#_USBIIE
	clr	a
	movx	@dptr,a
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:393: USBOIE = 0;
	mov	dptr,#_USBOIE
	movx	@dptr,a
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:395: cc253x_p2_register_handler(&usb_irq_handler);
	mov	dptr,#_usb_irq_handler
	mov	b,#0x00
	lcall	_cc253x_p2_register_handler
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:397: cc253x_p2_irq_force_enable();
	orl	_IEN2,#0x02
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usb_submit_recv_buffer'
;------------------------------------------------------------
;buffer                    Allocated to stack - sp -12
;addr                      Allocated to stack - sp -7
;tailp                     Allocated to stack - sp -3
;flag                      Allocated to stack - sp +0
;ep                        Allocated to registers r5 r4 r6 
;sloc0                     Allocated to stack - sp -6
;------------------------------------------------------------
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:401: usb_submit_recv_buffer(uint8_t addr, USBBuffer * buffer)
;	-----------------------------------------
;	 function usb_submit_recv_buffer
;	-----------------------------------------
_usb_submit_recv_buffer:
	push	dpl
	mov	a,sp
	add	a,#0x07
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:405: USBEndpoint *ep = EP_STRUCT(addr);
	mov	sp,a
	add	a,#0xf9
	mov	r0,a
	mov	a,#0x7F
	anl	a,@r0
	mov	b,#0x0D
	mul	ab
	add	a,#_usb_endpoints
	mov	r5,a
	mov	a,#(_usb_endpoints >> 8)
	addc	a,b
	mov	r4,a
	mov	r6,#0x00
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:407: if(!(ep->flags & USB_EP_FLAGS_ENABLED)) {
	mov	a,#0x02
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r4
	mov	r3,a
	mov	ar7,r6
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	jb	acc.2,00102$
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:408: return;
	ljmp	00127$
00102$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:411: if(buffer->data == NULL && EP_HW_NUM(addr) == 0) {
	push	ar5
	push	ar4
	push	ar6
	mov	a,sp
	add	a,#0xf1
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,#0x03
	add	a,r2
	mov	r4,a
	clr	a
	addc	a,r3
	mov	r5,a
	mov	ar6,r7
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	a,r4
	orl	a,r5
	pop	ar6
	pop	ar4
	pop	ar5
	jnz	00108$
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	a,@r0
	anl	a,#0x7F
	jz	00165$
	sjmp	00108$
00165$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:416: if(buffer->flags & USB_BUFFER_NOTIFY) {
	push	ar5
	push	ar4
	push	ar6
	mov	a,#0x08
	add	a,r2
	mov	r4,a
	clr	a
	addc	a,r3
	mov	r5,a
	mov	ar6,r7
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	a,r4
	pop	ar6
	pop	ar4
	pop	ar5
	jnb	acc.3,00104$
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:417: notify_ep_process(ep, USB_EP_EVENT_NOTIFICATION);
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	mov	dpl,r5
	mov	dph,r4
	mov	b,r6
	lcall	_notify_ep_process
	dec	sp
	dec	sp
00104$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:419: return;
	ljmp	00127$
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:422: usb_irq_disable(flag);
00108$:
	push	ar2
	push	ar3
	push	ar7
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	a,#0x02
	anl	a,_IEN2
	mov	@r0,a
	mov	r7,_IEN2
	mov	a,#0xFD
	anl	a,r7
	mov	_IEN2,a
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:424: tailp = &ep->buffer;
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,#0x03
	add	a,r5
	mov	@r0,a
	clr	a
	addc	a,r4
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar6
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:444: usb_irq_enable(flag);
	pop	ar7
	pop	ar3
	pop	ar2
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:425: while(*tailp) {
00111$:
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,sp
	add	a,#0xfa
	mov	r1,a
	lcall	__gptrget
	mov	@r1,a
	inc	dptr
	lcall	__gptrget
	inc	r1
	mov	@r1,a
	inc	dptr
	lcall	__gptrget
	inc	r1
	mov	@r1,a
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00113$
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:426: tailp = &(*tailp)->next;
	push	ar2
	push	ar3
	push	ar7
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar7
	pop	ar7
	pop	ar3
	pop	ar2
	sjmp	00111$
00113$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:428: *tailp = buffer;
	mov	a,sp
	add	a,#0xfd
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
	mov	a,r7
	lcall	__gptrput
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:429: while(buffer) {
00114$:
	mov	a,sp
	add	a,#0xf4
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00116$
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:430: buffer->flags |= USB_BUFFER_SUBMITTED;
	push	ar5
	push	ar4
	push	ar6
	mov	a,sp
	add	a,#0xf1
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	a,#0x08
	add	a,r2
	mov	@r0,a
	clr	a
	addc	a,r3
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar7
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
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
	orl	ar5,#0x01
	mov	a,sp
	add	a,#0xf7
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
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:431: buffer = buffer->next;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	mov	a,sp
	add	a,#0xf1
	mov	r0,a
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
	pop	ar6
	pop	ar4
	pop	ar5
	ljmp	00114$
00116$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:434: USBINDEX = EP_HW_NUM(addr);
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	dptr,#_USBINDEX
	mov	a,#0x7F
	anl	a,@r0
	movx	@dptr,a
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:435: if(!EP_HW_NUM(ep->addr)) {
	inc	r5
	cjne	r5,#0x00,00169$
	inc	r4
00169$:
	mov	dpl,r5
	mov	dph,r4
	mov	b,r6
	lcall	__gptrget
	mov	r7,a
	anl	a,#0x7F
	jz	00171$
	sjmp	00122$
00171$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:436: if(USBCS0 & USBCS0_OUTPKT_RDY) {
	mov	dptr,#_USBCS0
	movx	a,@dptr
	mov	r6,a
	jnb	acc.0,00124$
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:437: usb_arch_ep0_irq();
	lcall	_usb_arch_ep0_irq
	sjmp	00124$
00122$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:440: if(USBCSOL & USBCSOL_OUTPKT_RDY) {
	mov	dptr,#_USBCSOL
	movx	a,@dptr
	mov	r6,a
	jnb	acc.0,00124$
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:441: usb_arch_epout_irq(EP_HW_NUM(ep->addr));
	anl	ar7,#0x7F
	mov	dpl,r7
	lcall	_usb_arch_epout_irq
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:444: usb_irq_enable(flag);
00124$:
	mov	r0,sp
	mov	a,@r0
	orl	_IEN2,a
00127$:
	mov	a,sp
	add	a,#0xF8
	mov	sp,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usb_submit_xmit_buffer'
;------------------------------------------------------------
;buffer                    Allocated to stack - sp -11
;addr                      Allocated to registers r4 
;tailp                     Allocated to registers r2 r3 r7 
;flag                      Allocated to stack - sp -3
;res                       Allocated to registers r7 
;ep                        Allocated to stack - sp -2
;sloc0                     Allocated to stack - sp -6
;------------------------------------------------------------
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:448: usb_submit_xmit_buffer(uint8_t addr, USBBuffer * buffer)
;	-----------------------------------------
;	 function usb_submit_xmit_buffer
;	-----------------------------------------
_usb_submit_xmit_buffer:
	mov	a,sp
	add	a,#0x07
	mov	sp,a
	mov	r4,dpl
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:453: USBEndpoint *ep = EP_STRUCT(addr);
	mov	a,#0x7F
	anl	a,r4
	mov	b,#0x0D
	mul	ab
	add	a,#_usb_endpoints
	mov	r5,a
	mov	a,#(_usb_endpoints >> 8)
	addc	a,b
	mov	r6,a
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,#0x00
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:455: if(!(ep->flags & USB_EP_FLAGS_ENABLED)) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x02
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
	jb	acc.2,00103$
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:456: return;
	ljmp	00128$
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:459: usb_irq_disable(flag);
00103$:
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	a,#0x02
	anl	a,_IEN2
	mov	@r0,a
	mov	r3,_IEN2
	mov	a,#0xFD
	anl	a,r3
	mov	_IEN2,a
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:462: if(EP_HW_NUM(addr) == 0) {
	mov	a,r4
	anl	a,#0x7F
	jz	00159$
	sjmp	00113$
00159$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:463: if(buffer->data == NULL) {
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,#0x03
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
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
	mov	a,r2
	orl	a,r3
	jnz	00110$
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:467: USBINDEX = 0;
	mov	dptr,#_USBINDEX
	clr	a
	movx	@dptr,a
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:468: USBCS0 = USBCS0_CLR_OUTPKT_RDY | USBCS0_DATA_END;
	mov	dptr,#_USBCS0
	mov	a,#0x48
	movx	@dptr,a
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:469: notify_ep_process(ep, USB_EP_EVENT_NOTIFICATION);
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_notify_ep_process
	dec	sp
	dec	sp
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:470: usb_irq_enable(flag);
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	orl	_IEN2,a
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:471: return;
	ljmp	00128$
00110$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:474: USBINDEX = 0;
	mov	dptr,#_USBINDEX
	clr	a
	movx	@dptr,a
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:475: USBCS0 = USBCS0_CLR_OUTPKT_RDY;
	mov	dptr,#_USBCS0
	mov	a,#0x40
	movx	@dptr,a
00113$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:479: tailp = &ep->buffer;
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
	mov	ar7,@r0
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:480: while(*tailp) {
00114$:
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	a,r4
	orl	a,r5
	jz	00116$
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:481: tailp = &(*tailp)->next;
	mov	ar2,r4
	mov	ar3,r5
	mov	ar7,r6
	sjmp	00114$
00116$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:483: *tailp = buffer;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	mov	a,sp
	add	a,#0xf5
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
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:484: while(buffer) {
00117$:
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00119$
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:485: buffer->flags |= USB_BUFFER_SUBMITTED | USB_BUFFER_IN;
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,#0x08
	add	a,r5
	mov	@r0,a
	clr	a
	addc	a,r6
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar7
	mov	a,sp
	add	a,#0xfa
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
	orl	ar3,#0x41
	mov	a,sp
	add	a,#0xfa
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
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:486: buffer = buffer->next;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
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
	sjmp	00117$
00119$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:489: USBINDEX = EP_HW_NUM(ep->addr);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x01
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
	mov	dptr,#_USBINDEX
	mov	a,#0x7F
	anl	a,r4
	movx	@dptr,a
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:490: if(EP_HW_NUM(ep->addr)) {
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r7,a
	anl	a,#0x7F
	jz	00121$
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:491: res = ep_tx(EP_HW_NUM(ep->addr));
	anl	ar7,#0x7F
	mov	dpl,r7
	lcall	_ep_tx
	mov	r7,dpl
	sjmp	00123$
00121$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:493: res = ep0_tx();
	lcall	_ep0_tx
	mov	r6,dpl
	mov	ar7,r6
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:496: usb_irq_enable(flag);
00123$:
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	orl	_IEN2,a
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:498: if(res & USB_WRITE_NOTIFY) {
	mov	a,r7
	jnb	acc.1,00128$
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:499: notify_ep_process(ep, USB_EP_EVENT_NOTIFICATION);
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_notify_ep_process
	dec	sp
	dec	sp
00128$:
	mov	a,sp
	add	a,#0xF9
	mov	sp,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usb_arch_setup_endpoint0'
;------------------------------------------------------------
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:506: usb_arch_setup_endpoint0(void)
;	-----------------------------------------
;	 function usb_arch_setup_endpoint0
;	-----------------------------------------
_usb_arch_setup_endpoint0:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:508: USBIIE |= USBIIE_EP0IE;
	mov	dptr,#_USBIIE
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x01
	orl	a,r7
	movx	@dptr,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usb_arch_setup_in_endpoint'
;------------------------------------------------------------
;addr                      Allocated to registers r7 
;ei                        Allocated to registers r6 
;ep                        Allocated to registers r5 r7 r4 
;------------------------------------------------------------
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:512: usb_arch_setup_in_endpoint(uint8_t addr)
;	-----------------------------------------
;	 function usb_arch_setup_in_endpoint
;	-----------------------------------------
_usb_arch_setup_in_endpoint:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:514: uint8_t ei = EP_HW_NUM(addr);
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:515: USBEndpoint *ep = EP_STRUCT(addr);
	mov	a,dpl
	anl	a,#0x7F
	mov	r6,a
	mov	b,#0x0D
	mul	ab
	add	a,#_usb_endpoints
	mov	r5,a
	mov	a,#(_usb_endpoints >> 8)
	addc	a,b
	mov	r7,a
	mov	r4,#0x00
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:518: USBIIE |= USBIIE_INEPxIE(ei);
	mov	b,r6
	inc	b
	mov	a,#0x01
	sjmp	00111$
00109$:
	add	a,acc
00111$:
	djnz	b,00109$
	mov	r6,a
	mov	dptr,#_USBIIE
	movx	a,@dptr
	orl	a,r6
	movx	@dptr,a
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:521: USBMAXI = ep->xfer_size / 8;
	mov	a,#0x0B
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r7
	mov	r3,a
	mov	ar6,r4
	mov	dpl,r2
	mov	dph,r3
	mov	b,r6
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	swap	a
	rl	a
	xch	a,r2
	swap	a
	rl	a
	anl	a,#0x1F
	xrl	a,r2
	xch	a,r2
	anl	a,#0x1F
	xch	a,r2
	xrl	a,r2
	xch	a,r2
	mov	r3,a
	mov	dptr,#_USBMAXI
	mov	a,r2
	movx	@dptr,a
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:523: if(IS_ISO_EP(ep)) {
	mov	a,#0x02
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	dpl,r5
	mov	dph,r7
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
	anl	ar5,#0x03
	cjne	r5,#0x02,00102$
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:524: USBCSIH |= USBCSxH_ISO;
	mov	dptr,#_USBCSIH
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x40
	orl	a,r7
	movx	@dptr,a
	ret
00102$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:526: USBCSIH &= ~USBCSxH_ISO;
	mov	dptr,#_USBCSIH
	movx	a,@dptr
	mov	r7,a
	mov	a,#0xBF
	anl	a,r7
	movx	@dptr,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usb_arch_setup_out_endpoint'
;------------------------------------------------------------
;addr                      Allocated to registers r7 
;ei                        Allocated to registers r6 
;ep                        Allocated to registers r5 r7 r4 
;------------------------------------------------------------
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:531: usb_arch_setup_out_endpoint(uint8_t addr)
;	-----------------------------------------
;	 function usb_arch_setup_out_endpoint
;	-----------------------------------------
_usb_arch_setup_out_endpoint:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:533: uint8_t ei = EP_HW_NUM(addr);
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:534: USBEndpoint *ep = EP_STRUCT(addr);
	mov	a,dpl
	anl	a,#0x7F
	mov	r6,a
	mov	b,#0x0D
	mul	ab
	add	a,#_usb_endpoints
	mov	r5,a
	mov	a,#(_usb_endpoints >> 8)
	addc	a,b
	mov	r7,a
	mov	r4,#0x00
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:537: USBOIE |= USBOIE_OUEPxIE(ei);
	mov	b,r6
	inc	b
	mov	a,#0x01
	sjmp	00111$
00109$:
	add	a,acc
00111$:
	djnz	b,00109$
	mov	r6,a
	mov	dptr,#_USBOIE
	movx	a,@dptr
	orl	a,r6
	movx	@dptr,a
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:540: USBMAXO = ep->xfer_size / 8;
	mov	a,#0x0B
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r7
	mov	r3,a
	mov	ar6,r4
	mov	dpl,r2
	mov	dph,r3
	mov	b,r6
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	swap	a
	rl	a
	xch	a,r2
	swap	a
	rl	a
	anl	a,#0x1F
	xrl	a,r2
	xch	a,r2
	anl	a,#0x1F
	xch	a,r2
	xrl	a,r2
	xch	a,r2
	mov	r3,a
	mov	dptr,#_USBMAXO
	mov	a,r2
	movx	@dptr,a
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:542: if(IS_ISO_EP(ep)) {
	mov	a,#0x02
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	dpl,r5
	mov	dph,r7
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
	anl	ar5,#0x03
	cjne	r5,#0x02,00102$
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:543: USBCSOH |= USBCSxH_ISO;
	mov	dptr,#_USBCSOH
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x40
	orl	a,r7
	movx	@dptr,a
	ret
00102$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:545: USBCSOH &= ~USBCSxH_ISO;
	mov	dptr,#_USBCSOH
	movx	a,@dptr
	mov	r7,a
	mov	a,#0xBF
	anl	a,r7
	movx	@dptr,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usb_arch_setup_endpoint'
;------------------------------------------------------------
;addr                      Allocated to stack - sp -4
;ei                        Allocated to stack - sp -3
;flag                      Allocated to registers r7 
;ep                        Allocated to stack - sp -2
;------------------------------------------------------------
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:550: usb_arch_setup_endpoint(uint8_t addr)
;	-----------------------------------------
;	 function usb_arch_setup_endpoint
;	-----------------------------------------
_usb_arch_setup_endpoint:
	push	dpl
	mov	a,sp
	add	a,#0x04
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:552: uint8_t ei = EP_HW_NUM(addr);
	mov	sp,a
	add	a,#0xfc
	mov	r0,a
	mov	a,#0x7F
	anl	a,@r0
	mov	r6,a
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	@r0,ar6
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:554: USBEndpoint *ep = EP_STRUCT(addr);
	mov	a,r6
	mov	b,#0x0D
	mul	ab
	add	a,#_usb_endpoints
	mov	r4,a
	mov	a,#(_usb_endpoints >> 8)
	addc	a,b
	mov	r6,a
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,#0x00
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:556: ep->halted = 0;
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
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:557: ep->flags |= USB_EP_FLAGS_ENABLED;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x02
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r2
	mov	dph,r5
	mov	b,r7
	lcall	__gptrget
	mov	r6,a
	orl	ar6,#0x04
	mov	dpl,r2
	mov	dph,r5
	mov	b,r7
	mov	a,r6
	lcall	__gptrput
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:558: ep->buffer = 0;
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
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:559: ep->addr = addr;
	mov	r0,sp
	dec	r0
	dec	r0
	inc	a
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
	mov	a,@r0
	lcall	__gptrput
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:560: ep->events = 0;
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
	inc	dptr
	lcall	__gptrput
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:561: ep->xfer_size = ep_xfer_size[ei];
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x0B
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	mov	b,#0x02
	mul	ab
	add	a,#_ep_xfer_size
	mov	dpl,a
	mov	a,#(_ep_xfer_size >> 8)
	addc	a,b
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r3,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:563: usb_irq_disable(flag);
	mov	a,#0x02
	anl	a,_IEN2
	mov	r7,a
	mov	r6,_IEN2
	mov	a,#0xFD
	anl	a,r6
	mov	_IEN2,a
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:565: USBINDEX = ei;
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	dptr,#_USBINDEX
	mov	a,@r0
	movx	@dptr,a
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:568: if(ei == 0) {
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	jnz	00108$
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:569: usb_arch_setup_endpoint0();
	push	ar7
	lcall	_usb_arch_setup_endpoint0
	pop	ar7
	sjmp	00110$
00108$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:571: if(addr & 0x80) {
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	jnb	acc.7,00105$
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:572: usb_arch_setup_in_endpoint(addr);
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	dpl,@r0
	push	ar7
	lcall	_usb_arch_setup_in_endpoint
	pop	ar7
	sjmp	00110$
00105$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:574: usb_arch_setup_out_endpoint(addr);
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	dpl,@r0
	push	ar7
	lcall	_usb_arch_setup_out_endpoint
	pop	ar7
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:577: usb_irq_enable(flag);
00110$:
	mov	a,r7
	orl	_IEN2,a
	mov	a,sp
	add	a,#0xFB
	mov	sp,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usb_arch_setup_iso_endpoint'
;------------------------------------------------------------
;addr                      Allocated to registers r7 
;ep                        Allocated to registers r5 r6 r4 
;------------------------------------------------------------
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:581: usb_arch_setup_iso_endpoint(uint8_t addr)
;	-----------------------------------------
;	 function usb_arch_setup_iso_endpoint
;	-----------------------------------------
_usb_arch_setup_iso_endpoint:
	mov	r7,dpl
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:583: USBEndpoint *ep = EP_STRUCT(addr);
	mov	a,#0x7F
	anl	a,r7
	mov	b,#0x0D
	mul	ab
	add	a,#_usb_endpoints
	mov	r5,a
	mov	a,#(_usb_endpoints >> 8)
	addc	a,b
	mov	r6,a
	mov	r4,#0x00
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:585: ep->flags = USB_EP_FLAGS_TYPE_ISO;
	mov	a,#0x02
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r4
	mov	a,#0x02
	lcall	__gptrput
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:587: usb_arch_setup_endpoint(addr);
	mov	dpl,r7
	ljmp	_usb_arch_setup_endpoint
;------------------------------------------------------------
;Allocation info for local variables in function 'usb_arch_setup_control_endpoint'
;------------------------------------------------------------
;addr                      Allocated to registers r7 
;ep                        Allocated to registers r5 r6 r4 
;------------------------------------------------------------
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:591: usb_arch_setup_control_endpoint(uint8_t addr)
;	-----------------------------------------
;	 function usb_arch_setup_control_endpoint
;	-----------------------------------------
_usb_arch_setup_control_endpoint:
	mov	r7,dpl
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:593: USBEndpoint *ep = EP_STRUCT(addr);
	mov	a,#0x7F
	anl	a,r7
	mov	b,#0x0D
	mul	ab
	add	a,#_usb_endpoints
	mov	r5,a
	mov	a,#(_usb_endpoints >> 8)
	addc	a,b
	mov	r6,a
	mov	r4,#0x00
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:595: ep->flags = USB_EP_FLAGS_TYPE_CONTROL;
	mov	a,#0x02
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r4
	mov	a,#0x01
	lcall	__gptrput
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:597: usb_arch_setup_endpoint(addr);
	mov	dpl,r7
	ljmp	_usb_arch_setup_endpoint
;------------------------------------------------------------
;Allocation info for local variables in function 'usb_arch_setup_bulk_endpoint'
;------------------------------------------------------------
;addr                      Allocated to registers r7 
;ep                        Allocated to registers r5 r6 r4 
;------------------------------------------------------------
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:601: usb_arch_setup_bulk_endpoint(uint8_t addr)
;	-----------------------------------------
;	 function usb_arch_setup_bulk_endpoint
;	-----------------------------------------
_usb_arch_setup_bulk_endpoint:
	mov	r7,dpl
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:603: USBEndpoint *ep = EP_STRUCT(addr);
	mov	a,#0x7F
	anl	a,r7
	mov	b,#0x0D
	mul	ab
	add	a,#_usb_endpoints
	mov	r5,a
	mov	a,#(_usb_endpoints >> 8)
	addc	a,b
	mov	r6,a
	mov	r4,#0x00
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:605: ep->flags = USB_EP_FLAGS_TYPE_BULK;
	mov	a,#0x02
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r4
	clr	a
	lcall	__gptrput
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:607: usb_arch_setup_endpoint(addr);
	mov	dpl,r7
	ljmp	_usb_arch_setup_endpoint
;------------------------------------------------------------
;Allocation info for local variables in function 'usb_arch_setup_interrupt_endpoint'
;------------------------------------------------------------
;addr                      Allocated to registers r7 
;ep                        Allocated to registers r5 r6 r4 
;------------------------------------------------------------
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:611: usb_arch_setup_interrupt_endpoint(uint8_t addr)
;	-----------------------------------------
;	 function usb_arch_setup_interrupt_endpoint
;	-----------------------------------------
_usb_arch_setup_interrupt_endpoint:
	mov	r7,dpl
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:613: USBEndpoint *ep = EP_STRUCT(addr);
	mov	a,#0x7F
	anl	a,r7
	mov	b,#0x0D
	mul	ab
	add	a,#_usb_endpoints
	mov	r5,a
	mov	a,#(_usb_endpoints >> 8)
	addc	a,b
	mov	r6,a
	mov	r4,#0x00
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:615: ep->flags = USB_EP_FLAGS_TYPE_INTERRUPT;
	mov	a,#0x02
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r4
	mov	a,#0x03
	lcall	__gptrput
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:617: usb_arch_setup_endpoint(addr);
	mov	dpl,r7
	ljmp	_usb_arch_setup_endpoint
;------------------------------------------------------------
;Allocation info for local variables in function 'usb_arch_disable_ep0'
;------------------------------------------------------------
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:621: usb_arch_disable_ep0(void)
;	-----------------------------------------
;	 function usb_arch_disable_ep0
;	-----------------------------------------
_usb_arch_disable_ep0:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:623: USBIIE &= ~USBIIE_EP0IE;
	mov	dptr,#_USBIIE
	movx	a,@dptr
	mov	r7,a
	mov	a,#0xFE
	anl	a,r7
	movx	@dptr,a
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:624: USBCS0 = 0xC0;                // Clear any pending status flags
	mov	dptr,#_USBCS0
	mov	a,#0xC0
	movx	@dptr,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usb_arch_disable_in_endpoint'
;------------------------------------------------------------
;addr                      Allocated to registers r7 
;------------------------------------------------------------
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:628: usb_arch_disable_in_endpoint(uint8_t addr)
;	-----------------------------------------
;	 function usb_arch_disable_in_endpoint
;	-----------------------------------------
_usb_arch_disable_in_endpoint:
	mov	r7,dpl
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:630: USBMAXI = 0;
	mov	dptr,#_USBMAXI
	clr	a
	movx	@dptr,a
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:631: USBIIE &= ~USBIIE_INEPxIE(EP_HW_NUM(addr));
	mov	a,#0x7F
	anl	a,r7
	mov	b,a
	inc	b
	mov	a,#0x01
	sjmp	00105$
00103$:
	add	a,acc
00105$:
	djnz	b,00103$
	cpl	a
	mov	r7,a
	mov	dptr,#_USBIIE
	movx	a,@dptr
	mov	r6,a
	mov	a,r7
	anl	a,r6
	movx	@dptr,a
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:634: USBCSIL = 0x08;               // Double-buffering not used. Flush only once
	mov	dptr,#_USBCSIL
	mov	a,#0x08
	movx	@dptr,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usb_arch_disable_out_endpoint'
;------------------------------------------------------------
;addr                      Allocated to registers r7 
;------------------------------------------------------------
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:638: usb_arch_disable_out_endpoint(uint8_t addr)
;	-----------------------------------------
;	 function usb_arch_disable_out_endpoint
;	-----------------------------------------
_usb_arch_disable_out_endpoint:
	mov	r7,dpl
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:640: USBMAXO = 0;
	mov	dptr,#_USBMAXO
	clr	a
	movx	@dptr,a
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:641: USBOIE &= ~USBOIE_OUEPxIE(EP_HW_NUM(addr));
	mov	a,#0x7F
	anl	a,r7
	mov	b,a
	inc	b
	mov	a,#0x01
	sjmp	00105$
00103$:
	add	a,acc
00105$:
	djnz	b,00103$
	cpl	a
	mov	r7,a
	mov	dptr,#_USBOIE
	movx	a,@dptr
	mov	r6,a
	mov	a,r7
	anl	a,r6
	movx	@dptr,a
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:644: USBCSOL = 0x08;               // Double buffering not used, flush only once
	mov	dptr,#_USBCSOL
	mov	a,#0x08
	movx	@dptr,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usb_arch_disable_endpoint'
;------------------------------------------------------------
;addr                      Allocated to registers r7 
;ei                        Allocated to registers r5 
;flag                      Allocated to registers r6 
;ep                        Allocated to registers r4 r6 r3 
;------------------------------------------------------------
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:649: usb_arch_disable_endpoint(uint8_t addr)
;	-----------------------------------------
;	 function usb_arch_disable_endpoint
;	-----------------------------------------
_usb_arch_disable_endpoint:
	mov	r7,dpl
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:651: uint8_t ei = EP_HW_NUM(addr);
	mov	a,#0x7F
	anl	a,r7
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:653: USBEndpoint *ep = EP_STRUCT(addr);
	mov	r5,a
	mov	b,#0x0D
	mul	ab
	add	a,#_usb_endpoints
	mov	r4,a
	mov	a,#(_usb_endpoints >> 8)
	addc	a,b
	mov	r6,a
	mov	r3,#0x00
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:655: ep->flags &= ~USB_EP_FLAGS_ENABLED;
	mov	a,#0x02
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r4
	mov	dph,r6
	mov	b,r3
	lcall	__gptrget
	mov	r2,a
	anl	ar2,#0xFB
	mov	dpl,r4
	mov	dph,r6
	mov	b,r3
	mov	a,r2
	lcall	__gptrput
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:657: usb_irq_disable(flag);
	mov	a,#0x02
	anl	a,_IEN2
	mov	r6,a
	mov	r4,_IEN2
	mov	a,#0xFD
	anl	a,r4
	mov	_IEN2,a
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:658: USBINDEX = ei;
	mov	dptr,#_USBINDEX
	mov	a,r5
	movx	@dptr,a
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:659: if(ei == 0) {
	mov	a,r5
	jnz	00108$
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:660: usb_arch_disable_ep0();
	push	ar6
	lcall	_usb_arch_disable_ep0
	pop	ar6
	sjmp	00110$
00108$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:662: if(addr & 0x80) {
	mov	a,r7
	jnb	acc.7,00105$
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:663: usb_arch_disable_in_endpoint(addr);
	mov	dpl,r7
	push	ar6
	lcall	_usb_arch_disable_in_endpoint
	pop	ar6
	sjmp	00110$
00105$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:665: usb_arch_disable_out_endpoint(addr);
	mov	dpl,r7
	push	ar6
	lcall	_usb_arch_disable_out_endpoint
	pop	ar6
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:668: usb_irq_enable(flag);
00110$:
	mov	a,r6
	orl	_IEN2,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usb_arch_discard_all_buffers'
;------------------------------------------------------------
;addr                      Allocated to registers r7 
;buffer                    Allocated to stack - sp -5
;flag                      Allocated to registers r4 
;ep                        Allocated to stack - sp -2
;------------------------------------------------------------
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:672: usb_arch_discard_all_buffers(uint8_t addr)
;	-----------------------------------------
;	 function usb_arch_discard_all_buffers
;	-----------------------------------------
_usb_arch_discard_all_buffers:
	mov	a,sp
	add	a,#0x06
	mov	sp,a
	mov	r7,dpl
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:676: volatile USBEndpoint *ep = EP_STRUCT(addr);
	mov	a,#0x7F
	anl	a,r7
	mov	b,#0x0D
	mul	ab
	add	a,#_usb_endpoints
	mov	r6,a
	mov	a,#(_usb_endpoints >> 8)
	addc	a,b
	mov	r7,a
	mov	r5,#0x00
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:678: usb_irq_disable(flag);
	mov	a,#0x02
	anl	a,_IEN2
	mov	r4,a
	mov	r3,_IEN2
	mov	a,#0xFD
	anl	a,r3
	mov	_IEN2,a
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:679: buffer = ep->buffer;
	mov	a,#0x03
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
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
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:680: ep->buffer = NULL;
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:681: usb_irq_enable(flag);
	mov	a,r4
	orl	_IEN2,a
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:683: while(buffer) {
00107$:
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00110$
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:684: buffer->flags &= ~USB_BUFFER_SUBMITTED;
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
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
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	anl	ar3,#0xFE
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:685: buffer = buffer->next;
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
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
00110$:
	mov	a,sp
	add	a,#0xFA
	mov	sp,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'set_stall'
;------------------------------------------------------------
;stall                     Allocated to stack - sp -2
;addr                      Allocated to registers r7 
;ei                        Allocated to registers r6 
;------------------------------------------------------------
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:690: set_stall(uint8_t addr, uint8_t stall)
;	-----------------------------------------
;	 function set_stall
;	-----------------------------------------
_set_stall:
	mov	r7,dpl
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:692: uint8_t ei = EP_HW_NUM(addr);
	mov	a,#0x7F
	anl	a,r7
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:694: USBINDEX = ei;
	mov	r6,a
	mov	dptr,#_USBINDEX
	movx	@dptr,a
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:695: if(ei == 0) {
	mov	a,r6
	jnz	00113$
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:697: if(stall) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,@r0
	jz	00115$
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:698: ep0status = EP_IDLE;
	mov	dptr,#_ep0status
	clr	a
	movx	@dptr,a
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:699: USBCS0 |= USBCS0_SEND_STALL | USBCS0_OUTPKT_RDY;
	mov	dptr,#_USBCS0
	movx	a,@dptr
	mov	r6,a
	mov	a,#0x21
	orl	a,r6
	movx	@dptr,a
	ret
00113$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:702: if(addr & 0x80) {
	mov	a,r7
	jnb	acc.7,00110$
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:703: if(stall) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,@r0
	jz	00104$
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:704: USBCSIL |= USBCSIL_SEND_STALL;
	mov	dptr,#_USBCSIL
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x10
	orl	a,r7
	movx	@dptr,a
	ret
00104$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:706: USBCSIL &= ~USBCSIL_SEND_STALL;
	mov	dptr,#_USBCSIL
	movx	a,@dptr
	mov	r7,a
	mov	a,#0xEF
	anl	a,r7
	movx	@dptr,a
	ret
00110$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:709: if(stall) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,@r0
	jz	00107$
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:710: USBCSOL |= USBCSOL_SEND_STALL;
	mov	dptr,#_USBCSOL
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x20
	orl	a,r7
	movx	@dptr,a
	ret
00107$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:712: USBCSOL &= ~USBCSOL_SEND_STALL;
	mov	dptr,#_USBCSOL
	movx	a,@dptr
	mov	r7,a
	mov	a,#0xDF
	anl	a,r7
	movx	@dptr,a
00115$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usb_arch_control_stall'
;------------------------------------------------------------
;addr                      Allocated to registers r7 
;ei                        Allocated to registers r6 
;flag                      Allocated to registers r6 
;------------------------------------------------------------
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:719: usb_arch_control_stall(uint8_t addr)
;	-----------------------------------------
;	 function usb_arch_control_stall
;	-----------------------------------------
_usb_arch_control_stall:
	mov	r7,dpl
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:721: uint8_t ei = EP_HW_NUM(addr);
	mov	a,#0x7F
	anl	a,r7
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:724: if(ei > USB_MAX_ENDPOINTS) {
	mov  r6,a
	add	a,#0xff - 0x04
	jnc	00103$
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:725: return;
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:728: usb_irq_disable(flag);
	ret
00103$:
	mov	a,#0x02
	anl	a,_IEN2
	mov	r6,a
	mov	r5,_IEN2
	mov	a,#0xFD
	anl	a,r5
	mov	_IEN2,a
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:730: set_stall(addr, 1);
	push	ar6
	mov	a,#0x01
	push	acc
	mov	dpl,r7
	lcall	_set_stall
	dec	sp
	pop	ar6
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:732: usb_irq_enable(flag);
	mov	a,r6
	orl	_IEN2,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usb_arch_halt_endpoint'
;------------------------------------------------------------
;halt                      Allocated to stack - sp -12
;addr                      Allocated to stack - sp -8
;ei                        Allocated to registers r5 
;flag                      Allocated to registers r7 
;ep                        Allocated to stack - sp -2
;sloc0                     Allocated to stack - sp -7
;sloc1                     Allocated to stack - sp +1
;sloc2                     Allocated to stack - sp -4
;------------------------------------------------------------
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:736: usb_arch_halt_endpoint(uint8_t addr, int halt)
;	-----------------------------------------
;	 function usb_arch_halt_endpoint
;	-----------------------------------------
_usb_arch_halt_endpoint:
	push	dpl
	mov	a,sp
	add	a,#0x08
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:738: uint8_t ei = EP_HW_NUM(addr);
	mov	sp,a
	add	a,#0xf8
	mov	r0,a
	mov	a,#0x7F
	anl	a,@r0
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:740: USBEndpoint *ep = EP_STRUCT(addr);
	mov	r5,a
	mov	b,#0x0D
	mul	ab
	add	a,#_usb_endpoints
	mov	r4,a
	mov	a,#(_usb_endpoints >> 8)
	addc	a,b
	mov	r6,a
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,#0x00
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:743: if(ei > USB_MAX_ENDPOINTS) {
	mov	a,r5
	add	a,#0xff - 0x04
	jnc	00102$
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:744: return;
	ljmp	00121$
00102$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:747: if(!(ep->flags & USB_EP_FLAGS_ENABLED)) {
	push	ar5
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	a,#0x02
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r2
	mov	dph,r5
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	pop	ar5
	jb	acc.2,00105$
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:748: return;
	ljmp	00121$
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:751: usb_irq_disable(flag);
00105$:
	mov	a,#0x02
	anl	a,_IEN2
	mov	r7,a
	mov	r2,_IEN2
	mov	a,#0xFD
	anl	a,r2
	mov	_IEN2,a
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:753: if(halt) {
	mov	a,sp
	add	a,#0xf4
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00116$
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:754: ep->halted = 0x1;
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
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:755: set_stall(addr, 1);
	push	ar7
	push	acc
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	dpl,@r0
	lcall	_set_stall
	dec	sp
	pop	ar7
	ljmp	00118$
00116$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:757: ep->halted = 0;
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
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:758: set_stall(addr, 0);
	push	ar7
	push	ar5
	push	acc
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	dpl,@r0
	lcall	_set_stall
	dec	sp
	pop	ar5
	pop	ar7
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:760: if(ep->buffer && (ep->buffer->flags & USB_BUFFER_HALT)) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,sp
	add	a,#0xf9
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
	mov	a,sp
	add	a,#0xf9
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
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	mov	a,r6
	orl	a,r4
	jnz	00147$
	ljmp	00111$
00147$:
	mov	a,#0x08
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	dpl,r6
	mov	dph,r4
	mov	b,r3
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	inc	r0
	mov	a,@r0
	jb	acc.0,00148$
	ljmp	00111$
00148$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:761: ep->buffer->flags &= ~USB_BUFFER_SUBMITTED;
	push	ar7
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0xFE
	anl	a,@r0
	mov	r2,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r6
	mov	dph,r4
	mov	b,r3
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:762: if(ep->buffer->flags & USB_BUFFER_NOTIFY) {
	mov	a,sp
	add	a,#0xf8
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
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,#0x08
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	a,r2
	pop	ar7
	jnb	acc.3,00109$
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:763: notify_ep_process(ep, USB_EP_EVENT_NOTIFICATION);
	push	ar7
	push	ar5
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_notify_ep_process
	dec	sp
	dec	sp
	pop	ar5
	pop	ar7
00109$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:765: ep->buffer = ep->buffer->next;
	mov	a,sp
	add	a,#0xf9
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
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r6
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	a,sp
	add	a,#0xf9
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
	mov	a,r6
	lcall	__gptrput
00111$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:767: if(ei) {
	mov	a,r5
	jz	00118$
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:768: usb_arch_epout_irq(EP_HW_NUM(addr));
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,#0x7F
	anl	a,@r0
	mov	dpl,a
	push	ar7
	lcall	_usb_arch_epout_irq
	pop	ar7
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:772: usb_irq_enable(flag);
00118$:
	mov	a,r7
	orl	_IEN2,a
00121$:
	mov	a,sp
	add	a,#0xF7
	mov	sp,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usb_arch_set_configuration'
;------------------------------------------------------------
;usb_configuration_value   Allocated to registers 
;------------------------------------------------------------
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:776: usb_arch_set_configuration(uint8_t usb_configuration_value)
;	-----------------------------------------
;	 function usb_arch_set_configuration
;	-----------------------------------------
_usb_arch_set_configuration:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:779: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usb_arch_get_ep_status'
;------------------------------------------------------------
;addr                      Allocated to registers r7 
;ei                        Allocated to registers r6 
;ep                        Allocated to registers r5 r4 r7 
;------------------------------------------------------------
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:782: usb_arch_get_ep_status(uint8_t addr)
;	-----------------------------------------
;	 function usb_arch_get_ep_status
;	-----------------------------------------
_usb_arch_get_ep_status:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:784: uint8_t ei = EP_INDEX(addr);
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:785: USBEndpoint *ep = EP_STRUCT(addr);
	mov	a,dpl
	anl	a,#0x7F
	mov	r6,a
	mov	b,#0x0D
	mul	ab
	add	a,#_usb_endpoints
	mov	r5,a
	mov	a,#(_usb_endpoints >> 8)
	addc	a,b
	mov	r4,a
	mov	r7,#0x00
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:787: if(ei > USB_MAX_ENDPOINTS) {
	mov	a,r6
	add	a,#0xff - 0x04
	jnc	00102$
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:788: return 0;
	mov	dptr,#0x0000
	ret
00102$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:791: return ep->halted;
	mov	dpl,r5
	mov	dph,r4
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	r7,#0x00
	mov	dpl,r5
	mov	dph,r7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usb_arch_set_address'
;------------------------------------------------------------
;addr                      Allocated to registers 
;------------------------------------------------------------
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:795: usb_arch_set_address(uint8_t addr)
;	-----------------------------------------
;	 function usb_arch_set_address
;	-----------------------------------------
_usb_arch_set_address:
	mov	a,dpl
	mov	dptr,#_USBADDR
	movx	@dptr,a
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:797: USBADDR = addr;
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usb_arch_send_pending'
;------------------------------------------------------------
;addr                      Allocated to registers r7 
;flag                      Allocated to registers r6 
;ret                       Allocated to registers r7 
;ei                        Allocated to registers r7 
;------------------------------------------------------------
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:801: usb_arch_send_pending(uint8_t addr)
;	-----------------------------------------
;	 function usb_arch_send_pending
;	-----------------------------------------
_usb_arch_send_pending:
	mov	r7,dpl
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:805: uint8_t ei = EP_INDEX(addr);
	anl	ar7,#0x7F
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:807: usb_irq_disable(flag);
	mov	a,#0x02
	anl	a,_IEN2
	mov	r6,a
	mov	r5,_IEN2
	mov	a,#0xFD
	anl	a,r5
	mov	_IEN2,a
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:808: USBINDEX = ei;
	mov	dptr,#_USBINDEX
	mov	a,r7
	movx	@dptr,a
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:809: if(ei == 0) {
	mov	a,r7
	jnz	00105$
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:810: ret = USBCS0 & USBCS0_INPKT_RDY;
	mov	dptr,#_USBCS0
	movx	a,@dptr
	mov	r7,a
	anl	ar7,#0x02
	sjmp	00107$
00105$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:812: ret = USBCSIL & USBCSIL_INPKT_RDY;
	mov	dptr,#_USBCSIL
	movx	a,@dptr
	mov	r5,a
	mov	a,#0x01
	anl	a,r5
	mov	r7,a
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:814: usb_irq_enable(flag);
00107$:
	mov	a,r6
	orl	_IEN2,a
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:816: return ret;
	mov	r6,#0x00
	mov	dpl,r7
	mov	dph,r6
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_receive_capacity'
;------------------------------------------------------------
;buffer                    Allocated to registers r5 r6 r7 
;capacity                  Allocated to stack - sp -1
;------------------------------------------------------------
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:820: get_receive_capacity(USBBuffer * buffer)
;	-----------------------------------------
;	 function get_receive_capacity
;	-----------------------------------------
_get_receive_capacity:
	inc	sp
	inc	sp
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:822: unsigned int capacity = 0;
	mov	r0,sp
	dec	r0
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:824: while(buffer &&
00102$:
	mov	a,r5
	orl	a,r6
	jz	00104$
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:825: !(buffer->flags & (USB_BUFFER_IN | USB_BUFFER_SETUP | USB_BUFFER_HALT))) {
	mov	a,#0x08
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
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	mov	a,r2
	anl	a,#0x60
	jnz	00117$
	mov	a,r3
	jnb	acc.0,00118$
00117$:
	sjmp	00104$
00118$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:826: capacity += buffer->left;
	mov	a,#0x06
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
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	mov	r0,sp
	dec	r0
	mov	a,r2
	add	a,@r0
	mov	@r0,a
	mov	a,r3
	inc	r0
	addc	a,@r0
	mov	@r0,a
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:827: buffer = buffer->next;
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
	sjmp	00102$
00104$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:829: return capacity;
	mov	r0,sp
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	dec	sp
	dec	sp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'skip_buffers_until'
;------------------------------------------------------------
;mask                      Allocated to stack - sp -5
;flags                     Allocated to stack - sp -7
;resp                      Allocated to stack - sp -10
;buffer                    Allocated to registers r5 r6 r7 
;sloc0                     Allocated to stack - sp -1
;------------------------------------------------------------
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:833: skip_buffers_until(USBBuffer * buffer, unsigned int mask, unsigned int flags,
;	-----------------------------------------
;	 function skip_buffers_until
;	-----------------------------------------
_skip_buffers_until:
	inc	sp
	inc	sp
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:836: while(buffer && !((buffer->flags & mask) == flags)) {
00104$:
	mov	a,r5
	orl	a,r6
	jnz	00121$
	ljmp	00106$
00121$:
	mov	a,#0x08
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	r0,sp
	dec	r0
	lcall	__gptrget
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	push	ar5
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,sp
	add	a,#0xf8
	mov	r1,a
	mov	a,@r1
	anl	a,@r0
	mov	r6,a
	inc	r1
	mov	a,@r1
	inc	r0
	anl	a,@r0
	mov	r7,a
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	a,@r0
	cjne	a,ar6,00122$
	inc	r0
	mov	a,@r0
	cjne	a,ar7,00122$
	pop	ar7
	pop	ar6
	pop	ar5
	ljmp	00106$
00122$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:837: buffer->flags &= ~USB_BUFFER_SUBMITTED;
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,#0xFE
	anl	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:838: buffer->flags |= USB_BUFFER_FAILED;
	orl	ar6,#0x80
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:839: if(buffer->flags & USB_BUFFER_NOTIFY) {
	mov	a,r6
	pop	ar7
	pop	ar6
	pop	ar5
	jnb	acc.3,00102$
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:840: *resp |= USB_READ_NOTIFY;
	push	ar5
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xf3
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
	mov	r7,a
	orl	ar7,#0x02
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r7
	lcall	__gptrput
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:844: return buffer;
	pop	ar7
	pop	ar6
	pop	ar5
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:840: *resp |= USB_READ_NOTIFY;
00102$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:842: buffer = buffer->next;
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
	ljmp	00104$
00106$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:844: return buffer;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	dec	sp
	dec	sp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'fill_buffers'
;------------------------------------------------------------
;hw_ep                     Allocated to stack - sp -9
;len                       Allocated to stack - sp -11
;short_packet              Allocated to stack - sp -12
;buffer                    Allocated to stack - sp -6
;t                         Allocated to stack - sp -1
;res                       Allocated to registers r4 
;sloc0                     Allocated to stack - sp -3
;sloc1                     Allocated to stack - sp +2
;sloc2                     Allocated to stack - sp +5
;------------------------------------------------------------
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:848: fill_buffers(USBBuffer * buffer, uint8_t hw_ep, unsigned int len,
;	-----------------------------------------
;	 function fill_buffers
;	-----------------------------------------
_fill_buffers:
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x04
	mov	sp,a
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:852: uint8_t res = 0;
	mov	r4,#0x00
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:854: do {
00108$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:855: if(buffer->left < len) {
	push	ar4
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
	mov	r7,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	a,sp
	add	a,#0xf4
	mov	r0,a
	clr	c
	mov	a,r7
	subb	a,@r0
	mov	a,r6
	inc	r0
	subb	a,@r0
	pop	ar4
	jnc	00102$
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:856: t = buffer->left;
	mov	ar2,r7
	mov	ar3,r6
	mov	r0,sp
	dec	r0
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	sjmp	00103$
00102$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:858: t = len;
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	r1,sp
	dec	r1
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
00103$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:860: len -= t;
	push	ar4
	mov	a,sp
	add	a,#0xf4
	mov	r0,a
	mov	r1,sp
	dec	r1
	dec	r1
	mov	a,@r0
	clr	c
	subb	a,@r1
	mov	@r0,a
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	mov	@r0,a
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:861: buffer->left -= t;
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
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,r6
	clr	c
	subb	a,@r0
	mov	r6,a
	mov	a,r7
	inc	r0
	subb	a,@r0
	mov	r7,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:863: read_hw_buffer(buffer->data, hw_ep, t);
	mov	a,sp
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
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,sp
	add	a,#0xf0
	mov	r0,a
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_read_hw_buffer
	dec	sp
	dec	sp
	dec	sp
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:865: buffer->data += t;
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
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,@r0
	add	a,r2
	mov	r2,a
	inc	r0
	mov	a,@r0
	addc	a,r3
	mov	r3,a
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
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:867: if(len == 0) {
	pop	ar4
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00110$
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:871: buffer->flags &= ~(USB_BUFFER_SUBMITTED | USB_BUFFER_SHORT_PACKET);
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
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
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	anl	ar2,#0xEE
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:872: if(buffer->flags & USB_BUFFER_NOTIFY) {
	mov	a,r2
	jnb	acc.3,00107$
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:873: res |= USB_READ_NOTIFY;
	orl	ar4,#0x02
00107$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:875: buffer = buffer->next;
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
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
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:876: } while(1);
	ljmp	00108$
00110$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:878: if(short_packet) {
	mov	a,sp
	add	a,#0xf4
	mov	r0,a
	mov	a,@r0
	jz	00112$
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:879: buffer->flags |= USB_BUFFER_SHORT_PACKET;
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
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
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	orl	ar2,#0x10
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
00112$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:882: if((buffer->left == 0) || (buffer->flags & USB_BUFFER_PACKET_END)) {
	mov	a,sp
	add	a,#0xfa
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
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	orl	a,r6
	jz	00122$
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,#0x08
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
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	jnb	acc.2,00123$
00122$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:883: buffer->flags &= ~USB_BUFFER_SUBMITTED;
	push	ar4
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	a,#0x08
	add	a,@r0
	mov	r7,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar5,@r0
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	anl	ar3,#0xFE
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r2
	lcall	__gptrput
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:884: if(buffer->flags & USB_BUFFER_NOTIFY) {
	mov	a,r3
	pop	ar4
	jnb	acc.3,00114$
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:885: res |= USB_READ_NOTIFY;
	orl	ar4,#0x02
00114$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:887: buffer = buffer->next;
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
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
	ljmp	00124$
00123$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:889: if(short_packet) {
	mov	a,sp
	add	a,#0xf4
	mov	r0,a
	mov	a,@r0
	jz	00124$
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:890: if(buffer->left && !(buffer->flags & USB_BUFFER_SHORT_END)) {
	mov	a,r6
	orl	a,r7
	jz	00116$
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	jb	acc.1,00116$
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:891: buffer->flags |= USB_BUFFER_FAILED;
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	a,#0x80
	orl	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r5
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:892: res |= USB_READ_FAIL;
	orl	ar4,#0x04
00116$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:894: buffer->flags &= ~USB_BUFFER_SUBMITTED;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r5
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	anl	ar6,#0xFE
	mov	dpl,r2
	mov	dph,r3
	mov	b,r5
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:895: if(buffer->flags & USB_BUFFER_NOTIFY) {
	mov	a,r6
	jnb	acc.3,00119$
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:896: res |= USB_READ_NOTIFY;
	orl	ar4,#0x02
00119$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:898: buffer = buffer->next;
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
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
00124$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:902: usb_endpoints[hw_ep].buffer = buffer;
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	a,@r0
	mov	b,#0x0D
	mul	ab
	add	a,#_usb_endpoints
	mov	r6,a
	mov	a,#(_usb_endpoints >> 8)
	addc	a,b
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	inc	dptr
	inc	dptr
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,@r0
	movx	@dptr,a
	inc	r0
	mov	a,@r0
	inc	dptr
	movx	@dptr,a
	inc	r0
	mov	a,@r0
	inc	dptr
	movx	@dptr,a
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:904: return res;
	mov	dpl,r4
	mov	a,sp
	add	a,#0xF9
	mov	sp,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ep0_get_setup_pkt'
;------------------------------------------------------------
;res                       Allocated to stack - sp -3
;buffer                    Allocated to stack - sp -2
;sloc0                     Allocated to stack - sp -6
;------------------------------------------------------------
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:909: ep0_get_setup_pkt(void)
;	-----------------------------------------
;	 function ep0_get_setup_pkt
;	-----------------------------------------
_ep0_get_setup_pkt:
	mov	a,sp
	add	a,#0x07
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:914: USBBuffer *buffer =
	mov	sp,a
	add	a,#0xFD
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	dptr,#(_usb_endpoints + 0x0003)
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
	mov	a,#0x20
	push	acc
	clr	a
	push	acc
	mov	a,#0x20
	push	acc
	clr	a
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_skip_buffers_until
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:918: usb_endpoints[0].buffer = buffer;
	mov	dptr,#(_usb_endpoints + 0x0003)
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,@r0
	movx	@dptr,a
	inc	r0
	mov	a,@r0
	inc	dptr
	movx	@dptr,a
	inc	r0
	mov	a,@r0
	inc	dptr
	movx	@dptr,a
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:920: if(!buffer || buffer->left < 8) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00101$
	mov	r0,sp
	dec	r0
	dec	r0
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
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	clr	c
	mov	a,r6
	subb	a,#0x08
	mov	a,r7
	subb	a,#0x00
	jnc	00102$
00101$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:921: return USB_READ_BLOCK;
	mov	dpl,#0x01
	ljmp	00109$
00102$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:924: read_hw_buffer(buffer->data, 0, 8);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,sp
	add	a,#0xfa
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
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
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
	push	ar4
	push	ar3
	push	ar2
	mov	a,#0x08
	push	acc
	clr	a
	push	acc
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_read_hw_buffer
	dec	sp
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar4
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:925: buffer->left -= 8;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,r6
	add	a,#0xF8
	mov	r6,a
	mov	a,r7
	addc	a,#0xFF
	mov	r7,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:927: buffer->flags &= ~USB_BUFFER_SUBMITTED;
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
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	anl	ar3,#0xFE
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:928: if(buffer->flags & USB_BUFFER_NOTIFY) {
	mov	a,r3
	jnb	acc.3,00105$
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:929: res |= USB_READ_NOTIFY;
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	orl	a,#0x02
	mov	@r0,a
00105$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:932: if(buffer->data[6] || buffer->data[7]) {
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
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
	mov	a,#0x06
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
	jnz	00106$
	mov	a,#0x07
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	jz	00107$
00106$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:934: USBCS0 |= USBCS0_CLR_OUTPKT_RDY;
	mov	dptr,#_USBCS0
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x40
	orl	a,r7
	movx	@dptr,a
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:935: ep0status = buffer->data[0] & 0x80 ? EP_TX : EP_RX;
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
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
	jnb	acc.7,00111$
	mov	r7,#0x02
	sjmp	00112$
00111$:
	mov	r7,#0x01
00112$:
	mov	dptr,#_ep0status
	mov	a,r7
	movx	@dptr,a
00107$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:942: buffer->data += 8;
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
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
	mov	a,#0x08
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	a,sp
	add	a,#0xfa
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
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:944: usb_endpoints[0].buffer = buffer->next;
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
	mov	dptr,#(_usb_endpoints + 0x0003)
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:946: return res;
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	dpl,@r0
00109$:
	mov	a,sp
	add	a,#0xF9
	mov	sp,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ep0_get_data_pkt'
;------------------------------------------------------------
;res                       Allocated to stack - sp -2
;short_packet              Allocated to stack - sp -1
;buffer                    Allocated to registers r3 r4 r5 
;len                       Allocated to stack - sp +0
;temp                      Allocated to registers 
;sloc0                     Allocated to stack - sp -4
;------------------------------------------------------------
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:950: ep0_get_data_pkt(void)
;	-----------------------------------------
;	 function ep0_get_data_pkt
;	-----------------------------------------
_ep0_get_data_pkt:
	mov	a,sp
	add	a,#0x05
	mov	sp,a
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:952: uint8_t res = 0;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,#0x00
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:953: uint8_t short_packet = 0;
	mov	r0,sp
	dec	r0
	mov	@r0,#0x00
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:954: USBBuffer *buffer = usb_endpoints[0].buffer;
	mov	dptr,#(_usb_endpoints + 0x0003)
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:955: uint8_t len = USBCNT0;
	mov	dptr,#_USBCNT0
	movx	a,@dptr
	mov	r2,a
	mov	r0,sp
	mov	@r0,ar2
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:957: if(!buffer) {
	mov	a,r3
	orl	a,r4
	jnz	00102$
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:958: return USB_READ_BLOCK;
	mov	dpl,#0x01
	ljmp	00117$
00102$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:961: if(buffer->flags & (USB_BUFFER_SETUP | USB_BUFFER_IN)) {
	mov	a,#0x08
	add	a,r3
	mov	r2,a
	clr	a
	addc	a,r4
	mov	r6,a
	mov	ar7,r5
	mov	dpl,r2
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
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	anl	a,#0x60
	jnz	00145$
	ljmp	00109$
00145$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:964: buffer->flags |= USB_BUFFER_FAILED;
	push	ar3
	push	ar4
	push	ar5
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	a,#0x80
	orl	a,@r0
	mov	r4,a
	inc	r0
	mov	ar5,@r0
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:965: buffer->flags &= ~USB_BUFFER_SUBMITTED;
	anl	ar4,#0xFE
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:966: if(buffer->flags & USB_BUFFER_NOTIFY) {
	mov	a,r4
	pop	ar5
	pop	ar4
	pop	ar3
	jnb	acc.3,00123$
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:967: res |= USB_READ_NOTIFY;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,#0x02
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:970: while(len--) {
00123$:
	mov	r0,sp
	mov	ar7,@r0
00105$:
	mov	ar6,r7
	dec	r7
	mov	a,r6
	jz	00107$
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:971: temp = USBF0;
	mov	dptr,#_USBF0
	movx	a,@dptr
	sjmp	00105$
00107$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:973: usb_endpoints[0].buffer = buffer->next;
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	dptr,#(_usb_endpoints + 0x0003)
	mov	a,r2
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:975: USBCS0 |= USBCS0_CLR_OUTPKT_RDY | USBCS0_DATA_END;
	mov	dptr,#_USBCS0
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x48
	orl	a,r7
	movx	@dptr,a
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:977: ep0status = EP_IDLE;
	mov	dptr,#_ep0status
	clr	a
	movx	@dptr,a
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:978: return res;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	ljmp	00117$
00109$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:981: if(get_receive_capacity(buffer) < len) {
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	push	ar5
	push	ar4
	push	ar3
	lcall	_get_receive_capacity
	mov	r6,dpl
	mov	r7,dph
	pop	ar3
	pop	ar4
	pop	ar5
	mov	a,sp
	mov	r0,a
	add	a,#0xfc
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r1
	mov	@r1,#0x00
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	clr	c
	mov	a,r6
	subb	a,@r0
	mov	a,r7
	inc	r0
	subb	a,@r0
	jnc	00111$
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:983: return USB_READ_BLOCK;
	mov	dpl,#0x01
	sjmp	00117$
00111$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:986: if(len < usb_endpoints[0].xfer_size) {
	mov	dptr,#(_usb_endpoints + 0x000b)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	clr	c
	mov	a,@r0
	subb	a,r6
	inc	r0
	mov	a,@r0
	subb	a,r7
	jnc	00113$
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:987: short_packet = 1;
	mov	r0,sp
	dec	r0
	mov	@r0,#0x01
00113$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:990: res = fill_buffers(buffer, 0, len, short_packet);
	mov	r0,sp
	dec	r0
	mov	a,@r0
	push	acc
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	clr	a
	push	acc
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	_fill_buffers
	mov	r7,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar7
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:992: if(short_packet) {
	mov	r0,sp
	dec	r0
	mov	a,@r0
	jz	00115$
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:994: ep0status = EP_IDLE;
	mov	dptr,#_ep0status
	clr	a
	movx	@dptr,a
	sjmp	00116$
00115$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:997: USBCS0 |= USBCS0_CLR_OUTPKT_RDY;
	mov	dptr,#_USBCS0
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x40
	orl	a,r7
	movx	@dptr,a
00116$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:999: return res;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
00117$:
	mov	a,sp
	add	a,#0xFB
	mov	sp,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ep0_tx'
;------------------------------------------------------------
;buffer                    Allocated to stack - sp -8
;len                       Allocated to stack - sp -5
;data_end                  Allocated to stack - sp -3
;res                       Allocated to stack - sp -2
;copy                      Allocated to stack - sp -1
;sloc0                     Allocated to stack - sp -11
;------------------------------------------------------------
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1003: ep0_tx(void)
;	-----------------------------------------
;	 function ep0_tx
;	-----------------------------------------
_ep0_tx:
	mov	a,sp
	add	a,#0x0C
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1005: USBBuffer *buffer = usb_endpoints[0].buffer;
	mov	sp,a
	mov	dptr,#(_usb_endpoints + 0x0003)
	add	a,#0xf8
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
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1006: unsigned int len = usb_endpoints[0].xfer_size;
	mov	dptr,#(_usb_endpoints + 0x000b)
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	movx	a,@dptr
	mov	@r0,a
	inc	dptr
	movx	a,@dptr
	inc	r0
	mov	@r0,a
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1007: uint8_t data_end = 0;
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	@r0,#0x00
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1008: uint8_t res = 0;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,#0x00
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1011: if((USBCS0 & USBCS0_INPKT_RDY) || (ep0status != EP_TX)) {
	mov	dptr,#_USBCS0
	movx	a,@dptr
	mov	r2,a
	jb	acc.1,00101$
	mov	dptr,#_ep0status
	movx	a,@dptr
	mov	r2,a
	cjne	r2,#0x02,00170$
	sjmp	00102$
00170$:
00101$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1012: return 0;
	mov	dpl,#0x00
	ljmp	00131$
00102$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1015: if(!buffer) {
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1016: return 0;
	jnz	00105$
	mov	dpl,a
	ljmp	00131$
00105$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1019: if(!(buffer->flags & USB_BUFFER_IN)) {
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,#0x08
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
	mov	a,r2
	jb	acc.6,00122$
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1020: return 0;                   // Huh .. problem ... we should TX but queued buffer is in RX ...
	mov	dpl,#0x00
	ljmp	00131$
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1023: while(buffer) {
00122$:
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00173$
	ljmp	00124$
00173$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1026: if(buffer->left < len) {
	mov	a,sp
	add	a,#0xf8
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
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	clr	c
	mov	a,r3
	subb	a,@r0
	mov	a,r4
	inc	r0
	subb	a,@r0
	jnc	00109$
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1027: copy = buffer->left;
	mov	r0,sp
	dec	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	sjmp	00110$
00109$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1029: copy = len;
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	r1,sp
	dec	r1
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
00110$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1032: len -= copy;
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	r1,sp
	dec	r1
	mov	a,@r0
	clr	c
	subb	a,@r1
	mov	@r0,a
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	mov	@r0,a
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1033: buffer->left -= copy;
	mov	a,sp
	add	a,#0xf8
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
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	r0,sp
	dec	r0
	mov	a,r6
	clr	c
	subb	a,@r0
	mov	r6,a
	mov	a,r7
	inc	r0
	subb	a,@r0
	mov	r7,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1034: write_hw_buffer(0, buffer->data, copy);
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,sp
	add	a,#0xf5
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
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
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
	push	ar4
	push	ar3
	push	ar2
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,#0x00
	lcall	_write_hw_buffer
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar2
	pop	ar3
	pop	ar4
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1035: buffer->data += copy;
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
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
	mov	r0,sp
	dec	r0
	mov	a,@r0
	add	a,r5
	mov	r5,a
	inc	r0
	mov	a,@r0
	addc	a,r6
	mov	r6,a
	mov	a,sp
	add	a,#0xf5
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
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1036: if(buffer->left == 0) {
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	orl	a,r2
	jz	00175$
	ljmp	00119$
00175$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1037: if(buffer->flags & USB_BUFFER_SHORT_END) {
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
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
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	a,r5
	jnb	acc.1,00115$
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1038: if(len == 0) {
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00124$
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1041: data_end = 1;
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	@r0,#0x01
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1042: len = 0;              // Stop looking for more data to send
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
00115$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1045: buffer->flags &= ~USB_BUFFER_SUBMITTED;
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
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
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	anl	ar3,#0xFE
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1046: if(buffer->flags & USB_BUFFER_NOTIFY) {
	mov	a,r3
	jnb	acc.3,00117$
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1047: res |= USB_WRITE_NOTIFY;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,@r0
	orl	a,#0x02
	mov	@r0,a
00117$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1049: buffer = buffer->next;
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
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
00119$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1051: if(len == 0) {
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00179$
	ljmp	00122$
00179$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1052: break;                    // FIFO is full, send packet.
00124$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1055: if(len) {
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00126$
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1057: data_end = 1;
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	@r0,#0x01
00126$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1059: usb_endpoints[0].buffer = buffer;
	mov	dptr,#(_usb_endpoints + 0x0003)
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,@r0
	movx	@dptr,a
	inc	r0
	mov	a,@r0
	inc	dptr
	movx	@dptr,a
	inc	r0
	mov	a,@r0
	inc	dptr
	movx	@dptr,a
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1063: if(data_end || !buffer) {
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	jnz	00127$
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00128$
00127$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1064: ep0status = EP_IDLE;
	mov	dptr,#_ep0status
	clr	a
	movx	@dptr,a
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1065: USBCS0 |= USBCS0_INPKT_RDY | USBCS0_DATA_END;
	mov	dptr,#_USBCS0
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x0A
	orl	a,r7
	movx	@dptr,a
	sjmp	00129$
00128$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1067: USBCS0 |= USBCS0_INPKT_RDY;
	mov	dptr,#_USBCS0
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x02
	orl	a,r7
	movx	@dptr,a
00129$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1070: return res;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
00131$:
	mov	a,sp
	add	a,#0xF4
	mov	sp,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usb_arch_ep0_irq'
;------------------------------------------------------------
;cs0                       Allocated to registers r7 
;res                       Allocated to registers r7 
;------------------------------------------------------------
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1074: usb_arch_ep0_irq(void)
;	-----------------------------------------
;	 function usb_arch_ep0_irq
;	-----------------------------------------
_usb_arch_ep0_irq:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1079: USBINDEX = 0;
	mov	dptr,#_USBINDEX
	clr	a
	movx	@dptr,a
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1080: cs0 = USBCS0;
	mov	dptr,#_USBCS0
	movx	a,@dptr
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1081: if(cs0 & USBCS0_SENT_STALL) {
	mov	r7,a
	jnb	acc.2,00102$
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1083: USBCS0 = 0;
	mov	dptr,#_USBCS0
	clr	a
	movx	@dptr,a
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1084: ep0status = EP_IDLE;
	mov	dptr,#_ep0status
	movx	@dptr,a
00102$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1086: if(cs0 & USBCS0_SETUP_END) {
	mov	a,r7
	jnb	acc.4,00104$
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1088: USBCS0 = USBCS0_CLR_SETUP_END;
	mov	dptr,#_USBCS0
	mov	a,#0x80
	movx	@dptr,a
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1089: ep0status = EP_IDLE;
	mov	dptr,#_ep0status
	clr	a
	movx	@dptr,a
00104$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1092: if(cs0 & USBCS0_OUTPKT_RDY) {
	mov	a,r7
	jnb	acc.0,00113$
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1093: if(ep0status == EP_IDLE) {
	mov	dptr,#_ep0status
	movx	a,@dptr
	mov	r7,a
	jnz	00106$
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1094: res = ep0_get_setup_pkt();
	lcall	_ep0_get_setup_pkt
	mov	r7,dpl
	sjmp	00107$
00106$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1096: res = ep0_get_data_pkt();
	lcall	_ep0_get_data_pkt
	mov	r6,dpl
	mov	ar7,r6
00107$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1099: if(res & USB_READ_NOTIFY) {
	mov	a,r7
	jnb	acc.1,00109$
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1100: notify_ep_process(&usb_endpoints[0], USB_EP_EVENT_NOTIFICATION);
	push	ar7
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	mov	dptr,#_usb_endpoints
	mov	b,#0x00
	lcall	_notify_ep_process
	dec	sp
	dec	sp
	pop	ar7
00109$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1102: if(res & USB_READ_BLOCK) {
	mov	a,r7
	jnb	acc.0,00113$
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1103: return;
	ret
00113$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1107: res = ep0_tx();
	lcall	_ep0_tx
	mov	r6,dpl
	mov	ar7,r6
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1109: if(res & USB_WRITE_NOTIFY) {
	mov	a,r7
	jnb	acc.1,00116$
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1110: notify_ep_process(&usb_endpoints[0], USB_EP_EVENT_NOTIFICATION);
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	mov	dptr,#_usb_endpoints
	mov	b,#0x00
	lcall	_notify_ep_process
	dec	sp
	dec	sp
00116$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ep_tx'
;------------------------------------------------------------
;ep_hw                     Allocated to stack - sp -9
;len                       Allocated to stack - sp -4
;res                       Allocated to stack - sp -2
;ep                        Allocated to registers r4 r3 r5 
;copy                      Allocated to stack - sp -1
;sloc0                     Allocated to stack - sp -8
;sloc1                     Allocated to stack - sp -5
;------------------------------------------------------------
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1116: ep_tx(uint8_t ep_hw)
;	-----------------------------------------
;	 function ep_tx
;	-----------------------------------------
_ep_tx:
	push	dpl
	mov	a,sp
	add	a,#0x09
	mov	sp,a
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1119: uint8_t res = 0;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,#0x00
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1120: USBEndpoint *ep = EP_STRUCT(ep_hw);
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	a,#0x7F
	anl	a,@r0
	mov	b,#0x0D
	mul	ab
	add	a,#_usb_endpoints
	mov	r4,a
	mov	a,#(_usb_endpoints >> 8)
	addc	a,b
	mov	r3,a
	mov	r5,#0x00
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1122: len = ep->xfer_size;
	mov	a,#0x0B
	add	a,r4
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r5
	mov	dpl,r2
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
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1124: if(ep->halted) {
	mov	dpl,r4
	mov	dph,r3
	mov	b,r5
	lcall	__gptrget
	jz	00102$
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1125: return 0;
	mov	dpl,#0x00
	ljmp	00123$
00102$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1128: if(!ep->buffer || !(ep->buffer->flags & USB_BUFFER_IN)) {
	mov	a,#0x03
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r4
	mov	dph,r3
	mov	b,r5
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,r2
	orl	a,r6
	jz	00103$
	mov	a,#0x08
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	a,r2
	jb	acc.6,00133$
00103$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1129: return 0;
	mov	dpl,#0x00
	ljmp	00123$
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1132: while(ep->buffer) {
00133$:
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	a,sp
	add	a,#0xfb
	mov	r1,a
	mov	a,#0x7F
	anl	a,@r0
	mov	@r1,a
00120$:
	mov	dpl,r4
	mov	dph,r3
	mov	b,r5
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,r2
	orl	a,r6
	jnz	00155$
	ljmp	00122$
00155$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1135: if(ep->buffer->left < len) {
	mov	a,#0x06
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,sp
	add	a,#0xfc
	mov	r1,a
	clr	c
	mov	a,@r0
	subb	a,@r1
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	jnc	00107$
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1136: copy = ep->buffer->left;
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	r0,sp
	dec	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	sjmp	00108$
00107$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1138: copy = len;
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	r1,sp
	dec	r1
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
00108$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1141: len -= copy;
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	r1,sp
	dec	r1
	mov	a,@r0
	clr	c
	subb	a,@r1
	mov	@r0,a
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	mov	@r0,a
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1142: ep->buffer->left -= copy;
	mov	dpl,r4
	mov	dph,r3
	mov	b,r5
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,#0x06
	add	a,r2
	mov	@r0,a
	clr	a
	addc	a,r6
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar7
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
	mov	r0,sp
	dec	r0
	mov	a,r6
	clr	c
	subb	a,@r0
	mov	r6,a
	mov	a,r7
	inc	r0
	subb	a,@r0
	mov	r7,a
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
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1143: write_hw_buffer(EP_INDEX(ep_hw), ep->buffer->data, copy);
	mov	dpl,r4
	mov	dph,r3
	mov	b,r5
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,#0x03
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r6,a
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
	push	ar5
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
	push	ar2
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	mov	dpl,@r0
	lcall	_write_hw_buffer
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar3
	pop	ar4
	pop	ar5
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1144: ep->buffer->data += copy;
	mov	dpl,r4
	mov	dph,r3
	mov	b,r5
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,#0x03
	add	a,r2
	mov	@r0,a
	clr	a
	addc	a,r6
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar7
	mov	a,sp
	add	a,#0xf8
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
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	r0,sp
	dec	r0
	mov	a,@r0
	add	a,r2
	mov	r2,a
	inc	r0
	mov	a,@r0
	addc	a,r6
	mov	r6,a
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1146: if(ep->buffer->left == 0) {
	mov	dpl,r4
	mov	dph,r3
	mov	b,r5
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	push	ar4
	push	ar3
	push	ar5
	mov	a,#0x06
	add	a,r2
	mov	r3,a
	clr	a
	addc	a,r6
	mov	r4,a
	mov	ar5,r7
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	orl	a,r3
	pop	ar5
	pop	ar3
	pop	ar4
	jz	00157$
	ljmp	00117$
00157$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1147: if(ep->buffer->flags & USB_BUFFER_SHORT_END) {
	mov	a,#0x08
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	a,r2
	jnb	acc.1,00113$
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1148: if(len == 0) {
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00159$
	ljmp	00122$
00159$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1151: len = 0;              // Stop looking for more data to send
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
00113$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1154: ep->buffer->flags &= ~USB_BUFFER_SUBMITTED;
	mov	dpl,r4
	mov	dph,r3
	mov	b,r5
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,#0x08
	add	a,r2
	mov	@r0,a
	clr	a
	addc	a,r6
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar7
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
	anl	ar6,#0xFE
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
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1155: if(ep->buffer->flags & USB_BUFFER_NOTIFY) {
	mov	dpl,r4
	mov	dph,r3
	mov	b,r5
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,#0x08
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	a,r2
	jnb	acc.3,00115$
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1156: res |= USB_WRITE_NOTIFY;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,@r0
	orl	a,#0x02
	mov	@r0,a
00115$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1158: ep->buffer = ep->buffer->next;
	mov	dpl,r4
	mov	dph,r3
	mov	b,r5
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
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
	mov	dpl,r4
	mov	dph,r3
	mov	b,r5
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
00117$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1160: if(len == 0)
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00161$
	ljmp	00120$
00161$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1161: break;                    // FIFO is full, send packet.
00122$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1164: USBCSIL |= USBCSIL_INPKT_RDY;
	mov	dptr,#_USBCSIL
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x01
	orl	a,r7
	movx	@dptr,a
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1166: return res;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
00123$:
	mov	a,sp
	add	a,#0xF6
	mov	sp,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ep_get_data_pkt'
;------------------------------------------------------------
;ep_hw                     Allocated to stack - sp -10
;pkt_len                   Allocated to stack - sp -5
;res                       Allocated to registers r7 
;short_packet              Allocated to stack - sp -3
;ep                        Allocated to stack - sp -2
;sloc0                     Allocated to stack - sp -8
;sloc1                     Allocated to stack - sp -9
;------------------------------------------------------------
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1171: ep_get_data_pkt(uint8_t ep_hw)
;	-----------------------------------------
;	 function ep_get_data_pkt
;	-----------------------------------------
_ep_get_data_pkt:
	push	dpl
	mov	a,sp
	add	a,#0x0A
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1175: uint8_t short_packet = 0;
	mov	sp,a
	add	a,#0xfd
	mov	r0,a
	mov	@r0,#0x00
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1176: USBEndpoint *ep = EP_STRUCT(ep_hw);
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	a,#0x7F
	anl	a,@r0
	mov	b,#0x0D
	mul	ab
	add	a,#_usb_endpoints
	mov	r4,a
	mov	a,#(_usb_endpoints >> 8)
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
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1178: if(!ep->buffer) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x03
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
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
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
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00102$
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1179: return USB_READ_BLOCK;
	mov	dpl,#0x01
	ljmp	00111$
00102$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1182: if(ep->buffer->flags & USB_BUFFER_HALT) {
	push	ar2
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	a,#0x08
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
	lcall	__gptrget
	inc	dptr
	lcall	__gptrget
	pop	ar7
	pop	ar6
	pop	ar2
	jnb	acc.0,00106$
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1183: ep->halted = 1;
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
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1184: if(!(USBCSOL & USBCSOL_SEND_STALL)) {
	mov	dptr,#_USBCSOL
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	movx	a,@dptr
	mov	@r0,a
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	a,@r0
	jb	acc.5,00104$
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1185: USBCSOL |= USBCSOL_SEND_STALL;
	mov	dptr,#_USBCSOL
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	movx	a,@dptr
	mov	@r0,a
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	a,#0x20
	orl	a,@r0
	movx	@dptr,a
00104$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1187: return 0;
	mov	dpl,#0x00
	ljmp	00111$
00106$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1190: pkt_len = USBCNTL | (USBCNTH << 8);
	push	ar2
	push	ar6
	push	ar7
	mov	dptr,#_USBCNTH
	movx	a,@dptr
	mov	r6,a
	mov	r7,#0x00
	mov	dptr,#_USBCNTL
	movx	a,@dptr
	mov	r2,a
	mov	r5,#0x00
	orl	ar7,a
	mov	a,r5
	orl	ar6,a
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	@r0,ar7
	inc	r0
	mov	@r0,ar6
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1191: if(get_receive_capacity(ep->buffer) < pkt_len) {
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	push	ar2
	lcall	_get_receive_capacity
	mov	r6,dpl
	mov	r7,dph
	pop	ar2
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	clr	c
	mov	a,r6
	subb	a,@r0
	mov	a,r7
	inc	r0
	subb	a,@r0
	pop	ar7
	pop	ar6
	pop	ar2
	jnc	00108$
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1192: return USB_READ_BLOCK;
	mov	dpl,#0x01
	ljmp	00111$
00108$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1195: if(pkt_len < ep->xfer_size) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x0B
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
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	clr	c
	mov	a,@r0
	subb	a,r3
	inc	r0
	mov	a,@r0
	subb	a,r4
	jnc	00110$
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1196: short_packet = 1;
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	@r0,#0x01
00110$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1199: res = fill_buffers(ep->buffer, ep_hw, pkt_len, short_packet);
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
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	push	acc
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	lcall	_fill_buffers
	mov	r7,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1201: USBCSOL &= ~USBCSOL_OUTPKT_RDY;
	mov	dptr,#_USBCSOL
	movx	a,@dptr
	mov	r6,a
	mov	a,#0xFE
	anl	a,r6
	movx	@dptr,a
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1203: return res;
	mov	dpl,r7
00111$:
	mov	a,sp
	add	a,#0xF5
	mov	sp,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usb_arch_epout_irq'
;------------------------------------------------------------
;ep_hw                     Allocated to registers r7 
;csl                       Allocated to registers r3 
;res                       Allocated to registers r7 
;ep                        Allocated to registers r5 r4 r6 
;------------------------------------------------------------
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1207: usb_arch_epout_irq(uint8_t ep_hw)
;	-----------------------------------------
;	 function usb_arch_epout_irq
;	-----------------------------------------
_usb_arch_epout_irq:
	mov	r7,dpl
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1212: USBEndpoint *ep = EP_STRUCT(ep_hw);
	mov	a,#0x7F
	anl	a,r7
	mov	b,#0x0D
	mul	ab
	add	a,#_usb_endpoints
	mov	r5,a
	mov	a,#(_usb_endpoints >> 8)
	addc	a,b
	mov	r4,a
	mov	r6,#0x00
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1215: USBINDEX = ep_hw;
	mov	dptr,#_USBINDEX
	mov	a,r7
	movx	@dptr,a
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1216: csl = USBCSOL;
	mov	dptr,#_USBCSOL
	movx	a,@dptr
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1218: if(csl & USBCSOL_SENT_STALL) {
	mov	r3,a
	jnb	acc.6,00102$
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1219: USBCSOL &= ~USBCSOL_SENT_STALL;
	mov	dptr,#_USBCSOL
	movx	a,@dptr
	mov	r2,a
	mov	a,#0xBF
	anl	a,r2
	movx	@dptr,a
00102$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1222: if(csl & USBCSOL_OVERRUN) {
	mov	a,r3
	jnb	acc.2,00104$
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1224: USBCSOL &= ~USBCSOL_OVERRUN;
	mov	dptr,#_USBCSOL
	movx	a,@dptr
	mov	r2,a
	mov	a,#0xFB
	anl	a,r2
	movx	@dptr,a
00104$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1227: if(csl & USBCSOL_OUTPKT_RDY) {
	mov	a,r3
	jnb	acc.0,00109$
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1228: res = ep_get_data_pkt(ep_hw);
	mov	dpl,r7
	push	ar6
	push	ar5
	push	ar4
	lcall	_ep_get_data_pkt
	mov	r7,dpl
	pop	ar4
	pop	ar5
	pop	ar6
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1230: if(res & USB_READ_NOTIFY) {
	mov	a,r7
	jnb	acc.1,00109$
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1231: notify_ep_process(ep, USB_EP_EVENT_NOTIFICATION);
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	mov	dpl,r5
	mov	dph,r4
	mov	b,r6
	lcall	_notify_ep_process
	dec	sp
	dec	sp
00109$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usb_arch_epin_irq'
;------------------------------------------------------------
;ep_hw                     Allocated to registers r7 
;csl                       Allocated to registers r3 
;res                       Allocated to registers r7 
;ep                        Allocated to registers r5 r4 r6 
;------------------------------------------------------------
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1237: usb_arch_epin_irq(uint8_t ep_hw)
;	-----------------------------------------
;	 function usb_arch_epin_irq
;	-----------------------------------------
_usb_arch_epin_irq:
	mov	r7,dpl
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1241: USBEndpoint *ep = EP_STRUCT(ep_hw);
	mov	a,#0x7F
	anl	a,r7
	mov	b,#0x0D
	mul	ab
	add	a,#_usb_endpoints
	mov	r5,a
	mov	a,#(_usb_endpoints >> 8)
	addc	a,b
	mov	r4,a
	mov	r6,#0x00
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1245: USBINDEX = ep_hw;
	mov	dptr,#_USBINDEX
	mov	a,r7
	movx	@dptr,a
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1246: csl = USBCSIL;
	mov	dptr,#_USBCSIL
	movx	a,@dptr
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1248: if(csl & USBCSIL_SENT_STALL) {
	mov	r3,a
	jnb	acc.5,00102$
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1249: USBCSIL &= ~USBCSIL_SENT_STALL;
	mov	dptr,#_USBCSIL
	movx	a,@dptr
	mov	r2,a
	mov	a,#0xDF
	anl	a,r2
	movx	@dptr,a
00102$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1252: if(csl & USBCSIL_UNDERRUN) {
	mov	a,r3
	jnb	acc.2,00104$
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1253: USBCSIL &= ~USBCSIL_UNDERRUN;
	mov	dptr,#_USBCSIL
	movx	a,@dptr
	mov	r2,a
	mov	a,#0xFB
	anl	a,r2
	movx	@dptr,a
00104$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1256: if(!(csl & USBCSIL_INPKT_RDY)) {
	mov	a,r3
	jb	acc.0,00109$
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1257: res = ep_tx(ep_hw);
	mov	dpl,r7
	push	ar6
	push	ar5
	push	ar4
	lcall	_ep_tx
	mov	r7,dpl
	pop	ar4
	pop	ar5
	pop	ar6
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1258: if(res & USB_WRITE_NOTIFY) {
	mov	a,r7
	jnb	acc.1,00109$
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1259: notify_ep_process(ep, USB_EP_EVENT_NOTIFICATION);
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	mov	dpl,r5
	mov	dph,r4
	mov	b,r6
	lcall	_notify_ep_process
	dec	sp
	dec	sp
00109$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usb_irq'
;------------------------------------------------------------
;ep_in_if                  Allocated to registers r7 
;ep_out_if                 Allocated to stack - sp +0
;common_if                 Allocated to registers r5 
;i                         Allocated to registers r4 
;------------------------------------------------------------
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1270: usb_irq(void)
;	-----------------------------------------
;	 function usb_irq
;	-----------------------------------------
_usb_irq:
	inc	sp
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1272: uint8_t ep_in_if = USBIIF & USBIIE;
	mov	dptr,#_USBIIF
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_USBIIE
	movx	a,@dptr
	anl	ar7,a
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1273: uint8_t ep_out_if = USBOIF & USBOIE;
	mov	dptr,#_USBOIF
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_USBOIE
	movx	a,@dptr
	anl	ar6,a
	mov	r0,sp
	mov	@r0,ar6
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1274: uint8_t common_if = USBCIF & USBCIE;
	mov	dptr,#_USBCIF
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_USBCIE
	movx	a,@dptr
	mov	r4,a
	anl	ar5,a
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1277: if(ep_in_if) {
	mov	a,r7
	jz	00107$
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1279: if(ep_in_if & 0x1) {
	mov	a,r7
	jnb	acc.0,00136$
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1280: usb_arch_ep0_irq();
	push	ar7
	push	ar5
	lcall	_usb_arch_ep0_irq
	pop	ar5
	pop	ar7
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1282: for(i = 1; i < 6; i++) {
00136$:
	mov	r4,#0x01
00119$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1283: if(ep_in_if & EPxIF(i)) {
	push	ar5
	mov	b,r4
	inc	b
	mov	r2,#0x01
	mov	r3,#0x00
	sjmp	00175$
00174$:
	mov	a,r2
	add	a,r2
	mov	r2,a
	mov	a,r3
	rlc	a
	mov	r3,a
00175$:
	djnz	b,00174$
	mov	ar5,r7
	mov	r6,#0x00
	mov	a,r5
	anl	ar2,a
	mov	a,r6
	anl	ar3,a
	pop	ar5
	mov	a,r2
	orl	a,r3
	jz	00120$
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1284: usb_arch_epin_irq(i);
	mov	dpl,r4
	push	ar7
	push	ar5
	push	ar4
	lcall	_usb_arch_epin_irq
	pop	ar4
	pop	ar5
	pop	ar7
00120$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1282: for(i = 1; i < 6; i++) {
	inc	r4
	cjne	r4,#0x06,00177$
00177$:
	jc	00119$
00107$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1288: if(ep_out_if) {
	mov	r0,sp
	mov	a,@r0
	jz	00112$
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1289: for(i = 1; i < 6; i++) {
	mov	r6,#0x01
00121$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1290: if(ep_out_if & EPxIF(i)) {
	push	ar5
	mov	b,r6
	inc	b
	mov	r3,#0x01
	mov	r4,#0x00
	sjmp	00181$
00180$:
	mov	a,r3
	add	a,r3
	mov	r3,a
	mov	a,r4
	rlc	a
	mov	r4,a
00181$:
	djnz	b,00180$
	mov	r0,sp
	dec	r0
	mov	ar2,@r0
	mov	r5,#0x00
	mov	a,r2
	anl	ar3,a
	mov	a,r5
	anl	ar4,a
	pop	ar5
	mov	a,r3
	orl	a,r4
	jz	00122$
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1291: usb_arch_epout_irq(i);
	mov	dpl,r6
	push	ar7
	push	ar6
	push	ar5
	lcall	_usb_arch_epout_irq
	pop	ar5
	pop	ar6
	pop	ar7
00122$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1289: for(i = 1; i < 6; i++) {
	inc	r6
	cjne	r6,#0x06,00183$
00183$:
	jc	00121$
00112$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1295: if(common_if & RSTIF) {
	mov	a,r5
	jnb	acc.2,00114$
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1296: usb_arch_reset();
	push	ar7
	push	ar5
	lcall	_usb_arch_reset
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1297: notify_process(USB_EVENT_RESET);
	mov	dptr,#0x0008
	lcall	_notify_process
	pop	ar5
	pop	ar7
00114$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1299: if(common_if & RESUMEIF) {
	mov	a,r5
	jnb	acc.1,00116$
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1300: notify_process(USB_EVENT_RESUME);
	mov	dptr,#0x0004
	push	ar7
	push	ar5
	lcall	_notify_process
	pop	ar5
	pop	ar7
00116$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1302: if(common_if & SUSPENDIF) {
	mov	ar6,r5
	mov	a,r6
	jnb	acc.0,00118$
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1303: notify_process(USB_EVENT_SUSPEND);
	mov	dptr,#0x0002
	push	ar7
	push	ar5
	lcall	_notify_process
	pop	ar5
	pop	ar7
00118$:
;	../contiki-sensinode/cpu/cc253x/usb/usb-arch.c:1306: return ep_in_if || ep_out_if || common_if ? CC253x_P2_ACK : CC253x_P2_NACK;
	mov	a,r7
	jnz	00128$
	mov	r0,sp
	mov	a,@r0
	jnz	00128$
	mov	a,r5
	jz	00125$
00128$:
	mov	r7,#0x01
	sjmp	00126$
00125$:
	mov	r7,#0x00
00126$:
	mov	dpl,r7
	dec	sp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
_ep_xfer_size:
	.byte #0x08,#0x00	; 8
	.byte #0x20,#0x00	; 32
	.byte #0x40,#0x00	; 64
	.byte #0x40,#0x00	; 64
	.byte #0x00,#0x00	; 0
	.byte #0x00,#0x00	; 0
	.area XINIT   (CODE)
__xinit__usb_irq_handler:
; generic printIvalPtr
	.byte #0x00,#0x00,#0x00
	.byte _usb_irq,(_usb_irq >> 8)
__xinit__event_process:
; generic printIvalPtr
	.byte #0x00,#0x00,#0x00
__xinit__events:
	.byte #0x00,#0x00	; 0
	.area CABS    (ABS,CODE)
