; ( n -- ) 
; System
; allocate or release memory in RAM
VE_ALLOT:
    .dw $ff05
    .db "allot",0
    .dw VE_HEAD
    .set VE_HEAD = VE_ALLOT
XT_ALLOT:
    .dw DO_COLON
PFA_ALLOT:
    .dw XT_HERE
    .dw XT_PLUS
    .dw XT_DOTO
    .dw PFA_HERE
    .dw XT_EXIT
