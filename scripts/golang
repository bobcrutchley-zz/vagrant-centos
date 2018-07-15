#!/bin/bash
cd /tmp
curl -LO https://storage.googleapis.com/golang/go1.7.linux-amd64.tar.gz
sudo tar -C /usr/local -xvzf go1.7.linux-amd64.tar.gz
mkdir -p ~/projects/{bin,pkg,src}
echo "export PATH=$PATH:/usr/local/go/bin" >> ~/.bash_profile
echo "GOBIN=\"$HOME/projects/bin\"" >> ~/.bash_profile
echo "GOPATH=\"$HOME/projects/source\"" >> ~/.bash_profile
source /etc/profile && source ~/.bash_profile
