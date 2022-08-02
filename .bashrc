# OPTIONS
shopt -s histappend
shopt -s checkwinsize

# PARAMETERS
HISTSIZE=10000
HISTFILESIZE=20000
HISTTIMEFORMAT='%F %T '
HISTCONTROL=ignoreboth

# FUNCTIONS
function git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/[\1] /'
}

function prompt_cmd() {
    local EXIT="$?"
    PS1=""
    local CLR='\[\e[0m\]'
    local RED='\[\e[0;31m\]'
    local GRN='\[\e[0;32m\]'
    local YEL='\[\e[0;93m\]'
    
    PS1+="[\t] ${YEL}\w \$(git_branch)${CLR}"
    
    if [ $EXIT != 0 ]; then
        PS1+="${RED}\$${CLR} "
    else
        PS1+="${GRN}\$${CLR} "
    fi
}

# PROMPT
PROMPT_COMMAND=prompt_cmd

# ALIASES
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
