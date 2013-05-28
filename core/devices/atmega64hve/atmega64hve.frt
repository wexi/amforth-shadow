\ Partname: ATmega64HVE
\ Built using part description XML file version 1
\ generated automatically

hex

\ AD_CONVERTER
e2 constant ADCRA	\ ADC Control Register A
e3 constant ADCRB	\ ADC Control Register B
e4 constant ADCRC	\ ADC Control Register B
e5 constant ADCRD	\ ADC Control Register D
e6 constant ADCRE	\ ADC Control Register E
e7 constant ADIFR	\ ADC Interrupt Flag Register
e8 constant ADIMR	\ ADC Interrupt Mask Register
e0 constant ADSCSRA	\ ADC Synchronization Control and Status Register
e1 constant ADSCSRB	\ ADC Synchronization Control and Status Register
ed constant CADAC0	\ C-ADC Accumulated Conversion Result
ee constant CADAC1	\ C-ADC Accumulated Conversion Result
ef constant CADAC2	\ C-ADC Accumulated Conversion Result
f0 constant CADAC3	\ C-ADC Accumulated Conversion Result
ec constant CADICH	\ C-ADC Instantaneous Conversion Result
eb constant CADICL	\ C-ADC Instantaneous Conversion Result
ea constant CADRCLH	\ CC-ADC Regulator Current Comparator Threshold Level
e9 constant CADRCLL	\ CC-ADC Regulator Current Comparator Threshold Level
f3 constant VADAC0	\ V-ADC Accumulated Conversion Result
f4 constant VADAC1	\ V-ADC Accumulated Conversion Result
f5 constant VADAC2	\ V-ADC Accumulated Conversion Result
f6 constant VADAC3	\ V-ADC Accumulated Conversion Result
f2 constant VADICH	\ V-ADC Instantaneous Conversion Result
f1 constant VADICL	\ V-ADC Instantaneous Conversion Result

\ BANDGAP
d3 constant BGCRA	\ Band Gap Calibration Register A
d2 constant BGCRB	\ Band Gap Calibration Register B
d1 constant BGCSRA	\ Bandgap Control and Status Register A
d4 constant BGLR	\ Band Gap Lock Register

\ BOOT_LOAD
57 constant SPMCSR	\ Store Program Memory Control and Status Register

\ CPU
61 constant CLKPR	\ Clock Prescale Register
7E constant DIDR0	\ Digital Input Disable Register
3E constant GPIOR0	\ General Purpose IO Register 0
4A constant GPIOR1	\ General Purpose IO Register 1
4B constant GPIOR2	\ General Purpose IO Register 2
55 constant MCUCR	\ MCU Control Register
54 constant MCUSR	\ MCU Status Register
d8 constant PLLCSR	\ PLL Control and Status Register
64 constant PRR0	\ Power Reduction Register 0
53 constant SMCR	\ Sleep Mode Control Register
66 constant SOSCCALA	\ Slow Oscillator Calibration Register A
67 constant SOSCCALB	\ Oscillator Calibration Register B
5E constant SPH	\ Stack Pointer High
5D constant SPL	\ Stack Pointer Low
5F constant SREG	\ Status Register

\ EEPROM
42 constant EEARH	\ EEPROM Read/Write Access
41 constant EEARL	\ EEPROM Read/Write Access
3F constant EECR	\ EEPROM Control Register
40 constant EEDR	\ EEPROM Data Register

\ EXTERNAL_INTERRUPT
69 constant EICRA	\ External Interrupt Control Register 
3C constant EIFR	\ External Interrupt Flag Register
3D constant EIMSK	\ External Interrupt Mask Register
68 constant PCICR	\ Pin Change Interrupt Control Register
3B constant PCIFR	\ Pin Change Interrupt Flag Register
6B constant PCMSK0	\ Pin Change Enable Mask Register 0
6C constant PCMSK1	\ Pin Change Enable Mask Register 1

\ LINUART
c6 constant LINBRRH	\ LIN Baud Rate High Register
c5 constant LINBRRL	\ LIN Baud Rate Low Register
c4 constant LINBTR	\ LIN Bit Timing Register
c0 constant LINCR	\ LIN Control Register
cA constant LINDAT	\ LIN Data Register
c7 constant LINDLR	\ LIN Data Length Register
c2 constant LINENIR	\ LIN Enable Interrupt Register
c3 constant LINERR	\ LIN Error Register
c8 constant LINIDR	\ LIN Identifier Register
c9 constant LINSEL	\ LIN Data Buffer Selection Register
c1 constant LINSIR	\ LIN Status and Interrupt Register

\ PORTA
21 constant DDRA	\ Port A Data Direction Register
20 constant PINA	\ Port A Input Pins
22 constant PORTA	\ Port A Data Register

\ PORTB
24 constant DDRB	\ Port B Data Direction Register
dc constant PBOV	\ Port B Override
23 constant PINB	\ Port B Input Pins
25 constant PORTB	\ Port B Data Register

\ SPI
4c constant SPCR	\ SPI Control Register
4e constant SPDR	\ SPI Data Register
4d constant SPSR	\ SPI Status Register

\ TIMER_COUNTER_0
43 constant GTCCR	\ General Timer/Counter Control Register
48 constant OCR0A	\ Output Compare Register 0A 
49 constant OCR0B	\ Output Compare Register B 
44 constant TCCR0A	\ Timer/Counter 0 Control Register A
45 constant TCCR0B	\ Timer/Counter0 Control Register B
47 constant TCNT0H	\ Timer Counter 0 High Byte
46 constant TCNT0L	\ Timer Counter 0 Low Byte
35 constant TIFR0	\ Timer/Counter Interrupt Flag register
6E constant TIMSK0	\ Timer/Counter Interrupt Mask Register

\ TIMER_COUNTER_1
88 constant OCR1A	\ Output Compare Register 1A 
89 constant OCR1B	\ Output Compare Register B 
80 constant TCCR1A	\ Timer/Counter 1 Control Register A
81 constant TCCR1B	\ Timer/Counter1 Control Register B
85 constant TCNT1H	\ Timer Counter 1 High Byte
84 constant TCNT1L	\ Timer Counter 1 Low Byte
36 constant TIFR1	\ Timer/Counter Interrupt Flag register
6F constant TIMSK1	\ Timer/Counter Interrupt Mask Register

\ WAKEUP_TIMER
62 constant WUTCSR	\ Wake-up Timer Control and Status Register

\ WATCHDOG
63 constant WDTCLR	\ Watchdog Timer Configuration Lock Register
60 constant WDTCSR	\ Watchdog Timer Control Register

\ Interrupts
0002  constant INT0Addr \ External Interrupt 0
0004  constant PCINT0Addr \ Pin Change Interrupt 0
0006  constant PCINT1Addr \ Pin Change Interrupt 1
0008  constant WDTAddr \ Watchdog Timeout Interrupt
000a  constant WAKEUPAddr \ Wakeup Timer Overflow
000c  constant TIMER1_ICAddr \ Timer 1 Input capture
000e  constant TIMER1_COMPAAddr \ Timer 1 Compare Match A
0010  constant TIMER1_COMPBAddr \ Timer 1 Compare Match B
0012  constant TIMER1_OVFAddr \ Timer 1 overflow
0014  constant TIMER0_ICAddr \ Timer 0 Input Capture
0016  constant TIMER0_COMPAAddr \ Timer 0 Comapre Match A
0018  constant TIMER0_COMPBAddr \ Timer 0 Compare Match B
001a  constant TIMER0_OVFAddr \ Timer 0 Overflow
001c  constant LIN_STATUSAddr \ LIN Status Interrupt
001e  constant LIN_ERRORAddr \ LIN Error Interrupt
0020  constant SPI_STCAddr \ SPI Serial transfer complete
0022  constant VADC_CONVAddr \ Voltage ADC Instantaneous Conversion Complet
0024  constant VADC_ACCAddr \ Voltage ADC Accumulated Conversion Complete
0026  constant CADC_CONVAddr \ C-ADC Instantaneous Conversion Complete
0028  constant CADC_REG_CURAddr \ C-ADC Regular Current
002a  constant CADC_ACCAddr \ C-ADC Accumulated Conversion Complete
02c  constant EE_READYAddr \ EEPROM Ready
02e  constant SPMAddr \ SPM Ready
030  constant PLLAddr \ PLL Lock Change Interrupt
