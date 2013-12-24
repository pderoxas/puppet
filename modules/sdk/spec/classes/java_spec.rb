require 'spec_helper'

describe 'sdk::java' do

  #make sure it inherits the base class
  it { should contain_class('sdk') }

  #make sure it creates the readme file
  it { should contain_file('java_readme') }

end
