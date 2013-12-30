; ( i*x -- j*x )
; System
; runtime of defer
VE_DOEDEFER:
    .dw $ff07
    .db "(defer)", 0
    .dw VE_HEAD
    .set VE_HEAD = VE_DOEDEFER
XT_DODEFER:
    .dw DO_COLON
PFA_DODEFER:
    .dw XT_DOCREATE
    .dw XT_REVEAL
    .dw XT_COMPILE
    .dw PFA_DODEFER1
    .dw XT_EXIT
PFA_DODEFER1:
    call_ DO_DODOES
    .dw XT_DUP
    .dw XT_1PLUS
    .dw XT_FETCHI
    .dw XT_EXECUTE 
    .dw XT_EXECUTE
    .dw XT_EXIT
