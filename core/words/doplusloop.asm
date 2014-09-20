; ( n1 -- ) (R: loop-sys1 -- loop-sys2| )
; System
; runtime of +loop
;VE_DOPLUSLOOP:
;    .dw $ff07
;    .db "(+loop)"
;    .dw VE_HEAD
;    .set VE_HEAD = VE_DOPLUSLOOP
XT_DOPLUSLOOP:
    .dw PFA_DOPLUSLOOP
PFA_DOPLUSLOOP:
    pop zl
    pop zh
    add zl, tosl
    adc zh, tosh
    loadtos
    brvs PFA_DOPLUSLOOP_LEAVE
    ; next cycle
PFA_DOPLUSLOOP_NEXT:
    ; next iteration
    push zh
    push zl
    rjmp PFA_DOBRANCH ; read next cell from dictionary and jump to its destination
PFA_DOPLUSLOOP_LEAVE:
    pop  temp0
    pop  temp1  ; remove limit
    pop  temp0
    pop  temp1  ; remove leave destination
    adiw xl, 1  ; skip branch-back address
    jmp_ DO_NEXT
