export PATH=$HOME/bin:/usr/local/bin:/usr/local/Cellar/python3/3.6.2/Frameworks/Python.framework/Versions/3.6/bin:$PATH
export ZSH=/Users/zamai/.oh-my-zsh
ZSH_THEME="bira"

PIPENV_SHELL_COMPAT=1

plugins=(git osx autopep8 common-aliases zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# SSH
export SSH_KEY_PATH="~/.ssh/"

# Example aliases
export EDITOR='subl -w'

alias zshconfig="subl ~/.zshrc"
alias ohmyzsh="subl ~/.oh-my-zsh"
alias zk="zkubectl"
alias k8="kubectl"
alias gs="git status"
alias pipupdate="pip install -U $(pip freeze | awk '{split($0, a, "=="); print a[1]}')"
alias pipfr="pip freeze > requirements.txt"
alias dockb="docker build ."
alias dockr="docker run --rm -it "

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Applications/google-cloud-sdk/path.zsh.inc' ]; then source '/Applications/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Applications/google-cloud-sdk/completion.zsh.inc' ]; then source '/Applications/google-cloud-sdk/completion.zsh.inc'; fi

source <(kubectl completion zsh)

# kubernetes config info in the promt
autoload -U colors; colors
zstyle ':zsh-kubectl-prompt:' namespace false
source /usr/local/opt/zsh-kubectl-prompt/etc/zsh-kubectl-prompt/kubectl.zsh
RPROMPT='%{$fg[blue]%}($ZSH_KUBECTL_PROMPT)%{$reset_color%}'


export PYTHONSTARTUP=~/.pythonrc
bpython() {
    if test -n "$VIRTUAL_ENV"
    then
        PYTHONPATH="$(python -c 'import sys; print(":".join(sys.path))')" \
        command bpython "$@"
    else
        command bpython "$@"
    fi
}