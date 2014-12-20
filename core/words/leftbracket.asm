; ( --  ) 
; Compiler
; enter interpreter mode
VE_LBRACKET:
    .dw $0001
    .db "[",0
    .dw VE_HEAD
    .set VE_HEAD = VE_LBRACKET
XT_LBRACKET:
    .dw DO_COLON
PFA_LBRACKET:
    .dw XT_ZERO
    .dw XT_STATE
    .dw XT_STORE
    .dw XT_EXIT
