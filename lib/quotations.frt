\ anonymous definitions in a definition
\ typical usage
\ : foo ... [: some words ;] ... ;
\
\ is equivalent to
\
\ :noname some words ; Constant #temp#
\ : foo ... #temp# ... ;
\

: [: ( -- quotation-sys )
     postpone ahead :noname  ; immediate
    

: ;] ( compile-time: quotation-sys -- ; run-time: -- xt )
    postpone ;
    >r
    postpone then
    r>
    postpone literal 
    ]
; immediate
