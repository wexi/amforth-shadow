; ( n f-addr -- ) 
; Memory
; writes n to flash memory using assembly code (code to be placed in boot loader section)
VE_DO_STOREI_NRWW:
    .dw $ff09
    .db "(!i-nrww)",0
    .dw VE_HEAD
    .set VE_HEAD = VE_DO_STOREI_NRWW
XT_DO_STOREI:
    .dw PFA_DO_STOREI_NRWW
PFA_DO_STOREI_NRWW:
  ; store status register
  in temp1,SREG
  push temp1
  cli

  movw temp2, tosl ; save the (word) address
  loadtos          ; get the new value for the flash cell
  push xl
  push xh
  push yl
  push yh
  rcall DO_STOREI_atmega
  pop yh
  pop yl
  pop xh
  pop xl
  ; finally clear the stack
  loadtos
  pop temp1
  ; restore status register (and interrupt enable flag)
  out SREG,temp1

  jmp_ DO_NEXT

; 
DO_STOREI_atmega:
  ; write data to temp page buffer
  ; use the values in tosl/tosh at the
  ; appropiate place
  rcall pageload

  ; erase page if needed
  ; it is needed if a bit goes from 0 to 1
  com temp4
  com temp5
  and tosl, temp4
  and tosh, temp5
  or tosh, tosl
  breq DO_STOREI_writepage 

    movw zl, temp2
    ldi temp0,(1<<PGERS)
    rcall dospm

DO_STOREI_writepage:
  ; write page
  movw zl, temp2
  ldi temp0,(1<<PGWRT)
  rcall dospm

  ; reenable RWW section
  movw zl, temp2
  ldi temp0,(1<<RWWSRE)
  rcall dospm
  ret

; load the desired page
.equ pagemask = ~ ( PAGESIZE - 1 )
pageload:
  movw zl, temp2
  ; get the beginning of page
  andi zl,low(pagemask)
  andi zh,high(pagemask)
  movw y, z
  ; loop counter (in words)
  ldi xl,low(pagesize)
  ldi xh,high(pagesize)
pageload_loop:
  ; we need the current flash value anyways
  movw z, y
  readflashcell temp6, temp7 ; destroys Z
  ; now check: if Z points to the same cell as temp2/3, we want the new data
  movw z, y
  cp zl, temp2
  cpc zh, temp3
  breq pageload_newdata
    movw r0, temp6
    rjmp pageload_cont
pageload_newdata:
    movw temp4, temp6
    movw r0, tosl
pageload_cont:
  clr temp0
  rcall dospm
  adiw y, 1
  sbiw x, 1
  brne pageload_loop

pageload_done:
  ret


;; dospm
;;
;; execute spm instruction
;;   temp0 holds the value for SPMCR

dospm:
dospm_wait_ee:
  sbic EECR, EEPE
  rjmp dospm_wait_ee
dospm_wait_spm:
  in_  temp1, SPMCSR
  sbrc temp1, SPMEN
  rjmp dospm_wait_spm

  ; turn the word addres into a byte address
  writeflashcell
  ; execute spm
  ori temp0, (1<<SPMEN)
  out_ SPMCSR,temp0
  spm
  ret
