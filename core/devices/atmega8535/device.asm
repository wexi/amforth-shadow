; Partname:  ATmega8535
; generated automatically, do not edit

.nolist
	.include "m8535def.inc"
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
.set WANT_AD_CONVERTER = 0
.set WANT_ANALOG_COMPARATOR = 0
.set WANT_TWI = 0
.set WANT_USART = 0
.set WANT_PORTA = 0
.set WANT_PORTB = 0
.set WANT_PORTC = 0
.set WANT_PORTD = 0
.set WANT_SPI = 0
.set WANT_EEPROM = 0
.set WANT_TIMER_COUNTER_0 = 0
.set WANT_TIMER_COUNTER_1 = 0
.set WANT_TIMER_COUNTER_2 = 0
.set WANT_EXTERNAL_INTERRUPT = 0
.set WANT_WATCHDOG = 0
.set WANT_CPU = 0
.equ intvecsize = 1 ; please verify; flash size: 8192 bytes
.equ pclen = 2 ; please verify
.overlap
.org 1
	 rcall isr ; External Interrupt 0
.org 2
	 rcall isr ; External Interrupt 1
.org 3
	 rcall isr ; Timer/Counter2 Compare Match
.org 4
	 rcall isr ; Timer/Counter2 Overflow
.org 5
	 rcall isr ; Timer/Counter1 Capture Event
.org 6
	 rcall isr ; Timer/Counter1 Compare Match A
.org 7
	 rcall isr ; Timer/Counter1 Compare Match B
.org 8
	 rcall isr ; Timer/Counter1 Overflow
.org 9
	 rcall isr ; Timer/Counter0 Overflow
.org 10
	 rcall isr ; SPI Serial Transfer Complete
.org 11
	 rcall isr ; USART, RX Complete
.org 12
	 rcall isr ; USART Data Register Empty
.org 13
	 rcall isr ; USART, TX Complete
.org 14
	 rcall isr ; ADC Conversion Complete
.org 15
	 rcall isr ; EEPROM Ready
.org 16
	 rcall isr ; Analog Comparator
.org 17
	 rcall isr ; Two-wire Serial Interface
.org 18
	 rcall isr ; External Interrupt Request 2
.org 19
	 rcall isr ; TimerCounter0 Compare Match
.org 20
	 rcall isr ; Store Program Memory Read
.equ INTVECTORS = 21
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
	.dw 21
mcu_name:
	.dw 10
	.db "ATmega8535"
.set codestart=pc
