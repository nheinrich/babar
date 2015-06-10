# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'babar/version'

Gem::Specification.new do |spec|
  spec.name          = "babar"
  spec.version       = Babar::VERSION
  spec.authors       = ["Neil Heinrich"]
  spec.email         = ["nheinrich@gmail.com"]

  spec.summary       = "Ruby wrapper for the Elephant Talk API"
  spec.homepage      = "https://github.com/nheinrich/babar"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
