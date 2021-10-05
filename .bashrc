#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

############################################################
#
# Set up aliases
#
############################################################
alias ls='ls --color=auto'
alias dotfile='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

############################################################
#
# Set up Bash
#
############################################################

# Set Bash prompt
PS1='[\u@\h \w]\$ '

# Set VIM keybinds for Bash
set -o vi
bind -m vi-command 'Control-l: clear-screen'
bind -m vi-insert 'Control-l: clear-screen'

# Set text editor
export VISUAL=vim
export EDITOR="$VISUAL"

# Set extended pattern matching
shopt -q -s extglob

# Set pywal colors for terminals
(cat ~/.cache/wal/sequences &)
source ~/.cache/wal/colors-tty.sh
