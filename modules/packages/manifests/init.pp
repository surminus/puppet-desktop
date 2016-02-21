# == Class: Packages
#
class packages {
  $software = [
    'ack-grep',
    'curl',
    'git',
    'google-chrome-stable',
    'spotify-client',
    'terminator',
    'wget',
    'zsh',
  ]

  package {
    $software: ensure => 'installed'
  }

}
