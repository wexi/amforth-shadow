; Partname:  ATmega128RFA1
; generated automatically, do not edit

.nolist
	.include "m128RFA1def.inc"
.list

.equ ramstart =  512
.equ CELLSIZE = 2
.macro readflashcell
	clr temp7
	lsl zl
	rol zh
	rol temp7
	out_ RAMPZ, temp7
	elpm @0, Z+
	elpm @1, Z+
.endmacro
.macro writeflashcell
	clr temp7
	lsl zl
	rol zh
	rol temp7
	out_ RAMPZ, temp7
.endmacro
.set WANT_ANALOG_COMPARATOR = 0
.set WANT_USART0 = 0
.set WANT_USART1 = 0
.set WANT_TWI = 0
.set WANT_SPI = 0
.set WANT_PORTA = 0
.set WANT_PORTB = 0
.set WANT_PORTC = 0
.set WANT_PORTD = 0
.set WANT_PORTE = 0
.set WANT_PORTF = 0
.set WANT_PORTG = 0
.set WANT_TIMER_COUNTER_0 = 0
.set WANT_TIMER_COUNTER_2 = 0
.set WANT_WATCHDOG = 0
.set WANT_TIMER_COUNTER_5 = 0
.set WANT_TIMER_COUNTER_4 = 0
.set WANT_TIMER_COUNTER_3 = 0
.set WANT_TIMER_COUNTER_1 = 0
.set WANT_TRX24 = 0
.set WANT_SYMCNT = 0
.set WANT_EEPROM = 0
.set WANT_JTAG = 0
.set WANT_EXTERNAL_INTERRUPT = 0
.set WANT_AD_CONVERTER = 0
.set WANT_BOOT_LOAD = 0
.set WANT_CPU = 0
.set WANT_FLASH = 0
.set WANT_PWRCTRL = 0
.set WANT_USART0_SPI = 0
.set WANT_USART1_SPI = 0
.equ intvecsize = 2 ; please verify; flash size: 131072 bytes
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
	 rcall isr ; Pin Change Interrupt Request 2
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
	 rcall isr ; USART0, Rx Complete
.org 52
	 rcall isr ; USART0 Data register Empty
.org 54
	 rcall isr ; USART0, Tx Complete
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
	 rcall isr ; USART1, Rx Complete
.org 74
	 rcall isr ; USART1 Data register Empty
.org 76
	 rcall isr ; USART1, Tx Complete
.org 78
	 rcall isr ; 2-wire Serial Interface
.org 80
	 rcall isr ; Store Program Memory Read
.org 82
	 rcall isr ; Timer/Counter4 Capture Event
.org 84
	 rcall isr ; Timer/Counter4 Compare Match A
.org 86
	 rcall isr ; Timer/Counter4 Compare Match B
.org 88
	 rcall isr ; Timer/Counter4 Compare Match C
.org 90
	 rcall isr ; Timer/Counter4 Overflow
.org 92
	 rcall isr ; Timer/Counter5 Capture Event
.org 94
	 rcall isr ; Timer/Counter5 Compare Match A
.org 96
	 rcall isr ; Timer/Counter5 Compare Match B
.org 98
	 rcall isr ; Timer/Counter5 Compare Match C
.org 100
	 rcall isr ; Timer/Counter5 Overflow
.org 102
	 rcall isr ; USART2, Rx Complete
.org 104
	 rcall isr ; USART2 Data register Empty
.org 106
	 rcall isr ; USART2, Tx Complete
.org 108
	 rcall isr ; USART3, Rx Complete
.org 110
	 rcall isr ; USART3 Data register Empty
.org 112
	 rcall isr ; USART3, Tx Complete
.org 114
	 rcall isr ; TRX24 - PLL lock interrupt
.org 116
	 rcall isr ; TRX24 - PLL unlock interrupt
.org 118
	 rcall isr ; TRX24 - Receive start interrupt
.org 120
	 rcall isr ; TRX24 - RX_END interrupt
.org 122
	 rcall isr ; TRX24 - CCA/ED done interrupt
.org 124
	 rcall isr ; TRX24 - XAH - AMI
.org 126
	 rcall isr ; TRX24 - TX_END interrupt
.org 128
	 rcall isr ; TRX24 AWAKE - tranceiver is reaching state TRX_OFF
.org 130
	 rcall isr ; Symbol counter - compare match 1 interrupt
.org 132
	 rcall isr ; Symbol counter - compare match 2 interrupt
.org 134
	 rcall isr ; Symbol counter - compare match 3 interrupt
.org 136
	 rcall isr ; Symbol counter - overflow interrupt
.org 138
	 rcall isr ; Symbol counter - backoff interrupt
.org 140
	 rcall isr ; AES engine ready interrupt
.org 142
	 rcall isr ; Battery monitor indicates supply voltage below threshold
.equ INTVECTORS = 72
.nooverlap

; compatability layer (maybe empty)

; controller data area, environment query mcu-info
mcu_info:
mcu_ramsize:
	.dw 16384
mcu_eepromsize:
	.dw 4096
mcu_maxdp:
	.dw 65535 
mcu_numints:
	.dw 72
mcu_name:
	.dw 13
	.db "ATmega128RFA1",0
.set codestart=pc
