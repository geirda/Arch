#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto --group-directories-first'
alias ll='ls -l'
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

#PS1='[\u@\h \W]\$ '
source /usr/share/gitstatus/gitstatus.prompt.sh
PS1='\[\033[01;34m\]\w ${GITSTATUS_PROMPT}\[\033[01;32m\]❯ \[\033[00m\]'

