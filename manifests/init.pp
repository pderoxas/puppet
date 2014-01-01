#java SDK
#include sdk
  $sdk = hiera('sdk')

  class {'sdk' :
          sdk_platform => $sdk['platform'],
          sdk_version => $sdk['version'],
        }




#include sdk::java

#.NET SDK
#include sdk::dotnet
