; ( -- ) 
; Dictionary
; makes an entry in a wordlist visible, if not already done.
VE_REVEAL:
    .dw $ff06
    .db "reveal"
    .dw VE_HEAD
    .set VE_HEAD = VE_REVEAL
XT_REVEAL:
    .dw DO_COLON
PFA_REVEAL:
    .dw XT_DOLITERAL
    .dw COLON_SMUDGE+0
    .dw XT_FETCH
    .dw XT_QDUP
    .dw XT_DOCONDBRANCH
    .dw PFA_REVEAL1
;
    .dw XT_DOLITERAL
    .dw COLON_SMUDGE+2
    .dw XT_FETCH		; ( NFA WID )
    .dw XT_STOREE
    ; prevent duplicate actions and cooperate with :noname
    .dw XT_ZERO
    .dw XT_DOLITERAL
    .dw COLON_SMUDGE+0
    .dw XT_STORE
PFA_REVEAL1:
    .dw XT_EXIT
