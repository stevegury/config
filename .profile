# Homebrew
export PATH=/usr/local/sbin:/usr/local/bin:$PATH

export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/1.6/Home
export PATH=$JAVA_HOME/bin:$PATH
export PATH=~/code/ipython-0.12:$PATH

export CLICOLOR=1

alias ll='ls -lh'

export WORKSPACE=$HOME/workspace
export BIRDCAGE_HOME=$WORKSPACE/birdcage
export SCIENCE_HOME=$WORKSPACE/science

alias wk='cd $WORKSPACE'
alias b='cd $BIRDCAGE_HOME'
alias f='cd $BIRDCAGE_HOME/finagle'
alias s='cd $SCIENCE_HOME'

export SBT_PROXY_REPO=http://artifactory.local.twitter.com/repo/

export EDITOR='subl_wait'

export GOROOT=/usr/local/go
export PATH=$PATH:$GOROOT/bin

source ~/.bashrc

[[ -s "/Users/stevegury/.rvm/scripts/rvm" ]] && source "/Users/stevegury/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# run custom startup scripts
for s in ~/bin/startup/*
do
  [ -x $s ] && $s
done
