; Partname:  ATmega64
; generated automatically, no not edit

.if WANT_ANALOG_COMPARATOR == 1
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
	.dw 64
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
; ( -- addr ) System Constant
; R( -- )
; The ADC Control and Status register A
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
; The ADC Control and Status register B
VE_ADCSRB:
	.dw $ff06
	.db "ADCSRB"
	.dw VE_HEAD
	.set VE_HEAD=VE_ADCSRB
XT_ADCSRB:
	.dw PFA_DOVARIABLE
PFA_ADCSRB:
	.dw 142

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
	.dw 112
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
	.dw 116
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
	.dw 113
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
	.dw 115
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
	.dw 114

.endif
.if WANT_USART0 == 1
; ( -- addr ) System Constant
; R( -- )
; USART I/O Data Register
VE_UDR0:
	.dw $ff04
	.db "UDR0"
	.dw VE_HEAD
	.set VE_HEAD=VE_UDR0
XT_UDR0:
	.dw PFA_DOVARIABLE
PFA_UDR0:
	.dw 44
; ( -- addr ) System Constant
; R( -- )
; USART Control and Status Register A
VE_UCSR0A:
	.dw $ff06
	.db "UCSR0A"
	.dw VE_HEAD
	.set VE_HEAD=VE_UCSR0A
XT_UCSR0A:
	.dw PFA_DOVARIABLE
PFA_UCSR0A:
	.dw 43
; ( -- addr ) System Constant
; R( -- )
; USART Control and Status Register B
VE_UCSR0B:
	.dw $ff06
	.db "UCSR0B"
	.dw VE_HEAD
	.set VE_HEAD=VE_UCSR0B
XT_UCSR0B:
	.dw PFA_DOVARIABLE
PFA_UCSR0B:
	.dw 42
; ( -- addr ) System Constant
; R( -- )
; USART Control and Status Register C
VE_UCSR0C:
	.dw $ff06
	.db "UCSR0C"
	.dw VE_HEAD
	.set VE_HEAD=VE_UCSR0C
XT_UCSR0C:
	.dw PFA_DOVARIABLE
PFA_UCSR0C:
	.dw 149
; ( -- addr ) System Constant
; R( -- )
; USART Baud Rate Register Hight Byte
VE_UBRR0H:
	.dw $ff06
	.db "UBRR0H"
	.dw VE_HEAD
	.set VE_HEAD=VE_UBRR0H
XT_UBRR0H:
	.dw PFA_DOVARIABLE
PFA_UBRR0H:
	.dw 144
; ( -- addr ) System Constant
; R( -- )
; USART Baud Rate Register Low Byte
VE_UBRR0L:
	.dw $ff06
	.db "UBRR0L"
	.dw VE_HEAD
	.set VE_HEAD=VE_UBRR0L
XT_UBRR0L:
	.dw PFA_DOVARIABLE
PFA_UBRR0L:
	.dw 41

.endif
.if WANT_USART1 == 1
; ( -- addr ) System Constant
; R( -- )
; USART I/O Data Register
VE_UDR1:
	.dw $ff04
	.db "UDR1"
	.dw VE_HEAD
	.set VE_HEAD=VE_UDR1
XT_UDR1:
	.dw PFA_DOVARIABLE
PFA_UDR1:
	.dw 156
; ( -- addr ) System Constant
; R( -- )
; USART Control and Status Register A
VE_UCSR1A:
	.dw $ff06
	.db "UCSR1A"
	.dw VE_HEAD
	.set VE_HEAD=VE_UCSR1A
XT_UCSR1A:
	.dw PFA_DOVARIABLE
PFA_UCSR1A:
	.dw 155
; ( -- addr ) System Constant
; R( -- )
; USART Control and Status Register B
VE_UCSR1B:
	.dw $ff06
	.db "UCSR1B"
	.dw VE_HEAD
	.set VE_HEAD=VE_UCSR1B
XT_UCSR1B:
	.dw PFA_DOVARIABLE
PFA_UCSR1B:
	.dw 154
; ( -- addr ) System Constant
; R( -- )
; USART Control and Status Register C
VE_UCSR1C:
	.dw $ff06
	.db "UCSR1C"
	.dw VE_HEAD
	.set VE_HEAD=VE_UCSR1C
XT_UCSR1C:
	.dw PFA_DOVARIABLE
PFA_UCSR1C:
	.dw 157
; ( -- addr ) System Constant
; R( -- )
; USART Baud Rate Register Hight Byte
VE_UBRR1H:
	.dw $ff06
	.db "UBRR1H"
	.dw VE_HEAD
	.set VE_HEAD=VE_UBRR1H
XT_UBRR1H:
	.dw PFA_DOVARIABLE
PFA_UBRR1H:
	.dw 152
; ( -- addr ) System Constant
; R( -- )
; USART Baud Rate Register Low Byte
VE_UBRR1L:
	.dw $ff06
	.db "UBRR1L"
	.dw VE_HEAD
	.set VE_HEAD=VE_UBRR1L
XT_UBRR1L:
	.dw PFA_DOVARIABLE
PFA_UBRR1L:
	.dw 153

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
; MCU Control Register
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
; ( -- addr ) System Constant
; R( -- )
; External Memory Control Register A
VE_XMCRA:
	.dw $ff05
	.db "XMCRA",0
	.dw VE_HEAD
	.set VE_HEAD=VE_XMCRA
XT_XMCRA:
	.dw PFA_DOVARIABLE
PFA_XMCRA:
	.dw 109
; ( -- addr ) System Constant
; R( -- )
; External Memory Control Register B
VE_XMCRB:
	.dw $ff05
	.db "XMCRB",0
	.dw VE_HEAD
	.set VE_HEAD=VE_XMCRB
XT_XMCRB:
	.dw PFA_DOVARIABLE
PFA_XMCRB:
	.dw 108
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
	.dw 111
; ( -- addr ) System Constant
; R( -- )
; XTAL Divide Control Register
VE_XDIV:
	.dw $ff04
	.db "XDIV"
	.dw VE_HEAD
	.set VE_HEAD=VE_XDIV
XT_XDIV:
	.dw PFA_DOVARIABLE
PFA_XDIV:
	.dw 92

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
	.dw 104

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
	.dw 66

.endif
.if WANT_MISC == 1

.endif
.if WANT_EXTERNAL_INTERRUPT == 1
; ( -- addr ) System Constant
; R( -- )
; External Interrupt Control Register A
VE_EICRA:
	.dw $ff05
	.db "EICRA",0
	.dw VE_HEAD
	.set VE_HEAD=VE_EICRA
XT_EICRA:
	.dw PFA_DOVARIABLE
PFA_EICRA:
	.dw 106
; ( -- addr ) System Constant
; R( -- )
; External Interrupt Control Register B
VE_EICRB:
	.dw $ff05
	.db "EICRB",0
	.dw VE_HEAD
	.set VE_HEAD=VE_EICRB
XT_EICRB:
	.dw PFA_DOVARIABLE
PFA_EICRB:
	.dw 90
; ( -- addr ) System Constant
; R( -- )
; External Interrupt Mask Register
VE_EIMSK:
	.dw $ff05
	.db "EIMSK",0
	.dw VE_HEAD
	.set VE_HEAD=VE_EIMSK
XT_EIMSK:
	.dw PFA_DOVARIABLE
PFA_EIMSK:
	.dw 89
; ( -- addr ) System Constant
; R( -- )
; External Interrupt Flag Register
VE_EIFR:
	.dw $ff04
	.db "EIFR"
	.dw VE_HEAD
	.set VE_HEAD=VE_EIFR
XT_EIFR:
	.dw PFA_DOVARIABLE
PFA_EIFR:
	.dw 88

.endif
.if WANT_EEPROM == 1
; ( -- addr ) System Constant
; R( -- )
; EEPROM Read/Write Access  Bytes
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
.if WANT_PORTE == 1
; ( -- addr ) System Constant
; R( -- )
; Data Register, Port E
VE_PORTE:
	.dw $ff05
	.db "PORTE",0
	.dw VE_HEAD
	.set VE_HEAD=VE_PORTE
XT_PORTE:
	.dw PFA_DOVARIABLE
PFA_PORTE:
	.dw 35
; ( -- addr ) System Constant
; R( -- )
; Data Direction Register, Port E
VE_DDRE:
	.dw $ff04
	.db "DDRE"
	.dw VE_HEAD
	.set VE_HEAD=VE_DDRE
XT_DDRE:
	.dw PFA_DOVARIABLE
PFA_DDRE:
	.dw 34
; ( -- addr ) System Constant
; R( -- )
; Input Pins, Port E
VE_PINE:
	.dw $ff04
	.db "PINE"
	.dw VE_HEAD
	.set VE_HEAD=VE_PINE
XT_PINE:
	.dw PFA_DOVARIABLE
PFA_PINE:
	.dw 33

.endif
.if WANT_PORTF == 1
; ( -- addr ) System Constant
; R( -- )
; Data Register, Port F
VE_PORTF:
	.dw $ff05
	.db "PORTF",0
	.dw VE_HEAD
	.set VE_HEAD=VE_PORTF
XT_PORTF:
	.dw PFA_DOVARIABLE
PFA_PORTF:
	.dw 98
; ( -- addr ) System Constant
; R( -- )
; Data Direction Register, Port F
VE_DDRF:
	.dw $ff04
	.db "DDRF"
	.dw VE_HEAD
	.set VE_HEAD=VE_DDRF
XT_DDRF:
	.dw PFA_DOVARIABLE
PFA_DDRF:
	.dw 97
; ( -- addr ) System Constant
; R( -- )
; Input Pins, Port F
VE_PINF:
	.dw $ff04
	.db "PINF"
	.dw VE_HEAD
	.set VE_HEAD=VE_PINF
XT_PINF:
	.dw PFA_DOVARIABLE
PFA_PINF:
	.dw 32

.endif
.if WANT_PORTG == 1
; ( -- addr ) System Constant
; R( -- )
; Data Register, Port G
VE_PORTG:
	.dw $ff05
	.db "PORTG",0
	.dw VE_HEAD
	.set VE_HEAD=VE_PORTG
XT_PORTG:
	.dw PFA_DOVARIABLE
PFA_PORTG:
	.dw 101
; ( -- addr ) System Constant
; R( -- )
; Data Direction Register, Port G
VE_DDRG:
	.dw $ff04
	.db "DDRG"
	.dw VE_HEAD
	.set VE_HEAD=VE_DDRG
XT_DDRG:
	.dw PFA_DOVARIABLE
PFA_DDRG:
	.dw 100
; ( -- addr ) System Constant
; R( -- )
; Input Pins, Port G
VE_PING:
	.dw $ff04
	.db "PING"
	.dw VE_HEAD
	.set VE_HEAD=VE_PING
XT_PING:
	.dw PFA_DOVARIABLE
PFA_PING:
	.dw 99

.endif
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
	.dw 81
; ( -- addr ) System Constant
; R( -- )
; Asynchronus Status Register
VE_ASSR:
	.dw $ff04
	.db "ASSR"
	.dw VE_HEAD
	.set VE_HEAD=VE_ASSR
XT_ASSR:
	.dw PFA_DOVARIABLE
PFA_ASSR:
	.dw 80
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
	.dw 87
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
	.dw 86

.endif
.if WANT_TIMER_COUNTER_1 == 1
; ( -- addr ) System Constant
; R( -- )
; Extended Timer/Counter Interrupt Mask Register
VE_ETIMSK:
	.dw $ff06
	.db "ETIMSK"
	.dw VE_HEAD
	.set VE_HEAD=VE_ETIMSK
XT_ETIMSK:
	.dw PFA_DOVARIABLE
PFA_ETIMSK:
	.dw 125
; ( -- addr ) System Constant
; R( -- )
; Extended Timer/Counter Interrupt Flag register
VE_ETIFR:
	.dw $ff05
	.db "ETIFR",0
	.dw VE_HEAD
	.set VE_HEAD=VE_ETIFR
XT_ETIFR:
	.dw PFA_DOVARIABLE
PFA_ETIFR:
	.dw 124
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
; Timer/Counter1 Control Register C
VE_TCCR1C:
	.dw $ff06
	.db "TCCR1C"
	.dw VE_HEAD
	.set VE_HEAD=VE_TCCR1C
XT_TCCR1C:
	.dw PFA_DOVARIABLE
PFA_TCCR1C:
	.dw 122
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
; Timer/Counter1 Output Compare Register  Bytes
VE_OCR1C:
	.dw $ff05
	.db "OCR1C",0
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR1C
XT_OCR1C:
	.dw PFA_DOVARIABLE
PFA_OCR1C:
	.dw 120
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
.if WANT_TIMER_COUNTER_2 == 1
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter Control Register
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
; Timer/Counter Register
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
; Output Compare Register
VE_OCR2:
	.dw $ff04
	.db "OCR2"
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR2
XT_OCR2:
	.dw PFA_DOVARIABLE
PFA_OCR2:
	.dw 67

.endif
.if WANT_TIMER_COUNTER_3 == 1
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter3 Control Register A
VE_TCCR3A:
	.dw $ff06
	.db "TCCR3A"
	.dw VE_HEAD
	.set VE_HEAD=VE_TCCR3A
XT_TCCR3A:
	.dw PFA_DOVARIABLE
PFA_TCCR3A:
	.dw 139
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter3 Control Register B
VE_TCCR3B:
	.dw $ff06
	.db "TCCR3B"
	.dw VE_HEAD
	.set VE_HEAD=VE_TCCR3B
XT_TCCR3B:
	.dw PFA_DOVARIABLE
PFA_TCCR3B:
	.dw 138
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter3 Control Register C
VE_TCCR3C:
	.dw $ff06
	.db "TCCR3C"
	.dw VE_HEAD
	.set VE_HEAD=VE_TCCR3C
XT_TCCR3C:
	.dw PFA_DOVARIABLE
PFA_TCCR3C:
	.dw 140
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter3  Bytes
VE_TCNT3:
	.dw $ff05
	.db "TCNT3",0
	.dw VE_HEAD
	.set VE_HEAD=VE_TCNT3
XT_TCNT3:
	.dw PFA_DOVARIABLE
PFA_TCNT3:
	.dw 136
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter3 Output Compare Register A  Bytes
VE_OCR3A:
	.dw $ff05
	.db "OCR3A",0
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR3A
XT_OCR3A:
	.dw PFA_DOVARIABLE
PFA_OCR3A:
	.dw 134
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter3 Output Compare Register B  Bytes
VE_OCR3B:
	.dw $ff05
	.db "OCR3B",0
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR3B
XT_OCR3B:
	.dw PFA_DOVARIABLE
PFA_OCR3B:
	.dw 132
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter3 Output compare Register C  Bytes
VE_OCR3C:
	.dw $ff05
	.db "OCR3C",0
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR3C
XT_OCR3C:
	.dw PFA_DOVARIABLE
PFA_OCR3C:
	.dw 130
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter3 Input Capture Register  Bytes
VE_ICR3:
	.dw $ff04
	.db "ICR3"
	.dw VE_HEAD
	.set VE_HEAD=VE_ICR3
XT_ICR3:
	.dw PFA_DOVARIABLE
PFA_ICR3:
	.dw 128

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
