#!/bin/zsh
for $folder in [git, misc, tmux, zsh];
  stow --dotfiles $folder
end
