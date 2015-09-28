include_recipe 'apt' # Perform apt-get update of debian based platforms
include_recipe 'timezone-ii'
include_recipe 'chef-dk'

node['florent_dev']['packages'].each do |pkg|
  package pkg
end

# Installing required packages prior to execute vagrant recipe
include_recipe 'vagrant'
include_recipe 'users-files'
