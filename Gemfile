#!/usr/bin/env ruby

source "https://rubygems.org"

if ENV.key?('PUPPET_VERSION')
	puppetversion = ENV['PUPPET_VERSION']
else
	puppetversion = ['~> 3.6.0']
end

gem 'rake'

group :test do
  gem 'puppet', puppetversion 
  #gem 'puppet', :git => 'https://github.com/richardc/puppet.git', :ref => '832f08b4'
  gem 'rspec-core', '~> 2.0'
  # gem 'rspec-puppet', :git => 'https://github.com/rodjek/rspec-puppet.git', :ref => '891c5794' # Known working commit SHA
  gem 'rspec-puppet',
    :git => 'https://github.com/joshcooper/rspec-puppet.git',
    :ref => '311ac19d9925767f375df2d0ee411c38ca4f9483'
  gem 'puppetlabs_spec_helper', '~> 0.4.0'
  gem 'puppet-lint'
  gem 'puppet-syntax'
  gem 'librarian-puppet', '~> 1.0'
  gem 'ci_reporter_rspec', :platforms => [:ruby_19, :ruby_20]
  gem 'simplecov', :platforms => [:ruby_19, :ruby_20]
  gem 'coveralls', :platforms => [:ruby_19, :ruby_20]
end

group :development do
  gem "puppet-blacksmith"
  gem "guard-rake"
end
