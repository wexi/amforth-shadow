
; Copyright (c) 2006 by Roland Riegel <feedback@roland-riegel.de>

; This program is free software; you can redistribute it and/or modify
; it under the terms of the GNU General Public License version 2 as
; published by the Free Software Foundation.

        ; reads a single byte from eeprom memory
eeprom_read: ; addrh:addrl (in,out): address
             ; gen1 (out): data
        push	gen2
        
        ; eeprom access is timing critical
        ; disable interrupts
        in_	gen2, SREG
        cli
        
        ; read eeprom
        out_	EEARH, addrh
        out_	EEARL, addrl
        sbi_	EECR, EERE
        in_	gen1, EEDR
        
        ; restore interrupts
        out_	SREG, gen2

        ; increment address
        ldi	gen2, 1
        add	addrl, gen2
        clr	gen2
        adc	addrh, gen2

        pop	gen2
        ret

        ; writes a single byte to eeprom memory
eeprom_write: ; addrh:addrl (in,out): address
              ; gen1 (in): data byte
        push	gen2

        ; eeprom access is timing critical
        ; disable interrupts
        in_	gen2, SREG
        cli
        
        ; prepare eeprom writing
        out_	EEARH, addrh
        out_	EEARL, addrl
        out_	EEDR, gen1

        ; start write
        sbi_	EECR, EEMWE
        sbi_	EECR, EEWE

        ; wait for eeprom being ready
eeprom_write_wait:
        sbic_	EECR, EEWE
        rjmp	eeprom_write_wait
        
        ; restore interrupts
        out_	SREG, gen2

        ; increment address
        ldi	gen2, 1
        add	addrl, gen2
        clr	gen2
        adc	addrh, gen2

        pop	gen2
        ret

