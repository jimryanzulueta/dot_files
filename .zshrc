# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=/Users/ryan/workspace/paths/chromedriver:$PATH
# Path to your oh-my-zsh installation.
export ZSH=/Users/ryan/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k" 

export SPARKPOST_API_KEY="579a081174b5faa07ed6606fd2f64a423759f917"
export FZF_DEFAULT_COMMAND='ag --nocolor --ignore node_modules -g ""'
export TOOLCHAINS=swift
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
# Add wisely, as too many plugins slow down shell startup.
plugins=(git rails ruby)

source $ZSH/oh-my-zsh.sh
source ~/.nvm/nvm.sh
# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias wow="git status"
alias push!="git push -f"
alias vimconfig="~/.vim_runtime/ ; vim ."
alias golfcrow="cd ~/workspace/sourcepad/golfcrow-backend"
alias gh-client="cd ~/workspace/sourcepad/gh-prime-v2-client"
alias br-core="cd ~/workspace/sourcepad/blinkreceipt-licensing-master"
alias pvp-api="cd ~/workspace/sourcepad/platform-api"
alias pvp-client="cd ~/workspace/sourcepad/upgraded-platform-client"
alias br-admin-client="cd ~/workspace/sourcepad/blinkreceipt-admin-client"
alias br-admin-api="cd ~/workspace/sourcepad/blinkreceipt-admin-api"
alias skippr="cd ~/workspace/personal/ix"
alias rs="rails s"
alias rc="rails c"
alias gd="git diff"
alias gf="git fetch"
alias gc="git checkout"
alias be="bundle exec"
alias gros='git rebase origin/staging'
alias grop='git rebase origin/production'
alias gfos='git fetch origin staging'
alias gfop='git fetch origin production'
alias rid="ps aux | ag 3000"
alias please="sudo"
alias vimplugins="cd ~/.vim_runtime/my_plugins"

if type nvim > /dev/null 2>&1; then
  alias vim='nvim'
fi

vterm_printf(){
    if [ -n "$TMUX" ] && ([ "${TERM%%-*}" = "tmux" ] || [ "${TERM%%-*}" = "screen" ] ); then
        # Tell tmux to pass the escape sequences through
        printf "\ePtmux;\e\e]%s\007\e\\" "$1"
    elif [ "${TERM%%-*}" = "screen" ]; then
        # GNU screen (screen, screen-256color, screen-256color-bce)
        printf "\eP\e]%s\007\e\\" "$1"
    else
        printf "\e]%s\e\\" "$1"
    fi
}

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.

# RVM

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.

ulimit -n 32768
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
export TERM="xterm-256color"

export NODE_OPTIONS="--max-old-space-size=12000"
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
export PATH=$PATH:/Users/ryan/Downloads/platform-tools/
export PATH="/usr/local/opt/elasticsearch-full/bin:$PATH"
export PATH="$HOME/.emacs.d/bin:$PATH"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export YVM_DIR=/usr/local/opt/yvm
[ -r $YVM_DIR/yvm.sh ] && . $YVM_DIR/yvm.sh
