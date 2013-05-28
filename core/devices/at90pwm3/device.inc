; Partname:  AT90PWM3
; Built using part description XML file version 179
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
; 
VE_AMP0CSR:
	.dw $ff07
	.db "AMP0CSR",0
	.dw VE_HEAD
	.set VE_HEAD=VE_AMP0CSR
XT_AMP0CSR:
	.dw PFA_DOVARIABLE
PFA_AMP0CSR:
	.dw $76
; ( -- addr ) System Constant
; R( -- )
; 
VE_AMP1CSR:
	.dw $ff07
	.db "AMP1CSR",0
	.dw VE_HEAD
	.set VE_HEAD=VE_AMP1CSR
XT_AMP1CSR:
	.dw PFA_DOVARIABLE
PFA_AMP1CSR:
	.dw $77
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
; ( -- addr ) System Constant
; R( -- )
; Digital Input Disable Register 0
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
.if WANT_ANALOG_COMPARATOR == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; Analog Comparator 0 Control Register
VE_AC0CON:
	.dw $ff06
	.db "AC0CON"
	.dw VE_HEAD
	.set VE_HEAD=VE_AC0CON
XT_AC0CON:
	.dw PFA_DOVARIABLE
PFA_AC0CON:
	.dw $AD
; ( -- addr ) System Constant
; R( -- )
; Analog Comparator 1 Control Register
VE_AC1CON:
	.dw $ff06
	.db "AC1CON"
	.dw VE_HEAD
	.set VE_HEAD=VE_AC1CON
XT_AC1CON:
	.dw PFA_DOVARIABLE
PFA_AC1CON:
	.dw $AE
; ( -- addr ) System Constant
; R( -- )
; Analog Comparator 2 Control Register
VE_AC2CON:
	.dw $ff06
	.db "AC2CON"
	.dw VE_HEAD
	.set VE_HEAD=VE_AC2CON
XT_AC2CON:
	.dw PFA_DOVARIABLE
PFA_AC2CON:
	.dw $AF
; ( -- addr ) System Constant
; R( -- )
; Analog Comparator Status Register
VE_ACSR:
	.dw $ff04
	.db "ACSR"
	.dw VE_HEAD
	.set VE_HEAD=VE_ACSR
XT_ACSR:
	.dw PFA_DOVARIABLE
PFA_ACSR:
	.dw $50

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
; 
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
	.dw $39
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
	.dw $3A
; ( -- addr ) System Constant
; R( -- )
; General Purpose IO Register 3
VE_GPIOR3:
	.dw $ff06
	.db "GPIOR3"
	.dw VE_HEAD
	.set VE_HEAD=VE_GPIOR3
XT_GPIOR3:
	.dw PFA_DOVARIABLE
PFA_GPIOR3:
	.dw $3B
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
; PLL Control And Status Register
VE_PLLCSR:
	.dw $ff06
	.db "PLLCSR"
	.dw VE_HEAD
	.set VE_HEAD=VE_PLLCSR
XT_PLLCSR:
	.dw PFA_DOVARIABLE
PFA_PLLCSR:
	.dw $49
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
.if WANT_DA_CONVERTER == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; DAC Data Register High Byte
VE_DACH:
	.dw $ff04
	.db "DACH"
	.dw VE_HEAD
	.set VE_HEAD=VE_DACH
XT_DACH:
	.dw PFA_DOVARIABLE
PFA_DACH:
	.dw $AC
; ( -- addr ) System Constant
; R( -- )
; DAC Data Register Low Byte
VE_DACL:
	.dw $ff04
	.db "DACL"
	.dw VE_HEAD
	.set VE_HEAD=VE_DACL
XT_DACL:
	.dw PFA_DOVARIABLE
PFA_DACL:
	.dw $AB
; ( -- addr ) System Constant
; R( -- )
; DAC Control Register
VE_DACON:
	.dw $ff05
	.db "DACON",0
	.dw VE_HEAD
	.set VE_HEAD=VE_DACON
XT_DACON:
	.dw PFA_DOVARIABLE
PFA_DACON:
	.dw $AA

.endif

; ********
.if WANT_EEPROM == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; EEPROM Read/Write Access High Byte
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
; EEPROM Read/Write Access Low Byte
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
.if WANT_EUSART == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; EUSART Control and Status Register A
VE_EUCSRA:
	.dw $ff06
	.db "EUCSRA"
	.dw VE_HEAD
	.set VE_HEAD=VE_EUCSRA
XT_EUCSRA:
	.dw PFA_DOVARIABLE
PFA_EUCSRA:
	.dw $C8
; ( -- addr ) System Constant
; R( -- )
; EUSART Control Register B
VE_EUCSRB:
	.dw $ff06
	.db "EUCSRB"
	.dw VE_HEAD
	.set VE_HEAD=VE_EUCSRB
XT_EUCSRB:
	.dw PFA_DOVARIABLE
PFA_EUCSRB:
	.dw $C9
; ( -- addr ) System Constant
; R( -- )
; EUSART Status Register C
VE_EUCSRC:
	.dw $ff06
	.db "EUCSRC"
	.dw VE_HEAD
	.set VE_HEAD=VE_EUCSRC
XT_EUCSRC:
	.dw PFA_DOVARIABLE
PFA_EUCSRC:
	.dw $CA
; ( -- addr ) System Constant
; R( -- )
; EUSART I/O Data Register
VE_EUDR:
	.dw $ff04
	.db "EUDR"
	.dw VE_HEAD
	.set VE_HEAD=VE_EUDR
XT_EUDR:
	.dw PFA_DOVARIABLE
PFA_EUDR:
	.dw $CE
; ( -- addr ) System Constant
; R( -- )
; Manchester Receiver Baud Rate Register High Byte
VE_MUBRRH:
	.dw $ff06
	.db "MUBRRH"
	.dw VE_HEAD
	.set VE_HEAD=VE_MUBRRH
XT_MUBRRH:
	.dw PFA_DOVARIABLE
PFA_MUBRRH:
	.dw $CD
; ( -- addr ) System Constant
; R( -- )
; Manchester Receiver Baud Rate Register Low Byte
VE_MUBRRL:
	.dw $ff06
	.db "MUBRRL"
	.dw VE_HEAD
	.set VE_HEAD=VE_MUBRRL
XT_MUBRRL:
	.dw PFA_DOVARIABLE
PFA_MUBRRL:
	.dw $CC

.endif

; ********
.if WANT_EXTERNAL_INTERRUPT == 1
; ********
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
; Port E Data Direction Register
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
; Port E Input Pins
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
; Port E Data Register
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
.if WANT_PSC0 == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; Output Compare RA Register High
VE_OCR0RAH:
	.dw $ff07
	.db "OCR0RAH",0
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR0RAH
XT_OCR0RAH:
	.dw PFA_DOVARIABLE
PFA_OCR0RAH:
	.dw $D5
; ( -- addr ) System Constant
; R( -- )
; Output Compare RA Register Low
VE_OCR0RAL:
	.dw $ff07
	.db "OCR0RAL",0
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR0RAL
XT_OCR0RAL:
	.dw PFA_DOVARIABLE
PFA_OCR0RAL:
	.dw $D4
; ( -- addr ) System Constant
; R( -- )
; Output Compare RB Register High
VE_OCR0RBH:
	.dw $ff07
	.db "OCR0RBH",0
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR0RBH
XT_OCR0RBH:
	.dw PFA_DOVARIABLE
PFA_OCR0RBH:
	.dw $D9
; ( -- addr ) System Constant
; R( -- )
; Output Compare RB Register Low
VE_OCR0RBL:
	.dw $ff07
	.db "OCR0RBL",0
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR0RBL
XT_OCR0RBL:
	.dw PFA_DOVARIABLE
PFA_OCR0RBL:
	.dw $D8
; ( -- addr ) System Constant
; R( -- )
; Output Compare SA Register High
VE_OCR0SAH:
	.dw $ff07
	.db "OCR0SAH",0
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR0SAH
XT_OCR0SAH:
	.dw PFA_DOVARIABLE
PFA_OCR0SAH:
	.dw $D3
; ( -- addr ) System Constant
; R( -- )
; Output Compare SA Register Low
VE_OCR0SAL:
	.dw $ff07
	.db "OCR0SAL",0
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR0SAL
XT_OCR0SAL:
	.dw PFA_DOVARIABLE
PFA_OCR0SAL:
	.dw $D2
; ( -- addr ) System Constant
; R( -- )
; Output Compare SB Register High
VE_OCR0SBH:
	.dw $ff07
	.db "OCR0SBH",0
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR0SBH
XT_OCR0SBH:
	.dw PFA_DOVARIABLE
PFA_OCR0SBH:
	.dw $D7
; ( -- addr ) System Constant
; R( -- )
; Output Compare SB Register Low
VE_OCR0SBL:
	.dw $ff07
	.db "OCR0SBL",0
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR0SBL
XT_OCR0SBL:
	.dw PFA_DOVARIABLE
PFA_OCR0SBL:
	.dw $D6
; ( -- addr ) System Constant
; R( -- )
; PSC 0 Configuration Register
VE_PCNF0:
	.dw $ff05
	.db "PCNF0",0
	.dw VE_HEAD
	.set VE_HEAD=VE_PCNF0
XT_PCNF0:
	.dw PFA_DOVARIABLE
PFA_PCNF0:
	.dw $DA
; ( -- addr ) System Constant
; R( -- )
; PSC 0 Control Register
VE_PCTL0:
	.dw $ff05
	.db "PCTL0",0
	.dw VE_HEAD
	.set VE_HEAD=VE_PCTL0
XT_PCTL0:
	.dw PFA_DOVARIABLE
PFA_PCTL0:
	.dw $DB
; ( -- addr ) System Constant
; R( -- )
; PSC 0 Input A Control
VE_PFRC0A:
	.dw $ff06
	.db "PFRC0A"
	.dw VE_HEAD
	.set VE_HEAD=VE_PFRC0A
XT_PFRC0A:
	.dw PFA_DOVARIABLE
PFA_PFRC0A:
	.dw $DC
; ( -- addr ) System Constant
; R( -- )
; PSC 0 Input B Control
VE_PFRC0B:
	.dw $ff06
	.db "PFRC0B"
	.dw VE_HEAD
	.set VE_HEAD=VE_PFRC0B
XT_PFRC0B:
	.dw PFA_DOVARIABLE
PFA_PFRC0B:
	.dw $DD
; ( -- addr ) System Constant
; R( -- )
; PSC 0 Input Capture Register High
VE_PICR0H:
	.dw $ff06
	.db "PICR0H"
	.dw VE_HEAD
	.set VE_HEAD=VE_PICR0H
XT_PICR0H:
	.dw PFA_DOVARIABLE
PFA_PICR0H:
	.dw $DF
; ( -- addr ) System Constant
; R( -- )
; PSC 0 Input Capture Register Low
VE_PICR0L:
	.dw $ff06
	.db "PICR0L"
	.dw VE_HEAD
	.set VE_HEAD=VE_PICR0L
XT_PICR0L:
	.dw PFA_DOVARIABLE
PFA_PICR0L:
	.dw $DE
; ( -- addr ) System Constant
; R( -- )
; PSC0 Interrupt Flag Register
VE_PIFR0:
	.dw $ff05
	.db "PIFR0",0
	.dw VE_HEAD
	.set VE_HEAD=VE_PIFR0
XT_PIFR0:
	.dw PFA_DOVARIABLE
PFA_PIFR0:
	.dw $A0
; ( -- addr ) System Constant
; R( -- )
; PSC0 Interrupt Mask Register
VE_PIM0:
	.dw $ff04
	.db "PIM0"
	.dw VE_HEAD
	.set VE_HEAD=VE_PIM0
XT_PIM0:
	.dw PFA_DOVARIABLE
PFA_PIM0:
	.dw $A1
; ( -- addr ) System Constant
; R( -- )
; PSC0 Synchro and Output Configuration
VE_PSOC0:
	.dw $ff05
	.db "PSOC0",0
	.dw VE_HEAD
	.set VE_HEAD=VE_PSOC0
XT_PSOC0:
	.dw PFA_DOVARIABLE
PFA_PSOC0:
	.dw $D0

.endif

; ********
.if WANT_PSC1 == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; Output Compare RA Register High
VE_OCR1RAH:
	.dw $ff07
	.db "OCR1RAH",0
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR1RAH
XT_OCR1RAH:
	.dw PFA_DOVARIABLE
PFA_OCR1RAH:
	.dw $E5
; ( -- addr ) System Constant
; R( -- )
; Output Compare RA Register Low
VE_OCR1RAL:
	.dw $ff07
	.db "OCR1RAL",0
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR1RAL
XT_OCR1RAL:
	.dw PFA_DOVARIABLE
PFA_OCR1RAL:
	.dw $E4
; ( -- addr ) System Constant
; R( -- )
; Output Compare RB Register High
VE_OCR1RBH:
	.dw $ff07
	.db "OCR1RBH",0
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR1RBH
XT_OCR1RBH:
	.dw PFA_DOVARIABLE
PFA_OCR1RBH:
	.dw $E9
; ( -- addr ) System Constant
; R( -- )
; Output Compare RB Register Low
VE_OCR1RBL:
	.dw $ff07
	.db "OCR1RBL",0
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR1RBL
XT_OCR1RBL:
	.dw PFA_DOVARIABLE
PFA_OCR1RBL:
	.dw $E8
; ( -- addr ) System Constant
; R( -- )
; Output Compare SA Register High
VE_OCR1SAH:
	.dw $ff07
	.db "OCR1SAH",0
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR1SAH
XT_OCR1SAH:
	.dw PFA_DOVARIABLE
PFA_OCR1SAH:
	.dw $E3
; ( -- addr ) System Constant
; R( -- )
; Output Compare SA Register Low
VE_OCR1SAL:
	.dw $ff07
	.db "OCR1SAL",0
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR1SAL
XT_OCR1SAL:
	.dw PFA_DOVARIABLE
PFA_OCR1SAL:
	.dw $E2
; ( -- addr ) System Constant
; R( -- )
; Output Compare SB Register High
VE_OCR1SBH:
	.dw $ff07
	.db "OCR1SBH",0
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR1SBH
XT_OCR1SBH:
	.dw PFA_DOVARIABLE
PFA_OCR1SBH:
	.dw $E7
; ( -- addr ) System Constant
; R( -- )
; Output Compare SB Register Low
VE_OCR1SBL:
	.dw $ff07
	.db "OCR1SBL",0
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR1SBL
XT_OCR1SBL:
	.dw PFA_DOVARIABLE
PFA_OCR1SBL:
	.dw $E6
; ( -- addr ) System Constant
; R( -- )
; PSC 1 Configuration Register
VE_PCNF1:
	.dw $ff05
	.db "PCNF1",0
	.dw VE_HEAD
	.set VE_HEAD=VE_PCNF1
XT_PCNF1:
	.dw PFA_DOVARIABLE
PFA_PCNF1:
	.dw $EA
; ( -- addr ) System Constant
; R( -- )
; PSC 1 Control Register
VE_PCTL1:
	.dw $ff05
	.db "PCTL1",0
	.dw VE_HEAD
	.set VE_HEAD=VE_PCTL1
XT_PCTL1:
	.dw PFA_DOVARIABLE
PFA_PCTL1:
	.dw $EB
; ( -- addr ) System Constant
; R( -- )
; PSC 1 Input B Control
VE_PFRC1A:
	.dw $ff06
	.db "PFRC1A"
	.dw VE_HEAD
	.set VE_HEAD=VE_PFRC1A
XT_PFRC1A:
	.dw PFA_DOVARIABLE
PFA_PFRC1A:
	.dw $EC
; ( -- addr ) System Constant
; R( -- )
; PSC 1 Input B Control
VE_PFRC1B:
	.dw $ff06
	.db "PFRC1B"
	.dw VE_HEAD
	.set VE_HEAD=VE_PFRC1B
XT_PFRC1B:
	.dw PFA_DOVARIABLE
PFA_PFRC1B:
	.dw $ED
; ( -- addr ) System Constant
; R( -- )
; PSC 1 Input Capture Register High
VE_PICR1H:
	.dw $ff06
	.db "PICR1H"
	.dw VE_HEAD
	.set VE_HEAD=VE_PICR1H
XT_PICR1H:
	.dw PFA_DOVARIABLE
PFA_PICR1H:
	.dw $EF
; ( -- addr ) System Constant
; R( -- )
; PSC 1 Input Capture Register Low
VE_PICR1L:
	.dw $ff06
	.db "PICR1L"
	.dw VE_HEAD
	.set VE_HEAD=VE_PICR1L
XT_PICR1L:
	.dw PFA_DOVARIABLE
PFA_PICR1L:
	.dw $EE
; ( -- addr ) System Constant
; R( -- )
; PSC1 Interrupt Flag Register
VE_PIFR1:
	.dw $ff05
	.db "PIFR1",0
	.dw VE_HEAD
	.set VE_HEAD=VE_PIFR1
XT_PIFR1:
	.dw PFA_DOVARIABLE
PFA_PIFR1:
	.dw $A2
; ( -- addr ) System Constant
; R( -- )
; PSC1 Interrupt Mask Register
VE_PIM1:
	.dw $ff04
	.db "PIM1"
	.dw VE_HEAD
	.set VE_HEAD=VE_PIM1
XT_PIM1:
	.dw PFA_DOVARIABLE
PFA_PIM1:
	.dw $A3
; ( -- addr ) System Constant
; R( -- )
; PSC1 Synchro and Output Configuration
VE_PSOC1:
	.dw $ff05
	.db "PSOC1",0
	.dw VE_HEAD
	.set VE_HEAD=VE_PSOC1
XT_PSOC1:
	.dw PFA_DOVARIABLE
PFA_PSOC1:
	.dw $E0

.endif

; ********
.if WANT_PSC2 == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; Output Compare RA Register High
VE_OCR2RAH:
	.dw $ff07
	.db "OCR2RAH",0
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR2RAH
XT_OCR2RAH:
	.dw PFA_DOVARIABLE
PFA_OCR2RAH:
	.dw $F5
; ( -- addr ) System Constant
; R( -- )
; Output Compare RA Register Low
VE_OCR2RAL:
	.dw $ff07
	.db "OCR2RAL",0
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR2RAL
XT_OCR2RAL:
	.dw PFA_DOVARIABLE
PFA_OCR2RAL:
	.dw $F4
; ( -- addr ) System Constant
; R( -- )
; Output Compare RB Register High
VE_OCR2RBH:
	.dw $ff07
	.db "OCR2RBH",0
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR2RBH
XT_OCR2RBH:
	.dw PFA_DOVARIABLE
PFA_OCR2RBH:
	.dw $F9
; ( -- addr ) System Constant
; R( -- )
; Output Compare RB Register Low
VE_OCR2RBL:
	.dw $ff07
	.db "OCR2RBL",0
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR2RBL
XT_OCR2RBL:
	.dw PFA_DOVARIABLE
PFA_OCR2RBL:
	.dw $F8
; ( -- addr ) System Constant
; R( -- )
; Output Compare SA Register High
VE_OCR2SAH:
	.dw $ff07
	.db "OCR2SAH",0
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR2SAH
XT_OCR2SAH:
	.dw PFA_DOVARIABLE
PFA_OCR2SAH:
	.dw $F3
; ( -- addr ) System Constant
; R( -- )
; Output Compare SA Register Low
VE_OCR2SAL:
	.dw $ff07
	.db "OCR2SAL",0
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR2SAL
XT_OCR2SAL:
	.dw PFA_DOVARIABLE
PFA_OCR2SAL:
	.dw $F2
; ( -- addr ) System Constant
; R( -- )
; Output Compare SB Register High
VE_OCR2SBH:
	.dw $ff07
	.db "OCR2SBH",0
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR2SBH
XT_OCR2SBH:
	.dw PFA_DOVARIABLE
PFA_OCR2SBH:
	.dw $F7
; ( -- addr ) System Constant
; R( -- )
; Output Compare SB Register Low
VE_OCR2SBL:
	.dw $ff07
	.db "OCR2SBL",0
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR2SBL
XT_OCR2SBL:
	.dw PFA_DOVARIABLE
PFA_OCR2SBL:
	.dw $F6
; ( -- addr ) System Constant
; R( -- )
; PSC 2 Configuration Register
VE_PCNF2:
	.dw $ff05
	.db "PCNF2",0
	.dw VE_HEAD
	.set VE_HEAD=VE_PCNF2
XT_PCNF2:
	.dw PFA_DOVARIABLE
PFA_PCNF2:
	.dw $FA
; ( -- addr ) System Constant
; R( -- )
; PSC 2 Control Register
VE_PCTL2:
	.dw $ff05
	.db "PCTL2",0
	.dw VE_HEAD
	.set VE_HEAD=VE_PCTL2
XT_PCTL2:
	.dw PFA_DOVARIABLE
PFA_PCTL2:
	.dw $FB
; ( -- addr ) System Constant
; R( -- )
; PSC 2 Input B Control
VE_PFRC2A:
	.dw $ff06
	.db "PFRC2A"
	.dw VE_HEAD
	.set VE_HEAD=VE_PFRC2A
XT_PFRC2A:
	.dw PFA_DOVARIABLE
PFA_PFRC2A:
	.dw $FC
; ( -- addr ) System Constant
; R( -- )
; PSC 2 Input B Control
VE_PFRC2B:
	.dw $ff06
	.db "PFRC2B"
	.dw VE_HEAD
	.set VE_HEAD=VE_PFRC2B
XT_PFRC2B:
	.dw PFA_DOVARIABLE
PFA_PFRC2B:
	.dw $FD
; ( -- addr ) System Constant
; R( -- )
; PSC 2 Input Capture Register High
VE_PICR2H:
	.dw $ff06
	.db "PICR2H"
	.dw VE_HEAD
	.set VE_HEAD=VE_PICR2H
XT_PICR2H:
	.dw PFA_DOVARIABLE
PFA_PICR2H:
	.dw $FF
; ( -- addr ) System Constant
; R( -- )
; PSC 2 Input Capture Register Low
VE_PICR2L:
	.dw $ff06
	.db "PICR2L"
	.dw VE_HEAD
	.set VE_HEAD=VE_PICR2L
XT_PICR2L:
	.dw PFA_DOVARIABLE
PFA_PICR2L:
	.dw $FE
; ( -- addr ) System Constant
; R( -- )
; PSC2 Interrupt Flag Register
VE_PIFR2:
	.dw $ff05
	.db "PIFR2",0
	.dw VE_HEAD
	.set VE_HEAD=VE_PIFR2
XT_PIFR2:
	.dw PFA_DOVARIABLE
PFA_PIFR2:
	.dw $A4
; ( -- addr ) System Constant
; R( -- )
; PSC2 Interrupt Mask Register
VE_PIM2:
	.dw $ff04
	.db "PIM2"
	.dw VE_HEAD
	.set VE_HEAD=VE_PIM2
XT_PIM2:
	.dw PFA_DOVARIABLE
PFA_PIM2:
	.dw $A5
; ( -- addr ) System Constant
; R( -- )
; PSC 2 Output Matrix
VE_POM2:
	.dw $ff04
	.db "POM2"
	.dw VE_HEAD
	.set VE_HEAD=VE_POM2
XT_POM2:
	.dw PFA_DOVARIABLE
PFA_POM2:
	.dw $F1
; ( -- addr ) System Constant
; R( -- )
; PSC2 Synchro and Output Configuration
VE_PSOC2:
	.dw $ff05
	.db "PSOC2",0
	.dw VE_HEAD
	.set VE_HEAD=VE_PSOC2
XT_PSOC2:
	.dw PFA_DOVARIABLE
PFA_PSOC2:
	.dw $F0

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
; Timer/Counter0 Output Compare Register
VE_OCR0B:
	.dw $ff05
	.db "OCR0B",0
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR0B
XT_OCR0B:
	.dw PFA_DOVARIABLE
PFA_OCR0B:
	.dw $48
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
	.dw $44
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
	.dw $45
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
; Timer/Counter1 Output Compare Register High Byte
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
; Timer/Counter1 Output Compare Register Low Byte
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
; Timer/Counter1 Output Compare Register High Byte
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
; Timer/Counter1 Output Compare Register Low Byte
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
; Timer/Counter1 Control Register C
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
.if WANT_USART == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; USART Baud Rate Register High Byte
VE_UBRRH:
	.dw $ff05
	.db "UBRRH",0
	.dw VE_HEAD
	.set VE_HEAD=VE_UBRRH
XT_UBRRH:
	.dw PFA_DOVARIABLE
PFA_UBRRH:
	.dw $C5
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
	.dw $C4
; ( -- addr ) System Constant
; R( -- )
; USART Control and Status register A
VE_UCSRA:
	.dw $ff05
	.db "UCSRA",0
	.dw VE_HEAD
	.set VE_HEAD=VE_UCSRA
XT_UCSRA:
	.dw PFA_DOVARIABLE
PFA_UCSRA:
	.dw $C0
; ( -- addr ) System Constant
; R( -- )
; USART Control an Status register B
VE_UCSRB:
	.dw $ff05
	.db "UCSRB",0
	.dw VE_HEAD
	.set VE_HEAD=VE_UCSRB
XT_UCSRB:
	.dw PFA_DOVARIABLE
PFA_UCSRB:
	.dw $C1
; ( -- addr ) System Constant
; R( -- )
; USART Control an Status register C
VE_UCSRC:
	.dw $ff05
	.db "UCSRC",0
	.dw VE_HEAD
	.set VE_HEAD=VE_UCSRC
XT_UCSRC:
	.dw PFA_DOVARIABLE
PFA_UCSRC:
	.dw $C2
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
	.dw $C6

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
