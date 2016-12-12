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
export EDITOR='ne'

## [alias] ##

alias ls='ls -GFha'
alias sl='ls'

alias ne='emacs -nw'

alias gpl++='g++ -Wall -Wextra -pedantic'
alias gpl='gcc -Wall -Wextra -pedantic'
alias cpl++='clang++ -Wall -Wextra -pendantic'
alias cpl='clang -Wall -Wextra -pendantic'
