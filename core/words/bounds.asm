; ( addr len -- addr+len addr ) 
; Tools
; convert a string to an address range
VE_BOUNDS:
    .dw $ff06
    .db "bounds"
    .dw VE_HEAD
    .set VE_HEAD = VE_BOUNDS
XT_BOUNDS:
    .dw DO_COLON
PFA_BOUNDS:
    .dw XT_OVER
    .dw XT_PLUS
    .dw XT_SWAP
    .dw XT_EXIT
