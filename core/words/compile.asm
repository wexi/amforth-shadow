; ( -- ) 
; Dictionary
; read the following cell from the dictionary and append it to the current dictionary position.
VE_COMPILE:
    .dw $ff07
    .db "compile",0
    .dw  VE_HEAD
    .set VE_HEAD = VE_COMPILE
XT_COMPILE:
    .dw DO_COLON
PFA_COMPILE:
    .dw XT_R_FROM
    .dw XT_DUP
    .dw XT_1PLUS
    .dw XT_TO_R
    .dw XT_FETCHI
    .dw XT_COMMA
    .dw XT_EXIT

