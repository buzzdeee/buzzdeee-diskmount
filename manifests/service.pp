# Private class, do not use directly.
# Takes care about managing the service.

class diskmount::service {
  service { 'hotplugd':
    ensure     => running,
    hasstatus  => true,
    hasrestart => true,
    enable     => true,
    require    => Class['diskmount::config'],
  }
}
