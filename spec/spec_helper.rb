require 'rubygems'
require 'puppetlabs_spec_helper/module_spec_helper'
require 'hiera'
require 'rspec-puppet'

RSpec.configure do |c|
  c.hiera_config = 'spec/fixtures/hiera/hiera.yaml'
  c.manifest_dir = 'spec/fixtures/manifests'
  c.module_path  = 'spec/fixtures/modules'

  c.default_facts = {
    :kernel => 'Linux',
    :operatingsystem => 'CentOS',
    :operatingsystemrelease => '6.5',
    :lsbmajdistrelease => '6',
    :osfamily => 'RedHat',
    :architecture => 'x86_64',
    :concat_basedir => "/tmp/concat",
  }
end
