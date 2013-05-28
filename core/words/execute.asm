; ( xt -- ) 
; System
; execute XT
VE_EXECUTE:
    .dw $ff07
    .db "execute",0
    .dw VE_HEAD
    .set VE_HEAD = VE_EXECUTE
XT_EXECUTE:
    .dw PFA_EXECUTE
PFA_EXECUTE:
    movw wl, tosl
    loadtos
    jmp_ DO_EXECUTE
