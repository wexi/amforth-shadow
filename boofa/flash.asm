
; Copyright (c) 2006 by Roland Riegel <feedback@roland-riegel.de>

; This program is free software; you can redistribute it and/or modify
; it under the terms of the GNU General Public License version 2 as
; published by the Free Software Foundation.

.if DEVELPM
.macro lpm_device
        elpm @0, Z+
.endmacro
.else
.macro lpm_device
        lpm @0, Z+
.endmacro
.endif

        ; erases all flash in the application section
flash_erase:
        push	gen1
        push	Zl
        push	Zh

        ; begin with first page
        movw	addrh:addrl, Xh:Xl

flash_erase_page:
        rcall	flash_set_addr

        ; start page erase
        ldi	gen1, (1 << PGERS) | (1 << SPMEN)
        out_	SPMCSR, gen1
        spm

        rcall	spm_wait

        ; jump to next page
        ldi	gen1, LOW(PAGESIZE)
        add	addrl, gen1
        ldi	gen1, HIGH(PAGESIZE)
        adc	addrh, gen1

        ; repeat if we did not yet reach the bootloader section
        ldi	gen1, LOW(DEVBOOT)
        cp	addrl, gen1
        ldi	gen1, HIGH(DEVBOOT)
        cpc	addrh, gen1
        brne	flash_erase_page

        pop	Zh
        pop	Zl
        pop	gen1
        ret

        ; reads a single instruction word from flash
flash_read_word: ; addrh:addrl (in,out): instruction word address
                 ; gen2:gen1 (out): instruction word
        push	Zl
        push	Zh

        ; set address to read from
        rcall	flash_set_addr

        ; read word
        lpm_device gen1
        lpm_device gen2

        ; get new address
        rcall	flash_get_addr

        pop	Zh
        pop	Zl
        ret

        ; loads an instruction word into the internal flash page buffer
flash_load_word: ; blockposh:blockposl (in,out): page offset
                 ; gen2:gen1 (in): word to load into page buffer
        push	gen1
        push	Zl
        push	Zh
        push	r0
        push	r1

        ; move parameters to the required locations
        mov	r0, gen1
        mov	r1, gen2
        mov	Zl, blockposl
        mov	Zh, blockposh

        ; start the page buffer write
        ldi	gen1, (1 << SPMEN)
        out_	SPMCSR, gen1
        spm

        ; wait until transfer is complete
        rcall	spm_wait

        ; advance buffer position
        adiw	Zh:Zl, 2
        mov	blockposl, Zl
        mov	blockposh, Zh

        pop	r1
        pop	r0
        pop	Zh
        pop	Zl
        pop	gen1
        ret

        ; initiates write operation from internal page buffer to flash
flash_write_page: ; addrh:addrh (in): flash page word address
        push	gen1
        push	Zl
        push	Zh

        ; set address to read from
        rcall	flash_set_addr

        ; start flash write
        ldi	gen1, (1 << PGWRT) | (1 << SPMEN)
        out_	SPMCSR, gen1
        spm

        ; wait for write operation to complete
        rcall	spm_wait
        ; reenable application section
        rcall	spm_rww_enable

        pop	Zh
        pop	Zl
        pop	gen1
        ret

.if DEVELPM
flash_set_addr: ; addrh:addrl (in): flash word address
                ; RAMPZ:Zh:Zl (out): flash byte address
        push	gen1

        movw	Zh:Zl, addrh:addrl
        clr	gen1
        lsl	Zl
        rol	Zh
        rol	gen1
        out_	RAMPZ, gen1

        pop	gen1
        ret

flash_get_addr: ; RAMPZ:Zh:Zl (in): flash byte address
                ; addrh:addrl (out): flash word address
        push	gen1

        movw	addrh:addrl, Zh:Zl
        in_	gen1, RAMPZ
        lsr	gen1
        ror	addrh
        ror	addrl

        pop	gen1
        ret
.else
flash_set_addr: ; addrh:addrl (in): flash word address
                ; Zh:Zl (out): flash byte address

        movw	Zh:Zl, addrh:addrl
        lsl	Zl
        rol	Zh

        ret

flash_get_addr: ; Zh:Zl (in): flash byte address
                ; addrh:addrl (out): flash word address

        movw	addrh:addrl, Zh:Zl
        lsr	addrh
        ror	addrl

        ret
.endif

; vi:syntax=asm:

