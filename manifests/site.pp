node default {
  file {'/root/README':
    ensure  => file,
    content => 'Ensure the Puppet server is running',
    owner   => 'root',
  } 
  file {'/root/README':
    owner => 'root',
  }
}
