class clamavmilter::config (

	$nodename = hiera('nodename'),
	$configuration_directory = hiera('configuration_directory'),
	$service_name = hiera('clamavmilter::service::service_name'),
    
	) inherits clamavmilter {

    file { $configuration_directory :
      ensure => present,
      sourceselect => all,
      source => ["puppet:///modules/clamavmilter/${nodename}/etc/clamavmilter","/etc/clamavmilter "],
      recurse => true,
      notify   => Service[$service_name],  
    }

}
