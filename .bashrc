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
alias vim="nvim"
alias ls="ls --color=auto"
alias dotfile="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"

############################################################
#
# Bash Variables
#
############################################################

# Set Bash prompt
PS1='[\u@\h \w]\$ '

# Ignore duplicate lines and lines starting with space in the history
HISTCONTROL=ignoreboth
HISTSIZE=1000
HISTFILESIZE=2000

# Set text editor
export VISUAL=nvim
export EDITOR="$VISUAL"

# Set xcolor variable for saving picked color
export XCOLOR_FOREGROUND=""

############################################################
#
# Set Bash shell options
#
############################################################

# Set extended pattern matching
shopt -q -s extglob

# Set history to append to file for multiple Bash instances
shopt -s histappend

############################################################
#
# Set up Bash
#
############################################################



# Set VIM keybinds for Bash
set -o vi
bind -m vi-command 'Control-l: clear-screen'
bind -m vi-insert 'Control-l: clear-screen'


# Set pywal colors for terminals
(cat ~/.cache/wal/sequences &)
source ~/.cache/wal/colors-tty.sh

# Set up dircolors
eval $(dircolors /home/chris/.dir_colors)

alias luamake=/home/chris/Downloads/git_downloads/lua-language-server/3rd/luamake/luamake
