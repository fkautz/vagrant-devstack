# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://atlas.hashicorp.com/search.
  config.vm.box = "centos/7"

#  config.vm.network "private_network", ip: "192.168.50.4",
#    nic_type: "virtio"
  config.vm.network "private_network", ip: "192.168.254.31"
  # Create a private network, which allows host-only access to the machine
  config.vm.provider 'virtualbox' do |v, override|
    v.customize ["modifyvm", :id, "--nictype1", "virtio"]
    #v.memory = 4096
    v.memory = 8192
  end

  config.vm.provision :ansible do |ansible|
    ansible.playbook = "playbook.yml"
  end

  if Vagrant.has_plugin?("vagrant-cachier")
    config.cache.scope = :box
    config.cache.synced_folder_opts = {
      type: :nfs,
      mount_options: ['rw', 'vers=3', 'tcp', 'nolock']
    }
    #config.cache.enable :pip
  end


end
