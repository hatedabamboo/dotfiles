# GENERAL
alias l="ls -lh --color=always"
alias ll="ls -lah --color=always"
alias s="ssh"
alias sv="ssh -v"
alias p="ping -a"
alias p6="ping6"
# alias pssh="parallel-ssh"
# alias pscp="parallel-scp"
alias fp="fping"
alias v="vim"
alias vd="vimdiff"
alias sops="sops -k $SOPS_KMS_ARN"
alias wgu="wg-quick up wg0"
alias wgd="wg-quick down wg0"
alias py="/usr/bin/python3"

# ANSIBLE
alias an="ansible $ANSIBLE_ARGS"
alias anp="ansible-playbook $ANSIBLE_ARGS"
alias anve="ansible-vault encrypt"
alias anvd="ansible-vault decrypt"

# GIT
alias gp="git pull"
alias ga="git add"
alias gc="git commit -m "'"'"\$(git status --short | sed 's/^M /Updated\t/g; s/^ M /Updated\t/g; s/^A /Added\t/g; s/^D /Deleted\t/g; s/^R /Renamed\t/g; s/^?? /WIP\t/g; s/"'"'"//g' | sort)"'"'""
alias gs="git status"
alias gd="git diff"
alias gf="git fetch origin"
alias gpu="git push origin \$(git branch --show-current)"
alias gce="git commit -m 'Empty commit' --allow-empty"
# alias gcm="[[ \"$(git branch --list 'master' | wc -l)\" -eq \"1\" ]] && git checkout master || git checkout main"

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
alias di="docker images"
alias dr="docker run -di"
alias drm="docker rm"
alias drm="docker rmi"
alias dcom="docker compose"

# AWS
alias stsid="aws sts get-caller-identity"
