
: m*/ ( d1 n2 u3 -- dquot ) \ double m-star-slash
    >r s>d >r abs rot rot
    s>d r> xor r> swap >r >r dabs rot tuck um* 2swap um*
    swap >r 0 d+ r> rot rot r@ um/mod rot rot r> um/mod
    nip swap r> if dnegate then
;
