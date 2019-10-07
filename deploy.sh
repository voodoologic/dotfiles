#! /bin/bash
if [ -f ~/.bashrc ]; then 
  mv ~/.bashrc ~/.bashrc.backup
fi
ln -s ~/dotfiles/bashrc ~/.bashrc
if [ -f ~/.gitignore ]; then 
  mv ~/.gitignore ~/.gitignore.backiup
fi
ln -s ~/dotfiles/gitignore ~/.gitignore
if [ -f ~/.gitconfig ]; then 
  mv ~/.gitconfig ~/.gitconfig.backup
fi
ln -s ~/dotfiles/gitconfig ~/.gitconfig
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
if [ -f ~/.back_aliases ]; then 
  mv ~/.bash_aliases ~/.bash_aliases.backup
fi
ln -s ~/dotfiles/bash_aliases ~/.bash_aliases
if [ -f ~/.tmuxinator ]; then 
  mv ~/.tmuxinator ~/.tmuxinator.backup
fi
ln -s ~/dotfiles/tmuxinator ~/.tmuxinator
source ~/.bashrc
