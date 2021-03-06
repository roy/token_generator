# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'token_generator/version'

Gem::Specification.new do |spec|
  spec.name          = "token_generator"
  spec.version       = TokenGenerator::VERSION
  spec.authors       = ["Roy van der Meij"]
  spec.email         = ["roy@royapps.nl"]
  spec.description   = "A simple way to generate tokens"
  spec.summary       = "A simple way to generate tokens"
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
