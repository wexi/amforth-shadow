; ( -- f-addr ) 
; System Value
; address of the next free dictionary cell
VE_DP:
    .dw $ff02
    .db "dp"
    .dw VE_HEAD
    .set VE_HEAD = VE_DP
XT_DP:
    .dw PFA_DOVALUE1
PFA_DP:
    .dw RAM_DP
    .dw XT_RVALUEFETCH
    .dw XT_RVALUESTORE
