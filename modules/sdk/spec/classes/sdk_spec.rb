require 'spec_helper'

describe 'sdk' do

  #make sure it creates the base directory
  it do
    should contain_file('basedir').with({
      'ensure'  => 'directory',
      'path'    => '/paypal',
      'owner'   => 'root',
      'group'   => 'root',
      'recurse' => true,
      'purge'   => true,
    })
  end

end
