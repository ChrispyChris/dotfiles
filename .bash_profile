#
# ~/.bash_profile
#

##############################################################
#
# Source files
#
##############################################################

[[ -f ~/.bashrc ]] && . ~/.bashrc

##############################################################
#
# Set up PATH
#
##############################################################

PATH="$PATH:/home/chris/bin"
PATH="$PATH:/home/chris/Downloads/git-downloads/lua-language-server/bin"
PATH="$PATH:/home/chris/.local/bin"
export PATH
export npm_config_prefix="/home/chris/.local"
