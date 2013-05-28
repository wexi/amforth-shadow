; ( wid -- ) 
; Tools
; prints the name of the words in a wordlist
VE_SHOWWORDLIST:
    .dw $ff0d
    .db "show-wordlist",0
    .dw VE_HEAD
    .set VE_HEAD = VE_SHOWWORDLIST
XT_SHOWWORDLIST:
    .dw DO_COLON
PFA_SHOWWORDLIST:
    .dw XT_FETCHE
PFA_SHOWWORDLIST3:
    .dw XT_QDUP           ; ( -- addr addr )
    .dw XT_DOCONDBRANCH  ; ( -- addr ) is nfa = counted string
    .dw PFA_SHOWWORDLIST2       ;
    .dw XT_DUP
    .dw XT_ICOUNT   ; ( -- addr n )
    .dw XT_DOLITERAL
    .dw $00FF
    .dw XT_AND      ; mask immediate bit
    .dw XT_ITYPE
    .dw XT_SPACE         ; ( -- addr n)
    .dw XT_NFA2LFA
    .dw XT_FETCHI        ; ( -- addr )
    .dw XT_DOBRANCH      ; ( -- addr )
    .dw PFA_SHOWWORDLIST3       ; ( -- addr )
PFA_SHOWWORDLIST2:
    .dw XT_EXIT
