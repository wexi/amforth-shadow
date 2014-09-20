; ( -- addr ) 
; System Variable
; terminal input buffer address
VE_TIB:
    .dw $ff03
    .db "tib",0
    .dw VE_HEAD
    .set VE_HEAD = VE_TIB
XT_TIB:
    .dw PFA_DOVARIABLE
PFA_TIB:
    .dw ram_tib
    
.dseg
ram_tib: .byte TIBSIZE
.cseg
; ( -- f ) 
; System
; refills the input buffer
VE_REFILLTIB:
    .dw $ff0a
    .db "refill-tib"
    .dw VE_HEAD
    .set VE_HEAD = VE_REFILLTIB
XT_REFILLTIB:
    .dw DO_COLON
PFA_REFILLTIB:
    .dw XT_TIB
    .dw XT_DOLITERAL
    .dw TIBSIZE
    .dw XT_ACCEPT
    .dw XT_NUMBERTIB
    .dw XT_STORE
    .dw XT_ZERO
    .dw XT_G_IN
    .dw XT_STORE
    .dw XT_TRUE ; -1
    .dw XT_CR
    .dw XT_EXIT

; ( -- addr n ) 
; System
; address and current length of the input buffer
VE_SOURCETIB:
    .dw $FF0A
    .db "source-tib"
    .dw VE_HEAD
    .set VE_HEAD = VE_SOURCETIB
XT_SOURCETIB:
    .dw DO_COLON
PFA_SOURCETIB:
    .dw XT_TIB
    .dw XT_NUMBERTIB
    .dw XT_FETCH
    .dw XT_EXIT


