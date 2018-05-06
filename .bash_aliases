
#Enable color support of la and grep--------------------------------------------------------------
if [ -x /usr/bin/dircolors ]; then
	
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
	
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi
#--------------------------------------------------------------------------------------

# some more aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias grepr='grep -R'

#top 10 processor processes
alias pss="clear; ps aux | sort -r -n -k 3 | head -n 10"
#top 10 memory processes
alias psm="clear; ps aux | sort -r -n -k 4 | head -n 10"

#SSH aliases for specific servers and directories---------------------------------------------
my_rlogin () {
	ssh -to ServerAliveInterval=60 -o PreferredAuthentications=publickey egaebel@rlogin.cs.vt.edu
}
alias myrlogin=my_rlogin
#--------------------------------------------------------------------------------------

#--------------------------------------------------------------------------------------
# Add an "alert" alias for long running commands. Use like so:
# sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
#--------------------------------------------------------------------------------------

# Alias for system stuff---------------------------------------------------------------
alias restart-cups='sudo /etc/init.d/cups restart'
#--------------------------------------------------------------------------------------

if [[ -d "~/Programs/" ]]; then
    PROGRAMS="$HOME/Programs"
else
    PROGRAMS="$HOME/workspace/Programs"
fi
alias pro='cd "$PROGRAMS"'
alias web='cd "$PROGRAMS"/ethangaebel-dot-com'
alias sgs='cd $PROGRAMS/candlelight-experiments/sentence-graphs-prototype/'

alias wdocs='cd $HOME/workspace/workspace-documents/'

# Tmux windows creation functions
tmux_startup_func() {
    SESSION_NAME="default"
    PROJECT_ROOT="$PROGRAMS/candlelight-experiments/sentence-graphs-prototype"
    #tmux has-session -t $SESSION_NAME &> /dev/null
    #if [ $? != 0 ]; then
        tmux start-server

        # Create session and windows
        tmux new-session -d -s $SESSION_NAME -n "main"
        tmux new-window -t $SESSION_NAME:1 -n "monitoring"
        tmux new-window -t $SESSION_NAME:2 -n "bash-1"
        tmux new-window -t $SESSION_NAME:3 -n "bash-2"

        # Jump to project directories
        tmux send-keys -t $SESSION_NAME:0 "cd $PROJECT_ROOT" Enter
        tmux send-keys -t $SESSION_NAME:1 "cd $PROJECT_ROOT" Enter
        tmux send-keys -t $SESSION_NAME:2 "cd $PROJECT_ROOT" Enter
        tmux send-keys -t $SESSION_NAME:3 "cd $PROJECT_ROOT" Enter

        # Run programs in windows
        tmux send-keys -t $SESSION_NAME:0 "source bin/activate" Enter
        tmux send-keys -t $SESSION_NAME:1 "htop" Enter

        # Set main menu and attach
        tmux select-window -t $SESSION_NAME:0
        tmux attach-session -t $SESSION_NAME
    #fi
}
alias tmux-start=tmux_startup_func
