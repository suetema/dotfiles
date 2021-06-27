# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
export CLOUDSDK_PYTHON=python2
export GOPATH=/home/maarten/go
export GOBIN=/home/maarten/go/bin
PATH="$GOBIN:$PATH"

# User specific aliases and functions
alias ll="ls -alh"

alias dnfuy="sudo dnf update -y"

alias t='/usr/local/bin/terraform'
alias k='kubectl'
alias kg='kubectl get'
alias kgp='kubectl get pods'
alias kgi='kubectl get ingress'
alias kgs='kubectl get services'
alias kge='kubectl get endpoints'
alias kgse='kubectl get services,endpoints'
alias kns='kubens'
alias ktx='kubectx'
alias kd='kubectl delete'
alias kdp='kubectl delete pod'
alias kcurl="kubectl run -i --tty curl --image=curlimages/curl --restart=Never --rm -- sh"


# Init zoxide
eval "$(zoxide init bash)"

alias config='/usr/bin/git --git-dir=/home/maarten/.cfg/ --work-tree=/home/maarten'
