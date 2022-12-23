#!/bin/bash

# Install Ansible
apt-get update
apt-get install -y software-properties-common
apt-add-repository --yes --update ppa:ansible/ansible
apt-get install -y ansible

# Create or copy the host file to /etc/ansible/hosts
cp /vagrant/ansibleHostsFileToCopy /etc/ansible/hosts

# Create an ansible folder to easy access ansible stuff
mkdir /home/vagrant/ansible
cp -r /vagrant/ansible_stuff/* /home/vagrant/ansible/
chown -R vagrant:vagrant /home/vagrant/ansible

# Generate a private key to login to other servers
ssh-keygen -b 2048 -t rsa -f /home/vagrant/.ssh/id_rsa -q -N ""
chown vagrant:vagrant /home/vagrant/.ssh/id_rsa*

# Copy public key to accessible folder
cp .ssh/id_rsa.pub /vagrant/keys

# Copy scripts to ssh into servers more easy
mkdir /home/vagrant/ssh_scripts
cp /vagrant/scripts/ssh_* /home/vagrant/ssh_scripts/

# install some ansible stuff for the mysql installation role
ansible-galaxy collection install community.mysql
apt-get install python3-dev default-libmysqlclient-dev build-essential pip -y
pip install mysqlclient;

#mysql -u cloud -h 192.168.33.10 -p -P 3306 CloudDB