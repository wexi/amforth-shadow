decimal
marker cleaneth

#include arp.frt

#include icmp.frt

#include tcp.frt

\ *** Packet Analyse ********************

marker cleanethdec

: tcp>?
     eth_buffer 23 + c@ &06 = if
     eth_buffer 36 + @ >< &23 = \ Port 23 ?
     if tcp> 
     then ;

: icmp>?
     eth_buffer 23 + c@ $01 =
     eth_buffer 34 + c@ $08 =
     and 
       if ping_reply 
       else tcp>?
       then ;

: ip>?
     eth_buffer 13 + c@ $00 =        \ Type:IP
     eth_buffer 14 + c@ $45 =        \ only simple IP packets
     eth_buffer 30 + c@ Myip1 =      \ Ip packet for us
     eth_buffer 31 + c@ Myip2 =
     eth_buffer 32 + c@ Myip3 =
     eth_buffer 33 + c@ Myip4 =
     and and and and and
     if
       icmp>?
     then
;


marker cleanethint

\ *** ENC-RX-Int ************************

: enc_rx1
  pkt> 1 = if eth_buffer 12 + c@ $08 = if
  arp>? ip>? then
 ;

: enc-int-isr
 enc_rx1
 EIFR c@ $04 or EIFR c! ;

: +encint
 ['] enc-int-isr INT2Addr int!
 EICRA c@ $00 or EICRA c!
 EIFR c@ $04 or EIFR c!
 EIMSK c@ $04 or EIMSK c! ;

 : -encint
 EIFR c@ $04 or EIFR c!
 EIMSK c@ $04 invert and EIMSK c!
 EICRA c@ $10 invert and EICRA c! ;

\ *** Telnet-Emit ***********************

: tn_emit?  \ TX-Buffer bereit ?
 65 tn_txpnt @ > \ Pointer < 65 ?
;

: tn_emit ( c -- ) \ Zeichen in TX-Buffer
 begin
 pause
 tn_emit? ( c f -- )
 until
 tn_tx_buffer tn_txpnt @ + c! ( c addr )
 tn_txpnt @ 1+ tn_txpnt !  \ Pointer +1
 ;

\ ***************************************

variable tmpemit
variable tmpemit?

: +tnemit
   0 tn_txpnt !
   ['] emit defer@ tmpemit !
   ['] emit? defer@ tmpemit? !
   ['] tn_emit? is emit?
   ['] tn_emit is emit
;

: -tnemit
 tmpemit? @ is emit?
 tmpemit @ is emit ;


\ *** Telnet-Key ************************

: tn_key?
  tn_rxpnt @ ;

: tn_key
 begin
 pause
 tn_key?
 until
 tn_rxpnt @ dup 0 > 
 if 1- tn_rxpnt !
 tn_rx_buffer c@ 
 tn_rx_buffer 1+ \ from
 tn_rx_buffer    \ to
 tn_rxpnt @      \ count
 cmove
 then
 ;

variable tmpkey
variable tmpkey?

: +tnkey
 0 tn_rxpnt !
 ['] key defer@ tmpkey !
 ['] key? defer@ tmpkey? !
 ['] tn_key? is key?
 ['] tn_key is key
;

: -tnkey
 tmpkey? @ is key?
 tmpkey @ is key
;

variable tnredir 0 tnredir !

: tnredir? tnredir @ ;

: +tnredir
 tnredir?
 not if  \ nicht umgeleitet?
   -debug
   +tnkey
   +tnemit
   1 tnredir !
  then
;

: -tnredir
 tnredir?
 if  \  umgeleitet?
   -tnkey
   -tnemit
   0 tnredir !
  ." Beende Telnet Server ! "
 then
;

\ *** Timer0-Int ************************

: +timer0
1 TIMSK0 c! ;

: -timer0
0 TIMSK0 c! ;

variable tick

: timer0-int-isr
1 tick +!          \ tick inc
tick @ 10 =
if     \ tick 10 ?
  tcp?
  if        \ Verbindung aktiv?
 \  +tnredir
    tn_txpnt @ 0 >
    if   \ Daten zu senden ?
      ack>? if   \ Daten quittiert ?
      >ack_psh            \ Daten senden
      then
    then
 \ else
\   -tnredir
  then
    0 tick !  \ tick 0
then
;


: timer0-init
5 TCCR0B c!
['] timer0-int-isr TIMER0_OVFAddr int!
0 tick ! ;

\ ***************************************

: tnvarinit
 0 debug !
 0 tcpcon !
 0 tn_rxpnt !
 0 ack_rec !
 0 tn_txpnt !
 0 tn_rtxpnt !
 0 rtcnt !
 0 tstat !
 0 tnredir !
;


: +telnet
 init
 timer0-init
 tnvarinit
 +encint
 +timer0
;

: -telnet
 -timer0
 -encint
 tnvarinit
;


