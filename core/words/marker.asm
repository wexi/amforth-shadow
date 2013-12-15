; ( -- e-addr ) 
; System
; Put EEPROM marker address
VE_MARKER:
    .dw $ff08
    .db "(marker)"
    .dw VE_HEAD
    .set VE_HEAD = VE_MARKER
XT_MARKER:
    _pfa_
    savetos
    ldiw tos, ee_marker
    jmp_ DO_NEXT
