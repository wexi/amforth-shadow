
; some defaults

.set WANT_ISR_TX = 0
.set WANT_ISR_RX = 1
.set WANT_IGNORECASE = 0
.set WANT_UNIFIED = 0

; 10 per mille (1 per cent) is ok.
.set BAUD_MAXERROR = 10

; Dictionary setup
.set VE_HEAD = $0000
.set VE_ENVHEAD = $0000

.include "user.inc"

  .def zerol = r2
  .def zeroh = r3
  .def upl = r4
  .def uph = r5

  .def al  = r6
  .def ah  = r7
  .def bl  = r8
  .def bh  = r9

  .def temp4 = r14
  .def temp5 = r15

  .def temp0 = r16
  .def temp1 = r17
  .def temp2 = r18
  .def temp3 = r19

  .def temp6 = r20
  .def temp7 = r21

  .def tosl = r24
  .def tosh = r25

  .def wl = r22
  .def wh = r23

.macro loadtos
    ld tosl, Y+
    ld tosh, Y+
.endmacro

.macro savetos
    st -Y, tosh
    st -Y, tosl
.endmacro

.macro in_
.if (@1 < $40)
  in @0,@1
.else
  lds @0,@1
.endif
.endmacro

.macro out_
.if (@0 < $40)
  out @0,@1
.else
  sts @0,@1
.endif
.endmacro

.macro sbi_
.if (@0 < $40)
  sbi @0,@1
.else
  in_ @2,@0
  ori @2,exp2(@1)
  out_ @0,@2
.endif
.endmacro

.macro cbi_
.if (@0 < $40)
  cbi @0,@1
.else
  in_ @2,@0
  andi @2,~(exp2(@1))
  out_ @0,@2
.endif
.endmacro

.macro jmp_
	; a more flexible macro
    .ifdef @0
    .if (@0-pc > 2040) || (pc-@0>2040)
	jmp @0
	.else
	rjmp @0
	.endif
	.else
	jmp @0
	.endif
.endmacro
.macro call_
	; a more flexible macro
    .ifdef @0
    .if (@0-pc > 2040) || (pc-@0>2040)
	call @0
	.else
	rcall @0
	.endif
	.else
	call @0
	.endif
.endmacro

;               F_CPU
;    µsec   16000000   14745600    8000000  1000000
;    1            16      14,74          8        1
;    10          160     147,45         80       10
;    100        1600    1474,56        800      100
;    1000      16000   14745,6        8000     1000
;
; cycles = µsec * f_cpu / 1e6
; n_loops=cycles/5
;
;     cycles already used will be subtracted from the delay
;     the waittime resolution is 1 cycle (delay from exact to +1 cycle)
;     the maximum delay at 20MHz (50ns/clock) is 38350ns
;     waitcount register must specify an immediate register
;
; busy waits a specfied amount of microseconds
.macro   delay
      .set cycles = ( ( @0 * F_CPU ) / 1000000 )
      .if (cycles > ( 256 * 255 * 4 + 2))
        .error "MACRO delay - too many cycles to burn"
      .else
        .if (cycles > 6)
          .set  loop_cycles = (cycles / 4)      
          ldi   zl,low(loop_cycles)
          ldi   zh,high(loop_cycles)
delay_loop:
          sbiw  Z, 1
          brne  delay_loop
          .set  cycles = (cycles - (loop_cycles * 4))
        .endif
        .if (cycles > 0)
          .if   (cycles & 4)
            rjmp  pc+1
            rjmp  pc+1
          .endif
          .if   (cycles & 2)
            rjmp  pc+1
          .endif
          .if   (cycles & 1)
            nop
          .endif
        .endif
      .endif
.endmacro
