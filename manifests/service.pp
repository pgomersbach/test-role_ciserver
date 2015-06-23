# == Class role_ciserver::service
#
# This class is meant to be called from role_ciserver.
# It ensure the service is running.
#
class role_ciserver::service {

  service { $::role_ciserver::service_name:
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
  }
}
