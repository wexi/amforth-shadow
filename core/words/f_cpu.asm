; ( -- d ) 
; System
; put the cpu frequency in Hz on stack
VE_F_CPU:
    .dw $ff05
    .db "f_cpu",0
    .dw VE_HEAD
    .set VE_HEAD = VE_F_CPU
XT_F_CPU:
    .dw PFA_DOVALUE
PFA_F_CPU:
    .dw EE_FCPU
    .dw XT_FETCH2E
    .dw XT_STORE2E

XT_FETCH2E:
    .dw DO_COLON
PFA_FETCH2E:
    .dw XT_FETCHI
    .dw XT_DUP
    .dw XT_CELLPLUS
    .dw XT_FETCHE
    .dw XT_SWAP
    .dw XT_FETCHE
    .dw XT_SWAP
    .dw XT_EXIT

XT_STORE2E:
    .dw DO_COLON
PFA_STORE2E:
    .dw XT_DOLITERAL
    .dw -21
    .dw XT_THROW

