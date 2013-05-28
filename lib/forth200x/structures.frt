\ structures according to http://www.forth200x.org/structures.html
\ and http://www.forth200x.org/structures2.html
\ the reference implementation does not work since amforth uses
\ not the unified memory model for dictionary and data

: +field: ( n1 "<spaces>name" -- n2 )
    create over , +
    does> @i +
;

: begin-structure 
    create dp 0 -1 , \ -1 saves a flash erase when end-structure is executed
  does>
    @i
;

: end-structure
    swap !i
;

: cfield: 1 +field: ;
:  field: 2 +field: ;
\ 2field is not standard, but why not?
: 2field: 4 +field: ;
