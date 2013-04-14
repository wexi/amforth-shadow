hex
\ decompiler

\ marker --see--

: .name ( nfa -- ) \ Namensfeld ausgeben
  icount $ff and dup 15 < if itype else drop drop ." :noname" then ;

' exit       constant exitxt  \ Adresse des xt zu "exit" speichern
' cr @i      constant docolxt \ Adresse des Forth-DOCOLON VM Interpreter
' cr 1+ @i   constant litxt   \ Adresse des xt zu "(lit)" speichern
' bl @i      constant dovarxt \ Adresse des xt zu "VARIABLE"
' base @i    constant douser  \ Adresse des xt zu "USER"
' emit @i    constant dodefer \
' s" 9 + @i  constant doslit  \ Adresse des xt zu "(slit)" speichern
' if 2 + @i    constant do0branch \ Adresse des xt zu "0branch" speichern
' else 2 + @i  constant dobranch  \ Adresse des xt zu "branch" speichern
' loop 2 + @i  constant doloop    \ Adresse des xt zu "(loop)" speichern
' +loop 2 + @i constant do+loop   \ Adresse des xt zu "(+loop)" speichern
' do 2 + @i    constant dodo      \ Adresse des xt zu "(do)" speichern
' ?do 2 + @i   constant doqdo     \ Adresse des xt zu "(?do)" speichern

: see ( "<spaces>name" -- ) \ decompiler
     parse-name find-name if
     dup @i over - 1  = if dup >name .name space ." is a primitive" then
     dup @i dovarxt   = if ." variable " 1+ dup @i . then
     dup @i douser    = if ." user " 1+ dup @i . then
     dup @i dodefer   = if ." defer " then
     dup @i docolxt   = if
       [char] : emit space dup >name .name
       begin 
          cr [char] [ emit space dup u. [char] ] emit space 2 spaces 
          1+ dup @i dup 4 .r space  ( get next xt ) 
          dup litxt     = if drop 1+ dup @i .   0 then 
          dup exitxt    = if drop [char] ; emit 1 then
          dup doslit    = if 
                  drop [char] . emit [char] " emit space 1+ dup .name [char] " emit
                  dup @i $FF and 2/ 2 + + 0 
              then
          dup do0branch = if drop ." 0branch -> " 1+ dup @i 1- u. 0 then
          dup dobranch  = if drop  ." branch -> " 1+ dup @i 1- u. 0 then
          dup dodo      = if drop ." do -> "      1+ dup @i 1- u. 0 then
          dup doqdo     = if drop ." ?do -> "     1+ dup @i 1- u. 0 then
          dup doloop    = if drop ." loop -> "    1+ dup @i 1- u. 0 then
          dup do+loop   = if drop ." +loop -> "   1+ dup @i 1- u. 0 then
          dup 1 >      if dup >name .name then
              1 = 
        until then
     drop 
     else
      ." not found"
    then
;

\ Beispiel:
\ ' see see
