
# Aliyun Mirror
````
sudo cp /etc/apt/sources.list sources.list.origin
sudo cp /vagrant/aliyun.sources.list /etc/apt/sources.list
sudo apt-get update
````

# Docker Install 
 
# Private key to linux
## Copy key from Windows
````
copy %USERPROFILE%\.ssh\id_rsa .
copy %USERPROFILE%\.ssh\id_rsa.pub .
````

## Copy key to Linux
````
cp /vagrant/id_rsa .ssh/
cp /vagrant/id_rsa.pub  .ssh/
chmod 400 .ssh/id_rsa
````

# Install java
assumption: copy jdk-8u111-linux-x64.tar.gz(\\192.168.1.19\Development\Casino\Software\java\jdk-8u111-linux-x64.tar.gz) to vagrant folder
````
sudo mkdir /usr/local/java
sudo tar -xvf /vagrant/jdk-8u111-linux-x64.tar.gz -C /usr/local/java
sudo ln -s /usr/local/java/jdk1.8.0_111/bin/java /usr/bin/java
echo 'export JAVA_HOME=/usr/local/java/jdk1.8.0_111/' >> ~/.profile
source ~/.profile
echo $JAVA_HOME
````
If need to install java security, please run
````
sudo cp java-security/local_policy.jar /usr/local/java/jdk1.8.0_111/jre/lib/security/local_policy.jar
sudo cp java-security/US_export_policy.jar /usr/local/java/jdk1.8.0_111/jre/lib/security/US_export_policy.jar


```` 

# Install maven
Assumption: copy apache-maven-3.5.0-bin.tar.gz to vagrant folder
https://mirrors.tuna.tsinghua.edu.cn/apache/maven/maven-3/3.5.0/binaries/apache-maven-3.5.0-bin.tar.gz
````
sudo mkdir /usr/local/maven
sudo tar -xvf /vagrant/apache-maven-3.5.0-bin.tar.gz -C /usr/local/maven
sudo ln -s /usr/local/maven/apache-maven-3.5.0/bin/mvn /usr/bin/mvn
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




