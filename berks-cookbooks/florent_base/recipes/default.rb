include_recipe 'apt' # apt-get update on debian based platforms
include_recipe 'hostname'
include_recipe 'users::sysadmins'

# Remove root password if any.
execute 'rootlock' do
  command "sed -i 's/^root:[^:]*:/root:!:/' /etc/shadow"
  not_if { open('/etc/shadow').read =~ /^root:!:/ }
end

# Use dyndns if an account has been specified
unless node['ddclient']['login'].nil? || node['ddclient']['password'].nil?
  include_recipe 'ddclient'
end

node['florent_base']['packages'].each do |pkg|
  package pkg
end
