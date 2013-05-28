; ( -- addr ) 
; System Variable
; variable holding the number of characters in TIB
VE_NUMBERTIB:
    .dw $ff04
    .db "#tib"
    .dw VE_HEAD
    .set VE_HEAD  = VE_NUMBERTIB
XT_NUMBERTIB:
    .dw PFA_DOVARIABLE
PFA_NUMBERTIB:
    .dw ram_sharptib

.dseg
ram_sharptib: .byte 2
.cseg
 
