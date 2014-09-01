; ( c -- ) 
; Character IO
; Fetch the emit vector and execute it. should emit a character from TOS
; ASM execution of U-deferred word that cannot be interrupted by SLIH

VE_EMIT:
    .dw $ff04
    .db "emit"
    .dw VE_HEAD
    .set VE_HEAD = VE_EMIT
XT_EMIT:
    .dw	PFA_EMIT
    .dw USER_EMIT
    .dw XT_UDEFERFETCH
    .dw XT_UDEFERSTORE

PFA_EMIT:
    movw zh:zl, uph:upl
    ldd	wl, Z+USER_EMIT+0
    ldd	wh, Z+USER_EMIT+1
    jmp_ DO_EXECUTE
