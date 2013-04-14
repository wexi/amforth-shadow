\ 2009-12-23  EW  ewlib/1w_ds18s20.fs
\ 2013-01-13  ported to amforth-5.0

\ --- Fam.10 DS18S20 thermometer -----------------------------

\ conversion + warten ist schon rum!
: 1w.rd.T ( addr[8] -- x1=Tl x2=Th x3 .. x9=crc )
  1w.reset drop \ fixme: if ... then
  \ device addressieren
  1w.cmd.matchrom &9 >1w
  1w.cmd.readdata &1 >1w
  &9 <1w
;

\ convert answer to physical units 1/100 C
: ds18s20.decode ( x1 .. x9=crc -- T*100 ok )
  7 0 do drop loop \ ignore crc
  8 lshift +       \ combine T_h T_l
  &100 &2 */       \ scale
  0                \ ok, because we ignore crc
;
: ds18s20.decode.check ( x1 .. x9=crc -- T*100 ok=0 | error=1 )
  7 pick >r 8 pick >r \ save data
  8 1w.crc8.rev? if   \ crc good?
    r> r> 8 lshift +
    &100 &2 */
    0 \ ok
  else
    r> r> drop drop
    1 \ error
  then
;