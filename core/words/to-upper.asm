; ( c -- C ) 
; String
; if c is a lowercase letter convert it to uppercase
VE_TOUPPER:
    .dw $ff07 
    .db "toupper",0
    .dw VE_HEAD
    .set VE_HEAD = VE_TOUPPER
XT_TOUPPER:
    .dw DO_COLON 
PFA_TOUPPER:
    .dw XT_DUP 
    .dw XT_DOLITERAL 
    .dw 'a' 
    .dw XT_DOLITERAL 
    .dw 'z'+1
    .dw XT_WITHIN 
    .dw XT_DOCONDBRANCH
    .dw PFA_TOUPPER0 
    .dw XT_DOLITERAL
    .dw $df ; inverse of 0x20
    .dw XT_AND 
PFA_TOUPPER0:
    .dw XT_EXIT 
