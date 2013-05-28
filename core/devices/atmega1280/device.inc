; Partname:  ATmega1280
; generated automatically, no not edit

.if WANT_ANALOG_COMPARATOR == 1
; ( -- addr ) System Constant
; R( -- )
; ADC Control and Status Register B
VE_ADCSRB:
	.dw $ff06
	.db "ADCSRB"
	.dw VE_HEAD
	.set VE_HEAD=VE_ADCSRB
XT_ADCSRB:
	.dw PFA_DOVARIABLE
PFA_ADCSRB:
	.dw 123
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
	.dw 80
; ( -- addr ) System Constant
; R( -- )
; Digital Input Disable Register 1
VE_DIDR1:
	.dw $ff05
	.db "DIDR1",0
	.dw VE_HEAD
	.set VE_HEAD=VE_DIDR1
XT_DIDR1:
	.dw PFA_DOVARIABLE
PFA_DIDR1:
	.dw 127

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
	.dw 198
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
	.dw 192
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
	.dw 193
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
	.dw 194
; ( -- addr ) System Constant
; R( -- )
; USART Baud Rate Register  Bytes
VE_UBRR0:
	.dw $ff05
	.db "UBRR0",0
	.dw VE_HEAD
	.set VE_HEAD=VE_UBRR0
XT_UBRR0:
	.dw PFA_DOVARIABLE
PFA_UBRR0:
	.dw 196

.endif
.if WANT_TWI == 1
; ( -- addr ) System Constant
; R( -- )
; TWI (Slave) Address Mask Register
VE_TWAMR:
	.dw $ff05
	.db "TWAMR",0
	.dw VE_HEAD
	.set VE_HEAD=VE_TWAMR
XT_TWAMR:
	.dw PFA_DOVARIABLE
PFA_TWAMR:
	.dw 189
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
	.dw 184
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
	.dw 188
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
	.dw 185
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
	.dw 187
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
	.dw 186

.endif
.if WANT_SPI == 1
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
	.dw 76
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
	.dw 77
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
	.dw 78

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
	.dw 34
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
	.dw 33
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
	.dw 32

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
	.dw 37
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
	.dw 36
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
	.dw 35

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
	.dw 40
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
	.dw 39
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
	.dw 38

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
	.dw 43
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
	.dw 42
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
	.dw 41

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
	.dw 46
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
	.dw 45
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
	.dw 44

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
	.dw 49
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
	.dw 48
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
	.dw 47

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
	.dw 52
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
	.dw 51
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
	.dw 50

.endif
.if WANT_PORTH == 1
; ( -- addr ) System Constant
; R( -- )
; PORT H Data Register
VE_PORTH:
	.dw $ff05
	.db "PORTH",0
	.dw VE_HEAD
	.set VE_HEAD=VE_PORTH
XT_PORTH:
	.dw PFA_DOVARIABLE
PFA_PORTH:
	.dw 258
; ( -- addr ) System Constant
; R( -- )
; PORT H Data Direction Register
VE_DDRH:
	.dw $ff04
	.db "DDRH"
	.dw VE_HEAD
	.set VE_HEAD=VE_DDRH
XT_DDRH:
	.dw PFA_DOVARIABLE
PFA_DDRH:
	.dw 257
; ( -- addr ) System Constant
; R( -- )
; PORT H Input Pins
VE_PINH:
	.dw $ff04
	.db "PINH"
	.dw VE_HEAD
	.set VE_HEAD=VE_PINH
XT_PINH:
	.dw PFA_DOVARIABLE
PFA_PINH:
	.dw 256

.endif
.if WANT_PORTJ == 1
; ( -- addr ) System Constant
; R( -- )
; PORT J Data Register
VE_PORTJ:
	.dw $ff05
	.db "PORTJ",0
	.dw VE_HEAD
	.set VE_HEAD=VE_PORTJ
XT_PORTJ:
	.dw PFA_DOVARIABLE
PFA_PORTJ:
	.dw 261
; ( -- addr ) System Constant
; R( -- )
; PORT J Data Direction Register
VE_DDRJ:
	.dw $ff04
	.db "DDRJ"
	.dw VE_HEAD
	.set VE_HEAD=VE_DDRJ
XT_DDRJ:
	.dw PFA_DOVARIABLE
PFA_DDRJ:
	.dw 260
; ( -- addr ) System Constant
; R( -- )
; PORT J Input Pins
VE_PINJ:
	.dw $ff04
	.db "PINJ"
	.dw VE_HEAD
	.set VE_HEAD=VE_PINJ
XT_PINJ:
	.dw PFA_DOVARIABLE
PFA_PINJ:
	.dw 259

.endif
.if WANT_PORTK == 1
; ( -- addr ) System Constant
; R( -- )
; PORT K Data Register
VE_PORTK:
	.dw $ff05
	.db "PORTK",0
	.dw VE_HEAD
	.set VE_HEAD=VE_PORTK
XT_PORTK:
	.dw PFA_DOVARIABLE
PFA_PORTK:
	.dw 264
; ( -- addr ) System Constant
; R( -- )
; PORT K Data Direction Register
VE_DDRK:
	.dw $ff04
	.db "DDRK"
	.dw VE_HEAD
	.set VE_HEAD=VE_DDRK
XT_DDRK:
	.dw PFA_DOVARIABLE
PFA_DDRK:
	.dw 263
; ( -- addr ) System Constant
; R( -- )
; PORT K Input Pins
VE_PINK:
	.dw $ff04
	.db "PINK"
	.dw VE_HEAD
	.set VE_HEAD=VE_PINK
XT_PINK:
	.dw PFA_DOVARIABLE
PFA_PINK:
	.dw 262

.endif
.if WANT_PORTL == 1
; ( -- addr ) System Constant
; R( -- )
; PORT L Data Register
VE_PORTL:
	.dw $ff05
	.db "PORTL",0
	.dw VE_HEAD
	.set VE_HEAD=VE_PORTL
XT_PORTL:
	.dw PFA_DOVARIABLE
PFA_PORTL:
	.dw 267
; ( -- addr ) System Constant
; R( -- )
; PORT L Data Direction Register
VE_DDRL:
	.dw $ff04
	.db "DDRL"
	.dw VE_HEAD
	.set VE_HEAD=VE_DDRL
XT_DDRL:
	.dw PFA_DOVARIABLE
PFA_DDRL:
	.dw 266
; ( -- addr ) System Constant
; R( -- )
; PORT L Input Pins
VE_PINL:
	.dw $ff04
	.db "PINL"
	.dw VE_HEAD
	.set VE_HEAD=VE_PINL
XT_PINL:
	.dw PFA_DOVARIABLE
PFA_PINL:
	.dw 265

.endif
.if WANT_TIMER_COUNTER_0 == 1
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter0 Output Compare Register
VE_OCR0B:
	.dw $ff05
	.db "OCR0B",0
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR0B
XT_OCR0B:
	.dw PFA_DOVARIABLE
PFA_OCR0B:
	.dw 72
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter0 Output Compare Register
VE_OCR0A:
	.dw $ff05
	.db "OCR0A",0
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR0A
XT_OCR0A:
	.dw PFA_DOVARIABLE
PFA_OCR0A:
	.dw 71
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter0
VE_TCNT0:
	.dw $ff05
	.db "TCNT0",0
	.dw VE_HEAD
	.set VE_HEAD=VE_TCNT0
XT_TCNT0:
	.dw PFA_DOVARIABLE
PFA_TCNT0:
	.dw 70
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter Control Register B
VE_TCCR0B:
	.dw $ff06
	.db "TCCR0B"
	.dw VE_HEAD
	.set VE_HEAD=VE_TCCR0B
XT_TCCR0B:
	.dw PFA_DOVARIABLE
PFA_TCCR0B:
	.dw 69
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter  Control Register A
VE_TCCR0A:
	.dw $ff06
	.db "TCCR0A"
	.dw VE_HEAD
	.set VE_HEAD=VE_TCCR0A
XT_TCCR0A:
	.dw PFA_DOVARIABLE
PFA_TCCR0A:
	.dw 68
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter0 Interrupt Mask Register
VE_TIMSK0:
	.dw $ff06
	.db "TIMSK0"
	.dw VE_HEAD
	.set VE_HEAD=VE_TIMSK0
XT_TIMSK0:
	.dw PFA_DOVARIABLE
PFA_TIMSK0:
	.dw 110
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter0 Interrupt Flag register
VE_TIFR0:
	.dw $ff05
	.db "TIFR0",0
	.dw VE_HEAD
	.set VE_HEAD=VE_TIFR0
XT_TIFR0:
	.dw PFA_DOVARIABLE
PFA_TIFR0:
	.dw 53
; ( -- addr ) System Constant
; R( -- )
; General Timer/Counter Control Register
VE_GTCCR:
	.dw $ff05
	.db "GTCCR",0
	.dw VE_HEAD
	.set VE_HEAD=VE_GTCCR
XT_GTCCR:
	.dw PFA_DOVARIABLE
PFA_GTCCR:
	.dw 67

.endif
.if WANT_TIMER_COUNTER_2 == 1
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter Interrupt Mask register
VE_TIMSK2:
	.dw $ff06
	.db "TIMSK2"
	.dw VE_HEAD
	.set VE_HEAD=VE_TIMSK2
XT_TIMSK2:
	.dw PFA_DOVARIABLE
PFA_TIMSK2:
	.dw 112
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter Interrupt Flag Register
VE_TIFR2:
	.dw $ff05
	.db "TIFR2",0
	.dw VE_HEAD
	.set VE_HEAD=VE_TIFR2
XT_TIFR2:
	.dw PFA_DOVARIABLE
PFA_TIFR2:
	.dw 55
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter2 Control Register A
VE_TCCR2A:
	.dw $ff06
	.db "TCCR2A"
	.dw VE_HEAD
	.set VE_HEAD=VE_TCCR2A
XT_TCCR2A:
	.dw PFA_DOVARIABLE
PFA_TCCR2A:
	.dw 176
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter2 Control Register B
VE_TCCR2B:
	.dw $ff06
	.db "TCCR2B"
	.dw VE_HEAD
	.set VE_HEAD=VE_TCCR2B
XT_TCCR2B:
	.dw PFA_DOVARIABLE
PFA_TCCR2B:
	.dw 177
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
	.dw 178
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter2 Output Compare Register B
VE_OCR2B:
	.dw $ff05
	.db "OCR2B",0
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR2B
XT_OCR2B:
	.dw PFA_DOVARIABLE
PFA_OCR2B:
	.dw 180
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter2 Output Compare Register A
VE_OCR2A:
	.dw $ff05
	.db "OCR2A",0
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR2A
XT_OCR2A:
	.dw PFA_DOVARIABLE
PFA_OCR2A:
	.dw 179
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
	.dw 182

.endif
.if WANT_WATCHDOG == 1
; ( -- addr ) System Constant
; R( -- )
; Watchdog Timer Control Register
VE_WDTCSR:
	.dw $ff06
	.db "WDTCSR"
	.dw VE_HEAD
	.set VE_HEAD=VE_WDTCSR
XT_WDTCSR:
	.dw PFA_DOVARIABLE
PFA_WDTCSR:
	.dw 96

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
	.dw 206
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
	.dw 200
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
	.dw 201
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
	.dw 202
; ( -- addr ) System Constant
; R( -- )
; USART Baud Rate Register  Bytes
VE_UBRR1:
	.dw $ff05
	.db "UBRR1",0
	.dw VE_HEAD
	.set VE_HEAD=VE_UBRR1
XT_UBRR1:
	.dw PFA_DOVARIABLE
PFA_UBRR1:
	.dw 204

.endif
.if WANT_EEPROM == 1
; ( -- addr ) System Constant
; R( -- )
; EEPROM Address Register Low Bytes
VE_EEAR:
	.dw $ff04
	.db "EEAR"
	.dw VE_HEAD
	.set VE_HEAD=VE_EEAR
XT_EEAR:
	.dw PFA_DOVARIABLE
PFA_EEAR:
	.dw 65
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
	.dw 64
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
	.dw 63

.endif
.if WANT_TIMER_COUNTER_5 == 1
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter5 Control Register A
VE_TCCR5A:
	.dw $ff06
	.db "TCCR5A"
	.dw VE_HEAD
	.set VE_HEAD=VE_TCCR5A
XT_TCCR5A:
	.dw PFA_DOVARIABLE
PFA_TCCR5A:
	.dw 288
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter5 Control Register B
VE_TCCR5B:
	.dw $ff06
	.db "TCCR5B"
	.dw VE_HEAD
	.set VE_HEAD=VE_TCCR5B
XT_TCCR5B:
	.dw PFA_DOVARIABLE
PFA_TCCR5B:
	.dw 289
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter 5 Control Register C
VE_TCCR5C:
	.dw $ff06
	.db "TCCR5C"
	.dw VE_HEAD
	.set VE_HEAD=VE_TCCR5C
XT_TCCR5C:
	.dw PFA_DOVARIABLE
PFA_TCCR5C:
	.dw 290
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter5  Bytes
VE_TCNT5:
	.dw $ff05
	.db "TCNT5",0
	.dw VE_HEAD
	.set VE_HEAD=VE_TCNT5
XT_TCNT5:
	.dw PFA_DOVARIABLE
PFA_TCNT5:
	.dw 292
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter5 Output Compare Register A  Bytes
VE_OCR5A:
	.dw $ff05
	.db "OCR5A",0
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR5A
XT_OCR5A:
	.dw PFA_DOVARIABLE
PFA_OCR5A:
	.dw 296
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter5 Output Compare Register B  Bytes
VE_OCR5B:
	.dw $ff05
	.db "OCR5B",0
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR5B
XT_OCR5B:
	.dw PFA_DOVARIABLE
PFA_OCR5B:
	.dw 298
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter5 Output Compare Register B  Bytes
VE_OCR5C:
	.dw $ff05
	.db "OCR5C",0
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR5C
XT_OCR5C:
	.dw PFA_DOVARIABLE
PFA_OCR5C:
	.dw 300
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter5 Input Capture Register  Bytes
VE_ICR5:
	.dw $ff04
	.db "ICR5"
	.dw VE_HEAD
	.set VE_HEAD=VE_ICR5
XT_ICR5:
	.dw PFA_DOVARIABLE
PFA_ICR5:
	.dw 294
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter5 Interrupt Mask Register
VE_TIMSK5:
	.dw $ff06
	.db "TIMSK5"
	.dw VE_HEAD
	.set VE_HEAD=VE_TIMSK5
XT_TIMSK5:
	.dw PFA_DOVARIABLE
PFA_TIMSK5:
	.dw 115
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter5 Interrupt Flag register
VE_TIFR5:
	.dw $ff05
	.db "TIFR5",0
	.dw VE_HEAD
	.set VE_HEAD=VE_TIFR5
XT_TIFR5:
	.dw PFA_DOVARIABLE
PFA_TIFR5:
	.dw 58

.endif
.if WANT_TIMER_COUNTER_4 == 1
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter4 Control Register A
VE_TCCR4A:
	.dw $ff06
	.db "TCCR4A"
	.dw VE_HEAD
	.set VE_HEAD=VE_TCCR4A
XT_TCCR4A:
	.dw PFA_DOVARIABLE
PFA_TCCR4A:
	.dw 160
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter4 Control Register B
VE_TCCR4B:
	.dw $ff06
	.db "TCCR4B"
	.dw VE_HEAD
	.set VE_HEAD=VE_TCCR4B
XT_TCCR4B:
	.dw PFA_DOVARIABLE
PFA_TCCR4B:
	.dw 161
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter 4 Control Register C
VE_TCCR4C:
	.dw $ff06
	.db "TCCR4C"
	.dw VE_HEAD
	.set VE_HEAD=VE_TCCR4C
XT_TCCR4C:
	.dw PFA_DOVARIABLE
PFA_TCCR4C:
	.dw 162
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter4  Bytes
VE_TCNT4:
	.dw $ff05
	.db "TCNT4",0
	.dw VE_HEAD
	.set VE_HEAD=VE_TCNT4
XT_TCNT4:
	.dw PFA_DOVARIABLE
PFA_TCNT4:
	.dw 164
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter4 Output Compare Register A  Bytes
VE_OCR4A:
	.dw $ff05
	.db "OCR4A",0
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR4A
XT_OCR4A:
	.dw PFA_DOVARIABLE
PFA_OCR4A:
	.dw 168
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter4 Output Compare Register B  Bytes
VE_OCR4B:
	.dw $ff05
	.db "OCR4B",0
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR4B
XT_OCR4B:
	.dw PFA_DOVARIABLE
PFA_OCR4B:
	.dw 170
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter4 Output Compare Register B  Bytes
VE_OCR4C:
	.dw $ff05
	.db "OCR4C",0
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR4C
XT_OCR4C:
	.dw PFA_DOVARIABLE
PFA_OCR4C:
	.dw 172
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter4 Input Capture Register  Bytes
VE_ICR4:
	.dw $ff04
	.db "ICR4"
	.dw VE_HEAD
	.set VE_HEAD=VE_ICR4
XT_ICR4:
	.dw PFA_DOVARIABLE
PFA_ICR4:
	.dw 166
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter4 Interrupt Mask Register
VE_TIMSK4:
	.dw $ff06
	.db "TIMSK4"
	.dw VE_HEAD
	.set VE_HEAD=VE_TIMSK4
XT_TIMSK4:
	.dw PFA_DOVARIABLE
PFA_TIMSK4:
	.dw 114
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter4 Interrupt Flag register
VE_TIFR4:
	.dw $ff05
	.db "TIFR4",0
	.dw VE_HEAD
	.set VE_HEAD=VE_TIFR4
XT_TIFR4:
	.dw PFA_DOVARIABLE
PFA_TIFR4:
	.dw 57

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
	.dw 144
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
	.dw 145
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter 3 Control Register C
VE_TCCR3C:
	.dw $ff06
	.db "TCCR3C"
	.dw VE_HEAD
	.set VE_HEAD=VE_TCCR3C
XT_TCCR3C:
	.dw PFA_DOVARIABLE
PFA_TCCR3C:
	.dw 146
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
	.dw 148
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
	.dw 152
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
	.dw 154
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter3 Output Compare Register B  Bytes
VE_OCR3C:
	.dw $ff05
	.db "OCR3C",0
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR3C
XT_OCR3C:
	.dw PFA_DOVARIABLE
PFA_OCR3C:
	.dw 156
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
	.dw 150
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter3 Interrupt Mask Register
VE_TIMSK3:
	.dw $ff06
	.db "TIMSK3"
	.dw VE_HEAD
	.set VE_HEAD=VE_TIMSK3
XT_TIMSK3:
	.dw PFA_DOVARIABLE
PFA_TIMSK3:
	.dw 113
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter3 Interrupt Flag register
VE_TIFR3:
	.dw $ff05
	.db "TIFR3",0
	.dw VE_HEAD
	.set VE_HEAD=VE_TIFR3
XT_TIFR3:
	.dw PFA_DOVARIABLE
PFA_TIFR3:
	.dw 56

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
	.dw 128
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
	.dw 129
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter 1 Control Register C
VE_TCCR1C:
	.dw $ff06
	.db "TCCR1C"
	.dw VE_HEAD
	.set VE_HEAD=VE_TCCR1C
XT_TCCR1C:
	.dw PFA_DOVARIABLE
PFA_TCCR1C:
	.dw 130
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
	.dw 132
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter1 Output Compare Register A  Bytes
VE_OCR1A:
	.dw $ff05
	.db "OCR1A",0
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR1A
XT_OCR1A:
	.dw PFA_DOVARIABLE
PFA_OCR1A:
	.dw 136
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter1 Output Compare Register B  Bytes
VE_OCR1B:
	.dw $ff05
	.db "OCR1B",0
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR1B
XT_OCR1B:
	.dw PFA_DOVARIABLE
PFA_OCR1B:
	.dw 138
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter1 Output Compare Register C  Bytes
VE_OCR1C:
	.dw $ff05
	.db "OCR1C",0
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR1C
XT_OCR1C:
	.dw PFA_DOVARIABLE
PFA_OCR1C:
	.dw 140
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
	.dw 134
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter1 Interrupt Mask Register
VE_TIMSK1:
	.dw $ff06
	.db "TIMSK1"
	.dw VE_HEAD
	.set VE_HEAD=VE_TIMSK1
XT_TIMSK1:
	.dw PFA_DOVARIABLE
PFA_TIMSK1:
	.dw 111
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter1 Interrupt Flag register
VE_TIFR1:
	.dw $ff05
	.db "TIFR1",0
	.dw VE_HEAD
	.set VE_HEAD=VE_TIFR1
XT_TIFR1:
	.dw PFA_DOVARIABLE
PFA_TIFR1:
	.dw 54

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
; MCU Status Register
VE_MCUSR:
	.dw $ff05
	.db "MCUSR",0
	.dw VE_HEAD
	.set VE_HEAD=VE_MCUSR
XT_MCUSR:
	.dw PFA_DOVARIABLE
PFA_MCUSR:
	.dw 84

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
	.dw 105
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
	.dw 106
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
	.dw 61
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
	.dw 60
; ( -- addr ) System Constant
; R( -- )
; Pin Change Mask Register 2
VE_PCMSK2:
	.dw $ff06
	.db "PCMSK2"
	.dw VE_HEAD
	.set VE_HEAD=VE_PCMSK2
XT_PCMSK2:
	.dw PFA_DOVARIABLE
PFA_PCMSK2:
	.dw 109
; ( -- addr ) System Constant
; R( -- )
; Pin Change Mask Register 1
VE_PCMSK1:
	.dw $ff06
	.db "PCMSK1"
	.dw VE_HEAD
	.set VE_HEAD=VE_PCMSK1
XT_PCMSK1:
	.dw PFA_DOVARIABLE
PFA_PCMSK1:
	.dw 108
; ( -- addr ) System Constant
; R( -- )
; Pin Change Mask Register 0
VE_PCMSK0:
	.dw $ff06
	.db "PCMSK0"
	.dw VE_HEAD
	.set VE_HEAD=VE_PCMSK0
XT_PCMSK0:
	.dw PFA_DOVARIABLE
PFA_PCMSK0:
	.dw 107
; ( -- addr ) System Constant
; R( -- )
; Pin Change Interrupt Flag Register
VE_PCIFR:
	.dw $ff05
	.db "PCIFR",0
	.dw VE_HEAD
	.set VE_HEAD=VE_PCIFR
XT_PCIFR:
	.dw PFA_DOVARIABLE
PFA_PCIFR:
	.dw 59
; ( -- addr ) System Constant
; R( -- )
; Pin Change Interrupt Control Register
VE_PCICR:
	.dw $ff05
	.db "PCICR",0
	.dw VE_HEAD
	.set VE_HEAD=VE_PCICR
XT_PCICR:
	.dw PFA_DOVARIABLE
PFA_PCICR:
	.dw 104

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
; External Memory Control Register A
VE_XMCRA:
	.dw $ff05
	.db "XMCRA",0
	.dw VE_HEAD
	.set VE_HEAD=VE_XMCRA
XT_XMCRA:
	.dw PFA_DOVARIABLE
PFA_XMCRA:
	.dw 116
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
	.dw 117
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
	.dw 102
; ( -- addr ) System Constant
; R( -- )
; 
VE_CLKPR:
	.dw $ff05
	.db "CLKPR",0
	.dw VE_HEAD
	.set VE_HEAD=VE_CLKPR
XT_CLKPR:
	.dw PFA_DOVARIABLE
PFA_CLKPR:
	.dw 97
; ( -- addr ) System Constant
; R( -- )
; Sleep Mode Control Register
VE_SMCR:
	.dw $ff04
	.db "SMCR"
	.dw VE_HEAD
	.set VE_HEAD=VE_SMCR
XT_SMCR:
	.dw PFA_DOVARIABLE
PFA_SMCR:
	.dw 83
; ( -- addr ) System Constant
; R( -- )
; Extended Indirect Register
VE_EIND:
	.dw $ff04
	.db "EIND"
	.dw VE_HEAD
	.set VE_HEAD=VE_EIND
XT_EIND:
	.dw PFA_DOVARIABLE
PFA_EIND:
	.dw 92
; ( -- addr ) System Constant
; R( -- )
; RAM Page Z Select Register
VE_RAMPZ:
	.dw $ff05
	.db "RAMPZ",0
	.dw VE_HEAD
	.set VE_HEAD=VE_RAMPZ
XT_RAMPZ:
	.dw PFA_DOVARIABLE
PFA_RAMPZ:
	.dw 91
; ( -- addr ) System Constant
; R( -- )
; General Purpose IO Register 2
VE_GPIOR2:
	.dw $ff06
	.db "GPIOR2"
	.dw VE_HEAD
	.set VE_HEAD=VE_GPIOR2
XT_GPIOR2:
	.dw PFA_DOVARIABLE
PFA_GPIOR2:
	.dw 75
; ( -- addr ) System Constant
; R( -- )
; General Purpose IO Register 1
VE_GPIOR1:
	.dw $ff06
	.db "GPIOR1"
	.dw VE_HEAD
	.set VE_HEAD=VE_GPIOR1
XT_GPIOR1:
	.dw PFA_DOVARIABLE
PFA_GPIOR1:
	.dw 74
; ( -- addr ) System Constant
; R( -- )
; General Purpose IO Register 0
VE_GPIOR0:
	.dw $ff06
	.db "GPIOR0"
	.dw VE_HEAD
	.set VE_HEAD=VE_GPIOR0
XT_GPIOR0:
	.dw PFA_DOVARIABLE
PFA_GPIOR0:
	.dw 62
; ( -- addr ) System Constant
; R( -- )
; Power Reduction Register1
VE_PRR1:
	.dw $ff04
	.db "PRR1"
	.dw VE_HEAD
	.set VE_HEAD=VE_PRR1
XT_PRR1:
	.dw PFA_DOVARIABLE
PFA_PRR1:
	.dw 101
; ( -- addr ) System Constant
; R( -- )
; Power Reduction Register0
VE_PRR0:
	.dw $ff04
	.db "PRR0"
	.dw VE_HEAD
	.set VE_HEAD=VE_PRR0
XT_PRR0:
	.dw PFA_DOVARIABLE
PFA_PRR0:
	.dw 100

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
	.dw 124
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
	.dw 120
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
	.dw 122
; ( -- addr ) System Constant
; R( -- )
; Digital Input Disable Register
VE_DIDR2:
	.dw $ff05
	.db "DIDR2",0
	.dw VE_HEAD
	.set VE_HEAD=VE_DIDR2
XT_DIDR2:
	.dw PFA_DOVARIABLE
PFA_DIDR2:
	.dw 125
; ( -- addr ) System Constant
; R( -- )
; Digital Input Disable Register
VE_DIDR0:
	.dw $ff05
	.db "DIDR0",0
	.dw VE_HEAD
	.set VE_HEAD=VE_DIDR0
XT_DIDR0:
	.dw PFA_DOVARIABLE
PFA_DIDR0:
	.dw 126

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
.if WANT_USART2 == 1
; ( -- addr ) System Constant
; R( -- )
; USART I/O Data Register
VE_UDR2:
	.dw $ff04
	.db "UDR2"
	.dw VE_HEAD
	.set VE_HEAD=VE_UDR2
XT_UDR2:
	.dw PFA_DOVARIABLE
PFA_UDR2:
	.dw 214
; ( -- addr ) System Constant
; R( -- )
; USART Control and Status Register A
VE_UCSR2A:
	.dw $ff06
	.db "UCSR2A"
	.dw VE_HEAD
	.set VE_HEAD=VE_UCSR2A
XT_UCSR2A:
	.dw PFA_DOVARIABLE
PFA_UCSR2A:
	.dw 208
; ( -- addr ) System Constant
; R( -- )
; USART Control and Status Register B
VE_UCSR2B:
	.dw $ff06
	.db "UCSR2B"
	.dw VE_HEAD
	.set VE_HEAD=VE_UCSR2B
XT_UCSR2B:
	.dw PFA_DOVARIABLE
PFA_UCSR2B:
	.dw 209
; ( -- addr ) System Constant
; R( -- )
; USART Control and Status Register C
VE_UCSR2C:
	.dw $ff06
	.db "UCSR2C"
	.dw VE_HEAD
	.set VE_HEAD=VE_UCSR2C
XT_UCSR2C:
	.dw PFA_DOVARIABLE
PFA_UCSR2C:
	.dw 210
; ( -- addr ) System Constant
; R( -- )
; USART Baud Rate Register  Bytes
VE_UBRR2:
	.dw $ff05
	.db "UBRR2",0
	.dw VE_HEAD
	.set VE_HEAD=VE_UBRR2
XT_UBRR2:
	.dw PFA_DOVARIABLE
PFA_UBRR2:
	.dw 212

.endif
.if WANT_USART3 == 1
; ( -- addr ) System Constant
; R( -- )
; USART I/O Data Register
VE_UDR3:
	.dw $ff04
	.db "UDR3"
	.dw VE_HEAD
	.set VE_HEAD=VE_UDR3
XT_UDR3:
	.dw PFA_DOVARIABLE
PFA_UDR3:
	.dw 310
; ( -- addr ) System Constant
; R( -- )
; USART Control and Status Register A
VE_UCSR3A:
	.dw $ff06
	.db "UCSR3A"
	.dw VE_HEAD
	.set VE_HEAD=VE_UCSR3A
XT_UCSR3A:
	.dw PFA_DOVARIABLE
PFA_UCSR3A:
	.dw 304
; ( -- addr ) System Constant
; R( -- )
; USART Control and Status Register B
VE_UCSR3B:
	.dw $ff06
	.db "UCSR3B"
	.dw VE_HEAD
	.set VE_HEAD=VE_UCSR3B
XT_UCSR3B:
	.dw PFA_DOVARIABLE
PFA_UCSR3B:
	.dw 305
; ( -- addr ) System Constant
; R( -- )
; USART Control and Status Register C
VE_UCSR3C:
	.dw $ff06
	.db "UCSR3C"
	.dw VE_HEAD
	.set VE_HEAD=VE_UCSR3C
XT_UCSR3C:
	.dw PFA_DOVARIABLE
PFA_UCSR3C:
	.dw 306
; ( -- addr ) System Constant
; R( -- )
; USART Baud Rate Register  Bytes
VE_UBRR3:
	.dw $ff05
	.db "UBRR3",0
	.dw VE_HEAD
	.set VE_HEAD=VE_UBRR3
XT_UBRR3:
	.dw PFA_DOVARIABLE
PFA_UBRR3:
	.dw 308

.endif
