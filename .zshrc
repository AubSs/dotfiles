#!/bin/zsh

# completion
autoload -U compinit
compinit

# correction
setopt correctall

PROMPT="
%F{160} •AußSs• %F{255}| %w %t | %F{136}‹%n@%m› %~/  %(?..[%?])
%F{255}> "

## [export] ##

export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

export LS_COLORS="no=00:fi=00:di=00;34:ln=00;36:pi=40;33:so=00;35:bd=40;33;01:cd=40;33;01:or=01;05;37;41:mi=01;05;37;41:ex=00;35:*.cmd=00;32:*.exe=00;32:*.sh=00;32:*.gz=00;31:*.bz2=00;31:*.bz=00;31:*.tz=00;31:*.rpm=00;31:*.cpio=00;31:*.t=93:*.pm=00;36:*.pod=00;96:*.conf=00;33:*.off=00;9:*.jpg=00;94:*.png=00;94:*.xcf=00;94:*.JPG=00;94:*.gif=00;94:*.pdf=00;91"

export TERM="xterm-256color"
export EDITOR='ne'

## [alias] ##

alias ls='ls --color=auto -GFha'
alias sl='ls'
alias grep='grep --color=auto'
alias ne='emacs -nw'

alias gpl++='g++ -Wall -Wextra -pedantic'
alias gpl='gcc -Wall -Wextra -pedantic'
alias cpl++='clang++ -Wall -Wextra -pendantic'
alias cpl='clang -Wall -Wextra -pendantic'
