\ MMC+SD card - Lubos Pekny, www.forth.cz
\ Library for amforth 3.0, mFC modification
\ Max. 4GB no SDHC, access thru buffer 512B or short block or direct

\ V.1.0, 16.07.2009, tested on atmega32, amforth30mFC12.zip
\ - used SPI (MOSI, MISO, SCK, SS)
\ mmc_init, mmc_CID, mmc_CSD, mmc_read, mmc_mread, mmc_write,
\ mmc_blk@, mmc_blk!, mmc_c@, mmc_c!, mmc_end?, mmc_end!

hex

\ ----- Test -----

mmc_init .             \ init card
mmc_CID . 10 0 mmc.    \ view 16B of mmc_buf
mmc_CSD . 10 0 mmc.


\ read
200 1234 0 mmc_read .  \ read 512B from sect. 0:1234
200 0 mmc.             \ view buf    


\ open+read, short block
100 1234 0 mmc_read .      \ open sector 0:1234, read 256B
mmc_buf 100 + 100 mmc_blk@ \ read 256B, buf+offset 256B
200 0 mmc.                 \ view buf


\ open, short block
0 1234 0 mmc_read .        \ open sector 0:1234
mmc_buf 100 + 100 mmc_blk@ \ read 256B, buf+offset 256B
mmc_buf       100 mmc_blk@ \ read 256B, switched 256B
200 0 mmc.                 \ view buf


\ open, direct byte access
0 1234 0 mmc_read .    \ open sector 0:1234
+mmc
mmc_c@ . mmc_c@ .      \ read 2 bytes from sector
1FE mmc_dummy          \ read other 510 bytes
1FE mmc_#buf +!        \ update counter
mmc_end? .             \ if end of sector then crc dummy
-mmc


\ multiread
200 1234 0 mmc_mread . \ open,read 512B from sect. 1234
200 0 mmc.             \ view buf
+mmc
200 0 mmc_(read) .     \ read 512B from sect. 1235
200 0 mmc.             \ view buf
200 0 mmc_(read) .     \ read 512B from sect. 1236
200 0 mmc.             \ view buf
mmc_rstop .            \ stop and -mmc         


\ write
200 1234 0 mmc_read .
200 0 mmc.
ABBA mmc_buf !         \ change 2 bytes in buf
200 1234 0 mmc_write . \ write 512B to addr. 1234
200 1234 0 mmc_read .
200 0 mmc.


\ open+write, short block
ACCA mmc_buf !         \ change 2 bytes in buf
ADDA mmc_buf 100 + !   \ change 2 bytes in buf
100 1234 0 mmc_write . \ open sector 1234, write 256B
mmc_buf 100 + 100 mmc_blk! . \ write 256B, buf+offset 256B
200 1234 0 mmc_read .
200 0 mmc.


\ open, direct byte access
0 1234 0 mmc_write .
+mmc 
AE mmc_c! EA mmc_c!    \ write 2 bytes to sector
1FE mmc_dummy          \ write FF, 510x
1FE mmc_#buf +!        \ update counter
mmc_end! .             \ if end then wait while busy
-mmc
200 1234 0 mmc_read .
200 0 mmc.


\ multiwrite
ABCD mmc_buf !
200 1234 0 mmc_mwrite . \ open,write 512B to sect. 1234
+mmc
200 0 mmc_(mwrite) .    \ write 512B to sect. 1235
200 0 mmc_(mwrite) .    \ write 512B to sect. 1236
mmc_wstop .             \ stop and -mmc 

\ end of file
