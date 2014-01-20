; ( ud1 ud2 -- flag)
; Compare unsigned double
; checks whether ud1 is less than ud2
VE_DULESS:
    .dw $ff03
    .db "du<", 0
    .dw VE_HEAD
    .set VE_HEAD = VE_DULESS
XT_DULESS:
    .dw PFA_DULESS
PFA_DULESS:
    savetos
    movw zh:zl, yh:yl
    adiw yh:yl, 4
    movw tosh:tosl, zeroh:zerol
    ldi temp2, 4
PFA_DULESS1:
    dec temp2
    brmi PFA_DULESS3
    ld temp0, y+
    ld temp1, z+
    cp temp0, temp1
    breq PFA_DULESS1
    brcc PFA_DULESS2
    sbiw tosh:tosl, 1
PFA_DULESS2:
    add yl, temp2
    adc yh, zeroh
PFA_DULESS3:
    jmp_ DO_NEXT
	

    
	
    
