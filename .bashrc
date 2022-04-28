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
alias ls='ls --color=auto'
alias dotfile='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# Touchpad on/off.
alias touchon="xinput --enable 'SynPS/2 Synaptics TouchPad'"
alias touchoff="xinput --disable 'SynPS/2 Synaptics TouchPad'"

# Luamake is for neovim lua-language-server.
alias luamake=/home/chris/Git-Downloads/lua-language-server/3rd/luamake/luamake

############################################################
#
# Bash variables.
#
############################################################

# Set Bash prompt.
PS1='\[\033[0m\033[38;5;17;48;5;213m\][\u@\h \w]\$\[\033[0m\] '

# Ignore duplicate lines and lines starting with space in the history.
HISTCONTROL=ignoreboth
HISTSIZE=1000
HISTFILESIZE=2000

# Set the text editor.
export VISUAL=nvim
export EDITOR="$VISUAL"

############################################################
#
# Set Bash shell options.
#
############################################################

# Set extended pattern matching.
shopt -q -s extglob

# Set history to append to file for multiple Bash instances.
shopt -s histappend

############################################################
#
# Set up Bash.
#
############################################################

# Set VIM keybinds for Bash
set -o vi
bind -m vi-command 'Control-l: clear-screen'
bind -m vi-insert 'Control-l: clear-screen'

# Set up dircolors.
eval $(dircolors /home/chris/.dir_colors)
