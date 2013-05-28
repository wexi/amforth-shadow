; ( n -- ) (R: -- n)
; Stack
; move TOS to TOR
VE_TO_R:
    .dw $ff02
    .db ">r"
    .dw VE_HEAD
    .set VE_HEAD = VE_TO_R
XT_TO_R:
    .dw PFA_TO_R
PFA_TO_R:
    push tosh
    push tosl
    loadtos
    jmp_ DO_NEXT
