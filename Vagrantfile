# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

HOSTNAME = "mydebianbox"
DOMAIN   = "awesome.dev"
BOX      = "chef/debian-7.4"
RAM      = "256"
IP       = "192.168.56.100"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = BOX
  config.vm.host_name = HOSTNAME + "." + DOMAIN
  config.vm.network "private_network", ip: IP

  config.vm.provision :shell do |shell|
    shell.inline = 'apt-get update && apt-get -q -y install puppet-common'
  end

  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = 'puppet/manifests'
    puppet.manifest_file = 'site.pp'
    puppet.module_path = 'puppet/modules'
  end

end