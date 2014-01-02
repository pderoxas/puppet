#java SDK
#include sdk

  class {'sdk' :
          sdk_platform => hiera('platform'),
          sdk_version => hiera('version'),
          sdk_root_dir => hiera('rootDir'),
        }




#include sdk::java

#.NET SDK
#include sdk::dotnet
