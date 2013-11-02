\ 'core.frt' generated automatically, do not edit
#include core/postpone.frt
#include core/q-negate.frt
#include core/2drop.frt
#include core/2over.frt
#include core/2swap.frt
#include core/aligned.frt
#include core/align.frt
#include core/blank.frt
#include core/c-comma.frt
#include core/char-plus.frt
#include core/chars.frt
#include core/dot-paren.frt
#include core/environment-q.frt
#include core/erase.frt
#include core/evaluate.frt
#include core/fm-slash-mod.frt
#include core/move.frt

#include core/sm-slash-rem.frt
#include core/source-id.frt
#include core/to-body.frt
#include core/tuck.frt

\ update the environment
get-current environment set-current
: core -1 ;
\ reset the definition word list
set-current
