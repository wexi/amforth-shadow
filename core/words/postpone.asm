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
    .dw XT_DORECOGNIZER
    .dw XT_CELLPLUS ; skip to postpone action, beware, this is dangerous code
    .dw XT_FETCHI
    .dw XT_EXECUTE
    .dw XT_EXIT
