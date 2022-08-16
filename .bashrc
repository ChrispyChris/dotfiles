#
# ~/.bashrc
#

# If not running interactively, don't do anything.
[[ $- != *i* ]] && return

############################################################
#
# Set up aliases.
#
############################################################
alias sudo="sudo "
alias vim="nvim"
alias ls="ls --color=auto"
alias dotfile="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"

# Luamake is for neovim lua-language-server.
alias luamake=/home/chris/Git-Downloads/lua-language-server/3rd/luamake/luamake

# Touchpad on/off.
alias touchon="synclient TouchpadOff=0"
alias touchoff="synclient TouchpadOff=1"

############################################################
#
# Set up Bash.
#
############################################################

# Set Bash prompt.
PS1="[\u@\h \w]\$ "

# Set VIM keybinds for Bash.
set -o vi
bind -m vi-command 'Control-l: clear-screen'
bind -m vi-insert 'Control-l: clear-screen'

# Set text editor.
export VISUAL=vim
export EDITOR="$VISUAL"

# Set extended pattern matching.
shopt -q -s extglob
