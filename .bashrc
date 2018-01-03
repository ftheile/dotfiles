#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[[ -r /usr/share/git/git-prompt.sh ]] && source /usr/share/git/git-prompt.sh
[[ -r /usr/share/doc/pkgfile/command-not-found.bash ]] && source /usr/share/doc/pkgfile/command-not-found.bash
eval $(dircolors -b)
alias ls='ls -A -F --color'
alias grep='grep --color'
alias egrep='egrep --color'
alias zgrep='zgrep --color'
alias pactree='pactree --color'
alias dmesg='dmesg --human'
alias less='less --LINE-NUMBERS --ignore-case --LONG-PROMPT --window=-4 --chop-long-lines --tabs=4 --no-init'
alias dd='dd status=progress'
alias diff='diff --color'
GIT_PS1_SHOWCOLORHINTS=1
GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWSTASHSTATE=1
GIT_PS1_SHOWUNTRACKEDFILES=1
GIT_PS1_SHOWUPSTREAM="auto verbose"
PROMPT_COMMAND='__git_ps1 "[\u@\h \w]" "\$ "'
