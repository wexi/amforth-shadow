; ( bitmask byte-addr --  )
; MCU
; toggle bits set in bitmask on byte at addr
VE_BM_TOGGLE:
    .dw $ff09
    .db "bm-toggle",0
    .dw VE_HEAD
    .set VE_HEAD = VE_BM_TOGGLE
XT_BM_TOGGLE:
    .dw PFA_BM_TOGGLE
PFA_BM_TOGGLE:
    movw zl, tosl
    loadtos
    ld temp0, Z
    eor temp0, tosl
    st Z, temp0
    loadtos
    jmp_ DO_NEXT
