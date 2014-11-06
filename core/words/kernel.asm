; ( -- f-addr ) 
; System
; Compiled code flash start
VE_KERNEL:
    .dw $ff06
    .db "kernel"
    .dw VE_HEAD
    .set VE_HEAD = VE_KERNEL
XT_KERNEL:
    .dw PFA_KERNEL
PFA_KERNEL:
    savetos
    ldiw tos, DPSTART
    jmp_ DO_NEXT
