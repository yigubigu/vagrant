#!/bin/bash
curl -sSL http://acs-public-mirror.oss-cn-hangzhou.aliyuncs.com/docker-engine/internet | sh
echo "DOCKER_OPTS=\"\$DOCKER_OPTS --registry-mirror=https://sc9jx4el.mirror.aliyuncs.com\"" | sudo tee -a /etc/default/docker
sudo service docker restart
# curl -L https://github.com/docker/compose/releases/download/1.13.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
# to support download compose offline, it maybe slow to download from github
sudo cp /vagrant/docker-compose-install/docker-compose-Linux-x86_64 /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose