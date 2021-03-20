#!/bin/zsh
# for $folder in git misc tmux zsh emacs;
for folder in emacs
do
  stow --dotfiles $folder
done
exit 0
