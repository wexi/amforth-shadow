

' noop ' sliteral ' sliteral recognizer: r:string

: rec:string ( addr len -- )
  over c@ [char] " <> if 2drop r:fail exit then
  negate 1+ >in +! drop \ reset parse area to SOURCE
  [char] " parse  \ get trailing delimiter
  -1 /string \ compensate the +1 above
  r:string
;

' rec:string place-rec
