class sdk ($sdk_platform, $sdk_version) {
  notify {"GEO Location=${::geo_location}, Store Number=${::store_number}, Group Name: ${::group_name}, SDK Platform: $sdk_platform, SDK Version: $sdk_version":
    withpath => true,
  }

  case $operatingsystem {
      centos, redhat, debian, ubuntu: { $basedirpath = '/paypal' }
      windows: { $basedirpath = 'C:\paypal' }
    }

  #base directory of sdk
  file { "basedir":
    ensure  => "directory",
    path    => $basedirpath,
    recurse => true,
    purge   => true,
  }

  case $sdk_platform {
      'java':     { include sdk::java }
      'dotnet':   { include sdk::dotnet }
      default:    { include sdk::java }
  }

}

