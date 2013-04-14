; (C: orig1 -- orig2 ) 
; Compiler
; resolve the forward reference and place a new unresolved forward reference
VE_ELSE:
    .dw $0004
    .db "else"
    .dw VE_HEAD
    .set VE_HEAD = VE_ELSE
XT_ELSE:
    .dw DO_COLON
PFA_ELSE:
    .dw XT_COMPILE
    .dw XT_DOBRANCH
    .dw XT_GMARK
    .dw XT_SWAP
    .dw XT_GRESOLVE
    .dw XT_EXIT
