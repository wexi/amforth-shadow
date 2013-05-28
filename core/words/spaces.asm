; ( n -- ) 
; Character IO
; emits n space(s) (bl)
VE_SPACES:
    .dw $ff06
    .db "spaces"
    .dw VE_HEAD
    .set VE_HEAD = VE_SPACES
XT_SPACES:
    .dw DO_COLON
PFA_SPACES:
    .dw XT_DUP
    .dw XT_GREATERZERO
    .dw XT_AND
    .dw XT_ZERO
    .dw XT_DOQDO
    .dw PFA_SPACES2
PFA_SPACES1:
    .dw XT_SPACE
    .dw XT_DOLOOP
    .dw PFA_SPACES1
PFA_SPACES2:
    .dw XT_EXIT
