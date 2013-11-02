; ( nt -- addr len ) 
; Tools Ext (2012)
; get a (flash) string from a name token nt
VE_NAME2STRING:
    .dw $ff0b
    .db "name>string",0
    .dw VE_HEAD
    .set VE_HEAD = VE_NAME2STRING
XT_NAME2STRING:
    .dw DO_COLON
PFA_NAME2STRING:
    .dw XT_ICOUNT   ; ( -- addr n )
    .dw XT_DOLITERAL
    .dw $00FF
    .dw XT_AND      ; mask immediate bit
    .dw XT_EXIT

; ( i*x xt wid -- j*x ) 
; Tools Ext (2012)
; call the xt for every member of the wordlist wid until xt returns false
VE_TRAVERSEWORDLIST:
    .dw $ff11
    .db "traverse-wordlist",0
    .dw VE_HEAD
    .set VE_HEAD = VE_TRAVERSEWORDLIST
XT_TRAVERSEWORDLIST:
    .dw DO_COLON
PFA_TRAVERSEWORDLIST:
    .dw XT_FETCHE
PFA_TRAVERSEWORDLIST1:
    .dw XT_DUP           ; ( -- xt nt nt )
    .dw XT_DOCONDBRANCH  ; ( -- nt ) is nfa = counted string
    .dw PFA_TRAVERSEWORDLIST2       ;
    .dw XT_2DUP
    .dw XT_TO_R
    .dw XT_TO_R
    .dw XT_SWAP
    .dw XT_EXECUTE
    .dw XT_R_FROM
    .dw XT_R_FROM
    .dw XT_ROT
    .dw XT_DOCONDBRANCH
    .dw PFA_TRAVERSEWORDLIST2
    .dw XT_NFA2LFA
    .dw XT_FETCHI        ; ( -- addr )
    .dw XT_DOBRANCH      ; ( -- addr )
    .dw PFA_TRAVERSEWORDLIST1       ; ( -- addr )
PFA_TRAVERSEWORDLIST2:
    .dw XT_2DROP
    .dw XT_EXIT

; : traverse-wordlist ( i*x xt wid -- i*x' ) 
;        begin @ dup 
;        while 
;          2dup 2>r 
;          cell + swap execute ( i*x nt -- i*x' f ) 
;          2r> rot 
;        while repeat then 2drop ; 
