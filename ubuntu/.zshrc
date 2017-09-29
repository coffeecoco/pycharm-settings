# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:/usr/local/Cellar/python3/3.6.2/Frameworks/Python.framework/Versions/3.6/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/zamai/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="bira"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)

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
alias mkenv="python3 -m venv venv && source venv/bin/activate && pip install --upgrade pip setuptools && pip install -r requirements.txt"
alias pip-update-all="pip install -U $(pip freeze | awk '{split($0, a, "=="); print a[1]}')"

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