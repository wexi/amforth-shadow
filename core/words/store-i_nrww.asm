; ( n f-addr -- ) 
; Memory
; Executing from NRWW write n into an RWW f-addr
VE_DO_STOREI:
	.dw 	$ff04
	.db 	"(!i)"
	.dw 	VE_HEAD
	.set 	VE_HEAD = VE_DO_STOREI
XT_DO_STOREI:
	.dw 	PFA_DO_STOREI
PFA_DO_STOREI:
	movw	temp1:temp0, tosh:tosl ;temp1:temp0 = f-addr
	loadtos			       ;TOS = new f-data
	movw	zh:zl, temp1:temp0
	readflashcell temp2, temp3 ;temp3:temp2 = old f-data
	cp	tosl, temp2
	cpc	tosh, temp3
	brne	PFA_DO_NRWW
	loadtos			;need not change this flash cell
	jmp_ 	DO_NEXT
	
PFA_DO_NRWW:
	
#ifdef	CTS_ENABLE
	CTS_OFF			;hope to be noticed 
#endif

	;; update flash page buffer with TOS value

	.equ	PAGEMASK = ~(PAGESIZE-1)
	
	ldi	temp2, exp2(SPMEN)
	mov	temp6, temp2		  ;temp6 cannot ldi
	in_	temp7, SREG		  ;"out_ SREG, temp7" could be replaced by SEI
;
	movw	temp3:temp2, temp1:temp0  ;temp1:temp0 = f-addr
	andi	temp2, low(PAGEMASK)	  ;temp3:temp2 = page-start f-addr
	andi	temp3, high(PAGEMASK)
	movw	temp5:temp4, temp3:temp2
	subi	temp4, low(-PAGESIZE)
	sbci	temp5, high(-PAGESIZE) ;temp5:temp4 = next page-start f-addr
PFA_DO_NRWW1:
	cp	temp0, temp2
	cpc	temp1, temp3
	brne	PFA_DO_NRWW2	 ;preserve flash word?
	movw	r1:r0, tosh:tosl ;load replacement value
	loadtos
	rjmp	PFA_DO_NRWW3
PFA_DO_NRWW2:
	movw	zh:zl, temp3:temp2
	readflashcell r0, r1	;load current value
PFA_DO_NRWW3:
	movw	zh:zl, temp3:temp2
	flashcell
	cli
	out_ 	SPMCSR, temp6
	spm
	out_	SREG, temp7	;restore interrupts
	subi	temp2, low(-1)	;temp3:temp2 += 1
	sbci	temp3, high(-1)
	cp	temp2, temp4
	cpc	temp3, temp5
	brne	PFA_DO_NRWW1
	
	cli
	ldi	temp0, exp2(SPMEN)+exp2(PGERS) ;command
	ldi	temp1, exp2(SPMEN)	       ;test for
	rcall	DOSPM
	ldi	temp0, exp2(SPMEN)+exp2(PGWRT)
	rcall	DOSPM
	ldi	temp0, exp2(SPMEN)+exp2(RWWSRE)
	ldi	temp1, exp2(RWWSB)
	rcall	DOSPM
	out_	SREG, temp7
	jmp_	DO_NEXT
;
DOSPM:	out_	SPMCSR, temp0
	spm
DOSPM1:	in_	temp0, SPMCSR
	and	temp0, temp1
	brne	DOSPM1
	ret
