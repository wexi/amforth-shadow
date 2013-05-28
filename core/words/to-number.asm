; ( ud1 c-addr1 u1 -- ud2 c-addr2 u2 ) 
; Numeric IO
; convert a string to a number  c-addr2/u2 is the unconverted string
VE_TO_NUMBER:
    .dw $ff07
    .db ">number",0
    .dw VE_HEAD
    .set VE_HEAD = VE_TO_NUMBER
XT_TO_NUMBER:
    .dw DO_COLON
PFA_TO_NUMBER:
    .dw XT_DUP
    .dw XT_DOCONDBRANCH
    .dw PFA_TO_NUMBER1
        .dw XT_OVER
        .dw XT_CFETCH
        .dw XT_DIGITQ
        .dw XT_EQUALZERO
        .dw XT_DOCONDBRANCH
        .dw PFA_TO_NUMBER2
            .dw XT_EXIT
PFA_TO_NUMBER2:
        .dw XT_TO_R
        .dw XT_2SWAP
        .dw XT_R_FROM
        .dw XT_SWAP
        .dw XT_BASE
        .dw XT_FETCH
        .dw XT_UMSTAR
        .dw XT_DROP
        .dw XT_ROT
        .dw XT_BASE
        .dw XT_FETCH
        .dw XT_UMSTAR
        .dw XT_DPLUS
        .dw XT_2SWAP
        .dw XT_DOLITERAL
        .dw 1
        .dw XT_SLASHSTRING
    .dw XT_DOBRANCH
    .dw PFA_TO_NUMBER
PFA_TO_NUMBER1:
    .dw XT_EXIT

;: >number  ( ud1 c-addr1 u1 -- ud2 c-addr2 u2 )
;  \ convert double number, leaving address of first unconverted byte
;   begin  dup  while                  ( ud adr len )
;      over c@  base @  digit          ( ud adr len  digit true  |  char false )
;      0=  if  drop exit  then         ( ud adr len  digit )
;      >r  2swap  r>                   ( adr len ud  digit )
;      swap base @ um*  drop           ( adr len ud.low  digit ud.high' )
;      rot base @ um*  d+              ( adr len  ud' )
;      2swap  1 /string                ( ud' adr len )
;   repeat                             ( ud' adr len )
;;
