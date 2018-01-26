#!/bin/bash

dotfiles='.ackrc .bash_profile .bashrc .gitconfig .gitmessage .psqlrc .tmux.conf .eslintrc.js .vimrc'

for df in $dotfiles; do
  if [ -e ~/$df ]
  then
    rm ~/$df
  fi
  cp $df ~/$df
done
