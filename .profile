# Homebrew
export PATH=/usr/local/sbin:/usr/local/bin:$PATH

# Java
export JAVA_HOME=$(/usr/libexec/java_home)
export PATH=$PATH:$JAVA_HOME/bin

# Python
export PATH=$PATH:~/code/ipython-0.12

# Go language
export GOROOT=/usr/local/go
export PATH=$PATH:$GOROOT/bin

# ls, ll
export CLICOLOR=1
alias ll='ls -lh'

# Twitter standard directories
export WORKSPACE=$HOME/workspace
export BIRDCAGE_HOME=$WORKSPACE/birdcage
export SCIENCE_HOME=$WORKSPACE/science
alias wk='cd $WORKSPACE'
alias b='cd $BIRDCAGE_HOME'
alias f='cd $BIRDCAGE_HOME/finagle'
alias s='cd $SCIENCE_HOME'

export SBT_PROXY_REPO=http://artifactory.local.twitter.com/repo/

# Sublime as default editor
export EDITOR='subl_wait'

# Dropbox bin
export PATH=$PATH:~/Dropbox/bin

# source .bashrc
source ~/.bashrc

# run custom startup scripts
for s in ~/bin/startup/*
do
  [ -x $s ] && $s
done

# Load RVM into a shell session *as a function*
[[ -s "/Users/stevegury/.rvm/scripts/rvm" ]] && source "/Users/stevegury/.rvm/scripts/rvm"
