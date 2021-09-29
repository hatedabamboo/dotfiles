HISTCONTROL=ignoreboth

shopt -s histappend

HISTSIZE=10000
HISTFILESIZE=20000
HISTTIMEFORMAT='%F %T '

shopt -s checkwinsize

case "$TERM" in
  xterm-color|*-256color) color_prompt=yes;;
esac

force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
  if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	  color_prompt=yes
  else
	  color_prompt=
  fi
fi

function git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/[\1]/'
}

if [ "$color_prompt" = yes ]; then
  PS1="[\t] \[\033[00;96m\]\u@RAGE500:\w \$(git_branch)\[\033[00m\]\$ "
else
  PS1="[\t] \u@RAGE500:\w \$(git_branch)\$ "
fi
unset color_prompt force_color_prompt


if [ -x /usr/bin/dircolors ]; then
  test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
  alias ls='ls --color=auto'
fi

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi
