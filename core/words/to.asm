; ( n <name> -- ) 
; Tools
; store the TOS to the named value (eeprom cell)
VE_TO:
    .dw $0002
    .db "to"
    .dw VE_HEAD
    .set VE_HEAD = VE_TO
XT_TO:
    .dw DO_COLON
PFA_TO:
    .dw XT_TICK
    .dw XT_1PLUS  		; to body
    .dw XT_STATE
    .dw XT_FETCH
    .dw XT_DOCONDBRANCH
    .dw PFA_TO1
    .dw XT_COMPILE
    .dw XT_DOTO
    .dw XT_COMMA
    .dw XT_EXIT

; ( n -- ) (R: IP -- IP+1)
; Tools
; runtime portion of to
;VE_DOTO:
;    .dw $ff04
;    .db "(to)"
;    .dw VE_HEAD
;    .set VE_HEAD = VE_DOTO
XT_DOTO:
    .dw DO_COLON
PFA_DOTO:
    .dw XT_R_FROM
    .dw XT_DUP
    .dw XT_1PLUS
    .dw XT_TO_R
    .dw XT_FETCHI
PFA_TO1:
    .dw XT_DUP
    .dw XT_FETCHI
    .dw XT_SWAP
    .dw XT_1PLUS
    .dw XT_1PLUS
    .dw XT_FETCHI
    .dw XT_EXECUTE
    .dw XT_EXIT
