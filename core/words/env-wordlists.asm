; ( -- n ) 
; Environment
; maximum number of wordlists in the dictionary search order
VE_ENVWORDLISTS:
    .dw $ff09
    .db "wordlists",0
    .dw VE_ENVHEAD
    .set VE_ENVHEAD = VE_ENVWORDLISTS
XT_ENVWORDLISTS:
    .dw DO_COLON
PFA_ENVWORDLISTS:
    .dw XT_DOLITERAL
    .dw NUMWORDLISTS
    .dw XT_EXIT
