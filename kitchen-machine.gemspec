# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'kitchen/driver/machine_version.rb'
require 'English'

Gem::Specification.new do |gem|
  gem.name          = 'kitchen-machine'
  gem.version       = Kitchen::Driver::MACHINE_VERSION
  gem.license       = 'Apache 2.0'
  gem.authors       = ['Matt Wrock']
  gem.email         = ['matt@mattwrock.com']
  gem.description   = 'Kitchen::Driver::Machine - A Test Kitchen driver with no Hypervisor or cloud'
  gem.summary       = gem.description
  gem.homepage      = 'https://github.com/mwrock/kitchen-machine/'

  gem.files         = `git ls-files`.split($INPUT_RECORD_SEPARATOR)
  gem.executables   = []
  gem.require_paths = ['lib']

  gem.add_dependency 'test-kitchen', '~> 1.4'

  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'rubocop', '~> 0.37', '>= 0.37.1'
end
