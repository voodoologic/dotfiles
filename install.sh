#!/bin/zsh
for folder in emacs git misc tmux zsh
do
  stow --dotfiles $folder
done
exit 0
