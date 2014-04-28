# Installs packages for Apache

class apache {
  package {
    ['apache2', 'apache2-mpm-prefork']:
      ensure => present;
  }

  service {
    'apache2':
      ensure => running,
      require => Package['apache2'];
  }

  apache::configure { 
    ['apache2.conf', 'envvars', 'ports.conf']: 
  }
}
