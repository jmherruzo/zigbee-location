                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.4.0 #8981 (Oct 24 2015) (Linux)
                                      4 ; This file was generated Sun Oct 25 01:52:24 2015
                                      5 ;--------------------------------------------------------
                                      6 	.module blink
                                      7 	.optsdcc -mmcs51 --model-large
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _autostart_processes
                                     13 	.globl _printf
                                     14 	.globl _leds_off
                                     15 	.globl _leds_on
                                     16 	.globl _leds_get
                                     17 	.globl _etimer_reset
                                     18 	.globl _etimer_set
                                     19 	.globl _ACTIVE
                                     20 	.globl _TX_BYTE
                                     21 	.globl _RX_BYTE
                                     22 	.globl _ERR
                                     23 	.globl _FE
                                     24 	.globl _SLAVE
                                     25 	.globl _RE
                                     26 	.globl _MODE
                                     27 	.globl _T3OVFIF
                                     28 	.globl _T3CH0IF
                                     29 	.globl _T3CH1IF
                                     30 	.globl _T4OVFIF
                                     31 	.globl _T4CH0IF
                                     32 	.globl _T4CH1IF
                                     33 	.globl _OVFIM
                                     34 	.globl _B_0
                                     35 	.globl _B_1
                                     36 	.globl _B_2
                                     37 	.globl _B_3
                                     38 	.globl _B_4
                                     39 	.globl _B_5
                                     40 	.globl _B_6
                                     41 	.globl _B_7
                                     42 	.globl _P2IF
                                     43 	.globl _UTX0IF
                                     44 	.globl _UTX1IF
                                     45 	.globl _P1IF
                                     46 	.globl _WDTIF
                                     47 	.globl _ACC_0
                                     48 	.globl _ACC_1
                                     49 	.globl _ACC_2
                                     50 	.globl _ACC_3
                                     51 	.globl _ACC_4
                                     52 	.globl _ACC_5
                                     53 	.globl _ACC_6
                                     54 	.globl _ACC_7
                                     55 	.globl _P
                                     56 	.globl _F1
                                     57 	.globl _OV
                                     58 	.globl _RS0
                                     59 	.globl _RS1
                                     60 	.globl _F0
                                     61 	.globl _AC
                                     62 	.globl _CY
                                     63 	.globl _DMAIF
                                     64 	.globl _T1IF
                                     65 	.globl _T2IF
                                     66 	.globl _T3IF
                                     67 	.globl _T4IF
                                     68 	.globl _P0IF
                                     69 	.globl _STIF
                                     70 	.globl _DMAIE
                                     71 	.globl _T1IE
                                     72 	.globl _T2IE
                                     73 	.globl _T3IE
                                     74 	.globl _T4IE
                                     75 	.globl _P0IE
                                     76 	.globl _RFERRIE
                                     77 	.globl _ADCIE
                                     78 	.globl _URX0IE
                                     79 	.globl _URX1IE
                                     80 	.globl _ENCIE
                                     81 	.globl _STIE
                                     82 	.globl _EA
                                     83 	.globl _P2_0
                                     84 	.globl _P2_1
                                     85 	.globl _P2_2
                                     86 	.globl _P2_3
                                     87 	.globl _P2_4
                                     88 	.globl _P2_5
                                     89 	.globl _P2_6
                                     90 	.globl _P2_7
                                     91 	.globl _ENCIF_0
                                     92 	.globl _ENCIF_1
                                     93 	.globl _P1_0
                                     94 	.globl _P1_1
                                     95 	.globl _P1_2
                                     96 	.globl _P1_3
                                     97 	.globl _P1_4
                                     98 	.globl _P1_5
                                     99 	.globl _P1_6
                                    100 	.globl _P1_7
                                    101 	.globl _IT0
                                    102 	.globl _RFERRIF
                                    103 	.globl _IT1
                                    104 	.globl _URX0IF
                                    105 	.globl _ADCIF
                                    106 	.globl _URX1IF
                                    107 	.globl _P0_0
                                    108 	.globl _P0_1
                                    109 	.globl _P0_2
                                    110 	.globl _P0_3
                                    111 	.globl _P0_4
                                    112 	.globl _P0_5
                                    113 	.globl _P0_6
                                    114 	.globl _P0_7
                                    115 	.globl _WDCTL
                                    116 	.globl _U1GCR
                                    117 	.globl _U1UCR
                                    118 	.globl _U1BAUD
                                    119 	.globl _U1DBUF
                                    120 	.globl _U1CSR
                                    121 	.globl _U0GCR
                                    122 	.globl _U0UCR
                                    123 	.globl _U0BAUD
                                    124 	.globl _U0DBUF
                                    125 	.globl _U0CSR
                                    126 	.globl _TIMIF
                                    127 	.globl _T4CC1
                                    128 	.globl _T4CCTL1
                                    129 	.globl _T4CC0
                                    130 	.globl _T4CCTL0
                                    131 	.globl _T4CTL
                                    132 	.globl _T4CNT
                                    133 	.globl _T3CC1
                                    134 	.globl _T3CCTL1
                                    135 	.globl _T3CC0
                                    136 	.globl _T3CCTL0
                                    137 	.globl _T3CTL
                                    138 	.globl _T3CNT
                                    139 	.globl _T2MSEL
                                    140 	.globl _T2IRQM
                                    141 	.globl _T2MOVF2
                                    142 	.globl _T2MOVF1
                                    143 	.globl _T2MOVF0
                                    144 	.globl _T2M1
                                    145 	.globl _T2M0
                                    146 	.globl _T2IRQF
                                    147 	.globl _T2EVTCFG
                                    148 	.globl _T2CTRL
                                    149 	.globl _T1STAT
                                    150 	.globl _T1CCTL2
                                    151 	.globl _T1CCTL1
                                    152 	.globl _T1CCTL0
                                    153 	.globl _T1CTL
                                    154 	.globl _T1CNTH
                                    155 	.globl _T1CNTL
                                    156 	.globl _T1CC2H
                                    157 	.globl _T1CC2L
                                    158 	.globl _T1CC1H
                                    159 	.globl _T1CC1L
                                    160 	.globl _T1CC0H
                                    161 	.globl _T1CC0L
                                    162 	.globl _CLKCONSTA
                                    163 	.globl _CLKCONCMD
                                    164 	.globl _SLEEPSTA
                                    165 	.globl _SLEEPCMD
                                    166 	.globl _STLOAD
                                    167 	.globl _ST2
                                    168 	.globl _ST1
                                    169 	.globl _ST0
                                    170 	.globl _RFERRF
                                    171 	.globl _RFIRQF0
                                    172 	.globl _RFST
                                    173 	.globl _RFD
                                    174 	.globl _RFIRQF1
                                    175 	.globl _PSBANK
                                    176 	.globl _FMAP
                                    177 	.globl _MEMCTR
                                    178 	.globl __XPAGE
                                    179 	.globl _MPAGE
                                    180 	.globl _PMUX
                                    181 	.globl _P2DIR
                                    182 	.globl _P1DIR
                                    183 	.globl _P0DIR
                                    184 	.globl _P2INP
                                    185 	.globl _P1INP
                                    186 	.globl _P2SEL
                                    187 	.globl _P1SEL
                                    188 	.globl _P0SEL
                                    189 	.globl _APCFG
                                    190 	.globl _PERCFG
                                    191 	.globl _P0INP
                                    192 	.globl _P2IEN
                                    193 	.globl _P1IEN
                                    194 	.globl _P0IEN
                                    195 	.globl _PICTL
                                    196 	.globl _P2IFG
                                    197 	.globl _P1IFG
                                    198 	.globl _P0IFG
                                    199 	.globl _DMAREQ
                                    200 	.globl _DMAARM
                                    201 	.globl _DMA0CFGH
                                    202 	.globl _DMA0CFGL
                                    203 	.globl _DMA1CFGH
                                    204 	.globl _DMA1CFGL
                                    205 	.globl _DMAIRQ
                                    206 	.globl _ENCCS
                                    207 	.globl _ENCDO
                                    208 	.globl _ENCDI
                                    209 	.globl _RNDH
                                    210 	.globl _RNDL
                                    211 	.globl _ADCH
                                    212 	.globl _ADCL
                                    213 	.globl _ADCCON3
                                    214 	.globl _ADCCON2
                                    215 	.globl _ADCCON1
                                    216 	.globl _B
                                    217 	.globl _IRCON2
                                    218 	.globl _ACC
                                    219 	.globl _PSW
                                    220 	.globl _IRCON
                                    221 	.globl _IP1
                                    222 	.globl _IEN1
                                    223 	.globl _IP0
                                    224 	.globl _IEN0
                                    225 	.globl _P2
                                    226 	.globl _S1CON
                                    227 	.globl _IEN2
                                    228 	.globl _S0CON
                                    229 	.globl _DPS
                                    230 	.globl _P1
                                    231 	.globl _TCON
                                    232 	.globl _PCON
                                    233 	.globl _DPH1
                                    234 	.globl _DPL1
                                    235 	.globl _DPH0
                                    236 	.globl _DPL0
                                    237 	.globl _SP
                                    238 	.globl _P0
                                    239 	.globl _blink_process
                                    240 	.globl _hello_world_process
                                    241 	.globl _X_IEEE_ADDR
                                    242 	.globl _X_INFOPAGE
                                    243 	.globl _X_P2DIR
                                    244 	.globl _X_P1DIR
                                    245 	.globl _X_P0DIR
                                    246 	.globl _X_U1GCR
                                    247 	.globl _X_U1UCR
                                    248 	.globl _X_U1BAUD
                                    249 	.globl _X_U1DBUF
                                    250 	.globl _X_U1CSR
                                    251 	.globl _X_P2INP
                                    252 	.globl _X_P1INP
                                    253 	.globl _X_P2SEL
                                    254 	.globl _X_P1SEL
                                    255 	.globl _X_P0SEL
                                    256 	.globl _X_APCFG
                                    257 	.globl _X_PERCFG
                                    258 	.globl _X_T4CC1
                                    259 	.globl _X_T4CCTL1
                                    260 	.globl _X_T4CC0
                                    261 	.globl _X_T4CCTL0
                                    262 	.globl _X_T4CTL
                                    263 	.globl _X_T4CNT
                                    264 	.globl _X_RFIRQF0
                                    265 	.globl _X_T1CCTL2
                                    266 	.globl _X_T1CCTL1
                                    267 	.globl _X_T1CCTL0
                                    268 	.globl _X_T1CTL
                                    269 	.globl _X_T1CNTH
                                    270 	.globl _X_T1CNTL
                                    271 	.globl _X_RFST
                                    272 	.globl _X_T1CC2H
                                    273 	.globl _X_T1CC2L
                                    274 	.globl _X_T1CC1H
                                    275 	.globl _X_T1CC1L
                                    276 	.globl _X_T1CC0H
                                    277 	.globl _X_T1CC0L
                                    278 	.globl _X_RFD
                                    279 	.globl _X_TIMIF
                                    280 	.globl _X_DMAREQ
                                    281 	.globl _X_DMAARM
                                    282 	.globl _X_DMA0CFGH
                                    283 	.globl _X_DMA0CFGL
                                    284 	.globl _X_DMA1CFGH
                                    285 	.globl _X_DMA1CFGL
                                    286 	.globl _X_DMAIRQ
                                    287 	.globl _X_T3CC1
                                    288 	.globl _X_T3CCTL1
                                    289 	.globl _X_T3CC0
                                    290 	.globl _X_T3CCTL0
                                    291 	.globl _X_T3CTL
                                    292 	.globl _X_T3CNT
                                    293 	.globl _X_WDCTL
                                    294 	.globl _X_MEMCTR
                                    295 	.globl _X_CLKCONCMD
                                    296 	.globl _X_U0GCR
                                    297 	.globl _X_U0UCR
                                    298 	.globl _X_T2MSEL
                                    299 	.globl _X_U0BAUD
                                    300 	.globl _X_U0DBUF
                                    301 	.globl _X_RFERRF
                                    302 	.globl _X_SLEEPCMD
                                    303 	.globl _X_RNDH
                                    304 	.globl _X_RNDL
                                    305 	.globl _X_ADCH
                                    306 	.globl _X_ADCL
                                    307 	.globl _X_ADCCON3
                                    308 	.globl _X_ADCCON2
                                    309 	.globl _X_ADCCON1
                                    310 	.globl _X_ENCCS
                                    311 	.globl _X_ENCDO
                                    312 	.globl _X_ENCDI
                                    313 	.globl _X_T1STAT
                                    314 	.globl _X_PMUX
                                    315 	.globl _X_STLOAD
                                    316 	.globl _X_P2IEN
                                    317 	.globl _X_P0IEN
                                    318 	.globl _X_T2IRQM
                                    319 	.globl _X_T2MOVF2
                                    320 	.globl _X_T2MOVF1
                                    321 	.globl _X_T2MOVF0
                                    322 	.globl _X_T2M1
                                    323 	.globl _X_T2M0
                                    324 	.globl _X_T2IRQF
                                    325 	.globl _X_P2
                                    326 	.globl _X_PSBANK
                                    327 	.globl _X_FMAP
                                    328 	.globl _X_CLKCONSTA
                                    329 	.globl _X_SLEEPSTA
                                    330 	.globl _X_T2EVTCFG
                                    331 	.globl _X_ST2
                                    332 	.globl _X_ST1
                                    333 	.globl _X_ST0
                                    334 	.globl _X_T2CTRL
                                    335 	.globl _X__XPAGE
                                    336 	.globl _X_MPAGE
                                    337 	.globl _X_RFIRQF1
                                    338 	.globl _X_P1
                                    339 	.globl _X_P0INP
                                    340 	.globl _X_P1IEN
                                    341 	.globl _X_PICTL
                                    342 	.globl _X_P2IFG
                                    343 	.globl _X_P1IFG
                                    344 	.globl _X_P0IFG
                                    345 	.globl _X_U0CSR
                                    346 	.globl _X_P0
                                    347 	.globl _USBF5
                                    348 	.globl _USBF4
                                    349 	.globl _USBF3
                                    350 	.globl _USBF2
                                    351 	.globl _USBF1
                                    352 	.globl _USBF0
                                    353 	.globl _USBCNTH
                                    354 	.globl _USBCNTL
                                    355 	.globl _USBCNT0
                                    356 	.globl _USBCSOH
                                    357 	.globl _USBCSOL
                                    358 	.globl _USBMAXO
                                    359 	.globl _USBCSIH
                                    360 	.globl _USBCSIL
                                    361 	.globl _USBCS0
                                    362 	.globl _USBMAXI
                                    363 	.globl _USBCTRL
                                    364 	.globl _USBINDEX
                                    365 	.globl _USBFRMH
                                    366 	.globl _USBFRML
                                    367 	.globl _USBCIE
                                    368 	.globl _USBOIE
                                    369 	.globl _USBIIE
                                    370 	.globl _USBCIF
                                    371 	.globl _USBOIF
                                    372 	.globl _USBIIF
                                    373 	.globl _USBPOW
                                    374 	.globl _USBADDR
                                    375 	.globl _CSPT
                                    376 	.globl _CSPZ
                                    377 	.globl _CSPY
                                    378 	.globl _CSPX
                                    379 	.globl _CSPSTAT
                                    380 	.globl _CSPCTRL
                                    381 	.globl _CSPPROG23
                                    382 	.globl _CSPPROG22
                                    383 	.globl _CSPPROG21
                                    384 	.globl _CSPPROG20
                                    385 	.globl _CSPPROG19
                                    386 	.globl _CSPPROG18
                                    387 	.globl _CSPPROG17
                                    388 	.globl _CSPPROG16
                                    389 	.globl _CSPPROG15
                                    390 	.globl _CSPPROG14
                                    391 	.globl _CSPPROG13
                                    392 	.globl _CSPPROG12
                                    393 	.globl _CSPPROG11
                                    394 	.globl _CSPPROG10
                                    395 	.globl _CSPPROG9
                                    396 	.globl _CSPPROG8
                                    397 	.globl _CSPPROG7
                                    398 	.globl _CSPPROG6
                                    399 	.globl _CSPPROG5
                                    400 	.globl _CSPPROG4
                                    401 	.globl _CSPPROG3
                                    402 	.globl _CSPPROG2
                                    403 	.globl _CSPPROG1
                                    404 	.globl _CSPPROG0
                                    405 	.globl _RFC_OBS_CTRL2
                                    406 	.globl _RFC_OBS_CTRL1
                                    407 	.globl _RFC_OBS_CTRL0
                                    408 	.globl _TXFILTCFG
                                    409 	.globl _PTEST1
                                    410 	.globl _PTEST0
                                    411 	.globl _ATEST
                                    412 	.globl _DACTEST2
                                    413 	.globl _DACTEST1
                                    414 	.globl _DACTEST0
                                    415 	.globl _MDMTEST1
                                    416 	.globl _MDMTEST0
                                    417 	.globl _ADCTEST2
                                    418 	.globl _ADCTEST1
                                    419 	.globl _ADCTEST0
                                    420 	.globl _AGCCTRL3
                                    421 	.globl _AGCCTRL2
                                    422 	.globl _AGCCTRL1
                                    423 	.globl _AGCCTRL0
                                    424 	.globl _FSCAL3
                                    425 	.globl _FSCAL2
                                    426 	.globl _FSCAL1
                                    427 	.globl _FSCAL0
                                    428 	.globl _FSCTRL
                                    429 	.globl _RXCTRL
                                    430 	.globl _FREQEST
                                    431 	.globl _MDMCTRL1
                                    432 	.globl _MDMCTRL0
                                    433 	.globl _RFRND
                                    434 	.globl _RFERRM
                                    435 	.globl _RFIRQM1
                                    436 	.globl _RFIRQM0
                                    437 	.globl _TXLAST_PTR
                                    438 	.globl _TXFIRST_PTR
                                    439 	.globl _RXP1_PTR
                                    440 	.globl _RXLAST_PTR
                                    441 	.globl _RXFIRST_PTR
                                    442 	.globl _TXFIFOCNT
                                    443 	.globl _RXFIFOCNT
                                    444 	.globl _RXFIRST
                                    445 	.globl _RSSISTAT
                                    446 	.globl _RSSI
                                    447 	.globl _CCACTRL1
                                    448 	.globl _CCACTRL0
                                    449 	.globl _FSMCTRL
                                    450 	.globl _FIFOPCTRL
                                    451 	.globl _FSMSTAT1
                                    452 	.globl _FSMSTAT0
                                    453 	.globl _TXCTRL
                                    454 	.globl _TXPOWER
                                    455 	.globl _FREQCTRL
                                    456 	.globl _FREQTUNE
                                    457 	.globl _RXMASKCLR
                                    458 	.globl _RXMASKSET
                                    459 	.globl _RXENABLE
                                    460 	.globl _FRMCTRL1
                                    461 	.globl _FRMCTRL0
                                    462 	.globl _SRCEXTEN2
                                    463 	.globl _SRCEXTEN1
                                    464 	.globl _SRCEXTEN0
                                    465 	.globl _SRCSHORTEN2
                                    466 	.globl _SRCSHORTEN1
                                    467 	.globl _SRCSHORTEN0
                                    468 	.globl _SRCMATCH
                                    469 	.globl _FRMFILT1
                                    470 	.globl _FRMFILT0
                                    471 	.globl _SHORT_ADDR1
                                    472 	.globl _SHORT_ADDR0
                                    473 	.globl _PAN_ID1
                                    474 	.globl _PAN_ID0
                                    475 	.globl _EXT_ADDR7
                                    476 	.globl _EXT_ADDR6
                                    477 	.globl _EXT_ADDR5
                                    478 	.globl _EXT_ADDR4
                                    479 	.globl _EXT_ADDR3
                                    480 	.globl _EXT_ADDR2
                                    481 	.globl _EXT_ADDR1
                                    482 	.globl _EXT_ADDR0
                                    483 	.globl _SRCSHORTPENDEN2
                                    484 	.globl _SRCSHORTPENDEN1
                                    485 	.globl _SRCSHORTPENDEN0
                                    486 	.globl _SRCEXTPENDEN2
                                    487 	.globl _SRCEXTPENDEN1
                                    488 	.globl _SRCEXTPENDEN0
                                    489 	.globl _SRCRESINDEX
                                    490 	.globl _SRCRESMASK2
                                    491 	.globl _SRCRESMASK1
                                    492 	.globl _SRCRESMASK0
                                    493 	.globl _SRC_ADDR_TABLE
                                    494 	.globl _TXFIFO
                                    495 	.globl _RXFIFO
                                    496 	.globl _RFCORE_RAM
                                    497 	.globl _CMPCTL
                                    498 	.globl _OPAMPS
                                    499 	.globl _OPAMPC
                                    500 	.globl _STCV2
                                    501 	.globl _STCV1
                                    502 	.globl _STCV0
                                    503 	.globl _STCS
                                    504 	.globl _STCC
                                    505 	.globl _T1CC4H
                                    506 	.globl _T1CC4L
                                    507 	.globl _T1CC3H
                                    508 	.globl _T1CC3L
                                    509 	.globl _XX_T1CC2H
                                    510 	.globl _XX_T1CC2L
                                    511 	.globl _XX_T1CC1H
                                    512 	.globl _XX_T1CC1L
                                    513 	.globl _XX_T1CC0H
                                    514 	.globl _XX_T1CC0L
                                    515 	.globl _T1CCTL4
                                    516 	.globl _T1CCTL3
                                    517 	.globl _XX_T1CCTL2
                                    518 	.globl _XX_T1CCTL1
                                    519 	.globl _XX_T1CCTL0
                                    520 	.globl _CLD
                                    521 	.globl _IRCTL
                                    522 	.globl _CHIPINFO1
                                    523 	.globl _CHIPINFO0
                                    524 	.globl _FWDATA
                                    525 	.globl _FADDRH
                                    526 	.globl _FADDRL
                                    527 	.globl _FCTL
                                    528 	.globl _IVCTRL
                                    529 	.globl _BATTMON
                                    530 	.globl _SRCRC
                                    531 	.globl _DBGDATA
                                    532 	.globl _TESTREG0
                                    533 	.globl _CHIPID
                                    534 	.globl _CHVER
                                    535 	.globl _OBSSEL5
                                    536 	.globl _OBSSEL4
                                    537 	.globl _OBSSEL3
                                    538 	.globl _OBSSEL2
                                    539 	.globl _OBSSEL1
                                    540 	.globl _OBSSEL0
                                    541 	.globl _I2CIO
                                    542 	.globl _I2CWC
                                    543 	.globl _I2CADDR
                                    544 	.globl _I2CDATA
                                    545 	.globl _I2CSTAT
                                    546 	.globl _I2CCFG
                                    547 	.globl _OPAMPMC
                                    548 	.globl _MONMUX
                                    549 ;--------------------------------------------------------
                                    550 ; special function registers
                                    551 ;--------------------------------------------------------
                                    552 	.area RSEG    (ABS,DATA)
      000000                        553 	.org 0x0000
                           000080   554 _P0	=	0x0080
                           000081   555 _SP	=	0x0081
                           000082   556 _DPL0	=	0x0082
                           000083   557 _DPH0	=	0x0083
                           000084   558 _DPL1	=	0x0084
                           000085   559 _DPH1	=	0x0085
                           000087   560 _PCON	=	0x0087
                           000088   561 _TCON	=	0x0088
                           000090   562 _P1	=	0x0090
                           000092   563 _DPS	=	0x0092
                           000098   564 _S0CON	=	0x0098
                           00009A   565 _IEN2	=	0x009a
                           00009B   566 _S1CON	=	0x009b
                           0000A0   567 _P2	=	0x00a0
                           0000A8   568 _IEN0	=	0x00a8
                           0000A9   569 _IP0	=	0x00a9
                           0000B8   570 _IEN1	=	0x00b8
                           0000B9   571 _IP1	=	0x00b9
                           0000C0   572 _IRCON	=	0x00c0
                           0000D0   573 _PSW	=	0x00d0
                           0000E0   574 _ACC	=	0x00e0
                           0000E8   575 _IRCON2	=	0x00e8
                           0000F0   576 _B	=	0x00f0
                           0000B4   577 _ADCCON1	=	0x00b4
                           0000B5   578 _ADCCON2	=	0x00b5
                           0000B6   579 _ADCCON3	=	0x00b6
                           0000BA   580 _ADCL	=	0x00ba
                           0000BB   581 _ADCH	=	0x00bb
                           0000BC   582 _RNDL	=	0x00bc
                           0000BD   583 _RNDH	=	0x00bd
                           0000B1   584 _ENCDI	=	0x00b1
                           0000B2   585 _ENCDO	=	0x00b2
                           0000B3   586 _ENCCS	=	0x00b3
                           0000D1   587 _DMAIRQ	=	0x00d1
                           0000D2   588 _DMA1CFGL	=	0x00d2
                           0000D3   589 _DMA1CFGH	=	0x00d3
                           0000D4   590 _DMA0CFGL	=	0x00d4
                           0000D5   591 _DMA0CFGH	=	0x00d5
                           0000D6   592 _DMAARM	=	0x00d6
                           0000D7   593 _DMAREQ	=	0x00d7
                           000089   594 _P0IFG	=	0x0089
                           00008A   595 _P1IFG	=	0x008a
                           00008B   596 _P2IFG	=	0x008b
                           00008C   597 _PICTL	=	0x008c
                           0000AB   598 _P0IEN	=	0x00ab
                           00008D   599 _P1IEN	=	0x008d
                           0000AC   600 _P2IEN	=	0x00ac
                           00008F   601 _P0INP	=	0x008f
                           0000F1   602 _PERCFG	=	0x00f1
                           0000F2   603 _APCFG	=	0x00f2
                           0000F3   604 _P0SEL	=	0x00f3
                           0000F4   605 _P1SEL	=	0x00f4
                           0000F5   606 _P2SEL	=	0x00f5
                           0000F6   607 _P1INP	=	0x00f6
                           0000F7   608 _P2INP	=	0x00f7
                           0000FD   609 _P0DIR	=	0x00fd
                           0000FE   610 _P1DIR	=	0x00fe
                           0000FF   611 _P2DIR	=	0x00ff
                           0000AE   612 _PMUX	=	0x00ae
                           000093   613 _MPAGE	=	0x0093
                           000093   614 __XPAGE	=	0x0093
                           0000C7   615 _MEMCTR	=	0x00c7
                           00009F   616 _FMAP	=	0x009f
                           00009F   617 _PSBANK	=	0x009f
                           000091   618 _RFIRQF1	=	0x0091
                           0000D9   619 _RFD	=	0x00d9
                           0000E1   620 _RFST	=	0x00e1
                           0000E9   621 _RFIRQF0	=	0x00e9
                           0000BF   622 _RFERRF	=	0x00bf
                           000095   623 _ST0	=	0x0095
                           000096   624 _ST1	=	0x0096
                           000097   625 _ST2	=	0x0097
                           0000AD   626 _STLOAD	=	0x00ad
                           0000BE   627 _SLEEPCMD	=	0x00be
                           00009D   628 _SLEEPSTA	=	0x009d
                           0000C6   629 _CLKCONCMD	=	0x00c6
                           00009E   630 _CLKCONSTA	=	0x009e
                           0000DA   631 _T1CC0L	=	0x00da
                           0000DB   632 _T1CC0H	=	0x00db
                           0000DC   633 _T1CC1L	=	0x00dc
                           0000DD   634 _T1CC1H	=	0x00dd
                           0000DE   635 _T1CC2L	=	0x00de
                           0000DF   636 _T1CC2H	=	0x00df
                           0000E2   637 _T1CNTL	=	0x00e2
                           0000E3   638 _T1CNTH	=	0x00e3
                           0000E4   639 _T1CTL	=	0x00e4
                           0000E5   640 _T1CCTL0	=	0x00e5
                           0000E6   641 _T1CCTL1	=	0x00e6
                           0000E7   642 _T1CCTL2	=	0x00e7
                           0000AF   643 _T1STAT	=	0x00af
                           000094   644 _T2CTRL	=	0x0094
                           00009C   645 _T2EVTCFG	=	0x009c
                           0000A1   646 _T2IRQF	=	0x00a1
                           0000A2   647 _T2M0	=	0x00a2
                           0000A3   648 _T2M1	=	0x00a3
                           0000A4   649 _T2MOVF0	=	0x00a4
                           0000A5   650 _T2MOVF1	=	0x00a5
                           0000A6   651 _T2MOVF2	=	0x00a6
                           0000A7   652 _T2IRQM	=	0x00a7
                           0000C3   653 _T2MSEL	=	0x00c3
                           0000CA   654 _T3CNT	=	0x00ca
                           0000CB   655 _T3CTL	=	0x00cb
                           0000CC   656 _T3CCTL0	=	0x00cc
                           0000CD   657 _T3CC0	=	0x00cd
                           0000CE   658 _T3CCTL1	=	0x00ce
                           0000CF   659 _T3CC1	=	0x00cf
                           0000EA   660 _T4CNT	=	0x00ea
                           0000EB   661 _T4CTL	=	0x00eb
                           0000EC   662 _T4CCTL0	=	0x00ec
                           0000ED   663 _T4CC0	=	0x00ed
                           0000EE   664 _T4CCTL1	=	0x00ee
                           0000EF   665 _T4CC1	=	0x00ef
                           0000D8   666 _TIMIF	=	0x00d8
                           000086   667 _U0CSR	=	0x0086
                           0000C1   668 _U0DBUF	=	0x00c1
                           0000C2   669 _U0BAUD	=	0x00c2
                           0000C4   670 _U0UCR	=	0x00c4
                           0000C5   671 _U0GCR	=	0x00c5
                           0000F8   672 _U1CSR	=	0x00f8
                           0000F9   673 _U1DBUF	=	0x00f9
                           0000FA   674 _U1BAUD	=	0x00fa
                           0000FB   675 _U1UCR	=	0x00fb
                           0000FC   676 _U1GCR	=	0x00fc
                           0000C9   677 _WDCTL	=	0x00c9
                                    678 ;--------------------------------------------------------
                                    679 ; special function bits
                                    680 ;--------------------------------------------------------
                                    681 	.area RSEG    (ABS,DATA)
      000000                        682 	.org 0x0000
                           000087   683 _P0_7	=	0x0087
                           000086   684 _P0_6	=	0x0086
                           000085   685 _P0_5	=	0x0085
                           000084   686 _P0_4	=	0x0084
                           000083   687 _P0_3	=	0x0083
                           000082   688 _P0_2	=	0x0082
                           000081   689 _P0_1	=	0x0081
                           000080   690 _P0_0	=	0x0080
                           00008F   691 _URX1IF	=	0x008f
                           00008D   692 _ADCIF	=	0x008d
                           00008B   693 _URX0IF	=	0x008b
                           00008A   694 _IT1	=	0x008a
                           000089   695 _RFERRIF	=	0x0089
                           000088   696 _IT0	=	0x0088
                           000097   697 _P1_7	=	0x0097
                           000096   698 _P1_6	=	0x0096
                           000095   699 _P1_5	=	0x0095
                           000094   700 _P1_4	=	0x0094
                           000093   701 _P1_3	=	0x0093
                           000092   702 _P1_2	=	0x0092
                           000091   703 _P1_1	=	0x0091
                           000090   704 _P1_0	=	0x0090
                           000099   705 _ENCIF_1	=	0x0099
                           000098   706 _ENCIF_0	=	0x0098
                           0000A7   707 _P2_7	=	0x00a7
                           0000A6   708 _P2_6	=	0x00a6
                           0000A5   709 _P2_5	=	0x00a5
                           0000A4   710 _P2_4	=	0x00a4
                           0000A3   711 _P2_3	=	0x00a3
                           0000A2   712 _P2_2	=	0x00a2
                           0000A1   713 _P2_1	=	0x00a1
                           0000A0   714 _P2_0	=	0x00a0
                           0000AF   715 _EA	=	0x00af
                           0000AD   716 _STIE	=	0x00ad
                           0000AC   717 _ENCIE	=	0x00ac
                           0000AB   718 _URX1IE	=	0x00ab
                           0000AA   719 _URX0IE	=	0x00aa
                           0000A9   720 _ADCIE	=	0x00a9
                           0000A8   721 _RFERRIE	=	0x00a8
                           0000BD   722 _P0IE	=	0x00bd
                           0000BC   723 _T4IE	=	0x00bc
                           0000BB   724 _T3IE	=	0x00bb
                           0000BA   725 _T2IE	=	0x00ba
                           0000B9   726 _T1IE	=	0x00b9
                           0000B8   727 _DMAIE	=	0x00b8
                           0000C7   728 _STIF	=	0x00c7
                           0000C5   729 _P0IF	=	0x00c5
                           0000C4   730 _T4IF	=	0x00c4
                           0000C3   731 _T3IF	=	0x00c3
                           0000C2   732 _T2IF	=	0x00c2
                           0000C1   733 _T1IF	=	0x00c1
                           0000C0   734 _DMAIF	=	0x00c0
                           0000D7   735 _CY	=	0x00d7
                           0000D6   736 _AC	=	0x00d6
                           0000D5   737 _F0	=	0x00d5
                           0000D4   738 _RS1	=	0x00d4
                           0000D3   739 _RS0	=	0x00d3
                           0000D2   740 _OV	=	0x00d2
                           0000D1   741 _F1	=	0x00d1
                           0000D0   742 _P	=	0x00d0
                           0000E7   743 _ACC_7	=	0x00e7
                           0000E6   744 _ACC_6	=	0x00e6
                           0000E5   745 _ACC_5	=	0x00e5
                           0000E4   746 _ACC_4	=	0x00e4
                           0000E3   747 _ACC_3	=	0x00e3
                           0000E2   748 _ACC_2	=	0x00e2
                           0000E1   749 _ACC_1	=	0x00e1
                           0000E0   750 _ACC_0	=	0x00e0
                           0000EC   751 _WDTIF	=	0x00ec
                           0000EB   752 _P1IF	=	0x00eb
                           0000EA   753 _UTX1IF	=	0x00ea
                           0000E9   754 _UTX0IF	=	0x00e9
                           0000E8   755 _P2IF	=	0x00e8
                           0000F7   756 _B_7	=	0x00f7
                           0000F6   757 _B_6	=	0x00f6
                           0000F5   758 _B_5	=	0x00f5
                           0000F4   759 _B_4	=	0x00f4
                           0000F3   760 _B_3	=	0x00f3
                           0000F2   761 _B_2	=	0x00f2
                           0000F1   762 _B_1	=	0x00f1
                           0000F0   763 _B_0	=	0x00f0
                           0000DE   764 _OVFIM	=	0x00de
                           0000DD   765 _T4CH1IF	=	0x00dd
                           0000DC   766 _T4CH0IF	=	0x00dc
                           0000DB   767 _T4OVFIF	=	0x00db
                           0000DA   768 _T3CH1IF	=	0x00da
                           0000D9   769 _T3CH0IF	=	0x00d9
                           0000D8   770 _T3OVFIF	=	0x00d8
                           0000FF   771 _MODE	=	0x00ff
                           0000FE   772 _RE	=	0x00fe
                           0000FD   773 _SLAVE	=	0x00fd
                           0000FC   774 _FE	=	0x00fc
                           0000FB   775 _ERR	=	0x00fb
                           0000FA   776 _RX_BYTE	=	0x00fa
                           0000F9   777 _TX_BYTE	=	0x00f9
                           0000F8   778 _ACTIVE	=	0x00f8
                                    779 ;--------------------------------------------------------
                                    780 ; overlayable register banks
                                    781 ;--------------------------------------------------------
                                    782 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        783 	.ds 8
                                    784 ;--------------------------------------------------------
                                    785 ; internal ram data
                                    786 ;--------------------------------------------------------
                                    787 	.area DSEG    (DATA)
                                    788 ;--------------------------------------------------------
                                    789 ; overlayable items in internal ram 
                                    790 ;--------------------------------------------------------
                                    791 ;--------------------------------------------------------
                                    792 ; indirectly addressable internal ram data
                                    793 ;--------------------------------------------------------
                                    794 	.area ISEG    (DATA)
                                    795 ;--------------------------------------------------------
                                    796 ; absolute internal ram data
                                    797 ;--------------------------------------------------------
                                    798 	.area IABS    (ABS,DATA)
                                    799 	.area IABS    (ABS,DATA)
                                    800 ;--------------------------------------------------------
                                    801 ; bit data
                                    802 ;--------------------------------------------------------
                                    803 	.area BSEG    (BIT)
                                    804 ;--------------------------------------------------------
                                    805 ; paged external ram data
                                    806 ;--------------------------------------------------------
                                    807 	.area PSEG    (PAG,XDATA)
                                    808 ;--------------------------------------------------------
                                    809 ; external ram data
                                    810 ;--------------------------------------------------------
                                    811 	.area XSEG    (XDATA)
                           0061A6   812 _MONMUX	=	0x61a6
                           0061A6   813 _OPAMPMC	=	0x61a6
                           006230   814 _I2CCFG	=	0x6230
                           006231   815 _I2CSTAT	=	0x6231
                           006232   816 _I2CDATA	=	0x6232
                           006233   817 _I2CADDR	=	0x6233
                           006234   818 _I2CWC	=	0x6234
                           006235   819 _I2CIO	=	0x6235
                           006243   820 _OBSSEL0	=	0x6243
                           006244   821 _OBSSEL1	=	0x6244
                           006245   822 _OBSSEL2	=	0x6245
                           006246   823 _OBSSEL3	=	0x6246
                           006247   824 _OBSSEL4	=	0x6247
                           006248   825 _OBSSEL5	=	0x6248
                           006249   826 _CHVER	=	0x6249
                           00624A   827 _CHIPID	=	0x624a
                           00624B   828 _TESTREG0	=	0x624b
                           006260   829 _DBGDATA	=	0x6260
                           006262   830 _SRCRC	=	0x6262
                           006264   831 _BATTMON	=	0x6264
                           006265   832 _IVCTRL	=	0x6265
                           006270   833 _FCTL	=	0x6270
                           006271   834 _FADDRL	=	0x6271
                           006272   835 _FADDRH	=	0x6272
                           006273   836 _FWDATA	=	0x6273
                           006276   837 _CHIPINFO0	=	0x6276
                           006277   838 _CHIPINFO1	=	0x6277
                           006281   839 _IRCTL	=	0x6281
                           006290   840 _CLD	=	0x6290
                           0062A0   841 _XX_T1CCTL0	=	0x62a0
                           0062A1   842 _XX_T1CCTL1	=	0x62a1
                           0062A2   843 _XX_T1CCTL2	=	0x62a2
                           0062A3   844 _T1CCTL3	=	0x62a3
                           0062A4   845 _T1CCTL4	=	0x62a4
                           0062A6   846 _XX_T1CC0L	=	0x62a6
                           0062A7   847 _XX_T1CC0H	=	0x62a7
                           0062A8   848 _XX_T1CC1L	=	0x62a8
                           0062A9   849 _XX_T1CC1H	=	0x62a9
                           0062AA   850 _XX_T1CC2L	=	0x62aa
                           0062AB   851 _XX_T1CC2H	=	0x62ab
                           0062AC   852 _T1CC3L	=	0x62ac
                           0062AD   853 _T1CC3H	=	0x62ad
                           0062AE   854 _T1CC4L	=	0x62ae
                           0062AF   855 _T1CC4H	=	0x62af
                           0062B0   856 _STCC	=	0x62b0
                           0062B1   857 _STCS	=	0x62b1
                           0062B2   858 _STCV0	=	0x62b2
                           0062B3   859 _STCV1	=	0x62b3
                           0062B4   860 _STCV2	=	0x62b4
                           0062C0   861 _OPAMPC	=	0x62c0
                           0062C1   862 _OPAMPS	=	0x62c1
                           0062D0   863 _CMPCTL	=	0x62d0
                           006000   864 _RFCORE_RAM	=	0x6000
                           006000   865 _RXFIFO	=	0x6000
                           006080   866 _TXFIFO	=	0x6080
                           006100   867 _SRC_ADDR_TABLE	=	0x6100
                           006160   868 _SRCRESMASK0	=	0x6160
                           006161   869 _SRCRESMASK1	=	0x6161
                           006162   870 _SRCRESMASK2	=	0x6162
                           006163   871 _SRCRESINDEX	=	0x6163
                           006164   872 _SRCEXTPENDEN0	=	0x6164
                           006165   873 _SRCEXTPENDEN1	=	0x6165
                           006166   874 _SRCEXTPENDEN2	=	0x6166
                           006167   875 _SRCSHORTPENDEN0	=	0x6167
                           006168   876 _SRCSHORTPENDEN1	=	0x6168
                           006169   877 _SRCSHORTPENDEN2	=	0x6169
                           00616A   878 _EXT_ADDR0	=	0x616a
                           00616B   879 _EXT_ADDR1	=	0x616b
                           00616C   880 _EXT_ADDR2	=	0x616c
                           00616D   881 _EXT_ADDR3	=	0x616d
                           00616E   882 _EXT_ADDR4	=	0x616e
                           00616F   883 _EXT_ADDR5	=	0x616f
                           006170   884 _EXT_ADDR6	=	0x6170
                           006171   885 _EXT_ADDR7	=	0x6171
                           006172   886 _PAN_ID0	=	0x6172
                           006173   887 _PAN_ID1	=	0x6173
                           006174   888 _SHORT_ADDR0	=	0x6174
                           006175   889 _SHORT_ADDR1	=	0x6175
                           006180   890 _FRMFILT0	=	0x6180
                           006181   891 _FRMFILT1	=	0x6181
                           006182   892 _SRCMATCH	=	0x6182
                           006183   893 _SRCSHORTEN0	=	0x6183
                           006184   894 _SRCSHORTEN1	=	0x6184
                           006185   895 _SRCSHORTEN2	=	0x6185
                           006186   896 _SRCEXTEN0	=	0x6186
                           006187   897 _SRCEXTEN1	=	0x6187
                           006188   898 _SRCEXTEN2	=	0x6188
                           006189   899 _FRMCTRL0	=	0x6189
                           00618A   900 _FRMCTRL1	=	0x618a
                           00618B   901 _RXENABLE	=	0x618b
                           00618C   902 _RXMASKSET	=	0x618c
                           00618D   903 _RXMASKCLR	=	0x618d
                           00618E   904 _FREQTUNE	=	0x618e
                           00618F   905 _FREQCTRL	=	0x618f
                           006190   906 _TXPOWER	=	0x6190
                           006191   907 _TXCTRL	=	0x6191
                           006192   908 _FSMSTAT0	=	0x6192
                           006193   909 _FSMSTAT1	=	0x6193
                           006194   910 _FIFOPCTRL	=	0x6194
                           006195   911 _FSMCTRL	=	0x6195
                           006196   912 _CCACTRL0	=	0x6196
                           006197   913 _CCACTRL1	=	0x6197
                           006198   914 _RSSI	=	0x6198
                           006199   915 _RSSISTAT	=	0x6199
                           00619A   916 _RXFIRST	=	0x619a
                           00619B   917 _RXFIFOCNT	=	0x619b
                           00619C   918 _TXFIFOCNT	=	0x619c
                           00619D   919 _RXFIRST_PTR	=	0x619d
                           00619E   920 _RXLAST_PTR	=	0x619e
                           00619F   921 _RXP1_PTR	=	0x619f
                           0061A1   922 _TXFIRST_PTR	=	0x61a1
                           0061A2   923 _TXLAST_PTR	=	0x61a2
                           0061A3   924 _RFIRQM0	=	0x61a3
                           0061A4   925 _RFIRQM1	=	0x61a4
                           0061A5   926 _RFERRM	=	0x61a5
                           0061A7   927 _RFRND	=	0x61a7
                           0061A8   928 _MDMCTRL0	=	0x61a8
                           0061A9   929 _MDMCTRL1	=	0x61a9
                           0061AA   930 _FREQEST	=	0x61aa
                           0061AB   931 _RXCTRL	=	0x61ab
                           0061AC   932 _FSCTRL	=	0x61ac
                           0061AD   933 _FSCAL0	=	0x61ad
                           0061AE   934 _FSCAL1	=	0x61ae
                           0061AF   935 _FSCAL2	=	0x61af
                           0061B0   936 _FSCAL3	=	0x61b0
                           0061B1   937 _AGCCTRL0	=	0x61b1
                           0061B2   938 _AGCCTRL1	=	0x61b2
                           0061B3   939 _AGCCTRL2	=	0x61b3
                           0061B4   940 _AGCCTRL3	=	0x61b4
                           0061B5   941 _ADCTEST0	=	0x61b5
                           0061B6   942 _ADCTEST1	=	0x61b6
                           0061B7   943 _ADCTEST2	=	0x61b7
                           0061B8   944 _MDMTEST0	=	0x61b8
                           0061B9   945 _MDMTEST1	=	0x61b9
                           0061BA   946 _DACTEST0	=	0x61ba
                           0061BB   947 _DACTEST1	=	0x61bb
                           0061BC   948 _DACTEST2	=	0x61bc
                           0061BD   949 _ATEST	=	0x61bd
                           0061BE   950 _PTEST0	=	0x61be
                           0061BF   951 _PTEST1	=	0x61bf
                           0061FA   952 _TXFILTCFG	=	0x61fa
                           0061EB   953 _RFC_OBS_CTRL0	=	0x61eb
                           0061EC   954 _RFC_OBS_CTRL1	=	0x61ec
                           0061ED   955 _RFC_OBS_CTRL2	=	0x61ed
                           0061C0   956 _CSPPROG0	=	0x61c0
                           0061C1   957 _CSPPROG1	=	0x61c1
                           0061C2   958 _CSPPROG2	=	0x61c2
                           0061C3   959 _CSPPROG3	=	0x61c3
                           0061C4   960 _CSPPROG4	=	0x61c4
                           0061C5   961 _CSPPROG5	=	0x61c5
                           0061C6   962 _CSPPROG6	=	0x61c6
                           0061C7   963 _CSPPROG7	=	0x61c7
                           0061C8   964 _CSPPROG8	=	0x61c8
                           0061C9   965 _CSPPROG9	=	0x61c9
                           0061CA   966 _CSPPROG10	=	0x61ca
                           0061CB   967 _CSPPROG11	=	0x61cb
                           0061CC   968 _CSPPROG12	=	0x61cc
                           0061CD   969 _CSPPROG13	=	0x61cd
                           0061CE   970 _CSPPROG14	=	0x61ce
                           0061CF   971 _CSPPROG15	=	0x61cf
                           0061D0   972 _CSPPROG16	=	0x61d0
                           0061D1   973 _CSPPROG17	=	0x61d1
                           0061D2   974 _CSPPROG18	=	0x61d2
                           0061D3   975 _CSPPROG19	=	0x61d3
                           0061D4   976 _CSPPROG20	=	0x61d4
                           0061D5   977 _CSPPROG21	=	0x61d5
                           0061D6   978 _CSPPROG22	=	0x61d6
                           0061D7   979 _CSPPROG23	=	0x61d7
                           0061E0   980 _CSPCTRL	=	0x61e0
                           0061E1   981 _CSPSTAT	=	0x61e1
                           0061E2   982 _CSPX	=	0x61e2
                           0061E3   983 _CSPY	=	0x61e3
                           0061E4   984 _CSPZ	=	0x61e4
                           0061E5   985 _CSPT	=	0x61e5
                           006200   986 _USBADDR	=	0x6200
                           006201   987 _USBPOW	=	0x6201
                           006202   988 _USBIIF	=	0x6202
                           006204   989 _USBOIF	=	0x6204
                           006206   990 _USBCIF	=	0x6206
                           006207   991 _USBIIE	=	0x6207
                           006209   992 _USBOIE	=	0x6209
                           00620B   993 _USBCIE	=	0x620b
                           00620C   994 _USBFRML	=	0x620c
                           00620D   995 _USBFRMH	=	0x620d
                           00620E   996 _USBINDEX	=	0x620e
                           00620F   997 _USBCTRL	=	0x620f
                           006210   998 _USBMAXI	=	0x6210
                           006211   999 _USBCS0	=	0x6211
                           006211  1000 _USBCSIL	=	0x6211
                           006212  1001 _USBCSIH	=	0x6212
                           006213  1002 _USBMAXO	=	0x6213
                           006214  1003 _USBCSOL	=	0x6214
                           006215  1004 _USBCSOH	=	0x6215
                           006216  1005 _USBCNT0	=	0x6216
                           006216  1006 _USBCNTL	=	0x6216
                           006217  1007 _USBCNTH	=	0x6217
                           006220  1008 _USBF0	=	0x6220
                           006222  1009 _USBF1	=	0x6222
                           006224  1010 _USBF2	=	0x6224
                           006226  1011 _USBF3	=	0x6226
                           006228  1012 _USBF4	=	0x6228
                           00622A  1013 _USBF5	=	0x622a
                           007080  1014 _X_P0	=	0x7080
                           007086  1015 _X_U0CSR	=	0x7086
                           007089  1016 _X_P0IFG	=	0x7089
                           00708A  1017 _X_P1IFG	=	0x708a
                           00708B  1018 _X_P2IFG	=	0x708b
                           00708C  1019 _X_PICTL	=	0x708c
                           00708D  1020 _X_P1IEN	=	0x708d
                           00708F  1021 _X_P0INP	=	0x708f
                           007090  1022 _X_P1	=	0x7090
                           007091  1023 _X_RFIRQF1	=	0x7091
                           007093  1024 _X_MPAGE	=	0x7093
                           007093  1025 _X__XPAGE	=	0x7093
                           007094  1026 _X_T2CTRL	=	0x7094
                           007095  1027 _X_ST0	=	0x7095
                           007096  1028 _X_ST1	=	0x7096
                           007097  1029 _X_ST2	=	0x7097
                           00709C  1030 _X_T2EVTCFG	=	0x709c
                           00709D  1031 _X_SLEEPSTA	=	0x709d
                           00709E  1032 _X_CLKCONSTA	=	0x709e
                           00709F  1033 _X_FMAP	=	0x709f
                           00709F  1034 _X_PSBANK	=	0x709f
                           0070A0  1035 _X_P2	=	0x70a0
                           0070A1  1036 _X_T2IRQF	=	0x70a1
                           0070A2  1037 _X_T2M0	=	0x70a2
                           0070A3  1038 _X_T2M1	=	0x70a3
                           0070A4  1039 _X_T2MOVF0	=	0x70a4
                           0070A5  1040 _X_T2MOVF1	=	0x70a5
                           0070A6  1041 _X_T2MOVF2	=	0x70a6
                           0070A7  1042 _X_T2IRQM	=	0x70a7
                           0070AB  1043 _X_P0IEN	=	0x70ab
                           0070AC  1044 _X_P2IEN	=	0x70ac
                           0070AD  1045 _X_STLOAD	=	0x70ad
                           0070AE  1046 _X_PMUX	=	0x70ae
                           0070AF  1047 _X_T1STAT	=	0x70af
                           0070B1  1048 _X_ENCDI	=	0x70b1
                           0070B2  1049 _X_ENCDO	=	0x70b2
                           0070B3  1050 _X_ENCCS	=	0x70b3
                           0070B4  1051 _X_ADCCON1	=	0x70b4
                           0070B5  1052 _X_ADCCON2	=	0x70b5
                           0070B6  1053 _X_ADCCON3	=	0x70b6
                           0070BA  1054 _X_ADCL	=	0x70ba
                           0070BB  1055 _X_ADCH	=	0x70bb
                           0070BC  1056 _X_RNDL	=	0x70bc
                           0070BD  1057 _X_RNDH	=	0x70bd
                           0070BE  1058 _X_SLEEPCMD	=	0x70be
                           0070BF  1059 _X_RFERRF	=	0x70bf
                           0070C1  1060 _X_U0DBUF	=	0x70c1
                           0070C2  1061 _X_U0BAUD	=	0x70c2
                           0070C3  1062 _X_T2MSEL	=	0x70c3
                           0070C4  1063 _X_U0UCR	=	0x70c4
                           0070C5  1064 _X_U0GCR	=	0x70c5
                           0070C6  1065 _X_CLKCONCMD	=	0x70c6
                           0070C7  1066 _X_MEMCTR	=	0x70c7
                           0070C9  1067 _X_WDCTL	=	0x70c9
                           0070CA  1068 _X_T3CNT	=	0x70ca
                           0070CB  1069 _X_T3CTL	=	0x70cb
                           0070CC  1070 _X_T3CCTL0	=	0x70cc
                           0070CD  1071 _X_T3CC0	=	0x70cd
                           0070CE  1072 _X_T3CCTL1	=	0x70ce
                           0070CF  1073 _X_T3CC1	=	0x70cf
                           0070D1  1074 _X_DMAIRQ	=	0x70d1
                           0070D2  1075 _X_DMA1CFGL	=	0x70d2
                           0070D3  1076 _X_DMA1CFGH	=	0x70d3
                           0070D4  1077 _X_DMA0CFGL	=	0x70d4
                           0070D5  1078 _X_DMA0CFGH	=	0x70d5
                           0070D6  1079 _X_DMAARM	=	0x70d6
                           0070D7  1080 _X_DMAREQ	=	0x70d7
                           0070D8  1081 _X_TIMIF	=	0x70d8
                           0070D9  1082 _X_RFD	=	0x70d9
                           0070DA  1083 _X_T1CC0L	=	0x70da
                           0070DB  1084 _X_T1CC0H	=	0x70db
                           0070DC  1085 _X_T1CC1L	=	0x70dc
                           0070DD  1086 _X_T1CC1H	=	0x70dd
                           0070DE  1087 _X_T1CC2L	=	0x70de
                           0070DF  1088 _X_T1CC2H	=	0x70df
                           0070E1  1089 _X_RFST	=	0x70e1
                           0070E2  1090 _X_T1CNTL	=	0x70e2
                           0070E3  1091 _X_T1CNTH	=	0x70e3
                           0070E4  1092 _X_T1CTL	=	0x70e4
                           0070E5  1093 _X_T1CCTL0	=	0x70e5
                           0070E6  1094 _X_T1CCTL1	=	0x70e6
                           0070E7  1095 _X_T1CCTL2	=	0x70e7
                           0070E9  1096 _X_RFIRQF0	=	0x70e9
                           0070EA  1097 _X_T4CNT	=	0x70ea
                           0070EB  1098 _X_T4CTL	=	0x70eb
                           0070EC  1099 _X_T4CCTL0	=	0x70ec
                           0070ED  1100 _X_T4CC0	=	0x70ed
                           0070EE  1101 _X_T4CCTL1	=	0x70ee
                           0070EF  1102 _X_T4CC1	=	0x70ef
                           0070F1  1103 _X_PERCFG	=	0x70f1
                           0070F2  1104 _X_APCFG	=	0x70f2
                           0070F3  1105 _X_P0SEL	=	0x70f3
                           0070F4  1106 _X_P1SEL	=	0x70f4
                           0070F5  1107 _X_P2SEL	=	0x70f5
                           0070F6  1108 _X_P1INP	=	0x70f6
                           0070F7  1109 _X_P2INP	=	0x70f7
                           0070F8  1110 _X_U1CSR	=	0x70f8
                           0070F9  1111 _X_U1DBUF	=	0x70f9
                           0070FA  1112 _X_U1BAUD	=	0x70fa
                           0070FB  1113 _X_U1UCR	=	0x70fb
                           0070FC  1114 _X_U1GCR	=	0x70fc
                           0070FD  1115 _X_P0DIR	=	0x70fd
                           0070FE  1116 _X_P1DIR	=	0x70fe
                           0070FF  1117 _X_P2DIR	=	0x70ff
                           007800  1118 _X_INFOPAGE	=	0x7800
                           00780C  1119 _X_IEEE_ADDR	=	0x780c
      000004                       1120 _et_hello:
      000004                       1121 	.ds 10
      00000E                       1122 _et_blink:
      00000E                       1123 	.ds 10
      000018                       1124 _count:
      000018                       1125 	.ds 2
      00001A                       1126 _blinks:
      00001A                       1127 	.ds 1
                                   1128 ;--------------------------------------------------------
                                   1129 ; absolute external ram data
                                   1130 ;--------------------------------------------------------
                                   1131 	.area XABS    (ABS,XDATA)
                                   1132 ;--------------------------------------------------------
                                   1133 ; external initialized ram data
                                   1134 ;--------------------------------------------------------
                                   1135 	.area XISEG   (XDATA)
      000C8E                       1136 _hello_world_process::
      000C8E                       1137 	.ds 9
      000C97                       1138 _blink_process::
      000C97                       1139 	.ds 9
                                   1140 	.area HOME    (CODE)
                                   1141 	.area GSINIT0 (CODE)
                                   1142 	.area GSINIT1 (CODE)
                                   1143 	.area GSINIT2 (CODE)
                                   1144 	.area GSINIT3 (CODE)
                                   1145 	.area GSINIT4 (CODE)
                                   1146 	.area GSINIT5 (CODE)
                                   1147 	.area GSINIT  (CODE)
                                   1148 	.area GSFINAL (CODE)
                                   1149 	.area CSEG    (CODE)
                                   1150 ;--------------------------------------------------------
                                   1151 ; global & static initialisations
                                   1152 ;--------------------------------------------------------
                                   1153 	.area HOME    (CODE)
                                   1154 	.area GSINIT  (CODE)
                                   1155 	.area GSFINAL (CODE)
                                   1156 	.area GSINIT  (CODE)
                                   1157 ;--------------------------------------------------------
                                   1158 ; Home
                                   1159 ;--------------------------------------------------------
                                   1160 	.area HOME    (CODE)
                                   1161 	.area HOME    (CODE)
                                   1162 ;--------------------------------------------------------
                                   1163 ; code
                                   1164 ;--------------------------------------------------------
                                   1165 	.area CSEG    (CODE)
                                   1166 ;------------------------------------------------------------
                                   1167 ;Allocation info for local variables in function 'process_thread_hello_world_process'
                                   1168 ;------------------------------------------------------------
                                   1169 ;ev                        Allocated to stack - sp -2
                                   1170 ;data                      Allocated to stack - sp -5
                                   1171 ;process_pt                Allocated to registers r5 r6 r7 
                                   1172 ;PT_YIELD_FLAG             Allocated to registers r4 
                                   1173 ;------------------------------------------------------------
                                   1174 ;	blink.c:24: PROCESS_THREAD(hello_world_process, ev, data)
                                   1175 ;	-----------------------------------------
                                   1176 ;	 function process_thread_hello_world_process
                                   1177 ;	-----------------------------------------
      0004A8                       1178 _process_thread_hello_world_process:
                           000007  1179 	ar7 = 0x07
                           000006  1180 	ar6 = 0x06
                           000005  1181 	ar5 = 0x05
                           000004  1182 	ar4 = 0x04
                           000003  1183 	ar3 = 0x03
                           000002  1184 	ar2 = 0x02
                           000001  1185 	ar1 = 0x01
                           000000  1186 	ar0 = 0x00
                                   1187 ;	blink.c:26: PROCESS_BEGIN();
      0004A8 AD 82            [24] 1188 	mov	r5,dpl
      0004AA AE 83            [24] 1189 	mov	r6,dph
      0004AC AF F0            [24] 1190 	mov	r7,b
      0004AE 7C 01            [12] 1191 	mov	r4,#0x01
      0004B0 12 91 BF         [24] 1192 	lcall	__gptrget
      0004B3 FA               [12] 1193 	mov	r2,a
      0004B4 A3               [24] 1194 	inc	dptr
      0004B5 12 91 BF         [24] 1195 	lcall	__gptrget
      0004B8 FB               [12] 1196 	mov	r3,a
      0004B9 BA 00 05         [24] 1197 	cjne	r2,#0x00,00131$
      0004BC BB 00 02         [24] 1198 	cjne	r3,#0x00,00131$
      0004BF 80 0B            [24] 1199 	sjmp	00101$
      0004C1                       1200 00131$:
      0004C1 BA 20 05         [24] 1201 	cjne	r2,#0x20,00132$
      0004C4 BB 00 02         [24] 1202 	cjne	r3,#0x00,00132$
      0004C7 80 3C            [24] 1203 	sjmp	00102$
      0004C9                       1204 00132$:
      0004C9 02 05 55         [24] 1205 	ljmp	00113$
      0004CC                       1206 00101$:
                                   1207 ;	blink.c:28: etimer_set(&et_hello, CLOCK_SECOND * 4);
      0004CC C0 07            [24] 1208 	push	ar7
      0004CE C0 06            [24] 1209 	push	ar6
      0004D0 C0 05            [24] 1210 	push	ar5
      0004D2 E4               [12] 1211 	clr	a
      0004D3 C0 E0            [24] 1212 	push	acc
      0004D5 74 02            [12] 1213 	mov	a,#0x02
      0004D7 C0 E0            [24] 1214 	push	acc
      0004D9 90 00 04         [24] 1215 	mov	dptr,#_et_hello
      0004DC 75 F0 00         [24] 1216 	mov	b,#0x00
      0004DF 12 1A 9D         [24] 1217 	lcall	_etimer_set
      0004E2 15 81            [12] 1218 	dec	sp
      0004E4 15 81            [12] 1219 	dec	sp
      0004E6 D0 05            [24] 1220 	pop	ar5
      0004E8 D0 06            [24] 1221 	pop	ar6
      0004EA D0 07            [24] 1222 	pop	ar7
                                   1223 ;	blink.c:29: count = 0;
      0004EC 90 00 18         [24] 1224 	mov	dptr,#_count
      0004EF E4               [12] 1225 	clr	a
      0004F0 F0               [24] 1226 	movx	@dptr,a
      0004F1 A3               [24] 1227 	inc	dptr
      0004F2 F0               [24] 1228 	movx	@dptr,a
                                   1229 ;	blink.c:31: while(1) {
      0004F3                       1230 00111$:
                                   1231 ;	blink.c:32: PROCESS_WAIT_EVENT();
      0004F3 7C 00            [12] 1232 	mov	r4,#0x00
      0004F5 8D 82            [24] 1233 	mov	dpl,r5
      0004F7 8E 83            [24] 1234 	mov	dph,r6
      0004F9 8F F0            [24] 1235 	mov	b,r7
      0004FB 74 20            [12] 1236 	mov	a,#0x20
      0004FD 12 5E 49         [24] 1237 	lcall	__gptrput
      000500 A3               [24] 1238 	inc	dptr
      000501 E4               [12] 1239 	clr	a
      000502 12 5E 49         [24] 1240 	lcall	__gptrput
      000505                       1241 00102$:
      000505 EC               [12] 1242 	mov	a,r4
      000506 70 04            [24] 1243 	jnz	00106$
      000508 75 82 01         [24] 1244 	mov	dpl,#0x01
      00050B 22               [24] 1245 	ret
      00050C                       1246 00106$:
                                   1247 ;	blink.c:34: if(ev == PROCESS_EVENT_TIMER) {
      00050C A8 81            [24] 1248 	mov	r0,sp
      00050E 18               [12] 1249 	dec	r0
      00050F 18               [12] 1250 	dec	r0
      000510 B6 88 E0         [24] 1251 	cjne	@r0,#0x88,00111$
                                   1252 ;	blink.c:35: printf("Sensor says #%u\n", count);
      000513 C0 07            [24] 1253 	push	ar7
      000515 C0 06            [24] 1254 	push	ar6
      000517 C0 05            [24] 1255 	push	ar5
      000519 90 00 18         [24] 1256 	mov	dptr,#_count
      00051C E0               [24] 1257 	movx	a,@dptr
      00051D C0 E0            [24] 1258 	push	acc
      00051F A3               [24] 1259 	inc	dptr
      000520 E0               [24] 1260 	movx	a,@dptr
      000521 C0 E0            [24] 1261 	push	acc
      000523 74 00            [12] 1262 	mov	a,#___str_0
      000525 C0 E0            [24] 1263 	push	acc
      000527 74 E0            [12] 1264 	mov	a,#(___str_0 >> 8)
      000529 C0 E0            [24] 1265 	push	acc
      00052B 74 80            [12] 1266 	mov	a,#0x80
      00052D C0 E0            [24] 1267 	push	acc
      00052F 12 80 59         [24] 1268 	lcall	_printf
      000532 E5 81            [12] 1269 	mov	a,sp
      000534 24 FB            [12] 1270 	add	a,#0xfb
      000536 F5 81            [12] 1271 	mov	sp,a
                                   1272 ;	blink.c:36: count++;
      000538 90 00 18         [24] 1273 	mov	dptr,#_count
      00053B E0               [24] 1274 	movx	a,@dptr
      00053C 24 01            [12] 1275 	add	a,#0x01
      00053E F0               [24] 1276 	movx	@dptr,a
      00053F A3               [24] 1277 	inc	dptr
      000540 E0               [24] 1278 	movx	a,@dptr
      000541 34 00            [12] 1279 	addc	a,#0x00
      000543 F0               [24] 1280 	movx	@dptr,a
                                   1281 ;	blink.c:38: etimer_reset(&et_hello);
      000544 90 00 04         [24] 1282 	mov	dptr,#_et_hello
      000547 75 F0 00         [24] 1283 	mov	b,#0x00
      00054A 12 1A D1         [24] 1284 	lcall	_etimer_reset
      00054D D0 05            [24] 1285 	pop	ar5
      00054F D0 06            [24] 1286 	pop	ar6
      000551 D0 07            [24] 1287 	pop	ar7
                                   1288 ;	blink.c:42: PROCESS_END();
      000553 80 9E            [24] 1289 	sjmp	00111$
      000555                       1290 00113$:
      000555 8D 82            [24] 1291 	mov	dpl,r5
      000557 8E 83            [24] 1292 	mov	dph,r6
      000559 8F F0            [24] 1293 	mov	b,r7
      00055B E4               [12] 1294 	clr	a
      00055C 12 5E 49         [24] 1295 	lcall	__gptrput
      00055F A3               [24] 1296 	inc	dptr
      000560 12 5E 49         [24] 1297 	lcall	__gptrput
      000563 75 82 03         [24] 1298 	mov	dpl,#0x03
      000566 22               [24] 1299 	ret
                                   1300 ;------------------------------------------------------------
                                   1301 ;Allocation info for local variables in function 'process_thread_blink_process'
                                   1302 ;------------------------------------------------------------
                                   1303 ;ev                        Allocated to stack - sp -2
                                   1304 ;data                      Allocated to stack - sp -5
                                   1305 ;process_pt                Allocated to registers r5 r6 r7 
                                   1306 ;PT_YIELD_FLAG             Allocated to registers r4 
                                   1307 ;------------------------------------------------------------
                                   1308 ;	blink.c:45: PROCESS_THREAD(blink_process, ev, data)
                                   1309 ;	-----------------------------------------
                                   1310 ;	 function process_thread_blink_process
                                   1311 ;	-----------------------------------------
      000567                       1312 _process_thread_blink_process:
                                   1313 ;	blink.c:47: PROCESS_BEGIN();
      000567 AD 82            [24] 1314 	mov	r5,dpl
      000569 AE 83            [24] 1315 	mov	r6,dph
      00056B AF F0            [24] 1316 	mov	r7,b
      00056D 7C 01            [12] 1317 	mov	r4,#0x01
      00056F 12 91 BF         [24] 1318 	lcall	__gptrget
      000572 FA               [12] 1319 	mov	r2,a
      000573 A3               [24] 1320 	inc	dptr
      000574 12 91 BF         [24] 1321 	lcall	__gptrget
      000577 FB               [12] 1322 	mov	r3,a
      000578 BA 00 05         [24] 1323 	cjne	r2,#0x00,00127$
      00057B BB 00 02         [24] 1324 	cjne	r3,#0x00,00127$
      00057E 80 0B            [24] 1325 	sjmp	00101$
      000580                       1326 00127$:
      000580 BA 36 05         [24] 1327 	cjne	r2,#0x36,00128$
      000583 BB 00 02         [24] 1328 	cjne	r3,#0x00,00128$
      000586 80 3A            [24] 1329 	sjmp	00102$
      000588                       1330 00128$:
      000588 02 06 1B         [24] 1331 	ljmp	00112$
      00058B                       1332 00101$:
                                   1333 ;	blink.c:49: blinks = 0;
      00058B 90 00 1A         [24] 1334 	mov	dptr,#_blinks
      00058E E4               [12] 1335 	clr	a
      00058F F0               [24] 1336 	movx	@dptr,a
                                   1337 ;	blink.c:51: while(1) {
      000590                       1338 00110$:
                                   1339 ;	blink.c:52: etimer_set(&et_blink, CLOCK_SECOND);
      000590 C0 07            [24] 1340 	push	ar7
      000592 C0 06            [24] 1341 	push	ar6
      000594 C0 05            [24] 1342 	push	ar5
      000596 74 80            [12] 1343 	mov	a,#0x80
      000598 C0 E0            [24] 1344 	push	acc
      00059A E4               [12] 1345 	clr	a
      00059B C0 E0            [24] 1346 	push	acc
      00059D 90 00 0E         [24] 1347 	mov	dptr,#_et_blink
      0005A0 75 F0 00         [24] 1348 	mov	b,#0x00
      0005A3 12 1A 9D         [24] 1349 	lcall	_etimer_set
      0005A6 15 81            [12] 1350 	dec	sp
      0005A8 15 81            [12] 1351 	dec	sp
      0005AA D0 05            [24] 1352 	pop	ar5
      0005AC D0 06            [24] 1353 	pop	ar6
      0005AE D0 07            [24] 1354 	pop	ar7
                                   1355 ;	blink.c:54: PROCESS_WAIT_EVENT_UNTIL(ev == PROCESS_EVENT_TIMER);
      0005B0 7C 00            [12] 1356 	mov	r4,#0x00
      0005B2 8D 82            [24] 1357 	mov	dpl,r5
      0005B4 8E 83            [24] 1358 	mov	dph,r6
      0005B6 8F F0            [24] 1359 	mov	b,r7
      0005B8 74 36            [12] 1360 	mov	a,#0x36
      0005BA 12 5E 49         [24] 1361 	lcall	__gptrput
      0005BD A3               [24] 1362 	inc	dptr
      0005BE E4               [12] 1363 	clr	a
      0005BF 12 5E 49         [24] 1364 	lcall	__gptrput
      0005C2                       1365 00102$:
      0005C2 EC               [12] 1366 	mov	a,r4
      0005C3 60 09            [24] 1367 	jz	00103$
      0005C5 A8 81            [24] 1368 	mov	r0,sp
      0005C7 18               [12] 1369 	dec	r0
      0005C8 18               [12] 1370 	dec	r0
      0005C9 B6 88 02         [24] 1371 	cjne	@r0,#0x88,00130$
      0005CC 80 04            [24] 1372 	sjmp	00107$
      0005CE                       1373 00130$:
      0005CE                       1374 00103$:
      0005CE 75 82 01         [24] 1375 	mov	dpl,#0x01
      0005D1 22               [24] 1376 	ret
      0005D2                       1377 00107$:
                                   1378 ;	blink.c:56: leds_off(LEDS_ALL);
      0005D2 75 82 03         [24] 1379 	mov	dpl,#0x03
      0005D5 C0 07            [24] 1380 	push	ar7
      0005D7 C0 06            [24] 1381 	push	ar6
      0005D9 C0 05            [24] 1382 	push	ar5
      0005DB 12 13 78         [24] 1383 	lcall	_leds_off
                                   1384 ;	blink.c:57: leds_on(blinks & LEDS_ALL);
      0005DE 90 00 1A         [24] 1385 	mov	dptr,#_blinks
      0005E1 E0               [24] 1386 	movx	a,@dptr
      0005E2 FC               [12] 1387 	mov	r4,a
      0005E3 53 04 03         [24] 1388 	anl	ar4,#0x03
      0005E6 8C 82            [24] 1389 	mov	dpl,r4
      0005E8 12 13 61         [24] 1390 	lcall	_leds_on
                                   1391 ;	blink.c:58: blinks++;
      0005EB 90 00 1A         [24] 1392 	mov	dptr,#_blinks
      0005EE E0               [24] 1393 	movx	a,@dptr
      0005EF 24 01            [12] 1394 	add	a,#0x01
      0005F1 F0               [24] 1395 	movx	@dptr,a
                                   1396 ;	blink.c:59: printf("Blink... (state %0.2X)\n", leds_get());
      0005F2 12 13 5E         [24] 1397 	lcall	_leds_get
      0005F5 AC 82            [24] 1398 	mov	r4,dpl
      0005F7 7B 00            [12] 1399 	mov	r3,#0x00
      0005F9 C0 04            [24] 1400 	push	ar4
      0005FB C0 03            [24] 1401 	push	ar3
      0005FD 74 11            [12] 1402 	mov	a,#___str_1
      0005FF C0 E0            [24] 1403 	push	acc
      000601 74 E0            [12] 1404 	mov	a,#(___str_1 >> 8)
      000603 C0 E0            [24] 1405 	push	acc
      000605 74 80            [12] 1406 	mov	a,#0x80
      000607 C0 E0            [24] 1407 	push	acc
      000609 12 80 59         [24] 1408 	lcall	_printf
      00060C E5 81            [12] 1409 	mov	a,sp
      00060E 24 FB            [12] 1410 	add	a,#0xfb
      000610 F5 81            [12] 1411 	mov	sp,a
      000612 D0 05            [24] 1412 	pop	ar5
      000614 D0 06            [24] 1413 	pop	ar6
      000616 D0 07            [24] 1414 	pop	ar7
      000618 02 05 90         [24] 1415 	ljmp	00110$
                                   1416 ;	blink.c:62: PROCESS_END();
      00061B                       1417 00112$:
      00061B 8D 82            [24] 1418 	mov	dpl,r5
      00061D 8E 83            [24] 1419 	mov	dph,r6
      00061F 8F F0            [24] 1420 	mov	b,r7
      000621 E4               [12] 1421 	clr	a
      000622 12 5E 49         [24] 1422 	lcall	__gptrput
      000625 A3               [24] 1423 	inc	dptr
      000626 12 5E 49         [24] 1424 	lcall	__gptrput
      000629 75 82 03         [24] 1425 	mov	dpl,#0x03
      00062C 22               [24] 1426 	ret
                                   1427 	.area CSEG    (CODE)
                                   1428 	.area CONST   (CODE)
      00DFF7                       1429 _autostart_processes:
      00DFF7 8E 0C 00              1430 	.byte _hello_world_process,(_hello_world_process >> 8),#0x00
      00DFFA 97 0C 00              1431 	.byte _blink_process,(_blink_process >> 8),#0x00
                                   1432 ; generic printIvalPtr
      00DFFD 00 00 00              1433 	.byte #0x00,#0x00,#0x00
      00E000                       1434 ___str_0:
      00E000 53 65 6E 73 6F 72 20  1435 	.ascii "Sensor says #%u"
             73 61 79 73 20 23 25
             75
      00E00F 0A                    1436 	.db 0x0A
      00E010 00                    1437 	.db 0x00
      00E011                       1438 ___str_1:
      00E011 42 6C 69 6E 6B 2E 2E  1439 	.ascii "Blink... (state %0.2X)"
             2E 20 28 73 74 61 74
             65 20 25 30 2E 32 58
             29
      00E027 0A                    1440 	.db 0x0A
      00E028 00                    1441 	.db 0x00
                                   1442 	.area XINIT   (CODE)
      00E18E                       1443 __xinit__hello_world_process:
                                   1444 ; generic printIvalPtr
      00E18E 00 00 00              1445 	.byte #0x00,#0x00,#0x00
      00E191 A8 04                 1446 	.byte _process_thread_hello_world_process,(_process_thread_hello_world_process >> 8)
      00E193 00 00                 1447 	.byte #0x00,#0x00	; 0
      00E195 00                    1448 	.db #0x00	; 0
      00E196 00                    1449 	.db #0x00	; 0
      00E197                       1450 __xinit__blink_process:
                                   1451 ; generic printIvalPtr
      00E197 00 00 00              1452 	.byte #0x00,#0x00,#0x00
      00E19A 67 05                 1453 	.byte _process_thread_blink_process,(_process_thread_blink_process >> 8)
      00E19C 00 00                 1454 	.byte #0x00,#0x00	; 0
      00E19E 00                    1455 	.db #0x00	; 0
      00E19F 00                    1456 	.db #0x00	; 0
                                   1457 	.area CABS    (ABS,CODE)
