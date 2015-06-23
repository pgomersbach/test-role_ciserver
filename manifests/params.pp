# == Class role_ciserver::params
#
# This class is meant to be called from role_ciserver.
# It sets variables according to platform.
#
class role_ciserver::params {
  case $::osfamily {
    'Debian': {
      $package_name = 'role_ciserver'
      $service_name = 'role_ciserver'
    }
    'RedHat', 'Amazon': {
      $package_name = 'role_ciserver'
      $service_name = 'role_ciserver'
    }
    default: {
      fail("${::operatingsystem} not supported")
    }
  }
}
