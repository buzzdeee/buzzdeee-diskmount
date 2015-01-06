# Private class, do not use directly.
# The class takes care about the
# configuration of the service.

class diskmount::config (
  $user
){

  file { '/etc/hotplug/attach':
    ensure  => present,
    owner   => 'root',
    group   => '0',
    mode    => '0755',
    content => template('diskmount/attach.erb'),
    require => Class['diskmount::install'],
    notify  => Class['diskmount::service'],
  }
}
