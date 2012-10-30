# Homebrew
export PATH=/usr/local/sbin:/usr/local/bin:$PATH

# Java
export JAVA_HOME=$(/usr/libexec/java_home)
export PATH=$PATH:$JAVA_HOME/bin

# Python
export PATH=$PATH:~/code/ipython

# Go language
export GOROOT=/usr/local/go
export PATH=$PATH:$GOROOT/bin

# ls, ll, grep
export CLICOLOR=1
export GREP_OPTIONS='--color=always'
alias ll='ls -lh'

# Twitter standard directories
export WORKSPACE=$HOME/workspace
export BIRDCAGE_HOME=$WORKSPACE/birdcage
export SCIENCE_HOME=$WORKSPACE/science
alias wk='cd $WORKSPACE'
alias b='cd $BIRDCAGE_HOME'
alias f='cd $BIRDCAGE_HOME/finagle'
alias s='cd $SCIENCE_HOME'
alias mvn=mvn-color
alias ocaml='rlwrap ocaml'

export SBT_PROXY_REPO=http://artifactory.local.twitter.com/repo/

# Sublime as default editor
export EDITOR='subl_wait'

# Dropbox bin
export PATH=$PATH:~/Dropbox/bin

# local bin PATH
export PATH=$PATH:~/bin

# source .bashrc
source ~/.bashrc

# Load RVM into a shell session *as a function*
[[ -s "/Users/stevegury/.rvm/scripts/rvm" ]] && source "/Users/stevegury/.rvm/scripts/rvm"
