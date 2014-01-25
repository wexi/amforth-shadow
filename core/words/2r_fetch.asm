; ( -- x1 x2 ) ( R: x1 x2 -- x1 x2 )
; Stack
; copy DTOR to TOS
VE_2R_FETCH:
    .dw $ff03
    .db "2r@",0
    .dw VE_HEAD
    .set VE_HEAD = VE_2R_FETCH
XT_2R_FETCH:
    .dw PFA_2R_FETCH
PFA_2R_FETCH:
    in_ zl, spl
    in_ zh, sph
    savetos
    ldd tosl, z+3		;x1
    ldd tosh, z+4
    savetos
    ldd tosl, z+1		;x2
    ldd tosh, z+2
    jmp_ DO_NEXT
