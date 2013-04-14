; ( --  ) (C: "<spaces>name" -- )
; Compiler
; parse the input and create an empty vocabulary entry without XT and data field (PF)
VE_DOCREATE:
    .dw $ff08
    .db "(create)"
    .dw VE_HEAD
    .set VE_HEAD = VE_DOCREATE
XT_DOCREATE:
    .dw DO_COLON
PFA_DOCREATE:
    .dw XT_PARSENAME
    .dw XT_WLSCOPE
    .dw XT_DUP
    .dw XT_TO_R
    .dw XT_HEADER
    .dw XT_R_FROM
.dseg
COLON_SMUDGE: .byte 4
.cseg
    .dw XT_DOLITERAL
    .dw COLON_SMUDGE+2
    .dw XT_STORE		; save wid
    .dw XT_DOLITERAL
    .dw COLON_SMUDGE+0
    .dw XT_STORE		; save NFA

    .dw XT_EXIT
