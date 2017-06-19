#!/bin/bash
sudo mkdir /usr/local/java
sudo tar -xvf /vagrant/jdk-8u111-linux-x64.tar.gz -C /usr/local/java
sudo ln -s /usr/local/java/jdk1.8.0_111/bin/java /usr/bin/java
echo 'export JAVA_HOME=/usr/local/java/jdk1.8.0_111/' >> ~/.profile
source ~/.profile
echo $JAVA_HOME
sudo cp java-security/local_policy.jar /usr/local/java/jdk1.8.0_111/jre/lib/security/local_policy.jar
sudo cp java-security/US_export_policy.jar /usr/local/java/jdk1.8.0_111/jre/lib/security/US_export_policy.jar
