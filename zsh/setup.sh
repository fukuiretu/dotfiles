#!/bin/bash

[ ! -d ~/.zsh ] && mkdir ~/.zsh
ln -fs ${dotfiles_dir}/zsh/zshenv ~/.zshenv
ln -fs ${dotfiles_dir}/zsh/zshrc ~/.zsh/.zshrc
