\ *** ICMP-Routinen *********************

marker cleanicmp

\ Set IP ID Field
variable ipid $0010 ipid ! \ Start IP-ID

: ip_id_set 
 ipid @ >< dup n>cc eth_buffer 18 + c! eth_buffer 19 + c!
  >< 1 + ipid ! ;

\ swap IP
: ip_swap
 eth_buffer 26 + eth_buffer 30 + 4 cmove 
 eth_buffer 26 + Myip1 over c! 1+ Myip2 over c! 1+
 Myip3 over c! 1+ Myip4 over c! drop ;

: imcp_checksum
 over - swap eth_buffer + swap
 0 0 2swap 0 do dup >r @ >< 0 d+ r> 2 + 2 +loop drop
 0 swap 0 d+ + invert >< swap eth_buffer + ! ;

\ IP-Header_Checksumme berechnen 
: hdr_checksum
 0 eth_buffer 24 + c! 0 eth_buffer 25 + c!
 &24 &14 &34
 over - swap eth_buffer + swap
 0 0 2swap 0 do dup >r @ >< 0 d+ r> 2 + 2 +loop drop
 0 swap 0 d+ + invert >< swap eth_buffer + ! ;

\ TCP Checksumme berechnen
: tcp_checksum
 0 eth_buffer 50 + c! 0 eth_buffer 51 + c! \ checksumme lÃschen
 0 0 eth_buffer 26 + 8 0 do
 dup >r @ >< 0 d+ r> 2 + 2 +loop drop
 eth_buffer 23 + c@  0 d+ eth_buffer 16 + @ >< 0 d+ 
 eth_buffer 14 + c@ $0f and 4 * 0 d- eth_buffer 34 + 
 eth_buffer 16 + @ >< 20 - 0 
 do dup >r @ >< 0 d+ r> 2 + 2 +loop drop 
 0 swap 0 d+ + invert >< eth_buffer 50 + ! ;

\ ENC PING Reply Packet
: ping_reply ( -- )
 src2dest mymac2arp ip_id_set ip_swap
 0 eth_buffer 24 + c! 0 eth_buffer 25 + c!
 &24 &14 &34 imcp_checksum
 0 eth_buffer 34 + c! 0 eth_buffer 36 + c! 0 eth_buffer 37 + c!
 &36 &34 eth_buffer 16 + @ >< 13 + 
 dup packet_length ! imcp_checksum 
 packet_length @ 1+ packet_length ! >pkt
 ." Send Ping Reply ! " cr
 ;
