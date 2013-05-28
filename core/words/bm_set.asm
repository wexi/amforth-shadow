; ( bitmask byte-addr --  )
; MCU
; set bits from bitmask on byte at addr
VE_BM_SET:
    .dw $ff06
    .db "bm-set"
    .dw VE_HEAD
    .set VE_HEAD = VE_BM_SET
XT_BM_SET:
    .dw PFA_BM_SET
PFA_BM_SET:
    movw zl, tosl
    loadtos
    ld temp0, Z
    or temp0, tosl
    st Z, temp0
    loadtos
    jmp_ DO_NEXT
