class sdk {
  #get data from hiera
  $sdk_version=hiera('sdk_version')
 
notify {"GEO Location=${geo_location}, Store Number=${store_number}, SDK Version: $sdk_version ":
    withpath => true,
}

  #base directory of sdk
  file { "basedir":
    ensure  => "directory",
    path    => "/paypal",
    owner   => "root",
    group   => "root",
    recurse => true,
    purge   => true,
  }

  #binary file
  $path = "/paypal/sdk"
  file { "sdkdir":
    ensure  => "directory",
    path    => $path,
    source  => "puppet:///sdk_repo/$sdk_version",
    owner   => "root",
    group   => "root",
    recurse => true,
    purge   => true,
    require => File['basedir'],
  }

  #sdk version info file
  file { "sdk_version_file":
    ensure   => "file",
    path     => "/paypal/sdk/sdk_version.txt",
    content  => $sdk_version,
    owner    => "root",
    group    => "root",
    require  => File['sdkdir'],
  }

}

