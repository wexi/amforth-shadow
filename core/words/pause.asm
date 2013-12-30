; ( -- ) 
; Multitasking
; Fetch pause vector and execute it. may make a context/task switch
VE_PAUSE:
    .dw $ff05
    .db "pause",0
    .dw VE_HEAD
    .set VE_HEAD = VE_PAUSE
XT_PAUSE:
    .dw PFA_DODEFER1
PFA_PAUSE:
    .dw ram_pause
    .dw XT_RDEFERFETCH
    .dw XT_RDEFERSTORE

.dseg
ram_pause: .byte 2
.cseg
