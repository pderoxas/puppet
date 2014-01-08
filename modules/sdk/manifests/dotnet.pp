class sdk::dotnet {
  #any .NET specific implementation can go here...


  #binary file
  file { "dotnetsdkdir":
    ensure  => "directory",
    path    => "$sdk::basedirpath/sdk",
    source  => "puppet:///dotnet_sdk_repo/$sdk::sdk_version",
    #owner   => "root",
    #group   => "root",
    recurse => true,
    purge   => true,
    require => File['basedir'],
  }

  #sdk version info file
  file { "dotnet_sdk_version_file":
    ensure   => "file",
    path     => "$sdk::basedirpath/sdk/$sdk::sdk_version.txt",
    #owner    => "root",
    #group    => "root",
    require  => File['dotnetsdkdir'],
  }
}
