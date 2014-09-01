; ( -- f) 
; Character IO
; Fetch key? vector and execute it. should turn on key sender, if it is disabled/stopped
; ASM execution of U-deferred word that cannot be interrupted by SLIH

VE_KEYQ:
    .dw $ff04
    .db "key?"
    .dw VE_HEAD
    .set VE_HEAD = VE_KEYQ
XT_KEYQ:
    .dw	PFA_KEYQ
    .dw USER_KEYQ
    .dw XT_UDEFERFETCH
    .dw XT_UDEFERSTORE

PFA_KEYQ:
    movw zh:zl, uph:upl
    ldd	wl, Z+USER_KEYQ+0
    ldd	wh, Z+USER_KEYQ+1
    jmp_ DO_EXECUTE
