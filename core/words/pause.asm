; ( -- ) 
; Multitasking
; Fetch pause vector and execute it. may make a context/task switch
; ASM execution of R-deferred word that cannot be interrupted by SLIH
VE_PAUSE:
    .dw $ff05
    .db "pause",0
    .dw VE_HEAD
    .set VE_HEAD = VE_PAUSE
XT_PAUSE:
    .dw PFA_PAUSE
    .dw ram_pause
    .dw XT_RDEFERFETCH
    .dw XT_RDEFERSTORE

PFA_PAUSE:
    ldiw z,ram_pause
    ld	wl, z+
    ld	wh, z+
    jmp_ DO_EXECUTE
	
.dseg
ram_pause: .byte 2
.cseg
