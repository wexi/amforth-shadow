: forward:
    dp 
    create
    ,
    \ save more information?
    does>
    \ get the current name and
    \ lookup the dictionary. get the
    \ XT and replace the dictionary entry in the
    \ *caller* with it. After that execute it too
    \ next code is executed only once if successful
    dup 1- swap @i here iplace here count ( copy to temporary ram)
    find-name if \ unless some wordlist voodoo is in place...
      swap over = abort" found only forward declaration."
      dup r@ 1- !i execute
    else
      \ can only happen if search wordlist has changed
      true abort" unresolved forward declaration"
    then
;



