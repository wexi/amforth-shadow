; ( x1 x2 x3 x4 -- x3 x4 x1 x2 ) 
; Stack
; Exchange the two top cell pairs
VE_2SWAP:
    .dw $ff05
    .db "2swap",0
    .dw VE_HEAD
    .set VE_HEAD = VE_2SWAP
XT_2SWAP:
    .dw DO_COLON
PFA_2SWAP:
    .dw XT_ROT
    .dw XT_TO_R
    .dw XT_ROT
    .dw XT_R_FROM
    .dw XT_EXIT
