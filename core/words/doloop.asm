; ( -- ) (R: loop-sys1 -- loop-sys2| )
; System
; runtime of loop
VE_DOLOOP:
   .dw $ff06
   .db "(loop)"
   .dw VE_HEAD
   .set VE_HEAD = VE_DOLOOP
XT_DOLOOP:
    .dw PFA_DOLOOP
PFA_DOLOOP:
    pop zl
    pop zh
    adiw zl,1
    brvs PFA_DOPLUSLOOP_LEAVE
    jmp_ PFA_DOPLUSLOOP_NEXT
