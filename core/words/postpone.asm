; ( "<space>name" --  )
; Compiler
; Append the compilation semantics of "name" to the dictionary
VE_POSTPONE:
    .dw $0008
    .db "postpone"
    .dw VE_HEAD
    .set VE_HEAD = VE_POSTPONE
XT_POSTPONE:
    .dw DO_COLON
PFA_POSTPONE:
    .dw XT_PARSENAME
    .dw XT_DORECOGNIZERS
    .dw XT_1PLUS
    .dw XT_1PLUS ; skip to postpone action
    .dw XT_FETCHI
    .dw XT_EXECUTE
    .dw XT_EXIT
