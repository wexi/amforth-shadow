\ Partname: ATmega640
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
\ PORTE
&46 constant PORTE	\ Data Register, Port E
&45 constant DDRE	\ Data Direction Register, Port E
&44 constant PINE	\ Input Pins, Port E
\ PORTF
&49 constant PORTF	\ Data Register, Port F
&48 constant DDRF	\ Data Direction Register, Port F
&47 constant PINF	\ Input Pins, Port F
\ PORTG
&52 constant PORTG	\ Data Register, Port G
&51 constant DDRG	\ Data Direction Register, Port G
&50 constant PING	\ Input Pins, Port G
\ PORTH
&258 constant PORTH	\ PORT H Data Register
&257 constant DDRH	\ PORT H Data Direction Register
&256 constant PINH	\ PORT H Input Pins
\ PORTJ
&261 constant PORTJ	\ PORT J Data Register
&260 constant DDRJ	\ PORT J Data Direction Register
&259 constant PINJ	\ PORT J Input Pins
\ PORTK
&264 constant PORTK	\ PORT K Data Register
&263 constant DDRK	\ PORT K Data Direction Register
&262 constant PINK	\ PORT K Input Pins
\ PORTL
&267 constant PORTL	\ PORT L Data Register
&266 constant DDRL	\ PORT L Data Direction Register
&265 constant PINL	\ PORT L Input Pins
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
\ EEPROM
&65 constant EEAR	\ EEPROM Address Register Low Bytes
&64 constant EEDR	\ EEPROM Data Register
&63 constant EECR	\ EEPROM Control Register
  $30 constant EECR_EEPM \ EEPROM Programming Mode Bits
  $08 constant EECR_EERIE \ EEPROM Ready Interrupt Enable
  $04 constant EECR_EEMPE \ EEPROM Master Write Enable
  $02 constant EECR_EEPE \ EEPROM Write Enable
  $01 constant EECR_EERE \ EEPROM Read Enable
\ TIMER_COUNTER_5
&288 constant TCCR5A	\ Timer/Counter5 Control Register A
  $C0 constant TCCR5A_COM5A \ Compare Output Mode 1A, bits
  $30 constant TCCR5A_COM5B \ Compare Output Mode 5B, bits
  $0C constant TCCR5A_COM5C \ Compare Output Mode 5C, bits
  $03 constant TCCR5A_WGM5 \ Waveform Generation Mode
&289 constant TCCR5B	\ Timer/Counter5 Control Register B
  $80 constant TCCR5B_ICNC5 \ Input Capture 5 Noise Canceler
  $40 constant TCCR5B_ICES5 \ Input Capture 5 Edge Select
  $18 constant TCCR5B_WGM5 \ Waveform Generation Mode
  $07 constant TCCR5B_CS5 \ Prescaler source of Timer/Counter 5
&290 constant TCCR5C	\ Timer/Counter 5 Control Register C
  $80 constant TCCR5C_FOC5A \ Force Output Compare 5A
  $40 constant TCCR5C_FOC5B \ Force Output Compare 5B
  $20 constant TCCR5C_FOC5C \ Force Output Compare 5C
&292 constant TCNT5	\ Timer/Counter5  Bytes
&296 constant OCR5A	\ Timer/Counter5 Output Compare Register A  Bytes
&298 constant OCR5B	\ Timer/Counter5 Output Compare Register B  Bytes
&300 constant OCR5C	\ Timer/Counter5 Output Compare Register B  Bytes
&294 constant ICR5	\ Timer/Counter5 Input Capture Register  Bytes
&115 constant TIMSK5	\ Timer/Counter5 Interrupt Mask Register
  $20 constant TIMSK5_ICIE5 \ Timer/Counter5 Input Capture Interrupt Enable
  $08 constant TIMSK5_OCIE5C \ Timer/Counter5 Output Compare C Match Interrupt Enable
  $04 constant TIMSK5_OCIE5B \ Timer/Counter5 Output Compare B Match Interrupt Enable
  $02 constant TIMSK5_OCIE5A \ Timer/Counter5 Output Compare A Match Interrupt Enable
  $01 constant TIMSK5_TOIE5 \ Timer/Counter5 Overflow Interrupt Enable
&58 constant TIFR5	\ Timer/Counter5 Interrupt Flag register
  $20 constant TIFR5_ICF5 \ Input Capture Flag 5
  $08 constant TIFR5_OCF5C \ Output Compare Flag 5C
  $04 constant TIFR5_OCF5B \ Output Compare Flag 5B
  $02 constant TIFR5_OCF5A \ Output Compare Flag 5A
  $01 constant TIFR5_TOV5 \ Timer/Counter5 Overflow Flag
\ TIMER_COUNTER_4
&160 constant TCCR4A	\ Timer/Counter4 Control Register A
  $C0 constant TCCR4A_COM4A \ Compare Output Mode 1A, bits
  $30 constant TCCR4A_COM4B \ Compare Output Mode 4B, bits
  $0C constant TCCR4A_COM4C \ Compare Output Mode 4C, bits
  $03 constant TCCR4A_WGM4 \ Waveform Generation Mode
&161 constant TCCR4B	\ Timer/Counter4 Control Register B
  $80 constant TCCR4B_ICNC4 \ Input Capture 4 Noise Canceler
  $40 constant TCCR4B_ICES4 \ Input Capture 4 Edge Select
  $18 constant TCCR4B_WGM4 \ Waveform Generation Mode
  $07 constant TCCR4B_CS4 \ Prescaler source of Timer/Counter 4
&162 constant TCCR4C	\ Timer/Counter 4 Control Register C
  $80 constant TCCR4C_FOC4A \ Force Output Compare 4A
  $40 constant TCCR4C_FOC4B \ Force Output Compare 4B
  $20 constant TCCR4C_FOC4C \ Force Output Compare 4C
&164 constant TCNT4	\ Timer/Counter4  Bytes
&168 constant OCR4A	\ Timer/Counter4 Output Compare Register A  Bytes
&170 constant OCR4B	\ Timer/Counter4 Output Compare Register B  Bytes
&172 constant OCR4C	\ Timer/Counter4 Output Compare Register B  Bytes
&166 constant ICR4	\ Timer/Counter4 Input Capture Register  Bytes
&114 constant TIMSK4	\ Timer/Counter4 Interrupt Mask Register
  $20 constant TIMSK4_ICIE4 \ Timer/Counter4 Input Capture Interrupt Enable
  $08 constant TIMSK4_OCIE4C \ Timer/Counter4 Output Compare C Match Interrupt Enable
  $04 constant TIMSK4_OCIE4B \ Timer/Counter4 Output Compare B Match Interrupt Enable
  $02 constant TIMSK4_OCIE4A \ Timer/Counter4 Output Compare A Match Interrupt Enable
  $01 constant TIMSK4_TOIE4 \ Timer/Counter4 Overflow Interrupt Enable
&57 constant TIFR4	\ Timer/Counter4 Interrupt Flag register
  $20 constant TIFR4_ICF4 \ Input Capture Flag 4
  $08 constant TIFR4_OCF4C \ Output Compare Flag 4C
  $04 constant TIFR4_OCF4B \ Output Compare Flag 4B
  $02 constant TIFR4_OCF4A \ Output Compare Flag 4A
  $01 constant TIFR4_TOV4 \ Timer/Counter4 Overflow Flag
\ TIMER_COUNTER_3
&144 constant TCCR3A	\ Timer/Counter3 Control Register A
  $C0 constant TCCR3A_COM3A \ Compare Output Mode 1A, bits
  $30 constant TCCR3A_COM3B \ Compare Output Mode 3B, bits
  $0C constant TCCR3A_COM3C \ Compare Output Mode 3C, bits
  $03 constant TCCR3A_WGM3 \ Waveform Generation Mode
&145 constant TCCR3B	\ Timer/Counter3 Control Register B
  $80 constant TCCR3B_ICNC3 \ Input Capture 3 Noise Canceler
  $40 constant TCCR3B_ICES3 \ Input Capture 3 Edge Select
  $18 constant TCCR3B_WGM3 \ Waveform Generation Mode
  $07 constant TCCR3B_CS3 \ Prescaler source of Timer/Counter 3
&146 constant TCCR3C	\ Timer/Counter 3 Control Register C
  $80 constant TCCR3C_FOC3A \ Force Output Compare 3A
  $40 constant TCCR3C_FOC3B \ Force Output Compare 3B
  $20 constant TCCR3C_FOC3C \ Force Output Compare 3C
&148 constant TCNT3	\ Timer/Counter3  Bytes
&152 constant OCR3A	\ Timer/Counter3 Output Compare Register A  Bytes
&154 constant OCR3B	\ Timer/Counter3 Output Compare Register B  Bytes
&156 constant OCR3C	\ Timer/Counter3 Output Compare Register B  Bytes
&150 constant ICR3	\ Timer/Counter3 Input Capture Register  Bytes
&113 constant TIMSK3	\ Timer/Counter3 Interrupt Mask Register
  $20 constant TIMSK3_ICIE3 \ Timer/Counter3 Input Capture Interrupt Enable
  $08 constant TIMSK3_OCIE3C \ Timer/Counter3 Output Compare C Match Interrupt Enable
  $04 constant TIMSK3_OCIE3B \ Timer/Counter3 Output Compare B Match Interrupt Enable
  $02 constant TIMSK3_OCIE3A \ Timer/Counter3 Output Compare A Match Interrupt Enable
  $01 constant TIMSK3_TOIE3 \ Timer/Counter3 Overflow Interrupt Enable
&56 constant TIFR3	\ Timer/Counter3 Interrupt Flag register
  $20 constant TIFR3_ICF3 \ Input Capture Flag 3
  $08 constant TIFR3_OCF3C \ Output Compare Flag 3C
  $04 constant TIFR3_OCF3B \ Output Compare Flag 3B
  $02 constant TIFR3_OCF3A \ Output Compare Flag 3A
  $01 constant TIFR3_TOV3 \ Timer/Counter3 Overflow Flag
\ TIMER_COUNTER_1
&128 constant TCCR1A	\ Timer/Counter1 Control Register A
  $C0 constant TCCR1A_COM1A \ Compare Output Mode 1A, bits
  $30 constant TCCR1A_COM1B \ Compare Output Mode 1B, bits
  $0C constant TCCR1A_COM1C \ Compare Output Mode 1C, bits
  $03 constant TCCR1A_WGM1 \ Waveform Generation Mode
&129 constant TCCR1B	\ Timer/Counter1 Control Register B
  $80 constant TCCR1B_ICNC1 \ Input Capture 1 Noise Canceler
  $40 constant TCCR1B_ICES1 \ Input Capture 1 Edge Select
  $18 constant TCCR1B_WGM1 \ Waveform Generation Mode
  $07 constant TCCR1B_CS1 \ Prescaler source of Timer/Counter 1
&130 constant TCCR1C	\ Timer/Counter 1 Control Register C
  $80 constant TCCR1C_FOC1A \ Force Output Compare 1A
  $40 constant TCCR1C_FOC1B \ Force Output Compare 1B
  $20 constant TCCR1C_FOC1C \ Force Output Compare 1C
&132 constant TCNT1	\ Timer/Counter1  Bytes
&136 constant OCR1A	\ Timer/Counter1 Output Compare Register A  Bytes
&138 constant OCR1B	\ Timer/Counter1 Output Compare Register B  Bytes
&140 constant OCR1C	\ Timer/Counter1 Output Compare Register C  Bytes
&134 constant ICR1	\ Timer/Counter1 Input Capture Register  Bytes
&111 constant TIMSK1	\ Timer/Counter1 Interrupt Mask Register
  $20 constant TIMSK1_ICIE1 \ Timer/Counter1 Input Capture Interrupt Enable
  $08 constant TIMSK1_OCIE1C \ Timer/Counter1 Output Compare C Match Interrupt Enable
  $04 constant TIMSK1_OCIE1B \ Timer/Counter1 Output Compare B Match Interrupt Enable
  $02 constant TIMSK1_OCIE1A \ Timer/Counter1 Output Compare A Match Interrupt Enable
  $01 constant TIMSK1_TOIE1 \ Timer/Counter1 Overflow Interrupt Enable
&54 constant TIFR1	\ Timer/Counter1 Interrupt Flag register
  $20 constant TIFR1_ICF1 \ Input Capture Flag 1
  $08 constant TIFR1_OCF1C \ Output Compare Flag 1C
  $04 constant TIFR1_OCF1B \ Output Compare Flag 1B
  $02 constant TIFR1_OCF1A \ Output Compare Flag 1A
  $01 constant TIFR1_TOV1 \ Timer/Counter1 Overflow Flag
\ JTAG
&81 constant OCDR	\ On-Chip Debug Related Register in I/O Memory
&85 constant MCUCR	\ MCU Control Register
  $80 constant MCUCR_JTD \ JTAG Interface Disable
&84 constant MCUSR	\ MCU Status Register
  $10 constant MCUSR_JTRF \ JTAG Reset Flag
\ EXTERNAL_INTERRUPT
&105 constant EICRA	\ External Interrupt Control Register A
  $C0 constant EICRA_ISC3 \ External Interrupt Sense Control Bit
  $30 constant EICRA_ISC2 \ External Interrupt Sense Control Bit
  $0C constant EICRA_ISC1 \ External Interrupt Sense Control Bit
  $03 constant EICRA_ISC0 \ External Interrupt Sense Control Bit
&106 constant EICRB	\ External Interrupt Control Register B
  $C0 constant EICRB_ISC7 \ External Interrupt 7-4 Sense Control Bit
  $30 constant EICRB_ISC6 \ External Interrupt 7-4 Sense Control Bit
  $0C constant EICRB_ISC5 \ External Interrupt 7-4 Sense Control Bit
  $03 constant EICRB_ISC4 \ External Interrupt 7-4 Sense Control Bit
&61 constant EIMSK	\ External Interrupt Mask Register
  $FF constant EIMSK_INT \ External Interrupt Request 7 Enable
&60 constant EIFR	\ External Interrupt Flag Register
  $FF constant EIFR_INTF \ External Interrupt Flags
&109 constant PCMSK2	\ Pin Change Mask Register 2
&108 constant PCMSK1	\ Pin Change Mask Register 1
&107 constant PCMSK0	\ Pin Change Mask Register 0
&59 constant PCIFR	\ Pin Change Interrupt Flag Register
  $07 constant PCIFR_PCIF \ Pin Change Interrupt Flags
&104 constant PCICR	\ Pin Change Interrupt Control Register
  $07 constant PCICR_PCIE \ Pin Change Interrupt Enables
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
&116 constant XMCRA	\ External Memory Control Register A
  $80 constant XMCRA_SRE \ External SRAM Enable
  $70 constant XMCRA_SRL \ Wait state page limit
  $0C constant XMCRA_SRW1 \ Wait state select bit upper page
  $03 constant XMCRA_SRW0 \ Wait state select bit lower page
&117 constant XMCRB	\ External Memory Control Register B
  $80 constant XMCRB_XMBK \ External Memory Bus Keeper Enable
  $07 constant XMCRB_XMM \ External Memory High Mask
&102 constant OSCCAL	\ Oscillator Calibration Value
&97 constant CLKPR	\ 
  $80 constant CLKPR_CLKPCE \ 
  $0F constant CLKPR_CLKPS \ 
&83 constant SMCR	\ Sleep Mode Control Register
  $0E constant SMCR_SM \ Sleep Mode Select bits
  $01 constant SMCR_SE \ Sleep Enable
&92 constant EIND	\ Extended Indirect Register
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
&101 constant PRR1	\ Power Reduction Register1
  $20 constant PRR1_PRTIM5 \ Power Reduction Timer/Counter5
  $10 constant PRR1_PRTIM4 \ Power Reduction Timer/Counter4
  $08 constant PRR1_PRTIM3 \ Power Reduction Timer/Counter3
  $07 constant PRR1_PRUSART \ Power Reduction USART3
&100 constant PRR0	\ Power Reduction Register0
  $80 constant PRR0_PRTWI \ Power Reduction TWI
  $40 constant PRR0_PRTIM2 \ Power Reduction Timer/Counter2
  $20 constant PRR0_PRTIM0 \ Power Reduction Timer/Counter0
  $08 constant PRR0_PRTIM1 \ Power Reduction Timer/Counter1
  $04 constant PRR0_PRSPI \ Power Reduction Serial Peripheral Interface
  $02 constant PRR0_PRUSART0 \ Power Reduction USART
  $01 constant PRR0_PRADC \ Power Reduction ADC
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
&125 constant DIDR2	\ Digital Input Disable Register
  $80 constant DIDR2_ADC15D \ 
  $40 constant DIDR2_ADC14D \ 
  $20 constant DIDR2_ADC13D \ 
  $10 constant DIDR2_ADC12D \ 
  $08 constant DIDR2_ADC11D \ 
  $04 constant DIDR2_ADC10D \ 
  $02 constant DIDR2_ADC9D \ 
  $01 constant DIDR2_ADC8D \ 
&126 constant DIDR0	\ Digital Input Disable Register
  $80 constant DIDR0_ADC7D \ 
  $40 constant DIDR0_ADC6D \ 
  $20 constant DIDR0_ADC5D \ 
  $10 constant DIDR0_ADC4D \ 
  $08 constant DIDR0_ADC3D \ 
  $04 constant DIDR0_ADC2D \ 
  $02 constant DIDR0_ADC1D \ 
  $01 constant DIDR0_ADC0D \ 
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
\ USART2
&214 constant UDR2	\ USART I/O Data Register
&208 constant UCSR2A	\ USART Control and Status Register A
  $80 constant UCSR2A_RXC2 \ USART Receive Complete
  $40 constant UCSR2A_TXC2 \ USART Transmitt Complete
  $20 constant UCSR2A_UDRE2 \ USART Data Register Empty
  $10 constant UCSR2A_FE2 \ Framing Error
  $08 constant UCSR2A_DOR2 \ Data overRun
  $04 constant UCSR2A_UPE2 \ Parity Error
  $02 constant UCSR2A_U2X2 \ Double the USART transmission speed
  $01 constant UCSR2A_MPCM2 \ Multi-processor Communication Mode
&209 constant UCSR2B	\ USART Control and Status Register B
  $80 constant UCSR2B_RXCIE2 \ RX Complete Interrupt Enable
  $40 constant UCSR2B_TXCIE2 \ TX Complete Interrupt Enable
  $20 constant UCSR2B_UDRIE2 \ USART Data register Empty Interrupt Enable
  $10 constant UCSR2B_RXEN2 \ Receiver Enable
  $08 constant UCSR2B_TXEN2 \ Transmitter Enable
  $04 constant UCSR2B_UCSZ22 \ Character Size
  $02 constant UCSR2B_RXB82 \ Receive Data Bit 8
  $01 constant UCSR2B_TXB82 \ Transmit Data Bit 8
&210 constant UCSR2C	\ USART Control and Status Register C
  $C0 constant UCSR2C_UMSEL2 \ USART Mode Select
  $30 constant UCSR2C_UPM2 \ Parity Mode Bits
  $08 constant UCSR2C_USBS2 \ Stop Bit Select
  $06 constant UCSR2C_UCSZ2 \ Character Size
  $01 constant UCSR2C_UCPOL2 \ Clock Polarity
&212 constant UBRR2	\ USART Baud Rate Register  Bytes
\ USART3
&310 constant UDR3	\ USART I/O Data Register
&304 constant UCSR3A	\ USART Control and Status Register A
  $80 constant UCSR3A_RXC3 \ USART Receive Complete
  $40 constant UCSR3A_TXC3 \ USART Transmitt Complete
  $20 constant UCSR3A_UDRE3 \ USART Data Register Empty
  $10 constant UCSR3A_FE3 \ Framing Error
  $08 constant UCSR3A_DOR3 \ Data overRun
  $04 constant UCSR3A_UPE3 \ Parity Error
  $02 constant UCSR3A_U2X3 \ Double the USART transmission speed
  $01 constant UCSR3A_MPCM3 \ Multi-processor Communication Mode
&305 constant UCSR3B	\ USART Control and Status Register B
  $80 constant UCSR3B_RXCIE3 \ RX Complete Interrupt Enable
  $40 constant UCSR3B_TXCIE3 \ TX Complete Interrupt Enable
  $20 constant UCSR3B_UDRIE3 \ USART Data register Empty Interrupt Enable
  $10 constant UCSR3B_RXEN3 \ Receiver Enable
  $08 constant UCSR3B_TXEN3 \ Transmitter Enable
  $04 constant UCSR3B_UCSZ32 \ Character Size
  $02 constant UCSR3B_RXB83 \ Receive Data Bit 8
  $01 constant UCSR3B_TXB83 \ Transmit Data Bit 8
&306 constant UCSR3C	\ USART Control and Status Register C
  $C0 constant UCSR3C_UMSEL3 \ USART Mode Select
  $30 constant UCSR3C_UPM3 \ Parity Mode Bits
  $08 constant UCSR3C_USBS3 \ Stop Bit Select
  $06 constant UCSR3C_UCSZ3 \ Character Size
  $01 constant UCSR3C_UCPOL3 \ Clock Polarity
&308 constant UBRR3	\ USART Baud Rate Register  Bytes

\ Interrupts
&2  constant INT0Addr \ External Interrupt Request 0
&4  constant INT1Addr \ External Interrupt Request 1
&6  constant INT2Addr \ External Interrupt Request 2
&8  constant INT3Addr \ External Interrupt Request 3
&10  constant INT4Addr \ External Interrupt Request 4
&12  constant INT5Addr \ External Interrupt Request 5
&14  constant INT6Addr \ External Interrupt Request 6
&16  constant INT7Addr \ External Interrupt Request 7
&18  constant PCINT0Addr \ Pin Change Interrupt Request 0
&20  constant PCINT1Addr \ Pin Change Interrupt Request 1
&22  constant PCINT2Addr \ Pin Change Interrupt Request 2
&24  constant WDTAddr \ Watchdog Time-out Interrupt
&26  constant TIMER2_COMPAAddr \ Timer/Counter2 Compare Match A
&28  constant TIMER2_COMPBAddr \ Timer/Counter2 Compare Match B
&30  constant TIMER2_OVFAddr \ Timer/Counter2 Overflow
&32  constant TIMER1_CAPTAddr \ Timer/Counter1 Capture Event
&34  constant TIMER1_COMPAAddr \ Timer/Counter1 Compare Match A
&36  constant TIMER1_COMPBAddr \ Timer/Counter1 Compare Match B
&38  constant TIMER1_COMPCAddr \ Timer/Counter1 Compare Match C
&40  constant TIMER1_OVFAddr \ Timer/Counter1 Overflow
&42  constant TIMER0_COMPAAddr \ Timer/Counter0 Compare Match A
&44  constant TIMER0_COMPBAddr \ Timer/Counter0 Compare Match B
&46  constant TIMER0_OVFAddr \ Timer/Counter0 Overflow
&48  constant SPI__STCAddr \ SPI Serial Transfer Complete
&50  constant USART0__RXAddr \ USART0, Rx Complete
&52  constant USART0__UDREAddr \ USART0 Data register Empty
&54  constant USART0__TXAddr \ USART0, Tx Complete
&56  constant ANALOG_COMPAddr \ Analog Comparator
&58  constant ADCAddr \ ADC Conversion Complete
&60  constant EE_READYAddr \ EEPROM Ready
&62  constant TIMER3_CAPTAddr \ Timer/Counter3 Capture Event
&64  constant TIMER3_COMPAAddr \ Timer/Counter3 Compare Match A
&66  constant TIMER3_COMPBAddr \ Timer/Counter3 Compare Match B
&68  constant TIMER3_COMPCAddr \ Timer/Counter3 Compare Match C
&70  constant TIMER3_OVFAddr \ Timer/Counter3 Overflow
&72  constant USART1__RXAddr \ USART1, Rx Complete
&74  constant USART1__UDREAddr \ USART1 Data register Empty
&76  constant USART1__TXAddr \ USART1, Tx Complete
&78  constant TWIAddr \ 2-wire Serial Interface
&80  constant SPM_READYAddr \ Store Program Memory Read
&82  constant TIMER4_CAPTAddr \ Timer/Counter4 Capture Event
&84  constant TIMER4_COMPAAddr \ Timer/Counter4 Compare Match A
&86  constant TIMER4_COMPBAddr \ Timer/Counter4 Compare Match B
&88  constant TIMER4_COMPCAddr \ Timer/Counter4 Compare Match C
&90  constant TIMER4_OVFAddr \ Timer/Counter4 Overflow
&92  constant TIMER5_CAPTAddr \ Timer/Counter5 Capture Event
&94  constant TIMER5_COMPAAddr \ Timer/Counter5 Compare Match A
&96  constant TIMER5_COMPBAddr \ Timer/Counter5 Compare Match B
&98  constant TIMER5_COMPCAddr \ Timer/Counter5 Compare Match C
&100  constant TIMER5_OVFAddr \ Timer/Counter5 Overflow
&102  constant USART2__RXAddr \ USART2, Rx Complete
&104  constant USART2__UDREAddr \ USART2 Data register Empty
&106  constant USART2__TXAddr \ USART2, Tx Complete
&108  constant USART3__RXAddr \ USART3, Rx Complete
&110  constant USART3__UDREAddr \ USART3 Data register Empty
&112  constant USART3__TXAddr \ USART3, Tx Complete
