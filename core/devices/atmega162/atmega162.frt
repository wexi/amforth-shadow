\ Partname: ATmega162
\ generated automatically

\ TIMER_COUNTER_1
&89 constant TIMSK	\ Timer/Counter Interrupt Mask Register
  $80 constant TIMSK_TOIE1 \ Timer/Counter1 Overflow Interrupt Enable
  $40 constant TIMSK_OCIE1A \ Timer/Counter1 Output CompareA Match Interrupt Enable
  $20 constant TIMSK_OCIE1B \ Timer/Counter1 Output CompareB Match Interrupt Enable
  $08 constant TIMSK_TICIE1 \ Timer/Counter1 Input Capture Interrupt Enable
&88 constant TIFR	\ Timer/Counter Interrupt Flag register
  $80 constant TIFR_TOV1 \ Timer/Counter1 Overflow Flag
  $40 constant TIFR_OCF1A \ Output Compare Flag 1A
  $20 constant TIFR_OCF1B \ Output Compare Flag 1B
  $08 constant TIFR_ICF1 \ Input Capture Flag 1
&79 constant TCCR1A	\ Timer/Counter1 Control Register A
  $C0 constant TCCR1A_COM1A \ Compare Output Mode 1A, bits
  $30 constant TCCR1A_COM1B \ Compare Output Mode 1B, bits
  $08 constant TCCR1A_FOC1A \ Force Output Compare for Channel A
  $04 constant TCCR1A_FOC1B \ Force Output Compare for Channel B
  $03 constant TCCR1A_WGM1 \ Pulse Width Modulator Select Bits
&78 constant TCCR1B	\ Timer/Counter1 Control Register B
  $80 constant TCCR1B_ICNC1 \ Input Capture 1 Noise Canceler
  $40 constant TCCR1B_ICES1 \ Input Capture 1 Edge Select
  $18 constant TCCR1B_WGM1 \ Pulse Width Modulator Select Bits
  $07 constant TCCR1B_CS1 \ Clock Select1 bits
&76 constant TCNT1	\ Timer/Counter1  Bytes
&74 constant OCR1A	\ Timer/Counter1 Output Compare Register A  Bytes
&72 constant OCR1B	\ Timer/Counter1 Output Compare Register B  Bytes
&68 constant ICR1	\ Timer/Counter1 Input Capture Register  Bytes
\ TIMER_COUNTER_2
&71 constant TCCR2	\ Timer/Counter Control Register
  $80 constant TCCR2_FOC2 \ Forde Output Compare
  $40 constant TCCR2_WGM20 \ Pulse Width Modulator Select Bit 0
  $30 constant TCCR2_COM2 \ Compare Match Output Mode
  $08 constant TCCR2_WGM21 \ Pulse Width Modulator Select Bit 1
  $07 constant TCCR2_CS2 \ Clock Select
&67 constant TCNT2	\ Timer/Counter Register
&66 constant OCR2	\ Output Compare Register
&70 constant ASSR	\ Asynchronous Status Register
  $08 constant ASSR_AS2 \ Asynchronous Timer 2
  $04 constant ASSR_TCN2UB \ Timer/Counter2 Update Busy
  $02 constant ASSR_OCR2UB \ Output Compare Register2 Update Busy
  $01 constant ASSR_TCR2UB \ Timer/Counter Control Register2 Update Busy
\ TIMER_COUNTER_3
&125 constant ETIMSK	\ Extended Timer/Counter Interrupt Mask Register
  $20 constant ETIMSK_TICIE3 \ Timer/Counter3 Input Capture Interrupt Enable
  $10 constant ETIMSK_OCIE3A \ Timer/Counter3 Output CompareA Match Interrupt Enable
  $08 constant ETIMSK_OCIE3B \ Timer/Counter3 Output CompareB Match Interrupt Enable
  $04 constant ETIMSK_TOIE3 \ Timer/Counter3 Overflow Interrupt Enable
&124 constant ETIFR	\ Extended Timer/Counter Interrupt Flag register
  $20 constant ETIFR_ICF3 \ Input Capture Flag 3
  $10 constant ETIFR_OCF3A \ Output Compare Flag 3A
  $08 constant ETIFR_OCF3B \ Output Compare Flag 3B
  $04 constant ETIFR_TOV3 \ Timer/Counter3 Overflow Flag
&139 constant TCCR3A	\ Timer/Counter3 Control Register A
  $C0 constant TCCR3A_COM3A \ Compare Output Mode 3A, bits
  $30 constant TCCR3A_COM3B \ Compare Output Mode 3B, bits
  $08 constant TCCR3A_FOC3A \ Force Output Compare for Channel A
  $04 constant TCCR3A_FOC3B \ Force Output Compare for Channel B
  $03 constant TCCR3A_WGM3 \ Pulse Width Modulator Select Bits
&138 constant TCCR3B	\ Timer/Counter3 Control Register B
  $80 constant TCCR3B_ICNC3 \ Input Capture 3 Noise Canceler
  $40 constant TCCR3B_ICES3 \ Input Capture 3 Edge Select
  $18 constant TCCR3B_WGM3 \ Pulse Width Modulator Select Bits
  $07 constant TCCR3B_CS3 \ Clock Select3 bits
&136 constant TCNT3	\ Timer/Counter3  Bytes
&134 constant OCR3A	\ Timer/Counter3 Output Compare Register A  Bytes
&132 constant OCR3B	\ Timer/Counte3 Output Compare Register B  Bytes
&128 constant ICR3	\ Timer/Counter3 Input Capture Register  Bytes
\ ANALOG_COMPARATOR
&40 constant ACSR	\ Analog Comparator Control And Status Register
  $80 constant ACSR_ACD \ Analog Comparator Disable
  $40 constant ACSR_ACBG \ Analog Comparator Bandgap Select
  $20 constant ACSR_ACO \ Analog Compare Output
  $10 constant ACSR_ACI \ Analog Comparator Interrupt Flag
  $08 constant ACSR_ACIE \ Analog Comparator Interrupt Enable
  $04 constant ACSR_ACIC \ Analog Comparator Input Capture Enable
  $03 constant ACSR_ACIS \ Analog Comparator Interrupt Mode Select bits
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
&64 constant UCSR0C	\ USART Control and Status Register C
  $80 constant UCSR0C_URSEL0 \ Register Select
  $40 constant UCSR0C_UMSEL0 \ USART Mode Select
  $30 constant UCSR0C_UPM0 \ Parity Mode Bits
  $08 constant UCSR0C_USBS0 \ Stop Bit Select
  $06 constant UCSR0C_UCSZ0 \ Character Size
  $01 constant UCSR0C_UCPOL0 \ Clock Polarity
&64 constant UBRR0H	\ USART Baud Rate Register Hight Byte
&41 constant UBRR0L	\ USART Baud Rate Register Low Byte
\ USART1
&35 constant UDR	\ USART I/O Data Register
&34 constant UCSR1A	\ USART Control and Status Register A
  $80 constant UCSR1A_RXC1 \ USART Receive Complete
  $40 constant UCSR1A_TXC1 \ USART Transmitt Complete
  $20 constant UCSR1A_UDRE1 \ USART Data Register Empty
  $10 constant UCSR1A_FE1 \ Framing Error
  $08 constant UCSR1A_DOR1 \ Data overRun
  $04 constant UCSR1A_UPE1 \ Parity Error
  $02 constant UCSR1A_U2X1 \ Double the USART transmission speed
  $01 constant UCSR1A_MPCM1 \ Multi-processor Communication Mode
&33 constant UCSR1B	\ USART Control and Status Register B
  $80 constant UCSR1B_RXCIE1 \ RX Complete Interrupt Enable
  $40 constant UCSR1B_TXCIE1 \ TX Complete Interrupt Enable
  $20 constant UCSR1B_UDRIE1 \ USART Data register Empty Interrupt Enable
  $10 constant UCSR1B_RXEN1 \ Receiver Enable
  $08 constant UCSR1B_TXEN1 \ Transmitter Enable
  $04 constant UCSR1B_UCSZ12 \ Character Size
  $02 constant UCSR1B_RXB81 \ Receive Data Bit 8
  $01 constant UCSR1B_TXB81 \ Transmit Data Bit 8
&92 constant UCSR1C	\ USART Control and Status Register C
  $80 constant UCSR1C_URSEL1 \ Register Select
  $40 constant UCSR1C_UMSEL1 \ USART Mode Select
  $30 constant UCSR1C_UPM1 \ Parity Mode Bits
  $08 constant UCSR1C_USBS1 \ Stop Bit Select
  $06 constant UCSR1C_UCSZ1 \ Character Size
  $01 constant UCSR1C_UCPOL1 \ Clock Polarity
&92 constant UBRR1H	\ USART Baud Rate Register Highg Byte
&32 constant UBRR1L	\ USART Baud Rate Register Low Byte
\ SPI
&45 constant SPCR	\ SPI Control Register
  $80 constant SPCR_SPIE \ SPI Interrupt Enable
  $40 constant SPCR_SPE \ SPI Enable
  $20 constant SPCR_DORD \ Data Order
  $10 constant SPCR_MSTR \ Master/Slave Select
  $08 constant SPCR_CPOL \ Clock polarity
  $04 constant SPCR_CPHA \ Clock Phase
  $03 constant SPCR_SPR \ SPI Clock Rate Selects
&46 constant SPSR	\ SPI Status Register
  $80 constant SPSR_SPIF \ SPI Interrupt Flag
  $40 constant SPSR_WCOL \ Write Collision Flag
  $01 constant SPSR_SPI2X \ Double SPI Speed Bit
&47 constant SPDR	\ SPI Data Register
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
  $10 constant MCUCR_SM1 \ Sleep Mode Select
  $0C constant MCUCR_ISC1 \ Interrupt Sense Control 1 bits
  $03 constant MCUCR_ISC0 \ Interrupt Sense Control 0 bits
&84 constant MCUCSR	\ MCU Control And Status Register
  $80 constant MCUCSR_JDT \ JTAG Interface Disable
  $20 constant MCUCSR_SM2 \ Sleep Mode Select Bit 2
  $10 constant MCUCSR_JTRF \ JTAG Reset Flag
  $08 constant MCUCSR_WDRF \ Watchdog Reset Flag
  $04 constant MCUCSR_BORF \ Brown-out Reset Flag
  $02 constant MCUCSR_EXTRF \ External Reset Flag
  $01 constant MCUCSR_PORF \ Power-on reset flag
&86 constant EMCUCR	\ Extended MCU Control Register
  $80 constant EMCUCR_SM0 \ Sleep mode Select Bit 0
  $70 constant EMCUCR_SRL \ Wait State Sector Limit Bits
  $0C constant EMCUCR_SRW0 \ Wait State Select Bit 1 for Lower Sector
  $02 constant EMCUCR_SRW11 \ Wait State Select Bit 1 for Upper Sector
  $01 constant EMCUCR_ISC2 \ Interrupt Sense Control 2
&36 constant OSCCAL	\ Oscillator Calibration Value
&97 constant CLKPR	\ Clock prescale register
  $80 constant CLKPR_CLKPCE \ Clock Prescaler Change Enable
  $0F constant CLKPR_CLKPS \ Clock Prescaler Select Bits
&80 constant SFIOR	\ Special Function IO Register
  $80 constant SFIOR_TSM \ Timer/Counter Synchronization Mode
  $40 constant SFIOR_XMBK \ External Memory Bus Keeper Enable
  $38 constant SFIOR_XMM \ External Memory High Mask Bits
  $04 constant SFIOR_PUD \ Pull-up Disable
  $02 constant SFIOR_PSR2 \ Prescaler Reset Timer/Counter2
  $01 constant SFIOR_PSR310 \ Prescaler Reset Timer/Counter3, Timer/Counter1 and Timer/Counter0
\ JTAG
&36 constant OCDR	\ On-Chip Debug Related Register in I/O Memory
  $FF constant OCDR_OCDR \ On-Chip Debug Register Bits
\ BOOT_LOAD
&87 constant SPMCR	\ Store Program Memory Control Register
  $80 constant SPMCR_SPMIE \ SPM Interrupt Enable
  $40 constant SPMCR_RWWSB \ Read While Write Section Busy
  $10 constant SPMCR_RWWSRE \ Read While Write secion read enable
  $08 constant SPMCR_BLBSET \ Boot Lock Bit Set
  $04 constant SPMCR_PGWRT \ Page Write
  $02 constant SPMCR_PGERS \ Page Erase
  $01 constant SPMCR_SPMEN \ Store Program Memory Enable
\ EEPROM
&62 constant EEAR	\ EEPROM Address Register  Bytes
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
\ TIMER_COUNTER_0
&83 constant TCCR0	\ Timer/Counter 0 Control Register
  $80 constant TCCR0_FOC0 \ Force Output Compare
  $40 constant TCCR0_WGM00 \ Waveform Generation Mode 0
  $30 constant TCCR0_COM0 \ Compare Match Output Modes
  $08 constant TCCR0_WGM01 \ Waveform Generation Mode 1
  $07 constant TCCR0_CS0 \ Clock Selects
&82 constant TCNT0	\ Timer/Counter 0 Register
&81 constant OCR0	\ Timer/Counter 0 Output Compare Register
\ WATCHDOG
&65 constant WDTCR	\ Watchdog Timer Control Register
  $10 constant WDTCR_WDCE \ Watchdog Change Enable
  $08 constant WDTCR_WDE \ Watch Dog Enable
  $07 constant WDTCR_WDP \ Watch Dog Timer Prescaler bits
\ PORTE
&39 constant PORTE	\ Data Register, Port E
&38 constant DDRE	\ Data Direction Register, Port E
&37 constant PINE	\ Input Pins, Port E
\ EXTERNAL_INTERRUPT
&91 constant GICR	\ General Interrupt Control Register
  $C0 constant GICR_INT \ External Interrupt Request 1 Enable
  $20 constant GICR_INT2 \ External Interrupt Request 2 Enable
  $18 constant GICR_PCIE \ Pin Change Interrupt Enables
  $02 constant GICR_IVSEL \ Interrupt Vector Select
  $01 constant GICR_IVCE \ Interrupt Vector Change Enable
&90 constant GIFR	\ General Interrupt Flag Register
  $C0 constant GIFR_INTF \ External Interrupt Flags
  $20 constant GIFR_INTF2 \ External Interrupt Flag 2
  $18 constant GIFR_PCIF \ Pin Change Interrupt Flags
&108 constant PCMSK1	\ Pin Change Mask Register 1
&107 constant PCMSK0	\ Pin Change Enable Mask

\ Interrupts
&2  constant INT0Addr \ External Interrupt Request 0
&4  constant INT1Addr \ External Interrupt Request 1
&6  constant INT2Addr \ External Interrupt Request 2
&8  constant PCINT0Addr \ Pin Change Interrupt Request 0
&10  constant PCINT1Addr \ Pin Change Interrupt Request 1
&12  constant TIMER3_CAPTAddr \ Timer/Counter3 Capture Event
&14  constant TIMER3_COMPAAddr \ Timer/Counter3 Compare Match A
&16  constant TIMER3_COMPBAddr \ Timer/Counter3 Compare Match B
&18  constant TIMER3_OVFAddr \ Timer/Counter3 Overflow
&20  constant TIMER2_COMPAddr \ Timer/Counter2 Compare Match
&22  constant TIMER2_OVFAddr \ Timer/Counter2 Overflow
&24  constant TIMER1_CAPTAddr \ Timer/Counter1 Capture Event
&26  constant TIMER1_COMPAAddr \ Timer/Counter1 Compare Match A
&28  constant TIMER1_COMPBAddr \ Timer/Counter Compare Match B
&30  constant TIMER1_OVFAddr \ Timer/Counter1 Overflow
&32  constant TIMER0_COMPAddr \ Timer/Counter0 Compare Match
&34  constant TIMER0_OVFAddr \ Timer/Counter0 Overflow
&36  constant SPI__STCAddr \ SPI Serial Transfer Complete
&38  constant USART0__RXCAddr \ USART0, Rx Complete
&40  constant USART1__RXCAddr \ USART1, Rx Complete
&42  constant USART0__UDREAddr \ USART0 Data register Empty
&44  constant USART1__UDREAddr \ USART1, Data register Empty
&46  constant USART0__TXCAddr \ USART0, Tx Complete
&48  constant USART1__TXCAddr \ USART1, Tx Complete
&50  constant EE_RDYAddr \ EEPROM Ready
&52  constant ANA_COMPAddr \ Analog Comparator
&54  constant SPM_RDYAddr \ Store Program Memory Read
