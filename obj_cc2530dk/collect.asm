;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.4.0 #8981 (Oct 24 2015) (Linux)
; This file was generated Sun Oct 25 01:52:02 2015
;--------------------------------------------------------
	.module collect
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _collect_purge
	.globl _printf
	.globl _random_rand
	.globl _packetqueue_queuebuf
	.globl _packetqueue_len
	.globl _packetqueue_dequeue
	.globl _packetqueue_first
	.globl _packetqueue_enqueue_packetbuf
	.globl _collect_neighbor_rtmetric
	.globl _collect_neighbor_rtmetric_link_estimate
	.globl _collect_neighbor_set_congested
	.globl _collect_neighbor_tx_fail
	.globl _collect_neighbor_tx
	.globl _collect_neighbor_update_rtmetric
	.globl _collect_neighbor_list_purge
	.globl _collect_neighbor_list_best
	.globl _collect_neighbor_list_find
	.globl _collect_neighbor_list_add
	.globl _collect_neighbor_list_new
	.globl _collect_neighbor_list
	.globl _collect_neighbor_init
	.globl _list_item_next
	.globl _list_head
	.globl _list_init
	.globl _collect_link_estimate_num_estimates
	.globl _queuebuf_free
	.globl _queuebuf_to_packetbuf
	.globl _queuebuf_new_from_packetbuf
	.globl _unicast_send
	.globl _unicast_close
	.globl _unicast_open
	.globl _channel_set_attributes
	.globl _packetbuf_addr
	.globl _packetbuf_set_addr
	.globl _packetbuf_attr
	.globl _packetbuf_set_attr
	.globl _packetbuf_hdrreduce
	.globl _packetbuf_hdralloc
	.globl _packetbuf_set_datalen
	.globl _packetbuf_datalen
	.globl _packetbuf_dataptr
	.globl _packetbuf_clear
	.globl _announcement_bump
	.globl _announcement_set_value
	.globl _announcement_remove
	.globl _announcement_register
	.globl _rimeaddr_cmp
	.globl _rimeaddr_copy
	.globl _ctimer_stop
	.globl _ctimer_set
	.globl _clock_time
	.globl _memset
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
	.globl _stats
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
	.globl _collect_open
	.globl _collect_set_keepalive
	.globl _collect_close
	.globl _collect_set_sink
	.globl _collect_send
	.globl _collect_depth
	.globl _collect_parent
	.globl _collect_print_stats
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
_recent_packets:
	.ds 96
_recent_packet_ptr:
	.ds 1
_send_queue_memb_memb_count:
	.ds 6
_send_queue_memb_memb_mem:
	.ds 198
_stats::
	.ds 56
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_send_queue_memb:
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
;Allocation info for local variables in function 'rtmetric_compute'
;------------------------------------------------------------
;tc                        Allocated to registers r5 r6 r7 
;n                         Allocated to registers r5 r6 r7 
;rtmetric                  Allocated to registers r3 r4 
;------------------------------------------------------------
;	../contiki-sensinode/core/net/rime/collect.c:218: rtmetric_compute(struct collect_conn *tc)
;	-----------------------------------------
;	 function rtmetric_compute
;	-----------------------------------------
_rtmetric_compute:
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
;	../contiki-sensinode/core/net/rime/collect.c:230: n = collect_neighbor_list_find(&tc->neighbor_list, &tc->parent);
	mov	a,#0x9C
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	a,#0x55
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	push	ar2
	push	ar3
	push	ar4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_collect_neighbor_list_find
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	dec	sp
	dec	sp
	dec	sp
;	../contiki-sensinode/core/net/rime/collect.c:234: if(n == NULL) {
	mov	a,r5
	orl	a,r6
	jnz	00102$
;	../contiki-sensinode/core/net/rime/collect.c:235: rtmetric = RTMETRIC_MAX;
	mov	r3,#0xFF
	mov	r4,#0x01
	sjmp	00103$
00102$:
;	../contiki-sensinode/core/net/rime/collect.c:239: rtmetric = collect_neighbor_rtmetric_link_estimate(n);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_collect_neighbor_rtmetric_link_estimate
	mov	r6,dpl
	mov	r7,dph
	mov	ar3,r6
	mov	ar4,r7
00103$:
;	../contiki-sensinode/core/net/rime/collect.c:242: return rtmetric;
	mov	dpl,r3
	mov	dph,r4
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'bump_advertisement'
;------------------------------------------------------------
;c                         Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../contiki-sensinode/core/net/rime/collect.c:251: bump_advertisement(struct collect_conn *c)
;	-----------------------------------------
;	 function bump_advertisement
;	-----------------------------------------
_bump_advertisement:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../contiki-sensinode/core/net/rime/collect.c:256: announcement_bump(&c->announcement);
	mov	a,#0x12
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	ljmp	_announcement_bump
;------------------------------------------------------------
;Allocation info for local variables in function 'update_parent'
;------------------------------------------------------------
;tc                        Allocated to stack - sp -7
;current                   Allocated to registers r5 r6 r7 
;best                      Allocated to stack - sp -4
;previous_parent           Allocated to stack - sp -1
;sloc0                     Allocated to stack - sp +4
;sloc1                     Allocated to stack - sp +7
;------------------------------------------------------------
;	../contiki-sensinode/core/net/rime/collect.c:268: update_parent(struct collect_conn *tc)
;	-----------------------------------------
;	 function update_parent
;	-----------------------------------------
_update_parent:
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x05
;	../contiki-sensinode/core/net/rime/collect.c:274: current = collect_neighbor_list_find(&tc->neighbor_list, &tc->parent);
	mov	sp,a
	add	a,#0xf9
	mov	r0,a
	mov	a,#0x9C
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	a,#0x55
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
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_collect_neighbor_list_find
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	dec	sp
	dec	sp
	dec	sp
;	../contiki-sensinode/core/net/rime/collect.c:278: best = collect_neighbor_list_best(&tc->neighbor_list);
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	a,#0x55
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
	push	ar7
	push	ar6
	push	ar5
	lcall	_collect_neighbor_list_best
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
;	../contiki-sensinode/core/net/rime/collect.c:297: if(best != NULL) {
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00142$
	ljmp	00126$
00142$:
;	../contiki-sensinode/core/net/rime/collect.c:304: if(current == NULL) {
	mov	a,r5
	orl	a,r6
	jnz	00104$
;	../contiki-sensinode/core/net/rime/collect.c:308: rimeaddr_copy(&tc->parent, &best->addr);
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,#0x03
	add	a,@r0
	mov	r7,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar5,@r0
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	a,#0x9C
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	push	ar7
	push	ar6
	push	ar5
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_rimeaddr_copy
	dec	sp
	dec	sp
	dec	sp
;	../contiki-sensinode/core/net/rime/collect.c:309: stats.foundroute++;
	mov	dptr,#_stats
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	r7
	cjne	r7,#0x00,00144$
	inc	r6
	cjne	r6,#0x00,00144$
	inc	r5
	cjne	r5,#0x00,00144$
	inc	r4
00144$:
	mov	dptr,#_stats
	mov	a,r7
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	../contiki-sensinode/core/net/rime/collect.c:310: bump_advertisement(tc);
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_bump_advertisement
	ljmp	00128$
;	../contiki-sensinode/core/net/rime/collect.c:313: printf("#A e=%d\n", collect_neighbor_link_estimate(best));
00104$:
;	../contiki-sensinode/core/net/rime/collect.c:315: if(collect_neighbor_rtmetric_link_estimate(best) +
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	push	ar7
	push	ar6
	push	ar5
	lcall	_collect_neighbor_rtmetric_link_estimate
	mov	a,dpl
	mov	b,dph
	pop	ar5
	pop	ar6
	pop	ar7
	add	a,#0x0C
	mov	r3,a
	clr	a
	addc	a,b
	mov	r4,a
;	../contiki-sensinode/core/net/rime/collect.c:317: collect_neighbor_rtmetric_link_estimate(current)) {
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar4
	push	ar3
	lcall	_collect_neighbor_rtmetric_link_estimate
	mov	r6,dpl
	mov	r7,dph
	pop	ar3
	pop	ar4
	clr	c
	mov	a,r3
	subb	a,r6
	mov	a,r4
	subb	a,r7
	jc	00145$
	ljmp	00128$
00145$:
;	../contiki-sensinode/core/net/rime/collect.c:325: rimeaddr_copy(&tc->parent, &best->addr);
	mov	a,sp
	add	a,#0xfc
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
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	a,#0x9C
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
;	../contiki-sensinode/core/net/rime/collect.c:326: stats.newparent++;
	mov	dptr,#(_stats + 0x0004)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	r4
	cjne	r4,#0x00,00146$
	inc	r5
	cjne	r5,#0x00,00146$
	inc	r6
	cjne	r6,#0x00,00146$
	inc	r7
00146$:
	mov	dptr,#(_stats + 0x0004)
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../contiki-sensinode/core/net/rime/collect.c:329: bump_advertisement(tc);
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_bump_advertisement
;	../contiki-sensinode/core/net/rime/collect.c:331: if(DRAW_TREE) {
	ljmp	00128$
;	../contiki-sensinode/core/net/rime/collect.c:365: printf("#L %d 1\n", tc->parent.u8[0]);
00126$:
;	../contiki-sensinode/core/net/rime/collect.c:370: if(!rimeaddr_cmp(&tc->parent, &rimeaddr_null)) {
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	a,#0x9C
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
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
	jnz	00124$
;	../contiki-sensinode/core/net/rime/collect.c:374: stats.routelost++;
	mov	dptr,#(_stats + 0x0008)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	r4
	cjne	r4,#0x00,00148$
	inc	r5
	cjne	r5,#0x00,00148$
	inc	r6
	cjne	r6,#0x00,00148$
	inc	r7
00148$:
	mov	dptr,#(_stats + 0x0008)
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
00124$:
;	../contiki-sensinode/core/net/rime/collect.c:376: rimeaddr_copy(&tc->parent, &rimeaddr_null);
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	a,#0x9C
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,#_rimeaddr_null
	push	acc
	mov	a,#(_rimeaddr_null >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_rimeaddr_copy
	dec	sp
	dec	sp
	dec	sp
00128$:
	mov	a,sp
	add	a,#0xF8
	mov	sp,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'update_rtmetric'
;------------------------------------------------------------
;tc                        Allocated to stack - sp -4
;old_rtmetric              Allocated to stack - sp -1
;new_rtmetric              Allocated to registers r6 r7 
;sloc0                     Allocated to stack - sp +3
;------------------------------------------------------------
;	../contiki-sensinode/core/net/rime/collect.c:389: update_rtmetric(struct collect_conn *tc)
;	-----------------------------------------
;	 function update_rtmetric
;	-----------------------------------------
_update_rtmetric:
	push	dpl
	push	dph
	push	b
	inc	sp
	inc	sp
;	../contiki-sensinode/core/net/rime/collect.c:394: if(tc->rtmetric != RTMETRIC_SINK) {
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,#0xA0
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
	orl	a,r7
	jnz	00131$
	ljmp	00114$
00131$:
;	../contiki-sensinode/core/net/rime/collect.c:398: old_rtmetric = tc->rtmetric;
	mov	r0,sp
	dec	r0
	mov	@r0,ar7
	inc	r0
	mov	@r0,ar6
;	../contiki-sensinode/core/net/rime/collect.c:401: update_parent(tc);
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	push	ar4
	push	ar3
	push	ar2
	lcall	_update_parent
	pop	ar2
	pop	ar3
	pop	ar4
;	../contiki-sensinode/core/net/rime/collect.c:404: new_rtmetric = rtmetric_compute(tc);
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	push	ar4
	push	ar3
	push	ar2
	lcall	_rtmetric_compute
	mov	r6,dpl
	mov	r7,dph
	pop	ar2
	pop	ar3
	pop	ar4
;	../contiki-sensinode/core/net/rime/collect.c:407: if(new_rtmetric == RTMETRIC_SINK) {
	mov	a,r6
	orl	a,r7
	jnz	00102$
;	../contiki-sensinode/core/net/rime/collect.c:413: new_rtmetric = RTMETRIC_MAX;
	mov	r6,#0xFF
	mov	r7,#0x01
00102$:
;	../contiki-sensinode/core/net/rime/collect.c:418: tc->rtmetric = new_rtmetric;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	../contiki-sensinode/core/net/rime/collect.c:420: if(tc->is_router) {
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,#0xA7
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
	pop	ar7
	pop	ar6
	jz	00104$
;	../contiki-sensinode/core/net/rime/collect.c:423: announcement_set_value(&tc->announcement, tc->rtmetric);
	push	ar6
	push	ar7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,#0x12
	add	a,@r0
	mov	r4,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar7,@r0
	push	ar7
	push	ar6
	push	ar2
	push	ar3
	mov	dpl,r4
	mov	dph,r5
	mov	b,r7
	lcall	_announcement_set_value
	dec	sp
	dec	sp
	pop	ar6
	pop	ar7
;	../contiki-sensinode/core/net/rime/collect.c:440: printf("#A rt=%d,p=%d\n", tc->rtmetric, tc->parent.u8[0]);
	pop	ar7
	pop	ar6
;	../contiki-sensinode/core/net/rime/collect.c:423: announcement_set_value(&tc->announcement, tc->rtmetric);
00104$:
;	../contiki-sensinode/core/net/rime/collect.c:434: if(old_rtmetric == RTMETRIC_MAX && new_rtmetric != RTMETRIC_MAX) {
	mov	r0,sp
	dec	r0
	cjne	@r0,#0xFF,00114$
	inc	r0
	cjne	@r0,#0x01,00114$
	cjne	r6,#0xFF,00136$
	cjne	r7,#0x01,00136$
	sjmp	00114$
00136$:
;	../contiki-sensinode/core/net/rime/collect.c:436: send_queued_packet(tc);
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_send_queued_packet
;	../contiki-sensinode/core/net/rime/collect.c:440: printf("#A rt=%d,p=%d\n", tc->rtmetric, tc->parent.u8[0]);
00114$:
	mov	a,sp
	add	a,#0xFB
	mov	sp,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'enqueue_dummy_packet'
;------------------------------------------------------------
;rexmits                   Allocated to stack - sp -8
;c                         Allocated to stack - sp -4
;n                         Allocated to registers r5 r6 r7 
;sloc0                     Allocated to stack - sp -1
;------------------------------------------------------------
;	../contiki-sensinode/core/net/rime/collect.c:447: enqueue_dummy_packet(struct collect_conn *c, int rexmits)
;	-----------------------------------------
;	 function enqueue_dummy_packet
;	-----------------------------------------
_enqueue_dummy_packet:
	push	dpl
	push	dph
	push	b
	inc	sp
	inc	sp
;	../contiki-sensinode/core/net/rime/collect.c:451: packetbuf_clear();
	lcall	_packetbuf_clear
;	../contiki-sensinode/core/net/rime/collect.c:452: packetbuf_set_attr(PACKETBUF_ATTR_EPACKET_ID, c->eseqno - 1);
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,#0xA6
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
	mov	r4,#0x00
	dec	r2
	cjne	r2,#0xFF,00108$
	dec	r4
00108$:
	push	ar2
	push	ar4
	mov	dpl,#0x15
	lcall	_packetbuf_set_attr
	dec	sp
	dec	sp
;	../contiki-sensinode/core/net/rime/collect.c:453: packetbuf_set_addr(PACKETBUF_ADDR_ESENDER, &rimeaddr_node_addr);
	mov	a,#_rimeaddr_node_addr
	push	acc
	mov	a,#(_rimeaddr_node_addr >> 8)
	push	acc
	clr	a
	push	acc
	mov	dpl,#0x1A
	lcall	_packetbuf_set_addr
	dec	sp
	dec	sp
	dec	sp
;	../contiki-sensinode/core/net/rime/collect.c:454: packetbuf_set_attr(PACKETBUF_ATTR_HOPS, 1);
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	mov	dpl,#0x13
	lcall	_packetbuf_set_attr
	dec	sp
	dec	sp
;	../contiki-sensinode/core/net/rime/collect.c:455: packetbuf_set_attr(PACKETBUF_ATTR_TTL, 1);
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	mov	dpl,#0x14
	lcall	_packetbuf_set_attr
	dec	sp
	dec	sp
;	../contiki-sensinode/core/net/rime/collect.c:456: packetbuf_set_attr(PACKETBUF_ATTR_MAX_REXMIT, rexmits);
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,#0x10
	lcall	_packetbuf_set_attr
	dec	sp
	dec	sp
;	../contiki-sensinode/core/net/rime/collect.c:464: packetbuf_hdralloc(sizeof(struct data_msg_hdr));
	mov	dptr,#0x0004
	lcall	_packetbuf_hdralloc
;	../contiki-sensinode/core/net/rime/collect.c:466: n = collect_neighbor_list_find(&c->neighbor_list, &c->parent);
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,#0x9C
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,#0x55
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
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_collect_neighbor_list_find
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	dec	sp
	dec	sp
	dec	sp
;	../contiki-sensinode/core/net/rime/collect.c:467: if(n != NULL) {
	mov	a,r5
	orl	a,r6
	jz	00102$
;	../contiki-sensinode/core/net/rime/collect.c:470: c);
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
;	../contiki-sensinode/core/net/rime/collect.c:469: FORWARD_PACKET_LIFETIME_BASE * rexmits,
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	r1,sp
	dec	r1
	mov	a,@r0
	add	a,acc
	add	a,acc
	inc	r1
	mov	@r1,a
	dec	r1
	mov	@r1,#0x00
;	../contiki-sensinode/core/net/rime/collect.c:468: return packetqueue_enqueue_packetbuf(&c->send_queue,
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,#0x4F
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
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_packetqueue_enqueue_packetbuf
	mov	r6,dpl
	mov	r7,dph
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	mov	dpl,r6
	mov	dph,r7
	sjmp	00103$
00102$:
;	../contiki-sensinode/core/net/rime/collect.c:472: return 0;
	mov	dptr,#0x0000
00103$:
	mov	a,sp
	add	a,#0xFB
	mov	sp,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'send_packet'
;------------------------------------------------------------
;n                         Allocated to stack - sp -7
;c                         Allocated to stack - sp -2
;time                      Allocated to registers 
;------------------------------------------------------------
;	../contiki-sensinode/core/net/rime/collect.c:476: send_packet(struct collect_conn *c, struct collect_neighbor *n)
;	-----------------------------------------
;	 function send_packet
;	-----------------------------------------
_send_packet:
	push	dpl
	push	dph
	push	b
;	../contiki-sensinode/core/net/rime/collect.c:489: retransmit_not_sent_callback, c);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
;	../contiki-sensinode/core/net/rime/collect.c:488: ctimer_set(&c->retransmission_timer, time,
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x34
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
	mov	a,#_retransmit_not_sent_callback
	push	acc
	mov	a,#(_retransmit_not_sent_callback >> 8)
	push	acc
	clr	a
	push	acc
	mov	a,#0x20
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_ctimer_set
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
;	../contiki-sensinode/core/net/rime/collect.c:490: c->send_time = clock_time();
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0xA8
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	push	ar7
	push	ar6
	push	ar5
	lcall	_clock_time
	mov	r3,dpl
	mov	r4,dph
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
;	../contiki-sensinode/core/net/rime/collect.c:492: unicast_send(&c->unicast_conn, &n->addr);
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,#0x03
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	push	ar5
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_unicast_send
	dec	sp
	dec	sp
	dec	sp
	dec	sp
	dec	sp
	dec	sp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'proactive_probing_callback'
;------------------------------------------------------------
;ptr                       Allocated to stack - sp -12
;c                         Allocated to stack - sp -7
;i                         Allocated to registers r2 r3 r4 
;n                         Allocated to stack - sp -4
;current_parent            Allocated to stack - sp -1
;sloc0                     Allocated to stack - sp -9
;sloc1                     Allocated to stack - sp +4
;------------------------------------------------------------
;	../contiki-sensinode/core/net/rime/collect.c:496: proactive_probing_callback(void *ptr)
;	-----------------------------------------
;	 function proactive_probing_callback
;	-----------------------------------------
_proactive_probing_callback:
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x0A
;	../contiki-sensinode/core/net/rime/collect.c:498: struct collect_conn *c = ptr;
	mov	sp,a
	add	a,#0xf4
	mov	r0,a
	mov	a,sp
	add	a,#0xf9
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
;	../contiki-sensinode/core/net/rime/collect.c:501: ctimer_set(&c->proactive_probing_timer, PROACTIVE_PROBING_INTERVAL,
	lcall	_random_rand
	mov	a,dpl
	mov	b,dph
	anl	a,#0x7F
	mov	r6,a
	mov	r7,#0x00
	push	ar6
	push	ar7
	mov	dptr,#0x003C
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	a,#0x87
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar5,@r0
	mov	a,sp
	add	a,#0xf4
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,#_proactive_probing_callback
	push	acc
	mov	a,#(_proactive_probing_callback >> 8)
	push	acc
	push	ar6
	push	ar7
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	_ctimer_set
	mov	a,sp
	add	a,#0xf9
;	../contiki-sensinode/core/net/rime/collect.c:506: if(c->rtmetric != RTMETRIC_SINK && c->rtmetric != RTMETRIC_MAX) {
	mov	sp,a
	add	a,#0xf9
	mov	r0,a
	mov	a,#0xA0
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
	orl	a,r3
	jnz	00141$
	ljmp	00115$
00141$:
	cjne	r3,#0xFF,00142$
	cjne	r4,#0x01,00142$
	ljmp	00115$
00142$:
;	../contiki-sensinode/core/net/rime/collect.c:509: i = packetqueue_first(&c->send_queue);
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	a,#0x4F
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
	push	ar7
	push	ar6
	push	ar5
	lcall	_packetqueue_first
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	pop	ar5
	pop	ar6
	pop	ar7
;	../contiki-sensinode/core/net/rime/collect.c:510: if(i == NULL) {
	mov	a,r2
	orl	a,r3
	jz	00143$
	ljmp	00108$
00143$:
;	../contiki-sensinode/core/net/rime/collect.c:519: for(n = list_head(collect_neighbor_list(&c->neighbor_list));
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	a,#0x55
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
	push	ar7
	push	ar6
	push	ar5
	lcall	_collect_neighbor_list
	lcall	_list_head
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
00113$:
;	../contiki-sensinode/core/net/rime/collect.c:520: n != NULL; n = list_item_next(n)) {
	mov	a,sp
	add	a,#0xfc
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
	jnz	00144$
	ljmp	00108$
00144$:
;	../contiki-sensinode/core/net/rime/collect.c:521: if(n->rtmetric + COLLECT_LINK_ESTIMATE_UNIT < c->rtmetric &&
	mov	a,sp
	add	a,#0xfc
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
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	clr	c
	mov	a,@r0
	subb	a,r3
	inc	r0
	mov	a,@r0
	subb	a,r4
	jc	00145$
	ljmp	00114$
00145$:
;	../contiki-sensinode/core/net/rime/collect.c:522: collect_link_estimate_num_estimates(&n->le) == 0) {
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,#0x0B
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
	push	ar7
	push	ar6
	push	ar5
	lcall	_collect_link_estimate_num_estimates
	mov	a,dpl
	mov	b,dph
	pop	ar5
	pop	ar6
	pop	ar7
	orl	a,b
	jz	00146$
	ljmp	00114$
00146$:
;	../contiki-sensinode/core/net/rime/collect.c:528: rimeaddr_copy(&current_parent, &c->parent);
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	a,#0x9C
	add	a,@r0
	mov	r7,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar5,@r0
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	@r0,sp
	dec	@r0
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	ar2,@r0
	mov	r3,#0x00
	mov	r4,#0x40
	push	ar7
	push	ar6
	push	ar5
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_rimeaddr_copy
	dec	sp
	dec	sp
	dec	sp
;	../contiki-sensinode/core/net/rime/collect.c:529: rimeaddr_copy(&c->parent, &n->addr);
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,#0x03
	add	a,@r0
	mov	r7,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar5,@r0
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	a,#0x9C
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	push	ar7
	push	ar6
	push	ar5
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_rimeaddr_copy
	dec	sp
	dec	sp
	dec	sp
;	../contiki-sensinode/core/net/rime/collect.c:530: if(enqueue_dummy_packet(c, PROACTIVE_PROBING_REXMITS)) {
	mov	a,#0x0F
	push	acc
	clr	a
	push	acc
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_enqueue_dummy_packet
	mov	r3,dpl
	mov	r4,dph
	dec	sp
	dec	sp
	mov	a,r3
	orl	a,r4
	jz	00102$
;	../contiki-sensinode/core/net/rime/collect.c:531: send_queued_packet(c);
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_send_queued_packet
00102$:
;	../contiki-sensinode/core/net/rime/collect.c:533: rimeaddr_copy(&c->parent, &current_parent);
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	ar4,@r0
	mov	ar7,r4
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	a,#0x9C
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	push	ar7
	push	ar6
	push	ar5
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_rimeaddr_copy
	dec	sp
	dec	sp
	dec	sp
;	../contiki-sensinode/core/net/rime/collect.c:534: return;
	sjmp	00115$
00114$:
;	../contiki-sensinode/core/net/rime/collect.c:520: n != NULL; n = list_item_next(n)) {
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	_list_item_next
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	ljmp	00113$
00108$:
;	../contiki-sensinode/core/net/rime/collect.c:540: return;
00115$:
	mov	a,sp
	add	a,#0xF3
	mov	sp,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'send_queued_packet'
;------------------------------------------------------------
;c                         Allocated to stack - sp -9
;q                         Allocated to registers r5 r6 r7 
;n                         Allocated to stack - sp -6
;i                         Allocated to registers r7 r6 r5 
;hdr                       Allocated to stack - sp -3
;max_mac_rexmits           Allocated to registers r6 r7 
;------------------------------------------------------------
;	../contiki-sensinode/core/net/rime/collect.c:552: send_queued_packet(struct collect_conn *c)
;	-----------------------------------------
;	 function send_queued_packet
;	-----------------------------------------
_send_queued_packet:
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x07
;	../contiki-sensinode/core/net/rime/collect.c:562: if(c->sending) {
	mov	sp,a
	add	a,#0xf7
	mov	r0,a
	mov	a,#0xA3
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
	jz	00102$
;	../contiki-sensinode/core/net/rime/collect.c:565: return;
	ljmp	00110$
00102$:
;	../contiki-sensinode/core/net/rime/collect.c:570: i = packetqueue_first(&c->send_queue);
	push	ar2
	push	ar3
	push	ar4
	mov	a,sp
	add	a,#0xf4
	mov	r0,a
	mov	a,#0x4F
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
	lcall	_packetqueue_first
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	ar7,r2
	mov	ar6,r3
	mov	ar5,r4
;	../contiki-sensinode/core/net/rime/collect.c:571: if(i == NULL) {
	pop	ar4
	pop	ar3
	pop	ar2
	mov	a,r7
	orl	a,r6
	jnz	00104$
;	../contiki-sensinode/core/net/rime/collect.c:575: return;
	ljmp	00110$
00104$:
;	../contiki-sensinode/core/net/rime/collect.c:579: q = packetqueue_queuebuf(i);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	push	ar4
	push	ar3
	push	ar2
	lcall	_packetqueue_queuebuf
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	pop	ar2
	pop	ar3
	pop	ar4
;	../contiki-sensinode/core/net/rime/collect.c:580: if(q != NULL) {
	mov	a,r5
	orl	a,r6
	jnz	00131$
	ljmp	00110$
00131$:
;	../contiki-sensinode/core/net/rime/collect.c:582: queuebuf_to_packetbuf(q);
	push	ar2
	push	ar3
	push	ar4
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
;	../contiki-sensinode/core/net/rime/collect.c:586: n = collect_neighbor_list_find(&c->neighbor_list, &c->parent);
	mov	a,sp
	add	a,#0xf4
	mov	r0,a
	mov	a,#0x9C
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,sp
	add	a,#0xf4
	mov	r0,a
	mov	a,#0x55
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
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_collect_neighbor_list_find
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	dec	sp
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar4
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	../contiki-sensinode/core/net/rime/collect.c:588: if(n != NULL) {
	pop	ar4
	pop	ar3
	pop	ar2
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00132$
	ljmp	00106$
00132$:
;	../contiki-sensinode/core/net/rime/collect.c:600: c->sending = 1;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0x01
	lcall	__gptrput
;	../contiki-sensinode/core/net/rime/collect.c:603: rimeaddr_copy(&c->current_parent, &c->parent);
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	a,#0x9C
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	a,#0x9E
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
;	../contiki-sensinode/core/net/rime/collect.c:607: c->transmissions = 0;
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	a,#0xA4
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
;	../contiki-sensinode/core/net/rime/collect.c:612: c->max_rexmits = packetbuf_attr(PACKETBUF_ATTR_MAX_REXMIT);
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	a,#0xA5
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,#0x10
	push	ar7
	push	ar6
	push	ar5
	lcall	_packetbuf_attr
	mov	r3,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r3
	lcall	__gptrput
;	../contiki-sensinode/core/net/rime/collect.c:618: packetbuf_set_attr(PACKETBUF_ATTR_RELIABLE, 1);
	push	ar7
	push	ar6
	push	ar5
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	mov	dpl,#0x0C
	lcall	_packetbuf_set_attr
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
;	../contiki-sensinode/core/net/rime/collect.c:620: max_mac_rexmits = c->max_rexmits > MAX_MAC_REXMITS?
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov  r7,a
	add	a,#0xff - 0x02
	jnc	00112$
;	../contiki-sensinode/core/net/rime/collect.c:621: MAX_MAC_REXMITS : c->max_rexmits;
	mov	r6,#0x02
	sjmp	00113$
00112$:
	mov	ar6,r7
00113$:
	mov	r7,#0x00
;	../contiki-sensinode/core/net/rime/collect.c:622: packetbuf_set_attr(PACKETBUF_ATTR_MAX_MAC_TRANSMISSIONS, max_mac_rexmits);
	push	ar6
	push	ar7
	mov	dpl,#0x09
	lcall	_packetbuf_set_attr
	dec	sp
	dec	sp
;	../contiki-sensinode/core/net/rime/collect.c:623: packetbuf_set_attr(PACKETBUF_ATTR_PACKET_ID, c->seqno);
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	a,#0xA2
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
	mov	r7,#0x00
	push	ar5
	push	ar7
	mov	dpl,#0x0D
	lcall	_packetbuf_set_attr
	dec	sp
	dec	sp
;	../contiki-sensinode/core/net/rime/collect.c:625: stats.datasent++;
	mov	dptr,#(_stats + 0x0010)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	r4
	cjne	r4,#0x00,00134$
	inc	r5
	cjne	r5,#0x00,00134$
	inc	r6
	cjne	r6,#0x00,00134$
	inc	r7
00134$:
	mov	dptr,#(_stats + 0x0010)
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../contiki-sensinode/core/net/rime/collect.c:629: memset(&hdr, 0, sizeof(hdr));
	mov	a,sp
	add	a,#0xFD
	mov	r7,a
	mov	r4,a
	mov	r5,#0x00
	mov	r6,#0x40
	push	ar7
	mov	a,#0x04
	push	acc
	clr	a
	push	acc
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	_memset
	dec	sp
	dec	sp
	dec	sp
	pop	ar7
;	../contiki-sensinode/core/net/rime/collect.c:630: hdr.rtmetric = c->rtmetric;
	mov	a,#0x02
	add	a,r7
	mov	r1,a
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	a,#0xA0
	add	a,@r0
	mov	r4,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar6,@r0
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	mov	@r1,ar4
	inc	r1
	mov	@r1,ar5
;	../contiki-sensinode/core/net/rime/collect.c:631: memcpy(packetbuf_dataptr(), &hdr, sizeof(struct data_msg_hdr));
	mov	r6,#0x00
	mov	r5,#0x40
	push	ar7
	push	ar6
	push	ar5
	lcall	_packetbuf_dataptr
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,#0x04
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
;	../contiki-sensinode/core/net/rime/collect.c:634: send_packet(c, n);
	mov	sp,a
	add	a,#0xfa
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,sp
	add	a,#0xf4
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_send_packet
	dec	sp
	dec	sp
	dec	sp
	sjmp	00110$
00106$:
;	../contiki-sensinode/core/net/rime/collect.c:644: announcement_set_value(&c->announcement, RTMETRIC_MAX);
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	a,#0x12
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,#0xFF
	push	acc
	mov	a,#0x01
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_announcement_set_value
	dec	sp
	dec	sp
;	../contiki-sensinode/core/net/rime/collect.c:645: announcement_bump(&c->announcement);
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	a,#0x12
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
	lcall	_announcement_bump
00110$:
	mov	a,sp
	add	a,#0xF6
	mov	sp,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'retransmit_current_packet'
;------------------------------------------------------------
;c                         Allocated to stack - sp -9
;q                         Allocated to registers r2 r3 r4 
;n                         Allocated to stack - sp -6
;i                         Allocated to registers r2 r3 r4 
;hdr                       Allocated to stack - sp -3
;max_mac_rexmits           Allocated to registers 
;sloc0                     Allocated to stack - sp +9
;------------------------------------------------------------
;	../contiki-sensinode/core/net/rime/collect.c:658: retransmit_current_packet(struct collect_conn *c)
;	-----------------------------------------
;	 function retransmit_current_packet
;	-----------------------------------------
_retransmit_current_packet:
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x07
;	../contiki-sensinode/core/net/rime/collect.c:668: i = packetqueue_first(&c->send_queue);
	mov	sp,a
	add	a,#0xf7
	mov	r0,a
	mov	a,#0x4F
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
	lcall	_packetqueue_first
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	../contiki-sensinode/core/net/rime/collect.c:669: if(i == NULL) {
	mov	a,r2
	orl	a,r3
	jnz	00102$
;	../contiki-sensinode/core/net/rime/collect.c:673: return;
	ljmp	00109$
00102$:
;	../contiki-sensinode/core/net/rime/collect.c:677: q = packetqueue_queuebuf(i);
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_packetqueue_queuebuf
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	../contiki-sensinode/core/net/rime/collect.c:678: if(q != NULL) {
	mov	a,r2
	orl	a,r3
	jnz	00129$
	ljmp	00109$
00129$:
;	../contiki-sensinode/core/net/rime/collect.c:680: update_rtmetric(c);
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	push	ar4
	push	ar3
	push	ar2
	lcall	_update_rtmetric
	pop	ar2
	pop	ar3
	pop	ar4
;	../contiki-sensinode/core/net/rime/collect.c:683: queuebuf_to_packetbuf(q);
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_queuebuf_to_packetbuf
;	../contiki-sensinode/core/net/rime/collect.c:689: if(!rimeaddr_cmp(&c->current_parent, &c->parent)) {
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	a,#0x9C
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	a,#0x9E
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
	jnz	00104$
;	../contiki-sensinode/core/net/rime/collect.c:702: rimeaddr_copy(&c->current_parent, &c->parent);
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	a,#0x9C
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	a,#0x9E
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
;	../contiki-sensinode/core/net/rime/collect.c:703: c->transmissions = 0;
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	a,#0xA4
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
00104$:
;	../contiki-sensinode/core/net/rime/collect.c:705: n = collect_neighbor_list_find(&c->neighbor_list, &c->current_parent);
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	a,#0x9E
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	a,#0x55
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
	lcall	_collect_neighbor_list_find
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	dec	sp
	dec	sp
	dec	sp
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	../contiki-sensinode/core/net/rime/collect.c:707: if(n != NULL) {
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00131$
	ljmp	00109$
00131$:
;	../contiki-sensinode/core/net/rime/collect.c:719: c->sending = 1;
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	a,#0xA3
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
	mov	a,#0x01
	lcall	__gptrput
;	../contiki-sensinode/core/net/rime/collect.c:720: packetbuf_set_attr(PACKETBUF_ATTR_RELIABLE, 1);
	push	acc
	clr	a
	push	acc
	mov	dpl,#0x0C
	lcall	_packetbuf_set_attr
	dec	sp
	dec	sp
;	../contiki-sensinode/core/net/rime/collect.c:721: max_mac_rexmits = c->max_rexmits - c->transmissions > MAX_MAC_REXMITS?
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	a,#0xA5
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
	mov	r4,#0x00
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	a,#0xA4
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r3
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r3,a
	mov	r5,#0x00
	mov	a,r2
	clr	c
	subb	a,r3
	mov	r6,a
	mov	a,r4
	subb	a,r5
	mov	r7,a
	clr	c
	mov	a,#0x02
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00111$
;	../contiki-sensinode/core/net/rime/collect.c:722: MAX_MAC_REXMITS : c->max_rexmits - c->transmissions;
	mov	r7,#0x02
	mov	r6,#0x00
	sjmp	00112$
00111$:
	mov	a,r2
	clr	c
	subb	a,r3
	mov	r7,a
	mov	a,r4
	subb	a,r5
	mov	r6,a
00112$:
;	../contiki-sensinode/core/net/rime/collect.c:723: packetbuf_set_attr(PACKETBUF_ATTR_MAX_MAC_TRANSMISSIONS, max_mac_rexmits);
	push	ar7
	push	ar6
	mov	dpl,#0x09
	lcall	_packetbuf_set_attr
	dec	sp
	dec	sp
;	../contiki-sensinode/core/net/rime/collect.c:724: packetbuf_set_attr(PACKETBUF_ATTR_PACKET_ID, c->seqno);
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	a,#0xA2
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
	mov	r4,#0x00
	push	ar2
	push	ar4
	mov	dpl,#0x0D
	lcall	_packetbuf_set_attr
	dec	sp
	dec	sp
;	../contiki-sensinode/core/net/rime/collect.c:728: memset(&hdr, 0, sizeof(hdr));
	mov	a,sp
	add	a,#0xFD
	mov	r4,a
	mov	r2,a
	mov	r3,#0x00
	mov	r7,#0x40
	push	ar4
	mov	a,#0x04
	push	acc
	clr	a
	push	acc
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	_memset
	dec	sp
	dec	sp
	dec	sp
	pop	ar4
;	../contiki-sensinode/core/net/rime/collect.c:729: hdr.rtmetric = c->rtmetric;
	mov	a,#0x02
	add	a,r4
	mov	r1,a
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	a,#0xA0
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
	mov	@r1,ar5
	inc	r1
	mov	@r1,ar6
;	../contiki-sensinode/core/net/rime/collect.c:730: memcpy(packetbuf_dataptr(), &hdr, sizeof(struct data_msg_hdr));
	mov	r7,#0x00
	mov	r6,#0x40
	push	ar7
	push	ar6
	push	ar4
	lcall	_packetbuf_dataptr
	mov	r2,dpl
	mov	r3,dph
	mov	r5,b
	pop	ar4
	pop	ar6
	pop	ar7
	mov	a,#0x04
	push	acc
	clr	a
	push	acc
	push	ar4
	push	ar7
	push	ar6
	mov	dpl,r2
	mov	dph,r3
	mov	b,r5
	lcall	_memcpy
	mov	a,sp
	add	a,#0xfb
;	../contiki-sensinode/core/net/rime/collect.c:733: send_packet(c, n);
	mov	sp,a
	add	a,#0xfa
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,sp
	add	a,#0xf4
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_send_packet
	dec	sp
	dec	sp
	dec	sp
00109$:
	mov	a,sp
	add	a,#0xF6
	mov	sp,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'send_next_packet'
;------------------------------------------------------------
;tc                        Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../contiki-sensinode/core/net/rime/collect.c:740: send_next_packet(struct collect_conn *tc)
;	-----------------------------------------
;	 function send_next_packet
;	-----------------------------------------
_send_next_packet:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../contiki-sensinode/core/net/rime/collect.c:743: packetqueue_dequeue(&tc->send_queue);
	mov	a,#0x4F
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	_packetqueue_dequeue
	pop	ar5
	pop	ar6
	pop	ar7
;	../contiki-sensinode/core/net/rime/collect.c:744: tc->seqno = (tc->seqno + 1) % (1 << COLLECT_PACKET_ID_BITS);
	mov	a,#0xA2
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
	mov	r0,a
	mov	r1,#0x00
	inc	r0
	cjne	r0,#0x00,00103$
	inc	r1
00103$:
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	clr	a
	push	acc
	inc	a
	push	acc
	mov	dpl,r0
	mov	dph,r1
	lcall	__modsint
	mov	r0,dpl
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r0
	lcall	__gptrput
;	../contiki-sensinode/core/net/rime/collect.c:747: ctimer_stop(&tc->retransmission_timer);
	mov	a,#0x34
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	_ctimer_stop
	pop	ar5
	pop	ar6
	pop	ar7
;	../contiki-sensinode/core/net/rime/collect.c:748: tc->sending = 0;
	mov	a,#0xA3
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
;	../contiki-sensinode/core/net/rime/collect.c:749: tc->transmissions = 0;
	mov	a,#0xA4
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
;	../contiki-sensinode/core/net/rime/collect.c:755: send_queued_packet(tc);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	ljmp	_send_queued_packet
;------------------------------------------------------------
;Allocation info for local variables in function 'handle_ack'
;------------------------------------------------------------
;tc                        Allocated to stack - sp -8
;msg                       Allocated to stack - sp -3
;n                         Allocated to registers r4 r3 r2 
;sloc0                     Allocated to stack - sp -5
;------------------------------------------------------------
;	../contiki-sensinode/core/net/rime/collect.c:759: handle_ack(struct collect_conn *tc)
;	-----------------------------------------
;	 function handle_ack
;	-----------------------------------------
_handle_ack:
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x06
;	../contiki-sensinode/core/net/rime/collect.c:770: &tc->current_parent) &&
	mov	sp,a
	add	a,#0xf8
	mov	r0,a
	mov	a,#0x9E
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
;	../contiki-sensinode/core/net/rime/collect.c:769: if(rimeaddr_cmp(packetbuf_addr(PACKETBUF_ADDR_SENDER),
	mov	dpl,#0x18
	push	ar4
	push	ar3
	push	ar2
	lcall	_packetbuf_addr
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	pop	ar2
	pop	ar3
	pop	ar4
	push	ar2
	push	ar3
	push	ar4
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
	jnz	00150$
	ljmp	00118$
00150$:
;	../contiki-sensinode/core/net/rime/collect.c:771: packetbuf_attr(PACKETBUF_ATTR_PACKET_ID) == tc->seqno) {
	mov	dpl,#0x0D
	lcall	_packetbuf_attr
	mov	r6,dpl
	mov	r7,dph
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,#0xA2
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
	mov	r5,#0x00
	mov	a,r6
	cjne	a,ar3,00151$
	mov	a,r7
	cjne	a,ar5,00151$
	sjmp	00152$
00151$:
	ljmp	00118$
00152$:
;	../contiki-sensinode/core/net/rime/collect.c:779: stats.ackrecv++;
	mov	dptr,#(_stats + 0x0018)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	r4
	cjne	r4,#0x00,00153$
	inc	r5
	cjne	r5,#0x00,00153$
	inc	r6
	cjne	r6,#0x00,00153$
	inc	r7
00153$:
	mov	dptr,#(_stats + 0x0018)
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../contiki-sensinode/core/net/rime/collect.c:780: memcpy(&msg, packetbuf_dataptr(), sizeof(struct ack_msg));
	lcall	_packetbuf_dataptr
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,sp
	add	a,#0xFD
	mov	r1,a
	mov	r2,a
	mov	r3,#0x00
	mov	r4,#0x40
	push	ar1
	mov	a,#0x04
	push	acc
	clr	a
	push	acc
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_memcpy
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar1
;	../contiki-sensinode/core/net/rime/collect.c:788: if(tc->transmissions == 0) {
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,#0xA4
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
	jnz	00102$
;	../contiki-sensinode/core/net/rime/collect.c:789: tc->transmissions = MAX_MAC_REXMITS;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x02
	lcall	__gptrput
00102$:
;	../contiki-sensinode/core/net/rime/collect.c:794: packetbuf_addr(PACKETBUF_ADDR_SENDER));
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,#0x18
	push	ar7
	push	ar6
	push	ar5
	push	ar1
	lcall	_packetbuf_addr
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	pop	ar1
	pop	ar5
	pop	ar6
	pop	ar7
;	../contiki-sensinode/core/net/rime/collect.c:793: n = collect_neighbor_list_find(&tc->neighbor_list,
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	a,#0x55
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	push	ar1
	push	ar2
	push	ar3
	push	ar4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_collect_neighbor_list_find
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	dec	sp
	dec	sp
	dec	sp
	pop	ar1
	mov	ar4,r5
	mov	ar3,r6
	mov	ar2,r7
;	../contiki-sensinode/core/net/rime/collect.c:796: if(n != NULL) {
	pop	ar7
	pop	ar6
	pop	ar5
	mov	a,r4
	orl	a,r3
	jz	00104$
;	../contiki-sensinode/core/net/rime/collect.c:797: collect_neighbor_tx(n, tc->transmissions);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	r7,#0x00
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar5
	push	ar7
	mov	dpl,r4
	mov	dph,r3
	mov	b,r2
	lcall	_collect_neighbor_tx
	dec	sp
	dec	sp
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
;	../contiki-sensinode/core/net/rime/collect.c:798: collect_neighbor_update_rtmetric(n, msg.rtmetric);
	mov	a,#0x02
	add	a,r1
	mov	r0,a
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar6
	push	ar7
	mov	dpl,r4
	mov	dph,r3
	mov	b,r2
	lcall	_collect_neighbor_update_rtmetric
	dec	sp
	dec	sp
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
;	../contiki-sensinode/core/net/rime/collect.c:799: update_rtmetric(tc);
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	lcall	_update_rtmetric
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
00104$:
;	../contiki-sensinode/core/net/rime/collect.c:815: if(msg.flags & ACK_FLAGS_CONGESTED) {
	mov	a,@r1
	mov	r7,a
	jb	acc.7,00156$
	ljmp	00108$
00156$:
;	../contiki-sensinode/core/net/rime/collect.c:817: if(n != NULL) {
	mov	a,r4
	orl	a,r3
	jz	00106$
;	../contiki-sensinode/core/net/rime/collect.c:818: collect_neighbor_set_congested(n);
	mov	dpl,r4
	mov	dph,r3
	mov	b,r2
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	lcall	_collect_neighbor_set_congested
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
;	../contiki-sensinode/core/net/rime/collect.c:819: collect_neighbor_tx(n, tc->max_rexmits * 2);
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,#0xA5
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
	mov	b,#0x02
	mul	ab
	mov	r5,a
	mov	r7,b
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar5
	push	ar7
	mov	dpl,r4
	mov	dph,r3
	mov	b,r2
	lcall	_collect_neighbor_tx
	dec	sp
	dec	sp
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
00106$:
;	../contiki-sensinode/core/net/rime/collect.c:821: update_rtmetric(tc);
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	lcall	_update_rtmetric
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
00108$:
;	../contiki-sensinode/core/net/rime/collect.c:823: if((msg.flags & ACK_FLAGS_DROPPED) == 0) {
	mov	a,@r1
	mov	r7,a
	jb	acc.6,00113$
;	../contiki-sensinode/core/net/rime/collect.c:825: send_next_packet(tc);
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	push	ar1
	lcall	_send_next_packet
	pop	ar1
	ljmp	00114$
00113$:
;	../contiki-sensinode/core/net/rime/collect.c:830: if((msg.flags & ACK_FLAGS_LIFETIME_EXCEEDED)) {
	mov	a,r7
	jnb	acc.5,00110$
;	../contiki-sensinode/core/net/rime/collect.c:831: send_next_packet(tc);
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	push	ar1
	lcall	_send_next_packet
	pop	ar1
	ljmp	00114$
00110$:
;	../contiki-sensinode/core/net/rime/collect.c:837: collect_neighbor_tx(n, tc->max_rexmits);
	push	ar1
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	a,#0xA5
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
	mov	r7,#0x00
	push	ar1
	push	ar5
	push	ar7
	mov	dpl,r4
	mov	dph,r3
	mov	b,r2
	lcall	_collect_neighbor_tx
	dec	sp
	dec	sp
	pop	ar1
;	../contiki-sensinode/core/net/rime/collect.c:838: update_rtmetric(tc);
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	push	ar1
	lcall	_update_rtmetric
	pop	ar1
;	../contiki-sensinode/core/net/rime/collect.c:842: retransmit_callback, tc);
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
;	../contiki-sensinode/core/net/rime/collect.c:841: REXMIT_TIME + (random_rand() % (REXMIT_TIME)),
	push	ar7
	push	ar6
	push	ar5
	push	ar1
	lcall	_random_rand
	mov	a,dpl
	mov	b,dph
	pop	ar1
	pop	ar5
	pop	ar6
	pop	ar7
	mov	r3,a
	anl	b,#0x01
	mov	r4,b
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	@r0,ar3
	mov	a,#0x02
	add	a,r4
	inc	r0
	mov	@r0,a
;	../contiki-sensinode/core/net/rime/collect.c:840: ctimer_set(&tc->retransmission_timer,
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	a,#0x34
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	push	ar1
	push	ar5
	push	ar6
	push	ar7
	mov	a,#_retransmit_callback
	push	acc
	mov	a,#(_retransmit_callback >> 8)
	push	acc
	mov	a,sp
	add	a,#0xf4
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
	pop	ar1
;	../contiki-sensinode/core/net/rime/collect.c:853: stats.badack++;
	pop	ar1
;	../contiki-sensinode/core/net/rime/collect.c:840: ctimer_set(&tc->retransmission_timer,
00114$:
;	../contiki-sensinode/core/net/rime/collect.c:848: if(msg.flags & ACK_FLAGS_RTMETRIC_NEEDS_UPDATE) {
	mov	a,@r1
	mov	r7,a
	jnb	acc.4,00116$
;	../contiki-sensinode/core/net/rime/collect.c:849: bump_advertisement(tc);
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_bump_advertisement
00116$:
;	../contiki-sensinode/core/net/rime/collect.c:851: set_keepalive_timer(tc);
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_set_keepalive_timer
	sjmp	00121$
00118$:
;	../contiki-sensinode/core/net/rime/collect.c:853: stats.badack++;
	mov	dptr,#(_stats + 0x001c)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	r4
	cjne	r4,#0x00,00161$
	inc	r5
	cjne	r5,#0x00,00161$
	inc	r6
	cjne	r6,#0x00,00161$
	inc	r7
00161$:
	mov	dptr,#(_stats + 0x001c)
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
00121$:
	mov	a,sp
	add	a,#0xF7
	mov	sp,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'send_ack'
;------------------------------------------------------------
;to                        Allocated to stack - sp -12
;flags                     Allocated to stack - sp -14
;tc                        Allocated to stack - sp -7
;ack                       Allocated to stack - sp -4
;packet_seqno              Allocated to stack - sp -1
;------------------------------------------------------------
;	../contiki-sensinode/core/net/rime/collect.c:858: send_ack(struct collect_conn *tc, const rimeaddr_t *to, int flags)
;	-----------------------------------------
;	 function send_ack
;	-----------------------------------------
_send_ack:
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x05
	mov	sp,a
;	../contiki-sensinode/core/net/rime/collect.c:861: uint16_t packet_seqno = packetbuf_attr(PACKETBUF_ATTR_PACKET_ID);
	mov	dpl,#0x0D
	lcall	_packetbuf_attr
	mov	r0,sp
	dec	r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
;	../contiki-sensinode/core/net/rime/collect.c:863: packetbuf_clear();
	lcall	_packetbuf_clear
;	../contiki-sensinode/core/net/rime/collect.c:864: packetbuf_set_datalen(sizeof(struct ack_msg));
	mov	dptr,#0x0004
	lcall	_packetbuf_set_datalen
;	../contiki-sensinode/core/net/rime/collect.c:865: ack = packetbuf_dataptr();
	lcall	_packetbuf_dataptr
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
;	../contiki-sensinode/core/net/rime/collect.c:866: memset(ack, 0, sizeof(struct ack_msg));
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,#0x04
	push	acc
	clr	a
	push	acc
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_memset
	dec	sp
	dec	sp
	dec	sp
;	../contiki-sensinode/core/net/rime/collect.c:867: ack->rtmetric = tc->rtmetric;
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
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	a,#0xA0
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
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
;	../contiki-sensinode/core/net/rime/collect.c:868: ack->flags = flags;
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	ar7,@r0
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r7
	lcall	__gptrput
;	../contiki-sensinode/core/net/rime/collect.c:870: packetbuf_set_addr(PACKETBUF_ADDR_RECEIVER, to);
	mov	a,sp
	add	a,#0xf4
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,#0x19
	lcall	_packetbuf_set_addr
	dec	sp
	dec	sp
	dec	sp
;	../contiki-sensinode/core/net/rime/collect.c:871: packetbuf_set_attr(PACKETBUF_ATTR_PACKET_TYPE, PACKETBUF_ATTR_PACKET_TYPE_ACK);
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	mov	dpl,#0x0E
	lcall	_packetbuf_set_attr
	dec	sp
	dec	sp
;	../contiki-sensinode/core/net/rime/collect.c:872: packetbuf_set_attr(PACKETBUF_ATTR_RELIABLE, 0);
	clr	a
	push	acc
	push	acc
	mov	dpl,#0x0C
	lcall	_packetbuf_set_attr
	dec	sp
	dec	sp
;	../contiki-sensinode/core/net/rime/collect.c:873: packetbuf_set_attr(PACKETBUF_ATTR_ERELIABLE, 0);
	clr	a
	push	acc
	push	acc
	mov	dpl,#0x17
	lcall	_packetbuf_set_attr
	dec	sp
	dec	sp
;	../contiki-sensinode/core/net/rime/collect.c:874: packetbuf_set_attr(PACKETBUF_ATTR_PACKET_ID, packet_seqno);
	mov	r0,sp
	dec	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,#0x0D
	lcall	_packetbuf_set_attr
	dec	sp
	dec	sp
;	../contiki-sensinode/core/net/rime/collect.c:875: packetbuf_set_attr(PACKETBUF_ATTR_MAX_MAC_TRANSMISSIONS, MAX_ACK_MAC_REXMITS);
	mov	a,#0x05
	push	acc
	clr	a
	push	acc
	mov	dpl,#0x09
	lcall	_packetbuf_set_attr
	dec	sp
	dec	sp
;	../contiki-sensinode/core/net/rime/collect.c:876: unicast_send(&tc->unicast_conn, to);
	mov	a,sp
	add	a,#0xf4
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
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
	lcall	_unicast_send
	dec	sp
	dec	sp
	dec	sp
;	../contiki-sensinode/core/net/rime/collect.c:883: RIMESTATS_ADD(acktx);
	mov	dptr,#(_rimestats + 0x0014)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	r4
	cjne	r4,#0x00,00103$
	inc	r5
	cjne	r5,#0x00,00103$
	inc	r6
	cjne	r6,#0x00,00103$
	inc	r7
00103$:
	mov	dptr,#(_rimestats + 0x0014)
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../contiki-sensinode/core/net/rime/collect.c:884: stats.acksent++;
	mov	dptr,#(_stats + 0x000c)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	r4
	cjne	r4,#0x00,00104$
	inc	r5
	cjne	r5,#0x00,00104$
	inc	r6
	cjne	r6,#0x00,00104$
	inc	r7
00104$:
	mov	dptr,#(_stats + 0x000c)
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	a,sp
	add	a,#0xF8
	mov	sp,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'add_packet_to_recent_packets'
;------------------------------------------------------------
;tc                        Allocated to stack - sp -2
;sloc0                     Allocated to stack - sp +1
;sloc1                     Allocated to stack - sp +3
;sloc2                     Allocated to stack - sp +4
;sloc3                     Allocated to stack - sp +5
;sloc4                     Allocated to stack - sp +7
;sloc5                     Allocated to stack - sp +9
;------------------------------------------------------------
;	../contiki-sensinode/core/net/rime/collect.c:888: add_packet_to_recent_packets(struct collect_conn *tc)
;	-----------------------------------------
;	 function add_packet_to_recent_packets
;	-----------------------------------------
_add_packet_to_recent_packets:
	push	dpl
	push	dph
	push	b
;	../contiki-sensinode/core/net/rime/collect.c:894: if(packetbuf_datalen() > sizeof(struct data_msg_hdr)) {
	lcall	_packetbuf_datalen
	mov	r3,dpl
	mov	r4,dph
	clr	c
	mov	a,#0x04
	subb	a,r3
	clr	a
	subb	a,r4
	jc	00108$
	ljmp	00103$
00108$:
;	../contiki-sensinode/core/net/rime/collect.c:895: recent_packets[recent_packet_ptr].eseqno =
	mov	dptr,#_recent_packet_ptr
	movx	a,@dptr
	mov	b,#0x06
	mul	ab
	add	a,#_recent_packets
	mov	r3,a
	mov	a,#(_recent_packets >> 8)
	addc	a,b
	mov	r4,a
	mov	a,#0x05
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
;	../contiki-sensinode/core/net/rime/collect.c:896: packetbuf_attr(PACKETBUF_ATTR_EPACKET_ID);
	mov	dpl,#0x15
	push	ar4
	push	ar3
	lcall	_packetbuf_attr
	mov	r7,dpl
	pop	ar3
	pop	ar4
	mov	dpl,r3
	mov	dph,r4
	mov	a,r7
	movx	@dptr,a
;	../contiki-sensinode/core/net/rime/collect.c:898: packetbuf_addr(PACKETBUF_ADDR_ESENDER));
	mov	dpl,#0x1A
	lcall	_packetbuf_addr
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	../contiki-sensinode/core/net/rime/collect.c:897: rimeaddr_copy(&recent_packets[recent_packet_ptr].originator,
	mov	dptr,#_recent_packet_ptr
	movx	a,@dptr
	mov	b,#0x06
	mul	ab
	add	a,#_recent_packets
	mov	r7,a
	mov	a,#(_recent_packets >> 8)
	addc	a,b
	mov	r6,a
	mov	a,#0x03
	add	a,r7
	mov	r7,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	r5,#0x00
	push	ar2
	push	ar3
	push	ar4
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	_rimeaddr_copy
	dec	sp
	dec	sp
	dec	sp
;	../contiki-sensinode/core/net/rime/collect.c:899: recent_packets[recent_packet_ptr].conn = tc;
	mov	dptr,#_recent_packet_ptr
	movx	a,@dptr
	mov	b,#0x06
	mul	ab
	add	a,#_recent_packets
	mov	dpl,a
	mov	a,#(_recent_packets >> 8)
	addc	a,b
	mov	dph,a
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
;	../contiki-sensinode/core/net/rime/collect.c:900: recent_packet_ptr = (recent_packet_ptr + 1) % NUM_RECENT_PACKETS;
	mov	dptr,#_recent_packet_ptr
	movx	a,@dptr
	mov	r6,a
	mov	r5,#0x00
	inc	r6
	cjne	r6,#0x00,00109$
	inc	r5
00109$:
	mov	a,#0x10
	push	acc
	clr	a
	push	acc
	mov	dpl,r6
	mov	dph,r5
	lcall	__modsint
	mov	r5,dpl
	mov	r6,dph
	dec	sp
	dec	sp
	mov	dptr,#_recent_packet_ptr
	mov	a,r5
	movx	@dptr,a
00103$:
	dec	sp
	dec	sp
	dec	sp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'node_packet_received'
;------------------------------------------------------------
;from                      Allocated to stack - sp -26
;c                         Allocated to registers r5 r6 r7 
;tc                        Allocated to stack - sp -11
;i                         Allocated to stack - sp -8
;hdr                       Allocated to stack - sp -6
;ackflags                  Allocated to stack - sp -2
;n                         Allocated to registers r5 r6 r7 
;ack_to                    Allocated to stack - sp -1
;packet_seqno              Allocated to registers 
;q                         Allocated to registers r7 r6 r5 
;sloc0                     Allocated to stack - sp -21
;sloc1                     Allocated to stack - sp -20
;sloc2                     Allocated to stack - sp -17
;sloc3                     Allocated to stack - sp +7
;sloc4                     Allocated to stack - sp -15
;------------------------------------------------------------
;	../contiki-sensinode/core/net/rime/collect.c:905: node_packet_received(struct unicast_conn *c, const rimeaddr_t *from)
;	-----------------------------------------
;	 function node_packet_received
;	-----------------------------------------
_node_packet_received:
	mov	a,sp
	add	a,#0x16
	mov	sp,a
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../contiki-sensinode/core/net/rime/collect.c:907: struct collect_conn *tc = (struct collect_conn *)
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	../contiki-sensinode/core/net/rime/collect.c:911: uint8_t ackflags = 0;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,#0x00
;	../contiki-sensinode/core/net/rime/collect.c:914: memcpy(&hdr, packetbuf_dataptr(), sizeof(struct data_msg_hdr));
	lcall	_packetbuf_dataptr
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	a,sp
	add	a,#0xeb
	mov	r0,a
	mov	a,sp
	add	a,#0xFA
	mov	@r0,a
	mov	a,sp
	add	a,#0xeb
	mov	r0,a
	mov	ar5,@r0
	mov	r6,#0x00
	mov	r7,#0x40
	mov	a,#0x04
	push	acc
	clr	a
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
;	../contiki-sensinode/core/net/rime/collect.c:921: packetbuf_addr(PACKETBUF_ADDR_SENDER));
	mov	dpl,#0x18
	lcall	_packetbuf_addr
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../contiki-sensinode/core/net/rime/collect.c:920: n = collect_neighbor_list_find(&tc->neighbor_list,
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	a,#0x55
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
	lcall	_collect_neighbor_list_find
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	dec	sp
	dec	sp
	dec	sp
;	../contiki-sensinode/core/net/rime/collect.c:922: if(n != NULL) {
	mov	a,r5
	orl	a,r6
	jz	00102$
;	../contiki-sensinode/core/net/rime/collect.c:923: collect_neighbor_update_rtmetric(n, hdr.rtmetric);
	mov	a,sp
	add	a,#0xeb
	mov	r0,a
	mov	a,#0x02
	add	a,@r0
	mov	r1,a
	mov	ar3,@r1
	inc	r1
	mov	ar4,@r1
	push	ar3
	push	ar4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_collect_neighbor_update_rtmetric
	dec	sp
	dec	sp
;	../contiki-sensinode/core/net/rime/collect.c:924: update_rtmetric(tc);
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_update_rtmetric
00102$:
;	../contiki-sensinode/core/net/rime/collect.c:931: if(packetbuf_attr(PACKETBUF_ATTR_PACKET_TYPE) ==
	mov	dpl,#0x0E
	lcall	_packetbuf_attr
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jz	00200$
	ljmp	00136$
00200$:
;	../contiki-sensinode/core/net/rime/collect.c:936: stats.datarecv++;
	mov	dptr,#(_stats + 0x0014)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	r4
	cjne	r4,#0x00,00201$
	inc	r5
	cjne	r5,#0x00,00201$
	inc	r6
	cjne	r6,#0x00,00201$
	inc	r7
00201$:
	mov	dptr,#(_stats + 0x0014)
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../contiki-sensinode/core/net/rime/collect.c:940: rimeaddr_copy(&ack_to, packetbuf_addr(PACKETBUF_ADDR_SENDER));
	mov	dpl,#0x18
	lcall	_packetbuf_addr
	xch	a,r0
	mov	a,sp
	add	a,#0xec
	xch	a,r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	inc	r0
	mov	@r0,b
	mov	r4,sp
	dec	r4
	mov	ar2,r4
	mov	r3,#0x00
	mov	r7,#0x40
	push	ar4
	mov	a,sp
	add	a,#0xeb
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	_rimeaddr_copy
	dec	sp
	dec	sp
	dec	sp
;	../contiki-sensinode/core/net/rime/collect.c:941: packet_seqno = packetbuf_attr(PACKETBUF_ATTR_PACKET_ID);
	mov	dpl,#0x0D
	lcall	_packetbuf_attr
	pop	ar4
;	../contiki-sensinode/core/net/rime/collect.c:948: if(packetqueue_len(&tc->send_queue) >= MAX_SENDING_QUEUE / 2) {
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	a,#0x4F
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
	lcall	_packetqueue_len
	mov	r6,dpl
	mov	r7,dph
	pop	ar4
	clr	c
	mov	a,r6
	subb	a,#0x03
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jc	00148$
;	../contiki-sensinode/core/net/rime/collect.c:949: ackflags |= ACK_FLAGS_CONGESTED;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,#0x80
;	../contiki-sensinode/core/net/rime/collect.c:952: for(i = 0; i < NUM_RECENT_PACKETS; i++) {
00148$:
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	mov	r3,#0x00
	mov	r5,#0x00
00138$:
;	../contiki-sensinode/core/net/rime/collect.c:953: if(recent_packets[i].conn == tc &&
	push	ar4
	mov	a,r3
	add	a,#_recent_packets
	mov	dpl,a
	mov	a,r5
	addc	a,#(_recent_packets >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,sp
	add	a,#0xf4
	mov	r0,a
	push	ar2
	push	ar4
	push	ar7
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jz	00204$
	pop	ar4
	ljmp	00139$
00204$:
	pop	ar4
;	../contiki-sensinode/core/net/rime/collect.c:954: recent_packets[i].eseqno == packetbuf_attr(PACKETBUF_ATTR_EPACKET_ID) &&
	push	ar4
	mov	a,r3
	add	a,#_recent_packets
	mov	r6,a
	mov	a,r5
	addc	a,#(_recent_packets >> 8)
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	dpl,#0x15
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_packetbuf_attr
	xch	a,r0
	mov	a,sp
	add	a,#0xe8
	xch	a,r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	r4,#0x00
	mov	a,sp
	add	a,#0xee
	mov	r0,a
	mov	a,@r0
	cjne	a,ar2,00205$
	inc	r0
	mov	a,@r0
	cjne	a,ar4,00205$
	sjmp	00206$
00205$:
	pop	ar4
	ljmp	00139$
00206$:
	pop	ar4
;	../contiki-sensinode/core/net/rime/collect.c:956: packetbuf_addr(PACKETBUF_ADDR_ESENDER))) {
	push	ar4
	mov	dpl,#0x1A
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_packetbuf_addr
	xch	a,r0
	mov	a,sp
	add	a,#0xe6
	xch	a,r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	inc	r0
	mov	@r0,b
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	../contiki-sensinode/core/net/rime/collect.c:955: rimeaddr_cmp(&recent_packets[i].originator,
	mov	a,#0x03
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	r4,#0x00
	push	ar5
	push	ar4
	push	ar3
	mov	a,sp
	add	a,#0xe8
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
	mov	b,r4
	lcall	_rimeaddr_cmp
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar4
	mov	a,r6
	orl	a,r7
	jz	00139$
;	../contiki-sensinode/core/net/rime/collect.c:965: send_ack(tc, &ack_to, ackflags);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	ar5,@r0
	mov	r3,#0x00
	mov	ar2,r4
	mov	r6,#0x00
	mov	r7,#0x40
	push	ar5
	push	ar3
	push	ar2
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xf0
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_send_ack
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	../contiki-sensinode/core/net/rime/collect.c:966: stats.duprecv++;
	mov	dptr,#(_stats + 0x0020)
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	r7
	cjne	r7,#0x00,00208$
	inc	r6
	cjne	r6,#0x00,00208$
	inc	r5
	cjne	r5,#0x00,00208$
	inc	r4
00208$:
	mov	dptr,#(_stats + 0x0020)
	mov	a,r7
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	../contiki-sensinode/core/net/rime/collect.c:967: return;
	ljmp	00140$
00139$:
;	../contiki-sensinode/core/net/rime/collect.c:952: for(i = 0; i < NUM_RECENT_PACKETS; i++) {
	mov	a,#0x06
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r5
	mov	r5,a
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00209$
	inc	r0
	inc	@r0
00209$:
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	clr	c
	mov	a,@r0
	subb	a,#0x10
	inc	r0
	mov	a,@r0
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00210$
	ljmp	00138$
00210$:
;	../contiki-sensinode/core/net/rime/collect.c:973: if(tc->rtmetric == RTMETRIC_SINK) {
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	a,#0xA0
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
	orl	a,r2
	jz	00211$
	ljmp	00131$
00211$:
;	../contiki-sensinode/core/net/rime/collect.c:976: add_packet_to_recent_packets(tc);
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	push	ar4
	lcall	_add_packet_to_recent_packets
;	../contiki-sensinode/core/net/rime/collect.c:980: q = queuebuf_new_from_packetbuf();
	lcall	_queuebuf_new_from_packetbuf
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	pop	ar4
;	../contiki-sensinode/core/net/rime/collect.c:981: if(q != NULL) {
	mov	a,r7
	orl	a,r6
	jz	00113$
;	../contiki-sensinode/core/net/rime/collect.c:982: send_ack(tc, &ack_to, 0);
	mov	ar3,r4
	mov	r4,#0x00
	mov	r2,#0x40
	push	ar7
	push	ar6
	push	ar5
	clr	a
	push	acc
	push	acc
	push	ar3
	push	ar4
	push	ar2
	mov	a,sp
	add	a,#0xed
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_send_ack
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar5
	pop	ar6
	pop	ar7
;	../contiki-sensinode/core/net/rime/collect.c:983: queuebuf_to_packetbuf(q);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	push	ar7
	push	ar6
	push	ar5
	lcall	_queuebuf_to_packetbuf
	pop	ar5
	pop	ar6
	pop	ar7
;	../contiki-sensinode/core/net/rime/collect.c:984: queuebuf_free(q);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	_queuebuf_free
	sjmp	00114$
00113$:
;	../contiki-sensinode/core/net/rime/collect.c:990: stats.ackdrop++;
	mov	dptr,#(_stats + 0x0030)
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	r7
	cjne	r7,#0x00,00213$
	inc	r6
	cjne	r6,#0x00,00213$
	inc	r5
	cjne	r5,#0x00,00213$
	inc	r4
00213$:
	mov	dptr,#(_stats + 0x0030)
	mov	a,r7
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
00114$:
;	../contiki-sensinode/core/net/rime/collect.c:1001: packetbuf_hdrreduce(sizeof(struct data_msg_hdr));
	mov	dptr,#0x0004
	lcall	_packetbuf_hdrreduce
;	../contiki-sensinode/core/net/rime/collect.c:1003: if(packetbuf_datalen() > 0 && tc->cb->recv != NULL) {
	lcall	_packetbuf_datalen
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jnz	00214$
	ljmp	00116$
00214$:
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	a,#0x31
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
	mov	a,sp
	add	a,#0xf1
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r7,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	orl	a,r7
	jz	00116$
;	../contiki-sensinode/core/net/rime/collect.c:1006: packetbuf_attr(PACKETBUF_ATTR_HOPS));
	mov	dpl,#0x13
	push	ar7
	push	ar6
	lcall	_packetbuf_attr
	mov	r2,dpl
	mov	ar5,r2
;	../contiki-sensinode/core/net/rime/collect.c:1005: packetbuf_attr(PACKETBUF_ATTR_EPACKET_ID),
	mov	dpl,#0x15
	push	ar5
	lcall	_packetbuf_attr
	mov	r2,dpl
;	../contiki-sensinode/core/net/rime/collect.c:1004: tc->cb->recv(packetbuf_addr(PACKETBUF_ADDR_ESENDER),
	mov	dpl,#0x1A
	push	ar2
	lcall	_packetbuf_addr
	xch	a,r0
	mov	a,sp
	add	a,#0xe8
	xch	a,r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	inc	r0
	mov	@r0,b
	pop	ar2
	pop	ar5
	pop	ar6
	pop	ar7
	push	ar7
	push	ar6
	push	ar5
	push	ar2
	lcall	00216$
	sjmp	00217$
00216$:
	push	ar7
	push	ar6
	mov	a,sp
	add	a,#0xe4
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	ret
00217$:
	dec	sp
	dec	sp
	pop	ar6
	pop	ar7
00116$:
;	../contiki-sensinode/core/net/rime/collect.c:1008: return;
	ljmp	00140$
00131$:
;	../contiki-sensinode/core/net/rime/collect.c:1009: } else if(packetbuf_attr(PACKETBUF_ATTR_TTL) > 1 &&
	mov	dpl,#0x14
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_packetbuf_attr
	mov	r2,dpl
	mov	r3,dph
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	clr	c
	mov	a,#0x01
	subb	a,r2
	clr	a
	subb	a,r3
	jc	00218$
	ljmp	00127$
00218$:
;	../contiki-sensinode/core/net/rime/collect.c:1010: tc->rtmetric != RTMETRIC_MAX) {
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	cjne	r6,#0xFF,00219$
	cjne	r7,#0x01,00219$
	ljmp	00127$
00219$:
;	../contiki-sensinode/core/net/rime/collect.c:1019: if(hdr.rtmetric <= tc->rtmetric) {
	mov	a,sp
	add	a,#0xeb
	mov	r0,a
	mov	a,#0x02
	add	a,@r0
	mov	r1,a
	mov	ar3,@r1
	inc	r1
	mov	ar5,@r1
	clr	c
	mov	a,r6
	subb	a,r3
	mov	a,r7
	subb	a,r5
	jc	00119$
;	../contiki-sensinode/core/net/rime/collect.c:1020: ackflags |= ACK_FLAGS_RTMETRIC_NEEDS_UPDATE;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,@r0
	orl	a,#0x10
	mov	@r0,a
00119$:
;	../contiki-sensinode/core/net/rime/collect.c:1024: packetbuf_attr(PACKETBUF_ATTR_HOPS) + 1);
	mov	dpl,#0x13
	push	ar4
	lcall	_packetbuf_attr
	mov	a,dpl
	mov	b,dph
	add	a,#0x01
	mov	r6,a
	clr	a
	addc	a,b
	mov	r7,a
;	../contiki-sensinode/core/net/rime/collect.c:1023: packetbuf_set_attr(PACKETBUF_ATTR_HOPS,
	push	ar6
	push	ar7
	mov	dpl,#0x13
	lcall	_packetbuf_set_attr
	dec	sp
	dec	sp
;	../contiki-sensinode/core/net/rime/collect.c:1026: packetbuf_attr(PACKETBUF_ATTR_TTL) - 1);
	mov	dpl,#0x14
	lcall	_packetbuf_attr
	mov	a,dpl
	mov	b,dph
	add	a,#0xFF
	mov	r6,a
	mov	a,b
	addc	a,#0xFF
	mov	r7,a
;	../contiki-sensinode/core/net/rime/collect.c:1025: packetbuf_set_attr(PACKETBUF_ATTR_TTL,
	push	ar6
	push	ar7
	mov	dpl,#0x14
	lcall	_packetbuf_set_attr
	dec	sp
	dec	sp
	pop	ar4
;	../contiki-sensinode/core/net/rime/collect.c:1043: if(packetqueue_len(&tc->send_queue) <= MAX_SENDING_QUEUE - MIN_AVAILABLE_QUEUE_ENTRIES &&
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	a,#0x4F
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
	lcall	_packetqueue_len
	mov	r6,dpl
	mov	r7,dph
	pop	ar4
	clr	c
	mov	a,#0x02
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00221$
	ljmp	00121$
00221$:
;	../contiki-sensinode/core/net/rime/collect.c:1047: tc)) {
	push	ar4
	mov	a,sp
	add	a,#0xf4
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
;	../contiki-sensinode/core/net/rime/collect.c:1046: packetbuf_attr(PACKETBUF_ATTR_MAX_REXMIT),
	mov	dpl,#0x10
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_packetbuf_attr
	mov	r2,dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,sp
	add	a,#0xf0
	mov	r0,a
	mov	a,r2
	add	a,r2
	add	a,acc
	inc	r0
	mov	@r0,a
	dec	r0
	mov	@r0,#0x00
;	../contiki-sensinode/core/net/rime/collect.c:1044: packetqueue_enqueue_packetbuf(&tc->send_queue,
	mov	a,sp
	add	a,#0xf4
	mov	r0,a
	mov	a,#0x4F
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xec
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_packetqueue_enqueue_packetbuf
	mov	r6,dpl
	mov	r7,dph
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar4
	pop	ar4
	mov	a,r6
	orl	a,r7
	jz	00121$
;	../contiki-sensinode/core/net/rime/collect.c:1048: add_packet_to_recent_packets(tc);
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	push	ar4
	lcall	_add_packet_to_recent_packets
	pop	ar4
;	../contiki-sensinode/core/net/rime/collect.c:1049: send_ack(tc, &ack_to, ackflags);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	ar6,@r0
	mov	r7,#0x00
	mov	ar5,r4
	mov	r3,#0x00
	mov	r2,#0x40
	push	ar6
	push	ar7
	push	ar5
	push	ar3
	push	ar2
	mov	a,sp
	add	a,#0xf0
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_send_ack
	mov	a,sp
	add	a,#0xfb
;	../contiki-sensinode/core/net/rime/collect.c:1050: send_queued_packet(tc);
	mov	sp,a
	add	a,#0xf5
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_send_queued_packet
	ljmp	00137$
00121$:
;	../contiki-sensinode/core/net/rime/collect.c:1053: ackflags | ACK_FLAGS_DROPPED | ACK_FLAGS_CONGESTED);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0xC0
	orl	a,@r0
	mov	r7,a
	mov	r6,#0x00
;	../contiki-sensinode/core/net/rime/collect.c:1052: send_ack(tc, &ack_to,
	mov	ar5,r4
	mov	r3,#0x00
	mov	r2,#0x40
	push	ar7
	push	ar6
	push	ar5
	push	ar3
	push	ar2
	mov	a,sp
	add	a,#0xf0
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_send_ack
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	../contiki-sensinode/core/net/rime/collect.c:1056: stats.qdrop++;
	mov	dptr,#(_stats + 0x0024)
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	r3
	cjne	r3,#0x00,00223$
	inc	r5
	cjne	r5,#0x00,00223$
	inc	r6
	cjne	r6,#0x00,00223$
	inc	r7
00223$:
	mov	dptr,#(_stats + 0x0024)
	mov	a,r3
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	ljmp	00137$
00127$:
;	../contiki-sensinode/core/net/rime/collect.c:1058: } else if(packetbuf_attr(PACKETBUF_ATTR_TTL) <= 1) {
	mov	dpl,#0x14
	push	ar4
	lcall	_packetbuf_attr
	mov	r6,dpl
	mov	r7,dph
	pop	ar4
	clr	c
	mov	a,#0x01
	subb	a,r6
	clr	a
	subb	a,r7
	jnc	00224$
	ljmp	00137$
00224$:
;	../contiki-sensinode/core/net/rime/collect.c:1063: ACK_FLAGS_DROPPED | ACK_FLAGS_LIFETIME_EXCEEDED);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x60
	orl	a,@r0
	mov	r7,a
	mov	r6,#0x00
;	../contiki-sensinode/core/net/rime/collect.c:1062: send_ack(tc, &ack_to, ackflags |
	mov	r5,#0x00
	mov	r3,#0x40
	push	ar7
	push	ar6
	push	ar4
	push	ar5
	push	ar3
	mov	a,sp
	add	a,#0xf0
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_send_ack
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	../contiki-sensinode/core/net/rime/collect.c:1064: stats.ttldrop++;
	mov	dptr,#(_stats + 0x002c)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	r4
	cjne	r4,#0x00,00225$
	inc	r5
	cjne	r5,#0x00,00225$
	inc	r6
	cjne	r6,#0x00,00225$
	inc	r7
00225$:
	mov	dptr,#(_stats + 0x002c)
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	sjmp	00137$
00136$:
;	../contiki-sensinode/core/net/rime/collect.c:1066: } else if(packetbuf_attr(PACKETBUF_ATTR_PACKET_TYPE) ==
	mov	dpl,#0x0E
	lcall	_packetbuf_attr
	mov	r6,dpl
	mov	r7,dph
	cjne	r6,#0x01,00137$
	cjne	r7,#0x00,00137$
;	../contiki-sensinode/core/net/rime/collect.c:1076: handle_ack(tc);
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_handle_ack
;	../contiki-sensinode/core/net/rime/collect.c:1077: stats.ackrecv++;
	mov	dptr,#(_stats + 0x0018)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	r4
	cjne	r4,#0x00,00228$
	inc	r5
	cjne	r5,#0x00,00228$
	inc	r6
	cjne	r6,#0x00,00228$
	inc	r7
00228$:
	mov	dptr,#(_stats + 0x0018)
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
00137$:
;	../contiki-sensinode/core/net/rime/collect.c:1079: return;
00140$:
	mov	a,sp
	add	a,#0xEA
	mov	sp,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'timedout'
;------------------------------------------------------------
;tc                        Allocated to stack - sp -15
;n                         Allocated to registers r5 r6 r7 
;sloc0                     Allocated to stack - sp -12
;sloc1                     Allocated to stack - sp -10
;sloc2                     Allocated to stack - sp -8
;sloc3                     Allocated to stack - sp -6
;sloc4                     Allocated to stack - sp -4
;sloc5                     Allocated to stack - sp -2
;------------------------------------------------------------
;	../contiki-sensinode/core/net/rime/collect.c:1083: timedout(struct collect_conn *tc)
;	-----------------------------------------
;	 function timedout
;	-----------------------------------------
_timedout:
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x0D
;	../contiki-sensinode/core/net/rime/collect.c:1093: tc->max_rexmits);
	mov	sp,a
	add	a,#0xf1
	mov	r0,a
	mov	a,#0xA5
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
	mov	a,sp
	add	a,#0xf4
	mov	r0,a
	mov	@r0,ar7
	inc	r0
	mov	@r0,#0x00
;	../contiki-sensinode/core/net/rime/collect.c:1092: tc->current_parent.u8[0], tc->current_parent.u8[1],
	mov	a,sp
	add	a,#0xf1
	mov	r0,a
	mov	a,#0x9E
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	inc	r5
	cjne	r5,#0x00,00108$
	inc	r6
00108$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,#0x00
	mov	a,sp
	add	a,#0xf1
	mov	r0,a
	mov	a,#0x9E
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
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,#0x00
;	../contiki-sensinode/core/net/rime/collect.c:1091: rimeaddr_node_addr.u8[0], rimeaddr_node_addr.u8[1], tc->transmissions,
	mov	a,sp
	add	a,#0xf1
	mov	r0,a
	mov	a,#0xA4
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
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,#0x00
	mov	dptr,#(_rimeaddr_node_addr + 0x0001)
	movx	a,@dptr
	mov	r6,a
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	@r0,ar6
	inc	r0
	mov	@r0,#0x00
	mov	dptr,#_rimeaddr_node_addr
	movx	a,@dptr
	mov	r5,a
	mov	r7,#0x00
;	../contiki-sensinode/core/net/rime/collect.c:1090: printf("%d.%d: timedout after %d retransmissions to %d.%d (max retransmissions %d): packet dropped\n",
	push	ar4
	push	ar3
	push	ar2
	mov	a,sp
	add	a,#0xf1
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,sp
	add	a,#0xf1
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,sp
	add	a,#0xf1
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,sp
	add	a,#0xf1
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,sp
	add	a,#0xf1
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	push	ar5
	push	ar7
	mov	a,#___str_5
	push	acc
	mov	a,#(___str_5 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf1
	mov	sp,a
	pop	ar2
	pop	ar3
	pop	ar4
;	../contiki-sensinode/core/net/rime/collect.c:1095: tc->sending = 0;
	mov	a,sp
	add	a,#0xf1
	mov	r0,a
	mov	a,#0xA3
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
;	../contiki-sensinode/core/net/rime/collect.c:1097: &tc->current_parent);
	mov	a,sp
	add	a,#0xf1
	mov	r0,a
	mov	r1,sp
	dec	r1
	dec	r1
	mov	a,#0x9E
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
;	../contiki-sensinode/core/net/rime/collect.c:1096: n = collect_neighbor_list_find(&tc->neighbor_list,
	mov	a,sp
	add	a,#0xf1
	mov	r0,a
	mov	a,#0x55
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
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
	lcall	_collect_neighbor_list_find
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	dec	sp
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar4
;	../contiki-sensinode/core/net/rime/collect.c:1098: if(n != NULL) {
	mov	a,r5
	orl	a,r6
	jz	00102$
;	../contiki-sensinode/core/net/rime/collect.c:1099: collect_neighbor_tx_fail(n, tc->max_rexmits);
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	r4,#0x00
	push	ar2
	push	ar4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_collect_neighbor_tx_fail
	dec	sp
	dec	sp
00102$:
;	../contiki-sensinode/core/net/rime/collect.c:1101: update_rtmetric(tc);
	mov	a,sp
	add	a,#0xf1
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_update_rtmetric
;	../contiki-sensinode/core/net/rime/collect.c:1102: send_next_packet(tc);
	mov	a,sp
	add	a,#0xf1
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_send_next_packet
;	../contiki-sensinode/core/net/rime/collect.c:1103: set_keepalive_timer(tc);
	mov	a,sp
	add	a,#0xf1
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_set_keepalive_timer
	mov	a,sp
	add	a,#0xF0
	mov	sp,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'node_packet_sent'
;------------------------------------------------------------
;status                    Allocated to stack - sp -8
;transmissions             Allocated to stack - sp -10
;c                         Allocated to registers r5 r6 r7 
;tc                        Allocated to stack - sp -4
;time                      Allocated to stack - sp -1
;------------------------------------------------------------
;	../contiki-sensinode/core/net/rime/collect.c:1107: node_packet_sent(struct unicast_conn *c, int status, int transmissions)
;	-----------------------------------------
;	 function node_packet_sent
;	-----------------------------------------
_node_packet_sent:
	mov	a,sp
	add	a,#0x05
	mov	sp,a
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../contiki-sensinode/core/net/rime/collect.c:1109: struct collect_conn *tc = (struct collect_conn *)
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	../contiki-sensinode/core/net/rime/collect.c:1113: if(packetbuf_attr(PACKETBUF_ATTR_PACKET_TYPE) ==
	mov	dpl,#0x0E
	lcall	_packetbuf_attr
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jz	00114$
	ljmp	00106$
00114$:
;	../contiki-sensinode/core/net/rime/collect.c:1116: tc->transmissions += transmissions;
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,#0xA4
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
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	a,@r0
	add	a,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrput
;	../contiki-sensinode/core/net/rime/collect.c:1123: if(tc->transmissions >= tc->max_rexmits) {
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,#0xA5
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
	clr	c
	mov	a,r2
	subb	a,r5
	jc	00102$
;	../contiki-sensinode/core/net/rime/collect.c:1124: timedout(tc);
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_timedout
;	../contiki-sensinode/core/net/rime/collect.c:1125: stats.timedout++;
	mov	dptr,#(_stats + 0x0034)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	r4
	cjne	r4,#0x00,00116$
	inc	r5
	cjne	r5,#0x00,00116$
	inc	r6
	cjne	r6,#0x00,00116$
	inc	r7
00116$:
	mov	dptr,#(_stats + 0x0034)
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	sjmp	00106$
00102$:
;	../contiki-sensinode/core/net/rime/collect.c:1127: clock_time_t time = REXMIT_TIME / 2 + (random_rand() % (REXMIT_TIME / 2));
	lcall	_random_rand
	mov	a,dpl
	mov	b,dph
	mov	r6,a
	mov	r7,#0x00
	mov	r0,sp
	dec	r0
	mov	@r0,ar6
	mov	a,#0x01
	add	a,r7
	inc	r0
	mov	@r0,a
;	../contiki-sensinode/core/net/rime/collect.c:1130: retransmit_callback, tc);
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
;	../contiki-sensinode/core/net/rime/collect.c:1129: ctimer_set(&tc->retransmission_timer, time,
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,#0x34
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
	mov	a,#_retransmit_callback
	push	acc
	mov	a,#(_retransmit_callback >> 8)
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
	mov	dph,r6
	mov	b,r7
	lcall	_ctimer_set
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
00106$:
	mov	a,sp
	add	a,#0xFB
	mov	sp,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'retransmit_not_sent_callback'
;------------------------------------------------------------
;ptr                       Allocated to registers r5 r6 r7 
;c                         Allocated to stack - sp -2
;------------------------------------------------------------
;	../contiki-sensinode/core/net/rime/collect.c:1144: retransmit_not_sent_callback(void *ptr)
;	-----------------------------------------
;	 function retransmit_not_sent_callback
;	-----------------------------------------
_retransmit_not_sent_callback:
	inc	sp
	inc	sp
	inc	sp
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../contiki-sensinode/core/net/rime/collect.c:1146: struct collect_conn *c = ptr;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	../contiki-sensinode/core/net/rime/collect.c:1149: c->transmissions += MAX_MAC_REXMITS + 1;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0xA4
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
	inc	r7
	inc	r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r7
	lcall	__gptrput
;	../contiki-sensinode/core/net/rime/collect.c:1150: retransmit_callback(c);
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
	lcall	_retransmit_callback
	dec	sp
	dec	sp
	dec	sp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'retransmit_callback'
;------------------------------------------------------------
;ptr                       Allocated to registers r5 r6 r7 
;c                         Allocated to stack - sp -2
;------------------------------------------------------------
;	../contiki-sensinode/core/net/rime/collect.c:1161: retransmit_callback(void *ptr)
;	-----------------------------------------
;	 function retransmit_callback
;	-----------------------------------------
_retransmit_callback:
	inc	sp
	inc	sp
	inc	sp
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../contiki-sensinode/core/net/rime/collect.c:1163: struct collect_conn *c = ptr;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	../contiki-sensinode/core/net/rime/collect.c:1166: if(c->transmissions >= c->max_rexmits) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0xA4
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
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0xA5
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
	mov	r3,a
	clr	c
	mov	a,r2
	subb	a,r3
	jc	00102$
;	../contiki-sensinode/core/net/rime/collect.c:1167: timedout(c);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_timedout
;	../contiki-sensinode/core/net/rime/collect.c:1168: stats.timedout++;
	mov	dptr,#(_stats + 0x0034)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	r4
	cjne	r4,#0x00,00110$
	inc	r5
	cjne	r5,#0x00,00110$
	inc	r6
	cjne	r6,#0x00,00110$
	inc	r7
00110$:
	mov	dptr,#(_stats + 0x0034)
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	sjmp	00104$
00102$:
;	../contiki-sensinode/core/net/rime/collect.c:1170: c->sending = 0;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0xA3
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
;	../contiki-sensinode/core/net/rime/collect.c:1171: retransmit_current_packet(c);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_retransmit_current_packet
00104$:
	dec	sp
	dec	sp
	dec	sp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'received_announcement'
;------------------------------------------------------------
;from                      Allocated to stack - sp -7
;id                        Allocated to stack - sp -9
;value                     Allocated to stack - sp -11
;a                         Allocated to registers r5 r6 r7 
;tc                        Allocated to stack - sp -2
;n                         Allocated to registers r2 r3 r4 
;sloc0                     Allocated to stack - sp +7
;------------------------------------------------------------
;	../contiki-sensinode/core/net/rime/collect.c:1214: received_announcement(struct announcement *a, const rimeaddr_t *from,
;	-----------------------------------------
;	 function received_announcement
;	-----------------------------------------
_received_announcement:
	inc	sp
	inc	sp
	inc	sp
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../contiki-sensinode/core/net/rime/collect.c:1217: struct collect_conn *tc = (struct collect_conn *)
	mov	a,r5
	add	a,#0xEE
	mov	r5,a
	mov	a,r6
	addc	a,#0xFF
	mov	r6,a
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	../contiki-sensinode/core/net/rime/collect.c:1221: n = collect_neighbor_list_find(&tc->neighbor_list, from);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x55
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
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
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_collect_neighbor_list_find
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	dec	sp
	dec	sp
	dec	sp
;	../contiki-sensinode/core/net/rime/collect.c:1223: if(n == NULL) {
	mov	a,r2
	orl	a,r3
	jz	00141$
	ljmp	00110$
00141$:
;	../contiki-sensinode/core/net/rime/collect.c:1226: if(value < tc->rtmetric) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0xA0
	add	a,@r0
	mov	r4,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar2,@r0
	mov	dpl,r4
	mov	dph,r3
	mov	b,r2
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	clr	c
	mov	a,@r0
	subb	a,r6
	inc	r0
	mov	a,@r0
	subb	a,r7
	jnc	00102$
;	../contiki-sensinode/core/net/rime/collect.c:1227: collect_neighbor_list_add(&tc->neighbor_list, from, value);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x55
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	push	ar4
	push	ar3
	push	ar2
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,sp
	add	a,#0xf4
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
	lcall	_collect_neighbor_list_add
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar2
	pop	ar3
	pop	ar4
00102$:
;	../contiki-sensinode/core/net/rime/collect.c:1232: if(value == RTMETRIC_MAX && tc->rtmetric != RTMETRIC_MAX) {
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	cjne	@r0,#0xFF,00143$
	inc	r0
	cjne	@r0,#0x01,00143$
	sjmp	00144$
00143$:
	ljmp	00111$
00144$:
	mov	dpl,r4
	mov	dph,r3
	mov	b,r2
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	cjne	r6,#0xFF,00145$
	cjne	r7,#0x01,00145$
	sjmp	00111$
00145$:
;	../contiki-sensinode/core/net/rime/collect.c:1233: bump_advertisement(tc);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_bump_advertisement
	sjmp	00111$
00110$:
;	../contiki-sensinode/core/net/rime/collect.c:1244: if(value == RTMETRIC_MAX &&
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	cjne	@r0,#0xFF,00107$
	inc	r0
	cjne	@r0,#0x01,00107$
;	../contiki-sensinode/core/net/rime/collect.c:1245: collect_neighbor_rtmetric(n) != RTMETRIC_MAX) {
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar4
	push	ar3
	push	ar2
	lcall	_collect_neighbor_rtmetric
	mov	r6,dpl
	mov	r7,dph
	pop	ar2
	pop	ar3
	pop	ar4
	cjne	r6,#0xFF,00148$
	cjne	r7,#0x01,00148$
	sjmp	00107$
00148$:
;	../contiki-sensinode/core/net/rime/collect.c:1246: bump_advertisement(tc);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	push	ar4
	push	ar3
	push	ar2
	lcall	_bump_advertisement
	pop	ar2
	pop	ar3
	pop	ar4
00107$:
;	../contiki-sensinode/core/net/rime/collect.c:1248: collect_neighbor_update_rtmetric(n, value);
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_collect_neighbor_update_rtmetric
	dec	sp
	dec	sp
00111$:
;	../contiki-sensinode/core/net/rime/collect.c:1254: update_rtmetric(tc);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_update_rtmetric
;	../contiki-sensinode/core/net/rime/collect.c:1257: if(value == RTMETRIC_MAX &&
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	cjne	@r0,#0xFF,00115$
	inc	r0
	cjne	@r0,#0x01,00115$
;	../contiki-sensinode/core/net/rime/collect.c:1258: tc->rtmetric != RTMETRIC_MAX) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0xA0
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
	cjne	r5,#0xFF,00151$
	cjne	r6,#0x01,00151$
	sjmp	00115$
00151$:
;	../contiki-sensinode/core/net/rime/collect.c:1259: announcement_bump(&tc->announcement);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x12
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
	lcall	_announcement_bump
00115$:
	dec	sp
	dec	sp
	dec	sp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'collect_open'
;------------------------------------------------------------
;channels                  Allocated to stack - sp -8
;is_router                 Allocated to stack - sp -9
;cb                        Allocated to stack - sp -12
;tc                        Allocated to stack - sp -4
;sloc0                     Allocated to stack - sp -1
;------------------------------------------------------------
;	../contiki-sensinode/core/net/rime/collect.c:1273: collect_open(struct collect_conn *tc, uint16_t channels,
;	-----------------------------------------
;	 function collect_open
;	-----------------------------------------
_collect_open:
	push	dpl
	push	dph
	push	b
	inc	sp
	inc	sp
;	../contiki-sensinode/core/net/rime/collect.c:1277: unicast_open(&tc->unicast_conn, channels + 1, &unicast_callbacks);
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,#0x01
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	push	ar4
	push	ar3
	mov	a,#_unicast_callbacks
	push	acc
	mov	a,#(_unicast_callbacks >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	push	ar3
	push	ar4
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_unicast_open
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar3
	pop	ar4
;	../contiki-sensinode/core/net/rime/collect.c:1278: channel_set_attributes(channels + 1, attributes);
	mov	a,#_attributes
	push	acc
	mov	a,#(_attributes >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dpl,r3
	mov	dph,r4
	lcall	_channel_set_attributes
	dec	sp
	dec	sp
	dec	sp
;	../contiki-sensinode/core/net/rime/collect.c:1279: tc->rtmetric = RTMETRIC_MAX;
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,#0xA0
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
	mov	a,#0xFF
	lcall	__gptrput
	inc	dptr
	mov	a,#0x01
	lcall	__gptrput
;	../contiki-sensinode/core/net/rime/collect.c:1280: tc->cb = cb;
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,#0x31
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
	add	a,#0xf4
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
;	../contiki-sensinode/core/net/rime/collect.c:1281: tc->is_router = is_router;
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,#0xA7
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
	add	a,#0xf7
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
;	../contiki-sensinode/core/net/rime/collect.c:1282: tc->seqno = 10;
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,#0xA2
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
	mov	a,#0x0A
	lcall	__gptrput
;	../contiki-sensinode/core/net/rime/collect.c:1283: tc->eseqno = 0;
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,#0xA6
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
;	../contiki-sensinode/core/net/rime/collect.c:1284: LIST_STRUCT_INIT(tc, send_queue_list);
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,#0x4C
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,#0x49
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
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
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar4
	push	ar3
	push	ar2
	lcall	_list_init
	pop	ar2
	pop	ar3
	pop	ar4
;	../contiki-sensinode/core/net/rime/collect.c:1285: collect_neighbor_list_new(&tc->neighbor_list);
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,#0x55
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
	lcall	_collect_neighbor_list_new
	pop	ar2
	pop	ar3
	pop	ar4
;	../contiki-sensinode/core/net/rime/collect.c:1286: tc->send_queue.list = &(tc->send_queue_list);
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,#0x4F
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
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
;	../contiki-sensinode/core/net/rime/collect.c:1287: tc->send_queue.memb = &send_queue_memb;
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,#0x4F
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,#0x03
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#_send_queue_memb
	lcall	__gptrput
	inc	dptr
	mov	a,#(_send_queue_memb >> 8)
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
;	../contiki-sensinode/core/net/rime/collect.c:1288: collect_neighbor_init();
	lcall	_collect_neighbor_init
;	../contiki-sensinode/core/net/rime/collect.c:1302: announcement_register(&tc->announcement, channels,
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,#0x12
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,#_received_announcement
	push	acc
	mov	a,#(_received_announcement >> 8)
	push	acc
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_announcement_register
	mov	a,sp
	add	a,#0xfc
;	../contiki-sensinode/core/net/rime/collect.c:1305: announcement_set_value(&tc->announcement, RTMETRIC_MAX);
	mov	sp,a
	add	a,#0xfc
	mov	r0,a
	mov	a,#0x12
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,#0xFF
	push	acc
	mov	a,#0x01
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_announcement_set_value
	dec	sp
	dec	sp
;	../contiki-sensinode/core/net/rime/collect.c:1310: proactive_probing_callback, tc);
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
;	../contiki-sensinode/core/net/rime/collect.c:1309: ctimer_set(&tc->proactive_probing_timer, PROACTIVE_PROBING_INTERVAL,
	push	ar7
	push	ar6
	push	ar5
	lcall	_random_rand
	mov	a,dpl
	mov	b,dph
	anl	a,#0x7F
	mov	r3,a
	mov	r4,#0x00
	push	ar3
	push	ar4
	mov	dptr,#0x003C
	lcall	__mulint
	xch	a,r0
	mov	a,sp
	add	a,#0xfa
	xch	a,r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,#0x87
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
	mov	a,#_proactive_probing_callback
	push	acc
	mov	a,#(_proactive_probing_callback >> 8)
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
	add	a,#0xFB
	mov	sp,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'send_keepalive'
;------------------------------------------------------------
;ptr                       Allocated to registers r5 r6 r7 
;c                         Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../contiki-sensinode/core/net/rime/collect.c:1315: send_keepalive(void *ptr)
;	-----------------------------------------
;	 function send_keepalive
;	-----------------------------------------
_send_keepalive:
;	../contiki-sensinode/core/net/rime/collect.c:1317: struct collect_conn *c = ptr;
;	../contiki-sensinode/core/net/rime/collect.c:1319: set_keepalive_timer(c);
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	push	ar7
	push	ar6
	push	ar5
	lcall	_set_keepalive_timer
	pop	ar5
	pop	ar6
	pop	ar7
;	../contiki-sensinode/core/net/rime/collect.c:1322: if(c->sending == 0 && packetqueue_len(&c->send_queue) == 0) {
	mov	a,#0xA3
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
	mov	a,#0x4F
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	_packetqueue_len
	mov	a,dpl
	mov	b,dph
	pop	ar5
	pop	ar6
	pop	ar7
	orl	a,b
	jnz	00106$
;	../contiki-sensinode/core/net/rime/collect.c:1323: if(enqueue_dummy_packet(c, KEEPALIVE_REXMITS)) {
	push	ar7
	push	ar6
	push	ar5
	mov	a,#0x08
	push	acc
	clr	a
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_enqueue_dummy_packet
	mov	r3,dpl
	mov	r4,dph
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r3
	orl	a,r4
	jz	00106$
;	../contiki-sensinode/core/net/rime/collect.c:1326: send_queued_packet(c);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	ljmp	_send_queued_packet
00106$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'set_keepalive_timer'
;------------------------------------------------------------
;c                         Allocated to stack - sp -7
;sloc0                     Allocated to stack - sp -4
;sloc1                     Allocated to stack - sp -2
;------------------------------------------------------------
;	../contiki-sensinode/core/net/rime/collect.c:1332: set_keepalive_timer(struct collect_conn *c)
;	-----------------------------------------
;	 function set_keepalive_timer
;	-----------------------------------------
_set_keepalive_timer:
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x05
;	../contiki-sensinode/core/net/rime/collect.c:1334: if(c->keepalive_period != 0) {
	mov	sp,a
	add	a,#0xf9
	mov	r0,a
	mov	a,#0x85
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
	orl	a,r7
	jnz	00109$
	ljmp	00102$
00109$:
;	../contiki-sensinode/core/net/rime/collect.c:1337: send_keepalive, c);
	mov	a,sp
	add	a,#0xf9
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
;	../contiki-sensinode/core/net/rime/collect.c:1335: ctimer_set(&c->keepalive_timer, (c->keepalive_period / 2) +
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	@r0,ar7
	mov	a,r6
	clr	c
	rrc	a
	xch	a,@r0
	rrc	a
	xch	a,@r0
	inc	r0
	mov	@r0,a
;	../contiki-sensinode/core/net/rime/collect.c:1336: (random_rand() % (c->keepalive_period / 2)),
	push	ar4
	push	ar3
	push	ar2
	lcall	_random_rand
	mov	r5,dpl
	mov	r7,dph
	pop	ar2
	pop	ar3
	pop	ar4
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	clr	c
	rrc	a
	xch	a,r2
	rrc	a
	xch	a,r2
	mov	r3,a
	push	ar2
	push	ar3
	mov	dpl,r5
	mov	dph,r7
	lcall	__moduint
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,r6
	add	a,@r0
	mov	r6,a
	mov	a,r7
	inc	r0
	addc	a,@r0
	mov	r7,a
;	../contiki-sensinode/core/net/rime/collect.c:1335: ctimer_set(&c->keepalive_timer, (c->keepalive_period / 2) +
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	a,#0x70
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar5,@r0
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
	mov	a,#_send_keepalive
	push	acc
	mov	a,#(_send_keepalive >> 8)
	push	acc
	push	ar6
	push	ar7
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	_ctimer_set
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	sjmp	00104$
00102$:
;	../contiki-sensinode/core/net/rime/collect.c:1339: ctimer_stop(&c->keepalive_timer);
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	a,#0x70
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
00104$:
	mov	a,sp
	add	a,#0xF8
	mov	sp,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'collect_set_keepalive'
;------------------------------------------------------------
;period                    Allocated to stack - sp -3
;c                         Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../contiki-sensinode/core/net/rime/collect.c:1344: collect_set_keepalive(struct collect_conn *c, clock_time_t period)
;	-----------------------------------------
;	 function collect_set_keepalive
;	-----------------------------------------
_collect_set_keepalive:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../contiki-sensinode/core/net/rime/collect.c:1346: c->keepalive_period = period;
	mov	a,#0x85
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
;	../contiki-sensinode/core/net/rime/collect.c:1347: set_keepalive_timer(c);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	ljmp	_set_keepalive_timer
;------------------------------------------------------------
;Allocation info for local variables in function 'collect_close'
;------------------------------------------------------------
;tc                        Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../contiki-sensinode/core/net/rime/collect.c:1351: collect_close(struct collect_conn *tc)
;	-----------------------------------------
;	 function collect_close
;	-----------------------------------------
_collect_close:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../contiki-sensinode/core/net/rime/collect.c:1354: announcement_remove(&tc->announcement);
	mov	a,#0x12
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	_announcement_remove
	pop	ar5
	pop	ar6
	pop	ar7
;	../contiki-sensinode/core/net/rime/collect.c:1358: unicast_close(&tc->unicast_conn);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar7
	push	ar6
	push	ar5
	lcall	_unicast_close
	pop	ar5
	pop	ar6
	pop	ar7
;	../contiki-sensinode/core/net/rime/collect.c:1359: while(packetqueue_first(&tc->send_queue) != NULL) {
00101$:
	mov	a,#0x4F
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	_packetqueue_first
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r2
	orl	a,r3
	jz	00104$
;	../contiki-sensinode/core/net/rime/collect.c:1360: packetqueue_dequeue(&tc->send_queue);
	mov	a,#0x4F
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	_packetqueue_dequeue
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00101$
00104$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'collect_set_sink'
;------------------------------------------------------------
;should_be_sink            Allocated to stack - sp -6
;tc                        Allocated to stack - sp -2
;------------------------------------------------------------
;	../contiki-sensinode/core/net/rime/collect.c:1365: collect_set_sink(struct collect_conn *tc, int should_be_sink)
;	-----------------------------------------
;	 function collect_set_sink
;	-----------------------------------------
_collect_set_sink:
	push	dpl
	push	dph
	push	b
;	../contiki-sensinode/core/net/rime/collect.c:1367: if(should_be_sink) {
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00120$
	ljmp	00105$
00120$:
;	../contiki-sensinode/core/net/rime/collect.c:1368: tc->is_router = 1;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0xA7
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
	mov	a,#0x01
	lcall	__gptrput
;	../contiki-sensinode/core/net/rime/collect.c:1369: tc->rtmetric = RTMETRIC_SINK;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0xA0
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
	inc	dptr
	lcall	__gptrput
;	../contiki-sensinode/core/net/rime/collect.c:1371: bump_advertisement(tc);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_bump_advertisement
;	../contiki-sensinode/core/net/rime/collect.c:1374: while(packetqueue_len(&tc->send_queue) > 0) {
00101$:
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x4F
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
	lcall	_packetqueue_len
	mov	r3,dpl
	mov	r4,dph
	clr	c
	clr	a
	subb	a,r3
	mov	a,#(0x00 ^ 0x80)
	mov	b,r4
	xrl	b,#0x80
	subb	a,b
	jnc	00103$
;	../contiki-sensinode/core/net/rime/collect.c:1375: packetqueue_dequeue(&tc->send_queue);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x4F
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
	lcall	_packetqueue_dequeue
	sjmp	00101$
00103$:
;	../contiki-sensinode/core/net/rime/collect.c:1379: ctimer_stop(&tc->retransmission_timer);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x34
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
	sjmp	00106$
00105$:
;	../contiki-sensinode/core/net/rime/collect.c:1381: tc->rtmetric = RTMETRIC_MAX;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0xA0
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
	mov	a,#0xFF
	lcall	__gptrput
	inc	dptr
	mov	a,#0x01
	lcall	__gptrput
00106$:
;	../contiki-sensinode/core/net/rime/collect.c:1384: announcement_set_value(&tc->announcement, tc->rtmetric);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0xA0
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
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x12
	add	a,@r0
	mov	r4,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	push	ar2
	push	ar3
	mov	dpl,r4
	mov	dph,r6
	mov	b,r7
	lcall	_announcement_set_value
	dec	sp
	dec	sp
;	../contiki-sensinode/core/net/rime/collect.c:1386: update_rtmetric(tc);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_update_rtmetric
;	../contiki-sensinode/core/net/rime/collect.c:1388: bump_advertisement(tc);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_bump_advertisement
;	../contiki-sensinode/core/net/rime/collect.c:1391: printf("#A rt=0,p=0\n");
	dec	sp
	dec	sp
	dec	sp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'collect_send'
;------------------------------------------------------------
;rexmits                   Allocated to stack - sp -9
;tc                        Allocated to stack - sp -5
;n                         Allocated to registers r5 r6 r7 
;ret                       Allocated to registers r6 r7 
;sloc0                     Allocated to stack - sp -2
;sloc1                     Allocated to stack - sp -1
;------------------------------------------------------------
;	../contiki-sensinode/core/net/rime/collect.c:1396: collect_send(struct collect_conn *tc, int rexmits)
;	-----------------------------------------
;	 function collect_send
;	-----------------------------------------
_collect_send:
	push	dpl
	push	dph
	push	b
	inc	sp
	inc	sp
	inc	sp
;	../contiki-sensinode/core/net/rime/collect.c:1401: packetbuf_set_attr(PACKETBUF_ATTR_EPACKET_ID, tc->eseqno);
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0xA6
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
	mov	r6,#0x00
	push	ar4
	push	ar3
	push	ar2
	push	ar7
	push	ar6
	mov	dpl,#0x15
	lcall	_packetbuf_set_attr
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar4
;	../contiki-sensinode/core/net/rime/collect.c:1411: tc->eseqno = (tc->eseqno + 1) % (1 << COLLECT_PACKET_ID_BITS);
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r7,a
	mov	r6,#0x00
	inc	r7
	cjne	r7,#0x00,00137$
	inc	r6
00137$:
	push	ar4
	push	ar3
	push	ar2
	clr	a
	push	acc
	inc	a
	push	acc
	mov	dpl,r7
	mov	dph,r6
	lcall	__modsint
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar4
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
;	../contiki-sensinode/core/net/rime/collect.c:1413: if(tc->eseqno == 0) {
	mov	a,r6
	lcall	__gptrput
	jnz	00102$
;	../contiki-sensinode/core/net/rime/collect.c:1414: tc->eseqno = ((int)(1 << COLLECT_PACKET_ID_BITS)) / 2;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0x80
	lcall	__gptrput
00102$:
;	../contiki-sensinode/core/net/rime/collect.c:1416: packetbuf_set_addr(PACKETBUF_ADDR_ESENDER, &rimeaddr_node_addr);
	mov	a,#_rimeaddr_node_addr
	push	acc
	mov	a,#(_rimeaddr_node_addr >> 8)
	push	acc
	clr	a
	push	acc
	mov	dpl,#0x1A
	lcall	_packetbuf_set_addr
	dec	sp
	dec	sp
	dec	sp
;	../contiki-sensinode/core/net/rime/collect.c:1417: packetbuf_set_attr(PACKETBUF_ATTR_HOPS, 1);
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	mov	dpl,#0x13
	lcall	_packetbuf_set_attr
	dec	sp
	dec	sp
;	../contiki-sensinode/core/net/rime/collect.c:1418: packetbuf_set_attr(PACKETBUF_ATTR_TTL, MAX_HOPLIM);
	mov	a,#0x0F
	push	acc
	clr	a
	push	acc
	mov	dpl,#0x14
	lcall	_packetbuf_set_attr
	dec	sp
	dec	sp
;	../contiki-sensinode/core/net/rime/collect.c:1419: if(rexmits > MAX_REXMITS) {
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	clr	c
	mov	a,#0x1F
	subb	a,@r0
	mov	a,#(0x00 ^ 0x80)
	inc	r0
	mov	b,@r0
	xrl	b,#0x80
	subb	a,b
	jnc	00104$
;	../contiki-sensinode/core/net/rime/collect.c:1420: packetbuf_set_attr(PACKETBUF_ATTR_MAX_REXMIT, MAX_REXMITS);
	mov	a,#0x1F
	push	acc
	clr	a
	push	acc
	mov	dpl,#0x10
	lcall	_packetbuf_set_attr
	dec	sp
	dec	sp
	sjmp	00105$
00104$:
;	../contiki-sensinode/core/net/rime/collect.c:1422: packetbuf_set_attr(PACKETBUF_ATTR_MAX_REXMIT, rexmits);
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,#0x10
	lcall	_packetbuf_set_attr
	dec	sp
	dec	sp
00105$:
;	../contiki-sensinode/core/net/rime/collect.c:1430: if(tc->rtmetric == RTMETRIC_SINK) {
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0xA0
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
	orl	a,r5
	jz	00140$
	ljmp	00115$
00140$:
;	../contiki-sensinode/core/net/rime/collect.c:1431: packetbuf_set_attr(PACKETBUF_ATTR_HOPS, 0);
	clr	a
	push	acc
	push	acc
	mov	dpl,#0x13
	lcall	_packetbuf_set_attr
	dec	sp
	dec	sp
;	../contiki-sensinode/core/net/rime/collect.c:1432: if(tc->cb->recv != NULL) {
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x31
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
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	orl	a,r6
	jz	00107$
;	../contiki-sensinode/core/net/rime/collect.c:1435: packetbuf_attr(PACKETBUF_ATTR_HOPS));
	mov	dpl,#0x13
	push	ar7
	push	ar6
	lcall	_packetbuf_attr
	mov	r4,dpl
;	../contiki-sensinode/core/net/rime/collect.c:1434: packetbuf_attr(PACKETBUF_ATTR_EPACKET_ID),
	mov	dpl,#0x15
	push	ar4
	lcall	_packetbuf_attr
	mov	r3,dpl
	pop	ar4
	pop	ar6
	pop	ar7
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar3
;	../contiki-sensinode/core/net/rime/collect.c:1433: tc->cb->recv(packetbuf_addr(PACKETBUF_ADDR_ESENDER),
	mov	dpl,#0x1A
	push	ar7
	push	ar6
	push	ar4
	lcall	_packetbuf_addr
	mov	r2,dpl
	mov	r3,dph
	mov	r5,b
	pop	ar4
	pop	ar6
	pop	ar7
	push	ar7
	push	ar6
	push	ar4
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	push	acc
	lcall	00142$
	sjmp	00143$
00142$:
	push	ar6
	push	ar7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r5
	ret
00143$:
	dec	sp
	dec	sp
	pop	ar6
	pop	ar7
00107$:
;	../contiki-sensinode/core/net/rime/collect.c:1437: return 1;
	mov	dptr,#0x0001
	ljmp	00117$
00115$:
;	../contiki-sensinode/core/net/rime/collect.c:1441: packetbuf_hdralloc(sizeof(struct data_msg_hdr));
	mov	dptr,#0x0004
	lcall	_packetbuf_hdralloc
;	../contiki-sensinode/core/net/rime/collect.c:1446: tc)) {
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
;	../contiki-sensinode/core/net/rime/collect.c:1445: packetbuf_attr(PACKETBUF_ATTR_MAX_REXMIT),
	mov	dpl,#0x10
	push	ar7
	push	ar6
	push	ar5
	lcall	_packetbuf_attr
	mov	r3,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	mov	r0,sp
	dec	r0
	mov	a,r3
	add	a,r3
	add	a,acc
	inc	r0
	mov	@r0,a
	dec	r0
	mov	@r0,#0x00
;	../contiki-sensinode/core/net/rime/collect.c:1443: if(packetqueue_enqueue_packetbuf(&tc->send_queue,
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x4F
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
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_packetqueue_enqueue_packetbuf
	mov	r6,dpl
	mov	r7,dph
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	mov	a,r6
	orl	a,r7
	jz	00109$
;	../contiki-sensinode/core/net/rime/collect.c:1447: send_queued_packet(tc);
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_send_queued_packet
;	../contiki-sensinode/core/net/rime/collect.c:1448: ret = 1;
	mov	r6,#0x01
	mov	r7,#0x00
	sjmp	00110$
00109$:
;	../contiki-sensinode/core/net/rime/collect.c:1453: rimeaddr_node_addr.u8[0], rimeaddr_node_addr.u8[1]);
	mov	dptr,#(_rimeaddr_node_addr + 0x0001)
	movx	a,@dptr
	mov	r5,a
	mov	r4,#0x00
	mov	dptr,#_rimeaddr_node_addr
	movx	a,@dptr
	mov	r3,a
	mov	r2,#0x00
;	../contiki-sensinode/core/net/rime/collect.c:1452: printf("%d.%d: drop originated packet: no queuebuf\n",
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	mov	a,#___str_7
	push	acc
	mov	a,#(___str_7 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
;	../contiki-sensinode/core/net/rime/collect.c:1454: ret = 0;
	mov	r6,#0x00
	mov	r7,#0x00
00110$:
;	../contiki-sensinode/core/net/rime/collect.c:1458: n = collect_neighbor_list_find(&tc->neighbor_list, &tc->parent);
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	a,#0x9C
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar5,@r0
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	a,#0x55
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
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	lcall	_collect_neighbor_list_find
	mov	r5,dpl
	mov	r6,dph
	dec	sp
	dec	sp
	dec	sp
;	../contiki-sensinode/core/net/rime/collect.c:1459: if(n != NULL) {
	mov	a,r5
	orl	a,r6
	pop	ar7
	pop	ar6
	jnz	00116$
;	../contiki-sensinode/core/net/rime/collect.c:1473: announcement_set_value(&tc->announcement, RTMETRIC_MAX);
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x12
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
	mov	a,#0xFF
	push	acc
	mov	a,#0x01
	push	acc
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	_announcement_set_value
	dec	sp
	dec	sp
	pop	ar6
	pop	ar7
;	../contiki-sensinode/core/net/rime/collect.c:1474: announcement_bump(&tc->announcement);
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x12
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
	push	ar7
	push	ar6
	lcall	_announcement_bump
	pop	ar6
	pop	ar7
00116$:
;	../contiki-sensinode/core/net/rime/collect.c:1491: return ret;
	mov	dpl,r6
	mov	dph,r7
00117$:
	mov	a,sp
	add	a,#0xFA
	mov	sp,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'collect_depth'
;------------------------------------------------------------
;tc                        Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../contiki-sensinode/core/net/rime/collect.c:1495: collect_depth(struct collect_conn *tc)
;	-----------------------------------------
;	 function collect_depth
;	-----------------------------------------
_collect_depth:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../contiki-sensinode/core/net/rime/collect.c:1497: return tc->rtmetric;
	mov	a,#0xA0
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
	inc	dptr
	lcall	__gptrget
	mov	dpl,r5
	mov	dph,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'collect_parent'
;------------------------------------------------------------
;tc                        Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../contiki-sensinode/core/net/rime/collect.c:1501: collect_parent(struct collect_conn *tc)
;	-----------------------------------------
;	 function collect_parent
;	-----------------------------------------
_collect_parent:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../contiki-sensinode/core/net/rime/collect.c:1503: return &tc->current_parent;
	mov	a,#0x9E
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'collect_purge'
;------------------------------------------------------------
;tc                        Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../contiki-sensinode/core/net/rime/collect.c:1507: collect_purge(struct collect_conn *tc)
;	-----------------------------------------
;	 function collect_purge
;	-----------------------------------------
_collect_purge:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../contiki-sensinode/core/net/rime/collect.c:1509: collect_neighbor_list_purge(&tc->neighbor_list);
	mov	a,#0x55
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	_collect_neighbor_list_purge
	pop	ar5
	pop	ar6
	pop	ar7
;	../contiki-sensinode/core/net/rime/collect.c:1510: rimeaddr_copy(&tc->parent, &rimeaddr_null);
	mov	a,#0x9C
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
	pop	ar5
	pop	ar6
	pop	ar7
;	../contiki-sensinode/core/net/rime/collect.c:1511: update_rtmetric(tc);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar7
	push	ar6
	push	ar5
	lcall	_update_rtmetric
	pop	ar5
	pop	ar6
	pop	ar7
;	../contiki-sensinode/core/net/rime/collect.c:1515: rimeaddr_copy(&tc->parent, &rimeaddr_null);
	mov	a,#0x9C
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	a,#_rimeaddr_null
	push	acc
	mov	a,#(_rimeaddr_null >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_rimeaddr_copy
	dec	sp
	dec	sp
	dec	sp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'collect_print_stats'
;------------------------------------------------------------
;	../contiki-sensinode/core/net/rime/collect.c:1519: collect_print_stats(void)
;	-----------------------------------------
;	 function collect_print_stats
;	-----------------------------------------
_collect_print_stats:
;	../contiki-sensinode/core/net/rime/collect.c:1527: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
_attributes:
	.db #0x1A	; 26
	.db #0x10	; 16
	.db #0x15	; 21
	.db #0x08	; 8
	.db #0x0D	; 13
	.db #0x08	; 8
	.db #0x14	; 20
	.db #0x04	; 4
	.db #0x13	; 19
	.db #0x04	; 4
	.db #0x10	; 16
	.db #0x05	; 5
	.db #0x0E	; 14
	.db #0x01	; 1
	.db #0x19	; 25
	.db #0x10	; 16
	.db #0x18	; 24
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x00	; 0
___str_0:
	.ascii "#A e=%d"
	.db 0x0A
	.db 0x00
___str_1:
	.ascii "#L %d 0"
	.db 0x0A
	.db 0x00
___str_2:
	.ascii "#L %d 1"
	.db 0x0A
	.db 0x00
___str_3:
	.ascii "#A rt=%d,p=%d"
	.db 0x0A
	.db 0x00
___str_4:
	.ascii "#A s=%d"
	.db 0x0A
	.db 0x00
___str_5:
	.ascii "%d.%d: timedout after %d retransmissions to %d.%d (max retra"
	.ascii "nsmissions %d): packet dropped"
	.db 0x0A
	.db 0x00
_unicast_callbacks:
	.byte _node_packet_received,(_node_packet_received >> 8)
	.byte _node_packet_sent,(_node_packet_sent >> 8)
___str_6:
	.ascii "#A rt=0,p=0"
	.db 0x0A
	.db 0x00
___str_7:
	.ascii "%d.%d: drop originated packet: no queuebuf"
	.db 0x0A
	.db 0x00
	.area XINIT   (CODE)
__xinit__send_queue_memb:
	.byte #0x21,#0x00	; 33
	.byte #0x06,#0x00	; 6
	.byte _send_queue_memb_memb_count,(_send_queue_memb_memb_count >> 8),#0x00
	.byte _send_queue_memb_memb_mem,(_send_queue_memb_memb_mem >> 8),#0x00
	.area CABS    (ABS,CODE)
