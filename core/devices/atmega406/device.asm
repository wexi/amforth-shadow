; Partname:  ATmega406
; generated automatically, do not edit

.nolist
	.include "m406def.inc"
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
.set WANT_AD_CONVERTER = 0
.set WANT_EXTERNAL_INTERRUPT = 0
.set WANT_TIMER_COUNTER_1 = 0
.set WANT_WAKEUP_TIMER = 0
.set WANT_BATTERY_PROTECTION = 0
.set WANT_FET = 0
.set WANT_COULOMB_COUNTER = 0
.set WANT_CELL_BALANCING = 0
.set WANT_CPU = 0
.set WANT_WATCHDOG = 0
.set WANT_TIMER_COUNTER_0 = 0
.set WANT_PORTA = 0
.set WANT_PORTB = 0
.set WANT_PORTC = 0
.set WANT_PORTD = 0
.set WANT_BOOT_LOAD = 0
.set WANT_TWI = 0
.set WANT_BANDGAP = 0
.set WANT_EEPROM = 0
.equ intvecsize = 2 ; please verify; flash size: 40960 bytes
.equ pclen = 2 ; please verify
.overlap
.org 2
	 rcall isr ; Battery Protection Interrupt
.org 4
	 rcall isr ; External Interrupt Request 0
.org 6
	 rcall isr ; External Interrupt Request 1
.org 8
	 rcall isr ; External Interrupt Request 2
.org 10
	 rcall isr ; External Interrupt Request 3
.org 12
	 rcall isr ; Pin Change Interrupt 0
.org 14
	 rcall isr ; Pin Change Interrupt 1
.org 16
	 rcall isr ; Watchdog Timeout Interrupt
.org 18
	 rcall isr ; Wakeup timer overflow
.org 20
	 rcall isr ; Timer/Counter 1 Compare Match
.org 22
	 rcall isr ; Timer/Counter 1 Overflow
.org 24
	 rcall isr ; Timer/Counter0 Compare A Match
.org 26
	 rcall isr ; Timer/Counter0 Compare B Match
.org 28
	 rcall isr ; Timer/Counter0 Overflow
.org 30
	 rcall isr ; Two-Wire Bus Connect/Disconnect
.org 32
	 rcall isr ; Two-Wire Serial Interface
.org 34
	 rcall isr ; Voltage ADC Conversion Complete
.org 36
	 rcall isr ; Coulomb Counter ADC Conversion Complete
.org 38
	 rcall isr ; Coloumb Counter ADC Regular Current
.org 40
	 rcall isr ; Coloumb Counter ADC Accumulator
.org 42
	 rcall isr ; EEPROM Ready
.org 44
	 rcall isr ; Store Program Memory Ready
.equ INTVECTORS = 23
.nooverlap

; compatability layer (maybe empty)

; controller data area, environment query mcu-info
mcu_info:
mcu_ramsize:
	.dw 2048
mcu_eepromsize:
	.dw 512
mcu_maxdp:
	.dw 36864 
mcu_numints:
	.dw 23
mcu_name:
	.dw  9
	.db "ATmega406",0
.set codestart=pc
