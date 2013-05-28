; ( addr --  addr 0 | xt -1 | xt 1 ) 
; Tools
; search wordlists for entry taken as counted string from addr
VE_FIND:
    .dw $ff04
    .db "find"
    .dw VE_HEAD
    .set VE_HEAD = VE_FIND
XT_FIND:
    .dw DO_COLON
PFA_FIND:
    .dw XT_DUP
    .dw XT_COUNT
    .dw XT_FINDNAME ; ( -- addr [xt] flag )
    .dw XT_DUP
    .dw XT_DOCONDBRANCH
    .dw PFA_FIND1
       .dw XT_ROT
       .dw XT_DROP
PFA_FIND1:
    .dw XT_EXIT
