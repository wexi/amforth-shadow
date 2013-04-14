; Partname:  ATmega328P
; generated automatically, do not edit

.nolist
	.include "m328Pdef.inc"
.list

.equ ramstart =  256
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
.set WANT_USART0 = 0
.set WANT_TWI = 0
.set WANT_TIMER_COUNTER_1 = 0
.set WANT_TIMER_COUNTER_2 = 0
.set WANT_AD_CONVERTER = 0
.set WANT_ANALOG_COMPARATOR = 0
.set WANT_PORTB = 0
.set WANT_PORTC = 0
.set WANT_PORTD = 0
.set WANT_TIMER_COUNTER_0 = 0
.set WANT_EXTERNAL_INTERRUPT = 0
.set WANT_SPI = 0
.set WANT_WATCHDOG = 0
.set WANT_CPU = 0
.set WANT_EEPROM = 0
.equ intvecsize = 2 ; please verify; flash size: 32768 bytes
.equ pclen = 2 ; please verify
.overlap
.org 2
	 rcall isr ; External Interrupt Request 0
.org 4
	 rcall isr ; External Interrupt Request 1
.org 6
	 rcall isr ; Pin Change Interrupt Request 0
.org 8
	 rcall isr ; Pin Change Interrupt Request 0
.org 10
	 rcall isr ; Pin Change Interrupt Request 1
.org 12
	 rcall isr ; Watchdog Time-out Interrupt
.org 14
	 rcall isr ; Timer/Counter2 Compare Match A
.org 16
	 rcall isr ; Timer/Counter2 Compare Match A
.org 18
	 rcall isr ; Timer/Counter2 Overflow
.org 20
	 rcall isr ; Timer/Counter1 Capture Event
.org 22
	 rcall isr ; Timer/Counter1 Compare Match A
.org 24
	 rcall isr ; Timer/Counter1 Compare Match B
.org 26
	 rcall isr ; Timer/Counter1 Overflow
.org 28
	 rcall isr ; TimerCounter0 Compare Match A
.org 30
	 rcall isr ; TimerCounter0 Compare Match B
.org 32
	 rcall isr ; Timer/Couner0 Overflow
.org 34
	 rcall isr ; SPI Serial Transfer Complete
.org 36
	 rcall isr ; USART Rx Complete
.org 38
	 rcall isr ; USART, Data Register Empty
.org 40
	 rcall isr ; USART Tx Complete
.org 42
	 rcall isr ; ADC Conversion Complete
.org 44
	 rcall isr ; EEPROM Ready
.org 46
	 rcall isr ; Analog Comparator
.org 48
	 rcall isr ; Two-wire Serial Interface
.org 50
	 rcall isr ; Store Program Memory Read
.equ INTVECTORS = 26
.nooverlap

; compatability layer (maybe empty)
.equ SPMEN = SELFPRGEN

; controller data area, environment query mcu-info
mcu_info:
mcu_ramsize:
	.dw 2048
mcu_eepromsize:
	.dw 1024
mcu_maxdp:
	.dw 28672 
mcu_numints:
	.dw 26
mcu_name:
	.dw 10
	.db "ATmega328P"
.set codestart=pc
