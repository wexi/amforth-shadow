; ( -- addr ) 
; Numeric IO
; pointer to current write position in the Pictured Numeric Output buffer
VE_HLD:
    .dw $ff03
    .db "hld",0
    .dw VE_HEAD
    .set VE_HEAD = VE_HLD
XT_HLD:
    .dw PFA_DOVARIABLE
PFA_HLD:
    .dw ram_hld

.dseg
ram_hld: .byte 2
.cseg
