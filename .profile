# Homebrew
export PATH=/usr/local/sbin:/usr/local/bin:$PATH

export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/1.6/Home
export PATH=$JAVA_HOME/bin:$PATH
export PATH=~/workspace/birdcage/bin/:$PATH
export PATH=~/code/ipython-0.12:$PATH

export CLICOLOR=1

alias ll='ls -lh'
alias b='cd $HOME/workspace/birdcage'
alias f='b && cd finagle'
alias p='b && cd finagle-performance'
alias s='cd $HOME/workspace/science'

export BIRDCAGE_HOME=~/workspace/birdcage
export birdcage=$BIRDCAGE_HOME
export SBT_PROXY_REPO=http://artifactory.local.twitter.com/repo/

export EDITOR='subl -w'

export GOROOT=/usr/local/go
export PATH=$PATH:$GOROOT/bin

source ~/.bashrc

[[ -s "/Users/stevegury/.rvm/scripts/rvm" ]] && source "/Users/stevegury/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
