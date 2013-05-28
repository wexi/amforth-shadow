; Partname:  ATmega32U6
; Built using part description XML file version 1
; generated automatically, do not edit

.nolist
	.include "m32U6def.inc"
.list

.equ ramstart =  $100
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
.set WANT_EEPROM = 0
.set WANT_EXTERNAL_INTERRUPT = 0
.set WANT_JTAG = 0
.set WANT_PLL = 0
.set WANT_PORTA = 0
.set WANT_PORTB = 0
.set WANT_PORTC = 0
.set WANT_PORTD = 0
.set WANT_PORTE = 0
.set WANT_PORTF = 0
.set WANT_SPI = 0
.set WANT_TIMER_COUNTER_0 = 0
.set WANT_TIMER_COUNTER_1 = 0
.set WANT_TIMER_COUNTER_2 = 0
.set WANT_TIMER_COUNTER_3 = 0
.set WANT_TWI = 0
.set WANT_USART1 = 0
.set WANT_USB_DEVICE = 0
.set WANT_USB_GLOBAL = 0
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
.equ intvecsize = 2 ; please verify; flash size: 32768 bytes
.equ pclen = 2 ; please verify
.overlap
.equ INTVECTORS = 38
.org $002
	 rcall isr ; External Interrupt Request 0
.org $004
	 rcall isr ; External Interrupt Request 1
.org $006
	 rcall isr ; External Interrupt Request 2
.org $008
	 rcall isr ; External Interrupt Request 3
.org $00A
	 rcall isr ; External Interrupt Request 4
.org $00C
	 rcall isr ; External Interrupt Request 5
.org $00E
	 rcall isr ; External Interrupt Request 6
.org $010
	 rcall isr ; External Interrupt Request 7
.org $012
	 rcall isr ; Pin Change Interrupt Request 0
.org $014
	 rcall isr ; USB General Interrupt Request
.org $016
	 rcall isr ; USB Endpoint/Pipe Interrupt Communication Request
.org $018
	 rcall isr ; Watchdog Time-out Interrupt
.org $01A
	 rcall isr ; Timer/Counter2 Compare Match A
.org $01C
	 rcall isr ; Timer/Counter2 Compare Match B
.org $01E
	 rcall isr ; Timer/Counter2 Overflow
.org $020
	 rcall isr ; Timer/Counter1 Capture Event
.org $022
	 rcall isr ; Timer/Counter1 Compare Match A
.org $024
	 rcall isr ; Timer/Counter1 Compare Match B
.org $026
	 rcall isr ; Timer/Counter1 Compare Match C
.org $028
	 rcall isr ; Timer/Counter1 Overflow
.org $02A
	 rcall isr ; Timer/Counter0 Compare Match A
.org $02C
	 rcall isr ; Timer/Counter0 Compare Match B
.org $02E
	 rcall isr ; Timer/Counter0 Overflow
.org $030
	 rcall isr ; SPI Serial Transfer Complete
.org $032
	 rcall isr ; USART1, Rx Complete
.org $034
	 rcall isr ; USART1 Data register Empty
.org $036
	 rcall isr ; USART1, Tx Complete
.org $038
	 rcall isr ; Analog Comparator
.org $03A
	 rcall isr ; ADC Conversion Complete
.org $03C
	 rcall isr ; EEPROM Ready
.org $03E
	 rcall isr ; Timer/Counter3 Capture Event
.org $040
	 rcall isr ; Timer/Counter3 Compare Match A
.org $042
	 rcall isr ; Timer/Counter3 Compare Match B
.org $044
	 rcall isr ; Timer/Counter3 Compare Match C
.org $046
	 rcall isr ; Timer/Counter3 Overflow
.org $048
	 rcall isr ; 2-wire Serial Interface        
.org $04A
	 rcall isr ; Store Program Memory Read
.nooverlap
mcu_info:
mcu_ramsize:
	.dw 2560
mcu_eepromsize:
	.dw 1024
mcu_maxdp:
	.dw 14336 ; minimum of 0x3800 (from XML) and 0xffff
mcu_numints:
	.dw 38
mcu_name:
	.dw 10
	.db "ATmega32U6"
.set codestart=pc
