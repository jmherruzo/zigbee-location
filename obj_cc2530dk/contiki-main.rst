                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.4.0 #8981 (Oct 24 2015) (Linux)
                                      4 ; This file was generated Sun Oct 25 01:51:58 2015
                                      5 ;--------------------------------------------------------
                                      6 	.module contiki_main
                                      7 	.optsdcc -mmcs51 --model-large
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _main
                                     13 	.globl _random_init
                                     14 	.globl _puthex
                                     15 	.globl _putstring
                                     16 	.globl _netstack_init
                                     17 	.globl _packetbuf_set_datalen
                                     18 	.globl _packetbuf_dataptr
                                     19 	.globl _packetbuf_clear
                                     20 	.globl _cc2530_rf_set_addr
                                     21 	.globl _dma_init
                                     22 	.globl _usb_serial_set_input
                                     23 	.globl _usb_serial_init
                                     24 	.globl _leds_off
                                     25 	.globl _leds_on
                                     26 	.globl _leds_init
                                     27 	.globl _serial_line_init
                                     28 	.globl _serial_line_input_byte
                                     29 	.globl _soc_init
                                     30 	.globl _energest_init
                                     31 	.globl _rtimer_init
                                     32 	.globl _ctimer_init
                                     33 	.globl _etimer_next_expiration_time
                                     34 	.globl _etimer_pending
                                     35 	.globl _etimer_request_poll
                                     36 	.globl _clock_time
                                     37 	.globl _clock_init
                                     38 	.globl _autostart_start
                                     39 	.globl _process_run
                                     40 	.globl _process_init
                                     41 	.globl _process_start
                                     42 	.globl _watchdog_periodic
                                     43 	.globl _watchdog_start
                                     44 	.globl _watchdog_init
                                     45 	.globl _ACTIVE
                                     46 	.globl _TX_BYTE
                                     47 	.globl _RX_BYTE
                                     48 	.globl _ERR
                                     49 	.globl _FE
                                     50 	.globl _SLAVE
                                     51 	.globl _RE
                                     52 	.globl _MODE
                                     53 	.globl _T3OVFIF
                                     54 	.globl _T3CH0IF
                                     55 	.globl _T3CH1IF
                                     56 	.globl _T4OVFIF
                                     57 	.globl _T4CH0IF
                                     58 	.globl _T4CH1IF
                                     59 	.globl _OVFIM
                                     60 	.globl _B_0
                                     61 	.globl _B_1
                                     62 	.globl _B_2
                                     63 	.globl _B_3
                                     64 	.globl _B_4
                                     65 	.globl _B_5
                                     66 	.globl _B_6
                                     67 	.globl _B_7
                                     68 	.globl _P2IF
                                     69 	.globl _UTX0IF
                                     70 	.globl _UTX1IF
                                     71 	.globl _P1IF
                                     72 	.globl _WDTIF
                                     73 	.globl _ACC_0
                                     74 	.globl _ACC_1
                                     75 	.globl _ACC_2
                                     76 	.globl _ACC_3
                                     77 	.globl _ACC_4
                                     78 	.globl _ACC_5
                                     79 	.globl _ACC_6
                                     80 	.globl _ACC_7
                                     81 	.globl _P
                                     82 	.globl _F1
                                     83 	.globl _OV
                                     84 	.globl _RS0
                                     85 	.globl _RS1
                                     86 	.globl _F0
                                     87 	.globl _AC
                                     88 	.globl _CY
                                     89 	.globl _DMAIF
                                     90 	.globl _T1IF
                                     91 	.globl _T2IF
                                     92 	.globl _T3IF
                                     93 	.globl _T4IF
                                     94 	.globl _P0IF
                                     95 	.globl _STIF
                                     96 	.globl _DMAIE
                                     97 	.globl _T1IE
                                     98 	.globl _T2IE
                                     99 	.globl _T3IE
                                    100 	.globl _T4IE
                                    101 	.globl _P0IE
                                    102 	.globl _RFERRIE
                                    103 	.globl _ADCIE
                                    104 	.globl _URX0IE
                                    105 	.globl _URX1IE
                                    106 	.globl _ENCIE
                                    107 	.globl _STIE
                                    108 	.globl _EA
                                    109 	.globl _P2_0
                                    110 	.globl _P2_1
                                    111 	.globl _P2_2
                                    112 	.globl _P2_3
                                    113 	.globl _P2_4
                                    114 	.globl _P2_5
                                    115 	.globl _P2_6
                                    116 	.globl _P2_7
                                    117 	.globl _ENCIF_0
                                    118 	.globl _ENCIF_1
                                    119 	.globl _P1_0
                                    120 	.globl _P1_1
                                    121 	.globl _P1_2
                                    122 	.globl _P1_3
                                    123 	.globl _P1_4
                                    124 	.globl _P1_5
                                    125 	.globl _P1_6
                                    126 	.globl _P1_7
                                    127 	.globl _IT0
                                    128 	.globl _RFERRIF
                                    129 	.globl _IT1
                                    130 	.globl _URX0IF
                                    131 	.globl _ADCIF
                                    132 	.globl _URX1IF
                                    133 	.globl _P0_0
                                    134 	.globl _P0_1
                                    135 	.globl _P0_2
                                    136 	.globl _P0_3
                                    137 	.globl _P0_4
                                    138 	.globl _P0_5
                                    139 	.globl _P0_6
                                    140 	.globl _P0_7
                                    141 	.globl _WDCTL
                                    142 	.globl _U1GCR
                                    143 	.globl _U1UCR
                                    144 	.globl _U1BAUD
                                    145 	.globl _U1DBUF
                                    146 	.globl _U1CSR
                                    147 	.globl _U0GCR
                                    148 	.globl _U0UCR
                                    149 	.globl _U0BAUD
                                    150 	.globl _U0DBUF
                                    151 	.globl _U0CSR
                                    152 	.globl _TIMIF
                                    153 	.globl _T4CC1
                                    154 	.globl _T4CCTL1
                                    155 	.globl _T4CC0
                                    156 	.globl _T4CCTL0
                                    157 	.globl _T4CTL
                                    158 	.globl _T4CNT
                                    159 	.globl _T3CC1
                                    160 	.globl _T3CCTL1
                                    161 	.globl _T3CC0
                                    162 	.globl _T3CCTL0
                                    163 	.globl _T3CTL
                                    164 	.globl _T3CNT
                                    165 	.globl _T2MSEL
                                    166 	.globl _T2IRQM
                                    167 	.globl _T2MOVF2
                                    168 	.globl _T2MOVF1
                                    169 	.globl _T2MOVF0
                                    170 	.globl _T2M1
                                    171 	.globl _T2M0
                                    172 	.globl _T2IRQF
                                    173 	.globl _T2EVTCFG
                                    174 	.globl _T2CTRL
                                    175 	.globl _T1STAT
                                    176 	.globl _T1CCTL2
                                    177 	.globl _T1CCTL1
                                    178 	.globl _T1CCTL0
                                    179 	.globl _T1CTL
                                    180 	.globl _T1CNTH
                                    181 	.globl _T1CNTL
                                    182 	.globl _T1CC2H
                                    183 	.globl _T1CC2L
                                    184 	.globl _T1CC1H
                                    185 	.globl _T1CC1L
                                    186 	.globl _T1CC0H
                                    187 	.globl _T1CC0L
                                    188 	.globl _CLKCONSTA
                                    189 	.globl _CLKCONCMD
                                    190 	.globl _SLEEPSTA
                                    191 	.globl _SLEEPCMD
                                    192 	.globl _STLOAD
                                    193 	.globl _ST2
                                    194 	.globl _ST1
                                    195 	.globl _ST0
                                    196 	.globl _RFERRF
                                    197 	.globl _RFIRQF0
                                    198 	.globl _RFST
                                    199 	.globl _RFD
                                    200 	.globl _RFIRQF1
                                    201 	.globl _PSBANK
                                    202 	.globl _FMAP
                                    203 	.globl _MEMCTR
                                    204 	.globl __XPAGE
                                    205 	.globl _MPAGE
                                    206 	.globl _PMUX
                                    207 	.globl _P2DIR
                                    208 	.globl _P1DIR
                                    209 	.globl _P0DIR
                                    210 	.globl _P2INP
                                    211 	.globl _P1INP
                                    212 	.globl _P2SEL
                                    213 	.globl _P1SEL
                                    214 	.globl _P0SEL
                                    215 	.globl _APCFG
                                    216 	.globl _PERCFG
                                    217 	.globl _P0INP
                                    218 	.globl _P2IEN
                                    219 	.globl _P1IEN
                                    220 	.globl _P0IEN
                                    221 	.globl _PICTL
                                    222 	.globl _P2IFG
                                    223 	.globl _P1IFG
                                    224 	.globl _P0IFG
                                    225 	.globl _DMAREQ
                                    226 	.globl _DMAARM
                                    227 	.globl _DMA0CFGH
                                    228 	.globl _DMA0CFGL
                                    229 	.globl _DMA1CFGH
                                    230 	.globl _DMA1CFGL
                                    231 	.globl _DMAIRQ
                                    232 	.globl _ENCCS
                                    233 	.globl _ENCDO
                                    234 	.globl _ENCDI
                                    235 	.globl _RNDH
                                    236 	.globl _RNDL
                                    237 	.globl _ADCH
                                    238 	.globl _ADCL
                                    239 	.globl _ADCCON3
                                    240 	.globl _ADCCON2
                                    241 	.globl _ADCCON1
                                    242 	.globl _B
                                    243 	.globl _IRCON2
                                    244 	.globl _ACC
                                    245 	.globl _PSW
                                    246 	.globl _IRCON
                                    247 	.globl _IP1
                                    248 	.globl _IEN1
                                    249 	.globl _IP0
                                    250 	.globl _IEN0
                                    251 	.globl _P2
                                    252 	.globl _S1CON
                                    253 	.globl _IEN2
                                    254 	.globl _S0CON
                                    255 	.globl _DPS
                                    256 	.globl _P1
                                    257 	.globl _TCON
                                    258 	.globl _PCON
                                    259 	.globl _DPH1
                                    260 	.globl _DPL1
                                    261 	.globl _DPH0
                                    262 	.globl _DPL0
                                    263 	.globl _SP
                                    264 	.globl _P0
                                    265 	.globl _X_IEEE_ADDR
                                    266 	.globl _X_INFOPAGE
                                    267 	.globl _X_P2DIR
                                    268 	.globl _X_P1DIR
                                    269 	.globl _X_P0DIR
                                    270 	.globl _X_U1GCR
                                    271 	.globl _X_U1UCR
                                    272 	.globl _X_U1BAUD
                                    273 	.globl _X_U1DBUF
                                    274 	.globl _X_U1CSR
                                    275 	.globl _X_P2INP
                                    276 	.globl _X_P1INP
                                    277 	.globl _X_P2SEL
                                    278 	.globl _X_P1SEL
                                    279 	.globl _X_P0SEL
                                    280 	.globl _X_APCFG
                                    281 	.globl _X_PERCFG
                                    282 	.globl _X_T4CC1
                                    283 	.globl _X_T4CCTL1
                                    284 	.globl _X_T4CC0
                                    285 	.globl _X_T4CCTL0
                                    286 	.globl _X_T4CTL
                                    287 	.globl _X_T4CNT
                                    288 	.globl _X_RFIRQF0
                                    289 	.globl _X_T1CCTL2
                                    290 	.globl _X_T1CCTL1
                                    291 	.globl _X_T1CCTL0
                                    292 	.globl _X_T1CTL
                                    293 	.globl _X_T1CNTH
                                    294 	.globl _X_T1CNTL
                                    295 	.globl _X_RFST
                                    296 	.globl _X_T1CC2H
                                    297 	.globl _X_T1CC2L
                                    298 	.globl _X_T1CC1H
                                    299 	.globl _X_T1CC1L
                                    300 	.globl _X_T1CC0H
                                    301 	.globl _X_T1CC0L
                                    302 	.globl _X_RFD
                                    303 	.globl _X_TIMIF
                                    304 	.globl _X_DMAREQ
                                    305 	.globl _X_DMAARM
                                    306 	.globl _X_DMA0CFGH
                                    307 	.globl _X_DMA0CFGL
                                    308 	.globl _X_DMA1CFGH
                                    309 	.globl _X_DMA1CFGL
                                    310 	.globl _X_DMAIRQ
                                    311 	.globl _X_T3CC1
                                    312 	.globl _X_T3CCTL1
                                    313 	.globl _X_T3CC0
                                    314 	.globl _X_T3CCTL0
                                    315 	.globl _X_T3CTL
                                    316 	.globl _X_T3CNT
                                    317 	.globl _X_WDCTL
                                    318 	.globl _X_MEMCTR
                                    319 	.globl _X_CLKCONCMD
                                    320 	.globl _X_U0GCR
                                    321 	.globl _X_U0UCR
                                    322 	.globl _X_T2MSEL
                                    323 	.globl _X_U0BAUD
                                    324 	.globl _X_U0DBUF
                                    325 	.globl _X_RFERRF
                                    326 	.globl _X_SLEEPCMD
                                    327 	.globl _X_RNDH
                                    328 	.globl _X_RNDL
                                    329 	.globl _X_ADCH
                                    330 	.globl _X_ADCL
                                    331 	.globl _X_ADCCON3
                                    332 	.globl _X_ADCCON2
                                    333 	.globl _X_ADCCON1
                                    334 	.globl _X_ENCCS
                                    335 	.globl _X_ENCDO
                                    336 	.globl _X_ENCDI
                                    337 	.globl _X_T1STAT
                                    338 	.globl _X_PMUX
                                    339 	.globl _X_STLOAD
                                    340 	.globl _X_P2IEN
                                    341 	.globl _X_P0IEN
                                    342 	.globl _X_T2IRQM
                                    343 	.globl _X_T2MOVF2
                                    344 	.globl _X_T2MOVF1
                                    345 	.globl _X_T2MOVF0
                                    346 	.globl _X_T2M1
                                    347 	.globl _X_T2M0
                                    348 	.globl _X_T2IRQF
                                    349 	.globl _X_P2
                                    350 	.globl _X_PSBANK
                                    351 	.globl _X_FMAP
                                    352 	.globl _X_CLKCONSTA
                                    353 	.globl _X_SLEEPSTA
                                    354 	.globl _X_T2EVTCFG
                                    355 	.globl _X_ST2
                                    356 	.globl _X_ST1
                                    357 	.globl _X_ST0
                                    358 	.globl _X_T2CTRL
                                    359 	.globl _X__XPAGE
                                    360 	.globl _X_MPAGE
                                    361 	.globl _X_RFIRQF1
                                    362 	.globl _X_P1
                                    363 	.globl _X_P0INP
                                    364 	.globl _X_P1IEN
                                    365 	.globl _X_PICTL
                                    366 	.globl _X_P2IFG
                                    367 	.globl _X_P1IFG
                                    368 	.globl _X_P0IFG
                                    369 	.globl _X_U0CSR
                                    370 	.globl _X_P0
                                    371 	.globl _USBF5
                                    372 	.globl _USBF4
                                    373 	.globl _USBF3
                                    374 	.globl _USBF2
                                    375 	.globl _USBF1
                                    376 	.globl _USBF0
                                    377 	.globl _USBCNTH
                                    378 	.globl _USBCNTL
                                    379 	.globl _USBCNT0
                                    380 	.globl _USBCSOH
                                    381 	.globl _USBCSOL
                                    382 	.globl _USBMAXO
                                    383 	.globl _USBCSIH
                                    384 	.globl _USBCSIL
                                    385 	.globl _USBCS0
                                    386 	.globl _USBMAXI
                                    387 	.globl _USBCTRL
                                    388 	.globl _USBINDEX
                                    389 	.globl _USBFRMH
                                    390 	.globl _USBFRML
                                    391 	.globl _USBCIE
                                    392 	.globl _USBOIE
                                    393 	.globl _USBIIE
                                    394 	.globl _USBCIF
                                    395 	.globl _USBOIF
                                    396 	.globl _USBIIF
                                    397 	.globl _USBPOW
                                    398 	.globl _USBADDR
                                    399 	.globl _CSPT
                                    400 	.globl _CSPZ
                                    401 	.globl _CSPY
                                    402 	.globl _CSPX
                                    403 	.globl _CSPSTAT
                                    404 	.globl _CSPCTRL
                                    405 	.globl _CSPPROG23
                                    406 	.globl _CSPPROG22
                                    407 	.globl _CSPPROG21
                                    408 	.globl _CSPPROG20
                                    409 	.globl _CSPPROG19
                                    410 	.globl _CSPPROG18
                                    411 	.globl _CSPPROG17
                                    412 	.globl _CSPPROG16
                                    413 	.globl _CSPPROG15
                                    414 	.globl _CSPPROG14
                                    415 	.globl _CSPPROG13
                                    416 	.globl _CSPPROG12
                                    417 	.globl _CSPPROG11
                                    418 	.globl _CSPPROG10
                                    419 	.globl _CSPPROG9
                                    420 	.globl _CSPPROG8
                                    421 	.globl _CSPPROG7
                                    422 	.globl _CSPPROG6
                                    423 	.globl _CSPPROG5
                                    424 	.globl _CSPPROG4
                                    425 	.globl _CSPPROG3
                                    426 	.globl _CSPPROG2
                                    427 	.globl _CSPPROG1
                                    428 	.globl _CSPPROG0
                                    429 	.globl _RFC_OBS_CTRL2
                                    430 	.globl _RFC_OBS_CTRL1
                                    431 	.globl _RFC_OBS_CTRL0
                                    432 	.globl _TXFILTCFG
                                    433 	.globl _PTEST1
                                    434 	.globl _PTEST0
                                    435 	.globl _ATEST
                                    436 	.globl _DACTEST2
                                    437 	.globl _DACTEST1
                                    438 	.globl _DACTEST0
                                    439 	.globl _MDMTEST1
                                    440 	.globl _MDMTEST0
                                    441 	.globl _ADCTEST2
                                    442 	.globl _ADCTEST1
                                    443 	.globl _ADCTEST0
                                    444 	.globl _AGCCTRL3
                                    445 	.globl _AGCCTRL2
                                    446 	.globl _AGCCTRL1
                                    447 	.globl _AGCCTRL0
                                    448 	.globl _FSCAL3
                                    449 	.globl _FSCAL2
                                    450 	.globl _FSCAL1
                                    451 	.globl _FSCAL0
                                    452 	.globl _FSCTRL
                                    453 	.globl _RXCTRL
                                    454 	.globl _FREQEST
                                    455 	.globl _MDMCTRL1
                                    456 	.globl _MDMCTRL0
                                    457 	.globl _RFRND
                                    458 	.globl _RFERRM
                                    459 	.globl _RFIRQM1
                                    460 	.globl _RFIRQM0
                                    461 	.globl _TXLAST_PTR
                                    462 	.globl _TXFIRST_PTR
                                    463 	.globl _RXP1_PTR
                                    464 	.globl _RXLAST_PTR
                                    465 	.globl _RXFIRST_PTR
                                    466 	.globl _TXFIFOCNT
                                    467 	.globl _RXFIFOCNT
                                    468 	.globl _RXFIRST
                                    469 	.globl _RSSISTAT
                                    470 	.globl _RSSI
                                    471 	.globl _CCACTRL1
                                    472 	.globl _CCACTRL0
                                    473 	.globl _FSMCTRL
                                    474 	.globl _FIFOPCTRL
                                    475 	.globl _FSMSTAT1
                                    476 	.globl _FSMSTAT0
                                    477 	.globl _TXCTRL
                                    478 	.globl _TXPOWER
                                    479 	.globl _FREQCTRL
                                    480 	.globl _FREQTUNE
                                    481 	.globl _RXMASKCLR
                                    482 	.globl _RXMASKSET
                                    483 	.globl _RXENABLE
                                    484 	.globl _FRMCTRL1
                                    485 	.globl _FRMCTRL0
                                    486 	.globl _SRCEXTEN2
                                    487 	.globl _SRCEXTEN1
                                    488 	.globl _SRCEXTEN0
                                    489 	.globl _SRCSHORTEN2
                                    490 	.globl _SRCSHORTEN1
                                    491 	.globl _SRCSHORTEN0
                                    492 	.globl _SRCMATCH
                                    493 	.globl _FRMFILT1
                                    494 	.globl _FRMFILT0
                                    495 	.globl _SHORT_ADDR1
                                    496 	.globl _SHORT_ADDR0
                                    497 	.globl _PAN_ID1
                                    498 	.globl _PAN_ID0
                                    499 	.globl _EXT_ADDR7
                                    500 	.globl _EXT_ADDR6
                                    501 	.globl _EXT_ADDR5
                                    502 	.globl _EXT_ADDR4
                                    503 	.globl _EXT_ADDR3
                                    504 	.globl _EXT_ADDR2
                                    505 	.globl _EXT_ADDR1
                                    506 	.globl _EXT_ADDR0
                                    507 	.globl _SRCSHORTPENDEN2
                                    508 	.globl _SRCSHORTPENDEN1
                                    509 	.globl _SRCSHORTPENDEN0
                                    510 	.globl _SRCEXTPENDEN2
                                    511 	.globl _SRCEXTPENDEN1
                                    512 	.globl _SRCEXTPENDEN0
                                    513 	.globl _SRCRESINDEX
                                    514 	.globl _SRCRESMASK2
                                    515 	.globl _SRCRESMASK1
                                    516 	.globl _SRCRESMASK0
                                    517 	.globl _SRC_ADDR_TABLE
                                    518 	.globl _TXFIFO
                                    519 	.globl _RXFIFO
                                    520 	.globl _RFCORE_RAM
                                    521 	.globl _CMPCTL
                                    522 	.globl _OPAMPS
                                    523 	.globl _OPAMPC
                                    524 	.globl _STCV2
                                    525 	.globl _STCV1
                                    526 	.globl _STCV0
                                    527 	.globl _STCS
                                    528 	.globl _STCC
                                    529 	.globl _T1CC4H
                                    530 	.globl _T1CC4L
                                    531 	.globl _T1CC3H
                                    532 	.globl _T1CC3L
                                    533 	.globl _XX_T1CC2H
                                    534 	.globl _XX_T1CC2L
                                    535 	.globl _XX_T1CC1H
                                    536 	.globl _XX_T1CC1L
                                    537 	.globl _XX_T1CC0H
                                    538 	.globl _XX_T1CC0L
                                    539 	.globl _T1CCTL4
                                    540 	.globl _T1CCTL3
                                    541 	.globl _XX_T1CCTL2
                                    542 	.globl _XX_T1CCTL1
                                    543 	.globl _XX_T1CCTL0
                                    544 	.globl _CLD
                                    545 	.globl _IRCTL
                                    546 	.globl _CHIPINFO1
                                    547 	.globl _CHIPINFO0
                                    548 	.globl _FWDATA
                                    549 	.globl _FADDRH
                                    550 	.globl _FADDRL
                                    551 	.globl _FCTL
                                    552 	.globl _IVCTRL
                                    553 	.globl _BATTMON
                                    554 	.globl _SRCRC
                                    555 	.globl _DBGDATA
                                    556 	.globl _TESTREG0
                                    557 	.globl _CHIPID
                                    558 	.globl _CHVER
                                    559 	.globl _OBSSEL5
                                    560 	.globl _OBSSEL4
                                    561 	.globl _OBSSEL3
                                    562 	.globl _OBSSEL2
                                    563 	.globl _OBSSEL1
                                    564 	.globl _OBSSEL0
                                    565 	.globl _I2CIO
                                    566 	.globl _I2CWC
                                    567 	.globl _I2CADDR
                                    568 	.globl _I2CDATA
                                    569 	.globl _I2CSTAT
                                    570 	.globl _I2CCFG
                                    571 	.globl _OPAMPMC
                                    572 	.globl _MONMUX
                                    573 ;--------------------------------------------------------
                                    574 ; special function registers
                                    575 ;--------------------------------------------------------
                                    576 	.area RSEG    (ABS,DATA)
      000000                        577 	.org 0x0000
                           000080   578 _P0	=	0x0080
                           000081   579 _SP	=	0x0081
                           000082   580 _DPL0	=	0x0082
                           000083   581 _DPH0	=	0x0083
                           000084   582 _DPL1	=	0x0084
                           000085   583 _DPH1	=	0x0085
                           000087   584 _PCON	=	0x0087
                           000088   585 _TCON	=	0x0088
                           000090   586 _P1	=	0x0090
                           000092   587 _DPS	=	0x0092
                           000098   588 _S0CON	=	0x0098
                           00009A   589 _IEN2	=	0x009a
                           00009B   590 _S1CON	=	0x009b
                           0000A0   591 _P2	=	0x00a0
                           0000A8   592 _IEN0	=	0x00a8
                           0000A9   593 _IP0	=	0x00a9
                           0000B8   594 _IEN1	=	0x00b8
                           0000B9   595 _IP1	=	0x00b9
                           0000C0   596 _IRCON	=	0x00c0
                           0000D0   597 _PSW	=	0x00d0
                           0000E0   598 _ACC	=	0x00e0
                           0000E8   599 _IRCON2	=	0x00e8
                           0000F0   600 _B	=	0x00f0
                           0000B4   601 _ADCCON1	=	0x00b4
                           0000B5   602 _ADCCON2	=	0x00b5
                           0000B6   603 _ADCCON3	=	0x00b6
                           0000BA   604 _ADCL	=	0x00ba
                           0000BB   605 _ADCH	=	0x00bb
                           0000BC   606 _RNDL	=	0x00bc
                           0000BD   607 _RNDH	=	0x00bd
                           0000B1   608 _ENCDI	=	0x00b1
                           0000B2   609 _ENCDO	=	0x00b2
                           0000B3   610 _ENCCS	=	0x00b3
                           0000D1   611 _DMAIRQ	=	0x00d1
                           0000D2   612 _DMA1CFGL	=	0x00d2
                           0000D3   613 _DMA1CFGH	=	0x00d3
                           0000D4   614 _DMA0CFGL	=	0x00d4
                           0000D5   615 _DMA0CFGH	=	0x00d5
                           0000D6   616 _DMAARM	=	0x00d6
                           0000D7   617 _DMAREQ	=	0x00d7
                           000089   618 _P0IFG	=	0x0089
                           00008A   619 _P1IFG	=	0x008a
                           00008B   620 _P2IFG	=	0x008b
                           00008C   621 _PICTL	=	0x008c
                           0000AB   622 _P0IEN	=	0x00ab
                           00008D   623 _P1IEN	=	0x008d
                           0000AC   624 _P2IEN	=	0x00ac
                           00008F   625 _P0INP	=	0x008f
                           0000F1   626 _PERCFG	=	0x00f1
                           0000F2   627 _APCFG	=	0x00f2
                           0000F3   628 _P0SEL	=	0x00f3
                           0000F4   629 _P1SEL	=	0x00f4
                           0000F5   630 _P2SEL	=	0x00f5
                           0000F6   631 _P1INP	=	0x00f6
                           0000F7   632 _P2INP	=	0x00f7
                           0000FD   633 _P0DIR	=	0x00fd
                           0000FE   634 _P1DIR	=	0x00fe
                           0000FF   635 _P2DIR	=	0x00ff
                           0000AE   636 _PMUX	=	0x00ae
                           000093   637 _MPAGE	=	0x0093
                           000093   638 __XPAGE	=	0x0093
                           0000C7   639 _MEMCTR	=	0x00c7
                           00009F   640 _FMAP	=	0x009f
                           00009F   641 _PSBANK	=	0x009f
                           000091   642 _RFIRQF1	=	0x0091
                           0000D9   643 _RFD	=	0x00d9
                           0000E1   644 _RFST	=	0x00e1
                           0000E9   645 _RFIRQF0	=	0x00e9
                           0000BF   646 _RFERRF	=	0x00bf
                           000095   647 _ST0	=	0x0095
                           000096   648 _ST1	=	0x0096
                           000097   649 _ST2	=	0x0097
                           0000AD   650 _STLOAD	=	0x00ad
                           0000BE   651 _SLEEPCMD	=	0x00be
                           00009D   652 _SLEEPSTA	=	0x009d
                           0000C6   653 _CLKCONCMD	=	0x00c6
                           00009E   654 _CLKCONSTA	=	0x009e
                           0000DA   655 _T1CC0L	=	0x00da
                           0000DB   656 _T1CC0H	=	0x00db
                           0000DC   657 _T1CC1L	=	0x00dc
                           0000DD   658 _T1CC1H	=	0x00dd
                           0000DE   659 _T1CC2L	=	0x00de
                           0000DF   660 _T1CC2H	=	0x00df
                           0000E2   661 _T1CNTL	=	0x00e2
                           0000E3   662 _T1CNTH	=	0x00e3
                           0000E4   663 _T1CTL	=	0x00e4
                           0000E5   664 _T1CCTL0	=	0x00e5
                           0000E6   665 _T1CCTL1	=	0x00e6
                           0000E7   666 _T1CCTL2	=	0x00e7
                           0000AF   667 _T1STAT	=	0x00af
                           000094   668 _T2CTRL	=	0x0094
                           00009C   669 _T2EVTCFG	=	0x009c
                           0000A1   670 _T2IRQF	=	0x00a1
                           0000A2   671 _T2M0	=	0x00a2
                           0000A3   672 _T2M1	=	0x00a3
                           0000A4   673 _T2MOVF0	=	0x00a4
                           0000A5   674 _T2MOVF1	=	0x00a5
                           0000A6   675 _T2MOVF2	=	0x00a6
                           0000A7   676 _T2IRQM	=	0x00a7
                           0000C3   677 _T2MSEL	=	0x00c3
                           0000CA   678 _T3CNT	=	0x00ca
                           0000CB   679 _T3CTL	=	0x00cb
                           0000CC   680 _T3CCTL0	=	0x00cc
                           0000CD   681 _T3CC0	=	0x00cd
                           0000CE   682 _T3CCTL1	=	0x00ce
                           0000CF   683 _T3CC1	=	0x00cf
                           0000EA   684 _T4CNT	=	0x00ea
                           0000EB   685 _T4CTL	=	0x00eb
                           0000EC   686 _T4CCTL0	=	0x00ec
                           0000ED   687 _T4CC0	=	0x00ed
                           0000EE   688 _T4CCTL1	=	0x00ee
                           0000EF   689 _T4CC1	=	0x00ef
                           0000D8   690 _TIMIF	=	0x00d8
                           000086   691 _U0CSR	=	0x0086
                           0000C1   692 _U0DBUF	=	0x00c1
                           0000C2   693 _U0BAUD	=	0x00c2
                           0000C4   694 _U0UCR	=	0x00c4
                           0000C5   695 _U0GCR	=	0x00c5
                           0000F8   696 _U1CSR	=	0x00f8
                           0000F9   697 _U1DBUF	=	0x00f9
                           0000FA   698 _U1BAUD	=	0x00fa
                           0000FB   699 _U1UCR	=	0x00fb
                           0000FC   700 _U1GCR	=	0x00fc
                           0000C9   701 _WDCTL	=	0x00c9
                                    702 ;--------------------------------------------------------
                                    703 ; special function bits
                                    704 ;--------------------------------------------------------
                                    705 	.area RSEG    (ABS,DATA)
      000000                        706 	.org 0x0000
                           000087   707 _P0_7	=	0x0087
                           000086   708 _P0_6	=	0x0086
                           000085   709 _P0_5	=	0x0085
                           000084   710 _P0_4	=	0x0084
                           000083   711 _P0_3	=	0x0083
                           000082   712 _P0_2	=	0x0082
                           000081   713 _P0_1	=	0x0081
                           000080   714 _P0_0	=	0x0080
                           00008F   715 _URX1IF	=	0x008f
                           00008D   716 _ADCIF	=	0x008d
                           00008B   717 _URX0IF	=	0x008b
                           00008A   718 _IT1	=	0x008a
                           000089   719 _RFERRIF	=	0x0089
                           000088   720 _IT0	=	0x0088
                           000097   721 _P1_7	=	0x0097
                           000096   722 _P1_6	=	0x0096
                           000095   723 _P1_5	=	0x0095
                           000094   724 _P1_4	=	0x0094
                           000093   725 _P1_3	=	0x0093
                           000092   726 _P1_2	=	0x0092
                           000091   727 _P1_1	=	0x0091
                           000090   728 _P1_0	=	0x0090
                           000099   729 _ENCIF_1	=	0x0099
                           000098   730 _ENCIF_0	=	0x0098
                           0000A7   731 _P2_7	=	0x00a7
                           0000A6   732 _P2_6	=	0x00a6
                           0000A5   733 _P2_5	=	0x00a5
                           0000A4   734 _P2_4	=	0x00a4
                           0000A3   735 _P2_3	=	0x00a3
                           0000A2   736 _P2_2	=	0x00a2
                           0000A1   737 _P2_1	=	0x00a1
                           0000A0   738 _P2_0	=	0x00a0
                           0000AF   739 _EA	=	0x00af
                           0000AD   740 _STIE	=	0x00ad
                           0000AC   741 _ENCIE	=	0x00ac
                           0000AB   742 _URX1IE	=	0x00ab
                           0000AA   743 _URX0IE	=	0x00aa
                           0000A9   744 _ADCIE	=	0x00a9
                           0000A8   745 _RFERRIE	=	0x00a8
                           0000BD   746 _P0IE	=	0x00bd
                           0000BC   747 _T4IE	=	0x00bc
                           0000BB   748 _T3IE	=	0x00bb
                           0000BA   749 _T2IE	=	0x00ba
                           0000B9   750 _T1IE	=	0x00b9
                           0000B8   751 _DMAIE	=	0x00b8
                           0000C7   752 _STIF	=	0x00c7
                           0000C5   753 _P0IF	=	0x00c5
                           0000C4   754 _T4IF	=	0x00c4
                           0000C3   755 _T3IF	=	0x00c3
                           0000C2   756 _T2IF	=	0x00c2
                           0000C1   757 _T1IF	=	0x00c1
                           0000C0   758 _DMAIF	=	0x00c0
                           0000D7   759 _CY	=	0x00d7
                           0000D6   760 _AC	=	0x00d6
                           0000D5   761 _F0	=	0x00d5
                           0000D4   762 _RS1	=	0x00d4
                           0000D3   763 _RS0	=	0x00d3
                           0000D2   764 _OV	=	0x00d2
                           0000D1   765 _F1	=	0x00d1
                           0000D0   766 _P	=	0x00d0
                           0000E7   767 _ACC_7	=	0x00e7
                           0000E6   768 _ACC_6	=	0x00e6
                           0000E5   769 _ACC_5	=	0x00e5
                           0000E4   770 _ACC_4	=	0x00e4
                           0000E3   771 _ACC_3	=	0x00e3
                           0000E2   772 _ACC_2	=	0x00e2
                           0000E1   773 _ACC_1	=	0x00e1
                           0000E0   774 _ACC_0	=	0x00e0
                           0000EC   775 _WDTIF	=	0x00ec
                           0000EB   776 _P1IF	=	0x00eb
                           0000EA   777 _UTX1IF	=	0x00ea
                           0000E9   778 _UTX0IF	=	0x00e9
                           0000E8   779 _P2IF	=	0x00e8
                           0000F7   780 _B_7	=	0x00f7
                           0000F6   781 _B_6	=	0x00f6
                           0000F5   782 _B_5	=	0x00f5
                           0000F4   783 _B_4	=	0x00f4
                           0000F3   784 _B_3	=	0x00f3
                           0000F2   785 _B_2	=	0x00f2
                           0000F1   786 _B_1	=	0x00f1
                           0000F0   787 _B_0	=	0x00f0
                           0000DE   788 _OVFIM	=	0x00de
                           0000DD   789 _T4CH1IF	=	0x00dd
                           0000DC   790 _T4CH0IF	=	0x00dc
                           0000DB   791 _T4OVFIF	=	0x00db
                           0000DA   792 _T3CH1IF	=	0x00da
                           0000D9   793 _T3CH0IF	=	0x00d9
                           0000D8   794 _T3OVFIF	=	0x00d8
                           0000FF   795 _MODE	=	0x00ff
                           0000FE   796 _RE	=	0x00fe
                           0000FD   797 _SLAVE	=	0x00fd
                           0000FC   798 _FE	=	0x00fc
                           0000FB   799 _ERR	=	0x00fb
                           0000FA   800 _RX_BYTE	=	0x00fa
                           0000F9   801 _TX_BYTE	=	0x00f9
                           0000F8   802 _ACTIVE	=	0x00f8
                                    803 ;--------------------------------------------------------
                                    804 ; overlayable register banks
                                    805 ;--------------------------------------------------------
                                    806 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        807 	.ds 8
                                    808 ;--------------------------------------------------------
                                    809 ; internal ram data
                                    810 ;--------------------------------------------------------
                                    811 	.area DSEG    (DATA)
      000008                        812 _len:
      000008                        813 	.ds 2
                                    814 ;--------------------------------------------------------
                                    815 ; overlayable items in internal ram 
                                    816 ;--------------------------------------------------------
                                    817 ;--------------------------------------------------------
                                    818 ; Stack segment in internal ram 
                                    819 ;--------------------------------------------------------
                                    820 	.area	SSEG
      000021                        821 __start__stack:
      000021                        822 	.ds	1
                                    823 
                                    824 ;--------------------------------------------------------
                                    825 ; indirectly addressable internal ram data
                                    826 ;--------------------------------------------------------
                                    827 	.area ISEG    (DATA)
                                    828 ;--------------------------------------------------------
                                    829 ; absolute internal ram data
                                    830 ;--------------------------------------------------------
                                    831 	.area IABS    (ABS,DATA)
                                    832 	.area IABS    (ABS,DATA)
                                    833 ;--------------------------------------------------------
                                    834 ; bit data
                                    835 ;--------------------------------------------------------
                                    836 	.area BSEG    (BIT)
                                    837 ;--------------------------------------------------------
                                    838 ; paged external ram data
                                    839 ;--------------------------------------------------------
                                    840 	.area PSEG    (PAG,XDATA)
                                    841 ;--------------------------------------------------------
                                    842 ; external ram data
                                    843 ;--------------------------------------------------------
                                    844 	.area XSEG    (XDATA)
                           0061A6   845 _MONMUX	=	0x61a6
                           0061A6   846 _OPAMPMC	=	0x61a6
                           006230   847 _I2CCFG	=	0x6230
                           006231   848 _I2CSTAT	=	0x6231
                           006232   849 _I2CDATA	=	0x6232
                           006233   850 _I2CADDR	=	0x6233
                           006234   851 _I2CWC	=	0x6234
                           006235   852 _I2CIO	=	0x6235
                           006243   853 _OBSSEL0	=	0x6243
                           006244   854 _OBSSEL1	=	0x6244
                           006245   855 _OBSSEL2	=	0x6245
                           006246   856 _OBSSEL3	=	0x6246
                           006247   857 _OBSSEL4	=	0x6247
                           006248   858 _OBSSEL5	=	0x6248
                           006249   859 _CHVER	=	0x6249
                           00624A   860 _CHIPID	=	0x624a
                           00624B   861 _TESTREG0	=	0x624b
                           006260   862 _DBGDATA	=	0x6260
                           006262   863 _SRCRC	=	0x6262
                           006264   864 _BATTMON	=	0x6264
                           006265   865 _IVCTRL	=	0x6265
                           006270   866 _FCTL	=	0x6270
                           006271   867 _FADDRL	=	0x6271
                           006272   868 _FADDRH	=	0x6272
                           006273   869 _FWDATA	=	0x6273
                           006276   870 _CHIPINFO0	=	0x6276
                           006277   871 _CHIPINFO1	=	0x6277
                           006281   872 _IRCTL	=	0x6281
                           006290   873 _CLD	=	0x6290
                           0062A0   874 _XX_T1CCTL0	=	0x62a0
                           0062A1   875 _XX_T1CCTL1	=	0x62a1
                           0062A2   876 _XX_T1CCTL2	=	0x62a2
                           0062A3   877 _T1CCTL3	=	0x62a3
                           0062A4   878 _T1CCTL4	=	0x62a4
                           0062A6   879 _XX_T1CC0L	=	0x62a6
                           0062A7   880 _XX_T1CC0H	=	0x62a7
                           0062A8   881 _XX_T1CC1L	=	0x62a8
                           0062A9   882 _XX_T1CC1H	=	0x62a9
                           0062AA   883 _XX_T1CC2L	=	0x62aa
                           0062AB   884 _XX_T1CC2H	=	0x62ab
                           0062AC   885 _T1CC3L	=	0x62ac
                           0062AD   886 _T1CC3H	=	0x62ad
                           0062AE   887 _T1CC4L	=	0x62ae
                           0062AF   888 _T1CC4H	=	0x62af
                           0062B0   889 _STCC	=	0x62b0
                           0062B1   890 _STCS	=	0x62b1
                           0062B2   891 _STCV0	=	0x62b2
                           0062B3   892 _STCV1	=	0x62b3
                           0062B4   893 _STCV2	=	0x62b4
                           0062C0   894 _OPAMPC	=	0x62c0
                           0062C1   895 _OPAMPS	=	0x62c1
                           0062D0   896 _CMPCTL	=	0x62d0
                           006000   897 _RFCORE_RAM	=	0x6000
                           006000   898 _RXFIFO	=	0x6000
                           006080   899 _TXFIFO	=	0x6080
                           006100   900 _SRC_ADDR_TABLE	=	0x6100
                           006160   901 _SRCRESMASK0	=	0x6160
                           006161   902 _SRCRESMASK1	=	0x6161
                           006162   903 _SRCRESMASK2	=	0x6162
                           006163   904 _SRCRESINDEX	=	0x6163
                           006164   905 _SRCEXTPENDEN0	=	0x6164
                           006165   906 _SRCEXTPENDEN1	=	0x6165
                           006166   907 _SRCEXTPENDEN2	=	0x6166
                           006167   908 _SRCSHORTPENDEN0	=	0x6167
                           006168   909 _SRCSHORTPENDEN1	=	0x6168
                           006169   910 _SRCSHORTPENDEN2	=	0x6169
                           00616A   911 _EXT_ADDR0	=	0x616a
                           00616B   912 _EXT_ADDR1	=	0x616b
                           00616C   913 _EXT_ADDR2	=	0x616c
                           00616D   914 _EXT_ADDR3	=	0x616d
                           00616E   915 _EXT_ADDR4	=	0x616e
                           00616F   916 _EXT_ADDR5	=	0x616f
                           006170   917 _EXT_ADDR6	=	0x6170
                           006171   918 _EXT_ADDR7	=	0x6171
                           006172   919 _PAN_ID0	=	0x6172
                           006173   920 _PAN_ID1	=	0x6173
                           006174   921 _SHORT_ADDR0	=	0x6174
                           006175   922 _SHORT_ADDR1	=	0x6175
                           006180   923 _FRMFILT0	=	0x6180
                           006181   924 _FRMFILT1	=	0x6181
                           006182   925 _SRCMATCH	=	0x6182
                           006183   926 _SRCSHORTEN0	=	0x6183
                           006184   927 _SRCSHORTEN1	=	0x6184
                           006185   928 _SRCSHORTEN2	=	0x6185
                           006186   929 _SRCEXTEN0	=	0x6186
                           006187   930 _SRCEXTEN1	=	0x6187
                           006188   931 _SRCEXTEN2	=	0x6188
                           006189   932 _FRMCTRL0	=	0x6189
                           00618A   933 _FRMCTRL1	=	0x618a
                           00618B   934 _RXENABLE	=	0x618b
                           00618C   935 _RXMASKSET	=	0x618c
                           00618D   936 _RXMASKCLR	=	0x618d
                           00618E   937 _FREQTUNE	=	0x618e
                           00618F   938 _FREQCTRL	=	0x618f
                           006190   939 _TXPOWER	=	0x6190
                           006191   940 _TXCTRL	=	0x6191
                           006192   941 _FSMSTAT0	=	0x6192
                           006193   942 _FSMSTAT1	=	0x6193
                           006194   943 _FIFOPCTRL	=	0x6194
                           006195   944 _FSMCTRL	=	0x6195
                           006196   945 _CCACTRL0	=	0x6196
                           006197   946 _CCACTRL1	=	0x6197
                           006198   947 _RSSI	=	0x6198
                           006199   948 _RSSISTAT	=	0x6199
                           00619A   949 _RXFIRST	=	0x619a
                           00619B   950 _RXFIFOCNT	=	0x619b
                           00619C   951 _TXFIFOCNT	=	0x619c
                           00619D   952 _RXFIRST_PTR	=	0x619d
                           00619E   953 _RXLAST_PTR	=	0x619e
                           00619F   954 _RXP1_PTR	=	0x619f
                           0061A1   955 _TXFIRST_PTR	=	0x61a1
                           0061A2   956 _TXLAST_PTR	=	0x61a2
                           0061A3   957 _RFIRQM0	=	0x61a3
                           0061A4   958 _RFIRQM1	=	0x61a4
                           0061A5   959 _RFERRM	=	0x61a5
                           0061A7   960 _RFRND	=	0x61a7
                           0061A8   961 _MDMCTRL0	=	0x61a8
                           0061A9   962 _MDMCTRL1	=	0x61a9
                           0061AA   963 _FREQEST	=	0x61aa
                           0061AB   964 _RXCTRL	=	0x61ab
                           0061AC   965 _FSCTRL	=	0x61ac
                           0061AD   966 _FSCAL0	=	0x61ad
                           0061AE   967 _FSCAL1	=	0x61ae
                           0061AF   968 _FSCAL2	=	0x61af
                           0061B0   969 _FSCAL3	=	0x61b0
                           0061B1   970 _AGCCTRL0	=	0x61b1
                           0061B2   971 _AGCCTRL1	=	0x61b2
                           0061B3   972 _AGCCTRL2	=	0x61b3
                           0061B4   973 _AGCCTRL3	=	0x61b4
                           0061B5   974 _ADCTEST0	=	0x61b5
                           0061B6   975 _ADCTEST1	=	0x61b6
                           0061B7   976 _ADCTEST2	=	0x61b7
                           0061B8   977 _MDMTEST0	=	0x61b8
                           0061B9   978 _MDMTEST1	=	0x61b9
                           0061BA   979 _DACTEST0	=	0x61ba
                           0061BB   980 _DACTEST1	=	0x61bb
                           0061BC   981 _DACTEST2	=	0x61bc
                           0061BD   982 _ATEST	=	0x61bd
                           0061BE   983 _PTEST0	=	0x61be
                           0061BF   984 _PTEST1	=	0x61bf
                           0061FA   985 _TXFILTCFG	=	0x61fa
                           0061EB   986 _RFC_OBS_CTRL0	=	0x61eb
                           0061EC   987 _RFC_OBS_CTRL1	=	0x61ec
                           0061ED   988 _RFC_OBS_CTRL2	=	0x61ed
                           0061C0   989 _CSPPROG0	=	0x61c0
                           0061C1   990 _CSPPROG1	=	0x61c1
                           0061C2   991 _CSPPROG2	=	0x61c2
                           0061C3   992 _CSPPROG3	=	0x61c3
                           0061C4   993 _CSPPROG4	=	0x61c4
                           0061C5   994 _CSPPROG5	=	0x61c5
                           0061C6   995 _CSPPROG6	=	0x61c6
                           0061C7   996 _CSPPROG7	=	0x61c7
                           0061C8   997 _CSPPROG8	=	0x61c8
                           0061C9   998 _CSPPROG9	=	0x61c9
                           0061CA   999 _CSPPROG10	=	0x61ca
                           0061CB  1000 _CSPPROG11	=	0x61cb
                           0061CC  1001 _CSPPROG12	=	0x61cc
                           0061CD  1002 _CSPPROG13	=	0x61cd
                           0061CE  1003 _CSPPROG14	=	0x61ce
                           0061CF  1004 _CSPPROG15	=	0x61cf
                           0061D0  1005 _CSPPROG16	=	0x61d0
                           0061D1  1006 _CSPPROG17	=	0x61d1
                           0061D2  1007 _CSPPROG18	=	0x61d2
                           0061D3  1008 _CSPPROG19	=	0x61d3
                           0061D4  1009 _CSPPROG20	=	0x61d4
                           0061D5  1010 _CSPPROG21	=	0x61d5
                           0061D6  1011 _CSPPROG22	=	0x61d6
                           0061D7  1012 _CSPPROG23	=	0x61d7
                           0061E0  1013 _CSPCTRL	=	0x61e0
                           0061E1  1014 _CSPSTAT	=	0x61e1
                           0061E2  1015 _CSPX	=	0x61e2
                           0061E3  1016 _CSPY	=	0x61e3
                           0061E4  1017 _CSPZ	=	0x61e4
                           0061E5  1018 _CSPT	=	0x61e5
                           006200  1019 _USBADDR	=	0x6200
                           006201  1020 _USBPOW	=	0x6201
                           006202  1021 _USBIIF	=	0x6202
                           006204  1022 _USBOIF	=	0x6204
                           006206  1023 _USBCIF	=	0x6206
                           006207  1024 _USBIIE	=	0x6207
                           006209  1025 _USBOIE	=	0x6209
                           00620B  1026 _USBCIE	=	0x620b
                           00620C  1027 _USBFRML	=	0x620c
                           00620D  1028 _USBFRMH	=	0x620d
                           00620E  1029 _USBINDEX	=	0x620e
                           00620F  1030 _USBCTRL	=	0x620f
                           006210  1031 _USBMAXI	=	0x6210
                           006211  1032 _USBCS0	=	0x6211
                           006211  1033 _USBCSIL	=	0x6211
                           006212  1034 _USBCSIH	=	0x6212
                           006213  1035 _USBMAXO	=	0x6213
                           006214  1036 _USBCSOL	=	0x6214
                           006215  1037 _USBCSOH	=	0x6215
                           006216  1038 _USBCNT0	=	0x6216
                           006216  1039 _USBCNTL	=	0x6216
                           006217  1040 _USBCNTH	=	0x6217
                           006220  1041 _USBF0	=	0x6220
                           006222  1042 _USBF1	=	0x6222
                           006224  1043 _USBF2	=	0x6224
                           006226  1044 _USBF3	=	0x6226
                           006228  1045 _USBF4	=	0x6228
                           00622A  1046 _USBF5	=	0x622a
                           007080  1047 _X_P0	=	0x7080
                           007086  1048 _X_U0CSR	=	0x7086
                           007089  1049 _X_P0IFG	=	0x7089
                           00708A  1050 _X_P1IFG	=	0x708a
                           00708B  1051 _X_P2IFG	=	0x708b
                           00708C  1052 _X_PICTL	=	0x708c
                           00708D  1053 _X_P1IEN	=	0x708d
                           00708F  1054 _X_P0INP	=	0x708f
                           007090  1055 _X_P1	=	0x7090
                           007091  1056 _X_RFIRQF1	=	0x7091
                           007093  1057 _X_MPAGE	=	0x7093
                           007093  1058 _X__XPAGE	=	0x7093
                           007094  1059 _X_T2CTRL	=	0x7094
                           007095  1060 _X_ST0	=	0x7095
                           007096  1061 _X_ST1	=	0x7096
                           007097  1062 _X_ST2	=	0x7097
                           00709C  1063 _X_T2EVTCFG	=	0x709c
                           00709D  1064 _X_SLEEPSTA	=	0x709d
                           00709E  1065 _X_CLKCONSTA	=	0x709e
                           00709F  1066 _X_FMAP	=	0x709f
                           00709F  1067 _X_PSBANK	=	0x709f
                           0070A0  1068 _X_P2	=	0x70a0
                           0070A1  1069 _X_T2IRQF	=	0x70a1
                           0070A2  1070 _X_T2M0	=	0x70a2
                           0070A3  1071 _X_T2M1	=	0x70a3
                           0070A4  1072 _X_T2MOVF0	=	0x70a4
                           0070A5  1073 _X_T2MOVF1	=	0x70a5
                           0070A6  1074 _X_T2MOVF2	=	0x70a6
                           0070A7  1075 _X_T2IRQM	=	0x70a7
                           0070AB  1076 _X_P0IEN	=	0x70ab
                           0070AC  1077 _X_P2IEN	=	0x70ac
                           0070AD  1078 _X_STLOAD	=	0x70ad
                           0070AE  1079 _X_PMUX	=	0x70ae
                           0070AF  1080 _X_T1STAT	=	0x70af
                           0070B1  1081 _X_ENCDI	=	0x70b1
                           0070B2  1082 _X_ENCDO	=	0x70b2
                           0070B3  1083 _X_ENCCS	=	0x70b3
                           0070B4  1084 _X_ADCCON1	=	0x70b4
                           0070B5  1085 _X_ADCCON2	=	0x70b5
                           0070B6  1086 _X_ADCCON3	=	0x70b6
                           0070BA  1087 _X_ADCL	=	0x70ba
                           0070BB  1088 _X_ADCH	=	0x70bb
                           0070BC  1089 _X_RNDL	=	0x70bc
                           0070BD  1090 _X_RNDH	=	0x70bd
                           0070BE  1091 _X_SLEEPCMD	=	0x70be
                           0070BF  1092 _X_RFERRF	=	0x70bf
                           0070C1  1093 _X_U0DBUF	=	0x70c1
                           0070C2  1094 _X_U0BAUD	=	0x70c2
                           0070C3  1095 _X_T2MSEL	=	0x70c3
                           0070C4  1096 _X_U0UCR	=	0x70c4
                           0070C5  1097 _X_U0GCR	=	0x70c5
                           0070C6  1098 _X_CLKCONCMD	=	0x70c6
                           0070C7  1099 _X_MEMCTR	=	0x70c7
                           0070C9  1100 _X_WDCTL	=	0x70c9
                           0070CA  1101 _X_T3CNT	=	0x70ca
                           0070CB  1102 _X_T3CTL	=	0x70cb
                           0070CC  1103 _X_T3CCTL0	=	0x70cc
                           0070CD  1104 _X_T3CC0	=	0x70cd
                           0070CE  1105 _X_T3CCTL1	=	0x70ce
                           0070CF  1106 _X_T3CC1	=	0x70cf
                           0070D1  1107 _X_DMAIRQ	=	0x70d1
                           0070D2  1108 _X_DMA1CFGL	=	0x70d2
                           0070D3  1109 _X_DMA1CFGH	=	0x70d3
                           0070D4  1110 _X_DMA0CFGL	=	0x70d4
                           0070D5  1111 _X_DMA0CFGH	=	0x70d5
                           0070D6  1112 _X_DMAARM	=	0x70d6
                           0070D7  1113 _X_DMAREQ	=	0x70d7
                           0070D8  1114 _X_TIMIF	=	0x70d8
                           0070D9  1115 _X_RFD	=	0x70d9
                           0070DA  1116 _X_T1CC0L	=	0x70da
                           0070DB  1117 _X_T1CC0H	=	0x70db
                           0070DC  1118 _X_T1CC1L	=	0x70dc
                           0070DD  1119 _X_T1CC1H	=	0x70dd
                           0070DE  1120 _X_T1CC2L	=	0x70de
                           0070DF  1121 _X_T1CC2H	=	0x70df
                           0070E1  1122 _X_RFST	=	0x70e1
                           0070E2  1123 _X_T1CNTL	=	0x70e2
                           0070E3  1124 _X_T1CNTH	=	0x70e3
                           0070E4  1125 _X_T1CTL	=	0x70e4
                           0070E5  1126 _X_T1CCTL0	=	0x70e5
                           0070E6  1127 _X_T1CCTL1	=	0x70e6
                           0070E7  1128 _X_T1CCTL2	=	0x70e7
                           0070E9  1129 _X_RFIRQF0	=	0x70e9
                           0070EA  1130 _X_T4CNT	=	0x70ea
                           0070EB  1131 _X_T4CTL	=	0x70eb
                           0070EC  1132 _X_T4CCTL0	=	0x70ec
                           0070ED  1133 _X_T4CC0	=	0x70ed
                           0070EE  1134 _X_T4CCTL1	=	0x70ee
                           0070EF  1135 _X_T4CC1	=	0x70ef
                           0070F1  1136 _X_PERCFG	=	0x70f1
                           0070F2  1137 _X_APCFG	=	0x70f2
                           0070F3  1138 _X_P0SEL	=	0x70f3
                           0070F4  1139 _X_P1SEL	=	0x70f4
                           0070F5  1140 _X_P2SEL	=	0x70f5
                           0070F6  1141 _X_P1INP	=	0x70f6
                           0070F7  1142 _X_P2INP	=	0x70f7
                           0070F8  1143 _X_U1CSR	=	0x70f8
                           0070F9  1144 _X_U1DBUF	=	0x70f9
                           0070FA  1145 _X_U1BAUD	=	0x70fa
                           0070FB  1146 _X_U1UCR	=	0x70fb
                           0070FC  1147 _X_U1GCR	=	0x70fc
                           0070FD  1148 _X_P0DIR	=	0x70fd
                           0070FE  1149 _X_P1DIR	=	0x70fe
                           0070FF  1150 _X_P2DIR	=	0x70ff
                           007800  1151 _X_INFOPAGE	=	0x7800
                           00780C  1152 _X_IEEE_ADDR	=	0x780c
                                   1153 ;--------------------------------------------------------
                                   1154 ; absolute external ram data
                                   1155 ;--------------------------------------------------------
                                   1156 	.area XABS    (ABS,XDATA)
                                   1157 ;--------------------------------------------------------
                                   1158 ; external initialized ram data
                                   1159 ;--------------------------------------------------------
                                   1160 	.area XISEG   (XDATA)
                                   1161 	.area HOME    (CODE)
                                   1162 	.area GSINIT0 (CODE)
                                   1163 	.area GSINIT1 (CODE)
                                   1164 	.area GSINIT2 (CODE)
                                   1165 	.area GSINIT3 (CODE)
                                   1166 	.area GSINIT4 (CODE)
                                   1167 	.area GSINIT5 (CODE)
                                   1168 	.area GSINIT  (CODE)
                                   1169 	.area GSFINAL (CODE)
                                   1170 	.area CSEG    (CODE)
                                   1171 ;--------------------------------------------------------
                                   1172 ; interrupt vector 
                                   1173 ;--------------------------------------------------------
                                   1174 	.area HOME    (CODE)
      000000                       1175 __interrupt_vect:
      000000 02 00 B1         [24] 1176 	ljmp	__sdcc_gsinit_startup
      000003 32               [24] 1177 	reti
      000004                       1178 	.ds	7
      00000B 32               [24] 1179 	reti
      00000C                       1180 	.ds	7
      000013 32               [24] 1181 	reti
      000014                       1182 	.ds	7
      00001B 32               [24] 1183 	reti
      00001C                       1184 	.ds	7
      000023 32               [24] 1185 	reti
      000024                       1186 	.ds	7
      00002B 02 62 1B         [24] 1187 	ljmp	_clock_isr
      00002E                       1188 	.ds	5
      000033 02 6D 0D         [24] 1189 	ljmp	_port_2_isr
      000036                       1190 	.ds	5
      00003B 32               [24] 1191 	reti
      00003C                       1192 	.ds	7
      000043 02 96 EC         [24] 1193 	ljmp	_dma_isr
      000046                       1194 	.ds	5
      00004B 02 69 D6         [24] 1195 	ljmp	_rtimer_isr
      00004E                       1196 	.ds	5
      000053 32               [24] 1197 	reti
      000054                       1198 	.ds	7
      00005B 32               [24] 1199 	reti
      00005C                       1200 	.ds	7
      000063 32               [24] 1201 	reti
      000064                       1202 	.ds	7
      00006B 32               [24] 1203 	reti
      00006C                       1204 	.ds	7
      000073 32               [24] 1205 	reti
      000074                       1206 	.ds	7
      00007B 02 42 2A         [24] 1207 	ljmp	_port_1_isr
                                   1208 ;--------------------------------------------------------
                                   1209 ; global & static initialisations
                                   1210 ;--------------------------------------------------------
                                   1211 	.area HOME    (CODE)
                                   1212 	.area GSINIT  (CODE)
                                   1213 	.area GSFINAL (CODE)
                                   1214 	.area GSINIT  (CODE)
                                   1215 	.globl __sdcc_gsinit_startup
                                   1216 	.globl __sdcc_program_startup
                                   1217 	.globl __start__stack
                                   1218 	.globl __mcs51_genXINIT
                                   1219 	.globl __mcs51_genXRAMCLEAR
                                   1220 	.globl __mcs51_genRAMCLEAR
                                   1221 	.area GSFINAL (CODE)
      000122 02 00 7E         [24] 1222 	ljmp	__sdcc_program_startup
                                   1223 ;--------------------------------------------------------
                                   1224 ; Home
                                   1225 ;--------------------------------------------------------
                                   1226 	.area HOME    (CODE)
                                   1227 	.area HOME    (CODE)
      00007E                       1228 __sdcc_program_startup:
      00007E 02 02 48         [24] 1229 	ljmp	_main
                                   1230 ;	return from main will return to caller
                                   1231 ;--------------------------------------------------------
                                   1232 ; code
                                   1233 ;--------------------------------------------------------
                                   1234 	.area CSEG    (CODE)
                                   1235 ;------------------------------------------------------------
                                   1236 ;Allocation info for local variables in function 'fade'
                                   1237 ;------------------------------------------------------------
                                   1238 ;l                         Allocated to stack - sp -5
                                   1239 ;i                         Allocated to stack - sp -3
                                   1240 ;a                         Allocated to stack - sp -1
                                   1241 ;k                         Allocated to registers r4 r5 
                                   1242 ;j                         Allocated to registers r2 r3 
                                   1243 ;------------------------------------------------------------
                                   1244 ;	../contiki-sensinode/platform/cc2530dk/./contiki-main.c:63: fade(int l) CC_NON_BANKED
                                   1245 ;	-----------------------------------------
                                   1246 ;	 function fade
                                   1247 ;	-----------------------------------------
      000125                       1248 _fade:
                           000007  1249 	ar7 = 0x07
                           000006  1250 	ar6 = 0x06
                           000005  1251 	ar5 = 0x05
                           000004  1252 	ar4 = 0x04
                           000003  1253 	ar3 = 0x03
                           000002  1254 	ar2 = 0x02
                           000001  1255 	ar1 = 0x01
                           000000  1256 	ar0 = 0x00
      000125 C0 82            [24] 1257 	push	dpl
      000127 C0 83            [24] 1258 	push	dph
      000129 E5 81            [12] 1259 	mov	a,sp
      00012B 24 04            [12] 1260 	add	a,#0x04
      00012D F5 81            [12] 1261 	mov	sp,a
                                   1262 ;	../contiki-sensinode/platform/cc2530dk/./contiki-main.c:67: for(k = 0; k < 400; ++k) {
      00012F 7C 00            [12] 1263 	mov	r4,#0x00
      000131 7D 00            [12] 1264 	mov	r5,#0x00
      000133                       1265 00110$:
                                   1266 ;	../contiki-sensinode/platform/cc2530dk/./contiki-main.c:68: j = k > 200 ? 400 - k : k;
      000133 C3               [12] 1267 	clr	c
      000134 74 C8            [12] 1268 	mov	a,#0xC8
      000136 9C               [12] 1269 	subb	a,r4
      000137 74 80            [12] 1270 	mov	a,#(0x00 ^ 0x80)
      000139 8D F0            [24] 1271 	mov	b,r5
      00013B 63 F0 80         [24] 1272 	xrl	b,#0x80
      00013E 95 F0            [12] 1273 	subb	a,b
      000140 50 0B            [24] 1274 	jnc	00114$
      000142 74 90            [12] 1275 	mov	a,#0x90
      000144 C3               [12] 1276 	clr	c
      000145 9C               [12] 1277 	subb	a,r4
      000146 FA               [12] 1278 	mov	r2,a
      000147 74 01            [12] 1279 	mov	a,#0x01
      000149 9D               [12] 1280 	subb	a,r5
      00014A FB               [12] 1281 	mov	r3,a
      00014B 80 04            [24] 1282 	sjmp	00115$
      00014D                       1283 00114$:
      00014D 8C 02            [24] 1284 	mov	ar2,r4
      00014F 8D 03            [24] 1285 	mov	ar3,r5
      000151                       1286 00115$:
                                   1287 ;	../contiki-sensinode/platform/cc2530dk/./contiki-main.c:70: leds_on(l);
      000151 E5 81            [12] 1288 	mov	a,sp
      000153 24 FB            [12] 1289 	add	a,#0xfb
      000155 F8               [12] 1290 	mov	r0,a
      000156 86 07            [24] 1291 	mov	ar7,@r0
      000158 8F 82            [24] 1292 	mov	dpl,r7
      00015A C0 07            [24] 1293 	push	ar7
      00015C C0 05            [24] 1294 	push	ar5
      00015E C0 04            [24] 1295 	push	ar4
      000160 C0 03            [24] 1296 	push	ar3
      000162 C0 02            [24] 1297 	push	ar2
      000164 12 13 61         [24] 1298 	lcall	_leds_on
      000167 D0 02            [24] 1299 	pop	ar2
      000169 D0 03            [24] 1300 	pop	ar3
      00016B D0 04            [24] 1301 	pop	ar4
      00016D D0 05            [24] 1302 	pop	ar5
      00016F D0 07            [24] 1303 	pop	ar7
                                   1304 ;	../contiki-sensinode/platform/cc2530dk/./contiki-main.c:71: for(i = 0; i < j; ++i) {
      000171 E5 81            [12] 1305 	mov	a,sp
      000173 24 FD            [12] 1306 	add	a,#0xfd
      000175 F8               [12] 1307 	mov	r0,a
      000176 E4               [12] 1308 	clr	a
      000177 F6               [12] 1309 	mov	@r0,a
      000178 08               [12] 1310 	inc	r0
      000179 F6               [12] 1311 	mov	@r0,a
      00017A                       1312 00105$:
      00017A E5 81            [12] 1313 	mov	a,sp
      00017C 24 FD            [12] 1314 	add	a,#0xfd
      00017E F8               [12] 1315 	mov	r0,a
      00017F C3               [12] 1316 	clr	c
      000180 E6               [12] 1317 	mov	a,@r0
      000181 9A               [12] 1318 	subb	a,r2
      000182 08               [12] 1319 	inc	r0
      000183 E6               [12] 1320 	mov	a,@r0
      000184 64 80            [12] 1321 	xrl	a,#0x80
      000186 8B F0            [24] 1322 	mov	b,r3
      000188 63 F0 80         [24] 1323 	xrl	b,#0x80
      00018B 95 F0            [12] 1324 	subb	a,b
      00018D 50 1D            [24] 1325 	jnc	00101$
                                   1326 ;	../contiki-sensinode/platform/cc2530dk/./contiki-main.c:72: a = i;
      00018F E5 81            [12] 1327 	mov	a,sp
      000191 24 FD            [12] 1328 	add	a,#0xfd
      000193 F8               [12] 1329 	mov	r0,a
      000194 A9 81            [24] 1330 	mov	r1,sp
      000196 19               [12] 1331 	dec	r1
      000197 E6               [12] 1332 	mov	a,@r0
      000198 F7               [12] 1333 	mov	@r1,a
      000199 08               [12] 1334 	inc	r0
      00019A 09               [12] 1335 	inc	r1
      00019B E6               [12] 1336 	mov	a,@r0
      00019C F7               [12] 1337 	mov	@r1,a
                                   1338 ;	../contiki-sensinode/platform/cc2530dk/./contiki-main.c:71: for(i = 0; i < j; ++i) {
      00019D E5 81            [12] 1339 	mov	a,sp
      00019F 24 FD            [12] 1340 	add	a,#0xfd
      0001A1 F8               [12] 1341 	mov	r0,a
      0001A2 74 01            [12] 1342 	mov	a,#0x01
      0001A4 26               [12] 1343 	add	a,@r0
      0001A5 F6               [12] 1344 	mov	@r0,a
      0001A6 E4               [12] 1345 	clr	a
      0001A7 08               [12] 1346 	inc	r0
      0001A8 36               [12] 1347 	addc	a,@r0
      0001A9 F6               [12] 1348 	mov	@r0,a
      0001AA 80 CE            [24] 1349 	sjmp	00105$
      0001AC                       1350 00101$:
                                   1351 ;	../contiki-sensinode/platform/cc2530dk/./contiki-main.c:74: leds_off(l);
      0001AC 8F 82            [24] 1352 	mov	dpl,r7
      0001AE C0 05            [24] 1353 	push	ar5
      0001B0 C0 04            [24] 1354 	push	ar4
      0001B2 C0 03            [24] 1355 	push	ar3
      0001B4 C0 02            [24] 1356 	push	ar2
      0001B6 12 13 78         [24] 1357 	lcall	_leds_off
      0001B9 D0 02            [24] 1358 	pop	ar2
      0001BB D0 03            [24] 1359 	pop	ar3
      0001BD D0 04            [24] 1360 	pop	ar4
      0001BF D0 05            [24] 1361 	pop	ar5
                                   1362 ;	../contiki-sensinode/platform/cc2530dk/./contiki-main.c:75: for(i = 0; i < 200 - j; ++i) {
      0001C1 E5 81            [12] 1363 	mov	a,sp
      0001C3 24 FD            [12] 1364 	add	a,#0xfd
      0001C5 F8               [12] 1365 	mov	r0,a
      0001C6 E4               [12] 1366 	clr	a
      0001C7 F6               [12] 1367 	mov	@r0,a
      0001C8 08               [12] 1368 	inc	r0
      0001C9 F6               [12] 1369 	mov	@r0,a
      0001CA 74 C8            [12] 1370 	mov	a,#0xC8
      0001CC C3               [12] 1371 	clr	c
      0001CD 9A               [12] 1372 	subb	a,r2
      0001CE FE               [12] 1373 	mov	r6,a
      0001CF E4               [12] 1374 	clr	a
      0001D0 9B               [12] 1375 	subb	a,r3
      0001D1 FF               [12] 1376 	mov	r7,a
      0001D2                       1377 00108$:
      0001D2 E5 81            [12] 1378 	mov	a,sp
      0001D4 24 FD            [12] 1379 	add	a,#0xfd
      0001D6 F8               [12] 1380 	mov	r0,a
      0001D7 C3               [12] 1381 	clr	c
      0001D8 E6               [12] 1382 	mov	a,@r0
      0001D9 9E               [12] 1383 	subb	a,r6
      0001DA 08               [12] 1384 	inc	r0
      0001DB E6               [12] 1385 	mov	a,@r0
      0001DC 64 80            [12] 1386 	xrl	a,#0x80
      0001DE 8F F0            [24] 1387 	mov	b,r7
      0001E0 63 F0 80         [24] 1388 	xrl	b,#0x80
      0001E3 95 F0            [12] 1389 	subb	a,b
      0001E5 50 1D            [24] 1390 	jnc	00111$
                                   1391 ;	../contiki-sensinode/platform/cc2530dk/./contiki-main.c:76: a = i;
      0001E7 E5 81            [12] 1392 	mov	a,sp
      0001E9 24 FD            [12] 1393 	add	a,#0xfd
      0001EB F8               [12] 1394 	mov	r0,a
      0001EC A9 81            [24] 1395 	mov	r1,sp
      0001EE 19               [12] 1396 	dec	r1
      0001EF E6               [12] 1397 	mov	a,@r0
      0001F0 F7               [12] 1398 	mov	@r1,a
      0001F1 08               [12] 1399 	inc	r0
      0001F2 09               [12] 1400 	inc	r1
      0001F3 E6               [12] 1401 	mov	a,@r0
      0001F4 F7               [12] 1402 	mov	@r1,a
                                   1403 ;	../contiki-sensinode/platform/cc2530dk/./contiki-main.c:75: for(i = 0; i < 200 - j; ++i) {
      0001F5 E5 81            [12] 1404 	mov	a,sp
      0001F7 24 FD            [12] 1405 	add	a,#0xfd
      0001F9 F8               [12] 1406 	mov	r0,a
      0001FA 74 01            [12] 1407 	mov	a,#0x01
      0001FC 26               [12] 1408 	add	a,@r0
      0001FD F6               [12] 1409 	mov	@r0,a
      0001FE E4               [12] 1410 	clr	a
      0001FF 08               [12] 1411 	inc	r0
      000200 36               [12] 1412 	addc	a,@r0
      000201 F6               [12] 1413 	mov	@r0,a
      000202 80 CE            [24] 1414 	sjmp	00108$
      000204                       1415 00111$:
                                   1416 ;	../contiki-sensinode/platform/cc2530dk/./contiki-main.c:67: for(k = 0; k < 400; ++k) {
      000204 0C               [12] 1417 	inc	r4
      000205 BC 00 01         [24] 1418 	cjne	r4,#0x00,00138$
      000208 0D               [12] 1419 	inc	r5
      000209                       1420 00138$:
      000209 C3               [12] 1421 	clr	c
      00020A EC               [12] 1422 	mov	a,r4
      00020B 94 90            [12] 1423 	subb	a,#0x90
      00020D ED               [12] 1424 	mov	a,r5
      00020E 64 80            [12] 1425 	xrl	a,#0x80
      000210 94 81            [12] 1426 	subb	a,#0x81
      000212 50 03            [24] 1427 	jnc	00139$
      000214 02 01 33         [24] 1428 	ljmp	00110$
      000217                       1429 00139$:
      000217 E5 81            [12] 1430 	mov	a,sp
      000219 24 FA            [12] 1431 	add	a,#0xFA
      00021B F5 81            [12] 1432 	mov	sp,a
      00021D 22               [24] 1433 	ret
                                   1434 ;------------------------------------------------------------
                                   1435 ;Allocation info for local variables in function 'set_rime_addr'
                                   1436 ;------------------------------------------------------------
                                   1437 ;i                         Allocated to registers r5 
                                   1438 ;macp                      Allocated to registers 
                                   1439 ;------------------------------------------------------------
                                   1440 ;	../contiki-sensinode/platform/cc2530dk/./contiki-main.c:82: set_rime_addr(void) CC_NON_BANKED
                                   1441 ;	-----------------------------------------
                                   1442 ;	 function set_rime_addr
                                   1443 ;	-----------------------------------------
      00021E                       1444 _set_rime_addr:
                                   1445 ;	../contiki-sensinode/platform/cc2530dk/./contiki-main.c:87: __xdata unsigned char *macp = &X_IEEE_ADDR;
      00021E 7E 0C            [12] 1446 	mov	r6,#_X_IEEE_ADDR
      000220 7F 78            [12] 1447 	mov	r7,#(_X_IEEE_ADDR >> 8)
                                   1448 ;	../contiki-sensinode/platform/cc2530dk/./contiki-main.c:117: for(i = (RIMEADDR_SIZE - 1); i >= 0; --i) {
      000222 7D 01            [12] 1449 	mov	r5,#0x01
      000224                       1450 00102$:
                                   1451 ;	../contiki-sensinode/platform/cc2530dk/./contiki-main.c:118: rimeaddr_node_addr.u8[i] = *macp;
      000224 ED               [12] 1452 	mov	a,r5
      000225 24 42            [12] 1453 	add	a,#_rimeaddr_node_addr
      000227 FB               [12] 1454 	mov	r3,a
      000228 E4               [12] 1455 	clr	a
      000229 34 04            [12] 1456 	addc	a,#(_rimeaddr_node_addr >> 8)
      00022B FC               [12] 1457 	mov	r4,a
      00022C 8E 82            [24] 1458 	mov	dpl,r6
      00022E 8F 83            [24] 1459 	mov	dph,r7
      000230 E0               [24] 1460 	movx	a,@dptr
      000231 FA               [12] 1461 	mov	r2,a
      000232 A3               [24] 1462 	inc	dptr
      000233 AE 82            [24] 1463 	mov	r6,dpl
      000235 AF 83            [24] 1464 	mov	r7,dph
      000237 8B 82            [24] 1465 	mov	dpl,r3
      000239 8C 83            [24] 1466 	mov	dph,r4
      00023B EA               [12] 1467 	mov	a,r2
      00023C F0               [24] 1468 	movx	@dptr,a
                                   1469 ;	../contiki-sensinode/platform/cc2530dk/./contiki-main.c:119: macp++;
                                   1470 ;	../contiki-sensinode/platform/cc2530dk/./contiki-main.c:117: for(i = (RIMEADDR_SIZE - 1); i >= 0; --i) {
      00023D 1D               [12] 1471 	dec	r5
      00023E ED               [12] 1472 	mov	a,r5
      00023F 30 E7 E2         [24] 1473 	jnb	acc.7,00102$
                                   1474 ;	../contiki-sensinode/platform/cc2530dk/./contiki-main.c:139: cc2530_rf_set_addr(IEEE802154_PANID);
      000242 90 54 49         [24] 1475 	mov	dptr,#0x5449
                                   1476 ;	../contiki-sensinode/platform/cc2530dk/./contiki-main.c:140: return;
      000245 02 55 24         [24] 1477 	ljmp	_cc2530_rf_set_addr
                                   1478 ;------------------------------------------------------------
                                   1479 ;Allocation info for local variables in function 'main'
                                   1480 ;------------------------------------------------------------
                                   1481 ;r                         Allocated to registers r6 
                                   1482 ;------------------------------------------------------------
                                   1483 ;	../contiki-sensinode/platform/cc2530dk/./contiki-main.c:144: main(void) CC_NON_BANKED
                                   1484 ;	-----------------------------------------
                                   1485 ;	 function main
                                   1486 ;	-----------------------------------------
      000248                       1487 _main:
                                   1488 ;	../contiki-sensinode/platform/cc2530dk/./contiki-main.c:147: clock_init();
      000248 12 61 53         [24] 1489 	lcall	_clock_init
                                   1490 ;	../contiki-sensinode/platform/cc2530dk/./contiki-main.c:148: soc_init();
      00024B 12 8B 9E         [24] 1491 	lcall	_soc_init
                                   1492 ;	../contiki-sensinode/platform/cc2530dk/./contiki-main.c:149: rtimer_init();
      00024E 12 42 E4         [24] 1493 	lcall	_rtimer_init
                                   1494 ;	../contiki-sensinode/platform/cc2530dk/./contiki-main.c:154: leds_init();
      000251 12 13 2F         [24] 1495 	lcall	_leds_init
                                   1496 ;	../contiki-sensinode/platform/cc2530dk/./contiki-main.c:155: leds_off(LEDS_ALL);
      000254 75 82 03         [24] 1497 	mov	dpl,#0x03
      000257 12 13 78         [24] 1498 	lcall	_leds_off
                                   1499 ;	../contiki-sensinode/platform/cc2530dk/./contiki-main.c:156: fade(LEDS_GREEN);
      00025A 90 00 02         [24] 1500 	mov	dptr,#0x0002
      00025D 12 01 25         [24] 1501 	lcall	_fade
                                   1502 ;	../contiki-sensinode/platform/cc2530dk/./contiki-main.c:159: process_init();
      000260 12 4C 75         [24] 1503 	lcall	_process_init
                                   1504 ;	../contiki-sensinode/platform/cc2530dk/./contiki-main.c:162: dma_init();
      000263 12 5E 67         [24] 1505 	lcall	_dma_init
                                   1506 ;	../contiki-sensinode/platform/cc2530dk/./contiki-main.c:165: io_arch_init();
      000266 12 09 CC         [24] 1507 	lcall	_usb_serial_init
                                   1508 ;	../contiki-sensinode/platform/cc2530dk/./contiki-main.c:170: io_arch_set_input(serial_line_input_byte);
      000269 90 44 55         [24] 1509 	mov	dptr,#_serial_line_input_byte
      00026C 12 09 BF         [24] 1510 	lcall	_usb_serial_set_input
                                   1511 ;	../contiki-sensinode/platform/cc2530dk/./contiki-main.c:171: serial_line_init();
      00026F 12 46 58         [24] 1512 	lcall	_serial_line_init
                                   1513 ;	../contiki-sensinode/platform/cc2530dk/./contiki-main.c:173: fade(LEDS_RED);
      000272 90 00 01         [24] 1514 	mov	dptr,#0x0001
      000275 12 01 25         [24] 1515 	lcall	_fade
                                   1516 ;	../contiki-sensinode/platform/cc2530dk/./contiki-main.c:176: putstring(CONTIKI_VERSION_STRING "\n");
      000278 90 DF A7         [24] 1517 	mov	dptr,#___str_0
      00027B 75 F0 80         [24] 1518 	mov	b,#0x80
      00027E 12 59 69         [24] 1519 	lcall	_putstring
                                   1520 ;	../contiki-sensinode/platform/cc2530dk/./contiki-main.c:177: putstring(MODEL_STRING);
      000281 90 DF B4         [24] 1521 	mov	dptr,#___str_1
      000284 75 F0 80         [24] 1522 	mov	b,#0x80
      000287 12 59 69         [24] 1523 	lcall	_putstring
                                   1524 ;	../contiki-sensinode/platform/cc2530dk/./contiki-main.c:178: switch(CHIPID) {
      00028A 90 62 4A         [24] 1525 	mov	dptr,#_CHIPID
      00028D E0               [24] 1526 	movx	a,@dptr
      00028E FF               [12] 1527 	mov	r7,a
      00028F BF 8D 02         [24] 1528 	cjne	r7,#0x8D,00161$
      000292 80 30            [24] 1529 	sjmp	00104$
      000294                       1530 00161$:
      000294 BF 95 02         [24] 1531 	cjne	r7,#0x95,00162$
      000297 80 20            [24] 1532 	sjmp	00103$
      000299                       1533 00162$:
      000299 BF A5 02         [24] 1534 	cjne	r7,#0xA5,00163$
      00029C 80 05            [24] 1535 	sjmp	00101$
      00029E                       1536 00163$:
                                   1537 ;	../contiki-sensinode/platform/cc2530dk/./contiki-main.c:179: case 0xA5:
      00029E BF B5 2C         [24] 1538 	cjne	r7,#0xB5,00105$
      0002A1 80 0B            [24] 1539 	sjmp	00102$
      0002A3                       1540 00101$:
                                   1541 ;	../contiki-sensinode/platform/cc2530dk/./contiki-main.c:180: putstring("cc2530");
      0002A3 90 DF CA         [24] 1542 	mov	dptr,#___str_2
      0002A6 75 F0 80         [24] 1543 	mov	b,#0x80
      0002A9 12 59 69         [24] 1544 	lcall	_putstring
                                   1545 ;	../contiki-sensinode/platform/cc2530dk/./contiki-main.c:181: break;
                                   1546 ;	../contiki-sensinode/platform/cc2530dk/./contiki-main.c:182: case 0xB5:
      0002AC 80 1F            [24] 1547 	sjmp	00105$
      0002AE                       1548 00102$:
                                   1549 ;	../contiki-sensinode/platform/cc2530dk/./contiki-main.c:183: putstring("cc2531");
      0002AE 90 DF D1         [24] 1550 	mov	dptr,#___str_3
      0002B1 75 F0 80         [24] 1551 	mov	b,#0x80
      0002B4 12 59 69         [24] 1552 	lcall	_putstring
                                   1553 ;	../contiki-sensinode/platform/cc2530dk/./contiki-main.c:184: break;
                                   1554 ;	../contiki-sensinode/platform/cc2530dk/./contiki-main.c:185: case 0x95:
      0002B7 80 14            [24] 1555 	sjmp	00105$
      0002B9                       1556 00103$:
                                   1557 ;	../contiki-sensinode/platform/cc2530dk/./contiki-main.c:186: putstring("cc2533");
      0002B9 90 DF D8         [24] 1558 	mov	dptr,#___str_4
      0002BC 75 F0 80         [24] 1559 	mov	b,#0x80
      0002BF 12 59 69         [24] 1560 	lcall	_putstring
                                   1561 ;	../contiki-sensinode/platform/cc2530dk/./contiki-main.c:187: break;
                                   1562 ;	../contiki-sensinode/platform/cc2530dk/./contiki-main.c:188: case 0x8D:
      0002C2 80 09            [24] 1563 	sjmp	00105$
      0002C4                       1564 00104$:
                                   1565 ;	../contiki-sensinode/platform/cc2530dk/./contiki-main.c:189: putstring("cc2540");
      0002C4 90 DF DF         [24] 1566 	mov	dptr,#___str_5
      0002C7 75 F0 80         [24] 1567 	mov	b,#0x80
      0002CA 12 59 69         [24] 1568 	lcall	_putstring
                                   1569 ;	../contiki-sensinode/platform/cc2530dk/./contiki-main.c:191: }
      0002CD                       1570 00105$:
                                   1571 ;	../contiki-sensinode/platform/cc2530dk/./contiki-main.c:193: putstring("-" CC2530_FLAVOR_STRING ", ");
      0002CD 90 DF E6         [24] 1572 	mov	dptr,#___str_6
      0002D0 75 F0 80         [24] 1573 	mov	b,#0x80
      0002D3 12 59 69         [24] 1574 	lcall	_putstring
                                   1575 ;	../contiki-sensinode/platform/cc2530dk/./contiki-main.c:194: puthex(CHIPINFO1 + 1);
      0002D6 90 62 77         [24] 1576 	mov	dptr,#_CHIPINFO1
      0002D9 E0               [24] 1577 	movx	a,@dptr
      0002DA FF               [12] 1578 	mov	r7,a
      0002DB 0F               [12] 1579 	inc	r7
      0002DC 8F 82            [24] 1580 	mov	dpl,r7
      0002DE 12 59 94         [24] 1581 	lcall	_puthex
                                   1582 ;	../contiki-sensinode/platform/cc2530dk/./contiki-main.c:195: putstring("KB SRAM\n");
      0002E1 90 DF EE         [24] 1583 	mov	dptr,#___str_7
      0002E4 75 F0 80         [24] 1584 	mov	b,#0x80
      0002E7 12 59 69         [24] 1585 	lcall	_putstring
                                   1586 ;	../contiki-sensinode/platform/cc2530dk/./contiki-main.c:227: watchdog_init();
      0002EA 12 13 9D         [24] 1587 	lcall	_watchdog_init
                                   1588 ;	../contiki-sensinode/platform/cc2530dk/./contiki-main.c:230: random_init(0);
      0002ED 90 00 00         [24] 1589 	mov	dptr,#0x0000
      0002F0 12 80 A9         [24] 1590 	lcall	_random_init
                                   1591 ;	../contiki-sensinode/platform/cc2530dk/./contiki-main.c:233: process_start(&etimer_process, NULL);
      0002F3 E4               [12] 1592 	clr	a
      0002F4 C0 E0            [24] 1593 	push	acc
      0002F6 C0 E0            [24] 1594 	push	acc
      0002F8 C0 E0            [24] 1595 	push	acc
      0002FA 90 0C ED         [24] 1596 	mov	dptr,#_etimer_process
      0002FD 75 F0 00         [24] 1597 	mov	b,#0x00
      000300 12 46 97         [24] 1598 	lcall	_process_start
      000303 15 81            [12] 1599 	dec	sp
      000305 15 81            [12] 1600 	dec	sp
      000307 15 81            [12] 1601 	dec	sp
                                   1602 ;	../contiki-sensinode/platform/cc2530dk/./contiki-main.c:234: ctimer_init();
      000309 12 84 19         [24] 1603 	lcall	_ctimer_init
                                   1604 ;	../contiki-sensinode/platform/cc2530dk/./contiki-main.c:237: netstack_init();
      00030C 12 5A 19         [24] 1605 	lcall	_netstack_init
                                   1606 ;	../contiki-sensinode/platform/cc2530dk/./contiki-main.c:238: set_rime_addr();
      00030F 12 02 1E         [24] 1607 	lcall	_set_rime_addr
                                   1608 ;	../contiki-sensinode/platform/cc2530dk/./contiki-main.c:241: process_start(&sensors_process, NULL);
      000312 E4               [12] 1609 	clr	a
      000313 C0 E0            [24] 1610 	push	acc
      000315 C0 E0            [24] 1611 	push	acc
      000317 C0 E0            [24] 1612 	push	acc
      000319 90 0D 12         [24] 1613 	mov	dptr,#_sensors_process
      00031C 75 F0 00         [24] 1614 	mov	b,#0x00
      00031F 12 46 97         [24] 1615 	lcall	_process_start
      000322 15 81            [12] 1616 	dec	sp
      000324 15 81            [12] 1617 	dec	sp
      000326 15 81            [12] 1618 	dec	sp
                                   1619 ;	../contiki-sensinode/platform/cc2530dk/./contiki-main.c:242: BUTTON_SENSOR_ACTIVATE();
      000328 90 E0 90         [24] 1620 	mov	dptr,#(_button_1_sensor + 0x0005)
      00032B E4               [12] 1621 	clr	a
      00032C 93               [24] 1622 	movc	a,@a+dptr
      00032D FE               [12] 1623 	mov	r6,a
      00032E A3               [24] 1624 	inc	dptr
      00032F E4               [12] 1625 	clr	a
      000330 93               [24] 1626 	movc	a,@a+dptr
      000331 FF               [12] 1627 	mov	r7,a
      000332 C0 07            [24] 1628 	push	ar7
      000334 C0 06            [24] 1629 	push	ar6
      000336 74 01            [12] 1630 	mov	a,#0x01
      000338 C0 E0            [24] 1631 	push	acc
      00033A E4               [12] 1632 	clr	a
      00033B C0 E0            [24] 1633 	push	acc
      00033D 12 03 42         [24] 1634 	lcall	00165$
      000340 80 08            [24] 1635 	sjmp	00166$
      000342                       1636 00165$:
      000342 C0 06            [24] 1637 	push	ar6
      000344 C0 07            [24] 1638 	push	ar7
      000346 90 00 81         [24] 1639 	mov	dptr,#0x0081
      000349 22               [24] 1640 	ret
      00034A                       1641 00166$:
      00034A 15 81            [12] 1642 	dec	sp
      00034C 15 81            [12] 1643 	dec	sp
      00034E D0 06            [24] 1644 	pop	ar6
      000350 D0 07            [24] 1645 	pop	ar7
      000352 90 E0 99         [24] 1646 	mov	dptr,#(_button_2_sensor + 0x0005)
      000355 E4               [12] 1647 	clr	a
      000356 93               [24] 1648 	movc	a,@a+dptr
      000357 FE               [12] 1649 	mov	r6,a
      000358 A3               [24] 1650 	inc	dptr
      000359 E4               [12] 1651 	clr	a
      00035A 93               [24] 1652 	movc	a,@a+dptr
      00035B FF               [12] 1653 	mov	r7,a
      00035C C0 07            [24] 1654 	push	ar7
      00035E C0 06            [24] 1655 	push	ar6
      000360 74 01            [12] 1656 	mov	a,#0x01
      000362 C0 E0            [24] 1657 	push	acc
      000364 E4               [12] 1658 	clr	a
      000365 C0 E0            [24] 1659 	push	acc
      000367 12 03 6C         [24] 1660 	lcall	00167$
      00036A 80 08            [24] 1661 	sjmp	00168$
      00036C                       1662 00167$:
      00036C C0 06            [24] 1663 	push	ar6
      00036E C0 07            [24] 1664 	push	ar7
      000370 90 00 81         [24] 1665 	mov	dptr,#0x0081
      000373 22               [24] 1666 	ret
      000374                       1667 00168$:
      000374 15 81            [12] 1668 	dec	sp
      000376 15 81            [12] 1669 	dec	sp
      000378 D0 06            [24] 1670 	pop	ar6
      00037A D0 07            [24] 1671 	pop	ar7
                                   1672 ;	../contiki-sensinode/platform/cc2530dk/./contiki-main.c:243: ADC_SENSOR_ACTIVATE();
      00037C 90 E0 2E         [24] 1673 	mov	dptr,#(_adc_sensor + 0x0005)
      00037F E4               [12] 1674 	clr	a
      000380 93               [24] 1675 	movc	a,@a+dptr
      000381 FE               [12] 1676 	mov	r6,a
      000382 A3               [24] 1677 	inc	dptr
      000383 E4               [12] 1678 	clr	a
      000384 93               [24] 1679 	movc	a,@a+dptr
      000385 FF               [12] 1680 	mov	r7,a
      000386 C0 07            [24] 1681 	push	ar7
      000388 C0 06            [24] 1682 	push	ar6
      00038A 74 01            [12] 1683 	mov	a,#0x01
      00038C C0 E0            [24] 1684 	push	acc
      00038E E4               [12] 1685 	clr	a
      00038F C0 E0            [24] 1686 	push	acc
      000391 12 03 96         [24] 1687 	lcall	00169$
      000394 80 08            [24] 1688 	sjmp	00170$
      000396                       1689 00169$:
      000396 C0 06            [24] 1690 	push	ar6
      000398 C0 07            [24] 1691 	push	ar7
      00039A 90 00 81         [24] 1692 	mov	dptr,#0x0081
      00039D 22               [24] 1693 	ret
      00039E                       1694 00170$:
      00039E 15 81            [12] 1695 	dec	sp
      0003A0 15 81            [12] 1696 	dec	sp
      0003A2 D0 06            [24] 1697 	pop	ar6
      0003A4 D0 07            [24] 1698 	pop	ar7
                                   1699 ;	../contiki-sensinode/platform/cc2530dk/./contiki-main.c:256: energest_init();
      0003A6 12 5A 7F         [24] 1700 	lcall	_energest_init
                                   1701 ;	../contiki-sensinode/platform/cc2530dk/./contiki-main.c:259: autostart_start(autostart_processes);
      0003A9 90 DF F7         [24] 1702 	mov	dptr,#_autostart_processes
      0003AC 75 F0 80         [24] 1703 	mov	b,#0x80
      0003AF 12 5D 60         [24] 1704 	lcall	_autostart_start
                                   1705 ;	../contiki-sensinode/platform/cc2530dk/./contiki-main.c:261: watchdog_start();
      0003B2 12 13 A1         [24] 1706 	lcall	_watchdog_start
                                   1707 ;	../contiki-sensinode/platform/cc2530dk/./contiki-main.c:263: fade(LEDS_YELLOW);
      0003B5 90 00 04         [24] 1708 	mov	dptr,#0x0004
      0003B8 12 01 25         [24] 1709 	lcall	_fade
                                   1710 ;	../contiki-sensinode/platform/cc2530dk/./contiki-main.c:267: do {
      0003BB                       1711 00116$:
                                   1712 ;	../contiki-sensinode/platform/cc2530dk/./contiki-main.c:269: watchdog_periodic();
      0003BB 12 13 A5         [24] 1713 	lcall	_watchdog_periodic
                                   1714 ;	../contiki-sensinode/platform/cc2530dk/./contiki-main.c:272: if(sleep_flag) {
      0003BE 90 03 4F         [24] 1715 	mov	dptr,#_sleep_flag
      0003C1 E0               [24] 1716 	movx	a,@dptr
      0003C2 FF               [12] 1717 	mov	r7,a
      0003C3 60 3F            [24] 1718 	jz	00115$
                                   1719 ;	../contiki-sensinode/platform/cc2530dk/./contiki-main.c:273: if(etimer_pending() &&
      0003C5 12 1B D9         [24] 1720 	lcall	_etimer_pending
      0003C8 E5 82            [12] 1721 	mov	a,dpl
      0003CA 85 83 F0         [24] 1722 	mov	b,dph
      0003CD 45 F0            [12] 1723 	orl	a,b
      0003CF 60 2E            [24] 1724 	jz	00112$
                                   1725 ;	../contiki-sensinode/platform/cc2530dk/./contiki-main.c:274: (etimer_next_expiration_time() - clock_time() - 1) > MAX_TICKS) {
      0003D1 12 1C 0F         [24] 1726 	lcall	_etimer_next_expiration_time
      0003D4 AE 82            [24] 1727 	mov	r6,dpl
      0003D6 AF 83            [24] 1728 	mov	r7,dph
      0003D8 C0 07            [24] 1729 	push	ar7
      0003DA C0 06            [24] 1730 	push	ar6
      0003DC 12 61 3C         [24] 1731 	lcall	_clock_time
      0003DF AC 82            [24] 1732 	mov	r4,dpl
      0003E1 AD 83            [24] 1733 	mov	r5,dph
      0003E3 D0 06            [24] 1734 	pop	ar6
      0003E5 D0 07            [24] 1735 	pop	ar7
      0003E7 EE               [12] 1736 	mov	a,r6
      0003E8 C3               [12] 1737 	clr	c
      0003E9 9C               [12] 1738 	subb	a,r4
      0003EA FE               [12] 1739 	mov	r6,a
      0003EB EF               [12] 1740 	mov	a,r7
      0003EC 9D               [12] 1741 	subb	a,r5
      0003ED FF               [12] 1742 	mov	r7,a
      0003EE 1E               [12] 1743 	dec	r6
      0003EF BE FF 01         [24] 1744 	cjne	r6,#0xFF,00173$
      0003F2 1F               [12] 1745 	dec	r7
      0003F3                       1746 00173$:
      0003F3 C3               [12] 1747 	clr	c
      0003F4 74 FF            [12] 1748 	mov	a,#0xFF
      0003F6 9E               [12] 1749 	subb	a,r6
      0003F7 74 7F            [12] 1750 	mov	a,#0x7F
      0003F9 9F               [12] 1751 	subb	a,r7
      0003FA 50 03            [24] 1752 	jnc	00112$
                                   1753 ;	../contiki-sensinode/platform/cc2530dk/./contiki-main.c:275: etimer_request_poll();
      0003FC 12 19 89         [24] 1754 	lcall	_etimer_request_poll
      0003FF                       1755 00112$:
                                   1756 ;	../contiki-sensinode/platform/cc2530dk/./contiki-main.c:277: sleep_flag = 0;
      0003FF 90 03 4F         [24] 1757 	mov	dptr,#_sleep_flag
      000402 E4               [12] 1758 	clr	a
      000403 F0               [24] 1759 	movx	@dptr,a
      000404                       1760 00115$:
                                   1761 ;	../contiki-sensinode/platform/cc2530dk/./contiki-main.c:280: r = process_run();
      000404 12 4E C3         [24] 1762 	lcall	_process_run
      000407 AE 82            [24] 1763 	mov	r6,dpl
      000409 AF 83            [24] 1764 	mov	r7,dph
                                   1765 ;	../contiki-sensinode/platform/cc2530dk/./contiki-main.c:281: } while(r > 0);
      00040B EE               [12] 1766 	mov	a,r6
      00040C 70 AD            [24] 1767 	jnz	00116$
                                   1768 ;	../contiki-sensinode/platform/cc2530dk/./contiki-main.c:282: len = NETSTACK_RADIO.pending_packet();
      00040E 90 E1 07         [24] 1769 	mov	dptr,#(_cc2530_rf_driver + 0x000e)
      000411 E4               [12] 1770 	clr	a
      000412 93               [24] 1771 	movc	a,@a+dptr
      000413 FE               [12] 1772 	mov	r6,a
      000414 A3               [24] 1773 	inc	dptr
      000415 E4               [12] 1774 	clr	a
      000416 93               [24] 1775 	movc	a,@a+dptr
      000417 FF               [12] 1776 	mov	r7,a
      000418 C0 07            [24] 1777 	push	ar7
      00041A C0 06            [24] 1778 	push	ar6
      00041C 8E 82            [24] 1779 	mov	dpl,r6
      00041E 8F 83            [24] 1780 	mov	dph,r7
      000420 12 00 81         [24] 1781 	lcall	__sdcc_call_dptr
      000423 85 82 08         [24] 1782 	mov	_len,dpl
      000426 85 83 09         [24] 1783 	mov	(_len + 1),dph
      000429 D0 06            [24] 1784 	pop	ar6
      00042B D0 07            [24] 1785 	pop	ar7
                                   1786 ;	../contiki-sensinode/platform/cc2530dk/./contiki-main.c:283: if(len) {
      00042D E5 08            [12] 1787 	mov	a,_len
      00042F 45 09            [12] 1788 	orl	a,(_len + 1)
      000431 60 88            [24] 1789 	jz	00116$
                                   1790 ;	../contiki-sensinode/platform/cc2530dk/./contiki-main.c:284: packetbuf_clear();
      000433 12 63 2A         [24] 1791 	lcall	_packetbuf_clear
                                   1792 ;	../contiki-sensinode/platform/cc2530dk/./contiki-main.c:285: len = NETSTACK_RADIO.read(packetbuf_dataptr(), PACKETBUF_SIZE);
      000436 90 E1 01         [24] 1793 	mov	dptr,#(_cc2530_rf_driver + 0x0008)
      000439 E4               [12] 1794 	clr	a
      00043A 93               [24] 1795 	movc	a,@a+dptr
      00043B FE               [12] 1796 	mov	r6,a
      00043C A3               [24] 1797 	inc	dptr
      00043D E4               [12] 1798 	clr	a
      00043E 93               [24] 1799 	movc	a,@a+dptr
      00043F FF               [12] 1800 	mov	r7,a
      000440 C0 07            [24] 1801 	push	ar7
      000442 C0 06            [24] 1802 	push	ar6
      000444 12 67 0E         [24] 1803 	lcall	_packetbuf_dataptr
      000447 AB 82            [24] 1804 	mov	r3,dpl
      000449 AC 83            [24] 1805 	mov	r4,dph
      00044B AD F0            [24] 1806 	mov	r5,b
      00044D D0 06            [24] 1807 	pop	ar6
      00044F D0 07            [24] 1808 	pop	ar7
      000451 C0 07            [24] 1809 	push	ar7
      000453 C0 06            [24] 1810 	push	ar6
      000455 74 80            [12] 1811 	mov	a,#0x80
      000457 C0 E0            [24] 1812 	push	acc
      000459 E4               [12] 1813 	clr	a
      00045A C0 E0            [24] 1814 	push	acc
      00045C 12 04 61         [24] 1815 	lcall	00177$
      00045F 80 0B            [24] 1816 	sjmp	00178$
      000461                       1817 00177$:
      000461 C0 06            [24] 1818 	push	ar6
      000463 C0 07            [24] 1819 	push	ar7
      000465 8B 82            [24] 1820 	mov	dpl,r3
      000467 8C 83            [24] 1821 	mov	dph,r4
      000469 8D F0            [24] 1822 	mov	b,r5
      00046B 22               [24] 1823 	ret
      00046C                       1824 00178$:
      00046C 85 82 08         [24] 1825 	mov	_len,dpl
      00046F 85 83 09         [24] 1826 	mov	(_len + 1),dph
      000472 15 81            [12] 1827 	dec	sp
      000474 15 81            [12] 1828 	dec	sp
      000476 D0 06            [24] 1829 	pop	ar6
      000478 D0 07            [24] 1830 	pop	ar7
                                   1831 ;	../contiki-sensinode/platform/cc2530dk/./contiki-main.c:286: if(len > 0) {
      00047A E5 08            [12] 1832 	mov	a,_len
      00047C 45 09            [12] 1833 	orl	a,(_len + 1)
      00047E 70 03            [24] 1834 	jnz	00179$
      000480 02 03 BB         [24] 1835 	ljmp	00116$
      000483                       1836 00179$:
                                   1837 ;	../contiki-sensinode/platform/cc2530dk/./contiki-main.c:287: packetbuf_set_datalen(len);
      000483 85 08 82         [24] 1838 	mov	dpl,_len
      000486 85 09 83         [24] 1839 	mov	dph,(_len + 1)
      000489 12 67 02         [24] 1840 	lcall	_packetbuf_set_datalen
                                   1841 ;	../contiki-sensinode/platform/cc2530dk/./contiki-main.c:288: NETSTACK_RDC.input();
      00048C 90 E1 52         [24] 1842 	mov	dptr,#(_nullrdc_driver + 0x0009)
      00048F E4               [12] 1843 	clr	a
      000490 93               [24] 1844 	movc	a,@a+dptr
      000491 FE               [12] 1845 	mov	r6,a
      000492 A3               [24] 1846 	inc	dptr
      000493 E4               [12] 1847 	clr	a
      000494 93               [24] 1848 	movc	a,@a+dptr
      000495 FF               [12] 1849 	mov	r7,a
      000496 C0 07            [24] 1850 	push	ar7
      000498 C0 06            [24] 1851 	push	ar6
      00049A 8E 82            [24] 1852 	mov	dpl,r6
      00049C 8F 83            [24] 1853 	mov	dph,r7
      00049E 12 00 81         [24] 1854 	lcall	__sdcc_call_dptr
      0004A1 D0 06            [24] 1855 	pop	ar6
      0004A3 D0 07            [24] 1856 	pop	ar7
      0004A5 02 03 BB         [24] 1857 	ljmp	00116$
                                   1858 	.area CSEG    (CODE)
                                   1859 	.area CONST   (CODE)
      00DFA7                       1860 ___str_0:
      00DFA7 43 6F 6E 74 69 6B 69  1861 	.ascii "Contiki 2.6"
             20 32 2E 36
      00DFB2 0A                    1862 	.db 0x0A
      00DFB3 00                    1863 	.db 0x00
      00DFB4                       1864 ___str_1:
      00DFB4 54 49 20 63 63 32 35  1865 	.ascii "TI cc2531 USB Dongle"
             33 31 20 55 53 42 20
             44 6F 6E 67 6C 65
      00DFC8 0A                    1866 	.db 0x0A
      00DFC9 00                    1867 	.db 0x00
      00DFCA                       1868 ___str_2:
      00DFCA 63 63 32 35 33 30     1869 	.ascii "cc2530"
      00DFD0 00                    1870 	.db 0x00
      00DFD1                       1871 ___str_3:
      00DFD1 63 63 32 35 33 31     1872 	.ascii "cc2531"
      00DFD7 00                    1873 	.db 0x00
      00DFD8                       1874 ___str_4:
      00DFD8 63 63 32 35 33 33     1875 	.ascii "cc2533"
      00DFDE 00                    1876 	.db 0x00
      00DFDF                       1877 ___str_5:
      00DFDF 63 63 32 35 34 30     1878 	.ascii "cc2540"
      00DFE5 00                    1879 	.db 0x00
      00DFE6                       1880 ___str_6:
      00DFE6 2D 46 32 35 36 2C 20  1881 	.ascii "-F256, "
      00DFED 00                    1882 	.db 0x00
      00DFEE                       1883 ___str_7:
      00DFEE 4B 42 20 53 52 41 4D  1884 	.ascii "KB SRAM"
      00DFF5 0A                    1885 	.db 0x0A
      00DFF6 00                    1886 	.db 0x00
                                   1887 	.area XINIT   (CODE)
                                   1888 	.area CABS    (ABS,CODE)
