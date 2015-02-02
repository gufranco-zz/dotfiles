#!/bin/sh
# The MIT License (MIT)
#
# Copyright (c) 2014 Gustavo Franco
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.

echo "Changing shell to zsh"
chsh -s `which zsh`

echo "Cloning repository"
git clone --recursive https://github.com/gufranco/dotfiles.git ~/.dotfiles

echo "Configuring vim"
if [ -f ~/.vim ] || [ -h ~/.vim ]; then
  mv ~/.vim ~/.vim-old
fi
ln -s ~/.dotfiles/vim ~/.vim

if [ -f ~/.vimrc ] || [ -h ~/.vimrc ]; then
  mv ~/.vimrc ~/.vimrc-old
fi
ln -s ~/.dotfiles/vimrc ~/.vimrc

echo "Configuring Sublime Text"
if [ -f ~/.config/sublime-text-2/Packages/User/Preferences.sublime-settings ] || [ -h ~/.config/sublime-text-2/Packages/User/Preferences.sublime-settings ]; then
  mv ~/.config/sublime-text-2/Packages/User/Preferences.sublime-settings ~/.config/sublime-text-2/Packages/User/Preferences.sublime-settings.old
fi
ln -s ~/.dotfiles/Preferences.sublime-settings ~/.config/sublime-text-2/Packages/User/Preferences.sublime-settings


echo "Configuring Git"
if [ -f ~/.gitconfig ] || [ -h ~/.gitconfig ]; then
  mv ~/.gitconfig ~/.gitconfig-old
fi
ln -s ~/.dotfiles/gitconfig ~/.gitconfig

if [ -f ~/.gitglobalignore ] || [ -h ~/.gitglobalignore ]; then
  mv ~/.gitglobalignore ~/.gitglobalignore-old
fi
ln -s ~/.dotfiles/gitglobalignore ~/.gitglobalignore


echo "Configuring oh-my-zsh"
if [ -f ~/.zshrc ] || [ -h ~/.zshrc ]; then
  mv ~/.zshrc ~/.zshrc-old
fi
ln -s ~/.dotfiles/zshrc ~/.zshrc

if [ -f ~/.oh-my-zsh ] || [ -h ~/.oh-my-zsh ]; then
  mv ~/.oh-my-zsh ~/.oh-my-zsh-old
fi
ln -s ~/.dotfiles/oh-my-zsh ~/.oh-my-zsh


echo "Configuring SSH"
if [ -f ~/.ssh ] || [ -h ~/.ssh ]; then
  mv ~/.ssh ~/.ssh-old
fi
ln -s ~/.dotfiles/ssh ~/.ssh
