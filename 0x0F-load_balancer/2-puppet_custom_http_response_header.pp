# Puppet manifest to install and configure Nginx

# Ensure Nginx is installed
package { 'nginx':
  ensure => installed,
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
  content => @(END),
server {
	listen 80 default_server;
	listen [::]:80 default_server;

	root /var/www/html;
	index index.html index.htm index.nginx-debian.html;

	server_name _;	

	# Add the custom header
	add_header X-Served-By $HOSTNAME;

	location / {
		try_files $uri $uri/ =404;
	}

	location /redirect_me {
		return 301 https://www.youtube.com/watch%3Fv%3DQH2-TGUlwu4;
	}

	error_page 404 /custom_404.html;
	location = /custom_404.html {
		internal;
	}
}
END
  mode    => '0644',
  owner   => 'root',
  group   => 'root',
  notify  => Service['nginx'],
}

# Start the Nginx service
service { 'nginx':
  ensure    => running,
  enable    => true,
  subscribe => File['/etc/nginx/sites-available/default'],
}
