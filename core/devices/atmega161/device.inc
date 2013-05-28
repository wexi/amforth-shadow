; Partname:  ATmega161
; Built using part description XML file version 233
; generated automatically, no not edit

; ********
.if WANT_ANALOG_COMPARATOR == 1
; ********
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
	.dw $28

.endif

; ********
.if WANT_CPU == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; Extended MCU Control Register
VE_EMCUCR:
	.dw $ff06
	.db "EMCUCR"
	.dw VE_HEAD
	.set VE_HEAD=VE_EMCUCR
XT_EMCUCR:
	.dw PFA_DOVARIABLE
PFA_EMCUCR:
	.dw $56
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
	.dw $55
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
	.dw $54
; ( -- addr ) System Constant
; R( -- )
; Stack Pointer High
VE_SPH:
	.dw $ff03
	.db "SPH",0
	.dw VE_HEAD
	.set VE_HEAD=VE_SPH
XT_SPH:
	.dw PFA_DOVARIABLE
PFA_SPH:
	.dw $5E
; ( -- addr ) System Constant
; R( -- )
; Stack Pointer Low
VE_SPL:
	.dw $ff03
	.db "SPL",0
	.dw VE_HEAD
	.set VE_HEAD=VE_SPL
XT_SPL:
	.dw PFA_DOVARIABLE
PFA_SPL:
	.dw $5D
; ( -- addr ) System Constant
; R( -- )
; Store Program Memory Control Register
VE_SPMCR:
	.dw $ff05
	.db "SPMCR",0
	.dw VE_HEAD
	.set VE_HEAD=VE_SPMCR
XT_SPMCR:
	.dw PFA_DOVARIABLE
PFA_SPMCR:
	.dw $57
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
	.dw $5F

.endif

; ********
.if WANT_EEPROM == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; EEPROM Address Register High Byte
VE_EEARH:
	.dw $ff05
	.db "EEARH",0
	.dw VE_HEAD
	.set VE_HEAD=VE_EEARH
XT_EEARH:
	.dw PFA_DOVARIABLE
PFA_EEARH:
	.dw $3F
; ( -- addr ) System Constant
; R( -- )
; EEPROM Address Register Low Byte
VE_EEARL:
	.dw $ff05
	.db "EEARL",0
	.dw VE_HEAD
	.set VE_HEAD=VE_EEARL
XT_EEARL:
	.dw PFA_DOVARIABLE
PFA_EEARL:
	.dw $3E
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
	.dw $3C
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
	.dw $3D

.endif

; ********
.if WANT_EXTERNAL_INTERRUPT == 1
; ********
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
	.dw $5A
; ( -- addr ) System Constant
; R( -- )
; General Interrupt Mask Register
VE_GIMSK:
	.dw $ff05
	.db "GIMSK",0
	.dw VE_HEAD
	.set VE_HEAD=VE_GIMSK
XT_GIMSK:
	.dw PFA_DOVARIABLE
PFA_GIMSK:
	.dw $5B

.endif

; ********
.if WANT_PORTA == 1
; ********
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
	.dw $3A
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
	.dw $39
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
	.dw $3B

.endif

; ********
.if WANT_PORTB == 1
; ********
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
	.dw $37
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
	.dw $36
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
	.dw $38

.endif

; ********
.if WANT_PORTC == 1
; ********
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
	.dw $34
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
	.dw $33
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
	.dw $35

.endif

; ********
.if WANT_PORTD == 1
; ********
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
	.dw $31
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
	.dw $30
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
	.dw $32

.endif

; ********
.if WANT_PORTE == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; Port E Data Direction Register
VE_DDRE:
	.dw $ff04
	.db "DDRE"
	.dw VE_HEAD
	.set VE_HEAD=VE_DDRE
XT_DDRE:
	.dw PFA_DOVARIABLE
PFA_DDRE:
	.dw $26
; ( -- addr ) System Constant
; R( -- )
; Port E Input Pins
VE_PINE:
	.dw $ff04
	.db "PINE"
	.dw VE_HEAD
	.set VE_HEAD=VE_PINE
XT_PINE:
	.dw PFA_DOVARIABLE
PFA_PINE:
	.dw $25
; ( -- addr ) System Constant
; R( -- )
; Port E Data Register
VE_PORTE:
	.dw $ff05
	.db "PORTE",0
	.dw VE_HEAD
	.set VE_HEAD=VE_PORTE
XT_PORTE:
	.dw PFA_DOVARIABLE
PFA_PORTE:
	.dw $27

.endif

; ********
.if WANT_SPI == 1
; ********
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
	.dw $2D
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
	.dw $2F
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
	.dw $2E

.endif

; ********
.if WANT_TIMER_COUNTER_0 == 1
; ********
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
	.dw $51
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
	.dw $50
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
	.dw $53
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
	.dw $52
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
	.dw $58
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
	.dw $59

.endif

; ********
.if WANT_TIMER_COUNTER_1 == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter1 Input Capture Register High Byte
VE_ICR1H:
	.dw $ff05
	.db "ICR1H",0
	.dw VE_HEAD
	.set VE_HEAD=VE_ICR1H
XT_ICR1H:
	.dw PFA_DOVARIABLE
PFA_ICR1H:
	.dw $45
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter1 Input Capture Register Low Byte
VE_ICR1L:
	.dw $ff05
	.db "ICR1L",0
	.dw VE_HEAD
	.set VE_HEAD=VE_ICR1L
XT_ICR1L:
	.dw PFA_DOVARIABLE
PFA_ICR1L:
	.dw $44
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter1 Output Compare Register High Byte
VE_OCR1AH:
	.dw $ff06
	.db "OCR1AH"
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR1AH
XT_OCR1AH:
	.dw PFA_DOVARIABLE
PFA_OCR1AH:
	.dw $4B
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter1 Output Compare Register Low Byte
VE_OCR1AL:
	.dw $ff06
	.db "OCR1AL"
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR1AL
XT_OCR1AL:
	.dw PFA_DOVARIABLE
PFA_OCR1AL:
	.dw $4A
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter1 Output Compare Register High Byte
VE_OCR1BH:
	.dw $ff06
	.db "OCR1BH"
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR1BH
XT_OCR1BH:
	.dw PFA_DOVARIABLE
PFA_OCR1BH:
	.dw $49
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter1 Output Compare Register Low Byte
VE_OCR1BL:
	.dw $ff06
	.db "OCR1BL"
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR1BL
XT_OCR1BL:
	.dw PFA_DOVARIABLE
PFA_OCR1BL:
	.dw $48
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
	.dw $4F
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
	.dw $4E
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter1 High Byte
VE_TCNT1H:
	.dw $ff06
	.db "TCNT1H"
	.dw VE_HEAD
	.set VE_HEAD=VE_TCNT1H
XT_TCNT1H:
	.dw PFA_DOVARIABLE
PFA_TCNT1H:
	.dw $4D
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter1 Low Byte
VE_TCNT1L:
	.dw $ff06
	.db "TCNT1L"
	.dw VE_HEAD
	.set VE_HEAD=VE_TCNT1L
XT_TCNT1L:
	.dw PFA_DOVARIABLE
PFA_TCNT1L:
	.dw $4C

.endif

; ********
.if WANT_TIMER_COUNTER_2 == 1
; ********
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
	.dw $46
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
	.dw $42
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
	.dw $47
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
	.dw $43

.endif

; ********
.if WANT_USART0 == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; USART Baud Rate Register Byte
VE_UBRR0:
	.dw $ff05
	.db "UBRR0",0
	.dw VE_HEAD
	.set VE_HEAD=VE_UBRR0
XT_UBRR0:
	.dw PFA_DOVARIABLE
PFA_UBRR0:
	.dw $29
; ( -- addr ) System Constant
; R( -- )
; High Byte Baud Rate Register
VE_UBRRHI:
	.dw $ff06
	.db "UBRRHI"
	.dw VE_HEAD
	.set VE_HEAD=VE_UBRRHI
XT_UBRRHI:
	.dw PFA_DOVARIABLE
PFA_UBRRHI:
	.dw $40
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
	.dw $2B
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
	.dw $2A
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
	.dw $2C

.endif

; ********
.if WANT_USART1 == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; USART Baud Rate Register Byte
VE_UBRR1:
	.dw $ff05
	.db "UBRR1",0
	.dw VE_HEAD
	.set VE_HEAD=VE_UBRR1
XT_UBRR1:
	.dw PFA_DOVARIABLE
PFA_UBRR1:
	.dw $20
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
	.dw $22
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
	.dw $21
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
	.dw $23

.endif

; ********
.if WANT_WATCHDOG == 1
; ********
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
	.dw $41

.endif
