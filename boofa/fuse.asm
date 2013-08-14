
; Copyright (c) 2006 by Roland Riegel <feedback@roland-riegel.de>

; This program is free software; you can redistribute it and/or modify
; it under the terms of the GNU General Public License version 2 as
; published by the Free Software Foundation.

fuse_l_read: ; gen1 (out): low fuse bits
        ldi	gen1, 0x00
        rjmp	bits_read

fuse_h_read: ; gen1 (out): high fuse bits
        ldi	gen1, 0x03
        rjmp	bits_read

fuse_e_read: ; gen1 (out): extended fuse bits
        ldi	gen1, 0x02
        rjmp	bits_read

