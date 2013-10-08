# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'theampm/version'

Gem::Specification.new do |spec|
  spec.name          = "theampm"
  spec.version       = Theampm::VERSION
  spec.authors       = ["nate"]
  spec.email         = ["nate@cityposh.com"]
  spec.description   = %q{am/pm convenience methods on integers to create time objects}
  spec.summary       = %q{Call 1.am or 1430.pm}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_runtime_dependency 'chronic'
end
