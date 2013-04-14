; ( -- -1 ) 
; Arithmetics
; leaves the value -1 (true) on TOS
VE_TRUE:
    .dw $ff04
    .db "true"
    .dw VE_HEAD
    .set VE_HEAD = VE_TRUE
XT_TRUE:
    .dw PFA_TRUE
PFA_TRUE:
    savetos
PFA_TRUE1:
    ser tosl
    ser tosh
    jmp_ DO_NEXT
