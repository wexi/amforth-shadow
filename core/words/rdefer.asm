; ( c<name> -- ) 
; Compiler
; creates a RAM based defer vector
VE_RDEFER:
    .dw $ff06
    .db "Rdefer"
    .dw VE_HEAD
    .set VE_HEAD = VE_RDEFER
XT_RDEFER:
    .dw DO_COLON
PFA_RDEFER:
    .dw XT_DOCREATE
    .dw XT_REVEAL

    .dw XT_COMPILE
    .dw PFA_DODEFER

    .dw XT_HERE
    .dw XT_COMMA
    .dw XT_DOLITERAL
    .dw 2
    .dw XT_ALLOT

    .dw XT_COMPILE
    .dw XT_RDEFERFETCH
    .dw XT_COMPILE
    .dw XT_RDEFERSTORE
    .dw XT_EXIT
