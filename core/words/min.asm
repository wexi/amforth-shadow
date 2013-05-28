; ( n1 n2 -- n1|n2 ) 
; Compare
; compare two values leave the smaller one
VE_MIN:
    .dw $ff03
    .db "min",0
    .dw VE_HEAD
    .set VE_HEAD = VE_MIN
XT_MIN:
    .dw DO_COLON
PFA_MIN:
    .dw XT_OVER
    .dw XT_OVER
    .dw XT_GREATER
    .dw XT_DOCONDBRANCH
    .dw PFA_MIN1
    .dw XT_SWAP
PFA_MIN1:
    .dw XT_DROP
    .dw XT_EXIT
