# === GO
export GOROOT=/opt/homebrew/Cellar/go/1.19.4/libexec
export GOPATH=/Users/xhs/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

export LANG=en_US.UTF-8

# export http_proxy="http://127.0.0.1:7892"
# export https_proxy=$http_proxy

VIRTUALENVWRAPPER_PYTHON=/opt/homebrew/bin/python3
export WORKON_HOME="$HOME/workspace/python/py_envs/"
export PROJECT_HOME="$HOME/workspace/python/projects/"
source /opt/homebrew/bin/virtualenvwrapper.sh

# === Brew
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles
export HOMEBREW_NO_INSTALL_FROM_API=1

# === kitty
# export XTERM=xterm-kitty

# temp
export MXSHOP_DEBUG=true
