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
    .dw XT_ZERO
    .dw XT_SWAP
    .dw XT_DOLITERAL
    .dw XT_ISWORD
    .dw XT_SWAP
    .dw XT_TRAVERSEWORDLIST
    .dw XT_DUP
    .dw XT_EQUALZERO
    .dw XT_DOCONDBRANCH
    .dw PFA_SEARCH_WORDLIST1
       .dw XT_DROP
       .dw XT_DROP
       .dw XT_DROP
       .dw XT_ZERO
PFA_SEARCH_WORDLIST1:
    .dw XT_EXIT

XT_ISWORD:
    .dw DO_COLON
PFA_ISWORD:
    ; ( c-addr len 0 nt -- c-addr len 0 true| xt +/-1 false )
    .dw XT_TO_R
    .dw XT_TO_R
    .dw XT_OVER
    .dw XT_OVER
    .dw XT_R_FROM
    .dw XT_ROT
    .dw XT_ROT
    .dw XT_R_FETCH  ; -- addr len 0 addr len nt
    .dw XT_NAME2STRING
    .dw XT_ICOMPARE      ; (-- addr len 0 f )
    .dw XT_DOCONDBRANCH
    .dw PFA_ISWORD3
      ; we found the word, now clean up iteration data ...
      .dw XT_DROP
      .dw XT_DROP
      .dw XT_DROP
      ; ... get the XT ...
      .dw XT_R_FETCH
      .dw XT_NFA2LFA
      .dw XT_1PLUS  ; lfa2xt
      ; .. and get the header flag
      .dw XT_TRUE
      .dw XT_R_FROM
      .dw XT_FETCHI
      .dw XT_GREATERZERO
      .dw XT_DOCONDBRANCH
      .dw PFA_ISWORD1
         .dw XT_NEGATE  ; it's immediate
PFA_ISWORD1:
      .dw XT_ZERO       ; finish traverse-wordlist
      .dw XT_EXIT
PFA_ISWORD3:
    .dw XT_R_FROM
    .dw XT_DROP
    .dw XT_TRUE         ; maybe next word
    .dw XT_EXIT

