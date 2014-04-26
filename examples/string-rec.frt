' noop 
' sliteral 
:noname -48 throw ; recognizer: r:string

: rec:string ( addr len -- )
  over c@ [char] " <> if 2drop r:fail exit then
  negate 1+ >in +! drop \ reset parse area to SOURCE
  [char] " parse  \ get trailing delimiter
  -1 /string
  r:string
;

' rec:string place-rec
