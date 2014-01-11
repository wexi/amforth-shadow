; ( n <name> -- ) 
; Compiler
; create a dictionary entry for a value and allocate 1 cell in EEPROM.
VE_VALUE:
    .dw $ff05
    .db "value",0
    .dw VE_HEAD
    .set VE_HEAD = VE_VALUE
XT_VALUE:
    .dw DO_COLON
PFA_VALUE:
    .dw XT_DOVALUE
    .dw XT_EDP
    .dw XT_COMMA
    .dw XT_COMPILE
    .dw XT_EDEFERFETCH
    .dw XT_COMPILE
    .dw XT_EDEFERSTORE
    .dw XT_EDP
    .dw XT_DUP
    .dw XT_1PLUS
    .dw XT_1PLUS
    .dw XT_DOTO
    .dw PFA_EDP
    .dw XT_STOREE
    .dw XT_EXIT
