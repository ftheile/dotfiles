# shellcheck shell=bash
#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[[ -r /usr/share/git/git-prompt.sh ]] && source /usr/share/git/git-prompt.sh
[[ -r /usr/share/doc/pkgfile/command-not-found.bash ]] && source /usr/share/doc/pkgfile/command-not-found.bash
eval "$(dircolors -b)"
alias ls='ls -A -F --color=auto'
alias grep='grep --color'
alias egrep='egrep --color'
alias zgrep='zgrep --color'
alias pactree='pactree --color'
alias dmesg='dmesg --human'
alias less='less --LINE-NUMBERS --ignore-case --LONG-PROMPT --window=-4 --tabs=4 --no-init --quit-if-one-screen --RAW-CONTROL-CHARS --shift .1'
alias dd='dd status=progress'
alias diff='diff --color'
alias dotcfg='/usr/bin/git --git-dir=$HOME/.dotcfg --work-tree=$HOME'
HISTCONTROL=ignoreboth
GIT_PS1_SHOWCOLORHINTS=1
GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWSTASHSTATE=1
GIT_PS1_SHOWUNTRACKEDFILES=1
GIT_PS1_SHOWUPSTREAM="auto verbose name"
GIT_PS1_HIDE_IF_PWD_IGNORED=1
PROMPT_COMMAND='__git_ps1 "[\u@\h \w]" "\n\$ "'
SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
GPG_TTY=$(tty)
[ -d ~/.local/bin ] && PATH=~/.local/bin:$PATH
export PATH
export SSH_AUTH_SOCK
export GPG_TTY
export IDF_PATH=~/esp/esp-idf
[[ -r ~/.local/bin/xdg_compat.sh ]] && source ~/.local/bin/xdg_compat.sh
[[ -x $(command -v neofetch) ]] && neofetch
