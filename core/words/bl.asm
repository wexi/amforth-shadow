; ( -- 32 ) 
; Character IO
; put ascii code of the blank to the stack
VE_BL:
    .dw $ff02
    .db "bl"
    .dw VE_HEAD
    .set VE_HEAD = VE_BL
XT_BL:
    .dw PFA_DOVARIABLE
PFA_BL:
    .dw 32
