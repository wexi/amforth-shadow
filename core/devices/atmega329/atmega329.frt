\ Partname: ATmega329
\ generated automatically

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
\ TIMER_COUNTER_1
&128 constant TCCR1A	\ Timer/Counter1 Control Register A
  $C0 constant TCCR1A_COM1A \ Compare Output Mode 1A, bits
  $30 constant TCCR1A_COM1B \ Compare Output Mode 1B, bits
  $03 constant TCCR1A_WGM1 \ Waveform Generation Mode
&129 constant TCCR1B	\ Timer/Counter1 Control Register B
  $80 constant TCCR1B_ICNC1 \ Input Capture 1 Noise Canceler
  $40 constant TCCR1B_ICES1 \ Input Capture 1 Edge Select
  $18 constant TCCR1B_WGM1 \ Waveform Generation Mode
  $07 constant TCCR1B_CS1 \ Prescaler source of Timer/Counter 1
&130 constant TCCR1C	\ Timer/Counter 1 Control Register C
  $80 constant TCCR1C_FOC1A \ Force Output Compare 1A
  $40 constant TCCR1C_FOC1B \ Force Output Compare 1B
&132 constant TCNT1	\ Timer/Counter1  Bytes
&136 constant OCR1A	\ Timer/Counter1 Output Compare Register A  Bytes
&138 constant OCR1B	\ Timer/Counter1 Output Compare Register B  Bytes
&134 constant ICR1	\ Timer/Counter1 Input Capture Register  Bytes
&111 constant TIMSK1	\ Timer/Counter1 Interrupt Mask Register
  $20 constant TIMSK1_ICIE1 \ Timer/Counter1 Input Capture Interrupt Enable
  $04 constant TIMSK1_OCIE1B \ Timer/Counter1 Output Compare B Match Interrupt Enable
  $02 constant TIMSK1_OCIE1A \ Timer/Counter1 Output Compare A Match Interrupt Enable
  $01 constant TIMSK1_TOIE1 \ Timer/Counter1 Overflow Interrupt Enable
&54 constant TIFR1	\ Timer/Counter1 Interrupt Flag register
  $20 constant TIFR1_ICF1 \ Input Capture Flag 1
  $04 constant TIFR1_OCF1B \ Output Compare Flag 1B
  $02 constant TIFR1_OCF1A \ Output Compare Flag 1A
  $01 constant TIFR1_TOV1 \ Timer/Counter1 Overflow Flag
\ TIMER_COUNTER_2
&176 constant TCCR2A	\ Timer/Counter2 Control Register
  $80 constant TCCR2A_FOC2A \ Force Output Compare A
  $40 constant TCCR2A_WGM20 \ Waveform Generation Mode
  $30 constant TCCR2A_COM2A \ Compare Output Mode bits
  $08 constant TCCR2A_WGM21 \ Waveform Generation Mode
  $07 constant TCCR2A_CS2 \ Clock Select bits
&178 constant TCNT2	\ Timer/Counter2
&179 constant OCR2A	\ Timer/Counter2 Output Compare Register
&112 constant TIMSK2	\ Timer/Counter2 Interrupt Mask register
  $02 constant TIMSK2_OCIE2A \ Timer/Counter2 Output Compare Match Interrupt Enable
  $01 constant TIMSK2_TOIE2 \ Timer/Counter2 Overflow Interrupt Enable
&55 constant TIFR2	\ Timer/Counter2 Interrupt Flag Register
  $02 constant TIFR2_OCF2A \ Timer/Counter2 Output Compare Flag 2
  $01 constant TIFR2_TOV2 \ Timer/Counter2 Overflow Flag
&182 constant ASSR	\ Asynchronous Status Register
  $10 constant ASSR_EXCLK \ Enable External Clock Interrupt
  $08 constant ASSR_AS2 \ AS2: Asynchronous Timer/Counter2
  $04 constant ASSR_TCN2UB \ TCN2UB: Timer/Counter2 Update Busy
  $02 constant ASSR_OCR2UB \ Output Compare Register2 Update Busy
  $01 constant ASSR_TCR2UB \ TCR2UB: Timer/Counter Control Register2 Update Busy
\ WATCHDOG
&96 constant WDTCR	\ Watchdog Timer Control Register
  $10 constant WDTCR_WDCE \ Watchdog Change Enable
  $08 constant WDTCR_WDE \ Watch Dog Enable
  $07 constant WDTCR_WDP \ Watch Dog Timer Prescaler bits
\ EEPROM
&65 constant EEAR	\ EEPROM Read/Write Access  Bytes
&64 constant EEDR	\ EEPROM Data Register
&63 constant EECR	\ EEPROM Control Register
  $08 constant EECR_EERIE \ EEPROM Ready Interrupt Enable
  $04 constant EECR_EEMWE \ EEPROM Master Write Enable
  $02 constant EECR_EEWE \ EEPROM Write Enable
  $01 constant EECR_EERE \ EEPROM Read Enable
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
\ PORTE
&46 constant PORTE	\ Data Register, Port E
&45 constant DDRE	\ Data Direction Register, Port E
&44 constant PINE	\ Input Pins, Port E
\ PORTF
&49 constant PORTF	\ Data Register, Port F
&48 constant DDRF	\ Data Direction Register, Port F
&47 constant PINF	\ Input Pins, Port F
\ PORTG
&52 constant PORTG	\ Port G Data Register
&51 constant DDRG	\ Port G Data Direction Register
&50 constant PING	\ Port G Input Pins
\ JTAG
&81 constant OCDR	\ On-Chip Debug Related Register in I/O Memory
&85 constant MCUCR	\ MCU Control Register
  $80 constant MCUCR_JTD \ JTAG Interface Disable
&84 constant MCUSR	\ MCU Status Register
  $10 constant MCUSR_JTRF \ JTAG Reset Flag
\ LCD
&254 constant LCDDR18	\ LCD Data Register 18
&253 constant LCDDR17	\ LCD Data Register 17
&252 constant LCDDR16	\ LCD Data Register 16
&251 constant LCDDR15	\ LCD Data Register 15
&249 constant LCDDR13	\ LCD Data Register 13
&248 constant LCDDR12	\ LCD Data Register 12
&247 constant LCDDR11	\ LCD Data Register 11
&246 constant LCDDR10	\ LCD Data Register 10
&244 constant LCDDR8	\ LCD Data Register 8
&243 constant LCDDR7	\ LCD Data Register 7
&242 constant LCDDR6	\ LCD Data Register 6
&241 constant LCDDR5	\ LCD Data Register 5
&239 constant LCDDR3	\ LCD Data Register 3
&238 constant LCDDR2	\ LCD Data Register 2
&237 constant LCDDR1	\ LCD Data Register 1
&236 constant LCDDR0	\ LCD Data Register 0
&231 constant LCDCCR	\ LCD Contrast Control Register
&230 constant LCDFRR	\ LCD Frame Rate Register
  $70 constant LCDFRR_LCDPS \ LCD Prescaler Selects
  $07 constant LCDFRR_LCDCD \ LCD Clock Dividers
&229 constant LCDCRB	\ LCD Control and Status Register B
  $80 constant LCDCRB_LCDCS \ LCD CLock Select
  $40 constant LCDCRB_LCD2B \ LCD 1/2 Bias Select
  $30 constant LCDCRB_LCDMUX \ LCD Mux Selects
  $0F constant LCDCRB_LCDPM \ LCD Port Masks
&228 constant LCDCRA	\ LCD Control Register A
  $80 constant LCDCRA_LCDEN \ LCD Enable
  $40 constant LCDCRA_LCDAB \ LCD A or B waveform
  $10 constant LCDCRA_LCDIF \ LCD Interrupt Flag
  $08 constant LCDCRA_LCDIE \ LCD Interrupt Enable
  $01 constant LCDCRA_LCDBL \ LCD Blanking
\ EXTERNAL_INTERRUPT
&105 constant EICRA	\ External Interrupt Control Register A
  $02 constant EICRA_ISC01 \ External Interrupt Sense Control 0 Bit 1
  $01 constant EICRA_ISC00 \ External Interrupt Sense Control 0 Bit 0
&61 constant EIMSK	\ External Interrupt Mask Register
  $F0 constant EIMSK_PCIE \ Pin Change Interrupt Enables
  $01 constant EIMSK_INT0 \ External Interrupt Request 0 Enable
&60 constant EIFR	\ External Interrupt Flag Register
  $F0 constant EIFR_PCIF \ Pin Change Interrupt Flags
  $01 constant EIFR_INTF0 \ External Interrupt Flag 0
&108 constant PCMSK1	\ Pin Change Mask Register 1
&107 constant PCMSK0	\ Pin Change Mask Register 0
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
&97 constant CLKPR	\ Clock Prescale Register
  $80 constant CLKPR_CLKPCE \ Clock Prescaler Change Enable
  $0F constant CLKPR_CLKPS \ Clock Prescaler Select Bits
&100 constant PRR	\ Power Reduction Register
  $10 constant PRR_PRLCD \ Power Reduction LCD
  $08 constant PRR_PRTIM1 \ Power Reduction Timer/Counter1
  $04 constant PRR_PRSPI \ Power Reduction Serial Peripheral Interface
  $02 constant PRR_PRUSART0 \ Power Reduction USART
  $01 constant PRR_PRADC \ Power Reduction ADC
&83 constant SMCR	\ Sleep Mode Control Register
  $0E constant SMCR_SM \ Sleep Mode Select bits
  $01 constant SMCR_SE \ Sleep Enable
&75 constant GPIOR2	\ General Purpose IO Register 2
&74 constant GPIOR1	\ General Purpose IO Register 1
&62 constant GPIOR0	\ General Purpose IO Register 0
\ USI
&186 constant USIDR	\ USI Data Register
&185 constant USISR	\ USI Status Register
  $80 constant USISR_USISIF \ Start Condition Interrupt Flag
  $40 constant USISR_USIOIF \ Counter Overflow Interrupt Flag
  $20 constant USISR_USIPF \ Stop Condition Flag
  $10 constant USISR_USIDC \ Data Output Collision
  $0F constant USISR_USICNT \ USI Counter Value Bits
&184 constant USICR	\ USI Control Register
  $80 constant USICR_USISIE \ Start Condition Interrupt Enable
  $40 constant USICR_USIOIE \ Counter Overflow Interrupt Enable
  $30 constant USICR_USIWM \ USI Wire Mode Bits
  $0C constant USICR_USICS \ USI Clock Source Select Bits
  $02 constant USICR_USICLK \ Clock Strobe
  $01 constant USICR_USITC \ Toggle Clock Port Pin
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
&126 constant DIDR0	\ Digital Input Disable Register 0
  $80 constant DIDR0_ADC7D \ ADC7 Digital input Disable
  $40 constant DIDR0_ADC6D \ ADC6 Digital input Disable
  $20 constant DIDR0_ADC5D \ ADC5 Digital input Disable
  $10 constant DIDR0_ADC4D \ ADC4 Digital input Disable
  $08 constant DIDR0_ADC3D \ ADC3 Digital input Disable
  $04 constant DIDR0_ADC2D \ ADC2 Digital input Disable
  $02 constant DIDR0_ADC1D \ ADC1 Digital input Disable
  $01 constant DIDR0_ADC0D \ ADC0 Digital input Disable
\ BOOT_LOAD
&87 constant SPMCSR	\ Store Program Memory Control Register
  $80 constant SPMCSR_SPMIE \ SPM Interrupt Enable
  $40 constant SPMCSR_RWWSB \ Read While Write Section Busy
  $10 constant SPMCSR_RWWSRE \ Read While Write section read enable
  $08 constant SPMCSR_BLBSET \ Boot Lock Bit Set
  $04 constant SPMCSR_PGWRT \ Page Write
  $02 constant SPMCSR_PGERS \ Page Erase
  $01 constant SPMCSR_SPMEN \ Store Program Memory Enable
\ USART0
&198 constant UDR0	\ USART I/O Data Register
&192 constant UCSR0A	\ USART Control and Status Register A
  $80 constant UCSR0A_RXC0 \ USART Receive Complete
  $40 constant UCSR0A_TXC0 \ USART Transmit Complete
  $20 constant UCSR0A_UDRE0 \ USART Data Register Empty
  $10 constant UCSR0A_FE0 \ Framing Error
  $08 constant UCSR0A_DOR0 \ Data OverRun
  $04 constant UCSR0A_UPE0 \ USART Parity Error
  $02 constant UCSR0A_U2X0 \ Double the USART Transmission Speed
  $01 constant UCSR0A_MPCM0 \ Multi-processor Communication Mode
&193 constant UCSR0B	\ USART Control and Status Register B
  $80 constant UCSR0B_RXCIE0 \ RX Complete Interrupt Enable
  $40 constant UCSR0B_TXCIE0 \ TX Complete Interrupt Enable
  $20 constant UCSR0B_UDRIE0 \ USART Data Register Empty Interrupt Enable
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
&196 constant UBRR0	\ USART Baud Rate Register  Bytes

\ Interrupts
&2  constant INT0Addr \ External Interrupt Request 0
&4  constant PCINT0Addr \ Pin Change Interrupt Request 0
&6  constant PCINT1Addr \ Pin Change Interrupt Request 1
&8  constant TIMER2_COMPAddr \ Timer/Counter2 Compare Match
&10  constant TIMER2_OVFAddr \ Timer/Counter2 Overflow
&12  constant TIMER1_CAPTAddr \ Timer/Counter1 Capture Event
&14  constant TIMER1_COMPAAddr \ Timer/Counter1 Compare Match A
&16  constant TIMER1_COMPBAddr \ Timer/Counter Compare Match B
&18  constant TIMER1_OVFAddr \ Timer/Counter1 Overflow
&20  constant TIMER0_COMPAddr \ Timer/Counter0 Compare Match
&22  constant TIMER0_OVFAddr \ Timer/Counter0 Overflow
&24  constant SPI__STCAddr \ SPI Serial Transfer Complete
&26  constant USART0__RXAddr \ USART0, Rx Complete
&28  constant USART0__UDREAddr \ USART0 Data register Empty
&30  constant USART0__TXAddr \ USART0, Tx Complete
&32  constant USI_STARTAddr \ USI Start Condition
&34  constant USI_OVERFLOWAddr \ USI Overflow
&36  constant ANALOG_COMPAddr \ Analog Comparator
&38  constant ADCAddr \ ADC Conversion Complete
&40  constant EE_READYAddr \ EEPROM Ready
&42  constant SPM_READYAddr \ Store Program Memory Read
&44  constant LCDAddr \ LCD Start of Frame
