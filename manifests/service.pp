class diskmount::service {
  service { 'hotplugd':
    ensure     => running,
    hasstatus  => true,
    hasrestart => true,
    enable     => true,
    require    => Class['diskmount::config'],
  }
}
