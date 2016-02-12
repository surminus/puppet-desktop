# == Class: Packages::Launcher
#
class packages::launcher {
  $shortcuts = [
    '\'terminator.desktop\'',
    '\'steam.desktop\'',
    '\'google-chrome.desktop\'',
    '\'ubuntu-software-center.desktop\'',
    '\'unity-control-center.desktop\'',
    '\'unity://running-apps\'',
    '\'spotify.desktop\'',
    '\'openttd.desktop\'',
    '\'unity://expo-icon\'',
    '\'unity://devices\'',
  ]

  $items = join($shortcuts, ', ')

  notify { "$items": }

  exec { 'launcher_shortcuts':
    command => "gsettings set com.canonical.Unity.Launcher favorites \"[ $items ]\"",
    path    => '/usr/bin/',
    user    => 'laura',
  }
}
