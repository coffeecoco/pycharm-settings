#!/bin/bash

# OS X settings
defaults write NSGlobalDomain KeyRepeat -int 0
defaults write com.apple.dock autohide-time-modifier -int 0
defaults write com.apple.finder AppleShowAllFiles YES
killall Finder
sudo spctl --master-disable

# Development
brew install python3
# install ZSH
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

brew cask install iterm2
brew cask install pycharm-ce
brew cask install sublime-text
brew cask install docker

# Create symlink for the subl
ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl /usr/local/bin/subl
defaults write com.apple.LaunchServices LSHandlers -array-add '{LSHandlerContentType=public.plain-text;LSHandlerRoleAll=com.sublimetext.3;}'

# install gcloud SDK: /Applications
curl https://sdk.cloud.google.com | bash
source ~/.zshrc
gcloud components install kubectl 


# OPTIONAL: 
# brew cask install sequel-pro
#brew cask install spotify
# brew cask install hipchat
brew cask install slack
brew cask install skype
