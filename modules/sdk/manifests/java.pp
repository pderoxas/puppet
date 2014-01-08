class sdk::java {
  #any java specific implementation can go here...

  #binary file
  file { "javasdkdir":
    ensure  => "directory",
    path    => "$sdk::basedirpath/sdk",
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
    path     => "$sdk::basedirpath/sdk/$sdk::sdk_version.txt",
    #owner    => "root",
    #group    => "root",
    require  => File['javasdkdir'],
  }

}
