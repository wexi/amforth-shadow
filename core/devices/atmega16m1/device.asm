; Partname:  ATmega16M1
; generated automatically, do not edit

.nolist
	.include "m16M1def.inc"
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
.set WANT_PORTB = 0
.set WANT_PORTC = 0
.set WANT_PORTD = 0
.set WANT_CAN = 0
.set WANT_ANALOG_COMPARATOR = 0
.set WANT_DA_CONVERTER = 0
.set WANT_CPU = 0
.set WANT_PORTE = 0
.set WANT_TIMER_COUNTER_0 = 0
.set WANT_TIMER_COUNTER_1 = 0
.set WANT_AD_CONVERTER = 0
.set WANT_LINUART = 0
.set WANT_SPI = 0
.set WANT_WATCHDOG = 0
.set WANT_EXTERNAL_INTERRUPT = 0
.set WANT_EEPROM = 0
.set WANT_PSC = 0
.equ intvecsize = 2 ; please verify; flash size: 16384 bytes
.equ pclen = 2 ; please verify
.overlap
.org 2
	 rcall isr ; Analog Comparator 0
.org 4
	 rcall isr ; Analog Comparator 1
.org 6
	 rcall isr ; Analog Comparator 2
.org 8
	 rcall isr ; Analog Comparator 3
.org 10
	 rcall isr ; PSC Fault
.org 12
	 rcall isr ; PSC End of Cycle
.org 14
	 rcall isr ; External Interrupt Request 0
.org 16
	 rcall isr ; External Interrupt Request 1
.org 18
	 rcall isr ; External Interrupt Request 2
.org 20
	 rcall isr ; External Interrupt Request 3
.org 22
	 rcall isr ; Timer/Counter1 Capture Event
.org 24
	 rcall isr ; Timer/Counter1 Compare Match A
.org 26
	 rcall isr ; Timer/Counter1 Compare Match B
.org 28
	 rcall isr ; Timer1/Counter1 Overflow
.org 30
	 rcall isr ; Timer/Counter0 Compare Match A
.org 32
	 rcall isr ; Timer/Counter0 Compare Match B
.org 34
	 rcall isr ; Timer/Counter0 Overflow
.org 36
	 rcall isr ; CAN MOB, Burst, General Errors
.org 38
	 rcall isr ; CAN Timer Overflow
.org 40
	 rcall isr ; LIN Transfer Complete
.org 42
	 rcall isr ; LIN Error
.org 44
	 rcall isr ; Pin Change Interrupt Request 0
.org 46
	 rcall isr ; Pin Change Interrupt Request 1
.org 48
	 rcall isr ; Pin Change Interrupt Request 2
.org 50
	 rcall isr ; Pin Change Interrupt Request 3
.org 52
	 rcall isr ; SPI Serial Transfer Complete
.org 54
	 rcall isr ; ADC Conversion Complete
.org 56
	 rcall isr ; Watchdog Time-Out Interrupt
.org 58
	 rcall isr ; EEPROM Ready
.org 60
	 rcall isr ; Store Program Memory Read
.equ INTVECTORS = 31
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
	.dw 12288 
mcu_numints:
	.dw 31
mcu_name:
	.dw 10
	.db "ATmega16M1"
.set codestart=pc
