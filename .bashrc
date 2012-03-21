c_red=`tput setaf 1`
c_green=`tput setaf 2`
c_yellow=`tput setaf 3`
c_blue=`tput setaf 4`
c_purple=`tput setaf 5`
c_cyan=`tput setaf 6`
c_white=`tput setaf 7`
c_gray=`tput setaf 8`
c_sgr0=`tput sgr0`

parse_git_branch ()
{
  if git rev-parse --git-dir >/dev/null 2>&1
  then
    gitver=$(git branch 2>/dev/null| sed -n '/^\*/s/^\* //p')
  else
    return 0
  fi
  echo -e $gitver
}

branch_color ()
{
  if git rev-parse --git-dir >/dev/null 2>&1
  then
    color=""
    if git diff --quiet 2>/dev/null >&2 
    then
      color="${c_green}"
    else
      color=${c_red}
    fi
  else
    return 0
  fi
  echo -ne $color
}

# Simple BASH function that shortens
# a very long path for display by removing
# the left most parts and replacing them
# with a leading ...
#
# the first argument is the path
#
# the second argument is the maximum allowed
# length including the '/'s and ...
# 
# from http://hbfs.wordpress.com/2009/09/01/short-pwd-in-bash-prompts/
shorten_path()
 {
  x=${1}
  len=${#x}
  max_len=$2
  if [ $len -gt $max_len ]
  then
      # finds all the '/' in
      # the path and stores their
      # positions
      #
      pos=()
      for ((i=0;i<len;i++))
      do
          if [ "${x:i:1}" == "/" ]
          then
              pos=(${pos[@]} $i)
          fi
      done
      pos=(${pos[@]} $len)
   
      # we have the '/'s, let's find the
      # left-most that doesn't break the
      # length limit
      #
      i=0
      while [ $((len-pos[i])) -gt $((max_len-3)) ]
      do
          i=$((i+1))
      done
 
      # let us check if it's OK to
      # print the whole thing
      #
      if [ ${pos[i]} == 0 ]
      then
          # the path is shorter than
          # the maximum allowed length,
          # so no need for ...
          #
          echo ${x}
       
      elif [ ${pos[i]} == $len ]
      then
          # constraints are broken because
          # the maximum allowed size is smaller
          # than the last part of the path, plus
          # '...'
          #
          echo ...${x:((len-max_len+3))}
      else
          # constraints are satisfied, at least
          # some parts of the path, plus ..., are
          # shorter than the maximum allowed size
          #
          echo ...${x:pos[i]}
      fi
  else
      echo ${x}
  fi
 }

# BASH settings
PS1='[\[$(branch_color)\]$(parse_git_branch)\[${c_sgr0}\]] \u\[${c_gray}\]@\[${c_sgr0}\]\[${c_blue}\]$(shorten_path "${PWD}" 30)\[${c_sgr0}\]: '
shopt -s histappend                     # merge history from multiple terminal
unset HISTFILESIZE                      # no file size limit
HISTSIZE=1000000                        # bigger history limit
HISTCONTROL=ignoreboth                  # ignore cmd that start with a space and duplicate cmd
HISTIGNORE='ls:bg:fg:history'
PROMPT_COMMAND='history -a; history -n' # store history immediately

# RVM mandatory
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function
