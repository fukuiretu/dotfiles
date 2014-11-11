#!/bin/bash

# Check for Homebrew,Install if we don't have it
if test ! $(which brew); then
    echo "Installing homebrew..."
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update homebrew recipes
printf "Update recipes? [Y/n]: " && read ANS
if [ "${ANS}" = "Y" ]; then
    brew update
fi

# Upgrade all
printf "Upgrade? [Y/n]: " && read ANS
if [ "${ANS}" = "Y" ]; then
    brew upgrade
fi

# Add Repository
brew tap homebrew/dupes
brew tap homebrew/versions
brew tap homebrew/binary
brew tap peco/peco

packages=(

    # GNU core utilities (those that come with OS X are outdated)
    coreutils

    # GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed
    findutils

    # Shell
    zsh
    bash

    # Editor
    vim

    # Multiplexe
    tmux

    # Git
    git
    hub
    gitsh
    gist
    tig

    # Image
    imagemagick

    # Utils
    wget
    rsync
    curl
    tree
    openssl
    libyaml
    readline
    markdown
    jq
    peco
    ctags

    # Languages
    rbenv
    ruby-build
)

echo "installing binaries..."
brew install ${packages[@]} && brew cleanup

# Casks
brew install caskroom/cask/brew-cask

# Apps
apps=(

    # editor
    atom

    # Launcher
    alfred

    # Browser
    google-chrome

    # Terminal
    iterm2

    # Communication
    skype
    slack

    # VM
    virtualbox
    vagrant
    vagrant-manager

    # ime
    google-japanese-ime

    # etc
    dash
    github
    shiftit
    dropbox
    xtrafinder
    appcleaner
)

# Install apps to /Applications
echo "installing apps..."
brew cask install --appdir="/Applications" ${apps[@]}

# We need to link it
brew cask alfred link
