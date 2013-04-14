; ( -- addr ) 
; System Variable
; system LATEST
VE_LATEST:
    .dw $ff06
    .db "latest"
    .dw VE_HEAD
    .set VE_HEAD = VE_LATEST
XT_LATEST:
    .dw PFA_DOVARIABLE
PFA_LATEST:
    .dw ram_LATEST

.dseg
ram_LATEST: .byte 2
.cseg
