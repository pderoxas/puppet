class sdk::dotnet ($dotnet_sdk_version) inherits sdk  {
  #any .NET specific implementation can go here...

  notify {".NET SDK Version: $dotnet_sdk_version ":
    withpath => true,
  }

  #binary file
#  $path = "/paypal/dotnet-sdk"
#  file { "dotnetsdkdir":
#    ensure  => "directory",
#    path    => $path,
#    source  => "puppet:///sdk_repo/$dotnet_sdk_version",
#    owner   => "root",
#    group   => "root",
#    recurse => true,
#    purge   => true,
#    require => File['basedir'],
#  }

  #sdk version info file
  file { "dotnet_sdk_version_file":
    ensure   => "file",
    path     => "/paypal/net-sdk/$dotnet_sdk_version.txt",
    owner    => "root",
    group    => "root",
    require  => File['dotnetsdkdir'],
  }

}
