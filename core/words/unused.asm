; ( -- n ) 
; Tools
; Amount of available RAM (incl. PAD)
VE_UNUSED:
    .dw $ff06
    .db "unused"
    .dw VE_HEAD
    .set VE_HEAD = VE_UNUSED
XT_UNUSED:
    .dw DO_COLON
PFA_UNUSED:
    .dw XT_SP0
    .dw XT_HERE
    .dw XT_MINUS
    .dw XT_EXIT
