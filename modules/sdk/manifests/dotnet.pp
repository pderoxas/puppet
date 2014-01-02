class sdk::dotnet {
  #any .NET specific implementation can go here...


  #binary file
  file { "dotnetsdkdir":
    ensure  => "directory",
    path    => "$sdk::sdk_root_dir/sdk",
    source  => "puppet:///dotnet_sdk_repo/$sdk::sdk_version",
    #owner   => "root",
    #group   => "root",
    source_permissions => "ignore",
    recurse => true,
    purge   => true,
    require => File['basedir'],
  }

  #sdk version info file
  file { "dotnet_sdk_version_file":
    ensure   => "file",
    path     => "$sdk::sdk_root_dir/sdk/$sdk::sdk_version.txt",
    #owner    => "root",
    #group    => "root",
    source_permissions => "ignore",
    require  => File['dotnetsdkdir'],
  }
}
