# == Class: role_topdesk
#
#
class role_topdesk (
  $username = undef,
  $password = undef,
  ){

  class { 'topdesk::hardware-add':
    username => $username,
    password => $password,
  }

}
