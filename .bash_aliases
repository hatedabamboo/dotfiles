# GENERAL
alias l="ls -lh --color=always"
alias ll="ls -lah --color=always"
alias s="ssh"
alias sv="ssh -v"
alias p="ping -a"
alias p6="ping6"
alias pssh="parallel-ssh"
alias pscp="parallel-scp"
alias fp="fping"
alias v="vim"
alias vd="vimdiff"

# ANSIBLE
alias an="ansible $ANSIBLE_ARGS"
alias anp="ansible-playbook $ANSIBLE_ARGS"
alias anve="ansible-vault encrypt"
alias anvd="ansible-vault decrypt"

# GIT
alias gp="git pull"
alias ga="git add"
alias gc="git commit -m "'"'"\$(git status --short | sed 's/^M /Updated\t/g; s/^A /Added\t/g; s/^D /Deleted\t/g; s/^R /Renamed\t/g ;s/"'"'"//g' | sort)"'"'""
alias gs="git status"
alias gd="git diff"
alias gf="git fetch origin"
alias gpu="git push origin \$(git branch --show-current)"

# TERRAFORM
alias tf="terraform"
alias tfi="terraform init"
alias tfv="terraform validate"
alias tff="terraform fmt --recursive"
alias tfcli="terraform console"
alias tfp="terraform plan"

# TERRAGRUNT
alias tg="terragrunt"
alias tgp="terragrunt plan --lock=false"
alias tgrap="terragrunt run-all plan --terragrunt-include-external-dependencies --lock=false"
alias tga="terragrunt apply"
alias tgraa="terragrunt run-all apply --terragrunt-include-external-dependencies"
alias tgf="terragrunt hclfmt ."

# DOCKER
alias d="docker"
alias dp="docker ps"
alias dpa="docker ps -a"
alias dl="docker logs"
alias din="docker inspect"
alias di="docker image"
alias dr="docker run -d -i"
alias drm="docker rm"
alias drm="docker rmi"

# AWS
alias stsid="aws sts get-caller-identity"
