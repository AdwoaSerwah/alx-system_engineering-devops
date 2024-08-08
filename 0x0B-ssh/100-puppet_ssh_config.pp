# This Puppet manifest configures the SSH client to use a specific private key
# and refuse password authentication by modifying /etc/ssh/ssh_config.

file { '/etc/ssh/ssh_config':
  ensure  => file,
  owner   => 'root',
  group   => 'root',
  mode    => '0644',
  content => @("EOF")
Host 100.25.177.89
    User ubuntu
    IdentityFile ~/.ssh/school
    PasswordAuthentication no
| EOF
}
