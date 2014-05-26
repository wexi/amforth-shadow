; ( -- e-addr ) 
; System Value
; The eeprom address until which MARKER saves and restores the eeprom data.
VE_MARKER:
    .dw $ff08
    .db "(marker)"
    .dw VE_HEAD
    .set VE_HEAD = VE_MARKER
XT_MARKER:
    .dw PFA_DOVALUE1
PFA_MARKER:
    .dw EE_MARKER
    .dw XT_EDEFERFETCH
    .dw XT_EDEFERSTORE
