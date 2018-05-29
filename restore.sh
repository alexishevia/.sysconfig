#!/bin/bash

set -e # exit if any command fails

./dotfiles.sh
./apt.sh
./snap.sh
./vim.sh
./apps/bin.sh
./apps/dropbox.sh
./apps/fiddler.sh
./apps/openshot.sh
./apps/peek.sh
./apps/postman.sh
./apps/zoom.sh
./apps/minikube.sh
./apps/sp.sh
./python.sh
./encrypted.sh restore
./nvm.sh
./git.sh
