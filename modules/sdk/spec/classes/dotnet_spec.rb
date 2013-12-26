require 'spec_helper'

describe 'sdk::dotnet' do

  it { should contain_file('dotnetsdkdir') }

  it { should contain_file('dotnet_sdk_version_file') }

end
