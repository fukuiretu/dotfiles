#!/bin/bash

sh homebrew/install.sh

cd

[ -f .zshrc ] && rm -f .zshrc
ln -fs ~/.dotfiles/zsh/zshrc .zshrc

[ -f .vimrc ] && rm -f .vimrc
ln -fs ~/.dotfiles/vim/vimrc .vimrc

[ -f .tigrc ] && rm -f .tigrc
ln -fs ~/.dotfiles/tig/tigrc .tigrc

[ -f .gitconfig ] && rm -f .gitconfig
ln -fs ~/.dotfiles/git/gitconfig .gitconfig

[ -f .gitignore.global ] && rm -f .gitignore.global
ln -fs ~/.dotfiles/git/gitignore.global .gitignore.global

cd ~/.atom

[ -f config.cson ] && rm -f config.cson
ln -fs ~/.dotfiles/atom/config.cson config.cson

[ -f keymap.cson ] && rm -f keymap.cson
ln -fs ~/.dotfiles/atom/keymap.cson keymap.cson

[ -f snippets.cson ] && rm -f snippets.cson
ln -fs ~/.dotfiles/atom/snippets.cson snippets.cson

[ -f styles.less ] && rm -f styles.less
ln -fs ~/.dotfiles/atom/styles.less styles.less
