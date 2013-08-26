
; Copyright (c) 2006 by Roland Riegel <feedback@roland-riegel.de>

; This program is free software; you can redistribute it and/or modify
; it under the terms of the GNU General Public License version 2 as
; published by the Free Software Foundation.

.equ UBRRVAL = F_CPU/(BAUD*16)-1

uart_init:
	push	gen1
	
        ; set baud rate
        ldi	gen1, LOW(UBRRVAL)
        out_	UBRRL, gen1
        ldi	gen1, HIGH(UBRRVAL)
        out_	UBRRH, gen1

        ; frame format: 8 bit, no parity, 1 bit
        ldi	gen1, UCSRC_SELECT | (1 << UCSZ1) | (1 << UCSZ0)
        out_	UCSRC, gen1

        ; enable serial receiver and transmitter
        ldi	gen1, (1 << RXEN) | (1 << TXEN)
        out_	UCSRB, gen1

	pop	gen1
        ret

uart_send_word:
        sbis_	UCSRA, UDRE
        rjmp	uart_send_word	; wait until transmit buffer is empty
        out_	UDR, gen2
uart_send:
        sbis_	UCSRA, UDRE
        rjmp	uart_send	; wait until transmit buffer is empty
        out_	UDR, gen1
        ret
	
uart_send_hex:
	swap	gen1
	rcall	uart_send_nibble
	swap	gen1
uart_send_nibble:
	push	gen1
	andi	gen1, 0x0f
	subi	gen2, -'0'	; add '0'
	cpi	gen2, '9' + 1
	brlo	uart_send_nibble_ok
	subi	gen2, -7	; add 7 to reach 'A'-'F'
uart_send_nibble_ok:
	rcall	uart_send
	pop	gen1
	ret

uart_rec_word:			; gen2:gen1 (out): word received
        sbis_	UCSRA, RXC
        rjmp	uart_rec_word
        in_	gen2, UDR
uart_rec:			; gen1 (out): byte received
        sbis_	UCSRA, RXC
        rjmp	uart_rec

        in_	gen1, UDR

        ret

