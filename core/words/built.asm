; ( -- ) 
; System
; prints the date and time the hex file was generated
VE_BUILT:
    .dw $ff05
    .db "built",0
    .dw VE_HEAD
    .set VE_HEAD = VE_BUILT
XT_BUILT:
    .dw DO_COLON
PFA_BUILT:
    .dw XT_DOSLITERAL
    .dw 11
    .db __DATE__,0 ; generated from assembler
    .dw XT_ITYPE
    .dw XT_SPACE
    .dw XT_DOSLITERAL
    .dw 8
    .db __TIME__ ; generated from assembler
    .dw XT_ITYPE
    .dw XT_EXIT
