# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Theme configuration
ZSH_THEME="robbyrussell"
# ZSH_THEME_RANDOM_CANDIDATES=("robbyrussell" "agnoster")

# Completion and behavior
# CASE_SENSITIVE="true"
# HYPHEN_INSENSITIVE="true"

# Auto-update options
# zstyle ':omz:update' mode disabled
# zstyle ':omz:update' mode auto
# zstyle ':omz:update' mode reminder
# zstyle ':omz:update' frequency 13

# UI tweaks
# DISABLE_MAGIC_FUNCTIONS="true"
# DISABLE_LS_COLORS="true"
# DISABLE_AUTO_TITLE="true"
ENABLE_CORRECTION="true"
# COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# DISABLE_UNTRACKED_FILES_DIRTY="true"
# HIST_STAMPS="mm/dd/yyyy"

# Custom folder
# ZSH_CUSTOM=/path/to/new-custom-folder

# Plugins
plugins=(
  zsh-autosuggestions
  git
)

source $ZSH/oh-my-zsh.sh

# User configuration
# export MANPATH="/usr/local/man:$MANPATH"
# export LANG=en_US.UTF-8

# Editor setup
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch $(uname -m)"

# Aliases
alias zshconfig="mate ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"
alias neobim=nvim
alias dir='ls'
alias goto='cd'
alias ff='fastfetch'
alias hf='hyfetch'
alias aagl='flatpak run moe.launcher.an-anime-game-launcher'
alias restart='reboot'
alias fishconf="cd ~/.config/fish && nvim config.fish"
alias nvimconf="cd ~/.config/nvim && nvim"
alias zshconf="cd ~/.config/zsh && nvim .zshrc"
alias vencord='sh -c "$(curl -sS https://raw.githubusercontent.com/Vendicated/VencordInstaller/main/install.sh)"'
alias frun='fish'
alias brun='bash'

# Functions
RandomFlags() {
  local flags=(femme transgender transfeminine lesbian sapphic finsexual femboy gendernonconforming2 plural)
  local use_flag=${flags[$(( RANDOM % ${#flags[@]} )) + 1]}
  hyfetch -b fastfetch -p "$use_flag"
}

# Autocompletion setup
autoload -U compinit
compinit
setopt MENU_COMPLETE
setopt AUTO_MENU
setopt COMPLETE_IN_WORD

# History settings
setopt SHARE_HISTORY
HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999
setopt HIST_EXPIRE_DUPS_FIRST

# Key bindings for history navigation
bindkey '\\e[A' history-search-backward
bindkey '\\e[B' history-search-forward

# Prompt and directory navigation
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

# Run random flag on launch
RandomFlags
