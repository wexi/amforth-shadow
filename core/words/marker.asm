; ( -- ) 
; Search Order
; Duplicate first entry in the current search order list
VE_MARKER:
    .dw $ff08
    .db "(marker)"
    .dw VE_HEAD
    .set VE_HEAD = VE_MARKER
XT_MARKER:
    .dw PFA_DOVALUE
PFA_MARKER:
    .dw EE_MARKER
    .dw XT_FETCHE
    .dw XT_STOREE
