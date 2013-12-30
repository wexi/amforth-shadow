; ( i*x -- j*x )
; System
; runtime of defer
;VE_DOEDEFER:
;    .dw $ff0a
;    .db "(defer)", 0
;    .dw VE_HEAD
;    .set VE_HEAD = VE_DOEDEFER
XT_DODEFER:
    .dw PFA_DODEFER
PFA_DODEFER:
    call_ DO_DODOES
    .dw XT_DUP
    .dw XT_1PLUS
    .dw XT_FETCHI
    .dw XT_EXECUTE 
    .dw XT_EXECUTE
    .dw XT_EXIT
