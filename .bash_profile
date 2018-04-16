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

# Tmux picks up .bash_profile not .bashrc
source ~/.bashrc
