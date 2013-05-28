; ( c-addr1 -- c-addr2 len) 
; String
; convert addr of counted string to address of the first characater and length of the string
VE_COUNT:
    .dw $ff05
    .db "count",0
    .dw VE_HEAD
    .set VE_HEAD = VE_COUNT
XT_COUNT:
    .dw DO_COLON
PFA_COUNT:
    .dw XT_DUP
    .dw XT_1PLUS
    .dw XT_SWAP
    .dw XT_CFETCH
    .dw XT_EXIT
