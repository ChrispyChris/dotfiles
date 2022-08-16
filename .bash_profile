#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc


# Set up dircolors
eval "$(dircolors /home/chris/.dircolors)"


# Set up PATH
PATH="$PATH:/home/chris/bin"
PATH="$PATH:/home/chris/Git-Downloads/lua-language-server/bin"
export PATH
