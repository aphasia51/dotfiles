# === Go & Py ===
alias gr="go run"
alias gi="go mod init"
alias gt="go mod tidy"
alias gtt="go test"

alias pi="pip install"
alias python3=/opt/homebrew/bin/python3.10
alias p3=python3
alias pip=/opt/homebrew/bin/pip3.10
alias jp="jupyer notebook"

# === nofetch ===
alias s="neofetch"

# === Joshuto ===
alias ra="joshuto"

# === Rust ===
alias cr="cargo run"

# === Nvim ===
# alias nivm=nvim
# alias n=nvim
# alias vim=nvim
# alias nv=nvim
# alias nvi=nvim

alias nvim="~/Github/nvim-macos/bin/nvim"
alias n="~/Github/nvim-macos/bin/nvim"
alias nv="~/Github/nvim-macos/bin/nvim"

# === Git
alias gcd="git clone --depth 1"
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
alias cat=bat

alias f=fzf

# === My Own ===
alias so="source ~/.zshrc"
alias peg="ps -ef | grep"
alias t=tree

# === exa
alias ls='exa'
alias la='exa -a'
alias ll='exa -lh'
alias ls='exa'
alias la='exa -lah'
alias lr='exa -lR'

# === Brew ===
alias bs="brew search"
alias bi="brew install"
alias bo="brew outdated"
alias bu="brew update"
alias bd="brew upgrade"
alias blg="brew list | grep"

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

# create tmux new session with window name
tn() {
  tmux new-session -d -s $1
  tmux rename-window -t $1:1 'dev'
  tmux a -t $1
}

# open file
fo() {
  IFS=$'\n' out=($(fzf --query="$1" --multi))
  key=$(head -1 <<< "$out")
  file=$(head -2 <<< "$out" | tail -1)
  if [ -n "$file" ]; then
    [ "$key" = ctrl-o ] && open "$file" || ${EDITOR:-nvim} "$file"
  fi
}
# cd directory and open file can pass word
fcd() {
  local dir
  dir=$(fd --hidden --type d "$1" . $HOME | fzf --preview 'tree -C {}' +m) && cd "$dir"
}

# cd directory and open file can pass word
co() {
  local dir
  dir=$(fd --hidden --type d "$1" . $HOME | fzf --preview 'tree -C {}' +m) && cd "$dir" && fo
}

# find-in-file - usage: fif <searchTerm>
fif() {
  if [ ! "$#" -gt 0 ]; then echo "Need a string to search for!"; return 1; fi
  file=$(rg --files-with-matches --no-messages "$1" | fzf --preview "highlight -O ansi -l {} 2> /dev/null | rg --colors 'match:bg:yellow' --ignore-case --pretty --context 10 '$1' || rg --ignore-case --pretty --context 10 '$1' {}")
  nvim $file
}

mcd() {
  mkdir "$1"
  cd "$1"
}
