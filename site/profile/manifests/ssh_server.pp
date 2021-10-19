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
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCzsoIaz4S19f80TDsTssRQzbXdt4VRT3KsktIhourj/JsV+VspYKE1fgmP0WaNtCElu151u9Cccjny/wBt9Wy/6d45rmfIKBihMAkscL6lgInVS4tU1dy55pqD/yYustlGUHbuYhOHJBy6GKpLTtfBz8GJ165v8spLYb2yBR8f7eZ4UbEj7Ex2kTvHQVZtG26HFPeSeCMTtxwwI6hTJQNjLuNmlkZivsgCaGMU+sDHyAE7P+Fdi9NA8DnCMS7uDR5oEHA1RkXhrPOUzteTWLlWGh6GNXnT+qMlrIL3m8u8wHUdHEHxbEce+QhUeW4xuUto0xMd9/5pJL00LdKtXbud',
	}  
}
