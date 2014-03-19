; ( c<name> -- ) 
; Compiler
; creates a defer vector which is kept in eeprom.
VE_EDEFER:
    .dw $ff06
    .db "Edefer"
    .dw VE_HEAD
    .set VE_HEAD = VE_EDEFER
XT_EDEFER:
    .dw DO_COLON
PFA_EDEFER:
    .dw XT_DODEFER

    .dw XT_EHERE
    .dw XT_DUP
    .dw XT_COMMA
    .dw XT_COMPILE
    .dw XT_EDEFERFETCH
    .dw XT_COMPILE
    .dw XT_EDEFERSTORE
    .dw XT_CELLPLUS
    .dw XT_DOTO
    .dw PFA_EHERE
    .dw XT_EXIT
