; ( n1 n2 -- flag )
; Compare
; flag is true if n1 is greater than n2
VE_GREATER:
    .dw $ff01
    .db ">",0
    .dw VE_HEAD
    .set VE_HEAD = VE_GREATER
XT_GREATER:
    .dw DO_COLON
PFA_GREATER:
    .dw XT_MINUS
    .dw XT_GREATERZERO
    .dw XT_EXIT
