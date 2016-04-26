
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

server_rlogin(){
    ssh -v -X -to ServerAliveInterval=60 -o PreferredAuthentications=publickey egaebel@rlogin.cs.vt.edu "cd ~/cs3214/projects/project-5-web-server/ ; bash"
}
alias shell=server_rlogin

dat_base_login() {
    psql -h cs4604.cs.vt.edu -U "egaebel" -d "Dat Base"
}
alias datbase=dat_base_login
#--------------------------------------------------------------------------------------

#aliases for common (usually deep) directories------------------------------------------
alias mypapers='cd ~/grad-docs/research/papers'
alias survey='cd ~/grad-docs/research/survey-paper--2014/paper/'
alias thesis='cd ~/grad-docs/research/thesis'
alias lgtm='cd ~/grad-docs/research/thesis/lgtm'
alias eceproj='cd ~/grad-docs/spring-2015/ece-5454/project/ece5454-s15/'
alias ppdl='cd ~/grad-docs/research/privacy-preserving-neural-networks'
#---------------------------------------------------------------------------------------

#--------------------------------------------------------------------------------------
# Add an "alert" alias for long running commands. Use like so:
# sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
#--------------------------------------------------------------------------------------

# Aliases for ssh-ing into aws instances-----------------------------------------------
alias awsspatialdb='ssh -X -i ~/.ssh/aws/aws-cs6604-crime-data-key.pem -o ServerAliveInterval=60 ubuntu@52.90.189.212'
# Probably won't ever use this again. If you see this comment, delete it and the line below if you haven't used this server....
#alias free-nn-torch-aws='ssh -X -i ~/.ssh/aws/aws-free-torch-nn-workstation.pem -o ServerAliveInterval=60 ubuntu@54.88.61.231'
cnn_torch_alias() {
	ssh -X -i ~/.ssh/aws/torch-ami-nn-key.pem -o ServerAliveInterval=60 ubuntu@"$1"
}
alias cnn-torch-aws=cnn_torch_alias
#--------------------------------------------------------------------------------------


# Alias for system stuff---------------------------------------------------------------
alias restart-cups='sudo /etc/init.d/cups restart'
#--------------------------------------------------------------------------------------
