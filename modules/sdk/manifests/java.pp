class sdk::java inherits sdk {
  #any java specific implementation can go here...

  file { "java_readme":
    ensure   => "file",
    path     => "/paypal/sdk/readme.txt",
    content  => "This is just some java specific stuff...",
    owner    => "root",
    group    => "root",
    require  => File['sdkdir'],
  }
}
