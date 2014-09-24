require 'spec_helper'

# Describe the class
describe "deptest" do
  
  let(:precondition) { "class {'glassfish': }" }

#  let(:params) do {
#    :rps_db_host => 'localhost',
#    :rps_db_port => '1521',
#    :rps_db_sid  => 'XE',
#    :rps_version => '2.6.30'
#  }
#  end
  
  it { 
    Puppet::Util::Log.level = :debug
    Puppet::Util::Log.newdestination(:console)
    should compile 
  }

  
end
