; ( -- addr )
; Interrupt
; Address of Soft Interrupts Status & Control Variable
; lo: nz is overflow mark (= prog addr), hi: nz is inhibit 
VE_INTAPO:			; soft interrupts apostrophe
    .dw $ff04
    .db "int'"
    .dw VE_HEAD
    .set VE_HEAD = VE_INTAPO
XT_INTAPO:
    .dw PFA_DOVARIABLE
PFA_INTAPO:
    .dw intovf
