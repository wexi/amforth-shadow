

\ some values

: Evalue ( n -- )
    (value)
    ehere ,
    ['] Edefer@ ,
    ['] Edefer! ,
    ehere dup cell+ to ehere !e
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
