; Partname:  AT90PWM81
; generated automatically, no not edit

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
.if WANT_DA_CONVERTER == 1
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
	.dw 89
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
	.dw 88
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
	.dw 118

.endif
.if WANT_PORTE == 1
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
	.dw 46
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
	.dw 45
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
	.dw 44

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
	.dw 55
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
	.dw 56
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
	.dw 86

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
	.dw 130

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
	.dw 137
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
	.dw 65
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
	.dw 64

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
	.dw 40
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
	.dw 76
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
	.dw 39
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
	.dw 119
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
	.dw 120
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
	.dw 121

.endif
.if WANT_ANALOG_COMPARATOR == 1
; ( -- addr ) System Constant
; R( -- )
; Analog Comparator3 Control Register
VE_AC3CON:
	.dw $ff06
	.db "AC3CON"
	.dw VE_HEAD
	.set VE_HEAD=VE_AC3CON
XT_AC3CON:
	.dw PFA_DOVARIABLE
PFA_AC3CON:
	.dw 127
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
	.dw 125
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
	.dw 126
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
	.dw 32
; ( -- addr ) System Constant
; R( -- )
; 
VE_AC3ECON:
	.dw $ff07
	.db "AC3ECON",0
	.dw VE_HEAD
	.set VE_HEAD=VE_AC3ECON
XT_AC3ECON:
	.dw PFA_DOVARIABLE
PFA_AC3ECON:
	.dw 124
; ( -- addr ) System Constant
; R( -- )
; 
VE_AC2ECON:
	.dw $ff07
	.db "AC2ECON",0
	.dw VE_HEAD
	.set VE_HEAD=VE_AC2ECON
XT_AC2ECON:
	.dw PFA_DOVARIABLE
PFA_AC2ECON:
	.dw 123
; ( -- addr ) System Constant
; R( -- )
; 
VE_AC1ECON:
	.dw $ff07
	.db "AC1ECON",0
	.dw VE_HEAD
	.set VE_HEAD=VE_AC1ECON
XT_AC1ECON:
	.dw PFA_DOVARIABLE
PFA_AC1ECON:
	.dw 122

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
	.dw 136
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
	.dw 131
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
; General Purpose IO Register 2
VE_GPIOR2:
	.dw $ff06
	.db "GPIOR2"
	.dw VE_HEAD
	.set VE_HEAD=VE_GPIOR2
XT_GPIOR2:
	.dw PFA_DOVARIABLE
PFA_GPIOR2:
	.dw 59
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
	.dw 58
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
	.dw 57
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
	.dw 135
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
	.dw 134
; ( -- addr ) System Constant
; R( -- )
; 
VE_CLKCSR:
	.dw $ff06
	.db "CLKCSR"
	.dw VE_HEAD
	.set VE_HEAD=VE_CLKCSR
XT_CLKCSR:
	.dw PFA_DOVARIABLE
PFA_CLKCSR:
	.dw 132
; ( -- addr ) System Constant
; R( -- )
; 
VE_CLKSELR:
	.dw $ff07
	.db "CLKSELR",0
	.dw VE_HEAD
	.set VE_HEAD=VE_CLKSELR
XT_CLKSELR:
	.dw PFA_DOVARIABLE
PFA_CLKSELR:
	.dw 133
; ( -- addr ) System Constant
; R( -- )
; BandGap Current Calibration Register
VE_BGCCR:
	.dw $ff05
	.db "BGCCR",0
	.dw VE_HEAD
	.set VE_HEAD=VE_BGCCR
XT_BGCCR:
	.dw PFA_DOVARIABLE
PFA_BGCCR:
	.dw 129
; ( -- addr ) System Constant
; R( -- )
; BandGap Resistor Calibration Register
VE_BGCRR:
	.dw $ff05
	.db "BGCRR",0
	.dw VE_HEAD
	.set VE_HEAD=VE_BGCRR
XT_BGCRR:
	.dw PFA_DOVARIABLE
PFA_BGCRR:
	.dw 128

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
.if WANT_PSC0 == 1
; ( -- addr ) System Constant
; R( -- )
; PSC 0 Input Capture Register 
VE_PICR0:
	.dw $ff05
	.db "PICR0",0
	.dw VE_HEAD
	.set VE_HEAD=VE_PICR0
XT_PICR0:
	.dw PFA_DOVARIABLE
PFA_PICR0:
	.dw 104
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
	.dw 99
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
	.dw 98
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
	.dw 50
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
	.dw 49
; ( -- addr ) System Constant
; R( -- )
; Output Compare RB Register 
VE_OCR0RB:
	.dw $ff06
	.db "OCR0RB"
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR0RB
XT_OCR0RB:
	.dw PFA_DOVARIABLE
PFA_OCR0RB:
	.dw 68
; ( -- addr ) System Constant
; R( -- )
; Output Compare SB Register 
VE_OCR0SB:
	.dw $ff06
	.db "OCR0SB"
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR0SB
XT_OCR0SB:
	.dw PFA_DOVARIABLE
PFA_OCR0SB:
	.dw 66
; ( -- addr ) System Constant
; R( -- )
; Output Compare RA Register 
VE_OCR0RA:
	.dw $ff06
	.db "OCR0RA"
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR0RA
XT_OCR0RA:
	.dw PFA_DOVARIABLE
PFA_OCR0RA:
	.dw 74
; ( -- addr ) System Constant
; R( -- )
; Output Compare SA Register 
VE_OCR0SA:
	.dw $ff06
	.db "OCR0SA"
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR0SA
XT_OCR0SA:
	.dw PFA_DOVARIABLE
PFA_OCR0SA:
	.dw 96
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
	.dw 106
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
	.dw 47
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
	.dw 48

.endif
.if WANT_PSC2 == 1
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
	.dw 109
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
	.dw 108
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
	.dw 103
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
	.dw 102
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
	.dw 54
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
	.dw 53
; ( -- addr ) System Constant
; R( -- )
; PSC 2 Enhanced Configuration Register
VE_PCNFE2:
	.dw $ff06
	.db "PCNFE2"
	.dw VE_HEAD
	.set VE_HEAD=VE_PCNFE2
XT_PCNFE2:
	.dw PFA_DOVARIABLE
PFA_PCNFE2:
	.dw 112
; ( -- addr ) System Constant
; R( -- )
; Output Compare RB Register 
VE_OCR2RB:
	.dw $ff06
	.db "OCR2RB"
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR2RB
XT_OCR2RB:
	.dw PFA_DOVARIABLE
PFA_OCR2RB:
	.dw 72
; ( -- addr ) System Constant
; R( -- )
; Output Compare SB Register 
VE_OCR2SB:
	.dw $ff06
	.db "OCR2SB"
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR2SB
XT_OCR2SB:
	.dw PFA_DOVARIABLE
PFA_OCR2SB:
	.dw 70
; ( -- addr ) System Constant
; R( -- )
; Output Compare RA Register 
VE_OCR2RA:
	.dw $ff06
	.db "OCR2RA"
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR2RA
XT_OCR2RA:
	.dw PFA_DOVARIABLE
PFA_OCR2RA:
	.dw 78
; ( -- addr ) System Constant
; R( -- )
; Output Compare SA Register 
VE_OCR2SA:
	.dw $ff06
	.db "OCR2SA"
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR2SA
XT_OCR2SA:
	.dw PFA_DOVARIABLE
PFA_OCR2SA:
	.dw 100
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
	.dw 111
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
	.dw 110
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
	.dw 51
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
	.dw 52
; ( -- addr ) System Constant
; R( -- )
; Analog Synchronization Delay Register
VE_PASDLY2:
	.dw $ff07
	.db "PASDLY2",0
	.dw VE_HEAD
	.set VE_HEAD=VE_PASDLY2
XT_PASDLY2:
	.dw PFA_DOVARIABLE
PFA_PASDLY2:
	.dw 113

.endif
.if WANT_TIMER_COUNTER_1 == 1
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
	.dw 33
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
	.dw 34
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
	.dw 138
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
	.dw 90
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
	.dw 140

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
