class sdk::dotnet {
  #any .NET specific implementation can go here...


  #binary file
  file { "dotnetsdkdir":
    ensure  => "directory",
<<<<<<< HEAD
    path    => "$sdk::basedirpath/sdk",
    source  => "puppet:///dotnet_sdk_repo/$sdk::sdk_version",
    #owner   => "root",
    #group   => "root",
=======
    path    => "$sdk::sdk_root_dir/sdk",
    source  => "puppet:///dotnet_sdk_repo/$sdk::sdk_version",
    #owner   => "root",
    #group   => "root",
    source_permissions => "ignore",
>>>>>>> 904524c4de7a97f9431adc9ea27d7f259a6fc3d9
    recurse => true,
    purge   => true,
    require => File['basedir'],
  }

  #sdk version info file
  file { "dotnet_sdk_version_file":
    ensure   => "file",
<<<<<<< HEAD
    path     => "$sdk::basedirpath/sdk/$sdk::sdk_version.txt",
    #owner    => "root",
    #group    => "root",
=======
    path     => "$sdk::sdk_root_dir/sdk/$sdk::sdk_version.txt",
    #owner    => "root",
    #group    => "root",
    source_permissions => "ignore",
>>>>>>> 904524c4de7a97f9431adc9ea27d7f259a6fc3d9
    require  => File['dotnetsdkdir'],
  }
}
