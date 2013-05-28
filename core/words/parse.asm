; ( char "ccc<char>" -- c-addr u ) 
; String
; in input buffer parse ccc delimited string by the delimiter char.
VE_PARSE:
    .dw $ff05
    .db "parse",0
    .dw VE_HEAD
    .set VE_HEAD = VE_PARSE
XT_PARSE:
    .dw DO_COLON
PFA_PARSE:
    .dw XT_TO_R     ; ( -- )
    .dw XT_SOURCE   ; ( -- addr len)
    .dw XT_G_IN     ; ( -- addr len >in)
    .dw XT_FETCH
    .dw XT_SLASHSTRING ; ( -- addr' len' )

    .dw XT_R_FROM      ; ( -- addr' len' c)
    .dw XT_CSCAN       ; ( -- addr' len'')
    .dw XT_DUP         ; ( -- addr' len'' len'')
    .dw XT_1PLUS
    .dw XT_G_IN        ; ( -- addr' len'' len'' >in)
    .dw XT_PLUSSTORE   ; ( -- addr' len')
    .dw XT_DOLITERAL
    .dw 1
    .dw XT_SLASHSTRING
    .dw XT_EXIT
