#!/bin/bash

export dotfiles_dir=~/.dotfiles

## Setup Homebrew
sh ${dotfiles_dir}/homebrew/install.sh

## Setup atom
sh ${dotfiles_dir}/atom/setup.sh

## Setup dotfiles Symlink
dotfiles=(

    zsh/zshrc
    vim/vimrc
    tig/tigrc
    git/gitconfig
    git/gitignore.global
)

echo "setup dotfiles..."
for orig_dotfile in ${dotfiles[@]}
do
    dotfile=${orig_dotfile##*/}
    ln -fs ${dotfiles_dir}/${orig_dotfile} ~/.${dotfile}
done
echo "setup dotfiles done."
