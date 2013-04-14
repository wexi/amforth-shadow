; ( -- ) 
; Tools
; do nothing
VE_NOOP:
    .dw $ff04
    .db "noop"
    .dw VE_HEAD
    .set VE_HEAD = VE_NOOP
XT_NOOP:
    .dw PFA_NOOP
PFA_NOOP:
    jmp_ DO_NEXT
