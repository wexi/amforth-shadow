\ source
\ Message-ID: <hembp6$l40$1@news.eternal-september.org>
\ From: "Gerry" <gerry@jackson9000.fsnet.co.uk>
\ Newsgroups: comp.lang.forth
\ Subject: Re: LC53 statistics
\ Date: Thu, 26 Nov 2009 16:52:34 -0000

\ macros are strings delimited by a single
\ character not to be used within the macro
\ itself

: macro
    : char parse postpone sliteral postpone evaluate
    postpone ; immediate
;

\ Usage is e.g.

\  macro square " dup *"  ok
\  : foo 5 square . ;  ok
\  foo 25  ok
\  macro s2 - dup + - ok
\  : bar 6 s2 ; ok
\  bar 12 ok

