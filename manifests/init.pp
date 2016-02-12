node default {

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
