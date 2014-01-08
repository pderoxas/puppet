#java SDK
#include sdk
  class {'sdk' :
          sdk_platform => hiera('sdk_platform'),
          sdk_version => hiera('sdk_version'),
        }

#include sdk::java

#.NET SDK
#include sdk::dotnet
