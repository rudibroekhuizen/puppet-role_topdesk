# == Class: role_topdesk
#
#
class role_topdesk (
  $url      = 'http://topdesk/tas/secure/hardware?',
  $username = undef, #read from yaml data
  $password = undef, #read from yaml data
  ){

  class { 'topdesk::hardware-add':
    url      => $url,
    username => $username,
    password => $password,
  }

}
