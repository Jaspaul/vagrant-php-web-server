# Initializes virtual hosts

class apache_vhosts {
  file {
    "/var/www":
      ensure => directory;
  }

  apache_vhosts::vhost { ['site']: }
}
