class config (
  $user = 'laura',
) {
  file { "/home/$user/surminus":
    ensure  => directory,
    mode    => '0755',
    owner   => $user,
    group   => $user,
  }

  file { "/home/$user/dotfiles":
    ensure  => directory,
    mode    => '0755',
    owner   => $user,
    group   => $user,
  }

  vcsrepo { "/home/$user/surminus/dotfiles":
    ensure   => latest,
    owner    => $user,
    group    => $user,
    provider => git,
    require  => [ Package["git"] ],
    source   => "https://github.com/surminus/dotfiles.git",
    revision => 'master',
  }

  vcsrepo { "/home/$user/.vim/bundle/Vundle.vim":
    ensure   => latest,
    owner    => $user,
    group    => $user,
    provider => git,
    require  => [ Package["git"] ],
    source   => "https://github.com/VundleVim/Vundle.vim.git",
    revision => 'master',
  }

  file { "/home/$user/.vimrc":
    ensure => link,
    target => "/home/$user/surminus/dotfiles/vimrc-ubuntu",
  }

  file { "/home/$user/.zshrc":
    ensure => link,
    target => "/home/$user/surminus/dotfiles/zshrc-ubuntu",
  }

  file { "/home/$user/.gitconfig":
    ensure => link,
    target => "/home/$user/surminus/dotfiles/gitconfig",
  }

  file { "/home/$user/.config/terminator":
    ensure => directory,
    owner  => $user,
    group  => $user,
    mode   => 0755,
  }

  file { "/home/$user/.config/terminator/config":
    ensure  => link,
    target  => "/home/$user/surminus/dotfiles/terminator-config",
    require => Package['terminator'],
  }
}
