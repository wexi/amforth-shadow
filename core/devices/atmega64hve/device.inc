; Partname:  ATmega64HVE
; Built using part description XML file version 1
; generated automatically, no not edit

; ********
.if WANT_AD_CONVERTER == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; ADC Control Register A
VE_ADCRA:
	.dw $ff05
	.db "ADCRA",0
	.dw VE_HEAD
	.set VE_HEAD=VE_ADCRA
XT_ADCRA:
	.dw PFA_DOVARIABLE
PFA_ADCRA:
	.dw $e2
; ( -- addr ) System Constant
; R( -- )
; ADC Control Register B
VE_ADCRB:
	.dw $ff05
	.db "ADCRB",0
	.dw VE_HEAD
	.set VE_HEAD=VE_ADCRB
XT_ADCRB:
	.dw PFA_DOVARIABLE
PFA_ADCRB:
	.dw $e3
; ( -- addr ) System Constant
; R( -- )
; ADC Control Register B
VE_ADCRC:
	.dw $ff05
	.db "ADCRC",0
	.dw VE_HEAD
	.set VE_HEAD=VE_ADCRC
XT_ADCRC:
	.dw PFA_DOVARIABLE
PFA_ADCRC:
	.dw $e4
; ( -- addr ) System Constant
; R( -- )
; ADC Control Register D
VE_ADCRD:
	.dw $ff05
	.db "ADCRD",0
	.dw VE_HEAD
	.set VE_HEAD=VE_ADCRD
XT_ADCRD:
	.dw PFA_DOVARIABLE
PFA_ADCRD:
	.dw $e5
; ( -- addr ) System Constant
; R( -- )
; ADC Control Register E
VE_ADCRE:
	.dw $ff05
	.db "ADCRE",0
	.dw VE_HEAD
	.set VE_HEAD=VE_ADCRE
XT_ADCRE:
	.dw PFA_DOVARIABLE
PFA_ADCRE:
	.dw $e6
; ( -- addr ) System Constant
; R( -- )
; ADC Interrupt Flag Register
VE_ADIFR:
	.dw $ff05
	.db "ADIFR",0
	.dw VE_HEAD
	.set VE_HEAD=VE_ADIFR
XT_ADIFR:
	.dw PFA_DOVARIABLE
PFA_ADIFR:
	.dw $e7
; ( -- addr ) System Constant
; R( -- )
; ADC Interrupt Mask Register
VE_ADIMR:
	.dw $ff05
	.db "ADIMR",0
	.dw VE_HEAD
	.set VE_HEAD=VE_ADIMR
XT_ADIMR:
	.dw PFA_DOVARIABLE
PFA_ADIMR:
	.dw $e8
; ( -- addr ) System Constant
; R( -- )
; ADC Synchronization Control and Status Register
VE_ADSCSRA:
	.dw $ff07
	.db "ADSCSRA",0
	.dw VE_HEAD
	.set VE_HEAD=VE_ADSCSRA
XT_ADSCSRA:
	.dw PFA_DOVARIABLE
PFA_ADSCSRA:
	.dw $e0
; ( -- addr ) System Constant
; R( -- )
; ADC Synchronization Control and Status Register
VE_ADSCSRB:
	.dw $ff07
	.db "ADSCSRB",0
	.dw VE_HEAD
	.set VE_HEAD=VE_ADSCSRB
XT_ADSCSRB:
	.dw PFA_DOVARIABLE
PFA_ADSCSRB:
	.dw $e1
; ( -- addr ) System Constant
; R( -- )
; C-ADC Accumulated Conversion Result
VE_CADAC0:
	.dw $ff06
	.db "CADAC0"
	.dw VE_HEAD
	.set VE_HEAD=VE_CADAC0
XT_CADAC0:
	.dw PFA_DOVARIABLE
PFA_CADAC0:
	.dw $ed
; ( -- addr ) System Constant
; R( -- )
; C-ADC Accumulated Conversion Result
VE_CADAC1:
	.dw $ff06
	.db "CADAC1"
	.dw VE_HEAD
	.set VE_HEAD=VE_CADAC1
XT_CADAC1:
	.dw PFA_DOVARIABLE
PFA_CADAC1:
	.dw $ee
; ( -- addr ) System Constant
; R( -- )
; C-ADC Accumulated Conversion Result
VE_CADAC2:
	.dw $ff06
	.db "CADAC2"
	.dw VE_HEAD
	.set VE_HEAD=VE_CADAC2
XT_CADAC2:
	.dw PFA_DOVARIABLE
PFA_CADAC2:
	.dw $ef
; ( -- addr ) System Constant
; R( -- )
; C-ADC Accumulated Conversion Result
VE_CADAC3:
	.dw $ff06
	.db "CADAC3"
	.dw VE_HEAD
	.set VE_HEAD=VE_CADAC3
XT_CADAC3:
	.dw PFA_DOVARIABLE
PFA_CADAC3:
	.dw $f0
; ( -- addr ) System Constant
; R( -- )
; C-ADC Instantaneous Conversion Result
VE_CADICH:
	.dw $ff06
	.db "CADICH"
	.dw VE_HEAD
	.set VE_HEAD=VE_CADICH
XT_CADICH:
	.dw PFA_DOVARIABLE
PFA_CADICH:
	.dw $ec
; ( -- addr ) System Constant
; R( -- )
; C-ADC Instantaneous Conversion Result
VE_CADICL:
	.dw $ff06
	.db "CADICL"
	.dw VE_HEAD
	.set VE_HEAD=VE_CADICL
XT_CADICL:
	.dw PFA_DOVARIABLE
PFA_CADICL:
	.dw $eb
; ( -- addr ) System Constant
; R( -- )
; CC-ADC Regulator Current Comparator Threshold Level
VE_CADRCLH:
	.dw $ff07
	.db "CADRCLH",0
	.dw VE_HEAD
	.set VE_HEAD=VE_CADRCLH
XT_CADRCLH:
	.dw PFA_DOVARIABLE
PFA_CADRCLH:
	.dw $ea
; ( -- addr ) System Constant
; R( -- )
; CC-ADC Regulator Current Comparator Threshold Level
VE_CADRCLL:
	.dw $ff07
	.db "CADRCLL",0
	.dw VE_HEAD
	.set VE_HEAD=VE_CADRCLL
XT_CADRCLL:
	.dw PFA_DOVARIABLE
PFA_CADRCLL:
	.dw $e9
; ( -- addr ) System Constant
; R( -- )
; V-ADC Accumulated Conversion Result
VE_VADAC0:
	.dw $ff06
	.db "VADAC0"
	.dw VE_HEAD
	.set VE_HEAD=VE_VADAC0
XT_VADAC0:
	.dw PFA_DOVARIABLE
PFA_VADAC0:
	.dw $f3
; ( -- addr ) System Constant
; R( -- )
; V-ADC Accumulated Conversion Result
VE_VADAC1:
	.dw $ff06
	.db "VADAC1"
	.dw VE_HEAD
	.set VE_HEAD=VE_VADAC1
XT_VADAC1:
	.dw PFA_DOVARIABLE
PFA_VADAC1:
	.dw $f4
; ( -- addr ) System Constant
; R( -- )
; V-ADC Accumulated Conversion Result
VE_VADAC2:
	.dw $ff06
	.db "VADAC2"
	.dw VE_HEAD
	.set VE_HEAD=VE_VADAC2
XT_VADAC2:
	.dw PFA_DOVARIABLE
PFA_VADAC2:
	.dw $f5
; ( -- addr ) System Constant
; R( -- )
; V-ADC Accumulated Conversion Result
VE_VADAC3:
	.dw $ff06
	.db "VADAC3"
	.dw VE_HEAD
	.set VE_HEAD=VE_VADAC3
XT_VADAC3:
	.dw PFA_DOVARIABLE
PFA_VADAC3:
	.dw $f6
; ( -- addr ) System Constant
; R( -- )
; V-ADC Instantaneous Conversion Result
VE_VADICH:
	.dw $ff06
	.db "VADICH"
	.dw VE_HEAD
	.set VE_HEAD=VE_VADICH
XT_VADICH:
	.dw PFA_DOVARIABLE
PFA_VADICH:
	.dw $f2
; ( -- addr ) System Constant
; R( -- )
; V-ADC Instantaneous Conversion Result
VE_VADICL:
	.dw $ff06
	.db "VADICL"
	.dw VE_HEAD
	.set VE_HEAD=VE_VADICL
XT_VADICL:
	.dw PFA_DOVARIABLE
PFA_VADICL:
	.dw $f1

.endif

; ********
.if WANT_BANDGAP == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; Band Gap Calibration Register A
VE_BGCRA:
	.dw $ff05
	.db "BGCRA",0
	.dw VE_HEAD
	.set VE_HEAD=VE_BGCRA
XT_BGCRA:
	.dw PFA_DOVARIABLE
PFA_BGCRA:
	.dw $d3
; ( -- addr ) System Constant
; R( -- )
; Band Gap Calibration Register B
VE_BGCRB:
	.dw $ff05
	.db "BGCRB",0
	.dw VE_HEAD
	.set VE_HEAD=VE_BGCRB
XT_BGCRB:
	.dw PFA_DOVARIABLE
PFA_BGCRB:
	.dw $d2
; ( -- addr ) System Constant
; R( -- )
; Bandgap Control and Status Register A
VE_BGCSRA:
	.dw $ff06
	.db "BGCSRA"
	.dw VE_HEAD
	.set VE_HEAD=VE_BGCSRA
XT_BGCSRA:
	.dw PFA_DOVARIABLE
PFA_BGCSRA:
	.dw $d1
; ( -- addr ) System Constant
; R( -- )
; Band Gap Lock Register
VE_BGLR:
	.dw $ff04
	.db "BGLR"
	.dw VE_HEAD
	.set VE_HEAD=VE_BGLR
XT_BGLR:
	.dw PFA_DOVARIABLE
PFA_BGLR:
	.dw $d4

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
; PLL Control and Status Register
VE_PLLCSR:
	.dw $ff06
	.db "PLLCSR"
	.dw VE_HEAD
	.set VE_HEAD=VE_PLLCSR
XT_PLLCSR:
	.dw PFA_DOVARIABLE
PFA_PLLCSR:
	.dw $d8
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
; Slow Oscillator Calibration Register A
VE_SOSCCALA:
	.dw $ff08
	.db "SOSCCALA"
	.dw VE_HEAD
	.set VE_HEAD=VE_SOSCCALA
XT_SOSCCALA:
	.dw PFA_DOVARIABLE
PFA_SOSCCALA:
	.dw $66
; ( -- addr ) System Constant
; R( -- )
; Oscillator Calibration Register B
VE_SOSCCALB:
	.dw $ff08
	.db "SOSCCALB"
	.dw VE_HEAD
	.set VE_HEAD=VE_SOSCCALB
XT_SOSCCALB:
	.dw PFA_DOVARIABLE
PFA_SOSCCALB:
	.dw $67
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
; EEPROM Read/Write Access
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
; Pin Change Enable Mask Register 0
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
; Pin Change Enable Mask Register 1
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
.if WANT_LINUART == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; LIN Baud Rate High Register
VE_LINBRRH:
	.dw $ff07
	.db "LINBRRH",0
	.dw VE_HEAD
	.set VE_HEAD=VE_LINBRRH
XT_LINBRRH:
	.dw PFA_DOVARIABLE
PFA_LINBRRH:
	.dw $c6
; ( -- addr ) System Constant
; R( -- )
; LIN Baud Rate Low Register
VE_LINBRRL:
	.dw $ff07
	.db "LINBRRL",0
	.dw VE_HEAD
	.set VE_HEAD=VE_LINBRRL
XT_LINBRRL:
	.dw PFA_DOVARIABLE
PFA_LINBRRL:
	.dw $c5
; ( -- addr ) System Constant
; R( -- )
; LIN Bit Timing Register
VE_LINBTR:
	.dw $ff06
	.db "LINBTR"
	.dw VE_HEAD
	.set VE_HEAD=VE_LINBTR
XT_LINBTR:
	.dw PFA_DOVARIABLE
PFA_LINBTR:
	.dw $c4
; ( -- addr ) System Constant
; R( -- )
; LIN Control Register
VE_LINCR:
	.dw $ff05
	.db "LINCR",0
	.dw VE_HEAD
	.set VE_HEAD=VE_LINCR
XT_LINCR:
	.dw PFA_DOVARIABLE
PFA_LINCR:
	.dw $c0
; ( -- addr ) System Constant
; R( -- )
; LIN Data Register
VE_LINDAT:
	.dw $ff06
	.db "LINDAT"
	.dw VE_HEAD
	.set VE_HEAD=VE_LINDAT
XT_LINDAT:
	.dw PFA_DOVARIABLE
PFA_LINDAT:
	.dw $cA
; ( -- addr ) System Constant
; R( -- )
; LIN Data Length Register
VE_LINDLR:
	.dw $ff06
	.db "LINDLR"
	.dw VE_HEAD
	.set VE_HEAD=VE_LINDLR
XT_LINDLR:
	.dw PFA_DOVARIABLE
PFA_LINDLR:
	.dw $c7
; ( -- addr ) System Constant
; R( -- )
; LIN Enable Interrupt Register
VE_LINENIR:
	.dw $ff07
	.db "LINENIR",0
	.dw VE_HEAD
	.set VE_HEAD=VE_LINENIR
XT_LINENIR:
	.dw PFA_DOVARIABLE
PFA_LINENIR:
	.dw $c2
; ( -- addr ) System Constant
; R( -- )
; LIN Error Register
VE_LINERR:
	.dw $ff06
	.db "LINERR"
	.dw VE_HEAD
	.set VE_HEAD=VE_LINERR
XT_LINERR:
	.dw PFA_DOVARIABLE
PFA_LINERR:
	.dw $c3
; ( -- addr ) System Constant
; R( -- )
; LIN Identifier Register
VE_LINIDR:
	.dw $ff06
	.db "LINIDR"
	.dw VE_HEAD
	.set VE_HEAD=VE_LINIDR
XT_LINIDR:
	.dw PFA_DOVARIABLE
PFA_LINIDR:
	.dw $c8
; ( -- addr ) System Constant
; R( -- )
; LIN Data Buffer Selection Register
VE_LINSEL:
	.dw $ff06
	.db "LINSEL"
	.dw VE_HEAD
	.set VE_HEAD=VE_LINSEL
XT_LINSEL:
	.dw PFA_DOVARIABLE
PFA_LINSEL:
	.dw $c9
; ( -- addr ) System Constant
; R( -- )
; LIN Status and Interrupt Register
VE_LINSIR:
	.dw $ff06
	.db "LINSIR"
	.dw VE_HEAD
	.set VE_HEAD=VE_LINSIR
XT_LINSIR:
	.dw PFA_DOVARIABLE
PFA_LINSIR:
	.dw $c1

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
; Port B Override
VE_PBOV:
	.dw $ff04
	.db "PBOV"
	.dw VE_HEAD
	.set VE_HEAD=VE_PBOV
XT_PBOV:
	.dw PFA_DOVARIABLE
PFA_PBOV:
	.dw $dc
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
; Output Compare Register 0A 
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
; Output Compare Register B 
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
; Timer/Counter 0 Control Register A
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
; Timer/Counter0 Control Register B
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
.if WANT_WAKEUP_TIMER == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; Wake-up Timer Control and Status Register
VE_WUTCSR:
	.dw $ff06
	.db "WUTCSR"
	.dw VE_HEAD
	.set VE_HEAD=VE_WUTCSR
XT_WUTCSR:
	.dw PFA_DOVARIABLE
PFA_WUTCSR:
	.dw $62

.endif

; ********
.if WANT_WATCHDOG == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; Watchdog Timer Configuration Lock Register
VE_WDTCLR:
	.dw $ff06
	.db "WDTCLR"
	.dw VE_HEAD
	.set VE_HEAD=VE_WDTCLR
XT_WDTCLR:
	.dw PFA_DOVARIABLE
PFA_WDTCLR:
	.dw $63
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
