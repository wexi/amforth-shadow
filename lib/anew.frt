\ POSSIBLY  ( "name" -- )
\   Execute _name_ if it exists; otherwise, do nothing.
\   Useful implementation factor of `ANEW`.

\ ANEW  ( "name" -- )
\   Compiler directive used in the form: `ANEW _name_`.
\   If the word _name_ already exists, it and all
\   subsequent words are forgotten from the current
\   dictionary, and then a `MARKER` word _name_ is
\   created that does nothing. This is usually placed
\   at the start of a file. When the code is reloaded,
\   any prior version is automatically pruned from the
\   dictionary.
\
\   Executing _name_ will also cause it to be forgotten,
\   since it is a `MARKER` word.
\
\   Useful implementation factor of `EMPTY`.

: possibly  ( "name" -- )
   parse-name find-name ?dup and if execute  then ;

: anew  ( "name" -- )  >in @  possibly  >in !  marker ;

