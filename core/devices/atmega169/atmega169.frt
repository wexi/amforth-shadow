\ Partname: ATmega169
\ Built using part description XML file version 300
\ generated automatically

hex

\ AD_CONVERTER
79 constant ADCH	\ ADC Data Register High Byte
78 constant ADCL	\ ADC Data Register Low Byte
7A constant ADCSRA	\ The ADC Control and Status register
7B constant ADCSRB	\ ADC Control and Status Register B
7C constant ADMUX	\ The ADC multiplexer Selection Register
7E constant DIDR0	\ Digital Input Disable Register 0

\ ANALOG_COMPARATOR
50 constant ACSR	\ Analog Comparator Control And Status Register
7F constant DIDR1	\ Digital Input Disable Register 1

\ BOOT_LOAD
57 constant SPMCSR	\ Store Program Memory Control Register

\ CPU
61 constant CLKPR	\ Clock Prescale Register
3E constant GPIOR0	\ General Purpose IO Register 0
4A constant GPIOR1	\ General Purpose IO Register 1
4B constant GPIOR2	\ General Purpose IO Register 2
55 constant MCUCR	\ MCU Control Register
54 constant MCUSR	\ MCU Status Register
66 constant OSCCAL	\ Oscillator Calibration Value
64 constant PRR	\ Power Reduction Register
53 constant SMCR	\ Sleep Mode Control Register
5E constant SPH	\ Stack Pointer High
5D constant SPL	\ Stack Pointer Low
5F constant SREG	\ Status Register

\ EEPROM
42 constant EEARH	\ EEPROM Address Register High Byte
41 constant EEARL	\ EEPROM Address Register Low Byte
3F constant EECR	\ EEPROM Control Register
40 constant EEDR	\ EEPROM Data Register

\ EXTERNAL_INTERRUPT
69 constant EICRA	\ External Interrupt Control Register 
3C constant EIFR	\ External Interrupt Flag Register
3D constant EIMSK	\ External Interrupt Mask Register
6B constant PCMSK0	\ Pin Change Mask Register 0
6C constant PCMSK1	\ Pin Change Mask Register 1

\ JTAG
51 constant OCDR	\ On-Chip Debug Related Register in I/O Memory

\ LCD
E7 constant LCDCCR	\ LCD Contrast Control Register
E4 constant LCDCRA	\ LCD Control Register A
E5 constant LCDCRB	\ LCD Control and Status Register B
EC constant LCDDR0	\ LCD Data Register 0
ED constant LCDDR1	\ LCD Data Register 1
F6 constant LCDDR10	\ LCD Data Register 10
F7 constant LCDDR11	\ LCD Data Register 11
F8 constant LCDDR12	\ LCD Data Register 12
F9 constant LCDDR13	\ LCD Data Register 13
FB constant LCDDR15	\ LCD Data Register 15
FC constant LCDDR16	\ LCD Data Register 16
FD constant LCDDR17	\ LCD Data Register 17
FE constant LCDDR18	\ LCD Data Register 18
EE constant LCDDR2	\ LCD Data Register 2
EF constant LCDDR3	\ LCD Data Register 3
F1 constant LCDDR5	\ LCD Data Register 5
F2 constant LCDDR6	\ LCD Data Register 6
F3 constant LCDDR7	\ LCD Data Register 7
F4 constant LCDDR8	\ LCD Data Register 8
E6 constant LCDFRR	\ LCD Frame Rate Register

\ PORTA
21 constant DDRA	\ Port A Data Direction Register
20 constant PINA	\ Port A Input Pins
22 constant PORTA	\ Port A Data Register

\ PORTB
24 constant DDRB	\ Port B Data Direction Register
23 constant PINB	\ Port B Input Pins
25 constant PORTB	\ Port B Data Register

\ PORTC
27 constant DDRC	\ Port C Data Direction Register
26 constant PINC	\ Port C Input Pins
28 constant PORTC	\ Port C Data Register

\ PORTD
2A constant DDRD	\ Port D Data Direction Register
29 constant PIND	\ Port D Input Pins
2B constant PORTD	\ Port D Data Register

\ PORTE
2D constant DDRE	\ Data Direction Register, Port E
2C constant PINE	\ Input Pins, Port E
2E constant PORTE	\ Data Register, Port E

\ PORTF
30 constant DDRF	\ Data Direction Register, Port F
2F constant PINF	\ Input Pins, Port F
31 constant PORTF	\ Data Register, Port F

\ PORTG
33 constant DDRG	\ Port G Data Direction Register
32 constant PING	\ Port G Input Pins
34 constant PORTG	\  Port G Data Register

\ SPI
4C constant SPCR	\ SPI Control Register
4E constant SPDR	\ SPI Data Register
4D constant SPSR	\ SPI Status Register

\ TIMER_COUNTER_0
43 constant GTCCR	\ General Timer/Control Register
47 constant OCR0A	\ Timer/Counter0 Output Compare Register
44 constant TCCR0A	\ Timer/Counter0 Control Register
46 constant TCNT0	\ Timer/Counter0
35 constant TIFR0	\ Timer/Counter0 Interrupt Flag register
6E constant TIMSK0	\ Timer/Counter0 Interrupt Mask Register

\ TIMER_COUNTER_1
87 constant ICR1H	\ Timer/Counter1 Input Capture Register High Byte
86 constant ICR1L	\ Timer/Counter1 Input Capture Register Low Byte
89 constant OCR1AH	\ Timer/Counter1 Output Compare Register A High Byte
88 constant OCR1AL	\ Timer/Counter1 Output Compare Register A Low Byte
8B constant OCR1BH	\ Timer/Counter1 Output Compare Register B High Byte
8A constant OCR1BL	\ Timer/Counter1 Output Compare Register B Low Byte
80 constant TCCR1A	\ Timer/Counter1 Control Register A
81 constant TCCR1B	\ Timer/Counter1 Control Register B
82 constant TCCR1C	\ Timer/Counter 1 Control Register C
85 constant TCNT1H	\ Timer/Counter1 High Byte
84 constant TCNT1L	\ Timer/Counter1 Low Byte
36 constant TIFR1	\ Timer/Counter1 Interrupt Flag register
6F constant TIMSK1	\ Timer/Counter1 Interrupt Mask Register

\ TIMER_COUNTER_2
B6 constant ASSR	\ Asynchronous Status Register
B3 constant OCR2A	\ Timer/Counter2 Output Compare Register
B0 constant TCCR2A	\ Timer/Counter2 Control Register
B2 constant TCNT2	\ Timer/Counter2
37 constant TIFR2	\ Timer/Counter2 Interrupt Flag Register
70 constant TIMSK2	\ Timer/Counter2 Interrupt Mask register

\ USART0
C5 constant UBRR0H	\ USART Baud Rate Register High Byte
C4 constant UBRR0L	\ USART Baud Rate Register Low Byte
C0 constant UCSR0A	\ USART Control and Status Register A
C1 constant UCSR0B	\ USART Control and Status Register B
C2 constant UCSR0C	\ USART Control and Status Register C
C6 constant UDR0	\ USART I/O Data Register

\ USI
B8 constant USICR	\ USI Control Register
BA constant USIDR	\ USI Data Register
B9 constant USISR	\ USI Status Register

\ WATCHDOG
60 constant WDTCR	\ Watchdog Timer Control Register

\ Interrupts
002  constant INT0Addr \ External Interrupt Request 0
004  constant PCINT0Addr \ Pin Change Interrupt Request 0
006  constant PCINT1Addr \ Pin Change Interrupt Request 1
008  constant TIMER2_COMPAddr \ Timer/Counter2 Compare Match
00A  constant TIMER2_OVFAddr \ Timer/Counter2 Overflow
00C  constant TIMER1_CAPTAddr \ Timer/Counter1 Capture Event
00E  constant TIMER1_COMPAAddr \ Timer/Counter1 Compare Match A
010  constant TIMER1_COMPBAddr \ Timer/Counter Compare Match B
012  constant TIMER1_OVFAddr \ Timer/Counter1 Overflow
014  constant TIMER0_COMPAddr \ Timer/Counter0 Compare Match
016  constant TIMER0_OVFAddr \ Timer/Counter0 Overflow
018  constant SPI_STCAddr \ SPI Serial Transfer Complete
01A  constant USART0_RXAddr \ USART0, Rx Complete
01C  constant USART0_UDREAddr \ USART0 Data register Empty
01E  constant USART0_TXAddr \ USART0, Tx Complete
020  constant USI_STARTAddr \ USI Start Condition
022  constant USI_OVERFLOWAddr \ USI Overflow
024  constant ANALOG_COMPAddr \ Analog Comparator
026  constant ADCAddr \ ADC Conversion Complete
028  constant EE_READYAddr \ EEPROM Ready
02A  constant SPM_READYAddr \ Store Program Memory Read
02C  constant LCDAddr \ LCD Start of Frame
