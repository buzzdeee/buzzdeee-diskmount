# Private class, do not use directly.
# Class takes care about the installation
# and initial configuration of the
# required packages.

class diskmount::install {

  package { 'hotplug-diskmount':
    ensure => present,
  }
  exec { 'initialize':
    command => '/usr/local/libexec/hotplug-diskmount init',
    creates => '/vol/.db',
    require => Package['hotplug-diskmount'],
  }
}
