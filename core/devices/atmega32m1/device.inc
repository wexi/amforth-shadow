; Partname:  ATmega32M1
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
.if WANT_CAN == 1
; ( -- addr ) System Constant
; R( -- )
; CAN General Control Register
VE_CANGCON:
	.dw $ff07
	.db "CANGCON",0
	.dw VE_HEAD
	.set VE_HEAD=VE_CANGCON
XT_CANGCON:
	.dw PFA_DOVARIABLE
PFA_CANGCON:
	.dw 216
; ( -- addr ) System Constant
; R( -- )
; CAN General Status Register
VE_CANGSTA:
	.dw $ff07
	.db "CANGSTA",0
	.dw VE_HEAD
	.set VE_HEAD=VE_CANGSTA
XT_CANGSTA:
	.dw PFA_DOVARIABLE
PFA_CANGSTA:
	.dw 217
; ( -- addr ) System Constant
; R( -- )
; CAN General Interrupt Register Flags
VE_CANGIT:
	.dw $ff06
	.db "CANGIT"
	.dw VE_HEAD
	.set VE_HEAD=VE_CANGIT
XT_CANGIT:
	.dw PFA_DOVARIABLE
PFA_CANGIT:
	.dw 218
; ( -- addr ) System Constant
; R( -- )
; CAN General Interrupt Enable Register
VE_CANGIE:
	.dw $ff06
	.db "CANGIE"
	.dw VE_HEAD
	.set VE_HEAD=VE_CANGIE
XT_CANGIE:
	.dw PFA_DOVARIABLE
PFA_CANGIE:
	.dw 219
; ( -- addr ) System Constant
; R( -- )
; Enable MOb Register 2
VE_CANEN2:
	.dw $ff06
	.db "CANEN2"
	.dw VE_HEAD
	.set VE_HEAD=VE_CANEN2
XT_CANEN2:
	.dw PFA_DOVARIABLE
PFA_CANEN2:
	.dw 220
; ( -- addr ) System Constant
; R( -- )
; Enable MOb Register 1(empty)
VE_CANEN1:
	.dw $ff06
	.db "CANEN1"
	.dw VE_HEAD
	.set VE_HEAD=VE_CANEN1
XT_CANEN1:
	.dw PFA_DOVARIABLE
PFA_CANEN1:
	.dw 221
; ( -- addr ) System Constant
; R( -- )
; Enable Interrupt MOb Register 2
VE_CANIE2:
	.dw $ff06
	.db "CANIE2"
	.dw VE_HEAD
	.set VE_HEAD=VE_CANIE2
XT_CANIE2:
	.dw PFA_DOVARIABLE
PFA_CANIE2:
	.dw 222
; ( -- addr ) System Constant
; R( -- )
; Enable Interrupt MOb Register 1 (empty)
VE_CANIE1:
	.dw $ff06
	.db "CANIE1"
	.dw VE_HEAD
	.set VE_HEAD=VE_CANIE1
XT_CANIE1:
	.dw PFA_DOVARIABLE
PFA_CANIE1:
	.dw 223
; ( -- addr ) System Constant
; R( -- )
; CAN Status Interrupt MOb Register 2
VE_CANSIT2:
	.dw $ff07
	.db "CANSIT2",0
	.dw VE_HEAD
	.set VE_HEAD=VE_CANSIT2
XT_CANSIT2:
	.dw PFA_DOVARIABLE
PFA_CANSIT2:
	.dw 224
; ( -- addr ) System Constant
; R( -- )
; CAN Status Interrupt MOb Register 1 (empty)
VE_CANSIT1:
	.dw $ff07
	.db "CANSIT1",0
	.dw VE_HEAD
	.set VE_HEAD=VE_CANSIT1
XT_CANSIT1:
	.dw PFA_DOVARIABLE
PFA_CANSIT1:
	.dw 225
; ( -- addr ) System Constant
; R( -- )
; CAN Bit Timing Register 1
VE_CANBT1:
	.dw $ff06
	.db "CANBT1"
	.dw VE_HEAD
	.set VE_HEAD=VE_CANBT1
XT_CANBT1:
	.dw PFA_DOVARIABLE
PFA_CANBT1:
	.dw 226
; ( -- addr ) System Constant
; R( -- )
; CAN Bit Timing Register 2
VE_CANBT2:
	.dw $ff06
	.db "CANBT2"
	.dw VE_HEAD
	.set VE_HEAD=VE_CANBT2
XT_CANBT2:
	.dw PFA_DOVARIABLE
PFA_CANBT2:
	.dw 227
; ( -- addr ) System Constant
; R( -- )
; CAN Bit Timing Register 3
VE_CANBT3:
	.dw $ff06
	.db "CANBT3"
	.dw VE_HEAD
	.set VE_HEAD=VE_CANBT3
XT_CANBT3:
	.dw PFA_DOVARIABLE
PFA_CANBT3:
	.dw 228
; ( -- addr ) System Constant
; R( -- )
; Timer Control Register
VE_CANTCON:
	.dw $ff07
	.db "CANTCON",0
	.dw VE_HEAD
	.set VE_HEAD=VE_CANTCON
XT_CANTCON:
	.dw PFA_DOVARIABLE
PFA_CANTCON:
	.dw 229
; ( -- addr ) System Constant
; R( -- )
; Timer Register Low
VE_CANTIML:
	.dw $ff07
	.db "CANTIML",0
	.dw VE_HEAD
	.set VE_HEAD=VE_CANTIML
XT_CANTIML:
	.dw PFA_DOVARIABLE
PFA_CANTIML:
	.dw 230
; ( -- addr ) System Constant
; R( -- )
; Timer Register High
VE_CANTIMH:
	.dw $ff07
	.db "CANTIMH",0
	.dw VE_HEAD
	.set VE_HEAD=VE_CANTIMH
XT_CANTIMH:
	.dw PFA_DOVARIABLE
PFA_CANTIMH:
	.dw 231
; ( -- addr ) System Constant
; R( -- )
; TTC Timer Register Low
VE_CANTTCL:
	.dw $ff07
	.db "CANTTCL",0
	.dw VE_HEAD
	.set VE_HEAD=VE_CANTTCL
XT_CANTTCL:
	.dw PFA_DOVARIABLE
PFA_CANTTCL:
	.dw 232
; ( -- addr ) System Constant
; R( -- )
; TTC Timer Register High
VE_CANTTCH:
	.dw $ff07
	.db "CANTTCH",0
	.dw VE_HEAD
	.set VE_HEAD=VE_CANTTCH
XT_CANTTCH:
	.dw PFA_DOVARIABLE
PFA_CANTTCH:
	.dw 233
; ( -- addr ) System Constant
; R( -- )
; Transmit Error Counter Register
VE_CANTEC:
	.dw $ff06
	.db "CANTEC"
	.dw VE_HEAD
	.set VE_HEAD=VE_CANTEC
XT_CANTEC:
	.dw PFA_DOVARIABLE
PFA_CANTEC:
	.dw 234
; ( -- addr ) System Constant
; R( -- )
; Receive Error Counter Register
VE_CANREC:
	.dw $ff06
	.db "CANREC"
	.dw VE_HEAD
	.set VE_HEAD=VE_CANREC
XT_CANREC:
	.dw PFA_DOVARIABLE
PFA_CANREC:
	.dw 235
; ( -- addr ) System Constant
; R( -- )
; Highest Priority MOb Register
VE_CANHPMOB:
	.dw $ff08
	.db "CANHPMOB"
	.dw VE_HEAD
	.set VE_HEAD=VE_CANHPMOB
XT_CANHPMOB:
	.dw PFA_DOVARIABLE
PFA_CANHPMOB:
	.dw 236
; ( -- addr ) System Constant
; R( -- )
; Page MOb Register
VE_CANPAGE:
	.dw $ff07
	.db "CANPAGE",0
	.dw VE_HEAD
	.set VE_HEAD=VE_CANPAGE
XT_CANPAGE:
	.dw PFA_DOVARIABLE
PFA_CANPAGE:
	.dw 237
; ( -- addr ) System Constant
; R( -- )
; MOb Status Register
VE_CANSTMOB:
	.dw $ff08
	.db "CANSTMOB"
	.dw VE_HEAD
	.set VE_HEAD=VE_CANSTMOB
XT_CANSTMOB:
	.dw PFA_DOVARIABLE
PFA_CANSTMOB:
	.dw 238
; ( -- addr ) System Constant
; R( -- )
; MOb Control and DLC Register
VE_CANCDMOB:
	.dw $ff08
	.db "CANCDMOB"
	.dw VE_HEAD
	.set VE_HEAD=VE_CANCDMOB
XT_CANCDMOB:
	.dw PFA_DOVARIABLE
PFA_CANCDMOB:
	.dw 239
; ( -- addr ) System Constant
; R( -- )
; Identifier Tag Register 4
VE_CANIDT4:
	.dw $ff07
	.db "CANIDT4",0
	.dw VE_HEAD
	.set VE_HEAD=VE_CANIDT4
XT_CANIDT4:
	.dw PFA_DOVARIABLE
PFA_CANIDT4:
	.dw 240
; ( -- addr ) System Constant
; R( -- )
; Identifier Tag Register 3
VE_CANIDT3:
	.dw $ff07
	.db "CANIDT3",0
	.dw VE_HEAD
	.set VE_HEAD=VE_CANIDT3
XT_CANIDT3:
	.dw PFA_DOVARIABLE
PFA_CANIDT3:
	.dw 241
; ( -- addr ) System Constant
; R( -- )
; Identifier Tag Register 2
VE_CANIDT2:
	.dw $ff07
	.db "CANIDT2",0
	.dw VE_HEAD
	.set VE_HEAD=VE_CANIDT2
XT_CANIDT2:
	.dw PFA_DOVARIABLE
PFA_CANIDT2:
	.dw 242
; ( -- addr ) System Constant
; R( -- )
; Identifier Tag Register 1
VE_CANIDT1:
	.dw $ff07
	.db "CANIDT1",0
	.dw VE_HEAD
	.set VE_HEAD=VE_CANIDT1
XT_CANIDT1:
	.dw PFA_DOVARIABLE
PFA_CANIDT1:
	.dw 243
; ( -- addr ) System Constant
; R( -- )
; Identifier Mask Register 4
VE_CANIDM4:
	.dw $ff07
	.db "CANIDM4",0
	.dw VE_HEAD
	.set VE_HEAD=VE_CANIDM4
XT_CANIDM4:
	.dw PFA_DOVARIABLE
PFA_CANIDM4:
	.dw 244
; ( -- addr ) System Constant
; R( -- )
; Identifier Mask Register 3
VE_CANIDM3:
	.dw $ff07
	.db "CANIDM3",0
	.dw VE_HEAD
	.set VE_HEAD=VE_CANIDM3
XT_CANIDM3:
	.dw PFA_DOVARIABLE
PFA_CANIDM3:
	.dw 245
; ( -- addr ) System Constant
; R( -- )
; Identifier Mask Register 2
VE_CANIDM2:
	.dw $ff07
	.db "CANIDM2",0
	.dw VE_HEAD
	.set VE_HEAD=VE_CANIDM2
XT_CANIDM2:
	.dw PFA_DOVARIABLE
PFA_CANIDM2:
	.dw 246
; ( -- addr ) System Constant
; R( -- )
; Identifier Mask Register 1
VE_CANIDM1:
	.dw $ff07
	.db "CANIDM1",0
	.dw VE_HEAD
	.set VE_HEAD=VE_CANIDM1
XT_CANIDM1:
	.dw PFA_DOVARIABLE
PFA_CANIDM1:
	.dw 247
; ( -- addr ) System Constant
; R( -- )
; Time Stamp Register Low
VE_CANSTML:
	.dw $ff07
	.db "CANSTML",0
	.dw VE_HEAD
	.set VE_HEAD=VE_CANSTML
XT_CANSTML:
	.dw PFA_DOVARIABLE
PFA_CANSTML:
	.dw 248
; ( -- addr ) System Constant
; R( -- )
; Time Stamp Register High
VE_CANSTMH:
	.dw $ff07
	.db "CANSTMH",0
	.dw VE_HEAD
	.set VE_HEAD=VE_CANSTMH
XT_CANSTMH:
	.dw PFA_DOVARIABLE
PFA_CANSTMH:
	.dw 249
; ( -- addr ) System Constant
; R( -- )
; Message Data Register
VE_CANMSG:
	.dw $ff06
	.db "CANMSG"
	.dw VE_HEAD
	.set VE_HEAD=VE_CANMSG
XT_CANMSG:
	.dw PFA_DOVARIABLE
PFA_CANMSG:
	.dw 250

.endif
.if WANT_ANALOG_COMPARATOR == 1
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
	.dw 148
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
	.dw 149
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
	.dw 150
; ( -- addr ) System Constant
; R( -- )
; Analog Comparator 3 Control Register
VE_AC3CON:
	.dw $ff06
	.db "AC3CON"
	.dw VE_HEAD
	.set VE_HEAD=VE_AC3CON
XT_AC3CON:
	.dw PFA_DOVARIABLE
PFA_AC3CON:
	.dw 151
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
	.dw 80

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
	.dw 146
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
	.dw 145
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
	.dw 144

.endif
.if WANT_CPU == 1
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
; General Purpose IO Register 2
VE_GPIOR2:
	.dw $ff06
	.db "GPIOR2"
	.dw VE_HEAD
	.set VE_HEAD=VE_GPIOR2
XT_GPIOR2:
	.dw PFA_DOVARIABLE
PFA_GPIOR2:
	.dw 58
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
	.dw 57
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
; PLL Control And Status Register
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
; Power Reduction Register
VE_PRR:
	.dw $ff03
	.db "PRR",0
	.dw VE_HEAD
	.set VE_HEAD=VE_PRR
XT_PRR:
	.dw PFA_DOVARIABLE
PFA_PRR:
	.dw 100

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
.if WANT_TIMER_COUNTER_0 == 1
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
	.dw 111
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
	.dw 54
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
; Timer/Counter1 Control Register C
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
; Timer/Counter1 Output Compare Register  Bytes
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
; Timer/Counter1 Output Compare Register  Bytes
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
; Digital Input Disable Register 0
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
; Digital Input Disable Register 0
VE_DIDR1:
	.dw $ff05
	.db "DIDR1",0
	.dw VE_HEAD
	.set VE_HEAD=VE_DIDR1
XT_DIDR1:
	.dw PFA_DOVARIABLE
PFA_DIDR1:
	.dw 127
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
	.dw 117
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
	.dw 118
; ( -- addr ) System Constant
; R( -- )
; 
VE_AMP2CSR:
	.dw $ff07
	.db "AMP2CSR",0
	.dw VE_HEAD
	.set VE_HEAD=VE_AMP2CSR
XT_AMP2CSR:
	.dw PFA_DOVARIABLE
PFA_AMP2CSR:
	.dw 119

.endif
.if WANT_LINUART == 1
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
	.dw 200
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
	.dw 201
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
	.dw 202
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
	.dw 203
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
	.dw 204
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
	.dw 205
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
	.dw 206
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
	.dw 207
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
	.dw 208
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
	.dw 209
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
	.dw 210

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
.if WANT_EXTERNAL_INTERRUPT == 1
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
	.dw 105
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
; ( -- addr ) System Constant
; R( -- )
; Pin Change Mask Register 3
VE_PCMSK3:
	.dw $ff06
	.db "PCMSK3"
	.dw VE_HEAD
	.set VE_HEAD=VE_PCMSK3
XT_PCMSK3:
	.dw PFA_DOVARIABLE
PFA_PCMSK3:
	.dw 109
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
	.dw 108
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
	.dw 107
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
	.dw 106
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

.endif
.if WANT_EEPROM == 1
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
.if WANT_PSC == 1
; ( -- addr ) System Constant
; R( -- )
; PSC Interrupt Flag Register
VE_PIFR:
	.dw $ff04
	.db "PIFR"
	.dw VE_HEAD
	.set VE_HEAD=VE_PIFR
XT_PIFR:
	.dw PFA_DOVARIABLE
PFA_PIFR:
	.dw 188
; ( -- addr ) System Constant
; R( -- )
; PSC Interrupt Mask Register
VE_PIM:
	.dw $ff03
	.db "PIM",0
	.dw VE_HEAD
	.set VE_HEAD=VE_PIM
XT_PIM:
	.dw PFA_DOVARIABLE
PFA_PIM:
	.dw 187
; ( -- addr ) System Constant
; R( -- )
; PSC Module 2 Input Control Register
VE_PMIC2:
	.dw $ff05
	.db "PMIC2",0
	.dw VE_HEAD
	.set VE_HEAD=VE_PMIC2
XT_PMIC2:
	.dw PFA_DOVARIABLE
PFA_PMIC2:
	.dw 186
; ( -- addr ) System Constant
; R( -- )
; PSC Module 1 Input Control Register
VE_PMIC1:
	.dw $ff05
	.db "PMIC1",0
	.dw VE_HEAD
	.set VE_HEAD=VE_PMIC1
XT_PMIC1:
	.dw PFA_DOVARIABLE
PFA_PMIC1:
	.dw 185
; ( -- addr ) System Constant
; R( -- )
; PSC Module 0 Input Control Register
VE_PMIC0:
	.dw $ff05
	.db "PMIC0",0
	.dw VE_HEAD
	.set VE_HEAD=VE_PMIC0
XT_PMIC0:
	.dw PFA_DOVARIABLE
PFA_PMIC0:
	.dw 184
; ( -- addr ) System Constant
; R( -- )
; PSC Control Register
VE_PCTL:
	.dw $ff04
	.db "PCTL"
	.dw VE_HEAD
	.set VE_HEAD=VE_PCTL
XT_PCTL:
	.dw PFA_DOVARIABLE
PFA_PCTL:
	.dw 183
; ( -- addr ) System Constant
; R( -- )
; PSC Output Configuration
VE_POC:
	.dw $ff03
	.db "POC",0
	.dw VE_HEAD
	.set VE_HEAD=VE_POC
XT_POC:
	.dw PFA_DOVARIABLE
PFA_POC:
	.dw 182
; ( -- addr ) System Constant
; R( -- )
; PSC Configuration Register
VE_PCNF:
	.dw $ff04
	.db "PCNF"
	.dw VE_HEAD
	.set VE_HEAD=VE_PCNF
XT_PCNF:
	.dw PFA_DOVARIABLE
PFA_PCNF:
	.dw 181
; ( -- addr ) System Constant
; R( -- )
; PSC Synchro Configuration
VE_PSYNC:
	.dw $ff05
	.db "PSYNC",0
	.dw VE_HEAD
	.set VE_HEAD=VE_PSYNC
XT_PSYNC:
	.dw PFA_DOVARIABLE
PFA_PSYNC:
	.dw 180
; ( -- addr ) System Constant
; R( -- )
; PSC Output Compare RB Register 
VE_POCR_RB:
	.dw $ff07
	.db "POCR_RB",0
	.dw VE_HEAD
	.set VE_HEAD=VE_POCR_RB
XT_POCR_RB:
	.dw PFA_DOVARIABLE
PFA_POCR_RB:
	.dw 178
; ( -- addr ) System Constant
; R( -- )
; PSC Module 2 Output Compare SB Register 
VE_POCR2SB:
	.dw $ff07
	.db "POCR2SB",0
	.dw VE_HEAD
	.set VE_HEAD=VE_POCR2SB
XT_POCR2SB:
	.dw PFA_DOVARIABLE
PFA_POCR2SB:
	.dw 176
; ( -- addr ) System Constant
; R( -- )
; PSC Module 2 Output Compare RA Register 
VE_POCR2RA:
	.dw $ff07
	.db "POCR2RA",0
	.dw VE_HEAD
	.set VE_HEAD=VE_POCR2RA
XT_POCR2RA:
	.dw PFA_DOVARIABLE
PFA_POCR2RA:
	.dw 174
; ( -- addr ) System Constant
; R( -- )
; PSC Module 2 Output Compare SA Register 
VE_POCR2SA:
	.dw $ff07
	.db "POCR2SA",0
	.dw VE_HEAD
	.set VE_HEAD=VE_POCR2SA
XT_POCR2SA:
	.dw PFA_DOVARIABLE
PFA_POCR2SA:
	.dw 172
; ( -- addr ) System Constant
; R( -- )
; PSC Module 1 Output Compare SB Register 
VE_POCR1SB:
	.dw $ff07
	.db "POCR1SB",0
	.dw VE_HEAD
	.set VE_HEAD=VE_POCR1SB
XT_POCR1SB:
	.dw PFA_DOVARIABLE
PFA_POCR1SB:
	.dw 170
; ( -- addr ) System Constant
; R( -- )
; PSC Module 1 Output Compare RA Register 
VE_POCR1RA:
	.dw $ff07
	.db "POCR1RA",0
	.dw VE_HEAD
	.set VE_HEAD=VE_POCR1RA
XT_POCR1RA:
	.dw PFA_DOVARIABLE
PFA_POCR1RA:
	.dw 168
; ( -- addr ) System Constant
; R( -- )
; PSC Output Compare SA Register 
VE_POCR1SA:
	.dw $ff07
	.db "POCR1SA",0
	.dw VE_HEAD
	.set VE_HEAD=VE_POCR1SA
XT_POCR1SA:
	.dw PFA_DOVARIABLE
PFA_POCR1SA:
	.dw 166
; ( -- addr ) System Constant
; R( -- )
; PSC Output Compare SB Register 
VE_POCR0SB:
	.dw $ff07
	.db "POCR0SB",0
	.dw VE_HEAD
	.set VE_HEAD=VE_POCR0SB
XT_POCR0SB:
	.dw PFA_DOVARIABLE
PFA_POCR0SB:
	.dw 164
; ( -- addr ) System Constant
; R( -- )
; PSC Module 0 Output Compare RA Register 
VE_POCR0RA:
	.dw $ff07
	.db "POCR0RA",0
	.dw VE_HEAD
	.set VE_HEAD=VE_POCR0RA
XT_POCR0RA:
	.dw PFA_DOVARIABLE
PFA_POCR0RA:
	.dw 162
; ( -- addr ) System Constant
; R( -- )
; PSC Module 0 Output Compare SA Register 
VE_POCR0SA:
	.dw $ff07
	.db "POCR0SA",0
	.dw VE_HEAD
	.set VE_HEAD=VE_POCR0SA
XT_POCR0SA:
	.dw PFA_DOVARIABLE
PFA_POCR0SA:
	.dw 160

.endif
