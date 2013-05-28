; ( r-addr r-len f-addr f-len --  f) 
; String
; compares two strings in RAM
VE_COMPARE:
    .dw $ff07
    .db "compare",0
    .dw VE_HEAD
    .set VE_HEAD = VE_COMPARE
XT_COMPARE:
    .dw PFA_COMPARE
PFA_COMPARE:
    push xh
    push xl
    movw temp0, tosl
    loadtos
    movw xl, tosl
    loadtos
    movw temp2, tosl
    loadtos
    movw zl, tosl
PFA_COMPARE_LOOP:
    ld temp4, X+
    ld temp5, Z+
    cp temp4, temp5
    brne PFA_COMPARE_NOTEQUAL
    dec temp0
    breq PFA_COMPARE_ENDREACHED2
    dec temp2
    brne PFA_COMPARE_LOOP
    rjmp PFA_COMPARE_ENDREACHED
PFA_COMPARE_ENDREACHED2:
    dec temp2
PFA_COMPARE_ENDREACHED:
    or temp0, temp2
    brne PFA_COMPARE_CHECKLASTCHAR
    clr tosl
    rjmp PFA_COMPARE_DONE
PFA_COMPARE_CHECKLASTCHAR:
PFA_COMPARE_NOTEQUAL:
    ser tosl
    rjmp PFA_COMPARE_DONE

PFA_COMPARE_DONE:
    mov tosh, tosl
    pop xl
    pop xh
    jmp_ DO_NEXT
