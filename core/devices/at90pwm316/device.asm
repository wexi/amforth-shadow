; Partname:  AT90PWM316
; generated automatically, do not edit

.nolist
	.include "pwm316def.inc"
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
.set WANT_BOOT_LOAD = 0
.set WANT_EUSART = 0
.set WANT_ANALOG_COMPARATOR = 0
.set WANT_DA_CONVERTER = 0
.set WANT_CPU = 0
.set WANT_PORTE = 0
.set WANT_TIMER_COUNTER_0 = 0
.set WANT_TIMER_COUNTER_1 = 0
.set WANT_AD_CONVERTER = 0
.set WANT_USART = 0
.set WANT_SPI = 0
.set WANT_WATCHDOG = 0
.set WANT_EXTERNAL_INTERRUPT = 0
.set WANT_EEPROM = 0
.set WANT_PSC0 = 0
.set WANT_PSC1 = 0
.set WANT_PSC2 = 0
.equ intvecsize = 2 ; please verify; flash size: 16384 bytes
.equ pclen = 2 ; please verify
.overlap
.org 2
	 rcall isr ; PSC2 Capture Event
.org 4
	 rcall isr ; PSC2 End Cycle
.org 6
	 rcall isr ; PSC1 Capture Event
.org 8
	 rcall isr ; PSC1 End Cycle
.org 10
	 rcall isr ; PSC0 Capture Event
.org 12
	 rcall isr ; PSC0 End Cycle
.org 14
	 rcall isr ; Analog Comparator 0
.org 16
	 rcall isr ; Analog Comparator 1
.org 18
	 rcall isr ; Analog Comparator 2
.org 20
	 rcall isr ; External Interrupt Request 0
.org 22
	 rcall isr ; Timer/Counter1 Capture Event
.org 24
	 rcall isr ; Timer/Counter1 Compare Match A
.org 26
	 rcall isr ; Timer/Counter Compare Match B
.org 28
	 rcall isr ; 
.org 30
	 rcall isr ; Timer/Counter1 Overflow
.org 32
	 rcall isr ; Timer/Counter0 Compare Match A
.org 34
	 rcall isr ; Timer/Counter0 Overflow
.org 36
	 rcall isr ; ADC Conversion Complete
.org 38
	 rcall isr ; External Interrupt Request 1
.org 40
	 rcall isr ; SPI Serial Transfer Complete
.org 42
	 rcall isr ; USART, Rx Complete
.org 44
	 rcall isr ; USART Data Register Empty
.org 46
	 rcall isr ; USART, Tx Complete
.org 48
	 rcall isr ; External Interrupt Request 2
.org 50
	 rcall isr ; Watchdog Timeout Interrupt
.org 52
	 rcall isr ; EEPROM Ready
.org 54
	 rcall isr ; Timer Counter 0 Compare Match B
.org 56
	 rcall isr ; External Interrupt Request 3
.org 58
	 rcall isr ; 
.org 60
	 rcall isr ; 
.org 62
	 rcall isr ; Store Program Memory Read
.equ INTVECTORS = 32
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
	.dw 32
mcu_name:
	.dw 10
	.db "AT90PWM316"
.set codestart=pc
