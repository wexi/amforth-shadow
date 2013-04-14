\ Partname: ATmega64A
\ generated automatically

\ ANALOG_COMPARATOR
&64 constant SFIOR	\ Special Function IO Register
  $08 constant SFIOR_ACME \ Analog Comparator Multiplexer Enable
&40 constant ACSR	\ Analog Comparator Control And Status Register
  $80 constant ACSR_ACD \ Analog Comparator Disable
  $40 constant ACSR_ACBG \ Analog Comparator Bandgap Select
  $20 constant ACSR_ACO \ Analog Compare Output
  $10 constant ACSR_ACI \ Analog Comparator Interrupt Flag
  $08 constant ACSR_ACIE \ Analog Comparator Interrupt Enable
  $04 constant ACSR_ACIC \ Analog Comparator Input Capture Enable
  $03 constant ACSR_ACIS \ Analog Comparator Interrupt Mode Select bits
\ AD_CONVERTER
&39 constant ADMUX	\ The ADC multiplexer Selection Register
  $C0 constant ADMUX_REFS \ Reference Selection Bits
  $20 constant ADMUX_ADLAR \ Left Adjust Result
  $1F constant ADMUX_MUX \ Analog Channel and Gain Selection Bits
&36 constant ADC	\ ADC Data Register  Bytes
&38 constant ADCSRA	\ The ADC Control and Status register A
  $80 constant ADCSRA_ADEN \ ADC Enable
  $40 constant ADCSRA_ADSC \ ADC Start Conversion
  $20 constant ADCSRA_ADATE \ ADC  Auto Trigger Enable
  $10 constant ADCSRA_ADIF \ ADC Interrupt Flag
  $08 constant ADCSRA_ADIE \ ADC Interrupt Enable
  $07 constant ADCSRA_ADPS \ ADC  Prescaler Select Bits
&142 constant ADCSRB	\ The ADC Control and Status register B
  $07 constant ADCSRB_ADTS \ ADC Auto Trigger Source bits
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
\ TWI
&112 constant TWBR	\ TWI Bit Rate register
&116 constant TWCR	\ TWI Control Register
  $80 constant TWCR_TWINT \ TWI Interrupt Flag
  $40 constant TWCR_TWEA \ TWI Enable Acknowledge Bit
  $20 constant TWCR_TWSTA \ TWI Start Condition Bit
  $10 constant TWCR_TWSTO \ TWI Stop Condition Bit
  $08 constant TWCR_TWWC \ TWI Write Collition Flag
  $04 constant TWCR_TWEN \ TWI Enable Bit
  $01 constant TWCR_TWIE \ TWI Interrupt Enable
&113 constant TWSR	\ TWI Status Register
  $F8 constant TWSR_TWS \ TWI Status
  $03 constant TWSR_TWPS \ TWI Prescaler
&115 constant TWDR	\ TWI Data register
&114 constant TWAR	\ TWI (Slave) Address register
  $FE constant TWAR_TWA \ TWI (Slave) Address register Bits
  $01 constant TWAR_TWGCE \ TWI General Call Recognition Enable Bit
\ USART0
&44 constant UDR0	\ USART I/O Data Register
&43 constant UCSR0A	\ USART Control and Status Register A
  $80 constant UCSR0A_RXC0 \ USART Receive Complete
  $40 constant UCSR0A_TXC0 \ USART Transmitt Complete
  $20 constant UCSR0A_UDRE0 \ USART Data Register Empty
  $10 constant UCSR0A_FE0 \ Framing Error
  $08 constant UCSR0A_DOR0 \ Data overRun
  $04 constant UCSR0A_UPE0 \ Parity Error
  $02 constant UCSR0A_U2X0 \ Double the USART transmission speed
  $01 constant UCSR0A_MPCM0 \ Multi-processor Communication Mode
&42 constant UCSR0B	\ USART Control and Status Register B
  $80 constant UCSR0B_RXCIE0 \ RX Complete Interrupt Enable
  $40 constant UCSR0B_TXCIE0 \ TX Complete Interrupt Enable
  $20 constant UCSR0B_UDRIE0 \ USART Data register Empty Interrupt Enable
  $10 constant UCSR0B_RXEN0 \ Receiver Enable
  $08 constant UCSR0B_TXEN0 \ Transmitter Enable
  $04 constant UCSR0B_UCSZ02 \ Character Size
  $02 constant UCSR0B_RXB80 \ Receive Data Bit 8
  $01 constant UCSR0B_TXB80 \ Transmit Data Bit 8
&149 constant UCSR0C	\ USART Control and Status Register C
  $40 constant UCSR0C_UMSEL0 \ USART Mode Select
  $30 constant UCSR0C_UPM0 \ Parity Mode Bits
  $08 constant UCSR0C_USBS0 \ Stop Bit Select
  $06 constant UCSR0C_UCSZ0 \ Character Size
  $01 constant UCSR0C_UCPOL0 \ Clock Polarity
&144 constant UBRR0H	\ USART Baud Rate Register Hight Byte
&41 constant UBRR0L	\ USART Baud Rate Register Low Byte
\ USART1
&156 constant UDR1	\ USART I/O Data Register
&155 constant UCSR1A	\ USART Control and Status Register A
  $80 constant UCSR1A_RXC1 \ USART Receive Complete
  $40 constant UCSR1A_TXC1 \ USART Transmitt Complete
  $20 constant UCSR1A_UDRE1 \ USART Data Register Empty
  $10 constant UCSR1A_FE1 \ Framing Error
  $08 constant UCSR1A_DOR1 \ Data overRun
  $04 constant UCSR1A_UPE1 \ Parity Error
  $02 constant UCSR1A_U2X1 \ Double the USART transmission speed
  $01 constant UCSR1A_MPCM1 \ Multi-processor Communication Mode
&154 constant UCSR1B	\ USART Control and Status Register B
  $80 constant UCSR1B_RXCIE1 \ RX Complete Interrupt Enable
  $40 constant UCSR1B_TXCIE1 \ TX Complete Interrupt Enable
  $20 constant UCSR1B_UDRIE1 \ USART Data register Empty Interrupt Enable
  $10 constant UCSR1B_RXEN1 \ Receiver Enable
  $08 constant UCSR1B_TXEN1 \ Transmitter Enable
  $04 constant UCSR1B_UCSZ12 \ Character Size
  $02 constant UCSR1B_RXB81 \ Receive Data Bit 8
  $01 constant UCSR1B_TXB81 \ Transmit Data Bit 8
&157 constant UCSR1C	\ USART Control and Status Register C
  $40 constant UCSR1C_UMSEL1 \ USART Mode Select
  $30 constant UCSR1C_UPM1 \ Parity Mode Bits
  $08 constant UCSR1C_USBS1 \ Stop Bit Select
  $06 constant UCSR1C_UCSZ1 \ Character Size
  $01 constant UCSR1C_UCPOL1 \ Clock Polarity
&152 constant UBRR1H	\ USART Baud Rate Register Hight Byte
&153 constant UBRR1L	\ USART Baud Rate Register Low Byte
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
  $80 constant MCUCR_SRE \ External SRAM Enable
  $40 constant MCUCR_SRW10 \ External SRAM Wait State Select
  $20 constant MCUCR_SE \ Sleep Enable
  $18 constant MCUCR_SM \ Sleep Mode Select
  $04 constant MCUCR_SM2 \ Sleep Mode Select
  $02 constant MCUCR_IVSEL \ Interrupt Vector Select
  $01 constant MCUCR_IVCE \ Interrupt Vector Change Enable
&84 constant MCUCSR	\ MCU Control And Status Register
  $80 constant MCUCSR_JTD \ JTAG Interface Disable
  $10 constant MCUCSR_JTRF \ JTAG Reset Flag
  $08 constant MCUCSR_WDRF \ Watchdog Reset Flag
  $04 constant MCUCSR_BORF \ Brown-out Reset Flag
  $02 constant MCUCSR_EXTRF \ External Reset Flag
  $01 constant MCUCSR_PORF \ Power-on reset flag
&109 constant XMCRA	\ External Memory Control Register A
  $70 constant XMCRA_SRL \ Wait state page limit
  $0C constant XMCRA_SRW0 \ Wait state select bit lower page
  $02 constant XMCRA_SRW11 \ Wait state select bit upper page
&108 constant XMCRB	\ External Memory Control Register B
  $80 constant XMCRB_XMBK \ External Memory Bus Keeper Enable
  $07 constant XMCRB_XMM \ External Memory High Mask
&111 constant OSCCAL	\ Oscillator Calibration Value
&92 constant XDIV	\ XTAL Divide Control Register
  $80 constant XDIV_XDIVEN \ XTAL Divide Enable
  $7F constant XDIV_XDIV \ XTAl Divide Select Bits
\ BOOT_LOAD
&104 constant SPMCSR	\ Store Program Memory Control Register
  $80 constant SPMCSR_SPMIE \ SPM Interrupt Enable
  $40 constant SPMCSR_RWWSB \ Read While Write Section Busy
  $10 constant SPMCSR_RWWSRE \ Read While Write section read enable
  $08 constant SPMCSR_BLBSET \ Boot Lock Bit Set
  $04 constant SPMCSR_PGWRT \ Page Write
  $02 constant SPMCSR_PGERS \ Page Erase
  $01 constant SPMCSR_SPMEN \ Store Program Memory Enable
\ JTAG
&66 constant OCDR	\ On-Chip Debug Related Register in I/O Memory
  $FF constant OCDR_OCDR \ On-Chip Debug Register Bits
\ MISC
\ EXTERNAL_INTERRUPT
&106 constant EICRA	\ External Interrupt Control Register A
  $C0 constant EICRA_ISC3 \ External Interrupt Sense Control Bit
  $30 constant EICRA_ISC2 \ External Interrupt Sense Control Bit
  $0C constant EICRA_ISC1 \ External Interrupt Sense Control Bit
  $03 constant EICRA_ISC0 \ External Interrupt Sense Control Bit
&90 constant EICRB	\ External Interrupt Control Register B
  $C0 constant EICRB_ISC7 \ External Interrupt 7-4 Sense Control Bit
  $30 constant EICRB_ISC6 \ External Interrupt 7-4 Sense Control Bit
  $0C constant EICRB_ISC5 \ External Interrupt 7-4 Sense Control Bit
  $03 constant EICRB_ISC4 \ External Interrupt 7-4 Sense Control Bit
&89 constant EIMSK	\ External Interrupt Mask Register
  $FF constant EIMSK_INT \ External Interrupt Request 7 Enable
&88 constant EIFR	\ External Interrupt Flag Register
  $FF constant EIFR_INTF \ External Interrupt Flags
\ EEPROM
&62 constant EEAR	\ EEPROM Read/Write Access  Bytes
&61 constant EEDR	\ EEPROM Data Register
&60 constant EECR	\ EEPROM Control Register
  $08 constant EECR_EERIE \ EEPROM Ready Interrupt Enable
  $04 constant EECR_EEMWE \ EEPROM Master Write Enable
  $02 constant EECR_EEWE \ EEPROM Write Enable
  $01 constant EECR_EERE \ EEPROM Read Enable
\ PORTA
&59 constant PORTA	\ Port A Data Register
&58 constant DDRA	\ Port A Data Direction Register
&57 constant PINA	\ Port A Input Pins
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
\ PORTE
&35 constant PORTE	\ Data Register, Port E
&34 constant DDRE	\ Data Direction Register, Port E
&33 constant PINE	\ Input Pins, Port E
\ PORTF
&98 constant PORTF	\ Data Register, Port F
&97 constant DDRF	\ Data Direction Register, Port F
&32 constant PINF	\ Input Pins, Port F
\ PORTG
&101 constant PORTG	\ Data Register, Port G
&100 constant DDRG	\ Data Direction Register, Port G
&99 constant PING	\ Input Pins, Port G
\ TIMER_COUNTER_0
&83 constant TCCR0	\ Timer/Counter Control Register
  $80 constant TCCR0_FOC0 \ Force Output Compare
  $40 constant TCCR0_WGM00 \ Waveform Generation Mode 0
  $30 constant TCCR0_COM0 \ Compare Match Output Modes
  $08 constant TCCR0_WGM01 \ Waveform Generation Mode 1
  $07 constant TCCR0_CS0 \ Clock Selects
&82 constant TCNT0	\ Timer/Counter Register
&81 constant OCR0	\ Output Compare Register
&80 constant ASSR	\ Asynchronus Status Register
  $08 constant ASSR_AS0 \ Asynchronus Timer/Counter 0
  $04 constant ASSR_TCN0UB \ Timer/Counter0 Update Busy
  $02 constant ASSR_OCR0UB \ Output Compare register 0 Busy
  $01 constant ASSR_TCR0UB \ Timer/Counter Control Register 0 Update Busy
&87 constant TIMSK	\ Timer/Counter Interrupt Mask Register
  $02 constant TIMSK_OCIE0 \ Timer/Counter0 Output Compare Match Interrupt register
  $01 constant TIMSK_TOIE0 \ Timer/Counter0 Overflow Interrupt Enable
&86 constant TIFR	\ Timer/Counter Interrupt Flag register
  $02 constant TIFR_OCF0 \ Output Compare Flag 0
  $01 constant TIFR_TOV0 \ Timer/Counter0 Overflow Flag
\ TIMER_COUNTER_1
&125 constant ETIMSK	\ Extended Timer/Counter Interrupt Mask Register
  $01 constant ETIMSK_OCIE1C \ Timer/Counter 1, Output Compare Match C Interrupt Enable
&124 constant ETIFR	\ Extended Timer/Counter Interrupt Flag register
  $01 constant ETIFR_OCF1C \ Timer/Counter 1, Output Compare C Match Flag
&79 constant TCCR1A	\ Timer/Counter1 Control Register A
  $C0 constant TCCR1A_COM1A \ Compare Output Mode 1A, bits
  $30 constant TCCR1A_COM1B \ Compare Output Mode 1B, bits
  $0C constant TCCR1A_COM1C \ Compare Output Mode 1C, bits
  $03 constant TCCR1A_WGM1 \ Waveform Generation Mode Bits
&78 constant TCCR1B	\ Timer/Counter1 Control Register B
  $80 constant TCCR1B_ICNC1 \ Input Capture 1 Noise Canceler
  $40 constant TCCR1B_ICES1 \ Input Capture 1 Edge Select
  $18 constant TCCR1B_WGM1 \ Waveform Generation Mode
  $07 constant TCCR1B_CS1 \ Clock Select1 bits
&122 constant TCCR1C	\ Timer/Counter1 Control Register C
  $80 constant TCCR1C_FOC1A \ Force Output Compare for channel A
  $40 constant TCCR1C_FOC1B \ Force Output Compare for channel B
  $20 constant TCCR1C_FOC1C \ Force Output Compare for channel C
&76 constant TCNT1	\ Timer/Counter1  Bytes
&74 constant OCR1A	\ Timer/Counter1 Output Compare Register  Bytes
&72 constant OCR1B	\ Timer/Counter1 Output Compare Register  Bytes
&120 constant OCR1C	\ Timer/Counter1 Output Compare Register  Bytes
&70 constant ICR1	\ Timer/Counter1 Input Capture Register  Bytes
\ TIMER_COUNTER_2
&69 constant TCCR2	\ Timer/Counter Control Register
  $80 constant TCCR2_FOC2 \ Force Output Compare
  $40 constant TCCR2_WGM20 \ Wafeform Generation Mode
  $30 constant TCCR2_COM2 \ Compare Match Output Mode
  $08 constant TCCR2_WGM21 \ Waveform Generation Mode
  $07 constant TCCR2_CS2 \ Clock Select
&68 constant TCNT2	\ Timer/Counter Register
&67 constant OCR2	\ Output Compare Register
\ TIMER_COUNTER_3
&139 constant TCCR3A	\ Timer/Counter3 Control Register A
  $C0 constant TCCR3A_COM3A \ Compare Output Mode 3A, bits
  $30 constant TCCR3A_COM3B \ Compare Output Mode 3B, bits
  $0C constant TCCR3A_COM3C \ Compare Output Mode 3C, bits
  $03 constant TCCR3A_WGM3 \ Waveform Generation Mode Bits
&138 constant TCCR3B	\ Timer/Counter3 Control Register B
  $80 constant TCCR3B_ICNC3 \ Input Capture 3  Noise Canceler
  $40 constant TCCR3B_ICES3 \ Input Capture 3 Edge Select
  $18 constant TCCR3B_WGM3 \ Waveform Generation Mode
  $07 constant TCCR3B_CS3 \ Clock Select3 bits
&140 constant TCCR3C	\ Timer/Counter3 Control Register C
  $80 constant TCCR3C_FOC3A \ Force Output Compare for channel A
  $40 constant TCCR3C_FOC3B \ Force Output Compare for channel B
  $20 constant TCCR3C_FOC3C \ Force Output Compare for channel C
&136 constant TCNT3	\ Timer/Counter3  Bytes
&134 constant OCR3A	\ Timer/Counter3 Output Compare Register A  Bytes
&132 constant OCR3B	\ Timer/Counter3 Output Compare Register B  Bytes
&130 constant OCR3C	\ Timer/Counter3 Output compare Register C  Bytes
&128 constant ICR3	\ Timer/Counter3 Input Capture Register  Bytes
\ WATCHDOG
&65 constant WDTCR	\ Watchdog Timer Control Register
  $10 constant WDTCR_WDCE \ Watchdog Change Enable
  $08 constant WDTCR_WDE \ Watch Dog Enable
  $07 constant WDTCR_WDP \ Watch Dog Timer Prescaler bits

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
&28  constant TIMER1_OVFAddr \ Timer/Counter1 Overflow
&30  constant TIMER0_COMPAddr \ Timer/Counter0 Compare Match
&32  constant TIMER0_OVFAddr \ Timer/Counter0 Overflow
&34  constant SPI__STCAddr \ SPI Serial Transfer Complete
&36  constant USART0__RXAddr \ USART0, Rx Complete
&38  constant USART0__UDREAddr \ USART0 Data Register Empty
&40  constant USART0__TXAddr \ USART0, Tx Complete
&42  constant ADCAddr \ ADC Conversion Complete
&44  constant EE_READYAddr \ EEPROM Ready
&46  constant ANALOG_COMPAddr \ Analog Comparator
&48  constant TIMER1_COMPCAddr \ Timer/Counter1 Compare Match C
&50  constant TIMER3_CAPTAddr \ Timer/Counter3 Capture Event
&52  constant TIMER3_COMPAAddr \ Timer/Counter3 Compare Match A
&54  constant TIMER3_COMPBAddr \ Timer/Counter3 Compare Match B
&56  constant TIMER3_COMPCAddr \ Timer/Counter3 Compare Match C
&58  constant TIMER3_OVFAddr \ Timer/Counter3 Overflow
&60  constant USART1__RXAddr \ USART1, Rx Complete
&62  constant USART1__UDREAddr \ USART1, Data Register Empty
&64  constant USART1__TXAddr \ USART1, Tx Complete
&66  constant TWIAddr \ 2-wire Serial Interface
&68  constant SPM_READYAddr \ Store Program Memory Read
