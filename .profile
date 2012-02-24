# Homebrew
export PATH=/usr/local/sbin:/usr/local/bin:$PATH

export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/1.6/Home
export PATH=$JAVA_HOME/bin:$PATH
export PATH=~/workspace/birdcage/bin/:$PATH

export CLICOLOR=1

alias ll='ls -lh'
alias b='cd $HOME/workspace/birdcage'
alias f='b && cd finagle'
alias p='b && cd finagle-performance'

export BIRDCAGE_HOME=~/workspace/birdcage
export birdcage=$BIRDCAGE_HOME

source ~/.bashrc

[[ -s "/Users/stevegury/.rvm/scripts/rvm" ]] && source "/Users/stevegury/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
