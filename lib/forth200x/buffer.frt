\ allocate a buffer and give it a name in the dictionary
\ see http://www.forth200x.org/buffer.html

: buffer: ( n "<spaces>name" )
   \ variable already allocates 1 cell
   variable 1 cells - allot ;
