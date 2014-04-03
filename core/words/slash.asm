; ( n1 n2 -- n3) 
; Arithmetics
; divide n1 by n2. giving the quotient
VE_SLASH:
    .dw $ff01
    .db "/",0
    .dw VE_HEAD
    .set VE_HEAD = VE_SLASH
XT_SLASH:
    .dw DO_COLON
PFA_SLASH:
    .dw XT_SLASHMOD
    .dw XT_NIP
    .dw XT_EXIT

