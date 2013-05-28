; ( -- wid) 
; System Value
; word list identifier of the environmental search list
VE_ENVIRONMENT:
    .dw $ff0b
    .db "environment",0
    .dw VE_HEAD
    .set VE_HEAD = VE_ENVIRONMENT
XT_ENVIRONMENT:
    .dw PFA_DOVARIABLE
PFA_ENVIRONMENT:
    .dw EE_ENVIRONMENT
