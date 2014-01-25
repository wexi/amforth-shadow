; ( -- n ) (R: n --)
; Stack
; move TOR to TOS
VE_R_FROM:
    .dw $ff02
    .db "r>"
    .dw VE_HEAD
    .set VE_HEAD = VE_R_FROM
XT_R_FROM:
    .dw PFA_R_FROM
PFA_R_FROM:
    savetos
    pop tosl			;low endian
    pop tosh
    jmp_ DO_NEXT
