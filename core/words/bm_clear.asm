; ( bitmask byte-addr --  )
; MCU
; clear bits set in bitmask on byte at addr
VE_BM_CLEAR:
    .dw $ff08
    .db "bm-clear"
    .dw VE_HEAD
    .set VE_HEAD = VE_BM_CLEAR
XT_BM_CLEAR:
    .dw PFA_BM_CLEAR
PFA_BM_CLEAR:
    movw zl, tosl
    loadtos
    com tosl
    ld temp0, Z
    and temp0, tosl
    st Z, temp0
    loadtos
    jmp_ DO_NEXT
