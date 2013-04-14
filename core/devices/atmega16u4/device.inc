; Partname:  ATmega16U4
; generated automatically, no not edit

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
	.dw 192
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
	.dw 193
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
	.dw 194
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter 4 Control Register D
VE_TCCR4D:
	.dw $ff06
	.db "TCCR4D"
	.dw VE_HEAD
	.set VE_HEAD=VE_TCCR4D
XT_TCCR4D:
	.dw PFA_DOVARIABLE
PFA_TCCR4D:
	.dw 195
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter 4 Control Register E
VE_TCCR4E:
	.dw $ff06
	.db "TCCR4E"
	.dw VE_HEAD
	.set VE_HEAD=VE_TCCR4E
XT_TCCR4E:
	.dw PFA_DOVARIABLE
PFA_TCCR4E:
	.dw 196
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter4 Low Bytes
VE_TCNT4:
	.dw $ff05
	.db "TCNT4",0
	.dw VE_HEAD
	.set VE_HEAD=VE_TCNT4
XT_TCNT4:
	.dw PFA_DOVARIABLE
PFA_TCNT4:
	.dw 190
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter4
VE_TC4H:
	.dw $ff04
	.db "TC4H"
	.dw VE_HEAD
	.set VE_HEAD=VE_TC4H
XT_TC4H:
	.dw PFA_DOVARIABLE
PFA_TC4H:
	.dw 191
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter4 Output Compare Register A
VE_OCR4A:
	.dw $ff05
	.db "OCR4A",0
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR4A
XT_OCR4A:
	.dw PFA_DOVARIABLE
PFA_OCR4A:
	.dw 207
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter4 Output Compare Register B
VE_OCR4B:
	.dw $ff05
	.db "OCR4B",0
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR4B
XT_OCR4B:
	.dw PFA_DOVARIABLE
PFA_OCR4B:
	.dw 208
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter4 Output Compare Register C
VE_OCR4C:
	.dw $ff05
	.db "OCR4C",0
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR4C
XT_OCR4C:
	.dw PFA_DOVARIABLE
PFA_OCR4C:
	.dw 209
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter4 Output Compare Register D
VE_OCR4D:
	.dw $ff05
	.db "OCR4D",0
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR4D
XT_OCR4D:
	.dw PFA_DOVARIABLE
PFA_OCR4D:
	.dw 210
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
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter 4 Dead Time Value
VE_DT4:
	.dw $ff03
	.db "DT4",0
	.dw VE_HEAD
	.set VE_HEAD=VE_DT4
XT_DT4:
	.dw PFA_DOVARIABLE
PFA_DT4:
	.dw 212

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
; The ADC Control and Status register
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
; Digital Input Disable Register 1
VE_DIDR0:
	.dw $ff05
	.db "DIDR0",0
	.dw VE_HEAD
	.set VE_HEAD=VE_DIDR0
XT_DIDR0:
	.dw PFA_DOVARIABLE
PFA_DIDR0:
	.dw 126
; ( -- addr ) System Constant
; R( -- )
; Digital Input Disable Register 1
VE_DIDR2:
	.dw $ff05
	.db "DIDR2",0
	.dw VE_HEAD
	.set VE_HEAD=VE_DIDR2
XT_DIDR2:
	.dw PFA_DOVARIABLE
PFA_DIDR2:
	.dw 125

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
	.dw 80
; ( -- addr ) System Constant
; R( -- )
; 
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
	.dw 102
; ( -- addr ) System Constant
; R( -- )
; Oscillator Control Register
VE_RCCTRL:
	.dw $ff06
	.db "RCCTRL"
	.dw VE_HEAD
	.set VE_HEAD=VE_RCCTRL
XT_RCCTRL:
	.dw PFA_DOVARIABLE
PFA_RCCTRL:
	.dw 103
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
; ( -- addr ) System Constant
; R( -- )
; 
VE_CLKSTA:
	.dw $ff06
	.db "CLKSTA"
	.dw VE_HEAD
	.set VE_HEAD=VE_CLKSTA
XT_CLKSTA:
	.dw PFA_DOVARIABLE
PFA_CLKSTA:
	.dw 199
; ( -- addr ) System Constant
; R( -- )
; 
VE_CLKSEL1:
	.dw $ff07
	.db "CLKSEL1",0
	.dw VE_HEAD
	.set VE_HEAD=VE_CLKSEL1
XT_CLKSEL1:
	.dw PFA_DOVARIABLE
PFA_CLKSEL1:
	.dw 198
; ( -- addr ) System Constant
; R( -- )
; 
VE_CLKSEL0:
	.dw $ff07
	.db "CLKSEL0",0
	.dw VE_HEAD
	.set VE_HEAD=VE_CLKSEL0
XT_CLKSEL0:
	.dw PFA_DOVARIABLE
PFA_CLKSEL0:
	.dw 197

.endif
.if WANT_PLL == 1
; ( -- addr ) System Constant
; R( -- )
; PLL Status and Control register
VE_PLLCSR:
	.dw $ff06
	.db "PLLCSR"
	.dw VE_HEAD
	.set VE_HEAD=VE_PLLCSR
XT_PLLCSR:
	.dw PFA_DOVARIABLE
PFA_PLLCSR:
	.dw 73
; ( -- addr ) System Constant
; R( -- )
; PLL Frequency Control Register
VE_PLLFRQ:
	.dw $ff06
	.db "PLLFRQ"
	.dw VE_HEAD
	.set VE_HEAD=VE_PLLFRQ
XT_PLLFRQ:
	.dw PFA_DOVARIABLE
PFA_PLLFRQ:
	.dw 82

.endif
.if WANT_USB_DEVICE == 1
; ( -- addr ) System Constant
; R( -- )
; 
VE_UEINT:
	.dw $ff05
	.db "UEINT",0
	.dw VE_HEAD
	.set VE_HEAD=VE_UEINT
XT_UEINT:
	.dw PFA_DOVARIABLE
PFA_UEINT:
	.dw 244
; ( -- addr ) System Constant
; R( -- )
; 
VE_UEBCHX:
	.dw $ff06
	.db "UEBCHX"
	.dw VE_HEAD
	.set VE_HEAD=VE_UEBCHX
XT_UEBCHX:
	.dw PFA_DOVARIABLE
PFA_UEBCHX:
	.dw 243
; ( -- addr ) System Constant
; R( -- )
; 
VE_UEBCLX:
	.dw $ff06
	.db "UEBCLX"
	.dw VE_HEAD
	.set VE_HEAD=VE_UEBCLX
XT_UEBCLX:
	.dw PFA_DOVARIABLE
PFA_UEBCLX:
	.dw 242
; ( -- addr ) System Constant
; R( -- )
; 
VE_UEDATX:
	.dw $ff06
	.db "UEDATX"
	.dw VE_HEAD
	.set VE_HEAD=VE_UEDATX
XT_UEDATX:
	.dw PFA_DOVARIABLE
PFA_UEDATX:
	.dw 241
; ( -- addr ) System Constant
; R( -- )
; 
VE_UEIENX:
	.dw $ff06
	.db "UEIENX"
	.dw VE_HEAD
	.set VE_HEAD=VE_UEIENX
XT_UEIENX:
	.dw PFA_DOVARIABLE
PFA_UEIENX:
	.dw 240
; ( -- addr ) System Constant
; R( -- )
; 
VE_UESTA1X:
	.dw $ff07
	.db "UESTA1X",0
	.dw VE_HEAD
	.set VE_HEAD=VE_UESTA1X
XT_UESTA1X:
	.dw PFA_DOVARIABLE
PFA_UESTA1X:
	.dw 239
; ( -- addr ) System Constant
; R( -- )
; 
VE_UESTA0X:
	.dw $ff07
	.db "UESTA0X",0
	.dw VE_HEAD
	.set VE_HEAD=VE_UESTA0X
XT_UESTA0X:
	.dw PFA_DOVARIABLE
PFA_UESTA0X:
	.dw 238
; ( -- addr ) System Constant
; R( -- )
; 
VE_UECFG1X:
	.dw $ff07
	.db "UECFG1X",0
	.dw VE_HEAD
	.set VE_HEAD=VE_UECFG1X
XT_UECFG1X:
	.dw PFA_DOVARIABLE
PFA_UECFG1X:
	.dw 237
; ( -- addr ) System Constant
; R( -- )
; 
VE_UECFG0X:
	.dw $ff07
	.db "UECFG0X",0
	.dw VE_HEAD
	.set VE_HEAD=VE_UECFG0X
XT_UECFG0X:
	.dw PFA_DOVARIABLE
PFA_UECFG0X:
	.dw 236
; ( -- addr ) System Constant
; R( -- )
; 
VE_UECONX:
	.dw $ff06
	.db "UECONX"
	.dw VE_HEAD
	.set VE_HEAD=VE_UECONX
XT_UECONX:
	.dw PFA_DOVARIABLE
PFA_UECONX:
	.dw 235
; ( -- addr ) System Constant
; R( -- )
; 
VE_UERST:
	.dw $ff05
	.db "UERST",0
	.dw VE_HEAD
	.set VE_HEAD=VE_UERST
XT_UERST:
	.dw PFA_DOVARIABLE
PFA_UERST:
	.dw 234
; ( -- addr ) System Constant
; R( -- )
; 
VE_UENUM:
	.dw $ff05
	.db "UENUM",0
	.dw VE_HEAD
	.set VE_HEAD=VE_UENUM
XT_UENUM:
	.dw PFA_DOVARIABLE
PFA_UENUM:
	.dw 233
; ( -- addr ) System Constant
; R( -- )
; 
VE_UEINTX:
	.dw $ff06
	.db "UEINTX"
	.dw VE_HEAD
	.set VE_HEAD=VE_UEINTX
XT_UEINTX:
	.dw PFA_DOVARIABLE
PFA_UEINTX:
	.dw 232
; ( -- addr ) System Constant
; R( -- )
; 
VE_UDMFN:
	.dw $ff05
	.db "UDMFN",0
	.dw VE_HEAD
	.set VE_HEAD=VE_UDMFN
XT_UDMFN:
	.dw PFA_DOVARIABLE
PFA_UDMFN:
	.dw 230
; ( -- addr ) System Constant
; R( -- )
; 
VE_UDFNUM:
	.dw $ff06
	.db "UDFNUM"
	.dw VE_HEAD
	.set VE_HEAD=VE_UDFNUM
XT_UDFNUM:
	.dw PFA_DOVARIABLE
PFA_UDFNUM:
	.dw 228
; ( -- addr ) System Constant
; R( -- )
; 
VE_UDADDR:
	.dw $ff06
	.db "UDADDR"
	.dw VE_HEAD
	.set VE_HEAD=VE_UDADDR
XT_UDADDR:
	.dw PFA_DOVARIABLE
PFA_UDADDR:
	.dw 227
; ( -- addr ) System Constant
; R( -- )
; 
VE_UDIEN:
	.dw $ff05
	.db "UDIEN",0
	.dw VE_HEAD
	.set VE_HEAD=VE_UDIEN
XT_UDIEN:
	.dw PFA_DOVARIABLE
PFA_UDIEN:
	.dw 226
; ( -- addr ) System Constant
; R( -- )
; 
VE_UDINT:
	.dw $ff05
	.db "UDINT",0
	.dw VE_HEAD
	.set VE_HEAD=VE_UDINT
XT_UDINT:
	.dw PFA_DOVARIABLE
PFA_UDINT:
	.dw 225
; ( -- addr ) System Constant
; R( -- )
; 
VE_UDCON:
	.dw $ff05
	.db "UDCON",0
	.dw VE_HEAD
	.set VE_HEAD=VE_UDCON
XT_UDCON:
	.dw PFA_DOVARIABLE
PFA_UDCON:
	.dw 224
; ( -- addr ) System Constant
; R( -- )
; USB General Control Register
VE_USBCON:
	.dw $ff06
	.db "USBCON"
	.dw VE_HEAD
	.set VE_HEAD=VE_USBCON
XT_USBCON:
	.dw PFA_DOVARIABLE
PFA_USBCON:
	.dw 216
; ( -- addr ) System Constant
; R( -- )
; 
VE_USBINT:
	.dw $ff06
	.db "USBINT"
	.dw VE_HEAD
	.set VE_HEAD=VE_USBINT
XT_USBINT:
	.dw PFA_DOVARIABLE
PFA_USBINT:
	.dw 218
; ( -- addr ) System Constant
; R( -- )
; 
VE_USBSTA:
	.dw $ff06
	.db "USBSTA"
	.dw VE_HEAD
	.set VE_HEAD=VE_USBSTA
XT_USBSTA:
	.dw PFA_DOVARIABLE
PFA_USBSTA:
	.dw 217
; ( -- addr ) System Constant
; R( -- )
; 
VE_UHWCON:
	.dw $ff06
	.db "UHWCON"
	.dw VE_HEAD
	.set VE_HEAD=VE_UHWCON
XT_UHWCON:
	.dw PFA_DOVARIABLE
PFA_UHWCON:
	.dw 215

.endif
