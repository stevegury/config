#!/bin/sh

# install brew
#ruby <(curl -fsSkL raw.github.com/mxcl/homebrew/go)

# install packages
brew update
cat brew.list | xargs brew install