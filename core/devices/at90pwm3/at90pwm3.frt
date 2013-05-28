\ Partname: AT90PWM3
\ Built using part description XML file version 179
\ generated automatically

hex

\ AD_CONVERTER
79 constant ADCH	\ ADC Data Register High Byte
78 constant ADCL	\ ADC Data Register Low Byte
7A constant ADCSRA	\ The ADC Control and Status register
7B constant ADCSRB	\ ADC Control and Status Register B
7C constant ADMUX	\ The ADC multiplexer Selection Register
76 constant AMP0CSR	\ 
77 constant AMP1CSR	\ 
7E constant DIDR0	\ Digital Input Disable Register 0
7F constant DIDR1	\ Digital Input Disable Register 0

\ ANALOG_COMPARATOR
AD constant AC0CON	\ Analog Comparator 0 Control Register
AE constant AC1CON	\ Analog Comparator 1 Control Register
AF constant AC2CON	\ Analog Comparator 2 Control Register
50 constant ACSR	\ Analog Comparator Status Register

\ BOOT_LOAD
57 constant SPMCSR	\ Store Program Memory Control Register

\ CPU
61 constant CLKPR	\ 
3E constant GPIOR0	\ General Purpose IO Register 0
39 constant GPIOR1	\ General Purpose IO Register 1
3A constant GPIOR2	\ General Purpose IO Register 2
3B constant GPIOR3	\ General Purpose IO Register 3
55 constant MCUCR	\ MCU Control Register
54 constant MCUSR	\ MCU Status Register
66 constant OSCCAL	\ Oscillator Calibration Value
49 constant PLLCSR	\ PLL Control And Status Register
64 constant PRR	\ Power Reduction Register
53 constant SMCR	\ Sleep Mode Control Register
5E constant SPH	\ Stack Pointer High
5D constant SPL	\ Stack Pointer Low
5F constant SREG	\ Status Register

\ DA_CONVERTER
AC constant DACH	\ DAC Data Register High Byte
AB constant DACL	\ DAC Data Register Low Byte
AA constant DACON	\ DAC Control Register

\ EEPROM
42 constant EEARH	\ EEPROM Read/Write Access High Byte
41 constant EEARL	\ EEPROM Read/Write Access Low Byte
3F constant EECR	\ EEPROM Control Register
40 constant EEDR	\ EEPROM Data Register

\ EUSART
C8 constant EUCSRA	\ EUSART Control and Status Register A
C9 constant EUCSRB	\ EUSART Control Register B
CA constant EUCSRC	\ EUSART Status Register C
CE constant EUDR	\ EUSART I/O Data Register
CD constant MUBRRH	\ Manchester Receiver Baud Rate Register High Byte
CC constant MUBRRL	\ Manchester Receiver Baud Rate Register Low Byte

\ EXTERNAL_INTERRUPT
69 constant EICRA	\ External Interrupt Control Register A
3C constant EIFR	\ External Interrupt Flag Register
3D constant EIMSK	\ External Interrupt Mask Register

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
2D constant DDRE	\ Port E Data Direction Register
2C constant PINE	\ Port E Input Pins
2E constant PORTE	\ Port E Data Register

\ PSC0
D5 constant OCR0RAH	\ Output Compare RA Register High
D4 constant OCR0RAL	\ Output Compare RA Register Low
D9 constant OCR0RBH	\ Output Compare RB Register High
D8 constant OCR0RBL	\ Output Compare RB Register Low
D3 constant OCR0SAH	\ Output Compare SA Register High
D2 constant OCR0SAL	\ Output Compare SA Register Low
D7 constant OCR0SBH	\ Output Compare SB Register High
D6 constant OCR0SBL	\ Output Compare SB Register Low
DA constant PCNF0	\ PSC 0 Configuration Register
DB constant PCTL0	\ PSC 0 Control Register
DC constant PFRC0A	\ PSC 0 Input A Control
DD constant PFRC0B	\ PSC 0 Input B Control
DF constant PICR0H	\ PSC 0 Input Capture Register High
DE constant PICR0L	\ PSC 0 Input Capture Register Low
A0 constant PIFR0	\ PSC0 Interrupt Flag Register
A1 constant PIM0	\ PSC0 Interrupt Mask Register
D0 constant PSOC0	\ PSC0 Synchro and Output Configuration

\ PSC1
E5 constant OCR1RAH	\ Output Compare RA Register High
E4 constant OCR1RAL	\ Output Compare RA Register Low
E9 constant OCR1RBH	\ Output Compare RB Register High
E8 constant OCR1RBL	\ Output Compare RB Register Low
E3 constant OCR1SAH	\ Output Compare SA Register High
E2 constant OCR1SAL	\ Output Compare SA Register Low
E7 constant OCR1SBH	\ Output Compare SB Register High
E6 constant OCR1SBL	\ Output Compare SB Register Low
EA constant PCNF1	\ PSC 1 Configuration Register
EB constant PCTL1	\ PSC 1 Control Register
EC constant PFRC1A	\ PSC 1 Input B Control
ED constant PFRC1B	\ PSC 1 Input B Control
EF constant PICR1H	\ PSC 1 Input Capture Register High
EE constant PICR1L	\ PSC 1 Input Capture Register Low
A2 constant PIFR1	\ PSC1 Interrupt Flag Register
A3 constant PIM1	\ PSC1 Interrupt Mask Register
E0 constant PSOC1	\ PSC1 Synchro and Output Configuration

\ PSC2
F5 constant OCR2RAH	\ Output Compare RA Register High
F4 constant OCR2RAL	\ Output Compare RA Register Low
F9 constant OCR2RBH	\ Output Compare RB Register High
F8 constant OCR2RBL	\ Output Compare RB Register Low
F3 constant OCR2SAH	\ Output Compare SA Register High
F2 constant OCR2SAL	\ Output Compare SA Register Low
F7 constant OCR2SBH	\ Output Compare SB Register High
F6 constant OCR2SBL	\ Output Compare SB Register Low
FA constant PCNF2	\ PSC 2 Configuration Register
FB constant PCTL2	\ PSC 2 Control Register
FC constant PFRC2A	\ PSC 2 Input B Control
FD constant PFRC2B	\ PSC 2 Input B Control
FF constant PICR2H	\ PSC 2 Input Capture Register High
FE constant PICR2L	\ PSC 2 Input Capture Register Low
A4 constant PIFR2	\ PSC2 Interrupt Flag Register
A5 constant PIM2	\ PSC2 Interrupt Mask Register
F1 constant POM2	\ PSC 2 Output Matrix
F0 constant PSOC2	\ PSC2 Synchro and Output Configuration

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
89 constant OCR1AH	\ Timer/Counter1 Output Compare Register High Byte
88 constant OCR1AL	\ Timer/Counter1 Output Compare Register Low Byte
8B constant OCR1BH	\ Timer/Counter1 Output Compare Register High Byte
8A constant OCR1BL	\ Timer/Counter1 Output Compare Register Low Byte
80 constant TCCR1A	\ Timer/Counter1 Control Register A
81 constant TCCR1B	\ Timer/Counter1 Control Register B
82 constant TCCR1C	\ Timer/Counter1 Control Register C
85 constant TCNT1H	\ Timer/Counter1 High Byte
84 constant TCNT1L	\ Timer/Counter1 Low Byte
36 constant TIFR1	\ Timer/Counter Interrupt Flag register
6F constant TIMSK1	\ Timer/Counter Interrupt Mask Register

\ USART
C5 constant UBRRH	\ USART Baud Rate Register High Byte
C4 constant UBRRL	\ USART Baud Rate Register Low Byte
C0 constant UCSRA	\ USART Control and Status register A
C1 constant UCSRB	\ USART Control an Status register B
C2 constant UCSRC	\ USART Control an Status register C
C6 constant UDR	\ USART I/O Data Register

\ WATCHDOG
60 constant WDTCSR	\ Watchdog Timer Control Register

\ Interrupts
0001  constant PSC2_CAPTAddr \ PSC2 Capture Event
0002  constant PSC2_ECAddr \ PSC2 End Cycle
0003  constant PSC1_CAPTAddr \ PSC1 Capture Event
0004  constant PSC1_ECAddr \ PSC1 End Cycle
0005  constant PSC0_CAPTAddr \ PSC0 Capture Event
0006  constant PSC0_ECAddr \ PSC0 End Cycle
0007  constant ANALOG_COMP_0Addr \ Analog Comparator 0
0008  constant ANALOG_COMP_1Addr \ Analog Comparator 1
0009  constant ANALOG_COMP_2Addr \ Analog Comparator 2
000A  constant INT0Addr \ External Interrupt Request 0
000B  constant TIMER1_CAPTAddr \ Timer/Counter1 Capture Event
000C  constant TIMER1_COMPAAddr \ Timer/Counter1 Compare Match A
000D  constant TIMER1_COMPBAddr \ Timer/Counter Compare Match B
000E  constant RESERVED15Addr \ 
000F  constant TIMER1_OVFAddr \ Timer/Counter1 Overflow
0010  constant TIMER0_COMP_AAddr \ Timer/Counter0 Compare Match A
0011  constant TIMER0_OVFAddr \ Timer/Counter0 Overflow
0012  constant ADCAddr \ ADC Conversion Complete
0013  constant INT1Addr \ External Interrupt Request 1
0014  constant SPI_STCAddr \ SPI Serial Transfer Complete
0015  constant USART_RXAddr \ USART, Rx Complete
0016  constant USART_UDREAddr \ USART Data Register Empty
0017  constant USART_TXAddr \ USART, Tx Complete
0018  constant INT2Addr \ External Interrupt Request 2
0019  constant WDTAddr \ Watchdog Timeout Interrupt
001A  constant EE_READYAddr \ EEPROM Ready
001B  constant TIMER0_COMPBAddr \ Timer Counter 0 Compare Match B
001C  constant INT3Addr \ External Interrupt Request 3
001D  constant RESERVED30Addr \ 
001E  constant RESERVED31Addr \ 
001F  constant SPM_READYAddr \ Store Program Memory Read
