class clamav-milter::install (

	$clamav-milter_packages = hiera('clamav-milter_packages'),

	) inherits clamav-milter {
        
		$clamav-milter_packages.each |String $package|{
			package { $package: 
				ensure  =>  installed,
			}
		}

}
