\ *** ARP-Routinen **********************

marker cleanarp

\ move hardware source address to destination address
: src2dest eth_buffer 6 + eth_buffer 6  cmove> ;

\ eigne IP in arp eintragen
: mymac2arp eth_buffer 6 +
 Mymac1 over c! 1+ Mymac2 over c! 1+ Mymac3 over c! 1+
 Mymac4 over c! 1+ Mymac5 over c! 1+ Mymac6 over c! drop ;

\ Copy target MAC in ARP packet
: tmac2arp eth_buffer eth_buffer 32 + 6 cmove ;

\ Set target IP in ARP packet
: tip2arp eth_buffer 28 + eth_buffer 38 + 4 cmove ;

\ Copy source MAC to ARP
: smac2arp eth_buffer 6 + eth_buffer 22 + 6 cmove ;

 \ eigne IP in arp eintragen
: myip2arp eth_buffer 28 +
 Myip1 over c! 1+ Myip2 over c! 1+
 Myip3 over c! 1+ Myip4 over c! drop ;

 \ ENC ARP Reply Packet
: arp_reply ( -- )
 src2dest mymac2arp tmac2arp tip2arp smac2arp myip2arp 
 $02 eth_buffer 21 + c! &42 packet_length ! >pkt
\ ." Send ARP Reply ! " cr
 ;

: arp>?
      eth_buffer 13 + c@ $06 =       \ Type:ARP
      eth_buffer 20 + c@ $00 =       \ ARP request
      eth_buffer 21 + c@ $01 =       \ ARP request
      eth_buffer 38 + c@ Myip1 =     \ ARP for us
      eth_buffer 39 + c@ Myip2 =
      eth_buffer 40 + c@ Myip3 =
      eth_buffer 41 + c@ Myip4 =
      and and and and and and
       if
        arp_reply
      then ;

