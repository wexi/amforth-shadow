; ( -- f ) 
; Character IO
; Fetch emit? vector and execute it. should return the ready-to-send condition
; ASM execution of U-deferred word that cannot be interrupted by SLIH

VE_EMITQ:
    .dw $ff05
    .db "emit?",0
    .dw VE_HEAD
    .set VE_HEAD = VE_EMITQ
XT_EMITQ:
    .dw	PFA_EMITQ
    .dw USER_EMITQ
    .dw XT_UDEFERFETCH
    .dw XT_UDEFERSTORE

PFA_EMITQ:
    movw zh:zl, uph:upl
    ldd	wl, Z+USER_EMITQ+0
    ldd	wh, Z+USER_EMITQ+1
    jmp_ DO_EXECUTE
