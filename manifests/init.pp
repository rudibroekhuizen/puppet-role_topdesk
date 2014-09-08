# == Class: role_topdesk
#
#
class role_topdesk (
  $url            = 'https://topdesk/tas/secure/hardware?',    #http://topdesk/tas/secure/hardware?
  $arguments      = '--insecure -s -G',                       #-s -G
  $username       = undef, #read from yaml data
  $password       = undef, #read from yaml data
  $soortid        = 'Server',
  $merkid         = 'SuperMicro',
  $budgethouderid = 'AUT',
  $leverancierid  = 'Ahead-IT',
  $configuratieid = 'C002306',
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
