\ Partname: ATmega8515
\ generated automatically

\ ANALOG_COMPARATOR
&40 constant ACSR	\ Analog Comparator Control And Status Register
  $80 constant ACSR_ACD \ Analog Comparator Disable
  $40 constant ACSR_ACBG \ Analog Comparator Bandgap Select
  $20 constant ACSR_ACO \ Analog Compare Output
  $10 constant ACSR_ACI \ Analog Comparator Interrupt Flag
  $08 constant ACSR_ACIE \ Analog Comparator Interrupt Enable
  $04 constant ACSR_ACIC \ Analog Comparator Input Capture Enable
  $03 constant ACSR_ACIS \ Analog Comparator Interrupt Mode Select bits
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
  $04 constant UCSRB_UCSZ2 \ Character Size Bit 2
  $02 constant UCSRB_RXB8 \ Receive Data Bit 8
  $01 constant UCSRB_TXB8 \ Transmit Data Bit 8
&64 constant UCSRC	\ USART Control and Status Register C
  $80 constant UCSRC_URSEL \ Register Select
  $40 constant UCSRC_UMSEL \ USART Mode Select
  $30 constant UCSRC_UPM \ Parity Mode Bits
  $08 constant UCSRC_USBS \ Stop Bit Select
  $06 constant UCSRC_UCSZ \ Character Size Bits
  $01 constant UCSRC_UCPOL \ Clock Polarity
&64 constant UBRRH	\ USART Baud Rate Register High Byte
  $80 constant UBRRH_URSEL \ Register Select
  $0C constant UBRRH_UBRR1 \ USART Baud Rate Register bit 11
  $03 constant UBRRH_UBRR \ USART Baud Rate Register bits
&41 constant UBRRL	\ USART Baud Rate Register Low Byte
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
&86 constant EMCUCR	\ Extended MCU Control Register
  $80 constant EMCUCR_SM0 \ Sleep Mode Select Bit 0
  $70 constant EMCUCR_SRL \ Wait State Selector Limit bits
  $0C constant EMCUCR_SRW0 \ Wait State Select Bits for Lower Sector, bits
  $02 constant EMCUCR_SRW11 \ Wait State Select Bits for Upper Sector, bit 1
  $01 constant EMCUCR_ISC2 \ Interrupt Sense Control 2
&85 constant MCUCR	\ MCU Control Register
  $80 constant MCUCR_SRE \ External SRAM/XMEM Enable
  $40 constant MCUCR_SRW10 \ Wait State Select Bits for Upper Sector, bit 0
  $20 constant MCUCR_SE \ Sleep Enable
  $10 constant MCUCR_SM1 \ Sleep Mode Select Bit 1
  $0C constant MCUCR_ISC1 \ Interrupt Sense Control 1 Bits
  $03 constant MCUCR_ISC0 \ Interrupt Sense Control 0 Bits
&84 constant MCUCSR	\ MCU Control And Status Register
  $20 constant MCUCSR_SM2 \ Sleep Mode Select Bit 2
  $08 constant MCUCSR_WDRF \ Watchdog Reset Flag
  $04 constant MCUCSR_BORF \ Brown-out Reset Flag
  $02 constant MCUCSR_EXTRF \ External Reset Flag
  $01 constant MCUCSR_PORF \ Power-on reset flag
&36 constant OSCCAL	\ Oscillator Calibration Value
&87 constant SPMCR	\ Store Program Memory Control Register
  $80 constant SPMCR_SPMIE \ SPM Interrupt Enable
  $40 constant SPMCR_RWWSB \ Read-While-Write Section Busy
  $10 constant SPMCR_RWWSRE \ Read-While-Write Section Read Enable
  $08 constant SPMCR_BLBSET \ Boot Lock Bit Set
  $04 constant SPMCR_PGWRT \ Page Write
  $02 constant SPMCR_PGERS \ Page Erase
  $01 constant SPMCR_SPMEN \ Store Program Memory Enable
&80 constant SFIOR	\ Special Function IO Register
  $40 constant SFIOR_XMBK \ External Memory Bus Keeper Enable
  $38 constant SFIOR_XMM \ External Memory High Mask Bits
  $04 constant SFIOR_PUD \ Pull-up Disable
  $01 constant SFIOR_PSR10 \ Prescaler Reset Timer / Counter 1 and Timer / Counter 0
\ EXTERNAL_INTERRUPT
&91 constant GICR	\ General Interrupt Control Register
  $C0 constant GICR_INT \ External Interrupt Request 1 Enable
  $20 constant GICR_INT2 \ External Interrupt Request 2 Enable
  $02 constant GICR_IVSEL \ Interrupt Vector Select
  $01 constant GICR_IVCE \ Interrupt Vector Change Enable
&90 constant GIFR	\ General Interrupt Flag Register
  $C0 constant GIFR_INTF \ External Interrupt Flags
  $20 constant GIFR_INTF2 \ External Interrupt Flag 2
\ WATCHDOG
&65 constant WDTCR	\ Watchdog Timer Control Register
  $10 constant WDTCR_WDCE \ Watchdog Change Enable
  $08 constant WDTCR_WDE \ Watch Dog Enable
  $07 constant WDTCR_WDP \ Watch Dog Timer Prescaler bits
\ TIMER_COUNTER_0
&83 constant TCCR0	\ Timer/Counter 0 Control Register
  $80 constant TCCR0_FOC0 \ Force Output Compare
  $40 constant TCCR0_WGM00 \ Waveform Generation Mode 0
  $30 constant TCCR0_COM0 \ Compare Match Output Modes
  $08 constant TCCR0_WGM01 \ Waveform Generation Mode 1
  $07 constant TCCR0_CS0 \ Clock Selects
&82 constant TCNT0	\ Timer/Counter 0 Register
&81 constant OCR0	\ Timer/Counter 0 Output Compare Register
&89 constant TIMSK	\ Timer/Counter Interrupt Mask Register
  $02 constant TIMSK_TOIE0 \ Timer/Counter0 Overflow Interrupt Enable
  $01 constant TIMSK_OCIE0 \ Timer/Counter0 Output Compare Match Interrupt register
&88 constant TIFR	\ Timer/Counter Interrupt Flag register
  $02 constant TIFR_TOV0 \ Timer/Counter0 Overflow Flag
  $01 constant TIFR_OCF0 \ Output Compare Flag 0
\ TIMER_COUNTER_1
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
&39 constant PORTE	\ Port E Data Register
&38 constant DDRE	\ Port E Data Direction Register
&37 constant PINE	\ Port E Input Pins
\ EEPROM
&62 constant EEAR	\ EEPROM Address Register  Bytes
&61 constant EEDR	\ EEPROM Data Register
&60 constant EECR	\ EEPROM Control Register
  $08 constant EECR_EERIE \ EEPROM Ready Interrupt Enable
  $04 constant EECR_EEMWE \ EEPROM Master Write Enable
  $02 constant EECR_EEWE \ EEPROM Write Enable
  $01 constant EECR_EERE \ EEPROM Read Enable

\ Interrupts
&1  constant INT0Addr \ External Interrupt Request 0
&2  constant INT1Addr \ External Interrupt Request 1
&3  constant TIMER1_CAPTAddr \ Timer/Counter1 Capture Event
&4  constant TIMER1_COMPAAddr \ Timer/Counter1 Compare Match A
&5  constant TIMER1_COMPBAddr \ Timer/Counter1 Compare MatchB
&6  constant TIMER1_OVFAddr \ Timer/Counter1 Overflow
&7  constant TIMER0_OVFAddr \ Timer/Counter0 Overflow
&8  constant SPI_STCAddr \ Serial Transfer Complete
&9  constant USART_RXAddr \ USART, Rx Complete
&10  constant USART_UDREAddr \ USART Data Register Empty
&11  constant USART__TXAddr \ USART, Tx Complete
&12  constant ANA_COMPAddr \ Analog Comparator
&13  constant INT2Addr \ External Interrupt Request 2
&14  constant TIMER0_COMPAddr \ Timer 0 Compare Match
&15  constant EE_RDYAddr \ EEPROM Ready
&16  constant SPM_RDYAddr \ Store Program Memory Ready
