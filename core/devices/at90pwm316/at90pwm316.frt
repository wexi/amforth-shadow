\ Partname: AT90PWM316
\ generated automatically

\ PORTB
&37 constant PORTB	\ Port B Data Register
&36 constant DDRB	\ Port B Data Direction Register
&35 constant PINB	\ Port B Input Pins
\ PORTC
&40 constant PORTC	\ Port C Data Register
&39 constant DDRC	\ Port C Data Direction Register
&38 constant PINC	\ Port C Input Pins
\ PORTD
&43 constant PORTD	\ Port D Data Register
&42 constant DDRD	\ Port D Data Direction Register
&41 constant PIND	\ Port D Input Pins
\ BOOT_LOAD
&87 constant SPMCSR	\ Store Program Memory Control Register
  $80 constant SPMCSR_SPMIE \ SPM Interrupt Enable
  $40 constant SPMCSR_RWWSB \ Read While Write Section Busy
  $10 constant SPMCSR_RWWSRE \ Read While Write section read enable
  $08 constant SPMCSR_BLBSET \ Boot Lock Bit Set
  $04 constant SPMCSR_PGWRT \ Page Write
  $02 constant SPMCSR_PGERS \ Page Erase
  $01 constant SPMCSR_SPMEN \ Store Program Memory Enable
\ EUSART
&206 constant EUDR	\ EUSART I/O Data Register
&200 constant EUCSRA	\ EUSART Control and Status Register A
  $F0 constant EUCSRA_UTxS \ EUSART Control and Status Register A Bits
  $0F constant EUCSRA_URxS \ EUSART Control and Status Register A Bits
&201 constant EUCSRB	\ EUSART Control Register B
  $10 constant EUCSRB_EUSART \ EUSART Enable Bit
  $08 constant EUCSRB_EUSBS \ EUSBS Enable Bit
  $02 constant EUCSRB_EMCH \ Manchester Mode Bit
  $01 constant EUCSRB_BODR \ Order Bit
&202 constant EUCSRC	\ EUSART Status Register C
  $08 constant EUCSRC_FEM \ Frame Error Manchester Bit
  $04 constant EUCSRC_F1617 \ F1617 Bit
  $03 constant EUCSRC_STP \ Stop Bits
&205 constant MUBRRH	\ Manchester Receiver Baud Rate Register High Byte
  $FF constant MUBRRH_MUBRR \ Manchester Receiver Baud Rate Register Bits
&204 constant MUBRRL	\ Manchester Receiver Baud Rate Register Low Byte
  $FF constant MUBRRL_MUBRR \ Manchester Receiver Baud Rate Register Bits
\ ANALOG_COMPARATOR
&173 constant AC0CON	\ Analog Comparator 0 Control Register
  $80 constant AC0CON_AC0EN \ Analog Comparator 0 Enable Bit
  $40 constant AC0CON_AC0IE \ Analog Comparator 0 Interrupt Enable Bit
  $30 constant AC0CON_AC0IS \ Analog Comparator 0  Interrupt Select Bit
  $07 constant AC0CON_AC0M \ Analog Comparator 0 Multiplexer Register
&174 constant AC1CON	\ Analog Comparator 1 Control Register
  $80 constant AC1CON_AC1EN \ Analog Comparator 1 Enable Bit
  $40 constant AC1CON_AC1IE \ Analog Comparator 1 Interrupt Enable Bit
  $30 constant AC1CON_AC1IS \ Analog Comparator 1  Interrupt Select Bit
  $08 constant AC1CON_AC1ICE \ Analog Comparator 1 Interrupt Capture Enable Bit
  $07 constant AC1CON_AC1M \ Analog Comparator 1 Multiplexer Register
&175 constant AC2CON	\ Analog Comparator 2 Control Register
  $80 constant AC2CON_AC2EN \ Analog Comparator 2 Enable Bit
  $40 constant AC2CON_AC2IE \ Analog Comparator 2 Interrupt Enable Bit
  $30 constant AC2CON_AC2IS \ Analog Comparator 2  Interrupt Select Bit
  $07 constant AC2CON_AC2M \ Analog Comparator 2 Multiplexer Register
&80 constant ACSR	\ Analog Comparator Status Register
  $80 constant ACSR_ACCKDIV \ Analog Comparator Clock Divider
  $40 constant ACSR_AC2IF \ Analog Comparator 2 Interrupt Flag Bit
  $20 constant ACSR_AC1IF \ Analog Comparator 1  Interrupt Flag Bit
  $10 constant ACSR_AC0IF \ Analog Comparator 0 Interrupt Flag Bit
  $04 constant ACSR_AC2O \ Analog Comparator 2 Output Bit
  $02 constant ACSR_AC1O \ Analog Comparator 1 Output Bit
  $01 constant ACSR_AC0O \ Analog Comparator 0 Output Bit
\ DA_CONVERTER
&172 constant DACH	\ DAC Data Register High Byte
  $FF constant DACH_DACH \ DAC Data Register High Byte Bits
&171 constant DACL	\ DAC Data Register Low Byte
  $FF constant DACL_DACL \ DAC Data Register Low Byte Bits
&170 constant DACON	\ DAC Control Register
  $80 constant DACON_DAATE \ DAC Auto Trigger Enable Bit
  $70 constant DACON_DATS \ DAC Trigger Selection Bits
  $04 constant DACON_DALA \ DAC Left Adjust
  $01 constant DACON_DAEN \ DAC Enable Bit
\ CPU
&95 constant SREG	\ Status Register
  $80 constant SREG_I \ Global Interrupt Enable
  $40 constant SREG_T \ Bit Copy Storage
  $20 constant SREG_H \ Half Carry Flag
  $10 constant SREG_S \ Sign Bit
  $08 constant SREG_V \ Two's Complement Overflow Flag
  $04 constant SREG_N \ Negative Flag
  $02 constant SREG_Z \ Zero Flag
  $01 constant SREG_C \ Carry Flag
&93 constant SP	\ Stack Pointer 
&85 constant MCUCR	\ MCU Control Register
  $80 constant MCUCR_SPIPS \ SPI Pin Select
  $10 constant MCUCR_PUD \ Pull-up disable
  $02 constant MCUCR_IVSEL \ Interrupt Vector Select
  $01 constant MCUCR_IVCE \ Interrupt Vector Change Enable
&84 constant MCUSR	\ MCU Status Register
  $08 constant MCUSR_WDRF \ Watchdog Reset Flag
  $04 constant MCUSR_BORF \ Brown-out Reset Flag
  $02 constant MCUSR_EXTRF \ External Reset Flag
  $01 constant MCUSR_PORF \ Power-on reset flag
&102 constant OSCCAL	\ Oscillator Calibration Value
&97 constant CLKPR	\ 
  $80 constant CLKPR_CLKPCE \ 
  $0F constant CLKPR_CLKPS \ 
&83 constant SMCR	\ Sleep Mode Control Register
  $0E constant SMCR_SM \ Sleep Mode Select bits
  $01 constant SMCR_SE \ Sleep Enable
&59 constant GPIOR3	\ General Purpose IO Register 3
  $FF constant GPIOR3_GPIOR \ General Purpose IO Register 3 bis
&58 constant GPIOR2	\ General Purpose IO Register 2
  $FF constant GPIOR2_GPIOR \ General Purpose IO Register 2 bis
&57 constant GPIOR1	\ General Purpose IO Register 1
  $FF constant GPIOR1_GPIOR \ General Purpose IO Register 1 bis
&62 constant GPIOR0	\ General Purpose IO Register 0
  $80 constant GPIOR0_GPIOR07 \ General Purpose IO Register 0 bit 7
  $40 constant GPIOR0_GPIOR06 \ General Purpose IO Register 0 bit 6
  $20 constant GPIOR0_GPIOR05 \ General Purpose IO Register 0 bit 5
  $10 constant GPIOR0_GPIOR04 \ General Purpose IO Register 0 bit 4
  $08 constant GPIOR0_GPIOR03 \ General Purpose IO Register 0 bit 3
  $04 constant GPIOR0_GPIOR02 \ General Purpose IO Register 0 bit 2
  $02 constant GPIOR0_GPIOR01 \ General Purpose IO Register 0 bit 1
  $01 constant GPIOR0_GPIOR00 \ General Purpose IO Register 0 bit 0
&73 constant PLLCSR	\ PLL Control And Status Register
  $04 constant PLLCSR_PLLF \ PLL Factor
  $02 constant PLLCSR_PLLE \ PLL Enable
  $01 constant PLLCSR_PLOCK \ PLL Lock Detector
&100 constant PRR	\ Power Reduction Register
  $E0 constant PRR_PRPSC \ Power Reduction PSC2
  $10 constant PRR_PRTIM1 \ Power Reduction Timer/Counter1
  $08 constant PRR_PRTIM0 \ Power Reduction Timer/Counter0
  $04 constant PRR_PRSPI \ Power Reduction Serial Peripheral Interface
  $02 constant PRR_PRUSART0 \ Power Reduction USART
  $01 constant PRR_PRADC \ Power Reduction ADC
\ PORTE
&46 constant PORTE	\ Port E Data Register
&45 constant DDRE	\ Port E Data Direction Register
&44 constant PINE	\ Port E Input Pins
\ TIMER_COUNTER_0
&110 constant TIMSK0	\ Timer/Counter0 Interrupt Mask Register
  $04 constant TIMSK0_OCIE0B \ Timer/Counter0 Output Compare Match B Interrupt Enable
  $02 constant TIMSK0_OCIE0A \ Timer/Counter0 Output Compare Match A Interrupt Enable
  $01 constant TIMSK0_TOIE0 \ Timer/Counter0 Overflow Interrupt Enable
&53 constant TIFR0	\ Timer/Counter0 Interrupt Flag register
  $04 constant TIFR0_OCF0B \ Timer/Counter0 Output Compare Flag 0B
  $02 constant TIFR0_OCF0A \ Timer/Counter0 Output Compare Flag 0A
  $01 constant TIFR0_TOV0 \ Timer/Counter0 Overflow Flag
&68 constant TCCR0A	\ Timer/Counter  Control Register A
  $C0 constant TCCR0A_COM0A \ Compare Output Mode, Phase Correct PWM Mode
  $30 constant TCCR0A_COM0B \ Compare Output Mode, Fast PWm
  $03 constant TCCR0A_WGM0 \ Waveform Generation Mode
&69 constant TCCR0B	\ Timer/Counter Control Register B
  $80 constant TCCR0B_FOC0A \ Force Output Compare A
  $40 constant TCCR0B_FOC0B \ Force Output Compare B
  $08 constant TCCR0B_WGM02 \ 
  $07 constant TCCR0B_CS0 \ Clock Select
&70 constant TCNT0	\ Timer/Counter0
&71 constant OCR0A	\ Timer/Counter0 Output Compare Register
&72 constant OCR0B	\ Timer/Counter0 Output Compare Register
&67 constant GTCCR	\ General Timer/Counter Control Register
  $80 constant GTCCR_TSM \ Timer/Counter Synchronization Mode
  $40 constant GTCCR_ICPSEL1 \ Timer1 Input Capture Selection Bit
  $01 constant GTCCR_PSR10 \ Prescaler Reset Timer/Counter1 and Timer/Counter0
\ TIMER_COUNTER_1
&111 constant TIMSK1	\ Timer/Counter Interrupt Mask Register
  $20 constant TIMSK1_ICIE1 \ Timer/Counter1 Input Capture Interrupt Enable
  $04 constant TIMSK1_OCIE1B \ Timer/Counter1 Output CompareB Match Interrupt Enable
  $02 constant TIMSK1_OCIE1A \ Timer/Counter1 Output CompareA Match Interrupt Enable
  $01 constant TIMSK1_TOIE1 \ Timer/Counter1 Overflow Interrupt Enable
&54 constant TIFR1	\ Timer/Counter Interrupt Flag register
  $20 constant TIFR1_ICF1 \ Input Capture Flag 1
  $04 constant TIFR1_OCF1B \ Output Compare Flag 1B
  $02 constant TIFR1_OCF1A \ Output Compare Flag 1A
  $01 constant TIFR1_TOV1 \ Timer/Counter1 Overflow Flag
&128 constant TCCR1A	\ Timer/Counter1 Control Register A
  $C0 constant TCCR1A_COM1A \ Compare Output Mode 1A, bits
  $30 constant TCCR1A_COM1B \ Compare Output Mode 1B, bits
  $03 constant TCCR1A_WGM1 \ Waveform Generation Mode
&129 constant TCCR1B	\ Timer/Counter1 Control Register B
  $80 constant TCCR1B_ICNC1 \ Input Capture 1 Noise Canceler
  $40 constant TCCR1B_ICES1 \ Input Capture 1 Edge Select
  $18 constant TCCR1B_WGM1 \ Waveform Generation Mode
  $07 constant TCCR1B_CS1 \ Prescaler source of Timer/Counter 1
&130 constant TCCR1C	\ Timer/Counter1 Control Register C
  $80 constant TCCR1C_FOC1A \ 
  $40 constant TCCR1C_FOC1B \ 
&132 constant TCNT1	\ Timer/Counter1  Bytes
&136 constant OCR1A	\ Timer/Counter1 Output Compare Register  Bytes
&138 constant OCR1B	\ Timer/Counter1 Output Compare Register  Bytes
&134 constant ICR1	\ Timer/Counter1 Input Capture Register  Bytes
\ AD_CONVERTER
&124 constant ADMUX	\ The ADC multiplexer Selection Register
  $C0 constant ADMUX_REFS \ Reference Selection Bits
  $20 constant ADMUX_ADLAR \ Left Adjust Result
  $0F constant ADMUX_MUX \ Analog Channel and Gain Selection Bits
&122 constant ADCSRA	\ The ADC Control and Status register
  $80 constant ADCSRA_ADEN \ ADC Enable
  $40 constant ADCSRA_ADSC \ ADC Start Conversion
  $20 constant ADCSRA_ADATE \ ADC Auto Trigger Enable
  $10 constant ADCSRA_ADIF \ ADC Interrupt Flag
  $08 constant ADCSRA_ADIE \ ADC Interrupt Enable
  $07 constant ADCSRA_ADPS \ ADC  Prescaler Select Bits
&120 constant ADC	\ ADC Data Register  Bytes
&123 constant ADCSRB	\ ADC Control and Status Register B
&126 constant DIDR0	\ Digital Input Disable Register 0
&127 constant DIDR1	\ Digital Input Disable Register 0
  $20 constant DIDR1_ACMP0D \ 
  $10 constant DIDR1_AMP0PD \ 
  $08 constant DIDR1_AMP0ND \ 
  $04 constant DIDR1_ADC10D \ 
  $02 constant DIDR1_ADC9D \ 
  $01 constant DIDR1_ADC8D \ 
&118 constant AMP0CSR	\ 
  $80 constant AMP0CSR_AMP0EN \ 
  $40 constant AMP0CSR_AMP0IS \ 
  $30 constant AMP0CSR_AMP0G \ 
  $03 constant AMP0CSR_AMP0TS \ 
&119 constant AMP1CSR	\ 
  $80 constant AMP1CSR_AMP1EN \ 
  $40 constant AMP1CSR_AMP1IS \ 
  $30 constant AMP1CSR_AMP1G \ 
  $03 constant AMP1CSR_AMP1TS \ 
\ USART
&198 constant UDR	\ USART I/O Data Register
&192 constant UCSRA	\ USART Control and Status register A
  $80 constant UCSRA_RXC \ USART Receive Complete
  $40 constant UCSRA_TXC \ USART Transmitt Complete
  $20 constant UCSRA_UDRE \ USART Data Register Empty
  $10 constant UCSRA_FE \ Framing Error
  $08 constant UCSRA_DOR \ Data Overrun
  $04 constant UCSRA_UPE \ USART Parity Error
  $02 constant UCSRA_U2X \ Double USART Transmission Bit
  $01 constant UCSRA_MPCM \ Multi-processor Communication Mode
&193 constant UCSRB	\ USART Control an Status register B
  $80 constant UCSRB_RXCIE \ RX Complete Interrupt Enable
  $40 constant UCSRB_TXCIE \ TX Complete Interrupt Enable
  $20 constant UCSRB_UDRIE \ USART Data Register Empty Interrupt Enable
  $10 constant UCSRB_RXEN \ Receiver Enable
  $08 constant UCSRB_TXEN \ Transmitter Enable
  $04 constant UCSRB_UCSZ2 \ Character Size
  $02 constant UCSRB_RXB8 \ Receive Data Bit 8
  $01 constant UCSRB_TXB8 \ Transmit Data Bit 8
&194 constant UCSRC	\ USART Control an Status register C
  $40 constant UCSRC_UMSEL0 \ USART Mode Select
  $30 constant UCSRC_UPM \ Parity Mode Bits
  $08 constant UCSRC_USBS \ Stop Bit Select
  $06 constant UCSRC_UCSZ \ Character Size Bits
  $01 constant UCSRC_UCPOL \ Clock Polarity
&197 constant UBRRH	\ USART Baud Rate Register High Byte
  $0F constant UBRRH_UBRR \ USART Baud Rate Register Bits
&196 constant UBRRL	\ USART Baud Rate Register Low Byte
  $FF constant UBRRL_UBRR \ USART Baud Rate Register bits
\ SPI
&76 constant SPCR	\ SPI Control Register
  $80 constant SPCR_SPIE \ SPI Interrupt Enable
  $40 constant SPCR_SPE \ SPI Enable
  $20 constant SPCR_DORD \ Data Order
  $10 constant SPCR_MSTR \ Master/Slave Select
  $08 constant SPCR_CPOL \ Clock polarity
  $04 constant SPCR_CPHA \ Clock Phase
  $03 constant SPCR_SPR \ SPI Clock Rate Selects
&77 constant SPSR	\ SPI Status Register
  $80 constant SPSR_SPIF \ SPI Interrupt Flag
  $40 constant SPSR_WCOL \ Write Collision Flag
  $01 constant SPSR_SPI2X \ Double SPI Speed Bit
&78 constant SPDR	\ SPI Data Register
\ WATCHDOG
&96 constant WDTCSR	\ Watchdog Timer Control Register
  $80 constant WDTCSR_WDIF \ Watchdog Timeout Interrupt Flag
  $40 constant WDTCSR_WDIE \ Watchdog Timeout Interrupt Enable
  $27 constant WDTCSR_WDP \ Watchdog Timer Prescaler Bits
  $10 constant WDTCSR_WDCE \ Watchdog Change Enable
  $08 constant WDTCSR_WDE \ Watch Dog Enable
\ EXTERNAL_INTERRUPT
&105 constant EICRA	\ External Interrupt Control Register A
  $C0 constant EICRA_ISC3 \ External Interrupt Sense Control Bit
  $30 constant EICRA_ISC2 \ External Interrupt Sense Control Bit
  $0C constant EICRA_ISC1 \ External Interrupt Sense Control Bit
  $03 constant EICRA_ISC0 \ External Interrupt Sense Control Bit
&61 constant EIMSK	\ External Interrupt Mask Register
  $0F constant EIMSK_INT \ External Interrupt Request 3 Enable
&60 constant EIFR	\ External Interrupt Flag Register
  $0F constant EIFR_INTF \ External Interrupt Flags
\ EEPROM
&65 constant EEAR	\ EEPROM Read/Write Access  Bytes
&64 constant EEDR	\ EEPROM Data Register
&63 constant EECR	\ EEPROM Control Register
  $08 constant EECR_EERIE \ EEPROM Ready Interrupt Enable
  $04 constant EECR_EEMWE \ EEPROM Master Write Enable
  $02 constant EECR_EEWE \ EEPROM Write Enable
  $01 constant EECR_EERE \ EEPROM Read Enable
\ PSC0
&222 constant PICR0	\ PSC 0 Input Capture Register 
&221 constant PFRC0B	\ PSC 0 Input B Control
  $80 constant PFRC0B_PCAE0B \ PSC 0 Capture Enable Input Part B
  $40 constant PFRC0B_PISEL0B \ PSC 0 Input Select for Part B
  $20 constant PFRC0B_PELEV0B \ PSC 0 Edge Level Selector on Input Part B
  $10 constant PFRC0B_PFLTE0B \ PSC 0 Filter Enable on Input Part B
  $0F constant PFRC0B_PRFM0B \ PSC 0 Retrigger and Fault Mode for Part B
&220 constant PFRC0A	\ PSC 0 Input A Control
  $80 constant PFRC0A_PCAE0A \ PSC 0 Capture Enable Input Part A
  $40 constant PFRC0A_PISEL0A \ PSC 0 Input Select for Part A
  $20 constant PFRC0A_PELEV0A \ PSC 0 Edge Level Selector on Input Part A
  $10 constant PFRC0A_PFLTE0A \ PSC 0 Filter Enable on Input Part A
  $0F constant PFRC0A_PRFM0A \ PSC 0 Retrigger and Fault Mode for Part A
&219 constant PCTL0	\ PSC 0 Control Register
  $C0 constant PCTL0_PPRE0 \ PSC 0 Prescaler Selects
  $20 constant PCTL0_PBFM0 \ PSC 0 Balance Flank Width Modulation
  $10 constant PCTL0_PAOC0B \ PSC 0 Asynchronous Output Control B
  $08 constant PCTL0_PAOC0A \ PSC 0 Asynchronous Output Control A
  $04 constant PCTL0_PARUN0 \ PSC0 Auto Run
  $02 constant PCTL0_PCCYC0 \ PSC0 Complete Cycle
  $01 constant PCTL0_PRUN0 \ PSC 0 Run
&218 constant PCNF0	\ PSC 0 Configuration Register
  $80 constant PCNF0_PFIFTY0 \ PSC 0 Fifty
  $40 constant PCNF0_PALOCK0 \ PSC 0 Autolock
  $20 constant PCNF0_PLOCK0 \ PSC 0 Lock
  $18 constant PCNF0_PMODE0 \ PSC 0 Mode
  $04 constant PCNF0_POP0 \ PSC 0 Output Polarity
  $02 constant PCNF0_PCLKSEL0 \ PSC 0 Input Clock Select
&216 constant OCR0RB	\ Output Compare RB Register 
&214 constant OCR0SB	\ Output Compare SB Register 
&212 constant OCR0RA	\ Output Compare RA Register 
&210 constant OCR0SA	\ Output Compare SA Register 
&208 constant PSOC0	\ PSC0 Synchro and Output Configuration
  $30 constant PSOC0_PSYNC0 \ Synchronization Out for ADC Selection
  $04 constant PSOC0_POEN0B \ PSCOUT01 Output Enable
  $01 constant PSOC0_POEN0A \ PSCOUT00 Output Enable
&161 constant PIM0	\ PSC0 Interrupt Mask Register
  $20 constant PIM0_PSEIE0 \ PSC 0 Synchro Error Interrupt Enable
  $10 constant PIM0_PEVE0B \ External Event B Interrupt Enable
  $08 constant PIM0_PEVE0A \ External Event A Interrupt Enable
  $01 constant PIM0_PEOPE0 \ End of Cycle Interrupt Enable
&160 constant PIFR0	\ PSC0 Interrupt Flag Register
  $80 constant PIFR0_POAC0B \ PSC 0 Output A Activity
  $40 constant PIFR0_POAC0A \ PSC 0 Output A Activity
  $20 constant PIFR0_PSEI0 \ PSC 0 Synchro Error Interrupt
  $10 constant PIFR0_PEV0B \ External Event B Interrupt
  $08 constant PIFR0_PEV0A \ External Event A Interrupt
  $06 constant PIFR0_PRN0 \ Ramp Number
  $01 constant PIFR0_PEOP0 \ End of PSC0 Interrupt
\ PSC1
&238 constant PICR1	\ PSC 1 Input Capture Register 
&237 constant PFRC1B	\ PSC 1 Input B Control
  $80 constant PFRC1B_PCAE1B \ PSC 1 Capture Enable Input Part B
  $40 constant PFRC1B_PISEL1B \ PSC 1 Input Select for Part B
  $20 constant PFRC1B_PELEV1B \ PSC 1 Edge Level Selector on Input Part B
  $10 constant PFRC1B_PFLTE1B \ PSC 1 Filter Enable on Input Part B
  $0F constant PFRC1B_PRFM1B \ PSC 1 Retrigger and Fault Mode for Part B
&236 constant PFRC1A	\ PSC 1 Input B Control
  $80 constant PFRC1A_PCAE1A \ PSC 1 Capture Enable Input Part A
  $40 constant PFRC1A_PISEL1A \ PSC 1 Input Select for Part A
  $20 constant PFRC1A_PELEV1A \ PSC 1 Edge Level Selector on Input Part A
  $10 constant PFRC1A_PFLTE1A \ PSC 1 Filter Enable on Input Part A
  $0F constant PFRC1A_PRFM1A \ PSC 1 Retrigger and Fault Mode for Part A
&235 constant PCTL1	\ PSC 1 Control Register
  $C0 constant PCTL1_PPRE1 \ PSC 1 Prescaler Selects
  $20 constant PCTL1_PBFM1 \ Balance Flank Width Modulation
  $10 constant PCTL1_PAOC1B \ PSC 1 Asynchronous Output Control B
  $08 constant PCTL1_PAOC1A \ PSC 1 Asynchronous Output Control A
  $04 constant PCTL1_PARUN1 \ PSC1 Auto Run
  $02 constant PCTL1_PCCYC1 \ PSC1 Complete Cycle
  $01 constant PCTL1_PRUN1 \ PSC 1 Run
&234 constant PCNF1	\ PSC 1 Configuration Register
  $80 constant PCNF1_PFIFTY1 \ PSC 1 Fifty
  $40 constant PCNF1_PALOCK1 \ PSC 1 Autolock
  $20 constant PCNF1_PLOCK1 \ PSC 1 Lock
  $18 constant PCNF1_PMODE1 \ PSC 1 Mode
  $04 constant PCNF1_POP1 \ PSC 1 Output Polarity
  $02 constant PCNF1_PCLKSEL1 \ PSC 1 Input Clock Select
&232 constant OCR1RB	\ Output Compare RB Register 
&230 constant OCR1SB	\ Output Compare SB Register 
&228 constant OCR1RA	\ Output Compare RA Register 
&226 constant OCR1SA	\ Output Compare SA Register 
&224 constant PSOC1	\ PSC1 Synchro and Output Configuration
  $30 constant PSOC1_PSYNC1_ \ Synchronization Out for ADC Selection
  $04 constant PSOC1_POEN1B \ PSCOUT11 Output Enable
  $01 constant PSOC1_POEN1A \ PSCOUT10 Output Enable
&163 constant PIM1	\ PSC1 Interrupt Mask Register
  $20 constant PIM1_PSEIE1 \ PSC 1 Synchro Error Interrupt Enable
  $10 constant PIM1_PEVE1B \ External Event B Interrupt Enable
  $08 constant PIM1_PEVE1A \ External Event A Interrupt Enable
  $01 constant PIM1_PEOPE1 \ End of Cycle Interrupt Enable
&162 constant PIFR1	\ PSC1 Interrupt Flag Register
  $80 constant PIFR1_POAC1B \ PSC 1 Output B Activity
  $40 constant PIFR1_POAC1A \ PSC 1 Output A Activity
  $20 constant PIFR1_PSEI1 \ PSC 1 Synchro Error Interrupt
  $10 constant PIFR1_PEV1B \ External Event B Interrupt
  $08 constant PIFR1_PEV1A \ External Event A Interrupt
  $06 constant PIFR1_PRN1 \ Ramp Number
  $01 constant PIFR1_PEOP1 \ End of PSC1 Interrupt
\ PSC2
&254 constant PICR2	\ PSC 2 Input Capture Register 
&253 constant PFRC2B	\ PSC 2 Input B Control
  $80 constant PFRC2B_PCAE2B \ PSC 2 Capture Enable Input Part B
  $40 constant PFRC2B_PISEL2B \ PSC 2 Input Select for Part B
  $20 constant PFRC2B_PELEV2B \ PSC 2 Edge Level Selector on Input Part B
  $10 constant PFRC2B_PFLTE2B \ PSC 2 Filter Enable on Input Part B
  $0F constant PFRC2B_PRFM2B \ PSC 2 Retrigger and Fault Mode for Part B
&252 constant PFRC2A	\ PSC 2 Input B Control
  $80 constant PFRC2A_PCAE2A \ PSC 2 Capture Enable Input Part A
  $40 constant PFRC2A_PISEL2A \ PSC 2 Input Select for Part A
  $20 constant PFRC2A_PELEV2A \ PSC 2 Edge Level Selector on Input Part A
  $10 constant PFRC2A_PFLTE2A \ PSC 2 Filter Enable on Input Part A
  $0F constant PFRC2A_PRFM2A \ PSC 2 Retrigger and Fault Mode for Part A
&251 constant PCTL2	\ PSC 2 Control Register
  $C0 constant PCTL2_PPRE2 \ PSC 2 Prescaler Selects
  $20 constant PCTL2_PBFM2 \ Balance Flank Width Modulation
  $10 constant PCTL2_PAOC2B \ PSC 2 Asynchronous Output Control B
  $08 constant PCTL2_PAOC2A \ PSC 2 Asynchronous Output Control A
  $04 constant PCTL2_PARUN2 \ PSC2 Auto Run
  $02 constant PCTL2_PCCYC2 \ PSC2 Complete Cycle
  $01 constant PCTL2_PRUN2 \ PSC 2 Run
&250 constant PCNF2	\ PSC 2 Configuration Register
  $80 constant PCNF2_PFIFTY2 \ PSC 2 Fifty
  $40 constant PCNF2_PALOCK2 \ PSC 2 Autolock
  $20 constant PCNF2_PLOCK2 \ PSC 2 Lock
  $18 constant PCNF2_PMODE2 \ PSC 2 Mode
  $04 constant PCNF2_POP2 \ PSC 2 Output Polarity
  $02 constant PCNF2_PCLKSEL2 \ PSC 2 Input Clock Select
  $01 constant PCNF2_POME2 \ PSC 2 Output Matrix Enable
&248 constant OCR2RB	\ Output Compare RB Register 
&246 constant OCR2SB	\ Output Compare SB Register 
&244 constant OCR2RA	\ Output Compare RA Register 
&242 constant OCR2SA	\ Output Compare SA Register 
&241 constant POM2	\ PSC 2 Output Matrix
  $F0 constant POM2_POMV2B \ Output Matrix Output B Ramps
  $0F constant POM2_POMV2A \ Output Matrix Output A Ramps
&240 constant PSOC2	\ PSC2 Synchro and Output Configuration
  $C0 constant PSOC2_POS2 \ PSC 2 Output 23 Select
  $30 constant PSOC2_PSYNC2_ \ Synchronization Out for ADC Selection
  $08 constant PSOC2_POEN2D \ PSCOUT23 Output Enable
  $04 constant PSOC2_POEN2B \ PSCOUT21 Output Enable
  $02 constant PSOC2_POEN2C \ PSCOUT22 Output Enable
  $01 constant PSOC2_POEN2A \ PSCOUT20 Output Enable
&165 constant PIM2	\ PSC2 Interrupt Mask Register
  $20 constant PIM2_PSEIE2 \ PSC 2 Synchro Error Interrupt Enable
  $10 constant PIM2_PEVE2B \ External Event B Interrupt Enable
  $08 constant PIM2_PEVE2A \ External Event A Interrupt Enable
  $01 constant PIM2_PEOPE2 \ End of Cycle Interrupt Enable
&164 constant PIFR2	\ PSC2 Interrupt Flag Register
  $80 constant PIFR2_POAC2B \ PSC 2 Output A Activity
  $40 constant PIFR2_POAC2A \ PSC 2 Output A Activity
  $20 constant PIFR2_PSEI2 \ PSC 2 Synchro Error Interrupt
  $10 constant PIFR2_PEV2B \ External Event B Interrupt
  $08 constant PIFR2_PEV2A \ External Event A Interrupt
  $06 constant PIFR2_PRN2 \ Ramp Number
  $01 constant PIFR2_PEOP2 \ End of PSC2 Interrupt

\ Interrupts
&2  constant PSC2_CAPTAddr \ PSC2 Capture Event
&4  constant PSC2_ECAddr \ PSC2 End Cycle
&6  constant PSC1_CAPTAddr \ PSC1 Capture Event
&8  constant PSC1_ECAddr \ PSC1 End Cycle
&10  constant PSC0_CAPTAddr \ PSC0 Capture Event
&12  constant PSC0_ECAddr \ PSC0 End Cycle
&14  constant ANALOG_COMP_0Addr \ Analog Comparator 0
&16  constant ANALOG_COMP_1Addr \ Analog Comparator 1
&18  constant ANALOG_COMP_2Addr \ Analog Comparator 2
&20  constant INT0Addr \ External Interrupt Request 0
&22  constant TIMER1_CAPTAddr \ Timer/Counter1 Capture Event
&24  constant TIMER1_COMPAAddr \ Timer/Counter1 Compare Match A
&26  constant TIMER1_COMPBAddr \ Timer/Counter Compare Match B
&28  constant RESERVED15Addr \ 
&30  constant TIMER1_OVFAddr \ Timer/Counter1 Overflow
&32  constant TIMER0_COMP_AAddr \ Timer/Counter0 Compare Match A
&34  constant TIMER0_OVFAddr \ Timer/Counter0 Overflow
&36  constant ADCAddr \ ADC Conversion Complete
&38  constant INT1Addr \ External Interrupt Request 1
&40  constant SPI__STCAddr \ SPI Serial Transfer Complete
&42  constant USART__RXAddr \ USART, Rx Complete
&44  constant USART__UDREAddr \ USART Data Register Empty
&46  constant USART__TXAddr \ USART, Tx Complete
&48  constant INT2Addr \ External Interrupt Request 2
&50  constant WDTAddr \ Watchdog Timeout Interrupt
&52  constant EE_READYAddr \ EEPROM Ready
&54  constant TIMER0_COMPBAddr \ Timer Counter 0 Compare Match B
&56  constant INT3Addr \ External Interrupt Request 3
&58  constant RESERVED30Addr \ 
&60  constant RESERVED31Addr \ 
&62  constant SPM_READYAddr \ Store Program Memory Read
