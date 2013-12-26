class sdk ($sdk_platform, $sdk_version) {
  notify {"GEO Location=${geo_location}, Store Number=${store_number}, SDK Platform: $sdk_platform, SDK Version: $sdk_version":
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

  case $sdk_platform {
      'java':     { Class['sdk::java'] { java_sdk_version => $sdk_version, } }
      'net':      { Class['sdk::dotnet'] { dotnet_sdk_version => $sdk_version, } }
      default:    { Class['sdk::java'] { java_sdk_version => $sdk_version, } }
    }

}

