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
		key    => 'aAAAAB3NzaC1yc2EAAAADAQABAAABAQDHf7tatGUGXO7xbOGTGKmML0FRBWGraBQS6BeXZVBCqg6Nh0nhsrdERL78PZLUzMH3mhPcPMWbtbN5BO42tLuBYl4Mk/yIv0oP6jmWDy/f37FTZiSCZ0sNDW6WIvlst9StaWfCwKoiYix07onwFlu9yTXB94T/3OAMAjs6Nif6mepKhwMkkO3wftq0cvCCt5WNZwWuppwx1cm+saPGtdeH/A8U18QuIyVr60noduAoYs2X+avLA4PFSmUNzC86/Jv6azKCzLwjZ29iP+ApE7QIDjeOtaeCEzms+DTRILV7a40zu6KRZcA/8Z+D7cKUnSNqVEHnL6J5YqjUW68Xj4al',
	}  
}
