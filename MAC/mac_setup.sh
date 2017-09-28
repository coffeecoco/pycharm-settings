#!/bin/bash

# Install Xcode and CLI tools
xcode-select --install

# Update Ruby
\curl -sSL https://get.rvm.io | bash -s stable
# Install Brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# install ZSH
curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh
# add zsh-autosuggestions
git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions

cp .zshrc ~/

source ~/.zshrc

## OS X settings
# faster keyboard:
defaults write NSGlobalDomain KeyRepeat -int 1
# Repeat on hold
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false
# Dock hide time
defaults write com.apple.dock autohide-time-modifier -int 0
# show all files
defaults write com.apple.finder AppleShowAllFiles YES
# for open/save dialogs
defaults write -g AppleShowAllFiles -bool true
# Copy Text from Quick Look
defaults write com.apple.finder QLEnableTextSelection -bool true

killall Finder
killall Dock
sudo spctl --master-disable

# Development
brew update
brew install python3
brew install npm
npm install -g @angular/cli

# Require setting user.name and email per-repo:
$ git config --global user.useConfigOnly true
# Remove email address from global config:
$ git config --global --unset-all user.email
\cp gitignore_global ~/.gitignore_global
\cp gitconfig ~/.gitconfig
git config --global core.excludesfile ~/.gitignore_global

# install gcloud SDK: 
export CLOUDSDK_CORE_DISABLE_PROMPTS=1 
export CLOUDSDK_INSTALL_DIR=/Applications/
curl https://sdk.cloud.google.com | zsh

source ~/.zshrc

gcloud --quiet components install kubectl
# Add info about kubectl config in the zsh promt 
brew tap superbrothers/zsh-kubectl-prompt git://github.com/superbrothers/zsh-kubectl-prompt.git
brew install zsh-kubectl-prompt

defaults write com.apple.dashboard mcx-disabled -boolean YES
#defaults write com.apple.dashboard mcx-disabled -boolean NO

#restart dock after it
killall Dock
#---------------------------------------------------------------------
