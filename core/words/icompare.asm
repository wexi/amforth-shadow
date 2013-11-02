; ( r-addr r-len f-addr f-len --  f) 
; Tools
; compares string in RAM with string in flash
VE_ICOMPARE:
    .dw $ff08
    .db "icompare"
    .dw VE_HEAD
    .set VE_HEAD = VE_ICOMPARE
XT_ICOMPARE:
    .dw DO_COLON
PFA_ICOMPARE:
    .dw XT_TO_R    ; ( -- r-addr r-len f-addr)
    .dw XT_OVER    ; ( -- r-addr r-len f-addr r-len)
    .dw XT_R_FROM  ; ( -- r-addr r-len f-addr r-len f-len )
    .dw XT_NOTEQUAL ; ( -- r-addr r-len f-addr flag )
    .dw XT_DOCONDBRANCH
    .dw PFA_ICOMPARE_SAMELEN
      .dw XT_2DROP
      .dw XT_DROP
      .dw XT_ZERO
      .dw XT_EXIT
PFA_ICOMPARE_SAMELEN:
    .dw XT_SWAP ; ( -- r-addr f-addr len )
    .dw XT_ZERO
    .dw XT_DOQDO
    .dw PFA_ICOMPARE_DONE
PFA_ICOMPARE_LOOP:
    ; ( r-addr f-addr --)
    .dw XT_OVER
    .dw XT_FETCH
.if WANT_IGNORECASE == 1
    .dw XT_ICOMPARE_LC
.endif
    .dw XT_OVER
    .dw XT_FETCHI ; ( -- r-addr f-addr r-cc f- cc)
.if WANT_IGNORECASE == 1
    .dw XT_ICOMPARE_LC
.endif
    ; flash strings are zero-padded at the last cell
    ; that means: if the flash cell is less $0100, than mask the
    ; high byte in the ram cell
    .dw XT_DUP
    ;.dw XT_BYTESWAP
    .dw XT_DOLITERAL
    .dw $100
    .dw XT_ULESS
    .dw XT_DOCONDBRANCH
    .dw PFA_ICOMPARE_LASTCELL
    .dw XT_SWAP
    .dw XT_DOLITERAL
    .dw $00FF
    .dw XT_AND  ; the final swap can be omitted
PFA_ICOMPARE_LASTCELL:
    .dw XT_NOTEQUAL
    .dw XT_DOCONDBRANCH
    .dw PFA_ICOMPARE_NEXTLOOP
    .dw XT_2DROP
    .dw XT_ZERO
    .dw XT_UNLOOP
    .dw XT_EXIT
PFA_ICOMPARE_NEXTLOOP:
    .dw XT_1PLUS
    .dw XT_SWAP
    .dw XT_CELLPLUS
    .dw XT_SWAP
    .dw XT_DOLITERAL
    .dw 2
    .dw XT_DOPLUSLOOP
    .dw PFA_ICOMPARE_LOOP
PFA_ICOMPARE_DONE:
    .dw XT_2DROP
    .dw XT_TRUE
    .dw XT_EXIT

.if WANT_IGNORECASE == 1
; ( cc1 cc2 -- f) 
; Tools
; compares two packed characters 
;VE_ICOMPARELC:
;    .dw $ff08
;    .db "icompare-lower"
;    .dw VE_HEAD
;    .set VE_HEAD = VE_ICOMPARELC
XT_ICOMPARE_LC:
    .dw DO_COLON
PFA_ICOMPARE_LC:
    .dw XT_DUP
    .dw XT_DOLITERAL
    .dw $00ff
    .dw XT_AND
    .dw XT_TOLOWER
    .dw XT_SWAP
    .dw XT_BYTESWAP
    .dw XT_DOLITERAL
    .dw $00ff
    .dw XT_AND
    .dw XT_TOLOWER
    .dw XT_BYTESWAP
    .dw XT_OR
    .dw XT_EXIT
.endif
