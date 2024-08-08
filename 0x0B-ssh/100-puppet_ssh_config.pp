# This Puppet manifest configures the SSH client to use a specific private key
# and to refuse password authentication.

file { '/home/vagrant/.ssh/config':
  ensure  => file,
  owner   => 'vagrant',
  group   => 'vagrant',
  mode    => '0664',
  content => @("EOF")
Host 100.25.177.89
    User ubuntu
    IdentityFile ~/.ssh/school
    PasswordAuthentication no
| EOF
}
