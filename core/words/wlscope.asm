; ( addr len -- wid )
; Compiler
; wlscope, "wordlist scope" ( addr len -- addr' len' wid ), is a deferred word
; which enables the AmForth application to choose the wordlist ( wid ) for the
; new voc entry based on the input ( addr len ) string. The name of the new voc
; entry ( addr' len' ) may be different from the input string. Note that all
; created voc entry types pass through the wlscope mechanism. The default
; wlscope action passes the input string to the output without modification and
; uses get-current to select the wid.
VE_WLSCOPE:
    .dw $ff07
    .db "wlscope",0
    .dw VE_HEAD
    .set VE_HEAD = VE_WLSCOPE
XT_WLSCOPE:
    .dw PFA_DODEFER
PFA_WLSCOPE:
    .dw EE_WLSCOPE
    .dw XT_EDEFERFETCH
    .dw XT_EDEFERSTORE
