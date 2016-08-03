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
#
# DO NOT INSTALL 1Password from brew cask. That version does not include iCloud sync support. Use the App Store version instead.
#
brew cask install crashplan
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
brew cask install dockertoolbox

# Command line applications
brew install zsh
brew install wget
brew install git
brew install tree
brew install node
brew install python3
