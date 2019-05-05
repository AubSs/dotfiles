#!/bin/bash

## [Basic conf] ##
# don't put duplicate lines or lines starting with space in the history.
HISTCONTROL=ignoreboth
# append to the history file, don't overwrite it
shopt -s histappend
# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

PS1="[\$?][\u@\h \W]\$ "

## [Export] ##
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
export LS_COLORS="no=00:fi=00:di=00;34:ln=00;36:pi=40;33:so=00;35:bd=40;33;01:cd=40;33;01:or=01;05;37;41:mi=01;05;37;41:ex=00;35:*.cmd=00;32:*.exe=00;32:*.sh=00;32:*.gz=00;31:*.bz2=$"
export TERM="xterm-256color"
export EDITOR='ne'

## [Alias] ##
alias ls='ls --color=auto -GFha'
alias sl='ls'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias ne='emacs -nw'

alias showsize='du -sh * | sort -h'

alias gpl++='g++ -Wall -Wextra -pedantic'
alias gpl='gcc -Wall -Wextra -pedantic'
alias cpl++='clang++ -Wall -Wextra -pendantic'
alias cpl='clang -Wall -Wextra -pendantic'

## [MacOS] ##
if [[ "$OSTYPE" == "darwin"* ]]; then
    export PATH="/usr/local/sbin:$PATH"
    alias goicloud="cd ~/Library/Mobile\ Documents/com~apple~CloudDocs/"
    export PWDNGINX='/usr/local/etc/nginx'
    alias emacs='/usr/local/bin/emacs'
    alias brewski='brew update && brew upgrade && brew cleanup; brew doctor'
fi

## [Helpers] ##
compress() {
    tar jcf $1.tar.bz2 $1
}
extract() {
    tar jxf $1
}
