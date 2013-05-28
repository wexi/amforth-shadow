\ Partname: ATmega8
\ generated automatically

\ ANALOG_COMPARATOR
&80 constant SFIOR	\ Special Function IO Register
  $08 constant SFIOR_ACME \ Analog Comparator Multiplexer Enable
&40 constant ACSR	\ Analog Comparator Control And Status Register
  $80 constant ACSR_ACD \ Analog Comparator Disable
  $40 constant ACSR_ACBG \ Analog Comparator Bandgap Select
  $20 constant ACSR_ACO \ Analog Compare Output
  $10 constant ACSR_ACI \ Analog Comparator Interrupt Flag
  $08 constant ACSR_ACIE \ Analog Comparator Interrupt Enable
  $04 constant ACSR_ACIC \ Analog Comparator Input Capture Enable
  $03 constant ACSR_ACIS \ Analog Comparator Interrupt Mode Select bits
\ SPI
&47 constant SPDR	\ SPI Data Register
&46 constant SPSR	\ SPI Status Register
  $80 constant SPSR_SPIF \ SPI Interrupt Flag
  $40 constant SPSR_WCOL \ Write Collision Flag
  $01 constant SPSR_SPI2X \ Double SPI Speed Bit
&45 constant SPCR	\ SPI Control Register
  $80 constant SPCR_SPIE \ SPI Interrupt Enable
  $40 constant SPCR_SPE \ SPI Enable
  $20 constant SPCR_DORD \ Data Order
  $10 constant SPCR_MSTR \ Master/Slave Select
  $08 constant SPCR_CPOL \ Clock polarity
  $04 constant SPCR_CPHA \ Clock Phase
  $03 constant SPCR_SPR \ SPI Clock Rate Selects
\ EXTERNAL_INTERRUPT
&91 constant GICR	\ General Interrupt Control Register
  $C0 constant GICR_INT \ External Interrupt Request 1 Enable
  $02 constant GICR_IVSEL \ Interrupt Vector Select
  $01 constant GICR_IVCE \ Interrupt Vector Change Enable
&90 constant GIFR	\ General Interrupt Flag Register
  $C0 constant GIFR_INTF \ External Interrupt Flags
&85 constant MCUCR	\ MCU Control Register
  $0C constant MCUCR_ISC1 \ Interrupt Sense Control 1 Bits
  $03 constant MCUCR_ISC0 \ Interrupt Sense Control 0 Bits
\ TIMER_COUNTER_0
&89 constant TIMSK	\ Timer/Counter Interrupt Mask Register
  $01 constant TIMSK_TOIE0 \ Timer/Counter0 Overflow Interrupt Enable
&88 constant TIFR	\ Timer/Counter Interrupt Flag register
  $01 constant TIFR_TOV0 \ Timer/Counter0 Overflow Flag
&83 constant TCCR0	\ Timer/Counter0 Control Register
  $04 constant TCCR0_CS02 \ Clock Select0 bit 2
  $02 constant TCCR0_CS01 \ Clock Select0 bit 1
  $01 constant TCCR0_CS00 \ Clock Select0 bit 0
&82 constant TCNT0	\ Timer Counter 0
\ TIMER_COUNTER_1
&79 constant TCCR1A	\ Timer/Counter1 Control Register A
  $C0 constant TCCR1A_COM1A \ Compare Output Mode 1A, bits
  $30 constant TCCR1A_COM1B \ Compare Output Mode 1B, bits
  $08 constant TCCR1A_FOC1A \ Force Output Compare 1A
  $04 constant TCCR1A_FOC1B \ Force Output Compare 1B
  $03 constant TCCR1A_WGM1 \ Waveform Generation Mode
&78 constant TCCR1B	\ Timer/Counter1 Control Register B
  $80 constant TCCR1B_ICNC1 \ Input Capture 1 Noise Canceler
  $40 constant TCCR1B_ICES1 \ Input Capture 1 Edge Select
  $18 constant TCCR1B_WGM1 \ Waveform Generation Mode
  $07 constant TCCR1B_CS1 \ Prescaler source of Timer/Counter 1
&76 constant TCNT1	\ Timer/Counter1  Bytes
&74 constant OCR1A	\ Timer/Counter1 Output Compare Register  Bytes
&72 constant OCR1B	\ Timer/Counter1 Output Compare Register  Bytes
&70 constant ICR1	\ Timer/Counter1 Input Capture Register  Bytes
\ TIMER_COUNTER_2
&69 constant TCCR2	\ Timer/Counter2 Control Register
  $80 constant TCCR2_FOC2 \ Force Output Compare
  $40 constant TCCR2_WGM20 \ Waveform Genration Mode
  $30 constant TCCR2_COM2 \ Compare Output Mode bits
  $08 constant TCCR2_WGM21 \ Waveform Generation Mode
  $07 constant TCCR2_CS2 \ Clock Select bits
&68 constant TCNT2	\ Timer/Counter2
&67 constant OCR2	\ Timer/Counter2 Output Compare Register
&66 constant ASSR	\ Asynchronous Status Register
  $08 constant ASSR_AS2 \ Asynchronous Timer/counter2
  $04 constant ASSR_TCN2UB \ Timer/Counter2 Update Busy
  $02 constant ASSR_OCR2UB \ Output Compare Register2 Update Busy
  $01 constant ASSR_TCR2UB \ Timer/counter Control Register2 Update Busy
\ USART
&44 constant UDR	\ USART I/O Data Register
&43 constant UCSRA	\ USART Control and Status Register A
  $80 constant UCSRA_RXC \ USART Receive Complete
  $40 constant UCSRA_TXC \ USART Transmitt Complete
  $20 constant UCSRA_UDRE \ USART Data Register Empty
  $10 constant UCSRA_FE \ Framing Error
  $08 constant UCSRA_DOR \ Data overRun
  $04 constant UCSRA_UPE \ Parity Error
  $02 constant UCSRA_U2X \ Double the USART transmission speed
  $01 constant UCSRA_MPCM \ Multi-processor Communication Mode
&42 constant UCSRB	\ USART Control and Status Register B
  $80 constant UCSRB_RXCIE \ RX Complete Interrupt Enable
  $40 constant UCSRB_TXCIE \ TX Complete Interrupt Enable
  $20 constant UCSRB_UDRIE \ USART Data register Empty Interrupt Enable
  $10 constant UCSRB_RXEN \ Receiver Enable
  $08 constant UCSRB_TXEN \ Transmitter Enable
  $04 constant UCSRB_UCSZ2 \ Character Size
  $02 constant UCSRB_RXB8 \ Receive Data Bit 8
  $01 constant UCSRB_TXB8 \ Transmit Data Bit 8
&64 constant UCSRC	\ USART Control and Status Register C
  $80 constant UCSRC_URSEL \ Register Select
  $40 constant UCSRC_UMSEL \ USART Mode Select
  $30 constant UCSRC_UPM \ Parity Mode Bits
  $08 constant UCSRC_USBS \ Stop Bit Select
  $06 constant UCSRC_UCSZ \ Character Size
  $01 constant UCSRC_UCPOL \ Clock Polarity
&64 constant UBRRH	\ USART Baud Rate Register Hight Byte
&41 constant UBRRL	\ USART Baud Rate Register Low Byte
\ TWI
&32 constant TWBR	\ TWI Bit Rate register
&86 constant TWCR	\ TWI Control Register
  $80 constant TWCR_TWINT \ TWI Interrupt Flag
  $40 constant TWCR_TWEA \ TWI Enable Acknowledge Bit
  $20 constant TWCR_TWSTA \ TWI Start Condition Bit
  $10 constant TWCR_TWSTO \ TWI Stop Condition Bit
  $08 constant TWCR_TWWC \ TWI Write Collition Flag
  $04 constant TWCR_TWEN \ TWI Enable Bit
  $01 constant TWCR_TWIE \ TWI Interrupt Enable
&33 constant TWSR	\ TWI Status Register
  $F8 constant TWSR_TWS \ TWI Status
  $03 constant TWSR_TWPS \ TWI Prescaler
&35 constant TWDR	\ TWI Data register
&34 constant TWAR	\ TWI (Slave) Address register
  $FE constant TWAR_TWA \ TWI (Slave) Address register Bits
  $01 constant TWAR_TWGCE \ TWI General Call Recognition Enable Bit
\ WATCHDOG
&65 constant WDTCR	\ Watchdog Timer Control Register
  $10 constant WDTCR_WDCE \ Watchdog Change Enable
  $08 constant WDTCR_WDE \ Watch Dog Enable
  $07 constant WDTCR_WDP \ Watch Dog Timer Prescaler bits
\ PORTB
&56 constant PORTB	\ Port B Data Register
&55 constant DDRB	\ Port B Data Direction Register
&54 constant PINB	\ Port B Input Pins
\ PORTC
&53 constant PORTC	\ Port C Data Register
&52 constant DDRC	\ Port C Data Direction Register
&51 constant PINC	\ Port C Input Pins
\ PORTD
&50 constant PORTD	\ Port D Data Register
&49 constant DDRD	\ Port D Data Direction Register
&48 constant PIND	\ Port D Input Pins
\ EEPROM
&62 constant EEAR	\ EEPROM Address Register  Bytes
&61 constant EEDR	\ EEPROM Data Register
&60 constant EECR	\ EEPROM Control Register
  $08 constant EECR_EERIE \ EEPROM Ready Interrupt Enable
  $04 constant EECR_EEMWE \ EEPROM Master Write Enable
  $02 constant EECR_EEWE \ EEPROM Write Enable
  $01 constant EECR_EERE \ EEPROM Read Enable
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
&84 constant MCUCSR	\ MCU Control And Status Register
  $08 constant MCUCSR_WDRF \ Watchdog Reset Flag
  $04 constant MCUCSR_BORF \ Brown-out Reset Flag
  $02 constant MCUCSR_EXTRF \ External Reset Flag
  $01 constant MCUCSR_PORF \ Power-on reset flag
&81 constant OSCCAL	\ Oscillator Calibration Value
&87 constant SPMCR	\ Store Program Memory Control Register
  $80 constant SPMCR_SPMIE \ SPM Interrupt Enable
  $40 constant SPMCR_RWWSB \ Read-While-Write Section Busy
  $10 constant SPMCR_RWWSRE \ Read-While-Write Section Read Enable
  $08 constant SPMCR_BLBSET \ Boot Lock Bit Set
  $04 constant SPMCR_PGWRT \ Page Write
  $02 constant SPMCR_PGERS \ Page Erase
  $01 constant SPMCR_SPMEN \ Store Program Memory Enable
\ AD_CONVERTER
&39 constant ADMUX	\ The ADC multiplexer Selection Register
  $C0 constant ADMUX_REFS \ Reference Selection Bits
  $20 constant ADMUX_ADLAR \ Left Adjust Result
  $0F constant ADMUX_MUX \ Analog Channel and Gain Selection Bits
&38 constant ADCSRA	\ The ADC Control and Status register
  $80 constant ADCSRA_ADEN \ ADC Enable
  $40 constant ADCSRA_ADSC \ ADC Start Conversion
  $20 constant ADCSRA_ADFR \ ADC  Free Running Select
  $10 constant ADCSRA_ADIF \ ADC Interrupt Flag
  $08 constant ADCSRA_ADIE \ ADC Interrupt Enable
  $07 constant ADCSRA_ADPS \ ADC  Prescaler Select Bits
&36 constant ADC	\ ADC Data Register  Bytes

\ Interrupts
&1  constant INT0Addr \ External Interrupt Request 0
&2  constant INT1Addr \ External Interrupt Request 1
&3  constant TIMER2_COMPAddr \ Timer/Counter2 Compare Match
&4  constant TIMER2_OVFAddr \ Timer/Counter2 Overflow
&5  constant TIMER1_CAPTAddr \ Timer/Counter1 Capture Event
&6  constant TIMER1_COMPAAddr \ Timer/Counter1 Compare Match A
&7  constant TIMER1_COMPBAddr \ Timer/Counter1 Compare Match B
&8  constant TIMER1_OVFAddr \ Timer/Counter1 Overflow
&9  constant TIMER0_OVFAddr \ Timer/Counter0 Overflow
&10  constant SPI__STCAddr \ Serial Transfer Complete
&11  constant USART__RXCAddr \ USART, Rx Complete
&12  constant USART__UDREAddr \ USART Data Register Empty
&13  constant USART__TXCAddr \ USART, Tx Complete
&14  constant ADCAddr \ ADC Conversion Complete
&15  constant EE_RDYAddr \ EEPROM Ready
&16  constant ANA_COMPAddr \ Analog Comparator
&17  constant TWIAddr \ 2-wire Serial Interface
&18  constant SPM_RDYAddr \ Store Program Memory Ready
