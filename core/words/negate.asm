; ( n1 -- n2 ) 
; Logic
; 2-complement
VE_NEGATE:
    .dw $ff06
    .db "negate"
    .dw VE_HEAD
    .set VE_HEAD = VE_NEGATE
XT_NEGATE:
    .dw DO_COLON
PFA_NEGATE:
    .dw XT_INVERT
    .dw XT_1PLUS
    .dw XT_EXIT
