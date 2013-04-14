; ( addr -- addr+1 n )  
; Tools
; get count information out of a counted string in flash
VE_ICOUNT:
    .dw $ff06
    .db "icount"
    .dw VE_HEAD
    .set VE_HEAD = VE_ICOUNT
XT_ICOUNT:
    .dw DO_COLON
PFA_ICOUNT:
    .dw XT_DUP
    .dw XT_1PLUS
    .dw XT_SWAP
    .dw XT_FETCHI
    .dw XT_EXIT
