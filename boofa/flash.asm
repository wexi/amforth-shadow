
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
        push	ZL
        push	ZH

        ; begin with first page
        clr	addrl
        clr	addrh

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
        ldi	gen1, LOW(DEVBOOTSTART)
        cp	addrl, gen1
        ldi	gen1, HIGH(DEVBOOTSTART)
        cpc	addrh, gen1
        brne	flash_erase_page

        pop	ZH
        pop	ZL
        pop	gen1
        ret

        ; reads a single instruction word from flash
flash_read_word: ; addrh:addrl (in,out): instruction word address
                 ; gen2:gen1 (out): instruction word
        push	ZL
        push	ZH

        ; set address to read from
        rcall	flash_set_addr

        ; read word
        lpm_device gen1
        lpm_device gen2

        ; get new address
        rcall	flash_get_addr

        pop	ZH
        pop	ZL
        ret

        ; loads an instruction word into the internal flash page buffer
flash_load_word: ; blockposh:blockposl (in,out): page offset
                 ; gen2:gen1 (in): word to load into page buffer
        push	gen1
        push	ZL
        push	ZH
        push	r0
        push	r1

        ; move parameters to the required locations
        mov	r0, gen1
        mov	r1, gen2
        mov	ZL, blockposl
        mov	ZH, blockposh

        ; start the page buffer write
        ldi	gen1, (1 << SPMEN)
        out_	SPMCSR, gen1
        spm

        ; wait until transfer is complete
        rcall	spm_wait

        ; advance buffer position
        adiw	ZH:ZL, 2
        mov	blockposl, ZL
        mov	blockposh, ZH

        pop	r1
        pop	r0
        pop	ZH
        pop	ZL
        pop	gen1
        ret

        ; initiates write operation from internal page buffer to flash
flash_write_page: ; addrh:addrh (in): flash page word address
        push	gen1
        push	ZL
        push	ZH

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

        pop	ZH
        pop	ZL
        pop	gen1
        ret

.if DEVELPM
flash_set_addr: ; addrh:addrl (in): flash word address
                ; RAMPZ:ZH:ZL (out): flash byte address
        push	gen1

        mov	ZL, addrl
        mov	ZH, addrh
        clc
        clr	gen1
        rol	ZL
        rol	ZH
        rol	gen1
        out_	RAMPZ, gen1

        pop	gen1
        ret

flash_get_addr: ; RAMPZ:ZH:ZL (in): flash byte address
                ; addrh:addrl (out): flash word address
        push	gen1

        mov	addrl, ZL
        mov	addrh, ZH
        in_	gen1, RAMPZ
        clc
        ror	gen1
        ror	addrh
        ror	addrl

        pop	gen1
        ret
.else
flash_set_addr: ; addrh:addrl (in): flash word address
                ; ZH:ZL (out): flash byte address

        mov	ZL, addrl
        mov	ZH, addrh
        clc
        rol	ZL
        rol	ZH

        ret

flash_get_addr: ; ZH:ZL (in): flash byte address
                ; addrh:addrl (out): flash word address

        mov	addrl, ZL
        mov	addrh, ZH
        clc
        ror	addrh
        ror	addrl

        ret
.endif

; vi:syntax=asm:

