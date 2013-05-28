; Partname:  ATmega16
; generated automatically, do not edit

.nolist
	.include "m16def.inc"
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
.set WANT_TIMER_COUNTER_0 = 0
.set WANT_TIMER_COUNTER_1 = 0
.set WANT_EXTERNAL_INTERRUPT = 0
.set WANT_EEPROM = 0
.set WANT_CPU = 0
.set WANT_TIMER_COUNTER_2 = 0
.set WANT_SPI = 0
.set WANT_USART = 0
.set WANT_TWI = 0
.set WANT_ANALOG_COMPARATOR = 0
.set WANT_AD_CONVERTER = 0
.set WANT_JTAG = 0
.set WANT_BOOT_LOAD = 0
.set WANT_PORTA = 0
.set WANT_PORTB = 0
.set WANT_PORTC = 0
.set WANT_PORTD = 0
.set WANT_WATCHDOG = 0
.equ intvecsize = 2 ; please verify; flash size: 16384 bytes
.equ pclen = 2 ; please verify
.overlap
.org 2
	 rcall isr ; External Interrupt Request 0
.org 4
	 rcall isr ; External Interrupt Request 1
.org 6
	 rcall isr ; Timer/Counter2 Compare Match
.org 8
	 rcall isr ; Timer/Counter2 Overflow
.org 10
	 rcall isr ; Timer/Counter1 Capture Event
.org 12
	 rcall isr ; Timer/Counter1 Compare Match A
.org 14
	 rcall isr ; Timer/Counter1 Compare Match B
.org 16
	 rcall isr ; Timer/Counter1 Overflow
.org 18
	 rcall isr ; Timer/Counter0 Overflow
.org 20
	 rcall isr ; Serial Transfer Complete
.org 22
	 rcall isr ; USART, Rx Complete
.org 24
	 rcall isr ; USART Data Register Empty
.org 26
	 rcall isr ; USART, Tx Complete
.org 28
	 rcall isr ; ADC Conversion Complete
.org 30
	 rcall isr ; EEPROM Ready
.org 32
	 rcall isr ; Analog Comparator
.org 34
	 rcall isr ; 2-wire Serial Interface
.org 36
	 rcall isr ; External Interrupt Request 2
.org 38
	 rcall isr ; Timer/Counter0 Compare Match
.org 40
	 rcall isr ; Store Program Memory Ready
.equ INTVECTORS = 21
.nooverlap

; compatability layer (maybe empty)
.equ EEPE = EEWE
.equ EEMPE = EEMWE

; controller data area, environment query mcu-info
mcu_info:
mcu_ramsize:
	.dw 1024
mcu_eepromsize:
	.dw 512
mcu_maxdp:
	.dw 14336 
mcu_numints:
	.dw 21
mcu_name:
	.dw  8
	.db "ATmega16"
.set codestart=pc
