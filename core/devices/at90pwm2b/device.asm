; Partname:  AT90PWM2B
; generated automatically, do not edit

.nolist
	.include "pwm2Bdef.inc"
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
.set WANT_PSC2 = 0
.equ intvecsize = 1 ; please verify; flash size: 8192 bytes
.equ pclen = 2 ; please verify
.overlap
.org 1
	 rcall isr ; PSC2 Capture Event
.org 2
	 rcall isr ; PSC2 End Cycle
.org 3
	 rcall isr ; PSC1 Capture Event
.org 4
	 rcall isr ; PSC1 End Cycle
.org 5
	 rcall isr ; PSC0 Capture Event
.org 6
	 rcall isr ; PSC0 End Cycle
.org 7
	 rcall isr ; Analog Comparator 0
.org 8
	 rcall isr ; Analog Comparator 1
.org 9
	 rcall isr ; Analog Comparator 2
.org 10
	 rcall isr ; External Interrupt Request 0
.org 11
	 rcall isr ; Timer/Counter1 Capture Event
.org 12
	 rcall isr ; Timer/Counter1 Compare Match A
.org 13
	 rcall isr ; Timer/Counter Compare Match B
.org 14
	 rcall isr ; 
.org 15
	 rcall isr ; Timer/Counter1 Overflow
.org 16
	 rcall isr ; Timer/Counter0 Compare Match A
.org 17
	 rcall isr ; Timer/Counter0 Overflow
.org 18
	 rcall isr ; ADC Conversion Complete
.org 19
	 rcall isr ; External Interrupt Request 1
.org 20
	 rcall isr ; SPI Serial Transfer Complete
.org 21
	 rcall isr ; USART, Rx Complete
.org 22
	 rcall isr ; USART Data Register Empty
.org 23
	 rcall isr ; USART, Tx Complete
.org 24
	 rcall isr ; External Interrupt Request 2
.org 25
	 rcall isr ; Watchdog Timeout Interrupt
.org 26
	 rcall isr ; EEPROM Ready
.org 27
	 rcall isr ; Timer Counter 0 Compare Match B
.org 28
	 rcall isr ; External Interrupt Request 3
.org 29
	 rcall isr ; 
.org 30
	 rcall isr ; 
.org 31
	 rcall isr ; Store Program Memory Read
.equ INTVECTORS = 32
.nooverlap

; compatability layer (maybe empty)
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
	.dw 32
mcu_name:
	.dw  9
	.db "AT90PWM2B",0
.set codestart=pc
