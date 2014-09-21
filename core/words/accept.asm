; ( addr +n1 -- +n2 ) 
; System
; receive a string of at most n1 characters at addr until n2 characters are reveived or cr/lf detected.
VE_ACCEPT:
    .dw $ff06
    .db "accept"
    .dw VE_HEAD
    .set VE_HEAD = VE_ACCEPT
XT_ACCEPT:
    .dw DO_COLON
PFA_ACCEPT:
    .dw XT_DUP
    .dw XT_TO_R
    .dw XT_ZERO
    .dw XT_DOQDO
    .dw PFA_ACCEPT_LOOPEND
PFA_ACCEPT_LOOPSTART:
      .dw XT_KEY
      .dw XT_DUP
      .dw XT_CRLFQ
      .dw XT_DOCONDBRANCH
      .dw PFA_ACCEPT1
        .dw XT_2DROP
        .dw XT_I
        .dw XT_UNLOOP
        .dw XT_R_FROM
        .dw XT_DROP
        .dw XT_EXIT
PFA_ACCEPT1:
      .dw XT_DUP
      .dw XT_DOLITERAL
      .dw 8
      .dw XT_EQUAL
      .dw XT_DOCONDBRANCH
      .dw PFA_ACCEPT2
        .dw XT_DROP
        .dw XT_ZERO
        .dw XT_I
        .dw XT_GREATERZERO
        .dw XT_DOCONDBRANCH
        .dw PFA_ACCEPT3
          .dw XT_BS
          .dw XT_1MINUS
PFA_ACCEPT3:
        .dw XT_DOBRANCH
        .dw PFA_ACCEPT4
PFA_ACCEPT2:
        .dw XT_DUP  ; change ctrl-char into bl
        .dw XT_BL
        .dw XT_LESS
        .dw XT_DOCONDBRANCH
        .dw PFA_ACCEPT6
          .dw XT_DROP
          .dw XT_BL
PFA_ACCEPT6:
        .dw XT_DUP
        .dw XT_EMIT
        .dw XT_OVER
        .dw XT_I
        .dw XT_PLUS
        .dw XT_CSTORE
        .dw XT_DOLITERAL
        .dw 1
PFA_ACCEPT4:
    .dw XT_DOPLUSLOOP
    .dw PFA_ACCEPT_LOOPSTART
PFA_ACCEPT_LOOPEND:
    .dw XT_DROP
    .dw XT_R_FROM
    .dw XT_EXIT

XT_BS:
    .dw DO_COLON
    .dw XT_DOLITERAL
    .dw 8
    .dw XT_DUP
    .dw XT_EMIT
    .dw XT_SPACE
    .dw XT_EMIT
    .dw XT_EXIT

XT_CRLFQ:
    .dw DO_COLON
    .dw XT_DUP
    .dw XT_DOLITERAL
    .dw 13
    .dw XT_EQUAL
    .dw XT_SWAP
    .dw XT_DOLITERAL
    .dw 10
    .dw XT_EQUAL
    .dw XT_OR
    .dw XT_EXIT
