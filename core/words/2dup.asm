; ( x1 x2 -- x1 x2 x1 x2 ) 
; Stack
; Duplicate the 2 top elements
VE_2DUP:
    .dw $ff04
    .db "2dup"
    .dw VE_HEAD
    .set VE_HEAD = VE_2DUP
XT_2DUP:
    .dw DO_COLON
PFA_2DUP:
    .dw XT_OVER
    .dw XT_OVER
    .dw XT_EXIT
