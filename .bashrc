# shellcheck shell=bash
#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[[ -r /usr/share/git/git-prompt.sh ]] && source /usr/share/git/git-prompt.sh
# Makes the RPi veeery slow if command not found... :-(
# [[ -r /usr/share/doc/pkgfile/command-not-found.bash ]] && source /usr/share/doc/pkgfile/command-not-found.bash
eval "$(dircolors -b)"
[[ -r ~/.local/bin/bash_aliases.sh ]] && source ~/.local/bin/bash_aliases.sh
HISTCONTROL=ignoreboth
GIT_PS1_SHOWCOLORHINTS=1
GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWSTASHSTATE=1
GIT_PS1_SHOWUNTRACKEDFILES=1
GIT_PS1_SHOWUPSTREAM="auto verbose name"
GIT_PS1_HIDE_IF_PWD_IGNORED=1
GIT_PS1_STATESEPARATOR=" "
PROMPT_COMMAND='__git_ps1 "[\u@\h \w]" "\n\$ "'
SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
GPG_TTY=$(tty)
[[ -d ~/.local/bin ]] && PATH=~/.local/bin:$PATH
export PATH
export SSH_AUTH_SOCK
export GPG_TTY
[[ -r ~/.local/bin/xdg_compat.sh ]] && source ~/.local/bin/xdg_compat.sh
[[ -x $(command -v neofetch) ]] && neofetch
