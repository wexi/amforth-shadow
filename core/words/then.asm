; ( -- ) (C: orig -- ) 
; Compiler
; finish if
VE_THEN:
    .dw $0004
    .db "then"
    .dw VE_HEAD
    .set VE_HEAD = VE_THEN
XT_THEN:
    .dw DO_COLON
PFA_THEN:
    .dw XT_GRESOLVE
    .dw XT_EXIT
