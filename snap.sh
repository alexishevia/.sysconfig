#!/bin/bash

set -e # exit if any command fails

# install snap packages I use
sudo snap install slack --classic
sudo snap install tmux --classic
sudo snap install skype --classic
sudo snap install asciinema --classic
sudo snap install kubectl --classic
sudo snap install sublime-text --classic
sudo snap install go --classic
sudo snap install heroku --classic
sudo snap install spotify http jq robomongo gimp inkscape libreoffice chromium \
  vlc postgresql10 obs-studio

# refresh already installed snaps
sudo snap refresh
