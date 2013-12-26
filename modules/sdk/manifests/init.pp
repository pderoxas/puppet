class sdk {
  notify {"GEO Location=${geo_location}, Store Number=${store_number}":
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

  $sdk_platform = hiera('sdk_platform')
  
  notify {"SDK Platform: $sdk_platform ":
    withpath => true,
  }

  case $sdk_platform {
      'java':     { Class['sdk::java'] { java_sdk_version => hiera('sdk_version') } }
      'net':      { Class['sdk::dotnet'] { dotnet_sdk_version => hiera('sdk_version') } }
      default:    { Class['sdk::java'] { java_sdk_version => hiera('sdk_version') } }
    }

}

