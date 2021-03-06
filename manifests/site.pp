node default {
  file { '/root/README':
    ensure => file,
    content => 'This is a readme',
    owner   => 'root',
  }
}

/*******************************

concat { '/root/README':
  mode  => '0644',
  owner => 'root',
  group => 'root',
}

concat::fragment { 'README_fa':
  target  => '/root/README',
  content => "CONCAT Function -- another piece a\n",
}

*******************************/

node 'master.puppet.vm' {
  include role::master_server
  file {'/root/README':
    ensure => file,
    content => "Welcome to ${fqdn}\n",
    owner => 'root',
  }
}
node /^web/ { 
  include role::app_server
}
node /^db/ {
  include role::db_server
}
