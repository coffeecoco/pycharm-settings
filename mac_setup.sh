#!/bin/bash
defaults write NSGlobalDomain KeyRepeat -int 0
defaults write com.apple.dock autohide-time-modifier -int 0
defaults write com.apple.finder AppleShowAllFiles YES
killall Finder

#sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

brew install python3
brew cask install iterm2
brew cask install skype
brew cask install slack
brew cask install pycharm-ce
brew cask install sublime-text
brew cask install postman
brew cask install psequel
brew cask install docker

ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl /usr/local/bin/subl

# install gcloud SDK: /Applications
curl https://sdk.cloud.google.com | bash
source ~/.zshrc
gcloud components install kubectl 