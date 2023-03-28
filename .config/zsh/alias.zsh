# === Go & Py ===
alias gr="go run"
alias gi="go mod init"
alias gt="go mod tidy"
alias gtt="go test"

alias pi="pip install"

# === nofetch ===
alias s="neofetch"

# === Rust ===
alias cr="cargo run"

# alias python=python3
alias pip=pip3

# === Nvim ===
alias nivm=nvim
alias n=nvim
alias vim=nvim
alias nv=nvim

alias nvim="~/workspace/lua/nvim-macos/bin/nvim"
alias n="~/workspace/lua/nvim-macos/bin/nvim"
alias nv="~/workspace/lua/nvim-macos/bin/nvim"
alias vim="~/workspace/lua/nvim-macos/bin/nvim"

# === Git
alias gc="git clone"
alias gs="git status"
alias gps="git push"
alias gpl="git pull"
alias gm="git commit -m"
alias lg="lazygit"

# === Common ===
alias c=clear
alias e=exit
alias sr="sudo rm"
alias sf="sudo rm -rf"

# === My Own ===
alias so="source ~/.zshrc"
alias peg="ps -ef | grep"

# === exa
alias ls='exa'
alias la='exa -a'
alias ll='exa -lh'
alias ls='exa'
alias ll='exa -lh'
alias la='exa -lah'
alias lr='exa -lR'

# === Brew ===
alias bs="brew search"
alias bi="brew install"
alias bo="brew outdated"
alias bu="brew update"
alias bd="brew upgrade"

# === Proxy ===
px () {
  export http_proxy="http://127.0.0.1:7890"
  export https_proxy=$http_proxy
  export all_proxy="socks5://127.0.0.1:7890"
  echo "All Proxy on"
}
# noproxy
pf () {
  unset http_proxy
  unset https_proxy
  unset all_proxy
  echo "All Proxy off"
}

