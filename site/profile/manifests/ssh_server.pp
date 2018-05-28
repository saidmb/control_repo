class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDHq7t/XtVrxZ5Jy5Y3tf1cNt3IqGicXXOxYiSpVQL3f9n59JC0swiHgHlILeoqpYIgyaTK0SGWpzDSatIunp4dz6b6+xfZBr9W4UVYwWvE8AHMoW9tsDujuZhE2689qhXEAQXar8laNVabdulBrEnr4TteopoWPuzvGS5vhOyyOm75RuufHK7qEJFt1fSHKqPQNVwgyouj4BItVPhQjpDAOePYf3ifUPvhWK3ARNcd0g9CI8btbnvEzV328zoykoRNzJ/DAXQiF+xiMhKCUj6hqSy0pgzgOzkHl/QMwvKK50dPmBwrks1IVjuDsIjqIBMxdvVVj7c+Y0XLPSlfhUe/',
	}  
}
