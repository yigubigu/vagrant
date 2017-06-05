curl -sSL http://acs-public-mirror.oss-cn-hangzhou.aliyuncs.com/docker-engine/internet | sh
echo "DOCKER_OPTS=\"\$DOCKER_OPTS --registry-mirror=https://sc9jx4el.mirror.aliyuncs.com\"" | sudo tee -a /etc/default/docker
sudo service docker restart
