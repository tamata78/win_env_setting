#!/bin/bash

# added .bash_profile below when use svn in dev env
# [ -f ~/win_env_setting/setup/setting_svn_conf.sh ] && . ~/win_env_setting/setup/setting_svn_conf.sh

# for svn
alias sst='svn st'
alias sad='svn add'
alias sup='svn up' # update
alias sci='svn ci' # commit [-m 'commit message']
alias sco='svn co' # check out
alias scp='svn cp' # create branch, tag
alias ssw='svn sw' # swich branch, tag
alias sin='svn info'
alias sme='svn merge'
alias smed='svn merge --dry-run'
alias sre='svn revert'
alias sdl='svn del'

# svn log limit
sl(){
    svn log -l $1 -v
}

# svn diff ignore diff of white space, indent
sdi(){
    svn diff -x --ignore-eol-style $1 | vim -R -
}

# ref_url ettp://www.thekyo.jp/manual/subversion/svn.ref.html
