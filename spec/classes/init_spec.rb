require 'spec_helper'

# Describe the class
describe "deptest" do
  
  before :each do 
    Puppet.features.expects(:root?).returns(true).at_least_once
  end

  let(:pre_condition) { "require deptest_base::software::glassfish" }

  it { 
    Puppet::Util::Log.level = :debug
    Puppet::Util::Log.newdestination(:console)
    should compile 
  }

  
end
