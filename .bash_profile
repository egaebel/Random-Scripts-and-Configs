# .bash_profile

#FIRST PRIORITY
#CHANGE THE DEFAULT EDITOR TO SUBLIME
export UAEDITOR=sublime_text
export EDITOR=sublime_text
export VISUAL=sublime_text
export PATH
unset USERNAME

#Golang GOPATH stuff
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

PATH=$HOME/.local/bin:$PATH:$HOME/bin:.:/usr/local/bin
export PATH

# Cargo setup
export PATH=$PATH:$HOME/.cargo/bin

# Tmux picks up .bash_profile not .bashrc
# source ~/.bashrc

# Cargo path
export PATH="$HOME/.cargo/bin:$PATH"

# set PATH for cuda 11.3 installation
CUDA_VERSION="cuda-11.3"
# if [ -d "/usr/local/$CUDA_VERSION/bin/" ]; then
    export PATH=/usr/local/$CUDA_VERSION/bin${PATH:+:${PATH}}
    export LD_LIBRARY_PATH=/usr/local/$CUDA_VERSION/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}
# fi
