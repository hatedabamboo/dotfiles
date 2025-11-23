# OPTIONS
shopt -s histappend
shopt -s checkwinsize

# PARAMETERS
HISTSIZE=10000
HISTFILESIZE=1000000
HISTTIMEFORMAT='%F %T '
HISTCONTROL=ignoredups:erasedups
PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin"
EDITOR="/usr/bin/vim"

if [ -f ~/.envvars ]; then
  source ~/.envvars
fi

# FUNCTIONS
if [ -f ~/.bash_custom_functions ]; then
  . ~/.bash_custom_functions
fi

git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/[\1] /'
}

prompt_cmd() {
  local EXIT=$?
  local CLR='\[\e[0m\]'
  local RED='\[\e[0;31m\]'
  local GRN='\[\e[0;32m\]'
  local YEL='\[\e[0;93m\]'

  PS1="[\t] ${YEL}\w \$(git_branch)${CLR}"

  if [ $EXIT != 0 ]; then
    PS1+="${RED}\$${CLR} "
  else
    PS1+="${GRN}\$${CLR} "
  fi
}

# PROMPT
PROMPT_COMMAND="prompt_cmd; history -a; history -c; history -r"

# ALIASES
if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

# FUCK MACOS
if [[ $(uname -s) = "Darwin" ]]; then
  export BASH_SILENCE_DEPRECATION_WARNING=1
  PATH+=":/bin:/usr/local/bin:/opt/homebrew/bin"
fi

# AUTOCOMPLETION
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

if [ -f ~/.k9s-completion.bash ]; then
  . ~/.k9s-completion.bash
fi

# PIP
PATH+=":$HOME/.local/bin"

# GO
GOPATH="$HOME/go/bin"

# add Pulumi to the PATH
export PATH=$PATH:/home/hatedabamboo/.pulumi/bin
