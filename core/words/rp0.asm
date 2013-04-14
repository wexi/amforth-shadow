; ( -- addr) 
; Stack
; start address of return stack
VE_RP0:
    .dw $ff03
    .db "rp0",0
    .dw VE_HEAD
    .set VE_HEAD = VE_RP0
XT_RP0:
    .dw DO_COLON
PFA_RP0:
    .dw XT_DORP0
    .dw XT_FETCH
    .dw XT_EXIT

; ( -- addr) 
; Stack
; user variable of the address of the initial return stack
;VE_DORP0:
;    .dw $ff05
;    .db "(rp0)"
;    .dw VE_HEAD
;    .set VE_HEAD = VE_DORP0
XT_DORP0:
    .dw PFA_DOUSER
PFA_DORP0:
    .dw USER_RP
