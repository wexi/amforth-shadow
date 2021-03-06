; ( ud u2 -- rem quot) 
; Arithmetics
; unsigned division ud / u2 with remainder
VE_UMSLASHMOD:
    .dw $ff06
    .db "um/mod"
    .dw VE_HEAD
    .set VE_HEAD = VE_UMSLASHMOD
XT_UMSLASHMOD:
    .dw PFA_UMSLASHMOD
PFA_UMSLASHMOD:
    movw temp6, tosl

    ld temp2, Y+
    ld temp3, Y+
  
    ld temp0, Y+
    ld temp1, Y+

;; unsigned 32/16 -> 16r16 divide

PFA_UMSLASHMODmod:

  ; set loop counter
    ldi temp5,$10

PFA_UMSLASHMODmod_loop:
    ; shift left, saving high bit
    clr temp4
    lsl temp0
    rol temp1
    rol temp2
    rol temp3
    rol temp4

  ; try subtracting divisor
    cp temp2, temp6
    cpc temp3, temp7
    cpc temp4,zerol

    brcs PFA_UMSLASHMODmod_loop_control

PFA_UMSLASHMODmod_subtract:
    ; dividend is large enough
    ; do the subtraction for real
    ; and set lowest bit
    inc temp0
    sub temp2, temp6
    sbc temp3, temp7

PFA_UMSLASHMODmod_loop_control:
    dec  temp5
    brne PFA_UMSLASHMODmod_loop

PFA_UMSLASHMODmod_done:
    ; put remainder on stack
    st -Y,temp3
    st -Y,temp2

    ; put quotient on stack
    movw tosl, temp0
    jmp_ DO_NEXT
