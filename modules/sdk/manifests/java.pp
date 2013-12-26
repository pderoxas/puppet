class sdk::java ($java_sdk_version) inherits sdk  {
  #any java specific implementation can go here...

  notify {"Java SDK Version: $java_sdk_version ":
    withpath => true,
  }

  #binary file
  $path = "/paypal/java-sdk"
  file { "javasdkdir":
    ensure  => "directory",
    path    => $path,
    source  => "puppet:///java_sdk_repo/$java_sdk_version",
    owner   => "root",
    group   => "root",
    recurse => true,
    purge   => true,
    require => File['basedir'],
  }

  #sdk version info file
  file { "sdk_version_file":
    ensure   => "file",
    path     => "/paypal/java-sdk/$java_sdk_version.txt",
    owner    => "root",
    group    => "root",
    require  => File['javasdkdir'],
  }

}
