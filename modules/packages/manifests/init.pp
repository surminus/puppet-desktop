# == Class: Packages
#
class packages {
  $software = [
    'ack-grep',
    'curl',
    'git',
    'gnupg2',
    'google-chrome-stable',
    'network-manager-openconnect-gnome',
    'pass',
    'spotify-client',
    'terminator',
    'wget',
    'zsh',
  ]

  package {
    $software: ensure => 'installed'
  }

}
