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
    mov temp1, tosh
    loadtos
PFA_DOPLUSLOOP4: 
    pop temp2
    pop temp3
    cp zl, temp2
    cpc zh, temp3
    sbrs temp1, 7 ; if msb is set, increment is negative. in that case skip the next instruction
    rjmp PFA_DOPLUSLOOP2 ; jump to test for positive overflow
    brlt PFA_DOPLUSLOOP1 ; exit if underflow
    rjmp PFA_DOPLUSLOOP3
PFA_DOPLUSLOOP2:
    brge PFA_DOPLUSLOOP1 ; exit if overflow
PFA_DOPLUSLOOP3:
    ; next iteration
    push temp3
    push temp2
    push zh
    push zl
    rjmp PFA_DOBRANCH ; read next cell from dictionary and jump to its destination
PFA_DOPLUSLOOP1: 
    pop  temp0
    pop  temp1  ; remove leave destination
    adiw xl, 1 ; skip branch-back address
    jmp_ DO_NEXT
