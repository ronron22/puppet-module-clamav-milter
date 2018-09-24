class clamavmilter::install (

	$clamavmilter_packages = hiera('clamavmilter_packages'),

	) inherits clamavmilter {
        
		$clamavmilter_packages.each |String $package|{
			package { $package: 
				ensure  =>  installed,
			}
		}

}
