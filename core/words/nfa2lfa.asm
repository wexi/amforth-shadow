; ( nfa -- lfa )
; System
; get the link field address from the name field address
VE_NFA2LFA:
   .dw $ff07
   .db "nfa>lfa",0
   .dw VE_HEAD
   .set VE_HEAD = VE_NFA2LFA
XT_NFA2LFA:
    .dw DO_COLON
PFA_NFA2LFA:
    .dw XT_NAME2STRING
    .dw XT_1PLUS
    .dw XT_2SLASH
    .dw XT_PLUS
    .dw XT_EXIT
