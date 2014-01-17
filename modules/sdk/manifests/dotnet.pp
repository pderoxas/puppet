class sdk::dotnet {
  #any .NET specific implementation can go here...


  #binary file
  #file { "dotnetsdkdir":
  #  ensure  => "directory",
  #  path    => "$sdk::sdk_root_dir/sdk",
  #  source  => "puppet:///dotnet_sdk_repo/$sdk::sdk_version",
  #  source_permissions => "ignore",
  #  recurse => true,
  #  purge   => true,
  #  require => File['basedir'],
  #}

}
