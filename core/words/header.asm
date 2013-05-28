; ( addr len wid -- nfa )
; Compiler
; creates the vocabulary header without XT and data field (PF) in the wordlist wid
VE_HEADER:
    .dw $ff06
    .db "header"
    .dw VE_HEAD
    .set VE_HEAD = VE_HEADER
XT_HEADER:
    .dw DO_COLON
PFA_HEADER:
    .dw XT_DP           ; the new Name Field
    .dw XT_TO_R
    .dw XT_TO_R		; ( R: NFA WID )
    .dw XT_DUP    
    .dw XT_GREATERZERO 
    .dw XT_DOCONDBRANCH
    .dw PFA_HEADER1
    .dw XT_DUP
    .dw XT_DOLITERAL
    .dw $ff00           ; all flags are off (e.g. immediate)
    .dw XT_OR
    .dw XT_DOSCOMMA
    ; make the link to the previous entry in this wordlist
    .dw XT_R_FROM
    .dw XT_FETCHE
    .dw XT_COMMA
    .dw XT_R_FROM
    .dw XT_EXIT

PFA_HEADER1:
    ; -16: attempt to use zero length string as a name
    .dw XT_DOLITERAL
    .dw -16
    .dw XT_THROW

