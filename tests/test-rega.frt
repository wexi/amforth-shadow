\ #requires tester-amforth.frt

TESTING VM Register A
hex

\ ------------------------------------------------------------------------
TESTING basic assumtions

variable atest 10 allot
atest >a

0 constant false
-1 constant true

$55aa constant pattern


{ a> atest = -> true }
{ pattern a! -> }
\  address must not change
{ a> atest = -> true }
{ a@ pattern = -> true }
\  address must not change
{ a> atest = -> true }

TESTING address changes.
{ pattern a!+ -> }
\  address must increase by 1 cell
{ a> atest cell+ = -> true }

{ pattern a!- -> }
\  address must decrease by 1 cell
{ a> atest = -> true }

{ a@+ pattern = -> true }
\  address must increase by 1 cell
{ a> atest cell+ = -> true }

{ a@- pattern = -> true }
\  address must decrease by 1 cell
{ a> atest = -> true }
