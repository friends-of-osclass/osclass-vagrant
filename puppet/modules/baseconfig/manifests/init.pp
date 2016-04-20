# == Class: baseconfig
#
# Performs initial configuration tasks for all Vagrant boxes.
#
class baseconfig {
  exec { 'apt-get update':
    command => '/usr/bin/apt-get update';
  }

  package {[
      'git',
      'git-flow',
      'emacs',
      'tree'
    ]:
    ensure => present
  }
}
