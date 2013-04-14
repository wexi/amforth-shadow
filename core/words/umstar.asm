; ( u1 u2 -- d) 
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
    movw temp0, tosl
    loadtos
    ; result: (temp3*temp1)* 65536 + (temp3*temp0 + temp1*temp2) * 256 + (temp0 * temp2)
    ; low bytes
    mul tosl,temp0
    movw zl, r0
    clr temp2
    clr temp3
    ; middle bytes
    mul tosh, temp0
    add zh, r0
    adc temp2, r1
    adc temp3, zeroh
        
    mul tosl, temp1
    add zh, r0
    adc temp2, r1
    adc temp3, zeroh
    
    mul tosh, temp1
    add temp2, r0
    adc temp3, r1
    movw tosl, zl
    savetos
    movw tosl, temp2
    jmp_ DO_NEXT
