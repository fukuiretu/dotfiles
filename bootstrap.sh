#!/bin/sh

### symlink
ln -fs ~/dotfiles/config/.gitconfig  ~/.gitconfig
ln -fs ~/dotfiles/config/.tigrc  ~/.tigrc
ln -fs ~/dotfiles/config/.vimrc  ~/.vimrc
ln -fs ~/dotfiles/config/.tmux.conf  ~/.tmux.conf

### homebrew 
if !(type "brew" > /dev/null 2>&1); then
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

### homebrew-bundle 
echo "start homebrew-bundle..."
brew bundle

### anyenv
echo "start anyenv..."
anyenv install --init
anyenv install nodenv
anyenv install goenv
exec $SHELL -l

mkdir -p $(anyenv root)/plugins
if [ ! -d "$(anyenv root)/plugins/anyenv-update" ]; then
    git clone https://github.com/znz/anyenv-update.git $(anyenv root)/plugins/anyenv-update
fi

### prezto
if [ ! -d "${ZDOTDIR:-$HOME}/.zprezto" ]; then
    git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

    setopt EXTENDED_GLOB
    for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
        ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
    done
fi