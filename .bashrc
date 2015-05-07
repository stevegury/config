c_blue=`tput setaf 4`
# c_cyan=`tput setaf 6`
# c_gray=`tput setaf 8`
# c_green=`tput setaf 2`
# c_purple=`tput setaf 5`
# c_red=`tput setaf 1`
c_sgr0=`tput sgr0`
# c_white=`tput setaf 7`
# c_yellow=`tput setaf 3`

# parse_git_branch ()
# {
#   if git rev-parse --git-dir >/dev/null 2>&1
#   then
#     gitver=$(git branch 2>/dev/null| sed -n '/^\*/s/^\* //p')
#   else
#     return 0
#   fi
#   echo -e $gitver
# }

# branch_color ()
# {
#   if git rev-parse --git-dir >/dev/null 2>&1
#   then
#     color=""
#     if git diff --quiet 2>/dev/null >&2
#     then
#       color="${c_green}"
#     else
#       color=${c_red}
#     fi
#   else
#     return 0
#   fi
#   echo -ne $color
# }
# BASH settings (declare terminal as xterm-256color)
#PS1='[\[$(branch_color)\]$(parse_git_branch)\[${c_sgr0}\]] \[${c_blue}\]\w\[${c_sgr0}\]: '

PS1='\[${c_blue}\]\w\[${c_sgr0}\]: '
shopt -s histappend                     # merge history from multiple terminal
unset HISTFILESIZE                      # no file size limit
HISTSIZE=1000000                        # bigger history limit
HISTCONTROL=ignoreboth                  # ignore cmd that start with a space and duplicate cmd
HISTIGNORE='ls:bg:fg:history'

### Added by the Heroku Toolbelt
#export PATH="/usr/local/heroku/bin:$PATH"

# OPAM configuration
. /Users/stevegury/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true
