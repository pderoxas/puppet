require 'spec_helper'

describe 'sdk::dotnet' do

  #make sure it inherits the base class
  it { should contain_class('sdk') }

  #make sure it creates the readme file
  it { should contain_file('dotnet_readme') }

end
