; Partname:  ATmega103
; Built using part description XML file version 236
; generated automatically, do not edit

.nolist
	.include "m103def.inc"
.list

.equ ramstart =  $60
.equ CELLSIZE = 2
.macro readflashcell
	clr temp7
	lsl zl
	rol zh
	rol temp7
	out_ RAMPZ, temp7
	elpm @0, Z+
	elpm @1, Z+
.endmacro
.macro writeflashcell
	clr temp7
	lsl zl
	rol zh
	rol temp7
	out_ RAMPZ, temp7
.endmacro

; the following definitions are shortcuts for the respective forth source segments if set to 1
.set WANT_AD_CONVERTER = 0
.set WANT_ANALOG_COMPARATOR = 0
.set WANT_CPU = 0
.set WANT_EEPROM = 0
.set WANT_EXTERNAL_INTERRUPT = 0
.set WANT_PORTA = 0
.set WANT_PORTB = 0
.set WANT_PORTC = 0
.set WANT_PORTD = 0
.set WANT_PORTE = 0
.set WANT_PORTF = 0
.set WANT_SPI = 0
.set WANT_TIMER_COUNTER_0 = 0
.set WANT_TIMER_COUNTER_1 = 0
.set WANT_TIMER_COUNTER_2 = 0
.set WANT_UART = 0
.set WANT_WATCHDOG = 0


.ifndef SPMEN
 .equ SPMEN = SELFPRGEN
.endif

.ifndef SPMCSR
 .equ SPMCSR = SPMCR
.endif

.ifndef EEPE
 .equ EEPE = EEWE
.endif

.ifndef EEMPE
 .equ EEMPE = EEMWE
.endif
.equ intvecsize = 2 ; please verify; flash size: 131072 bytes
.equ pclen = 2 ; please verify
.overlap
.equ INTVECTORS = 24
.org $002
	 rcall isr ; External Interrupt 0
.org $004
	 rcall isr ; External Interrupt 1
.org $006
	 rcall isr ; External Interrupt 2
.org $008
	 rcall isr ; External Interrupt 3
.org $00A
	 rcall isr ; External Interrupt 4
.org $00C
	 rcall isr ; External Interrupt 5
.org $00E
	 rcall isr ; External Interrupt 6
.org $010
	 rcall isr ; External Interrupt 7
.org $012
	 rcall isr ; Timer/Counter2 Compare Match
.org $014
	 rcall isr ; Timer/Counter2 Overflow
.org $016
	 rcall isr ; Timer/Counter1 Capture Event
.org $018
	 rcall isr ; Timer/Counter1 Compare Match A
.org $01A
	 rcall isr ; Timer/Counter1 Compare Match B
.org $01C
	 rcall isr ; Timer/Counter1 Overflow
.org $01E
	 rcall isr ; Timer/Counter0 Compare Match
.org $020
	 rcall isr ; Timer/Counter0 Overflow
.org $022
	 rcall isr ; SPI Serial Transfer Complete
.org $024
	 rcall isr ; UART, Rx Complete
.org $026
	 rcall isr ; UART Data Register Empty
.org $028
	 rcall isr ; UART, Tx Complete
.org $02A
	 rcall isr ; ADC Conversion Complete
.org $02C
	 rcall isr ; EEPROM Ready
.org $02E
	 rcall isr ; Analog Comparator
.nooverlap
mcu_info:
mcu_ramsize:
	.dw 4000
mcu_eepromsize:
	.dw 4096
mcu_maxdp:
	.dw 0 ; minimum of  (from XML) and 0xffff
mcu_numints:
	.dw 24
mcu_name:
	.dw  9
	.db "ATmega103",0
.set codestart=pc
