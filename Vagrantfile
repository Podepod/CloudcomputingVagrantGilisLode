# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.define "ansible" do |ansible|
    ansible.vm.hostname = "ansible"
    ansible.vm.box = "ubuntu/focal64"
    ansible.vm.network "private_network", ip: "192.168.33.13"
    ansible.vm.network "forwarded_port", guest: 22, host: 2222
    ansible.vm.provision "shell", path: "scripts/ansible_script.sh"
  end

  config.vm.define "webserver1" do |webserver1|
    webserver1.vm.hostname = "webserver1"
    webserver1.vm.box = "ubuntu/focal64"
    webserver1.vm.network "private_network", ip: "192.168.33.10"
    webserver1.vm.network "forwarded_port", guest: 80, host: 8080
    webserver1.vm.provision "shell", path: "scripts/server_vms_script.sh"
  end

  config.vm.define "webserver2" do |webserver2|
    webserver2.vm.hostname = "webserver2"
    webserver2.vm.box = "ubuntu/focal64"
    webserver2.vm.network "private_network", ip: "192.168.33.11"
    webserver2.vm.network "forwarded_port", guest: 80, host: 8081
    webserver2.vm.provision "shell", path: "scripts/server_vms_script.sh"
  end

  config.vm.define "databaseserver1" do |databaseserver1|
    databaseserver1.vm.hostname = "databaseserver1"
    databaseserver1.vm.box = "ubuntu/focal64"
    databaseserver1.vm.network "private_network", ip: "192.168.33.12"
    databaseserver1.vm.network "forwarded_port", guest: 3306, host: 33306
    databaseserver1.vm.provision "shell", path: "scripts/server_vms_script.sh"
    databaseserver1.vm.provision "shell", path: "scripts/database_script.sh"
  end
end


# zie afbeeldingen