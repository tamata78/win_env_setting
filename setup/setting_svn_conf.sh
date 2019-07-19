!#/bin/bash

# for svn
alias svn="colorsvn"
alias sst='svn st'
alias sad='svn add'
alias sup='svn up'
alias sci='svn ci'
alias sco='svn co'
alias sin='svn info'
alias sme='svn merge'
alias sre='svn revert'
alias sdl='svn del'

# svn log limit
sl(){
    svn log -l $1 -v
}

# svn diff
sdi(){
    svn diff -x --ignore-eol-style $1 | vim -R -
}

