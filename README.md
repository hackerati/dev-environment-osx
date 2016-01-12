# Development Environment Setup

# NOTE: THIS IS A VERY EARLY VERSION. DO NOT RUN THIS UNLESS YOU KNOW EXACTLY WHAT IT WILL DO!

Our standard development environment is a MacBook Pro running OSX. To configure a new machine, first make sure that you are starting with a clean, updated OSX installation. The idea is to almost entirely automate the process of setting up a new development machine.

Fork this repo and then:

```bash
$ git clone git@github.com:<my github id>/development-environment-osx.git
```
If you haven't installed Xcode yet, you will be prompted to do so. You only need the Xcode command line tools to run Git, but if you want to do any iOS or OS X development, you'll need the full Xcode install. Once Xcode is installed, repeat the following:

```bash
$ git clone git@github.com:<my github id>/development-environment-osx.git
$ cd development-environment-osx
```

Place your personal apps and environment configurations in the personal-settings directory and run:

```bash
$ ./setup.sh
```

## What's Inside:

Standard application installation and environment configuration for all development environments is in install-apps.sh, configure-development.sh and configure-osx.sh. This is stuff that every development environment should have. Reserve the personal-settings directory for individual developer preferences.

```bash
├── configure-development.sh
├── configure-osx.sh
├── dotfiles
│   └── .gitconfig
├── install-apps.sh
├── personal-settings
│   └── setup-personal.sh
└── setup.sh
```

## TODO
- install.sh should only install an app if not already installed. Brew cask doesn't see apps that were directly installed from DMG.
- need output to say what's going on
- look into more osx settings
- vim & zsh dotfiles and plugins 
- I'm sure you can think of more!

