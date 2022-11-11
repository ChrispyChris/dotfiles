#
# ~/.bash_profile
#

##############################################################
#
# Source files.
#
##############################################################

[[ -f ~/.bashrc ]] && . ~/.bashrc

##############################################################
#
# Set up PATH.
#
##############################################################

PATH="$PATH:/home/chris/bin"
PATH="$PATH:/home/chris/Git_Downloads/lua-language-server/bin"
PATH="$PATH:/home/chris/.local/bin"
PATH="/home/chris/.local/share/pnpm:$PATH"
export PATH
