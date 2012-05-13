#!/bin/sh

# install brew
/usr/bin/ruby -e "$(/usr/bin/curl -fsSL https://raw.github.com/mxcl/homebrew/master/Library/Contributions/install_homebrew.rb)"

# install packages
brew update
cat brew.list | xargs brew install