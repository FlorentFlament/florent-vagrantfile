# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/vivid64"
  config.vm.provider 'virtualbox' do |vb|
    vb.memory = '1024'
  end

  def chef_config(chef)
    chef.cookbooks_path = ["berks-cookbooks/"]
    chef.data_bags_path = "data_bags/"
    chef.roles_path = "roles/"
  end
  
  # dev_box provisionning
  config.vm.define 'dev-box' do |dev|
    dev.vm.hostname = 'dev-box'
    dev.vm.provision 'chef_zero' do |chef|
      chef_config(chef)
      chef.add_role 'dev_box'
    end
  end
end
