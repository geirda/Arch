# ~/.zshrc

# not running interactively then bail
[[ $- != *i* ]] && return

# shell opts
zstyle ':completion:*' menu select

setopt autocd
setopt completealiases
setopt histignorealldups
setopt histfindnodups
setopt incappendhistory
setopt sharehistory
setopt appendhistory
HISTFILE=~/.local/share/zsh/history
HISTSIZE=1000
SAVEHIST=1000

autoload -Uz compinit
compinit

# Make sure the terminal is in application mode, when zle is
# active. Only then are the values from $terminfo valid.
if (( ${+terminfo[smkx]} )) && (( ${+terminfo[rmkx]} )); then
    function zle-line-init () {
        emulate -L zsh
        printf '%s' ${terminfo[smkx]}
    }
    function zle-line-finish () {
        emulate -L zsh
        printf '%s' ${terminfo[rmkx]}
    }
    zle -N zle-line-init
    zle -N zle-line-finish
fi

POWERLEVEL9K_COLOR_SCHEME='dark'
POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND='239'
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND='187'
POWERLEVEL9K_CONTEXT_REMOTE_BACKGROUND='024'
POWERLEVEL9K_CONTEXT_REMOTE_FOREGROUND='255'
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='246'
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND='000'
POWERLEVEL9K_DIR_HOME_BACKGROUND='246'
POWERLEVEL9K_DIR_HOME_FOREGROUND='000'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='246'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='000'
POWERLEVEL9K_STATUS_OK_BACKGROUND='008'
POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
POWERLEVEL9K_SHORTEN_DELIMITER=""
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"
POWERLEVEL9K_VCS_CLEAN_BACKGROUND='011'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='008'
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='010'
POWERLEVEL9K_VCS_MAX_SYNC_LATENCY_SECONDS='0.05'
POWERLEVEL9K_VI_INSERT_MODE_STRING='INSERT'
POWERLEVEL9K_VI_COMMAND_MODE_STRING='NORMAL'﻿

SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_PROMPT_SEPARATE_LINE=false
SPACESHIP_CHAR_SYMBOL=❯
SPACESHIP_CHAR_SUFFIX=" "
SPACESHIP_EXEC_TIME_PRECISION=0
# SPACESHIP_PROMPT_ASYNC=false
SPACESHIP_ASYNC_SHOW=false
SPACESHIP_HG_SHOW=false
SPACESHIP_PACKAGE_SHOW=false
SPACESHIP_NODE_SHOW=false
SPACESHIP_RUBY_SHOW=false
SPACESHIP_ELM_SHOW=false
SPACESHIP_ELIXIR_SHOW=false
SPACESHIP_XCODE_SHOW_LOCAL=false
SPACESHIP_SWIFT_SHOW_LOCAL=false
SPACESHIP_GOLANG_SHOW=false
SPACESHIP_PHP_SHOW=false
SPACESHIP_RUST_SHOW=false
SPACESHIP_JULIA_SHOW=false
SPACESHIP_DOCKER_SHOW=false
SPACESHIP_DOCKER_CONTEXT_SHOW=false
SPACESHIP_AWS_SHOW=false
SPACESHIP_CONDA_SHOW=false
SPACESHIP_VENV_SHOW=false
SPACESHIP_PYTHON_SHOW=false
SPACESHIP_DOTNET_SHOW=false
SPACESHIP_EMBER_SHOW=false
SPACESHIP_KUBECTL_CONTEXT_SHOW=false
SPACESHIP_TERRAFORM_SHOW=false
SPACESHIP_TERRAFORM_SHOW=false
SPACESHIP_VI_MODE_SHOW=false
SPACESHIP_JOBS_SHOW=false

autoload -U promptinit; promptinit
prompt spaceship
# source ~/src/spaceship-prompt/spaceship.zsh

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

#case "$TERM" in
#linux*)
#	PS1='%B%F{green}%n@%m %B%F{blue}%~%F{reset}%b> '
#	;;
#*)
#	source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
#	;;
#esac

# colors in less (default PAGER in Arch)
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'

# reload ~/.zshrc and compile to .zwc ...  ZDOTDIR see:
# https://wiki.archlinux.org/index.php/zsh#Making_Zsh_your_default_shell
function zsrc() {
    local cache=""
    [[ -n $ZSH_CACHE_DIR ]] && cache=$ZSH_CACHE_DIR || cache="${ZDOTDIR:-$HOME}/.cache"
    autoload -U compinit zrecompile
    compinit -d "$cache/zcomp-$HOST"
    for f in ${ZDOTDIR:-$HOME}/.zshrc "$cache/zcomp-$HOST"; do
        zrecompile -p $f && command rm -f $f.zwc.old
    done
    source ${ZDOTDIR:-$HOME}/.zshrc
}
[[ ! -e ${ZDOTDIR:-$HOME}/.zshrc.zwc ]] && zsrc &>/dev/null

# aliases
alias l='ls'
alias la='ls -a'
alias ll='ls -l'
alias ls='exa --group-directories-first'
alias l.='exa -a | egrep "^\."'
alias ..='cd ..'
alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'
alias diff='diff --color'
alias grep='grep --color'
alias ip='ip --color'
alias upd='sudo pacman -Syyu'
alias pac='sudo pacman --color auto'
alias merge='xrdb -merge ~/.Xresources'
alias grubup='sudo grub-mkconfig -o /boot/grub/grub.cfg'
alias mirrors='sudo reflector --score 100 --fastest 25 \
    --sort rate --save /etc/pacman.d/mirrorlist --verbose'
alias ranger='ranger && tittel.zsh'
alias tuir='tuir --theme bue && echo -n -e "\033]0;${TERM%%-*}\007"'

# key bindings
bindkey "\e[1~" beginning-of-line
bindkey "\e[4~" end-of-line
bindkey "\e[5~" beginning-of-history
bindkey "\e[6~" end-of-history
bindkey "\e[3~" delete-char
bindkey "\e[2~" quoted-insert
bindkey "\e[5C" forward-word
bindkey "\eOc" emacs-forward-word
bindkey "\e[5D" backward-word
bindkey "\eOd" emacs-backward-word
bindkey "\ee[C" forward-word
bindkey "\ee[D" backward-word
bindkey "^H" backward-delete-char
# for rxvt
bindkey "\e[8~" end-of-line
bindkey "\e[7~" beginning-of-line
# for non RH/Debian xterm, can't hurt for RH/DEbian xterm
bindkey "\eOH" beginning-of-line
bindkey "\eOF" end-of-line
# for freebsd console
bindkey "\e[H" beginning-of-line
bindkey "\e[F" end-of-line
# completion in the middle of a line
bindkey '^i' expand-or-complete-prefix

# display system information
pfetch

case "$TERM" in
xterm*)
	cd ~/
#	source ~/.config/lf/alacritty.zsh
	;;
st*)
	source ~/.config/lf/st.zsh
	;;
alacritty*)
	source ~/.config/lf/alacritty.zsh
	;;
esac

case "$TTY" in
/dev/tty1)
	startx
	;;
*)
	fortune
	;;
esac
