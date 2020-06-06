#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

brew install coreutils
brew install vim --with-override-system-vi
brew install grep
brew install openssh
brew install screen
brew install php
brew install gmp
brew install autojump
brew install bat
brew install cowsay
brew install ffmpeg
brew install fortune
brew install imagemagick
brew install imgcat
brew install htop
brew install lolcat
brew install mpv
brew install rsync
brew install streamlink
brew install themekit
brew install yadm
brew install youtube-dl

# Remove outdated versions from the cellar.
brew cleanup
