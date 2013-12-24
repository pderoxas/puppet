class sdk::dotnet inherits sdk {
  #any .NET specific implementation can go here...

  file { "dotnet_readme":
    ensure   => "file",
    path     => "/paypal/sdk/readme.txt",
    content  => "This is just some .NET specific stuff...",
    owner    => "root",
    group    => "root",
    require  => File['sdkdir'],
  }
}
