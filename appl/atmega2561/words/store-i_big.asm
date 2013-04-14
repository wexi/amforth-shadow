; ( n addr -- ) Memory
; R( -- )
; writes a cell in flash
VE_DO_STOREI:
    .dw $ff04
    .db "(i!)"
    .dw VE_HEAD
    .set VE_HEAD = VE_DO_STOREI
XT_DO_STOREI:
    .dw PFA_DO_STOREI
PFA_DO_STOREI:
  movw temp2, tosl ; save the (word) address
  loadtos          ; get the new value for the flash cell
  push xl
  push xh
  push yl
  push yh
  ldi zl, byte3(DO_ISTORE_atmega)
  out_ rampz, zl
  ldi zh, byte2(DO_ISTORE_atmega)
  ldi zl, byte1(DO_ISTORE_atmega)
  eicall 
  pop yh
  pop yl
  pop xh
  pop xl
  ; finally clear the stack
  loadtos
  jmp_ DO_NEXT

;
.set _pc = pc
.org NRWW_START_ADDR
DO_ISTORE_atmega:
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
  breq DO_ISTORE_writepage 

    movw zl, temp2
    ldi temp0,(1<<PGERS|1<<SPMEN)
    rcall dospm

DO_ISTORE_writepage:
  ; write page
  movw zl, temp2
  ldi temp0,(1<<PGWRT|1<<SPMEN)
  rcall dospm

  ; reenable RWW section
  movw zl, temp2
  ldi temp0,(1<<RWWSRE|1<<SPMEN)
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
  ldi temp0,(1<<SPMEN)
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
  ; store status register
  in temp1,SREG
  push temp1
  cli
Wait_ee:
  sbic EECR, EEPE
  rjmp Wait_ee
wait_spm:
  in   temp1, SPMCSR
  sbrc temp1, SPMEN
  rjmp Wait_spm

  ; turn the word addres into a byte address
  writeflashcell
  ; execute spm
  out SPMCSR,temp0
  spm
  pop temp1
  ; restore status register
  out SREG,temp1
  ret

.org _pc
