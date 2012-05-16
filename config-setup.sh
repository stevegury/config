#!/bin/sh

cp -r \
  .bashrc \
  .profile \
  .vim \
  .vimrc \
  Library \
  bin \
  ~

source ~/.profile
source ~/.bashrc