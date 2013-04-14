; ( n1 n2 -- rem quot) 
; Arithmetics
; signed division n1/n2 with remainder and quotient
VE_SLASHMOD:
    .dw $ff04
    .db "/mod"
    .dw VE_HEAD
    .set VE_HEAD = VE_SLASHMOD
XT_SLASHMOD:
    .dw PFA_SLASHMOD
PFA_SLASHMOD:
    movw temp2, tosl
    
    ld temp0, Y+
    ld temp1, Y+

    mov	temp6,temp1	;move dividend High to sign register
    eor	temp6,temp3	;xor divisor High with sign register
    sbrs	temp1,7	;if MSB in dividend set
    rjmp	PFA_SLASHMOD_1
    com	temp1		;    change sign of dividend
    com	temp0		
    subi	temp0,low(-1)
    sbci	temp1,high(-1)
PFA_SLASHMOD_1:	
    sbrs	temp3,7	;if MSB in divisor set
    rjmp	PFA_SLASHMOD_2
    com	temp3		;    change sign of divisor
    com	temp2		
    subi	temp2,low(-1)
    sbci	temp3,high(-1)
PFA_SLASHMOD_2:	clr	temp4	;clear remainder Low byte
    sub	temp5,temp5;clear remainder High byte and carry
    ldi	temp7,17	;init loop counter

PFA_SLASHMOD_3:	rol	temp0		;shift left dividend
    rol	temp1
    dec	temp7		;decrement counter
    brne	PFA_SLASHMOD_5		;if done
    sbrs	temp6,7		;    if MSB in sign register set
    rjmp	PFA_SLASHMOD_4
    com	temp1	;        change sign of result
    com	temp0
    subi	temp0,low(-1)
    sbci	temp1,high(-1)
PFA_SLASHMOD_4:	rjmp PFA_SLASHMODmod_done			;    return
PFA_SLASHMOD_5:	rol	temp4	;shift dividend into remainder
    rol	temp5
    sub	temp4,temp2	;remainder = remainder - divisor
    sbc	temp5,temp3	;
    brcc	PFA_SLASHMOD_6		;if result negative
    add	temp4,temp2	;    restore remainder
    adc	temp5,temp3
    clc			;    clear carry to be shifted into result
    rjmp	PFA_SLASHMOD_3		;else
PFA_SLASHMOD_6:	sec			;    set carry to be shifted into result
    rjmp	PFA_SLASHMOD_3

PFA_SLASHMODmod_done:
    ; put remainder on stack
    st -Y,temp5
    st -Y,temp4

    ; put quotient on stack
    movw tosl, temp0
    jmp_ DO_NEXT
