#!/bin/bash
set -e
apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
apt-key fingerprint 0EBFCD88
add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
apt-get install docker-ce docker-ce-cli containerd.io -y
docker run -d -p 80:80 --restart always --name mzuitt sanynikonov/mzuiit:latest
docker run -d --restart always --name watchtower -v /var/run/docker.sock:/var/run/docker.sock containrrr/watchtower --interval 30 mzuiit
exit 0