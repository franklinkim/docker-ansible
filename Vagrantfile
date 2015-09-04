# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vbguest.no_remote = true
  config.vbguest.auto_update = false

  config.vm.define 'trusty' do |instance|
    instance.vm.box = 'ubuntu/trusty64'
  end
end
