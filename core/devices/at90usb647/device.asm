; Partname:  AT90USB647
; generated automatically, do not edit

.nolist
	.include "usb647def.inc"
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
.set WANT_WATCHDOG = 0
.set WANT_PORTA = 0
.set WANT_PORTB = 0
.set WANT_PORTC = 0
.set WANT_PORTD = 0
.set WANT_PORTE = 0
.set WANT_PORTF = 0
.set WANT_CPU = 0
.set WANT_TWI = 0
.set WANT_SPI = 0
.set WANT_USART1 = 0
.set WANT_USB_DEVICE = 0
.set WANT_USB_GLOBAL = 0
.set WANT_USB_HOST = 0
.set WANT_BOOT_LOAD = 0
.set WANT_EEPROM = 0
.set WANT_TIMER_COUNTER_0 = 0
.set WANT_TIMER_COUNTER_2 = 0
.set WANT_TIMER_COUNTER_3 = 0
.set WANT_TIMER_COUNTER_1 = 0
.set WANT_JTAG = 0
.set WANT_EXTERNAL_INTERRUPT = 0
.set WANT_AD_CONVERTER = 0
.set WANT_ANALOG_COMPARATOR = 0
.set WANT_PLL = 0
.equ intvecsize = 2 ; please verify; flash size: 65536 bytes
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
	 rcall isr ; USB General Interrupt Request
.org 22
	 rcall isr ; USB Endpoint/Pipe Interrupt Communication Request
.org 24
	 rcall isr ; Watchdog Time-out Interrupt
.org 26
	 rcall isr ; Timer/Counter2 Compare Match A
.org 28
	 rcall isr ; Timer/Counter2 Compare Match B
.org 30
	 rcall isr ; Timer/Counter2 Overflow
.org 32
	 rcall isr ; Timer/Counter1 Capture Event
.org 34
	 rcall isr ; Timer/Counter1 Compare Match A
.org 36
	 rcall isr ; Timer/Counter1 Compare Match B
.org 38
	 rcall isr ; Timer/Counter1 Compare Match C
.org 40
	 rcall isr ; Timer/Counter1 Overflow
.org 42
	 rcall isr ; Timer/Counter0 Compare Match A
.org 44
	 rcall isr ; Timer/Counter0 Compare Match B
.org 46
	 rcall isr ; Timer/Counter0 Overflow
.org 48
	 rcall isr ; SPI Serial Transfer Complete
.org 50
	 rcall isr ; USART1, Rx Complete
.org 52
	 rcall isr ; USART1 Data register Empty
.org 54
	 rcall isr ; USART1, Tx Complete
.org 56
	 rcall isr ; Analog Comparator
.org 58
	 rcall isr ; ADC Conversion Complete
.org 60
	 rcall isr ; EEPROM Ready
.org 62
	 rcall isr ; Timer/Counter3 Capture Event
.org 64
	 rcall isr ; Timer/Counter3 Compare Match A
.org 66
	 rcall isr ; Timer/Counter3 Compare Match B
.org 68
	 rcall isr ; Timer/Counter3 Compare Match C
.org 70
	 rcall isr ; Timer/Counter3 Overflow
.org 72
	 rcall isr ; 2-wire Serial Interface        
.org 74
	 rcall isr ; Store Program Memory Read
.equ INTVECTORS = 38
.nooverlap

; compatability layer (maybe empty)

; controller data area, environment query mcu-info
mcu_info:
mcu_ramsize:
	.dw 4096
mcu_eepromsize:
	.dw 2048
mcu_maxdp:
	.dw 57344 
mcu_numints:
	.dw 38
mcu_name:
	.dw 10
	.db "AT90USB647"
.set codestart=pc
