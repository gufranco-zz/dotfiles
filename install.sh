#!/bin/sh

echo "Configuring vim"
ln -s ~/.dotfiles/vim ~/.vim
ln -s ~/.dotfiles/vimrc ~/.vimrc

echo "Configuring Git"
ln -s ~/.dotfiles/gitconfig ~/.gitconfig
ln -s ~/.dotfiles/gitglobalignore ~/.gitglobalignore

echo "Configuring oh-my-zsh"
ln -s ~/.dotfiles/zshrc ~/.zshrc
ln -s ~/oh-my-zsh ~/.oh-my-zsh
