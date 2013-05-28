
\  Date of Easter According to Knuth
\  Donald E. Knuth, _The Art of Computer Programming_, 1.3.2 Exercise
\  14-15.
\  [Commentary by Knuth, Forth by Wil Baden. This is not well-suited
\  for Forth, but there's no advantage in purifying it.]
\  The following algorithm, due to the Neapolitan astronomer Aloysius
\  Lilius and the German Jesuit mathematician Christopher Clavius in
\  the late 16th century, is used by most Western churches to
\  determine the date of Easter Sunday for any year after 1582.

\          Counters.

\  Y
\     Year.
\  G
\     Golden number.
\  C
\     Century.
\  X
\     Century leap year adjustment.
\  Z
\     Moon's orbit adjustment.
\  D
\     Sunday date.
\  E
\     Epact.
\  N
\     Day of month.

variable easter.y  \  Year
variable easter.g  \  Golden number
variable easter.c  \  Century
variable easter.x  \  Century leap year adjustment
variable easter.z  \  Moon's orbit adjustment
variable easter.d  \  Sunday date
variable easter.e  \  Epact
variable easter.n  \  Day of month

\  EASTER            ( yyyyy -- dd mm yyyyy )
\     Compute date of Easter for year _yyyyy_.

: easter            ( yyyyy -- dd mm yyyyy )
    easter.y !                      ( )
    \  E1. Golden number.
    \  _G_ is the so-called "golden number" of the year in the 
    \  19-year Metonic cycle. 

    easter.y @  19 mod  1+  easter.g !

    \  E2. Century.
    \  When _Y_ is not a multiple of 100, _C_ is the century number; 
    \  for example, 1984 is in the twentieth century. 

    easter.y @  100 /  1+  easter.c !

    \  E3. Corrections.
    \  Here _X_ is the number of years, such as 1900, in which leap 
    \  year was dropped in order to keep in step with the sun; _Z_ is 
    \  a special correction designed to synchronize Easter with the 
    \  moon's orbit. 

    easter.c @  3 4 */  12 -  easter.x !
    easter.c @  8 *  5 +  25 /  5 -  easter.z !

    \  E4. Find Sunday.
    \  March ((-_D_) mod 7) actually will be a Sunday.

    easter.y @  5 4 */  easter.x @ -  10 -  easter.d !

    \  E5. Epact.
    \  This number _E_ is the _epact_, which specifies when a full
    \  moon occurs.

    easter.g @  11 *  20 +  easter.z @ +  easter.x @ -  30 mod
        dup 0< if  30 +  then
        easter.e !
    easter.e @  25 =  dup    if drop easter.g @ 11 > then
                      dup 0= if drop easter.e @ 24 = then
        if  1 easter.e +!  then

    \  E6. Find full moon.
    \  Easter is supposedly the first Sunday following the first full 
    \  moon that occurs on or after March 21.  Actually perturbations 
    \  in the moon's orbit do not make this strictly true, but we are 
    \  concerned here with the "calendar moon" rather than the actual 
    \  moon.  The _N_th of March is a calendar full moon. 

    44  easter.e @ -  easter.n !
    easter.n @  21 < if  30 easter.n +!  then

    \  E7. Advance to Sunday.

    easter.n @  7 +
    easter.d @  easter.n @ +  7 mod  -
    easter.n !

    \  E8.  Get month.

    easter.n @  31 > if
        easter.n @  31 -  4  easter.y @
    else
        easter.n @  3  easter.y @
    then ;

\  .EASTER             ( yyyyy -- )
\     Display date of Easter for year _yyyyy_.

: .easter      ( yyyyy -- )
    easter  .  4 = if  ." April"  else  ." March"  then  3 .R ;

\\  *************************  End of Easter  *************************
