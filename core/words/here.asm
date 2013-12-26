; ( -- addr ) 
; System Value
; address of the next free data space (RAM) cell
VE_HERE:
    .dw $ff04
    .db "here"
    .dw VE_HEAD
    .set VE_HEAD = VE_HERE
XT_HERE:
    .dw PFA_DOVALUE1
PFA_HERE:
    .dw RAM_HERE
    .dw XT_RVALUEFETCH
    .dw XT_RVALUESTORE
