#!/bin/sh

### symlink
ln -fs ~/dotfiles/config/.gitconfig  ~/.gitconfig
ln -fs ~/dotfiles/config/.tigrc  ~/.tigrc
ln -fs ~/dotfiles/config/.vimrc  ~/.vimrc
ln -fs ~/dotfiles/config/.tmux.conf  ~/.tmux.conf

### homebrew-bundle 
echo "start homebrew-bundle..."
brew bundle

### anyenv
if [ ! -d "~/.anyenv" ]; then
    echo "start anyenv..."

    anyenv install --init
    anyenv install nodenv
    anyenv install goenv
    exec $SHELL -l

    mkdir -p $(anyenv root)/plugins
    git clone https://github.com/znz/anyenv-update.git $(anyenv root)/plugins/anyenv-update
fi

### prezto
if [ ! -d "${ZDOTDIR:-$HOME}/.zprezto" ]; then
    echo "start prezto..."
    git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

    setopt EXTENDED_GLOB
    for rcfile in "${ZDOTDIR:-$HOME}/.zprezto/runcoms/^README.md(.N)"; do
        ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
    done
fi

### tpm
if [ ! -d "~/.tmux/plugins/tpm" ]; then
    echo "start npm..."
    mkdir -p ~/.tmux/plugins/
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi
