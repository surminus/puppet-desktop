# == Class: Packages
#
class packages {
  $software = [
    'git',
    'terminator',
    'google-chrome-stable',
    'spotify-client',
  ]

  package {
    $software: ensure => 'installed'
  }

}
