# == Class: role_topdesk
#
#
class role_topdesk (
  $url            = 'http://topdesk/tas/secure/hardware?',
  $arguments      = '-s -G',
  $username       = undef, #read from yaml data
  $password       = undef, #read from yaml data
  $soortid        = 'Server',
  $merkid         = 'SuperMicro',
  $budgethouderid = 'AUT',
  ){

  class { 'topdesk::hardware-add':
    url            => $url,
    arguments      => $arguments,
    username       => $username,
    password       => $password,
    soortid        => $soortid,
    merkid         => $merkid,
    budgethouderid => $budgethouderid,
  }

}
