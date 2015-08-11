#!/bin/sh
#

# Require password immediately after sleep or screen saver begins
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0

# Set Finder defaults
defaults write com.apple.finder FXPreferredViewStyle Nlsv # Open Finder in list view. 
defaults write com.apple.finder AppleShowAllFiles TRUE # Show dotfiles 
defaults write NSGlobalDomain AppleShowAllExtensions -bool true # Show all filename extensions 
defaults write com.apple.finder ShowStatusBar -bool true # Show status bar
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true # Display path as Finder title
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false # Don't warn when changing file extension

# Show the ~/Library folder
# sudo chflags nohidden ~/Library

# To apply the list view globally to all folders, we also need to delete the .DS_Store files.
sudo find / -name .DS_Store -delete; killall Finder

# Set Dock defaults
defaults write com.apple.dock wvous-tl-corner -int 5 # Hot corner is top left
defaults write com.apple.dock wvous-tl-modifier -int 0

# Set up Safari for development.
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari "com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled" -bool true
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true

# Don't create .DS_Store files on network volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
