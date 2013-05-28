\ Partname: ATmega8HVA
\ Built using part description XML file version 1
\ generated automatically

hex

\ AD_CONVERTER
79 constant VADCH	\ VADC Data Register High Byte
78 constant VADCL	\ VADC Data Register Low Byte
7A constant VADCSR	\ The VADC Control and Status register
7C constant VADMUX	\ The VADC multiplexer Selection Register

\ BANDGAP
D0 constant BGCCR	\ Bandgap Calibration Register
D1 constant BGCRR	\ Bandgap Calibration of Resistor Ladder

\ BATTERY_PROTECTION
F9 constant BPCHCD	\ Battery Protection Charge-High-current Detection Level Register
F7 constant BPCOCD	\ Battery Protection Charge-Over-current Detection Level Register
FD constant BPCR	\ Battery Protection Control Register
F8 constant BPDHCD	\ Battery Protection Discharge-High-current Detection Level Register
F6 constant BPDOCD	\ Battery Protection Discharge-Over-current Detection Level Register
FC constant BPHCTR	\ Battery Protection Short-current Timing Register
F3 constant BPIFR	\ Battery Protection Interrupt Flag Register
F2 constant BPIMSK	\ Battery Protection Interrupt Mask Register
FB constant BPOCTR	\ Battery Protection Over-current Timing Register
FE constant BPPLR	\ Battery Protection Parameter Lock Register
F5 constant BPSCD	\ Battery Protection Short-Circuit Detection Level Register
FA constant BPSCTR	\ Battery Protection Short-current Timing Register

\ BOOT_LOAD
57 constant SPMCSR	\ Store Program Memory Control and Status Register

\ COULOMB_COUNTER
E0 constant CADAC0	\ ADC Accumulate Current
E1 constant CADAC1	\ ADC Accumulate Current
E2 constant CADAC2	\ ADC Accumulate Current
E3 constant CADAC3	\ ADC Accumulate Current
E4 constant CADCSRA	\ CC-ADC Control and Status Register A
E5 constant CADCSRB	\ CC-ADC Control and Status Register B
E9 constant CADICH	\ CC-ADC Instantaneous Current
E8 constant CADICL	\ CC-ADC Instantaneous Current
E6 constant CADRC	\ CC-ADC Regular Current

\ CPU
61 constant CLKPR	\ Clock Prescale Register
7E constant DIDR0	\ Digital Input Disable Register
66 constant FOSCCAL	\ Fast Oscillator Calibration Value
3E constant GPIOR0	\ General Purpose IO Register 0
4A constant GPIOR1	\ General Purpose IO Register 1
4B constant GPIOR2	\ General Purpose IO Register 2
55 constant MCUCR	\ MCU Control Register
54 constant MCUSR	\ MCU Status Register
37 constant OSICSR	\ Oscillator Sampling Interface Control and Status Register
64 constant PRR0	\ Power Reduction Register 0
53 constant SMCR	\ Sleep Mode Control Register
5E constant SPH	\ Stack Pointer High
5D constant SPL	\ Stack Pointer Low
5F constant SREG	\ Status Register

\ EEPROM
41 constant EEAR	\ EEPROM Read/Write Access
3F constant EECR	\ EEPROM Control Register
40 constant EEDR	\ EEPROM Data Register

\ EXTERNAL_INTERRUPT
69 constant EICRA	\ External Interrupt Control Register 
3C constant EIFR	\ External Interrupt Flag Register
3D constant EIMSK	\ External Interrupt Mask Register

\ FET
F0 constant FCSR	\ FET Control and Status Register

\ PORTA
21 constant DDRA	\ Port A Data Direction Register
20 constant PINA	\ Port A Input Pins
22 constant PORTA	\ Port A Data Register

\ PORTB
24 constant DDRB	\ Data Direction Register, Port B
23 constant PINB	\ Input Pins, Port B
25 constant PORTB	\ Data Register, Port B

\ PORTC
26 constant PINC	\ Port C Input Pins
28 constant PORTC	\ Port C Data Register

\ SPI
4c constant SPCR	\ SPI Control Register
4e constant SPDR	\ SPI Data Register
4d constant SPSR	\ SPI Status Register

\ TIMER_COUNTER_0
48 constant OCR0A	\ Output compare Register A
49 constant OCR0B	\ Output compare Register B
44 constant TCCR0A	\ Timer/Counter0 Control Register
45 constant TCCR0B	\ Timer/Counter0 Control Register
47 constant TCNT0H	\ Timer Counter 0 High Byte
46 constant TCNT0L	\ Timer Counter 0 Low Byte
35 constant TIFR0	\ Timer/Counter Interrupt Flag register
6E constant TIMSK0	\ Timer/Counter Interrupt Mask Register

\ TIMER_COUNTER_1
43 constant GTCCR	\ General Timer/Counter Control Register
88 constant OCR1A	\ Output Compare Register 1A 
89 constant OCR1B	\ Output Compare Register B 
80 constant TCCR1A	\ Timer/Counter 1 Control Register A
81 constant TCCR1B	\ Timer/Counter1 Control Register B
85 constant TCNT1H	\ Timer Counter 1 High Byte
84 constant TCNT1L	\ Timer Counter 1 Low Byte
36 constant TIFR1	\ Timer/Counter Interrupt Flag register
6F constant TIMSK1	\ Timer/Counter Interrupt Mask Register

\ VOLTAGE_REGULATOR
C8 constant ROCR	\ Regulator Operating Condition Register

\ WATCHDOG
60 constant WDTCSR	\ Watchdog Timer Control Register

\ Interrupts
0001  constant BPINTAddr \ Battery Protection Interrupt
0002  constant VREGMONAddr \ Voltage regulator monitor interrupt
0003  constant INT0Addr \ External Interrupt Request 0
0004  constant INT1Addr \ External Interrupt Request 1
0005  constant INT2Addr \ External Interrupt Request 2
0006  constant WDTAddr \ Watchdog Timeout Interrupt
0007  constant TIMER1_ICAddr \ Timer 1 Input capture
0008  constant TIMER1_COMPAAddr \ Timer 1 Compare Match A
0009  constant TIMER1_COMPBAddr \ Timer 1 Compare Match B
000A  constant TIMER1_OVFAddr \ Timer 1 overflow
000B  constant TIMER0_ICAddr \ Timer 0 Input Capture
000C  constant TIMER0_COMPAAddr \ Timer 0 Comapre Match A
000D  constant TIMER0_COMPBAddr \ Timer 0 Compare Match B
000E  constant TIMER0_OVFAddr \ Timer 0 Overflow
000F  constant SPI;STCAddr \ SPI Serial transfer complete
0010  constant VADCAddr \ Voltage ADC Conversion Complete
0011  constant CCADC_CONVAddr \ Coulomb Counter ADC Conversion Complete
0012  constant CCADC_REG_CURAddr \ Coloumb Counter ADC Regular Current
0013  constant CCADC_ACCAddr \ Coloumb Counter ADC Accumulator
014  constant EE_READYAddr \ EEPROM Ready
