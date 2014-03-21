; ( -- e-addr ) 
; System Value
; address of the next free address in eeprom
VE_EHERE:
    .dw $ff05
    .db "ehere",0
    .dw VE_HEAD
    .set VE_HEAD = VE_EHERE
XT_EHERE:
    .dw PFA_DOVALUE1
PFA_EHERE:
    .dw RAM_EHERE
    .dw XT_RDEFERFETCH
    .dw XT_RDEFERSTORE
