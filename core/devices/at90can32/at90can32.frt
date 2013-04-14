\ Partname: AT90CAN32
\ generated automatically

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
\ JTAG
&81 constant OCDR	\ On-Chip Debug Related Register in I/O Memory
&85 constant MCUCR	\ MCU Control Register
  $80 constant MCUCR_JTD \ JTAG Interface Disable
&84 constant MCUSR	\ MCU Status Register
  $10 constant MCUSR_JTRF \ JTAG Reset Flag
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
\ TWI
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
  $40 constant UCSR0C_UMSEL0 \ USART Mode Select
  $30 constant UCSR0C_UPM0 \ Parity Mode Bits
  $08 constant UCSR0C_USBS0 \ Stop Bit Select
  $06 constant UCSR0C_UCSZ0 \ Character Size
  $01 constant UCSR0C_UCPOL0 \ Clock Polarity
&196 constant UBRR0	\ USART Baud Rate Register t Bytes
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
  $40 constant UCSR1C_UMSEL1 \ USART Mode Select
  $30 constant UCSR1C_UPM1 \ Parity Mode Bits
  $08 constant UCSR1C_USBS1 \ Stop Bit Select
  $06 constant UCSR1C_UCSZ1 \ Character Size
  $01 constant UCSR1C_UCPOL1 \ Clock Polarity
&204 constant UBRR1	\ USART Baud Rate Register t Bytes
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
&97 constant CLKPR	\ Clock Prescale Register
  $80 constant CLKPR_CLKPCE \ 
  $0F constant CLKPR_CLKPS \ 
&83 constant SMCR	\ Sleep Mode Control Register
  $0E constant SMCR_SM \ Sleep Mode Select bits
  $01 constant SMCR_SE \ Sleep Enable
&91 constant RAMPZ	\ RAM Page Z Select Register - Not used.
  $01 constant RAMPZ_RAMPZ0 \ RAM Page Z Select Register Bit 0
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
\ BOOT_LOAD
&87 constant SPMCSR	\ Store Program Memory Control Register
  $80 constant SPMCSR_SPMIE \ SPM Interrupt Enable
  $40 constant SPMCSR_RWWSB \ Read While Write Section Busy
  $10 constant SPMCSR_RWWSRE \ Read While Write section read enable
  $08 constant SPMCSR_BLBSET \ Boot Lock Bit Set
  $04 constant SPMCSR_PGWRT \ Page Write
  $02 constant SPMCSR_PGERS \ Page Erase
  $01 constant SPMCSR_SPMEN \ Store Program Memory Enable
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
\ EEPROM
&65 constant EEAR	\ EEPROM Read/Write Access  Bytes
&64 constant EEDR	\ EEPROM Data Register
&63 constant EECR	\ EEPROM Control Register
  $08 constant EECR_EERIE \ EEPROM Ready Interrupt Enable
  $04 constant EECR_EEMWE \ EEPROM Master Write Enable
  $02 constant EECR_EEWE \ EEPROM Write Enable
  $01 constant EECR_EERE \ EEPROM Read Enable
\ TIMER_COUNTER_0
&68 constant TCCR0A	\ Timer/Counter0 Control Register
  $80 constant TCCR0A_FOC0A \ Force Output Compare
  $40 constant TCCR0A_WGM00 \ Waveform Generation Mode 0
  $30 constant TCCR0A_COM0A \ Compare Match Output Modes
  $08 constant TCCR0A_WGM01 \ Waveform Generation Mode 1
  $07 constant TCCR0A_CS0 \ Clock Selects
&70 constant TCNT0	\ Timer/Counter0
&71 constant OCR0A	\ Timer/Counter0 Output Compare Register
&110 constant TIMSK0	\ Timer/Counter0 Interrupt Mask Register
  $02 constant TIMSK0_OCIE0A \ Timer/Counter0 Output Compare Match Interrupt Enable
  $01 constant TIMSK0_TOIE0 \ Timer/Counter0 Overflow Interrupt Enable
&53 constant TIFR0	\ Timer/Counter0 Interrupt Flag register
  $02 constant TIFR0_OCF0A \ Timer/Counter0 Output Compare Flag 0
  $01 constant TIFR0_TOV0 \ Timer/Counter0 Overflow Flag
&67 constant GTCCR	\ General Timer/Control Register
  $80 constant GTCCR_TSM \ Timer/Counter Synchronization Mode
  $01 constant GTCCR_PSR310 \ Prescaler Reset Timer/Counter1 and Timer/Counter0
\ TIMER_COUNTER_2
&176 constant TCCR2	\ Timer/Counter2 Control Register
  $80 constant TCCR2_FOC2A \ Force Output Compare
  $40 constant TCCR2_WGM20 \ Waveform Genration Mode
  $30 constant TCCR2_COM2A \ Compare Output Mode bits
  $08 constant TCCR2_WGM21 \ Waveform Generation Mode
  $07 constant TCCR2_CS2 \ Clock Select bits
&178 constant TCNT2	\ Timer/Counter2
&179 constant OCR2A	\ Timer/Counter2 Output Compare Register
&112 constant TIMSK2	\ Timer/Counter Interrupt Mask register
  $02 constant TIMSK2_OCIE2A \ Timer/Counter2 Output Compare Match Interrupt Enable
  $01 constant TIMSK2_TOIE2 \ Timer/Counter2 Overflow Interrupt Enable
&55 constant TIFR2	\ Timer/Counter Interrupt Flag Register
  $02 constant TIFR2_OCF2A \ Output Compare Flag 2
  $01 constant TIFR2_TOV2 \ Timer/Counter2 Overflow Flag
&182 constant ASSR	\ Asynchronous Status Register
  $10 constant ASSR_EXCLK \ Enable External Clock Interrupt
  $08 constant ASSR_AS2 \ AS2: Asynchronous Timer/Counter2
  $04 constant ASSR_TCN2UB \ TCN2UB: Timer/Counter2 Update Busy
  $02 constant ASSR_OCR2UB \ Output Compare Register2 Update Busy
  $01 constant ASSR_TCR2UB \ TCR2UB: Timer/Counter Control Register2 Update Busy
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
&136 constant OCR1A	\ Timer/Counter1 Output Compare Register  Bytes
&138 constant OCR1B	\ Timer/Counter1 Output Compare Register  Bytes
&140 constant OCR1C	\ Timer/Counter1 Output Compare Register  Bytes
&134 constant ICR1	\ Timer/Counter1 Input Capture Register  Bytes
&111 constant TIMSK1	\ Timer/Counter Interrupt Mask Register
  $20 constant TIMSK1_ICIE1 \ Timer/Counter1 Input Capture Interrupt Enable
  $08 constant TIMSK1_OCIE1C \ Timer/Counter1 Output CompareC Match Interrupt Enable
  $04 constant TIMSK1_OCIE1B \ Timer/Counter1 Output CompareB Match Interrupt Enable
  $02 constant TIMSK1_OCIE1A \ Timer/Counter1 Output CompareA Match Interrupt Enable
  $01 constant TIMSK1_TOIE1 \ Timer/Counter1 Overflow Interrupt Enable
&54 constant TIFR1	\ Timer/Counter Interrupt Flag register
  $20 constant TIFR1_ICF1 \ Input Capture Flag 1
  $08 constant TIFR1_OCF1C \ Output Compare Flag 1C
  $04 constant TIFR1_OCF1B \ Output Compare Flag 1B
  $02 constant TIFR1_OCF1A \ Output Compare Flag 1A
  $01 constant TIFR1_TOV1 \ Timer/Counter1 Overflow Flag
\ TIMER_COUNTER_3
&144 constant TCCR3A	\ Timer/Counter3 Control Register A
  $C0 constant TCCR3A_COM3A \ Compare Output Mode 3A, bits
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
&152 constant OCR3A	\ Timer/Counter3 Output Compare Register  Bytes
&154 constant OCR3B	\ Timer/Counter3 Output Compare Register  Bytes
&156 constant OCR3C	\ Timer/Counter3 Output Compare Register  Bytes
&150 constant ICR3	\ Timer/Counter3 Input Capture Register  Bytes
&113 constant TIMSK3	\ Timer/Counter Interrupt Mask Register
  $20 constant TIMSK3_ICIE3 \ Timer/Counter3 Input Capture Interrupt Enable
  $08 constant TIMSK3_OCIE3C \ Timer/Counter3 Output CompareC Match Interrupt Enable
  $04 constant TIMSK3_OCIE3B \ Timer/Counter3 Output CompareB Match Interrupt Enable
  $02 constant TIMSK3_OCIE3A \ Timer/Counter3 Output CompareA Match Interrupt Enable
  $01 constant TIMSK3_TOIE3 \ Timer/Counter3 Overflow Interrupt Enable
&56 constant TIFR3	\ Timer/Counter Interrupt Flag register
  $20 constant TIFR3_ICF3 \ Input Capture Flag 3
  $08 constant TIFR3_OCF3C \ Output Compare Flag 3C
  $04 constant TIFR3_OCF3B \ Output Compare Flag 3B
  $02 constant TIFR3_OCF3A \ Output Compare Flag 3A
  $01 constant TIFR3_TOV3 \ Timer/Counter3 Overflow Flag
\ WATCHDOG
&96 constant WDTCR	\ Watchdog Timer Control Register
  $10 constant WDTCR_WDCE \ Watchdog Change Enable
  $08 constant WDTCR_WDE \ Watch Dog Enable
  $07 constant WDTCR_WDP \ Watch Dog Timer Prescaler bits
\ AD_CONVERTER
&124 constant ADMUX	\ The ADC multiplexer Selection Register
  $C0 constant ADMUX_REFS \ Reference Selection Bits
  $20 constant ADMUX_ADLAR \ Left Adjust Result
  $1F constant ADMUX_MUX \ Analog Channel and Gain Selection Bits
&122 constant ADCSRA	\ The ADC Control and Status register
  $80 constant ADCSRA_ADEN \ ADC Enable
  $40 constant ADCSRA_ADSC \ ADC Start Conversion
  $20 constant ADCSRA_ADATE \ ADC Auto Trigger Enable
  $10 constant ADCSRA_ADIF \ ADC Interrupt Flag
  $08 constant ADCSRA_ADIE \ ADC Interrupt Enable
  $07 constant ADCSRA_ADPS \ ADC  Prescaler Select Bits
&120 constant ADC	\ ADC Data Register  Bytes
&123 constant ADCSRB	\ ADC Control and Status Register B
  $80 constant ADCSRB_ADHSM \ ADC High Speed Mode
  $07 constant ADCSRB_ADTS \ ADC Auto Trigger Sources
&126 constant DIDR0	\ Digital Input Disable Register 1
  $80 constant DIDR0_ADC7D \ ADC7 Digital input Disable
  $40 constant DIDR0_ADC6D \ ADC6 Digital input Disable
  $20 constant DIDR0_ADC5D \ ADC5 Digital input Disable
  $10 constant DIDR0_ADC4D \ ADC4 Digital input Disable
  $08 constant DIDR0_ADC3D \ ADC3 Digital input Disable
  $04 constant DIDR0_ADC2D \ ADC2 Digital input Disable
  $02 constant DIDR0_ADC1D \ ADC1 Digital input Disable
  $01 constant DIDR0_ADC0D \ ADC0 Digital input Disable
\ ANALOG_COMPARATOR
&80 constant ACSR	\ Analog Comparator Control And Status Register
  $80 constant ACSR_ACD \ Analog Comparator Disable
  $40 constant ACSR_ACBG \ Analog Comparator Bandgap Select
  $20 constant ACSR_ACO \ Analog Compare Output
  $10 constant ACSR_ACI \ Analog Comparator Interrupt Flag
  $08 constant ACSR_ACIE \ Analog Comparator Interrupt Enable
  $04 constant ACSR_ACIC \ Analog Comparator Input Capture Enable
  $03 constant ACSR_ACIS \ Analog Comparator Interrupt Mode Select bits
&127 constant DIDR1	\ 
  $02 constant DIDR1_AIN1D \ AIN1 Digital Input Disable
  $01 constant DIDR1_AIN0D \ AIN0 Digital Input Disable
\ CAN
&216 constant CANGCON	\ CAN General Control Register
  $80 constant CANGCON_ABRQ \ Abort Request
  $40 constant CANGCON_OVRQ \ Overload Frame Request
  $20 constant CANGCON_TTC \ Time Trigger Communication
  $10 constant CANGCON_SYNTTC \ Synchronization of TTC
  $08 constant CANGCON_LISTEN \ Listening Mode
  $04 constant CANGCON_TEST \ Test Mode
  $02 constant CANGCON_ENASTB \ Enable / Standby
  $01 constant CANGCON_SWRES \ Software Reset Request
&217 constant CANGSTA	\ CAN General Status Register
  $40 constant CANGSTA_OVRG \ Overload Frame Flag
  $10 constant CANGSTA_TXBSY \ Transmitter Busy
  $08 constant CANGSTA_RXBSY \ Receiver Busy
  $04 constant CANGSTA_ENFG \ Enable Flag
  $02 constant CANGSTA_BOFF \ Bus Off Mode
  $01 constant CANGSTA_ERRP \ Error Passive Mode
&218 constant CANGIT	\ CAN General Interrupt Register
  $80 constant CANGIT_CANIT \ General Interrupt Flag
  $40 constant CANGIT_BOFFIT \ Bus Off Interrupt Flag
  $20 constant CANGIT_OVRTIM \ Overrun CAN Timer
  $10 constant CANGIT_BXOK \ Burst Receive Interrupt
  $08 constant CANGIT_SERG \ Stuff Error General
  $04 constant CANGIT_CERG \ CRC Error General
  $02 constant CANGIT_FERG \ Form Error General
  $01 constant CANGIT_AERG \ Ackknowledgement Error General
&219 constant CANGIE	\ CAN General Interrupt Enable Register
  $80 constant CANGIE_ENIT \ Enable all Interrupts
  $40 constant CANGIE_ENBOFF \ Enable Bus Off INterrupt
  $20 constant CANGIE_ENRX \ Enable Receive Interrupt
  $10 constant CANGIE_ENTX \ Enable Transmitt Interrupt
  $08 constant CANGIE_ENERR \ Enable MOb Error Interrupt
  $04 constant CANGIE_ENBX \ Enable Burst Receive Interrupt
  $02 constant CANGIE_ENERG \ Enable General Error Interrupt
  $01 constant CANGIE_ENOVRT \ Enable CAN Timer Overrun Interrupt
&220 constant CANEN2	\ Enable MOb Register
&221 constant CANEN1	\ Enable MOb Register
&222 constant CANIE2	\ Enable Interrupt MOb Register
&223 constant CANIE1	\ Enable Interrupt MOb Register
&224 constant CANSIT2	\ CAN Status Interrupt MOb Register
&225 constant CANSIT1	\ CAN Status Interrupt MOb Register
&226 constant CANBT1	\ Bit Timing Register 1
  $7E constant CANBT1_BRP \ Baud Rate Prescaler bits
&227 constant CANBT2	\ Bit Timing Register 2
  $60 constant CANBT2_SJW \ Re-Sync Jump Width
  $0E constant CANBT2_PRS \ Propagation Time Segment
&228 constant CANBT3	\ Bit Timing Register 3
  $70 constant CANBT3_PHS2 \ Phase Segments
  $0E constant CANBT3_PHS1 \ Phase Segment 1
  $01 constant CANBT3_SMP \ Sample Type
&229 constant CANTCON	\ Timer Control Register
&230 constant CANTIML	\ Timer Register Low
&231 constant CANTIMH	\ Timer Register High
&232 constant CANTTCL	\ TTC Timer Register Low
&233 constant CANTTCH	\ TTC Timer Register High
&234 constant CANTEC	\ Transmit Error Counter Register
&235 constant CANREC	\ Receive Error Counter Register
&236 constant CANHPMOB	\ Highest Priority MOb Register
&237 constant CANPAGE	\ Page MOb Register
  $F0 constant CANPAGE_MOBNB \ MOb Number Bits
  $08 constant CANPAGE_AINC \ MOb Data Buffer Auto Increment
  $07 constant CANPAGE_INDX \ Data Buffer Index Bits
&238 constant CANSTMOB	\ MOb Status Register
  $80 constant CANSTMOB_DLCW \ Data Length Code Warning
  $40 constant CANSTMOB_TXOK \ Transmit OK
  $20 constant CANSTMOB_RXOK \ Receive OK
  $10 constant CANSTMOB_BERR \ Bit Error
  $08 constant CANSTMOB_SERR \ Stuff Error
  $04 constant CANSTMOB_CERR \ CRC Error
  $02 constant CANSTMOB_FERR \ Form Error
  $01 constant CANSTMOB_AERR \ Ackknowledgement Error
&239 constant CANCDMOB	\ MOb Control and DLC Register
  $C0 constant CANCDMOB_CONMOB \ MOb Config Bits
  $20 constant CANCDMOB_RPLV \ Reply Valid
  $10 constant CANCDMOB_IDE \ Identifier Extension
  $0F constant CANCDMOB_DLC \ Data Length Code Bits
&240 constant CANIDT4	\ Identifier Tag Register 4
&241 constant CANIDT3	\ Identifier Tag Register 3
&242 constant CANIDT2	\ Identifier Tag Register 2
&243 constant CANIDT1	\ Identifier Tag Register 1
&244 constant CANIDM4	\ Identifier Mask Register 4
&245 constant CANIDM3	\ Identifier Mask Register 3
&246 constant CANIDM2	\ Identifier Mask Register 2
&247 constant CANIDM1	\ Identifier Mask Register 1
&248 constant CANSTML	\ Time Stamp Register Low
&249 constant CANSTMH	\ Time Stamp Register High
&250 constant CANMSG	\ Message Data Register

\ Interrupts
&2  constant INT0Addr \ External Interrupt Request 0
&4  constant INT1Addr \ External Interrupt Request 1
&6  constant INT2Addr \ External Interrupt Request 2
&8  constant INT3Addr \ External Interrupt Request 3
&10  constant INT4Addr \ External Interrupt Request 4
&12  constant INT5Addr \ External Interrupt Request 5
&14  constant INT6Addr \ External Interrupt Request 6
&16  constant INT7Addr \ External Interrupt Request 7
&18  constant TIMER2_COMPAddr \ Timer/Counter2 Compare Match
&20  constant TIMER2_OVFAddr \ Timer/Counter2 Overflow
&22  constant TIMER1_CAPTAddr \ Timer/Counter1 Capture Event
&24  constant TIMER1_COMPAAddr \ Timer/Counter1 Compare Match A
&26  constant TIMER1_COMPBAddr \ Timer/Counter Compare Match B
&28  constant TIMER1_COMPCAddr \ Timer/Counter1 Compare Match C
&30  constant TIMER1_OVFAddr \ Timer/Counter1 Overflow
&32  constant TIMER0_COMPAddr \ Timer/Counter0 Compare Match
&34  constant TIMER0_OVFAddr \ Timer/Counter0 Overflow
&36  constant CANITAddr \ CAN Transfer Complete or Error
&38  constant OVRITAddr \ CAN Timer Overrun
&40  constant SPI__STCAddr \ SPI Serial Transfer Complete
&42  constant USART0__RXAddr \ USART0, Rx Complete
&44  constant USART0__UDREAddr \ USART0 Data Register Empty
&46  constant USART0__TXAddr \ USART0, Tx Complete
&48  constant ANALOG_COMPAddr \ Analog Comparator
&50  constant ADCAddr \ ADC Conversion Complete
&52  constant EE_READYAddr \ EEPROM Ready
&54  constant TIMER3_CAPTAddr \ Timer/Counter3 Capture Event
&56  constant TIMER3_COMPAAddr \ Timer/Counter3 Compare Match A
&58  constant TIMER3_COMPBAddr \ Timer/Counter3 Compare Match B
&60  constant TIMER3_COMPCAddr \ Timer/Counter3 Compare Match C
&62  constant TIMER3_OVFAddr \ Timer/Counter3 Overflow
&64  constant USART1__RXAddr \ USART1, Rx Complete
&66  constant USART1__UDREAddr \ USART1, Data Register Empty
&68  constant USART1__TXAddr \ USART1, Tx Complete
&70  constant TWIAddr \ 2-wire Serial Interface
&72  constant SPM_READYAddr \ Store Program Memory Read
