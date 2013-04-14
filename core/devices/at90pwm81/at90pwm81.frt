\ Partname: AT90PWM81
\ generated automatically

\ PORTB
&37 constant PORTB	\ Port B Data Register
&36 constant DDRB	\ Port B Data Direction Register
&35 constant PINB	\ Port B Input Pins
\ PORTD
&43 constant PORTD	\ Port D Data Register
&42 constant DDRD	\ Port D Data Direction Register
&41 constant PIND	\ Port D Input Pins
\ DA_CONVERTER
&89 constant DACH	\ DAC Data Register High Byte
  $FF constant DACH_DACH \ DAC Data Register High Byte Bits
&88 constant DACL	\ DAC Data Register Low Byte
  $FF constant DACL_DACL \ DAC Data Register Low Byte Bits
&118 constant DACON	\ DAC Control Register
  $80 constant DACON_DAATE \ DAC Auto Trigger Enable Bit
  $70 constant DACON_DATS \ DAC Trigger Selection Bits
  $04 constant DACON_DALA \ DAC Left Adjust
  $01 constant DACON_DAEN \ DAC Enable Bit
\ PORTE
&46 constant PORTE	\ Port E Data Register
&45 constant DDRE	\ Port E Data Direction Register
&44 constant PINE	\ Port E Input Pins
\ SPI
&55 constant SPCR	\ SPI Control Register
  $80 constant SPCR_SPIE \ SPI Interrupt Enable
  $40 constant SPCR_SPE \ SPI Enable
  $20 constant SPCR_DORD \ Data Order
  $10 constant SPCR_MSTR \ Master/Slave Select
  $08 constant SPCR_CPOL \ Clock polarity
  $04 constant SPCR_CPHA \ Clock Phase
  $03 constant SPCR_SPR \ SPI Clock Rate Selects
&56 constant SPSR	\ SPI Status Register
  $80 constant SPSR_SPIF \ SPI Interrupt Flag
  $40 constant SPSR_WCOL \ Write Collision Flag
  $01 constant SPSR_SPI2X \ Double SPI Speed Bit
&86 constant SPDR	\ SPI Data Register
\ WATCHDOG
&130 constant WDTCSR	\ Watchdog Timer Control Register
  $80 constant WDTCSR_WDIF \ Watchdog Timeout Interrupt Flag
  $40 constant WDTCSR_WDIE \ Watchdog Timeout Interrupt Enable
  $27 constant WDTCSR_WDP \ Watchdog Timer Prescaler Bits
  $10 constant WDTCSR_WDCE \ Watchdog Change Enable
  $08 constant WDTCSR_WDE \ Watch Dog Enable
\ EXTERNAL_INTERRUPT
&137 constant EICRA	\ External Interrupt Control Register A
  $30 constant EICRA_ISC2 \ External Interrupt Sense Control Bit
  $0C constant EICRA_ISC1 \ External Interrupt Sense Control Bit
  $03 constant EICRA_ISC0 \ External Interrupt Sense Control Bit
&65 constant EIMSK	\ External Interrupt Mask Register
  $07 constant EIMSK_INT \ External Interrupt Request 2 Enable
&64 constant EIFR	\ External Interrupt Flag Register
  $07 constant EIFR_INTF \ External Interrupt Flags
\ AD_CONVERTER
&40 constant ADMUX	\ The ADC multiplexer Selection Register
  $C0 constant ADMUX_REFS \ Reference Selection Bits
  $20 constant ADMUX_ADLAR \ Left Adjust Result
  $0F constant ADMUX_MUX \ Analog Channel and Gain Selection Bits
&38 constant ADCSRA	\ The ADC Control and Status register
  $80 constant ADCSRA_ADEN \ ADC Enable
  $40 constant ADCSRA_ADSC \ ADC Start Conversion
  $20 constant ADCSRA_ADATE \ ADC Auto Trigger Enable
  $10 constant ADCSRA_ADIF \ ADC Interrupt Flag
  $08 constant ADCSRA_ADIE \ ADC Interrupt Enable
  $07 constant ADCSRA_ADPS \ ADC  Prescaler Select Bits
&76 constant ADC	\ ADC Data Register  Bytes
&39 constant ADCSRB	\ ADC Control and Status Register B
  $80 constant ADCSRB_ADHSM \ ADC High Speed Mode
  $40 constant ADCSRB_ADNCDIS \ ADC Noise Canceller Disable
  $10 constant ADCSRB_ADSSEN \ ADC Single Shot Enable on PSC's Synchronisation Signals
  $0F constant ADCSRB_ADTS \ ADC Auto Trigger Sources
&119 constant DIDR0	\ Digital Input Disable Register 0
  $80 constant DIDR0_ADC7D \ 
  $40 constant DIDR0_ADC6D \ ADC7 Digital input Disable
  $20 constant DIDR0_ADC5D \ ADC5 Digital input Disable
  $10 constant DIDR0_ADC4D \ ADC4 Digital input Disable
  $08 constant DIDR0_ADC3D \ ADC3 Digital input Disable
  $04 constant DIDR0_ADC2D \ ADC2 Digital input Disable
  $02 constant DIDR0_ADC1D \ ADC1 Digital input Disable
  $01 constant DIDR0_ADC0D \ ADC0 Digital input Disable
&120 constant DIDR1	\ Digital Input Disable Register 0
  $08 constant DIDR1_ACMP1MD \ 
  $04 constant DIDR1_AMP0POSD \ 
  $02 constant DIDR1_ADC10D \ 
  $01 constant DIDR1_ADC9D \ 
&121 constant AMP0CSR	\ 
  $80 constant AMP0CSR_AMP0EN \ 
  $40 constant AMP0CSR_AMP0IS \ 
  $30 constant AMP0CSR_AMP0G \ 
  $08 constant AMP0CSR_AMP0GS \ 
  $03 constant AMP0CSR_AMP0TS \ 
\ ANALOG_COMPARATOR
&127 constant AC3CON	\ Analog Comparator3 Control Register
  $80 constant AC3CON_AC3EN \ Analog Comparator3 Enable Bit
  $40 constant AC3CON_AC3IE \ Analog Comparator 3 Interrupt Enable Bit
  $30 constant AC3CON_AC3IS \ Analog Comparator 3  Interrupt Select Bit
  $08 constant AC3CON_AC3OEA \ Analog Comparator 3 Alternate Output Enable
  $07 constant AC3CON_AC3M \ Analog Comparator 3 Multiplexer Register
&125 constant AC1CON	\ Analog Comparator 1 Control Register
  $80 constant AC1CON_AC1EN \ Analog Comparator 1 Enable Bit
  $40 constant AC1CON_AC1IE \ Analog Comparator 1 Interrupt Enable Bit
  $30 constant AC1CON_AC1IS \ Analog Comparator 1  Interrupt Select Bit
  $07 constant AC1CON_AC1M \ Analog Comparator 1 Multiplexer Register
&126 constant AC2CON	\ Analog Comparator 2 Control Register
  $80 constant AC2CON_AC2EN \ Analog Comparator 2 Enable Bit
  $40 constant AC2CON_AC2IE \ Analog Comparator 2 Interrupt Enable Bit
  $30 constant AC2CON_AC2IS \ Analog Comparator 2  Interrupt Select Bit
  $07 constant AC2CON_AC2M \ Analog Comparator 2 Multiplexer Register
&32 constant ACSR	\ Analog Comparator Status Register
  $80 constant ACSR_AC3IF \ Analog Comparator 3 Interrupt Flag Bit
  $40 constant ACSR_AC2IF \ Analog Comparator 2 Interrupt Flag Bit
  $20 constant ACSR_AC1IF \ Analog Comparator 1  Interrupt Flag Bit
  $08 constant ACSR_AC3O \ Analog Comparator 3 Output Bit
  $04 constant ACSR_AC2O \ Analog Comparator 2 Output Bit
  $02 constant ACSR_AC1O \ Analog Comparator 1 Output Bit
&124 constant AC3ECON	\ 
  $20 constant AC3ECON_AC3OI \ Analog Comparator Ouput Invert
  $10 constant AC3ECON_AC3OE \ Analog Comparator Ouput Enable
  $07 constant AC3ECON_AC3H \ Analog Comparator Hysteresis Select
&123 constant AC2ECON	\ 
  $20 constant AC2ECON_AC2OI \ Analog Comparator Ouput Invert
  $10 constant AC2ECON_AC2OE \ Analog Comparator Ouput Enable
  $07 constant AC2ECON_AC2H \ Analog Comparator Hysteresis Select
&122 constant AC1ECON	\ 
  $20 constant AC1ECON_AC1OI \ Analog Comparator Ouput Invert
  $10 constant AC1ECON_AC1OE \ Analog Comparator Ouput Enable
  $08 constant AC1ECON_AC1ICE \ Analog Comparator Interrupt Capture Enable
  $07 constant AC1ECON_AC1H \ Analog Comparator Hysteresis Select
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
  $10 constant MCUCR_PUD \ Pull-up disable
  $08 constant MCUCR_RSTDIS \ Reset Pin Disable
  $04 constant MCUCR_CKRC81 \ Frequency Selection of the Calibrated RC Oscillator
  $02 constant MCUCR_IVSEL \ Interrupt Vector Select
  $01 constant MCUCR_IVCE \ Interrupt Vector Change Enable
&84 constant MCUSR	\ MCU Status Register
  $08 constant MCUSR_WDRF \ Watchdog Reset Flag
  $04 constant MCUSR_BORF \ Brown-out Reset Flag
  $02 constant MCUSR_EXTRF \ External Reset Flag
  $01 constant MCUSR_PORF \ Power-on reset flag
&136 constant OSCCAL	\ Oscillator Calibration Value
&131 constant CLKPR	\ 
  $80 constant CLKPR_CLKPCE \ 
  $0F constant CLKPR_CLKPS \ 
&83 constant SMCR	\ Sleep Mode Control Register
  $0E constant SMCR_SM \ Sleep Mode Select bits
  $01 constant SMCR_SE \ Sleep Enable
&59 constant GPIOR2	\ General Purpose IO Register 2
  $FF constant GPIOR2_GPIOR \ General Purpose IO Register 2 bis
&58 constant GPIOR1	\ General Purpose IO Register 1
  $FF constant GPIOR1_GPIOR \ General Purpose IO Register 1 bis
&57 constant GPIOR0	\ General Purpose IO Register 0
  $80 constant GPIOR0_GPIOR07 \ General Purpose IO Register 0 bit 7
  $40 constant GPIOR0_GPIOR06 \ General Purpose IO Register 0 bit 6
  $20 constant GPIOR0_GPIOR05 \ General Purpose IO Register 0 bit 5
  $10 constant GPIOR0_GPIOR04 \ General Purpose IO Register 0 bit 4
  $08 constant GPIOR0_GPIOR03 \ General Purpose IO Register 0 bit 3
  $04 constant GPIOR0_GPIOR02 \ General Purpose IO Register 0 bit 2
  $02 constant GPIOR0_GPIOR01 \ General Purpose IO Register 0 bit 1
  $01 constant GPIOR0_GPIOR00 \ General Purpose IO Register 0 bit 0
&135 constant PLLCSR	\ PLL Control And Status Register
  $3C constant PLLCSR_PLLF \ 
  $02 constant PLLCSR_PLLE \ PLL Enable
  $01 constant PLLCSR_PLOCK \ PLL Lock Detector
&134 constant PRR	\ Power Reduction Register
  $80 constant PRR_PRPSC2 \ Power Reduction PSC2
  $20 constant PRR_PRPSCR \ Power Reduction PSC0
  $10 constant PRR_PRTIM1 \ Power Reduction Timer/Counter1
  $04 constant PRR_PRSPI \ Power Reduction Serial Peripheral Interface
  $01 constant PRR_PRADC \ Power Reduction ADC
&132 constant CLKCSR	\ 
  $80 constant CLKCSR_CLKCCE \ Clock Control Change Enable
  $10 constant CLKCSR_CLKRDY \ Clock Ready Flag
  $0F constant CLKCSR_CLKC \ Clock Control
&133 constant CLKSELR	\ 
  $40 constant CLKSELR_COUT \ Clock OUT
  $30 constant CLKSELR_CSUT \ Clock Start up Time
  $0F constant CLKSELR_CKSEL \ Clock Source Select
&129 constant BGCCR	\ BandGap Current Calibration Register
  $0F constant BGCCR_BGCC \ 
&128 constant BGCRR	\ BandGap Resistor Calibration Register
  $0F constant BGCRR_BGCR \ 
\ EEPROM
&62 constant EEAR	\ EEPROM Read/Write Access  Bytes
&61 constant EEDR	\ EEPROM Data Register
&60 constant EECR	\ EEPROM Control Register
  $80 constant EECR_NVMBSY \ None Volatile Busy Memory Busy
  $40 constant EECR_EEPAGE \ EEPROM Page Access
  $30 constant EECR_EEPM \ EEPROM Programming Mode
  $08 constant EECR_EERIE \ EEPROM Ready Interrupt Enable
  $04 constant EECR_EEMWE \ EEPROM Master Write Enable
  $02 constant EECR_EEWE \ EEPROM Write Enable
  $01 constant EECR_EERE \ EEPROM Read Enable
\ PSC0
&104 constant PICR0	\ PSC 0 Input Capture Register 
&99 constant PFRC0B	\ PSC 0 Input B Control
  $80 constant PFRC0B_PCAE0B \ PSC 0 Capture Enable Input Part B
  $40 constant PFRC0B_PISEL0B \ PSC 0 Input Select for Part B
  $20 constant PFRC0B_PELEV0B \ PSC 0 Edge Level Selector on Input Part B
  $10 constant PFRC0B_PFLTE0B \ PSC 0 Filter Enable on Input Part B
  $0F constant PFRC0B_PRFM0B \ PSC 0 Retrigger and Fault Mode for Part B
&98 constant PFRC0A	\ PSC 0 Input A Control
  $80 constant PFRC0A_PCAE0A \ PSC 0 Capture Enable Input Part A
  $40 constant PFRC0A_PISEL0A \ PSC 0 Input Select for Part A
  $20 constant PFRC0A_PELEV0A \ PSC 0 Edge Level Selector on Input Part A
  $10 constant PFRC0A_PFLTE0A \ PSC 0 Filter Enable on Input Part A
  $0F constant PFRC0A_PRFM0A \ PSC 0 Retrigger and Fault Mode for Part A
&50 constant PCTL0	\ PSC 0 Control Register
  $C0 constant PCTL0_PPRE0 \ PSC 0 Prescaler Selects
  $24 constant PCTL0_PBFM0 \ PSC 0 Balance Flank Width Modulation
  $10 constant PCTL0_PAOC0B \ PSC 0 Asynchronous Output Control B
  $08 constant PCTL0_PAOC0A \ PSC 0 Asynchronous Output Control A
  $02 constant PCTL0_PCCYC0 \ PSC0 Complete Cycle
  $01 constant PCTL0_PRUN0 \ PSC 0 Run
&49 constant PCNF0	\ PSC 0 Configuration Register
  $80 constant PCNF0_PFIFTY0 \ PSC 0 Fifty
  $40 constant PCNF0_PALOCK0 \ PSC 0 Autolock
  $20 constant PCNF0_PLOCK0 \ PSC 0 Lock
  $18 constant PCNF0_PMODE0 \ PSC 0 Mode
  $04 constant PCNF0_POP0 \ PSC 0 Output Polarity
  $02 constant PCNF0_PCLKSEL0 \ PSC 0 Input Clock Select
&68 constant OCR0RB	\ Output Compare RB Register 
&66 constant OCR0SB	\ Output Compare SB Register 
&74 constant OCR0RA	\ Output Compare RA Register 
&96 constant OCR0SA	\ Output Compare SA Register 
&106 constant PSOC0	\ PSC0 Synchro and Output Configuration
  $80 constant PSOC0_PISEL0A1 \ PSC Input Select
  $40 constant PSOC0_PISEL0B1 \ PSC Input Select
  $30 constant PSOC0_PSYNC0 \ Synchronisation out for ADC selection
  $04 constant PSOC0_POEN0B \ PSCOUT01 Output Enable
  $01 constant PSOC0_POEN0A \ PSCOUT00 Output Enable
&47 constant PIM0	\ PSC0 Interrupt Mask Register
  $10 constant PIM0_PEVE0B \ External Event B Interrupt Enable
  $08 constant PIM0_PEVE0A \ External Event A Interrupt Enable
  $02 constant PIM0_PEOEPE0 \ End of Enhanced Cycle Enable
  $01 constant PIM0_PEOPE0 \ End of Cycle Interrupt Enable
&48 constant PIFR0	\ PSC0 Interrupt Flag Register
  $80 constant PIFR0_POAC0B \ PSC 0 Output A Activity
  $40 constant PIFR0_POAC0A \ PSC 0 Output A Activity
  $10 constant PIFR0_PEV0B \ External Event B Interrupt
  $08 constant PIFR0_PEV0A \ External Event A Interrupt
  $06 constant PIFR0_PRN0 \ Ramp Number
  $01 constant PIFR0_PEOP0 \ End of PSC0 Interrupt
\ PSC2
&109 constant PICR2H	\ PSC 2 Input Capture Register High
  $80 constant PICR2H_PCST2 \ PSC 2 Capture Software Trigger Bit
  $0C constant PICR2H_PICR21 \ 
  $03 constant PICR2H_PICR2 \ 
&108 constant PICR2L	\ PSC 2 Input Capture Register Low
&103 constant PFRC2B	\ PSC 2 Input B Control
  $80 constant PFRC2B_PCAE2B \ PSC 2 Capture Enable Input Part B
  $40 constant PFRC2B_PISEL2B \ PSC 2 Input Select for Part B
  $20 constant PFRC2B_PELEV2B \ PSC 2 Edge Level Selector on Input Part B
  $10 constant PFRC2B_PFLTE2B \ PSC 2 Filter Enable on Input Part B
  $0F constant PFRC2B_PRFM2B \ PSC 2 Retrigger and Fault Mode for Part B
&102 constant PFRC2A	\ PSC 2 Input B Control
  $80 constant PFRC2A_PCAE2A \ PSC 2 Capture Enable Input Part A
  $40 constant PFRC2A_PISEL2A \ PSC 2 Input Select for Part A
  $20 constant PFRC2A_PELEV2A \ PSC 2 Edge Level Selector on Input Part A
  $10 constant PFRC2A_PFLTE2A \ PSC 2 Filter Enable on Input Part A
  $0F constant PFRC2A_PRFM2A \ PSC 2 Retrigger and Fault Mode for Part A
&54 constant PCTL2	\ PSC 2 Control Register
  $C0 constant PCTL2_PPRE2 \ PSC 2 Prescaler Selects
  $20 constant PCTL2_PBFM2 \ Balance Flank Width Modulation
  $10 constant PCTL2_PAOC2B \ PSC 2 Asynchronous Output Control B
  $08 constant PCTL2_PAOC2A \ PSC 2 Asynchronous Output Control A
  $04 constant PCTL2_PARUN2 \ PSC2 Auto Run
  $02 constant PCTL2_PCCYC2 \ PSC2 Complete Cycle
  $01 constant PCTL2_PRUN2 \ PSC 2 Run
&53 constant PCNF2	\ PSC 2 Configuration Register
  $80 constant PCNF2_PFIFTY2 \ PSC 2 Fifty
  $40 constant PCNF2_PALOCK2 \ PSC 2 Autolock
  $20 constant PCNF2_PLOCK2 \ PSC 2 Lock
  $18 constant PCNF2_PMODE2 \ PSC 2 Mode
  $04 constant PCNF2_POP2 \ PSC 2 Output Polarity
  $02 constant PCNF2_PCLKSEL2 \ PSC 2 Input Clock Select
  $01 constant PCNF2_POME2 \ PSC 2 Output Matrix Enable
&112 constant PCNFE2	\ PSC 2 Enhanced Configuration Register
  $E0 constant PCNFE2_PASDLK2 \ 
  $10 constant PCNFE2_PBFM21 \ 
  $08 constant PCNFE2_PELEV2A1 \ 
  $04 constant PCNFE2_PELEV2B1 \ 
  $02 constant PCNFE2_PISEL2A1 \ 
  $01 constant PCNFE2_PISEL2B1 \ 
&72 constant OCR2RB	\ Output Compare RB Register 
&70 constant OCR2SB	\ Output Compare SB Register 
&78 constant OCR2RA	\ Output Compare RA Register 
&100 constant OCR2SA	\ Output Compare SA Register 
&111 constant POM2	\ PSC 2 Output Matrix
  $F0 constant POM2_POMV2B \ Output Matrix Output B Ramps
  $0F constant POM2_POMV2A \ Output Matrix Output A Ramps
&110 constant PSOC2	\ PSC2 Synchro and Output Configuration
  $C0 constant PSOC2_POS2 \ PSC 2 Output 23 Select
  $30 constant PSOC2_PSYNC2 \ Synchronization Out for ADC Selection
  $08 constant PSOC2_POEN2D \ PSCOUT23 Output Enable
  $04 constant PSOC2_POEN2B \ PSCOUT21 Output Enable
  $02 constant PSOC2_POEN2C \ PSCOUT22 Output Enable
  $01 constant PSOC2_POEN2A \ PSCOUT20 Output Enable
&51 constant PIM2	\ PSC2 Interrupt Mask Register
  $20 constant PIM2_PSEIE2 \ PSC 2 Synchro Error Interrupt Enable
  $10 constant PIM2_PEVE2B \ External Event B Interrupt Enable
  $08 constant PIM2_PEVE2A \ External Event A Interrupt Enable
  $02 constant PIM2_PEOEPE2 \ End of Enhanced Cycle Interrupt Enable
  $01 constant PIM2_PEOPE2 \ End of Cycle Interrupt Enable
&52 constant PIFR2	\ PSC2 Interrupt Flag Register
  $80 constant PIFR2_POAC2B \ PSC 2 Output A Activity
  $40 constant PIFR2_POAC2A \ PSC 2 Output A Activity
  $20 constant PIFR2_PSEI2 \ PSC 2 Synchro Error Interrupt
  $10 constant PIFR2_PEV2B \ External Event B Interrupt
  $08 constant PIFR2_PEV2A \ External Event A Interrupt
  $06 constant PIFR2_PRN2 \ Ramp Number
  $01 constant PIFR2_PEOP2 \ End of PSC2 Interrupt
&113 constant PASDLY2	\ Analog Synchronization Delay Register
\ TIMER_COUNTER_1
&33 constant TIMSK1	\ Timer/Counter Interrupt Mask Register
  $20 constant TIMSK1_ICIE1 \ Timer/Counter1 Input Capture Interrupt Enable
  $01 constant TIMSK1_TOIE1 \ Timer/Counter1 Overflow Interrupt Enable
&34 constant TIFR1	\ Timer/Counter Interrupt Flag register
  $20 constant TIFR1_ICF1 \ Input Capture Flag 1
  $01 constant TIFR1_TOV1 \ Timer/Counter1 Overflow Flag
&138 constant TCCR1B	\ Timer/Counter1 Control Register B
  $80 constant TCCR1B_ICNC1 \ Input Capture 1 Noise Canceler
  $40 constant TCCR1B_ICES1 \ Input Capture 1 Edge Select
  $10 constant TCCR1B_WGM13 \ Waveform Generation Mode
  $07 constant TCCR1B_CS1 \ Prescaler source of Timer/Counter 1
&90 constant TCNT1	\ Timer/Counter1  Bytes
&140 constant ICR1	\ Timer/Counter1 Input Capture Register  Bytes
\ BOOT_LOAD
&87 constant SPMCSR	\ Store Program Memory Control Register
  $80 constant SPMCSR_SPMIE \ SPM Interrupt Enable
  $40 constant SPMCSR_RWWSB \ Read While Write Section Busy
  $20 constant SPMCSR_SIGRD \ Signature Row Read
  $10 constant SPMCSR_RWWSRE \ Read While Write section read enable
  $08 constant SPMCSR_BLBSET \ Boot Lock Bit Set
  $04 constant SPMCSR_PGWRT \ Page Write
  $02 constant SPMCSR_PGERS \ Page Erase
  $01 constant SPMCSR_SPMEN \ Store Program Memory Enable

\ Interrupts
&1  constant PSC2_CAPTAddr \ PSC2 Capture Event
&2  constant PSC2_ECAddr \ PSC2 End Cycle
&3  constant PSC2_EECAddr \ PSC2 End Of Enhanced Cycle
&4  constant PSC0_CAPTAddr \ PSC0 Capture Event
&5  constant PSC0_ECAddr \ PSC0 End Cycle
&6  constant PSC0_EECAddr \ PSC0 End Of Enhanced Cycle
&7  constant ANALOG_COMP_1Addr \ Analog Comparator 1
&8  constant ANALOG_COMP_2Addr \ Analog Comparator 2
&9  constant ANALOG_COMP_3Addr \ Analog Comparator 3
&10  constant INT0Addr \ External Interrupt Request 0
&11  constant TIMER1_CAPTAddr \ Timer/Counter1 Capture Event
&12  constant TIMER1_OVFAddr \ Timer/Counter1 Overflow
&13  constant ADCAddr \ ADC Conversion Complete
&14  constant INT1Addr \ External Interrupt Request 1
&15  constant SPI__STCAddr \ SPI Serial Transfer Complet
&16  constant INT2Addr \ External Interrupt Request 2
&17  constant WDTAddr \ Watchdog Timeout Interrupt
&18  constant EE_READYAddr \ EEPROM Ready
&19  constant SPM_READYAddr \ Store Program Memory Read
