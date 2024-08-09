# Puppet manifest to install and configure Nginx

# Ensure Nginx is installed
package { 'nginx':
  ensure => installed,
}

# Ensure the Nginx service is running and enabled
service { 'nginx':
  ensure     => running,
  enable     => true,
  subscribe  => Package['nginx'],
}

# Create the custom HTML file to be served at the root
file { '/var/www/html/index.html':
  ensure  => file,
  content => "Hello World!\n",
  require => Package['nginx'],
}

# Create the Nginx configuration file with redirection
file { '/etc/nginx/sites-available/default':
  ensure  => file,
  content => @("END"),
server {
    listen 80 default_server;
    listen [::]:80 default_server;

    root /var/www/html;
    index index.html;

    location / {
        try_files $uri $uri/ =404;
    }

    location /redirect_me {
        return 301 https://www.youtube.com/watch?v=QH2-TGUlwu4;
    }
}
END
  mode    => '0644',
  owner   => 'root',
  group   => 'root',
  notify  => Service['nginx'],
}

# Restart Nginx to apply changes
exec { 'restart_nginx':
  command     => '/usr/sbin/nginx -s stop && /usr/sbin/nginx',
  refreshonly => true,
  subscribe   => File['/etc/nginx/sites-available/default'],
}
