#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[[ -r /usr/share/git/git-prompt.sh ]] && source /usr/share/git/git-prompt.sh
[[ -r /usr/share/doc/pkgfile/command-not-found.bash ]] && source /usr/share/doc/pkgfile/command-not-found.bash
eval $(dircolors -b)
alias ls='ls -A --color=auto'
alias grep='grep --color=auto'
alias zgrep='zgrep --color=auto'
alias pactree='pactree --color'
alias dmesg='dmesg --human'
alias less='less --tabs=4'
alias dd='dd status=progress'
alias diff='diff --color'
GIT_PS1_SHOWCOLORHINTS=true
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWUPSTREAM=auto
PROMPT_COMMAND='__git_ps1 "[\u@\h \w]" "\$ "'
