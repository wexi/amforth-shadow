; ( limit counter -- ) (R: -- loop-sys| )
; System
; runtime of ?do
;VE_DOQDO:
;    .dw $ff05
;    .db "(?do)"
;    .dw VE_HEAD
;    .set VE_HEAD = VE_DOQDO
XT_DOQDO:
    .dw PFA_DOQDO
PFA_DOQDO:
    ; put the content of the next flash cell on return stack
    ; it is the address of the instruction _after_ the (+)loop
    movw zl, xl
    readflashcell temp0,temp1
    adiw xl, 1    ; adjust to NEXT+1 = jump over <mark (for leave)

    ld temp2, Y+
    ld temp3, Y+
    ; now check for equality
    cp tosl, temp2
    cpc tosh, temp3
    brne PFA_DODO1
    ; both values are the same -> skip loop
    movw xl, temp0
    loadtos
    jmp_ DO_NEXT
