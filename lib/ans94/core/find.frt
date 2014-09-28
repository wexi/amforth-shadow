\ #require count.frt

: find ( addr --  addr 0 | xt -1 | xt 1 ) 
  dup count find-name  dup
  if rot drop then
;
