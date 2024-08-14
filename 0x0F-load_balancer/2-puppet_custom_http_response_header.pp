# This Puppet manifest installs Nginx and configures it to include a custom HTTP response header

# Install Nginx package
package { 'nginx':
  ensure => installed,
}

# Create the directory for custom configuration files (if not already present)
file { '/etc/nginx/sites-available':
  ensure => directory,
}

file { '/etc/nginx/sites-enabled':
  ensure => directory,
}

# Define the Nginx configuration file using inline content
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
  notify  => Service['nginx'],
}

# Ensure the default configuration file is linked from sites-enabled
file { '/etc/nginx/sites-enabled/default':
  ensure => link,
  target => '/etc/nginx/sites-available/default',
  notify => Service['nginx'],
}

# Ensure the Nginx service is running and enabled
service { 'nginx':
  ensure    => running,
  enable    => true,
  subscribe => File['/etc/nginx/sites-available/default'],
}
