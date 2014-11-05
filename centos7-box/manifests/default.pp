Exec {
  path => '/usr/local/bin:/usr/bin:/usr/sbin:/sbin:/bin'
}

File {
  backup => '.puppet-bak'
}

$disabled = [
  'auditd',
  'iprdump',
  'iprinit',
  'iprupdate',
  'polkit',
  'postfix',
  'tuned',
  'avahi-daemon',
  'firewalld'
]

service { $disabled:
  enable => false
}

exec { 'yum-update':
  command => 'yum update -y',
  timeout => 0,
}

$add_package = [
  'php',
  'php-mbstring',
  'php-pear',
  'ruby',
  'wget',
  'curl',
  'git'
]

package { $add_package:
  allow_virtual => true,
  ensure  => latest,
  require => Exec['yum-update']
}


# SELinux
file { '/etc/selinux/config':
  ensure  => file,
  content => template('selinux_config'),
  force => true
}

