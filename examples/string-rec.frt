
\ use " as string delimiters. Everything
\ between two " is a string. It replaces
\ the forth command s" completly
\ instead of s" foo" use "foo". The space
\ after s" is no longer needed, instead it
\ a part of the string. s" foo" and " foo"
\ differ with the leading space in the latter

\ strings live as long as the SOURCE is
\ unchanged! Compilation is done to the
\ flash if called in compile state.
\ postponing a compiled string is not yet
\ supported.

\ #require recognizer.frt

' noop 
' sliteral
:noname -48 throw ; recognizer: r:string

: rec:string ( addr len -- addr' len' r:string | r:fail )
  over c@ [char] " <> if 2drop r:fail exit then
  negate 1+ >in +! drop \ reset parse area to SOURCE
  [char] " parse  \ get trailing delimiter
  -1 /string
  r:string
;

' rec:string get-recognizers 1+ set-recognizers
