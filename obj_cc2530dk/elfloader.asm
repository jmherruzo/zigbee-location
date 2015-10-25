;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.4.0 #8981 (Oct 24 2015) (Linux)
; This file was generated Sun Oct 25 01:52:08 2015
;--------------------------------------------------------
	.module elfloader
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _symtab_lookup
	.globl _elfloader_arch_write_rom
	.globl _elfloader_arch_relocate
	.globl _elfloader_arch_allocate_rom
	.globl _elfloader_arch_allocate_ram
	.globl _cfs_seek
	.globl _cfs_read
	.globl _memset
	.globl _strncmp
	.globl _strcmp
	.globl _memcmp
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
	.globl _elfloader_autostart_processes
	.globl _elfloader_unknown
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
	.globl _elfloader_init
	.globl _elfloader_load
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
_elfloader_unknown::
	.ds 30
_elfloader_autostart_processes::
	.ds 3
_bss:
	.ds 6
_data:
	.ds 6
_rodata:
	.ds 6
_text:
	.ds 6
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
;Allocation info for local variables in function 'seek_read'
;------------------------------------------------------------
;offset                    Allocated to stack - sp -3
;buf                       Allocated to stack - sp -6
;len                       Allocated to stack - sp -8
;fd                        Allocated to registers r6 r7 
;------------------------------------------------------------
;	../contiki-sensinode/core/loader/elfloader.c:149: seek_read(int fd, unsigned int offset, char *buf, int len)
;	-----------------------------------------
;	 function seek_read
;	-----------------------------------------
_seek_read:
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
;	../contiki-sensinode/core/loader/elfloader.c:151: cfs_seek(fd, offset, CFS_SEEK_SET);
	push	ar7
	push	ar6
	clr	a
	push	acc
	push	acc
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r6
	mov	dph,r7
	lcall	_cfs_seek
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar6
	pop	ar7
;	../contiki-sensinode/core/loader/elfloader.c:152: cfs_read(fd, buf, len);
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	push	ar3
	push	ar4
	push	ar5
	mov	dpl,r6
	mov	dph,r7
	lcall	_cfs_read
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'find_local_symbol'
;------------------------------------------------------------
;symbol                    Allocated to stack - sp -63
;symtab                    Allocated to stack - sp -65
;symtabsize                Allocated to stack - sp -67
;strtab                    Allocated to stack - sp -69
;fd                        Allocated to stack - sp -58
;s                         Allocated to stack - sp -45
;a                         Allocated to registers r4 r5 
;name                      Allocated to stack - sp -29
;sect                      Allocated to registers r5 r6 r7 
;sloc0                     Allocated to stack - sp -56
;sloc1                     Allocated to stack - sp -54
;sloc2                     Allocated to stack - sp -50
;sloc3                     Allocated to stack - sp -49
;sloc4                     Allocated to stack - sp -46
;------------------------------------------------------------
;	../contiki-sensinode/core/loader/elfloader.c:176: find_local_symbol(int fd, const char *symbol,
;	-----------------------------------------
;	 function find_local_symbol
;	-----------------------------------------
_find_local_symbol:
	push	dpl
	push	dph
	mov	a,sp
	add	a,#0x39
;	../contiki-sensinode/core/loader/elfloader.c:185: for(a = symtab; a < symtab + symtabsize; a += sizeof(s)) {
	mov	sp,a
	add	a,#0xbf
	mov	r0,a
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	mov	a,sp
	add	a,#0xd2
	mov	r0,a
	mov	a,sp
	add	a,#0xE3
	mov	@r0,a
	mov	a,sp
	add	a,#0xd2
	mov	r0,a
	mov	a,sp
	add	a,#0xce
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	mov	a,sp
	add	a,#0xbd
	mov	r0,a
	mov	a,sp
	add	a,#0xc8
	mov	r1,a
	mov	a,@r0
	add	a,r4
	mov	@r1,a
	inc	r0
	mov	a,@r0
	addc	a,r5
	inc	r1
	mov	@r1,a
00116$:
	mov	a,sp
	add	a,#0xc8
	mov	r0,a
	clr	c
	mov	a,r4
	subb	a,@r0
	mov	a,r5
	inc	r0
	subb	a,@r0
	jc	00141$
	ljmp	00114$
00141$:
;	../contiki-sensinode/core/loader/elfloader.c:186: seek_read(fd, a, (char *)&s, sizeof(s));
	mov	a,sp
	add	a,#0xD3
	mov	r1,a
	mov	r2,a
	mov	r6,#0x00
	mov	r7,#0x40
	push	ar5
	push	ar4
	push	ar1
	mov	a,#0x10
	push	acc
	clr	a
	push	acc
	push	ar2
	push	ar6
	push	ar7
	push	ar4
	push	ar5
	mov	a,sp
	add	a,#0xbc
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	_seek_read
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	pop	ar1
	pop	ar4
	pop	ar5
;	../contiki-sensinode/core/loader/elfloader.c:188: if(s.st_name != 0) {
	mov	a,sp
	add	a,#0xca
	mov	r0,a
	mov	a,@r1
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	mov	@r0,a
	dec	r1
	dec	r1
	dec	r1
	mov	a,sp
	add	a,#0xca
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00142$
	ljmp	00117$
00142$:
;	../contiki-sensinode/core/loader/elfloader.c:189: seek_read(fd, strtab + s.st_name, name, sizeof(name));
	push	ar1
	mov	a,sp
	add	a,#0xd1
	mov	r0,a
	push	ar1
	mov	a,sp
	add	a,#0xcd
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r1
	mov	@r1,#0x00
	inc	r1
	mov	@r1,#0x40
	pop	ar1
	mov	a,sp
	add	a,#0xba
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	clr	a
	mov	r6,a
	mov	r7,a
	mov	a,sp
	add	a,#0xc9
	mov	r0,a
	mov	a,@r0
	add	a,r2
	mov	r2,a
	inc	r0
	mov	a,@r0
	addc	a,r3
	mov	r3,a
	inc	r0
	mov	a,@r0
	addc	a,r6
	inc	r0
	mov	a,@r0
	addc	a,r7
	push	ar5
	push	ar4
	push	ar1
	mov	a,#0x1E
	push	acc
	clr	a
	push	acc
	mov	a,sp
	add	a,#0xc9
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
	push	ar3
	mov	a,sp
	add	a,#0xbb
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	_seek_read
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	pop	ar1
	pop	ar4
	pop	ar5
;	../contiki-sensinode/core/loader/elfloader.c:190: if(strcmp(name, symbol) == 0) {
	mov	a,sp
	add	a,#0xcd
	mov	r0,a
	mov	ar2,@r0
	mov	r6,#0x00
	mov	r7,#0x40
	push	ar5
	push	ar4
	push	ar1
	mov	a,sp
	add	a,#0xbd
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
	mov	dph,r6
	mov	b,r7
	lcall	_strcmp
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	pop	ar1
	pop	ar4
	pop	ar5
	pop	ar1
	mov	a,r6
	orl	a,r7
	jz	00143$
	ljmp	00117$
00143$:
;	../contiki-sensinode/core/loader/elfloader.c:191: if(s.st_shndx == bss.number) {
	mov	a,#0x0E
	add	a,r1
	mov	r0,a
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	dptr,#_bss
	movx	a,@dptr
	mov	r3,a
	mov	r2,#0x00
	mov	a,r6
	cjne	a,ar3,00108$
	mov	a,r7
	cjne	a,ar2,00108$
;	../contiki-sensinode/core/loader/elfloader.c:192: sect = &bss;
	mov	r5,#_bss
	mov	r6,#(_bss >> 8)
	mov	r7,#0x00
	sjmp	00109$
00108$:
;	../contiki-sensinode/core/loader/elfloader.c:193: } else if(s.st_shndx == data.number) {
	mov	dptr,#_data
	movx	a,@dptr
	mov	r3,a
	mov	r2,#0x00
	mov	a,r6
	cjne	a,ar3,00105$
	mov	a,r7
	cjne	a,ar2,00105$
;	../contiki-sensinode/core/loader/elfloader.c:194: sect = &data;
	mov	r5,#_data
	mov	r6,#(_data >> 8)
	mov	r7,#0x00
	sjmp	00109$
00105$:
;	../contiki-sensinode/core/loader/elfloader.c:195: } else if(s.st_shndx == text.number) {
	mov	dptr,#_text
	movx	a,@dptr
	mov	r3,a
	mov	r2,#0x00
	mov	a,r6
	cjne	a,ar3,00102$
	mov	a,r7
	cjne	a,ar2,00102$
;	../contiki-sensinode/core/loader/elfloader.c:196: sect = &text;
	mov	r5,#_text
	mov	r6,#(_text >> 8)
	mov	r7,#0x00
	sjmp	00109$
00102$:
;	../contiki-sensinode/core/loader/elfloader.c:198: return NULL;
	mov	dptr,#0x0000
	mov	b,#0x00
	sjmp	00118$
00109$:
;	../contiki-sensinode/core/loader/elfloader.c:200: return &(sect->address[s.st_value]);
	mov	a,#0x03
	add	a,r5
	mov	r3,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r3
	mov	dph,r6
	mov	b,r7
	mov	a,sp
	add	a,#0xcf
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
	mov	a,r1
	add	a,#0x04
	mov	r1,a
	mov	ar2,@r1
	inc	r1
	mov	ar3,@r1
	inc	r1
	mov	ar6,@r1
	inc	r1
	mov	ar7,@r1
	mov	a,sp
	add	a,#0xcf
	mov	r0,a
	mov	a,r2
	add	a,@r0
	mov	r2,a
	mov	a,r3
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar6,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r6
	sjmp	00118$
00117$:
;	../contiki-sensinode/core/loader/elfloader.c:185: for(a = symtab; a < symtab + symtabsize; a += sizeof(s)) {
	mov	a,#0x10
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r5
	mov	r5,a
	ljmp	00116$
00114$:
;	../contiki-sensinode/core/loader/elfloader.c:204: return NULL;
	mov	dptr,#0x0000
	mov	b,#0x00
00118$:
	mov	a,sp
	add	a,#0xC5
	mov	sp,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'relocate_section'
;------------------------------------------------------------
;section                   Allocated to stack - sp -85
;size                      Allocated to stack - sp -87
;sectionaddr               Allocated to stack - sp -89
;sectionbase               Allocated to stack - sp -92
;strs                      Allocated to stack - sp -94
;strtab                    Allocated to stack - sp -96
;symtab                    Allocated to stack - sp -98
;symtabsize                Allocated to stack - sp -100
;using_relas               Allocated to stack - sp -101
;fd                        Allocated to stack - sp -81
;rela                      Allocated to stack - sp -64
;rel_size                  Allocated to stack - sp -52
;s                         Allocated to stack - sp -15
;a                         Allocated to stack - sp -50
;name                      Allocated to stack - sp -48
;addr                      Allocated to stack - sp -18
;sect                      Allocated to registers r2 r3 r4 
;sloc0                     Allocated to stack - sp -79
;sloc1                     Allocated to stack - sp -9
;sloc2                     Allocated to stack - sp -77
;sloc3                     Allocated to stack - sp -74
;sloc4                     Allocated to stack - sp -70
;sloc5                     Allocated to stack - sp -69
;sloc6                     Allocated to stack - sp -68
;------------------------------------------------------------
;	../contiki-sensinode/core/loader/elfloader.c:208: relocate_section(int fd,
;	-----------------------------------------
;	 function relocate_section
;	-----------------------------------------
_relocate_section:
	push	dpl
	push	dph
	mov	a,sp
	add	a,#0x50
;	../contiki-sensinode/core/loader/elfloader.c:227: if(using_relas) {
	mov	sp,a
	add	a,#0x9b
	mov	r0,a
	mov	a,@r0
	jz	00102$
;	../contiki-sensinode/core/loader/elfloader.c:228: rel_size = sizeof(struct elf32_rela);
	mov	a,sp
	add	a,#0xcc
	mov	r0,a
	mov	@r0,#0x0C
	inc	r0
	mov	@r0,#0x00
	sjmp	00103$
00102$:
;	../contiki-sensinode/core/loader/elfloader.c:230: rel_size = sizeof(struct elf32_rel);
	mov	a,sp
	add	a,#0xcc
	mov	r0,a
	mov	@r0,#0x08
	inc	r0
	mov	@r0,#0x00
00103$:
;	../contiki-sensinode/core/loader/elfloader.c:233: for(a = section; a < section + size; a += rel_size) {
	mov	a,sp
	add	a,#0xab
	mov	r0,a
	mov	a,sp
	add	a,#0xce
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	a,sp
	add	a,#0xba
	mov	r0,a
	mov	a,sp
	add	a,#0xF1
	mov	@r0,a
	mov	a,sp
	add	a,#0xba
	mov	r1,a
	mov	a,#0x0E
	add	a,@r1
	mov	r0,a
	mov	a,sp
	add	a,#0xce
	mov	r1,a
	push	ar0
	mov	a,sp
	add	a,#0xa8
	mov	r0,a
	mov	a,@r0
	add	a,@r1
	push	acc
	inc	r0
	mov	a,@r0
	inc	r1
	addc	a,@r1
	push	acc
	mov	a,sp
	add	a,#0xaf
	mov	r1,a
	pop	acc
	mov	@r1,a
	dec	r1
	pop	acc
	mov	@r1,a
	pop	ar0
00147$:
	mov	a,sp
	add	a,#0xce
	mov	r1,a
	push	ar0
	mov	a,sp
	add	a,#0xb0
	mov	r0,a
	clr	c
	mov	a,@r1
	subb	a,@r0
	inc	r1
	mov	a,@r1
	inc	r0
	subb	a,@r0
	pop	ar0
	jc	00197$
	ljmp	00145$
00197$:
;	../contiki-sensinode/core/loader/elfloader.c:234: seek_read(fd, a, (char *)&rela, rel_size);
	push	ar0
	mov	a,sp
	add	a,#0xBF
	mov	r1,a
	mov	r3,a
	mov	r4,#0x00
	mov	r5,#0x40
	push	ar1
	push	ar0
	mov	b,ar0
	mov	a,sp
	add	a,#0xc9
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	r0,b
	push	ar3
	push	ar4
	push	ar5
	mov	b,ar0
	mov	a,sp
	add	a,#0xc6
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	r0,b
	push	ar0
	mov	a,sp
	add	a,#0xa4
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	pop	ar0
	lcall	_seek_read
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	pop	ar0
	pop	ar1
;	../contiki-sensinode/core/loader/elfloader.c:237: (char *)&s, sizeof(s));
	push	ar0
	mov	a,sp
	add	a,#0xb8
	mov	r0,a
	mov	ar5,@r0
	mov	a,sp
	add	a,#0xb1
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x40
	pop	ar0
;	../contiki-sensinode/core/loader/elfloader.c:236: symtab + sizeof(struct elf32_sym) * ELF32_R_SYM(rela.r_info),
	mov	a,#0x04
	add	a,r1
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	dec	r0
	dec	r0
	dec	r0
	mov	ar2,r5
	mov	ar5,r6
	mov	a,r5
	swap	a
	anl	a,#0xF0
	xch	a,r2
	swap	a
	xch	a,r2
	xrl	a,r2
	xch	a,r2
	anl	a,#0xF0
	xch	a,r2
	xrl	a,r2
	mov	r5,a
	push	ar0
	mov	a,sp
	add	a,#0x9c
	mov	r0,a
	mov	a,r2
	add	a,@r0
	mov	r2,a
	mov	a,r5
	inc	r0
	addc	a,@r0
	mov	r5,a
	pop	ar0
;	../contiki-sensinode/core/loader/elfloader.c:235: seek_read(fd,
	push	ar1
	push	ar0
	mov	a,#0x10
	push	acc
	clr	a
	push	acc
	mov	b,ar0
	mov	a,sp
	add	a,#0xae
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	r0,b
	push	ar2
	push	ar5
	push	ar0
	mov	a,sp
	add	a,#0xa4
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	pop	ar0
	lcall	_seek_read
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	pop	ar0
	pop	ar1
;	../contiki-sensinode/core/loader/elfloader.c:238: if(s.st_name != 0) {
	push	ar0
	mov	a,sp
	add	a,#0xb8
	mov	r0,a
	push	ar1
	mov	a,sp
	add	a,#0xb3
	mov	r1,a
	mov	ar0,@r0
	mov	a,@r0
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	dec	r0
	dec	r0
	dec	r0
	pop	ar1
	pop	ar0
	mov	a,sp
	add	a,#0xb5
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	pop	ar0
	jnz	00198$
	ljmp	00141$
00198$:
;	../contiki-sensinode/core/loader/elfloader.c:239: seek_read(fd, strtab + s.st_name, name, sizeof(name));
	push	ar0
	push	ar0
	mov	a,sp
	add	a,#0xb9
	mov	r0,a
	mov	a,sp
	add	a,#0xCE
	mov	@r0,a
	mov	a,sp
	add	a,#0xb9
	mov	r0,a
	push	ar1
	mov	a,sp
	add	a,#0xb0
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r1
	mov	@r1,#0x00
	inc	r1
	mov	@r1,#0x40
	pop	ar1
	mov	a,sp
	add	a,#0x9e
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	clr	a
	mov	r5,a
	mov	r6,a
	mov	a,sp
	add	a,#0xb4
	mov	r0,a
	mov	a,@r0
	add	a,r2
	mov	r2,a
	inc	r0
	mov	a,@r0
	addc	a,r3
	mov	r3,a
	inc	r0
	mov	a,@r0
	addc	a,r5
	inc	r0
	mov	a,@r0
	addc	a,r6
	pop	ar0
	push	ar1
	push	ar0
	mov	a,#0x1E
	push	acc
	clr	a
	push	acc
	mov	b,ar0
	mov	a,sp
	add	a,#0xae
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	r0,b
	push	ar2
	push	ar3
	push	ar0
	mov	a,sp
	add	a,#0xa4
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	pop	ar0
	lcall	_seek_read
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	pop	ar0
	pop	ar1
;	../contiki-sensinode/core/loader/elfloader.c:241: addr = (char *)symtab_lookup(name);
	push	ar0
	mov	a,sp
	add	a,#0xb9
	mov	r0,a
	mov	ar6,@r0
	pop	ar0
	mov	r5,#0x00
	mov	r4,#0x40
	mov	dpl,r6
	mov	dph,r5
	mov	b,r4
	push	ar1
	push	ar0
	lcall	_symtab_lookup
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	pop	ar0
	pop	ar1
	push	ar0
	mov	a,sp
	add	a,#0xec
	mov	r0,a
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	pop	ar0
;	../contiki-sensinode/core/loader/elfloader.c:243: if(addr == NULL) {
	mov	a,sp
	add	a,#0xed
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	pop	ar0
	jz	00199$
	ljmp	00111$
00199$:
;	../contiki-sensinode/core/loader/elfloader.c:245: addr = find_local_symbol(fd, name, symtab, symtabsize, strtab);
	push	ar0
	mov	a,sp
	add	a,#0xba
	mov	r0,a
	mov	ar6,@r0
	pop	ar0
	mov	r5,#0x00
	mov	r4,#0x40
	push	ar1
	push	ar0
	mov	b,ar0
	mov	a,sp
	add	a,#0x9e
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	r0,b
	mov	b,ar0
	mov	a,sp
	add	a,#0x98
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	r0,b
	mov	b,ar0
	mov	a,sp
	add	a,#0x98
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	r0,b
	push	ar6
	push	ar5
	push	ar4
	push	ar0
	mov	a,sp
	add	a,#0xa3
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	pop	ar0
	lcall	_find_local_symbol
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	a,sp
	add	a,#0xf7
	mov	sp,a
	pop	ar0
	pop	ar1
	push	ar0
	mov	a,sp
	add	a,#0xed
	mov	r0,a
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	pop	ar0
;	../contiki-sensinode/core/loader/elfloader.c:246: PRINTF("found address %p\n", addr);
00111$:
;	../contiki-sensinode/core/loader/elfloader.c:248: if(addr == NULL) {
	push	ar0
	mov	a,sp
	add	a,#0xed
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	pop	ar0
	jz	00200$
	ljmp	00142$
00200$:
;	../contiki-sensinode/core/loader/elfloader.c:249: if(s.st_shndx == bss.number) {
	mov	ar5,@r0
	inc	r0
	mov	ar2,@r0
	dec	r0
	mov	dptr,#_bss
	movx	a,@dptr
	mov	r4,a
	mov	r3,#0x00
	mov	a,r5
	cjne	a,ar4,00124$
	mov	a,r2
	cjne	a,ar3,00124$
;	../contiki-sensinode/core/loader/elfloader.c:250: sect = &bss;
	mov	r2,#_bss
	mov	r3,#(_bss >> 8)
	mov	r4,#0x00
	ljmp	00125$
00124$:
;	../contiki-sensinode/core/loader/elfloader.c:251: } else if(s.st_shndx == data.number) {
	push	ar0
	mov	dptr,#_data
	movx	a,@dptr
	mov	r6,a
	mov	r7,#0x00
	mov	a,r5
	cjne	a,ar6,00203$
	mov	a,r2
	cjne	a,ar7,00203$
	sjmp	00204$
00203$:
	pop	ar0
	sjmp	00121$
00204$:
	pop	ar0
;	../contiki-sensinode/core/loader/elfloader.c:252: sect = &data;
	mov	r2,#_data
	mov	r3,#(_data >> 8)
	mov	r4,#0x00
	sjmp	00125$
00121$:
;	../contiki-sensinode/core/loader/elfloader.c:253: } else if(s.st_shndx == rodata.number) {
	mov	dptr,#_rodata
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	a,r5
	cjne	a,ar7,00118$
	mov	a,r2
	cjne	a,ar6,00118$
;	../contiki-sensinode/core/loader/elfloader.c:254: sect = &rodata;
	mov	r2,#_rodata
	mov	r3,#(_rodata >> 8)
	mov	r4,#0x00
	sjmp	00125$
00118$:
;	../contiki-sensinode/core/loader/elfloader.c:255: } else if(s.st_shndx == text.number) {
	mov	dptr,#_text
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	a,r5
	cjne	a,ar7,00112$
	mov	a,r2
	cjne	a,ar6,00112$
;	../contiki-sensinode/core/loader/elfloader.c:256: sect = &text;
	mov	r2,#_text
	mov	r3,#(_text >> 8)
	mov	r4,#0x00
;	../contiki-sensinode/core/loader/elfloader.c:258: PRINTF("elfloader unknown name: '%30s'\n", name);
	sjmp	00125$
00112$:
;	../contiki-sensinode/core/loader/elfloader.c:259: memcpy(elfloader_unknown, name, sizeof(elfloader_unknown));
	mov	a,sp
	add	a,#0xbb
	mov	r0,a
	mov	ar7,@r0
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,#0x1E
	push	acc
	clr	a
	push	acc
	push	ar7
	push	ar6
	push	ar5
	mov	dptr,#_elfloader_unknown
	mov	b,#0x00
	lcall	_memcpy
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	../contiki-sensinode/core/loader/elfloader.c:260: elfloader_unknown[sizeof(elfloader_unknown) - 1] = 0;
	mov	dptr,#(_elfloader_unknown + 0x001d)
	clr	a
	movx	@dptr,a
;	../contiki-sensinode/core/loader/elfloader.c:261: return ELFLOADER_SYMBOL_NOT_FOUND;
	mov	dptr,#0x0005
	ljmp	00149$
00125$:
;	../contiki-sensinode/core/loader/elfloader.c:263: addr = sect->address;
	mov	a,#0x03
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar0
	mov	a,sp
	add	a,#0xed
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
	pop	ar0
	ljmp	00142$
00141$:
;	../contiki-sensinode/core/loader/elfloader.c:266: if(s.st_shndx == bss.number) {
	mov	ar4,@r0
	inc	r0
	mov	ar3,@r0
	dec	r0
	mov	dptr,#_bss
	movx	a,@dptr
	mov	r5,a
	push	ar0
	mov	r7,#0x00
	mov	a,r4
	cjne	a,ar5,00209$
	mov	a,r3
	cjne	a,ar7,00209$
	sjmp	00210$
00209$:
	pop	ar0
	sjmp	00138$
00210$:
	pop	ar0
;	../contiki-sensinode/core/loader/elfloader.c:267: sect = &bss;
	mov	r2,#_bss
	mov	r3,#(_bss >> 8)
	mov	r4,#0x00
	sjmp	00139$
00138$:
;	../contiki-sensinode/core/loader/elfloader.c:268: } else if(s.st_shndx == data.number) {
	mov	dptr,#_data
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	a,r4
	cjne	a,ar7,00135$
	mov	a,r3
	cjne	a,ar6,00135$
;	../contiki-sensinode/core/loader/elfloader.c:269: sect = &data;
	mov	r2,#_data
	mov	r3,#(_data >> 8)
	mov	r4,#0x00
	sjmp	00139$
00135$:
;	../contiki-sensinode/core/loader/elfloader.c:270: } else if(s.st_shndx == rodata.number) {
	mov	dptr,#_rodata
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	a,r4
	cjne	a,ar7,00132$
	mov	a,r3
	cjne	a,ar6,00132$
;	../contiki-sensinode/core/loader/elfloader.c:271: sect = &rodata;
	mov	r2,#_rodata
	mov	r3,#(_rodata >> 8)
	mov	r4,#0x00
	sjmp	00139$
00132$:
;	../contiki-sensinode/core/loader/elfloader.c:272: } else if(s.st_shndx == text.number) {
	mov	dptr,#_text
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	a,r4
	cjne	a,ar7,00129$
	mov	a,r3
	cjne	a,ar6,00129$
;	../contiki-sensinode/core/loader/elfloader.c:273: sect = &text;
	mov	r2,#_text
	mov	r3,#(_text >> 8)
	mov	r4,#0x00
	sjmp	00139$
00129$:
;	../contiki-sensinode/core/loader/elfloader.c:275: return ELFLOADER_SEGMENT_NOT_FOUND;
	mov	dptr,#0x0006
	ljmp	00149$
00139$:
;	../contiki-sensinode/core/loader/elfloader.c:278: addr = sect->address;
	mov	a,#0x03
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar0
	mov	a,sp
	add	a,#0xed
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
	pop	ar0
00142$:
;	../contiki-sensinode/core/loader/elfloader.c:281: if(!using_relas) {
	push	ar0
	mov	a,sp
	add	a,#0x9a
	mov	r0,a
	mov	a,@r0
	pop	ar0
	jz	00217$
	ljmp	00144$
00217$:
;	../contiki-sensinode/core/loader/elfloader.c:283: seek_read(fd, sectionaddr + rela.r_offset, (char *)&rela.r_addend, 4);
	push	ar0
	mov	a,#0x08
	add	a,r1
	mov	r7,a
	push	ar0
	mov	a,sp
	add	a,#0xb4
	mov	r0,a
	mov	@r0,ar7
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x40
	mov	a,sp
	add	a,#0xba
	mov	r0,a
	mov	a,@r1
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	mov	@r0,a
	dec	r1
	dec	r1
	dec	r1
	mov	a,sp
	add	a,#0xa5
	mov	r0,a
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	clr	a
	mov	r6,a
	mov	r7,a
	mov	a,sp
	add	a,#0xba
	mov	r0,a
	mov	a,@r0
	add	a,r4
	mov	r4,a
	inc	r0
	mov	a,@r0
	addc	a,r5
	mov	r5,a
	inc	r0
	mov	a,@r0
	addc	a,r6
	inc	r0
	mov	a,@r0
	addc	a,r7
	pop	ar0
	push	ar1
	push	ar0
	mov	a,#0x04
	push	acc
	clr	a
	push	acc
	mov	b,ar0
	mov	a,sp
	add	a,#0xb1
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	r0,b
	push	ar4
	push	ar5
	push	ar0
	mov	a,sp
	add	a,#0xa4
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	pop	ar0
	lcall	_seek_read
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	pop	ar0
	pop	ar1
;	../contiki-sensinode/core/loader/elfloader.c:288: return ELFLOADER_OK;
	pop	ar0
;	../contiki-sensinode/core/loader/elfloader.c:283: seek_read(fd, sectionaddr + rela.r_offset, (char *)&rela.r_addend, 4);
00144$:
;	../contiki-sensinode/core/loader/elfloader.c:286: elfloader_arch_relocate(fd, sectionaddr, sectionbase, &rela, addr);
	mov	ar7,r1
	mov	r6,#0x00
	mov	r5,#0x40
	push	ar0
	mov	a,sp
	add	a,#0xed
	mov	r1,a
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	push	ar7
	push	ar6
	push	ar5
	mov	a,sp
	add	a,#0x9d
	mov	r1,a
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	mov	a,sp
	add	a,#0x9d
	mov	r1,a
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	mov	a,sp
	add	a,#0xa3
	mov	r1,a
	mov	dpl,@r1
	inc	r1
	mov	dph,@r1
	lcall	_elfloader_arch_relocate
	mov	a,sp
	add	a,#0xf5
	mov	sp,a
	pop	ar0
;	../contiki-sensinode/core/loader/elfloader.c:233: for(a = section; a < section + size; a += rel_size) {
	mov	a,sp
	add	a,#0xcc
	mov	r1,a
	mov	ar4,@r1
	inc	r1
	mov	ar5,@r1
	mov	a,sp
	add	a,#0xce
	mov	r1,a
	mov	a,r4
	add	a,@r1
	mov	@r1,a
	mov	a,r5
	inc	r1
	addc	a,@r1
	mov	@r1,a
	ljmp	00147$
00145$:
;	../contiki-sensinode/core/loader/elfloader.c:288: return ELFLOADER_OK;
	mov	dptr,#0x0000
00149$:
	mov	a,sp
	add	a,#0xAE
	mov	sp,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'find_program_processes'
;------------------------------------------------------------
;symtab                    Allocated to stack - sp -62
;size                      Allocated to stack - sp -64
;strtab                    Allocated to stack - sp -66
;fd                        Allocated to stack - sp -58
;s                         Allocated to stack - sp -15
;a                         Allocated to registers r4 r5 
;name                      Allocated to stack - sp -45
;sloc0                     Allocated to stack - sp -56
;sloc1                     Allocated to stack - sp -54
;sloc2                     Allocated to stack - sp -50
;sloc3                     Allocated to stack - sp -49
;sloc4                     Allocated to stack - sp -46
;------------------------------------------------------------
;	../contiki-sensinode/core/loader/elfloader.c:292: find_program_processes(int fd,
;	-----------------------------------------
;	 function find_program_processes
;	-----------------------------------------
_find_program_processes:
	push	dpl
	push	dph
	mov	a,sp
	add	a,#0x39
;	../contiki-sensinode/core/loader/elfloader.c:300: for(a = symtab; a < symtab + size; a += sizeof(s)) {
	mov	sp,a
	add	a,#0xc2
	mov	r0,a
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	mov	a,sp
	add	a,#0xd2
	mov	r0,a
	mov	a,sp
	add	a,#0xD3
	mov	@r0,a
	mov	a,sp
	add	a,#0xd2
	mov	r0,a
	mov	a,sp
	add	a,#0xce
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	mov	a,sp
	add	a,#0xc0
	mov	r0,a
	mov	a,sp
	add	a,#0xc8
	mov	r1,a
	mov	a,@r0
	add	a,r4
	mov	@r1,a
	inc	r0
	mov	a,@r0
	addc	a,r5
	inc	r1
	mov	@r1,a
00107$:
	mov	a,sp
	add	a,#0xc8
	mov	r0,a
	clr	c
	mov	a,r4
	subb	a,@r0
	mov	a,r5
	inc	r0
	subb	a,@r0
	jc	00123$
	ljmp	00105$
00123$:
;	../contiki-sensinode/core/loader/elfloader.c:301: seek_read(fd, a, (char *)&s, sizeof(s));
	mov	a,sp
	add	a,#0xF1
	mov	r1,a
	mov	r2,a
	mov	r6,#0x00
	mov	r7,#0x40
	push	ar5
	push	ar4
	push	ar1
	mov	a,#0x10
	push	acc
	clr	a
	push	acc
	push	ar2
	push	ar6
	push	ar7
	push	ar4
	push	ar5
	mov	a,sp
	add	a,#0xbc
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	_seek_read
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	pop	ar1
	pop	ar4
	pop	ar5
;	../contiki-sensinode/core/loader/elfloader.c:303: if(s.st_name != 0) {
	mov	a,sp
	add	a,#0xca
	mov	r0,a
	mov	a,@r1
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	mov	@r0,a
	dec	r1
	dec	r1
	dec	r1
	mov	a,sp
	add	a,#0xca
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00124$
	ljmp	00108$
00124$:
;	../contiki-sensinode/core/loader/elfloader.c:304: seek_read(fd, strtab + s.st_name, name, sizeof(name));
	push	ar1
	mov	a,sp
	add	a,#0xd1
	mov	r0,a
	push	ar1
	mov	a,sp
	add	a,#0xcd
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r1
	mov	@r1,#0x00
	inc	r1
	mov	@r1,#0x40
	pop	ar1
	mov	a,sp
	add	a,#0xbd
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	clr	a
	mov	r6,a
	mov	r7,a
	mov	a,sp
	add	a,#0xc9
	mov	r0,a
	mov	a,@r0
	add	a,r2
	mov	r2,a
	inc	r0
	mov	a,@r0
	addc	a,r3
	mov	r3,a
	inc	r0
	mov	a,@r0
	addc	a,r6
	inc	r0
	mov	a,@r0
	addc	a,r7
	push	ar5
	push	ar4
	push	ar1
	mov	a,#0x1E
	push	acc
	clr	a
	push	acc
	mov	a,sp
	add	a,#0xc9
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
	push	ar3
	mov	a,sp
	add	a,#0xbb
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	_seek_read
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	pop	ar1
	pop	ar4
	pop	ar5
;	../contiki-sensinode/core/loader/elfloader.c:305: if(strcmp(name, "autostart_processes") == 0) {
	mov	a,sp
	add	a,#0xcd
	mov	r0,a
	mov	ar2,@r0
	mov	r6,#0x00
	mov	r7,#0x40
	push	ar5
	push	ar4
	push	ar1
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	lcall	_strcmp
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	pop	ar1
	pop	ar4
	pop	ar5
	pop	ar1
	mov	a,r6
	orl	a,r7
	jnz	00108$
;	../contiki-sensinode/core/loader/elfloader.c:306: return &data.address[s.st_value];
	mov	dptr,#(_data + 0x0003)
	mov	a,sp
	add	a,#0xcf
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
	mov	a,r1
	add	a,#0x04
	mov	r1,a
	mov	ar2,@r1
	inc	r1
	mov	ar3,@r1
	inc	r1
	mov	ar6,@r1
	inc	r1
	mov	ar7,@r1
	mov	a,sp
	add	a,#0xcf
	mov	r0,a
	mov	a,r2
	add	a,@r0
	mov	r2,a
	mov	a,r3
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar6,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r6
	sjmp	00109$
00108$:
;	../contiki-sensinode/core/loader/elfloader.c:300: for(a = symtab; a < symtab + size; a += sizeof(s)) {
	mov	a,#0x10
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r5
	mov	r5,a
	ljmp	00107$
00105$:
;	../contiki-sensinode/core/loader/elfloader.c:310: return NULL;
	mov	dptr,#0x0000
	mov	b,#0x00
00109$:
	mov	a,sp
	add	a,#0xC5
	mov	sp,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'elfloader_init'
;------------------------------------------------------------
;	../contiki-sensinode/core/loader/elfloader.c:315: elfloader_init(void)
;	-----------------------------------------
;	 function elfloader_init
;	-----------------------------------------
_elfloader_init:
;	../contiki-sensinode/core/loader/elfloader.c:317: elfloader_autostart_processes = NULL;
	mov	dptr,#_elfloader_autostart_processes
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'elfloader_load'
;------------------------------------------------------------
;fd                        Allocated to stack - sp -209
;ehdr                      Allocated to stack - sp -168
;shdr                      Allocated to stack - sp -116
;strtable                  Allocated to stack - sp -76
;strs                      Allocated to stack - sp -36
;shdrptr                   Allocated to stack - sp -34
;nameptr                   Allocated to registers r3 r4 
;name                      Allocated to stack - sp -32
;i                         Allocated to stack - sp -20
;shdrnum                   Allocated to stack - sp -18
;shdrsize                  Allocated to stack - sp -16
;using_relas               Allocated to stack - sp -14
;textoff                   Allocated to stack - sp -13
;textsize                  Allocated to stack - sp -11
;textrelaoff               Allocated to registers r2 r5 
;textrelasize              Allocated to stack - sp -186
;dataoff                   Allocated to stack - sp -9
;datasize                  Allocated to stack - sp -188
;datarelaoff               Allocated to stack - sp -207
;datarelasize              Allocated to stack - sp -190
;rodataoff                 Allocated to stack - sp -7
;rodatasize                Allocated to stack - sp -192
;rodatarelaoff             Allocated to stack - sp -205
;rodatarelasize            Allocated to stack - sp -200
;symtaboff                 Allocated to stack - sp -5
;symtabsize                Allocated to stack - sp -3
;strtaboff                 Allocated to stack - sp -1
;strtabsize                Allocated to stack - sp -196
;bsssize                   Allocated to stack - sp -203
;process                   Allocated to registers r5 r6 r7 
;ret                       Allocated to registers r6 r7 
;sloc0                     Allocated to stack - sp -207
;sloc1                     Allocated to stack - sp -205
;sloc2                     Allocated to stack - sp -203
;sloc3                     Allocated to stack - sp -201
;sloc4                     Allocated to stack - sp -200
;sloc5                     Allocated to stack - sp -197
;sloc6                     Allocated to stack - sp -196
;sloc7                     Allocated to stack - sp -192
;sloc8                     Allocated to stack - sp -190
;sloc9                     Allocated to stack - sp -188
;sloc10                    Allocated to stack - sp -186
;sloc11                    Allocated to stack - sp +12
;sloc12                    Allocated to stack - sp -184
;sloc13                    Allocated to stack - sp -183
;sloc14                    Allocated to stack - sp -182
;sloc15                    Allocated to stack - sp -181
;sloc16                    Allocated to stack - sp -180
;sloc17                    Allocated to stack - sp -179
;sloc18                    Allocated to stack - sp -178
;sloc19                    Allocated to stack - sp -177
;sloc20                    Allocated to stack - sp -176
;sloc21                    Allocated to stack - sp -175
;sloc22                    Allocated to stack - sp -174
;sloc23                    Allocated to stack - sp -173
;sloc24                    Allocated to stack - sp -172
;------------------------------------------------------------
;	../contiki-sensinode/core/loader/elfloader.c:337: elfloader_load(int fd)
;	-----------------------------------------
;	 function elfloader_load
;	-----------------------------------------
_elfloader_load:
	push	dpl
	push	dph
	mov	a,sp
	add	a,#0xD0
;	../contiki-sensinode/core/loader/elfloader.c:350: unsigned char using_relas = -1;
	mov	sp,a
	add	a,#0xf2
	mov	r0,a
	mov	@r0,#0xFF
;	../contiki-sensinode/core/loader/elfloader.c:351: unsigned short textoff = 0, textsize, textrelaoff = 0, textrelasize;
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
;	../contiki-sensinode/core/loader/elfloader.c:352: unsigned short dataoff = 0, datasize, datarelaoff = 0, datarelasize;
	clr	a
	mov	r2,a
	mov	r5,a
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	mov	a,sp
	add	a,#0x31
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
;	../contiki-sensinode/core/loader/elfloader.c:353: unsigned short rodataoff = 0, rodatasize, rodatarelaoff = 0, rodatarelasize;
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	mov	a,sp
	add	a,#0x33
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
;	../contiki-sensinode/core/loader/elfloader.c:354: unsigned short symtaboff = 0, symtabsize;
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
;	../contiki-sensinode/core/loader/elfloader.c:355: unsigned short strtaboff = 0, strtabsize;
	mov	r0,sp
	dec	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
;	../contiki-sensinode/core/loader/elfloader.c:356: unsigned short bsssize = 0;
	mov	a,sp
	add	a,#0x35
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
;	../contiki-sensinode/core/loader/elfloader.c:361: elfloader_unknown[0] = 0;
	mov	dptr,#_elfloader_unknown
	movx	@dptr,a
;	../contiki-sensinode/core/loader/elfloader.c:364: seek_read(fd, 0, (char *)&ehdr, sizeof(ehdr));
	mov	a,sp
	add	a,#0x37
	mov	r0,a
	mov	a,sp
	add	a,#0x58
	mov	@r0,a
	mov	a,sp
	add	a,#0x37
	mov	r0,a
	mov	ar4,@r0
	mov	ar3,r4
	mov	r4,#0x00
	mov	r7,#0x40
	push	ar5
	push	ar2
	mov	a,#0x34
	push	acc
	clr	a
	push	acc
	push	ar3
	push	ar4
	push	ar7
	push	acc
	push	acc
	mov	a,sp
	add	a,#0x26
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	_seek_read
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	pop	ar2
	pop	ar5
;	../contiki-sensinode/core/loader/elfloader.c:369: if(memcmp(ehdr.e_ident, elf_magic_header, sizeof(elf_magic_header)) != 0) {
	mov	a,sp
	add	a,#0x37
	mov	r0,a
	mov	ar7,@r0
	mov	r6,#0x00
	mov	r4,#0x40
	push	ar5
	push	ar2
	mov	a,#0x07
	push	acc
	clr	a
	push	acc
	mov	a,#_elf_magic_header
	push	acc
	mov	a,#(_elf_magic_header >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dpl,r7
	mov	dph,r6
	mov	b,r4
	lcall	_memcmp
	mov	r6,dpl
	mov	r7,dph
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar2
	pop	ar5
	mov	a,r6
	orl	a,r7
	jz	00104$
;	../contiki-sensinode/core/loader/elfloader.c:371: return ELFLOADER_BAD_ELF_HEADER;
	mov	dptr,#0x0001
	ljmp	00207$
00104$:
;	../contiki-sensinode/core/loader/elfloader.c:375: shdrptr = ehdr.e_shoff;
	push	ar2
	push	ar5
	mov	a,sp
	add	a,#0x35
	mov	r0,a
	mov	a,#0x20
	add	a,@r0
	mov	r1,a
	mov	ar3,@r1
	inc	r1
	mov	ar4,@r1
	inc	r1
	mov	ar6,@r1
	inc	r1
	mov	ar7,@r1
	dec	r1
	dec	r1
	dec	r1
	mov	a,sp
	add	a,#0xdc
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
;	../contiki-sensinode/core/loader/elfloader.c:376: seek_read(fd, shdrptr, (char *)&shdr, sizeof(shdr));
	mov	a,sp
	add	a,#0x8A
	mov	r0,a
	mov	r5,a
	mov	r6,#0x00
	mov	r7,#0x40
	push	ar5
	push	ar2
	push	ar1
	push	ar0
	mov	a,#0x28
	push	acc
	clr	a
	push	acc
	push	ar5
	push	ar6
	push	ar7
	mov	b,ar0
	mov	a,sp
	add	a,#0xd3
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	r0,b
	push	ar0
	mov	a,sp
	add	a,#0x21
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	pop	ar0
	lcall	_seek_read
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar5
;	../contiki-sensinode/core/loader/elfloader.c:379: shdrsize = ehdr.e_shentsize;
	push	ar0
	mov	a,sp
	add	a,#0x34
	mov	r0,a
	mov	a,#0x2E
	add	a,@r0
	mov	r7,a
	mov	a,sp
	add	a,#0xed
	mov	r0,a
	push	ar1
	mov	r1,ar7
	mov	a,@r1
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	mov	@r0,a
	pop	ar1
;	../contiki-sensinode/core/loader/elfloader.c:380: shdrnum = ehdr.e_shnum;
	mov	a,sp
	add	a,#0x34
	mov	r0,a
	mov	a,#0x30
	add	a,@r0
	mov	r7,a
	mov	a,sp
	add	a,#0xeb
	mov	r0,a
	push	ar1
	mov	r1,ar7
	mov	a,@r1
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	mov	@r0,a
	pop	ar1
	pop	ar0
;	../contiki-sensinode/core/loader/elfloader.c:386: (char *)&strtable, sizeof(strtable));
	mov	a,sp
	add	a,#0xB2
	mov	r4,a
	mov	r6,a
	push	ar0
	mov	a,sp
	add	a,#0x35
	mov	r0,a
	mov	@r0,ar6
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x40
;	../contiki-sensinode/core/loader/elfloader.c:385: seek_read(fd, ehdr.e_shoff + shdrsize * ehdr.e_shstrndx,
	mov	a,sp
	add	a,#0x39
	mov	r0,a
	mov	a,@r1
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	mov	@r0,a
	dec	r1
	dec	r1
	dec	r1
	mov	a,sp
	add	a,#0x34
	mov	r0,a
	mov	a,#0x32
	add	a,@r0
	mov	r7,a
	mov	r0,ar7
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	pop	ar0
	push	ar5
	push	ar4
	push	ar2
	push	ar1
	push	ar0
	push	ar6
	push	ar7
	push	ar0
	mov	a,sp
	add	a,#0xe6
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	pop	ar0
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar4
	pop	ar5
	mov	r5,#0x00
	mov	r2,#0x00
	push	ar0
	mov	a,sp
	add	a,#0x39
	mov	r0,a
	mov	a,r6
	add	a,@r0
	mov	r6,a
	mov	a,r7
	inc	r0
	addc	a,@r0
	mov	r7,a
	mov	a,r5
	inc	r0
	addc	a,@r0
	mov	r5,a
	mov	a,r2
	inc	r0
	addc	a,@r0
	mov	r2,a
	pop	ar0
	push	ar5
	push	ar4
	push	ar2
	push	ar1
	push	ar0
	mov	a,#0x28
	push	acc
	clr	a
	push	acc
	mov	b,ar0
	mov	a,sp
	add	a,#0x2f
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	r0,b
	push	ar6
	push	ar7
	push	ar0
	mov	a,sp
	add	a,#0x20
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	pop	ar0
	lcall	_seek_read
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar4
	pop	ar5
;	../contiki-sensinode/core/loader/elfloader.c:391: strs = strtable.sh_offset;
	mov	a,#0x10
	add	a,r4
	mov	r7,a
	push	ar0
	mov	r0,ar7
	mov	ar2,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,sp
	add	a,#0xd9
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar5
;	../contiki-sensinode/core/loader/elfloader.c:414: rodatasize = rodatarelasize = symtabsize = strtabsize = 0;
	mov	a,sp
	add	a,#0x39
	mov	r0,a
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
	mov	a,sp
	add	a,#0x35
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	mov	a,sp
	add	a,#0x3d
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	mov	a,sp
	add	a,#0x3f
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	mov	a,sp
	add	a,#0x41
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	mov	a,sp
	add	a,#0x43
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	pop	ar0
;	../contiki-sensinode/core/loader/elfloader.c:416: bss.number = data.number = rodata.number = text.number = -1;
	mov	dptr,#_text
	dec	a
	movx	@dptr,a
	mov	dptr,#_rodata
	movx	@dptr,a
	mov	dptr,#_data
	movx	@dptr,a
	mov	dptr,#_bss
	movx	@dptr,a
;	../contiki-sensinode/core/loader/elfloader.c:418: shdrptr = ehdr.e_shoff;
	mov	ar2,@r1
	inc	r1
	mov	ar5,@r1
	inc	r1
	mov	ar6,@r1
	inc	r1
	mov	ar7,@r1
	mov	a,sp
	add	a,#0xdc
	mov	r1,a
	mov	@r1,ar2
	inc	r1
	mov	@r1,ar5
;	../contiki-sensinode/core/loader/elfloader.c:419: for(i = 0; i < shdrnum; ++i) {
	mov	a,sp
	add	a,#0x39
	mov	r1,a
	mov	@r1,ar0
	mov	a,sp
	add	a,#0x35
	mov	r1,a
	mov	a,sp
	add	a,#0xDE
	mov	@r1,a
	mov	a,#0x04
	add	a,r0
	mov	r1,a
	push	ar0
	mov	a,sp
	add	a,#0x34
	mov	r0,a
	push	ar1
	mov	a,sp
	add	a,#0x44
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	pop	ar1
	mov	a,sp
	add	a,#0x34
	mov	r0,a
	push	ar1
	mov	a,sp
	add	a,#0x45
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	pop	ar1
	mov	a,sp
	add	a,#0x34
	mov	r0,a
	push	ar1
	mov	a,sp
	add	a,#0x46
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	pop	ar1
	mov	a,sp
	add	a,#0x34
	mov	r0,a
	push	ar1
	mov	a,sp
	add	a,#0x47
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	pop	ar1
	mov	a,sp
	add	a,#0x34
	mov	r0,a
	push	ar1
	mov	a,sp
	add	a,#0x48
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	pop	ar1
	mov	a,sp
	add	a,#0x34
	mov	r0,a
	push	ar1
	mov	a,sp
	add	a,#0x49
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	pop	ar1
	mov	a,sp
	add	a,#0x34
	mov	r0,a
	push	ar1
	mov	a,sp
	add	a,#0x4a
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	pop	ar1
	mov	a,sp
	add	a,#0x34
	mov	r0,a
	push	ar1
	mov	a,sp
	add	a,#0x4b
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	pop	ar1
	mov	a,sp
	add	a,#0x34
	mov	r0,a
	push	ar1
	mov	a,sp
	add	a,#0x4c
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	pop	ar1
	pop	ar0
	push	ar1
	mov	a,sp
	add	a,#0x4e
	mov	r1,a
	mov	a,#0x14
	add	a,r0
	mov	@r1,a
	pop	ar1
	push	ar0
	mov	a,sp
	add	a,#0x34
	mov	r0,a
	push	ar1
	mov	a,sp
	add	a,#0x4e
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	pop	ar1
	pop	ar0
	push	ar1
	mov	a,sp
	add	a,#0x50
	mov	r1,a
	mov	a,#0x10
	add	a,r0
	mov	@r1,a
	pop	ar1
	push	ar0
	mov	a,sp
	add	a,#0xe9
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	pop	ar0
;	../contiki-sensinode/core/loader/elfloader.c:585: return ELFLOADER_NO_STARTPOINT;
	pop	ar5
	pop	ar2
;	../contiki-sensinode/core/loader/elfloader.c:419: for(i = 0; i < shdrnum; ++i) {
00205$:
	push	ar0
	mov	a,sp
	add	a,#0xeb
	mov	r0,a
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,sp
	add	a,#0xed
	mov	r0,a
	clr	c
	mov	a,r6
	subb	a,@r0
	mov	a,r7
	inc	r0
	subb	a,@r0
	pop	ar0
	jc	00286$
	ljmp	00150$
00286$:
;	../contiki-sensinode/core/loader/elfloader.c:421: seek_read(fd, shdrptr, (char *)&shdr, sizeof(shdr));
	push	ar2
	push	ar5
	push	ar0
	mov	a,sp
	add	a,#0x38
	mov	r0,a
	mov	ar7,@r0
	pop	ar0
	mov	ar5,r7
	mov	r6,#0x00
	mov	r7,#0x40
	push	ar5
	push	ar2
	push	ar1
	push	ar0
	mov	a,#0x28
	push	acc
	clr	a
	push	acc
	push	ar5
	push	ar6
	push	ar7
	mov	b,ar0
	mov	a,sp
	add	a,#0xd3
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	r0,b
	push	ar0
	mov	a,sp
	add	a,#0x21
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	pop	ar0
	lcall	_seek_read
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar5
;	../contiki-sensinode/core/loader/elfloader.c:424: nameptr = strs + shdr.sh_name;
	push	ar1
	mov	a,sp
	add	a,#0x51
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	dec	r0
	dec	r0
	dec	r0
	pop	ar1
	push	ar0
	mov	a,sp
	add	a,#0xd9
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	clr	a
	mov	r6,a
	mov	r7,a
	mov	a,sp
	add	a,#0x51
	mov	r0,a
	mov	a,@r0
	add	a,r3
	mov	r3,a
	inc	r0
	mov	a,@r0
	addc	a,r4
	mov	r4,a
	inc	r0
	mov	a,@r0
	addc	a,r6
	inc	r0
	mov	a,@r0
	addc	a,r7
;	../contiki-sensinode/core/loader/elfloader.c:425: seek_read(fd, nameptr, name, sizeof(name));
	mov	a,sp
	add	a,#0x34
	mov	r0,a
	mov	ar5,@r0
	mov	r6,#0x00
	mov	r7,#0x40
	pop	ar0
	push	ar5
	push	ar2
	push	ar1
	push	ar0
	mov	a,#0x0C
	push	acc
	clr	a
	push	acc
	push	ar5
	push	ar6
	push	ar7
	push	ar3
	push	ar4
	push	ar0
	mov	a,sp
	add	a,#0x21
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	pop	ar0
	lcall	_seek_read
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar5
;	../contiki-sensinode/core/loader/elfloader.c:435: if(shdr.sh_type == SHT_SYMTAB/*strncmp(name, ".symtab", 7) == 0*/) {
	mov	ar7,@r1
	inc	r1
	mov	ar6,@r1
	inc	r1
	mov	ar4,@r1
	inc	r1
	mov	ar3,@r1
	dec	r1
	dec	r1
	dec	r1
	cjne	r7,#0x02,00287$
	cjne	r6,#0x00,00287$
	cjne	r4,#0x00,00287$
	cjne	r3,#0x00,00287$
	sjmp	00288$
00287$:
	pop	ar5
	pop	ar2
	sjmp	00148$
00288$:
	pop	ar5
	pop	ar2
;	../contiki-sensinode/core/loader/elfloader.c:437: symtaboff = shdr.sh_offset;
	push	ar0
	mov	a,sp
	add	a,#0x52
	mov	r0,a
	mov	ar0,@r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	dec	r0
	dec	r0
	dec	r0
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
;	../contiki-sensinode/core/loader/elfloader.c:438: symtabsize = shdr.sh_size;
	mov	a,sp
	add	a,#0x50
	mov	r0,a
	mov	ar0,@r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	dec	r0
	dec	r0
	dec	r0
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	pop	ar0
	ljmp	00149$
00148$:
;	../contiki-sensinode/core/loader/elfloader.c:439: } else if(shdr.sh_type == SHT_STRTAB/*strncmp(name, ".strtab", 7) == 0*/) {
	cjne	r7,#0x03,00145$
	cjne	r6,#0x00,00145$
	cjne	r4,#0x00,00145$
	cjne	r3,#0x00,00145$
;	../contiki-sensinode/core/loader/elfloader.c:441: strtaboff = shdr.sh_offset;
	push	ar0
	mov	a,sp
	add	a,#0x52
	mov	r0,a
	mov	ar0,@r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	dec	r0
	dec	r0
	dec	r0
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
;	../contiki-sensinode/core/loader/elfloader.c:442: strtabsize = shdr.sh_size;
	mov	a,sp
	add	a,#0x50
	mov	r0,a
	mov	ar0,@r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	dec	r0
	dec	r0
	dec	r0
	mov	a,sp
	add	a,#0x3b
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	pop	ar0
	ljmp	00149$
00145$:
;	../contiki-sensinode/core/loader/elfloader.c:443: } else if(strncmp(name, ".text", 5) == 0) {
	push	ar0
	mov	a,sp
	add	a,#0x47
	mov	r0,a
	mov	ar4,@r0
	mov	r6,#0x00
	mov	r7,#0x40
	pop	ar0
	push	ar5
	push	ar2
	push	ar1
	push	ar0
	mov	a,#0x05
	push	acc
	clr	a
	push	acc
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dpl,r4
	mov	dph,r6
	mov	b,r7
	lcall	_strncmp
	mov	r6,dpl
	mov	r7,dph
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar5
	mov	a,r6
	orl	a,r7
	jnz	00142$
;	../contiki-sensinode/core/loader/elfloader.c:444: textoff = shdr.sh_offset;
	push	ar0
	mov	a,sp
	add	a,#0x52
	mov	r0,a
	mov	ar0,@r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	dec	r0
	dec	r0
	dec	r0
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
;	../contiki-sensinode/core/loader/elfloader.c:445: textsize = shdr.sh_size;
	mov	a,sp
	add	a,#0x50
	mov	r0,a
	mov	ar0,@r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	dec	r0
	dec	r0
	dec	r0
	mov	a,sp
	add	a,#0xf4
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
;	../contiki-sensinode/core/loader/elfloader.c:446: text.number = i;
	mov	a,sp
	add	a,#0xeb
	mov	r0,a
	mov	ar7,@r0
	mov	dptr,#_text
	mov	a,r7
	movx	@dptr,a
;	../contiki-sensinode/core/loader/elfloader.c:447: text.offset = textoff;
	mov	dptr,#(_text + 0x0001)
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	a,@r0
	movx	@dptr,a
	inc	r0
	mov	a,@r0
	inc	dptr
	movx	@dptr,a
	pop	ar0
	ljmp	00149$
00142$:
;	../contiki-sensinode/core/loader/elfloader.c:448: } else if(strncmp(name, ".rel.text", 9) == 0) {
	push	ar0
	mov	a,sp
	add	a,#0x48
	mov	r0,a
	mov	ar4,@r0
	mov	r6,#0x00
	mov	r7,#0x40
	pop	ar0
	push	ar5
	push	ar2
	push	ar1
	push	ar0
	mov	a,#0x09
	push	acc
	clr	a
	push	acc
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dpl,r4
	mov	dph,r6
	mov	b,r7
	lcall	_strncmp
	mov	r6,dpl
	mov	r7,dph
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar5
	mov	a,r6
	orl	a,r7
	jnz	00139$
;	../contiki-sensinode/core/loader/elfloader.c:449: using_relas = 0;
	push	ar0
	mov	a,sp
	add	a,#0xf1
	mov	r0,a
	mov	@r0,#0x00
;	../contiki-sensinode/core/loader/elfloader.c:450: textrelaoff = shdr.sh_offset;
	mov	a,sp
	add	a,#0x52
	mov	r0,a
	mov	ar0,@r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	dec	r0
	dec	r0
	dec	r0
	mov	ar2,r3
	mov	ar5,r4
;	../contiki-sensinode/core/loader/elfloader.c:451: textrelasize = shdr.sh_size;
	mov	a,sp
	add	a,#0x50
	mov	r0,a
	mov	ar0,@r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	dec	r0
	dec	r0
	dec	r0
	mov	a,sp
	add	a,#0x45
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	pop	ar0
	ljmp	00149$
00139$:
;	../contiki-sensinode/core/loader/elfloader.c:452: } else if(strncmp(name, ".rela.text", 10) == 0) {
	push	ar0
	mov	a,sp
	add	a,#0x49
	mov	r0,a
	mov	ar4,@r0
	mov	r6,#0x00
	mov	r7,#0x40
	pop	ar0
	push	ar5
	push	ar2
	push	ar1
	push	ar0
	mov	a,#0x0A
	push	acc
	clr	a
	push	acc
	mov	a,#___str_3
	push	acc
	mov	a,#(___str_3 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dpl,r4
	mov	dph,r6
	mov	b,r7
	lcall	_strncmp
	mov	r6,dpl
	mov	r7,dph
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar5
	mov	a,r6
	orl	a,r7
	jnz	00136$
;	../contiki-sensinode/core/loader/elfloader.c:453: using_relas = 1;
	push	ar0
	mov	a,sp
	add	a,#0xf1
	mov	r0,a
	mov	@r0,#0x01
;	../contiki-sensinode/core/loader/elfloader.c:454: textrelaoff = shdr.sh_offset;
	mov	a,sp
	add	a,#0x52
	mov	r0,a
	mov	ar0,@r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	dec	r0
	dec	r0
	dec	r0
	mov	ar2,r3
	mov	ar5,r4
;	../contiki-sensinode/core/loader/elfloader.c:455: textrelasize = shdr.sh_size;
	mov	a,sp
	add	a,#0x50
	mov	r0,a
	mov	ar0,@r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	dec	r0
	dec	r0
	dec	r0
	mov	a,sp
	add	a,#0x45
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	pop	ar0
	ljmp	00149$
00136$:
;	../contiki-sensinode/core/loader/elfloader.c:456: } else if(strncmp(name, ".data", 5) == 0) {
	push	ar0
	mov	a,sp
	add	a,#0x4a
	mov	r0,a
	mov	ar4,@r0
	mov	r6,#0x00
	mov	r7,#0x40
	pop	ar0
	push	ar5
	push	ar2
	push	ar1
	push	ar0
	mov	a,#0x05
	push	acc
	clr	a
	push	acc
	mov	a,#___str_4
	push	acc
	mov	a,#(___str_4 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dpl,r4
	mov	dph,r6
	mov	b,r7
	lcall	_strncmp
	mov	r6,dpl
	mov	r7,dph
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar5
	mov	a,r6
	orl	a,r7
	jnz	00133$
;	../contiki-sensinode/core/loader/elfloader.c:457: dataoff = shdr.sh_offset;
	push	ar0
	mov	a,sp
	add	a,#0x52
	mov	r0,a
	mov	ar0,@r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	dec	r0
	dec	r0
	dec	r0
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
;	../contiki-sensinode/core/loader/elfloader.c:458: datasize = shdr.sh_size;
	mov	a,sp
	add	a,#0x50
	mov	r0,a
	mov	ar0,@r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	dec	r0
	dec	r0
	dec	r0
	mov	a,sp
	add	a,#0x43
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
;	../contiki-sensinode/core/loader/elfloader.c:459: data.number = i;
	mov	a,sp
	add	a,#0xeb
	mov	r0,a
	mov	ar7,@r0
	mov	dptr,#_data
	mov	a,r7
	movx	@dptr,a
;	../contiki-sensinode/core/loader/elfloader.c:460: data.offset = dataoff;
	mov	dptr,#(_data + 0x0001)
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	a,@r0
	movx	@dptr,a
	inc	r0
	mov	a,@r0
	inc	dptr
	movx	@dptr,a
	pop	ar0
	ljmp	00149$
00133$:
;	../contiki-sensinode/core/loader/elfloader.c:461: } else if(strncmp(name, ".rodata", 7) == 0) {
	push	ar0
	mov	a,sp
	add	a,#0x4b
	mov	r0,a
	mov	ar4,@r0
	mov	r6,#0x00
	mov	r7,#0x40
	pop	ar0
	push	ar5
	push	ar2
	push	ar1
	push	ar0
	mov	a,#0x07
	push	acc
	clr	a
	push	acc
	mov	a,#___str_5
	push	acc
	mov	a,#(___str_5 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dpl,r4
	mov	dph,r6
	mov	b,r7
	lcall	_strncmp
	mov	r6,dpl
	mov	r7,dph
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar5
	mov	a,r6
	orl	a,r7
	jnz	00130$
;	../contiki-sensinode/core/loader/elfloader.c:463: rodataoff = shdr.sh_offset;
	push	ar0
	mov	a,sp
	add	a,#0x52
	mov	r0,a
	mov	ar0,@r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	dec	r0
	dec	r0
	dec	r0
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
;	../contiki-sensinode/core/loader/elfloader.c:464: rodatasize = shdr.sh_size;
	mov	a,sp
	add	a,#0x50
	mov	r0,a
	mov	ar0,@r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	dec	r0
	dec	r0
	dec	r0
	mov	a,sp
	add	a,#0x3f
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
;	../contiki-sensinode/core/loader/elfloader.c:465: rodata.number = i;
	mov	a,sp
	add	a,#0xeb
	mov	r0,a
	mov	ar7,@r0
	mov	dptr,#_rodata
	mov	a,r7
	movx	@dptr,a
;	../contiki-sensinode/core/loader/elfloader.c:466: rodata.offset = rodataoff;
	mov	dptr,#(_rodata + 0x0001)
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,@r0
	movx	@dptr,a
	inc	r0
	mov	a,@r0
	inc	dptr
	movx	@dptr,a
	pop	ar0
	ljmp	00149$
00130$:
;	../contiki-sensinode/core/loader/elfloader.c:467: } else if(strncmp(name, ".rel.rodata", 11) == 0) {
	push	ar0
	mov	a,sp
	add	a,#0x4c
	mov	r0,a
	mov	ar4,@r0
	mov	r6,#0x00
	mov	r7,#0x40
	pop	ar0
	push	ar5
	push	ar2
	push	ar1
	push	ar0
	mov	a,#0x0B
	push	acc
	clr	a
	push	acc
	mov	a,#___str_6
	push	acc
	mov	a,#(___str_6 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dpl,r4
	mov	dph,r6
	mov	b,r7
	lcall	_strncmp
	mov	r6,dpl
	mov	r7,dph
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar5
	mov	a,r6
	orl	a,r7
	jnz	00127$
;	../contiki-sensinode/core/loader/elfloader.c:469: using_relas = 0;
	push	ar0
	mov	a,sp
	add	a,#0xf1
	mov	r0,a
	mov	@r0,#0x00
;	../contiki-sensinode/core/loader/elfloader.c:470: rodatarelaoff = shdr.sh_offset;
	mov	a,sp
	add	a,#0x52
	mov	r0,a
	mov	ar0,@r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	dec	r0
	dec	r0
	dec	r0
	mov	a,sp
	add	a,#0x32
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
;	../contiki-sensinode/core/loader/elfloader.c:471: rodatarelasize = shdr.sh_size;
	mov	a,sp
	add	a,#0x50
	mov	r0,a
	mov	ar0,@r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	dec	r0
	dec	r0
	dec	r0
	mov	a,sp
	add	a,#0x37
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	pop	ar0
	ljmp	00149$
00127$:
;	../contiki-sensinode/core/loader/elfloader.c:472: } else if(strncmp(name, ".rela.rodata", 12) == 0) {
	push	ar0
	mov	a,sp
	add	a,#0x4d
	mov	r0,a
	mov	ar4,@r0
	mov	r6,#0x00
	mov	r7,#0x40
	pop	ar0
	push	ar5
	push	ar2
	push	ar1
	push	ar0
	mov	a,#0x0C
	push	acc
	clr	a
	push	acc
	mov	a,#___str_7
	push	acc
	mov	a,#(___str_7 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dpl,r4
	mov	dph,r6
	mov	b,r7
	lcall	_strncmp
	mov	r6,dpl
	mov	r7,dph
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar5
	mov	a,r6
	orl	a,r7
	jnz	00124$
;	../contiki-sensinode/core/loader/elfloader.c:473: using_relas = 1;
	push	ar0
	mov	a,sp
	add	a,#0xf1
	mov	r0,a
	mov	@r0,#0x01
;	../contiki-sensinode/core/loader/elfloader.c:474: rodatarelaoff = shdr.sh_offset;
	mov	a,sp
	add	a,#0x52
	mov	r0,a
	mov	ar0,@r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	dec	r0
	dec	r0
	dec	r0
	mov	a,sp
	add	a,#0x32
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
;	../contiki-sensinode/core/loader/elfloader.c:475: rodatarelasize = shdr.sh_size;
	mov	a,sp
	add	a,#0x50
	mov	r0,a
	mov	ar0,@r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	dec	r0
	dec	r0
	dec	r0
	mov	a,sp
	add	a,#0x37
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	pop	ar0
	ljmp	00149$
00124$:
;	../contiki-sensinode/core/loader/elfloader.c:476: } else if(strncmp(name, ".rel.data", 9) == 0) {
	push	ar0
	mov	a,sp
	add	a,#0x4e
	mov	r0,a
	mov	ar4,@r0
	mov	r6,#0x00
	mov	r7,#0x40
	pop	ar0
	push	ar5
	push	ar2
	push	ar1
	push	ar0
	mov	a,#0x09
	push	acc
	clr	a
	push	acc
	mov	a,#___str_8
	push	acc
	mov	a,#(___str_8 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dpl,r4
	mov	dph,r6
	mov	b,r7
	lcall	_strncmp
	mov	r6,dpl
	mov	r7,dph
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar5
	mov	a,r6
	orl	a,r7
	jnz	00121$
;	../contiki-sensinode/core/loader/elfloader.c:478: using_relas = 0;
	push	ar0
	mov	a,sp
	add	a,#0xf1
	mov	r0,a
	mov	@r0,#0x00
;	../contiki-sensinode/core/loader/elfloader.c:479: datarelaoff = shdr.sh_offset;
	mov	a,sp
	add	a,#0x52
	mov	r0,a
	mov	ar0,@r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	dec	r0
	dec	r0
	dec	r0
	mov	a,sp
	add	a,#0x30
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
;	../contiki-sensinode/core/loader/elfloader.c:480: datarelasize = shdr.sh_size;
	mov	a,sp
	add	a,#0x50
	mov	r0,a
	mov	ar0,@r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	dec	r0
	dec	r0
	dec	r0
	mov	a,sp
	add	a,#0x41
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	pop	ar0
	ljmp	00149$
00121$:
;	../contiki-sensinode/core/loader/elfloader.c:481: } else if(strncmp(name, ".rela.data", 10) == 0) {
	push	ar0
	mov	a,sp
	add	a,#0x4f
	mov	r0,a
	mov	ar4,@r0
	mov	r6,#0x00
	mov	r7,#0x40
	pop	ar0
	push	ar5
	push	ar2
	push	ar1
	push	ar0
	mov	a,#0x0A
	push	acc
	clr	a
	push	acc
	mov	a,#___str_9
	push	acc
	mov	a,#(___str_9 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dpl,r4
	mov	dph,r6
	mov	b,r7
	lcall	_strncmp
	mov	r6,dpl
	mov	r7,dph
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar5
	mov	a,r6
	orl	a,r7
	jnz	00118$
;	../contiki-sensinode/core/loader/elfloader.c:482: using_relas = 1;
	push	ar0
	mov	a,sp
	add	a,#0xf1
	mov	r0,a
	mov	@r0,#0x01
;	../contiki-sensinode/core/loader/elfloader.c:483: datarelaoff = shdr.sh_offset;
	mov	a,sp
	add	a,#0x52
	mov	r0,a
	mov	ar0,@r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	dec	r0
	dec	r0
	dec	r0
	mov	a,sp
	add	a,#0x30
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
;	../contiki-sensinode/core/loader/elfloader.c:484: datarelasize = shdr.sh_size;
	mov	a,sp
	add	a,#0x50
	mov	r0,a
	mov	ar0,@r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	dec	r0
	dec	r0
	dec	r0
	mov	a,sp
	add	a,#0x41
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	pop	ar0
	ljmp	00149$
00118$:
;	../contiki-sensinode/core/loader/elfloader.c:485: } else if(strncmp(name, ".bss", 4) == 0) {
	push	ar0
	mov	a,sp
	add	a,#0x51
	mov	r0,a
	mov	ar4,@r0
	mov	r6,#0x00
	mov	r7,#0x40
	pop	ar0
	push	ar5
	push	ar2
	push	ar1
	push	ar0
	mov	a,#0x04
	push	acc
	clr	a
	push	acc
	mov	a,#___str_10
	push	acc
	mov	a,#(___str_10 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dpl,r4
	mov	dph,r6
	mov	b,r7
	lcall	_strncmp
	mov	r6,dpl
	mov	r7,dph
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar5
	mov	a,r6
	orl	a,r7
	jnz	00149$
;	../contiki-sensinode/core/loader/elfloader.c:486: bsssize = shdr.sh_size;
	push	ar0
	mov	a,sp
	add	a,#0x50
	mov	r0,a
	mov	ar0,@r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	dec	r0
	dec	r0
	dec	r0
	mov	a,sp
	add	a,#0x34
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
;	../contiki-sensinode/core/loader/elfloader.c:487: bss.number = i;
	mov	a,sp
	add	a,#0xeb
	mov	r0,a
	mov	ar7,@r0
	pop	ar0
	mov	dptr,#_bss
	mov	a,r7
	movx	@dptr,a
;	../contiki-sensinode/core/loader/elfloader.c:488: bss.offset = 0;
	mov	dptr,#(_bss + 0x0001)
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00149$:
;	../contiki-sensinode/core/loader/elfloader.c:492: shdrptr += shdrsize;
	push	ar0
	mov	a,sp
	add	a,#0xdd
	mov	r0,a
	push	ar1
	mov	a,sp
	add	a,#0xee
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	mov	@r0,a
	pop	ar1
;	../contiki-sensinode/core/loader/elfloader.c:419: for(i = 0; i < shdrnum; ++i) {
	mov	a,sp
	add	a,#0xeb
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00301$
	inc	r0
	inc	@r0
00301$:
	pop	ar0
	ljmp	00205$
00150$:
;	../contiki-sensinode/core/loader/elfloader.c:495: if(symtabsize == 0) {
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00152$
;	../contiki-sensinode/core/loader/elfloader.c:496: return ELFLOADER_NO_SYMTAB;
	mov	dptr,#0x0002
	ljmp	00207$
00152$:
;	../contiki-sensinode/core/loader/elfloader.c:498: if(strtabsize == 0) {
	mov	a,sp
	add	a,#0x3c
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00154$
;	../contiki-sensinode/core/loader/elfloader.c:499: return ELFLOADER_NO_STRTAB;
	mov	dptr,#0x0003
	ljmp	00207$
00154$:
;	../contiki-sensinode/core/loader/elfloader.c:501: if(textsize == 0) {
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00157$
;	../contiki-sensinode/core/loader/elfloader.c:502: return ELFLOADER_NO_TEXT;
	mov	dptr,#0x0004
	ljmp	00207$
;	../contiki-sensinode/core/loader/elfloader.c:505: PRINTF("before allocate ram\n");
00157$:
;	../contiki-sensinode/core/loader/elfloader.c:506: bss.address = (char *)elfloader_arch_allocate_ram(bsssize + datasize);
	mov	a,sp
	add	a,#0x35
	mov	r0,a
	mov	a,sp
	add	a,#0x44
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	mov	r6,a
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	push	ar5
	push	ar2
	lcall	_elfloader_arch_allocate_ram
	mov	r4,dpl
	mov	r6,dph
	mov	r7,b
	pop	ar2
	pop	ar5
	mov	dptr,#(_bss + 0x0003)
	mov	a,r4
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../contiki-sensinode/core/loader/elfloader.c:507: data.address = (char *)bss.address + bsssize;
	mov	a,sp
	add	a,#0x35
	mov	r0,a
	mov	a,@r0
	add	a,r4
	mov	r4,a
	inc	r0
	mov	a,@r0
	addc	a,r6
	mov	r6,a
	mov	dptr,#(_data + 0x0003)
	mov	a,r4
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../contiki-sensinode/core/loader/elfloader.c:509: text.address = (char *)elfloader_arch_allocate_rom(textsize + rodatasize);
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	a,sp
	add	a,#0x40
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	mov	r6,a
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	push	ar5
	push	ar2
	lcall	_elfloader_arch_allocate_rom
	mov	r4,dpl
	mov	r6,dph
	mov	r7,b
	pop	ar2
	pop	ar5
	mov	dptr,#(_text + 0x0003)
	mov	a,r4
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../contiki-sensinode/core/loader/elfloader.c:510: rodata.address = (char *)text.address + textsize;
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	a,@r0
	add	a,r4
	mov	r4,a
	inc	r0
	mov	a,@r0
	addc	a,r6
	mov	r6,a
	mov	dptr,#(_rodata + 0x0003)
	mov	a,r4
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../contiki-sensinode/core/loader/elfloader.c:521: if(textrelasize > 0) {
	mov	a,sp
	add	a,#0x46
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00305$
	ljmp	00175$
00305$:
;	../contiki-sensinode/core/loader/elfloader.c:525: text.address,
	mov	dptr,#(_text + 0x0003)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	../contiki-sensinode/core/loader/elfloader.c:522: ret = relocate_section(fd,
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	a,@r0
	push	acc
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
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
	add	a,#0xd5
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	push	ar4
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xe7
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,sp
	add	a,#0x38
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	push	ar2
	push	ar5
	mov	a,sp
	add	a,#0x1d
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	_relocate_section
	mov	r6,dpl
	mov	r7,dph
	mov	a,sp
	add	a,#0xee
	mov	sp,a
;	../contiki-sensinode/core/loader/elfloader.c:529: if(ret != ELFLOADER_OK) {
	mov	a,r6
	orl	a,r7
	jz	00175$
;	../contiki-sensinode/core/loader/elfloader.c:530: return ret;
	mov	dpl,r6
	mov	dph,r7
	ljmp	00207$
;	../contiki-sensinode/core/loader/elfloader.c:535: PRINTF("elfloader: relocate rodata\n");
00175$:
;	../contiki-sensinode/core/loader/elfloader.c:536: if(rodatarelasize > 0) {
	mov	a,sp
	add	a,#0x38
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00307$
	ljmp	00183$
00307$:
;	../contiki-sensinode/core/loader/elfloader.c:540: rodata.address,
	mov	dptr,#(_rodata + 0x0003)
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
;	../contiki-sensinode/core/loader/elfloader.c:537: ret = relocate_section(fd,
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	a,@r0
	push	acc
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
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
	add	a,#0xd5
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	push	ar3
	push	ar4
	push	ar5
	mov	a,sp
	add	a,#0xed
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,sp
	add	a,#0x2a
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,sp
	add	a,#0x23
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,sp
	add	a,#0x1d
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	_relocate_section
	mov	r4,dpl
	mov	r5,dph
	mov	a,sp
	add	a,#0xee
	mov	sp,a
	mov	ar6,r4
	mov	ar7,r5
;	../contiki-sensinode/core/loader/elfloader.c:544: if(ret != ELFLOADER_OK) {
	mov	a,r6
	orl	a,r7
	jz	00183$
;	../contiki-sensinode/core/loader/elfloader.c:546: return ret;
	mov	dpl,r6
	mov	dph,r7
	ljmp	00207$
;	../contiki-sensinode/core/loader/elfloader.c:551: PRINTF("elfloader: relocate data\n");
00183$:
;	../contiki-sensinode/core/loader/elfloader.c:552: if(datarelasize > 0) {
	mov	a,sp
	add	a,#0x42
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00309$
	ljmp	00190$
00309$:
;	../contiki-sensinode/core/loader/elfloader.c:556: data.address,
	mov	dptr,#(_data + 0x0003)
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
;	../contiki-sensinode/core/loader/elfloader.c:553: ret = relocate_section(fd,
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	a,@r0
	push	acc
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
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
	add	a,#0xd5
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	push	ar3
	push	ar4
	push	ar5
	mov	a,sp
	add	a,#0xeb
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,sp
	add	a,#0x34
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,sp
	add	a,#0x21
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,sp
	add	a,#0x1d
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	_relocate_section
	mov	r4,dpl
	mov	r5,dph
	mov	a,sp
	add	a,#0xee
	mov	sp,a
	mov	ar6,r4
	mov	ar7,r5
;	../contiki-sensinode/core/loader/elfloader.c:560: if(ret != ELFLOADER_OK) {
	mov	a,r6
	orl	a,r7
	jz	00190$
;	../contiki-sensinode/core/loader/elfloader.c:562: return ret;
	mov	dpl,r6
	mov	dph,r7
	ljmp	00207$
00190$:
;	../contiki-sensinode/core/loader/elfloader.c:567: elfloader_arch_write_rom(fd, textoff, textsize, text.address);
	mov	dptr,#(_text + 0x0003)
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	push	ar5
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,sp
	add	a,#0xee
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,sp
	add	a,#0x28
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	_elfloader_arch_write_rom
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
;	../contiki-sensinode/core/loader/elfloader.c:568: elfloader_arch_write_rom(fd, rodataoff, rodatasize, rodata.address);
	mov	dptr,#(_rodata + 0x0003)
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	push	ar5
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0x3d
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
	mov	a,sp
	add	a,#0x28
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	_elfloader_arch_write_rom
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
;	../contiki-sensinode/core/loader/elfloader.c:570: memset(bss.address, 0, bsssize);
	mov	dptr,#(_bss + 0x0003)
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,sp
	add	a,#0x35
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	clr	a
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_memset
	dec	sp
	dec	sp
	dec	sp
;	../contiki-sensinode/core/loader/elfloader.c:571: seek_read(fd, dataoff, data.address, datasize);
	mov	dptr,#(_data + 0x0003)
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,sp
	add	a,#0x44
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	push	ar5
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,sp
	add	a,#0x28
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	_seek_read
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
;	../contiki-sensinode/core/loader/elfloader.c:574: process = (struct process **) find_local_symbol(fd, "autostart_processes", symtaboff, symtabsize, strtaboff);
	mov	r0,sp
	dec	r0
	mov	a,@r0
	push	acc
	inc	r0
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
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,sp
	add	a,#0x26
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	_find_local_symbol
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,sp
	add	a,#0xf7
	mov	sp,a
;	../contiki-sensinode/core/loader/elfloader.c:575: if(process != NULL) {
	mov	a,r5
	orl	a,r6
	jz	00195$
;	../contiki-sensinode/core/loader/elfloader.c:577: elfloader_autostart_processes = process;
	mov	dptr,#_elfloader_autostart_processes
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../contiki-sensinode/core/loader/elfloader.c:578: return ELFLOADER_OK;
	mov	dptr,#0x0000
;	../contiki-sensinode/core/loader/elfloader.c:580: PRINTF("elfloader: no autostart\n");
	sjmp	00207$
00195$:
;	../contiki-sensinode/core/loader/elfloader.c:581: process = (struct process **) find_program_processes(fd, symtaboff, symtabsize, strtaboff);
	mov	r0,sp
	dec	r0
	mov	a,@r0
	push	acc
	inc	r0
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
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,sp
	add	a,#0x29
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	_find_program_processes
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
;	../contiki-sensinode/core/loader/elfloader.c:585: return ELFLOADER_NO_STARTPOINT;
	mov	dptr,#0x0007
00207$:
	mov	a,sp
	add	a,#0x2E
	mov	sp,a
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
_elf_magic_header:
	.db #0x7F	; 127
	.db #0x45	; 69	'E'
	.db #0x4C	; 76	'L'
	.db #0x46	; 70	'F'
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
___str_0:
	.ascii "autostart_processes"
	.db 0x00
___str_1:
	.ascii ".text"
	.db 0x00
___str_2:
	.ascii ".rel.text"
	.db 0x00
___str_3:
	.ascii ".rela.text"
	.db 0x00
___str_4:
	.ascii ".data"
	.db 0x00
___str_5:
	.ascii ".rodata"
	.db 0x00
___str_6:
	.ascii ".rel.rodata"
	.db 0x00
___str_7:
	.ascii ".rela.rodata"
	.db 0x00
___str_8:
	.ascii ".rel.data"
	.db 0x00
___str_9:
	.ascii ".rela.data"
	.db 0x00
___str_10:
	.ascii ".bss"
	.db 0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
