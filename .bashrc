#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w \$\[\033[00m\] '

export QT_QPA_PLATFORMTHEME=qt6ct
export BROWSER=/usr/bin/firefox
export EDITOR=/usr/bin/nvim
export SUDO_EDITOR=/usr/bin/nvim
export TERMINAL=/usr/bin/kitty

. "$HOME/.cargo/env"
