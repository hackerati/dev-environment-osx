#!/bin/sh

# Install application software
./install-apps.sh

# Configure OSX
./configure-osx.sh

# Configure development tools, link dotfiles, etc.
./configure-development.sh

# Perform any personal installations or configurations
./personal-settings/setup-personal.sh
