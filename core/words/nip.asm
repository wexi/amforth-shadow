; ( n1 n2 -- n2 ) 
; Stack
; Remove Second of Stack
VE_NIP:
    .dw $ff03
    .db "nip",0
    .dw VE_HEAD
    .set VE_HEAD = VE_NIP
XT_NIP:
    .dw PFA_NIP
PFA_NIP:
    adiw yl, 2
    jmp_ DO_NEXT
