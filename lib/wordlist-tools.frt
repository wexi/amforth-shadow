\ Message-ID: <hjckgg$ojs$1@news.eternal-september.org>
\ From: "David N. Williams" <williams@umich.edu>
\ Newsgroups: comp.lang.forth
\ Subject: >ORDER  ORDER> ORDER@
\ Date: Fri, 22 Jan 2010 11:41:50 -0500


: >order  ( wid -- order: wid )
  >r get-order r> swap 1+ set-order ;

: order>  ( order: wid -- s: wid )
    get-order swap >r 1- set-order r> ;

: order@  ( order: wid -- s: wid )
      get-order over >r 0 ?do drop loop r> ; 
\ mlg's definition:
\ : order@  ( -- wid )  order> dup >order ; 

