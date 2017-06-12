
# Aliyun Mirror

sudo cp /etc/apt/sources.list sources.list.origin
sudo cp /vagrant/aliyun.sources.list /etc/apt/sources.list
sudo apt-get update

# Docker Install 
 
# Copy key from Windows
copy %USERPROFILE%\.ssh\id_rsa .
copy %USERPROFILE%\.ssh\id_rsa.pub .

# Copy key to Linux

cp /vagrant/id_rsa .ssh/
cp /vagrant/id_rsa.pub  .ssh/
chmod 400 .ssh/id_rsa
 

# install java
assumption: copy jdk-8u111-linux-x64.tar.gz to vagrant folder
sudo mkdir /usr/local/java
sudo tar -xvf /vagrant/jdk-8u111-linux-x64.tar.gz -C /usr/local/java
sudo ln -s /usr/local/java/jdk1.8.0_111/bin/java /usr/bin/java
echo 'export JAVA_HOME=/usr/local/java/jdk1.8.0_111/' >> ~/.profile
source ~/.profile
echo $JAVA_HOME

# install maven
Assumption: copy apache-maven-3.5.0-bin.tar.gz to vagrant folder
https://mirrors.tuna.tsinghua.edu.cn/apache/maven/maven-3/3.5.0/binaries/apache-maven-3.5.0-bin.tar.gz

sudo mkdir /usr/local/maven
sudo tar -xvf /vagrant/apache-maven-3.5.0-bin.tar.gz -C /usr/local/maven
sudo ln -s /usr/local/maven/apache-maven-3.5.0/bin/mvn /usr/bin/mvn






