default['florent_base'] = {
  packages: [
    'emacs24-nox',
    'htop',
    'iotop',
    'lsof',
    'tree',
  ]
}

# Setting correct hostname
default['set_fqdn'] = "#{node.hostname}.lan"

# Overriding ddclient defaults
default['ddclient']['login'] = nil
default['ddclient']['password'] = nil
default['ddclient']['server'] = nil
default['ddclient']['domain'] = node['fqdn']
