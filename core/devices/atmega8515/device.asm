; Partname:  ATmega8515
; generated automatically, do not edit

.nolist
	.include "m8515def.inc"
.list

.equ ramstart =  96
.equ CELLSIZE = 2
.macro readflashcell
	lsl zl
	rol zh
	lpm @0, Z+
	lpm @1, Z+
.endmacro
.macro writeflashcell
	lsl zl
	rol zh
.endmacro
.set WANT_ANALOG_COMPARATOR = 0
.set WANT_USART = 0
.set WANT_SPI = 0
.set WANT_CPU = 0
.set WANT_EXTERNAL_INTERRUPT = 0
.set WANT_WATCHDOG = 0
.set WANT_TIMER_COUNTER_0 = 0
.set WANT_TIMER_COUNTER_1 = 0
.set WANT_PORTA = 0
.set WANT_PORTB = 0
.set WANT_PORTC = 0
.set WANT_PORTD = 0
.set WANT_PORTE = 0
.set WANT_EEPROM = 0
.equ intvecsize = 1 ; please verify; flash size: 8192 bytes
.equ pclen = 2 ; please verify
.overlap
.org 1
	 rcall isr ; External Interrupt Request 0
.org 2
	 rcall isr ; External Interrupt Request 1
.org 3
	 rcall isr ; Timer/Counter1 Capture Event
.org 4
	 rcall isr ; Timer/Counter1 Compare Match A
.org 5
	 rcall isr ; Timer/Counter1 Compare MatchB
.org 6
	 rcall isr ; Timer/Counter1 Overflow
.org 7
	 rcall isr ; Timer/Counter0 Overflow
.org 8
	 rcall isr ; Serial Transfer Complete
.org 9
	 rcall isr ; USART, Rx Complete
.org 10
	 rcall isr ; USART Data Register Empty
.org 11
	 rcall isr ; USART, Tx Complete
.org 12
	 rcall isr ; Analog Comparator
.org 13
	 rcall isr ; External Interrupt Request 2
.org 14
	 rcall isr ; Timer 0 Compare Match
.org 15
	 rcall isr ; EEPROM Ready
.org 16
	 rcall isr ; Store Program Memory Ready
.equ INTVECTORS = 17
.nooverlap

; compatability layer (maybe empty)
.equ SPMCSR = SPMCR
.equ EEPE = EEWE
.equ EEMPE = EEMWE

; controller data area, environment query mcu-info
mcu_info:
mcu_ramsize:
	.dw 512
mcu_eepromsize:
	.dw 512
mcu_maxdp:
	.dw 6144 
mcu_numints:
	.dw 17
mcu_name:
	.dw 10
	.db "ATmega8515"
.set codestart=pc
