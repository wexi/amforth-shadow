; Partname:  ATmega32U2
; generated automatically, do not edit

.nolist
	.include "m32U2def.inc"
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
.set WANT_PORTD = 0
.set WANT_SPI = 0
.set WANT_BOOT_LOAD = 0
.set WANT_EEPROM = 0
.set WANT_TIMER_COUNTER_0 = 0
.set WANT_TIMER_COUNTER_1 = 0
.set WANT_PLL = 0
.set WANT_USB_DEVICE = 0
.set WANT_PS2 = 0
.set WANT_CPU = 0
.set WANT_EXTERNAL_INTERRUPT = 0
.set WANT_USART1 = 0
.set WANT_WATCHDOG = 0
.set WANT_ANALOG_COMPARATOR = 0
.set WANT_PORTC = 0
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
	 rcall isr ; External Interrupt Request 3
.org 10
	 rcall isr ; External Interrupt Request 4
.org 12
	 rcall isr ; External Interrupt Request 5
.org 14
	 rcall isr ; External Interrupt Request 6
.org 16
	 rcall isr ; External Interrupt Request 7
.org 18
	 rcall isr ; Pin Change Interrupt Request 0
.org 20
	 rcall isr ; Pin Change Interrupt Request 1
.org 22
	 rcall isr ; USB General Interrupt Request
.org 24
	 rcall isr ; USB Endpoint/Pipe Interrupt Communication Request
.org 26
	 rcall isr ; Watchdog Time-out Interrupt
.org 28
	 rcall isr ; Timer/Counter2 Capture Event
.org 30
	 rcall isr ; Timer/Counter2 Compare Match B
.org 32
	 rcall isr ; Timer/Counter2 Compare Match B
.org 34
	 rcall isr ; Timer/Counter2 Compare Match C
.org 36
	 rcall isr ; Timer/Counter1 Overflow
.org 38
	 rcall isr ; Timer/Counter0 Compare Match A
.org 40
	 rcall isr ; Timer/Counter0 Compare Match B
.org 42
	 rcall isr ; Timer/Counter0 Overflow
.org 44
	 rcall isr ; SPI Serial Transfer Complete
.org 46
	 rcall isr ; USART1, Rx Complete
.org 48
	 rcall isr ; USART1 Data register Empty
.org 50
	 rcall isr ; USART1, Tx Complete
.org 52
	 rcall isr ; Analog Comparator
.org 54
	 rcall isr ; EEPROM Ready
.org 56
	 rcall isr ; Store Program Memory Read
.equ INTVECTORS = 29
.nooverlap

; compatability layer (maybe empty)

; controller data area, environment query mcu-info
mcu_info:
mcu_ramsize:
	.dw 1024
mcu_eepromsize:
	.dw 1024
mcu_maxdp:
	.dw 28672 
mcu_numints:
	.dw 29
mcu_name:
	.dw 10
	.db "ATmega32U2"
.set codestart=pc
