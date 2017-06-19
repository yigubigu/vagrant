
# Aliyun Mirror
````
cd /vagrant/script/
./aliyun-apt.sh
````

 
# Private key to linux
## Copy key from Windows
````
cd script
copy-key.bat
````

## Copy key to Linux

````
cd /vagrant/script
./cp-key.sh
chmod 400 .ssh/id_rsa
````

## Delete Key
````
del-key.bat
````

# Install java
assumption: copy jdk-8u111-linux-x64.tar.gz(\\192.168.1.19\Development\Casino\Software\java\jdk-8u111-linux-x64.tar.gz) to vagrant folder
````
cd /vagrant/script
./install-java.sh
````


# Install maven
Assumption: copy apache-maven-3.5.0-bin.tar.gz to vagrant folder
https://mirrors.tuna.tsinghua.edu.cn/apache/maven/maven-3/3.5.0/binaries/apache-maven-3.5.0-bin.tar.gz
````
cd /vagrant/
./install-maven.sh
````


# Install NodeJs
Assumption (download https://nodejs.org/dist/v6.11.0/node-v6.11.0-linux-x64.tar.xz and put to /vagrant)

````
sudo mkdir /home/vagrant/nodejs
sudo tar -xvf /vagrant/node-v6.11.0-linux-x64.tar.xz -C /home/vagrant/nodejs
sudo ln -s /home/vagrant/nodejs/node-v6.11.0-linux-x64/bin/node /usr/bin/node
sudo ln -s /home/vagrant/nodejs/node-v6.11.0-linux-x64/bin/npm /usr/bin/npm
````

## Install Nodejs Aliyun Mirror
````
echo 'alias cnpm="npm --registry=https://registry.npm.taobao.org   --cache=$HOME/.npm/.cache/cnpm   --disturl=https://npm.taobao.org/dist   --userconfig=$HOME/.cnpmrc"' >>  ~/.zshrc && source ~/.zshrc
````




