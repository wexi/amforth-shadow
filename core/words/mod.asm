; ( n1 n2 -- n3) 
; Arithmetics
; divide n1 by n2 giving the remainder n3
VE_MOD:
    .dw $ff03
    .db "mod",0
    .dw VE_HEAD
    .set VE_HEAD = VE_MOD
XT_MOD:
    .dw DO_COLON
PFA_MOD:
    .dw XT_SLASHMOD
    .dw XT_DROP
    .dw XT_EXIT
