; ( -- n )
; System
; runtime of value
VE_DOVALUE:
    .dw $ff07
    .db "(value)", 0
    .dw VE_HEAD
    .set VE_HEAD = VE_DOVALUE
XT_DOVALUE:
    .dw PFA_DOVALUE
PFA_DOVALUE:
    call_ DO_DODOES
    .dw XT_DUP
    .dw XT_FETCHI
    .dw XT_SWAP
    .dw XT_1PLUS
    .dw XT_FETCHI
    .dw XT_EXECUTE
    .dw XT_EXIT
