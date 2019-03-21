#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[[ -r /usr/share/git/git-prompt.sh ]] && source /usr/share/git/git-prompt.sh
# Makes the RPi veeery slow if command not found... :-(
# [[ -r /usr/share/doc/pkgfile/command-not-found.bash ]] && source /usr/share/doc/pkgfile/command-not-found.bash
eval $(dircolors -b)
alias ls='ls -A -F --color=auto'
alias grep='grep --color'
alias egrep='egrep --color'
alias zgrep='zgrep --color'
alias pactree='pactree --color'
alias dmesg='dmesg --human'
alias less='less --LINE-NUMBERS --ignore-case --LONG-PROMPT --window=-4 --chop-long-lines --tabs=4 --no-init --quit-if-one-screen --RAW-CONTROL-CHARS --shift .1'
alias dd='dd status=progress'
alias diff='diff --color'
HISTCONTROL=ignoreboth
GIT_PS1_SHOWCOLORHINTS=1
GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWSTASHSTATE=1
GIT_PS1_SHOWUNTRACKEDFILES=1
GIT_PS1_SHOWUPSTREAM="auto verbose"
GIT_PS1_HIDE_IF_PWD_IGNORED=1
PROMPT_COMMAND='__git_ps1 "[\u@\h \w]" "\n\$ "'
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
export GPG_TTY=$(tty)
