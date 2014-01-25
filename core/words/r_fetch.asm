; ( -- n) (R: n -- n )
; Stack
; fetch content of TOR
VE_R_FETCH:
    .dw $ff02
    .db "r@"
    .dw VE_HEAD
    .set VE_HEAD = VE_R_FETCH
XT_R_FETCH:
    .dw PFA_R_FETCH
PFA_R_FETCH:
    savetos
    in_ zl, spl
    in_ zh, sph
    ldd tosl, z+1		;low endian
    ldd tosh, z+2
    jmp_ DO_NEXT
