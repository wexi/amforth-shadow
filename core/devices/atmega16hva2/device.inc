; Partname:  ATmega16HVA2
; Built using part description XML file version 1
; generated automatically, no not edit

; ********
.if WANT_AD_CONVERTER == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; VADC Data Register High Byte
VE_VADCH:
	.dw $ff05
	.db "VADCH",0
	.dw VE_HEAD
	.set VE_HEAD=VE_VADCH
XT_VADCH:
	.dw PFA_DOVARIABLE
PFA_VADCH:
	.dw $79
; ( -- addr ) System Constant
; R( -- )
; VADC Data Register Low Byte
VE_VADCL:
	.dw $ff05
	.db "VADCL",0
	.dw VE_HEAD
	.set VE_HEAD=VE_VADCL
XT_VADCL:
	.dw PFA_DOVARIABLE
PFA_VADCL:
	.dw $78
; ( -- addr ) System Constant
; R( -- )
; The VADC Control and Status register
VE_VADCSR:
	.dw $ff06
	.db "VADCSR"
	.dw VE_HEAD
	.set VE_HEAD=VE_VADCSR
XT_VADCSR:
	.dw PFA_DOVARIABLE
PFA_VADCSR:
	.dw $7A
; ( -- addr ) System Constant
; R( -- )
; The VADC multiplexer Selection Register
VE_VADMUX:
	.dw $ff06
	.db "VADMUX"
	.dw VE_HEAD
	.set VE_HEAD=VE_VADMUX
XT_VADMUX:
	.dw PFA_DOVARIABLE
PFA_VADMUX:
	.dw $7C

.endif

; ********
.if WANT_BANDGAP == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; Bandgap Calibration Register
VE_BGCCR:
	.dw $ff05
	.db "BGCCR",0
	.dw VE_HEAD
	.set VE_HEAD=VE_BGCCR
XT_BGCCR:
	.dw PFA_DOVARIABLE
PFA_BGCCR:
	.dw $D0
; ( -- addr ) System Constant
; R( -- )
; Bandgap Calibration of Resistor Ladder
VE_BGCRR:
	.dw $ff05
	.db "BGCRR",0
	.dw VE_HEAD
	.set VE_HEAD=VE_BGCRR
XT_BGCRR:
	.dw PFA_DOVARIABLE
PFA_BGCRR:
	.dw $D1

.endif

; ********
.if WANT_BATTERY_PROTECTION == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; Battery Protection Charge-High-current Detection Level Register
VE_BPCHCD:
	.dw $ff06
	.db "BPCHCD"
	.dw VE_HEAD
	.set VE_HEAD=VE_BPCHCD
XT_BPCHCD:
	.dw PFA_DOVARIABLE
PFA_BPCHCD:
	.dw $F9
; ( -- addr ) System Constant
; R( -- )
; Battery Protection Charge-Over-current Detection Level Register
VE_BPCOCD:
	.dw $ff06
	.db "BPCOCD"
	.dw VE_HEAD
	.set VE_HEAD=VE_BPCOCD
XT_BPCOCD:
	.dw PFA_DOVARIABLE
PFA_BPCOCD:
	.dw $F7
; ( -- addr ) System Constant
; R( -- )
; Battery Protection Control Register
VE_BPCR:
	.dw $ff04
	.db "BPCR"
	.dw VE_HEAD
	.set VE_HEAD=VE_BPCR
XT_BPCR:
	.dw PFA_DOVARIABLE
PFA_BPCR:
	.dw $FD
; ( -- addr ) System Constant
; R( -- )
; Battery Protection Discharge-High-current Detection Level Register
VE_BPDHCD:
	.dw $ff06
	.db "BPDHCD"
	.dw VE_HEAD
	.set VE_HEAD=VE_BPDHCD
XT_BPDHCD:
	.dw PFA_DOVARIABLE
PFA_BPDHCD:
	.dw $F8
; ( -- addr ) System Constant
; R( -- )
; Battery Protection Discharge-Over-current Detection Level Register
VE_BPDOCD:
	.dw $ff06
	.db "BPDOCD"
	.dw VE_HEAD
	.set VE_HEAD=VE_BPDOCD
XT_BPDOCD:
	.dw PFA_DOVARIABLE
PFA_BPDOCD:
	.dw $F6
; ( -- addr ) System Constant
; R( -- )
; Battery Protection Short-current Timing Register
VE_BPHCTR:
	.dw $ff06
	.db "BPHCTR"
	.dw VE_HEAD
	.set VE_HEAD=VE_BPHCTR
XT_BPHCTR:
	.dw PFA_DOVARIABLE
PFA_BPHCTR:
	.dw $FC
; ( -- addr ) System Constant
; R( -- )
; Battery Protection Interrupt Flag Register
VE_BPIFR:
	.dw $ff05
	.db "BPIFR",0
	.dw VE_HEAD
	.set VE_HEAD=VE_BPIFR
XT_BPIFR:
	.dw PFA_DOVARIABLE
PFA_BPIFR:
	.dw $F3
; ( -- addr ) System Constant
; R( -- )
; Battery Protection Interrupt Mask Register
VE_BPIMSK:
	.dw $ff06
	.db "BPIMSK"
	.dw VE_HEAD
	.set VE_HEAD=VE_BPIMSK
XT_BPIMSK:
	.dw PFA_DOVARIABLE
PFA_BPIMSK:
	.dw $F2
; ( -- addr ) System Constant
; R( -- )
; Battery Protection Over-current Timing Register
VE_BPOCTR:
	.dw $ff06
	.db "BPOCTR"
	.dw VE_HEAD
	.set VE_HEAD=VE_BPOCTR
XT_BPOCTR:
	.dw PFA_DOVARIABLE
PFA_BPOCTR:
	.dw $FB
; ( -- addr ) System Constant
; R( -- )
; Battery Protection Parameter Lock Register
VE_BPPLR:
	.dw $ff05
	.db "BPPLR",0
	.dw VE_HEAD
	.set VE_HEAD=VE_BPPLR
XT_BPPLR:
	.dw PFA_DOVARIABLE
PFA_BPPLR:
	.dw $FE
; ( -- addr ) System Constant
; R( -- )
; Battery Protection Short-Circuit Detection Level Register
VE_BPSCD:
	.dw $ff05
	.db "BPSCD",0
	.dw VE_HEAD
	.set VE_HEAD=VE_BPSCD
XT_BPSCD:
	.dw PFA_DOVARIABLE
PFA_BPSCD:
	.dw $F5
; ( -- addr ) System Constant
; R( -- )
; Battery Protection Short-current Timing Register
VE_BPSCTR:
	.dw $ff06
	.db "BPSCTR"
	.dw VE_HEAD
	.set VE_HEAD=VE_BPSCTR
XT_BPSCTR:
	.dw PFA_DOVARIABLE
PFA_BPSCTR:
	.dw $FA

.endif

; ********
.if WANT_BOOT_LOAD == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; Store Program Memory Control and Status Register
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
.if WANT_COULOMB_COUNTER == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; ADC Accumulate Current
VE_CADAC0:
	.dw $ff06
	.db "CADAC0"
	.dw VE_HEAD
	.set VE_HEAD=VE_CADAC0
XT_CADAC0:
	.dw PFA_DOVARIABLE
PFA_CADAC0:
	.dw $E0
; ( -- addr ) System Constant
; R( -- )
; ADC Accumulate Current
VE_CADAC1:
	.dw $ff06
	.db "CADAC1"
	.dw VE_HEAD
	.set VE_HEAD=VE_CADAC1
XT_CADAC1:
	.dw PFA_DOVARIABLE
PFA_CADAC1:
	.dw $E1
; ( -- addr ) System Constant
; R( -- )
; ADC Accumulate Current
VE_CADAC2:
	.dw $ff06
	.db "CADAC2"
	.dw VE_HEAD
	.set VE_HEAD=VE_CADAC2
XT_CADAC2:
	.dw PFA_DOVARIABLE
PFA_CADAC2:
	.dw $E2
; ( -- addr ) System Constant
; R( -- )
; ADC Accumulate Current
VE_CADAC3:
	.dw $ff06
	.db "CADAC3"
	.dw VE_HEAD
	.set VE_HEAD=VE_CADAC3
XT_CADAC3:
	.dw PFA_DOVARIABLE
PFA_CADAC3:
	.dw $E3
; ( -- addr ) System Constant
; R( -- )
; CC-ADC Control and Status Register A
VE_CADCSRA:
	.dw $ff07
	.db "CADCSRA",0
	.dw VE_HEAD
	.set VE_HEAD=VE_CADCSRA
XT_CADCSRA:
	.dw PFA_DOVARIABLE
PFA_CADCSRA:
	.dw $E4
; ( -- addr ) System Constant
; R( -- )
; CC-ADC Control and Status Register B
VE_CADCSRB:
	.dw $ff07
	.db "CADCSRB",0
	.dw VE_HEAD
	.set VE_HEAD=VE_CADCSRB
XT_CADCSRB:
	.dw PFA_DOVARIABLE
PFA_CADCSRB:
	.dw $E5
; ( -- addr ) System Constant
; R( -- )
; CC-ADC Instantaneous Current
VE_CADICH:
	.dw $ff06
	.db "CADICH"
	.dw VE_HEAD
	.set VE_HEAD=VE_CADICH
XT_CADICH:
	.dw PFA_DOVARIABLE
PFA_CADICH:
	.dw $E9
; ( -- addr ) System Constant
; R( -- )
; CC-ADC Instantaneous Current
VE_CADICL:
	.dw $ff06
	.db "CADICL"
	.dw VE_HEAD
	.set VE_HEAD=VE_CADICL
XT_CADICL:
	.dw PFA_DOVARIABLE
PFA_CADICL:
	.dw $E8
; ( -- addr ) System Constant
; R( -- )
; CC-ADC Regular Current
VE_CADRC:
	.dw $ff05
	.db "CADRC",0
	.dw VE_HEAD
	.set VE_HEAD=VE_CADRC
XT_CADRC:
	.dw PFA_DOVARIABLE
PFA_CADRC:
	.dw $E6

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
; Digital Input Disable Register
VE_DIDR0:
	.dw $ff05
	.db "DIDR0",0
	.dw VE_HEAD
	.set VE_HEAD=VE_DIDR0
XT_DIDR0:
	.dw PFA_DOVARIABLE
PFA_DIDR0:
	.dw $7E
; ( -- addr ) System Constant
; R( -- )
; Fast Oscillator Calibration Value
VE_FOSCCAL:
	.dw $ff07
	.db "FOSCCAL",0
	.dw VE_HEAD
	.set VE_HEAD=VE_FOSCCAL
XT_FOSCCAL:
	.dw PFA_DOVARIABLE
PFA_FOSCCAL:
	.dw $66
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
; Oscillator Sampling Interface Control and Status Register
VE_OSICSR:
	.dw $ff06
	.db "OSICSR"
	.dw VE_HEAD
	.set VE_HEAD=VE_OSICSR
XT_OSICSR:
	.dw PFA_DOVARIABLE
PFA_OSICSR:
	.dw $37
; ( -- addr ) System Constant
; R( -- )
; Power Reduction Register 0
VE_PRR0:
	.dw $ff04
	.db "PRR0"
	.dw VE_HEAD
	.set VE_HEAD=VE_PRR0
XT_PRR0:
	.dw PFA_DOVARIABLE
PFA_PRR0:
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
; EEPROM Read/Write Access
VE_EEAR:
	.dw $ff04
	.db "EEAR"
	.dw VE_HEAD
	.set VE_HEAD=VE_EEAR
XT_EEAR:
	.dw PFA_DOVARIABLE
PFA_EEAR:
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
; Pin Change Interrupt Control Register
VE_PCICR:
	.dw $ff05
	.db "PCICR",0
	.dw VE_HEAD
	.set VE_HEAD=VE_PCICR
XT_PCICR:
	.dw PFA_DOVARIABLE
PFA_PCICR:
	.dw $68
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
	.dw $3B
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

.endif

; ********
.if WANT_FET == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; FET Control and Status Register
VE_FCSR:
	.dw $ff04
	.db "FCSR"
	.dw VE_HEAD
	.set VE_HEAD=VE_FCSR
XT_FCSR:
	.dw PFA_DOVARIABLE
PFA_FCSR:
	.dw $F0

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
; Data Direction Register, Port B
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
; Input Pins, Port B
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
; Data Register, Port B
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
	.dw $4c
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
	.dw $4e
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
	.dw $4d

.endif

; ********
.if WANT_TIMER_COUNTER_0 == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; Output compare Register A
VE_OCR0A:
	.dw $ff05
	.db "OCR0A",0
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR0A
XT_OCR0A:
	.dw PFA_DOVARIABLE
PFA_OCR0A:
	.dw $48
; ( -- addr ) System Constant
; R( -- )
; Output compare Register B
VE_OCR0B:
	.dw $ff05
	.db "OCR0B",0
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR0B
XT_OCR0B:
	.dw PFA_DOVARIABLE
PFA_OCR0B:
	.dw $49
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
; Timer/Counter0 Control Register
VE_TCCR0B:
	.dw $ff06
	.db "TCCR0B"
	.dw VE_HEAD
	.set VE_HEAD=VE_TCCR0B
XT_TCCR0B:
	.dw PFA_DOVARIABLE
PFA_TCCR0B:
	.dw $45
; ( -- addr ) System Constant
; R( -- )
; Timer Counter 0 High Byte
VE_TCNT0H:
	.dw $ff06
	.db "TCNT0H"
	.dw VE_HEAD
	.set VE_HEAD=VE_TCNT0H
XT_TCNT0H:
	.dw PFA_DOVARIABLE
PFA_TCNT0H:
	.dw $47
; ( -- addr ) System Constant
; R( -- )
; Timer Counter 0 Low Byte
VE_TCNT0L:
	.dw $ff06
	.db "TCNT0L"
	.dw VE_HEAD
	.set VE_HEAD=VE_TCNT0L
XT_TCNT0L:
	.dw PFA_DOVARIABLE
PFA_TCNT0L:
	.dw $46
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter Interrupt Flag register
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
; Timer/Counter Interrupt Mask Register
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
; General Timer/Counter Control Register
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
; Output Compare Register 1A 
VE_OCR1A:
	.dw $ff05
	.db "OCR1A",0
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR1A
XT_OCR1A:
	.dw PFA_DOVARIABLE
PFA_OCR1A:
	.dw $88
; ( -- addr ) System Constant
; R( -- )
; Output Compare Register B 
VE_OCR1B:
	.dw $ff05
	.db "OCR1B",0
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR1B
XT_OCR1B:
	.dw PFA_DOVARIABLE
PFA_OCR1B:
	.dw $89
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter 1 Control Register A
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
; Timer Counter 1 High Byte
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
; Timer Counter 1 Low Byte
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
; Timer/Counter Interrupt Flag register
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
; Timer/Counter Interrupt Mask Register
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
.if WANT_VOLTAGE_REGULATOR == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; Regulator Operating Condition Register
VE_ROCR:
	.dw $ff04
	.db "ROCR"
	.dw VE_HEAD
	.set VE_HEAD=VE_ROCR
XT_ROCR:
	.dw PFA_DOVARIABLE
PFA_ROCR:
	.dw $C8

.endif

; ********
.if WANT_WATCHDOG == 1
; ********
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
	.dw $60

.endif
