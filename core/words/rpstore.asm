; ( addr  -- ) (R: -- x*y)
; Stack
; set return stack pointer
VE_RP_STORE:
    .dw $ff03
    .db "rp!",0
    .dw VE_HEAD
    .set VE_HEAD = VE_RP_STORE
XT_RP_STORE:
    .dw PFA_RP_STORE
PFA_RP_STORE:
    in_ temp0, SREG
    cli
    out_ SPL, tosl
    out_ SPH, tosh
    out_ SREG, temp0
    loadtos
    jmp_ DO_NEXT
