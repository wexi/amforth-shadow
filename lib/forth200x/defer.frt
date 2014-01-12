\ some defers

: Edefer ( -- )
    (defer)
    edp ,
    ['] Edefer@ ,
    ['] Edefer! ,
    edp dup cell+ to edp 
    \ place a noop as default action
    ['] noop swap !e
;

: Udefer ( offs -- )
    (defer)
    dup ,
    ['] Udefer@ ,
    ['] Udefer! ,
    \ place a noop as default action
    ['] noop up@ + swap !
;

: Rdefer ( -- )
    (defer)
    here ,
    ['] Rdefer@ ,
    ['] Rdefer! ,
    \ place a noop as default action
    ['] noop here ! 2 allot
;
