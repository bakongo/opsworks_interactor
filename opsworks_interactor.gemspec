# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'opsworks_interactor/version'

Gem::Specification.new do |spec|
  spec.name        = 'opsworks_interactor'
  spec.version     = OpsworksInteractor::VERSION
  spec.authors     = ['Sam Davies', 'Trae Robrock']
  spec.email       = ['seivadmas@gmail.com', 'trobrock@gmail.com']
  spec.summary     = 'Easily do zero-downtime deploys on Amazon Opsworks'
  spec.description = 'A ruby class that allows concurrent-safe, synchronized, zero-downtime rolling deploys to servers running on Amazon Opsworks'
  spec.homepage    = 'https://github.org/trobrock/opworks_interactor'
  spec.license     = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'aws-sdk', '~> 2'
end
