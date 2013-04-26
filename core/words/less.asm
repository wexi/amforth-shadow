; ( n1 n2 -- flag)
; Compare
; true if n1 is less than n2
    VE_LESS:
    .dw $ff01
    .db "<",0
    .dw VE_HEAD
    .set VE_HEAD = VE_LESS
XT_LESS:
    .dw DO_COLON
PFA_LESS:
    .dw XT_MINUS
    .dw XT_LESSZERO
    .dw XT_EXIT
