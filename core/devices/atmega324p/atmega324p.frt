\ Partname: ATmega324P
\ generated automatically

\ ANALOG_COMPARATOR
&123 constant ADCSRB	\ ADC Control and Status Register B
  $40 constant ADCSRB_ACME \ Analog Comparator Multiplexer Enable
&80 constant ACSR	\ Analog Comparator Control And Status Register
  $80 constant ACSR_ACD \ Analog Comparator Disable
  $40 constant ACSR_ACBG \ Analog Comparator Bandgap Select
  $20 constant ACSR_ACO \ Analog Compare Output
  $10 constant ACSR_ACI \ Analog Comparator Interrupt Flag
  $08 constant ACSR_ACIE \ Analog Comparator Interrupt Enable
  $04 constant ACSR_ACIC \ Analog Comparator Input Capture Enable
  $03 constant ACSR_ACIS \ Analog Comparator Interrupt Mode Select bits
&127 constant DIDR1	\ Digital Input Disable Register 1
  $02 constant DIDR1_AIN1D \ AIN1 Digital Input Disable
  $01 constant DIDR1_AIN0D \ AIN0 Digital Input Disable
\ USART0
&198 constant UDR0	\ USART I/O Data Register
&192 constant UCSR0A	\ USART Control and Status Register A
  $80 constant UCSR0A_RXC0 \ USART Receive Complete
  $40 constant UCSR0A_TXC0 \ USART Transmitt Complete
  $20 constant UCSR0A_UDRE0 \ USART Data Register Empty
  $10 constant UCSR0A_FE0 \ Framing Error
  $08 constant UCSR0A_DOR0 \ Data overRun
  $04 constant UCSR0A_UPE0 \ Parity Error
  $02 constant UCSR0A_U2X0 \ Double the USART transmission speed
  $01 constant UCSR0A_MPCM0 \ Multi-processor Communication Mode
&193 constant UCSR0B	\ USART Control and Status Register B
  $80 constant UCSR0B_RXCIE0 \ RX Complete Interrupt Enable
  $40 constant UCSR0B_TXCIE0 \ TX Complete Interrupt Enable
  $20 constant UCSR0B_UDRIE0 \ USART Data register Empty Interrupt Enable
  $10 constant UCSR0B_RXEN0 \ Receiver Enable
  $08 constant UCSR0B_TXEN0 \ Transmitter Enable
  $04 constant UCSR0B_UCSZ02 \ Character Size
  $02 constant UCSR0B_RXB80 \ Receive Data Bit 8
  $01 constant UCSR0B_TXB80 \ Transmit Data Bit 8
&194 constant UCSR0C	\ USART Control and Status Register C
  $C0 constant UCSR0C_UMSEL0 \ USART Mode Select
  $30 constant UCSR0C_UPM0 \ Parity Mode Bits
  $08 constant UCSR0C_USBS0 \ Stop Bit Select
  $06 constant UCSR0C_UCSZ0 \ Character Size
  $01 constant UCSR0C_UCPOL0 \ Clock Polarity
&196 constant UBRR0	\ USART Baud Rate Register  Bytes
\ PORTA
&34 constant PORTA	\ Port A Data Register
&33 constant DDRA	\ Port A Data Direction Register
&32 constant PINA	\ Port A Input Pins
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
\ TIMER_COUNTER_0
&72 constant OCR0B	\ Timer/Counter0 Output Compare Register
&71 constant OCR0A	\ Timer/Counter0 Output Compare Register
&70 constant TCNT0	\ Timer/Counter0
&69 constant TCCR0B	\ Timer/Counter Control Register B
  $80 constant TCCR0B_FOC0A \ Force Output Compare A
  $40 constant TCCR0B_FOC0B \ Force Output Compare B
  $08 constant TCCR0B_WGM02 \ 
  $07 constant TCCR0B_CS0 \ Clock Select
&68 constant TCCR0A	\ Timer/Counter  Control Register A
  $C0 constant TCCR0A_COM0A \ Compare Output Mode, Phase Correct PWM Mode
  $30 constant TCCR0A_COM0B \ Compare Output Mode, Fast PWm
  $03 constant TCCR0A_WGM0 \ Waveform Generation Mode
&110 constant TIMSK0	\ Timer/Counter0 Interrupt Mask Register
  $04 constant TIMSK0_OCIE0B \ Timer/Counter0 Output Compare Match B Interrupt Enable
  $02 constant TIMSK0_OCIE0A \ Timer/Counter0 Output Compare Match A Interrupt Enable
  $01 constant TIMSK0_TOIE0 \ Timer/Counter0 Overflow Interrupt Enable
&53 constant TIFR0	\ Timer/Counter0 Interrupt Flag register
  $04 constant TIFR0_OCF0B \ Timer/Counter0 Output Compare Flag 0B
  $02 constant TIFR0_OCF0A \ Timer/Counter0 Output Compare Flag 0A
  $01 constant TIFR0_TOV0 \ Timer/Counter0 Overflow Flag
&67 constant GTCCR	\ General Timer/Counter Control Register
  $80 constant GTCCR_TSM \ Timer/Counter Synchronization Mode
  $01 constant GTCCR_PSRSYNC \ Prescaler Reset Timer/Counter1 and Timer/Counter0
\ TIMER_COUNTER_2
&112 constant TIMSK2	\ Timer/Counter Interrupt Mask register
  $04 constant TIMSK2_OCIE2B \ Timer/Counter2 Output Compare Match B Interrupt Enable
  $02 constant TIMSK2_OCIE2A \ Timer/Counter2 Output Compare Match A Interrupt Enable
  $01 constant TIMSK2_TOIE2 \ Timer/Counter2 Overflow Interrupt Enable
&55 constant TIFR2	\ Timer/Counter Interrupt Flag Register
  $04 constant TIFR2_OCF2B \ Output Compare Flag 2B
  $02 constant TIFR2_OCF2A \ Output Compare Flag 2A
  $01 constant TIFR2_TOV2 \ Timer/Counter2 Overflow Flag
&176 constant TCCR2A	\ Timer/Counter2 Control Register A
  $C0 constant TCCR2A_COM2A \ Compare Output Mode bits
  $30 constant TCCR2A_COM2B \ Compare Output Mode bits
  $03 constant TCCR2A_WGM2 \ Waveform Genration Mode
&177 constant TCCR2B	\ Timer/Counter2 Control Register B
  $80 constant TCCR2B_FOC2A \ Force Output Compare A
  $40 constant TCCR2B_FOC2B \ Force Output Compare B
  $08 constant TCCR2B_WGM22 \ Waveform Generation Mode
  $07 constant TCCR2B_CS2 \ Clock Select bits
&178 constant TCNT2	\ Timer/Counter2
&180 constant OCR2B	\ Timer/Counter2 Output Compare Register B
&179 constant OCR2A	\ Timer/Counter2 Output Compare Register A
&182 constant ASSR	\ Asynchronous Status Register
  $40 constant ASSR_EXCLK \ Enable External Clock Input
  $20 constant ASSR_AS2 \ Asynchronous Timer/Counter2
  $10 constant ASSR_TCN2UB \ Timer/Counter2 Update Busy
  $08 constant ASSR_OCR2AUB \ Output Compare Register2 Update Busy
  $04 constant ASSR_OCR2BUB \ Output Compare Register 2 Update Busy
  $02 constant ASSR_TCR2AUB \ Timer/Counter Control Register2 Update Busy
  $01 constant ASSR_TCR2BUB \ Timer/Counter Control Register2 Update Busy
\ WATCHDOG
&96 constant WDTCSR	\ Watchdog Timer Control Register
  $80 constant WDTCSR_WDIF \ Watchdog Timeout Interrupt Flag
  $40 constant WDTCSR_WDIE \ Watchdog Timeout Interrupt Enable
  $27 constant WDTCSR_WDP \ Watchdog Timer Prescaler Bits
  $10 constant WDTCSR_WDCE \ Watchdog Change Enable
  $08 constant WDTCSR_WDE \ Watch Dog Enable
\ JTAG
&81 constant OCDR	\ On-Chip Debug Related Register in I/O Memory
&85 constant MCUCR	\ MCU Control Register
  $80 constant MCUCR_JTD \ JTAG Interface Disable
&84 constant MCUSR	\ MCU Status Register
  $10 constant MCUSR_JTRF \ JTAG Reset Flag
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
\ EXTERNAL_INTERRUPT
&105 constant EICRA	\ External Interrupt Control Register A
  $30 constant EICRA_ISC2 \ External Interrupt Sense Control Bit
  $0C constant EICRA_ISC1 \ External Interrupt Sense Control Bit
  $03 constant EICRA_ISC0 \ External Interrupt Sense Control Bit
&61 constant EIMSK	\ External Interrupt Mask Register
  $07 constant EIMSK_INT \ External Interrupt Request 2 Enable
&60 constant EIFR	\ External Interrupt Flag Register
  $07 constant EIFR_INTF \ External Interrupt Flags
&115 constant PCMSK3	\ Pin Change Mask Register 3
  $FF constant PCMSK3_PCINT \ Pin Change Enable Masks
&109 constant PCMSK2	\ Pin Change Mask Register 2
  $FF constant PCMSK2_PCINT \ Pin Change Enable Masks
&108 constant PCMSK1	\ Pin Change Mask Register 1
  $FF constant PCMSK1_PCINT \ Pin Change Enable Masks
&107 constant PCMSK0	\ Pin Change Mask Register 0
  $FF constant PCMSK0_PCINT \ Pin Change Enable Masks
&59 constant PCIFR	\ Pin Change Interrupt Flag Register
  $0F constant PCIFR_PCIF \ Pin Change Interrupt Flags
&104 constant PCICR	\ Pin Change Interrupt Control Register
  $0F constant PCICR_PCIE \ Pin Change Interrupt Enables
\ AD_CONVERTER
&124 constant ADMUX	\ The ADC multiplexer Selection Register
  $C0 constant ADMUX_REFS \ Reference Selection Bits
  $20 constant ADMUX_ADLAR \ Left Adjust Result
  $1F constant ADMUX_MUX \ Analog Channel and Gain Selection Bits
&120 constant ADC	\ ADC Data Register  Bytes
&122 constant ADCSRA	\ The ADC Control and Status register A
  $80 constant ADCSRA_ADEN \ ADC Enable
  $40 constant ADCSRA_ADSC \ ADC Start Conversion
  $20 constant ADCSRA_ADATE \ ADC  Auto Trigger Enable
  $10 constant ADCSRA_ADIF \ ADC Interrupt Flag
  $08 constant ADCSRA_ADIE \ ADC Interrupt Enable
  $07 constant ADCSRA_ADPS \ ADC  Prescaler Select Bits
&126 constant DIDR0	\ Digital Input Disable Register
  $80 constant DIDR0_ADC7D \ 
  $40 constant DIDR0_ADC6D \ 
  $20 constant DIDR0_ADC5D \ 
  $10 constant DIDR0_ADC4D \ 
  $08 constant DIDR0_ADC3D \ 
  $04 constant DIDR0_ADC2D \ 
  $02 constant DIDR0_ADC1D \ 
  $01 constant DIDR0_ADC0D \ 
\ TIMER_COUNTER_1
&111 constant TIMSK1	\ Timer/Counter1 Interrupt Mask Register
  $20 constant TIMSK1_ICIE1 \ Timer/Counter1 Input Capture Interrupt Enable
  $04 constant TIMSK1_OCIE1B \ Timer/Counter1 Output Compare B Match Interrupt Enable
  $02 constant TIMSK1_OCIE1A \ Timer/Counter1 Output Compare A Match Interrupt Enable
  $01 constant TIMSK1_TOIE1 \ Timer/Counter1 Overflow Interrupt Enable
&54 constant TIFR1	\ Timer/Counter Interrupt Flag register
  $20 constant TIFR1_ICF1 \ Timer/Counter1 Input Capture Flag
  $04 constant TIFR1_OCF1B \ Timer/Counter1 Output Compare B Match Flag
  $02 constant TIFR1_OCF1A \ Timer/Counter1 Output Compare A Match Flag
  $01 constant TIFR1_TOV1 \ Timer/Counter1 Overflow Flag
&128 constant TCCR1A	\ Timer/Counter1 Control Register A
  $C0 constant TCCR1A_COM1A \ Compare Output Mode 1A, bits
  $30 constant TCCR1A_COM1B \ Compare Output Mode 1B, bits
  $03 constant TCCR1A_WGM1 \ Pulse Width Modulator Select Bits
&129 constant TCCR1B	\ Timer/Counter1 Control Register B
  $80 constant TCCR1B_ICNC1 \ Input Capture 1 Noise Canceler
  $40 constant TCCR1B_ICES1 \ Input Capture 1 Edge Select
  $18 constant TCCR1B_WGM1 \ Waveform Generation Mode Bits
  $07 constant TCCR1B_CS1 \ Clock Select1 bits
&130 constant TCCR1C	\ Timer/Counter1 Control Register C
  $80 constant TCCR1C_FOC1A \ Force Output Compare for Channel A
  $40 constant TCCR1C_FOC1B \ Force Output Compare for Channel B
&132 constant TCNT1	\ Timer/Counter1  Bytes
&136 constant OCR1A	\ Timer/Counter1 Output Compare Register A  Bytes
&138 constant OCR1B	\ Timer/Counter1 Output Compare Register B  Bytes
&134 constant ICR1	\ Timer/Counter1 Input Capture Register  Bytes
\ EEPROM
&65 constant EEAR	\ EEPROM Address Register Low Bytes
&64 constant EEDR	\ EEPROM Data Register
&63 constant EECR	\ EEPROM Control Register
  $30 constant EECR_EEPM \ EEPROM Programming Mode Bits
  $08 constant EECR_EERIE \ EEPROM Ready Interrupt Enable
  $04 constant EECR_EEMPE \ EEPROM Master Write Enable
  $02 constant EECR_EEPE \ EEPROM Write Enable
  $01 constant EECR_EERE \ EEPROM Read Enable
\ SPI
&78 constant SPDR0	\ SPI Data Register
&77 constant SPSR0	\ SPI Status Register
  $80 constant SPSR0_SPIF0 \ SPI Interrupt Flag
  $40 constant SPSR0_WCOL0 \ Write Collision Flag
  $01 constant SPSR0_SPI2X0 \ Double SPI Speed Bit
&76 constant SPCR0	\ SPI Control Register
  $80 constant SPCR0_SPIE0 \ SPI Interrupt Enable
  $40 constant SPCR0_SPE0 \ SPI Enable
  $20 constant SPCR0_DORD0 \ Data Order
  $10 constant SPCR0_MSTR0 \ Master/Slave Select
  $08 constant SPCR0_CPOL0 \ Clock polarity
  $04 constant SPCR0_CPHA0 \ Clock Phase
  $02 constant SPCR0_SPR10 \ SPI Clock Rate Select 1
  $01 constant SPCR0_SPR00 \ SPI Clock Rate Select 0
\ TWI
&189 constant TWAMR	\ TWI (Slave) Address Mask Register
  $FE constant TWAMR_TWAM \ 
&184 constant TWBR	\ TWI Bit Rate register
&188 constant TWCR	\ TWI Control Register
  $80 constant TWCR_TWINT \ TWI Interrupt Flag
  $40 constant TWCR_TWEA \ TWI Enable Acknowledge Bit
  $20 constant TWCR_TWSTA \ TWI Start Condition Bit
  $10 constant TWCR_TWSTO \ TWI Stop Condition Bit
  $08 constant TWCR_TWWC \ TWI Write Collition Flag
  $04 constant TWCR_TWEN \ TWI Enable Bit
  $01 constant TWCR_TWIE \ TWI Interrupt Enable
&185 constant TWSR	\ TWI Status Register
  $F8 constant TWSR_TWS \ TWI Status
  $03 constant TWSR_TWPS \ TWI Prescaler
&187 constant TWDR	\ TWI Data register
&186 constant TWAR	\ TWI (Slave) Address register
  $FE constant TWAR_TWA \ TWI (Slave) Address register Bits
  $01 constant TWAR_TWGCE \ TWI General Call Recognition Enable Bit
\ USART1
&206 constant UDR1	\ USART I/O Data Register
&200 constant UCSR1A	\ USART Control and Status Register A
  $80 constant UCSR1A_RXC1 \ USART Receive Complete
  $40 constant UCSR1A_TXC1 \ USART Transmitt Complete
  $20 constant UCSR1A_UDRE1 \ USART Data Register Empty
  $10 constant UCSR1A_FE1 \ Framing Error
  $08 constant UCSR1A_DOR1 \ Data overRun
  $04 constant UCSR1A_UPE1 \ Parity Error
  $02 constant UCSR1A_U2X1 \ Double the USART transmission speed
  $01 constant UCSR1A_MPCM1 \ Multi-processor Communication Mode
&201 constant UCSR1B	\ USART Control and Status Register B
  $80 constant UCSR1B_RXCIE1 \ RX Complete Interrupt Enable
  $40 constant UCSR1B_TXCIE1 \ TX Complete Interrupt Enable
  $20 constant UCSR1B_UDRIE1 \ USART Data register Empty Interrupt Enable
  $10 constant UCSR1B_RXEN1 \ Receiver Enable
  $08 constant UCSR1B_TXEN1 \ Transmitter Enable
  $04 constant UCSR1B_UCSZ12 \ Character Size
  $02 constant UCSR1B_RXB81 \ Receive Data Bit 8
  $01 constant UCSR1B_TXB81 \ Transmit Data Bit 8
&202 constant UCSR1C	\ USART Control and Status Register C
  $C0 constant UCSR1C_UMSEL1 \ USART Mode Select
  $30 constant UCSR1C_UPM1 \ Parity Mode Bits
  $08 constant UCSR1C_USBS1 \ Stop Bit Select
  $06 constant UCSR1C_UCSZ1 \ Character Size
  $01 constant UCSR1C_UCPOL1 \ Clock Polarity
&204 constant UBRR1	\ USART Baud Rate Register  Bytes
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
&102 constant OSCCAL	\ Oscillator Calibration Value
&97 constant CLKPR	\ 
  $80 constant CLKPR_CLKPCE \ 
  $0F constant CLKPR_CLKPS \ 
&83 constant SMCR	\ Sleep Mode Control Register
  $0E constant SMCR_SM \ Sleep Mode Select bits
  $01 constant SMCR_SE \ Sleep Enable
&75 constant GPIOR2	\ General Purpose IO Register 2
  $FF constant GPIOR2_GPIOR \ General Purpose IO Register 2 bis
&74 constant GPIOR1	\ General Purpose IO Register 1
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
&100 constant PRR0	\ Power Reduction Register0
  $80 constant PRR0_PRTWI \ Power Reduction TWI
  $40 constant PRR0_PRTIM2 \ Power Reduction Timer/Counter2
  $20 constant PRR0_PRTIM0 \ Power Reduction Timer/Counter0
  $12 constant PRR0_PRUSART \ Power Reduction USARTs
  $08 constant PRR0_PRTIM1 \ Power Reduction Timer/Counter1
  $04 constant PRR0_PRSPI \ Power Reduction Serial Peripheral Interface
  $01 constant PRR0_PRADC \ Power Reduction ADC

\ Interrupts
&2  constant INT0Addr \ External Interrupt Request 0
&4  constant INT1Addr \ External Interrupt Request 1
&6  constant INT2Addr \ External Interrupt Request 2
&8  constant PCINT0Addr \ Pin Change Interrupt Request 0
&10  constant PCINT1Addr \ Pin Change Interrupt Request 1
&12  constant PCINT2Addr \ Pin Change Interrupt Request 2
&14  constant PCINT3Addr \ Pin Change Interrupt Request 3
&16  constant WDTAddr \ Watchdog Time-out Interrupt
&18  constant TIMER2_COMPAAddr \ Timer/Counter2 Compare Match A
&20  constant TIMER2_COMPBAddr \ Timer/Counter2 Compare Match B
&22  constant TIMER2_OVFAddr \ Timer/Counter2 Overflow
&24  constant TIMER1_CAPTAddr \ Timer/Counter1 Capture Event
&26  constant TIMER1_COMPAAddr \ Timer/Counter1 Compare Match A
&28  constant TIMER1_COMPBAddr \ Timer/Counter1 Compare Match B
&30  constant TIMER1_OVFAddr \ Timer/Counter1 Overflow
&32  constant TIMER0_COMPAAddr \ Timer/Counter0 Compare Match A
&34  constant TIMER0_COMPBAddr \ Timer/Counter0 Compare Match B
&36  constant TIMER0_OVFAddr \ Timer/Counter0 Overflow
&38  constant SPI__STCAddr \ SPI Serial Transfer Complete
&40  constant USART0__RXAddr \ USART0, Rx Complete
&42  constant USART0__UDREAddr \ USART0 Data register Empty
&44  constant USART0__TXAddr \ USART0, Tx Complete
&46  constant ANALOG_COMPAddr \ Analog Comparator
&48  constant ADCAddr \ ADC Conversion Complete
&50  constant EE_READYAddr \ EEPROM Ready
&52  constant TWIAddr \ 2-wire Serial Interface
&54  constant SPM_READYAddr \ Store Program Memory Read
&56  constant USART1_RXAddr \ USART1 RX complete
&58  constant USART1_UDREAddr \ USART1 Data Register Empty
&60  constant USART1_TXAddr \ USART1 TX complete
