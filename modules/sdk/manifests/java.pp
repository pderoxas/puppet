class sdk::java {

  #binary file
  #file { "javasdkdir":
  #  ensure  => "directory",
  #  path    => "$sdk::sdk_root_dir/sdk",
  #  source  => "puppet:///java_sdk_repo/$sdk::sdk_version",
  #  source_permissions => "ignore",
  #  recurse => true,
  #  purge   => true,
  #  require => File['basedir'],
  #}

}
