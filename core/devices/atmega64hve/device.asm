; Partname:  ATmega64HVE
; Built using part description XML file version 1
; generated automatically, do not edit

.nolist
	.include "m64HVEdef.inc"
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
.set WANT_BANDGAP = 0
.set WANT_BOOT_LOAD = 0
.set WANT_CPU = 0
.set WANT_EEPROM = 0
.set WANT_EXTERNAL_INTERRUPT = 0
.set WANT_LINUART = 0
.set WANT_PORTA = 0
.set WANT_PORTB = 0
.set WANT_SPI = 0
.set WANT_TIMER_COUNTER_0 = 0
.set WANT_TIMER_COUNTER_1 = 0
.set WANT_WAKEUP_TIMER = 0
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
.equ intvecsize = 2 ; please verify; flash size: 65536 bytes
.equ pclen = 2 ; please verify
.overlap
.equ INTVECTORS = 25
.org $0002
	 rcall isr ; External Interrupt 0
.org $0004
	 rcall isr ; Pin Change Interrupt 0
.org $0006
	 rcall isr ; Pin Change Interrupt 1
.org $0008
	 rcall isr ; Watchdog Timeout Interrupt
.org $000a
	 rcall isr ; Wakeup Timer Overflow
.org $000c
	 rcall isr ; Timer 1 Input capture
.org $000e
	 rcall isr ; Timer 1 Compare Match A
.org $0010
	 rcall isr ; Timer 1 Compare Match B
.org $0012
	 rcall isr ; Timer 1 overflow
.org $0014
	 rcall isr ; Timer 0 Input Capture
.org $0016
	 rcall isr ; Timer 0 Comapre Match A
.org $0018
	 rcall isr ; Timer 0 Compare Match B
.org $001a
	 rcall isr ; Timer 0 Overflow
.org $001c
	 rcall isr ; LIN Status Interrupt
.org $001e
	 rcall isr ; LIN Error Interrupt
.org $0020
	 rcall isr ; SPI Serial transfer complete
.org $0022
	 rcall isr ; Voltage ADC Instantaneous Conversion Complete
.org $0024
	 rcall isr ; Voltage ADC Accumulated Conversion Complete
.org $0026
	 rcall isr ; C-ADC Instantaneous Conversion Complete
.org $0028
	 rcall isr ; C-ADC Regular Current
.org $002a
	 rcall isr ; C-ADC Accumulated Conversion Complete
.org $02c
	 rcall isr ; EEPROM Ready
.org $02e
	 rcall isr ; SPM Ready
.org $030
	 rcall isr ; PLL Lock Change Interrupt
.nooverlap
mcu_info:
mcu_ramsize:
	.dw 4096
mcu_eepromsize:
	.dw 1024
mcu_maxdp:
	.dw 28672 ; minimum of 0x7000 (from XML) and 0xffff
mcu_numints:
	.dw 25
mcu_name:
	.dw 11
	.db "ATmega64HVE",0
.set codestart=pc
