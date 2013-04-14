; ( c-addr len wid -- [ 0 ] | [ xt [-1|1]] ) 
; Search Order
; searches the word list wid for the word at c-addr/len
VE_SEARCH_WORDLIST:
    .dw $ff0f
    .db "search-wordlist",0
    .dw VE_HEAD
    .set VE_HEAD = VE_SEARCH_WORDLIST
XT_SEARCH_WORDLIST:
    .dw DO_COLON
PFA_SEARCH_WORDLIST:
    .dw XT_FETCHE
PFA_SEARCH_WORDLIST0:
    .dw XT_DUP
    .dw XT_EQUALZERO
    .dw XT_DOCONDBRANCH
    .dw PFA_SEARCH_WORDLIST1
      ; terminating 0 found
      .dw XT_DROP
      .dw XT_DROP
      .dw XT_DROP
      .dw XT_ZERO
      .dw XT_EXIT
PFA_SEARCH_WORDLIST1:
    ; ( c-addr len searchstart )
    .dw XT_TO_R
    .dw XT_OVER
    .dw XT_OVER
    .dw XT_R_FETCH
    .dw XT_ICOUNT
    .dw XT_DOLITERAL
    .dw $00ff
    .dw XT_AND
    .dw XT_ICOMPARE
    .dw XT_DOCONDBRANCH
    .dw PFA_SEARCH_WORDLISTNEXT
      ; we found the string
      .dw XT_DROP
      .dw XT_DROP
      .dw XT_R_FROM ; ( -- iaddr )
      .dw XT_DUP
      .dw XT_FETCHI
      .dw XT_TO_R
      .dw XT_NFA2LFA
      .dw XT_1PLUS  ; lfa2xt
      .dw XT_DOLITERAL
      .dw 1
      .dw XT_R_FROM ; check flags
      .dw XT_LESSZERO ; change here for multiple flags in header
      .dw XT_DOCONDBRANCH
      .dw PFA_SEARCH_WORDLISTIMMEDIATE
      .dw XT_NEGATE
PFA_SEARCH_WORDLISTIMMEDIATE:
      .dw XT_EXIT
PFA_SEARCH_WORDLISTNEXT:
      ; next try
      .dw XT_R_FROM
      .dw XT_NFA2LFA
      .dw XT_FETCHI
      .dw XT_DOBRANCH
      .dw PFA_SEARCH_WORDLIST0

