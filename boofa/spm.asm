
; Copyright (c) 2006 by Roland Riegel <feedback@roland-riegel.de>

; This program is free software; you can redistribute it and/or modify
; it under the terms of the GNU General Public License version 2 as
; published by the Free Software Foundation.

        ; waits until spm operation is complete
spm_wait:
	sbic_	SPMCSR, SPMEN
        rjmp	spm_wait
        ret

        ; reenable the application read-while-write section
spm_rww_enable:
        push	gen1

        ldi	gen1, (1 << RWWSRE) | (1 << SPMEN)
        out_	SPMCSR, gen1
        spm
        rcall	spm_wait

        pop 	gen1
        ret

