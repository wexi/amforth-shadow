; ( u -- ) 
; Numeric IO
; unsigned PNO with single cell numbers
VE_UDOT:
    .dw $ff02
    .db "u."
    .dw VE_HEAD
    .set VE_HEAD = VE_UDOT
XT_UDOT:
    .dw DO_COLON
PFA_UDOT:
    .dw XT_ZERO
    .dw XT_UDDOT
    .dw XT_EXIT
; : u.        ( us -- )    0 ud. ;