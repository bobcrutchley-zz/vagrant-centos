#!/bin/bash
rm -rf ~/.vim
# Pathogen
rm -rf ~/.vim/autoload
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
# vimrc
cp -f /vagrant/resources/vimrc ~/.vimrc
#####################
# Plugins and Bundles
#####################
# Polygot
mkdir -p ~/.vim/pack/default/start
git clone https://github.com/sheerun/vim-polyglot ~/.vim/pack/default/start/vim-polyglot
# The NERD Tree
git clone https://github.com/scrooloose/nerdtree ~/.vim/bundle/nerdtree
# vim-gradle
git clone https://github.com/tfnico/vim-gradle ~/.vim/bundle/vim-gradle
# vim-groovy
git clone https://github.com/thecodesmith/vim-groovy ~/.vim/bundle/vim-groovy
