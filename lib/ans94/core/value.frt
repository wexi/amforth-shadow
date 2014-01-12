

\ some values

: Evalue ( n -- )
    (value)
    edp ,
    ['] Edefer@ ,
    ['] Edefer! ,
    edp dup cell+ to edp !e
;

: Uvalue ( n offs -- )
    (value)
    dup ,
    ['] Udefer@ ,
    ['] Udefer! ,
    up@ + !
;

: Rvalue ( n -- )
    (value)
    here ,
    ['] Rdefer@ ,
    ['] Rdefer! ,
    here ! 2 allot
;
