\ Partname: ATmega323
\ Built using part description XML file version 203
\ generated automatically

hex

\ AD_CONVERTER
25 constant ADCH	\ ADC Data Register High Byte
24 constant ADCL	\ ADC Data Register Low Byte
26 constant ADCSR	\ The ADC Control and Status register
27 constant ADMUX	\ The ADC multiplexer Selection Register

\ ANALOG_COMPARATOR
28 constant ACSR	\ Analog Comparator Control And Status Register
50 constant SFIOR	\ Special Function IO Register

\ CPU
55 constant MCUCR	\ MCU Control Register
54 constant MCUCSR	\ MCU Control And Status Register
51 constant OSCCAL	\ Oscillator Calibration Value
5E constant SPH	\ Stack Pointer High
5D constant SPL	\ Stack Pointer Low
57 constant SPMCR	\ Store Program Memory Control Register
5F constant SREG	\ Status Register

\ EEPROM
3F constant EEARH	\ EEPROM Read/Write Access High Byte
3E constant EEARL	\ EEPROM Read/Write Access Low Byte
3C constant EECR	\ EEPROM Control Register
3D constant EEDR	\ EEPROM Data Register

\ EXTERNAL_INTERRUPT
5B constant GICR	\ General Interrupt Control Register
5A constant GIFR	\ General Interrupt Flag Register

\ PORTA
3A constant DDRA	\ Port A Data Direction Register
39 constant PINA	\ Port A Input Pins
3B constant PORTA	\ Port A Data Register

\ PORTB
37 constant DDRB	\ Port B Data Direction Register
36 constant PINB	\ Port B Input Pins
38 constant PORTB	\ Port B Data Register

\ PORTC
34 constant DDRC	\ Port C Data Direction Register
33 constant PINC	\ Port C Input Pins
35 constant PORTC	\ Port C Data Register

\ PORTD
31 constant DDRD	\ Port D Data Direction Register
30 constant PIND	\ Port D Input Pins
32 constant PORTD	\ Port D Data Register

\ SPI
2D constant SPCR	\ SPI Control Register
2F constant SPDR	\ SPI Data Register
2E constant SPSR	\ SPI Status Register

\ TIMER_COUNTER_0
5C constant OCR0	\ Output Compare Register
53 constant TCCR0	\ Timer/Counter Control Register
52 constant TCNT0	\ Timer/Counter Register 
58 constant TIFR	\ Timer/Counter Interrupt Flag register
59 constant TIMSK	\ Timer/Counter Interrupt Mask Register

\ TIMER_COUNTER_1
47 constant ICR1H	\ Timer/Counter1 Input Capture Register High Byte
46 constant ICR1L	\ Timer/Counter1 Input Capture Register Low Byte
4B constant OCR1AH	\ Timer/Counter1 Output Compare Register High Byte
4A constant OCR1AL	\ Timer/Counter1 Output Compare Register Low Byte
49 constant OCR1BH	\ Timer/Counter1 Output Compare Register High Byte
48 constant OCR1BL	\ Timer/Counter1 Output Compare Register Low Byte
4F constant TCCR1A	\ Timer/Counter1 Control Register A
4E constant TCCR1B	\ Timer/Counter1 Control Register B
4D constant TCNT1H	\ Timer/Counter1 High Byte
4C constant TCNT1L	\ Timer/Counter1 Low Byte

\ TIMER_COUNTER_2
42 constant ASSR	\ Asynchronous Status Register
43 constant OCR2	\ Timer/Counter2 Output Compare Register
45 constant TCCR2	\ Timer/Counter2 Control Register
44 constant TCNT2	\ Timer/Counter2

\ TWI
22 constant TWAR	\ TWI (Slave) Address register
20 constant TWBR	\ TWI Bit Rate register
56 constant TWCR	\ TWI Control Register
23 constant TWDR	\ TWI Data register
21 constant TWSR	\ TWI Status Register

\ USART
40 constant UBRRH	\ USART Baud Rate Register Hight Byte
29 constant UBRRL	\ USART Baud Rate Register Low Byte
2B constant UCSRA	\ USART Control and Status Register A
2A constant UCSRB	\ USART Control and Status Register B
2C constant UDR	\ USART I/O Data Register

\ WATCHDOG
41 constant WDTCR	\ Watchdog Timer Control Register

\ Interrupts
002  constant INT0Addr \ External Interrupt Request 0
004  constant INT1Addr \ External Interrupt Request 1
006  constant INT2Addr \ External Interrupt Request 2
008  constant TIMER2_COMPAddr \ Timer/Counter2 Compare Match
00A  constant TIMER2_OVFAddr \ Timer/Counter2 Overflow
00C  constant TIMER1_CAPTAddr \ Timer/Counter1 Capture Event
00E  constant TIMER1_COMPAAddr \ Timer/Counter1 Compare Match A
010  constant TIMER1_COMPBAddr \ Timer/Counter1 Compare Match B
012  constant TIMER1_OVFAddr \ Timer/Counter1 Overflow
014  constant TIMER0_COMPAddr \ Timer/Counter0 Compare Match
016  constant TIMER0_OVFAddr \ Timer/Counter0 Overflow
018  constant SPI_STCAddr \ Serial Transfer Complete
01A  constant USART_RXCAddr \ USART, Rx Complete
01C  constant USART_UDREAddr \ USART Data Register Empty
01E  constant USART_TXCAddr \ USART, Tx Complete
020  constant ADCAddr \ ADC Conversion Complete
022  constant EE_RDYAddr \ EEPROM Ready
024  constant ANA_COMPAddr \ Analog Comparator
026  constant TWIAddr \ 2-wire Serial Interface
28  constant SPM_RDYAddr \ Store Program Memory Ready
