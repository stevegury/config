# Homebrew
export PATH=/usr/local/sbin:/usr/local/bin:$PATH

# Go
export GOPATH=$HOME/code/go

# Java
export JAVA_HOME=$(/usr/libexec/java_home)
export PATH=$PATH:$JAVA_HOME/bin

# ls, ll, grep
export CLICOLOR=1
export GREP_OPTIONS='--color=auto'
alias ll='ls -lh'

# Twitter standard directories
export WORKSPACE=$HOME/workspace
export SOURCE_HOME=$WORKSPACE/source
export BIRDCAGE_HOME=$SOURCE_HOME/birdcage
export SCIENCE_HOME=$SOURCE_HOME/science
alias wk='cd $WORKSPACE'
alias b='cd $BIRDCAGE_HOME'
alias s='cd $SCIENCE_HOME'
alias mvn=mvn-color
alias gbn='git symbolic-ref -q HEAD'
export PATH=~/.tools-cache/home/devprod/tools/source/git.Darwin.x86_64/bin:$PATH
export PATH=~/.tools-cache/home/devprod/packer/bin:$PATH
export PATH=~/.tools-cache/home/aurora/tools/client/bin:$PATH
alias git='time git'
# alias ocaml='rlwrap ocaml'

export SBT_PROXY_REPO=http://artifactory.local.twitter.com/repo/

# Sublime as default editor
export EDITOR='subl_wait'

# local bin PATH
export PATH=$PATH:~/bin

# source .bashrc
source ~/.bashrc

# source "$HOME/.tools-cache/setup-dottools-path.sh"
