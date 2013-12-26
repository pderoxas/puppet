require 'spec_helper'

describe 'sdk::java' do

  it { should contain_file('javasdkdir') }
  it { should contain_file('sdk_version_file') }

end
