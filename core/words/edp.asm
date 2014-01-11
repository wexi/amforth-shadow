; ( -- e-addr ) 
; System Value
; address of the next free address in eeprom
VE_EDP:
    .dw $ff03
    .db "edp",0
    .dw VE_HEAD
    .set VE_HEAD = VE_EDP
XT_EDP:
    .dw PFA_DOVALUE1
PFA_EDP:
    .dw EE_EDP
    .dw XT_EDEFERFETCH
    .dw XT_EDEFERSTORE
