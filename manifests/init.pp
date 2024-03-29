# == Class: role_topdesk
#
#
class role_topdesk (
  $url            = 'http://topdesktest/tas/secure/hardware?',
  $arguments      = '--verbose --output /dev/null --write-out %{response_code} --get',
  $username       = undef, #read from yaml data
  $password       = undef, #read from yaml data
  $soortid        = 'Server',
  $merkid         = 'SuperMicro',
  $budgethouderid = 'AUT',
  $leverancierid  = 'Ahead-IT',
  $configuratieid = 'C AUT',
  $statusid       = 'In Productie',
  ){

  class { 'topdesk::hardware-add':
    url             => $url,
    arguments       => $arguments,
    username        => $username,
    password        => $password,
    soortid         => $soortid,
    merkid          => $merkid,
    budgethouderid  => $budgethouderid,
    leverancierid   => $leverancierid,
    configuratieid  => $configuratieid,
    statusid        => $statusid,
  }

}
