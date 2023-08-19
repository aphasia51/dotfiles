# === GO
export GOROOT=/opt/homebrew/Cellar/go/1.19.4/libexec
export GOPATH=/Users/xhs/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

# === Rust
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export RUSTUP_HOME="$XDG_DATA_HOME/rustup"

export LANG=en_US.UTF-8

export PYTHON_HOME=/opt/homebrew/bin/python3.10
export python=/opt/homebrew/bin/python3.10
VIRTUALENVWRAPPER_PYTHON=/opt/homebrew/bin/python3.10
export WORKON_HOME="$HOME/workspace/python/py_envs/"
export PROJECT_HOME="$HOME/workspace/python/projects/"
source /opt/homebrew/bin/virtualenvwrapper.sh

# === Brew
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles
export HOMEBREW_NO_INSTALL_FROM_API=1

# === kitty
# export XTERM=xterm-kitty
# Editor
export NEOVIM_BIN="$HOME/Github/nvim-macos/bin/nvim"
export EDITOR="nvim"
export TERMINAL='kitty'

# Bat
export BAT_THEME="TwoDark"

# Fzf
export FZF_COMPLETION_TRIGGER='**'
export FZF_DEFAULT_COMMAND='rg --files --hidden'
export FZF_DEFAULT_OPTS='--height 90% --layout reverse --border --color "border:#b877db" --preview="bat --color=always {}"'

# temp
export MXSHOP_DEBUG=true
export DEV=true

# Enviroment variables
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/share"

export HISTFILE=$XDG_CACHE_HOME/history/.bash_history
export MYSQL_HISTFILE=$XDG_CACHE_HOME/history/.mysql_history
export MYCLI_HISTFILE=$XDG_CACHE_HOME/history/.mycli-history
export REDISCLI_HISTFILE=$XDG_CACHE_HOME/history/.rediscli_history
export ZSH_CACHE_DIR=$XDG_CACHE_HOME/zsh
export ZSH_COMPDUMP="$XDG_CACHE_HOME/zsh/.zcompdump-${HOST/.*/}-${ZSH_VERSION}"
