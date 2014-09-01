; ( -- c ) 
; Character IO
; Fetch key vector and execute it, should leave a single character on TOS
; ASM execution of U-deferred word that cannot be interrupted by SLIH

VE_KEY:
    .dw $ff03
    .db "key",0
    .dw VE_HEAD
    .set VE_HEAD = VE_KEY
XT_KEY:
    .dw	PFA_KEY
    .dw USER_KEY
    .dw XT_UDEFERFETCH
    .dw XT_UDEFERSTORE

PFA_KEY:
    movw zh:zl, uph:upl
    ldd	wl, Z+USER_KEY+0
    ldd	wh, Z+USER_KEY+1
    jmp_ DO_EXECUTE
