; Partname:  ATmega32HVBrevB
; generated automatically, do not edit

.nolist
	.include "m32HVBrevBdef.inc"
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
.equ intvecsize = 2 ; please verify; flash size: 32768 bytes
.equ pclen = 2 ; please verify
.overlap
.org 2
	 rcall isr ; Battery Protection Interrupt
.org 4
	 rcall isr ; Voltage regulator monitor interrupt
.org 6
	 rcall isr ; External Interrupt Request 0
.org 8
	 rcall isr ; External Interrupt Request 1
.org 10
	 rcall isr ; External Interrupt Request 2
.org 12
	 rcall isr ; External Interrupt Request 3
.org 14
	 rcall isr ; Pin Change Interrupt 0
.org 16
	 rcall isr ; Pin Change Interrupt 1
.org 18
	 rcall isr ; Watchdog Timeout Interrupt
.org 20
	 rcall isr ; Bandgap Buffer Short Circuit Detected
.org 22
	 rcall isr ; Charger Detect
.org 24
	 rcall isr ; Timer 1 Input capture
.org 26
	 rcall isr ; Timer 1 Compare Match A
.org 28
	 rcall isr ; Timer 1 Compare Match B
.org 30
	 rcall isr ; Timer 1 overflow
.org 32
	 rcall isr ; Timer 0 Input Capture
.org 34
	 rcall isr ; Timer 0 Comapre Match A
.org 36
	 rcall isr ; Timer 0 Compare Match B
.org 38
	 rcall isr ; Timer 0 Overflow
.org 40
	 rcall isr ; Two-Wire Bus Connect/Disconnect
.org 42
	 rcall isr ; Two-Wire Serial Interface
.org 44
	 rcall isr ; SPI Serial transfer complete
.org 46
	 rcall isr ; Voltage ADC Conversion Complete
.org 48
	 rcall isr ; Coulomb Counter ADC Conversion Complete
.org 50
	 rcall isr ; Coloumb Counter ADC Regular Current
.org 52
	 rcall isr ; Coloumb Counter ADC Accumulator
.org 54
	 rcall isr ; EEPROM Ready
.org 56
	 rcall isr ; SPM Ready
.equ INTVECTORS = 29
.nooverlap

; compatability layer (maybe empty)
.equ SPMEN = SELFPRGEN
.equ SPMCSR = SPMCR
.equ EEPE = EEWE
.equ EEMPE = EEMWE

; controller data area, environment query mcu-info
mcu_info:
mcu_ramsize:
	.dw 2048
mcu_eepromsize:
	.dw 1024
mcu_maxdp:
	.dw 28672 
mcu_numints:
	.dw 29
mcu_name:
	.dw 15
	.db "ATmega32HVBrevB",0
.set codestart=pc
