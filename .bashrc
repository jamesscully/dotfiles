#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

alias v='vim'

setb() {
	sudo brightnessctl s $1
}


# since it's a PITA to type this out
alias restart_polybar="pkill polybar; polybar example &"
