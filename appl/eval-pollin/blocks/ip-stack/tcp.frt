\ *** TCP/IP -Routinen ******************

marker cleantcp

variable debug 0 debug !
: +debug 1 debug ! ;
: -debug 0 debug ! ;
: debug? debug @ ;

: ht@ ( addr -- n )
 @ >< ;

: ht! ( n addr -- )
 swap >< swap ! ;

: htd@ ( addr -- d )
 dup 2 + @ >< swap @ >< ;

: htd! ( d addr -- )
 over >< over ! swap drop swap >< swap ! ;


: bu_seqack.
 hex
 ." Bu-Seq: " eth_buffer 40 + @ >< eth_buffer 38 + @ >< 4 ud.r space
 ." Bu-Ack: " eth_buffer 44 + @ >< eth_buffer 42 + @ >< 4 ud.r space
 cr decimal ;

: port_swap
 eth_buffer 34 + @  eth_buffer 36 + @
 eth_buffer 34 + ! eth_buffer 36 + ! ;

variable destseq 2 allot   \ Ziel-Sequenznummer
variable destack 2 allot   \ Ziel-Acknummer

: st_seqack.
 hex
 ." St-Seq: " destseq 2 + @ ><  destseq @ >< 4 ud.r space
 ." ST-Ack: " destack 2 + @ ><  destack @ >< 4 ud.r space
 cr decimal ;

: save_seqack \ SeqAck(Buf) => SeqAck(RAM)
 debug? if bu_seqack. then
 eth_buffer 38 + destseq 4 cmove \ save destseq
 eth_buffer 42 + destack 4 cmove \ save destack
 debug? if ." save_seqack => " then
 debug? if st_seqack. then ;

: load_seqack \ SeqAck(RAM) => SeqAck(Buf)
 debug? if st_seqack. then
 destseq eth_buffer 38 + 4 cmove \ load destseq
 destack eth_buffer 42 + 4 cmove \ load destack
 debug? if ." load_seqack => " then
 debug? if bu_seqack. then ;

: swap_seqack \ SeqAck(Buf) => AckSeq(Buf)
 debug? if bu_seqack. then
 eth_buffer 38 + @ >< eth_buffer 40 + @
 eth_buffer 42 + @ >< eth_buffer 44 + @
 eth_buffer 40 + ! >< eth_buffer 38 + !
 eth_buffer 44 + ! >< eth_buffer 42 + !
 debug? if ." swap_seqack => " then
 debug? if bu_seqack. then ;

: calc_ack+1 \ Ack(Buf)=>Ack+1(Buf)
 debug? if bu_seqack. then
 debug? if ." calc_ack+1 => " then
 eth_buffer 44 + @ >< eth_buffer 42 + @ ><
 1 0 d+
 >< eth_buffer 42 + ! >< eth_buffer 44 + !
 debug? if bu_seqack. then
;

: calc_ack \ Ack(Buf)=>Ack+Data(Buf)
 debug? if st_seqack. then
 eth_buffer 44 + @ >< eth_buffer 42 + @ ><
 eth_buffer 16 + @ >< 
 dup 40 < if drop 40  then 40 - 0 d+
 >< eth_buffer 42 + ! >< eth_buffer 44 + !
 debug? if ." calc_ack => " then
 debug? if bu_seqack. then
;

: >tcp
 hdr_checksum tcp_checksum \ Checksummen berecnen
 >pkt   \ Packet senden
 debug? if ." TCP Packet senden " cr then
;

variable tcpcon 0 tcpcon !    \ Verbindung aktiv

: +tcp 1 tcpcon ! ;
: -tcp 0 tcpcon ! ;
: tcp? tcpcon @ ;

: set_ack $10 eth_buffer 47 + c! ;
: set_ackpsh $18 eth_buffer 47 + c! ;

: sync> \ SYN Request => SYN Reply
 tcp?
 not if        \ Verbindung aktiv?
 debug? if ." sync> empfangen " then 
 ip_id_set \ IPID setzen
\ *** Seq / Ack
 swap_seqack \ SeqAck(Buf) => AckSeq(Buf)
 $0000 eth_buffer 40 + ! $0000 eth_buffer 38 + ! \ Sequ setzen
 calc_ack+1  \ Ack(Buf)=>Ack+1(Buf)
\ *** 
 $12 eth_buffer 47 + c!
 44 >< eth_buffer 16 + !
 $60 eth_buffer 46 + c! 60 packet_length !
 $04 eth_buffer 48 + c! $4c eth_buffer 49 + c!
 $04 eth_buffer 56 + c! $4c eth_buffer 57 + c!
 $00 eth_buffer 58 + c! $00 eth_buffer 59 + c!
 debug? if ." sende ack_sync> " cr then
 >tcp
 then
;

: ack_sync> \ ACK_SYN Request => ACK Reply
 debug? if ." ack_sync> empfangen " then 
 set_ack \ ack Flag stzen
 swap_seqack \ SeqAck(Buf) => AckSeq(Buf)
 62 75 79 3 0 do eth_buffer 54 + i + c! loop
 43 >< eth_buffer 16 + ! 
 eth_buffer 16 + @ >< 14 + packet_length !
 debug? if ." sende >ack " cr then
 >tcp
 +tcp \ set tcp-flag true
;


variable tn_rx_buffer 65 allot  \ tcp RX-Buffer
variable tn_rxpnt 0 tn_rxpnt !  \ tcp RX-Pointer

: tn_rxmove
    eth_buffer 54 +               
    tn_rx_buffer tn_rxpnt @ +     
    eth_buffer 16 + @ >< 40 - dup 
    65 tn_rxpnt @ -                             
    < if                            
      cmove  tn_rxpnt @ eth_buffer 16 + @ >< 40 - + tn_rxpnt !
      debug? if ." Daten empfangen " cr then
      else 0 tn_rxpnt !
      debug? if ." RX-Buffer voll " cr then
    then
;

variable ack_rec 0 ack_rec !  \ ACK erhalten
: ack>? ack_rec @ ;

variable tn_tx_buffer 65 allot  \ tcp TX-Buffer
variable tn_txpnt 0 tn_txpnt !  \ tcp TX-Pointer
variable tn_rtxpnt 0 tn_rtxpnt !  \ tcp RTR TX-Pointer
variable rtcnt 0 rtcnt !        \ Retransmission Z„hler

: >ack_psh? \ sind Daten zu senden? 
  tn_txpnt @
;

: tx_copy \ tx_buffer => eth_data
     tn_tx_buffer       \ from
     eth_buffer 54 +    \ to
     tn_txpnt @         \ count
     dup 1 and if    \ wenn /2
     drop
     $00 tn_tx_buffer tn_txpnt @ + c! ( c addr )
     tn_txpnt @ 1+ tn_txpnt !  \ Pointer +1
     tn_txpnt @         \ count
     then
     cmove       \ kopieren
;

: rtx_copy \ rtx_buffer => eth_data
     tn_tx_buffer       \ from
     eth_buffer 54 +    \ to
     tn_rtxpnt @         \ count
     cmove       \ kopieren

;

: tn_txmove \ tx-buffer => eth_buffer
 debug? if ." Daten kopieren? " then
 ack>? if   \ Daten quittiert ?
 debug? if ." ack? = 1 " then
   tn_txpnt @ tn_rtxpnt ! \ rtr-Pointer setzen
   tn_txpnt @ 0 > if \ Daten zu senden ?
   tx_copy \ tx_buffer => eth_data
\ packetl„nge berechnen
     tn_txpnt @ 40 + >< eth_buffer 16 + ! 
     set_ackpsh  \ ack_psh Flag stezen
     0 tn_txpnt ! \ tx-Pointer zurcksetzen
   debug? if ." Daten senden " then  
   else
   40 >< eth_buffer 16 + ! \ keine Daten
   debug? if ." keine Daten " then
   then
 else   \ Daten nicht quittiert
 debug? if ." ack? = 0 " then
   rtcnt @ 5 > if \ 5 mal gesendet ?
   debug? if ." 5 Retransmissions " then
   40 >< eth_buffer 16 + ! \ keine Daten
   set_ack \ ack Flag setzen
   1 ack_rec !  0 rtcnt !  \ quitieren
   else \ nochmal senden rtr-Pointer
   debug? if ." nochmal senden " then
   rtx_copy \ rtx_buffer => eth_data
\ packetl„nge berechnen
   tn_rtxpnt @ 40 + >< eth_buffer 16 + !
   set_ackpsh \ ack_psh Flag setzen
   rtcnt @ 1+ rtcnt ! 
   then
 then
 debug? if cr then
;

: tcpstart
debug? if    ." sende Vebindunsbest„tigung " cr then
    +tcp \ set tcp-flag true
    set_ackpsh \ ack_psh Flag setzen
    $04 eth_buffer 48 + c! $4c eth_buffer 49 + c!
    $53 eth_buffer 54 + c! $74 eth_buffer 55 + c!
    $61 eth_buffer 56 + c! $72 eth_buffer 57 + c!
    $74 eth_buffer 58 + c! $20 eth_buffer 59 + c!
    $54 eth_buffer 60 + c! $65 eth_buffer 61 + c!
    $6c eth_buffer 62 + c! $6e eth_buffer 63 + c!
    $65 eth_buffer 64 + c! $74 eth_buffer 65 + c!
    $20 eth_buffer 66 + c! $53 eth_buffer 67 + c!
    $65 eth_buffer 68 + c! $72 eth_buffer 69 + c!
    $76 eth_buffer 70 + c! $65 eth_buffer 71 + c!
    $72 eth_buffer 72 + c! $3a eth_buffer 73 + c!
    $0d eth_buffer 74 + c! $0a eth_buffer 75 + c!
    62 >< eth_buffer 16 + !
    eth_buffer 16 + @ >< 14 + packet_length !
;

: ack_psh> \ ACK_PSH Reqeust => ACK/ACK_PSH Reply
 debug? if ." ack_psh> empfangen " cr then 
 ip_id_set
 swap_seqack \ SeqAck(Buf) => AckSeq(Buf)
 calc_ack \ Ack(Buf)=>Ack+Data(Buf)
 tcp?
 not if
    debug? if ." tcpstart  " then 
    tcpstart
 else
    debug? if ." tn_rxmove  " then
   tn_rxmove  \ Daten empfangen   
   tn_txpnt @ 0 >  \ sind Daten zu senden? 
   if
     debug? if ." sende >ack_psh " cr then
     tn_txmove
    debug? if ." sende Best„tigung + Daten " cr then
   else
     debug? if ." sende >ack " cr then
     set_ack
     40 >< eth_buffer 16 + ! 
   then
     eth_buffer 16 + @ >< 14 + packet_length !
    debug? if ." sende Empfangsbest„tigung " cr then
 then
 >tcp
 swap_seqack \ SeqAck(Buf) => AckSeq(Buf)
 save_seqack \ SeqAck(Buf) => SeqAck(RAM)
 1 ack_rec !  0 rtcnt !
;

variable destmac 4 allot   \ Ziel MAC
variable destip 2 allot    \ Ziel IP
variable destport          \ Ziel Port

: save_dest \ Ziel MAC, IP, Port speichern
 eth_buffer 6 + destmac 6 cmove \ save destmac
 eth_buffer 26 + destip 4 cmove \ save destip
 eth_buffer 34 + destport 2 cmove \ save destport
;


: >ack_psh \ => ACK_PSH Packet
 debug? if ." sende  Daten >ack_psh "  cr then
\ ack>? if   \ Daten quittiert ?
\ Zieladresse  MAC 0-5
 destmac eth_buffer 6 cmove \ save destmac
\ Quelladresse MAC (eigene) +6-11
 eth_buffer 6 +
 Mymac1 over c! 1+
 Mymac2 over c! 1+ 
 Mymac3 over c! 1+
 Mymac4 over c! 1+
 Mymac5 over c! 1+
 Mymac6 over c! 1+
\ Typfeld (IP) 0x0800 12-13
 $08 over c! 1+
 $00 over c! 1+
\ Header/Services 0x4500 14-15
 $45 over c! 1+ 
 $00 over c! drop
\ ipid + 1 (+18-19)
 ip_id_set
\ Proto $40 $00 $80 $06 (+20-23)
 $40 eth_buffer 20 + c!
 $00 eth_buffer 21 + c!
 $80 eth_buffer 22 + c!
 $06 eth_buffer 23 + c!
\ IP-Absender: eigene IP (+26-29)
 eth_buffer 26 +
 Myip1 over c! 1+
 Myip2 over c! 1+
 Myip3 over c! 1+
 Myip4 over c! drop
\ destip (+30-33)
 destip eth_buffer 30 + 4 cmove \ save destip
\ src port (+34-35)
 &23 >< eth_buffer 34 + !
\ dest port (+36-37)
 destport @ eth_buffer 36 + !
\ tx-Buffer kopieren
 tn_txmove 
\ Seq_Ack berechnen
 load_seqack \ SeqAck(RAM) => SeqAck(Buf)
 swap_seqack \ SeqAck(Buf) => AckSeq(Buf)
\
 $50 eth_buffer 46 + c!
 $18 eth_buffer 47 + c!
\ window
 $fe eth_buffer 48 + c!
 $14 eth_buffer 49 + c!
\ packetlength
 eth_buffer 16 + @ >< 14 + packet_length !
 >tcp
 0 ack_rec !                  \ ack anfordern
\ then
 ;

: ack> \ ACK Request
 debug? if ." ack> empfangen " cr then
 1 ack_rec !  0 rtcnt !              \ ack setzen
;

: ack_fin> \ ACK_FIN Request => ACK_FIN Reply
 debug? if ." ack_fin> empfangen " then 
 $11 eth_buffer 47 + c!
 48 >< eth_buffer 16 + ! 62 packet_length !
 debug? if ." sende ack_fin> " cr then
 >tcp
 -tcp
 debug? if ." Verbindung getrennt " cr then
 ;

\ *** tcp-Routinen *******************

variable tstat 0 tstat !        \ tcp Status

: tcp>
 debug? if cr ." tcp Packet empfangen " cr then
 save_dest    \ Ziel MAC, IP, Port speichern
 save_seqack  \ SeqAck(Buf) => AckSeq(Buf)
 ip_swap      \ swap IP 
 port_swap    \ swap Port
 src2dest     \ swap MAC
 mymac2arp    \ eigne MAC eintragen
 eth_buffer 47 + c@ tstat !  \ TCP-Status speichern
 tstat @ $02 = if sync>      then   \ sync?
 tstat @ $10 = if ack>       then   \ sync?
 tstat @ $12 = if ack_sync>  then   \ ack_sync?
 tstat @ $18 = if ack_psh>   then   \ ack_psh?
 tstat @ $11 = if ack_fin>   then   \ ack_fin?
;








