; ( -- e-addr2 e-addr1 ) 
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
    ldiw tos, EE_MARKER2
    savetos
    ldiw tos, EE_MARKER1
    jmp_ DO_NEXT
