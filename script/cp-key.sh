#!/bin/bash
cp /vagrant/script/id_rsa .ssh/
cp /vagrant/script/id_rsa.pub  .ssh/
chmod 400 .ssh/id_rsa