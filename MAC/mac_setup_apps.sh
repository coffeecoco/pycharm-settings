#!/bin/bash

# intsall Dev Software
brew cask install iterm2
brew cask install pycharm
brew cask install sublime-text
brew cask install postman
brew cask install psequel
brew cask install docker
brew cask install minikube
brew cask install google-chrome
brew cask install alfred
brew cask install clipy
brew cask install messenger

# xhybe virtualization driver for mac os
brew install docker-machine-driver-xhyve
sudo chown root:wheel $(brew --prefix)/opt/docker-machine-driver-xhyve/bin/docker-machine-driver-xhyve
sudo chmod u+s $(brew --prefix)/opt/docker-machine-driver-xhyve/bin/docker-machine-driver-xhyve
minikube config set vm-driver xhyve
# brew tap dbcli/tap && brew tap-pin dbcli/tap && brew install pgcli

# Create symlink for the subl
ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl /usr/local/bin/subl
defaults write com.apple.LaunchServices LSHandlers -array-add '{LSHandlerContentType=public.plain-text;LSHandlerRoleAll=com.sublimetext.3;}'

## App Store SOFTWARE
brew install mas
# LastPass
mas install 926036361   
# Spark
mas install 1176895641
# LightShot
mas install 526298438
# Magnet
mas install 441258766

