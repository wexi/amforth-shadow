\ tracer Emma Ledwidge's and Gerry
\ flag to dynamically turn trace output
\ on and off
variable tracing?
: trace:on -1 tracing? ! ;
: trace:off 0 tracing? ! ;

: tracer tracing? @ if cr itype space .s else 2drop then ; 

: : >in @ >r : r> >in ! 
    parse-name postpone sliteral postpone tracer
;

