# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

source ~/.config/zsh/env.zsh
export ZDOTDIR=$XDG_CONFIG_HOME/zsh

# ZSH_THEME="nebula"
source $HOME/.config/zsh/prompt.zsh

# Enable colors and change prompt:
# autoload -U colors && colors	# Load colors
# setopt autocd		# Automatically cd into typed directory.
# stty stop undef		# Disable ctrl-s to freeze terminal.
# setopt interactive_comments

# History in cache directory:
HISTSIZE=10000000
SAVEHIST=10000000
HISTFILE="${XDG_CACHE_HOME:-$HOME/.cache}/zsh/history"

plugins=(
  git
  autojump
  # zsh-vi-mode
  zsh-autosuggestions
  zsh-syntax-highlighting
)

# ZVM_VI_INSERT_ESCAPE_BINDKEY=jk

source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nvim'
else
  export EDITOR='nvim'
fi

source ~/.config/zsh/alias.zsh
source ~/.config/zsh/fzf.zsh


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

bindkey '^f' autosuggest-accept

[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Use beam shape cursor on startup.
echo -ne '\e[5 q'

# Use beam shape cursor for each new prompt.
preexec() { echo -ne '\e[5 q' ;}
