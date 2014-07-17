; ( d -- flag )
; Compare
; compares if double precision number equals 0
VE_DEQUALZERO:
    .dw $ff03
    .db "d0=",0
    .dw VE_HEAD
    .set VE_HEAD = VE_DEQUALZERO
XT_DEQUALZERO:
    .dw PFA_DEQUALZERO
PFA_DEQUALZERO:
    mov temp0, tosl
    or temp0, tosh
    loadtos
    or temp0, tosl
    or temp0, tosh
    movw tosh:tosl, zeroh:zerol
    brne PFA_DEQUALZERO1
    sbiw tosh:tosl, 1
PFA_DEQUALZERO1:
    jmp_ DO_NEXT
    
	
    

