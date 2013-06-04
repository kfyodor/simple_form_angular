# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'simple_form_angular/version'

Gem::Specification.new do |spec|
  spec.name          = "simple_form_angular"
  spec.version       = SimpleFormAngular::VERSION
  spec.authors       = ["Fyodor Konukhov"]
  spec.email         = ["fedor@tandp.ru"]
  spec.description   = %q{AngularJS ng-attributes in Simple Form}
  spec.summary       = %q{AngularJS ng-attributes in Simple Form}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
