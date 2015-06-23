# == Class role_ciserver::install
#
# This class is called from role_ciserver for install.
#
class role_ciserver::install {

  package { $::role_ciserver::package_name:
    ensure => present,
  }
}
