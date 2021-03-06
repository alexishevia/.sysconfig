#!/usr/bin/env bash

set -e # exit if any command fails

if ! [ -x "$(command -v go)" ]; then
  wget -O /tmp/golang.tar.gz https://golang.org/dl/go1.14.4.linux-amd64.tar.gz
  sudo tar -xzf /tmp/golang.tar.gz -C /usr/local
  mkdir -p $HOME/go/bin
fi

if ! [ -x "$(command -v dlv)" ]; then
  go get github.com/go-delve/delve/cmd/dlv
fi

if ! [ -x "$(command -v goimports)" ]; then
  go get golang.org/x/tools/cmd/goimports
fi

if ! [ -x "$(command -v glide)" ]; then
  curl https://glide.sh/get | sh
fi

if ! [ -x "$(command -v dep)" ]; then
  curl https://raw.githubusercontent.com/golang/dep/master/install.sh | sh
fi

if ! [ -x "$(command -v cpe-cli)" ]; then
  go get github.com/foxbroadcasting/cpe-cli && go install github.com/foxbroadcasting/cpe-cli
fi

if ! [ -x "$(command -v go-template-mock)" ]; then
  go get github.com/nlewo/consul-template-mock && go install github.com/nlewo/consul-template-mock
fi

if ! [ -x "$(command -v golint)" ]; then
  go get golang.org/x/lint/golint && go install golang.org/x/lint/golint
fi
