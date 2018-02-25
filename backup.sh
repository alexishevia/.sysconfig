#!/bin/bash

set -e # exit if any command fails

# make sure repos have no pending changes
repos="$HOME/.sysconfig?git@github.com:alexishevia/.sysconfig.git
$HOME/knowledge?git@bitbucket.org:alexishevia/knowledge.git
$HOME/Projects/Personales/faru?git@github.com:alexishevia/faru.git
$HOME/Projects/Personales/personal_finance?git@bitbucket.org:alexishevia/personal_finance.git
$HOME/Projects/FOX/dcgapi-services?git@github.com:foxbroadcasting/dcgapi-services.git"
for repo in $repos; do
  IFS='?' read -a arr <<< $repo
  dir="${arr[0]}"

  pushd $dir
  if [[ `git status --porcelain` ]]; then
    echo "ERROR: git repo $dir has pending changes"
    exit 1;
  fi
  popd;
done

# backup the ~/.ssh directory
./ssh.sh backup
