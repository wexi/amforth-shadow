\ Partname: ATmega128RFA1
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
  $03 constant ACSR_ACIS \ Analog Comparator Interrupt Mode Select
&127 constant DIDR1	\ Digital Input Disable Register 1
  $02 constant DIDR1_AIN1D \ AIN1 Digital Input Disable
  $01 constant DIDR1_AIN0D \ AIN0 Digital Input Disable
\ USART0
&198 constant UDR0	\ USART0 I/O Data Register
&192 constant UCSR0A	\ USART0 Control and Status Register A
  $80 constant UCSR0A_RXC0 \ USART Receive Complete
  $40 constant UCSR0A_TXC0 \ USART Transmit Complete
  $20 constant UCSR0A_UDRE0 \ USART Data Register Empty
  $10 constant UCSR0A_FE0 \ Frame Error
  $08 constant UCSR0A_DOR0 \ Data OverRun
  $04 constant UCSR0A_UPE0 \ USART Parity Error
  $02 constant UCSR0A_U2X0 \ Double the USART Transmission Speed
  $01 constant UCSR0A_MPCM0 \ Multi-processor Communication Mode
&193 constant UCSR0B	\ USART0 Control and Status Register B
  $80 constant UCSR0B_RXCIE0 \ RX Complete Interrupt Enable
  $40 constant UCSR0B_TXCIE0 \ TX Complete Interrupt Enable
  $20 constant UCSR0B_UDRIE0 \ USART Data Register Empty Interrupt Enable
  $10 constant UCSR0B_RXEN0 \ Receiver Enable
  $08 constant UCSR0B_TXEN0 \ Transmitter Enable
  $04 constant UCSR0B_UCSZ02 \ Character Size
  $02 constant UCSR0B_RXB80 \ Receive Data Bit 8
  $01 constant UCSR0B_TXB80 \ Transmit Data Bit 8
&194 constant UCSR0C	\ USART0 Control and Status Register C
  $C0 constant UCSR0C_UMSEL0 \ USART Mode Select
  $30 constant UCSR0C_UPM0 \ Parity Mode
  $08 constant UCSR0C_USBS0 \ Stop Bit Select
  $06 constant UCSR0C_UCSZ0 \ Character Size
  $01 constant UCSR0C_UCPOL0 \ Clock Polarity
&196 constant UBRR0	\ USART0 Baud Rate Register  Bytes
\ USART1
&206 constant UDR1	\ USART1 I/O Data Register
&200 constant UCSR1A	\ USART1 Control and Status Register A
  $80 constant UCSR1A_RXC1 \ USART Receive Complete
  $40 constant UCSR1A_TXC1 \ USART Transmit Complete
  $20 constant UCSR1A_UDRE1 \ USART Data Register Empty
  $10 constant UCSR1A_FE1 \ Frame Error
  $08 constant UCSR1A_DOR1 \ Data OverRun
  $04 constant UCSR1A_UPE1 \ USART Parity Error
  $02 constant UCSR1A_U2X1 \ Double the USART Transmission Speed
  $01 constant UCSR1A_MPCM1 \ Multi-processor Communication Mode
&201 constant UCSR1B	\ USART1 Control and Status Register B
  $80 constant UCSR1B_RXCIE1 \ RX Complete Interrupt Enable
  $40 constant UCSR1B_TXCIE1 \ TX Complete Interrupt Enable
  $20 constant UCSR1B_UDRIE1 \ USART Data Register Empty Interrupt Enable
  $10 constant UCSR1B_RXEN1 \ Receiver Enable
  $08 constant UCSR1B_TXEN1 \ Transmitter Enable
  $04 constant UCSR1B_UCSZ12 \ Character Size
  $02 constant UCSR1B_RXB81 \ Receive Data Bit 8
  $01 constant UCSR1B_TXB81 \ Transmit Data Bit 8
&202 constant UCSR1C	\ USART1 Control and Status Register C
  $C0 constant UCSR1C_UMSEL1 \ USART Mode Select
  $30 constant UCSR1C_UPM1 \ Parity Mode
  $08 constant UCSR1C_USBS1 \ Stop Bit Select
  $06 constant UCSR1C_UCSZ1 \ Character Size
  $01 constant UCSR1C_UCPOL1 \ Clock Polarity
&204 constant UBRR1	\ USART1 Baud Rate Register  Bytes
\ TWI
&189 constant TWAMR	\ TWI (Slave) Address Mask Register
  $FE constant TWAMR_TWAM \ TWI Address Mask
  $01 constant TWAMR_Res \ Reserved Bit
&184 constant TWBR	\ TWI Bit Rate Register
&188 constant TWCR	\ TWI Control Register
  $80 constant TWCR_TWINT \ TWI Interrupt Flag
  $40 constant TWCR_TWEA \ TWI Enable Acknowledge Bit
  $20 constant TWCR_TWSTA \ TWI START Condition Bit
  $10 constant TWCR_TWSTO \ TWI STOP Condition Bit
  $08 constant TWCR_TWWC \ TWI Write Collision Flag
  $04 constant TWCR_TWEN \ TWI Enable Bit
  $02 constant TWCR_Res \ Reserved Bit
  $01 constant TWCR_TWIE \ TWI Interrupt Enable
&185 constant TWSR	\ TWI Status Register
  $F8 constant TWSR_TWS \ TWI Status
  $04 constant TWSR_Res \ Reserved Bit
  $03 constant TWSR_TWPS \ TWI Prescaler Bits
&187 constant TWDR	\ TWI Data Register
&186 constant TWAR	\ TWI (Slave) Address Register
  $FE constant TWAR_TWA \ TWI (Slave) Address
  $01 constant TWAR_TWGCE \ TWI General Call Recognition Enable Bit
\ SPI
&76 constant SPCR	\ SPI Control Register
  $80 constant SPCR_SPIE \ SPI Interrupt Enable
  $40 constant SPCR_SPE \ SPI Enable
  $20 constant SPCR_DORD \ Data Order
  $10 constant SPCR_MSTR \ Master/Slave Select
  $08 constant SPCR_CPOL \ Clock polarity
  $04 constant SPCR_CPHA \ Clock Phase
  $03 constant SPCR_SPR \ SPI Clock Rate Select 1 and 0
&77 constant SPSR	\ SPI Status Register
  $80 constant SPSR_SPIF \ SPI Interrupt Flag
  $40 constant SPSR_WCOL \ Write Collision Flag
  $3E constant SPSR_Res \ Reserved
  $01 constant SPSR_SPI2X \ Double SPI Speed Bit
&78 constant SPDR	\ SPI Data Register
\ PORTA
&34 constant PORTA	\ Port A Data Register
&33 constant DDRA	\ Port A Data Direction Register
&32 constant PINA	\ Port A Input Pins Address
\ PORTB
&37 constant PORTB	\ Port B Data Register
&36 constant DDRB	\ Port B Data Direction Register
&35 constant PINB	\ Port B Input Pins Address
\ PORTC
&40 constant PORTC	\ Port C Data Register
&39 constant DDRC	\ Port C Data Direction Register
&38 constant PINC	\ Port C Input Pins Address
\ PORTD
&43 constant PORTD	\ Port D Data Register
&42 constant DDRD	\ Port D Data Direction Register
&41 constant PIND	\ Port D Input Pins Address
\ PORTE
&46 constant PORTE	\ Port E Data Register
&45 constant DDRE	\ Port E Data Direction Register
&44 constant PINE	\ Port E Input Pins Address
\ PORTF
&49 constant PORTF	\ Port F Data Register
&48 constant DDRF	\ Port F Data Direction Register
&47 constant PINF	\ Port F Input Pins Address
\ PORTG
&52 constant PORTG	\ Port G Data Register
&51 constant DDRG	\ Port G Data Direction Register
&50 constant PING	\ Port G Input Pins Address
\ TIMER_COUNTER_0
&72 constant OCR0B	\ Timer/Counter0 Output Compare Register B
&71 constant OCR0A	\ Timer/Counter0 Output Compare Register
&70 constant TCNT0	\ Timer/Counter0 Register
&69 constant TCCR0B	\ Timer/Counter0 Control Register B
  $80 constant TCCR0B_FOC0A \ Force Output Compare A
  $40 constant TCCR0B_FOC0B \ Force Output Compare B
  $30 constant TCCR0B_Res \ Reserved Bit
  $08 constant TCCR0B_WGM02 \ 
  $07 constant TCCR0B_CS0 \ Clock Select
&68 constant TCCR0A	\ Timer/Counter0 Control Register A
  $C0 constant TCCR0A_COM0A \ Compare Match Output A Mode
  $30 constant TCCR0A_COM0B \ Compare Match Output B Mode
  $0C constant TCCR0A_Res \ Reserved Bit
  $03 constant TCCR0A_WGM0 \ Waveform Generation Mode
&110 constant TIMSK0	\ Timer/Counter0 Interrupt Mask Register
  $F8 constant TIMSK0_Res \ Reserved
  $04 constant TIMSK0_OCIE0B \ Timer/Counter0 Output Compare Match B Interrupt Enable
  $02 constant TIMSK0_OCIE0A \ Timer/Counter0 Output Compare Match A Interrupt Enable
  $01 constant TIMSK0_TOIE0 \ Timer/Counter0 Overflow Interrupt Enable
&53 constant TIFR0	\ Timer/Counter0 Interrupt Flag Register
  $F8 constant TIFR0_Res \ Reserved
  $04 constant TIFR0_OCF0B \ Timer/Counter0 Output Compare B Match Flag
  $02 constant TIFR0_OCF0A \ Timer/Counter0 Output Compare A Match Flag
  $01 constant TIFR0_TOV0 \ Timer/Counter0 Overflow Flag
&67 constant GTCCR	\ General Timer/Counter Control Register
  $80 constant GTCCR_TSM \ Timer/Counter Synchronization Mode
  $7C constant GTCCR_Res \ Reserved
  $02 constant GTCCR_PSRASY \ Prescaler Reset Timer/Counter2
  $01 constant GTCCR_PSRSYNC \ Prescaler Reset for Synchronous Timer/Counters
\ TIMER_COUNTER_2
&112 constant TIMSK2	\ Timer/Counter Interrupt Mask register
  $F8 constant TIMSK2_Res \ Reserved Bit
  $04 constant TIMSK2_OCIE2B \ Timer/Counter2 Output Compare Match B Interrupt Enable
  $02 constant TIMSK2_OCIE2A \ Timer/Counter2 Output Compare Match A Interrupt Enable
  $01 constant TIMSK2_TOIE2 \ Timer/Counter2 Overflow Interrupt Enable
&55 constant TIFR2	\ Timer/Counter Interrupt Flag Register
  $F8 constant TIFR2_Res \ Reserved Bit
  $04 constant TIFR2_OCF2B \ Output Compare Flag 2 B
  $02 constant TIFR2_OCF2A \ Output Compare Flag 2 A
  $01 constant TIFR2_TOV2 \ Timer/Counter2 Overflow Flag
&176 constant TCCR2A	\ Timer/Counter2 Control Register A
  $C0 constant TCCR2A_COM2A \ Compare Match Output A Mode
  $30 constant TCCR2A_COM2B \ Compare Match Output B Mode
  $0C constant TCCR2A_Res \ Reserved
  $03 constant TCCR2A_WGM2 \ Waveform Generation Mode
&177 constant TCCR2B	\ Timer/Counter2 Control Register B
  $80 constant TCCR2B_FOC2A \ Force Output Compare A
  $40 constant TCCR2B_FOC2B \ Force Output Compare B
  $30 constant TCCR2B_Res \ Reserved
  $08 constant TCCR2B_WGM22 \ Waveform Generation Mode
  $07 constant TCCR2B_CS2 \ Clock Select
&178 constant TCNT2	\ Timer/Counter2
&180 constant OCR2B	\ Timer/Counter2 Output Compare Register B
&179 constant OCR2A	\ Timer/Counter2 Output Compare Register A
&182 constant ASSR	\ Asynchronous Status Register
  $80 constant ASSR_EXCLKAMR \ Enable External Clock Input for AMR
  $40 constant ASSR_EXCLK \ Enable External Clock Input
  $20 constant ASSR_AS2 \ Timer/Counter2 Asynchronous Mode
  $10 constant ASSR_TCN2UB \ Timer/Counter2 Update Busy
  $08 constant ASSR_OCR2AUB \ Timer/Counter2 Output Compare Register A Update Busy
  $04 constant ASSR_OCR2BUB \ Timer/Counter2 Output Compare Register B Update Busy
  $02 constant ASSR_TCR2AUB \ Timer/Counter2 Control Register A Update Busy
  $01 constant ASSR_TCR2BUB \ Timer/Counter2 Control Register B Update Busy
\ WATCHDOG
&96 constant WDTCSR	\ Watchdog Timer Control Register
  $80 constant WDTCSR_WDIF \ Watchdog Timeout Interrupt Flag
  $40 constant WDTCSR_WDIE \ Watchdog Timeout Interrupt Enable
  $27 constant WDTCSR_WDP \ Watchdog Timer Prescaler Bits
  $10 constant WDTCSR_WDCE \ Watchdog Change Enable
  $08 constant WDTCSR_WDE \ Watch Dog Enable
\ TIMER_COUNTER_5
&288 constant TCCR5A	\ Timer/Counter5 Control Register A
  $C0 constant TCCR5A_COM5A \ Compare Output Mode for Channel A
  $30 constant TCCR5A_COM5B \ Compare Output Mode for Channel B
  $0C constant TCCR5A_COM5C \ Compare Output Mode for Channel C
  $03 constant TCCR5A_WGM5 \ Waveform Generation Mode
&289 constant TCCR5B	\ Timer/Counter5 Control Register B
  $80 constant TCCR5B_ICNC5 \ Input Capture 5 Noise Canceller
  $40 constant TCCR5B_ICES5 \ Input Capture 5 Edge Select
  $20 constant TCCR5B_Res \ Reserved Bit
  $18 constant TCCR5B_WGM5 \ Waveform Generation Mode
  $07 constant TCCR5B_CS5 \ Clock Select
&290 constant TCCR5C	\ Timer/Counter5 Control Register C
  $80 constant TCCR5C_FOC5A \ Force Output Compare for Channel A
  $40 constant TCCR5C_FOC5B \ Force Output Compare for Channel B
  $20 constant TCCR5C_FOC5C \ Force Output Compare for Channel C
  $1F constant TCCR5C_Res \ Reserved
&292 constant TCNT5	\ Timer/Counter5  Bytes
&296 constant OCR5A	\ Timer/Counter5 Output Compare Register A  Bytes
&298 constant OCR5B	\ Timer/Counter5 Output Compare Register B  Bytes
&300 constant OCR5C	\ Timer/Counter5 Output Compare Register C  Bytes
&294 constant ICR5	\ Timer/Counter5 Input Capture Register  Bytes
&115 constant TIMSK5	\ Timer/Counter5 Interrupt Mask Register
  $C0 constant TIMSK5_Res \ Reserved Bit
  $20 constant TIMSK5_ICIE5 \ Timer/Counter5 Input Capture Interrupt Enable
  $10 constant TIMSK5_Res \ Reserved Bit
  $08 constant TIMSK5_OCIE5C \ Timer/Counter5 Output Compare C Match Interrupt Enable
  $04 constant TIMSK5_OCIE5B \ Timer/Counter5 Output Compare B Match Interrupt Enable
  $02 constant TIMSK5_OCIE5A \ Timer/Counter5 Output Compare A Match Interrupt Enable
  $01 constant TIMSK5_TOIE5 \ Timer/Counter5 Overflow Interrupt Enable
&58 constant TIFR5	\ Timer/Counter5 Interrupt Flag Register
  $C0 constant TIFR5_Res \ Reserved Bit
  $20 constant TIFR5_ICF5 \ Timer/Counter5 Input Capture Flag
  $10 constant TIFR5_Res \ Reserved Bit
  $08 constant TIFR5_OCF5C \ Timer/Counter5 Output Compare C Match Flag
  $04 constant TIFR5_OCF5B \ Timer/Counter5 Output Compare B Match Flag
  $02 constant TIFR5_OCF5A \ Timer/Counter5 Output Compare A Match Flag
  $01 constant TIFR5_TOV5 \ Timer/Counter5 Overflow Flag
\ TIMER_COUNTER_4
&160 constant TCCR4A	\ Timer/Counter4 Control Register A
  $C0 constant TCCR4A_COM4A \ Compare Output Mode for Channel A
  $30 constant TCCR4A_COM4B \ Compare Output Mode for Channel B
  $0C constant TCCR4A_COM4C \ Compare Output Mode for Channel C
  $03 constant TCCR4A_WGM4 \ Waveform Generation Mode
&161 constant TCCR4B	\ Timer/Counter4 Control Register B
  $80 constant TCCR4B_ICNC4 \ Input Capture 4 Noise Canceller
  $40 constant TCCR4B_ICES4 \ Input Capture 4 Edge Select
  $20 constant TCCR4B_Res \ Reserved Bit
  $18 constant TCCR4B_WGM4 \ Waveform Generation Mode
  $07 constant TCCR4B_CS4 \ Clock Select
&162 constant TCCR4C	\ Timer/Counter4 Control Register C
  $80 constant TCCR4C_FOC4A \ Force Output Compare for Channel A
  $40 constant TCCR4C_FOC4B \ Force Output Compare for Channel B
  $20 constant TCCR4C_FOC4C \ Force Output Compare for Channel C
  $1F constant TCCR4C_Res \ Reserved
&164 constant TCNT4	\ Timer/Counter4  Bytes
&168 constant OCR4A	\ Timer/Counter4 Output Compare Register A  Bytes
&170 constant OCR4B	\ Timer/Counter4 Output Compare Register B  Bytes
&172 constant OCR4C	\ Timer/Counter4 Output Compare Register C  Bytes
&166 constant ICR4	\ Timer/Counter4 Input Capture Register  Bytes
&114 constant TIMSK4	\ Timer/Counter4 Interrupt Mask Register
  $C0 constant TIMSK4_Res \ Reserved Bit
  $20 constant TIMSK4_ICIE4 \ Timer/Counter4 Input Capture Interrupt Enable
  $10 constant TIMSK4_Res \ Reserved Bit
  $08 constant TIMSK4_OCIE4C \ Timer/Counter4 Output Compare C Match Interrupt Enable
  $04 constant TIMSK4_OCIE4B \ Timer/Counter4 Output Compare B Match Interrupt Enable
  $02 constant TIMSK4_OCIE4A \ Timer/Counter4 Output Compare A Match Interrupt Enable
  $01 constant TIMSK4_TOIE4 \ Timer/Counter4 Overflow Interrupt Enable
&57 constant TIFR4	\ Timer/Counter4 Interrupt Flag Register
  $C0 constant TIFR4_Res \ Reserved Bit
  $20 constant TIFR4_ICF4 \ Timer/Counter4 Input Capture Flag
  $10 constant TIFR4_Res \ Reserved Bit
  $08 constant TIFR4_OCF4C \ Timer/Counter4 Output Compare C Match Flag
  $04 constant TIFR4_OCF4B \ Timer/Counter4 Output Compare B Match Flag
  $02 constant TIFR4_OCF4A \ Timer/Counter4 Output Compare A Match Flag
  $01 constant TIFR4_TOV4 \ Timer/Counter4 Overflow Flag
\ TIMER_COUNTER_3
&144 constant TCCR3A	\ Timer/Counter3 Control Register A
  $C0 constant TCCR3A_COM3A \ Compare Output Mode for Channel A
  $30 constant TCCR3A_COM3B \ Compare Output Mode for Channel B
  $0C constant TCCR3A_COM3C \ Compare Output Mode for Channel C
  $03 constant TCCR3A_WGM3 \ Waveform Generation Mode
&145 constant TCCR3B	\ Timer/Counter3 Control Register B
  $80 constant TCCR3B_ICNC3 \ Input Capture 3 Noise Canceller
  $40 constant TCCR3B_ICES3 \ Input Capture 3 Edge Select
  $20 constant TCCR3B_Res \ Reserved Bit
  $18 constant TCCR3B_WGM3 \ Waveform Generation Mode
  $07 constant TCCR3B_CS3 \ Clock Select
&146 constant TCCR3C	\ Timer/Counter3 Control Register C
  $80 constant TCCR3C_FOC3A \ Force Output Compare for Channel A
  $40 constant TCCR3C_FOC3B \ Force Output Compare for Channel B
  $20 constant TCCR3C_FOC3C \ Force Output Compare for Channel C
  $1F constant TCCR3C_Res \ Reserved
&148 constant TCNT3	\ Timer/Counter3  Bytes
&152 constant OCR3A	\ Timer/Counter3 Output Compare Register A  Bytes
&154 constant OCR3B	\ Timer/Counter3 Output Compare Register B  Bytes
&156 constant OCR3C	\ Timer/Counter3 Output Compare Register C  Bytes
&150 constant ICR3	\ Timer/Counter3 Input Capture Register  Bytes
&113 constant TIMSK3	\ Timer/Counter3 Interrupt Mask Register
  $C0 constant TIMSK3_Res \ Reserved Bit
  $20 constant TIMSK3_ICIE3 \ Timer/Counter3 Input Capture Interrupt Enable
  $10 constant TIMSK3_Res \ Reserved Bit
  $08 constant TIMSK3_OCIE3C \ Timer/Counter3 Output Compare C Match Interrupt Enable
  $04 constant TIMSK3_OCIE3B \ Timer/Counter3 Output Compare B Match Interrupt Enable
  $02 constant TIMSK3_OCIE3A \ Timer/Counter3 Output Compare A Match Interrupt Enable
  $01 constant TIMSK3_TOIE3 \ Timer/Counter3 Overflow Interrupt Enable
&56 constant TIFR3	\ Timer/Counter3 Interrupt Flag Register
  $C0 constant TIFR3_Res \ Reserved Bit
  $20 constant TIFR3_ICF3 \ Timer/Counter3 Input Capture Flag
  $10 constant TIFR3_Res \ Reserved Bit
  $08 constant TIFR3_OCF3C \ Timer/Counter3 Output Compare C Match Flag
  $04 constant TIFR3_OCF3B \ Timer/Counter3 Output Compare B Match Flag
  $02 constant TIFR3_OCF3A \ Timer/Counter3 Output Compare A Match Flag
  $01 constant TIFR3_TOV3 \ Timer/Counter3 Overflow Flag
\ TIMER_COUNTER_1
&128 constant TCCR1A	\ Timer/Counter1 Control Register A
  $C0 constant TCCR1A_COM1A \ Compare Output Mode for Channel A
  $30 constant TCCR1A_COM1B \ Compare Output Mode for Channel B
  $0C constant TCCR1A_COM1C \ Compare Output Mode for Channel C
  $03 constant TCCR1A_WGM1 \ Waveform Generation Mode
&129 constant TCCR1B	\ Timer/Counter1 Control Register B
  $80 constant TCCR1B_ICNC1 \ Input Capture 1 Noise Canceller
  $40 constant TCCR1B_ICES1 \ Input Capture 1 Edge Select
  $20 constant TCCR1B_Res \ Reserved Bit
  $18 constant TCCR1B_WGM1 \ Waveform Generation Mode
  $07 constant TCCR1B_CS1 \ Clock Select
&130 constant TCCR1C	\ Timer/Counter1 Control Register C
  $80 constant TCCR1C_FOC1A \ Force Output Compare for Channel A
  $40 constant TCCR1C_FOC1B \ Force Output Compare for Channel B
  $20 constant TCCR1C_FOC1C \ Force Output Compare for Channel C
  $1F constant TCCR1C_Res \ Reserved
&132 constant TCNT1	\ Timer/Counter1  Bytes
&136 constant OCR1A	\ Timer/Counter1 Output Compare Register A  Bytes
&138 constant OCR1B	\ Timer/Counter1 Output Compare Register B  Bytes
&140 constant OCR1C	\ Timer/Counter1 Output Compare Register C  Bytes
&134 constant ICR1	\ Timer/Counter1 Input Capture Register  Bytes
&111 constant TIMSK1	\ Timer/Counter1 Interrupt Mask Register
  $C0 constant TIMSK1_Res \ Reserved Bit
  $20 constant TIMSK1_ICIE1 \ Timer/Counter1 Input Capture Interrupt Enable
  $10 constant TIMSK1_Res \ Reserved Bit
  $08 constant TIMSK1_OCIE1C \ Timer/Counter1 Output Compare C Match Interrupt Enable
  $04 constant TIMSK1_OCIE1B \ Timer/Counter1 Output Compare B Match Interrupt Enable
  $02 constant TIMSK1_OCIE1A \ Timer/Counter1 Output Compare A Match Interrupt Enable
  $01 constant TIMSK1_TOIE1 \ Timer/Counter1 Overflow Interrupt Enable
&54 constant TIFR1	\ Timer/Counter1 Interrupt Flag Register
  $C0 constant TIFR1_Res \ Reserved Bit
  $20 constant TIFR1_ICF1 \ Timer/Counter1 Input Capture Flag
  $10 constant TIFR1_Res \ Reserved Bit
  $08 constant TIFR1_OCF1C \ Timer/Counter1 Output Compare C Match Flag
  $04 constant TIFR1_OCF1B \ Timer/Counter1 Output Compare B Match Flag
  $02 constant TIFR1_OCF1A \ Timer/Counter1 Output Compare A Match Flag
  $01 constant TIFR1_TOV1 \ Timer/Counter1 Overflow Flag
\ TRX24
&316 constant AES_CTRL	\ AES Control Register
  $80 constant AES_CTRL_AES_REQUEST \ Request AES Operation.
  $40 constant AES_CTRL_Res \ Reserved Bit
  $20 constant AES_CTRL_AES_MODE \ Set AES Operation Mode
  $10 constant AES_CTRL_Res \ Reserved Bit
  $08 constant AES_CTRL_AES_DIR \ Set AES Operation Direction
  $04 constant AES_CTRL_AES_IM \ AES Interrupt Enable
  $03 constant AES_CTRL_Res \ Reserved Bit
&317 constant AES_STATUS	\ AES Status Register
  $80 constant AES_STATUS_AES_ER \ AES Operation Finished with Error
  $7E constant AES_STATUS_Res \ Reserved
  $01 constant AES_STATUS_AES_DONE \ AES Operation Finished with Success
&318 constant AES_STATE	\ AES Plain and Cipher Text Buffer Register
  $FF constant AES_STATE_AES_STATE \ AES Plain and Cipher Text Buffer
&319 constant AES_KEY	\ AES Encryption and Decryption Key Buffer Register
  $FF constant AES_KEY_AES_KEY \ AES Encryption/Decryption Key Buffer
&321 constant TRX_STATUS	\ Transceiver Status Register
  $80 constant TRX_STATUS_CCA_DONE \ CCA Algorithm Status
  $40 constant TRX_STATUS_CCA_STATUS \ CCA Status Result
  $20 constant TRX_STATUS_TST_STATUS \ Test mode status
  $1F constant TRX_STATUS_TRX_STATUS \ Transceiver Main Status
&322 constant TRX_STATE	\ Transceiver State Control Register
  $E0 constant TRX_STATE_TRAC_STATUS \ Transaction Status
  $1F constant TRX_STATE_TRX_CMD \ State Control Command
&323 constant TRX_CTRL_0	\ Reserved
  $FF constant TRX_CTRL_0_Res \ Reserved
&324 constant TRX_CTRL_1	\ Transceiver Control Register 1
  $80 constant TRX_CTRL_1_PA_EXT_EN \ External PA support enable
  $40 constant TRX_CTRL_1_IRQ_2_EXT_EN \ Connect Frame Start IRQ to TC1
  $20 constant TRX_CTRL_1_TX_AUTO_CRC_ON \ Enable Automatic CRC Calculation
  $1F constant TRX_CTRL_1_Res \ Reserved
&325 constant PHY_TX_PWR	\ Transceiver Transmit Power Control Register
  $C0 constant PHY_TX_PWR_PA_BUF_LT \ Power Amplifier Buffer Lead Time
  $30 constant PHY_TX_PWR_PA_LT \ Power Amplifier Lead Time
  $0F constant PHY_TX_PWR_TX_PWR \ Transmit Power Setting
&326 constant PHY_RSSI	\ Receiver Signal Strength Indicator Register
  $80 constant PHY_RSSI_RX_CRC_VALID \ Received Frame CRC Status
  $60 constant PHY_RSSI_RND_VALUE \ Random Value
  $1F constant PHY_RSSI_RSSI \ Receiver Signal Strength Indicator
&327 constant PHY_ED_LEVEL	\ Transceiver Energy Detection Level Register
  $FF constant PHY_ED_LEVEL_ED_LEVEL \ Energy Detection Level
&328 constant PHY_CC_CCA	\ Transceiver Clear Channel Assessment (CCA) Control Register
  $80 constant PHY_CC_CCA_CCA_REQUEST \ Manual CCA Measurement Request
  $60 constant PHY_CC_CCA_CCA_MODE \ Select CCA Measurement Mode
  $1F constant PHY_CC_CCA_CHANNEL \ RX/TX Channel Selection
&329 constant CCA_THRES	\ Transceiver CCA Threshold Setting Register
  $F0 constant CCA_THRES_CCA_CS_THRES \ CS Threshold Level for CCA Measurement
  $0F constant CCA_THRES_CCA_ED_THRES \ ED Threshold Level for CCA Measurement
&330 constant RX_CTRL	\ Transceiver Receive Control Register
  $0F constant RX_CTRL_PDT_THRES \ Receiver Sensitivity Control
&331 constant SFD_VALUE	\ Start of Frame Delimiter Value Register
  $FF constant SFD_VALUE_SFD_VALUE \ Start of Frame Delimiter Value
&332 constant TRX_CTRL_2	\ Transceiver Control Register 2
  $80 constant TRX_CTRL_2_RX_SAFE_MODE \ RX Safe Mode
  $7C constant TRX_CTRL_2_Res \ Reserved
  $03 constant TRX_CTRL_2_OQPSK_DATA_RATE \ Data Rate Selection
&333 constant ANT_DIV	\ Antenna Diversity Control Register
  $80 constant ANT_DIV_ANT_SEL \ Antenna Diversity Antenna Status
  $70 constant ANT_DIV_Res \ Reserved
  $08 constant ANT_DIV_ANT_DIV_EN \ Enable Antenna Diversity
  $04 constant ANT_DIV_ANT_EXT_SW_EN \ Enable External Antenna Switch Control
  $03 constant ANT_DIV_ANT_CTRL \ Static Antenna Diversity Switch Control
&334 constant IRQ_MASK	\ Transceiver Interrupt Enable Register
  $80 constant IRQ_MASK_AWAKE_EN \ Awake Interrupt Enable
  $40 constant IRQ_MASK_TX_END_EN \ TX_END Interrupt Enable
  $20 constant IRQ_MASK_AMI_EN \ Address Match Interrupt Enable
  $10 constant IRQ_MASK_CCA_ED_DONE_EN \ End of ED Measurement Interrupt Enable
  $08 constant IRQ_MASK_RX_END_EN \ RX_END Interrupt Enable
  $04 constant IRQ_MASK_RX_START_EN \ RX_START Interrupt Enable
  $02 constant IRQ_MASK_PLL_UNLOCK_EN \ PLL Unlock Interrupt Enable
  $01 constant IRQ_MASK_PLL_LOCK_EN \ PLL Lock Interrupt Enable
&335 constant IRQ_STATUS	\ Transceiver Interrupt Status Register
  $80 constant IRQ_STATUS_AWAKE \ Awake Interrupt Status
  $40 constant IRQ_STATUS_TX_END \ TX_END Interrupt Status
  $20 constant IRQ_STATUS_AMI \ Address Match Interrupt Status
  $10 constant IRQ_STATUS_CCA_ED_DONE \ End of ED Measurement Interrupt Status
  $08 constant IRQ_STATUS_RX_END \ RX_END Interrupt Status
  $04 constant IRQ_STATUS_RX_START \ RX_START Interrupt Status
  $02 constant IRQ_STATUS_PLL_UNLOCK \ PLL Unlock Interrupt Status
  $01 constant IRQ_STATUS_PLL_LOCK \ PLL Lock Interrupt Status
&336 constant VREG_CTRL	\ Voltage Regulator Control and Status Register
  $80 constant VREG_CTRL_AVREG_EXT \ Use External AVDD Regulator
  $40 constant VREG_CTRL_AVDD_OK \ AVDD Supply Voltage Valid
  $08 constant VREG_CTRL_DVREG_EXT \ Use External DVDD Regulator
  $04 constant VREG_CTRL_DVDD_OK \ DVDD Supply Voltage Valid
&337 constant BATMON	\ Battery Monitor Control and Status Register
  $80 constant BATMON_BAT_LOW \ Battery Monitor Interrupt Status
  $40 constant BATMON_BAT_LOW_EN \ Battery Monitor Interrupt Enable
  $20 constant BATMON_BATMON_OK \ Battery Monitor Status
  $10 constant BATMON_BATMON_HR \ Battery Monitor Voltage Range
  $0F constant BATMON_BATMON_VTH \ Battery Monitor Threshold Voltage
&338 constant XOSC_CTRL	\ Crystal Oscillator Control Register
  $F0 constant XOSC_CTRL_XTAL_MODE \ Crystal Oscillator Operating Mode
  $0F constant XOSC_CTRL_XTAL_TRIM \ Crystal Oscillator Load Capacitance Trimming
&341 constant RX_SYN	\ Transceiver Receiver Sensitivity Control Register
  $80 constant RX_SYN_RX_PDT_DIS \ Prevent Frame Reception
  $70 constant RX_SYN_Res \ Reserved
  $0F constant RX_SYN_RX_PDT_LEVEL \ Reduce Receiver Sensitivity
&343 constant XAH_CTRL_1	\ Transceiver Acknowledgment Frame Control Register 1
  $C0 constant XAH_CTRL_1_Res \ Reserved Bit
  $20 constant XAH_CTRL_1_AACK_FLTR_RES_FT \ Filter Reserved Frames
  $10 constant XAH_CTRL_1_AACK_UPLD_RES_FT \ Process Reserved Frames
  $08 constant XAH_CTRL_1_Res \ Reserved Bit
  $04 constant XAH_CTRL_1_AACK_ACK_TIME \ Reduce Acknowledgment Time
  $02 constant XAH_CTRL_1_AACK_PROM_MODE \ Enable Promiscuous Mode
  $01 constant XAH_CTRL_1_Res \ Reserved Bit
&344 constant FTN_CTRL	\ Transceiver Filter Tuning Control Register
  $80 constant FTN_CTRL_FTN_START \ Start Calibration Loop of Filter Tuning Network
&346 constant PLL_CF	\ Transceiver Center Frequency Calibration Control Register
  $80 constant PLL_CF_PLL_CF_START \ Start Center Frequency Calibration
&347 constant PLL_DCU	\ Transceiver Delay Cell Calibration Control Register
  $80 constant PLL_DCU_PLL_DCU_START \ Start Delay Cell Calibration
&348 constant PART_NUM	\ Device Identification Register (Part Number)
  $FF constant PART_NUM_PART_NUM \ Part Number
&349 constant VERSION_NUM	\ Device Identification Register (Version Number)
  $FF constant VERSION_NUM_VERSION_NUM \ Version Number
&350 constant MAN_ID_0	\ Device Identification Register (Manufacture ID Low Byte)
  $80 constant MAN_ID_0_MAN_ID_07 \ Manufacturer ID (Low Byte)
  $40 constant MAN_ID_0_MAN_ID_06 \ Manufacturer ID (Low Byte)
  $20 constant MAN_ID_0_MAN_ID_05 \ Manufacturer ID (Low Byte)
  $10 constant MAN_ID_0_MAN_ID_04 \ Manufacturer ID (Low Byte)
  $08 constant MAN_ID_0_MAN_ID_03 \ Manufacturer ID (Low Byte)
  $04 constant MAN_ID_0_MAN_ID_02 \ Manufacturer ID (Low Byte)
  $02 constant MAN_ID_0_MAN_ID_01 \ Manufacturer ID (Low Byte)
  $01 constant MAN_ID_0_MAN_ID_00 \ Manufacturer ID (Low Byte)
&351 constant MAN_ID_1	\ Device Identification Register (Manufacture ID High Byte)
  $FF constant MAN_ID_1_MAN_ID_ \ Manufacturer ID (High Byte)
&352 constant SHORT_ADDR_0	\ Transceiver MAC Short Address Register (Low Byte)
  $80 constant SHORT_ADDR_0_SHORT_ADDR_07 \ MAC Short Address
  $40 constant SHORT_ADDR_0_SHORT_ADDR_06 \ MAC Short Address
  $20 constant SHORT_ADDR_0_SHORT_ADDR_05 \ MAC Short Address
  $10 constant SHORT_ADDR_0_SHORT_ADDR_04 \ MAC Short Address
  $08 constant SHORT_ADDR_0_SHORT_ADDR_03 \ MAC Short Address
  $04 constant SHORT_ADDR_0_SHORT_ADDR_02 \ MAC Short Address
  $02 constant SHORT_ADDR_0_SHORT_ADDR_01 \ MAC Short Address
  $01 constant SHORT_ADDR_0_SHORT_ADDR_00 \ MAC Short Address
&353 constant SHORT_ADDR_1	\ Transceiver MAC Short Address Register (High Byte)
  $FF constant SHORT_ADDR_1_SHORT_ADDR_ \ MAC Short Address
&354 constant PAN_ID_0	\ Transceiver Personal Area Network ID Register (Low Byte)
  $80 constant PAN_ID_0_PAN_ID_07 \ MAC Personal Area Network ID
  $40 constant PAN_ID_0_PAN_ID_06 \ MAC Personal Area Network ID
  $20 constant PAN_ID_0_PAN_ID_05 \ MAC Personal Area Network ID
  $10 constant PAN_ID_0_PAN_ID_04 \ MAC Personal Area Network ID
  $08 constant PAN_ID_0_PAN_ID_03 \ MAC Personal Area Network ID
  $04 constant PAN_ID_0_PAN_ID_02 \ MAC Personal Area Network ID
  $02 constant PAN_ID_0_PAN_ID_01 \ MAC Personal Area Network ID
  $01 constant PAN_ID_0_PAN_ID_00 \ MAC Personal Area Network ID
&355 constant PAN_ID_1	\ Transceiver Personal Area Network ID Register (High Byte)
  $FF constant PAN_ID_1_PAN_ID_ \ MAC Personal Area Network ID
&356 constant IEEE_ADDR_0	\ Transceiver MAC IEEE Address Register 0
  $80 constant IEEE_ADDR_0_IEEE_ADDR_07 \ MAC IEEE Address
  $40 constant IEEE_ADDR_0_IEEE_ADDR_06 \ MAC IEEE Address
  $20 constant IEEE_ADDR_0_IEEE_ADDR_05 \ MAC IEEE Address
  $10 constant IEEE_ADDR_0_IEEE_ADDR_04 \ MAC IEEE Address
  $08 constant IEEE_ADDR_0_IEEE_ADDR_03 \ MAC IEEE Address
  $04 constant IEEE_ADDR_0_IEEE_ADDR_02 \ MAC IEEE Address
  $02 constant IEEE_ADDR_0_IEEE_ADDR_01 \ MAC IEEE Address
  $01 constant IEEE_ADDR_0_IEEE_ADDR_00 \ MAC IEEE Address
&357 constant IEEE_ADDR_1	\ Transceiver MAC IEEE Address Register 1
  $FF constant IEEE_ADDR_1_IEEE_ADDR_ \ MAC IEEE Address
&358 constant IEEE_ADDR_2	\ Transceiver MAC IEEE Address Register 2
  $FF constant IEEE_ADDR_2_IEEE_ADDR_ \ MAC IEEE Address
&359 constant IEEE_ADDR_3	\ Transceiver MAC IEEE Address Register 3
  $FF constant IEEE_ADDR_3_IEEE_ADDR_ \ MAC IEEE Address
&360 constant IEEE_ADDR_4	\ Transceiver MAC IEEE Address Register 4
  $FF constant IEEE_ADDR_4_IEEE_ADDR_ \ MAC IEEE Address
&361 constant IEEE_ADDR_5	\ Transceiver MAC IEEE Address Register 5
  $FF constant IEEE_ADDR_5_IEEE_ADDR_ \ MAC IEEE Address
&362 constant IEEE_ADDR_6	\ Transceiver MAC IEEE Address Register 6
  $FF constant IEEE_ADDR_6_IEEE_ADDR_ \ MAC IEEE Address
&363 constant IEEE_ADDR_7	\ Transceiver MAC IEEE Address Register 7
  $FF constant IEEE_ADDR_7_IEEE_ADDR_ \ MAC IEEE Address
&364 constant XAH_CTRL_0	\ Transceiver Extended Operating Mode Control Register
  $F0 constant XAH_CTRL_0_MAX_FRAME_RETRIES \ Maximum Number of Frame Re-transmission Attempts
  $0E constant XAH_CTRL_0_MAX_CSMA_RETRIES \ Maximum Number of CSMA-CA Procedure Repetition Attempts
  $01 constant XAH_CTRL_0_SLOTTED_OPERATION \ Set Slotted Acknowledgment
&365 constant CSMA_SEED_0	\ Transceiver CSMA-CA Random Number Generator Seed Register
  $80 constant CSMA_SEED_0_CSMA_SEED_07 \ Seed Value for CSMA Random Number Generator
  $40 constant CSMA_SEED_0_CSMA_SEED_06 \ Seed Value for CSMA Random Number Generator
  $20 constant CSMA_SEED_0_CSMA_SEED_05 \ Seed Value for CSMA Random Number Generator
  $10 constant CSMA_SEED_0_CSMA_SEED_04 \ Seed Value for CSMA Random Number Generator
  $08 constant CSMA_SEED_0_CSMA_SEED_03 \ Seed Value for CSMA Random Number Generator
  $04 constant CSMA_SEED_0_CSMA_SEED_02 \ Seed Value for CSMA Random Number Generator
  $02 constant CSMA_SEED_0_CSMA_SEED_01 \ Seed Value for CSMA Random Number Generator
  $01 constant CSMA_SEED_0_CSMA_SEED_00 \ Seed Value for CSMA Random Number Generator
&366 constant CSMA_SEED_1	\ Transceiver Acknowledgment Frame Control Register 2
  $C0 constant CSMA_SEED_1_AACK_FVN_MODE \ Acknowledgment Frame Filter Mode
  $20 constant CSMA_SEED_1_AACK_SET_PD \ Set Frame Pending Sub-field
  $10 constant CSMA_SEED_1_AACK_DIS_ACK \ Disable Acknowledgment Frame Transmission
  $08 constant CSMA_SEED_1_AACK_I_AM_COORD \ Set Personal Area Network Coordinator
  $07 constant CSMA_SEED_1_CSMA_SEED_1 \ Seed Value for CSMA Random Number Generator
&367 constant CSMA_BE	\ Transceiver CSMA-CA Back-off Exponent Control Register
  $F0 constant CSMA_BE_MAX_BE \ Maximum Back-off Exponent
  $0F constant CSMA_BE_MIN_BE \ Minimum Back-off Exponent
&374 constant TST_CTRL_DIGI	\ Transceiver Digital Test Control Register
  $0F constant TST_CTRL_DIGI_TST_CTRL_DIG \ Digital Test Controller Register
&379 constant TST_RX_LENGTH	\ Transceiver Received Frame Length Register
  $FF constant TST_RX_LENGTH_RX_LENGTH \ Received Frame Length
&384 constant TRXFBST	\ Start of frame buffer
&511 constant TRXFBEND	\ End of frame buffer
\ SYMCNT
&248 constant SCOCR1HH	\ Symbol Counter Output Compare Register 1 HH-Byte
  $FF constant SCOCR1HH_SCOCR1HH \ Symbol Counter Output Compare Register 1 HH-Byte
&247 constant SCOCR1HL	\ Symbol Counter Output Compare Register 1 HL-Byte
  $FF constant SCOCR1HL_SCOCR1HL \ Symbol Counter Output Compare Register 1 HL-Byte
&246 constant SCOCR1LH	\ Symbol Counter Output Compare Register 1 LH-Byte
  $FF constant SCOCR1LH_SCOCR1LH \ Symbol Counter Output Compare Register 1 LH-Byte
&245 constant SCOCR1LL	\ Symbol Counter Output Compare Register 1 LL-Byte
  $FF constant SCOCR1LL_SCOCR1LL \ Symbol Counter Output Compare Register 1 LL-Byte
&244 constant SCOCR2HH	\ Symbol Counter Output Compare Register 2 HH-Byte
  $FF constant SCOCR2HH_SCOCR2HH \ Symbol Counter Output Compare Register 2 HH-Byte
&243 constant SCOCR2HL	\ Symbol Counter Output Compare Register 2 HL-Byte
  $FF constant SCOCR2HL_SCOCR2HL \ Symbol Counter Output Compare Register 2 HL-Byte
&242 constant SCOCR2LH	\ Symbol Counter Output Compare Register 2 LH-Byte
  $FF constant SCOCR2LH_SCOCR2LH \ Symbol Counter Output Compare Register 2 LH-Byte
&241 constant SCOCR2LL	\ Symbol Counter Output Compare Register 2 LL-Byte
  $FF constant SCOCR2LL_SCOCR2LL \ Symbol Counter Output Compare Register 2 LL-Byte
&240 constant SCOCR3HH	\ Symbol Counter Output Compare Register 3 HH-Byte
  $FF constant SCOCR3HH_SCOCR3HH \ Symbol Counter Output Compare Register 3 HH-Byte
&239 constant SCOCR3HL	\ Symbol Counter Output Compare Register 3 HL-Byte
  $FF constant SCOCR3HL_SCOCR3HL \ Symbol Counter Output Compare Register 3 HL-Byte
&238 constant SCOCR3LH	\ Symbol Counter Output Compare Register 3 LH-Byte
  $FF constant SCOCR3LH_SCOCR3LH \ Symbol Counter Output Compare Register 3 LH-Byte
&237 constant SCOCR3LL	\ Symbol Counter Output Compare Register 3 LL-Byte
  $FF constant SCOCR3LL_SCOCR3LL \ Symbol Counter Output Compare Register 3 LL-Byte
&236 constant SCTSRHH	\ Symbol Counter Frame Timestamp Register HH-Byte
  $FF constant SCTSRHH_SCTSRHH \ Symbol Counter Frame Timestamp Register HH-Byte
&235 constant SCTSRHL	\ Symbol Counter Frame Timestamp Register HL-Byte
  $FF constant SCTSRHL_SCTSRHL \ Symbol Counter Frame Timestamp Register HL-Byte
&234 constant SCTSRLH	\ Symbol Counter Frame Timestamp Register LH-Byte
  $FF constant SCTSRLH_SCTSRLH \ Symbol Counter Frame Timestamp Register LH-Byte
&233 constant SCTSRLL	\ Symbol Counter Frame Timestamp Register LL-Byte
  $FF constant SCTSRLL_SCTSRLL \ Symbol Counter Frame Timestamp Register LL-Byte
&232 constant SCBTSRHH	\ Symbol Counter Beacon Timestamp Register HH-Byte
  $FF constant SCBTSRHH_SCBTSRHH \ Symbol Counter Beacon Timestamp Register HH-Byte
&231 constant SCBTSRHL	\ Symbol Counter Beacon Timestamp Register HL-Byte
  $FF constant SCBTSRHL_SCBTSRHL \ Symbol Counter Beacon Timestamp Register HL-Byte
&230 constant SCBTSRLH	\ Symbol Counter Beacon Timestamp Register LH-Byte
  $FF constant SCBTSRLH_SCBTSRLH \ Symbol Counter Beacon Timestamp Register LH-Byte
&229 constant SCBTSRLL	\ Symbol Counter Beacon Timestamp Register LL-Byte
  $FF constant SCBTSRLL_SCBTSRLL \ Symbol Counter Beacon Timestamp Register LL-Byte
&228 constant SCCNTHH	\ Symbol Counter Register HH-Byte
  $FF constant SCCNTHH_SCCNTHH \ Symbol Counter Register HH-Byte
&227 constant SCCNTHL	\ Symbol Counter Register HL-Byte
  $FF constant SCCNTHL_SCCNTHL \ Symbol Counter Register HL-Byte
&226 constant SCCNTLH	\ Symbol Counter Register LH-Byte
  $FF constant SCCNTLH_SCCNTLH \ Symbol Counter Register LH-Byte
&225 constant SCCNTLL	\ Symbol Counter Register LL-Byte
  $FF constant SCCNTLL_SCCNTLL \ Symbol Counter Register LL-Byte
&224 constant SCIRQS	\ Symbol Counter Interrupt Status Register
  $E0 constant SCIRQS_Res \ Reserved Bit
  $10 constant SCIRQS_IRQSBO \ Backoff Slot Counter IRQ
  $08 constant SCIRQS_IRQSOF \ Symbol Counter Overflow IRQ
  $07 constant SCIRQS_IRQSCP \ Compare Unit 3 Compare Match IRQ
&223 constant SCIRQM	\ Symbol Counter Interrupt Mask Register
  $E0 constant SCIRQM_Res \ Reserved Bit
  $10 constant SCIRQM_IRQMBO \ Backoff Slot Counter IRQ enable
  $08 constant SCIRQM_IRQMOF \ Symbol Counter Overflow IRQ enable
  $07 constant SCIRQM_IRQMCP \ Symbol Counter Compare Match 3 IRQ enable
&222 constant SCSR	\ Symbol Counter Status Register
  $FE constant SCSR_Res \ Reserved Bit
  $01 constant SCSR_SCBSY \ Symbol Counter busy
&221 constant SCCR1	\ Symbol Counter Control Register 1
  $FE constant SCCR1_Res \ Reserved Bit
  $01 constant SCCR1_SCENBO \ Backoff Slot Counter enable
&220 constant SCCR0	\ Symbol Counter Control Register 0
  $80 constant SCCR0_SCRES \ Symbol Counter Synchronization
  $40 constant SCCR0_SCMBTS \ Manual Beacon Timestamp
  $20 constant SCCR0_SCEN \ Symbol Counter enable
  $10 constant SCCR0_SCCKSEL \ Symbol Counter Clock Source select
  $08 constant SCCR0_SCTSE \ Symbol Counter Automatic Timestamping enable
  $07 constant SCCR0_SCCMP \ Symbol Counter Compare Unit 3 Mode select
\ EEPROM
&65 constant EEAR	\ EEPROM Address Register  Bytes
&64 constant EEDR	\ EEPROM Data Register
&63 constant EECR	\ EEPROM Control Register
  $C0 constant EECR_Res \ Reserved
  $30 constant EECR_EEPM \ EEPROM Programming Mode
  $08 constant EECR_EERIE \ EEPROM Ready Interrupt Enable
  $04 constant EECR_EEMPE \ EEPROM Master Write Enable
  $02 constant EECR_EEPE \ EEPROM Programming Enable
  $01 constant EECR_EERE \ EEPROM Read Enable
\ JTAG
&81 constant OCDR	\ On-Chip Debug Register
  $FF constant OCDR_OCDR \ On-Chip Debug Register Data
&85 constant MCUCR	\ MCU Control Register
  $80 constant MCUCR_JTD \ JTAG Interface Disable
&84 constant MCUSR	\ MCU Status Register
  $10 constant MCUSR_JTRF \ JTAG Reset Flag
\ EXTERNAL_INTERRUPT
&105 constant EICRA	\ External Interrupt Control Register A
  $C0 constant EICRA_ISC3 \ External Interrupt 3 Sense Control Bit
  $30 constant EICRA_ISC2 \ External Interrupt 2 Sense Control Bit
  $0C constant EICRA_ISC1 \ External Interrupt 1 Sense Control Bit
  $03 constant EICRA_ISC0 \ External Interrupt 0 Sense Control Bit
&106 constant EICRB	\ External Interrupt Control Register B
  $C0 constant EICRB_ISC7 \ External Interrupt 7 Sense Control Bit
  $30 constant EICRB_ISC6 \ External Interrupt 6 Sense Control Bit
  $0C constant EICRB_ISC5 \ External Interrupt 5 Sense Control Bit
  $03 constant EICRB_ISC4 \ External Interrupt 4 Sense Control Bit
&61 constant EIMSK	\ External Interrupt Mask Register
  $FF constant EIMSK_INT \ External Interrupt Request Enable
&60 constant EIFR	\ External Interrupt Flag Register
  $FF constant EIFR_INTF \ External Interrupt Flag
&109 constant PCMSK2	\ Pin Change Mask Register 2
  $FF constant PCMSK2_PCINT \ Pin Change Enable Mask
&108 constant PCMSK1	\ Pin Change Mask Register 1
  $FF constant PCMSK1_PCINT \ Pin Change Enable Mask
&107 constant PCMSK0	\ Pin Change Mask Register 0
&59 constant PCIFR	\ Pin Change Interrupt Flag Register
  $F8 constant PCIFR_Res \ Reserved Bit
  $07 constant PCIFR_PCIF \ Pin Change Interrupt Flags
&104 constant PCICR	\ Pin Change Interrupt Control Register
  $F8 constant PCICR_Res \ Reserved Bit
  $07 constant PCICR_PCIE \ Pin Change Interrupt Enables
\ AD_CONVERTER
&124 constant ADMUX	\ The ADC Multiplexer Selection Register
  $C0 constant ADMUX_REFS \ Reference Selection Bits
  $20 constant ADMUX_ADLAR \ ADC Left Adjust Result
  $1F constant ADMUX_MUX \ Analog Channel and Gain Selection Bits
&120 constant ADC	\ ADC Data Register  Bytes
&122 constant ADCSRA	\ The ADC Control and Status Register A
  $80 constant ADCSRA_ADEN \ ADC Enable
  $40 constant ADCSRA_ADSC \ ADC Start Conversion
  $20 constant ADCSRA_ADATE \ ADC Auto Trigger Enable
  $10 constant ADCSRA_ADIF \ ADC Interrupt Flag
  $08 constant ADCSRA_ADIE \ ADC Interrupt Enable
  $07 constant ADCSRA_ADPS \ ADC  Prescaler Select Bits
&119 constant ADCSRC	\ The ADC Control and Status Register C
  $C0 constant ADCSRC_ADTHT \ ADC Track-and-Hold Time
  $20 constant ADCSRC_Res0 \ Reserved
  $1F constant ADCSRC_ADSUT \ ADC Start-up Time
&125 constant DIDR2	\ Digital Input Disable Register 2
  $80 constant DIDR2_ADC15D \ Reserved Bits
  $40 constant DIDR2_ADC14D \ Reserved Bits
  $20 constant DIDR2_ADC13D \ Reserved Bits
  $10 constant DIDR2_ADC12D \ Reserved Bits
  $08 constant DIDR2_ADC11D \ Reserved Bits
  $04 constant DIDR2_ADC10D \ Reserved Bits
  $02 constant DIDR2_ADC9D \ Reserved Bits
  $01 constant DIDR2_ADC8D \ Reserved Bits
&126 constant DIDR0	\ Digital Input Disable Register 0
  $80 constant DIDR0_ADC7D \ Disable ADC7:0 Digital Input
  $40 constant DIDR0_ADC6D \ Disable ADC7:0 Digital Input
  $20 constant DIDR0_ADC5D \ Disable ADC7:0 Digital Input
  $10 constant DIDR0_ADC4D \ Disable ADC7:0 Digital Input
  $08 constant DIDR0_ADC3D \ Disable ADC7:0 Digital Input
  $04 constant DIDR0_ADC2D \ Disable ADC7:0 Digital Input
  $02 constant DIDR0_ADC1D \ Disable ADC7:0 Digital Input
  $01 constant DIDR0_ADC0D \ Disable ADC7:0 Digital Input
\ BOOT_LOAD
&87 constant SPMCSR	\ Store Program Memory Control Register
  $80 constant SPMCSR_SPMIE \ SPM Interrupt Enable
  $40 constant SPMCSR_RWWSB \ Read While Write Section Busy
  $20 constant SPMCSR_SIGRD \ Signature Row Read
  $10 constant SPMCSR_RWWSRE \ Read While Write Section Read Enable
  $08 constant SPMCSR_BLBSET \ Boot Lock Bit Set
  $04 constant SPMCSR_PGWRT \ Page Write
  $02 constant SPMCSR_PGERS \ Page Erase
  $01 constant SPMCSR_SPMEN \ Store Program Memory Enable
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
  $FF constant OSCCAL_CAL \ Oscillator Calibration Tuning Value
&97 constant CLKPR	\ Clock Prescale Register
  $80 constant CLKPR_CLKPCE \ Clock Prescaler Change Enable
  $70 constant CLKPR_Res \ Reserved
  $0F constant CLKPR_CLKPS \ Clock Prescaler Select Bits
&83 constant SMCR	\ Sleep Mode Control Register
  $F0 constant SMCR_Res \ Reserved
  $0E constant SMCR_SM \ Sleep Mode Select bits
  $01 constant SMCR_SE \ Sleep Enable
&91 constant RAMPZ	\ Extended Z-pointer Register for ELPM/SPM
  $FC constant RAMPZ_Res \ Reserved
  $03 constant RAMPZ_RAMPZ \ Extended Z-Pointer Value
&75 constant GPIOR2	\ General Purpose I/O Register 2
  $FF constant GPIOR2_GPIOR \ General Purpose I/O Register 2 Value
&74 constant GPIOR1	\ General Purpose IO Register 1
  $FF constant GPIOR1_GPIOR \ General Purpose I/O Register 1 Value
&62 constant GPIOR0	\ General Purpose IO Register 0
  $80 constant GPIOR0_GPIOR07 \ General Purpose I/O Register 0 Value
  $40 constant GPIOR0_GPIOR06 \ General Purpose I/O Register 0 Value
  $20 constant GPIOR0_GPIOR05 \ General Purpose I/O Register 0 Value
  $10 constant GPIOR0_GPIOR04 \ General Purpose I/O Register 0 Value
  $08 constant GPIOR0_GPIOR03 \ General Purpose I/O Register 0 Value
  $04 constant GPIOR0_GPIOR02 \ General Purpose I/O Register 0 Value
  $02 constant GPIOR0_GPIOR01 \ General Purpose I/O Register 0 Value
  $01 constant GPIOR0_GPIOR00 \ General Purpose I/O Register 0 Value
&99 constant PRR2	\ Power Reduction Register 2
  $F0 constant PRR2_Res \ Reserved Bit
  $0F constant PRR2_PRRAM \ Power Reduction SRAMs
&101 constant PRR1	\ Power Reduction Register 1
  $80 constant PRR1_Res \ Reserved Bit
  $40 constant PRR1_PRTRX24 \ Power Reduction Transceiver
  $20 constant PRR1_PRTIM5 \ Power Reduction Timer/Counter5
  $10 constant PRR1_PRTIM4 \ Power Reduction Timer/Counter4
  $08 constant PRR1_PRTIM3 \ Power Reduction Timer/Counter3
  $07 constant PRR1_PRUSART \ Reserved
&100 constant PRR0	\ Power Reduction Register0
  $80 constant PRR0_PRTWI \ Power Reduction TWI
  $40 constant PRR0_PRTIM2 \ Power Reduction Timer/Counter2
  $20 constant PRR0_PRTIM0 \ Power Reduction Timer/Counter0
  $10 constant PRR0_PRPGA \ Power Reduction PGA
  $08 constant PRR0_PRTIM1 \ Power Reduction Timer/Counter1
  $04 constant PRR0_PRSPI \ Power Reduction Serial Peripheral Interface
  $02 constant PRR0_PRUSART0 \ Power Reduction USART
  $01 constant PRR0_PRADC \ Power Reduction ADC
\ FLASH
&117 constant NEMCR	\ Flash Extended-Mode Control-Register
  $40 constant NEMCR_ENEAM \ Enable Extended Address Mode for Extra Rows
  $30 constant NEMCR_AEAM \ Address for Extended Address Mode of Extra Rows
&103 constant BGCR	\ Reference Voltage Calibration Register
  $80 constant BGCR_Res \ Reserved Bit
  $78 constant BGCR_BGCAL_FINE \ Fine Calibration Bits
  $07 constant BGCR_BGCAL \ Coarse Calibration Bits
\ PWRCTRL
&313 constant TRXPR	\ Transceiver Pin Register
  $F0 constant TRXPR_Res \ Reserved
  $02 constant TRXPR_SLPTR \ Multi-purpose Transceiver Control Bit
  $01 constant TRXPR_TRXRST \ Force Transceiver Reset
&309 constant DRTRAM0	\ Data Retention Configuration Register of SRAM 0
  $C0 constant DRTRAM0_Res \ Reserved
  $20 constant DRTRAM0_DRTSWOK \ DRT Switch OK
  $10 constant DRTRAM0_ENDRT \ Enable SRAM Data Retention
&308 constant DRTRAM1	\ Data Retention Configuration Register of SRAM 1
  $C0 constant DRTRAM1_Res \ Reserved
  $20 constant DRTRAM1_DRTSWOK \ DRT Switch OK
  $10 constant DRTRAM1_ENDRT \ Enable SRAM Data Retention
&307 constant DRTRAM2	\ Data Retention Configuration Register of SRAM 2
  $40 constant DRTRAM2_Res \ Reserved Bit
  $20 constant DRTRAM2_DRTSWOK \ DRT Switch OK
  $10 constant DRTRAM2_ENDRT \ Enable SRAM Data Retention
&306 constant DRTRAM3	\ Data Retention Configuration Register of SRAM 3
  $C0 constant DRTRAM3_Res \ Reserved
  $20 constant DRTRAM3_DRTSWOK \ DRT Switch OK
  $10 constant DRTRAM3_ENDRT \ Enable SRAM Data Retention
&304 constant LLDRL	\ Low Leakage Voltage Regulator Data Register (Low-Byte)
  $F0 constant LLDRL_Res \ Reserved
  $0F constant LLDRL_LLDRL \ Low-Byte Data Register Bits
&305 constant LLDRH	\ Low Leakage Voltage Regulator Data Register (High-Byte)
  $E0 constant LLDRH_Res \ Reserved
  $1F constant LLDRH_LLDRH \ High-Byte Data Register Bits
&303 constant LLCR	\ Low Leakage Voltage Regulator Control Register
  $C0 constant LLCR_Res \ Reserved Bit
  $20 constant LLCR_LLDONE \ Calibration Done
  $10 constant LLCR_LLCOMP \ Comparator Output
  $08 constant LLCR_LLCAL \ Calibration Active
  $04 constant LLCR_LLTCO \ Temperature Coefficient of Current Source
  $02 constant LLCR_LLSHORT \ Short Lower Calibration Circuit
  $01 constant LLCR_LLENCAL \ Enable Automatic Calibration
&310 constant DPDS0	\ Port Driver Strength Register 0
  $C0 constant DPDS0_PFDRV \ Driver Strength Port F
  $30 constant DPDS0_PEDRV \ Driver Strength Port E
  $0C constant DPDS0_PDDRV \ Driver Strength Port D
  $03 constant DPDS0_PBDRV \ Driver Strength Port B
&311 constant DPDS1	\ Port Driver Strength Register 1
  $FC constant DPDS1_Res \ Reserved
  $03 constant DPDS1_PGDRV \ Driver Strength Port G
\ USART0_SPI
\ USART1_SPI

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
&48  constant SPI_STCAddr \ SPI Serial Transfer Complete
&50  constant USART0_RXAddr \ USART0, Rx Complete
&52  constant USART0_UDREAddr \ USART0 Data register Empty
&54  constant USART0_TXAddr \ USART0, Tx Complete
&56  constant ANALOG_COMPAddr \ Analog Comparator
&58  constant ADCAddr \ ADC Conversion Complete
&60  constant EE_READYAddr \ EEPROM Ready
&62  constant TIMER3_CAPTAddr \ Timer/Counter3 Capture Event
&64  constant TIMER3_COMPAAddr \ Timer/Counter3 Compare Match A
&66  constant TIMER3_COMPBAddr \ Timer/Counter3 Compare Match B
&68  constant TIMER3_COMPCAddr \ Timer/Counter3 Compare Match C
&70  constant TIMER3_OVFAddr \ Timer/Counter3 Overflow
&72  constant USART1_RXAddr \ USART1, Rx Complete
&74  constant USART1_UDREAddr \ USART1 Data register Empty
&76  constant USART1_TXAddr \ USART1, Tx Complete
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
&102  constant USART2_RXAddr \ USART2, Rx Complete
&104  constant USART2_UDREAddr \ USART2 Data register Empty
&106  constant USART2_TXAddr \ USART2, Tx Complete
&108  constant USART3_RXAddr \ USART3, Rx Complete
&110  constant USART3_UDREAddr \ USART3 Data register Empty
&112  constant USART3_TXAddr \ USART3, Tx Complete
&114  constant TRX24_PLL_LOCKAddr \ TRX24 - PLL lock interrupt
&116  constant TRX24_PLL_UNLOCKAddr \ TRX24 - PLL unlock interrupt
&118  constant TRX24_RX_STARTAddr \ TRX24 - Receive start interrupt
&120  constant TRX24_RX_ENDAddr \ TRX24 - RX_END interrupt
&122  constant TRX24_CCA_ED_DONEAddr \ TRX24 - CCA/ED done interrupt
&124  constant TRX24_XAH_AMIAddr \ TRX24 - XAH - AMI
&126  constant TRX24_TX_ENDAddr \ TRX24 - TX_END interrupt
&128  constant TRX24_AWAKEAddr \ TRX24 AWAKE - tranceiver is reaching state
&130  constant SCNT_CMP1Addr \ Symbol counter - compare match 1 interrupt
&132  constant SCNT_CMP2Addr \ Symbol counter - compare match 2 interrupt
&134  constant SCNT_CMP3Addr \ Symbol counter - compare match 3 interrupt
&136  constant SCNT_OVFLAddr \ Symbol counter - overflow interrupt
&138  constant SCNT_BACKOFFAddr \ Symbol counter - backoff interrupt
&140  constant AES_READYAddr \ AES engine ready interrupt
&142  constant BAT_LOWAddr \ Battery monitor indicates supply voltage below
