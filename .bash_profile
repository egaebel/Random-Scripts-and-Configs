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

PATH=$PATH:/usr/bin/ghc:$HOME/.local/bin:$HOME/bin:.
#PATH=$HOME/anaconda3/bin:$PATH
#PATH=$HOME/anaconda/bin:$PATH

export PATH

# PYTHONPATH for GNURadio
export PYTHONPATH=/opt/local/lib/python2.7/dist-packages/

#OpenCV library location 
export OpenCV_LIBS=~/Programs/openCV/opencv/build
export OpenCV_DIR=~/Programs/openCV/opencv/build
PATH=$PATH:~/Programs/openCV
