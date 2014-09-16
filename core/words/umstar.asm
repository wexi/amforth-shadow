; ( u1 u2 -- ud) 
; Arithmetics
; multiply 2 unsigned cells to a double cell
VE_UMSTAR:
    .dw $ff03
    .db "um*",0
    .dw VE_HEAD
    .set VE_HEAD = VE_UMSTAR
XT_UMSTAR:
    .dw PFA_UMSTAR
PFA_UMSTAR:
    ldd	temp0,y+0
    ldd	temp1,y+1
    mul	temp0,tosl
    std	y+0, r0
    mov	temp2, r1
    mul	temp1,tosh
    mov	temp3, r0
    mov	temp4, r1
    mul	temp1,tosl
    add	temp2, r0
    adc	temp3, r1
    adc	temp4, zerol
    mul	temp0, tosh
    add	temp2, r0
    adc	temp3, r1
    adc	temp4, zerol
    std	y+1, temp2
    mov	tosl, temp3
    mov	tosh, temp4
    jmp_ DO_NEXT
