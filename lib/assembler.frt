\ AvrAsm - assembler Atmega chips, Lubos Pekny, www.forth.cz
\ Library for amforth 3.0 mFC 1.0

\ V.1.1v, 29.01.2009, add vocabulary only

\ V.1.1, 15.05.2008, tested on atmega32, amforth 2.7
\ - change reg tosl,tosh in Test AvrAsm (loadtos, savetos)
\ - change <label to <labelr
\ - vector of labels, 20 bytes in RAM, example

\ V.1.0, 07.02.2008, tested on atmega168, amforth 2.6
\ Size 3554B (opcode: 2980B, labels: 158B, constants Rx: 416B)

hex

vocabulary assembler
only forth also assembler definitions  \ vocabulary

  \ Store src to dest thru mask, FF00 0551 0333 mask! u. FD11
: mask! ( dest1 src mask -- dest2 )
    rot over invert and rot rot and or ; \ dest1&!mask src&mask or


  \ Operands Rd,Rr
: Rd,Rr,    ( Rd Rr opcode mask -- xxxz.xxrd.dddd.rrrr )
    >r >r                              \ -- Rd Rr | -- mask opcode 
    1F and dup 5 lshift or 20F and     \ -- Rd r00000rrrr
    swap 4 lshift 1F0 and              \ -- rr 0ddddd0000
    or r> r> mask!                     \ -- ddrr opcode mask mask!
    dup FC07 and 9000 = if EFFF and then , ;  \ if Z or Y then z=0 


  \ Operand Rd
: Rd,       ( Rd opcode mask -- xxxx.xxxd.dddd.xxxx )
    >r >r                              \ -- Rd | -- mask opcode 
    4 lshift 1F0 and                   \ -- 0ddddd0000
    r> r> mask! , ;                    \ dd opcode mask mask! to flash


  \ Operands Rd,constant 8bit
: Rd,k,     ( Rd k8 opcode mask -- xxxx.kkkk.dddd.kkkk )
    >r >r                              \ -- Rd k8 | -- mask opcode
    FF and dup 4 lshift or F0F and     \ -- Rd kkkk0000kkkk
    swap 4 lshift F0 and               \ -- kk dddd0000
    or r> r> mask! , ;                 \ kkdd opcode mask mask! to flash


  \ Operands Rd,Rr,constant 6bit
: Rd,Rr+q,  ( Rd Rr k6 opcode mask -- xxkx.kkxd.dddd.rkkk )
    >r >r                              \ -- Rd Rr k6 | -- mask opcode
    3F and dup 7 lshift                \ -- Rd Rr k6 xkkkkkkxxxxxxx
    dup 1000 and 1 lshift or or 2C07 and  \ -- Rd Rr kxkkxxxxxxxkkk
    rot 4 lshift 1F0 and               \ -- Rr kk ddddd0000
    or swap 8 and                      \ -- kkdd rxxx
    or r> r> mask! , ;              \ kkddrr opcode mask mask! to flash


  \ Operands Rw pair,constant 6bit
: Rw,k,     ( Rw k6 opcode mask -- xxxx.xxxx.kkww.kkkk )
    >r >r                              \ -- Rw k6 | -- mask opcode
    3F and dup 2 lshift C0 and         \ -- Rw k6 kk000000
    swap F and or                      \ -- Rw kk00kkkk
    swap 4 lshift 30 and               \ -- kk ww0000
    or r> r> mask! , ;                 \ kkww opcode mask mask! to flash


  \ Operands P-port,bit
: P,b,      ( P b opcode mask -- xxxx.xxxx.PPPP.Pbbb )
    >r >r                              \ -- P b | -- mask opcode
    7 and swap 3 lshift                \ -- 0bbb PPPPP000
    or r> r> mask! , ;                 \ PPbb opcode mask mask! to flash


  \ Operands Rd,P-port
: Rd,P,     ( Rd P opcode mask -- xxxx.xPPd.dddd.PPPP )
    >r >r                              \ -- Rd P | -- mask opcode 
    3F and dup 5 lshift or 60F and     \ -- Rd PP00000PPPP
    swap 4 lshift 1F0 and              \ -- PP 00ddddd0000
    or r> r> mask! , ;                 \ ddPP opcode mask mask! to flash


  \ Operand k16 k6
: k22,      ( k16 k6 opcode mask -- k16 xxxx.xxxk.kkkk.xxxk )
    >r >r                              \ -- k16 k6 | -- mask opcode 
    dup 1 and swap 3 lshift            \ -- 000k kkkkkk000
    or r> r> mask! ,  , ;              \ k16 kk opcode mask mask! to flash


00 constant Z
01 constant Z+
02 constant -Z
08 constant Y
09 constant Y+
0A constant -Y
0C constant X
0D constant X+
0E constant -X


: movw,   1 rshift swap        \ R0:1,R2:3,R4:5,..R30:31
          1 rshift swap        \ 0 2 movw, R0:1<--R2:3
          0100 FF00  Rd,Rr, ;  ( Rd Rr -- )
: mul,    9C00 FC00  Rd,Rr, ;  \ 2 3 mul,
: muls,   0200 FF00  Rd,Rr, ;
: mulsu,  0300 FF88  Rd,Rr, ;
: fmul,   0308 FF88  Rd,Rr, ;
: fmuls,  0380 FF88  Rd,Rr, ;
: fmulsu, 0388 FF88  Rd,Rr, ;
: cpc,    0400 FC00  Rd,Rr, ;
: sbc,    0800 FC00  Rd,Rr, ;
: add,    0C00 FC00  Rd,Rr, ;
: cpse,   1000 FC00  Rd,Rr, ;
: cp,     1400 FC00  Rd,Rr, ;
: sub,    1800 FC00  Rd,Rr, ;
: adc,    1C00 FC00  Rd,Rr, ;
: and,    2000 FC00  Rd,Rr, ;
: eor,    2400 FC00  Rd,Rr, ;
: or,     2800 FC00  Rd,Rr, ;
: mov,    2C00 FC00  Rd,Rr, ;  \ 2 3 mov,  R2<--R3

: cpi,    3000 F000  Rd,k,  ;  ( Rd k8 -- )
: sbci,   4000 F000  Rd,k,  ;
: subi,   5000 F000  Rd,k,  ;
: ori,    6000 F000  Rd,k,  ;
: sbr,    ori, ;
: andi,   7000 F000  Rd,k,  ;
: cbr,    invert andi, ;
: ldi,    E000 F000  Rd,k,  ;  \ 2 FF ldi,  R2<--#FF 
 
: ldd,    8000 D200  Rd,Rr+q, ; ( Rd Rr q -- ) \ Rr={Z+,Y+}, 2 Y+ 3F ldd,
: std,    rot rot
          8200 D200  Rd,Rr+q, ; ( Rd q Rr -- ) \ Rd={Z+,Y+}, Y+ 3F 2 std,

: ld,     9000 FE00  Rd,Rr, ;  ( Rd Rr -- ) \ Rr={Z+,-Z,Y+,-Y,X+,-X,X,Y,Z}
: lds,    swap
          9000 FE0F  Rd, ,  ;  ( Rd k16 -- )
: lpm_,   9004 FE0E  Rd,Rr, ;  ( Rd Rr -- ) \ Rr={Z,Z+}, 2 Z+ lpm_
: elpm_,  9006 FE0E  Rd,Rr, ;  ( Rd Rr -- ) \ Rr={Z,Z+}
: st,     swap
          9200 FE00  Rd,Rr, ;  ( Rd Rr -- ) \ Rd={Z+,-Z,Y+,-Y,X+,-X,X,Y,Z}
: sts,    9200 FE0F  Rd, ,  ;  ( k16 Rd -- ) \ FFFF 2 sts, adr(FFFF)<--R2

: lsl,    dup add, ;           ( Rd -- )
: rol,    dup adc, ;
: tst,    dup and, ; 
: clr,    dup eor, ;
: ser,    FF  ldi, ;

: pop,    900F FE0F  Rd, ;     ( Rd -- ) \ 2 pop,
: push,   920F FE0F  Rd, ;
: com,    9400 FE0F  Rd, ;
: neg,    9401 FE0F  Rd, ;
: swap,   9402 FE0F  Rd, ;
: inc,    9403 FE0F  Rd, ; 
: asr,    9405 FE0F  Rd, ;
: lsr,    9406 FE0F  Rd, ;
: ror,    9407 FE0F  Rd, ;
: bset,   9408 FF8F  Rd, ;
: bclr,   9488 FF8F  Rd, ;
: dec,    940A FE0F  Rd, ;

: nop,    0000 , ;             ( -- )
: ret,    9508 , ;
: reti,   9518 , ;
: sleep,  9588 , ;
: break,  9598 , ;
: wdr,    95A8 , ;
: lpm,    95C8 , ;
: elpm,   95D8 , ;
: spm,    95E8 , ;
: espm,   95F8 , ;
: ijmp,   9409 , ;
: eijmp,  9419 , ;
: icall,  9509 , ;
: eicall, 9519 , ;

: clc,    9488 , ;
: clh,    94D8 , ;
: cli,    94F8 , ;
: cln,    94A8 , ;
: cls,    94C8 , ;
: clt,    94E8 , ;
: clv,    94B8 , ;
: clz,    9498 , ;
: sec,    9408 , ;
: seh,    9458 , ;
: sei,    9478 , ;
: sen,    9428 , ;
: ses,    9448 , ;
: set,    9468 , ;
: sev,    9438 , ;
: sez,    9418 , ;

: adiw,   9600 FF00  Rw,k, ;   ( Rw k6 -- ) \ 3 3F adiw, ZLH=ZLH+#3F
: sbiw,   9700 FF00  Rw,k, ;
: cbi,    9800 FF00   P,b, ;   ( P b -- )
: sbic,   9900 FF00   P,b, ;
: sbi,    9A00 FF00   P,b, ;
: sbis,   9B00 FF00   P,b, ;

: in,     B000 F800  Rd,P, ;   ( Rd P -- )
: out,    swap
          B800 F800  Rd,P, ;   ( P Rr -- )

: bld,    F800 FE08  Rd,Rr, ;  ( Rd b -- )
: bst,    FA00 FE08  Rd,Rr, ;
: sbrc,   FC00 FE08  Rd,Rr, ;
: sbrs,   FE00 FE08  Rd,Rr, ;

: jmp,    940C FE0E   k22, ;   ( k16 k6 -- ) \ k6=0 for 16b addr
: call,   940E FE0E   k22, ;
: rjmp,   C000 F000  mask! , ; ( k12 -- )
: rcall,  D000 F000  mask! , ;

: brbc,   F400 FC00   P,b, ;   ( k7 b -- )
: brbs,   F000 FC00   P,b, ;
: brcc,   0 brbc, ;            ( k7 )
: brcs,   0 brbs, ;
: brsh,   0 brbc, ;
: brlo,   0 brbs, ;
: brne,   1 brbc, ;
: breq,   1 brbs, ;
: brpl,   2 brbc, ;
: brmi,   2 brbs, ;
: brvc,   3 brbc, ;
: brvs,   3 brbs, ;
: brge,   4 brbc, ;
: brlt,   4 brbs, ;
: brhc,   5 brbc, ;
: brhs,   5 brbs, ;
: brtc,   6 brbc, ;
: brts,   6 brbs, ;
: brid,   7 brbc, ;
: brie,   7 brbs, ;


  \ Relative addr, for jump back, <radr brne
: <radr     ( adr -- k )
    dp 1+ - ;


  \ Label for jump back,     label> ......... <radr brne,
: label>    ( -- adr )     \ label> ......... <radr rjmp,
    dp ;                 \ label> ......... 0 jmp,


  \ Addr, for jump forward, adr> brne, adr> 0 jmp,
: adr>     ( -- adr k )
    dp 0 ;


  \ Label for branch forward,  adr> brne, ......... <labelb
: <labelb   ( adr -- )
    dup 1+ dp swap - 
    7F and 3 lshift            \ -- adr k7
    over @i or                 \ -- adr opcode
    swap !i ;                  \ overwrite branch


  \ Label for jump forward,    adr> rjmp, ......... <labelr
: <labelr   ( adr -- )
    dup 1+ dp swap -
    0FFF and                   \ -- adr k12
    over @i or                 \ -- adr opcode
    swap !i ;                  \ overwrite rjmp, rcall


  \ Label for long jump forward,  adr> 0 jmp, ......... <labell
: <labell   ( adr -- )
    1+ dp swap !i ;          \ overwrite k16


00  constant R0
01  constant R1
02  constant R2
03  constant R3
04  constant R4
05  constant R5
06  constant R6
07  constant R7
08  constant R8
09  constant R9
0A  constant R10
0B  constant R11
0C  constant R12
0D  constant R13
0E  constant R14
0F  constant R15
10  constant R16
11  constant R17
12  constant R18
13  constant R19
14  constant R20
15  constant R21
16  constant R22
17  constant R23
18  constant R24
19  constant R25
1A  constant R26
1B  constant R27
1C  constant R28
1D  constant R29
1E  constant R30
1F  constant R31
1A  constant XL
1B  constant XH
1C  constant YL
1D  constant YH
1E  constant ZL
1F  constant ZH
01  constant XH:XL  \ XH:XL 3F adiw, sbiw,
02  constant YH:YL
03  constant ZH:ZL

variable (lbl) 12 allot  \ RAM for 10 labels

  \ store addr to vector of labels
: >lbl ( addr c -- )  \ index c=0..9
    2* (lbl) + ! ;

  \ read addr from vector of labels
: <lbl ( c -- addr )  \ index c=0..9
    2* (lbl) + @ ;

previous definitions
