# Homebrew
export PATH=/usr/local/sbin:/usr/local/bin:$PATH

export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/1.6/Home
export PATH=$JAVA_HOME/bin:$PATH
export PATH=$PATH:~/workspace/birdcage/bin/

export CLICOLOR=1

alias ll='ls -lh'
alias b='cd $HOME/workspace/birdcage'
alias f='b && cd finagle'
alias s='b && cd finagle-smfd'

source ~/.bashrc
