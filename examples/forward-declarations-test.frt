forward: foo

: bar foo ;
: baz foo ;

bar \ should cause an error: foo not bound, or (simpler) silently crash

: foo ." I'm foo the first" ;
bar \ should execute the does> part of forward: for foo
: foo ." I'm the second foo" ;
baz \ uses the new definition of foo!

