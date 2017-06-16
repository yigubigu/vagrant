#!/bin/bash
cp /vagrant/id_rsa .ssh/
cp /vagrant/id_rsa.pub  .ssh/
chmod 400 .ssh/id_rsa