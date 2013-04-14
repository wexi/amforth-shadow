; Partname:  ATmega165
; Built using part description XML file version 126
; generated automatically, no not edit

; ********
.if WANT_AD_CONVERTER == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; ADC Data Register High Byte
VE_ADCH:
	.dw $ff04
	.db "ADCH"
	.dw VE_HEAD
	.set VE_HEAD=VE_ADCH
XT_ADCH:
	.dw PFA_DOVARIABLE
PFA_ADCH:
	.dw $79
; ( -- addr ) System Constant
; R( -- )
; ADC Data Register Low Byte
VE_ADCL:
	.dw $ff04
	.db "ADCL"
	.dw VE_HEAD
	.set VE_HEAD=VE_ADCL
XT_ADCL:
	.dw PFA_DOVARIABLE
PFA_ADCL:
	.dw $78
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
	.dw $7A
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
	.dw $7B
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
	.dw $7C
; ( -- addr ) System Constant
; R( -- )
; Digital Input Disable Register 0
VE_DIDR0:
	.dw $ff05
	.db "DIDR0",0
	.dw VE_HEAD
	.set VE_HEAD=VE_DIDR0
XT_DIDR0:
	.dw PFA_DOVARIABLE
PFA_DIDR0:
	.dw $7E

.endif

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
	.dw $50
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
	.dw $7F

.endif

; ********
.if WANT_BOOT_LOAD == 1
; ********
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
	.dw $57

.endif

; ********
.if WANT_CPU == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; Clock Prescale Register
VE_CLKPR:
	.dw $ff05
	.db "CLKPR",0
	.dw VE_HEAD
	.set VE_HEAD=VE_CLKPR
XT_CLKPR:
	.dw PFA_DOVARIABLE
PFA_CLKPR:
	.dw $61
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
	.dw $3E
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
	.dw $4A
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
	.dw $4B
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
; Oscillator Calibration Value
VE_OSCCAL:
	.dw $ff06
	.db "OSCCAL"
	.dw VE_HEAD
	.set VE_HEAD=VE_OSCCAL
XT_OSCCAL:
	.dw PFA_DOVARIABLE
PFA_OSCCAL:
	.dw $66
; ( -- addr ) System Constant
; R( -- )
; Power Reduction Register
VE_PRR:
	.dw $ff03
	.db "PRR",0
	.dw VE_HEAD
	.set VE_HEAD=VE_PRR
XT_PRR:
	.dw PFA_DOVARIABLE
PFA_PRR:
	.dw $64
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
	.dw $53
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
	.dw $42
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
	.dw $41
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
	.dw $3F
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
	.dw $40

.endif

; ********
.if WANT_EXTERNAL_INTERRUPT == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; External Interrupt Control Register 
VE_EICRA:
	.dw $ff05
	.db "EICRA",0
	.dw VE_HEAD
	.set VE_HEAD=VE_EICRA
XT_EICRA:
	.dw PFA_DOVARIABLE
PFA_EICRA:
	.dw $69
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
	.dw $3C
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
	.dw $3D
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
	.dw $6B
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
	.dw $6C

.endif

; ********
.if WANT_JTAG == 1
; ********
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
	.dw $51

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
	.dw $21
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
	.dw $20
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
	.dw $22

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
	.dw $24
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
	.dw $23
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
	.dw $25

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
	.dw $27
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
	.dw $26
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
	.dw $28

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
	.dw $2A
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
	.dw $29
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
	.dw $2B

.endif

; ********
.if WANT_PORTE == 1
; ********
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
	.dw $2D
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
	.dw $2C
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
	.dw $2E

.endif

; ********
.if WANT_PORTF == 1
; ********
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
	.dw $30
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
	.dw $2F
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
	.dw $31

.endif

; ********
.if WANT_PORTG == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; Port G Data Direction Register
VE_DDRG:
	.dw $ff04
	.db "DDRG"
	.dw VE_HEAD
	.set VE_HEAD=VE_DDRG
XT_DDRG:
	.dw PFA_DOVARIABLE
PFA_DDRG:
	.dw $33
; ( -- addr ) System Constant
; R( -- )
; Port G Input Pins
VE_PING:
	.dw $ff04
	.db "PING"
	.dw VE_HEAD
	.set VE_HEAD=VE_PING
XT_PING:
	.dw PFA_DOVARIABLE
PFA_PING:
	.dw $32
; ( -- addr ) System Constant
; R( -- )
;  Port G Data Register
VE_PORTG:
	.dw $ff05
	.db "PORTG",0
	.dw VE_HEAD
	.set VE_HEAD=VE_PORTG
XT_PORTG:
	.dw PFA_DOVARIABLE
PFA_PORTG:
	.dw $34

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
	.dw $4C
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
	.dw $4E
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
	.dw $4D

.endif

; ********
.if WANT_TIMER_COUNTER_0 == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; General Timer/Control Register
VE_GTCCR:
	.dw $ff05
	.db "GTCCR",0
	.dw VE_HEAD
	.set VE_HEAD=VE_GTCCR
XT_GTCCR:
	.dw PFA_DOVARIABLE
PFA_GTCCR:
	.dw $43
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
	.dw $47
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter0 Control Register
VE_TCCR0A:
	.dw $ff06
	.db "TCCR0A"
	.dw VE_HEAD
	.set VE_HEAD=VE_TCCR0A
XT_TCCR0A:
	.dw PFA_DOVARIABLE
PFA_TCCR0A:
	.dw $44
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
	.dw $46
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
	.dw $35
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
	.dw $6E

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
	.dw $87
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
	.dw $86
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter1 Output Compare Register A High Byte
VE_OCR1AH:
	.dw $ff06
	.db "OCR1AH"
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR1AH
XT_OCR1AH:
	.dw PFA_DOVARIABLE
PFA_OCR1AH:
	.dw $89
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter1 Output Compare Register A Low Byte
VE_OCR1AL:
	.dw $ff06
	.db "OCR1AL"
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR1AL
XT_OCR1AL:
	.dw PFA_DOVARIABLE
PFA_OCR1AL:
	.dw $88
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter1 Output Compare Register B High Byte
VE_OCR1BH:
	.dw $ff06
	.db "OCR1BH"
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR1BH
XT_OCR1BH:
	.dw PFA_DOVARIABLE
PFA_OCR1BH:
	.dw $8B
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter1 Output Compare Register B Low Byte
VE_OCR1BL:
	.dw $ff06
	.db "OCR1BL"
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR1BL
XT_OCR1BL:
	.dw PFA_DOVARIABLE
PFA_OCR1BL:
	.dw $8A
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
	.dw $80
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
	.dw $81
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
	.dw $82
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
	.dw $85
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
	.dw $84
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
	.dw $36
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
	.dw $6F

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
	.dw $B6
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter2 Output Compare Register
VE_OCR2A:
	.dw $ff05
	.db "OCR2A",0
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR2A
XT_OCR2A:
	.dw PFA_DOVARIABLE
PFA_OCR2A:
	.dw $B3
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter2 Control Register
VE_TCCR2A:
	.dw $ff06
	.db "TCCR2A"
	.dw VE_HEAD
	.set VE_HEAD=VE_TCCR2A
XT_TCCR2A:
	.dw PFA_DOVARIABLE
PFA_TCCR2A:
	.dw $B0
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
	.dw $B2
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter2 Interrupt Flag Register
VE_TIFR2:
	.dw $ff05
	.db "TIFR2",0
	.dw VE_HEAD
	.set VE_HEAD=VE_TIFR2
XT_TIFR2:
	.dw PFA_DOVARIABLE
PFA_TIFR2:
	.dw $37
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter2 Interrupt Mask register
VE_TIMSK2:
	.dw $ff06
	.db "TIMSK2"
	.dw VE_HEAD
	.set VE_HEAD=VE_TIMSK2
XT_TIMSK2:
	.dw PFA_DOVARIABLE
PFA_TIMSK2:
	.dw $70

.endif

; ********
.if WANT_USART0 == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; USART Baud Rate Register High Byte
VE_UBRR0H:
	.dw $ff06
	.db "UBRR0H"
	.dw VE_HEAD
	.set VE_HEAD=VE_UBRR0H
XT_UBRR0H:
	.dw PFA_DOVARIABLE
PFA_UBRR0H:
	.dw $C5
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
	.dw $C4
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
	.dw $C0
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
	.dw $C1
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
	.dw $C2
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
	.dw $C6

.endif

; ********
.if WANT_USI == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; USI Control Register
VE_USICR:
	.dw $ff05
	.db "USICR",0
	.dw VE_HEAD
	.set VE_HEAD=VE_USICR
XT_USICR:
	.dw PFA_DOVARIABLE
PFA_USICR:
	.dw $B8
; ( -- addr ) System Constant
; R( -- )
; USI Data Register
VE_USIDR:
	.dw $ff05
	.db "USIDR",0
	.dw VE_HEAD
	.set VE_HEAD=VE_USIDR
XT_USIDR:
	.dw PFA_DOVARIABLE
PFA_USIDR:
	.dw $BA
; ( -- addr ) System Constant
; R( -- )
; USI Status Register
VE_USISR:
	.dw $ff05
	.db "USISR",0
	.dw VE_HEAD
	.set VE_HEAD=VE_USISR
XT_USISR:
	.dw PFA_DOVARIABLE
PFA_USISR:
	.dw $B9

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
	.dw $60

.endif
