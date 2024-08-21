# This Puppet manifest ensures the file descriptor limits
# for the 'holberton' user are set correctly

exec { 'update_hard_limit':
  command => 'sed -i \'s/^holberton[ \t]*hard[ \t]*nofile.*/holberton hard nofile 65536/\' /etc/security/limits.conf',
  path    => ['/usr/bin', '/bin'],
}

exec { 'update_soft_limit':
  command => 'sed -i \'s/^holberton[ \t]*soft[ \t]*nofile.*/holberton soft nofile 65536/\' /etc/security/limits.conf',
  path    => ['/usr/bin', '/bin'],
}
