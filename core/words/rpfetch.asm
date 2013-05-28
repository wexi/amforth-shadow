; (  -- n) 
; Stack
; current return stack pointer address
VE_RP_FETCH:
    .dw $ff03
    .db "rp@",0
    .dw VE_HEAD
    .set VE_HEAD = VE_RP_FETCH
XT_RP_FETCH:
    .dw PFA_RP_FETCH
PFA_RP_FETCH:
    savetos
    in tosl, SPL
    in tosh, SPH
    jmp_ DO_NEXT
