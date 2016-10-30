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
    'rpl',
    'spotify-client',
    'terminator',
    'wget',
    'xclip',
    'vim',
    'zsh',
  ]

  package { $software:
    ensure  => 'installed',
    require => Class[Apt],
  }

  include apt

  apt::source { 'google-chrome':
    location => 'http://dl.google.com/linux/chrome/deb/',
    release  => 'stable',
    repos    => 'main',
    key      => {
      'id'     => '4CCA1EAF950CEE4AB83976DCA040830F7FAC5991',
      'server' => 'dl-ssl.google.com',
    },
  }

}
