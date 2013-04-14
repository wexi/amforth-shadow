; Partname:  ATmega16
; generated automatically, no not edit

.if WANT_TIMER_COUNTER_0 == 1
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter Control Register
VE_TCCR0:
	.dw $ff05
	.db "TCCR0",0
	.dw VE_HEAD
	.set VE_HEAD=VE_TCCR0
XT_TCCR0:
	.dw PFA_DOVARIABLE
PFA_TCCR0:
	.dw 83
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter Register
VE_TCNT0:
	.dw $ff05
	.db "TCNT0",0
	.dw VE_HEAD
	.set VE_HEAD=VE_TCNT0
XT_TCNT0:
	.dw PFA_DOVARIABLE
PFA_TCNT0:
	.dw 82
; ( -- addr ) System Constant
; R( -- )
; Output Compare Register
VE_OCR0:
	.dw $ff04
	.db "OCR0"
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR0
XT_OCR0:
	.dw PFA_DOVARIABLE
PFA_OCR0:
	.dw 92
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter Interrupt Mask Register
VE_TIMSK:
	.dw $ff05
	.db "TIMSK",0
	.dw VE_HEAD
	.set VE_HEAD=VE_TIMSK
XT_TIMSK:
	.dw PFA_DOVARIABLE
PFA_TIMSK:
	.dw 89
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter Interrupt Flag register
VE_TIFR:
	.dw $ff04
	.db "TIFR"
	.dw VE_HEAD
	.set VE_HEAD=VE_TIFR
XT_TIFR:
	.dw PFA_DOVARIABLE
PFA_TIFR:
	.dw 88
; ( -- addr ) System Constant
; R( -- )
; Special Function IO Register
VE_SFIOR:
	.dw $ff05
	.db "SFIOR",0
	.dw VE_HEAD
	.set VE_HEAD=VE_SFIOR
XT_SFIOR:
	.dw PFA_DOVARIABLE
PFA_SFIOR:
	.dw 80

.endif
.if WANT_TIMER_COUNTER_1 == 1
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter1 Control Register A
VE_TCCR1A:
	.dw $ff06
	.db "TCCR1A"
	.dw VE_HEAD
	.set VE_HEAD=VE_TCCR1A
XT_TCCR1A:
	.dw PFA_DOVARIABLE
PFA_TCCR1A:
	.dw 79
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter1 Control Register B
VE_TCCR1B:
	.dw $ff06
	.db "TCCR1B"
	.dw VE_HEAD
	.set VE_HEAD=VE_TCCR1B
XT_TCCR1B:
	.dw PFA_DOVARIABLE
PFA_TCCR1B:
	.dw 78
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter1  Bytes
VE_TCNT1:
	.dw $ff05
	.db "TCNT1",0
	.dw VE_HEAD
	.set VE_HEAD=VE_TCNT1
XT_TCNT1:
	.dw PFA_DOVARIABLE
PFA_TCNT1:
	.dw 76
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter1 Output Compare Register  Bytes
VE_OCR1A:
	.dw $ff05
	.db "OCR1A",0
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR1A
XT_OCR1A:
	.dw PFA_DOVARIABLE
PFA_OCR1A:
	.dw 74
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter1 Output Compare Register  Bytes
VE_OCR1B:
	.dw $ff05
	.db "OCR1B",0
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR1B
XT_OCR1B:
	.dw PFA_DOVARIABLE
PFA_OCR1B:
	.dw 72
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter1 Input Capture Register  Bytes
VE_ICR1:
	.dw $ff04
	.db "ICR1"
	.dw VE_HEAD
	.set VE_HEAD=VE_ICR1
XT_ICR1:
	.dw PFA_DOVARIABLE
PFA_ICR1:
	.dw 70

.endif
.if WANT_EXTERNAL_INTERRUPT == 1
; ( -- addr ) System Constant
; R( -- )
; General Interrupt Control Register
VE_GICR:
	.dw $ff04
	.db "GICR"
	.dw VE_HEAD
	.set VE_HEAD=VE_GICR
XT_GICR:
	.dw PFA_DOVARIABLE
PFA_GICR:
	.dw 91
; ( -- addr ) System Constant
; R( -- )
; General Interrupt Flag Register
VE_GIFR:
	.dw $ff04
	.db "GIFR"
	.dw VE_HEAD
	.set VE_HEAD=VE_GIFR
XT_GIFR:
	.dw PFA_DOVARIABLE
PFA_GIFR:
	.dw 90
; ( -- addr ) System Constant
; R( -- )
; General Interrupt Control Register
VE_MCUCR:
	.dw $ff05
	.db "MCUCR",0
	.dw VE_HEAD
	.set VE_HEAD=VE_MCUCR
XT_MCUCR:
	.dw PFA_DOVARIABLE
PFA_MCUCR:
	.dw 85
; ( -- addr ) System Constant
; R( -- )
; MCU Control And Status Register
VE_MCUCSR:
	.dw $ff06
	.db "MCUCSR"
	.dw VE_HEAD
	.set VE_HEAD=VE_MCUCSR
XT_MCUCSR:
	.dw PFA_DOVARIABLE
PFA_MCUCSR:
	.dw 84

.endif
.if WANT_EEPROM == 1
; ( -- addr ) System Constant
; R( -- )
; EEPROM Address Register  Bytes
VE_EEAR:
	.dw $ff04
	.db "EEAR"
	.dw VE_HEAD
	.set VE_HEAD=VE_EEAR
XT_EEAR:
	.dw PFA_DOVARIABLE
PFA_EEAR:
	.dw 62
; ( -- addr ) System Constant
; R( -- )
; EEPROM Data Register
VE_EEDR:
	.dw $ff04
	.db "EEDR"
	.dw VE_HEAD
	.set VE_HEAD=VE_EEDR
XT_EEDR:
	.dw PFA_DOVARIABLE
PFA_EEDR:
	.dw 61
; ( -- addr ) System Constant
; R( -- )
; EEPROM Control Register
VE_EECR:
	.dw $ff04
	.db "EECR"
	.dw VE_HEAD
	.set VE_HEAD=VE_EECR
XT_EECR:
	.dw PFA_DOVARIABLE
PFA_EECR:
	.dw 60

.endif
.if WANT_CPU == 1
; ( -- addr ) System Constant
; R( -- )
; Status Register
VE_SREG:
	.dw $ff04
	.db "SREG"
	.dw VE_HEAD
	.set VE_HEAD=VE_SREG
XT_SREG:
	.dw PFA_DOVARIABLE
PFA_SREG:
	.dw 95
; ( -- addr ) System Constant
; R( -- )
; Stack Pointer 
VE_SP:
	.dw $ff02
	.db "SP"
	.dw VE_HEAD
	.set VE_HEAD=VE_SP
XT_SP:
	.dw PFA_DOVARIABLE
PFA_SP:
	.dw 93
; ( -- addr ) System Constant
; R( -- )
; Oscillator Calibration Value
VE_OSCCAL:
	.dw $ff06
	.db "OSCCAL"
	.dw VE_HEAD
	.set VE_HEAD=VE_OSCCAL
XT_OSCCAL:
	.dw PFA_DOVARIABLE
PFA_OSCCAL:
	.dw 81

.endif
.if WANT_TIMER_COUNTER_2 == 1
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter2 Control Register
VE_TCCR2:
	.dw $ff05
	.db "TCCR2",0
	.dw VE_HEAD
	.set VE_HEAD=VE_TCCR2
XT_TCCR2:
	.dw PFA_DOVARIABLE
PFA_TCCR2:
	.dw 69
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter2
VE_TCNT2:
	.dw $ff05
	.db "TCNT2",0
	.dw VE_HEAD
	.set VE_HEAD=VE_TCNT2
XT_TCNT2:
	.dw PFA_DOVARIABLE
PFA_TCNT2:
	.dw 68
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter2 Output Compare Register
VE_OCR2:
	.dw $ff04
	.db "OCR2"
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR2
XT_OCR2:
	.dw PFA_DOVARIABLE
PFA_OCR2:
	.dw 67
; ( -- addr ) System Constant
; R( -- )
; Asynchronous Status Register
VE_ASSR:
	.dw $ff04
	.db "ASSR"
	.dw VE_HEAD
	.set VE_HEAD=VE_ASSR
XT_ASSR:
	.dw PFA_DOVARIABLE
PFA_ASSR:
	.dw 66

.endif
.if WANT_SPI == 1
; ( -- addr ) System Constant
; R( -- )
; SPI Data Register
VE_SPDR:
	.dw $ff04
	.db "SPDR"
	.dw VE_HEAD
	.set VE_HEAD=VE_SPDR
XT_SPDR:
	.dw PFA_DOVARIABLE
PFA_SPDR:
	.dw 47
; ( -- addr ) System Constant
; R( -- )
; SPI Status Register
VE_SPSR:
	.dw $ff04
	.db "SPSR"
	.dw VE_HEAD
	.set VE_HEAD=VE_SPSR
XT_SPSR:
	.dw PFA_DOVARIABLE
PFA_SPSR:
	.dw 46
; ( -- addr ) System Constant
; R( -- )
; SPI Control Register
VE_SPCR:
	.dw $ff04
	.db "SPCR"
	.dw VE_HEAD
	.set VE_HEAD=VE_SPCR
XT_SPCR:
	.dw PFA_DOVARIABLE
PFA_SPCR:
	.dw 45

.endif
.if WANT_USART == 1
; ( -- addr ) System Constant
; R( -- )
; USART I/O Data Register
VE_UDR:
	.dw $ff03
	.db "UDR",0
	.dw VE_HEAD
	.set VE_HEAD=VE_UDR
XT_UDR:
	.dw PFA_DOVARIABLE
PFA_UDR:
	.dw 44
; ( -- addr ) System Constant
; R( -- )
; USART Control and Status Register A
VE_UCSRA:
	.dw $ff05
	.db "UCSRA",0
	.dw VE_HEAD
	.set VE_HEAD=VE_UCSRA
XT_UCSRA:
	.dw PFA_DOVARIABLE
PFA_UCSRA:
	.dw 43
; ( -- addr ) System Constant
; R( -- )
; USART Control and Status Register B
VE_UCSRB:
	.dw $ff05
	.db "UCSRB",0
	.dw VE_HEAD
	.set VE_HEAD=VE_UCSRB
XT_UCSRB:
	.dw PFA_DOVARIABLE
PFA_UCSRB:
	.dw 42
; ( -- addr ) System Constant
; R( -- )
; USART Control and Status Register C
VE_UCSRC:
	.dw $ff05
	.db "UCSRC",0
	.dw VE_HEAD
	.set VE_HEAD=VE_UCSRC
XT_UCSRC:
	.dw PFA_DOVARIABLE
PFA_UCSRC:
	.dw 64
; ( -- addr ) System Constant
; R( -- )
; USART Baud Rate Register Hight Byte
VE_UBRRH:
	.dw $ff05
	.db "UBRRH",0
	.dw VE_HEAD
	.set VE_HEAD=VE_UBRRH
XT_UBRRH:
	.dw PFA_DOVARIABLE
PFA_UBRRH:
	.dw 64
; ( -- addr ) System Constant
; R( -- )
; USART Baud Rate Register Low Byte
VE_UBRRL:
	.dw $ff05
	.db "UBRRL",0
	.dw VE_HEAD
	.set VE_HEAD=VE_UBRRL
XT_UBRRL:
	.dw PFA_DOVARIABLE
PFA_UBRRL:
	.dw 41

.endif
.if WANT_TWI == 1
; ( -- addr ) System Constant
; R( -- )
; TWI Bit Rate register
VE_TWBR:
	.dw $ff04
	.db "TWBR"
	.dw VE_HEAD
	.set VE_HEAD=VE_TWBR
XT_TWBR:
	.dw PFA_DOVARIABLE
PFA_TWBR:
	.dw 32
; ( -- addr ) System Constant
; R( -- )
; TWI Control Register
VE_TWCR:
	.dw $ff04
	.db "TWCR"
	.dw VE_HEAD
	.set VE_HEAD=VE_TWCR
XT_TWCR:
	.dw PFA_DOVARIABLE
PFA_TWCR:
	.dw 86
; ( -- addr ) System Constant
; R( -- )
; TWI Status Register
VE_TWSR:
	.dw $ff04
	.db "TWSR"
	.dw VE_HEAD
	.set VE_HEAD=VE_TWSR
XT_TWSR:
	.dw PFA_DOVARIABLE
PFA_TWSR:
	.dw 33
; ( -- addr ) System Constant
; R( -- )
; TWI Data register
VE_TWDR:
	.dw $ff04
	.db "TWDR"
	.dw VE_HEAD
	.set VE_HEAD=VE_TWDR
XT_TWDR:
	.dw PFA_DOVARIABLE
PFA_TWDR:
	.dw 35
; ( -- addr ) System Constant
; R( -- )
; TWI (Slave) Address register
VE_TWAR:
	.dw $ff04
	.db "TWAR"
	.dw VE_HEAD
	.set VE_HEAD=VE_TWAR
XT_TWAR:
	.dw PFA_DOVARIABLE
PFA_TWAR:
	.dw 34

.endif
.if WANT_ANALOG_COMPARATOR == 1
; ( -- addr ) System Constant
; R( -- )
; Analog Comparator Control And Status Register
VE_ACSR:
	.dw $ff04
	.db "ACSR"
	.dw VE_HEAD
	.set VE_HEAD=VE_ACSR
XT_ACSR:
	.dw PFA_DOVARIABLE
PFA_ACSR:
	.dw 40

.endif
.if WANT_AD_CONVERTER == 1
; ( -- addr ) System Constant
; R( -- )
; The ADC multiplexer Selection Register
VE_ADMUX:
	.dw $ff05
	.db "ADMUX",0
	.dw VE_HEAD
	.set VE_HEAD=VE_ADMUX
XT_ADMUX:
	.dw PFA_DOVARIABLE
PFA_ADMUX:
	.dw 39
; ( -- addr ) System Constant
; R( -- )
; The ADC Control and Status register
VE_ADCSRA:
	.dw $ff06
	.db "ADCSRA"
	.dw VE_HEAD
	.set VE_HEAD=VE_ADCSRA
XT_ADCSRA:
	.dw PFA_DOVARIABLE
PFA_ADCSRA:
	.dw 38
; ( -- addr ) System Constant
; R( -- )
; ADC Data Register  Bytes
VE_ADC:
	.dw $ff03
	.db "ADC",0
	.dw VE_HEAD
	.set VE_HEAD=VE_ADC
XT_ADC:
	.dw PFA_DOVARIABLE
PFA_ADC:
	.dw 36

.endif
.if WANT_JTAG == 1
; ( -- addr ) System Constant
; R( -- )
; On-Chip Debug Related Register in I/O Memory
VE_OCDR:
	.dw $ff04
	.db "OCDR"
	.dw VE_HEAD
	.set VE_HEAD=VE_OCDR
XT_OCDR:
	.dw PFA_DOVARIABLE
PFA_OCDR:
	.dw 81

.endif
.if WANT_BOOT_LOAD == 1
; ( -- addr ) System Constant
; R( -- )
; Store Program Memory Control Register
VE_SPMCSR:
	.dw $ff06
	.db "SPMCSR"
	.dw VE_HEAD
	.set VE_HEAD=VE_SPMCSR
XT_SPMCSR:
	.dw PFA_DOVARIABLE
PFA_SPMCSR:
	.dw 87

.endif
.if WANT_PORTA == 1
; ( -- addr ) System Constant
; R( -- )
; Port A Data Register
VE_PORTA:
	.dw $ff05
	.db "PORTA",0
	.dw VE_HEAD
	.set VE_HEAD=VE_PORTA
XT_PORTA:
	.dw PFA_DOVARIABLE
PFA_PORTA:
	.dw 59
; ( -- addr ) System Constant
; R( -- )
; Port A Data Direction Register
VE_DDRA:
	.dw $ff04
	.db "DDRA"
	.dw VE_HEAD
	.set VE_HEAD=VE_DDRA
XT_DDRA:
	.dw PFA_DOVARIABLE
PFA_DDRA:
	.dw 58
; ( -- addr ) System Constant
; R( -- )
; Port A Input Pins
VE_PINA:
	.dw $ff04
	.db "PINA"
	.dw VE_HEAD
	.set VE_HEAD=VE_PINA
XT_PINA:
	.dw PFA_DOVARIABLE
PFA_PINA:
	.dw 57

.endif
.if WANT_PORTB == 1
; ( -- addr ) System Constant
; R( -- )
; Port B Data Register
VE_PORTB:
	.dw $ff05
	.db "PORTB",0
	.dw VE_HEAD
	.set VE_HEAD=VE_PORTB
XT_PORTB:
	.dw PFA_DOVARIABLE
PFA_PORTB:
	.dw 56
; ( -- addr ) System Constant
; R( -- )
; Port B Data Direction Register
VE_DDRB:
	.dw $ff04
	.db "DDRB"
	.dw VE_HEAD
	.set VE_HEAD=VE_DDRB
XT_DDRB:
	.dw PFA_DOVARIABLE
PFA_DDRB:
	.dw 55
; ( -- addr ) System Constant
; R( -- )
; Port B Input Pins
VE_PINB:
	.dw $ff04
	.db "PINB"
	.dw VE_HEAD
	.set VE_HEAD=VE_PINB
XT_PINB:
	.dw PFA_DOVARIABLE
PFA_PINB:
	.dw 54

.endif
.if WANT_PORTC == 1
; ( -- addr ) System Constant
; R( -- )
; Port C Data Register
VE_PORTC:
	.dw $ff05
	.db "PORTC",0
	.dw VE_HEAD
	.set VE_HEAD=VE_PORTC
XT_PORTC:
	.dw PFA_DOVARIABLE
PFA_PORTC:
	.dw 53
; ( -- addr ) System Constant
; R( -- )
; Port C Data Direction Register
VE_DDRC:
	.dw $ff04
	.db "DDRC"
	.dw VE_HEAD
	.set VE_HEAD=VE_DDRC
XT_DDRC:
	.dw PFA_DOVARIABLE
PFA_DDRC:
	.dw 52
; ( -- addr ) System Constant
; R( -- )
; Port C Input Pins
VE_PINC:
	.dw $ff04
	.db "PINC"
	.dw VE_HEAD
	.set VE_HEAD=VE_PINC
XT_PINC:
	.dw PFA_DOVARIABLE
PFA_PINC:
	.dw 51

.endif
.if WANT_PORTD == 1
; ( -- addr ) System Constant
; R( -- )
; Port D Data Register
VE_PORTD:
	.dw $ff05
	.db "PORTD",0
	.dw VE_HEAD
	.set VE_HEAD=VE_PORTD
XT_PORTD:
	.dw PFA_DOVARIABLE
PFA_PORTD:
	.dw 50
; ( -- addr ) System Constant
; R( -- )
; Port D Data Direction Register
VE_DDRD:
	.dw $ff04
	.db "DDRD"
	.dw VE_HEAD
	.set VE_HEAD=VE_DDRD
XT_DDRD:
	.dw PFA_DOVARIABLE
PFA_DDRD:
	.dw 49
; ( -- addr ) System Constant
; R( -- )
; Port D Input Pins
VE_PIND:
	.dw $ff04
	.db "PIND"
	.dw VE_HEAD
	.set VE_HEAD=VE_PIND
XT_PIND:
	.dw PFA_DOVARIABLE
PFA_PIND:
	.dw 48

.endif
.if WANT_WATCHDOG == 1
; ( -- addr ) System Constant
; R( -- )
; Watchdog Timer Control Register
VE_WDTCR:
	.dw $ff05
	.db "WDTCR",0
	.dw VE_HEAD
	.set VE_HEAD=VE_WDTCR
XT_WDTCR:
	.dw PFA_DOVARIABLE
PFA_WDTCR:
	.dw 65

.endif
