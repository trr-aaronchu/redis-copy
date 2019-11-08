# encoding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'redis-copy/version'

Gem::Specification.new do |spec|
  spec.name          = 'redis-copy'
  spec.version       = RedisCopy::VERSION

  spec.authors       = ["Some people"]
  spec.email         = ['redis-copy@yaauie.com']
  spec.summary       = 'Copy the contents of one redis db to another'
  spec.description   = 'A command-line utility built for copying the ' +
                       'contents of one redis db to another over a ' +
                       'network. Supports all data types, persists ttls, ' +
                       'and attempts to be as efficient as possible.'
  spec.homepage      = 'https://github.com/yaauie/redis-copy'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(/^bin\//) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(/^(test|spec|features)\//)
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 1.9.3'

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'

  spec.add_runtime_dependency     'redis', '~> 3.3.5', '>= 3.0.6'
  spec.add_runtime_dependency     'activesupport'
  spec.add_runtime_dependency     'implements', '~> 0.0.2'
end
