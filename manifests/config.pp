class clamav-milter::config (

	$nodename = hiera('nodename'),
	$configuration_directory = hiera('configuration_directory'),
	$service_name = hiera('clamav-milter::service::service_name'),
    
	) inherits clamav-milter {

    file { $configuration_directory :
      ensure => present,
      sourceselect => all,
      source => ["puppet:///modules/clamav-milter/${nodename}/etc/clamav-milter","/etc/clamav-milter "],
      recurse => true,
      notify   => Service[$service_name],  
    }

}
