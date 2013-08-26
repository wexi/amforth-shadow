
; Copyright (c) 2006 by Roland Riegel <feedback@roland-riegel.de>

; This program is free software; you can redistribute it and/or modify
; it under the terms of the GNU General Public License version 2 as
; published by the Free Software Foundation.

.ifndef F_CPU
.equ F_CPU = 16000000
.endif
.ifndef BAUD
.equ BAUD = 38400
.endif

; device specific boofa configuration
.equ DEVBOOT = SMALLBOOTSTART
.equ DEVCODE = 0x44
.equ DEVELPM = 1

; device specific register handling
.equ UBRRH = UBRR0H
.equ UBRRL = UBRR0L
.equ UDR = UDR0
.equ UCSRA = UCSR0A
.equ UCSRB = UCSR0B
.equ UCSRC = UCSR0C
.equ UCSRC_SELECT = 0
.equ UCSZ0 = UCSZ00
.equ UCSZ1 = UCSZ01
.equ RXEN = RXEN0
.equ TXEN = TXEN0
.equ UDRE = UDRE0
.equ RXC = RXC0

; general registers
.def spad = r16			;for temporary macro use only
.def gen1 = r22
.def gen2 = r23
.def gen3 = r24			;adiw/sbiw capable
.def gen4 = r25

; address latch
.def addrl = r8
.def addrh = r9
; block buffer position
.def blockposl = r10
.def blockposh = r11
; temporary low byte buffer
.def lowbyte = r12

.macro	in_
.if (@1 < $40)
	in	@0, @1
.else
	lds	@0, @1
.endif
.endmacro

.macro	out_
.if (@0 < $40)
	out	@0, @1
.else
	sts	@0, @1
.endif
.endmacro

.macro	sbi_
.if (@0 < $20)
	sbi	@0, @1
.else
	in_	spad, @0
	sbr	spad, 1 << @1
	out_	@0, spad 
.endif
.endmacro

.macro	cbi_
.if (@0 < $20)
	cbi	@0, @1
.else
	in_	spad, @0
	cbr	spad, 1 << @1
	out_	@0, spad 
.endif
.endmacro

.macro	sbis_
.if (@0 < $20)
	sbis	@0, @1
.else
	in_	spad, @0
	sbrs	spad, @1
.endif
.endmacro

.macro	sbic_
.if (@0 < $20)
	sbic	@0, @1
.else
	in_	spad, @0
	sbrc	spad, @1
.endif
.endmacro
	
.macro	boot
	sbi_	PORTB, 4	;input TP6 pulled high
	sbi_	DDRB, 5		;output TP5 low
	sbis_	PINB, 4		;skip if TP6 ≠ TP5
	rjmp	@0		;boot loader
	sbi_	DDRE, 5
	sbi_	PORTE, 5	;RED LED ON
.endmacro
	
.macro	boofa
	sbi_	DDRB, 7
	sbi_	PORTB, 7	;GREEN LED ON
	sbi_	DDRD, 7		;CTS ON
.endmacro

.macro	boofa_led_on
	sbi_	PORTE, 5
.endmacro

.macro	boofa_led_off
	cbi_	PORTE, 5
.endmacro

.macro	xchg
	mov	spad,@0
	mov	@0,@1
	mov	@1,spad
.endmacro
