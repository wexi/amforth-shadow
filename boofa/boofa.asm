
; boofa - the BOOtloader For	Avr microcontrollers
; Copyright (c) 2006 by Roland Riegel <feedback@roland-riegel.de>

; This program is free software; you can redistribute it and/or	modify
; it under the terms of the GNU General Public License version 2 as
; published by the Free Software Foundation.

.include "boofa_config.asm"

; put boot loader into boot section
.org	DEVBOOT
	boot	load		;conditional
	
.ifndef	DEBUG
	clr	zl		;launch application if possible
	clr	zh
	lpm	yl, z+
	lpm	yh, z+		;Y is first flash word
	adiw	yh:yl, 1
	breq	load		;no code?
	jmp	0
.endif
	
load:	boofa

        ; setup stack pointer
        ldi	gen1, LOW(RAMEND)
        out_	SPL, gen1
        ldi	gen1, HIGH(RAMEND)
        out_	SPH, gen1

        ; activate uart
        rcall	uart_init

        ; reset state
        clr	addrl
        clr	addrh
        clr	blockposl
        clr	blockposh

        ; main loop
boofa_loop:
        ; receive command
        rcall	uart_rec

        ; auto-increment status
        ; [complete]
boofa_cmd_a:
        cpi	gen1, 'a'
        brne	boofa_cmd_A_

        ldi	gen1, 'Y'
        rcall	uart_send

        rjmp	boofa_loop

        ; set address
        ; [complete]
boofa_cmd_A_:
        cpi	gen1, 'A'
        brne	boofa_cmd_e

        rcall	uart_rec
        mov	addrh, gen1
        rcall	uart_rec
        mov	addrl, gen1

        ldi	gen1, 0x0d
        rcall	uart_send

        rjmp	boofa_loop

        ; erase chip
        ; [complete]
boofa_cmd_e:
        cpi	gen1, 'e'
        brne	boofa_cmd_b

        rcall	flash_erase

        ldi	gen1, 0x0d
        rcall	uart_send

        rjmp	boofa_loop

        ; block support
        ; [complete]
boofa_cmd_b:
        cpi	gen1, 'b'
        brne	boofa_cmd_B_

        ; we support block writing
        ldi	gen1, 'Y'
        rcall	uart_send

        ; return blocksize in bytes
        ldi	gen1, HIGH(PAGESIZE * 2)
        rcall	uart_send
        ldi	gen1, LOW(PAGESIZE * 2)
        rcall	uart_send

        rjmp	boofa_loop

        ; start block load
        ; [complete]
boofa_cmd_B_:
        cpi	gen1, 'B'
        brne	boofa_cmd_g

        ; get block size
        rcall	uart_rec
        mov	gen4, gen1
        rcall	uart_rec
        mov	gen3, gen1

        ; TODO: check if blocksize == PAGESIZE << 1

        ; get data type
        rcall	uart_rec

boofa_cmd_B_F:
        cpi	gen1, 'F'
        brne	boofa_cmd_B_E

        ; start at internal page buffer's beginning
        clr	blockposl
        clr	blockposh

boofa_cmd_B_F_word:
        ; receive a flash word
        rcall	uart_rec_word

        ; store flash word into internal page buffer
        rcall	flash_load_word

        ; repeat until we reached the page buffer's end
        cp	blockposl, gen3
        cpc	blockposh, gen4
        brne	boofa_cmd_B_F_word

        ; write page buffer to flash
        rcall	flash_write_page

        ; advance address pointer by block size in words
        clc
        ror	gen4
        ror	gen3
        add	addrl, gen3
        adc	addrh, gen4

        rjmp	boofa_cmd_B_common

boofa_cmd_B_E:
        cpi	gen1, 'E'
        brne	boofa_cmd_B_unknown

        ; calculate block end address
        mov	blockposl, addrl
        mov	blockposh, addrh
        add	blockposl, gen3
        adc	blockposh, gen4

boofa_cmd_B_E_byte:
        ; receive byte
        rcall	uart_rec

        ; write byte to eeprom
        rcall	eeprom_write

        ; repeat until we reach the end address
        cp	addrl, blockposl
        cpc	addrh, blockposh
        brne	boofa_cmd_B_E_byte

        rjmp	boofa_cmd_B_common

boofa_cmd_B_unknown:
        rjmp	boofa_cmd_unknown

boofa_cmd_B_common:
        ; answer
        ldi	gen1, 0x0d
        rcall	uart_send

        ; reset block buffer position
        clr	blockposl
        clr	blockposh

        rjmp	boofa_loop

        ; start block read
        ; [complete]
boofa_cmd_g:
        cpi	gen1, 'g'
        brne	boofa_cmd_R_

        ; get block size
        rcall	uart_rec
        mov	gen4, gen1
        rcall	uart_rec
        mov	gen3, gen1

        ; TODO: check if blocksize == PAGESIZE << 1

        ; get data type
        rcall	uart_rec
boofa_cmd_g_F:
        cpi	gen1, 'F'
        brne	boofa_cmd_g_E

boofa_cmd_g_F_word:
        ; read word from flash
        rcall	flash_read_word

        ; send data word
	rcall	uart_send_word
	
        ; repeat until we reached the end address
	sbiw	gen4:gen3, 2
        brne	boofa_cmd_g_F_word

        rjmp	boofa_cmd_g_common

boofa_cmd_g_E:
        cpi	gen1, 'E'
        brne	boofa_cmd_g_unknown

        ; calculate block end address
        mov	blockposl, addrl
        mov	blockposh, addrh
        add	blockposl, gen3
        adc	blockposh, gen4

boofa_cmd_g_E_byte:
        ; read from eeprom
        rcall	eeprom_read

        ; send data
        rcall	uart_send

        ; repeat until we reached the end address
        cp	addrl, blockposl
        cpc	addrh, blockposh
        brne	boofa_cmd_g_E_byte

        rjmp	boofa_cmd_g_common

boofa_cmd_g_unknown:
        rjmp	boofa_cmd_unknown

boofa_cmd_g_common:
        ; reset block buffer position
        clr	blockposl
        clr	blockposh

        rjmp	boofa_loop

        ; read program memory
        ; [complete]
boofa_cmd_R_:
        cpi	gen1, 'R'
        brne	boofa_cmd_c

        ; read a single word from flash
        rcall	flash_read_word

        ; send memory word
        rcall	uart_send_word

        ; reset block buffer position
        clr	blockposl
        clr	blockposh

        rjmp	boofa_loop

        ; write program memory (low byte)
        ; [complete]
boofa_cmd_c:
        cpi	gen1, 'c'
        brne	boofa_cmd_C_

        rcall	uart_rec
        mov	lowbyte, gen1

        ldi	gen1, 0x0d
        rcall	uart_send

        rjmp	boofa_loop

        ; write program memory (high byte)
        ; [complete]
boofa_cmd_C_:
        cpi	gen1, 'C'
        brne	boofa_cmd_m

        rcall	uart_rec
        mov	gen2, gen1
        mov	gen1, lowbyte

        rcall	flash_load_word

        ldi	gen1, 0x0d
        rcall	uart_send

        rjmp	boofa_loop

        ; write page
        ; [complete]
boofa_cmd_m:
        cpi	gen1, 'm'
        brne	boofa_cmd_D_

        ; write page buffer to flash
        rcall	flash_write_page

        ; reset block buffer position
        clr	blockposl
        clr	blockposh

        rjmp	boofa_loop

        ; write eeprom memory
        ; [complete]
boofa_cmd_D_:
        cpi	gen1, 'D'
        brne	boofa_cmd_d

        ; receive data byte
        rcall	uart_rec

        ; write to eeprom
        rcall	eeprom_write

        ; reset block buffer position
        clr	blockposl
        clr	blockposh

        rjmp	boofa_loop

        ; read eeprom memory
        ; [complete]
boofa_cmd_d:
        cpi	gen1, 'd'
        brne	boofa_cmd_l

        ; read from eeprom
        rcall	eeprom_read

        ; send data byte
        rcall	uart_send

        ; reset block buffer position
        clr	blockposl
        clr	blockposh

        rjmp	boofa_loop

        ; write lockbits
        ; [complete]
boofa_cmd_l:
        cpi	gen1, 'l'
        brne	boofa_cmd_r

        rcall	uart_rec
        rcall	lock_write

        ldi	gen1, 0x0d
        rcall	uart_send

        rjmp	boofa_loop

        ; read lockbits
        ; [complete]
boofa_cmd_r:
        cpi	gen1, 'r'
        brne	boofa_cmd_F_

        rcall	lock_read
        rcall	uart_send

        rjmp	boofa_loop

        ; read fuse bits
        ; [complete]
boofa_cmd_F_:
        cpi	gen1, 'F'
        brne	boofa_cmd_N_

        rcall	fuse_l_read
        rcall	uart_send

        rjmp	boofa_loop

        ; read high fuse bits
        ; [complete]
boofa_cmd_N_:
        cpi	gen1, 'N'
        brne	boofa_cmd_Q_

        rcall	fuse_h_read
        rcall	uart_send

        rjmp	boofa_loop

        ; read extended fuse bits
        ; [complete]
boofa_cmd_Q_:
        cpi	gen1, 'Q'
        brne	boofa_cmd_P_

        rcall	fuse_e_read
        rcall	uart_send

        rjmp	boofa_loop

        ; enter programming mode
        ; [complete]
boofa_cmd_P_:
        cpi	gen1, 'P'
        brne	boofa_cmd_L_

        ldi	gen1, 0x0d
        rcall	uart_send

        rjmp	boofa_loop

        ; leave programming mode
        ; [complete]
boofa_cmd_L_:
        cpi	gen1, 'L'
        brne	boofa_cmd_E_

        ldi	gen1, 0x0d
        rcall	uart_send

        rjmp	boofa_loop

        ; exit bootloader
        ; [complete]
boofa_cmd_E_:
        cpi	gen1, 'E'
        brne	boofa_cmd_p

        ldi	gen1, 0x0d
        rcall	uart_send

        ;jmp	0
        rjmp	boofa_loop

        ; get programmer type
        ; [complete]
boofa_cmd_p:
        cpi	gen1, 'p'
        brne	boofa_cmd_t

        ; serial programmer
        ldi	gen1, 'S'
        rcall	uart_send

        rjmp	boofa_loop

        ; return supported device codes
        ; [complete]
boofa_cmd_t:
        cpi	gen1, 't'
        brne	boofa_cmd_x

        ; only the device we are running on
        ldi	gen1, DEVCODE
        rcall	uart_send
        ; send list terminator
        ldi	gen1, 0
        rcall	uart_send

        rjmp	boofa_loop

        ; set led
        ; [complete]
boofa_cmd_x:
        cpi	gen1, 'x'
        brne	boofa_cmd_y

        rcall	uart_rec

        ldi	gen1, 0x0d
        rcall	uart_send

	boofa_led_on
        rjmp	boofa_loop

        ; clear led
        ; [complete]
boofa_cmd_y:
        cpi	gen1, 'y'
        brne	boofa_cmd_T_

        rcall	uart_rec

        ldi	gen1, 0x0d
        rcall	uart_send

	boofa_led_off
        rjmp	boofa_loop

        ; set device type
        ; [complete]
boofa_cmd_T_:
        cpi	gen1, 'T'
        brne	boofa_cmd_S_

        rcall	uart_rec
        cpi	gen1, DEVCODE
        brne	boofa_cmd_unknown

        ldi	gen1, 0x0d
        rcall	uart_send

        rjmp	boofa_loop

        ; return programmer identifier
        ; [complete]
boofa_cmd_S_:
        cpi	gen1, 'S'
        brne	boofa_cmd_V_

        ldi	gen1, 'A'
        rcall	uart_send
        ldi	gen1, 'V'
        rcall	uart_send
        ldi	gen1, 'R'
        rcall	uart_send
        ldi	gen1, 'B'
        rcall	uart_send
        ldi	gen1, 'O'
        rcall	uart_send
        ldi	gen1, 'O'
        rcall	uart_send
        ldi	gen1, 'T'
        rcall	uart_send

        rjmp	boofa_loop

        ; return software version
        ; [complete]
boofa_cmd_V_:
        cpi	gen1, 'V'
        brne	boofa_cmd_s

        ldi	gen1, '0'
        rcall	uart_send
        ldi	gen1, '1'
        rcall	uart_send

        rjmp	boofa_loop

        ; return signature bytes
        ; [complete]
boofa_cmd_s:
        cpi	gen1, 's'
        brne	boofa_cmd_ESC

        ldi	gen1, SIGNATURE_002
        rcall	uart_send
        ldi	gen1, SIGNATURE_001
        rcall	uart_send
        ldi	gen1, SIGNATURE_000
        rcall	uart_send

        rjmp	boofa_loop

        ; synchronisation
        ; [complete]
boofa_cmd_ESC:
        cpi	gen1, 0x1b
        brne	boofa_cmd_unknown

        rjmp	boofa_loop

        ; unknown commands
        ; [complete]
boofa_cmd_unknown:
        ldi	gen1, '?'
        rcall	uart_send
        rjmp	boofa_loop

.include "bits.asm"
.include "eeprom.asm"
.include "flash.asm"
.include "fuse.asm"
.include "lock.asm"
.include "spm.asm"
.include "uart.asm"

