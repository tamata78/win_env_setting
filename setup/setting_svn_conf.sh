!#/bin/bash

# for svn
# ref_url ettp://www.thekyo.jp/manual/subversion/svn.ref.html
alias svn="colorsvn"
alias sst='svn st'
alias sad='svn add'
alias sup='svn up' # update
alias sci='svn ci' # commit
alias sco='svn co' # check out
alias scp='svn cp' # create branch, tag
alias ssw='svn sw' # swich branch, tag
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

