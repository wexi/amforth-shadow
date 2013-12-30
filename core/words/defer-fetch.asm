; ( xt1 -- xt2 ) 
; System
; returns the XT associated with the given XT
VE_DEFERFETCH:
    .dw $ff06
    .db "defer@"
    .dw VE_HEAD
    .set VE_HEAD = VE_DEFERFETCH
XT_DEFERFETCH:
    .dw DO_COLON
PFA_DEFERFETCH:
    .dw XT_1PLUS ; >body
    .dw XT_DUP
    .dw XT_1PLUS 
    .dw XT_FETCHI
    .dw XT_EXECUTE
    .dw XT_EXIT
