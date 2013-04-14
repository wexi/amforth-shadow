; ( limit counter -- ) (R: -- loop-sys )
; System
; runtime of do
;VE_DODO:
;    .dw $ff04
;    .db "(do)"
;    .dw VE_HEAD
;    .set VE_HEAD = VE_DODO
XT_DODO:
    .dw PFA_DODO
PFA_DODO:
    ; put the content of the next flash cell on return stack
    ; it is the address of the instruction _after_ the (+)loop
    movw zl, xl
    readflashcell temp0,temp1
    adiw xl, 1    ; adjust to NEXT+1 = jump over <mark (for leave)

    ld temp2, Y+
    ld temp3, Y+
PFA_DODO1:
    push temp1
    push temp0
    push temp3
    push temp2
    push tosh
    push tosl
    loadtos
    jmp_ DO_NEXT
