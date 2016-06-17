#!/usr/local/bin/bash

# get Vim and MacVim
export PATH=/usr/local/bin:$PATH
brew update
brew install vim && brew install macvim
brew install neovim/neovim/neovim
brew linkapps macvim

# setup preferred configuration for Vim and MacVim
if [ -e ~/.vim ]; then 
  rm -rf ~/.vim; 
fi

if [ -e ~/.vimrc]; then 
  rm -f ~/.vimrc; 
fi

# get and setup config files for using Vim
git clone http://github.com/nhejazi/myvimconfig.git ~/.vim
sh ~/.vim/_setup.sh
cd ~/.vim; sh _update.sh; cd

# get and setup config files for using Neovim
git clone http://github.com/nhejazi/myneovimconfig.git ~/.config/nvim
sh ~/.config/nvim/_setup.sh

# get the diff-so-fancy tool for `git diff`
npm install -g diff-so-fancy
