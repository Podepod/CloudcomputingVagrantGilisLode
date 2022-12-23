# Student

```
Name:           Lode Gilis 
Student Number: r0840272
Class:          Cloud for SSS
```

# Opdracht

## Vagrant
Create a vagrant file to install 4 virtual machines.
- [x] 3 ubuntu servers with a static ip on the internal network without further configuration. Forward a port to each servers port 80.
- [x] 1 ubuntu server with a static ip, ansible installed and the host file created or copied to /etc/ansible/hosts.
```
    [webservers]
    Server1 ……
    Server2 ……
    [database servers]
    Server3 ……
```

## Ansible

- [x] Use the command: `ansible all –m ping` to make sure the connections are ok. 
    - [x] You need to add the ip addresses to the known hosts. The easiest way to do that is to manually ssh into each machine one time.
- [x] Create a playbook that will install apache on all the servers
- [x] Create a playbook that will remove apache from all the servers
- [x] Create an ansible **role** that:
    - [x] Installs apache and php on Server1 and Server2 (=webservers) and copy a test php file to the root.
    - [x] Installs mysql on Server3 and create a database
- [x] It is best to create the ansible role in the /vagrant shared folder so that you don’t lose your ansible files when you reload your vagrant configuration.


# Gebruik

```powershell
# start the VM's
vagrant up

# Wait for the VM's to be made...

# SSH into VM (in de ansible server in dit geval)
vagrant ssh ansible

# Manually ssh into every server before using ansible
# --> run every script in /home/vagrant/ssh_scripts
# --> answer: yes
# --> exit ssh sessioin
# --> run the next script

# Check if ansible connection works
ansible all -m ping

# Run the ansible playbook on the ansible server
# - first go into ansible folder
cd /home/vagrant/ansible

# - run the playbook you want
ansible-playbook <playbook-name>.yml

#   - install webservers
ansible-playbook install_apache.yml

#   - install database
ansible-playbook install_mysql.yml

# Visit the website available on localhost:8080 and localhost:8081
```