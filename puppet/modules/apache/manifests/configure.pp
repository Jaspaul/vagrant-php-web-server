# Defines our configuration method

define apache::configure() {
  file {
    "/etc/apache2/${name}":
      source => "puppet:///modules/apache/${name}",
      require => Package['apache2'],
      notify => Service['apache2'];
  }
}
