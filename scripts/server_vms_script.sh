#!/bin/bash

# Update Ubuntu
apt-get update

# Copy ansible server public ssh key to authorized keys
echo "$(cat /vagrant/keys/id_rsa.pub)" >> /home/vagrant/.ssh/authorized_keys