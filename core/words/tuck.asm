; ( n1 n2 -- n2 n1 n2 ) 
; Core
; Copy the first (top) stack item below the second stack item. 
VE_TUCK:
    .dw $ff04
    .db "tuck"
    .dw VE_HEAD
    .set VE_HEAD = VE_TUCK
XT_TUCK:
    .dw DO_COLON
PFA_TUCK:
    .dw XT_SWAP
    .dw XT_OVER
    .dw XT_EXIT
