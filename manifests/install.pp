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
