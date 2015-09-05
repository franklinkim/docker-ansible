# -*- mode: ruby -*-
# vi: set ft=ruby :


$script = <<SCRIPT

sudo apt-get install -y software-properties-common
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update
sudo apt-get install -y ansible

echo "Done :P"
SCRIPT

Vagrant.configure("2") do |config|
  config.vbguest.no_remote = true
  config.vbguest.auto_update = false

  config.vm.box = 'ubuntu/trusty64'

  config.vm.provision "shell", inline: $script
end
