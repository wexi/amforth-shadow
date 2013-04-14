; ( -- n ) 
; Stack
; number of single-cell values contained in the data stack before n was placed on the stack.
VE_DEPTH:
    .dw $ff05
    .db "depth",0
    .dw VE_HEAD
    .set VE_HEAD = VE_DEPTH
XT_DEPTH:
    .dw DO_COLON
PFA_DEPTH:
    .dw XT_SP0
    .dw XT_SP_FETCH
    .dw XT_MINUS
    .dw XT_2SLASH
    .dw XT_1MINUS
    .dw XT_EXIT
