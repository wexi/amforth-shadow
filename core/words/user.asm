; ( n cchar -- ) 
; Compiler
; create a dictionary entry for a user variable at offset n
VE_USER:
    .dw $ff04
    .db "user"
    .dw VE_HEAD
    .set VE_HEAD = VE_USER
XT_USER:
    .dw DO_COLON
PFA_USER:
    .dw XT_DOCREATE
    .dw XT_REVEAL

    .dw XT_COMPILE
    .dw PFA_DOUSER
    .dw XT_COMMA
    .dw XT_EXIT
