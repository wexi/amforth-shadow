\ SYNONYM <newname> <oldname>

\
\ does not check for reference to itself
\
: synonym 
    create immediate ' ,
  does>
    @i state @ if , else execute then
;