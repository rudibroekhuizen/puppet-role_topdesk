# == Class: role_topdesk
#
#
class role_topdesk (
  $username       = undef, #read from yaml data
  $password       = undef, #read from yaml data
  $url            = 'http://topdesk/tas/secure/hardware?',
  $soortid        = 'Server',
  $merkid         = 'SuperMicro',
  $budgethouderid = 'AUT',
  ){

  class { 'topdesk::hardware-add':
    username       => $username,
    password       => $password,
    url            => $url,
    soortid        => $soortid,
    merkid         => $merkid,
    budgethouderid => $budgethouderid,
  }

}
