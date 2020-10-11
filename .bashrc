export PATH=$PATH:~/bashscripts
export EDITOR='vim'
export TERMINAL='alacritty'

# coloured man-pages
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'

export HOME=/home/yames
export PATH=$HOME/bin:$PATH

alias ls='ls --color=auto'
alias grep='grep --color'
alias v='vim'
alias r='ranger'
alias ytmp3='youtube-dl --extract-audio --audio-format mp3'
alias speedtest='speedtest --bytes'
alias clip='xclip -selection clipboard'

alias discord='com.discordapp.Discord'

# easily skip from root of Android project to code
alias andSkip='cd app/src/main/java/com/'

# get to dissertation
alias dsi='cd ~/Dissertation/'

# simple backup function
bak() {
	cp $1 $1.bak
}

alias gra="cd /mnt/data/home/coursework/y3/gra/final/g53gra_framework"

alias diswc="perl ~/Documents/texcount/texcount.pl ~/Dissertation/dissertation_report/dissertation.tex"


