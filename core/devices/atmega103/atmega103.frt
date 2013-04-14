\ Partname: ATmega103
\ Built using part description XML file version 236
\ generated automatically

hex

\ AD_CONVERTER
25 constant ADCH	\ ADC Data Register High Byte
24 constant ADCL	\ ADC Data Register Low Byte
26 constant ADCSR	\ The ADC Control and Status register
27 constant ADMUX	\ The ADC multiplexer Selection Register

\ ANALOG_COMPARATOR
28 constant ACSR	\ Analog Comparator Control And Status Register

\ CPU
55 constant MCUCR	\ MCU Control Register
54 constant MCUSR	\ MCU Status Register
5B constant RAMPZ	\ RAM Page Z Select Register
5E constant SPH	\ Stack Pointer High
5D constant SPL	\ Stack Pointer Low
5F constant SREG	\ Status Register
5C constant XDIV	\ XTAL Divide Control Register

\ EEPROM
3F constant EEARH	\ EEPROM Read/Write Access High Byte
3E constant EEARL	\ EEPROM Read/Write Access Low Byte
3C constant EECR	\ EEPROM Control Register
3D constant EEDR	\ EEPROM Data Register

\ EXTERNAL_INTERRUPT
5A constant EICR	\ External Interrupt Control Register B
58 constant EIFR	\ External Interrupt Flag Register
59 constant EIMSK	\ External Interrupt Mask Register

\ PORTA
3A constant DDRA	\ Port A Data Direction Register
39 constant PINA	\ Port A Input Pins
3B constant PORTA	\ Port A Data Register

\ PORTB
37 constant DDRB	\ Port B Data Direction Register
36 constant PINB	\ Port B Input Pins
38 constant PORTB	\ Port B Data Register

\ PORTC
35 constant PORTC	\ Port C Data Register

\ PORTD
31 constant DDRD	\ Port D Data Direction Register
30 constant PIND	\ Port D Input Pins
32 constant PORTD	\ Port D Data Register

\ PORTE
22 constant DDRE	\ Data Direction Register, Port E
21 constant PINE	\ Input Pins, Port E
23 constant PORTE	\ Data Register, Port E

\ PORTF
20 constant PINF	\ Input Pins, Port F

\ SPI
2D constant SPCR	\ SPI Control Register
2F constant SPDR	\ SPI Data Register
2E constant SPSR	\ SPI Status Register

\ TIMER_COUNTER_0
50 constant ASSR	\ Asynchronus Status Register
51 constant OCR0	\ Output Compare Register
53 constant TCCR0	\ Timer/Counter Control Register
52 constant TCNT0	\ Timer/Counter Register 
56 constant TIFR	\ Timer/Counter Interrupt Flag register
57 constant TIMSK	\ Timer/Counter Interrupt Mask Register

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
43 constant OCR2	\ Timer/Counter2 Output Compare Register
45 constant TCCR2	\ Timer/Counter2 Control Register
44 constant TCNT2	\ Timer/Counter2

\ UART
29 constant UBRR	\ UART BAUD Rate Register
2A constant UCR	\ UART Control Register
2C constant UDR	\ UART I/O Data Register
2B constant USR	\ UART Status Register

\ WATCHDOG
41 constant WDTCR	\ Watchdog Timer Control Register

\ Interrupts
002  constant INT0Addr \ External Interrupt 0
004  constant INT1Addr \ External Interrupt 1
006  constant INT2Addr \ External Interrupt 2
008  constant INT3Addr \ External Interrupt 3
00A  constant INT4Addr \ External Interrupt 4
00C  constant INT5Addr \ External Interrupt 5
00E  constant INT6Addr \ External Interrupt 6
010  constant INT7Addr \ External Interrupt 7
012  constant TIMER2_COMPAddr \ Timer/Counter2 Compare Match
014  constant TIMER2_OVFAddr \ Timer/Counter2 Overflow
016  constant TIMER1_CAPTAddr \ Timer/Counter1 Capture Event
018  constant TIMER1_COMPAAddr \ Timer/Counter1 Compare Match A
01A  constant TIMER1_COMPBAddr \ Timer/Counter1 Compare Match B
01C  constant TIMER1_OVFAddr \ Timer/Counter1 Overflow
01E  constant TIMER0_COMPAddr \ Timer/Counter0 Compare Match
020  constant TIMER0_OVFAddr \ Timer/Counter0 Overflow
022  constant SPISTCAddr \ SPI Serial Transfer Complete
024  constant UARTRXAddr \ UART, Rx Complete
026  constant UARTUDREAddr \ UART Data Register Empty
028  constant UARTTXAddr \ UART, Tx Complete
02A  constant ADCAddr \ ADC Conversion Complete
02C  constant EE_READYAddr \ EEPROM Ready
02E  constant ANALOG_COMPAddr \ Analog Comparator
