# This Puppet manifest ensures the ULIMIT value is set in /etc/default/nginx

exec { 'update_ulimit':
  command => 'sed -i \'s/^ULIMIT=.*/ULIMIT=\"-n 65536\"/\' /etc/default/nginx',
  path    => ['/usr/bin', '/bin'],
  unless  => 'grep -q "^ULIMIT=-n 65536" /etc/default/nginx',
  notify  => Exec['restart_nginx'],
}

exec { 'restart_nginx':
  command     => '/etc/init.d/nginx restart',
  path        => ['/usr/bin', '/bin'],
  refreshonly => true,
}
