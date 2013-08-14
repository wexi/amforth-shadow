
; Copyright (c) 2006 by Roland Riegel <feedback@roland-riegel.de>

; This program is free software; you can redistribute it and/or	modify
; it under the terms of the GNU General Public License version 2 as
; published by the Free Software Foundation.

lock_read: ; gen1 (out): lock bits
        ldi	gen1, 0x01
        rjmp	bits_read

lock_write: ; gen1 (in): lock bits to write
        push	gen1
        push	r0

        mov	r0, gen1
        ldi	gen1, 0xc3
        or	r0, gen1
        ldi	gen1, 0x01
        rcall	bits_write

        pop	r0
        pop	gen1
        ret

