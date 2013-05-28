\ anonymous definitions in a definition

: if-else ( ... f xt1 xt2 -- ... )
\ Postscript-style if-else
    rot if
       drop
    else
       nip
    then
    execute ;

: test ( f -- )
    [: ." true" ;]
    [: ." false" ;]
    if-else ;
   
1 test cr \ writes "true"
0 test cr \ writes "false"

