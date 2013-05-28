
\ requires help

get-current
help-wl set-current
\ 

\ XT_ICOUNT
: icount 
 ." ( addr -- addr+1 n ) " 
 ."  get count information out of a counted string in flash " 
 ; 
\ XT_INTON
: +int 
 ." ( --  ) " 
 ."  turns on all interrupts " 
 ; 
\ XT_INTSTORE
: int! 
 ." ( xt i -- ) " 
 ."  stores XT as interrupt vector i " 
 ; 
\ XT_ISREND
: isr-end 
 ." ( --  ) " 
 ."  re-enables interrupts in an ISR " 
 ; 
\ XT_NUMINT
: #int 
 ." ( -- n ) " 
 ."  number of interrupt vectors (0 based) " 
 ; 
\ XT_RXQ
: rx? 
 ." ( -- f) " 
 ."  check if unread characters are in the input queue. " 
 ; 

\ (C: "<space>name" -- )

\ XT_BRACKETCHAR
: [char] 
 ." ( -- c ) " 
 ."  skip leading space delimites, place the first character of the word o " 
 ; 

\ (C: "<space>name" -- ) 

\ XT_BRACKETTICK
: ['] 
 ." ( -- xt ) " 
 ."  what ' does in the interpreter mode, do in colon definitions " 
 ; 

\ (C: "<spaces>name" -- )

\ XT_CREATE
: create 
 ." ( -- a-addr ) " 
 ."  create a dictionary header. XT is (constant), with the address of the " 
 ; 

\ (C: "<spaces>name" -- colon-sys )

\ XT_COLON
: : 
 ." (R: -- nest-sys ) " 
 ."  create named entry in the dictionary, XT is COLON " 
 ; 

\ (C: "ccc<quote>" -- )

\ XT_ABORTSTRING
: abort" 
 ." ( i*x x1 -- | i*x ) (R: j*y -- | j*y ) " 
 ."  check flag. If true display the parsed text and throw exception -2  " 
 ; 
\ XT_DOTSTRING
: ." 
 ." ( -- ) " 
 ."  compiles string into dictionary to be printed at runtime " 
 ; 

\ (C: -- colon-sys )

\ XT_COLONNONAME
: :noname 
 ." ( -- xt ) (R: -- nest-sys) " 
 ."  create unnamed entry in the dictionary, XT is COLON " 
 ; 

\ (C: -- dest ) 

\ XT_BEGIN
: begin 
 ." ( -- ) " 
 ."  put the next location for a transfer of control onto the control flow " 
 ; 

\ (C: -- do-sys )

\ XT_DO
: do 
 ." ( n1 n2 -- ) (R: -- loop-sys ) " 
 ."  start do .. [+]loop " 
 ; 

\ (C: -- do-sys)

\ XT_QDO
: ?do 
 ." ( n1|u1 n2|u2 -- ) R( -- | loop-sys ) " 
 ."  start a ?do .. [+]loop control structure " 
 ; 

\ (C: -- orig )

\ XT_IF
: if 
 ." ( f -- ) " 
 ."  start conditional branch " 
 ; 

\ (C: <cchar> -- ) 

\ XT_SQUOTE
: s" 
 ." ( -- addr len) " 
 ."  compiles a string to flash, at runtime leaves ( -- flash-addr count)  " 
 ; 

\ (C: cchar -- )

\ XT_CODE
: code 
 ." ( -- ) " 
 ."  create named entry in the dictionary, XT is the data field " 
 ; 

\ (C: colon-sys -- )

\ XT_SEMICOLON
: ; 
 ." ( -- )  (R: nest-sys -- ) " 
 ."  finish colon defintion, compiles (exit) and returns to interpreter st " 
 ; 

\ (C: colon-sys1 -- colon-sys2 )

\ XT_DOES
: does> 
 ." ( i*x -- j*y ) (R: nest-sys1 -- ) " 
 ."  replace the runtime semantics " 
 ; 

\ (C: dest -- ) 

\ XT_AGAIN
: again 
 ." ( -- ) " 
 ."  compile a jump back to dest " 
 ; 
\ XT_UNTIL
: until 
 ." ( f -- ) " 
 ."  finish begin with conditional branch, leaves the loop if true flag at " 
 ; 

\ (C: dest -- orig dest ) 

\ XT_WHILE
: while 
 ." ( f -- ) " 
 ."  at runtime skip until repeat if non-true " 
 ; 

\ (C: do-sys -- )

\ XT_PLUSLOOP
: +loop 
 ." ( n -- ) (R: loop-sys -- loop-sys| ) " 
 ."  compile (+loop) and resolve branches " 
 ; 

\ (C: do-sys -- ) 

\ XT_LOOP
: loop 
 ." (R: loop-sys -- ) " 
 ."  compile (loop) and resolve the backward branch " 
 ; 

\ (C: n -- )

\ XT_LITERAL
: literal 
 ." ( -- n ) " 
 ."  compile a literal in colon defintions " 
 ; 

\ (C: orig -- ) 

\ XT_THEN
: then 
 ." ( -- ) " 
 ."  finish if " 
 ; 

\ (C: orig dest -- )

\ XT_REPEAT
: repeat 
 ." ( --  ) " 
 ."  continue execution at dest, resolve orig " 
 ; 

\ (C: x "<spaces>name" -- )

\ XT_CONSTANT
: constant 
 ." ( -- x ) " 
 ."  create a constant in the dictionary " 
 ; 

\ (C: x1 x2 -- )

\ XT_2LITERAL
: 2literal 
 ." ( -- x1 x2 ) " 
 ."  compile a cell pair literal in colon defintions " 
 ; 

\ (R: -- n)

\ XT_TO_R
: >r 
 ." ( n -- ) " 
 ."  move TOS to TOR " 
 ; 

\ (R: -- x*y)

\ XT_RP_STORE
: rp! 
 ." ( addr  -- ) " 
 ."  set return stack pointer " 
 ; 

\ (R: -- x1 x2)

\ XT_2TO_R
: 2>r 
 ." ( x1 x2 -- ) " 
 ."  move DTOS to TOR " 
 ; 

\ (R: -- xn .. x0 n)

\ XT_N_R_FROM
: nr> 
 ." ( xn .. x0 n -- ) " 
 ."  move n items from data stack to return stack " 
 ; 
\ XT_N_TO_R
: n>r 
 ." ( xn .. x0 n -- ) " 
 ."  move n items from data stack to return stack " 
 ; 

\ (R: i*x - j*x )

\ XT_INTERPRET
: interpret 
 ." ( -- ) " 
 ."  interpret input word by word. may throw exceptions " 
 ; 

\ (R: j*y -- )

\ XT_ABORT
: abort 
 ." ( i*x -- ) " 
 ."  send an exception -1 " 
 ; 

\ (R: loop-sys -- )

\ XT_LEAVE
: leave 
 ." ( -- ) " 
 ."  immediatly leave the current DO..LOOP " 
 ; 

\ (R: loop-sys -- ) 

\ XT_UNLOOP
: unloop 
 ." ( -- ) " 
 ."  remove loop-sys, exit the loop and continue execution after it " 
 ; 

\ (R: loop-sys -- loop-sys)

\ XT_I
: i 
 ." ( -- n ) " 
 ."  current loop counter " 
 ; 

\ (R: loop-sys1 loop-sys2 -- loop-sys1 loop-sys2)

\ XT_J
: j 
 ." ( -- n ) " 
 ."  loop counter of outer loop " 
 ; 

\ (R: n -- n )

\ XT_R_FETCH
: r@ 
 ." ( -- n) " 
 ."  fetch content of TOR " 
 ; 

\ (R: n --)

\ XT_R_FROM
: r> 
 ." ( -- n ) " 
 ."  move TOR to TOS " 
 ; 

\ (R: nest-sys -- )

\ XT_EXIT
: exit 
 ." ( -- ) " 
 ."  end of current colon word " 
 ; 

\ (R: ny* -- )

\ XT_WARM
: warm 
 ." ( nx* -- ) " 
 ."  initialize amforth further. executes turnkey operation and go to quit " 
 ; 

\ (R: x1 x2 --) 

\ XT_2R_FROM
: 2r> 
 ." ( -- x1 x2 ) " 
 ."  move DTOR to TOS " 
 ; 

\ MCU

\ XT_TXQ
: tx? 
 ." (-- f) " 
 ."  check if a character can be appended to output queue. " 
 ; 

\ internal/hidden

\ XT_DOBRANCH
: (branch) 
 ." (-- ) " 
 ."  runtime of branch " 
 ; 
\ XT_DOCONDBRANCH
: (?branch) 
 ." (f -- ) " 
 ."  runtime of ?branch " 
 ; 
\ XT_DOCONSTANT
: (constant) 
 ." (-- addr ) " 
 ."  place data field address on TOS " 
 ; 
\ XT_DOCREATE
: (create) 
 ." ( --  ) " 
 ."  creates the vocabulary header without XT and data field (PF) " 
 ; 
\ XT_DODO
: (do) 
 ." ( limit counter -- ) " 
 ."  runtime of do " 
 ; 
\ XT_DODOES
: (does>) 
 ." (-- ) " 
 ."  runtime of does> " 
 ; 
\ XT_DOEDEFER
: (defer) 
 ." (i*x -- j*x ) " 
 ."  runtime of defer " 
 ; 
\ XT_DOLITERAL
: (literal) 
 ." (-- n1 ) " 
 ."  runtime of literal " 
 ; 
\ XT_DOLITERAL2
: (2literal) 
 ." (-- x1 x2 ) " 
 ."  runtime of 2literal " 
 ; 
\ XT_DOLOOP
: (loop) 
 ." ( -- ) " 
 ."  runtime of loop " 
 ; 
\ XT_DOPLUSLOOP
: (+loop) 
 ." ( n1 -- ) " 
 ."  runtime of +loop " 
 ; 
\ XT_DOQDO
: (?do) 
 ." ( limit counter -- ) " 
 ."  runtime of ?do " 
 ; 
\ XT_DORP0
: (rp0) 
 ." (-- addr) " 
 ."  user variable of the address of the initial return stack " 
 ; 
\ XT_DOUSER
: (user) 
 ." (-- addr ) " 
 ."  runtime part of user " 
 ; 
\ XT_DOVARIABLE
: (variable) 
 ." (-- addr ) " 
 ."  puts content of parameter field (1 cell) to TOS " 
 ; 
\ XT_EDEFERFETCH
: Edefer@ 
 ." (xt1 -- xt2 ) " 
 ."  does the real defer@ for eeprom defers " 
 ; 
\ XT_EDEFERSTORE
: Edefer! 
 ." (xt1 xt2 -- ) " 
 ."  does the real defer! for eeprom defers " 
 ; 
\ XT_GMARK
: >mark 
 ." (-- dest ) " 
 ."  places current dictionary position for backward resolves " 
 ; 
\ XT_GRESOLVE
: >resolve 
 ." (dest -- ) " 
 ."  resolve backward jumps " 
 ; 
\ XT_HIEMIT
: hiemit 
 ." (w -- ) " 
 ."  content of cell fetched on stack. " 
 ; 
\ XT_INTRESTORE
: int_restore 
 ." (sreg -- ) " 
 ."  restores SREG from TOS " 
 ; 
\ XT_LMARK
: <mark 
 ." (-- dest ) " 
 ."  place destination for backward branch " 
 ; 
\ XT_LRESOLVE
: <resolve 
 ." (dest -- ) " 
 ."  resolve backward branch " 
 ; 
\ XT_PRAEFIX
: praefix 
 ." (addr len -- addr' len' ) " 
 ."  skip a numeric prefix character " 
 ; 
\ XT_PROMPTERROR
: p_er 
 ." (n -- ) " 
 ."  process the error prompt " 
 ; 
\ XT_PROMPTOK
: p_ok 
 ." (-- ) " 
 ."  send the OK prompt to the command line " 
 ; 
\ XT_PROMPTRDY
: p_rd 
 ." (-- ) " 
 ."  send the READY prompt to the command line " 
 ; 
\ XT_RDEFERFETCH
: Rdefer@ 
 ." (xt1 -- xt2 ) " 
 ."  does the real defer@ for ram defers " 
 ; 
\ XT_RDEFERSTORE
: Rdefer! 
 ." (xt1 xt2 -- ) " 
 ."  does the real defer! for ram defers " 
 ; 
\ XT_SETBASE
: setbase 
 ." (c -- ) " 
 ."  set the BASE value depending on the character " 
 ; 
\ XT_UDEFERFETCH
: Udefer@ 
 ." (xt1 -- xt2 ) " 
 ."  does the real defer@ for user based defers " 
 ; 
\ XT_UDEFERSTORE
: Udefer! 
 ." (xt1 xt2 -- ) " 
 ."  does the real defer! for user based defers " 
 ; 
\ XT_USART_INIT_RX
: +usart 
 ." ( -- ) " 
 ."  initialize usart " 
 ; 
\ XT_USART_INIT_RX
: +usart 
 ." ( -- ) " 
 ."  initialize usart " 
 ; 
\ XT_USART_INIT_TX
: +usart 
 ." ( -- ) " 
 ."  initialize usart " 
 ; 
\ XT_USART_INIT_TX
: +usart 
 ." ( -- ) " 
 ."  initialize usart " 
 ; 

\ unclassified

\ XT_1MINUS
: 1- 
 ." (S: n1 -- n2 ) " 
 ."  optimized decrement " 
 ; 
\ XT_1MS
: 1ms 
 ." (-- ) " 
 ."  busy waits (almost) exactly 1 millisecond " 
 ; 
\ XT_1PLUS
: 1+ 
 ." (n1|u1 -- n2|u2 ) " 
 ."  optimized increment " 
 ; 
\ XT_2SLASH
: 2/ 
 ." (n1 -- n2 ) " 
 ."  arithmetic shift right " 
 ; 
\ XT_2STAR
: 2* 
 ." (n1 -- n2 ) " 
 ."  arithmetic shift left, filling with zero " 
 ; 
\ XT_2SWAP
: 2swap 
 ." (x1 x2 x3 x4 -- x3 x4 x1 x2 ) " 
 ."  Exchange the two top cell pairs " 
 ; 
\ XT_ABS
: abs 
 ." (n1 -- u1 ) " 
 ."  get the absolute value " 
 ; 
\ XT_ACCEPT
: accept 
 ." (addr +n1 -- +n2 ) " 
 ."  receive a string of at most n1 characters at addr until n2 characters " 
 ; 
\ XT_AFETCH
: a@ 
 ." (-- n2 ) " 
 ."  Read memory pointed to by register A (Extended VM) " 
 ; 
\ XT_AFETCHMINUS
: a@- 
 ." (-- n ) " 
 ."  Read memory pointed to by register A, decrement A by 1 cell (Extended " 
 ; 
\ XT_AFETCHPLUS
: a@+ 
 ." (-- n ) " 
 ."  Read memory pointed to by register A, increment A by 1 cell (Extended " 
 ; 
\ XT_ALLOT
: allot 
 ." (n -- ) " 
 ."  allocate or release memory in RAM " 
 ; 
\ XT_ALSO
: also 
 ." (-- ) " 
 ."  Duplicate first entry in the current search order list " 
 ; 
\ XT_AND
: and 
 ." (n1 n2 -- n3 ) " 
 ."  bitwise and " 
 ; 
\ XT_ASTORE
: a! 
 ." (n -- ) " 
 ."  Write memory pointed to by register A (Extended VM) " 
 ; 
\ XT_ASTOREMINUS
: a!- 
 ." (-- n2 ) " 
 ."  Write memory pointed to by register A, decrement A by 1 cell (Extende " 
 ; 
\ XT_ASTOREPLUS
: a!+ 
 ." (-- n2 ) " 
 ."  Write memory pointed to by register A, increment A by 1 cell (Extende " 
 ; 
\ XT_A_FROM
: a> 
 ." (n1 -- n2 ) " 
 ."  read the A register (Extended VM) " 
 ; 
\ XT_BACKSLASH
: \ 
 ." ("ccc<eol>" -- ) " 
 ."  everything up to the end of the current line is a comment " 
 ; 
\ XT_BASE
: base 
 ." (-- a-addr ) " 
 ."  location of the cell containing the number conversion radix " 
 ; 
\ XT_BAUD
: baud 
 ." (-- v) " 
 ."  returns usart baudrate " 
 ; 
\ XT_BAUD
: baud 
 ." (-- v) " 
 ."  returns usart baudrate " 
 ; 
\ XT_BFETCH
: b@ 
 ." (-- n2 ) " 
 ."  Read memory pointed to by register B (Extended VM) " 
 ; 
\ XT_BFETCHMINUS
: b@- 
 ." (-- n ) " 
 ."  Read memory pointed to by register B, decrement B by 1 cell (Extended " 
 ; 
\ XT_BFETCHPLUS
: b@+ 
 ." (-- n ) " 
 ."  Read memory pointed to by register B, increment B by 1 cell (Extended " 
 ; 
\ XT_BIN
: bin 
 ." (-- ) " 
 ."  set base for number conversion to 2 " 
 ; 
\ XT_BL
: bl 
 ." (-- 32 ) " 
 ."  put ascii code of the blank to the stack " 
 ; 
\ XT_BSTORE
: b! 
 ." (n -- ) " 
 ."  Write memory pointed to by register B (Extended VM) " 
 ; 
\ XT_BSTOREMINUS
: b!- 
 ." (-- n2 ) " 
 ."  Write memory pointed to by register B, decrement B by 1 cell (Extende " 
 ; 
\ XT_BSTOREPLUS
: b!+ 
 ." (-- n2 ) " 
 ."  Write memory pointed to by register B, increment B by 1 cell (Extende " 
 ; 
\ XT_BYTESWAP
: >< 
 ." (n1 -- n2 ) " 
 ."  exchange the bytes of the TOS " 
 ; 
\ XT_B_FROM
: b> 
 ." (n1 -- n2 ) " 
 ."  read the B register (Extended VM) " 
 ; 
\ XT_CATCH
: catch 
 ." (i*x xt -- j*x 0 | i*x n ) " 
 ."  execute XT and check for exceptions. " 
 ; 
\ XT_CELLPLUS
: cell+ 
 ." (a-addr1 -- a-addr2 ) " 
 ."  add the size of an address-unit to a-addr1 " 
 ; 
\ XT_CELLS
: cells 
 ." (n1 -- n2 ) " 
 ."  n2 is the size in address units of n1 cells " 
 ; 
\ XT_CFETCH
: c@ 
 ." (a-addr - c1 ) " 
 ."  fetch a single byte from memory mapped locations " 
 ; 
\ XT_CHAR
: char 
 ." ("<spaces>name" -- c ) " 
 ."  copy the first character of the next word onto the stack " 
 ; 
\ XT_CMOVE
: cmove 
 ." (addr-from addr-to n -- ) " 
 ."  copy data in RAM, from lower to higher addresses " 
 ; 
\ XT_CMOVE_G
: cmove> 
 ." (addr-from addr-to n -- ) " 
 ."  copy data in RAM from higher to lower addresses. " 
 ; 
\ XT_COLD
: cold 
 ." (-- ) " 
 ."  start up amforth. " 
 ; 
\ XT_COMMA
: , 
 ." (n -- ) " 
 ."  compile 16 bit into flash at DP " 
 ; 
\ XT_COMPILE
: compile 
 ." (-- ) " 
 ."  append the the next flash cell to flash at DP " 
 ; 
\ XT_COUNT
: count 
 ." (c-addr1 -- c-addr2 n) " 
 ."  c-addr1 is the address of a counted string in RAM " 
 ; 
\ XT_CR
: cr 
 ." (-- ) " 
 ."  cause subsequent output appear at the beginning of the next line " 
 ; 
\ XT_CSCAN
: cscan 
 ." (addr1 n1 c -- addr1 n2 ) " 
 ."  Scan string at addr1/n1 for the first c, leaving addr1/n2, char at n2 " 
 ; 
\ XT_CSKIP
: cskip 
 ." (addr1 n1 c -- addr2 n2 ) " 
 ."  skips leading occurancies in string at addr1/n1 leaving addr2/n2 poin " 
 ; 
\ XT_CSTORE
: c! 
 ." (c a-addr -- ) " 
 ."  store a single byte to RAM address " 
 ; 
\ XT_D2S
: d>s 
 ." (d1 -- n1 ) " 
 ."  shrink double cell value to single cell.  " 
 ; 
\ XT_D2SLASH
: d2/ 
 ." (d1 -- d2 ) " 
 ."  shift a double cell value right " 
 ; 
\ XT_D2STAR
: d2* 
 ." (d1 -- d2 ) " 
 ."  shift a double cell left " 
 ; 
\ XT_DABS
: dabs 
 ." (d -- ud ) " 
 ."  double cell absolute value " 
 ; 
\ XT_DDOT
: d. 
 ." (d1 -- ) " 
 ."  double cell output " 
 ; 
\ XT_DDOTR
: d.r 
 ." (d1 n -- ) " 
 ."  double cell output, right aligned into n characters, filled up with s " 
 ; 
\ XT_DECIMAL
: decimal 
 ." (-- ) " 
 ."  set base for numeric conversion to 10 " 
 ; 
\ XT_DEFERFETCH
: defer@ 
 ." (xt1 -- xt2 ) " 
 ."  returns the XT associated with the given XT " 
 ; 
\ XT_DEFERSTORE
: defer! 
 ." (xt1 xt2 -- ) " 
 ."  stores xt1 as the xt to be executed when xt2 is called " 
 ; 
\ XT_DEFINITIONS
: definitions 
 ." (-- ) " 
 ."  Make the compilation word list the same as the current first word lis " 
 ; 
\ XT_DEPTH
: depth 
 ." (-- n ) " 
 ."  number of single-cell values contained in the data stack before n was " 
 ; 
\ XT_DEQUAL
: d= 
 ." (n1 n2 -- flag ) " 
 ."  compares two double cell values " 
 ; 
\ XT_DGREATER
: d> 
 ." (d1 d2 -- flag ) " 
 ."  compares two double cell values (signed) " 
 ; 
\ XT_DIGITQ
: digit? 
 ." (c base -- number flag ) " 
 ."  tries to convert a character to a number, set flag accordingly " 
 ; 
\ XT_DINVERT
: dinvert 
 ." (d1 -- d2) " 
 ."  invert all bits in the double cell value " 
 ; 
\ XT_DLESS
: d< 
 ." (d1 d2 -- flag) " 
 ."  checks whether d1 is less than d2 " 
 ; 
\ XT_DMINUS
: d- 
 ." (d1 d2 -- d3 ) " 
 ."  subtract d2 from d1  " 
 ; 
\ XT_DNEGATE
: dnegate 
 ." (d1 -- d2 ) " 
 ."  double cell negation " 
 ; 
\ XT_DOSCOMMA
: (s,) 
 ." ; Compiler " 
 ."  compiles a string from RAM to Flash " 
 ; 
\ XT_DOSP0
: (sp0) 
 ." ; Stack " 
 ."  start address of the data stack " 
 ; 
\ XT_DOT
: . 
 ." (n -- ) " 
 ."  single cell numeric output " 
 ; 
\ XT_DOTO
: (to) 
 ." ; Tools " 
 ."  store the TOS to the named value (eeprom cell) " 
 ; 
\ XT_DOTR
: .r 
 ." (n w -- ) " 
 ."  single cell numeric output " 
 ; 
\ XT_DOTS
: .s 
 ." (-- ) " 
 ."  stack dump " 
 ; 
\ XT_DO_STOREI_NRWW
: (!i-nrww) 
 ." (n f-addr -- ) " 
 ."  writes a cell in flash using assembly code " 
 ; 
\ XT_DO_STOREI_NVM
: (!i-nvm) 
 ." (n f-addr -- ) " 
 ."  writes a cell in flash using NVM (atxmega) " 
 ; 
\ XT_DP
: dp 
 ." (-- f-addr ) " 
 ."  address of the next free dictionary cell " 
 ; 
\ XT_DPLUS
: d+ 
 ." (d1 d2 -- d3) " 
 ."  add 2 double cell values " 
 ; 
\ XT_DROP
: drop 
 ." (n -- ) " 
 ."  drop TOS " 
 ; 
\ XT_DUP
: dup 
 ." (n -- n n ) " 
 ."  duplicate TOS " 
 ; 
\ XT_EDEFER
: Edefer 
 ." (c<name> -- ) " 
 ."  creates a defer vector which is kept in eeprom. " 
 ; 
\ XT_EDP
: edp 
 ." (-- e-addr ) " 
 ."  address of the first unused address in eeprom " 
 ; 
\ XT_EE2RAM
: ee>ram 
 ." (e-addr r-addr len -- ) " 
 ."  copy len cells from eeprom to ram " 
 ; 
\ XT_EEUSER
: ee-user 
 ." (-- v) " 
 ."  address of the default user area content in eeprom " 
 ; 
\ XT_ELSE
: else 
 ." (C: orig1 -- orig2 ) " 
 ."  resolve the forware reference and place a new unresolved forward refe " 
 ; 
\ XT_EMIT
: emit 
 ." (c -- ) " 
 ."  fetch the emit vector and execute it. should emit a character from TO " 
 ; 
\ XT_EMITQ
: emit? 
 ." (-- f ) " 
 ."  fetch emit? vector and execute it. should return the ready-to-send co " 
 ; 
\ XT_ENDCODE
: end-code 
 ." (-- ) " 
 ."  finish a code definition " 
 ; 
\ XT_ENVIRONMENT
: environment 
 ." (-- wid) " 
 ."  word list identifier of the environmental search list " 
 ; 
\ XT_ENVIRONMENTQ
: environment? 
 ." (addr len -- 0 | i*x -1 ) " 
 ."  get environment information " 
 ; 
\ XT_ENVSLASHHOLD
: /hold 
 ." (-- hldsize ) " 
 ."  size of the pictured numeric output buffer in bytes " 
 ; 
\ XT_ENVSLASHPAD
: /pad 
 ." (-- padsize ) " 
 ."  Size of the PAD buffer in bytes " 
 ; 
\ XT_ENVUSERSIZE
: /user 
 ." (-- usersize ) " 
 ."  size of the USER area in bytes " 
 ; 
\ XT_ENVWORDLISTS
: wordlists 
 ." (-- n ) " 
 ."  maximum number of wordlists in the dictionary search order " 
 ; 
\ XT_ENV_CPU
: cpu 
 ." (-- faddr len ) " 
 ."  flash address of the CPU identification string " 
 ; 
\ XT_ENV_FORTHNAME
: forth-name 
 ." (-- faddr len ) " 
 ."  flash address of the amforth name string " 
 ; 
\ XT_ENV_FORTHVERSION
: version 
 ." (-- faddr len ) " 
 ."  flash address of the amforth version string " 
 ; 
\ XT_EQUAL
: = 
 ." (n1 n2 -- flag ) " 
 ."  compares two values for equality " 
 ; 
\ XT_EQUALZERO
: 0= 
 ." (n -- flag ) " 
 ."  compare with 0 (zero) " 
 ; 
\ XT_EWORDS
: ewords 
 ." (-- ) " 
 ."  prints a list of all words in the environment " 
 ; 
\ XT_EXECUTE
: execute 
 ." (xt -- ) " 
 ."  execute XT " 
 ; 
\ XT_FETCH
: @ 
 ." (a-addr -- n ) " 
 ."  read 1 cell from RAM address " 
 ; 
\ XT_FETCHE
: @e 
 ." (e-addr - n) " 
 ."  read 1 cell from eeprom " 
 ; 
\ XT_FETCHENVM
: @e 
 ." (e-addr - n) " 
 ."  read 1 cell from eeprom using NVM " 
 ; 
\ XT_FETCHI
: @i 
 ." (f-addr -- n1 ) " 
 ."  reads 1 cell from flash " 
 ; 
\ XT_FILL
: fill 
 ." (a-addr u c -- ) " 
 ."  fill u bytes memory beginning at a-addr with character c " 
 ; 
\ XT_FIND
: find 
 ." (addr -- [ addr 0 ] | [ xt [-1|1]] ) " 
 ."  search wordlists " 
 ; 
\ XT_FORTH
: forth 
 ." (-- ) " 
 ."  replace the search order list with the system default list " 
 ; 
\ XT_FORTH_WORDLIST
: forth-wordlist 
 ." (-- wid ) " 
 ."  get the system default word list " 
 ; 
\ XT_F_CPU
: f_cpu 
 ." (-- d ) " 
 ."  put the cpu frequency in Hz on stack " 
 ; 
\ XT_GET_CURRENT
: get-current 
 ." (-- wid) " 
 ."  get the wid of the current compilation word list " 
 ; 
\ XT_GET_EE_ARRAY
: get-e-array 
 ." (ee-addr -- itemn .. item0 n) " 
 ."  Get an array of cells from EEPROM " 
 ; 
\ XT_GET_ORDER
: get-order 
 ." (-- widn .. wid0 n) " 
 ."  Get the current search order word list " 
 ; 
\ XT_GET_RECOGNIZER
: get-recognizer 
 ." (-- widn .. wid0 n) " 
 ."  Get the current recognizer list " 
 ; 
\ XT_GREATER
: > 
 ." (n1 n2 -- flag ) " 
 ."  flag is true if n1 is greater than n2 " 
 ; 
\ XT_GREATERZERO
: 0> 
 ." (n1 -- flag ) " 
 ."  true if n1 is greater than 0 " 
 ; 
\ XT_G_IN
: >in 
 ." (-- a-addr ) " 
 ."  pointer to current read position in input buffer " 
 ; 
\ XT_HANDLER
: handler 
 ." (-- a-addr ) " 
 ."  USER variable used by catch/throw " 
 ; 
\ XT_HERE
: here 
 ." (-- addr ) " 
 ."  address of the next free data space (RAM) cell " 
 ; 
\ XT_HEX
: hex 
 ." (-- ) " 
 ."  set base for number conversion to 16 " 
 ; 
\ XT_HLD
: hld 
 ." (-- addr ) " 
 ."  pointer to current write position in the Pictured Numeric Output buff " 
 ; 
\ XT_HOLD
: hold 
 ." (c -- ) " 
 ."  prepend character to pictured numeric output buffer " 
 ; 
\ XT_ICOMPARE
: icompare 
 ." (r-addr r-len f-addr f-len --  f) " 
 ."  compares string in RAM with string in flash " 
 ; 
\ XT_ICOMPARE
: icompare 
 ." (r-addr r-len f-addr f-len --  f) " 
 ."  compares string in RAM with string in flash " 
 ; 
\ XT_ICOMPARE
: icompare 
 ." (r-addr r-len f-addr f-len --  f) " 
 ."  compares string in RAM with string in flash " 
 ; 
\ XT_IMMEDIATE
: immediate 
 ." (-- ) " 
 ."  set immediate flag for the most recent word definition " 
 ; 
\ XT_INITUSER
: init-user 
 ." (-- ) " 
 ."  setup the default user area from eeprom " 
 ; 
\ XT_INTFETCH
: int@ 
 ." (i -- xt ) " 
 ."  fetches XT from interrupt vector i " 
 ; 
\ XT_INTOFF
: -int 
 ." (-- sreg ) " 
 ."  turns off all interrupts and leaves SREG in TOS " 
 ; 
\ XT_INTTRAP
: int-trap 
 ." (i --  ) " 
 ."  trigger an interrupt " 
 ; 
\ XT_INVERT
: invert 
 ." (n1 -- n2) " 
 ."  1-complement of TOS " 
 ; 
\ XT_IS
: is 
 ." (xt1 c<char> -- ) " 
 ."  stores xt into defer or compiles code to do so at runtime " 
 ; 
\ XT_ISREXEC
: isr-exec 
 ." (xt -- ) " 
 ."  executes an interrupt service routine " 
 ; 
\ XT_ITYPE
: itype 
 ." (addr n --  ) " 
 ."  reads string from flash and prints it " 
 ; 
\ XT_KEY
: key 
 ." (-- c ) " 
 ."  fetch key vector and execute it, should leave a single character on T " 
 ; 
\ XT_KEYQ
: key? 
 ." (-- f) " 
 ."  fetch key? vector and execute it. should turn on key sender, if it is " 
 ; 
\ XT_LBRACKET
: [ 
 ." (--  ) " 
 ."  enter interpretation state " 
 ; 
\ XT_LESSZERO
: 0< 
 ." (n1 -- flag) " 
 ."  compare with zero " 
 ; 
\ XT_LOG2
: log2 
 ." (n1 -- n2 ) " 
 ."  logarithm to base 2 or highest set bitnumber " 
 ; 
\ XT_LPARENTHESIS
: ( 
 ." ("ccc<paren>" -- ) " 
 ."  skip everything up to the closing bracket on the same line " 
 ; 
\ XT_LSHIFT
: lshift 
 ." (n1 n2 -- n3) " 
 ."  logically shift n1 left n2 times " 
 ; 
\ XT_L_SHARP
: <# 
 ." (-- ) " 
 ."  initialize the pictured numeric output conversion process " 
 ; 
\ XT_MAX
: max 
 ." (n1 n2 -- n1|n2 ) " 
 ."  compare two values, leave the bigger one " 
 ; 
\ XT_MIN
: min 
 ." (n1 n2 -- n1|n2 ) " 
 ."  compare two values leave the smaller one " 
 ; 
\ XT_MINUS
: - 
 ." (n1|u1 n2|u2 -- n3|u3 ) " 
 ."  subtract n2 from n1 " 
 ; 
\ XT_MOD
: mod 
 ." (n1 n2 -- n3) " 
 ."  divide n1 by n2 giving the remainder n3 " 
 ; 
\ XT_MS
: ms 
 ." (n -- ) " 
 ."  busy waits the specified amount of milliseconds " 
 ; 
\ XT_MSTAR
: m* 
 ." (n1 n2 -- d) " 
 ."  multiply 2 cells to a double cell " 
 ; 
\ XT_NAFETCH
: na@ 
 ." (n1 -- n2 ) " 
 ."  Read memory pointed to by register A plus offset (Extended VM) " 
 ; 
\ XT_NASTORE
: na! 
 ." (n offs -- ) " 
 ."  Write memory pointed to by register A plus offset (Extended VM) " 
 ; 
\ XT_NBFETCH
: nb@ 
 ." (n1 -- n2 ) " 
 ."  Read memory pointed to by register B plus offset (Extended VM) " 
 ; 
\ XT_NBSTORE
: nb! 
 ." (n offs -- ) " 
 ."  Write memory pointed to by register B plus offset (Extended VM) " 
 ; 
\ XT_NEGATE
: negate 
 ." (n1 -- n2 ) " 
 ."  2-complement " 
 ; 
\ XT_NIP
: nip 
 ." (n1 n2 -- n2 ) " 
 ."  Remove Second of Stack " 
 ; 
\ XT_NOJTAG
: -jtag 
 ." (-- ) " 
 ."  disable jtag at runtime " 
 ; 
\ XT_NOOP
: noop 
 ." (-- ) " 
 ."  do nothing " 
 ; 
\ XT_NOT
: not 
 ." (flag -- flag' ) " 
 ."  identical to 0= " 
 ; 
\ XT_NOTEQUAL
: <> 
 ." (n1 n2 -- flag) " 
 ."  true if n1 is not equal to n2 " 
 ; 
\ XT_NOTEQUALZERO
: 0<> 
 ." (n -- flag ) " 
 ."  true if n is not zero " 
 ; 
\ XT_NOWDT
: -wdt 
 ." (-- ) " 
 ."  disable watch dog timer at runtime " 
 ; 
\ XT_NUMBER
: number 
 ." (addr len -- [n|d size] f) " 
 ."  convert a counted string at addr to a number " 
 ; 
\ XT_NUMBERTIB
: #tib 
 ." (-- addr ) " 
 ."  address of variable holding the number of characters in TIB " 
 ; 
\ XT_ONLY
: only 
 ." (-- ) " 
 ."  replace the order list with the system default list " 
 ; 
\ XT_OR
: or 
 ." (n1 n2 -- n3 ) " 
 ."  logical or " 
 ; 
\ XT_ORDER
: order 
 ." (-- ) " 
 ."  print the wids of the current word list and the search order " 
 ; 
\ XT_OVER
: over 
 ." (x1 x2 -- x1 x2 x1 ) " 
 ."  Place a copy of x1 on top of the stack " 
 ; 
\ XT_PAD
: pad 
 ." (-- a-addr ) " 
 ."  Address of the temporary scratch buffer. " 
 ; 
\ XT_PARSE
: parse 
 ." (char "ccc<char>" -- c-addr u ) " 
 ."  in input buffer parse ccc delimited string by the delimiter char. " 
 ; 
\ XT_PAUSE
: pause 
 ." (-- ) " 
 ."  Fetch pause vector and execute it. may make a context/task switch " 
 ; 
\ XT_PICK
: pick 
 ." (xu ... x1 x0 u -- xu ... x1 x0 xu ) " 
 ."  access the stack as an array and fetch the u-th element as new TOS " 
 ; 
\ XT_PLACE
: place 
 ." (addr1 len1 addr2 -- ) " 
 ."  copy string as counted string " 
 ; 
\ XT_PLUS
: + 
 ." (n1 n2 -- n3) " 
 ."  add n1 and n2 " 
 ; 
\ XT_PLUSSTORE
: +! 
 ." (n a-addr -- ) " 
 ."  add n to content of RAM address a-addr " 
 ; 
\ XT_PREVIOUS
: previous 
 ." (-- ) " 
 ."  remove the first entry in the search order list " 
 ; 
\ XT_QDUP
: ?dup 
 ." (n1 -- [ n1 n1 ] | 0) " 
 ."  duplicate TOS if non-zero " 
 ; 
\ XT_QEXECUTE
: ?execute 
 ." (xt|0 -- ) " 
 ."  execute XT if non-zero " 
 ; 
\ XT_QSTACK
: ?stack 
 ." (--  ) " 
 ."  check stack underflow, throw exception -42 " 
 ; 
\ XT_QUIT
: quit 
 ." (-- ) " 
 ."  main loop of amforth. accept - interpret in an endless loop " 
 ; 
\ XT_RBRACKET
: ] 
 ." (--  ) " 
 ."  turn on compiler mode " 
 ; 
\ XT_RDEFER
: Rdefer 
 ." (c<name> -- ) " 
 ."  creates a RAM based defer vector " 
 ; 
\ XT_RECURSE
: recurse 
 ." (-- ) " 
 ."  compile  XT of the word beeing currently defined into dictionary " 
 ; 
\ XT_REC_FIND
: rec-find 
 ." (addr -- f ) " 
 ."  recognizer for find " 
 ; 
\ XT_REC_INTNUMBER
: rec-intnum 
 ." (addr -- f ) " 
 ."  recognizer for integer numbers " 
 ; 
\ XT_REC_NOTFOUND
: rec-notfound 
 ." (addr --  ) " 
 ."  recognizer for NOT FOUND " 
 ; 
\ XT_REFILL
: refill 
 ." (-- f ) " 
 ."  refills the input buffer " 
 ; 
\ XT_ROT
: rot 
 ." (n1 n2 n3 -- n2 n3 n1) " 
 ."  rotate the three top level cells " 
 ; 
\ XT_RP0
: rp0 
 ." (-- addr) " 
 ."  start address of return stack " 
 ; 
\ XT_RP_FETCH
: rp@ 
 ." (-- n) " 
 ."  current return stack pointer address " 
 ; 
\ XT_RSHIFT
: rshift 
 ." (n1 n2 -- n3 ) " 
 ."  shift n1 n2-times logically right " 
 ; 
\ XT_RX
: rx 
 ." (-- c) " 
 ."  get 1 character from input queue, wait if needed " 
 ; 
\ XT_RX
: rx 
 ." (-- c) " 
 ."  get 1 character from input queue, wait if needed " 
 ; 
\ XT_RX
: rx 
 ." (-- c) " 
 ."  get 1 character from input queue, wait if needed " 
 ; 
\ XT_RXQ
: rx? 
 ." ( -- f) " 
 ."  check if unread characters are in the input queue. " 
 ; 
\ XT_RXQ
: rx? 
 ." ( -- f) " 
 ."  check if unread characters are in the input queue. " 
 ; 
\ XT_S2D
: s>d 
 ." (n1 -- d1 ) " 
 ."  extend (signed) single cell value to double cell " 
 ; 
\ XT_SCOMMA
: s, 
 ." (addr len -- ) " 
 ."  compiles a string from RAM to Flash " 
 ; 
\ XT_SEARCH_WORDLIST
: search-wordlist 
 ." (c-addr len wid -- [ 0 ] | [ xt [-1|1]] ) " 
 ."  searches the word list wid for the word at c-addr/len " 
 ; 
\ XT_SET_CURRENT
: set-current 
 ." (wid -- ) " 
 ."  set current word list to the given word list wid " 
 ; 
\ XT_SET_ORDER
: set-order 
 ." (widn .. wid0 n -- ) " 
 ."  replace the search order list " 
 ; 
\ XT_SET_RECOGNIZER
: set-recognizer 
 ." (recn .. rec0 n -- ) " 
 ."  replace the recognizer list " 
 ; 
\ XT_SHARP
: # 
 ." (d1 -- d2 ) " 
 ."  pictured numeric output: convert one digit " 
 ; 
\ XT_SHARP_G
: #> 
 ." (d1 -- addr count ) " 
 ."  Pictured Numeric Output: convert PNO buffer into an string " 
 ; 
\ XT_SHARP_S
: #s 
 ." (d -- 0 ) " 
 ."  pictured numeric output: convert all digits until 0 (zero) is reached " 
 ; 
\ XT_SHOWWORDLIST
: show-wordlist 
 ." (wid -- ) " 
 ."  prints the name of the words in a wordlist " 
 ; 
\ XT_SIGN
: sign 
 ." (n -- ) " 
 ."  place a - in HLD if n is negative " 
 ; 
\ XT_SLASH
: / 
 ." (n1 n2 -- n3) " 
 ."  divide n1 by n2. giving the quotient " 
 ; 
\ XT_SLASHKEY
: /key 
 ." (-- ) " 
 ."  fetch /key vector and execute it, should turn off the sender of key e " 
 ; 
\ XT_SLASHMOD
: /mod 
 ." (n1 n2 -- rem quot) " 
 ."  signed division n1/n2 with remainder and quotient " 
 ; 
\ XT_SLASHSTRING
: /string 
 ." (addr1 u1 n-- addr2 u2 ) " 
 ."  adjust string from addr1 to addr1+n, reduce length from u1 to u2 by n " 
 ; 
\ XT_SLEEP
: sleep 
 ." (mode -- ) " 
 ."  put the controller into the specified sleep mode " 
 ; 
\ XT_SLITERAL
: (sliteral) 
 ." ; System " 
 ."  " 
 ; 
\ XT_SOURCE
: source 
 ." (-- addr n ) " 
 ."  address and current length of the input buffer " 
 ; 
\ XT_SP
: sp 
 ." (-- addr) " 
 ."  address of user variable to store top-of-stack for inactive tasks " 
 ; 
\ XT_SP0
: sp0 
 ." (-- addr) " 
 ."  start address of the data stack " 
 ; 
\ XT_SPACE
: space 
 ." (-- ) " 
 ."  emits a space (bl) " 
 ; 
\ XT_SPACES
: spaces 
 ." (n -- ) " 
 ."  emits n space(s) (bl) " 
 ; 
\ XT_SPIRW
: spirw 
 ." (txbyte -- rxbyte) " 
 ."  SPI exchange of 1 byte " 
 ; 
\ XT_SP_FETCH
: sp@ 
 ." (-- addr ) " 
 ."  current data stack pointer " 
 ; 
\ XT_SP_STORE
: sp! 
 ." (addr -- i*x) " 
 ."  set data stack pointer to addr " 
 ; 
\ XT_STAR
: * 
 ." (n1 n2 -- n3 ) " 
 ."  multiply routine " 
 ; 
\ XT_STARSLASH
: */ 
 ." (n1 n2 n3 -- n4) " 
 ."  signed multiply and division with double precision intermediate " 
 ; 
\ XT_STARSLASHMOD
: */mod 
 ." (n1 n2 n3 -- rem quot) " 
 ."  signed multiply n1 * n2 and division  with n3 with double precision i " 
 ; 
\ XT_STATE
: state 
 ." (-- addr ) " 
 ."  system state " 
 ; 
\ XT_STORE
: ! 
 ." (n addr -- ) " 
 ."  write 16bit to RAM memory, low byte first " 
 ; 
\ XT_STOREE
: !e 
 ." (n e-addr -- ) " 
 ."  write to eeprom address " 
 ; 
\ XT_STOREENVM
: !e 
 ." (n e-addr -- ) " 
 ."  write to eeprom address using nvm (atxmega) " 
 ; 
\ XT_STOREI
: !i 
 ." (n addr -- ) " 
 ."  Deferred action for flash write of a single cell " 
 ; 
\ XT_SWAP
: swap 
 ." (n1 n2 -- n2 n1) " 
 ."  swaps the two top level stack cells " 
 ; 
\ XT_THROW
: throw 
 ." (n -- ) " 
 ."  throw an exception " 
 ; 
\ XT_TIB
: tib 
 ." (-- addr ) " 
 ."  terminal input buffer address " 
 ; 
\ XT_TICK
: ' 
 ." ("<spaces>name" -- XT ) " 
 ."  search dictionary for name, returns XT or throw an exception -13 " 
 ; 
\ XT_TO
: to 
 ." (n <name> -- ) " 
 ."  store the TOS to the named value (eeprom cell) " 
 ; 
\ XT_TOUSART
: >usart 
 ." (-- ) " 
 ."  initialize the user area to use the system terminal for IO " 
 ; 
\ XT_TO_A
: >a 
 ." (n -- ) " 
 ."  Write to A register (Extended VM) " 
 ; 
\ XT_TO_B
: >b 
 ." (n -- ) " 
 ."  Write to B register (Extended VM) " 
 ; 
\ XT_TO_NUMBER
: >number 
 ." (ud1 c-addr1 u1 -- ud2 c-addr2 u2 ) " 
 ."  convert a string to a number  c-addr2/u2 is the unconverted string " 
 ; 
\ XT_TRUE
: true 
 ." (-- -1 ) " 
 ."  leaves the value -1 (true) on TOS " 
 ; 
\ XT_TURNKEY
: turnkey 
 ." (-- n*y ) " 
 ."  Deferred action during startup/reset " 
 ; 
\ XT_TX
: tx 
 ." (c -- ) " 
 ."  put 1 character into output queue, wait if needed, enable UDRIE inter " 
 ; 
\ XT_TX
: tx 
 ." (c -- ) " 
 ."  put 1 character into output queue, wait if needed, enable UDRIE inter " 
 ; 
\ XT_TX
: tx 
 ." (c -- ) " 
 ."  put 1 character into output queue, wait if needed, enable UDRIE inter " 
 ; 
\ XT_TXQ
: tx? 
 ." (-- f) " 
 ."  check if a character can be appended to output queue. " 
 ; 
\ XT_TXQ
: tx? 
 ." (-- f) " 
 ."  check if a character can be appended to output queue. " 
 ; 
\ XT_TYPE
: type 
 ." (addr n -- ) " 
 ."  print a RAM based string " 
 ; 
\ XT_UDDOT
: ud. 
 ." (ud1 w -- ) " 
 ."  double cell output " 
 ; 
\ XT_UDDOTR
: ud.r 
 ." (ud w -- ) " 
 ."  double cell output " 
 ; 
\ XT_UDOT
: u. 
 ." (ud1 -- ) " 
 ."  double cell output " 
 ; 
\ XT_UDOTR
: u.r 
 ." (ud w -- ) " 
 ."  double cell output " 
 ; 
\ XT_UDSLASHMOD
: ud/mod 
 ." (d1 n -- rem ud2 ) " 
 ."  unsigned double cell division with remainder " 
 ; 
\ XT_UGREATER
: u> 
 ." (u1 u2 -- flag ) " 
 ."  true if u1 > u2 (unsigned) " 
 ; 
\ XT_ULESS
: u< 
 ." (u1 u2 -- flasg) " 
 ."  true if u1 < u2 (unsigned) " 
 ; 
\ XT_UMSLASHMOD
: um/mod 
 ." (ud u2 -- rem quot) " 
 ."  unsigned division ud / u2 with remainder " 
 ; 
\ XT_UMSTAR
: um* 
 ." (u1 u2 -- d) " 
 ."  multiply 2 unsigned cells to a double cell " 
 ; 
\ XT_UNUSED
: unused 
 ." (-- n ) " 
 ."  number of unused dictionary cells " 
 ; 
\ XT_UP_FETCH
: up@ 
 ." (-- addr ) " 
 ."  get user area pointer " 
 ; 
\ XT_UP_STORE
: up! 
 ." (addr -- ) " 
 ."  set user area pointer " 
 ; 
\ XT_USART
: +usart 
 ." (-- ) " 
 ."  initialize usart " 
 ; 
\ XT_USART
: +usart 
 ." (-- ) " 
 ."  initialize usart " 
 ; 
\ XT_USER
: user 
 ." (n cchar -- ) " 
 ."  create a dictionary entry for a user variable at offset n " 
 ; 
\ XT_USLASHMOD
: u/mod 
 ." (u1 u2 -- rem quot) " 
 ."  unsigned division with remainder " 
 ; 
\ XT_UZERODOTR
: u0.r 
 ." (ud n -- ) " 
 ."  Print n digits, fill in preceeding zeros if needed " 
 ; 
\ XT_VALUE
: value 
 ." (n <name> -- ) " 
 ."  create a dictionary entry for a value and allocate 1 cell in EEPROM. " 
 ; 
\ XT_VARIABLE
: variable 
 ." (cchar -- ) " 
 ."  create an dictionary entry for a variable and allocate 1 cell RAM spa " 
 ; 
\ XT_VER
: ver 
 ." (-- ) " 
 ."  print the version string " 
 ; 
\ XT_WDR
: wdr 
 ." (-- ) " 
 ."  calls the MCU watch dog reset instruction " 
 ; 
\ XT_WITHIN
: within 
 ." (n min max -- f) " 
 ."  check if n is within min..max " 
 ; 
\ XT_WORD
: word 
 ." (c -- addr ) " 
 ."  skip leading delimiter character and parse SOURCE until the next deli " 
 ; 
\ XT_WORDLIST
: wordlist 
 ." (-- wid ) " 
 ."  create a new, empty wordlist " 
 ; 
\ XT_WORDS
: words 
 ." (-- ) " 
 ."  prints a list of all (visible) words in the dictionary " 
 ; 
\ XT_XOR
: xor 
 ." (n1 n2 -- n3) " 
 ."  exclusive or " 
 ; 
\ XT_ZERO
: 0 
 ." (-- 0 ) " 
 ."  place a value 0 on TOS " 
 ; 


set-current
