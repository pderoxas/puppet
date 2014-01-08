class sdk::java {
  #any java specific implementation can go here...

  #binary file
  file { "javasdkdir":
    ensure  => "directory",
<<<<<<< HEAD
    path    => "$sdk::basedirpath/sdk",
=======
    path    => "$sdk::sdk_root_dir/sdk",
>>>>>>> 904524c4de7a97f9431adc9ea27d7f259a6fc3d9
    source  => "puppet:///java_sdk_repo/$sdk::sdk_version",
    #owner   => "root",
    #group   => "root",
    recurse => true,
    purge   => true,
    require => File['basedir'],
  }

  #sdk version info file
  file { "java_sdk_version_file":
    ensure   => "file",
<<<<<<< HEAD
    path     => "$sdk::basedirpath/sdk/$sdk::sdk_version.txt",
=======
    path     => "$sdk::sdk_root_dir/sdk/$sdk::sdk_version.txt",
>>>>>>> 904524c4de7a97f9431adc9ea27d7f259a6fc3d9
    #owner    => "root",
    #group    => "root",
    require  => File['javasdkdir'],
  }

}
