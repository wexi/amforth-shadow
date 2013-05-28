\ respect overlapping memory regions a choose
\ the proper cmove
: move
  >r 2dup u< if r> cmove> else r> cmove then 
;
