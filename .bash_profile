#
# ~/.bash_profile
#

#############################################################
#
# Source files
#
#############################################################

[[ -f ~/.bashrc ]] && . ~/.bashrc

#############################################################
#
# Set up PATH
#
#############################################################

PATH="$PATH:/home/chris/bin"
PATH="$PATH:/home/chris/Git-Downloads/lua-language-server/bin"
PATH="$PATH:/home/chris/.local/bin"
export PATH

# Sets npm global install to local user rather than root.
export npm_config_prefix="/home/chris/.local"
