# -*- mode: ruby -*-
# vi: set ft=ruby ts=2 :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  # give our box a useful name
  config.vm.define 'ctl/chef-mgmt'

  config.vm.box = 'ubuntu/trusty64'
  config.vm.hostname = 'chef-mgmt'
  config.ssh.forward_agent = true

  config.vm.provision :shell, path: 'provision.sh'
end
