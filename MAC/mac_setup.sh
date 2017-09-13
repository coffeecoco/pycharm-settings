#!/bin/bash

# Install Xcode and CLI tools
xcode-select --install

# Update Ruby
curl -sSL https://get.rvm.io | bash -s stable
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
defaults write NSGlobalDomain KeyRepeat -int 0
defaults write com.apple.dock autohide-time-modifier -int 0
# show all files
defaults write com.apple.finder AppleShowAllFiles YES
killall Finder
sudo spctl --master-disable


# Development
brew install python3
brew install npm
npm install -g @angular/cli

# Require setting user.name and email per-repo:
$ git config --global user.useConfigOnly true
# Remove email address from global config:
$ git config --global --unset-all user.email

# intsall Dev Software
brew install python3
brew cask install iterm2
brew cask install pycharm
brew cask install sublime-text
brew cask install postman
brew cask install psequel
brew cask install docker
brew cask install minikube
brew cask install google-chrome
brew cask install alfred

# xhybe virtualization driver for mac os
brew install docker-machine-driver-xhyve
sudo chown root:wheel $(brew --prefix)/opt/docker-machine-driver-xhyve/bin/docker-machine-driver-xhyve
sudo chmod u+s $(brew --prefix)/opt/docker-machine-driver-xhyve/bin/docker-machine-driver-xhyve
minikube config set vm-driver xhyve
# brew tap dbcli/tap && brew tap-pin dbcli/tap && brew install pgcli

# Create symlink for the subl
ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl /usr/local/bin/subl
defaults write com.apple.LaunchServices LSHandlers -array-add '{LSHandlerContentType=public.plain-text;LSHandlerRoleAll=com.sublimetext.3;}'

# install gcloud SDK: /Applications
curl https://sdk.cloud.google.com --install-dir=/Applications/ --disable-prompts | zsh
source ~/.zshrc
gcloud components install kubectl


## App Store SOFTWARE
brew install mas
# LastPass
mas install 926036361   
# Spark
mas install 1176895641
# LightShot
mas install 526298438


