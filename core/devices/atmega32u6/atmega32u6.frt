\ Partname: ATmega32U6
\ Built using part description XML file version 1
\ generated automatically

hex

\ AD_CONVERTER
79 constant ADCH	\ ADC Data Register High Byte
78 constant ADCL	\ ADC Data Register Low Byte
7A constant ADCSRA	\ The ADC Control and Status register
7B constant ADCSRB	\ ADC Control and Status Register B
7C constant ADMUX	\ The ADC multiplexer Selection Register
7E constant DIDR0	\ Digital Input Disable Register 1

\ ANALOG_COMPARATOR
50 constant ACSR	\ Analog Comparator Control And Status Register
7F constant DIDR1	\ 

\ BOOT_LOAD
57 constant SPMCSR	\ Store Program Memory Control Register

\ CPU
61 constant CLKPR	\ 
3E constant GPIOR0	\ General Purpose IO Register 0
4A constant GPIOR1	\ General Purpose IO Register 1
4B constant GPIOR2	\ General Purpose IO Register 2
55 constant MCUCR	\ MCU Control Register
54 constant MCUSR	\ MCU Status Register
66 constant OSCCAL	\ Oscillator Calibration Value
64 constant PRR0	\ Power Reduction Register0
65 constant PRR1	\ Power Reduction Register1
53 constant SMCR	\ Sleep Mode Control Register
5E constant SPH	\ Stack Pointer High
5D constant SPL	\ Stack Pointer Low
5F constant SREG	\ Status Register
74 constant XMCRA	\ External Memory Control Register A
75 constant XMCRB	\ External Memory Control Register B

\ EEPROM
42 constant EEARH	\ EEPROM Address Register Low Byte
41 constant EEARL	\ EEPROM Address Register Low Byte
3F constant EECR	\ EEPROM Control Register
40 constant EEDR	\ EEPROM Data Register

\ EXTERNAL_INTERRUPT
69 constant EICRA	\ External Interrupt Control Register A
6A constant EICRB	\ External Interrupt Control Register B
3C constant EIFR	\ External Interrupt Flag Register
3D constant EIMSK	\ External Interrupt Mask Register
68 constant PCICR	\ Pin Change Interrupt Control Register
3B constant PCIFR	\ Pin Change Interrupt Flag Register
6B constant PCMSK0	\ Pin Change Mask Register 0

\ JTAG
51 constant OCDR	\ On-Chip Debug Related Register in I/O Memory

\ PLL
49 constant PLLCSR	\ PLL Status and Control register

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

\ SPI
4C constant SPCR	\ SPI Control Register
4E constant SPDR	\ SPI Data Register
4D constant SPSR	\ SPI Status Register

\ TIMER_COUNTER_0
43 constant GTCCR	\ General Timer/Counter Control Register
47 constant OCR0A	\ Timer/Counter0 Output Compare Register
48 constant OCR0B	\ Timer/Counter0 Output Compare Register
44 constant TCCR0A	\ Timer/Counter  Control Register A
45 constant TCCR0B	\ Timer/Counter Control Register B
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
8D constant OCR1CH	\ Timer/Counter1 Output Compare Register C High Byte
8C constant OCR1CL	\ Timer/Counter1 Output Compare Register C Low Byte
80 constant TCCR1A	\ Timer/Counter1 Control Register A
81 constant TCCR1B	\ Timer/Counter1 Control Register B
82 constant TCCR1C	\ Timer/Counter 1 Control Register C
85 constant TCNT1H	\ Timer/Counter1 High Byte
84 constant TCNT1L	\ Timer/Counter1 Low Byte
36 constant TIFR1	\ Timer/Counter1 Interrupt Flag register
6F constant TIMSK1	\ Timer/Counter1 Interrupt Mask Register

\ TIMER_COUNTER_2
B6 constant ASSR	\ Asynchronous Status Register
B3 constant OCR2A	\ Timer/Counter2 Output Compare Register A
B4 constant OCR2B	\ Timer/Counter2 Output Compare Register B
B0 constant TCCR2A	\ Timer/Counter2 Control Register A
B1 constant TCCR2B	\ Timer/Counter2 Control Register B
B2 constant TCNT2	\ Timer/Counter2
37 constant TIFR2	\ Timer/Counter Interrupt Flag Register
70 constant TIMSK2	\ Timer/Counter Interrupt Mask register

\ TIMER_COUNTER_3
97 constant ICR3H	\ Timer/Counter3 Input Capture Register High Byte
96 constant ICR3L	\ Timer/Counter3 Input Capture Register Low Byte
99 constant OCR3AH	\ Timer/Counter3 Output Compare Register A High Byte
98 constant OCR3AL	\ Timer/Counter3 Output Compare Register A Low Byte
9B constant OCR3BH	\ Timer/Counter3 Output Compare Register B High Byte
9A constant OCR3BL	\ Timer/Counter3 Output Compare Register B Low Byte
9D constant OCR3CH	\ Timer/Counter3 Output Compare Register B High Byte
9C constant OCR3CL	\ Timer/Counter3 Output Compare Register B Low Byte
90 constant TCCR3A	\ Timer/Counter3 Control Register A
91 constant TCCR3B	\ Timer/Counter3 Control Register B
92 constant TCCR3C	\ Timer/Counter 3 Control Register C
95 constant TCNT3H	\ Timer/Counter3 High Byte
94 constant TCNT3L	\ Timer/Counter3 Low Byte
38 constant TIFR3	\ Timer/Counter3 Interrupt Flag register
71 constant TIMSK3	\ Timer/Counter3 Interrupt Mask Register

\ TWI
BD constant TWAMR	\ TWI (Slave) Address Mask Register
BA constant TWAR	\ TWI (Slave) Address register
B8 constant TWBR	\ TWI Bit Rate register
BC constant TWCR	\ TWI Control Register
BB constant TWDR	\ TWI Data register
B9 constant TWSR	\ TWI Status Register

\ USART1
CD constant UBRR1H	\ USART Baud Rate Register High Byte
CC constant UBRR1L	\ USART Baud Rate Register Low Byte
C8 constant UCSR1A	\ USART Control and Status Register A
C9 constant UCSR1B	\ USART Control and Status Register B
CA constant UCSR1C	\ USART Control and Status Register C
CE constant UDR1	\ USART I/O Data Register

\ USB_DEVICE
E3 constant UDADDR	\ 
E0 constant UDCON	\ 
E5 constant UDFNUMH	\ 
E4 constant UDFNUML	\ 
E2 constant UDIEN	\ 
E1 constant UDINT	\ 
E6 constant UDMFN	\ 
F3 constant UEBCHX	\ 
F2 constant UEBCLX	\ 
EC constant UECFG0X	\ 
ED constant UECFG1X	\ 
EB constant UECONX	\ 
F1 constant UEDATX	\ 
F0 constant UEIENX	\ 
F4 constant UEINT	\ 
E8 constant UEINTX	\ 
E9 constant UENUM	\ 
EA constant UERST	\ 
EE constant UESTA0X	\ 
EF constant UESTA1X	\ 

\ USB_GLOBAL
D7 constant UHWCON	\ USB Hardware Configuration Register
D8 constant USBCON	\ USB General Control Register
DA constant USBINT	\ 
D9 constant USBSTA	\ 

\ WATCHDOG
60 constant WDTCSR	\ Watchdog Timer Control Register

\ Interrupts
002  constant INT0Addr \ External Interrupt Request 0
004  constant INT1Addr \ External Interrupt Request 1
006  constant INT2Addr \ External Interrupt Request 2
008  constant INT3Addr \ External Interrupt Request 3
00A  constant INT4Addr \ External Interrupt Request 4
00C  constant INT5Addr \ External Interrupt Request 5
00E  constant INT6Addr \ External Interrupt Request 6
010  constant INT7Addr \ External Interrupt Request 7
012  constant PCINT0Addr \ Pin Change Interrupt Request 0
014  constant USB_GENAddr \ USB General Interrupt Request
016  constant USB_COMAddr \ USB Endpoint/Pipe Interrupt Communication Reque
018  constant WDTAddr \ Watchdog Time-out Interrupt
01A  constant TIMER2_COMPAAddr \ Timer/Counter2 Compare Match A
01C  constant TIMER2_COMPBAddr \ Timer/Counter2 Compare Match B
01E  constant TIMER2_OVFAddr \ Timer/Counter2 Overflow
020  constant TIMER1_CAPTAddr \ Timer/Counter1 Capture Event
022  constant TIMER1_COMPAAddr \ Timer/Counter1 Compare Match A
024  constant TIMER1_COMPBAddr \ Timer/Counter1 Compare Match B
026  constant TIMER1_COMPCAddr \ Timer/Counter1 Compare Match C
028  constant TIMER1_OVFAddr \ Timer/Counter1 Overflow
02A  constant TIMER0_COMPAAddr \ Timer/Counter0 Compare Match A
02C  constant TIMER0_COMPBAddr \ Timer/Counter0 Compare Match B
02E  constant TIMER0_OVFAddr \ Timer/Counter0 Overflow
030  constant SPI_STCAddr \ SPI Serial Transfer Complete
032  constant USART1_RXAddr \ USART1, Rx Complete
034  constant USART1_UDREAddr \ USART1 Data register Empty
036  constant USART1_TXAddr \ USART1, Tx Complete
038  constant ANALOG_COMPAddr \ Analog Comparator
03A  constant ADCAddr \ ADC Conversion Complete
03C  constant EE_READYAddr \ EEPROM Ready
03E  constant TIMER3_CAPTAddr \ Timer/Counter3 Capture Event
040  constant TIMER3_COMPAAddr \ Timer/Counter3 Compare Match A
042  constant TIMER3_COMPBAddr \ Timer/Counter3 Compare Match B
044  constant TIMER3_COMPCAddr \ Timer/Counter3 Compare Match C
046  constant TIMER3_OVFAddr \ Timer/Counter3 Overflow
048  constant TWIAddr \ 2-wire Serial Interface        
04A  constant SPM_READYAddr \ Store Program Memory Read
