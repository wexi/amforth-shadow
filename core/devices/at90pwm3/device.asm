; Partname:  AT90PWM3
; Built using part description XML file version 179
; generated automatically, do not edit

.nolist
	.include "pwm3def.inc"
.list

.equ ramstart =  $0100
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

; the following definitions are shortcuts for the respective forth source segments if set to 1
.set WANT_AD_CONVERTER = 0
.set WANT_ANALOG_COMPARATOR = 0
.set WANT_BOOT_LOAD = 0
.set WANT_CPU = 0
.set WANT_DA_CONVERTER = 0
.set WANT_EEPROM = 0
.set WANT_EUSART = 0
.set WANT_EXTERNAL_INTERRUPT = 0
.set WANT_PORTB = 0
.set WANT_PORTC = 0
.set WANT_PORTD = 0
.set WANT_PORTE = 0
.set WANT_PSC0 = 0
.set WANT_PSC1 = 0
.set WANT_PSC2 = 0
.set WANT_SPI = 0
.set WANT_TIMER_COUNTER_0 = 0
.set WANT_TIMER_COUNTER_1 = 0
.set WANT_USART = 0
.set WANT_WATCHDOG = 0


.ifndef SPMEN
 .equ SPMEN = SELFPRGEN
.endif

.ifndef SPMCSR
 .equ SPMCSR = SPMCR
.endif

.ifndef EEPE
 .equ EEPE = EEWE
.endif

.ifndef EEMPE
 .equ EEMPE = EEMWE
.endif
.equ intvecsize = 1 ; please verify; flash size: 8192 bytes
.equ pclen = 2 ; please verify
.overlap
.equ INTVECTORS = 32
.org $0001
	 rcall isr ; PSC2 Capture Event
.org $0002
	 rcall isr ; PSC2 End Cycle
.org $0003
	 rcall isr ; PSC1 Capture Event
.org $0004
	 rcall isr ; PSC1 End Cycle
.org $0005
	 rcall isr ; PSC0 Capture Event
.org $0006
	 rcall isr ; PSC0 End Cycle
.org $0007
	 rcall isr ; Analog Comparator 0
.org $0008
	 rcall isr ; Analog Comparator 1
.org $0009
	 rcall isr ; Analog Comparator 2
.org $000A
	 rcall isr ; External Interrupt Request 0
.org $000B
	 rcall isr ; Timer/Counter1 Capture Event
.org $000C
	 rcall isr ; Timer/Counter1 Compare Match A
.org $000D
	 rcall isr ; Timer/Counter Compare Match B
.org $000E
	 rcall isr ; 
.org $000F
	 rcall isr ; Timer/Counter1 Overflow
.org $0010
	 rcall isr ; Timer/Counter0 Compare Match A
.org $0011
	 rcall isr ; Timer/Counter0 Overflow
.org $0012
	 rcall isr ; ADC Conversion Complete
.org $0013
	 rcall isr ; External Interrupt Request 1
.org $0014
	 rcall isr ; SPI Serial Transfer Complete
.org $0015
	 rcall isr ; USART, Rx Complete
.org $0016
	 rcall isr ; USART Data Register Empty
.org $0017
	 rcall isr ; USART, Tx Complete
.org $0018
	 rcall isr ; External Interrupt Request 2
.org $0019
	 rcall isr ; Watchdog Timeout Interrupt
.org $001A
	 rcall isr ; EEPROM Ready
.org $001B
	 rcall isr ; Timer Counter 0 Compare Match B
.org $001C
	 rcall isr ; External Interrupt Request 3
.org $001D
	 rcall isr ; 
.org $001E
	 rcall isr ; 
.org $001F
	 rcall isr ; Store Program Memory Read
.nooverlap
mcu_info:
mcu_ramsize:
	.dw 512
mcu_eepromsize:
	.dw 512
mcu_maxdp:
	.dw 3072 ; minimum of 0xC00 (from XML) and 0xffff
mcu_numints:
	.dw 32
mcu_name:
	.dw  8
	.db "AT90PWM3"
.set codestart=pc
