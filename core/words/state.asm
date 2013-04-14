; ( -- addr ) 
; System Variable
; system state
VE_STATE:
    .dw $ff05
    .db "state",0
    .dw VE_HEAD
    .set VE_HEAD = VE_STATE
XT_STATE:
    .dw PFA_DOVARIABLE
PFA_STATE:
    .dw ram_state

.dseg
ram_state: .byte 2
.cseg