; Partname:  ATmega324P
; generated automatically, do not edit

.nolist
	.include "m324Pdef.inc"
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
.set WANT_ANALOG_COMPARATOR = 0
.set WANT_USART0 = 0
.set WANT_PORTA = 0
.set WANT_PORTB = 0
.set WANT_PORTC = 0
.set WANT_PORTD = 0
.set WANT_TIMER_COUNTER_0 = 0
.set WANT_TIMER_COUNTER_2 = 0
.set WANT_WATCHDOG = 0
.set WANT_JTAG = 0
.set WANT_BOOT_LOAD = 0
.set WANT_EXTERNAL_INTERRUPT = 0
.set WANT_AD_CONVERTER = 0
.set WANT_TIMER_COUNTER_1 = 0
.set WANT_EEPROM = 0
.set WANT_SPI = 0
.set WANT_TWI = 0
.set WANT_USART1 = 0
.set WANT_CPU = 0
.equ intvecsize = 2 ; please verify; flash size: 32768 bytes
.equ pclen = 2 ; please verify
.overlap
.org 2
	 rcall isr ; External Interrupt Request 0
.org 4
	 rcall isr ; External Interrupt Request 1
.org 6
	 rcall isr ; External Interrupt Request 2
.org 8
	 rcall isr ; Pin Change Interrupt Request 0
.org 10
	 rcall isr ; Pin Change Interrupt Request 1
.org 12
	 rcall isr ; Pin Change Interrupt Request 2
.org 14
	 rcall isr ; Pin Change Interrupt Request 3
.org 16
	 rcall isr ; Watchdog Time-out Interrupt
.org 18
	 rcall isr ; Timer/Counter2 Compare Match A
.org 20
	 rcall isr ; Timer/Counter2 Compare Match B
.org 22
	 rcall isr ; Timer/Counter2 Overflow
.org 24
	 rcall isr ; Timer/Counter1 Capture Event
.org 26
	 rcall isr ; Timer/Counter1 Compare Match A
.org 28
	 rcall isr ; Timer/Counter1 Compare Match B
.org 30
	 rcall isr ; Timer/Counter1 Overflow
.org 32
	 rcall isr ; Timer/Counter0 Compare Match A
.org 34
	 rcall isr ; Timer/Counter0 Compare Match B
.org 36
	 rcall isr ; Timer/Counter0 Overflow
.org 38
	 rcall isr ; SPI Serial Transfer Complete
.org 40
	 rcall isr ; USART0, Rx Complete
.org 42
	 rcall isr ; USART0 Data register Empty
.org 44
	 rcall isr ; USART0, Tx Complete
.org 46
	 rcall isr ; Analog Comparator
.org 48
	 rcall isr ; ADC Conversion Complete
.org 50
	 rcall isr ; EEPROM Ready
.org 52
	 rcall isr ; 2-wire Serial Interface
.org 54
	 rcall isr ; Store Program Memory Read
.org 56
	 rcall isr ; USART1 RX complete
.org 58
	 rcall isr ; USART1 Data Register Empty
.org 60
	 rcall isr ; USART1 TX complete
.equ INTVECTORS = 31
.nooverlap

; compatability layer (maybe empty)

; controller data area, environment query mcu-info
mcu_info:
mcu_ramsize:
	.dw 2048
mcu_eepromsize:
	.dw 1024
mcu_maxdp:
	.dw 28672 
mcu_numints:
	.dw 31
mcu_name:
	.dw 10
	.db "ATmega324P"
.set codestart=pc
