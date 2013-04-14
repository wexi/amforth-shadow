; ( n1 -- d1 ) 
; Conversion
; extend (signed) single cell value to double cell
VE_S2D:
    .dw $ff03
    .db "s>d",0
    .dw VE_HEAD
    .set VE_HEAD = VE_S2D
XT_S2D:
    .dw DO_COLON
PFA_S2D:
    .dw XT_DUP
    .dw XT_LESSZERO
    .dw XT_EXIT