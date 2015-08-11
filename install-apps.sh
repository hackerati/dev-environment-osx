#!/bin/sh
#
# 

# Install Homebrew
if test ! $(which brew)
then
  echo "  Installing Homebrew for you."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
  echo "  Updating Homebrew for you."
  brew update
fi

# Install Cask for installation and management of GUI OSX applications
brew install caskroom/cask/brew-cask

# GUI OSX applications
brew cask install dropbox
brew cask install google-chrome
brew cask install flash
brew cask install spotify
brew cask install slack
brew cask install skype
brew cask install evernote
brew cask install virtualbox
brew cask install vagrant
brew cask install iterm2
brew cask install screenhero

# Command line applications
brew install zsh
brew install wget
brew install git
brew install tree
